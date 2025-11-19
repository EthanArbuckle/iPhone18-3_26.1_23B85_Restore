@interface LPStreamingAudioPlayButtonControl
- (LPStreamingAudioPlayButtonControl)initWithAudio:(id)a3 style:(id)a4 theme:(id)a5 player:(id)a6;
- (void)audioPlayer:(id)a3 didChangeProgress:(float)a4;
- (void)audioPlayer:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)buttonPressed:(id)a3;
- (void)dealloc;
@end

@implementation LPStreamingAudioPlayButtonControl

- (LPStreamingAudioPlayButtonControl)initWithAudio:(id)a3 style:(id)a4 theme:(id)a5 player:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(LPPlayButtonControl *)self initWithStyle:v9 theme:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_player, a6);
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

- (void)audioPlayer:(id)a3 didTransitionToState:(unint64_t)a4
{
  [(LPPlayButtonControl *)self setPlayButtonState:(a4 & 0xFFFFFFFFFFFFFFFBLL) != 0];
  [(LPPlayButtonControl *)self showPlayIndicator:a4 - 3 < 0xFFFFFFFFFFFFFFFELL];
  if (a4 == 1)
  {

    [(LPPlayButtonControl *)self beginIndeterminateAnimation];
  }

  else
  {

    [(LPPlayButtonControl *)self endIndeterminateAnimation];
  }
}

- (void)audioPlayer:(id)a3 didChangeProgress:(float)a4
{
  [(LPAudioPlayer *)self->_player progress];

  [(LPPlayButtonControl *)self setProgress:1 animated:?];
}

- (void)buttonPressed:(id)a3
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