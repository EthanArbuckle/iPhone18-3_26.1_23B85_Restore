@interface ARFrameTimingData
- (ARFrameTimingData)init;
- (void)addTimestamp:(double)a3 forDataOfClass:(Class)a4;
@end

@implementation ARFrameTimingData

- (ARFrameTimingData)init
{
  v6.receiver = self;
  v6.super_class = ARFrameTimingData;
  v2 = [(ARFrameTimingData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    timestampsByDataClassKey = v2->_timestampsByDataClassKey;
    v2->_timestampsByDataClassKey = v3;
  }

  return v2;
}

- (void)addTimestamp:(double)a3 forDataOfClass:(Class)a4
{
  v13 = NSStringFromClass(a4);
  v6 = [v13 hasPrefix:@"AR"];
  v7 = [v13 hasSuffix:@"Data"];
  v8 = [v13 length];
  v9 = v8 - 4;
  if (!v7)
  {
    v9 = v8;
  }

  if (v6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v13 substringWithRange:{v10, v9 - v10}];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(NSMutableDictionary *)self->_timestampsByDataClassKey setObject:v12 forKeyedSubscript:v11];
}

@end