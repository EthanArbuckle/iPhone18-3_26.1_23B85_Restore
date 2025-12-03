@interface _SFPerSitePreferenceDisplayInformation
+ (id)displayInformationForPerSitePreference:(id)preference;
+ (void)_buildMapIfNeeded;
- (id)_initWithLocalizedSiteSpecificSettingsTitle:(id)title localizedAllWebsiteSettingsTitle:(id)settingsTitle localizedClearAllSettingsPrompt:(id)prompt displayOption:(unint64_t)option;
@end

@implementation _SFPerSitePreferenceDisplayInformation

+ (id)displayInformationForPerSitePreference:(id)preference
{
  preferenceCopy = preference;
  [self _buildMapIfNeeded];
  v5 = preferenceToDisplayInformation;
  identifier = [preferenceCopy identifier];

  v7 = [v5 objectForKeyedSubscript:identifier];

  return v7;
}

+ (void)_buildMapIfNeeded
{
  if (!preferenceToDisplayInformation)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v3 = preferenceToDisplayInformation;
    preferenceToDisplayInformation = dictionary;

    v4 = [_SFPerSitePreferenceDisplayInformation alloc];
    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    v7 = [(_SFPerSitePreferenceDisplayInformation *)v4 _initWithLocalizedSiteSpecificSettingsTitle:v5 localizedAllWebsiteSettingsTitle:0 localizedClearAllSettingsPrompt:v6 displayOption:0];
    [preferenceToDisplayInformation setObject:v7 forKeyedSubscript:*MEMORY[0x1E69C9578]];

    v8 = [_SFPerSitePreferenceDisplayInformation alloc];
    v9 = _WBSLocalizedString();
    v10 = _WBSLocalizedString();
    v11 = [(_SFPerSitePreferenceDisplayInformation *)v8 _initWithLocalizedSiteSpecificSettingsTitle:v9 localizedAllWebsiteSettingsTitle:0 localizedClearAllSettingsPrompt:v10 displayOption:0];
    [preferenceToDisplayInformation setObject:v11 forKeyedSubscript:*MEMORY[0x1E69C9148]];

    v12 = [_SFPerSitePreferenceDisplayInformation alloc];
    v13 = _WBSLocalizedString();
    v14 = _WBSLocalizedString();
    v15 = _WBSLocalizedString();
    v16 = [(_SFPerSitePreferenceDisplayInformation *)v12 _initWithLocalizedSiteSpecificSettingsTitle:v13 localizedAllWebsiteSettingsTitle:v14 localizedClearAllSettingsPrompt:v15 displayOption:1];
    [preferenceToDisplayInformation setObject:v16 forKeyedSubscript:*MEMORY[0x1E69C9120]];

    v17 = [_SFPerSitePreferenceDisplayInformation alloc];
    v18 = _WBSLocalizedString();
    v19 = _WBSLocalizedString();
    v20 = _WBSLocalizedString();
    v21 = [(_SFPerSitePreferenceDisplayInformation *)v17 _initWithLocalizedSiteSpecificSettingsTitle:v18 localizedAllWebsiteSettingsTitle:v19 localizedClearAllSettingsPrompt:v20 displayOption:1];
    [preferenceToDisplayInformation setObject:v21 forKeyedSubscript:*MEMORY[0x1E69C93A8]];

    v22 = [_SFPerSitePreferenceDisplayInformation alloc];
    v23 = _WBSLocalizedString();
    v24 = _WBSLocalizedString();
    v25 = _WBSLocalizedString();
    v26 = [(_SFPerSitePreferenceDisplayInformation *)v22 _initWithLocalizedSiteSpecificSettingsTitle:v23 localizedAllWebsiteSettingsTitle:v24 localizedClearAllSettingsPrompt:v25 displayOption:1];
    [preferenceToDisplayInformation setObject:v26 forKeyedSubscript:*MEMORY[0x1E69C9320]];

    v27 = [_SFPerSitePreferenceDisplayInformation alloc];
    v28 = _WBSLocalizedString();
    v29 = _WBSLocalizedString();
    v30 = [(_SFPerSitePreferenceDisplayInformation *)v27 _initWithLocalizedSiteSpecificSettingsTitle:v28 localizedAllWebsiteSettingsTitle:0 localizedClearAllSettingsPrompt:v29 displayOption:0];
    [preferenceToDisplayInformation setObject:v30 forKeyedSubscript:*MEMORY[0x1E69C9588]];

    v31 = [_SFPerSitePreferenceDisplayInformation alloc];
    v32 = _WBSLocalizedString();
    v33 = _WBSLocalizedString();
    v34 = _WBSLocalizedString();
    v35 = [(_SFPerSitePreferenceDisplayInformation *)v31 _initWithLocalizedSiteSpecificSettingsTitle:v32 localizedAllWebsiteSettingsTitle:v33 localizedClearAllSettingsPrompt:v34 displayOption:1];
    [preferenceToDisplayInformation setObject:v35 forKeyedSubscript:*MEMORY[0x1E69C9720]];

    v36 = [_SFPerSitePreferenceDisplayInformation alloc];
    v37 = _WBSLocalizedString();
    v38 = _WBSLocalizedString();
    v39 = [(_SFPerSitePreferenceDisplayInformation *)v36 _initWithLocalizedSiteSpecificSettingsTitle:v37 localizedAllWebsiteSettingsTitle:0 localizedClearAllSettingsPrompt:v38 displayOption:0];
    [preferenceToDisplayInformation setObject:v39 forKeyedSubscript:*MEMORY[0x1E69C93A0]];

    v40 = [_SFPerSitePreferenceDisplayInformation alloc];
    v43 = _WBSLocalizedString();
    v41 = _WBSLocalizedString();
    v42 = [(_SFPerSitePreferenceDisplayInformation *)v40 _initWithLocalizedSiteSpecificSettingsTitle:v43 localizedAllWebsiteSettingsTitle:0 localizedClearAllSettingsPrompt:v41 displayOption:1];
    [preferenceToDisplayInformation setObject:v42 forKeyedSubscript:*MEMORY[0x1E69C9538]];
  }
}

- (id)_initWithLocalizedSiteSpecificSettingsTitle:(id)title localizedAllWebsiteSettingsTitle:(id)settingsTitle localizedClearAllSettingsPrompt:(id)prompt displayOption:(unint64_t)option
{
  titleCopy = title;
  settingsTitleCopy = settingsTitle;
  promptCopy = prompt;
  v22.receiver = self;
  v22.super_class = _SFPerSitePreferenceDisplayInformation;
  v13 = [(_SFPerSitePreferenceDisplayInformation *)&v22 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    localizedSiteSpecificSettingsTitle = v13->_localizedSiteSpecificSettingsTitle;
    v13->_localizedSiteSpecificSettingsTitle = v14;

    v16 = [settingsTitleCopy copy];
    localizedAllWebsiteSettingsTitle = v13->_localizedAllWebsiteSettingsTitle;
    v13->_localizedAllWebsiteSettingsTitle = v16;

    v18 = [promptCopy copy];
    localizedClearAllSettingsPrompt = v13->_localizedClearAllSettingsPrompt;
    v13->_localizedClearAllSettingsPrompt = v18;

    v13->_displayOption = option;
    v20 = v13;
  }

  return v13;
}

@end