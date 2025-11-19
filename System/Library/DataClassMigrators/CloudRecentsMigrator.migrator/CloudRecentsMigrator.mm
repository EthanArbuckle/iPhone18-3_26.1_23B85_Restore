void sub_E04(id a1)
{
  qword_8550 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Mail/ABRecents.csv"];

  _objc_release_x1();
}

void sub_10B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v19 = v17;

  _Unwind_Resume(a1);
}

void sub_1118(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count] == &dword_4)
  {
    v5 = [v4 objectAtIndex:2];
    if ([*(a1 + 32) containsObject:v5])
    {
      v6 = [v4 objectAtIndex:0];
      [v6 doubleValue];
      v8 = v7;

      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v8];
      v10 = [v4 objectAtIndex:1];
      v11 = [v4 objectAtIndex:3];
      v12 = [v11 emailAddressValue];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 simpleAddress];
        v15 = [CRRecentContactsLibrary recentEventForAddress:v14 displayName:v10 kind:CRAddressKindEmail date:v9 weight:0 metadata:0 options:0];

        if (v15)
        {
          v16 = *(a1 + 40);
          v18 = v15;
          v17 = [NSArray arrayWithObjects:&v18 count:1];
          [v16 recordContactEvents:v17 recentsDomain:@"com.apple.mobilemail" sendingAddress:0 source:@"com.apple.mobilemail" userInitiated:0];
        }
      }
    }
  }
}

void sub_14B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CRCSVParser;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "error during csv parsing: %@", &v2, 0xCu);
}