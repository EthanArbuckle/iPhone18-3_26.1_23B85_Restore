@interface _COSSOSShrinkingCell
- (void)setTitle:(id)a3;
@end

@implementation _COSSOSShrinkingCell

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = _COSSOSShrinkingCell;
  [(_COSSOSShrinkingCell *)&v5 setTitle:a3];
  v4 = [(_COSSOSShrinkingCell *)self titleLabel];
  [v4 setAdjustsFontSizeToFitWidth:1];
}

@end