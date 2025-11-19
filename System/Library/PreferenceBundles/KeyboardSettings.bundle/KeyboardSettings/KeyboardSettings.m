uint64_t sub_2080()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_20C0()
{
  sub_2BD80(&qword_56878, &qword_43CE0);
  sub_2BD1C();
  return swift_getOpaqueTypeConformance2();
}

id sub_2E4C(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) searchIsActive];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v4 = [objc_msgSend(v3 "searchController")];
    v5 = [*(*(*(a1 + 32) + 8) + 40) searchController];

    return [v4 updateSearchResultsForSearchController:v5];
  }

  else
  {

    return [v3 reloadSections];
  }
}

id sub_39F8(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _hideSearchBar];
  }

  return result;
}

id sub_3A4C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 160) searchBar];

  return [v1 setHidden:1];
}

id sub_3C4C(double *a1)
{
  [objc_msgSend(*(*(a1 + 4) + 160) "searchBar")];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = [*(*(a1 + 4) + 160) searchBar];

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t IsTrialAssetDeliveryEnabled()
{
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.internal.ck"];
  v1 = [v0 objectForKey:@"disableTrialAssetDelivery"];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v0 objectForKey:@"enableTrialAssetDelivery"];
    if ([v4 BOOLValue])
    {
      v3 = 1;
    }

    else
    {
      v3 = _os_feature_enabled_impl();
    }
  }

  return v3;
}

void sub_416C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4208;
  v5[3] = &unk_48F68;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_4208(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 offlineDictationStatusUpdated:*(a1 + 40)];
}

id LocStringKeyBasedOnLanguageCount(id result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    result = [result stringByAppendingString:@"S"];
  }

  if (a3)
  {

    return [result stringByAppendingString:a3];
  }

  return result;
}

id sub_4988(uint64_t a1, void *a2)
{
  result = AFOfflineDictationStatusStringIsInstalled();
  if (result)
  {
    v5 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
    v6 = [a2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    result = [v5 containsObject:v6];
    if (result)
    {
      result = [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_4DC4()
{
  if ([+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")])
  {
    return 1;
  }

  else
  {
    return [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")] ^ 1;
  }
}

void sub_5944(id a1)
{
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &stru_49018);
}

void sub_597C(id a1)
{
  v1 = +[NSFileManager defaultManager];

  [(NSFileManager *)v1 URLForUbiquityContainerIdentifier:0];
}

BOOL sub_5C30(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = [objc_msgSend(UIKeyboardInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"sw", "_containsSubstring:", @"Flick"}];
  if (v5)
  {
    *a4 = 1;
  }

  return v5;
}

BOOL sub_5C7C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = [objc_msgSend(UIKeyboardInputModeGetComponentsFromIdentifier() objectForKeyedSubscript:{@"sw", "_containsSubstring:", @"RTL"}];
  if (v5)
  {
    *a4 = 1;
  }

  return v5;
}

void sub_7B00(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 137) & 1) == 0)
  {
    *(v1 + 137) = 1;
    v3 = dispatch_time(0, 600000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7BB4;
    block[3] = &unk_490C0;
    block[4] = *(a1 + 32);
    dispatch_after(v3, &_dispatch_main_q, block);
  }
}

id sub_7BB4(uint64_t a1)
{
  result = [*(a1 + 32) reloadSpecifiers];
  *(*(a1 + 32) + 137) = 0;
  return result;
}

id sub_7C60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_msgSend(v2 "navigationController")];
  v4 = *(a1 + 32);
  if (v2 == v3)
  {

    return [v4 reloadSpecifiers];
  }

  else
  {
    [v4 setNeedsReloadSpecifiers:1];
    result = [objc_msgSend(sub_7D18() "sharedConnection")];
    if ((result & 1) == 0)
    {
      result = [objc_msgSend(objc_msgSend(*(a1 + 32) "navigationController")];
      if (result)
      {
        v6 = [*(a1 + 32) navigationController];
        v7 = *(a1 + 32);

        return [v6 popToViewController:v7 animated:1];
      }
    }
  }

  return result;
}

uint64_t sub_7D18()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_496C;
  v0 = qword_56908;
  v7 = sub_497C;
  v8 = qword_56908;
  if (!qword_56908)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_BB90;
    v2[3] = &unk_48E88;
    v2[4] = &v3;
    sub_BB90(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_80FC()
{
  if (qword_56950 != -1)
  {
    sub_2C3A4();
  }

  if (byte_56948 != 1)
  {
    return 0;
  }

  return __UISolariumEnabled();
}

int64_t sub_8934(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = [(PSSpecifier *)a2 name];
  v5 = [(PSSpecifier *)a3 name];

  return [v4 localizedStandardCompare:v5];
}

uint64_t sub_93CC(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 count] > 3)
  {
    return 1;
  }

  v7 = [NSSet setWithArray:a2];
  v8 = [(NSSet *)v7 isEqualToSet:[NSSet setWithArray:&off_4D640]];
  if (v8)
  {
    return v8 ^ 1;
  }

  for (i = a3 + 1; i < [*(a1 + 32) count]; ++i)
  {
    if (-[NSSet intersectsSet:](+[NSSet setWithArray:](NSSet, "setWithArray:", [*(a1 + 32) objectAtIndex:i]), "intersectsSet:", v7))
    {
      return v8 ^ 1;
    }
  }

  return 0;
}

uint64_t sub_99E4(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 count];
  v7 = [a3 count];
  if (v6 > v7)
  {
    return -1;
  }

  if (v6 < v7)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = [a2 objectAtIndex:0];
  v11 = [a3 objectAtIndex:0];

  return [KeyboardController compareUsingOrderInArray:v9 withFirst:v10 second:v11];
}

void *sub_B840(uint64_t a1)
{
  v2 = sub_B890();
  result = dlsym(v2, "MCKeyboardSettingsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_56910 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_B890()
{
  v2[0] = 0;
  if (!qword_56920)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_B988;
    v2[4] = &unk_491D8;
    v2[5] = v2;
    v3 = off_491C0;
    v4 = 0;
    qword_56920 = _sl_dlopen();
  }

  v0 = qword_56920;
  if (!qword_56920)
  {
    sub_2C3CC(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_B988(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_56920 = result;
  return result;
}

uint64_t sub_B9FC()
{
  if (!qword_56938)
  {
    qword_56938 = _sl_dlopen();
  }

  return qword_56938;
}

uint64_t sub_BACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_56938 = result;
  return result;
}

Class sub_BB40(uint64_t a1)
{
  sub_B9FC();
  result = objc_getClass("TUIFeedbackController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  qword_56940 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_BB90(uint64_t a1)
{
  sub_B890();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_2C434();
  }

  qword_56908 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_BC18(id a1)
{
  v1 = +[TIPreferencesController sharedPreferencesController];

  [v1 _configureKey:@"ToggleFourOrFiveRowKeyboard" domain:@"com.apple.keyboard" defaultValue:&__kCFBooleanFalse];
}

int64_t sub_BFF4(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

id sub_C49C(void *a1, __IOHIDServiceClient *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a3;
  if ([(__CFString *)v7 isEqualToString:@"Function"]&& sub_E880(a2))
  {

    v7 = @"Globe";
  }

  v9 = [qword_56978 objectForKeyedSubscript:v7];
  if (![(__CFString *)v7 isEqualToString:@"CapsLock"]|| !a2)
  {
    goto LABEL_10;
  }

  v10 = IOHIDServiceClientCopyProperty(a2, @"CapsLockLanguageSwitch");
  v11 = IOHIDServiceClientCopyProperty(a2, @"KeyboardLanguage");
  if ([v11 length] && ((objc_msgSend(v10, "BOOLValue") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"Simplified Chinese Keyboard")))
  {
    v12 = +[TIHardwareKeyboardController IOHIDKeyboardLanguageToCapsLockKeyLabel];
    v13 = [v12 objectForKey:v11];
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
LABEL_10:
    if (a4)
    {
      v14 = [qword_56980 objectForKeyedSubscript:v7];
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = v13;

  v14 = 0;
  v9 = v15;
  if (v8)
  {
LABEL_14:
    v16 = [v9 stringByAppendingString:v8];

    v9 = v16;
  }

LABEL_15:
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v9 value:&stru_49C80 table:@"Keyboard"];

  v19 = [TIKeyboardListController attributedTitleForSymbolName:v14 cellTitle:v18];

  return v19;
}

void sub_CD04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_CD94;
    block[3] = &unk_48F40;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_CD9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_CE2C;
    block[3] = &unk_48F40;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_E880(__IOHIDServiceClient *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = IOHIDServiceClientCopyProperty(a1, @"SupportsGlobeKey");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_ED74(id a1)
{
  v34[0] = @"CapsLock";
  v34[1] = @"Control";
  v35[0] = &off_4D670;
  v35[1] = &off_4D688;
  v34[2] = @"Option";
  v34[3] = @"Command";
  v35[2] = &off_4D6A0;
  v35[3] = &off_4D6B8;
  v34[4] = @"Escape";
  v34[5] = @"Function";
  v35[4] = &off_4D6D0;
  v35[5] = &off_4D6E8;
  v34[6] = @"Globe";
  v34[7] = @"NoAction";
  v35[6] = &off_4D700;
  v35[7] = &off_4D718;
  v1 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:8];
  v2 = qword_56960;
  qword_56960 = v1;

  v32[0] = @"CapsLock";
  v32[1] = @"Control";
  v33[0] = @"Caps Lock";
  v33[1] = @"Control";
  v32[2] = @"Option";
  v32[3] = @"Command";
  v33[2] = @"Option";
  v33[3] = @"Command";
  v32[4] = @"Escape";
  v32[5] = @"Function";
  v33[4] = @"Escape";
  v33[5] = @"Function";
  v32[6] = @"Globe";
  v32[7] = @"NoAction";
  v33[6] = @"Globe";
  v33[7] = @"No Action";
  v3 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:8];
  v4 = qword_56978;
  qword_56978 = v3;

  v30[0] = @"CapsLock";
  v30[1] = @"Control";
  v31[0] = @"capslock";
  v31[1] = @"control";
  v30[2] = @"Option";
  v30[3] = @"Command";
  v31[2] = @"option";
  v31[3] = @"command";
  v30[4] = @"Escape";
  v30[5] = @"Function";
  v31[4] = @"escape";
  v31[5] = @"fn";
  v30[6] = @"Globe";
  v31[6] = @"globe";
  v5 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:7];
  v6 = qword_56980;
  qword_56980 = v5;

  v29[0] = @"CapsLock";
  v29[1] = @"Control";
  v29[2] = @"Option";
  v29[3] = @"Command";
  v29[4] = @"Globe";
  v29[5] = @"Function";
  v7 = [NSArray arrayWithObjects:v29 count:6];
  v8 = qword_56968;
  qword_56968 = v7;

  v28[0] = @"CapsLock";
  v28[1] = @"Control";
  v28[2] = @"Option";
  v28[3] = @"Command";
  v28[4] = @"Escape";
  v28[5] = @"Globe";
  v28[6] = @"Function";
  v28[7] = @"NoAction";
  v9 = [NSArray arrayWithObjects:v28 count:8];
  v10 = qword_56970;
  qword_56970 = v9;

  v11 = qword_56960;
  v12 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:{v18, v24}];
        if ([v19 count])
        {
          v20 = 0;
          do
          {
            v21 = [v19 objectAtIndexedSubscript:v20];
            [v12 setObject:v18 forKeyedSubscript:v21];

            ++v20;
          }

          while (v20 < [v19 count]);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v15);
  }

  v22 = [v12 copy];
  v23 = qword_56958;
  qword_56958 = v22;
}

id sub_F7F8(uint64_t a1)
{
  result = [UIKeyboardInputModeGetNormalizedIdentifier() isEqualToString:*(a1 + 32)];
  if (result)
  {
    return ([objc_msgSend(UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:{@"sw", "length"}] != 0);
  }

  return result;
}

UIButton *TIDownloadButton()
{
  v3 = +[UIColor tintColor];
  v0 = [UIImageSymbolConfiguration configurationWithPaletteColors:[NSArray arrayWithObjects:&v3 count:1]];
  v1 = [UIButton buttonWithType:0];
  [(UIButton *)v1 setPreferredSymbolConfiguration:v0 forImageInState:0];
  [(UIButton *)v1 setImage:[UIImage forState:"systemImageNamed:" systemImageNamed:?], 0];
  [(UIButton *)v1 sizeToFit];
  return v1;
}

BOOL sub_10554(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = [UIKeyboardInputModeGetLanguageWithRegion() isEqualToString:@"ja_JP"];
  if (v5)
  {
    v5 = [UIKeyboardInputModeGetVariant() hasPrefix:@"Kana"];
    if (v5)
    {
      LOBYTE(v5) = 1;
      *a4 = 1;
    }
  }

  return v5;
}

void *sub_12078(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[20])
  {
    [result removeSpecifier:result[19] animated:1];
    v3 = *(a1 + 32);
    v4 = v3[20];

    return [v3 removeSpecifier:v4 animated:1];
  }

  return result;
}

id sub_120E8(uint64_t a1)
{
  if (([*(a1 + 32) allKeyboardsEnabled] & 1) == 0 && (*(a1 + 40) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (v2[20])
    {
      [v2 addSpecifier:v2[19] animated:1];
      [*(a1 + 32) addSpecifier:*(*(a1 + 32) + 160) animated:1];
    }
  }

  v3 = [*(a1 + 32) isEditing];
  v4 = *(a1 + 32);
  v5 = (v3 & 1) != 0 || v4[23] > 1uLL;
  v6 = [objc_msgSend(v4 "navigationItem")];

  return [v6 setEnabled:v5];
}

id sub_13764(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    return &dword_0 + 1;
  }

  LanguageWithRegion = TIInputModeGetLanguageWithRegion();
  v5 = *(a1 + 32);

  return [LanguageWithRegion isEqualToString:v5];
}

id sub_14E00(uint64_t a1, void *a2)
{
  v3 = [a2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  result = [*(a1 + 32) containsObject:v3];
  if (result)
  {
    if (AFOfflineDictationStatusStringIsHighQualityModelInstalled())
    {
      v5 = 40;
    }

    else
    {
      IsInstalled = AFOfflineDictationStatusStringIsInstalled();
      v5 = 56;
      if (IsInstalled)
      {
        v5 = 48;
      }
    }

    v7 = *(*(*(a1 + v5) + 8) + 40);

    return [v7 addObject:v3];
  }

  return result;
}

id sub_158DC(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "onDeviceLocalesDownloading")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [objc_msgSend(*(a1 + 32) assetIdToLanguages];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 48);
        v10 = [*(a1 + 32) onDeviceLocalesDownloading];
        if (v9 == 1)
        {
          [v10 removeObject:v8];
        }

        else
        {
          [v10 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  result = [v2 isEqualToSet:{objc_msgSend(*(a1 + 32), "onDeviceLocalesDownloading")}];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) reloadSpecifiers];
  }

  return result;
}

id sub_15AAC(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "trackingDownloadStatusForAssetsIDs")];
  v2 = [objc_msgSend(*(a1 + 32) "assetIdToLanguages")];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(*(a1 + 32) "onDeviceLocalesDownloading")];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = [objc_msgSend(*(a1 + 32) "assetIdToLanguages")];
  if ((*(a1 + 48) & 1) == 0)
  {
    return [*(a1 + 32) reloadSpecifiers];
  }

  return result;
}

uint64_t sub_16EE4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_14DE4;
  v0 = qword_569A0;
  v7 = sub_14DF4;
  v8 = qword_569A0;
  if (!qword_569A0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_197A4;
    v2[3] = &unk_48E88;
    v2[4] = &v3;
    sub_197A4(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

id sub_16FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strongRef];
  v6 = *(a1 + 40);

  return [v5 updateDownloadingProgressForAsset:v6 stalled:a3];
}

id sub_16FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strongRef];
  v6 = *(a1 + 40);

  return [v5 updateDownloadingStateForAsset:v6 success:a3 == 0];
}

id sub_18F10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];

  return [v2 containsObject:v3];
}

id sub_18F50(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "addExtensionKeyboardController")];

  return [v3 isEqualToString:v4];
}

Class sub_197A4(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_569A8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_198D0;
    v3[4] = &unk_491D8;
    v3[5] = v3;
    v4 = off_49488;
    v5 = 0;
    qword_569A8 = _sl_dlopen();
  }

  if (!qword_569A8)
  {
    sub_2C6AC(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SFSpeechAssetManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_2C644();
  }

  qword_569A0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_198D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_569A8 = result;
  return result;
}

uint64_t __TUIFaultDebugAssertLog()
{
  if (qword_569B8 != -1)
  {
    sub_2C714();
  }

  return qword_569B0;
}

void sub_1B700(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1B720(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

BOOL sub_1B740(uint64_t a1)
{
  v2 = *(a1 + 8);

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL sub_1B75C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

id TIInputModeIsChineseShuangpin()
{
  result = [TIInputModeGetBaseLanguage() isEqualToString:@"zh"];
  if (result)
  {
    Variant = TIInputModeGetVariant();

    return [Variant isEqualToString:@"Shuangpin"];
  }

  return result;
}

BOOL TICurrentShuangpinTypeUsesSemicolon()
{
  v0 = +[TIPreferencesController sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{TIShuangpinTypePreference), "integerValue"}];
  return v1 == 7 || v1 == 2;
}

NSString *TIGetCurrentShuangpinName()
{
  v0 = +[TIPreferencesController sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{TIShuangpinTypePreference), "integerValue"}];

  return TIGetShuangpinNameFromType(v1);
}

NSString *TIGetShuangpinNameFromType(int a1)
{
  v2 = a1 - 2;
  if ((a1 - 2) > 5 || ((0x3Du >> v2) & 1) == 0)
  {
    return 0;
  }

  v3 = off_49528[v2];
  v4 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v4 localizedStringForKey:v3 value:&stru_49C80 table:@"Preferences_pinyin"];
}

NSMutableArray *TIFilteredLayoutsByCurrentShuangpinType(void *a1)
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a1 count]);
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = [objc_msgSend(v3 valueForPreferenceKey:{TIShuangpinTypePreference), "integerValue"}];
  if (v4 == 7 || v4 == 2)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v6 = [a1 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if (([v10 hasPrefix:@"Pinyin-"] & 1) == 0)
          {
            [(NSMutableArray *)v2 addObject:v10];
          }
        }

        v7 = [a1 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v11 = [a1 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(a1);
          }

          v15 = *(*(&v17 + 1) + 8 * j);
          if (([v15 hasPrefix:@"Shuangpin-with-Semicolon-"] & 1) == 0)
          {
            [(NSMutableArray *)v2 addObject:v15];
          }
        }

        v12 = [a1 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }
  }

  return v2;
}

id TIUpdateShuangpinSWLayout()
{
  result = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
    v3 = +[TIPreferencesController sharedPreferencesController];
    v4 = [objc_msgSend(v3 valueForPreferenceKey:{TIShuangpinTypePreference), "integerValue"}];
    v5 = v4 == 7 || v4 == 2;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1C3C4;
    v10 = &unk_49508;
    v6 = v5;
    v11 = v1;
    v12 = v6;
    [v2 enumerateIndexesUsingBlock:&v7];
    return [TIKeyboardListController setInputModes:v1, v7, v8, v9, v10];
  }

  return result;
}

id sub_1C3C4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) objectAtIndexedSubscript:a2];
  SWLayout = TIInputModeGetSWLayout();
  v5 = SWLayout;
  if (*(a1 + 40) == 1)
  {
    result = [SWLayout hasPrefix:@"Pinyin-"];
    if (!result)
    {
      return result;
    }

    v7 = @"Pinyin-";
    v8 = [@"Pinyin-" length];
    v9 = @"Shuangpin-with-Semicolon-";
  }

  else
  {
    result = [SWLayout hasPrefix:@"Shuangpin-with-Semicolon-"];
    if (!result)
    {
      return result;
    }

    v7 = @"Shuangpin-with-Semicolon-";
    v8 = [@"Shuangpin-with-Semicolon-" length];
    v9 = @"Pinyin-";
  }

  result = [v5 stringByReplacingOccurrencesOfString:v7 withString:v9 options:0 range:{0, v8}];
  if (result)
  {
    v10 = UIKeyboardInputModeWithNewSWLayout();
    v11 = *(a1 + 32);

    return [v11 replaceObjectAtIndex:a2 withObject:v10];
  }

  return result;
}

void sub_1DBBC(id a1)
{
  v1[0] = @"Simplified Chinese Keyboard";
  v1[1] = @"2SetHangul";
  v2[0] = @"中 / 英";
  v2[1] = @"한 / A";
  v1[2] = @"Zhuyin Bopomofo";
  v1[3] = @"Thai";
  v2[2] = @"中 / 英";
  v2[3] = @"ก / A";
  qword_569F0 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:4];
}

void sub_1DDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1DE64;
  v4[3] = &unk_49620;
  v3 = *(a1 + 32);
  v4[4] = a3;
  v4[5] = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

uint64_t sub_1DE64(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [*(a1 + 40) isTrackingBrightnessSlider];
    if ((result & 1) == 0)
    {
      v4 = [*(a1 + 40) specifierForID:@"Keyboard Brightness"];
      v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 136) isBacklightSaturatedOnKeyboard:kKBIDDefault] ^ 1);
      [v4 setObject:v5 forKeyedSubscript:PSEnabledKey];
      [*(a1 + 40) reloadSpecifier:v4];
      v6 = [v4 propertyForKey:PSTableCellKey];
      v7 = *(a1 + 32);

      return [v6 setValue:v7];
    }
  }

  return result;
}

void sub_207FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2088C;
    block[3] = &unk_48F40;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_20894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_20924;
    block[3] = &unk_48F40;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id TIInputModeIsChineseWubi()
{
  result = [TIInputModeGetBaseLanguage() isEqualToString:@"zh"];
  if (result)
  {
    Variant = TIInputModeGetVariant();

    return [Variant isEqualToString:@"Wubixing"];
  }

  return result;
}

NSString *TIGetCurrentWubiStandardName()
{
  v0 = +[TIPreferencesController sharedPreferencesController];
  v1 = [objc_msgSend(v0 valueForPreferenceKey:{TIWubiStandardPreference), "integerValue"}];

  return TIGetWubiStandardName(v1);
}

NSString *TIGetWubiStandardName(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  v2 = *(&off_49670 + a1);
  v3 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v3 localizedStringForKey:v2 value:&stru_49C80 table:@"Preferences_wubi"];
}

id TIUIGetMultilingualIDFromInputMode()
{
  v0 = TIInputModeGetComponentsFromIdentifier();
  v1 = [v0 objectForKey:@"ml"];

  return v1;
}

id TIUIInputModeGetMultilingualSetFromInputModes(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TIUIGetMultilingualIDFromInputMode();
  if ([v3 length])
  {
    v4 = +[NSMutableArray array];
    if (v2)
    {
      v5 = v2;
    }

    else
    {
      v6 = +[UIKeyboardInputModeController sharedInputModeController];
      v5 = [v6 enabledInputModeIdentifiers];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = TIUIGetMultilingualIDFromInputMode();
          if ([v3 isEqualToString:{v13, v15}])
          {
            [v4 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

uint64_t TIUIGetMultlingualSetsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_21974(v3);
  v6 = sub_21974(v4);
  if (![v5 isEqualToSet:v6])
  {
    goto LABEL_14;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if ([*(*(&v22 + 1) + 8 * v11) isEqualToString:{@"vi_VN", v22}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v12 = sub_219D0(v3);
    v13 = sub_219D0(v4);
    v14 = [v12 isEqualToArray:v13];

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_10:
  }

  v15 = [v3 firstObject];
  v16 = TIInputModeGetSWLayout();

  v17 = [v4 firstObject];
  v18 = TIInputModeGetSWLayout();

  if (v16 == v18)
  {

    goto LABEL_16;
  }

  v19 = [v16 isEqualToString:v18];

  if (v19)
  {
LABEL_16:
    v20 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v20 = 0;
LABEL_17:

  return v20;
}

id sub_21974(void *a1)
{
  v1 = sub_219D0(a1);
  v2 = [NSSet setWithArray:v1];

  return v2;
}

id sub_219D0(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = TIInputModeGetLanguageWithRegion();
        [v2 addObject:{v9, v11}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

id TIUIKeyboardInputModeGetIdentifierFromComponents(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetNormalizedIdentifierFromComponents();
  v3 = +[NSMutableArray array];
  v4 = [v1 objectForKey:@"sw"];
  if ([v4 length])
  {
    v5 = [@"sw=" stringByAppendingString:v4];
    [v3 addObject:v5];
  }

  v6 = [v1 objectForKey:@"hw"];
  if ([v6 length])
  {
    v7 = [@"hw=" stringByAppendingString:v6];
    [v3 addObject:v7];
  }

  v8 = [v1 objectForKey:@"ml"];
  if ([v8 length])
  {
    v9 = [@"ml=" stringByAppendingString:v8];
    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = [v3 componentsJoinedByString:@""];;
    v11 = [v2 stringByAppendingFormat:@"@%@", v10];

    v2 = v11;
  }

  return v2;
}

void *TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(void *a1)
{
  v1 = a1;
  v2 = TIGetInputModeProperties();
  v3 = [v2 objectForKey:@"SWLayouts-Multiscript"];
  if (_os_feature_enabled_impl() && [v1 isEqualToString:@"ar"])
  {
    v4 = [v3 arrayByAddingObject:@"Arabic-With-QWERTY-Version2"];

    v3 = v4;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  return v5;
}

id TIUIGetPairedInputModesForInputMode(void *a1)
{
  v1 = qword_56A08;
  v2 = a1;
  if (v1 != -1)
  {
    sub_2CB28();
  }

  v3 = [qword_56A00 objectForKeyedSubscript:v2];

  return v3;
}

void sub_21DF4(id a1)
{
  v1 = qword_56A00;
  qword_56A00 = &off_4DBE8;
}

uint64_t TIUICanAddInputModeToMultilingualSet(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_2200C();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = TIInputModeGetNormalizedIdentifier();
        if ([v5 containsObject:{v12, v16}] && (!v3 || objc_msgSend(v5, "containsObject:", v3) && ((objc_msgSend(&off_4D868, "containsObject:", v3) & 1) != 0 || isH13ANEPresentOnIOS())) && objc_msgSend(v6, "count") < 5)
        {

          IsMultiscriptInput = 1;
          v14 = v6;
          goto LABEL_17;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([v6 count] <= 1)
  {
    if (v3)
    {
      v14 = [v6 arrayByAddingObject:v3];
      if (TIUIMultilingualSetIsMonoscriptInput(v14))
      {
        IsMultiscriptInput = 1;
      }

      else
      {
        IsMultiscriptInput = TIUIMultilingualSetIsMultiscriptInput(v14, 0);
      }

LABEL_17:
    }

    else
    {
      IsMultiscriptInput = 1;
    }
  }

  else
  {
    IsMultiscriptInput = 0;
  }

  return IsMultiscriptInput;
}

id sub_2200C()
{
  if (qword_56A18 != -1)
  {
    sub_2CB3C();
  }

  v1 = qword_56A10;

  return v1;
}

uint64_t TIUIMultilingualSetIsMonoscriptInput(void *a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v17;
    v6 = TIInputModePropertiesSupportsMultilingual;
    v7 = TIInputModePropertiesSupportedMultiscriptInputModes;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        v11 = UIKeyboardInputModeGetNormalizedIdentifier();
        v4 = TIGetInputModeProperties();

        v12 = [v4 objectForKey:{v6, v16}];
        if ([v12 BOOLValue])
        {
          v13 = [v4 objectForKey:v7];

          if (v13)
          {
            v14 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }

        v8 = v8 + 1;
        v9 = v4;
      }

      while (v3 != v8);
      v3 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
    v14 = 1;
LABEL_13:
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

uint64_t TIUIMultilingualSetIsMultiscriptInput(void *a1, _BYTE *a2)
{
  v3 = a1;
  if ([v3 count] == &dword_0 + 2)
  {
    if (_TIUIMultilingualSetIsMultiscriptInputInOrder(v3))
    {
      v4 = 1;
    }

    else
    {
      v5 = [v3 reverseObjectEnumerator];
      v6 = [v5 allObjects];

      v7 = _TIUIMultilingualSetIsMultiscriptInputInOrder(v6);
      v4 = v7;
      if (a2 && v7)
      {
        *a2 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id TIUIGetAddableInputModesForMultilingualSet(void *a1)
{
  v1 = a1;
  if (TIUICanAddInputModeToMultilingualSet(0, v1))
  {
    v2 = v1;
    v3 = [v2 mutableCopy];
    if ([v3 count])
    {
      v4 = 0;
      do
      {
        v5 = [v2 objectAtIndexedSubscript:v4];
        v6 = TIInputModeGetNormalizedIdentifier();
        [v3 replaceObjectAtIndex:v4 withObject:v6];

        ++v4;
      }

      while (v4 < [v3 count]);
    }

    v44 = sub_2278C();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v62;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v62 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v61 + 1) + 8 * i);
          if (![v44 containsObject:v13])
          {
            v18 = v7;
            v17 = &__NSArray0__struct;
            goto LABEL_50;
          }

          sub_2200C();
          v15 = v14 = v10;
          v16 = [v15 containsObject:v13];

          v10 = v16 | v14;
        }

        v9 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v41 = v10;
    v42 = v2;
    v43 = v1;

    v45 = +[NSMutableArray array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v19 = sub_2200C();
    v20 = [v19 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v58;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v58 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v57 + 1) + 8 * j);
          if (([v7 containsObject:v24] & 1) == 0)
          {
            v25 = sub_227F8(v24);
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v26 = v25;
            v27 = [v26 countByEnumeratingWithState:&v53 objects:v66 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v54;
              while (2)
              {
                for (k = 0; k != v28; k = k + 1)
                {
                  if (*v54 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  if ([v7 containsObject:*(*(&v53 + 1) + 8 * k)])
                  {

                    if (([&off_4D868 containsObject:v24] & 1) != 0 || isH13ANEPresentOnIOS())
                    {
                      [v45 addObject:v24];
                    }

                    goto LABEL_35;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v53 objects:v66 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_35:
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v21);
    }

    v1 = v43;
    v17 = v45;
    if ((v41 & 1) == 0)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v31 = sub_22878();
      v32 = [v31 countByEnumeratingWithState:&v49 objects:v65 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v50;
        do
        {
          for (m = 0; m != v33; m = m + 1)
          {
            if (*v50 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v49 + 1) + 8 * m);
            if (([v7 containsObject:v36] & 1) == 0)
            {
              [v45 addObject:v36];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v49 objects:v65 count:16];
        }

        while (v33);
      }
    }

    v37 = +[UIKeyboardInputModeController sharedInputModeController];
    v38 = [v37 enabledInputModeIdentifiers];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_228BC;
    v46[3] = &unk_496B0;
    v47 = v38;
    v48 = v42;
    v18 = v38;
    v39 = [NSPredicate predicateWithBlock:v46];
    [v45 filterUsingPredicate:v39];

LABEL_50:
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  return v17;
}

id sub_2278C()
{
  v0 = sub_22878();
  v1 = sub_2200C();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  return v2;
}

id sub_227F8(void *a1)
{
  v1 = a1;
  if (qword_56A30 != -1)
  {
    sub_2CB50();
  }

  if ([qword_56A20 containsObject:v1])
  {
    v2 = qword_56A28;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_22878()
{
  if (qword_56A40 != -1)
  {
    sub_2CB64();
  }

  v1 = qword_56A38;

  return v1;
}

uint64_t sub_228BC(uint64_t a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = TIUIGetProposedMultilingualSetsForAddingInputMode(a2, *(a1 + 32));
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) objectForKeyedSubscript:{@"current", v12}];
        v9 = [v8 isEqualToArray:*(a1 + 40)];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id TIUIGetProposedMultilingualSetsForAddingInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v107 = sub_2278C();
  if ([v107 containsObject:v3])
  {
    v105 = v3;
    v5 = +[NSMutableOrderedSet orderedSet];
    v112 = +[NSMutableDictionary dictionary];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v95 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v124 objects:v150 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v125;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v125 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v124 + 1) + 8 * i);
          v11 = TIInputModeGetNormalizedIdentifier();
          if ([v107 containsObject:v11])
          {
            v12 = TIUIGetMultilingualIDFromInputMode();
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            else
            {
              v14 = [NSString stringWithFormat:@"%@%@", @"_", v10];
            }

            v15 = v14;

            v16 = [v112 objectForKeyedSubscript:v15];
            if (!v16)
            {
              v16 = +[NSMutableArray array];
              [v112 setObject:v16 forKeyedSubscript:v15];
            }

            [v16 addObject:v10];
            [v5 addObject:v15];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v124 objects:v150 count:16];
      }

      while (v7);
    }

    v100 = +[NSMutableArray array];
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v104 = v5;
    v3 = v105;
    v108 = [v104 countByEnumeratingWithState:&v120 objects:v149 count:16];
    if (v108)
    {
      v106 = *v121;
      v17 = &TUIDictationTitle_ptr;
      do
      {
        for (j = 0; j != v108; j = j + 1)
        {
          if (*v121 != v106)
          {
            objc_enumerationMutation(v104);
          }

          v19 = *(*(&v120 + 1) + 8 * j);
          v20 = [v112 objectForKeyedSubscript:v19];
          if ([v19 hasPrefix:@"_"])
          {
            v21 = v3;
            v22 = v20;
            v23 = sub_2200C();
            v24 = [v23 containsObject:v21];

            v109 = v20;
            v110 = j;
            if (v24)
            {
              if (([&off_4D868 containsObject:v21] & 1) != 0 || isH13ANEPresentOnIOS())
              {
                v25 = sub_227F8(v21);
                v128 = 0u;
                v129 = 0u;
                v130 = 0u;
                v131 = 0u;
                v26 = v22;
                v27 = [v26 countByEnumeratingWithState:&v128 objects:v151 count:16];
                if (v27)
                {
                  v28 = v27;
                  v101 = v22;
                  v29 = v21;
                  v30 = *v129;
                  while (2)
                  {
                    for (k = 0; k != v28; k = k + 1)
                    {
                      if (*v129 != v30)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v32 = *(*(&v128 + 1) + 8 * k);
                      v33 = TIInputModeGetNormalizedIdentifier();
                      v34 = [v25 containsObject:v33];

                      if (v34)
                      {
                        v21 = v29;
                        goto LABEL_61;
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v128 objects:v151 count:16];
                    if (v28)
                    {
                      continue;
                    }

                    break;
                  }

                  v35 = 0;
                  v21 = v29;
LABEL_62:
                  v22 = v101;
                }

                else
                {
                  v35 = 0;
                }

                v3 = v105;
                v20 = v109;
                j = v110;
                goto LABEL_64;
              }

LABEL_57:
              v35 = 0;
            }

            else
            {
              v38 = sub_22878();
              v39 = [v38 containsObject:v21];

              if (!v39)
              {
                goto LABEL_57;
              }

              v130 = 0u;
              v131 = 0u;
              v128 = 0u;
              v129 = 0u;
              v25 = v22;
              v113 = [v25 countByEnumeratingWithState:&v128 objects:v151 count:16];
              if (v113)
              {
                v101 = v22;
                v40 = *v129;
                while (2)
                {
                  for (m = 0; m != v113; m = m + 1)
                  {
                    if (*v129 != v40)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v32 = *(*(&v128 + 1) + 8 * m);
                    v26 = TIInputModeGetNormalizedIdentifier();
                    v42 = sub_22878();
                    if ([v42 containsObject:v26])
                    {
                      [NSLocale baseLanguageFromLanguage:v21];
                      v43 = v40;
                      v44 = v25;
                      v46 = v45 = v21;
                      v47 = [NSLocale baseLanguageFromLanguage:v26];
                      v48 = [v46 isEqualToString:v47];

                      v21 = v45;
                      v25 = v44;
                      v40 = v43;

                      if (!v48)
                      {
                        v17 = &TUIDictationTitle_ptr;
LABEL_61:
                        v35 = v32;
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                    }

                    v49 = sub_2200C();
                    if ([v49 containsObject:v26])
                    {
                      v50 = sub_227F8(v26);
                      v51 = [v50 containsObject:v21];

                      v17 = &TUIDictationTitle_ptr;
                      if (v51 && (([&off_4D868 containsObject:v26] & 1) != 0 || (isH13ANEPresentOnIOS() & 1) != 0))
                      {
                        goto LABEL_61;
                      }
                    }

                    else
                    {

                      v17 = &TUIDictationTitle_ptr;
                    }
                  }

                  v113 = [v25 countByEnumeratingWithState:&v128 objects:v151 count:16];
                  if (v113)
                  {
                    continue;
                  }

                  break;
                }

                v35 = 0;
                v3 = v105;
                v20 = v109;
                j = v110;
                v22 = v101;
              }

              else
              {
                v35 = 0;
              }

LABEL_64:
            }

            if (v35)
            {
              v52 = obj;
              v53 = +[NSMutableArray array];
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              v54 = v52;
              v55 = [v54 countByEnumeratingWithState:&v128 objects:v151 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v129;
                do
                {
                  for (n = 0; n != v56; n = n + 1)
                  {
                    if (*v129 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = *(*(&v128 + 1) + 8 * n);
                    v60 = TIUIGetMultilingualIDFromInputMode();
                    if ([v60 length])
                    {
                      v61 = [v17[398] numberWithInteger:{objc_msgSend(v60, "integerValue")}];
                      [v53 addObject:v61];
                    }
                  }

                  v56 = [v54 countByEnumeratingWithState:&v128 objects:v151 count:16];
                }

                while (v56);
              }

              [v53 sortUsingSelector:"compare:"];
              v62 = [v53 lastObject];
              v63 = [v62 integerValue];

              v64 = [v17[398] numberWithUnsignedInteger:v63 + 1];
              v37 = [v64 stringValue];

              v65 = sub_23718(v35, 0, v37);
              v66 = sub_23718(v21, v65, v37);
              v67 = TIUIGetPairedInputModesForInputMode(v21);
              if (![v67 count])
              {
                v68 = TIInputModeGetNormalizedIdentifier();
                v69 = TIUIGetPairedInputModesForInputMode(v68);

                v67 = v69;
              }

              if ([v67 count])
              {
                v102 = v66;
                v70 = [NSMutableArray arrayWithObject:v66];
                v116 = 0u;
                v117 = 0u;
                v118 = 0u;
                v119 = 0u;
                v114 = v67;
                v71 = v67;
                v72 = [v71 countByEnumeratingWithState:&v116 objects:v148 count:16];
                if (v72)
                {
                  v73 = v72;
                  v74 = *v117;
                  do
                  {
                    for (ii = 0; ii != v73; ii = ii + 1)
                    {
                      if (*v117 != v74)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v76 = sub_23718(*(*(&v116 + 1) + 8 * ii), v65, v37);
                      [v70 addObject:v76];
                    }

                    v73 = [v71 countByEnumeratingWithState:&v116 objects:v148 count:16];
                  }

                  while (v73);
                }

                v146[0] = @"current";
                v145 = v35;
                v77 = [NSArray arrayWithObjects:&v145 count:1];
                v147[0] = v77;
                v146[1] = @"updated";
                v144 = v65;
                v78 = [NSArray arrayWithObjects:&v144 count:1];
                v146[2] = @"added";
                v147[1] = v78;
                v147[2] = v70;
                v79 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:3];
                [v100 addObject:v79];

                v66 = v102;
                v67 = v114;
              }

              else
              {
                v143[0] = v65;
                v143[1] = v66;
                v80 = [NSArray arrayWithObjects:v143 count:2];
                IsMonoscriptInput = TIUIMultilingualSetIsMonoscriptInput(v80);

                if (IsMonoscriptInput)
                {
                  v141[0] = @"current";
                  v140 = v35;
                  v70 = [NSArray arrayWithObjects:&v140 count:1];
                  v142[0] = v70;
                  v141[1] = @"updated";
                  v139 = v65;
                  v82 = [NSArray arrayWithObjects:&v139 count:1];
                  v142[1] = v82;
                  v141[2] = @"added";
                  v138 = v66;
                  v83 = [NSArray arrayWithObjects:&v138 count:1];
                  v142[2] = v83;
                  [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:3];
                  v85 = v84 = v66;
                  [v100 addObject:v85];

                  v66 = v84;
                }

                else
                {
                  v137[0] = v65;
                  v137[1] = v66;
                  v70 = [NSArray arrayWithObjects:v137 count:2];
                  v151[0] = 0;
                  if (TIUIMultilingualSetIsMultiscriptInput(v70, v151))
                  {
                    v99 = [v70 objectAtIndexedSubscript:v151[0]];
                    v103 = [v70 objectAtIndexedSubscript:v151[0] ^ 1];
                    v86 = UIKeyboardInputModeGetNormalizedIdentifier();
                    v98 = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v86);

                    v97 = [v98 firstObject];
                    v96 = UIKeyboardInputModeWithNewSWLayout();
                    v134 = v35;
                    v135[0] = @"current";
                    [NSArray arrayWithObjects:&v134 count:1];
                    v87 = v115 = v67;
                    v136[0] = v87;
                    v135[1] = @"updated";
                    v133 = v96;
                    v88 = [NSArray arrayWithObjects:&v133 count:1];
                    v136[1] = v88;
                    v135[2] = @"added";
                    v132 = v103;
                    [NSArray arrayWithObjects:&v132 count:1];
                    v90 = v89 = v66;
                    v136[2] = v90;
                    v91 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:3];
                    [v100 addObject:v91];

                    v66 = v89;
                    v67 = v115;
                  }
                }
              }

              v3 = v105;
              v20 = v109;
              j = v110;
LABEL_91:

              goto LABEL_92;
            }

            goto LABEL_92;
          }

          if (!TIUICanAddInputModeToMultilingualSet(v3, v20))
          {
            goto LABEL_93;
          }

          v36 = [v20 firstObject];
          v35 = sub_23718(v3, v36, v19);

          if (([obj containsObject:v35] & 1) == 0)
          {
            v37 = TIUIGetProposedMultilingualSetByAddingInputMode(v3, v20);
            if (v37)
            {
              [v100 addObject:v37];
            }

            goto LABEL_91;
          }

LABEL_92:

LABEL_93:
        }

        v108 = [v104 countByEnumeratingWithState:&v120 objects:v149 count:16];
      }

      while (v108);
    }

    v92 = v100;
    v93 = [v100 indexesOfObjectsPassingTest:&stru_496F0];
    if ([v93 count])
    {
      [v100 removeObjectsAtIndexes:v93];
    }

    v4 = v95;
  }

  else
  {
    v92 = &__NSArray0__struct;
  }

  return v92;
}

id sub_23718(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = UIKeyboardInputModeGetComponentsFromIdentifier();
  v9 = [v8 mutableCopy];

  if (v6)
  {
    v10 = UIKeyboardInputModeGetComponentsFromIdentifier();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 objectForKey:@"sw"];
  if (![v11 length])
  {
    v12 = [TIKeyboardListController softwareLayoutsForBaseInputMode:v5];
    v13 = [v10 objectForKeyedSubscript:@"sw"];
    if ([v13 length] && objc_msgSend(v12, "containsObject:", v13))
    {
      v14 = v13;
    }

    else
    {
      v14 = [v12 firstObject];
    }

    v15 = v14;

    [v9 setObject:v15 forKeyedSubscript:@"sw"];
    v11 = v15;
  }

  v16 = [v9 objectForKey:@"hw"];
  if (![v16 length])
  {
    v17 = UIKeyboardGetSupportedHardwareKeyboardsForInputMode();
    v18 = [v10 objectForKeyedSubscript:@"hw"];
    if ([v18 length] && objc_msgSend(v17, "containsObject:", v18))
    {
      v19 = v18;
    }

    else
    {
      v19 = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
    }

    v20 = v19;

    [v9 setObject:v20 forKeyedSubscript:@"hw"];
    v16 = v20;
  }

  [v9 setObject:v7 forKeyedSubscript:@"ml"];
  v21 = TIUIKeyboardInputModeGetIdentifierFromComponents(v9);

  return v21;
}

id TIUIGetProposedMultilingualSetByAddingInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 firstObject];
  v6 = TIUIGetMultilingualIDFromInputMode();

  v7 = [v4 firstObject];
  v8 = sub_23718(v3, v7, v6);

  v9 = TIUIGetPairedInputModesForInputMode(v3);
  if ([v9 count])
  {
    v32 = v8;
    v34 = v3;
    v10 = [NSMutableArray arrayWithObject:v8];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [v4 firstObject];
          v18 = sub_23718(v16, v17, v6);

          [v10 addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v13);
    }

    v49[0] = @"current";
    v49[1] = @"added";
    v50[0] = v4;
    v50[1] = v10;
    v19 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
    v8 = v32;
    v3 = v34;
  }

  else
  {
    v48 = v8;
    v20 = [NSArray arrayWithObjects:&v48 count:1];
    v21 = [v20 arrayByAddingObjectsFromArray:v4];
    IsMonoscriptInput = TIUIMultilingualSetIsMonoscriptInput(v21);

    if (IsMonoscriptInput)
    {
      v46[1] = @"added";
      v47[0] = v4;
      v45 = v8;
      v46[0] = @"current";
      v10 = [NSArray arrayWithObjects:&v45 count:1];
      v47[1] = v10;
      v19 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
    }

    else
    {
      v10 = [v4 arrayByAddingObject:v8];
      v36 = 0;
      if (TIUIMultilingualSetIsMultiscriptInput(v10, &v36))
      {
        v23 = [v10 objectAtIndexedSubscript:v36];
        v24 = [v10 objectAtIndexedSubscript:v36 ^ 1];
        v35 = v23;
        v25 = UIKeyboardInputModeGetNormalizedIdentifier();
        v33 = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v25);

        v31 = [v33 firstObject];
        v30 = UIKeyboardInputModeWithNewSWLayout();
        v44[0] = v4;
        v43[0] = @"current";
        v43[1] = @"updated";
        v42 = v30;
        v26 = [NSArray arrayWithObjects:&v42 count:1];
        v44[1] = v26;
        v43[2] = @"added";
        v41 = v24;
        v27 = [NSArray arrayWithObjects:&v41 count:1];
        v44[2] = v27;
        v19 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  if (sub_23DAC(v19))
  {
    v28 = v19;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

uint64_t sub_23DAC(void *a1)
{
  v1 = TIUIProposedInputModeGetMultilingualSet(a1);
  v2 = [v1 firstObject];
  v3 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 enabledInputModeIdentifiers];

  [UIKeyboardInputMode multilingualSetsFromInputModeIdentifiers:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) identifier];
        v12 = TIInputModeGetMultilingualSetFromInputModes();

        LOBYTE(v11) = TIUIGetMultlingualSetsAreEqual(v12, v3);
        if (v11)
        {
          v13 = 0;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

id TIUIProposedInputModeGetMultilingualSet(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"current"];
  v3 = TIUIGetInputModesByAddingProposedInputMode(v1, v2);

  v4 = [v3 firstObject];
  v5 = TIUIInputModeGetMultilingualSetFromInputModes(v4, v3);

  return v5;
}

id TIUIGetInputModesByAddingProposedInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mutableCopy];
  v5 = [v3 objectForKeyedSubscript:@"current"];
  v6 = [v3 objectForKeyedSubscript:@"updated"];
  v7 = [v3 objectForKeyedSubscript:@"added"];
  if ([v6 count] && objc_msgSend(v4, "count"))
  {
    v8 = 0;
    do
    {
      v9 = [v4 objectAtIndexedSubscript:v8];
      v10 = [v5 indexOfObject:v9];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v10;
        if (v10 < [v6 count])
        {
          v12 = [v6 objectAtIndexedSubscript:v11];
          [v4 replaceObjectAtIndex:v8 withObject:v12];
        }
      }

      ++v8;
    }

    while (v8 < [v4 count]);
  }

  if ([v7 count])
  {
    v13 = [v6 lastObject];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v5 lastObject];
    }

    v16 = v15;

    v17 = [v4 indexOfObject:v16];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v17;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = v7;
      v19 = v7;
      v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [v4 insertObject:*(*(&v26 + 1) + 8 * i) atIndex:++v18];
          }

          v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v21);
      }

      v7 = v25;
    }
  }

  return v4;
}

id _TIUIMultilingualSetIsMultiscriptInputInOrder(void *a1)
{
  v1 = a1;
  if ([v1 count] == &dword_0 + 2 && (+[TIPreferencesController sharedPreferencesController](TIPreferencesController, "sharedPreferencesController"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "valueForPreferenceKey:", @"KeyboardMultiscriptEnabled"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, v2, v4))
  {
    v5 = [v1 firstObject];
    v6 = UIKeyboardInputModeGetNormalizedIdentifier();

    v7 = TIGetInputModeProperties();
    v8 = TIInputModePropertiesSupportsMultilingual;
    v9 = [v7 objectForKey:TIInputModePropertiesSupportsMultilingual];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = [v1 objectAtIndexedSubscript:1];
      v12 = UIKeyboardInputModeGetNormalizedIdentifier();

      v13 = TIGetInputModeProperties();
      v14 = [v13 objectForKey:v8];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v16 = [v7 objectForKey:TIInputModePropertiesSupportedMultiscriptInputModes];
        v17 = [v16 allKeys];

        v18 = [v17 containsObject:v12];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t TIUIGetCountOfUserVisibleInputModes()
{
  v0 = +[UIKeyboardInputModeController sharedInputModeController];
  v1 = [v0 enabledInputModeIdentifiers];
  v2 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = TIUIGetMultilingualIDFromInputMode();
        if ([v10 length])
        {
          if ([v2 containsObject:v10])
          {
            goto LABEL_10;
          }

          [v2 addObject:v10];
        }

        ++v6;
LABEL_10:
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

id TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(void *a1, int a2)
{
  v3 = a1;
  if ([v3 count] == &dword_0 + 1)
  {
    v4 = [v3 firstObject];
    v5 = [TIKeyboardListController keyboardDisplayNameForIdentifier:v4];
  }

  else
  {
    v38 = a2;
    v39 = v3;
    v6 = +[NSMutableDictionary dictionary];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 enabledInputModeIdentifiers];

    v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          v14 = TIInputModeGetLanguage();
          v15 = TIInputModeGetNormalizedIdentifier();
          v16 = [v6 objectForKeyedSubscript:v14];
          if (!v16)
          {
            v16 = +[NSMutableSet set];
            [v6 setObject:v16 forKeyedSubscript:v14];
          }

          [v16 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v10);
    }

    v17 = [v39 firstObject];
    v18 = +[NSLocale preferredLanguages];
    v19 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

    v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v40 + 1) + 8 * j);
          if ((TIInputModeIsMultilingualOnly() & 1) == 0)
          {
            v27 = TIInputModeGetLanguage();
            v28 = [v6 objectForKeyedSubscript:v27];
            v29 = [v28 count];

            if (v29 >= 2)
            {
              v30 = TIInputModeGetNormalizedIdentifier();

              v27 = v30;
            }

            v31 = [TIKeyboardListController keyboardDisplayNameForIdentifier:v27];
            [v20 addObject:v31];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v23);
    }

    if (v38)
    {
      v32 = [v20 count];
      v33 = [NSBundle bundleForClass:objc_opt_class()];
      v34 = v33;
      if (v32 == &dword_0 + 2)
      {
        v35 = @"LIST_SEPARATOR_2";
      }

      else
      {
        v35 = @"LIST_SEPARATOR";
      }

      v36 = [v33 localizedStringForKey:v35 value:&stru_49C80 table:@"Keyboard"];

      v5 = [v20 componentsJoinedByString:v36];
    }

    else
    {
      v5 = [NSListFormatter localizedStringByJoiningStrings:v20];
    }

    v3 = v39;
  }

  return v5;
}

uint64_t TIUIMultilingualSetGetLanguageCount(void *a1)
{
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v4 += TIInputModeIsMultilingualOnly() ^ 1;
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id TIUIMultilingualSetContainsTransliterationInputModes(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        v6 = TIInputModeGetNormalizedIdentifier();
        IsTransliteration = TIInputModeIsTransliteration();

        if (IsTransliteration)
        {
          v2 = &dword_0 + 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_24C20(id a1)
{
  v1 = qword_56A10;
  qword_56A10 = &off_4D850;
}

void sub_24C38(id a1)
{
  v1 = qword_56A20;
  qword_56A20 = &off_4D880;

  v2 = qword_56A28;
  qword_56A28 = &off_4D898;
}

void sub_24C88(id a1)
{
  v16 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = +[TIInputModeController sharedInputModeController];
  v2 = [v1 supportedInputModeIdentifiers];

  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = TIInputModePropertiesSupportsMultilingual;
    v7 = TIInputModePropertiesMultilingualOnly;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = TIGetInputModeProperties();
        v11 = [v10 objectForKeyedSubscript:v6];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v13 = [v10 objectForKeyedSubscript:v7];
          v14 = [v13 BOOLValue];

          if ((v14 & 1) == 0)
          {
            [v16 addObject:v9];
          }
        }

        v8 = v8 + 1;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v15 = qword_56A38;
  qword_56A38 = v16;
}

uint64_t KeyboardSettingsLog()
{
  if (qword_56A50 != -1)
  {
    sub_2CB78();
  }

  return qword_56A48;
}

uint64_t _TUIKitUserDefaults()
{
  if (qword_56A60 != -1)
  {
    sub_2CB8C();
  }

  return qword_56A58;
}

void sub_262D8(id a1)
{
  qword_56A58 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.TextInputUI"];
  if (os_variant_has_internal_diagnostics())
  {
    sub_2CBA0();
  }
}

unint64_t __TUILogGetCategoryImpl(_BYTE *__s2)
{
  v2 = *__s2;
  if (*__s2)
  {
    v3 = 0;
    v4 = 0;
    LOBYTE(v5) = *__s2;
    do
    {
      v4 = 257 * v4 + v5;
      v5 = __s2[++v3];
    }

    while (v5);
    v6 = 257 * v4;
  }

  else
  {
    LODWORD(v3) = 0;
    v6 = 0;
  }

  v7 = v6 + v3;
  v8 = qword_56A68;
  v9 = qword_56A68[v7 & 0x1F];
  if (v9)
  {
    v10 = 0;
    v11 = v7;
    do
    {
      if (*v9 == v7)
      {
        if (!memcmp(*(v9 + 264), __s2, v3))
        {
          return v9 - 16;
        }

        ++v10;
        if (v2)
        {
          v3 = 0;
          LOBYTE(v12) = v2;
          v13 = v10;
          do
          {
            v13 = 257 * v13 + v12;
            v12 = __s2[++v3];
          }

          while (v12);
        }

        else
        {
          LODWORD(v3) = 0;
          v13 = v10;
        }

        v7 = 257 * v13 + v3;
        v11 = v7;
      }

      else
      {
        v11 >>= 5;
      }

      v9 = *(v9 + 8 * (v11 & 0x1F) + 8);
    }

    while (v9);
  }

  os_unfair_lock_lock(&unk_56B68);
  v14 = *__s2;
  if (*__s2)
  {
    v15 = 0;
    v16 = 0;
    LOBYTE(v17) = *__s2;
    do
    {
      v16 = 257 * v16 + v17;
      v17 = __s2[++v15];
    }

    while (v17);
    v18 = 257 * v16;
  }

  else
  {
    v15 = 0;
    v18 = 0;
  }

  v19 = (v18 + v15);
  v20 = v19 | (v15 << 32);
  v21 = v19 & 0x1F;
  v22 = qword_56A68[v21];
  if (v22)
  {
    v23 = 0;
    LODWORD(v24) = v19;
    v8 = qword_56A68;
    do
    {
      if (*v22 == v24)
      {
        if (!memcmp(*(v22 + 264), __s2, v15))
        {
          v27 = &v8[8 * v21];
          goto LABEL_46;
        }

        ++v23;
        if (v14)
        {
          v15 = 0;
          LOBYTE(v25) = v14;
          v26 = v23;
          do
          {
            v26 = 257 * v26 + v25;
            v25 = __s2[++v15];
          }

          while (v25);
        }

        else
        {
          v15 = 0;
          v26 = v23;
        }

        v24 = (257 * v26 + v15);
        v20 = v24 | (v15 << 32);
        LODWORD(v19) = 257 * v26 + v15;
      }

      else
      {
        LODWORD(v19) = v19 >> 5;
      }

      v8 = (v22 + 8);
      v21 = v19 & 0x1F;
      v22 = *(v22 + 8 + 8 * v21);
    }

    while (v22);
  }

  v27 = &v8[8 * v21];
  v28 = strlen(__s2);
  v29 = v28;
  if (v28 < 0x2801)
  {
    v31 = (qword_567D0 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v31 < qword_567D0 || v31 > 10240 - v28)
    {
      v33 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
      v31 = 0;
      qword_56BB0 = v33;
    }

    else
    {
      v33 = qword_56BB0;
    }

    qword_567D0 = v31 + v29;
    v30 = &v33[v31];
  }

  else
  {
    v30 = malloc_type_malloc(v28, 0x45EA59ACuLL);
  }

  memcpy(v30, __s2, v29);
  v34 = sub_26644(__s2);
  *v34 = v20;
  *(v34 + 264) = v30;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 72) = 0u;
  *(v34 + 88) = 0u;
  *(v34 + 104) = 0u;
  *(v34 + 120) = 0u;
  *(v34 + 136) = 0u;
  *(v34 + 152) = 0u;
  *(v34 + 168) = 0u;
  *(v34 + 184) = 0u;
  *(v34 + 200) = 0u;
  *(v34 + 216) = 0u;
  *(v34 + 232) = 0u;
  *(v34 + 248) = 0u;
  atomic_store(v34, v27);
LABEL_46:
  os_unfair_lock_unlock(&unk_56B68);
  v9 = *v27;
  return v9 - 16;
}

uint64_t sub_26644(const char *a1)
{
  v2 = (qword_567D0 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 < qword_567D0 || v2 > 0x26E0)
  {
    v4 = malloc_type_malloc(0x2800uLL, 0x100004077774924uLL);
    v2 = 0;
    qword_56BB0 = v4;
  }

  else
  {
    v4 = qword_56BB0;
  }

  qword_567D0 = v2 + 288;
  v5 = v4 + v2;
  *v5 = 0;
  *(v5 + 4) = 0;
  *(v5 + 8) = 0;
  v6 = [NSString stringWithUTF8String:a1];
  if (qword_56A60 != -1)
  {
    sub_2CB8C();
  }

  v7 = qword_56A58;
  v8 = [@"Log" stringByAppendingString:v6];
  sub_26864(v5, 1, [v7 objectForKey:v8]);
  v9 = malloc_type_malloc(0x28uLL, 0x10A0040D8596764uLL);
  *v9 = v5;
  v9[2] = 1;
  *(v9 + 2) = v7;
  *(v9 + 3) = v8;
  *(v9 + 4) = __preferences;
  __preferences = v9;
  if (qword_56BB8[0] != -1)
  {
    sub_2CBB8();
  }

  *(v5 + 8) = os_log_create("com.apple.TextInputUI", a1);
  return v5 + 16;
}

uint64_t __TUILogGetCategoryCachedImpl(_BYTE *__s2, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = __TUILogGetCategoryImpl(__s2);
    atomic_store(result, a2);
  }

  return result;
}

void __TUILogSyncCategories()
{
  os_unfair_lock_lock(&unk_56B68);
  for (i = __preferences; i; i = *(i + 32))
  {
    sub_26864(*i, *(i + 8), [*(i + 16) objectForKey:*(i + 24)]);
  }

  os_unfair_lock_unlock(&unk_56B68);
}

uint64_t sub_26864(uint64_t a1, int a2, void *a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), result = objc_opt_isKindOfClass(), (result)) && (result = [a3 BOOLValue], result))
  {
    v7 = *(a1 + 4) | a2;
  }

  else
  {
    v7 = *(a1 + 4) & ~a2;
  }

  atomic_store((v7 & 0xF) != 0, a1);
  *(a1 + 4) = v7;
  return result;
}

uint64_t TUISmartReplyLog()
{
  if (qword_56B78 != -1)
  {
    sub_2CBCC();
  }

  return qword_56B70;
}

uint64_t TUISmartActionLog()
{
  if (qword_56B88 != -1)
  {
    sub_2CBE0();
  }

  return qword_56B80;
}

uint64_t TUICandidateGenerationLog()
{
  if (qword_56B98 != -1)
  {
    sub_2CBF4();
  }

  return qword_56B90;
}

uint64_t TUIBackendControllerLog()
{
  if (qword_56BA8 != -1)
  {
    sub_2CC08();
  }

  return qword_56BA0;
}

void sub_26A9C(id a1)
{
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_async(global_queue, &stru_49850);
}

void sub_26AD4(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, j____TUILogSyncCategories, @"com.apple.TextInputUI.LoggingPreferences", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_26BC4(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_26F9C;
  block[3] = &unk_491D8;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_26D64(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_26DE0;
  block[3] = &unk_49878;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  block[5] = a2;
  block[6] = v3;
  block[4] = v2;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_26DE0(uint64_t a1)
{
  [*(a1 + 32) notifyObserversOfChange];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id sub_27BA8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 target];
  if (result)
  {
    [a2 setTarget:*(a1 + 32)];
    result = [*(a1 + 32) setNetworkAccessSpecifier:a2];
    *a4 = 1;
  }

  return result;
}

int64_t sub_27EBC(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = [(PSSpecifier *)a2 name];
  v5 = [(PSSpecifier *)a3 name];

  return [v4 localizedStandardCompare:v5];
}

id sub_284A4(uint64_t a1, id a2)
{
  result = [*(a1 + 32) specifierForWarning];
  if (result)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:*(a1 + 32) object:UIApplicationWillResignActiveNotification, 0];
    *(*(a1 + 32) + 136) = [*(a1 + 32) networkAccessAlertActionDefault] == a2;
    [*(a1 + 32) setPrivacyAccess:+[NSNumber numberWithBool:](NSNumber forSpecifier:{"numberWithBool:"), objc_msgSend(*(a1 + 32), "specifierForWarning")}];
    [objc_msgSend(*(a1 + 32) "networkAccessAlertController")];
    [*(a1 + 32) setSpecifierForWarning:0];
    [*(a1 + 32) setNetworkAccessAlertController:0];
    [*(a1 + 32) setNetworkAccessAlertActionCancel:0];
    v5 = *(a1 + 32);

    return [v5 setNetworkAccessAlertActionDefault:0];
  }

  return result;
}

void sub_29538(uint64_t a1)
{
  v2 = [*(a1 + 32) generateSpecifiers];
  if (([objc_loadWeak((a1 + 40)) isCancelled] & 1) == 0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_295D8;
    v3[3] = &unk_49620;
    v3[4] = *(a1 + 32);
    v3[5] = v2;
    dispatch_sync(&_dispatch_main_q, v3);
  }
}

id sub_29970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

id sub_2A27C(uint64_t a1, void *a2, void *a3)
{
  v5 = PSIDKey;
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) indexOfObject:{objc_msgSend(a2, "propertyForKey:", PSIDKey)}]);
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) indexOfObject:{objc_msgSend(a3, "propertyForKey:", v5)}]);

  return [(NSNumber *)v6 compare:v7];
}

id sub_2A33C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak setAboutPrivacyController:0];
}

id sub_2A43C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  if ([Weak aboutPrivacyController])
  {
    v3 = *(a1 + 32);
    v4 = [Weak aboutPrivacyController];

    return [v4 setSpecifier:v3];
  }

  else
  {
    v6 = [[TIAboutKeyboardPrivacyController alloc] initWithGroupSpecifier:*(a1 + 32) asHeader:1 inListController:Weak];

    return [Weak setAboutPrivacyController:v6];
  }
}

unint64_t sub_2AC00()
{
  result = qword_56870;
  if (!qword_56870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56870);
  }

  return result;
}

uint64_t sub_2AC70(uint64_t a1)
{
  v2 = *(*(sub_2CCAC() - 8) + 64);
  __chkstk_darwin();
  sub_2C15C(0, &unk_568E0, off_48720);
  v3 = [objc_allocWithZone(PSSpecifier) init];
  [v3 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_2CC8C();
  return sub_2CC6C();
}

uint64_t sub_2AD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_2CCAC();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_2CCCC();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v11 = sub_2CC5C();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = *(*(sub_2BB24(&qword_56890, &qword_43CF8) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v15 = sub_2CC4C();
  v4[21] = v15;
  v16 = *(v15 - 8);
  v4[22] = v16;
  v17 = *(v16 + 64) + 15;
  v4[23] = swift_task_alloc();
  sub_2CD6C();
  v4[24] = sub_2CD5C();
  v19 = sub_2CD4C();

  return _swift_task_switch(sub_2AFAC, v19, v18);
}

void sub_2AFAC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[7];

  sub_2CCFC();
  sub_2CC1C();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[14];
    v13 = v0[6];
    v12 = v0[7];
    sub_2C000(v0[20]);
    sub_2CCEC();
    sub_2CD0C();
    (*(v11 + 8))(v9, v10);
    goto LABEL_58;
  }

  v14 = v0[15];
  v15 = v0[7];
  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  sub_2CCEC();
  v0[2] = sub_2CC2C();
  v0[3] = v16;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_2C068();
  v17 = sub_2CD7C();

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = -v18;
    v21 = v17 + 40;
    v22 = &_swiftEmptyArrayStorage;
    do
    {
      v23 = (v21 + 16 * v19++);
      while (1)
      {
        if ((v19 - 1) >= *(v17 + 16))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          return;
        }

        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = HIBYTE(*v23) & 0xF;
        if ((*v23 & 0x2000000000000000) == 0)
        {
          v26 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          if (v24 != 0x6472616F6279654BLL || v25 != 0xE800000000000000)
          {
            v28 = *(v23 - 1);
            v29 = *v23;
            if ((sub_2CD9C() & 1) == 0)
            {
              break;
            }
          }
        }

        ++v19;
        v23 += 2;
        if (v20 + v19 == 1)
        {
          goto LABEL_23;
        }
      }

      v110 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2BDC8(0, *(v22 + 2) + 1, 1);
      }

      v21 = v17 + 40;
      v31 = *(v22 + 2);
      v30 = *(v22 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v34 = v31 + 1;
        v109 = v31;
        sub_2BDC8((v30 > 1), v31 + 1, 1);
        v32 = v34;
        v31 = v109;
        v21 = v17 + 40;
        v22 = v110;
      }

      *(v22 + 2) = v32;
      v33 = &v22[16 * v31];
      *(v33 + 4) = v24;
      *(v33 + 5) = v25;
    }

    while (v20 + v19);
  }

  else
  {
    v22 = &_swiftEmptyArrayStorage;
  }

LABEL_23:

  v35 = *(v22 + 2);
  if (!v35)
  {
    v91 = v0[23];
    sub_2CC3C();
    if (v92)
    {
      v93 = v0[9];

      v94 = sub_2CD2C();

      [v93 setSpecifierIdentifierToScrollAndHighlight:v94];

      goto LABEL_57;
    }

    v35 = *(v22 + 2);
    if (!v35)
    {

      goto LABEL_57;
    }
  }

  v36 = (v0[11] + 8);
  while (1)
  {
    v42 = *(v22 + 4);
    v43 = *(v22 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v35 - 1) > *(v22 + 3) >> 1)
    {
      v22 = sub_2BEF4(isUniquelyReferenced_nonNull_native, v35, 1, v22);
    }

    sub_2C0BC((v22 + 32));
    v45 = *(v22 + 2);
    memmove(v22 + 32, v22 + 48, 16 * v45 - 16);
    *(v22 + 2) = v45 - 1;

    v46._rawValue = &off_49AE0;
    v112._countAndFlagsBits = v42;
    v112._object = v43;
    v47 = sub_2CD8C(v46, v112);

    if (v47 <= 2)
    {
      if (v47)
      {
        if (v47 == 1)
        {
          IsHardwareKeyboardAttached = GSEventIsHardwareKeyboardAttached();

          if (!IsHardwareKeyboardAttached)
          {
            goto LABEL_56;
          }

          v80 = v0[15];
          v81 = v0[12];
          v82 = v0[10];
          v40 = &unk_568C8;
          v41 = off_48740;
        }

        else
        {
          if (v47 != 2)
          {
            goto LABEL_55;
          }

          v48 = v0[15];
          v49 = v0[12];
          v50 = v0[10];

          v40 = &unk_568C0;
          v41 = off_48728;
        }
      }

      else
      {
        v37 = v0[15];
        v38 = v0[12];
        v39 = v0[10];

        v40 = &unk_568D0;
        v41 = &off_48748;
      }

      goto LABEL_26;
    }

    if (v47 != 3)
    {
      break;
    }

    v71 = [objc_opt_self() sharedInputModeController];
    if (!v71)
    {
      goto LABEL_65;
    }

    v72 = v71;
    v73 = [v71 activeDictationSupportedInputModeIdentifiers];

    if (!v73)
    {
      goto LABEL_64;
    }

    v74 = sub_2CD3C();

    v75 = *(v74 + 16);

    if (v75 <= 1)
    {
      goto LABEL_56;
    }

    v76 = v0[15];
    v77 = v0[12];
    v78 = v0[10];
    v40 = &unk_568B8;
    v41 = off_48730;
LABEL_26:
    sub_2C15C(0, v40, v41);
    sub_2CC9C();
    sub_2C110(&qword_568A8, &type metadata accessor for PreferencesControllerRecipe);
    sub_2CCBC();
LABEL_27:
    (*v36)(v0[12], v0[10]);
    v35 = *(v22 + 2);
    if (!v35)
    {
      goto LABEL_56;
    }
  }

  if (v47 == 4)
  {
    if (!GSEventIsHardwareKeyboardAttached())
    {
      goto LABEL_55;
    }

    v83 = v0[8];
    v84 = sub_2CD2C();

    v85 = [v83 specifierForID:v84];

    if (!v85)
    {
      goto LABEL_56;
    }

    v86 = v0[15];
    v87 = v0[12];
    v88 = v0[10];
    v89 = v0[8];
    v90 = sub_2CD2C();
    [v85 setProperty:v89 forKey:v90];

    sub_2C15C(0, &qword_568B0, off_48738);
    v70 = v85;
    sub_2CC8C();
    sub_2C110(&qword_568A8, &type metadata accessor for PreferencesControllerRecipe);
    goto LABEL_52;
  }

  if (v47 == 5)
  {
    v51 = [objc_opt_self() currentDevice];
    v52 = [v51 userInterfaceIdiom];

    if (v52 != &dword_0 + 1)
    {
      v53 = [objc_opt_self() mainScreen];
      [v53 _referenceBounds];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v113.origin.x = v55;
      v113.origin.y = v57;
      v113.size.width = v59;
      v113.size.height = v61;
      if (CGRectGetWidth(v113) > 320.0)
      {
        v62 = v0[8];
        v63 = sub_2CD2C();

        v64 = [v62 specifierForID:v63];

        if (!v64)
        {
          goto LABEL_56;
        }

        v65 = v0[15];
        v66 = v0[12];
        v67 = v0[10];
        v68 = v0[8];
        v69 = sub_2CD2C();
        [v64 setProperty:v68 forKey:v69];

        sub_2C15C(0, &qword_568A0, PSListItemsController_ptr);
        v70 = v64;
        sub_2CC8C();
        sub_2C110(&qword_568A8, &type metadata accessor for PreferencesControllerRecipe);
LABEL_52:
        sub_2CCBC();

        goto LABEL_27;
      }
    }
  }

LABEL_55:

LABEL_56:

LABEL_57:
  v96 = v0[22];
  v95 = v0[23];
  v97 = v0[21];
  v99 = v0[14];
  v98 = v0[15];
  v100 = v0[13];
  v101 = v0[6];
  sub_2CD0C();
  (*(v99 + 8))(v98, v100);
  (*(v96 + 8))(v95, v97);
LABEL_58:
  v102 = v0[23];
  v103 = v0[19];
  v104 = v0[20];
  v106 = v0[15];
  v105 = v0[16];
  v107 = v0[12];

  v108 = v0[1];

  v108();
}

uint64_t sub_2B8F8()
{
  v1 = sub_2BB24(&qword_56878, &qword_43CE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_2CC7C();
  sub_2C110(&qword_56880, &type metadata accessor for PreferencesControllerView);
  v9 = v6;
  v10 = v7;
  sub_2CD1C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  sub_2BD1C();
  v12 = v9;
  v13 = v10;
  sub_2CCDC();
  return (*(v2 + 8))(v5, v1);
}

id sub_2BAC8@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(KeyboardController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_2BB24(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2BB74(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2BC28;

  return sub_2AD5C(a1, a2, v7, v6);
}

uint64_t sub_2BC28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2BD1C()
{
  result = qword_56888;
  if (!qword_56888)
  {
    sub_2BD80(&qword_56878, &qword_43CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56888);
  }

  return result;
}

uint64_t sub_2BD80(uint64_t *a1, uint64_t *a2)
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

char *sub_2BDC8(char *a1, int64_t a2, char a3)
{
  result = sub_2BDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2BDE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2BB24(&qword_568D8, &qword_43D00);
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

char *sub_2BEF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2BB24(&qword_568D8, &qword_43D00);
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

uint64_t sub_2C000(uint64_t a1)
{
  v2 = sub_2BB24(&qword_56890, &qword_43CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2C068()
{
  result = qword_56898;
  if (!qword_56898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56898);
  }

  return result;
}

uint64_t sub_2C110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2C15C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_2C1A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2C1B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2C1F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2C2E8(char a1, NSObject *a2)
{
  *buf = 138412290;
  v4 = [NSString stringWithFormat:@"%s Feedback %@: RC_SEED_BUILD: 0 enabled: %d", "[KeyboardController feedbackFeatureEnabled]", @"KeyboardAutocorrection", a1 & 1];
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void sub_2C4B0(uint8_t *a1, _BYTE *a2, uint8_t *a3, _BYTE *a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    v9 = __TUIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *a1 = 0;
      *a2 = 0;
      _os_log_fault_impl(&dword_0, v9, OS_LOG_TYPE_FAULT, "Supported multiscript layouts must be subset of all supported layouts. If that changes, address logic below accordingly.", a1, 2u);
    }
  }

  else
  {
    v8 = *(__TUILogGetCategoryCachedImpl("Assert", &qword_56990) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *a3 = 0;
      *a4 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Supported multiscript layouts must be subset of all supported layouts. If that changes, address logic below accordingly.", a3, 2u);
    }
  }
}

id sub_2C58C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardListController.m" lineNumber:278 description:@"Row moved from invalid section."];
}

id sub_2C5E8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardListController.m" lineNumber:279 description:@"Row moved to an invalid section."];
}

void sub_2C728()
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __TUIFaultDebugAssertLog();
    if (sub_1B75C(v7))
    {
      sub_1B700(&dword_0, v8, v9, "Supported multiscript layouts must be subset of all supported layouts. If that changes, adjust logic below accordingly.", v10, v11, v12, v13, 0);
    }
  }

  else
  {
    CategoryCachedImpl = __TUILogGetCategoryCachedImpl("Assert", &qword_569C0);
    if (sub_1B740(CategoryCachedImpl))
    {
      sub_1B720(&dword_0, v1, v2, "Supported multiscript layouts must be subset of all supported layouts. If that changes, adjust logic below accordingly.", v3, v4, v5, v6, v14, v15, 0);
    }
  }
}

void sub_2C7B8(uint64_t a1, void *a2)
{
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __TUIFaultDebugAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_0, v5, OS_LOG_TYPE_FAULT, "We should only set up a layout detail view if we have content for >1 section.", v6, 2u);
    }
  }

  else
  {
    v4 = *(__TUILogGetCategoryCachedImpl("Assert", &qword_569C8) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "We should only set up a layout detail view if we have content for >1 section.", buf, 2u);
    }
  }

  *a2 = a1;
}

void sub_2C890()
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __TUIFaultDebugAssertLog();
    if (sub_1B75C(v7))
    {
      sub_1B700(&dword_0, v8, v9, "Multiscript set should not have paired IMs.", v10, v11, v12, v13, 0);
    }
  }

  else
  {
    CategoryCachedImpl = __TUILogGetCategoryCachedImpl("Assert", &qword_569D0);
    if (sub_1B740(CategoryCachedImpl))
    {
      sub_1B720(&dword_0, v1, v2, "Multiscript set should not have paired IMs.", v3, v4, v5, v6, v14, v15, 0);
    }
  }
}

void sub_2C920()
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __TUIFaultDebugAssertLog();
    if (sub_1B75C(v7))
    {
      sub_1B700(&dword_0, v8, v9, "Removing an input mode from a multiscript pair should not result in a multiscript layout.", v10, v11, v12, v13, 0);
    }
  }

  else
  {
    CategoryCachedImpl = __TUILogGetCategoryCachedImpl("Assert", &qword_569D8);
    if (sub_1B740(CategoryCachedImpl))
    {
      sub_1B720(&dword_0, v1, v2, "Removing an input mode from a multiscript pair should not result in a multiscript layout.", v3, v4, v5, v6, v14, v15, 0);
    }
  }
}

void sub_2C9B0()
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __TUIFaultDebugAssertLog();
    if (sub_1B75C(v7))
    {
      sub_1B700(&dword_0, v8, v9, "An existing multiscript set should not be in the wrong order.", v10, v11, v12, v13, 0);
    }
  }

  else
  {
    CategoryCachedImpl = __TUILogGetCategoryCachedImpl("Assert", &qword_569E0);
    if (sub_1B740(CategoryCachedImpl))
    {
      sub_1B720(&dword_0, v1, v2, "An existing multiscript set should not be in the wrong order.", v3, v4, v5, v6, v14, v15, 0);
    }
  }
}

void sub_2CA40(uint8_t *a1, _BYTE *a2, NSObject *a3, _BYTE *a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    v9 = __TUIFaultDebugAssertLog();
    if (sub_1B75C(v9))
    {
      *a1 = 0;
      *a2 = 0;
      _os_log_fault_impl(&dword_0, a3, OS_LOG_TYPE_FAULT, "Language item should not be checked in the multilingual keyboard view.", a1, 2u);
    }
  }

  else
  {
    v8 = *(__TUILogGetCategoryCachedImpl("Assert", &qword_569E8) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOBYTE(a3->isa) = 0;
      *a4 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Language item should not be checked in the multilingual keyboard view.", a3, 2u);
    }
  }
}