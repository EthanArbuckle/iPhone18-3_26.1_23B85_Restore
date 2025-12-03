@interface IMAPAccount
+ (id)advancedSpecifiersWithOptions:(unsigned int)options;
- (id)advancedSpecifiers;
- (id)otherTopLevelSpecifiers;
@end

@implementation IMAPAccount

+ (id)advancedSpecifiersWithOptions:(unsigned int)options
{
  optionsCopy = *&options;
  selfCopy2 = self;
  if (!qword_D6440)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = qword_D6440;
    qword_D6440 = v5;

    v7 = qword_D6440;
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MAILBOX_BEHAVIORS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v10 = [PSSpecifier groupSpecifierWithName:v9];
    [v7 addObject:v10];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"DRAFTS_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:"mailbox:" detail:objc_opt_class() cell:2 edit:0];

    v14 = [NSNumber numberWithInt:5];
    v15 = [NSDictionary dictionaryWithObjectsAndKeys:v14, @"MailboxType", kCFBooleanFalse, @"disableForManagedAccounts", 0];
    [v13 setUserInfo:v15];

    [qword_D6440 addObject:v13];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SENT_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:0 set:0 get:"mailbox:" detail:objc_opt_class() cell:2 edit:0];

    v19 = [NSNumber numberWithInt:4];
    v20 = [NSDictionary dictionaryWithObjectsAndKeys:v19, @"MailboxType", kCFBooleanFalse, @"disableForManagedAccounts", 0];
    [v18 setUserInfo:v20];

    [qword_D6440 addObject:v18];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"DELETED_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:0 set:0 get:"mailbox:" detail:objc_opt_class() cell:2 edit:0];

    v24 = [NSNumber numberWithInt:3];
    v25 = [NSDictionary dictionaryWithObjectsAndKeys:v24, @"MailboxType", kCFBooleanFalse, @"disableForManagedAccounts", 0];
    [v23 setUserInfo:v25];

    [qword_D6440 addObject:v23];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"ARCHIVE_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:0 set:0 get:"mailbox:" detail:objc_opt_class() cell:2 edit:0];

    v29 = [NSNumber numberWithInt:2];
    v30 = [NSDictionary dictionaryWithObjectsAndKeys:v29, @"MailboxType", kCFBooleanFalse, @"disableForManagedAccounts", 0];
    [v28 setUserInfo:v30];

    [qword_D6440 addObject:v28];
    optionsCopy = options;
    selfCopy2 = self;
  }

  v31 = +[NSMutableArray array];
  [v31 addObjectsFromArray:qword_D6440];
  v36.receiver = selfCopy2;
  v36.super_class = &OBJC_METACLASS___IMAPAccount;
  v32 = objc_msgSendSuper2(&v36, "advancedSpecifiersWithOptions:", optionsCopy);
  [v31 addObjectsFromArray:v32];

  return v31;
}

- (id)advancedSpecifiers
{
  v32.receiver = self;
  v32.super_class = IMAPAccount;
  advancedSpecifiers = [(IMAPAccount *)&v32 advancedSpecifiers];
  deleteInPlaceForAllMailboxes = [(IMAPAccount *)self deleteInPlaceForAllMailboxes];
  mustArchiveSentMessages = [(IMAPAccount *)self mustArchiveSentMessages];
  if (deleteInPlaceForAllMailboxes & 1 | ((mustArchiveSentMessages & 1) == 0))
  {
    v3 = [advancedSpecifiers mutableCopy];
    v4 = [v3 count];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = &stru_B9FC8;
      v30 = v3;
      do
      {
        v8 = [v3 objectAtIndex:{v6, name3}];
        v9 = v8;
        if (deleteInPlaceForAllMailboxes)
        {
          name = [v8 name];
          v10 = [NSBundle bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"DELETED_MESSAGES_GROUP" value:v7 table:@"AccountPreferences"];
          if ([name isEqualToString:v11])
          {

            if (mustArchiveSentMessages)
            {
              goto LABEL_17;
            }

            v12 = 1;
          }

          else
          {
            name2 = [v9 name];
            v26 = [NSBundle bundleForClass:objc_opt_class()];
            v25 = [v26 localizedStringForKey:@"REMOVE_FROM_TRASH" value:v7 table:@"AccountPreferences"];
            if ([name2 isEqualToString:?])
            {
              v12 = 1;
            }

            else
            {
              name3 = [v9 name];
              v13 = [NSBundle bundleForClass:objc_opt_class()];
              v14 = v7;
              v15 = [v13 localizedStringForKey:@"DELETED_MAILBOX" value:v7 table:@"AccountPreferences"];
              v12 = [name3 isEqualToString:v15];

              v7 = v14;
            }

            if (mustArchiveSentMessages)
            {
              if (v12)
              {
                goto LABEL_17;
              }

              goto LABEL_15;
            }
          }
        }

        else
        {
          if (mustArchiveSentMessages)
          {
            goto LABEL_15;
          }

          v12 = 0;
        }

        name4 = [v9 name];
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"SENT_MAILBOX" value:v7 table:@"AccountPreferences"];
        v20 = v12 | [name4 isEqualToString:v19];

        if (v20 == 1)
        {
LABEL_17:
          [v30 removeObjectAtIndex:{v6--, name3}];
          v16 = v5 - 1;
          goto LABEL_18;
        }

LABEL_15:
        v16 = v5;
LABEL_18:

        ++v6;
        v5 = v16;
        v21 = v6 >= v16;
        v3 = v30;
      }

      while (!v21);
    }
  }

  else
  {
    v3 = advancedSpecifiers;
  }

  return v3;
}

- (id)otherTopLevelSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[DADiagnosticsPSController linkSpecifier];
  if (v4)
  {
    v16[0] = kAccountDataclassContacts;
    v16[1] = kAccountDataclassCalendars;
    v16[2] = kAccountDataclassNotes;
    [NSArray arrayWithObjects:v16 count:3];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v5 = v12 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (([(IMAPAccount *)self isEnabledForDataclass:*(*(&v11 + 1) + 8 * i), v11]& 1) != 0)
          {

            v9 = +[PSSpecifier emptyGroupSpecifier];
            [v3 addObject:v9];

            [v3 addObject:v4];
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v3;
}

@end