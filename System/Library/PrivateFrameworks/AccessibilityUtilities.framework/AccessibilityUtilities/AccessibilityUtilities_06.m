uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE14AssistiveTouchC9selectorsShy10ObjectiveC8SelectorVGvg_0()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_assistiveTouchScannerSpeechEnabled);
  sub_18B232DFC(&v1, sel_setAssistiveTouchScannerSpeechEnabled_);
  sub_18B232DFC(&v1, sel_assistiveTouchScannerSpeechShouldSpeakTraits);
  sub_18B232DFC(&v1, sel_setAssistiveTouchScannerSpeechShouldSpeakTraits_);
  sub_18B232DFC(&v1, sel_assistiveTouchScannerSpeechIsInterruptedByScanning);
  sub_18B232DFC(&v1, sel_setAssistiveTouchScannerSpeechIsInterruptedByScanning_);
  sub_18B232DFC(&v1, sel_assistiveTouchEyeTrackingUseZoomForKeyboardKeys);
  sub_18B232DFC(&v1, sel_setAssistiveTouchEyeTrackingUseZoomForKeyboardKeys_);
  sub_18B232DFC(&v1, sel_assistiveTouchScannerPointPickerModeEnabled);
  sub_18B232DFC(&v1, sel_setAssistiveTouchScannerPointPickerModeEnabled_);
  sub_18B232DFC(&v1, sel_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled);
  sub_18B232DFC(&v1, sel_setAssistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled_);
  sub_18B232DFC(&v1, sel_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout);
  sub_18B232DFC(&v1, sel_setAssistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout_);
  sub_18B232DFC(&v1, sel_speechVoiceIdentifierForLanguage_completionHandler_);
  sub_18B232DFC(&v1, sel_setWithVoiceId_forLanguage_completionHandler_);
  sub_18B232DFC(&v1, sel_setWithVoiceId_forLanguage_rate_volume_pitch_effects_voiceSettings_completionHandler_);
  return v2;
}

uint64_t sub_18B29E3E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 36);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_18B22F028;

  return sub_18B29B658(v2, v3, v7, v8, v10, v4, v5, v6, v9);
}

uint64_t sub_18B29E4D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22F028;

  return sub_18B29D260(a1, v4);
}

uint64_t sub_18B29E590(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22E8DC;

  return sub_18B29D260(a1, v4);
}

uint64_t sub_18B29E648()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18B22F028;

  return sub_18B29A688(v2, v3, v5, v4);
}

uint64_t sub_18B29E708()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B22F028;

  return sub_18B29A004(v2, v3, v4);
}

uint64_t sub_18B29E7BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_18B29E8DC()
{
  v0 = *MEMORY[0x1E69656D0];
  dword_1EA9B7290 = 1106771968;
  qword_1EA9B7298 = v0;
  byte_1EA9B72A0 = 0;
  return v0;
}

id sub_18B29E904()
{
  v0 = *MEMORY[0x1E69656C0];
  dword_1EA9B72A8 = 1107296256;
  qword_1EA9B72B0 = v0;
  byte_1EA9B72B8 = 0;
  return v0;
}

id sub_18B29E92C()
{
  v0 = *MEMORY[0x1E69656B8];
  dword_1EA9B72C0 = 1107558400;
  qword_1EA9B72C8 = v0;
  byte_1EA9B72D0 = 0;
  return v0;
}

id sub_18B29E954()
{
  v0 = *MEMORY[0x1E69656B0];
  dword_1EA9B72D8 = 1107820544;
  qword_1EA9B72E0 = v0;
  byte_1EA9B72E8 = 0;
  return v0;
}

id sub_18B29E97C()
{
  v0 = *MEMORY[0x1E69656C8];
  dword_1EA9B72F0 = 1108344832;
  qword_1EA9B72F8 = v0;
  byte_1EA9B7300 = 0;
  return v0;
}

id sub_18B29E9A4()
{
  v0 = *MEMORY[0x1E69656D8];
  dword_1EA9B7308 = 1108869120;
  qword_1EA9B7310 = v0;
  byte_1EA9B7318 = 0;
  return v0;
}

id sub_18B29E9CC()
{
  v0 = *MEMORY[0x1E69656E0];
  dword_1EA9B7320 = 1109393408;
  qword_1EA9B7328 = v0;
  byte_1EA9B7330 = 0;
  return v0;
}

id sub_18B29E9F4()
{
  v0 = *MEMORY[0x1E6965690];
  dword_1EA9B7338 = 1110441984;
  qword_1EA9B7340 = v0;
  byte_1EA9B7348 = 1;
  return v0;
}

id sub_18B29EA20()
{
  v0 = *MEMORY[0x1E6965688];
  dword_1EA9B7350 = 1111490560;
  qword_1EA9B7358 = v0;
  byte_1EA9B7360 = 1;
  return v0;
}

id sub_18B29EA4C()
{
  v0 = *MEMORY[0x1E6965698];
  dword_1EA9B7368 = 1112539136;
  qword_1EA9B7370 = v0;
  byte_1EA9B7378 = 1;
  return v0;
}

id sub_18B29EA78()
{
  v0 = *MEMORY[0x1E69656A0];
  dword_1EA9B7380 = 1113587712;
  qword_1EA9B7388 = v0;
  byte_1EA9B7390 = 1;
  return v0;
}

id sub_18B29EAA4()
{
  v0 = *MEMORY[0x1E69656A8];
  dword_1EA9B7398 = 1114636288;
  qword_1EA9B73A0 = v0;
  byte_1EA9B73A8 = 1;
  return v0;
}

id sub_18B29EAD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B73D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18B2FAF70;
  if (qword_1EA9B6270 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9B7298;
  v2 = byte_1EA9B72A0;
  *(v0 + 32) = dword_1EA9B7290;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_1EA9B6278;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_1EA9B72B0;
  v6 = byte_1EA9B72B8;
  *(v0 + 56) = dword_1EA9B72A8;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = qword_1EA9B6280;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1EA9B72C8;
  v10 = byte_1EA9B72D0;
  *(v0 + 80) = dword_1EA9B72C0;
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  v11 = qword_1EA9B6288;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA9B72E0;
  v14 = byte_1EA9B72E8;
  *(v0 + 104) = dword_1EA9B72D8;
  *(v0 + 112) = v13;
  *(v0 + 120) = v14;
  v15 = qword_1EA9B6290;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_1EA9B72F8;
  v18 = byte_1EA9B7300;
  *(v0 + 128) = dword_1EA9B72F0;
  *(v0 + 136) = v17;
  *(v0 + 144) = v18;
  v19 = qword_1EA9B6298;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_1EA9B7310;
  v22 = byte_1EA9B7318;
  *(v0 + 152) = dword_1EA9B7308;
  *(v0 + 160) = v21;
  *(v0 + 168) = v22;
  v23 = qword_1EA9B62A0;
  v24 = v21;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1EA9B7328;
  v26 = byte_1EA9B7330;
  *(v0 + 176) = dword_1EA9B7320;
  *(v0 + 184) = v25;
  *(v0 + 192) = v26;
  v27 = qword_1EA9B62A8;
  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = qword_1EA9B7340;
  v30 = byte_1EA9B7348;
  *(v0 + 200) = dword_1EA9B7338;
  *(v0 + 208) = v29;
  *(v0 + 216) = v30;
  v31 = qword_1EA9B62B0;
  v32 = v29;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_1EA9B7358;
  v34 = byte_1EA9B7360;
  *(v0 + 224) = dword_1EA9B7350;
  *(v0 + 232) = v33;
  *(v0 + 240) = v34;
  v35 = qword_1EA9B62B8;
  v36 = v33;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_1EA9B7370;
  v38 = byte_1EA9B7378;
  *(v0 + 248) = dword_1EA9B7368;
  *(v0 + 256) = v37;
  *(v0 + 264) = v38;
  v39 = qword_1EA9B62C0;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = qword_1EA9B7388;
  v42 = byte_1EA9B7390;
  *(v0 + 272) = dword_1EA9B7380;
  *(v0 + 280) = v41;
  *(v0 + 288) = v42;
  v43 = qword_1EA9B62C8;
  v44 = v41;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = qword_1EA9B73A0;
  v46 = byte_1EA9B73A8;
  *(v0 + 296) = dword_1EA9B7398;
  *(v0 + 304) = v45;
  *(v0 + 312) = v46;
  off_1EA9B73B0 = v0;

  return v45;
}

Swift::Float __swiftcall AXOSMigrationManager.convertTextSizeToMultiplier(_:)(CFStringRef_optional a1)
{
  v1 = 1.0;
  if (a1.value)
  {
    v2 = qword_1EA9B62D0;
    v3 = a1.value;
    if (v2 != -1)
    {
LABEL_14:
      swift_once();
    }

    v4 = off_1EA9B73B0;
    v5 = *(off_1EA9B73B0 + 2);
    if (v5)
    {
      v6 = 0;
      v7 = (off_1EA9B73B0 + 40);
      while (1)
      {
        if (v6 >= v4[2])
        {
          __break(1u);
          goto LABEL_14;
        }

        v8 = *(v7 - 2);
        v9 = *v7;
        type metadata accessor for CFString(0);
        sub_18B29F060();
        v10 = v9;
        if (sub_18B2C92A4())
        {
          break;
        }

        ++v6;
        v7 += 3;
        if (v5 == v6)
        {
          goto LABEL_8;
        }
      }

      if (qword_1EA9B6280 != -1)
      {
        swift_once();
      }

      v11 = *&dword_1EA9B72C0;

      return v8 / v11;
    }

    else
    {
LABEL_8:
    }
  }

  return v1;
}

unint64_t sub_18B29F060()
{
  result = qword_1EA9B73B8;
  if (!qword_1EA9B73B8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B73B8);
  }

  return result;
}

CFStringRef __swiftcall AXOSMigrationManager.convertTextSizeMultiplierToContentSize(_:)(Swift::Float a1)
{
  v1 = sub_18B2A2300(a1);

  return v1;
}

void sub_18B29F0E4(void *a1)
{
  v1 = a1;
  v2 = [a1 screenReader];
  if (v2)
  {
    v3 = v2;
    [v2 BOOLValue];
    _AXSVoiceOverTouchSetEnabled();
    v4 = sub_18B2C9B84();
    v5 = AXLogCommon();
    if (!v5)
    {
LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v3;
      *v8 = v3;
      v9 = v3;
      _os_log_impl(&dword_18B15E000, v6, v4, "Enabling screenreader %@", v7, 0xCu);
      sub_18B2A242C(v8);
      MEMORY[0x18CFF4B10](v8, -1, -1);
      MEMORY[0x18CFF4B10](v7, -1, -1);
      v3 = v6;
      v6 = v9;
    }
  }

  v10 = [v1 textSize];
  if (v10)
  {
    v11 = v10;
    v264 = v1;
    [v10 floatValue];
    v13 = sub_18B2A2300(v12);
    v14 = qword_1EA9B62D0;
    v15 = v13;
    if (v14 != -1)
    {
LABEL_180:
      swift_once();
    }

    v16 = off_1EA9B73B0;
    v17 = *(off_1EA9B73B0 + 2);
    if (v17)
    {
      v18 = 0;
      v19 = off_1EA9B73B0 + 48;
      while (1)
      {
        if (v18 >= v16[2])
        {
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        v20 = *(v19 - 1);
        v21 = *v19;
        type metadata accessor for CFString(0);
        sub_18B29F060();
        v22 = v20;
        if (sub_18B2C92A4())
        {
          break;
        }

        ++v18;
        v19 += 24;
        if (v17 == v18)
        {
          goto LABEL_18;
        }
      }

      _AXSSetLargeTextUsesExtendedRange();
      v23 = sub_18B2C9B84();
      v24 = AXLogCommon();
      if (!v24)
      {
        goto LABEL_208;
      }

      v25 = v24;
      if (os_log_type_enabled(v24, v23))
      {
        v26 = v22;
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v21;

        _os_log_impl(&dword_18B15E000, v25, v23, "Enabling large text %{BOOL}d", v27, 8u);
        MEMORY[0x18CFF4B10](v27, -1, -1);
      }
    }

LABEL_18:
    _AXSSetPreferredContentSizeCategoryName();
    v28 = sub_18B2C9B84();
    v29 = AXLogCommon();
    if (!v29)
    {
      goto LABEL_206;
    }

    v30 = v29;
    v1 = v264;
    if (os_log_type_enabled(v29, v28))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      v33 = [v264 textSize];
      *(v31 + 4) = v33;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v15;
      *v32 = v33;
      v32[1] = v15;
      v34 = v15;
      _os_log_impl(&dword_18B15E000, v30, v28, "Setting text size %@ to %@", v31, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B73D0);
      swift_arrayDestroy();
      MEMORY[0x18CFF4B10](v32, -1, -1);
      MEMORY[0x18CFF4B10](v31, -1, -1);
      v15 = v30;
      v30 = v11;
      v11 = v34;
    }
  }

  v35 = [v1 boldText];
  if (v35)
  {
    v36 = v35;
    [v35 BOOLValue];
    _AXSSetEnhanceTextLegibilityEnabled();
    v37 = sub_18B2C9B84();
    v38 = AXLogCommon();
    if (!v38)
    {
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    v39 = v38;
    if (os_log_type_enabled(v38, v37))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v36;
      *v41 = v36;
      v42 = v36;
      _os_log_impl(&dword_18B15E000, v39, v37, "Enabling bold text %@", v40, 0xCu);
      sub_18B2A242C(v41);
      MEMORY[0x18CFF4B10](v41, -1, -1);
      MEMORY[0x18CFF4B10](v40, -1, -1);
      v36 = v39;
      v39 = v42;
    }
  }

  v43 = [v1 grayscaleFilter];
  if (v43)
  {
    v44 = v43;
    [v43 BOOLValue];
    _AXSGrayscaleSetEnabled();
    v45 = sub_18B2C9B84();
    v46 = AXLogCommon();
    if (!v46)
    {
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v47 = v46;
    if (os_log_type_enabled(v46, v45))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v44;
      *v49 = v44;
      v50 = v44;
      _os_log_impl(&dword_18B15E000, v47, v45, "Enabling grayscale %@", v48, 0xCu);
      sub_18B2A242C(v49);
      MEMORY[0x18CFF4B10](v49, -1, -1);
      MEMORY[0x18CFF4B10](v48, -1, -1);
      v44 = v47;
      v47 = v50;
    }
  }

  v51 = [v1 redGreenFilter];
  if (v51)
  {
    v52 = v51;
    [v51 BOOLValue];
    _AXSRedGreenFilterSetEnabled();
    v53 = sub_18B2C9B84();
    v54 = AXLogCommon();
    if (!v54)
    {
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    v55 = v54;
    if (os_log_type_enabled(v54, v53))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v52;
      *v57 = v52;
      v58 = v52;
      _os_log_impl(&dword_18B15E000, v55, v53, "Enabling redgreen %@", v56, 0xCu);
      sub_18B2A242C(v57);
      MEMORY[0x18CFF4B10](v57, -1, -1);
      MEMORY[0x18CFF4B10](v56, -1, -1);
      v52 = v55;
      v55 = v58;
    }
  }

  v59 = [v1 greenRedFilter];
  if (v59)
  {
    v60 = v59;
    [v59 BOOLValue];
    _AXSGreenRedFilterSetEnabled();
    v61 = sub_18B2C9B84();
    v62 = AXLogCommon();
    if (!v62)
    {
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    v63 = v62;
    if (os_log_type_enabled(v62, v61))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v60;
      *v65 = v60;
      v66 = v60;
      _os_log_impl(&dword_18B15E000, v63, v61, "Enabling greenred %@", v64, 0xCu);
      sub_18B2A242C(v65);
      MEMORY[0x18CFF4B10](v65, -1, -1);
      MEMORY[0x18CFF4B10](v64, -1, -1);
      v60 = v63;
      v63 = v66;
    }
  }

  v67 = [v1 blueYellowFilter];
  if (v67)
  {
    v68 = v67;
    [v67 BOOLValue];
    _AXSBlueYellowFilterSetEnabled();
    v69 = sub_18B2C9B84();
    v70 = AXLogCommon();
    if (!v70)
    {
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    v71 = v70;
    if (os_log_type_enabled(v70, v69))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      *(v72 + 4) = v68;
      *v73 = v68;
      v74 = v68;
      _os_log_impl(&dword_18B15E000, v71, v69, "Enabling blue yellow %@", v72, 0xCu);
      sub_18B2A242C(v73);
      MEMORY[0x18CFF4B10](v73, -1, -1);
      MEMORY[0x18CFF4B10](v72, -1, -1);
      v68 = v71;
      v71 = v74;
    }
  }

  v75 = [v1 darkMode];
  if (v75)
  {
    v76 = v75;
    v77 = objc_opt_self();
    v78 = [v77 server];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 isDarkModeActive];
    }

    else
    {
      v80 = 0;
    }

    if ([v76 BOOLValue]&& !v80 || ([v76 BOOLValue]& 1) == 0 && ((v80 ^ 1) & 1) == 0)
    {
      v81 = [v77 server];
      [v81 toggleDarkMode];

      v82 = sub_18B2C9B84();
      v83 = AXLogCommon();
      if (!v83)
      {
        goto LABEL_207;
      }

      v84 = v83;
      if (os_log_type_enabled(v83, v82))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        *(v85 + 4) = v76;
        *v86 = v76;
        v87 = v76;
        _os_log_impl(&dword_18B15E000, v84, v82, "Toggling dark mode to %@", v85, 0xCu);
        sub_18B2A242C(v86);
        MEMORY[0x18CFF4B10](v86, -1, -1);
        MEMORY[0x18CFF4B10](v85, -1, -1);
      }
    }

    v88 = sub_18B2C9B84();
    v89 = AXLogCommon();
    if (!v89)
    {
      goto LABEL_193;
    }

    v90 = v89;
    if (os_log_type_enabled(v89, v88))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 67109378;
      *(v91 + 4) = v80;
      *(v91 + 8) = 2112;
      *(v91 + 10) = v76;
      *v92 = v76;
      v93 = v76;
      _os_log_impl(&dword_18B15E000, v90, v88, "Current dark mode value %{BOOL}d package value: %@", v91, 0x12u);
      sub_18B2A242C(v92);
      MEMORY[0x18CFF4B10](v92, -1, -1);
      MEMORY[0x18CFF4B10](v91, -1, -1);
      v76 = v90;
      v90 = v93;
    }
  }

  v94 = [v1 zoom];
  if (v94)
  {
    v95 = v94;
    [v94 BOOLValue];
    _AXSZoomTouchSetEnabled();
    v96 = sub_18B2C9B84();
    v97 = AXLogCommon();
    if (!v97)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v98 = v97;
    if (os_log_type_enabled(v97, v96))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138412290;
      *(v99 + 4) = v95;
      *v100 = v95;
      v101 = v95;
      _os_log_impl(&dword_18B15E000, v98, v96, "Enabling zoom %@", v99, 0xCu);
      sub_18B2A242C(v100);
      MEMORY[0x18CFF4B10](v100, -1, -1);
      MEMORY[0x18CFF4B10](v99, -1, -1);
      v95 = v98;
      v98 = v101;
    }
  }

  v102 = [v1 speakSelection];
  if (v102)
  {
    v103 = v102;
    [v102 BOOLValue];
    _AXSQuickSpeakSetEnabled();
    v104 = sub_18B2C9B84();
    v105 = AXLogCommon();
    if (!v105)
    {
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v106 = v105;
    if (os_log_type_enabled(v105, v104))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v107 = 138412290;
      *(v107 + 4) = v103;
      *v108 = v103;
      v109 = v103;
      _os_log_impl(&dword_18B15E000, v106, v104, "Enabling speak selection %@", v107, 0xCu);
      sub_18B2A242C(v108);
      MEMORY[0x18CFF4B10](v108, -1, -1);
      MEMORY[0x18CFF4B10](v107, -1, -1);
      v103 = v106;
      v106 = v109;
    }
  }

  v110 = [v1 voiceControl];
  if (v110)
  {
    v111 = v110;
    [v110 BOOLValue];
    _AXSCommandAndControlSetEnabled();
    v112 = sub_18B2C9B84();
    v113 = AXLogCommon();
    if (!v113)
    {
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    v114 = v113;
    if (os_log_type_enabled(v113, v112))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = 138412290;
      *(v115 + 4) = v111;
      *v116 = v111;
      v117 = v111;
      _os_log_impl(&dword_18B15E000, v114, v112, "Enabling voice control %@", v115, 0xCu);
      sub_18B2A242C(v116);
      MEMORY[0x18CFF4B10](v116, -1, -1);
      MEMORY[0x18CFF4B10](v115, -1, -1);
      v111 = v114;
      v114 = v117;
    }
  }

  v118 = [v1 powerButtonEndsCall];
  if (v118)
  {
    v119 = v118;
    [v118 BOOLValue];
    _AXSPhoneLockToEndCallSetEnabled();
    v120 = sub_18B2C9B84();
    v121 = AXLogCommon();
    if (!v121)
    {
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    v122 = v121;
    if (os_log_type_enabled(v121, v120))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v123 = 138412290;
      *(v123 + 4) = v119;
      *v124 = v119;
      v125 = v119;
      _os_log_impl(&dword_18B15E000, v122, v120, "Power button ends call %@", v123, 0xCu);
      sub_18B2A242C(v124);
      MEMORY[0x18CFF4B10](v124, -1, -1);
      MEMORY[0x18CFF4B10](v123, -1, -1);
      v119 = v122;
      v122 = v125;
    }
  }

  v126 = [v1 autoRotateScreen];
  if (v126)
  {
    v127 = v126;
    v128 = [objc_opt_self() server];
    if (v128)
    {
      v129 = v128;
      [v128 setOrientationLocked_];
    }

    v130 = sub_18B2C9B84();
    v131 = AXLogCommon();
    if (!v131)
    {
      goto LABEL_198;
    }

    v132 = v131;
    if (os_log_type_enabled(v131, v130))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v133 = 138412290;
      *(v133 + 4) = v127;
      *v134 = v127;
      v135 = v127;
      _os_log_impl(&dword_18B15E000, v132, v130, "Enabling auto rotate screen %@", v133, 0xCu);
      sub_18B2A242C(v134);
      MEMORY[0x18CFF4B10](v134, -1, -1);
      MEMORY[0x18CFF4B10](v133, -1, -1);
      v127 = v132;
      v132 = v135;
    }
  }

  v136 = [v1 liveCaptions];
  if (v136)
  {
    v137 = v136;
    [v136 BOOLValue];
    _AXSLiveTranscriptionSetEnabled();
    v138 = sub_18B2C9B84();
    v139 = AXLogCommon();
    if (!v139)
    {
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

    v140 = v139;
    if (os_log_type_enabled(v139, v138))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v141 = 138412290;
      *(v141 + 4) = v137;
      *v142 = v137;
      v143 = v137;
      _os_log_impl(&dword_18B15E000, v140, v138, "Enabling live captions %@", v141, 0xCu);
      sub_18B2A242C(v142);
      MEMORY[0x18CFF4B10](v142, -1, -1);
      MEMORY[0x18CFF4B10](v141, -1, -1);
      v137 = v140;
      v140 = v143;
    }
  }

  v144 = [v1 liveTranscribe];
  if (v144)
  {
    v145 = v144;
    [v144 BOOLValue];
    _AXSLiveTranscriptionSetEnabled();
    v146 = sub_18B2C9B84();
    v147 = AXLogCommon();
    if (!v147)
    {
LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

    v148 = v147;
    if (os_log_type_enabled(v147, v146))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *v149 = 138412290;
      *(v149 + 4) = v145;
      *v150 = v145;
      v151 = v145;
      _os_log_impl(&dword_18B15E000, v148, v146, "Enabling live captions %@", v149, 0xCu);
      sub_18B2A242C(v150);
      MEMORY[0x18CFF4B10](v150, -1, -1);
      MEMORY[0x18CFF4B10](v149, -1, -1);
      v145 = v148;
      v148 = v151;
    }
  }

  v152 = [v1 audioDescription];
  if (v152)
  {
    v153 = v152;
    MAAudibleMediaPrefSetPreferDescriptiveVideo();
    v154 = sub_18B2C9B84();
    v155 = AXLogCommon();
    if (!v155)
    {
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    v156 = v155;
    if (os_log_type_enabled(v155, v154))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v157 = 138412290;
      *(v157 + 4) = v153;
      *v158 = v153;
      v159 = v153;
      _os_log_impl(&dword_18B15E000, v156, v154, "Enabling audio descrptions %@", v157, 0xCu);
      sub_18B2A242C(v158);
      MEMORY[0x18CFF4B10](v158, -1, -1);
      MEMORY[0x18CFF4B10](v157, -1, -1);
      v153 = v156;
      v156 = v159;
    }
  }

  v160 = [v1 flashForAlerts];
  if (v160)
  {
    v161 = v160;
    [v160 BOOLValue];
    _AXSVisualAlertSetEnabled();
    v162 = sub_18B2C9B84();
    v163 = AXLogCommon();
    if (!v163)
    {
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    v164 = v163;
    if (os_log_type_enabled(v163, v162))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      *v165 = 138412290;
      *(v165 + 4) = v161;
      *v166 = v161;
      v167 = v161;
      _os_log_impl(&dword_18B15E000, v164, v162, "Enabling flash for allert %@", v165, 0xCu);
      sub_18B2A242C(v166);
      MEMORY[0x18CFF4B10](v166, -1, -1);
      MEMORY[0x18CFF4B10](v165, -1, -1);
      v161 = v164;
      v164 = v167;
    }
  }

  v168 = [v1 monoAudio];
  if (v168)
  {
    v169 = v168;
    [v168 BOOLValue];
    _AXSMonoAudioSetEnabled();
    v170 = sub_18B2C9B84();
    v171 = AXLogCommon();
    if (!v171)
    {
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v172 = v171;
    if (os_log_type_enabled(v171, v170))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *v173 = 138412290;
      *(v173 + 4) = v169;
      *v174 = v169;
      v175 = v169;
      _os_log_impl(&dword_18B15E000, v172, v170, "Enabling mono audio %@", v173, 0xCu);
      sub_18B2A242C(v174);
      MEMORY[0x18CFF4B10](v174, -1, -1);
      MEMORY[0x18CFF4B10](v173, -1, -1);
      v169 = v172;
      v172 = v175;
    }
  }

  v176 = [v1 audioBalance];
  if (v176)
  {
    v177 = v176;
    [v176 floatValue];
    _AXSSetLeftRightAudioBalance();
    v178 = sub_18B2C9B84();
    v179 = AXLogCommon();
    if (!v179)
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v180 = v179;
    if (os_log_type_enabled(v179, v178))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *v181 = 138412290;
      *(v181 + 4) = v177;
      *v182 = v177;
      v183 = v177;
      _os_log_impl(&dword_18B15E000, v180, v178, "Enabling audio balance %@", v181, 0xCu);
      sub_18B2A242C(v182);
      MEMORY[0x18CFF4B10](v182, -1, -1);
      MEMORY[0x18CFF4B10](v181, -1, -1);
      v177 = v180;
      v180 = v183;
    }
  }

  v184 = [v1 preferCaptionsSDH];
  if (!v184)
  {
LABEL_125:
    v192 = [v1 captionStyles];
    if (!v192)
    {
      return;
    }

    v193 = v192;
    sub_18B2862C0(0, &qword_1EA9B73C8);
    v194 = sub_18B2C99F4();

    if (v194 >> 62)
    {
      v195 = sub_18B2C9CB4();
      v11 = v260;
      if (v195)
      {
LABEL_128:
        v15 = 0;
        v263 = v194 & 0xFFFFFFFFFFFFFF8;
        v264 = (v194 & 0xC000000000000001);
        v261 = v195;
        v262 = v194;
        while (1)
        {
          if (v264)
          {
            v196 = MEMORY[0x18CFF0E80](v15, v194);
          }

          else
          {
            if (v15 >= *(v263 + 16))
            {
              goto LABEL_178;
            }

            v196 = *(v194 + 8 * v15 + 32);
          }

          v197 = v196;
          v198 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          NewProfileID = MACaptionAppearancePrefCreateNewProfileID();
          if (!NewProfileID)
          {
            break;
          }

          v200 = NewProfileID;
          v201 = NewProfileID;
          v202 = [v197 captionStyleName];
          if (v202)
          {
            v203 = v202;
          }

          else
          {
            v204 = sub_18B2C9864();
            v203 = AXLocalizedString(v204);

            if (!v203)
            {
              goto LABEL_186;
            }
          }

          sub_18B2C9894();

          v205 = sub_18B2C9864();

          MACaptionAppearancePrefSetProfileName();

          v206 = [v197 fontName];
          if (v206)
          {
            v207 = v206;
            v208 = _CTFontCreateWithNameAndSymbolicTraits();

            v209 = CTFontCopyGraphicsFont(v208, 0);
            MACaptionAppearancePrefSetFontForStyle();
          }

          v210 = [v197 size];
          if (v210)
          {
            v211 = v210;
            sub_18B2862C0(0, &qword_1ED653B98);
            v212 = v211;
            v213 = sub_18B2C9BE4();
            v214 = sub_18B2C9C04();

            if ((v214 & 1) == 0)
            {
              v215 = v212;
              v216 = sub_18B2C9BE4();
              v217 = sub_18B2C9C04();

              if ((v217 & 1) == 0)
              {
                v218 = v215;
                v219 = sub_18B2C9BE4();
                v220 = sub_18B2C9C04();

                if ((v220 & 1) == 0)
                {
                  v221 = v218;
                  v222 = sub_18B2C9BE4();
                  sub_18B2C9C04();
                }
              }

              v11 = v260;
            }

            MACaptionAppearancePrefSetRelativeCharSize();
          }

          v223 = [v197 color];
          if (v223)
          {
            v224 = v223;
            v225 = [v11 convertColor:sub_18B2C9B44()];
            MACaptionAppearancePrefSetForegroundColor();
          }

          v226 = [v197 colorVideoOverride];
          if (v226)
          {
            v227 = v226;
            MACaptionAppearancePrefSetVideoOverrideForegroundColor();
          }

          v228 = [v197 backgroundColor];
          if (v228)
          {
            v229 = v228;
            v230 = [v11 convertColor:sub_18B2C9B44()];
            MACaptionAppearancePrefSetWindowColor();
          }

          v231 = [v197 backgroundColorVideoOverride];
          if (v231)
          {
            v232 = v231;
            MACaptionAppearancePrefSetVideoOverrideWindowColor();
          }

          v233 = [v197 backgroundOpacity];
          if (v233)
          {
            v234 = v233;
            MACaptionAppearancePrefSetWindowOpacity();
          }

          v235 = [v197 backgroundOpacityVideoOverride];
          if (v235)
          {
            v236 = v235;
            MACaptionAppearancePrefSetVideoOverrideWindowOpacity();
          }

          v237 = [v197 textOpacity];
          if (v237)
          {
            v238 = v237;
            MACaptionAppearancePrefSetForegroundOpacity();
          }

          v239 = [v197 textOpacityVideoOverride];
          if (v239)
          {
            v240 = v239;
            MACaptionAppearancePrefSetVideoOverrideForegroundOpacity();
          }

          v241 = [v197 textEdgeStyle];
          if (v241)
          {
            v242 = v241;
            v243 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            MACaptionAppearancePrefSetTextEdgeStyle();
          }

          v244 = [v197 textEdgeStyleVideoOverride];
          if (v244)
          {
            v245 = v244;
            MACaptionAppearancePrefSetVideoOverrideTextEdgeStyle();
          }

          v246 = [v197 textHighlightColor];
          if (v246)
          {
            v247 = v246;
            v248 = [v11 convertColor:sub_18B2C9B44()];
            MACaptionAppearancePrefSetBackgroundColor();
          }

          v249 = [v197 textHighlightOpacity];
          if (v249)
          {
            v250 = v249;
            MACaptionAppearancePrefSetBackgroundOpacity();
          }

          v251 = [v197 textHighlightOpacityVideoOverride];
          if (v251)
          {
            v252 = v251;
            MACaptionAppearancePrefSetVideoOverrideBackgroundColor();
          }

          v253 = sub_18B2C9B84();
          v254 = AXLogCommon();
          if (!v254)
          {
            goto LABEL_185;
          }

          v255 = v254;
          if (os_log_type_enabled(v254, v253))
          {
            v256 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            *v256 = 138412290;
            *(v256 + 4) = v201;
            *v257 = v200;
            v258 = v201;
            _os_log_impl(&dword_18B15E000, v255, v253, "Created caption profile %@", v256, 0xCu);
            sub_18B2A242C(v257);
            v259 = v257;
            v11 = v260;
            MEMORY[0x18CFF4B10](v259, -1, -1);
            MEMORY[0x18CFF4B10](v256, -1, -1);
            v201 = v255;
            v255 = v197;
            v197 = v258;
          }

          v194 = v262;

          v15 = v15 + 1;
          if (v198 == v261)
          {
            goto LABEL_182;
          }
        }

        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }
    }

    else
    {
      v195 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v260;
      if (v195)
      {
        goto LABEL_128;
      }
    }

LABEL_182:

    return;
  }

  v185 = v184;
  MACaptionAppearancePrefSetPreferAccessibleCaptions();
  v186 = sub_18B2C9B84();
  v187 = AXLogCommon();
  if (v187)
  {
    v188 = v187;
    if (os_log_type_enabled(v187, v186))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *v189 = 138412290;
      *(v189 + 4) = v185;
      *v190 = v185;
      v191 = v185;
      _os_log_impl(&dword_18B15E000, v188, v186, "Enabling prefer captions %@", v189, 0xCu);
      sub_18B2A242C(v190);
      MEMORY[0x18CFF4B10](v190, -1, -1);
      MEMORY[0x18CFF4B10](v189, -1, -1);
      v185 = v188;
      v188 = v191;
    }

    goto LABEL_125;
  }

LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
}

id sub_18B2A0EF4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(AXOSMigrationPackage) init];
  v3 = &selRef_setSelection_;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v2 setScreenReader_];

  v5 = _AXSCopyPreferredContentSizeCategoryName();
  v6 = 1.0;
  if (v5)
  {
    v54 = v1;
    v7 = qword_1EA9B62D0;
    v8 = v5;
    if (v7 != -1)
    {
LABEL_24:
      swift_once();
    }

    v9 = off_1EA9B73B0;
    v10 = *(off_1EA9B73B0 + 2);
    if (v10)
    {
      v11 = 0;
      v12 = (off_1EA9B73B0 + 40);
      while (1)
      {
        if (v11 >= v9[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        v13 = *(v12 - 2);
        v14 = *v12;
        type metadata accessor for CFString(0);
        sub_18B29F060();
        v15 = v14;
        if (sub_18B2C92A4())
        {
          break;
        }

        ++v11;
        v12 += 3;
        if (v10 == v11)
        {
          goto LABEL_8;
        }
      }

      v1 = v54;
      v3 = &selRef_setSelection_;
      if (qword_1EA9B6280 != -1)
      {
        swift_once();
      }

      v16 = *&dword_1EA9B72C0;

      v6 = v13 / v16;
    }

    else
    {
LABEL_8:

      v1 = v54;
      v3 = &selRef_setSelection_;
    }
  }

  v17 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v18 = v6;
  v19 = [v17 initWithFloat_];
  [v2 setTextSize_];

  v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setBoldText_];

  v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setGrayscaleFilter_];

  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setRedGreenFilter_];

  v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setGreenRedFilter_];

  v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setBlueYellowFilter_];

  v25 = objc_opt_self();
  v26 = [v25 server];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 isDarkModeActive];
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setDarkMode_];

  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setZoom_];

  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setSpeakSelection_];

  v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setVoiceControl_];

  v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setPowerButtonEndsCall_];

  v34 = [v25 server];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 isOrientationLocked];

    v37 = v36 ^ 1;
  }

  else
  {
    v37 = 1;
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setAutoRotateScreen_];

  v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setLiveCaptions_];

  v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setLiveTranscribe_];

  v41 = MAAudibleMediaPrefCopyPreferDescriptiveVideo();
  if (v41)
  {
    v42 = v41;
    [v2 setAudioDescription_];
  }

  v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setFlashForAlerts_];

  v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v3[26]];
  [v2 setMonoAudio_];

  _AXSLeftRightAudioBalance();
  v46 = v45;
  v47 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v48) = v46;
  v49 = [v47 initWithFloat_];
  [v2 setAudioBalance_];

  v50 = MACaptionAppearancePrefCopyPreferAccessibleCaptions();
  if (v50)
  {
    v51 = v50;
    [v2 setPreferCaptionsSDH_];
  }

  v52 = [v1 _createCaptionStyles];
  [v2 setCaptionStyles_];

  return v2;
}

double *sub_18B2A1600(double *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  result = [v2 AX_FloatProbablyEqual:result[4] :*(a2 + 32)];
  if (!result)
  {
    return result;
  }

  if (v3 == 1)
  {
    goto LABEL_13;
  }

  if (v5 == 1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [v2 AX_FloatProbablyEqual:v6[5] :*(a2 + 40)];
  if (!result)
  {
    return result;
  }

  if (v3 < 3)
  {
    goto LABEL_15;
  }

  if (v5 < 3)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return [v2 AX_FloatProbablyEqual:v6[6] :*(a2 + 48)];
}

uint64_t sub_18B2A1748()
{
  v1 = v0;
  if (!sub_18B2C9B54())
  {
    return 1;
  }

  v2 = sub_18B2C99D4();
  v3 = sub_18B2C99D4();
  v4 = [v0 _colorProbablyEqual:v2 :v3];

  if (v4)
  {

    return 1;
  }

  v6 = sub_18B2C99D4();
  v7 = sub_18B2C99D4();
  v8 = [v0 _colorProbablyEqual:v6 :v7];

  if (v8)
  {

    return 2;
  }

  else
  {
    v9 = sub_18B2C99D4();
    v10 = sub_18B2C99D4();
    v11 = [v0 _colorProbablyEqual:v9 :v10];

    if (v11)
    {

      return 3;
    }

    else
    {
      v12 = sub_18B2C99D4();
      v13 = sub_18B2C99D4();
      v14 = [v0 _colorProbablyEqual:v12 :v13];

      if (v14)
      {

        return 4;
      }

      else
      {
        v15 = sub_18B2C99D4();
        v16 = sub_18B2C99D4();
        v17 = [v0 _colorProbablyEqual:v15 :v16];

        if (v17)
        {

          return 5;
        }

        else
        {
          v18 = sub_18B2C99D4();
          v19 = sub_18B2C99D4();
          v20 = [v0 _colorProbablyEqual:v18 :v19];

          if (v20)
          {

            return 6;
          }

          else
          {
            v21 = sub_18B2C99D4();
            v22 = sub_18B2C99D4();
            v23 = [v0 _colorProbablyEqual:v21 :v22];

            if (v23)
            {

              return 7;
            }

            else
            {
              v24 = sub_18B2C99D4();

              v25 = sub_18B2C99D4();
              v26 = [v1 _colorProbablyEqual:v24 :v25];

              if ((v26 & 1) == 0)
              {
                return 1;
              }

              return 8;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18B2A1AD4()
{
  v0 = MEMORY[0x1E69E7CC0];
  if (!MACaptionAppearancePrefCopyProfileIDs())
  {
    return v0;
  }

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CFString(0);
  result = sub_18B2C99E4();
  __break(1u);
  return result;
}

AXOSMigrationManager __swiftcall AXOSMigrationManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_18B2A2300(float a1)
{
  if (qword_1EA9B6280 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *&dword_1EA9B72C0;
  if (qword_1EA9B62D0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = v1 * a1;
  v3 = off_1EA9B73B0 + 16;
  v4 = *(off_1EA9B73B0 + 2) + 1;
  while (--v4)
  {
    v5 = (v3 + 24);
    v6 = *(v3 + 4);
    v3 += 24;
    if (v2 <= v6)
    {
      return *v5;
    }
  }

  if (qword_1EA9B62C8 != -1)
  {
    swift_once();
  }

  v5 = &qword_1EA9B73A0;
  if (*&dword_1EA9B7398 >= v2)
  {
    v5 = &qword_1EA9B72C8;
  }

  return *v5;
}

uint64_t sub_18B2A242C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B73D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B2A2494(uint64_t result)
{
  if (result <= 4)
  {
    if (result > 2)
    {
      goto LABEL_12;
    }

    if (result == 1)
    {
LABEL_20:
      result = CGColorCreateWithRGB();
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (result != 2)
    {
      goto LABEL_28;
    }

    result = CGColorCreateWithRGB();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (result > 6)
  {
    goto LABEL_16;
  }

  if (result == 5)
  {
LABEL_22:
    result = CGColorCreateWithRGB();
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (result != 6)
  {
    goto LABEL_28;
  }

  result = CGColorCreateWithRGB();
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_12:
  if (result == 3)
  {
LABEL_24:
    result = CGColorCreateWithRGB();
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (result != 4)
  {
    goto LABEL_28;
  }

  result = CGColorCreateWithRGB();
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_16:
  if (result != 7)
  {
    if (result != 8)
    {
      goto LABEL_28;
    }

    result = CGColorCreateWithRGB();
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_26:
  result = CGColorCreateWithRGB();
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_28:
  result = CGColorCreateWithRGB();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18B2A2610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B2A2658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AXSettings.SwitchControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AXSettings.SwitchControl._$scanningStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_scanningStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22C68C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2A2784@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___scanningStyle_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___scanningStyle_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___scanningStyle_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6520);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2A88F8(&qword_1EA9B7490, 255, type metadata accessor for AXSSwitchControlScanningStyle);
    sub_18B2A88F8(&qword_1EA9B7468, v8, type metadata accessor for AXSettings.SwitchControl);
    v6 = sub_18B2C9444();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t AXSettings.SwitchControl.scanningStyleStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AXSSwitchControlScanningStyle(0);
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B2A2A20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_scanningStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SwitchControl.scanningStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_scanningStyle);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.SwitchControl.scanningStyle.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_scanningStyle);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.SwitchControl.scanningStyle.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_scanningStyle;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B2A2DB8;
}

void sub_18B2A2DB8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

void sub_18B2A2EF8(uint64_t a1, char a2)
{
  if (a2)
  {

    _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC8switchesSaySo8AXSwitchCGvs_0();
  }

  else
  {

    _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC8switchesSaySo8AXSwitchCGvs_0();
  }
}

uint64_t AXSettings.SwitchControl._$longPressEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_longPressEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2A2FE8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___longPressEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___longPressEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___longPressEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2A88F8(&qword_1EA9B7468, v8, type metadata accessor for AXSettings.SwitchControl);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2A31CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_longPressEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SwitchControl.longPressEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_longPressEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.SwitchControl.longPressEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_longPressEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.SwitchControl.longPressEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_longPressEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2A34FC;
}

uint64_t sub_18B2A34FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.SwitchControl._$showFaceGuidance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_showFaceGuidance);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2A3674@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___showFaceGuidance_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___showFaceGuidance_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___showFaceGuidance_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2A88F8(&qword_1EA9B7468, v8, type metadata accessor for AXSettings.SwitchControl);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2A3858@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_showFaceGuidance);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SwitchControl.showFaceGuidance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_showFaceGuidance);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.SwitchControl.showFaceGuidance.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_showFaceGuidance);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.SwitchControl.showFaceGuidance.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_showFaceGuidance;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2A3B88;
}

uint64_t sub_18B2A3B88(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.SwitchControl._$eyeTrackingDwellEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_eyeTrackingDwellEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2A3D00@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___eyeTrackingDwellEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___eyeTrackingDwellEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___eyeTrackingDwellEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2A88F8(&qword_1EA9B7468, v8, type metadata accessor for AXSettings.SwitchControl);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2A3ECC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_eyeTrackingDwellEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SwitchControl.eyeTrackingDwellEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_eyeTrackingDwellEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.SwitchControl.eyeTrackingDwellEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_eyeTrackingDwellEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.SwitchControl.eyeTrackingDwellEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_eyeTrackingDwellEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2A4174;
}

uint64_t sub_18B2A4174(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.SwitchControl._$skipCalibration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_skipCalibration);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2A42EC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___skipCalibration_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___skipCalibration_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___skipCalibration_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2A88F8(&qword_1EA9B7468, v8, type metadata accessor for AXSettings.SwitchControl);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2A44D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_skipCalibration);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SwitchControl.skipCalibration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_skipCalibration);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.SwitchControl.skipCalibration.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_skipCalibration);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.SwitchControl.skipCalibration.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_skipCalibration;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2A4778;
}

uint64_t sub_18B2A4778(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

void *AXSettings.SwitchControl.pointPickerSwitches.getter()
{
  v0 = [objc_allocWithZone(AXSettings) init];
  v1 = [v0 assistiveTouchCameraPointPickerSwitches];

  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v2 = sub_18B2C9B14();

  v3 = sub_18B2A6BC8(v2);

  return v3;
}

uint64_t sub_18B2A492C@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(AXSettings) init];
  v3 = [v2 assistiveTouchCameraPointPickerSwitches];

  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v4 = sub_18B2C9B14();

  v5 = sub_18B2A6BC8(v4);

  *a1 = v5;
  return result;
}

void sub_18B2A4A00(unint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(AXSettings);

  v3 = [v2 init];
  sub_18B295B1C(v1);

  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v4 = sub_18B2C9B04();

  [v3 setAssistiveTouchCameraPointPickerSwitches_];
}

void AXSettings.SwitchControl.pointPickerSwitches.setter(unint64_t a1)
{
  v2 = [objc_allocWithZone(AXSettings) init];
  sub_18B295B1C(a1);

  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v3 = sub_18B2C9B04();

  [v2 setAssistiveTouchCameraPointPickerSwitches_];
}

void (*AXSettings.SwitchControl.pointPickerSwitches.modify(void *a1))(unint64_t *a1, char a2)
{
  v2 = [objc_allocWithZone(AXSettings) init];
  v3 = [v2 assistiveTouchCameraPointPickerSwitches];

  a1[1] = sub_18B235F64();
  a1[2] = sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v4 = sub_18B2C9B14();

  v5 = sub_18B2A6BC8(v4);

  *a1 = v5;
  return sub_18B2A4CE0;
}

void sub_18B2A4CE0(unint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = objc_allocWithZone(AXSettings);
  if (a2)
  {
    v5 = v4;

    v7 = [v5 init];
    sub_18B295B1C(v3);

    v6 = sub_18B2C9B04();

    [v7 setAssistiveTouchCameraPointPickerSwitches_];
  }

  else
  {
    v7 = [v4 init];
    sub_18B295B1C(v3);

    v6 = sub_18B2C9B04();

    [v7 setAssistiveTouchCameraPointPickerSwitches_];
  }
}

id AXSettings.SwitchControl.cameraSwitch(withType:)(void *a1)
{
  result = _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC010findCameraD08withTypeSo8AXSwitchCSgSo010SCATCameradI0V_tF_0(a1);
  if (!result)
  {
    v3 = objc_allocWithZone(AXSwitch);
    v4 = @"SCATSwitchSourceMotionTracker";
    v5 = @"SwitchTypeOptional";
    v6 = sub_18B2C9864();
    v7 = [v3 initWithAction:0 name:v6 source:v4 type:v5];

    [v7 setCameraSwitch_];
    return v7;
  }

  return result;
}

uint64_t AXSettings.SwitchControl._$ignoreInvalidConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_ignoreInvalidConfig);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2A4F60@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___ignoreInvalidConfig_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___ignoreInvalidConfig_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___ignoreInvalidConfig_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2A88F8(&qword_1EA9B7468, v8, type metadata accessor for AXSettings.SwitchControl);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2A512C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_ignoreInvalidConfig);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.SwitchControl.ignoreInvalidConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_ignoreInvalidConfig);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.SwitchControl.ignoreInvalidConfig.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_ignoreInvalidConfig);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.SwitchControl.ignoreInvalidConfig.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_ignoreInvalidConfig;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2A53D4;
}

uint64_t sub_18B2A53D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.SwitchControl.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_scanningStyle);
  v60 = sub_18B2A8940;
  v61 = &v62;

  os_unfair_lock_lock(v2 + 4);
  sub_18B22F010(&v66);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v66;

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6520);
  v68 = sub_18B22EBD8(&qword_1EA9B6528, &qword_1EA9B6520);
  *&v66 = v3;
  sub_18B22C7E4(&v66, v64);
  v4 = MEMORY[0x1E69E7CC8];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v63 = v4;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7);
  sub_18B22CAD0(*v7, 0x6E696E6E61637324, 0xEE00656C79745367, v2, &v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v9 = v63;
  v10 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_longPressEnabled);
  v59 = v1;
  v56 = sub_18B2A8958;
  v57 = &v58;

  os_unfair_lock_lock(v10 + 4);
  sub_18B23602C(&v66);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v66;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v67 = v12;
  v13 = sub_18B22EBD8(&qword_1EA9B6428, &qword_1EA9B6420);
  v68 = v13;
  *&v66 = v11;
  sub_18B22C7E4(&v66, v64);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v63 = v9;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v16);
  sub_18B22C8D8(*v16, 0xD000000000000011, 0x800000018B2F6640, v4, &v63);
  v18 = __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v19 = v63;
  v20 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_showFaceGuidance);
  v21 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v21);

  os_unfair_lock_lock(v20 + 4);
  sub_18B23602C(&v66);
  os_unfair_lock_unlock(v20 + 4);
  v22 = v66;

  v67 = v12;
  v68 = v13;
  *&v66 = v22;
  sub_18B22C7E4(&v66, v64);
  LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
  v63 = v19;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v26 + 16))(v25);
  sub_18B22C8D8(*v25, 0xD000000000000011, 0x800000018B2F6660, v22, &v63);
  v27 = __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v28 = v63;
  v29 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_eyeTrackingDwellEnabled);
  v30 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v30);

  os_unfair_lock_lock(v29 + 4);
  sub_18B23602C(&v66);
  os_unfair_lock_unlock(v29 + 4);
  v31 = v66;

  v67 = v12;
  v68 = v13;
  *&v66 = v31;
  sub_18B22C7E4(&v66, v64);
  LOBYTE(v31) = swift_isUniquelyReferenced_nonNull_native();
  v63 = v28;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v55[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v35 + 16))(v34);
  sub_18B22C8D8(*v34, 0xD000000000000018, 0x800000018B2F6680, v31, &v63);
  v36 = __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v37 = v63;
  v38 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_skipCalibration);
  v39 = MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v39);

  os_unfair_lock_lock(v38 + 4);
  sub_18B23602C(&v66);
  os_unfair_lock_unlock(v38 + 4);
  v40 = v66;

  v67 = v12;
  v68 = v13;
  *&v66 = v40;
  sub_18B22C7E4(&v66, v64);
  LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
  v63 = v37;
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v55[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v44 + 16))(v43);
  sub_18B22C8D8(*v43, 0xD000000000000010, 0x800000018B2F66A0, v40, &v63);
  v45 = __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v46 = v63;
  v47 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_ignoreInvalidConfig);
  v48 = MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v48);

  os_unfair_lock_lock(v47 + 4);
  sub_18B23602C(&v66);
  os_unfair_lock_unlock(v47 + 4);
  v49 = v66;

  v67 = v12;
  v68 = v13;
  *&v66 = v49;
  sub_18B22C7E4(&v66, v64);
  LOBYTE(v49) = swift_isUniquelyReferenced_nonNull_native();
  v63 = v46;
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v55[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v53 + 16))(v52);
  sub_18B22C8D8(*v52, 0xD000000000000014, 0x800000018B2F66C0, v49, &v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  return v63;
}

id AXSettings.SwitchControl.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___scanningStyle_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_scanningStyle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___longPressEnabled_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_longPressEnabled;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___showFaceGuidance_Storage] = 0;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_showFaceGuidance;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___eyeTrackingDwellEnabled_Storage] = 0;
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_eyeTrackingDwellEnabled;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___skipCalibration_Storage] = 0;
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_skipCalibration;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___ignoreInvalidConfig_Storage] = 0;
  v12 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl___lock_ignoreInvalidConfig;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  v14 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v14] = sub_18B2C9584();
  v15 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SwitchControl_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v15] = sub_18B2C9564();
  sub_18B2C95B4();
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id AXSettings.SwitchControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXSwitch.iconName.getter()
{
  v1 = [v0 source];
  v2 = sub_18B2C9894();
  v4 = v3;

  if (sub_18B2C9894() == v2 && v5 == v4)
  {
    v8 = 0x662E6172656D6163;

    goto LABEL_8;
  }

  v7 = sub_18B2C9F24();

  if (v7)
  {
    v8 = 0x662E6172656D6163;
LABEL_8:

    return v8;
  }

  if (sub_18B2C9894() == v2 && v10 == v4)
  {

    goto LABEL_17;
  }

  v12 = sub_18B2C9F24();

  if (v12)
  {
LABEL_17:

    if (AXDeviceIsPhone())
    {
      return 0x656E6F687069;
    }

    else
    {
      return 1684107369;
    }
  }

  if (sub_18B2C9894() == v2 && v13 == v4)
  {
    v8 = 0x6F6C2E656C707061;

    goto LABEL_8;
  }

  v14 = sub_18B2C9F24();

  if (v14)
  {
    v8 = 0x6F6C2E656C707061;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v15 == v4)
  {
    v8 = 0x6472616F6279656BLL;
LABEL_28:

    goto LABEL_8;
  }

  v16 = sub_18B2C9F24();

  if (v16)
  {
    v8 = 0x6472616F6279656BLL;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v17 == v4)
  {

LABEL_35:

    return 0xD000000000000013;
  }

  v18 = sub_18B2C9F24();

  if (v18)
  {
    goto LABEL_35;
  }

  if (sub_18B2C9894() == v2 && v19 == v4)
  {
    v8 = 0x6B726F7774656ELL;

    goto LABEL_8;
  }

  v20 = sub_18B2C9F24();

  if (v20)
  {
    v8 = 0x6B726F7774656ELL;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v21 == v4)
  {

LABEL_45:

    return 0xD000000000000017;
  }

  v22 = sub_18B2C9F24();

  if (v22)
  {
    goto LABEL_45;
  }

  if (sub_18B2C9894() == v2 && v23 == v4)
  {
    v8 = 0x6F6E2E636973756DLL;

    goto LABEL_8;
  }

  v24 = sub_18B2C9F24();

  if (v24)
  {
    v8 = 0x6F6E2E636973756DLL;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v25 == v4)
  {

LABEL_55:

    return 0xD000000000000019;
  }

  v26 = sub_18B2C9F24();

  if (v26)
  {
    goto LABEL_55;
  }

  if (sub_18B2C9894() == v2 && v27 == v4)
  {
    v8 = 0x657261757173;

    goto LABEL_8;
  }

  v28 = sub_18B2C9F24();

  if (v28)
  {
    v8 = 0x657261757173;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v29 == v4)
  {
    v8 = 0x6F68706F7263696DLL;

    goto LABEL_8;
  }

  v30 = sub_18B2C9F24();

  if (v30)
  {
    v8 = 0x6F68706F7263696DLL;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v31 == v4)
  {
    v8 = 0x7061742E646E6168;
    goto LABEL_28;
  }

  v32 = sub_18B2C9F24();

  if (v32)
  {
    v8 = 0x7061742E646E6168;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v33 == v4)
  {
    v8 = 0x2E73646F70726961;

    goto LABEL_8;
  }

  v34 = sub_18B2C9F24();

  if (v34)
  {
    v8 = 0x2E73646F70726961;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v35 == v4)
  {
    v8 = 0x6E69702E646E6168;

    goto LABEL_8;
  }

  v36 = sub_18B2C9F24();

  if (v36)
  {
    v8 = 0x6E69702E646E6168;
    goto LABEL_8;
  }

  if (sub_18B2C9894() == v2 && v37 == v4)
  {
  }

  else
  {
    v38 = sub_18B2C9F24();

    if ((v38 & 1) == 0)
    {
      return 0x657261757173;
    }
  }

  return 0xD000000000000012;
}

void *sub_18B2A6B40(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_18B2A6BC8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_18B2C9CB4();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_18B2A6B40(v2, 0);

    v1 = sub_18B2A7FE0(&v5, v3 + 4, v2, v1);
    sub_18B2A88F0();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_18B2A6C78(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_18B2A7FCC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_18B2A6CF4(v6);
  return sub_18B2C9D94();
}

uint64_t sub_18B2A6CF4(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_18B2C9F14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18B235F64();
        v6 = sub_18B2C9A14();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_18B2A6F74(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_18B2A6DF8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18B2A6DF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      v11 = sub_18B2C9894();
      v13 = v12;

      v14 = [v9 name];
      v15 = sub_18B2C9894();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_18B2C9F24();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_18B2A6F74(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_18B2A7774((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_18B2A7BEC(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_18B2A7B60(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_18B2A7BEC(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 name];
      v16 = sub_18B2C9894();
      v18 = v17;

      v19 = [v14 name];
      v20 = sub_18B2C9894();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_18B2C9F24();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 name];
          v5 = sub_18B2C9894();
          v29 = v28;

          v30 = [v26 name];
          v31 = sub_18B2C9894();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_18B2C9F24();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_18B2A7C00(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_18B2A7C00((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_18B2A7774((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_18B2A7BEC(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_18B2A7B60(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 name];
    v5 = sub_18B2C9894();
    v51 = v50;

    v52 = [v48 name];
    v53 = sub_18B2C9894();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_18B2C9F24();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_18B2A7774(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 name];
        v38 = sub_18B2C9894();
        v40 = v39;

        v41 = [v36 name];
        v42 = sub_18B2C9894();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_18B2C9F24();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 name];
        v18 = sub_18B2C9894();
        v20 = v19;

        v21 = [v16 name];
        v22 = sub_18B2C9894();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_18B2C9F24();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_18B2A7B60(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18B2A7BEC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_18B2A7C00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_18B2A7D04(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_18B2C9CB4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_18B2A6B40(v3, 0);
  sub_18B2A7D98((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18B2A7D98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_18B2C9CB4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_18B2C9CB4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_18B22EBD8(&qword_1EA9B7480, &qword_1EA9B7478);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7478);
            v9 = sub_18B2A7F3C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_18B235F64();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_18B2A7F3C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18CFF0E80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_18B2A7FBC;
  }

  __break(1u);
  return result;
}

void *sub_18B2A7FE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_18B2C9CA4();
  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  result = sub_18B2C9B34();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      v7 = a3;
      if (!sub_18B2C9CD4())
      {
        goto LABEL_30;
      }

      sub_18B235F64();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v15 = v10;
    if (!v11)
    {
      break;
    }

    v16 = v10;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v14 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v15;
    if (v11)
    {
      v10 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC8switchesSaySo8AXSwitchCGvg_0()
{
  v0 = [objc_allocWithZone(AXSettings) init];
  v1 = [v0 assistiveTouchSwitches];

  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v2 = sub_18B2C9B14();

  sub_18B2A6BC8(v2);

  v5 = sub_18B2A7D04(v3);
  sub_18B2A6C78(&v5);

  return v5;
}

void _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC8switchesSaySo8AXSwitchCGvs_0()
{

  v4 = sub_18B2A7D04(v0);
  sub_18B2A6C78(&v4);

  v1 = v4;
  v2 = [objc_allocWithZone(AXSettings) init];
  sub_18B295B1C(v1);

  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v3 = sub_18B2C9B04();

  [v2 setAssistiveTouchSwitches_];
}

void *_sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC010findCameraD08withTypeSo8AXSwitchCSgSo010SCATCameradI0V_tF_0(id a1)
{
  v1 = [objc_allocWithZone(AXSettings) init];
  v2 = [v1 assistiveTouchCameraPointPickerSwitches];

  sub_18B235F64();
  sub_18B2A88F8(&qword_1EA9B71C8, 255, sub_18B235F64);
  v3 = sub_18B2C9B14();

  v4 = sub_18B2A6BC8(v3);

  if ((v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_22;
  }

  for (i = *(v4 + 16); i; i = sub_18B2C9CB4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18CFF0E80](v6, v4);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 source];
      v11 = sub_18B2C9894();
      v13 = v12;

      if (v11 == sub_18B2C9894() && v13 == v14)
      {
      }

      else
      {
        v16 = sub_18B2C9F24();

        if ((v16 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ([v8 cameraSwitch] == a1)
      {

        return v8;
      }

LABEL_7:

      ++v6;
      if (v9 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  return 0;
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC9selectorsShy10ObjectiveC8SelectorVGvg_0()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_switchControlScanningStyle);
  sub_18B232DFC(&v1, sel_setSwitchControlScanningStyle_);
  sub_18B232DFC(&v1, sel_switchControlLongPressEnabled);
  sub_18B232DFC(&v1, sel_setSwitchControlLongPressEnabled_);
  sub_18B232DFC(&v1, sel_switchControlEyeTrackingFaceGuidanceEnabled);
  sub_18B232DFC(&v1, sel_setSwitchControlEyeTrackingFaceGuidanceEnabled_);
  return v2;
}

uint64_t sub_18B2A88F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AXSettings.Touch.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AXSettings.Touch._$preferActionSliderAlternative.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___lock_preferActionSliderAlternative);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2A8A90@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___preferActionSliderAlternative_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___preferActionSliderAlternative_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___preferActionSliderAlternative_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2A9680(&qword_1EA9B74D8);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t AXSettings.Touch.preferActionSliderAlternativeStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B2A8CC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___lock_preferActionSliderAlternative);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.Touch.preferActionSliderAlternative.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___lock_preferActionSliderAlternative);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.Touch.preferActionSliderAlternative.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___lock_preferActionSliderAlternative);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.Touch.preferActionSliderAlternative.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___lock_preferActionSliderAlternative;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2A8FF8;
}

uint64_t sub_18B2A8FF8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.Touch.settings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___lock_preferActionSliderAlternative);
  v10 = sub_18B2A96C0;
  v11 = &v12;

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v16);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v18 = sub_18B235E04();
  *&v16 = v2;
  sub_18B22C7E4(&v16, v14);
  v3 = MEMORY[0x1E69E7CC8];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v3;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  sub_18B22C8D8(*v6, 0xD00000000000001ELL, 0x800000018B2F6A90, v2, &v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v13;
}

uint64_t AXSettings.Touch.selectors.getter()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_preferActionSliderAlternative);
  sub_18B232DFC(&v1, sel_setPreferActionSliderAlternative_);
  return v2;
}

id AXSettings.Touch.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___preferActionSliderAlternative_Storage] = 0;
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch___lock_preferActionSliderAlternative;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v1[v5] = sub_18B2C9584();
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings5Touch_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v1[v6] = sub_18B2C9564();
  sub_18B2C95B4();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id AXSettings.Touch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B2A955C()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_preferActionSliderAlternative);
  sub_18B232DFC(&v1, sel_setPreferActionSliderAlternative_);
  return v2;
}

uint64_t sub_18B2A9680(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXSettings.Touch();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B2A96D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_18B28B268(0, v1, 0);
  v2 = v24;
  v3 = a1 + 56;
  result = sub_18B2C9C74();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v6 + 36);

    v11 = sub_18B2C9864();

    v13 = *(v24 + 16);
    v12 = *(v24 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_18B28B268((v12 > 1), v13 + 1, 1);
    }

    *(v24 + 16) = v13 + 1;
    *(v24 + 8 * v13 + 32) = v11;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v10);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 64 + 8 * v10);
      v9 = v22;
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_18B16333C(v5, v23, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_18B16333C(v5, v23, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_18B2A9928(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B75B0);
    v2 = sub_18B2C9DF4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    v9 = 0;
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    v11 = v10;
    MEMORY[0x18CFF0C00]();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_18B2A9B60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___VOActivityKeyedArchiveHelper_hashableValue;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_18B2A9C10(uint64_t a1)
{
  v3 = OBJC_IVAR___VOActivityKeyedArchiveHelper_hashableValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id AXSettings.VoiceOver.Activity.ArchiveHelper.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18B2AB604();

  return v4;
}

id AXSettings.VoiceOver.Activity.ArchiveHelper.init(coder:)(void *a1)
{
  v2 = sub_18B2AB604();

  return v2;
}

id AXSettings.VoiceOver.Activity.ArchiveHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSettings.VoiceOver.Activity.ArchiveHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXSettings.VoiceOver.Activity.ArchiveHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static AXSettings.VoiceOver.Activity._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = _sSo10AXSettingsC22AccessibilityUtilitiesE9VoiceOverC8ActivityV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXVoiceeF0C_AGSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_18B2C9DB4();
    __break(1u);
  }

  return result;
}

uint64_t static AXSettings.VoiceOver.Activity._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7520);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  if (a1)
  {
    v10 = type metadata accessor for AXSettings.VoiceOver.Activity();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = a1;
    if (_sSo10AXSettingsC22AccessibilityUtilitiesE9VoiceOverC8ActivityV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXVoiceeF0C_AGSgztFZ_0(v12, v9))
    {
      sub_18B163044(v9, v7, &unk_1EA9B7520);
      if ((*(v11 + 48))(v7, 1, v10) != 1)
      {
        sub_18B1630AC(v9, &unk_1EA9B7520);

        return sub_18B2AC6AC(v7, a2);
      }

      sub_18B1630AC(v7, &unk_1EA9B7520);
    }
  }

  result = sub_18B2C9DB4();
  __break(1u);
  return result;
}

uint64_t sub_18B2AA260(void *a1, uint64_t a2)
{
  result = _sSo10AXSettingsC22AccessibilityUtilitiesE9VoiceOverC8ActivityV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXVoiceeF0C_AGSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_18B2C9DB4();
    __break(1u);
  }

  return result;
}

id _sSo10AXSettingsC22AccessibilityUtilitiesE9VoiceOverC8ActivityV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXVoiceeF0C_AGSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v169 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v169 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v211 = &v169 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7520);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v169 - v13;
  v15 = sub_18B2C8FD4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v169 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v169 - v23;
  v25 = [a1 uuid];
  if (!v25)
  {
    return 0;
  }

  v210 = a2;
  v208 = v6;
  v26 = v25;
  sub_18B2C8FB4();

  v27 = *(v16 + 32);
  v27(v24, v22, v15);
  v28 = [a1 name];
  if (!v28)
  {
    (*(v16 + 8))(v24, v15);
    return 0;
  }

  v202 = v27;
  v203 = v16 + 32;
  v29 = v28;
  v30 = sub_18B2C9894();
  v200 = v31;
  v201 = v30;

  v32 = [a1 textualContexts];
  if (v32)
  {
    v33 = v32;
    v34 = v24;
    v35 = v19;
    v36 = v16;
    v37 = sub_18B2C9B14();

    v38 = sub_18B2A96D8(v37);
    v16 = v36;
    v19 = v35;
    v24 = v34;

    v39 = sub_18B295898(v38);
  }

  else
  {
    v39 = 0;
  }

  v41 = v211;
  (*(v16 + 16))(v19, v24, v15);
  v42 = [a1 appIdentifiers];
  if (v42)
  {
    v43 = v42;
    v199 = sub_18B2C9B14();
  }

  else
  {
    v199 = 0;
  }

  v44 = [a1 punctuationGroup];
  if (v44)
  {
    v45 = v44;
    sub_18B2C8FB4();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  (*(v16 + 56))(v41, v46, 1, v15);
  v47 = [a1 tableHeaders];
  if (v47)
  {
    v48 = v47;
    v198 = [v47 BOOLValue];
  }

  else
  {
    v198 = 2;
  }

  v49 = [a1 tableRowAndColumn];
  if (v49)
  {
    v50 = v49;
    v197 = [v49 BOOLValue];
  }

  else
  {
    v197 = 2;
  }

  v51 = [a1 speakEmojis];
  if (v51)
  {
    v52 = v51;
    v196 = [v51 BOOLValue];
  }

  else
  {
    v196 = 2;
  }

  v53 = [a1 imageDescriptions];
  if (v53)
  {
    v54 = v53;
    v195 = [v53 BOOLValue];
  }

  else
  {
    v195 = 2;
  }

  v55 = [a1 hints];
  if (v55)
  {
    v56 = v55;
    v194 = [v55 BOOLValue];
  }

  else
  {
    v194 = 2;
  }

  v57 = [a1 containerFeedback];
  v193 = v57;
  if (v57)
  {

    result = [a1 containerFeedback];
    if (!result)
    {
      __break(1u);
      goto LABEL_119;
    }

    v59 = result;
    v192 = [result integerValue];
  }

  else
  {
    v192 = 0;
  }

  v60 = [a1 numberFeedback];
  v191 = v60;
  if (v60)
  {

    result = [a1 numberFeedback];
    if (result)
    {
      v61 = result;
      v190 = [result integerValue];

      goto LABEL_37;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v190 = 0;
LABEL_37:
  v62 = [a1 typingStyle];
  v189 = v62;
  if (v62)
  {

    result = [a1 typingStyle];
    if (result)
    {
      v63 = result;
      LODWORD(v64) = [result intValue];

      v64 = v64;
      goto LABEL_41;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v64 = 0;
LABEL_41:
  v65 = [a1 navigationStyle];
  v209 = v9;
  v188 = v15;
  v187 = v65;
  if (!v65)
  {
    v182 = 0;
    goto LABEL_45;
  }

  result = [a1 navigationStyle];
  if (!result)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v66 = result;
  v182 = [result integerValue];

LABEL_45:
  v186 = v16;
  v67 = [a1 voiceSelection];
  if (v67 && (v68 = v67, v69 = [v67 voiceId], v68, v69))
  {
    v70 = sub_18B2C9894();
    v206 = v71;
    v207 = v70;
  }

  else
  {
    v206 = 0;
    v207 = 0;
  }

  v72 = [a1 voiceSelection];
  if (v72 && (v73 = v72, v74 = [v72 rate], v73, v74))
  {
    [v74 floatValue];
    v76 = v75;

    v204 = 0;
    v205 = v76;
  }

  else
  {
    v205 = 0;
    v204 = 1;
  }

  v77 = [a1 voiceSelection];
  v183 = v64;
  if (v77)
  {
    v78 = v77;
    v79 = [v77 pitch];

    if (v79)
    {
      [v79 floatValue];
    }
  }

  v80 = [a1 voiceSelection];
  v185 = v19;
  v184 = v39;
  if (v80 && (v81 = v80, v82 = [v80 volume], v81, v82))
  {
    [v82 floatValue];

    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  v84 = [a1 voiceSelection];
  if (v84)
  {
    v85 = v84;
    v86 = [v84 effects];

    if (v86)
    {
      sub_18B2C9BC4();
      v87 = sub_18B2C99F4();

      v212 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7500);
      swift_dynamicCast();
    }
  }

  v88 = [a1 voiceSelection];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 voiceSettings];

    if (v90)
    {
      sub_18B2862C0(0, &qword_1ED653B98);
      v91 = sub_18B2C9814();

      sub_18B2A9928(v91);
    }
  }

  v92 = sub_18B2C9014();
  (*(*(v92 - 8) + 56))(v208, 1, 1, v92);
  LOBYTE(v212) = v83;
  v93 = v209;
  sub_18B2C93F4();
  v94 = sub_18B2C9424();
  (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
  v95 = [a1 speechMuted];
  if (v95)
  {
    v96 = v95;
    v97 = [v95 BOOLValue];
  }

  else
  {
    v97 = 2;
  }

  v98 = [a1 soundMuted];
  if (v98)
  {
    v99 = v98;
    v100 = [v98 BOOLValue];
  }

  else
  {
    v100 = 2;
  }

  v101 = [a1 audioDucking];
  v102 = v101;
  if (v101)
  {

    result = [a1 audioDucking];
    if (result)
    {
      v103 = result;
      v104 = [result integerValue];

      goto LABEL_76;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v104 = 0;
LABEL_76:
  v105 = [a1 audioDuckingAmount];
  v106 = v105;
  v208 = v102;
  if (v105)
  {
    [v105 floatValue];
    v108 = v107;
  }

  else
  {
    v108 = 0;
  }

  v109 = [a1 modifierKeys];
  v110 = v109;
  if (v109)
  {

    result = [a1 modifierKeys];
    if (result)
    {
      v111 = result;
      v112 = [result integerValue];

      goto LABEL_83;
    }

LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v112 = 0;
LABEL_83:
  v113 = [a1 brailleStatusCellGeneral];
  if (v113)
  {
    v114 = v113;
    LODWORD(v205) = [v113 BOOLValue];
  }

  else
  {
    LODWORD(v205) = 2;
  }

  v115 = [a1 brailleStatusCellText];
  if (v115)
  {
    v116 = v115;
    v204 = [v115 BOOLValue];
  }

  else
  {
    v204 = 2;
  }

  v117 = [a1 brailleTable];
  if (v117)
  {
    v118 = v117;
    v181 = sub_18B2C9894();
    v180 = v119;
  }

  else
  {
    v181 = 0;
    v180 = 0;
  }

  v120 = [a1 brailleInputTable];
  v206 = v104;
  if (v120)
  {
    v121 = v120;
    v179 = sub_18B2C9894();
    v178 = v122;
  }

  else
  {
    v179 = 0;
    v178 = 0;
  }

  v123 = [a1 brailleOutput];
  v124 = v123;
  LODWORD(v207) = v100;
  if (v123)
  {

    result = [a1 brailleOutput];
    if (result)
    {
      v125 = result;
      v176 = [result integerValue];

      goto LABEL_99;
    }

LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v176 = 0;
LABEL_99:
  v126 = [a1 brailleInput];
  v127 = v126;
  v177 = v112;
  if (!v126)
  {
    v129 = v24;
    v175 = 0;
    goto LABEL_103;
  }

  result = [a1 brailleInput];
  if (!result)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v128 = result;
  v129 = v24;
  v175 = [result integerValue];

LABEL_103:
  v130 = [a1 brailleAutoAdvanceDuration];
  v131 = v130;
  if (!v130)
  {
    sub_18B1630AC(v210, &unk_1EA9B7520);
    v134 = 0;
    goto LABEL_107;
  }

  result = [a1 brailleAutoAdvanceDuration];
  if (result)
  {
    v132 = result;
    sub_18B1630AC(v210, &unk_1EA9B7520);
    [v132 doubleValue];
    v134 = v133;

LABEL_107:
    v135 = [a1 brailleAlerts];
    v174 = v97;
    if (v135)
    {
      v136 = v135;
      v173 = [v135 BOOLValue];
    }

    else
    {
      v173 = 2;
    }

    v137 = [a1 brailleFormatting];
    if (v137)
    {
      v138 = v137;
      v172 = [v137 BOOLValue];
    }

    else
    {
      v172 = 2;
    }

    v139 = [a1 brailleStartAutoActivateOnTextFields];
    if (v139)
    {
      v140 = v139;
      v171 = [v139 BOOLValue];
    }

    else
    {
      v171 = 2;
    }

    v170 = v131 == 0;
    v169 = v127 == 0;
    v141 = v106 == 0;
    v142 = v208 == 0;
    v143 = v187 == 0;
    v144 = v189 == 0;
    v145 = v191 == 0;
    v146 = v193 == 0;
    v147 = v129;
    v148 = v188;
    (*(v186 + 8))(v147, v188);
    v202(v14, v185, v148);
    v149 = type metadata accessor for AXSettings.VoiceOver.Activity();
    v150 = &v14[v149[5]];
    v151 = v200;
    *v150 = v201;
    *(v150 + 1) = v151;
    *&v14[v149[6]] = v184;
    *&v14[v149[7]] = v199;
    sub_18B26F738(v211, &v14[v149[8]], &unk_1EA9B74F0);
    v152 = v197;
    v14[v149[9]] = v198;
    v14[v149[10]] = v152;
    v153 = v195;
    v14[v149[11]] = v196;
    v14[v149[12]] = v153;
    v14[v149[13]] = v194;
    v154 = &v14[v149[14]];
    *v154 = v192;
    v154[8] = v146;
    v155 = &v14[v149[15]];
    *v155 = v190;
    v155[8] = v145;
    v156 = &v14[v149[16]];
    *v156 = v183;
    v156[8] = v144;
    v157 = &v14[v149[17]];
    *v157 = v182;
    v157[8] = v143;
    sub_18B26F738(v209, &v14[v149[18]], &qword_1EA9B63D8);
    v14[v149[19]] = v174;
    v14[v149[20]] = v207;
    v158 = &v14[v149[21]];
    *v158 = v206;
    v158[8] = v142;
    v159 = &v14[v149[22]];
    *v159 = v108;
    v159[4] = v141;
    v160 = &v14[v149[23]];
    *v160 = v177;
    v160[8] = v110 == 0;
    v161 = v204;
    v14[v149[24]] = v205;
    v14[v149[25]] = v161;
    v162 = &v14[v149[26]];
    v163 = v180;
    *v162 = v181;
    v162[1] = v163;
    v164 = &v14[v149[27]];
    v165 = v178;
    *v164 = v179;
    v164[1] = v165;
    v166 = &v14[v149[28]];
    *v166 = v176;
    v166[8] = v124 == 0;
    v167 = &v14[v149[29]];
    *v167 = v175;
    v167[8] = v169;
    v168 = &v14[v149[30]];
    *v168 = v134;
    v168[8] = v170;
    v14[v149[31]] = v173;
    v14[v149[32]] = v172;
    v14[v149[33]] = v171;
    v40 = 1;
    (*(*(v149 - 1) + 56))(v14, 0, 1, v149);
    sub_18B26F738(v14, v210, &unk_1EA9B7520);
    return v40;
  }

LABEL_126:
  __break(1u);
  return result;
}

id sub_18B2AB604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B75B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18B2FB200;
  *(v0 + 32) = 25705;
  *(v0 + 40) = 0xE200000000000000;
  sub_18B2862C0(0, &qword_1EA9B75C0);
  sub_18B2C9BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B75C8);
  sub_18B2AC8E8();
  sub_18B2C9D14();
  *(v0 + 88) = 1701667182;
  *(v0 + 96) = 0xE400000000000000;
  sub_18B2862C0(0, &unk_1EA9B75E0);
  v1 = sub_18B2C9BD4();
  sub_18B2C9884();

  v84 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6868);
  sub_18B2ACA70(&qword_1EA9B75F0, &qword_1EA9B6868);
  sub_18B2C9D14();
  *(v0 + 144) = 0x436C617574786574;
  *(v0 + 152) = 0xEF73747865746E6FLL;
  sub_18B2862C0(0, &qword_1EA9B75F8);
  sub_18B2C9BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7600);
  sub_18B2AC9D4();
  sub_18B2C9D14();
  strcpy((v0 + 200), "appIdentifiers");
  *(v0 + 215) = -18;
  sub_18B2C9BD4();
  sub_18B2C9D14();
  *(v0 + 256) = 0xD000000000000010;
  *(v0 + 264) = 0x800000018B2F5460;
  v83 = sub_18B2C9BD4();
  sub_18B2C9D14();
  strcpy((v0 + 312), "tableHeaders");
  *(v0 + 325) = 0;
  *(v0 + 326) = -5120;
  sub_18B2862C0(0, &qword_1ED653B98);
  v2 = sub_18B2C9BD4();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 2;
  }

  LOBYTE(v83) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6900);
  sub_18B2ACA70(&qword_1EA9B7620, &qword_1EA9B6900);
  sub_18B2C9D14();
  *(v0 + 368) = 0xD000000000000011;
  *(v0 + 376) = 0x800000018B2F5480;
  v5 = sub_18B2C9BD4();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 2;
  }

  LOBYTE(v83) = v7;
  sub_18B2C9D14();
  *(v0 + 424) = 0x6F6D456B61657073;
  *(v0 + 432) = 0xEB0000000073696ALL;
  v8 = sub_18B2C9BD4();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 2;
  }

  LOBYTE(v83) = v10;
  sub_18B2C9D14();
  *(v0 + 480) = 0xD000000000000011;
  *(v0 + 488) = 0x800000018B2F54A0;
  v11 = sub_18B2C9BD4();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 BOOLValue];
  }

  else
  {
    v13 = 2;
  }

  LOBYTE(v83) = v13;
  sub_18B2C9D14();
  *(v0 + 536) = 0x73746E6968;
  *(v0 + 544) = 0xE500000000000000;
  v14 = sub_18B2C9BD4();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 BOOLValue];
  }

  else
  {
    v16 = 2;
  }

  LOBYTE(v83) = v16;
  sub_18B2C9D14();
  *(v0 + 592) = 0xD000000000000011;
  *(v0 + 600) = 0x800000018B2F54C0;
  v17 = sub_18B2C9BD4();
  v18 = v17;
  if (v17)
  {
    v19 = [v17 integerValue];
  }

  else
  {
    v19 = 0;
  }

  v83 = v19;
  LOBYTE(v84) = v18 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7628);
  sub_18B2ACA70(&qword_1EA9B7630, &qword_1EA9B7628);
  sub_18B2C9D14();
  strcpy((v0 + 648), "numberFeedback");
  *(v0 + 663) = -18;
  v20 = sub_18B2C9BD4();
  v21 = v20;
  if (v20)
  {
    v22 = [v20 integerValue];
  }

  else
  {
    v22 = 0;
  }

  v83 = v22;
  LOBYTE(v84) = v21 == 0;
  sub_18B2C9D14();
  *(v0 + 704) = 0x7453676E69707974;
  *(v0 + 712) = 0xEB00000000656C79;
  v23 = sub_18B2C9BD4();
  v24 = v23;
  if (v23)
  {
    v25 = [v23 integerValue];
  }

  else
  {
    v25 = 0;
  }

  v83 = v25;
  LOBYTE(v84) = v24 == 0;
  sub_18B2C9D14();
  *(v0 + 760) = 0x697461676976616ELL;
  *(v0 + 768) = 0xEF656C7974536E6FLL;
  v26 = sub_18B2C9BD4();
  v27 = v26;
  if (v26)
  {
    [v26 integerValue];
  }

  sub_18B2C9D14();
  *(v0 + 816) = 0x6564496563696F76;
  *(v0 + 824) = 0xEF7265696669746ELL;
  v28 = sub_18B2C9BD4();
  sub_18B2C9884();

  v83 = 0;
  v84 = 0;
  sub_18B2C9D14();
  *(v0 + 872) = 0x6152686365657073;
  *(v0 + 880) = 0xEA00000000006574;
  v29 = sub_18B2C9BD4();
  v30 = v29;
  v31 = 0;
  v32 = 0;
  if (v29)
  {
    [v29 floatValue];
    v32 = v33;
  }

  LODWORD(v83) = v32;
  BYTE4(v83) = v30 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7638);
  sub_18B2ACA70(&qword_1EA9B7640, &qword_1EA9B7638);
  sub_18B2C9D14();
  *(v0 + 928) = 0x656D756C6F76;
  *(v0 + 936) = 0xE600000000000000;
  v34 = sub_18B2C9BD4();
  v35 = v34;
  if (v34)
  {
    [v34 floatValue];
    v31 = v36;
  }

  LODWORD(v83) = v31;
  BYTE4(v83) = v35 == 0;
  sub_18B2C9D14();
  *(v0 + 984) = 0x754D686365657073;
  *(v0 + 992) = 0xEB00000000646574;
  v37 = sub_18B2C9BD4();
  if (v37)
  {
    v38 = v37;
    v39 = [v37 BOOLValue];
  }

  else
  {
    v39 = 2;
  }

  LOBYTE(v83) = v39;
  sub_18B2C9D14();
  *(v0 + 1040) = 0x74754D646E756F73;
  *(v0 + 1048) = 0xEA00000000006465;
  v40 = sub_18B2C9BD4();
  if (v40)
  {
    v41 = v40;
    v42 = [v40 BOOLValue];
  }

  else
  {
    v42 = 2;
  }

  LOBYTE(v83) = v42;
  sub_18B2C9D14();
  strcpy((v0 + 1096), "audioDucking");
  *(v0 + 1109) = 0;
  *(v0 + 1110) = -5120;
  v43 = sub_18B2C9BD4();
  v44 = v43;
  if (v43)
  {
    v45 = [v43 integerValue];
  }

  else
  {
    v45 = 0;
  }

  v83 = v45;
  LOBYTE(v84) = v44 == 0;
  sub_18B2C9D14();
  *(v0 + 1152) = 0xD000000000000012;
  *(v0 + 1160) = 0x800000018B2F54E0;
  v46 = sub_18B2C9BD4();
  v47 = v46;
  if (v46)
  {
    [v46 doubleValue];
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v83 = v49;
  LOBYTE(v84) = v47 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7648);
  sub_18B2ACA70(&qword_1EA9B7650, &qword_1EA9B7648);
  sub_18B2C9D14();
  strcpy((v0 + 1208), "modifierKeys");
  *(v0 + 1221) = 0;
  *(v0 + 1222) = -5120;
  v50 = sub_18B2C9BD4();
  v51 = v50;
  if (v50)
  {
    v52 = [v50 integerValue];
  }

  else
  {
    v52 = 0;
  }

  v83 = v52;
  LOBYTE(v84) = v51 == 0;
  sub_18B2C9D14();
  *(v0 + 1264) = 0xD000000000000018;
  *(v0 + 1272) = 0x800000018B2F5500;
  v53 = sub_18B2C9BD4();
  if (v53)
  {
    v54 = v53;
    v55 = [v53 BOOLValue];
  }

  else
  {
    v55 = 2;
  }

  LOBYTE(v83) = v55;
  sub_18B2C9D14();
  *(v0 + 1320) = 0xD000000000000015;
  *(v0 + 1328) = 0x800000018B2F5520;
  v56 = sub_18B2C9BD4();
  if (v56)
  {
    v57 = v56;
    [v56 BOOLValue];
  }

  sub_18B2C9D14();
  strcpy((v0 + 1376), "brailleTable");
  *(v0 + 1389) = 0;
  *(v0 + 1390) = -5120;
  v58 = sub_18B2C9BD4();
  sub_18B2C9884();

  sub_18B2C9D14();
  *(v0 + 1432) = 0xD000000000000011;
  *(v0 + 1440) = 0x800000018B2F5540;
  v59 = sub_18B2C9BD4();
  sub_18B2C9884();

  v83 = 0;
  v84 = 0;
  sub_18B2C9D14();
  strcpy((v0 + 1488), "brailleOutput");
  *(v0 + 1502) = -4864;
  v60 = sub_18B2C9BD4();
  v61 = v60;
  if (v60)
  {
    v62 = [v60 integerValue];
  }

  else
  {
    v62 = 0;
  }

  v83 = v62;
  LOBYTE(v84) = v61 == 0;
  sub_18B2C9D14();
  strcpy((v0 + 1544), "brailleInput");
  *(v0 + 1557) = 0;
  *(v0 + 1558) = -5120;
  v63 = sub_18B2C9BD4();
  v64 = v63;
  if (v63)
  {
    v65 = [v63 integerValue];
  }

  else
  {
    v65 = 0;
  }

  v83 = v65;
  LOBYTE(v84) = v64 == 0;
  sub_18B2C9D14();
  *(v0 + 1600) = 0xD00000000000001ALL;
  *(v0 + 1608) = 0x800000018B2F5560;
  v66 = sub_18B2C9BD4();
  v67 = v66;
  if (v66)
  {
    [v66 doubleValue];
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v83 = v69;
  LOBYTE(v84) = v67 == 0;
  sub_18B2C9D14();
  strcpy((v0 + 1656), "brailleAlerts");
  *(v0 + 1670) = -4864;
  v70 = sub_18B2C9BD4();
  if (v70)
  {
    v71 = v70;
    v72 = [v70 BOOLValue];
  }

  else
  {
    v72 = 2;
  }

  LOBYTE(v83) = v72;
  sub_18B2C9D14();
  *(v0 + 1712) = 0xD000000000000011;
  *(v0 + 1720) = 0x800000018B2F5580;
  v73 = sub_18B2C9BD4();
  if (v73)
  {
    v74 = v73;
    v75 = [v73 BOOLValue];
  }

  else
  {
    v75 = 2;
  }

  LOBYTE(v83) = v75;
  sub_18B2C9D14();
  *(v0 + 1768) = 0xD000000000000024;
  *(v0 + 1776) = 0x800000018B2F55A0;
  v76 = sub_18B2C9BD4();
  if (v76)
  {
    v77 = v76;
    v78 = [v76 BOOLValue];
  }

  else
  {
    v78 = 2;
  }

  LOBYTE(v83) = v78;
  sub_18B2C9D14();
  v79 = sub_18B2B5804(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7658);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v81[OBJC_IVAR___VOActivityKeyedArchiveHelper_hashableValue] = v79;
  v82.receiver = v81;
  v82.super_class = type metadata accessor for AXSettings.VoiceOver.Activity.ArchiveHelper();
  return objc_msgSendSuper2(&v82, sel_init);
}

uint64_t sub_18B2AC6AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSettings.VoiceOver.Activity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B2AC7A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B2AC8E8()
{
  result = qword_1EA9B75D0;
  if (!qword_1EA9B75D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B75C8);
    sub_18B2AC984(&qword_1EA9B75D8, &qword_1EA9B75C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B75D0);
  }

  return result;
}

uint64_t sub_18B2AC984(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_18B2862C0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B2AC9D4()
{
  result = qword_1EA9B7608;
  if (!qword_1EA9B7608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B7600);
    sub_18B2AC984(&unk_1EA9B7610, &qword_1EA9B75F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7608);
  }

  return result;
}

uint64_t sub_18B2ACA70(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AXSettings.NameRecognition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AXSettings.NameRecognition._$userNeedsDefaultEnglishLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___lock_userNeedsDefaultEnglishLocale);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2ACB98@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___userNeedsDefaultEnglishLocale_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___userNeedsDefaultEnglishLocale_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___userNeedsDefaultEnglishLocale_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2AD92C(&qword_1EA9B76E0);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t AXSettings.NameRecognition.userNeedsDefaultEnglishLocaleStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B2ACDF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___lock_userNeedsDefaultEnglishLocale);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.NameRecognition.userNeedsDefaultEnglishLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___lock_userNeedsDefaultEnglishLocale);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.NameRecognition.userNeedsDefaultEnglishLocale.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___lock_userNeedsDefaultEnglishLocale);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.NameRecognition.userNeedsDefaultEnglishLocale.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___lock_userNeedsDefaultEnglishLocale;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2AD09C;
}

uint64_t sub_18B2AD09C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.NameRecognition.defaultEnglishLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition_defaultEnglishLocale;
  swift_beginAccess();
  v4 = sub_18B2C90B4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t AXSettings.NameRecognition.defaultEnglishLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition_defaultEnglishLocale;
  swift_beginAccess();
  v4 = sub_18B2C90B4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t AXSettings.NameRecognition.settings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___lock_userNeedsDefaultEnglishLocale);
  v10 = sub_18B2AD970;
  v11 = &v12;

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v16);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v18 = sub_18B235E04();
  *&v16 = v2;
  sub_18B22C7E4(&v16, v14);
  v3 = MEMORY[0x1E69E7CC8];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v3;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  sub_18B22C8D8(*v6, 0xD00000000000001ELL, 0x800000018B2F6D00, v2, &v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v13;
}

id AXSettings.NameRecognition.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___userNeedsDefaultEnglishLocale_Storage] = 0;
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition___lock_userNeedsDefaultEnglishLocale;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  sub_18B2C8FE4();
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v1[v5] = sub_18B2C9584();
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings15NameRecognition_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v1[v6] = sub_18B2C9564();
  sub_18B2C95B4();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id AXSettings.NameRecognition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AXSettings.NameRecognition()
{
  result = qword_1ED653CF0;
  if (!qword_1ED653CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B2AD878()
{
  result = sub_18B2C90B4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B2AD92C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXSettings.NameRecognition();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AXSettings.MotionCues.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AXSettings.MotionCues._$dotSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22EFF4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2ADA48@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotSize_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotSize_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotSize_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6540);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2AF380(&qword_1EA9B7730);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

float sub_18B2ADC44@<S0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize);

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *&v5;
  *a2 = v5;
  return result;
}

float AXSettings.MotionCues.dotSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize);

  os_unfair_lock_lock(v1 + 4);
  sub_18B2AF3F0(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return *&v3;
}

uint64_t AXSettings.MotionCues.dotSize.setter(float a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize);

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *&v5 = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.MotionCues.dotSize.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B2AF3F0(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 28);
  return sub_18B2ADF88;
}

uint64_t sub_18B2ADF88(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 28) = v2;
  sub_18B2C9484();
}

BOOL AXSettings.MotionCues.increasedSizeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize);

  os_unfair_lock_lock(v1 + 4);
  sub_18B2AF3F0(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return *&v3 == 1.0;
}

Swift::Void __swiftcall AXSettings.MotionCues.setIncreasedSizeEnabled(_:)(Swift::Bool a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize);

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  if (a1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.5;
  }

  os_unfair_lock_unlock(v3 + 4);

  *&v5 = v4;
  sub_18B2C9484();
}

uint64_t AXSettings.MotionCues._$dotDensity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity);

  os_unfair_lock_lock(v1 + 4);
  sub_18B2AF3F0(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2AE314@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotDensity_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotDensity_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotDensity_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6540);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2AF380(&qword_1EA9B7730);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2AE4D8()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

float sub_18B2AE548@<S0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity);

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = *&v5;
  *a2 = v5;
  return result;
}

float AXSettings.MotionCues.dotDensity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity);

  os_unfair_lock_lock(v1 + 4);
  sub_18B2AF3F0(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return *&v3;
}

uint64_t AXSettings.MotionCues.dotDensity.setter(float a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity);

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *&v5 = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.MotionCues.dotDensity.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B2AF3F0(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 28);
  return sub_18B2AE88C;
}

uint64_t sub_18B2AE88C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 28) = v2;
  sub_18B2C9484();
}

BOOL AXSettings.MotionCues.increasedDensityEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity);

  os_unfair_lock_lock(v1 + 4);
  sub_18B2AF3F0(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return *&v3 == 2.0;
}

Swift::Void __swiftcall AXSettings.MotionCues.setIncreasedDensityEnabled(_:)(Swift::Bool a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity);

  os_unfair_lock_lock(v3 + 4);
  sub_18B2AF3F0(&v5);
  if (a1)
  {
    v4 = 2.0;
  }

  else
  {
    v4 = 1.0;
  }

  os_unfair_lock_unlock(v3 + 4);

  *&v5 = v4;
  sub_18B2C9484();
}

uint64_t AXSettings.MotionCues.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize);
  v25 = sub_18B2AF3C0;
  v26 = &v27;

  os_unfair_lock_lock(v2 + 4);
  sub_18B2AF3F0(&v31);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v31;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6540);
  v32 = v4;
  v5 = sub_18B2AF188();
  v33 = v5;
  *&v31 = v3;
  sub_18B22C7E4(&v31, v29);
  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v6;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10);
  sub_18B22CA98(*v10, 0x657A6953746F6424, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v12 = v28;
  v13 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity);
  v24 = v1;
  v21 = sub_18B2AF3D8;
  v22 = &v23;

  os_unfair_lock_lock(v13 + 4);
  sub_18B2AF3F0(&v31);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v31;

  v32 = v4;
  v33 = v5;
  *&v31 = v14;
  sub_18B22C7E4(&v31, v29);
  LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
  v28 = v12;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17);
  sub_18B22CA98(*v17, 0x736E6544746F6424, 0xEB00000000797469, v14, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return v28;
}

id AXSettings.MotionCues.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotSize_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___dotDensity_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues___lock_dotDensity;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v6] = sub_18B2C9584();
  v7 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10MotionCues_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v7] = sub_18B2C9564();
  sub_18B2C95B4();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id AXSettings.MotionCues.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18B2AF188()
{
  result = qword_1EA9B6548;
  if (!qword_1EA9B6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6548);
  }

  return result;
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE10MotionCuesC9selectorsShy10ObjectiveC8SelectorVGvg_0()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_motionCuesDotSize);
  sub_18B232DFC(&v1, sel_setMotionCuesDotSize_);
  sub_18B232DFC(&v1, sel_motionCuesIncreasedSizeEnabled);
  sub_18B232DFC(&v1, sel_setMotionCuesIncreasedSizeEnabled_);
  sub_18B232DFC(&v1, sel_motionCuesDotDensity);
  sub_18B232DFC(&v1, sel_setMotionCuesDotDensity_);
  sub_18B232DFC(&v1, sel_motionCuesIncreasedDensityEnabled);
  sub_18B232DFC(&v1, sel_setMotionCuesIncreasedDensityEnabled_);
  return v2;
}

uint64_t sub_18B2AF380(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXSettings.MotionCues();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AXSettings.Magnifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AXSettings.Magnifier._$enabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___lock_enabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2AF4E4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___enabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___enabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___enabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2B00DC(&qword_1EA9B55C0);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t AXSettings.Magnifier.enabledStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C96C4();
}

uint64_t sub_18B2AF738@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___lock_enabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.Magnifier.enabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___lock_enabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.Magnifier.enabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___lock_enabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.Magnifier.enabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___lock_enabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B2AFA68;
}

uint64_t sub_18B2AFA68(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.Magnifier.settings.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___lock_enabled);
  v10 = sub_18B2B011C;
  v11 = &v12;

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v16);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v18 = sub_18B235E04();
  *&v16 = v2;
  sub_18B22C7E4(&v16, v14);
  v3 = MEMORY[0x1E69E7CC8];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v3;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  sub_18B22C8D8(*v6, 0x64656C62616E6524, 0xE800000000000000, v2, &v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v13;
}

uint64_t AXSettings.Magnifier.selectors.getter()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_magnifierEnabled);
  sub_18B232DFC(&v1, sel_setMagnifierEnabled_);
  return v2;
}

id AXSettings.Magnifier.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___enabled_Storage] = 0;
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier___lock_enabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v1[v5] = sub_18B2C9584();
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9Magnifier_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v1[v6] = sub_18B2C9564();
  sub_18B2C95B4();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id AXSettings.Magnifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B2AFFB8()
{
  v2 = MEMORY[0x1E69E7CD0];
  sub_18B232DFC(&v1, sel_magnifierEnabled);
  sub_18B232DFC(&v1, sel_setMagnifierEnabled_);
  return v2;
}

uint64_t sub_18B2B00DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXSettings.Magnifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B2B0134()
{
  type metadata accessor for SpokenContentSelectionProvider();
  v0 = swift_allocObject();
  result = SpokenContentSelectionProvider.init()();
  qword_1EA9BC248 = v0;
  return result;
}

uint64_t SpokenContentSelectionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  SpokenContentSelectionProvider.init()();
  return v0;
}

uint64_t sub_18B2B01B8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_18B22ECC0(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_18B2B0220(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 32);
    v5 = v4;
  }

  else
  {
    v6 = [objc_opt_self() sharedPreferences];
    v4 = [v6 outputVoice];

    v7 = *(a1 + 32);
    *(a1 + 32) = v4;
    v8 = v4;

    *(a1 + 24) = 1;
  }

  *a2 = v4;
}

uint64_t SpokenContentSelectionProvider.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_siriVoiceChanged name:*MEMORY[0x1E698D090] object:0];

  return v0;
}

uint64_t SpokenContentSelectionProvider.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t SpokenContentSelectionProvider.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

void sub_18B2B0458()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_18B2B5064();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_18B2B04B8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 outputVoice];

  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
}

uint64_t sub_18B2B05A4(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v2[17] = swift_task_alloc();
  v3 = sub_18B2C9094();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_18B2C9014();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E40);
  v2[24] = swift_task_alloc();
  v5 = sub_18B2C90B4();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B2B078C, 0, 0);
}

uint64_t sub_18B2B078C()
{
  v50 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  sub_18B163044(v0[16], v3, &qword_1EA9B6E40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(v0[24], &qword_1EA9B6E40);
    if (qword_1ED653E68 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1ED653E70;
    v5 = OBJC_IVAR___AXSettings_spokenContent;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v0[28] = AXSettings.SpokenContent.resolver.getter();

    v47 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = sub_18B2B0D98;
    v8 = v0[27];

    return v47(v8);
  }

  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  v10 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v12 = v0[20];
  v15 = v0[17];
  v14 = v0[18];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v13 + 8))(v12, v14);
  if ((*(v11 + 48))(v15, 1, v10) == 1)
  {
    v16 = v0[17];
    (*(v0[26] + 8))(v0[27], v0[25]);
    sub_18B1630AC(v16, &qword_1EA9B63D0);
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[17], v0[21]);
    if (qword_1ED653E68 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = qword_1ED653E70;
    v22 = OBJC_IVAR___AXSettings_spokenContent;
    swift_beginAccess();
    v23 = *(v21 + v22);
    v24 = *&v23[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage];
    v25 = swift_task_alloc();
    *(v25 + 16) = v23;
    v26 = swift_task_alloc();
    *(v26 + 16) = sub_18B22661C;
    *(v26 + 24) = v25;
    v27 = v23;

    os_unfair_lock_lock(v24 + 4);
    sub_18B235DBC(&v49);
    os_unfair_lock_unlock(v24 + 4);

    sub_18B2C9474();

    v28 = v0[14];
    if (*(v28 + 16))
    {
      v29 = sub_18B293C80(v0[23]);
      v31 = v0[26];
      v30 = v0[27];
      v32 = v0[25];
      v33 = v0[22];
      v34 = v0[23];
      v35 = v0[21];
      if (v36)
      {
        v37 = v29;
        v45 = v0[15];
        v48 = v0[25];
        v38 = *(v28 + 56);
        v46 = v0[27];
        v17 = sub_18B2C9424();
        v18 = *(v17 - 8);
        (*(v18 + 16))(v45, v38 + *(v18 + 72) * v37, v17);
        (*(v33 + 8))(v34, v35);
        (*(v31 + 8))(v46, v48);

        v19 = 0;
        goto LABEL_10;
      }

      (*(v33 + 8))(v34, v35);
      (*(v31 + 8))(v30, v32);
    }

    else
    {
      v40 = v0[26];
      v39 = v0[27];
      v41 = v0[25];
      v43 = v0[22];
      v42 = v0[23];
      v44 = v0[21];

      (*(v43 + 8))(v42, v44);
      (*(v40 + 8))(v39, v41);
    }
  }

  v17 = sub_18B2C9424();
  v18 = *(v17 - 8);
  v19 = 1;
LABEL_10:
  (*(v18 + 56))(v0[15], v19, 1, v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_18B2B0D98()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2B0EB0, 0, 0);
}

uint64_t sub_18B2B0EB0()
{
  v41 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[17];
    (*(v0[26] + 8))(v0[27], v0[25]);
    sub_18B1630AC(v7, &qword_1EA9B63D0);
LABEL_3:
    v8 = sub_18B2C9424();
    v9 = *(v8 - 8);
    v10 = 1;
    goto LABEL_4;
  }

  (*(v0[22] + 32))(v0[23], v0[17], v0[21]);
  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1ED653E70;
  v14 = OBJC_IVAR___AXSettings_spokenContent;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v16 = *&v15[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings13SpokenContent___lock_voiceSelectionsByLanguage];
  v17 = swift_task_alloc();
  *(v17 + 16) = v15;
  v18 = swift_task_alloc();
  *(v18 + 16) = sub_18B22661C;
  *(v18 + 24) = v17;
  v19 = v15;

  os_unfair_lock_lock(v16 + 4);
  sub_18B235DBC(&v40);
  os_unfair_lock_unlock(v16 + 4);

  sub_18B2C9474();

  v20 = v0[14];
  if (!*(v20 + 16))
  {
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    v35 = v0[22];
    v34 = v0[23];
    v36 = v0[21];

    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    goto LABEL_3;
  }

  v21 = sub_18B293C80(v0[23]);
  v23 = v0[26];
  v22 = v0[27];
  v24 = v0[25];
  v25 = v0[22];
  v26 = v0[23];
  v27 = v0[21];
  if ((v28 & 1) == 0)
  {

    (*(v25 + 8))(v26, v27);
    (*(v23 + 8))(v22, v24);
    goto LABEL_3;
  }

  v29 = v21;
  v37 = v0[15];
  v39 = v0[25];
  v30 = *(v20 + 56);
  v38 = v0[27];
  v8 = sub_18B2C9424();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v37, v30 + *(v9 + 72) * v29, v8);
  (*(v25 + 8))(v26, v27);
  (*(v23 + 8))(v38, v39);

  v10 = 0;
LABEL_4:
  (*(v9 + 56))(v0[15], v10, 1, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_18B2B1324(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22F028;

  return sub_18B2B05A4(a1, a2);
}

BOOL AssistiveTouchSelectionProvider.enabled.getter()
{
  if (*v0 != 1)
  {
    return 1;
  }

  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1ED653E70;
  v2 = OBJC_IVAR___AXSettings_assistiveTouch;
  v3 = swift_beginAccess();
  v4 = *(*(v1 + v2) + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled);
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v6;

  os_unfair_lock_lock(v4 + 4);
  sub_18B235DBC(&v9);
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  return v9 == 1 && _AXSAssistiveTouchScannerEnabled() != 0;
}

uint64_t AssistiveTouchSelectionProvider.selection(forLocale:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v2[11] = swift_task_alloc();
  v3 = sub_18B2C9094();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_18B2C9014();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E40);
  v2[18] = swift_task_alloc();
  v5 = sub_18B2C90B4();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B2B1740, 0, 0);
}

uint64_t sub_18B2B1740()
{
  v49 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_18B163044(v0[10], v3, &qword_1EA9B6E40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(v0[18], &qword_1EA9B6E40);
    sub_18B2C9154();
    v0[22] = sub_18B2C9144();
    v46 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_18B2B1D48;
    v5 = v0[21];

    return v46(v5);
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v7 = v0[15];
    v8 = v0[16];
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    sub_18B2C90A4();
    sub_18B2C9084();
    (*(v10 + 8))(v9, v11);
    if ((*(v8 + 48))(v12, 1, v7) == 1)
    {
      v13 = v0[11];
      v14 = v0[9];
      (*(v0[20] + 8))(v0[21], v0[19]);
      sub_18B1630AC(v13, &qword_1EA9B63D0);
      v15 = sub_18B2C9424();
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    }

    else
    {
      (*(v0[16] + 32))(v0[17], v0[11], v0[15]);
      if (qword_1ED653E68 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v17 = qword_1ED653E70;
      v18 = OBJC_IVAR___AXSettings_assistiveTouch;
      swift_beginAccess();
      v19 = *(v17 + v18);
      v20 = *&v19[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage];
      v21 = swift_task_alloc();
      *(v21 + 16) = v19;
      v22 = swift_task_alloc();
      *(v22 + 16) = sub_18B296D58;
      *(v22 + 24) = v21;
      v23 = v19;

      os_unfair_lock_lock(v20 + 4);
      sub_18B23602C(&v48);
      os_unfair_lock_unlock(v20 + 4);

      sub_18B2C9474();

      if (*(v0[8] + 16))
      {
        sub_18B293C80(v0[17]);
        v25 = v0[20];
        v24 = v0[21];
        v26 = v0[19];
        v27 = v0[16];
        v28 = v0[17];
        v29 = v0[15];
        v30 = v0[9];
        if (v31)
        {
          v47 = v0[21];
          v45 = v0[19];
          v32 = sub_18B2C9424();
          v33 = v30;
          v34 = *(v32 - 8);
          v35 = v33;
          (*(v34 + 16))();
          (*(v27 + 8))(v28, v29);
          (*(v25 + 8))(v47, v45);

          (*(v34 + 56))(v35, 0, 1, v32);
        }

        else
        {

          (*(v27 + 8))(v28, v29);
          (*(v25 + 8))(v24, v26);
          v44 = sub_18B2C9424();
          (*(*(v44 - 8) + 56))(v30, 1, 1, v44);
        }
      }

      else
      {
        v37 = v0[20];
        v36 = v0[21];
        v38 = v0[19];
        v40 = v0[16];
        v39 = v0[17];
        v41 = v0[15];
        v42 = v0[9];

        (*(v40 + 8))(v39, v41);
        (*(v37 + 8))(v36, v38);
        v43 = sub_18B2C9424();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
      }
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_18B2B1D48()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2B1E60, 0, 0);
}

uint64_t sub_18B2B1E60()
{
  v43 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[11];
    v8 = v0[9];
    (*(v0[20] + 8))(v0[21], v0[19]);
    sub_18B1630AC(v7, &qword_1EA9B63D0);
    v9 = sub_18B2C9424();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[11], v0[15]);
    if (qword_1ED653E68 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = qword_1ED653E70;
    v13 = OBJC_IVAR___AXSettings_assistiveTouch;
    swift_beginAccess();
    v14 = *(v12 + v13);
    v15 = *&v14[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage];
    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    v17 = swift_task_alloc();
    *(v17 + 16) = sub_18B296D58;
    *(v17 + 24) = v16;
    v18 = v14;

    os_unfair_lock_lock(v15 + 4);
    sub_18B23602C(&v42);
    os_unfair_lock_unlock(v15 + 4);

    sub_18B2C9474();

    if (*(v0[8] + 16))
    {
      sub_18B293C80(v0[17]);
      v20 = v0[20];
      v19 = v0[21];
      v21 = v0[19];
      v22 = v0[16];
      v23 = v0[17];
      v24 = v0[15];
      v25 = v0[9];
      if (v26)
      {
        v41 = v0[21];
        v40 = v0[19];
        v27 = sub_18B2C9424();
        v28 = v25;
        v29 = *(v27 - 8);
        v30 = v28;
        (*(v29 + 16))();
        (*(v22 + 8))(v23, v24);
        (*(v20 + 8))(v41, v40);

        (*(v29 + 56))(v30, 0, 1, v27);
      }

      else
      {

        (*(v22 + 8))(v23, v24);
        (*(v20 + 8))(v19, v21);
        v39 = sub_18B2C9424();
        (*(*(v39 - 8) + 56))(v25, 1, 1, v39);
      }
    }

    else
    {
      v32 = v0[20];
      v31 = v0[21];
      v33 = v0[19];
      v35 = v0[16];
      v34 = v0[17];
      v36 = v0[15];
      v37 = v0[9];

      (*(v35 + 8))(v34, v36);
      (*(v32 + 8))(v31, v33);
      v38 = sub_18B2C9424();
      (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_18B2B234C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22F028;

  return AssistiveTouchSelectionProvider.selection(forLocale:)(a1, a2);
}

uint64_t VoiceOverSelectionProvider.selection(forLocale:)(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v3 = sub_18B2C9094();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v4 = sub_18B2C9014();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v2[39] = swift_task_alloc();
  v5 = sub_18B2C9274();
  v2[40] = v5;
  v2[41] = *(v5 - 8);
  v2[42] = swift_task_alloc();
  v6 = type metadata accessor for UserVoiceConfiguration();
  v2[43] = v6;
  v2[44] = *(v6 - 8);
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E40);
  v2[46] = swift_task_alloc();
  v7 = sub_18B2C90B4();
  v2[47] = v7;
  v2[48] = *(v7 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B2B26FC, 0, 0);
}

uint64_t sub_18B2B26FC()
{
  v0[53] = sub_18B2C9154();
  v0[54] = sub_18B2C9144();
  v4 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_18B2B27C0;
  v2 = v0[51];

  return v4(v2);
}

uint64_t sub_18B2B27C0()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2B28D8, 0, 0);
}

uint64_t sub_18B2B28D8()
{
  v71 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_18B163044(*(v0 + 240), v3, &qword_1EA9B6E40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(*(v0 + 368), &qword_1EA9B6E40);
    *(v0 + 448) = sub_18B2C9144();
    v68 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v4 = swift_task_alloc();
    *(v0 + 456) = v4;
    *v4 = v0;
    v4[1] = sub_18B2B3150;
    v5 = *(v0 + 416);

    return v68(v5);
  }

  v7 = *(v0 + 416);
  v8 = *(v0 + 400);
  v9 = *(v0 + 376);
  v10 = *(v0 + 384);
  (*(v10 + 32))(v8, *(v0 + 368), v9);
  (*(v10 + 16))(v7, v8, v9);
  v11 = sub_18B2C8FF4();
  v13 = v12;
  if (v11 == sub_18B2C8FF4() && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_18B2C9F24();
  }

  v16 = *(v0 + 400);
  v17 = *(v0 + 376);
  v18 = *(v0 + 384);

  (*(v18 + 8))(v16, v17);
  *(v0 + 552) = v15 & 1;
  if (qword_1ED653E68 != -1)
  {
LABEL_29:
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_1ED653E70;
  v20 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = *&v21[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors];
  v23 = swift_task_alloc();
  *(v23 + 16) = v21;
  v24 = swift_task_alloc();
  *(v24 + 16) = sub_18B26BF5C;
  *(v24 + 24) = v23;
  v25 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_18B235DBC(v70);
  os_unfair_lock_unlock(v22 + 4);

  sub_18B2C9474();

  v26 = *(v0 + 208);
  *(v0 + 464) = v26;
  v27 = *(v26 + 16);
  *(v0 + 472) = v27;
  if (!v27)
  {
LABEL_15:
    v33 = *(v0 + 288);
    v34 = *(v0 + 296);
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v38 = *(v0 + 256);
    v37 = *(v0 + 264);

    sub_18B2C90A4();
    sub_18B2C9084();
    (*(v36 + 8))(v35, v37);
    if ((*(v34 + 48))(v38, 1, v33) == 1)
    {
      v39 = *(v0 + 256);
      v40 = *(*(v0 + 384) + 8);
      v40(*(v0 + 408), *(v0 + 376));
      sub_18B1630AC(v39, &qword_1EA9B63D0);
    }

    else
    {
      v41 = *(v0 + 552);
      (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 256), *(v0 + 288));
      if (v41 == 1)
      {
        v42 = qword_1ED653E70;
        v43 = OBJC_IVAR___AXSettings_voiceover;
        swift_beginAccess();
        v44 = *(v42 + v43);
        v45 = *&v44[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage];
        v46 = swift_task_alloc();
        *(v46 + 16) = v44;
        v47 = swift_task_alloc();
        *(v47 + 16) = sub_18B23685C;
        *(v47 + 24) = v46;
        v48 = v44;

        os_unfair_lock_lock(v45 + 4);
        sub_18B23602C(v70);
        os_unfair_lock_unlock(v45 + 4);
        v49 = *(v0 + 296);
        v50 = *(v0 + 304);
        v51 = *(v0 + 288);
        v52 = *(v0 + 248);

        sub_18B2C9474();

        v53 = *(v0 + 216);
        *(v0 + 520) = v53;
        (*(v49 + 16))(v52, v50, v51);
        (*(v49 + 56))(v52, 0, 1, v51);
        v54 = sub_18B2C9144();
        *(v0 + 528) = v54;
        v55 = swift_task_alloc();
        *(v0 + 536) = v55;
        *v55 = v0;
        v55[1] = sub_18B2B4538;
        v56 = *(v0 + 248);
        v57 = *(v0 + 232);

        return Dictionary<>.selection(forLanguage:withResolver:exists:)(v57, v56, v54, 0, v53);
      }

      v62 = *(v0 + 408);
      v63 = *(v0 + 376);
      v64 = *(v0 + 384);
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      v40 = *(v64 + 8);
      v40(v62, v63);
    }

    v65 = *(v0 + 232);
    v66 = sub_18B2C9424();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
    v40(*(v0 + 416), *(v0 + 376));

    v67 = *(v0 + 8);

    return v67();
  }

  v28 = 0;
  *(v0 + 544) = *(*(v0 + 352) + 80);
  while (1)
  {
    *(v0 + 480) = 0;
    *(v0 + 488) = v28;
    v29 = *(v0 + 464);
    if (v28 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v30 = *(v0 + 344);
    sub_18B230B70(v29 + ((*(v0 + 544) + 32) & ~*(v0 + 544)) + *(*(v0 + 352) + 72) * v28, *(v0 + 360));
    *(v0 + 548) = *(v30 + 20);
    v31 = sub_18B2C9404();
    *(v0 + 496) = v32;
    if (v32)
    {
      break;
    }

    sub_18B230BD4(*(v0 + 360));
    v28 = *(v0 + 488) + 1;
    if (v28 == *(v0 + 472))
    {
      goto LABEL_15;
    }
  }

  v58 = v31;
  v59 = v32;
  *(v0 + 504) = sub_18B2C9144();
  v69 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
  v60 = swift_task_alloc();
  *(v0 + 512) = v60;
  *v60 = v0;
  v60[1] = sub_18B2B391C;
  v61 = *(v0 + 312);

  return v69(v61, v58, v59);
}

uint64_t sub_18B2B3150()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2B3268, 0, 0);
}

uint64_t sub_18B2B3268()
{
  v54 = v0;
  *(v0 + 552) = 1;
  if (qword_1ED653E68 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1ED653E70;
  v2 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *&v3[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_voiceRotors];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_18B26BF5C;
  *(v6 + 24) = v5;
  v7 = v3;

  os_unfair_lock_lock(v4 + 4);
  sub_18B235DBC(v53);
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  v8 = *(v0 + 208);
  *(v0 + 464) = v8;
  v9 = *(v8 + 16);
  *(v0 + 472) = v9;
  if (!v9)
  {
LABEL_7:
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    v18 = *(v0 + 272);
    v17 = *(v0 + 280);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);

    sub_18B2C90A4();
    sub_18B2C9084();
    (*(v18 + 8))(v17, v19);
    v21 = (*(v16 + 48))(v20, 1, v15);
    v22 = *(v0 + 256);
    if (v21 == 1)
    {
      v23 = *(*(v0 + 384) + 8);
      v23(*(v0 + 408), *(v0 + 376));
      sub_18B1630AC(v22, &qword_1EA9B63D0);
    }

    else
    {
      v24 = *(v0 + 552);
      (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 256), *(v0 + 288));
      if (v24 == 1)
      {
        v25 = qword_1ED653E70;
        v26 = OBJC_IVAR___AXSettings_voiceover;
        swift_beginAccess();
        v27 = *(v25 + v26);
        v28 = *&v27[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage];
        v29 = swift_task_alloc();
        *(v29 + 16) = v27;
        v30 = swift_task_alloc();
        *(v30 + 16) = sub_18B23685C;
        *(v30 + 24) = v29;
        v31 = v27;

        os_unfair_lock_lock(v28 + 4);
        sub_18B23602C(v53);
        os_unfair_lock_unlock(v28 + 4);
        v32 = *(v0 + 296);
        v33 = *(v0 + 304);
        v34 = *(v0 + 288);
        v35 = *(v0 + 248);

        sub_18B2C9474();

        v36 = *(v0 + 216);
        *(v0 + 520) = v36;
        (*(v32 + 16))(v35, v33, v34);
        (*(v32 + 56))(v35, 0, 1, v34);
        v37 = sub_18B2C9144();
        *(v0 + 528) = v37;
        v38 = swift_task_alloc();
        *(v0 + 536) = v38;
        *v38 = v0;
        v38[1] = sub_18B2B4538;
        v39 = *(v0 + 248);
        v40 = *(v0 + 232);

        return Dictionary<>.selection(forLanguage:withResolver:exists:)(v40, v39, v37, 0, v36);
      }

      v46 = *(v0 + 408);
      v47 = *(v0 + 376);
      v48 = *(v0 + 384);
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      v23 = *(v48 + 8);
      v23(v46, v47);
    }

    v49 = *(v0 + 232);
    v50 = sub_18B2C9424();
    (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
    v23(*(v0 + 416), *(v0 + 376));

    v51 = *(v0 + 8);

    return v51();
  }

  v10 = 0;
  *(v0 + 544) = *(*(v0 + 352) + 80);
  while (1)
  {
    *(v0 + 480) = 0;
    *(v0 + 488) = v10;
    v11 = *(v0 + 464);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(v0 + 344);
    sub_18B230B70(v11 + ((*(v0 + 544) + 32) & ~*(v0 + 544)) + *(*(v0 + 352) + 72) * v10, *(v0 + 360));
    *(v0 + 548) = *(v12 + 20);
    v13 = sub_18B2C9404();
    *(v0 + 496) = v14;
    if (v14)
    {
      break;
    }

    sub_18B230BD4(*(v0 + 360));
    v10 = *(v0 + 488) + 1;
    if (v10 == *(v0 + 472))
    {
      goto LABEL_7;
    }
  }

  v42 = v13;
  v43 = v14;
  *(v0 + 504) = sub_18B2C9144();
  v52 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
  v44 = swift_task_alloc();
  *(v0 + 512) = v44;
  *v44 = v0;
  v44[1] = sub_18B2B391C;
  v45 = *(v0 + 312);

  return v52(v45, v42, v43);
}

uint64_t sub_18B2B391C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2B3A50, 0, 0);
}

uint64_t sub_18B2B3A50()
{
  v94 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B230BD4(*(v0 + 360));
    result = sub_18B1630AC(v3, &qword_1EA9B6A50);
    v5 = *(v0 + 480);
    goto LABEL_27;
  }

  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);
  (*(v2 + 32))(*(v0 + 336), v3, v1);
  sub_18B2C91A4();
  v9 = sub_18B2C8FF4();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v6, v8);
  if (v9 == sub_18B2C8FF4() && v11 == v13)
  {
  }

  else
  {
    v14 = sub_18B2C9F24();

    if ((v14 & 1) == 0)
    {
      v5 = *(v0 + 480);
      goto LABEL_14;
    }
  }

  v15 = *(v0 + 480);
  v16 = *(v0 + 360);
  v18 = *v16;
  v17 = v16[1];
  v19 = qword_1ED653E70;
  v20 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = *&v21[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_currentRotorVoiceIdentifier];
  v23 = swift_task_alloc();
  *(v23 + 16) = v21;
  v24 = swift_task_alloc();
  *(v24 + 16) = sub_18B26BFA4;
  *(v24 + 24) = v23;

  v25 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_18B235DBC((v0 + 224));
  if (v15)
  {
    os_unfair_lock_unlock(v22 + 4);
LABEL_32:
  }

  os_unfair_lock_unlock(v22 + 4);

  sub_18B2C9474();

  v26 = *(v0 + 200);
  if (!v26)
  {

    goto LABEL_23;
  }

  if (v18 != *(v0 + 192) || v26 != v17)
  {
    v48 = sub_18B2C9F24();

    if (v48)
    {
      v5 = 0;
      goto LABEL_14;
    }

LABEL_23:
    v49 = *(v0 + 360);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    result = sub_18B230BD4(v49);
    v5 = 0;
LABEL_27:
    while (1)
    {
      v54 = *(v0 + 488) + 1;
      if (v54 == *(v0 + 472))
      {
        break;
      }

      *(v0 + 480) = v5;
      *(v0 + 488) = v54;
      v50 = *(v0 + 464);
      if (v54 >= *(v50 + 16))
      {
        __break(1u);
        return result;
      }

      v51 = *(v0 + 344);
      sub_18B230B70(v50 + ((*(v0 + 544) + 32) & ~*(v0 + 544)) + *(*(v0 + 352) + 72) * v54, *(v0 + 360));
      *(v0 + 548) = *(v51 + 20);
      v52 = sub_18B2C9404();
      *(v0 + 496) = v53;
      if (v53)
      {
        v70 = v52;
        v71 = v53;
        *(v0 + 504) = sub_18B2C9144();
        v92 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
        v72 = swift_task_alloc();
        *(v0 + 512) = v72;
        *v72 = v0;
        v72[1] = sub_18B2B391C;
        v73 = *(v0 + 312);

        return v92(v73, v70, v71);
      }

LABEL_26:
      result = sub_18B230BD4(*(v0 + 360));
    }

    v55 = *(v0 + 288);
    v56 = *(v0 + 296);
    v58 = *(v0 + 272);
    v57 = *(v0 + 280);
    v60 = *(v0 + 256);
    v59 = *(v0 + 264);

    sub_18B2C90A4();
    sub_18B2C9084();
    (*(v58 + 8))(v57, v59);
    if ((*(v56 + 48))(v60, 1, v55) == 1)
    {
      v61 = *(v0 + 256);
      v91 = *(*(v0 + 384) + 8);
      v91(*(v0 + 408), *(v0 + 376));
      sub_18B1630AC(v61, &qword_1EA9B63D0);
    }

    else
    {
      v62 = *(v0 + 552);
      (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 256), *(v0 + 288));
      if (v62 == 1)
      {
        v63 = qword_1ED653E70;
        v64 = OBJC_IVAR___AXSettings_voiceover;
        swift_beginAccess();
        v65 = *(v63 + v64);
        v66 = *&v65[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_defaultVoiceSelectionsByLanguage];
        v67 = swift_task_alloc();
        *(v67 + 16) = v65;
        v68 = swift_task_alloc();
        *(v68 + 16) = sub_18B23685C;
        *(v68 + 24) = v67;
        v69 = v65;

        os_unfair_lock_lock(v66 + 4);
        sub_18B23602C(&v93);
        os_unfair_lock_unlock(v66 + 4);
        if (v5)
        {
          goto LABEL_32;
        }

        v80 = *(v0 + 296);
        v81 = *(v0 + 304);
        v82 = *(v0 + 288);
        v83 = *(v0 + 248);

        sub_18B2C9474();

        v84 = *(v0 + 216);
        *(v0 + 520) = v84;
        (*(v80 + 16))(v83, v81, v82);
        (*(v80 + 56))(v83, 0, 1, v82);
        v85 = sub_18B2C9144();
        *(v0 + 528) = v85;
        v86 = swift_task_alloc();
        *(v0 + 536) = v86;
        *v86 = v0;
        v86[1] = sub_18B2B4538;
        v87 = *(v0 + 248);
        v88 = *(v0 + 232);

        return Dictionary<>.selection(forLanguage:withResolver:exists:)(v88, v87, v85, 0, v84);
      }

      v74 = *(v0 + 408);
      v75 = *(v0 + 376);
      v76 = *(v0 + 384);
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      v91 = *(v76 + 8);
      v91(v74, v75);
    }

    v77 = *(v0 + 232);
    v78 = sub_18B2C9424();
    (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
    goto LABEL_40;
  }

  v5 = 0;
LABEL_14:
  v27 = *(v0 + 416);
  sub_18B2C91B4();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(swift_task_alloc() + 16) = v27;
  v28 = sub_18B2C9934();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if (v28)
  {
    v89 = *(v0 + 548);
    v29 = *(v0 + 408);
    v30 = *(v0 + 376);
    v31 = *(v0 + 360);
    v32 = v12;
    v34 = *(v0 + 328);
    v33 = *(v0 + 336);
    v35 = *(v0 + 320);
    v36 = *(v0 + 232);

    (*(v34 + 8))(v33, v35);
    v91 = v32;
    v32(v29, v30);
    v37 = sub_18B2C9424();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v36, v31 + v89, v37);
    sub_18B230BD4(v31);
    (*(v38 + 56))(v36, 0, 1, v37);
  }

  else
  {
    if (*(v0 + 552))
    {
      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      goto LABEL_26;
    }

    v91 = v12;
    v39 = *(v0 + 416);
    v41 = *(v0 + 328);
    v40 = *(v0 + 336);
    v90 = *(v0 + 320);
    sub_18B2C91B4();
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    *(swift_task_alloc() + 16) = v39;
    v42 = sub_18B2C9934();

    (*(v41 + 8))(v40, v90);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    if ((v42 & 1) == 0)
    {
      goto LABEL_26;
    }

    v43 = *(v0 + 548);
    v44 = *(v0 + 360);
    v45 = *(v0 + 232);
    v91(*(v0 + 408), *(v0 + 376));

    v46 = sub_18B2C9424();
    v47 = *(v46 - 8);
    (*(v47 + 16))(v45, v44 + v43, v46);
    sub_18B230BD4(v44);
    (*(v47 + 56))(v45, 0, 1, v46);
  }

LABEL_40:
  v91(*(v0 + 416), *(v0 + 376));

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_18B2B4538()
{
  v1 = *(*v0 + 248);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B2B46A0, 0, 0);
}

uint64_t sub_18B2B46A0()
{
  v1 = v0[51];
  v2 = v0[47];
  v3 = v0[48];
  (*(v0[37] + 8))(v0[38], v0[36]);
  v4 = *(v3 + 8);
  v4(v1, v2);
  v4(v0[52], v0[47]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_18B2B47F0()
{
  v0 = sub_18B2C8FF4();
  v2 = v1;
  if (v0 == sub_18B2C8FF4() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18B2C9F24();
  }

  return v4 & 1;
}

uint64_t sub_18B2B488C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36 = sub_18B2C9014();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A48) - 8;
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = sub_18B2C9094();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  sub_18B2C90A4();
  sub_18B2C9084();
  v20 = *(v14 + 8);
  v20(v19, v13);
  sub_18B2C90A4();
  sub_18B2C9084();
  v20(v17, v13);
  v21 = v34;
  v22 = v36;
  v23 = *(v33 + 56);
  sub_18B163044(v12, v4, &qword_1EA9B63D0);
  sub_18B163044(v10, &v4[v23], &qword_1EA9B63D0);
  v24 = *(v21 + 48);
  if (v24(v4, 1, v22) != 1)
  {
    v35 = v12;
    sub_18B163044(v4, v37, &qword_1EA9B63D0);
    v25 = v4;
    if (v24(&v4[v23], 1, v22) != 1)
    {
      v27 = &v4[v23];
      v28 = v32;
      (*(v21 + 32))(v32, v27, v22);
      sub_18B2B5CC4(&qword_1EA9B56A0, 255, MEMORY[0x1E6969610]);
      v29 = v37;
      v26 = sub_18B2C9854();
      v30 = *(v21 + 8);
      v30(v28, v22);
      sub_18B1630AC(v10, &qword_1EA9B63D0);
      sub_18B1630AC(v35, &qword_1EA9B63D0);
      v30(v29, v22);
      sub_18B1630AC(v25, &qword_1EA9B63D0);
      return v26 & 1;
    }

    sub_18B1630AC(v10, &qword_1EA9B63D0);
    sub_18B1630AC(v35, &qword_1EA9B63D0);
    (*(v21 + 8))(v37, v22);
    goto LABEL_6;
  }

  sub_18B1630AC(v10, &qword_1EA9B63D0);
  sub_18B1630AC(v12, &qword_1EA9B63D0);
  v25 = v4;
  if (v24(&v4[v23], 1, v22) != 1)
  {
LABEL_6:
    sub_18B1630AC(v25, &qword_1EA9B6A48);
    v26 = 0;
    return v26 & 1;
  }

  sub_18B1630AC(v4, &qword_1EA9B63D0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_18B2B4E1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22E8DC;

  return VoiceOverSelectionProvider.selection(forLocale:)(a1, a2);
}

Swift::Void __swiftcall CoreSynthesizer.setupAccessibilitySettingAwareness()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18B2F88F0;
  strcpy((inited + 32), "accessibility");
  *(inited + 46) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7768);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18B2FA460;
  *(v1 + 56) = &type metadata for VoiceOverSelectionProvider;
  *(v1 + 64) = sub_18B2B50CC();
  *(v1 + 32) = 1;
  *(v1 + 96) = &type metadata for AssistiveTouchSelectionProvider;
  *(v1 + 104) = sub_18B2B5120();
  *(v1 + 72) = 1;
  v2 = type metadata accessor for SpokenContentSelectionProvider();
  v3 = swift_allocObject();
  SpokenContentSelectionProvider.init()();
  *(v1 + 136) = v2;
  *(v1 + 144) = sub_18B2B5CC4(&qword_1EA9B7780, v4, type metadata accessor for SpokenContentSelectionProvider);
  *(v1 + 112) = v3;
  *(inited + 48) = v1;
  sub_18B2B593C(inited);
  swift_setDeallocating();
  sub_18B1630AC(inited + 32, &qword_1EA9B7788);
  sub_18B2C9164();
}

unint64_t sub_18B2B50CC()
{
  result = qword_1EA9B7770;
  if (!qword_1EA9B7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7770);
  }

  return result;
}

unint64_t sub_18B2B5120()
{
  result = qword_1EA9B7778;
  if (!qword_1EA9B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7778);
  }

  return result;
}

unint64_t sub_18B2B5198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77C0);
    v7 = sub_18B2C9DF4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_18B163044(v9, v5, &qword_1EA9B77B8);
      result = sub_18B293C80(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_18B2C9014();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B2B53A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77B0);
    v7 = sub_18B2C9DF4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_18B163044(v9, v5, &qword_1EA9B77A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_18B293E34(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_18B2C9014();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B2B5590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77A0);
    v3 = sub_18B2C9DF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_18B163044(v4, &v16, &qword_1EA9B7008);
      v5 = v16;
      v6 = v17;
      result = sub_18B293E34(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B2B56C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CF8);
    v3 = sub_18B2C9DF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_18B163044(v4, v13, &qword_1EA9B7798);
      result = sub_18B293EAC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_18B26F444(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B2B5804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D00);
    v3 = sub_18B2C9DF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_18B163044(v4, &v16, &qword_1EA9B7658);
      v5 = v16;
      v6 = v17;
      result = sub_18B293E34(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B2B593C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7790);
    v3 = sub_18B2C9DF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_18B293E34(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t dispatch thunk of SpokenContentSelectionProvider.selection(forLocale:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B22E8DC;

  return v8(a1, a2);
}

uint64_t sub_18B2B5C14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_18B2B5CC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AXSettings.TripleClick.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AXSettings.TripleClick._$accessibilityHelpBannerFirstShownTimestamp.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerFirstShownTimestamp);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22C68C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2B5E08@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerFirstShownTimestamp_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerFirstShownTimestamp_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerFirstShownTimestamp_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6510);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2B8740(&qword_1EA9B7868, &qword_1EA9B7870);
    sub_18B2B8740(&qword_1EA9B7878, &qword_1EA9B7880);
    sub_18B2B87E0(&qword_1EA9B7860, v8, type metadata accessor for AXSettings.TripleClick);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2B6074(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerFirstShownTimestamp);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.TripleClick.accessibilityHelpBannerFirstShownTimestamp.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerFirstShownTimestamp);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.TripleClick.accessibilityHelpBannerFirstShownTimestamp.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerFirstShownTimestamp);
  v12 = v1;
  v9 = sub_18B2B882C;
  v10 = &v11;

  os_unfair_lock_lock(v6 + 4);
  sub_18B22F010(&v13);
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2B82BC(a1, v5);
  sub_18B2C9484();

  return sub_18B2B832C(a1);
}

void (*AXSettings.TripleClick.accessibilityHelpBannerFirstShownTimestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerFirstShownTimestamp;
  v5[3] = v7;
  v5[4] = v8;
  v9 = *(v1 + v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);

  os_unfair_lock_lock(v9 + 4);
  sub_18B22F010(&v12);
  v5[5] = 0;
  os_unfair_lock_unlock(v9 + 4);

  sub_18B2C9474();

  return sub_18B2B6488;
}

void sub_18B2B6488(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = *v2;
    v5 = sub_18B2B82BC(v2[3], v2[1]);
    v6 = *(v4 + v3);
    v7 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v6 + 4);
    sub_18B22F010(v13);
    os_unfair_lock_unlock(v6 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B2B82BC(v10, v9);
    sub_18B2C9484();

    sub_18B2B832C(v10);
  }

  else
  {
    v11 = *(*v2 + v3);
    v12 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v11 + 4);
    sub_18B22F010(v13);
    os_unfair_lock_unlock(v11 + 4);
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[1];

    sub_18B2B82BC(v8, v9);
    sub_18B2C9484();
  }

  sub_18B2B832C(v8);
  free(v8);
  free(v9);
  free(v10);
  free(v2);
}

uint64_t AXSettings.TripleClick._$accessibilityHelpBannerLastShownTimestamp.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerLastShownTimestamp);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2B6708@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerLastShownTimestamp_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerLastShownTimestamp_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___accessibilityHelpBannerLastShownTimestamp_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6510);
    v7 = a1;
    sub_18B2C9674();
    sub_18B2B8740(&qword_1EA9B7868, &qword_1EA9B7870);
    sub_18B2B8740(&qword_1EA9B7878, &qword_1EA9B7880);
    sub_18B2B87E0(&qword_1EA9B7860, v8, type metadata accessor for AXSettings.TripleClick);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2B6928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18B2C8F84();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18B2B69C4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerLastShownTimestamp);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

uint64_t AXSettings.TripleClick.accessibilityHelpBannerLastShownTimestamp.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings11TripleClick___lock_accessibilityHelpBannerLastShownTimestamp);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();
}

id sub_18B2B6B14(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B77D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = sub_18B2C8F84();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_18B2C8F64();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}