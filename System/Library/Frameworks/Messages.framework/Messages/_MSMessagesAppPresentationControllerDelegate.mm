@interface _MSMessagesAppPresentationControllerDelegate
- (MSMessagesAppViewController)appViewController;
- (_MSMessagesAppPresentationControllerDelegate)initWithMessagesAppViewController:(id)a3;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3;
@end

@implementation _MSMessagesAppPresentationControllerDelegate

- (_MSMessagesAppPresentationControllerDelegate)initWithMessagesAppViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MSMessagesAppPresentationControllerDelegate;
  v5 = [(_MSMessagesAppPresentationControllerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appViewController, v4);
  }

  return v6;
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3
{
  v4 = [a3 selectedDetentIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69DE3B0]];

  WeakRetained = objc_loadWeakRetained(&self->_appViewController);
  [WeakRetained willTransitionToPresentationStyle:v5];

  v7 = objc_loadWeakRetained(&self->_appViewController);
  [v7 _setAppPresentationStyle:v5];

  v8 = objc_loadWeakRetained(&self->_appViewController);
  [v8 didTransitionToPresentationStyle:v5];
}

- (MSMessagesAppViewController)appViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_appViewController);

  return WeakRetained;
}

@end