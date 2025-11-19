@interface HKMCComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (id)localizedAppName;
- (HKMCComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)_configureTemplate;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
@end

@implementation HKMCComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  if ([a4 isRunningGraceOrLater])
  {
    if (*MEMORY[0x277CBB668] == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = 0x1795u >> a3;
      if (a3 > 0xC)
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

+ (id)localizedAppName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APP_NAME" value:&stru_284E8B670 table:0];

  return v3;
}

- (HKMCComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HKMCComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v14 initWithComplication:a3 family:a4 forDevice:a5];
  v6 = v5;
  if (v5)
  {
    [(HKMCComplicationDataSource *)v5 _configureTemplate];
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = v6->_template;
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v11 = v9;
      _os_log_impl(&dword_23BD89000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing with template: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_configureTemplate
{
  v3 = [(CLKCComplicationDataSource *)self family];
  if (v3 == *MEMORY[0x277CBB668])
  {
    v4 = MEMORY[0x277CBB748];
    v5 = [MEMORY[0x277CBBB40] hkmc_imageProviderWithImageName:@"Circular"];
    v6 = [v4 templateWithImageProvider:v5];

    v7 = self->_template;
    self->_template = v6;
  }

  v8 = [(CLKCComplicationDataSource *)self family];
  if (v8 > 7)
  {
    if (v8 > 9)
    {
      if (v8 == 10)
      {
        v17 = MEMORY[0x277CBB850];
        v18 = MEMORY[0x277CBBB10];
        v19 = @"GraphicCircular";
      }

      else
      {
        if (v8 != 12)
        {
          goto LABEL_24;
        }

        v17 = MEMORY[0x277CBB938];
        v18 = MEMORY[0x277CBBB10];
        v19 = @"GraphicExtraLarge";
      }
    }

    else
    {
      if (v8 != 8)
      {
        v12 = MEMORY[0x277CBB850];
        v13 = [MEMORY[0x277CBBB10] hkmc_fullColorImageProviderWithImageName:@"GraphicCircular"];
        v14 = [v12 templateWithImageProvider:v13];

        [v14 hkmc_addBackgroundColorMetadata];
        v15 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v14];
        v16 = self->_template;
        self->_template = v15;

        goto LABEL_24;
      }

      v17 = MEMORY[0x277CBB8B8];
      v18 = MEMORY[0x277CBBB10];
      v19 = @"GraphicCorner";
    }

    v22 = [v18 hkmc_fullColorImageProviderWithImageName:v19];
    v21 = [v17 templateWithImageProvider:v22];

    [(CLKComplicationTemplate *)v21 hkmc_addBackgroundColorMetadata];
    goto LABEL_23;
  }

  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v9 = MEMORY[0x277CBBA50];
      v10 = MEMORY[0x277CBBB40];
      v11 = @"Circular";
      goto LABEL_20;
    }

    if (v8 == 7)
    {
      v9 = MEMORY[0x277CBB7F0];
      v10 = MEMORY[0x277CBBB40];
      v11 = @"ExtraLarge";
      goto LABEL_20;
    }
  }

  else
  {
    if (!v8)
    {
      v9 = MEMORY[0x277CBBA50];
      v10 = MEMORY[0x277CBBB40];
      v11 = @"Modular";
      goto LABEL_20;
    }

    if (v8 == 2)
    {
      v9 = MEMORY[0x277CBBAC0];
      v10 = MEMORY[0x277CBBB40];
      v11 = @"Utilitarian";
LABEL_20:
      v20 = [v10 hkmc_imageProviderWithImageName:v11];
      v21 = [v9 templateWithImageProvider:v20];

LABEL_23:
      v23 = self->_template;
      self->_template = v21;
    }
  }

LABEL_24:
  v24 = self->_template;
  v25 = [objc_opt_class() _tintColor];
  [(CLKComplicationTemplate *)v24 setTintColor:v25];
}

- (id)_currentTimelineEntry
{
  if (self->_template)
  {
    v3 = MEMORY[0x277CBBAC8];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 entryWithDate:v4 complicationTemplate:self->_template];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(HKMCComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (id)currentSwitcherTemplate
{
  v2 = [(HKMCComplicationDataSource *)self _currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v6 = MEMORY[0x277CBEBC0];
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v10 = [v7 stringWithFormat:@"NanoMenstrualCycles://"];
  v9 = [v6 URLWithString:v10];
  (*(a5 + 2))(v8, v9);
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5
{
  v5 = MEMORY[0x277CBBBD0];
  v6 = a5;
  v7 = [v5 alloc];
  v8 = [v7 initWithExtensionBundleIdentifier:*MEMORY[0x277D118B8] containerBundleIdentifier:*MEMORY[0x277D118B0] kind:*MEMORY[0x277D118C0] intent:0];
  v6[2](v6, v8);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a4;
  v6 = [[v4 alloc] initWithUUIDString:@"4A864DD3-D518-4FB7-9583-38E6B0581585"];
  v7 = [v5 supportsCapability:v6];

  return v7;
}

@end