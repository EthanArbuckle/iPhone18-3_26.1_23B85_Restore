@interface VNEspressoModelWeightsFileInfo
- (VNEspressoModelWeightsFileInfo)initWithFilePath:(id)path exists:(BOOL)exists isRegular:(BOOL)regular;
@end

@implementation VNEspressoModelWeightsFileInfo

- (VNEspressoModelWeightsFileInfo)initWithFilePath:(id)path exists:(BOOL)exists isRegular:(BOOL)regular
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = VNEspressoModelWeightsFileInfo;
  v10 = [(VNEspressoModelWeightsFileInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_weightsFilePath, path);
    v11->_weightsFileExists = exists;
    v11->_isRegularWeightsFile = regular;
  }

  return v11;
}

@end