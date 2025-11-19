id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A233B520 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id accessibilityRetrieveLabelForSource(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"trailer"])
  {
    v2 = @"trailer.label";
LABEL_17:
    v3 = accessibilityLocalizedString(v2);
    goto LABEL_18;
  }

  if ([v1 containsString:@"button-play"])
  {
    v2 = @"play.button";
    goto LABEL_17;
  }

  if ([v1 containsString:@"popover-more"])
  {
    v2 = @"more.button";
    goto LABEL_17;
  }

  if ([v1 containsString:@"popover-share"])
  {
    v2 = @"share.button";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"resource://ActionMenu-Add"])
  {
    v2 = @"add.button";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"resource://ActionMenu-Remove"])
  {
    v2 = @"remove.button";
    goto LABEL_17;
  }

  if ([v1 containsString:@"Actions_AddGlyph"])
  {
    v2 = @"add.hint";
    goto LABEL_17;
  }

  if ([v1 containsString:@"Actions_CheckGlyph"])
  {
    v2 = @"remove.hint";
    goto LABEL_17;
  }

  if ([v1 containsString:@"tomato-certified"])
  {
    v5 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v6 = [v5 atvaccessibilityLocalizedString:@"tv.tomato.rating"];
    v7 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v8 = v7;
    v9 = @"tv.freshness.certified.fresh";
LABEL_28:
    v12 = [v7 atvaccessibilityLocalizedString:v9];
    v3 = __AXStringForVariables();

LABEL_29:
    goto LABEL_18;
  }

  if ([v1 containsString:@"tomato-fresh"])
  {
    v5 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v6 = [v5 atvaccessibilityLocalizedString:@"tv.tomato.rating"];
    v7 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v8 = v7;
    v9 = @"tv.freshness.fresh";
    goto LABEL_28;
  }

  if (([v1 containsString:@"tomato-rotten"] & 1) != 0 || objc_msgSend(v1, "containsString:", @"tomato-splat"))
  {
    v5 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v6 = [v5 atvaccessibilityLocalizedString:@"tv.tomato.rating"];
    v7 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v8 = v7;
    v9 = @"tv.freshness.rotten";
    goto LABEL_28;
  }

  if ([v1 isEqualToString:@"resource://overlay-checkmark"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"tv.played";
LABEL_49:
    v3 = [v10 atvaccessibilityLocalizedString:v11];
    goto LABEL_29;
  }

  if ([v1 isEqualToString:@"resource://cc"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.closed.captions";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://metadata-ad"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.ad";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://dolby-vision"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.dolby-vision";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://dolby-atmos"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.dolby-atmos";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://4k"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.4k";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://hdr"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.hdr";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://metadata-sdh"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.sdh";
    goto LABEL_49;
  }

  if (([v1 isEqualToString:@"resource://videos-HD"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"resource://hd"))
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.hd";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://mpaa-g"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.g";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://mpaa-pg"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.pg";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://mpaa-pg13"])
  {
LABEL_55:
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.pg13";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://mpaa-r"])
  {
LABEL_57:
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.r";
    goto LABEL_49;
  }

  if (([v1 isEqualToString:@"resource://mpaa-nr"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"resource://nr"))
  {
LABEL_60:
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.nr";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"unrated"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.unrated";
    goto LABEL_49;
  }

  if ([v1 containsString:@"common-sense-badge"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"tv.common.sense";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-g"])
  {
    goto LABEL_66;
  }

  if ([v1 isEqualToString:@"resource://tv-pg13"])
  {
    goto LABEL_55;
  }

  if ([v1 isEqualToString:@"resource://tv-ma"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.tvma";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-nr"])
  {
    goto LABEL_60;
  }

  if ([v1 isEqualToString:@"resource://tv-r"])
  {
    goto LABEL_57;
  }

  if ([v1 isEqualToString:@"resource://tv-nc17"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.nc17";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-y7fv"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.tvy7fv";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-y7"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.tvy7";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-y"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.tvy";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-pg"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.tvpg";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-g"])
  {
LABEL_66:
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.tvg";
    goto LABEL_49;
  }

  if ([v1 isEqualToString:@"resource://tv-14"])
  {
    v10 = [MEMORY[0x29EDBDDF0] sharedInstance];
    v5 = v10;
    v11 = @"axid.icon.rating.tv14";
    goto LABEL_49;
  }

  v3 = 0;
LABEL_18:

  return v3;
}

id accessibilityLabelForTVView(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = [v1 safeValueForKey:@"tv_AccessibilityText"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v1 _accessibilityValueForKey:@"AXTVMLKitAccessibilityTextOverrideKey"];
  if ([v1 _accessibilityBoolValueForKey:@"AXTVMLKitPrefersAccessibilityTextOverrideKey"])
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;
  if (![v6 length])
  {
    if ([v3 length])
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    v6 = v8;
  }

  v9 = [v1 tv_associatedIKViewElement];
  v10 = [v9 attributes];
  v11 = [v10 objectForKeyedSubscript:@"src"];
  if (!v11)
  {
    v11 = [v10 objectForKeyedSubscript:@"srcset"];
  }

  v14 = accessibilityRetrieveLabelForSource(v11);
  v12 = __UIAXStringForVariables();

  return v12;
}

void sub_29C497690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 120));
  objc_destroyWeak((v5 - 112));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_29C497964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}