@interface WFShowInBlindSquareAction
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)showLocation:(id)a3 named:(id)a4 address:(id)a5 phoneNumber:(id)a6;
- (void)showMapItem:(id)a3 named:(id)a4;
- (void)showPlacemark:(id)a3 named:(id)a4 phoneNumber:(id)a5;
@end

@implementation WFShowInBlindSquareAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  if (v6)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to show %2$@ in BlindSquare?");
    [v7 localizedStringWithFormat:v9, v8, v6];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to show content in BlindSquare?");
    [v7 localizedStringWithFormat:v9, v8, v12];
  }
  v10 = ;

  return v10;
}

- (void)showLocation:(id)a3 named:(id)a4 address:(id)a5 phoneNumber:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(WFShowInBlindSquareAction *)self parameterValueForKey:@"WFBlindSquareSimulation" ofClass:objc_opt_class()];
  v15 = [v14 BOOLValue];
  v16 = @"open";
  if (v15)
  {
    v16 = @"simulate";
  }

  v17 = v16;

  [v13 coordinate];
  v19 = v18;
  v21 = v20;

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v19];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v21];
  v24 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v17, @"action", v22, @"lat", v23, @"lon", v12, @"name", v11, @"address", v10, @"phoneNumber", 0}];

  v25 = MEMORY[0x277CBEBC0];
  v26 = MEMORY[0x277CCACA8];
  v27 = [MEMORY[0x277CBEBC0] dc_queryStringWithQueryDictionary:v24];
  v28 = [v26 stringWithFormat:@"blindsquare://api/place?%@", v27];
  v29 = [v25 URLWithString:v28];

  v30 = [MEMORY[0x277CFC248] sharedContext];
  v31 = [(WFShowInBlindSquareAction *)self appDescriptor];
  v32 = [v31 bundleIdentifier];
  v33 = [(WFShowInBlindSquareAction *)self userInterface];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __68__WFShowInBlindSquareAction_showLocation_named_address_phoneNumber___block_invoke;
  v34[3] = &unk_278C1F530;
  v34[4] = self;
  [v30 openURL:v29 withBundleIdentifier:v32 userInterface:v33 completionHandler:v34];
}

- (void)showPlacemark:(id)a3 named:(id)a4 phoneNumber:(id)a5
{
  v8 = MEMORY[0x277CFC528];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 streetAddressWithPlacemark:v11 label:0];
  v14 = [v12 addressString];

  v13 = [v11 location];

  [(WFShowInBlindSquareAction *)self showLocation:v13 named:v10 address:v14 phoneNumber:v9];
}

- (void)showMapItem:(id)a3 named:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 placemark];
  v8 = [v7 phoneNumber];

  [(WFShowInBlindSquareAction *)self showPlacemark:v9 named:v6 phoneNumber:v8];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke;
  v7[3] = &unk_278C211D0;
  v7[4] = self;
  [v4 generateCollectionByCoercingToItemClasses:v5 completionHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 numberOfItems])
  {
    v10 = [v7 items];
    v11 = [v10 firstObject];

    v12 = [v11 preferredObjectType];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v13 = getMKMapItemClass_softClass;
    v34 = getMKMapItemClass_softClass;
    if (!getMKMapItemClass_softClass)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __getMKMapItemClass_block_invoke;
      v30[3] = &unk_278C222B8;
      v30[4] = &v31;
      __getMKMapItemClass_block_invoke(v30);
      v13 = v32[3];
    }

    v14 = v13;
    _Block_object_dispose(&v31, 8);
    v15 = [v12 conformsToClass:v13];

    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = [v11 mapItem];
      v18 = [v11 name];
      [v16 showMapItem:v17 named:v18];
    }

    else
    {
      v19 = [v11 preferredObjectType];
      v20 = [v19 conformsToClass:getCLPlacemarkClass()];

      if (v20)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_2;
        v28[3] = &unk_278C1BF08;
        v28[4] = *(a1 + 32);
        v29 = v11;
        [v29 getObjectRepresentation:v28 forClass:getCLPlacemarkClass()];
        v21 = v29;
      }

      else
      {
        v22 = [v11 preferredObjectType];
        v23 = [v22 conformsToClass:objc_opt_class()];

        if (v23)
        {
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_3;
          v26[3] = &unk_278C1BF58;
          v26[4] = *(a1 + 32);
          v27 = v11;
          [v27 getObjectRepresentation:v26 forClass:objc_opt_class()];
          v21 = v27;
        }

        else
        {
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_5;
          v24[3] = &unk_278C1CA80;
          v24[4] = *(a1 + 32);
          v25 = v11;
          [v25 getObjectRepresentation:v24 forClass:getCLLocationClass()];
          v21 = v25;
        }
      }
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v9];
  }
}

void __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  if (v6)
  {
    v8 = [*(a1 + 40) name];
    [v7 showPlacemark:v9 named:v8 phoneNumber:0];
  }

  else
  {
    [v7 finishRunningWithError:a4];
  }
}

void __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_4;
    v8[3] = &unk_278C1BF30;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    v10 = v6;
    [v9 getObjectRepresentation:v8 forClass:getCLLocationClass()];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a4];
  }
}

void __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  if (v6)
  {
    v8 = [*(a1 + 40) name];
    [v7 showLocation:v9 named:v8 address:0 phoneNumber:0];
  }

  else
  {
    [v7 finishRunningWithError:a4];
  }
}

void __56__WFShowInBlindSquareAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v10 = v6;
  if (v6)
  {
    v8 = [*(a1 + 40) name];
    v9 = [*(a1 + 48) addressString];
    [v7 showLocation:v10 named:v8 address:v9 phoneNumber:0];
  }

  else
  {
    [v7 finishRunningWithError:a4];
  }
}

@end