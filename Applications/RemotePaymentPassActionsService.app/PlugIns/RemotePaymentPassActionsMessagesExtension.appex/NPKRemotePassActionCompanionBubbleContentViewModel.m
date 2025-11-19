@interface NPKRemotePassActionCompanionBubbleContentViewModel
- (NPKRemotePassActionCompanionBubbleContentViewModel)initWithCardArtImage:(id)a3 shouldDimPass:(BOOL)a4 titleText:(id)a5 detailText:(id)a6 actionButtonText:(id)a7 showsActionButton:(BOOL)a8;
@end

@implementation NPKRemotePassActionCompanionBubbleContentViewModel

- (NPKRemotePassActionCompanionBubbleContentViewModel)initWithCardArtImage:(id)a3 shouldDimPass:(BOOL)a4 titleText:(id)a5 detailText:(id)a6 actionButtonText:(id)a7 showsActionButton:(BOOL)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = NPKRemotePassActionCompanionBubbleContentViewModel;
  v18 = [(NPKRemotePassActionCompanionBubbleContentViewModel *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    cardArtImage = v18->_cardArtImage;
    v18->_cardArtImage = v19;

    v18->_shouldDimPass = a4;
    v21 = [v15 copy];
    titleText = v18->_titleText;
    v18->_titleText = v21;

    v23 = [v16 copy];
    detailText = v18->_detailText;
    v18->_detailText = v23;

    v25 = [v17 copy];
    actionButtonText = v18->_actionButtonText;
    v18->_actionButtonText = v25;

    v18->_showsActionButton = a8;
  }

  return v18;
}

@end