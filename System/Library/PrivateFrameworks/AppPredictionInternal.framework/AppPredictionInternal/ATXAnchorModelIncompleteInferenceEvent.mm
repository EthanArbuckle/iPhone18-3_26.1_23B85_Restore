@interface ATXAnchorModelIncompleteInferenceEvent
- (ATXAnchor)anchor;
- (ATXAnchorModelIncompleteInferenceEvent)initWithAnchor:(id)a3 anchorEvent:(id)a4;
- (ATXAnchorModelIncompleteInferenceEvent)initWithAnchorClassString:(id)a3 anchorEvent:(id)a4 dateFirstAdded:(id)a5 retryCount:(id)a6;
- (ATXAnchorModelIncompleteInferenceEvent)initWithCoder:(id)a3;
- (id)description;
- (void)anchor;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAnchorModelIncompleteInferenceEvent

- (ATXAnchorModelIncompleteInferenceEvent)initWithAnchor:(id)a3 anchorEvent:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_new();
  v9 = [(ATXAnchorModelIncompleteInferenceEvent *)self initWithAnchorClassString:v7 anchorEvent:v5 dateFirstAdded:v8 retryCount:&unk_283A57080];

  return v9;
}

- (ATXAnchorModelIncompleteInferenceEvent)initWithAnchorClassString:(id)a3 anchorEvent:(id)a4 dateFirstAdded:(id)a5 retryCount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = ATXAnchorModelIncompleteInferenceEvent;
  v14 = [(ATXAnchorModelIncompleteInferenceEvent *)&v18 init];
  if (v14)
  {
    v15 = [v10 copy];
    anchorClassString = v14->_anchorClassString;
    v14->_anchorClassString = v15;

    objc_storeStrong(&v14->_anchorEvent, a4);
    objc_storeStrong(&v14->_dateFirstAdded, a5);
    objc_storeStrong(&v14->_retryCount, a6);
  }

  return v14;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Anchor class: %@, anchorEvent: %@, dateAdded: %@, retryCount: %@", self->_anchorClassString, self->_anchorEvent, self->_dateFirstAdded, self->_retryCount];

  return v2;
}

- (ATXAnchor)anchor
{
  p_anchorClassString = &self->_anchorClassString;
  if (NSClassFromString(self->_anchorClassString))
  {
    v4 = objc_opt_new();
    v5 = [(ATXDuetEvent *)self->_anchorEvent identifier];
    [v4 setAnchorEventIdentifier:v5];
  }

  else
  {
    v6 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXAnchorModelIncompleteInferenceEvent *)p_anchorClassString anchor];
    }

    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(ATXAnchorModelIncompleteInferenceEvent *)self dateFirstAdded];
  [v6 encodeObject:v4 forKey:@"codingKeyForDateFirstAdded"];

  [v6 encodeObject:self->_anchorClassString forKey:@"codingKeyForAnchorClassString"];
  v5 = [(ATXAnchorModelIncompleteInferenceEvent *)self anchorEvent];
  [v6 encodeObject:v5 forKey:@"codingKeyForAnchorEvent"];

  [v6 encodeObject:self->_retryCount forKey:@"codingKeyForRetryCount"];
}

- (ATXAnchorModelIncompleteInferenceEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForDateFirstAdded" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelInferenceEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForAnchorClassString" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelInferenceEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForAnchorEvent" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelInferenceEvent" errorCode:-1 logHandle:v18];

      if (v19 && ([v4 error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_anchor();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForRetryCount" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelInferenceEvent" errorCode:-1 logHandle:v23];

        if (v24 && ([v4 error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          self = [(ATXAnchorModelIncompleteInferenceEvent *)self initWithAnchorClassString:v14 anchorEvent:v19 dateFirstAdded:v8 retryCount:v24];
          v10 = self;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)anchor
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Failed to retrieve appropriate Class for anchor. Anchor Class: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end