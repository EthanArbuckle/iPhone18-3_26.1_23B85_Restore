@interface UIFont(ClockKitUtilities)
- (id)CLKFontByApplyingFeatureSettings:()ClockKitUtilities;
- (id)CLKFontWithAlternativePunctuation;
- (id)CLKFontWithLocalizedLowerCaseSmallCaps;
- (id)CLKFontWithLocalizedSmallCaps;
- (id)CLKFontWithLooplessThaiFallback;
- (id)CLKFontWithMonospacedNumbers;
- (id)CLKFontWithRareLigaturesAndStylisticSet:()ClockKitUtilities;
- (id)CLKFontWithStylisticSet:()ClockKitUtilities;
@end

@implementation UIFont(ClockKitUtilities)

- (id)CLKFontWithLocalizedSmallCaps
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (CLKSmallCapsAllowed())
  {
    v3 = *MEMORY[0x277D74388];
    v12[0] = *MEMORY[0x277D74398];
    v2 = v12[0];
    v12[1] = v3;
    v13[0] = &unk_284A34B60;
    v13[1] = &unk_284A34B78;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10[0] = v2;
    v10[1] = v3;
    v11[0] = &unk_284A34B90;
    v11[1] = &unk_284A34B78;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9[0] = v4;
    v9[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

    selfCopy = [self CLKFontByApplyingFeatureSettings:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)CLKFontWithLocalizedLowerCaseSmallCaps
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (CLKSmallCapsAllowed())
  {
    v2 = *MEMORY[0x277D74388];
    v8[0] = *MEMORY[0x277D74398];
    v8[1] = v2;
    v9[0] = &unk_284A34B90;
    v9[1] = &unk_284A34B78;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7 = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];

    selfCopy = [self CLKFontByApplyingFeatureSettings:v4];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)CLKFontWithMonospacedNumbers
{
  v2 = _MonospaceNumbersFeatureSettings();
  v3 = [self CLKFontByApplyingFeatureSettings:v2];

  return v3;
}

- (id)CLKFontWithAlternativePunctuation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D74388];
  v8[0] = *MEMORY[0x277D74398];
  v8[1] = v2;
  v9[0] = &unk_284A34BD8;
  v9[1] = &unk_284A34BC0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v7 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];

  v5 = [self CLKFontByApplyingFeatureSettings:v4];

  return v5;
}

- (id)CLKFontWithStylisticSet:()ClockKitUtilities
{
  v4 = _StylisticSet(a3);
  v5 = [self CLKFontByApplyingFeatureSettings:v4];

  return v5;
}

- (id)CLKFontWithRareLigaturesAndStylisticSet:()ClockKitUtilities
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D74388];
  v13[0] = *MEMORY[0x277D74398];
  v13[1] = v5;
  v14[0] = &unk_284A34B78;
  v14[1] = &unk_284A34BF0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];

  v8 = _StylisticSet(a3);
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  v10 = [self CLKFontByApplyingFeatureSettings:v9];

  return v10;
}

- (id)CLKFontWithLooplessThaiFallback
{
  v7[1] = *MEMORY[0x277D85DE8];
  fontDescriptor = [self fontDescriptor];
  v6 = *MEMORY[0x277CC48B0];
  v7[0] = &unk_284A34B30;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [fontDescriptor fontDescriptorByAddingAttributes:v2];

  v4 = [objc_opt_class() fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)CLKFontByApplyingFeatureSettings:()ClockKitUtilities
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  fontDescriptor = [self fontDescriptor];
  v10 = *MEMORY[0x277D74338];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [fontDescriptor fontDescriptorByAddingAttributes:v6];

  v8 = [objc_opt_class() fontWithDescriptor:v7 size:0.0];

  return v8;
}

@end