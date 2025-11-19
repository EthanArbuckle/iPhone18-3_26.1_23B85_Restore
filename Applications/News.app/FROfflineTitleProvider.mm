@interface FROfflineTitleProvider
+ (id)offlineAcceptActionTitleWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5;
+ (id)offlineIgnoreActionTitleWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5;
+ (id)offlineMessageWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5;
+ (id)offlineTitleWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5;
@end

@implementation FROfflineTitleProvider

+ (id)offlineTitleWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a4 <= 7)
  {
    if (a4 <= 3)
    {
      if (a4 > 1)
      {
        if (a4 == 2)
        {
          if ((a3 - 1) < 5 || a3 == 6)
          {
            v10 = +[NSBundle mainBundle];
            v11 = v10;
            v12 = @"Couldn’t Load Stories";
            goto LABEL_56;
          }
        }

        else if ((a3 - 1) < 5 || a3 == 6)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Related Stories Unavailable";
          goto LABEL_56;
        }
      }

      else if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_59;
        }

        if ((a3 - 1) <= 5)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Couldn’t Reload";
LABEL_56:
          v13 = [v10 localizedStringForKey:v12 value:&stru_1000C67A8 table:0];
          goto LABEL_57;
        }
      }

      else
      {
        if ((a3 - 1) < 5)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Feed Unavailable";
          goto LABEL_56;
        }

        if (a3 == 6)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"This feed isn’t available.";
          goto LABEL_56;
        }
      }

      goto LABEL_58;
    }

    if ((a4 - 4) >= 2)
    {
      if (a4 != 6)
      {
        if (a4 != 7)
        {
          goto LABEL_59;
        }

        if ((a3 - 1) < 5 || a3 == 6)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Content Unavailable";
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      if ((a3 - 1) >= 5)
      {
        if (a3 != 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v14 = [v8 objectForKey:@"feedType"];
        v15 = [v14 isEqualToString:@"channel"];

        if (v15)
        {
          goto LABEL_45;
        }

        v16 = [v9 objectForKey:@"feedType"];
        v17 = [v16 isEqualToString:@"topic"];

        if (v17)
        {
          goto LABEL_55;
        }
      }

      v18 = [v9 objectForKey:@"feedType"];
      v19 = [v18 isEqualToString:@"channel"];

      if (!v19)
      {
        v20 = [v9 objectForKey:@"feedType"];
        v21 = [v20 isEqualToString:@"topic"];

        if (!v21)
        {
          goto LABEL_58;
        }

LABEL_55:
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"FRTopicUnavailableAlertTitle";
        goto LABEL_56;
      }

LABEL_45:
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"FRChannelUnavailableAlertTitle";
      goto LABEL_56;
    }

LABEL_20:
    v11 = [NUErrorMessageFactory errorMessageForArticleViewWithOfflineReason:a3];
    v13 = [v11 title];
LABEL_57:
    v5 = v13;

    goto LABEL_59;
  }

  if (a4 <= 10)
  {
    if ((a4 - 9) >= 2)
    {
      if (a4 != 8)
      {
        goto LABEL_59;
      }

      if ((a3 - 1) < 5 || a3 == 6)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Search Unavailable";
        goto LABEL_56;
      }

      goto LABEL_58;
    }

    goto LABEL_20;
  }

  if ((a4 - 13) < 2)
  {
    if ((a3 - 1) <= 5)
    {
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"Subscription Unavailable";
      goto LABEL_56;
    }
  }

  else if (a4 == 11)
  {
    if ((a3 - 1) < 5 || a3 == 6)
    {
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"Apple News Unavailable";
      goto LABEL_56;
    }
  }

  else
  {
    if (a4 != 12)
    {
      goto LABEL_59;
    }

    if ((a3 - 1) <= 5)
    {
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"Can’t Open";
      goto LABEL_56;
    }
  }

LABEL_58:
  v5 = 0;
LABEL_59:

  return v5;
}

+ (id)offlineMessageWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a4 <= 6)
  {
    if (a4 > 2)
    {
      if ((a4 - 4) >= 2)
      {
        if (a4 != 3)
        {
          if (a4 != 6)
          {
            goto LABEL_46;
          }

          v5 = 0;
          if (a3 > 3)
          {
            if ((a3 - 4) >= 2)
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((a3 - 1) >= 2)
            {
              goto LABEL_25;
            }

            v13 = [v8 objectForKey:@"feedType"];
            v14 = [v13 isEqualToString:@"topic"];

            if (v14)
            {
              v10 = +[NSBundle mainBundle];
              v11 = v10;
              v12 = @"Apple News isn’t connected to the internet. Go online to see this topic.";
              goto LABEL_44;
            }

            v17 = [v9 objectForKey:@"feedType"];
            v18 = [v17 isEqualToString:@"channel"];

            if (v18)
            {
              v10 = +[NSBundle mainBundle];
              v11 = v10;
              v12 = @"Apple News isn’t connected to the internet. Go online to see this channel.";
              goto LABEL_44;
            }
          }

          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"FROpenChannelRequiresLatestVersionOS";
          goto LABEL_44;
        }

        v5 = 0;
        if (a3 <= 3)
        {
          if ((a3 - 1) < 2)
          {
            v10 = +[NSBundle mainBundle];
            v11 = v10;
            v12 = @"Apple News isn’t connected to the internet. Go online to see related stories.";
            goto LABEL_44;
          }

          goto LABEL_25;
        }

        if ((a3 - 4) < 2)
        {
          v11 = [[TSAlertArticleUnavailable alloc] initWithBlockedReason:1];
          v15 = [v11 message];
          goto LABEL_45;
        }

LABEL_37:
        if (a3 != 6)
        {
          goto LABEL_46;
        }

        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Sorry, Apple News is no longer fully supported on older devices.";
        goto LABEL_44;
      }

      goto LABEL_21;
    }

    if (a4 > 2)
    {
      goto LABEL_46;
    }

LABEL_23:
    v5 = 0;
    if (a3 > 3)
    {
      goto LABEL_36;
    }

    if ((a3 - 1) >= 2)
    {
      goto LABEL_25;
    }

LABEL_29:
    v10 = +[NSBundle mainBundle];
    v11 = v10;
    v12 = @"Apple News isn’t connected to the internet.";
    goto LABEL_44;
  }

  if (a4 <= 10)
  {
    if ((a4 - 9) >= 2)
    {
      if (a4 == 7)
      {
        v5 = 0;
        if (a3 <= 3)
        {
          if ((a3 - 1) < 2)
          {
            v10 = +[NSBundle mainBundle];
            v11 = v10;
            v12 = @"Apple News isn’t connected to the internet. Go online to see this content.";
            goto LABEL_44;
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (a4 != 8)
        {
          goto LABEL_46;
        }

        v5 = 0;
        if (a3 <= 3)
        {
          if ((a3 - 1) < 2)
          {
            v10 = +[NSBundle mainBundle];
            v11 = v10;
            v12 = @"Apple News isn’t connected to the internet. Go online to search.";
LABEL_44:
            v15 = [v10 localizedStringForKey:v12 value:&stru_1000C67A8 table:0];
            goto LABEL_45;
          }

LABEL_25:
          if (a3 != 3)
          {
            goto LABEL_46;
          }

          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Apple News isn’t supported in your current region.";
          goto LABEL_44;
        }
      }

LABEL_36:
      if ((a3 - 4) >= 2)
      {
        goto LABEL_37;
      }

LABEL_43:
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"FRRequireLatestVersionOS";
      goto LABEL_44;
    }

LABEL_21:
    v11 = [NUErrorMessageFactory errorMessageForArticleViewWithOfflineReason:a3];
    v15 = [v11 subtitle];
LABEL_45:
    v5 = v15;

    goto LABEL_46;
  }

  if ((a4 - 13) < 2)
  {
    v5 = 0;
    if (a3 <= 3)
    {
      if ((a3 - 1) < 2)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    }
  }

  else
  {
    if (a4 != 11)
    {
      if (a4 != 12)
      {
        goto LABEL_46;
      }

      goto LABEL_23;
    }

    v5 = 0;
    if (a3 <= 3)
    {
      if ((a3 - 1) < 2)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Apple News isn’t connected to the internet. Go online to get started.";
        goto LABEL_44;
      }

LABEL_49:
      if (a3 == 3)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"The app isn’t supported in your current region.";
        goto LABEL_44;
      }

      goto LABEL_46;
    }
  }

  if ((a3 - 4) < 2)
  {
    goto LABEL_43;
  }

  if (a3 == 6)
  {
    v10 = +[NSBundle mainBundle];
    v11 = v10;
    v12 = @"Apple News is no longer fully supported on older devices.";
    goto LABEL_44;
  }

LABEL_46:

  return v5;
}

+ (id)offlineAcceptActionTitleWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5
{
  v5 = 0;
  if (a4 <= 0xE && ((1 << a4) & 0x6630) != 0)
  {
    v5 = 0;
    if (a3 <= 5 && ((1 << a3) & 0x36) != 0)
    {
      v6 = +[NSBundle mainBundle];
      v5 = [v6 localizedStringForKey:@"FRGoToSettings" value:&stru_1000C67A8 table:0];
    }
  }

  return v5;
}

+ (id)offlineIgnoreActionTitleWithOfflineReason:(int64_t)a3 offlineViewContext:(int64_t)a4 withInfo:(id)a5
{
  v7 = a5;
  v8 = 0;
  if (a4 <= 0xE && ((1 << a4) & 0x6630) != 0)
  {
    if ((a3 - 1) > 5)
    {
      v8 = 0;
    }

    else
    {
      v9 = *(&off_1000C4E50 + a3 - 1);
      v10 = +[NSBundle mainBundle];
      v8 = [v10 localizedStringForKey:v9 value:&stru_1000C67A8 table:0];
    }
  }

  return v8;
}

@end