@interface CuratedCollectionMediaIntegrationPlatterControl
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CuratedCollectionMediaIntegrationInteractionDelegate)interactionDelegate;
- (CuratedCollectionMediaIntegrationPlatterControl)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation CuratedCollectionMediaIntegrationPlatterControl

- (CuratedCollectionMediaIntegrationInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = CuratedCollectionMediaIntegrationPlatterControl;
  [(CuratedCollectionMediaIntegrationPlatterControl *)&v7 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  interactionDelegate = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  [interactionDelegate mediaIntegrationMenuWillDisappear];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = CuratedCollectionMediaIntegrationPlatterControl;
  [(CuratedCollectionMediaIntegrationPlatterControl *)&v7 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  interactionDelegate = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  [interactionDelegate mediaIntegrationMenuWillAppear];
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  interactionDelegate = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  [interactionDelegate mediaIntegrationMenuAttachmentPointForConfiguration:configurationCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  interactionDelegate = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  v7 = [interactionDelegate mediaIntegrationMenuConfigurationWithInteraction:interactionCopy];

  return v7;
}

- (CuratedCollectionMediaIntegrationPlatterControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionMediaIntegrationPlatterControl;
  v3 = [(CuratedCollectionMediaIntegrationPlatterControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionMediaIntegrationPlatterControl *)v3 setContextMenuInteractionEnabled:1];
    [(CuratedCollectionMediaIntegrationPlatterControl *)v4 setShowsMenuAsPrimaryAction:1];
  }

  return v4;
}

@end