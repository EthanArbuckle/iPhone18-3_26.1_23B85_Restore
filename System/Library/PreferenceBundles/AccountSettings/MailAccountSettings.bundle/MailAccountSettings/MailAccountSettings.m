void sub_20B4(uint64_t a1)
{
  v2 = [*(a1 + 32) accountClass];
  v3 = NSStringFromClass(v2);
  v4 = [(objc_class *)v2 hostname];
  v5 = [MailAccount existingAccountWithType:v3 hostname:v4 username:*(a1 + 40)];

  if (v5)
  {
    v6 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_23F8;
    v16[3] = &unk_B8C80;
    v17 = *(a1 + 72);
    [v6 _showDuplicateAccountAlertForAccount:v5 completion:v16];
    v7 = v17;
  }

  else
  {
    v7 = [(objc_class *)v2 displayedAccountTypeString];
    if ([*(*(a1 + 32) + 8) hasAccountWithDescription:v7])
    {
      v8 = *(a1 + 40);

      v7 = v8;
    }

    v19 = v7;
    v18[0] = MFMailAccountDescription;
    v18[1] = MFMailAccountUsername;
    v20 = *(a1 + 40);
    v18[2] = MFOAuth2Token;
    v18[3] = MFOAuth2RefreshToken;
    v21 = *(a1 + 56);
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:v18 count:4];
    v10 = [v9 mutableCopy];

    v11 = [*(a1 + 32) grantedDataclasses];
    LOBYTE(v9) = v11 == 0;

    if ((v9 & 1) == 0)
    {
      v12 = [*(a1 + 32) grantedDataclasses];
      [v10 setValue:v12 forKey:ACAccountPropertyGrantedDataclasses];
    }

    v13 = [(objc_class *)v2 accountWithProperties:v10];
    if ([*(a1 + 64) length])
    {
      [v13 setFullUserName:*(a1 + 64)];
    }

    v14 = *(a1 + 72);
    if (v13)
    {
      v15 = [v13 persistentAccount];
      (*(v14 + 16))(v14, v15, 1, 0);
    }

    else
    {
      (*(v14 + 16))(v14, 0, 0, 0);
    }
  }
}

void sub_2AD8(uint64_t a1)
{
  v2 = [MFPreferencesURL accountURLForAccount:*(a1 + 32)];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

void sub_4AFC(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_6454(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_76D8(_Unwind_Exception *a1)
{
  v8 = v4;

  _Unwind_Resume(a1);
}

id sub_8240()
{
  v0 = qword_D6428;
  if (!qword_D6428)
  {
    v1 = [[StoreOnServerSettings alloc] initWithType:5 key:@"StoreDraftsOnServer" mailboxNameKey:@"DraftsMailboxName"];
    v2 = [[StoreOnServerSettings alloc] initWithType:4 key:@"StoreSentMessagesOnServer" mailboxNameKey:@"SentMessagesMailboxName", v1];
    v9[1] = v2;
    v3 = [[StoreOnServerSettings alloc] initWithType:3 key:@"StoreTrashOnServer" mailboxNameKey:@"TrashMailboxName"];
    v9[2] = v3;
    v4 = [[StoreOnServerSettings alloc] initWithType:2 key:@"StoreArchiveOnServer" mailboxNameKey:@"ArchiveMailboxName"];
    v9[3] = v4;
    v5 = [[StoreOnServerSettings alloc] initWithType:-500 key:0 mailboxNameKey:0];
    v9[4] = v5;
    v6 = [NSArray arrayWithObjects:v9 count:5];
    v7 = qword_D6428;
    qword_D6428 = v6;

    v0 = qword_D6428;
  }

  return v0;
}

void sub_83BC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_A4FC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6430;
  qword_D6430 = v1;
}

int64_t sub_B074(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = [(NSString *)v6 emailAddressValue];
  v8 = [v7 simpleAddress];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(NSString *)v6 stringValue];
  }

  v11 = v10;

  v12 = v5;
  v13 = [(NSString *)v12 emailAddressValue];
  v14 = [v13 simpleAddress];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [(NSString *)v12 stringValue];
  }

  v17 = v16;

  v18 = [v11 caseInsensitiveCompare:v17];
  return v18;
}

NSString *__cdecl sub_B1C0(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [(NSString *)v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NSString *)v2 stringValue];
  }

  v7 = v6;

  return v7;
}

void sub_B7A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_DA08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_DCC4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 isEqualToString:MFMailAccountSigningEnabled];
  v9 = v6;
  if ((v8 & 1) == 0 && (v10 = [v5 isEqualToString:MFMailAccountEncryptionEnabled], v9 = v7, !v10) || (v11 = v9) == 0)
  {
    __assert_rtn("_ValueForProperty", "AccountPSAdvancedController.m", 280, "nil != result");
  }

  v12 = v11;

  return v12;
}

void sub_E0A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

NSString *__cdecl sub_E14C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [(NSString *)v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NSString *)v2 stringValue];
  }

  v7 = v6;

  return v7;
}

void sub_E370(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_E59C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_E6DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_EA34(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6448;
  qword_D6448 = v1;
}

id *sub_EE94(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] reallyDeleteAccount];
  }

  return result;
}

void sub_F1BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = +[AccountPSDetailController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Save account for mail failed %@, %@", &v7, 0x16u);
    }
  }
}

uint64_t sub_F5D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_103E4(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_11918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AccountPSDetailController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_123C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_136B0(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:MailAccountEmailAddresses];
  v1 = [v2 propertyForKey:PSTableCellKey];
  [v1 becomeFirstResponder];
}

void sub_13980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_13E54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_144AC(uint64_t a1)
{
  v2 = [MFPreferencesURL accountURLForAccount:*(*(a1 + 32) + 272)];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

void sub_14550(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 272);
  *(v1 + 272) = 0;
}

void sub_14568(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 272);
  *(v1 + 272) = 0;
}

void sub_14C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_15BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_16CA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_171EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_17A7C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_18A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AccountPSDetailControllerBase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18DAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v3 localizedStringForKey:@"VERIFYING_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v1 startValidationWithPrompt:v2];
}

void sub_1AC18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "#Warning web login failed for account %@: %@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) cancelAccountValidation];
  }
}

id sub_1B020(uint64_t a1)
{
  [*(a1 + 32) cancelAccountValidation];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v2 attemptRecoveryFromError:v3 optionIndex:0 delegate:v4 didRecoverSelector:"_redirectToRecoveryURL:" contextInfo:0];
}

void sub_1B200(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 40) accountPropertiesValueForKey:? value:?];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 setObject:v3 forKey:v5];
  }

  else
  {
    [v4 removeObjectForKey:v5];
  }
}

void sub_1EC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

id *sub_1FC7C(id *result, id a2)
{
  if (result[5] == a2)
  {
    return [result[4] _reallyDeleteOutgoingAccount];
  }

  return result;
}

void sub_20408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20454(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) viewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

void sub_204DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = [v3 token];

    if (v5)
    {
      v6 = [v3 username];
      v7 = [v3 displayName];
      v8 = [v3 token];
      v9 = [v3 refreshToken];
      v10 = [WeakRetained completion];
      [WeakRetained validateUniquenessAndAddAccountWithUsername:v6 fullUserName:v7 token:v8 refreshToken:v9 completion:v10];

LABEL_8:
      goto LABEL_9;
    }

    v11 = [v3 username];

    if (!v11)
    {
LABEL_7:
      v6 = [WeakRetained completion];
      v6[2](v6, 0, 0, 0);
      goto LABEL_8;
    }

    v15 = MFMailAccountUsername;
    v12 = [v3 username];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v14 = [WeakRetained completion];
    (v14)[2](v14, 0, 2, v13);
  }

LABEL_9:
}

void sub_2083C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_209C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20A10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReAuthenticating:0];
}

void sub_20F34(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6458;
  qword_D6458 = v1;
}

void sub_210E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21114(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) viewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

void sub_2119C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = [v3 token];

    if (v5)
    {
      v6 = [v3 username];
      v7 = [v3 displayName];
      v8 = [v3 token];
      v9 = [v3 refreshToken];
      v10 = [WeakRetained completion];
      [WeakRetained validateUniquenessAndAddAccountWithUsername:v6 fullUserName:v7 token:v8 refreshToken:v9 completion:v10];

LABEL_8:
      goto LABEL_9;
    }

    v11 = [v3 username];

    if (!v11)
    {
LABEL_7:
      v6 = [WeakRetained completion];
      v6[2](v6, 0, 0, 0);
      goto LABEL_8;
    }

    v15 = MFMailAccountUsername;
    v12 = [v3 username];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v14 = [WeakRetained completion];
    (v14)[2](v14, 0, 2, v13);
  }

LABEL_9:
}

void sub_21730(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21824(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6468;
  qword_D6468 = v1;
}

void sub_224F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _populatMemberEmailList];
  [WeakRetained _addEmailForFamily];
  v2 = WeakRetained[22];
  v3 = dispatch_time(0, 1000000000 * [&off_C0560 integerValue]);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = +[BYODAddEmailViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_796B4(v4);
    }
  }

  if (WeakRetained[23])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_22684;
    v7[3] = &unk_B8EB0;
    v7[4] = WeakRetained;
    v5 = +[EFScheduler mainThreadScheduler];
    [v5 performBlock:v7];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];

  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_22654(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_23A10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) memberIdentifier];
  v6 = [NSString stringWithFormat:@"MEMBER_%@", v5];
  v7 = [v4 specifierForID:v6];

  [v7 setProperty:v3 forKey:PSIconImageKey];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_23B90;
  v10[3] = &unk_B9060;
  v10[4] = *(a1 + 32);
  v8 = v7;
  v11 = v8;
  v9 = +[EFScheduler mainThreadScheduler];
  [v9 performBlock:v10];
}

void sub_240B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24BF4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_24E04;
    v19[3] = &unk_B8EB0;
    v19[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v19];

    v10 = [v5 success];
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = [v5 result];
      [v8 _populateDomainMembersFromDomainResult:v12];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_24E18;
      v14[3] = &unk_B90D8;
      v15 = a1[5];
      v16 = v5;
      v17 = a1[4];
      v18 = v8;
      v13 = +[EFScheduler mainThreadScheduler];
      [v13 performBlock:v14];
    }

    else
    {
      [BYODUtil showErrorForPresenter:a1[4] withError:v6 callback:0];
    }
  }
}

void sub_24E18(id *a1)
{
  v6 = [a1[4] normalizedAddress];
  if ([a1[4] kind] == &dword_0 + 1 && objc_msgSend(v6, "containsString:", @"+"))
  {
    v2 = [v6 stringByReplacingOccurrencesOfString:@"+" withString:&stru_B9FC8];

    v6 = v2;
  }

  v3 = [a1[5] result];
  v4 = [v3 getMemberFromIdentifier:v6];

  [a1[6] dismissViewControllerAnimated:1 completion:0];
  if (v4)
  {
    v5 = [a1[7] _getSpecifierGroupWithMember:v4];
    [a1[7] addSpecifiersFromArray:v5 animated:1];
    [a1[7] _getPhotoForMember:v4];
  }
}

void sub_2510C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_25174(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_25368;
    v15[3] = &unk_B8EB0;
    v16 = a1[4];
    v8 = +[EFScheduler mainThreadScheduler];
    [v8 performBlock:v15];

    v9 = [v5 success];
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = [v5 result];
      [WeakRetained _populateDomainMembersFromDomainResult:v11];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_25370;
      v13[3] = &unk_B8C80;
      v14 = a1[5];
      v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v12 performBlock:v13];
    }

    else
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
    }
  }
}

uint64_t sub_25370(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_25D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, id location)
{
  objc_destroyWeak((v41 + 56));

  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_25E74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [WeakRetained removeSpecifier:*(*(&v7 + 1) + 8 * v6) animated:{1, v7}];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

void sub_25FA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_26098;
    v4[3] = &unk_B8EB0;
    v5 = *(a1 + 32);
    v3 = +[EFScheduler mainThreadScheduler];
    [v3 performBlock:v4];

    [WeakRetained _removeDomainMember:*(a1 + 40) memberSpecifier:*(a1 + 32) completion:*(a1 + 48)];
  }
}

void sub_260A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained getGroupSpecifierForSpecifier:*(a1 + 32)];
    [v3 removeSpecifier:*(a1 + 32) animated:1];
    if (v4)
    {
      v9 = 0;
      [v3 getGroup:&v9 row:0 ofSpecifier:v4];
      v5 = [v3 specifiersInGroup:v9];
      v6 = [v5 count];
      v7 = [v3[24] maxEmailsPerUser];

      if (v6 < v7)
      {
        v8 = [v3 _getEmailAddressSpecifier];
        [v3 insertSpecifier:v8 atEndOfGroup:v9 animated:1];
      }
    }
  }
}

void sub_26194(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27404(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_27818(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27958(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6478;
  qword_D6478 = v1;
}

void sub_28390(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6488;
  qword_D6488 = v1;
}

void sub_28674(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_290D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_29250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2929C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_29444;
    v14[3] = &unk_B8EB0;
    v14[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v14];

    v10 = [v5 result];
    v11 = [v10 purchaseAllowed];

    if (v11)
    {
      v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v12 performBlock:&v13];
    }

    else
    {
      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }
  }
}

void sub_2940C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_29458(uint64_t a1)
{
  v2 = [BYODDomainPurchaseSearchViewController alloc];
  v3 = [*(a1 + 32) userAccount];
  v5 = [(BYODDomainPurchaseSearchViewController *)v2 initWithACAccount:v3 isBuyNewDomainFlow:0 domainPurchaseProviderName:*(*(a1 + 32) + 32)];

  v4 = [*(a1 + 32) navigationController];
  [v4 pushViewController:v5 animated:1];
}

void sub_29828(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2A3D4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6498;
  qword_D6498 = v1;
}

void sub_2A678(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_2B0BC(uint64_t a1)
{
  [*(*(a1 + 32) + 16) stopSpinner];
  v2 = [BYODChooseEmailAddressViewController alloc];
  v3 = [*(a1 + 32) userAccount];
  v5 = [(BYODChooseEmailAddressViewController *)v2 initWithACAccount:v3 familyFlow:1];

  v4 = [*(a1 + 32) navigationController];
  [v4 pushViewController:v5 animated:1];
}

void sub_2B4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2B500(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2B624;
  v11[3] = &unk_B91C8;
  v11[4] = WeakRetained;
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  v10 = +[EFScheduler mainThreadScheduler];
  [v10 performBlock:v11];
}

void sub_2B5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_2B624(uint64_t a1)
{
  [*(*(a1 + 32) + 16) stopSpinner];
  if ([*(a1 + 40) success] && !*(a1 + 48))
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v3 localizedStringForKey:@"BYOD_DOMAIN_INVITE_CREATE_EMAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"BYOD_DOMAIN_INVITE_CREATE_EMAIL_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
    v6 = [NSString stringWithFormat:v5, *(*(a1 + 32) + 32)];

    v7 = +[BYODIcon customEmailDomainIcon];
    v8 = [BYODCreateNewEmailViewController alloc];
    v9 = [*(a1 + 32) userAccount];
    v10 = [(BYODCreateNewEmailViewController *)v8 initWithTitle:v11 detailText:v6 icon:v7 adoptTableViewScrollView:1 acAccount:v9 domainName:*(*(a1 + 32) + 32)];

    [*(a1 + 32) showViewController:v10 sender:*(a1 + 32)];
  }

  else
  {
    v2 = *(a1 + 32);

    [v2 _showErrorAlert];
  }
}

void sub_2BB94(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D64A8;
  qword_D64A8 = v1;
}

void sub_2C104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v7 = [v9 objectForKeyedSubscript:NSInlinePresentationIntentAttributeName];
  v8 = [v7 isEqual:&off_C0578];

  if (v8)
  {
    [*(a1 + 32) addAttributes:*(a1 + 40) range:{a3, a4}];
  }
}

void sub_2C654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2C6BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v5 verifySuccess])
    {
      if ([WeakRetained showDefaultEmailSelect])
      {
        [WeakRetained _listDefaultEmail];
      }

      else
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_2C964;
        v18[3] = &unk_B8EB0;
        v18[4] = WeakRetained;
        v8 = +[EFScheduler mainThreadScheduler];
        [v8 performBlock:v18];

        v9 = [BYODDoneSetupDomainViewController alloc];
        v10 = [WeakRetained domainName];
        v11 = [WeakRetained loggedInUserAccount];
        v12 = [(BYODDoneSetupDomainViewController *)v9 initWithDomainName:v10 acAccount:v11];

        -[BYODDoneSetupDomainViewController setShowDefaultEmailSelect:](v12, "setShowDefaultEmailSelect:", [WeakRetained showDefaultEmailSelect]);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_2C9C4;
        v16[3] = &unk_B9060;
        v16[4] = WeakRetained;
        v13 = v12;
        v17 = v13;
        v14 = +[EFScheduler mainThreadScheduler];
        [v14 performBlock:v16];
      }
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_2C9D0;
      v15[3] = &unk_B8EB0;
      v15[4] = WeakRetained;
      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:v15];
    }
  }
}

void sub_2C964(uint64_t a1)
{
  v1 = [*(a1 + 32) spinner];
  [v1 stopSpinner];
}

id sub_2C9D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_2CAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2CB3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_2CE78;
    v23[3] = &unk_B8EB0;
    v23[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v23];

    if (v6)
    {
      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }

    else
    {
      v20 = +[BYODIcon customEmailDomainIcon];
      v10 = [BYODSelectEmailTableViewController alloc];
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"BYOD_CHOOSE_DEFAULT_EMAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"BYOD_CHOOSE_DEFAULT_EMAIL_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v15 = [v8 loggedInUserAccount];
      v16 = [v8 domainName];
      v17 = [(BYODSelectEmailTableViewController *)v10 initWithTitle:v12 detailText:v14 icon:v20 adoptTableViewScrollView:1 userAccount:v15 emailListResponse:v5 domainName:v16];

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_2CED8;
      v21[3] = &unk_B9060;
      v21[4] = v8;
      v18 = v17;
      v22 = v18;
      v19 = +[EFScheduler mainThreadScheduler];
      [v19 performBlock:v21];
    }
  }
}

void sub_2CE78(uint64_t a1)
{
  v1 = [*(a1 + 32) spinner];
  [v1 stopSpinner];
}

void sub_2CED8(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

void sub_2D030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2D1F8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D64B8;
  qword_D64B8 = v1;
}

void sub_2D3B0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2DE24(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2E0C8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D64C8;
  qword_D64C8 = v1;
}

void sub_2E190(id a1)
{
  v1 = objc_alloc_init(BYODContactsManager);
  v2 = qword_D64D8;
  qword_D64D8 = v1;
}

void sub_2E790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2E804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2E81C(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [UIImage imageWithData:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [UIImage mf_imageWithImage:*(*(*(a1 + 40) + 8) + 40) scaledToSize:38.0, 38.0];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  (*(*(a1 + 32) + 16))();
}

void sub_2F164(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D64E8;
  qword_D64E8 = v1;
}

void sub_2F970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2F9DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2FB9C;
    v15[3] = &unk_B8EB0;
    v15[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performSyncBlock:v15];

    v10 = [v5 success];
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];

      v13 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v13 performSyncBlock:&v14];
    }

    else
    {
      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }
  }
}

void sub_2FB64(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_31220(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_31438(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_318E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_31DD4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D64F8;
  qword_D64F8 = v1;
}

void sub_33910(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) memberIdentifier];
    v6 = [NSString stringWithFormat:@"MEMBER_%@", v5];

    v7 = [WeakRetained specifierForID:v6];
    [v7 setProperty:v3 forKey:PSIconImageKey];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_33AA0;
    v10[3] = &unk_B9060;
    v10[4] = WeakRetained;
    v8 = v6;
    v11 = v8;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v10];
  }
}

void sub_33BA8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_34FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v23 = v20;

  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 - 56));

  _Unwind_Resume(a1);
}

void sub_3503C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_352A8;
  v16[3] = &unk_B8EB0;
  v17 = *(a1 + 32);
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v16];

  if (v6)
  {
    v9 = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_79750(v6, v9);
    }

    [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
  }

  else
  {
    v10 = [v5 dnsRecords];
    [WeakRetained setDnsRecords:v10];

    v11 = [WeakRetained dnsRecords];
    v12 = [v11 count];

    if (v12)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_352B0;
      v15[3] = &unk_B8EB0;
      v15[4] = WeakRetained;
      v13 = +[EFScheduler mainThreadScheduler];
      [v13 performBlock:v15];
    }

    else
    {
      v13 = +[BYODDomainDetailViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "0 DNS record returned.", v14, 2u);
      }
    }
  }
}

void sub_352B0(uint64_t a1)
{
  v2 = [BYODDomainSetupInstructionViewController alloc];
  v3 = [*(a1 + 32) dnsRecords];
  v11 = [(BYODDomainSetupInstructionViewController *)v2 initWithDnsRecords:v3];

  v4 = [*(a1 + 32) viewInstructionSpecifier];
  [v4 removePropertyForKey:PSBadgeNumberKey];

  v5 = *(a1 + 32);
  v6 = [v5 viewInstructionSpecifier];
  [v5 reloadSpecifier:v6];

  if (([_domainResult hasUnverifiedEmail] & 1) == 0)
  {
    v7 = [*(a1 + 32) finishSetupSpecifier];
    v8 = [NSNumber numberWithBool:1];
    [v7 setProperty:v8 forKey:PSEnabledKey];

    v9 = *(a1 + 32);
    v10 = [v9 finishSetupSpecifier];
    [v9 reloadSpecifier:v10];
  }

  [*(a1 + 32) showController:v11];
}

void sub_3543C(uint64_t a1)
{
  v2 = [BYODDomainSetupInstructionViewController alloc];
  v3 = [*(a1 + 32) dnsRecords];
  v4 = [(BYODDomainSetupInstructionViewController *)v2 initWithDnsRecords:v3];

  [*(a1 + 32) showController:v4];
}

void sub_36D60(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_3718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v25 - 88));

  _Unwind_Resume(a1);
}

void sub_37280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _removeDomainMember:*(a1 + 32)];
  }
}

void sub_372EC(uint64_t a1)
{
  v3 = [*(a1 + 32) propertyForKey:@"MEMBER_DSID"];
  v2 = [_domainResult getMemberFromIdentifier:?];
  [*(a1 + 40) _deleteEmailFromServerForUser:v2 specifier:*(a1 + 32)];
}

void sub_37BC4(uint64_t a1)
{
  v2 = [BYODMemberLeaveRequest alloc];
  v3 = *(*(a1 + 32) + 144);
  v4 = [v3 accountStore];
  v5 = [_domainResult domain];
  v6 = [v5 name];
  v7 = [(BYODMemberLeaveRequest *)v2 initWithAccount:v3 accountStore:v4 domain:v6];

  objc_initWeak(&location, *(a1 + 32));
  v8 = [[BYODSpinner alloc] initWithViewController:*(a1 + 32)];
  v9 = _byodSpinner;
  _byodSpinner = v8;

  [_byodSpinner startSpinner];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_37D64;
  v10[3] = &unk_B91F0;
  objc_copyWeak(&v11, &location);
  [(BYODMemberLeaveRequest *)v7 performRequestWithCallback:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_37D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_37D64(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[EFScheduler mainThreadScheduler];
    [v5 performSyncBlock:&stru_B93A8];

    if (v7)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v7 callback:0];
    }

    else
    {
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 postNotificationName:@"STOP_DOMAIN_NOTIFICATION" object:0 userInfo:0];
    }
  }
}

void sub_37E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_386B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [_domainResult domain];
  v3 = [v2 domainConnectServerUrl];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [SFSafariViewController alloc];
    v6 = [_domainResult domain];
    v7 = [v6 domainConnectServerUrl];
    v8 = [NSURL URLWithString:v7];
    v9 = [v5 initWithURL:v8];

    [v9 setDelegate:WeakRetained];
    [WeakRetained presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v10 = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [_domainResult ef_publicDescription];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "domain connect URL not present. domainInfo %@", &v12, 0xCu);
    }
  }
}

void sub_38A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_39038(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 emails];
  v5 = [v4 count];
  v6 = [_domainResult maxEmailsPerUser];

  if (v5 < v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 memberIdentifier];
    v9 = [v7 _addExistingAddressButtonSpecifierForMember:v8];

    v10 = *(a1 + 32);
    v11 = [v3 memberIdentifier];
    v12 = [v10 specifierForID:v11];

    if (v12)
    {
      v13 = 0;
      [*(a1 + 32) getGroup:&v13 row:0 ofSpecifier:v12];
      [*(a1 + 32) insertSpecifier:v9 atEndOfGroup:v13 animated:1];
    }
  }
}

void sub_39454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  v19 = v18;
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_394B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = +[EFScheduler mainThreadScheduler];
  [v6 performBlock:&stru_B93F0];

  if (v4 && WeakRetained)
  {
    v7 = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Error while resending verification email %@", buf, 0xCu);
    }

    [BYODUtil showErrorForPresenter:WeakRetained withError:v4 callback:0];
  }

  else if (!v4 && WeakRetained)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"BYOD_RESEND_EMAIL_SENT_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"BYOD_RESEND_EMAIL_SENT_ALERT_BYOD" value:&stru_B9FC8 table:@"AccountPreferences"];
    v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];

    [v12 addAction:v15];
    v16 = v12;
    v19 = v16;
    v17 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v17 performBlock:&v18];
  }
}

void sub_3A078(uint64_t a1)
{
  v2 = [[SFSafariViewController alloc] initWithURL:*(a1 + 32)];
  [v2 setDelegate:*(a1 + 40)];
  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

void sub_3A4F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3A64C;
    v10[3] = &unk_B9060;
    v7 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v7;
    v8 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v8 performBlock:v10];

    [BYODUtil showErrorForPresenter:*(a1 + 32) withError:v6 callback:0];
  }

  else
  {
    v9 = [_domainResult domain];
    [v9 setCatchAllEnabled:{objc_msgSend(*(a1 + 48), "BOOLValue")}];
  }
}

void sub_3A658(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3A7AC;
    v10[3] = &unk_B9060;
    v7 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v7;
    v8 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v8 performBlock:v10];

    [BYODUtil showErrorForPresenter:*(a1 + 32) withError:v6 callback:0];
  }

  else
  {
    v9 = [_domainResult domain];
    [v9 setCatchAllEnabled:{objc_msgSend(*(a1 + 48), "BOOLValue")}];
  }
}

void sub_3A8EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [BYODUtil showErrorForPresenter:*(a1 + 32) withError:v6 callback:0];
  }

  else
  {
    v7 = [v5 result];
    v8 = _domainResult;
    _domainResult = v7;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3AA08;
    v10[3] = &unk_B8EB0;
    v10[4] = *(a1 + 32);
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v10];
  }
}

void sub_3A9E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_3AA08(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  result = _selectDefaultEmailNavController;
  if (_selectDefaultEmailNavController)
  {

    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_3AB98(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:&stru_B9458];

  if (v7)
  {
    [BYODUtil showErrorForPresenter:*(a1 + 32) withError:v7 callback:0];
  }

  else
  {
    objc_storeStrong(&_emailList, a2);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3ACEC;
    v10[3] = &unk_B8EB0;
    v10[4] = *(a1 + 32);
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v10];
  }
}

void sub_3AF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  objc_destroyWeak((v24 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3B020(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_3B1FC;
  v16 = &unk_B8EB0;
  v17 = *(a1 + 32);
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:&v13];

  if (v6)
  {
    WeakRetained = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      sub_797C8(v6, WeakRetained);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v9 = [v5 result];
      v10 = _domainResult;
      _domainResult = v9;

      v11 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v11 performBlock:&v12];
    }
  }
}

void sub_3B1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_3B324(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_3B930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_3B9A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = +[EFScheduler mainThreadScheduler];
    [v8 performBlock:&stru_B94C8];

    v9 = [v5 success];
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = [v5 result];
      v12 = _domainResult;
      _domainResult = v11;

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_3BB1C;
      v14[3] = &unk_B8EB0;
      v14[4] = WeakRetained;
      v13 = +[EFScheduler mainThreadScheduler];
      [v13 performBlock:v14];
    }

    else
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
    }
  }
}

void sub_3BADC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_3BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BYODDomainDetailViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_3BD2C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_3BE74(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_3C63C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "error response on updating intro flag %@", buf, 0xCu);
    }

    [BYODUtil showErrorForPresenter:*(a1 + 32) withError:v6 callback:0];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3C7E0;
  v11[3] = &unk_B9060;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:v11];
}

id sub_3C7E0(uint64_t a1)
{
  [*(a1 + 32) hidesBusyIndicator];
  v2 = *(a1 + 40);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_3D61C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6508;
  qword_D6508 = v1;
}

void sub_3E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v23 = v20;

  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 - 72));

  _Unwind_Resume(a1);
}

void sub_3E3AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3E5E4;
    v15[3] = &unk_B8EB0;
    v16 = *(a1 + 32);
    v8 = +[EFScheduler mainThreadScheduler];
    [v8 performBlock:v15];

    if (v6)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
    }

    else
    {
      v9 = [v5 dnsRecords];
      [WeakRetained setDnsRecords:v9];

      v10 = [WeakRetained dnsRecords];
      v11 = [v10 count];

      if (v11)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_3E5EC;
        v14[3] = &unk_B8EB0;
        v14[4] = WeakRetained;
        v12 = +[EFScheduler mainThreadScheduler];
        [v12 performBlock:v14];
      }

      else
      {
        v12 = +[BYODDomainManualSetupViewController log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "0 DNS record returned.", v13, 2u);
        }
      }
    }
  }
}

void sub_3E5EC(uint64_t a1)
{
  v2 = [BYODDomainSetupInstructionViewController alloc];
  v3 = [*(a1 + 32) dnsRecords];
  v4 = [(BYODDomainSetupInstructionViewController *)v2 initWithDnsRecords:v3];

  [*(a1 + 32) showController:v4];
}

void sub_3E68C(uint64_t a1)
{
  v2 = [BYODDomainSetupInstructionViewController alloc];
  v3 = [*(a1 + 32) dnsRecords];
  v4 = [(BYODDomainSetupInstructionViewController *)v2 initWithDnsRecords:v3];

  [*(a1 + 32) showController:v4];
}

void sub_3E7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BYODDomainManualSetupViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_3F084(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_3F154(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6518;
  qword_D6518 = v1;
}

void sub_3FBF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_3FEAC;
  v17[3] = &unk_B8EB0;
  v17[4] = WeakRetained;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v17];

  if (WeakRetained)
  {
    if (v6)
    {
      v9 = +[BYODDomainPurchaseSearchViewController log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BYODGetPurchaseURLRequest failed to return URL. Error: %@", buf, 0xCu);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_3FEC0;
      v13[3] = &unk_B91C8;
      v14 = v6;
      v15 = WeakRetained;
      v16 = *(a1 + 32);
      [BYODUtil showErrorForPresenter:WeakRetained withError:v14 callback:v13];
    }

    else
    {
      v12 = v5;
      v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v10 performBlock:&v11];
    }
  }
}

id sub_3FEC0(uint64_t a1)
{
  result = [*(a1 + 32) code];
  if (result == -5001)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 _removeSuggestion:v4];
  }

  return result;
}

void sub_3FF14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) result];
  [v1 _navigateToProvider:?];
}

void sub_40378(uint64_t a1)
{
  v2 = [*(a1 + 32) purchaseURL];
  v4 = [NSURL URLWithString:v2];

  v3 = [[SFSafariViewController alloc] initWithURL:v4];
  [v3 setDelegate:*(a1 + 40)];
  [*(a1 + 40) presentViewController:v3 animated:1 completion:0];
}

void sub_4089C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_408D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_40BFC;
    v20[3] = &unk_B8EB0;
    v20[4] = WeakRetained;
    v8 = +[EFScheduler mainThreadScheduler];
    [v8 performBlock:v20];

    *(WeakRetained + 65) = 0;
    if (v6)
    {
      v9 = +[BYODDomainPurchaseSearchViewController log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BYODSearchDomainRequest failed: %@", buf, 0xCu);
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_40C10;
      v19[3] = &unk_B8EB0;
      v19[4] = WeakRetained;
      v10 = +[EFScheduler mainThreadScheduler];
      [v10 performBlock:v19];

      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
    }

    else
    {
      v11 = [v5 result];
      v12 = *(WeakRetained + 4);
      *(WeakRetained + 4) = v11;

      v13 = [NSMutableArray alloc];
      v14 = [*(WeakRetained + 4) suggestedDomains];
      v15 = [v13 initWithArray:v14];
      v16 = *(WeakRetained + 5);
      *(WeakRetained + 5) = v15;

      *(WeakRetained + 48) = 1;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_40C18;
      v18[3] = &unk_B8EB0;
      v18[4] = WeakRetained;
      v17 = +[EFScheduler mainThreadScheduler];
      [v17 performBlock:v18];
    }
  }
}

void sub_40B88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_40C18(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 _updateNextButtonState];
}

void sub_40D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_40D9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v6 && [v5 success] && (objc_msgSend(v5, "result"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "domain"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "status"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"COMPLETE"), v10, v9, v8, v11))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_41020;
    v15[3] = &unk_B8EB0;
    v15[4] = WeakRetained;
    v12 = +[EFScheduler mainThreadScheduler];
    [v12 performBlock:v15];
  }

  else
  {
    v13 = +[BYODDomainPurchaseSearchViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "BYODGetDomainRequest failed: %@", buf, 0xCu);
    }

    v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v12 performBlock:&v14];
  }
}

void sub_41020(uint64_t a1)
{
  v3 = [[BYODChooseYouOrFamilyViewController alloc] initWithACAccount:*(*(a1 + 32) + 8) domainPurchase:1 domainName:*(*(a1 + 32) + 24)];
  v2 = [[UINavigationController alloc] initWithRootViewController:v3];
  [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
}

void sub_41BCC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_420E4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6528;
  qword_D6528 = v1;
}

void sub_42524(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_42FF4(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_43B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = v11;

  _Unwind_Resume(a1);
}

void sub_45638(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_459C8(uint64_t a1)
{
  v1 = [*(a1 + 32) spinner];
  [v1 startSpinner];
}

void sub_45A28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_45BD0;
    v14[3] = &unk_B8EB0;
    v14[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v14];

    if (v6)
    {
      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_45C30;
      v11[3] = &unk_B9060;
      v12 = v5;
      v13 = v8;
      v10 = +[EFScheduler mainThreadScheduler];
      [v10 performBlock:v11];
    }
  }
}

void sub_45B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_45BD0(uint64_t a1)
{
  v1 = [*(a1 + 32) spinner];
  [v1 startSpinner];
}

void sub_45C30(uint64_t a1)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v2 = [*(a1 + 32) result];
  [v4 setObject:v2 forKeyedSubscript:@"domainData"];

  if ([*(a1 + 40) showDefaultEmailSelect])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0 userInfo:v4];
  }

  else
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"BYOD_MANUAL_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0 userInfo:0];
  }

  [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
}

void sub_464E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = v12;

  _Unwind_Resume(a1);
}

void sub_46710(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_46A10(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6538;
  qword_D6538 = v1;
}

void sub_475B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) setProperty:v3 forKey:PSIconImageKey];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_476C8;
    v6[3] = &unk_B9060;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v5 performBlock:v6];
  }
}

void sub_47694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_48CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_48D90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_48F6C;
    v17 = &unk_B8EB0;
    v18 = *(a1 + 32);
    v8 = +[EFScheduler mainThreadScheduler];
    [v8 performBlock:&v14];

    if (v6)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
    }

    else
    {
      v9 = [v5 result];
      v10 = WeakRetained[18];
      WeakRetained[18] = v9;

      v11 = [v5 result];
      [WeakRetained _postNotificationForDomainData:v11];

      v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v12 performBlock:&v13];
    }
  }
}

void sub_48F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_4905C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_4912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_491C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BYODEmailAddressManageViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_49A04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_49BF8;
    v15[3] = &unk_B8EB0;
    v15[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v15];

    if (v6)
    {
      v10 = [*(a1 + 32) chooseContactViewController];
      [BYODUtil showErrorForPresenter:v10 withError:v6 callback:0];
    }

    else
    {
      v11 = [v5 result];
      [v8 _postNotificationForDomainData:v11];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_49C0C;
      v13[3] = &unk_B9060;
      v13[4] = v8;
      v14 = *(a1 + 32);
      v12 = +[EFScheduler mainThreadScheduler];
      [v12 performBlock:v13];
    }
  }
}

void sub_49C0C(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 40) chooseContactViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_4A158(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6548;
  qword_D6548 = v1;
}

void sub_4A9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_4AA1C(uint64_t a1)
{
  v2 = [BYODGetDomainRequest alloc];
  v3 = *(*(a1 + 32) + 136);
  v4 = [v3 accountStore];
  v5 = [*(a1 + 32) _getDomainName];
  v6 = [(BYODGetDomainRequest *)v2 initWithAccount:v3 accountStore:v4 domain:v5];

  objc_initWeak(&location, *(a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AB68;
  v7[3] = &unk_B9308;
  objc_copyWeak(&v8, &location);
  [(BYODGetDomainRequest *)v6 performRequestWithCallback:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_4AB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_4AB68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4ADD4;
    v22[3] = &unk_B8EB0;
    v22[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v22];

    if (v6)
    {
      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }

    else
    {
      v10 = [v5 result];
      v11 = v8[24];
      v8[24] = v10;

      if (*(v8 + 144) == 1)
      {
        [v8 _fetchFamilyDetails];
      }

      else
      {
        v12 = [BYODAddEmailViewController alloc];
        v13 = v8[17];
        v14 = *(v8 + 144);
        v15 = v8[22];
        v16 = [v8 _getDomainName];
        v17 = [(BYODAddEmailViewController *)v12 initWithACAccount:v13 familyFlow:v14 familyCircle:v15 domainName:v16 domainResult:v8[24]];

        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_4ADE8;
        v20[3] = &unk_B9060;
        v20[4] = v8;
        v18 = v17;
        v21 = v18;
        v19 = +[EFScheduler mainThreadScheduler];
        [v19 performBlock:v20];
      }
    }
  }
}

void sub_4AD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

void sub_4ADF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_4B090;
      v15[3] = &unk_B8EB0;
      v15[4] = WeakRetained;
      v9 = +[EFScheduler mainThreadScheduler];
      [v9 performBlock:v15];

      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }

    else
    {
      v10 = [v5 result];
      v8[160] = [v10 isDomainConnect];

      if (v8[160] == 1)
      {
        if (v8[145] == 1)
        {
          (*(*(a1 + 32) + 16))();
        }

        else
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_4B0A4;
          v14[3] = &unk_B8EB0;
          v14[4] = v8;
          v12 = +[EFScheduler mainThreadScheduler];
          [v12 performBlock:v14];

          [v8 _fetchDomainDetails];
        }
      }

      else
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_4B0B8;
        v13[3] = &unk_B8EB0;
        v13[4] = v8;
        v11 = +[EFScheduler mainThreadScheduler];
        [v11 performBlock:v13];

        if (v8[145] == 1)
        {
          (*(*(a1 + 32) + 16))();
        }

        else
        {
          [v8 _triggerManualDomainSetupFlow];
        }
      }
    }
  }
}

id sub_4B170(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];

  v3 = *(a1 + 32);

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

void sub_4B2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4B338(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
      goto LABEL_10;
    }

    v8 = v5;
    v9 = [v8 result];
    v10 = [v9 domain];
    v11 = [v10 status];
    if ([v11 isEqualToString:@"IN_PROGRESS"])
    {
      v12 = [v10 verificationStatus];
      v13 = [v12 isEqualToString:@"NOT_STARTED"];

      if (v13)
      {
        [WeakRetained _showDomainConnectSignInAlert:v10];
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = [[BYODDomainDetailViewController alloc] initWithAccount:WeakRetained[17] domain:v9 domainState:0];
    v17 = v14;
    v15 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v15 performBlock:&v16];

    goto LABEL_9;
  }

LABEL_10:
}

void sub_4B4FC(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_4BAE0(uint64_t a1)
{
  v2 = [[SFSafariViewController alloc] initWithURL:*(a1 + 32)];
  [v2 setDelegate:*(a1 + 40)];
  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

void sub_4BBF8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    objc_storeStrong((*(a1 + 32) + 176), a2);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4BCEC;
    v9[3] = &unk_B8EB0;
    v9[4] = *(a1 + 32);
    v8 = +[EFScheduler mainThreadScheduler];
    [v8 performBlock:v9];
  }
}

void sub_4BCEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 160) & 1) != 0 || ([*(v2 + 192) domain], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "withEmailAddress"), v3, v4))
  {
    v5 = [BYODAddEmailViewController alloc];
    v6 = *(a1 + 32);
    v7 = *(v6 + 136);
    v8 = *(v6 + 144);
    v9 = *(v6 + 176);
    v10 = [v6 _getDomainName];
    v12 = [(BYODAddEmailViewController *)v5 initWithACAccount:v7 familyFlow:v8 familyCircle:v9 domainName:v10 domainResult:*(*(a1 + 32) + 192)];

    [*(a1 + 32) showViewController:v12 sender:*(a1 + 32)];
  }

  else
  {
    v11 = *(a1 + 32);

    [v11 _triggerManualDomainSetupFlow];
  }
}

void sub_4BED0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_4C0B8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6558;
  qword_D6558 = v1;
}

void sub_4C2C0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_4CF10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[BYODFirstTimeIntroViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Error, showWelcomeScreen flag has not updated  %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4D080;
  block[3] = &unk_B91C8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v14 = v5;
  v10 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_4D080(uint64_t a1)
{
  [*(a1 + 32) hidesBusyIndicator];
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4D134;
  v3[3] = &unk_B9060;
  v3[4] = v2;
  v4 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_4D134(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  v2[2](v2, [*(a1 + 40) success]);
}

void sub_4D224(uint64_t a1)
{
  v1 = [*(a1 + 32) callback];
  v1[2](v1, 0);
}

void sub_4E358(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_4EC40(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6568;
  qword_D6568 = v1;
}

void sub_4EF78(_Unwind_Exception *a1)
{
  v8 = v4;

  _Unwind_Resume(a1);
}

void sub_4F23C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4F4D4;
  v21[3] = &unk_B8EB0;
  v22 = *(a1 + 32);
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v21];

  if (WeakRetained)
  {
    v8 = [v5 success];
    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = +[BYODIcon customEmailDomainIcon];
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"BYOD_DOMAIN_INVITE_CREATE_EMAIL_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
      v13 = [NSString stringWithFormat:v12, WeakRetained[1]];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_4F4DC;
      v17[3] = &unk_B91C8;
      v14 = v13;
      v18 = v14;
      v15 = v10;
      v19 = v15;
      v20 = WeakRetained;
      v16 = +[EFScheduler mainThreadScheduler];
      [v16 performSyncBlock:v17];
    }

    else
    {
      [WeakRetained _showErrorAlert];
    }
  }
}

void sub_4F4DC(uint64_t a1)
{
  v2 = [BYODCreateNewEmailViewController alloc];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_DOMAIN_INVITE_CREATE_EMAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [(BYODCreateNewEmailViewController *)v2 initWithTitle:v4 detailText:*(a1 + 32) icon:*(a1 + 40) adoptTableViewScrollView:1 acAccount:*(*(a1 + 48) + 16) domainName:*(*(a1 + 48) + 8)];

  [*(a1 + 48) showViewController:v5 sender:*(a1 + 48)];
}

void sub_4F7C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 success];
    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_4F8CC;
      v10[3] = &unk_B8EB0;
      v10[4] = WeakRetained;
      v9 = +[EFScheduler mainThreadScheduler];
      [v9 performSyncBlock:v10];
    }

    else
    {
      [WeakRetained _showErrorAlert];
    }
  }
}

void sub_4F8A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_4FC10(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6578;
  qword_D6578 = v1;
}

void sub_511CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_5121C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_51420;
      v17[3] = &unk_B8EB0;
      v18 = *(a1 + 32);
      v8 = +[EFScheduler mainThreadScheduler];
      [v8 performBlock:v17];

      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
      v9 = v18;
    }

    else
    {
      v10 = v5;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_51428;
      v12[3] = &unk_B90D8;
      v13 = *(a1 + 32);
      v14 = WeakRetained;
      v15 = v10;
      v9 = v15;
      v16 = v9;
      v11 = +[EFScheduler mainThreadScheduler];
      [v11 performBlock:v12];
    }
  }
}

void sub_513C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_51428(id *a1)
{
  [a1[4] byod_stopSpinner];
  [a1[4] removePropertyForKey:PSBadgeNumberKey];
  [a1[5] reloadSpecifier:a1[4]];
  v2 = [a1[6] result];
  v3 = [*(a1[5] + 26) normalizedDSID];
  v4 = [v2 getMemberFromDSID:v3];

  v124 = v4;
  if (v4)
  {
    v5 = [v4 invitationStatus];
    v6 = [v5 isEqualToString:@"INVITED"];

    if (v6)
    {
      v121 = +[BYODIcon customEmailDomainIcon];
      v120 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v120 localizedStringForKey:@"BYOD_DOMAIN_INVITE_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
      v8 = [a1[6] result];
      v9 = [v8 domain];
      v10 = [v9 owner];
      v11 = [v10 firstName];
      v12 = [a1[6] result];
      v13 = [v12 domain];
      v14 = [v13 name];
      v15 = [NSString stringWithFormat:v7, v11, v14];

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"BYOD_DOMAIN_INVITE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v18 = [a1[6] result];
      v19 = [v18 domain];
      v20 = [v19 name];
      v21 = [NSString stringWithFormat:v17, v20];

      v22 = [BYODInvitationViewController alloc];
      v23 = *(a1[5] + 26);
      v24 = [a1[7] result];
      v25 = [v24 domain];
      v26 = [v25 name];
      v27 = [(BYODInvitationViewController *)v22 initWithTitle:v21 detailText:v15 icon:v121 acAccount:v23 domainName:v26];

      v28 = [[UINavigationController alloc] initWithRootViewController:v27];
      [v28 setModalInPresentation:1];
      [a1[5] presentViewController:v28 animated:1 completion:0];

      goto LABEL_19;
    }
  }

  v29 = *(a1[5] + 24);
  if (v29 && ([v29 isEqualToString:@"purchase"] & 1) != 0)
  {
    goto LABEL_9;
  }

  v30 = [a1[6] result];
  v31 = [v30 domain];
  if ([v31 isDomainModeSet])
  {
    goto LABEL_13;
  }

  v32 = [a1[6] result];
  v33 = [v32 domain];
  v34 = [v33 status];
  if (![v34 isEqualToString:@"COMPLETE"])
  {

LABEL_13:
    goto LABEL_14;
  }

  v35 = [a1[6] result];
  v36 = [v35 domain];
  v37 = [v36 isDomainPurchased];

  if (v37)
  {
LABEL_9:
    v38 = a1[5];
    v39 = v38[24];
    v38[24] = 0;

    v40 = [BYODChooseYouOrFamilyViewController alloc];
    v41 = *(a1[5] + 26);
    v42 = [a1[7] result];
    v43 = [v42 domain];
    v44 = [v43 name];
    v45 = [(BYODChooseYouOrFamilyViewController *)v40 initWithACAccount:v41 domainPurchase:1 domainName:v44];

    v46 = [[UINavigationController alloc] initWithRootViewController:v45];
    [v46 setModalInPresentation:1];
    [a1[5] presentViewController:v46 animated:1 completion:0];
LABEL_10:

LABEL_11:
    goto LABEL_19;
  }

LABEL_14:
  v47 = [a1[6] result];
  if ([v47 isDNSVerfied])
  {

LABEL_17:
    v50 = [BYODDomainDetailViewController alloc];
    v51 = *(a1[5] + 26);
    v52 = [a1[7] result];
    v53 = [(BYODDomainDetailViewController *)v50 initWithAccount:v51 domain:v52 domainState:0];

    v54 = a1[5];
    v55 = v54[24];
    v54[24] = 0;

    [(BYODDomainDetailViewController *)v53 setParentController:a1[5]];
    [(BYODDomainDetailViewController *)v53 setSpecifier:a1[4]];
    [a1[5] showController:v53];
LABEL_18:

    goto LABEL_19;
  }

  v48 = [a1[6] result];
  v49 = [v48 isDomainInProgress];

  if (v49)
  {
    goto LABEL_17;
  }

  v56 = [a1[6] result];
  v57 = [v56 domain];
  v58 = [v57 isDomainConnect];

  v59 = a1[6];
  if (!v58)
  {
    v68 = [v59 result];
    v69 = [v68 domain];
    v70 = [v69 withEmailAddress];

    v71 = a1[6];
    if (!v70)
    {
      v80 = [v71 result];
      v81 = [v80 domain];
      v45 = [v81 status];

      v82 = [a1[6] result];
      v83 = [v82 domain];
      v84 = [v83 verificationStatus];

      if ([(BYODChooseYouOrFamilyViewController *)v45 isEqualToString:@"IN_PROGRESS"])
      {
        v85 = [v84 isEqualToString:@"NOT_STARTED"];
      }

      else
      {
        v85 = 0;
      }

      v105 = a1[5];
      v106 = [a1[6] result];
      v107 = [v106 domain];
      [v105 _triggerManualDomainSetupFlow:v107 showRedBadge:v85];

      goto LABEL_11;
    }

    v72 = [v71 result];
    v73 = [v72 hasEmails];

    if (!v73)
    {
      v94 = [BYODAddEmailViewController alloc];
      v95 = *(a1[5] + 26);
      v122 = [a1[6] result];
      v96 = [v122 domain];
      v97 = [v96 withFamily];
      v98 = *(a1[5] + 19);
      v99 = [a1[6] result];
      v100 = [v99 domain];
      v101 = [v100 name];
      v102 = [a1[6] result];
      v103 = [(BYODAddEmailViewController *)v94 initWithACAccount:v95 familyFlow:v97 familyCircle:v98 domainName:v101 domainResult:v102];

      [(BYODAddEmailViewController *)v103 setShouldShowCancel:1];
      v104 = [[UINavigationController alloc] initWithRootViewController:v103];
      [a1[5] presentViewController:v104 animated:1 completion:0];
      goto LABEL_42;
    }

LABEL_27:
    v74 = [BYODDomainDetailViewController alloc];
    v75 = *(a1[5] + 26);
    v76 = [a1[7] result];
    v45 = [(BYODDomainDetailViewController *)v74 initWithAccount:v75 domain:v76 domainState:*(a1[5] + 24)];

    [a1[5] showController:v45];
    goto LABEL_11;
  }

  v60 = [v59 result];
  v61 = [v60 domain];
  if ([v61 withEmailAddress])
  {
    v62 = [a1[6] result];
    v63 = [v62 hasEmails];

    if ((v63 & 1) == 0)
    {
      v64 = [a1[6] result];
      v65 = [v64 domain];
      v66 = [v65 withFamily];

      if (v66)
      {
        v67 = a1[5];
        v53 = [a1[6] result];
        [v67 _fetchFamilyDetails:v53];
        goto LABEL_18;
      }

      v111 = [BYODAddEmailViewController alloc];
      v112 = *(a1[5] + 26);
      v123 = [a1[6] result];
      v113 = [v123 domain];
      v114 = [v113 withFamily];
      v115 = *(a1[5] + 19);
      v116 = [a1[6] result];
      v117 = [v116 domain];
      v118 = [v117 name];
      v119 = [a1[6] result];
      v103 = [(BYODAddEmailViewController *)v111 initWithACAccount:v112 familyFlow:v114 familyCircle:v115 domainName:v118 domainResult:v119];

      [(BYODAddEmailViewController *)v103 setShouldShowCancel:1];
      v104 = [[UINavigationController alloc] initWithRootViewController:v103];
      [v104 setModalInPresentation:1];
      [a1[5] presentViewController:v104 animated:1 completion:0];
LABEL_42:

      goto LABEL_19;
    }
  }

  else
  {
  }

  v77 = [a1[6] result];
  v78 = [v77 domain];
  v79 = [v78 withEmailAddress];

  if (v79)
  {
    goto LABEL_27;
  }

  v86 = [a1[6] result];
  v87 = [v86 domain];
  v88 = [v87 domainConnectServerUrl];
  v89 = [v88 length];

  if (v89)
  {
    v90 = [NSURL alloc];
    v91 = [a1[6] result];
    v92 = [v91 domain];
    v93 = [v92 domainConnectServerUrl];
    v45 = [v90 initWithString:v93];

    v46 = [[SFSafariViewController alloc] initWithURL:v45];
    [v46 setDelegate:a1[5]];
    [a1[5] presentViewController:v46 animated:1 completion:0];
    goto LABEL_10;
  }

  v108 = +[BYODLandingScreenViewController log];
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    v109 = [a1[6] result];
    v110 = [v109 ef_publicDescription];
    *buf = 138412290;
    v126 = v110;
    _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "domain connect server URL is nil. domain info %@", buf, 0xCu);
  }

LABEL_19:
}

void sub_52434(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[BYODLandingScreenViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "error while fetching family details %@", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 152), a2);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_525E4;
    v12[3] = &unk_B9060;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v11 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v11 performBlock:v12];

    v8 = v13;
  }
}

void sub_525E4(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  v3 = [v2 isDomainConnect];

  if (v3)
  {
    v4 = [BYODAddEmailViewController alloc];
    v5 = *(*(a1 + 40) + 208);
    v6 = [*(a1 + 32) domain];
    v7 = [v6 withFamily];
    v8 = *(*(a1 + 40) + 152);
    v9 = [*(a1 + 32) domain];
    v10 = [v9 name];
    v15 = [(BYODAddEmailViewController *)v4 initWithACAccount:v5 familyFlow:v7 familyCircle:v8 domainName:v10 domainResult:*(a1 + 32)];

    [(BYODAddEmailViewController *)v15 setShouldShowCancel:1];
    v11 = [[UINavigationController alloc] initWithRootViewController:v15];
    [*(a1 + 40) presentViewController:v11 animated:1 completion:0];

    v12 = v15;
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) domain];
    [v13 _triggerManualDomainSetupFlow:v14 showRedBadge:0];
    v12 = v14;
  }
}

void sub_52DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_52E10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_52FB8;
    v14[3] = &unk_B8EB0;
    v14[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v14];

    v10 = [v5 result];
    v11 = [v10 purchaseAllowed];

    if (v11)
    {
      v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v12 performBlock:&v13];
    }

    else
    {
      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }
  }
}

void sub_52F80(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_52FCC(uint64_t a1)
{
  v2 = [BYODDomainPurchaseSearchViewController alloc];
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  v5 = [*(v3 + 160) domainPurchaseProviderName];
  v7 = [(BYODDomainPurchaseSearchViewController *)v2 initWithACAccount:v4 isBuyNewDomainFlow:1 domainPurchaseProviderName:v5];

  v6 = [[UINavigationController alloc] initWithRootViewController:v7];
  [v6 setModalInPresentation:1];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void sub_53174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_532D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_532FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v6 callback:0];
    }

    else
    {
      v8 = [v5 result];
      v9 = WeakRetained[20];
      WeakRetained[20] = v8;

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_53430;
      v11[3] = &unk_B8EB0;
      v11[4] = WeakRetained;
      v10 = +[EFScheduler mainThreadScheduler];
      [v10 performBlock:v11];
    }
  }
}

void sub_53404(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_5349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BYODLandingScreenViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_53D18(id *a1)
{
  v2 = [BYODMemberLeaveRequest alloc];
  v3 = *(a1[4] + 26);
  v4 = [v3 accountStore];
  v5 = [a1[5] name];
  v6 = [(BYODMemberLeaveRequest *)v2 initWithAccount:v3 accountStore:v4 domain:v5];

  [a1[6] byod_startSpinner];
  objc_initWeak(&location, a1[4]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_53E90;
  v7[3] = &unk_B95E8;
  objc_copyWeak(&v9, &location);
  v8 = a1[6];
  [(BYODMemberLeaveRequest *)v6 performRequestWithCallback:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_53E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_53E90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_53FD8;
    v8[3] = &unk_B8EB0;
    v9 = *(a1 + 32);
    v6 = +[EFScheduler mainThreadScheduler];
    [v6 performSyncBlock:v8];

    if (v4)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v4 callback:0];
    }

    else
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];
    }
  }
}

void sub_53FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_543B0(id *a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_545AC;
  v12[3] = &unk_B8EB0;
  v13 = a1[4];
  v2 = +[EFScheduler mainThreadScheduler];
  [v2 performBlock:v12];

  v3 = [BYODDeleteDomainRequest alloc];
  v4 = *(a1[5] + 26);
  v5 = [v4 accountStore];
  v6 = [a1[6] name];
  v7 = [(BYODDeleteDomainRequest *)v3 initWithAccount:v4 accountStore:v5 domain:v6];

  objc_initWeak(&location, a1[5]);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_545B4;
  v8[3] = &unk_B95E8;
  objc_copyWeak(&v10, &location);
  v9 = a1[4];
  [(BYODDeleteDomainRequest *)v7 performRequestWithCallback:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_54550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_545B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_546FC;
  v8[3] = &unk_B8EB0;
  v9 = *(a1 + 32);
  v6 = +[EFScheduler mainThreadScheduler];
  [v6 performBlock:v8];

  if (WeakRetained)
  {
    if (v4)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v4 callback:0];
    }

    else
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];
    }
  }
}

void sub_546C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_54800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_54828(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    [WeakRetained _listDomain];
  }

  else
  {
    v8 = +[BYODLandingScreenViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Upsell flow failed with error: %@.", &v9, 0xCu);
    }
  }
}

void sub_54A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_54A54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = +[BYODLandingScreenViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "error while refreshing domain list data error %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = [v5 result];
      v10 = WeakRetained[20];
      WeakRetained[20] = v9;

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_54C00;
      v12[3] = &unk_B8EB0;
      v12[4] = WeakRetained;
      v11 = +[EFScheduler mainThreadScheduler];
      [v11 performBlock:v12];
    }
  }
}

void sub_54BC8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_54CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_56894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_568F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_56B10;
    v17[3] = &unk_B8EB0;
    v17[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v17];

    v10 = [v5 success];
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = [v5 result];
      [v12 setObject:v13 forKeyedSubscript:@"domainData"];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 postNotificationName:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0 userInfo:v12];

      v15 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v15 performBlock:&v16];
    }

    else
    {
      [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
    }
  }
}

void sub_56AC4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_56B24(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_56D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_56D94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_56E90;
    v8[3] = &unk_B8EB0;
    v8[4] = WeakRetained;
    v7 = +[EFScheduler mainThreadScheduler];
    [v7 performBlock:v8];

    if (v4)
    {
      [BYODUtil showErrorForPresenter:v6 withError:v4 callback:0];
    }
  }
}

void sub_57168(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6588;
  qword_D6588 = v1;
}

void sub_574F0(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_57788(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6598;
  qword_D6598 = v1;
}

void sub_57F44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 statusCode] == &stru_158.reloff + 1 && *(a1 + 48) == 1)
  {
    v10 = +[BYODRequest log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "401 response from server for request %@ response %@", buf, 0x16u);
    }

    v41[0] = &__kCFBooleanTrue;
    v40[0] = kACRenewCredentialsShouldForceKey;
    v40[1] = kACRenewCredentialsServicesKey;
    v39 = @"com.apple.gs.icloud.mail.auth";
    v11 = [NSArray arrayWithObjects:&v39 count:1];
    v41[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    v15 = *(v13 + 48);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_58490;
    v28[3] = &unk_B97A0;
    v32 = *(a1 + 40);
    v29 = v7;
    v16 = v8;
    v17 = *(a1 + 32);
    v30 = v16;
    v31 = v17;
    [v14 renewCredentialsForAccount:v15 options:v12 completion:v28];
  }

  else if (*(a1 + 40))
  {
    if ([v8 statusCode] == stru_B8.segname)
    {
      v18 = v8;
      if ([v18 success])
      {
        v12 = 0;
      }

      else
      {
        v23 = [v18 byodError];
        v24 = [v23 errorCode];
        v25 = [v24 intValue];
        v26 = [*(a1 + 32) _errorDictionaryFromServerResponse:v18];
        v12 = [NSError errorWithDomain:@"BYODServerErrorDomain" code:v25 userInfo:v26];
      }
    }

    else
    {
      if (v9)
      {
        v19 = +[BYODRequest log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v8 statusCode];
          v21 = [v9 ef_publicDescription];
          *buf = 134218242;
          v34 = v20;
          v35 = 2114;
          v36 = v21;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "non 200 response from server responseCode: %ld error: %{public}@", buf, 0x16u);
        }

        v22 = v9;
      }

      else
      {
        v27 = +[BYODRequest log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v34 = [v8 statusCode];
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "non 200 response from server responseCode: %ld. Error object is nil. Constructing local error code", buf, 0xCu);
        }

        v22 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"BYODServerErrorDomain", [v8 statusCode], 0);
      }

      v12 = v22;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = +[BYODRequest log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = v8;
      v35 = 2112;
      v36 = v7;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "no handler for performRequestWithHandler. Server response %@ for request %@ and error %@", buf, 0x20u);
    }
  }
}

void sub_58490(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = +[BYODRequest log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "auth token renew failed. User rejected";
        v8 = buf;
        goto LABEL_8;
      }

LABEL_9:

      (*(*(a1 + 56) + 16))();
      goto LABEL_13;
    }

    if (a2 == 2)
    {
      v6 = +[BYODRequest log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v7 = "auth token renew failed.";
        v8 = &v12;
LABEL_8:
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = +[BYODRequest log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "auth token renewed. Retrying request with server", v10, 2u);
    }

    [*(a1 + 48) _performRequestWithHandler:*(a1 + 56) renewToken:0];
  }

LABEL_13:
}

void sub_587AC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_58AFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "list domain call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_58E64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "get domain call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_59230(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "get DNS records call response %@ error %@", &v15, 0x16u);
  }

  v9 = v6;
  v10 = [v9 success];
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"BYODServerErrorDomain" code:500 userInfo:0];

    v12 = v13;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v9, v12);
  }
}

void sub_59620(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "list email send from call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_599A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[BYODRequest log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "add domain call response %@ error %@", &v11, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_59B90(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_59DF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[BYODRequest log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "domain verify transfer call response %@ error %@", &v11, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_5A1EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[BYODRequest log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "set default email call response %@ error %@", &v11, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_5A72C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[BYODRequest log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "delete email  call response %@ error %@", &v11, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_5ACD0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[BYODRequest log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "add email  call response %@ error %@", &v11, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_5B22C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "delete domain call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5B5FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "resend verification email call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5BA64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = +[BYODRequest log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "add alias call response %@ error %@", &v11, 0x16u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void sub_5BF28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Enable catch-all call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5C2CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Disable catch-all call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5C6FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "invite domain member response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5CB74(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "update intro flag call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5CF7C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v16 = 138412546;
    v17 = v6;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "accept invite call response %@ error %{public}@", &v16, 0x16u);
  }

  v10 = v6;
  v11 = [v10 success];
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [NSError errorWithDomain:@"BYODServerErrorDomain" code:500 userInfo:0];

    v13 = v14;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v10, v13);
  }
}

void sub_5D3F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "decline invite call response %@ error %@", &v15, 0x16u);
  }

  v9 = v6;
  v10 = [v9 success];
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"BYODServerErrorDomain" code:500 userInfo:0];

    v12 = v13;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v9, v12);
  }
}

void sub_5D818(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Update intro flag call response %@ error %@", &v15, 0x16u);
  }

  v9 = v6;
  v10 = [v9 success];
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"BYODServerErrorDomain" code:500 userInfo:0];

    v12 = v13;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v9, v12);
  }
}

void sub_5DC2C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v12 = 138412546;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "add domain member response %@ error %{public}@", &v12, 0x16u);
  }

  v10 = v6;
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v7);
  }
}

void sub_5E128(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v12 = 138412546;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "remove domain member response %@ error %{public}@", &v12, 0x16u);
  }

  v10 = v6;
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v7);
  }
}

void sub_5E648(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "search domain call response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5EA34(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Request purchase url response %@ error %@", &v11, 0x16u);
  }

  v9 = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v7);
  }
}

void sub_5EE48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "update intro flag call response %@ error %@", &v15, 0x16u);
  }

  v9 = v6;
  v10 = [v9 success];
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [NSError errorWithDomain:@"BYODServerErrorDomain" code:500 userInfo:0];

    v12 = v13;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v9, v12);
  }
}

void sub_5F360(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v12 = 138412546;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "add domain member response %@ error %{public}@", &v12, 0x16u);
  }

  v10 = v6;
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v7);
  }
}

void sub_5F7FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "leave member error %{public}@", &v12, 0xCu);
  }

  v10 = v6;
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v7);
  }
}

void sub_5FBD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v12 = 138412546;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "domain purchase eligibility response %@ error %{public}@", &v12, 0x16u);
  }

  v10 = v6;
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v7);
  }
}

void sub_60718(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_60AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_60B00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_60C84;
    v12 = &unk_B8EB0;
    v13 = *(a1 + 32);
    v6 = +[EFScheduler mainThreadScheduler];
    [v6 performBlock:&v9];

    if (v4)
    {
      [BYODUtil showErrorForPresenter:WeakRetained withError:v4 callback:0];
    }

    else
    {
      v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v7 performBlock:&v8];
    }
  }
}

void sub_60C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_6138C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_614E4;
  v14[3] = &unk_B9828;
  v9 = a4;
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v19 = *(a1 + 40);
  v12 = v7;
  v18 = v12;
  v13 = +[EFScheduler mainThreadScheduler];
  [v13 performBlock:v14];
}

void sub_6149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void *sub_614E4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) receivedValidResponse:*(a1 + 48) forRequest:*(*(a1 + 40) + 8)];
  }

  result = *(a1 + 40);
  if (result[2])
  {
    result = [result _finishedLoading];
  }

  if (v2)
  {
    v4 = *(*(a1 + 64) + 16);

    return v4();
  }

  return result;
}

void sub_61760(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D65A8;
  qword_D65A8 = v1;
}

void sub_618C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_61CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v23 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_61D54(id *a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = WeakRetained;
  if (a2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_61F58;
    v10[3] = &unk_B9878;
    v11 = WeakRetained;
    v12 = a1[4];
    v13 = a1[5];
    v15 = a1[6];
    v16 = 1;
    v14 = v5;
    v8 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v8 performBlock:v10];
  }

  else
  {
    v9 = +[BYODSpecifierProvider log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Account upgrade failed with error: %@.", buf, 0xCu);
    }

    (*(a1[6] + 2))();
  }
}

uint64_t sub_61F58(uint64_t a1)
{
  [*(a1 + 32) _loadDomainInfo:*(*(a1 + 32) + 16) notification:0 targetDomain:*(a1 + 40) domainState:*(a1 + 48)];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

void sub_62180(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_62300;
    v9[3] = &unk_B9060;
    v6 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v6;
    v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v7 performBlock:v9];
  }

  else
  {
    v8 = +[BYODSpecifierProvider log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Account upgrade failed with error: %@.", buf, 0xCu);
    }
  }
}

void sub_622C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_6256C(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v9 = [UIAlertController alertControllerWithTitle:0 message:v8 preferredStyle:1];

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
      v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];

      [v9 addAction:v12];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_62CAC;
      v60[3] = &unk_B91C8;
      v61[0] = a1[4];
      v61[1] = WeakRetained;
      v13 = v9;
      v62 = v13;
      v14 = +[EFScheduler mainThreadScheduler];
      [v14 performBlock:v60];
      v15 = v61;

      v16 = v62;
LABEL_12:

      goto LABEL_13;
    }

    v17 = v5;
    v18 = [v17 result];
    objc_storeStrong(WeakRetained + 3, v18);
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 removeObserver:WeakRetained name:@"BYOD_REFRESH_NOTIFICATION" object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:WeakRetained selector:"_refreshByodState:" name:@"BYOD_REFRESH_NOTIFICATION" object:0];

    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_62CF4;
    v55[3] = &unk_B9918;
    v12 = v18;
    v56 = v12;
    v21 = a1[5];
    v22 = a1[6];
    v23 = a1[7];
    v24 = a1[4];
    *&v25 = v23;
    *(&v25 + 1) = v24;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v57 = v26;
    v58 = v25;
    v59 = WeakRetained;
    v27 = objc_retainBlock(v55);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_62FAC;
    v51[3] = &unk_B91C8;
    v13 = v17;
    v52 = v13;
    v53 = a1[5];
    v54 = WeakRetained;
    v38 = objc_retainBlock(v51);
    v28 = [v13 result];
    LODWORD(v21) = [v28 showWelcomeScreen];

    if (v21)
    {
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_630EC;
      v44[3] = &unk_B9968;
      v45 = a1[5];
      v46 = v12;
      v49 = v27;
      v50 = v38;
      v47 = a1[4];
      v48 = WeakRetained;
      v37 = v27;
      v29 = +[EFScheduler mainThreadScheduler];
      [v29 performBlock:v44];
      v30 = &v45;
      v31 = &v46;
      v32 = &v49;
      v33 = &v50;
    }

    else
    {
      v34 = [v12 domains];
      v35 = [v34 count];

      if (v35)
      {
        if ([a1[6] length])
        {
          [WeakRetained _getCustomEmailDomain:a1[4] account:a1[5] callback:v27];
        }

        else
        {
          (v27[2])(v27, 1, 0);
        }

        goto LABEL_11;
      }

      v37 = v27;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_63360;
      v39[3] = &unk_B99E0;
      v40 = v13;
      v41 = a1[5];
      v43 = v38;
      v42[0] = a1[4];
      v42[1] = WeakRetained;
      v36 = objc_retainBlock(v39);
      [WeakRetained _getCustomEmailDomain:a1[4] account:a1[5] callback:v36];
      v30 = &v40;
      v31 = &v41;
      v32 = &v43;
      v33 = v42;
    }

    v27 = v37;
LABEL_11:
    v15 = &v56;

    v16 = v57;
    goto LABEL_12;
  }

LABEL_13:
}

id sub_62CAC(uint64_t a1)
{
  [*(a1 + 32) byod_stopSpinner];
  [*(a1 + 40) onByodSpinnerChange:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 showViewController:v3];
}

void sub_62CF4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_62F18;
    v17[3] = &unk_B98F0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v18 = v11;
    v19 = v10;
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v20 = v12;
    v21 = v13;
    v14 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v14 performBlock:v17];

    v15 = v18;
  }

  else
  {
    v15 = +[BYODSpecifierProvider log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 ef_publicDescription];
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Upsell flow failed with error: %{public}@.", buf, 0xCu);
    }
  }
}

void sub_62EB4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_62F18(uint64_t a1)
{
  v2 = [[BYODLandingScreenViewController alloc] initWithDomainListAndTargetDomain:*(a1 + 32) acAccount:*(a1 + 40) targetDomain:*(a1 + 48) domainState:*(a1 + 56)];
  [(BYODLandingScreenViewController *)v2 setSpecifier:*(a1 + 64)];
  [*(a1 + 64) byod_stopSpinner];
  [*(a1 + 72) onByodSpinnerChange:0];
  [*(a1 + 72) showViewController:v2];
}

void sub_62FAC(uint64_t a1)
{
  v9 = [*(a1 + 32) result];
  v2 = [v9 enablePurchaseDomain];

  v3 = [BYODChooseBuyOrOwnedDomainViewController alloc];
  v4 = *(a1 + 40);
  v5 = [*(*(a1 + 48) + 24) maxDomainsAllowed];
  v6 = [*(*(a1 + 48) + 24) domainPurchaseProviderName];
  v10 = [(BYODChooseBuyOrOwnedDomainViewController *)v3 initWithACAccount:v4 maxDomainsAllowed:v5 domainPurchaseProviderName:v6];

  if ((v2 & 1) == 0)
  {
    v7 = [(BYODBaseViewController *)[BYODChooseYouOrFamilyViewController alloc] initWithACAccount:*(a1 + 40)];

    v10 = v7;
  }

  v8 = [[UINavigationController alloc] initWithRootViewController:v10];
  [*(a1 + 48) showViewController:v8];
}

void sub_630EC(uint64_t a1)
{
  v2 = [BYODFirstTimeIntroViewController alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6323C;
  v6[3] = &unk_B9940;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v4 = [(BYODFirstTimeIntroViewController *)v2 initWithACAccount:v3 completion:v6];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  [*(a1 + 48) byod_stopSpinner];
  [*(a1 + 56) onByodSpinnerChange:0];
  [*(a1 + 56) showViewController:v5];
}

void sub_6323C(uint64_t a1, int a2)
{
  v4 = +[BYODSpecifierProvider log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Intro Acknowledged:%{BOOL}d.", v7, 8u);
  }

  if (a2)
  {
    v5 = [*(a1 + 32) domains];
    v6 = [v5 count] == 0;

    if (v6)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_63360(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) result];
    v7 = [v6 enablePurchaseDomain];

    v8 = [*(a1 + 32) result];
    v9 = [v8 showWelcomeScreen] & v7;

    if (v9 != 1)
    {
      (*(*(a1 + 64) + 16))();
      goto LABEL_8;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_635A8;
    v18[3] = &unk_B99B8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);
    *&v13 = *(a1 + 56);
    *(&v13 + 1) = v11;
    *&v14 = v10;
    *(&v14 + 1) = v12;
    v19 = v14;
    v20 = v13;
    v15 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v15 performBlock:v18];

    v16 = v19;
  }

  else
  {
    v16 = +[BYODSpecifierProvider log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 ef_publicDescription];
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Upsell flow failed with error: %{public}@.", buf, 0xCu);
    }
  }

LABEL_8:
}

void sub_635A8(uint64_t a1)
{
  v2 = [BYODFirstTimeIntroViewController alloc];
  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_636C4;
  v6[3] = &unk_B9990;
  v7 = *(a1 + 56);
  v4 = [(BYODFirstTimeIntroViewController *)v2 initWithACAccount:v3 completion:v6];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  [*(a1 + 40) byod_stopSpinner];
  [*(a1 + 48) onByodSpinnerChange:0];
  [*(a1 + 48) showViewController:v5];
}

uint64_t sub_636C4(uint64_t a1, int a2)
{
  v4 = +[BYODSpecifierProvider log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Intro Acknowledged:%{BOOL}d.", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_63A74(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_63B90;
  v11[3] = &unk_B9A30;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v15 = v8;
  v16 = a2;
  v9 = v5;
  v14 = v9;
  v10 = +[EFScheduler mainThreadScheduler];
  [v10 performBlock:v11];
}

void sub_63B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

uint64_t sub_63B90(uint64_t a1)
{
  [*(a1 + 32) byod_stopSpinner];
  [*(a1 + 40) onByodSpinnerChange:0];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void sub_63DD0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[BYODSpecifierProvider log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Account upgrade to HSA completed successfuly", v7, 2u);
    }
  }

  else
  {
    v6 = +[BYODSpecifierProvider log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_79920(v5, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_64230(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_642F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BYODSpecifierProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_64490(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D65B8;
  qword_D65B8 = v1;
}

void sub_65E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 160);
  if (!v4)
  {
    v5 = [[BYODSpinner alloc] initWithViewController:*(a1 + 32)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 160);
    *(v6 + 160) = v5;

    v4 = *(*(a1 + 32) + 160);
  }

  [v4 startSpinner];
  v8 = [BYODDeleteDomainRequest alloc];
  v9 = *(*(a1 + 32) + 144);
  v10 = [v9 accountStore];
  v11 = [*(*(a1 + 32) + 152) name];
  v12 = [(BYODDeleteDomainRequest *)v8 initWithAccount:v9 accountStore:v10 domain:v11];

  objc_initWeak(&location, *(a1 + 32));
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_65FD0;
  v13[3] = &unk_B91F0;
  objc_copyWeak(&v14, &location);
  [(BYODDeleteDomainRequest *)v12 performRequestWithCallback:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_65F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_65FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_6616C;
    v11[3] = &unk_B8EB0;
    v11[4] = WeakRetained;
    v7 = +[EFScheduler mainThreadScheduler];
    [v7 performBlock:v11];

    if (v4)
    {
      [BYODUtil showErrorForPresenter:v6 withError:v4 callback:0];
    }

    else
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 postNotificationName:@"STOP_DOMAIN_NOTIFICATION" object:0 userInfo:0];

      v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
      [v9 performBlock:&v10];
    }
  }
}

void sub_66138(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_66814(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_677B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_67894(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 19))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_67A54;
    v13[3] = &unk_B8EB0;
    v13[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v13];
  }

  if ([v5 success])
  {
    v10 = [v5 result];
    [v8 _postNotificationForDomainData:v10];

    v11 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v11 performBlock:&v12];
  }

  else
  {
    [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
  }
}

void sub_67A1C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_67CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_67D50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 19))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_67F10;
    v13[3] = &unk_B8EB0;
    v13[4] = WeakRetained;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v13];
  }

  if ([v5 success])
  {
    v10 = [v5 result];
    [v8 _postNotificationForDomainData:v10];

    v11 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v11 performBlock:&v12];
  }

  else
  {
    [BYODUtil showErrorForPresenter:v8 withError:v6 callback:0];
  }
}

void sub_67ED8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_681CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_6833C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D65C8;
  qword_D65C8 = v1;
}

uint64_t sub_69048(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_6A170(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_6A3A8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v2 = *(*(a1 + 32) + 16);
  if (v2 >= [*(a1 + 40) row])
  {
    --*(*(a1 + 32) + 16);
  }

  v3 = *(a1 + 48);
  v5 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 deleteRowsAtIndexPaths:v4 withRowAnimation:100];
}

void sub_6A938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));

  objc_destroyWeak((v6 - 56));
  _Unwind_Resume(a1);
}

void sub_6A984(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) viewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

void sub_6AA0C(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained setGrantedDataclasses:{objc_msgSend(v9, "performSelector:", "grantedDataclasses")}];
      }

      v4 = [v9 username];
      v5 = [v9 displayName];
      v6 = [v9 token];
      v7 = [v9 refreshToken];
      v8 = [WeakRetained completion];
      [WeakRetained validateUniquenessAndAddAccountWithUsername:v4 fullUserName:v5 token:v6 refreshToken:v7 completion:v8];
    }

    else
    {
      v4 = [WeakRetained completion];
      v4[2](v4, 0, 0, 0);
    }
  }
}

void sub_6AD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = GoogleAccountSyncController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_6B108(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_6B994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));

  objc_destroyWeak((v4 - 40));
  _Unwind_Resume(a1);
}

void sub_6B9DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReAuthenticating:0];
}

void sub_6C130(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D65D8;
  qword_D65D8 = v1;
}

void sub_6C2E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_6C318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GoogleRemoteAccountCreationController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Presenting Google Auth controller", v6, 2u);
  }

  v5 = [*(a1 + 32) viewController];
  [v5 presentViewController:v3 animated:1 completion:0];
}

void sub_6C3E4(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained setGrantedDataclasses:{objc_msgSend(v9, "performSelector:", "grantedDataclasses")}];
      }

      v4 = [v9 username];
      v5 = [v9 displayName];
      v6 = [v9 token];
      v7 = [v9 refreshToken];
      v8 = [WeakRetained completion];
      [WeakRetained validateUniquenessAndAddAccountWithUsername:v4 fullUserName:v5 token:v6 refreshToken:v7 completion:v8];
    }

    else
    {
      v4 = [WeakRetained completion];
      v4[2](v4, 0, 0, 0);
    }
  }
}

void sub_6C6CC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D65E8;
  qword_D65E8 = v1;
}

void sub_6C964(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) viewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

void sub_6C9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = [v3 accessToken];

    if (v5)
    {
      v6 = [v3 username];
      v7 = [v3 displayName];
      v8 = [v3 accessToken];
      v9 = [v3 refreshToken];
      v10 = [WeakRetained completion];
      [WeakRetained validateUniquenessAndAddAccountWithUsername:v6 fullUserName:v7 token:v8 refreshToken:v9 completion:v10];

LABEL_8:
      goto LABEL_9;
    }

    v11 = [v3 username];

    if (!v11)
    {
LABEL_7:
      v6 = [WeakRetained completion];
      v6[2](v6, 0, 0, 0);
      goto LABEL_8;
    }

    v15 = MFMailAccountUsername;
    v12 = [v3 username];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v14 = [WeakRetained completion];
    (v14)[2](v14, 0, 2, v13);
  }

LABEL_9:
}

Class sub_6CD38(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_D6600)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_6CF60;
    v7[4] = &unk_B8D78;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/DAEASOAuthFramework.framework/DAEASOAuthFramework";
    qword_D6600 = _sl_dlopen();
  }

  if (!qword_D6600)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *DAEASOAuthFrameworkLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"HotmailRemoteAccountCreationController.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("DAEASOAuthWebViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getDAEASOAuthWebViewControllerClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"HotmailRemoteAccountCreationController.m" lineNumber:20 description:{@"Unable to find class %s", "DAEASOAuthWebViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_D65F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6CF60()
{
  result = _sl_dlopen();
  qword_D6600 = result;
  return result;
}

void sub_6D06C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6608;
  qword_D6608 = v1;
}

uint64_t sub_6DEE4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_6EF84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_6F884(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6618;
  qword_D6618 = v1;
}

void sub_6FD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_destroyWeak((v20 + 40));

  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v22 - 112));

  _Unwind_Resume(a1);
}

void sub_6FE08(uint64_t a1)
{
  v2 = +[AARemoteServer sharedServer];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_6FECC;
  v3[3] = &unk_B9B90;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 configurationWithCompletion:v3];

  objc_destroyWeak(&v4);
}

void sub_6FEB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  _Unwind_Resume(a1);
}

void sub_6FECC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 addEmailURL];
    if (v5)
    {
      if (!*(WeakRetained + 1))
      {
        v6 = objc_alloc_init(UINavigationController);
        v7 = *(WeakRetained + 1);
        *(WeakRetained + 1) = v6;

        if (+[UIDevice mf_isPadIdiom])
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        [*(WeakRetained + 1) setModalPresentationStyle:v8];
      }

      v9 = *(WeakRetained + 2);
      if (!v9)
      {
        v10 = objc_alloc_init(RUILoader);
        v11 = *(WeakRetained + 2);
        *(WeakRetained + 2) = v10;

        v9 = *(WeakRetained + 2);
      }

      [v9 setDelegate:WeakRetained];
      v12 = [[AAAddEmailUIRequest alloc] initWithURLString:v5 account:*(WeakRetained + 5)];
      v13 = *(WeakRetained + 2);
      v14 = [v12 urlRequest];
      [v13 loadXMLUIWithRequest:v14];
    }

    else
    {
      v15 = +[ICloudMailCreator log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "add email url missing from bag", v16, 2u);
      }
    }
  }
}

void sub_70080(uint64_t a1)
{
  v2 = +[ICloudMailCreator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "user pressed cancel for mail creation", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 7);
    [v5 icloudMailCreationNeedsViewUpdate:v4 withAccount:v4[5]];
  }
}

void sub_70140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = +[ICloudMailCreator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "self released during account creation", v9, 2u);
    }

    goto LABEL_8;
  }

  v4 = [WeakRetained[5] identifier];
  if (v4)
  {
    v5 = [v3[5] aa_authToken];

    if (!v5)
    {
      v7 = [v3[5] accountStore];
      v8 = v3[5];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_702C4;
      v10[3] = &unk_B9C08;
      v11 = *(a1 + 32);
      [v7 renewCredentialsForAccount:v8 completion:v10];

      v6 = v11;
LABEL_8:

      goto LABEL_9;
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

void sub_702C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_70380;
  block[3] = &unk_B9BE0;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_70380(void *a1)
{
  if (a1[6])
  {
    v2 = +[ICloudMailCreator log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[6];
      v4 = a1[4];
      v6 = 134218242;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "renew credentials for create account email failed. renewResult %ld error %@", &v6, 0x16u);
    }
  }

  else
  {
    v5 = *(a1[5] + 16);

    v5();
  }
}

void sub_70694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_70700(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = +[ICloudMailCreator log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a1[4] URL];
    v9 = [v5 ef_publicDescription];
    v21 = 138412802;
    v22 = v8;
    v23 = 2048;
    v24 = a2;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "renewing account token for request URL %@ with result %ld error %{public}@", &v21, 0x20u);
  }

  if (a2)
  {
    v10 = +[ICloudMailCreator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1[4] URL];
      v21 = 138412290;
      v22 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "token renew failed for icloud mail create url %@", &v21, 0xCu);
    }
  }

  else
  {
    v12 = [a1[5] URL];
    v10 = [v12 absoluteString];

    v13 = [[AAAddEmailUIRequest alloc] initWithURLString:v10 account:*(WeakRetained + 5)];
    v14 = [v13 urlRequest];
    v15 = [v14 mutableCopy];

    v16 = [a1[5] HTTPMethod];
    [v15 setHTTPMethod:v16];

    v17 = [a1[5] HTTPMethod];
    v18 = [v17 isEqualToString:@"POST"];

    if (v18)
    {
      v19 = [*(WeakRetained + 3) lastObject];
      v20 = [v19 postbackData];
      [v15 setHTTPBody:v20];
    }

    [*(WeakRetained + 2) loadXMLUIWithRequest:v15];
  }
}

void sub_70974(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_70D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_70DD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_70EC0;
  v5[3] = &unk_B9CA8;
  v5[4] = v2;
  v6 = v3;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  [v4 aa_updatePropertiesForAppleAccount:v6 completion:v5];

  objc_destroyWeak(&v8);
}

void sub_70E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v15 + 56));

  _Unwind_Resume(a1);
}

void sub_70EC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_70FB0;
  v5[3] = &unk_B9CA8;
  v5[4] = v2;
  v6 = v3;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  [v4 saveVerifiedAccount:v6 withCompletionHandler:v5];

  objc_destroyWeak(&v8);
}

void sub_70F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v15 + 56));

  _Unwind_Resume(a1);
}

void sub_70FB0(uint64_t a1)
{
  v9[0] = kACRenewCredentialsShouldAvoidUIKey;
  v9[1] = kACRenewCredentialsShouldForceKey;
  v10[0] = &__kCFBooleanTrue;
  v10[1] = &__kCFBooleanFalse;
  v2 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7113C;
  v5[3] = &unk_B9C58;
  objc_copyWeak(&v8, (a1 + 56));
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  [v4 renewCredentialsForAccount:v3 options:v2 completion:v5];

  objc_destroyWeak(&v8);
}

void sub_7110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_destroyWeak((v15 + 48));

  _Unwind_Resume(a1);
}

void sub_7113C(id *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_711F4;
  block[3] = &unk_B9C80;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v5);
}

void sub_711F4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[4] stopActivityIndicator];
  v3 = a1[5];
  if (WeakRetained)
  {
    v4 = [WeakRetained delegate];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = +[ICloudMailCreator log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "calling delegate updateViewWithApplAccount %@", &v7, 0xCu);
      }

      [v4 icloudMailCreationNeedsViewUpdate:WeakRetained withAccount:v3];
    }

    else
    {
      v6 = +[ICloudMailCreator log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "delegate doesn't respond to selector updateViewWithApplAccount", &v7, 2u);
      }
    }

    [WeakRetained[1] dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v4 = +[ICloudMailCreator log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "self missing in dismiss", &v7, 2u);
    }
  }
}

void sub_719B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_72244(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = +[UIColor tableCellEligibleColor];
  v4 = [v7 textProperties];
  [v4 setColor:v3];

  v5 = [*(a1 + 32) _mailboxTextFont];
  v6 = [v7 textProperties];
  [v6 setFont:v5];
}

void sub_7258C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setText:*(a1 + 32)];
  [v3 setImage:*(a1 + 40)];
}

void sub_72884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxGroupedPickerTableCell;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_72960(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32) == 1)
  {
    +[UIColor tableCellEligibleColor];
  }

  else
  {
    +[UIColor tableCellIneligibleColor];
  }
  v3 = ;
  v4 = [v5 textProperties];
  [v4 setColor:v3];
}

void sub_72B1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 textProperties];
  [v3 setColor:v2];
}

void sub_72D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailboxListViewControllerBase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_73228(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 10) = [v3 isCancelled];
}

void sub_74C40(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6630;
  qword_D6630 = v1;
}

id sub_74DDC(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) launchUpgradeFlow:*(a1 + 40) withCompletion:*(a1 + 48)];
  }
}

void sub_74F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_74FB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v5 setDelegate:WeakRetained];
    v8 = [*(a1 + 32) copy];
    [WeakRetained setCompletion:v8];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_75180;
    block[3] = &unk_B8EB0;
    v11 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v9 = +[MatterhornUpsellManager log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Failed to launch journey: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_75410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 status])
    {
      v7 = [v5 status] == &dword_0 + 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = +[MatterhornUpsellManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"unavailable";
    v10 = *(a1 + 32);
    if (v7)
    {
      v9 = @"available";
    }

    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Feature %@ is %@", buf, 0x16u);
  }

  if (v6)
  {
    v11 = +[MatterhornUpsellManager log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 localizedDescription];
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Error! %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_75658;
  block[3] = &unk_B9DC8;
  v13 = *(a1 + 40);
  v18 = v7;
  v16 = v6;
  v17 = v13;
  v14 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_75658(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
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

void sub_75F68(uint64_t a1)
{
  v2 = [*(a1 + 32) accountClass];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v2 accountTypeIdentifier];
  LOBYTE(v3) = [v3 _isAccountUsernameUnique:v4 typeIdentifer:v5];

  if (v3)
  {
    v33 = [v2 displayedAccountTypeString];
    if ([*(a1 + 32) _hasAccountWithDescription:v33])
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = v33;
    }

    v34 = v6;
    v43 = v6;
    v42[0] = MFMailAccountDescription;
    v42[1] = MFMailAccountUsername;
    v44 = *(a1 + 40);
    v42[2] = MFOAuth2Token;
    v42[3] = MFOAuth2RefreshToken;
    v45 = *(a1 + 56);
    v9 = [NSDictionary dictionaryWithObjects:&v43 forKeys:v42 count:4];
    v31 = [v9 mutableCopy];

    v10 = [*(a1 + 32) grantedDataclasses];
    v11 = v10 == 0;

    if (!v11)
    {
      v12 = [*(a1 + 32) grantedDataclasses];
      [v31 setValue:v12 forKey:ACAccountPropertyGrantedDataclasses];
    }

    v13 = [v2 accountWithProperties:{v31, v31}];
    if ([*(a1 + 64) length])
    {
      [v13 setFullUserName:*(a1 + 64)];
    }

    [v13 setUsesSSL:1];
    v14 = [*(a1 + 32) supportedDataclasses];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = [v13 persistentAccount];
    v16 = [v15 accountType];
    v17 = [v16 supportedDataclasses];

    v18 = [v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v18)
    {
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = [v14 containsObject:v21];
          v23 = [v13 persistentAccount];
          [v23 setProvisioned:v22 forDataclass:v21];

          v24 = [*(a1 + 32) grantedDataclasses];
          v25 = v24 == 0;

          if (v25 || (v22 & 1) == 0)
          {
            v26 = (v25 & v22);
          }

          else
          {
            v27 = [*(a1 + 32) grantedDataclasses];
            v26 = [v27 containsObject:v21];
          }

          v28 = [v13 persistentAccount];
          [v28 setEnabled:v26 forDataclass:v21];
        }

        v18 = [v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v18);
    }

    v29 = *(a1 + 72);
    if (v13)
    {
      v30 = [v13 persistentAccount];
      (*(v29 + 16))(v29, v30, 1, 0);
    }

    else
    {
      (*(v29 + 16))(v29, 0, 0, 0);
    }

    v8 = v34;
  }

  else
  {
    v7 = *(a1 + 32);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_76464;
    v39[3] = &unk_B8C80;
    v40 = *(a1 + 72);
    [v7 _showDuplicateAccountAlertWithCompletion:v39];
    v8 = v40;
  }
}

void sub_768DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v8 localizedStringForKey:@"ALREADY_EXISTING_REMOTE_ACCOUNT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ALREADY_EXISTING_ACCOUNT_DESC_WATCH" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [objc_msgSend(*(a1 + 32) "accountClass")];
  v7 = [NSString stringWithFormat:v5, v6];
  [v2 _displayAlertWithTitle:v3 message:v7 completion:*(a1 + 40)];
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
  MailBoolPreferenceValue = dword_D6400;
  if (dword_D6400 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ShowToCCIndicators");
    dword_D6400 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewShowsNewestAtTop(int a1)
{
  MailBoolPreferenceValue = dword_D6404;
  if (dword_D6404 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ConversationViewShowsNewestAtTop");
    dword_D6404 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewIncludesRelatedMessages(int a1)
{
  v1 = dword_D6408;
  if (dword_D6408 < 0 || a1)
  {
    v1 = getMailBoolPreferenceValue(@"ConversationViewExcludesRelatedMessages") ^ 1;
    dword_D6408 = v1;
  }

  return v1 != 0;
}

BOOL collapseReadConversationMessages(int a1)
{
  MailBoolPreferenceValueWithDefault = dword_D640C;
  if (dword_D640C < 0 || a1)
  {
    MailBoolPreferenceValueWithDefault = getMailBoolPreferenceValueWithDefault(@"CollapseReadConversationMessages", 1);
    dword_D640C = MailBoolPreferenceValueWithDefault;
  }

  return MailBoolPreferenceValueWithDefault != 0;
}

id includeAttachmentsWithReplies(int a1)
{
  v2 = qword_D6640;
  if (qword_D6640)
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
    v6 = qword_D6640;
    qword_D6640 = v5;

    v2 = qword_D6640;
  }

  return v2;
}

BOOL mutedThreadsMoveToArchive(int a1)
{
  v1 = dword_D6410;
  if (dword_D6410 < 0 || a1)
  {
    v2 = getMailPreferenceValueWithDefault(EMUserDefaultMutedThreadActionKey, EMUserDefaultMutedThreadActionMarkAsRead);
    dword_D6410 = [EMUserDefaultMutedThreadActionMoveToArchiveOrDelete isEqual:v2];

    v1 = dword_D6410;
  }

  return v1 != 0;
}

id rightSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_D6650);
  v2 = qword_D6648;
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

    if (qword_D6648 != v5)
    {
      objc_storeStrong(&qword_D6648, v5);
    }
  }

  os_unfair_lock_unlock(&unk_D6650);

  return v5;
}

id leftSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_D6660);
  v2 = qword_D6658;
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

    if (qword_D6658 != v5)
    {
      objc_storeStrong(&qword_D6658, v5);
    }
  }

  os_unfair_lock_unlock(&unk_D6660);

  return v5;
}

id preferencesBundle()
{
  v0 = qword_D6668;
  if (!qword_D6668)
  {
    v1 = UISystemRootDirectory();
    v2 = [v1 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/MobileMailSettings"];
    v3 = [v2 stringByAppendingPathExtension:@"bundle"];
    v4 = [NSBundle bundleWithPath:v3];
    v5 = qword_D6668;
    qword_D6668 = v4;

    v0 = qword_D6668;
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

void sub_7795C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_779A8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) viewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

void sub_77A30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = [v3 token];

    if (v5)
    {
      v6 = [v3 username];
      v7 = [v3 displayName];
      v8 = [v3 token];
      v9 = [v3 refreshToken];
      v10 = [WeakRetained completion];
      [WeakRetained validateUniquenessAndAddAccountWithUsername:v6 fullUserName:v7 token:v8 refreshToken:v9 completion:v10];

LABEL_8:
      goto LABEL_9;
    }

    v11 = [v3 username];

    if (!v11)
    {
LABEL_7:
      v6 = [WeakRetained completion];
      v6[2](v6, 0, 0, 0);
      goto LABEL_8;
    }

    v15 = MFMailAccountUsername;
    v12 = [v3 username];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v14 = [WeakRetained completion];
    (v14)[2](v14, 0, 2, v13);
  }

LABEL_9:
}

void sub_77DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = YahooAccountSyncController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_78100(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_78844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7888C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReAuthenticating:0];
}

void sub_79018(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_D6670;
  qword_D6670 = v1;
}

void sub_791CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_791F8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) viewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

void sub_79280(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = [v3 token];

    if (v5)
    {
      v6 = [v3 username];
      v7 = [v3 displayName];
      v8 = [v3 token];
      v9 = [v3 refreshToken];
      v10 = [WeakRetained completion];
      [WeakRetained validateUniquenessAndAddAccountWithUsername:v6 fullUserName:v7 token:v8 refreshToken:v9 completion:v10];

LABEL_8:
      goto LABEL_9;
    }

    v11 = [v3 username];

    if (!v11)
    {
LABEL_7:
      v6 = [WeakRetained completion];
      v6[2](v6, 0, 0, 0);
      goto LABEL_8;
    }

    v15 = MFMailAccountUsername;
    v12 = [v3 username];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v14 = [WeakRetained completion];
    (v14)[2](v14, 0, 2, v13);
  }

LABEL_9:
}

void sub_79594(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error from copying signing or encryption identities: %{public}@", buf, 0xCu);
}

void sub_79750(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error while load DNS records %@", &v2, 0xCu);
}

void sub_797C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "error while deleting email from server %@", &v2, 0xCu);
}

void sub_79840(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "domain connect url not present. domain info %@", buf, 0xCu);
}

void sub_79920(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to upgrade account to HSA with error: %@", &v2, 0xCu);
}