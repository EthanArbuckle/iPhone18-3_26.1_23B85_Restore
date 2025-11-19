@interface INUIServiceViewController
@end

@implementation INUIServiceViewController

uint64_t __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, 0);
  }

  return result;
}

uint64_t __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, 0);
  }

  return result;
}

void __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_3(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 48))
  {
    if (a2 == *MEMORY[0x277CBF3A8] && a3 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INUIRemoteViewControllerErrorDomain" code:2 userInfo:0];
    }

    else
    {
      v7 = 0;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_4;
    v12[3] = &unk_27872BB30;
    v8 = *(a1 + 32);
    v13 = *(a1 + 40);
    v9 = *(a1 + 48);
    v15 = v7;
    v16 = v9;
    v10 = *(a1 + 32);
    v17 = a2;
    v18 = a3;
    v14 = v10;
    v11 = v7;
    [v8 queryRepresentedPropertiesWithCompletion:v12];
  }
}

void __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v29 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = [v7 rangeOfString:@"."];
        if (v8 == 0x7FFFFFFFFFFFFFFFLL && v9 == 0)
        {
          v16 = 0;
          v15 = 0;
        }

        else
        {
          v11 = v8;
          v12 = v9;
          v13 = MEMORY[0x277CCACA8];
          v14 = [v7 substringToIndex:v8];
          v15 = [v13 stringWithFormat:@"IN%@", v14];

          v16 = [v7 substringFromIndex:v11 + v12];
        }

        v17 = [*(a1 + 32) intent];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if ([v15 isEqualToString:v19])
        {
        }

        else
        {
          v20 = [*(a1 + 32) intentResponse];
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = [v15 isEqualToString:v22];

          if (!v23)
          {
            goto LABEL_16;
          }
        }

        v24 = [MEMORY[0x277CD3E50] parameterForClass:NSClassFromString(v15) keyPath:v16];
        [v28 addObject:v24];

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }

  v25 = *(a1 + 56);
  [*(a1 + 40) _constrainedSizeForDesiredSize:{*(a1 + 64), *(a1 + 72)}];
  (*(v25 + 16))(v25, 1, v28, *(a1 + 48));

  v26 = *MEMORY[0x277D85DE8];
}

@end