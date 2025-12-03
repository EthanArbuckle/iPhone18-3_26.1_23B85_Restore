@interface ATXStackState
- (ATXStackState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXStackState

- (id)description
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  date = [(ATXHomeScreenEvent *)self->_stackCreationEvent date];
  date2 = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent date];
  eventTypeString = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent eventTypeString];
  widgetBundleId = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent widgetBundleId];
  reason = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent reason];
  date3 = [(ATXHomeScreenEvent *)self->_lastStackShownEvent date];
  widgetBundleId2 = [(ATXHomeScreenEvent *)self->_lastStackShownEvent widgetBundleId];
  date4 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent date];
  eventTypeString2 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent eventTypeString];
  widgetBundleId3 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent widgetBundleId];
  reason2 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent reason];
  jsonRawData = [(ATXSuggestionLayout *)self->_layoutForLastStalenessRotation jsonRawData];
  v16 = [v15 initWithFormat:@"Stack created %@\nLast stack rotation: %@: %@ - %@ - %@\nLast stack shown: %@: %@\nLast user scroll stack rotation: %@: %@ - %@ - %@\nLast staleness rotation layout for stack: %@\nDate of last staleness rotation: %@\n", date, date2, eventTypeString, widgetBundleId, reason, date3, widgetBundleId2, date4, eventTypeString2, widgetBundleId3, reason2, jsonRawData, self->_dateOfLastStalenessRotation];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  stackCreationEvent = self->_stackCreationEvent;
  coderCopy = coder;
  [coderCopy encodeObject:stackCreationEvent forKey:@"codingKeyForStackCreationEvent"];
  [coderCopy encodeObject:self->_lastStackRotationEvent forKey:@"codingKeyForLastStackRotationEvent"];
  [coderCopy encodeObject:self->_lastStackShownEvent forKey:@"codingKeyForLastStackShownEvent"];
  [coderCopy encodeObject:self->_lastUserScrollStackRotationEvent forKey:@"codingKeyForLastUserScrollStackRotationEvent"];
  [coderCopy encodeObject:self->_layoutForLastStalenessRotation forKey:@"codingKeyForLayoutForLastStalenessRotation"];
  [coderCopy encodeObject:self->_dateOfLastStalenessRotation forKey:@"codingKeyFordateOfLastStalenessRotation"];
}

- (ATXStackState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStackCreationEvent" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_blending();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForLastStackRotationEvent" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_blending();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForLastStackShownEvent" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
      }

      else
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_blending();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForLastUserScrollStackRotationEvent" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v23];

        error4 = [coderCopy error];

        if (error4)
        {
          selfCopy = 0;
        }

        else
        {
          v26 = MEMORY[0x277D42620];
          v27 = objc_opt_class();
          v28 = __atxlog_handle_blending();
          v29 = [v26 robustDecodeObjectOfClass:v27 forKey:@"codingKeyForLayoutForLastStalenessRotation" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v28];

          error5 = [coderCopy error];

          if (error5)
          {
            selfCopy = 0;
          }

          else
          {
            v31 = MEMORY[0x277D42620];
            v32 = objc_opt_class();
            v33 = __atxlog_handle_blending();
            v34 = [v31 robustDecodeObjectOfClass:v32 forKey:@"codingKeyFordateOfLastStalenessRotation" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v33];

            error6 = [coderCopy error];

            if (error6)
            {
              selfCopy = 0;
            }

            else
            {
              v39.receiver = self;
              v39.super_class = ATXStackState;
              v36 = [(ATXStackState *)&v39 init];
              p_isa = &v36->super.isa;
              if (v36)
              {
                objc_storeStrong(&v36->_stackCreationEvent, v8);
                objc_storeStrong(p_isa + 2, v14);
                objc_storeStrong(p_isa + 3, v19);
                objc_storeStrong(p_isa + 4, v24);
                objc_storeStrong(p_isa + 5, v29);
                objc_storeStrong(p_isa + 6, v34);
              }

              self = p_isa;
              selfCopy = self;
            }
          }
        }
      }
    }
  }

  return selfCopy;
}

@end