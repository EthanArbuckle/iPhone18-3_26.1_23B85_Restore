@interface CNContactMatchSummarizer
+ (id)keyDescriptorForContactIdentifiers:(id)a3 matchInfos:(id)a4;
+ (id)log;
+ (id)summaryProperties;
+ (id)summaryPropertyForMatchInfo:(id)a3;
- (CNContactMatchSummarizer)init;
- (id)attributedStringForPropertyValueString:(id)a3 queryTerms:(id)a4 outMatchCount:(unint64_t *)a5;
- (id)summariesFutureForContactsIdentifiers:(id)a3 matchInfos:(id)a4 contactStore:(id)a5 scheduler:(id)a6;
- (id)summaryForContact:(id)a3 matchInfo:(id)a4;
- (void)dealloc;
@end

@implementation CNContactMatchSummarizer

+ (id)log
{
  if (log_cn_once_token_0_8 != -1)
  {
    +[CNContactMatchSummarizer log];
  }

  v3 = log_cn_once_object_0_8;

  return v3;
}

uint64_t __31__CNContactMatchSummarizer_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNContactMatchSummarizer");
  v1 = log_cn_once_object_0_8;
  log_cn_once_object_0_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)summaryProperties
{
  if (summaryProperties_cn_once_token_1 != -1)
  {
    +[CNContactMatchSummarizer summaryProperties];
  }

  v3 = summaryProperties_cn_once_object_1;

  return v3;
}

void __45__CNContactMatchSummarizer_summaryProperties__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v3[0] = @"nickname";
  v3[1] = @"organizationName";
  v3[2] = @"departmentName";
  v3[3] = @"jobTitle";
  v3[4] = @"note";
  v3[5] = @"phoneNumbers";
  v3[6] = @"emailAddresses";
  v3[7] = @"postalAddresses";
  v3[8] = @"urlAddresses";
  v3[9] = @"contactRelations";
  v3[10] = @"socialProfiles";
  v3[11] = @"instantMessageAddresses";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:12];
  v1 = [v0 copy];
  v2 = summaryProperties_cn_once_object_1;
  summaryProperties_cn_once_object_1 = v1;
}

+ (id)summaryPropertyForMatchInfo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a1 summaryProperties];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v4 matchedProperties];
        v14 = [v13 objectForKey:v12];

        v15 = [v14 count];
        if (v15 > v8)
        {
          v16 = v15;
          v17 = v12;

          v8 = v16;
          v9 = v17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)summariesFutureForContactsIdentifiers:(id)a3 matchInfos:(id)a4 contactStore:(id)a5 scheduler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E6996668];
  v14 = a6;
  v15 = objc_alloc_init(v13);
  v16 = MEMORY[0x1E6996720];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke;
  v26[3] = &unk_1E7414090;
  v27 = v10;
  v28 = v11;
  v29 = self;
  v30 = v12;
  v17 = v15;
  v31 = v17;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = [v16 futureWithBlock:v26 scheduler:v14];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke_4;
  v24[3] = &unk_1E7412FA0;
  v25 = v17;
  v22 = v17;
  [v21 addFailureBlock:v24];

  return v21;
}

id __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke_2;
  v20[3] = &unk_1E7412440;
  v2 = *(a1 + 32);
  v21 = *(a1 + 40);
  v3 = [v2 _cn_filter:v20];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if ([v3 count])
  {
    v5 = [objc_opt_class() keyDescriptorForContactIdentifiers:v3 matchInfos:*(a1 + 40)];
    v22[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v6];
    [(CNContactFetchRequest *)v7 setUnifyResults:0];
    [(CNContactFetchRequest *)v7 setDisallowsEncodedFetch:1];
    v8 = [CNContact predicateForContactsWithIdentifiers:v3];
    [(CNContactFetchRequest *)v7 setPredicate:v8];

    v9 = objc_opt_new();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke_3;
    v15[3] = &unk_1E7414068;
    v10 = *(a1 + 56);
    v16 = *(a1 + 64);
    v14 = *(a1 + 40);
    v11 = v14.i64[0];
    v17 = vextq_s8(v14, v14, 8uLL);
    v18 = v9;
    v19 = v4;
    v12 = v9;
    [v10 enumerateContactsAndMatchInfoWithFetchRequest:v7 error:0 usingBlock:v15];
  }

  return v4;
}

uint64_t __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = [v2 excerpt];
  v4 = [v3 future];

  LODWORD(v3) = [v4 isFinished];
  return v3 ^ 1;
}

void __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ([*(a1 + 32) isCanceled])
  {
    *a4 = 1;
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [v13 identifier];
    v9 = [v7 objectForKey:v8];
    v10 = [v6 summaryForContact:v13 matchInfo:v9];

    if (!v10)
    {
      v10 = *(a1 + 56);
    }

    v11 = *(a1 + 64);
    v12 = [v13 identifier];
    [v11 setObject:v10 forKey:v12];
  }
}

uint64_t __100__CNContactMatchSummarizer_summariesFutureForContactsIdentifiers_matchInfos_contactStore_scheduler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = [MEMORY[0x1E6996708] isCanceledError:a2];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 cancel];
  }

  return result;
}

+ (id)keyDescriptorForContactIdentifiers:(id)a3 matchInfos:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = objc_alloc_init(CNPerContactPropertyKeyDescriptor);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v7 objectForKey:v13];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 matchedProperties];

          if (v16)
          {
            v17 = [a1 summaryPropertyForMatchInfo:v15];
            v18 = v17;
            if (v17)
            {
              v26 = v17;
              v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
              [(CNPerContactPropertyKeyDescriptor *)v21 setKeysToFetch:v19 forContactIdentifier:v13];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  return v21;
}

- (CNContactMatchSummarizer)init
{
  v7.receiver = self;
  v7.super_class = CNContactMatchSummarizer;
  v2 = [(CNContactMatchSummarizer *)&v7 init];
  if (v2)
  {
    v2->_tokenList = ABTokenListCreate();
    v3 = *MEMORY[0x1E695E480];
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v8.location = 0;
    v8.length = 0;
    v2->_tokenizer = CFStringTokenizerCreate(v3, &stru_1F094DAB0, v8, 0x810000uLL, v4);
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_tokenList);
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = CNContactMatchSummarizer;
  [(CNContactMatchSummarizer *)&v4 dealloc];
}

- (id)summaryForContact:(id)a3 matchInfo:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v5 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__16;
  v48 = __Block_byref_object_dispose__16;
  v49 = 0;
  v31 = [CNContactMatchSummarizer summaryPropertyForMatchInfo:v5];
  v28 = v5;
  v6 = [v5 matchedProperties];
  v33 = [v6 objectForKey:v31];

  if (!v31)
  {
LABEL_26:
    v21 = v45[5];
    goto LABEL_27;
  }

  if ([v29 isKeyAvailable:v31])
  {
    v27 = [v29 valueForKey:v31];
    if (v27)
    {
      v7 = +[CN contactPropertiesByKey];
      v8 = [v7 objectForKey:v31];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v54 = 0;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = v27;
        v9 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v9)
        {
          v10 = *v41;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v41 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v40 + 1) + 8 * i);
              v13 = [v8 plistTransform];
              v14 = [v12 value];
              v15 = (v13)[2](v13, v14);

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
              }

              else
              {
                v50 = v31;
                v51 = v15;
                v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
              }

              v17 = v16;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v8 summarizationKeys];
              }

              else
              {
                v18 = 0;
              }

              v34[0] = MEMORY[0x1E69E9820];
              v34[1] = 3221225472;
              v34[2] = __56__CNContactMatchSummarizer_summaryForContact_matchInfo___block_invoke;
              v34[3] = &unk_1E74140B8;
              v19 = v18;
              v35 = v19;
              v36 = self;
              v37 = v33;
              v38 = buf;
              v39 = &v44;
              [v17 enumerateKeysAndObjectsUsingBlock:v34];
            }

            v9 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v9);
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [(CNContactMatchSummarizer *)self attributedStringForPropertyValueString:v27 queryTerms:v33 outMatchCount:0];
          v23 = v45[5];
          v45[5] = v22;
        }
      }
    }

    goto LABEL_26;
  }

  v20 = [objc_opt_class() log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v25 = [v29 identifier];
    v26 = [v29 availableKeyDescriptor];
    *buf = 138543874;
    *&buf[4] = v25;
    *&buf[12] = 2114;
    *&buf[14] = v31;
    *&buf[22] = 2114;
    v54 = v26;
    _os_log_error_impl(&dword_1954A0000, v20, OS_LOG_TYPE_ERROR, "contact %{public}@ does not have %{public}@ fetched, available keys %{public}@", buf, 0x20u);
  }

  v21 = 0;
LABEL_27:

  _Block_object_dispose(&v44, 8);

  return v21;
}

void __56__CNContactMatchSummarizer_summaryForContact_matchInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v7 || [v7 containsObject:v5])
  {
    v10 = 0;
    v8 = [*(a1 + 40) attributedStringForPropertyValueString:v6 queryTerms:*(a1 + 48) outMatchCount:&v10];
    if (v8)
    {
      v9 = *(*(a1 + 56) + 8);
      if (v10 > *(v9 + 24))
      {
        *(v9 + 24) = v10;
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
      }
    }
  }
}

- (id)attributedStringForPropertyValueString:(id)a3 queryTerms:(id)a4 outMatchCount:(unint64_t *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MEMORY[0x1E696AB08];
  v9 = a3;
  v10 = [v8 newlineCharacterSet];
  v11 = [v9 componentsSeparatedByCharactersInSet:v10];

  v12 = [v11 componentsJoinedByString:@" "];

  v40 = v12;
  ABTokenListPopulateFromString();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v7;
  v38 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  v13 = 0;
  v14 = 0;
  if (v38)
  {
    v37 = *v42;
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v15;
        v16 = *(*(&v41 + 1) + 8 * v15);
        Count = ABTokenListGetCount();
        if (Count >= 1)
        {
          v18 = Count;
          for (i = 0; i != v18; ++i)
          {
            if ([ABTokenListGetTokenAtIndex() rangeOfString:v16 options:393] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = v20;
              if (!v13)
              {
                v13 = i;
              }

              if (!v14)
              {
                v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v40];
              }

              TokenRangeAtIndex = ABTokenListGetTokenRangeAtIndex();
              if (v21 >= v22)
              {
                v21 = v22;
              }

              v24 = [MEMORY[0x1E696AD98] numberWithBool:1];
              [v14 addAttribute:@"contactExcerptEmphasized" value:v24 range:{TokenRangeAtIndex, v21}];

              if (a5)
              {
                ++*a5;
              }
            }
          }
        }

        v15 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v38);
  }

  if (v13 + 10 < ABTokenListGetCount())
  {
    v25 = ABTokenListGetTokenRangeAtIndex();
    [v14 replaceCharactersInRange:v25 + v26 withString:{objc_msgSend(v14, "length") - (v25 + v26), @"…"}];
  }

  if (v13)
  {
    v27 = ABTokenListGetTokenRangeAtIndex();
    if (v27 >= 16)
    {
      if (v13 < 2)
      {
        v33 = 0;
      }

      else
      {
        v28 = v27;
        v29 = 0;
        v30 = 1;
        do
        {
          v31 = v28 - ABTokenListGetTokenRangeAtIndex();
          if (v31 < 16)
          {
            v29 = v30;
          }

          v30 = v29 + 1;
        }

        while (v13 - (v29 + 1) >= 1 && v31 < 16);
        v33 = v29;
      }

      if (v13 == v33)
      {
        v34 = &stru_1F094DAB0;
      }

      else
      {
        v34 = @"…";
      }

      [v14 replaceCharactersInRange:0 withString:{ABTokenListGetTokenRangeAtIndex(), v34}];
    }
  }

  return v14;
}

@end