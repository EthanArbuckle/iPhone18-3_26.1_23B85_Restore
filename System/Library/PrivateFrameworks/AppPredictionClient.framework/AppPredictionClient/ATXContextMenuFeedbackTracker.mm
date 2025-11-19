@interface ATXContextMenuFeedbackTracker
+ (id)_suggestionStringForProactiveSuggestion:(id)a3;
+ (void)_logContextMenuFeedbackWithMenuActionType:(int)a3 suggestion:(id)a4 consumerSubType:(unsigned __int8)a5 tracker:(id)a6;
@end

@implementation ATXContextMenuFeedbackTracker

+ (void)_logContextMenuFeedbackWithMenuActionType:(int)a3 suggestion:(id)a4 consumerSubType:(unsigned __int8)a5 tracker:(id)a6
{
  v6 = a5;
  v8 = *&a3;
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_new();
  [v12 setMenuActionType:v8];
  v13 = [v11 clientModelSpecification];
  v14 = [v13 clientModelId];
  [v12 setClientModelId:v14];

  v15 = MEMORY[0x1E69C5BC8];
  v16 = [v11 executableSpecification];
  v17 = [v15 stringForExecutableType:{objc_msgSend(v16, "executableType")}];
  [v12 setExecutableType:v17];

  v18 = [MEMORY[0x1E698B028] stringForConsumerSubtype:v6];
  [v12 setConsumerSubType:v18];

  v19 = [a1 _suggestionStringForProactiveSuggestion:v11];

  [v12 setSuggestion:v19];
  [v10 trackScalarForMessage:v12];

  v20 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ATXContextMenuFeedbackTracker _logContextMenuFeedbackWithMenuActionType:a1 suggestion:v12 consumerSubType:v20 tracker:?];
  }
}

+ (id)_suggestionStringForProactiveSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 actionKey];
  }

  else
  {
    v7 = [v3 executableSpecification];
    v6 = [v7 executableIdentifier];
  }

  return v6;
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