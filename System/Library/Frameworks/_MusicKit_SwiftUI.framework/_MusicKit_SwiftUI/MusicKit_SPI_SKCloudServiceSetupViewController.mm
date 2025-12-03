@interface MusicKit_SPI_SKCloudServiceSetupViewController
- (MusicKit_SPI_SKCloudServiceSetupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MusicKit_SPI_SKCloudServiceSetupViewControllerDelegate)musicKit_delegate;
- (id)_musicKit_underlyingActionForAction:(id)action;
- (id)_musicKit_underlyingMessageIdentifierForMessageIdentifier:(id)identifier;
- (id)_musicKit_underlyingOptionsForOptions:(id)options;
- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss;
- (void)musicKit_loadWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation MusicKit_SPI_SKCloudServiceSetupViewController

- (MusicKit_SPI_SKCloudServiceSetupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = MusicKit_SPI_SKCloudServiceSetupViewController;
  v4 = [(SKCloudServiceSetupViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SKCloudServiceSetupViewController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)musicKit_loadWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(MusicKit_SPI_SKCloudServiceSetupViewController *)self _musicKit_underlyingOptionsForOptions:options];
  [(SKCloudServiceSetupViewController *)self loadWithOptions:v7 completionHandler:handlerCopy];
}

- (id)_musicKit_underlyingOptionsForOptions:(id)options
{
  v4 = MEMORY[0x277CBEB38];
  optionsCopy = options;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __88__MusicKit_SPI_SKCloudServiceSetupViewController__musicKit_underlyingOptionsForOptions___block_invoke;
  v13 = &unk_278222068;
  selfCopy = self;
  v15 = v6;
  v7 = v6;
  [optionsCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

- (id)_musicKit_underlyingActionForAction:(id)action
{
  if ([action isEqualToString:@"musicKit_subscribe"])
  {
    v3 = *MEMORY[0x277CDD3E8];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_musicKit_underlyingMessageIdentifierForMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"musicKit_join"])
  {
    v4 = MEMORY[0x277CDD400];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"musicKit_connect"])
  {
    v4 = MEMORY[0x277CDD3F8];
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"musicKit_addMusic"])
  {
    v4 = MEMORY[0x277CDD3F0];
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"musicKit_playMusic"])
  {
    v4 = MEMORY[0x277CDD408];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss
{
  if (self == dismiss)
  {
    musicKit_delegate = [(MusicKit_SPI_SKCloudServiceSetupViewController *)self musicKit_delegate];
    if (objc_opt_respondsToSelector())
    {
      [musicKit_delegate musicKit_cloudServiceSetupViewControllerDidDismiss:self];
    }
  }
}

- (MusicKit_SPI_SKCloudServiceSetupViewControllerDelegate)musicKit_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_musicKit_delegate);

  return WeakRetained;
}

@end