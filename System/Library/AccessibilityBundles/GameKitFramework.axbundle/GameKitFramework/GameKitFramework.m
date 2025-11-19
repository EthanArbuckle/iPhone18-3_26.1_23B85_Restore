id AXGameCenterUIFrameworkLocString(void *a1)
{
  v1 = a1;
  if (AXGameCenterUIFrameworkLocString_onceToken != -1)
  {
    AXGameCenterUIFrameworkLocString_cold_1();
  }

  if (AXGameCenterUIFrameworkLocString_bundle)
  {
    v2 = [AXGameCenterUIFrameworkLocString_bundle localizedStringForKey:v1 value:&stru_2A21AA318 table:@"GameCenterUIFrameworkAccessibility"];
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
  v4 = MEMORY[0x29C2D7480]();
  v1 = [v4 stringByAppendingPathComponent:@"GameCenterUIFramework.axbundle"];
  v2 = [v0 bundleWithPath:v1];
  v3 = AXGameCenterUIFrameworkLocString_bundle;
  AXGameCenterUIFrameworkLocString_bundle = v2;
}