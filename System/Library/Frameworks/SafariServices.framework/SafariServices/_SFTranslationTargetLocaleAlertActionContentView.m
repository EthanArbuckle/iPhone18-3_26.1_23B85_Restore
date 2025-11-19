@interface _SFTranslationTargetLocaleAlertActionContentView
- (void)tintColorDidChange;
@end

@implementation _SFTranslationTargetLocaleAlertActionContentView

- (void)tintColorDidChange
{
  v3 = [(_SFTranslationTargetLocaleAlertActionContentView *)self tintColor];
  [(UILabel *)self->_titleLabel setTextColor:v3];
}

@end