id AXNTKFormattingManager()
{
  if (AXNTKFormattingManager_onceToken != -1)
  {
    AXNTKFormattingManager_cold_1();
  }

  v1 = AXNTKFormattingManager_FormattingManager;

  return v1;
}

void __AXNTKFormattingManager_block_invoke()
{
  v3 = [MEMORY[0x277CCD4D8] fiui_sharedHealthStoreForCarousel];
  v0 = [objc_alloc(MEMORY[0x277D0A808]) initWithHealthStore:v3];
  v1 = [objc_alloc(MEMORY[0x277D0A7E8]) initWithUnitManager:v0];
  v2 = AXNTKFormattingManager_FormattingManager;
  AXNTKFormattingManager_FormattingManager = v1;
}

uint64_t AXNTKUserIsWheelchairUserWithVoiceOverOn()
{
  if (_AXSVoiceOverTouchEnabled())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __AXNTKUserIsWheelchairUserWithVoiceOverOn_block_invoke_2;
    v4[3] = &unk_278BDC040;
    v5 = &__block_literal_global_296;
    v6 = &v7;
    if (AXNTKUserIsWheelchairUserWithVoiceOverOn_onceToken != -1)
    {
      dispatch_once(&AXNTKUserIsWheelchairUserWithVoiceOverOn_onceToken, v4);
    }

    if ((v8[3] & 1) == 0)
    {
      v0 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __AXNTKUserIsWheelchairUserWithVoiceOverOn_block_invoke_3;
      block[3] = &unk_278BDC068;
      v3 = &__block_literal_global_296;
      dispatch_async(v0, block);
    }

    _Block_object_dispose(&v7, 8);
  }

  return AXNTKUserIsWheelchairUserWithVoiceOverOn___isWheelchair;
}

void __AXNTKUserIsWheelchairUserWithVoiceOverOn_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v3 = 0;
  v1 = [v0 wheelchairUseWithError:&v3];
  v2 = v1;
  if (!v3)
  {
    AXNTKUserIsWheelchairUserWithVoiceOverOn___isWheelchair = [v1 wheelchairUse] == 2;
  }
}

uint64_t __AXNTKUserIsWheelchairUserWithVoiceOverOn_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

id AXNTKLocalizedStringForKeyInTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:v3 value:&stru_284FAA7A0 table:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id AXSolarPathValue(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:&unk_284FAA990];
  v5 = [v4 safeValueForKey:@"percentageThroughPeriodForWaypointDate"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v3 objectForKeyedSubscript:&unk_284FAA9A8];
  v9 = [v8 safeValueForKey:@"percentageThroughPeriodForWaypointDate"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v3 objectForKeyedSubscript:&unk_284FAA9C0];
  v13 = [v12 safeValueForKey:@"percentageThroughPeriodForWaypointDate"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v3 objectForKeyedSubscript:&unk_284FAA9D8];
  v17 = [v16 safeValueForKey:@"percentageThroughPeriodForWaypointDate"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v3 objectForKeyedSubscript:&unk_284FAA9F0];
  v21 = [v20 safeValueForKey:@"percentageThroughPeriodForWaypointDate"];
  [v21 doubleValue];
  v23 = v22;

  if (v7 + -0.05 > a2)
  {
    goto LABEL_2;
  }

  if (v7 + -0.25 <= a2 && v7 - a2 >= 0.005)
  {
    v27 = MEMORY[0x23EEE5F90](0, (v7 - a2) * 86400.0);
    v28 = MEMORY[0x277CCACA8];
    v29 = @"solar.minutes.until.dawn";
  }

  else
  {
    if (v7 + -0.005 < a2)
    {
      v25 = v11 + -0.005;
      if (v11 + -0.005 >= a2)
      {
        v26 = &unk_284FAA990;
LABEL_14:
        v27 = [v3 objectForKeyedSubscript:{v26, v25}];
        v24 = [v27 safeValueForKey:@"localizedName"];
        goto LABEL_15;
      }
    }

    v25 = 0.005;
    if (vabdd_f64(a2, v11) <= 0.005)
    {
      v26 = &unk_284FAA9A8;
      goto LABEL_14;
    }

    if (v11 + 0.05 <= a2)
    {
      if (v15 + -0.005 <= a2)
      {
        if (vabdd_f64(a2, v15) <= 0.005)
        {
          v26 = &unk_284FAA9C0;
          goto LABEL_14;
        }

        if (v15 + 0.05 <= a2)
        {
          if (v15 >= a2 || v19 - a2 <= 0.005)
          {
            if (vabdd_f64(a2, v19) <= 0.005)
            {
              v26 = &unk_284FAA9D8;
              goto LABEL_14;
            }

            if (v19 <= a2)
            {
              v25 = v23 + 0.005;
              if (v23 + 0.005 > a2)
              {
                v26 = &unk_284FAA9F0;
                goto LABEL_14;
              }
            }

            if (v23 + 0.05 <= a2)
            {
LABEL_2:
              v24 = AXNTKLocalizedStringForKey(@"solar.nighttime");
              goto LABEL_16;
            }

            v27 = MEMORY[0x23EEE5F90](0, vabdd_f64(v23, a2) * 86400.0);
            v28 = MEMORY[0x277CCACA8];
            v29 = @"solar.minutes.since.dusk";
          }

          else
          {
            v27 = MEMORY[0x23EEE5F90](0, (v19 - a2) * 86400.0);
            v28 = MEMORY[0x277CCACA8];
            v29 = @"solar.minutes.until.sunset";
          }
        }

        else
        {
          v27 = MEMORY[0x23EEE5F90](0, vabdd_f64(v15, a2) * 86400.0);
          v28 = MEMORY[0x277CCACA8];
          v29 = @"solar.minutes.since.noon";
        }
      }

      else
      {
        v27 = MEMORY[0x23EEE5F90](0, vabdd_f64(v15, a2) * 86400.0);
        v28 = MEMORY[0x277CCACA8];
        v29 = @"solar.minutes.until.noon";
      }
    }

    else
    {
      v27 = MEMORY[0x23EEE5F90](0, vabdd_f64(v11, a2) * 86400.0);
      v28 = MEMORY[0x277CCACA8];
      v29 = @"solar.minutes.since.sunrise";
    }
  }

  v30 = AXNTKLocalizedStringForKey(v29);
  v24 = [v28 stringWithFormat:v30, v27];

LABEL_15:
LABEL_16:

  return v24;
}

BOOL AXNTKComplicationTemplateContainsSimpleImage(void *a1)
{
  v1 = a1;
  NSSelectorFromString(&cfstr_Imageprovider.isa);
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 safeValueForKey:@"imageProvider"];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}