@interface UITextInteraction
@end

@implementation UITextInteraction

void __74__UITextInteraction_QSExtras__updatedAccessibilityTextSpeechMenuWithMenu___block_invoke(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x29EDCA608];
  v43 = a2;
  v55 = +[AXQuickSpeak sharedInstance];
  v47 = [v55 selectedContent];
  v44 = [v47 unpredictedAmbiguousLangMaps];
  v45 = [v47 predictedSecondaryLangMaps];
  v46 = [v47 unambiguousLangMaps];
  v2 = v46;
  if ([v46 count] < 2)
  {
    if ([v46 count] != 1)
    {
      v57 = 0;
      goto LABEL_7;
    }

    v4 = MEMORY[0x29EDBA0F8];
    v3 = accessibilityQuickSpeakLocalizedString(@"quickspeak.one.nonambiguous.language");
    v5 = [v46 firstObject];
    v6 = [v5 defaultDialect];
    v7 = [v6 languageNameInNativeLocale];
    v57 = [v4 stringWithFormat:v3, v7];
  }

  else
  {
    v3 = accessibilityQuickSpeakLocalizedString(@"quickspeak.many.languages");
    v57 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v3, objc_msgSend(v46, "count")];
  }

  v2 = v46;
LABEL_7:
  v8 = v45;
  if (v45 && [v2 intersectsOrderedSet:v45])
  {
    v9 = AXLogSpeakSelection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v74 = v45;
      v75 = 2112;
      v76 = v46;
      _os_log_impl(&dword_29C1E5000, v9, OS_LOG_TYPE_INFO, "Secondary maps contained langs in non ambiguous maps. Secondary Maps: %@ Non-ambiguous Maps: %@", buf, 0x16u);
    }

    v8 = v45;
  }

  v10 = v8 == 0;
  v54 = [MEMORY[0x29EDB8DE8] array];
  v11 = [MEMORY[0x29EDB8E10] orderedSet];
  [v11 unionOrderedSet:v44];
  if (!v10)
  {
    v12 = [v47 primaryUnambiguousDialect];
    v13 = v12 == 0;

    if (v13)
    {
      v15 = [v47 primaryAmbiguousDialect];
      v16 = v15 == 0;

      if (v16)
      {
LABEL_18:
        [v11 unionOrderedSet:v45];
        goto LABEL_19;
      }

      v14 = [v47 primaryAmbiguousDialect];
    }

    else
    {
      v14 = [v47 primaryUnambiguousDialect];
    }

    v17 = v14;
    v18 = [v14 langMap];
    [v11 addObject:v18];

    goto LABEL_18;
  }

LABEL_19:
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v66 = 0u;
  obj = v11;
  v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v50)
  {
    v49 = *v67;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v67 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v66 + 1) + 8 * i);
        v19 = [v56 associatedAmbiguousLanguages];
        v20 = [MEMORY[0x29EDBDF80] sharedInstance];
        v21 = [v20 systemLanguageID];
        v22 = [v19 containsObject:v21];

        if ((v22 & 1) == 0)
        {
          v23 = [v56 defaultDialect];
          v71 = v23;
          v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v71 count:1];

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v52 = v24;
          v25 = [v52 countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (!v25)
          {
            goto LABEL_40;
          }

          v26 = *v63;
          while (1)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v63 != v26)
              {
                objc_enumerationMutation(v52);
              }

              v28 = *(*(&v62 + 1) + 8 * j);
              v29 = [MEMORY[0x29EDBDF80] sharedInstance];
              v30 = [v29 dialectForCurrentLocale];
              v31 = [v30 langMap];
              if ([v56 isEqual:v31])
              {
                v32 = [MEMORY[0x29EDBDF80] sharedInstance];
                v33 = [v32 dialectForCurrentLocale];
                v34 = [v28 isEqual:v33];

                if (!v34)
                {
                  continue;
                }
              }

              else
              {
              }

              v35 = [v28 languageNameInNativeLocale];
              v36 = v35;
              if (v57)
              {
                v37 = MEMORY[0x29EDBA0F8];
                v38 = accessibilityQuickSpeakLocalizedString(@"quickspeak.preferred.language");
                v39 = [v37 stringWithFormat:v38, v36, v57];
              }

              else
              {
                v39 = v35;
              }

              v40 = MEMORY[0x29EDC7908];
              v58[0] = MEMORY[0x29EDCA5F8];
              v58[1] = 3221225472;
              v58[2] = __74__UITextInteraction_QSExtras__updatedAccessibilityTextSpeechMenuWithMenu___block_invoke_320;
              v58[3] = &unk_29F2F0298;
              v59 = v55;
              objc_copyWeak(&v61, (a1 + 32));
              v60 = v28;
              v41 = [v40 actionWithTitle:v39 image:0 identifier:0 handler:v58];
              [v54 addObject:v41];

              objc_destroyWeak(&v61);
            }

            v25 = [v52 countByEnumeratingWithState:&v62 objects:v70 count:16];
            if (!v25)
            {
LABEL_40:

              break;
            }
          }
        }
      }

      v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v50);
  }

  v43[2](v43, v54);
  v42 = *MEMORY[0x29EDCA608];
}

void __74__UITextInteraction_QSExtras__updatedAccessibilityTextSpeechMenuWithMenu___block_invoke_320(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 40) specificLanguageID];
  [v2 speakAction:WeakRetained withPreferredLanguage:v3];
}

@end