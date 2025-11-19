id AXWallpaperLabel(void *a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = v1;
  if (AXWallpaperLabel_onceToken != -1)
  {
    AXWallpaperLabel_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  if (!v1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v3 = [v2 stringByReplacingOccurrencesOfString:@"@2x" withString:&stru_2A23B0DB8];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"@3x" withString:&stru_2A23B0DB8];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"~ipad" withString:&stru_2A23B0DB8];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"~ipod" withString:&stru_2A23B0DB8];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"~iphone" withString:&stru_2A23B0DB8];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"-568h" withString:&stru_2A23B0DB8];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"-163r" withString:&stru_2A23B0DB8];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"-414w-736h" withString:&stru_2A23B0DB8];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"-375w-667h" withString:&stru_2A23B0DB8];

  v12 = [v11 stringByReplacingOccurrencesOfString:@".png" withString:&stru_2A23B0DB8];

  v13 = [v12 stringByReplacingOccurrencesOfString:@".jpg" withString:&stru_2A23B0DB8];

  v14 = [v13 stringByReplacingOccurrencesOfString:@"-\\d{3 withString:4}w-\\d{3 options:4}h" range:{&stru_2A23B0DB8, 1024, 0, objc_msgSend(v13, "length")}];

  v15 = [v14 stringByReplacingOccurrencesOfString:@"-marble" withString:&stru_2A23B0DB8];

  v16 = [v15 stringByReplacingOccurrencesOfString:@"-granite" withString:&stru_2A23B0DB8];

  v17 = [v16 stringByReplacingOccurrencesOfString:@"_iPad" withString:&stru_2A23B0DB8];

  v18 = [v17 stringByReplacingOccurrencesOfString:@"\\d{1 withString:4}\\." options:&stru_2A23B0DB8 range:{1024, 0, objc_msgSend(v17, "length")}];

  v19 = AXLogAppAccessibility();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = v18;
    _os_log_impl(&dword_29C77E000, v19, OS_LOG_TYPE_INFO, "filename: %@", &v26, 0xCu);
  }

  v20 = [AXWallpaperLabel_ImageMapping objectForKey:v18];
  if (!v20)
  {
    v20 = v18;
  }

  v21 = accessibilityLocalizedString(v20);
  if ([v21 length])
  {
    v22 = v21;
  }

  else
  {
    v22 = v18;
  }

  v23 = v22;

LABEL_13:
  v24 = *MEMORY[0x29EDCA608];

  return v23;
}

uint64_t __AXWallpaperLabel_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x29EDB8DC0]);
  if (AXDeviceIsPad())
  {
    v1 = @"DarkBlueToLightGreenGradient";
  }

  else
  {
    v1 = @"GeodesicHexagons";
  }

  AXWallpaperLabel_ImageMapping = [v0 initWithObjectsAndKeys:{@"100", @"ColoredWave", @"100.CB_Wave", @"NebulaStars", @"101", @"EarthHorizon", @"102", @"NorthernLights", @"103", @"SnowyMountains", @"104", @"WinterLake", @"105", @"CloseUpWater", @"106", @"SunsetHillsVista", @"107", @"BlackAndWhiteLakeAndHills", @"108", @"GoldenGrassHills", @"109", @"OceanWaterOnBeach", @"110", @"CrashingWave", @"111", @"FrothyWave", @"112", @"WaterLilly", @"113", @"GoldenPoppyFlowers", @"114", @"FlowerBallsOnLongStalks", @"115", @"CloseUpGrass", @"116", @"CloseUpDewDrops", @"117", @"CloseUpBladeGrass", @"118", @"LightYellowToGreenishGradient", @"120", @"LightToDarkBlueGradient", @"121", v1, @"122", @"WoodCirclesInShingleFashion", @"123", @"FlecksOfColors", @"124", @"OverlappingSquares", @"125", @"ColoredOverlappingPatterns1", @"126", @"ColoredOverlappingPatterns2", @"127", @"GeodesicHexagons", @"128", @"RedDots", @"200", @"BrightYellowDots", @"201"}];

  return MEMORY[0x2A1C71028]();
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A23B0DB8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29C780454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}