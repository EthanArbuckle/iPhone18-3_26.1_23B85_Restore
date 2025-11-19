@interface WFContentCollection
@end

@implementation WFContentCollection

void __94__WFContentCollection_ShareableObjects__getShareableObjectsOfTypes_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = [v6 items];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__WFContentCollection_ShareableObjects__getShareableObjectsOfTypes_options_completionHandler___block_invoke_2;
    v12[3] = &__block_descriptor_48_e73_v32__0__WFContentItem_8Q16___v_____WFSystemShareableObject____NSError__24l;
    v13 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __94__WFContentCollection_ShareableObjects__getShareableObjectsOfTypes_options_completionHandler___block_invoke_3;
    v9[3] = &unk_278C21AE8;
    v11 = *(a1 + 32);
    v10 = v6;
    [v8 if_mapAsynchronously:v12 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __94__WFContentCollection_ShareableObjects__getShareableObjectsOfTypes_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 attributionSet];
  (*(v4 + 16))(v4, v7, v8, v6);
}

@end