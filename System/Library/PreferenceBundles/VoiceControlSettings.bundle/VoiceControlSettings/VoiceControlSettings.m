void sub_1DD8(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B34;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2374(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    if (v5 && [v5 count])
    {
      [VCVocabularyObjC addVocabularyEntryWithString:v6 pronunciations:v5];
    }

    else
    {
      [VCVocabularyObjC addVocabularyEntryWithString:v6];
    }

    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_2410(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = settingsLocString(@"ADD_VOCABULARY_PLACEHOLDER", @"CommandAndControlSettings");
  [v4 setPlaceholder:v3];

  [v4 setDelegate:*(a1 + 32)];
  [v4 addTarget:*(a1 + 32) action:"textFieldDidChange:" forControlEvents:0x20000];
}

void sub_24A4(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v4 = [v3 text];

  if ([*(a1 + 40) _isTextValidForVocabulary:v4])
  {
    [VCVocabularyObjC addVocabularyEntryWithString:v4];
    [*(a1 + 40) reloadSpecifiers];
  }
}

void sub_2804(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    if (v5 && [v5 count])
    {
      [VCVocabularyObjC setPronunciations:v5 forText:v6];
    }

    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_29CC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    if (v5 && [v5 count])
    {
      [VCVocabularyObjC setPronunciations:v5 forText:v6];
    }

    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_2F04(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3408;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

float sub_47D4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mutableAttributedStringByReplacingPlaceholderAttribute:kSRCSCommandDescriptionsFontPlaceholderAttributeName withAttributeName:NSFontAttributeName inAttributedString:a2 withValueTable:*(a1 + 40)];
  [v2 size];
  v4 = v3;

  return v4;
}

id sub_59AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 textForItem:a2];
  v8 = [*(a1 + 32) textForItem:v6];

  v9 = [v7 localizedCompare:v8];
  return v9;
}

id sub_65A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_661C;
  v3[3] = &unk_28EE8;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

id sub_661C(uint64_t a1)
{
  +[VCVocabularyObjC deleteAllVocabularyForActiveLocale];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_6750(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_84D0;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_7BD8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:a2];
  v3 = *(a1 + 32);

  return [v3 appendString:@"*"];
}

BOOL sub_7C20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  v7 = [v6 commandStringsTableForLocaleIdentifier:v5];

  v8 = [v3 identifier];

  v9 = +[SRCSCommandStringsTable activeTargetTypes];
  v10 = [v7 languageModelDictionaryForCommandIdentifier:v8 targetTypes:v9 parsingErrorString:0];

  v11 = [v4 builtInCommandsStringsTableForLocaleIdentifier:v5];
  v12 = [v7 spokenStringPermutationsOfLanguageModelDictionary:v10 stringsTable:v11];
  v13 = [v12 filteredArrayUsingPredicate:*(a1 + 32)];
  v14 = [v13 count] != 0;

  return v14;
}

void sub_816C(id a1)
{
  v1 = +[CACPreferences sharedPreferences];
  [v1 deleteAllCustomCommandEntries];
}

id settingsLocString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = qword_2FB50;
  if (!qword_2FB50)
  {
    v6 = [NSBundle bundleForClass:AXSafeClassFromString()];
    v7 = qword_2FB50;
    qword_2FB50 = v6;

    v5 = qword_2FB50;
  }

  v8 = [v5 localizedStringForKey:v3 value:v3 table:v4];

  return v8;
}

void sub_9E00(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A304;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_A384(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B1DC;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

int64_t sub_AFD4(id a1, CACSpokenCommandItem *a2, CACSpokenCommandItem *a3)
{
  if (a2 | a3)
  {
    result = -1;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    v5 = a3;
    v6 = [(CACSpokenCommandItem *)a2 untranslatedLocale];
    v7 = [(CACSpokenCommandItem *)v5 untranslatedLocale];

    v8 = [v6 compare:v7];
    return v8;
  }

  return result;
}

void sub_B25C(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C4B8;
  block[3] = &unk_28E58;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_C71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_F548;
  v3[3] = &unk_29188;
  v3[4] = a3;
  v3[5] = a2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_C790(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 performSelector:"_updateTutorialButtonForOneness" withObject:0 afterDelay:0.0];
  }
}

void sub_D7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v57 + 32));
  objc_destroyWeak((v56 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D820(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_D8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_D8C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showDonationModalView];
}

void sub_D900(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_D9A0(uint64_t a1)
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 setDonationTipKitSeen:1];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

void sub_E018(uint64_t a1)
{
  v2 = +[CACPreferences sharedPreferences];
  v3 = [v2 bestLocaleIdentifier];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = +[CACLanguageAssetManager sharedManager];
  v6 = [v5 installationStatus];
  v7 = [v6 objectForKey:v4];

  v8 = +[CACLanguageAssetManager sharedManager];
  v9 = [v8 downloadProgressForLanguage:v4];

  v10 = CACLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Installation status: %@", buf, 0xCu);
  }

  if ([v7 hasPrefix:kCACLanguageAssetInstallationStatusPrefixInstalled])
  {
    v11 = 0;
  }

  else if ([v7 hasPrefix:kCACLanguageAssetInstallationStatusPrefixInstalling] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", kCACLanguageAssetInstallationStatusPrefixWaitingToInstall))
  {
    v11 = &dword_0 + 1;
  }

  else if (v7)
  {
    v11 = &dword_0 + 2;
  }

  else
  {
    v12 = [v9 objectForKey:kCACDownloadProgressDictionaryKeyTotalBytes];
    v13 = [v12 intValue];

    if (v13 > 0)
    {
      v11 = &dword_0 + 1;
    }

    else
    {
      v11 = &dword_0 + 2;
    }
  }

  objc_initWeak(buf, *(a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_E290;
  v14[3] = &unk_29128;
  objc_copyWeak(v15, buf);
  v15[1] = v11;
  dispatch_async(&_dispatch_main_q, v14);
  objc_destroyWeak(v15);
  objc_destroyWeak(buf);
}

void sub_E290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = CACLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3[20];
      v6 = *(a1 + 40);
      v10 = 134218240;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Checking if specifiers need update due to changed installation status. Old:%ld, New:%ld", &v10, 0x16u);
    }

    v7 = *(a1 + 40);
    v8 = v3[20];
    v3[20] = v7;
    if (v7 != v8)
    {
      v9 = CACLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Reloading specifiers due to language status update", &v10, 2u);
      }

      [v3 reloadSpecifiers];
    }
  }
}

void sub_F010(id a1, UIAlertAction *a2)
{
  v3 = +[CACPreferences sharedPreferences];
  v2 = +[NSDictionary dictionary];
  [v3 setUserHintsHistory:v2];
}

void sub_F2A0(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:@"COMMAND_AND_CONTROL_DONATION_TipKit"];
  v3 = [*(a1 + 32) cellForSpecifier:v2];
  [v3 instrinsicContentHeight];
  *(*(a1 + 32) + 144) = v4;

  [*(a1 + 32) reloadSpecifier:v2];
  *(*(a1 + 32) + 138) = 1;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:*(*(a1 + 32) + 144)];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tip loaded, resetting specifier, height: %@", &v7, 0xCu);
  }
}

id sub_F548(uint64_t a1)
{
  v2 = CACLogAssetDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_16D68(a1, v2);
  }

  return [*(a1 + 40) reloadSpecifiers];
}

uint64_t sub_1025C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_16F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_12210(&qword_2F628, &qword_1C2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = (&v16 - v10);
  sub_12CF4(v2, &v16 - v10, &qword_2F628, &qword_1C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_16EB4();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = *v11;
    sub_17344();
    v15 = sub_170E4();
    sub_16E34();

    sub_16F64();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_1045C(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_16E04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_12210(&qword_2F710, &qword_1C470);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v35 = v32 - v8;
  v9 = sub_12210(&qword_2F718, &qword_1C478);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = v32 - v11;
  v13 = sub_17314();
  v14 = sub_17314();
  v15 = settingsLocString(v13, v14);

  if (v15)
  {
    v16 = sub_17324();
    v18 = v17;

    v37 = v16;
    v38 = v18;
    v19 = sub_17334();
    v32[4] = v20;
    v32[5] = v19;
    v21 = sub_17314();
    v22 = sub_17314();
    v23 = settingsLocString(v21, v22);

    if (v23)
    {
      v24 = sub_17324();
      v26 = v25;

      v37 = v24;
      v38 = v26;
      v27 = sub_17334();
      v32[1] = v28;
      v32[2] = v27;
      v32[3] = v32;
      v29 = __chkstk_darwin(v27);
      __chkstk_darwin(v29);
      v37 = &_swiftEmptyArrayStorage;
      sub_1299C(&qword_2F720, &type metadata accessor for OnboardingTraits);
      sub_12210(&qword_2F728, &qword_1C480);
      sub_12ED4(&qword_2F730, &qword_2F728, &qword_1C480);
      sub_17354();
      sub_172B4();
      (*(v2 + 8))(v5, v1);
      sub_12210(&qword_2F738, &qword_1C488);
      sub_12210(&qword_2F740, &qword_1C490);
      sub_125FC();
      sub_12ED4(&qword_2F778, &qword_2F740, &qword_1C490);
      sub_16DF4();
      v30 = v36;
      (*(v33 + 32))(v36, v12, v34);
      v31 = (v30 + *(sub_12210(&qword_2F780, &qword_1C4A8) + 36));
      *v31 = 0;
      v31[1] = 0;
      v31[2] = nullsub_6;
      v31[3] = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_109A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VCAudioDonationView();
  v58 = *(v4 - 1);
  v5 = *(v58 + 64);
  __chkstk_darwin();
  v60 = v6;
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_12210(&qword_2F7E0, &unk_1C4E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v56 - v9;
  v59 = sub_16E14();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_12210(&qword_2F758, &qword_1C498);
  v15 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v61 = &v56 - v16;
  v17 = objc_opt_self();
  v18 = (a1 + v4[5]);
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_17314();
  v22 = [v17 linkWithBundleIdentifier:v21];

  v62 = v4;
  v63 = a2;
  if (v22)
  {
    v23 = [v22 bundle];

    v24 = [v23 privacyFlow];
    if (!v24)
    {
      __break(1u);
      goto LABEL_9;
    }

    v25 = [v24 localizedButtonTitle];

    if (v25)
    {
      sub_17324();

LABEL_7:
      v32 = sub_16E44();
      (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
      sub_127E0(a1, v7);
      v33 = a1;
      v34 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v35 = swift_allocObject();
      sub_12848(v7, v35 + v34);
      sub_16E24();
      v36 = sub_170F4();
      v37 = v61;
      (*(v11 + 32))(v61, v14, v59);
      v38 = &v37[*(v57 + 36)];
      *v38 = v36;
      *(v38 + 8) = 0u;
      *(v38 + 24) = 0u;
      v38[40] = 1;
      v39 = *(v33 + v62[6]);
      v62 = v39;
      sub_17304();
      sub_16E94();
      v40 = v79;
      v41 = v80;
      v42 = v81;
      v43 = v82;
      v44 = v83;
      v45 = v84;
      v46 = sub_17304();
      v48 = v47;
      v64[80] = v41;
      v64[72] = v43;
      *&v65 = v39;
      *(&v65 + 1) = v40;
      LOBYTE(v66) = v41;
      *(&v66 + 1) = v42;
      LOBYTE(v67) = v43;
      *(&v67 + 1) = v44;
      *&v68 = v45;
      *(&v68 + 1) = v46;
      v69 = v47;
      v49 = v46;
      v50 = v37;
      v51 = v63;
      sub_12C84(v50, v63);
      v52 = v51 + *(sub_12210(&qword_2F738, &qword_1C488) + 36);
      v53 = v68;
      *(v52 + 32) = v67;
      *(v52 + 48) = v53;
      *(v52 + 64) = v69;
      v54 = v66;
      *v52 = v65;
      *(v52 + 16) = v54;
      v70 = v62;
      v71 = v40;
      v72 = v41;
      v73 = v42;
      v74 = v43;
      v75 = v44;
      v76 = v45;
      v77 = v49;
      v78 = v48;
      v55 = v62;
      sub_12CF4(&v65, v64, &qword_2F770, &qword_1C4A0);
      sub_12D5C(&v70);
      return;
    }
  }

  v26 = sub_17314();
  v27 = sub_17314();
  v28 = settingsLocString(v26, v27);

  if (v28)
  {
    v29 = sub_17324();
    v31 = v30;

    v70 = v29;
    v71 = v31;
    sub_17334();
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
}

void sub_10F24(uint64_t a1)
{
  v2 = sub_17314();
  v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

  if (v3)
  {
    [v3 setPresentingViewController:*(a1 + *(type metadata accessor for VCAudioDonationView() + 24))];
    [v3 present];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_12210(&qword_2F740, &qword_1C490);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  *v8 = sub_16FD4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_12210(&qword_2F788, &qword_1C4B0);
  sub_11100(a1, &v8[*(v9 + 44)]);
  sub_12770(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_11100@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v52 = sub_17044();
  v53 = *(v52 - 8);
  v3 = v53[8];
  (__chkstk_darwin)();
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(type metadata accessor for VCAudioDonationView() - 8);
  v7 = *(v6 + 64);
  (__chkstk_darwin)();
  v49 = sub_12210(&qword_2F790, &qword_1C4B8);
  v50 = *(v49 - 8);
  v8 = *(v50 + 64);
  v9 = (__chkstk_darwin)();
  v55 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v41[-v11];
  v54 = sub_12210(&qword_2F798, &qword_1C4C0);
  v57 = *(v54 - 8);
  v13 = v57[8];
  v14 = __chkstk_darwin(v54);
  v51 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v41[-v16];
  v46 = a1;
  sub_127E0(a1, &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_12848(&v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
  v59 = a1;
  v48 = sub_12210(&qword_2F7A0, &qword_1C4C8);
  v47 = sub_128E4();
  sub_17294();
  sub_17034();
  sub_12ED4(&qword_2F7C0, &qword_2F790, &qword_1C4B8);
  sub_1299C(&qword_2F7C8, &type metadata accessor for BorderedProminentButtonStyle);
  v20 = v17;
  v45 = v17;
  v21 = v49;
  v22 = v52;
  sub_171C4();
  (v53[1])(v5, v22);
  v23 = v50;
  v24 = *(v50 + 8);
  v52 = v50 + 8;
  v53 = v24;
  v25 = v21;
  (v24)(v12, v21);
  v26 = v46;
  sub_127E0(v46, &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v27 = swift_allocObject();
  sub_12848(&v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v27 + v18);
  v58 = v26;
  v43 = v12;
  sub_17294();
  sub_17304();
  sub_16E94();
  v48 = v63;
  v47 = v65;
  v46 = v67;
  v44 = v68;
  v62 = 1;
  v61 = v64;
  v60 = v66;
  v28 = v57[2];
  v29 = v51;
  v30 = v20;
  v31 = v54;
  v28(v51, v30, v54);
  v32 = *(v23 + 16);
  v33 = v55;
  v32(v55, v12, v25);
  LOBYTE(v12) = v62;
  v42 = v61;
  LODWORD(v50) = v60;
  v34 = v56;
  v28(v56, v29, v31);
  v35 = sub_12210(&qword_2F7D0, &qword_1C4D8);
  v32(&v34[*(v35 + 48)], v33, v25);
  v36 = &v34[*(v35 + 64)];
  *v36 = 0;
  v36[8] = v12;
  *(v36 + 2) = v48;
  v36[24] = v42;
  *(v36 + 4) = v47;
  v36[40] = v50;
  v37 = v44;
  *(v36 + 6) = v46;
  *(v36 + 7) = v37;
  v38 = v53;
  (v53)(v43, v25);
  v39 = v57[1];
  v39(v45, v31);
  v38(v33, v25);
  return (v39)(v29, v31);
}

void sub_117CC(uint64_t a1@<X8>)
{
  v2 = sub_17314();
  v3 = sub_17314();
  v4 = settingsLocString(v2, v3);

  if (v4)
  {
    sub_17324();

    sub_17334();
    sub_12A80();
    v5 = sub_17194();
    v7 = v6;
    v9 = v8;
    v10 = sub_17174();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_12AD4(v5, v7, v9 & 1);

    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14 & 1;
    *(a1 + 40) = v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    sub_12AE4(v10, v12, v14 & 1);

    sub_12AD4(v10, v12, v14 & 1);
  }

  else
  {
    __break(1u);
  }
}

id sub_11970()
{
  v0 = sub_16EB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _AXSSetAudioDonationSiriImprovementEnabled();
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v6 = result;
    [result setDonationTipKitSeen:1];

    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = sub_17314();
    CFNotificationCenterPostNotification(v7, v8, 0, 0, 1u);

    sub_1025C(v4);
    sub_16EA4();
    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_11AE0@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_16F94();
  a2(v13, a1);
  *&v12[7] = v13[0];
  *&v12[23] = v13[1];
  *&v12[39] = v14[0];
  *&v12[48] = *(v14 + 9);
  LOBYTE(a2) = sub_17134();
  result = sub_16E54();
  *(a3 + 17) = *v12;
  *(a3 + 33) = *&v12[16];
  *(a3 + 49) = *&v12[32];
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 65) = *&v12[48];
  *(a3 + 88) = a2;
  *(a3 + 96) = v8;
  *(a3 + 104) = v9;
  *(a3 + 112) = v10;
  *(a3 + 120) = v11;
  *(a3 + 128) = 0;
  return result;
}

void sub_11B98(uint64_t a1@<X8>)
{
  v2 = sub_17314();
  v3 = sub_17314();
  v4 = settingsLocString(v2, v3);

  if (v4)
  {
    sub_17324();

    sub_17334();
    sub_12A80();
    v5 = sub_17194();
    v7 = v6;
    v9 = v8;
    v10 = sub_17174();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_12AD4(v5, v7, v9 & 1);

    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14 & 1;
    *(a1 + 40) = v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    sub_12AE4(v10, v12, v14 & 1);

    sub_12AD4(v10, v12, v14 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static VCAudioDonationViewBridge.makeViewController()()
{
  v0 = type metadata accessor for VCAudioDonationView();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = swift_getKeyPath();
  sub_12210(&qword_2F628, &qword_1C2A0);
  swift_storeEnumTagMultiPayload();
  v5 = (v4 + *(v1 + 28));
  *v5 = 0xD000000000000024;
  v5[1] = 0x8000000000021750;
  v6 = *(v1 + 32);
  *(v4 + v6) = [objc_allocWithZone(UIViewController) init];
  v7 = objc_allocWithZone(sub_12210(&qword_2F630, &qword_1C2A8));
  return sub_16FF4();
}

uint64_t type metadata accessor for VCAudioDonationView()
{
  result = qword_2F6C0;
  if (!qword_2F6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AXInstructionalCellContentViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VCAudioDonationViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCAudioDonationViewBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id VCAudioDonationViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCAudioDonationViewBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_120FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12DC4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_12160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12DC4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_121C4()
{
  sub_12DC4();
  sub_170B4();
  __break(1u);
}

uint64_t sub_12210(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_12290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12210(&qword_2F660, &unk_1C2F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_12370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_12210(&qword_2F660, &unk_1C2F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_12438()
{
  sub_124BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_124BC()
{
  if (!qword_2F6D0)
  {
    sub_16EB4();
    v0 = sub_16E84();
    if (!v1)
    {
      atomic_store(v0, &qword_2F6D0);
    }
  }
}

unint64_t sub_12534()
{
  result = qword_2F708;
  if (!qword_2F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F708);
  }

  return result;
}

uint64_t sub_125B4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_125FC()
{
  result = qword_2F748;
  if (!qword_2F748)
  {
    sub_125B4(&qword_2F738, &qword_1C488);
    sub_126B4();
    sub_12ED4(&qword_2F768, &qword_2F770, &qword_1C4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F748);
  }

  return result;
}

unint64_t sub_126B4()
{
  result = qword_2F750;
  if (!qword_2F750)
  {
    sub_125B4(&qword_2F758, &qword_1C498);
    sub_1299C(&qword_2F760, &type metadata accessor for AXOnboardingButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F750);
  }

  return result;
}

uint64_t sub_12770(uint64_t a1, uint64_t a2)
{
  v4 = sub_12210(&qword_2F740, &qword_1C490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_127E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCAudioDonationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCAudioDonationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_128E4()
{
  result = qword_2F7A8;
  if (!qword_2F7A8)
  {
    sub_125B4(&qword_2F7A0, &qword_1C4C8);
    sub_12ED4(&qword_2F7B0, &qword_2F7B8, &qword_1C4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7A8);
  }

  return result;
}

uint64_t sub_1299C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_12A80()
{
  result = qword_2F7D8;
  if (!qword_2F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7D8);
  }

  return result;
}

uint64_t sub_12AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_12AE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_12AF4()
{
  v1 = type metadata accessor for VCAudioDonationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_12210(&qword_2F628, &qword_1C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_16EB4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_12C24()
{
  v1 = *(type metadata accessor for VCAudioDonationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10F24(v2);
}

uint64_t sub_12C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_12210(&qword_2F758, &qword_1C498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_12210(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_12D5C(uint64_t a1)
{
  v2 = sub_12210(&qword_2F770, &qword_1C4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_12DC4()
{
  result = qword_2F7E8;
  if (!qword_2F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7E8);
  }

  return result;
}

unint64_t sub_12E1C()
{
  result = qword_2F7F0;
  if (!qword_2F7F0)
  {
    sub_125B4(&qword_2F780, &qword_1C4A8);
    sub_12ED4(&qword_2F7F8, &qword_2F718, &qword_1C478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F7F0);
  }

  return result;
}

uint64_t sub_12ED4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_125B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AXInstructionalCellContentViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXInstructionalCellContentViewBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id AXInstructionalCellContentViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXInstructionalCellContentViewBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1316C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_16F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_12210(&qword_2F828, &qword_1C558);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_12CF4(v2, &v17 - v11, &qword_2F828, &qword_1C558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_16E74();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_17344();
    v16 = sub_170E4();
    sub_16E34();

    sub_16F64();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1336C@<X0>(uint64_t a1@<X8>)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    v5 = sub_16FC4();
    v120 = &v84;
    v116 = *(v5 - 8);
    v117 = v5;
    v6 = *(v116 + 64);
    __chkstk_darwin(v5);
    v112 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = sub_17024();
    v119 = &v84;
    v105 = *(v8 - 8);
    v106 = v8;
    v9 = *(v105 + 64);
    __chkstk_darwin(v8);
    v103 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v90 = sub_16E74();
    v118 = &v84;
    v11 = *(v90 - 8);
    v12 = *(v11 + 64);
    v13 = __chkstk_darwin(v90);
    v89 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v115 = &v84;
    __chkstk_darwin(v13);
    v87 = &v84 - v15;
    v16 = sub_12210(&qword_2F910, &qword_1C5E8);
    v114 = &v84;
    v17 = *(*(v16 - 8) + 64);
    v18 = __chkstk_darwin(v16 - 8);
    v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v113 = &v84;
    __chkstk_darwin(v18);
    v22 = &v84 - v21;
    v23 = sub_12210(&qword_2F918, &qword_1C5F0);
    v111 = &v84;
    v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v23 - 8);
    v26 = &v84 - v25;
    v27 = sub_12210(&qword_2F920, &qword_1C5F8);
    v109 = a1;
    v110 = &v84;
    v28 = *(v27 - 8);
    v86 = v27 - 8;
    v29 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v27 - 8);
    v85 = &v84 - v30;
    v84 = sub_12210(&qword_2F928, &qword_1C600);
    v108 = &v84;
    v31 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v84);
    v33 = &v84 - v32;
    v94 = sub_12210(&qword_2F930, &qword_1C608);
    v107 = &v84;
    v95 = *(v94 - 8);
    v34 = *(v95 + 64);
    __chkstk_darwin(v94);
    v88 = &v84 - v35;
    v98 = sub_12210(&qword_2F938, &qword_1C610);
    v104 = &v84;
    v99 = *(v98 - 8);
    v36 = *(v99 + 64);
    __chkstk_darwin(v98);
    v91 = &v84 - v37;
    v97 = sub_12210(&qword_2F940, &qword_1C618);
    v102 = &v84;
    v38 = *(*(v97 - 8) + 64);
    v39 = __chkstk_darwin(v97);
    v96 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v101 = &v84;
    v41 = __chkstk_darwin(v39);
    v92 = &v84 - v42;
    v100 = &v84;
    __chkstk_darwin(v41);
    v93 = &v84 - v43;
    *v26 = sub_16FE4();
    *(v26 + 1) = 0;
    v26[16] = 1;
    v44 = &v26[*(sub_12210(&qword_2F948, &qword_1C620) + 44)];
    *v22 = sub_16F84();
    *(v22 + 1) = 0x4024000000000000;
    v22[16] = 0;
    v45 = sub_12210(&qword_2F950, &qword_1C628);
    sub_13F14(v1, &v22[*(v45 + 44)]);
    sub_12CF4(v22, v20, &qword_2F910, &qword_1C5E8);
    *v44 = 0x4024000000000000;
    v44[8] = 0;
    v46 = sub_12210(&qword_2F958, &qword_1C630);
    sub_12CF4(v20, &v44[*(v46 + 48)], &qword_2F910, &qword_1C5E8);
    sub_168B4(v22, &qword_2F910, &qword_1C5E8);
    sub_168B4(v20, &qword_2F910, &qword_1C5E8);
    v47 = v87;
    v48 = v1;
    sub_1316C(v87);
    v49 = v89;
    v50 = v90;
    (*(v11 + 104))(v89, enum case for ColorScheme.dark(_:), v90);
    v51 = sub_16E64();
    v52 = *(v11 + 8);
    v52(v49, v50);
    v52(v47, v50);
    v53 = objc_opt_self();
    v54 = &selRef_secondarySystemBackgroundColor;
    if ((v51 & 1) == 0)
    {
      v54 = &selRef_systemBackgroundColor;
    }

    v55 = [v53 *v54];
    v56 = sub_17244();
    v57 = sub_170F4();
    v58 = v85;
    sub_165A4(v26, v85, &qword_2F918, &qword_1C5F0);
    v59 = v58 + *(v86 + 44);
    *v59 = v56;
    *(v59 + 8) = v57;
    v60 = v84;
    v61 = &v33[*(v84 + 36)];
    v62 = *(sub_16EF4() + 20);
    v63 = enum case for RoundedCornerStyle.continuous(_:);
    v64 = sub_16FA4();
    (*(*(v64 - 8) + 104))(&v61[v62], v63, v64);
    __asm { FMOV            V0.2D, #16.0 }

    *v61 = _Q0;
    *&v61[*(sub_12210(&qword_2F960, &qword_1C638) + 36)] = 256;
    sub_165A4(v58, v33, &qword_2F920, &qword_1C5F8);
    v70 = v103;
    sub_17014();
    v71 = sub_16198();
    v72 = v88;
    v73 = v60;
    sub_171F4();
    (*(v105 + 8))(v70, v106);
    v74 = sub_168B4(v33, &qword_2F928, &qword_1C600);
    __chkstk_darwin(v74);
    *(&v84 - 2) = v48;
    v75 = sub_12210(&qword_2F998, &qword_1C648);
    v121 = v73;
    v122 = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v77 = sub_12ED4(&qword_2F9A0, &qword_2F998, &qword_1C648);
    v78 = v91;
    v79 = v94;
    sub_171E4();
    (*(v95 + 8))(v72, v79);
    v80 = v112;
    sub_16FB4();
    v121 = v79;
    v122 = v75;
    v123 = OpaqueTypeConformance2;
    v124 = v77;
    swift_getOpaqueTypeConformance2();
    v81 = v92;
    v82 = v98;
    sub_17204();
    (*(v116 + 8))(v80, v117);
    (*(v99 + 8))(v78, v82);
    v83 = v93;
    sub_16EC4();
    sub_168B4(v81, &qword_2F940, &qword_1C618);
    sub_12CF4(v83, v96, &qword_2F940, &qword_1C618);
    sub_1633C();
    sub_17004();
    return sub_168B4(v83, &qword_2F940, &qword_1C618);
  }
}

uint64_t sub_13F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v53 = a2;
  v3 = sub_12210(&qword_2F9C8, &qword_1C660);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v51 - v7;
  v9 = sub_17274();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_12210(&qword_2F9D0, &qword_1C668);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = type metadata accessor for AXInstructionalCellContentView();
  v23 = *(a1 + *(v22 + 28));
  sub_17254();
  (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
  v24 = sub_17284();

  (*(v10 + 8))(v13, v9);
  sub_17304();
  sub_16E94();
  v55 = 1;
  *&v54[6] = v56;
  *&v54[22] = v57;
  *&v54[38] = v58;
  v25 = &v21[*(sub_12210(&qword_2F9D8, &qword_1C670) + 36)];
  v26 = *(sub_16EF4() + 20);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = sub_16FA4();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #16.0 }

  *v25 = _Q0;
  *&v25[*(sub_12210(&qword_2F960, &qword_1C638) + 36)] = 256;
  v34 = *&v54[16];
  *(v21 + 18) = *v54;
  *v21 = v24;
  *(v21 + 1) = 0;
  *(v21 + 8) = 1;
  *(v21 + 34) = v34;
  *(v21 + 50) = *&v54[32];
  *(v21 + 8) = *&v54[46];
  LOBYTE(v27) = sub_17104();
  sub_16E54();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = &v21[*(sub_12210(&qword_2F9E0, &qword_1C678) + 36)];
  *v43 = v27;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = *(v22 + 32);
  v45 = v51;
  v21[*(v15 + 44)] = *(v51 + v44);
  *v8 = sub_16FE4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v46 = sub_12210(&qword_2F9E8, &qword_1C680);
  sub_143BC(v45, &v8[*(v46 + 44)]);
  sub_12CF4(v21, v19, &qword_2F9D0, &qword_1C668);
  v47 = v52;
  sub_12CF4(v8, v52, &qword_2F9C8, &qword_1C660);
  v48 = v53;
  sub_12CF4(v19, v53, &qword_2F9D0, &qword_1C668);
  v49 = sub_12210(&qword_2F9F0, &qword_1C688);
  sub_12CF4(v47, v48 + *(v49 + 48), &qword_2F9C8, &qword_1C660);
  sub_168B4(v8, &qword_2F9C8, &qword_1C660);
  sub_168B4(v21, &qword_2F9D0, &qword_1C668);
  sub_168B4(v47, &qword_2F9C8, &qword_1C660);
  return sub_168B4(v19, &qword_2F9D0, &qword_1C668);
}

uint64_t sub_143BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v145 = sub_12210(&qword_2F9F8, &qword_1C690);
  v144 = *(v145 - 8);
  v3 = *(v144 + 64);
  __chkstk_darwin(v145);
  v135 = (v120 - v4);
  v133 = sub_16EE4();
  v131 = *(v133 - 1);
  v5 = *(v131 + 64);
  __chkstk_darwin(v133);
  v129 = v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AXInstructionalCellContentView();
  v121 = *(v7 - 8);
  v8 = *(v121 + 64);
  __chkstk_darwin(v7);
  v122 = v9;
  v123 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_12210(&qword_2FA00, &qword_1C698);
  v10 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = v120 - v11;
  v134 = sub_12210(&qword_2FA08, &qword_1C6A0);
  v132 = *(v134 - 8);
  v12 = *(v132 + 64);
  v13 = __chkstk_darwin(v134);
  v130 = v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = v120 - v15;
  v128 = sub_172D4();
  v127 = *(v128 - 8);
  v16 = *(v127 + 64);
  v17 = __chkstk_darwin(v128);
  v126 = v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v136 = v120 - v19;
  v20 = sub_12210(&qword_2FA10, &qword_1C6A8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v143 = v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v150 = v120 - v24;
  v25 = sub_12210(&qword_2FA18, &qword_1C6B0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v120 - v27;
  v29 = sub_12210(&qword_2FA20, &qword_1C6B8);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v149 = v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = v120 - v34;
  __chkstk_darwin(v33);
  v37 = v120 - v36;
  *v28 = sub_16F84();
  *(v28 + 1) = 0x4024000000000000;
  v28[16] = 0;
  v38 = sub_12210(&qword_2FA28, &qword_1C6C0);
  sub_15154(a1, &v28[*(v38 + 44)]);
  v39 = sub_17124();
  v40 = sub_17114();
  sub_17114();
  if (sub_17114() != v39)
  {
    v40 = sub_17114();
  }

  sub_16E54();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_165A4(v28, v35, &qword_2FA18, &qword_1C6B0);
  v49 = &v35[*(v29 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v148 = v37;
  sub_165A4(v35, v37, &qword_2FA20, &qword_1C6B8);
  v50 = (a1 + *(v7 + 24));
  v51 = v50[1];
  v155 = *v50;
  v156 = v51;
  v52 = sub_12A80();

  v120[1] = v52;
  v53 = sub_17194();
  v55 = v54;
  v57 = v56;
  sub_17234();
  v138 = v7;
  v75 = a1;
  v58 = sub_17164();
  v60 = v59;
  v62 = v61;

  sub_12AD4(v53, v55, v57 & 1);

  sub_17154();
  v141 = sub_17184();
  v140 = v63;
  LOBYTE(v55) = v64;
  v142 = v65;

  v66 = v75;
  sub_12AD4(v58, v60, v62 & 1);

  v139 = sub_17124();
  sub_16E54();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  LODWORD(v75) = v55 & 1;
  LOBYTE(v155) = v55 & 1;
  LOBYTE(v151) = 0;
  v76 = (v66 + *(v138 + 36));
  v78 = *v76;
  v77 = v76[1];
  v147 = v75;
  if (!v78 && v77 == 0xE000000000000000 || (sub_17364() & 1) != 0)
  {
    v79 = v150;
    (*(v144 + 56))(v150, 1, 1, v145);
  }

  else
  {
    v80 = v136;
    sub_172C4();
    v155 = v78;
    v156 = v77;
    v81 = v123;
    sub_164D0(v66, v123);
    v82 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v83 = swift_allocObject();
    sub_16538(v81, v83 + v82);

    v84 = v125;
    sub_172A4();
    v85 = sub_17224();
    v86 = sub_170F4();
    v87 = v84 + *(sub_12210(&qword_2FA30, &qword_1C6C8) + 36);
    *v87 = v85;
    *(v87 + 8) = v86;
    v88 = sub_17214();
    KeyPath = swift_getKeyPath();
    v90 = (v84 + *(v124 + 36));
    *v90 = KeyPath;
    v90[1] = v88;
    v91 = v129;
    sub_16ED4();
    sub_166D0();
    sub_1686C(&qword_2FA60, &type metadata accessor for PlainButtonStyle);
    v92 = v137;
    v93 = v133;
    sub_171C4();
    (*(v131 + 8))(v91, v93);
    sub_168B4(v84, &qword_2FA00, &qword_1C698);
    LOBYTE(v155) = 1;
    v94 = v127;
    v133 = *(v127 + 16);
    v95 = v126;
    v96 = v128;
    (v133)(v126, v80, v128);
    LOBYTE(v151) = 1;
    v97 = v132;
    v138 = *(v132 + 16);
    v98 = v130;
    v99 = v134;
    (v138)(v130, v92, v134);
    v100 = v155;
    v101 = v135;
    *v135 = 0;
    *(v101 + 8) = v100;
    v102 = sub_12210(&qword_2FA68, &qword_1C708);
    (v133)(v101 + v102[12], v95, v96);
    v103 = v101 + v102[16];
    v104 = v151;
    *v103 = 0;
    *(v103 + 8) = v104;
    (v138)(v101 + v102[20], v98, v99);
    v75 = *(v97 + 8);
    v75(v137, v99);
    v105 = *(v94 + 8);
    v105(v136, v96);
    v75(v98, v99);
    LOBYTE(v75) = v147;
    v105(v95, v96);
    v79 = v150;
    sub_165A4(v101, v150, &qword_2F9F8, &qword_1C690);
    (*(v144 + 56))(v79, 0, 1, v145);
  }

  v106 = v149;
  sub_12CF4(v148, v149, &qword_2FA20, &qword_1C6B8);
  v107 = v143;
  sub_12CF4(v79, v143, &qword_2FA10, &qword_1C6A8);
  v108 = v146;
  sub_12CF4(v106, v146, &qword_2FA20, &qword_1C6B8);
  v109 = sub_12210(&qword_2FA70, &qword_1C710);
  v110 = (v108 + v109[12]);
  v111 = v141;
  *&v151 = v141;
  v112 = v140;
  *(&v151 + 1) = v140;
  LOBYTE(v152) = v75;
  *(&v152 + 1) = *v168;
  DWORD1(v152) = *&v168[3];
  v113 = v142;
  *(&v152 + 1) = v142;
  v114 = v139;
  LOBYTE(v153) = v139;
  *(&v153 + 1) = *v167;
  DWORD1(v153) = *&v167[3];
  *(&v153 + 1) = v68;
  *v154 = v70;
  *&v154[8] = v72;
  *&v154[16] = v74;
  v154[24] = 0;
  v115 = v151;
  v116 = v152;
  *(v110 + 57) = *&v154[9];
  v117 = *v154;
  v110[2] = v153;
  v110[3] = v117;
  *v110 = v115;
  v110[1] = v116;
  sub_12CF4(v107, v108 + v109[16], &qword_2FA10, &qword_1C6A8);
  v118 = v108 + v109[20];
  *v118 = 0x4024000000000000;
  *(v118 + 8) = 0;
  sub_12CF4(&v151, &v155, &qword_2FA78, &qword_1C718);
  sub_168B4(v150, &qword_2FA10, &qword_1C6A8);
  sub_168B4(v148, &qword_2FA20, &qword_1C6B8);
  sub_168B4(v107, &qword_2FA10, &qword_1C6A8);
  v155 = v111;
  v156 = v112;
  v157 = v147;
  *v158 = *v168;
  *&v158[3] = *&v168[3];
  v159 = v113;
  v160 = v114;
  *v161 = *v167;
  *&v161[3] = *&v167[3];
  v162 = v68;
  v163 = v70;
  v164 = v72;
  v165 = v74;
  v166 = 0;
  sub_168B4(&v155, &qword_2FA78, &qword_1C718);
  return sub_168B4(v149, &qword_2FA20, &qword_1C6B8);
}

uint64_t sub_15154@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a1;
  v55 = a2;
  v3 = type metadata accessor for AXInstructionalCellContentView();
  v4 = v3 - 8;
  v52 = *(v3 - 8);
  v51 = *(v52 + 64);
  __chkstk_darwin(v3);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_12210(&qword_2FA80, &qword_1C720);
  v7 = *(v6 - 8);
  v54 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v47 - v11;
  v12 = (a1 + *(v4 + 28));
  v13 = v12[1];
  v73 = *v12;
  v74 = v13;
  sub_12A80();

  v14 = sub_17194();
  v16 = v15;
  v18 = v17;
  sub_17144();
  v19 = sub_17184();
  v21 = v20;
  v23 = v22;

  sub_12AD4(v14, v16, v18 & 1);

  v24 = sub_17174();
  v49 = v25;
  v27 = v26;
  v29 = v28;
  v47 = v28;
  sub_12AD4(v19, v21, v23 & 1);

  sub_172E4();
  sub_16F04();
  LOBYTE(v19) = v27 & 1;
  v86 = v27 & 1;
  v30 = v50;
  sub_164D0(v48, v50);
  v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v32 = swift_allocObject();
  sub_16538(v30, v32 + v31);
  sub_12210(&qword_2FA88, &qword_1C728);
  sub_16AF0();
  v33 = v56;
  sub_17294();
  sub_172F4();
  sub_16E94();
  v34 = (v33 + *(sub_12210(&qword_2FA98, &qword_1C730) + 36));
  v35 = v88;
  *v34 = v87;
  v34[1] = v35;
  v34[2] = v89;
  v36 = v53;
  *(v33 + *(v54 + 44)) = 257;
  sub_12CF4(v33, v36, &qword_2FA80, &qword_1C720);
  v37 = v24;
  *&v64 = v24;
  v38 = v49;
  *(&v64 + 1) = v49;
  LOBYTE(v65) = v19;
  *(&v65 + 1) = *v85;
  DWORD1(v65) = *&v85[3];
  *(&v65 + 1) = v29;
  v70 = v61;
  v71 = v62;
  v72 = v63;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v69 = v60;
  v39 = v62;
  v40 = v55;
  v55[6] = v61;
  v40[7] = v39;
  v40[8] = v72;
  v41 = v67;
  v40[2] = v66;
  v40[3] = v41;
  v42 = v69;
  v40[4] = v68;
  v40[5] = v42;
  v43 = v65;
  *v40 = v64;
  v40[1] = v43;
  v44 = v40;
  v45 = sub_12210(&qword_2FAA0, &qword_1C738);
  sub_12CF4(v36, v44 + *(v45 + 48), &qword_2FA80, &qword_1C720);
  sub_12CF4(&v64, &v73, &qword_2FAA8, qword_1C740);
  sub_168B4(v56, &qword_2FA80, &qword_1C720);
  sub_168B4(v36, &qword_2FA80, &qword_1C720);
  v73 = v37;
  v74 = v38;
  v75 = v19;
  *v76 = *v85;
  *&v76[3] = *&v85[3];
  v77 = v47;
  v82 = v61;
  v83 = v62;
  v84 = v63;
  v78 = v57;
  v79 = v58;
  v80 = v59;
  v81 = v60;
  return sub_168B4(&v73, &qword_2FAA8, qword_1C740);
}

uint64_t sub_1563C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_17264();
  v3 = sub_17234();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

void sub_15698(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v38 = type metadata accessor for AXInstructionalCellContentView();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v38);
  v5 = sub_12210(&qword_2F9B8, &qword_1C650);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v40 = &v37 - v11;
  v12 = __chkstk_darwin(v10);
  v39 = &v37 - v13;
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = sub_17314();
  v17 = [objc_opt_self() bundleWithIdentifier:v16];

  if (v17)
  {
    v36._countAndFlagsBits = 0xE000000000000000;
    v46.value._object = 0x80000000000219A0;
    v45._countAndFlagsBits = 1162103112;
    v45._object = 0xE400000000000000;
    v46.value._countAndFlagsBits = 0xD000000000000011;
    v18.super.isa = v17;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v19 = sub_16DE4(v45, v46, v18, v47, v36);
    v21 = v20;

    v43 = v19;
    v44 = v21;
    sub_164D0(a1, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = *(v3 + 80);
    v23 = a1;
    v24 = (v22 + 16) & ~v22;
    v25 = swift_allocObject();
    sub_16538(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    sub_12A80();
    sub_172A4();
    v26 = (v23 + *(v38 + 36));
    v27 = v26[1];
    v43 = *v26;
    v44 = v27;
    sub_164D0(v23, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = swift_allocObject();
    sub_16538(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v24);

    v29 = v39;
    sub_172A4();
    v30 = v6[2];
    v31 = v40;
    v30(v40, v15, v5);
    v32 = v41;
    v30(v41, v29, v5);
    v33 = v42;
    v30(v42, v31, v5);
    v34 = sub_12210(&qword_2F9C0, &qword_1C658);
    v30(&v33[*(v34 + 48)], v32, v5);
    v35 = v6[1];
    v35(v29, v5);
    v35(v15, v5);
    v35(v32, v5);
    v35(v31, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15AD4(uint64_t a1)
{
  v2 = sub_16E74();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_16F24();
}

uint64_t sub_15B9C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a7;
  v36 = a12;
  v33 = a9;
  v34 = a11;
  v19 = type metadata accessor for AXInstructionalCellContentView();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = (&v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = swift_getKeyPath();
  sub_12210(&qword_2F828, &qword_1C558);
  swift_storeEnumTagMultiPayload();
  v24 = (v23 + v20[7]);
  *v24 = a1;
  v24[1] = a2;
  v25 = (v23 + v20[8]);
  *v25 = a5;
  v25[1] = a6;
  *(v23 + v20[9]) = a3;
  *(v23 + v20[10]) = a4;
  v26 = (v23 + v20[11]);
  v27 = v36;
  *v26 = v35;
  v26[1] = a8;
  v28 = (v23 + v20[12]);
  v29 = v34;
  *v28 = v33;
  v28[1] = a10;
  v30 = (v23 + v20[13]);
  *v30 = v29;
  v30[1] = v27;
  objc_allocWithZone(sub_12210(&qword_2F830, &qword_1C560));

  v31 = a3;

  return sub_16FF4();
}

uint64_t sub_15D54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for AXInstructionalCellContentView()
{
  result = qword_2F898;
  if (!qword_2F898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_15E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12210(&qword_2F838, &qword_1C568);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_15F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_12210(&qword_2F838, &qword_1C568);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_15FCC()
{
  sub_16088();
  if (v0 <= 0x3F)
  {
    sub_160E0();
    if (v1 <= 0x3F)
    {
      sub_1612C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_16088()
{
  if (!qword_2F8A8)
  {
    sub_16E74();
    v0 = sub_16E84();
    if (!v1)
    {
      atomic_store(v0, &qword_2F8A8);
    }
  }
}

unint64_t sub_160E0()
{
  result = qword_2F8B0;
  if (!qword_2F8B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2F8B0);
  }

  return result;
}

unint64_t sub_1612C()
{
  result = qword_2F8B8;
  if (!qword_2F8B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2F8B8);
  }

  return result;
}

unint64_t sub_16198()
{
  result = qword_2F968;
  if (!qword_2F968)
  {
    sub_125B4(&qword_2F928, &qword_1C600);
    sub_16250();
    sub_12ED4(&qword_2F990, &qword_2F960, &qword_1C638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F968);
  }

  return result;
}

unint64_t sub_16250()
{
  result = qword_2F970;
  if (!qword_2F970)
  {
    sub_125B4(&qword_2F920, &qword_1C5F8);
    sub_12ED4(&qword_2F978, &qword_2F918, &qword_1C5F0);
    sub_12ED4(&qword_2F980, &qword_2F988, &qword_1C640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F970);
  }

  return result;
}

unint64_t sub_1633C()
{
  result = qword_2F9A8;
  if (!qword_2F9A8)
  {
    sub_125B4(&qword_2F940, &qword_1C618);
    sub_125B4(&qword_2F930, &qword_1C608);
    sub_125B4(&qword_2F998, &qword_1C648);
    sub_125B4(&qword_2F928, &qword_1C600);
    sub_16198();
    swift_getOpaqueTypeConformance2();
    sub_12ED4(&qword_2F9A0, &qword_2F998, &qword_1C648);
    swift_getOpaqueTypeConformance2();
    sub_1686C(&qword_2F9B0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F9A8);
  }

  return result;
}

uint64_t sub_164D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXInstructionalCellContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXInstructionalCellContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_165A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_12210(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1660C()
{
  v1 = type metadata accessor for AXInstructionalCellContentView();
  v2 = v0 + *(v1 + 40) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_16678@<X0>(uint64_t *a1@<X8>)
{
  result = sub_16F34();
  *a1 = result;
  return result;
}

uint64_t sub_166A4(uint64_t *a1)
{
  v1 = *a1;

  return sub_16F44();
}

unint64_t sub_166D0()
{
  result = qword_2FA38;
  if (!qword_2FA38)
  {
    sub_125B4(&qword_2FA00, &qword_1C698);
    sub_16788();
    sub_12ED4(&qword_2FA50, &qword_2FA58, &qword_1C700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FA38);
  }

  return result;
}

unint64_t sub_16788()
{
  result = qword_2FA40;
  if (!qword_2FA40)
  {
    sub_125B4(&qword_2FA30, &qword_1C6C8);
    sub_12ED4(&qword_2FA48, &qword_2F9B8, &qword_1C650);
    sub_12ED4(&qword_2F980, &qword_2F988, &qword_1C640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FA40);
  }

  return result;
}

uint64_t sub_1686C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_168B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_12210(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_16914()
{
  v1 = type metadata accessor for AXInstructionalCellContentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_12210(&qword_2F828, &qword_1C558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_16E74();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = *(v5 + v1[6] + 8);

  v10 = *(v5 + v1[9] + 8);

  v11 = *(v5 + v1[10] + 8);

  v12 = *(v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_16A84()
{
  v1 = type metadata accessor for AXInstructionalCellContentView();
  v2 = v0 + *(v1 + 44) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_16AF0()
{
  result = qword_2FA90;
  if (!qword_2FA90)
  {
    sub_125B4(&qword_2FA88, &qword_1C728);
    sub_12ED4(&qword_2FA50, &qword_2FA58, &qword_1C700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FA90);
  }

  return result;
}

void sub_16D68(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Settings got notification: %@", &v3, 0xCu);
}