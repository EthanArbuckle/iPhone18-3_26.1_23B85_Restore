@interface _MSMessagesAppPresentationControllerDelegate
- (MSMessagesAppViewController)appViewController;
- (_MSMessagesAppPresentationControllerDelegate)initWithMessagesAppViewController:(id)controller;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
@end

@implementation _MSMessagesAppPresentationControllerDelegate

- (_MSMessagesAppPresentationControllerDelegate)initWithMessagesAppViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _MSMessagesAppPresentationControllerDelegate;
  v5 = [(_MSMessagesAppPresentationControllerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appViewController, controllerCopy);
  }

  return v6;
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  selectedDetentIdentifier = [identifier selectedDetentIdentifier];
  v5 = [selectedDetentIdentifier isEqualToString:*MEMORY[0x1E69DE3B0]];

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