@interface AMSUISystemImageFetchOperation
- (AMSUISystemImageFetchOperation)initWithSystemImageName:(id)name variableValue:(id)value compatibleWithTraitCollection:(id)collection;
- (void)main;
@end

@implementation AMSUISystemImageFetchOperation

- (AMSUISystemImageFetchOperation)initWithSystemImageName:(id)name variableValue:(id)value compatibleWithTraitCollection:(id)collection
{
  nameCopy = name;
  valueCopy = value;
  collectionCopy = collection;
  v15.receiver = self;
  v15.super_class = AMSUISystemImageFetchOperation;
  v11 = [(AMSUISystemImageFetchOperation *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithString:nameCopy];
    imageName = v11->_imageName;
    v11->_imageName = v12;

    objc_storeStrong(&v11->_traitCollection, collection);
    objc_storeStrong(&v11->_variableValue, value);
  }

  return v11;
}

- (void)main
{
  v3 = objc_alloc(MEMORY[0x1E69DCAC8]);
  traitCollection = [(AMSUISystemImageFetchOperation *)self traitCollection];
  v11 = [v3 configurationWithTraitCollection:traitCollection];

  variableValue = [(AMSUISystemImageFetchOperation *)self variableValue];

  v6 = MEMORY[0x1E69DCAB8];
  imageName = [(AMSUISystemImageFetchOperation *)self imageName];
  if (variableValue)
  {
    variableValue2 = [(AMSUISystemImageFetchOperation *)self variableValue];
    [variableValue2 doubleValue];
    v9 = [v6 _systemImageNamed:imageName variableValue:v11 withConfiguration:?];
  }

  else
  {
    v9 = [v6 _systemImageNamed:imageName withConfiguration:v11];
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