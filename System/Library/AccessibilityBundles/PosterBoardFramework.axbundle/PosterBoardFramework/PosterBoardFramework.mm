id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:0 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29C187268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C18A3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C18B6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AXLockScreenPostersCount(void *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 _accessibilitySubviews];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        MEMORY[0x29C2E7EC0](@"PosterBoard.LockScreenPosterCollectionViewCell");
        if (objc_opt_isKindOfClass())
        {
          [v7 accessibilityFrame];
          if (v8 > 0.0)
          {
            ++v4;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v4;
}

id AXPosterProvider(void *a1)
{
  v1 = [a1 safeValueForKeyPath:@"posterDescriptorLookupInfo.posterDescriptorPath.identity"];
  v2 = [v1 safeStringForKey:@"provider"];

  return v2;
}

__CFString *AXWallpaperIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 safeValueForKeyPath:@"_posterPreviewContentView._posterPreview"];
  v3 = MEMORY[0x29C2E7ED0](@"PBFPosterPreview");
  v4 = [v2 conformsToProtocol:v3];

  if (!v4)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v5 = [v2 safeValueForKeyPath:@"posterDescriptorLookupInfo.posterDescriptorPath.identity"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 provider];
  v8 = [v6 descriptorIdentifier];
  v9 = _AXCombinedPosterPrefixWithID(v7, v8);

  if (!v9)
  {
LABEL_3:
    v10 = AXPreviewIdentifier(v1);
    v11 = [v10 componentsSeparatedByString:@":"];
    v9 = &stru_2A229E280;
    if ([v11 count] >= 2)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v11 objectAtIndexedSubscript:1];
      v14 = _AXCombinedPosterPrefixWithID(v12, v13);

      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = &stru_2A229E280;
      }

      v9 = v15;
    }
  }

  return v9;
}

id _AXCombinedPosterPrefixWithID(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:@"."];
  v5 = [v4 lastObject];

  if (v5)
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%@", v5, v3];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

id AXPreviewIdentifier(void *a1)
{
  v1 = [a1 safeUIViewForKey:@"_posterPreviewContentView"];
  v2 = [v1 accessibilityIdentifier];

  return v2;
}

void *AXMappedLabelOrValueForPosterPreview(void *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = AXWallpaperIdentifier(a1);
  v2 = AXConvertWallpaperId(v1);

  v3 = [v2 rangeOfString:@"+isNotSuggested"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 substringToIndex:v3];

    v2 = v4;
  }

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v2;
    _os_log_impl(&dword_29C185000, v5, OS_LOG_TYPE_DEFAULT, "WallpaperID: %@", buf, 0xCu);
  }

  v6 = AXCFormattedString();
  v7 = accessibilityLocalizedString(v6);
  if ([v7 isEqualToString:{v6, v2}])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

__CFString *AXConvertWallpaperId(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"V01-Earth"])
  {
    v2 = @"AegirPoster:V01-Earth-Full";
  }

  else if ([v1 containsString:@"V02-Moon"])
  {
    v2 = @"AegirPoster:V02-Moon-Full";
  }

  else if ([v1 containsString:@"7420"])
  {
    v2 = @"CollectionsPoster:7420";
  }

  else if ([v1 containsString:@"weather-poster-gallery"])
  {
    v2 = @"poster:weather-poster-gallery";
  }

  else if ([v1 containsString:@"PridePosterExtension:grid-fill"])
  {
    v2 = @"PridePosterExtension:grid";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t AXLayoutMode(void *a1)
{
  v1 = AXCollectionViewController(a1);
  v2 = [v1 safeSwiftValueForKey:@"layoutMode"];
  v3 = AXConvertToLayoutMode();

  return v3;
}

id AXCollectionViewController(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = [v1 contentView];
  v3 = [v2 window];
  v4 = [v3 safeValueForKey:@"_delegateViewController"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

id AXTopWidgetAndAppName(void *a1)
{
  v1 = a1;
  v2 = [v1 safeValueForKey:@"extensionIdentity"];
  v3 = [v2 safeStringForKey:@"containerBundleIdentifier"];
  v4 = AXAppNameForBundleId();

  v5 = accessibilityLocalizedString(@"editing.wrapper.inline.complication.label");
  v6 = [v1 safeStringForKey:@"displayName"];

  v9 = AXCFormattedString();
  v7 = __UIAXStringForVariables();

  return v7;
}

void AXMapAppNameToWidgets(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14 = v3;
    v4 = a1;
    v5 = [v4 safeValueForKey:@"extensionIdentity"];
    v6 = [v5 safeStringForKey:@"containerBundleIdentifier"];
    v7 = AXAppNameForBundleId();

    v8 = [v4 safeStringForKey:@"displayName"];

    if (v7 && v8)
    {
      v9 = accessibilityLocalizedString(@"editing.wrapper.grouped.complication.label");
      v10 = AXCFormattedString();

      v11 = [v14 objectForKey:{v7, v8}];

      if (!v11)
      {
        v12 = [MEMORY[0x29EDB8DE8] array];
        [v14 setObject:v12 forKey:v7];
      }

      v13 = [v14 objectForKey:v7];
      [v13 axSafelyAddObject:v10];
    }

    v3 = v14;
  }
}

id AXCenteredPosterCellInCollectionView(void *a1)
{
  v1 = a1;
  [v1 contentOffset];
  v3 = v2;
  [v1 contentOffset];
  v5 = v4;
  [v1 visibleSize];
  v7 = v6;
  [v1 visibleSize];
  v9 = v8;
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  v11 = [v1 indexPathForItemAtPoint:{MidX, CGRectGetMidY(v16)}];
  if (v11)
  {
    v12 = [v1 cellForItemAtIndexPath:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t AXConvertToLayoutMode()
{
  swift_unknownObjectRetain();
  sub_29C18C4D4();
  swift_unknownObjectRelease();
  sub_29C18C384(v4, v3);
  type metadata accessor for PRUISSwitcherLayoutMode();
  if (swift_dynamicCast())
  {
    v0 = v2;
  }

  else
  {
    v0 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  return v0;
}

uint64_t sub_29C18C384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for PRUISSwitcherLayoutMode()
{
  if (!qword_2A1791968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2A1791968);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2A1C735A8](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t AXConvertToLayoutMode(_:)(uint64_t a1)
{
  sub_29C18C384(a1, v3);
  type metadata accessor for PRUISSwitcherLayoutMode();
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}