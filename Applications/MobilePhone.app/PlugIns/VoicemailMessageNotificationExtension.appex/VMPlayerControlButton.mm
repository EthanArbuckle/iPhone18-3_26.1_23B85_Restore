@interface VMPlayerControlButton
+ (id)buttonWithState:(unint64_t)state;
- (void)setPlayerState:(unint64_t)state enabled:(BOOL)enabled;
- (void)updateButtonGlyphImage;
@end

@implementation VMPlayerControlButton

+ (id)buttonWithState:(unint64_t)state
{
  v4 = [VMPlayerControlButton buttonWithType:1];
  [v4 setBounds:{0.0, 0.0, 40.0, 40.0}];
  [v4 setPlayerState:state];
  [v4 setClipsToBounds:1];
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  [v4 _setTouchInsets:{-40.0, -40.0, -40.0, -40.0}];
  [v4 updateButtonGlyphImage];

  return v4;
}

- (void)setPlayerState:(unint64_t)state enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(VMPlayerControlButton *)self playerState]!= state || [(VMPlayerControlButton *)self isEnabled]!= enabledCopy)
  {
    [(VMPlayerControlButton *)self setPlayerState:state];
    [(VMPlayerControlButton *)self setEnabled:enabledCopy];

    [(VMPlayerControlButton *)self updateButtonGlyphImage];
  }
}

- (void)updateButtonGlyphImage
{
  playerState = [(VMPlayerControlButton *)self playerState];
  if (playerState == 1)
  {
    v4 = +[UIImage voicemailPauseGlyphImage];
    goto LABEL_5;
  }

  if (!playerState)
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