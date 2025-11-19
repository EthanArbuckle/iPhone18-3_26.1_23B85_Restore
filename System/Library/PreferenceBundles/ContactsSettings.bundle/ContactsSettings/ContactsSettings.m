void CNUICopyAccountInformation(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v29 = objc_opt_new();
  v12 = objc_opt_new();
  if (a4)
  {
    v13 = objc_opt_new();
    if (a5)
    {
LABEL_3:
      v30 = objc_opt_new();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
LABEL_6:
  v31 = v13;
  v14 = v11;
  v28 = v14;
  if (!v14)
  {
    v14 = +[ACAccountStore defaultStore];
  }

  v15 = ABAddressBookCopyArrayOfAllAccounts();
  if (v15)
  {
    v16 = v15;
    Count = CFArrayGetCount(v15);
    if (Count >= 1)
    {
      v18 = Count;
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
        sub_1DB4(ValueAtIndex, v29, a1, v12, v30, a5, v31, a4, v14);
      }
    }

    CFRelease(v16);
  }

  v21 = ABAddressBookCopyLocalSource();
  if (v21)
  {
    v22 = v21;
    v23 = ABRecordCopyValue(v21, kABSourceEnabledProperty);
    if (([v23 BOOLValue] & 1) != 0 || !objc_msgSend(v29, "count"))
    {
      sub_1DB4(0, v29, a1, v12, v30, a5, v31, a4, v14);
    }

    CFRelease(v22);
  }

  if (a2)
  {
    v24 = v29;
    *a2 = v29;
  }

  if (a3)
  {
    v25 = v12;
    *a3 = v12;
  }

  if (a4)
  {
    v26 = v31;
    *a4 = v31;
  }

  if (a5)
  {
    v27 = v30;
    *a5 = v30;
  }
}

void sub_1DB4(const void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a9;
  if (!a1)
  {
    v60 = 0;
    v22 = ABAddressBookCopyLocalSource();
    v25 = 0;
    v19 = 0;
    v24 = @"local";
    goto LABEL_8;
  }

  v18 = ABAccountCopyIdentifier();
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_ADD4(a1);
    }

    v19 = 0;
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v17 displayTypeForAccountWithIdentifier:v18];
  if (!v20)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v19;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Could not find account with identifier <%@> in the account store", buf, 0xCu);
    }

LABEL_16:
    v25 = 0;
    goto LABEL_68;
  }

  v58 = v20;
  v60 = a1;
  DefaultSourceForAccount = ABAddressBookGetDefaultSourceForAccount();
  if (DefaultSourceForAccount)
  {
    v22 = DefaultSourceForAccount;
    v23 = ABRecordCopyValue(DefaultSourceForAccount, kABSourceEnabledProperty);
    if ([v23 BOOLValue])
    {
      CFRetain(v22);

      v24 = v19;
      v25 = v58;
      goto LABEL_8;
    }

    v56 = v19;
    v57 = v15;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v19;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Default store for account with identifier <%@> was not enabled.  Using another store instead", buf, 0xCu);
    }
  }

  else
  {
    v56 = v19;
    v57 = v15;
    v23 = 0;
  }

  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v42 = ABAddressBookCopyArrayOfAllSourcesInAccount();
  v43 = [v42 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v43)
  {
    v44 = v43;
    v53 = v16;
    v54 = v14;
    v55 = v13;
    v63 = 0;
    v45 = 0;
    v46 = *v65;
    v47 = kABSourceEnabledProperty;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        v49 = v23;
        if (*v65 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v50 = *(*(&v64 + 1) + 8 * i);
        v23 = ABRecordCopyValue(v50, v47);

        v51 = ABRecordCopyValue(v50, kABSourceTypeProperty);
        if ([v23 BOOLValue])
        {
          if (([v51 intValue] & 0x1000000) != 0)
          {
            if (!v45)
            {
              v45 = v50;
            }
          }

          else if (!v63)
          {
            v63 = v50;
          }
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v44);

    v22 = v63;
    if (v63)
    {

      v13 = v55;
      v19 = v56;
      v24 = v56;
      v16 = v53;
      v14 = v54;
      v15 = v57;
      v25 = v58;
      goto LABEL_8;
    }

    v14 = v54;
    v13 = v55;
    v16 = v53;
    v19 = v56;
    v25 = v58;
    if (v45)
    {
      v52 = CFRetain(v45);
      if (v52)
      {
        v22 = v52;

        v24 = v56;
        v15 = v57;
LABEL_8:
        [v13 addObject:v24];
        IntValue = ABRecordGetIntValue();
        [v14 addObject:v22];
        CFRelease(v22);
        if (!a6)
        {
          goto LABEL_28;
        }

        if (v25)
        {
          v27 = [v25 accountTypeDescription];
        }

        else
        {
          v27 = 0;
        }

        if ((IntValue & 0xFEFFFFFF) == 4)
        {
          if (![(__CFString *)v27 length])
          {
            v28 = CNContactsUIBundle();
            v29 = v28;
            v30 = @"CARDDAV";
            goto LABEL_24;
          }
        }

        else
        {
          if ((IntValue & 0xFEFFFFFF) != 1)
          {
            switch(IntValue)
            {
              case 0:
                v33 = &stru_14F18;
                v32 = v15;
                goto LABEL_26;
              case 16777219:
                if ([(__CFString *)v27 length])
                {
                  goto LABEL_25;
                }

                v28 = CNContactsUIBundle();
                v29 = v28;
                v30 = @"LDAP";
                break;
              case 2:
                if ([(__CFString *)v27 length])
                {
                  goto LABEL_25;
                }

                v28 = CNContactsUIBundle();
                v29 = v28;
                v30 = @"MOBILEME";
                break;
              default:
                goto LABEL_27;
            }

            goto LABEL_24;
          }

          if (![(__CFString *)v27 length])
          {
            v28 = CNContactsUIBundle();
            v29 = v28;
            v30 = @"EXCHANGE";
LABEL_24:
            [v28 localizedStringForKey:v30 value:&stru_14F18 table:@"Localized"];
            v31 = v59 = v25;

            v27 = v31;
            v25 = v59;
          }
        }

LABEL_25:
        v32 = v15;
        v33 = v27;
LABEL_26:
        [v32 addObject:v33];
LABEL_27:

LABEL_28:
        if (!a8)
        {
          goto LABEL_68;
        }

        if (IntValue)
        {
          if (v60)
          {
            [v17 accountWithIdentifier:v19];
            v35 = v34 = v25;
            v36 = [v35 displayAccount];
            v37 = [v36 accountDescription];

            v25 = v34;
            if (v37)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v37 = 0;
          }

          if (!v25)
          {
LABEL_44:
            if (![v37 length])
            {
              CNContactsUIBundle();
              v40 = v39 = v25;
              v41 = [v40 localizedStringForKey:@"CONTACTS" value:&stru_14F18 table:@"AB"];

              v25 = v39;
              v37 = v41;
            }

            [v16 addObject:v37];

            goto LABEL_68;
          }

          v38 = [v25 accountTypeDescription];
        }

        else
        {
          v38 = [(objc_class *)off_19240() localizedTitleForLocalSourceOfDataclass:kAccountDataclassContacts usedAtBeginningOfSentence:1];
        }

        v37 = v38;
        goto LABEL_44;
      }
    }
  }

  else
  {

    v19 = v56;
    v25 = v58;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_AD54(v19);
  }

  v15 = v57;
LABEL_68:
}

Class sub_2408()
{
  if (qword_195D0 != -1)
  {
    sub_AE58();
  }

  result = objc_getClass("ACUILocalization");
  qword_195C0 = result;
  off_19240 = sub_245C;
  return result;
}

void sub_2468(id a1)
{
  qword_195C8 = dlopen("/System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI", 1);
  if (!qword_195C8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_AE6C();
  }
}

uint64_t sub_2CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  if (!v4 || (v5 = [*(a1 + 72) isContact:v3 presentInContainer:v4 store:*(a1 + 40)], v3 = v9, v5))
  {
    v6 = [*(a1 + 48) stringFromContact:v3];
    v7 = v6;
    if (!*(a1 + 80) && ![v6 length] || objc_msgSend(v7, "length") && objc_msgSend(v7, "isEqualToString:", *(a1 + 56)))
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  return _objc_release_x1();
}

uint64_t sub_2D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  if (!v4 || (v5 = [*(a1 + 96) isContact:v3 presentInContainer:v4 store:*(a1 + 40)], v3 = v13, v5))
  {
    v6 = [*(a1 + 48) stringFromContact:v3];
    if ([v6 isEqualToString:*(a1 + 56)])
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
      if (*(a1 + 104))
      {
        v7 = [CNPhoneNumber phoneNumberWithStringValue:*(a1 + 64)];
        v8 = [CNLabeledValue labeledValueWithLabel:*(a1 + 72) value:v7];
        v9 = [v13 mutableCopy];
        v10 = [v9 phoneNumbers];
        v11 = [v10 arrayByAddingObject:v8];
        [v9 setPhoneNumbers:v11];

        [*(a1 + 80) updateContact:v9];
      }
    }
  }

  return _objc_release_x1();
}

void sub_30E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = [v3 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_AF08(v2, v4, v5);
    }

    objc_end_catch();
    JUMPOUT(0x30B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_315C(id a1)
{
  qword_195E0 = objc_alloc_init(NSPersonNameComponentsFormatter);

  _objc_release_x1();
}

void sub_3258(id a1)
{
  qword_195F0 = os_log_create("com.apple.contacts", "sim-import");

  _objc_release_x1();
}

void sub_3AD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  *(v4 + 184) = 0;

  v6 = *(*(a1 + 32) + 136);
  v31 = 0;
  v32 = 0;
  CNUICopyAccountInformation(v6, 0, &v32, &v31, 0, 0);
  v7 = v32;
  v28 = v32;
  v8 = v31;
  v27 = v31;
  objc_storeStrong((*(a1 + 32) + 176), v7);
  objc_storeStrong((*(a1 + 32) + 184), v8);
  v9 = [*(*(a1 + 32) + 176) count];
  v10 = ABAddressBookCopyArrayOfAllSources(*(*(a1 + 32) + 136));
  if (v10)
  {
    v11 = v10;
    *(*(a1 + 32) + 192) = CFArrayGetCount(v10);
    CFRelease(v11);
  }

  else
  {
    *(*(a1 + 32) + 192) = 0;
  }

  if (v9 >= 1)
  {
    v12 = kABSourceEnabledProperty;
    v29 = kAccountDataclassContacts;
    for (i = v9 + 1; i > 1; --i)
    {
      v14 = [*(*(a1 + 32) + 176) objectAtIndex:i - 2];
      v15 = v14;
      valuePtr = 0;
      if (v14 != kCFNull)
      {
        v16 = ABRecordCopyValue(v14, kABSourceTypeProperty);
        if (v16)
        {
          v17 = v16;
          CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
          CFRelease(v17);
        }
      }

      v18 = ABRecordCopyValue(v15, v12);
      if (v18)
      {
        v19 = v18;
        Value = CFBooleanGetValue(v18);
        v21 = Value != 0;
        v22 = valuePtr & 0x1000000;
        IsContentReadonlyIncludingGuardianRestrictions = ABSourceIsContentReadonlyIncludingGuardianRestrictions();
        CFRelease(v19);
        if (IsContentReadonlyIncludingGuardianRestrictions)
        {
          v24 = 0;
        }

        else
        {
          v24 = v22 == 0;
        }

        if (v24 && Value != 0)
        {
          v21 = 1;
          goto LABEL_20;
        }
      }

      else
      {
        ABSourceIsContentReadonlyIncludingGuardianRestrictions();
        v21 = 0;
      }

      [*(*(a1 + 32) + 176) removeObjectAtIndex:i - 2];
      [*(*(a1 + 32) + 184) removeObjectAtIndex:i - 2];
LABEL_20:
      if (!valuePtr && v21)
      {
        v26 = [(objc_class *)off_19248() localizedTitleForLocalSourceOfDataclass:v29 usedAtBeginningOfSentence:1];
        [*(*(a1 + 32) + 184) replaceObjectAtIndex:i - 2 withObject:v26];
      }
    }
  }
}

void sub_47DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_480C(uint64_t a1)
{
  v9 = ABAddressBookCopyDefaultSource(*(*(a1 + 32) + 136));
  v2 = [*(*(a1 + 32) + 176) indexOfObject:v9];
  if (v9 && v2 < [*(*(a1 + 32) + 184) count])
  {
    v3 = [*(*(a1 + 32) + 184) objectAtIndex:v2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 184) objectAtIndex:0];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 32) _setDefaultContacts:*(*(*(a1 + 40) + 8) + 40) specifier:0];
  }
}

void sub_4C00(uint64_t a1, void *a2, const void *a3)
{
  v4 = a2;
  if (CFEqual(kCTPhoneBookSelectedNotification, a3))
  {
    [v4 _phonebookSelected];
  }

  else if (CFEqual(kCTPhoneBookFetchNotification, a3))
  {
    [v4 _phonebookAvailable];
  }

  else
  {
    [v4 _erroredDuringSIMPhonebookFetch];
  }
}

void sub_54D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_54EC(uint64_t a1)
{
  ABAddressBookRevert(*(*(a1 + 32) + 136));
  v2 = ABAddressBookCopyArrayOfAllSources(*(*(a1 + 32) + 136));
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    CFRelease(v3);
  }

  else
  {
    Count = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 192);
  if (Count != v6 && v6 != 0)
  {
    v8 = *(v5 + 144);
    *(v5 + 144) = 0;

    [*(a1 + 32) setSpecifiers:0];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v9 = *(a1 + 32);
    v10 = *(v9 + 176);
    *(v9 + 176) = 0;

    v11 = *(a1 + 32);
    v12 = *(v11 + 184);
    *(v11 + 184) = 0;

    *(*(a1 + 32) + 192) = 0;
    v5 = *(a1 + 32);
  }

  v13 = *(v5 + 136);
  v14 = *(v5 + 200);
  v18 = ABAddressBookCopyChangesSinceSequenceNumber();
  v15 = [v18 objectForKey:kABAddressBookChangesToMeCardsKey];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = *(*(a1 + 32) + 136);
    *(*(a1 + 32) + 200) = ABAddressBookGetSequenceNumber();
    [*(a1 + 32) performSelectorOnMainThread:"_reloadMeCardCellIfVisible" withObject:0 waitUntilDone:0];
  }
}

void sub_60BC(uint64_t a1)
{
  v2 = [CNContactProviderSupport allDomainsCountWithError:0];
  if ([*(a1 + 32) providerCount] != v2)
  {
    [*(a1 + 32) setProviderCount:v2];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_6180;
    v4[3] = &unk_14B80;
    v3 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    v5 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

Class sub_687C()
{
  if (qword_19608[0] != -1)
  {
    sub_AFEC();
  }

  result = objc_getClass("ACUILocalization");
  qword_195F8 = result;
  off_19248 = sub_68D0;
  return result;
}

void sub_68DC(id a1)
{
  qword_19600 = dlopen("/System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI", 1);
  if (!qword_19600 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_AE6C();
  }
}

void sub_6C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6C50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

int64_t sub_6C68(id a1, CNContactProviderSupportDomain *a2, CNContactProviderSupportDomain *a3)
{
  v4 = a3;
  v5 = [(CNContactProviderSupportDomain *)a2 displayName];
  v6 = [(CNContactProviderSupportDomain *)v4 displayName];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

id sub_6CDC(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayName];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:a1[4] set:a1[7] get:a1[8] detail:0 cell:6 edit:0];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1[6] + 8) + 40) setUserInfo:v3];
  v8 = a1[5];
  v9 = *(*(a1[6] + 8) + 40);

  return [v8 addObject:v9];
}

unint64_t sub_7CFC()
{
  result = qword_19528;
  if (!qword_19528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19528);
  }

  return result;
}

uint64_t sub_7D6C(uint64_t a1)
{
  v2 = *(*(sub_B120() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_B0B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB60(0, &qword_19568, off_14658);
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_B0E0();
  sub_B0A0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v16._countAndFlagsBits = 0xE000000000000000;
  v18._countAndFlagsBits = 0x53544341544E4F43;
  v18._object = 0xE800000000000000;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v11.super.isa = v10;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v12 = sub_B080(v18, v19, v11, v20, v16);
  v14 = v13;

  v17[0] = v12;
  v17[1] = v14;
  sub_AABC(&qword_19540, &type metadata accessor for PreferencesControllerView);
  sub_9C44();
  sub_B150();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_7FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_B020();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v8 = *(*(sub_9BB4(&qword_19558, &qword_DAA8) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v9 = sub_B160();
  v4[31] = v9;
  v10 = *(v9 - 8);
  v4[32] = v10;
  v11 = *(v10 + 64) + 15;
  v4[33] = swift_task_alloc();
  v12 = *(*(sub_B250() - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v13 = sub_B120();
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v16 = sub_B140();
  v4[39] = v16;
  v17 = *(v16 - 8);
  v4[40] = v17;
  v18 = *(v17 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v19 = sub_B090();
  v4[43] = v19;
  v20 = *(v19 - 8);
  v4[44] = v20;
  v21 = *(v20 + 64) + 15;
  v4[45] = swift_task_alloc();
  v22 = *(*(sub_9BB4(&qword_19560, &qword_DAB0) - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v23 = sub_B070();
  v4[47] = v23;
  v24 = *(v23 - 8);
  v4[48] = v24;
  v25 = *(v24 + 64) + 15;
  v4[49] = swift_task_alloc();
  sub_B230();
  v4[50] = sub_B220();
  v27 = sub_B210();

  return _swift_task_switch(sub_8350, v27, v26);
}

unint64_t sub_8350()
{
  v180 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 192);

  sub_B190();
  sub_B040();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = *(v0 + 336);
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    sub_AA14(*(v0 + 368), &qword_19560, &qword_DAB0);
    sub_B180();
    sub_B1B0();
    (*(v11 + 8))(v9, v10);
    goto LABEL_93;
  }

  v14 = *(v0 + 328);
  v15 = *(v0 + 192);
  (*(*(v0 + 384) + 32))(*(v0 + 392), *(v0 + 368), *(v0 + 376));
  sub_B180();
  *(v0 + 96) = sub_B050();
  *(v0 + 104) = v16;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_9C44();
  v17 = sub_B260();

  v19 = *(v17 + 16);
  v20 = &_swiftEmptyArrayStorage;
  if (!v19)
  {
    goto LABEL_21;
  }

  v21 = 0;
  v22 = -v19;
  v23 = v17 + 40;
LABEL_5:
  v24 = (v23 + 16 * v21++);
  while ((v21 - 1) < *(v17 + 16))
  {
    v25 = *(v24 - 1);
    v26 = *v24;
    v27 = HIBYTE(*v24) & 0xF;
    if ((*v24 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      if (v25 != 0xD00000000000001BLL || 0x800000000000E2B0 != v26)
      {
        v29 = *(v24 - 1);
        v30 = *v24;
        result = sub_B2F0();
        if ((result & 1) == 0)
        {

          countAndFlagsBits = v20;
          result = swift_isUniquelyReferenced_nonNull_native();
          v177[0]._countAndFlagsBits = v20;
          if ((result & 1) == 0)
          {
            result = sub_A788(0, *(v20 + 2) + 1, 1);
            countAndFlagsBits = v177[0]._countAndFlagsBits;
          }

          v33 = *(countAndFlagsBits + 16);
          v32 = *(countAndFlagsBits + 24);
          if (v33 >= v32 >> 1)
          {
            result = sub_A788((v32 > 1), v33 + 1, 1);
            countAndFlagsBits = v177[0]._countAndFlagsBits;
          }

          *(countAndFlagsBits + 16) = v33 + 1;
          v20 = countAndFlagsBits;
          v34 = countAndFlagsBits + 16 * v33;
          *(v34 + 32) = v25;
          *(v34 + 40) = v26;
          v23 = v17 + 40;
          if (!(v22 + v21))
          {
LABEL_21:

            v35 = *(v20 + 2);
            if (v35)
            {
              goto LABEL_22;
            }

            v132 = *(v0 + 392);
            sub_B060();
            if (v133)
            {
              v134 = *(v0 + 208);

              v135 = sub_B1E0();

              [v134 setSpecifierIdentifierToScrollAndHighlight:v135];

              goto LABEL_92;
            }

            v35 = *(v20 + 2);
            if (!v35)
            {

LABEL_92:
              v137 = *(v0 + 384);
              v136 = *(v0 + 392);
              v138 = *(v0 + 376);
              v140 = *(v0 + 320);
              v139 = *(v0 + 328);
              v141 = *(v0 + 312);
              v142 = *(v0 + 184);
              sub_B1B0();
              (*(v140 + 8))(v139, v141);
              (*(v137 + 8))(v136, v138);
LABEL_93:
              v143 = *(v0 + 392);
              v144 = *(v0 + 360);
              v145 = *(v0 + 368);
              v147 = *(v0 + 328);
              v146 = *(v0 + 336);
              v149 = *(v0 + 296);
              v148 = *(v0 + 304);
              v151 = *(v0 + 264);
              v150 = *(v0 + 272);
              v152 = *(v0 + 240);
              v175 = *(v0 + 232);

              v153 = *(v0 + 8);

              return v153();
            }

LABEL_22:
            v165 = PSAppSettingsBundleIDKey;
            v174 = *(v0 + 224);
            v169 = (v174 + 8);
            v36 = (*(v0 + 288) + 8);
            v164 = (*(v0 + 256) + 48);
            v162._object = "com.apple.MobileAddressBook";
            v163 = v36;
            while (2)
            {
              v43 = *(v20 + 4);
              v42 = *(v20 + 5);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || (v35 - 1) > *(v20 + 3) >> 1)
              {
                v20 = sub_A8B4(isUniquelyReferenced_nonNull_native, v35, 1, v20);
              }

              sub_A9C0((v20 + 32));
              v45 = *(v20 + 2);
              memmove(v20 + 32, v20 + 48, 16 * v45 - 16);
              *(v20 + 2) = v45 - 1;
              v46._rawValue = &off_14CF8;
              v183._countAndFlagsBits = v43;
              v183._object = v42;
              v47 = sub_B2E0(v46, v183);

              if (v47 <= 4)
              {
                if (v47 > 1)
                {
                  if (v47 == 2 || v47 == 3)
                  {
                    goto LABEL_50;
                  }

                  v37 = *(v0 + 328);
                  v38 = *(v0 + 304);
                  v39 = *(v0 + 280);
                  v40 = &unk_19590;
                  v41 = &off_14660;
LABEL_24:
                  sub_AB60(0, v40, v41);
                  sub_B0F0();
                  sub_AABC(&qword_19588, &type metadata accessor for PreferencesControllerRecipe);
                  sub_B130();
                  (*v36)(v38, v39);
LABEL_25:
                  v35 = *(v20 + 2);
                  if (!v35)
                  {
                    goto LABEL_89;
                  }

                  continue;
                }

                if (v47)
                {
                  if (v47 != 1)
                  {
LABEL_89:

                    goto LABEL_92;
                  }

                  v49 = *(v0 + 328);
                  v38 = *(v0 + 304);
                  v39 = *(v0 + 280);
                  v40 = &unk_19598;
                  v41 = off_14650;
                  goto LABEL_24;
                }

                goto LABEL_52;
              }

              break;
            }

            if (v47 <= 6)
            {
              if (v47 != 5)
              {
LABEL_50:
                v56 = *(v0 + 200);
                v57 = sub_B1E0();

                v58 = [v56 specifierForID:v57];

                if (v58)
                {
                  v59 = *(v0 + 328);
                  v60 = *(v0 + 304);
                  v61 = *(v0 + 280);
                  v62 = *(v0 + 200);
                  v63 = sub_B1E0();
                  [v58 setProperty:v62 forKey:v63];

                  v64 = v58;
                  sub_B110();
                  sub_AABC(&qword_19588, &type metadata accessor for PreferencesControllerRecipe);
                  sub_B130();

                  (*v36)(v60, v61);
                }

                goto LABEL_25;
              }

LABEL_52:
              v65 = *(v0 + 208);
              v66 = sub_B1E0();

              [v65 setSpecifierIdentifierToScrollAndSelect:v66];

              goto LABEL_25;
            }

            switch(v47)
            {
              case 7:
                goto LABEL_25;
              case 8:
                v48 = 8;
                break;
              case 9:
                v48 = 9;
                break;
              default:
                goto LABEL_89;
            }

            v50 = [objc_allocWithZone(PSSpecifier) init];
            v51 = sub_B1E0();
            [v50 setProperty:v51 forKey:v165];

            v167 = v20;
            if (sub_94AC(v48) == 0x53544E554F434341 && v52 == 0xE800000000000000)
            {

              goto LABEL_49;
            }

            v53 = sub_B2F0();

            if (v53)
            {
LABEL_49:
              v54 = 0x800000000000E310;
              v55 = 0xD000000000000011;
            }

            else
            {
              v55 = 0x4F4343415F444441;
              v54 = 0xEB00000000544E55;
            }

            v67 = *(v0 + 296);
            v68 = *(v0 + 272);
            v69 = *(v0 + 240);
            v168 = *(v0 + 248);
            sub_AB60(0, &qword_19568, off_14658);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v71 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            v162._countAndFlagsBits = 0xE000000000000000;
            v182._countAndFlagsBits = v55;
            v182._object = v54;
            v184.value._countAndFlagsBits = 0x73746361746E6F43;
            v184.value._object = 0xE800000000000000;
            v72.super.isa = v71;
            v185._countAndFlagsBits = 0;
            v185._object = 0xE000000000000000;
            sub_B080(v182, v184, v72, v185, v162);

            v73 = sub_B1E0();

            [v50 setName:v73];

            v74 = v50;
            sub_B240();
            v166 = v74;
            sub_B100();
            sub_B0D0();
            v75 = (*v164)(v69, 1, v168);
            v76 = *(v0 + 392);
            if (v75 != 1)
            {
              v154 = *(v0 + 384);
              v156 = *(v0 + 320);
              v155 = *(v0 + 328);
              v173 = *(v0 + 312);
              v176 = *(v0 + 376);
              v170 = *(v0 + 280);
              v171 = *(v0 + 296);
              v157 = *(v0 + 256);
              v158 = *(v0 + 264);
              v160 = *(v0 + 240);
              v159 = *(v0 + 248);
              v161 = *(v0 + 184);

              (*(v157 + 32))(v158, v160, v159);
              sub_B1A0();

              (*(v157 + 8))(v158, v159);
              (*v163)(v171, v170);
              (*(v156 + 8))(v155, v173);
              (*(v154 + 8))(v76, v176);
              goto LABEL_93;
            }

            sub_AA14(*(v0 + 240), &qword_19558, &qword_DAA8);
            result = sub_B030();
            if (result)
            {
              v77 = result;
            }

            else
            {
              v77 = &_swiftEmptyArrayStorage;
            }

            v78 = v77[2];
            if (v78)
            {
              v79 = 0;
              v172 = v77 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
              v80 = &_swiftEmptyDictionarySingleton;
              while (1)
              {
                if (v79 >= v77[2])
                {
                  __break(1u);
                  goto LABEL_103;
                }

                (*(v174 + 16))(*(v0 + 232), &v172[*(v174 + 72) * v79], *(v0 + 216));
                v81 = sub_B000();
                v83 = v82;
                v84 = sub_B010();
                if (v85 && (*(v0 + 144) = v84, *(v0 + 152) = v85, v86 = sub_B270(), v88 = v87, , v88))
                {
                  *(v0 + 160) = v86;
                  *(v0 + 168) = v88;
                  sub_B2A0();
                  v89 = v177[1];
                  *(v0 + 56) = v177[0];
                  *(v0 + 72) = v89;
                  *(v0 + 88) = v178;
                  v90 = swift_isUniquelyReferenced_nonNull_native();
                  result = sub_9E88(v81, v83);
                  v92 = v80[2];
                  v93 = (v91 & 1) == 0;
                  v94 = __OFADD__(v92, v93);
                  v95 = v92 + v93;
                  if (v94)
                  {
                    goto LABEL_104;
                  }

                  v96 = v91;
                  if (v80[3] >= v95)
                  {
                    if ((v90 & 1) == 0)
                    {
                      v117 = result;
                      sub_A5D4();
                      result = v117;
                    }
                  }

                  else
                  {
                    sub_9FB8(v95, v90);
                    result = sub_9E88(v81, v83);
                    if ((v96 & 1) != (v97 & 1))
                    {

                      return sub_B300();
                    }
                  }

                  v108 = *(v0 + 232);
                  v109 = *(v0 + 216);
                  if (v96)
                  {
                    v110 = result;

                    sub_AB04(v0 + 56, v80[7] + 40 * v110);
                    result = (*v169)(v108, v109);
                  }

                  else
                  {
                    v80[(result >> 6) + 8] |= 1 << result;
                    v111 = (v80[6] + 16 * result);
                    *v111 = v81;
                    v111[1] = v83;
                    v112 = v80[7] + 40 * result;
                    v113 = *(v0 + 88);
                    v114 = *(v0 + 72);
                    *v112 = *(v0 + 56);
                    *(v112 + 16) = v114;
                    *(v112 + 32) = v113;
                    result = (*v169)(v108, v109);
                    v115 = v80[2];
                    v94 = __OFADD__(v115, 1);
                    v116 = v115 + 1;
                    if (v94)
                    {
                      goto LABEL_105;
                    }

                    v80[2] = v116;
                  }
                }

                else
                {
                  v98 = sub_9E88(v81, v83);
                  v100 = v99;

                  if (v100)
                  {
                    v101 = swift_isUniquelyReferenced_nonNull_native();
                    v177[0]._countAndFlagsBits = v80;
                    if (!v101)
                    {
                      sub_A5D4();
                      v80 = v177[0]._countAndFlagsBits;
                    }

                    v102 = *(v0 + 232);
                    v103 = *(v0 + 216);
                    v104 = *(v80[6] + 16 * v98 + 8);

                    v105 = v80[7] + 40 * v98;
                    v106 = *v105;
                    v107 = *(v105 + 16);
                    *(v0 + 48) = *(v105 + 32);
                    *(v0 + 16) = v106;
                    *(v0 + 32) = v107;
                    sub_A288(v98, v80);
                    (*v169)(v102, v103);
                  }

                  else
                  {
                    (*v169)(*(v0 + 232), *(v0 + 216));
                    *(v0 + 48) = 0;
                    *(v0 + 16) = 0u;
                    *(v0 + 32) = 0u;
                  }

                  result = sub_AA14(v0 + 16, &qword_19570, &qword_DAB8);
                }

                if (v78 == ++v79)
                {
                  goto LABEL_81;
                }
              }
            }

            v80 = &_swiftEmptyDictionarySingleton;
LABEL_81:
            v118 = *(v0 + 392);

            *(v0 + 408) = 1;
            sub_B2A0();
            v119 = swift_isUniquelyReferenced_nonNull_native();
            sub_A444(v177, 0x6574616D696E61, 0xE700000000000000, v119);
            v120 = v80;
            v20 = v167;
            *(v0 + 176) = v167;

            sub_9BB4(&qword_19578, &qword_DAC0);
            sub_AA74(&qword_19580, &qword_19578, &qword_DAC0);
            v121 = sub_B1D0();
            v123 = v122;

            v124._countAndFlagsBits = sub_B060();
            if (v124._object)
            {
              v177[0]._countAndFlagsBits = 35;
              v177[0]._object = 0xE100000000000000;
              sub_B200(v124);

              sub_B200(v177[0]);
            }

            v125 = HIBYTE(v123) & 0xF;
            if ((v123 & 0x2000000000000000) == 0)
            {
              v125 = v121 & 0xFFFFFFFFFFFFLL;
            }

            if (v125)
            {
              *(v0 + 128) = v121;
              *(v0 + 136) = v123;
              sub_B2A0();
              v126 = swift_isUniquelyReferenced_nonNull_native();
              v179 = v80;
              sub_A444(v177, 1752457584, 0xE400000000000000, v126);
              v120 = v179;
            }

            else
            {
            }

            v127 = *(v0 + 328);
            v129 = *(v0 + 296);
            v128 = *(v0 + 304);
            v130 = *(v0 + 280);
            sub_9620(v120);

            sub_B0C0();

            sub_AABC(&qword_19588, &type metadata accessor for PreferencesControllerRecipe);
            sub_B130();

            v36 = v163;
            v131 = *v163;
            (*v163)(v128, v130);
            v131(v129, v130);
            goto LABEL_25;
          }

          goto LABEL_5;
        }
      }
    }

    ++v21;
    v24 += 2;
    if (v22 + v21 == 1)
    {
      goto LABEL_21;
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

unint64_t sub_94AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x726F706D494D4953;
    v5 = 0x4F4343415F444441;
    if (a1 != 8)
    {
      v5 = 0x53544E554F434341;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x64726143654DLL;
    if (a1 != 5)
    {
      v6 = 0x43746C7561666544;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x50746361746E6F43;
    v2 = 0x614E6E6F73726550;
    if (a1 != 3)
    {
      v2 = 0x68536E6F73726550;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_9620(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_9BB4(&qword_195A8, &qword_DAD0);
    v2 = sub_B2D0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_ABA8(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_AC04(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_AC04(v35, v24);
    result = sub_B290(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_AC04(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_990C()
{
  v1 = sub_9BB4(&qword_19530, &qword_DA88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v18 - v4;
  v7 = *v0;
  v6 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = v7;
  v10 = v6;
  sub_9BB4(&qword_19538, &qword_DA90);
  v11 = sub_B0B0();
  v12 = sub_AABC(&qword_19540, &type metadata accessor for PreferencesControllerView);
  v13 = sub_9C44();
  v18[0] = v11;
  v18[1] = &type metadata for String;
  v18[2] = v12;
  v18[3] = v13;
  swift_getOpaqueTypeConformance2();
  sub_B1C0();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  sub_AA74(&qword_19550, &qword_19530, &qword_DA88);
  v15 = v9;
  v16 = v10;
  sub_B170();
  return (*(v2 + 8))(v5, v1);
}

id sub_9B58@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(ContactsSettingsPlugin) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_9BB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_9BFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_9C44()
{
  result = qword_19548;
  if (!qword_19548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19548);
  }

  return result;
}

uint64_t sub_9C98(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_9D4C;

  return sub_7FD8(a1, a2, v7, v6);
}

uint64_t sub_9D4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_9E40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_9E88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_B310();
  sub_B1F0();
  v6 = sub_B320();

  return sub_9F00(a1, a2, v6);
}

unint64_t sub_9F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_B2F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_9FB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_9BB4(&qword_195A0, &qword_DAC8);
  v41 = a2;
  result = sub_B2C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_ABA8(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_B310();
      sub_B1F0();
      result = sub_B320();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_A288(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_B280() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_B310();

      sub_B1F0();
      v15 = sub_B320();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_A444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_9E88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_9FB8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_9E88(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_B300();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_A5D4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_AB04(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

void *sub_A5D4()
{
  v1 = v0;
  sub_9BB4(&qword_195A0, &qword_DAC8);
  v2 = *v0;
  v3 = sub_B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_ABA8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_A788(char *a1, int64_t a2, char a3)
{
  result = sub_A7A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A7A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_9BB4(&unk_195B0, &qword_DAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_A8B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_9BB4(&unk_195B0, &qword_DAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_AA14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_9BB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_AA74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_9E40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AABC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AB60(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_AC04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_AC18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_AC24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_ACB8()
{
  sub_9E40(&qword_19530, &qword_DA88);
  sub_AA74(&qword_19550, &qword_19530, &qword_DA88);
  return swift_getOpaqueTypeConformance2();
}

void sub_AD54(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not find any enabled sources for the account with identifier <%@>.", &v1, 0xCu);
}

void sub_ADD4(const void *a1)
{
  v1[0] = 67109120;
  v1[1] = ABRecordGetRecordID(a1);
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Got nil identifier for account with record ID %i.", v1, 8u);
}

void sub_AE6C()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AccountsUI.framework/AccountsUI (%d)", v1, 8u);
}

void sub_AF08(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Could not parse provided name string “%{public}@”: %{public}@", &v3, 0x16u);
}