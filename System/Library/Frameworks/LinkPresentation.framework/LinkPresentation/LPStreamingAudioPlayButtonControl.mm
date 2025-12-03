@interface LPStreamingAudioPlayButtonControl
- (LPStreamingAudioPlayButtonControl)initWithAudio:(id)audio style:(id)style theme:(id)theme player:(id)player;
- (void)audioPlayer:(id)player didChangeProgress:(float)progress;
- (void)audioPlayer:(id)player didTransitionToState:(unint64_t)state;
- (void)buttonPressed:(id)pressed;
- (void)dealloc;
@end

@implementation LPStreamingAudioPlayButtonControl

- (LPStreamingAudioPlayButtonControl)initWithAudio:(id)audio style:(id)style theme:(id)theme player:(id)player
{
  styleCopy = style;
  themeCopy = theme;
  playerCopy = player;
  v12 = [(LPPlayButtonControl *)self initWithStyle:styleCopy theme:themeCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_player, player);
    v14 = [[LPAudioPlayerMediaPlayableAdaptor alloc] initWithPlayer:v13->_player];
    playableAdaptor = v13->_playableAdaptor;
    v13->_playableAdaptor = v14;

    [(LPAudioPlayer *)v13->_player addClient:v13];
    player = v13->_player;
    [(LPAudioPlayer *)player progress];
    [(LPStreamingAudioPlayButtonControl *)v13 audioPlayer:player didChangeProgress:?];
    [(LPStreamingAudioPlayButtonControl *)v13 audioPlayer:v13->_player didTransitionToState:[(LPAudioPlayer *)v13->_player state]];
    v17 = v13;
  }

  return v13;
}

- (void)dealloc
{
  [(LPAudioPlayer *)self->_player removeClient:self];
  v3.receiver = self;
  v3.super_class = LPStreamingAudioPlayButtonControl;
  [(LPStreamingAudioPlayButtonControl *)&v3 dealloc];
}

- (void)audioPlayer:(id)player didTransitionToState:(unint64_t)state
{
  [(LPPlayButtonControl *)self setPlayButtonState:(state & 0xFFFFFFFFFFFFFFFBLL) != 0];
  [(LPPlayButtonControl *)self showPlayIndicator:state - 3 < 0xFFFFFFFFFFFFFFFELL];
  if (state == 1)
  {

    [(LPPlayButtonControl *)self beginIndeterminateAnimation];
  }

  else
  {

    [(LPPlayButtonControl *)self endIndeterminateAnimation];
  }
}

- (void)audioPlayer:(id)player didChangeProgress:(float)progress
{
  [(LPAudioPlayer *)self->_player progress];

  [(LPPlayButtonControl *)self setProgress:1 animated:?];
}

- (void)buttonPressed:(id)pressed
{
  if ([(LPAudioPlayer *)self->_player state]== 1 || [(LPAudioPlayer *)self->_player state]== 2)
  {
    player = self->_player;

    [(LPAudioPlayer *)player pause];
  }

  else
  {
    v5 = self->_player;

    [(LPAudioPlayer *)v5 play];
  }
}

@end