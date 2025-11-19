void sub_2AE0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_448C0;
  qword_448C0 = v1;
}

id -[BlockedSenderSettingsPane _blockedSenderActionOptionsSpecifier](BlockedSenderSettingsPane *self, SEL a2)
{
  v3 = [(BlockedSenderSettingsPane *)self actionOptionsSpecifiers];

  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = BlockActionRadioGroupID;
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS_HEADER" value:&stru_3D2B0 table:@"Preferences"];
    v8 = [PSSpecifier groupSpecifierWithID:v5 name:v7];

    [v8 setProperty:&__kCFBooleanTrue forKey:@"AllowMultiLines"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS_MARK_AS_BLOCKED" value:&stru_3D2B0 table:@"Preferences"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v12 = PSValueKey;
    [v11 setProperty:&off_3F768 forKey:PSValueKey];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS_MOVE_TO_TRASH" value:&stru_3D2B0 table:@"Preferences"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v15 setProperty:&off_3F750 forKey:v12];
    [v8 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v16 = [(BlockedSenderSettingsPane *)self blockSenderOptionState];
    if ([v16 integerValue])
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    [v8 setProperty:v17 forKey:PSRadioGroupCheckedSpecifierKey];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS_DESCRIPTION" value:&stru_3D2B0 table:@"Preferences"];
    [v8 setProperty:v19 forKey:PSFooterTextGroupKey];

    [v4 addObject:v8];
    [v4 addObject:v11];
    [v4 addObject:v15];
    [(BlockedSenderSettingsPane *)self setActionOptionsSpecifiers:v4];
  }

  return [(BlockedSenderSettingsPane *)self actionOptionsSpecifiers];
}

void sub_4A38(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_5940(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

void sub_6384(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_448D0;
  qword_448D0 = v1;
}

void sub_6D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6D90(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (v10)
    {
      v13 = +[ExtensionsSettingsPane log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v10 ef_publicDescription];
        sub_2584C(v14, v15, v13);
      }
    }

    else
    {
      [WeakRetained _handleExtensionsAdded:v9];
      [v12[18] addCancelable:v8];
    }
  }
}

id sub_6FA4(uint64_t a1)
{
  [*(*(a1 + 32) + 152) addObjectsFromArray:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

id sub_70C4(uint64_t a1)
{
  [*(*(a1 + 32) + 152) removeObjectsInArray:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_7274(uint64_t a1)
{
  v25[0] = @"SwipeActionNone";
  v2 = *(a1 + 32);
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v24 localizedStringForKey:@"SWIPE_ACTIONS_NONE" value:&stru_3D2B0 table:@"Preferences"];
  v26[0] = v23;
  v25[1] = @"SwipeActionRead";
  v3 = *(a1 + 32);
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SWIPE_ACTIONS_READ" value:&stru_3D2B0 table:@"Preferences"];
  v26[1] = v22;
  v25[2] = @"SwipeActionFlag";
  v4 = *(a1 + 32);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SWIPE_ACTIONS_FLAG" value:&stru_3D2B0 table:@"Preferences"];
  v26[2] = v6;
  v25[3] = @"SwipeActionMove";
  v7 = *(a1 + 32);
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SWIPE_ACTIONS_MOVE" value:&stru_3D2B0 table:@"Preferences"];
  v26[3] = v9;
  v25[4] = @"SwipeActionArchive";
  v10 = *(a1 + 32);
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SWIPE_ACTIONS_ARCHIVE" value:&stru_3D2B0 table:@"Preferences"];
  v26[4] = v12;
  v25[5] = @"SwipeActionTrash";
  v13 = *(a1 + 32);
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SWIPE_ACTIONS_TRASH" value:&stru_3D2B0 table:@"Preferences"];
  v26[5] = v15;
  v25[6] = @"SwipeActionAlternateDestructiveAction";
  v16 = *(a1 + 32);
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"SWIPE_ACTIONS_ARCHIVE" value:&stru_3D2B0 table:@"Preferences"];
  v26[6] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:7];
  v20 = qword_448E0;
  qword_448E0 = v19;
}

id sub_81E0(id a1, MailAccount *a2)
{
  v2 = a2;
  v3 = [(MailAccount *)v2 primaryMailboxUid];
  v4 = [[MFNanoBridgeSettingsAccountSpecificMailbox alloc] initWithMailboxUid:v3 account:v2];

  return v4;
}

BOOL sub_826C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_8710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_8DF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_8ED4(void *a1, void *a2)
{
  v4 = [a1 mailbox];
  v5 = [a2 mailbox];
  v6 = [v4 type];
  v7 = [v5 type];
  if (v6 | v7)
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7 != 0;
    }
  }

  else
  {
    v9 = [a1 displayName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 displayName];
    }

    v12 = v11;

    v13 = [a2 displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v5 displayName];
    }

    v16 = v15;

    v8 = [v12 localizedCaseInsensitiveCompare:v16];
  }

  return v8;
}

id sub_ABA4(int a1, int a2)
{
  v4 = [NSMutableString stringWithString:@"FOUND_IN_MAILBOX_FORMAT"];
  v5 = v4;
  if (a1)
  {
    [v4 appendString:@"_WITH_ACCOUNT"];
  }

  if (a2)
  {
    [v5 appendString:@"_SHORT"];
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:v5 value:&stru_3D2B0 table:@"Main"];

  return v7;
}

void sub_AF94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mailAccountsDidChange];
}

void sub_B08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MailSettingsPlugin;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_E52C(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  v4 = +[NSUserDefaults em_userDefaults];
  [v4 setValue:v3 forKey:v5];
}

void sub_E700(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_E9B4(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = +[NSUserDefaults em_userDefaults];
  [v3 setBool:a2 forKey:v4];
}

void sub_F598(uint64_t a1)
{
  v2 = [*(a1 + 32) getCurrentSignatureSynchronously:*(a1 + 40)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F654;
  block[3] = &unk_3CE48;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_sync(&_dispatch_main_q, block);
}

id sub_F654(uint64_t a1)
{
  [*(*(a1 + 32) + 144) lock];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  [*(*(a1 + 32) + 144) unlockWithCondition:2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 reloadSpecifier:v6];
}

void sub_10230(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_10758(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void *MFImageForAddressLabelTypeCustomBundleAndBackground(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (!v11)
  {
    v14 = +[UIApplication sharedApplication];
    v11 = [v14 preferredContentSizeCategory];
  }

  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (!qword_44918)
  {
    qword_44918 = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  if (a6 == 0.0)
  {
    key = ((997 * a5) ^ (31 * a1) ^ [v15 hash]);
    v18 = CFDictionaryGetValue(qword_44918, key);
    if (v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    key = 0;
  }

  v19 = v15;
  v57 = v16;
  v54 = v19;
  v56 = v17;
  v20 = sub_112B8(v19);
  v60[0] = NSFontAttributeName;
  v60[1] = NSForegroundColorAttributeName;
  v61[0] = v20;
  v61[1] = v56;
  v21 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  v59 = 0;
  v22 = sub_11380(a1, v21, &v59, v57, a6);
  v58 = v23;
  v24 = v22;
  v25 = v59;
  [v20 pointSize];
  v27 = v26 * 0.17;
  v63.origin.x = sub_114F8(v20);
  x = v63.origin.x;
  y = v63.origin.y;
  height = v63.size.height;
  v32 = fmax(a6, v31);
  v63.size.width = v32;
  CGRectGetWidth(v63);
  UIRoundToViewScale();
  v53 = v33;
  [v20 capHeight];
  v52 = v34;
  [v20 ascender];
  v51 = v35;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = v32;
  v64.size.height = height;
  v50 = CGRectGetHeight(v64);
  [v20 capHeight];
  v49 = v36;
  v62.width = v32;
  v62.height = height;
  UIGraphicsBeginImageContextWithOptions(v62, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v56 setStroke];
  v38 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v19];
  v39 = +[UIFontMetrics defaultMetrics];
  [v39 scaledValueForValue:v38 compatibleWithTraitCollection:2.0];
  v41 = v40;

  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = v32;
  v65.size.height = height;
  v66 = CGRectInset(v65, 1.5, 1.5);
  v42 = [UIBezierPath bezierPathWithRoundedRect:v66.origin.x cornerRadius:v66.origin.y, v66.size.width, v66.size.height, fmax(fmin(v41, 4.0), 2.0)];
  v43 = v42;
  v44 = [v42 CGPath];

  CGContextAddPath(CurrentContext, v44);
  CGContextSetLineWidth(CurrentContext, v27);
  CGContextStrokePath(CurrentContext);
  [v25 drawWithRect:33 options:v21 attributes:0 context:{v53, v52 - v51 + (v50 - v49) * 0.5, v24, v58}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (a6 == 0.0)
  {
    if (v18)
    {
      CFDictionarySetValue(qword_44918, key, v18);
    }

    else
    {
      v18 = 0;
      CFDictionarySetValue(qword_44918, key, +[NSNull null]);
    }
  }

LABEL_13:
  v45 = +[NSNull null];
  if (v45 == v18)
  {
    v46 = 0;
  }

  else
  {
    v46 = v18;
  }

  v47 = v46;

  return v46;
}

double MFDefaultWidthForAddressLabelType(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = +[NSBundle mainBundle];
  v7 = MFDefaultWidthForAddressLabelTypeCustomBundle(a1, v5, v6, a3);

  return v7;
}

double MFDefaultWidthForAddressLabelTypeCustomBundle(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (!v7)
  {
    v9 = +[UIApplication sharedApplication];
    v7 = [v9 preferredContentSizeCategory];
  }

  v10 = sub_112B8(v7);
  v14 = NSFontAttributeName;
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  sub_11380(a1, v11, 0, v8, a4);

  [v10 pointSize];
  v16.origin.x = sub_114F8(v10);
  Width = CGRectGetWidth(v16);

  return Width;
}

id sub_112B8(uint64_t a1)
{
  v1 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:a1];
  v2 = [UIFont boldSystemFontOfSize:7.5];
  v3 = +[UIFontMetrics defaultMetrics];
  v4 = [v3 scaledFontForFont:v2 compatibleWithTraitCollection:v1];

  return v4;
}

void sub_11354(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double sub_11380(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  v11 = 0.0;
  if (a5 > 0.0)
  {
    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v14 = 1.0 / (v13 + v13);

    if (v14 + a5 + -6.0 >= 0.0)
    {
      v11 = v14 + a5 + -6.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  v15 = sub_115CC(a1, 0, v10);
  v16 = sub_11700(v15, v9, 0.0);
  v17 = v16;
  if (v11 <= 0.0 || v16 <= v11)
  {
    v21 = v15;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    v19 = v21;
    *a3 = v21;
    goto LABEL_12;
  }

  v21 = sub_115CC(a1, 1, v10);

  v17 = sub_11700(v21, v9, v11);
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v17;
}

CGFloat sub_114F8(void *a1)
{
  v1 = a1;
  [v1 capHeight];
  [v1 capHeight];
  UIRoundToViewScale();
  UIRoundToViewScale();
  [v1 capHeight];
  UIRoundToViewScale();
  y = CGPointZero.y;

  return CGPointZero.x;
}

id sub_115CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a1 == 3 || a1 == 2)
  {
    v6 = MFLookupLocalizedString();
  }

  else
  {
    if (a1 != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = [v4 localizedStringForKey:@"FROM_LABEL" value:&stru_3D2B0 table:@"Main"];
  }

  v7 = v6;
LABEL_10:

  return v7;
}

double sub_11700(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (a3 <= 0.0)
  {
    [v5 sizeWithAttributes:v6];
    v8 = v9;
  }

  else
  {
    [v5 boundingRectWithSize:33 options:v6 attributes:0 context:{a3, 0.0}];
    v8 = v7;
  }

  return v8;
}

void sub_11A1C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_11D3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_12140(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_133B4(id a1)
{
  qword_44928 = objc_alloc_init(MFNanoBridgeSettingsManager);

  _objc_release_x1();
}

void sub_13574(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 48), 8);

  _Unwind_Resume(a1);
}

void sub_13FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_150D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1511C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_44958;
  v9 = qword_44958;
  if (!qword_44958)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailLinesOfPreviewKey");
    qword_44958 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailLinesOfPreviewKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_15270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1548C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_44968;
  v9 = qword_44968;
  if (!qword_44968)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailAskBeforeDeletingKey");
    qword_44968 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailAskBeforeDeletingKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_155E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_157B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_157FC()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_44978;
  v9 = qword_44978;
  if (!qword_44978)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailLoadRemoteImagesKey");
    qword_44978 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailLoadRemoteImagesKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_15950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_15B6C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_44988;
  v9 = qword_44988;
  if (!qword_44988)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailOrganizeByThreadKey");
    qword_44988 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailOrganizeByThreadKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_15CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15EC8()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_44998;
  v9 = qword_44998;
  if (!qword_44998)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailSwipeRightActionKey");
    qword_44998 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailSwipeRightActionKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1601C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_162D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_16344()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_449A8;
  v9 = qword_449A8;
  if (!qword_449A8)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailSignatureKey");
    qword_449A8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailSignatureKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_16498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_166B4()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_449C0;
  v9 = qword_449C0;
  if (!qword_449C0)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailAlwaysLoadContentDirectlyKey");
    qword_449C0 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailAlwaysLoadContentDirectlyKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_16808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_169E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_16A28()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_449D0;
  v9 = qword_449D0;
  if (!qword_449D0)
  {
    v1 = sub_18750();
    v7[3] = dlsym(v1, "NanoMailCloudNotificationsEnabledKey");
    qword_449D0 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailCloudNotificationsEnabledKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_16B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_174EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_181CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183A8(uint64_t a1)
{
  sub_1848C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_44938 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNPSManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoBridgeSettingsManager.m" lineNumber:60 description:{@"Unable to find class %s", "NPSManager"}];

    __break(1u);
  }
}

void sub_1848C()
{
  v3[0] = 0;
  if (!qword_44940)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_18600;
    v3[4] = &unk_3CD10;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/NanoPreferencesSync.framework/NanoPreferencesSync";
    qword_44940 = _sl_dlopen();
  }

  if (!qword_44940)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *NanoPreferencesSyncLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFNanoBridgeSettingsManager.m" lineNumber:55 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_18600(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_44940 = result;
  return result;
}

void sub_1866C(uint64_t a1)
{
  sub_18750();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKAccountIdentity");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_44948 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNNMKAccountIdentityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:18 description:{@"Unable to find class %s", "NNMKAccountIdentity"}];

    __break(1u);
  }
}

void *sub_18750()
{
  v4[0] = 0;
  if (!qword_44950)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_188C8;
    v4[4] = &unk_3CD10;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/NanoMailKitServer.framework/NanoMailKitServer";
    qword_44950 = _sl_dlopen();
  }

  v0 = qword_44950;
  if (!qword_44950)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *NanoMailKitServerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:13 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_188C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_44950 = result;
  return result;
}

void *sub_18934(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailLinesOfPreviewKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18984(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultLinesOfPreview");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44960 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_189D4(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailAskBeforeDeletingKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44968 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18A24(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultAskBeforeDeleting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44970 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18A74(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailLoadRemoteImagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44978 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18AC4(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultLoadRemoteImages");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44980 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18B14(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailOrganizeByThreadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44988 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18B64(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultOrganizeByThread");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44990 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18BB4(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailSwipeRightActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_44998 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18C04(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultSwipeRightAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18C54(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailSignatureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18CA4(uint64_t a1)
{
  sub_18750();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKSyncProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_449B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNNMKSyncProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:27 description:{@"Unable to find class %s", "NNMKSyncProvider"}];

    __break(1u);
  }
}

void *sub_18D88(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultSignatureLocalizationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18DD8(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailAlwaysLoadContentDirectlyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18E28(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultAlwaysLoadContentDirectly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18E78(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailCloudNotificationsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18EC8(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultCloudNotificationsEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18F18(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailPrivacyProtectionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18F68(uint64_t a1)
{
  v2 = sub_18750();
  result = dlsym(v2, "NanoMailDefaultAccountUidKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_449E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18FB8(uint64_t a1)
{
  sub_1848C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSDomainAccessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_449F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNPSDomainAccessorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoBridgeSettingsManager.m" lineNumber:57 description:{@"Unable to find class %s", "NPSDomainAccessor"}];

    __break(1u);
  }
}

uint64_t MFSwipeDirectionForLeading(int a1, void *a2)
{
  v3 = [a2 traitCollection];
  v4 = [v3 layoutDirection] == &dword_0 + 1;

  if (v4 != a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id sub_19388()
{
  v0 = qword_449F8;
  if (!qword_449F8)
  {
    v4[0] = @"SwipeActionNone";
    v4[1] = @"SwipeActionRead";
    v5[0] = &off_3F918;
    v5[1] = &off_3F930;
    v4[2] = @"SwipeActionFlag";
    v4[3] = @"SwipeActionMove";
    v5[2] = &off_3F948;
    v5[3] = &off_3F960;
    v4[4] = @"SwipeActionTrash";
    v4[5] = @"SwipeActionArchive";
    v5[4] = &off_3F978;
    v5[5] = &off_3F990;
    v4[6] = @"SwipeActionAlternateDestructiveAction";
    v5[6] = &off_3F9A8;
    v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
    v2 = qword_449F8;
    qword_449F8 = v1;

    v0 = qword_449F8;
  }

  return v0;
}

void sub_19578(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id _ConfigurePSSpecifier(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13)
{
  v28 = a1;
  v27 = a11;
  v26 = a12;
  v25 = a13;
  v18 = [PSSpecifier preferenceSpecifierNamed:a2 target:a3 set:a4 get:a5 detail:a8 cell:a9 edit:a10];
  [v18 setKeyboardType:a6 autoCaps:a7 autoCorrection:0];
  v19 = [v27 objectForKey:@"titles"];
  v20 = v19;
  if (v19 && (v21 = [v19 count], v21 == objc_msgSend(v25, "count")))
  {
    [v18 setValues:v25 titles:v20];
    [v27 removeObjectForKey:@"titles"];
  }

  else
  {
    [v18 setValues:v25];
  }

  if (v26)
  {
    [v18 setProperty:v26 forKey:PSKeyNameKey];
  }

  [v18 setUserInfo:v27];
  if (v28)
  {
    [v28 addObject:v18];
  }

  [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v18;
}

id _ConfigureBooleanPSSpecifier(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v23 = a1;
  v18 = a11;
  v19 = a12;
  v20 = [PSSpecifier preferenceSpecifierNamed:a2 target:a3 set:a4 get:a5 detail:a8 cell:a9 edit:a10];
  [v20 setKeyboardType:a6 autoCaps:a7 autoCorrection:0];
  if (v19)
  {
    [v20 setProperty:v19 forKey:PSKeyNameKey];
  }

  [v20 setUserInfo:v18];
  if (v23)
  {
    [v23 addObject:v20];
  }

  return v20;
}

void sub_1A978(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = +[NSUserDefaults em_userDefaults];
  [v3 setBool:a2 forKey:v4];
}

void sub_1ADB8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id getMailPreferenceValueWithDefault(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [v5 valueForKey:v3];

  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

id getEmailPreferenceValue(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 valueForKey:v1];

  return v3;
}

id getEmailPreferenceBoolValue(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 BOOLForKey:v1];

  return v3;
}

void setEmailPreferenceValue(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  v4 = +[NSUserDefaults em_userDefaults];
  [v4 setObject:v3 forKey:v5];
  if (([v4 synchronize] & 1) == 0)
  {
    NSLog(@"Failed to synchronize");
  }

  CFPreferencesAppSynchronize(EMUserDefaultsMailAppGroup);
}

void setEmailPreferenceBoolValue(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = [NSNumber numberWithBool:a2];
  setEmailPreferenceValue(v4, v3);
}

id getMailPreferenceValue(void *a1)
{
  v1 = getMailPreferenceValueWithDefault(a1, 0);

  return v1;
}

id getMailBoolPreferenceValueWithDefault(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithBool:a2];
  v5 = getMailPreferenceValueWithDefault(v3, v4);

  v6 = [v5 BOOLValue];
  return v6;
}

id getMailBoolPreferenceValue(void *a1)
{
  v1 = getMailPreferenceValueWithDefault(a1, 0);
  v2 = [v1 BOOLValue];

  return v2;
}

BOOL showToCCIndicators(int a1)
{
  MailBoolPreferenceValue = dword_44610;
  if (dword_44610 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ShowToCCIndicators");
    dword_44610 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewShowsNewestAtTop(int a1)
{
  MailBoolPreferenceValue = dword_44614;
  if (dword_44614 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ConversationViewShowsNewestAtTop");
    dword_44614 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewIncludesRelatedMessages(int a1)
{
  v1 = dword_44618;
  if (dword_44618 < 0 || a1)
  {
    v1 = getMailBoolPreferenceValue(@"ConversationViewExcludesRelatedMessages") ^ 1;
    dword_44618 = v1;
  }

  return v1 != 0;
}

BOOL collapseReadConversationMessages(int a1)
{
  MailBoolPreferenceValueWithDefault = dword_4461C;
  if (dword_4461C < 0 || a1)
  {
    MailBoolPreferenceValueWithDefault = getMailBoolPreferenceValueWithDefault(@"CollapseReadConversationMessages", 1);
    dword_4461C = MailBoolPreferenceValueWithDefault;
  }

  return MailBoolPreferenceValueWithDefault != 0;
}

id includeAttachmentsWithReplies(int a1)
{
  v2 = qword_44A00;
  if (qword_44A00)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = getMailPreferenceValueWithDefault(@"IncludeAttachmentReplies", @"IncludeAttachmentRepliesWhenAdding");
    v5 = [v4 copy];
    v6 = qword_44A00;
    qword_44A00 = v5;

    v2 = qword_44A00;
  }

  return v2;
}

BOOL mutedThreadsMoveToArchive(int a1)
{
  v1 = dword_44620;
  if (dword_44620 < 0 || a1)
  {
    v2 = getMailPreferenceValueWithDefault(EMUserDefaultMutedThreadActionKey, EMUserDefaultMutedThreadActionMarkAsRead);
    dword_44620 = [EMUserDefaultMutedThreadActionMoveToArchiveOrDelete isEqual:v2];

    v1 = dword_44620;
  }

  return v1 != 0;
}

id rightSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_44A10);
  v2 = qword_44A08;
  v3 = v2;
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = getMailPreferenceValueWithDefault(@"LeftEdgeSwipeAction", @"SwipeActionRead");

    if (qword_44A08 != v5)
    {
      objc_storeStrong(&qword_44A08, v5);
    }
  }

  os_unfair_lock_unlock(&unk_44A10);

  return v5;
}

id leftSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_44A20);
  v2 = qword_44A18;
  v3 = v2;
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = getMailPreferenceValueWithDefault(@"RightEdgeSwipeAction", @"SwipeActionFlag");

    if (qword_44A18 != v5)
    {
      objc_storeStrong(&qword_44A18, v5);
    }
  }

  os_unfair_lock_unlock(&unk_44A20);

  return v5;
}

id preferencesBundle()
{
  v0 = qword_44A28;
  if (!qword_44A28)
  {
    v1 = UISystemRootDirectory();
    v2 = [v1 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/MobileMailSettings"];
    v3 = [v2 stringByAppendingPathExtension:@"bundle"];
    v4 = [NSBundle bundleWithPath:v3];
    v5 = qword_44A28;
    qword_44A28 = v4;

    v0 = qword_44A28;
  }

  return v0;
}

double MailTableCellTextLeftForLevel(uint64_t a1)
{
  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  result = 55.0;
  if (IsAccessibilityCategory)
  {
    result = 16.0;
  }

  if (a1 >= 1)
  {
    result = result + 31.0;
    if (a1 != 1)
    {
      return result + ((a1 - 1) * 30.0);
    }
  }

  return result;
}

double MailTableCellImageCenterForLevel(uint64_t a1)
{
  v2 = MailTableCellTextLeftForLevel(a1) + -9.5;
  v3 = -32.0;
  if (a1)
  {
    v3 = -23.0;
  }

  return v2 + v3 * 0.5;
}

void sub_1C8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1CD84(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

void sub_1D840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

id sub_1EA74(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 stringForKey:v1];

  return v3;
}

void sub_1EB10(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = +[NSUserDefaults em_userDefaults];
  [v3 setValue:a2 forKey:v4];
}

void sub_1FC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1FCFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

id sub_201D8(uint64_t a1, void *a2)
{
  sub_202C0();
  v6 = sub_20144();
  _objc_retain(a2);
  v3 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
  _objc_retain(PSListControllerCellHighlightingSelectionInvocationRelayKey);
  sub_25CC0();
  v4 = sub_25CB0();

  _objc_release(v3);
  [v6 setProperty:a2 forKey:v4];
  _objc_release(v4);
  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_202C0()
{
  v2 = qword_446A0;
  if (!qword_446A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_446A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_20324@<X0>(id a1@<X1>, uint64_t a2@<X8>)
{
  _objc_retain(a1);
  sub_25C60();
  v7 = sub_25CB0();

  v9 = [a1 specifierForID:v7];
  _objc_release(v7);
  _objc_release(a1);
  if (v9)
  {
    _objc_retain(a1);
    sub_25CF0("ReferenceController", 0x13uLL, 1);
    v5 = sub_25CB0();

    [v9 setProperty:a1 forKey:v5];
    _objc_release(v5);
    swift_unknownObjectRelease();
    sub_25B80();
    v2 = sub_25B90();
    return (*(*(v2 - 8) + 56))(a2, 0, 1);
  }

  else
  {
    v4 = sub_25B90();
    return (*(*(v4 - 8) + 56))(a2, 1);
  }
}

uint64_t sub_20528@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a9;
  v69 = a1;
  v102 = a2;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v101 = a6;
  v70 = a7;
  v71 = a8;
  v72 = sub_21464;
  v73 = &protocol conformance descriptor for [A];
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v127 = 0;
  v128 = 0;
  v126 = 0;
  v74 = 0;
  v117 = 0uLL;
  v110 = 0;
  v111 = 0;
  v137 = a7;
  v96 = 0;
  v75 = sub_25BB0();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (v76[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v79 = v28 - v78;
  v80 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v78);
  v81 = v28 - v80;
  v136 = v28 - v80;
  v82 = (*(*(sub_210D4(&qword_446A8, &qword_2C790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v96);
  v83 = v28 - v82;
  v84 = sub_25AF0();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v96);
  v88 = v28 - v87;
  v135 = v28 - v87;
  v89 = sub_25B90();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v93 = v28 - v92;
  v94 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v92);
  v95 = v28 - v94;
  v134 = v28 - v94;
  v97 = (*(*(sub_210D4(&qword_446B0, &qword_2C798) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v96);
  v107 = v28 - v97;
  v108 = sub_25BD0();
  v105 = *(v108 - 8);
  v106 = v108 - 8;
  v103 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v108);
  v104 = v28 - v103;
  v133 = v28 - v103;
  v132 = a1;
  v131 = v12;
  v130 = v13;
  v129 = v14;
  v127 = v15;
  v128 = v16;
  sub_25B50();
  if ((*(v105 + 48))(v107, 1, v108) != 1)
  {
    (*(v105 + 32))(v104, v107, v108);
    sub_25C10();
    return (*(v105 + 8))(v104, v108);
  }

  sub_21140(v107);
  v66 = *(v90 + 16);
  v67 = v90 + 16;
  v66(v95, v69, v89);
  sub_211E8(v102, v83);
  if ((*(v85 + 48))(v83, 1, v84) == 1)
  {
    sub_21310(v83);
LABEL_25:
    v29 = v76[2];
    v28[1] = v76 + 2;
    v29(v81, v99, v75);
    v66(v93, v95, v89);
    sub_213B8();
    sub_25BA0();
    v33 = *(v90 + 8);
    v32 = v90 + 8;
    v33(v93, v89);
    v29(v79, v81, v75);
    sub_25C20();
    v31 = v76[1];
    v30 = v76 + 1;
    v31(v79, v75);
    v31(v81, v75);
    return (v33)(v95, v89);
  }

  (*(v85 + 32))(v88, v83, v84);
  v124 = sub_25AB0();
  if (v124)
  {
    v125 = v124;
  }

  else
  {
    v65 = 0;
    sub_25AA0();
    v125 = sub_25E70();
    if (v124)
    {
      sub_21438(&v124);
    }
  }

  v18 = v74;
  v123 = v125;
  v19 = sub_25C80();
  v64 = &v122;
  v122 = v19;
  v62 = sub_210D4(&qword_446C0, &qword_2C7A0);
  v63 = sub_210D4(&qword_446C8, &qword_2C7A8);
  sub_21610();
  result = sub_25D30();
  if (!v18)
  {
    sub_21438(&v123);
    v59 = sub_25CF0("animate", 7uLL, 1);
    v60 = v20;
    v120 = 1;
    v61 = &v121;
    sub_25E30();
    v118 = v59;
    v119 = v60;
    sub_25C90();

    if (v98)
    {
      v58 = v98;
      v55 = &v109;
      v109 = v98;
      v53 = sub_25CF0("/", 1uLL, 1);
      v54 = v21;
      v52 = sub_25D50();
      swift_getWitnessTable();
      *&v56 = sub_25D40();
      *(&v56 + 1) = v22;

      sub_21438(v55);
      v57 = v56;
    }

    else
    {
      v57 = 0uLL;
    }

    v116 = v57;
    if (*(&v57 + 1))
    {
      v117 = v116;
    }

    else
    {
      *&v117 = sub_25CF0("", 0, 1);
      *(&v117 + 1) = v23;
      if (*(&v116 + 1))
      {
        sub_2170C(&v116);
      }
    }

    v50 = sub_25AE0();
    v51 = v24;
    if (v24)
    {
      v48 = v50;
      v49 = v51;
      v47 = v51;
      v44 = v50;
      v110 = v50;
      v111 = v51;
      sub_25CF0("#", 1uLL, 1);
      v45 = v25;
      v46._countAndFlagsBits = sub_25CE0();
      v46._object = v26;

      sub_25D00(v46);
    }

    v42 = v117;

    v43 = sub_25D10();

    if ((v43 & 1) == 0)
    {
      v38 = sub_25CF0("path", 4uLL, 1);
      v39 = v27;
      v37 = v117;

      v41 = &v114;
      v114 = v37;
      v40 = &v115;
      sub_25E30();
      v112 = v38;
      v113 = v39;
      sub_25C90();
      sub_2170C(v41);
    }

    v36 = &v126;
    v35 = v126;

    v34 = sub_25E20();
    sub_25B40();

    (*(v90 + 40))(v95, v93, v89);
    sub_2170C(&v117);
    sub_21438(v36);
    (*(v85 + 8))(v88, v84);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_210D4(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_21140(uint64_t a1)
{
  v3 = sub_25BD0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_211E8(const void *a1, void *a2)
{
  v6 = sub_25AF0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_210D4(&qword_446A8, &qword_2C790);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_21310(uint64_t a1)
{
  v3 = sub_25AF0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_213B8()
{
  v2 = qword_446B8;
  if (!qword_446B8)
  {
    sub_25B90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_446B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_21438(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_21464(uint64_t a1, uint64_t a2)
{
  v9[8] = a1;
  v9[7] = a2;
  sub_25A80();
  sub_25A90();
  if (v2)
  {
    sub_24A98();
    v5 = sub_25DE0();
    v6 = v3;

    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    v9[0] = v7;
    v9[1] = v8;
    sub_25E30();
    sub_2170C(v9);
  }

  else
  {
    memset(&v9[2], 0, 40);
  }

  sub_210D4(&qword_446C8, &qword_2C7A8);
  return sub_25C90();
}

unint64_t sub_21610()
{
  v2 = qword_446D0;
  if (!qword_446D0)
  {
    sub_21698(&qword_446C0, &qword_2C7A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_446D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21698(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t sub_2170C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_21738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v79 = a9;
  v97 = a1;
  v95 = a2;
  v96 = a3;
  v92 = a4;
  v93 = a5;
  v94 = a6;
  v80 = a7;
  v81 = a8;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v112 = 0;
  v113 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v119 = a7;
  v9 = sub_210D4(&qword_446A8, &qword_2C790);
  v82 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v83 = v37 - v82;
  v86 = 0;
  v84 = (*(*(sub_25DD0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v85 = v37 - v84;
  v87 = sub_25B90();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v91 = v37 - v90;
  v118 = v37 - v90;
  v100 = sub_25C70();
  v98 = *(v100 - 8);
  v99 = v100 - 8;
  v10 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v101 = v37 - v11;
  v117 = v97;
  v116 = v12;
  v115 = v96;
  v114 = v13;
  v112 = v14;
  v113 = v15;
  (*(v98 + 104))();
  sub_22150();
  v102 = sub_25E80();
  (*(v98 + 8))(v101, v100);
  if (v102)
  {
    v68 = 1;
    v108 = sub_25CF0("ACUISettingsController", 0x16uLL, 1);
    v109 = v16;
    v71 = sub_25CF0("MAIL_ACCOUNTS", 0xDuLL, v68 & 1);
    v76 = v17;
    v69 = sub_25CF0("Preferences", 0xBuLL, v68 & 1);
    v75 = v18;
    v67 = 0;
    sub_221D0();
    sub_22334();
    v74 = sub_22298();
    v70 = sub_25CF0("", v67, v68 & 1);
    v73 = v19;
    v20 = sub_222F0();
    v122.value._countAndFlagsBits = v69;
    v21.super.isa = v74;
    v122.value._object = v75;
    v124._countAndFlagsBits = v20;
    v120._countAndFlagsBits = v71;
    v124._object = v22;
    v120._object = v76;
    object = v124._object;
    v36._countAndFlagsBits = v73;
    v77 = sub_25B00(v120, v122, v21, v124, v36);
    v78 = v23;

    _objc_release(v74);

    v110 = v77;
    v111 = v78;
  }

  else
  {
    v56 = 1;
    v108 = sub_25CF0("ACUIAddAccountViewController", 0x1CuLL, 1);
    v109 = v24;
    v59 = sub_25CF0("ADD_ACCOUNT", 0xBuLL, v56 & 1);
    v64 = v25;
    v57 = sub_25CF0("PSSystemPolicy", 0xEuLL, v56 & 1);
    v63 = v26;
    v55 = 0;
    sub_221D0();
    sub_22234();
    v62 = sub_22298();
    v58 = sub_25CF0("", v55, v56 & 1);
    v61 = v27;
    v28 = sub_222F0();
    v123.value._countAndFlagsBits = v57;
    v29.super.isa = v62;
    v123.value._object = v63;
    v125._countAndFlagsBits = v28;
    v121._countAndFlagsBits = v59;
    v125._object = v30;
    v121._object = v64;
    v60 = v125._object;
    v36._countAndFlagsBits = v61;
    v65 = sub_25B00(v121, v123, v29, v125, v36);
    v66 = v31;

    _objc_release(v62);

    v110 = v65;
    v111 = v66;
  }

  v46 = v108;
  v47 = v109;
  v37[1] = v110;
  v54 = v111;
  v106 = v108;
  v107 = v109;
  v104 = v110;
  v105 = v111;
  v48 = 0;
  sub_202C0();
  v53 = sub_20144();
  v103 = v53;

  v38 = sub_25CB0();

  [v53 setName:v38];
  _objc_release(v38);
  v51 = 1;
  sub_25CF0("com.apple.mobilemail", 0x14uLL, 1);
  v39 = v32;
  v43 = sub_25CB0();

  v41 = PSAppSettingsBundleIDKey;
  _objc_retain(PSAppSettingsBundleIDKey);
  sub_25CC0();
  v40 = v33;
  v42 = sub_25CB0();

  _objc_release(v41);
  [v53 setProperty:v43 forKey:v42];
  _objc_release(v42);
  swift_unknownObjectRelease();
  _objc_retain(v53);
  v44 = sub_25CF0("AccountSettingsUI", 0x11uLL, v51 & 1);
  v45 = v34;
  sub_2231C();
  sub_25B70();
  v52 = sub_25AF0();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  (*(v49 + 16))(v83, v95);
  (*(v49 + 56))(v83, 0, v51, v52);

  sub_20528(v91, v83, v96, v92, v93, v94, v80, v81, v79);

  sub_21310(v83);
  (*(v88 + 8))(v91, v87);
  _objc_release(v53);
}

unint64_t sub_22150()
{
  v2 = qword_446D8;
  if (!qword_446D8)
  {
    sub_25C70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_446D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_221D0()
{
  v2 = qword_446E0;
  if (!qword_446E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_446E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22234()
{
  v2 = qword_446E8;
  if (!qword_446E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_446E8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_22298()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

unint64_t sub_22334()
{
  v2 = qword_446F0;
  if (!qword_446F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_446F0);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_22398(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a8;
  v28 = a1;
  v31 = a2;
  v29 = a3;
  v39 = a4;
  v30 = a5;
  v22 = a6;
  v23 = a7;
  v24 = "Fatal error";
  v25 = "MobileMailSettings/MailSettingsExperience.swift";
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v48 = a6;
  v8 = sub_210D4(&qword_446A8, &qword_2C790);
  v26 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v27 = &v15 - v26;
  v32 = sub_25B90();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v39);
  v36 = &v15 - v35;
  v47 = &v15 - v35;
  v46 = v10;
  v45 = v11;
  v44 = v12;
  v42 = v9;
  v43 = v13;
  _objc_retain(v9);
  sub_25CF0("NOTIFICATIONS", 0xDuLL, 1);
  v37 = v14;
  v38 = sub_25CB0();

  v40 = [v39 specifierForID:v38];
  _objc_release(v38);
  _objc_release(v39);
  if (v40)
  {
    v20 = v40;
    v19 = v40;
    v41 = v40;
    _objc_retain(v40);
    sub_25B80();
    v18 = sub_25AF0();
    v16 = *(v18 - 8);
    v17 = v18 - 8;
    (*(v16 + 16))(v27, v28);
    (*(v16 + 56))(v27, 0, 1, v18);

    sub_20528(v36, v27, v31, v29, v39, v30, v22, v23, v21);

    sub_21310(v27);
    (*(v33 + 8))(v36, v32);
    _objc_release(v19);
  }

  else
  {
    sub_2496C();
    sub_25E10();
    __break(1u);
  }
}

uint64_t sub_22730@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v39 = a1;
  v40 = a2;
  v25 = 0;
  v34 = &opaque type descriptor for <<opaque return type of View.bridgedSettingsFeatureDescriptionNavigationTitle<A>(_:)>>;
  v37 = sub_24A04;
  v42 = &unk_2C7D0;
  v48 = &opaque type descriptor for <<opaque return type of SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)>>;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v46 = sub_210D4(&qword_446F8, &qword_2C7B0);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v18 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v45 = &v18 - v18;
  v56 = sub_210D4(&qword_44700, &qword_2C7B8);
  v50 = *(v56 - 8);
  v51 = v56 - 8;
  v19 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v39);
  v54 = &v18 - v19;
  v20 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v55 = &v18 - v20;
  v69 = &v18 - v20;
  v67 = v5;
  v68 = v6;
  v21 = 0;
  sub_221D0();
  sub_22334();
  v28 = sub_22298();
  v23 = 1;
  sub_25CF0("MAIL", 4uLL, 1);
  v22 = v7;
  v27 = sub_25CB0();

  sub_25CF0("Preferences", 0xBuLL, v23 & 1);
  v24 = v8;
  v26 = sub_25CB0();

  v29 = [v28 localizedStringForKey:v27 value:v25 table:v26];
  _objc_release(v26);
  _objc_release(v27);
  _objc_release(v28);
  v30 = sub_25CC0();
  v31 = v9;
  v65 = v30;
  v66 = v9;
  _objc_release(v29);
  _objc_retain(v39);
  _objc_retain(v40);
  v38 = 7;
  v10 = swift_allocObject();
  v11 = v30;
  v12 = v31;
  v13 = v40;
  v35 = v10;
  v10[2] = v39;
  v10[3] = v13;
  v10[4] = v11;
  v10[5] = v12;
  v36 = sub_210D4(&qword_44708, &qword_2C7C0);
  v32 = sub_25B30();
  v33 = sub_24A18();
  v14 = sub_24A98();
  v61 = v32;
  v62 = &type metadata for String;
  v63 = v33;
  v64 = v14;
  v49 = 1;
  swift_getOpaqueTypeConformance2();
  sub_25C30();
  _objc_retain(v39);
  _objc_retain(v40);
  v15 = swift_allocObject();
  v16 = v40;
  v41 = v15;
  *(v15 + 16) = v39;
  *(v15 + 24) = v16;
  v47 = sub_24D64();
  sub_25BE0();
  (*(v43 + 8))(v45, v46);
  v59 = v46;
  v60 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23168(v54, v56, v55);
  v58 = *(v50 + 8);
  v57 = v50 + 8;
  v58(v54, v56);
  (*(v50 + 16))(v54, v55, v56);
  sub_23168(v54, v56, v52);
  v58(v54, v56);
  return (v58)(v55, v56);
}

uint64_t sub_22D58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v19 = a1;
  v18 = a2;
  v22 = a3;
  v23 = a4;
  v32 = &opaque type descriptor for <<opaque return type of View.bridgedSettingsFeatureDescriptionNavigationTitle<A>(_:)>>;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v14 = 0;
  v12 = (*(*(sub_25B90() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v21 = &v11 - v12;
  v28 = sub_25B30();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v13 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v27 = &v11 - v13;
  v39 = sub_210D4(&qword_44708, &qword_2C7C0);
  v33 = *(v39 - 8);
  v34 = v39 - 8;
  v16 = *(v33 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v14);
  v37 = &v11 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v38 = &v11 - v17;
  v51 = &v11 - v17;
  v49 = v6;
  v50 = v7;
  v47 = v8;
  v48 = v9;
  v20 = sub_22334();
  sub_201D8(v19, v18);
  sub_25B60();
  sub_25B20();
  v24 = v46;
  v46[0] = v22;
  v46[1] = v23;
  v30 = sub_24A18();
  v31 = sub_24A98();
  v29 = &type metadata for String;
  sub_25BC0();
  (*(v25 + 8))(v27, v28);
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23168(v37, v39, v38);
  v41 = *(v33 + 8);
  v40 = v33 + 8;
  v41(v37, v39);
  (*(v33 + 16))(v37, v38, v39);
  sub_23168(v37, v39, v35);
  v41(v37, v39);
  return (v41)(v38, v39);
}

uint64_t sub_231CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a4;
  *(v4 + 240) = a3;
  *(v4 + 232) = a2;
  *(v4 + 224) = a1;
  *(v4 + 176) = v4;
  *(v4 + 184) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 192) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  v5 = *(*(sub_210D4(&qword_447D0, &qword_2C910) - 8) + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v6 = sub_25B90();
  *(v4 + 264) = v6;
  v19 = *(v6 - 8);
  *(v4 + 272) = v19;
  v7 = *(v19 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v8 = *(*(sub_210D4(&qword_447D8, &qword_2C918) - 8) + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  v9 = sub_25C70();
  *(v4 + 296) = v9;
  v20 = *(v9 - 8);
  *(v4 + 304) = v20;
  v21 = *(v20 + 64);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v10 = sub_25BB0();
  *(v4 + 328) = v10;
  v22 = *(v10 - 8);
  *(v4 + 336) = v22;
  v11 = *(v22 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  v12 = sub_25B10();
  *(v4 + 352) = v12;
  v23 = *(v12 - 8);
  *(v4 + 360) = v23;
  v13 = *(v23 + 64) + 15;
  *(v4 + 368) = swift_task_alloc();
  v24 = *(*(sub_210D4(&qword_446A8, &qword_2C790) - 8) + 64);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  v14 = sub_25AF0();
  *(v4 + 392) = v14;
  v25 = *(v14 - 8);
  *(v4 + 400) = v25;
  v15 = *(v25 + 64) + 15;
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 184) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  sub_25D80();
  *(v4 + 416) = sub_25D70();
  v29 = sub_25D60();
  v17 = *(v4 + 176);

  return _swift_task_switch(sub_235E0, v29, v16);
}

uint64_t sub_235E0()
{
  v132 = v0[50];
  v134 = v0[49];
  v133 = v0[48];
  v130 = v0[46];
  v129 = v0[45];
  v131 = v0[44];
  v1 = v0[29];
  v0[22] = v0;
  sub_25C00();
  sub_25AC0();
  (*(v129 + 8))(v130, v131);
  if ((*(v132 + 48))(v133, 1, v134) == 1)
  {
    v126 = *(v128 + 344);
    v127 = *(v128 + 328);
    v2 = *(v128 + 232);
    v124 = *(v128 + 224);
    v125 = *(v128 + 336);
    sub_21310(*(v128 + 384));
    sub_25BF0();
    sub_25C20();
    (*(v125 + 8))(v126, v127);
LABEL_29:
    v26 = *(v128 + 416);
    v29 = *(v128 + 408);
    v30 = *(v128 + 384);
    v31 = *(v128 + 376);
    v32 = *(v128 + 368);
    v33 = *(v128 + 344);
    v34 = *(v128 + 320);
    v35 = *(v128 + 312);
    v36 = *(v128 + 288);
    v37 = *(v128 + 280);
    v38 = *(v128 + 256);

    v27 = *(*(v128 + 176) + 8);
    v28 = *(v128 + 176);

    return v27();
  }

  else
  {
    (*(*(v128 + 400) + 32))(*(v128 + 408), *(v128 + 384), *(v128 + 392));
    *(v128 + 96) = sub_25AD0();
    *(v128 + 104) = v3;
    *(v128 + 112) = sub_25CA0("/", 1uLL, 1);
    *(v128 + 120) = v4;
    sub_2532C();
    sub_246C0();
    sub_246D4();
    v123 = sub_25DA0();
    sub_2170C(v128 + 112);
    *(v128 + 200) = v123;
    sub_210D4(&qword_447E8, qword_2C920);
    sub_253A4();
    *(v128 + 192) = sub_25E00();
    while (1)
    {
      v121 = *(v128 + 192);

      *(v128 + 208) = v121;
      sub_2542C();
      v122 = sub_25D90();

      if (v122)
      {
        goto LABEL_18;
      }

      v120 = *(v128 + 296);
      v119 = *(v128 + 288);
      v118 = *(v128 + 304);
      sub_254B4();
      sub_25DB0();
      v5 = *(v128 + 24);
      v6 = *(v128 + 32);
      v7 = *(v128 + 40);
      *(v128 + 48) = *(v128 + 16);
      *(v128 + 56) = v5;
      *(v128 + 64) = v6;
      *(v128 + 72) = v7;
      sub_25D20();
      sub_25C50();
      if ((*(v118 + 48))(v119, 1, v120) == 1)
      {
        sub_2553C(*(v128 + 288));

LABEL_18:
        v55 = *(v128 + 192);

        *(v128 + 216) = v55;
        v56 = sub_25D90();

        if (v56)
        {
          v22 = *(v128 + 408);
          v54 = sub_25AE0();
          if (v23)
          {
            v52 = *(v128 + 248);
            *(v128 + 128) = v54;
            *(v128 + 136) = v23;
            _objc_retain(v52);
            v53 = [v52 specifierIdentifierToScrollAndSelect];
            if (v53)
            {
              v48 = sub_25CC0();
              v49 = v24;
              _objc_release(v53);
              v50 = v48;
              v51 = v49;
            }

            else
            {
              v50 = 0;
              v51 = 0;
            }

            _objc_release(*(v128 + 248));
            *(v128 + 144) = v50;
            *(v128 + 152) = v51;
            if (*(v128 + 152))
            {
              sub_2170C(v128 + 144);
            }

            else
            {
              sub_2170C(v128 + 144);
              v47 = *(v128 + 248);
              _objc_retain(v47);

              v46 = sub_25CB0();

              [v47 setSpecifierIdentifierToScrollAndHighlight:v46];
              _objc_release(v46);
              _objc_release(v47);
            }
          }
        }

        v45 = *(v128 + 408);
        v44 = *(v128 + 392);
        v41 = *(v128 + 344);
        v42 = *(v128 + 328);
        v25 = *(v128 + 232);
        v39 = *(v128 + 224);
        v43 = *(v128 + 400);
        v40 = *(v128 + 336);
        sub_25BF0();
        sub_25C20();
        (*(v40 + 8))(v41, v42);
        sub_21438((v128 + 192));
        (*(v43 + 8))(v45, v44);
        goto LABEL_29;
      }

      v113 = *(v128 + 320);
      v116 = *(v128 + 312);
      v115 = *(v128 + 296);
      v8 = *(v128 + 288);
      v114 = *(v128 + 304);
      (*(v114 + 32))();
      (*(v114 + 16))(v116, v113, v115);
      v117 = (*(v114 + 88))(v116, v115);
      if (v117 == enum case for MailSettingsSpecifier.accounts(_:) || v117 == enum case for MailSettingsSpecifier.addAccount(_:))
      {
        v112 = *(v128 + 408);
        v111 = *(v128 + 392);
        v104 = *(v128 + 344);
        v105 = *(v128 + 328);
        v108 = *(v128 + 320);
        v109 = *(v128 + 296);
        v102 = *(v128 + 248);
        v101 = *(v128 + 240);
        v9 = *(v128 + 232);
        v100 = *(v128 + 224);
        v110 = *(v128 + 400);
        v103 = *(v128 + 336);
        v107 = *(v128 + 304);
        v106 = *(v128 + 192);

        sub_25BF0();
        v10 = sub_2568C();
        sub_21738(v108, v112, v106, v104, v101, v102, &type metadata for Substring, v10, v100);
        (*(v103 + 8))(v104, v105);

        (*(v107 + 8))(v108, v109);

        sub_21438((v128 + 192));
        (*(v110 + 8))(v112, v111);
        goto LABEL_29;
      }

      if (v117 == enum case for MailSettingsSpecifier.notifications(_:))
      {
        v99 = *(v128 + 408);
        v98 = *(v128 + 392);
        v91 = *(v128 + 344);
        v92 = *(v128 + 328);
        v95 = *(v128 + 320);
        v96 = *(v128 + 296);
        v89 = *(v128 + 248);
        v88 = *(v128 + 240);
        v11 = *(v128 + 232);
        v87 = *(v128 + 224);
        v97 = *(v128 + 400);
        v90 = *(v128 + 336);
        v94 = *(v128 + 304);
        v93 = *(v128 + 192);

        sub_25BF0();
        v12 = sub_2568C();
        sub_22398(v99, v93, v91, v88, v89, &type metadata for Substring, v12, v87);
        (*(v90 + 8))(v91, v92);

        (*(v94 + 8))(v95, v96);

        sub_21438((v128 + 192));
        (*(v97 + 8))(v99, v98);
        goto LABEL_29;
      }

      v13 = *(v128 + 320);
      v14 = sub_25C40();
      if (v14)
      {
        break;
      }

      v57 = *(v128 + 320);
      v58 = *(v128 + 296);
      v21 = (*(v128 + 304) + 8);
      v59 = *v21;
      (*v21)(*(v128 + 312));
      v59(v57, v58);
    }

    v15 = *(v128 + 320);
    v86 = *(v128 + 264);
    v85 = *(v128 + 256);
    v16 = *(v128 + 248);
    v84 = *(v128 + 272);
    sub_20324(*(v128 + 240), v85);
    if ((*(v84 + 48))(v85, 1, v86) != 1)
    {
      v83 = *(v128 + 408);
      v82 = *(v128 + 392);
      v73 = *(v128 + 376);
      v71 = *(v128 + 344);
      v72 = *(v128 + 328);
      v79 = *(v128 + 320);
      v78 = *(v128 + 312);
      v80 = *(v128 + 296);
      v76 = *(v128 + 280);
      v75 = *(v128 + 264);
      v17 = *(v128 + 256);
      v67 = *(v128 + 248);
      v66 = *(v128 + 240);
      v18 = *(v128 + 232);
      v65 = *(v128 + 224);
      v64 = *(v128 + 400);
      v70 = *(v128 + 336);
      v77 = *(v128 + 304);
      v74 = *(v128 + 272);
      (*(v74 + 32))();
      (*(v64 + 56))(v73, 1, 1, v82);
      sub_25BF0();
      v68 = sub_24A98();
      v69 = sub_20514();
      sub_20528(v76, v73, v69, v71, v66, v67, &type metadata for String, v68, v65);

      (*(v70 + 8))(v71, v72);
      sub_21310(v73);
      (*(v74 + 8))(v76, v75);
      v81 = *(v77 + 8);
      v81(v78, v80);
      v81(v79, v80);

      sub_21438((v128 + 192));
      (*(v64 + 8))(v83, v82);
      goto LABEL_29;
    }

    v60 = *(v128 + 320);
    v61 = *(v128 + 296);
    sub_255E4(*(v128 + 256));
    *(v128 + 160) = sub_25E60();
    *(v128 + 168) = v19;
    v136._countAndFlagsBits = sub_25CF0("recipe not found for ", 0x15uLL, 1);
    sub_25E50(v136);

    sub_25E40();
    v137._countAndFlagsBits = sub_25CF0(": mismatch between MailSettingsSpecifier and MailSettingsPlugin", 0x3FuLL, 1);
    sub_25E50(v137);

    v63 = *(v128 + 160);
    v62 = *(v128 + 168);

    sub_2170C(v128 + 160);
    sub_25CD0();
    return sub_25E10();
  }
}

uint64_t sub_246EC(__int128 *a1)
{
  v13 = 0u;
  v14 = 0u;
  v5 = *a1;
  v6 = a1[1];
  v13 = v5;
  v14 = v6;
  v11 = v5;
  v12 = v6;
  sub_25704();
  v7 = sub_25D90();

  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v8[0] = sub_25CF0("com.apple.mobilemail", 0x14uLL, 1);
    v8[1] = v1;
    sub_2568C();
    sub_24A98();
    v3 = sub_25DF0();
    sub_2170C(v8);
    v4 = v3;
  }

  return v4 & 1;
}

id sub_24860()
{
  v3 = 0;
  v4 = 0;
  sub_22334();
  v2 = sub_20144();
  _objc_retain(v2);
  v3 = v2;
  sub_25280();
  v1 = sub_20144();
  _objc_retain(v1);
  v4 = v1;
  sub_252E4(&v3);
  return v2;
}

id sub_24918@<X0>(void *a1@<X8>)
{
  result = sub_24860();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_249A4()
{
  _objc_release(*(v0 + 16));
  _objc_release(*(v0 + 24));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_24A18()
{
  v2 = qword_44710;
  if (!qword_44710)
  {
    sub_25B30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_44710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_24A98()
{
  v2 = qword_44718;
  if (!qword_44718)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_44718);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_24B10()
{
  _objc_release(*(v0 + 16));
  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_24B68(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_24C3C;

  return sub_231CC(a1, a2, v8, v9);
}

uint64_t sub_24C3C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_24D64()
{
  v2 = qword_44720;
  if (!qword_44720)
  {
    sub_21698(&qword_446F8, &qword_2C7B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_44720);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_24E14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24E20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_25148()
{
  sub_21698(&qword_446F8, &qword_2C7B0);
  sub_24D64();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25204()
{
  v2 = qword_447C0;
  if (!qword_447C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_447C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25280()
{
  v2 = qword_447C8;
  if (!qword_447C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_447C8);
    return ObjCClassMetadata;
  }

  return v2;
}

id *sub_252E4(id *a1)
{
  _objc_release(*a1);
  _objc_release(a1[1]);
  return a1;
}

unint64_t sub_2532C()
{
  v2 = qword_447E0;
  if (!qword_447E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_447E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_253A4()
{
  v2 = qword_447F0;
  if (!qword_447F0)
  {
    sub_21698(&qword_447E8, qword_2C920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_447F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2542C()
{
  v2 = qword_447F8;
  if (!qword_447F8)
  {
    sub_21698(&qword_447E8, qword_2C920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_447F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_254B4()
{
  v2 = qword_44800;
  if (!qword_44800)
  {
    sub_21698(&qword_447E8, qword_2C920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_44800);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2553C(uint64_t a1)
{
  v3 = sub_25C70();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_255E4(uint64_t a1)
{
  v3 = sub_25B90();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_2568C()
{
  v2 = qword_44808;
  if (!qword_44808)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_44808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25704()
{
  v2 = qword_44810;
  if (!qword_44810)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_44810);
    return WitnessTable;
  }

  return v2;
}

id sub_2577C()
{
  sub_221D0();
  type metadata accessor for ResourceBundleClass();
  result = sub_22298();
  qword_44818 = result;
  return result;
}

uint64_t *sub_257C4()
{
  if (qword_44698 != -1)
  {
    swift_once();
  }

  return &qword_44818;
}

void sub_2584C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to register for app extensions changes error: %{public}@", buf, 0xCu);
}

void sub_258A4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. Account did not return valid mailboxUid for mailboxURL: %@", &v3, 0xCu);
}

void sub_25920(uint64_t a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2 & 1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. (Id: %{public}@, Active: %lu)", buf, 0x16u);
}

void sub_25990(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "#Nano Unable to decode signature: %{public}@", &v2, 0xCu);
}

void sub_25A08(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "#Nano Posting NotificationCenter Notification Bridge Setting has Changed for key: %@", &v2, 0xCu);
}