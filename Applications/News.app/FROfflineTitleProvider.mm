@interface FROfflineTitleProvider
+ (id)offlineAcceptActionTitleWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info;
+ (id)offlineIgnoreActionTitleWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info;
+ (id)offlineMessageWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info;
+ (id)offlineTitleWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info;
@end

@implementation FROfflineTitleProvider

+ (id)offlineTitleWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info
{
  infoCopy = info;
  v9 = infoCopy;
  if (context <= 7)
  {
    if (context <= 3)
    {
      if (context > 1)
      {
        if (context == 2)
        {
          if ((reason - 1) < 5 || reason == 6)
          {
            v10 = +[NSBundle mainBundle];
            v11 = v10;
            v12 = @"Couldn’t Load Stories";
            goto LABEL_56;
          }
        }

        else if ((reason - 1) < 5 || reason == 6)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Related Stories Unavailable";
          goto LABEL_56;
        }
      }

      else if (context)
      {
        if (context != 1)
        {
          goto LABEL_59;
        }

        if ((reason - 1) <= 5)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Couldn’t Reload";
LABEL_56:
          title = [v10 localizedStringForKey:v12 value:&stru_1000C67A8 table:0];
          goto LABEL_57;
        }
      }

      else
      {
        if ((reason - 1) < 5)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Feed Unavailable";
          goto LABEL_56;
        }

        if (reason == 6)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"This feed isn’t available.";
          goto LABEL_56;
        }
      }

      goto LABEL_58;
    }

    if ((context - 4) >= 2)
    {
      if (context != 6)
      {
        if (context != 7)
        {
          goto LABEL_59;
        }

        if ((reason - 1) < 5 || reason == 6)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          v12 = @"Content Unavailable";
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      if ((reason - 1) >= 5)
      {
        if (reason != 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v14 = [infoCopy objectForKey:@"feedType"];
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
    v11 = [NUErrorMessageFactory errorMessageForArticleViewWithOfflineReason:reason];
    title = [v11 title];
LABEL_57:
    v5 = title;

    goto LABEL_59;
  }

  if (context <= 10)
  {
    if ((context - 9) >= 2)
    {
      if (context != 8)
      {
        goto LABEL_59;
      }

      if ((reason - 1) < 5 || reason == 6)
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

  if ((context - 13) < 2)
  {
    if ((reason - 1) <= 5)
    {
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"Subscription Unavailable";
      goto LABEL_56;
    }
  }

  else if (context == 11)
  {
    if ((reason - 1) < 5 || reason == 6)
    {
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      v12 = @"Apple News Unavailable";
      goto LABEL_56;
    }
  }

  else
  {
    if (context != 12)
    {
      goto LABEL_59;
    }

    if ((reason - 1) <= 5)
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

+ (id)offlineMessageWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info
{
  infoCopy = info;
  v9 = infoCopy;
  if (context <= 6)
  {
    if (context > 2)
    {
      if ((context - 4) >= 2)
      {
        if (context != 3)
        {
          if (context != 6)
          {
            goto LABEL_46;
          }

          v5 = 0;
          if (reason > 3)
          {
            if ((reason - 4) >= 2)
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((reason - 1) >= 2)
            {
              goto LABEL_25;
            }

            v13 = [infoCopy objectForKey:@"feedType"];
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
        if (reason <= 3)
        {
          if ((reason - 1) < 2)
          {
            v10 = +[NSBundle mainBundle];
            v11 = v10;
            v12 = @"Apple News isn’t connected to the internet. Go online to see related stories.";
            goto LABEL_44;
          }

          goto LABEL_25;
        }

        if ((reason - 4) < 2)
        {
          v11 = [[TSAlertArticleUnavailable alloc] initWithBlockedReason:1];
          message = [v11 message];
          goto LABEL_45;
        }

LABEL_37:
        if (reason != 6)
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

    if (context > 2)
    {
      goto LABEL_46;
    }

LABEL_23:
    v5 = 0;
    if (reason > 3)
    {
      goto LABEL_36;
    }

    if ((reason - 1) >= 2)
    {
      goto LABEL_25;
    }

LABEL_29:
    v10 = +[NSBundle mainBundle];
    v11 = v10;
    v12 = @"Apple News isn’t connected to the internet.";
    goto LABEL_44;
  }

  if (context <= 10)
  {
    if ((context - 9) >= 2)
    {
      if (context == 7)
      {
        v5 = 0;
        if (reason <= 3)
        {
          if ((reason - 1) < 2)
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
        if (context != 8)
        {
          goto LABEL_46;
        }

        v5 = 0;
        if (reason <= 3)
        {
          if ((reason - 1) < 2)
          {
            v10 = +[NSBundle mainBundle];
            v11 = v10;
            v12 = @"Apple News isn’t connected to the internet. Go online to search.";
LABEL_44:
            message = [v10 localizedStringForKey:v12 value:&stru_1000C67A8 table:0];
            goto LABEL_45;
          }

LABEL_25:
          if (reason != 3)
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
      if ((reason - 4) >= 2)
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
    v11 = [NUErrorMessageFactory errorMessageForArticleViewWithOfflineReason:reason];
    message = [v11 subtitle];
LABEL_45:
    v5 = message;

    goto LABEL_46;
  }

  if ((context - 13) < 2)
  {
    v5 = 0;
    if (reason <= 3)
    {
      if ((reason - 1) < 2)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    }
  }

  else
  {
    if (context != 11)
    {
      if (context != 12)
      {
        goto LABEL_46;
      }

      goto LABEL_23;
    }

    v5 = 0;
    if (reason <= 3)
    {
      if ((reason - 1) < 2)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"Apple News isn’t connected to the internet. Go online to get started.";
        goto LABEL_44;
      }

LABEL_49:
      if (reason == 3)
      {
        v10 = +[NSBundle mainBundle];
        v11 = v10;
        v12 = @"The app isn’t supported in your current region.";
        goto LABEL_44;
      }

      goto LABEL_46;
    }
  }

  if ((reason - 4) < 2)
  {
    goto LABEL_43;
  }

  if (reason == 6)
  {
    v10 = +[NSBundle mainBundle];
    v11 = v10;
    v12 = @"Apple News is no longer fully supported on older devices.";
    goto LABEL_44;
  }

LABEL_46:

  return v5;
}

+ (id)offlineAcceptActionTitleWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info
{
  v5 = 0;
  if (context <= 0xE && ((1 << context) & 0x6630) != 0)
  {
    v5 = 0;
    if (reason <= 5 && ((1 << reason) & 0x36) != 0)
    {
      v6 = +[NSBundle mainBundle];
      v5 = [v6 localizedStringForKey:@"FRGoToSettings" value:&stru_1000C67A8 table:0];
    }
  }

  return v5;
}

+ (id)offlineIgnoreActionTitleWithOfflineReason:(int64_t)reason offlineViewContext:(int64_t)context withInfo:(id)info
{
  infoCopy = info;
  v8 = 0;
  if (context <= 0xE && ((1 << context) & 0x6630) != 0)
  {
    if ((reason - 1) > 5)
    {
      v8 = 0;
    }

    else
    {
      v9 = *(&off_1000C4E50 + reason - 1);
      v10 = +[NSBundle mainBundle];
      v8 = [v10 localizedStringForKey:v9 value:&stru_1000C67A8 table:0];
    }
  }

  return v8;
}

@end