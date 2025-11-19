@interface AVDarkModeCompatibleLabel
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AVDarkModeCompatibleLabel

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(AVDarkModeCompatibleLabel *)self textColor];
  [(AVDarkModeCompatibleLabel *)self setTextColor:v4];
}

@end