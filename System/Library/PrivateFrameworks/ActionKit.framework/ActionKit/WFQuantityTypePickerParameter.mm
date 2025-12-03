@interface WFQuantityTypePickerParameter
- (NSArray)possibleStates;
- (id)accessoryImageForPossibleState:(id)state;
- (id)localizedLabelForPossibleState:(id)state;
@end

@implementation WFQuantityTypePickerParameter

- (id)accessoryImageForPossibleState:(id)state
{
  stateCopy = state;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v4 = getHKDisplayTypeControllerClass_softClass;
  v24 = getHKDisplayTypeControllerClass_softClass;
  if (!getHKDisplayTypeControllerClass_softClass)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __getHKDisplayTypeControllerClass_block_invoke;
    v20[3] = &unk_278C222B8;
    v20[4] = &v21;
    __getHKDisplayTypeControllerClass_block_invoke(v20);
    v4 = v22[3];
  }

  v5 = v4;
  _Block_object_dispose(&v21, 8);
  wf_shortcutsAppHealthStore = [MEMORY[0x277CCD4D8] wf_shortcutsAppHealthStore];
  v7 = [v4 sharedInstanceForHealthStore:wf_shortcutsAppHealthStore];
  value = [stateCopy value];
  v9 = [v7 displayTypeForObjectTypeUnifyingBloodPressureTypes:value];

  v10 = objc_alloc(MEMORY[0x277D79E20]);
  displayCategory = [v9 displayCategory];
  color = [displayCategory color];
  v13 = [v10 initWithPlatformColor:color];

  v14 = objc_alloc(MEMORY[0x277D79FC8]);
  listIcon = [v9 listIcon];
  v16 = [v14 initWithPlatformImage:listIcon];
  v17 = [v16 imageWithRenderingMode:2];
  v18 = [v17 imageWithTintColor:v13];

  return v18;
}

- (id)localizedLabelForPossibleState:(id)state
{
  value = [state value];
  identifier = [value identifier];

  if (([identifier isEqualToString:*MEMORY[0x277CCC980]] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", *MEMORY[0x277CCC978]))
  {
    v5 = WFLocalizedString(@"Blood Pressure");
  }

  else
  {
    v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:identifier];
    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        [v6 hk_localizedName];
      }

      else
      {
        [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:identifier];
      }
      v5 = ;
    }

    else
    {
      v7 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:identifier];
      if (objc_opt_respondsToSelector())
      {
        [v7 hk_localizedName];
      }

      else
      {
        [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:identifier];
      }
      v5 = ;
    }
  }

  return v5;
}

- (NSArray)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = WFHealthKitSampleTypeIdentifiers();
    v5 = [v4 if_compactMap:&__block_literal_global_2573];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__WFQuantityTypePickerParameter_possibleStates__block_invoke_2;
    v9[3] = &unk_278C19280;
    v9[4] = self;
    v6 = [v5 sortedArrayUsingComparator:v9];
    v7 = self->_possibleStates;
    self->_possibleStates = v6;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

uint64_t __47__WFQuantityTypePickerParameter_possibleStates__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 localizedLabelForPossibleState:a2];
  v8 = [*(a1 + 32) localizedLabelForPossibleState:v6];

  v9 = [v7 localizedStandardCompare:v8];
  return v9;
}

WFHKSampleTypeSubstitutableState *__47__WFQuantityTypePickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:*MEMORY[0x277CCC978]])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCD720] _typeWithIdentifier:v2];
    if ([v4 sharingAuthorizationAllowed] && ((objc_msgSend(MEMORY[0x277CCD830], "quantityTypeForIdentifier:", v2), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(MEMORY[0x277CCD0C0], "categoryTypeForIdentifier:", v2), (v5 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      v6 = v5;
      v3 = [(WFVariableSubstitutableParameterState *)[WFHKSampleTypeSubstitutableState alloc] initWithValue:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end