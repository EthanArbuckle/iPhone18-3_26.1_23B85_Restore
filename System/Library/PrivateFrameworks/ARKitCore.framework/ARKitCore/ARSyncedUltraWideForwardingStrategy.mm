@interface ARSyncedUltraWideForwardingStrategy
+ (BOOL)frameRateLimitAllowsProcessingThisData:(id)a3 mostRecentTimestamps:(id)a4 maxFrameRate:(int64_t)a5;
- (ARSyncedUltraWideForwardingStrategy)initWithMaxFrameRate:(int64_t)a3;
- (BOOL)shouldProcessData:(id)a3;
- (BOOL)shouldRequestResultDataAtTimestamp:(double)a3 context:(id)a4;
- (NSString)description;
@end

@implementation ARSyncedUltraWideForwardingStrategy

- (ARSyncedUltraWideForwardingStrategy)initWithMaxFrameRate:(int64_t)a3
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
    v4->_maxFrameRate = a3;
  }

  return v4;
}

- (BOOL)shouldProcessData:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = [v6 latestUltraWideImage];

    if (v8)
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

  v11 = [v6 latestResizedUltraWideImageData];

  if (!v11)
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

+ (BOOL)frameRateLimitAllowsProcessingThisData:(id)a3 mostRecentTimestamps:(id)a4 maxFrameRate:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(a5) = 1;
      goto LABEL_10;
    }
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  [v7 timestamp];
  v10 = v9;
  v11 = [v8 lastObject];
  v12 = v11;
  if (a5 < 0)
  {
LABEL_7:
    LOBYTE(a5) = 1;
    goto LABEL_8;
  }

  if (a5)
  {
    if (v11)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v14 = [v8 containsObject:v13];

      if ((v14 & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 doubleValue];
          LOBYTE(a5) = v10 - v16 > 1.0 / a5;
          goto LABEL_8;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
          LOBYTE(a5) = [v8 containsObject:v17];

          goto LABEL_8;
        }
      }
    }

    goto LABEL_7;
  }

LABEL_8:

LABEL_10:
  return a5;
}

- (BOOL)shouldRequestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_mostRecentTimestampsLock);
  mostRecentTimestamps = self->_mostRecentTimestamps;
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 imageData];
  [v8 timestamp];
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