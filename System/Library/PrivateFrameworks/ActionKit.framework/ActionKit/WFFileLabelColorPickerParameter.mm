@interface WFFileLabelColorPickerParameter
- (WFFileLabelColorPickerParameter)initWithDefinition:(id)definition;
- (id)accessoryColorForPossibleState:(id)state;
- (id)localizedLabelForPossibleState:(id)state;
@end

@implementation WFFileLabelColorPickerParameter

- (id)accessoryColorForPossibleState:(id)state
{
  stateCopy = state;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v4 = getUIColorClass_softClass;
  v16 = getUIColorClass_softClass;
  if (!getUIColorClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getUIColorClass_block_invoke;
    v12[3] = &unk_278C222B8;
    v12[4] = &v13;
    __getUIColorClass_block_invoke(v12);
    v4 = v14[3];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  number = [stateCopy number];
  unsignedIntValue = [number unsignedIntValue];

  v8 = 0;
  if (unsignedIntValue <= 3)
  {
    if (unsignedIntValue <= 1)
    {
      if (unsignedIntValue)
      {
        if (unsignedIntValue != 1)
        {
          goto LABEL_24;
        }

        systemGrayColor = [v4 systemGrayColor];
      }

      else
      {
        systemGrayColor = [v4 clearColor];
      }

      goto LABEL_21;
    }

    if (unsignedIntValue == 2)
    {
      [v4 systemGreenColor];
    }

    else
    {
      [v4 systemPurpleColor];
    }

    goto LABEL_11;
  }

  if (unsignedIntValue <= 5)
  {
    if (unsignedIntValue == 4)
    {
      [v4 systemBlueColor];
    }

    else
    {
      [v4 systemYellowColor];
    }

    systemGrayColor = LABEL_11:;
    goto LABEL_21;
  }

  if (unsignedIntValue == 6)
  {
    systemGrayColor = [v4 systemRedColor];
  }

  else
  {
    if (unsignedIntValue != 7)
    {
      goto LABEL_24;
    }

    systemGrayColor = [v4 systemOrangeColor];
  }

LABEL_21:
  v10 = systemGrayColor;
  if (systemGrayColor)
  {
    v8 = [objc_alloc(MEMORY[0x277D79E20]) initWithPlatformColor:systemGrayColor];
  }

  else
  {
    v8 = 0;
  }

LABEL_24:

  return v8;
}

- (id)localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  localizedLabelsForLabelNumbers = [(WFFileLabelColorPickerParameter *)self localizedLabelsForLabelNumbers];
  number = [stateCopy number];

  v7 = [localizedLabelsForLabelNumbers objectForKeyedSubscript:number];

  return v7;
}

- (WFFileLabelColorPickerParameter)initWithDefinition:(id)definition
{
  v21[8] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = WFFileLabelColorPickerParameter;
  v3 = [(WFFileLabelColorPickerParameter *)&v19 initWithDefinition:definition];
  if (v3)
  {
    v4 = [&unk_28509CB18 if_map:&__block_literal_global_203];
    possibleStates = v3->_possibleStates;
    v3->_possibleStates = v4;

    v20[0] = &unk_28509AF88;
    v6 = WFLocalizedString(@"No Color");
    v21[0] = v6;
    v20[1] = &unk_28509AFA0;
    v7 = WFLocalizedString(@"Red");
    v21[1] = v7;
    v20[2] = &unk_28509AFB8;
    v8 = WFLocalizedString(@"Orange");
    v21[2] = v8;
    v20[3] = &unk_28509AFD0;
    v9 = WFLocalizedString(@"Yellow");
    v21[3] = v9;
    v20[4] = &unk_28509AFE8;
    v10 = WFLocalizedString(@"Green");
    v21[4] = v10;
    v20[5] = &unk_28509B000;
    v11 = WFLocalizedString(@"Blue");
    v21[5] = v11;
    v20[6] = &unk_28509B018;
    v12 = WFLocalizedString(@"Purple");
    v21[6] = v12;
    v20[7] = &unk_28509B030;
    v13 = WFLocalizedString(@"Gray");
    v21[7] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:8];
    localizedLabelsForLabelNumbers = v3->_localizedLabelsForLabelNumbers;
    v3->_localizedLabelsForLabelNumbers = v14;

    v16 = v3;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

id __54__WFFileLabelColorPickerParameter_initWithDefinition___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C6B0];
  v3 = a2;
  v4 = [[v2 alloc] initWithNumber:v3];

  return v4;
}

@end