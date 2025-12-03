@interface ARSyncedUltraWideForwardingStrategy
+ (BOOL)frameRateLimitAllowsProcessingThisData:(id)data mostRecentTimestamps:(id)timestamps maxFrameRate:(int64_t)rate;
- (ARSyncedUltraWideForwardingStrategy)initWithMaxFrameRate:(int64_t)rate;
- (BOOL)shouldProcessData:(id)data;
- (BOOL)shouldRequestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (NSString)description;
@end

@implementation ARSyncedUltraWideForwardingStrategy

- (ARSyncedUltraWideForwardingStrategy)initWithMaxFrameRate:(int64_t)rate
{
  v8.receiver = self;
  v8.super_class = ARSyncedUltraWideForwardingStrategy;
  v4 = [(ARSyncedUltraWideForwardingStrategy *)&v8 init];
  if (v4)
  {
    v5 = [[ARCircularArray alloc] initWithCapacity:5];
    mostRecentTimestamps = v4->_mostRecentTimestamps;
    v4->_mostRecentTimestamps = v5;

    v4->_mostRecentTimestampsLock._os_unfair_lock_opaque = 0;
    v4->_maxFrameRate = rate;
  }

  return v4;
}

- (BOOL)shouldProcessData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 1;
      goto LABEL_14;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = dataCopy;
  v7 = v6;
  if (isKindOfClass)
  {
    latestUltraWideImage = [v6 latestUltraWideImage];

    if (latestUltraWideImage)
    {
      p_mostRecentTimestampsLock = &self->_mostRecentTimestampsLock;
      os_unfair_lock_lock(&self->_mostRecentTimestampsLock);
      v10 = [ARSyncedUltraWideForwardingStrategy frameRateLimitAllowsProcessingThisData:v7 mostRecentTimestamps:self->_mostRecentTimestamps maxFrameRate:self->_maxFrameRate];
      if (v10)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  latestResizedUltraWideImageData = [v6 latestResizedUltraWideImageData];

  if (!latestResizedUltraWideImageData)
  {
    goto LABEL_11;
  }

  p_mostRecentTimestampsLock = &self->_mostRecentTimestampsLock;
  os_unfair_lock_lock(&self->_mostRecentTimestampsLock);
  v10 = [ARSyncedUltraWideForwardingStrategy frameRateLimitAllowsProcessingThisData:v7 mostRecentTimestamps:self->_mostRecentTimestamps maxFrameRate:self->_maxFrameRate];
  if (v10)
  {
LABEL_9:
    mostRecentTimestamps = self->_mostRecentTimestamps;
    v13 = MEMORY[0x1E696AD98];
    [v7 timestamp];
    v14 = [v13 numberWithDouble:?];
    v15 = [(ARCircularArray *)mostRecentTimestamps addObject:v14];
  }

LABEL_10:
  os_unfair_lock_unlock(p_mostRecentTimestampsLock);
LABEL_12:

LABEL_14:
  return v10;
}

+ (BOOL)frameRateLimitAllowsProcessingThisData:(id)data mostRecentTimestamps:(id)timestamps maxFrameRate:(int64_t)rate
{
  dataCopy = data;
  timestampsCopy = timestamps;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(rate) = 1;
      goto LABEL_10;
    }
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  [dataCopy timestamp];
  v10 = v9;
  lastObject = [timestampsCopy lastObject];
  v12 = lastObject;
  if (rate < 0)
  {
LABEL_7:
    LOBYTE(rate) = 1;
    goto LABEL_8;
  }

  if (rate)
  {
    if (lastObject)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v14 = [timestampsCopy containsObject:v13];

      if ((v14 & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 doubleValue];
          LOBYTE(rate) = v10 - v16 > 1.0 / rate;
          goto LABEL_8;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
          LOBYTE(rate) = [timestampsCopy containsObject:v17];

          goto LABEL_8;
        }
      }
    }

    goto LABEL_7;
  }

LABEL_8:

LABEL_10:
  return rate;
}

- (BOOL)shouldRequestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_mostRecentTimestampsLock);
  mostRecentTimestamps = self->_mostRecentTimestamps;
  v7 = MEMORY[0x1E696AD98];
  imageData = [contextCopy imageData];
  [imageData timestamp];
  v9 = [v7 numberWithDouble:?];
  LOBYTE(mostRecentTimestamps) = [(ARCircularArray *)mostRecentTimestamps containsObject:v9];

  os_unfair_lock_unlock(&self->_mostRecentTimestampsLock);
  return mostRecentTimestamps;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@(%p)>", v5, self];

  return v6;
}

@end