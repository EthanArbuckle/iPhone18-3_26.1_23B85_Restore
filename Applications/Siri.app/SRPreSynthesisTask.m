@interface SRPreSynthesisTask
- (BOOL)handlePreSynthesisCommandWithError:(id *)a3;
- (SAAceCommand)replyAceCommand;
- (SRPreSynthesisTask)init;
- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5;
- (void)setPreSynthesizeTTSCommand:(id)a3;
@end

@implementation SRPreSynthesisTask

- (SRPreSynthesisTask)init
{
  v8.receiver = self;
  v8.super_class = SRPreSynthesisTask;
  v2 = [(SRPreSynthesisTask *)&v8 init];
  if (v2)
  {
    v3 = +[AFConnection outputVoice];
    outputVoice = v2->_outputVoice;
    v2->_outputVoice = v3;

    v5 = objc_alloc_init(SiriTTSDaemonSession);
    speechSynthesizer = v2->_speechSynthesizer;
    v2->_speechSynthesizer = v5;
  }

  return v2;
}

- (void)setPreSynthesizeTTSCommand:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CEECC();
  }

  p_preSynthesizeTTSCommand = &self->_preSynthesizeTTSCommand;
  if (self->_preSynthesizeTTSCommand != v5)
  {
    objc_storeStrong(&self->_preSynthesizeTTSCommand, a3);
    preSynthesizedTTSAudioDurations = self->_preSynthesizedTTSAudioDurations;
    self->_preSynthesizedTTSAudioDurations = 0;

    parsedDialogStringsForPreSynthesis = self->_parsedDialogStringsForPreSynthesis;
    self->_parsedDialogStringsForPreSynthesis = 0;

    parsedDialogStringIndicies = self->_parsedDialogStringIndicies;
    self->_parsedDialogStringIndicies = 0;

    currentError = self->_currentError;
    self->_currentError = 0;

    if (self->_preSynthesizeTTSCommand)
    {
      v55 = v5;
      v11 = [NSLocale alloc];
      v12 = AFUIGetLanguageCode();
      v13 = [v11 initWithLocaleIdentifier:v12];

      v54 = v13;
      v14 = [[AFSpeakableUtteranceParser alloc] initWithLocale:v13];
      [v14 setHandleTTSCodes:1];
      v15 = +[NSMutableArray array];
      v16 = +[NSMutableDictionary dictionary];
      v17 = self->_parsedDialogStringIndicies;
      self->_parsedDialogStringIndicies = v16;

      v18 = [(SAPreSynthesizeTTS *)self->_preSynthesizeTTSCommand dialogStrings];
      v19 = [v18 count];

      v21 = 0;
      if (v19)
      {
        v22 = 0;
        *&v20 = 136315906;
        v53 = v20;
        do
        {

          v23 = [(SAPreSynthesizeTTS *)*p_preSynthesizeTTSCommand dialogStrings];
          v24 = [v23 objectAtIndexedSubscript:v22];

          v56 = 0;
          v25 = [v14 parseStringWithFormat:v24 error:&v56];
          v21 = v56;
          if ([v25 length])
          {
            [v15 addObject:v25];
            v26 = [NSNumber numberWithUnsignedInteger:v22];
            [(NSMutableDictionary *)self->_parsedDialogStringIndicies setObject:v26 forKeyedSubscript:v25];
          }

          if (v21)
          {
            v27 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              v30 = v27;
              v31 = [(SAPreSynthesizeTTS *)v55 dialogStrings];
              *buf = v53;
              v58 = "[SRPreSynthesisTask setPreSynthesizeTTSCommand:]";
              v59 = 2114;
              v60 = v31;
              v61 = 2114;
              v62 = v14;
              v63 = 2114;
              v64 = v21;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s #presynthesize Speakable utterance parser failed to parse presynthesis dialogStrings. (speakableText = %{public}@, speakableUtteranceParser = %{public}@, error = %{public}@)", buf, 0x2Au);
            }
          }

          ++v22;
          v28 = [(SAPreSynthesizeTTS *)*p_preSynthesizeTTSCommand dialogStrings];
          v29 = [v28 count];
        }

        while (v22 < v29);
      }

      v32 = [v15 count];
      v33 = [(SAPreSynthesizeTTS *)*p_preSynthesizeTTSCommand dialogStrings];
      if (v32 == [v33 count])
      {
        v34 = [(NSMutableDictionary *)self->_parsedDialogStringIndicies count];
        v35 = [(SAPreSynthesizeTTS *)self->_preSynthesizeTTSCommand dialogStrings];
        v36 = [v35 count];

        v37 = v34 == v36;
        v5 = v55;
        v38 = AFUIAudioPlayer_ptr;
        if (v37)
        {
LABEL_20:
          if ([v15 count])
          {
            objc_storeStrong(&self->_parsedDialogStringsForPreSynthesis, v15);
          }

          v40 = v38[114];
          v41 = [(SAPreSynthesizeTTS *)self->_preSynthesizeTTSCommand dialogStrings];
          v42 = [v40 arrayWithCapacity:{objc_msgSend(v41, "count")}];
          v43 = self->_preSynthesizedTTSAudioDurations;
          self->_preSynthesizedTTSAudioDurations = v42;

          v44 = [(SAPreSynthesizeTTS *)self->_preSynthesizeTTSCommand dialogStrings];
          v45 = [v44 count];

          if (v45)
          {
            v46 = 0;
            do
            {
              [(NSMutableArray *)self->_preSynthesizedTTSAudioDurations setObject:&off_10016E4E0 atIndexedSubscript:v46++];
              v47 = [(SAPreSynthesizeTTS *)self->_preSynthesizeTTSCommand dialogStrings];
              v48 = [v47 count];
            }

            while (v46 < v48);
          }

          goto LABEL_26;
        }
      }

      else
      {

        v5 = v55;
        v38 = AFUIAudioPlayer_ptr;
      }

      v39 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        preSynthesizeTTSCommand = self->_preSynthesizeTTSCommand;
        v50 = v39;
        v51 = [(SAPreSynthesizeTTS *)preSynthesizeTTSCommand dialogStrings];
        v52 = self->_parsedDialogStringIndicies;
        *buf = 136315906;
        v58 = "[SRPreSynthesisTask setPreSynthesizeTTSCommand:]";
        v59 = 2114;
        v60 = v51;
        v61 = 2114;
        v62 = v15;
        v63 = 2114;
        v64 = v52;
        _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s #presynthesize Failed to generate same number of utterances for dialogStrings = %{public}@, parsedDialogs = %{public}@, _parsedDialogStringIndicies = %{public}@)", buf, 0x2Au);
      }

      goto LABEL_20;
    }
  }

LABEL_26:
}

- (SAAceCommand)replyAceCommand
{
  p_preSynthesizeTTSCommand = &self->_preSynthesizeTTSCommand;
  if (!self->_preSynthesizeTTSCommand || [(NSMutableDictionary *)self->_parsedDialogStringIndicies count])
  {
    v4 = 0;
    goto LABEL_15;
  }

  v5 = [(SAPreSynthesizeTTS *)*p_preSynthesizeTTSCommand aceAudioData];
  if (v5)
  {

LABEL_7:
    v7 = AFSiriLogContextConnection;
    if (self->_currentError)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CEF4C(p_preSynthesizeTTSCommand, v7);
      }

      v8 = SACommandFailed;
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *p_preSynthesizeTTSCommand;
        v17 = 136315394;
        v18 = "[SRPreSynthesisTask replyAceCommand]";
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s PreSynthesizeTTS command (%@) succeeded", &v17, 0x16u);
      }

      v8 = SACommandSucceeded;
    }

    v4 = objc_alloc_init(v8);
    v10 = [(SAPreSynthesizeTTS *)*p_preSynthesizeTTSCommand aceId];
    [v4 setRefId:v10];

    goto LABEL_15;
  }

  v6 = [(SAPreSynthesizeTTS *)*p_preSynthesizeTTSCommand streamIds];

  if (v6)
  {
    goto LABEL_7;
  }

  v4 = objc_alloc_init(SAPreSynthesizeTTSCompleted);
  v12 = [(SAPreSynthesizeTTS *)self->_preSynthesizeTTSCommand aceId];
  [v4 setRefId:v12];

  if ([(NSMutableArray *)self->_preSynthesizedTTSAudioDurations count])
  {
    v13 = 0;
    do
    {
      v14 = [(NSMutableArray *)self->_preSynthesizedTTSAudioDurations objectAtIndexedSubscript:v13];
      [v14 doubleValue];
      v16 = v15;

      if (v16 < 0.0)
      {
        [(NSMutableArray *)self->_preSynthesizedTTSAudioDurations setObject:&off_10016E4F0 atIndexedSubscript:v13];
      }

      ++v13;
    }

    while (v13 < [(NSMutableArray *)self->_preSynthesizedTTSAudioDurations count]);
  }

  [v4 setApproximateSpeechDuration:self->_preSynthesizedTTSAudioDurations];
LABEL_15:

  return v4;
}

- (BOOL)handlePreSynthesisCommandWithError:(id *)a3
{
  v4 = self;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CEFDC(v5);
    v4 = self;
  }

  v73 = a3;
  if (a3)
  {
    if (*a3)
    {
      *a3 = 0;
    }

    p_preSynthesizeTTSCommand = &v4->_preSynthesizeTTSCommand;
    if (v4->_preSynthesizeTTSCommand)
    {
      parsedDialogStringsForPreSynthesis = v4->_parsedDialogStringsForPreSynthesis;
      p_parsedDialogStringsForPreSynthesis = &v4->_parsedDialogStringsForPreSynthesis;
      v7 = parsedDialogStringsForPreSynthesis;
      if (!parsedDialogStringsForPreSynthesis)
      {
        *v73 = [NSError errorWithDomain:kAFAssistantErrorDomain code:11 userInfo:&__NSDictionary0__struct];
LABEL_49:
        v50 = AFSiriLogContextConnection;
        v42 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR);
        if (!v42)
        {
          return v42;
        }

        sub_1000CF128(v50, v51, v52, v53, v54, v55, v56, v57);
        goto LABEL_55;
      }

      goto LABEL_11;
    }

    *v73 = [NSError errorWithDomain:kAFAssistantErrorDomain code:11 userInfo:&__NSDictionary0__struct];
LABEL_47:
    v41 = AFSiriLogContextConnection;
    v42 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR);
    if (!v42)
    {
      return v42;
    }

    sub_1000CF1A0(v41, v43, v44, v45, v46, v47, v48, v49);
    goto LABEL_55;
  }

  p_preSynthesizeTTSCommand = &v4->_preSynthesizeTTSCommand;
  if (!v4->_preSynthesizeTTSCommand)
  {
    goto LABEL_47;
  }

  v10 = v4->_parsedDialogStringsForPreSynthesis;
  p_parsedDialogStringsForPreSynthesis = &v4->_parsedDialogStringsForPreSynthesis;
  v7 = v10;
  if (!v10)
  {
    goto LABEL_49;
  }

LABEL_11:
  if ([(NSArray *)v7 count])
  {
    if ([*p_parsedDialogStringsForPreSynthesis count])
    {
      v12 = 0;
      v74 = kAFAssistantErrorDomain;
      *&v11 = 136315650;
      v72 = v11;
      do
      {
        v13 = [*p_preSynthesizeTTSCommand aceAudioData];
        if (v13)
        {
          v14 = [*p_preSynthesizeTTSCommand aceAudioData];
          if (v12 >= [v14 count])
          {
            v16 = 0;
          }

          else
          {
            v15 = [*p_preSynthesizeTTSCommand aceAudioData];
            v16 = [v15 objectAtIndexedSubscript:v12];
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = [*p_preSynthesizeTTSCommand streamIds];
        if (v17)
        {
          v18 = [*p_preSynthesizeTTSCommand streamIds];
          if (v12 >= [v18 count])
          {
            v22 = 0;
          }

          else
          {
            v19 = [*p_preSynthesizeTTSCommand streamIds];
            v20 = [v19 objectAtIndexedSubscript:v12];
            if ([v20 length])
            {
              v21 = [*p_preSynthesizeTTSCommand streamIds];
              v22 = [v21 objectAtIndexedSubscript:v12];
            }

            else
            {
              v22 = 0;
            }
          }
        }

        else
        {
          v22 = 0;
        }

        v23 = [*p_parsedDialogStringsForPreSynthesis objectAtIndexedSubscript:v12];
        if (![v23 length])
        {
          v25 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            sub_1000CF060(v86, &v87, v25);
          }

          v26 = [NSError errorWithDomain:v74 code:11 userInfo:&__NSDictionary0__struct];
          currentError = self->_currentError;
          self->_currentError = v26;
          goto LABEL_37;
        }

        v24 = [v16 audioBuffer];
        if ([v24 length])
        {
        }

        else
        {
          v28 = [v22 length] == 0;

          if (v28)
          {
            v29 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *p_preSynthesizeTTSCommand;
              v31 = v29;
              v32 = [v30 speakableContextInfo];
              *buf = v72;
              *&buf[4] = "[SRPreSynthesisTask handlePreSynthesisCommandWithError:]";
              *&buf[12] = 2112;
              *&buf[14] = v23;
              *&buf[22] = 2112;
              v83 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Presynthesizing text:%@, context:%@)", buf, 0x20u);
            }

            v33 = [SiriTTSSynthesisVoice alloc];
            v34 = [(AFVoiceInfo *)self->_outputVoice languageCode];
            v35 = [(AFVoiceInfo *)self->_outputVoice name];
            currentError = [v33 initWithLanguage:v34 name:v35];

            v36 = [[SiriTTSSynthesisRequest alloc] initWithText:v23 voice:currentError];
            v37 = [(SAPreSynthesizeTTS *)self->_preSynthesizeTTSCommand speakableContextInfo];
            [v36 setContextInfo:v37];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v83 = sub_100080378;
            v84 = sub_100080388;
            v85 = 0;
            v81[0] = _NSConcreteStackBlock;
            v81[1] = 3221225472;
            v81[2] = sub_100080390;
            v81[3] = &unk_100168B40;
            v81[4] = buf;
            [v36 setDidReportInstrument:v81];
            objc_initWeak(&location, self);
            speechSynthesizer = self->_speechSynthesizer;
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_1000803A0;
            v76[3] = &unk_100168B68;
            objc_copyWeak(&v79, &location);
            v39 = v36;
            v77 = v39;
            v78 = buf;
            [(SiriTTSDaemonSession *)speechSynthesizer synthesizeWithRequest:v39 didFinish:v76];

            objc_destroyWeak(&v79);
            objc_destroyWeak(&location);
            _Block_object_dispose(buf, 8);

            goto LABEL_37;
          }
        }

        currentError = [[SiriTTSInlineStreamingSignal alloc] initWithText:v23 identifier:v22];
        [(SiriTTSDaemonSession *)self->_speechSynthesizer signalWithInlineStreaming:currentError];
LABEL_37:

        ++v12;
      }

      while (v12 < [*p_parsedDialogStringsForPreSynthesis count]);
    }

    if (v73)
    {
      *v73 = self->_currentError;
    }

    v40 = [*p_preSynthesizeTTSCommand aceAudioData];
    if (v40)
    {
    }

    else
    {
      v68 = [*p_preSynthesizeTTSCommand streamIds];
      v69 = v68 == 0;

      if (v69)
      {
        v70 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[SRPreSynthesisTask handlePreSynthesisCommandWithError:]";
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%s Defer calling completion for PreSynthesisTTS to SiriTTSDaemonSession didFinish callback", buf, 0xCu);
        }

        goto LABEL_58;
      }
    }

    (*(self->_completion + 2))();
LABEL_58:
    LOBYTE(v42) = 1;
    return v42;
  }

  if (self->_completion)
  {
    v58 = [NSError errorWithDomain:kAFAssistantErrorDomain code:11 userInfo:&__NSDictionary0__struct];
    v59 = self->_currentError;
    self->_currentError = v58;

    v60 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF0B0(v60, v61, v62, v63, v64, v65, v66, v67);
    }

    (*(self->_completion + 2))();
  }

LABEL_55:
  LOBYTE(v42) = 0;
  return v42;
}

- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CF218();
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100080524;
  v14[3] = &unk_100167768;
  v15 = v8;
  v16 = self;
  v17 = v10;
  v18 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, v14);
}

@end