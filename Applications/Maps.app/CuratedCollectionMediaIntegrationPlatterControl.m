@interface CuratedCollectionMediaIntegrationPlatterControl
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CuratedCollectionMediaIntegrationInteractionDelegate)interactionDelegate;
- (CuratedCollectionMediaIntegrationPlatterControl)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation CuratedCollectionMediaIntegrationPlatterControl

- (CuratedCollectionMediaIntegrationInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = CuratedCollectionMediaIntegrationPlatterControl;
  [(CuratedCollectionMediaIntegrationPlatterControl *)&v7 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  v6 = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  [v6 mediaIntegrationMenuWillDisappear];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = CuratedCollectionMediaIntegrationPlatterControl;
  [(CuratedCollectionMediaIntegrationPlatterControl *)&v7 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  v6 = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  [v6 mediaIntegrationMenuWillAppear];
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  [v5 mediaIntegrationMenuAttachmentPointForConfiguration:v4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = [(CuratedCollectionMediaIntegrationPlatterControl *)self interactionDelegate];
  v7 = [v6 mediaIntegrationMenuConfigurationWithInteraction:v5];

  return v7;
}

- (CuratedCollectionMediaIntegrationPlatterControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionMediaIntegrationPlatterControl;
  v3 = [(CuratedCollectionMediaIntegrationPlatterControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionMediaIntegrationPlatterControl *)v3 setContextMenuInteractionEnabled:1];
    [(CuratedCollectionMediaIntegrationPlatterControl *)v4 setShowsMenuAsPrimaryAction:1];
  }

  return v4;
}

@end