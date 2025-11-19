void sub_1278(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1E818;
  qword_1E818 = v1;
}

double sub_1944(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v13 = a7 + CGRectGetWidth(*&a3) * -0.5;
  if (a2)
  {
    v13 = v13 + *(a1 + 40);
  }

  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGRectGetHeight(v15);
  UIRoundToViewScale();
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetWidth(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetHeight(v17);
  return v13;
}

void *sub_27DC(void *result, uint64_t a2)
{
  v2 = result[4];
  if ((*(v2 + 8) & a2) != 0)
  {
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24);
    if (v4 >= result[6])
    {
      *(v2 + 24) |= a2;
    }

    else
    {
      *(v3 + 24) = v4 + 1;
    }
  }

  return result;
}

id MFSAPersonAttributeFromEmail(void *a1)
{
  v1 = a1;
  v2 = [v1 emailAddressValue];
  v3 = [v2 simpleAddress];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v1 stringValue];
  }

  v6 = v5;

  if ([v6 length])
  {
    v7 = objc_alloc_init(SAPersonAttribute);
    v8 = v1;
    v9 = [v8 emailAddressValue];
    v10 = [v9 displayName];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v8 stringValue];
    }

    v13 = v12;

    [v7 setData:v6];
    if ([v13 length])
    {
      [v7 setDisplayText:v13];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id MFSAPersonAttributesFromEmails(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = MFSAPersonAttributeFromEmail(*(*(&v9 + 1) + 8 * i));
        if (v7)
        {
          [v2 addObject:{v7, v9}];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  if (![v2 count])
  {

    v2 = 0;
  }

  return v2;
}

id MFCommentedEmailsFromSAPersonAttributes(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(ECEmailAddressFormatter);
  [v2 setShouldIncludeDisplayName:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_333C;
  v6[3] = &unk_186B0;
  v3 = v2;
  v7 = v3;
  v4 = [v1 ef_compactMap:v6];
  if (![v4 count])
  {

    v4 = 0;
  }

  return v4;
}

id sub_333C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];
  v5 = [ECEmailAddressComponents componentsWithString:v4];
  v6 = [v3 displayText];
  [v5 setDisplayName:v6];

  v7 = *(a1 + 32);
  v8 = [v5 emailAddressValue];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  v11 = [v7 stringFromEmailAddressConvertible:v10];

  if ([v11 length])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_3428(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_4728(uint64_t a1)
{
  [*(a1 + 32) _prepareSiriSnippetContents];
  [*(a1 + 32) setLoading:0];
  v2 = [*(a1 + 32) delegate];
  [v2 siriSnippetViewControllerViewDidLoad:*(a1 + 32)];
}

double sub_5B1C(double a1)
{
  v2 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
  [v2 scaledValueForValue:a1];
  v4 = v3;

  return v4;
}

void sub_705C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1E830;
  qword_1E830 = v1;

  [qword_1E830 setDateStyle:2];
  v3 = qword_1E830;

  [v3 setTimeStyle:1];
}

double sub_8310(double a1)
{
  v2 = +[UIFontMetrics defaultMetrics];
  [v2 scaledValueForValue:a1];
  v4 = v3;

  return v4;
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
  MailBoolPreferenceValue = dword_1E800;
  if (dword_1E800 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ShowToCCIndicators");
    dword_1E800 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewShowsNewestAtTop(int a1)
{
  MailBoolPreferenceValue = dword_1E804;
  if (dword_1E804 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ConversationViewShowsNewestAtTop");
    dword_1E804 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewIncludesRelatedMessages(int a1)
{
  v1 = dword_1E808;
  if (dword_1E808 < 0 || a1)
  {
    v1 = getMailBoolPreferenceValue(@"ConversationViewExcludesRelatedMessages") ^ 1;
    dword_1E808 = v1;
  }

  return v1 != 0;
}

BOOL collapseReadConversationMessages(int a1)
{
  MailBoolPreferenceValueWithDefault = dword_1E80C;
  if (dword_1E80C < 0 || a1)
  {
    MailBoolPreferenceValueWithDefault = getMailBoolPreferenceValueWithDefault(@"CollapseReadConversationMessages", 1);
    dword_1E80C = MailBoolPreferenceValueWithDefault;
  }

  return MailBoolPreferenceValueWithDefault != 0;
}

id includeAttachmentsWithReplies(int a1)
{
  v2 = qword_1E840;
  if (qword_1E840)
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
    v6 = qword_1E840;
    qword_1E840 = v5;

    v2 = qword_1E840;
  }

  return v2;
}

BOOL mutedThreadsMoveToArchive(int a1)
{
  v1 = dword_1E810;
  if (dword_1E810 < 0 || a1)
  {
    v2 = getMailPreferenceValueWithDefault(EMUserDefaultMutedThreadActionKey, EMUserDefaultMutedThreadActionMarkAsRead);
    dword_1E810 = [EMUserDefaultMutedThreadActionMoveToArchiveOrDelete isEqual:v2];

    v1 = dword_1E810;
  }

  return v1 != 0;
}

id rightSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_1E850);
  v2 = qword_1E848;
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

    if (qword_1E848 != v5)
    {
      objc_storeStrong(&qword_1E848, v5);
    }
  }

  os_unfair_lock_unlock(&unk_1E850);

  return v5;
}

id leftSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_1E860);
  v2 = qword_1E858;
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

    if (qword_1E858 != v5)
    {
      objc_storeStrong(&qword_1E858, v5);
    }
  }

  os_unfair_lock_unlock(&unk_1E860);

  return v5;
}

id preferencesBundle()
{
  v0 = qword_1E868;
  if (!qword_1E868)
  {
    v1 = UISystemRootDirectory();
    v2 = [v1 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/MobileMailSettings"];
    v3 = [v2 stringByAppendingPathExtension:@"bundle"];
    v4 = [NSBundle bundleWithPath:v3];
    v5 = qword_1E868;
    qword_1E868 = v4;

    v0 = qword_1E868;
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

char *sub_B228(uint64_t a1)
{
  result = [*(a1 + 32) effectiveUserInterfaceLayoutDirection];
  byte_1E870 = result == &dword_0 + 1;
  return result;
}

void sub_B564(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
}

void sub_B5BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "#SiriMailSnippet MFAssistantEmail: %@", &v2, 0xCu);
}