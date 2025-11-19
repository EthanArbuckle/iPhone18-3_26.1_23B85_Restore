id MKGetMKLocationManagerLog()
{
  if (MKGetMKLocationManagerLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKLocationManagerLog_onceToken, &__block_literal_global_517);
  }

  v1 = MKGetMKLocationManagerLog_log;

  return v1;
}

void __MKGetMKLocationManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKLocationManager");
  v1 = MKGetMKLocationManagerLog_log;
  MKGetMKLocationManagerLog_log = v0;
}

void __MKGetApplicationStateMonitorLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "ApplicationStateMonitor");
  v1 = MKGetApplicationStateMonitorLog_log;
  MKGetApplicationStateMonitorLog_log = v0;
}

uint64_t ___shouldUseUIApplicationState_block_invoke()
{
  result = _UIApplicationIsExtension();
  _shouldUseUIApplicationState_value = result ^ 1;
  return result;
}

id MKGetApplicationStateMonitorLog()
{
  if (MKGetApplicationStateMonitorLog_onceToken != -1)
  {
    dispatch_once(&MKGetApplicationStateMonitorLog_onceToken, &__block_literal_global_91);
  }

  v1 = MKGetApplicationStateMonitorLog_log;

  return v1;
}

double MKCompassViewDiameterForSize(uint64_t a1)
{
  v1 = [MKCompassView _parameterForSize:a1];
  [v1 diameter];
  v3 = v2;

  return v3;
}

BOOL _MKLinkedOnOrAfterReleaseSet(__int16 a1)
{
  if (_get_platform_and_version_onceToken != -1)
  {
    dispatch_once(&_get_platform_and_version_onceToken, &__block_literal_global_136);
  }

  if (((a1 + 256) >> 8) > 0x11u)
  {
    v2 = 0;
    v3 = -268435456;
  }

  else
  {
    v2 = dword_1A30F76E8[((a1 + 256) >> 8)];
    v3 = dword_1A30F7730[((a1 + 256) >> 8)];
  }

  return _resolved_platform == v2 && _resolved_sdk_version >= v3;
}

uint64_t ___get_platform_and_version_block_invoke()
{
  _dyld_get_prog_image_header();
  dyld_get_image_versions();
  result = _GEOConfigHasValue();
  if (result)
  {
    result = GEOConfigGetUInteger();
    if (((result + 256) >> 8) > 0x11u)
    {
      v1 = 0;
      v2 = -268435456;
    }

    else
    {
      v1 = dword_1A30F76E8[((result + 256) >> 8)];
      v2 = dword_1A30F7730[((result + 256) >> 8)];
    }

    _resolved_platform = v1;
    _resolved_sdk_version = v2;
  }

  return result;
}

uint64_t ___get_platform_and_version_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  result = dyld_get_base_platform();
  _resolved_platform = result;
  _resolved_sdk_version = a3;
  return result;
}

void _registerStateCaptureCallbacks()
{
  if (_registerStateCaptureCallbacks_onceToken != -1)
  {
    dispatch_once(&_registerStateCaptureCallbacks_onceToken, &__block_literal_global_5_36601);
  }
}

uint64_t _MKMapTypeForCartographicConfiguration(uint64_t *a1)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1 == 2)
    {
      return 107;
    }

    else if (v3 == 1)
    {
      if (a1[6])
      {
        return 106;
      }

      else
      {
        v5 = a1[1];
        if ((v5 - 1) >= 4)
        {
          if (v5)
          {
            return 2;
          }

          else if (a1[2] == 1)
          {
            return 3;
          }

          else
          {
            return 1;
          }
        }

        else if (a1[2] == 1)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }
    }

    else if (v3)
    {
      return 0;
    }

    else if (a1[6])
    {
      return 105;
    }

    else
    {
      v6 = a1[1];
      if (v6 > 2)
      {
        v7 = 104;
        if (v6 != 4)
        {
          v7 = 0;
        }

        if (v6 == 3)
        {
          return 102;
        }

        else
        {
          return v7;
        }
      }

      else if (v6)
      {
        if (v6 == 2)
        {
          return 108;
        }

        else
        {
          return 0;
        }
      }

      else if (a1[4] == 2)
      {
        if (a1[5] == 1)
        {
          return 110;
        }

        else
        {
          return 109;
        }
      }

      else
      {
        return 5;
      }
    }
  }

  else
  {
    v9 = v1;
    v10 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: configuration != ((void *)0)", v8, 2u);
    }

    return 0;
  }
}

id MKGetMKMapViewLog()
{
  if (MKGetMKMapViewLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKMapViewLog_onceToken, &__block_literal_global_1901);
  }

  v1 = MKGetMKMapViewLog_log;

  return v1;
}

void __MKGetMKMapViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKMapView");
  v1 = MKGetMKMapViewLog_log;
  MKGetMKMapViewLog_log = v0;
}

uint64_t _MKCartographicConfigurationForMapType@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  v2 = (a2 + 16);
  *(a2 + 8) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 16) = 0;
  if (result > 103)
  {
    if (result <= 106)
    {
      if (result == 104)
      {
        *(a2 + 8) = 4;
        *(a2 + 24) = 3;
      }

      else
      {
        if (result != 105)
        {
          *a2 = 1;
        }

        *(a2 + 48) = 1;
      }
    }

    else
    {
      if (result <= 108)
      {
        if (result != 107)
        {
          v3 = 2;
          goto LABEL_22;
        }

        v4 = 2;
LABEL_28:
        *a2 = v4;
        return result;
      }

      if (result == 109)
      {
        *(a2 + 8) = 0;
        *(a2 + 32) = 2;
      }

      else if (result == 110)
      {
        *(a2 + 8) = 0;
        *(a2 + 32) = xmmword_1A30F6F00;
      }
    }
  }

  else
  {
    if (result > 2)
    {
      if (result <= 4)
      {
        if (result == 3)
        {
          *a2 = xmmword_1A30F6EF0;
        }

        else
        {
          *a2 = 1;
        }

        *(a2 + 16) = vdupq_n_s64(1uLL);
        return result;
      }

      if (result == 5)
      {
        *(a2 + 8) = 0;
        return result;
      }

      if (result != 102)
      {
        return result;
      }

      v3 = 3;
LABEL_22:
      *(a2 + 8) = v3;
      return result;
    }

    if (result)
    {
      if (result == 1)
      {
        *a2 = xmmword_1A30F6EF0;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      v4 = 1;
      goto LABEL_28;
    }

    result = GEOConfigGetBOOL();
    if (result)
    {
      *v2 = 1;
    }
  }

  return result;
}

BOOL MapKitIdiomIsMacCatalyst()
{
  v0 = +[MKSystemController sharedInstance];
  v1 = [v0 userInterfaceIdiom] == 2;

  return v1;
}

id _MKLocalizedStringFromThisBundle(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 _mapkitBundle];
  v4 = [v3 _mapkit_localizedStringForKey:v2 value:@"<unlocalized>" table:0];

  return v4;
}

void __MKRegisterGEOMultitaskingNotifications_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _MKGEOAppEnteredBackground, *MEMORY[0x1E69DDAC8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = CFNotificationCenterGetLocalCenter();
  v2 = *MEMORY[0x1E69DDBC0];

  CFNotificationCenterAddObserver(v1, 0, _MKGEOAppEnteredForeground, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

id MKGetMKDefaultLog()
{
  if (MKGetMKDefaultLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKDefaultLog_onceToken, &__block_literal_global_10247);
  }

  v1 = MKGetMKDefaultLog_log;

  return v1;
}

void __MKGetMKDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKDefault");
  v1 = MKGetMKDefaultLog_log;
  MKGetMKDefaultLog_log = v0;
}

uint64_t labelScaleFactorForContentSizeCategory(void *a1)
{
  v7[16] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v7[0] = *MEMORY[0x1E69DDC60];
  v7[1] = 2;
  v7[2] = *MEMORY[0x1E69DDC58];
  v7[3] = 3;
  v7[4] = *MEMORY[0x1E69DDC50];
  v7[5] = 4;
  v7[6] = *MEMORY[0x1E69DDC40];
  v7[7] = 4;
  v7[8] = *MEMORY[0x1E69DDC38];
  v7[9] = 4;
  v7[10] = *MEMORY[0x1E69DDC30];
  v7[11] = 4;
  v7[12] = *MEMORY[0x1E69DDC28];
  v7[13] = 4;
  v2 = 0;
  v7[14] = *MEMORY[0x1E69DDC20];
  v7[15] = 4;
  v3 = v7;
  v4 = 1;
  while (![v1 isEqualToString:*v3])
  {
    ++v2;
    v3 += 2;
    if (v2 == 8)
    {
      goto LABEL_6;
    }
  }

  v4 = v7[2 * v2 + 1];
LABEL_6:
  for (i = 14; i != -2; i -= 2)
  {
  }

  return v4;
}

void sub_1A2EA5D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 112; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t __depthFirstApply(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = v5[1];
    v11 = *v5;
    v12 = v6;
  }

  v7 = (*(v3 + 2))(v3, a1);
  if (v7)
  {
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v5)
  {
    v9 = 0;
    while (__depthFirstApply(*(&v11 + v9), v4) != 2)
    {
      v9 += 8;
      if (v9 == 32)
      {
        goto LABEL_11;
      }
    }

    v8 = 2;
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

  return v8;
}

uint64_t _VKTerrainModeForMKCartographicConfiguration(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 24) - 1) >= 3)
    {
      return 0;
    }

    else
    {
      return *(a1 + 24);
    }
  }

  else
  {
    v5 = v1;
    v6 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: configuration != ((void *)0)", v4, 2u);
    }

    return 0;
  }
}

BOOL _VKMapKitClientModeForMKCartographicConfiguration(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40) == 1;
  }

  v5 = v1;
  v6 = v2;
  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (result)
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: configuration != ((void *)0)", v4, 2u);
    return 0;
  }

  return result;
}

uint64_t _VKEmphasisForMKCartographicConfiguration(uint64_t *a1)
{
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: configuration != ((void *)0)", v4, 2u);
    }

    goto LABEL_7;
  }

  v1 = *a1;
  if ((*a1 - 1) < 2)
  {
    LOBYTE(v1) = 2;
    return v1;
  }

  if (v1)
  {
LABEL_7:
    LOBYTE(v1) = 1;
    return v1;
  }

  v2 = a1[1];
  if (v2 <= 1)
  {
    if (!v2)
    {
      return v1;
    }

    if (v2 != 1)
    {
      goto LABEL_7;
    }

    if (MapsFeature_IsAvailable_Maps298())
    {
      LOBYTE(v1) = 2;
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  else if ((v2 - 2) < 2 || v2 != 4)
  {
    goto LABEL_7;
  }

  return v1;
}

uint64_t _VKMapKitUsageForMKCartographicConfiguration(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 32);
    if (v3 >= 3)
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    v6 = v1;
    v7 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: configuration != ((void *)0)", v5, 2u);
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

void sub_1A2EA6B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EA6C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _VKMapTypeForMKCartographicConfiguration(uint64_t *a1)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1 == 2)
    {
      return 10;
    }

    else if (v3 == 1)
    {
      if (a1[6])
      {
        return 7;
      }

      else
      {
        v5 = a1[1];
        v6 = v5 - 1;
        if (a1[2] == 1)
        {
          v7 = 4;
        }

        else
        {
          v7 = 2;
        }

        if (a1[2] == 1)
        {
          v8 = 3;
        }

        else
        {
          v8 = 1;
        }

        if (v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        if (v6 >= 4)
        {
          return v9;
        }

        else
        {
          return v7;
        }
      }
    }

    else if (v3)
    {
      return 0;
    }

    else if (a1[6])
    {
      return 6;
    }

    else
    {
      v10 = a1[1];
      if (v10 == 3)
      {
        v11 = 5;
      }

      else
      {
        v11 = 0;
      }

      if (v10 == 4)
      {
        return 8;
      }

      else
      {
        return v11;
      }
    }
  }

  else
  {
    v13 = v1;
    v14 = v2;
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (result)
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: configuration != ((void *)0)", v12, 2u);
      return 0;
    }
  }

  return result;
}

double MKDefaultCoordinateRegion()
{
  v0 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v1 = [v0 countryCode];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MKDefaultCoordinateRegion_block_invoke;
  block[3] = &unk_1E76CDB38;
  v7 = v1;
  v2 = MKDefaultCoordinateRegion_once;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&MKDefaultCoordinateRegion_once, block);
  }

  v4 = *&MKDefaultCoordinateRegion_defaultRegion;

  return v4;
}

void __MKDefaultCoordinateRegion_block_invoke(uint64_t a1)
{
  v19 = objc_alloc_init(MEMORY[0x1E698B670]);
  v2 = [v19 localeWithCode:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"mapLatitude"];
    v5 = [v3 objectForKey:@"mapLongitude"];
    v6 = [v3 objectForKey:@"mapHeight"];
    v7 = [v3 objectForKey:@"mapWidth"];
    v8 = v7;
    if (v4)
    {
      v9 = v5 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || v6 == 0 || v7 == 0)
    {
      MKDefaultCoordinateRegion_defaultRegion = MKCoordinateRegionInvalid;
      *&qword_1EB0BF150 = unk_1A30F7F60;
    }

    else
    {
      [v4 _mapkit_cgFloatValue];
      v13 = v12;
      [v5 _mapkit_cgFloatValue];
      v15 = v14;
      [v6 _mapkit_cgFloatValue];
      v17 = v16;
      [v8 _mapkit_cgFloatValue];
      *&MKDefaultCoordinateRegion_defaultRegion = v13;
      *(&MKDefaultCoordinateRegion_defaultRegion + 1) = v15;
      qword_1EB0BF150 = v17;
      unk_1EB0BF158 = v18;
    }
  }

  else
  {
    MKDefaultCoordinateRegion_defaultRegion = MKCoordinateRegionInvalid;
    *&qword_1EB0BF150 = unk_1A30F7F60;
  }
}

id _attributionImagesForType(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  if (a2 == 1)
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  v16 = 0uLL;
  v17 = 0uLL;
  v6 = [v3 resources];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 resourceType] == v5)
        {
          v12 = [v11 filename];
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

id MKGetMKCoreLocationProviderLog()
{
  if (MKGetMKCoreLocationProviderLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKCoreLocationProviderLog_onceToken, &__block_literal_global_3095);
  }

  v1 = MKGetMKCoreLocationProviderLog_log;

  return v1;
}

MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect)
{
  x = rect.origin.x;
  if (rect.origin.x == INFINITY && rect.origin.y == INFINITY)
  {
    longitude = *(MEMORY[0x1E6985CC0] + 8);
    latitude = *MEMORY[0x1E6985CC0];
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    v39.x = rect.origin.x + rect.size.width * 0.5;
    v39.y = rect.origin.y + rect.size.height * 0.5;
    v6 = MKCoordinateForMapPoint(v39);
    latitude = v6.latitude;
    longitude = v6.longitude;
    if (fabs(v6.longitude) > 180.0)
    {
      if (v6.longitude <= 180.0)
      {
        longitude = fmod(v6.longitude + -180.0, 360.0) + 180.0;
      }

      else
      {
        longitude = fmod(v6.longitude + 180.0, 360.0) + -180.0;
      }
    }

    v10 = x + width;
    mapPoint = y + height;
    if ((x >= 0.0 || v10 <= 0.0) && (x >= 268435456.0 || v10 <= 268435456.0))
    {
      v45.x = x;
      v45.y = y;
      v29 = MKCoordinateForMapPoint(v45);
      v27 = v29.latitude;
      v46.x = x + width;
      v46.y = mapPoint;
      v30 = MKCoordinateForMapPoint(v46);
      v28 = v30.latitude;
      v26 = vabdd_f64(v29.longitude, v30.longitude);
    }

    else
    {
      v50.size.width = 268435456.0;
      v50.origin.x = 0.0;
      v50.origin.y = 0.0;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v50.size.height = 268435456.0;
      v48 = MKMapRectIntersection(v47, v50);
      v11 = INFINITY;
      v12 = v10 + -268435456.0;
      if (v10 > 268435456.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = INFINITY;
      }

      if (v10 <= 268435456.0)
      {
        v12 = 0.0;
      }

      else
      {
        v11 = y;
      }

      if (v10 > 268435456.0)
      {
        v14 = height;
      }

      else
      {
        v14 = 0.0;
      }

      v15 = fabs(x);
      if (x < 0.0)
      {
        v16 = x + 268435456.0;
      }

      else
      {
        v16 = v13;
      }

      v36 = longitude;
      if (x < 0.0)
      {
        v17 = y;
      }

      else
      {
        v17 = v11;
      }

      if (x < 0.0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v12;
      }

      v34 = v18;
      v35 = v10;
      if (x < 0.0)
      {
        v19 = height;
      }

      else
      {
        v19 = v14;
      }

      v33 = v19;
      v20 = v48.origin.x + v48.size.width;
      v21 = v48.origin.y + v48.size.height;
      v22 = MKCoordinateForMapPoint(*&v48).longitude;
      v40.x = v20;
      v40.y = v21;
      v23 = vabdd_f64(v22, MKCoordinateForMapPoint(v40).longitude);
      v24 = v17 + v33;
      v41.x = v16;
      v41.y = v17;
      longitude = v36;
      v25 = MKCoordinateForMapPoint(v41).longitude;
      v42.x = v16 + v34;
      v42.y = v24;
      v26 = v23 + vabdd_f64(v25, MKCoordinateForMapPoint(v42).longitude);
      v43.x = x;
      v43.y = y;
      *&v27 = *&MKCoordinateForMapPoint(v43);
      v44.x = v35;
      v44.y = mapPoint;
      *&v28 = *&MKCoordinateForMapPoint(v44);
    }

    v8 = fmin(v27 - v28, 180.0);
    v9 = fmin(v26, 360.0);
  }

  v31 = latitude;
  v32 = longitude;
  result.span.longitudeDelta = v9;
  result.span.latitudeDelta = v8;
  result.center.longitude = v32;
  result.center.latitude = v31;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  y = mapPoint.y;
  x = mapPoint.x + 268435456.0;
  if (mapPoint.x >= 0.0)
  {
    x = mapPoint.x;
  }

  if (mapPoint.x > 268435456.0)
  {
    v3 = mapPoint.x + -268435456.0;
  }

  else
  {
    v3 = x;
  }

  v4 = v3 * 0.0078125 * 0.000171661377 + -180.0;
  if (fabs(v4) > 180.0)
  {
    if (v4 <= 180.0)
    {
      v4 = fmod(v4 + -180.0, 360.0) + 180.0;
    }

    else
    {
      v4 = fmod(v4 + 180.0, 360.0) + -180.0;
    }
  }

  v5 = exp((y * 0.0078125 + -1048576.0) / 333772.107);
  v6 = (atan(v5) * -2.0 + 1.57079633) * 57.2957795;
  v7 = v4;
  result.longitude = v7;
  result.latitude = v6;
  return result;
}

void _scaleForMapRect(float64x2_t *a1, double *a2, double *a3, int a4, double a5, double a6, double a7, double a8, float64_t a9, float64_t a10, float64_t a11, float64_t a12, double a13, double a14, double a15, double a16, double a17, double a18)
{
  v26 = a9 + a11 - a9;
  v27 = a10 + a12 - a10;
  v58.origin.x = a5 + a14;
  x = v58.origin.x;
  v58.origin.y = a6 + a13;
  y = v58.origin.y;
  v58.size.width = a7 - (a14 + a16);
  width = v58.size.width;
  v58.size.height = a8 - (a13 + a15);
  height = v58.size.height;
  MaxX = CGRectGetMaxX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  *a3 = MaxX - CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  MaxY = CGRectGetMaxY(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v34 = MaxY - CGRectGetMinY(v61);
  a3[1] = v34;
  v35 = v34 / v27;
  if (*a3 / v26 < v35)
  {
    v35 = *a3 / v26;
  }

  v53 = v35;
  v36 = log2(v35) + 21.0;
  v37 = 0.0;
  if (v36 >= 0.0)
  {
    v37 = v36;
  }

  if (a18 == -1.0)
  {
    v38 = v53;
  }

  else
  {
    v38 = v53;
    if (v37 > a18)
    {
      v39 = exp2(21.0 - a18);
      v37 = a18;
      v38 = 1.0 / v39;
    }
  }

  if (a17 != -1.0 && v37 < a17)
  {
    v40 = exp2(21.0 - a17);
    v37 = a17;
    v38 = 1.0 / v40;
  }

  if (a4)
  {
    v41 = floor(v37);
    v42 = exp2((21 - vcvtmd_u64_f64(v37)));
    v37 = v41;
    v38 = 1.0 / v42;
  }

  *a2 = v37;
  v43.f64[0] = a11;
  v43.f64[1] = a12;
  __asm { FMOV            V1.2D, #0.5 }

  v49.f64[0] = a9;
  v49.f64[1] = a10;
  v50 = vaddq_f64(v49, vmulq_f64(v43, _Q1));
  if (v38 > 0.0)
  {
    v51.f64[0] = a16;
    v52.f64[0] = a14;
    v51.f64[1] = a15;
    v52.f64[1] = a13;
    v50 = vaddq_f64(v50, vdivq_f64(vmulq_f64(vsubq_f64(v51, v52), _Q1), vdupq_lane_s64(*&v38, 0)));
  }

  *a1 = v50;
}

void sub_1A2EA909C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double MKTilePointForCoordinate(double a1, double a2, double a3)
{
  if (a2 == -180.0 && a1 == -180.0 || fabs(a2) > 180.0)
  {
    return -1.0;
  }

  v4 = -1.0;
  if (fabs(a1) <= 90.0)
  {
    v4 = (a2 + 180.0) * 0.0174532925 * (ldexp(1.0, a3) / 6.28318531) * 128.0;
    v5 = fmax(fmin(a1, 85.0), -85.0);
    if (v5 > 90.0)
    {
      v5 = v5 + -180.0;
    }

    if (v5 < -90.0)
    {
      v5 = v5 + 180.0;
    }

    v6 = sin(v5 * 0.0174532925);
    log((v6 + 1.0) / (1.0 - v6));
  }

  return v4;
}

double MKIntegralCenterForView(void *a1, double a2)
{
  v4 = [a1 layer];
  [a1 _mapkit_currentScreenScale];
  v6 = v5;
  [v4 doubleBounds];
  v8 = v7;
  v10 = v9;
  [v4 anchorPoint];
  v12 = floor((v8 + a2 - (v8 + v10 * v11)) * v6 + 0.00000011920929) / v6 + v10 * v11;

  return v12;
}

id MKGetUserLocationViewLog()
{
  if (MKGetUserLocationViewLog_onceToken != -1)
  {
    dispatch_once(&MKGetUserLocationViewLog_onceToken, &__block_literal_global_40);
  }

  v1 = MKGetUserLocationViewLog_log;

  return v1;
}

void __MKGetUserLocationViewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "UserLocationView");
  v1 = MKGetUserLocationViewLog_log;
  MKGetUserLocationViewLog_log = v0;
}

id MKLocalizedAbbreviationForCompassPointNEWS(int a1)
{
  if ((a1 - 1) > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = _MKLocalizedStringFromThisBundle(off_1E76C8BC8[a1 - 1]);
  }

  return v2;
}

void sub_1A2EAAA08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void __MKGetMKCoreLocationProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKCoreLocationProvider");
  v1 = MKGetMKCoreLocationProviderLog_log;
  MKGetMKCoreLocationProviderLog_log = v0;
}

void sub_1A2EAAC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MKCompassPointNEWSForHeading(double a1)
{
  if (a1 < 0.0 || a1 >= 360.0)
  {
    a1 = fmod(a1, 360.0);
    if (a1 < 0.0)
    {
      a1 = a1 + 360.0;
    }
  }

  result = 0;
  if (a1 >= 0.0 && a1 < 360.0)
  {
    v2 = llround(a1 / 360.0 * 4.0);
    v3 = v2 & 3;
    v5 = -v2;
    v4 = v5 < 0;
    v6 = v5 & 3;
    if (v4)
    {
      v7 = v3;
    }

    else
    {
      v7 = -v6;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    else
    {
      return dword_1A30F7370[v7];
    }
  }

  return result;
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

MKMapRect MKMapRectIntersection(MKMapRect rect1, MKMapRect rect2)
{
  width = rect1.size.width;
  x = rect1.origin.x;
  v4 = 0.0;
  v5 = INFINITY;
  if (x != INFINITY || rect1.origin.y != INFINITY)
  {
    v5 = INFINITY;
    if (rect2.origin.x != INFINITY || rect2.origin.y != INFINITY)
    {
      if (x <= rect2.origin.x)
      {
        v5 = rect2.origin.x;
      }

      else
      {
        v5 = x;
      }

      v8 = x + width;
      v9 = rect2.origin.x + rect2.size.width;
      if (v8 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      if (v5 <= v10)
      {
        v11 = rect1.origin.y <= rect2.origin.y ? rect2.origin.y : rect1.origin.y;
        v12 = rect1.origin.y + rect1.size.height;
        if (v12 >= rect2.origin.y + rect2.size.height)
        {
          v12 = rect2.origin.y + rect2.size.height;
        }

        if (v11 <= v12)
        {
          v4 = v10 - v5;
          v13 = v12 - v11;
          goto LABEL_24;
        }
      }

      v5 = INFINITY;
    }
  }

  v11 = INFINITY;
  v13 = 0.0;
LABEL_24:
  v14 = v11;
  result.size.height = v13;
  result.size.width = v4;
  result.origin.y = v14;
  result.origin.x = v5;
  return result;
}

BOOL MKMapRectContainsRect(MKMapRect rect1, MKMapRect rect2)
{
  if (rect2.origin.x == INFINITY && rect2.origin.y == INFINITY)
  {
    return 1;
  }

  v4 = rect1.origin.y == INFINITY && rect1.origin.x == INFINITY || rect1.origin.x > rect2.origin.x;
  result = !v4 && (rect1.origin.x + rect1.size.width >= rect2.origin.x + rect2.size.width ? (v5 = rect1.origin.y > rect2.origin.y) : (v5 = 1), !v5) && rect1.origin.y + rect1.size.height >= rect2.origin.y + rect2.size.height;
  return result;
}

void ___filterLabelMarkersPredicate_block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_1917];
  v1 = _filterLabelMarkersPredicate_p;
  _filterLabelMarkersPredicate_p = v0;
}

BOOL MKMapRectIntersectsRect(MKMapRect rect1, MKMapRect rect2)
{
  if (rect1.origin.x == INFINITY && rect1.origin.y == INFINITY)
  {
    return 0;
  }

  if (rect2.origin.x == INFINITY && rect2.origin.y == INFINITY)
  {
    return 0;
  }

  if (rect1.origin.x >= rect2.origin.x)
  {
    if (rect2.origin.x + rect2.size.width <= rect1.origin.x)
    {
      return 0;
    }
  }

  else if (rect1.origin.x + rect1.size.width <= rect2.origin.x)
  {
    return 0;
  }

  if (rect1.origin.y >= rect2.origin.y)
  {
    if (rect2.origin.y + rect2.size.height <= rect1.origin.y)
    {
      return 0;
    }
  }

  else if (rect1.origin.y + rect1.size.height <= rect2.origin.y)
  {
    return 0;
  }

  return 1;
}

id _filterLabelMarkersPredicate()
{
  if (_filterLabelMarkersPredicate_onceToken != -1)
  {
    dispatch_once(&_filterLabelMarkersPredicate_onceToken, &__block_literal_global_1913);
  }

  v1 = _filterLabelMarkersPredicate_p;

  return v1;
}

BOOL ___notifyOnSizeChange_block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(3081);
  _notifyOnSizeChange_notify = result;
  return result;
}

id _MKPuckAnnotationViewBaseColor(uint64_t a1, int a2)
{
  if ((a1 - 1) < 4 || a1 == 107)
  {
    v3 = [MEMORY[0x1E69DC888] whiteColor];
    v4 = v3;
    if (a2)
    {
      v5 = [v3 colorWithAlphaComponent:0.699999988];

      v4 = v5;
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___MKPuckAnnotationViewBaseColor_block_invoke;
    v7[3] = &__block_descriptor_33_e36___UIColor_16__0__UITraitCollection_8l;
    v8 = a2;
    v4 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v7];
  }

  return v4;
}

uint64_t _insertionNodeForItem(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 coordinate];
  v6 = MKTilePointForCoordinate(v4, v5, 21.0);
  v8 = v7;

  while (1)
  {
    v9 = *(a2 + 40);
    if (!v9)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      a2 = *(v9 + v10);
      v12.x = v6;
      v12.y = v8;
      if (MKMapRectContainsPoint(*a2, v12))
      {
        break;
      }

      v10 += 8;
      if (v10 == 32)
      {
        a2 = 0;
        goto LABEL_7;
      }
    }
  }

LABEL_7:

  return a2;
}

BOOL MKMapRectContainsPoint(MKMapRect rect, MKMapPoint point)
{
  x = point.x;
  if (rect.origin.x == INFINITY && rect.origin.y == INFINITY)
  {
    return 0;
  }

  y = point.y;
  v5 = rect.origin.x + rect.size.width;
  if ((rect.origin.x >= 0.0 || v5 <= 0.0) && (rect.origin.x >= 268435456.0 || v5 <= 268435456.0))
  {
    result = 0;
    if (x < rect.origin.x)
    {
      return result;
    }

    v8 = x > v5;
    goto LABEL_32;
  }

  if (rect.origin.x >= 0.0)
  {
    if (v5 <= 268435456.0)
    {
      v10 = 0.0;
      v9 = INFINITY;
      v11 = INFINITY;
      height = 0.0;
      goto LABEL_21;
    }

    v10 = v5 + -268435456.0;
    v9 = 0.0;
  }

  else
  {
    v9 = rect.origin.x + 268435456.0;
    v10 = fabs(rect.origin.x);
  }

  v11 = rect.origin.y;
  height = rect.size.height;
LABEL_21:
  v17.size.width = 268435456.0;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.height = 268435456.0;
  rect = MKMapRectIntersection(rect, v17);
  if (x >= v9)
  {
    v13 = x > v9 + v10 || y < v11;
    if (!v13 && y <= v11 + height)
    {
      return 1;
    }
  }

  result = 0;
  if (x >= v16.origin.x)
  {
    v8 = x > v16.origin.x + v16.size.width;
LABEL_32:
    if (!v8 && y >= rect.origin.y)
    {
      return y <= rect.origin.y + rect.size.height;
    }
  }

  return result;
}

void _insert(void *a1, uint64_t a2, void *a3)
{
  v48 = a1;
  v5 = a3;
  v6 = _insertionNodeForItem(v48, a2);
  v7 = v6;
  v8 = *(v6 + 32);
  if (v5[2] <= (v8[1] - *v8) && (*(v6 + 16) > *(v5 + 2) || *(v6 + 24) > *(v5 + 3)))
  {
    v10 = v5;
    *(v7 + 40) = malloc_type_calloc(4uLL, 8uLL, 0x2004093837F09uLL);
    v46 = *(v7 + 16);
    v11 = *v7;
    v12 = *(v7 + 8);
    v13 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00405CA67C4CuLL);
    __asm { FMOV            V0.2D, #0.5 }

    v13->f64[0] = v11;
    v13->f64[1] = v12;
    v47 = vmulq_f64(v46, _Q0);
    v13[1] = v47;
    **(v7 + 40) = v13;
    v20 = *v7;
    v19 = *(v7 + 8);
    v21 = *(v7 + 16);
    v22 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00405CA67C4CuLL);
    *v22 = v47.f64[0] + v20;
    *(v22 + 1) = v19;
    v22[3] = v47.f64[1];
    v22[2] = v21 - v47.f64[0];
    *(*(v7 + 40) + 8) = v22;
    v23 = *v7;
    v24 = *(v7 + 8);
    v25 = *(v7 + 24);
    v26 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00405CA67C4CuLL);
    *v26 = v23;
    v26[1] = v47.f64[1] + v24;
    v26[2] = v47.f64[0];
    v26[3] = v25 - v47.f64[1];
    *(*(v7 + 40) + 16) = v26;
    v44 = *v7;
    v45 = *(v7 + 16);
    v27 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00405CA67C4CuLL);
    *v27 = vaddq_f64(v44, v47);
    v27[1] = vsubq_f64(v45, v47);
    *(*(v7 + 40) + 24) = v27;
    operator new();
  }

  v28 = v48;
  v30 = v8[1];
  v29 = v8[2];
  if (v30 >= v29)
  {
    v33 = *v8;
    v34 = v30 - *v8;
    v35 = v34 + 1;
    if ((v34 + 1) >> 61)
    {
      std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v36 = v29 - v33;
    if (v36 >> 2 > v35)
    {
      v35 = v36 >> 2;
    }

    if (v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      v37 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (!(v37 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v38 = (8 * v34);
    v39 = &v38[-(v30 - *v8)];
    *v38 = v28;
    v32 = (v38 + 1);
    if (v33 != v30)
    {
      v40 = v33;
      v41 = v39;
      do
      {
        v42 = *v40;
        *v40++ = 0;
        *v41++ = v42;
      }

      while (v40 != v30);
      do
      {
        v43 = *v33++;
      }

      while (v33 != v30);
      v33 = *v8;
    }

    *v8 = v39;
    v8[1] = v32;
    v8[2] = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v30 = v28;
    v31 = v30 + 1;
    v8[1] = v31;
    v32 = v31;
  }

  v8[1] = v32;
}

BOOL ___filterLabelMarkersPredicate_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

double MKMapRectMakeWithRadialDistance(double a1, double a2, double a3)
{
  v4 = MKTilePointForCoordinate(a1, a2, 21.0);
  GEOMapPointsPerMeterAtLatitude();
  return v4 - v5 * a3;
}

MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2)
{
  if (rect1.origin.x == INFINITY && rect1.origin.y == INFINITY)
  {
    rect1.origin.y = rect2.origin.y;
  }

  else if (rect2.origin.x == INFINITY && rect2.origin.y == INFINITY)
  {
    rect2.origin.x = rect1.origin.x;
    rect2.size.width = rect1.size.width;
    rect2.size.height = rect1.size.height;
  }

  else
  {
    v4 = rect2.origin.x + rect2.size.width;
    if (rect1.origin.x < rect2.origin.x)
    {
      rect2.origin.x = rect1.origin.x;
    }

    v5 = rect1.origin.y + rect1.size.height;
    if (rect1.origin.y >= rect2.origin.y)
    {
      rect1.origin.y = rect2.origin.y;
    }

    v6 = rect1.origin.x + rect1.size.width;
    if (v6 <= v4)
    {
      v6 = v4;
    }

    rect2.size.width = v6 - rect2.origin.x;
    v7 = rect2.origin.y + rect2.size.height;
    if (v5 > rect2.origin.y + rect2.size.height)
    {
      v7 = v5;
    }

    rect2.size.height = v7 - rect1.origin.y;
  }

  x = rect2.origin.x;
  width = rect2.size.width;
  height = rect2.size.height;
  rect1.size.height = height;
  rect1.size.width = width;
  rect1.origin.x = x;
  return rect1;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v1 = MKTilePointForCoordinate(coordinate.latitude, coordinate.longitude, 21.0);
  result.y = v2;
  result.x = v1;
  return result;
}

CLLocationDistance MKMetersBetweenMapPoints(MKMapPoint a, MKMapPoint b)
{
  y = b.y;
  x = b.x;
  v4 = MKCoordinateForMapPoint(a);
  v12.x = x;
  v12.y = y;
  v5 = MKCoordinateForMapPoint(v12);
  v6.n128_u64[0] = *&v5.latitude;
  v7.n128_u64[0] = *&v5.longitude;
  v8.n128_u64[0] = *&v4.latitude;
  v9.n128_u64[0] = *&v4.longitude;

  MEMORY[0x1EEE0B9A8](v8, v9, v6, v7);
  return result;
}

void ContactsUILibrary()
{
  v12 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = ContactsUILibraryCore_frameworkLibrary;
  v8 = ContactsUILibraryCore_frameworkLibrary;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ContactsUILibraryCore_block_invoke;
    v2[4] = &unk_1E76CD5E0;
    v3 = &v5;
    v4 = v2;
    v9 = xmmword_1E76CA940;
    v10 = *off_1E76CA950;
    v11 = 0;
    v6[3] = _sl_dlopen();
    ContactsUILibraryCore_frameworkLibrary = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  v1 = v2[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_1A2EB3680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNMonogrammerClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNMonogrammer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNMonogrammerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return getCNMonogrammerClass(v3);
  }

  return result;
}

id getCNMonogrammerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNMonogrammerClass_softClass;
  v7 = getCNMonogrammerClass_softClass;
  if (!getCNMonogrammerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNMonogrammerClass_block_invoke;
    v3[3] = &unk_1E76CD7B0;
    v3[4] = &v4;
    __getCNMonogrammerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2EB37D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MKCurrentNetworkConnectionFailureDiagnosis()
{
  v0 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  v1 = [v0 isNetworkReachable];

  if (v1)
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x1E698B6B0]);
  v4 = [v3 initWithQueue:MEMORY[0x1E69E96A0]];
  if ([v4 airplaneMode])
  {
    v2 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69A2398] sharedPlatform];
    if ([v5 isCellDataPossible])
    {
      v6 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
      v7 = [v6 isCellConnection];

      if (v7)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {

      v2 = 3;
    }
  }

  return v2;
}

void _MKGEOAppEnteredForeground()
{
  if (_geoInForeground == 1)
  {
    _geoInForeground = 0;
    v1 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    [v1 updateProvidersForCurrentCountry];
  }
}

double MKIntegralCenterForViewWithScale(void *a1, double a2, double a3, double a4)
{
  v6 = [a1 layer];
  [v6 doubleBounds];
  v8 = v7;
  v10 = v9;
  [v6 anchorPoint];
  v12 = floor((v8 + a2 - (v8 + v10 * v11)) * a4 + 0.00000011920929) / a4 + v10 * v11;

  return v12;
}

void sub_1A2EB4B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EB5198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MKGetAppImageManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "AppImageManager");
  v1 = MKGetAppImageManagerLog_log;
  MKGetAppImageManagerLog_log = v0;
}

id MKGetAppImageManagerLog()
{
  if (MKGetAppImageManagerLog_onceToken != -1)
  {
    dispatch_once(&MKGetAppImageManagerLog_onceToken, &__block_literal_global_475);
  }

  v1 = MKGetAppImageManagerLog_log;

  return v1;
}

uint64_t _MKPlaceCardUseSmallerFont()
{
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
  }

  return _MKPlaceCardUseSmallerFont_smallerFont;
}

double _MKCartographicConfigurationDefault@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A30F6EC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *&result = 1;
  *(a1 + 32) = xmmword_1A30F6EF0;
  *(a1 + 48) = 0;
  return result;
}

void ___ZL10_diskCachev_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [_sDiskCacheURL URLByAppendingPathComponent:@"MapsIcons"];
  if (v0 || ([MEMORY[0x1E696AAE8] mainBundle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "bundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.apple.Spotlight"), v5, v4, v6) && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "URLsForDirectory:inDomains:", 13, 1), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "bundleIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "stringByAppendingPathExtension:", @"mapsiconcache"), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, objc_msgSend(v9, "URLByAppendingPathComponent:", v12), v0 = objc_claimAutoreleasedReturnValue(), v12, v9, v0))
  {
    v1 = GEOGetMKIconManagerLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v0;
      _os_log_impl(&dword_1A2EA0000, v1, OS_LOG_TYPE_DEBUG, "Init cache at %@", &v13, 0xCu);
    }

    v2 = [[_MKIconDiskCache alloc] initWithDirectoryURL:v0];
    v3 = _diskCache(void)::singleton;
    _diskCache(void)::singleton = v2;
  }

  else
  {
    v0 = GEOGetMKIconManagerLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A2EA0000, v0, OS_LOG_TYPE_DEBUG, "Not using cache, url not defined", &v13, 2u);
    }
  }
}

void sub_1A2EB7804(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id GEOGetMKIconManagerLog()
{
  if (GEOGetMKIconManagerLog::onceToken != -1)
  {
    dispatch_once(&GEOGetMKIconManagerLog::onceToken, &__block_literal_global_10801);
  }

  v1 = GEOGetMKIconManagerLog::log;

  return v1;
}

void __GEOGetMKIconManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.GeoServices", "MKIconManager");
  v1 = GEOGetMKIconManagerLog::log;
  GEOGetMKIconManagerLog::log = v0;
}

void sub_1A2EB7DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MKLocalizedStringForCurrentLocation()
{
  if (MKLocalizedStringForCurrentLocation_s_onceToken != -1)
  {
    dispatch_once(&MKLocalizedStringForCurrentLocation_s_onceToken, &__block_literal_global_12);
  }

  v1 = MKLocalizedStringForCurrentLocation_s_value;

  return v1;
}

void __MKLocalizedStringForCurrentLocation_block_invoke()
{
  v0 = _MKLocalizedStringFromThisBundle(@"My Location");
  v1 = MKLocalizedStringForCurrentLocation_s_value;
  MKLocalizedStringForCurrentLocation_s_value = v0;
}

id _deviceKeyboardLanguageIfAvailable()
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v0 = [MEMORY[0x1E69DC668] sharedApplication];
    v1 = [v0 textInputMode];

    v2 = [v1 primaryLanguage];
    if (![v2 length])
    {

      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *MKCurrencySymbolForLocale(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x1E695D988]];
  if ([v1 length] == 1)
  {
    v2 = v1;
  }

  else
  {
    if (![v1 length])
    {
      v4 = @"$";
      goto LABEL_11;
    }

    v3 = 0;
    v4 = @"$";
    while (1)
    {
      v5 = [v1 characterAtIndex:v3];
      if (u_charType(v5) == 25)
      {
        break;
      }

      if (++v3 >= [v1 length])
      {
        goto LABEL_11;
      }
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v5];
  }

  v4 = v2;
LABEL_11:

  return v4;
}

id MKGetGesturesLog()
{
  if (MKGetGesturesLog_onceToken != -1)
  {
    dispatch_once(&MKGetGesturesLog_onceToken, &__block_literal_global_22);
  }

  v1 = MKGetGesturesLog_log;

  return v1;
}

id MKGetAnnotationsLog()
{
  if (MKGetAnnotationsLog_onceToken != -1)
  {
    dispatch_once(&MKGetAnnotationsLog_onceToken, &__block_literal_global_31);
  }

  v1 = MKGetAnnotationsLog_log;

  return v1;
}

void std::__hash_table<_MKAnnotationViewPair,std::hash<_MKAnnotationViewPair>,std::equal_to<_MKAnnotationViewPair>,std::allocator<_MKAnnotationViewPair>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

double std::__introsort<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      break;
    }

    switch(v11)
    {
      case 3:
        v142 = *v10;
        v144 = v10[1];
        result = *(v144 + 656);
        v145 = *(*v10 + 656);
        if (result < v145 || (v144 < v142 ? (v146 = result == v145) : (v146 = 0), v146))
        {
          v221 = *v9;
          v222 = *(*v9 + 656);
          if (v222 < result || v221 < v144 && v222 == result)
          {
            *v10 = v221;
          }

          else
          {
            *v10 = v144;
            v10[1] = v142;
            v233 = *v9;
            result = *(*v9 + 656);
            v234 = *(v142 + 656);
            if (result >= v234 && (v233 >= v142 || result != v234))
            {
              return result;
            }

            v10[1] = v233;
          }

LABEL_342:
          *v9 = v142;
          return result;
        }

        v147 = *v9;
        v148 = *(*v9 + 656);
        if (v148 >= result && (v147 >= v144 || v148 != result))
        {
          return result;
        }

        v10[1] = v147;
        *v9 = v144;
        v150 = *v10;
        v149 = v10[1];
        result = *(v149 + 656);
LABEL_239:
        v158 = *(v150 + 656);
        if (result < v158 || v149 < v150 && result == v158)
        {
          *v10 = v149;
          v10[1] = v150;
        }

        return result;
      case 4:

        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,0>(v10, v10 + 1, v10 + 2, a2 - 1);
        return result;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,0>(v10, v10 + 1, v10 + 2, v10 + 3);
        v151 = *v9;
        result = *(*v9 + 656);
        v152 = v10[3];
        v153 = *(v152 + 656);
        if (result >= v153 && (v151 >= v152 || result != v153))
        {
          return result;
        }

        v10[3] = v151;
        *v9 = v152;
        v154 = v10[2];
        v149 = v10[3];
        result = *(v149 + 656);
        v155 = *(v154 + 656);
        if (result >= v155 && (v149 >= v154 || result != v155))
        {
          return result;
        }

        v10[2] = v149;
        v10[3] = v154;
        result = *(v149 + 656);
        v156 = v10[1];
        v157 = *(v156 + 656);
        if (result >= v157 && (v149 >= v156 || result != v157))
        {
          return result;
        }

        v10[1] = v149;
        v10[2] = v156;
        result = *(v149 + 656);
        v150 = *v10;
        goto LABEL_239;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v159 = v10 + 1;
      v161 = v10 == a2 || v159 == a2;
      if (a4)
      {
        if (!v161)
        {
          v162 = 0;
          v163 = v10;
          do
          {
            v164 = v159;
            v166 = *v163;
            v165 = v163[1];
            result = *(v165 + 656);
            v167 = *(*v163 + 656);
            if (result < v167 || (v165 < v166 ? (v168 = result == v167) : (v168 = 0), v168))
            {
              v163[1] = v166;
              v169 = v10;
              if (v163 != v10)
              {
                v170 = v162;
                do
                {
                  result = *(v165 + 656);
                  v171 = *(v10 + v170 - 8);
                  v172 = *(v171 + 656);
                  if (result >= v172 && (v165 >= v171 || result != v172))
                  {
                    v169 = (v10 + v170);
                    goto LABEL_271;
                  }

                  *(v10 + v170) = v171;
                  v170 -= 8;
                }

                while (v170);
                v169 = v10;
              }

LABEL_271:
              *v169 = v165;
            }

            v159 = v164 + 1;
            v162 += 8;
            v163 = v164;
          }

          while (v164 + 1 != a2);
        }
      }

      else if (!v161)
      {
        do
        {
          v223 = v159;
          v225 = *a1;
          v224 = a1[1];
          result = *(v224 + 656);
          v226 = *(*a1 + 656);
          if (result < v226 || (v224 < v225 ? (v227 = result == v226) : (v227 = 0), v227))
          {
            do
            {
              do
              {
                v228 = a1;
                v229 = v225;
                v230 = *--a1;
                v225 = v230;
                a1[2] = v229;
                result = *(v224 + 656);
                v231 = *(v230 + 656);
              }

              while (result < v231);
            }

            while (v224 < v225 && result == v231);
            *v228 = v224;
          }

          v159 = v223 + 1;
          a1 = v223;
        }

        while (v223 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v10 == a2)
      {
        return result;
      }

      v174 = (v11 - 2) >> 1;
      v175 = v174;
      do
      {
        v176 = v175;
        if (v174 >= v175)
        {
          v177 = (2 * v175) | 1;
          v178 = &v10[v177];
          if (2 * v175 + 2 < v11)
          {
            v179 = v178[1];
            v180 = *(*v178 + 656);
            v181 = *(v179 + 656);
            if (v180 < v181 || (*v178 < v179 ? (v182 = v180 == v181) : (v182 = 0), v182))
            {
              ++v178;
              v177 = 2 * v175 + 2;
            }
          }

          v183 = &v10[v175];
          v184 = *v178;
          result = *(*v178 + 656);
          v185 = *v183;
          v186 = *(*v183 + 656);
          if (result >= v186 && (v184 >= v185 || result != v186))
          {
            do
            {
              *v183 = v184;
              v183 = v178;
              if (v174 < v177)
              {
                break;
              }

              v188 = 2 * v177;
              v177 = (2 * v177) | 1;
              v178 = &v10[v177];
              v189 = v188 + 2;
              if (v189 < v11)
              {
                v190 = v178[1];
                v191 = *(*v178 + 656);
                v192 = *(v190 + 656);
                if (v191 < v192 || (*v178 < v190 ? (v193 = v191 == v192) : (v193 = 0), v193))
                {
                  ++v178;
                  v177 = v189;
                }
              }

              v184 = *v178;
              result = *(*v178 + 656);
              v194 = *(v185 + 656);
              if (result < v194)
              {
                break;
              }
            }

            while (v184 >= v185 || result != v194);
            *v183 = v185;
          }
        }

        --v175;
      }

      while (v176);
      while (2)
      {
        v196 = 0;
        v197 = *v10;
        v198 = v10;
        do
        {
          v199 = v198;
          v200 = &v198[v196];
          v198 = v200 + 1;
          v201 = 2 * v196;
          v196 = (2 * v196) | 1;
          v202 = v201 + 2;
          if (v202 < v11)
          {
            v205 = v200[2];
            v203 = v200 + 2;
            v204 = v205;
            v206 = *(v203 - 1);
            result = *(v206 + 656);
            v207 = *(v205 + 656);
            if (result < v207 || (v206 < v204 ? (v208 = result == v207) : (v208 = 0), v208))
            {
              v198 = v203;
              v196 = v202;
            }
          }

          *v199 = *v198;
        }

        while (v196 <= (v11 - 2) / 2);
        if (v198 != --a2)
        {
          *v198 = *a2;
          *a2 = v197;
          v209 = (v198 - v10 + 8) >> 3;
          v210 = v209 - 2;
          if (v209 < 2 || (v211 = v210 >> 1, v212 = &v10[v210 >> 1], v213 = *v212, result = *(*v212 + 656), v197 = *v198, v214 = *(*v198 + 656), result >= v214) && (v213 < v197 ? (v215 = result == v214) : (v215 = 0), !v215))
          {
LABEL_335:
            if (v11-- <= 2)
            {
              return result;
            }

            continue;
          }

          *v198 = v213;
          if (v210 >= 2)
          {
            while (1)
            {
              v216 = v211 - 1;
              v211 = (v211 - 1) >> 1;
              v198 = &v10[v211];
              v217 = *v198;
              result = *(*v198 + 656);
              v218 = *(v197 + 656);
              if (result >= v218 && (v217 >= v197 || result != v218))
              {
                break;
              }

              *v212 = v217;
              v212 = &v10[v211];
              if (v216 <= 1)
              {
                goto LABEL_334;
              }
            }
          }

          v198 = v212;
        }

        break;
      }

LABEL_334:
      *v198 = v197;
      goto LABEL_335;
    }

    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v14 = v13;
    if (v11 >= 0x81)
    {
      v15 = *v13;
      v16 = *(*v13 + 656);
      v17 = *v10;
      v18 = *(*v10 + 656);
      if (v16 < v18 || (v15 < v17 ? (v19 = v16 == v18) : (v19 = 0), v19))
      {
        v37 = *v9;
        v38 = *(*v9 + 656);
        if (v38 < v16 || (v37 < v15 ? (v39 = v38 == v16) : (v39 = 0), v39))
        {
          *v10 = v37;
        }

        else
        {
          *v10 = v15;
          *v13 = v17;
          v40 = *v9;
          v41 = *(*v9 + 656);
          v42 = *(v17 + 656);
          if (v41 >= v42 && (v40 >= v17 || v41 != v42))
          {
            goto LABEL_52;
          }

          *v13 = v40;
        }

        *v9 = v17;
        goto LABEL_52;
      }

      v20 = *v9;
      v21 = *(*v9 + 656);
      if (v21 < v16 || v20 < v15 && v21 == v16)
      {
        *v13 = v20;
        *v9 = v15;
        v22 = *v13;
        v23 = *(*v13 + 656);
        v24 = *v10;
        v25 = *(*v10 + 656);
        if (v23 < v25 || v22 < v24 && v23 == v25)
        {
          *v10 = v22;
          *v13 = v24;
        }
      }

LABEL_52:
      v45 = v12 - 1;
      v46 = v10[v12 - 1];
      v47 = *(v46 + 656);
      v48 = v10[1];
      v49 = *(v48 + 656);
      if (v47 < v49 || v46 < v48 && v47 == v49)
      {
        v50 = *(a2 - 2);
        v51 = *(v50 + 656);
        if (v51 < v47 || v50 < v46 && v51 == v47)
        {
          v10[1] = v50;
          goto LABEL_59;
        }

        v10[1] = v46;
        v10[v45] = v48;
        v112 = *(a2 - 2);
        v113 = *(v112 + 656);
        v114 = *(v48 + 656);
        if (v113 < v114 || v112 < v48 && v113 == v114)
        {
          v10[v45] = v112;
LABEL_59:
          *(a2 - 2) = v48;
        }
      }

      else
      {
        v94 = *(a2 - 2);
        v95 = *(v94 + 656);
        if (v95 < v47 || v94 < v46 && v95 == v47)
        {
          v10[v45] = v94;
          *(a2 - 2) = v46;
          v96 = v10[v45];
          v97 = *(v96 + 656);
          v98 = v10[1];
          v99 = *(v98 + 656);
          if (v97 < v99 || v96 < v98 && v97 == v99)
          {
            v10[1] = v96;
            v10[v45] = v98;
          }
        }
      }

      v54 = v13[1];
      v52 = v13 + 1;
      v53 = v54;
      v55 = *(v54 + 656);
      v56 = v10[2];
      v57 = *(v56 + 656);
      if (v55 < v57 || v53 < v56 && v55 == v57)
      {
        v58 = *(a2 - 3);
        v59 = *(v58 + 656);
        if (v59 < v55 || v58 < v53 && v59 == v55)
        {
          v10[2] = v58;
          goto LABEL_67;
        }

        v10[2] = v53;
        *v52 = v56;
        v115 = *(a2 - 3);
        v116 = *(v115 + 656);
        v117 = *(v56 + 656);
        if (v116 < v117 || v115 < v56 && v116 == v117)
        {
          *v52 = v115;
LABEL_67:
          *(a2 - 3) = v56;
        }
      }

      else
      {
        v100 = *(a2 - 3);
        v101 = *(v100 + 656);
        if (v101 < v55 || v100 < v53 && v101 == v55)
        {
          *v52 = v100;
          *(a2 - 3) = v53;
          v102 = *v52;
          v103 = *(*v52 + 656);
          v104 = v10[2];
          v105 = *(v104 + 656);
          if (v103 < v105 || v102 < v104 && v103 == v105)
          {
            v10[2] = v102;
            *v52 = v104;
          }
        }
      }

      v60 = *v14;
      v61 = *(*v14 + 656);
      v62 = v10[v45];
      v63 = *(v62 + 656);
      if (v61 < v63)
      {
        v64 = *v52;
        goto LABEL_72;
      }

      v64 = *v52;
      if (v60 < v62 && v61 == v63)
      {
LABEL_72:
        v65 = *(v64 + 656);
        if (v65 < v61 || v64 < v60 && v65 == v61)
        {
          v10[v45] = v64;
          goto LABEL_76;
        }

        v10[v45] = v60;
        *v14 = v62;
        v118 = *(v64 + 656);
        v119 = *(v62 + 656);
        if (v118 < v119 || v64 < v62 && v118 == v119)
        {
          *v14 = v64;
          v60 = v64;
LABEL_76:
          *v52 = v62;
        }

        else
        {
          v60 = v62;
        }
      }

      else
      {
        v106 = *(v64 + 656);
        if (v106 < v61 || v64 < v60 && v106 == v61)
        {
          *v14 = v64;
          *v52 = v60;
          v107 = *(v64 + 656);
          v108 = *(v62 + 656);
          if (v107 < v108 || v64 < v62 && v107 == v108)
          {
            v10[v45] = v64;
            v52 = v14;
            v60 = v62;
            goto LABEL_76;
          }

          v60 = v64;
        }
      }

      v66 = *v10;
      *v10 = v60;
      *v14 = v66;
      goto LABEL_78;
    }

    v26 = *v10;
    v27 = *(*v10 + 656);
    v28 = *v13;
    v29 = *(*v14 + 656);
    if (v27 >= v29 && (v26 >= v28 || v27 != v29))
    {
      v31 = *v9;
      v32 = *(*v9 + 656);
      if (v32 < v27 || v31 < v26 && v32 == v27)
      {
        *v10 = v31;
        *v9 = v26;
        v33 = *v10;
        v34 = *(*v10 + 656);
        v35 = *v14;
        v36 = *(*v14 + 656);
        if (v34 < v36 || v33 < v35 && v34 == v36)
        {
          *v14 = v33;
          *v10 = v35;
        }
      }

      goto LABEL_78;
    }

    v43 = *v9;
    v44 = *(*v9 + 656);
    if (v44 < v27 || v43 < v26 && v44 == v27)
    {
      *v14 = v43;
    }

    else
    {
      *v14 = v26;
      *v10 = v28;
      v109 = *v9;
      v110 = *(*v9 + 656);
      v111 = *(v28 + 656);
      if (v110 >= v111 && (v109 >= v28 || v110 != v111))
      {
        goto LABEL_78;
      }

      *v10 = v109;
    }

    *v9 = v28;
LABEL_78:
    --a3;
    v67 = *v10;
    if (a4)
    {
      result = *(v67 + 656);
LABEL_83:
      for (i = v10 + 1; ; ++i)
      {
        v72 = i - 1;
        v71 = *i;
        v73 = *(*i + 656);
        if (v73 >= result && (v71 >= v67 || v73 != result))
        {
          break;
        }
      }

      v75 = a2 - 1;
      if (v72 == v10)
      {
        v80 = a2 - 1;
        while (1)
        {
          v76 = v80;
          v81 = v80 + 1;
          if (i >= v81)
          {
            break;
          }

          v82 = *(*v76 + 656);
          if (v82 >= result)
          {
            v80 = v76 - 1;
            if (*v76 >= v67 || v82 != result)
            {
              continue;
            }
          }

          goto LABEL_109;
        }

        v76 = v81;
      }

      else
      {
        do
        {
          v76 = v75;
          v77 = *v75;
          v78 = *(*v75 + 656);
          if (v78 < result)
          {
            break;
          }

          --v75;
        }

        while (v77 >= v67 || v78 != result);
      }

LABEL_109:
      if (i < v76)
      {
        v84 = *v76;
        v85 = i;
        v86 = v76;
        do
        {
          *v85 = v84;
          v85 += 8;
          *v86 = v71;
          v87 = *(v67 + 656);
          while (1)
          {
            v72 = (v85 - 8);
            v71 = *v85;
            v88 = *(*v85 + 656);
            if (v88 >= v87 && (v71 >= v67 || v88 != v87))
            {
              break;
            }

            v85 += 8;
          }

          v90 = v86 - 1;
          do
          {
            v86 = v90;
            v84 = *v90;
            v91 = *(*v90 + 656);
            if (v91 < v87)
            {
              break;
            }

            --v90;
          }

          while (v84 >= v67 || v91 != v87);
        }

        while (v85 < v86);
      }

      if (v72 != v10)
      {
        *v10 = *v72;
      }

      *v72 = v67;
      if (i < v76)
      {
        goto LABEL_131;
      }

      v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **>(v10, v72);
      v10 = v72 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **>(v72 + 1, a2))
      {
        a2 = v72;
        if (v93)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v93)
      {
LABEL_131:
        std::__introsort<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,false>(a1, v72, a3, a4 & 1);
        a4 = 0;
        v10 = v72 + 1;
      }
    }

    else
    {
      v68 = *(v10 - 1);
      v69 = *(v68 + 656);
      result = *(v67 + 656);
      if (v69 < result || v68 < v67 && v69 == result)
      {
        goto LABEL_83;
      }

      v120 = *v9;
      v121 = *(*v9 + 656);
      if (result < v121 || v67 < v120 && result == v121)
      {
        v122 = v10 + 1;
        do
        {
          v10 = v122;
          v123 = *v122;
          v124 = *(*v122 + 656);
          if (result < v124)
          {
            break;
          }

          ++v122;
        }

        while (v67 >= v123 || result != v124);
      }

      else
      {
        v137 = v10 + 1;
        do
        {
          v10 = v137;
          if (v137 >= a2)
          {
            break;
          }

          v138 = *v137;
          v139 = *(*v137 + 656);
          if (result < v139)
          {
            break;
          }

          ++v137;
        }

        while (v67 >= v138 || result != v139);
      }

      v126 = a2;
      if (v10 < a2)
      {
        v126 = a2 - 1;
        while (result < v121 || v67 < v120 && result == v121)
        {
          v127 = *--v126;
          v120 = v127;
          v121 = *(v127 + 656);
        }
      }

      if (v10 < v126)
      {
        v128 = *v10;
        v129 = *v126;
        do
        {
          *v10 = v129;
          *v126 = v128;
          result = *(v67 + 656);
          v130 = v10 + 1;
          do
          {
            v10 = v130;
            v128 = *v130;
            v131 = *(*v130 + 656);
            if (result < v131)
            {
              break;
            }

            ++v130;
          }

          while (v67 >= v128 || result != v131);
          do
          {
            do
            {
              v133 = *--v126;
              v129 = v133;
              v134 = *(v133 + 656);
            }

            while (result < v134);
          }

          while (v67 < v129 && result == v134);
        }

        while (v10 < v126);
      }

      v136 = v10 - 1;
      if (v10 - 1 != a1)
      {
        *a1 = *v136;
      }

      a4 = 0;
      *v136 = v67;
    }
  }

  if (v11 < 2)
  {
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_9;
  }

  v141 = *v9;
  result = *(*v9 + 656);
  v142 = *v10;
  v143 = *(*v10 + 656);
  if (result < v143 || v141 < v142 && result == v143)
  {
    *v10 = v141;
    goto LABEL_342;
  }

  return result;
}

void std::vector<VKRouteInfo * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<RouteSection>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A2EBBE5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _shouldUseSnapshotService(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!GEOConfigGetBOOL())
  {
    goto LABEL_4;
  }

  v2 = [v1 _routeOverlay];

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 _routeContext];

  if (v3)
  {
    goto LABEL_4;
  }

  v6 = [v1 _allOverlayRenderers];
  v7 = [v6 count];

  if (v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v1 _allOverlayRenderers];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![*(*(&v19 + 1) + 8 * i) conformsToProtocol:&unk_1F162A120])
          {

            goto LABEL_4;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  if (![v1 _useSnapshotService] || v1 && (objc_msgSend(v1, "_cartographicConfiguration"), v18 == 2) || _MKLinkedOnOrAfterReleaseSet(2310) && (_UIApplicationIsExtension() & 1) == 0 && (objc_msgSend(v1, "mapType") == 4 || objc_msgSend(v1, "mapType") == 3 || (objc_msgSend(v1, "scale"), v14 = v13, objc_msgSend(v1, "size"), v16 = v14 * v15, objc_msgSend(v1, "size"), GEOConfigGetInteger() < llround(v16 * v17))))
  {
LABEL_4:
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id _snapshotQueue()
{
  if (_snapshotQueue_onceToken != -1)
  {
    dispatch_once(&_snapshotQueue_onceToken, &__block_literal_global_166);
  }

  v1 = _snapshotQueue_snapshotQueue;

  return v1;
}

void _MKGEOAppEnteredBackground()
{
  if ((_geoInForeground & 1) == 0)
  {
    _geoInForeground = 1;
  }
}

id MKGetTransitItemUpdaterLog()
{
  if (MKGetTransitItemUpdaterLog_onceToken != -1)
  {
    dispatch_once(&MKGetTransitItemUpdaterLog_onceToken, &__block_literal_global_13);
  }

  v1 = MKGetTransitItemUpdaterLog_log;

  return v1;
}

int8x8_t MKDefaultGuidanceManeuverMetrics@<D0>(uint64_t a1@<X8>)
{
  BOOL = GEOConfigGetBOOL();
  *a1 = 0;
  *(a1 + 8) = MKDefaultGuidanceManeuverMetrics_referenceSize;
  if (BOOL)
  {
    __asm { FMOV            V0.2D, #7.0 }

    *(a1 + 24) = _Q0;
    *(a1 + 40) = xmmword_1A30F6FE0;
    *(a1 + 56) = xmmword_1A30F6FF0;
    *(a1 + 72) = xmmword_1A30F7000;
    *(a1 + 88) = xmmword_1A30F7010;
    *(a1 + 104) = 0x4026000000000000;
    *(a1 + 112) = 3;
    *(a1 + 120) = xmmword_1A30F7020;
    *(a1 + 136) = xmmword_1A30F70E0;
    *(a1 + 152) = xmmword_1A30F7030;
    *(a1 + 168) = xmmword_1A30F7040;
    *(a1 + 184) = xmmword_1A30F7050;
    *(a1 + 200) = xmmword_1A30F7060;
    *(a1 + 216) = xmmword_1A30F7070;
    *(a1 + 232) = xmmword_1A30F70F0;
    v8 = xmmword_1A30F7080;
    *(a1 + 248) = xmmword_1A30F7080;
    *(a1 + 264) = 0x403E8BA2F8000000;
    v9 = 0x1000000000001;
    v10 = xmmword_1A30F7090;
  }

  else
  {
    __asm { FMOV            V0.2D, #8.0 }

    *(a1 + 24) = _Q0;
    *(a1 + 40) = xmmword_1A30F6F10;
    *(a1 + 56) = xmmword_1A30F6F20;
    *(a1 + 72) = xmmword_1A30F6F30;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 3;
    *(a1 + 120) = xmmword_1A30F6F40;
    *(a1 + 136) = xmmword_1A30F6F50;
    *(a1 + 152) = xmmword_1A30F6F60;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0x402E000000000000;
    *(a1 + 192) = xmmword_1A30F6F70;
    *(a1 + 208) = xmmword_1A30F6F80;
    *(a1 + 224) = xmmword_1A30F6F90;
    *(a1 + 240) = xmmword_1A30F6FA0;
    *(a1 + 256) = xmmword_1A30F6FB0;
    v9 = 1;
    v10 = xmmword_1A30F6FC0;
    v8 = xmmword_1A30F6FD0;
  }

  *(a1 + 272) = xmmword_1A30F70A0;
  *(a1 + 288) = 0x4024000000000000;
  *(a1 + 488) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = v8;
  *(a1 + 320) = v10;
  result = vuzp1_s8(v9, v9);
  *(a1 + 336) = result.i32[0];
  return result;
}

uint64_t _MKGuidanceManeuverArrowMetricsApplyScaleForContent(uint64_t result, uint64_t a2, int a3, double a4, double a5)
{
  v5 = (a2 + 312);
  *result = 0;
  v6.f64[0] = *(a2 + 8);
  if (a3)
  {
    v6.f64[1] = *(a2 + 16);
    v7 = vdupq_lane_s64(*&a5, 0);
    *(result + 8) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(v6, a5), a4)), v7);
    *(result + 24) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 24), a5), a4)), v7);
    *(result + 40) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 40), a5), a4)), v7);
    *(result + 56) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 56), a5), a4)), v7);
    *(result + 72) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 72), a5), a4)), v7);
    *(result + 88) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 88), a5), a4)), v7);
    *(result + 104) = round(*(a2 + 104) * a5 * a4) / a5;
    *(result + 112) = *(a2 + 112);
    *(result + 120) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 120), a5), a4)), v7);
    *(result + 136) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 136), a5), a4)), v7);
    *(result + 152) = round(*(a2 + 152) * a5 * a4) / a5;
    v8 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 176), a5), a4)), v7);
    *(result + 160) = *(a2 + 160);
    *(result + 176) = v8;
    v9 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 208), a5), a4)), v7);
    *(result + 192) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 192), a5), a4)), v7);
    *(result + 208) = v9;
    v10 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 240), a5), a4)), v7);
    *(result + 224) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 224), a5), a4)), v7);
    *(result + 240) = v10;
    v11 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 272), a5), a4)), v7);
    *(result + 256) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 256), a5), a4)), v7);
    *(result + 272) = v11;
    *(result + 288) = round(*(a2 + 288) * a5 * a4) / a5;
    v12 = round(*(a2 + 304) * a5 * a4) / a5;
    v13 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*v5, a5), a4)), v7);
  }

  else
  {
    *(result + 8) = v6.f64[0] * a4;
    v14 = vmulq_n_f64(*(a2 + 32), a4);
    *(result + 16) = vmulq_n_f64(*(a2 + 16), a4);
    *(result + 32) = v14;
    v15 = vmulq_n_f64(*(a2 + 64), a4);
    *(result + 48) = vmulq_n_f64(*(a2 + 48), a4);
    *(result + 64) = v15;
    v16 = vmulq_n_f64(*(a2 + 96), a4);
    *(result + 80) = vmulq_n_f64(*(a2 + 80), a4);
    *(result + 96) = v16;
    v17 = *(a2 + 112);
    *(result + 120) = vmulq_n_f64(*(a2 + 120), a4);
    *(result + 136) = vmulq_n_f64(*(a2 + 136), a4);
    *(result + 152) = *(a2 + 152) * a4;
    v18 = vmulq_n_f64(*(a2 + 176), a4);
    *(result + 160) = *(a2 + 160);
    *(result + 176) = v18;
    v19 = vmulq_n_f64(*(a2 + 208), a4);
    *(result + 192) = vmulq_n_f64(*(a2 + 192), a4);
    *(result + 208) = v19;
    v20 = vmulq_n_f64(*(a2 + 240), a4);
    *(result + 224) = vmulq_n_f64(*(a2 + 224), a4);
    *(result + 240) = v20;
    v21 = vmulq_n_f64(*(a2 + 272), a4);
    *(result + 256) = vmulq_n_f64(*(a2 + 256), a4);
    *(result + 272) = v21;
    *(result + 288) = *(a2 + 288) * a4;
    v12 = *(a2 + 304) * a4;
    v13 = vmulq_n_f64(*v5, a4);
    *(result + 112) = v17;
  }

  *(result + 296) = *(a2 + 296);
  *(result + 304) = v12;
  *(result + 312) = v13;
  *(result + 328) = *(a2 + 328);
  *(result + 336) = *(a2 + 336);
  v22.f64[0] = *(a2 + 344);
  if (a3)
  {
    v22.f64[1] = *(a2 + 352);
    v23 = vdupq_lane_s64(*&a5, 0);
    v24 = *(a2 + 376);
    v25 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 360), a5), a4)), v23);
    *(result + 344) = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(v22, a5), a4)), v23);
    *(result + 360) = v25;
    v26 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(v24, a5), a4)), v23);
    v27 = *(a2 + 408);
    v28 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 392), a5), a4)), v23);
    *(result + 376) = v26;
    *(result + 392) = v28;
    v29 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(v27, a5), a4)), v23);
    v30 = *(a2 + 440);
    v31 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 424), a5), a4)), v23);
    *(result + 408) = v29;
    *(result + 424) = v31;
    v32 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(v30, a5), a4)), v23);
    v33 = *(a2 + 472);
    v34 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(*(a2 + 456), a5), a4)), v23);
    *(result + 440) = v32;
    *(result + 456) = v34;
    v35 = vdivq_f64(vrndaq_f64(vmulq_n_f64(vmulq_n_f64(v33, a5), a4)), v23);
    v36 = round(*(a2 + 488) * a5 * a4) / a5;
  }

  else
  {
    *(result + 344) = v22.f64[0] * a4;
    v37 = vmulq_n_f64(*(a2 + 368), a4);
    *(result + 352) = vmulq_n_f64(*(a2 + 352), a4);
    *(result + 368) = v37;
    v38 = vmulq_n_f64(*(a2 + 400), a4);
    *(result + 384) = vmulq_n_f64(*(a2 + 384), a4);
    *(result + 400) = v38;
    v39 = vmulq_n_f64(*(a2 + 432), a4);
    *(result + 416) = vmulq_n_f64(*(a2 + 416), a4);
    *(result + 432) = v39;
    *(result + 448) = vmulq_n_f64(*(a2 + 448), a4);
    *(result + 464) = *(a2 + 464) * a4;
    v35 = vmulq_n_f64(*(a2 + 472), a4);
    v36 = *(a2 + 488) * a4;
  }

  *(result + 472) = v35;
  *(result + 488) = v36;
  return result;
}

double MKDefaultJunctionManeuverMetrics@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  MKDefaultGuidanceManeuverMetrics(a1);
  *(a1 + 24) = 0x401C000000000000;
  *(a1 + 136) = xmmword_1A30F70B0;
  *(a1 + 152) = 0;
  *(a1 + 240) = 0x4037000000000000;
  v2 = vmulq_f64(*(a1 + 8), xmmword_1A30F71F0);
  *(a1 + 224) = vextq_s8(v2, v2, 8uLL);
  *(a1 + 200) = v2.i64[0];
  *(a1 + 216) = 0x4030000000000000;
  *(a1 + 384) = 0x4020000000000000;
  result = 8.0;
  *(a1 + 80) = xmmword_1A30F70D0;
  return result;
}

uint64_t MKFormattedStringOptionsMakeDefault@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = 1;
  *(a1 + 15) = 0;
  *(a1 + 18) = MKApplicationLayoutDirectionIsRightToLeft();
  result = +[MKTransitItemReferenceDateUpdater referenceDateAsTimeInterval];
  *(a1 + 24) = v3;
  return result;
}

uint64_t MKApplicationLayoutDirectionIsRightToLeft()
{
  if (![MEMORY[0x1E696AAE8] _navigation_isRunningInSiri])
  {
    goto LABEL_8;
  }

  if (_MKSiriLanguageIsRTLFn_onceToken != -1)
  {
    dispatch_once(&_MKSiriLanguageIsRTLFn_onceToken, &__block_literal_global_179);
  }

  v0 = _MKSiriLanguageIsRTLFn_SiriLanguageIsRTLFn;
  if (_MKSiriLanguageIsRTLFn_SiriLanguageIsRTLFn)
  {

    return v0();
  }

  else
  {
LABEL_8:
    v2 = [MEMORY[0x1E69DC668] sharedApplication];
    v3 = [v2 userInterfaceLayoutDirection] == 1;

    return v3;
  }
}

double MKArrowCreateBezierPathsForEitherProceedToRouteOrArrivalWithSizeAndReturnCenter(void *a1, void *a2, uint64_t a3, int a4, double a5, CGFloat a6)
{
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v13 = [MEMORY[0x1E69DC728] bezierPath];
  v14 = a6 * 0.245614037;
  v15 = a5 - *(a3 + 24);
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeTranslation(&v46, v15 * 0.5, a6);
  memset(&v45, 0, sizeof(v45));
  if (a4)
  {
    *__dst = v46;
    CGAffineTransformTranslate(&v45, __dst, 0.0, -v14);
    v16 = *(a3 + 56);
    memset(&v44, 0, sizeof(v44));
    *__dst = v46;
    CGAffineTransformTranslate(&v44, __dst, 0.0, -v16);
    memcpy(__dst, a3, sizeof(__dst));
    MKArrowAppendInitialSegmentToPathInvertingCorners(v13, __dst, &v44, 1, v14);
    memset(&v44, 0, sizeof(v44));
    CGAffineTransformMakeScale(&v44, 1.0, -1.0);
    t1 = v44;
    memset(&v43, 0, sizeof(v43));
    t2 = v46;
    CGAffineTransformConcat(__dst, &t1, &t2);
    CGAffineTransformTranslate(&v43, __dst, 0.0, v16);
    memcpy(__dst, a3, sizeof(__dst));
    v17 = &v43;
  }

  else
  {
    v45 = v46;
    memcpy(__dst, a3, sizeof(__dst));
    MKArrowAppendInitialSegmentToPathInvertingCorners(v13, __dst, &v45, 0, a6 * 0.245614037);
    memcpy(__dst, a3, sizeof(__dst));
    v17 = &v45;
  }

  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v13, __dst, &v47, v17, 0.0);
  v18 = v13;
  *a2 = v13;
  v19 = *(a3 + 288);
  v20 = v45.tx + *(&v47 + 1) * v45.c + v45.a * *&v47;
  v21 = v45.ty + *(&v47 + 1) * v45.d + v45.b * *&v47 - v19;
  v22 = [MEMORY[0x1E69DC728] bezierPath];
  v23 = v45.tx + *(&v48 + 1) * v45.c + v45.a * *&v48;
  v24 = v45.tx + v45.c * *(&v49 + 1) + v45.a * *&v49;
  v25 = v45.ty + *(&v48 + 1) * v45.d + v45.b * *&v48 - v19;
  if (v20 == v23)
  {
    v26 = INFINITY;
  }

  else
  {
    v26 = (v21 - v25) / (v20 - v23);
  }

  v27 = v45.ty + v45.d * *(&v49 + 1) + v45.b * *&v49 - v19;
  v40 = atan(v26) + 3.14159265;
  if (v20 == v24)
  {
    v28 = INFINITY;
  }

  else
  {
    v28 = (v21 - v27) / (v20 - v24);
  }

  v29 = atan(v28);
  v30 = *(a3 + 272);
  v31 = __sincos_stret(v29);
  v32 = v24 - v30 * v31.__cosval;
  v33 = v27 - v30 * v31.__sinval;
  [v22 moveToPoint:{v23, v25}];
  [v22 addArcWithCenter:1 radius:v20 startAngle:v21 endAngle:sqrt((v20 - v23) * (v20 - v23) + (v21 - v25) * (v21 - v25)) clockwise:{v40, v29}];
  [v22 addLineToPoint:{v32, v33}];
  v34 = sqrt((v20 - v32) * (v20 - v32) + (v21 - v33) * (v21 - v33));
  [v22 addArcWithCenter:0 radius:v20 startAngle:v21 endAngle:v34 clockwise:{v29, v40}];
  [v22 addLineToPoint:{v23, v25}];
  [v22 closePath];
  [v12 addObject:v22];
  v35 = v34 - *(a3 + 280);
  if (*(a3 + 296) == 1)
  {
    v36 = __sincos_stret(v40);
    v37 = [MEMORY[0x1E69DC728] bezierPath];

    [v37 moveToPoint:{v20, v21}];
    [v37 addLineToPoint:{v20 + v35 * v36.__cosval, v21 + v35 * v36.__sinval}];
    [v37 addArcWithCenter:1 radius:v20 startAngle:v21 endAngle:v35 clockwise:{v40, v29}];
    [v37 addLineToPoint:{v20, v21}];
    [v37 closePath];
  }

  else
  {
    v37 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v20 - v35, v21 - v35, v35 + v35, v35 + v35}];
  }

  [v12 addObject:v37];
  v38 = v12;
  *a1 = v12;

  return v20;
}

void MKArrowAppendInitialSegmentToPathInvertingCorners(void *a1, uint64_t a2, _OWORD *a3, int a4, double a5)
{
  v9 = a1;
  v10 = *(a2 + 24);
  if (*(a2 + 64) >= v10 * 0.5)
  {
    v11 = v10 * 0.5;
  }

  else
  {
    v11 = *(a2 + 64);
  }

  if (v11 <= 0.0)
  {
    v13 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, -a5}];
  }

  else
  {
    if (a4)
    {
      v12 = 3;
    }

    else
    {
      v12 = 12;
    }

    v13 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v12 byRoundingCorners:0.0 cornerRadii:{-a5, v10, a5, v11, v11}];
  }

  v14 = v13;
  v15 = a3[1];
  *&v19.a = *a3;
  *&v19.c = v15;
  *&v19.tx = a3[2];
  [v13 applyTransform:&v19];
  [v9 appendPath:v14];
  v16 = a3[1];
  *&v18.a = *a3;
  *&v18.c = v16;
  *&v18.tx = a3[2];
  CGAffineTransformTranslate(&v19, &v18, 0.0, -a5);
  v17 = *&v19.c;
  *a3 = *&v19.a;
  a3[1] = v17;
  a3[2] = *&v19.tx;
}

void MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, CGFloat a5)
{
  v8 = a1;
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 24);
  v12 = (v9 - v11) * 0.5;
  v13 = 0.0 - v12;
  v71 = v11;
  v14 = v11 + 0.0;
  v15 = v14 + v12;
  v16 = 0.0 - v10;
  v80 = (0.0 - v12 + v14 + v12) * 0.5;
  if (v80 == 0.0 - v12)
  {
    v17 = INFINITY;
    v18 = (0.0 - v12 + v14 + v12) * 0.5;
  }

  else
  {
    v17 = v16 / (v80 - v13);
    v18 = v16 - v17 * v80;
  }

  if (v80 == v15)
  {
    v19 = INFINITY;
    v20 = (0.0 - v12 + v14 + v12) * 0.5;
  }

  else
  {
    v19 = v16 / (v80 - v15);
    v20 = v16 - v19 * v80;
  }

  v21 = *(a2 + 112);
  v72 = v18;
  v73 = v17;
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        goto LABEL_37;
      }

      goto LABEL_18;
    }

    v65 = *(a2 + 56);
    v67 = *(a2 + 48);
    v69 = v14;
  }

  else
  {
    v67 = *(a2 + 48);
    if (v21)
    {
      if (v21 != 1)
      {
        goto LABEL_37;
      }

      v65 = *(a2 + 56);
      v22 = v18;
      v23 = v14;
      v24 = [MEMORY[0x1E69DC728] bezierPath];
      v25 = v20 + v19 * v23;
      v74 = v20;
      v76 = v19;
      v26 = v16;
      v27 = v71 * 1.39999998 + v25;
      v28 = v71 * 1.39999998 + 0.0;
      [v24 moveToPoint:v23];
      v69 = v23;
      v29 = v27;
      v16 = v26;
      [v24 addLineToPoint:{v23, v29}];
      [v24 addLineToPoint:{v15, v28}];
      [v24 addLineToPoint:{v15, 0.0}];
      [v24 addLineToPoint:{v80, v26}];
      [v24 addLineToPoint:{v13, 0.0}];
      [v24 addLineToPoint:{v13, v28}];
      [v24 addLineToPoint:{0.0, v71 * 1.39999998 + v22 + v17 * 0.0}];
      [v24 addLineToPoint:{0.0, 0.0}];
      [v24 closePath];
      v30 = a4[1];
      *&v81.a = *a4;
      *&v81.c = v30;
      *&v81.tx = a4[2];
      [v24 applyTransform:&v81];
      [v8 appendPath:v24];
    }

    else
    {
      v65 = *(a2 + 56);
      v69 = v14;
      v74 = v20;
      v76 = v19;
    }

    v31 = [MEMORY[0x1E69DC728] bezierPath];
    [v31 moveToPoint:{v80, v16}];
    [v31 addLineToPoint:{v13, 0.0}];
    [v31 addCurveToPoint:0.0 controlPoint1:0.0 controlPoint2:{v13, 0.0}];
    [v31 addLineToPoint:{0.0, 0.0}];
    [v31 addLineToPoint:{v69, 0.0}];
    v20 = v74;
    v19 = v76;
    [v31 addCurveToPoint:v15 controlPoint1:0.0 controlPoint2:?];
    [v31 addLineToPoint:{v80, v16}];
    [v31 closePath];
    v32 = a4[1];
    *&v81.a = *a4;
    *&v81.c = v32;
    *&v81.tx = a4[2];
    [v31 applyTransform:&v81];
    [v8 appendPath:v31];
  }

  v33 = [MEMORY[0x1E69DC728] bezierPath];
  [v33 moveToPoint:{v69, 0.0}];
  [v33 addLineToPoint:{v15, 0.0}];
  [v33 addLineToPoint:{v80, v16}];
  [v33 addLineToPoint:{v13, 0.0}];
  [v33 addLineToPoint:{0.0, 0.0}];
  [v33 closePath];
  v34 = a4[1];
  *&v81.a = *a4;
  *&v81.c = v34;
  *&v81.tx = a4[2];
  [v33 applyTransform:&v81];
  [v8 appendPath:v33];

  v10 = v65;
  v9 = v67;
LABEL_18:
  if (v9 == 0.0)
  {
    goto LABEL_39;
  }

  v75 = v20;
  v77 = v19;
  if (v9 / 24.0 >= v10 / 19.0)
  {
    v35 = v10 / 19.0;
  }

  else
  {
    v35 = v9 / 24.0;
  }

  v36 = v35 * 2.0999999;
  v37 = v35 + v35;
  __x = *(a2 + 160) * 0.0174532925;
  v38 = atan(v10 / v9);
  v39 = [MEMORY[0x1E69DC728] bezierPath];
  v66 = v35 + v35;
  v40 = (v35 + v35) * 0.829037573;
  if (v40 < 0.0)
  {
    v40 = v37 * -0.829037573;
  }

  v41 = v37 * 0.440807097;
  if (v37 * 0.440807097 < 0.0)
  {
    v41 = v37 * -0.440807097;
  }

  v70 = v15;
  v58 = v80 - v40;
  v42 = v16 + v41;
  v61 = v16 + v41;
  v64 = v80 + v40;
  v59 = v13 + v36;
  v68 = -(v35 * 2.0999999);
  v60 = 1.25663706 - v38;
  v62 = v38;
  v44 = __sincos_stret(1.25663706 - v38);
  cosval = v44.__cosval;
  if (v44.__cosval < 0.0)
  {
    cosval = -v44.__cosval;
  }

  v45 = v13;
  v46 = v36 * (1.0 - cosval);
  v48 = __sincos_stret(v38 + -1.57079633 + 1.25663706);
  v47 = v48.__cosval;
  if (v48.__cosval < 0.0)
  {
    v47 = -v48.__cosval;
  }

  v49 = v45 + v36 * (v48.__sinval + 1.0);
  v50 = -(v36 * (1.0 - v47));
  [v39 moveToPoint:{v58, v42}];
  [v39 addLineToPoint:{v45 + v46, -(v36 * (v44.__sinval + 1.0))}];
  [v39 addArcWithCenter:0 radius:v59 startAngle:v68 endAngle:v36 clockwise:{v60 + 3.14159265, v60 + 3.14159265 + -2.51327412}];
  v51 = v80 + v71 * -0.5;
  v52 = tan(__x);
  v53 = -(v51 - v49);
  if (v51 - v49 < 0.0)
  {
    v53 = v51 - v49;
  }

  v54 = v50 + v53 * v52;
  v78 = v45;
  v55 = v49 - v45;
  if (v49 - v45 < 0.0)
  {
    v55 = -(v49 - v45);
  }

  v56 = v70 - v55;
  [v39 addLineToPoint:{v51, v54}];
  [v39 addLineToPoint:{v51, -a5}];
  v15 = v70;
  [v39 addLineToPoint:{v80 + v71 * 0.5, -a5}];
  [v39 addLineToPoint:{v80 + v71 * 0.5, v54}];
  [v39 addLineToPoint:{v56, v50}];
  [v39 addArcWithCenter:0 radius:v70 - v36 startAngle:v68 endAngle:v36 clockwise:{v62 + 1.25663706 + -6.28318531, v62 + 1.25663706 + -6.28318531 + -2.51327412}];
  [v39 addLineToPoint:{v64, v61}];
  [v39 addArcWithCenter:0 radius:v80 startAngle:v16 + v66 endAngle:v66 clockwise:{5.68977336, 3.7350046}];
  [v39 closePath];
  if (a5 > 0.0)
  {
    CGAffineTransformMakeTranslation(&v81, 0.0, a5);
    [v39 applyTransform:&v81];
  }

  v57 = a4[1];
  *&v81.a = *a4;
  *&v81.c = v57;
  *&v81.tx = a4[2];
  [v39 applyTransform:&v81];
  [v8 appendPath:v39];

  v19 = v77;
  v13 = v78;
  v18 = v72;
  v17 = v73;
  v20 = v75;
LABEL_37:
  if (a3)
  {
    *a3 = v80;
    *(a3 + 8) = v16;
    *(a3 + 16) = v13;
    *(a3 + 24) = 0;
    *(a3 + 32) = v15;
    *(a3 + 40) = 0;
    *(a3 + 48) = v17;
    *(a3 + 56) = v18;
    *(a3 + 64) = v19;
    *(a3 + 72) = v20;
  }

LABEL_39:
}

BOOL MKGuidanceManeuverArrowMetricsEqualToArrowMetrics(double *a1, double *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 && a1[3] == a2[3] && a1[4] == a2[4] && a1[5] == a2[5] && (a1[6] == a2[6] ? (v3 = a1[7] == a2[7]) : (v3 = 0), v3 && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10] && a1[11] == a2[11] && a1[12] == a2[12] && a1[13] == a2[13] && *(a1 + 14) == *(a2 + 14) && a1[15] == a2[15] && a1[16] == a2[16] && a1[17] == a2[17] && a1[18] == a2[18] && a1[19] == a2[19] && a1[20] == a2[20] && a1[21] == a2[21] && a1[22] == a2[22] && a1[23] == a2[23] && a1[24] == a2[24] && a1[25] == a2[25] && a1[26] == a2[26] && a1[27] == a2[27] && a1[28] == a2[28] && a1[29] == a2[29] && a1[30] == a2[30] && a1[31] == a2[31] && a1[32] == a2[32] && a1[33] == a2[33] && a1[34] == a2[34] && a1[35] == a2[35] && a1[36] == a2[36] && *(a1 + 296) == *(a2 + 296) && a1[38] == a2[38] && a1[39] == a2[39] && a1[40] == a2[40] && a1[41] == a2[41] && *(a1 + 336) == *(a2 + 336) && *(a1 + 337) == *(a2 + 337) && *(a1 + 338) == *(a2 + 338) && *(a1 + 339) == *(a2 + 339) && a1[43] == a2[43] && a1[44] == a2[44] && a1[45] == a2[45] && a1[46] == a2[46] && a1[47] == a2[47] && a1[48] == a2[48] && a1[49] == a2[49] && a1[50] == a2[50] && a1[51] == a2[51] && a1[52] == a2[52] && a1[53] == a2[53] && a1[54] == a2[54] && a1[55] == a2[55] && a1[56] == a2[56] && a1[57] == a2[57] && a1[58] == a2[58] && a1[59] == a2[59] && a1[60] == a2[60])))
  {
    return a1[61] == a2[61];
  }

  else
  {
    return 0;
  }
}

void PartitionAnnotations(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a1;
  v4 = 0;
  v5 = 0;
  v6 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 feature];
        v11 = [v10 isGlobalFeature];

        if (v11)
        {
          if (!v4)
          {
            v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
            *a3 = v12;
            v4 = v12;
          }

          [v4 addObject:v9];
        }

        else
        {
          if (!v5)
          {
            v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(0, "count")}];
            *v14 = v13;
            v5 = v13;
          }

          [v5 addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void _mapItemsForGeoMapItemsWithHandler(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [v3 count];
    if (v5)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            if ([v12 conformsToProtocol:{&unk_1F1671998, v16}] && objc_msgSend(v12, "isValid"))
            {
              v13 = [MKMapItem _itemWithGeoMapItem:v12];
              [v6 addObject:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      if (v6 && [v6 count])
      {
        v14 = 0;
LABEL_18:
        v4[2](v4, v6, v14);

        goto LABEL_19;
      }
    }

    else
    {
      v6 = 0;
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v15 initWithDomain:MKErrorDomain code:4 userInfo:0];

    v6 = 0;
    goto LABEL_18;
  }

LABEL_19:
}

uint64_t PhoneNumbersLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = PhoneNumbersLibraryCore_frameworkLibrary;
  v9 = PhoneNumbersLibraryCore_frameworkLibrary;
  if (!PhoneNumbersLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhoneNumbersLibraryCore_block_invoke;
    v3[4] = &unk_1E76CD5E0;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E76C9078;
    v11 = *off_1E76C9088;
    v12 = 0;
    v7[3] = _sl_dlopen();
    PhoneNumbersLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A2EBEF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mk_CFPhoneNumberCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getCFPhoneNumberCreateSymbolLoc_ptr;
  v14 = getCFPhoneNumberCreateSymbolLoc_ptr;
  if (!getCFPhoneNumberCreateSymbolLoc_ptr)
  {
    v7 = PhoneNumbersLibrary();
    v12[3] = dlsym(v7, "CFPhoneNumberCreate");
    getCFPhoneNumberCreateSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  v10 = v6;
  _Block_object_dispose(&v11, 8);
  if (!v10)
  {
    dlerror();
    v9 = abort_report_np();
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v9);
  }

  return v10(a1, a2, a3);
}

void _performBlockOnMainThreadIfNeeded(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

CGPathRef _MKCGPathCreateCopyByStrokingPath(CGPathRef path, CGLineCap lineCap, CGLineCap a3, CGLineJoin a4, CGFloat a5, CGFloat a6)
{
  if (lineCap == a3)
  {

    return CGPathCreateCopyByStrokingPath(path, 0, a5, lineCap, a4, a6);
  }

  else
  {
    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(path, 0, a5, kCGLineCapButt, a4, a6);
    Mutable = CGPathCreateMutable();
    CGPathAddPath(Mutable, 0, CopyByStrokingPath);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x4012000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = &unk_1A31250BE;
    v29 = *MEMORY[0x1E695EFF8];
    v16 = 0;
    v17 = &v16;
    v18 = 0x4012000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = &unk_1A31250BE;
    v22 = *MEMORY[0x1E695EFF8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___MKCGPathCreateCopyByStrokingPath_block_invoke;
    v13[3] = &unk_1E76C6218;
    v13[4] = &v30;
    v13[5] = &v16;
    *&v13[8] = a5;
    v13[6] = &v23;
    v13[7] = Mutable;
    v14 = a3;
    v15 = lineCap;
    CGPathApplyWithBlock(path, v13);
    if (v31[3])
    {
      _MKCGPathAddLineCap(Mutable, v24[3], v17[3], a5, a3, 0);
    }

    CGPathRelease(CopyByStrokingPath);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v30, 8);
    return Mutable;
  }
}

void sub_1A2ECB5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void _MKCGPathAddLineCap(CGMutablePathRef path, CGPoint a2, CGPoint a3, double a4, CGLineCap a5, _BOOL4 a6)
{
  if (a5)
  {
    v6 = a6;
    v9 = a3.y - a2.y;
    v10 = 1.0 / sqrt((a3.x - a2.x) * (a3.x - a2.x) + 0.0 + v9 * v9);
    v11 = (a3.x - a2.x) * v10;
    v12 = (a3.y - a2.y) * v10;
    if (a6)
    {
      x = a2.x;
    }

    else
    {
      x = a3.x;
    }

    if (a6)
    {
      y = a2.y;
    }

    else
    {
      y = a3.y;
    }

    if (a5 == kCGLineCapRound)
    {
      v18 = acos(fmax(fmin(v11 + 0.0 + v12 * 0.0, 1.0), -1.0));
      if (v9 >= 0.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = -v18;
      }

      CGPathMoveToPoint(path, 0, x, y);
      CGPathAddArc(path, 0, x, y, a4 * 0.5, v19 + -1.57079633, v19 + 1.57079633, v6);
    }

    else
    {
      if (a5 != kCGLineCapSquare)
      {
        return;
      }

      if (a6)
      {
        v15 = -v11;
      }

      else
      {
        v15 = (a3.x - a2.x) * v10;
      }

      if (a6)
      {
        v16 = -v12;
      }

      else
      {
        v16 = (a3.y - a2.y) * v10;
      }

      v17 = a4 * 0.5;
      CGPathMoveToPoint(path, 0, x + v17 * (v15 - v16), y + v17 * (v16 + v15));
      CGPathAddLineToPoint(path, 0, x + v17 * (v16 + v15), y + v17 * (v16 - v15));
      CGPathAddLineToPoint(path, 0, x + v17 * v16, y - v17 * v15);
      CGPathAddLineToPoint(path, 0, x - v17 * v16, y + v17 * v15);
    }

    CGPathCloseSubpath(path);
  }
}

id makeAnimation(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v9 = MEMORY[0x1E6979318];
  v10 = a3;
  v11 = a2;
  v12 = [v9 animationWithKeyPath:a1];
  [v12 setFromValue:v11];

  [v12 setToValue:v10];
  [v12 setBeginTime:a4];
  [v12 setDuration:a5];
  [v12 setFillMode:*MEMORY[0x1E69797F0]];
  v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v12 setTimingFunction:v13];

  return v12;
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MKGetCuratedCollectionsBatchControllerLog()
{
  if (MKGetCuratedCollectionsBatchControllerLog_onceToken != -1)
  {
    dispatch_once(&MKGetCuratedCollectionsBatchControllerLog_onceToken, &__block_literal_global);
  }

  v1 = MKGetCuratedCollectionsBatchControllerLog_log;

  return v1;
}

void __MKGetCuratedCollectionsBatchControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "CuratedCollectionsBatchController");
  v1 = MKGetCuratedCollectionsBatchControllerLog_log;
  MKGetCuratedCollectionsBatchControllerLog_log = v0;
}

void sub_1A2ECC64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MKGetMKRemoteUILog()
{
  if (MKGetMKRemoteUILog_onceToken != -1)
  {
    dispatch_once(&MKGetMKRemoteUILog_onceToken, &__block_literal_global_153);
  }

  v1 = MKGetMKRemoteUILog_log;

  return v1;
}

void __MKGetMKRemoteUILog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKRemoteUI");
  v1 = MKGetMKRemoteUILog_log;
  MKGetMKRemoteUILog_log = v0;
}

uint64_t __Block_byref_object_copy__471(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2ED0510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 112), 8);
  _Unwind_Resume(a1);
}

id _errorWithReason(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = MKErrorDomain;
  v8 = *MEMORY[0x1E695E618];
  v9[0] = a1;
  v3 = MEMORY[0x1E695DF20];
  v4 = a1;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v1 errorWithDomain:v2 code:6 userInfo:v5];

  return v6;
}

uint64_t _geoJSONObjectType(uint64_t a1)
{
  v1 = [&unk_1F1611DA0 objectForKeyedSubscript:a1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MKGetMKGeoJSONSerializationLog()
{
  if (MKGetMKGeoJSONSerializationLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKGeoJSONSerializationLog_onceToken, &__block_literal_global_568);
  }

  v1 = MKGetMKGeoJSONSerializationLog_log;

  return v1;
}

void __MKGetMKGeoJSONSerializationLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKGeoJSONSerialization");
  v1 = MKGetMKGeoJSONSerializationLog_log;
  MKGetMKGeoJSONSerializationLog_log = v0;
}

uint64_t _geoJSONGeometryType(uint64_t a1)
{
  v1 = [&unk_1F1611DC8 objectForKeyedSubscript:a1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double *_createVerticesFromGeoJSON(void *a1, void *a2)
{
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_34;
    }

    v17 = @"coordinates value is not an array";
LABEL_20:
    _errorWithReason(v17);
    *a2 = v5 = 0;
    goto LABEL_35;
  }

  if (![v3 count])
  {
    goto LABEL_34;
  }

  v4 = malloc_type_malloc(16 * [v3 count], 0x1000040451B5BE8uLL);
  if (!v4)
  {
    if (!a2)
    {
      goto LABEL_34;
    }

    v17 = @"Failed to allocate buffer";
    goto LABEL_20;
  }

  v5 = v4;
  if (![v3 count])
  {
    goto LABEL_35;
  }

  v6 = 0;
  v7 = v5 + 1;
  while (1)
  {
    v8 = [v3 objectAtIndexedSubscript:v6];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a2)
      {
        goto LABEL_33;
      }

      v18 = @"coordinate value is not an array";
LABEL_29:
      *a2 = _errorWithReason(v18);
      goto LABEL_33;
    }

    if ([v8 count] <= 1)
    {
      if (!a2)
      {
        goto LABEL_33;
      }

      v18 = @"GeoJSON positions must have at least two values";
      goto LABEL_29;
    }

    if ([v8 count] >= 4)
    {
      v9 = MKGetMKGeoJSONSerializationLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_INFO, "GeoJSON positions SHOULD NOT extend positions beyond three elements", buf, 2u);
      }
    }

    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = [v8 objectAtIndexedSubscript:1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (a2)
      {
        *a2 = _errorWithReason(@"GeoJSON positions must be an array of numbers");
      }

      goto LABEL_32;
    }

    [v11 doubleValue];
    v13 = v12;
    [v10 doubleValue];
    v15 = CLLocationCoordinate2DMake(v13, v14);
    if (fabs(v15.longitude) > 180.0 || fabs(v15.latitude) > 90.0)
    {
      break;
    }

    *(v7 - 1) = MKTilePointForCoordinate(v15.latitude, v15.longitude, 21.0);
    *v7 = v16;

    ++v6;
    v7 += 2;
    if (v6 >= [v3 count])
    {
      goto LABEL_35;
    }
  }

  if (a2)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&v15.latitude, *&v15.longitude];
    v21 = [v19 stringWithFormat:@"Invalid coordinate position: %@", v20];
    *a2 = _errorWithReason(v21);
  }

LABEL_32:

LABEL_33:
  free(v5);

LABEL_34:
  v5 = 0;
LABEL_35:

  return v5;
}

id MKGetAppleMediaServicesServerLog()
{
  if (MKGetAppleMediaServicesServerLog_onceToken != -1)
  {
    dispatch_once(&MKGetAppleMediaServicesServerLog_onceToken, &__block_literal_global_640);
  }

  v1 = MKGetAppleMediaServicesServerLog_log;

  return v1;
}

void __MKGetAppleMediaServicesServerLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "AppleMediaServicesServer");
  v1 = MKGetAppleMediaServicesServerLog_log;
  MKGetAppleMediaServicesServerLog_log = v0;
}

id getAMSMediaTaskClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSMediaTaskClass_softClass;
  v7 = getAMSMediaTaskClass_softClass;
  if (!getAMSMediaTaskClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAMSMediaTaskClass_block_invoke;
    v3[3] = &unk_1E76CD7B0;
    v3[4] = &v4;
    __getAMSMediaTaskClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2ED3C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMSBagClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSBag");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSBagClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __116__MKAppleMediaServices_mediaResultWithIdentifiers_bundleIdentifiers_artworkSize_screenScale_type_source_completion___block_invoke(v3);
  }

  return result;
}

void AppleMediaServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76C62B0;
    v3 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (AppleMediaServicesLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getAMSMediaTaskClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSMediaTask");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSMediaTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(MKAppleMediaServices *)v2 appleMediaServicesResultsWithIdentifiers:v3 bundleIdentifiers:v4 artworkSize:v5 screenScale:v10 type:v9 source:v6 completion:v7, v8];
  }
}

void sub_1A2ED4594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCPSClipRequestClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSClipRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    ClipServicesLibrary();
  }
}

void ClipServicesLibrary()
{
  v12 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = ClipServicesLibraryCore_frameworkLibrary;
  v8 = ClipServicesLibraryCore_frameworkLibrary;
  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ClipServicesLibraryCore_block_invoke;
    v2[4] = &unk_1E76CD5E0;
    v3 = &v5;
    v4 = v2;
    v9 = xmmword_1E76C63C8;
    v10 = *off_1E76C63D8;
    v11 = 0;
    v6[3] = _sl_dlopen();
    ClipServicesLibraryCore_frameworkLibrary = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  v1 = v2[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_1A2ED475C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ClipServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ClipServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCPSValidationRequestClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSValidationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSValidationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(MKClipServices *)v2 appClipsFromQuickLinks:v3 completion:v4, v5];
  }
}

Class __getCPSClipMetadataRequestClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary();
  result = objc_getClass("CPSClipMetadataRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipMetadataRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __52__MKClipServices_appClipsFromQuickLinks_completion___block_invoke(v3);
  }

  return result;
}

void sub_1A2ED6E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2ED74C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2ED899C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2ED8E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EDCC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EDCE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EDCFF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A2EDD150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A2EDEBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EDF7AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A2EDF8E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A2EDFA18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A2EDFCE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1A2EE03B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A2EE0590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A2EE12D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EE1C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A2EE2930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EE2B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EE2DA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1A2EE3044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EE3468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2EE3CB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1A2EE3F78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A2EEE574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A2EF130C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__972(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2EF3CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MKMapViewUseModernControls()
{
  if (_MKMapViewUseModernControls_onceToken != -1)
  {
    dispatch_once(&_MKMapViewUseModernControls_onceToken, &__block_literal_global_1899);
  }

  return _MKMapViewUseModernControls_useModernConntrols;
}

double MKNormalizedPointForLayer(void *a1, double a2)
{
  [a1 bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v8 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetHeight(v11);
  [a1 contentsAreFlipped];
  return a2 / v8;
}

double MKIntegralPoint(double a1, double a2, double a3)
{
  v3 = a3;
  if (a3 == 0.0)
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 scale];
    v3 = v6;
  }

  return round(a1 * v3) / v3;
}

void MKSetLayoutPriorityOnConstraints(void *a1, float a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        *&v5 = a2;
        [*(*(&v9 + 1) + 8 * v8++) setPriority:v5];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void _setAlphaForViews(void *a1, int a2, double a3, double a4, double a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (a2)
  {
    v11 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___setAlphaForViews_block_invoke;
    v20[3] = &unk_1E76C9AD0;
    v21 = v9;
    v22 = a3;
    [v11 animateWithDuration:4 delay:v20 options:0 animations:a4 completion:a5];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = [v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v15++) setAlpha:a3];
        }

        while (v13 != v15);
        v13 = [v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v13);
    }
  }
}

void _setViewTransform(void *a1, _OWORD *a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 <= 0.0)
  {
    v9 = a2[1];
    v10[0] = *a2;
    v10[1] = v9;
    v10[2] = a2[2];
    [v5 setTransform:v10];
  }

  else
  {
    v7 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___setViewTransform_block_invoke;
    v11[3] = &unk_1E76C68A8;
    v12 = v5;
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    v15 = a2[2];
    [v7 animateWithDuration:4 delay:v11 usingSpringWithDamping:0 initialSpringVelocity:a3 options:0.0 animations:0.666666687 completion:0.0];
  }
}

uint64_t ___setViewTransform_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

void ___setAlphaForViews_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id ImageForArtworkDataSource(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 iconDataSource];
  v6 = [v5 styleAttributes];

  v7 = [v4 shieldDataSource];

  v8 = 0;
  if (v3 && v6 | v7)
  {
    v9 = [v3 userInterfaceStyle];
    [v3 displayScale];
    if (v10 == 0.0)
    {
      v11 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v11 scale];
      v13 = v12;
    }

    else
    {
      [v3 displayScale];
      v13 = v14;
    }

    v15 = v9 == 2;
    v16 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v6];
    v17 = [MKIconManager imageForStyle:v16 size:4 forScale:0 format:v15 nightMode:v13];
    v18 = v17;
    if (v17)
    {
      v8 = v17;
    }

    else if (v7)
    {
      v19 = [MEMORY[0x1E69DF430] sharedManager];
      v20 = [v7 shieldType];
      v21 = [v7 shieldText];
      *&v22 = v13;
      v23 = [v19 imageForDataID:v20 text:v21 contentScale:4 sizeGroup:0 modifiers:v22];

      if (v23)
      {
        v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v23 scale:"image") orientation:{0, v13}];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id DetailTextsForAdvisoryItem(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 details];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v1;
    v5 = [v1 details];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [v10 titleString];
          v12 = [v11 stringWithDefaultOptions];

          if (v12)
          {
            [v4 addObject:v12];
          }

          v13 = v10;
          v14 = [v13 detailStrings];
          v15 = [v14 count];

          if (v15)
          {
            v16 = [v13 detailStrings];
            v17 = [v16 _geo_map:&__block_literal_global_7];

            v18 = [v17 componentsJoinedByString:@"\n"];

            if (v18)
            {
              [v4 addObject:v18];
            }
          }

          else
          {

            v18 = 0;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    v3 = [v4 copy];
    v1 = v20;
  }

  return v3;
}

uint64_t __Block_byref_object_copy__1444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2EFAB14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

id _MKBestWalletHeroPhotoForGEOMapItem(void *a1)
{
  v1 = a1;
  v2 = [v1 businessAssets];
  v3 = [v2 coverPhoto];

  if (v3 && (_isValidWalletHeroImage(v3) & 1) != 0)
  {
    goto LABEL_6;
  }

  v4 = [v1 _photos];
  v5 = [v4 firstObject];

  if (v5 && _isValidWalletHeroImage(v5))
  {
    v3 = v5;
LABEL_6:
    v6 = v3;
    v5 = v6;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

uint64_t _isValidWalletHeroImage(void *a1)
{
  v1 = a1;
  BOOL = GEOConfigGetBOOL();
  v3 = GEOConfigGetBOOL();
  v4 = v3;
  if (BOOL)
  {
    v5 = [v1 highQuality];
    if ((v5 & v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v3)
  {
    v5 = 1;
    goto LABEL_7;
  }

  v5 = [v1 businessProvided];
LABEL_7:

  return v5;
}

void sub_1A2EFC0A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1609(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MKGetMKPlaceInlineMapVCLog()
{
  if (MKGetMKPlaceInlineMapVCLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKPlaceInlineMapVCLog_onceToken, &__block_literal_global_260);
  }

  v1 = MKGetMKPlaceInlineMapVCLog_log;

  return v1;
}

void __MKGetMKPlaceInlineMapVCLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKPlaceInlineMapVC");
  v1 = MKGetMKPlaceInlineMapVCLog_log;
  MKGetMKPlaceInlineMapVCLog_log = v0;
}

void sub_1A2EFDD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _MKURLParserCallbackQueue()
{
  if (_MKURLParserCallbackQueue_onceToken != -1)
  {
    dispatch_once(&_MKURLParserCallbackQueue_onceToken, &__block_literal_global_2387);
  }

  v1 = _MKURLParserCallbackQueue_callbackQueue;

  return v1;
}

void sub_1A2F05350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MKGetVisitMonitorLog()
{
  if (MKGetVisitMonitorLog_onceToken != -1)
  {
    dispatch_once(&MKGetVisitMonitorLog_onceToken, &__block_literal_global_283);
  }

  v1 = MKGetVisitMonitorLog_log;

  return v1;
}

void __MKGetVisitMonitorLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "VisitMonitor");
  v1 = MKGetVisitMonitorLog_log;
  MKGetVisitMonitorLog_log = v0;
}

id MKGetVehicleSensorLog()
{
  if (MKGetVehicleSensorLog_onceToken != -1)
  {
    dispatch_once(&MKGetVehicleSensorLog_onceToken, &__block_literal_global_280);
  }

  v1 = MKGetVehicleSensorLog_log;

  return v1;
}

void __MKGetVehicleSensorLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "VehicleSensor");
  v1 = MKGetVehicleSensorLog_log;
  MKGetVehicleSensorLog_log = v0;
}

uint64_t __Block_byref_object_copy__3116(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2F084E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F08710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F08940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F08B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F08DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F093A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F09688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F0A610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3478(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MKGetVehicleSensorLog_3489()
{
  if (MKGetVehicleSensorLog_onceToken_3491 != -1)
  {
    dispatch_once(&MKGetVehicleSensorLog_onceToken_3491, &__block_literal_global_521);
  }

  v1 = MKGetVehicleSensorLog_log_3492;

  return v1;
}

void __MKGetVehicleSensorLog_block_invoke_3494()
{
  v0 = os_log_create("com.apple.MapKit", "VehicleSensor");
  v1 = MKGetVehicleSensorLog_log_3492;
  MKGetVehicleSensorLog_log_3492 = v0;
}

void sub_1A2F0D008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F0F664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F0F870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F0FA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _transformAnim(__int128 *a1, __int128 *a2)
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v5 = a1[5];
  v20 = a1[4];
  v21 = v5;
  v6 = a1[7];
  v22 = a1[6];
  v23 = v6;
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  v8 = a1[3];
  v18 = a1[2];
  v19 = v8;
  v9 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  [v4 setFromValue:v9];

  v10 = a2[5];
  v20 = a2[4];
  v21 = v10;
  v11 = a2[7];
  v22 = a2[6];
  v23 = v11;
  v12 = a2[1];
  v16 = *a2;
  v17 = v12;
  v13 = a2[3];
  v18 = a2[2];
  v19 = v13;
  v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  [v4 setToValue:v14];

  return v4;
}

id _positionAnim(double a1, double a2, double a3, double a4)
{
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
  v9 = [MEMORY[0x1E696B098] _mapkit_valueWithCGPoint:{a1, a2}];
  [v8 setFromValue:v9];

  v10 = [MEMORY[0x1E696B098] _mapkit_valueWithCGPoint:{a3, a4}];
  [v8 setToValue:v10];

  return v8;
}

void __MKGetMKRemoteUILog_block_invoke_3894()
{
  v0 = os_log_create("com.apple.MapKit", "MKRemoteUI");
  v1 = MKGetMKRemoteUILog_log_3888;
  MKGetMKRemoteUILog_log_3888 = v0;
}

void __MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_s_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_block_invoke_3;
  v13[3] = &unk_1E76C8DB0;
  v14 = v6;
  v15 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16 = v8;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  dispatch_async(v12, v13);
}

uint64_t __MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || ![*(a1 + 40) count])
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_ERROR, "Could not predict transport mode. Error: %@", &v10, 0xCu);
    }
  }

  else
  {
    v5 = [*(a1 + 40) objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [*(a1 + 40) objectAtIndexedSubscript:0];
      *(*(*(a1 + 56) + 8) + 24) = [v7 intValue];

      if (*(*(*(a1 + 56) + 8) + 24) != 4)
      {
        return (*(*(a1 + 48) + 16))();
      }

      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_ERROR, "Could not set predicted transport mode.", &v10, 2u);
      }
    }

    else
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 40) objectAtIndexedSubscript:0];
        v10 = 138412290;
        v11 = objc_opt_class();
        v9 = v11;
        _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_ERROR, "Unexpected class type for predicted transport mode. Error: %@", &v10, 0xCu);
      }
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void __MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MapsSuggestionsTransportModePredictionQueue", v2);
  v1 = MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_s_queue;
  MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_s_queue = v0;
}

void sub_1A2F1C870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGPathRef _createClipPath(MKMapPoint *a1, unint64_t a2, CGFloat a3, CGLineCap a4, CGLineJoin a5, CGFloat a6, MKMapPoint a7, double a8, double a9, double a10, double a11)
{
  y = a7.y;
  x = a7.x;
  Mutable = CGPathCreateMutable();
  _MKPolylineAddToPath(Mutable, &a1->x, a2, x, y, a8, a9, a10, a11);
  if (a9 <= 0.0)
  {
    v24 = a4;
  }

  else
  {
    v24 = kCGLineCapButt;
  }

  if (a10 >= 1.0)
  {
    v25 = a4;
  }

  else
  {
    v25 = kCGLineCapButt;
  }

  CopyByStrokingPath = _MKCGPathCreateCopyByStrokingPath(Mutable, v24, v25, a5, a3, a6);
  CGPathRelease(Mutable);
  return CopyByStrokingPath;
}

CGPathRef _createDashedClipPath(double *a1, unint64_t a2, CGLineCap a3, CGLineJoin a4, void *a5, CGFloat a6, CGFloat a7, float64_t a8, float64_t a9, double a10, CGFloat a11, double a12)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = a5;
  Mutable = CGPathCreateMutable();
  _MKPolylineAddToPath(Mutable, a1, a2, a8, a9, a10, 0.0, 1.0, -1.0);
  v24 = [v36 count];
  v25 = malloc_type_malloc(8 * v24, 0x100004000313F17uLL);
  v26 = a4;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = v36;
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v28)
  {
    v29 = 0;
    v30 = *v38;
    do
    {
      v31 = 0;
      do
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v37 + 1) + 8 * v31) _mapkit_cgFloatValue];
        v25[v29++] = v32 / a10 * a12;
        ++v31;
      }

      while (v28 != v31);
      v28 = [v27 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v28);
  }

  CopyByDashingPath = CGPathCreateCopyByDashingPath(Mutable, 0, a11, v25, v24);
  CopyByStrokingPath = CGPathCreateCopyByStrokingPath(CopyByDashingPath, 0, a6, a3, v26, a7);
  CGPathRelease(CopyByDashingPath);
  CGPathRelease(Mutable);
  free(v25);

  return CopyByStrokingPath;
}

void _addMiterJoin(CGPath *a1, int a2, double a3, double a4, long double a5, long double a6, long double a7, long double a8, double a9)
{
  v18 = atan2(a8, a7);
  v19 = v18 - atan2(a6, a5);
  if (v19 <= 3.14159265)
  {
    if (v19 >= -3.14159265)
    {
      goto LABEL_6;
    }

    v20 = 6.28318531;
  }

  else
  {
    v20 = -6.28318531;
  }

  v19 = v19 + v20;
LABEL_6:
  v21 = 1.0 / sqrt((a5 + a7) * (a5 + a7) + 0.0 + (a6 + a8) * (a6 + a8));
  v22 = (a5 + a7) * v21;
  v23 = -((a6 + a8) * v21);
  v24 = 1.0 / cos(v19 * 0.5);
  v25 = v24 * v23;
  v26 = v24 * v22;
  if (a2)
  {
    CGPathMoveToPoint(a1, 0, a3 - v25 * a9, a4 - v26 * a9);
    v27 = a3 + v25 * a9;
  }

  else
  {
    CGPathAddLineToPoint(a1, 0, a3 + v25 * a9, a4 + v26 * a9);
    v27 = a3 - v25 * a9;
    v26 = -v26;
  }

  CGPathAddLineToPoint(a1, 0, v27, a4 + v26 * a9);
}

void sub_1A2F1F69C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A2F2104C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2F221EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F2D588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F2F0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MKKeyForTransitArtwork(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v10 = a1;
  v11 = [v10 artworkSourceType];
  v12 = [v10 shieldDataSource];
  v13 = [v12 shieldText];
  v14 = [v12 shieldColorString];
  v15 = [v12 shieldType];
  v16 = [v10 iconDataSource];

  if (objc_opt_respondsToSelector())
  {
    v17 = [v16 cartoID];
  }

  else
  {
    v17 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [v16 defaultTransitType];
  }

  else
  {
    v18 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v16 iconAttributeKey];
  }

  else
  {
    v19 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [v16 iconAttributeValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"source:%ld_text:%@_color:%@_shield:%ld_id:%ld_transit:%ld_size:%ld_feature:%ld_padding:%.2f_iconKey:%ld_iconValue:%ld_flipped:%d_nightMode:%d_scale:%.2f", v11, v13, v14, v15, v17, v18, a2, a3, *&a6, v19, v20, a4, a5, *&a7];

  return v21;
}

void PlaceCardLayoutChanged(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PlaceCardLayoutChanged_block_invoke;
  block[3] = &unk_1E76CDB38;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

BOOL ImageForShieldDataSourceTypeShouldBeFlipped(uint64_t a1)
{
  if (ImageForShieldDataSourceTypeShouldBeFlipped_onceToken != -1)
  {
    dispatch_once(&ImageForShieldDataSourceTypeShouldBeFlipped_onceToken, &__block_literal_global_6972);
  }

  v2 = ImageForShieldDataSourceTypeShouldBeFlipped_reversedImageShieldIds;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a1];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 && (MKApplicationLayoutDirectionIsRightToLeft() & 1) != 0;
}

void __ImageForShieldDataSourceTypeShouldBeFlipped_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1610FA8, &unk_1F1610FC0, &unk_1F1610FD8, &unk_1F1610FF0, &unk_1F1611008, &unk_1F1611020, &unk_1F1611038, &unk_1F1611050, &unk_1F1611068, 0}];
  v1 = ImageForShieldDataSourceTypeShouldBeFlipped_reversedImageShieldIds;
  ImageForShieldDataSourceTypeShouldBeFlipped_reversedImageShieldIds = v0;
}

void checkLevel(unint64_t a1)
{
  if (a1 >= 2)
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D940];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld is not a valid MKOverlayLevel", a1];
    v4 = [v2 exceptionWithName:v3 reason:v5 userInfo:0];
    [v4 raise];
  }
}

id MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [MKMapItemIdentifier alloc];
        v10 = [(MKMapItemIdentifier *)v9 initWithGEOMapItemIdentifier:v8, v12];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

id MKMapItemIdentifiersArrayToGEOMapItemIdentifiersArray(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) geoMapItemIdentifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

MKMapItemIdentifier *MKMapItemIdentifierFromGEOTransitLine(void *a1)
{
  v1 = a1;
  v2 = [MKMapItemIdentifier alloc];
  v3 = [v1 identifier];

  v4 = [(MKMapItemIdentifier *)v2 initWithGEOMapItemIdentifier:v3];

  return v4;
}

MKMapItemIdentifier *MKMapItemIdentifierFromGEOPBTransitLine(void *a1)
{
  v1 = a1;
  v2 = [MKMapItemIdentifier alloc];
  v3 = [v1 muid];

  v4 = [(MKMapItemIdentifier *)v2 initWithMUID:v3];

  return v4;
}

void sub_1A2F3E7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F3EA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7418(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGPath *CreatePathForPolygon(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 pointCount];
  v7 = [v5 points];
  if (v6 >= 3)
  {
    v9 = v7;
    Mutable = CGPathCreateMutable();
    v11 = *v9;
    v12 = v9[1];
    v10 = v9 + 3;
    CGPathMoveToPoint(Mutable, 0, v11 - a2, v12 - a3);
    v13 = v6 - 1;
    do
    {
      CGPathAddLineToPoint(Mutable, 0, *(v10 - 1) - a2, *v10 - a3);
      v10 += 2;
      --v13;
    }

    while (v13);
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

uint64_t __Block_byref_object_copy__7763(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E9F30](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A2F423B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F427E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2F42AD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A2F43020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F480B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F4880C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1A2F496E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak((v39 - 112));
  _Unwind_Resume(a1);
}

void sub_1A2F49F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 112));
  _Unwind_Resume(a1);
}

void sub_1A2F4A524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F4ABD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1A2F4B3A8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8437(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GEOPOICategoriesForPointOfInterestCategories(void *a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 count])
    {
      v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v91 = v2;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v92 objects:v96 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = MEMORY[0x1E69A16B8];
        v8 = MEMORY[0x1E69A16D0];
        v9 = *v93;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v93 != v9)
            {
              objc_enumerationMutation(v4);
            }

            v11 = *(*(&v92 + 1) + 8 * i);
            v12 = v11;
            if (v11
              && ((v13 = [v11 isEqual:@"MKPOICategoryAirport"], v14 = v7, (v13 & 1) != 0)
               || (v15 = [v12 isEqual:@"MKPOICategoryAmusementPark"], v14 = v8, (v15 & 1) != 0)
               || (v16 = [v12 isEqual:@"MKPOICategoryAnimalService"], v14 = MEMORY[0x1E69A16D8], (v16 & 1) != 0)
               || (v17 = [v12 isEqual:@"MKPOICategoryAquarium"], v14 = MEMORY[0x1E69A16E0], (v17 & 1) != 0)
               || (v18 = [v12 isEqual:@"MKPOICategoryATM"], v14 = MEMORY[0x1E69A16B0], (v18 & 1) != 0)
               || (v19 = [v12 isEqual:@"MKPOICategoryAutomotiveRepair"], v14 = MEMORY[0x1E69A16E8], (v19 & 1) != 0)
               || (v20 = [v12 isEqual:@"MKPOICategoryBakery"], v14 = MEMORY[0x1E69A16F0], (v20 & 1) != 0)
               || (v21 = [v12 isEqual:@"MKPOICategoryBank"], v14 = MEMORY[0x1E69A16F8], (v21 & 1) != 0)
               || (v22 = [v12 isEqual:@"MKPOICategoryBaseball"], v14 = MEMORY[0x1E69A1700], (v22 & 1) != 0)
               || (v23 = [v12 isEqual:@"MKPOICategoryBasketball"], v14 = MEMORY[0x1E69A1708], (v23 & 1) != 0)
               || (v24 = [v12 isEqual:@"MKPOICategoryBeach"], v14 = MEMORY[0x1E69A1710], (v24 & 1) != 0)
               || (v25 = [v12 isEqual:@"MKPOICategoryBeauty"], v14 = MEMORY[0x1E69A1718], (v25 & 1) != 0)
               || (v26 = [v12 isEqual:@"MKPOICategoryBowling"], v14 = MEMORY[0x1E69A1720], (v26 & 1) != 0)
               || (v27 = [v12 isEqual:@"MKPOICategoryBrewery"], v14 = MEMORY[0x1E69A1728], (v27 & 1) != 0)
               || (v28 = [v12 isEqual:@"MKPOICategoryCafe"], v14 = MEMORY[0x1E69A1730], (v28 & 1) != 0)
               || (v29 = [v12 isEqual:@"MKPOICategoryCampground"], v14 = MEMORY[0x1E69A1738], (v29 & 1) != 0)
               || (v30 = [v12 isEqual:@"MKPOICategoryCarRental"], v14 = MEMORY[0x1E69A1740], (v30 & 1) != 0)
               || (v31 = [v12 isEqual:@"MKPOICategoryCastle"], v14 = MEMORY[0x1E69A1748], (v31 & 1) != 0)
               || (v32 = [v12 isEqual:@"MKPOICategoryConventionCenter"], v14 = MEMORY[0x1E69A1750], (v32 & 1) != 0)
               || (v33 = [v12 isEqual:@"MKPOICategoryDistillery"], v14 = MEMORY[0x1E69A1758], (v33 & 1) != 0)
               || (v34 = [v12 isEqual:@"MKPOICategoryEVCharger"], v14 = MEMORY[0x1E69A1760], (v34 & 1) != 0)
               || (v35 = [v12 isEqual:@"MKPOICategoryFairground"], v14 = MEMORY[0x1E69A1768], (v35 & 1) != 0)
               || (v36 = [v12 isEqual:@"MKPOICategoryFireStation"], v14 = MEMORY[0x1E69A1770], (v36 & 1) != 0)
               || (v37 = [v12 isEqual:@"MKPOICategoryFishing"], v14 = MEMORY[0x1E69A1778], (v37 & 1) != 0)
               || (v38 = [v12 isEqual:@"MKPOICategoryFitnessCenter"], v14 = MEMORY[0x1E69A1780], (v38 & 1) != 0)
               || (v39 = [v12 isEqual:@"MKPOICategoryFoodMarket"], v14 = MEMORY[0x1E69A1788], (v39 & 1) != 0)
               || (v40 = [v12 isEqual:@"MKPOICategoryFortress"], v14 = MEMORY[0x1E69A1790], (v40 & 1) != 0)
               || (v41 = [v12 isEqual:@"MKPOICategoryGasStation"], v14 = MEMORY[0x1E69A1798], (v41 & 1) != 0)
               || (v42 = [v12 isEqual:@"MKPOICategoryGolf"], v14 = MEMORY[0x1E69A17A8], (v42 & 1) != 0)
               || (v43 = [v12 isEqual:@"MKPOICategoryGoKart"], v14 = MEMORY[0x1E69A17A0], (v43 & 1) != 0)
               || (v44 = [v12 isEqual:@"MKPOICategoryHiking"], v14 = MEMORY[0x1E69A17B0], (v44 & 1) != 0)
               || (v45 = [v12 isEqual:@"MKPOICategoryHospital"], v14 = MEMORY[0x1E69A17B8], (v45 & 1) != 0)
               || (v46 = [v12 isEqual:@"MKPOICategoryHotel"], v14 = MEMORY[0x1E69A17C0], (v46 & 1) != 0)
               || (v47 = [v12 isEqual:@"MKPOICategoryKayaking"], v14 = MEMORY[0x1E69A17C8], (v47 & 1) != 0)
               || (v48 = [v12 isEqual:@"MKPOICategoryLandmark"], v14 = MEMORY[0x1E69A17D0], (v48 & 1) != 0)
               || (v49 = [v12 isEqual:@"MKPOICategoryLaundry"], v14 = MEMORY[0x1E69A17D8], (v49 & 1) != 0)
               || (v50 = [v12 isEqual:@"MKPOICategoryLibrary"], v14 = MEMORY[0x1E69A17E0], (v50 & 1) != 0)
               || (v51 = [v12 isEqual:@"MKPOICategoryMailbox"], v14 = MEMORY[0x1E69A17E8], (v51 & 1) != 0)
               || (v52 = [v12 isEqual:@"MKPOICategoryMarina"], v14 = MEMORY[0x1E69A17F0], (v52 & 1) != 0)
               || (v53 = [v12 isEqual:@"MKPOICategoryMiniGolf"], v14 = MEMORY[0x1E69A17F8], (v53 & 1) != 0)
               || (v54 = [v12 isEqual:@"MKPOICategoryMovieTheater"], v14 = MEMORY[0x1E69A1800], (v54 & 1) != 0)
               || (v55 = [v12 isEqual:@"MKPOICategoryMuseum"], v14 = MEMORY[0x1E69A1808], (v55 & 1) != 0)
               || (v56 = [v12 isEqual:@"MKPOICategoryMusicVenue"], v14 = MEMORY[0x1E69A1810], (v56 & 1) != 0)
               || (v57 = [v12 isEqual:@"MKPOICategoryNationalMonument"], v14 = MEMORY[0x1E69A1818], (v57 & 1) != 0)
               || (v58 = [v12 isEqual:@"MKPOICategoryNationalPark"], v14 = MEMORY[0x1E69A1820], (v58 & 1) != 0)
               || (v59 = [v12 isEqual:@"MKPOICategoryNightlife"], v14 = MEMORY[0x1E69A1828], (v59 & 1) != 0)
               || (v60 = [v12 isEqual:@"MKPOICategoryPark"], v14 = MEMORY[0x1E69A1830], (v60 & 1) != 0)
               || (v61 = [v12 isEqual:@"MKPOICategoryParking"], v14 = MEMORY[0x1E69A1838], (v61 & 1) != 0)
               || (v62 = [v12 isEqual:@"MKPOICategoryPharmacy"], v14 = MEMORY[0x1E69A1840], (v62 & 1) != 0)
               || (v63 = [v12 isEqual:@"MKPOICategoryPlanetarium"], v14 = MEMORY[0x1E69A1848], (v63 & 1) != 0)
               || (v64 = [v12 isEqual:@"MKPOICategoryPlayground"], v14 = MEMORY[0x1E69A1850], (v64 & 1) != 0)
               || (v65 = [v12 isEqual:@"MKPOICategoryPolice"], v14 = MEMORY[0x1E69A1858], (v65 & 1) != 0)
               || (v66 = [v12 isEqual:@"MKPOICategoryPostOffice"], v14 = MEMORY[0x1E69A1860], (v66 & 1) != 0)
               || (v67 = [v12 isEqual:@"MKPOICategoryPublicTransport"], v14 = MEMORY[0x1E69A1868], (v67 & 1) != 0)
               || (v68 = [v12 isEqual:@"MKPOICategoryReligiousSite"], v14 = MEMORY[0x1E69A1878], (v68 & 1) != 0)
               || (v69 = [v12 isEqual:@"MKPOICategoryRestaurant"], v14 = MEMORY[0x1E69A1880], (v69 & 1) != 0)
               || (v70 = [v12 isEqual:@"MKPOICategoryRestroom"], v14 = MEMORY[0x1E69A1888], (v70 & 1) != 0)
               || (v71 = [v12 isEqual:@"MKPOICategoryRockClimbing"], v14 = MEMORY[0x1E69A1890], (v71 & 1) != 0)
               || (v72 = [v12 isEqual:@"MKPOICategoryRVPark"], v14 = MEMORY[0x1E69A1870], (v72 & 1) != 0)
               || (v73 = [v12 isEqual:@"MKPOICategorySchool"], v14 = MEMORY[0x1E69A1898], (v73 & 1) != 0)
               || (v74 = [v12 isEqual:@"MKPOICategorySkatePark"], v14 = MEMORY[0x1E69A18A0], (v74 & 1) != 0)
               || (v75 = [v12 isEqual:@"MKPOICategorySkating"], v14 = MEMORY[0x1E69A18A8], (v75 & 1) != 0)
               || (v76 = [v12 isEqual:@"MKPOICategorySkiing"], v14 = MEMORY[0x1E69A18B0], (v76 & 1) != 0)
               || (v77 = [v12 isEqual:@"MKPOICategorySoccer"], v14 = MEMORY[0x1E69A18B8], (v77 & 1) != 0)
               || (v78 = [v12 isEqual:@"MKPOICategorySpa"], v14 = MEMORY[0x1E69A18C0], (v78 & 1) != 0)
               || (v79 = [v12 isEqual:@"MKPOICategoryStadium"], v14 = MEMORY[0x1E69A18C8], (v79 & 1) != 0)
               || (v80 = [v12 isEqual:@"MKPOICategoryStore"], v14 = MEMORY[0x1E69A18D0], (v80 & 1) != 0)
               || (v81 = [v12 isEqual:@"MKPOICategorySurfing"], v14 = MEMORY[0x1E69A18D8], (v81 & 1) != 0)
               || (v82 = [v12 isEqual:@"MKPOICategorySwimming"], v14 = MEMORY[0x1E69A18E0], (v82 & 1) != 0)
               || (v83 = [v12 isEqual:@"MKPOICategoryTennis"], v14 = MEMORY[0x1E69A18E8], (v83 & 1) != 0)
               || (v84 = [v12 isEqual:@"MKPOICategoryTheater"], v14 = MEMORY[0x1E69A18F0], (v84 & 1) != 0)
               || (v85 = [v12 isEqual:@"MKPOICategoryUniversity"], v14 = MEMORY[0x1E69A18F8], (v85 & 1) != 0)
               || (v86 = [v12 isEqual:@"MKPOICategoryVolleyball"], v14 = MEMORY[0x1E69A1900], (v86 & 1) != 0)
               || (v87 = [v12 isEqual:@"MKPOICategoryWinery"], v14 = MEMORY[0x1E69A1908], (v87 & 1) != 0)
               || (v88 = [v12 isEqual:@"MKPOICategoryZoo"], v14 = MEMORY[0x1E69A1910], (v88 & 1) != 0)))
            {
              v89 = *v14;

              if (v89)
              {
                [v3 addObject:v89];
              }
            }

            else
            {

              v89 = 0;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v92 objects:v96 count:16];
        }

        while (v6);
      }

      v2 = v91;
    }

    else
    {
      v3 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *MKPointOfInterestCategoryForGEOPOICategory(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqual:*MEMORY[0x1E69A16B8]])
    {
      v3 = @"MKPOICategoryAirport";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A16D0]])
    {
      v3 = @"MKPOICategoryAmusementPark";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A16D8]])
    {
      v3 = @"MKPOICategoryAnimalService";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A16E0]])
    {
      v3 = @"MKPOICategoryAquarium";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A16B0]])
    {
      v3 = @"MKPOICategoryATM";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A16E8]])
    {
      v3 = @"MKPOICategoryAutomotiveRepair";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A16F0]])
    {
      v3 = @"MKPOICategoryBakery";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A16F8]])
    {
      v3 = @"MKPOICategoryBank";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1700]])
    {
      v3 = @"MKPOICategoryBaseball";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1708]])
    {
      v3 = @"MKPOICategoryBasketball";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1710]])
    {
      v3 = @"MKPOICategoryBeach";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1718]])
    {
      v3 = @"MKPOICategoryBeauty";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1720]])
    {
      v3 = @"MKPOICategoryBowling";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1728]])
    {
      v3 = @"MKPOICategoryBrewery";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1730]])
    {
      v3 = @"MKPOICategoryCafe";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1738]])
    {
      v3 = @"MKPOICategoryCampground";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1740]])
    {
      v3 = @"MKPOICategoryCarRental";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1748]])
    {
      v3 = @"MKPOICategoryCastle";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1750]])
    {
      v3 = @"MKPOICategoryConventionCenter";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1758]])
    {
      v3 = @"MKPOICategoryDistillery";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1760]])
    {
      v3 = @"MKPOICategoryEVCharger";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1768]])
    {
      v3 = @"MKPOICategoryFairground";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1770]])
    {
      v3 = @"MKPOICategoryFireStation";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1778]])
    {
      v3 = @"MKPOICategoryFishing";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1780]])
    {
      v3 = @"MKPOICategoryFitnessCenter";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1788]])
    {
      v3 = @"MKPOICategoryFoodMarket";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1790]])
    {
      v3 = @"MKPOICategoryFortress";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1798]])
    {
      v3 = @"MKPOICategoryGasStation";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17A8]])
    {
      v3 = @"MKPOICategoryGolf";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17A0]])
    {
      v3 = @"MKPOICategoryGoKart";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17B0]])
    {
      v3 = @"MKPOICategoryHiking";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17B8]])
    {
      v3 = @"MKPOICategoryHospital";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17C0]])
    {
      v3 = @"MKPOICategoryHotel";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17C8]])
    {
      v3 = @"MKPOICategoryKayaking";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17D0]])
    {
      v3 = @"MKPOICategoryLandmark";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17D8]])
    {
      v3 = @"MKPOICategoryLaundry";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17E0]])
    {
      v3 = @"MKPOICategoryLibrary";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17E8]])
    {
      v3 = @"MKPOICategoryMailbox";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17F0]])
    {
      v3 = @"MKPOICategoryMarina";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A17F8]])
    {
      v3 = @"MKPOICategoryMiniGolf";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1800]])
    {
      v3 = @"MKPOICategoryMovieTheater";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1808]])
    {
      v3 = @"MKPOICategoryMuseum";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1810]])
    {
      v3 = @"MKPOICategoryMusicVenue";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1818]])
    {
      v3 = @"MKPOICategoryNationalMonument";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1820]])
    {
      v3 = @"MKPOICategoryNationalPark";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1828]])
    {
      v3 = @"MKPOICategoryNightlife";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1830]])
    {
      v3 = @"MKPOICategoryPark";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1838]])
    {
      v3 = @"MKPOICategoryParking";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1840]])
    {
      v3 = @"MKPOICategoryPharmacy";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1848]])
    {
      v3 = @"MKPOICategoryPlanetarium";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1850]])
    {
      v3 = @"MKPOICategoryPlayground";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1858]])
    {
      v3 = @"MKPOICategoryPolice";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1860]])
    {
      v3 = @"MKPOICategoryPostOffice";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1868]])
    {
      v3 = @"MKPOICategoryPublicTransport";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1878]])
    {
      v3 = @"MKPOICategoryReligiousSite";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1880]])
    {
      v3 = @"MKPOICategoryRestaurant";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1888]])
    {
      v3 = @"MKPOICategoryRestroom";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1890]])
    {
      v3 = @"MKPOICategoryRockClimbing";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1870]])
    {
      v3 = @"MKPOICategoryRVPark";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1898]])
    {
      v3 = @"MKPOICategorySchool";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18A0]])
    {
      v3 = @"MKPOICategorySkatePark";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18A8]])
    {
      v3 = @"MKPOICategorySkating";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18B0]])
    {
      v3 = @"MKPOICategorySkiing";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18B8]])
    {
      v3 = @"MKPOICategorySoccer";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18C0]])
    {
      v3 = @"MKPOICategorySpa";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18C8]])
    {
      v3 = @"MKPOICategoryStadium";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18D0]])
    {
      v3 = @"MKPOICategoryStore";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18D8]])
    {
      v3 = @"MKPOICategorySurfing";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18E0]])
    {
      v3 = @"MKPOICategorySwimming";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18E8]])
    {
      v3 = @"MKPOICategoryTennis";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18F0]])
    {
      v3 = @"MKPOICategoryTheater";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A18F8]])
    {
      v3 = @"MKPOICategoryUniversity";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1900]])
    {
      v3 = @"MKPOICategoryVolleyball";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1908]])
    {
      v3 = @"MKPOICategoryWinery";
    }

    else if ([v2 isEqual:*MEMORY[0x1E69A1910]])
    {
      v3 = @"MKPOICategoryZoo";
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A2F4E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8831(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2F5A39C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9981(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2F5D784(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A2F5E214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v29 - 128) = &a28;
  std::vector<VKRouteInfo * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v29 - 128));

  _Unwind_Resume(a1);
}

uint64_t _MKRouteContextBuilderCacheEntryKey(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 uniqueRouteID];
        v8 = v7 == 0;

        if (!v8)
        {
          v9 = [v6 uniqueRouteID];
          v10 = [v9 hash];

          v2 = v10 ^ (v2 << 6);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  return v2;
}

id MKGetMKRouteContextBuilderLog(void)
{
  if (MKGetMKRouteContextBuilderLog(void)::onceToken != -1)
  {
    dispatch_once(&MKGetMKRouteContextBuilderLog(void)::onceToken, &__block_literal_global_67);
  }

  v1 = MKGetMKRouteContextBuilderLog(void)::log;

  return v1;
}

void ___ZL29MKGetMKRouteContextBuilderLogv_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKRouteContextBuilder");
  v1 = MKGetMKRouteContextBuilderLog(void)::log;
  MKGetMKRouteContextBuilderLog(void)::log = v0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E76C61B8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

id MKGetMKLookAroundLog()
{
  if (MKGetMKLookAroundLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKLookAroundLog_onceToken, &__block_literal_global_4);
  }

  v1 = MKGetMKLookAroundLog_log;

  return v1;
}

void __MKGetMKLookAroundLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKLookAround");
  v1 = MKGetMKLookAroundLog_log;
  MKGetMKLookAroundLog_log = v0;
}

id MKGetPlaceCardLog()
{
  if (MKGetPlaceCardLog_onceToken != -1)
  {
    dispatch_once(&MKGetPlaceCardLog_onceToken, &__block_literal_global_7_10256);
  }

  v1 = MKGetPlaceCardLog_log;

  return v1;
}

void __MKGetPlaceCardLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "PlaceCard");
  v1 = MKGetPlaceCardLog_log;
  MKGetPlaceCardLog_log = v0;
}

void __MKGetTransitItemUpdaterLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "TransitItemUpdater");
  v1 = MKGetTransitItemUpdaterLog_log;
  MKGetTransitItemUpdaterLog_log = v0;
}

id MKGetSnapshotLog()
{
  if (MKGetSnapshotLog_onceToken != -1)
  {
    dispatch_once(&MKGetSnapshotLog_onceToken, &__block_literal_global_19);
  }

  v1 = MKGetSnapshotLog_log;

  return v1;
}

void __MKGetSnapshotLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "Snapshot");
  v1 = MKGetSnapshotLog_log;
  MKGetSnapshotLog_log = v0;
}

void __MKGetGesturesLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "Gestures");
  v1 = MKGetGesturesLog_log;
  MKGetGesturesLog_log = v0;
}

id MKGetCuratedCollectionsLog()
{
  if (MKGetCuratedCollectionsLog_onceToken != -1)
  {
    dispatch_once(&MKGetCuratedCollectionsLog_onceToken, &__block_literal_global_25);
  }

  v1 = MKGetCuratedCollectionsLog_log;

  return v1;
}

void __MKGetCuratedCollectionsLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "CuratedCollections");
  v1 = MKGetCuratedCollectionsLog_log;
  MKGetCuratedCollectionsLog_log = v0;
}

id MKGetClipServicesLog()
{
  if (MKGetClipServicesLog_onceToken != -1)
  {
    dispatch_once(&MKGetClipServicesLog_onceToken, &__block_literal_global_28);
  }

  v1 = MKGetClipServicesLog_log;

  return v1;
}

void __MKGetClipServicesLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "ClipServices");
  v1 = MKGetClipServicesLog_log;
  MKGetClipServicesLog_log = v0;
}

void __MKGetAnnotationsLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "Annotations");
  v1 = MKGetAnnotationsLog_log;
  MKGetAnnotationsLog_log = v0;
}

id MKGetPuckTrackingLog()
{
  if (MKGetPuckTrackingLog_onceToken != -1)
  {
    dispatch_once(&MKGetPuckTrackingLog_onceToken, &__block_literal_global_37);
  }

  v1 = MKGetPuckTrackingLog_log;

  return v1;
}

void __MKGetPuckTrackingLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "PuckTracking");
  v1 = MKGetPuckTrackingLog_log;
  MKGetPuckTrackingLog_log = v0;
}

id MKGetMapItemRequestLog()
{
  if (MKGetMapItemRequestLog_onceToken != -1)
  {
    dispatch_once(&MKGetMapItemRequestLog_onceToken, &__block_literal_global_43);
  }

  v1 = MKGetMapItemRequestLog_log;

  return v1;
}

void __MKGetMapItemRequestLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MapItemRequest");
  v1 = MKGetMapItemRequestLog_log;
  MKGetMapItemRequestLog_log = v0;
}

id MKGetMKLinkPreviewLog()
{
  if (MKGetMKLinkPreviewLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKLinkPreviewLog_onceToken, &__block_literal_global_46);
  }

  v1 = MKGetMKLinkPreviewLog_log;

  return v1;
}

void __MKGetMKLinkPreviewLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKLinkPreview");
  v1 = MKGetMKLinkPreviewLog_log;
  MKGetMKLinkPreviewLog_log = v0;
}

void __MKGetMarkerStyleCacheLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MarkerStyleCache");
  v1 = MKGetMarkerStyleCacheLog_log;
  MKGetMarkerStyleCacheLog_log = v0;
}

void __MKGetDirectionsLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "Directions");
  v1 = MKGetDirectionsLog_log;
  MKGetDirectionsLog_log = v0;
}

void __MKGetOverlaysLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "Overlays");
  v1 = MKGetOverlaysLog_log;
  MKGetOverlaysLog_log = v0;
}

id MKGetMKExploreGuidesLog()
{
  if (MKGetMKExploreGuidesLog_onceToken != -1)
  {
    dispatch_once(&MKGetMKExploreGuidesLog_onceToken, &__block_literal_global_58);
  }

  v1 = MKGetMKExploreGuidesLog_log;

  return v1;
}

void __MKGetMKExploreGuidesLog_block_invoke()
{
  v0 = os_log_create("com.apple.MapKit", "MKExploreGuides");
  v1 = MKGetMKExploreGuidesLog_log;
  MKGetMKExploreGuidesLog_log = v0;
}

id _trackShadowImage(CGFloat a1)
{
  v24.width = 162.0;
  v24.height = 750.0;
  UIGraphicsBeginImageContextWithOptions(v24, 0, a1);
  v2 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:75.0 cornerRadius:{75.0, 12.0, 600.0, 6.0}];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  ClipBoundingBox = CGContextGetClipBoundingBox(CurrentContext);
  CGContextAddRect(CurrentContext, ClipBoundingBox);
  CGContextAddPath(CurrentContext, [v2 CGPath]);
  CGContextEOClip(CurrentContext);
  v4 = [MEMORY[0x1E69DC888] blackColor];
  v5 = [v4 CGColor];
  CGContextSetShadowWithColor(CurrentContext, *MEMORY[0x1E695F060], 75.0, v5);
  [v4 setFill];
  UIRectInset();
  UIRectFill(v26);
  if (_trackShadowImage___once != -1)
  {
    dispatch_once(&_trackShadowImage___once, &__block_literal_global_10349);
  }

  v6 = [getCIFilterClass() filterWithName:@"CIRandomGenerator"];
  v7 = [getCIFilterClass() filterWithName:@"CIColorMonochrome"];
  v8 = [v6 valueForKey:@"outputImage"];
  [v7 setValue:v8 forKey:@"inputImage"];

  v9 = _trackShadowImage___ciContext;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v10 = getkCIOutputImageKeySymbolLoc_ptr;
  v22 = getkCIOutputImageKeySymbolLoc_ptr;
  if (!getkCIOutputImageKeySymbolLoc_ptr)
  {
    v11 = CoreImageLibrary();
    v20[3] = dlsym(v11, "kCIOutputImageKey");
    getkCIOutputImageKeySymbolLoc_ptr = v20[3];
    v10 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v10)
  {
    dlerror();
    v18 = abort_report_np();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v18);
  }

  v12 = *v10;
  v13 = [v7 valueForKey:v12];
  v14 = [v9 createCGImage:v13 fromRect:{0.0, 0.0, 162.0, 750.0}];

  if (v14)
  {
    CGContextSetAlpha(CurrentContext, 0.25);
    CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceAtop);
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.width = 162.0;
    v27.size.height = 750.0;
    CGContextDrawImage(CurrentContext, v27, v14);
  }

  CGImageRelease(v14);

  CGContextRestoreGState(CurrentContext);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v16 = [v15 resizableImageWithCapInsets:{115.0, 0.0, 115.0, 0.0}];

  return v16;
}

id getCIFilterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCIFilterClass_softClass;
  v7 = getCIFilterClass_softClass;
  if (!getCIFilterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCIFilterClass_block_invoke;
    v3[3] = &unk_1E76CD7B0;
    v3[4] = &v4;
    __getCIFilterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2F5FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCIOutputImageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreImageLibrary();
  result = dlsym(v2, "kCIOutputImageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCIOutputImageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreImageLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = CoreImageLibraryCore_frameworkLibrary;
  v9 = CoreImageLibraryCore_frameworkLibrary;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreImageLibraryCore_block_invoke;
    v3[4] = &unk_1E76CD5E0;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E76C7D70;
    v11 = *off_1E76C7D80;
    v12 = 0;
    v7[3] = _sl_dlopen();
    CoreImageLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A2F5FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreImageLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreImageLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCIFilterClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCIFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return ___trackShadowImage_block_invoke(v3);
  }

  return result;
}

void ___trackShadowImage_block_invoke()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v0 = getCIContextClass_softClass;
  v19 = getCIContextClass_softClass;
  if (!getCIContextClass_softClass)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getCIContextClass_block_invoke;
    v14 = &unk_1E76CD7B0;
    v15 = &v16;
    __getCIContextClass_block_invoke(&v11);
    v0 = v17[3];
  }

  v1 = v0;
  _Block_object_dispose(&v16, 8);
  v2 = v1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v3 = getkCIContextWorkingColorSpaceSymbolLoc_ptr;
  v19 = getkCIContextWorkingColorSpaceSymbolLoc_ptr;
  if (!getkCIContextWorkingColorSpaceSymbolLoc_ptr)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getkCIContextWorkingColorSpaceSymbolLoc_block_invoke;
    v14 = &unk_1E76CD7B0;
    v15 = &v16;
    v4 = CoreImageLibrary();
    v5 = dlsym(v4, "kCIContextWorkingColorSpace");
    *(v15[1] + 24) = v5;
    getkCIContextWorkingColorSpaceSymbolLoc_ptr = *(v15[1] + 24);
    v3 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v3)
  {
    dlerror();
    abort_report_np();
  }

  v6 = *v3;
  v20 = v6;
  v7 = [MEMORY[0x1E695DFB0] null];
  v21[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v9 = [v1 contextWithOptions:v8];
  v10 = _trackShadowImage___ciContext;
  _trackShadowImage___ciContext = v9;
}

void sub_1A2F60148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCIContextWorkingColorSpaceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreImageLibrary();
  result = dlsym(v2, "kCIContextWorkingColorSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCIContextWorkingColorSpaceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

_MKZoomSliderView *__getCIContextClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCIContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(_MKZoomSliderView *)v3 initWithFrame:v4, v5];
  }

  return result;
}

void __MKGetMKRemoteUILog_block_invoke_10633()
{
  v0 = os_log_create("com.apple.MapKit", "MKRemoteUI");
  v1 = MKGetMKRemoteUILog_log_10623;
  MKGetMKRemoteUILog_log_10623 = v0;
}

void sub_1A2F62B0C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

float MKGetVKColorForMKColor(UIColor *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = 0.0;
  v7 = 0;
  v8 = 0;
  v2 = CGColorSpaceCreateWithID();
  MEMORY[0x1A58E8800](v2, 0);
  [(UIColor *)v1 CGColor];
  v3 = CGColorTransformConvertColor();
  v4 = [MEMORY[0x1E69DC888] colorWithCGColor:v3];

  CGColorRelease(v3);
  CGColorTransformRelease();
  [v4 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  v5 = v10;

  return v5;
}

uint64_t __Block_byref_object_copy__10797(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2F636C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void *__getLICreateIconForBundleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileIconsLibrary();
  result = dlsym(v2, "LICreateIconForBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLICreateIconForBundleSymbolLoc::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileIconsLibrary()
{
  v13 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = MobileIconsLibraryCore::frameworkLibrary;
  v9 = MobileIconsLibraryCore::frameworkLibrary;
  if (!MobileIconsLibraryCore::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MobileIconsLibraryCore_block_invoke;
    v3[4] = &unk_1E76CD5E0;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_1E76C7D98;
    v11 = *off_1E76C7DA8;
    v12 = 0;
    v7[3] = _sl_dlopen();
    MobileIconsLibraryCore::frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1A2F63AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MobileIconsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MobileIconsLibraryCore::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2F644B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _MKIconDiskCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A2F64634(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A2F651D0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t MKSetHasUserConsentedToAddingContributions(int a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  return MEMORY[0x1EEE0BA78](73, &MapKitConfig_UserConsentState_Metadata, v1);
}

void sub_1A2F6641C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A2F66A74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 152));

  _Unwind_Resume(a1);
}

void sub_1A2F66D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1A2F67ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 168));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__11222(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1A2F6957C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, id location)
{
  objc_destroyWeak((v28 + 40));

  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);

  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A2F698D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A2F69E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v18 + 40));

  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v21 - 168));

  _Unwind_Resume(a1);
}

void sub_1A2F6B170(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v5 - 120));
  _Unwind_Resume(a1);
}

void sub_1A2F6BAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  objc_destroyWeak((v34 + 40));

  objc_destroyWeak((v35 + 40));
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak((v36 - 128));

  _Unwind_Resume(a1);
}

void sub_1A2F6C16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MKMapGestureController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A2F6C948(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A2F6E2E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

id NSDataFromCLLocationCoordinates(double a1, double a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (CLLocationCoordinate2DIsValid(*&a1))
  {
    v17[0] = @"latitude";
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
    v17[1] = @"longitude";
    v18[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    v18[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v12 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
    v8 = v12;
    if (!v7)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&a1, *&a2];
        *buf = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_ERROR, "Error archiving coordinate %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_ERROR, "This is not a valid coordinate", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

double CLLocationCoordinatesFromNSData(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v18 = 0;
    v2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v1 error:&v18];
    v3 = v18;
    if (v3)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v3;
        _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_ERROR, "Error decoding CoordinateData - %@", buf, 0xCu);
      }

      latitude = *MEMORY[0x1E6985CC0];
    }

    else
    {
      latitude = *MEMORY[0x1E6985CC0];
      v8 = [v2 objectForKeyedSubscript:@"latitude"];
      if (v8)
      {
        v9 = v8;
        v10 = [v2 objectForKeyedSubscript:@"longitude"];

        if (v10)
        {
          v11 = [v2 objectForKeyedSubscript:@"latitude"];
          [v11 doubleValue];
          v13 = v12;
          v14 = [v2 objectForKeyedSubscript:@"longitude"];
          [v14 doubleValue];
          v16 = CLLocationCoordinate2DMake(v13, v15);

          if (CLLocationCoordinate2DIsValid(v16))
          {
            latitude = v16.latitude;
          }

          else
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v20 = v2;
              _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_ERROR, "Unarchived an NSDictionary but it doesn't contain valid coordinates. Dictionary: %@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_ERROR, "coordinateData should not be nil", buf, 2u);
    }

    latitude = *MEMORY[0x1E6985CC0];
  }

  return latitude;
}

id _MKSlightTurnArrow(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = a1 == 0;
  v6 = [MEMORY[0x1E69DC728] bezierPath];
  a3[9] = a3[30];
  v7 = a3[a2 + 48];
  v8 = *(a3 + 51);
  a3[28] = v7;
  *(a3 + 29) = v8;
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  v13[0] = *MEMORY[0x1E695EFD0];
  v13[1] = v9;
  v13[2] = *(MEMORY[0x1E695EFD0] + 32);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v6, __dst, v13, 0, v7);
  v10 = dbl_1A30F7150[v5];
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendCurveToPathWithOptions(v6, 0, __dst, v13, 0, v10);
  v11 = a3[51];
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendSegmentToPath(v6, __dst, v13, v11);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v6, __dst, 0, v13, 0.0);

  return v6;
}

id _MKTurnArrow(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = [MEMORY[0x1E69DC728] bezierPath];
  *(a3 + 72) = *(a3 + 376);
  v9 = *(a3 + 448);
  if (a2 == 2)
  {
    v10 = *(a3 + 368) - *(a3 + 360) + *(a3 + 48) * -0.5 + *(a3 + 24) * 0.5;
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_7;
    }

    v10 = *(a3 + 368) + (a4 + a4) / -3.0;
  }

  v9 = v9 - v10;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

LABEL_7:
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  v15[0] = *MEMORY[0x1E695EFD0];
  v15[1] = v11;
  v15[2] = *(MEMORY[0x1E695EFD0] + 32);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v8, __dst, v15, 0, v9);
  if (a1)
  {
    v12 = -3.14159265;
  }

  else
  {
    v12 = 0.0;
  }

  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendCurveToPathWithOptions(v8, 0, __dst, v15, 0, v12);
  v13 = *(a3 + 456);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendSegmentToPath(v8, __dst, v15, v13);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v8, __dst, 0, v15, 0.0);

  return v8;
}

id _MKSharpTurnArrow(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = [MEMORY[0x1E69DC728] bezierPath];
  a3[9] = a3[26];
  if (a2 == 2)
  {
    v7 = *(a3 + 27);
    *(a3 + 9) = v7;
    *(a3 + 26) = v7;
    v8 = a3 + 54;
    v9 = a3 + 55;
  }

  else
  {
    v8 = a3 + 52;
    v9 = a3 + 53;
  }

  v10 = *v9;
  v11 = *v8;
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  v15[0] = *MEMORY[0x1E695EFD0];
  v15[1] = v12;
  v15[2] = *(MEMORY[0x1E695EFD0] + 32);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v6, __dst, v15, 0, v11);
  v13 = dbl_1A30F7160[a1 == 0];
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendCurveToPathWithOptions(v6, 0, __dst, v15, 0, v13);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendSegmentToPath(v6, __dst, v15, v10);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v6, __dst, 0, v15, 0.0);

  return v6;
}

id _MKUTurnArrow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E69DC728] bezierPath];
  *(a3 + 72) = *(a3 + 208);
  if (a2 == 2)
  {
    v7 = *(a3 + 88);
    *(a3 + 72) = v7;
    *(a3 + 80) = v7;
    v8 = (a3 + 480);
  }

  else
  {
    v8 = (a3 + 464);
  }

  v9 = *v8;
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v17[0] = *MEMORY[0x1E695EFD0];
  v17[1] = v10;
  v17[2] = *(MEMORY[0x1E695EFD0] + 32);
  memcpy(__dst, a3, sizeof(__dst));
  MKArrowAppendInitialSegmentToPathInvertingCorners(v6, __dst, v17, 0, v9);
  v11 = *(a3 + 80);
  if (a1)
  {
    v11 = -v11;
  }

  MKArrowAppendUTurnCurveToPath(v6, v17, v11, *(a3 + 24));
  if (a2 == 2)
  {
    v12 = *(a3 + 488);
    memcpy(__dst, a3, sizeof(__dst));
    MKArrowAppendSegmentToPath(v6, __dst, v17, v12);
    memcpy(__dst, a3, sizeof(__dst));
    v13 = 0.0;
    v14 = v6;
  }

  else
  {
    v15 = *(a3 + 472);
    memcpy(__dst, a3, sizeof(__dst));
    v14 = v6;
    v13 = v15;
  }

  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v14, __dst, 0, v17, v13);

  return v6;
}

uint64_t MKLaneDirectionIsToTheLeft(unsigned int a1)
{
  result = 1;
  if (a1 <= 8 && ((1 << a1) & 0x117) != 0 || a1 == 256)
  {
    return 0;
  }

  return result;
}

id MKCreateImageForLane(void *a1, int a2, uint64_t a3, double *a4, void *a5, CGFloat *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a5;
  memcpy(__dst, a6, sizeof(__dst));
  v12 = MKCreateBezierPathsForLane(a1, a2, a3, a4, __dst);
  v13 = a6[1];
  v14 = a6[2];
  v15 = +[MKSystemController sharedInstance];
  [v15 screenScale];
  v17 = v16;
  v33.width = v13;
  v33.height = v14;
  UIGraphicsBeginImageContextWithOptions(v33, 0, v17);

  [v11 set];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * i) fill];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v23 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v23;
}

id MKCreateBezierPathsForLane(void *a1, int a2, uint64_t a3, double *a4, double *a5)
{
  v178 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  v137 = a2;
  v139 = a4;
  v131 = a3;
  if (a2)
  {
    v11 = [v9 directions];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  v138 = a5;
  if (![v12 direction])
  {

    v12 = 0;
  }

  v136 = v10;
  v13 = [v10 directions];
  v172[0] = MEMORY[0x1E69E9820];
  v172[1] = 3221225472;
  v172[2] = ___MKDirectionsToDrawForLane_block_invoke;
  v172[3] = &unk_1E76C8190;
  v14 = v12;
  v173 = v14;
  v15 = [v13 sortedArrayUsingComparator:v172];

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v168 objects:__dst count:16];
  if (v19)
  {
    v20 = v19;
    LODWORD(v21) = 0;
    v22 = *v169;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v169 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v168 + 1) + 8 * i);
        if ([v24 direction] != v21)
        {
          if ([v24 direction])
          {
            [v16 addObject:v24];
            v21 = [v24 direction];
            if (v24 != v14)
            {
              v25 = [MEMORY[0x1E696AD98] numberWithInt:v21];
              [v17 addObject:v25];
            }
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v168 objects:__dst count:16];
    }

    while (v20);
  }

  v26 = [[MKLaneDirectionCollisionCalculator alloc] initWithDirections:v17];
  v27 = 0;
  while (v14)
  {
    if (![(MKLaneDirectionCollisionCalculator *)v26 hasCollisions]|| v27 > 8)
    {
      goto LABEL_30;
    }

    if (![(MKLaneDirectionCollisionCalculator *)v26 hasDirectionWithMaxCollisions])
    {
      -[MKLaneDirectionCollisionCalculator removeDirectionWithCollisionsLeastSimilarToDirection:](v26, "removeDirectionWithCollisionsLeastSimilarToDirection:", [v14 direction]);
      goto LABEL_28;
    }

LABEL_27:
    [(MKLaneDirectionCollisionCalculator *)v26 removeNextDirectionWithCollisions];
LABEL_28:
    ++v27;
  }

  v28 = [(MKLaneDirectionCollisionCalculator *)v26 directions];
  if ([v28 count] > 2)
  {
    v29 = [(MKLaneDirectionCollisionCalculator *)v26 hasCollisions];

    if (!v29 || v27 > 8)
    {
      goto LABEL_30;
    }

    [(MKLaneDirectionCollisionCalculator *)v26 hasDirectionWithMaxCollisions];
    goto LABEL_27;
  }

LABEL_30:
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v132 = v26;
  v31 = [(MKLaneDirectionCollisionCalculator *)v26 directions];
  if (v14)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "direction")}];
    v33 = [v31 arrayByAddingObject:v32];

    v31 = v33;
  }

  v143 = v31;
  v140 = v30;
  v133 = v18;
  v134 = v17;
  v135 = v14;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = v16;
  v154 = [obj countByEnumeratingWithState:&v164 objects:v176 count:16];
  if (v154)
  {
    v144 = 0;
    v146 = 0;
    v34 = 0;
    v152 = 0;
    v148 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v150 = 0;
    v142 = *v165;
    do
    {
      for (j = 0; j != v154; ++j)
      {
        if (*v165 != v142)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v164 + 1) + 8 * j);
        v40 = [v39 direction];
        v41 = [MEMORY[0x1E696AD98] numberWithInt:v40];
        v42 = [v143 containsObject:v41];

        if (v42)
        {
          if (v40 == 256)
          {
            v43 = 1;
          }

          else
          {
            v43 = v37;
          }

          v44 = v146;
          if (v40 == 128)
          {
            v45 = 1;
          }

          else
          {
            v45 = v146;
          }

          if (v40 == 128)
          {
            v43 = v37;
          }

          if (v40 == 64)
          {
            v45 = v146;
            v46 = 1;
          }

          else
          {
            v46 = v152;
          }

          if (v40 == 64)
          {
            v43 = v37;
          }

          if (v40 == 32)
          {
            v47 = 1;
          }

          else
          {
            v47 = v35;
          }

          if (v40 == 16)
          {
            v47 = v35;
            v48 = 1;
          }

          else
          {
            v48 = v150;
          }

          if (v40 > 63)
          {
            v47 = v35;
          }

          else
          {
            v45 = v146;
            v46 = v152;
            v43 = v37;
          }

          if (v40 > 63)
          {
            v48 = v150;
          }

          if (v40 == 8)
          {
            v49 = 1;
          }

          else
          {
            v49 = v36;
          }

          v50 = v148;
          if (v40 == 4)
          {
            v51 = 1;
          }

          else
          {
            v51 = v148;
          }

          if (v40 == 4)
          {
            v49 = v36;
          }

          if (v40 == 2)
          {
            v52 = 1;
          }

          else
          {
            v52 = v34;
          }

          v53 = v144;
          if (v40 == 1)
          {
            v54 = 1;
          }

          else
          {
            v54 = v144;
          }

          if (v40 == 1)
          {
            v52 = v34;
          }

          if (v40 <= 3)
          {
            v51 = v148;
            v49 = v36;
          }

          else
          {
            v54 = v144;
            v52 = v34;
          }

          if (v40 <= 15)
          {
            v53 = v54;
          }

          v144 = v53;
          if (v40 > 15)
          {
            v44 = v45;
          }

          v146 = v44;
          if (v40 > 15)
          {
            v55 = v46;
          }

          else
          {
            v34 = v52;
            v55 = v152;
          }

          v152 = v55;
          if (v40 <= 15)
          {
            v50 = v51;
          }

          v148 = v50;
          if (v40 <= 15)
          {
            v36 = v49;
          }

          else
          {
            v35 = v47;
          }

          if (v40 <= 15)
          {
            v56 = v150;
          }

          else
          {
            v37 = v43;
            v56 = v48;
          }

          v150 = v56;
          [v140 addObject:v39];
        }
      }

      v154 = [obj countByEnumeratingWithState:&v164 objects:v176 count:16];
    }

    while (v154);
  }

  else
  {
    LOBYTE(v144) = 0;
    v146 = 0;
    v34 = 0;
    v152 = 0;
    v148 = 0;
    LOBYTE(v35) = 0;
    v36 = 0;
    v37 = 0;
    v150 = 0;
  }

  if (v135)
  {
    [v140 removeObject:v135];
    [v140 insertObject:v135 atIndex:0];
  }

  v57 = [v140 copy];

  v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v57, "count")}];
  if (v137)
  {
    v59 = [v57 firstObject];
    v60 = [v59 direction];
  }

  else
  {
    v60 = 0;
  }

  v61 = v146;
  v62 = v144;
  if ((v144 & 1) == 0)
  {
    if ((v34 & v146 & 1) != 0 && [v57 count] == 2)
    {
      if (v60)
      {
        v64 = MKLaneDirectionIsToTheLeft(v60);
        v145 = v64;
        v147 = v64 ^ 1;
      }

      else
      {
        v147 = v131 != 0;
        v145 = v131 == 0;
      }
    }

    else
    {
      v145 = 0;
      v147 = 0;
    }

    if ((v34 | v61))
    {
      goto LABEL_125;
    }

    v65 = 0;
    v66 = v138;
    goto LABEL_132;
  }

  v147 = 0;
  if (v34 & v37 & 1) != 0 || (v61 & v150 & 1) != 0 || (v34 & v148)
  {
    v63 = 0;
    goto LABEL_124;
  }

  v145 = 0;
  if ((v61 & v152 & 1) == 0)
  {
    if (v34 & v36)
    {
      v147 = 2;
      v63 = 2;
    }

    else
    {
      v63 = 1;
      if (v61 & v35)
      {
        v63 = 2;
      }

      v147 = v63;
    }

LABEL_124:
    v145 = v63;
  }

LABEL_125:
  if (v152 & v150 & 1) != 0 || (v148 & v37)
  {
    v65 = 2;
    v66 = v138;
    if ((v62 & 1) == 0)
    {
      goto LABEL_132;
    }

LABEL_130:
    v67 = 43;
LABEL_134:
    v149 = v66[v67];
  }

  else
  {
    v66 = v138;
    if (v62)
    {
      v65 = 1;
      goto LABEL_130;
    }

    v65 = (v152 & v61 | v148 & v34) & 1;
LABEL_132:
    v149 = 0.0;
    if ((v61 | v34))
    {
      v67 = 44;
      goto LABEL_134;
    }
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v68 = v57;
  v69 = [v68 countByEnumeratingWithState:&v160 objects:v175 count:16];
  if (!v69)
  {
    v72 = 1.79769313e308;
    v73 = 2.22507386e-308;
    v75 = 2.22507386e-308;
    v155 = 1.79769313e308;
    goto LABEL_184;
  }

  v70 = v69;
  v71 = *v161;
  v72 = 1.79769313e308;
  v73 = 2.22507386e-308;
  v74 = MEMORY[0x1E695EFF8];
  v75 = 2.22507386e-308;
  v155 = 1.79769313e308;
  while (2)
  {
    v76 = 0;
    while (2)
    {
      if (*v161 != v71)
      {
        objc_enumerationMutation(v68);
      }

      v77 = *(*(&v160 + 1) + 8 * v76);
      v78 = MKLaneDirectionIsToTheLeft([v77 direction]);
      v79 = [v77 direction];
      if (v79 > 15)
      {
        if (v79 <= 63)
        {
          if (v79 != 16)
          {
            if (v79 != 32)
            {
              goto LABEL_180;
            }

            v94 = 2 * ([v68 count] == 1);
            memcpy(__dst, v66, sizeof(__dst));
            v95 = 1;
            goto LABEL_156;
          }

          v92 = 2 * ([v68 count] == 1);
          memcpy(__dst, v66, sizeof(__dst));
          v93 = 1;
        }

        else
        {
          if (v79 == 64)
          {
            memcpy(__dst, v66, sizeof(__dst));
            v99 = 1;
            goto LABEL_163;
          }

          if (v79 == 128)
          {
            memcpy(__dst, v66, sizeof(__dst));
            v97 = 1;
            v98 = v147;
            goto LABEL_165;
          }

          if (v79 != 256)
          {
            goto LABEL_180;
          }

          v92 = 2 * ([v68 count] == 1);
          memcpy(__dst, v66, sizeof(__dst));
          v93 = 0;
        }

        v96 = _MKUTurnArrow(v93, v92, __dst);
        goto LABEL_166;
      }

      if (v79 > 3)
      {
        if (v79 != 4)
        {
          if (v79 != 8)
          {
            goto LABEL_180;
          }

          v94 = 2 * ([v68 count] == 1);
          memcpy(__dst, v66, sizeof(__dst));
          v95 = 0;
LABEL_156:
          v96 = _MKSharpTurnArrow(v95, v94, __dst);
          goto LABEL_166;
        }

        memcpy(__dst, v66, sizeof(__dst));
        v99 = 0;
LABEL_163:
        v96 = _MKTurnArrow(v99, v65, __dst, v149);
        goto LABEL_166;
      }

      if (v79 < 2)
      {
        v80 = *v66;
        v81 = v66[1];
        v82 = v66[2];
        memcpy(&__dst[24], v66 + 3, 0x1D8uLL);
        v83 = [MEMORY[0x1E69DC728] bezierPath];
        v84 = *v74;
        v85 = v74[1];
        *__dst = v80;
        *&__dst[8] = v81;
        *&__dst[16] = v82;
        MKArrowAppendStraightArrowToPathInRect(v83, __dst, 0, v84, v85, v81, v82);
        if (v83)
        {
          v151 = v72;
          v153 = v73;
          [v83 bounds];
          x = v180.origin.x;
          y = v180.origin.y;
          width = v180.size.width;
          height = v180.size.height;
          v90 = v66[1];
          v91 = -(CGRectGetMidX(v180) - v90 * 0.5);
          goto LABEL_171;
        }

        goto LABEL_180;
      }

      if (v79 != 2)
      {
        goto LABEL_180;
      }

      memcpy(__dst, v66, sizeof(__dst));
      v97 = 0;
      v98 = v145;
LABEL_165:
      v96 = _MKSlightTurnArrow(v97, v98, __dst);
LABEL_166:
      v83 = v96;
      if (v96)
      {
        v151 = v72;
        v153 = v73;
        [v96 bounds];
        x = v102;
        y = v103;
        width = v100;
        height = v101;
        v104 = v66[1];
        v105 = v66[3];
        if (v78)
        {
          v106 = v105 * 0.5 + v104 * 0.5;
          v107 = x;
          v108 = y;
          MaxX = CGRectGetMaxX(*(&v100 - 2));
        }

        else
        {
          v106 = v105 * -0.5 + v104 * 0.5;
          v110 = x;
          v111 = y;
          MaxX = CGRectGetMinX(*(&v100 - 2));
        }

        v91 = v106 - MaxX;
LABEL_171:
        v112 = v66[2];
        v181.origin.x = x;
        v181.origin.y = y;
        v181.size.width = width;
        v181.size.height = height;
        MaxY = CGRectGetMaxY(v181);
        CGAffineTransformMakeTranslation(__dst, v91, v112 - MaxY);
        [v83 applyTransform:__dst];
        [v83 bounds];
        v114 = v182.origin.x;
        v115 = v182.origin.y;
        v116 = v182.size.width;
        v117 = v182.size.height;
        MinX = CGRectGetMinX(v182);
        v183.origin.x = v114;
        v183.origin.y = v115;
        v183.size.width = v116;
        v183.size.height = v117;
        v119 = CGRectGetMaxX(v183);
        v184.origin.x = v114;
        v184.origin.y = v115;
        v184.size.width = v116;
        v184.size.height = v117;
        MinY = CGRectGetMinY(v184);
        v185.origin.x = v114;
        v185.origin.y = v115;
        v185.size.width = v116;
        v185.size.height = v117;
        v121 = CGRectGetMaxY(v185);
        v122 = v155;
        if (MinX < v155)
        {
          v122 = MinX;
        }

        v155 = v122;
        if (v119 > v75)
        {
          v75 = v119;
        }

        v72 = v151;
        v73 = v153;
        if (MinY < v151)
        {
          v72 = MinY;
        }

        if (v121 > v153)
        {
          v73 = v121;
        }

        [v58 addObject:v83];
      }

LABEL_180:
      if (v70 != ++v76)
      {
        continue;
      }

      break;
    }

    v70 = [v68 countByEnumeratingWithState:&v160 objects:v175 count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

LABEL_184:

  memset(__dst, 0, 48);
  CGAffineTransformMakeTranslation(__dst, -v155, -v72);
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v123 = v58;
  v124 = [v123 countByEnumeratingWithState:&v156 objects:v174 count:16];
  if (v124)
  {
    v125 = v124;
    v126 = *v157;
    do
    {
      for (k = 0; k != v125; ++k)
      {
        if (*v157 != v126)
        {
          objc_enumerationMutation(v123);
        }

        v128 = *(*(&v156 + 1) + 8 * k);
        v176[0] = *__dst;
        v176[1] = *&__dst[16];
        v176[2] = *&__dst[32];
        [v128 applyTransform:v176];
      }

      v125 = [v123 countByEnumeratingWithState:&v156 objects:v174 count:16];
    }

    while (v125);
  }

  if (v139)
  {
    *v139 = v75 - v155;
    v139[1] = v73 - v72;
  }

  v129 = [v123 copy];

  return v129;
}

void sub_1A2F794C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MKServiceGapDescription(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4)
  {
    v10 = @"Service interrupted";
LABEL_9:
    v15 = _MKLocalizedStringFromThisBundle(v10);
    goto LABEL_14;
  }

  if (!v7)
  {
    v10 = @"No upcoming service";
    goto LABEL_9;
  }

  [v7 timeIntervalSinceDate:v8];
  if (v11 < 43200.0)
  {
    if (MKServiceGapDescription_onceToken != -1)
    {
      dispatch_once(&MKServiceGapDescription_onceToken, &__block_literal_global_12993);
    }

    [MKServiceGapDescription_timestampFormatter setTimeZone:v9];
    v12 = _MKLocalizedStringFromThisBundle(@"ServiceResume_AbsoluteTime");
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MKServiceGapDescription_timestampFormatter stringFromDate:v7];
    [v13 localizedStringWithFormat:v12, v14];
    goto LABEL_12;
  }

  v18 = 0;
  v16 = [MEMORY[0x1E695DEE8] currentCalendar];
  v12 = [v16 _navigation_transitRelativeDateStringForDate:v7 context:5 inTimeZone:v9 outUsedFormat:&v18];

  v15 = 0;
  if (v18 <= 2)
  {
    v14 = _MKLocalizedStringFromThisBundle(off_1E76C8350[v18]);
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v14, v12];
    v15 = LABEL_12:;
  }

LABEL_14:

  return v15;
}

uint64_t __MKServiceGapDescription_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = MKServiceGapDescription_timestampFormatter;
  MKServiceGapDescription_timestampFormatter = v0;

  v2 = MKServiceGapDescription_timestampFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = MKServiceGapDescription_timestampFormatter;

  return [v4 setLocalizedDateFormatFromTemplate:@"jma"];
}

void sub_1A2F7B984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13094(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getTUDialRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUDialRequestClass_softClass;
  v7 = getTUDialRequestClass_softClass;
  if (!getTUDialRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUDialRequestClass_block_invoke;
    v3[3] = &unk_1E76CD7B0;
    v3[4] = &v4;
    __getTUDialRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2F81F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUHandleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUHandleClass_softClass;
  v7 = getTUHandleClass_softClass;
  if (!getTUHandleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUHandleClass_block_invoke;
    v3[3] = &unk_1E76CD7B0;
    v3[4] = &v4;
    __getTUHandleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2F82034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id mk_TUConvertDestinationIDToLatinNumbers(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getTUConvertDestinationIDToLatinNumbersSymbolLoc_ptr;
  v10 = getTUConvertDestinationIDToLatinNumbersSymbolLoc_ptr;
  if (!getTUConvertDestinationIDToLatinNumbersSymbolLoc_ptr)
  {
    v3 = TelephonyUtilitiesLibrary();
    v8[3] = dlsym(v3, "TUConvertDestinationIDToLatinNumbers");
    getTUConvertDestinationIDToLatinNumbersSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = v2(v1);

  return v4;
}

void *__getTUConvertDestinationIDToLatinNumbersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TelephonyUtilitiesLibrary();
  result = dlsym(v2, "TUConvertDestinationIDToLatinNumbers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUConvertDestinationIDToLatinNumbersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUHandleClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getTUDialRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getTUDialRequestClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUDialRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUDialRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(MKPlaceActionManager *)v3 _isCurrentLocationOrDroppedPin];
  }

  return result;
}

Class __getTUCallProviderManagerClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUCallProviderManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUCallProviderManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getTUCallCapabilitiesClass_block_invoke(v3);
  }

  return result;
}

void __getTUCallCapabilitiesClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUCallCapabilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUCallCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(MKPlaceActionManager *)v2 _launchMaps];
  }
}

void sub_1A2F84C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F95610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL ___notifyCenterOffsetChanged_block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(257);
  _notifyCenterOffsetChanged_notify = result;
  return result;
}

void sub_1A2F98848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2F9911C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __MKMappedABCNDictionary_block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"Street";
  v2[1] = @"City";
  v3[0] = @"street";
  v3[1] = @"city";
  v2[2] = @"State";
  v2[3] = @"ZIP";
  v3[2] = @"state";
  v3[3] = @"postalCode";
  v2[4] = @"Country";
  v2[5] = @"CountryCode";
  v3[4] = @"country";
  v3[5] = @"ISOCountryCode";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = MKMappedABCNDictionary_mapping;
  MKMappedABCNDictionary_mapping = v0;
}

id MKAddressStringForAddressDictionary(void *a1, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (MKMappedABCNDictionary_onceToken != -1)
  {
    dispatch_once(&MKMappedABCNDictionary_onceToken, &__block_literal_global_16715);
  }

  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v2];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [MKMappedABCNDictionary_mapping objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [v3 objectForKeyedSubscript:v10];

          if (!v11)
          {
            v12 = [v2 objectForKeyedSubscript:v9];
            [v3 setObject:v12 forKeyedSubscript:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];
  v14 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:v13];
  v15 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:v14 addCountryName:a2];

  return v15;
}

id MKAddressDictionaryFromPostalAddress(void *a1)
{
  if (a1)
  {
    v1 = [a1 dictionaryRepresentation];
    v2 = geoAddressDictionaryFromContactsAddressDictionary(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id geoAddressDictionaryFromContactsAddressDictionary(void *a1)
{
  v13[8] = *MEMORY[0x1E69E9840];
  v12[0] = @"street";
  v12[1] = @"city";
  v13[0] = @"Street";
  v13[1] = @"City";
  v12[2] = @"state";
  v12[3] = @"subAdministrativeArea";
  v13[2] = @"State";
  v13[3] = @"SubAdministrativeArea";
  v12[4] = @"subLocality";
  v12[5] = @"postalCode";
  v13[4] = @"SubLocality";
  v13[5] = @"ZIP";
  v12[6] = @"country";
  v12[7] = @"ISOCountryCode";
  v13[6] = @"Country";
  v13[7] = @"CountryCode";
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v13 forKeys:v12 count:8];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __geoAddressDictionaryFromContactsAddressDictionary_block_invoke;
  v9[3] = &unk_1E76C8830;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v5 copy];

  return v7;
}