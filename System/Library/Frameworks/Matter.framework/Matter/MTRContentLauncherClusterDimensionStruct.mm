@interface MTRContentLauncherClusterDimensionStruct
- (MTRContentLauncherClusterDimensionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentLauncherClusterDimensionStruct

- (MTRContentLauncherClusterDimensionStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRContentLauncherClusterDimensionStruct;
  v2 = [(MTRContentLauncherClusterDimensionStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    width = v2->_width;
    v2->_width = &unk_284C3E588;

    height = v3->_height;
    v3->_height = &unk_284C3E588;

    metric = v3->_metric;
    v3->_metric = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterDimensionStruct);
  width = [(MTRContentLauncherClusterDimensionStruct *)self width];
  [(MTRContentLauncherClusterDimensionStruct *)v4 setWidth:width];

  height = [(MTRContentLauncherClusterDimensionStruct *)self height];
  [(MTRContentLauncherClusterDimensionStruct *)v4 setHeight:height];

  metric = [(MTRContentLauncherClusterDimensionStruct *)self metric];
  [(MTRContentLauncherClusterDimensionStruct *)v4 setMetric:metric];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: width:%@ height:%@; metric:%@; >", v5, self->_width, self->_height, self->_metric];;

  return v6;
}

@end