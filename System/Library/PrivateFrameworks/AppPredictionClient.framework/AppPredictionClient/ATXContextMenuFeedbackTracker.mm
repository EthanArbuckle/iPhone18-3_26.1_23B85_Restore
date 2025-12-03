@interface ATXContextMenuFeedbackTracker
+ (id)_suggestionStringForProactiveSuggestion:(id)suggestion;
+ (void)_logContextMenuFeedbackWithMenuActionType:(int)type suggestion:(id)suggestion consumerSubType:(unsigned __int8)subType tracker:(id)tracker;
@end

@implementation ATXContextMenuFeedbackTracker

+ (void)_logContextMenuFeedbackWithMenuActionType:(int)type suggestion:(id)suggestion consumerSubType:(unsigned __int8)subType tracker:(id)tracker
{
  subTypeCopy = subType;
  v8 = *&type;
  trackerCopy = tracker;
  suggestionCopy = suggestion;
  v12 = objc_opt_new();
  [v12 setMenuActionType:v8];
  clientModelSpecification = [suggestionCopy clientModelSpecification];
  clientModelId = [clientModelSpecification clientModelId];
  [v12 setClientModelId:clientModelId];

  v15 = MEMORY[0x1E69C5BC8];
  executableSpecification = [suggestionCopy executableSpecification];
  v17 = [v15 stringForExecutableType:{objc_msgSend(executableSpecification, "executableType")}];
  [v12 setExecutableType:v17];

  v18 = [MEMORY[0x1E698B028] stringForConsumerSubtype:subTypeCopy];
  [v12 setConsumerSubType:v18];

  v19 = [self _suggestionStringForProactiveSuggestion:suggestionCopy];

  [v12 setSuggestion:v19];
  [trackerCopy trackScalarForMessage:v12];

  v20 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ATXContextMenuFeedbackTracker _logContextMenuFeedbackWithMenuActionType:self suggestion:v12 consumerSubType:v20 tracker:?];
  }
}

+ (id)_suggestionStringForProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableObject = [executableSpecification executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionKey = [executableObject actionKey];
  }

  else
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    actionKey = [executableSpecification2 executableIdentifier];
  }

  return actionKey;
}

+ (void)_logContextMenuFeedbackWithMenuActionType:(NSObject *)a3 suggestion:consumerSubType:tracker:.cold.1(objc_class *a1, void *a2, NSObject *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromClass(a1);
  v6 = [a2 consumerSubType];
  v7 = [a2 menuActionType];
  if (v7 == 1)
  {
    v8 = @"DismissOnce";
  }

  else if (v7 == 2)
  {
    v8 = @"NeverShowAgain";
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  v9 = [a2 suggestion];
  v10 = [a2 clientModelId];
  v11 = [a2 executableType];
  *buf = 138413570;
  v13 = v5;
  v14 = 2112;
  v15 = v6;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  v20 = 2112;
  v21 = v10;
  v22 = 2112;
  v23 = v11;
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBContextMenuFeedbackTracker with consumerSubType: %@, menuActionType: %@, suggestion: %@, clientModelId: %@, executableType: %@", buf, 0x3Eu);
}

@end