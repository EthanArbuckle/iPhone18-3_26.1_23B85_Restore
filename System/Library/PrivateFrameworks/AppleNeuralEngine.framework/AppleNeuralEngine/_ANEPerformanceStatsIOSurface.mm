@interface _ANEPerformanceStatsIOSurface
+ (id)objectWithIOSurface:(id)surface statType:(int64_t)type;
- (_ANEPerformanceStatsIOSurface)initWithIOSurface:(id)surface statType:(int64_t)type;
- (id)description;
@end

@implementation _ANEPerformanceStatsIOSurface

+ (id)objectWithIOSurface:(id)surface statType:(int64_t)type
{
  surfaceCopy = surface;
  v7 = [[self alloc] initWithIOSurface:surfaceCopy statType:type];

  return v7;
}

- (_ANEPerformanceStatsIOSurface)initWithIOSurface:(id)surface statType:(int64_t)type
{
  surfaceCopy = surface;
  v11.receiver = self;
  v11.super_class = _ANEPerformanceStatsIOSurface;
  v8 = [(_ANEPerformanceStatsIOSurface *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stats, surface);
    v9->_statType = type;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  stats = [(_ANEPerformanceStatsIOSurface *)self stats];
  v7 = [v3 stringWithFormat:@"%@: {stats=%@  statType=%lu }", v5, stats, -[_ANEPerformanceStatsIOSurface statType](self, "statType")];;

  return v7;
}

@end