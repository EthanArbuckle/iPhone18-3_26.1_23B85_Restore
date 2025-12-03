@interface NSString
+ (id)bk_localizedStringForDeleteAction:(int64_t)action deleteActionProvider:(id)provider;
+ (id)bk_localizedWarningAndTitleStringsForProvider:(id)provider;
+ (id)bk_localizedWarningStringForProvider:(id)provider;
@end

@implementation NSString

+ (id)bk_localizedStringForDeleteAction:(int64_t)action deleteActionProvider:(id)provider
{
  providerCopy = provider;
  v6 = providerCopy;
  v7 = &stru_100A30A68;
  if (action <= 3)
  {
    if (action <= 1)
    {
      if (action)
      {
        if (action != 1)
        {
          goto LABEL_36;
        }

        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"Remove Everywhere";
      }

      else
      {
        v8 = +[NSBundle mainBundle];
        v9 = v8;
        v10 = @"Delete Everywhere";
      }

      goto LABEL_34;
    }

    if (action == 2)
    {
      v11 = [providerCopy countForActionItem:2];
      v9 = +[NSBundle mainBundle];
      if (v11 == 1)
      {
        v10 = @"Remove Download";
      }

      else
      {
        v10 = @"Remove Downloads";
      }

LABEL_33:
      v8 = v9;
      goto LABEL_34;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Remove from Collection";
    goto LABEL_34;
  }

  if (action <= 5)
  {
    if (action == 4)
    {
      v9 = [BCCollection titleForDefaultCollectionID:kBKCollectionDefaultIDSamples];
      v16 = +[NSBundle mainBundle];
      v14 = [v16 localizedStringForKey:@"Remove from %@" value:&stru_100A30A68 table:0];

      v17 = [NSString stringWithFormat:v14, v9];
LABEL_26:
      v7 = v17;
      goto LABEL_27;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Delete";
LABEL_34:
    v7 = [v8 localizedStringForKey:v10 value:&stru_100A30A68 table:0];
    goto LABEL_35;
  }

  if (action != 6)
  {
    if (action != 7)
    {
      if (action != 8)
      {
        goto LABEL_36;
      }

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"Remove…";
      goto LABEL_34;
    }

    v18 = [providerCopy countForActionItem:7];
    localITSAudiobookCount = [v6 localITSAudiobookCount];
    v20 = &localITSAudiobookCount[[v6 cloudITSAudiobookCount]];
    v9 = +[NSBundle mainBundle];
    if (v20 == v18)
    {
      if (v18 == 1)
      {
        v10 = @"Hide Audiobook";
      }

      else
      {
        v10 = @"Hide Audiobooks";
      }
    }

    else if (v18 == 1)
    {
      v10 = @"Hide Book";
    }

    else
    {
      v10 = @"Hide Books";
    }

    goto LABEL_33;
  }

  collection = [providerCopy collection];
  v9 = collection;
  if (!collection || ![collection isDefaultCollection])
  {
    v14 = +[NSBundle mainBundle];
    v17 = [v14 localizedStringForKey:@"Remove from Collection" value:&stru_100A30A68 table:0];
    goto LABEL_26;
  }

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Remove from %@" value:&stru_100A30A68 table:0];

  title = [v9 title];
  v7 = [NSString stringWithFormat:v14, title];

LABEL_27:
LABEL_35:

LABEL_36:

  return v7;
}

+ (id)bk_localizedWarningStringForProvider:(id)provider
{
  v3 = [NSString bk_localizedWarningAndTitleStringsForProvider:provider];
  v4 = [v3 objectForKeyedSubscript:@"warningString"];

  return v4;
}

+ (id)bk_localizedWarningAndTitleStringsForProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy sampleCount])
  {
    v4 = &stru_100A30A68;
    goto LABEL_73;
  }

  if (![providerCopy nonStoreAudiobookCount])
  {
    if ([providerCopy localUbiquityCount])
    {
      v8 = +[BCDevice deviceClass];
      pdfCount = [providerCopy pdfCount];
      localUbiquityCount = [providerCopy localUbiquityCount];
      actionItems = +[NSBundle mainBundle];
      if (v8 == 3)
      {
        if (pdfCount)
        {
          if (localUbiquityCount >= 2)
          {
            v7 = @"These items were downloaded to this iPad. Delete them from iCloud or remove the downloads from this iPad.";
          }

          else
          {
            v7 = @"This item was downloaded to this iPad. Delete it from iCloud or remove the download from this iPad.";
          }
        }

        else if (localUbiquityCount >= 2)
        {
          v7 = @"These books were downloaded to this iPad. Delete them from iCloud or remove the downloads from this iPad.";
        }

        else
        {
          v7 = @"This book was downloaded to this iPad. Delete it from iCloud or remove the download from this iPad.";
        }
      }

      else if (v8 == 2)
      {
        if (pdfCount)
        {
          if (localUbiquityCount >= 2)
          {
            v7 = @"These items were downloaded to this iPod touch. Delete them from iCloud or remove the downloads from this iPod touch.";
          }

          else
          {
            v7 = @"This item was downloaded to this iPod touch. Delete it from iCloud or remove the download from this iPod touch.";
          }
        }

        else if (localUbiquityCount >= 2)
        {
          v7 = @"These books were downloaded to this iPod touch. Delete them from iCloud or remove the downloads from this iPod touch.";
        }

        else
        {
          v7 = @"This book was downloaded to this iPod touch. Delete it from iCloud or remove the download from this iPod touch.";
        }
      }

      else if (v8 == 1)
      {
        if (pdfCount)
        {
          if (localUbiquityCount >= 2)
          {
            v7 = @"These items were downloaded to this iPhone. Delete them from iCloud or remove the downloads from this iPhone.";
          }

          else
          {
            v7 = @"This item was downloaded to this iPhone. Delete it from iCloud or remove the download from this iPhone.";
          }
        }

        else if (localUbiquityCount >= 2)
        {
          v7 = @"These books were downloaded to this iPhone. Delete them from iCloud or remove the downloads from this iPhone.";
        }

        else
        {
          v7 = @"This book was downloaded to this iPhone. Delete it from iCloud or remove the download from this iPhone.";
        }
      }

      else if (pdfCount)
      {
        if (localUbiquityCount >= 2)
        {
          v7 = @"These items were downloaded to this device. Delete them from iCloud or remove the downloads from this device.";
        }

        else
        {
          v7 = @"This item was downloaded to this device. Delete it from iCloud or remove the download from this device.";
        }
      }

      else if (localUbiquityCount >= 2)
      {
        v7 = @"These books were downloaded to this device. Delete them from iCloud or remove the downloads from this device.";
      }

      else
      {
        v7 = @"This book was downloaded to this device. Delete it from iCloud or remove the download from this device.";
      }

LABEL_70:
      v5 = actionItems;
      goto LABEL_71;
    }

    if ([providerCopy nonlocalUbiquityCount])
    {
      pdfCount2 = [providerCopy pdfCount];
      nonlocalUbiquityCount = [providerCopy nonlocalUbiquityCount];
      actionItems = +[NSBundle mainBundle];
      if (pdfCount2)
      {
        if (nonlocalUbiquityCount >= 2)
        {
          v7 = @"Do you want to delete items from iCloud and all your iCloud devices?";
        }

        else
        {
          v7 = @"Do you want to delete this item from iCloud and all your iCloud devices?";
        }
      }

      else if (nonlocalUbiquityCount >= 2)
      {
        v7 = @"Do you want to delete books from iCloud and all your iCloud devices?";
      }

      else
      {
        v7 = @"Do you want to delete this book from iCloud and all your iCloud devices?";
      }

      goto LABEL_70;
    }

    if ([providerCopy ubiquityErrorCount])
    {
      pdfCount3 = [providerCopy pdfCount];
      ubiquityErrorCount = [providerCopy ubiquityErrorCount];
      actionItems = +[NSBundle mainBundle];
      if (pdfCount3)
      {
        if (ubiquityErrorCount >= 2)
        {
          v7 = @"These items weren’t uploaded to iCloud. Do you want to delete them?";
        }

        else
        {
          v7 = @"This item wasn’t uploaded to iCloud. Do you want to delete it?";
        }
      }

      else if (ubiquityErrorCount >= 2)
      {
        v7 = @"These books weren’t uploaded to iCloud. Do you want to delete them?";
      }

      else
      {
        v7 = @"This book wasn’t uploaded to iCloud. Do you want to delete it?";
      }

      goto LABEL_70;
    }

    actionItems = [providerCopy actionItems];
    v15 = [actionItems containsObject:&off_100A43638];
    v16 = [actionItems containsObject:&off_100A43650];
    if ([actionItems containsObject:&off_100A43668])
    {
      v17 = 1;
    }

    else
    {
      v17 = [actionItems containsObject:&off_100A43680];
    }

    booksToDelete = [providerCopy booksToDelete];
    v19 = [booksToDelete count];

    if (((v15 | v16) & 1) == 0 && !v17)
    {
      v20 = +[NSBundle mainBundle];
      if (v19 == 1)
      {
        v21 = @"It will be permanently deleted from this device.";
      }

      else
      {
        v21 = @"They will be permanently deleted from this device.";
      }

LABEL_81:
      v32 = v20;
      goto LABEL_87;
    }

    v22 = [providerCopy countForActionItem:2];
    v23 = [providerCopy countForActionItem:7];
    localITSAudiobookCount = [providerCopy localITSAudiobookCount];
    v25 = &localITSAudiobookCount[[providerCopy cloudITSAudiobookCount]];
    v26 = v15 ^ 1 | v16;
    if ((v26 | v17))
    {
      v27 = v15 | v16 ^ 1;
      if (((v27 | v17) & 1) == 0)
      {
        v20 = +[NSBundle mainBundle];
        if (v23 == 1)
        {
          if (v19 == v25)
          {
            v21 = @"Hide this audiobook on devices using this account. To unhide purchases, tap your Account icon in Home, then tap Manage Hidden Purchases.";
          }

          else
          {
            v21 = @"Hide this book on devices using this account. To unhide purchases, tap your Account icon in Home, then tap Manage Hidden Purchases.";
          }
        }

        else if (v19 == v25)
        {
          v21 = @"Hide these audiobooks on devices using this account. To unhide purchases, tap your Account icon in Home, then tap Manage Hidden Purchases.";
        }

        else
        {
          v21 = @"Hide these books on devices using this account. To unhide purchases, tap your Account icon in Home, then tap Manage Hidden Purchases.";
        }

        goto LABEL_81;
      }

      v28 = v17 ^ 1;
      if (((v15 | v16 | v17 ^ 1) & 1) == 0)
      {
        v32 = +[NSBundle mainBundle];
        v20 = v32;
        v21 = @"Remove from this collection.";
        goto LABEL_87;
      }

      v29 = v15 ^ 1 | v16 ^ 1;
      if (((v29 | v17) & 1) == 0)
      {
        v20 = +[NSBundle mainBundle];
        if (v19 == 1)
        {
          v21 = @"Remove the download or hide it on devices using this account.";
        }

        else
        {
          v21 = @"Remove the downloads or hide them on devices using this account.";
        }

        goto LABEL_81;
      }

      if (((v26 | v28) & 1) == 0)
      {
        if (v25)
        {
          v34 = +[NSBundle mainBundle];
          v35 = v34;
          v36 = @"REMOVE_DOWNLOAD(S)_MESSAGE_ACCOUNT";
        }

        else
        {
          v37 = +[BCDevice deviceClass];
          v34 = +[NSBundle mainBundle];
          v35 = v34;
          if (v37 == 3)
          {
            v36 = @"REMOVE_DOWNLOAD(S)_MESSAGE_IPAD";
          }

          else if (v37 == 2)
          {
            v36 = @"REMOVE_DOWNLOAD(S)_MESSAGE_IPOD";
          }

          else if (v37 == 1)
          {
            v36 = @"REMOVE_DOWNLOAD(S)_MESSAGE_IPHONE";
          }

          else
          {
            v36 = @"REMOVE_DOWNLOAD(S)_MESSAGE_DEVICE";
          }
        }

        v20 = [v34 localizedStringForKey:v36 value:&stru_100A30A68 table:0];

        v33 = [NSString localizedStringWithFormat:v20, v22];
        goto LABEL_88;
      }

      if (((v27 | v28) & 1) == 0)
      {
        v32 = +[NSBundle mainBundle];
        v20 = v32;
        v21 = @"Remove from this collection or hide on devices using this account.";
        goto LABEL_87;
      }

      if (((v29 | v28) & 1) == 0)
      {
        v20 = +[NSBundle mainBundle];
        if (v19 == 1)
        {
          if (v25 == 1)
          {
            v21 = @"Remove from collection, remove download, or hide on devices using this account.";
          }

          else
          {
            v21 = @"Remove from this collection, remove the download, or hide this book on devices using this account.";
          }
        }

        else if (v19 == v25)
        {
          v21 = @"Remove from collection, remove downloads, or hide on devices using this account.";
        }

        else
        {
          v21 = @"Remove from this collection, remove the downloads, or hide these books on devices using this account.";
        }

        goto LABEL_81;
      }
    }

    else if (v25)
    {
      v32 = +[NSBundle mainBundle];
      v20 = v32;
      v21 = @"You can redownload audiobooks from your account.";
LABEL_87:
      v33 = [v32 localizedStringForKey:v21 value:&stru_100A30A68 table:0];
LABEL_88:
      v4 = v33;

      goto LABEL_72;
    }

    v4 = &stru_100A30A68;
    goto LABEL_72;
  }

  v5 = +[NSBundle mainBundle];
  actionItems = v5;
  v7 = @"Audiobooks not purchased from the Audiobook Store will be permanently deleted.";
LABEL_71:
  v4 = [v5 localizedStringForKey:v7 value:&stru_100A30A68 table:0];
LABEL_72:

LABEL_73:
  v30 = objc_alloc_init(NSMutableDictionary);
  if ([(__CFString *)v4 length])
  {
    [v30 setObject:v4 forKey:@"warningString"];
  }

  return v30;
}

@end