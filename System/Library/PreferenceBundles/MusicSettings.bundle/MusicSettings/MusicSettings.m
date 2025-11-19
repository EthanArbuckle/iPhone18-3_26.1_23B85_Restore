void sub_3850(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8.receiver = *(a1 + 40);
  v8.super_class = MusicSettingsAudioQualityDetailController;
  objc_msgSendSuper2(&v8, "listItemSelected:", v2);
  v3 = [*(a1 + 48) propertyForKey:MusicSettingsDidSelectAction];
  v4 = NSSelectorFromString(v3);

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = MusicSettingsPerformSelector();
  }
}

uint64_t sub_38E0(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

id sub_3F54(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &__kCFBooleanFalse;
  }

  v4 = v3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 sf_isChinaRegionCellularDevice];

  if (v6)
  {
    v7 = [v2 intValue];

    if ((v7 & 2) != 0)
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }
  }

  return v4;
}

void sub_4A9C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4B24;
  v2[3] = &unk_24ED0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _displayDownloadsDialogIfNeededWithCompletion:v2];
}

void sub_4B38(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4BC0;
  v2[3] = &unk_24ED0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _displayDownloadsDialogIfNeededWithCompletion:v2];
}

void sub_4E38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8.receiver = *(a1 + 40);
  v8.super_class = MusicSettingsAtmosAudioController;
  objc_msgSendSuper2(&v8, "listItemSelected:", v2);
  v3 = [*(a1 + 48) propertyForKey:MusicSettingsDidSelectAction];
  v4 = NSSelectorFromString(v3);

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = MusicSettingsPerformSelector();
  }
}

uint64_t sub_4EC8(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_53CC(uint64_t a1)
{
  v2 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_582C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3 + 1;
  v5 = a2;
  v6 = [NSString stringWithFormat:@"com.apple.Music:MinimumStorageTier%lu", v4];
  v8 = @"capacity";
  v9 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_64A4(id *a1)
{
  [a1[4] updateVisibleSpecifiers];
  v2 = [a1[5] footerViewForSection:{objc_msgSend(a1[6], "section")}];
  [v2 invalidateIntrinsicContentSize];
}

void sub_733C(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) countOfEntities]);
  v3 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7488;
  v10[3] = &unk_24FF0;
  v4 = v2;
  v11 = v4;
  [v3 enumeratePersistentIDsUsingBlock:v10];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_74E8;
  v7[3] = &unk_25018;
  v8 = v5;
  v9 = v4;
  v6 = v4;
  [v8 performDatabaseTransactionWithBlock:v7];
  [*(a1 + 40) notifyKeepLocalStateDidChange];
}

void sub_7488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

uint64_t sub_74E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [ML3Track unlinkRedownloadableAssetsFromLibrary:v3 persistentIDs:v4 deletionType:1 disableKeepLocal:0 deletedFileSize:0];
  v8 = ML3EntityPropertyKeepLocalConstraints;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [ML3Track setValues:&off_27990 forProperties:v6 forEntityPersistentIDs:*(a1 + 40) inLibrary:*(a1 + 32) usingConnection:v5];

  return 1;
}

int64_t sub_91E0(id a1, MPPlaybackEQSetting *a2, MPPlaybackEQSetting *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(MPPlaybackEQSetting *)v4 preset])
  {
    v6 = [(MPPlaybackEQSetting *)v4 localizedName];
    v7 = [(MPPlaybackEQSetting *)v5 localizedName];
    v8 = [v6 caseInsensitiveCompare:v7];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

id sub_9668(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 isEqualToString:@"isSignedIn"])
  {
    v6 = a1 & 1;
LABEL_17:
    v7 = [NSNumber numberWithBool:v6];
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"isSignedInToHomeSharing"])
  {
    v6 = (a1 >> 8) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isMatchSubscribed"])
  {
    v6 = (a1 >> 16) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isSubscribed"])
  {
    v6 = (a1 >> 24) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isFullCatalogPlaybackCapable"])
  {
    v6 = HIDWORD(a1) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isSubscriptionAvailable"])
  {
    v6 = (a1 >> 40) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isCloudLibraryEnabled"])
  {
    v6 = HIWORD(a1) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isShowingCloudLibrary"])
  {
    v6 = HIBYTE(a1) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isManagedAppleID"])
  {
    v6 = a2 & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isDownloadSectionVisible"])
  {
    v6 = (a2 >> 8) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isEnhancedAudioAvailable"])
  {
    v6 = (a2 >> 16) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isAuthTokenRequiredForPlayback"])
  {
    v6 = (a2 >> 24) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isMLIEnabled"])
  {
    v6 = HIDWORD(a2) & 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"isMLIReviewEnabled"])
  {
    v6 = (a2 >> 40) & 1;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_18:

  return v7;
}

int64_t sub_9F58(id a1, MSVFrameworkDescription *a2, MSVFrameworkDescription *a3)
{
  v4 = a3;
  v5 = [(MSVFrameworkDescription *)a2 name];
  v6 = [(MSVFrameworkDescription *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_A7E8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A860;
  block[3] = &unk_24EF8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_A868(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A8E0;
  block[3] = &unk_24EF8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_B6E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_B714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_B7B8;
  v3[3] = &unk_25170;
  v3[4] = WeakRetained;
  v4 = *(a1 + 32);
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];
}

void sub_B7B8(uint64_t a1)
{
  v2 = +[ICPrivacyInfo sharedPrivacyInfo];
  v3 = ICPrivacyIdentifierMusic;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_B878;
  v5[3] = &unk_25198;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 acknowledgePrivacyPolicyForIdentifier:v3 completionHandler:v5];
}

void sub_B878(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_B900;
  v2[3] = &unk_25170;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

id sub_B910(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B99C;
  v6[3] = &unk_25148;
  v6[4] = v2;
  return [v3 enableCloudLibraryWithPolicy:v4 startInitialImport:1 completionHandler:v6];
}

void sub_B99C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BA14;
  block[3] = &unk_24EF8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_BA40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_BAC0;
  v4[3] = &unk_25148;
  v4[4] = v1;
  return [v2 disableCloudLibraryWithReason:-1 completionHandler:v4];
}

void sub_BAC0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BB38;
  block[3] = &unk_24EF8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_BC80(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BCF8;
  block[3] = &unk_24EF8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_BE20(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BE98;
  block[3] = &unk_24EF8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_D544(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v10[9] = v3;
    v10[10] = v4;
    v6 = a2;
    v7 = +[HSAccountStore defaultStore];
    v8 = [v6 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    [v7 setAppleID:v8];

    v9 = [v6 objectForKeyedSubscript:AKAuthenticationPasswordKey];

    [v7 setPassword:v9];
    if ([v7 canDetermineGroupID])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_D664;
      v10[3] = &unk_25260;
      v10[4] = *(a1 + 32);
      [v7 determineGroupIDWithCompletionHandler:v10];
    }
  }
}

void sub_D664(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_D6E0;
  v2[3] = &unk_25238;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

id sub_D6E0(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"HOME_SHARING_ERROR_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v5 = [UIAlertController alertControllerWithTitle:v4 message:0 preferredStyle:1];

    v6 = *(a1 + 32);
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"OK" value:&stru_25A88 table:@"MusicSettings"];
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];
    [v5 addAction:v9];

    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }

  v10 = *(a1 + 32);

  return [v10 _reloadAccountStatus];
}

void sub_DA74(uint64_t a1)
{
  v2 = +[HSAccountStore defaultStore];
  [v2 clearAllCredentials];
  [*(a1 + 32) _reloadAccountStatus];
}

void sub_DB84(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_DC00;
  v2[3] = &unk_25238;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_DC00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RESET_MEDIA_LIBRARY" value:&stru_25A88 table:@"MusicSettings"];
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v5)
  {
    v9 = @"RESET_MEDIA_LIBRARY_SUCCESSFUL";
  }

  else
  {
    v9 = @"RESET_MEDIA_LIBRARY_FAILED";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_25A88 table:@"MusicSettings"];
  v11 = [UIAlertController alertControllerWithTitle:v4 message:v10 preferredStyle:1];

  [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
}

void sub_E6EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isManagedAppleID];
  v5 = [v3 DSID];

  if (*(a1 + 48) != v4 || ([v5 isEqual:*(a1 + 32)] & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_E7D0;
    block[3] = &unk_252D8;
    block[4] = *(a1 + 40);
    v7 = v5;
    v8 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_E7D0(uint64_t a1)
{
  *(*(a1 + 32) + 145) = *(a1 + 40) != 0;
  *(*(a1 + 32) + 153) = *(a1 + 48);
  return [*(a1 + 32) updateVisibleSpecifiers];
}

void sub_E800(id a1, ICStoreRequestContext *a2)
{
  v11 = a2;
  v2 = [(ICStoreRequestContext *)v11 clientInfo];
  v3 = [v2 clientVersion];
  v4 = [v3 componentsSeparatedByString:@"."];

  if ([v4 count] == &dword_0 + 1)
  {
    v5 = [(ICStoreRequestContext *)v11 clientInfo];
    v6 = [v5 mutableCopy];

    v7 = [v4 firstObject];
    v8 = [NSString stringWithFormat:@"%@.0", v7];
    [v6 setClientVersion:v8];

    [(ICStoreRequestContext *)v11 setClientInfo:v6];
  }

  v9 = +[ICUserIdentityStore defaultIdentityStore];
  [(ICStoreRequestContext *)v11 setIdentityStore:v9];

  v10 = +[ICUserIdentity activeAccount];
  [(ICStoreRequestContext *)v11 setIdentity:v10];

  [(ICStoreRequestContext *)v11 setAllowsExpiredBags:1];
}

void sub_E958(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  v4 = [v3 objectForKeyedSubscript:@"mli"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 objectForKeyedSubscript:@"ismliEnabled"];
    v6 = [v4 objectForKeyedSubscript:@"mliEntryPointText"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v5 BOOLValue];
      if (v6)
      {
        v8 = v7;
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

  else
  {
    v8 = 0;
  }

  if (*(a1 + 40) != v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_EADC;
    block[3] = &unk_252D8;
    block[4] = *(a1 + 32);
    v11 = v8;
    v10 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_EADC(uint64_t a1)
{
  *(*(a1 + 32) + 157) = *(a1 + 48);
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"mliMusicDeepLink"];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  *(v4 + 192) = v3;

  v6 = [*(a1 + 40) objectForKeyedSubscript:@"mliEntryPointText"];
  v7 = [v6 copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 200);
  *(v8 + 200) = v7;

  v10 = [*(a1 + 40) objectForKeyedSubscript:@"mliEntryPointTitle"];
  v11 = [v10 copy];
  v12 = *(a1 + 32);
  v13 = *(v12 + 208);
  *(v12 + 208) = v11;

  v14 = [*(a1 + 40) objectForKeyedSubscript:@"mliEntryPointTitleReview"];
  v15 = [v14 copy];
  v16 = *(a1 + 32);
  v17 = *(v16 + 216);
  *(v16 + 216) = v15;

  v18 = [*(a1 + 40) objectForKeyedSubscript:@"mliEntryPointFooter"];
  v19 = [v18 copy];
  v20 = *(a1 + 32);
  v21 = *(v20 + 224);
  *(v20 + 224) = v19;

  v22 = [*(a1 + 40) objectForKeyedSubscript:@"mliReviewCTA"];
  v23 = [v22 copy];
  v24 = *(a1 + 32);
  v25 = *(v24 + 232);
  *(v24 + 232) = v23;

  v26 = [*(a1 + 40) objectForKeyedSubscript:@"mliReviewTitle"];
  v27 = [v26 copy];
  v28 = *(a1 + 32);
  v29 = *(v28 + 240);
  *(v28 + 240) = v27;

  v30 = [*(a1 + 40) objectForKeyedSubscript:@"mliReviewDurationInDays"];
  v31 = [v30 copy];
  v32 = *(a1 + 32);
  v33 = *(v32 + 248);
  *(v32 + 248) = v31;

  v34 = *(a1 + 32);

  return [v34 _determineMLIStatus];
}

id sub_EF0C(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(*(a1 + 32) + 151) == 1)
  {
    [*(a1 + 40) setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    v2 = 1;
  }

  else
  {
    [*(a1 + 40) setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    v2 = 0;
  }

  *(*(a1 + 32) + 185) = v2;
  v3 = [*(a1 + 48) stringForKey:@"mliReview"];
  *(*(a1 + 32) + 158) = v3 != 0;

  v4 = *(a1 + 32);

  return [v4 updateVisibleSpecifiers];
}

id sub_F784(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 145) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F7B8(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 146) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F7F0(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 147) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F828(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 150) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F860(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 149) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F898(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 156) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F8D0(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 155) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F908(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 151) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F940(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 154) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F978(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 153) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F9B0(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 157) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

id sub_F9E8(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 158) ^= 1u;
  return [*(a1 + 32) updateVisibleSpecifiers];
}

UIColor *__cdecl sub_FEB8(id a1, UITraitCollection *a2)
{
  v2 = a2;
  v3 = [(UITraitCollection *)v2 userInterfaceStyle];
  v4 = [(UITraitCollection *)v2 accessibilityContrast];

  if (v3 == &dword_0 + 2)
  {
    v5 = 0.980392157;
    if (v4 == &dword_0 + 1)
    {
      v6 = 0.345098039;
      v7 = 0.415686275;
    }

    else
    {
      v6 = 0.176470588;
      v7 = 0.282352941;
    }
  }

  else if (v4 == &dword_0 + 1)
  {
    v5 = 0.839215686;
    v7 = 0.0901960784;
    v6 = 0.0;
  }

  else
  {
    v5 = 0.980392157;
    v6 = 0.137254902;
    v7 = 0.231372549;
  }

  v8 = [UIColor colorWithRed:v5 green:v6 blue:v7 alpha:1.0];

  return v8;
}

id sub_1028C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicSettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_103CC(uint64_t a1)
{
  v2 = sub_10434(&qword_2AEC0, &qword_1B138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10434(uint64_t *a1, uint64_t *a2)
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

void type metadata accessor for MPTransitionStylePreference()
{
  if (!qword_2AEC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2AEC8);
    }
  }
}

id sub_105C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10624@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_10434(&qword_2AFC0, &qword_1B2D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v34 = sub_10434(&qword_2AFC8, &qword_1B2E0);
  v36 = *(v34 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v34);
  v9 = &v30 - v8;
  v35 = sub_10434(&qword_2AFD0, &qword_1B2E8);
  v10 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v32 = &v30 - v11;
  v38 = v1;
  sub_10434(&qword_2AFD8, &qword_1B2F0);
  sub_150C8(&qword_2AFE0, &qword_2AFD8, &qword_1B2F0);
  sub_16B14();
  v31 = objc_opt_self();
  v12 = [v31 defaultCenter];
  v13 = &v6[*(v3 + 52)];
  sub_16DB4();

  v14 = *v2;
  v44 = v2[1];
  v45[0] = v14;
  v43 = v2[2];
  v15 = swift_allocObject();
  v16 = v2[1];
  *(v15 + 1) = *v2;
  *(v15 + 2) = v16;
  *(v15 + 3) = v2[2];
  v17 = &v6[*(v3 + 56)];
  *v17 = sub_13A2C;
  v17[1] = v15;
  v39 = *v2;
  sub_13E74(v45, v42, &qword_2AFE8, &qword_1B2F8);
  sub_13E74(&v44, v42, &qword_2AFF0, &qword_1B300);
  sub_13E74(&v43, v42, &qword_2AFE8, &qword_1B2F8);
  v30 = sub_10434(&qword_2AFE8, &qword_1B2F8);
  sub_16BF4();
  LOBYTE(v39) = v42[0];
  v33 = &protocol conformance descriptor for SubscriptionView<A, B>;
  v18 = sub_150C8(&qword_2AFF8, &qword_2AFC0, &qword_1B2D8);
  sub_16B94();
  sub_14E10(v6, &qword_2AFC0, &qword_1B2D8);
  v39 = v44;
  sub_10434(&qword_2AFF0, &qword_1B300);
  sub_16BF4();
  type metadata accessor for MPTransitionStylePreference();
  *&v39 = v3;
  *(&v39 + 1) = &type metadata for Bool;
  v40 = v18;
  v41 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_14A44(&qword_2B000, type metadata accessor for MPTransitionStylePreference);
  v19 = v32;
  v20 = v34;
  sub_16B94();
  (*(v36 + 8))(v9, v20);
  v21 = [v31 defaultCenter];
  v22 = v35;
  v23 = v19 + *(v35 + 52);
  sub_16DB4();

  v24 = swift_allocObject();
  v25 = v2[1];
  *(v24 + 1) = *v2;
  *(v24 + 2) = v25;
  *(v24 + 3) = v2[2];
  v26 = (v19 + *(v22 + 56));
  *v26 = sub_13A34;
  v26[1] = v24;
  v39 = v43;
  sub_13E74(v45, v42, &qword_2AFE8, &qword_1B2F8);
  sub_13E74(&v44, v42, &qword_2AFF0, &qword_1B300);
  sub_13E74(&v43, v42, &qword_2AFE8, &qword_1B2F8);
  sub_16BF4();
  v27 = swift_allocObject();
  v28 = v2[1];
  v27[1] = *v2;
  v27[2] = v28;
  v27[3] = v2[2];
  sub_13E74(v45, &v39, &qword_2AFE8, &qword_1B2F8);
  sub_13E74(&v44, &v39, &qword_2AFF0, &qword_1B300);
  sub_13E74(&v43, &v39, &qword_2AFE8, &qword_1B2F8);
  sub_150C8(&qword_2B008, &qword_2AFD0, &qword_1B2E8);
  sub_16B94();

  return sub_14E10(v19, &qword_2AFD0, &qword_1B2E8);
}

uint64_t sub_10CB8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = sub_10434(&qword_2B010, &qword_1B308);
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  __chkstk_darwin(v3);
  v71 = v66 - v5;
  v6 = sub_10434(&qword_2B018, &qword_1B310);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v70 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v66 - v10;
  v69 = sub_10434(&qword_2B020, &qword_1B318);
  v68 = *(v69 - 8);
  v12 = *(v68 + 64);
  v13 = __chkstk_darwin(v69);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = v66 - v16;
  v17 = sub_10434(&qword_2B028, &qword_1B320);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v78 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = v66 - v21;
  v75 = sub_10434(&qword_2B030, &qword_1B328);
  v74 = *(v75 - 8);
  v22 = *(v74 + 64);
  v23 = __chkstk_darwin(v75);
  v77 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v66 - v25;
  v81 = a1;
  *&v86 = sub_13AF8();
  *(&v86 + 1) = v27;
  sub_13DCC();
  *&v86 = sub_16B34();
  *(&v86 + 1) = v28;
  v87 = v29 & 1;
  v88 = v30;
  sub_10434(&qword_2B040, &qword_1B330);
  sub_150C8(&qword_2B048, &qword_2B040, &qword_1B330);
  v73 = v26;
  sub_16CA4();
  v86 = *a1;
  sub_10434(&qword_2AFE8, &qword_1B2F8);
  v31 = sub_16BF4();
  if (v82 == 1)
  {
    v67 = v3;
    v66[1] = v66;
    __chkstk_darwin(v31);
    sub_16AB4();
    sub_13E28();
    if (!sub_16DC4())
    {
      v32 = [objc_opt_self() mainBundle];
    }

    *&v86 = sub_16B24();
    *(&v86 + 1) = v33;
    v87 = v34 & 1;
    v88 = v35;
    sub_16AB4();
    if (!sub_16DC4())
    {
      v36 = [objc_opt_self() mainBundle];
    }

    v82 = sub_16B24();
    v83 = v37;
    v84 = v38 & 1;
    v85 = v39;
    sub_10434(&qword_2B060, &qword_1B340);
    sub_150C8(&qword_2B068, &qword_2B060, &qword_1B340);
    sub_16C94();
    v86 = a1[1];
    sub_10434(&qword_2AFF0, &qword_1B300);
    sub_16BF4();
    if (v82)
    {
      v40 = 1;
    }

    else
    {
      sub_16AB4();
      if (!sub_16DC4())
      {
        v43 = [objc_opt_self() mainBundle];
      }

      *&v86 = sub_16B24();
      *(&v86 + 1) = v44;
      v87 = v45 & 1;
      v88 = v46;
      sub_13EDC();
      sub_16C84();
      v40 = 0;
    }

    v47 = sub_10434(&qword_2B070, &qword_1B348);
    (*(*(v47 - 8) + 56))(v11, v40, 1, v47);
    v48 = v68;
    v49 = *(v68 + 16);
    v50 = v72;
    v51 = v69;
    v49(v15, v72, v69);
    v52 = v70;
    sub_13E74(v11, v70, &qword_2B018, &qword_1B310);
    v53 = v71;
    v49(v71, v15, v51);
    v54 = sub_10434(&qword_2B078, &qword_1B350);
    sub_13E74(v52, v53 + *(v54 + 48), &qword_2B018, &qword_1B310);
    sub_14E10(v11, &qword_2B018, &qword_1B310);
    v55 = *(v48 + 8);
    v55(v50, v51);
    sub_14E10(v52, &qword_2B018, &qword_1B310);
    v55(v15, v51);
    v42 = v76;
    sub_14AFC(v53, v76, &qword_2B010, &qword_1B308);
    v41 = 0;
    v3 = v67;
  }

  else
  {
    v41 = 1;
    v42 = v76;
  }

  (*(v79 + 56))(v42, v41, 1, v3);
  v56 = v74;
  v57 = *(v74 + 16);
  v58 = v77;
  v59 = v73;
  v60 = v75;
  v57(v77, v73, v75);
  v61 = v78;
  sub_13E74(v42, v78, &qword_2B028, &qword_1B320);
  v62 = v80;
  v57(v80, v58, v60);
  v63 = sub_10434(&qword_2B050, &qword_1B338);
  sub_13E74(v61, &v62[*(v63 + 48)], &qword_2B028, &qword_1B320);
  sub_14E10(v42, &qword_2B028, &qword_1B320);
  v64 = *(v56 + 8);
  v64(v59, v60);
  sub_14E10(v61, &qword_2B028, &qword_1B320);
  return (v64)(v58, v60);
}

uint64_t sub_116E4(__int128 *a1)
{
  v2 = *(*(sub_16974() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_16D54() - 8) + 64);
  __chkstk_darwin();
  sub_16D44();
  sub_13E28();
  if (!sub_16DC4())
  {
    v4 = [objc_opt_self() mainBundle];
  }

  sub_16964();
  sub_16D74();
  v6 = *a1;
  sub_10434(&qword_2AFE8, &qword_1B2F8);
  sub_16C14();
  sub_16CC4();
  sub_10434(&qword_2B090, &qword_1B388);
  sub_16C74();

  sub_13DCC();
  return sub_16C44();
}

__n128 sub_118E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 16);
  sub_10434(&qword_2AFF0, &qword_1B300);
  sub_16C14();
  v7 = v8;
  v9 = *(a1 + 32);
  sub_10434(&qword_2AFE8, &qword_1B2F8);
  sub_16BF4();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = (v11 & 1) == 0;
  v12 = *(a1 + 16);
  sub_16C14();
  result = v9;
  *a2 = 1;
  *(a2 + 8) = v7;
  *(a2 + 24) = v10;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = sub_13F98;
  *(a2 + 48) = v5;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  return result;
}

double sub_11A0C@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 crossFadeDuration];

  sub_16BE4();
  *a1 = v4;
  *(a1 + 8) = v5;
  result = 1.0;
  *(a1 + 16) = xmmword_1B1D0;
  return result;
}

uint64_t sub_11AA8(uint64_t a1, __int128 *a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v7 = a2[2];
  sub_10434(&qword_2AFE8, &qword_1B2F8);
  sub_16BF4();
  v4 = [v3 areTransitionsEnabledForUserWithCatalogPlaybackCapability:v6];

  v8 = *a2;
  result = sub_16BF4();
  if (v4 != v6)
  {
    __chkstk_darwin(result);
    sub_16CB4();
    sub_169E4();
  }

  return result;
}

void sub_11BD8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 != v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    [v3 setTransitionsEnabled:v2];
  }
}

void sub_11C64(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 != *a2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    [v3 setTransitionStyle:v2];
  }
}

uint64_t sub_11CF0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedController];
  v4 = [v3 musicSubscriptionStatus];

  if (v4)
  {
    [v4 capabilities];
  }

  v6 = *(a2 + 32);
  sub_10434(&qword_2AFE8, &qword_1B2F8);
  return sub_16C04();
}

unsigned __int8 *sub_11DB8(unsigned __int8 *result, unsigned __int8 *a2, __int128 *a3)
{
  v3 = *a2;
  if (*result != v3)
  {
    v5 = objc_opt_self();
    v6 = [v5 standardUserDefaults];
    [v6 areTransitionsEnabledForUserWithCatalogPlaybackCapability:v3];

    v8 = *a3;
    sub_10434(&qword_2AFE8, &qword_1B2F8);
    sub_16C04();
    v7 = [v5 standardUserDefaults];
    [v7 transitionStyleForUserWithCatalogPlaybackCapability:v3];

    v9 = a3[1];
    sub_10434(&qword_2AFF0, &qword_1B300);
    return sub_16C04();
  }

  return result;
}

uint64_t sub_11ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_10624(a1);
}

uint64_t sub_11F0C()
{
  sub_16CC4();
  sub_169E4();
}

uint64_t sub_11F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_16AA4();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = sub_10434(&qword_2B118, &qword_1B4F0);
  return sub_12014(a1, a2, a3, a4, (a5 + *(v10 + 44)));
}

uint64_t sub_12014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v69 = a5;
  v9 = sub_10434(&qword_2B120, &qword_1B4F8);
  v10 = *(v9 - 8);
  v59 = v9 - 8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = (&v56 - v12);
  v63 = sub_10434(&qword_2B128, &qword_1B500);
  v14 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v16 = &v56 - v15;
  v68 = sub_10434(&qword_2B130, &qword_1B508);
  v67 = *(v68 - 8);
  v17 = *(v67 + 64);
  __chkstk_darwin(v68);
  v60 = &v56 - v18;
  v19 = sub_10434(&qword_2B138, &qword_1B510);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19);
  v66 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v58 = &v56 - v25;
  __chkstk_darwin(v24);
  v65 = &v56 - v26;
  v64 = sub_10434(&qword_2B140, &qword_1B518);
  v62 = *(v64 - 8);
  v27 = *(v62 + 64);
  v28 = __chkstk_darwin(v64);
  v61 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v57 = &v56 - v30;
  v56 = a1;
  v74 = a1;
  v75 = a2;
  v76 = a3;
  v77 = a4;
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_10434(&qword_2B148, &qword_1B520);
  sub_150C8(&qword_2B150, &qword_2B148, &qword_1B520);
  sub_16BD4();
  v31 = sub_16BA4();
  v79 = a2;
  v80 = a3;
  v81 = a4;
  sub_10434(&qword_2B158, &qword_1B528);
  sub_16C54();
  if (v78 == v56)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  v79 = a2;
  v80 = a3;
  v81 = a4;
  sub_16C54();
  v33 = v78;
  v34 = v13 + *(v59 + 44);
  sub_16AD4();
  *v13 = v31;
  v13[1] = v32;
  v13[2] = 0.0;
  *(v13 + 3) = v33;
  v35 = sub_16AF4();
  KeyPath = swift_getKeyPath();
  sub_14AFC(v13, v16, &qword_2B120, &qword_1B4F8);
  v37 = &v16[*(v63 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_16B04();
  sub_14B64();
  v38 = v60;
  sub_16B64();
  sub_14E10(v16, &qword_2B128, &qword_1B500);
  v39 = v58;
  v40 = &v58[*(v20 + 44)];
  v41 = *(sub_10434(&qword_2B1C0, &qword_1B588) + 28);
  v42 = enum case for Image.Scale.medium(_:);
  v43 = sub_16BB4();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  (*(v67 + 32))(v39, v38, v68);
  v44 = v65;
  sub_14E98(v39, v65);
  v45 = v62;
  v46 = *(v62 + 16);
  v47 = v61;
  v48 = v57;
  v49 = v64;
  v46(v61, v57, v64);
  v50 = v66;
  sub_14F08(v44, v66);
  v51 = v69;
  v46(v69, v47, v49);
  v52 = sub_10434(&qword_2B1C8, &qword_1B5C0);
  v53 = &v51[*(v52 + 48)];
  *v53 = 0;
  v53[8] = 1;
  sub_14F08(v50, &v51[*(v52 + 64)]);
  sub_14E10(v44, &qword_2B138, &qword_1B510);
  v54 = *(v45 + 8);
  v54(v48, v49);
  sub_14E10(v50, &qword_2B138, &qword_1B510);
  return (v54)(v47, v49);
}

uint64_t sub_126B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_127E4(a1);
  sub_13DCC();
  v4 = sub_16B34();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_129D4(a1);
  v11 = sub_16B34();
  v13 = v12;
  v14 = v8 & 1;
  v19 = v8 & 1;
  v16 = v15 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;
  sub_149CC(v4, v6, v14);

  sub_149CC(v11, v13, v16);

  sub_149DC(v11, v13, v16);

  sub_149DC(v4, v6, v19);
}

uint64_t sub_127E4(uint64_t a1)
{
  v2 = sub_16974();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_16D54();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v6);
  if (!a1)
  {
    sub_16D44();
    sub_13E28();
    if (!sub_16DC4())
    {
      v8 = [objc_opt_self() mainBundle];
    }

    goto LABEL_8;
  }

  if (a1 == 1)
  {
    sub_16D44();
    sub_13E28();
    if (!sub_16DC4())
    {
      v7 = [objc_opt_self() mainBundle];
    }

LABEL_8:
    sub_16964();
    return sub_16D74();
  }

  return 0;
}

uint64_t sub_129D4(uint64_t a1)
{
  v2 = sub_16974();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_16D54();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v6);
  if (!a1)
  {
    sub_16D44();
    sub_13E28();
    if (!sub_16DC4())
    {
      v8 = [objc_opt_self() mainBundle];
    }

    goto LABEL_8;
  }

  if (a1 == 1)
  {
    sub_16D44();
    sub_13E28();
    if (!sub_16DC4())
    {
      v7 = [objc_opt_self() mainBundle];
    }

LABEL_8:
    sub_16964();
    return sub_16D74();
  }

  return 0;
}

uint64_t sub_12BCC@<X0>(uint64_t *a1@<X8>)
{
  sub_13E28();
  if (!sub_16DC4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_16BC4();
  *a1 = result;
  return result;
}

uint64_t sub_12CB4@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = sub_16A34();
  v2 = *(v18[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10434(&qword_2B0F0, &qword_1B4E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v14;
  v15[5] = v13;
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v14;
  v18[7] = v13;

  sub_10434(&qword_2B0F8, &qword_1B4E8);
  sub_150C8(&qword_2B100, &qword_2B0F8, &qword_1B4E8);
  sub_16C24();
  sub_16A24();
  sub_150C8(&qword_2B108, &qword_2B0F0, &qword_1B4E0);
  sub_14A44(&qword_2B110, &type metadata accessor for PlainButtonStyle);
  v16 = v18[0];
  sub_16B74();
  (*(v2 + 8))(v5, v16);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_12F7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v63 = a2;
  v9 = sub_10434(&qword_2B0A8, &qword_1B4B8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v55 - v14;
  v15 = sub_16F04();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a3;
  v69 = a1;
  sub_10434(&qword_2B0B0, &qword_1B4C0);
  sub_16BF4();
  sub_16EE4();
  v20 = sub_145B8(v19);
  v22 = v21;
  v23 = *(v16 + 8);
  v23(v19, v15);
  v68 = v20;
  v69 = v22;
  sub_13DCC();
  v59 = sub_16B34();
  v58 = v24;
  v57 = v25;
  v60 = v26;
  v64 = a3;
  v65 = a1;
  result = sub_16C14();
  if (a4 > a5)
  {
    __break(1u);
  }

  else
  {
    v56 = v9;
    v28 = v10;
    v55 = v10;
    v29 = v68;
    v30 = v69;
    v31 = v70;
    v32 = swift_allocObject();
    *(v32 + 16) = *&a3;
    *(v32 + 24) = a1;
    *(v32 + 32) = a4;
    *(v32 + 40) = a5;
    v75 = v29;
    v76 = v30;
    v77 = v31;
    v73 = a4;
    v74 = a5;
    v72 = 0x3FF0000000000000;

    sub_16EF4();
    v33 = sub_145B8(v19);
    v35 = v34;
    v23(v19, v15);
    v68 = v33;
    v69 = v35;
    v68 = sub_16B34();
    v69 = v36;
    LOBYTE(v70) = v37 & 1;
    v71 = v38;
    sub_16EF4();
    v39 = sub_145B8(v19);
    v41 = v40;
    v23(v19, v15);
    v64 = v39;
    v65 = v41;
    v64 = sub_16B34();
    v65 = v42;
    v66 = v43 & 1;
    v67 = v44;
    sub_14978();
    v45 = v61;
    sub_16C34();
    v46 = *(v28 + 16);
    v47 = v62;
    v48 = v56;
    v46(v62, v45, v56);
    v49 = v63;
    v50 = v59;
    v51 = v58;
    *v63 = v59;
    v49[1] = v51;
    v52 = v57 & 1;
    *(v49 + 16) = v57 & 1;
    v49[3] = v60;
    v53 = v49 + *(sub_10434(&qword_2B0C0, &qword_1B4C8) + 48);
    v46(v53, v47, v48);
    sub_149CC(v50, v51, v52);
    v54 = *(v55 + 8);

    v54(v45, v48);
    v54(v47, v48);
    sub_149DC(v50, v51, v52);
  }

  return result;
}

uint64_t sub_13454@<X0>(uint64_t a1@<X8>)
{
  sub_16AB4();
  sub_13E28();
  if (!sub_16DC4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_16B24();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_13538(char a1)
{
  if ((a1 & 1) == 0)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    sub_10434(&qword_2B0B0, &qword_1B4C0);
    sub_16BF4();
    [v1 setCrossFadeDuration:round(v2)];
  }
}

uint64_t sub_135E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  *a1 = sub_16AC4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = sub_10434(&qword_2B098, &qword_1B4A8);
  sub_12F7C(v4, (a1 + *(v7 + 44)), v3, v5, v6);
  v8 = sub_16AE4();
  result = sub_10434(&qword_2B0A0, &qword_1B4B0);
  *(a1 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_13688(uint64_t a1)
{
  v2 = sub_16BB4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_16A54();
}

__n128 sub_13750@<Q0>(__n128 *a1@<X8>)
{
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 musicSubscriptionStatus];

  if (v3)
  {
    v4 = [v3 capabilities];

    v3 = (v4 & 1);
  }

  sub_16BE4();
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  [v6 areTransitionsEnabledForUserWithCatalogPlaybackCapability:v3];

  sub_16BE4();
  v7 = [v5 standardUserDefaults];
  [v7 transitionStyleForUserWithCatalogPlaybackCapability:v3];

  type metadata accessor for MPTransitionStylePreference();
  sub_16BE4();
  result = v9;
  a1->n128_u8[0] = v9.n128_u8[0];
  a1->n128_u64[1] = v9.n128_u64[1];
  a1[1] = v9;
  a1[2].n128_u8[0] = v9.n128_u8[0];
  a1[2].n128_u64[1] = v9.n128_u64[1];
  return result;
}

__n128 sub_138DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_138F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1394C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_139E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_13A3C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_13A8C()
{
  v3 = **(v0 + 16);
  v2 = *(v0 + 24);
  sub_10434(&qword_2AFE8, &qword_1B2F8);
  return sub_16C04();
}

uint64_t sub_13AF8()
{
  v0 = *(*(sub_16974() - 8) + 64);
  (__chkstk_darwin)();
  v1 = *(*(sub_16D54() - 8) + 64);
  v2 = (__chkstk_darwin)();
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v12 = &_s9CoreMediaON;
  v4 = sub_13FB0();
  v13 = v4;
  LOBYTE(v11[0]) = 1;
  v5 = sub_16984();
  sub_14004(v11);
  if (v5)
  {
    v12 = &_s9CoreMediaON;
    v13 = v4;
    LOBYTE(v11[0]) = 0;
    v6 = sub_16984();
    sub_14004(v11);
    if (v6)
    {
      sub_16D44();
      sub_13E28();
      if (!sub_16DC4())
      {
        v7 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      sub_16D44();
      sub_13E28();
      if (!sub_16DC4())
      {
        v9 = [objc_opt_self() mainBundle];
      }
    }
  }

  else
  {
    sub_16D44();
    sub_13E28();
    if (!sub_16DC4())
    {
      v8 = [objc_opt_self() mainBundle];
    }
  }

  sub_16964();
  return sub_16D74();
}

unint64_t sub_13DCC()
{
  result = qword_2B038;
  if (!qword_2B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B038);
  }

  return result;
}

unint64_t sub_13E28()
{
  result = qword_2B058;
  if (!qword_2B058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2B058);
  }

  return result;
}

uint64_t sub_13E74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10434(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_13EDC()
{
  result = qword_2B080;
  if (!qword_2B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B080);
  }

  return result;
}

uint64_t sub_13F30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_16A84();
  *a1 = result & 1;
  return result;
}

unint64_t sub_13FB0()
{
  result = qword_2B088;
  if (!qword_2B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B088);
  }

  return result;
}

uint64_t sub_14004(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_14050(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1405C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_140B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1411C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_141B4()
{
  sub_139E0(&qword_2AFD0, &qword_1B2E8);
  sub_150C8(&qword_2B008, &qword_2AFD0, &qword_1B2E8);
  return swift_getOpaqueTypeConformance2();
}

void *sub_14298(uint64_t a1)
{
  v2 = sub_16ED4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10434(&qword_2B0D8, &qword_1B4D8);
    v10 = sub_16E14();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_14A44(&qword_2B0E0, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v18 = sub_16D24();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_14A44(&qword_2B0E8, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v25 = sub_16D34();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_145B8(uint64_t a1)
{
  v25 = a1;
  v1 = sub_16EB4();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_16E94();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v24);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_16F14();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_16F34();
  v22[1] = v14;
  v22[2] = v13;
  sub_10434(&qword_2B0C8, &qword_1B4D0);
  v15 = sub_16ED4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B1E0;
  sub_16EC4();
  sub_14298(v19);
  swift_setDeallocating();
  (*(v16 + 8))(v19 + v18, v15);
  swift_deallocClassInstance();
  sub_16E84();
  sub_16EA4();
  sub_16904();

  (*(v26 + 8))(v4, v27);
  (*(v5 + 8))(v8, v24);
  sub_14A44(&qword_2B0D0, &type metadata accessor for Duration.UnitsFormatStyle);
  v20 = v23;
  sub_16F24();
  (*(v9 + 8))(v12, v20);
  return v28;
}

uint64_t sub_14930()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

double sub_14968(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_13538(a1);
  return result;
}

unint64_t sub_14978()
{
  result = qword_2B0B8;
  if (!qword_2B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B0B8);
  }

  return result;
}

uint64_t sub_149CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_149DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_149EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_14A2C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_11F0C();
}

uint64_t sub_14A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_126B4(v1[2], a1);
}

uint64_t sub_14A98@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_12BCC(a1);
}

uint64_t sub_14AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_16A64();
  *a1 = result;
  return result;
}

uint64_t sub_14AD0(uint64_t *a1)
{
  v1 = *a1;

  return sub_16A74();
}

uint64_t sub_14AFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10434(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_14B64()
{
  result = qword_2B160;
  if (!qword_2B160)
  {
    sub_139E0(&qword_2B128, &qword_1B500);
    sub_14C1C();
    sub_150C8(&qword_2B1B0, &qword_2B1B8, &qword_1B580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B160);
  }

  return result;
}

unint64_t sub_14C1C()
{
  result = qword_2B168;
  if (!qword_2B168)
  {
    sub_139E0(&qword_2B120, &qword_1B4F8);
    sub_14CD4();
    sub_150C8(&qword_2B1A0, &qword_2B1A8, &qword_1B578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B168);
  }

  return result;
}

unint64_t sub_14CD4()
{
  result = qword_2B170;
  if (!qword_2B170)
  {
    sub_139E0(&qword_2B178, &qword_1B560);
    sub_14D8C();
    sub_150C8(&qword_2B190, &qword_2B198, &qword_1B570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B170);
  }

  return result;
}

unint64_t sub_14D8C()
{
  result = qword_2B180;
  if (!qword_2B180)
  {
    sub_139E0(&qword_2B188, &qword_1B568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B180);
  }

  return result;
}

uint64_t sub_14E10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10434(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_14E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10434(&qword_2B138, &qword_1B510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10434(&qword_2B138, &qword_1B510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F78()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_10434(&qword_2B158, &qword_1B528);
  return sub_16C64();
}

unint64_t sub_14FE4()
{
  result = qword_2B1D0;
  if (!qword_2B1D0)
  {
    sub_139E0(&qword_2B0A0, &qword_1B4B0);
    sub_150C8(&qword_2B1D8, &qword_2B1E0, &qword_1B5C8);
    sub_150C8(&qword_2B1E8, &qword_2B1F0, qword_1B5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B1D0);
  }

  return result;
}

uint64_t sub_150C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_139E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_15110()
{
  sub_139E0(&qword_2B0F0, &qword_1B4E0);
  sub_16A34();
  sub_150C8(&qword_2B108, &qword_2B0F0, &qword_1B4E0);
  sub_14A44(&qword_2B110, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t _s9CoreMediaOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9CoreMediaOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_15380()
{
  result = qword_2B1F8;
  if (!qword_2B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B1F8);
  }

  return result;
}

Swift::Int sub_153EC()
{
  v1 = *v0;
  sub_16E54();
  sub_16E64(v1);
  return sub_16E74();
}

Swift::Int sub_15460()
{
  v1 = *v0;
  sub_16E54();
  sub_16E64(v1);
  return sub_16E74();
}

const char *sub_154B8()
{
  if (*v0)
  {
    return "BufferedAirPlayAudioPipelineSenderSideMixing";
  }

  else
  {
    return "BufferedAirPlaySpeedRamps";
  }
}

unint64_t sub_15520()
{
  result = qword_2B298;
  if (!qword_2B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B298);
  }

  return result;
}

uint64_t sub_15590(uint64_t a1, uint64_t a2)
{
  v3 = sub_16DE4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_169D4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = [objc_allocWithZone(PSSpecifier) init];
  [v7 setProperty:a2 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_16DD4();
  sub_169B4();
  return sub_16994();
}

uint64_t sub_156D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_169D4();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_16A04();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v11 = sub_16954();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = *(*(sub_10434(&qword_2B2B8, &qword_1B760) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v15 = sub_16944();
  v4[21] = v15;
  v16 = *(v15 - 8);
  v4[22] = v16;
  v17 = *(v16 + 64) + 15;
  v4[23] = swift_task_alloc();
  sub_16DA4();
  v4[24] = sub_16D94();
  v19 = sub_16D84();

  return _swift_task_switch(sub_15924, v19, v18);
}

uint64_t sub_15924()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[7];

  sub_16CF4();
  sub_16914();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v14 = v0[15];
    v15 = v0[7];
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    sub_16CE4();
    v0[2] = sub_16924();
    v0[3] = v16;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_13DCC();
    v17 = sub_16DF4();

    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = -v19;
      v22 = v17 + 40;
      v23 = &_swiftEmptyArrayStorage;
      do
      {
        v24 = (v22 + 16 * v20++);
        while (1)
        {
          if ((v20 - 1) >= *(v17 + 16))
          {
            __break(1u);
            return result;
          }

          v25 = *(v24 - 1);
          v26 = *v24;
          v27 = HIBYTE(*v24) & 0xF;
          if ((*v24 & 0x2000000000000000) == 0)
          {
            v27 = v25 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v25 != 0x6C7070612E6D6F63 || v26 != 0xEF636973754D2E65)
            {
              v29 = *(v24 - 1);
              v30 = *v24;
              result = sub_16E44();
              if ((result & 1) == 0)
              {
                break;
              }
            }
          }

          ++v20;
          v24 += 2;
          if (v21 + v20 == 1)
          {
            goto LABEL_23;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v72 = v23;
        if ((result & 1) == 0)
        {
          result = sub_16470(0, *(v23 + 2) + 1, 1);
        }

        v32 = *(v23 + 2);
        v31 = *(v23 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v35 = v32 + 1;
          v71 = v32;
          result = sub_16470((v31 > 1), v32 + 1, 1);
          v32 = v71;
          v33 = v35;
          v23 = v72;
        }

        *(v23 + 2) = v33;
        v34 = &v23[16 * v32];
        *(v34 + 4) = v25;
        *(v34 + 5) = v26;
        v22 = v17 + 40;
      }

      while (v21 + v20);
    }

    else
    {
      v23 = &_swiftEmptyArrayStorage;
    }

LABEL_23:

    v36 = *(v23 + 2);
    if (v36)
    {
      goto LABEL_24;
    }

    v53 = v0[23];
    sub_16934();
    if (v54)
    {
      v55 = v0[9];

      v56 = sub_16D64();

      [v55 setSpecifierIdentifierToScrollAndHighlight:v56];
    }

    else
    {
      v36 = *(v23 + 2);
      if (v36)
      {
LABEL_24:
        v37 = (v0[11] + 8);
        do
        {
          v39 = *(v23 + 4);
          v38 = *(v23 + 5);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v36 - 1) > *(v23 + 3) >> 1)
          {
            v23 = sub_1659C(isUniquelyReferenced_nonNull_native, v36, 1, v23);
          }

          sub_16710((v23 + 32));
          v41 = *(v23 + 2);
          memmove(v23 + 32, v23 + 48, 16 * v41 - 16);
          *(v23 + 2) = v41 - 1;
          v42._rawValue = &off_254A8;
          v74._countAndFlagsBits = v39;
          v74._object = v38;
          v43 = sub_16E34(v42, v74);

          if (v43 > 3)
          {
            if (v43 >= 8)
            {
              break;
            }
          }

          else if (v43 < 0)
          {
            break;
          }

          v44 = v0[8];
          v45 = sub_16D64();

          v46 = [v44 specifierForID:v45];

          if (!v46)
          {
            break;
          }

          v47 = v0[15];
          v48 = v0[12];
          v49 = v0[10];
          v50 = v0[8];
          v51 = sub_16D64();
          [v46 setProperty:v50 forKey:v51];

          v52 = v46;
          sub_169C4();
          sub_16764(&qword_2B2C0, &type metadata accessor for PreferencesControllerRecipe);
          sub_169F4();

          (*v37)(v48, v49);
          v36 = *(v23 + 2);
        }

        while (v36);

        goto LABEL_37;
      }
    }

LABEL_37:
    v58 = v0[22];
    v57 = v0[23];
    v59 = v0[21];
    v61 = v0[14];
    v60 = v0[15];
    v62 = v0[13];
    v63 = v0[6];
    sub_16D04();
    (*(v61 + 8))(v60, v62);
    (*(v58 + 8))(v57, v59);
    goto LABEL_38;
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v13 = v0[6];
  v12 = v0[7];
  sub_166A8(v0[20]);
  sub_16CE4();
  sub_16D04();
  (*(v11 + 8))(v9, v10);
LABEL_38:
  v64 = v0[23];
  v65 = v0[19];
  v66 = v0[20];
  v68 = v0[15];
  v67 = v0[16];
  v69 = v0[12];

  v70 = v0[1];

  return v70();
}

uint64_t sub_15FF0()
{
  v1 = sub_10434(&qword_2B2A0, &qword_1B748);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_169A4();
  sub_16764(&qword_2B2A8, &type metadata accessor for PreferencesControllerView);
  v9 = v6;
  v10 = v7;
  sub_16D14();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  sub_1640C();
  v12 = v9;
  v13 = v10;
  sub_16CD4();
  return (*(v2 + 8))(v5, v1);
}

id sub_161C0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MusicSettingsController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1621C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_16264(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_16318;

  return sub_156D4(a1, a2, v7, v6);
}

uint64_t sub_16318()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1640C()
{
  result = qword_2B2B0;
  if (!qword_2B2B0)
  {
    sub_139E0(&qword_2B2A0, &qword_1B748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B2B0);
  }

  return result;
}

char *sub_16470(char *a1, int64_t a2, char a3)
{
  result = sub_16490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_16490(char *result, int64_t a2, char a3, char *a4)
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
    sub_10434(&qword_2B2C8, &qword_1B768);
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

char *sub_1659C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10434(&qword_2B2C8, &qword_1B768);
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

uint64_t sub_166A8(uint64_t a1)
{
  v2 = sub_10434(&qword_2B2B8, &qword_1B760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16764(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_167B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_167BC(uint64_t *a1, int a2)
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

uint64_t sub_16804(uint64_t result, int a2, int a3)
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

uint64_t sub_16850()
{
  sub_139E0(&qword_2B2A0, &qword_1B748);
  sub_1640C();
  return swift_getOpaqueTypeConformance2();
}