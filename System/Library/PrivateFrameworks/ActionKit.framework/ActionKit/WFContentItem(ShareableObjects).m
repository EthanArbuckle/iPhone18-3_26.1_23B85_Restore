@interface WFContentItem(ShareableObjects)
- (void)getShareableObjectOfTypes:()ShareableObjects options:completionHandler:;
@end

@implementation WFContentItem(ShareableObjects)

- (void)getShareableObjectOfTypes:()ShareableObjects options:completionHandler:
{
  v8 = a5;
  if (a4)
  {
    v9 = NSClassFromString(&cfstr_Uiimage.isa);
    if (v9)
    {
      v10 = v9;
      if (([(objc_class *)v9 conformsToProtocol:&unk_2850EC370]& 1) == 0)
      {
        class_addProtocol(v10, &unk_2850EC370);
      }
    }
  }

  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __87__WFContentItem_ShareableObjects__getShareableObjectOfTypes_options_completionHandler___block_invoke;
      v17[3] = &unk_278C1A4B0;
      v18 = v8;
      [a1 getObjectRepresentation:v17 forClass:objc_opt_class()];
      v12 = v18;
LABEL_16:

      goto LABEL_22;
    }
  }

  if (a3 & 2) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = [a1 URL];
    (*(v8 + 2))(v8, v11, 0);
  }

  else
  {
    if (a3 & 4) != 0 && (a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([a1 asset], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "mediaType"), v13, v14 == 1))
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __87__WFContentItem_ShareableObjects__getShareableObjectOfTypes_options_completionHandler___block_invoke_2;
        v15[3] = &unk_278C21CA0;
        v16 = v8;
        [a1 getObjectRepresentation:v15 forClass:objc_opt_class()];
        v12 = v16;
        goto LABEL_16;
      }
    }

    if ((a3 & 8) != 0)
    {
      [a1 getFileRepresentation:v8 forType:0];
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

LABEL_22:
}

@end