@interface EARSpeechRecognizer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)pauseRecognition;
- (void)prepareForReuseWithNewSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options;
- (void)resumeRecognitionWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text;
- (void)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate lastStringOfPriorFinalResult:(id)result reply:(id)reply;
- (void)setClientInfo:(id)info;
- (void)setExtraLmList:(id)list sandboxExtensions:(id)extensions;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
@end

@implementation EARSpeechRecognizer

- (void)prepareForReuseWithNewSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options
{
  featuresCopy = features;
  infoCopy = info;
  contextCopy = context;
  optionsCopy = options;
  selfCopy = self;
  sub_100027854(featuresCopy, infoCopy, contextCopy, options);
}

- (void)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate lastStringOfPriorFinalResult:(id)result reply:(id)reply
{
  v11 = _Block_copy(reply);
  v12 = sub_100046E5C();
  v14 = v13;
  v15 = sub_100046E5C();
  v17 = v16;
  v18 = sub_100046E5C();
  v20 = v19;
  _Block_copy(v11);
  streamCopy = stream;
  selfCopy = self;
  sub_100028AE8(streamCopy, v12, v14, v15, v17, rate, v18, v20, selfCopy, v11);
  _Block_release(v11);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100029C48(listenerCopy, connectionCopy);

  return v9;
}

- (void)setExtraLmList:(id)list sandboxExtensions:(id)extensions
{
  v5 = sub_100046EFC();
  v6 = sub_100046EFC();
  selfCopy = self;
  sub_100029E80(v5, v6);
}

- (void)pauseRecognition
{
  selfCopy = self;
  sub_10002A824();
}

- (void)resumeRecognitionWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text
{
  sub_100046E5C();
  sub_100046E5C();
  sub_100046E5C();
  selfCopy = self;
  sub_10002A9A4();
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  postfixTextCopy = postfixText;
  if (text)
  {
    v27 = sub_100046E5C();
    v28 = v16;
    if (postfixTextCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = 0;
    if (selectedText)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  v28 = 0;
  if (!postfixText)
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = sub_100046E5C();
  postfixTextCopy = v17;
  if (selectedText)
  {
LABEL_4:
    v18 = sub_100046E5C();
    selectedText = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  selfCopy = self;
  sub_10002AC54(v27, v28, v26, postfixTextCopy, v18, selectedText, activeCopy, visibleTextCopy, suppressionCopy, commandSuppressionCopy, eventCopy);
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_10002B210();
}

@end