@interface MLCDeviceOps
- (MLCDeviceOps)initWithSource:(id)a3 secondarySource:(id)a4 result:(id)a5 batchSize:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MLCDeviceOps

- (MLCDeviceOps)initWithSource:(id)a3 secondarySource:(id)a4 result:(id)a5 batchSize:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MLCDeviceOps;
  v14 = [(MLCDeviceOps *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, a3);
    objc_storeStrong(&v15->_secondarySource, a4);
    objc_storeStrong(&v15->_result, a5);
    v15->_batchSize = a6;
    *&v15->_sourceOfForwardNeededForGradient = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCDeviceOps *)self source];
  v6 = [(MLCDeviceOps *)self secondarySource];
  v7 = [(MLCDeviceOps *)self result];
  v8 = [v4 initWithSource:v5 secondarySource:v6 result:v7 batchSize:{-[MLCDeviceOps batchSize](self, "batchSize")}];

  return v8;
}

@end