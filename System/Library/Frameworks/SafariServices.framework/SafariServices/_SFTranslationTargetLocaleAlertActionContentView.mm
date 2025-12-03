@interface _SFTranslationTargetLocaleAlertActionContentView
- (void)tintColorDidChange;
@end

@implementation _SFTranslationTargetLocaleAlertActionContentView

- (void)tintColorDidChange
{
  tintColor = [(_SFTranslationTargetLocaleAlertActionContentView *)self tintColor];
  [(UILabel *)self->_titleLabel setTextColor:tintColor];
}

@end