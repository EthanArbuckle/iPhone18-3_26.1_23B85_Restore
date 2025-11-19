@interface _ASCredentialRequestBasicPaneFooterView
- (CGSize)intrinsicContentSize;
@end

@implementation _ASCredentialRequestBasicPaneFooterView

- (CGSize)intrinsicContentSize
{
  +[ASViewServiceInterfaceUtilities continueButtonTitleMargin];
  v3 = v2;
  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

@end