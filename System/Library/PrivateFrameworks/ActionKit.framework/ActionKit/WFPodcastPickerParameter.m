@interface WFPodcastPickerParameter
- (WFPodcastPickerParameter)initWithDefinition:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)localizedLabelForPossibleState:(id)a3;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
@end

@implementation WFPodcastPickerParameter

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v4 = [a4 value];
  v5 = [v4 name];

  return v5;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__WFPodcastPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v7[3] = &unk_278C20490;
  v8 = v5;
  v6 = v5;
  [WFPodcastUtilities getPodcastsFromLibraryFetchingDetailsFromServer:0 withCompletion:v7];
}

void __90__WFPodcastPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__WFPodcastPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2;
  v5[3] = &unk_278C22448;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __90__WFPodcastPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) if_compactMap:&__block_literal_global_9594];
  v2 = objc_alloc(MEMORY[0x277CD3E28]);
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = [v2 initWithItems:v3];
  (*(*(a1 + 40) + 16))();
}

id __90__WFPodcastPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C740];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (id)localizedLabelForPossibleState:(id)a3
{
  v3 = [a3 value];
  v4 = [v3 name];

  return v4;
}

- (WFPodcastPickerParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFPodcastPickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end