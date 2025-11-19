@interface AMSUIMessageRequest
+ (id)bk_fromJSONURL:(id)a3 localizedTexts:(id)a4 localizedActionTitles:(id)a5;
@end

@implementation AMSUIMessageRequest

+ (id)bk_fromJSONURL:(id)a3 localizedTexts:(id)a4 localizedActionTitles:(id)a5
{
  v7 = a3;
  v8 = a4;
  v62 = a5;
  v9 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
  objc_opt_class();
  v59 = v7;
  v10 = [NSData dataWithContentsOfURL:v7];
  v11 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:0];
  v12 = BUDynamicCast();

  v58 = v8;
  v13 = [v8 objectForKeyedSubscript:@"title"];
  v14 = v13;
  if (v13)
  {
    v57 = v13;
  }

  else
  {
    objc_opt_class();
    v15 = [v12 objectForKeyedSubscript:@"title"];
    v57 = BUDynamicCast();
  }

  v16 = [v8 objectForKeyedSubscript:@"message"];
  v17 = v16;
  if (v16)
  {
    v56 = v16;
  }

  else
  {
    objc_opt_class();
    v18 = [v12 objectForKeyedSubscript:@"message"];
    v56 = BUDynamicCast();
  }

  objc_opt_class();
  v19 = [v12 objectForKeyedSubscript:@"icon"];
  v20 = BUDynamicCast();

  objc_opt_class();
  v21 = [v12 objectForKeyedSubscript:@"style"];
  v55 = BUDynamicCast();

  objc_opt_class();
  v22 = [v12 objectForKeyedSubscript:@"appearance"];
  v23 = BUDynamicCast();

  v54 = v20;
  if (v20)
  {
    v24 = [NSURL URLWithString:v20 relativeToURL:v59];
  }

  else
  {
    v24 = 0;
  }

  v53 = v23;
  v25 = [[AMSUIMessageRequest alloc] initWithTitle:v57 message:v56 appearanceInfo:v23];
  v52 = v24;
  [v25 setIconURL:v24];
  v61 = v25;
  [v25 setStyle:{objc_msgSend(v55, "integerValue")}];
  objc_opt_class();
  v26 = [v12 objectForKeyedSubscript:@"actions"];
  v27 = BUDynamicCast();

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v27;
  v64 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v64)
  {
    v63 = *v68;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v68 != v63)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v29 = BUDynamicCast();
        if (v29)
        {
          objc_opt_class();
          v30 = [v29 objectForKeyedSubscript:@"identifier"];
          v31 = BUDynamicCast();

          v32 = [v62 objectForKeyedSubscript:v31];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            objc_opt_class();
            v35 = [v29 objectForKeyedSubscript:@"title"];
            v34 = BUDynamicCast();
          }

          objc_opt_class();
          v36 = [v29 objectForKeyedSubscript:@"icon"];
          v37 = BUDynamicCast();

          v38 = v37;
          objc_opt_class();
          v39 = [v29 objectForKeyedSubscript:@"style"];
          v65 = BUDynamicCast();

          objc_opt_class();
          v40 = [v29 objectForKeyedSubscript:@"value"];
          v41 = BUDynamicCast();

          if (v38)
          {
            v66 = [NSURL URLWithString:v38 relativeToURL:v59];
          }

          else
          {
            v66 = 0;
          }

          v42 = v65;
          if ([v65 isEqualToString:@"cancel"])
          {
            v43 = 2;
          }

          else
          {
            v43 = [v65 isEqualToString:@"destructive"];
          }

          v44 = [AMSDialogAction actionWithTitle:v34 style:v43];
          [v44 setIdentifier:v31];
          [v44 setIconURL:v66];
          if (v41)
          {
            v45 = v38;
            v46 = v34;
            v47 = v31;
            v48 = v9;
            v49 = v12;
            v50 = [[NSURL alloc] initWithString:v41];
            [v44 setDeepLink:v50];

            v12 = v49;
            v9 = v48;
            v31 = v47;
            v34 = v46;
            v38 = v45;
            v42 = v65;
          }

          [v61 addButtonAction:v44];
        }
      }

      v64 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v64);
  }

  return v61;
}

@end