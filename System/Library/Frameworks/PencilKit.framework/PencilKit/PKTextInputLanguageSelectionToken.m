@interface PKTextInputLanguageSelectionToken
+ (id)tokenWithStore:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKTextInputLanguageSelectionToken

+ (id)tokenWithStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  objc_storeWeak(v5 + 1, v4);

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