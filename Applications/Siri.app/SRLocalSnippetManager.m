@interface SRLocalSnippetManager
+ (VRXVisualResponseProvider)visualResponseProvider;
+ (id)transcriptItemForObject:(id)a3;
+ (void)_logRFSnippetRenderingContextWithEvent:(int64_t)a3;
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

+ (id)transcriptItemForObject:(id)a3
{
  v4 = a3;
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
    v9 = v4;
    v10 = [a1 visualResponseProvider];
    v11 = [v9 modelData];
    v12 = [v9 bundleName];
    v13 = [v10 viewForSnippetModel:v11 bundleName:v12 mode:v8];

    v14 = [v9 viewId];
    [v13 setViewId:v14];

    v15 = [v9 responseViewId];
    [v13 setResponseViewId:v15];

    v16 = [v9 itemType];
    LOBYTE(v11) = [v16 isEqualToString:SAAceViewUIItemTypeItemTypeConversationValue];

    if ((v11 & 1) != 0 || ([v9 itemType], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", SAAceViewUIItemTypeItemTypeHintValue), v17, v18))
    {
      [v13 setVisualResponseLocation:2];
    }

    v19 = [v9 itemType];
    v20 = [v19 isEqualToString:SAAceViewUIItemTypeItemTypeAnnouncementValue];

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
      [a1 _logRFSnippetRenderingContextWithEvent:0];
      goto LABEL_31;
    }

    v21 = v4;
    v22 = [a1 visualResponseProvider];
    v23 = [v21 modelData];
    v13 = [v22 viewForModel:v23 mode:v8];

    v9 = [v21 viewId];

    [v13 setViewId:v9];
  }

  [a1 _logRFSnippetRenderingContextWithEvent:0];
  if (v13)
  {
    v6 = [[_TtC4Siri34SiriUIVisualResponseViewController alloc] initWithView:v13 aceObject:v4];

    goto LABEL_13;
  }

LABEL_31:
  [a1 _logRFSnippetRenderingContextWithEvent:1];
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
    v7 = [SiriSharedUITranscriptItem transcriptItemWithAceObject:v4];
    [v7 setViewController:v6];
    goto LABEL_38;
  }

LABEL_37:
  v7 = 0;
LABEL_38:

  return v7;
}

+ (void)_logRFSnippetRenderingContextWithEvent:(int64_t)a3
{
  v4 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
  v5 = [v4 isSiriDetached];

  if ((v5 & 1) == 0)
  {
    v9 = [[VRXSnippetRenderingContext alloc] initWithRenderingEvent:a3];
    v6 = +[SRUIFInstrumentationManager sharedManager];
    v7 = [v6 currentInstrumentationTurnContext];
    v8 = [v7 turnIdentifier];

    [v9 emitWithTurnIdentifier:v8];
  }
}

@end