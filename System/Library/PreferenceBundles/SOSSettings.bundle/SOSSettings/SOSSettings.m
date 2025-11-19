id SOSServerInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SOSInternalServerProtocol];
  v1 = [NSSet setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:"mostRecentLocationSentWithCompletion:" argumentIndex:0 ofReply:1];

  return v0;
}

id SOSClientInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SOSInternalClientProtocol];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v1, v2, objc_opt_class(), 0];
  [v0 setClasses:v3 forSelector:"didUpdateSOSStatus:" argumentIndex:0 ofReply:0];

  return v0;
}

void sub_21DC(id a1, BOOL a2)
{
  if (a2)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v2 = [NSURL URLWithString:SOSSettingsURLBaseString];
    [v4 openSensitiveURL:v2 withOptions:0];
  }

  else
  {
    v3 = sub_8EF4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,SOSKappaThirdPartySettingsController,disableKappaThirdPartyAppForSpecifier,failed", buf, 2u);
    }
  }
}

void sub_2730(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1 + 32) + 120), a2);
  [*(a1 + 32) setUpConstraints];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(a1 + 32) + 120));
  }
}

id sub_28AC(uint64_t a1)
{
  [*(*(a1 + 32) + 120) removeFromSuperview];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_293C;
  v4[3] = &unk_20E30;
  v4[4] = v2;
  return [v2 loadTriggerImageViewWithCompletion:v4];
}

id sub_293C(uint64_t a1, void *a2)
{
  [a2 setAlpha:0.0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_29D0;
  v4[3] = &unk_20E08;
  v4[4] = *(a1 + 32);
  return [UIView animateWithDuration:v4 animations:0.25];
}

void sub_3900(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (!*(v2 + 128))
  {
    v3 = 1.0;
  }

  [*(v2 + 136) setAlpha:v3];
  [*(*(a1 + 32) + 128) coordinate];
  v5 = v4;
  v7 = v6;
  v10 = objc_alloc_init(MKPointAnnotation);
  [*(*(a1 + 32) + 128) coordinate];
  [v10 setCoordinate:?];
  v8 = *(*(a1 + 32) + 120);
  v9 = [v8 annotations];
  [v8 removeAnnotations:v9];

  [*(*(a1 + 32) + 120) addAnnotation:v10];
  [*(*(a1 + 32) + 120) setRegion:*(*(a1 + 32) + 128) != 0 animated:{v5, v7, 0.005, 0.005}];
}

void sub_3F20(uint64_t a1, uint64_t a2)
{
  v3 = sub_8EF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "SOSSettingsController, handleKappaStateChanged", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8EEC;
  block[3] = &unk_21030;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_4730(uint64_t a1, uint64_t a2)
{
  v4 = sub_8F7C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "SOSSettingsController, callback called: approved,%d", v8, 8u);
  }

  v5 = objc_opt_new();
  [v5 sendFeedbackConsent:a2 andUUID:*(a1 + 32)];
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = [v6[47] getFeedbackViewController];
    [v6 presentViewController:v7 animated:1 completion:&stru_20EC0];
  }
}

void sub_483C(id a1)
{
  v1 = sub_8F7C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,presented feedback assistant questionnaire", v2, 2u);
  }
}

void sub_4A68(id a1)
{
  v1 = sub_8F7C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,presented feedback assistant questionnaire", v2, 2u);
  }
}

void sub_4F80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 coreTelephonyClient];
  [v1 updateAutoCallSpecifierEnabled:{+[SOSUtilities shouldForceDisableAutoCallForClient:](SOSUtilities, "shouldForceDisableAutoCallForClient:", v2) ^ 1}];
}

void sub_5D08(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = v2[26];
  v8[1] = v2[28];
  v8[2] = v2[27];
  v4 = [NSArray arrayWithObjects:v8 count:3];
  [v3 removeObjectsInArray:v4];

  v5 = *(a1 + 40);
  v7[0] = v5[26];
  v7[1] = v5[28];
  v7[2] = v5[27];
  v6 = [NSArray arrayWithObjects:v7 count:3];
  [v5 removeContiguousSpecifiers:v6 animated:0];
}

void sub_5E1C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = *(v2 + 176);
  v8[1] = *(v2 + 184);
  v4 = [NSArray arrayWithObjects:v8 count:2];
  [v3 removeObjectsInArray:v4];

  v5 = *(a1 + 40);
  v7[0] = v5[22];
  v7[1] = v5[23];
  v6 = [NSArray arrayWithObjects:v7 count:2];
  [v5 removeContiguousSpecifiers:v6 animated:0];
}

void sub_65A4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6648;
  block[3] = &unk_20F58;
  block[4] = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_6648(uint64_t a1)
{
  result = [*(*(a1 + 32) + 152) isEqualToArray:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
    [*(*(a1 + 32) + 160) removeAllObjects];
    v3 = *(a1 + 32);
    v4 = v3[36];
    if (!v4)
    {
      v5 = [*(a1 + 32) specifierForID:@"EMERGENCY_CONTACTS"];
      v6 = *(a1 + 32);
      v7 = *(v6 + 288);
      *(v6 + 288) = v5;

      v3 = *(a1 + 32);
      v4 = v3[36];
    }

    v44 = 0;
    v8 = [v4 identifier];
    [v3 getGroup:&v44 row:0 ofSpecifierID:v8];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = [*(a1 + 32) specifiersInGroup:v44];
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [*(*(a1 + 32) + 288) identifier];
          v17 = v16;
          if (v15 == v16)
          {
          }

          else
          {
            v18 = [v14 identifier];
            v19 = [*(*(a1 + 32) + 296) identifier];

            if (v18 != v19)
            {
              [*(a1 + 32) removeSpecifier:v14 animated:*(a1 + 48)];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v11);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = *(a1 + 40);
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          v26 = [v25 name];
          v27 = [v25 phoneNumber];
          v28 = v27;
          if (v26)
          {
            v29 = v27 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            [*(*(a1 + 32) + 160) addObject:v27];
            v30 = *(a1 + 32);
            v31 = [v30[37] identifier];
            v32 = [v30 indexOfSpecifierID:v31];

            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = sub_8EF4();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(*(a1 + 32) + 296);
                *buf = 138412290;
                v46 = v34;
                _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Can't find index of openHealthButton specifier: %@", buf, 0xCu);
              }
            }

            else
            {
              v33 = [PSSpecifier preferenceSpecifierNamed:v26 target:*(a1 + 32) set:0 get:"contactNumberForContactSpecifier:" detail:0 cell:4 edit:0];
              [v33 setProperty:v28 forKey:@"kPhoneNumberKey"];
              [*(a1 + 32) insertSpecifier:v33 atIndex:v32 animated:*(a1 + 48)];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v22);
    }

    v35 = +[SOSUtilities emergencyContactsSectionDescription];
    [*(*(a1 + 32) + 288) setName:v35];

    [*(a1 + 32) reloadHealthButtonLabelWithContacts:*(a1 + 48)];
    return [*(a1 + 32) reloadPrivacyFooterWithContacts:*(a1 + 48)];
  }

  return result;
}

id sub_7624(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 submitSOSNotificationSettingsChangedMetric:@"sideButtonPress" withValue:*(a1 + 40)];
  }

  else
  {
    v4 = v3[25];
    v5 = [NSNumber numberWithBool:0];
    [v4 setProperty:v5 forKey:PSValueKey];

    [*(a1 + 32) reloadSpecifier:v4 animated:1];
  }

  v6 = *(a1 + 32);

  return [v6 reloadAlarmSoundAnimated:1];
}

void sub_8064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8138;
  v8[3] = &unk_20FA8;
  v9 = a3;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v6 = v5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_8138(uint64_t a1)
{
  if (!*(a1 + 32) && [*(a1 + 40) status] && +[SOSUtilities isStewieVisible](SOSUtilities, "isStewieVisible") && (objc_msgSend(*(a1 + 48), "_canLaunchDemoFlow") & 1) != 0)
  {
    *(*(a1 + 48) + 320) = 1;
    v2 = +[SOSUtilities stewieGroupTitle];
    [*(*(a1 + 48) + 328) setName:v2];

    v15 = +[SOSUtilities stewieFooterLinkTitle];
    v3 = +[SOSUtilities stewieFooterDescription];
    v4 = [v3 rangeOfString:v15 options:5];
    v6 = v5;
    [*(*(a1 + 48) + 336) setProperty:objc_opt_class() forKey:PSCellClassKey];
    [*(*(a1 + 48) + 328) setProperty:v3 forKey:PSFooterHyperlinkViewTitleKey];
    v7 = *(*(a1 + 48) + 328);
    v17.location = v4;
    v17.length = v6;
    v8 = NSStringFromRange(v17);
    [v7 setProperty:v8 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v9 = *(*(a1 + 48) + 328);
    v10 = [NSValue valueWithNonretainedObject:?];
    [v9 setProperty:v10 forKey:PSFooterHyperlinkViewTargetKey];

    v11 = *(*(a1 + 48) + 328);
    v12 = NSStringFromSelector("openStewieLearnMore");
    [v11 setProperty:v12 forKey:PSFooterHyperlinkViewActionKey];

    [*(a1 + 48) reloadSpecifier:*(*(a1 + 48) + 328) animated:*(a1 + 56)];
    [*(a1 + 48) reloadSpecifier:*(*(a1 + 48) + 336) animated:*(a1 + 56)];
    [*(a1 + 48) refreshStewieAssetSpecifier:*(a1 + 56)];
    [*(a1 + 48) refreshTipSpecifier:*(a1 + 56)];
  }

  else
  {
    *(*(a1 + 48) + 320) = 0;
    [*(a1 + 48) refreshTipSpecifier:*(a1 + 56)];
    [*(a1 + 48) removeSpecifier:*(*(a1 + 48) + 328)];
    v13 = *(a1 + 48);
    v14 = v13[42];

    [v13 removeSpecifier:v14];
  }
}

void sub_889C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) BOOLValue];
    v5 = *(*(a1 + 40) + 352);
    if (v4)
    {
      v6 = [NSNumber numberWithBool:0];
      [v5 setProperty:v6 forKey:PSValueKey];

      v7 = sub_8EF4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v8 = "SOSSettingsController,setCrashDetectionEnabled,failed, animating back to off state";
        v9 = &v13;
LABEL_10:
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      v10 = [NSNumber numberWithBool:1];
      [v5 setProperty:v10 forKey:PSValueKey];

      v7 = sub_8EF4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "SOSSettingsController,setCrashDetectionEnabled,failed, animating back to on state";
        v9 = buf;
        goto LABEL_10;
      }
    }

    [*(a1 + 40) reloadSpecifier:*(*(a1 + 40) + 352) animated:1];
    return;
  }

  v2 = sub_8EF4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,setCrashDetectionEnabled,successful", v11, 2u);
  }
}

id sub_8EF4()
{
  if (qword_271A8 != -1)
  {
    sub_1408C();
  }

  v1 = qword_271A0;

  return v1;
}

void sub_8F38(id a1)
{
  qword_271A0 = os_log_create("com.apple.calls.sos", "default");

  _objc_release_x1();
}

id sub_8F7C()
{
  if (qword_271B8 != -1)
  {
    sub_140A0();
  }

  v1 = qword_271B0;

  return v1;
}

void sub_8FC0(id a1)
{
  qword_271B0 = os_log_create("com.apple.calls.sos", "feedback");

  _objc_release_x1();
}

uint64_t sub_919C()
{
  _s14SosTipUserInfoCMa();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_271C8 = result;
  return result;
}

uint64_t sub_91CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_9204(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_14134();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_92C4, 0, 0);
}

uint64_t sub_92C4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    sub_141C4();
    v3 = async function pointer to static TPTipsHelper.shared.getter[1];
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_93C0;

    return static TPTipsHelper.shared.getter();
  }

  else
  {
    v5 = v0[8];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_93C0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_94C0, 0, 0);
}

uint64_t sub_94C0()
{
  sub_14734();
  *(v0 + 96) = sub_14724();
  v2 = sub_14704();

  return _swift_task_switch(sub_9554, v2, v1);
}

uint64_t sub_9554()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_14184();

  return _swift_task_switch(sub_95C4, 0, 0);
}

uint64_t sub_95C4()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_14124();
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v2;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_96A8;
  v6 = v0[8];
  v7 = v0[9];

  return sub_9DA4(v6, sub_C8A0, v3);
}

uint64_t sub_96A8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_981C, 0, 0);
}

uint64_t sub_981C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_9884(void *a1)
{
  v2 = (*(*(sub_BD98(&qword_26CC8, &qword_1CB78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_14754();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_14734();
  v6 = a1;
  v7 = sub_14724();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_9AB4(0, 0, v4, &unk_1CBD8, v8);
}

uint64_t sub_99AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_14734();
  *(v4 + 24) = sub_14724();
  v6 = sub_14704();

  return _swift_task_switch(sub_9A44, v6, v5);
}

uint64_t sub_9A44()
{
  v2 = v0[2];
  v1 = v0[3];

  [v2 openTrialDialog];
  v3 = v0[1];

  return v3();
}

uint64_t sub_9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_BD98(&qword_26CC8, &qword_1CB78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_CC84(a3, v26 - v10);
  v12 = sub_14754();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_CF2C(v11, &qword_26CC8, &qword_1CB78);
  }

  else
  {
    sub_14744();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_14704();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_146E4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_CF2C(a3, &qword_26CC8, &qword_1CB78);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_CF2C(a3, &qword_26CC8, &qword_1CB78);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_9DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_14154();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_14164();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = sub_14134();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v4[19] = *(v12 + 64);
  v4[20] = swift_task_alloc();
  v13 = *(*(sub_BD98(&qword_26CC8, &qword_1CB78) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = sub_14734();
  v4[23] = sub_14724();
  v15 = sub_14704();
  v4[24] = v15;
  v4[25] = v14;

  return _swift_task_switch(sub_9F98, v15, v14);
}

uint64_t sub_9F98()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[18];
  v22 = v0[19];
  v23 = v1;
  v4 = v0[17];
  v21 = v4;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v9 = sub_14754();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *(v3 + 16);
  v0[26] = v11;
  v0[27] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v7, v4);

  v12 = v8;
  sub_C8A8(v8);
  v13 = sub_14724();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = (v22 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v3 + 32))(v16 + v14, v2, v21);
  *(v16 + v15) = v10;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v12;
  v17[1] = v5;

  v0[28] = sub_9AB4(0, 0, v23, &unk_1CB88, v16);
  sub_141C4();
  v18 = async function pointer to static TPTipsHelper.shared.getter[1];
  v19 = swift_task_alloc();
  v0[29] = v19;
  *v19 = v0;
  v19[1] = sub_A1D0;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_A1D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = a1;

  v4 = *(v2 + 200);
  v5 = *(v2 + 192);

  return _swift_task_switch(sub_A2F8, v5, v4);
}

uint64_t sub_A2F8()
{
  v1 = v0[30];
  v2 = v0[28];
  v14 = v0[26];
  v15 = v0[27];
  v3 = v0[23];
  v17 = v0[21];
  v18 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  v16 = v0[14];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[7];

  (*(v8 + 104))(v7, enum case for TPTipsHelper.Entry.Kind.sosSettings(_:), v9);
  v0[5] = v5;
  v0[6] = sub_CBC8();
  v11 = sub_CC20(v0 + 2);
  v14(v11, v10, v5);

  sub_14174();
  sub_141A4();

  (*(v6 + 8))(v4, v16);

  v12 = v0[1];

  return v12();
}

uint64_t sub_A510()
{
  v1 = sub_14154();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_141C4();
  v4 = async function pointer to static TPTipsHelper.shared.getter[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_A608;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_A608(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_A708, 0, 0);
}

uint64_t sub_A708()
{
  (*(v0[3] + 104))(v0[4], enum case for TPTipsHelper.Entry.Kind.sosSettings(_:), v0[2]);
  v0[7] = sub_14734();
  v0[8] = sub_14724();
  v2 = sub_14704();

  return _swift_task_switch(sub_A7C4, v2, v1);
}

uint64_t sub_A7C4()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_14144();

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_A864, 0, 0);
}

uint64_t sub_A864()
{
  v1 = *(v0 + 56);
  *(v0 + 72) = sub_14724();
  v3 = sub_14704();

  return _swift_task_switch(sub_A8F0, v3, v2);
}

uint64_t sub_A8F0()
{
  v1 = v0[9];

  if (qword_271C0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  _s14SosTipUserInfoCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  qword_271C8 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_AA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v8 = *(*(sub_BD98(&qword_26CD8, &qword_1CBA8) - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v9 = sub_14294();
  v7[35] = v9;
  v10 = *(v9 - 8);
  v7[36] = v10;
  v11 = *(v10 + 64) + 15;
  v7[37] = swift_task_alloc();
  v12 = sub_BD98(&qword_26CE0, &qword_1CBB0);
  v7[38] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[39] = swift_task_alloc();
  v14 = sub_BD98(&qword_26CE8, &qword_1CBB8);
  v7[40] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[41] = swift_task_alloc();
  v16 = sub_BD98(&qword_26CF0, &qword_1CBC0);
  v7[42] = v16;
  v17 = *(v16 - 8);
  v7[43] = v17;
  v18 = *(v17 + 64) + 15;
  v7[44] = swift_task_alloc();
  v19 = sub_BD98(&qword_26CF8, &qword_1CBC8);
  v7[45] = v19;
  v20 = *(v19 - 8);
  v7[46] = v20;
  v21 = *(v20 + 64) + 15;
  v7[47] = swift_task_alloc();
  v7[48] = sub_14734();
  v7[49] = sub_14724();
  v23 = sub_14704();
  v7[50] = v23;
  v7[51] = v22;

  return _swift_task_switch(sub_AC94, v23, v22);
}

uint64_t sub_AC94()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[30];
  v15 = v0[31];
  v0[52] = sub_14134();
  v0[53] = sub_CBC8();
  sub_14254();
  sub_147B4();
  sub_CEE4(&qword_26D00, &qword_26CE0, &qword_1CBB0);
  sub_14764();
  sub_147F4();
  (*(v3 + 8))(v2, v5);
  sub_147E4();
  swift_beginAccess();
  v9 = v0[48];
  v10 = sub_14724();
  v0[54] = v10;
  if (v10)
  {
    swift_getObjectType();
    v11 = sub_14704();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v0[55] = v11;
  v0[56] = v13;

  return _swift_task_switch(sub_AE4C, v11, v13);
}

uint64_t sub_AE4C()
{
  v1 = v0[54];
  v2 = v0[47];
  v3 = v0[45];
  v0[57] = sub_147C4();
  sub_CEE4(&qword_26D08, &qword_26CE8, &qword_1CBB8);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = sub_AF50;
  v6 = v0[40];
  v7 = v0[34];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, v1, &protocol witness table for MainActor);
}

uint64_t sub_AF50()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 440);
    v5 = *(v2 + 448);
    v6 = sub_B238;
  }

  else
  {
    (*(v2 + 456))();
    v4 = *(v2 + 440);
    v5 = *(v2 + 448);
    v6 = sub_B078;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_B078()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[54];

    sub_CF2C(v3, &qword_26CD8, &qword_1CBA8);
    v5 = v0[50];
    v6 = v0[51];

    return _swift_task_switch(sub_B980, v5, v6);
  }

  else
  {
    v7 = v0[47];
    v8 = v0[45];
    (*(v2 + 32))(v0[37], v3, v1);
    v9 = sub_147D4();
    v0[59] = v10;
    v15 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[60] = v12;
    *v12 = v0;
    v12[1] = sub_B250;
    v13 = v0[37];

    return (v15)(v0 + 61, v13);
  }
}

uint64_t sub_B250()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 472);
  v4 = *(*v0 + 296);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 280);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  *(v1 + 489) = *(v1 + 488);
  v7 = *(v1 + 448);
  v8 = *(v1 + 440);

  return _swift_task_switch(sub_B3FC, v8, v7);
}

uint64_t sub_B3FC()
{
  v1 = v0[54];

  v2 = v0[50];
  v3 = v0[51];

  return _swift_task_switch(sub_B460, v2, v3);
}

uint64_t sub_B460()
{
  v1 = *(v0 + 248);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = *(v0 + 392);
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

LABEL_15:
    v16 = *(v0 + 376);
    v17 = *(v0 + 352);
    v18 = *(v0 + 328);
    v19 = *(v0 + 312);
    v20 = *(v0 + 296);
    v21 = *(v0 + 272);

    v22 = *(v0 + 8);

    return v22();
  }

  v3 = Strong;
  if ((*(v0 + 489) & 1) == 0)
  {
    v8 = *(v0 + 392);

    v9 = sub_BA54();
    if (v9)
    {

      v10 = [v3 tipKitEntrySpecifier];
      if (v10)
      {
        v11 = v10;
        v12 = sub_146C4();
        [v11 removePropertyForKey:v12];
      }

      v14 = *(v0 + 368);
      v13 = *(v0 + 376);
      v15 = *(v0 + 360);
      [v3 refreshTipSpecifier:0];
    }

    else
    {
      v14 = *(v0 + 368);
      v13 = *(v0 + 376);
      v15 = *(v0 + 360);
    }

    goto LABEL_14;
  }

  v4 = [Strong tipKitEntrySpecifier];
  if (!v4)
  {
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
LABEL_22:
    sub_CF2C(v0 + 128, &qword_26CB0, &qword_1CB60);
    goto LABEL_23;
  }

  v5 = v4;
  *(v0 + 216) = 0x746E6F4373706954;
  *(v0 + 224) = 0xEB00000000746E65;
  v6 = [v4 objectForKeyedSubscript:sub_14804()];

  swift_unknownObjectRelease();
  if (v6)
  {
    sub_147A4();
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
  }

  v24 = *(v0 + 176);
  *(v0 + 128) = *(v0 + 160);
  *(v0 + 144) = v24;
  if (!*(v0 + 152))
  {
    goto LABEL_22;
  }

  sub_CF8C(0, &qword_26D10, UIView_ptr);
  if (swift_dynamicCast())
  {
    v25 = *(v0 + 392);
    v14 = *(v0 + 368);
    v13 = *(v0 + 376);
    v15 = *(v0 + 360);
    v26 = *(v0 + 232);

LABEL_14:
    (*(v14 + 8))(v13, v15);
    goto LABEL_15;
  }

LABEL_23:
  v28 = *(v0 + 416);
  v27 = *(v0 + 424);
  if (*(v0 + 256))
  {
    v29 = *(v0 + 264);
    v30 = *(v0 + 240);
    *(v0 + 80) = v28;
    *(v0 + 88) = v27;
    v31 = sub_CC20((v0 + 56));
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    objc_allocWithZone(sub_14274());
  }

  else
  {
    v32 = *(v0 + 240);
    *(v0 + 40) = v28;
    *(v0 + 48) = v27;
    v33 = sub_CC20((v0 + 16));
    (*(*(v28 - 8) + 16))(v33, v32, v28);
    v34 = objc_allocWithZone(sub_14274());
  }

  v35 = sub_14284();
  v36 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_14264();
  v37 = v35;
  v38 = sub_BA54();
  if (v38)
  {
    v39 = v38;

    v3 = v39;
  }

  else
  {
    v40 = [v3 tipKitEntrySpecifier];
    if (v40)
    {
      v41 = v40;
      v42 = sub_146C4();
      [v41 setProperty:v37 forKey:v42];
    }

    [v3 refreshTipSpecifier:0];
  }

  v43 = *(v0 + 384);
  v44 = sub_14724();
  *(v0 + 432) = v44;
  if (v44)
  {
    swift_getObjectType();
    v45 = sub_14704();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  *(v0 + 440) = v45;
  *(v0 + 448) = v47;

  return _swift_task_switch(sub_AE4C, v45, v47);
}

uint64_t sub_B980()
{
  v1 = v0[49];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];

  (*(v3 + 8))(v2, v4);
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[41];
  v8 = v0[39];
  v9 = v0[37];
  v10 = v0[34];

  v11 = v0[1];

  return v11();
}

uint64_t sub_BA54()
{
  v1 = [v0 tipKitEntrySpecifier];
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_9:
    sub_CF2C(&v7, &qword_26CB0, &qword_1CB60);
    return 0;
  }

  v2 = v1;
  *&v7 = 0x746E6F4373706954;
  *(&v7 + 1) = 0xEB00000000746E65;
  v3 = [v1 objectForKeyedSubscript:sub_14804()];
  swift_unknownObjectRelease();

  if (v3)
  {
    sub_147A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_9;
  }

  sub_CF8C(0, &qword_26D10, UIView_ptr);
  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

uint64_t sub_BBA0()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_BC7C()
{
  v1 = [objc_allocWithZone(PSSpecifier) initWithName:0 target:v0 set:0 get:0 detail:0 cell:-1 edit:0];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TipCell();
    sub_BD98(&qword_26BC0, &qword_1CB20);
    [v2 setProperty:sub_14804() forKey:PSCellClassKey];
    swift_unknownObjectRelease();
    if (qword_271C0 != -1)
    {
      swift_once();
    }

    v3 = *(qword_271C8 + 16);
    *(qword_271C8 + 16) = v2;
  }
}

uint64_t sub_BD98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_BF10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView] = 0;
  if (a3)
  {
    v7 = sub_146C4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for TipCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_C158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_C19C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_C294;

  return v7(a1);
}

uint64_t sub_C294()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_C390()
{
  v1 = [v0 specifier];
  v27.receiver = v0;
  v27.super_class = type metadata accessor for TipCell();
  objc_msgSendSuper2(&v27, "refreshCellContentsWithSpecifier:", v1);

  [v0 setUserInteractionEnabled:1];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 specifier];
  if (v3)
  {
    v4 = v3;
    *&v24 = 0x746E6F4373706954;
    *(&v24 + 1) = 0xEB00000000746E65;
    v5 = [v3 objectForKeyedSubscript:sub_14804()];
    swift_unknownObjectRelease();

    if (v5)
    {
      sub_147A4();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_14274();
      if (swift_dynamicCast())
      {
        v6 = v23;
        v7 = OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView;
        if (!*&v0[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView])
        {
          v8 = [v0 contentView];
          [v8 addSubview:v23];

          sub_BD98(&qword_26CB8, &qword_1CB68);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1CB00;
          v10 = [v0 contentView];
          v11 = objc_opt_self();
          v12 = [v11 constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v23 attribute:5 multiplier:1.0 constant:0.0];

          *(v9 + 32) = v12;
          v13 = [v0 contentView];
          v14 = [v11 constraintWithItem:v13 attribute:6 relatedBy:0 toItem:v23 attribute:6 multiplier:1.0 constant:0.0];

          *(v9 + 40) = v14;
          v15 = [v0 contentView];
          v16 = [v11 constraintWithItem:v15 attribute:3 relatedBy:0 toItem:v23 attribute:3 multiplier:1.0 constant:0.0];

          *(v9 + 48) = v16;
          v17 = [v0 contentView];
          v18 = [v11 constraintWithItem:v17 attribute:4 relatedBy:0 toItem:v23 attribute:4 multiplier:1.0 constant:0.0];

          *(v9 + 56) = v18;
          sub_CF8C(0, &qword_26CC0, NSLayoutConstraint_ptr);
          isa = sub_146F4().super.isa;

          [v11 activateConstraints:isa];

          v20 = *&v0[v7];
          *&v0[v7] = v23;
          v6 = v20;
        }

LABEL_14:

        return;
      }
    }

    else
    {
      sub_CF2C(v26, &qword_26CB0, &qword_1CB60);
    }

    v21 = OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView;
    v22 = *&v0[OBJC_IVAR____TtC11SOSSettings7TipCell_tipContentView];
    if (v22)
    {
      [v22 removeFromSuperview];
      v6 = *&v0[v21];
    }

    else
    {
      v6 = 0;
    }

    *&v0[v21] = 0;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_C7D8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_D0AC;

  return sub_9204(v0);
}

uint64_t sub_C868()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C8A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C8B8()
{
  v1 = sub_14134();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  if (*(v0 + v6))
  {
    v9 = *(v0 + v6 + 8);
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_C9B4()
{
  v2 = *(sub_14134() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_CAD4;

  return sub_AA18(v9, v10, v11, v0 + v3, v5, v7, v8);
}

uint64_t sub_CAD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_CBC8()
{
  result = qword_26CD0;
  if (!qword_26CD0)
  {
    sub_14134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26CD0);
  }

  return result;
}

uint64_t *sub_CC20(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_CC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD98(&qword_26CC8, &qword_1CB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CCF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CD2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_D0AC;

  return sub_C19C(a1, v5);
}

uint64_t sub_CDE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_CAD4;

  return sub_C19C(a1, v5);
}

uint64_t sub_CE9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_CEE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_CE9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CF2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_BD98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_CF8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_CFD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D014()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_D0AC;

  return sub_99AC(v3, v4, v5, v2);
}

uint64_t sub_D0D0(uint64_t a1)
{
  v2 = *(*(sub_14214() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_141F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CF8C(0, &qword_26DF0, &off_20728);
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_14204();
  sub_141E4();
  sub_14394();
  sub_CF8C(0, &qword_26DF8, NSBundle_ptr);
  if (!sub_14784())
  {
    v9 = [objc_opt_self() mainBundle];
  }

  v10 = sub_14474();
  v12 = v11;
  v14 = v13;
  sub_D3C0();
  sub_144C4();
  sub_DF4C(v10, v12, v14 & 1);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_D380()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_D3C0()
{
  result = qword_26D28;
  if (!qword_26D28)
  {
    sub_141F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26D28);
  }

  return result;
}

uint64_t sub_D418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_14304();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_14114();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = *(*(sub_BD98(&qword_26DD8, &qword_1CCC0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = sub_140E4();
  v3[17] = v11;
  v12 = *(v11 - 8);
  v3[18] = v12;
  v13 = *(v12 + 64) + 15;
  v3[19] = swift_task_alloc();
  sub_14734();
  v3[20] = sub_14724();
  v15 = sub_14704();

  return _swift_task_switch(sub_D60C, v15, v14);
}

uint64_t sub_D60C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[7];

  sub_14694();
  sub_140B4();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    v13 = v0[6];
    v12 = v0[7];
    sub_DD60(v0[16]);
    sub_14684();
    sub_146A4();
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v14 = v0[11];
    v15 = v0[7];
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    sub_14684();
    v0[2] = sub_140C4();
    v0[3] = v16;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_DDC8();
    v17 = sub_14794();

    v19 = 0;
    v20 = *(v17 + 16);
LABEL_4:
    v21 = (v17 + 40 + 16 * v19);
    while (v20 != v19)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v23 = *(v21 - 1);
      v22 = *v21;
      v21 += 2;
      ++v19;
      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_DE1C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          result = sub_DE1C((v25 > 1), v26 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[2 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        goto LABEL_4;
      }
    }

    v28 = _swiftEmptyArrayStorage[2];

    if (!v28)
    {
      v29 = v0[19];
      sub_140D4();
      if (v30)
      {
        v31 = v0[8];
        v32 = sub_146C4();

        [v31 setSpecifierIdentifierToScrollAndHighlight:v32];
      }
    }

    v34 = v0[18];
    v33 = v0[19];
    v35 = v0[17];
    v37 = v0[10];
    v36 = v0[11];
    v38 = v0[9];
    v39 = v0[6];
    sub_146A4();
    (*(v37 + 8))(v36, v38);
    (*(v34 + 8))(v33, v35);
  }

  v40 = v0[19];
  v41 = v0[15];
  v42 = v0[16];
  v44 = v0[11];
  v43 = v0[12];

  v45 = v0[1];

  return v45();
}

unint64_t sub_D93C()
{
  result = qword_26D30;
  if (!qword_26D30)
  {
    sub_CE9C(&qword_26D18, &qword_1CBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26D30);
  }

  return result;
}

unint64_t sub_D9A4()
{
  result = qword_26D38;
  if (!qword_26D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26D38);
  }

  return result;
}

uint64_t sub_DA14()
{
  v1 = sub_BD98(&qword_26D18, &qword_1CBE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v12 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_BD98(&qword_26D20, &qword_1CBE8);
  v8 = sub_141F4();
  v9 = sub_D3C0();
  v12[0] = v8;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_146B4();
  *(swift_allocObject() + 16) = v7;
  sub_D93C();
  v10 = v7;
  sub_14674();
  return (*(v2 + 8))(v5, v1);
}

id sub_DBDC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_DC4C()
{
  sub_CE9C(&qword_26D18, &qword_1CBE0);
  sub_D93C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_DCB0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_CAD4;

  return sub_D418(a1, a2, v6);
}

uint64_t sub_DD60(uint64_t a1)
{
  v2 = sub_BD98(&qword_26DD8, &qword_1CCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_DDC8()
{
  result = qword_26DE0;
  if (!qword_26DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26DE0);
  }

  return result;
}

char *sub_DE1C(char *a1, int64_t a2, char a3)
{
  result = sub_DE3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_DE3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD98(&qword_26DE8, qword_1CCC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_DF4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_DF68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_14364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_BD98(&qword_26E00, &qword_1CCF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = (&v16 - v10);
  sub_12A18(v2, &v16 - v10, &qword_26E00, &qword_1CCF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_142F4();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = *v11;
    sub_14774();
    v15 = sub_143E4();
    sub_14244();

    sub_14354();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t property wrapper backing initializer of SOSKappaConsentUI.savedBlock(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_BD98(&qword_26E08, &qword_1CD28);
  sub_14504();
  return v6;
}

uint64_t sub_E21C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E254(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t (*SOSKappaConsentUI.savedBlock.getter())(char)
{
  v1 = (v0 + *(type metadata accessor for SOSKappaConsentUI(0) + 20));
  v6 = *v1;
  v7 = *(v1 + 2);
  sub_BD98(&qword_26E10, &qword_1CD30);
  sub_14514();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_E34C;
}

uint64_t SOSKappaConsentUI.savedBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SOSKappaConsentUI(0) + 20));
  v8 = *v5;
  v9 = *(v5 + 2);
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
  }

  sub_BD98(&qword_26E10, &qword_1CD30);
  return sub_14524();
}

void (*SOSKappaConsentUI.savedBlock.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SOSKappaConsentUI(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v4[14] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  sub_C8A8(v6);

  v4[15] = sub_BD98(&qword_26E10, &qword_1CD30);
  sub_14514();
  v9 = v4[8];
  if (v9)
  {
    v10 = v4[9];
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_12AB4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v4[6] = v12;
  v4[7] = v11;
  return sub_E50C;
}

void sub_E50C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v2[3] = v3;
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[14];
  v2[4] = v4;
  v2[5] = v7;
  if (a2)
  {
    if (v5)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v6;
      v9 = sub_12AB0;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v12 = v2[15];
    v2[10] = v9;
    v2[11] = v8;
    sub_C8A8(v5);
    sub_14524();
    sub_E650(v3);

    v13 = v2[7];
    sub_E650(v2[6]);
  }

  else
  {
    if (v5)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      *(v10 + 24) = v6;
      v11 = sub_12AB0;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v14 = v2[15];
    v2[10] = v11;
    v2[11] = v10;
    sub_14524();
    sub_E650(v3);
  }

  free(v2);
}

uint64_t sub_E650(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_E660(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t SOSKappaConsentUI.$savedBlock.getter()
{
  v1 = (v0 + *(type metadata accessor for SOSKappaConsentUI(0) + 20));
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_BD98(&qword_26E10, &qword_1CD30);
  sub_14534();
  return v3;
}

uint64_t property wrapper backing initializer of SOSKappaConsentUI.bundle()
{
  sub_BD98(&qword_26E18, &qword_1CD38);
  sub_14504();
  return v1;
}

uint64_t SOSKappaConsentUI.bundle.getter()
{
  v3 = *(v0 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  return v2;
}

uint64_t SOSKappaConsentUI.bundle.setter()
{
  v2 = *(v0 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  return sub_14524();
}

void (*SOSKappaConsentUI.bundle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SOSKappaConsentUI(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v8 = v7;
  v4[8] = sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  return sub_E8CC;
}

void sub_E8CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  *(v2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 40) = v5;
  v6 = *(v2 + 64);
  *(v2 + 24) = v3;
  if (a2)
  {
    v7 = v5;
    sub_14524();
  }

  else
  {
    sub_14524();
  }

  free(v2);
}

uint64_t SOSKappaConsentUI.$bundle.getter()
{
  v3 = *(v0 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14534();
  return v2;
}

__n128 SOSKappaConsentUI.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_BD98(&qword_26E28, &qword_1CD48);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_143A4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v6[*(sub_BD98(&qword_26E30, &qword_1CD50) + 44)];
  sub_EB74(v1);
  sub_14574();
  sub_14314();
  sub_126E4(v6, a1, &qword_26E28, &qword_1CD48);
  v8 = a1 + *(sub_BD98(&qword_26E38, &qword_1CD58) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_EB74(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v146 = v2;
  v3 = sub_BD98(&qword_26F38, &qword_1CED0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v154 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v153 = (&v141 - v7);
  v195 = sub_14384();
  LOBYTE(v272[0]) = 1;
  sub_104B8(v1, &v227);
  v289 = v228[3];
  v290 = v228[4];
  v291 = *&v228[5];
  v285 = v227;
  v286 = v228[0];
  v288 = v228[2];
  v287 = v228[1];
  v292[1] = v228[0];
  v292[0] = v227;
  v292[2] = v228[1];
  v292[3] = v228[2];
  v292[4] = v228[3];
  v292[5] = v228[4];
  v293 = *&v228[5];
  sub_12A18(&v285, v210, &qword_26F40, &qword_1CED8);
  sub_CF2C(v292, &qword_26F40, &qword_1CED8);
  *(&v281[6] + 7) = v288;
  *(&v281[8] + 7) = v289;
  *(&v281[10] + 7) = v290;
  *(v281 + 7) = v285;
  *(&v281[2] + 7) = v286;
  *(&v281[12] + 7) = v291;
  *(&v281[4] + 7) = v287;
  v189 = LOBYTE(v272[0]);
  v194 = sub_143F4();
  sub_142A4();
  v192 = v9;
  v193 = v8;
  v190 = v11;
  v191 = v10;
  v152 = 0xD000000000000013;
  sub_14394();
  v196 = type metadata accessor for SOSKappaConsentUI(0);
  v197 = v1;
  v12 = (v1 + *(v196 + 24));
  v13 = *v12;
  v150 = v12[1];
  v151 = v13;
  *&v227 = v13;
  *(&v227 + 1) = v150;
  v149 = sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v14 = sub_14474();
  v186 = v15;
  v187 = v14;
  v17 = v16;
  v188 = v18;
  v148 = sub_BD98(&qword_26F48, &qword_1CEE0);
  v19 = swift_allocObject();
  v147 = xmmword_1CCE0;
  *(v19 + 16) = xmmword_1CCE0;
  v20 = sub_14424();
  *(v19 + 32) = v20;
  v21 = sub_14404();
  *(v19 + 33) = v21;
  v22 = sub_14414();
  sub_14414();
  if (sub_14414() != v20)
  {
    v22 = sub_14414();
  }

  sub_14414();
  if (sub_14414() == v21)
  {
    v185 = v22;
  }

  else
  {
    v185 = sub_14414();
  }

  sub_142A4();
  v183 = v24;
  v184 = v23;
  v181 = v26;
  v182 = v25;
  v175 = v17 & 1;
  v276 = v17 & 1;
  v273 = 0;
  v180 = sub_143F4();
  sub_142A4();
  v178 = v28;
  v179 = v27;
  v176 = v30;
  v177 = v29;
  v277 = 0;
  sub_14584();
  sub_142D4();
  *&v280[7] = *&v281[15];
  *&v280[23] = *&v281[17];
  *&v280[39] = *&v281[19];
  v174 = sub_143A4();
  v269 = 1;
  v145 = sub_14374();
  v271[0] = 1;
  sub_14394();
  v31 = sub_14474();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_14394();
  v227 = *(v197 + *(v196 + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v38 = sub_14474();
  v167 = v38;
  v40 = v39;
  v173 = v39;
  v169 = v33;
  v170 = v41;
  v144 = v35 & 1;
  LOBYTE(v272[0]) = v35 & 1;
  LOBYTE(v227) = v35 & 1;
  v43 = v42 & 1;
  LOBYTE(v210[0]) = v42 & 1;
  LODWORD(v172) = v42 & 1;
  v143 = v31;
  sub_12A80(v31, v33, v144);
  v171 = v37;

  sub_12A80(v38, v40, v43);

  sub_DF4C(v38, v40, v43);

  sub_DF4C(v31, v33, v272[0]);

  v142 = v271[0];
  sub_14564();
  sub_142D4();
  LODWORD(v168) = sub_143F4();
  sub_142A4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  LOBYTE(v227) = 0;
  v166 = sub_14374();
  v271[0] = 1;
  sub_14394();
  v52 = sub_14474();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_14394();
  v227 = *(v197 + *(v196 + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v59 = sub_14474();
  v162 = v60;
  v163 = v59;
  v61 = v60;
  v164 = v62;
  v165 = v56 & 1;
  LOBYTE(v272[0]) = v56 & 1;
  LOBYTE(v227) = v56 & 1;
  v64 = v63 & 1;
  LOBYTE(v210[0]) = v63 & 1;
  LODWORD(v161) = v63 & 1;
  v158 = v54;
  v159 = v52;
  sub_12A80(v52, v54, v165);
  v160 = v58;

  sub_12A80(v59, v61, v64);

  sub_DF4C(v59, v61, v64);

  sub_DF4C(v52, v54, v272[0]);

  v156 = v271[0];
  sub_14564();
  sub_142D4();
  v157 = sub_143F4();
  sub_142A4();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  LOBYTE(v227) = 0;
  v141 = sub_14374();
  v271[0] = 1;
  sub_14394();
  v73 = sub_14474();
  v75 = v74;
  LOBYTE(v59) = v76;
  v155 = v77;
  sub_14394();
  v227 = *(v197 + *(v196 + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v78 = sub_14474();
  v80 = v79;
  v82 = v81;
  LOBYTE(v59) = v59 & 1;
  LOBYTE(v272[0]) = v59;
  LOBYTE(v227) = v59;
  LOBYTE(v54) = v83 & 1;
  LOBYTE(v210[0]) = v83 & 1;
  sub_12A80(v73, v75, v59);

  sub_12A80(v78, v80, v54);

  sub_DF4C(v78, v80, v54);

  v84 = v73;
  sub_DF4C(v73, v75, v272[0]);

  LOBYTE(v73) = v271[0];
  sub_14564();
  sub_142D4();
  *&v271[17] = v282;
  *&v271[20] = *(&v282 + 3);
  *&v271[41] = v304[0];
  *&v271[44] = *(v304 + 3);
  *&v271[76] = *(v303 + 3);
  *&v271[73] = v303[0];
  *&v271[137] = v198[0];
  *&v271[140] = *(v198 + 3);
  v272[0] = v166;
  LOBYTE(v272[1]) = v156;
  *(&v272[1] + 1) = v301[0];
  DWORD1(v272[1]) = *(v301 + 3);
  *(&v272[1] + 1) = v159;
  *&v272[2] = v158;
  BYTE8(v272[2]) = v165;
  *(&v272[2] + 9) = v300[0];
  HIDWORD(v272[2]) = *(v300 + 3);
  *&v272[3] = v160;
  *(&v272[3] + 1) = v163;
  *&v272[4] = v162;
  BYTE8(v272[4]) = v161;
  HIDWORD(v272[4]) = *(v299 + 3);
  *(&v272[4] + 9) = v299[0];
  *&v272[5] = v164;
  *(&v272[5] + 8) = v211;
  *(&v272[6] + 8) = v212;
  *(&v272[7] + 8) = v213;
  BYTE8(v272[8]) = v157;
  *(&v272[8] + 9) = v302[0];
  HIDWORD(v272[8]) = *(v302 + 3);
  *&v272[9] = v66;
  *(&v272[9] + 1) = v68;
  *&v272[10] = v70;
  *(&v272[10] + 1) = v72;
  *(&v295[20] + 8) = v272[9];
  *(&v295[21] + 8) = v272[10];
  *(&v295[16] + 8) = v272[5];
  *(&v295[17] + 8) = v272[6];
  *(&v295[18] + 8) = v272[7];
  *(&v295[19] + 8) = v272[8];
  *(&v221 + 1) = v298[0];
  DWORD1(v221) = *(v298 + 3);
  *(&v222 + 9) = v297[0];
  HIDWORD(v222) = *(v297 + 3);
  HIDWORD(v224) = *(v296 + 3);
  *(&v224 + 9) = v296[0];
  *&v225[8] = v253;
  *&v225[24] = *v254;
  *&v225[40] = *&v254[16];
  *&v295[31] = *&v254[24];
  v219 = v141;
  v236 = v141;
  LOBYTE(v221) = v73;
  v238 = v73;
  *v239 = v298[0];
  *&v239[3] = *(v298 + 3);
  v240 = v84;
  *(&v221 + 1) = v84;
  *&v222 = v75;
  v241 = v75;
  BYTE8(v222) = v59;
  LOBYTE(v242) = v59;
  *(&v242 + 1) = v297[0];
  HIDWORD(v242) = *(v297 + 3);
  v243 = v155;
  *&v223 = v155;
  *(&v223 + 1) = v78;
  v244 = v78;
  *&v224 = v80;
  v245 = v80;
  BYTE8(v224) = v54;
  v246 = v54;
  *&v247[3] = *(v296 + 3);
  *v247 = v296[0];
  *v225 = v82;
  v248 = v82;
  v85 = v145;
  *v271 = v145;
  *&v271[8] = 0;
  LOBYTE(v54) = v142;
  v271[16] = v142;
  v86 = v143;
  *&v271[24] = v143;
  *&v271[32] = v169;
  LOBYTE(v78) = v144;
  v271[40] = v144;
  *&v271[48] = v171;
  *&v271[56] = v167;
  *&v271[64] = v173;
  v271[72] = v172;
  *&v271[80] = v170;
  *&v271[88] = v202;
  *&v271[104] = v203;
  *&v271[120] = v204;
  v271[136] = v168;
  *&v271[144] = v45;
  *&v271[152] = v47;
  v295[9] = *&v271[144];
  v295[8] = *&v271[128];
  v295[4] = *&v271[64];
  v295[5] = *&v271[80];
  v295[6] = *&v271[96];
  v295[7] = *&v271[112];
  v295[0] = v145;
  v295[1] = *&v271[16];
  v295[2] = *&v271[32];
  v295[3] = *&v271[48];
  *(&v295[15] + 8) = v272[4];
  *&v271[160] = v49;
  *&v271[168] = v51;
  *(&v295[11] + 8) = v166;
  *(&v295[12] + 8) = v272[1];
  *(&v295[13] + 8) = v272[2];
  *(&v295[14] + 8) = v272[3];
  v220 = 0;
  v295[25] = v222;
  v295[24] = v221;
  v295[10] = *&v271[160];
  v295[23] = v141;
  v295[26] = v223;
  v295[27] = v224;
  v295[28] = *v225;
  v295[29] = *&v225[16];
  v295[30] = *&v225[32];
  v249 = v253;
  v250 = *v254;
  v271[176] = 0;
  LOBYTE(v295[11]) = 0;
  LOBYTE(v272[11]) = 0;
  BYTE8(v295[22]) = 0;
  v237 = 0;
  *v251 = *&v254[16];
  sub_12A18(v271, &v227, &qword_26FF8, &qword_1CF98);
  sub_12A18(v272, &v227, &qword_26FF8, &qword_1CF98);
  sub_12A18(&v219, &v227, &qword_27000, &qword_1CFA0);
  sub_CF2C(&v236, &qword_27000, &qword_1CFA0);
  *&v210[11] = v211;
  v210[0] = v166;
  v210[1] = 0;
  LOBYTE(v210[2]) = v156;
  *(&v210[2] + 1) = v301[0];
  HIDWORD(v210[2]) = *(v301 + 3);
  v210[3] = v159;
  v210[4] = v158;
  LOBYTE(v210[5]) = v165;
  *(&v210[5] + 1) = v300[0];
  HIDWORD(v210[5]) = *(v300 + 3);
  v210[6] = v160;
  v210[7] = v163;
  v210[8] = v162;
  LOBYTE(v210[9]) = v161;
  HIDWORD(v210[9]) = *(v299 + 3);
  *(&v210[9] + 1) = v299[0];
  v210[10] = v164;
  *&v210[13] = v212;
  *&v210[15] = v213;
  LOBYTE(v210[17]) = v157;
  *(&v210[17] + 1) = v302[0];
  HIDWORD(v210[17]) = *(v302 + 3);
  v210[18] = v66;
  v210[19] = v68;
  v210[20] = v70;
  v210[21] = v72;
  LOBYTE(v210[22]) = 0;
  sub_CF2C(v210, &qword_26FF8, &qword_1CF98);
  *(&v228[4] + 8) = v202;
  v227 = v85;
  LOBYTE(v228[0]) = v54;
  *(v228 + 1) = v282;
  DWORD1(v228[0]) = *(&v282 + 3);
  *(&v228[0] + 1) = v86;
  *&v228[1] = v169;
  BYTE8(v228[1]) = v78;
  *(&v228[1] + 9) = v304[0];
  HIDWORD(v228[1]) = *(v304 + 3);
  *&v228[2] = v171;
  *(&v228[2] + 1) = v167;
  *&v228[3] = v173;
  BYTE8(v228[3]) = v172;
  HIDWORD(v228[3]) = *(v303 + 3);
  *(&v228[3] + 9) = v303[0];
  *&v228[4] = v170;
  *(&v228[5] + 8) = v203;
  *(&v228[6] + 8) = v204;
  BYTE8(v228[7]) = v168;
  *(&v228[7] + 9) = v198[0];
  HIDWORD(v228[7]) = *(v198 + 3);
  *&v228[8] = v45;
  *(&v228[8] + 1) = v47;
  *&v228[9] = v49;
  *(&v228[9] + 1) = v51;
  LOBYTE(v228[10]) = 0;
  sub_CF2C(&v227, &qword_26FF8, &qword_1CF98);
  memcpy(v271, v295, sizeof(v271));
  memcpy(v272, v295, 0x1F8uLL);
  sub_12A18(v271, &v227, &qword_26F50, &qword_1CEE8);
  sub_CF2C(v272, &qword_26F50, &qword_1CEE8);
  memcpy(&v268[7], v271, 0x1F8uLL);
  LODWORD(v170) = v269;
  LODWORD(v164) = sub_143F4();
  sub_142A4();
  v196 = v87;
  v172 = v89;
  v173 = v88;
  v171 = v90;
  sub_14394();
  *&v227 = v151;
  *(&v227 + 1) = v150;
  sub_14514();
  v166 = sub_14474();
  v168 = v91;
  v169 = v92;
  v94 = v93;
  v95 = swift_allocObject();
  *(v95 + 16) = v147;
  LOBYTE(v85) = sub_14424();
  *(v95 + 32) = v85;
  v96 = sub_14404();
  *(v95 + 33) = v96;
  v97 = sub_14414();
  sub_14414();
  if (sub_14414() != v85)
  {
    v97 = sub_14414();
  }

  sub_14414();
  if (sub_14414() != v96)
  {
    v97 = sub_14414();
  }

  LODWORD(v167) = v97;
  sub_142A4();
  v162 = v99;
  v163 = v98;
  v160 = v101;
  v161 = v100;
  v165 = v94 & 1;
  LOBYTE(v303[0]) = v94 & 1;
  LOBYTE(v302[0]) = 0;
  v102 = sub_143F4();
  v103 = sub_14414();
  sub_14414();
  if (sub_14414() != v102)
  {
    v103 = sub_14414();
  }

  sub_142A4();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  LOBYTE(v304[0]) = 0;
  sub_14584();
  sub_142D4();
  *&v267[7] = v282;
  *&v267[23] = v283;
  *&v267[39] = v284;
  v112 = sub_143A4();
  v113 = v153;
  *v153 = v112;
  *(v113 + 8) = 0;
  *(v113 + 16) = 1;
  v114 = sub_BD98(&qword_26F58, &qword_1CEF0);
  sub_108C4(v197, v113 + *(v114 + 44));
  v115 = v154;
  sub_12A18(v113, v154, &qword_26F38, &qword_1CED0);
  v198[0] = v195;
  v198[1] = 0;
  LOBYTE(v199[0]) = v189;
  *(&v199[3] + 1) = *&v281[6];
  *(&v199[4] + 1) = *&v281[8];
  *(&v199[5] + 1) = *&v281[10];
  v199[6] = *(&v281[11] + 7);
  *(v199 + 1) = *v281;
  *(&v199[1] + 1) = *&v281[2];
  *(&v199[2] + 1) = *&v281[4];
  LOBYTE(v200) = v194;
  DWORD1(v200) = *&v294[3];
  *(&v200 + 1) = *v294;
  *(&v200 + 1) = v193;
  *&v201[0] = v192;
  *(&v201[0] + 1) = v191;
  *&v201[1] = v190;
  BYTE8(v201[1]) = 0;
  v116 = v199[0];
  v117 = v146;
  *v146 = v195;
  v117[1] = v116;
  v118 = v199[6];
  v117[6] = v199[5];
  v117[7] = v118;
  v119 = v199[4];
  v117[4] = v199[3];
  v117[5] = v119;
  v120 = v199[2];
  v117[2] = v199[1];
  v117[3] = v120;
  v121 = *(v201 + 9);
  v122 = v201[0];
  v117[8] = v200;
  v117[9] = v122;
  *(v117 + 153) = v121;
  *&v202 = v187;
  *(&v202 + 1) = v186;
  LOBYTE(v203) = v175;
  *(&v203 + 1) = *v275;
  DWORD1(v203) = *&v275[3];
  *(&v203 + 1) = v188;
  LOBYTE(v204) = v185;
  *(&v204 + 1) = *v274;
  DWORD1(v204) = *&v274[3];
  *(&v204 + 1) = v184;
  *&v205 = v183;
  *(&v205 + 1) = v182;
  *&v206 = v181;
  BYTE8(v206) = 0;
  HIDWORD(v206) = *&v279[3];
  *(&v206 + 9) = *v279;
  LOBYTE(v207) = v180;
  DWORD1(v207) = *&v278[3];
  *(&v207 + 1) = *v278;
  *(&v207 + 1) = v179;
  *&v208 = v178;
  *(&v208 + 1) = v177;
  *&v209[0] = v176;
  BYTE8(v209[0]) = 0;
  *(v209 + 9) = *v280;
  *(&v209[3] + 1) = *&v280[47];
  *(&v209[2] + 9) = *&v280[32];
  *(&v209[1] + 9) = *&v280[16];
  v123 = v209[0];
  v117[17] = v208;
  v117[18] = v123;
  v124 = v209[2];
  v117[19] = v209[1];
  v117[20] = v124;
  v117[21] = v209[3];
  v125 = v207;
  v117[15] = v206;
  v117[16] = v125;
  v126 = v203;
  v117[11] = v202;
  v117[12] = v126;
  v127 = v205;
  v117[13] = v204;
  v117[14] = v127;
  v210[0] = v174;
  v210[1] = 0;
  LOBYTE(v210[2]) = v170;
  memcpy(&v210[2] + 1, v268, 0x1FFuLL);
  v128 = v164;
  LOBYTE(v210[66]) = v164;
  *(&v210[66] + 1) = *v270;
  HIDWORD(v210[66]) = *&v270[3];
  v210[67] = v196;
  v210[68] = v173;
  v210[69] = v172;
  v210[70] = v171;
  LOBYTE(v210[71]) = 0;
  memcpy(v117 + 22, v210, 0x239uLL);
  LODWORD(v159) = v103;
  *&v211 = v166;
  *(&v211 + 1) = v168;
  LOBYTE(v212) = v165;
  *(&v212 + 1) = *v264;
  DWORD1(v212) = *&v264[3];
  *(&v212 + 1) = v169;
  LOBYTE(v213) = v167;
  *(&v213 + 1) = *v263;
  DWORD1(v213) = *&v263[3];
  v130 = v162;
  v129 = v163;
  *(&v213 + 1) = v163;
  *&v214 = v162;
  v132 = v160;
  v131 = v161;
  *(&v214 + 1) = v161;
  *&v215 = v160;
  BYTE8(v215) = 0;
  HIDWORD(v215) = *&v266[3];
  *(&v215 + 9) = *v266;
  LOBYTE(v216) = v103;
  DWORD1(v216) = *&v265[3];
  *(&v216 + 1) = *v265;
  *(&v216 + 1) = v105;
  *&v217 = v107;
  *(&v217 + 1) = v109;
  *&v218[0] = v111;
  BYTE8(v218[0]) = 0;
  *(&v218[3] + 1) = *&v267[47];
  *(&v218[2] + 9) = *&v267[32];
  *(&v218[1] + 9) = *&v267[16];
  *(v218 + 9) = *v267;
  v133 = v217;
  v134 = v218[0];
  v135 = v215;
  v117[63] = v216;
  v117[64] = v133;
  v136 = v212;
  v117[58] = v211;
  v117[59] = v136;
  v137 = v214;
  v117[60] = v213;
  v117[61] = v137;
  v117[62] = v135;
  v117[68] = v218[3];
  v138 = v218[1];
  v117[67] = v218[2];
  v117[66] = v138;
  v117[65] = v134;
  v139 = sub_BD98(&qword_26F60, &qword_1CEF8);
  sub_12A18(v115, v117 + *(v139 + 96), &qword_26F38, &qword_1CED0);
  sub_12A18(v198, &v227, &qword_26F68, &qword_1CF00);
  sub_12A18(&v202, &v227, &qword_26F70, &qword_1CF08);
  sub_12A18(v210, &v227, &qword_26F78, &qword_1CF10);
  sub_12A18(&v211, &v227, &qword_26F70, &qword_1CF08);
  sub_CF2C(v113, &qword_26F38, &qword_1CED0);
  sub_CF2C(v115, &qword_26F38, &qword_1CED0);
  v219 = v166;
  v220 = v168;
  LOBYTE(v221) = v165;
  *(&v221 + 1) = *v264;
  DWORD1(v221) = *&v264[3];
  *(&v221 + 1) = v169;
  LOBYTE(v222) = v167;
  *(&v222 + 1) = *v263;
  DWORD1(v222) = *&v263[3];
  *(&v222 + 1) = v129;
  *&v223 = v130;
  *(&v223 + 1) = v131;
  *&v224 = v132;
  BYTE8(v224) = 0;
  HIDWORD(v224) = *&v266[3];
  *(&v224 + 9) = *v266;
  v225[0] = v159;
  *&v225[4] = *&v265[3];
  *&v225[1] = *v265;
  *&v225[8] = v105;
  *&v225[16] = v107;
  *&v225[24] = v109;
  *&v225[32] = v111;
  v225[40] = 0;
  *&v226[15] = *&v267[47];
  *v226 = *&v267[32];
  *&v225[57] = *&v267[16];
  *&v225[41] = *v267;
  sub_CF2C(&v219, &qword_26F70, &qword_1CF08);
  v227 = v174;
  LOBYTE(v228[0]) = v170;
  memcpy(v228 + 1, v268, 0x1FFuLL);
  v229 = v128;
  *v230 = *v270;
  *&v230[3] = *&v270[3];
  v231 = v196;
  v232 = v173;
  v233 = v172;
  v234 = v171;
  v235 = 0;
  sub_CF2C(&v227, &qword_26F78, &qword_1CF10);
  v236 = v187;
  v237 = v186;
  v238 = v175;
  *v239 = *v275;
  *&v239[3] = *&v275[3];
  v240 = v188;
  LOBYTE(v241) = v185;
  *(&v241 + 1) = *v274;
  HIDWORD(v241) = *&v274[3];
  v242 = v184;
  v243 = v183;
  v244 = v182;
  v245 = v181;
  v246 = 0;
  *&v247[3] = *&v279[3];
  *v247 = *v279;
  LOBYTE(v248) = v180;
  HIDWORD(v248) = *&v278[3];
  *(&v248 + 1) = *v278;
  *&v249 = v179;
  *(&v249 + 1) = v178;
  *&v250 = v177;
  *(&v250 + 1) = v176;
  v251[0] = 0;
  *&v252[15] = *&v280[47];
  *v252 = *&v280[32];
  *&v251[17] = *&v280[16];
  *&v251[1] = *v280;
  sub_CF2C(&v236, &qword_26F70, &qword_1CF08);
  v253 = v195;
  v254[0] = v189;
  *&v254[49] = *&v281[6];
  *&v254[65] = *&v281[8];
  *v255 = *&v281[10];
  *&v255[15] = *(&v281[11] + 7);
  *&v254[1] = *v281;
  *&v254[17] = *&v281[2];
  *&v254[33] = *&v281[4];
  v256 = v194;
  *&v257[3] = *&v294[3];
  *v257 = *v294;
  v258 = v193;
  v259 = v192;
  v260 = v191;
  v261 = v190;
  v262 = 0;
  return sub_CF2C(&v253, &qword_26F68, &qword_1CF00);
}

uint64_t sub_104B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_144D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14664();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_144F4();
  (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
  v32 = sub_144E4();

  (*(v4 + 8))(v7, v3);
  sub_14574();
  sub_142D4();
  LOBYTE(v38) = 1;
  *&v35[3] = *&v35[27];
  *&v35[11] = *&v35[35];
  *&v35[19] = *&v35[43];
  sub_14394();
  v38 = *(a1 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v10 = sub_14474();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_14444();
  v14 = sub_14454();
  v16 = v15;
  v18 = v17;
  sub_DF4C(v10, v12, v7 & 1);

  sub_14434();
  v19 = sub_14464();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;

  sub_DF4C(v14, v16, v18 & 1);

  v25 = v32;
  v36[0] = v32;
  v36[1] = 0;
  *v37 = 1;
  *&v37[2] = *v35;
  *&v37[18] = *&v35[8];
  *&v37[34] = *&v35[16];
  v26 = *&v35[23];
  *&v37[48] = *&v35[23];
  LOBYTE(v4) = v4 & 1;
  v34 = v4;
  v27 = v32;
  v28 = *v37;
  v29 = *&v37[32];
  v30 = v33;
  *(v33 + 32) = *&v37[16];
  *(v30 + 48) = v29;
  *v30 = v27;
  *(v30 + 16) = v28;
  *(v30 + 64) = v26;
  *(v30 + 72) = v19;
  *(v30 + 80) = v21;
  *(v30 + 88) = v4;
  *(v30 + 96) = v24;
  sub_12A18(v36, &v38, &qword_27008, &qword_1CFA8);
  sub_12A80(v19, v21, v4);

  sub_DF4C(v19, v21, v4);

  v38 = v25;
  v39 = 1;
  v40 = *v35;
  v41 = *&v35[8];
  *v42 = *&v35[16];
  *&v42[14] = *&v35[23];
  return sub_CF2C(&v38, &qword_27008, &qword_1CFA8);
}

uint64_t sub_108C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v107 = sub_BD98(&qword_26F80, &qword_1CF18);
  v3 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v109 = &v90 - v4;
  v108 = sub_BD98(&qword_26F88, &qword_1CF20);
  v5 = *(*(v108 - 8) + 64);
  v6 = (__chkstk_darwin)();
  v112 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v110 = &v90 - v9;
  __chkstk_darwin(v8);
  v111 = &v90 - v10;
  v91 = sub_143D4();
  v11 = *(v91 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v91);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SOSKappaConsentUI(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD98(&qword_26F90, &qword_1CF28);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v22 = &v90 - v21;
  v98 = sub_BD98(&qword_26F98, &qword_1CF30);
  v97 = *(v98 - 8);
  v23 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v25 = &v90 - v24;
  v92 = sub_BD98(&qword_26FA0, &qword_1CF38);
  v26 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v101 = &v90 - v27;
  v100 = sub_BD98(&qword_26FA8, &qword_1CF40);
  v28 = *(*(v100 - 8) + 64);
  v29 = __chkstk_darwin(v100);
  v105 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v90 - v32;
  __chkstk_darwin(v31);
  v104 = &v90 - v34;
  sub_12364(a1, v18);
  v35 = *(v16 + 80);
  v102 = v17;
  v36 = (v35 + 16) & ~v35;
  v99 = v35;
  v37 = swift_allocObject();
  v103 = v18;
  sub_12300(v18, v37 + v36);
  v106 = a1;
  v114 = a1;
  sub_BD98(&qword_26FB0, &qword_1CF48);
  sub_12534();
  sub_14554();
  v38 = &v22[*(v19 + 36)];
  v96 = sub_BD98(&qword_26FC0, &qword_1CF50);
  v39 = *(v96 + 28);
  v40 = enum case for ControlSize.regular(_:);
  v41 = sub_142B4();
  v42 = *(v41 - 8);
  v43 = *(v42 + 104);
  v44 = v38 + v39;
  v45 = v40;
  v46 = v25;
  v95 = v41;
  v94 = v43;
  v93 = v42 + 104;
  (v43)(v44, v45);
  *v38 = swift_getKeyPath();
  sub_143C4();
  sub_125B8();
  sub_1269C(&qword_26FE8, &type metadata accessor for BorderedProminentButtonStyle);
  v47 = v91;
  sub_144A4();
  (*(v11 + 8))(v14, v47);
  sub_CF2C(v22, &qword_26F90, &qword_1CF28);
  sub_BD98(&qword_26F48, &qword_1CEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CCE0;
  LOBYTE(v25) = sub_14404();
  *(inited + 32) = v25;
  v49 = sub_14424();
  *(inited + 33) = v49;
  v50 = sub_14414();
  sub_14414();
  if (sub_14414() != v25)
  {
    v50 = sub_14414();
  }

  sub_14414();
  if (sub_14414() != v49)
  {
    v50 = sub_14414();
  }

  v51 = v101;
  sub_142A4();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  (*(v97 + 32))(v51, v46, v98);
  v60 = v51 + *(v92 + 36);
  *v60 = v50;
  *(v60 + 8) = v53;
  *(v60 + 16) = v55;
  *(v60 + 24) = v57;
  *(v60 + 32) = v59;
  *(v60 + 40) = 0;
  v61 = sub_143F4();
  v62 = sub_14414();
  sub_14414();
  if (sub_14414() != v61)
  {
    v62 = sub_14414();
  }

  sub_142A4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_126E4(v51, v33, &qword_26FA0, &qword_1CF38);
  v71 = &v33[*(v100 + 36)];
  *v71 = v62;
  *(v71 + 1) = v64;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  *(v71 + 4) = v70;
  v71[40] = 0;
  v72 = v104;
  sub_126E4(v33, v104, &qword_26FA8, &qword_1CF40);
  v73 = v103;
  sub_12364(v106, v103);
  v74 = swift_allocObject();
  v75 = sub_12300(v73, v74 + v36);
  __chkstk_darwin(v75);
  v76 = v109;
  sub_14554();
  v77 = &v76[*(v107 + 36)];
  v94(v77 + *(v96 + 28), v45, v95);
  *v77 = swift_getKeyPath();
  sub_14574();
  sub_14314();
  v78 = v76;
  v79 = v110;
  sub_126E4(v78, v110, &qword_26F80, &qword_1CF18);
  v80 = (v79 + *(v108 + 36));
  v81 = v120;
  v80[4] = v119;
  v80[5] = v81;
  v80[6] = v121;
  v82 = v116;
  *v80 = v115;
  v80[1] = v82;
  v83 = v118;
  v80[2] = v117;
  v80[3] = v83;
  v84 = v111;
  sub_126E4(v79, v111, &qword_26F88, &qword_1CF20);
  v85 = v105;
  sub_12A18(v72, v105, &qword_26FA8, &qword_1CF40);
  v86 = v112;
  sub_12A18(v84, v112, &qword_26F88, &qword_1CF20);
  v87 = v113;
  sub_12A18(v85, v113, &qword_26FA8, &qword_1CF40);
  v88 = sub_BD98(&qword_26FF0, &qword_1CF90);
  sub_12A18(v86, v87 + *(v88 + 48), &qword_26F88, &qword_1CF20);
  sub_CF2C(v84, &qword_26F88, &qword_1CF20);
  sub_CF2C(v72, &qword_26FA8, &qword_1CF40);
  sub_CF2C(v86, &qword_26F88, &qword_1CF20);
  return sub_CF2C(v85, &qword_26FA8, &qword_1CF40);
}

uint64_t sub_11384(uint64_t a1, char a2)
{
  v4 = sub_142F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DF68(v8);
  sub_142E4();
  (*(v5 + 8))(v8, v4);
  v9 = (a1 + *(type metadata accessor for SOSKappaConsentUI(0) + 20));
  v10 = *(v9 + 2);
  v14 = *v9;
  v15 = v10;
  sub_BD98(&qword_26E10, &qword_1CD30);
  result = sub_14514();
  v12 = v13;
  if (v13)
  {
    LOBYTE(v14) = a2;
    v13(&v14);
    return sub_E650(v12);
  }

  return result;
}

double sub_114CC@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_BD98(&qword_26E00, &qword_1CCF0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SOSKappaConsentUI(0);
  v3 = a1 + v2[5];
  sub_BD98(&qword_26E08, &qword_1CD28);
  sub_14504();
  *v3 = v8;
  *(v3 + 2) = v9;
  v4 = v2[6];
  sub_BD98(&qword_26E18, &qword_1CD38);
  sub_14504();
  result = *&v8;
  *(a1 + v4) = v8;
  v6 = (a1 + v2[7]);
  *v6 = 0xD000000000000068;
  v6[1] = 0x8000000000018380;
  v7 = (a1 + v2[8]);
  *v7 = 0xD000000000000143;
  v7[1] = 0x80000000000183F0;
  return result;
}

uint64_t sub_115F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_BD98(&qword_26E00, &qword_1CCF0);

  return swift_storeEnumTagMultiPayload();
}

double sub_11680@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SOSKappaConsentUI(0);
  a1[4] = sub_1269C(&qword_26F30, type metadata accessor for SOSKappaConsentUI);
  v2 = sub_CC20(a1);
  return sub_114CC(v2);
}

id sub_11774(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_11A1C(a1, a2);
  sub_E650(a1);
  return v6;
}

id sub_118AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SOSKappaFeedbackConsent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11954(uint64_t a1)
{
  v2 = sub_142B4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_14334();
}

id sub_11A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD98(&qword_26E40, &qword_1CD60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v32 - v8);
  v10 = type metadata accessor for SOSKappaConsentUI(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *v9 = swift_getKeyPath();
  sub_BD98(&qword_26E00, &qword_1CCF0);
  swift_storeEnumTagMultiPayload();
  sub_126E4(v9, v16, &qword_26E40, &qword_1CD60);
  if (a1)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    v20 = sub_12AB0;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = &v16[v10[5]];
  v33 = v20;
  v34 = v19;
  v22 = v18;
  sub_C8A8(a1);
  sub_BD98(&qword_26E08, &qword_1CD28);
  sub_14504();
  v23 = v36;
  *v21 = v35;
  *(v21 + 2) = v23;
  v24 = v10[6];
  v33 = v18;
  sub_BD98(&qword_26E18, &qword_1CD38);
  sub_14504();
  *&v16[v24] = v35;
  v25 = &v16[v10[7]];
  *v25 = 0xD000000000000068;
  *(v25 + 1) = 0x8000000000018380;
  v26 = &v16[v10[8]];
  *v26 = 0xD000000000000143;
  *(v26 + 1) = 0x80000000000183F0;
  v27 = OBJC_IVAR____TtC11SOSSettings23SOSKappaFeedbackConsent__view;
  sub_12300(v16, &v3[OBJC_IVAR____TtC11SOSSettings23SOSKappaFeedbackConsent__view]);
  sub_12364(&v3[v27], v14);
  v28 = objc_allocWithZone(sub_BD98(&qword_26F28, "J\a"));
  *&v3[OBJC_IVAR____TtC11SOSSettings23SOSKappaFeedbackConsent__hostingController] = sub_143B4();
  v29 = type metadata accessor for SOSKappaFeedbackConsent(0);
  v32.receiver = v3;
  v32.super_class = v29;
  v30 = objc_msgSendSuper2(&v32, "init");

  return v30;
}

uint64_t sub_11D4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11D84(uint64_t a1)
{
  v2 = type metadata accessor for SOSKappaConsentUI(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD98(&qword_26E40, &qword_1CD60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_11EF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_BD98(&qword_26E40, &qword_1CD60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_11FB8()
{
  sub_12094();
  if (v0 <= 0x3F)
  {
    sub_120EC(319, &qword_26EA8, &qword_26E08, &qword_1CD28);
    if (v1 <= 0x3F)
    {
      sub_120EC(319, &unk_26EB0, &qword_26E18, &qword_1CD38);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_12094()
{
  if (!qword_26EA0)
  {
    sub_142F4();
    v0 = sub_142C4();
    if (!v1)
    {
      atomic_store(v0, &qword_26EA0);
    }
  }
}

void sub_120EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_CE9C(a3, a4);
    v5 = sub_14544();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_12158()
{
  result = type metadata accessor for SOSKappaConsentUI(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_121F8()
{
  result = qword_26F18;
  if (!qword_26F18)
  {
    sub_CE9C(&qword_26E38, &qword_1CD58);
    sub_CEE4(&qword_26F20, &qword_26E28, &qword_1CD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26F18);
  }

  return result;
}

uint64_t sub_122B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SOSKappaConsentUI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SOSKappaConsentUI(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_123D4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_14394();
  v12 = *(v3 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  v4 = sub_14474();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_14574();
  sub_14314();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  return result;
}

unint64_t sub_12534()
{
  result = qword_26FB8;
  if (!qword_26FB8)
  {
    sub_CE9C(&qword_26FB0, &qword_1CF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26FB8);
  }

  return result;
}

unint64_t sub_125B8()
{
  result = qword_26FC8;
  if (!qword_26FC8)
  {
    sub_CE9C(&qword_26F90, &qword_1CF28);
    sub_CEE4(&qword_26FD0, &qword_26FD8, &qword_1CF88);
    sub_CEE4(&qword_26FE0, &qword_26FC0, &qword_1CF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26FC8);
  }

  return result;
}

uint64_t sub_1269C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_126E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BD98(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1274C()
{
  v1 = type metadata accessor for SOSKappaConsentUI(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_BD98(&qword_26E00, &qword_1CCF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_142F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + v1[5]);
  if (*v8)
  {
    v9 = v8[1];
  }

  v10 = v8[2];

  v11 = v5 + v1[6];

  v12 = *(v11 + 1);

  v13 = *(v5 + v1[7] + 8);

  v14 = *(v5 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1292C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_14394();
  v8 = *(v3 + *(type metadata accessor for SOSKappaConsentUI(0) + 24));
  sub_BD98(&qword_26E20, &qword_1CD40);
  sub_14514();
  result = sub_14474();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_12A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BD98(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_12A80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

char *SOSFeedbackController.__allocating_init(delegate:legalText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_13C04(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

char *SOSFeedbackController.init(delegate:legalText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_13C04(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

UIViewController __swiftcall SOSFeedbackController.getFeedbackViewController()()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController) + 184);

  v3.super.super.isa = v1(v2);

  return v3;
}

void *sub_12CC4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result feedbackControllerDidCancel:v0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_12D28()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_140F4(v3);
    v6 = v5;
    v7 = sub_146C4();
    [v4 feedbackController:v1 didFailToAttachURL:v6 error:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_12DEC(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_146C4();
    [v6 *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

id SOSFeedbackController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_13088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_145B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v12 = objc_allocWithZone(sub_14624());
  v13 = sub_145A4();
  *(v5 + 16) = v13;
  (*(v8 + 104))(v11, enum case for FBKFeedbackForm.AuthenticationMethod.none(_:), v7);
  v14 = v13;
  sub_145C4();

  if (a4)
  {
    v15 = *(v5 + 16);
    sub_145F4();
  }

  v16 = *(v5 + 16);
  v17 = objc_allocWithZone(sub_14664());
  v18 = v16;
  v19 = sub_14644();
  *(v5 + 24) = v19;
  v20 = v19;

  sub_14654();

  return v5;
}

uint64_t sub_13230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a2, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_13370()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    swift_getObjectType();
    v3 = sub_14594();
    (*(v2 + 16))(v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_134C0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_135CC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v7 = sub_14634();
    (*(v5 + 32))(a2, v7, v8, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_137E4(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v7 = [a2 description];
    v8 = sub_146D4();
    v10 = v9;

    (*(v5 + 40))(v8, v10, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_139C4()
{
  sub_13D14(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

char *SOSCrashDetectionFeedbackController.__allocating_init(delegate:legalText:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_13D3C(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v12;
}

char *SOSCrashDetectionFeedbackController.init(delegate:legalText:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_13D3C(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

id sub_13BCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_13C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for SOSFeedbackViewController();
  v7 = swift_allocObject();
  sub_13088(0xD00000000000001ALL, 0x80000000000188D0, a2, a3);
  *&v4[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] = v7;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SOSFeedbackController();
  v8 = objc_msgSendSuper2(&v10, "init");
  *(*&v8[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] + 40) = &off_21478;
  swift_unknownObjectWeakAssign();
  return v8;
}

char *sub_13D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a4;
  v24 = a1;
  v10 = sub_14614();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SOSFeedbackViewController();
  v15 = swift_allocObject();

  sub_13088(0xD000000000000020, 0x8000000000018880, a2, a3);
  if (a5)
  {
    v16 = *(v15 + 16);
    *v14 = 0xD000000000000014;
    v14[1] = 0x80000000000188B0;
    (*(v11 + 104))(v14, enum case for FBKFeedbackForm.Question.custom(_:), v10);
    v17 = v16;

    sub_14604();

    (*(v11 + 8))(v14, v10);
  }

  else
  {
  }

  v18 = *(v15 + 16);
  sub_145E4();

  v19 = *(v15 + 16);
  sub_145D4();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] = v15;
  v20 = type metadata accessor for SOSFeedbackController();
  v25.receiver = v6;
  v25.super_class = v20;
  v21 = objc_msgSendSuper2(&v25, "init", v23, v24);
  *(*&v21[OBJC_IVAR____TtC11SOSSettings21SOSFeedbackController_feedbackViewController] + 40) = &off_21478;
  swift_unknownObjectWeakAssign();
  return v21;
}