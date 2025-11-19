@interface ACMContextRecord
- (ACMContextRecord)initWithACMContext:(__ACMHandle *)a3 cachedExternalizationDelegate:(id)a4;
- (LACContextExternalizing)cachedExternalizationDelegate;
@end

@implementation ACMContextRecord

- (LACContextExternalizing)cachedExternalizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedExternalizationDelegate);

  return WeakRetained;
}

- (ACMContextRecord)initWithACMContext:(__ACMHandle *)a3 cachedExternalizationDelegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ACMContextRecord;
  v7 = [(ACMContextRecord *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_context = a3;
    objc_storeWeak(&v7->_cachedExternalizationDelegate, v6);
  }

  return v8;
}

@end