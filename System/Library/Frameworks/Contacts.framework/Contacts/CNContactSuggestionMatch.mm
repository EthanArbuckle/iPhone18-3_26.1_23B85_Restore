@interface CNContactSuggestionMatch
+ (id)os_log;
+ (id)suggestionFromContactMatch:(id)a3;
+ (void)fetchLinkedIdentifiersForContactSuggestionMatches:(id)a3 fromSuggestionService:(id)a4;
- (void)setContactMatch:(id)a3;
@end

@implementation CNContactSuggestionMatch

+ (id)os_log
{
  if (os_log_cn_once_token_0_0 != -1)
  {
    +[CNContactSuggestionMatch os_log];
  }

  v3 = os_log_cn_once_object_0_0;

  return v3;
}

uint64_t __34__CNContactSuggestionMatch_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "suggestion-match");
  v1 = os_log_cn_once_object_0_0;
  os_log_cn_once_object_0_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)suggestionFromContactMatch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setContactMatch:v4];

  return v5;
}

- (void)setContactMatch:(id)a3
{
  v5 = a3;
  p_contactMatch = &self->_contactMatch;
  if (self->_contactMatch != v5)
  {
    v8 = v5;
    objc_storeStrong(p_contactMatch, a3);
    v7 = [(SGContactMatch *)v8 contact];
    [(CNContactSuggestionMatch *)self setContact:v7];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_contactMatch, v5);
}

+ (void)fetchLinkedIdentifiersForContactSuggestionMatches:(id)a3 fromSuggestionService:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 _cn_map:&__block_literal_global_5];
    v15 = 0;
    v8 = [v6 cnContactMatchesForRecordIds:v7 error:&v15];
    v9 = v15;
    if (v8)
    {
      if ([v8 count])
      {
        v10 = 0;
        do
        {
          v11 = [v8 objectAtIndexedSubscript:v10];
          if ([v11 count] == 1)
          {
            v12 = [v5 objectAtIndexedSubscript:v10];
            v13 = [v11 objectAtIndexedSubscript:0];
            [v12 setMainStoreLinkedIdentifier:v13];
          }

          ++v10;
        }

        while (v10 < [v8 count]);
      }
    }

    else
    {
      v14 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(CNContactSuggestionMatch *)v7 fetchLinkedIdentifiersForContactSuggestionMatches:v9 fromSuggestionService:v14];
      }
    }
  }
}

id __100__CNContactSuggestionMatch_fetchLinkedIdentifiersForContactSuggestionMatches_fromSuggestionService___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  v3 = [v2 recordId];

  return v3;
}

+ (void)fetchLinkedIdentifiersForContactSuggestionMatches:(os_log_t)log fromSuggestionService:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1954A0000, log, OS_LOG_TYPE_ERROR, "Error retrieving contact matches for suggestions record ID: %@, %@", &v3, 0x16u);
}

@end