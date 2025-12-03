@interface ACMContextRecord
- (ACMContextRecord)initWithACMContext:(__ACMHandle *)context cachedExternalizationDelegate:(id)delegate;
- (LACContextExternalizing)cachedExternalizationDelegate;
@end

@implementation ACMContextRecord

- (LACContextExternalizing)cachedExternalizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedExternalizationDelegate);

  return WeakRetained;
}

- (ACMContextRecord)initWithACMContext:(__ACMHandle *)context cachedExternalizationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ACMContextRecord;
  v7 = [(ACMContextRecord *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_context = context;
    objc_storeWeak(&v7->_cachedExternalizationDelegate, delegateCopy);
  }

  return v8;
}

@end