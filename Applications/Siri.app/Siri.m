void sub_100003FE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100004004(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v8 = WeakRetained[2];
        v9 = v7;
        v10 = [v8 _contextId];
        v11 = WeakRetained[2];
        v14 = 136315650;
        v15 = "[SRAppDelegate _updateDeferral]_block_invoke";
        v16 = 1024;
        v17 = v10;
        v18 = 2048;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s updating contextID (%u) on window (%p) for HID deferral", &v14, 0x1Cu);
      }

      v12 = WeakRetained[2];
      if (v12)
      {
        if (![v12 _contextId])
        {
          v13 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
          {
            sub_1000CF768(v13);
          }
        }
      }

      [v5 setClientWindowContextID:{objc_msgSend(WeakRetained[2], "_contextId")}];
    }
  }
}

void sub_100004654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100004670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cleanupAllViews];
    v4 = [[SRSiriViewController alloc] initWithNibName:0 bundle:0];
    v5 = *(v3 + 1);
    *(v3 + 1) = v4;

    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v3 + 1);
      v19 = 136315394;
      v20 = "[SRViewController setUpViews]_block_invoke";
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Created new SRSiriViewController (%p)", &v19, 0x16u);
    }

    [v3 addChildViewController:*(v3 + 1)];
    [*(v3 + 1) didMoveToParentViewController:v3];
    v8 = [v3 view];
    v9 = [*(v3 + 1) view];
    [v8 addSubview:v9];

    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v3[4];
      v12 = v10;
      v13 = [NSNumber numberWithInt:v11];
      v14 = [NSNumber numberWithInt:v3[4] + 1];
      v19 = 136315650;
      v20 = "[SRViewController setUpViews]_block_invoke";
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s About to increment _expectedTeardownCounter from %@ to %@", &v19, 0x20u);
    }

    v15 = v3[4];
    v3[4] = v15 + 1;
    if (v15 <= -2)
    {
      v16 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF5B4(v16);
      }

      v3[4] = 1;
    }

    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[SRViewController setUpViews]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Added SRSiriViewController to the view hierarchy in Siri.app", &v19, 0xCu);
    }

    if (v3[4] >= 2)
    {
      [*(a1 + 32) _captureMultipleSiriViewControllerInHierarchyIfNeeded];
    }

    v18 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
    [v18 addReplayControlTo:*(a1 + 32)];
  }
}

void sub_1000049E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_100004A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = [WeakRetained childViewControllers];
      v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
      *buf = 136315394;
      v21 = "[SRViewController _cleanupAllViews]_block_invoke";
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s About to remove all SRSiriViewControllers from the view hierarchy in Siri.app - number of children: %@", buf, 0x16u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [WeakRetained childViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 willMoveToParentViewController:0];
          v12 = [v11 view];
          [v12 removeFromSuperview];

          [v11 removeFromParentViewController];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = WeakRetained[1];
    WeakRetained[1] = 0;

    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[SRViewController _cleanupAllViews]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Removed all SRSiriViewControllers from the view hierarchy in Siri.app", buf, 0xCu);
    }
  }
}

void sub_100004CD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(WeakRetained + 4) outputDevices];
    if ([v3 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v11 + 1) + 8 * i) deviceType];
            if (v9 <= 4 && ((1 << v9) & 0x13) != 0)
            {
              v2[8] = 1;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }
  }
}

id sub_10000512C(uint64_t a1, char a2, char a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___SRSiriSystemUIController_viewMode] = 0;
  *&v3[OBJC_IVAR___SRSiriSystemUIController_lockState] = 2;
  v6 = &v3[OBJC_IVAR___SRSiriSystemUIController_activityId];
  *v6 = 0;
  v6[1] = 0;
  v3[OBJC_IVAR___SRSiriSystemUIController_currentActivitySupportsLandscape] = 0;
  v7 = &v3[OBJC_IVAR___SRSiriSystemUIController_domainResponseId];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v3[OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity] = 0;
  v3[OBJC_IVAR___SRSiriSystemUIController_isInAmbient] = 0;
  *&v3[OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion] = 0;
  *&v3[OBJC_IVAR___SRSiriSystemUIController_sessionListener] = 0;
  v3[OBJC_IVAR___SRSiriSystemUIController_hasUpdatedForLockScreen] = 0;
  v3[OBJC_IVAR___SRSiriSystemUIController_didHaveSpeakableText] = 0;
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR___SRSiriSystemUIController_systemUIDevice] = a2;
  v3[OBJC_IVAR___SRSiriSystemUIController_systemApertureSupportedDevice] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SiriSystemUIController();
  return objc_msgSendSuper2(&v9, "init");
}

void sub_1000058D4(uint64_t a1, int a2)
{
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 alwaysShowRecognizedSpeech];

  if (a2)
  {
    if ((v5 & 1) == 0)
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[SRAppDelegate _verifyAndSyncTrialExperiments]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #trial Trial experiment enrolled - will override setAlwaysShowRecognizedSpeech to YES", &v8, 0xCu);
      }

      v7 = +[AFPreferences sharedPreferences];
      [v7 setAlwaysShowRecognizedSpeech:1];
    }

    [*(a1 + 32) setBool:1 forKey:SRUIFPreferencesDeviceEnrolledInASRSettingTrialExperiment];
    [*(a1 + 32) setBool:v5 forKey:SRUIFPreferencesASRSettingBeforeTrialExperiment];
    [*(a1 + 32) synchronize];
  }
}

void sub_100005D18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[23])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[SRSiriViewController _setupXPCListener]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp Resuming XPC Connection", &v4, 0xCu);
    }

    [v2[23] resume];
  }
}

void sub_100006024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1000060B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006114(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006160(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006198(Swift::UInt a1)
{
  if (qword_10018D7A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_10018EE40;
  if (!*(off_10018EE40 + 2) || (v3 = sub_1000074FC(a1), (v4 & 1) == 0))
  {
    swift_endAccess();
    if (a1)
    {
      v6 = sub_1000AC5A4(0, 1, 1, &_swiftEmptyArrayStorage);
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_1000AC5A4((v7 > 1), v8 + 1, 1, v6);
      }

      *(v6 + 2) = v8 + 1;
      v9 = &v6[16 * v8];
      *(v9 + 4) = 0x7461766974636123;
      *(v9 + 5) = 0xEB000000006E6F69;
      if ((a1 & 2) == 0)
      {
LABEL_17:
        if ((a1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
          }

          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v14 >= v13 >> 1)
          {
            v6 = sub_1000AC5A4((v13 > 1), v14 + 1, 1, v6);
          }

          *(v6 + 2) = v14 + 1;
          v15 = &v6[16 * v14];
          *(v15 + 4) = 0x736472616323;
          *(v15 + 5) = 0xE600000000000000;
          if ((a1 & 8) == 0)
          {
LABEL_19:
            if ((a1 & 0x10) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_33;
          }
        }

        else if ((a1 & 8) == 0)
        {
          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
        }

        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        if (v17 >= v16 >> 1)
        {
          v6 = sub_1000AC5A4((v16 > 1), v17 + 1, 1, v6);
        }

        *(v6 + 2) = v17 + 1;
        v18 = &v6[16 * v17];
        *(v18 + 4) = 0x646E4472616323;
        *(v18 + 5) = 0xE700000000000000;
        if ((a1 & 0x10) == 0)
        {
LABEL_20:
          if ((a1 & 0x20) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
        }

        v20 = *(v6 + 2);
        v19 = *(v6 + 3);
        if (v20 >= v19 >> 1)
        {
          v6 = sub_1000AC5A4((v19 > 1), v20 + 1, 1, v6);
        }

        *(v6 + 2) = v20 + 1;
        v21 = &v6[16 * v20];
        *(v21 + 4) = 0x79616C5072616323;
        *(v21 + 5) = 0xE800000000000000;
        if ((a1 & 0x20) == 0)
        {
LABEL_21:
          if ((a1 & 0x40) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

LABEL_38:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v23 >= v22 >> 1)
        {
          v6 = sub_1000AC5A4((v22 > 1), v23 + 1, 1, v6);
        }

        *(v6 + 2) = v23 + 1;
        v24 = &v6[16 * v23];
        *(v24 + 4) = 0x73616D6323;
        *(v24 + 5) = 0xE500000000000000;
        if ((a1 & 0x40) == 0)
        {
LABEL_48:
          if ((a1 & 0x80) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v29 = *(v6 + 2);
            v28 = *(v6 + 3);
            if (v29 >= v28 >> 1)
            {
              v6 = sub_1000AC5A4((v28 > 1), v29 + 1, 1, v6);
            }

            *(v6 + 2) = v29 + 1;
            v30 = &v6[16 * v29];
            *(v30 + 4) = 0x6572467365796523;
            *(v30 + 5) = 0xE900000000000065;
            if ((a1 & 0x100) == 0)
            {
LABEL_50:
              if ((a1 & 0x200) == 0)
              {
                goto LABEL_67;
              }

              goto LABEL_62;
            }
          }

          else if ((a1 & 0x100) == 0)
          {
            goto LABEL_50;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
          }

          v32 = *(v6 + 2);
          v31 = *(v6 + 3);
          if (v32 >= v31 >> 1)
          {
            v6 = sub_1000AC5A4((v31 > 1), v32 + 1, 1, v6);
          }

          *(v6 + 2) = v32 + 1;
          v33 = &v6[16 * v32];
          *(v33 + 4) = 0x7375636F6623;
          *(v33 + 5) = 0xE600000000000000;
          if ((a1 & 0x200) == 0)
          {
LABEL_67:
            if ((a1 & 0x400) != 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
              }

              v38 = *(v6 + 2);
              v37 = *(v6 + 3);
              if (v38 >= v37 >> 1)
              {
                v6 = sub_1000AC5A4((v37 > 1), v38 + 1, 1, v6);
              }

              *(v6 + 2) = v38 + 1;
              v39 = &v6[16 * v38];
              *(v39 + 4) = 0x6D6954656C646923;
              *(v39 + 5) = 0xEA00000000007265;
            }

            if ((a1 & 0x800) != 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
              }

              v41 = *(v6 + 2);
              v40 = *(v6 + 3);
              if (v41 >= v40 >> 1)
              {
                v6 = sub_1000AC5A4((v40 > 1), v41 + 1, 1, v6);
              }

              *(v6 + 2) = v41 + 1;
              v42 = &v6[16 * v41];
              *(v42 + 4) = 0xD000000000000015;
              *(v42 + 5) = 0x800000010011B080;
              if ((a1 & 0x1000) == 0)
              {
LABEL_75:
                if ((a1 & 0x2000) == 0)
                {
                  goto LABEL_76;
                }

                goto LABEL_108;
              }
            }

            else if ((a1 & 0x1000) == 0)
            {
              goto LABEL_75;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v44 = *(v6 + 2);
            v43 = *(v6 + 3);
            if (v44 >= v43 >> 1)
            {
              v6 = sub_1000AC5A4((v43 > 1), v44 + 1, 1, v6);
            }

            *(v6 + 2) = v44 + 1;
            v45 = &v6[16 * v44];
            *(v45 + 4) = 0x736B636F6C23;
            *(v45 + 5) = 0xE600000000000000;
            if ((a1 & 0x2000) == 0)
            {
LABEL_76:
              if ((a1 & 0x4000) == 0)
              {
                goto LABEL_77;
              }

              goto LABEL_113;
            }

LABEL_108:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v47 = *(v6 + 2);
            v46 = *(v6 + 3);
            if (v47 >= v46 >> 1)
            {
              v6 = sub_1000AC5A4((v46 > 1), v47 + 1, 1, v6);
            }

            *(v6 + 2) = v47 + 1;
            v48 = &v6[16 * v47];
            *(v48 + 4) = 0x7365646F6D23;
            *(v48 + 5) = 0xE600000000000000;
            if ((a1 & 0x4000) == 0)
            {
LABEL_77:
              if ((a1 & 0x8000) == 0)
              {
                goto LABEL_78;
              }

              goto LABEL_118;
            }

LABEL_113:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v50 = *(v6 + 2);
            v49 = *(v6 + 3);
            if (v50 >= v49 >> 1)
            {
              v6 = sub_1000AC5A4((v49 > 1), v50 + 1, 1, v6);
            }

            *(v6 + 2) = v50 + 1;
            v51 = &v6[16 * v50];
            *(v51 + 4) = 0x64616972796D23;
            *(v51 + 5) = 0xE700000000000000;
            if ((a1 & 0x8000) == 0)
            {
LABEL_78:
              if ((a1 & 0x10000) == 0)
              {
                goto LABEL_79;
              }

              goto LABEL_123;
            }

LABEL_118:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v53 = *(v6 + 2);
            v52 = *(v6 + 3);
            if (v53 >= v52 >> 1)
            {
              v6 = sub_1000AC5A4((v52 > 1), v53 + 1, 1, v6);
            }

            *(v6 + 2) = v53 + 1;
            v54 = &v6[16 * v53];
            *(v54 + 4) = 0x5564616972796D23;
            *(v54 + 5) = 0xE900000000000049;
            if ((a1 & 0x10000) == 0)
            {
LABEL_79:
              if ((a1 & 0x20000) == 0)
              {
                goto LABEL_80;
              }

              goto LABEL_128;
            }

LABEL_123:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v56 = *(v6 + 2);
            v55 = *(v6 + 3);
            if (v56 >= v55 >> 1)
            {
              v6 = sub_1000AC5A4((v55 > 1), v56 + 1, 1, v6);
            }

            *(v6 + 2) = v56 + 1;
            v57 = &v6[16 * v56];
            *(v57 + 4) = 0xD000000000000014;
            *(v57 + 5) = 0x800000010011B060;
            if ((a1 & 0x20000) == 0)
            {
LABEL_80:
              if ((a1 & 0x40000) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_133;
            }

LABEL_128:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v59 = *(v6 + 2);
            v58 = *(v6 + 3);
            if (v59 >= v58 >> 1)
            {
              v6 = sub_1000AC5A4((v58 > 1), v59 + 1, 1, v6);
            }

            *(v6 + 2) = v59 + 1;
            v60 = &v6[16 * v59];
            *(v60 + 4) = 0x7973696F6E23;
            *(v60 + 5) = 0xE600000000000000;
            if ((a1 & 0x40000) == 0)
            {
LABEL_81:
              if ((a1 & 0x80000) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_138;
            }

LABEL_133:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v62 = *(v6 + 2);
            v61 = *(v6 + 3);
            if (v62 >= v61 >> 1)
            {
              v6 = sub_1000AC5A4((v61 > 1), v62 + 1, 1, v6);
            }

            *(v6 + 2) = v62 + 1;
            v63 = &v6[16 * v62];
            *(v63 + 4) = 0xD000000000000011;
            *(v63 + 5) = 0x800000010011B040;
            if ((a1 & 0x80000) == 0)
            {
LABEL_82:
              if ((a1 & 0x100000) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_143;
            }

LABEL_138:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v65 = *(v6 + 2);
            v64 = *(v6 + 3);
            if (v65 >= v64 >> 1)
            {
              v6 = sub_1000AC5A4((v64 > 1), v65 + 1, 1, v6);
            }

            *(v6 + 2) = v65 + 1;
            v66 = &v6[16 * v65];
            *(v66 + 4) = 0x7765695662724F23;
            *(v66 + 5) = 0xE800000000000000;
            if ((a1 & 0x100000) == 0)
            {
LABEL_83:
              if ((a1 & 0x200000) == 0)
              {
                goto LABEL_84;
              }

              goto LABEL_148;
            }

LABEL_143:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v68 = *(v6 + 2);
            v67 = *(v6 + 3);
            if (v68 >= v67 >> 1)
            {
              v6 = sub_1000AC5A4((v67 > 1), v68 + 1, 1, v6);
            }

            *(v6 + 2) = v68 + 1;
            v69 = &v6[16 * v68];
            strcpy(v69 + 32, "#presynthesize");
            v69[47] = -18;
            if ((a1 & 0x200000) == 0)
            {
LABEL_84:
              if ((a1 & 0x400000) == 0)
              {
                goto LABEL_85;
              }

              goto LABEL_153;
            }

LABEL_148:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v71 = *(v6 + 2);
            v70 = *(v6 + 3);
            if (v71 >= v70 >> 1)
            {
              v6 = sub_1000AC5A4((v70 > 1), v71 + 1, 1, v6);
            }

            *(v6 + 2) = v71 + 1;
            v72 = &v6[16 * v71];
            strcpy(v72 + 32, "#sceneHosting");
            *(v72 + 23) = -4864;
            if ((a1 & 0x400000) == 0)
            {
LABEL_85:
              if ((a1 & 0x800000) == 0)
              {
                goto LABEL_86;
              }

              goto LABEL_158;
            }

LABEL_153:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v74 = *(v6 + 2);
            v73 = *(v6 + 3);
            if (v74 >= v73 >> 1)
            {
              v6 = sub_1000AC5A4((v73 > 1), v74 + 1, 1, v6);
            }

            *(v6 + 2) = v74 + 1;
            v75 = &v6[16 * v74];
            *(v75 + 4) = 0xD000000000000015;
            *(v75 + 5) = 0x800000010011B020;
            if ((a1 & 0x800000) == 0)
            {
LABEL_86:
              if ((a1 & 0x1000000) == 0)
              {
                goto LABEL_87;
              }

              goto LABEL_163;
            }

LABEL_158:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v77 = *(v6 + 2);
            v76 = *(v6 + 3);
            if (v77 >= v76 >> 1)
            {
              v6 = sub_1000AC5A4((v76 > 1), v77 + 1, 1, v6);
            }

            *(v6 + 2) = v77 + 1;
            v78 = &v6[16 * v77];
            *(v78 + 4) = 0xD000000000000017;
            *(v78 + 5) = 0x800000010011B000;
            if ((a1 & 0x1000000) == 0)
            {
LABEL_87:
              if ((a1 & 0x2000000) == 0)
              {
                goto LABEL_88;
              }

              goto LABEL_168;
            }

LABEL_163:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v80 = *(v6 + 2);
            v79 = *(v6 + 3);
            if (v80 >= v79 >> 1)
            {
              v6 = sub_1000AC5A4((v79 > 1), v80 + 1, 1, v6);
            }

            *(v6 + 2) = v80 + 1;
            v81 = &v6[16 * v80];
            *(v81 + 4) = 0x4449486972697323;
            *(v81 + 5) = 0xE800000000000000;
            if ((a1 & 0x2000000) == 0)
            {
LABEL_88:
              if ((a1 & 0x4000000) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_173;
            }

LABEL_168:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v83 = *(v6 + 2);
            v82 = *(v6 + 3);
            if (v83 >= v82 >> 1)
            {
              v6 = sub_1000AC5A4((v82 > 1), v83 + 1, 1, v6);
            }

            *(v6 + 2) = v83 + 1;
            v84 = &v6[16 * v83];
            *(v84 + 4) = 0x74657070696E7323;
            *(v84 + 5) = 0xEA00000000006975;
            if ((a1 & 0x4000000) == 0)
            {
LABEL_89:
              if ((a1 & 0x8000000) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_178;
            }

LABEL_173:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v86 = *(v6 + 2);
            v85 = *(v6 + 3);
            if (v86 >= v85 >> 1)
            {
              v6 = sub_1000AC5A4((v85 > 1), v86 + 1, 1, v6);
            }

            *(v6 + 2) = v86 + 1;
            v87 = &v6[16 * v86];
            *(v87 + 4) = 0x7263736E61727423;
            *(v87 + 5) = 0xEB00000000747069;
            if ((a1 & 0x8000000) == 0)
            {
LABEL_90:
              if ((a1 & 0x10000000) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_183;
            }

LABEL_178:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v89 = *(v6 + 2);
            v88 = *(v6 + 3);
            if (v89 >= v88 >> 1)
            {
              v6 = sub_1000AC5A4((v88 > 1), v89 + 1, 1, v6);
            }

            *(v6 + 2) = v89 + 1;
            v90 = &v6[16 * v89];
            *(v90 + 4) = 1937011747;
            *(v90 + 5) = 0xE400000000000000;
            if ((a1 & 0x10000000) == 0)
            {
LABEL_91:
              if ((a1 & 0x20000000) == 0)
              {
                goto LABEL_92;
              }

              goto LABEL_188;
            }

LABEL_183:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v92 = *(v6 + 2);
            v91 = *(v6 + 3);
            if (v92 >= v91 >> 1)
            {
              v6 = sub_1000AC5A4((v91 > 1), v92 + 1, 1, v6);
            }

            *(v6 + 2) = v92 + 1;
            v93 = &v6[16 * v92];
            *(v93 + 4) = 0x6972695343505823;
            *(v93 + 5) = 0xEB00000000707041;
            if ((a1 & 0x20000000) == 0)
            {
LABEL_92:
              if ((a1 & 0x40000000) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_193;
            }

LABEL_188:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v95 = *(v6 + 2);
            v94 = *(v6 + 3);
            if (v95 >= v94 >> 1)
            {
              v6 = sub_1000AC5A4((v94 > 1), v95 + 1, 1, v6);
            }

            *(v6 + 2) = v95 + 1;
            v96 = &v6[16 * v95];
            *(v96 + 4) = 1819048483;
            *(v96 + 5) = 0xE400000000000000;
            if ((a1 & 0x40000000) == 0)
            {
LABEL_93:
              if ((a1 & 0x80000000) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_198;
            }

LABEL_193:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v98 = *(v6 + 2);
            v97 = *(v6 + 3);
            if (v98 >= v97 >> 1)
            {
              v6 = sub_1000AC5A4((v97 > 1), v98 + 1, 1, v6);
            }

            *(v6 + 2) = v98 + 1;
            v99 = &v6[16 * v98];
            *(v99 + 4) = 0x416D657473797323;
            *(v99 + 5) = 0xEF65727574726570;
            if ((a1 & 0x80000000) == 0)
            {
LABEL_94:
              if ((a1 & 0x100000000) == 0)
              {
                goto LABEL_95;
              }

              goto LABEL_203;
            }

LABEL_198:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v101 = *(v6 + 2);
            v100 = *(v6 + 3);
            if (v101 >= v100 >> 1)
            {
              v6 = sub_1000AC5A4((v100 > 1), v101 + 1, 1, v6);
            }

            *(v6 + 2) = v101 + 1;
            v102 = &v6[16 * v101];
            *(v102 + 4) = 0xD000000000000015;
            *(v102 + 5) = 0x800000010011AFE0;
            if ((a1 & 0x100000000) == 0)
            {
LABEL_95:
              if ((a1 & 0x200000000) == 0)
              {
                goto LABEL_96;
              }

              goto LABEL_208;
            }

LABEL_203:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v104 = *(v6 + 2);
            v103 = *(v6 + 3);
            if (v104 >= v103 >> 1)
            {
              v6 = sub_1000AC5A4((v103 > 1), v104 + 1, 1, v6);
            }

            *(v6 + 2) = v104 + 1;
            v105 = &v6[16 * v104];
            *(v105 + 4) = 0xD000000000000013;
            *(v105 + 5) = 0x800000010011AFC0;
            if ((a1 & 0x200000000) == 0)
            {
LABEL_96:
              if (!*(v6 + 2))
              {

                return 0;
              }

LABEL_213:
              v114 = v6;

              sub_1000C73BC(&v114);

              sub_100093B6C(&qword_10018EE48);
              sub_1000C7428();
              v5 = BidirectionalCollection<>.joined(separator:)();
              v110 = v109;

              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v113 = off_10018EE40;
              sub_1000C70F4(v5, v110, a1, isUniquelyReferenced_nonNull_native);
              off_10018EE40 = v113;
              swift_endAccess();
              return v5;
            }

LABEL_208:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
            }

            v107 = *(v6 + 2);
            v106 = *(v6 + 3);
            if (v107 >= v106 >> 1)
            {
              v6 = sub_1000AC5A4((v106 > 1), v107 + 1, 1, v6);
            }

            *(v6 + 2) = v107 + 1;
            v108 = &v6[16 * v107];
            strcpy(v108 + 32, "#suggestions");
            v108[45] = 0;
            *(v108 + 23) = -5120;
            goto LABEL_213;
          }

LABEL_62:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
          }

          v35 = *(v6 + 2);
          v34 = *(v6 + 3);
          if (v35 >= v34 >> 1)
          {
            v6 = sub_1000AC5A4((v34 > 1), v35 + 1, 1, v6);
          }

          *(v6 + 2) = v35 + 1;
          v36 = &v6[16 * v35];
          *(v36 + 4) = 0x656C646923;
          *(v36 + 5) = 0xE500000000000000;
          goto LABEL_67;
        }

LABEL_43:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
        }

        v26 = *(v6 + 2);
        v25 = *(v6 + 3);
        if (v26 >= v25 >> 1)
        {
          v6 = sub_1000AC5A4((v25 > 1), v26 + 1, 1, v6);
        }

        *(v6 + 2) = v26 + 1;
        v27 = &v6[16 * v26];
        *(v27 + 4) = 0x746361706D6F6323;
        *(v27 + 5) = 0xE800000000000000;
        goto LABEL_48;
      }
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage;
      if ((a1 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1000AC5A4(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1000AC5A4((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    strcpy(v12 + 32, "#autodismiss");
    v12[45] = 0;
    *(v12 + 23) = -5120;
    goto LABEL_17;
  }

  v5 = *(v2[7] + 16 * v3);
  swift_endAccess();

  return v5;
}

unint64_t sub_1000074FC(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100007568(a1, v2);
}

unint64_t sub_100007568(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000075D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000076A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000060B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006114(v11);
  return v7;
}

unint64_t sub_1000076A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10009F070(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000077AC()
{
  v1 = v0;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  strcpy(v17, "autodismiss()");
  HIWORD(v17[1]) = -4864;
  v4 = sub_100006198(2uLL);
  if (v5)
  {
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  v16[0] = 32;
  v16[1] = 0xE100000000000000;
  v7._countAndFlagsBits = 0x697373696D736944;
  v7._object = 0xEA0000000000676ELL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v10 = v17[0];
  v9 = v17[1];
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, v16);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result dismissSiriPresentation:v1 withReason:4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100007BC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100007C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C78(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_100007FAC()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR___SRCarPlayPresentation_carPlayViewController];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR___SRCarPlayPresentation_siriIsIdleAndQuiet] = 2;
  v2 = &v0[OBJC_IVAR___SRCarPlayPresentation_isJarvisProvider];
  *(v2 + 3) = &type metadata for DefaultIsJarvisProvider;
  *(v2 + 4) = &off_1001696C0;
  v0[OBJC_IVAR___SRCarPlayPresentation_shouldResumeMediaOnIdle] = 0;
  *&v0[OBJC_IVAR___SRCarPlayPresentation_delayDismissalTimeInSec] = 0;
  v0[OBJC_IVAR___SRCarPlayPresentation_shouldClearFullscreenSnippet] = 0;
  v0[OBJC_IVAR___SRCarPlayPresentation_shouldRequestStartAttendingAfterTTSStarts] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SRCarPlayPresentation();
  v3 = objc_msgSendSuper2(&v10, "init");
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v4 = objc_allocWithZone(type metadata accessor for SRCarPlayViewController());
  v5 = v3;
  v6 = sub_100008400(v5, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = &v5[OBJC_IVAR___SRCarPlayPresentation_carPlayViewController];
  v8 = *&v5[OBJC_IVAR___SRCarPlayPresentation_carPlayViewController];
  *v7 = v6;
  v7[1] = &off_100169BD8;

  return v5;
}

void sub_1000081C0(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRSiriViewController _scheduleInterruptedAudioResumingIfNeeded]_block_invoke";
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Scheduling interrupted audio to be resumed if needed, isAttending: %d", &v7, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _resumesInterruptedAudioPlaybackForAttendingState:a2])
  {
    v6 = 1.0;
    if (a2)
    {
      v6 = 0.25;
    }

    [WeakRetained _scheduleAudioResumptionAfterDelayInSec:v6];
  }
}

char *sub_100008400(void *a1, _BYTE *a2)
{
  v4 = &a2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
  *v4 = 0;
  v4[1] = 0;
  *&a2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &a2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_lastFocusIndex];
  *v5 = 0;
  v5[8] = 1;
  *&a2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions] = 0;
  *&a2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delayedAceCommands] = 0;
  a2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_isSpeaking] = 0;
  v8.receiver = a2;
  v8.super_class = type metadata accessor for SRCarPlayViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
  *&v6[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate + 8] = &off_1001695A8;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_100008760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_100008A80()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result siriPresentationDidPresentUserInterface:v0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100008AEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v6;
  v8 = v5;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v9);
}

void sub_100008C90(void *a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(17);

  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006160(v9, qword_10018EE28);
  v10 = static os_log_type_t.debug.getter();
  v71 = 0x72756769666E6F63;
  v72 = 0xEF293A726F662865;
  v11 = sub_100006198(0x10uLL);
  if (v12)
  {
    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    String.append(_:)(*&v11);

    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
  }

  v70._countAndFlagsBits = 32;
  v70._object = 0xE100000000000000;
  v14._countAndFlagsBits = 0x72756769666E6F63;
  v14._object = 0xEF203A726F662865;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);

  v17 = v71;
  v16 = v72;
  v18 = Logger.logObject.getter();
  v69 = v2;
  if (os_log_type_enabled(v18, v10))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v70._countAndFlagsBits = v20;
    *v19 = 136315138;
    v21 = sub_1000075D4(v17, v16, &v70._countAndFlagsBits);

    *(v19 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v18, v10, "%s", v19, 0xCu);
    sub_100006114(v20);
  }

  else
  {
  }

  v22 = [objc_opt_self() availabilityState];
  v23 = [objc_opt_self() saeAvailable];
  v24 = _s4Siri36GenerativeModelsCompatabilityWrapperC21siriGMAssetsAvailableSbyFZ_0();
  if ((AFDeviceSupportsDisablingServerFallbackWhenMissingAsset() & v23) != 0)
  {
    v25 = v24 ^ 1;
  }

  else
  {
    v25 = v22 != 0;
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(83);
  v26._countAndFlagsBits = 0x6853646C756F6873;
  v26._object = 0xEB000000003D776FLL;
  String.append(_:)(v26);
  if (v25)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v25)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v29 = v28;
  String.append(_:)(*&v27);

  v30._countAndFlagsBits = 0xD000000000000017;
  v30._object = 0x8000000100116FA0;
  String.append(_:)(v30);
  if (v22 > 1)
  {
    if (v22 != 3)
    {
      if (v22 == 2)
      {
        v31 = 0x80000001001170C0;
        v32 = 0xD000000000000014;
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v31 = 0xE800000000000000;
    v32 = 0x7374657373416F6ELL;
  }

  else
  {
    v31 = 0xE900000000000065;
    if (v22)
    {
      if (v22 == 1)
      {
        v31 = 0xE90000000000006BLL;
        v32 = 0x726F7774654E6F6ELL;
        goto LABEL_27;
      }

LABEL_24:
      v31 = 0xE700000000000000;
      v32 = 0x6E776F6E6B6E75;
      goto LABEL_27;
    }

    v32 = 0x6C62616C69617661;
  }

LABEL_27:
  v33 = v31;
  String.append(_:)(*&v32);

  v34._object = 0x8000000100116FC0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  if (v23)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v23)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  v37 = v36;
  String.append(_:)(*&v35);

  v38._countAndFlagsBits = 0xD000000000000019;
  v38._object = 0x8000000100116FE0;
  String.append(_:)(v38);
  if (v24)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v24)
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  v41 = v40;
  String.append(_:)(*&v39);

  v43 = v71;
  v42 = v72;
  v44 = static os_log_type_t.info.getter();
  v71 = 0xD00000000000007FLL;
  v72 = 0x8000000100117000;
  v45 = sub_100006198(0x10uLL);
  if (v46)
  {
    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    String.append(_:)(*&v45);

    String.append(_:)(v70);
  }

  v47 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v47 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    v48._countAndFlagsBits = v43;
    v48._object = v42;
    String.append(_:)(v48);
    String.append(_:)(v70);
  }

  v50 = v71;
  v49 = v72;
  v51 = Logger.logObject.getter();
  if (os_log_type_enabled(v51, v44))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v70._countAndFlagsBits = v53;
    *v52 = 136315138;
    v54 = sub_1000075D4(v50, v49, &v70._countAndFlagsBits);

    *(v52 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v51, v44, "%s", v52, 0xCu);
    sub_100006114(v53);
  }

  else
  {
  }

  if (v25)
  {
    v55 = static os_log_type_t.info.getter();
    v71 = 0x72756769666E6F63;
    v72 = 0xEF293A726F662865;
    v56 = sub_100006198(0x10uLL);
    if (v57)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      String.append(_:)(*&v56);

      String.append(_:)(v70);
    }

    if (("kDisabledWhenAssetsAreMissing:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v70._countAndFlagsBits = 32;
      v70._object = 0xE100000000000000;
      v58._countAndFlagsBits = 0xD00000000000003DLL;
      v58._object = 0x8000000100117080;
      String.append(_:)(v58);
      String.append(_:)(v70);
    }

    v60 = v71;
    v59 = v72;
    v61 = Logger.logObject.getter();
    if (os_log_type_enabled(v61, v55))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v70._countAndFlagsBits = v63;
      *v62 = 136315138;
      v64 = sub_1000075D4(v60, v59, &v70._countAndFlagsBits);

      *(v62 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v61, v55, "%s", v62, 0xCu);
      sub_100006114(v63);
    }

    else
    {
    }

    v65 = *(v69 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
    if (v65)
    {
      v66 = *((swift_isaMask & *v65) + 0x118);
      v67 = v65;
      v66();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong siriPresentation:v69 setStatusViewHidden:1];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t _s4Siri36GenerativeModelsCompatabilityWrapperC21siriGMAssetsAvailableSbyFZ_0()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v96 = *(v0 - 8);
  v1 = *(v96 + 64);
  (__chkstk_darwin)();
  v2 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = type metadata accessor for GenerativeModelsAvailability();
  v4 = *(v3 - 8);
  (__chkstk_darwin)();
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v8 = *(v7 - 8);
  (__chkstk_darwin)();
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v8 + 8))(v10, v7);
  v11 = &v87 - v2;
  v12 = v0;
  v13 = v96;
  GenerativeModelsAvailability.availability.getter();
  v14 = (*(v4 + 8))(v6, v3);
  __chkstk_darwin(v14);
  (*(v13 + 16))(&v87 - v2, &v87 - v2, v12);
  v15 = (*(v13 + 88))(&v87 - v2, v12);
  if (&enum case for GenerativeModelsAvailability.Availability.restricted(_:) && v15 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v13 + 96))(&v87 - v2, v12);
    v16 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
    v94 = &v87;
    __chkstk_darwin(v16);
    v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v92 = v20;
    v93 = v19;
    (*(v20 + 32))(v18, &v87 - v2);
    v91 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v98 = 0xD000000000000030;
    v99 = 0x8000000100118650;
    GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
    v21 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
    sub_1000A3A94(&qword_10018E4C0, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
    v90 = v21;
    v22 = Set.description.getter();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26 = v98;
    v27 = v99;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v95 = sub_100006160(v28, qword_10018EE28);
    v29 = static os_log_type_t.info.getter();
    v98 = 0xD000000000000017;
    v99 = 0x80000001001185F0;
    v30 = sub_100006198(0);
    if (v31)
    {
      v97._countAndFlagsBits = 32;
      v97._object = 0xE100000000000000;
      String.append(_:)(*&v30);

      String.append(_:)(v97);
    }

    v32 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v32 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v97._countAndFlagsBits = 32;
      v97._object = 0xE100000000000000;
      v33._countAndFlagsBits = v26;
      v33._object = v27;
      String.append(_:)(v33);
      String.append(_:)(v97);
    }

    v35 = v98;
    v34 = v99;
    v36 = Logger.logObject.getter();
    v37 = os_log_type_enabled(v36, v29);
    v89 = 0x80000001001185F0;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v88 = v18;
      v40 = v13;
      v41 = v12;
      v42 = v11;
      v43 = v39;
      v97._countAndFlagsBits = v39;
      *v38 = 136315138;
      v44 = sub_1000075D4(v35, v34, &v97._countAndFlagsBits);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v29, "%s", v38, 0xCu);
      sub_100006114(v43);
      v11 = v42;
      v12 = v41;
      v13 = v40;
      v18 = v88;
    }

    else
    {
    }

    v71 = v90;
    v72 = *(v90 - 8);
    __chkstk_darwin(v73);
    v75 = &v87 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 104))(v75, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:), v71);
    v76 = sub_1000A37E4(v75, v91);

    (*(v72 + 8))(v75, v71);
    (*(v92 + 8))(v18, v93);
    if (v76)
    {
      (*(v13 + 8))(v11, v12);
      return 0;
    }

    v77 = static os_log_type_t.error.getter();
    v98 = 0xD000000000000017;
    v99 = v89;
    v78 = sub_100006198(0);
    if (v79)
    {
      v97._countAndFlagsBits = 32;
      v97._object = 0xE100000000000000;
      String.append(_:)(*&v78);

      String.append(_:)(v97);
    }

    if (("quest. Reasons: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v97._countAndFlagsBits = 32;
      v97._object = 0xE100000000000000;
      v80._countAndFlagsBits = 0xD000000000000035;
      v80._object = 0x8000000100118690;
      String.append(_:)(v80);
      String.append(_:)(v97);
    }

    v82 = v98;
    v81 = v99;
    v83 = Logger.logObject.getter();
    if (os_log_type_enabled(v83, v77))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v97._countAndFlagsBits = v85;
      *v84 = 136315138;
      v86 = sub_1000075D4(v82, v81, &v97._countAndFlagsBits);

      *(v84 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v83, v77, "%s", v84, 0xCu);
      sub_100006114(v85);
    }

    else
    {
    }
  }

  else
  {
    if (&enum case for GenerativeModelsAvailability.Availability.unavailable(_:) && v15 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      v95 = &v87 - v2;
      (*(v13 + 96))(&v87 - v2, v12);
      v45 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
      v94 = &v87;
      __chkstk_darwin(v45);
      v47 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      v92 = v49;
      v93 = v48;
      (*(v49 + 32))(v47, &v87 - v2);
      v98 = 0;
      v99 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v50._countAndFlagsBits = 0xD000000000000031;
      v50._object = 0x8000000100118610;
      String.append(_:)(v50);
      GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
      sub_1000A3A94(&qword_10018E4B8, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v51 = Set.description.getter();
      v53 = v52;

      v54._countAndFlagsBits = v51;
      v54._object = v53;
      String.append(_:)(v54);

      v56 = v98;
      v55 = v99;
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100006160(v57, qword_10018EE28);
      v58 = static os_log_type_t.info.getter();
      v98 = 0xD000000000000017;
      v99 = 0x80000001001185F0;
      v59 = sub_100006198(0);
      if (v60)
      {
        v97._countAndFlagsBits = 32;
        v97._object = 0xE100000000000000;
        String.append(_:)(*&v59);

        String.append(_:)(v97);
      }

      v61 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v61 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (v61)
      {
        v97._countAndFlagsBits = 32;
        v97._object = 0xE100000000000000;
        v62._countAndFlagsBits = v56;
        v62._object = v55;
        String.append(_:)(v62);
        String.append(_:)(v97);
      }

      v64 = v98;
      v63 = v99;
      v65 = Logger.logObject.getter();
      if (os_log_type_enabled(v65, v58))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v97._countAndFlagsBits = v67;
        *v66 = 136315138;
        v68 = sub_1000075D4(v64, v63, &v97._countAndFlagsBits);

        *(v66 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v65, v58, "%s", v66, 0xCu);
        sub_100006114(v67);
      }

      else
      {
      }

      (*(v92 + 8))(v47, v93);
      (*(v13 + 8))(v95, v12);
      return 0;
    }

    if (!&enum case for GenerativeModelsAvailability.Availability.available(_:) || v15 != enum case for GenerativeModelsAvailability.Availability.available(_:))
    {
      v69 = *(v13 + 8);
      v69(&v87 - v2, v12);
      v69(&v87 - v2, v12);
      return 0;
    }
  }

  (*(v13 + 8))(v11, v12);
  return 1;
}

void sub_10000A190(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_proceedToNextCommandAtSpeechSynthesisEnd) = 1;
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
    if (v3)
    {
      v5 = v3;
      v4 = String._bridgeToObjectiveC()();
      [v5 setPlayerState:0 aceId:v4];
    }
  }
}

uint64_t sub_10000A238(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10000A328(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10000A344(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void sub_10000A3D8(uint64_t a1, id a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR___SRCarPlayPresentation_shouldRequestStartAttendingAfterTTSStarts) == 1)
  {
    v6 = sub_10009DEE8();
    v8 = v7;
    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = v6;
      v46 = a1;
      v47 = a2;
      _StringGuts.grow(_:)(51);
      v11._countAndFlagsBits = 0xD000000000000012;
      v11._object = 0x80000001001174A0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v10;
      v12._object = v8;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 0xD00000000000001FLL;
      v13._object = 0x80000001001174C0;
      String.append(_:)(v13);
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006160(v14, qword_10018EE28);
      v15 = static os_log_type_t.info.getter();
      v51 = 0xD000000000000025;
      v52 = 0x8000000100117470;
      v16 = sub_100006198(1uLL);
      if (v17)
      {
        v49 = 32;
        v50 = 0xE100000000000000;
        String.append(_:)(*&v16);

        v18._countAndFlagsBits = 32;
        v18._object = 0xE100000000000000;
        String.append(_:)(v18);
      }

      v19 = v51;
      v20 = v52;
      v21 = Logger.logObject.getter();
      if (os_log_type_enabled(v21, v15))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v49 = v23;
        *v22 = 136315138;
        v24 = sub_1000075D4(v19, v20, &v49);

        *(v22 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v21, v15, "%s", v22, 0xCu);
        sub_100006114(v23);
      }

      else
      {
      }

      a1 = v46;
      Strong = swift_unknownObjectWeakLoadStrong();
      a2 = v47;
      if (!Strong)
      {

        goto LABEL_27;
      }

      v39 = Strong;
      if (([Strong respondsToSelector:"siriPresentationRequestsStartAttendingForNonSpeechRequest:deviceID:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      v34 = String._bridgeToObjectiveC()();
      [v39 siriPresentationRequestsStartAttendingForNonSpeechRequest:v3 deviceID:v34];

      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006160(v25, qword_10018EE28);
      v26 = static os_log_type_t.info.getter();
      v51 = 0xD000000000000025;
      v52 = 0x8000000100117470;
      v27 = sub_100006198(1uLL);
      if (v28)
      {
        v49 = 32;
        v50 = 0xE100000000000000;
        String.append(_:)(*&v27);

        v29._countAndFlagsBits = 32;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
      }

      if ((". Requesting attending start..." & 0x2F00000000000000) != 0x2000000000000000)
      {
        v49 = 32;
        v50 = 0xE100000000000000;
        v30._countAndFlagsBits = 0xD00000000000003ALL;
        v30._object = 0x80000001001174E0;
        String.append(_:)(v30);
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
      }

      v33 = v51;
      v32 = v52;
      v34 = Logger.logObject.getter();
      if (os_log_type_enabled(v34, v26))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v49 = v36;
        *v35 = 136315138;
        v37 = sub_1000075D4(v33, v32, &v49);

        *(v35 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v34, v26, "%s", v35, 0xCu);
        sub_100006114(v36);
      }

      else
      {
      }
    }
  }

LABEL_27:
  v40 = *(v3 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (v40)
  {
    v40[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_isSpeaking] = 1;
    v41 = *&v40[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
    if (v41)
    {
      v42 = *&v40[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8];
      ObjectType = swift_getObjectType();
      v44 = *(v42 + 48);
      v48 = v40;
      v45 = v41;
      v44(a1, a2, ObjectType, v42);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10000AABC(os_log_type_t a1, Swift::UInt a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v24 = a3;
  v25 = a4;

  v10 = sub_100006198(a2);
  if (v11)
  {
    v22 = 32;
    v23 = 0xE100000000000000;
    String.append(_:)(*&v10);

    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
  }

  if (a6)
  {
    v13 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v22 = 32;
      v23 = 0xE100000000000000;
      v14._countAndFlagsBits = a5;
      v14._object = a6;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 32;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
    }
  }

  v17 = v24;
  v16 = v25;
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, a1))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    v20 = sub_1000075D4(v17, v16, &v22);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, log, a1, "%s", v18, 0xCu);
    sub_100006114(v19);
  }

  else
  {
  }
}

char *sub_10000AC9C(void *a1, _BYTE *a2)
{
  *&a2[OBJC_IVAR____TtC4Siri13SRCarPlayView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC4Siri13SRCarPlayView_dismissalView] = 0;
  *&a2[OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView] = 0;
  *&a2[OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetContainerView] = 0;
  *&a2[OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView] = 0;
  a2[OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground] = 0;
  v4 = OBJC_IVAR____TtC4Siri13SRCarPlayView_showIntelligentLightAnimation;
  a2[v4] = [objc_opt_self() deviceSupportsAI];
  a2[OBJC_IVAR____TtC4Siri13SRCarPlayView_touchPassThrough] = 0;
  v15.receiver = a2;
  v15.super_class = type metadata accessor for SRCarPlayView();
  v5 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC4Siri13SRCarPlayView_delegate + 8] = &off_100169B70;
  swift_unknownObjectWeakAssign();
  v6 = objc_allocWithZone(UITapGestureRecognizer);
  v7 = v5;
  v8 = [v6 initWithTarget:v7 action:"didTapToDismissWithSender:"];
  v9 = [objc_allocWithZone(UIView) init];
  v10 = *&v7[OBJC_IVAR____TtC4Siri13SRCarPlayView_dismissalView];
  *&v7[OBJC_IVAR____TtC4Siri13SRCarPlayView_dismissalView] = v9;

  if (v9)
  {
    v11 = v9;
    [v11 setAutoresizingMask:18];
    [v7 bounds];
    [v11 setFrame:?];
    [v11 addGestureRecognizer:v8];
    [v7 addSubview:v11];
  }

  v12 = [objc_opt_self() sharedPreferences];
  v13 = [v12 getShowAppsBehindSiriInCarPlayEnabled];

  sub_10000AEDC(v13 ^ 1);
  return v7;
}

void sub_10000AEDC(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC4Siri13SRCarPlayView_dismissalView];
  if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView;
  v6 = *&v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView];
  v49 = v3;
  [v6 removeFromSuperview];
  v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground] = a1 & 1;
  if (a1)
  {
    v7 = [objc_opt_self() effectWithStyle:7];
    v8 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v7];
  }

  else
  {
    if ([objc_opt_self() deviceSupportsAI])
    {
      goto LABEL_9;
    }

    v8 = [objc_allocWithZone(UIView) init];
    v9 = [v8 traitCollection];
    v10 = [v9 userInterfaceStyle];

    v11 = objc_opt_self();
    v12 = &selRef_systemGrayColor;
    if (v10 != 1)
    {
      v12 = &selRef_systemGray4Color;
    }

    v13 = [v11 *v12];
    [v8 setBackgroundColor:v13];

    sub_10000A238(0, &qword_10018EE20);
    static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
    sub_10000A238(0, &qword_10018E9A8);
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }

  v14 = *&v2[v5];
  *&v2[v5] = v8;

LABEL_9:
  v15 = *&v2[v5];
  if (v15)
  {
    v16 = v15;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v16 layer];
    [v17 setOpacity:0.0];

    [v2 insertSubview:v16 belowSubview:v49];
    v51 = &type metadata for SiriUIFeaturesFlags;
    v52 = sub_100017934();
    v50[0] = 0;
    v18 = isFeatureEnabled(_:)();
    sub_100006114(v50);
    v19 = objc_opt_self();
    sub_100093B6C(&qword_10018E930);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000F7EF0;
    v21 = [v16 topAnchor];
    if (v18)
    {
      v22 = [v2 topAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v20 + 32) = v23;
      v24 = [v16 bottomAnchor];
      v25 = [v2 bottomAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];

      *(v20 + 40) = v26;
      v27 = [v16 leadingAnchor];
      v28 = [v2 leadingAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];

      *(v20 + 48) = v29;
      v30 = [v16 trailingAnchor];
      v31 = [v2 trailingAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];

      *(v20 + 56) = v32;
    }

    else
    {
      v33 = [v2 safeAreaLayoutGuide];
      v34 = [v33 topAnchor];

      v35 = [v21 constraintEqualToAnchor:v34];
      *(v20 + 32) = v35;
      v36 = [v16 bottomAnchor];
      v37 = [v2 safeAreaLayoutGuide];
      v38 = [v37 bottomAnchor];

      v39 = [v36 constraintEqualToAnchor:v38];
      *(v20 + 40) = v39;
      v40 = [v16 leadingAnchor];
      v41 = [v2 safeAreaLayoutGuide];
      v42 = [v41 leadingAnchor];

      v43 = [v40 constraintEqualToAnchor:v42];
      *(v20 + 48) = v43;
      v44 = [v16 trailingAnchor];
      v45 = [v2 safeAreaLayoutGuide];
      v46 = [v45 trailingAnchor];

      v47 = [v44 constraintEqualToAnchor:v46];
      *(v20 + 56) = v47;
    }

    sub_10000A238(0, &qword_10018E938);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 activateConstraints:isa];
  }

  else
  {
  }
}

void sub_10000B63C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (a1[4])
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC798();
      }
    }

    else
    {
      [a1[5] setDelegate:WeakRetained];
      v3 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v4 = a1[5];
        *buf = 136315650;
        v24 = "[SRSiriViewController _restorePreviousConversation]_block_invoke";
        v25 = 2112;
        v26 = AFUIPreviousConversationIdentifier;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #conversation Loaded previous conversation { identifier: %@, conversation: %@ }", buf, 0x20u);
      }

      if ([WeakRetained _languageMatchesConversation:a1[5]])
      {
        if ([a1[5] isSynchronizedWithServer])
        {
          [WeakRetained _cancelLastRootProvisionalSnippetFromLastRequestInConversation:a1[5]];
        }

        v5 = [WeakRetained _conversations];
        [v5 insertObject:a1[5] atIndex:0];

        v6 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v7 = a1[5];
          *buf = 136315394;
          v24 = "[SRSiriViewController _restorePreviousConversation]_block_invoke";
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #conversation Inserted previous conversation into conversation list { conversation: %@ }", buf, 0x16u);
        }

        v8 = [WeakRetained _presentation];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v24 = "[SRSiriViewController _restorePreviousConversation]_block_invoke";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #conversation Notifying presentation that our conversation list changed", buf, 0xCu);
          }

          v11 = [WeakRetained _presentation];
          [v11 conversationListDidChange];
        }

        v12 = [WeakRetained _presentation];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v24 = "[SRSiriViewController _restorePreviousConversation]_block_invoke";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #conversation Notifying presentation that the previous conversation was loaded from disk", buf, 0xCu);
          }

          v15 = [WeakRetained _presentation];
          [v15 previousConversationDidLoad:a1[5]];
        }
      }

      else
      {
        v16 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v17 = a1[5];
          *buf = 136315394;
          v24 = "[SRSiriViewController _restorePreviousConversation]_block_invoke";
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s #conversation Previous conversation language doesn't match current language; removing from the store { conversation: %@ }", buf, 0x16u);
        }

        v18 = [WeakRetained _conversationStore];
        v19 = AFUIPreviousConversationIdentifier;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100058400;
        v20[3] = &unk_100167E10;
        v21 = a1[5];
        v22 = a1[4];
        [v18 removeConversationWithIdentifier:v19 completionBlock:v20];
      }
    }
  }
}

void sub_10000BADC(void *a1, void *a2)
{
  v3 = v2;
  sub_10000C100(a1, a2);
  v50 = v5;
  if (!v5)
  {
    if (v4)
    {
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006160(v19, qword_10018EE28);
      v20 = static os_log_type_t.info.getter();
      v53 = 0xD00000000000001ELL;
      v54 = 0x8000000100117830;
      v21 = sub_100006198(0x10uLL);
      if (v22)
      {
        v51 = 32;
        v52 = 0xE100000000000000;
        String.append(_:)(*&v21);

        v23._countAndFlagsBits = 32;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);
      }

      if (("eived, doing nothing." & 0x2F00000000000000) != 0x2000000000000000)
      {
        v51 = 32;
        v52 = 0xE100000000000000;
        v24._countAndFlagsBits = 0xD000000000000034;
        v24._object = 0x80000001001178A0;
        String.append(_:)(v24);
        v25._countAndFlagsBits = 32;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
      }

      v27 = v53;
      v26 = v54;
      v28 = Logger.logObject.getter();
      if (os_log_type_enabled(v28, v20))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v51 = v30;
        *v29 = 136315138;
        v31 = sub_1000075D4(v27, v26, &v51);

        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v28, v20, "%s", v29, 0xCu);
        sub_100006114(v30);
      }

      else
      {
      }

      sub_10009A188();
      if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong siriPresentation:v3 setStatusViewHidden:0];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100006160(v32, qword_10018EE28);
      v33 = static os_log_type_t.info.getter();
      v53 = 0xD00000000000001ELL;
      v54 = 0x8000000100117830;
      v34 = sub_100006198(0x10uLL);
      if (v35)
      {
        v51 = 32;
        v52 = 0xE100000000000000;
        String.append(_:)(*&v34);

        v36._countAndFlagsBits = 32;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
      }

      if (("conversation(_:didChangeWith:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v51 = 32;
        v52 = 0xE100000000000000;
        v37._countAndFlagsBits = 0xD000000000000045;
        v37._object = 0x8000000100117850;
        String.append(_:)(v37);
        v38._countAndFlagsBits = 32;
        v38._object = 0xE100000000000000;
        String.append(_:)(v38);
      }

      v40 = v53;
      v39 = v54;
      v41 = Logger.logObject.getter();
      if (os_log_type_enabled(v41, v33))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v51 = v43;
        *v42 = 136315138;
        v44 = sub_1000075D4(v40, v39, &v51);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v41, v33, "%s", v42, 0xCu);
        sub_100006114(v43);
      }

      else
      {
      }
    }

    goto LABEL_39;
  }

  v6 = *(v2 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = *((swift_isaMask & *v6) + 0x120);
  v8 = v6;
  v9 = v50;
  v7();

  v10 = v9;
  v11 = [v10 sash];
  if (v11 && (v12 = v11, v13 = [v11 applicationBundleIdentifier], v12, v13))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector:"siriPresentation:didPresentIntentWithBundleId:"])
    {
      if (v15)
      {
        v18 = String._bridgeToObjectiveC()();
      }

      else
      {
        v18 = 0;
      }

      [v17 siriPresentation:v3 didPresentIntentWithBundleId:v18];

      swift_unknownObjectRelease();

      goto LABEL_39;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_39:
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;

    sub_10000CC64(v48);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 siriPresentation:v3 didPresentConversationItemsWithIdentifiers:isa];

    swift_unknownObjectRelease();
  }
}

void sub_10000C100(void *a1, void *a2)
{
  v84 = type metadata accessor for UUID();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v85 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = [a2 insertedItemIndexPaths];
    if (v10)
    {
      v11 = v10;
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v12 + 16);
      if (v14)
      {
        v70 = v2;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v88 = (v7 + 8);
        v89 = v7 + 16;
        v80 = 0x80000001001178E0;
        v76 = v86 + 32;
        v77 = "ion(_:transaction:)";
        v68 = "sistantUtteranceView";
        v69 = "sistantUtteranceView" & 0x2F00000000000000;
        v66 = "Processing conversation item: ";
        v67 = "Processing conversation item: " & 0x2F00000000000000;
        v87 = &_swiftEmptyArrayStorage;
        v75 = v14 - 1;
        *&v13 = 136315138;
        v72 = v13;
        while (1)
        {
          v83 = v15;
          while (2)
          {
            v18 = v17;
            while (1)
            {
              if (v18 >= *(v12 + 16))
              {
                __break(1u);
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              (*(v7 + 16))(v9, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v6);
              if (!a1)
              {
                goto LABEL_61;
              }

              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v20 = [a1 itemAtIndexPath:isa];

              if (v20)
              {
                break;
              }

              ++v18;
              (*v88)(v9, v6);
              if (v14 == v18)
              {
                goto LABEL_59;
              }
            }

            LODWORD(v78) = v16;
            v73 = a1;
            v91 = 0;
            v92 = 0xE000000000000000;
            _StringGuts.grow(_:)(32);
            v21._countAndFlagsBits = 0xD00000000000001ELL;
            v21._object = (v77 | 0x8000000000000000);
            String.append(_:)(v21);
            v90._countAndFlagsBits = v20;
            sub_100093B6C(&qword_10018E328);
            _print_unlocked<A, B>(_:_:)();
            v22 = v91;
            v82 = v92;
            if (qword_10018D798 != -1)
            {
              swift_once();
            }

            v23 = type metadata accessor for Logger();
            v79 = sub_100006160(v23, qword_10018EE28);
            LODWORD(v81) = static os_log_type_t.info.getter();
            v91 = 0xD000000000000023;
            v92 = v80;
            v24 = sub_100006198(0x10uLL);
            if (v25)
            {
              v90._countAndFlagsBits = 32;
              v90._object = 0xE100000000000000;
              String.append(_:)(*&v24);

              String.append(_:)(v90);
            }

            v26 = HIBYTE(v82) & 0xF;
            if ((v82 & 0x2000000000000000) == 0)
            {
              v26 = v22 & 0xFFFFFFFFFFFFLL;
            }

            if (v26)
            {
              v90._countAndFlagsBits = 32;
              v90._object = 0xE100000000000000;
              v27._countAndFlagsBits = v22;
              v27._object = v82;
              String.append(_:)(v27);
              String.append(_:)(v90);
            }

            v71 = v91;
            v74 = v92;
            v28 = Logger.logObject.getter();
            if (os_log_type_enabled(v28, v81))
            {
              v29 = swift_slowAlloc();
              v65 = v28;
              v30 = v29;
              v64 = swift_slowAlloc();
              v90._countAndFlagsBits = v64;
              *v30 = v72;
              v31 = sub_1000075D4(v71, v74, &v90._countAndFlagsBits);

              *(v30 + 4) = v31;
              v32 = v65;
              _os_log_impl(&_mh_execute_header, v65, v81, "%s", v30, 0xCu);
              sub_100006114(v64);
            }

            else
            {
            }

            v16 = v78;
            v33 = [v20 identifier];
            if (!v33)
            {
              goto LABEL_63;
            }

            v34 = v33;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v35 = v87;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1000126BC(0, v35[2] + 1, 1, v35);
            }

            v37 = v35[2];
            v36 = v35[3];
            v87 = v35;
            if (v37 >= v36 >> 1)
            {
              v87 = sub_1000126BC(v36 > 1, v37 + 1, 1, v87);
            }

            v39 = v86;
            v38 = v87;
            v87[2] = v37 + 1;
            (*(v39 + 32))(v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37, v85, v84);
            v40 = [v20 aceObject];
            v41 = v40;
            if (v83)
            {
              if (!v40)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v83 = sub_10001298C(v40);
              if (!v41)
              {
LABEL_40:
                (*v88)(v9, v6);
                swift_unknownObjectRelease();
LABEL_42:
                a1 = v73;
                goto LABEL_45;
              }
            }

            objc_opt_self();
            v42 = swift_dynamicCastObjCClass();
            if (!v42)
            {

              swift_unknownObjectRelease();
              (*v88)(v9, v6);
              goto LABEL_42;
            }

            v43 = v42;
            v81 = v41;
            if (([v43 preserveResultSpaceIfPossible] & 1) != 0 && sub_10009E17C(v43))
            {
              LODWORD(v82) = static os_log_type_t.info.getter();
              v91 = 0xD000000000000023;
              v92 = v80;
              v44 = sub_100006198(0x10uLL);
              if (v45)
              {
                v90._countAndFlagsBits = 32;
                v90._object = 0xE100000000000000;
                String.append(_:)(*&v44);

                String.append(_:)(v90);
              }

              if (v69 != 0x2000000000000000)
              {
                v90._countAndFlagsBits = 32;
                v90._object = 0xE100000000000000;
                v46._countAndFlagsBits = 0xD00000000000005FLL;
                v46._object = (v68 | 0x8000000000000000);
                String.append(_:)(v46);
                String.append(_:)(v90);
              }

              v47 = v92;
              v74 = v91;
              v79 = Logger.logObject.getter();
              if (os_log_type_enabled(v79, v82))
              {
                v48 = swift_slowAlloc();
                v71 = swift_slowAlloc();
                v90._countAndFlagsBits = v71;
                *v48 = v72;
                v49 = sub_1000075D4(v74, v47, &v90._countAndFlagsBits);

                *(v48 + 4) = v49;
                v50 = v79;
                _os_log_impl(&_mh_execute_header, v79, v82, "%s", v48, 0xCu);
                sub_100006114(v71);

                v16 = v78;

                v51 = v81;

                swift_unknownObjectRelease();
              }

              else
              {
                v52 = v81;

                swift_unknownObjectRelease();
              }

              a1 = v73;
              (*v88)(v9, v6);
LABEL_45:
              v17 = v18 + 1;
              if (v75 != v18)
              {
                continue;
              }

              goto LABEL_59;
            }

            break;
          }

          v53 = static os_log_type_t.info.getter();
          v91 = 0xD000000000000023;
          v92 = v80;
          v54 = sub_100006198(0x10uLL);
          if (v55)
          {
            v90._countAndFlagsBits = 32;
            v90._object = 0xE100000000000000;
            String.append(_:)(*&v54);

            String.append(_:)(v90);
          }

          if (v67 != 0x2000000000000000)
          {
            v90._countAndFlagsBits = 32;
            v90._object = 0xE100000000000000;
            v56._countAndFlagsBits = 0xD000000000000044;
            v56._object = (v66 | 0x8000000000000000);
            String.append(_:)(v56);
            String.append(_:)(v90);
          }

          v57 = v92;
          v78 = v91;
          v82 = Logger.logObject.getter();
          if (os_log_type_enabled(v82, v53))
          {
            v58 = swift_slowAlloc();
            LODWORD(v79) = v53;
            v59 = v58;
            v60 = swift_slowAlloc();
            v90._countAndFlagsBits = v60;
            *v59 = v72;
            v78 = sub_1000075D4(v78, v57, &v90._countAndFlagsBits);

            *(v59 + 4) = v78;
            _os_log_impl(&_mh_execute_header, v82, v79, "%s", v59, 0xCu);
            sub_100006114(v60);

            v61 = v81;

            swift_unknownObjectRelease();
          }

          else
          {
            v62 = v81;

            swift_unknownObjectRelease();
          }

          a1 = v73;
          v17 = v18 + 1;
          (*v88)(v9, v6);
          v16 = 1;
          v63 = v75 == v18;
          v15 = v83;
          if (v63)
          {
            goto LABEL_59;
          }
        }
      }

      v87 = &_swiftEmptyArrayStorage;
LABEL_59:
    }
  }

  else
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

unint64_t *sub_10000CC64(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = &_swiftEmptyArrayStorage;
    sub_100016FAC(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_100016FAC((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      v7[2] = v14 + 1;
      sub_100017168(&v17, &v7[4 * v14 + 4]);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void sub_10000D260(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = OBJC_IVAR___SRSiriSystemUIController_lockState;
  *(v4 + OBJC_IVAR___SRSiriSystemUIController_lockState) = a3;
  v8 = OBJC_IVAR___SRSiriSystemUIController_viewMode;
  *(v4 + OBJC_IVAR___SRSiriSystemUIController_viewMode) = a2;
  *(v4 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) = 0;
  v9 = (v4 + OBJC_IVAR___SRSiriSystemUIController_domainResponseId);
  *v9 = 0;
  v9[1] = 0xE000000000000000;

  *(v4 + OBJC_IVAR___SRSiriSystemUIController_isInAmbient) = a4;
  if (*(v4 + OBJC_IVAR___SRSiriSystemUIController_systemUIDevice) != 1 || *(v4 + v8) != 7)
  {
    return;
  }

  v97 = v7;
  v98 = v8;
  v99 = a4;
  v102 = a1;
  v10 = [a1 views];
  v101 = v9;
  if (!v10)
  {
    v18 = 0;
    goto LABEL_24;
  }

  sub_10000A238(0, &qword_10018E6D0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
LABEL_20:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
LABEL_6:
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v17 = [v14 correspondingSessionID];
        if (v17)
        {
          break;
        }

        ++v13;
        if (v16 == v12)
        {
          goto LABEL_21;
        }
      }

      v19 = v17;

      v20 = [v15 correspondingSessionID];
      if (!v20)
      {
        goto LABEL_22;
      }

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v21;

      goto LABEL_23;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_21:

LABEL_22:
  v18 = 0;
  v10 = 0;
LABEL_23:
  v9 = v101;
LABEL_24:
  v22 = (v4 + OBJC_IVAR___SRSiriSystemUIController_activityId);
  *v22 = v18;
  v22[1] = v10;
  v95 = v22;

  v23 = v102;
  v24 = [v102 patternId];
  if (v24)
  {

    v25 = [v102 patternId];
    if (!v25)
    {
      __break(1u);
      goto LABEL_96;
    }

    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v101;
    *v101 = v27;
    v30[1] = v29;
    v9 = v30;
    goto LABEL_27;
  }

  v47 = [v102 views];
  if (!v47)
  {
    goto LABEL_28;
  }

  v48 = v47;
  sub_10000A238(0, &qword_10018E6D0);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v49 >> 62)
  {
    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (v50)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
LABEL_40:
      if (v50 < 1)
      {
        __break(1u);
        goto LABEL_94;
      }

      v51 = 0;
      v103 = (v49 & 0xC000000000000001);
      v52 = 0x80000001001185B0;
      v96 = v49;
      v100 = v50;
      do
      {
        if (v103)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v53 = *(v49 + 8 * v51 + 32);
        }

        v54 = v53;
        objc_opt_self();
        v55 = swift_dynamicCastObjCClass();
        if (v55)
        {
          v56 = v55;
          v57 = v52;
          v58 = [v55 responseViewId];
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;

          v62 = HIBYTE(v61) & 0xF;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v62 = v59 & 0xFFFFFFFFFFFFLL;
          }

          if (v62)
          {
            v63 = [v56 responseViewId];
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;

            v52 = v57;
            if (v64 == 0xD000000000000015 && v57 == v66)
            {
            }

            else
            {
              v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v68)
              {
              }

              else
              {
                v69 = [v56 responseViewId];
                v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v72 = v71;

                v73 = v101;
                *v101 = v70;
                v73[1] = v72;
                v52 = v57;
              }
            }

            v49 = v96;
          }

          else
          {

            v52 = v57;
          }

          v50 = v100;
        }

        else
        {
        }

        ++v51;
      }

      while (v50 != v51);
      v9 = v101;
    }
  }

LABEL_27:

  v23 = v102;
LABEL_28:
  v31 = v98;
  v32 = v99;
  if (!*(v4 + v97))
  {
    goto LABEL_64;
  }

  v33 = v4;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006160(v34, qword_10018EE28);
  v35 = static os_log_type_t.info.getter();
  v105 = 0xD000000000000033;
  v106 = 0x80000001001184B0;
  v36 = sub_100006198(0x40000000uLL);
  if (v37)
  {
    v104._countAndFlagsBits = 32;
    v104._object = 0xE100000000000000;
    String.append(_:)(*&v36);

    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
  }

  if (("State:isInAmbient:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v104._countAndFlagsBits = 32;
    v104._object = 0xE100000000000000;
    v39._countAndFlagsBits = 0xD00000000000005DLL;
    v39._object = 0x80000001001184F0;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 32;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
  }

  v42 = v105;
  v41 = v106;
  v43 = Logger.logObject.getter();
  if (os_log_type_enabled(v43, v35))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v104._countAndFlagsBits = v45;
    *v44 = 136315138;
    v46 = sub_1000075D4(v42, v41, &v104._countAndFlagsBits);

    *(v44 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v43, v35, "%s", v44, 0xCu);
    sub_100006114(v45);
  }

  else
  {
  }

  v9 = v101;
  v4 = v33;
  sub_1000A229C();
  v32 = v99;
  v31 = v98;
  v23 = v102;
  if (v99)
  {
LABEL_64:
    v74 = [v23 dialogPhase];
    v103 = [objc_opt_self() dialogPhaseForAceDialogPhase:v74];

    if (!v103 || (v75 = [v103 isTemporary], (v75 & 1) == 0))
    {
      v75 = sub_1000A355C(v23);
      if (!v95[1] && (v75 & 1) == 0 && *(v4 + v31) == 7)
      {
        v4 = 0x80000001001184B0;
        if (qword_10018D798 == -1)
        {
LABEL_70:
          v76 = type metadata accessor for Logger();
          sub_100006160(v76, qword_10018EE28);
          v77 = static os_log_type_t.info.getter();
          v105 = 0xD000000000000033;
          v106 = v4;
          v78 = sub_100006198(0x40000000uLL);
          if (v79)
          {
            v104._countAndFlagsBits = 32;
            v104._object = 0xE100000000000000;
            String.append(_:)(*&v78);

            String.append(_:)(v104);
          }

          if ((" presentation for lock screen" & 0x2F00000000000000) != 0x2000000000000000)
          {
            v104._countAndFlagsBits = 32;
            v104._object = 0xE100000000000000;
            v80._countAndFlagsBits = 0xD000000000000052;
            v80._object = 0x8000000100118550;
            String.append(_:)(v80);
            String.append(_:)(v104);
          }

          v82 = v105;
          v81 = v106;
          v83 = Logger.logObject.getter();
          if (os_log_type_enabled(v83, v77))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v104._countAndFlagsBits = v85;
            *v84 = 136315138;
            v86 = sub_1000075D4(v82, v81, &v104._countAndFlagsBits);

            *(v84 + 4) = v86;
            _os_log_impl(&_mh_execute_header, v83, v77, "%s", v84, 0xCu);
            sub_100006114(v85);
          }

          else
          {
          }

          sub_1000A0EF4();

          return;
        }

LABEL_94:
        swift_once();
        goto LABEL_70;
      }
    }

    v87 = v9[1];
    v105 = *v9;
    v106 = v87;
    __chkstk_darwin(v75);
    v94[2] = &v105;

    v88 = sub_10009F440(sub_1000A37C4, v94, &off_100168FB8);

    v89 = OBJC_IVAR___SRSiriSystemUIController_currentActivitySupportsLandscape;
    *(v4 + OBJC_IVAR___SRSiriSystemUIController_currentActivitySupportsLandscape) = v88 & 1;
    if (*(v4 + OBJC_IVAR___SRSiriSystemUIController_systemApertureSupportedDevice) != 1)
    {
      goto LABEL_83;
    }

    if (UIApp)
    {
      if (sub_1000A3744([UIApp activeInterfaceOrientation]) || (*(v4 + v89) & 1) != 0 || (v32 & 1) != 0)
      {
        sub_1000A1208();

        return;
      }

LABEL_83:
      v90 = OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion;
      v91 = *(v4 + OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion);
      if (v91)
      {
        v92 = v91;
        dispatch thunk of ProminentPresentationAssertion.invalidate()();
      }

      v93 = *(v4 + v90);
      *(v4 + v90) = 0;

      return;
    }

LABEL_96:
    __break(1u);
  }
}

void sub_10000DCFC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained presentation];

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F2BC;
    v9[3] = &unk_100168740;
    v11 = a2;
    v10 = v5;
    [v6 _fetchAttendingState:v9];
  }

  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[SRSiriViewController _checkAndUpdateSiriIdleAndQuietStatusIfNeeded]_block_invoke";
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Notifying presentation that Siri's active request options changed, siriIsIdleAndQuiet=%i", buf, 0x12u);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _activeRequestOptionsDidChange];
}

BOOL sub_10000DEA4()
{
  if (*(v0 + OBJC_IVAR___SRSiriSystemUIController_systemUIDevice) != 1 || !*(v0 + OBJC_IVAR___SRSiriSystemUIController_activityId + 8))
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR___SRSiriSystemUIController_systemApertureSupportedDevice))
  {
    return 1;
  }

  return *(v0 + OBJC_IVAR___SRSiriSystemUIController_lockState) != 0;
}

void sub_10000E048(void *a1)
{
  if (a1)
  {
    v2 = v1;
    [objc_opt_self() checkAndEmitSignalsForRequestOptions:a1];
    if ([a1 requestSource] == 14 || objc_msgSend(a1, "requestSource") == 13)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        if ([Strong respondsToSelector:"siriPresentation:didPresentIntentWithBundleId:"])
        {
          v6 = [a1 appBundleIdentifier];
          if (v6)
          {
            v7 = v6;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v8 = String._bridgeToObjectiveC()();
          }

          else
          {
            v8 = 0;
          }

          [v5 siriPresentation:v2 didPresentIntentWithBundleId:v8];

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    v9 = [objc_opt_self() isJarvis];
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    v10._countAndFlagsBits = 0x73697672614A7369;
    v10._object = 0xE90000000000003DLL;
    String.append(_:)(v10);
    if (v9)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v9)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = v12;
    String.append(_:)(*&v11);

    v14._countAndFlagsBits = 0xD000000000000022;
    v14._object = 0x8000000100117440;
    String.append(_:)(v14);
    v32 = [a1 directActionEvent];
    type metadata accessor for AFDirectActionEvent(0);
    _print_unlocked<A, B>(_:_:)();
    v16 = v34;
    v15 = v35;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006160(v17, qword_10018EE28);
    v18 = static os_log_type_t.debug.getter();
    v34 = 0xD00000000000001BLL;
    v35 = 0x8000000100117420;
    v19 = sub_100006198(1uLL);
    if (v20)
    {
      v32 = 32;
      v33 = 0xE100000000000000;
      String.append(_:)(*&v19);

      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
    }

    if ((v15 & 0xF00000000000000) != 0)
    {
      v32 = 32;
      v33 = 0xE100000000000000;
      v22._countAndFlagsBits = v16;
      v22._object = v15;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
    }

    v25 = v34;
    v24 = v35;
    v26 = Logger.logObject.getter();
    if (os_log_type_enabled(v26, v18))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      v29 = sub_1000075D4(v25, v24, &v32);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v26, v18, "%s", v27, 0xCu);
      sub_100006114(v28);
    }

    else
    {
    }

    if (v9)
    {
      if ([a1 directActionEvent])
      {
        *(v2 + OBJC_IVAR___SRCarPlayPresentation_shouldRequestStartAttendingAfterTTSStarts) = 1;
      }
    }

    v30 = *(v2 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
    if (v30)
    {
      v31 = v30;
      sub_10000E5B8(a1);

      *(v2 + OBJC_IVAR___SRCarPlayPresentation_shouldResumeMediaOnIdle) = 0;
      *(v2 + OBJC_IVAR___SRCarPlayPresentation_delayDismissalTimeInSec) = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10000E5B8(void *a1)
{
  v2 = v1;
  v26[2] = 0;
  v26[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v27 = 0;
  v28 = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000044;
  v4._object = 0x8000000100119690;
  String.append(_:)(v4);
  v5 = OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delayedAceCommands;
  swift_beginAccess();
  v26[0] = *(v1 + v5);

  sub_100093B6C(&qword_10018EA08);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006160(v8, qword_10018EE28);
  v9 = static os_log_type_t.info.getter();
  v27 = 0xD00000000000001BLL;
  v28 = 0x8000000100117420;
  v10 = sub_100006198(0x10uLL);
  if (v11)
  {
    v26[0] = 32;
    v26[1] = 0xE100000000000000;
    String.append(_:)(*&v10);

    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
  }

  v14 = v27;
  v13 = v28;
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v9))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136315138;
    v18 = sub_1000075D4(v14, v13, v26);

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v15, v9, "%s", v16, 0xCu);
    sub_100006114(v17);
  }

  else
  {
  }

  *(v2 + v5) = 0;

  v19 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions);
  *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions) = a1;
  v20 = a1;

  v21 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v21)
  {
    v22 = *(v2 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 72);
    v25 = v21;
    v24(a1, ObjectType, v22);
  }
}

void sub_10000E9A0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for UUID();
  v73 = *(v7 - 8);
  __chkstk_darwin(v7);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100093B6C(&unk_10018EA10);
  v10 = __chkstk_darwin(v9 - 8);
  v83 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = (&v66 - v12);
  *(v3 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_isSpeaking) = 0;
  v71 = v3;
  v13 = *(v3 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v13)
  {
    v14 = *(v3 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 32);
    v17 = v13;
    v16(a1, a2, a3 & 1, ObjectType, v14);
  }

  if (a3)
  {
    v18 = OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delayedAceCommands;
    v19 = v71;
    swift_beginAccess();
    v20 = *(v19 + v18);
    if (v20)
    {
      v21 = 0xD000000000000039;
      v22 = 0x80000001001196E0;
      v85 = 0;
      v86 = 0xE000000000000000;

      _StringGuts.grow(_:)(28);

      v85 = 0xD000000000000019;
      v86 = 0x8000000100119720;
      v23 = sub_100093B6C(&qword_10018E6B8);
      v81 = v20;
      v79 = v23;
      v24._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 46;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      v27 = v85;
      v26 = v86;
      if (qword_10018D798 != -1)
      {
LABEL_39:
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      v80 = sub_100006160(v28, qword_10018EE28);
      v29 = static os_log_type_t.info.getter();
      v85 = v21;
      v86 = v22;
      v30 = sub_100006198(0x10uLL);
      if (v31)
      {
        v84._countAndFlagsBits = 32;
        v84._object = 0xE100000000000000;
        String.append(_:)(*&v30);

        String.append(_:)(v84);
      }

      v32 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v32 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v84._countAndFlagsBits = 32;
        v84._object = 0xE100000000000000;
        v33._countAndFlagsBits = v27;
        v33._object = v26;
        String.append(_:)(v33);
        String.append(_:)(v84);
      }

      v35 = v85;
      v34 = v86;
      v36 = Logger.logObject.getter();
      v37 = os_log_type_enabled(v36, v29);
      v69 = v7;
      v67 = v18;
      v77 = v22;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v84._countAndFlagsBits = v39;
        *v38 = 136315138;
        v40 = sub_1000075D4(v35, v34, &v84._countAndFlagsBits);

        *(v38 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v36, v29, "%s", v38, 0xCu);
        sub_100006114(v39);
        v7 = v69;
      }

      else
      {
      }

      v22 = 0;
      v18 = v71 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_delegate;
      v27 = v79;
      v78 = v79 - 8;
      v21 = v81;
      v41 = *(v81 + 16);
      v74 = 0x8000000100119740;
      v75 = (v73 + 4);
      v72 = 0xD00000000000001FLL;
      ++v73;
      *&v42 = 136315138;
      v68 = v42;
      v43 = v70;
      v44 = v83;
      v76 = v41;
      while (1)
      {
        if (v22 == v41)
        {
          v47 = *(v27 - 8);
          (*(v47 + 56))(v44, 1, 1, v27);
          v22 = v41;
        }

        else
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v22 >= *(v21 + 16))
          {
            goto LABEL_38;
          }

          v47 = *(v27 - 8);
          sub_100099924(v21 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22++, v44, &qword_10018E6B8);
          (*(v47 + 56))(v44, 0, 1, v27);
        }

        v48 = v44;
        v49 = v82;
        sub_1000988D4(v48, v82, &unk_10018EA10);
        if ((*(v47 + 48))(v49, 1, v27) == 1)
        {
          break;
        }

        v50 = v18;
        v26 = *v49;
        (*v75)(v43, v49 + *(v27 + 48), v7);
        v85 = 0;
        v86 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v85 = v72;
        v86 = v74;
        swift_getObjectType();
        v84._countAndFlagsBits = v26;
        swift_getWitnessTable();
        v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v51);

        v52._countAndFlagsBits = 46;
        v52._object = 0xE100000000000000;
        String.append(_:)(v52);
        v53 = v85;
        v54 = v86;
        v55 = static os_log_type_t.info.getter();
        v85 = 0xD000000000000039;
        v86 = v77;
        v56 = sub_100006198(0x10uLL);
        if (v57)
        {
          v84._countAndFlagsBits = 32;
          v84._object = 0xE100000000000000;
          String.append(_:)(*&v56);

          String.append(_:)(v84);
        }

        v58 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v58 = v53 & 0xFFFFFFFFFFFFLL;
        }

        if (v58)
        {
          v84._countAndFlagsBits = 32;
          v84._object = 0xE100000000000000;
          v59._countAndFlagsBits = v53;
          v59._object = v54;
          String.append(_:)(v59);
          String.append(_:)(v84);
        }

        v61 = v85;
        v60 = v86;
        v62 = Logger.logObject.getter();
        if (os_log_type_enabled(v62, v55))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v84._countAndFlagsBits = v64;
          *v63 = v68;
          v65 = sub_1000075D4(v61, v60, &v84._countAndFlagsBits);

          *(v63 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v62, v55, "%s", v63, 0xCu);
          sub_100006114(v64);
          v7 = v69;

          v43 = v70;
        }

        else
        {
        }

        v27 = v79;
        v18 = v50;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v45 = *(v50 + 8);
          v46 = swift_getObjectType();
          (*(v45 + 40))(v71, v26, v43, v46, v45);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v44 = v83;
        v21 = v81;
        v41 = v76;
        (*v73)(v43, v7);
      }

      *(v71 + v67) = 0;
    }
  }
}

id sub_10000F2BC(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 136315650;
    v8 = "[SRSiriViewController _checkAndUpdateSiriIdleAndQuietStatusIfNeeded]_block_invoke_2";
    v9 = 1024;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #idleTimer Notifying presentation that Siri's idle and quiet status changed, siriIsIdleAndQuiet=%i isAttending=%i", &v7, 0x18u);
  }

  return [*(a1 + 32) siriIsIdleAndQuietStatusDidChange:*(a1 + 40) isAttending:a2];
}

void sub_10000F39C(char a1, char a2)
{
  *(v2 + OBJC_IVAR___SRCarPlayPresentation_siriIsIdleAndQuiet) = a1;
  v5 = objc_opt_self();
  if ([v5 isJarvis] && objc_msgSend(v5, "flexibleFollowupEnabled") && (a2 & 1) != 0)
  {
    if (a1)
    {

      sub_10009C050();
    }

    else
    {
      v6 = v2;
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006160(v7, qword_10018EE28);
      v8 = static os_log_type_t.info.getter();
      v32 = 0xD00000000000003BLL;
      v33 = 0x8000000100117650;
      v9 = sub_100006198(2uLL);
      if (v10)
      {
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        String.append(_:)(*&v9);

        v11._countAndFlagsBits = 32;
        v11._object = 0xE100000000000000;
        String.append(_:)(v11);
      }

      if (("usDidChange(_:isAttending:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        v12._countAndFlagsBits = 0xD00000000000004CLL;
        v12._object = 0x8000000100117690;
        String.append(_:)(v12);
        v13._countAndFlagsBits = 32;
        v13._object = 0xE100000000000000;
        String.append(_:)(v13);
      }

      v15 = v32;
      v14 = v33;
      v16 = Logger.logObject.getter();
      if (os_log_type_enabled(v16, v8))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v31._countAndFlagsBits = v18;
        *v17 = 136315138;
        v19 = sub_1000075D4(v15, v14, &v31._countAndFlagsBits);

        *(v17 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v16, v8, "%s", v17, 0xCu);
        sub_100006114(v18);
      }

      else
      {
      }

      v20 = static os_log_type_t.info.getter();
      v32 = 0xD000000000000027;
      v33 = 0x8000000100116ED0;
      v21 = sub_100006198(0x20002uLL);
      if (v22)
      {
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        String.append(_:)(*&v21);

        String.append(_:)(v31);
      }

      if (("ttendingWindowClosure()" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        v23._countAndFlagsBits = 0xD000000000000031;
        v23._object = 0x8000000100116F00;
        String.append(_:)(v23);
        String.append(_:)(v31);
      }

      v25 = v32;
      v24 = v33;
      v26 = Logger.logObject.getter();
      if (os_log_type_enabled(v26, v20))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v31._countAndFlagsBits = v28;
        *v27 = 136315138;
        v29 = sub_1000075D4(v25, v24, &v31._countAndFlagsBits);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v26, v20, "%s", v27, 0xCu);
        sub_100006114(v28);
      }

      else
      {
      }

      v30 = objc_opt_self();

      [v30 cancelPreviousPerformRequestsWithTarget:v6 selector:"handleRequestToCeaseAttending" object:0];
    }
  }

  else
  {

    sub_10009AA50(a1 & 1);
  }
}

void sub_10000F8EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10000F908(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10000F928(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_10000F974(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000F9B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10000FB68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _StringGuts.grow(_:)(24);

  v111 = 0x20746E657665;
  v112 = 0xE600000000000000;
  v6 = 0x4674736575716552;
  v7 = 0xEF64656873696E69;
  switch(a2)
  {
    case 0:
      v7 = 0x8000000100117400;
      v6 = 0xD000000000000012;
      break;
    case 1:
      v10 = "SpeechRecordingBegan";
      goto LABEL_12;
    case 2:
      v10 = "SpeechRecordingEnded";
LABEL_12:
      v7 = (v10 - 32) | 0x8000000000000000;
      v6 = 0xD000000000000014;
      break;
    case 3:
      v7 = 0x80000001001173A0;
      v6 = 0xD000000000000018;
      break;
    case 4:
      v7 = 0x8000000100117380;
      v6 = 0xD000000000000015;
      break;
    case 5:
      v7 = 0x8000000100117360;
      v6 = 0xD000000000000010;
      break;
    case 6:
      break;
    case 7:
      v7 = 0xED000064656C6961;
      break;
    case 8:
      v7 = 0xEE00646574726174;
      v6 = 0x53646E616D6D6F43;
      break;
    case 9:
      v9 = 0x6E6167654267;
      goto LABEL_18;
    case 10:
      v9 = 0x6465646E4567;
LABEL_18:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      v6 = 0x6E69646E65747441;
      break;
    case 11:
      v7 = 0xEE00646574636574;
      v6 = 0x6544686365657053;
      break;
    case 12:
      v8 = "SiriDirectedSpeechDetected";
      goto LABEL_10;
    case 13:
      v7 = 0xEF64657461676974;
      v6 = 0x694D686365657053;
      break;
    case 14:
      v7 = 0x8000000100117320;
      v6 = 0xD000000000000011;
      break;
    case 15:
      v8 = "SpeechEndDelayTimeoutFired";
LABEL_10:
      v7 = (v8 - 32) | 0x8000000000000000;
      v6 = 0xD00000000000001ALL;
      break;
    default:
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006160(v11, qword_10018EE28);
      v12 = static os_log_type_t.error.getter();
      v110._countAndFlagsBits = 0x7470697263736564;
      v110._object = 0xEB000000006E6F69;
      v13 = sub_100006198(0);
      if (v14)
      {
        v109._countAndFlagsBits = 32;
        v109._object = 0xE100000000000000;
        String.append(_:)(*&v13);

        v15._countAndFlagsBits = 32;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
      }

      if (("missing immediately." & 0x2F00000000000000) != 0x2000000000000000)
      {
        v109._countAndFlagsBits = 32;
        v109._object = 0xE100000000000000;
        v16._countAndFlagsBits = 0xD000000000000017;
        v16._object = 0x8000000100117260;
        String.append(_:)(v16);
        v17._countAndFlagsBits = 32;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);
      }

      countAndFlagsBits = v110._countAndFlagsBits;
      object = v110._object;
      v20 = Logger.logObject.getter();
      if (os_log_type_enabled(v20, v12))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v109._countAndFlagsBits = v22;
        *v21 = 136315138;
        v23 = sub_1000075D4(countAndFlagsBits, object, &v109._countAndFlagsBits);

        *(v21 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v20, v12, "%s", v21, 0xCu);
        sub_100006114(v22);
      }

      else
      {
      }

      v7 = 0x8000000100117280;
      v6 = 0xD00000000000001ELL;
      break;
  }

  v24 = 0xE900000000000067;
  v25 = 0x676E696B6E696854;
  v26 = v7;
  String.append(_:)(*&v6);

  v27._countAndFlagsBits = 0x206574617473203BLL;
  v28 = 0xE800000000000000;
  v27._object = 0xE800000000000000;
  String.append(_:)(v27);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v28 = 0xE700000000000000;
      v29 = 0x73736563637553;
      goto LABEL_54;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        v28 = 0x80000001001171E0;
        v29 = 0xD000000000000010;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    v42 = 0x646E65747441;
LABEL_51:
    v29 = v42 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    v28 = 0xE900000000000067;
    goto LABEL_54;
  }

  if (!a1)
  {
    v28 = 0xE400000000000000;
    v29 = 1701602377;
    goto LABEL_54;
  }

  if (a1 == 1)
  {
    v42 = 0x6E657473694CLL;
    goto LABEL_51;
  }

  v29 = 0x676E696B6E696854;
  if (a1 == 2)
  {
    goto LABEL_54;
  }

LABEL_41:
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006160(v30, qword_10018EE28);
  v31 = static os_log_type_t.error.getter();
  v110._countAndFlagsBits = 0x7470697263736564;
  v110._object = 0xEB000000006E6F69;
  v32 = sub_100006198(0);
  if (v33)
  {
    v109._countAndFlagsBits = 32;
    v109._object = 0xE100000000000000;
    String.append(_:)(*&v32);

    String.append(_:)(v109);
  }

  if ((" ended with state " & 0x2F00000000000000) != 0x2000000000000000)
  {
    v109._countAndFlagsBits = 32;
    v109._object = 0xE100000000000000;
    v34._countAndFlagsBits = 0xD000000000000017;
    v34._object = 0x8000000100117170;
    String.append(_:)(v34);
    String.append(_:)(v109);
  }

  v36 = v110._countAndFlagsBits;
  v35 = v110._object;
  v37 = Logger.logObject.getter();
  if (os_log_type_enabled(v37, v31))
  {
    v38 = swift_slowAlloc();
    v39 = v3;
    v40 = swift_slowAlloc();
    v109._countAndFlagsBits = v40;
    *v38 = 136315138;
    v41 = sub_1000075D4(v36, v35, &v109._countAndFlagsBits);

    *(v38 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v31, "%s", v38, 0xCu);
    sub_100006114(v40);
    v3 = v39;
  }

  else
  {
  }

  v28 = 0x8000000100117190;
  v29 = 0xD00000000000001ELL;
LABEL_54:
  v43 = v28;
  String.append(_:)(*&v29);

  v44._countAndFlagsBits = 540945696;
  v44._object = 0xE400000000000000;
  String.append(_:)(v44);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v47 = 0xE900000000000065;
    v48 = 0x74617473206C696ELL;
    goto LABEL_80;
  }

  v46 = [Strong siriStateForSiriPresentation:v3];
  swift_unknownObjectRelease();
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  if (v46 > 2)
  {
    switch(v46)
    {
      case 3:
        v24 = 0xE700000000000000;
        v25 = 0x73736563637553;
        goto LABEL_79;
      case 4:
        v25 = 0x6E69646E65747441;
        goto LABEL_79;
      case 5:
        v24 = 0x80000001001171E0;
        v25 = 0xD000000000000010;
        goto LABEL_79;
    }

LABEL_67:
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006160(v49, qword_10018EE28);
    v50 = static os_log_type_t.error.getter();
    v109._countAndFlagsBits = 0x7470697263736564;
    v109._object = 0xEB000000006E6F69;
    v51 = sub_100006198(0);
    if (v52)
    {
      v107 = 32;
      v108 = 0xE100000000000000;
      String.append(_:)(*&v51);

      v53._countAndFlagsBits = 32;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
    }

    if ((" ended with state " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v107 = 32;
      v108 = 0xE100000000000000;
      v54._countAndFlagsBits = 0xD000000000000017;
      v54._object = 0x8000000100117170;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 32;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
    }

    v57 = v109._countAndFlagsBits;
    v56 = v109._object;
    v58 = Logger.logObject.getter();
    if (os_log_type_enabled(v58, v50))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v107 = v60;
      *v59 = 136315138;
      v61 = sub_1000075D4(v57, v56, &v107);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v58, v50, "%s", v59, 0xCu);
      sub_100006114(v60);
    }

    else
    {
    }

    v24 = 0x8000000100117190;
    v25 = 0xD00000000000001ELL;
    goto LABEL_79;
  }

  if (!v46)
  {
    v25 = 1701602377;
    v24 = 0xE400000000000000;
    goto LABEL_79;
  }

  if (v46 == 1)
  {
    v25 = 0x6E696E657473694CLL;
    goto LABEL_79;
  }

  if (v46 != 2)
  {
    goto LABEL_67;
  }

  v24 = 0xE800000000000000;
LABEL_79:
  v62._countAndFlagsBits = v25;
  v62._object = v24;
  String.append(_:)(v62);

  v48 = v110._countAndFlagsBits;
  v47 = v110._object;
LABEL_80:
  v63 = v47;
  String.append(_:)(*&v48);

  v65 = v111;
  v64 = v112;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100006160(v66, qword_10018EE28);
  v67 = static os_log_type_t.info.getter();
  v111 = 0xD00000000000001ELL;
  v112 = 0x80000001001172A0;
  v68 = sub_100006198(0x20010uLL);
  if (v69)
  {
    v110._countAndFlagsBits = 32;
    v110._object = 0xE100000000000000;
    String.append(_:)(*&v68);

    String.append(_:)(v110);
  }

  v70 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v70 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {
    v110._countAndFlagsBits = 32;
    v110._object = 0xE100000000000000;
    v71._countAndFlagsBits = v65;
    v71._object = v64;
    String.append(_:)(v71);
    String.append(_:)(v110);
  }

  v73 = v111;
  v72 = v112;
  v74 = Logger.logObject.getter();
  if (os_log_type_enabled(v74, v67))
  {
    v75 = swift_slowAlloc();
    v76 = a2;
    v77 = v3;
    v78 = swift_slowAlloc();
    v110._countAndFlagsBits = v78;
    *v75 = 136315138;
    v79 = sub_1000075D4(v73, v72, &v110._countAndFlagsBits);

    *(v75 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v74, v67, "%s", v75, 0xCu);
    sub_100006114(v78);
    v3 = v77;
    a2 = v76;
  }

  else
  {
  }

  v80 = objc_opt_self();
  result = [v80 isJarvis];
  if (result)
  {
    result = [v80 flexibleFollowupEnabled];
    if (result)
    {
      if (a2 == 13)
      {
        v97 = static os_log_type_t.info.getter();
        v111 = 0xD00000000000001ELL;
        v112 = 0x80000001001172A0;
        v98 = sub_100006198(0x20000uLL);
        if (v99)
        {
          v110._countAndFlagsBits = 32;
          v110._object = 0xE100000000000000;
          String.append(_:)(*&v98);

          String.append(_:)(v110);
        }

        if (("siriDidTransition(from:event:)" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v110._countAndFlagsBits = 32;
          v110._object = 0xE100000000000000;
          v100._countAndFlagsBits = 0xD000000000000031;
          v100._object = 0x80000001001172C0;
          String.append(_:)(v100);
          String.append(_:)(v110);
        }

        v102 = v111;
        v101 = v112;
        v103 = Logger.logObject.getter();
        if (os_log_type_enabled(v103, v97))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v110._countAndFlagsBits = v105;
          *v104 = 136315138;
          v106 = sub_1000075D4(v102, v101, &v110._countAndFlagsBits);

          *(v104 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v103, v97, "%s", v104, 0xCu);
          sub_100006114(v105);
        }

        else
        {
        }

        v94 = "handleRequestToCeaseAttending";
        v92 = v3;

        return [v92 v94];
      }

      if (a2 == 12 || a2 == 11)
      {
        v82 = static os_log_type_t.info.getter();
        v111 = 0xD000000000000027;
        v112 = 0x8000000100116ED0;
        v83 = sub_100006198(0x20002uLL);
        if (v84)
        {
          v110._countAndFlagsBits = 32;
          v110._object = 0xE100000000000000;
          String.append(_:)(*&v83);

          String.append(_:)(v110);
        }

        if (("ttendingWindowClosure()" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v110._countAndFlagsBits = 32;
          v110._object = 0xE100000000000000;
          v85._countAndFlagsBits = 0xD000000000000031;
          v85._object = 0x8000000100116F00;
          String.append(_:)(v85);
          String.append(_:)(v110);
        }

        v87 = v111;
        v86 = v112;
        v88 = Logger.logObject.getter();
        if (os_log_type_enabled(v88, v82))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v110._countAndFlagsBits = v90;
          *v89 = 136315138;
          v91 = sub_1000075D4(v87, v86, &v110._countAndFlagsBits);

          *(v89 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v88, v82, "%s", v89, 0xCu);
          sub_100006114(v90);
        }

        else
        {
        }

        v92 = objc_opt_self();
        v93 = "handleRequestToCeaseAttending";
        v94 = "cancelPreviousPerformRequestsWithTarget:selector:object:";
        v95 = v3;
        v96 = 0;

        return [v92 v94];
      }
    }
  }

  return result;
}

void sub_100011270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000112B8(double a1, double a2)
{
  v5 = &selRef_textLabel;
  v6 = [v2 view];
  if (!v6)
  {
    return;
  }

  v58 = v6;
  type metadata accessor for SRCarPlayScrollView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    return;
  }

  v8 = v7;
  v57 = v2;
  _StringGuts.grow(_:)(29);
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x8000000100116530;
  String.append(_:)(v9);
  *&v59._countAndFlagsBits = a1;
  *&v59._object = a2;
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006160(v10, qword_10018EE28);
  v11 = static os_log_type_t.info.getter();
  v60 = 0xD00000000000001ALL;
  v61 = 0x8000000100118D10;
  v12 = sub_100006198(0x10uLL);
  if (v13)
  {
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    String.append(_:)(*&v12);

    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  v16 = v60;
  v15 = v61;
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v11))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v59._countAndFlagsBits = v19;
    *v18 = 136315138;
    v20 = sub_1000075D4(v16, v15, &v59._countAndFlagsBits);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v17, v11, "%s", v18, 0xCu);
    sub_100006114(v19);

    v5 = &selRef_textLabel;
  }

  else
  {
  }

  v21 = &v8[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetSize];
  *v21 = a1;
  v21[1] = a2;
  [*&v8[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint] setConstant:a2];
  [*&v8[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint] setConstant:*v21];
  [*&v8[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint] setConstant:v21[1]];
  [v8 setNeedsUpdateConstraints];
  if (a2 > 48.0)
  {
    v22 = static os_log_type_t.info.getter();
    v60 = 0xD00000000000001ALL;
    v61 = 0x8000000100118D10;
    v23 = sub_100006198(0x2000010uLL);
    if (v24)
    {
      v59._countAndFlagsBits = 32;
      v59._object = 0xE100000000000000;
      String.append(_:)(*&v23);

      String.append(_:)(v59);
    }

    if (("informHostOfViewResize(_:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v59._countAndFlagsBits = 32;
      v59._object = 0xE100000000000000;
      v25._countAndFlagsBits = 0xD000000000000029;
      v25._object = 0x8000000100118D30;
      String.append(_:)(v25);
      String.append(_:)(v59);
    }

    v27 = v60;
    v26 = v61;
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v22))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v59._countAndFlagsBits = v30;
      *v29 = 136315138;
      v31 = sub_1000075D4(v27, v26, &v59._countAndFlagsBits);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v28, v22, "%s", v29, 0xCu);
      sub_100006114(v30);
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v48 = Strong;
      if ([objc_opt_self() isEnhancedMaterialEnabled])
      {
        v49 = 28.0;
      }

      else
      {
        v49 = 20.0;
      }

      v50 = [v48 v5[138]];
      if (!v50)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

LABEL_46:

    return;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v32._countAndFlagsBits = 0xD000000000000041;
  v32._object = 0x8000000100118D60;
  String.append(_:)(v32);
  v33._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v33);

  v35 = v60;
  v34 = v61;
  v36 = static os_log_type_t.info.getter();
  v60 = 0xD00000000000001ALL;
  v61 = 0x8000000100118D10;
  v37 = sub_100006198(0x2000010uLL);
  if (v38)
  {
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    String.append(_:)(*&v37);

    String.append(_:)(v59);
  }

  v39 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v39 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    v40._countAndFlagsBits = v35;
    v40._object = v34;
    String.append(_:)(v40);
    String.append(_:)(v59);
  }

  v42 = v60;
  v41 = v61;
  v43 = Logger.logObject.getter();
  if (os_log_type_enabled(v43, v36))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59._countAndFlagsBits = v45;
    *v44 = 136315138;
    v46 = sub_1000075D4(v42, v41, &v59._countAndFlagsBits);

    *(v44 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v43, v36, "%s", v44, 0xCu);
    sub_100006114(v45);
  }

  else
  {
  }

  v51 = swift_unknownObjectWeakLoadStrong();
  if (!v51)
  {
    goto LABEL_46;
  }

  v52 = v51;
  if ([objc_opt_self() deviceSupportsAI])
  {
    v49 = 20.0;
  }

  else
  {
    v49 = 48.0;
  }

  v50 = [v52 v5[138]];
  if (!v50)
  {
    goto LABEL_45;
  }

LABEL_41:
  v53 = v50;
  type metadata accessor for SRCarPlayView();
  v54 = swift_dynamicCastClass();
  if (v54)
  {
    v55 = *(v54 + OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView);
    if (v55)
    {
      v56 = v55;
      sub_100011C5C(v49);
    }

LABEL_45:
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
}

void sub_100011B2C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _notifyPromptedUserForInput];

    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SRSiriViewController _startListenAfterSpeaking]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - not starting Listen After Speaking request because we're already attending.", &v7, 0xCu);
    }
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SRSiriViewController _startListenAfterSpeaking]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation - Starting Listen After Speaking request", &v7, 0xCu);
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _startListenAfterSpeakingRequest];
  }
}

void sub_100011C5C(double a1)
{
  [*&v1[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceContentEffectView] _setContinuousCornerRadius:?];
  [*&v1[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceShimmerEffectView] _setContinuousCornerRadius:a1];
  [*&v1[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceDarkeningView] _setContinuousCornerRadius:a1];
  v3 = *&v1[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView];
  if (v3)
  {
    v4 = [v3 layer];
    [v4 setCornerRadius:a1];
  }

  [*&v1[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView] _setContinuousCornerRadius:a1];
  v5 = [v1 layer];
  [v5 setCornerRadius:a1];
}

void sub_100011D70()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for SRCarPlayScrollViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SRCarPlayScrollView();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
LABEL_20:

      return;
    }

    v4 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC4Siri29SRCarPlayScrollViewController_isRightHandDrive);
    v6 = v2;
    v7 = [v4 accessoryViewAtEdge:(v5 ^ ~SiriLanguageIsRTL()) & 1];
    v8 = v6;
    if (!v7)
    {
LABEL_19:

      *&v4[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_caretMarginOffset] = 0;
      sub_10001221C();
      v2 = v6;
      goto LABEL_20;
    }

    v2 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      [v4 setDelegate:v0];

      v11 = [v10 upButton];
      v12 = [v10 downButton];
      v8 = v12;
      if (!v11)
      {
        v11 = v2;
        goto LABEL_18;
      }

      if (v12)
      {
        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_100006160(v13, qword_10018EE28);
        v14 = static os_log_type_t.info.getter();
        v40 = 0xD000000000000017;
        v41 = 0x8000000100119580;
        v15 = sub_100006198(0x10uLL);
        if (v16)
        {
          v38 = 32;
          v39 = 0xE100000000000000;
          String.append(_:)(*&v15);

          v17._countAndFlagsBits = 32;
          v17._object = 0xE100000000000000;
          String.append(_:)(v17);
        }

        if (("viewDidLayoutSubviews()" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v38 = 32;
          v39 = 0xE100000000000000;
          v18._countAndFlagsBits = 0xD000000000000030;
          v18._object = 0x80000001001195A0;
          String.append(_:)(v18);
          v19._countAndFlagsBits = 32;
          v19._object = 0xE100000000000000;
          String.append(_:)(v19);
        }

        v21 = v40;
        v20 = v41;
        v22 = Logger.logObject.getter();
        if (os_log_type_enabled(v22, v14))
        {
          v23 = swift_slowAlloc();
          v37 = v14;
          v24 = swift_slowAlloc();
          v38 = v24;
          *v23 = 136315138;
          v25 = sub_1000075D4(v21, v20, &v38);

          *(v23 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v22, v37, "%s", v23, 0xCu);
          sub_100006114(v24);
        }

        else
        {
        }

        v26 = v6;
        v27 = [v4 traitCollection];
        v28 = [v27 userInterfaceStyle];

        v29 = objc_opt_self();
        v30 = &selRef_whiteColor;
        if (v28 == 1)
        {
          v30 = &selRef_blackColor;
        }

        v31 = [v29 *v30];
        [v11 setTintColor:v31];

        [v11 setAlpha:0.5];
        v32 = [v4 traitCollection];

        v33 = [v32 userInterfaceStyle];
        v34 = objc_opt_self();
        v35 = &selRef_whiteColor;
        if (v33 == 1)
        {
          v35 = &selRef_blackColor;
        }

        v36 = [v34 *v35];
        [v8 setTintColor:v36];

        [v8 setAlpha:0.5];
        *&v4[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_caretMarginOffset] = 0x4041000000000000;
        sub_10001221C();

        goto LABEL_20;
      }
    }

    else
    {
      v11 = v6;
    }

    v8 = v2;
LABEL_18:

    goto LABEL_19;
  }
}

id sub_10001221C()
{
  v1 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_caretMarginOffset;
  v2 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_isRightHandDrive;
  v3 = -0.5;
  if (v0[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_isRightHandDrive])
  {
    v3 = 0.5;
  }

  [*&v0[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetCenterXConstraint] setConstant:*&v0[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_caretMarginOffset] * v3];
  v4 = *&v0[v1];
  v5 = v0[v2];
  v6 = *&v0[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetLeadingAnchorConstraint];
  if (v5 != 1 || (v7 = 1.0, SiriLanguageIsRTL()))
  {
    v7 = 0.0;
  }

  [v6 setConstant:v4 * v7];

  v8 = *&v0[v1];
  v9 = v0[v2];
  v10 = *&v0[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetTrailingAnchorConstraint];
  if (v9 != 1 || (v11 = -1.0, (SiriLanguageIsRTL() & 1) == 0))
  {
    v11 = 0.0;
  }

  [v10 setConstant:v8 * v11];

  return [v0 setNeedsUpdateConstraints];
}

void sub_100012340(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC67C();
  }
}

void sub_100012674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

size_t sub_1000126BC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100093B6C(&qword_10018E6E0);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10001298C(void *a1)
{
  if (!a1)
  {
    goto LABEL_76;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  v5 = a1;
  v6 = [v4 itemType];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v10)
    {
      if (v8 == v11 && v10 == v12)
      {

LABEL_31:
        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100006160(v55, qword_10018EE28);
        v56 = static os_log_type_t.info.getter();
        v201 = 0xD000000000000021;
        v202 = 0x80000001001179E0;
        v57 = sub_100006198(0x10uLL);
        if (v58)
        {
          v200._countAndFlagsBits = 32;
          v200._object = 0xE100000000000000;
          String.append(_:)(*&v57);

          v59._countAndFlagsBits = 32;
          v59._object = 0xE100000000000000;
          String.append(_:)(v59);
        }

        if (("isualResponseView in RF 1.0 " & 0x2F00000000000000) != 0x2000000000000000)
        {
          v200._countAndFlagsBits = 32;
          v200._object = 0xE100000000000000;
          v60._countAndFlagsBits = 0xD00000000000003ALL;
          v60._object = 0x8000000100117DC0;
          String.append(_:)(v60);
          v61._countAndFlagsBits = 32;
          v61._object = 0xE100000000000000;
          String.append(_:)(v61);
        }

        v63 = v201;
        v62 = v202;
        v64 = Logger.logObject.getter();
        if (os_log_type_enabled(v64, v56))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v200._countAndFlagsBits = v66;
          *v65 = 136315138;
          v67 = sub_1000075D4(v63, v62, &v200._countAndFlagsBits);

          *(v65 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v64, v56, "%s", v65, 0xCu);
          sub_100006114(v66);

LABEL_110:
          return 0;
        }

LABEL_109:

        goto LABEL_110;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_31;
      }

      goto LABEL_13;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_13:

LABEL_14:
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    _StringGuts.grow(_:)(62);
    v18._countAndFlagsBits = 0xD00000000000003CLL;
    v18._object = 0x8000000100117D80;
    String.append(_:)(v18);
    v19 = [v16 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006160(v24, qword_10018EE28);
    v25 = static os_log_type_t.info.getter();
    v201 = 0xD000000000000021;
    v202 = 0x80000001001179E0;
    v26 = sub_100006198(0x10uLL);
    if (v27)
    {
      v200._countAndFlagsBits = 32;
      v200._object = 0xE100000000000000;
      String.append(_:)(*&v26);

      v28._countAndFlagsBits = 32;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
    }

    v30 = v201;
    v29 = v202;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, v25))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v200._countAndFlagsBits = v33;
      *v32 = 136315138;
      v34 = sub_1000075D4(v30, v29, &v200._countAndFlagsBits);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v31, v25, "%s", v32, 0xCu);
      sub_100006114(v33);
    }

    else
    {
    }

LABEL_29:

    return v16;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (v68)
    {
      v69 = v68;
      v70 = qword_10018D798;
      v71 = a1;
      if (v70 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_100006160(v72, qword_10018EE28);
      v73 = static os_log_type_t.info.getter();
      v201 = 0xD000000000000021;
      v202 = 0x80000001001179E0;
      v74 = sub_100006198(0x10uLL);
      if (v75)
      {
        v200._countAndFlagsBits = 32;
        v200._object = 0xE100000000000000;
        String.append(_:)(*&v74);

        v76._countAndFlagsBits = 32;
        v76._object = 0xE100000000000000;
        String.append(_:)(v76);
      }

      if (("onseView in RF 1.0" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v200._countAndFlagsBits = 32;
        v200._object = 0xE100000000000000;
        v77._countAndFlagsBits = 0xD000000000000061;
        v77._object = 0x8000000100117C60;
        String.append(_:)(v77);
        v78._countAndFlagsBits = 32;
        v78._object = 0xE100000000000000;
        String.append(_:)(v78);
      }

      v80 = v201;
      v79 = v202;
      v81 = Logger.logObject.getter();
      if (os_log_type_enabled(v81, v73))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v200._countAndFlagsBits = v83;
        *v82 = 136315138;
        v84 = sub_1000075D4(v80, v79, &v200._countAndFlagsBits);

        *(v82 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v81, v73, "%s", v82, 0xCu);
        sub_100006114(v83);
      }

      else
      {
      }

      v169 = sub_10009D780(v69);
      goto LABEL_114;
    }

    objc_opt_self();
    v109 = swift_dynamicCastObjCClass();
    if (v109)
    {
      v110 = v109;
      v71 = a1;
      v111 = [v110 title];
      if (!v111)
      {
        goto LABEL_116;
      }

      v112 = v111;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = HIBYTE(v115) & 0xF;
      if ((v115 & 0x2000000000000000) == 0)
      {
        v116 = v113 & 0xFFFFFFFFFFFFLL;
      }

      if (v116)
      {
        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v117 = type metadata accessor for Logger();
        sub_100006160(v117, qword_10018EE28);
        v118 = static os_log_type_t.info.getter();
        v201 = 0xD000000000000021;
        v202 = 0x80000001001179E0;
        v119 = sub_100006198(0x10uLL);
        if (v120)
        {
          v200._countAndFlagsBits = 32;
          v200._object = 0xE100000000000000;
          String.append(_:)(*&v119);

          v121._countAndFlagsBits = 32;
          v121._object = 0xE100000000000000;
          String.append(_:)(v121);
        }

        v122 = "esponseView in RF 1.0";
        if (("esponseView in RF 1.0" & 0x2F00000000000000) == 0x2000000000000000)
        {
          goto LABEL_127;
        }

        v200._countAndFlagsBits = 32;
        v200._object = 0xE100000000000000;
        v123 = 0xD000000000000072;
      }

      else
      {
LABEL_116:
        v170 = [v110 subtitle];
        if (!v170)
        {
          goto LABEL_129;
        }

        v171 = v170;
        v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v174 = v173;

        v175 = HIBYTE(v174) & 0xF;
        if ((v174 & 0x2000000000000000) == 0)
        {
          v175 = v172 & 0xFFFFFFFFFFFFLL;
        }

        if (!v175)
        {
LABEL_129:
          if (qword_10018D798 != -1)
          {
            swift_once();
          }

          v187 = type metadata accessor for Logger();
          sub_100006160(v187, qword_10018EE28);
          v188 = static os_log_type_t.info.getter();
          v201 = 0xD000000000000021;
          v202 = 0x80000001001179E0;
          v189 = sub_100006198(0x10uLL);
          if (v190)
          {
            v200._countAndFlagsBits = 32;
            v200._object = 0xE100000000000000;
            String.append(_:)(*&v189);

            v191._countAndFlagsBits = 32;
            v191._object = 0xE100000000000000;
            String.append(_:)(v191);
          }

          if (("h embedded RF 2.0" & 0x2F00000000000000) != 0x2000000000000000)
          {
            v200._countAndFlagsBits = 32;
            v200._object = 0xE100000000000000;
            v192._countAndFlagsBits = 0xD00000000000004CLL;
            v192._object = 0x8000000100117B10;
            String.append(_:)(v192);
            v193._countAndFlagsBits = 32;
            v193._object = 0xE100000000000000;
            String.append(_:)(v193);
          }

          v195 = v201;
          v194 = v202;
          v64 = Logger.logObject.getter();
          if (os_log_type_enabled(v64, v188))
          {
            v196 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            v200._countAndFlagsBits = v197;
            *v196 = 136315138;
            v198 = sub_1000075D4(v195, v194, &v200._countAndFlagsBits);

            *(v196 + 4) = v198;
            _os_log_impl(&_mh_execute_header, v64, v188, "%s", v196, 0xCu);
            sub_100006114(v197);

            goto LABEL_110;
          }

          goto LABEL_109;
        }

        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v176 = type metadata accessor for Logger();
        sub_100006160(v176, qword_10018EE28);
        v118 = static os_log_type_t.info.getter();
        v201 = 0xD000000000000021;
        v202 = 0x80000001001179E0;
        v177 = sub_100006198(0x10uLL);
        if (v178)
        {
          v200._countAndFlagsBits = 32;
          v200._object = 0xE100000000000000;
          String.append(_:)(*&v177);

          v179._countAndFlagsBits = 32;
          v179._object = 0xE100000000000000;
          String.append(_:)(v179);
        }

        v122 = "irmationView, not displaying";
        if (("irmationView, not displaying" & 0x2F00000000000000) == 0x2000000000000000)
        {
          goto LABEL_127;
        }

        v200._countAndFlagsBits = 32;
        v200._object = 0xE100000000000000;
        v123 = 0xD000000000000075;
      }

      v180 = v122 | 0x8000000000000000;
      String.append(_:)(*&v123);
      String.append(_:)(v200);

LABEL_127:
      v182 = v201;
      v181 = v202;
      v183 = Logger.logObject.getter();
      if (os_log_type_enabled(v183, v118))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v200._countAndFlagsBits = v185;
        *v184 = 136315138;
        v186 = sub_1000075D4(v182, v181, &v200._countAndFlagsBits);

        *(v184 + 4) = v186;
        _os_log_impl(&_mh_execute_header, v183, v118, "%s", v184, 0xCu);
        sub_100006114(v185);
      }

      else
      {
      }

      v169 = sub_1000B08E0();
LABEL_114:
      v16 = v169;

      return v16;
    }

LABEL_76:
    v203 = &type metadata for SiriUIFeaturesFlags;
    v204 = sub_100017934();
    LOBYTE(v201) = 1;
    v124 = isFeatureEnabled(_:)();
    sub_100006114(&v201);
    if (a1)
    {
      if (v124)
      {
        objc_opt_self();
        v125 = swift_dynamicCastObjCClass();
        if (v125)
        {
          v16 = v125;
          v126 = a1;
          if (sub_100097514())
          {
            if (qword_10018D798 != -1)
            {
              swift_once();
            }

            v127 = type metadata accessor for Logger();
            sub_100006160(v127, qword_10018EE28);
            v128 = static os_log_type_t.info.getter();
            v201 = 0xD000000000000021;
            v202 = 0x80000001001179E0;
            v129 = sub_100006198(0x10uLL);
            if (v130)
            {
              v200._countAndFlagsBits = 32;
              v200._object = 0xE100000000000000;
              String.append(_:)(*&v129);

              v131._countAndFlagsBits = 32;
              v131._object = 0xE100000000000000;
              String.append(_:)(v131);
            }

            if (("F 2.0. Not displaying." & 0x2F00000000000000) != 0x2000000000000000)
            {
              v200._countAndFlagsBits = 32;
              v200._object = 0xE100000000000000;
              v132._countAndFlagsBits = 0xD000000000000041;
              v132._object = 0x8000000100117AC0;
              String.append(_:)(v132);
              v133._countAndFlagsBits = 32;
              v133._object = 0xE100000000000000;
              String.append(_:)(v133);
            }

            v135 = v201;
            v134 = v202;
            v31 = Logger.logObject.getter();
            if (os_log_type_enabled(v31, v128))
            {
              v136 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v200._countAndFlagsBits = v137;
              *v136 = 136315138;
              v138 = sub_1000075D4(v135, v134, &v200._countAndFlagsBits);

              *(v136 + 4) = v138;
              _os_log_impl(&_mh_execute_header, v31, v128, "%s", v136, 0xCu);
              sub_100006114(v137);

              return v16;
            }

            goto LABEL_29;
          }

          if (qword_10018D798 != -1)
          {
            swift_once();
          }

          v139 = type metadata accessor for Logger();
          sub_100006160(v139, qword_10018EE28);
          v140 = static os_log_type_t.info.getter();
          v201 = 0xD000000000000021;
          v202 = 0x80000001001179E0;
          v141 = sub_100006198(0x10uLL);
          if (v142)
          {
            v200._countAndFlagsBits = 32;
            v200._object = 0xE100000000000000;
            String.append(_:)(*&v141);

            v143._countAndFlagsBits = 32;
            v143._object = 0xE100000000000000;
            String.append(_:)(v143);
          }

          if (("isplay unsupported AceObject: " & 0x2F00000000000000) != 0x2000000000000000)
          {
            v200._countAndFlagsBits = 32;
            v200._object = 0xE100000000000000;
            v144._countAndFlagsBits = 0xD000000000000066;
            v144._object = 0x8000000100117A50;
            String.append(_:)(v144);
            v145._countAndFlagsBits = 32;
            v145._object = 0xE100000000000000;
            String.append(_:)(v145);
          }

          v147 = v201;
          v146 = v202;
          v148 = Logger.logObject.getter();
          if (os_log_type_enabled(v148, v140))
          {
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v200._countAndFlagsBits = v150;
            *v149 = 136315138;
            v151 = sub_1000075D4(v147, v146, &v200._countAndFlagsBits);

            *(v149 + 4) = v151;
            _os_log_impl(&_mh_execute_header, v148, v140, "%s", v149, 0xCu);
            sub_100006114(v150);
          }

          else
          {
          }
        }
      }
    }

    v201 = 0;
    v202 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v152._countAndFlagsBits = 0xD00000000000003ELL;
    v152._object = 0x8000000100117A10;
    String.append(_:)(v152);
    v200._countAndFlagsBits = a1;
    v153 = a1;
    sub_100093B6C(&qword_10018E338);
    v154._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v154);

    v156 = v201;
    v155 = v202;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v157 = type metadata accessor for Logger();
    sub_100006160(v157, qword_10018EE28);
    v158 = static os_log_type_t.info.getter();
    v201 = 0xD000000000000021;
    v202 = 0x80000001001179E0;
    v159 = sub_100006198(0x10uLL);
    if (v160)
    {
      v200._countAndFlagsBits = 32;
      v200._object = 0xE100000000000000;
      String.append(_:)(*&v159);

      String.append(_:)(v200);
    }

    v161 = HIBYTE(v155) & 0xF;
    if ((v155 & 0x2000000000000000) == 0)
    {
      v161 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (v161)
    {
      v200._countAndFlagsBits = 32;
      v200._object = 0xE100000000000000;
      v162._countAndFlagsBits = v156;
      v162._object = v155;
      String.append(_:)(v162);
      String.append(_:)(v200);
    }

    v164 = v201;
    v163 = v202;
    v64 = Logger.logObject.getter();
    if (os_log_type_enabled(v64, v158))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v200._countAndFlagsBits = v166;
      *v165 = 136315138;
      v167 = sub_1000075D4(v164, v163, &v200._countAndFlagsBits);

      *(v165 + 4) = v167;
      _os_log_impl(&_mh_execute_header, v64, v158, "%s", v165, 0xCu);
      sub_100006114(v166);
    }

    else
    {
    }

    goto LABEL_109;
  }

  v16 = v35;
  v199 = v1;
  v36 = a1;
  _StringGuts.grow(_:)(62);
  v37._countAndFlagsBits = 0xD00000000000003CLL;
  v37._object = 0x8000000100117CD0;
  String.append(_:)(v37);
  v38 = &selRef_button;
  v39 = [v16 description];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006160(v44, qword_10018EE28);
  v45 = static os_log_type_t.info.getter();
  v201 = 0xD000000000000021;
  v202 = 0x80000001001179E0;
  v46 = sub_100006198(0x10uLL);
  if (v47)
  {
    v200._countAndFlagsBits = 32;
    v200._object = 0xE100000000000000;
    String.append(_:)(*&v46);

    v48._countAndFlagsBits = 32;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
  }

  v50 = v201;
  v49 = v202;
  v51 = Logger.logObject.getter();
  if (os_log_type_enabled(v51, v45))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v200._countAndFlagsBits = v53;
    *v52 = 136315138;
    v54 = sub_1000075D4(v50, v49, &v200._countAndFlagsBits);

    *(v52 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v51, v45, "%s", v52, 0xCu);
    sub_100006114(v53);
    v38 = &selRef_button;
  }

  else
  {
  }

  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    v85 = [v16 responseViewId];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    if (v86 == 0xD000000000000033 && 0x8000000100117D10 == v88)
    {
    }

    else
    {
      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v89 & 1) == 0)
      {
        return v16;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong siriPresentation:v199 setStatusViewHidden:1];
      swift_unknownObjectRelease();
    }

    v201 = 0;
    v202 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v201 = 0xD000000000000025;
    v202 = 0x8000000100117D50;
    v91 = v36;
    v92 = [v16 v38[194]];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v98 = v201;
    v97 = v202;
    v99 = static os_log_type_t.info.getter();
    v201 = 0xD000000000000021;
    v202 = 0x80000001001179E0;
    v100 = sub_100006198(0x10uLL);
    if (v101)
    {
      v200._countAndFlagsBits = 32;
      v200._object = 0xE100000000000000;
      String.append(_:)(*&v100);

      String.append(_:)(v200);
    }

    v102 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v102 = v98 & 0xFFFFFFFFFFFFLL;
    }

    if (v102)
    {
      v200._countAndFlagsBits = 32;
      v200._object = 0xE100000000000000;
      v103._countAndFlagsBits = v98;
      v103._object = v97;
      String.append(_:)(v103);
      String.append(_:)(v200);
    }

    v105 = v201;
    v104 = v202;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, v99))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v200._countAndFlagsBits = v107;
      *v106 = 136315138;
      v108 = sub_1000075D4(v105, v104, &v200._countAndFlagsBits);

      *(v106 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v31, v99, "%s", v106, 0xCu);
      sub_100006114(v107);
    }

    else
    {
    }

    goto LABEL_29;
  }

  return v16;
}

void sub_100014188(void *a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(31);

  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006160(v9, qword_10018EE28);
  v10 = static os_log_type_t.info.getter();
  v83 = 0xD00000000000001ALL;
  v84 = 0x8000000100119920;
  v11 = sub_100006198(0x10uLL);
  if (v12)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    String.append(_:)(*&v11);

    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
  }

  v14 = (0x8000000100119940 >> 56) & 0xF;
  if ((0x8000000100119940 & 0x2000000000000000) == 0)
  {
    v14 = 29;
  }

  if (v14)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    v15._countAndFlagsBits = 0xD00000000000001DLL;
    v15._object = 0x8000000100119940;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
  }

  v18 = v83;
  v17 = v84;
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v10))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v82._countAndFlagsBits = v21;
    *v20 = 136315138;
    v22 = sub_1000075D4(v18, v17, &v82._countAndFlagsBits);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v19, v10, "%s", v20, 0xCu);
    sub_100006114(v21);
  }

  else
  {
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v24 = &unk_10018E000;
  if (v23)
  {
    v25 = *&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions];
    if (v25)
    {
      v26 = v23;
      v27 = a1;
      v28 = v25;
      v29 = [v28 isRightHandDrive];
      v30 = *&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_lastFocusIndex];
      v31 = v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_lastFocusIndex + 8];
      v32 = objc_allocWithZone(type metadata accessor for SRCarPlayVisualResponseViewController());
      v33 = v2;
      v34 = v31;
      v24 = &unk_10018E000;
      v35 = sub_100014A20(v26, v29, v33, v30, v34, v32);

LABEL_18:
      v42 = &off_100169A10;
LABEL_19:

      v43 = v35;
      sub_100016708(v35, v42, 1);

      goto LABEL_33;
    }
  }

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = *&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions];
    if (v37)
    {
      v38 = v36;
      v39 = a1;
      v33 = v37;
      v40 = [v33 isRightHandDrive];
      v41 = objc_allocWithZone(type metadata accessor for SRCarPlayVisualResponseViewController());
      v35 = sub_1000B3028(v38, v40, v2, v41);
      goto LABEL_18;
    }
  }

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (v44)
  {
    v45 = *&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions];
    if (v45)
    {
      v46 = v44;
      v47 = a1;
      v33 = v45;
      v48 = [v33 isRightHandDrive];
      v49 = objc_allocWithZone(type metadata accessor for SRCarPlayCardViewController());
      v35 = sub_1000B37A4(v46, v48, v2, v49);
      v42 = &off_100169280;
      goto LABEL_19;
    }
  }

  v83 = 0;
  v84 = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v50._countAndFlagsBits = 0xD000000000000027;
  v50._object = 0x8000000100119960;
  String.append(_:)(v50);
  v51 = [a1 description];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55._countAndFlagsBits = v52;
  v55._object = v54;
  String.append(_:)(v55);

  v56._countAndFlagsBits = 0xD000000000000016;
  v56._object = 0x8000000100119990;
  String.append(_:)(v56);
  v82._countAndFlagsBits = *&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_requestOptions];
  sub_1000B41E8();
  sub_1000B4234();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v57._countAndFlagsBits = 46;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  v59 = v83;
  v58 = v84;
  v60 = static os_log_type_t.error.getter();
  v83 = 0xD00000000000001ALL;
  v84 = 0x8000000100119920;
  v61 = sub_100006198(0x10uLL);
  if (v62)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    String.append(_:)(*&v61);

    String.append(_:)(v82);
  }

  v63 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v63 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    v64._countAndFlagsBits = v59;
    v64._object = v58;
    String.append(_:)(v64);
    String.append(_:)(v82);
  }

  v66 = v83;
  v65 = v84;
  v67 = Logger.logObject.getter();
  if (os_log_type_enabled(v67, v60))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v82._countAndFlagsBits = v69;
    *v68 = 136315138;
    v70 = sub_1000075D4(v66, v65, &v82._countAndFlagsBits);

    *(v68 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v67, v60, "%s", v68, 0xCu);
    sub_100006114(v69);
    v24 = &unk_10018E000;
  }

  else
  {
  }

LABEL_33:
  v71 = static os_log_type_t.info.getter();
  v83 = 0xD00000000000001CLL;
  v84 = 0x80000001001199B0;
  v72 = sub_100006198(0x2000010uLL);
  if (v73)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    String.append(_:)(*&v72);

    String.append(_:)(v82);
  }

  if (("resetLastSnippetFocusIndex()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    v74._countAndFlagsBits = 0xD0000000000000A4;
    v74._object = 0x80000001001199D0;
    String.append(_:)(v74);
    String.append(_:)(v82);
  }

  v76 = v83;
  v75 = v84;
  v77 = Logger.logObject.getter();
  if (os_log_type_enabled(v77, v71))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v82._countAndFlagsBits = v79;
    *v78 = 136315138;
    v80 = sub_1000075D4(v76, v75, &v82._countAndFlagsBits);

    *(v78 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v77, v71, "%s", v78, 0xCu);
    sub_100006114(v79);
  }

  else
  {
  }

  v81 = &v2[v24[312]];
  *v81 = 0;
  v81[8] = 1;
}

char *sub_100014A20(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6)
{
  v10 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_aceSnippet;
  *&a6[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_aceSnippet] = 0;
  *&a6[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_pluginSnippet] = 0;
  v11 = &a6[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate];
  *&a6[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a6[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_proceedToNextCommandAtSpeechSynthesisEnd] = 1;
  v12 = [objc_allocWithZone(type metadata accessor for VisualResponseProvider()) init];
  *(v11 + 1) = &off_100169B40;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v13 = *&a6[v10];
  *&a6[v10] = a1;
  v14 = a1;

  sub_100014EE4(0);
  result = [v14 modelData];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = result;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = VisualResponseProvider.view(for:mode:overload:)();
  sub_10001717C(v17, v19);
  *&a6[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet] = v20;
  if (!v20)
  {
    sub_100014EE4(1);
  }

  a6[OBJC_IVAR____TtC4Siri29SRCarPlayScrollViewController_isRightHandDrive] = a2 & 1;
  v51.receiver = a6;
  v51.super_class = type metadata accessor for SRCarPlayScrollViewController();
  v21 = objc_msgSendSuper2(&v51, "initWithNibName:bundle:", 0, 0);
  v22 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet;
  v23 = *&v21[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet];
  if (!v23)
  {
    goto LABEL_10;
  }

  [v23 setBackgroundMaterial:1];
  v24 = *&v21[v22];
  if (!v24)
  {
    goto LABEL_10;
  }

  [v24 setInteractionDelegate:v21];
  v25 = *&v21[v22];
  if (!v25)
  {
    goto LABEL_10;
  }

  [v25 setCurrentIdiom:4];
  v26 = *&v21[v22];
  if (!v26)
  {
    goto LABEL_10;
  }

  v27 = v26;
  v28 = v14;
  result = [v28 viewId];
  if (!result)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v29 = result;

  [v27 setViewId:v29];
LABEL_10:
  if ((a5 & 1) == 0)
  {
    _StringGuts.grow(_:)(45);

    v47 = a4;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006160(v31, qword_10018EE28);
    v32 = static os_log_type_t.info.getter();
    v49 = 0xD00000000000003DLL;
    v50 = 0x8000000100119A80;
    v33 = sub_100006198(0x2000010uLL);
    if (v34)
    {
      v47 = 32;
      v48 = 0xE100000000000000;
      String.append(_:)(*&v33);

      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
    }

    v36 = (0x8000000100119AC0 >> 56) & 0xF;
    if ((0x8000000100119AC0 & 0x2000000000000000) == 0)
    {
      v36 = 43;
    }

    if (v36)
    {
      v47 = 32;
      v48 = 0xE100000000000000;
      v37._countAndFlagsBits = 0xD00000000000002BLL;
      v37._object = 0x8000000100119AC0;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 32;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
    }

    v40 = v49;
    v39 = v50;
    v41 = Logger.logObject.getter();
    if (os_log_type_enabled(v41, v32))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v42 = 136315138;
      v44 = sub_1000075D4(v40, v39, &v47);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v41, v32, "%s", v42, 0xCu);
      sub_100006114(v43);
    }

    else
    {
    }

    v45 = *&v21[v22];
    if (v45)
    {
      [v45 setInitialFocusIndex:a4];
    }
  }

  return v21;
}

uint64_t sub_100014EE4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedManager];
  v7 = [v6 currentInstrumentationTurnContext];

  v8 = [v7 turnIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [objc_allocWithZone(VRXSnippetRenderingContext) initWithRenderingEvent:a1];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v9 emitWithTurnIdentifier:isa];

  return (*(v3 + 8))(v5, v2);
}

void sub_10001505C()
{
  [*&v0[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceContentLightEffect] setActivationTransitionDirection:2];
  [*&v0[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceInsideLightEffect] setActivationTransitionDirection:2];
  [*&v0[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceOutsideLightEffect] setActivationTransitionDirection:2];
  [*&v0[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceRimHighlightEffect] setActivationTransitionDirection:2];
  if ([objc_opt_self() isEnhancedMaterialEnabled])
  {
    v1 = *&v0[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_intelligenceDarkeningView];
    v2 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
    [v1 setBackgroundColor:v2];

    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v14 = sub_1000BBD2C;
    v15 = v4;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100007C78;
    v13 = &unk_100169DA0;
    v5 = _Block_copy(&v10);
    v6 = v0;

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v14 = sub_1000BBD34;
    v15 = v7;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100007BC4;
    v13 = &unk_100169DF0;
    v8 = _Block_copy(&v10);
    v9 = v6;

    [v3 animateWithDuration:v5 animations:v8 completion:1.5];
    _Block_release(v8);
    _Block_release(v5);
  }
}

uint64_t sub_1000152AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100015344(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextConnection;
  v5 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 136315138;
      v19 = "[SRSiriViewController _startListenAfterSpeakingRequest]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #tts TTS queue is empty. Starting new request.", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _startRequestWithOptions:*(a1 + 32)];
  }

  else
  {
    if (v5)
    {
      *buf = 136315138;
      v19 = "[SRSiriViewController _startListenAfterSpeakingRequest]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #tts TTS queue is not empty. Scheduling new request after TTS completion.", buf, 0xCu);
    }

    v7 = *(*(a1 + 40) + 8);
    if (!v7)
    {
      v8 = objc_alloc_init(AFQueue);
      v9 = *(a1 + 40);
      v10 = *(v9 + 8);
      *(v9 + 8) = v8;

      v7 = *(*(a1 + 40) + 8);
    }

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000739C4;
    v15 = &unk_100166FE8;
    objc_copyWeak(&v17, (a1 + 48));
    v16 = *(a1 + 32);
    v11 = objc_retainBlock(&v12);
    [v7 enqueueObject:{v11, v12, v13, v14, v15}];

    objc_destroyWeak(&v17);
  }
}

void sub_1000155A4(void *a1)
{
  v2 = type metadata accessor for UUID();
  v79 = *(v2 - 1);
  __chkstk_darwin(v2);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v83 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v82 = 0xD000000000000022;
  v83 = 0x8000000100118990;
  v5 = a1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v12 = v82;
  v11 = v83;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100006160(v13, qword_10018EE28);
  v15 = static os_log_type_t.info.getter();
  v82 = 0xD00000000000001CLL;
  v83 = 0x8000000100118970;
  v80 = 0x8000000100118970;
  v16 = sub_100006198(0x2000000uLL);
  if (v17)
  {
    v81._countAndFlagsBits = 32;
    v81._object = 0xE100000000000000;
    String.append(_:)(*&v16);

    String.append(_:)(v81);
  }

  v18 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v18 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v81._countAndFlagsBits = 32;
    v81._object = 0xE100000000000000;
    v19._countAndFlagsBits = v12;
    v19._object = v11;
    String.append(_:)(v19);
    String.append(_:)(v81);
  }

  v21 = v82;
  v20 = v83;
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, v15))
  {
    v23 = swift_slowAlloc();
    v77 = v4;
    v78 = v2;
    v24 = v23;
    v25 = v14;
    v26 = swift_slowAlloc();
    v81._countAndFlagsBits = v26;
    *v24 = 136315138;
    v27 = sub_1000075D4(v21, v20, &v81._countAndFlagsBits);

    *(v24 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v22, v15, "%s", v24, 0xCu);
    sub_100006114(v26);
    v14 = v25;

    v2 = v78;
    v4 = v77;
  }

  else
  {
  }

  v28 = v80;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v78 = v5;
    v32 = [v31 sharedManager];
    v33 = [v32 currentInstrumentationTurnContext];

    if ([v30 requiresNewTurn])
    {
      v76 = v31;
      v77 = v14;
      v34 = objc_opt_self();
      v35 = [v33 turnIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v37 = *(v79 + 8);
      v37(v4, v2);
      v38 = [v34 newTurnBasedContextWithPreviousTurnID:isa];

      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v82 = 0xD00000000000001DLL;
      v83 = 0x8000000100118A10;
      v75 = v38;
      v39 = [v38 turnIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000AD170(&qword_10018E6C0, &type metadata accessor for UUID);
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v37(v4, v2);
      v41._countAndFlagsBits = 0x646C4F203E2D3C20;
      v41._object = 0xEE00206E72755420;
      String.append(_:)(v41);
      v42 = [v33 turnIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v37(v4, v2);
      v45 = v82;
      v44 = v83;
      v46 = static os_log_type_t.info.getter();
      v82 = 0xD00000000000001CLL;
      v83 = v80;
      v47 = sub_100006198(0x2000000uLL);
      if (v48)
      {
        v81._countAndFlagsBits = 32;
        v81._object = 0xE100000000000000;
        String.append(_:)(*&v47);

        String.append(_:)(v81);
      }

      v49 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v49 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        v81._countAndFlagsBits = 32;
        v81._object = 0xE100000000000000;
        v50._countAndFlagsBits = v45;
        v50._object = v44;
        String.append(_:)(v50);
        String.append(_:)(v81);
      }

      v52 = v82;
      v51 = v83;
      v53 = Logger.logObject.getter();
      if (os_log_type_enabled(v53, v46))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v77 = v4;
        v56 = v2;
        v57 = v46;
        v58 = v55;
        v81._countAndFlagsBits = v55;
        *v54 = 136315138;
        v59 = sub_1000075D4(v52, v51, &v81._countAndFlagsBits);

        *(v54 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v53, v57, "%s", v54, 0xCu);
        sub_100006114(v58);
        v2 = v56;
        v4 = v77;
      }

      else
      {
      }

      v33 = v75;
      v70 = [v76 sharedManager];
      [v70 storeCurrentInstrumentationTurnContext:v33];
    }

    type metadata accessor for RFInteractionPerformed();
    if (swift_dynamicCastClass())
    {
      v71 = v78;
      sub_1000AB358();
      dispatch thunk of RFInteractionPerformed.invocation.setter();
    }

    v72 = [v33 turnIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v79 + 8))(v4, v2);
    [v30 emitWithTurnIdentifier:v73];
  }

  else
  {
    v60 = static os_log_type_t.info.getter();
    v82 = 0xD00000000000001CLL;
    v83 = v28;
    v61 = sub_100006198(0x2000000uLL);
    if (v62)
    {
      v81._countAndFlagsBits = 32;
      v81._object = 0xE100000000000000;
      String.append(_:)(*&v61);

      String.append(_:)(v81);
    }

    if (("trumentationEvent " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v81._countAndFlagsBits = 32;
      v81._object = 0xE100000000000000;
      v63._countAndFlagsBits = 0xD000000000000045;
      v63._object = 0x80000001001189C0;
      String.append(_:)(v63);
      String.append(_:)(v81);
    }

    v65 = v82;
    v64 = v83;
    v66 = Logger.logObject.getter();
    if (os_log_type_enabled(v66, v60))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v81._countAndFlagsBits = v68;
      *v67 = 136315138;
      v69 = sub_1000075D4(v65, v64, &v81._countAndFlagsBits);

      *(v67 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v66, v60, "%s", v67, 0xCu);
      sub_100006114(v68);
    }

    else
    {
    }
  }
}

uint64_t sub_100015F34(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(35);

  v24 = a1;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006160(v6, qword_10018EE28);
  v7 = static os_log_type_t.info.getter();
  v26 = 0xD000000000000019;
  v27 = 0x8000000100118B20;
  v8 = sub_100006198(0x2000010uLL);
  if (v9)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    String.append(_:)(*&v8);

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }

  v11 = (0x8000000100118B40 >> 56) & 0xF;
  if ((0x8000000100118B40 & 0x2000000000000000) == 0)
  {
    v11 = 32;
  }

  if (v11)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    v12._countAndFlagsBits = 0xD000000000000020;
    v12._object = 0x8000000100118B40;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
  }

  v15 = v26;
  v14 = v27;
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v7))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v19 = sub_1000075D4(v15, v14, &v24);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v16, v7, "%s", v17, 0xCu);
    sub_100006114(v18);
  }

  else
  {
  }

  v20 = v2 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v22 + 8) + 72))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100016214(uint64_t a1)
{
  result = NSNotFound.getter();
  if (result == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = v1 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_lastFocusIndex;
  *v5 = v4;
  *(v5 + 8) = result == a1;
  return result;
}

void sub_1000162B0(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetContainerView;
  v5 = *&v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetContainerView];
  if (a1)
  {
    type metadata accessor for SRCarPlayScrollView();
    v7 = swift_dynamicCastClass();
    if (v7 && *(v7 + OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_isFullScreen) == 1)
    {
      v8 = v7;
      v9 = v5;
      v10 = a1;
      v11 = sub_1000C51A4(v8);
    }

    else
    {
      v12 = v5;
      v10 = a1;
      v11 = sub_1000C5DAC(v10);
    }

    v13 = v11;
  }

  else
  {
    v14 = v5;
    v13 = 0;
  }

  v15 = *&v2[v4];
  *&v2[v4] = v13;
  v16 = v13;

  if (v5 | v13)
  {
    v17 = objc_opt_self();
    [v17 begin];
    if (v5)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v5;
      v43[4] = sub_1000C6BF4;
      v43[5] = v18;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 1107296256;
      v43[2] = sub_100007C78;
      v43[3] = &unk_10016A6A0;
      v19 = _Block_copy(v43);
      v20 = v5;

      [v17 setCompletionBlock:v19];
      _Block_release(v19);

      if (v13)
      {
        v21 = v20;
        v22 = v16;
        [v2 insertSubview:v22 belowSubview:v21];
        if (a2)
        {
          sub_1000C6A1C(v21, 2u);
          sub_1000C6A1C(v22, 1u);
        }

        else
        {
          v26 = [v22 layer];
          LODWORD(v27) = 1.0;
          [v26 setOpacity:v27];

          v28 = [v21 layer];
          [v28 setOpacity:0.0];
        }

LABEL_30:
        [v17 commit];
        if (v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_showIntelligentLightAnimation] == 1)
        {
          v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_showIntelligentLightAnimation] = 0;
          v41 = *&v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView];
          if (v41)
          {
            v42 = v41;
            sub_10001505C();
          }
        }

        return;
      }

      if ((a2 & 1) == 0)
      {
        v34 = *&v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView];
        v35 = v20;
        if (v34)
        {
          v36 = [v34 layer];
          [v36 setOpacity:0.0];
        }

        v40 = [v20 layer];
        [v40 setOpacity:0.0];

        goto LABEL_30;
      }

      v23 = v20;
      sub_1000C4E38(1);
      v24 = v23;
      v25 = 3;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_30;
      }

      if ((a2 & 1) == 0)
      {
        v29 = *&v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_backgroundView];
        if (v29)
        {
          v30 = v16;
          v31 = [v29 layer];
          v32 = v31;
          LODWORD(v33) = 0.5;
          if (v2[OBJC_IVAR____TtC4Siri13SRCarPlayView_isUsingOpaqueBackground])
          {
            *&v33 = 1.0;
          }

          [v31 setOpacity:v33];
        }

        else
        {
          v37 = v16;
        }

        v38 = [v16 layer];
        LODWORD(v39) = 1.0;
        [v38 setOpacity:v39];

        goto LABEL_30;
      }

      v23 = v16;
      sub_1000C4E38(0);
      v24 = v23;
      v25 = 0;
    }

    sub_1000C6A1C(v24, v25);

    goto LABEL_30;
  }
}

uint64_t sub_1000166D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100016708(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = a1;
    _StringGuts.grow(_:)(43);
    v5._countAndFlagsBits = 0xD00000000000001FLL;
    v5._object = 0x8000000100119900;
    String.append(_:)(v5);
    ObjectType = swift_getObjectType();
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7._countAndFlagsBits = 0x203A77656976202CLL;
    v7._object = 0xE800000000000000;
    String.append(_:)(v7);
    v56 = v4;
    v59 = [v4 view];
    sub_100093B6C(&qword_10018EA20);
    v8._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v8);

    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006160(v9, qword_10018EE28);
    v10 = static os_log_type_t.info.getter();
    v61 = 0xD000000000000031;
    v62 = 0x8000000100119890;
    v11 = sub_100006198(0x10uLL);
    if (v12)
    {
      v59 = 32;
      v60 = 0xE100000000000000;
      String.append(_:)(*&v11);

      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
    }

    v14 = v61;
    v15 = v62;
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v10))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v59 = v18;
      *v17 = 136315138;
      v19 = sub_1000075D4(v14, v15, &v59);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v16, v10, "%s", v17, 0xCu);
      sub_100006114(v18);
    }

    else
    {
    }

    v34 = [v56 view];
    v35 = &v58[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
    v36 = *&v58[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
    v37 = *&v58[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8];
    v38 = *(a2 + 88);
    v39 = v36;
    v40 = v38(v36, v37, ObjectType, a2);

    v41 = *v35;
    v42 = *v35;
    v43 = [v58 view];
    if (v43)
    {
      v44 = v43;
      type metadata accessor for SRCarPlayView();
      if (swift_dynamicCastClass())
      {
        sub_1000162B0(v34, (v40 ^ 1) & 1);
        if (v41)
        {
          [v42 willMoveToParentViewController:0];
          [v42 removeFromParentViewController];
        }

        v45 = v56;
        [v58 addChildViewController:v45];
        v46 = v45;
        [v46 didMoveToParentViewController:v58];
      }

      else
      {
        v46 = v42;
        v42 = v34;
        v34 = v44;
      }
    }

    v53 = *v35;
    *v35 = a1;
    *(v35 + 1) = a2;

    return;
  }

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006160(v21, qword_10018EE28);
  v22 = static os_log_type_t.info.getter();
  v61 = 0xD000000000000031;
  v62 = 0x8000000100119890;
  v23 = sub_100006198(0x10uLL);
  if (v24)
  {
    v59 = 32;
    v60 = 0xE100000000000000;
    String.append(_:)(*&v23);

    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
  }

  if (("_:shouldAnimate:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v59 = 32;
    v60 = 0xE100000000000000;
    v26._countAndFlagsBits = 0xD00000000000002ALL;
    v26._object = 0x80000001001198D0;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
  }

  v28 = v61;
  v29 = v62;
  v30 = Logger.logObject.getter();
  if (os_log_type_enabled(v30, v22))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v59 = v32;
    *v31 = 136315138;
    v33 = sub_1000075D4(v28, v29, &v59);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v30, v22, "%s", v31, 0xCu);
    sub_100006114(v32);
  }

  else
  {
  }

  v47 = &v58[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
  v48 = *&v58[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
  v49 = v48;
  v50 = [v58 view];
  if (v50)
  {
    v51 = v50;
    type metadata accessor for SRCarPlayView();
    if (swift_dynamicCastClass())
    {
      sub_1000162B0(0, a3 & 1);
      if (!v48)
      {
        v49 = v51;
        goto LABEL_33;
      }

      [v49 willMoveToParentViewController:0];
      [v49 removeFromParentViewController];
      v52 = v51;
    }

    else
    {
      v52 = v49;
      v49 = v51;
    }
  }

LABEL_33:

  v54 = *v47;
  *v47 = 0;
  *(v47 + 1) = a2;
}

char *sub_100016E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100093B6C(&qword_10018E320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100016FAC(char *a1, int64_t a2, char a3)
{
  result = sub_100016E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100016FCC()
{
  v1 = *&v0[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippet];
  if (!v1)
  {
    sub_100093B6C(&qword_10018E930);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000F79C0;
    *(v8 + 32) = v0;
    v9 = v0;
    return v8;
  }

  v2 = v1;
  v3 = [v2 subviews];
  sub_10000A238(0, &qword_10018E9A8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    sub_100093B6C(&qword_10018E930);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000F79C0;
    *(v8 + 32) = v2;
    return v8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    sub_100093B6C(&qword_10018E930);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000F79C0;
    *(v8 + 32) = v7;

    return v8;
  }

  __break(1u);
  return result;
}

_OWORD *sub_100017168(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001717C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_10001725C(char a1)
{
  *&v1[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippet] = 0;
  v1[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_isFullScreen] = 0;
  v3 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint;
  *&v1[v3] = [objc_allocWithZone(NSLayoutConstraint) init];
  v4 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint;
  *&v1[v4] = [objc_allocWithZone(NSLayoutConstraint) init];
  v5 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint;
  *&v1[v5] = [objc_allocWithZone(NSLayoutConstraint) init];
  v6 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetCenterXConstraint;
  *&v1[v6] = [objc_allocWithZone(NSLayoutConstraint) init];
  v7 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetLeadingAnchorConstraint;
  *&v1[v7] = [objc_allocWithZone(NSLayoutConstraint) init];
  v8 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetTrailingAnchorConstraint;
  *&v1[v8] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v1[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_caretMarginOffset] = 0;
  v9 = &v1[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetSize];
  *v9 = 0;
  v9[1] = 0;
  v1[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_isRightHandDrive] = a1;
  v47.receiver = v1;
  v47.super_class = type metadata accessor for SRCarPlayScrollView();
  v10 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setBouncesHorizontally:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v10 widthAnchor];
  v12 = [v11 constraintEqualToConstant:0.0];

  v46 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint;
  v13 = *&v10[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint];
  *&v10[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint] = v12;
  v14 = v12;

  LODWORD(v15) = 1132068864;
  [v14 setPriority:v15];

  v16 = [v10 heightAnchor];
  v17 = [v16 constraintEqualToConstant:0.0];

  v18 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint;
  v19 = *&v10[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint];
  *&v10[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint] = v17;
  v20 = v17;

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];

  v22 = [v10 widthAnchor];
  v23 = [v22 constraintLessThanOrEqualToConstant:331.0];

  LODWORD(v24) = 1144750080;
  [v23 setPriority:v24];
  v25 = [v10 widthAnchor];
  v26 = [v25 constraintGreaterThanOrEqualToConstant:331.0];

  LODWORD(v27) = 1144750080;
  [v26 setPriority:v27];
  v28 = [v10 heightAnchor];
  v29 = [v28 constraintLessThanOrEqualToConstant:274.0];

  LODWORD(v30) = 1144750080;
  [v29 setPriority:v30];
  v31 = [v10 heightAnchor];

  v32 = [v31 constraintGreaterThanOrEqualToConstant:0.0];
  LODWORD(v33) = 1144750080;
  [v29 setPriority:v33];
  v34 = objc_opt_self();
  sub_100093B6C(&qword_10018E930);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000F7C00;
  v36 = *&v10[v46];
  *(v35 + 32) = v36;
  v37 = *&v10[v18];
  *(v35 + 40) = v37;
  *(v35 + 48) = v23;
  *(v35 + 56) = v26;
  *(v35 + 64) = v29;
  *(v35 + 72) = v32;
  sub_10000A238(0, &qword_10018E938);
  v38 = v36;
  v39 = v37;
  v40 = v23;
  v41 = v26;
  v42 = v29;
  v43 = v32;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  return v10;
}

void sub_1000177DC()
{
  v1 = v0[OBJC_IVAR___SRCarPlayPresentation_siriIsIdleAndQuiet];
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v2 = objc_opt_self();
    if ([v2 isJarvis] && objc_msgSend(v2, "flexibleFollowupEnabled"))
    {

      sub_10009C050();
    }

    else
    {
      v3 = v0;
      v4 = *&v0[OBJC_IVAR___SRCarPlayPresentation_carPlayViewController];
      if (v4)
      {
        if (((*((swift_isaMask & *v4) + 0x128))() & 1) == 0)
        {
          [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:"autodismiss" object:0];

          [v3 performSelector:"autodismiss" withObject:0 afterDelay:6.0];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_100017934()
{
  result = qword_10018E330;
  if (!qword_10018E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E330);
  }

  return result;
}

const char *sub_100017988()
{
  v1 = "ResponseFramework";
  if (*v0 != 1)
  {
    v1 = "SiriUI";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "CarPlay";
  }
}

const char *sub_1000179D0()
{
  v1 = "SMART";
  if (*v0 != 1)
  {
    v1 = "visual_intelligence_direct_routing";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "CarPlayUIRefresh";
  }
}

void sub_100017A64()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet];
  if (!v2)
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006160(v13, qword_10018EE28);
    v14 = static os_log_type_t.error.getter();
    strcpy(v40, "viewDidLoad()");
    HIWORD(v40[1]) = -4864;
    v15 = sub_100006198(0x10uLL);
    if (v16)
    {
      v38 = 32;
      v39 = 0xE100000000000000;
      String.append(_:)(*&v15);

      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
    }

    if (("navigateWithResponseData(_:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v38 = 32;
      v39 = 0xE100000000000000;
      v18._countAndFlagsBits = 0xD000000000000025;
      v18._object = 0x8000000100118EE0;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
    }

    v21 = v40[0];
    v20 = v40[1];
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v14))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      v25 = sub_1000075D4(v21, v20, &v38);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, v14, "%s", v23, 0xCu);
      sub_100006114(v24);

LABEL_29:

      return;
    }

LABEL_28:

    goto LABEL_29;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_19:
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006160(v26, qword_10018EE28);
    v27 = static os_log_type_t.error.getter();
    strcpy(v40, "viewDidLoad()");
    HIWORD(v40[1]) = -4864;
    v28 = sub_100006198(0x10uLL);
    if (v29)
    {
      v38 = 32;
      v39 = 0xE100000000000000;
      String.append(_:)(*&v28);

      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
    }

    if (("Unable to add Subview" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v38 = 32;
      v39 = 0xE100000000000000;
      v31._countAndFlagsBits = 0xD000000000000027;
      v31._object = 0x8000000100118F10;
      String.append(_:)(v31);
      v32._countAndFlagsBits = 32;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
    }

    v34 = v40[0];
    v33 = v40[1];
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v27))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v35 = 136315138;
      v37 = sub_1000075D4(v34, v33, &v38);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v22, v27, "%s", v35, 0xCu);
      sub_100006114(v36);

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v5 = v4;
  type metadata accessor for SRCarPlayScrollView();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_19;
  }

  v6 = v3;
  v7 = [v6 responseViewId];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == 0xD000000000000033 && 0x8000000100117D10 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100017F74(v2, v12 & 1);
}

void sub_100017F74(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippet;
  v6 = *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippet];
  if (v6)
  {
    v7 = v6;
    isa = [v7 constraints];
    if (!isa)
    {
      sub_10000A238(0, &qword_10018E938);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [objc_opt_self() deactivateConstraints:isa];

    [v7 removeFromSuperview];
  }

  if (a1)
  {
    v9 = a1;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 addSubview:v9];
    v10 = [v9 heightAnchor];
    [*&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint] constant];
    v11 = [v10 constraintEqualToConstant:?];

    v49 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint;
    v12 = *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint];
    *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint] = v11;

    v13 = [v9 centerXAnchor];
    v14 = [v2 centerXAnchor];
    v50 = a2;
    v15 = [v13 constraintEqualToAnchor:v14];

    v16 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetCenterXConstraint;
    v17 = *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetCenterXConstraint];
    *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetCenterXConstraint] = v15;

    v18 = [v9 leadingAnchor];
    v19 = [v2 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    v21 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetLeadingAnchorConstraint;
    v22 = *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetLeadingAnchorConstraint];
    *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetLeadingAnchorConstraint] = v20;

    v23 = [v9 trailingAnchor];
    v24 = [v2 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    v26 = OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetTrailingAnchorConstraint;
    v27 = *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetTrailingAnchorConstraint];
    *&v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetTrailingAnchorConstraint] = v25;

    v48 = objc_opt_self();
    sub_100093B6C(&qword_10018E930);
    v28 = swift_allocObject();
    v29 = *&v2[v16];
    v30 = *&v2[v21];
    *(v28 + 16) = xmmword_1000F7C00;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    v31 = *&v2[v26];
    *(v28 + 48) = v31;
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v35 = [v9 topAnchor];
    v36 = [v2 contentLayoutGuide];
    v37 = [v36 topAnchor];

    v38 = [v35 constraintEqualToAnchor:v37];
    *(v28 + 56) = v38;
    v39 = [v9 bottomAnchor];
    v40 = [v2 contentLayoutGuide];
    v41 = [v40 bottomAnchor];

    v42 = [v39 constraintEqualToAnchor:v41];
    v43 = *&v2[v49];
    *(v28 + 64) = v42;
    *(v28 + 72) = v43;
    sub_10000A238(0, &qword_10018E938);
    v44 = v43;
    v45 = Array._bridgeToObjectiveC()().super.isa;
    a2 = v50;

    [v48 activateConstraints:v45];
  }

  v46 = *&v2[v5];
  *&v2[v5] = a1;
  v47 = a1;

  v2[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_isFullScreen] = a2 & 1;
}

uint64_t sub_100018428(void *a1)
{
  swift_getObjectType();
  v3 = sub_100093B6C(&unk_10018E6A0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v91 - v7;
  v9 = type metadata accessor for Response();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v91 - v14;
  v15 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_pluginSnippet;
  v16 = *(v1 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_pluginSnippet);
  if (v16)
  {
    v17 = a1 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = *(v26 + v15);
      if (v27)
      {
        v28 = v27;
        v29 = a1;
        v30 = v16;
        v31 = [v30 bundleName];
        if (v31)
        {
          v32 = v31;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        v52 = [v28 bundleName];
        if (v52)
        {
          v53 = v52;
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          if (!v35)
          {
            if (!v56)
            {
              goto LABEL_32;
            }

LABEL_35:

            return 0;
          }

          if (v56)
          {
            if (v33 == v54 && v35 == v56)
            {

LABEL_32:
              v58 = [v30 responseViewId];
              v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              v62 = [v28 responseViewId];
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              if (v59 == v63 && v61 == v65)
              {

                return 1;
              }

              else
              {
                v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

                return v66 & 1;
              }
            }

            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v57)
            {
              goto LABEL_32;
            }

            goto LABEL_35;
          }
        }

        else if (!v35)
        {
          goto LABEL_32;
        }

        return 0;
      }
    }
  }

  v18 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_aceSnippet;
  swift_beginAccess();
  result = *(v1 + v18);
  if (!result)
  {
    return result;
  }

  result = [result modelData];
  if (!result)
  {
    return result;
  }

  v97 = v6;
  v98 = v10;
  v20 = result;
  v21 = v9;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_1000ACA14(v22, v24);
  v25 = sub_1000AD170(&qword_10018E348, &type metadata accessor for Response);
  ProtobufBuilder.init(serializedData:)();
  v92 = v13;
  v93 = v25;
  v95 = v22;
  v96 = v24;
  v36 = v98;
  v94 = *(v98 + 56);
  v94(v8, 0, 1, v21);
  v37 = v99;
  v38 = v8;
  v39 = *(v36 + 32);
  v39(v99, v38, v21);
  if (!a1)
  {
    (*(v36 + 8))(v37, v21);
LABEL_38:
    sub_10001717C(v95, v96);
    return 0;
  }

  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    sub_10001717C(v95, v96);
    (*(v98 + 8))(v99, v21);
    return 0;
  }

  v91 = v36 + 32;
  v41 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_aceSnippet;
  v42 = v40;
  swift_beginAccess();
  v43 = *(v42 + v41);
  v44 = v99;
  if (!v43)
  {
    v67 = *(v98 + 8);
    v68 = a1;
    v67(v44, v21);
    swift_endAccess();

    goto LABEL_38;
  }

  swift_endAccess();
  v45 = a1;
  v46 = [v43 modelData];
  if (!v46)
  {
    sub_10001717C(v95, v96);

    (*(v98 + 8))(v44, v21);
    return 0;
  }

  v47 = v46;
  v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  sub_1000ACA14(v48, v50);
  v51 = v97;
  ProtobufBuilder.init(serializedData:)();
  v93 = v45;
  v94(v51, 0, 1, v21);
  v69 = v92;
  v39(v92, v51, v21);
  v70 = v99;
  v71 = Response.getComponentTypes()();
  result = Response.getComponentTypes()();
  v72 = result;
  v73 = *(v71 + 16);
  v74 = v98;
  v75 = v21;
  if (v73)
  {
    v76 = 0;
    v77 = v71 + 32;
    v97 = v50;
    v78 = v48;
    while (v76 < *(v71 + 16))
    {
      v79 = *(v72 + 16);
      if (!v79)
      {
LABEL_55:

        sub_10001717C(v78, v97);
        sub_10001717C(v95, v96);
        v87 = *(v98 + 8);
        v87(v69, v75);
        v87(v99, v75);

        return 0;
      }

      v80 = 0;
      v81 = 0;
      v82 = *(v77 + 16 * v76++);
      while (*(v72 + v80 + 32) != v82)
      {
        ++v81;
        v80 += 16;
        if (v79 == v81)
        {
          goto LABEL_55;
        }
      }

      v83 = v77;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000ACA68(v72);
        v72 = result;
      }

      v84 = *(v72 + 16);
      v85 = v84 - v81;
      if (v84 <= v81)
      {
        goto LABEL_59;
      }

      v86 = v84 - 1;
      result = memmove((v72 + v80 + 32), (v72 + v80 + 48), 16 * v85 - 16);
      *(v72 + 16) = v86;
      v74 = v98;
      v77 = v83;
      if (v76 == v73)
      {

        v70 = v99;
        v90 = v97;
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {

    v90 = v50;
    v78 = v48;
LABEL_57:
    sub_10001717C(v78, v90);
    sub_10001717C(v95, v96);
    v88 = *(v74 + 8);
    v88(v69, v75);
    v88(v70, v75);
    v89 = *(v72 + 16);

    return v89 == 0;
  }

  return result;
}

uint64_t sub_100018CEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018D0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_100018D48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100018D80(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100018DF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018E30()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100018E84@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100018ED8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100018F64@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100018F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100093B6C(&qword_10018E058);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001905C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100093B6C(&qword_10018E058);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100019164@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000191BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001921C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019254()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000192E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019358()
{
  v1 = sub_100093B6C(&qword_10018E5A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100019450()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019488()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10001957C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000195B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000195F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019628()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019668()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000196BC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000196F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001972C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001976C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000197A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000197DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019814()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10001984C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000198D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019908()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100019948(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_100019CA4(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.siri.internal"];
  v2 = qword_10018F150;
  qword_10018F150 = v1;

  v3 = [qword_10018F150 objectForKey:@"ShowErrorCodes"];

  if (!v3)
  {
    v4 = qword_10018F150;

    [v4 setBool:1 forKey:@"ShowErrorCodes"];
  }
}

void sub_10001A584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A5A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFaceAttentionEvent:v3];
}

void sub_10001A6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A70C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTouchAttentionEvent:v3];
}

void sub_10001A854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A874(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleButtonPressAttentionEvent:v3];
}

void sub_10001AB04(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didLoseAttentionWithEvent:*(a1 + 40)];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didGainAttentionWithEvent:*(a1 + 48)];
  }
}

void sub_10001ACA8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didLoseAttentionWithEvent:*(a1 + 40)];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didGainAttentionWithEvent:*(a1 + 48)];
  }
}

void sub_10001AE64(uint64_t a1)
{
  if (*(a1 + 48))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 40));
    [v2 userAttentionController:v3 didGainAttentionWithEvent:*(a1 + 48)];
  }

  else
  {
    if (*(a1 + 32))
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 40));
    [v2 userAttentionController:v3 didLoseAttentionWithEvent:0];
  }
}

void sub_10001B0CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 - 2) >= 2)
  {
    if (v2 == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _setDeviceLowered:0];

      v8 = objc_loadWeakRetained((a1 + 32));
      v13 = 0;
      v9 = [v8 stopIfNeededForTypes:1 error:&v13];
      v6 = v13;

      if ((v9 & 1) == 0 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA988();
      }

      v10 = objc_loadWeakRetained((a1 + 32));
      v11 = [v10 delegate];
      v12 = objc_loadWeakRetained((a1 + 32));
      [v11 userAttentionController:v12 didGainAttentionWithEvent:2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 _setDeviceLowered:1];

    v4 = objc_loadWeakRetained((a1 + 32));
    v14 = 0;
    v5 = [v4 _restartFaceAttentionAwarenessClient:&v14];
    v6 = v14;

    if ((v5 & 1) == 0 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA9FC();
    }
  }
}

void sub_10001B578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56);
  v11 = 0;
  [WeakRetained startIfNeededForTypes:v3 error:&v11];
  v4 = v11;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B64C;
  block[3] = &unk_100166E30;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

void sub_10001C4E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "+[SRUIDSurveyNotificationUtility postSiriInternalUIDSurveyNotification:activationHistory:requestSource:dismissalReason:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Failed to post notification %@ with error %@", &v6, 0x20u);
    }
  }
}

void sub_10001D010(uint64_t a1)
{
  [*(*(a1 + 32) + 240) setAdditionalSafeAreaInsets:{*(a1 + 40), 0.0, 0.0, 0.0}];
  v2 = [*(*(a1 + 32) + 240) view];
  [v2 setNeedsLayout];

  v3 = [*(*(a1 + 32) + 240) view];
  [v3 layoutIfNeeded];
}

void sub_10001D448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D46C(uint64_t a1)
{
  v3 = [[SASRequestOptions alloc] initWithRequestSource:49 uiPresentationIdentifier:@"com.apple.siri.SystemAssistantExperience"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleVoiceActivationRequestWithRequestOptions:v3];
}

void sub_10001D620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D63C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _reportConcernWithCardSection:*(a1 + 32) additionalDomainProvidedFeedback:*(a1 + 40)];
  }
}

id sub_10001DC74()
{
  v2[0] = UIKeyboardWillChangeFrameNotification;
  v2[1] = UIKeyboardDidChangeFrameNotification;
  v2[2] = UIKeyboardDidHideNotification;
  v0 = [NSArray arrayWithObjects:v2 count:3];

  return v0;
}

void sub_10001E4CC(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  [v1 snippetContentDidUpdate];
}

void sub_10001E608(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  [v1 reloadView];
}

uint64_t sub_10001F070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained viewState];
  v4 = [v3 activeSmartDialogView];
  [v4 setActiveTranscriptItems:*(a1 + 32)];

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 viewState];
  v7 = [v6 activeSmartDialogView];
  [v7 setNeedsLayout];

  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void sub_10001F548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performResultAnimation:*(a1 + 40)];
}

id sub_10001FAA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 152);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001FB84;
  v6[3] = &unk_100166F98;
  v7 = *(a1 + 40);
  v6[4] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FC7C;
  v4[3] = &unk_100166FC0;
  v4[4] = v1;
  v5 = v7;
  return [UIView _animateUsingSpringBehavior:v2 tracking:0 animations:v6 completion:v4];
}

void sub_10001FB84(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) containerView];
    v3 = [v2 blurrableView];
    [v3 setAlpha:1.0];

    v4 = [*(a1 + 32) containerView];
    [v4 frame];
    v6 = v5;
    v7 = [*(a1 + 32) containerView];
    [v7 frame];
    v9 = v8;
    v10 = [*(a1 + 32) containerView];
    [v10 setFrame:{0.0, 0.0, v6, v9}];
  }

  v11 = [*(a1 + 32) containerView];
  [v11 transitionToResult];
}

id *sub_10001FC7C(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] containerView];
    [v3 applyDestOverFilter:0];

    v4 = [v2[4] containerView];
    [v4 cleanupLoadingTransitionIfNeeded];

    v5 = [*(v2[4] + 28) activeSmartDialogView];
    [v5 animateAppearanceIfNeeded];

    [*(v2[4] + 28) setSmartDialogAnimationInProgress:0];
    [v2[4] _executePendingBlocksForTransition];
    if (*(v2 + 40) == 1)
    {
      [v2[4] _addFeedbackButton];
    }

    [v2[4] setRevealRecognizedSpeech:0];
    v6 = v2[4];

    return [v6 _presentContinuerSuggestions];
  }

  return result;
}

void sub_10001FF00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained _isTextInputAndKeyboardShowing] & 1) == 0)
    {
      v4 = [v3 containerView];
      v5 = [v4 isInVoiceLatency];

      if ((v5 & 1) == 0)
      {
        if (v3[216] == 1)
        {
          v6 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            v11 = 136315138;
            v12 = "[SRSystemAssistantExperienceViewController _presentContinuerSuggestions]_block_invoke";
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #suggestions: Adding continuer suggestions views to container", &v11, 0xCu);
          }

          v7 = [v3 containerView];
          [v7 setContinuerSuggestions:*(a1 + 32)];

          [v3 _logSuggestionsWereShownCallback];
          LODWORD(v7) = SiriSharedUIReducedMotionEnabled();
          v8 = [v3 containerView];
          v9 = v8;
          HIDWORD(v10) = *(&SiriSharedUIMitosisDuration + 1);
          *&v10 = SiriSharedUIMitosisDuration;
          if (v7)
          {
            [v8 reduceMotionMitosisWithDuration:0 intoSnippet:v10];
          }

          else
          {
            [v8 mitoseWithDuration:0 mitosingIntoSnippet:v10];
          }
        }

        else
        {
          v3[216] = 1;
        }
      }
    }
  }
}

void sub_10002097C(uint64_t a1)
{
  [*(a1 + 32) _executePendingBlocksForTransition];
  v2 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100020A88;
  v5[3] = &unk_100167010;
  v6 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020AEC;
  v3[3] = &unk_100166FC0;
  v3[4] = v6;
  v4 = *(a1 + 40);
  [UIView _animateUsingSpringBehavior:v2 tracking:0 animations:v5 completion:v3];
}