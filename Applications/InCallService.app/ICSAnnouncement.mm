@interface ICSAnnouncement
- (AVSpeechSynthesizer)speechSynthesizer;
- (ICSAnnouncement)init;
- (void)pause;
- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didContinueSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didPauseSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4;
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
  v2 = [(ICSAnnouncement *)self speechSynthesizer];
  [v2 pauseSpeakingAtBoundary:1];
}

- (void)start
{
  v3 = [(ICSAnnouncement *)self text];
  v4 = [AVSpeechUtterance speechUtteranceWithString:v3];
  [(ICSAnnouncement *)self setSpeechUtterance:v4];

  [(ICSAnnouncement *)self delay];
  v6 = v5;
  v7 = [(ICSAnnouncement *)self speechUtterance];
  [v7 setPreUtteranceDelay:v6];

  v9 = [(ICSAnnouncement *)self speechSynthesizer];
  v8 = [(ICSAnnouncement *)self speechUtterance];
  [v9 speakUtterance:v8];
}

- (void)stop
{
  v2 = [(ICSAnnouncement *)self speechSynthesizer];
  [v2 stopSpeakingAtBoundary:1];
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

- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  v6 = [(ICSAnnouncement *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ICSAnnouncement *)self delegate];
    [v8 announcementDidStart:self];
  }
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  [(ICSAnnouncement *)self setSpeechUtterance:0, a4];
  [(ICSAnnouncement *)self setText:0];
  v5 = [(ICSAnnouncement *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICSAnnouncement *)self delegate];
    [v7 announcementDidFinish:self];
  }
}

- (void)speechSynthesizer:(id)a3 didPauseSpeechUtterance:(id)a4
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  v6 = [(ICSAnnouncement *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ICSAnnouncement *)self delegate];
    [v8 announcementDidPause:self];
  }
}

- (void)speechSynthesizer:(id)a3 didContinueSpeechUtterance:(id)a4
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  v6 = [(ICSAnnouncement *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ICSAnnouncement *)self delegate];
    [v8 announcementDidContinue:self];
  }
}

- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  [(ICSAnnouncement *)self speechSynthesizer:v7 didFinishSpeechUtterance:v6];
}

@end