id AXGameCenterLocString(void *a1)
{
  v1 = a1;
  if (AXGameCenterLocString_onceToken != -1)
  {
    AXGameCenterLocString_cold_1();
  }

  if (AXGameCenterLocString_bundle)
  {
    v2 = [AXGameCenterLocString_bundle localizedStringForKey:v1 value:&stru_2A21A3F18 table:@"GameCenter"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __AXGameCenterLocString_block_invoke()
{
  AXGameCenterLocString_bundle = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];

  return MEMORY[0x2A1C71028]();
}

id AXGameCenterUIFrameworkLocString(void *a1)
{
  v1 = a1;
  if (AXGameCenterUIFrameworkLocString_onceToken != -1)
  {
    AXGameCenterUIFrameworkLocString_cold_1();
  }

  if (AXGameCenterUIFrameworkLocString_bundle)
  {
    v2 = [AXGameCenterUIFrameworkLocString_bundle localizedStringForKey:v1 value:&stru_2A21A3F18 table:@"GameCenterUIFrameworkAccessibility"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __AXGameCenterUIFrameworkLocString_block_invoke()
{
  v0 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29C2D6BB0]();
  v1 = [v4 stringByAppendingPathComponent:@"GameCenterUIFramework.axbundle"];
  v2 = [v0 bundleWithPath:v1];
  v3 = AXGameCenterUIFrameworkLocString_bundle;
  AXGameCenterUIFrameworkLocString_bundle = v2;
}