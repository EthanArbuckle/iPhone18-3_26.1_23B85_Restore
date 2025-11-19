@interface NavigationAudioFeedbackCollector
- (void)dealloc;
- (void)endSession;
- (void)navigationService:(id)a3 didStartSpeakingPrompt:(id)a4;
- (void)startSession;
- (void)updateViewingAudioSettings:(BOOL)a3;
@end

@implementation NavigationAudioFeedbackCollector

- (void)navigationService:(id)a3 didStartSpeakingPrompt:(id)a4
{
  audioFeedback = self->_audioFeedback;
  v5 = audioFeedback->var13 + 1;
  *&audioFeedback->var18 |= 0x2000u;
  audioFeedback->var13 = v5;
}

- (void)updateViewingAudioSettings:(BOOL)a3
{
  self->_viewingAudioSettings = a3;
  if (a3)
  {
    audioFeedback = self->_audioFeedback;
    *&audioFeedback->var18 |= 0x4000u;
    audioFeedback->var14 = 1;
  }
}

- (void)endSession
{
  if (self->_audioFeedback)
  {
    if (self->_sessionDidStart)
    {
      v3 = +[MNNavigationService sharedService];
      [v3 unregisterObserver:self];

      self->_sessionDidStart = 0;
    }
  }
}

- (void)startSession
{
  if (!self->_audioFeedback)
  {
    v3 = +[MNNavigationService sharedService];
    [v3 registerObserver:self];

    v4 = malloc_type_calloc(1uLL, 0x2CuLL, 0x1000040BE8001C8uLL);
    self->_audioFeedback = v4;
    *&v4->var18 |= 0x4000u;
    v4->var14 = 0;
    self->_sessionDidStart = 1;
  }
}

- (void)dealloc
{
  free(self->_audioFeedback);
  v3.receiver = self;
  v3.super_class = NavigationAudioFeedbackCollector;
  [(NavigationAudioFeedbackCollector *)&v3 dealloc];
}

@end