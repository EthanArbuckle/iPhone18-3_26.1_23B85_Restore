id AXSDSoundDetectionBundle()
{
  if (AXSDSoundDetectionBundle_onceToken != -1)
  {
    AXSDSoundDetectionBundle_cold_1();
  }

  v1 = AXSDSoundDetectionBundle_AXBundle;

  return v1;
}

uint64_t __AXSDSoundDetectionBundle_block_invoke()
{
  AXSDSoundDetectionBundle_AXBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void _AXSDSoundDetectionGatherFilesAndGenerateRadarForNotificationAt(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEAA8] now];
  [v5 timeIntervalSinceDate:v3];

  v8 = v3;
  v9 = v4;
  v6 = v4;
  v7 = v3;
  AXPerformBlockOnMainThreadAfterDelay();
}

void AXSDSoundDetectionHandleNotificationsForResponse(void *a1)
{
  v1 = a1;
  v2 = [v1 actionIdentifier];
  v3 = [v1 notification];
  v4 = [v3 request];
  v5 = [v4 content];
  v6 = [v5 userInfo];

  v7 = [v6 objectForKey:@"SDNotificationDetectorKey"];
  if ([v2 isEqualToString:@"com.apple.SoundDetectionNotification.action.radar"])
  {
    v8 = [v1 notification];
    v9 = [v8 date];
    _AXSDSoundDetectionGatherFilesAndGenerateRadarForNotificationAt(v9, v7);
LABEL_13:

    goto LABEL_14;
  }

  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    AXSDSoundDetectionHandleNotificationsForResponse_cold_1(v7, v2, v10);
  }

  if ([v2 isEqualToString:@"com.apple.SoundDetectionNotification.action.snooze.short"])
  {
    v11 = 300.0;
  }

  else if ([v2 isEqualToString:@"com.apple.SoundDetectionNotification.action.snooze.medium"])
  {
    v11 = 1800.0;
  }

  else
  {
    if (![v2 isEqualToString:@"com.apple.SoundDetectionNotification.action.snooze.long"])
    {
      goto LABEL_14;
    }

    v11 = 7200.0;
  }

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v11];
  if (v12)
  {
    v8 = v12;
    v9 = +[AXSDSettings sharedInstance];
    [v9 addSnoozeDateToSnoozeDictionary:v8 forKey:v7];
    goto LABEL_13;
  }

LABEL_14:
}

__CFString *AXSDSoundDetectionTypeForIdentifier(void *a1)
{
  v1 = a1;
  v2 = AXSDSoundDetectionTypeNone;
  v3 = &AXSDSoundDetectionTypeDistressedBaby;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeDistressedBaby])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"baby_distressed"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"baby"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeApplianceBeeps;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeApplianceBeeps])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"beep"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeApplianceBuzzes;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeApplianceBuzzes])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"buzzer"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"buzz"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeCarHorns;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeCarHorns])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"car_horn"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"horn"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeCatMeows;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeCatMeows])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"cat_meow"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"cat"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeApplianceBellDings;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeApplianceBellDings])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"ding_bell"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"bell"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeDogBarks;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeDogBarks])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"dog_bark"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"dog"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeDoorbells;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeDoorbells])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"door_bell"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"doorbell"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeDoorKnocks;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeDoorKnocks])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"door_knock"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeFireAlarms;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeFireAlarms])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"fire_alarm"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"fire-alarm"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypePersonShouting;
  if ([v1 isEqualToString:AXSDSoundDetectionTypePersonShouting])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"shout"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeSirenAlarms;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeSirenAlarms])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"siren_alarm"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"siren"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeSmokeAlarms;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeSmokeAlarms])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"smoke_alarm"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"smoke-alarm"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeWaterRunning;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeWaterRunning])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"water_running"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"water"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeCough;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeCough])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"cough"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeGlassBreaking;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeGlassBreaking])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"glass_breaking"])
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:@"glass"])
  {
    goto LABEL_50;
  }

  v3 = &AXSDSoundDetectionTypeKettle;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeKettle] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"kettle"))
  {
    goto LABEL_50;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionKShotTypeHallucinator] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", AXSDSoundDetectionKShotTypeModelWeights))
  {
    v3 = &AXSDSoundDetectionTypeKShot;
LABEL_50:
    v4 = *v3;

    v2 = v4;
    goto LABEL_51;
  }

  v3 = &AXSDSoundDetectionTypeKShot;
  if (([v1 isEqualToString:AXSDSoundDetectionKShotTypeGeneralAppliance] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", AXSDSoundDetectionTypeKShot))
  {
    goto LABEL_50;
  }

LABEL_51:
  if (v2 == AXSDSoundDetectionTypeNone)
  {
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      AXSDSoundDetectionTypeForIdentifier_cold_1();
    }
  }

  return v2;
}

id AXSDSoundDetectionCategories()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = AXSDDetectorCategoryAlarm;
  v3[1] = AXSDDetectorCategoryAnimal;
  v3[2] = AXSDDetectorCategoryHousehold;
  v3[3] = AXSDDetectorCategoryPeople;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id AXSDSoundDetectionTypesForCategory(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (AXSDDetectorCategoryAlarm == v1)
  {
    v24 = AXSDSoundDetectionTypeFireAlarms;
    v25 = AXSDSoundDetectionTypeSirenAlarms;
    v26 = AXSDSoundDetectionTypeSmokeAlarms;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v24;
LABEL_9:
    v7 = 3;
LABEL_12:
    v4 = [v5 arrayWithObjects:v6 count:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27}];
    goto LABEL_13;
  }

  if (AXSDDetectorCategoryAnimal == v1)
  {
    v22 = AXSDSoundDetectionTypeCatMeows;
    v23 = AXSDSoundDetectionTypeDogBarks;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v22;
    v7 = 2;
    goto LABEL_12;
  }

  if (AXSDDetectorCategoryHousehold == v1)
  {
    v13 = AXSDSoundDetectionTypeApplianceBeeps;
    v14 = AXSDSoundDetectionTypeApplianceBuzzes;
    v15 = AXSDSoundDetectionTypeApplianceBellDings;
    v16 = AXSDSoundDetectionTypeCarHorns;
    v17 = AXSDSoundDetectionTypeDoorbells;
    v18 = AXSDSoundDetectionTypeDoorKnocks;
    v19 = AXSDSoundDetectionTypeWaterRunning;
    v20 = AXSDSoundDetectionTypeGlassBreaking;
    v21 = AXSDSoundDetectionTypeKettle;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v13;
    v7 = 9;
    goto LABEL_12;
  }

  if (AXSDDetectorCategoryPeople == v1)
  {
    v10 = AXSDSoundDetectionTypeDistressedBaby;
    v11 = AXSDSoundDetectionTypePersonShouting;
    v12 = AXSDSoundDetectionTypeCough;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v10;
    goto LABEL_9;
  }

  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    AXSDSoundDetectionTypesForCategory_cold_1(v2, v3);
  }

  v4 = MEMORY[0x277CBEBF8];
LABEL_13:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t AXSDSoundDetectionTypeIsAppliance(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeApplianceBeeps] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", AXSDSoundDetectionTypeApplianceBuzzes))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:AXSDSoundDetectionTypeApplianceBellDings];
  }

  return v2;
}

uint64_t AXSDIsConnectedToCarPlay()
{
  v0 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v1 = [v0 attributeForKey:*MEMORY[0x277D26B60]];
  v2 = [v1 BOOLValue];

  return v2;
}

id AXSDSoundDetectionLocalizedStringForType(void *a1, uint64_t a2)
{
  v3 = a1;
  if (([v3 isEqualToString:AXSDSoundDetectionTypeKShot] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXSDSoundDetectionKShotTypeHallucinator) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXSDSoundDetectionKShotTypeModelWeights) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", AXSDSoundDetectionKShotTypeGeneralAppliance))
  {
    v4 = v3;
    goto LABEL_6;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDistressedBaby])
  {
    v6 = @"BodyBaby";
    v7 = @"TitleBaby";
LABEL_11:
    if (!a2)
    {
      v6 = v7;
    }

    v8 = v6;
    goto LABEL_14;
  }

  if (AXSDSoundDetectionTypeIsAppliance(v3))
  {
    if (a2)
    {
      if ([v3 isEqualToString:AXSDSoundDetectionTypeApplianceBeeps])
      {
        v8 = @"BodyApplianceBeep";
      }

      else if ([v3 isEqualToString:AXSDSoundDetectionTypeApplianceBellDings])
      {
        v8 = @"BodyApplianceBell";
      }

      else
      {
        v8 = @"BodyApplianceBuzz";
      }
    }

    else
    {
      v8 = @"TitleAppliance";
    }

    goto LABEL_14;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeCarHorns])
  {
    v6 = @"BodyCarHorn";
    v7 = @"TitleCarHorn";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeCatMeows])
  {
    v6 = @"BodyCat";
    v7 = @"TitleCat";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDogBarks])
  {
    v6 = @"BodyDog";
    v7 = @"TitleDog";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDoorbells])
  {
    v6 = @"BodyDoorbell";
    v7 = @"TitleDoorbell";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDoorKnocks])
  {
    v6 = @"BodyDoorKnock";
    v7 = @"TitleDoorKnock";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeFireAlarms])
  {
    v6 = @"BodyFireAlarm";
    v7 = @"TitleFireAlarm";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeSirenAlarms])
  {
    v6 = @"BodySiren";
    v7 = @"TitleSiren";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeSmokeAlarms])
  {
    v6 = @"BodySmokeAlarm";
    v7 = @"TitleSmokeAlarm";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypePersonShouting])
  {
    v6 = @"BodyShout";
    v7 = @"TitleShout";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeWaterRunning])
  {
    v6 = @"BodyWaterRunning";
    v7 = @"TitleWaterRunning";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeCough])
  {
    v6 = @"BodyCough";
    v7 = @"TitleCough";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeGlassBreaking])
  {
    v6 = @"BodyGlassBreaking";
    v7 = @"TitleGlassBreaking";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeKettle])
  {
    v6 = @"BodyKettle";
    v7 = @"TitleKettle";
    goto LABEL_11;
  }

  v15 = AXLogUltron();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    AXSDSoundDetectionLocalizedStringForType_cold_1();
  }

  v8 = 0;
LABEL_14:
  v9 = AXSDSoundDetectionBundle();
  v4 = [v9 localizedStringForKey:v8 value:v8 table:@"SoundDetectionSupport"];

  if (a2)
  {
    v10 = AXSDSoundDetectionBundle();
    v11 = v10;
    v12 = @"DetectionBody";
LABEL_22:
    v13 = [v10 localizedStringForKey:v12 value:v12 table:@"SoundDetectionSupport"];

    v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v4];

    v4 = v14;
    goto LABEL_23;
  }

  if (AXSDIsConnectedToCarPlay())
  {
    v10 = AXSDSoundDetectionBundle();
    v11 = v10;
    v12 = @"DetectionMaybe";
    goto LABEL_22;
  }

LABEL_23:

LABEL_6:

  return v4;
}

id AXSDSoundDetectionLocalizedStringForCategory(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:AXSDDetectorCategoryAlarm])
  {
    v2 = @"CATEGORY_ALARM";
  }

  else if ([v1 isEqualToString:AXSDDetectorCategoryAnimal])
  {
    v2 = @"CATEGORY_ANIMAL";
  }

  else if ([v1 isEqualToString:AXSDDetectorCategoryHousehold])
  {
    v2 = @"CATEGORY_HOUSEHOLD";
  }

  else if ([v1 isEqualToString:AXSDDetectorCategoryPeople])
  {
    v2 = @"CATEGORY_PEOPLE";
  }

  else if ([v1 isEqualToString:AXSDDetectorCategoryNone])
  {
    v2 = &stru_284FABDD0;
  }

  else
  {
    v2 = 0;
  }

  v3 = AXSDSoundDetectionBundle();
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"SoundDetectionSupport"];

  return v4;
}

id bmTypeForSoundDetectionType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:AXSDSoundDetectionTypeDistressedBaby])
  {
    v2 = MEMORY[0x277CF18B0];
LABEL_35:
    v3 = *v2;
    goto LABEL_36;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeApplianceBeeps])
  {
    v2 = MEMORY[0x277CF1880];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeApplianceBuzzes])
  {
    v2 = MEMORY[0x277CF1890];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeApplianceBellDings])
  {
    v2 = MEMORY[0x277CF1888];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeCarHorns])
  {
    v2 = MEMORY[0x277CF1898];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeCatMeows])
  {
    v2 = MEMORY[0x277CF18A0];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeDogBarks])
  {
    v2 = MEMORY[0x277CF18B8];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeDoorbells])
  {
    v2 = MEMORY[0x277CF18C8];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeDoorKnocks])
  {
    v2 = MEMORY[0x277CF18C0];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeFireAlarms])
  {
    v2 = MEMORY[0x277CF18D0];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeSirenAlarms])
  {
    v2 = MEMORY[0x277CF18F0];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypePersonShouting])
  {
    v2 = MEMORY[0x277CF18F8];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeDistressedBaby])
  {
    v2 = MEMORY[0x277CF18E8];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeWaterRunning])
  {
    v2 = MEMORY[0x277CF1900];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeCough])
  {
    v2 = MEMORY[0x277CF18A8];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeGlassBreaking])
  {
    v2 = MEMORY[0x277CF18D8];
    goto LABEL_35;
  }

  if ([v1 isEqualToString:AXSDSoundDetectionTypeKettle])
  {
    v2 = MEMORY[0x277CF18E0];
    goto LABEL_35;
  }

  v3 = 0;
LABEL_36:

  return v3;
}

uint64_t AXIsSoundDetectionMedinaSupportEnabled()
{
  v0 = +[AXSDSettings sharedInstance];
  v1 = [v0 forceMedinaSupport];

  if (v1)
  {
    return 1;
  }

  return MEMORY[0x282138E00]();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void AXSDSoundDetectionHandleNotificationsForResponse_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_23D624000, log, OS_LOG_TYPE_DEBUG, "Snoozing %@ for duration: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void AXSDSoundDetectionTypeForIdentifier_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D624000, v1, v2, "Attempted to get AXSDSoundDetectionType for invalid identifier: %@. Stacktrace: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void AXSDSoundDetectionTypesForCategory_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_23D624000, a2, OS_LOG_TYPE_DEBUG, "No AXSDSoundDetectionTypes found for detector category: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void AXSDSoundDetectionLocalizedStringForType_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D624000, v1, v2, "Notification requested for invalid detection type: %@. Stacktrace: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}