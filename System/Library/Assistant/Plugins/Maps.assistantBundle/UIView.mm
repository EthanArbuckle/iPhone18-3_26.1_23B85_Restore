@interface UIView
- (void)_ma_updateSemanticContentAttribute;
@end

@implementation UIView

- (void)_ma_updateSemanticContentAttribute
{
  v3 = +[NSBundle afui_assistantUIFrameworkBundle];
  assistantLanguageIsRTL = [v3 assistantLanguageIsRTL];

  if (assistantLanguageIsRTL)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  [(UIView *)self setSemanticContentAttribute:v5];
}

@end