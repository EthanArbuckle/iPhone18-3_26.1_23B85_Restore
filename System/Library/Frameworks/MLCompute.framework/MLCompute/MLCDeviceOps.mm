@interface MLCDeviceOps
- (MLCDeviceOps)initWithSource:(id)source secondarySource:(id)secondarySource result:(id)result batchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MLCDeviceOps

- (MLCDeviceOps)initWithSource:(id)source secondarySource:(id)secondarySource result:(id)result batchSize:(unint64_t)size
{
  sourceCopy = source;
  secondarySourceCopy = secondarySource;
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = MLCDeviceOps;
  v14 = [(MLCDeviceOps *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, source);
    objc_storeStrong(&v15->_secondarySource, secondarySource);
    objc_storeStrong(&v15->_result, result);
    v15->_batchSize = size;
    *&v15->_sourceOfForwardNeededForGradient = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  source = [(MLCDeviceOps *)self source];
  secondarySource = [(MLCDeviceOps *)self secondarySource];
  result = [(MLCDeviceOps *)self result];
  v8 = [v4 initWithSource:source secondarySource:secondarySource result:result batchSize:{-[MLCDeviceOps batchSize](self, "batchSize")}];

  return v8;
}

@end