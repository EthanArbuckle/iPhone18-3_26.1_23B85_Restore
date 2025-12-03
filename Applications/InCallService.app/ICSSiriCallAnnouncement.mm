@interface ICSSiriCallAnnouncement
- (ICSSiriCallAnnouncement)initWithCall:(id)call;
- (SiriTTSDaemonSession)speechSynthesizer;
- (void)didFinishSpeakingWithError:(id)error;
- (void)didStartSpeaking;
- (void)pause;
- (void)start;
- (void)stop;
@end

@implementation ICSSiriCallAnnouncement

- (ICSSiriCallAnnouncement)initWithCall:(id)call
{
  v4.receiver = self;
  v4.super_class = ICSSiriCallAnnouncement;
  result = [(ICSCallAnnouncement *)&v4 initWithCall:call];
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

  contacts = [(ICSCallAnnouncement *)self contacts];
  v5 = [[AFSiriRingtone alloc] initWithContacts:contacts];
  callDestinationID = [(ICSCallAnnouncement *)self callDestinationID];
  [v5 setCallDestinationID:callDestinationID];

  callDestinationID2 = [(ICSCallAnnouncement *)self callDestinationID];
  destinationIdIsEmailAddress = [callDestinationID2 destinationIdIsEmailAddress];

  if (destinationIdIsEmailAddress)
  {
    v9 = 2;
  }

  else
  {
    callDestinationID3 = [(ICSCallAnnouncement *)self callDestinationID];
    destinationIdIsPhoneNumber = [callDestinationID3 destinationIdIsPhoneNumber];

    v9 = destinationIdIsPhoneNumber;
  }

  [v5 setCallDestinationIDType:v9];
  callServiceName = [(ICSCallAnnouncement *)self callServiceName];
  [v5 setCallServiceSpeakableName:callServiceName];

  callerName = [(ICSCallAnnouncement *)self callerName];
  [v5 setDisplayedCallerID:callerName];

  callerNameType = [(ICSCallAnnouncement *)self callerNameType];
  if (callerNameType == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4 * (callerNameType == 1);
  }

  [v5 setCallerIDType:v15];
  voiceInfo = [v5 voiceInfo];
  v17 = [SiriTTSSynthesisVoice alloc];
  languageCode = [voiceInfo languageCode];
  name = [voiceInfo name];
  v20 = [v17 initWithLanguage:languageCode name:name];

  [v20 setGender:{objc_msgSend(voiceInfo, "gender")}];
  v21 = [SiriTTSSpeechRequest alloc];
  textToSpeak = [v5 textToSpeak];
  v23 = [v21 initWithText:textToSpeak voice:v20];

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

  delegate = [(ICSAnnouncement *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICSAnnouncement *)self delegate];
    [delegate2 announcementDidStart:self];
  }
}

- (void)didFinishSpeakingWithError:(id)error
{
  errorCopy = error;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v10, 2u);
  }

  if (errorCopy)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100254444(errorCopy, v6);
    }
  }

  delegate = [(ICSAnnouncement *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(ICSAnnouncement *)self delegate];
    [delegate2 announcementDidFinish:self];
  }
}

@end