id AXVectorKitLocString(void *a1)
{
  v1 = a1;
  if (AXVectorKitLocString_onceToken != -1)
  {
    AXVectorKitLocString_cold_1();
  }

  if (AXVectorKitLocString_bundle)
  {
    v2 = [AXVectorKitLocString_bundle localizedStringForKey:v1 value:&stru_2A2395E90 table:@"Accessibility"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __AXVectorKitLocString_block_invoke()
{
  v0 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.VectorKit.axbundle"];
  v1 = AXVectorKitLocString_bundle;
  AXVectorKitLocString_bundle = v0;
}

id AXMapKitLocString(void *a1)
{
  v1 = a1;
  if (AXMapKitLocString_onceToken != -1)
  {
    AXMapKitLocString_cold_1();
  }

  if (AXMapKitLocString_bundle)
  {
    v2 = [AXMapKitLocString_bundle localizedStringForKey:v1 value:&stru_2A2395E90 table:@"Accessibility"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __AXMapKitLocString_block_invoke()
{
  v0 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MapKitFramework.axbundle"];
  v1 = AXMapKitLocString_bundle;
  AXMapKitLocString_bundle = v0;
}

id AXMapsLocString(void *a1)
{
  v1 = a1;
  if (AXMapsLocString_onceToken != -1)
  {
    AXMapsLocString_cold_1();
  }

  if (AXMapsLocString_bundle)
  {
    v2 = [AXMapsLocString_bundle localizedStringForKey:v1 value:&stru_2A2395E90 table:@"Accessibility-Maps"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __AXMapsLocString_block_invoke()
{
  v0 = [MEMORY[0x29EDB9F48] accessibilityBundleWithLastPathComponent:@"Maps.axbundle"];
  v1 = AXMapsLocString_bundle;
  AXMapsLocString_bundle = v0;
}

id AXStringByReplacingMiddleDots(void *a1)
{
  v1 = AXStringByReplacingMiddleDots_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXStringByReplacingMiddleDots_cold_1();
  }

  v3 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = [v4 stringByTrimmingCharactersInSet:AXStringByReplacingMiddleDots_MiddleDotCharacterSet];

  v6 = [v5 componentsSeparatedByCharactersInSet:AXStringByReplacingMiddleDots_MiddleDotCharacterSet];
  v7 = [v6 ax_flatMappedArrayUsingBlock:&__block_literal_global_311];

  v8 = [v7 componentsJoinedByString:{@", "}];

  return v8;
}

void __AXStringByReplacingMiddleDots_block_invoke()
{
  v0 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"·"];
  v1 = AXStringByReplacingMiddleDots_MiddleDotCharacterSet;
  AXStringByReplacingMiddleDots_MiddleDotCharacterSet = v0;
}

id __AXStringByReplacingMiddleDots_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDB9F50];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (![v5 length])
  {

    v5 = 0;
  }

  return v5;
}

id AXShortAddressDescriptionForPlacemark(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v5 = [v3 subThoroughfare];
  v6 = [v5 length];
  v7 = v6 != 0;
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v5 rangeOfString:@"-"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 appendString:v5];
LABEL_4:
    v8 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x29EDBA0F8];
  v10 = AXVectorKitLocString(@"BETWEEN_ADDRESS_RANGE");
  v11 = [v9 localizedStringWithFormat:v10, v5];
  [v4 appendString:v11];

  v8 = 1;
LABEL_6:
  v12 = [v3 thoroughfare];

  if ([v12 length])
  {
    if (v6)
    {
      [v4 appendString:@" "];
    }

    if (v8)
    {
      v13 = MEMORY[0x29EDBA0F8];
      v14 = AXVectorKitLocString(@"ON_ROAD");
      v15 = [v13 localizedStringWithFormat:v14, v12];
      [v4 appendString:v15];
    }

    else
    {
      [v4 appendString:v12];
    }

    v7 = 1;
  }

  if (!v7 || a2)
  {
    v16 = [v3 subLocality];

    if ([v16 length])
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
      }

      [v4 appendString:v16];
      v7 = 1;
    }

    v17 = [v3 locality];

    if ([v17 length])
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
      }

      [v4 appendString:v17];
      v7 = 1;
    }

    v18 = [v3 subAdministrativeArea];

    if ([v18 length])
    {
      v19 = [v3 locality];
      v20 = [v18 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        if (v7)
        {
          [v4 appendString:{@", "}];
        }

        [v4 appendString:v18];
        v7 = 1;
      }
    }

    v12 = [v3 administrativeArea];

    if ([v12 length])
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
      }

      [v4 appendString:v12];
    }
  }

  if ([v4 length])
  {
    v21 = v4;
  }

  else
  {
    v22 = [v3 formattedAddressLines];
    v21 = [v22 componentsJoinedByString:@"\n"];
  }

  return v21;
}

id AXNotificationsForMapAccessibilityClients()
{
  v4[4] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDC83E8];
  v4[0] = *MEMORY[0x29EDC8538];
  v4[1] = v0;
  v1 = *MEMORY[0x29EDC8418];
  v4[2] = *MEMORY[0x29EDC8400];
  v4[3] = v1;
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:4];

  return v2;
}

uint64_t AXRequiresMapAccessibilityPurelyForAutomation()
{
  result = _AXSAutomationEnabled();
  if (result)
  {
    return !AXRequiresMapAccessibilityForAccessibilityTechnology();
  }

  return result;
}

BOOL AXRequiresLongerTimeouts()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

id AXPublisherDescriptionForCollection(void *a1)
{
  v1 = [a1 safeValueForKey:@"publisherAttribution"];
  v2 = [v1 safeStringForKey:@"displayName"];

  return v2;
}

id AXClockDescriptionForHeadingInDegrees(double a1)
{
    ;
  }

    ;
  }

  v2 = llround(a1 / 30.0);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 12;
  }

  v4 = MEMORY[0x29EDBA0F8];
  v5 = AXVectorKitLocString(@"CLOCK_DIRECTION");
  v6 = [v4 localizedStringWithFormat:v5, v3];

  return v6;
}

id AXMapWidthScaleString(double a1, double a2, double a3)
{
  v6 = [MEMORY[0x29EDB8DE0] currentLocale];
  v7 = [v6 _navigation_distanceUsesMetricSystem];

  v17.x = a1 + a3;
  v16.x = a1;
  v16.y = a2;
  v17.y = a2;
  v8 = MKMetersBetweenMapPoints(v16, v17);
  v9 = 1609.344;
  if (v7)
  {
    v9 = 1000.0;
    v10 = @"MAP_DISTANCE_KM";
  }

  else
  {
    v10 = @"MAP_DISTANCE_M";
  }

  v11 = v8 / v9;
  v12 = AXVectorKitLocString(v10);
  v13 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v12, *&v11];

  return v13;
}

id AXMapHeightScaleString(double a1, double a2, double a3, double a4)
{
  v7 = [MEMORY[0x29EDB8DE0] currentLocale];
  v8 = [v7 _navigation_distanceUsesMetricSystem];

  v18.y = a2 + a4;
  v17.x = a1;
  v17.y = a2;
  v18.x = a1;
  v9 = MKMetersBetweenMapPoints(v17, v18);
  v10 = 1609.344;
  if (v8)
  {
    v10 = 1000.0;
    v11 = @"MAP_DISTANCE_KM";
  }

  else
  {
    v11 = @"MAP_DISTANCE_M";
  }

  v12 = v9 / v10;
  v13 = AXVectorKitLocString(v11);
  v14 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v13, *&v12];

  return v14;
}

void sub_29C6F3788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_29C6F45F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id AXVKAccessibilityPaths(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a1;
  v5 = [MEMORY[0x29EDB8DE8] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) != 0 && (!a3 || [v10 mapFeatureType] == a3))
        {
          v11 = [v10 accessibilityPath];
          v12 = v11;
          v13 = [v11 CGPath];

          if (!CGPathIsEmpty(v13))
          {
            [v5 addObject:v13];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v5;
}

id AXVKAccessibilityPoints(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = a1;
  v5 = [MEMORY[0x29EDB8DE8] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) != 0 && (!a3 || [v9 mapFeatureType] == a3))
        {
          v10 = v9[19];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v12)
          {
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                [v5 addObjectsFromArray:*(*(&v17 + 1) + 8 * j)];
              }

              v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v5;
}

BOOL AXVKBuildingShouldBeVisible(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 accessibilityZoomLevel];
  v6 = v5;
  v7 = AXVKFeatureMaxVisibleLength(v3, v4) > 30.0;
  v8 = v6 >= 17.0 && v7;

  return v8;
}

double AXVKFeatureMaxVisibleLength(void *a1, void *a2)
{
  v3 = a2;
  v20.origin.x = AXVKFeatureScreenBounds(a1, v3);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v8 = CGRectGetWidth(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v9 = CGRectGetHeight(v21);
  [v3 bounds];
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v14 = CGRectIntersectsRect(v22, v23);
  v15 = v8;
  v16 = v9;
  v17 = sqrtf((v15 * v15) + (v16 * v16));
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  return v18;
}

double AXVKFeatureScreenBounds(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  GEOMultiSectionFeatureBounds();
  v5 = [v3 feature];
  v6 = [v5 containingTile];
  [v6 geoTileKey];

  VKWorldBoundsFromGEOTileKey();
  VKLocationCoordinate2DForVKPoint();
  v8 = v7;
  v10 = v9;
  VKLocationCoordinate2DForVKPoint();
  v12 = v11;
  v14 = v13;
  [v4 accessibilityConvertCoordinateToWindow:{v8, v10}];
  v16 = v15;
  [v4 accessibilityConvertCoordinateToWindow:{v12, v14}];
  if (v16 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  return v18;
}

BOOL AXVKFeatureEqualToFeature(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 containingTile];
    v8 = [v5 containingTile];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) != 0 && (v10 = [v3 labelOffset], v10 == objc_msgSend(v5, "labelOffset")) && (v11 = objc_msgSend(v3, "labelCount"), v11 == objc_msgSend(v5, "labelCount")) && (v12 = objc_msgSend(v3, "shieldOffset"), v12 == objc_msgSend(v5, "shieldOffset")) && (v13 = objc_msgSend(v3, "shieldCount"), v13 == objc_msgSend(v5, "shieldCount")) && (v14 = objc_msgSend(v3, "styleID"), v14 == objc_msgSend(v5, "styleID")) && (v15 = objc_msgSend(v3, "featureID"), v15 == objc_msgSend(v5, "featureID")) && (!objc_msgSend(v3, "hasBusinessID") || !objc_msgSend(v5, "hasBusinessID") || (v16 = objc_msgSend(v3, "businessID"), v16 == objc_msgSend(v5, "businessID"))) && (objc_msgSend(v3, "minZoomRank"), v18 = v17, objc_msgSend(v5, "minZoomRank"), v18 == v19) && (v20 = objc_msgSend(v3, "flyoverAnimationID"), v20 == objc_msgSend(v5, "flyoverAnimationID")))
    {
      v21 = [v3 type];
      v6 = v21 == [v5 type];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_29C6F5A68(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

unint64_t AXVKFeatureHash(void *a1)
{
  v1 = a1;
  v2 = [v1 containingTile];
  v3 = [v2 hash];

  v4 = AXVKFeatureLabelsAndShieldsHash(v1);
  v5 = [v1 styleID];
  v6 = [v1 featureID] + 53 * (53 * (v4 + 53 * v3 + 2809) + v5);
  if ([v1 hasBusinessID])
  {
    v6 = [v1 businessID] + 53 * v6;
  }

  [v1 minZoomRank];
  v8 = v7;
  v9 = [v1 flyoverAnimationID];
  v10 = 53 * (v9 + 53 * (v8 + (53 * v6))) + [v1 type];

  return v10;
}

uint64_t AXVKFeatureLabelsAndShieldsHash(void *a1)
{
  v1 = a1;
  v2 = [v1 labelOffset];
  v3 = [v1 labelCount];
  v4 = [v1 shieldOffset];
  v5 = [v1 shieldCount] + 53 * (v4 + 53 * (v3 + 53 * v2 + 2809));

  return v5;
}

BOOL AXVKMultiSectionFeatureEqualToMultiSectionFeature(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 feature];
    v8 = [v5 feature];
    v9 = AXVKFeatureEqualToFeature(v7, v8);

    if (v9 && (v10 = [v3 sectionOffset], v10 == objc_msgSend(v5, "sectionOffset")) && (v11 = objc_msgSend(v3, "sectionCount"), v11 == objc_msgSend(v5, "sectionCount")) && (v12 = objc_msgSend(v3, "roadPointIndex"), v12 == objc_msgSend(v5, "roadPointIndex")) && (v13 = objc_msgSend(v3, "roadPointCount"), v13 == objc_msgSend(v5, "roadPointCount")) && (v14 = objc_msgSend(v3, "roadClass"), v14 == objc_msgSend(v5, "roadClass")) && (v15 = objc_msgSend(v3, "formOfWay"), v15 == objc_msgSend(v5, "formOfWay")))
    {
      v16 = [v3 travelDirection];
      v6 = v16 == [v5 travelDirection];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_29C6F5D88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t AXVKMultiSectionFeatureHash(void *a1)
{
  v1 = a1;
  v2 = [v1 feature];
  v3 = AXVKFeatureHash(v2);

  v4 = [v1 sectionOffset];
  v5 = [v1 sectionCount];
  v6 = [v1 roadPointIndex];
  v7 = [v1 roadPointCount];
  v8 = [v1 roadClass];
  v9 = [v1 formOfWay];
  v10 = 53 * (53 * (53 * (v7 + 53 * (v6 + 53 * (v5 + 53 * (v4 + 53 * v3 + 2809)))) + v8) + v9) + [v1 travelDirection];

  return v10;
}

id AXVKMapElementComparator()
{
  if (AXVKMapElementComparator::_MapElementComparatorOnceToken != -1)
  {
    AXVKMapElementComparator_cold_1();
  }

  v0 = MEMORY[0x29ED3F700](AXVKMapElementComparator::_MapElementComparator);

  return v0;
}

void __AXVKMapElementComparator_block_invoke()
{
  v0 = [&__block_literal_global_289 copy];
  v1 = AXVKMapElementComparator::_MapElementComparator;
  AXVKMapElementComparator::_MapElementComparator = v0;
}

uint64_t __AXVKMapElementComparator_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 accessibilityActivationPoint];
  v6 = v5;
  v8 = v7;
  [v4 accessibilityActivationPoint];
  if (v8 <= v10 && (v8 == v10 ? (v11 = v6 <= v9) : (v11 = 1), v11))
  {
    LODWORD(v12) = v8 == v10;
    if (v6 >= v9)
    {
      LODWORD(v12) = 0;
    }

    if (v8 < v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v12;
    }

    v13 = v12 << 63 >> 63;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

id AXVKTransitRouteElementComparator()
{
  if (AXVKTransitRouteElementComparator::onceToken != -1)
  {
    AXVKTransitRouteElementComparator_cold_1();
  }

  v0 = MEMORY[0x29ED3F700](AXVKTransitRouteElementComparator::_TransitRouteElementComparator);

  return v0;
}

void __AXVKTransitRouteElementComparator_block_invoke()
{
  v0 = [&__block_literal_global_294 copy];
  v1 = AXVKTransitRouteElementComparator::_TransitRouteElementComparator;
  AXVKTransitRouteElementComparator::_TransitRouteElementComparator = v0;
}

uint64_t __AXVKTransitRouteElementComparator_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortKey];
  v6 = [v4 sortKey];
  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

uint64_t AXVKRoadShouldBeVisible(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 feature];
  GEOFeatureGetLocalizedLabel();

  if ([v4 containsObject:0])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 feature];
    GEOFeatureGetNativeLabel();

    v6 = [v4 containsObject:0];
  }

  return v6;
}

float AXVKStrokeWidthForRoad(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 accessibilityZoomLevel];
  v6 = v5;
  v7 = 1.5;
  if (v5 > 14.0)
  {
    if ([v3 travelDirection])
    {
      v8 = [v3 roadClass];
      v9 = 2.0;
      if (v8 < 4)
      {
        v10 = &unk_29C71B570;
LABEL_7:
        v9 = v10[v8];
      }
    }

    else
    {
      v8 = [v3 roadClass];
      v9 = 2.0;
      if (v8 < 8)
      {
        v10 = &unk_29C71B548;
        goto LABEL_7;
      }
    }

    v7 = (((v6 + -14.0) / 10.0) + 1.0) * v9;
  }

  return v7;
}

void AXVKMathGetVectorAndDistanceForPoints(double *a1, long double *a2, CGPoint a3, CGPoint a4)
{
  y = a4.y;
  v5 = a3.y;
  v7 = a3.x - a4.x;
  v8 = vabdd_f64(a3.x, a4.x);
  v9 = vabdd_f64(a3.y, a4.y);
  *a2 = hypot(v8, v9);
  if (v7 == 0.0)
  {
    v10 = 90.0;
  }

  else
  {
    v10 = atan(v9 / v8) * 57.2957795;
  }

  v11 = v5 - y;
  if (v7 >= 0.0)
  {
    if (v11 >= 0.0)
    {
      goto LABEL_11;
    }

    v10 = 90.0 - v10;
    v12 = 270.0;
  }

  else if (v11 <= 0.0)
  {
    v12 = 180.0;
  }

  else
  {
    v12 = 90.0;
    v10 = 90.0 - v10;
  }

  v10 = v10 + v12;
LABEL_11:
  v13 = *a1;
  v14 = v10 + floor(*a1 / 360.0) * 360.0;
  *a1 = v14;
  if (v10 <= 270.0)
  {
    if (v10 >= 90.0)
    {
      return;
    }

    if (v13 <= 180.0 || v13 >= 360.0)
    {
      if (v13 > 0.0)
      {
        return;
      }
    }

    else
    {
      v10 = v14 + 360.0;
    }

    goto LABEL_21;
  }

  if (v13 > 0.0 && v13 < 180.0)
  {
    v10 = v10 + -360.0;
LABEL_21:
    *a1 = v10;
    return;
  }

  if (v13 > 360.0 || v13 == 0.0)
  {
    goto LABEL_21;
  }
}

double AXVKGetWalkingDirectionBetweenVertices(AXVKExplorationVertexElement *a1, AXVKExplorationVertexElement *a2)
{
  v65 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v48 = v3;
  [(AXVKExplorationVertexElement *)v3 getScreenPoint];
  v6 = v5;
  v8 = v7;
  [(AXVKExplorationVertexElement *)v4 getScreenPoint];
  v10 = v9;
  v12 = v11;
  v62 = 0.0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(AXVKExplorationVertexElement *)v3 roads];
  v13 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v13)
  {
    v50 = *v58;
    v52 = v4;
    do
    {
      v51 = v13;
      for (i = 0; i != v51; ++i)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v57 + 1) + 8 * i);
        v16 = [(AXVKExplorationVertexElement *)v4 roads];
        v17 = [v16 containsObject:v15];

        if (v17)
        {
          v18 = [v15 consolidatedAndOrderedFeatures];
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v20)
          {
            v21 = *v54;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v54 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = 0;
                v24 = *(*(&v53 + 1) + 8 * j);
                v25 = 0x7FFFFFFFFFFFFFFFLL;
                v26 = 0x7FFFFFFFFFFFFFFFLL;
                while (v23 < [v24 count])
                {
                  v27 = [v24 objectAtIndexedSubscript:v23];
                  [v27 pointValue];
                  v29 = v28;
                  v31 = v30;

                  if (vabdd_f64(v29, v6) + vabdd_f64(v31, v8) < 1.0)
                  {
                    v26 = v23;
                  }

                  if (vabdd_f64(v29, v10) + vabdd_f64(v31, v12) < 1.0)
                  {
                    v25 = v23;
                  }

                  ++v23;
                }

                if (v26 != 0x7FFFFFFFFFFFFFFFLL && v25 != 0x7FFFFFFFFFFFFFFFLL && v26 != v25)
                {
                  v32 = [v24 objectAtIndexedSubscript:v26];
                  [v32 pointValue];
                  v6 = v33;
                  v8 = v34;

                  if (v25 < v26)
                  {
                    v35 = -1;
                  }

                  else
                  {
                    v35 = 1;
                  }

                  v36 = v26 + v35;
                  if (v26 + v35 >= 0)
                  {
                    v37 = v26 + 2 * v35;
                    v38 = 0.0;
                    do
                    {
                      v39 = v37;
                      if (v36 >= [v24 count])
                      {
                        break;
                      }

                      v40 = [v24 objectAtIndexedSubscript:v36];
                      [v40 pointValue];
                      v10 = v41;
                      v12 = v42;

                      v43 = [(AXVKExplorationVertexElement *)v52 mapView];
                      [v43 accessibilityRealDistanceBetweenPoint:v6 screenPoint2:{v8, v10, v12}];
                      v45 = v44;

                      v38 = v38 + v45;
                      if (v38 >= 50.0)
                      {
                        break;
                      }

                      v36 += v35;
                      v37 = v39 + v35;
                    }

                    while ((v39 & 0x8000000000000000) == 0);
                  }

                  goto LABEL_33;
                }
              }

              v20 = [v19 countByEnumeratingWithState:&v53 objects:v63 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_33:
        }

        v4 = v52;
      }

      v13 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v13);
  }

  v66.x = v6;
  v66.y = v8;
  v67.x = v10;
  v67.y = v12;
  AXVKMathGetVectorAndDistanceForPoints(&v62, &v61, v66, v67);
  v46 = v62;

  return v46;
}

void sub_29C6F6FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKWalkAssistStatus;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_29C6F8F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AXVKMultiSectionFeatureWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_29C6F9904(_Unwind_Exception *a1)
{
  if (v5)
  {
  }

  _Unwind_Resume(a1);
}

void sub_29C6FA158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKFeatureAccessibilityElement;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_29C6FB164(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_29C6FB314(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_29C6FBA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t _areSetsBasicallyDuplicates(NSArray *a1, NSArray *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  v6 = 0;
  for (i = 1; i < [(NSArray *)v3 count]; ++i)
  {
    v8 = [(NSArray *)v3 objectAtIndex:i];
    [v8 CGPointValue];
    v10 = v9;
    v12 = v11;

    v13 = [(NSArray *)v4 count];
    if (v13 - 1 < 0)
    {
LABEL_8:
      v20 = v5;
      goto LABEL_10;
    }

    while (1)
    {
      v14 = [(NSArray *)v4 objectAtIndex:--v13];
      [v14 CGPointValue];
      v16 = v15;
      v18 = v17;

      v22.x = v10;
      v22.y = v12;
      v23.x = v16;
      v23.y = v18;
      DistanceBetweenPoints = AXVKMathGetDistanceBetweenPoints(v22, v23);
      if (DistanceBetweenPoints < 1.0)
      {
        break;
      }

LABEL_7:
      if (v13 <= 0)
      {
        goto LABEL_8;
      }
    }

    v20 = v5 + 1;
    if (v5 <= 1)
    {
      ++v5;
      goto LABEL_7;
    }

    v6 = 1;
LABEL_10:
    v5 = v20;
  }

  return v6 & 1;
}

__n128 __Block_byref_object_copy__633(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_29C6FEEB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_29C6FF638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__658(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_29C700E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_29C702EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKMapDebugView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_2A2395DF0;

  return a1;
}

void sub_29C705B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_29C706EBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_29C707E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__644(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C708388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__652(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 __Block_byref_object_copy__655(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_29C708598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__660(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_29C708664(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_29C70873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C708AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__679(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_29C709294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 24));

  _Unwind_Resume(a1);
}

void sub_29C70A7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 24));

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_2A2395DF0;

  JUMPOUT(0x29ED3F350);
}

void sub_29C70AA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKMapViewOutputManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_29C70AB3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_29C70B444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C70B7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_29C70CB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKMapViewTourGuideManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_29C70CD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_29C70F468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C7102E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  _Block_object_dispose(&a58, 8);

  _Unwind_Resume(a1);
}

uint64_t _maximumVisiblePOIs(float a1)
{
  if (a1 >= 16.0)
  {
    return -1;
  }

  v1 = [MEMORY[0x29EDC7A58] currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 56;
  }

  else
  {
    return 42;
  }
}

uint64_t _maximumVisibleRoads(float a1)
{
  if (a1 >= 16.0)
  {
    return -1;
  }

  v1 = [MEMORY[0x29EDC7A58] currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 28;
  }

  else
  {
    return 21;
  }
}

void sub_29C713748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_29C714DCC(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__469(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 __Block_byref_object_copy__472(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_29C716B2C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_29C7177E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2A1C59AA8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2A1C59AB0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2A1C76658](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}