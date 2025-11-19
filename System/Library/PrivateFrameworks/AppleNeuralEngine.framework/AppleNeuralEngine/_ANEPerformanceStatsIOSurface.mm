@interface _ANEPerformanceStatsIOSurface
+ (id)objectWithIOSurface:(id)a3 statType:(int64_t)a4;
- (_ANEPerformanceStatsIOSurface)initWithIOSurface:(id)a3 statType:(int64_t)a4;
- (id)description;
@end

@implementation _ANEPerformanceStatsIOSurface

+ (id)objectWithIOSurface:(id)a3 statType:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithIOSurface:v6 statType:a4];

  return v7;
}

- (_ANEPerformanceStatsIOSurface)initWithIOSurface:(id)a3 statType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _ANEPerformanceStatsIOSurface;
  v8 = [(_ANEPerformanceStatsIOSurface *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stats, a3);
    v9->_statType = a4;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEPerformanceStatsIOSurface *)self stats];
  v7 = [v3 stringWithFormat:@"%@: {stats=%@  statType=%lu }", v5, v6, -[_ANEPerformanceStatsIOSurface statType](self, "statType")];;

  return v7;
}

@end