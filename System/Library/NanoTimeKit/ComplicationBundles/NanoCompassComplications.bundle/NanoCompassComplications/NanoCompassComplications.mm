void sub_23BD28968()
{
  v0 = CLLocationCoordinate2DMake(37.3353672, -122.011737);
  v1 = objc_alloc(MEMORY[0x277CE41F8]);
  v2 = *MEMORY[0x277CE4208];
  v3 = *MEMORY[0x277CE4250];
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5, v6);
  v15 = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_(v1, v8, v7, v9, v0.latitude, v0.longitude, 48.7, v2, v3);

  v11 = objc_msgSend_altitudeWithLocation_error_(NCAltitude, v10, v15, 0);
  v12 = qword_27E1C4A80;
  qword_27E1C4A80 = v11;

  objc_msgSend_setAbsoluteAltitudeAccuracy_(qword_27E1C4A80, v13, &unk_284E8A708, v14);
}

__CFString *sub_23BD28C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278B93F80[a3 - 1];
  }
}

uint64_t sub_23BD28CA8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_automotive(a1, a2, a3, a4) & 1) != 0 || (objc_msgSend_cycling(a1, v5, v6, v7) & 1) != 0 || (objc_msgSend_running(a1, v8, v9, v10))
  {
    return 1;
  }

  return objc_msgSend_walking(a1, v11, v12, v13);
}

uint64_t sub_23BD28D0C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_walking(a1, a2, a3, a4))
  {
    return 1;
  }

  if (objc_msgSend_running(a1, v5, v6, v7))
  {
    return 2;
  }

  if (objc_msgSend_automotive(a1, v9, v10, v11))
  {
    return 3;
  }

  if (objc_msgSend_cycling(a1, v12, v13, v14))
  {
    return 4;
  }

  return 0;
}

uint64_t sub_23BD2921C()
{

  return NSRequestConcreteImplementation();
}

uint64_t sub_23BD29238()
{

  return objc_opt_class();
}

uint64_t sub_23BD29EAC()
{
  qword_27E1C4A90 = objc_alloc_init(NCTargetedWaypointManager);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23BD2AFE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_27E1C4AA0 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], a4, *(*(a1 + 32) + 488), *MEMORY[0x277D74410]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23BD2B0E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], a4, *(*(a1 + 32) + 480), *MEMORY[0x277D74410]);
  v5 = qword_27E1C4AB8;
  qword_27E1C4AB8 = v4;

  qword_27E1C4AB0 = objc_msgSend_CLKFontWithLocalizedSmallCaps(qword_27E1C4AB8, v6, v7, v8);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23BD2B1F4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4AEC);
  if (qword_27E1C4AF0)
  {
    v6 = qword_27E1C4AF0 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4AF8)
  {
    v7 = byte_27E1C4AE8;
  }

  else
  {
    qword_27E1C4AF0 = v2;
    qword_27E1C4AF8 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD2B29C(qword_27E1C4AF8, v2);
    v7 = 1;
    byte_27E1C4AE8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4AEC);

  return v7;
}

void sub_23BD2B29C(uint64_t a1, void *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v7 = objc_msgSend_sizeClass(v3, v4, v5, v6);
  v9 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v8, v3, v7);

  v27[0] = &unk_284E8ABD8;
  v27[1] = &unk_284E8ABF0;
  v28[0] = &unk_284E8A718;
  v28[1] = &unk_284E8A718;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v28, v27, 2);
  objc_msgSend_scaledValue_withOverrides_(v9, v12, v11, v13, 4.0);
  qword_27E1C4AC8 = v14;

  objc_msgSend_scaledValue_(v9, v15, v16, v17, 11.0);
  qword_27E1C4AD0 = v18;
  objc_msgSend_scaledValue_(v9, v19, v20, v21, 11.0);
  qword_27E1C4AD8 = v22;
  objc_msgSend_scaledValue_(v9, v23, v24, v25, 13.0);
  qword_27E1C4AE0 = v26;
}

uint64_t sub_23BD2B4A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], a4, *(*(a1 + 32) + 512), *MEMORY[0x277D74410]);
  v5 = qword_27E1C4B08;
  qword_27E1C4B08 = v4;

  qword_27E1C4B00 = objc_msgSend_CLKFontWithLocalizedSmallCaps(qword_27E1C4B08, v6, v7, v8);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23BD2B5CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_27E1C4B18 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], a4, *(*(a1 + 32) + 520), *MEMORY[0x277D74410]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23BD2B63C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4B4C);
  if (qword_27E1C4B50)
  {
    v6 = qword_27E1C4B50 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4B58)
  {
    v7 = byte_27E1C4B48;
  }

  else
  {
    qword_27E1C4B50 = v2;
    qword_27E1C4B58 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD2B6E4(qword_27E1C4B58, v2);
    v7 = 1;
    byte_27E1C4B48 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4B4C);

  return v7;
}

void sub_23BD2B6E4(uint64_t a1, void *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v7 = objc_msgSend_sizeClass(v3, v4, v5, v6);
  v9 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v8, v3, v7);

  v27[0] = &unk_284E8AC08;
  v27[1] = &unk_284E8AC20;
  v28[0] = &unk_284E8A728;
  v28[1] = &unk_284E8A728;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v28, v27, 2);
  objc_msgSend_scaledValue_withOverrides_(v9, v12, v11, v13, 10.0);
  qword_27E1C4B28 = v14;

  objc_msgSend_scaledValue_(v9, v15, v16, v17, 33.0);
  qword_27E1C4B30 = v18;
  objc_msgSend_scaledValue_(v9, v19, v20, v21, 33.0);
  qword_27E1C4B38 = v22;
  objc_msgSend_scaledValue_(v9, v23, v24, v25, 42.0);
  qword_27E1C4B40 = v26;
}

void sub_23BD2B988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD2B9A8(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[NCLocationUpdateNonRhythmicGNSSDelegate _startLocationQueryDurationTimer]_block_invoke";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s Location update should end. Set the idle time to restart location update.", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_stopLocationUpdates(WeakRetained, v4, v5, v6);

  v7 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__startIdleTimer(v7, v8, v9, v10);
}

void sub_23BD2C17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD2C1AC(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2C23C;
  block[3] = &unk_278B94000;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void sub_23BD2C23C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[32];
    if (v6)
    {
      if (objc_msgSend_isValid(v6, v2, v3, v4))
      {
        v7 = NCLogForCategory(1uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_23BD65660(v7);
        }

        objc_msgSend_fire(v5[32], v8, v9, v10);
      }
    }
  }
}

uint64_t sub_23BD2C2C0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]_block_invoke";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s runtime assertion is about to expire", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_23BD2C380(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]_block_invoke";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s runtime assertion invalidated. error: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_23BD2D56C()
{
  qword_27E1C4B60 = objc_alloc_init(NCGuidesEnabledState);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23BD2DAB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, *(a1 + 48), a4);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v6, v5, *(a1 + 40));

  v9 = *(a1 + 32);

  return MEMORY[0x2821F9670](v9, sel__lock_saveGuideEnabledStatesToDefaults, v7, v8);
}

void sub_23BD2DC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD2DC30(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), a2, a1[5], a4);
  if (v5)
  {
    v8 = objc_msgSend_BOOLValue(v5, v5, v6, v7);
  }

  else
  {
    v8 = 1;
  }

  *(*(a1[6] + 8) + 24) = v8;

  return MEMORY[0x2821F96F8]();
}

void sub_23BD2DE68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_bundleForClass_(MEMORY[0x277CCA8D8], a2, *(a1 + 32), a4);
  v7 = objc_msgSend_bundleIdentifier(v9, v4, v5, v6);
  v8 = qword_27E1C4B70;
  qword_27E1C4B70 = v7;
}

uint64_t sub_23BD2EBDC()
{
  v0 = [NCBearing alloc];
  v4 = objc_msgSend_initWithBearing_(v0, v1, v2, v3, 0.0);
  v5 = qword_27E1C4B80;
  qword_27E1C4B80 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t sub_23BD2F7BC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4BEC);
  if (qword_27E1C4BF0)
  {
    v6 = qword_27E1C4BF0 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4BF8)
  {
    v7 = byte_27E1C4BE8;
  }

  else
  {
    qword_27E1C4BF0 = v2;
    qword_27E1C4BF8 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD2F864(qword_27E1C4BF8, v2);
    v7 = 1;
    byte_27E1C4BE8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4BEC);

  return v7;
}

void sub_23BD2F864(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v5 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v4, v3, 2);
  v21[0] = &unk_284E8ACC8;
  v21[1] = &unk_284E8ACE0;
  v22[0] = &unk_284E8B130;
  v22[1] = &unk_284E8B130;
  v21[2] = &unk_284E8ACF8;
  v22[2] = &unk_284E8B140;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v22, v21, 3);
  objc_msgSend_scaledValue_withOverrides_(v5, v8, v7, v9, 44.0);
  *&xmmword_27E1C4B90 = v10;

  objc_msgSend_scaledValue_(v5, v11, v12, v13, 1.25);
  *(&xmmword_27E1C4B90 + 1) = v14;
  objc_msgSend_scaledValue_(v5, v15, v16, v17, 2.5);
  qword_27E1C4BA0 = v18;
  *algn_27E1C4BA8 = *(&xmmword_27E1C4B90 + 8);
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v20 = v19;

  xmmword_27E1C4BC0 = vmulq_n_f64(xmmword_27E1C4B90, v20);
  *algn_27E1C4BD0 = vmulq_n_f64(*&qword_27E1C4BA0, v20);
  *&qword_27E1C4BE0 = v20 * *&qword_27E1C4BB0;
}

void sub_23BD2F9D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3, a4);
  v8[0] = @"transform";
  v8[1] = @"borderColor";
  v9[0] = v4;
  v9[1] = v4;
  v8[2] = @"borderWidth";
  v8[3] = @"backgroundColor";
  v9[2] = v4;
  v9[3] = v4;
  v8[4] = @"foregroundColor";
  v8[5] = @"opacity";
  v9[4] = v4;
  v9[5] = v4;
  v8[6] = @"cornerRadius";
  v9[6] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v9, v8, 7);
  v7 = qword_27E1C4C00;
  qword_27E1C4C00 = v6;
}

uint64_t IsNanoCompass()
{
  if (qword_27E1C4C18 != -1)
  {
    sub_23BD659B4();
  }

  return byte_27E1C4C10;
}

void sub_23BD2FAF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v10 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  byte_27E1C4C10 = objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", v8, v10, v9);
}

uint64_t NanoCompassIsInternalBuild()
{
  if (qword_27E1C4C28 != -1)
  {
    sub_23BD659C8();
  }

  return byte_27E1C4C20;
}

uint64_t sub_23BD2FBA4()
{
  result = os_variant_has_internal_ui();
  byte_27E1C4C20 = result;
  return result;
}

id NanoCompassAppTintColor()
{
  if (qword_27E1C4C38 != -1)
  {
    sub_23BD659DC();
  }

  v1 = qword_27E1C4C30;

  return v1;
}

uint64_t sub_23BD2FC10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, a4, 1.0, 0.333333333, 0.0392156863, 1.0);
  v5 = qword_27E1C4C30;
  qword_27E1C4C30 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

id NanoCompassBearingTintColor()
{
  if (qword_27E1C4C48 != -1)
  {
    sub_23BD659F0();
  }

  v1 = qword_27E1C4C40;

  return v1;
}

uint64_t sub_23BD2FCAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, a4, 0.929411765, 0.149019608, 0.0941176471, 1.0);
  v5 = qword_27E1C4C40;
  qword_27E1C4C40 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

id NanoCompassLocalizedString(void *a1)
{
  v1 = a1;
  v2 = sub_23BD2FF74();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v1, &stru_284E80A60, @"NanoCompass");

  if (objc_msgSend_isEqualToString_(v4, v5, v1, v6))
  {
    v9 = sub_23BD2FF74();
    v11 = objc_msgSend_localizedStringForKey_value_table_(v9, v10, v1, &stru_284E80A60, @"AltimeterComplication");

    v4 = v11;
  }

  if (objc_msgSend_isEqualToString_(v4, v7, v1, v8))
  {
    v14 = sub_23BD2FF74();
    v16 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, v1, &stru_284E80A60, @"GridSystem");

    v4 = v16;
  }

  if (objc_msgSend_isEqualToString_(v4, v12, v1, v13))
  {
    v19 = sub_23BD2FF74();
    v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, v1, &stru_284E80A60, @"Waypoint");

    v4 = v21;
  }

  if (objc_msgSend_isEqualToString_(v4, v17, v1, v18))
  {
    v24 = sub_23BD2FF74();
    v26 = objc_msgSend_localizedStringForKey_value_table_(v24, v25, v1, &stru_284E80A60, @"LevelComplication");

    v4 = v26;
  }

  if (objc_msgSend_isEqualToString_(v4, v22, v1, v23))
  {
    v29 = sub_23BD2FF74();
    v31 = objc_msgSend_localizedStringForKey_value_table_(v29, v30, v1, &stru_284E80A60, @"Localizable-Footprint");

    v4 = v31;
  }

  if (objc_msgSend_isEqualToString_(v4, v27, v1, v28))
  {
    v34 = sub_23BD2FF74();
    v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, v1, &stru_284E80A60, @"Localizable-N199");

    v4 = v36;
  }

  if (objc_msgSend_isEqualToString_(v4, v32, v1, v33))
  {
    v37 = sub_23BD2FF74();
    v39 = objc_msgSend_localizedStringForKey_value_table_(v37, v38, v1, &stru_284E80A60, @"Localizable-Guides");

    v4 = v39;
  }

  return v4;
}

id sub_23BD2FF74()
{
  if (qword_27E1C4CD8 != -1)
  {
    sub_23BD65A04();
  }

  v1 = qword_27E1C4CD0;

  return v1;
}

id NanoCompassAccessibilityNameForSymbol(void *a1)
{
  v1 = a1;
  v2 = sub_23BD2FF74();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v1, &stru_284E80A60, @"WaypointSymbols");

  return v4;
}

id NanoCompassFormattedHeading(void *a1, int a2, void *a3)
{
  v5 = a1;
  v9 = a3;
  if (v5 && (objc_msgSend_isAccurate(v5, v6, v7, v8) & 1) != 0)
  {
    objc_msgSend_heading(v5, v10, v11, v12);
    v17 = sub_23BD3013C(v9, v13);
    if (a2 && (objc_msgSend_accuracy(v5, v14, v15, v16), v18 > 30.0))
    {
      v19 = NanoCompassLocalizedString(@"INACCURATE_DEGREE_FORMAT");
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, v19, v21, v17);
    }

    else
    {
      v22 = v17;
    }
  }

  else
  {
    v22 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v22;
}

id sub_23BD3013C(void *a1, double a2)
{
  v3 = a1;
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v4, vcvtmd_s64_f64(a2), v5);
  if (v3)
  {
    objc_msgSend_stringFromNumber_(v3, v6, v8, v7);
  }

  else
  {
    objc_msgSend_localizedStringFromNumber_numberStyle_(MEMORY[0x277CCABB8], v6, v8, 0);
  }
  v9 = ;
  v10 = NanoCompassLocalizedString(@"DEGREE_FORMAT");
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, v10, v12, v9);

  return v13;
}

id NanoCompassFormattedDirection(int a1, const char *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_27E1C4C58 != -1)
  {
    sub_23BD65A18();
  }

  v7 = objc_msgSend_count(qword_27E1C4C50, a2, a3, a4);
  v10 = objc_msgSend_objectAtIndexedSubscript_(qword_27E1C4C50, v8, vcvtmd_s64_f64(vcvtd_n_f64_u64(0x168 / v7, 1uLL) + a5) % 360 / (0x168 / v7), v9);
  v13 = v10;
  if (a1)
  {
    v14 = objc_msgSend_stringByAppendingString_(v10, v11, @"_FULL", v12);

    v13 = v14;
  }

  v15 = NanoCompassLocalizedString(v13);

  return v15;
}

void sub_23BD30308()
{
  v0 = qword_27E1C4C50;
  qword_27E1C4C50 = &unk_284E8B0E8;
}

id NanoCompassFormattedHeadingDirection(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (v1 && (objc_msgSend_isAccurate(v1, v2, v3, v4) & 1) != 0)
  {
    objc_msgSend_heading(v5, v6, v7, v8);
    v13 = NanoCompassFormattedDirection(0, v9, v10, v11, v12);
  }

  else
  {
    v13 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  v14 = v13;

  return v14;
}

id NanoCompassFormattedHeadingFullDirection(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (v1 && (objc_msgSend_isAccurate(v1, v2, v3, v4) & 1) != 0)
  {
    objc_msgSend_heading(v5, v6, v7, v8);
    v13 = NanoCompassFormattedDirection(1, v9, v10, v11, v12);
  }

  else
  {
    v13 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  v14 = v13;

  return v14;
}

id NanoCompassFormattedFullHeadingAndDirection(void *a1, int a2, void *a3, int a4)
{
  v7 = a1;
  v11 = a3;
  if (v7 && (objc_msgSend_isAccurate(v7, v8, v9, v10) & 1) != 0)
  {
    v12 = NanoCompassLocalizedString(@"HEADING_DIRECTION_COMBINER");
    v13 = MEMORY[0x277CCACA8];
    v14 = NanoCompassFormattedHeading(v7, a2, v11);
    objc_msgSend_heading(v7, v15, v16, v17);
    v22 = NanoCompassFormattedDirection(a4, v18, v19, v20, v21);
    v25 = objc_msgSend_stringWithFormat_(v13, v23, v12, v24, v14, v22);
  }

  else
  {
    v25 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v25;
}

__CFString *NanoCompassFormattedBearing(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    objc_msgSend_bearing(a1, v4, v5, v6);
    v8 = sub_23BD3013C(v3, v7);
  }

  else
  {
    v8 = &stru_284E80A60;
  }

  return v8;
}

__CFString *NanoCompassFormattedBearingDirection(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    objc_msgSend_bearing(a1, a2, a3, a4);
    v9 = NanoCompassFormattedDirection(0, v5, v6, v7, v8);
  }

  else
  {
    v9 = &stru_284E80A60;
  }

  return v9;
}

__CFString *NanoCompassFormattedBearingAndDirection(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = NanoCompassLocalizedString(@"HEADING_DIRECTION_COMBINER");
    v6 = MEMORY[0x277CCACA8];
    v7 = NanoCompassFormattedBearing(v4, v3);

    v11 = NanoCompassFormattedBearingDirection(v4, v8, v9, v10);

    v14 = objc_msgSend_stringWithFormat_(v6, v12, v5, v13, v7, v11);
  }

  else
  {
    v14 = &stru_284E80A60;
  }

  return v14;
}

id NanoCompassDefaultValueFormat()
{
  if (qword_27E1C4C68 != -1)
  {
    sub_23BD65A2C();
  }

  v1 = qword_27E1C4C60;

  return v1;
}

uint64_t sub_23BD306F8()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4C60;
  qword_27E1C4C60 = v0;

  objc_msgSend_setNumberStyle_(qword_27E1C4C60, v2, 1, v3);
  objc_msgSend_setMaximumFractionDigits_(qword_27E1C4C60, v4, 0, v5);
  v7 = qword_27E1C4C60;

  return MEMORY[0x2821F9670](v7, sel_setRoundingMode_, 2, v6);
}

id NanoCompassFormattedAltitude(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3 && (objc_msgSend_hasReading(v3, v4, v5, v6) & 1) != 0)
  {
    v8 = objc_alloc(MEMORY[0x277CCAB10]);
    objc_msgSend_altitude(v3, v9, v10, v11);
    v13 = v12;
    v17 = objc_msgSend_meters(MEMORY[0x277CCAE20], v14, v15, v16);
    v20 = objc_msgSend_initWithDoubleValue_unit_(v8, v18, v17, v19, v13);

    v24 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v21, v22, v23);
    v28 = objc_msgSend_usesMetric(v24, v25, v26, v27);

    v32 = 5.0;
    if ((v28 & 1) == 0)
    {
      v33 = objc_msgSend_feet(MEMORY[0x277CCAE20], v29, v30, v31);
      v36 = objc_msgSend_measurementByConvertingToUnit_(v20, v34, v33, v35);

      v32 = 10.0;
      v20 = v36;
    }

    if (objc_msgSend_type(v3, v29, v30, v31) == 3)
    {
      v32 = 1.0;
    }

    objc_msgSend_doubleValue(v20, v37, v38, v39);
    v46 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v41, v42, v43, v32 * round(v40 / v32));
    if (v7)
    {
      v47 = objc_msgSend_stringFromNumber_(v7, v44, v46, v45);
    }

    else
    {
      v48 = NanoCompassDefaultValueFormat();
      v47 = objc_msgSend_stringFromNumber_(v48, v49, v46, v50);
    }
  }

  else
  {
    v47 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v47;
}

id NanoCompassFormattedAltitudeUnitsInAbbr(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, a2, a3, a4);
  v9 = objc_msgSend_usesMetric(v5, v6, v7, v8);

  v10 = @"ALTITUDE_UNIT_METER";
  if (a1)
  {
    v10 = @"ALTITUDE_UNIT_KILOMETER";
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"ALTITUDE_UNIT_FOOT";
  }

  v12 = NanoCompassLocalizedString(v11);

  return v12;
}

id NanoCompassFormattedAltitudeValueAndUnits(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3 && (objc_msgSend_hasReading(v3, v4, v5, v6) & 1) != 0)
  {
    v8 = NanoCompassLocalizedString(@"ALTITUDE_COMBINING_FORMAT");
    v9 = MEMORY[0x277CCACA8];
    v10 = NanoCompassFormattedAltitude(v3, v7);
    v14 = NanoCompassFormattedAltitudeUnitsInAbbr(0, v11, v12, v13);
    v17 = objc_msgSend_stringWithFormat_(v9, v15, v8, v16, v10, v14);
  }

  else
  {
    v17 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v17;
}

id NanoCompassValueAndUnit(void *a1, void *a2, char a3, int a4)
{
  if (a1)
  {
    v5 = NanoCompassValueWithFormat(a1, a2, a3);
    v9 = NanoCompassFormattedAltitudeUnitsInAbbr(0, v6, v7, v8);
    v10 = MEMORY[0x277CCACA8];
    if (a4)
    {
      v11 = @"ALTITUDE_COMBINING_WITH_SPACE_FORMAT";
    }

    else
    {
      v11 = @"ALTITUDE_COMBINING_FORMAT";
    }

    v12 = NanoCompassLocalizedString(v11);
    v15 = objc_msgSend_stringWithFormat_(v10, v13, v12, v14, v5, v9);
  }

  else
  {
    v15 = NanoCompassLocalizedString(@"UNCALIBRATED");
  }

  return v15;
}

id NanoCompassValueWithFormat(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v14 = NanoCompassLocalizedString(@"UNCALIBRATED");
    goto LABEL_9;
  }

  v9 = NanoCompassLocalizedString(@"INACCURATE_DEGREE_FORMAT");
  if (!v6)
  {
    v15 = NanoCompassDefaultValueFormat();
    v12 = objc_msgSend_stringFromNumber_(v15, v16, v5, v17);

    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = v12;
    goto LABEL_8;
  }

  v12 = objc_msgSend_stringFromNumber_(v6, v7, v5, v8);
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, v9, v11, v12);
LABEL_8:
  v14 = v13;

LABEL_9:

  return v14;
}

id NanoCompassGetAltitudeAbbreviationWithTargetLength(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1;
  v9 = objc_msgSend_displayTilde(v5, v6, v7, v8);
  v10 = MEMORY[0x277CCABB0];
  objc_msgSend_altitude(v5, v11, v12, v13);
  v17 = objc_msgSend_numberWithInt_(v10, v15, v14, v16);
  v21 = objc_msgSend_intValue(v17, v18, v19, v20);
  v22 = NanoCompassLocalizedString(@"INACCURATE_DEGREE_FORMAT");
  v26 = objc_msgSend_intValue(v17, v23, v24, v25);
  if (v26 >= 0)
  {
    v30 = v26;
  }

  else
  {
    v30 = -v26;
  }

  if (v30 < 0x3E8)
  {
    goto LABEL_15;
  }

  if (v21 >= 0)
  {
    v31 = v21;
  }

  else
  {
    v31 = -v21;
  }

  v32 = objc_msgSend_stringValue(v17, v27, v28, v29);
  v36 = objc_msgSend_length(v32, v33, v34, v35);
  v37 = v9;
  if (v31 > 0x3E7)
  {
    v37 = v9 + 1;
  }

  v38 = v37 + v36;

  if (v38 <= a2)
  {
LABEL_15:
    v61 = NanoCompassDefaultValueFormat();
    v49 = objc_msgSend_stringFromNumber_(v61, v62, v17, v63);

    if (v9)
    {
      v66 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v64, v22, v65, v49);
    }

    else
    {
      v66 = v49;
      v49 = v66;
    }

    v60 = v66;
  }

  else
  {
    objc_msgSend_altitude(v5, v39, v40, v41);
    *&v42 = v42 / 1000.0;
    LODWORD(a2) = llroundf(*&v42);
    v43 = NanoCompassDefaultValueFormat();
    v46 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v44, a2, v45);
    v49 = objc_msgSend_stringFromNumber_(v43, v47, v46, v48);

    *a3 = 1;
    v53 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v50, v51, v52);
    LODWORD(v43) = objc_msgSend_usesMetric(v53, v54, v55, v56);

    if (v43)
    {
      v57 = @"ALTITUDE_ABBREVIATION_IN_METRIC";
    }

    else
    {
      v57 = @"ALTITUDE_ABBREVIATION_NON_METRIC";
    }

    v58 = NanoCompassLocalizedString(v57);
    v60 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v59, v58, @"~%@", 0, v49);
  }

  return v60;
}

__CFString *NanoCompassFormattedAltitudeAccuracy(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3 && objc_msgSend_hasReading(v3, v4, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CCAB10]);
    objc_msgSend_accuracy(v3, v9, v10, v11);
    v13 = v12;
    v17 = objc_msgSend_meters(MEMORY[0x277CCAE20], v14, v15, v16);
    v20 = objc_msgSend_initWithDoubleValue_unit_(v8, v18, v17, v19, v13);

    v24 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v21, v22, v23);
    v28 = objc_msgSend_usesMetric(v24, v25, v26, v27);

    if ((v28 & 1) == 0)
    {
      v32 = objc_msgSend_feet(MEMORY[0x277CCAE20], v29, v30, v31);
      v35 = objc_msgSend_measurementByConvertingToUnit_(v20, v33, v32, v34);

      v20 = v35;
    }

    v36 = MEMORY[0x277CCABB0];
    objc_msgSend_doubleValue(v20, v29, v30, v31);
    v42 = objc_msgSend_numberWithDouble_(v36, v37, v38, v39);
    if (v7)
    {
      objc_msgSend_stringFromNumber_(v7, v40, v42, v41);
    }

    else
    {
      if (qword_27E1C4C78 != -1)
      {
        sub_23BD65A40();
      }

      objc_msgSend_stringFromNumber_(qword_27E1C4C70, v40, v42, v41);
    }
    v44 = ;
    v45 = NanoCompassLocalizedString(@"ACCURACY_FORMAT");
    v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, v45, v47, v44);
  }

  else
  {
    v43 = &stru_284E80A60;
  }

  return v43;
}

uint64_t sub_23BD31060()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4C70;
  qword_27E1C4C70 = v0;

  objc_msgSend_setNumberStyle_(qword_27E1C4C70, v2, 1, v3);
  v6 = qword_27E1C4C70;

  return objc_msgSend_setMaximumFractionDigits_(v6, v4, 2, v5);
}

id _noStyleFormatter()
{
  if (qword_27E1C4C88 != -1)
  {
    sub_23BD65A54();
  }

  v1 = qword_27E1C4C80;

  return v1;
}

void sub_23BD31100()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4C80;
  qword_27E1C4C80 = v0;

  objc_msgSend_setNumberStyle_(qword_27E1C4C80, v2, 0, v3);
  v9 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v4, v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4C80, v7, v9, v8);
}

id _DMSAccessibilityFormatter()
{
  if (qword_27E1C4C98 != -1)
  {
    sub_23BD65A68();
  }

  v1 = qword_27E1C4C90;

  return v1;
}

uint64_t sub_23BD311C4()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4C90;
  qword_27E1C4C90 = v0;

  objc_msgSend_setUnitsStyle_(qword_27E1C4C90, v2, 3, v3);
  v5 = qword_27E1C4C90;

  return MEMORY[0x2821F9670](v5, sel_setZeroFormattingBehavior_, 0, v4);
}

id NanoCompassWaypointDefaultColor()
{
  if (qword_27E1C4CA8 != -1)
  {
    sub_23BD65A7C();
  }

  v1 = qword_27E1C4CA0;

  return v1;
}

uint64_t sub_23BD31264(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], a2, a3, a4, 0.949019608, 0.7);
  v5 = qword_27E1C4CA0;
  qword_27E1C4CA0 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t supportsAltimeterOverride()
{
  v8 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AbsoluteAltitudeEnabled", @"com.apple.locationd", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    if (byte_27E1C4CB0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  byte_27E1C4CB0 = AppBooleanValue != 0;
  if (!AppBooleanValue)
  {
    goto LABEL_10;
  }

LABEL_3:
  v1 = NCLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_27E1C4CB0)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    *buf = 138412290;
    v7 = v2;
    _os_log_impl(&dword_23BD26000, v1, OS_LOG_TYPE_DEFAULT, "Absolute altimeter support is overridden to %@", buf, 0xCu);
  }

  v3 = byte_27E1C4CB0;
  return v3 & 1;
}

uint64_t supportAbsoluteAltimeterFeatures()
{
  if (qword_27E1C4C28 != -1)
  {
    sub_23BD659C8();
  }

  if (byte_27E1C4C20 != 1)
  {
    return 0;
  }

  return supportsAltimeterOverride();
}

uint64_t _isCurrentDeviceAltAccount()
{
  if (qword_27E1C4CB8 != -1)
  {
    sub_23BD65A90();
  }

  return byte_27E1C4CB1;
}

void sub_23BD31458(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x277D2BCF8], a2, a3, a4);
  v8 = objc_msgSend_activePairedDeviceSelectorBlock(MEMORY[0x277D2BCF8], v5, v6, v7);
  v11 = objc_msgSend_getAllDevicesWithArchivedAltAccountDevicesMatching_(v4, v9, v8, v10);
  v22 = objc_msgSend_firstObject(v11, v12, v13, v14);

  v17 = v22;
  if (v22)
  {
    v18 = objc_msgSend_valueForProperty_(v22, v15, *MEMORY[0x277D2BB28], v16);
    byte_27E1C4CB1 = objc_msgSend_BOOLValue(v18, v19, v20, v21);

    v17 = v22;
  }

  else
  {
    byte_27E1C4CB1 = 0;
  }
}

uint64_t supportsOrienteering()
{
  if (qword_27E1C4CC8 != -1)
  {
    sub_23BD65AA4();
  }

  return byte_27E1C4CC0;
}

uint64_t sub_23BD31560()
{
  result = MGGetBoolAnswer();
  byte_27E1C4CC0 = result;
  return result;
}

uint64_t isFullyFeaturedApp()
{
  if (qword_27E1C4CC8 != -1)
  {
    sub_23BD65AA4();
  }

  if (byte_27E1C4CC0 == 1)
  {
    if (qword_27E1C4CB8 != -1)
    {
      sub_23BD65A90();
    }

    v0 = byte_27E1C4CB1 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

BOOL NanoCompassIsSameDay(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v9 = objc_msgSend_currentCalendar(v3, v6, v7, v8);
  v11 = objc_msgSend_components_fromDate_(v9, v10, 28, v5);

  v13 = objc_msgSend_components_fromDate_(v9, v12, 28, v4);

  v17 = objc_msgSend_day(v11, v14, v15, v16);
  if (v17 == objc_msgSend_day(v13, v18, v19, v20) && (v24 = objc_msgSend_month(v11, v21, v22, v23), v24 == objc_msgSend_month(v13, v25, v26, v27)))
  {
    v31 = objc_msgSend_year(v11, v28, v29, v30);
    v35 = v31 == objc_msgSend_year(v13, v32, v33, v34);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

double bearingBetweenCoordinatesInRadian(double a1, double a2, double a3, double a4)
{
  v4 = a1 * 3.14159265 / 180.0;
  v5 = a3 * 3.14159265 / 180.0;
  v6 = __sincos_stret(a4 * 3.14159265 / 180.0 - a2 * 3.14159265 / 180.0);
  v7 = __sincos_stret(v5);
  v8 = __sincos_stret(v4);
  v9 = atan2(v7.__cosval * v6.__sinval, -(v8.__sinval * v7.__cosval) * v6.__cosval + v8.__cosval * v7.__sinval) * 180.0 / 3.14159265;
  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  return v9 * 3.14159265 / 180.0;
}

double bearingBetweenLocationsInRadian(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_msgSend_coordinate(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  objc_msgSend_coordinate(v3, v12, v13, v14);
  v16 = v15;
  v18 = v17;

  v19 = bearingBetweenCoordinatesInRadian(v9, v11, v16, v18);
  objc_msgSend_magneticDeclination(v4, v20, v21, v22);

  return v19;
}

double bearingBetweenLocationsInRadianWithOptions(void *a1, void *a2)
{
  v3 = a2;
  objc_msgSend_coordinate(a1, v4, v5, v6);
  v8 = v7;
  v10 = v9;
  objc_msgSend_coordinate(v3, v11, v12, v13);
  v15 = v14;
  v17 = v16;

  return bearingBetweenCoordinatesInRadian(v8, v10, v15, v17);
}

double _roundWaypointDistanceTo(double a1, double a2)
{
  result = 0.0;
  if (a1 >= 0.0)
  {
    return floor(a1 / a2 + 0.5) * a2;
  }

  return result;
}

id _formattedDistanceForWaypoint(void *a1, void *a2, int a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = objc_alloc(MEMORY[0x277CCAB10]);
  v13 = objc_msgSend_meters(MEMORY[0x277CCAE20], v10, v11, v12);
  v16 = objc_msgSend_initWithDoubleValue_unit_(v9, v14, v13, v15, a4);

  v20 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, v17, v18, v19);
  v24 = objc_msgSend_usesMetric(v20, v21, v22, v23);

  if (v24)
  {
    if (a4 >= 1000.0)
    {
      v28 = v8;
      v34 = objc_msgSend_kilometers(MEMORY[0x277CCAE20], v59, v60, v61);
      v37 = objc_msgSend_measurementByConvertingToUnit_(v16, v62, v34, v63);
    }

    else
    {
      v28 = v7;
      if (a3)
      {
        v29 = 0.0;
        if (a4 >= 0.0)
        {
          v29 = floor(a4 / 10.0 + 0.5) * 10.0;
        }

        v30 = objc_alloc(MEMORY[0x277CCAB10]);
        v34 = objc_msgSend_meters(MEMORY[0x277CCAE20], v31, v32, v33);
        v37 = objc_msgSend_initWithDoubleValue_unit_(v30, v35, v34, v36, v29);
      }

      else
      {
        v64 = objc_alloc(MEMORY[0x277CCAB10]);
        v34 = objc_msgSend_meters(MEMORY[0x277CCAE20], v65, v66, v67);
        v37 = objc_msgSend_initWithDoubleValue_unit_(v64, v68, v34, v69, a4);
      }
    }

    goto LABEL_15;
  }

  v38 = objc_msgSend_miles(MEMORY[0x277CCAE20], v25, v26, v27);
  v34 = objc_msgSend_measurementByConvertingToUnit_(v16, v39, v38, v40);

  objc_msgSend_doubleValue(v34, v41, v42, v43);
  if (v44 >= 1.0)
  {
    v28 = v8;
    v37 = v34;
    v34 = v37;
LABEL_15:
    v70 = v37;
    goto LABEL_18;
  }

  v28 = v7;
  objc_msgSend_doubleValue(v34, v45, v46, v47);
  v49 = v48 * 5280.0;
  if (a3)
  {
    v50 = 0.0;
    if (v49 >= 0.0)
    {
      v50 = floor(v49 / 50.0 + 0.5) * 50.0;
    }

    v51 = objc_alloc(MEMORY[0x277CCAB10]);
    v55 = objc_msgSend_feet(MEMORY[0x277CCAE20], v52, v53, v54);
    v58 = objc_msgSend_initWithDoubleValue_unit_(v51, v56, v55, v57, v50);
  }

  else
  {
    v71 = objc_alloc(MEMORY[0x277CCAB10]);
    v55 = objc_msgSend_feet(MEMORY[0x277CCAE20], v72, v73, v74);
    v58 = objc_msgSend_initWithDoubleValue_unit_(v71, v75, v55, v76, v49);
  }

  v70 = v58;

LABEL_18:
  v79 = objc_msgSend_stringFromMeasurement_(v28, v77, v70, v78);

  return v79;
}

id formattedDistanceForWaypointComplication(double a1)
{
  v2 = sub_23BD31CD0();
  v3 = sub_23BD31D14();
  v4 = _formattedDistanceForWaypoint(v2, v3, 1, a1);

  v8 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v5, v6, v7);
  v12 = objc_msgSend_countryCode(v8, v9, v10, v11);

  if (objc_msgSend_isEqualToString_(v12, v13, @"US", v14))
  {
    v17 = objc_msgSend_componentsSeparatedByString_(v4, v15, @" ", v16);
    if (objc_msgSend_count(v17, v18, v19, v20) == 2)
    {
      v23 = objc_msgSend_componentsJoinedByString_(v17, v21, &stru_284E80A60, v22);

      v4 = v23;
    }
  }

  return v4;
}

id sub_23BD31CD0()
{
  if (qword_27E1C4CE8 != -1)
  {
    sub_23BD65AB8();
  }

  v1 = qword_27E1C4CE0;

  return v1;
}

id sub_23BD31D14()
{
  if (qword_27E1C4CF8 != -1)
  {
    sub_23BD65ACC();
  }

  v1 = qword_27E1C4CF0;

  return v1;
}

id formattedDistanceForWaypoint(int a1, double a2)
{
  if (a1)
  {
    if (qword_27E1C4D08 != -1)
    {
      sub_23BD65AE0();
    }

    v3 = qword_27E1C4D18;
    v4 = qword_27E1C4D00;
    if (v3 != -1)
    {
      sub_23BD65AF4();
    }

    v5 = _formattedDistanceForWaypoint(v4, qword_27E1C4D10, 0, a2);
  }

  else
  {
    v4 = sub_23BD31CD0();
    v6 = sub_23BD31D14();
    v5 = _formattedDistanceForWaypoint(v4, v6, 0, a2);
  }

  return v5;
}

id convertWaypointArrayToDict(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v5 = objc_msgSend_valueForKey_(v2, v3, @"uuid", v4);
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_(v1, v6, v2, v5);

  return v7;
}

uint64_t sub_23BD31EBC()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v4 = objc_msgSend_bundleForClass_(v0, v2, v1, v3);
  v5 = qword_27E1C4CD0;
  qword_27E1C4CD0 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

void sub_23BD31F18()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4CE0;
  qword_27E1C4CE0 = v0;

  objc_msgSend_setUnitOptions_(qword_27E1C4CE0, v2, 1, v3);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v4, v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4CE0, v8, v7, v9);

  objc_msgSend_setUnitStyle_(qword_27E1C4CE0, v10, 2, v11);
  v17 = objc_msgSend_numberFormatter(qword_27E1C4CE0, v12, v13, v14);
  objc_msgSend_setMaximumFractionDigits_(v17, v15, 0, v16);
}

void sub_23BD31FC0()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4CF0;
  qword_27E1C4CF0 = v0;

  objc_msgSend_setUnitOptions_(qword_27E1C4CF0, v2, 1, v3);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v4, v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4CF0, v8, v7, v9);

  objc_msgSend_setUnitStyle_(qword_27E1C4CF0, v10, 2, v11);
  v17 = objc_msgSend_numberFormatter(qword_27E1C4CF0, v12, v13, v14);
  objc_msgSend_setMaximumFractionDigits_(v17, v15, 1, v16);
}

void sub_23BD32068()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4D00;
  qword_27E1C4D00 = v0;

  objc_msgSend_setUnitOptions_(qword_27E1C4D00, v2, 1, v3);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v4, v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4D00, v8, v7, v9);

  objc_msgSend_setUnitStyle_(qword_27E1C4D00, v10, 3, v11);
  v17 = objc_msgSend_numberFormatter(qword_27E1C4D00, v12, v13, v14);
  objc_msgSend_setMaximumFractionDigits_(v17, v15, 0, v16);
}

void sub_23BD32110()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4D10;
  qword_27E1C4D10 = v0;

  objc_msgSend_setUnitOptions_(qword_27E1C4D10, v2, 1, v3);
  v7 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v4, v5, v6);
  objc_msgSend_setLocale_(qword_27E1C4D10, v8, v7, v9);

  objc_msgSend_setUnitStyle_(qword_27E1C4D10, v10, 3, v11);
  v17 = objc_msgSend_numberFormatter(qword_27E1C4D10, v12, v13, v14);
  objc_msgSend_setMaximumFractionDigits_(v17, v15, 1, v16);
}

void *sub_23BD321B8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    return objc_msgSend_addObject_(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_23BD32378(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4D6C);
  if (qword_27E1C4D70)
  {
    v6 = qword_27E1C4D70 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4D78)
  {
    v7 = byte_27E1C4D68;
  }

  else
  {
    qword_27E1C4D70 = v2;
    qword_27E1C4D78 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD32420(qword_27E1C4D78, v2);
    v7 = 1;
    byte_27E1C4D68 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4D6C);

  return v7;
}

void sub_23BD32420(uint64_t a1, const char *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v24 = &unk_284E8AD10;
  v25[0] = &unk_284E8A7A8;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v25, &v24, 1);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, v6, 8.0);
  *&xmmword_27E1C4D20 = v7;

  objc_msgSend_scaledValue_(v2, v8, v9, v10, 1.0);
  *(&xmmword_27E1C4D20 + 1) = v11;
  objc_msgSend_scaledValue_(v2, v12, v13, v14, 22.0);
  qword_27E1C4D30 = v15;
  *algn_27E1C4D38 = xmmword_23BD6C570;
  *(&xmmword_27E1C4D40 + 8) = xmmword_23BD6C580;
  objc_msgSend_scaledValue_(v2, v16, v17, v18, 2.25);
  qword_27E1C4D58 = v19;
  objc_msgSend_scaledValue_(v2, v20, v21, v22, 0.5);
  qword_27E1C4D60 = v23;
}

uint64_t sub_23BD326AC()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_27E1C4D80;
  qword_27E1C4D80 = v0;

  v3 = qword_27E1C4D80;

  return MEMORY[0x2821F9670](v3, sel_setDateFormat_, @"YYYYMMdd-HHmmss", v2);
}

uint64_t sub_23BD33320(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4D9C);
  if (qword_27E1C4DA0)
  {
    v6 = qword_27E1C4DA0 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4DA8)
  {
    v7 = byte_27E1C4D98;
  }

  else
  {
    qword_27E1C4DA0 = v2;
    qword_27E1C4DA8 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD333C8(qword_27E1C4DA8, v2);
    v7 = 1;
    byte_27E1C4D98 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4D9C);

  return v7;
}

void sub_23BD333C8(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 3);
  objc_msgSend_scaledValue_(v6, v2, v3, v4, 3.0);
  qword_27E1C4D90 = v5;
}

uint64_t sub_23BD334FC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4DFC);
  if (qword_27E1C4E00)
  {
    v6 = qword_27E1C4E00 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4E08)
  {
    v7 = byte_27E1C4DF8;
  }

  else
  {
    qword_27E1C4E00 = v2;
    qword_27E1C4E08 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD335A4(qword_27E1C4E08, v2);
    v7 = 1;
    byte_27E1C4DF8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4DFC);

  return v7;
}

void sub_23BD335A4(uint64_t a1, const char *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v27 = &unk_284E8AD28;
  v28[0] = &unk_284E8A868;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v28, &v27, 1);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, v6, 17.0);
  *&xmmword_27E1C4DB0 = v7;

  objc_msgSend_scaledValue_(v2, v8, v9, v10, 1.0);
  *(&xmmword_27E1C4DB0 + 1) = v11;
  v25[0] = &unk_284E8AD40;
  v25[1] = &unk_284E8AD28;
  v26[0] = &unk_284E8A878;
  v26[1] = &unk_284E8A888;
  v25[2] = &unk_284E8AD58;
  v25[3] = &unk_284E8AD70;
  v26[2] = &unk_284E8A898;
  v26[3] = &unk_284E8A8A8;
  v25[4] = &unk_284E8AD88;
  v25[5] = &unk_284E8ADA0;
  v26[4] = &unk_284E8A888;
  v26[5] = &unk_284E8A898;
  v25[6] = &unk_284E8ADB8;
  v26[6] = &unk_284E8A8A8;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v26, v25, 7);
  objc_msgSend_scaledValue_withOverrides_(v2, v14, v13, v15, 41.0);
  qword_27E1C4DC0 = v16;

  *algn_27E1C4DC8 = xmmword_23BD6C5A0;
  *(&xmmword_27E1C4DD0 + 8) = xmmword_23BD6C5B0;
  objc_msgSend_scaledValue_(v2, v17, v18, v19, 5.0);
  qword_27E1C4DE8 = v20;
  objc_msgSend_scaledValue_(v2, v21, v22, v23, 1.2);
  qword_27E1C4DF0 = v24;
}

void sub_23BD33F14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 448);
  v4 = a3;
  v10 = objc_msgSend_layer(v3, v5, v6, v7);
  objc_msgSend_addSublayer_(v10, v8, v4, v9);
}

void sub_23BD33F80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 448);
  v4 = a3;
  v10 = objc_msgSend_layer(v3, v5, v6, v7);
  objc_msgSend_addSublayer_(v10, v8, v4, v9);
}

void sub_23BD33FEC(uint64_t a1)
{
  v2 = *(a1 + 168);
}

void sub_23BD34530(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v14 = a3;
  v8 = objc_msgSend_unsignedIntegerValue(a2, v5, v6, v7);
  v11 = objc_msgSend_containsIndex_(v4, v9, v8, v10);
  objc_msgSend_setHidden_(v14, v12, v11, v13);
}

void sub_23BD34598(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v14 = a3;
  v8 = objc_msgSend_unsignedIntegerValue(a2, v5, v6, v7);
  v11 = objc_msgSend_containsIndex_(v4, v9, v8, v10);
  objc_msgSend_setHidden_(v14, v12, v11 ^ 1u, v13);
}

void sub_23BD34644()
{
  v30 = objc_alloc_init(MEMORY[0x277D74270]);
  v3 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v0, v1, v2, 11.0);
  v5 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v4, @"location.north.fill", v3);
  v6 = NanoCompassAppTintColor();
  v8 = objc_msgSend_imageWithTintColor_renderingMode_(v5, v7, v6, 1);
  objc_msgSend_setImage_(v30, v9, v8, v10);

  v13 = objc_msgSend_attributedStringWithAttachment_(MEMORY[0x277CCA898], v11, v30, v12);
  v14 = objc_alloc(MEMORY[0x277CCAB48]);
  v17 = objc_msgSend_initWithAttributedString_(v14, v15, v13, v16);
  v18 = qword_27E1C4E10;
  qword_27E1C4E10 = v17;

  v19 = NanoCompassLocalizedString(@"COMPASS_COMPLICATION_TITLE");
  v20 = objc_alloc(MEMORY[0x277CCA898]);
  v24 = objc_msgSend_localizedUppercaseString(v19, v21, v22, v23);
  v27 = objc_msgSend_initWithString_(v20, v25, v24, v26);

  objc_msgSend_appendAttributedString_(qword_27E1C4E10, v28, v27, v29);
}

double sub_23BD35048(uint64_t a1, unint64_t a2)
{
  v2 = a2 - *(*(a1 + 32) + 488);
  if (v2 < -180.0)
  {
    v2 = v2 + 360.0;
  }

  if (v2 > 180.0)
  {
    v2 = v2 + -360.0;
  }

  return *(a1 + 40) + v2 * *(a1 + 48);
}

void sub_23BD356C4(uint64_t a1, void *a2)
{
  v45 = a2;
  v6 = objc_msgSend_layer(v45, v3, v4, v5);
  v10 = objc_msgSend_actions(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"filters", v12);
  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);

  if (v13 != v17)
  {
    v21 = objc_msgSend_layer(v45, v18, v19, v20);
    v25 = objc_msgSend_actions(v21, v22, v23, v24);
    v29 = objc_msgSend_mutableCopy(v25, v26, v27, v28);

    v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v30, v31, v32);
    objc_msgSend_setObject_forKeyedSubscript_(v29, v34, v33, @"filters");

    v38 = objc_msgSend_layer(v45, v35, v36, v37);
    objc_msgSend_setActions_(v38, v39, v29, v40);
  }

  v41 = *(a1 + 32);
  v42 = objc_msgSend_layer(v45, v18, v19, v20);
  objc_msgSend_setFilters_(v42, v43, v41, v44);
}

void sub_23BD35898(uint64_t a1, void *a2)
{
  v29 = a2;
  v6 = objc_msgSend_actions(v29, v3, v4, v5);
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"filters", v8);
  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11, v12);

  if (v9 != v13)
  {
    v17 = objc_msgSend_actions(v29, v14, v15, v16);
    v21 = objc_msgSend_mutableCopy(v17, v18, v19, v20);

    v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v22, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v21, v26, v25, @"filters");

    objc_msgSend_setActions_(v29, v27, v21, v28);
  }

  objc_msgSend_setFilters_(v29, v14, *(a1 + 32), v16);
}

void sub_23BD35E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

id sub_23BD35E1C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__newLabelWithFont_color_text_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), a2);

  return v2;
}

void sub_23BD36064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

id sub_23BD36084(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__newLabelWithFont_color_text_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), a2);

  return v2;
}

void sub_23BD36388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

void sub_23BD366AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23BD33FEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD36850(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4EFC);
  if (qword_27E1C4F00)
  {
    v6 = qword_27E1C4F00 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4F08)
  {
    v7 = byte_27E1C4EF8;
  }

  else
  {
    qword_27E1C4F00 = v2;
    qword_27E1C4F08 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD368F8(qword_27E1C4F08, v2);
    v7 = 1;
    byte_27E1C4EF8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4EFC);

  return v7;
}

void sub_23BD368F8(uint64_t a1, void *a2)
{
  v74[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_msgSend_screenScale(v2, v3, v4, v5);
  v68 = v6;
  v7 = MEMORY[0x277CBBAF8];
  v11 = objc_msgSend_sizeClass(v2, v8, v9, v10);
  v13 = objc_msgSend_metricsWithDevice_identitySizeClass_(v7, v12, v2, v11);

  v73 = &unk_284E8AE90;
  v74[0] = &unk_284E8A8B8;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v74, &v73, 1);
  objc_msgSend_scaledValue_withOverrides_(v13, v16, v15, v17, 13.0);
  qword_27E1C4E20 = v18;

  qword_27E1C4E28 = *MEMORY[0x277D74420];
  v19 = qword_27E1C4E28;
  v20 = MEMORY[0x277CBB6C0];
  objc_storeStrong(qword_27E1C4E30, *MEMORY[0x277CBB6C0]);
  v67 = vdupq_lane_s64(v68, 0);
  *&qword_27E1C4E30[1] = vdivq_f64(xmmword_23BD6C5F0, v67);
  v21 = NanoCompassAppTintColor();
  v22 = qword_27E1C4E48;
  qword_27E1C4E48 = v21;

  v26 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v23, v24, v25);
  v27 = qword_27E1C4E50;
  qword_27E1C4E50 = v26;

  v28 = NanoCompassBearingTintColor();
  v29 = qword_27E1C4E58;
  qword_27E1C4E58 = v28;

  qword_27E1C4E60 = 0x4062C00000000000;
  *&qword_27E1C4E68 = 20.0 / *&v68;
  unk_27E1C4E70 = v19;
  objc_storeStrong(&qword_27E1C4E78, *v20);
  v71 = 0.0;
  v72 = 0.0;
  v69 = 1.0;
  v70 = 0.0;
  objc_msgSend_getRed_green_blue_alpha_(qword_27E1C4E48, v30, &v72, &v71, &v70, &v69);
  v69 = v69 * 0.8;
  v34 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v31, v32, v33, v69 * v72, v69 * v71, v69 * v70, 1.0);
  v35 = qword_27E1C4E80;
  qword_27E1C4E80 = v34;

  *&qword_27E1C4E88 = 52.0 / *&v68;
  objc_msgSend_scaledValue_(v13, v36, v37, v38, 0.75);
  qword_27E1C4E90 = v39;
  objc_msgSend_scaledValue_(v13, v40, v41, v42, 10.0);
  qword_27E1C4E98 = v43;
  objc_msgSend_scaledValue_(v13, v44, v45, v46, 15.0);
  qword_27E1C4EA0 = v47;
  objc_msgSend_scaledValue_(v13, v48, v49, v50, 17.5);
  qword_27E1C4EA8 = v51;
  v55 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v52, v53, v54);
  v56 = qword_27E1C4EB0;
  qword_27E1C4EB0 = v55;

  *&qword_27E1C4EB8 = 37.0 / *&v68;
  v60 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v57, v58, v59, 1.0, 0.160784314, 0.101960784, 1.0);
  v61 = qword_27E1C4EC0;
  qword_27E1C4EC0 = v60;

  v65 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v62, v63, v64);
  v66 = qword_27E1C4EC8;
  qword_27E1C4EC8 = v65;

  *&qword_27E1C4ED0 = 18.0 / *&v68;
  unk_27E1C4ED8 = *&qword_27E1C4EB8 + -3.0 / *&v68;
  xmmword_27E1C4EE0 = vdivq_f64(xmmword_23BD6C600, v67);
  *&qword_27E1C4EF0 = 4.0 / *&v68;
}

__n128 sub_23BD36C0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 136);
  v6 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v6;
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  v7 = *(a2 + 208);
  result = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = result;
  *(a1 + 208) = v7;
  return result;
}

BOOL sub_23BD36DF0(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 - a4;
  v7 = -v6;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  if (v7 > 0.0001)
  {
    return 1;
  }

  v8 = a2 - a5;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 > 0.0001)
  {
    return 1;
  }

  v9 = a3 - a6;
  v10 = -(a3 - a6);
  if (v9 < 0.0)
  {
    v9 = v10;
  }

  return v9 > 0.0001;
}

uint64_t sub_23BD371BC()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C4F10;
  qword_27E1C4F10 = v0;

  objc_msgSend_setHasReading_(qword_27E1C4F10, v2, 1, v3);
  v7 = qword_27E1C4F10;

  return objc_msgSend_setGravity_(v7, v4, v5, v6, 0.0, 0.0, 1.0);
}

uint64_t sub_23BD37B48(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C4FB4);
  if (qword_27E1C4FB8)
  {
    v6 = qword_27E1C4FB8 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C4FC0)
  {
    v7 = byte_27E1C4FB0;
  }

  else
  {
    qword_27E1C4FB8 = v2;
    qword_27E1C4FC0 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD37BF0(qword_27E1C4FC0, v2);
    v7 = 1;
    byte_27E1C4FB0 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C4FB4);

  return v7;
}

void sub_23BD37BF0(uint64_t a1, const char *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v24[0] = &unk_284E8AEA8;
  v24[1] = &unk_284E8AEC0;
  v25[0] = &unk_284E8AA18;
  v25[1] = &unk_284E8AA28;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v25, v24, 2);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, v6, 48.0);
  *&xmmword_27E1C4F68 = v7;

  objc_msgSend_scaledValue_(v2, v8, v9, v10, 2.0);
  *(&xmmword_27E1C4F68 + 1) = v11;
  objc_msgSend_scaledValue_(v2, v12, v13, v14, 120.0);
  qword_27E1C4F78 = v15;
  unk_27E1C4F80 = xmmword_23BD6C650;
  *(&xmmword_27E1C4F88 + 8) = xmmword_23BD6C660;
  objc_msgSend_scaledValue_(v2, v16, v17, v18, 14.0);
  qword_27E1C4FA0 = v19;
  objc_msgSend_scaledValue_(v2, v20, v21, v22, 2.0);
  qword_27E1C4FA8 = v23;
}

BOOL NanoCompassLevelComplicationConsideredLevel(void *a1, char a2)
{
  v3 = a1;
  v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5, v6);
  isEqual = objc_msgSend_isEqual_(v3, v8, v7, v9);

  v14 = 0;
  if (v3)
  {
    if ((isEqual & 1) == 0)
    {
      v14 = 0;
      if (objc_msgSend_hasReading(v3, v11, v12, v13))
      {
        if ((a2 & 1) == 0)
        {
          if (objc_msgSend_orientation(v3, v15, v16, v17) == 1)
          {
            objc_msgSend_horizontalOffset(v3, v18, v19, v20);
            v14 = sqrt(v21 * v21 + v22 * v22) < 0.100000001;
          }

          else
          {
            v14 = 0;
          }
        }
      }
    }
  }

  return v14;
}

void sub_23BD385D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_systemImageNamed_(MEMORY[0x277D755B8], a2, @"mountain.2.fill", a4);
  v8 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v5, v6, v7);
  v16 = objc_msgSend_imageWithTintColor_(v4, v9, v8, v10);

  v11 = objc_alloc(MEMORY[0x277CBBB10]);
  v14 = objc_msgSend_initWithFullColorImage_(v11, v12, v16, v13);
  v15 = qword_27E1C4FC8;
  qword_27E1C4FC8 = v14;
}

id sub_23BD3867C(void *a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v5, v10, v9, v11);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = a1;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v36, v40, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = objc_msgSend_waypoint(v22, v16, v17, v18, v36);
        v27 = objc_msgSend_muid(v23, v24, v25, v26);

        if (v27 && objc_msgSend_unsignedLongLongValue(v27, v28, v29, v30))
        {
          if ((objc_msgSend_containsObject_(v4, v28, v27, v30) & 1) == 0)
          {
            objc_msgSend_addObject_(v12, v31, v22, v32);
            objc_msgSend_addObject_(v4, v33, v27, v34);
          }
        }

        else
        {
          objc_msgSend_addObject_(v12, v28, v22, v30);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v36, v40, 16);
    }

    while (v19);
  }

  return v12;
}

id NanoCompassComplicationImageNamed(void *a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = qword_27E1C5010;
  v4 = a1;
  if (v2 != -1)
  {
    sub_23BD65BDC();
  }

  v5 = objc_msgSend_imageNamed_inBundle_compatibleWithTraitCollection_(v1, v3, v4, qword_27E1C5008, 0);

  return v5;
}

id NanoCompassComplicationHeadingDirectionBearingTextProvider(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CBBB88];
  v6 = NanoCompassFormattedHeading(v3, 0, 0);
  v9 = objc_msgSend_textProviderWithText_(v5, v7, v6, v8);

  v10 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v9, v11, v10, v12);

  v13 = MEMORY[0x277CBBB88];
  v14 = NanoCompassFormattedHeadingDirection(v3);
  v17 = objc_msgSend_textProviderWithText_(v13, v15, v14, v16);

  if (v4 && objc_msgSend_isAccurate(v3, v18, v19, v20))
  {
    v21 = MEMORY[0x277CBBB88];
    v22 = NanoCompassFormattedBearing(v4, 0);
    v25 = objc_msgSend_textProviderWithText_(v21, v23, v22, v24);

    v26 = NanoCompassBearingTintColor();
    objc_msgSend_setTintColor_(v25, v27, v26, v28);

    v29 = NanoCompassLocalizedString(@"HEADING_DIRECTION_BEARING_COMBINER");
    v32 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v30, v29, v31, v9, v17, v25);
  }

  else
  {
    v29 = NanoCompassLocalizedString(@"HEADING_DIRECTION_COMBINER");
    v32 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v33, v29, v34, v9, v17);
  }

  return v32;
}

id NanoCompassComplicationAltitudeSmallCapsTextProvider(void *a1, void *a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v9 = a2;
  if (v5 && objc_msgSend_hasReading(v5, v6, v7, v8))
  {
    v48 = 0;
    if (a3)
    {
      v13 = NanoCompassGetAltitudeAbbreviationWithTargetLength(v5, 5, &v48);
      v14 = NCLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (v48)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        *buf = 138412290;
        v50 = v15;
        _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "metric unit should be abbreviated: %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(v5, v10, v11, v12);
      v14 = objc_msgSend_numberWithDouble_(v21, v22, v23, v24);
      v28 = objc_msgSend_displayTilde(v5, v25, v26, v27);
      v13 = NanoCompassValueWithFormat(v14, v9, v28);
    }

    v31 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v29, v13, v30);
    v32 = MEMORY[0x277CBBB88];
    v36 = NanoCompassFormattedAltitudeUnitsInAbbr(v48, v33, v34, v35);
    v39 = objc_msgSend_textProviderWithText_(v32, v37, v36, v38);

    objc_msgSend_setUseLowercaseSmallCaps_(v39, v40, 1, v41);
    objc_msgSend_setIgnoreUppercaseStyle_(v39, v42, 1, v43);
    v44 = NanoCompassLocalizedString(@"ALTITUDE_COMBINING_FORMAT");
    v20 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v45, v44, v46, v31, v39);
  }

  else
  {
    v16 = MEMORY[0x277CBBB88];
    v17 = NanoCompassFormattedUncalibrated();
    v20 = objc_msgSend_textProviderWithText_(v16, v18, v17, v19);
  }

  return v20;
}

id NanoCompassComplicationAltitudeAccuracySmallCapsTextProvider(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3 && objc_msgSend_hasReading(v3, v4, v5, v6))
  {
    v11 = objc_msgSend_absoluteAltitudeAccuracy(v3, v8, v9, v10);
    v12 = NanoCompassValueWithFormat(v11, v7, 0);

    v15 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v13, v12, v14);
    v16 = MEMORY[0x277CBBB88];
    v20 = NanoCompassFormattedAltitudeUnits(v15, v17, v18, v19);
    v23 = objc_msgSend_textProviderWithText_(v16, v21, v20, v22);

    objc_msgSend_setUseLowercaseSmallCaps_(v23, v24, 1, v25);
    objc_msgSend_setIgnoreUppercaseStyle_(v23, v26, 1, v27);
    v28 = NanoCompassLocalizedString(@"ALTITUDE_INACCURATE_ACCURACY_FORMAT");
    v31 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v29, v28, v30, v15, v23);
  }

  else
  {
    v32 = MEMORY[0x277CBBB88];
    v12 = NanoCompassFormattedUncalibrated();
    v31 = objc_msgSend_textProviderWithText_(v32, v33, v12, v34);
  }

  return v31;
}

id NanoCompassWaypointCornerAndBezelComplicationTextProvider(void *a1, uint64_t a2, void *a3, int a4, char a5, int a6, int a7)
{
  v13 = a1;
  v14 = a3;
  v18 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_NO_DISTANCE");
  v61 = a2;
  if (v14 && v13 && (a5 & 1) == 0 && (a4 & 1) == 0)
  {
    v19 = objc_msgSend_rawLocation(v13, v15, v16, v17);
    v23 = objc_msgSend_location(v14, v20, v21, v22);
    objc_msgSend_distanceFromLocation_(v19, v24, v23, v25);
    v27 = v26;

    v28 = formattedDistanceForWaypointComplication(v27);

    v18 = v28;
  }

  v29 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_NO_DATA");
  v30 = MEMORY[0x277CBBB88];
  v34 = objc_msgSend_label(v14, v31, v32, v33);
  v37 = objc_msgSend_textProviderWithText_(v30, v35, v34, v36);

  if (v14)
  {
    if (a4)
    {
      objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v38, v29, v39);
    }

    else
    {
      objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v38, v18, v39);
    }
    v40 = ;
    v41 = NanoCompassWaypointDefaultColor();
    objc_msgSend_setTintColor_(v40, v42, v41, v43);

    if (v13 && v61 && !a4)
    {
      v47 = objc_msgSend_labelColor(v14, v44, v45, v46);
    }

    else
    {
      v47 = NanoCompassWaypointDefaultColor();
    }

    v51 = v47;
    objc_msgSend_setTintColor_(v37, v48, v47, v49);

    v52 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_TEXT_COMBINER");
    v55 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v53, v52, v54, v40, v37);
    goto LABEL_21;
  }

  if (a6)
  {
    v50 = @"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_NO_DATA";
LABEL_20:
    v40 = NanoCompassLocalizedString(v50);
    v55 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v56, v40, v57);
    v52 = NanoCompassWaypointDefaultColor();
    objc_msgSend_setTintColor_(v55, v58, v52, v59);
LABEL_21:

    goto LABEL_22;
  }

  if (a7)
  {
    v50 = @"WAYPOINT_COMPLICATION_SMART_WAYPOINT_NAME";
    goto LABEL_20;
  }

  v55 = 0;
LABEL_22:

  return v55;
}

id NanoCompassSampleWaypointCornerComplicationTextProvider(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = formattedDistanceForWaypointComplication(805.0);
  v8 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v6, v5, v7);
  v9 = NanoCompassWaypointDefaultColor();
  objc_msgSend_setTintColor_(v8, v10, v9, v11);

  v14 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v12, v4, v13);

  objc_msgSend_setTintColor_(v14, v15, v3, v16);
  v17 = NanoCompassLocalizedString(@"WAYPOINT_CORNER_OR_BEZEL_COMPLICATION_TEXT_COMBINER");
  v20 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v18, v17, v19, v8, v14);

  return v20;
}

uint64_t NanoCompassComplicationLayoutIsRTL()
{
  if (qword_27E1C4FE0 != -1)
  {
    sub_23BD65BF0();
  }

  return byte_27E1C4FD8;
}

void sub_23BD39F80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_keyWindow(MEMORY[0x277D75DA0], a2, a3, a4);
  v22 = v4;
  if (v4)
  {
    v8 = objc_msgSend_effectiveUserInterfaceLayoutDirection(v4, v5, v6, v7) == 1;
    v9 = v22;
    v10 = v8;
    byte_27E1C4FD8 = v10;
  }

  else
  {
    v11 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v5, v6, v7);
    v15 = v11;
    if (v11)
    {
      byte_27E1C4FD8 = objc_msgSend_userInterfaceLayoutDirection(v11, v12, v13, v14) != 0;
    }

    else
    {
      v16 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v12, v13, v14);
      v19 = objc_msgSend_objectForKey_(v16, v17, *MEMORY[0x277CBE6C8], v18);

      byte_27E1C4FD8 = objc_msgSend_characterDirectionForLanguage_(MEMORY[0x277CBEAF8], v20, v19, v21) == 2;
    }

    v9 = 0;
  }
}

id NanoCompassRedactionLabel()
{
  if (qword_27E1C4FF0 != -1)
  {
    sub_23BD65C04();
  }

  v1 = qword_27E1C4FE8;

  return v1;
}

void sub_23BD3A0C0()
{
  v0 = objc_alloc(MEMORY[0x277CBBB98]);
  v16 = objc_msgSend_initWithSystemName_(v0, v1, @"location.north.fill", v2);
  v6 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v3, v4, v5);
  objc_msgSend_setTintColor_(v16, v7, v6, v8);

  v9 = NanoCompassLocalizedString(@"COMPASS_COMPLICATION_TITLE");
  v12 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v10, v9, v11);
  v14 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBBA90], v13, v12, v16);
  v15 = qword_27E1C4FE8;
  qword_27E1C4FE8 = v14;
}

uint64_t AltitudeRedactionTextProvider(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD3A258;
  block[3] = &unk_278B93FB0;
  v8 = v1;
  v2 = qword_27E1C5000;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&qword_27E1C5000, block);
  }

  v4 = qword_27E1C4FF8;
  v5 = qword_27E1C4FF8;

  return v4;
}

void sub_23BD3A258(uint64_t a1)
{
  v13 = NanoCompassLocalizedString(@"ALTITUDE_ELEVATION_TEXT");
  v2 = MEMORY[0x277CBBB88];
  v6 = objc_msgSend_localizedUppercaseString(v13, v3, v4, v5);
  v9 = objc_msgSend_textProviderWithText_(v2, v7, v6, v8);
  v10 = qword_27E1C4FF8;
  qword_27E1C4FF8 = v9;

  objc_msgSend_setTintColor_(qword_27E1C4FF8, v11, *(a1 + 32), v12);
}

uint64_t sub_23BD3A2FC()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v4 = objc_msgSend_bundleForClass_(v0, v2, v1, v3);
  v5 = qword_27E1C5008;
  qword_27E1C5008 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

void sub_23BD3AC64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v7 = objc_msgSend_layer(a2, a2, a3, a4);
  objc_msgSend_setFilters_(v7, v5, v4, v6);
}

uint64_t sub_23BD3ADB4()
{
  v0 = [NCManager alloc];
  v3 = objc_msgSend_init_(v0, v1, 0, v2);
  v4 = qword_27E1C5018;
  qword_27E1C5018 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_23BD3AE3C()
{
  v0 = [NCManager alloc];
  v3 = objc_msgSend_init_(v0, v1, 1, v2);
  v4 = qword_27E1C5028;
  qword_27E1C5028 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void sub_23BD3AEB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  isRunningInStoreDemoMode = objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], a2, a3, a4);
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  if (isRunningInStoreDemoMode)
  {
    v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.Carousel", v7);
    v11 = objc_msgSend_BOOLForKey_(v8, v9, @"StandaloneIsSecured", v10);
    byte_27E1C5038 = v11;
    if (v11)
    {
      v12 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v13 = "Running store demo mode.";
        v14 = &v19;
LABEL_8:
        _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.compass", v7);
    v17 = objc_msgSend_BOOLForKey_(v8, v15, @"ShowIdealizedDataForPPT", v16);
    byte_27E1C5038 = v17;
    if (v17)
    {
      v12 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 0;
        v13 = "Idealized Data setting is enabled. Most complications will not be available.";
        v14 = &v18;
        goto LABEL_8;
      }

LABEL_9:
    }
  }
}

void sub_23BD3B3C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_altitude(*(a1 + 32), a2, a3, a4);
  (*(v4 + 16))(v4, v5);
}

void sub_23BD3BA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD3BAC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_containsObject_(*(*(a1 + 32) + 40), a2, a2, a4);
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void sub_23BD3BC1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23BD3BC44(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      objc_msgSend__queue_altimeterUpdate_(*(a1 + 32), v6, v9, v7);
    }

    if (v5)
    {
      objc_msgSend__queue_altimeterError_(*(a1 + 32), v6, v5, v7);
    }
  }
}

uint64_t sub_23BD3BE90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BD3BF04;
  v7[3] = &unk_278B94410;
  v7[4] = v4;
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, a2, v7, a4);
}

void sub_23BD3BF04(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = *(a1 + 32);
  v5 = a3;
  v9 = objc_msgSend_altitude(v4, v6, v7, v8);
  (a3)[2](v5, v9);
}

void sub_23BD3C25C()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.compass", v2);
  byte_27E1C5048 = objc_msgSend_BOOLForKey_(v5, v3, @"ShowsElevationAccuracy", v4);
}

void sub_23BD3CADC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_23BD3CAF8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_23BD3CC04(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C50A4);
  if (qword_27E1C50A8)
  {
    v6 = qword_27E1C50A8 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C50B0)
  {
    v7 = byte_27E1C50A0;
  }

  else
  {
    qword_27E1C50A8 = v2;
    qword_27E1C50B0 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD3CCAC(qword_27E1C50B0, v2);
    v7 = 1;
    byte_27E1C50A0 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C50A4);

  return v7;
}

void sub_23BD3CCAC(uint64_t a1, const char *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 2);
  v24 = &unk_284E8AED8;
  v25[0] = &unk_284E8AAE8;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v25, &v24, 1);
  objc_msgSend_scaledValue_withOverrides_(v2, v5, v4, v6, 17.0);
  *&xmmword_27E1C5058 = v7;

  objc_msgSend_scaledValue_(v2, v8, v9, v10, 1.0);
  *(&xmmword_27E1C5058 + 1) = v11;
  objc_msgSend_scaledValue_(v2, v12, v13, v14, 42.0);
  qword_27E1C5068 = v15;
  unk_27E1C5070 = xmmword_23BD6C5A0;
  *(&xmmword_27E1C5078 + 8) = xmmword_23BD6C5B0;
  objc_msgSend_scaledValue_(v2, v16, v17, v18, 5.0);
  qword_27E1C5090 = v19;
  objc_msgSend_scaledValue_(v2, v20, v21, v22, 1.2);
  qword_27E1C5098 = v23;
}

void sub_23BD3CEBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v10 = objc_msgSend_currentLocation(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_currentAltitude(*(a1 + 32), v6, v7, v8);
  (*(v5 + 16))(v5, v10, v9);
}

void sub_23BD3D108(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  sub_23BD3DC34(v5, v5);
  *(a3 + 16) = 0;
  if (a2 == 12)
  {
    v7 = &xmmword_27E1C5100;
  }

  else
  {
    if (a2 != 10)
    {
      v6 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65900(a2, v6);
      }
    }

    v7 = &xmmword_27E1C50D8;
  }

  *a3 = *v7;
  *(a3 + 16) = *(v7 + 2);
  *(a3 + 24) = *(v7 + 24);
}

void sub_23BD3DA58()
{
  v3 = NanoCompassLocalizedString(@"UNCALIBRATED");
  v0 = NanoCompassLocalizedString(@"DEGREE_FORMAT");
  v1 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v3, v0, @"%@", 0, v3);
  v2 = qword_27E1C50B8;
  qword_27E1C50B8 = v1;
}

uint64_t sub_23BD3DB48()
{
  v0 = NanoCompassLocalizedString(@"UNCALIBRATED_SHORT");
  v1 = qword_27E1C50C8;
  qword_27E1C50C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_23BD3DC34(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C512C);
  if (qword_27E1C5130)
  {
    v6 = qword_27E1C5130 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C5138)
  {
    v7 = byte_27E1C5128;
  }

  else
  {
    qword_27E1C5130 = v2;
    qword_27E1C5138 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD3DCDC(qword_27E1C5138, v2);
    v7 = 1;
    byte_27E1C5128 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C512C);

  return v7;
}

void sub_23BD3DCDC(uint64_t a1, void *a2)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v7 = objc_msgSend_sizeClass(v3, v4, v5, v6);
  v9 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v8, v3, v7);

  v49[0] = &unk_284E8AEF0;
  v49[1] = &unk_284E8AF08;
  v50[0] = &unk_284E8AAF8;
  v50[1] = &unk_284E8AAF8;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v50, v49, 2);
  objc_msgSend_scaledValue_withOverrides_(v9, v12, v11, v13, 9.0);
  *&xmmword_27E1C50D8 = v14;

  *(&xmmword_27E1C50D8 + 1) = *MEMORY[0x277D74420];
  v15 = *(&xmmword_27E1C50D8 + 1);
  v16 = MEMORY[0x277CBB6C0];
  objc_storeStrong(&qword_27E1C50E8, *MEMORY[0x277CBB6C0]);
  v47[0] = &unk_284E8AF20;
  v47[1] = &unk_284E8AF38;
  v48[0] = &unk_284E8AB08;
  v48[1] = &unk_284E8AB18;
  v47[2] = &unk_284E8AF50;
  v47[3] = &unk_284E8AEF0;
  v48[2] = &unk_284E8AB28;
  v48[3] = &unk_284E8AB28;
  v47[4] = &unk_284E8AF08;
  v48[4] = &unk_284E8AB28;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v48, v47, 5);
  objc_msgSend_scaledValue_withOverrides_(v9, v19, v18, v20, 19.5);
  qword_27E1C50F0 = v21;

  v45[0] = &unk_284E8AF20;
  v45[1] = &unk_284E8AF38;
  v46[0] = &unk_284E8AB38;
  v46[1] = &unk_284E8AB48;
  v45[2] = &unk_284E8AF50;
  v45[3] = &unk_284E8AEF0;
  v46[2] = &unk_284E8AB58;
  v46[3] = &unk_284E8AB58;
  v45[4] = &unk_284E8AF08;
  v46[4] = &unk_284E8AB58;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v46, v45, 5);
  objc_msgSend_scaledValue_withOverrides_(v9, v24, v23, v25, 28.5);
  qword_27E1C50F8 = v26;

  objc_msgSend_scaledValue_(v9, v27, v28, v29, 25.7);
  *&xmmword_27E1C5100 = v30;
  *(&xmmword_27E1C5100 + 1) = v15;
  objc_storeStrong(&qword_27E1C5110, *v16);
  v43[0] = &unk_284E8AF20;
  v43[1] = &unk_284E8AF38;
  v44[0] = &unk_284E8AB68;
  v44[1] = &unk_284E8AB78;
  v43[2] = &unk_284E8AF50;
  v43[3] = &unk_284E8AEF0;
  v44[2] = &unk_284E8AB88;
  v44[3] = &unk_284E8AB88;
  v43[4] = &unk_284E8AF08;
  v44[4] = &unk_284E8AB88;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v44, v43, 5);
  objc_msgSend_scaledValue_withOverrides_(v9, v33, v32, v34, 55.7);
  qword_27E1C5118 = v35;

  v41[0] = &unk_284E8AF20;
  v41[1] = &unk_284E8AF38;
  v42[0] = &unk_284E8AB98;
  v42[1] = &unk_284E8ABA8;
  v41[2] = &unk_284E8AF50;
  v41[3] = &unk_284E8AEF0;
  v42[2] = &unk_284E8ABB8;
  v42[3] = &unk_284E8ABB8;
  v41[4] = &unk_284E8AF08;
  v42[4] = &unk_284E8ABB8;
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v42, v41, 5);
  objc_msgSend_scaledValue_withOverrides_(v9, v38, v37, v39, 81.5);
  qword_27E1C5120 = v40;
}

BOOL ShouldSendDailyMetricsEvent(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v9 = objc_msgSend_initWithSuiteName_(v6, v7, v5, v8);

  v12 = objc_msgSend_objectForKey_(v9, v10, v4, v11);

  if (v12)
  {
    v16 = objc_msgSend_now(MEMORY[0x277CBEAA8], v13, v14, v15);
    v17 = !NanoCompassIsSameDay(v12, v16);
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void UpdateDailyMetricsEventTimestamp(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v14 = objc_msgSend_initWithSuiteName_(v6, v7, v5, v8);

  v12 = objc_msgSend_now(MEMORY[0x277CBEAA8], v9, v10, v11);
  objc_msgSend_setObject_forKey_(v14, v13, v12, v4);
}

void SendCustomWaypointCount(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"TotalCustomWaypoints";
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a1, a4);
  v8[0] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v8, &v7, 1);
  AnalyticsSendEvent();
}

void SendWaypointsAndGuidesCount(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v39[0] = @"TotalCompassWaypoints";
  v15 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a1, a4);
  v40[0] = v15;
  v39[1] = @"TotalGuideWaypoints";
  v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v16, a2, v17);
  v40[1] = v18;
  v39[2] = @"NumberEnabledGuideWaypoints";
  v21 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v19, a3, v20);
  v40[2] = v21;
  v39[3] = @"TotalNumberGuides";
  v24 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, a4, v23);
  v40[3] = v24;
  v39[4] = @"NumberDisabledGuides";
  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, a5, v26);
  v40[4] = v27;
  v39[5] = @"NumberCompassWaypointsMissingElevation";
  v30 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v28, a6, v29);
  v40[5] = v30;
  v39[6] = @"NumberGuideWaypointsMissingElevation";
  v33 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, a7, v32);
  v40[6] = v33;
  v39[7] = @"TotalGuideWaypointsInElevationTable";
  v36 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, a8, v35);
  v40[7] = v36;
  v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v40, v39, 8);
  AnalyticsSendEvent();
}

void SendActiveBacktrackUsage(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD66148(a1, v2);
  }

  v8 = @"HistoricalPathAvailable";
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v3, a1, v4);
  v9[0] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v9, &v8, 1);
  AnalyticsSendEvent();
}

void SendBacktrackStatistics(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v20 = @"com.apple.NanoCompass.BacktrackEnded.event";
    v21 = 2112;
    v22 = @"Duration";
    v23 = 2048;
    v24 = v1 / 60.0;
    v25 = 2112;
    v26 = @"RecordingCount";
    v27 = 2048;
    v28 = v3;
    v29 = 2112;
    v30 = @"RetracingCount";
    v31 = 2048;
    v32 = v2;
    _os_log_debug_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEBUG, "Logging %@. %@? %.2f min. %@? %ld. %@? %ld.", buf, 0x48u);
  }

  v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, v7, v1, @"Duration");
  v18[0] = v8;
  v17[1] = @"RecordingCount";
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, v3, v10);
  v18[1] = v11;
  v17[2] = @"RetracingCount";
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, v2, v13);
  v18[2] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v18, v17, 3);

  AnalyticsSendEvent();
}

void SendDialUsage(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"DialType";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v1, v3, v6, &v5, 1);

  AnalyticsSendEvent();
}

void SendTargetedWaypointTypeUsage(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"TargetedWaypointType";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v1, v3, v6, &v5, 1);

  AnalyticsSendEvent();
}

void SendGridSystemUsage(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"GridSystemType";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v1, v3, v6, &v5, 1);

  AnalyticsSendEvent();
}

void SendWaypointComplicationActivatedEvent(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"WaypointComplicationCount";
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a1, a4);
  v8[0] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v8, &v7, 1);
  AnalyticsSendEvent();
}

void SendWaypointEditUsage(void *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"WaypointLabelType";
  v10[1] = @"LocationIsManualEntry";
  v11[0] = a1;
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v7 = objc_msgSend_numberWithBool_(v3, v5, a2, v6);
  v11[1] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v11, v10, 2);

  AnalyticsSendEvent();
}

void SendElevationConfigurationEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = NCLogForCategory(0xAuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = @"not ";
    *buf = 134218498;
    v22 = a1;
    if (a3)
    {
      v18 = &stru_284E80A60;
    }

    v23 = 2048;
    v24 = a2;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEBUG, "Target elevation is %ld and relative elevation difference is %ld, current elevation is %@available", buf, 0x20u);
  }

  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, a1, v8, @"TargetElevationInMeter");
  v20[0] = v9;
  v19[1] = @"RelativeElevationDifferenceInMeter";
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, a2, v11);
  v20[1] = v12;
  v19[2] = @"CurrentElevationIsAvailable";
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v13, a3, v14);
  v20[2] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v20, v19, 3);
  AnalyticsSendEvent();
}

void SendElevationDialUsage(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"ElevationDialUsed";
  v4[0] = MEMORY[0x277CBEC38];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v4, &v3, 1);
  AnalyticsSendEvent();
}

void SendSystemWaypointAvailability(unint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v22 = @"com.apple.NanoCompass.SystemWaypointAvailability.event";
    v16 = @"YES";
    v23 = 2112;
    v24 = @"ParkedCar";
    if (a1)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v25 = 2112;
    if ((a1 & 0x100) != 0)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v26 = v17;
    if ((a1 & 0x10000) == 0)
    {
      v16 = @"NO";
    }

    v27 = 2112;
    v28 = @"CellularData";
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = @"CellularSOS";
    v33 = 2112;
    v34 = v16;
    _os_log_debug_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEBUG, "Logging %@. %@? %@. %@? %@. %@? %@.", buf, 0x48u);
  }

  v3 = (a1 >> 16) & 1;
  v4 = (a1 >> 8) & 1;

  v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, a1 & 1, v6, @"ParkedCar");
  v20[0] = v7;
  v19[1] = @"CellularData";
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v8, v4, v9);
  v20[1] = v10;
  v19[2] = @"CellularSOS";
  v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, v3, v12);
  v20[2] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v20, v19, 3);

  AnalyticsSendEvent();
}

void SendWaypointElevationLookupUsage(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = (100000 * a2 / a1) / 100000.0;
    v5 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v6, a1, v7);
      v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, a2, v16);
      *buf = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v17;
      v24 = 2048;
      v25 = v4;
      _os_log_debug_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEBUG, "total count %@, success count %@, value is %f", buf, 0x20u);
    }

    v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, v10, v4, @"SuccessRate");
    v19 = v11;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v19, &v18, 1);
    AnalyticsSendEvent();
  }
}

id sub_23BD40518(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a1;
  v11 = objc_msgSend_count(v7, v8, v9, v10);
  v129 = v6;
  v15 = objc_msgSend_count(v6, v12, v13, v14);
  v16 = v15;
  if (v15 + v11 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v15 + v11;
  }

  v18 = objc_alloc(MEMORY[0x277CBEB18]);
  v21 = objc_msgSend_initWithCapacity_(v18, v19, v17, v20);
  if (allowVerboseLog())
  {
    v25 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD661FC();
    }
  }

  v29 = v11 != 0;
  v30 = v16 != 0;
  if (objc_msgSend_count(v21, v22, v23, v24) >= v17 || v11 == 0 || v16 == 0)
  {
    v62 = 0;
    v61 = 0;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    do
    {
      v63 = objc_msgSend_objectAtIndexedSubscript_(v7, v26, v61, v28);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v129, v64, v62, v65);
      if (objc_msgSend_compare_(v63, v67, v66, v68) == -1)
      {
        objc_msgSend_addObject_(v21, v69, v63, v70);
        if (allowVerboseLog())
        {
          v75 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            v125 = objc_msgSend_waypoint(v63, v76, v77, v78);
            v127 = objc_msgSend_label(v125, v89, v90, v91);
            objc_msgSend_distance(v63, v92, v93, v94);
            *buf = 136446722;
            v131 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v132 = 2112;
            v133 = v127;
            v134 = 2048;
            v135 = v95;
            _os_log_debug_impl(&dword_23BD26000, v75, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint1: %@ with distance %f", buf, 0x20u);
          }
        }

        ++v61;
      }

      else
      {
        objc_msgSend_addObject_(v21, v69, v66, v70);
        if (allowVerboseLog())
        {
          v71 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            v124 = objc_msgSend_waypoint(v66, v72, v73, v74);
            v126 = objc_msgSend_label(v124, v82, v83, v84);
            objc_msgSend_distance(v66, v85, v86, v87);
            *buf = 136446722;
            v131 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v132 = 2112;
            v133 = v126;
            v134 = 2048;
            v135 = v88;
            _os_log_debug_impl(&dword_23BD26000, v71, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint2: %@ with distance %f", buf, 0x20u);
          }
        }

        ++v62;
      }

      v29 = v61 < v11;
      v30 = v62 < v16;
    }

    while (objc_msgSend_count(v21, v79, v80, v81) < v17 && v61 < v11 && v62 < v16);
  }

  if (objc_msgSend_count(v21, v26, v27, v28) < v17)
  {
    v36 = objc_msgSend_count(v21, v33, v34, v35);
    if (allowVerboseLog())
    {
      v128 = v36;
      v37 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD66288(v21, v37, v38, v39);
      }

      v36 = v128;
    }

    v40 = v17 - v36;
    if (v29)
    {
      if (v11 - v61 >= v40)
      {
        v41 = v17 - v36;
      }

      else
      {
        v41 = v11 - v61;
      }

      if (allowVerboseLog())
      {
        v44 = NCLogForCategory(9uLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_23BD6638C();
        }
      }

      for (; v41; --v41)
      {
        v45 = objc_msgSend_objectAtIndexedSubscript_(v7, v42, v61, v43);
        if (allowVerboseLog())
        {
          v48 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v52 = objc_msgSend_waypoint(v45, v49, v50, v51);
            v56 = objc_msgSend_label(v52, v53, v54, v55);
            objc_msgSend_distance(v45, v57, v58, v59);
            *buf = 136446722;
            v131 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v132 = 2112;
            v133 = v56;
            v134 = 2048;
            v135 = v60;
            _os_log_debug_impl(&dword_23BD26000, v48, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint1: %@ with distance %f", buf, 0x20u);
          }
        }

        objc_msgSend_addObject_(v21, v46, v45, v47);

        ++v61;
      }
    }

    else if (v30)
    {
      if (v16 - v62 >= v40)
      {
        v96 = v17 - v36;
      }

      else
      {
        v96 = v16 - v62;
      }

      if (allowVerboseLog())
      {
        v99 = NCLogForCategory(9uLL);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
        {
          sub_23BD6630C();
        }
      }

      for (; v96; --v96)
      {
        v100 = objc_msgSend_objectAtIndexedSubscript_(v129, v97, v62, v98);
        if (allowVerboseLog())
        {
          v103 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            v107 = objc_msgSend_waypoint(v100, v104, v105, v106);
            v111 = objc_msgSend_label(v107, v108, v109, v110);
            objc_msgSend_distance(v100, v112, v113, v114);
            *buf = 136446722;
            v131 = "[NSArray(NCWaypointWithDistanceMergeSorted) mergeWithSortedWaypoints:maximumCount:]";
            v132 = 2112;
            v133 = v111;
            v134 = 2048;
            v135 = v115;
            _os_log_debug_impl(&dword_23BD26000, v103, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - added waypoint2: %@ with distance %f", buf, 0x20u);
          }
        }

        objc_msgSend_addObject_(v21, v101, v100, v102);

        ++v62;
      }
    }
  }

  if (allowVerboseLog())
  {
    v119 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD6640C(v21, v119, v120, v121);
    }
  }

  v122 = objc_msgSend_copy(v21, v116, v117, v118);

  return v122;
}

void sub_23BD40BB4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t sub_23BD40C18()
{
  v0 = [NCWaypointManager alloc];
  v3 = objc_msgSend_initWithSupportsParkedCarWaypoint_(v0, v1, 1, v2);
  v4 = qword_27E1C5140;
  qword_27E1C5140 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_23BD40CA0()
{
  v0 = CLKIsNTKDaemon();
  v1 = [NCWaypointManager alloc];
  v4 = objc_msgSend_initWithSupportsParkedCarWaypoint_(v1, v2, v0 ^ 1u, v3);
  v5 = qword_27E1C5150;
  qword_27E1C5150 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t sub_23BD40D38()
{
  v0 = [NCWaypointManager alloc];
  v3 = objc_msgSend_initWithSupportsParkedCarWaypoint_(v0, v1, 0, v2);
  v4 = qword_27E1C5160;
  qword_27E1C5160 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void sub_23BD42178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD42190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BD421A8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v10 = objc_msgSend_uuid(v14, v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v10, v11, *(a1 + 32), v12);

  if (isEqual)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_23BD42638(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_fetchRequestForWaypointsOfTypes_withAltitude_(NCWaypointFetchRequests, a2, &unk_284E8B100, 1);
  v4 = *(a1 + 32);
  v7 = objc_msgSend__fetchItemsWithRequest_(v4, v5, v3, v6);
  v10 = objc_msgSend__convertToNCWaypointList_(v4, v8, v7, v9);

  return v10;
}

uint64_t sub_23BD426C8(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void sub_23BD42C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_23BD42D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "persistent container is fully loaded", &v15, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v8 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_msgSend_userInfo(v4, v9, v10, v11);
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "persistentContainer hit unresolved error %@, %@", &v15, 0x16u);
    }

    v13 = v7[4];
    v7[4] = 0;

    v14 = v7[5];
    v7[5] = 0;
  }
}

uint64_t sub_23BD42EF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", a2, *(*(a1 + 32) + 8), a4);
  byte_27E1C5170 = result;
  return result;
}

uint64_t sub_23BD42FB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", a2, *(*(a1 + 32) + 8), a4))
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.compasstool", v5, *(*(a1 + 32) + 8), v6);
  }

  byte_27E1C5180 = result;
  return result;
}

uint64_t sub_23BD4305C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], a2, @"com.apple.NanoCompass.watchkitapp", a4);
  v5 = qword_27E1C5190;
  qword_27E1C5190 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

void sub_23BD455EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD4561C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD456AC;
  block[3] = &unk_278B94000;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void sub_23BD456AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__cancelLocationAuthRequestAssertion(WeakRetained, v1, v2, v3);
}

uint64_t sub_23BD4629C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], a4, *(*(a1 + 32) + 464), *MEMORY[0x277D74420]);
  v5 = qword_27E1C51A8;
  qword_27E1C51A8 = v4;

  v9 = objc_msgSend_CLKFontWithLocalizedSmallCaps(qword_27E1C51A8, v6, v7, v8);
  v10 = qword_27E1C51A0;
  qword_27E1C51A0 = v9;

  return MEMORY[0x2821F96F8](v9, v10);
}

uint64_t sub_23BD463C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], a2, *MEMORY[0x277CBB6C0], a4, *(*(a1 + 32) + 480), *MEMORY[0x277D74410]);
  v5 = qword_27E1C51C0;
  qword_27E1C51C0 = v4;

  v9 = objc_msgSend_CLKFontWithLocalizedLowerCaseSmallCaps(qword_27E1C51C0, v6, v7, v8);
  v10 = qword_27E1C51B8;
  qword_27E1C51B8 = v9;

  return MEMORY[0x2821F96F8](v9, v10);
}

void sub_23BD46498()
{
  v8 = NanoCompassFormattedUncalibrated();
  v3 = NanoCompassFormattedAltitudeUnits(v8, v0, v1, v2);
  v4 = NanoCompassLocalizedString(@"ALTITUDE_COMBINING_FORMAT");
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%@%@", v5, v8, v3);
  v7 = qword_27E1C51D0;
  qword_27E1C51D0 = v6;
}

uint64_t sub_23BD465C0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C51FC);
  if (qword_27E1C5200)
  {
    v6 = qword_27E1C5200 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C5208)
  {
    v7 = byte_27E1C51F8;
  }

  else
  {
    qword_27E1C5200 = v2;
    qword_27E1C5208 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD46668(qword_27E1C5208, v2);
    v7 = 1;
    byte_27E1C51F8 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C51FC);

  return v7;
}

void sub_23BD46668(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v7 = objc_msgSend_sizeClass(v3, v4, v5, v6);
  v21 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v8, v3, v7);

  objc_msgSend_scaledValue_(v21, v9, v10, v11, 20.0);
  qword_27E1C51E0 = v12;
  objc_msgSend_scaledValue_(v21, v13, v14, v15, 12.0);
  qword_27E1C51E8 = v16;
  objc_msgSend_scaledValue_(v21, v17, v18, v19, 30.0);
  qword_27E1C51F0 = v20;
}

void sub_23BD46EB0()
{
  v0 = CLLocationCoordinate2DMake(37.3353672, -122.011737);
  v1 = objc_alloc(MEMORY[0x277CE41F8]);
  v2 = *MEMORY[0x277CE4250];
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], v3, v4, v5);
  v12 = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_(v1, v7, v6, v8, v0.latitude, v0.longitude, 48.7, v2, v2);

  v10 = objc_msgSend_locationWithLocation_error_(NCLocation, v9, v12, 0);
  v11 = qword_27E1C5210;
  qword_27E1C5210 = v10;
}

double sub_23BD47AEC(void *a1, uint64_t a2)
{
  sub_23BD489B8(a1, a1);
  if (a2 == 10)
  {
LABEL_7:
    v3 = &xmmword_27E1C5220;
    return *v3;
  }

  if (a2 != 12)
  {
    v4 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65900(a2, v4);
    }

    goto LABEL_7;
  }

  v3 = &xmmword_27E1C5240;
  return *v3;
}

uint64_t sub_23BD489B8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27E1C5264);
  if (qword_27E1C5268)
  {
    v6 = qword_27E1C5268 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v2, v3, v4, v5) == qword_27E1C5270)
  {
    v7 = byte_27E1C5260;
  }

  else
  {
    qword_27E1C5268 = v2;
    qword_27E1C5270 = objc_msgSend_version(v2, v3, v4, v5);
    sub_23BD48A60(qword_27E1C5270, v2);
    v7 = 1;
    byte_27E1C5260 = 1;
  }

  os_unfair_lock_unlock(&stru_27E1C5264);

  return v7;
}

void sub_23BD48A60(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v23 = objc_msgSend_metricsWithDevice_identitySizeClass_(v2, v4, v3, 3);
  objc_msgSend_scaledValue_(v23, v5, v6, v7, 14.5);
  *&xmmword_27E1C5220 = v8;
  objc_msgSend_scaledValue_(v23, v9, v10, v11, 6.0);
  *(&xmmword_27E1C5220 + 1) = v12;
  objc_msgSend_scaledValue_(v23, v13, v14, v15, 7.5);
  qword_27E1C5230 = v16;
  objc_msgSend_scaledValue_(v23, v17, v18, v19, 9.0);
  qword_27E1C5238 = v20;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v22 = v21;

  xmmword_27E1C5240 = vmulq_n_f64(xmmword_27E1C5220, v22);
  *&qword_27E1C5250 = vmulq_n_f64(*&qword_27E1C5230, v22);
}

__CFString *NCLocationUpdateInterestDescription(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278B94960[a1 + 1];
  }
}

void sub_23BD49560(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_msgSend_location(v9, v3, v4, v5);
    objc_msgSend_updateLocation_error_(WeakRetained, v8, v7, 0);
  }
}

void sub_23BD4A660(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = v5[57];
  isPreciseLocationOff = objc_msgSend_isPreciseLocationOff(v5, a2, a3, a4);
  v8 = [NCLocationServiceUpdate alloc];
  v10 = objc_msgSend_initWithAuthorizationStatus_coarsePrecision_(v8, v9, v6, isPreciseLocationOff);
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_23BD4A7A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40) + 1;
  if (v3 > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278B94960[v3];
  }

  return (*(v2 + 16))(v2, v4);
}

void sub_23BD4A8FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  isStationary = objc_msgSend_isStationary(WeakRetained, v5, v6, v7);
  (*(v3 + 16))(v3, v2, isStationary);
}

void sub_23BD4ABAC(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = *(*(a1 + 56) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD66E44();
    }
  }

  else
  {
    *(v4 + 24) = 1;
    v6 = mach_continuous_time();
    v7 = MachContinuousTicksToMS(v6 - *(a1 + 64));
    v8 = *(a1 + 32);
    v9 = v8;
    v10 = *(a1 + 72);
    if (v3)
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v18 = 134217984;
        v19 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session failed to start", "Delta: %.fms", &v18, 0xCu);
      }

      v11 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66D5C();
      }
    }

    else
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v18 = 134217984;
        v19 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session started", "Delta: %.fms", &v18, 0xCu);
      }

      v12 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD66DD0();
      }

      v16 = objc_msgSend_backgroundActivitySession(MEMORY[0x277CBFBA8], v13, v14, v15);
      v17 = *(a1 + 40);
      v11 = *(v17 + 96);
      *(v17 + 96) = v16;
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_23BD4B024(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = *(*(a1 + 56) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD66F68();
    }
  }

  else
  {
    *(v4 + 24) = 1;
    v6 = mach_continuous_time();
    v7 = MachContinuousTicksToMS(v6 - *(a1 + 64));
    v8 = *(a1 + 32);
    v9 = v8;
    v10 = *(a1 + 72);
    if (v3)
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v18 = 134217984;
        v19 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session (without lookback) failed to start", "Delta: %.fms", &v18, 0xCu);
      }

      v11 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66E80();
      }
    }

    else
    {
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v18 = 134217984;
        v19 = v7;
        _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR Session (without lookback) started", "Delta: %.fms", &v18, 0xCu);
      }

      v12 = NCLogForCategory(5uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD66EF4();
      }

      v16 = objc_msgSend_backgroundActivitySession(MEMORY[0x277CBFBA8], v13, v14, v15);
      v17 = *(a1 + 40);
      v11 = *(v17 + 96);
      *(v17 + 96) = v16;
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_23BD4B3E0(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = mach_continuous_time();
  v3 = MachContinuousTicksToMS(v2 - *(a1 + 56));
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v14 = 134217984;
    v15 = v3;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CL/CR Session ended", "Delta: %.fms", &v14, 0xCu);
  }

  v7 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD66FE0();
  }

  objc_msgSend_invalidate(*(*(a1 + 40) + 96), v8, v9, v10);
  v11 = *(a1 + 40);
  v12 = *(v11 + 96);
  *(v11 + 96) = 0;

  return (*(*(a1 + 48) + 16))();
}

void sub_23BD4B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD4B978(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BD4B990(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_location(a2, a2, a3, a4);
  if (v8)
  {
    objc_msgSend_addObject_(*(*(*(a1 + 56) + 8) + 40), v6, v8, v7);
    goto LABEL_10;
  }

  if (a2)
  {
    v9 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_INFO, "Received update without a location (split path).", buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v9 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67054();
    }

    goto LABEL_9;
  }

  v10 = mach_continuous_time();
  v11 = MachContinuousTicksToMS(v10 - *(a1 + 80));
  v12 = *(a1 + 32);
  v13 = v12;
  v14 = *(a1 + 88);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = *(a1 + 40);
    *buf = 134218242;
    v40 = v11;
    v41 = 2114;
    v42 = v15;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v13, OS_SIGNPOST_INTERVAL_END, v14, "CL/CR transcript fetch ended", "Delta: %.fms (task: %{public}@)", buf, 0x16u);
  }

  v16 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 134218242;
    v40 = v11;
    v41 = 2112;
    v42 = v17;
    _os_log_impl(&dword_23BD26000, v16, OS_LOG_TYPE_DEFAULT, "CL/CR transcript fetch ended. Delta: %.fms. Task: %@.", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = *(*(*(a1 + 56) + 8) + 40);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v34, v38, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v34 + 1) + 8 * i);
        v25 = NCLogForCategory(5uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v24;
          _os_log_debug_impl(&dword_23BD26000, v25, OS_LOG_TYPE_DEBUG, "Historical Location: %@", buf, 0xCu);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v26, &v34, v38, 16);
    }

    while (v21);
  }

  v27 = *(a1 + 48);
  v31 = objc_msgSend_copy(*(*(*(a1 + 56) + 8) + 40), v28, v29, v30);
  (*(v27 + 16))(v27, v31, 0);

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v32 = *(*(a1 + 72) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = 0;

LABEL_10:
}

void sub_23BD4C01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_23BD4C05C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_location(a2, a2, a3, a4);
  if (v8)
  {
    objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v6, v8, v7);
    goto LABEL_10;
  }

  if (a2)
  {
    v9 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_INFO, "Received update without a location (split path).", &v27, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v9 = NCLogForCategory(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67054();
    }

    goto LABEL_9;
  }

  v10 = mach_continuous_time();
  v11 = MachContinuousTicksToMS(v10 - *(a1 + 72));
  v12 = *(a1 + 32);
  v13 = v12;
  v14 = *(a1 + 80);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v27 = 134217984;
    v28 = v11;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v13, OS_SIGNPOST_INTERVAL_END, v14, "CL/CR transcript fetch (interval) ended", "Delta: %.fms", &v27, 0xCu);
  }

  v15 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), v16, v17, v18);
    v27 = 134218240;
    v28 = v11;
    v29 = 2048;
    v30 = v19;
    _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "CL/CR transcript fetch (interval) ended. Delta: %.fms. Count: %lu.", &v27, 0x16u);
  }

  v20 = *(a1 + 40);
  v24 = objc_msgSend_copy(*(*(*(a1 + 48) + 8) + 40), v21, v22, v23);
  (*(v20 + 16))(v20, v24, 0);

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v25 = *(*(a1 + 64) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;

LABEL_10:
}

void sub_23BD4C5B8(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = COERCE_DOUBLE(a3);
  v7 = mach_continuous_time();
  v8 = MachContinuousTicksToMS(v7 - *(a1 + 56));
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v25 = 134217984;
    v26 = v8;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CL/CR smoothed fetch ended", "Delta: %.fms", &v25, 0xCu);
  }

  if (v6 == 0.0)
  {
    v16 = objc_msgSend_count(v5, v12, v13, v14);
    v15 = NCLogForCategory(5uLL);
    v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        *&v21 = COERCE_DOUBLE(objc_msgSend_count(v5, v18, v19, v20));
        v22 = *(a1 + 40);
        v25 = 134218498;
        v26 = *&v21;
        v27 = 2114;
        v28 = v22;
        v29 = 2048;
        v30 = v8;
        _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "%lu smoothed locations fetched within %{public}@. Delta: %.fms.", &v25, 0x20u);
      }
    }

    else if (v17)
    {
      v23 = *(a1 + 40);
      v25 = 138543618;
      v26 = v23;
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "No smoothed locations fetched within %{public}@. Delta: %.fms.", &v25, 0x16u);
    }
  }

  else
  {
    v15 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v25 = 138543874;
      v26 = v24;
      v27 = 2048;
      v28 = v8;
      v29 = 2114;
      v30 = v6;
      _os_log_error_impl(&dword_23BD26000, v15, OS_LOG_TYPE_ERROR, "Error while fetching smoothed locations within %{public}@. Delta: %.fms. Error: %{public}@", &v25, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_23BD4CAB4(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = MachContinuousTicksToMS(v6 - *(a1 + 48));
  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v14 = 134217984;
    v15 = v7;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR is remote fetch ended", "Delta: %.fms", &v14, 0xCu);
  }

  v11 = NCLogForCategory(5uLL);
  v12 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67108();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD67184();
  }

  if (a2)
  {
    v13 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "We currently believe the user is in a remote area.", &v14, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23BD4CEC0(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = MachContinuousTicksToMS(v6 - *(a1 + 48));
  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v14 = 134217984;
    v15 = v7;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CL/CR will prompt fetch ended", "Delta: %.fms", &v14, 0xCu);
  }

  v11 = NCLogForCategory(5uLL);
  v12 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67270();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD672EC();
  }

  if (a2)
  {
    v13 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "We currently believe we have backtrack location data to show the user.", &v14, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23BD4E7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD4E7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateMotionType_isDeviceStationary_(WeakRetained, v5, a2, a3);
}

void sub_23BD4E914(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__groundAltitudeAtLocation_(*(*(a1 + 32) + 8), a2, *(a1 + 40), a4);
  v6 = NCLogForCategory(7uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      objc_msgSend_altitude(v5, v8, v9, v10);
      v12 = v11;
      v16 = objc_msgSend_hash(*(a1 + 40), v13, v14, v15);
      *buf = 134218240;
      v25 = v12;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "Fetched altitude of %f meters for waypoint (%lu).", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD4EB30;
    block[3] = &unk_278B94398;
    v17 = &v23;
    v23 = *(a1 + 48);
    v22 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v7)
    {
      v18 = objc_msgSend_hash(*(a1 + 40), v8, v9, v10);
      *buf = 134217984;
      v25 = v18;
      _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "Can't lookup ground altitude for waypoint (%lu).", buf, 0xCu);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_23BD4EB9C;
    v19[3] = &unk_278B947B8;
    v17 = &v20;
    v20 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v19);
  }
}

void sub_23BD4EB30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 40);
  objc_msgSend_altitude(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_numberWithDouble_(v4, v6, v7, v8);
  (*(v5 + 16))(v5, v9);
}

void sub_23BD50688()
{
  v12 = NanoCompassLocalizedString(@"WAYPOINT_COMPLICATION_SMART_WAYPOINT_NAME");
  v0 = MEMORY[0x277CBBB88];
  v4 = objc_msgSend_localizedUppercaseString(v12, v1, v2, v3);
  v7 = objc_msgSend_textProviderWithText_(v0, v5, v4, v6);
  v8 = qword_27E1C5288;
  qword_27E1C5288 = v7;

  v9 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(qword_27E1C5288, v10, v9, v11);
}

void sub_23BD50824(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_23BD50B08(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_label(a2, v5, v6, v7);
  v12 = objc_msgSend_uppercaseString(v8, v9, v10, v11);
  v16 = objc_msgSend_label(v4, v13, v14, v15);

  v20 = objc_msgSend_uppercaseString(v16, v17, v18, v19);
  v23 = objc_msgSend_compare_(v12, v21, v20, v22);

  return v23;
}

uint64_t sub_23BD51BEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_uuid(a2, a2, a3, a4);
  isEqual = objc_msgSend_isEqual_(v5, v6, *(a1 + 32), v7);

  return isEqual;
}

uint64_t sub_23BD53308(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_(MEMORY[0x277D74300], a2, *MEMORY[0x277D76918], *MEMORY[0x277CBB6C0], 8, *MEMORY[0x277D76840], 0);
  v3 = qword_27E1C5298;
  qword_27E1C5298 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_23BD533B8(uint64_t a1, const char *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend__preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_(MEMORY[0x277D74300], a2, *MEMORY[0x277D76918], *MEMORY[0x277CBB6C0], 8, *MEMORY[0x277D76840], 0);
  v24 = *MEMORY[0x277D74338];
  v3 = *MEMORY[0x277D74388];
  v21[0] = *MEMORY[0x277D74398];
  v21[1] = v3;
  v22[0] = &unk_284E8B010;
  v22[1] = &unk_284E8B028;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v22, v21, 2);
  v23 = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v23, 1);
  v25[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v25, &v24, 1);

  v13 = objc_msgSend_fontDescriptor(v2, v10, v11, v12);
  v16 = objc_msgSend_fontDescriptorByAddingAttributes_(v13, v14, v9, v15);

  v19 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x277D74300], v17, v16, v18, 0.0);
  v20 = qword_27E1C52A8;
  qword_27E1C52A8 = v19;
}

void sub_23BD53C04(uint64_t a1, void *a2)
{
  v45 = a2;
  v6 = objc_msgSend_layer(v45, v3, v4, v5);
  v10 = objc_msgSend_actions(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"filters", v12);
  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);

  if (v13 != v17)
  {
    v21 = objc_msgSend_layer(v45, v18, v19, v20);
    v25 = objc_msgSend_actions(v21, v22, v23, v24);
    v29 = objc_msgSend_mutableCopy(v25, v26, v27, v28);

    v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v30, v31, v32);
    objc_msgSend_setObject_forKeyedSubscript_(v29, v34, v33, @"filters");

    v38 = objc_msgSend_layer(v45, v35, v36, v37);
    objc_msgSend_setActions_(v38, v39, v29, v40);
  }

  v41 = *(a1 + 32);
  v42 = objc_msgSend_layer(v45, v18, v19, v20);
  objc_msgSend_setFilters_(v42, v43, v41, v44);
}

id LevelComplicationMutedTextColor()
{
  if (qword_27E1C52C0 != -1)
  {
    sub_23BD675D4();
  }

  v1 = qword_27E1C52B8;

  return v1;
}

uint64_t sub_23BD54998(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], a2, a3, a4, 0.384313725, 1.0);
  v5 = qword_27E1C52B8;
  qword_27E1C52B8 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t allowVerboseLog()
{
  if (qword_27E1C52C8 != -1)
  {
    sub_23BD675E8();
  }

  return byte_27E1C52D0;
}

void sub_23BD553B0()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.compass", v2);
  byte_27E1C52D0 = objc_msgSend_BOOLForKey_(v5, v3, @"VerboseLogging", v4);
}

id NCLogForCategory(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    sub_23BD67610();
  }

  if (qword_27E1C5330 != -1)
  {
    sub_23BD675FC();
  }

  v2 = qword_27E1C52D8[a1];

  return v2;
}

uint64_t sub_23BD55470()
{
  v0 = os_log_create("com.apple.nanocompass", "NCAltimeter");
  v1 = qword_27E1C52D8[0];
  qword_27E1C52D8[0] = v0;

  v2 = os_log_create("com.apple.nanocompass", "NCCompass");
  v3 = qword_27E1C52E0;
  qword_27E1C52E0 = v2;

  v4 = os_log_create("com.apple.nanocompass", "NCComplication");
  v5 = qword_27E1C52E8;
  qword_27E1C52E8 = v4;

  v6 = os_log_create("com.apple.nanocompass", "location");
  v7 = qword_27E1C52F0;
  qword_27E1C52F0 = v6;

  v8 = os_log_create("com.apple.nanocompass", "motion");
  v9 = qword_27E1C52F8;
  qword_27E1C52F8 = v8;

  v10 = os_log_create("com.apple.nanocompass", "backtrack");
  v11 = qword_27E1C5300;
  qword_27E1C5300 = v10;

  v12 = os_log_create("com.apple.nanocompass", "NCGridSystem");
  v13 = qword_27E1C5308;
  qword_27E1C5308 = v12;

  v14 = os_log_create("com.apple.nanocompass", "NCWaypoint");
  v15 = qword_27E1C5310;
  qword_27E1C5310 = v14;

  v16 = os_log_create("com.apple.nanocompass", "cellular");
  v17 = qword_27E1C5318;
  qword_27E1C5318 = v16;

  v18 = os_log_create("com.apple.nanocompass", "guides");
  v19 = qword_27E1C5320;
  qword_27E1C5320 = v18;

  v20 = os_log_create("com.apple.nanocompass", "elevationAlert");
  v21 = qword_27E1C5328;
  qword_27E1C5328 = v20;

  return MEMORY[0x2821F96F8](v20, v21);
}

double MachContinuousTicksToMS(uint64_t a1)
{
  if (qword_27E1C5340 != -1)
  {
    sub_23BD676CC();
  }

  return (dword_27E1C5338 * a1 / *algn_27E1C533C) * 0.000001;
}

uint64_t sub_23BD5601C()
{
  v0 = objc_opt_new();
  v1 = qword_27E1C5348;
  qword_27E1C5348 = v0;

  objc_msgSend_setHasReading_(qword_27E1C5348, v2, 1, v3);
  objc_msgSend_setHeading_(qword_27E1C5348, v4, v5, v6, 315.0);
  v10 = qword_27E1C5348;

  return objc_msgSend_setAccuracy_(v10, v7, v8, v9, 10.0);
}

void sub_23BD56844(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_23BD56870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD56948;
    block[3] = &unk_278B949D8;
    block[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23BD56958(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD56A30;
    block[3] = &unk_278B949D8;
    block[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23BD570DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_23BD57140(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, a4, 0.13333334, 0.513725519, 0.937254906, 1.0);
  v5 = qword_27E1C5358;
  qword_27E1C5358 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t sub_23BD571E0()
{
  v0 = NanoCompassLocalizedString(@"PARKED_CAR_WAYPOINT_NAME");
  v1 = qword_27E1C5368;
  qword_27E1C5368 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_23BD5726C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, a4, 1.0, 0.329411775, 0.0, 1.0);
  v5 = qword_27E1C5378;
  qword_27E1C5378 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t sub_23BD57304(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, a4, 1.0, 0.294117659, 0.309803933, 1.0);
  v5 = qword_27E1C5388;
  qword_27E1C5388 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

void sub_23BD573A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_idealizedLocation(NCLocation, a2, a3, a4);
  v26 = objc_msgSend_rawLocation(v4, v5, v6, v7);

  v8 = NanoCompassLocalizedString(@"IDEALIZED_WAYPOINT_NAME");
  v9 = [NCWaypoint alloc];
  v13 = objc_msgSend_idealizedWaypointSymbolColor(NCWaypoint, v10, v11, v12);
  v14 = MEMORY[0x277CCABB0];
  objc_msgSend_altitude(v26, v15, v16, v17);
  v21 = objc_msgSend_numberWithDouble_(v14, v18, v19, v20);
  v25 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v9, v22, v8, v13, @"tent.fill", 4, v26, v21, v25);
  v24 = qword_27E1C5398;
  qword_27E1C5398 = isEnabled;
}

void sub_23BD574EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_idealizedLocation(NCLocation, a2, a3, a4);
  v26 = objc_msgSend_rawLocation(v4, v5, v6, v7);

  v8 = NanoCompassLocalizedString(@"IDEALIZED_WAYPOINT_NAME");
  v9 = [NCWaypoint alloc];
  v13 = objc_msgSend_idealizedWaypointSymbolColor(NCWaypoint, v10, v11, v12);
  v14 = MEMORY[0x277CCABB0];
  objc_msgSend_altitude(v26, v15, v16, v17);
  v21 = objc_msgSend_numberWithDouble_(v14, v18, v19, v20);
  v25 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v9, v22, v8, v13, @"tent.fill", 4, v26, v21, v25);
  v24 = qword_27E1C53A8;
  qword_27E1C53A8 = isEnabled;
}

uint64_t sub_23BD59B24(uint64_t a1)
{
  v2 = MEMORY[0x23EEBBDF0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  (*(*(a1 + 40) + 16))();
  if (objc_msgSend_isActivityAvailable(MEMORY[0x277CC1CD0], v5, v6, v7))
  {
    v10 = *(a1 + 32);

    return MEMORY[0x2821F9670](v10, sel__startMotionActivityUpdate, v8, v9);
  }

  else
  {
    v11 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BD678B4(v11);
    }

    return objc_msgSend__updateMotionType_isDeviceStationary_(*(a1 + 32), v12, 1, 0);
  }
}

void sub_23BD59C54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_stopActivityUpdates(*(*(a1 + 32) + 8), a2, a3, a4);
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;
}

void sub_23BD59DBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23BD59DE4(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v9 && WeakRetained && objc_msgSend_confidence(v9, v3, v4, v5) == 2)
  {
    objc_msgSend__updateMotionActivity_(WeakRetained, v7, v9, v8);
  }
}

void sub_23BD5A088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = objc_msgSend_now(MEMORY[0x277CBEAA8], v7, v8, v9);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23BD5A17C;
  v15[3] = &unk_278B94A58;
  v11 = *(a1 + 32);
  v16 = v6;
  v17 = v11;
  v18 = v10;
  v19 = v5;
  v12 = v5;
  v13 = v10;
  v14 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void sub_23BD5A17C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 32);
  if (*(a1 + 32))
  {
    v6 = *(a1 + 40);
    v7 = objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, a2, 1, *(a1 + 48), 0);
    objc_msgSend__housekeepingWith_(v6, v8, v7, v9);

    v10 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6793C(v5, v10);
    }
  }

  else
  {
    v11 = objc_msgSend_numberOfSteps(*(a1 + 56), a2, a3, a4);
    objc_msgSend_doubleValue(v11, v12, v13, v14);
    v16 = v15;

    v17 = *(a1 + 40);
    v19 = objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, v18, v16 >= 80.0, *(a1 + 48), v16 < 80.0);
    objc_msgSend__housekeepingWith_(v17, v20, v19, v21);

    v10 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v22 = @"resumed";
      if (v16 < 80.0)
      {
        v22 = @"paused";
      }

      v23 = 134218242;
      v24 = v16;
      v25 = 2114;
      v26 = v22;
      _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_INFO, "Step count is %lu. Pedestrian activity is %{public}@.", &v23, 0x16u);
    }
  }
}

uint64_t sub_23BD5A778(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  v3 = *(result + 48);
  if (v1 != *(v2 + 48) || v3 != *(v2 + 40))
  {
    *(v2 + 48) = v1;
    *(*(result + 32) + 40) = v3;
    v4 = *(result + 32);
    result = *(v4 + 32);
    if (result)
    {
      return (*(result + 16))(result, *(v4 + 48), *(v4 + 40));
    }
  }

  return result;
}

void sub_23BD5BBF8(uint64_t a1)
{
  v13 = NanoCompassLocalizedString(@"COMPASS_COMPLICATION_TITLE");
  v2 = MEMORY[0x277CBBB88];
  v6 = objc_msgSend_localizedUppercaseString(v13, v3, v4, v5);
  v9 = objc_msgSend_textProviderWithText_(v2, v7, v6, v8);
  v10 = qword_27E1C53B8;
  qword_27E1C53B8 = v9;

  objc_msgSend_setTintColor_(qword_27E1C53B8, v11, *(a1 + 32), v12);
}

uint64_t sub_23BD5BE14()
{
  v0 = objc_alloc_init(NCGuidesManager);
  v1 = qword_27E1C53C8;
  qword_27E1C53C8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_23BD5C254(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!sub_23BD68730(v2))
  {
    objc_msgSend__handleFirstUnlock(v6, v3, v4, v5);
  }
}

void sub_23BD5C2A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_msgSend__refreshNonDistanceLimitedWaypoints(WeakRetained, v2, v3, v4);
    WeakRetained = v5;
  }
}

void sub_23BD5C2E4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[NCGuidesManager init]_block_invoke_2";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s: creating storeController", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_alloc(MEMORY[0x277D26688]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v11, 4);
    v8 = objc_msgSend_initWithNotifyForChanges_delegate_(v4, v7, v6, WeakRetained, v11, v12, v13);
    objc_msgSend_setStoreController_(WeakRetained, v9, v8, v10);
  }
}

void sub_23BD5C610()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.compass", v2);
  v6 = objc_msgSend_integerForKey_(v3, v4, @"MaxWaypointsAllowed", v5);
  v7 = 50;
  if (v6)
  {
    v7 = v6;
  }

  qword_27E1C53D8 = v7;
  v8 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[NCGuidesManager maxAllowedWaypoints]_block_invoke";
    v11 = 2048;
    v12 = qword_27E1C53D8;
    _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Maximum allowed waypoints is %lu", &v9, 0x16u);
  }
}

void sub_23BD5C7A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_maxAllowedWaypoints(*(a1 + 32), a2, a3, a4) >> 1;
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.compass", v7);
  v11 = objc_msgSend_integerForKey_(v8, v9, @"MaxPriorityCompassWaypoints", v10);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v4;
  }

  qword_27E1C53E8 = v12;
  v13 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446466;
    v15 = "[NCGuidesManager maxPriorityCompassWaypoints]_block_invoke";
    v16 = 2048;
    v17 = qword_27E1C53E8;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Maximum priority compass waypoints is %lu", &v14, 0x16u);
  }
}

uint64_t sub_23BD5CCF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_uuid(a2, a2, a3, a4);
  isEqual = objc_msgSend_isEqual_(v5, v6, *(a1 + 32), v7);

  return isEqual;
}

uint64_t sub_23BD5D640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BD5D658(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_23BD5D6B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3, a4);
  v89 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 32), v6, v5, v7);
  v10 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 40), v8, v5, v9);
  v13 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(*(*(a1 + 96) + 8) + 40), v11, v5, v12);
  v16 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 48), v14, v5, v15);
  v19 = objc_msgSend_dedupedWaypointsWithVisitedMUIDs_(*(a1 + 56), v17, v5, v18);
  v23 = objc_msgSend_count(*(a1 + 64), v20, v21, v22);
  v27 = objc_msgSend_maxPriorityCompassWaypoints(*(a1 + 72), v24, v25, v26);
  if (v23 >= v27)
  {
    v23 = v27;
  }

  if (v23)
  {
    v31 = objc_msgSend_subarrayWithRange_(*(a1 + 64), v28, 0, v23);
  }

  else
  {
    v31 = MEMORY[0x277CBEBF8];
  }

  if (objc_msgSend_count(*(a1 + 64), v28, v29, v30) <= v23)
  {
    v38 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v35 = *(a1 + 64);
    v36 = objc_msgSend_count(v35, v32, v33, v34);
    v38 = objc_msgSend_subarrayWithRange_(v35, v37, v23, v36 - v23);
  }

  v39 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v89, v32, v10, *(a1 + 104));
  v41 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v39, v40, v13, *(a1 + 104));

  v43 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v41, v42, v16, *(a1 + 104));

  v85 = v19;
  v45 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v43, v44, v19, *(a1 + 104));

  v84 = v38;
  v47 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v45, v46, v38, *(a1 + 104));

  v48 = *(a1 + 104);
  v49 = v31;
  if (v48 <= objc_msgSend_count(v31, v50, v51, v52))
  {
    v57 = 0;
  }

  else
  {
    v56 = *(a1 + 104);
    v57 = v56 - objc_msgSend_count(v31, v53, v54, v55);
  }

  v58 = objc_msgSend_count(v47, v53, v54, v55);
  if (v58 >= v57)
  {
    v60 = v57;
  }

  else
  {
    v60 = v58;
  }

  v87 = v13;
  v88 = v10;
  v86 = v16;
  if (v60)
  {
    v61 = objc_msgSend_subarrayWithRange_(v47, v59, 0, v60);
    objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v31, v62, v61, *(a1 + 104));
  }

  else
  {
    v61 = MEMORY[0x277CBEBF8];
    objc_msgSend_mergeWithSortedWaypoints_maximumCount_(v31, v59, MEMORY[0x277CBEBF8], *(a1 + 104));
  }
  v63 = ;
  v67 = objc_msgSend_count(*(a1 + 80), v64, v65, v66);
  v71 = objc_msgSend_count(v63, v68, v69, v70);
  v73 = objc_msgSend_mergeWithSortedWaypoints_maximumCount_(*(a1 + 80), v72, v63, v71 + v67);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5DAC4;
  block[3] = &unk_278B94B20;
  v83 = *(a1 + 64);
  v74 = v83.i64[0];
  v91 = vextq_s8(v83, v83, 8uLL);
  v75 = *(a1 + 32);
  v76 = *(a1 + 40);
  v98 = *(a1 + 96);
  v77 = *(a1 + 48);
  v78 = *(a1 + 56);
  *&v79 = v77;
  *(&v79 + 1) = v78;
  *&v80 = v75;
  *(&v80 + 1) = v76;
  v92 = v80;
  v93 = v79;
  v99 = *(a1 + 112);
  v94 = v73;
  v95 = v63;
  v96 = *(a1 + 80);
  v97 = *(a1 + 88);
  v81 = v63;
  v82 = v73;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_23BD5DAC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_count(*(a1 + 40), a2, a3, a4);
  v9 = objc_msgSend_count(*(a1 + 48), v6, v7, v8) + v5;
  v13 = v9 + objc_msgSend_count(*(a1 + 56), v10, v11, v12);
  v17 = objc_msgSend_count(*(*(*(a1 + 112) + 8) + 40), v14, v15, v16);
  v21 = v13 + objc_msgSend_count(*(a1 + 64), v18, v19, v20);
  v25 = v21 + objc_msgSend_count(*(a1 + 72), v22, v23, v24) + *(a1 + 120) + v17;
  *(*(a1 + 32) + 113) = v25 > objc_msgSend_maxAllowedWaypoints(*(a1 + 32), v26, v27, v28);
  v31 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v29, *(a1 + 80), v30);
  v32 = *(a1 + 32);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  v36 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v34, *(a1 + 88), v35);
  v37 = *(a1 + 32);
  v38 = *(v37 + 48);
  *(v37 + 48) = v36;

  v41 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v39, *(a1 + 96), v40);
  v42 = *(a1 + 32);
  v43 = *(v42 + 80);
  *(v42 + 80) = v41;

  v44 = *(*(a1 + 104) + 16);

  return v44();
}

void sub_23BD5E070(uint64_t a1, void *a2, void *a3)
{
  v159 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8, v9))
  {
    v126 = v6;
    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = *(*(a1 + 32) + 24);
    objc_sync_exit(v10);

    v132 = objc_msgSend__currentlyDisabledGuides(*(a1 + 32), v12, v13, v14);
    v133 = objc_msgSend_set(MEMORY[0x277CBEB58], v15, v16, v17);
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    obj = v11;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v147, v158, 16);
    if (v19)
    {
      v23 = v19;
      v24 = *v148;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v148 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v147 + 1) + 8 * i);
          v27 = *(*(a1 + 32) + 88);
          v28 = objc_msgSend_type(v26, v20, v21, v22);
          isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(v27, v29, v28, v30);
          v35 = objc_msgSend_uuid(v26, v32, v33, v34);
          v39 = objc_msgSend_UUIDString(v35, v36, v37, v38);
          v42 = objc_msgSend_containsObject_(v132, v40, v39, v41);

          if (isEnabledForGuideType && (v42 & 1) == 0)
          {
            v43 = objc_msgSend_uuid(v26, v20, v21, v22);
            objc_msgSend_addObject_(v133, v44, v43, v45);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v147, v158, 16);
      }

      while (v23);
    }

    v125 = a1;

    v46 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v50 = objc_msgSend_count(v133, v47, v48, v49);
      *buf = 136446466;
      v155 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]_block_invoke";
      v156 = 2048;
      v157 = v50;
      _os_log_impl(&dword_23BD26000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s: Found %lu enabled user guides.", buf, 0x16u);
    }

    v134 = objc_opt_new();
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v129 = v5;
    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v51, &v143, v153, 16);
    if (v52)
    {
      v56 = v52;
      v57 = *v144;
      v127 = *v144;
      do
      {
        v58 = 0;
        v128 = v56;
        do
        {
          if (*v144 != v57)
          {
            objc_enumerationMutation(v129);
          }

          v59 = *(*(&v143 + 1) + 8 * v58);
          v60 = objc_msgSend_identifier(v59, v53, v54, v55, v125);
          v63 = objc_msgSend_containsObject_(v133, v61, v60, v62);

          if (v63)
          {
            v131 = v58;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v64 = objc_msgSend_fetchPlaces(v59, v53, v54, v55);
            v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v139, v152, 16);
            if (v66)
            {
              v67 = v66;
              v68 = *v140;
              do
              {
                for (j = 0; j != v67; ++j)
                {
                  if (*v140 != v68)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v70 = *(*(&v139 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v74 = objc_msgSend_identifier(v59, v71, v72, v73);
                    v76 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v75, v70, v74);

                    objc_msgSend_addObject_(v134, v77, v76, v78);
                  }

                  else
                  {
                    v76 = NCLogForCategory(9uLL);
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v155 = v70;
                      _os_log_error_impl(&dword_23BD26000, v76, OS_LOG_TYPE_ERROR, "No initializer for item: %@", buf, 0xCu);
                    }
                  }
                }

                v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v79, &v139, v152, 16);
              }

              while (v67);
            }

            v57 = v127;
            v56 = v128;
            v58 = v131;
          }

          ++v58;
        }

        while (v58 != v56);
        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v53, &v143, v153, 16);
      }

      while (v56);
    }

    v80 = v125;
    v83 = objc_msgSend__getUpdatedDatabaseWaypoints_(*(v125 + 32), v81, v134, v82);
    v84 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v155 = v83;
      _os_log_impl(&dword_23BD26000, v84, OS_LOG_TYPE_INFO, "Injected altitude data into waypoints: %@", buf, 0xCu);
    }

    v85 = objc_opt_new();
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v86 = v83;
    v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, &v135, v151, 16);
    if (v88)
    {
      v92 = v88;
      v93 = *v136;
      do
      {
        for (k = 0; k != v92; ++k)
        {
          if (*v136 != v93)
          {
            objc_enumerationMutation(v86);
          }

          v95 = *(*(&v135 + 1) + 8 * k);
          v96 = objc_msgSend_location(v95, v89, v90, v91, v125);
          objc_msgSend_distanceFromLocation_(v96, v97, *(v80 + 40), v98);
          v100 = v99;

          if (v100 < *(v80 + 56))
          {
            v101 = [NCWaypointWithDistance alloc];
            v104 = objc_msgSend_initWithWaypoint_distance_(v101, v102, v95, v103, v100);
            objc_msgSend_addObject_(v85, v105, v104, v106);
          }
        }

        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v89, &v135, v151, 16);
      }

      while (v92);
    }

    objc_msgSend_sortUsingSelector_(v85, v107, sel_compare_, v108);
    v112 = objc_msgSend_count(v85, v109, v110, v111);
    v116 = *(v80 + 64);
    if (v112 > v116)
    {
      v117 = objc_msgSend_count(v85, v113, v114, v115);
      objc_msgSend_removeObjectsInRange_(v85, v118, v116, v117 - *(v80 + 64));
    }

    v119 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v123 = objc_msgSend_count(v85, v120, v121, v122);
      *buf = 136446466;
      v155 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]_block_invoke";
      v156 = 2048;
      v157 = v123;
      _os_log_impl(&dword_23BD26000, v119, OS_LOG_TYPE_DEFAULT, "%{public}s: Found %lu user guide waypoints within range.", buf, 0x16u);
    }

    (*(*(v80 + 48) + 16))();
    v6 = v126;
  }

  else
  {
    if (v6)
    {
      v124 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        sub_23BD679E0();
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_23BD5E7B4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D26618]);
  v6 = objc_msgSend_store(*(a1 + 32), v3, v4, v5);
  v9 = objc_msgSend_initWithStore_(v2, v7, v6, v8);

  v21 = 0;
  v12 = objc_msgSend_fetchSyncAndReturnError_(v9, v10, &v21, v11);
  v13 = v21;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BD5E8D4;
  v17[3] = &unk_278B94B98;
  v14 = *(a1 + 40);
  v19 = v13;
  v20 = v14;
  v18 = v12;
  v15 = v13;
  v16 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

void sub_23BD5FC28(uint64_t a1, void *a2)
{
  v119 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  objc_msgSend_allEnabledWaypoints(*(a1 + 32), v5, v6, v7);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v109 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v106, v118, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v107;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v107 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v106 + 1) + 8 * i);
        v17 = objc_msgSend_guideUUID(v16, v10, v11, v12);

        if (v17)
        {
          v18 = objc_msgSend_guideUUID(v16, v10, v11, v12);
          v22 = objc_msgSend_uuid(v16, v19, v20, v21);
          v26 = objc_msgSend_UUIDString(v22, v23, v24, v25);
          objc_msgSend_setObject_forKey_(v4, v27, v18, v26);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v106, v118, 16);
    }

    while (v13);
  }

  v97 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v96 = v3;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v28, &v102, v117, 16);
  if (v29)
  {
    v33 = v29;
    v34 = *v103;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v103 != v34)
        {
          objc_enumerationMutation(v96);
        }

        v36 = *(*(&v102 + 1) + 8 * j);
        v37 = objc_msgSend_identifier(v36, v30, v31, v32);
        v41 = objc_msgSend_UUIDString(v37, v38, v39, v40);
        v44 = objc_msgSend_valueForKey_(v4, v42, v41, v43);

        if (v44)
        {
          v46 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v45, v36, v44);
          objc_msgSend_addObject_(v97, v47, v46, v48);
        }
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v30, &v102, v117, 16);
    }

    while (v33);
  }

  v51 = objc_msgSend__getUpdatedDatabaseWaypoints_(*(a1 + 32), v49, v97, v50);
  v52 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v53 = v51;
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v98, v116, 16);
  if (v55)
  {
    v59 = v55;
    v60 = *v99;
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v99 != v60)
        {
          objc_enumerationMutation(v53);
        }

        v62 = *(*(&v98 + 1) + 8 * k);
        v63 = objc_msgSend_location(v62, v56, v57, v58);
        objc_msgSend_distanceFromLocation_(v63, v64, *(a1 + 40), v65);
        v67 = v66;

        v68 = [NCWaypointWithDistance alloc];
        v71 = objc_msgSend_initWithWaypoint_distance_(v68, v69, v62, v70, v67);
        objc_msgSend_addObject_(v52, v72, v71, v73);
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v98, v116, 16);
    }

    while (v59);
  }

  v74 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v78 = objc_msgSend_count(v52, v75, v76, v77);
    v79 = *(a1 + 56);
    *buf = 136446722;
    v111 = "[NCGuidesManager _fetchEnabledWaypointsRestrictingMapGuidesTo:ofLocation:maxCount:handler:]_block_invoke";
    v112 = 1024;
    v113 = v78;
    v114 = 2048;
    v115 = v79;
    _os_log_impl(&dword_23BD26000, v74, OS_LOG_TYPE_DEFAULT, "%{public}s: Number of guide places enabled and in range: %d. Max allowed is %lu", buf, 0x1Cu);
  }

  objc_msgSend_sortUsingSelector_(v52, v80, sel_compare_, v81);
  if (objc_msgSend_count(v52, v82, v83, v84) > *(a1 + 56))
  {
    v88 = objc_msgSend_count(v52, v85, v86, v87);
    v90 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v89, *(a1 + 56), v88 - *(a1 + 56));
    objc_msgSend_removeObjectsAtIndexes_(v52, v91, v90, v92);
  }

  v93 = *(a1 + 48);
  v94 = objc_msgSend_copy(v52, v85, v86, v87);
  (*(v93 + 16))(v93, v94);
}

void sub_23BD60270(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = objc_msgSend_initWithUUIDString_(v5, v6, @"00000000-0000-0000-0000-000000000001", v7);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v41, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v12, *(*(&v33 + 1) + 8 * v15), v8, v33);
        objc_msgSend_addObject_(v4, v17, v16, v18);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v33, v41, 16);
    }

    while (v13);
  }

  v19 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = MEMORY[0x277CCABB0];
    v24 = objc_msgSend_count(v4, v20, v21, v22);
    v27 = objc_msgSend_numberWithUnsignedInteger_(v23, v25, v24, v26);
    *buf = 136446466;
    v38 = "[NCGuidesManager _fetchAllWaypointsRestrictingMapGuidesTo:ofLocation:handler:]_block_invoke";
    v39 = 2112;
    v40 = v27;
    _os_log_impl(&dword_23BD26000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Number of guide places and in range: %@", buf, 0x16u);
  }

  v28 = *(a1 + 32);
  v32 = objc_msgSend_copy(v4, v29, v30, v31);
  (*(v28 + 16))(v28, v32);
}

void sub_23BD60670(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D26610]);
  v6 = objc_msgSend_store(*(a1 + 32), v3, v4, v5);
  v9 = objc_msgSend_initWithStore_(v2, v7, v6, v8);

  v10 = *(a1 + 40);
  v24 = 0;
  v12 = objc_msgSend_fetchSyncWithOptions_error_(v9, v11, v10, &v24);
  v16 = v24;
  if (v16)
  {
    v17 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67B68(v16, v17);
    }
  }

  else
  {
    if (objc_msgSend_count(v12, v13, v14, v15))
    {
      goto LABEL_6;
    }

    v17 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "No MSCollectionPlaceItem results.", buf, 2u);
    }
  }

LABEL_6:
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BD60814;
  v20[3] = &unk_278B94398;
  v18 = *(a1 + 48);
  v21 = v12;
  v22 = v18;
  v19 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v20);
}

void sub_23BD609D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 104);
  v8 = objc_msgSend_UUIDString(*(a1 + 40), a2, a3, a4);
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_containsObject_(v5, v6, v8, v7) ^ 1;
}

void sub_23BD60AE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_uuid(*(a1 + 32), a2, a3, a4);
  v21 = objc_msgSend_UUIDString(v5, v6, v7, v8);

  LODWORD(v5) = *(a1 + 48);
  v11 = objc_msgSend_containsObject_(*(*(a1 + 40) + 104), v9, v21, v10);
  if (v5 == 1)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    objc_msgSend_removeObject_(*(*(a1 + 40) + 104), v12, v21, v13);
  }

  else
  {
    if (v11)
    {
      goto LABEL_9;
    }

    objc_msgSend_addObject_(*(*(a1 + 40) + 104), v12, v21, v13);
  }

  objc_msgSend__saveDisabledGuidesToDefaults(*(a1 + 40), v14, v15, v16);
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    objc_msgSend__addEnabledWaypointsForGuide_(v19, v17, v20, v18);
  }

  else
  {
    objc_msgSend__removeDisabledWaypointsForGuide_(v19, v17, v20, v18);
  }

LABEL_9:
}

uint64_t sub_23BD610B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_count(*(*(a1 + 32) + 104), a2, a3, a4);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_23BD615B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend__refreshGuides(*(a1 + 32), a2, a3, a4);
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[NCGuidesManager _handleFirstUnlock]_block_invoke";
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s: posting notification for GuidesFirstUnlockNotification", &v9, 0xCu);
  }

  return objc_msgSend__postNotification_(*(a1 + 32), v6, @"GuidesFirstUnlockNotification", v7);
}

uint64_t sub_23BD61768(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_copy(*(*(a1 + 32) + 104), a2, a3, a4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8](v5, v7);
}

uint64_t sub_23BD61ED8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NCGuidesManager _loadGuides]_block_invoke";
    _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "%s: Loaded guides, calling _refreshNonDistanceLimitedWaypoints", &v7, 0xCu);
  }

  return objc_msgSend__refreshNonDistanceLimitedWaypoints(*(a1 + 32), v3, v4, v5);
}

void sub_23BD62368(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    objc_msgSend_addObjectsFromArray_(*(*(*(a1 + 40) + 8) + 40), v4, v6, v5);
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_23BD62404(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = a1;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v40, v46, 16);
  if (v8)
  {
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = MEMORY[0x277CCABB0];
        v13 = objc_msgSend_type(v11, v5, v6, v7);
        v16 = objc_msgSend_numberWithInteger_(v12, v14, v13, v15);
        v19 = objc_msgSend_objectForKeyedSubscript_(v2, v17, v16, v18);
        v20 = v19 == 0;

        if (v20)
        {
          v23 = objc_opt_new();
          objc_msgSend_setObject_forKeyedSubscript_(v2, v24, v23, v16);
        }

        v25 = objc_msgSend_objectForKeyedSubscript_(v2, v21, v16, v22);
        objc_msgSend_addObject_(v25, v26, v11, v27);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v40, v46, 16);
    }

    while (v8);
  }

  v28 = *(v39 + 32);
  objc_sync_enter(v28);
  v32 = objc_msgSend_copy(v2, v29, v30, v31);
  objc_msgSend_setLoadedProviderGuidesByType_(*(v39 + 32), v33, v32, v34);

  objc_sync_exit(v28);
  objc_msgSend__refreshNonDistanceLimitedWaypoints(*(v39 + 32), v35, v36, v37);
  v38 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[NCGuidesManager _refreshGuides]_block_invoke_2";
    _os_log_impl(&dword_23BD26000, v38, OS_LOG_TYPE_DEFAULT, "%s: Finished refreshing provider guides.", buf, 0xCu);
  }
}

void sub_23BD62DD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend__loadDisabledGuidesFromDefaults(*(a1 + 32), a2, a3, a4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62E60;
  block[3] = &unk_278B93FB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BD62F6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend__loadDisabledGuidesFromDefaults(*(a1 + 32), a2, a3, a4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62FF8;
  block[3] = &unk_278B93FB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id sub_23BD63488()
{
  if (qword_27E1C5400 != -1)
  {
    sub_23BD67C60();
  }

  v1 = qword_27E1C53F8;

  return v1;
}

uint64_t sub_23BD634CC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"com.apple.NanoCompass.BacktrackTranscriptSession", -1, 0);
  v3 = qword_27E1C53F8;
  qword_27E1C53F8 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t static NCWaypointGlyphs.convertedSymbol(from:)(uint64_t a1, uint64_t a2)
{
  if (qword_27E1C4A38 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1C5438;
  if (*(qword_27E1C5438 + 16))
  {
    v5 = sub_23BD63770(a1, a2);
    if (v6)
    {
      a1 = *(*(v4 + 56) + 16 * v5);
    }
  }

  return a1;
}

id NCWaypointGlyphs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NCWaypointGlyphs.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NCWaypointGlyphs();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NCWaypointGlyphs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NCWaypointGlyphs();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BD63770(uint64_t a1, uint64_t a2)
{
  sub_23BD67D74();
  sub_23BD67CF4();
  v4 = sub_23BD67DA4();

  return sub_23BD6380C(a1, a2, v4);
}

unint64_t sub_23BD6380C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23BD67D64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id static NCStyleAttributes.symbolImage(for:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v2 imageForStyle:v4 size:2 forScale:1 format:1 transparent:v7];
  return v8;
}

id NCStyleAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NCStyleAttributes.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NCStyleAttributes();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NCStyleAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NCStyleAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s24NanoCompassComplications17NCStyleAttributesC9fillColor3forSo7UIColorCSgSo015GEOFeatureStyleE0CSg_tFZ_0(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 mainScreen];
    [v5 scale];
    v7 = v6;

    v8 = [v2 newFillColorForStyleAttributes:v4 forScale:v7];
    v9 = v2;
    if (v8)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_23BD63CCC()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x800000023BD705D0;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.backtrackRetraceMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.backtrackRetraceMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A10 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.backtrackRetraceMode;
}

id sub_23BD63DB4()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x800000023BD705B0;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.locationRefreshUpdateMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.locationRefreshUpdateMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A18 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.locationRefreshUpdateMode;
}

id sub_23BD63E9C()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x800000023BD70590;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.targetedWaypointUpdateMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.targetedWaypointUpdateMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A20 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.targetedWaypointUpdateMode;
}

id sub_23BD63F84()
{
  v0 = type metadata accessor for LocationUpdate1HzMode();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier];
  *v2 = 0xD000000000000011;
  *(v2 + 1) = 0x800000023BD70570;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static LocationUpdate1HzMode.waypointCreationMode = result;
  return result;
}

uint64_t *LocationUpdate1HzMode.waypointCreationMode.unsafeMutableAddressor()
{
  if (qword_27E1C4A28 != -1)
  {
    swift_once();
  }

  return &static LocationUpdate1HzMode.waypointCreationMode;
}

id sub_23BD6406C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t LocationUpdate1HzMode.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier);

  return v1;
}

id sub_23BD6419C()
{

  v0 = sub_23BD67CD4();

  return v0;
}

uint64_t LocationUpdate1HzMode.isEqual(_:)(uint64_t a1)
{
  sub_23BD64320(a1, v6);
  if (!v7)
  {
    sub_23BD643D8(v6);
    goto LABEL_9;
  }

  type metadata accessor for LocationUpdate1HzMode();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier) == *&v5[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier] && *(v1 + OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier + 8) == *&v5[OBJC_IVAR____TtC24NanoCompassComplications21LocationUpdate1HzMode_identifier + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_23BD67D64();
  }

  return v3 & 1;
}

uint64_t sub_23BD64320(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD64390(&qword_27E1C4A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BD64390(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BD643D8(uint64_t a1)
{
  v2 = sub_23BD64390(&qword_27E1C4A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id LocationUpdate1HzMode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationUpdate1HzMode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BD64530()
{
  result = [objc_allocWithZone(type metadata accessor for UnitLengthPreferences()) init];
  static UnitLengthPreferences.shared = result;
  return result;
}

uint64_t *UnitLengthPreferences.shared.unsafeMutableAddressor()
{
  if (qword_27E1C4A30 != -1)
  {
    swift_once();
  }

  return &static UnitLengthPreferences.shared;
}

id static UnitLengthPreferences.shared.getter()
{
  if (qword_27E1C4A30 != -1)
  {
    swift_once();
  }

  v1 = static UnitLengthPreferences.shared;

  return v1;
}

uint64_t UnitLengthPreferences.overrideToMetric.getter()
{
  v1 = OBJC_IVAR____TtC24NanoCompassComplications21UnitLengthPreferences_overrideToMetric;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UnitLengthPreferences.overrideToMetric.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24NanoCompassComplications21UnitLengthPreferences_overrideToMetric;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Bool __swiftcall UnitLengthPreferences.usesMetric()()
{
  v1 = sub_23BD67C94();
  v2 = *(v1 - 8);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = sub_23BD67CC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC24NanoCompassComplications21UnitLengthPreferences_overrideToMetric;
  swift_beginAccess();
  if (*(v0 + v12))
  {
    v13 = 1;
  }

  else
  {
    sub_23BD67CB4();
    sub_23BD67CA4();
    sub_23BD67C84();
    v13 = MEMORY[0x23EEBB650](v7, v5);
    v14 = *(v2 + 8);
    v14(v5, v1);
    v14(v7, v1);
    (*(v9 + 8))(v11, v8);
  }

  return v13 & 1;
}

id UnitLengthPreferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnitLengthPreferences();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DEMTileCoordinates.__allocating_init(location:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23BD650C4(a1);
  v5 = v4;

  return v5;
}

uint64_t DEMTileCoordinates.init(location:)(void *a1)
{
  sub_23BD650C4(a1);
  v3 = v2;

  return v3;
}

unint64_t DEMTileCoordinates.description.getter()
{
  sub_23BD67D34();

  v0 = sub_23BD67D54();
  MEMORY[0x23EEBB6E0](v0);

  MEMORY[0x23EEBB6E0](8236, 0xE200000000000000);
  v1 = sub_23BD67D54();
  MEMORY[0x23EEBB6E0](v1);

  MEMORY[0x23EEBB6E0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t DEMTileCoordinates.hash.getter()
{
  sub_23BD67DB4();
  MEMORY[0x23EEBB760](*(v0 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x));
  MEMORY[0x23EEBB760](*(v0 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y));
  return sub_23BD67D94();
}

BOOL DEMTileCoordinates.isEqual(_:)(uint64_t a1)
{
  sub_23BD64320(a1, v6);
  if (v7)
  {
    type metadata accessor for DEMTileCoordinates();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x) == *&v5[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x])
      {
        v2 = *(v1 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
        v3 = *&v5[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_23BD643D8(v6);
  }

  return 0;
}

id DEMTileCoordinates.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x);
  v4 = *(v1 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
  v5 = type metadata accessor for DEMTileCoordinates();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x] = v3;
  *&v6[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = v5;
  *a1 = result;
  return result;
}

BOOL DEMTileCoordinates.isInLookupRange(range:wrt:)(_BOOL8 result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x);
  v4 = *(a2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x);
  v11 = __OFSUB__(v3, v4);
  v5 = v3 - v4;
  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *(v2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
  v7 = *(a2 + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
  v11 = __OFSUB__(v6, v7);
  v8 = v6 - v7;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    v11 = __OFSUB__(0, v5);
    v5 = -v5;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 0)
  {
    v11 = __OFSUB__(0, v8);
    v8 = -v8;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  if (v5 <= result)
  {
    v11 = __OFSUB__(v8, result);
    v9 = v8 == result;
    v10 = v8 - result < 0;
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
  }

  return (v10 ^ v11 | v9) != 0;
}

id DEMTileCoordinates.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DEMTileCoordinates();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BD650C4(void *a1)
{
  [a1 coordinate];
  v4 = v3;
  [a1 coordinate];
  v6 = fmod(v5, 360.0);
  if (v6 < 0.0)
  {
    v6 = v6 + 360.0;
  }

  v7 = v4 / 0.1;
  if (COERCE__INT64(fabs(v4 / 0.1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&v1[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x] = v7;
  v8 = v6 / 0.1;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 9.22337204e18)
  {
    *&v1[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y] = v8;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for DEMTileCoordinates();
    objc_msgSendSuper2(&v9, sel_init);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_23BD65230()
{
  v0 = sub_23BD65298(&unk_284E80620);
  sub_23BD64390(&qword_27E1C4A68);
  result = swift_arrayDestroy();
  qword_27E1C5430 = &unk_284E80420;
  qword_27E1C5438 = v0;
  return result;
}

unint64_t sub_23BD65298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BD64390(&qword_27E1C4A70);
    v3 = sub_23BD67D44();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23BD63770(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_23BD654BC(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 134217984;
  v6 = objc_msgSend_family(a1, a2, a3, a4);
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication template family: %ld", &v5, 0xCu);
}

void sub_23BD655D4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "%s failed to take assertion: %@", &v2, 0x16u);
}

void sub_23BD65660(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]_block_invoke_2";
  _os_log_error_impl(&dword_23BD26000, log, OS_LOG_TYPE_ERROR, "%s Location update is still running but we are out of runtime. Fire locationQueryDurationTimer now to stop location update.", &v1, 0xCu);
}

void sub_23BD656F8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136446466;
  v3 = "[NCGuidesEnabledState NSStringFromNCGuideType:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Encountered unexpected guide type. %ld", &v2, 0x16u);
}

void sub_23BD65900(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "const LayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v2, 0x16u);
}

void sub_23BD65B58(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NCLocationUpdateComplicationDelegate activateWaypointComplication]";
  _os_log_error_impl(&dword_23BD26000, log, OS_LOG_TYPE_ERROR, "%s user did not enter targeted view in the app, no activation date is available", &v1, 0xCu);
}

void sub_23BD65D34(NSObject *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_msgSend_authorizationStatus(MEMORY[0x277CC1C18], a2, a3, a4);
  sub_23BD3CB20();
  _os_log_error_impl(&dword_23BD26000, a1, OS_LOG_TYPE_ERROR, "Device is not authorized. Current Authorized status is %tu", v5, 0xCu);
}

void sub_23BD65E78()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_23BD3CB20();
  _os_log_error_impl(&dword_23BD26000, v0, OS_LOG_TYPE_ERROR, "absolute altimeter error: %@", v1, 0xCu);
}

void sub_23BD66148(char a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = @"YES";
  v3 = 138412802;
  v4 = @"com.apple.NanoCompass.ActiveBacktrackUsage.event";
  v6 = @"HistoricalPathAvailable";
  v5 = 2112;
  if ((a1 & 1) == 0)
  {
    v2 = @"NO";
  }

  v7 = 2112;
  v8 = v2;
  _os_log_debug_impl(&dword_23BD26000, a2, OS_LOG_TYPE_DEBUG, "Logging %@. %@? %@.", &v3, 0x20u);
}

void sub_23BD661FC()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136446722;
  sub_23BD40BA0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEBUG, "%{public}s: Merge starting. Num waypoints in first array: %lu. Num waypoints in second array: %lu", v3, 0x20u);
}

void sub_23BD66288(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_count(a1, a2, a3, a4);
  sub_23BD40BA0();
  sub_23BD40BB4(&dword_23BD26000, v4, v5, "%{public}s: Merge - After combining waypoint arrays, waypoint count is %lu.", v6, v7, v8, v9, 2u);
}

void sub_23BD6630C()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD40BA0();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - Adding %lu more waypoints from second array", v1, 0x16u);
}

void sub_23BD6638C()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD40BA0();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s: Merge - Adding %lu more waypoints from first array", v1, 0x16u);
}

void sub_23BD6640C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_count(a1, a2, a3, a4);
  sub_23BD40BA0();
  sub_23BD40BB4(&dword_23BD26000, v4, v5, "%{public}s: Merge Finished. Final waypoint count is %lu", v6, v7, v8, v9, 2u);
}

void sub_23BD664CC()
{
  sub_23BD45020();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD6664C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_uuid(a1, a2, a3, a4);
  sub_23BD45020();
  sub_23BD4503C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_23BD666E8()
{
  sub_23BD45020();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD667FC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3, a4);
  sub_23BD45020();
  sub_23BD4503C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_23BD6691C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3, a4);
  sub_23BD45020();
  sub_23BD4503C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_23BD66A3C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_userInfo(a1, a2, a3, a4);
  sub_23BD4503C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_23BD66BF4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NCLocationUpdateAppDelegate _takeLocationAuthRequestAssertion]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "%s failed to take assertion for requesting location authorization: %@", &v2, 0x16u);
}

void sub_23BD66D5C()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66DD0()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66E44()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD66E80()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66EF4()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD66F68()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD66FA4()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD66FE0()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD67054()
{
  sub_23BD3CB14();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67090()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD670CC()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67108()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD67184()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD671F8()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67234()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD67270()
{
  sub_23BD4ED3C();
  sub_23BD45030();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_23BD672EC()
{
  sub_23BD4ED3C();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD67360()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD6739C()
{
  sub_23BD3CB14();
  sub_23BD4ED30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD674E4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[WaypointsComplicationDataSource _getWaypointUUIDFromDescriptor:]";
  _os_log_error_impl(&dword_23BD26000, log, OS_LOG_TYPE_ERROR, "%s: We have a waypoint descriptor with no uuid", &v1, 0xCu);
}

void sub_23BD676F4(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_label(a1, a2, a3, a4);
  v9 = objc_msgSend_name(a2, v6, v7, v8);
  sub_23BD570C4();
  sub_23BD570DC(&dword_23BD26000, v10, v11, "Attempted to update waypoint %@ from guide %@, which is not supported.", v12, v13, v14, v15, v16);
}

void sub_23BD67798(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_label(a1, a2, a3, a4);
  v9 = objc_msgSend_name(a2, v6, v7, v8);
  sub_23BD570C4();
  sub_23BD570DC(&dword_23BD26000, v10, v11, "Attempted to delete waypoint %@ from guide %@, which is not supported.", v12, v13, v14, v15, v16);
}

void sub_23BD6793C(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Pedometer error %@. Assuming user is walking in this case.", &v3, 0xCu);
}

void sub_23BD679E0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD63474();
  _os_log_error_impl(&dword_23BD26000, v0, OS_LOG_TYPE_ERROR, "%{public}s: Error fetching waypoints for user guides: %{public}@", v1, 0x16u);
}

void sub_23BD67A60()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD63460();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s Finding compass waypoints within a radius of %f meters", v1, 0x16u);
}

void sub_23BD67AE4()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_23BD63460();
  _os_log_debug_impl(&dword_23BD26000, v0, OS_LOG_TYPE_DEBUG, "%{public}s Finding system waypoints within a radius of %f meters", v1, 0x16u);
}

void sub_23BD67B68(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23BD26000, a2, OS_LOG_TYPE_ERROR, "Error fetching MSCollectionPlaceItems: %{public}@", &v2, 0xCu);
}

void sub_23BD67BE0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  sub_23BD63474();
  _os_log_error_impl(&dword_23BD26000, v0, OS_LOG_TYPE_ERROR, "%s: Fetching map guide collections failed with %{public}@", v1, 0x16u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

uint64_t sub_23BD68704(double a1)
{
  if (!atomic_load(&unk_27E1C4A78))
  {
    sub_23BD6875C(a1);
  }

  return MEMORY[0x282186880]();
}

uint64_t sub_23BD68730(double a1)
{
  if (!atomic_load(&unk_27E1C4A78))
  {
    sub_23BD6875C(a1);
  }

  return MEMORY[0x2821868B8]();
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_23BD6875C(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 0);
  atomic_store(1u, &unk_27E1C4A78);
  return a1;
}