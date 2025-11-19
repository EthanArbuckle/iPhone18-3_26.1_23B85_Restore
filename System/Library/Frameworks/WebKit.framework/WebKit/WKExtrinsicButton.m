@interface WKExtrinsicButton
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
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

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6.receiver = self;
  v6.super_class = WKExtrinsicButton;
  [(WKExtrinsicButton *)&v6 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  [objc_loadWeak(&self->_delegate) wkExtrinsicButtonWillDisplayMenu:self];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6.receiver = self;
  v6.super_class = WKExtrinsicButton;
  [(WKExtrinsicButton *)&v6 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
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