id _ImageNamed(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D755B8] imageNamed:v2 inBundle:v3];

  return v4;
}

id sub_23BD89FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = _ImageNamed(a3);
  v4 = [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:v3];
  [v4 setForegroundAccentImage:v3];

  return v4;
}

id sub_23BD8A004(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBBB10];
  v4 = _ImageNamed(a3);
  v5 = [v3 providerWithFullColorImage:v4 monochromeFilterType:0];

  return v5;
}

void sub_23BD8A068(void *a1)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = [a1 metadata];
  v8 = [v2 dictionaryWithDictionary:v3];

  v4 = MEMORY[0x277D75348];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 colorNamed:@"Background" inBundle:v5 compatibleWithTraitCollection:0];
  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277CBB6E8]];

  v7 = [v8 copy];
  [a1 setMetadata:v7];
}