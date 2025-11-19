@interface _SFPerSitePreferencePopoverDisplayInformation
+ (id)popoverDisplayInformationForPerSitePreference:(id)a3;
+ (void)_buildMapIfNeeded;
- (id)_initWithDisplayOption:(unint64_t)a3 localizedDisplayName:(id)a4;
@end

@implementation _SFPerSitePreferencePopoverDisplayInformation

+ (id)popoverDisplayInformationForPerSitePreference:(id)a3
{
  v4 = a3;
  [a1 _buildMapIfNeeded];
  v5 = preferenceToDisplayInformation_0;
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

+ (void)_buildMapIfNeeded
{
  v30[8] = *MEMORY[0x1E69E9840];
  if (!preferenceToDisplayInformation_0)
  {
    v29[0] = *MEMORY[0x1E69C9578];
    v3 = [a1 alloc];
    v28 = _WBSLocalizedString();
    v27 = [v3 _initWithDisplayOption:0 localizedDisplayName:v28];
    v30[0] = v27;
    v29[1] = *MEMORY[0x1E69C9148];
    v4 = [a1 alloc];
    v26 = _WBSLocalizedString();
    v25 = [v4 _initWithDisplayOption:0 localizedDisplayName:v26];
    v30[1] = v25;
    v29[2] = *MEMORY[0x1E69C9120];
    v5 = [a1 alloc];
    v24 = _WBSLocalizedString();
    v23 = [v5 _initWithDisplayOption:1 localizedDisplayName:v24];
    v30[2] = v23;
    v29[3] = *MEMORY[0x1E69C93A8];
    v6 = [a1 alloc];
    v22 = _WBSLocalizedString();
    v7 = [v6 _initWithDisplayOption:1 localizedDisplayName:v22];
    v30[3] = v7;
    v29[4] = *MEMORY[0x1E69C9320];
    v8 = [a1 alloc];
    v9 = _WBSLocalizedString();
    v10 = [v8 _initWithDisplayOption:1 localizedDisplayName:v9];
    v30[4] = v10;
    v29[5] = *MEMORY[0x1E69C9588];
    v11 = [a1 alloc];
    v12 = _WBSLocalizedString();
    v13 = [v11 _initWithDisplayOption:0 localizedDisplayName:v12];
    v30[5] = v13;
    v29[6] = *MEMORY[0x1E69C93A0];
    v14 = [a1 alloc];
    v15 = _WBSLocalizedString();
    v16 = [v14 _initWithDisplayOption:0 localizedDisplayName:v15];
    v30[6] = v16;
    v29[7] = *MEMORY[0x1E69C9538];
    v17 = [a1 alloc];
    v18 = _WBSLocalizedString();
    v19 = [v17 _initWithDisplayOption:1 localizedDisplayName:v18];
    v30[7] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
    v21 = preferenceToDisplayInformation_0;
    preferenceToDisplayInformation_0 = v20;
  }
}

- (id)_initWithDisplayOption:(unint64_t)a3 localizedDisplayName:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = _SFPerSitePreferencePopoverDisplayInformation;
  v7 = [(_SFPerSitePreferencePopoverDisplayInformation *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_displayOption = a3;
    v9 = [v6 copy];
    localizedDisplayName = v8->_localizedDisplayName;
    v8->_localizedDisplayName = v9;

    v11 = v8;
  }

  return v8;
}

@end