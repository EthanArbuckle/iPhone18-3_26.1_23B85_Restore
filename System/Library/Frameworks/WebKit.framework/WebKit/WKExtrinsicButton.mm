@interface WKExtrinsicButton
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation WKExtrinsicButton

- (CGSize)intrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v6.receiver = self;
  v6.super_class = WKExtrinsicButton;
  [(WKExtrinsicButton *)&v6 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  [objc_loadWeak(&self->_delegate) wkExtrinsicButtonWillDisplayMenu:self];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v6.receiver = self;
  v6.super_class = WKExtrinsicButton;
  [(WKExtrinsicButton *)&v6 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  [objc_loadWeak(&self->_delegate) wkExtrinsicButtonWillDismissMenu:self];
}

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end