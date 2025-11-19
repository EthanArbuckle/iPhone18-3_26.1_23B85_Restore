@interface ARFrameRateLimitingStrategy
- (ARFrameRateLimitingStrategy)initWithFrameRate:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldProcessData:(id)a3;
- (BOOL)shouldRequestResultDataAtTimestamp:(double)a3 context:(id)a4;
- (NSString)description;
@end

@implementation ARFrameRateLimitingStrategy

- (ARFrameRateLimitingStrategy)initWithFrameRate:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = ARFrameRateLimitingStrategy;
  v4 = [(ARFrameRateLimitingStrategy *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_frameRate = a3;
    v6 = [[ARCircularArray alloc] initWithCapacity:5];
    mostRecentTimestamps = v5->_mostRecentTimestamps;
    v5->_mostRecentTimestamps = v6;

    v5->_mostRecentTimestampsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (BOOL)shouldProcessData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    os_unfair_lock_lock(&self->_mostRecentTimestampsLock);
    objc_opt_class();
    objc_opt_isKindOfClass();
    [v4 timestamp];
    v6 = v5;
    v7 = [(ARCircularArray *)self->_mostRecentTimestamps lastObject];
    if (v7)
    {
      frameRate = self->_frameRate;
      if (!frameRate)
      {
LABEL_14:
        v14 = 0;
        goto LABEL_15;
      }

      if (frameRate < 0)
      {
        goto LABEL_7;
      }

      mostRecentTimestamps = self->_mostRecentTimestamps;
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
      LOBYTE(mostRecentTimestamps) = [(ARCircularArray *)mostRecentTimestamps containsObject:v10];

      if (mostRecentTimestamps)
      {
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 doubleValue];
        if (v6 - v15 <= 1.0 / self->_frameRate)
        {
          goto LABEL_14;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = self->_mostRecentTimestamps;
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
        LODWORD(v16) = [(ARCircularArray *)v16 containsObject:v17];

        if (!v16)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_7:
    v11 = self->_mostRecentTimestamps;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
    v13 = [(ARCircularArray *)v11 addObject:v12];

    v14 = 1;
LABEL_15:

    os_unfair_lock_unlock(&self->_mostRecentTimestampsLock);
    goto LABEL_16;
  }

  v14 = 1;
LABEL_16:

  return v14;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_frameRate == v4[1];

  return v5;
}

- (NSString)description
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_mostRecentTimestampsLock);
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_mostRecentTimestamps;
  v5 = [(ARCircularArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) description];
        [v3 addObject:v8];
      }

      v5 = [(ARCircularArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  frameRate = self->_frameRate;
  v13 = [v3 componentsJoinedByString:{@", "}];
  v14 = [v9 stringWithFormat:@"<%@(%p) framerate=%li timestamps=[%@]>", v11, self, frameRate, v13, v16];

  os_unfair_lock_unlock(&self->_mostRecentTimestampsLock);

  return v14;
}

@end