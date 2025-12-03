@interface ICSAnnouncement
- (AVSpeechSynthesizer)speechSynthesizer;
- (ICSAnnouncement)init;
- (void)pause;
- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didContinueSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didPauseSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance;
- (void)start;
- (void)stop;
@end

@implementation ICSAnnouncement

- (ICSAnnouncement)init
{
  v3.receiver = self;
  v3.super_class = ICSAnnouncement;
  result = [(ICSAnnouncement *)&v3 init];
  if (result)
  {
    result->_delay = 1.0;
  }

  return result;
}

- (void)pause
{
  speechSynthesizer = [(ICSAnnouncement *)self speechSynthesizer];
  [speechSynthesizer pauseSpeakingAtBoundary:1];
}

- (void)start
{
  text = [(ICSAnnouncement *)self text];
  v4 = [AVSpeechUtterance speechUtteranceWithString:text];
  [(ICSAnnouncement *)self setSpeechUtterance:v4];

  [(ICSAnnouncement *)self delay];
  v6 = v5;
  speechUtterance = [(ICSAnnouncement *)self speechUtterance];
  [speechUtterance setPreUtteranceDelay:v6];

  speechSynthesizer = [(ICSAnnouncement *)self speechSynthesizer];
  speechUtterance2 = [(ICSAnnouncement *)self speechUtterance];
  [speechSynthesizer speakUtterance:speechUtterance2];
}

- (void)stop
{
  speechSynthesizer = [(ICSAnnouncement *)self speechSynthesizer];
  [speechSynthesizer stopSpeakingAtBoundary:1];
}

- (AVSpeechSynthesizer)speechSynthesizer
{
  speechSynthesizer = self->_speechSynthesizer;
  if (!speechSynthesizer)
  {
    v4 = objc_alloc_init(AVSpeechSynthesizer);
    v5 = self->_speechSynthesizer;
    self->_speechSynthesizer = v4;

    [(AVSpeechSynthesizer *)self->_speechSynthesizer setDelegate:self];
    speechSynthesizer = self->_speechSynthesizer;
  }

  return speechSynthesizer;
}

- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  delegate = [(ICSAnnouncement *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ICSAnnouncement *)self delegate];
    [delegate2 announcementDidStart:self];
  }
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  [(ICSAnnouncement *)self setSpeechUtterance:0, utterance];
  [(ICSAnnouncement *)self setText:0];
  delegate = [(ICSAnnouncement *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ICSAnnouncement *)self delegate];
    [delegate2 announcementDidFinish:self];
  }
}

- (void)speechSynthesizer:(id)synthesizer didPauseSpeechUtterance:(id)utterance
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  delegate = [(ICSAnnouncement *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ICSAnnouncement *)self delegate];
    [delegate2 announcementDidPause:self];
  }
}

- (void)speechSynthesizer:(id)synthesizer didContinueSpeechUtterance:(id)utterance
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  delegate = [(ICSAnnouncement *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ICSAnnouncement *)self delegate];
    [delegate2 announcementDidContinue:self];
  }
}

- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance
{
  utteranceCopy = utterance;
  synthesizerCopy = synthesizer;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  [(ICSAnnouncement *)self speechSynthesizer:synthesizerCopy didFinishSpeechUtterance:utteranceCopy];
}

@end