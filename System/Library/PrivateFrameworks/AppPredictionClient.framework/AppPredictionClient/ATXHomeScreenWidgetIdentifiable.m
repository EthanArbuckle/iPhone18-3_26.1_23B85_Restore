@interface ATXHomeScreenWidgetIdentifiable
- (ATXHomeScreenPage)page;
- (ATXHomeScreenWidgetIdentifiable)init;
- (ATXHomeScreenWidgetIdentifiable)initWithCoder:(id)a3;
- (ATXHomeScreenWidgetIdentifiable)initWithMemoryPressureMonitor:(id)a3;
- (ATXHomeScreenWidgetIdentifiable)initWithProto:(id)a3;
- (ATXHomeScreenWidgetIdentifiable)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSameWidgetAsWidgetBundleId:(id)a3 widgetKind:(id)a4;
- (INIntent)intent;
- (NSString)description;
- (id)_dictionaryRepresentationIncludingFullIntent:(BOOL)a3;
- (id)compactDescription;
- (id)encodeAsProto;
- (id)initFromDictionaryRepresentation:(id)a3;
- (id)proto;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleMemoryPressure;
- (void)intent;
- (void)proto;
- (void)setIntent:(id)a3;
@end

@implementation ATXHomeScreenWidgetIdentifiable

- (ATXHomeScreenWidgetIdentifiable)init
{
  v3 = [MEMORY[0x1E698B000] sharedInstance];
  v4 = [(ATXHomeScreenWidgetIdentifiable *)self initWithMemoryPressureMonitor:v3];

  return v4;
}

- (id)compactDescription
{
  if (self->_suggestedWidget)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = v3;
  v6 = [[v4 alloc] initWithFormat:@"{extBundleID: %@, kind: %@, isSuggestedWidget: %@}", self->_extensionBundleId, self->_widgetKind, v5];

  return v6;
}

- (INIntent)intent
{
  v2 = self;
  objc_sync_enter(v2);
  intent = v2->_intent;
  if (intent)
  {
    v4 = intent;
  }

  else if (v2->_intentProtoData)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = MEMORY[0x1E696ACD0];
    v7 = objc_opt_class();
    intentProtoData = v2->_intentProtoData;
    v14 = 0;
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:intentProtoData error:&v14];
    v10 = v14;
    v11 = v2->_intent;
    v2->_intent = v9;

    if (v10)
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ATXHomeScreenWidgetIdentifiable *)v10 intent];
      }
    }

    v4 = v2->_intent;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)dealloc
{
  [(ATXMemoryPressureMonitor *)self->_memoryPressureMonitor unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = ATXHomeScreenWidgetIdentifiable;
  [(ATXHomeScreenWidgetIdentifiable *)&v3 dealloc];
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setAppBundleId:?];
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setExtensionBundleId:?];
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setWidgetUniqueId:?];
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setWidgetKind:?];
  v4 = ATXStackLayoutSizeToProto(self->_size);
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setSize:v4];
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setSuggestedWidget:?];
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setOnboardingWidget:?];
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setScore:?];
  [(ATXPBHomeScreenWidgetIdentifiable *)v3 setPredictionSource:?];
  v5 = self;
  objc_sync_enter(v5);
  intentProtoData = v5->_intentProtoData;
  if (intentProtoData)
  {
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setIntent:?];
  }

  else
  {
    v7 = [(ATXHomeScreenWidgetIdentifiable *)v5 intent];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = MEMORY[0x1E696ACC8];
      v10 = [(ATXHomeScreenWidgetIdentifiable *)v5 intent];
      v15 = 0;
      v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v15];
      v12 = v15;
      [(ATXPBHomeScreenWidgetIdentifiable *)v3 setIntent:v11];

      objc_autoreleasePoolPop(v8);
      if (v12)
      {
        v13 = __atxlog_handle_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(ATXHomeScreenWidgetIdentifiable *)v12 proto];
        }
      }
    }
  }

  objc_sync_exit(v5);

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXHomeScreenWidgetIdentifiable *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXHomeScreenWidgetIdentifiable)initWithMemoryPressureMonitor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHomeScreenWidgetIdentifiable;
  v6 = [(ATXHomeScreenWidgetIdentifiable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memoryPressureMonitor, a3);
    [(ATXMemoryPressureMonitor *)v7->_memoryPressureMonitor registerObserver:v7];
  }

  return v7;
}

- (NSString)description
{
  v3 = [(ATXHomeScreenWidgetIdentifiable *)self _dictionaryRepresentationIncludingFullIntent:0];
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v3 descriptionWithLocale:v4];

  v6 = [(ATXHomeScreenWidgetIdentifiable *)self intent];

  if (v6)
  {
    v7 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
    v8 = [v5 stringByAppendingFormat:@"\nFull Intent: %@\n", v7];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)_dictionaryRepresentationIncludingFullIntent:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  [v5 setObject:self->_extensionBundleId forKeyedSubscript:@"widgetBundleId"];
  [v5 setObject:self->_appBundleId forKeyedSubscript:@"appBundleId"];
  [v5 setObject:self->_widgetUniqueId forKeyedSubscript:@"widgetUniqueId"];
  [v5 setObject:self->_widgetKind forKeyedSubscript:@"widgetKind"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_size];
  [v5 setObject:v6 forKeyedSubscript:@"size"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_suggestedWidget];
  [v5 setObject:v7 forKeyedSubscript:@"suggestedWidget"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_onboardingWidget];
  [v5 setObject:v8 forKeyedSubscript:@"onboardingWidget"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [v5 setObject:v9 forKeyedSubscript:@"score"];

  [v5 setObject:self->_predictionSource forKeyedSubscript:@"predictionSource"];
  v10 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
  v11 = v10;
  if (v3)
  {
    v12 = [v10 intentDescription];
    if (!v12)
    {
      v13 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
      v14 = [v13 description];
      [v5 setObject:v14 forKeyedSubscript:@"intent"];

      goto LABEL_6;
    }
  }

  else
  {
    v12 = [v10 typeName];
  }

  [v5 setObject:v12 forKeyedSubscript:@"intent"];
LABEL_6:

  return v5;
}

- (id)initFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ATXHomeScreenWidgetIdentifiable;
  v5 = [(ATXHomeScreenWidgetIdentifiable *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"widgetBundleId"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"widgetBundleId"];
      extensionBundleId = v5->_extensionBundleId;
      v5->_extensionBundleId = v7;

      v9 = [v4 objectForKeyedSubscript:@"appBundleId"];
      appBundleId = v5->_appBundleId;
      v5->_appBundleId = v9;

      v11 = [v4 objectForKeyedSubscript:@"widgetUniqueId"];
      widgetUniqueId = v5->_widgetUniqueId;
      v5->_widgetUniqueId = v11;

      v13 = [v4 objectForKeyedSubscript:@"widgetKind"];
      widgetKind = v5->_widgetKind;
      v5->_widgetKind = v13;

      v15 = [v4 objectForKeyedSubscript:@"size"];
      v5->_size = [v15 unsignedIntegerValue];

      v16 = [v4 objectForKeyedSubscript:@"suggestedWidget"];
      v5->_suggestedWidget = [v16 BOOLValue];

      v17 = [v4 objectForKeyedSubscript:@"onboardingWidget"];
      v5->_onboardingWidget = [v17 BOOLValue];

      v18 = [v4 objectForKeyedSubscript:@"score"];
      [v18 doubleValue];
      v5->_score = v19;

      v20 = [v4 objectForKeyedSubscript:@"predictionSource"];
      predictionSource = v5->_predictionSource;
      v5->_predictionSource = v20;

      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIntent:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  intentProtoData = obj->_intentProtoData;
  obj->_intentProtoData = 0;

  intent = obj->_intent;
  obj->_intent = v4;

  objc_sync_exit(obj);
}

- (void)handleMemoryPressure
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_intentProtoData && v2->_intent)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Purging intent proto data due to memory pressure", v5, 2u);
    }

    intentProtoData = v2->_intentProtoData;
    v2->_intentProtoData = 0;
  }

  objc_sync_exit(v2);
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXHomeScreenWidgetIdentifiable *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXHomeScreenWidgetIdentifiable)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXHomeScreenWidgetIdentifiable *)self initWithProtoData:v5];
  return v6;
}

- (ATXHomeScreenWidgetIdentifiable)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBHomeScreenWidgetIdentifiable alloc] initWithData:v4];

    self = [(ATXHomeScreenWidgetIdentifiable *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXHomeScreenWidgetIdentifiable)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXHomeScreenWidgetIdentifiable *)self initWithProto:v5];
      }

      v21 = 0;
      goto LABEL_11;
    }

    v23.receiver = self;
    v23.super_class = ATXHomeScreenWidgetIdentifiable;
    self = [(ATXHomeScreenWidgetIdentifiable *)&v23 init];
    if (self)
    {
      v5 = v4;
      v6 = self;
      objc_sync_enter(v6);
      v7 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 intent];

      if (v7)
      {
        v8 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 intent];
        intentProtoData = v6->_intentProtoData;
        v6->_intentProtoData = v8;
      }

      objc_sync_exit(v6);

      v10 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 appBundleId];
      appBundleId = v6->_appBundleId;
      v6->_appBundleId = v10;

      v12 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 extensionBundleId];
      extensionBundleId = v6->_extensionBundleId;
      v6->_extensionBundleId = v12;

      v14 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 widgetUniqueId];
      widgetUniqueId = v6->_widgetUniqueId;
      v6->_widgetUniqueId = v14;

      v16 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 widgetKind];
      widgetKind = v6->_widgetKind;
      v6->_widgetKind = v16;

      v18 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 size];
      v6->_size = ATXStackLayoutSizeFromProto(v18);
      v6->_suggestedWidget = [(ATXPBHomeScreenWidgetIdentifiable *)v5 suggestedWidget];
      v6->_onboardingWidget = [(ATXPBHomeScreenWidgetIdentifiable *)v5 onboardingWidget];
      v6->_score = [(ATXPBHomeScreenWidgetIdentifiable *)v5 score];
      v19 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 predictionSource];
      predictionSource = v6->_predictionSource;
      v6->_predictionSource = v19;

      self = v6;
      v21 = self;
LABEL_11:

      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_12:

  return v21;
}

- (BOOL)isSameWidgetAsWidgetBundleId:(id)a3 widgetKind:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isEqualToString:&stru_1F3E050C8])
  {
    goto LABEL_14;
  }

  if ([v7 isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"])
  {
    extensionBundleId = self->_extensionBundleId;
    v9 = MEMORY[0x1E698AFC0];
LABEL_6:
    v10 = *v9;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"])
  {
    extensionBundleId = self->_extensionBundleId;
    v9 = ATXAppPredictionPanelBundleIdentifier;
    goto LABEL_6;
  }

  if (([v7 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsFolder"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsSingle"))
  {
    extensionBundleId = self->_extensionBundleId;
    v10 = @"Shortcuts";
  }

  else
  {
    if (![v7 isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"])
    {
      goto LABEL_14;
    }

    extensionBundleId = self->_extensionBundleId;
    v10 = @"Files";
  }

LABEL_7:
  if (![(NSString *)extensionBundleId isEqualToString:v10])
  {
LABEL_14:
    v12 = [ATXWidgetPersonality stringRepresentationForExtensionBundleId:v6 kind:v7];
    v13 = [ATXWidgetPersonality stringRepresentationForExtensionBundleId:self->_extensionBundleId kind:self->_widgetKind];
    v11 = [v12 isEqualToString:v13];

    goto LABEL_15;
  }

  v11 = 1;
LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleId hash];
  v4 = [(NSString *)self->_extensionBundleId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_widgetUniqueId hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_widgetKind hash];
  v7 = self->_size - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->_suggestedWidget - v7 + 32 * v7;
  return self->_onboardingWidget - v8 + 32 * v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      size = self->_size;
      if (size != [(ATXHomeScreenWidgetIdentifiable *)v6 size])
      {
        goto LABEL_22;
      }

      suggestedWidget = self->_suggestedWidget;
      if (suggestedWidget != [(ATXHomeScreenWidgetIdentifiable *)v6 isSuggestedWidget])
      {
        goto LABEL_22;
      }

      onboardingWidget = self->_onboardingWidget;
      if (onboardingWidget != [(ATXHomeScreenWidgetIdentifiable *)v6 isOnboardingWidget])
      {
        goto LABEL_22;
      }

      v10 = self->_extensionBundleId;
      v11 = v10;
      if (v10 == v6->_extensionBundleId)
      {
      }

      else
      {
        v3 = [(NSString *)v10 isEqual:?];

        if ((v3 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v13 = self->_appBundleId;
      v14 = v13;
      if (v13 == v6->_appBundleId)
      {
      }

      else
      {
        v3 = [(NSString *)v13 isEqual:?];

        if ((v3 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v15 = self->_widgetUniqueId;
      v16 = v15;
      if (v15 == v6->_widgetUniqueId)
      {
      }

      else
      {
        v3 = [(NSString *)v15 isEqual:?];

        if ((v3 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v17 = self->_widgetKind;
      v18 = v17;
      if (v17 == v6->_widgetKind)
      {
      }

      else
      {
        v3 = [(NSString *)v17 isEqual:?];

        if ((v3 & 1) == 0)
        {
LABEL_22:
          v12 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      v20 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
      if (v20 || ([(ATXHomeScreenWidgetIdentifiable *)v6 intent], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
        v22 = [(ATXHomeScreenWidgetIdentifiable *)v6 intent];
        v12 = [v21 atx_isEqualToIntent:v22];

        if (v20)
        {
LABEL_32:

          goto LABEL_23;
        }
      }

      else
      {
        v12 = 1;
      }

      goto LABEL_32;
    }

    v12 = 0;
  }

LABEL_24:

  return v12;
}

- (ATXHomeScreenPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (void)intent
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not unarchive intent for widget identifiable: %@", &v2, 0xCu);
}

- (void)proto
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not serialize intent: %@", &v2, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBHomeScreenWidgetIdentifiable proto", &v5, 0xCu);
}

@end