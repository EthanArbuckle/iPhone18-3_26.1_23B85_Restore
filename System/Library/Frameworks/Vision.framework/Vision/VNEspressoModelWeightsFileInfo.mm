@interface VNEspressoModelWeightsFileInfo
- (VNEspressoModelWeightsFileInfo)initWithFilePath:(id)a3 exists:(BOOL)a4 isRegular:(BOOL)a5;
@end

@implementation VNEspressoModelWeightsFileInfo

- (VNEspressoModelWeightsFileInfo)initWithFilePath:(id)a3 exists:(BOOL)a4 isRegular:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = VNEspressoModelWeightsFileInfo;
  v10 = [(VNEspressoModelWeightsFileInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_weightsFilePath, a3);
    v11->_weightsFileExists = a4;
    v11->_isRegularWeightsFile = a5;
  }

  return v11;
}

@end