@interface AMSUISystemImageFetchOperation
- (AMSUISystemImageFetchOperation)initWithSystemImageName:(id)a3 variableValue:(id)a4 compatibleWithTraitCollection:(id)a5;
- (void)main;
@end

@implementation AMSUISystemImageFetchOperation

- (AMSUISystemImageFetchOperation)initWithSystemImageName:(id)a3 variableValue:(id)a4 compatibleWithTraitCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = AMSUISystemImageFetchOperation;
  v11 = [(AMSUISystemImageFetchOperation *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithString:v8];
    imageName = v11->_imageName;
    v11->_imageName = v12;

    objc_storeStrong(&v11->_traitCollection, a5);
    objc_storeStrong(&v11->_variableValue, a4);
  }

  return v11;
}

- (void)main
{
  v3 = objc_alloc(MEMORY[0x1E69DCAC8]);
  v4 = [(AMSUISystemImageFetchOperation *)self traitCollection];
  v11 = [v3 configurationWithTraitCollection:v4];

  v5 = [(AMSUISystemImageFetchOperation *)self variableValue];

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [(AMSUISystemImageFetchOperation *)self imageName];
  if (v5)
  {
    v8 = [(AMSUISystemImageFetchOperation *)self variableValue];
    [v8 doubleValue];
    v9 = [v6 _systemImageNamed:v7 variableValue:v11 withConfiguration:?];
  }

  else
  {
    v9 = [v6 _systemImageNamed:v7 withConfiguration:v11];
  }

  if (v9)
  {
    [(AMSUIAssetFetchOperation *)self _finishWithImage:v9 error:0];
  }

  else
  {
    v10 = AMSError();
    [(AMSUIAssetFetchOperation *)self _finishWithImage:0 error:v10];
  }
}

@end