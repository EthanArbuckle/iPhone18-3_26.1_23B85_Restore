@interface ATXExecutableIdentifier
- (ATXExecutableIdentifier)initWithAction:(id)action;
- (ATXExecutableIdentifier)initWithCoder:(id)coder;
- (ATXExecutableIdentifier)initWithHeroAppPrediction:(id)prediction;
- (ATXExecutableIdentifier)initWithInfoSuggestion:(id)suggestion;
- (ATXExecutableIdentifier)initWithLinkAction:(id)action;
- (ATXExecutableIdentifier)initWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)debugTitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXExecutableIdentifier

- (ATXExecutableIdentifier)initWithAction:(id)action
{
  actionCopy = action;
  v10.receiver = self;
  v10.super_class = ATXExecutableIdentifier;
  v6 = [(ATXExecutableIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_object, action);
    v8 = v7;
  }

  return v7;
}

- (ATXExecutableIdentifier)initWithString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = ATXExecutableIdentifier;
  v5 = [(ATXExecutableIdentifier *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 0;
    v7 = [stringCopy copy];
    object = v6->_object;
    v6->_object = v7;

    v9 = v6;
  }

  return v6;
}

- (ATXExecutableIdentifier)initWithHeroAppPrediction:(id)prediction
{
  predictionCopy = prediction;
  v10.receiver = self;
  v10.super_class = ATXExecutableIdentifier;
  v6 = [(ATXExecutableIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_object, prediction);
    v8 = v7;
  }

  return v7;
}

- (ATXExecutableIdentifier)initWithInfoSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v10.receiver = self;
  v10.super_class = ATXExecutableIdentifier;
  v6 = [(ATXExecutableIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_object, suggestion);
    v8 = v7;
  }

  return v7;
}

- (ATXExecutableIdentifier)initWithLinkAction:(id)action
{
  actionCopy = action;
  v10.receiver = self;
  v10.super_class = ATXExecutableIdentifier;
  v6 = [(ATXExecutableIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_object, action);
    v8 = v7;
  }

  return v7;
}

- (ATXExecutableIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = v5;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v20 = MEMORY[0x1E69C5D78];
      v21 = objc_opt_class();
      v22 = __atxlog_handle_default();
      v10 = [v20 robustDecodeObjectOfClass:v21 forKey:@"object" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXEngagementRecordManagerUtilitiesErrorDomain" errorCode:3 logHandle:v22];

      if (v10)
      {
        v11 = [(ATXExecutableIdentifier *)self initWithHeroAppPrediction:v10];
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if (v5 == 3)
    {
      v12 = MEMORY[0x1E69C5D78];
      v13 = objc_opt_class();
      v14 = __atxlog_handle_default();
      v10 = [v12 robustDecodeObjectOfClass:v13 forKey:@"object" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXEngagementRecordManagerUtilitiesErrorDomain" errorCode:3 logHandle:v14];

      if (v10)
      {
        v11 = [(ATXExecutableIdentifier *)self initWithInfoSuggestion:v10];
        goto LABEL_17;
      }

LABEL_18:
      selfCopy = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if (!v5)
    {
      v17 = MEMORY[0x1E69C5D78];
      v18 = objc_opt_class();
      v19 = __atxlog_handle_default();
      v10 = [v17 robustDecodeObjectOfClass:v18 forKey:@"object" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXEngagementRecordManagerUtilitiesErrorDomain" errorCode:2 logHandle:v19];

      if (v10)
      {
        v11 = [(ATXExecutableIdentifier *)self initWithString:v10];
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if (v5 == 1)
    {
      v7 = MEMORY[0x1E69C5D78];
      v8 = objc_opt_class();
      v9 = __atxlog_handle_default();
      v10 = [v7 robustDecodeObjectOfClass:v8 forKey:@"object" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXEngagementRecordManagerUtilitiesErrorDomain" errorCode:1 logHandle:v9];

      if (v10)
      {
        v11 = [(ATXExecutableIdentifier *)self initWithAction:v10];
LABEL_17:
        self = v11;
        selfCopy = self;
LABEL_19:

        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v15 = __atxlog_handle_default();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [(ATXExecutableIdentifier *)v6 initWithCoder:v15];
  }

  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_object forKey:@"object"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (v5->_type == self->_type)
      {
        v6 = self->_object;
        v7 = v6;
        if (v6 == v5->_object)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(ATXSuggestionExecutableProtocol *)v6 isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)debugTitle
{
  type = self->_type;
  if (type <= 1)
  {
    if (!type)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"App: %@", self->_object];
      goto LABEL_13;
    }

    if (type != 1)
    {
      goto LABEL_13;
    }

    v9 = MEMORY[0x1E696AEC0];
    actionTitle = [(ATXSuggestionExecutableProtocol *)self->_object actionTitle];
    [v9 stringWithFormat:@"Action: %@", actionTitle];
    v2 = LABEL_11:;

    goto LABEL_13;
  }

  switch(type)
  {
    case 2:
      v11 = MEMORY[0x1E696AEC0];
      actionTitle = [(ATXSuggestionExecutableProtocol *)self->_object bundleId];
      [v11 stringWithFormat:@"Hero App: %@", actionTitle];
      goto LABEL_11;
    case 3:
      v12 = MEMORY[0x1E696AEC0];
      actionTitle = [(ATXSuggestionExecutableProtocol *)self->_object widgetBundleIdentifier];
      [v12 stringWithFormat:@"Information: %@", actionTitle];
      goto LABEL_11;
    case 4:
      v4 = MEMORY[0x1E696AEC0];
      v5 = self->_object;
      bundleId = [(ATXSuggestionExecutableProtocol *)v5 bundleId];
      action = [(ATXSuggestionExecutableProtocol *)v5 action];

      identifier = [action identifier];
      v2 = [v4 stringWithFormat:@"Link Action: %@:%@", bundleId, identifier];

      break;
  }

LABEL_13:

  return v2;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "Unknown type: %ld", &v2, 0xCu);
}

@end