@interface ICSSiriCallAnnouncement
- (ICSSiriCallAnnouncement)initWithCall:(id)a3;
- (SiriTTSDaemonSession)speechSynthesizer;
- (void)didFinishSpeakingWithError:(id)a3;
- (void)didStartSpeaking;
- (void)pause;
- (void)start;
- (void)stop;
@end

@implementation ICSSiriCallAnnouncement

- (ICSSiriCallAnnouncement)initWithCall:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICSSiriCallAnnouncement;
  result = [(ICSCallAnnouncement *)&v4 initWithCall:a3];
  if (result)
  {
    result->_audioSessionIdentifier = 0;
  }

  return result;
}

- (void)pause
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pause ICSSiriCallAnnouncement", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054850;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)start
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start ICSSiriCallAnnouncement", buf, 2u);
  }

  v4 = [(ICSCallAnnouncement *)self contacts];
  v5 = [[AFSiriRingtone alloc] initWithContacts:v4];
  v6 = [(ICSCallAnnouncement *)self callDestinationID];
  [v5 setCallDestinationID:v6];

  v7 = [(ICSCallAnnouncement *)self callDestinationID];
  v8 = [v7 destinationIdIsEmailAddress];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v10 = [(ICSCallAnnouncement *)self callDestinationID];
    v11 = [v10 destinationIdIsPhoneNumber];

    v9 = v11;
  }

  [v5 setCallDestinationIDType:v9];
  v12 = [(ICSCallAnnouncement *)self callServiceName];
  [v5 setCallServiceSpeakableName:v12];

  v13 = [(ICSCallAnnouncement *)self callerName];
  [v5 setDisplayedCallerID:v13];

  v14 = [(ICSCallAnnouncement *)self callerNameType];
  if (v14 == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4 * (v14 == 1);
  }

  [v5 setCallerIDType:v15];
  v16 = [v5 voiceInfo];
  v17 = [SiriTTSSynthesisVoice alloc];
  v18 = [v16 languageCode];
  v19 = [v16 name];
  v20 = [v17 initWithLanguage:v18 name:v19];

  [v20 setGender:{objc_msgSend(v16, "gender")}];
  v21 = [SiriTTSSpeechRequest alloc];
  v22 = [v5 textToSpeak];
  v23 = [v21 initWithText:v22 voice:v20];

  [v23 setAudioSessionId:{-[ICSSiriCallAnnouncement audioSessionIdentifier](self, "audioSessionIdentifier")}];
  [(ICSSiriCallAnnouncement *)self setSpeechRequest:v23];
  objc_initWeak(buf, self);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100054C94;
  v31[3] = &unk_100356F60;
  objc_copyWeak(&v32, buf);
  [v23 setDidStartSpeaking:v31];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054CD4;
  block[3] = &unk_100356FB0;
  objc_copyWeak(&v30, buf);
  v29 = v23;
  v24 = v23;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100054E18;
  v26[3] = &unk_100356FD8;
  v26[4] = self;
  v27 = dispatch_block_create(0, block);
  v25 = v27;
  dispatch_async(&_dispatch_main_q, v26);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (void)stop
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop ICSSiriCallAnnouncement", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054F40;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (SiriTTSDaemonSession)speechSynthesizer
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  speechSynthesizer = self->_speechSynthesizer;
  if (!speechSynthesizer)
  {
    v4 = objc_alloc_init(SiriTTSDaemonSession);
    v5 = self->_speechSynthesizer;
    self->_speechSynthesizer = v4;

    speechSynthesizer = self->_speechSynthesizer;
  }

  return speechSynthesizer;
}

- (void)didStartSpeaking
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  v4 = [(ICSAnnouncement *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICSAnnouncement *)self delegate];
    [v6 announcementDidStart:self];
  }
}

- (void)didFinishSpeakingWithError:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v10, 2u);
  }

  if (v4)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100254444(v4, v6);
    }
  }

  v7 = [(ICSAnnouncement *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(ICSAnnouncement *)self delegate];
    [v9 announcementDidFinish:self];
  }
}

@end