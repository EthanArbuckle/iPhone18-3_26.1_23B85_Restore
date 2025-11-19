void sub_1000012F0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100011E98;
  qword_100011E98 = v1;
}

void sub_100001454(uint64_t a1)
{
  v2 = [*(a1 + 32) daemonInterface];
  v3 = [v2 accountRepository];
  v7 = [v3 receivingAccounts];

  v4 = [v7 ef_map:&stru_10000C3E0];
  v5 = *(a1 + 40);
  v6 = [[INObjectCollection alloc] initWithItems:v4];
  (*(v5 + 16))(v5, v6, 0);
}

MFIntentAccount *__cdecl sub_100001560(id a1, EMReceivingAccount *a2)
{
  v2 = a2;
  v3 = [(EMReceivingAccount *)v2 objectID];
  v4 = [v3 serializedRepresentation];
  v5 = [v4 base64EncodedStringWithOptions:0];

  v6 = [MFIntentAccount alloc];
  v7 = [(EMReceivingAccount *)v2 name];
  v8 = [(MFIntentAccount *)v6 initWithIdentifier:v5 displayString:v7];

  [(MFIntentAccount *)v8 setSerializedRepresentation:v5];

  return v8;
}

void sub_10000171C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100001794(id a1)
{
  qword_100011EA8 = [EFScheduler globalAsyncSchedulerWithQualityOfService:25];

  _objc_release_x1();
}

void sub_1000018E4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100011EB8;
  qword_100011EB8 = v1;
}

void sub_100001A08(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_100011EC8;
  qword_100011EC8 = v1;
}

void sub_100001DFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[GetMailboxIntentHandler log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v20 = [v5 count];
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetch mailboxes returned %lu mailboxes:\n%{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) daemonInterface];
    v9 = [v8 vipManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002030;
    v15[3] = &unk_10000C4F0;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    [v9 getAllVIPsWithCompletion:v15];
  }

  else
  {
    v13 = +[GetMailboxIntentHandler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 ef_publicDescription];
      sub_100006A70(v14, buf, v13);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100002030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[GetMailboxIntentHandler log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 ef_publicDescription];
      sub_100006AC8(v8, v18, v7);
    }
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = [*(a1 + 32) ef_groupByObject:&stru_10000C488];
  v11 = [*(a1 + 32) ef_filter:&stru_10000C4C8];
  v12 = [INObjectSection alloc];
  v13 = [*(a1 + 40) _smartMailboxesWithInboxes:v11 hasVIPs:{objc_msgSend(v5, "count") != 0}];
  v14 = [v12 initWithTitle:&stru_10000C818 items:v13];

  [v9 addObject:v14];
  v15 = [*(a1 + 40) _convertMailboxesIntoSections:v10];
  [v9 addObjectsFromArray:v15];

  v16 = *(a1 + 48);
  v17 = [[INObjectCollection alloc] initWithSections:v9];
  (*(v16 + 16))(v16, v17, 0);
}

EMReceivingAccount *__cdecl sub_100002284(id a1, EMMailbox *a2)
{
  v2 = [(EMMailbox *)a2 account];

  return v2;
}

NSString *__cdecl sub_100002F6C(id a1, EMMailbox *a2)
{
  v2 = [(EMMailbox *)a2 objectID];
  v3 = [v2 serializedRepresentation];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

int64_t sub_10000312C(id a1, EMAccount *a2, EMAccount *a3)
{
  v4 = a3;
  v5 = [(EMAccount *)a2 name];
  v6 = [(EMAccount *)v4 name];
  v7 = [v5 localizedStandardCompare:v6];

  return v7;
}

void sub_10000319C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1000031C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if ([v4 count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000331C;
    v10[3] = &unk_10000C5C0;
    v10[4] = *(a1 + 40);
    v5 = [v4 ef_compactMap:v10];
    v6 = [INObjectSection alloc];
    v7 = [v3 name];
    v8 = [v6 initWithTitle:v7 items:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_10000331C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _intentMailboxFromMailbox:a2];

  return v2;
}

void sub_100003B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

id sub_100003BD0(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003CB4;
  v6[3] = &unk_10000C610;
  v7 = *(a1 + 32);
  v3 = [a2 ef_map:v6];
  v4 = [v3 ef_filter:EFIsNotNull];

  return v4;
}

id sub_100003CB4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transformedValue:a2];

  return v2;
}

void sub_100003D88(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100011ED8;
  qword_100011ED8 = v1;
}

int64_t sub_100004590(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = MSResultsKeyDateSent;
  v6 = [(NSDictionary *)a2 objectForKeyedSubscript:MSResultsKeyDateSent];
  v7 = [(NSDictionary *)v4 objectForKeyedSubscript:v5];
  v8 = [v6 compare:v7];

  return v8;
}

void sub_100004614(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

MSIntentMail *__cdecl sub_1000047BC(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[MSIntentMail alloc] initWithDictionary:v2];

  return v3;
}

void sub_100004948(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100011EE8;
  qword_100011EE8 = v1;
}

void sub_100004B40(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100011EF8;
  qword_100011EF8 = v1;
}

void sub_100004EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

NSArray *__cdecl sub_100004EF0(id a1, MFMailAccountProxy *a2)
{
  v2 = [(MFMailAccountProxy *)a2 emailAddresses];

  return v2;
}

void sub_100005124(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_100005188(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _resolutionResultForPerson:a2];

  return v2;
}

void sub_100005324(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_10000537C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _resolutionResultForPerson:a2];

  return v2;
}

void sub_100005518(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_100005570(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _resolutionResultForPerson:a2];

  return v2;
}

void sub_100005A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v24 = v23;

  _Unwind_Resume(a1);
}

void sub_100005B0C(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = [[MSSendMailIntentResponse alloc] initWithCode:4 userActivity:0];
  }

  else
  {
    v6 = [[MSSendMailIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  (*(v5 + 16))(v5, v6);
}

void sub_100005BE4(uint64_t a1, int a2, int a3, void *a4)
{
  v9 = a4;
  v7 = *(a1 + 32);
  if (a2)
  {
    if (a3)
    {
      v8 = [[MSSendMailIntentResponse alloc] initWithCode:100 userActivity:0];
    }

    else
    {
      v8 = [[MSSendMailIntentResponse alloc] initWithCode:4 userActivity:0];
    }

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v8 = [[MSSendMailIntentResponse alloc] initWithCode:5 userActivity:0];
    (*(v7 + 16))(v7, v8);
  }
}

void sub_100005E34(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id sub_100005FB4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) reverseTransformedValue:a2];

  return v2;
}

void sub_1000060AC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

MFMessageFileWrapper *__cdecl sub_100006580(id a1, INFile *a2)
{
  v2 = a2;
  v3 = [MFMessageFileWrapper alloc];
  v4 = [(INFile *)v2 data];
  v5 = [v3 initRegularFileWithContents:v4];

  v6 = [(INFile *)v2 filename];
  [v5 setPreferredFilename:v6];

  return v5;
}

void sub_100006618(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100006A70(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Fetch mailboxes failed with error: %{public}@", buf, 0xCu);
}

void sub_100006AC8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to fetch VIPs: %{public}@", buf, 0xCu);
}