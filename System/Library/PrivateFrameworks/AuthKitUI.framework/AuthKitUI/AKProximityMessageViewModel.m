@interface AKProximityMessageViewModel
- (AKProximityMessageViewModel)initWithType:(unint64_t)a3;
- (AKProximityMessageViewModel)initWithType:(unint64_t)a3 secondaryButtonTitle:(id)a4;
@end

@implementation AKProximityMessageViewModel

- (AKProximityMessageViewModel)initWithType:(unint64_t)a3
{
  v5 = 0;
  v5 = [(AKProximityMessageViewModel *)self initWithType:a3 secondaryButtonTitle:?];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  return v4;
}

- (AKProximityMessageViewModel)initWithType:(unint64_t)a3 secondaryButtonTitle:(id)a4
{
  v48 = self;
  v47 = a2;
  v46 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v48;
  v48 = 0;
  v44.receiver = v4;
  v44.super_class = AKProximityMessageViewModel;
  v39 = [(AKProximityMessageViewModel *)&v44 init];
  v48 = v39;
  objc_storeStrong(&v48, v39);
  if (v39)
  {
    v48->_type = v46;
    [(AKProximityMessageViewModel *)v48 setShowHeaderView:1];
    if (v46)
    {
      switch(v46)
      {
        case 1uLL:
          v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v9 = [v36 localizedStringForKey:@"PROXIMITY_AUTH_VISUAL_PAIRING_TITLE" value:? table:?];
          titleText = v48->_titleText;
          v48->_titleText = v9;
          MEMORY[0x277D82BD8](titleText);
          MEMORY[0x277D82BD8](v36);
          v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v37 localizedStringForKey:@"PROXIMITY_AUTH_VISUAL_PAIRING_DESCRIPTION" value:&stru_28358EF68 table:@"Localizable"];
          detailedText = v48->_detailedText;
          v48->_detailedText = v11;
          MEMORY[0x277D82BD8](detailedText);
          MEMORY[0x277D82BD8](v37);
          break;
        case 2uLL:
          v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v34 localizedStringForKey:@"PROXIMITY_AUTH_PIN_VIEW_TITLE" value:? table:?];
          v14 = v48->_titleText;
          v48->_titleText = v13;
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v34);
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v15 = [v35 localizedStringForKey:@"PROXIMITY_AUTH_PIN_VIEW_DESCRIPTION" value:&stru_28358EF68 table:@"Localizable"];
          v16 = v48->_detailedText;
          v48->_detailedText = v15;
          MEMORY[0x277D82BD8](v16);
          MEMORY[0x277D82BD8](v35);
          break;
        case 3uLL:
          v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v17 = [v33 localizedStringForKey:@"PROXIMITY_AUTH_BROADCAST_TITLE" value:&stru_28358EF68 table:@"Localizable"];
          v18 = v48->_titleText;
          v48->_titleText = v17;
          MEMORY[0x277D82BD8](v18);
          MEMORY[0x277D82BD8](v33);
          v19 = [MEMORY[0x277CF0218] deviceSpecificLocalizedStringWithKey:@"PROXIMITY_AUTH_SETUP_IN_PROGRESS_DESCRIPTION"];
          v20 = v48->_detailedText;
          v48->_detailedText = v19;
          MEMORY[0x277D82BD8](v20);
          break;
        case 4uLL:
          v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v21 = [v32 localizedStringForKey:@"PROXIMITY_AUTH_ERROR_TITLE" value:&stru_28358EF68 table:@"Localizable"];
          v22 = v48->_titleText;
          v48->_titleText = v21;
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](v32);
          v23 = [MEMORY[0x277CF0218] deviceSpecificLocalizedStringWithKey:@"PROXIMITY_AUTH_ERROR_DESCRIPTION"];
          v24 = v48->_detailedText;
          v48->_detailedText = v23;
          MEMORY[0x277D82BD8](v24);
          break;
        case 5uLL:
          v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v25 = [v31 localizedStringForKey:@"PROXIMITY_AUTH_CHILD_SETUP_TITLE" value:&stru_28358EF68 table:@"Localizable"];
          v26 = v48->_titleText;
          v48->_titleText = v25;
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v31);
          v27 = [MEMORY[0x277CF0218] deviceSpecificLocalizedStringWithKey:@"PROXIMITY_AUTH_CHILD_SETUP_DESCRIPTION"];
          v28 = v48->_detailedText;
          v48->_detailedText = v27;
          MEMORY[0x277D82BD8](v28);
          v42 = 0;
          v40 = 0;
          if (location)
          {
            objc_storeStrong(&v48->_secondaryButtonTitle, location);
          }

          else
          {
            v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v42 = 1;
            v41 = [v43 localizedStringForKey:@"PROXIMITY_AUTH_CHILD_SETUP_SETUP_WITHOUT_ANOTHER_DEVICE_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
            v40 = 1;
            objc_storeStrong(&v48->_secondaryButtonTitle, v41);
          }

          if (v40)
          {
            MEMORY[0x277D82BD8](v41);
          }

          if (v42)
          {
            MEMORY[0x277D82BD8](v43);
          }

          break;
      }
    }

    else
    {
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v38 localizedStringForKey:@"PROXIMITY_AUTH_BROADCAST_TITLE" value:&stru_28358EF68 table:@"Localizable"];
      v6 = v48->_titleText;
      v48->_titleText = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v38);
      v7 = [MEMORY[0x277CF0218] deviceSpecificLocalizedStringWithKey:@"PROXIMITY_AUTH_BROADCAST_DESCRIPTION"];
      v8 = v48->_detailedText;
      v48->_detailedText = v7;
      MEMORY[0x277D82BD8](v8);
    }
  }

  v30 = MEMORY[0x277D82BE0](v48);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v48, 0);
  return v30;
}

@end