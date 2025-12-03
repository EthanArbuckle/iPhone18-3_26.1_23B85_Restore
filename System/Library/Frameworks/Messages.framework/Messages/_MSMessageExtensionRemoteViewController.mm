@interface _MSMessageExtensionRemoteViewController
- (NSExtension)weakExtension;
- (void)dealloc;
- (void)viewDidLayoutSubviews;
@end

@implementation _MSMessageExtensionRemoteViewController

- (void)viewDidLayoutSubviews
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _MSMessageExtensionRemoteViewController;
  [(_MSMessageExtensionRemoteViewController *)&v13 viewDidLayoutSubviews];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  view = [(_MSMessageExtensionRemoteViewController *)self view];
  subviews = [view subviews];

  v5 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v8++) setUserInteractionEnabled:1];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)dealloc
{
  requestUUID = [(_MSMessageExtensionRemoteViewController *)self requestUUID];
  if (requestUUID)
  {
    weakExtension = [(_MSMessageExtensionRemoteViewController *)self weakExtension];
    [weakExtension cancelExtensionRequestWithIdentifier:requestUUID];
  }

  v5.receiver = self;
  v5.super_class = _MSMessageExtensionRemoteViewController;
  [(_MSMessageExtensionRemoteViewController *)&v5 dealloc];
}

- (NSExtension)weakExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_weakExtension);

  return WeakRetained;
}

@end