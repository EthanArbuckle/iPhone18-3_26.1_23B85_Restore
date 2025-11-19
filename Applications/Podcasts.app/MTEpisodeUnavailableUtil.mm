@interface MTEpisodeUnavailableUtil
+ (id)alertTitleForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4;
+ (id)longReasonTextForNoInternet;
+ (id)longStringForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4;
+ (id)stringForUnavailableReason:(int64_t)a3;
+ (int64_t)unavailableReasonForEpisode:(id)a3;
+ (int64_t)unavailableReasonForServerEpisode:(id)a3;
+ (void)promptBeforePerformingIntentAsBufferedAirPlayForRoute:(id)a3 provider:(id)a4 queueStatus:(unint64_t)a5 completion:(id)a6;
- (BOOL)showDialogForReason:(int64_t)a3 podcastTitle:(id)a4 completion:(id)a5;
- (void)_presentErrorDialogWithTitle:(id)a3 message:(id)a4 handler:(id)a5;
@end

@implementation MTEpisodeUnavailableUtil

+ (int64_t)unavailableReasonForEpisode:(id)a3
{
  v3 = a3;
  if ([v3 isRestricted])
  {
    v4 = 1;
  }

  else if ([v3 feedDeleted] && !objc_msgSend(v3, "isDownloaded"))
  {
    v4 = 3;
  }

  else if (([v3 isDownloaded] & 1) != 0 || (+[MTReachability sharedInstance](MTReachability, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isReachable"), v5, v6))
  {
    if ([v3 isEntitled])
    {
      v4 = 0;
    }

    else
    {
      v4 = 12;
    }
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (int64_t)unavailableReasonForServerEpisode:(id)a3
{
  v3 = a3;
  if ([v3 isRestricted])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[MTReachability sharedInstance];
    v6 = [v5 isReachable];

    if (v6)
    {
      if ([v3 priceTypeIsPSUB])
      {
        v4 = 12;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

+ (id)alertTitleForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 <= 6)
  {
    if (a3 > 4)
    {
      v7 = +[NSBundle mainBundle];
      if (a3 == 5)
      {
        v8 = v7;
        v9 = @"CANNOT_BE_PLAYED_TITLE";
      }

      else
      {
        v8 = v7;
        v9 = @"CANT_BE_PLAYED_ON_DEVICE";
      }

      goto LABEL_26;
    }

    if (a3 == 3)
    {
      if (![v5 length])
      {
        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"EPISODE_FEEDDELETED_TITLE_NO_PODCAST";
        goto LABEL_26;
      }

      v10 = +[NSBundle mainBundle];
      v8 = v10;
      v11 = @"EPISODE_FEEDDELETED_TITLE";
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_23;
      }

      if (![v5 length])
      {
        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"EPISODE_UNAVAILABLE_TITLE_NO_PODCAST";
        goto LABEL_26;
      }

      v10 = +[NSBundle mainBundle];
      v8 = v10;
      v11 = @"EPISODE_UNAVAILABLE_TITLE";
    }

    v12 = [v10 localizedStringForKey:v11 value:&stru_1004F3018 table:0];
    v13 = [NSString localizedStringWithFormat:v12, v6];

    goto LABEL_27;
  }

  if (a3 <= 8)
  {
    v7 = +[NSBundle mainBundle];
    if (a3 == 7)
    {
      v8 = v7;
      v9 = @"SUBSCRIPTION_REQUIRED_LICENSE_ERROR";
    }

    else
    {
      v8 = v7;
      v9 = @"LICENSE_SLOT_ERROR_TITLE";
    }

    goto LABEL_26;
  }

  if (a3 == 9)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"LICENSE_DEVICES_ERROR_TITLE";
    goto LABEL_26;
  }

  if (a3 == 10)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"WATCH_CANNOT_PLAY_VIDEOS_TITLE";
    goto LABEL_26;
  }

  if (a3 != 12)
  {
LABEL_23:
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"EPISODE_UNAVAILABLE";
    goto LABEL_26;
  }

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  v9 = @"SUBSCRIBE_TO_LISTEN";
LABEL_26:
  v13 = [v7 localizedStringForKey:v9 value:&stru_1004F3018 table:0];
LABEL_27:

  return v13;
}

+ (id)stringForUnavailableReason:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x33F8) != 0)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Unavailable";
LABEL_4:
      v7 = [v4 localizedStringForKey:v6 value:&stru_1004F3018 table:0];
LABEL_5:
      v3 = v7;

      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Restricted";
      goto LABEL_4;
    }

    if (a3 == 2)
    {
      v5 = +[MTReachability sharedInstance];
      v7 = [v5 reasonTextForNoInternet];
      goto LABEL_5;
    }
  }

LABEL_6:

  return v3;
}

+ (id)longStringForUnavailableReason:(int64_t)a3 podcastTitle:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 8)
  {
    if (a3 <= 11)
    {
      if (a3 == 9)
      {
        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"LICENSE_DEVICES_ERROR";
      }

      else
      {
        if (a3 != 10)
        {
          goto LABEL_19;
        }

        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"WATCH_CANNOT_PLAY_VIDEOS_MESSAGE";
      }

      goto LABEL_18;
    }

    if (a3 != 12)
    {
      if (a3 == 13)
      {
        v11 = MGGetBoolAnswer();
        v12 = @"WIFI_LICENSE_CORRUPTION_ERROR";
        if (v11)
        {
          v12 = @"WLAN_LICENSE_CORRUPTION_ERROR";
        }

        v13 = v12;
        v14 = +[NSBundle mainBundle];
        v7 = [v14 localizedStringForKey:v13 value:&stru_1004F3018 table:0];
      }

      goto LABEL_19;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"SUBSCRIPTION_REQUIRED";
LABEL_18:
    v7 = [v8 localizedStringForKey:v10 value:&stru_1004F3018 table:0];

    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"ALERT_MESSAGE_RESTRICTED";
    goto LABEL_18;
  }

  if (a3 != 2)
  {
    if (a3 != 8)
    {
      goto LABEL_19;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"LICENSE_SLOT_ERROR";
    goto LABEL_18;
  }

  v7 = [a1 longReasonTextForNoInternet];
LABEL_19:

  return v7;
}

+ (id)longReasonTextForNoInternet
{
  v2 = +[MTReachability sharedInstance];
  v3 = [v2 reasonForNoInternet];

  if (v3 == 1)
  {
    v6 = MGGetBoolAnswer();
    v7 = @"EPISODE_AIRPLANE_MODE_WIFI";
    v8 = @"EPISODE_AIRPLANE_MODE_WLAN";
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v6 = MGGetBoolAnswer();
    v7 = @"EPISODE_SYSTEM_CELLULAR_DISABLED_WIFI";
    v8 = @"EPISODE_SYSTEM_CELLULAR_DISABLED_WLAN";
LABEL_7:
    if (v6)
    {
      v7 = v8;
    }

    v9 = v7;
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v9 value:&stru_1004F3018 table:0];

    goto LABEL_10;
  }

  if (v3 == 3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"EPISODE_NO_INTERNET" value:&stru_1004F3018 table:0];
LABEL_10:

    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (BOOL)showDialogForReason:(int64_t)a3 podcastTitle:(id)a4 completion:(id)a5
{
  v8 = a4;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000DE46C;
  v24[3] = &unk_1004DBC38;
  v9 = a5;
  v25 = v9;
  v26 = a3;
  v10 = objc_retainBlock(v24);
  v11 = 0;
  v12 = 0;
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        goto LABEL_11;
      case 1:
        v18 = +[PFRestrictionsController shared];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000DE48C;
        v22[3] = &unk_1004D9870;
        v23 = v10;
        [v18 presentAlertIfNeeded:0 presentationCompletion:0 actionCompletion:v22];

        v11 = 0;
        v12 = 1;
        v13 = v23;
        break;
      case 2:
        v17 = +[MTReachability sharedInstance];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000DE4A0;
        v19[3] = &unk_1004DBC60;
        v20 = v9;
        v21 = 2;
        v12 = [v17 showInternetUnreachableDialogWithAcknowledmentBlock:v19];

        v11 = 0;
        v13 = v20;
        break;
      default:
        goto LABEL_5;
    }
  }

  else
  {
    if ((a3 - 3) >= 8 && a3 != 13)
    {
      goto LABEL_5;
    }

    v13 = [objc_opt_class() alertTitleForUnavailableReason:a3 podcastTitle:v8];
    v11 = [objc_opt_class() longStringForUnavailableReason:a3 podcastTitle:v8];
    [(MTEpisodeUnavailableUtil *)self _presentErrorDialogWithTitle:v13 message:v11 handler:v10];
    v12 = 1;
  }

LABEL_5:
  v14 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = v11;
    if (!v11)
    {
      v15 = [objc_opt_class() longStringForUnavailableReason:a3 podcastTitle:v8];
    }

    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Episode Unavailable (%@)", buf, 0xCu);
    if (!v11)
    {
    }
  }

LABEL_11:
  return v12;
}

- (void)_presentErrorDialogWithTitle:(id)a3 message:(id)a4 handler:(id)a5
{
  v7 = a5;
  v11 = [MTAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1004F3018 table:0];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:v7];

  [v11 addAction:v10];
  [v11 presentAnimated:1 completion:0];
}

+ (void)promptBeforePerformingIntentAsBufferedAirPlayForRoute:(id)a3 provider:(id)a4 queueStatus:(unint64_t)a5 completion:(id)a6
{
  v52 = a3;
  v51 = a4;
  v8 = a6;
  v9 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Cancel" value:&stru_1004F3018 table:0];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000DEDB0;
  v55[3] = &unk_1004DB318;
  v12 = v8;
  v56 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:1 handler:v55];

  [v9 addAction:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Play" value:&stru_1004F3018 table:0];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000DEDC4;
  v53[3] = &unk_1004DB318;
  v16 = v12;
  v54 = v16;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v53];

  [v9 addAction:v17];
  [v9 setPreferredAction:v17];
  if (isTV())
  {
    (*(v16 + 2))(v16, 1);
    v18 = 0;
    v19 = 0;
    v21 = v51;
    v20 = v52;
LABEL_72:
    [v9 setTitle:v19];
    [v9 setMessage:v18];
    v49 = +[UIViewController mt_rootViewController];
    [v49 presentViewController:v9 animated:1 completion:0];

    goto LABEL_73;
  }

  v21 = v51;
  if (isPad())
  {
    v20 = v52;
    if ([v52 isHomePodRoute])
    {
      v22 = +[NSBundle mainBundle];
      v23 = v22;
      v24 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_HOMEPOD_IPAD";
    }

    else
    {
      v30 = [v52 isAppleTVRoute];
      v22 = +[NSBundle mainBundle];
      v23 = v22;
      if (v30)
      {
        v24 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_APPLETV_IPAD";
      }

      else
      {
        v24 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_DEVICE_IPAD";
      }
    }

    v19 = [v22 localizedStringForKey:v24 value:&stru_1004F3018 table:0];

    v18 = 0;
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v41 = +[NSBundle mainBundle];
        v38 = v41;
        v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_SINGLE_QUEUE_ITEM_IPAD";
      }

      else
      {
        if (a5 != 3)
        {
          if (a5 == 4)
          {
            if ([v52 isHomePodRoute])
            {
              v35 = +[NSBundle mainBundle];
              v36 = v35;
              v37 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_HOMEPOD_IPAD";
            }

            else
            {
              v44 = [v52 isAppleTVRoute];
              v35 = +[NSBundle mainBundle];
              v36 = v35;
              if (v44)
              {
                v37 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_APPLETV_IPAD";
              }

              else
              {
                v37 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_DEVICE_IPAD";
              }
            }

            v48 = [v35 localizedStringForKey:v37 value:&stru_1004F3018 table:0];

            v18 = 0;
            v19 = v48;
          }

          goto LABEL_72;
        }

        v41 = +[NSBundle mainBundle];
        v38 = v41;
        v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_MULTIPLE_QUEUE_ITEMS_IPAD";
      }

      goto LABEL_57;
    }

    if (a5)
    {
      if (a5 != 1)
      {
        goto LABEL_72;
      }

      v38 = +[NSBundle mainBundle];
      if (v51)
      {
        v39 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOW_PLAYING_ITEM_IPAD";
LABEL_52:
        v43 = [v38 localizedStringForKey:v39 value:&stru_1004F3018 table:0];
        [NSString localizedStringWithFormat:v43, v51];
        v18 = LABEL_70:;

        goto LABEL_71;
      }

      v45 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOW_PLAYING_ITEM_IPAD_NO_PROVIDER";
      goto LABEL_69;
    }

    goto LABEL_73;
  }

  v25 = isTouch();
  v20 = v52;
  v26 = [v52 isHomePodRoute];
  if (!v25)
  {
    if (v26)
    {
      v31 = +[NSBundle mainBundle];
      v32 = v31;
      v33 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_HOMEPOD_IPHONE";
    }

    else
    {
      v40 = [v52 isAppleTVRoute];
      v31 = +[NSBundle mainBundle];
      v32 = v31;
      if (v40)
      {
        v33 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_APPLETV_IPHONE";
      }

      else
      {
        v33 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_DEVICE_IPHONE";
      }
    }

    v19 = [v31 localizedStringForKey:v33 value:&stru_1004F3018 table:0];

    v18 = 0;
    if (a5 <= 1)
    {
      if (a5)
      {
        if (a5 != 1)
        {
          goto LABEL_72;
        }

        v38 = +[NSBundle mainBundle];
        if (v51)
        {
          v39 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOW_PLAYING_ITEM_IPHONE";
          goto LABEL_52;
        }

        v45 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOW_PLAYING_ITEM_IPHONE_NO_PROVIDER";
        goto LABEL_69;
      }

      goto LABEL_73;
    }

    if (a5 == 2)
    {
      v41 = +[NSBundle mainBundle];
      v38 = v41;
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_SINGLE_QUEUE_ITEM_IPHONE";
      goto LABEL_57;
    }

    if (a5 == 3)
    {
      v41 = +[NSBundle mainBundle];
      v38 = v41;
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_MULTIPLE_QUEUE_ITEMS_IPHONE";
      goto LABEL_57;
    }

    if (a5 != 4)
    {
      goto LABEL_72;
    }

    if ([v52 isHomePodRoute])
    {
      v41 = +[NSBundle mainBundle];
      v38 = v41;
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_HOMEPOD_IPHONE";
      goto LABEL_57;
    }

    v47 = [v52 isAppleTVRoute];
    v38 = +[NSBundle mainBundle];
    if (v47)
    {
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_APPLETV_IPHONE";
    }

    else
    {
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_DEVICE_IPHONE";
    }

LABEL_76:
    v41 = v38;
    goto LABEL_57;
  }

  if (v26)
  {
    v27 = +[NSBundle mainBundle];
    v28 = v27;
    v29 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_HOMEPOD_IPOD";
  }

  else
  {
    v34 = [v52 isAppleTVRoute];
    v27 = +[NSBundle mainBundle];
    v28 = v27;
    if (v34)
    {
      v29 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_APPLETV_IPOD";
    }

    else
    {
      v29 = @"SHARED_QUEUE_UNSUPPORTED_TITLE_DEVICE_IPOD";
    }
  }

  v19 = [v27 localizedStringForKey:v29 value:&stru_1004F3018 table:0];

  v18 = 0;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v41 = +[NSBundle mainBundle];
      v38 = v41;
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_SINGLE_QUEUE_ITEM_IPOD";
      goto LABEL_57;
    }

    if (a5 == 3)
    {
      v41 = +[NSBundle mainBundle];
      v38 = v41;
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_MULTIPLE_QUEUE_ITEMS_IPOD";
      goto LABEL_57;
    }

    if (a5 != 4)
    {
      goto LABEL_72;
    }

    if ([v52 isHomePodRoute])
    {
      v41 = +[NSBundle mainBundle];
      v38 = v41;
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_HOMEPOD_IPOD";
LABEL_57:
      v18 = [v41 localizedStringForKey:v42 value:&stru_1004F3018 table:0];
LABEL_71:

      goto LABEL_72;
    }

    v46 = [v52 isAppleTVRoute];
    v38 = +[NSBundle mainBundle];
    if (v46)
    {
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_APPLETV_IPOD";
    }

    else
    {
      v42 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOT_FOUND_DEVICE_IPOD";
    }

    goto LABEL_76;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      goto LABEL_72;
    }

    v38 = +[NSBundle mainBundle];
    if (v51)
    {
      v39 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOW_PLAYING_ITEM_IPOD";
      goto LABEL_52;
    }

    v45 = @"SHARED_QUEUE_UNSUPPORTED_MESSAGE_NOW_PLAYING_ITEM_IPOD_NO_PROVIDER";
LABEL_69:
    v43 = [v38 localizedStringForKey:v45 value:&stru_1004F3018 table:0];
    [NSString localizedStringWithFormat:v43, 0];
    goto LABEL_70;
  }

LABEL_73:
}

@end