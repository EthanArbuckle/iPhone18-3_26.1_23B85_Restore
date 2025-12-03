@interface NPKRemotePassActionCompanionBubbleContentViewModel
- (NPKRemotePassActionCompanionBubbleContentViewModel)initWithCardArtImage:(id)image shouldDimPass:(BOOL)pass titleText:(id)text detailText:(id)detailText actionButtonText:(id)buttonText showsActionButton:(BOOL)button;
@end

@implementation NPKRemotePassActionCompanionBubbleContentViewModel

- (NPKRemotePassActionCompanionBubbleContentViewModel)initWithCardArtImage:(id)image shouldDimPass:(BOOL)pass titleText:(id)text detailText:(id)detailText actionButtonText:(id)buttonText showsActionButton:(BOOL)button
{
  imageCopy = image;
  textCopy = text;
  detailTextCopy = detailText;
  buttonTextCopy = buttonText;
  v28.receiver = self;
  v28.super_class = NPKRemotePassActionCompanionBubbleContentViewModel;
  v18 = [(NPKRemotePassActionCompanionBubbleContentViewModel *)&v28 init];
  if (v18)
  {
    v19 = [imageCopy copy];
    cardArtImage = v18->_cardArtImage;
    v18->_cardArtImage = v19;

    v18->_shouldDimPass = pass;
    v21 = [textCopy copy];
    titleText = v18->_titleText;
    v18->_titleText = v21;

    v23 = [detailTextCopy copy];
    detailText = v18->_detailText;
    v18->_detailText = v23;

    v25 = [buttonTextCopy copy];
    actionButtonText = v18->_actionButtonText;
    v18->_actionButtonText = v25;

    v18->_showsActionButton = button;
  }

  return v18;
}

@end