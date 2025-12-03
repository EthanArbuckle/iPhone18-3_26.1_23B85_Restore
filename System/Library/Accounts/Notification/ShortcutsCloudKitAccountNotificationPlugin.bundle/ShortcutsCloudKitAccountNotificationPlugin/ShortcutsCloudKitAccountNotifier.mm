@interface ShortcutsCloudKitAccountNotifier
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation ShortcutsCloudKitAccountNotifier

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v29 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v12 = oldAccountCopy;
  v13 = (accountCopy | oldAccountCopy) != 0;
  v14 = MEMORY[0x29EDB81F8];
  if (accountCopy)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v17 = [identifier isEqualToString:*v14];

    if (v12)
    {
LABEL_3:
      accountType2 = [v12 accountType];
      identifier2 = [accountType2 identifier];
      v20 = [identifier2 isEqualToString:*v14];

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (oldAccountCopy)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  if ((v13 & (v17 | v20)) == 1)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v25 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v27 = 136315138;
          v28 = "[ShortcutsCloudKitAccountNotifier account:didChangeWithType:inStore:oldAccount:]";
          _os_log_impl(&dword_29C914000, v25, OS_LOG_TYPE_INFO, "%s CloudKit account was added. Resetting all local sync state and requesting a resync.", &v27, 0xCu);
        }

        v24 = MEMORY[0x29EDC82F0];
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_28;
        }

        v23 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 136315138;
          v28 = "[ShortcutsCloudKitAccountNotifier account:didChangeWithType:inStore:oldAccount:]";
          _os_log_impl(&dword_29C914000, v23, OS_LOG_TYPE_INFO, "%s CloudKit account was modified. Requesting a resync.", &v27, 0xCu);
        }

        v24 = MEMORY[0x29EDC82F8];
      }

      notify_post([*v24 UTF8String]);
      goto LABEL_28;
    }

    switch(type)
    {
      case 3:
        v21 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v27 = 136315138;
          v28 = "[ShortcutsCloudKitAccountNotifier account:didChangeWithType:inStore:oldAccount:]";
          v22 = "%s CloudKit account was deleted. Nothing to do.";
          goto LABEL_22;
        }

LABEL_23:

        break;
      case 4:
        v21 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v27 = 136315138;
          v28 = "[ShortcutsCloudKitAccountNotifier account:didChangeWithType:inStore:oldAccount:]";
          v22 = "%s CloudKit account save failed. Nothing to do.";
          goto LABEL_22;
        }

        goto LABEL_23;
      case 5:
        v21 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v27 = 136315138;
          v28 = "[ShortcutsCloudKitAccountNotifier account:didChangeWithType:inStore:oldAccount:]";
          v22 = "%s CloudKit warming up. Nothing to do.";
LABEL_22:
          _os_log_impl(&dword_29C914000, v21, OS_LOG_TYPE_INFO, v22, &v27, 0xCu);
          goto LABEL_23;
        }

        goto LABEL_23;
    }
  }

LABEL_28:

  v26 = *MEMORY[0x29EDCA608];
}

@end