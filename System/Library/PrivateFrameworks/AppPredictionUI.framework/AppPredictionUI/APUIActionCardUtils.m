@interface APUIActionCardUtils
+ (BOOL)updateCardView:(id)a3 forINIntent:(id)a4 withConfig:(id)a5;
+ (BOOL)updateCardView:(id)a3 forINInteraction:(id)a4 withConfig:(id)a5;
+ (BOOL)updateCardView:(id)a3 forNSUserActivity:(id)a4 withConfig:(id)a5;
+ (BOOL)updateCardView:(id)a3 forUAUserActivityProxy:(id)a4 withConfig:(id)a5;
+ (id)_generateCardSectionWithInfo:(id)a3 config:(id)a4;
+ (id)_subtitleForAction:(id)a3 default:(id)a4;
+ (id)cardForCardSection:(id)a3;
+ (id)cardSectionForATXAction:(id)a3 withConfig:(id)a4;
+ (id)cardSectionForHeroApp:(id)a3 withConfig:(id)a4;
+ (id)cardSectionForINIntent:(id)a3 withConfig:(id)a4;
+ (id)cardSectionForINInteraction:(id)a3 withConfig:(id)a4;
+ (id)cardSectionForNSString:(id)a3 withConfig:(id)a4;
+ (id)cardSectionForNSUserActivity:(id)a3 withConfig:(id)a4;
+ (id)cardSectionForUAUserActivityProxy:(id)a3 withConfig:(id)a4;
+ (id)cardSectionForVoiceShortcutWithPhrase:(id)a3 name:(id)a4 description:(id)a5 keyImage:(id)a6 applicationBundleIdentifier:(id)a7 config:(id)a8;
+ (id)cardViewForATXAction:(id)a3 withConfig:(id)a4;
+ (id)cardViewForHeroApp:(id)a3 withConfig:(id)a4;
+ (id)cardViewForINIntent:(id)a3 withConfig:(id)a4;
+ (id)cardViewForINInteraction:(id)a3 withConfig:(id)a4;
+ (id)cardViewForNSUserActivity:(id)a3 withConfig:(id)a4;
+ (id)cardViewForUAUserActivityProxy:(id)a3 withConfig:(id)a4;
+ (id)cardViewForVoiceShortcutWithPhrase:(id)a3 name:(id)a4 description:(id)a5 keyImage:(id)a6 applicationBundleIdentifier:(id)a7 config:(id)a8;
+ (id)cardViewReuseIdentifier;
+ (void)_configureCardInfo:(id)a3 forATXAction:(id)a4 withConfig:(id)a5;
+ (void)_configureCardInfo:(id)a3 forHeroApp:(id)a4 withConfig:(id)a5;
+ (void)_configureCardInfo:(id)a3 forINIntent:(id)a4 withConfig:(id)a5;
+ (void)_configureCardInfo:(id)a3 forINInteraction:(id)a4 withConfig:(id)a5;
+ (void)_configureCardInfo:(id)a3 forNSString:(id)a4 withConfig:(id)a5;
+ (void)_configureCardInfo:(id)a3 forNSUserActivity:(id)a4 withConfig:(id)a5;
+ (void)_configureCardInfo:(id)a3 forUAUserActivityProxy:(id)a4 withConfig:(id)a5;
+ (void)_configureCardInfo:(id)a3 forVoiceShortcutWithPhrase:(id)a4 name:(id)a5 description:(id)a6 keyImage:(id)a7 applicationBundleIdentifier:(id)a8 config:(id)a9;
@end

@implementation APUIActionCardUtils

+ (id)cardSectionForATXAction:(id)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [a1 _configureCardInfo:v8 forATXAction:v7 withConfig:v6];

  v9 = [a1 _generateCardSectionWithInfo:v8 config:v6];

  return v9;
}

+ (id)cardSectionForNSUserActivity:(id)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [a1 _configureCardInfo:v8 forNSUserActivity:v7 withConfig:v6];

  v9 = [a1 _generateCardSectionWithInfo:v8 config:v6];

  return v9;
}

+ (id)cardSectionForUAUserActivityProxy:(id)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [a1 _configureCardInfo:v8 forUAUserActivityProxy:v7 withConfig:v6];

  v9 = [a1 _generateCardSectionWithInfo:v8 config:v6];

  return v9;
}

+ (id)cardSectionForNSString:(id)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [a1 _configureCardInfo:v8 forNSString:v7 withConfig:v6];

  v9 = [a1 _generateCardSectionWithInfo:v8 config:v6];

  return v9;
}

+ (id)cardSectionForINInteraction:(id)a3 withConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 intentResponse];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 fallbackToCustomResponseString];

    if (v10)
    {
      v11 = [v6 intentResponse];
      v12 = objc_opt_new();
      v13 = [v11 _renderedResponseWithLocalizer:v12 requiresSiriCompatibility:0];

      if ([(_APUIActionCardInfo *)v13 length])
      {
        v14 = objc_alloc_init(_APUIActionCardInfo);
        [a1 _configureCardInfo:v14 forNSString:v13 withConfig:v7];
        v15 = [a1 _generateCardSectionWithInfo:v14 config:v7];

        goto LABEL_7;
      }
    }
  }

  v13 = objc_alloc_init(_APUIActionCardInfo);
  v16 = [v6 intent];
  [a1 _configureCardInfo:v13 forINIntent:v16 withConfig:v7];

  v15 = [a1 _generateCardSectionWithInfo:v13 config:v7];
LABEL_7:

  return v15;
}

+ (id)cardSectionForINIntent:(id)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [a1 _configureCardInfo:v8 forINIntent:v7 withConfig:v6];

  v9 = [a1 _generateCardSectionWithInfo:v8 config:v6];

  return v9;
}

+ (id)cardSectionForVoiceShortcutWithPhrase:(id)a3 name:(id)a4 description:(id)a5 keyImage:(id)a6 applicationBundleIdentifier:(id)a7 config:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(_APUIActionCardInfo);
  [a1 _configureCardInfo:v20 forVoiceShortcutWithPhrase:v19 name:v18 description:v17 keyImage:v16 applicationBundleIdentifier:v15 config:v14];

  v21 = [a1 _generateCardSectionWithInfo:v20 config:v14];

  return v21;
}

+ (id)cardSectionForHeroApp:(id)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_APUIActionCardInfo);
  [a1 _configureCardInfo:v8 forHeroApp:v7 withConfig:v6];

  v9 = [a1 _generateCardSectionWithInfo:v8 config:v6];

  return v9;
}

+ (id)cardForCardSection:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4C230];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  [v5 setCardId:v7];

  v11[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [v5 setCardSections:v8];
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)cardViewForATXAction:(id)a3 withConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 actionType] == 1)
  {
    v8 = [v6 userActivity];
    v9 = [a1 cardViewForNSUserActivity:v8 withConfig:v7];
  }

  else
  {
    if ([v6 actionType] == 5)
    {
      v8 = [v6 userActivityProxy];
      [a1 cardViewForUAUserActivityProxy:v8 withConfig:v7];
    }

    else
    {
      v8 = [v6 intent];
      [a1 cardViewForINIntent:v8 withConfig:v7];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

+ (id)cardViewForNSUserActivity:(id)a3 withConfig:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 cardSectionForNSUserActivity:a3 withConfig:a4];
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

+ (id)cardViewForUAUserActivityProxy:(id)a3 withConfig:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 cardSectionForUAUserActivityProxy:a3 withConfig:a4];
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

+ (id)cardViewForINInteraction:(id)a3 withConfig:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 cardSectionForINInteraction:a3 withConfig:a4];
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

+ (id)cardViewForINIntent:(id)a3 withConfig:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 cardSectionForINIntent:a3 withConfig:a4];
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

+ (id)cardViewForVoiceShortcutWithPhrase:(id)a3 name:(id)a4 description:(id)a5 keyImage:(id)a6 applicationBundleIdentifier:(id)a7 config:(id)a8
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = [a1 cardSectionForVoiceShortcutWithPhrase:a3 name:a4 description:a5 keyImage:a6 applicationBundleIdentifier:a7 config:a8];
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

+ (id)cardViewForHeroApp:(id)a3 withConfig:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 cardSectionForHeroApp:a3 withConfig:a4];
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

+ (BOOL)updateCardView:(id)a3 forINIntent:(id)a4 withConfig:(id)a5
{
  v8 = a3;
  v9 = [a1 cardSectionForINIntent:a4 withConfig:a5];
  LOBYTE(a4) = [MEMORY[0x277D4C818] updateCardSectionView:v8 withCardSection:v9];

  return a4;
}

+ (BOOL)updateCardView:(id)a3 forINInteraction:(id)a4 withConfig:(id)a5
{
  v8 = a3;
  v9 = [a1 cardSectionForINInteraction:a4 withConfig:a5];
  LOBYTE(a4) = [MEMORY[0x277D4C818] updateCardSectionView:v8 withCardSection:v9];

  return a4;
}

+ (BOOL)updateCardView:(id)a3 forNSUserActivity:(id)a4 withConfig:(id)a5
{
  v8 = a3;
  v9 = [a1 cardSectionForNSUserActivity:a4 withConfig:a5];
  LOBYTE(a4) = [MEMORY[0x277D4C818] updateCardSectionView:v8 withCardSection:v9];

  return a4;
}

+ (BOOL)updateCardView:(id)a3 forUAUserActivityProxy:(id)a4 withConfig:(id)a5
{
  v8 = a3;
  v9 = [a1 cardSectionForUAUserActivityProxy:a4 withConfig:a5];
  LOBYTE(a4) = [MEMORY[0x277D4C818] updateCardSectionView:v8 withCardSection:v9];

  return a4;
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

+ (id)_generateCardSectionWithInfo:(id)a3 config:(id)a4
{
  v77[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 bundleId];
  v8 = ATXBundleIdReplacementForBundleId();
  [v6 setBundleId:v8];

  v9 = [v5 bundleId];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [v6 bundleId];
    [v5 setBundleId:v11];
  }

  v12 = [v5 bundleId];
  if (v12)
  {
    v13 = [v5 appTitle];
    v14 = [v13 length];

    if (v14)
    {
      v12 = 0;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CC1E70]);
      v16 = [v5 bundleId];
      v12 = [v15 initWithBundleIdentifier:v16 allowPlaceholder:1 error:0];

      v17 = [v12 localizedName];
      [v5 setAppTitle:v17];
    }
  }

  v18 = [v5 bundleId];
  v19 = [v18 isEqualToString:@"com.apple.mobilenotes"];

  if (v19)
  {
    [v5 setSubtitle:0];
  }

  v20 = objc_alloc_init(MEMORY[0x277D4C328]);
  v21 = [MEMORY[0x277CCAD78] UUID];
  v22 = [v21 UUIDString];
  [v20 setCardSectionId:v22];

  v23 = MEMORY[0x277D4C598];
  v24 = [v5 title];
  v25 = [v23 textWithString:v24];
  [v20 setTitle:v25];

  v26 = [v6 maxLinesForTitle];
  v27 = [v20 title];
  [v27 setMaxLines:v26];

  if (([v6 maxLinesForSubtitle] & 0x8000000000000000) == 0)
  {
    v28 = MEMORY[0x277D4C598];
    v29 = [v5 subtitle];
    v30 = [v28 textWithString:v29];

    [v30 setMaxLines:{objc_msgSend(v6, "maxLinesForSubtitle")}];
    v77[0] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
    [v20 setDescriptions:v31];
  }

  v32 = [v5 appTitle];
  if ([v32 length])
  {
    v33 = [v6 showAppFootnote];

    if (v33)
    {
      v34 = MEMORY[0x277D4C598];
      v35 = [v5 appTitle];
      v36 = [v34 textWithString:v35];
      [v20 setFootnote:v36];

      if (![v6 showAppFootnoteIcon])
      {
        goto LABEL_19;
      }

      v37 = MEMORY[0x277D4C820];
      v38 = [v5 bundleId];
      v39 = [v37 appIconForBundleIdentifier:v38 variant:0];
      v76 = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
      v41 = [v20 footnote];
      [v41 setIcons:v40];

      goto LABEL_18;
    }
  }

  else
  {
  }

  v42 = [v5 footnote];
  v43 = [v42 length];

  if (!v43)
  {
    goto LABEL_19;
  }

  v44 = MEMORY[0x277D4C598];
  v38 = [v5 footnote];
  v39 = [v44 textWithString:v38];
  [v20 setFootnote:v39];
LABEL_18:

LABEL_19:
  v45 = [v20 footnote];

  if (v45)
  {
    v46 = [v6 maxLinesForFootnote];
    v47 = [v20 footnote];
    [v47 setMaxLines:v46];
  }

  if ([v6 showThumbnailImage])
  {
    if (([v6 useAppIconAsThumbnail] & 1) != 0 || (objc_msgSend(v5, "image"), v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
    {
      v51 = [v5 bundleId];
      v52 = [v51 length];

      if (!v52)
      {
        goto LABEL_35;
      }

      v53 = [v12 applicationState];
      if ([v53 isInstalled])
      {
      }

      else
      {
        v54 = objc_alloc(MEMORY[0x277CC1E70]);
        v55 = [v5 bundleId];
        v56 = [v54 initWithBundleIdentifierOfSystemPlaceholder:v55 error:0];
        v57 = [v56 applicationState];
        v58 = [v57 isPlaceholder];

        if (!v58)
        {
          goto LABEL_35;
        }
      }

      if ([v6 useTinyIconVariant])
      {
        v59 = 2;
      }

      else
      {
        v59 = 4;
      }

      v60 = MEMORY[0x277D4C820];
      v50 = [v5 bundleId];
      v61 = [v60 appIconForBundleIdentifier:v50 variant:v59];
      [v20 setThumbnail:v61];
    }

    else
    {
      v49 = [v5 image];
      [v20 setThumbnail:v49];

      if (![v6 useTinyIconVariant])
      {
        goto LABEL_35;
      }

      v50 = [v20 thumbnail];
      [v50 setSize:{29.0, 29.0}];
    }

LABEL_35:
    v62 = [v20 thumbnail];

    if (!v62)
    {
      if ([v6 useTinyIconVariant])
      {
        v63 = 2;
      }

      else
      {
        v63 = 4;
      }

      v64 = MEMORY[0x277D4C820];
      v65 = [v5 bundleId];
      v66 = [v64 appIconForBundleIdentifier:v65 variant:v63];
      [v20 setThumbnail:v66];
    }
  }

  v67 = [v5 actionItem];
  if (v67)
  {
    v68 = v67;
    v69 = [v6 showActionButton];

    if (v69)
    {
      v70 = [v5 actionItem];
      [v20 setAction:v70];

      v71 = [v5 actionPunchout];

      if (v71)
      {
        v72 = [v5 actionPunchout];
        v73 = [v20 action];
        [v73 setPunchout:v72];
      }
    }
  }

  v74 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (void)_configureCardInfo:(id)a3 forINInteraction:(id)a4 withConfig:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 intent];
  v11 = [v7 title];
  if (v11)
  {
    [v7 setTitle:v11];
  }

  else
  {
    v12 = [v10 _title];
    [v7 setTitle:v12];
  }

  v13 = [v7 subtitle];
  if (v13)
  {
    [v7 setSubtitle:v13];
  }

  else
  {
    v14 = [v10 _subtitle];
    [v7 setSubtitle:v14];
  }

  v15 = [v8 intent];
  v16 = [v15 _intents_bundleIdForDisplay];
  [v7 setBundleId:v16];

  if (([v9 useAppIconAsThumbnail] & 1) == 0)
  {
    v17 = [v8 _keyImage];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CD4608]);
      v19 = [v8 _keyImage];
      v20 = [v18 initWithIntentsImage:v19];
      [v7 setImage:v20];

      v21 = [v7 image];
      [v21 setCornerRoundingStyle:2];

      v22 = [v10 _className];
      LODWORD(v19) = [v22 isEqualToString:@"DNDToggleDoNotDisturbIntent"];

      if (v19)
      {
        v23 = [v7 image];
        [v23 setCornerRoundingStyle:3];
      }
    }
  }

  if (([v9 useAppIconAsThumbnail] & 1) == 0)
  {
    v24 = [v10 apui_keyPeople];
    if (![v24 count])
    {
LABEL_21:

      goto LABEL_48;
    }

    v25 = [v7 image];
    if (v25)
    {
      v26 = v25;
      v27 = [v8 intent];
      v28 = APUIIsIntentFromSystemApp(v27);

      if (!v28)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    v29 = [v8 intent];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 image], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = v30;
      v32 = [v8 intent];
      v33 = APUIIsIntentFromSystemApp(v32);

      if (v33)
      {
        v24 = [v7 image];
        [v24 setCornerRoundingStyle:4];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v53 = v9;
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = v10;
    v35 = [v10 apui_keyPeople];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v36 = [v35 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = *v55;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(v35);
          }

          v41 = *(*(&v54 + 1) + 8 * i);
          v42 = [v41 contactIdentifier];
          if (v42)
          {
            [v34 addObject:v42];
          }

          if (!v38)
          {
            v38 = [v41 nameComponents];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = 0;
    }

    if ([v34 count])
    {
      v43 = objc_alloc_init(MEMORY[0x277D4C2D0]);
      [v43 setContactIdentifiers:v34];
      [v7 setImage:v43];
      v10 = v52;
      v9 = v53;
    }

    else
    {
      v10 = v52;
      v9 = v53;
      if (!v38)
      {
LABEL_47:

        goto LABEL_48;
      }

      v43 = objc_alloc_init(MEMORY[0x277D4C4B0]);
      v44 = [v38 givenName];
      if ([v44 length])
      {
        v50 = [v44 substringToIndex:1];
      }

      else
      {
        v50 = &stru_2851FF3F8;
      }

      v45 = [v38 familyName];
      v51 = v44;
      if ([v45 length])
      {
        v46 = [v45 substringToIndex:1];
      }

      else
      {
        v46 = &stru_2851FF3F8;
      }

      v49 = v46;
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v50, v46];
      [v43 setMonogramLetters:v47];

      [v7 setImage:v43];
    }

    goto LABEL_47;
  }

LABEL_48:

  v48 = *MEMORY[0x277D85DE8];
}

+ (void)_configureCardInfo:(id)a3 forINIntent:(id)a4 withConfig:(id)a5
{
  v8 = MEMORY[0x277CD3D58];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithIntent:v10 response:0];

  [a1 _configureCardInfo:v11 forINInteraction:v12 withConfig:v9];
}

+ (void)_configureCardInfo:(id)a3 forNSUserActivity:(id)a4 withConfig:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 title];
  if (v10)
  {
    [v7 setTitle:v10];
  }

  else
  {
    v11 = [v8 title];
    [v7 setTitle:v11];
  }

  v12 = [v7 subtitle];
  if (v12)
  {
    [v7 setSubtitle:v12];
  }

  else
  {
    v13 = [v8 contentAttributeSet];
    v14 = [v13 contentDescription];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_2851FF3F8;
    }

    [v7 setSubtitle:v16];
  }

  v17 = [v9 bundleId];
  v18 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
  v19 = [v8 webpageURL];
  v20 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();
  [v7 setBundleId:v20];

  LODWORD(v17) = [v9 showThumbnailImage];
  if (v17)
  {
    v21 = [v8 contentAttributeSet];
    v22 = [v21 thumbnailURL];

    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D4C6B8]) initWithURL:v22];
      [v7 setImage:v23];

      v24 = [v7 image];
      [v24 setCornerRoundingStyle:2];
    }
  }

  v25 = __atxlog_handle_ui();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [APUIActionCardUtils _configureCardInfo:v25 forNSUserActivity:? withConfig:?];
  }
}

+ (void)_configureCardInfo:(id)a3 forUAUserActivityProxy:(id)a4 withConfig:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v17 title];
  if (v9)
  {
    [v17 setTitle:v9];
  }

  else
  {
    v10 = [v7 activityTitle];
    [v17 setTitle:v10];
  }

  v11 = [v17 subtitle];
  if (v11)
  {
    [v17 setSubtitle:v11];
  }

  else
  {
    v12 = [v7 activitySubTitle];
    [v17 setSubtitle:v12];
  }

  v13 = [v8 bundleId];
  v14 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
  [v17 setBundleId:v14];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"Handoff" value:&stru_2851FF3F8 table:0];
  [v17 setAppTitle:v16];

  [v8 setShowAppFootnote:1];
  [v8 setShowThumbnailImage:1];
  [v8 setUseAppIconAsThumbnail:1];
}

+ (void)_configureCardInfo:(id)a3 forNSString:(id)a4 withConfig:(id)a5
{
  v9 = a5;
  v7 = a4;
  v8 = a3;
  [v8 setTitle:0];
  [v8 setSubtitle:v7];

  [v8 setImage:0];
  [v8 setBundleId:0];

  [v9 setMaxLinesForSubtitle:0];
  [v9 setShowThumbnailImage:0];
  [v9 setShowAppFootnote:0];
}

+ (void)_configureCardInfo:(id)a3 forHeroApp:(id)a4 withConfig:(id)a5
{
  v29 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 clipMetadata];

  if (v9)
  {
    v10 = [v7 clipMetadata];
    v11 = [v10 clipName];
    [v29 setTitle:v11];

    v12 = [v10 localizedTitleForClipSuggestion];
    [v29 setAppTitle:v12];

    v13 = [v10 localizedSubtitleForClipSuggestion];
    [v29 setSubtitle:v13];

    v14 = [v10 clipBundleID];
    [v29 setBundleId:v14];

    v15 = [v10 fullAppCachedIconFilePath];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277D4C6B8]);
      v17 = MEMORY[0x277CBEBC0];
      v18 = [v10 fullAppCachedIconFilePath];
      v19 = [v17 fileURLWithPath:v18];
      v20 = [v16 initWithURL:v19];
      [v29 setImage:v20];
    }

    else
    {
      v21 = [v10 clipBusinessIconURL];

      if (v21)
      {
        v22 = objc_alloc(MEMORY[0x277D4C6B8]);
        v23 = [v10 clipBusinessIconURL];
      }

      else
      {
        v24 = [v10 fullAppIconURL];

        if (!v24)
        {
LABEL_10:
          v25 = objc_alloc_init(MEMORY[0x277D4C1A8]);
          [v29 setActionItem:v25];

          v26 = [v10 clipOpenButtonTitle];
          v27 = [v26 uppercaseString];
          v28 = [v29 actionItem];
          [v28 setLabel:v27];

          [v8 setShowActionButton:1];
          [v8 setShowThumbnailImage:1];
          [v8 setUseAppIconAsThumbnail:0];
          [v8 setShowAppFootnote:0];
          [v8 setMaxLinesForSubtitle:2];

          goto LABEL_11;
        }

        v22 = objc_alloc(MEMORY[0x277D4C6B8]);
        v23 = [v10 fullAppIconURL];
      }

      v18 = v23;
      v19 = [v22 initWithURL:v23];
      [v29 setImage:v19];
    }

    goto LABEL_10;
  }

LABEL_11:
}

+ (void)_configureCardInfo:(id)a3 forATXAction:(id)a4 withConfig:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = __atxlog_handle_ui();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [APUIActionCardUtils _configureCardInfo:v11 forATXAction:? withConfig:?];
  }

  v12 = [v8 title];
  if (v12)
  {
    [v8 setTitle:v12];
  }

  else
  {
    v13 = [v9 actionTitle];
    [v8 setTitle:v13];
  }

  v14 = [v8 subtitle];
  v15 = [a1 _subtitleForAction:v9 default:v14];
  [v8 setSubtitle:v15];

  if ([v9 actionType] == 1)
  {
    v16 = [v9 userActivity];
    [a1 _configureCardInfo:v8 forNSUserActivity:v16 withConfig:v10];
LABEL_14:

    goto LABEL_15;
  }

  if ([v9 actionType] == 5)
  {
    v16 = [v9 userActivityProxy];
    [a1 _configureCardInfo:v8 forUAUserActivityProxy:v16 withConfig:v10];
    goto LABEL_14;
  }

  if (![v9 actionType] || objc_msgSend(v9, "actionType") == 2)
  {
    v16 = [v9 intent];
    [a1 _configureCardInfo:v8 forINIntent:v16 withConfig:v10];
    v17 = [v16 _className];
    v18 = [v17 isEqualToString:@"DNDToggleDoNotDisturbIntent"];

    if (v18)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"Do Not Disturb" value:&stru_2851FF3F8 table:0];
      [v8 setAppTitle:v20];
    }

    goto LABEL_14;
  }

LABEL_15:
  v21 = [v8 bundleId];
  v22 = [v21 length];

  if (!v22)
  {
    v23 = [v9 _bundleIdForDisplay];
    [v8 setBundleId:v23];
  }

  v24 = [v8 bundleId];
  v25 = [v24 isEqualToString:@"com.apple.mobilecal"];

  if (v25)
  {
    v26 = [v9 dateForAction];
    if (v26)
    {
      v27 = [objc_alloc(MEMORY[0x277D4C838]) initWithDate:v26 variant:4];
      [v8 setImage:v27];
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

      [v8 setImage:?];
    }
  }
}

+ (id)_subtitleForAction:(id)a3 default:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 actionSubtitle];
  }

  v9 = v8;
  v10 = [v5 routeInfo];
  if (v10 && (v11 = v10, [v5 routeInfo], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isExternalRoute"), v12, v11, (v13 & 1) != 0))
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"AirPlay to %@" value:&stru_2851FF3F8 table:0];
    v17 = [v5 routeInfo];
    v18 = [v17 deviceName];
    v19 = [v14 initWithFormat:v16, v18];

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

+ (void)_configureCardInfo:(id)a3 forVoiceShortcutWithPhrase:(id)a4 name:(id)a5 description:(id)a6 keyImage:(id)a7 applicationBundleIdentifier:(id)a8 config:(id)a9
{
  v28 = a3;
  v14 = a7;
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x277CCA8D8];
  v17 = a9;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = [v16 mainBundle];
  v23 = [v22 localizedStringForKey:@"“%@”" value:&stru_2851FF3F8 table:0];
  v24 = [v15 localizedStringWithFormat:v23, v21];

  [v28 setTitle:v24];
  [v28 setSubtitle:v20];

  [v28 setFootnote:v19];
  [v28 setBundleId:v18];

  v25 = [v17 useAppIconAsThumbnail];
  if (v14 && (v25 & 1) == 0)
  {
    v26 = [objc_alloc(MEMORY[0x277CD4608]) initWithIntentsImage:v14];
    [v28 setImage:v26];

    v27 = [v28 image];
    [v27 setCornerRoundingStyle:2];
  }
}

@end