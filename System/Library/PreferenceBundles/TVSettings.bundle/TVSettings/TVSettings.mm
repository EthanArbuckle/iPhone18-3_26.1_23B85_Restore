id sub_1F14(uint64_t a1)
{
  state64 = 0;
  notify_get_state(**(a1 + 40), &state64);
  result = getpid();
  if (state64 != result)
  {
    NSLog(@"TVSettingsLog - preferences did change notification received from pid: %llu", state64);
    return [*(a1 + 32) externalPreferencesDidUpdate];
  }

  return result;
}

void sub_2364(id a1)
{
  qword_27FF0 = os_log_create("com.apple.Preferences.TVAppPreferences", "TVSettingsAddLanguageController");

  _objc_release_x1();
}

id sub_27CC(uint64_t a1, uint64_t a2)
{
  v3 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:a2];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  return v4;
}

void sub_45A8(id a1)
{
  qword_28000 = os_log_create("com.apple.Preferences.TVAppPreferences", "TVSettingsLanguageSettingsController");

  _objc_release_x1();
}

int64_t sub_528C(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(NSString *)v4 isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
  {
    v6 = -1;
  }

  else
  {
    v7 = [(NSString *)v4 isEqualToString:@"DEVICE_AUDIO_LANGUAGE"];
    v8 = [(NSString *)v5 isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"];
    if (v7)
    {
      if (v8)
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }
    }

    else if ((v8 & 1) != 0 || [(NSString *)v5 isEqualToString:@"DEVICE_AUDIO_LANGUAGE"])
    {
      v6 = 1;
    }

    else
    {
      v9 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v4];
      v10 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v5];
      v6 = [v9 compare:v10];
    }
  }

  return v6;
}

int64_t sub_5398(id a1, NSString *a2, NSString *a3)
{
  v4 = a3;
  v5 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:a2];
  v6 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v4];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_673C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v7 methodForSelector:a1];
    v11 = [v7 methodSignatureForSelector:a1];
    v12 = *[v11 methodReturnType];

    if (v9)
    {
      if (v12 == 64)
      {
        v13 = v10(v7, a1, v8, v9);
LABEL_14:
        v15 = v13;
LABEL_16:
        if (v12 == 64)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v14 = v16;

        goto LABEL_20;
      }

      v10(v7, a1, v8, v9);
    }

    else if (v8)
    {
      if (v12 == 64)
      {
        v13 = (v10)(v7, a1, v8);
        goto LABEL_14;
      }

      (v10)(v7, a1, v8);
    }

    else
    {
      if (v12 == 64)
      {
        v13 = (v10)(v7, a1);
        goto LABEL_14;
      }

      (v10)(v7, a1);
    }

    v15 = 0;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

void sub_726C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_72F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_7334(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_7374(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = sub_7478();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained _descriptionForExternalScreenType:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Initial external screen type is %@", &v7, 0xCu);
  }

  if (a2 == 2)
  {
    v6 = +[WLKSystemPreferencesStore sharedPreferences];
    [v6 setHasAVAdapterEvenBeenConnected:1];

    [WeakRetained reloadSpecifiers];
  }
}

id sub_7478()
{
  if (qword_28018 != -1)
  {
    sub_124B8();
  }

  v1 = qword_28010;

  return v1;
}

void sub_86E8(uint64_t a1)
{
  v2 = +[ISNetworkObserver sharedInstance];
  v3 = +[ISNetworkObserver isLikelyToReachRemoteServerWithReachabilityFlags:](ISNetworkObserver, "isLikelyToReachRemoteServerWithReachabilityFlags:", [v2 networkReachabilityFlags]);

  v4 = +[SSAccountStore defaultStore];
  v5 = [v4 activeAccount];

  if (v5)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [WLKSettingsCloudUtilities synchronizeSettingsFromCloudIfNeeded:0];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8808;
  v7[3] = &unk_20A78;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v9);
}

void sub_8808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[172] = 1;
  }

  v4 = WeakRetained;
  [WeakRetained reloadSpecifiers];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void sub_9568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_9584(uint64_t a1)
{
  v2 = +[WLKSettingsAMSBagTracker sharedTracker];
  [v2 updateTrackedBagValues];

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_95D4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[173] = a2;
  }

  v5 = WeakRetained;
  dispatch_group_leave(*(a1 + 32));
}

void sub_9638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

void sub_A4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_A4D4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3 && *(a1 + 32))
  {
    return [a2 performSelector:v4 withObject:? withObject:?];
  }

  else
  {
    return [a2 performSelector:v4 withObject:?];
  }
}

void sub_A4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    NSLog(@"TVSettingsLog - undoing specifier %@ to old value of %@", *(a1 + 32), *(a1 + 40));
    v3 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    WeakRetained = v4;
  }
}

void sub_C138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C15C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[HSAccountStore defaultStore];
    v8 = [v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    [v7 setAppleID:v8];

    v9 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    [v7 setPassword:v9];

    if ([v7 canDetermineGroupID])
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_C2C0;
      v11[3] = &unk_20B90;
      objc_copyWeak(&v13, (a1 + 48));
      v10 = *(a1 + 40);
      v11[4] = *(a1 + 32);
      v12 = v10;
      [v7 determineGroupIDWithCompletionHandler:v11];

      objc_destroyWeak(&v13);
    }
  }
}

void sub_C2C0(uint64_t a1, char a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C378;
  v5[3] = &unk_20B68;
  objc_copyWeak(&v7, (a1 + 48));
  v8 = a2;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_C378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = WeakRetained;
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"HOME_SHARING_ERROR_TITLE" value:&stru_21328 table:@"TVSettings"];
    v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:1];

    v7 = *(a1 + 32);
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"OK" value:&stru_21328 table:@"TVSettings"];
    v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
    [v6 addAction:v10];

    [*(a1 + 40) presentViewController:v6 animated:1 completion:0];
    WeakRetained = v16;
  }

  [WeakRetained _updateHomeSharingSpecifiersAnimated:1 shouldUpdateUsingTableView:1];
  v11 = [v16 parentController];
  if (v11)
  {
    v12 = v11;
    v13 = [v16 parentController];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v16 parentController];
      [v15 reloadSpecifiers];
    }
  }
}

void sub_C7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C800(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[HSAccountStore defaultStore];
  [v1 clearAllCredentials];
  [WeakRetained _updateHomeSharingSpecifiersAnimated:1 shouldUpdateUsingTableView:1];
  v2 = [WeakRetained parentController];
  if (v2)
  {
    v3 = v2;
    v4 = [WeakRetained parentController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [WeakRetained parentController];
      [v6 reloadSpecifiers];
    }
  }
}

void sub_DAE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[WLKSystemPreferencesStore sharedPreferences];
  [v1 setHasAVAdapterEvenBeenConnected:1];

  [WeakRetained reloadSpecifiers];
}

void sub_E3F8(id a1)
{
  qword_28010 = os_log_create("com.apple.TVSettings", "TopLevelSetting");

  _objc_release_x1();
}

uint64_t sub_E4DC(uint64_t a1)
{
  qword_28028 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_E5E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_F71C()
{
  v0 = objc_allocWithZone(TopLevelSettingsController);

  return [v0 init];
}

id sub_F758()
{
  v0 = objc_allocWithZone(TVSettingsLanguageSettingsController);

  return [v0 init];
}

id sub_F794()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

uint64_t sub_F7CC(void *a1, void *a2, void *a3)
{
  v6 = sub_F9B8(&qword_27F08, &qword_16410);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_12584();
  sub_12380(&qword_27F10, &type metadata accessor for PreferencesControllerView);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  sub_12614();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  sub_10994();
  v16 = v12;
  v17 = v13;
  v18 = v14;
  sub_125D4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_F9B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_FA00(uint64_t a1)
{
  v2 = *(*(sub_126D4() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_125A4() - 8) + 64);
  __chkstk_darwin();
  sub_126B4();
  sub_126A4();
  sub_12674();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_allocWithZone(PSSpecifier) init];
  [v4 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_126C4();
  sub_12594();
  sub_12574();
}

uint64_t sub_FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = *(*(sub_126D4() - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v7 = sub_125A4();
  v5[33] = v7;
  v8 = *(v7 - 8);
  v5[34] = v8;
  v9 = *(v8 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v10 = sub_F9B8(&qword_27FD0, &qword_166B0);
  v5[37] = v10;
  v11 = *(v10 - 8);
  v5[38] = v11;
  v12 = *(v11 + 64) + 15;
  v5[39] = swift_task_alloc();
  v13 = *(*(sub_F9B8(&qword_27FD8, &qword_166B8) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v14 = sub_12554();
  v5[41] = v14;
  v15 = *(v14 - 8);
  v5[42] = v15;
  v16 = *(v15 + 64) + 15;
  v5[43] = swift_task_alloc();
  v17 = sub_125C4();
  v5[44] = v17;
  v18 = *(v17 - 8);
  v5[45] = v18;
  v19 = *(v18 + 64) + 15;
  v5[46] = swift_task_alloc();
  sub_126B4();
  v5[47] = sub_126A4();
  v21 = sub_12674();
  v5[48] = v21;
  v5[49] = v20;

  return _swift_task_switch(sub_FE48, v21, v20);
}

uint64_t sub_FE48()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[27];
  sub_125E4();
  sub_125F4();
  v4 = sub_12544();
  v6 = v5;
  sub_12208();
  while (2)
  {
    v0[50] = v6;
    v0[51] = v4;
    do
    {
      v0[18] = v4;
      v0[19] = v6;
      v0[20] = 0xD000000000000011;
      v0[21] = 0x8000000000018590;
      if ((sub_126F4() & 1) == 0)
      {
        v17 = v0[38];
        v16 = v0[39];
        v18 = v0[37];
        v19 = v0[28];
        v0[2] = v0;
        v0[3] = sub_10188;
        swift_continuation_init();
        v0[17] = v18;
        v20 = sub_1225C(v0 + 14);
        sub_12684();
        (*(v17 + 32))(v20, v16, v18);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_10A40;
        v0[13] = &unk_21260;
        [v19 checkSettingsAndReloadWithCompletion:v0 + 10];
        (*(v17 + 8))(v20, v18);
        v13 = (v0 + 2);

        return _swift_continuation_await(v13);
      }

      v7 = v0[40];
      v0[22] = v4;
      v0[23] = v6;
      v0[24] = 0xD000000000000011;
      v0[25] = 0x8000000000018590;
      v8 = sub_12564();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

      sub_126E4();
      v10 = v9;
      v12 = v11;
      sub_123C8(v7);
    }

    while ((v12 & 1) != 0);
    v14 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v14 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v14 >= v10 >> 14)
    {
      sub_12664();

      v4 = sub_12634();
      v6 = v15;

      continue;
    }

    break;
  }

  __break(1u);
  return _swift_continuation_await(v13);
}

uint64_t sub_10188()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *v0;

  return _swift_task_switch(sub_10290, v2, v1);
}

uint64_t sub_10290()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 376);

  v4 = sub_11A4C();
  v5 = v4;
  if (v4 <= 5u)
  {
    if (v4 - 2 >= 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 > 0x13u)
    {
LABEL_6:
      v6 = *(v0 + 240);
      v48._countAndFlagsBits = sub_10AA0(v4);
      countAndFlagsBits = v48._countAndFlagsBits;
      object = v48._object;
      sub_12654(v48);

      v9 = sub_12624();

      [v6 setSpecifierIdentifierToScrollAndSelect:v9];

      v49._countAndFlagsBits = countAndFlagsBits;
      v49._object = object;
      sub_12654(v49);
LABEL_11:

      v13 = *(v0 + 240);
      v14 = sub_12624();

      [v13 setSpecifierIdentifierToScrollAndHighlight:v14];

      goto LABEL_16;
    }

    if (((1 << v4) & 0x75700) == 0)
    {
      if (((1 << v4) & 0xA800) == 0)
      {
        if (v4 == 19)
        {
          goto LABEL_16;
        }

        goto LABEL_6;
      }

LABEL_10:
      v50._countAndFlagsBits = sub_10AA0(v4);
      sub_12654(v50);
      goto LABEL_11;
    }
  }

  v10 = sub_10D28(*(v0 + 224), v4);
  if (v10)
  {
    v11 = v10;
    v12 = *(v0 + 256);
    sub_126C4();
    v15 = *(v0 + 368);
    v16 = *(v0 + 288);
    v17 = *(v0 + 264);
    v18 = *(v0 + 272);
    v19 = *(v0 + 256);
    v20 = v11;
    sub_12594();
    sub_12380(&qword_27FE8, &type metadata accessor for PreferencesControllerRecipe);
    sub_125B4();

    (*(v18 + 8))(v16, v17);
  }

  if (((1 << v5) & 0xEFFC) == 0)
  {
    v21 = sub_10D28(*(v0 + 232), v5);
    if (!v21)
    {
      v21 = [objc_allocWithZone(PSSpecifier) init];
    }

    v22 = v21;
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    [v21 setProperty:*(v0 + 224) forKey:@"TVSettingsTopLevelSettingsVCKey"];
    v51._countAndFlagsBits = sub_10AA0(v5);
    sub_12654(v51);

    v25 = sub_12624();

    [v24 setSpecifierIdentifierToScrollAndHighlight:v25];

    [v22 setProperty:v24 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
    sub_126C4();
    v26 = *(v0 + 368);
    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    v29 = *(v0 + 264);
    v30 = *(v0 + 248);
    v31 = v22;
    sub_12594();
    sub_12380(&qword_27FE8, &type metadata accessor for PreferencesControllerRecipe);
    sub_125B4();

    (*(v28 + 8))(v27, v29);
  }

LABEL_16:
  v33 = *(v0 + 360);
  v32 = *(v0 + 368);
  v35 = *(v0 + 344);
  v34 = *(v0 + 352);
  v36 = *(v0 + 328);
  v37 = *(v0 + 336);
  v39 = *(v0 + 312);
  v38 = *(v0 + 320);
  v40 = *(v0 + 288);
  v44 = *(v0 + 280);
  v45 = *(v0 + 256);
  v46 = *(v0 + 248);
  v41 = *(v0 + 208);
  sub_12604();
  (*(v37 + 8))(v35, v36);
  (*(v33 + 8))(v32, v34);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_108D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_12480;

  return sub_FBB0(a1, a2, v6, v7, v8);
}

unint64_t sub_10994()
{
  result = qword_27F18;
  if (!qword_27F18)
  {
    sub_109F8(&qword_27F08, &qword_16410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F18);
  }

  return result;
}

uint64_t sub_109F8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10A40(uint64_t a1)
{
  sub_12430((a1 + 32), *(a1 + 56));
  sub_F9B8(&qword_27FD0, &qword_166B0);
  return sub_12694();
}

unint64_t sub_10AA0(char a1)
{
  result = 0x6165707041707041;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
    case 9:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x70537374726F7053;
      break;
    case 12:
    case 18:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0x69447478654E7055;
      break;
    case 15:
      result = 0x4879616C50657355;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 17:
      result = 0xD000000000000024;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

id sub_10D28(void *a1, char a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = a1;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = a1;
  }

  switch(a2)
  {
    case 1:
      v8 = [v4 cellularDataModeDownloadSpecifier];
      goto LABEL_31;
    case 2:
      v8 = [v4 downloadQualityCellularSpecifier];
      goto LABEL_31;
    case 3:
      v8 = [v4 appAppearanceSpecifier];
      goto LABEL_31;
    case 4:
      v8 = [v4 downloadQualitySpecifier];
      goto LABEL_31;
    case 5:
      v8 = [v4 downloadsCompatibleWithAVAdapterSpecifier];
      goto LABEL_31;
    case 6:
      v8 = [v4 videosHomeSharingSignInButtonSpecifier];
      goto LABEL_31;
    case 7:
      v8 = [v4 videosHomeSharingSignOutButtonSpecifier];
      goto LABEL_31;
    case 8:
      v8 = [v4 playbackQualityCellularSpecifier];
      goto LABEL_31;
    case 9:
      v8 = [v4 playbackQualityWifiSpecifier];
      goto LABEL_31;
    case 10:
      v8 = [v4 videosPurchaseResolutionSpecifier];
      goto LABEL_31;
    case 11:
      v8 = [v4 videosShowSportsSpoilersSpecifier];
      goto LABEL_31;
    case 12:
      if (!v6)
      {
        goto LABEL_28;
      }

      v9 = v6;
      v10 = [v9 topLevelAudioAndSubtitleLanguagesSpecifier];
      goto LABEL_27;
    case 13:
      v8 = [v4 topLevelPreferredAudioLanguageSpecifier];
      goto LABEL_31;
    case 14:
      v8 = [v4 videosUpNextDisplaySpecifier];
      goto LABEL_31;
    case 15:
      v8 = [v4 videosUsePlayHistorySpecifier];
      goto LABEL_31;
    case 16:
      if (!v6)
      {
        goto LABEL_28;
      }

      v9 = v6;
      v10 = [v9 audioLanguagesGroupSpecifier];
      goto LABEL_27;
    case 17:
      if (!v6)
      {
        goto LABEL_28;
      }

      v9 = v6;
      v10 = [v9 downloadUseDefaultSubtitleLanguagesSpecifier];
      goto LABEL_27;
    case 18:
      if (v6)
      {
        v9 = v6;
        v10 = [v9 downloadSubtitleAudioLanguagesSpecifier];
LABEL_27:
        v11 = v10;
      }

      else
      {
LABEL_28:

        return 0;
      }

      return v11;
    default:
      v8 = [v4 cellularDataModeSpecifier];
LABEL_31:
      v11 = v8;

      return v11;
  }
}

unint64_t sub_11024(unsigned __int8 a1)
{
  v1 = 0xD000000000000030;
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000034;
    if (a1 != 2)
    {
      v5 = 0xD000000000000030;
    }

    v6 = 0xD000000000000024;
    if (!a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000002ALL;
    v3 = 0xD000000000000027;
    if (a1 != 7)
    {
      v3 = 0xD000000000000021;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000034;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id sub_11124()
{
  v0 = [objc_allocWithZone(TopLevelSettingsController) init];
  [objc_allocWithZone(TVSettingsLanguageSettingsController) init];
  [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  return v0;
}

uint64_t sub_1119C()
{
  v1 = sub_F9B8(&qword_27F08, &qword_16410);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  sub_12584();
  sub_12380(&qword_27F10, &type metadata accessor for PreferencesControllerView);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  sub_12614();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = v12;
  sub_10994();
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_125D4();
  return (*(v2 + 8))(v5, v1);
}

id sub_11384@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(TopLevelSettingsController) init];
  v3 = [objc_allocWithZone(TVSettingsLanguageSettingsController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_1140C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000030;
  v3 = "sGroupSpecifierID";
  if (a1 <= 3u)
  {
    v4 = "geSettingsController";
    v5 = 0xD000000000000034;
    if (a1 != 2)
    {
      v5 = 0xD000000000000030;
      v4 = "yListItemsController";
    }

    v8 = "TopLevelSettingsController";
    v9 = 0xD000000000000024;
    if (!a1)
    {
      v9 = 0xD00000000000001ALL;
      v8 = "sGroupSpecifierID";
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "tItemsController";
    v5 = 0xD00000000000002ALL;
    v6 = "earanceListItemsController";
    v7 = 0xD000000000000027;
    if (a1 != 7)
    {
      v7 = 0xD000000000000021;
      v6 = "redResolutionController";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "tItemsController";
    v9 = 0xD000000000000034;
    if (a1 != 4)
    {
      v9 = 0xD000000000000030;
      v8 = "yListItemsController";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "tItemsController";
        v2 = 0xD00000000000002ALL;
      }

      else if (a2 == 7)
      {
        v3 = "earanceListItemsController";
        v2 = 0xD000000000000027;
      }

      else
      {
        v3 = "redResolutionController";
        v2 = 0xD000000000000021;
      }

      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v13 = "TVSettingsDownloadCellularQualityListItemsController";
      goto LABEL_32;
    }

    v14 = "TVSettingsDownloadWifiQualityListItemsController";
    goto LABEL_38;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = "TVSettingsPlaybackCellularQualityListItemsController";
LABEL_32:
      v3 = (v13 - 32);
      v2 = 0xD000000000000034;
      goto LABEL_39;
    }

    v14 = "TVSettingsPlaybackWifiQualityListItemsController";
LABEL_38:
    v3 = (v14 - 32);
    goto LABEL_39;
  }

  if (a2)
  {
    v3 = "TopLevelSettingsController";
    v2 = 0xD000000000000024;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

LABEL_39:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_12714();
  }

  return v15 & 1;
}

Swift::Int sub_11634()
{
  v1 = *v0;
  sub_12734();
  sub_11684();
  return sub_12744();
}

uint64_t sub_11684()
{
  sub_12644();
}

Swift::Int sub_117B0()
{
  v1 = *v0;
  sub_12734();
  sub_11684();
  return sub_12744();
}

uint64_t sub_117F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11AA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_11824@<X0>(unint64_t *a1@<X8>)
{
  result = sub_11024(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_11850(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10AA0(*a1);
  v5 = v4;
  if (v3 == sub_10AA0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_12714();
  }

  return v8 & 1;
}

Swift::Int sub_118D8()
{
  v1 = *v0;
  sub_12734();
  sub_10AA0(v1);
  sub_12644();

  return sub_12744();
}

uint64_t sub_1193C()
{
  sub_10AA0(*v0);
  sub_12644();
}

Swift::Int sub_11990()
{
  v1 = *v0;
  sub_12734();
  sub_10AA0(v1);
  sub_12644();

  return sub_12744();
}

uint64_t sub_119F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_11A4C();
  *a2 = result;
  return result;
}

unint64_t sub_11A20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10AA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_11A4C()
{
  v0 = sub_12724();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_11AA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_20E78;
  v6._object = a2;
  v4 = sub_12704(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_11AF0()
{
  result = qword_27F20;
  if (!qword_27F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20);
  }

  return result;
}

unint64_t sub_11B64()
{
  result = qword_27F28;
  if (!qword_27F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F28);
  }

  return result;
}

unint64_t sub_11BBC()
{
  result = qword_27F30;
  if (!qword_27F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F30);
  }

  return result;
}

__n128 sub_11C34(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_11C48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsViewController(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsViewController(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVSettingsDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVSettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_11FA4()
{
  sub_109F8(&qword_27F08, &qword_16410);
  sub_10994();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_12008()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_12050(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_12114;

  return sub_FBB0(a1, a2, v6, v7, v8);
}

uint64_t sub_12114()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_12208()
{
  result = qword_27FE0;
  if (!qword_27FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE0);
  }

  return result;
}

uint64_t *sub_1225C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_122D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_12334(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_12380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_123C8(uint64_t a1)
{
  v2 = sub_F9B8(&qword_27FD8, &qword_166B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_12430(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_124CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[TVLog] Error: Corresponding cellular toggle specifier must exist in _specifiers to show cellular quality controls for %@", &v2, 0xCu);
}