@interface _COSSOSShrinkingCell
- (void)setTitle:(id)title;
@end

@implementation _COSSOSShrinkingCell

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = _COSSOSShrinkingCell;
  [(_COSSOSShrinkingCell *)&v5 setTitle:title];
  titleLabel = [(_COSSOSShrinkingCell *)self titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
}

@end