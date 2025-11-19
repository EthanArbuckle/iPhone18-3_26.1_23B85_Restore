@interface EARSpeechRecognizer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)pauseRecognition;
- (void)prepareForReuseWithNewSupportedFeatures:(id)a3 clientInfo:(id)a4 analysisContext:(id)a5 analysisOptions:(id)a6;
- (void)resumeRecognitionWithLeftContext:(id)a3 rightContext:(id)a4 selectedText:(id)a5;
- (void)runRecognitionWithResultStream:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6 lastStringOfPriorFinalResult:(id)a7 reply:(id)a8;
- (void)setClientInfo:(id)a3;
- (void)setExtraLmList:(id)a3 sandboxExtensions:(id)a4;
- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10;
@end

@implementation EARSpeechRecognizer

- (void)prepareForReuseWithNewSupportedFeatures:(id)a3 clientInfo:(id)a4 analysisContext:(id)a5 analysisOptions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_100027854(v10, v11, v12, a6);
}

- (void)runRecognitionWithResultStream:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6 lastStringOfPriorFinalResult:(id)a7 reply:(id)a8
{
  v11 = _Block_copy(a8);
  v12 = sub_100046E5C();
  v14 = v13;
  v15 = sub_100046E5C();
  v17 = v16;
  v18 = sub_100046E5C();
  v20 = v19;
  _Block_copy(v11);
  v21 = a3;
  v22 = self;
  sub_100028AE8(v21, v12, v14, v15, v17, a6, v18, v20, v22, v11);
  _Block_release(v11);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100029C48(v6, v7);

  return v9;
}

- (void)setExtraLmList:(id)a3 sandboxExtensions:(id)a4
{
  v5 = sub_100046EFC();
  v6 = sub_100046EFC();
  v7 = self;
  sub_100029E80(v5, v6);
}

- (void)pauseRecognition
{
  v2 = self;
  sub_10002A824();
}

- (void)resumeRecognitionWithLeftContext:(id)a3 rightContext:(id)a4 selectedText:(id)a5
{
  sub_100046E5C();
  sub_100046E5C();
  sub_100046E5C();
  v6 = self;
  sub_10002A9A4();
}

- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10
{
  v14 = a4;
  if (a3)
  {
    v27 = sub_100046E5C();
    v28 = v16;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  v28 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = sub_100046E5C();
  v14 = v17;
  if (a5)
  {
LABEL_4:
    v18 = sub_100046E5C();
    a5 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = self;
  sub_10002AC54(v27, v28, v26, v14, v18, a5, v20, v21, v22, v23, v24);
}

- (void)setClientInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002B210();
}

@end