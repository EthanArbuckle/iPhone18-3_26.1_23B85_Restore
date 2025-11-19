@interface AirPodChooserSettingsController
- (id)_deviceConnected:(id)a3;
- (id)specifiers;
@end

@implementation AirPodChooserSettingsController

- (id)specifiers
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v24 = *MEMORY[0x277D3FC48];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = MEMORY[0x277D3FAD8];
    v6 = [MEMORY[0x277CE7CF8] sharedInstance];
    v7 = [v6 disambiguationString];
    v8 = [v5 groupSpecifierWithName:v7];

    v23 = v8;
    [v4 addObject:v8];
    v9 = [(AirPodChooserSettingsController *)self specifier];
    v10 = [v9 propertyForKey:@"AirPods"];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = MEMORY[0x277D3FAD8];
          v17 = [v15 name];
          v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:sel__deviceConnected_ detail:objc_opt_class() cell:2 edit:0];

          v30 = v15;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          [v18 setProperty:v19 forKey:@"AirPods"];

          [v4 addObject:v18];
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    v20 = *(&self->super.super.super.super.super.super.isa + v24);
    *(&self->super.super.super.super.super.super.isa + v24) = v4;

    v3 = *(&self->super.super.super.super.super.super.isa + v24);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_deviceConnected:(id)a3
{
  v3 = [a3 propertyForKey:@"AirPods"];
  v4 = [v3 firstObject];

  if ([v4 connected])
  {
    v5 = AXAirPodsLocalizedStringForKey();
  }

  else
  {
    v5 = &stru_284E770C0;
  }

  return v5;
}

@end