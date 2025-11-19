@interface AMSUIWebFetchTreatmentsAction
+ (NSISO8601DateFormatter)dateFormatter;
+ (id)dictionaryRepresentationForTreatment:(id)a3;
- (AMSUIWebFetchTreatmentsAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebFetchTreatmentsAction

+ (NSISO8601DateFormatter)dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC80]);

  return v2;
}

+ (id)dictionaryRepresentationForTreatment:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 dateFormatter];
  v14[0] = @"endDate";
  v6 = [v4 endDate];
  v7 = [v5 stringFromDate:v6];
  v15[0] = v7;
  v14[1] = @"identifier";
  v8 = [v4 identifier];
  v15[1] = v8;
  v14[2] = @"startDate";
  v9 = [v4 startDate];

  v10 = [v5 stringFromDate:v9];
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (AMSUIWebFetchTreatmentsAction)initWithJSObject:(id)a3 context:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v39.receiver = self;
  v39.super_class = AMSUIWebFetchTreatmentsAction;
  v7 = [(AMSUIWebAction *)&v39 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"areaIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    areaIds = v7->_areaIds;
    v7->_areaIds = v9;

    v11 = [v6 objectForKeyedSubscript:@"endDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = +[AMSUIWebFetchTreatmentsAction dateFormatter];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 dateFromString:v12];
      endDate = v7->_endDate;
      v7->_endDate = v15;

      if (!v7->_endDate)
      {
        v17 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v17)
        {
          v17 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v18 = [v17 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = AMSLogKey();
          v21 = AMSHashIfNeeded();
          v22 = AMSHashIfNeeded();
          *buf = 138544130;
          v41 = v19;
          v42 = 2114;
          v43 = v20;
          v44 = 2114;
          v45 = v21;
          v46 = 2114;
          v47 = v22;
          _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Wrong '%{public}@' format (%{public}@)", buf, 0x2Au);
        }
      }
    }

    v23 = [v6 objectForKeyedSubscript:@"includeExperimentData"];
    if (objc_opt_respondsToSelector())
    {
      v24 = [v6 objectForKeyedSubscript:@"includeExperimentData"];
      v7->_includeExperimentData = [v24 BOOLValue];
    }

    else
    {
      v7->_includeExperimentData = 0;
    }

    v25 = [v6 objectForKeyedSubscript:@"includePayload"];
    if (objc_opt_respondsToSelector())
    {
      v26 = [v6 objectForKeyedSubscript:@"includePayload"];
      v7->_includePayload = [v26 BOOLValue];
    }

    else
    {
      v7->_includePayload = 0;
    }

    v27 = [v6 objectForKeyedSubscript:@"startDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v29 = [v14 dateFromString:v28];
      startDate = v7->_startDate;
      v7->_startDate = v29;

      if (!v7->_startDate)
      {
        v31 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v31)
        {
          v31 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v32 = [v31 OSLogObject];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v33 = AMSLogKey();
          v34 = AMSHashIfNeeded();
          v35 = AMSHashIfNeeded();
          *buf = 138544130;
          v41 = v38;
          v42 = 2114;
          v43 = v33;
          v44 = 2114;
          v45 = v34;
          v46 = 2114;
          v47 = v35;
          _os_log_impl(&dword_1BB036000, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Wrong '%{public}@' format (%{public}@)", buf, 0x2Au);
        }
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)runAction
{
  v81 = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = AMSUIWebFetchTreatmentsAction;
  v3 = [(AMSUIWebAction *)&v70 runAction];
  v4 = [(AMSUIWebFetchTreatmentsAction *)self areaIds];
  if (v4)
  {
    v65 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
    v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSHashIfNeeded();
      *buf = 138543874;
      v72 = v8;
      v73 = 2114;
      v74 = v9;
      v75 = 2114;
      v76 = v10;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching treatments (areas: %{public}@)", buf, 0x20u);
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(AMSUIWebFetchTreatmentsAction *)self includeExperimentData])
    {
      v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v12)
      {
        v12 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        v16 = AMSHashIfNeeded();
        *buf = 138543874;
        v72 = v14;
        v73 = 2114;
        v74 = v15;
        v75 = 2114;
        v76 = v16;
        _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching experiment data (areas: %{public}@)", buf, 0x20u);
      }

      v17 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
      v18 = [v17 experimentDataForAreas:v5];
      v19 = [v18 thenWithBlock:&__block_literal_global_27];

      [v11 addObject:v19];
    }

    if ([(AMSUIWebFetchTreatmentsAction *)self includePayload])
    {
      v20 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v20)
      {
        v20 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = AMSLogKey();
        v24 = AMSHashIfNeeded();
        *buf = 138543874;
        v72 = v22;
        v73 = 2114;
        v74 = v23;
        v75 = 2114;
        v76 = v24;
        _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching payload (areas: %{public}@)", buf, 0x20u);
      }

      v25 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
      v26 = [v25 treatmentsPayloadForAreas:v5];
      v27 = [v26 thenWithBlock:&__block_literal_global_51];

      [v11 addObject:v27];
    }

    v28 = [(AMSUIWebFetchTreatmentsAction *)self startDate];
    v29 = [(AMSUIWebFetchTreatmentsAction *)self endDate];
    v64 = v11;
    if (v28 | v29)
    {
      v60 = v4;
      v61 = +[AMSUIWebFetchTreatmentsAction dateFormatter];
      v44 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v44)
      {
        v44 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v45 = [v44 OSLogObject];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v57 = objc_opt_class();
        v58 = AMSLogKey();
        AMSHashIfNeeded();
        v46 = v59 = v29;
        [v61 stringFromDate:v28];
        v47 = v63 = v28;
        v48 = AMSHashIfNeeded();
        v49 = [v61 stringFromDate:v59];
        v50 = AMSHashIfNeeded();
        *buf = 138544386;
        v72 = v57;
        v73 = 2114;
        v74 = v58;
        v75 = 2114;
        v76 = v46;
        v77 = 2114;
        v78 = v48;
        v79 = 2114;
        v80 = v50;
        _os_log_impl(&dword_1BB036000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching treatments (areas: %{public}@, startDate: %{public}@, endDate: %{public}@)", buf, 0x34u);

        v28 = v63;
        v29 = v59;
      }

      v51 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
      v52 = [v51 treatmentsForAreas:v5 startDate:v28 endDate:v29];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_55;
      v68[3] = &unk_1E7F262A0;
      v68[4] = self;
      v53 = [v52 thenWithBlock:v68];

      v40 = v64;
      [v64 addObject:v53];

      v4 = v60;
      v36 = v65;
      v41 = v28;
      v37 = v5;
    }

    else
    {
      v62 = v28;
      v30 = v5;
      v31 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v31)
      {
        v31 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        v35 = AMSHashIfNeeded();
        *buf = 138543874;
        v72 = v33;
        v73 = 2114;
        v74 = v34;
        v75 = 2114;
        v76 = v35;
        _os_log_impl(&dword_1BB036000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching active treatments (areas: %{public}@)", buf, 0x20u);
      }

      v36 = v65;
      v37 = v30;
      v38 = [v65 activeTreatmentsForAreas:v30];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_52;
      v69[3] = &unk_1E7F262A0;
      v69[4] = self;
      v39 = [v38 thenWithBlock:v69];

      v40 = v64;
      [v64 addObject:v39];

      v41 = v62;
    }

    v54 = [MEMORY[0x1E698CAD0] promiseWithAll:{v40, v57}];
    v43 = [v54 thenWithBlock:&__block_literal_global_59];

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_5;
    v67[3] = &unk_1E7F24410;
    v67[4] = self;
    [v43 addErrorBlock:v67];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_64;
    v66[3] = &unk_1E7F261F0;
    v66[4] = self;
    [v43 addSuccessBlock:v66];
  }

  else
  {
    v42 = MEMORY[0x1E698CAD0];
    v36 = AMSError();
    v43 = [v42 promiseWithError:v36];
  }

  v55 = *MEMORY[0x1E69E9840];

  return v43;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v9 = @"experimentData";
  v10[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v2 promiseWithResult:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_48(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v9 = @"payload";
  v10[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v2 promiseWithResult:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_52(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2;
  v8[3] = &unk_1E7F26278;
  v8[4] = *(a1 + 32);
  v2 = [a2 ams_compactMapValues:v8];
  v3 = MEMORY[0x1E698CAD0];
  v9 = @"treatments";
  v10[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v3 promiseWithResult:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() dictionaryRepresentationForTreatment:v3];

  return v4;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_55(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2_56;
  v8[3] = &unk_1E7F262C8;
  v8[4] = *(a1 + 32);
  v2 = [a2 ams_compactMapValues:v8];
  v3 = MEMORY[0x1E698CAD0];
  v9 = @"treatmentSets";
  v10[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v3 promiseWithResult:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2_56(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 32);
        v11 = [objc_opt_class() dictionaryRepresentationForTreatment:{*(*(&v14 + 1) + 8 * i), v14}];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 ams_reduceWithInitialResult:MEMORY[0x1E695E0F8] updateAccumulatingResult:&__block_literal_global_62];
  v3 = [MEMORY[0x1E698CAD0] promiseWithResult:v2];

  return v3;
}

void __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = AMSHashIfNeeded();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failure (error: %{public}@)", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_64(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Success (result: %{public}@)", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end