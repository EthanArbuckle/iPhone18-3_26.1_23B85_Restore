@interface MDLMaterialPropertyConnection
- (MDLMaterialProperty)input;
- (MDLMaterialProperty)output;
- (MDLMaterialPropertyConnection)initWithOutput:(MDLMaterialProperty *)output input:(MDLMaterialProperty *)input;
@end

@implementation MDLMaterialPropertyConnection

- (MDLMaterialPropertyConnection)initWithOutput:(MDLMaterialProperty *)output input:(MDLMaterialProperty *)input
{
  v6 = output;
  v7 = input;
  v12.receiver = self;
  v12.super_class = MDLMaterialPropertyConnection;
  v8 = [(MDLMaterialPropertyConnection *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_input, v7);
    objc_storeWeak(&v9->_output, v6);
    v10 = v9;
  }

  return v9;
}

- (MDLMaterialProperty)input
{
  WeakRetained = objc_loadWeakRetained(&self->_input);

  return WeakRetained;
}

- (MDLMaterialProperty)output
{
  WeakRetained = objc_loadWeakRetained(&self->_output);

  return WeakRetained;
}

@end