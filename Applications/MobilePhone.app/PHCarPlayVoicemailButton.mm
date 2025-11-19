@interface PHCarPlayVoicemailButton
- (PHCarPlayVoicemailButton)initWithSymbolType:(int64_t)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation PHCarPlayVoicemailButton

- (PHCarPlayVoicemailButton)initWithSymbolType:(int64_t)a3
{
  v5 = [PHCarPlayVoicemailButton buttonWithType:1];

  if (v5)
  {
    v6 = [UIImage tpImageForSymbolType:a3 textStyle:UIFontTextStyleTitle1 scale:2 isStaticSize:1];
    [(PHCarPlayVoicemailButton *)v5 setImage:v6 forState:0];
    v7 = +[UIColor dynamicLabelColor];
    [(PHCarPlayVoicemailButton *)v5 setTintColor:v7];

    [(PHCarPlayVoicemailButton *)v5 _setContinuousCornerRadius:6.0];
  }

  return v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = PHCarPlayVoicemailButton;
  [(PHCarPlayVoicemailButton *)&v6 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  if (([(PHCarPlayVoicemailButton *)self isFocused]& 1) != 0)
  {
    +[UIColor dynamicCarFocusedColor];
  }

  else
  {
    +[UIColor dynamicLabelColor];
  }
  v5 = ;
  [(PHCarPlayVoicemailButton *)self setTintColor:v5];
}

@end