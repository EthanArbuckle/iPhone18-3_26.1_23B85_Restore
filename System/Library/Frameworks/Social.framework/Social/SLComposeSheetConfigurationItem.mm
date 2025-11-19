@interface SLComposeSheetConfigurationItem
- (SLComposeSheetConfigurationItem)init;
- (id)changeObserver;
- (void)setTitle:(NSString *)title;
- (void)setValue:(NSString *)value;
- (void)setValuePending:(BOOL)valuePending;
@end

@implementation SLComposeSheetConfigurationItem

- (SLComposeSheetConfigurationItem)init
{
  v3.receiver = self;
  v3.super_class = SLComposeSheetConfigurationItem;
  return [(SLComposeSheetConfigurationItem *)&v3 init];
}

- (void)setTitle:(NSString *)title
{
  objc_storeStrong(&self->_title, title);
  v4 = [(SLComposeSheetConfigurationItem *)self changeObserver];
  [v4 configurationItemDidChange:self];
}

- (void)setValue:(NSString *)value
{
  objc_storeStrong(&self->_value, value);
  v4 = [(SLComposeSheetConfigurationItem *)self changeObserver];
  [v4 configurationItemDidChange:self];
}

- (void)setValuePending:(BOOL)valuePending
{
  self->_valuePending = valuePending;
  v4 = [(SLComposeSheetConfigurationItem *)self changeObserver];
  [v4 configurationItemDidChange:self];
}

- (id)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

@end