@interface AVPlayerTextualFeedbackPublisher
- (AVPlayerTextualFeedbackPublisher)initWithSmartSubtitlesController:(id)controller;
- (AVPlayerTextualFeedbackPublisherDelegate)delegate;
- (void)_invalidateQueue;
- (void)_publishFromQueue;
- (void)_publishMessage:(id)message;
- (void)_publishSubtitlesOnMuteMessageIfNeeded;
- (void)dealloc;
- (void)smartSubtitlesController:(id)controller didToggleSubtitlesOnSkipBackForTimeInterval:(double)interval;
- (void)startPublishing;
- (void)stopPublishing;
@end

@implementation AVPlayerTextualFeedbackPublisher

- (AVPlayerTextualFeedbackPublisherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)smartSubtitlesController:(id)controller didToggleSubtitlesOnSkipBackForTimeInterval:(double)interval
{
  [(AVPlayerTextualFeedbackPublisher *)self _invalidateQueue];
  v6 = MEMORY[0x1E696AEC0];
  v9 = AVLocalizedString(@"SUBTITLES_ON_SKIP_BACK_MESSAGE %@");
  v7 = [(NSDateComponentsFormatter *)self->_secondsFormatter stringFromTimeInterval:interval];
  v8 = [v6 stringWithFormat:v9, v7];
  [(AVPlayerTextualFeedbackPublisher *)self _publishMessage:v8];
}

- (void)_invalidateQueue
{
  [(NSMutableArray *)self->_messageQueue removeAllObjects];
  [(NSTimer *)self->_messageQueueTimer invalidate];
  messageQueueTimer = self->_messageQueueTimer;
  self->_messageQueueTimer = 0;
}

- (void)_publishFromQueue
{
  v19 = *MEMORY[0x1E69E9840];
  firstObject = [(NSMutableArray *)self->_messageQueue firstObject];
  if ([(AVPlayerTextualFeedbackPublisher *)self isPublishing]&& firstObject && !self->_messageQueueTimer)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = self->_timeOfLastPublishedMessage - v4 + 2.0;
    if (v6 >= 2.22044605e-16)
    {
      objc_initWeak(buf, self);
      v9 = MEMORY[0x1E695DFF0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__AVPlayerTextualFeedbackPublisher__publishFromQueue__block_invoke;
      v13[3] = &unk_1E7209DA8;
      objc_copyWeak(&v14, buf);
      v10 = [v9 timerWithTimeInterval:0 repeats:v13 block:v6];
      messageQueueTimer = self->_messageQueueTimer;
      self->_messageQueueTimer = v10;

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:self->_messageQueueTimer forMode:*MEMORY[0x1E695DA28]];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }

    else
    {
      [(NSMutableArray *)self->_messageQueue removeObject:firstObject];
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[AVPlayerTextualFeedbackPublisher _publishFromQueue]";
        v17 = 2114;
        v18 = firstObject;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Publishing message: %{public}@", buf, 0x16u);
      }

      delegate = [(AVPlayerTextualFeedbackPublisher *)self delegate];
      [delegate textualFeedbackPublisher:self didPublishMessage:firstObject];

      self->_timeOfLastPublishedMessage = v5;
    }
  }
}

void __53__AVPlayerTextualFeedbackPublisher__publishFromQueue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMessageQueueTimer:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _publishFromQueue];
}

- (void)_publishMessage:(id)message
{
  messageCopy = message;
  if ([(AVPlayerTextualFeedbackPublisher *)self isPublishing]&& ([(NSMutableArray *)self->_messageQueue containsObject:messageCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_messageQueue addObject:messageCopy];
    [(AVPlayerTextualFeedbackPublisher *)self _publishFromQueue];
  }
}

- (void)_publishSubtitlesOnMuteMessageIfNeeded
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  if (self->_timeOfLastSubtitlesOnMuteMessage - v3 + 60.0 < 2.22044605e-16 && [(AVSmartSubtitlesController *)self->_smartSubtitlesController isSubtitlesOnMuteActive])
  {
    self->_timeOfLastSubtitlesOnMuteMessage = v4;
    v5 = AVLocalizedString(@"SUBTITLES_ON_MUTED_MESSAGE");
    [(AVPlayerTextualFeedbackPublisher *)self _publishMessage:v5];
  }
}

- (void)stopPublishing
{
  if ([(AVPlayerTextualFeedbackPublisher *)self isPublishing])
  {
    [(AVPlayerTextualFeedbackPublisher *)self setPublishing:0];
    [(AVSmartSubtitlesController *)self->_smartSubtitlesController setDelegate:0];
    [(AVObservationController *)self->_textualFeedbackKVO stopAllObservation];

    [(AVPlayerTextualFeedbackPublisher *)self _invalidateQueue];
  }
}

- (void)startPublishing
{
  if (![(AVPlayerTextualFeedbackPublisher *)self isPublishing])
  {
    [(AVPlayerTextualFeedbackPublisher *)self setPublishing:1];
    [(AVSmartSubtitlesController *)self->_smartSubtitlesController setDelegate:self];
    v3 = [(AVObservationController *)self->_textualFeedbackKVO startObserving:self keyPath:@"smartSubtitlesController.subtitlesOnMuteActive" observationHandler:&__block_literal_global_137];

    [(AVPlayerTextualFeedbackPublisher *)self _publishSubtitlesOnMuteMessageIfNeeded];
  }
}

- (void)dealloc
{
  [(AVPlayerTextualFeedbackPublisher *)self stopPublishing];
  v3.receiver = self;
  v3.super_class = AVPlayerTextualFeedbackPublisher;
  [(AVPlayerTextualFeedbackPublisher *)&v3 dealloc];
}

- (AVPlayerTextualFeedbackPublisher)initWithSmartSubtitlesController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = AVPlayerTextualFeedbackPublisher;
  v6 = [(AVPlayerTextualFeedbackPublisher *)&v14 init];
  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    messageQueue = v6->_messageQueue;
    v6->_messageQueue = array;

    v9 = objc_alloc_init(MEMORY[0x1E696AB70]);
    secondsFormatter = v6->_secondsFormatter;
    v6->_secondsFormatter = v9;

    [(NSDateComponentsFormatter *)v6->_secondsFormatter setAllowedUnits:128];
    [(NSDateComponentsFormatter *)v6->_secondsFormatter setUnitsStyle:3];
    objc_storeStrong(&v6->_smartSubtitlesController, controller);
    v11 = [[AVObservationController alloc] initWithOwner:v6];
    textualFeedbackKVO = v6->_textualFeedbackKVO;
    v6->_textualFeedbackKVO = v11;
  }

  return v6;
}

@end