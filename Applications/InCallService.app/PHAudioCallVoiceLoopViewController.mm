@interface PHAudioCallVoiceLoopViewController
- (PHAudioCallVoiceLoopViewControllerDelegate)delegate;
- (void)loadView;
- (void)stopVoiceLoopButtonPressed;
@end

@implementation PHAudioCallVoiceLoopViewController

- (void)loadView
{
  if (!self->_voiceLoopView)
  {
    v3 = objc_alloc_init(PHAudioCallVoiceLoopView);
    voiceLoopView = self->_voiceLoopView;
    self->_voiceLoopView = v3;

    [(PHAudioCallVoiceLoopView *)self->_voiceLoopView setDelegate:self];
    v5 = self->_voiceLoopView;

    [(PHAudioCallVoiceLoopViewController *)self setView:v5];
  }
}

- (void)stopVoiceLoopButtonPressed
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallVoiceLoopViewController,stop voice loop button pressed", v9, 2u);
  }

  v4 = [(PHAudioCallVoiceLoopViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHAudioCallVoiceLoopViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PHAudioCallVoiceLoopViewController *)self delegate];
      [v8 audioCallVoiceLoopViewControllerRequestedButtonPresentation];
    }
  }
}

- (PHAudioCallVoiceLoopViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end