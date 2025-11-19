@interface WFContentCollection(ShareableObjects)
- (void)getShareableObjectsOfTypes:()ShareableObjects options:completionHandler:;
@end

@implementation WFContentCollection(ShareableObjects)

- (void)getShareableObjectsOfTypes:()ShareableObjects options:completionHandler:
{
  v8 = a5;
  v9 = objc_opt_new();
  if ((a3 & 8) != 0)
  {
    [v9 addObject:objc_opt_class()];
    if ((a3 & 1) == 0)
    {
LABEL_3:
      if ((a3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [v9 addObject:objc_opt_class()];
      if ((a3 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((a3 & 1) == 0)
  {
    goto LABEL_3;
  }

  [v9 addObject:objc_opt_class()];
  if ((a3 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a3 & 4) != 0)
  {
LABEL_5:
    [v9 addObject:objc_opt_class()];
  }

LABEL_6:
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__WFContentCollection_ShareableObjects__getShareableObjectsOfTypes_options_completionHandler___block_invoke;
  v11[3] = &unk_278C1A488;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  [a1 generateCollectionByCoercingToItemClasses:v9 completionHandler:v11];
}

@end