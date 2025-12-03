@interface PKTextInputLanguageSelectionToken
+ (id)tokenWithStore:(id)store;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKTextInputLanguageSelectionToken

+ (id)tokenWithStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(self);
  objc_storeWeak(v5 + 1, storeCopy);

  return v5;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  [WeakRetained removeObserver:self];
}

- (void)dealloc
{
  [(PKTextInputLanguageSelectionToken *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKTextInputLanguageSelectionToken;
  [(PKTextInputLanguageSelectionToken *)&v3 dealloc];
}

@end