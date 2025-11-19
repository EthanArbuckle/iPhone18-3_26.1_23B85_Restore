@interface VMPlayerControlButton
+ (VMPlayerControlButton)buttonWithState:(unint64_t)a3;
- (void)setPlayerState:(unint64_t)a3 enabled:(BOOL)a4;
- (void)updateButtonGlyphImage;
@end

@implementation VMPlayerControlButton

+ (VMPlayerControlButton)buttonWithState:(unint64_t)a3
{
  v4 = [VMPlayerControlButton buttonWithType:1];
  [v4 setBounds:{0.0, 0.0, 40.0, 40.0}];
  [v4 setPlayerState:a3];
  [v4 setClipsToBounds:1];
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  [v4 _setTouchInsets:{-40.0, -40.0, -40.0, -40.0}];
  [v4 updateButtonGlyphImage];

  return v4;
}

- (void)setPlayerState:(unint64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  if ([(VMPlayerControlButton *)self playerState]!= a3 || [(VMPlayerControlButton *)self isEnabled]!= v4)
  {
    [(VMPlayerControlButton *)self setPlayerState:a3];
    [(VMPlayerControlButton *)self setEnabled:v4];

    [(VMPlayerControlButton *)self updateButtonGlyphImage];
  }
}

- (void)updateButtonGlyphImage
{
  v3 = [(VMPlayerControlButton *)self playerState];
  if (v3 == 1)
  {
    v4 = +[UIImage voicemailPauseGlyphImage];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = +[UIImage voicemailPlayGlyphImage];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = v5;
  [(VMPlayerControlButton *)self setImage:v5 forState:0];
}

@end