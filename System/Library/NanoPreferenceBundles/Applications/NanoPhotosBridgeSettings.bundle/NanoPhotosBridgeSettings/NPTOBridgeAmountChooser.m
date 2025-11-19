@interface NPTOBridgeAmountChooser
- (NPTOBridgeAmountChooser)init;
- (id)_device;
- (id)_preferencesAccessor;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)_syncedAmount;
- (void)_setSyncedAmount:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation NPTOBridgeAmountChooser

- (NPTOBridgeAmountChooser)init
{
  v6.receiver = self;
  v6.super_class = NPTOBridgeAmountChooser;
  v2 = [(NPTOBridgeAmountChooser *)&v6 initWithStyle:2];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"AMOUNT_SPECIFIER_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
    [(NPTOBridgeAmountChooser *)v2 setTitle:v4];
  }

  return v2;
}

- (unint64_t)_syncedAmount
{
  v2 = [(NPTOBridgeAmountChooser *)self _preferencesAccessor];
  v3 = [v2 npto_syncedPhotosLimit];

  return v3;
}

- (void)_setSyncedAmount:(unint64_t)a3
{
  v5 = [(NPTOBridgeAmountChooser *)self _preferencesAccessor];
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:NPTOPreferencesSyncedPhotosLimitKey];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"A"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"A"];
  }

  v8 = qword_7DA0[[v6 row]];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"AMOUNT_COUNT" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v11 = [NSString localizedStringWithFormat:v10, v8];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = +[UIColor whiteColor];
  v14 = [v7 textLabel];
  [v14 setColor:v13];

  v15 = +[PSListController appearance];
  v16 = [v15 cellHighlightColor];

  if (v16)
  {
    v17 = objc_alloc_init(UIView);
    [v17 setBackgroundColor:v16];
    [v7 setSelectedBackgroundView:v17];
  }

  v18 = BPSBridgeTintColor();
  [v7 setTintColor:v18];

  if ([(NPTOBridgeAmountChooser *)self _syncedAmount]== v8)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  [v7 setAccessoryType:v19];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_7DA0[[v7 row]];
  v9 = [v6 cellForRowAtIndexPath:v7];
  [v9 setAccessoryType:3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v6 visibleCells];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (v15 != v9)
        {
          [v15 setAccessoryType:0];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(NPTOBridgeAmountChooser *)self _setSyncedAmount:v8];
  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (id)_preferencesAccessor
{
  preferencesAccessor = self->_preferencesAccessor;
  if (!preferencesAccessor)
  {
    v4 = [NPTOPreferencesAccessor alloc];
    v5 = [(NPTOBridgeAmountChooser *)self _device];
    v6 = [v4 initWithDevice:v5];
    v7 = self->_preferencesAccessor;
    self->_preferencesAccessor = v6;

    preferencesAccessor = self->_preferencesAccessor;
  }

  return preferencesAccessor;
}

- (id)_device
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

@end