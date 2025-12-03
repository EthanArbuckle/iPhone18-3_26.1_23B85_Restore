@interface SRLocalSnippetManager
+ (VRXVisualResponseProvider)visualResponseProvider;
+ (id)transcriptItemForObject:(id)object;
+ (void)_logRFSnippetRenderingContextWithEvent:(int64_t)event;
@end

@implementation SRLocalSnippetManager

+ (VRXVisualResponseProvider)visualResponseProvider
{
  if (qword_10018F240 != -1)
  {
    sub_1000CF490();
  }

  v3 = qword_10018F238;

  return v3;
}

+ (id)transcriptItemForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = SRServerUtteranceController;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = SRUserUtteranceViewController;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_3:
      v5 = SRGuideViewController;
LABEL_12:
      v6 = objc_alloc_init(v5);
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = SRBigButtonController;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = SRDisambiguationSelectionController;
      goto LABEL_12;
    }

LABEL_36:
    v6 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = SRGuideDomainViewController;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v8 = +[SRVisualResponseTransformer visualMode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewId2 = objectCopy;
    visualResponseProvider = [self visualResponseProvider];
    modelData = [viewId2 modelData];
    bundleName = [viewId2 bundleName];
    v13 = [visualResponseProvider viewForSnippetModel:modelData bundleName:bundleName mode:v8];

    viewId = [viewId2 viewId];
    [v13 setViewId:viewId];

    responseViewId = [viewId2 responseViewId];
    [v13 setResponseViewId:responseViewId];

    itemType = [viewId2 itemType];
    LOBYTE(modelData) = [itemType isEqualToString:SAAceViewUIItemTypeItemTypeConversationValue];

    if ((modelData & 1) != 0 || ([viewId2 itemType], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", SAAceViewUIItemTypeItemTypeHintValue), v17, v18))
    {
      [v13 setVisualResponseLocation:2];
    }

    itemType2 = [viewId2 itemType];
    v20 = [itemType2 isEqualToString:SAAceViewUIItemTypeItemTypeAnnouncementValue];

    if (v20)
    {
      [v13 setVisualResponseLocation:2];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [self _logRFSnippetRenderingContextWithEvent:0];
      goto LABEL_31;
    }

    v21 = objectCopy;
    visualResponseProvider2 = [self visualResponseProvider];
    modelData2 = [v21 modelData];
    v13 = [visualResponseProvider2 viewForModel:modelData2 mode:v8];

    viewId2 = [v21 viewId];

    [v13 setViewId:viewId2];
  }

  [self _logRFSnippetRenderingContextWithEvent:0];
  if (v13)
  {
    v6 = [[_TtC4Siri34SiriUIVisualResponseViewController alloc] initWithView:v13 aceObject:objectCopy];

    goto LABEL_13;
  }

LABEL_31:
  [self _logRFSnippetRenderingContextWithEvent:1];
  v24 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "+[SRLocalSnippetManager transcriptItemForObject:]";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s #SRLocalSnippetManager: Failed to create ResponseView from modelData in a SAUISnippet.", &v26, 0xCu);
  }

  v6 = 0;
LABEL_13:
  if (v6)
  {
    v7 = [SiriSharedUITranscriptItem transcriptItemWithAceObject:objectCopy];
    [v7 setViewController:v6];
    goto LABEL_38;
  }

LABEL_37:
  v7 = 0;
LABEL_38:

  return v7;
}

+ (void)_logRFSnippetRenderingContextWithEvent:(int64_t)event
{
  v4 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  isSiriDetached = [v4 isSiriDetached];

  if ((isSiriDetached & 1) == 0)
  {
    v9 = [[VRXSnippetRenderingContext alloc] initWithRenderingEvent:event];
    v6 = +[SRUIFInstrumentationManager sharedManager];
    currentInstrumentationTurnContext = [v6 currentInstrumentationTurnContext];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

    [v9 emitWithTurnIdentifier:turnIdentifier];
  }
}

@end