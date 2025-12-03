@interface APUIActionCardUtils
+ (BOOL)updateCardView:(id)view forINIntent:(id)intent withConfig:(id)config;
+ (BOOL)updateCardView:(id)view forINInteraction:(id)interaction withConfig:(id)config;
+ (BOOL)updateCardView:(id)view forNSUserActivity:(id)activity withConfig:(id)config;
+ (BOOL)updateCardView:(id)view forUAUserActivityProxy:(id)proxy withConfig:(id)config;
+ (id)_generateCardSectionWithInfo:(id)info config:(id)config;
+ (id)_subtitleForAction:(id)action default:(id)default;
+ (id)cardForCardSection:(id)section;
+ (id)cardSectionForATXAction:(id)action withConfig:(id)config;
+ (id)cardSectionForHeroApp:(id)app withConfig:(id)config;
+ (id)cardSectionForINIntent:(id)intent withConfig:(id)config;
+ (id)cardSectionForINInteraction:(id)interaction withConfig:(id)config;
+ (id)cardSectionForNSString:(id)string withConfig:(id)config;
+ (id)cardSectionForNSUserActivity:(id)activity withConfig:(id)config;
+ (id)cardSectionForUAUserActivityProxy:(id)proxy withConfig:(id)config;
+ (id)cardSectionForVoiceShortcutWithPhrase:(id)phrase name:(id)name description:(id)description keyImage:(id)image applicationBundleIdentifier:(id)identifier config:(id)config;
+ (id)cardViewForATXAction:(id)action withConfig:(id)config;
+ (id)cardViewForHeroApp:(id)app withConfig:(id)config;
+ (id)cardViewForINIntent:(id)intent withConfig:(id)config;
+ (id)cardViewForINInteraction:(id)interaction withConfig:(id)config;
+ (id)cardViewForNSUserActivity:(id)activity withConfig:(id)config;
+ (id)cardViewForUAUserActivityProxy:(id)proxy withConfig:(id)config;
+ (id)cardViewForVoiceShortcutWithPhrase:(id)phrase name:(id)name description:(id)description keyImage:(id)image applicationBundleIdentifier:(id)identifier config:(id)config;
+ (id)cardViewReuseIdentifier;
+ (void)_configureCardInfo:(id)info forATXAction:(id)action withConfig:(id)config;
+ (void)_configureCardInfo:(id)info forHeroApp:(id)app withConfig:(id)config;
+ (void)_configureCardInfo:(id)info forINIntent:(id)intent withConfig:(id)config;
+ (void)_configureCardInfo:(id)info forINInteraction:(id)interaction withConfig:(id)config;
+ (void)_configureCardInfo:(id)info forNSString:(id)string withConfig:(id)config;
+ (void)_configureCardInfo:(id)info forNSUserActivity:(id)activity withConfig:(id)config;
+ (void)_configureCardInfo:(id)info forUAUserActivityProxy:(id)proxy withConfig:(id)config;
+ (void)_configureCardInfo:(id)info forVoiceShortcutWithPhrase:(id)phrase name:(id)name description:(id)description keyImage:(id)image applicationBundleIdentifier:(id)identifier config:(id)config;
@end

@implementation APUIActionCardUtils

+ (id)cardSectionForATXAction:(id)action withConfig:(id)config
{
  configCopy = config;
  actionCopy = action;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [self _configureCardInfo:v8 forATXAction:actionCopy withConfig:configCopy];

  v9 = [self _generateCardSectionWithInfo:v8 config:configCopy];

  return v9;
}

+ (id)cardSectionForNSUserActivity:(id)activity withConfig:(id)config
{
  configCopy = config;
  activityCopy = activity;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [self _configureCardInfo:v8 forNSUserActivity:activityCopy withConfig:configCopy];

  v9 = [self _generateCardSectionWithInfo:v8 config:configCopy];

  return v9;
}

+ (id)cardSectionForUAUserActivityProxy:(id)proxy withConfig:(id)config
{
  configCopy = config;
  proxyCopy = proxy;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [self _configureCardInfo:v8 forUAUserActivityProxy:proxyCopy withConfig:configCopy];

  v9 = [self _generateCardSectionWithInfo:v8 config:configCopy];

  return v9;
}

+ (id)cardSectionForNSString:(id)string withConfig:(id)config
{
  configCopy = config;
  stringCopy = string;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [self _configureCardInfo:v8 forNSString:stringCopy withConfig:configCopy];

  v9 = [self _generateCardSectionWithInfo:v8 config:configCopy];

  return v9;
}

+ (id)cardSectionForINInteraction:(id)interaction withConfig:(id)config
{
  interactionCopy = interaction;
  configCopy = config;
  intentResponse = [interactionCopy intentResponse];
  if (intentResponse)
  {
    v9 = intentResponse;
    fallbackToCustomResponseString = [configCopy fallbackToCustomResponseString];

    if (fallbackToCustomResponseString)
    {
      intentResponse2 = [interactionCopy intentResponse];
      v12 = objc_opt_new();
      v13 = [intentResponse2 _renderedResponseWithLocalizer:v12 requiresSiriCompatibility:0];

      if ([(_APUIActionCardInfo *)v13 length])
      {
        v14 = objc_alloc_init(_APUIActionCardInfo);
        [self _configureCardInfo:v14 forNSString:v13 withConfig:configCopy];
        v15 = [self _generateCardSectionWithInfo:v14 config:configCopy];

        goto LABEL_7;
      }
    }
  }

  v13 = objc_alloc_init(_APUIActionCardInfo);
  intent = [interactionCopy intent];
  [self _configureCardInfo:v13 forINIntent:intent withConfig:configCopy];

  v15 = [self _generateCardSectionWithInfo:v13 config:configCopy];
LABEL_7:

  return v15;
}

+ (id)cardSectionForINIntent:(id)intent withConfig:(id)config
{
  configCopy = config;
  intentCopy = intent;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [self _configureCardInfo:v8 forINIntent:intentCopy withConfig:configCopy];

  v9 = [self _generateCardSectionWithInfo:v8 config:configCopy];

  return v9;
}

+ (id)cardSectionForVoiceShortcutWithPhrase:(id)phrase name:(id)name description:(id)description keyImage:(id)image applicationBundleIdentifier:(id)identifier config:(id)config
{
  configCopy = config;
  identifierCopy = identifier;
  imageCopy = image;
  descriptionCopy = description;
  nameCopy = name;
  phraseCopy = phrase;
  v20 = objc_alloc_init(_APUIActionCardInfo);
  [self _configureCardInfo:v20 forVoiceShortcutWithPhrase:phraseCopy name:nameCopy description:descriptionCopy keyImage:imageCopy applicationBundleIdentifier:identifierCopy config:configCopy];

  v21 = [self _generateCardSectionWithInfo:v20 config:configCopy];

  return v21;
}

+ (id)cardSectionForHeroApp:(id)app withConfig:(id)config
{
  configCopy = config;
  appCopy = app;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [self _configureCardInfo:v8 forHeroApp:appCopy withConfig:configCopy];

  v9 = [self _generateCardSectionWithInfo:v8 config:configCopy];

  return v9;
}

+ (id)cardForCardSection:(id)section
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4C230];
  sectionCopy = section;
  v5 = objc_alloc_init(v3);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v5 setCardId:uUIDString];

  v11[0] = sectionCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [v5 setCardSections:v8];
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)cardViewForATXAction:(id)action withConfig:(id)config
{
  actionCopy = action;
  configCopy = config;
  if ([actionCopy actionType] == 1)
  {
    userActivity = [actionCopy userActivity];
    v9 = [self cardViewForNSUserActivity:userActivity withConfig:configCopy];
  }

  else
  {
    if ([actionCopy actionType] == 5)
    {
      userActivity = [actionCopy userActivityProxy];
      [self cardViewForUAUserActivityProxy:userActivity withConfig:configCopy];
    }

    else
    {
      userActivity = [actionCopy intent];
      [self cardViewForINIntent:userActivity withConfig:configCopy];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

+ (id)cardViewForNSUserActivity:(id)activity withConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [self cardSectionForNSUserActivity:activity withConfig:config];
  v5 = MEMORY[0x277D4C818];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v5 viewsForCardSections:v6 feedbackListener:0];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)cardViewForUAUserActivityProxy:(id)proxy withConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [self cardSectionForUAUserActivityProxy:proxy withConfig:config];
  v5 = MEMORY[0x277D4C818];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v5 viewsForCardSections:v6 feedbackListener:0];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)cardViewForINInteraction:(id)interaction withConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [self cardSectionForINInteraction:interaction withConfig:config];
  v5 = MEMORY[0x277D4C818];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v5 viewsForCardSections:v6 feedbackListener:0];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)cardViewForINIntent:(id)intent withConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [self cardSectionForINIntent:intent withConfig:config];
  v5 = MEMORY[0x277D4C818];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v5 viewsForCardSections:v6 feedbackListener:0];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)cardViewForVoiceShortcutWithPhrase:(id)phrase name:(id)name description:(id)description keyImage:(id)image applicationBundleIdentifier:(id)identifier config:(id)config
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = [self cardSectionForVoiceShortcutWithPhrase:phrase name:name description:description keyImage:image applicationBundleIdentifier:identifier config:config];
  v9 = MEMORY[0x277D4C818];
  v15[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v11 = [v9 viewsForCardSections:v10 feedbackListener:0];

  if ([v11 count])
  {
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)cardViewForHeroApp:(id)app withConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [self cardSectionForHeroApp:app withConfig:config];
  v5 = MEMORY[0x277D4C818];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v5 viewsForCardSections:v6 feedbackListener:0];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)updateCardView:(id)view forINIntent:(id)intent withConfig:(id)config
{
  viewCopy = view;
  v9 = [self cardSectionForINIntent:intent withConfig:config];
  LOBYTE(intent) = [MEMORY[0x277D4C818] updateCardSectionView:viewCopy withCardSection:v9];

  return intent;
}

+ (BOOL)updateCardView:(id)view forINInteraction:(id)interaction withConfig:(id)config
{
  viewCopy = view;
  v9 = [self cardSectionForINInteraction:interaction withConfig:config];
  LOBYTE(interaction) = [MEMORY[0x277D4C818] updateCardSectionView:viewCopy withCardSection:v9];

  return interaction;
}

+ (BOOL)updateCardView:(id)view forNSUserActivity:(id)activity withConfig:(id)config
{
  viewCopy = view;
  v9 = [self cardSectionForNSUserActivity:activity withConfig:config];
  LOBYTE(activity) = [MEMORY[0x277D4C818] updateCardSectionView:viewCopy withCardSection:v9];

  return activity;
}

+ (BOOL)updateCardView:(id)view forUAUserActivityProxy:(id)proxy withConfig:(id)config
{
  viewCopy = view;
  v9 = [self cardSectionForUAUserActivityProxy:proxy withConfig:config];
  LOBYTE(proxy) = [MEMORY[0x277D4C818] updateCardSectionView:viewCopy withCardSection:v9];

  return proxy;
}

+ (id)cardViewReuseIdentifier
{
  if (cardViewReuseIdentifier_onceToken != -1)
  {
    +[APUIActionCardUtils cardViewReuseIdentifier];
  }

  v3 = cardViewReuseIdentifier_reuseIdentifier;

  return v3;
}

void __46__APUIActionCardUtils_cardViewReuseIdentifier__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277D4C328]);
  v0 = [MEMORY[0x277D4C818] reuseIdentifierForCardSection:v2];
  v1 = cardViewReuseIdentifier_reuseIdentifier;
  cardViewReuseIdentifier_reuseIdentifier = v0;
}

+ (id)_generateCardSectionWithInfo:(id)info config:(id)config
{
  v77[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  configCopy = config;
  bundleId = [configCopy bundleId];
  v8 = ATXBundleIdReplacementForBundleId();
  [configCopy setBundleId:v8];

  bundleId2 = [infoCopy bundleId];
  v10 = [bundleId2 length];

  if (!v10)
  {
    bundleId3 = [configCopy bundleId];
    [infoCopy setBundleId:bundleId3];
  }

  bundleId4 = [infoCopy bundleId];
  if (bundleId4)
  {
    appTitle = [infoCopy appTitle];
    v14 = [appTitle length];

    if (v14)
    {
      bundleId4 = 0;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CC1E70]);
      bundleId5 = [infoCopy bundleId];
      bundleId4 = [v15 initWithBundleIdentifier:bundleId5 allowPlaceholder:1 error:0];

      localizedName = [bundleId4 localizedName];
      [infoCopy setAppTitle:localizedName];
    }
  }

  bundleId6 = [infoCopy bundleId];
  v19 = [bundleId6 isEqualToString:@"com.apple.mobilenotes"];

  if (v19)
  {
    [infoCopy setSubtitle:0];
  }

  v20 = objc_alloc_init(MEMORY[0x277D4C328]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v20 setCardSectionId:uUIDString];

  v23 = MEMORY[0x277D4C598];
  title = [infoCopy title];
  v25 = [v23 textWithString:title];
  [v20 setTitle:v25];

  maxLinesForTitle = [configCopy maxLinesForTitle];
  title2 = [v20 title];
  [title2 setMaxLines:maxLinesForTitle];

  if (([configCopy maxLinesForSubtitle] & 0x8000000000000000) == 0)
  {
    v28 = MEMORY[0x277D4C598];
    subtitle = [infoCopy subtitle];
    v30 = [v28 textWithString:subtitle];

    [v30 setMaxLines:{objc_msgSend(configCopy, "maxLinesForSubtitle")}];
    v77[0] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
    [v20 setDescriptions:v31];
  }

  appTitle2 = [infoCopy appTitle];
  if ([appTitle2 length])
  {
    showAppFootnote = [configCopy showAppFootnote];

    if (showAppFootnote)
    {
      v34 = MEMORY[0x277D4C598];
      appTitle3 = [infoCopy appTitle];
      v36 = [v34 textWithString:appTitle3];
      [v20 setFootnote:v36];

      if (![configCopy showAppFootnoteIcon])
      {
        goto LABEL_19;
      }

      v37 = MEMORY[0x277D4C820];
      bundleId7 = [infoCopy bundleId];
      v39 = [v37 appIconForBundleIdentifier:bundleId7 variant:0];
      v76 = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
      footnote = [v20 footnote];
      [footnote setIcons:v40];

      goto LABEL_18;
    }
  }

  else
  {
  }

  footnote2 = [infoCopy footnote];
  v43 = [footnote2 length];

  if (!v43)
  {
    goto LABEL_19;
  }

  v44 = MEMORY[0x277D4C598];
  bundleId7 = [infoCopy footnote];
  v39 = [v44 textWithString:bundleId7];
  [v20 setFootnote:v39];
LABEL_18:

LABEL_19:
  footnote3 = [v20 footnote];

  if (footnote3)
  {
    maxLinesForFootnote = [configCopy maxLinesForFootnote];
    footnote4 = [v20 footnote];
    [footnote4 setMaxLines:maxLinesForFootnote];
  }

  if ([configCopy showThumbnailImage])
  {
    if (([configCopy useAppIconAsThumbnail] & 1) != 0 || (objc_msgSend(infoCopy, "image"), v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
    {
      bundleId8 = [infoCopy bundleId];
      v52 = [bundleId8 length];

      if (!v52)
      {
        goto LABEL_35;
      }

      applicationState = [bundleId4 applicationState];
      if ([applicationState isInstalled])
      {
      }

      else
      {
        v54 = objc_alloc(MEMORY[0x277CC1E70]);
        bundleId9 = [infoCopy bundleId];
        v56 = [v54 initWithBundleIdentifierOfSystemPlaceholder:bundleId9 error:0];
        applicationState2 = [v56 applicationState];
        isPlaceholder = [applicationState2 isPlaceholder];

        if (!isPlaceholder)
        {
          goto LABEL_35;
        }
      }

      if ([configCopy useTinyIconVariant])
      {
        v59 = 2;
      }

      else
      {
        v59 = 4;
      }

      v60 = MEMORY[0x277D4C820];
      bundleId10 = [infoCopy bundleId];
      v61 = [v60 appIconForBundleIdentifier:bundleId10 variant:v59];
      [v20 setThumbnail:v61];
    }

    else
    {
      image = [infoCopy image];
      [v20 setThumbnail:image];

      if (![configCopy useTinyIconVariant])
      {
        goto LABEL_35;
      }

      bundleId10 = [v20 thumbnail];
      [bundleId10 setSize:{29.0, 29.0}];
    }

LABEL_35:
    thumbnail = [v20 thumbnail];

    if (!thumbnail)
    {
      if ([configCopy useTinyIconVariant])
      {
        v63 = 2;
      }

      else
      {
        v63 = 4;
      }

      v64 = MEMORY[0x277D4C820];
      bundleId11 = [infoCopy bundleId];
      v66 = [v64 appIconForBundleIdentifier:bundleId11 variant:v63];
      [v20 setThumbnail:v66];
    }
  }

  actionItem = [infoCopy actionItem];
  if (actionItem)
  {
    v68 = actionItem;
    showActionButton = [configCopy showActionButton];

    if (showActionButton)
    {
      actionItem2 = [infoCopy actionItem];
      [v20 setAction:actionItem2];

      actionPunchout = [infoCopy actionPunchout];

      if (actionPunchout)
      {
        actionPunchout2 = [infoCopy actionPunchout];
        action = [v20 action];
        [action setPunchout:actionPunchout2];
      }
    }
  }

  v74 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (void)_configureCardInfo:(id)info forINInteraction:(id)interaction withConfig:(id)config
{
  v59 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  interactionCopy = interaction;
  configCopy = config;
  intent = [interactionCopy intent];
  title = [infoCopy title];
  if (title)
  {
    [infoCopy setTitle:title];
  }

  else
  {
    _title = [intent _title];
    [infoCopy setTitle:_title];
  }

  subtitle = [infoCopy subtitle];
  if (subtitle)
  {
    [infoCopy setSubtitle:subtitle];
  }

  else
  {
    _subtitle = [intent _subtitle];
    [infoCopy setSubtitle:_subtitle];
  }

  intent2 = [interactionCopy intent];
  _intents_bundleIdForDisplay = [intent2 _intents_bundleIdForDisplay];
  [infoCopy setBundleId:_intents_bundleIdForDisplay];

  if (([configCopy useAppIconAsThumbnail] & 1) == 0)
  {
    _keyImage = [interactionCopy _keyImage];

    if (_keyImage)
    {
      v18 = objc_alloc(MEMORY[0x277CD4608]);
      _keyImage2 = [interactionCopy _keyImage];
      v20 = [v18 initWithIntentsImage:_keyImage2];
      [infoCopy setImage:v20];

      image = [infoCopy image];
      [image setCornerRoundingStyle:2];

      _className = [intent _className];
      LODWORD(_keyImage2) = [_className isEqualToString:@"DNDToggleDoNotDisturbIntent"];

      if (_keyImage2)
      {
        image2 = [infoCopy image];
        [image2 setCornerRoundingStyle:3];
      }
    }
  }

  if (([configCopy useAppIconAsThumbnail] & 1) == 0)
  {
    apui_keyPeople = [intent apui_keyPeople];
    if (![apui_keyPeople count])
    {
LABEL_21:

      goto LABEL_48;
    }

    image3 = [infoCopy image];
    if (image3)
    {
      v26 = image3;
      intent3 = [interactionCopy intent];
      v28 = APUIIsIntentFromSystemApp(intent3);

      if (!v28)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    intent4 = [interactionCopy intent];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([infoCopy image], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = v30;
      intent5 = [interactionCopy intent];
      v33 = APUIIsIntentFromSystemApp(intent5);

      if (v33)
      {
        apui_keyPeople = [infoCopy image];
        [apui_keyPeople setCornerRoundingStyle:4];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v53 = configCopy;
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = intent;
    apui_keyPeople2 = [intent apui_keyPeople];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v36 = [apui_keyPeople2 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v36)
    {
      v37 = v36;
      nameComponents = 0;
      v39 = *v55;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(apui_keyPeople2);
          }

          v41 = *(*(&v54 + 1) + 8 * i);
          contactIdentifier = [v41 contactIdentifier];
          if (contactIdentifier)
          {
            [v34 addObject:contactIdentifier];
          }

          if (!nameComponents)
          {
            nameComponents = [v41 nameComponents];
          }
        }

        v37 = [apui_keyPeople2 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v37);
    }

    else
    {
      nameComponents = 0;
    }

    if ([v34 count])
    {
      v43 = objc_alloc_init(MEMORY[0x277D4C2D0]);
      [v43 setContactIdentifiers:v34];
      [infoCopy setImage:v43];
      intent = v52;
      configCopy = v53;
    }

    else
    {
      intent = v52;
      configCopy = v53;
      if (!nameComponents)
      {
LABEL_47:

        goto LABEL_48;
      }

      v43 = objc_alloc_init(MEMORY[0x277D4C4B0]);
      givenName = [nameComponents givenName];
      if ([givenName length])
      {
        v50 = [givenName substringToIndex:1];
      }

      else
      {
        v50 = &stru_2851FF3F8;
      }

      familyName = [nameComponents familyName];
      v51 = givenName;
      if ([familyName length])
      {
        v46 = [familyName substringToIndex:1];
      }

      else
      {
        v46 = &stru_2851FF3F8;
      }

      v49 = v46;
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v50, v46];
      [v43 setMonogramLetters:v47];

      [infoCopy setImage:v43];
    }

    goto LABEL_47;
  }

LABEL_48:

  v48 = *MEMORY[0x277D85DE8];
}

+ (void)_configureCardInfo:(id)info forINIntent:(id)intent withConfig:(id)config
{
  v8 = MEMORY[0x277CD3D58];
  configCopy = config;
  intentCopy = intent;
  infoCopy = info;
  v12 = [[v8 alloc] initWithIntent:intentCopy response:0];

  [self _configureCardInfo:infoCopy forINInteraction:v12 withConfig:configCopy];
}

+ (void)_configureCardInfo:(id)info forNSUserActivity:(id)activity withConfig:(id)config
{
  infoCopy = info;
  activityCopy = activity;
  configCopy = config;
  title = [infoCopy title];
  if (title)
  {
    [infoCopy setTitle:title];
  }

  else
  {
    title2 = [activityCopy title];
    [infoCopy setTitle:title2];
  }

  subtitle = [infoCopy subtitle];
  if (subtitle)
  {
    [infoCopy setSubtitle:subtitle];
  }

  else
  {
    contentAttributeSet = [activityCopy contentAttributeSet];
    contentDescription = [contentAttributeSet contentDescription];
    v15 = contentDescription;
    if (contentDescription)
    {
      v16 = contentDescription;
    }

    else
    {
      v16 = &stru_2851FF3F8;
    }

    [infoCopy setSubtitle:v16];
  }

  bundleId = [configCopy bundleId];
  v18 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
  webpageURL = [activityCopy webpageURL];
  v20 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();
  [infoCopy setBundleId:v20];

  LODWORD(bundleId) = [configCopy showThumbnailImage];
  if (bundleId)
  {
    contentAttributeSet2 = [activityCopy contentAttributeSet];
    thumbnailURL = [contentAttributeSet2 thumbnailURL];

    if (thumbnailURL)
    {
      v23 = [objc_alloc(MEMORY[0x277D4C6B8]) initWithURL:thumbnailURL];
      [infoCopy setImage:v23];

      image = [infoCopy image];
      [image setCornerRoundingStyle:2];
    }
  }

  v25 = __atxlog_handle_ui();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [APUIActionCardUtils _configureCardInfo:v25 forNSUserActivity:? withConfig:?];
  }
}

+ (void)_configureCardInfo:(id)info forUAUserActivityProxy:(id)proxy withConfig:(id)config
{
  infoCopy = info;
  proxyCopy = proxy;
  configCopy = config;
  title = [infoCopy title];
  if (title)
  {
    [infoCopy setTitle:title];
  }

  else
  {
    activityTitle = [proxyCopy activityTitle];
    [infoCopy setTitle:activityTitle];
  }

  subtitle = [infoCopy subtitle];
  if (subtitle)
  {
    [infoCopy setSubtitle:subtitle];
  }

  else
  {
    activitySubTitle = [proxyCopy activitySubTitle];
    [infoCopy setSubtitle:activitySubTitle];
  }

  bundleId = [configCopy bundleId];
  v14 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
  [infoCopy setBundleId:v14];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"Handoff" value:&stru_2851FF3F8 table:0];
  [infoCopy setAppTitle:v16];

  [configCopy setShowAppFootnote:1];
  [configCopy setShowThumbnailImage:1];
  [configCopy setUseAppIconAsThumbnail:1];
}

+ (void)_configureCardInfo:(id)info forNSString:(id)string withConfig:(id)config
{
  configCopy = config;
  stringCopy = string;
  infoCopy = info;
  [infoCopy setTitle:0];
  [infoCopy setSubtitle:stringCopy];

  [infoCopy setImage:0];
  [infoCopy setBundleId:0];

  [configCopy setMaxLinesForSubtitle:0];
  [configCopy setShowThumbnailImage:0];
  [configCopy setShowAppFootnote:0];
}

+ (void)_configureCardInfo:(id)info forHeroApp:(id)app withConfig:(id)config
{
  infoCopy = info;
  appCopy = app;
  configCopy = config;
  clipMetadata = [appCopy clipMetadata];

  if (clipMetadata)
  {
    clipMetadata2 = [appCopy clipMetadata];
    clipName = [clipMetadata2 clipName];
    [infoCopy setTitle:clipName];

    localizedTitleForClipSuggestion = [clipMetadata2 localizedTitleForClipSuggestion];
    [infoCopy setAppTitle:localizedTitleForClipSuggestion];

    localizedSubtitleForClipSuggestion = [clipMetadata2 localizedSubtitleForClipSuggestion];
    [infoCopy setSubtitle:localizedSubtitleForClipSuggestion];

    clipBundleID = [clipMetadata2 clipBundleID];
    [infoCopy setBundleId:clipBundleID];

    fullAppCachedIconFilePath = [clipMetadata2 fullAppCachedIconFilePath];

    if (fullAppCachedIconFilePath)
    {
      v16 = objc_alloc(MEMORY[0x277D4C6B8]);
      v17 = MEMORY[0x277CBEBC0];
      fullAppCachedIconFilePath2 = [clipMetadata2 fullAppCachedIconFilePath];
      v19 = [v17 fileURLWithPath:fullAppCachedIconFilePath2];
      v20 = [v16 initWithURL:v19];
      [infoCopy setImage:v20];
    }

    else
    {
      clipBusinessIconURL = [clipMetadata2 clipBusinessIconURL];

      if (clipBusinessIconURL)
      {
        v22 = objc_alloc(MEMORY[0x277D4C6B8]);
        clipBusinessIconURL2 = [clipMetadata2 clipBusinessIconURL];
      }

      else
      {
        fullAppIconURL = [clipMetadata2 fullAppIconURL];

        if (!fullAppIconURL)
        {
LABEL_10:
          v25 = objc_alloc_init(MEMORY[0x277D4C1A8]);
          [infoCopy setActionItem:v25];

          clipOpenButtonTitle = [clipMetadata2 clipOpenButtonTitle];
          uppercaseString = [clipOpenButtonTitle uppercaseString];
          actionItem = [infoCopy actionItem];
          [actionItem setLabel:uppercaseString];

          [configCopy setShowActionButton:1];
          [configCopy setShowThumbnailImage:1];
          [configCopy setUseAppIconAsThumbnail:0];
          [configCopy setShowAppFootnote:0];
          [configCopy setMaxLinesForSubtitle:2];

          goto LABEL_11;
        }

        v22 = objc_alloc(MEMORY[0x277D4C6B8]);
        clipBusinessIconURL2 = [clipMetadata2 fullAppIconURL];
      }

      fullAppCachedIconFilePath2 = clipBusinessIconURL2;
      v19 = [v22 initWithURL:clipBusinessIconURL2];
      [infoCopy setImage:v19];
    }

    goto LABEL_10;
  }

LABEL_11:
}

+ (void)_configureCardInfo:(id)info forATXAction:(id)action withConfig:(id)config
{
  infoCopy = info;
  actionCopy = action;
  configCopy = config;
  v11 = __atxlog_handle_ui();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [APUIActionCardUtils _configureCardInfo:v11 forATXAction:? withConfig:?];
  }

  title = [infoCopy title];
  if (title)
  {
    [infoCopy setTitle:title];
  }

  else
  {
    actionTitle = [actionCopy actionTitle];
    [infoCopy setTitle:actionTitle];
  }

  subtitle = [infoCopy subtitle];
  v15 = [self _subtitleForAction:actionCopy default:subtitle];
  [infoCopy setSubtitle:v15];

  if ([actionCopy actionType] == 1)
  {
    userActivity = [actionCopy userActivity];
    [self _configureCardInfo:infoCopy forNSUserActivity:userActivity withConfig:configCopy];
LABEL_14:

    goto LABEL_15;
  }

  if ([actionCopy actionType] == 5)
  {
    userActivity = [actionCopy userActivityProxy];
    [self _configureCardInfo:infoCopy forUAUserActivityProxy:userActivity withConfig:configCopy];
    goto LABEL_14;
  }

  if (![actionCopy actionType] || objc_msgSend(actionCopy, "actionType") == 2)
  {
    userActivity = [actionCopy intent];
    [self _configureCardInfo:infoCopy forINIntent:userActivity withConfig:configCopy];
    _className = [userActivity _className];
    v18 = [_className isEqualToString:@"DNDToggleDoNotDisturbIntent"];

    if (v18)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"Do Not Disturb" value:&stru_2851FF3F8 table:0];
      [infoCopy setAppTitle:v20];
    }

    goto LABEL_14;
  }

LABEL_15:
  bundleId = [infoCopy bundleId];
  v22 = [bundleId length];

  if (!v22)
  {
    _bundleIdForDisplay = [actionCopy _bundleIdForDisplay];
    [infoCopy setBundleId:_bundleIdForDisplay];
  }

  bundleId2 = [infoCopy bundleId];
  v25 = [bundleId2 isEqualToString:@"com.apple.mobilecal"];

  if (v25)
  {
    dateForAction = [actionCopy dateForAction];
    if (dateForAction)
    {
      v27 = [objc_alloc(MEMORY[0x277D4C838]) initWithDate:dateForAction variant:4];
      [infoCopy setImage:v27];
    }

    else
    {
      if (!_configureCardInfo_forATXAction_withConfig__sCalendarSearchUIImage)
      {
        v28 = MEMORY[0x277D755B8];
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v28 imageNamed:@"calendar-fallback-icon" inBundle:v29];
        v31 = [v30 _applicationIconImageForFormat:2 precomposed:0];

        v32 = [objc_alloc(MEMORY[0x277D4C868]) initWithImage:v31];
        v33 = _configureCardInfo_forATXAction_withConfig__sCalendarSearchUIImage;
        _configureCardInfo_forATXAction_withConfig__sCalendarSearchUIImage = v32;

        [_configureCardInfo_forATXAction_withConfig__sCalendarSearchUIImage setCornerRoundingStyle:3];
      }

      [infoCopy setImage:?];
    }
  }
}

+ (id)_subtitleForAction:(id)action default:(id)default
{
  actionCopy = action;
  defaultCopy = default;
  v7 = defaultCopy;
  if (defaultCopy)
  {
    actionSubtitle = defaultCopy;
  }

  else
  {
    actionSubtitle = [actionCopy actionSubtitle];
  }

  v9 = actionSubtitle;
  routeInfo = [actionCopy routeInfo];
  if (routeInfo && (v11 = routeInfo, [actionCopy routeInfo], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isExternalRoute"), v12, v11, (v13 & 1) != 0))
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"AirPlay to %@" value:&stru_2851FF3F8 table:0];
    routeInfo2 = [actionCopy routeInfo];
    deviceName = [routeInfo2 deviceName];
    v19 = [v14 initWithFormat:v16, deviceName];

    if ([v9 length])
    {
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n%@", v9, v19];
    }

    else
    {
      v20 = v19;
    }

    v21 = v20;
  }

  else
  {
    v21 = v9;
  }

  return v21;
}

+ (void)_configureCardInfo:(id)info forVoiceShortcutWithPhrase:(id)phrase name:(id)name description:(id)description keyImage:(id)image applicationBundleIdentifier:(id)identifier config:(id)config
{
  infoCopy = info;
  imageCopy = image;
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x277CCA8D8];
  configCopy = config;
  identifierCopy = identifier;
  descriptionCopy = description;
  nameCopy = name;
  phraseCopy = phrase;
  mainBundle = [v16 mainBundle];
  v23 = [mainBundle localizedStringForKey:@"“%@”" value:&stru_2851FF3F8 table:0];
  phraseCopy = [v15 localizedStringWithFormat:v23, phraseCopy];

  [infoCopy setTitle:phraseCopy];
  [infoCopy setSubtitle:nameCopy];

  [infoCopy setFootnote:descriptionCopy];
  [infoCopy setBundleId:identifierCopy];

  useAppIconAsThumbnail = [configCopy useAppIconAsThumbnail];
  if (imageCopy && (useAppIconAsThumbnail & 1) == 0)
  {
    v26 = [objc_alloc(MEMORY[0x277CD4608]) initWithIntentsImage:imageCopy];
    [infoCopy setImage:v26];

    image = [infoCopy image];
    [image setCornerRoundingStyle:2];
  }
}

@end