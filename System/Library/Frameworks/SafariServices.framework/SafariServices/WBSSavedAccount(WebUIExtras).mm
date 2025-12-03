@interface WBSSavedAccount(WebUIExtras)
- (id)_firstSiteMatchingSearchPattern:()WebUIExtras withTokenizer:;
- (void)safari_getTitle:()WebUIExtras detail:forTableViewCell:withSearchPattern:emphasizeUserName:;
@end

@implementation WBSSavedAccount(WebUIExtras)

- (id)_firstSiteMatchingSearchPattern:()WebUIExtras withTokenizer:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  userVisibleSites = [self userVisibleSites];
  v8 = [userVisibleSites countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(userVisibleSites);
      }

      v12 = *(*(&v23 + 1) + 8 * v11);
      if ([self stringMatchesPatternWithTokenizer:a4 string:v12 pattern:v6 matchingType:1])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [userVisibleSites countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    userVisibleSites = [self sites];
    v13 = [userVisibleSites countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (!v13)
    {
LABEL_17:
      v17 = 0;
      goto LABEL_19;
    }

    v14 = v13;
    v15 = *v20;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(userVisibleSites);
      }

      v12 = *(*(&v19 + 1) + 8 * v16);
      if ([self stringMatchesPatternWithTokenizer:a4 string:v12 pattern:v6 matchingType:1])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [userVisibleSites countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  v17 = v12;
LABEL_19:

  return v17;
}

- (void)safari_getTitle:()WebUIExtras detail:forTableViewCell:withSearchPattern:emphasizeUserName:
{
  v71[1] = *MEMORY[0x1E69E9840];
  v59 = a5;
  v10 = a6;
  v61 = a7;
  if (a7)
  {
    user = [self user];
    userVisibleDomain = [self userVisibleDomain];
    v62 = _WBSLocalizedString();
    v13 = _WBSLocalizedString();
    customTitle = [self customTitle];
    v15 = [customTitle length];

    v60 = v13;
    if (!v15)
    {
      user2 = userVisibleDomain;
      goto LABEL_18;
    }

    v16 = MEMORY[0x1E696AEC0];
    customTitle2 = [self customTitle];
    if ([userVisibleDomain length])
    {
      v18 = userVisibleDomain;
    }

    else
    {
      v18 = v13;
    }

    user2 = [v16 stringWithFormat:@"%@ — %@", customTitle2, v18];
    goto LABEL_16;
  }

  user = [self effectiveTitle];
  v62 = _WBSLocalizedString();
  user2 = [self user];
  v60 = _WBSLocalizedString();
  customTitle2 = [self customTitle];
  if ([customTitle2 length])
  {
    userVisibleDomain = [self userVisibleDomain];
    if ([userVisibleDomain length])
    {
      v20 = user;
      customTitle3 = [self customTitle];
      userVisibleDomain2 = [self userVisibleDomain];
      v23 = [customTitle3 isEqualToString:userVisibleDomain2];

      if (v23)
      {
        user = v20;
        goto LABEL_18;
      }

      v24 = MEMORY[0x1E696AEC0];
      if ([user2 length])
      {
        v25 = user2;
      }

      else
      {
        v25 = v60;
      }

      customTitle2 = [self userVisibleDomain];
      [v24 stringWithFormat:@"%@ — %@", v25, customTitle2];
      user2 = userVisibleDomain = user2;
      user = v20;
    }

LABEL_16:
  }

LABEL_18:
  v63 = v10;
  if ([v10 length])
  {
    v26 = *MEMORY[0x1E695E480];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v72.location = 0;
    v72.length = 0;
    v28 = CFStringTokenizerCreate(v26, 0, v72, 0, currentLocale);
  }

  else
  {
    v28 = 0;
  }

  v29 = [user length];
  v30 = objc_alloc(MEMORY[0x1E696AD40]);
  v31 = *MEMORY[0x1E69DB648];
  v58 = user;
  if (v29)
  {
    v70 = *MEMORY[0x1E69DB648];
    v32 = +[_SFAccountManagerAppearanceValues titleFontForNarrowCell];
    v71[0] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v34 = [v30 initWithString:user attributes:v33];

    if (v61)
    {
      v35 = 0;
    }

    else
    {
      customTitle4 = [self customTitle];
      v40 = [customTitle4 length];

      if (v40)
      {
        v35 = 3;
      }

      else
      {
        v35 = 1;
      }
    }

    v36 = +[_SFAccountManagerAppearanceValues titleFontForNarrowCell];
    highlightMatchingRanges(v28, v34, v10, v35, v36);
  }

  else
  {
    v68[0] = *MEMORY[0x1E69DB648];
    v36 = +[_SFAccountManagerAppearanceValues titleFontForNarrowCell];
    v69[0] = v36;
    v68[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v69[1] = secondaryLabelColor;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
    v34 = [v30 initWithString:v62 attributes:v38];
  }

  v41 = v34;
  *a3 = v34;
  v42 = [user2 length];
  v43 = objc_alloc(MEMORY[0x1E696AD40]);
  if (v42)
  {
    v66 = v31;
    v44 = [_SFAccountManagerAppearanceValues subtitleFontForNarrowCellWithText:user2];
    v67 = v44;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v46 = [v43 initWithString:user2 attributes:v45];

    if (v61)
    {
      customTitle5 = [self customTitle];
      v48 = [customTitle5 length];

      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 1;
      }
    }

    else
    {
      v49 = 0;
    }

    v51 = [_SFAccountManagerAppearanceValues subtitleFontForNarrowCellWithText:user2];
    v54 = v10;
    highlightMatchingRanges(v28, v46, v10, v49, v51);
    v50 = v60;
  }

  else
  {
    v64[0] = v31;
    v50 = v60;
    v51 = [_SFAccountManagerAppearanceValues subtitleFontForNarrowCellWithText:v60];
    v65[0] = v51;
    v64[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v65[1] = secondaryLabelColor2;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    v46 = [v43 initWithString:v60 attributes:v53];

    v54 = v63;
  }

  v55 = v46;
  *a4 = v46;
  if (v28)
  {
    CFRelease(v28);
  }
}

@end