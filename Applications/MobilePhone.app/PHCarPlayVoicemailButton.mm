@interface PHCarPlayVoicemailButton
- (PHCarPlayVoicemailButton)initWithSymbolType:(int64_t)type;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation PHCarPlayVoicemailButton

- (PHCarPlayVoicemailButton)initWithSymbolType:(int64_t)type
{
  v5 = [PHCarPlayVoicemailButton buttonWithType:1];

  if (v5)
  {
    v6 = [UIImage tpImageForSymbolType:type textStyle:UIFontTextStyleTitle1 scale:2 isStaticSize:1];
    [(PHCarPlayVoicemailButton *)v5 setImage:v6 forState:0];
    v7 = +[UIColor dynamicLabelColor];
    [(PHCarPlayVoicemailButton *)v5 setTintColor:v7];

    [(PHCarPlayVoicemailButton *)v5 _setContinuousCornerRadius:6.0];
  }

  return v5;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = PHCarPlayVoicemailButton;
  [(PHCarPlayVoicemailButton *)&v6 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
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