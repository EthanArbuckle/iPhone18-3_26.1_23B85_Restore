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
  v6[2] = sub_1338;
  v6[3] = &unk_C388;
  v3 = v2;
  v7 = v3;
  v4 = [v1 ef_compactMap:v6];
  if (![v4 count])
  {

    v4 = 0;
  }

  return v4;
}

id sub_1338(uint64_t a1, void *a2)
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

void sub_1424(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_371C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_38B4(void *a1, void *a2)
{
  v3 = MSResultsKeyDateSent;
  v4 = [a1 objectForKey:MSResultsKeyDateSent];
  v5 = [a2 objectForKey:v3];
  v6 = [v4 compare:v5];
  if (v6 == &dword_0 + 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == -1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

BOOL sub_3A60(id a1, SAPersonAttribute *a2)
{
  v2 = [(SAPersonAttribute *)a2 data];
  v3 = [[ECEmailAddress alloc] initWithString:v2];
  v4 = v3 == 0;

  return v4;
}

void sub_3F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v26 = v25;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3F64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3F7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 copy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 ef_publicDescription];
      sub_4CC8(v11, v12, v10);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id MFConversationReferenceFromHash(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSString stringWithFormat:@"%@://conversation/%lld", EMAppleMailURLScheme, a1];
    v2 = [NSURL URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MFDocumentReferenceFromDocumentID(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSURLComponents);
  [v2 setScheme:EMAppleMailURLScheme];
  [v2 setHost:@"document"];
  v3 = [NSString stringWithFormat:@"/%@", v1];
  [v2 setPath:v3];

  v4 = [v2 URL];

  return v4;
}

void sub_42E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_446C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_478C(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = qword_11018;
  qword_11018 = v1;
}

void sub_4CC8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to send email: %{public}@", buf, 0xCu);
}