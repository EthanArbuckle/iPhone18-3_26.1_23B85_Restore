@interface AXCharacterSoundMap
- (AXCharacterSoundMap)init;
- (id)_linguisticStringForCharacter:(id)a3 language:(id)a4 linguisticType:(int64_t)a5 andVoiceIdentifier:(id)a6;
@end

@implementation AXCharacterSoundMap

- (AXCharacterSoundMap)init
{
  v7.receiver = self;
  v7.super_class = AXCharacterSoundMap;
  v2 = [(AXCharacterSoundMap *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    phDictionaries = v2->_phDictionaries;
    v2->_phDictionaries = v3;

    v5 = v2;
  }

  return v2;
}

- (id)_linguisticStringForCharacter:(id)a3 language:(id)a4 linguisticType:(int64_t)a5 andVoiceIdentifier:(id)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = AXLanguageConvertToCanonicalForm(v11);
  v14 = AXLanguageCanonicalFormToGeneralLanguage(v11);
  if ([(__CFString *)v14 isEqualToString:@"no"])
  {

    v14 = @"nb";
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v69 = v11;
  v66 = a5;
  if (a5)
  {
    if (a5 != 1)
    {
      v18 = 0;
      v19 = 0;
      v16 = 0;
      goto LABEL_9;
    }

    v16 = @"AXPhonemes/";
    v17 = @"%@@phonemes";
  }

  else
  {
    v16 = @"AXPhonetics/";
    v17 = @"%@@phonetics";
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:v17, v13];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:v17, v14];
LABEL_9:
  v20 = [(NSMutableDictionary *)self->_phDictionaries objectForKey:v18];
  v70 = v14;
  v62 = v12;
  v63 = v10;
  v67 = v18;
  v68 = v13;
  v64 = self;
  v65 = v19;
  if (v20 || ([(NSMutableDictionary *)self->_phDictionaries objectForKey:v19], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    goto LABEL_12;
  }

  v38 = MEMORY[0x1E696AEC0];
  v39 = [v13 componentsSeparatedByString:@"-"];
  v40 = [v39 firstObject];
  v41 = [v13 componentsSeparatedByString:@"-"];
  v42 = [v41 lastObject];
  v43 = [v42 uppercaseString];
  v44 = [v38 stringWithFormat:@"%@_%@", v40, v43];

  v45 = AXSAccessibilityUtilitiesPath();
  v61 = v44;
  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v44];
  v47 = [(__CFString *)v16 stringByAppendingString:v46];
  v48 = [v45 stringByAppendingPathComponent:v47];

  v49 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v48];
  if (v49)
  {
    v21 = v49;
LABEL_39:

    goto LABEL_12;
  }

  v50 = AXSAccessibilityUtilitiesPath();
  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v70];
  v52 = [(__CFString *)v16 stringByAppendingString:v51];
  v53 = [v50 stringByAppendingPathComponent:v52];

  v54 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v53];
  if (v54)
  {
    v21 = v54;
    v48 = v53;
    goto LABEL_39;
  }

  v55 = [(__CFString *)v70 uppercaseString];
  v56 = [(__CFString *)v70 stringByAppendingFormat:@"_%@", v55];

  v57 = AXSAccessibilityUtilitiesPath();
  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v56];
  v59 = [(__CFString *)v16 stringByAppendingString:v58];
  v60 = [v57 stringByAppendingPathComponent:v59];

  v21 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v60];

  v30 = v68;
  if (!v21)
  {
    v31 = v56;
    goto LABEL_22;
  }

  v69 = v56;
LABEL_12:
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v72;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v72 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v71 + 1) + 8 * i);
        v28 = [v22 objectForKey:v27];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [v28 stringByReplacingOccurrencesOfString:@"_ESC_" withString:@"\x1B"];

          v28 = v29;
        }

        [v15 setObject:v28 forKey:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v24);
  }

  v12 = v62;
  v10 = v63;
  v30 = v68;
  v31 = v69;
LABEL_22:
  [(NSMutableDictionary *)v64->_phDictionaries setObject:v15 forKey:v67];
  v32 = [v10 lowercaseString];
  v33 = [v15 objectForKey:v32];

  if (v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = v33;
    if (v33)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v34 = [v33 objectForKey:v12];
  if (!v34)
  {
    v34 = [v33 objectForKey:@"default"];
  }

  v35 = [v33 objectForKey:@"ipa"];
  if (v35)
  {
    [v34 setIPASpeechPhonemes:v35];
  }

  if (!v34)
  {
LABEL_31:
    v36 = [v10 uppercaseString];
    v34 = [v15 objectForKey:v36];
  }

LABEL_32:

  return v34;
}

@end