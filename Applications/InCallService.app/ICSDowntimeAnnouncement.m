@interface ICSDowntimeAnnouncement
- (SiriTTSDaemonSession)speechSynthesizer;
- (id)text;
- (void)start;
- (void)stop;
@end

@implementation ICSDowntimeAnnouncement

- (SiriTTSDaemonSession)speechSynthesizer
{
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

- (void)start
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 outputVoice];

  v6 = [SiriTTSSynthesisVoice alloc];
  v7 = [v5 languageCode];
  v8 = [v5 name];
  v9 = [v6 initWithLanguage:v7 name:v8];

  v10 = [SiriTTSSpeechRequest alloc];
  v11 = [(ICSDowntimeAnnouncement *)self text];
  v12 = [v10 initWithText:v11 voice:v9];

  [(ICSDowntimeAnnouncement *)self setSpeechRequest:v12];
  [(ICSAnnouncement *)self delay];
  v14 = dispatch_time(0, (v13 * 1000000000.0));
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100059948;
  v16[3] = &unk_100357110;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  dispatch_after(v14, &_dispatch_main_q, v16);
}

- (void)stop
{
  v4 = [(ICSDowntimeAnnouncement *)self speechSynthesizer];
  v3 = [(ICSDowntimeAnnouncement *)self speechRequest];
  [v4 cancelWithRequest:v3];
}

- (id)text
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ANNOUNCEMENT_CALL_WILL_END_RESTRICTED" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

@end