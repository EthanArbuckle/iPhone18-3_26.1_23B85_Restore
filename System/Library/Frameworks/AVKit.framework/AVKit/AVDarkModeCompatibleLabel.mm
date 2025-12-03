@interface AVDarkModeCompatibleLabel
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AVDarkModeCompatibleLabel

- (void)traitCollectionDidChange:(id)change
{
  textColor = [(AVDarkModeCompatibleLabel *)self textColor];
  [(AVDarkModeCompatibleLabel *)self setTextColor:textColor];
}

@end