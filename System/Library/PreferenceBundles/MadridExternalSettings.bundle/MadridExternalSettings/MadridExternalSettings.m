void sub_152C(uint64_t a1)
{
  v2 = [*(a1 + 32) sliderValues];
  v4 = [v2 objectAtIndex:{objc_msgSend(*(a1 + 40), "intValue")}];

  if ([v4 integerValue])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetAppValue(@"TimestampInterval", v3, @"com.apple.MobileSMS");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  +[CNFInternalSettingsUtilities killMobileSMS];
}

void sub_2958(id a1, IMUserNotification *a2)
{
  if (![(IMUserNotification *)a2 response])
  {
    v2 = [NSArray arrayWithObjects:@"~/Library/Logs/Messages/", @"~/Library/Logs/CrashReporter/Messages/", @"~/Library/Logs/PersistentConnection/", @"~/Library/Logs/CrashReporter/LogTaxi/com.apple.madrid.NanoMadridLogTaxi/", 0];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          v8 = +[NSFileManager defaultManager];
          v9 = [v7 stringByResolvingAndStandardizingPath];
          [v8 removeItemAtPath:v9 error:0];

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }
}

void sub_2BF8(id a1)
{
  +[CNFInternalSettingsUtilities nukeKeychain];

  +[CNFInternalSettingsUtilities killEverything];
}

void sub_51FC(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v11 = [v3 text];

  if ([v11 length])
  {
    [*(a1 + 40) _setHandleAsChina:v11];
    v4 = [PSSpecifier preferenceSpecifierNamed:v11 target:*(a1 + 40) set:0 get:0 detail:0 cell:4 edit:0];
    v5 = [NSMutableArray alloc];
    v6 = OBJC_IVAR___PSListController__specifiers;
    v7 = [v5 initWithArray:*(*(a1 + 40) + OBJC_IVAR___PSListController__specifiers)];
    [v7 insertObject:v4 atIndex:{objc_msgSend(v7, "count") - 1}];
    v8 = *(a1 + 40);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
    v10 = v7;

    [*(a1 + 40) reload];
  }
}