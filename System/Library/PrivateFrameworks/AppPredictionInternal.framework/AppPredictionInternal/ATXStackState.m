@interface ATXStackState
- (ATXStackState)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXStackState

- (id)description
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [(ATXHomeScreenEvent *)self->_stackCreationEvent date];
  v17 = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent date];
  v3 = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent eventTypeString];
  v4 = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent widgetBundleId];
  v13 = [(ATXHomeScreenEvent *)self->_lastStackRotationEvent reason];
  v12 = [(ATXHomeScreenEvent *)self->_lastStackShownEvent date];
  v5 = [(ATXHomeScreenEvent *)self->_lastStackShownEvent widgetBundleId];
  v6 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent date];
  v7 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent eventTypeString];
  v8 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent widgetBundleId];
  v9 = [(ATXHomeScreenEvent *)self->_lastUserScrollStackRotationEvent reason];
  v10 = [(ATXSuggestionLayout *)self->_layoutForLastStalenessRotation jsonRawData];
  v16 = [v15 initWithFormat:@"Stack created %@\nLast stack rotation: %@: %@ - %@ - %@\nLast stack shown: %@: %@\nLast user scroll stack rotation: %@: %@ - %@ - %@\nLast staleness rotation layout for stack: %@\nDate of last staleness rotation: %@\n", v14, v17, v3, v4, v13, v12, v5, v6, v7, v8, v9, v10, self->_dateOfLastStalenessRotation];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  stackCreationEvent = self->_stackCreationEvent;
  v5 = a3;
  [v5 encodeObject:stackCreationEvent forKey:@"codingKeyForStackCreationEvent"];
  [v5 encodeObject:self->_lastStackRotationEvent forKey:@"codingKeyForLastStackRotationEvent"];
  [v5 encodeObject:self->_lastStackShownEvent forKey:@"codingKeyForLastStackShownEvent"];
  [v5 encodeObject:self->_lastUserScrollStackRotationEvent forKey:@"codingKeyForLastUserScrollStackRotationEvent"];
  [v5 encodeObject:self->_layoutForLastStalenessRotation forKey:@"codingKeyForLayoutForLastStalenessRotation"];
  [v5 encodeObject:self->_dateOfLastStalenessRotation forKey:@"codingKeyFordateOfLastStalenessRotation"];
}

- (ATXStackState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStackCreationEvent" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_blending();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForLastStackRotationEvent" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_blending();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForLastStackShownEvent" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v18];

      v20 = [v4 error];

      if (v20)
      {
        v10 = 0;
      }

      else
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_blending();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForLastUserScrollStackRotationEvent" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v23];

        v25 = [v4 error];

        if (v25)
        {
          v10 = 0;
        }

        else
        {
          v26 = MEMORY[0x277D42620];
          v27 = objc_opt_class();
          v28 = __atxlog_handle_blending();
          v29 = [v26 robustDecodeObjectOfClass:v27 forKey:@"codingKeyForLayoutForLastStalenessRotation" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v28];

          v30 = [v4 error];

          if (v30)
          {
            v10 = 0;
          }

          else
          {
            v31 = MEMORY[0x277D42620];
            v32 = objc_opt_class();
            v33 = __atxlog_handle_blending();
            v34 = [v31 robustDecodeObjectOfClass:v32 forKey:@"codingKeyFordateOfLastStalenessRotation" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v33];

            v35 = [v4 error];

            if (v35)
            {
              v10 = 0;
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
              v10 = self;
            }
          }
        }
      }
    }
  }

  return v10;
}

@end