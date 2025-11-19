@interface ShortcutsCloudKitAccountNotifier
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation ShortcutsCloudKitAccountNotifier

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v29 = *MEMORY[0x29EDCA608];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  v13 = (v9 | v11) != 0;
  v14 = MEMORY[0x29EDB81F8];
  if (v9)
  {
    v15 = [v9 accountType];
    v16 = [v15 identifier];
    v17 = [v16 isEqualToString:*v14];

    if (v12)
    {
LABEL_3:
      v18 = [v12 accountType];
      v19 = [v18 identifier];
      v20 = [v19 isEqualToString:*v14];

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  if ((v13 & (v17 | v20)) == 1)
  {
    if (a4 <= 2)
    {
      if (a4 == 1)
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
        if (a4 != 2)
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

    switch(a4)
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