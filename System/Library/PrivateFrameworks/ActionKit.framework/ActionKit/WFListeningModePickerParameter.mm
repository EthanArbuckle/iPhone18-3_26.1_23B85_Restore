@interface WFListeningModePickerParameter
- (WFAction)action;
- (WFListeningModePickerParameter)initWithDefinition:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
- (void)setAction:(id)a3;
@end

@implementation WFListeningModePickerParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  if ([a4 isEqualToString:@"WFRoute"])
  {

    [(WFDynamicEnumerationParameter *)self clearPossibleStates];
  }
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v4 = a4;
  v5 = [v4 value];
  v6 = [v5 isEqualToString:@"Normal"];

  if (v6)
  {
    v7 = @"Off";
LABEL_9:
    v14 = WFLocalizedString(v7);
    goto LABEL_10;
  }

  v8 = [v4 value];
  v9 = [v8 isEqualToString:@"ActiveNoiseCancellation"];

  if (v9)
  {
    v7 = @"Noise Cancellation";
    goto LABEL_9;
  }

  v10 = [v4 value];
  v11 = [v10 isEqualToString:@"Transparency"];

  if (v11)
  {
    v7 = @"Transparency";
    goto LABEL_9;
  }

  v12 = [v4 value];
  v13 = [v12 isEqualToString:@"Adaptive"];

  if (v13)
  {
    v7 = @"Adaptive";
    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(WFListeningModePickerParameter *)self action];
  v8 = [v7 parameterStateForKey:@"WFRoute"];

  v9 = [v8 value];
  if (v9)
  {
    v10 = objc_opt_new();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __96__WFListeningModePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
    v17[3] = &unk_278C1C3A0;
    v20 = v6;
    v18 = v9;
    v19 = v10;
    v11 = v10;
    [v11 findRouteMatchingDescriptor:v18 timeout:v17 completionHandler:15.0];

    v12 = v20;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D7CB30];
    v21 = *MEMORY[0x277CCA450];
    v11 = WFLocalizedString(@"Please select a valid route first");
    v22[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v15 = [v13 errorWithDomain:v14 code:5 userInfo:v12];
    (*(v6 + 2))(v6, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __96__WFListeningModePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    goto LABEL_7;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v7 = getMPAVOutputDeviceRouteClass_softClass_21407;
  v28 = getMPAVOutputDeviceRouteClass_softClass_21407;
  if (!getMPAVOutputDeviceRouteClass_softClass_21407)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __getMPAVOutputDeviceRouteClass_block_invoke_21408;
    v24[3] = &unk_278C222B8;
    v24[4] = &v25;
    __getMPAVOutputDeviceRouteClass_block_invoke_21408(v24);
    v7 = v26[3];
  }

  v8 = v7;
  _Block_object_dispose(&v25, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v10 = WFAvailableListeningModesForRoute(v9);
    if ([v10 count])
    {
      v11 = [v10 if_map:&__block_literal_global_21415];
      v12 = [objc_alloc(MEMORY[0x277CD3E28]) initWithItems:v11];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v18 = *(a1 + 48);
      v19 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v20 = MEMORY[0x277CCACA8];
      v11 = WFLocalizedString(@"Noise Control mode is not supported on %@");
      v12 = [v9 routeName];
      v21 = [v20 localizedStringWithFormat:v11, v12];
      v30 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v23 = [v19 errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:v22];
      (*(v18 + 16))(v18, 0, v23);
    }
  }

  else
  {
LABEL_7:
    v13 = *(a1 + 48);
    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v15 = MEMORY[0x277CCACA8];
    v9 = WFLocalizedStringWithKey(@"Could Not Find “%@” (Listening Mode)", @"Could Not Find “%@”");
    v10 = [*(a1 + 32) routeName];
    v11 = [v15 localizedStringWithFormat:v9, v10];
    v32[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:v12];
    (*(v13 + 16))(v13, 0, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

id __96__WFListeningModePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (void)setAction:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  v5 = objc_storeWeak(&self->_action, obj);
  [obj addEventObserver:self];
}

- (WFListeningModePickerParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFListeningModePickerParameter;
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