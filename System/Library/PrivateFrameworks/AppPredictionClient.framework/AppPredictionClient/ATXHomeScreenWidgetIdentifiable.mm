@interface ATXHomeScreenWidgetIdentifiable
- (ATXHomeScreenPage)page;
- (ATXHomeScreenWidgetIdentifiable)init;
- (ATXHomeScreenWidgetIdentifiable)initWithCoder:(id)coder;
- (ATXHomeScreenWidgetIdentifiable)initWithMemoryPressureMonitor:(id)monitor;
- (ATXHomeScreenWidgetIdentifiable)initWithProto:(id)proto;
- (ATXHomeScreenWidgetIdentifiable)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSameWidgetAsWidgetBundleId:(id)id widgetKind:(id)kind;
- (INIntent)intent;
- (NSString)description;
- (id)_dictionaryRepresentationIncludingFullIntent:(BOOL)intent;
- (id)compactDescription;
- (id)encodeAsProto;
- (id)initFromDictionaryRepresentation:(id)representation;
- (id)proto;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleMemoryPressure;
- (void)intent;
- (void)proto;
- (void)setIntent:(id)intent;
@end

@implementation ATXHomeScreenWidgetIdentifiable

- (ATXHomeScreenWidgetIdentifiable)init
{
  mEMORY[0x1E698B000] = [MEMORY[0x1E698B000] sharedInstance];
  v4 = [(ATXHomeScreenWidgetIdentifiable *)self initWithMemoryPressureMonitor:mEMORY[0x1E698B000]];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intent = selfCopy->_intent;
  if (intent)
  {
    v4 = intent;
  }

  else if (selfCopy->_intentProtoData)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = MEMORY[0x1E696ACD0];
    v7 = objc_opt_class();
    intentProtoData = selfCopy->_intentProtoData;
    v14 = 0;
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:intentProtoData error:&v14];
    v10 = v14;
    v11 = selfCopy->_intent;
    selfCopy->_intent = v9;

    if (v10)
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ATXHomeScreenWidgetIdentifiable *)v10 intent];
      }
    }

    v4 = selfCopy->_intent;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intentProtoData = selfCopy->_intentProtoData;
  if (intentProtoData)
  {
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setIntent:?];
  }

  else
  {
    intent = [(ATXHomeScreenWidgetIdentifiable *)selfCopy intent];

    if (intent)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = MEMORY[0x1E696ACC8];
      intent2 = [(ATXHomeScreenWidgetIdentifiable *)selfCopy intent];
      v15 = 0;
      v11 = [v9 archivedDataWithRootObject:intent2 requiringSecureCoding:1 error:&v15];
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

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXHomeScreenWidgetIdentifiable *)self proto];
  data = [proto data];

  return data;
}

- (ATXHomeScreenWidgetIdentifiable)initWithMemoryPressureMonitor:(id)monitor
{
  monitorCopy = monitor;
  v9.receiver = self;
  v9.super_class = ATXHomeScreenWidgetIdentifiable;
  v6 = [(ATXHomeScreenWidgetIdentifiable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memoryPressureMonitor, monitor);
    [(ATXMemoryPressureMonitor *)v7->_memoryPressureMonitor registerObserver:v7];
  }

  return v7;
}

- (NSString)description
{
  v3 = [(ATXHomeScreenWidgetIdentifiable *)self _dictionaryRepresentationIncludingFullIntent:0];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v3 descriptionWithLocale:currentLocale];

  intent = [(ATXHomeScreenWidgetIdentifiable *)self intent];

  if (intent)
  {
    intent2 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
    v8 = [v5 stringByAppendingFormat:@"\nFull Intent: %@\n", intent2];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)_dictionaryRepresentationIncludingFullIntent:(BOOL)intent
{
  intentCopy = intent;
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
  intent = [(ATXHomeScreenWidgetIdentifiable *)self intent];
  v11 = intent;
  if (intentCopy)
  {
    intentDescription = [intent intentDescription];
    if (!intentDescription)
    {
      intent2 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
      v14 = [intent2 description];
      [v5 setObject:v14 forKeyedSubscript:@"intent"];

      goto LABEL_6;
    }
  }

  else
  {
    intentDescription = [intent typeName];
  }

  [v5 setObject:intentDescription forKeyedSubscript:@"intent"];
LABEL_6:

  return v5;
}

- (id)initFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v23.receiver = self;
  v23.super_class = ATXHomeScreenWidgetIdentifiable;
  v5 = [(ATXHomeScreenWidgetIdentifiable *)&v23 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"widgetBundleId"];

    if (v6)
    {
      v7 = [representationCopy objectForKeyedSubscript:@"widgetBundleId"];
      extensionBundleId = v5->_extensionBundleId;
      v5->_extensionBundleId = v7;

      v9 = [representationCopy objectForKeyedSubscript:@"appBundleId"];
      appBundleId = v5->_appBundleId;
      v5->_appBundleId = v9;

      v11 = [representationCopy objectForKeyedSubscript:@"widgetUniqueId"];
      widgetUniqueId = v5->_widgetUniqueId;
      v5->_widgetUniqueId = v11;

      v13 = [representationCopy objectForKeyedSubscript:@"widgetKind"];
      widgetKind = v5->_widgetKind;
      v5->_widgetKind = v13;

      v15 = [representationCopy objectForKeyedSubscript:@"size"];
      v5->_size = [v15 unsignedIntegerValue];

      v16 = [representationCopy objectForKeyedSubscript:@"suggestedWidget"];
      v5->_suggestedWidget = [v16 BOOLValue];

      v17 = [representationCopy objectForKeyedSubscript:@"onboardingWidget"];
      v5->_onboardingWidget = [v17 BOOLValue];

      v18 = [representationCopy objectForKeyedSubscript:@"score"];
      [v18 doubleValue];
      v5->_score = v19;

      v20 = [representationCopy objectForKeyedSubscript:@"predictionSource"];
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

- (void)setIntent:(id)intent
{
  intentCopy = intent;
  obj = self;
  objc_sync_enter(obj);
  intentProtoData = obj->_intentProtoData;
  obj->_intentProtoData = 0;

  intent = obj->_intent;
  obj->_intent = intentCopy;

  objc_sync_exit(obj);
}

- (void)handleMemoryPressure
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_intentProtoData && selfCopy->_intent)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "Purging intent proto data due to memory pressure", v5, 2u);
    }

    intentProtoData = selfCopy->_intentProtoData;
    selfCopy->_intentProtoData = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXHomeScreenWidgetIdentifiable *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXHomeScreenWidgetIdentifiable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXHomeScreenWidgetIdentifiable *)self initWithProtoData:v5];
  return v6;
}

- (ATXHomeScreenWidgetIdentifiable)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBHomeScreenWidgetIdentifiable alloc] initWithData:dataCopy];

    self = [(ATXHomeScreenWidgetIdentifiable *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXHomeScreenWidgetIdentifiable)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXHomeScreenWidgetIdentifiable *)self initWithProto:v5];
      }

      selfCopy2 = 0;
      goto LABEL_11;
    }

    v23.receiver = self;
    v23.super_class = ATXHomeScreenWidgetIdentifiable;
    self = [(ATXHomeScreenWidgetIdentifiable *)&v23 init];
    if (self)
    {
      v5 = protoCopy;
      selfCopy = self;
      objc_sync_enter(selfCopy);
      intent = [(ATXPBHomeScreenWidgetIdentifiable *)v5 intent];

      if (intent)
      {
        intent2 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 intent];
        intentProtoData = selfCopy->_intentProtoData;
        selfCopy->_intentProtoData = intent2;
      }

      objc_sync_exit(selfCopy);

      appBundleId = [(ATXPBHomeScreenWidgetIdentifiable *)v5 appBundleId];
      appBundleId = selfCopy->_appBundleId;
      selfCopy->_appBundleId = appBundleId;

      extensionBundleId = [(ATXPBHomeScreenWidgetIdentifiable *)v5 extensionBundleId];
      extensionBundleId = selfCopy->_extensionBundleId;
      selfCopy->_extensionBundleId = extensionBundleId;

      widgetUniqueId = [(ATXPBHomeScreenWidgetIdentifiable *)v5 widgetUniqueId];
      widgetUniqueId = selfCopy->_widgetUniqueId;
      selfCopy->_widgetUniqueId = widgetUniqueId;

      widgetKind = [(ATXPBHomeScreenWidgetIdentifiable *)v5 widgetKind];
      widgetKind = selfCopy->_widgetKind;
      selfCopy->_widgetKind = widgetKind;

      v18 = [(ATXPBHomeScreenWidgetIdentifiable *)v5 size];
      selfCopy->_size = ATXStackLayoutSizeFromProto(v18);
      selfCopy->_suggestedWidget = [(ATXPBHomeScreenWidgetIdentifiable *)v5 suggestedWidget];
      selfCopy->_onboardingWidget = [(ATXPBHomeScreenWidgetIdentifiable *)v5 onboardingWidget];
      selfCopy->_score = [(ATXPBHomeScreenWidgetIdentifiable *)v5 score];
      predictionSource = [(ATXPBHomeScreenWidgetIdentifiable *)v5 predictionSource];
      predictionSource = selfCopy->_predictionSource;
      selfCopy->_predictionSource = predictionSource;

      self = selfCopy;
      selfCopy2 = self;
LABEL_11:

      goto LABEL_12;
    }
  }

  selfCopy2 = 0;
LABEL_12:

  return selfCopy2;
}

- (BOOL)isSameWidgetAsWidgetBundleId:(id)id widgetKind:(id)kind
{
  idCopy = id;
  kindCopy = kind;
  if (![idCopy isEqualToString:&stru_1F3E050C8])
  {
    goto LABEL_14;
  }

  if ([kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"])
  {
    extensionBundleId = self->_extensionBundleId;
    v9 = MEMORY[0x1E698AFC0];
LABEL_6:
    v10 = *v9;
    goto LABEL_7;
  }

  if ([kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"])
  {
    extensionBundleId = self->_extensionBundleId;
    v9 = ATXAppPredictionPanelBundleIdentifier;
    goto LABEL_6;
  }

  if (([kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsFolder"] & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsSingle"))
  {
    extensionBundleId = self->_extensionBundleId;
    v10 = @"Shortcuts";
  }

  else
  {
    if (![kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"])
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
    v12 = [ATXWidgetPersonality stringRepresentationForExtensionBundleId:idCopy kind:kindCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

      intent = [(ATXHomeScreenWidgetIdentifiable *)self intent];
      if (intent || ([(ATXHomeScreenWidgetIdentifiable *)v6 intent], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        intent2 = [(ATXHomeScreenWidgetIdentifiable *)self intent];
        intent3 = [(ATXHomeScreenWidgetIdentifiable *)v6 intent];
        v12 = [intent2 atx_isEqualToIntent:intent3];

        if (intent)
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
  selfCopy = self;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not unarchive intent for widget identifiable: %@", &v2, 0xCu);
}

- (void)proto
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
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