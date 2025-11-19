id getPHPhotoLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHPhotoLibraryClass_softClass;
  v7 = getPHPhotoLibraryClass_softClass;
  if (!getPHPhotoLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPHPhotoLibraryClass_block_invoke;
    v3[3] = &unk_1E806CA38;
    v3[4] = &v4;
    __getPHPhotoLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BE81C750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _idealDisplayName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    if (v6 >= 3 && [v5 characterAtIndex:0] == 60)
    {
      v7 = [v5 characterAtIndex:v6 - 1];
      v8 = v7 == 62;
      if (v7 == 62)
      {
        v6 -= 2;
      }
    }

    else
    {
      v8 = 0;
    }

    if (![v5 compare:v3 options:9 range:{v8, v6}])
    {

      v5 = 0;
    }
  }

  return v5;
}

id MFPreferredAbbreviatedNameForAddressAndDisplayName(const void *a1, void *a2, void *a3, CFTypeRef *a4)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = _idealDisplayName(v7, v8);

  if (a1)
  {
    if ([v7 length])
    {
      v10 = [v7 emailAddressValue];

      if (v10)
      {
        v30[0] = v7;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        v12 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName(a1, v11, *MEMORY[0x1E698A340], v9);

        if (v12)
        {
          goto LABEL_9;
        }

        v13 = [v9 ec_personNameComponents];
        v14 = [v13 givenName];
        if (v14)
        {
        }

        else
        {
          v15 = [v13 familyName];
          v16 = v15 == 0;

          if (v16)
          {

            goto LABEL_17;
          }
        }

        v12 = ABPersonCreate();
        v17 = [v13 namePrefix];
        ABRecordSetValue(v12, *MEMORY[0x1E698A580], v17, 0);

        v18 = [v13 givenName];
        ABRecordSetValue(v12, *MEMORY[0x1E698A380], v18, 0);

        v19 = [v13 middleName];
        ABRecordSetValue(v12, *MEMORY[0x1E698A4B0], v19, 0);

        v20 = [v13 familyName];
        ABRecordSetValue(v12, *MEMORY[0x1E698A478], v20, 0);

        v21 = [v13 nameSuffix];
        ABRecordSetValue(v12, *MEMORY[0x1E698A628], v21, 0);

        if (v12)
        {
LABEL_9:
          v22 = ABPersonCopyPreferredLinkedPersonForName();
          if (!v22)
          {
            v22 = CFRetain(v12);
          }

          v23 = ABPersonCopyShortName();
          if (v23 || (v23 = ABPersonCopyCompositeName()) != 0)
          {

            v9 = v23;
          }

          if (a4)
          {
            *a4 = CFRetain(v22);
          }

          CFRelease(v12);
          CFRelease(v22);
        }
      }
    }
  }

LABEL_17:
  v24 = v7;
  if (v9 && (v25 = [v9 containsString:@"@"], v24 = v9, v25) && (v26 = objc_msgSend(v9, "isEqualToString:", v7), v24 = v9, (v26 & 1) == 0))
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v9, v7];
  }

  else
  {
    v27 = v24;
  }

  v28 = v27;

  return v28;
}

uint64_t MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName(const void *a1, void *a2, int a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v23 = a4;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_27;
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v24;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v34;
  v10 = *MEMORY[0x1E698A340];
  v25 = *MEMORY[0x1E698A548];
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(obj);
      }

      if (v10 == a3)
      {
        v31 = 0;
        cf = 0;
        v12 = ABAddressBookCopyArrayOfUIDsMatchingEmailAddress();
        if (!v12)
        {
          continue;
        }
      }

      else
      {
        if (v25 != a3)
        {
          continue;
        }

        v12 = ABAddressBookCopyArrayOfUIDsMatchingPhoneNumberWithCountryAndHint();
        if (!v12)
        {
          continue;
        }
      }

      Count = CFArrayGetCount(v12);
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, j);
          PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a1, ValueAtIndex);
          if (PersonWithRecordID)
          {
            [v7 addObject:PersonWithRecordID];
          }
        }
      }

      CFRelease(v12);
    }

    v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v8);
LABEL_20:

  if ([v7 count] == 1)
  {
    v17 = [v7 anyObject];
  }

  else if ([v7 count])
  {
    v18 = [v23 ec_personNameComponents];
    v19 = objc_alloc_init(_MFCountableMatchesContext);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName_block_invoke;
    v27[3] = &unk_1E806C598;
    v28 = v7;
    v20 = v18;
    v29 = v20;
    v30 = v23;
    [(_MFCountableMatchesContext *)v19 countInstances:v28 usingPredicate:v27];
    v21 = [(_MFCountableMatchesContext *)v19 highestMatches];
    v17 = [v21 anyObject];
  }

  else
  {
    v17 = 0;
  }

LABEL_27:
  return v17;
}

id _MFPreferredCompositeNameForPerson(const void *a1, CFTypeRef *a2)
{
  v4 = ABPersonCopyPreferredLinkedPersonForName();
  if (!v4)
  {
    v4 = CFRetain(a1);
  }

  if (!ABPersonGetShortNamePreferNicknames() || (v5 = ABRecordCopyValue(v4, *MEMORY[0x1E698A4C8])) == 0)
  {
    v5 = ABPersonCopyCompositeName();
    if (!v5)
    {
      v6 = 0;
      if (!a2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v6 = v5;
  if (a2)
  {
LABEL_9:
    *a2 = CFRetain(v4);
  }

LABEL_10:
  CFRelease(v4);

  return v6;
}

uint64_t __MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName_block_invoke(id *a1, const void *a2)
{
  v4 = [a1[4] countForObject:a2];
  v5 = *MEMORY[0x1E698A580];
  v6 = [a1[5] namePrefix];
  HasPrefix = _personPropertyHasPrefix(a2, v5, v6);

  v8 = *MEMORY[0x1E698A380];
  v9 = [a1[5] givenName];
  v10 = _personPropertyHasPrefix(a2, v8, v9);

  v11 = *MEMORY[0x1E698A4B0];
  v12 = [a1[5] middleName];
  v13 = _personPropertyHasPrefix(a2, v11, v12);

  v14 = *MEMORY[0x1E698A478];
  v15 = [a1[5] familyName];
  v16 = _personPropertyHasPrefix(a2, v14, v15);

  v17 = *MEMORY[0x1E698A628];
  v18 = [a1[5] nameSuffix];
  v19 = _personPropertyHasPrefix(a2, v17, v18);

  return v4 + HasPrefix + v10 + v13 + v16 + v19 + _personPropertyHasPrefix(a2, *MEMORY[0x1E698A4E0], a1[6]);
}

uint64_t _personPropertyHasPrefix(const void *a1, ABPropertyID a2, void *a3)
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = ABRecordCopyValue(a1, a2);
    v7 = [v6 hasPrefix:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1BE81D998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _MFCountableMatchesContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id MFPreferredCompositeNameForAddressAndDisplayName(const void *a1, void *a2, void *a3, CFTypeRef *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = _idealDisplayName(v7, v8);

  if (a1 && [v7 length] && (objc_msgSend(v7, "emailAddressValue"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10) && (v23[0] = v7, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v23, 1), v11 = objc_claimAutoreleasedReturnValue(), v12 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName(a1, v11, *MEMORY[0x1E698A340], v9), v11, v12))
  {
    v13 = _MFPreferredCompositeNameForPerson(v12, a4);
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    v16 = v15;

    CFRelease(v12);
  }

  else
  {
    v16 = v9;
  }

  v17 = v7;
  if (v16 && (v18 = [v16 containsString:@"@"], v17 = v16, v18) && (v19 = objc_msgSend(v16, "isEqualToString:", v7), v17 = v16, (v19 & 1) == 0))
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v16, v7];
  }

  else
  {
    v20 = v17;
  }

  v21 = v20;

  return v21;
}

double MFIntegralRectToViewScale(void *a1)
{
  v1 = a1;
  UIRoundToViewScale();
  v3 = v2;
  UIRoundToViewScale();

  return v3;
}

NSString *MFUIContentSizeCategoryMin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (UIContentSizeCategoryCompareToCategory(v3, v4) == NSOrderedAscending)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

void __bundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = bundle_bundle;
  bundle_bundle = v0;
}

void MFInitializeAddressBookConstants()
{
  if (MFInitializeAddressBookConstants_onceToken != -1)
  {
    MFInitializeAddressBookConstants_cold_1();
  }
}

void __MFInitializeAddressBookConstants_block_invoke()
{
  v0 = ABPersonCreate();

  CFRelease(v0);
}

void sub_1BE81E7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t sub_1BE81E948()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  return swift_deallocObject();
}

void sub_1BE81F56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFComposeActivityHandoffOperation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE821094(_Unwind_Exception *a1)
{
  v8 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8214C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFAddressBookManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE822EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE823CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFAlertOverlayController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE824B48(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE824C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFAtomTextView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE825AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_1BE828BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE829954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE82AB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1BE82BC50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE82C094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE82D06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1BE82D71C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id _MFShowAttachmentMarkup(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<div style=border:1px solid black>%@<div style=background:yellow;><xmp>%@</xmp></div></div>", a1, a1];;

  return v1;
}

uint64_t MFContentTypeIsPlainText(uint64_t a1)
{
  v1 = [MEMORY[0x1E6982C40] typeWithIdentifier:a1];
  if ([v1 conformsToType:*MEMORY[0x1E6983020]])
  {
    v2 = [v1 conformsToType:*MEMORY[0x1E6982E18]] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1BE830A9C(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_1BE8317B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BE831928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFWebKitMainThread;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *__getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuickLookLibrary();
  result = dlsym(v2, "QLTypeCopyUTIForURLAndMimeType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *QuickLookLibrary()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __QuickLookLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/Frameworks/QuickLook.framework/QuickLook";
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = QuickLookLibraryCore_frameworkLibrary;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFAttachment+Utilities.m" lineNumber:47 description:{@"%s", v4[0]}];

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

uint64_t __QuickLookLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getQLPreviewControllerSupportsContentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuickLookLibrary();
  result = dlsym(v2, "QLPreviewControllerSupportsContentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQLPreviewControllerSupportsContentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _DataConsumerPutBytesCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v7 = [v5 appendData:v6];
  v8 = v7 & ~(v7 >> 63);

  return v8;
}

Class __getPKPassClass_block_invoke(uint64_t a1)
{
  v7[9] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!PassKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __PassKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/Frameworks/PassKit.framework/PassKit";
    PassKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PassKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PassKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFAttachment+Utilities.m" lineNumber:43 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PKPass");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKPassClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFAttachment+Utilities.m" lineNumber:44 description:{@"Unable to find class %s", "PKPass"}];

LABEL_10:
    __break(1u);
  }

  getPKPassClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_1BE83231C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8329BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class __getPKPassViewClass_block_invoke(uint64_t a1)
{
  v7[9] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __PassKitUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/PassKitUI.framework/PassKitUI";
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PassKitUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFAttachmentImageGenerator.m" lineNumber:24 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PKPassView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKPassViewClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFAttachmentImageGenerator.m" lineNumber:25 description:{@"Unable to find class %s", "PKPassView"}];

LABEL_10:
    __break(1u);
  }

  getPKPassViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BE833304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE8333E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE833554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE833C60(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE833D84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE833FCC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE834258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE83492C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFAutocompleteResultsTableViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE835318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE835500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE835658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE835AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE835C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_1BE836FB8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE837DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 32; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE838834(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id MFCSSLinkColor()
{
  v0 = [MEMORY[0x1E69DC888] systemBlueColor];
  v1 = MFCSSColorFromUIColor(v0);

  return v1;
}

id MFCSSColorFromUIColor(void *a1)
{
  v1 = a1;
  v6 = NAN;
  v7 = NAN;
  v4 = -1;
  v5 = NAN;
  [v1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%d, %d, %d, %f)", (v7 * 255.0), (v6 * 255.0), (v5 * 255.0), v4];

  return v2;
}

id MFUserStyleSheetDictionary(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v53 = [MEMORY[0x1E695DF90] dictionary];
  v52 = [MEMORY[0x1E695DF90] dictionary];
  v1 = [MEMORY[0x1E69DC888] mailQuoteColorLevelOne];
  v2 = [MEMORY[0x1E69DC888] mailQuoteColorLevelTwo];
  v3 = [MEMORY[0x1E69DC888] mailQuoteColorLevelThree];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    block = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __QuotingColorList_block_invoke;
    v67 = &unk_1E806CC80;
    v68 = v1;
    v69 = v2;
    v70 = v3;
    if (QuotingColorList_onceToken != -1)
    {
      dispatch_once(&QuotingColorList_onceToken, &block);
    }

    v4 = &QuotingColorList_darkerQuotingColorCSS;
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __QuotingColorList_block_invoke_2;
    v67 = &unk_1E806CC80;
    v68 = v1;
    v69 = v2;
    v70 = v3;
    if (QuotingColorList_onceToken_566 != -1)
    {
      dispatch_once(&QuotingColorList_onceToken_566, &block);
    }

    v4 = &QuotingColorList_defaultQuotingColorCSS;
  }

  v56 = *v4;

  v54 = [v56 count];
  v58 = [MEMORY[0x1E695DF90] dictionary];
  if (v54)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v55 = [MEMORY[0x1E696AD60] string];
      v7 = v6;
      do
      {
        [v55 appendString:@"BLOCKQUOTE "];
        --v7;
      }

      while (v7);
      [v58 setObject:&unk_1F3D16200 forKeyedSubscript:v55];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v8 = [&unk_1F3D16778 countByEnumeratingWithState:&v60 objects:v87 count:16];
      if (v8)
      {
        v57 = *v61;
        do
        {
          v59 = v8;
          for (i = 0; i != v59; ++i)
          {
            if (*v61 != v57)
            {
              objc_enumerationMutation(&unk_1F3D16778);
            }

            v10 = *(*(&v60 + 1) + 8 * i);
            v11 = [MEMORY[0x1E696AD60] string];
            v12 = 0;
            do
            {
              if (v12 >= v5)
              {
                [v11 appendFormat:@"BLOCKQUOTE[%@] ", v10];
              }

              else
              {
                [v11 appendString:@"BLOCKQUOTE "];
              }

              ++v12;
            }

            while (v6 != v12);
            v13 = [v56 objectAtIndex:v5];
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"1.0px solid %@ !important", v13];
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ !important", v13];
            v85[0] = @"color";
            v85[1] = @"border-left";
            v86[0] = v15;
            v86[1] = v14;
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
            [v58 setObject:v16 forKeyedSubscript:v11];
          }

          v8 = [&unk_1F3D16778 countByEnumeratingWithState:&v60 objects:v87 count:16];
        }

        while (v8);
      }

      ++v5;
      ++v6;
    }

    while (v5 != v54);
  }

  [v53 addEntriesFromDictionary:v58];
  [v52 addEntriesFromDictionary:&unk_1F3D16368];
  [v53 setObject:&unk_1F3D16390 forKeyedSubscript:@"HTML"];
  [v53 setObject:&unk_1F3D163B8 forKeyedSubscript:@"._AppleShowQuotedContentButton"];
  [v53 setObject:&unk_1F3D163E0 forKeyedSubscript:@"._AppleShowQuotedContentButton .button"];
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  if (a1 <= 2)
  {
    if ((a1 - 1) < 2)
    {
      if (a1 == 2)
      {
        v77 = @"color-scheme";
        v78 = @"light dark";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        [v53 setObject:v20 forKeyedSubscript:@":root:not(.testing-dark-mode)"];

        v75 = @"background-color";
        v76 = @"-apple-system-tertiary-background";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        [v53 setObject:v21 forKeyedSubscript:@":root"];
      }

      else
      {
        [v53 setObject:&unk_1F3D16520 forKeyedSubscript:@":root"];
      }

      [v52 addEntriesFromDictionary:&unk_1F3D165C0];
      v39 = 0.0;
      v40 = 0.0;
      v41 = 0.0;
      if (a1 != 2)
      {
        v42 = [MEMORY[0x1E69DC938] mf_isPadIdiom];
        v39 = 6.0;
        if (v42)
        {
          v39 = 10.0;
          v41 = 20.0;
        }

        else
        {
          v41 = 16.0;
        }

        v40 = 5.0;
      }

      v73[0] = @"padding-top";
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", *&v39];
      v74[0] = v43;
      v73[1] = @"padding-left";
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", *&v41];
      v74[1] = v44;
      v73[2] = @"padding-right";
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", *&v41];
      v74[2] = v45;
      v73[3] = @"padding-bottom";
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", *&v40];
      v74[3] = v46;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:4];

      [v17 addEntriesFromDictionary:v33];
      [v17 addEntriesFromDictionary:&unk_1F3D165E8];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IMG.%@, img:-apple-has-attachment", 0x1F3CF38B8];
      [v53 setObject:&unk_1F3D16610 forKeyedSubscript:v35];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", @"x-apple-drop-placeholder"];
      [v53 setObject:&unk_1F3D16638 forKeyedSubscript:v36];
LABEL_43:

      goto LABEL_45;
    }

    if (a1)
    {
      goto LABEL_45;
    }

LABEL_33:
    v83 = @"color-scheme";
    v84 = @"light dark";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    [v53 setObject:v22 forKeyedSubscript:@":root:not(.testing-dark-mode)"];

    v81 = @"background-color";
    v82 = @"-apple-system-tertiary-background";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    [v53 setObject:v23 forKeyedSubscript:@":root"];

    [v19 _bodyLeading];
    v25 = v24;
    [v19 lineHeight];
    v27 = v26;
    [v19 leading];
    v80[0] = @"0";
    v79[0] = @"margin";
    v79[1] = @"padding-top";
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", round(-(v27 - v28 - v25 * 1.45454545))];
    v80[1] = v29;
    v79[2] = @"padding-left";
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", 0x4030000000000000];
    v80[2] = v30;
    v79[3] = @"padding-right";
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", 0x4030000000000000];
    v80[3] = v31;
    v79[4] = @"padding-bottom";
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fpx", 0x4035000000000000];
    v80[4] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:5];

    [v17 addEntriesFromDictionary:v33];
    v34 = *MEMORY[0x1E699A788];
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", *MEMORY[0x1E699A788]];
    [v53 setObject:&unk_1F3D16430 forKeyedSubscript:v35];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BLOCKQUOTE .%@", v34];
    [v53 setObject:&unk_1F3D16458 forKeyedSubscript:v36];
    [v53 setObject:&unk_1F3D16480 forKeyedSubscript:@".x-apple-edge-to-edge"];
    [v53 setObject:&unk_1F3D164A8 forKeyedSubscript:@".x-apple-edge-to-edge + .x-apple-edge-to-edge"];
    [v53 setObject:&unk_1F3D164D0 forKeyedSubscript:@".x-apple-wide-margin-edge-to-edge"];
    [v53 setObject:&unk_1F3D164F8 forKeyedSubscript:@".x-apple-wide-margin-edge-to-edge + .x-apple-wide-margin-edge-to-edge"];
    [v18 setObject:@"3px" forKeyedSubscript:@"margin"];
    [v18 setObject:@"inline-block" forKeyedSubscript:@"display"];
    v37 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [v53 setObject:v37 forKeyedSubscript:@"*"];
    [v37 setObject:@"initial !important" forKeyedSubscript:@"-webkit-user-modify"];
    v38 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    LODWORD(v32) = UIContentSizeCategoryIsAccessibilityCategory(v38);

    if (v32)
    {
      [v37 setObject:@"initial !important" forKeyedSubscript:@"-webkit-text-size-adjust"];
    }

    goto LABEL_43;
  }

  if (a1 == 3)
  {
    [v53 setObject:&unk_1F3D16408 forKeyedSubscript:@"*"];
    [v17 setObject:@"8px 0 0 0" forKeyedSubscript:@"padding"];
    [v17 setObject:@"0" forKeyedSubscript:@"margin"];
  }

  else if (a1 == 4)
  {
    goto LABEL_33;
  }

LABEL_45:
  [v53 setObject:v52 forKeyedSubscript:@"@media (prefers-color-scheme: dark)"];
  [v17 setObject:@"break-word" forKeyedSubscript:@"word-wrap"];
  [v17 setObject:@"break-word" forKeyedSubscript:@"word-break"];
  if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
  {
    v47 = @"-apple-system-tall-body";
  }

  else
  {
    v47 = @"-apple-system-body";
  }

  [v17 setObject:v47 forKeyedSubscript:@"font"];
  [v53 setObject:v17 forKeyedSubscript:@"BODY"];
  [v53 setObject:v18 forKeyedSubscript:@"ATTACHMENT"];
  v71[0] = @"color";
  v48 = MFCSSLinkColor();
  v71[1] = @"word-break";
  v72[0] = v48;
  v72[1] = @"break-word";
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
  [v53 setObject:v49 forKeyedSubscript:@"A"];

  if (a1 != 1)
  {
    [v53 setObject:&unk_1F3D16660 forKeyedSubscript:@":root.apple-mail-light-only:not(.testing-dark-mode)"];
    [v53 setObject:&unk_1F3D16688 forKeyedSubscript:@":root.apple-mail-implicit-dark-support:not(.testing-dark-mode)"];
    [v53 setObject:&unk_1F3D166B0 forKeyedSubscript:{@"HTML, BODY"}];
  }

  [v53 setObject:&unk_1F3D166D8 forKeyedSubscript:@"TABLE"];
  [v53 setObject:&unk_1F3D16700 forKeyedSubscript:@"PRE"];

  return v53;
}

id MFUserStyleSheetCSS(uint64_t a1)
{
  v1 = MFUserStyleSheetDictionary(a1);
  v2 = MFCSSStringFromDictionary(v1);

  return v2;
}

id MFCSSStringFromDictionary(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MFCSSStringFromDictionary_block_invoke;
  v5[3] = &unk_1E806CC58;
  v3 = v2;
  v6 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void __MFCSSStringFromDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v7 = MFCSSStringFromDictionary(v5);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ { %@ }", v8, v7];

    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_6:
    [*(a1 + 32) appendFormat:@"%@\n", v6];
    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ ", v8, v5];;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_8:
}

void __QuotingColorList_block_invoke(void **a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = RGBColorCSSStringFromUIColor(a1[4]);
  v7[0] = v2;
  v3 = RGBColorCSSStringFromUIColor(a1[5]);
  v7[1] = v3;
  v4 = RGBColorCSSStringFromUIColor(a1[6]);
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v6 = QuotingColorList_darkerQuotingColorCSS;
  QuotingColorList_darkerQuotingColorCSS = v5;
}

void sub_1BE83B19C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id RGBColorCSSStringFromUIColor(void *a1)
{
  v1 = a1;
  Components = CGColorGetComponents([v1 CGColor]);
  v3 = "contentIdentifierPrefix";
  LODWORD(v3) = llround(*Components * 255.0);
  LODWORD(v4) = llround(Components[1] * 255.0);
  LODWORD(v5) = llround(Components[2] * 255.0);
  LODWORD(v6) = llround(Components[3] * 255.0);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%hhu, %hhu, %hhu, %hhu)", v3, v4, v5, v6];

  return v7;
}

void __QuotingColorList_block_invoke_2(void **a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = RGBColorCSSStringFromUIColor(a1[4]);
  v7[0] = v2;
  v3 = RGBColorCSSStringFromUIColor(a1[5]);
  v7[1] = v3;
  v4 = RGBColorCSSStringFromUIColor(a1[6]);
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v6 = QuotingColorList_defaultQuotingColorCSS;
  QuotingColorList_defaultQuotingColorCSS = v5;
}

void sub_1BE83B354(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE83CBEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE83D970(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE83E30C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE83E4B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE83E868(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE83F2A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8409E8(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE841FA4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE843020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE843104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE84396C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE843A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id _ef_log_MFComposePhotoPickerController()
{
  if (_ef_log_MFComposePhotoPickerController_onceToken != -1)
  {
    _ef_log_MFComposePhotoPickerController_cold_1();
  }

  v1 = _ef_log_MFComposePhotoPickerController_log;

  return v1;
}

void sub_1BE843F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BE84492C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v24 = v23;

  _Unwind_Resume(a1);
}

void sub_1BE844A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1BE845520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v24 = v23;

  _Unwind_Resume(a1);
}

void __getPHPickerConfigurationClass_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPickerConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHPickerConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFComposePhotoPickerController.m" lineNumber:24 description:{@"Unable to find class %s", "PHPickerConfiguration"}];

    __break(1u);
  }
}

void PhotosUILibrary()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotosUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/Frameworks/PhotosUI.framework/PhotosUI";
    PhotosUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosUILibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFComposePhotoPickerController.m" lineNumber:21 description:{@"%s", v3[0]}];

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

uint64_t __PhotosUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getPHPickerViewControllerClass_block_invoke(uint64_t a1)
{
  PhotosUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPickerViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHPickerViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFComposePhotoPickerController.m" lineNumber:23 description:{@"Unable to find class %s", "PHPickerViewController"}];

    __break(1u);
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1BE845E34(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE847840(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t _fastCountOfCompleteMatches(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v26 = v4;
  v29 = v5;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v24 = [v4 componentsSeparatedByCharactersInSet:v6];

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v24;
    v30 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v30)
    {
      v28 = *v39;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v38 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v32 = v29;
          v8 = [v32 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v8)
          {
            v9 = *v35;
LABEL_9:
            v10 = 0;
            while (1)
            {
              if (*v35 != v9)
              {
                objc_enumerationMutation(v32);
              }

              v11 = *(*(&v34 + 1) + 8 * v10);
              if ([v33 count] == 1)
              {
                break;
              }

              v12 = [v11 address];
              v13 = [v11 displayString];
              v14 = [v13 ea_personNameComponents];
              v15 = [v14 givenName];

              if (v15 && ([v14 givenName], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeOfString:options:", v7, 1), v16, !v17) || (objc_msgSend(v14, "familyName"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18) && (objc_msgSend(v14, "familyName"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "rangeOfString:options:", v7, 1), v19, !v20) || v12 && !objc_msgSend(v12, "rangeOfString:options:", v7, 1))
              {
                [v33 addObject:v11];
              }

              if (v8 == ++v10)
              {
                v8 = [v32 countByEnumeratingWithState:&v34 objects:v42 count:16];
                if (v8)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v30);
    }

    v21 = v33;
    *a3 = v33;
    v22 = [v33 count];
  }

  else
  {
    v22 = [v5 count];
  }

  return v22;
}

id _sortedArrayByRelevancy(void *a1, void *a2, void *a3, void *a4)
{
  v59 = a4;
  v95 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v61 = v5;
  v65 = v6;
  if (![v5 length])
  {
    v47 = v6;
    *a3 = v6;
    *v59 = MEMORY[0x1E695E0F0];
    v48 = v6;
    goto LABEL_56;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = MEMORY[0x1E6964DF0];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = ___sortedArrayByRelevancy_block_invoke;
  v80[3] = &unk_1E806CF98;
  v62 = v7;
  v81 = v62;
  [v8 enumerateTokensForString:v5 locale:0 options:0 withHandler:v80];
  v72 = [MEMORY[0x1E695DF70] array];
  __base = malloc_type_calloc(0x18uLL, [v6 count], 0x22667F99uLL);
  v66 = 0;
LABEL_3:
  if (v66 < [v6 count])
  {
    v64 = [v6 objectAtIndex:?];
    v69 = [v64 displayString];
    v70 = [v64 address];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v62;
    v9 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
    if (!v9)
    {
      v75 = 0;
      v10 = -1;
      goto LABEL_48;
    }

    v75 = 0;
    v68 = *v77;
    v10 = -1;
    while (1)
    {
      v11 = 0;
      v71 = v9;
      do
      {
        if (*v77 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * v11);
        v13 = v70;
        v14 = v12;
        v74 = v10;
        if (!v70)
        {
          v17 = 0;
LABEL_14:

          v73 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:

          goto LABEL_16;
        }

        v16 = [v13 rangeOfString:v14 options:385];
        v17 = v16 == 0;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_14;
        }

        v18 = v15;

        if (v16 - v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v73 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_16;
        }

        v73 = v16 - v18 + 15;
        if (!v16)
        {
          v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13];
          [v13 addAttribute:@"MFComposeRecipientStringMatchType" value:@"MFComposeRecipientStringMatchAddress" range:{0, v18}];
          [v72 addObject:v13];
          v17 = 1;
          v75 = 1;
          goto LABEL_15;
        }

        v17 = 0;
        v75 |= v16 == 0;
LABEL_16:
        v19 = v69;
        v20 = v14;
        if ([v20 length])
        {
          v21 = [MEMORY[0x1E695DF70] array];
          v22 = [MEMORY[0x1E695DF70] array];
          v90 = 0;
          v91 = &v90;
          v92 = 0x2020000000;
          v93 = 0;
          v89[0] = 0;
          v89[1] = v89;
          v89[2] = 0x2020000000;
          v89[3] = 0;
          v23 = MEMORY[0x1E6964DF0];
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = ___getDisplayNameMatches_block_invoke;
          v82[3] = &unk_1E806CFC0;
          v83 = v20;
          v24 = v21;
          v84 = v24;
          v87 = &v90;
          v88 = v89;
          v25 = v19;
          v85 = v25;
          v26 = v22;
          v86 = v26;
          [v23 enumerateTokensForString:v25 locale:0 options:0 withHandler:v82];
          v17 = *(v91 + 24);
          v27 = v24;
          v28 = v86;
          v29 = v26;

          _Block_object_dispose(v89, 8);
          _Block_object_dispose(&v90, 8);
        }

        else
        {
          v29 = MEMORY[0x1E695E0F0];
          v24 = MEMORY[0x1E695E0F0];
        }

        v30 = v24;
        [v72 addObjectsFromArray:v29];
        v31 = [v30 count];
        if (v31 && ([v30 objectAtIndex:0], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "integerValue"), v32, v33 != 0x7FFFFFFFFFFFFFFFLL))
        {
          v34 = v33 + 5;
        }

        else
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v31 < 2)
        {
          v40 = 0;
        }

        else if (v31 - 2 < 2)
        {
          v40 = 10;
        }

        else
        {
          v35 = 0;
          v36 = 3 - v31;
          v37 = 1;
          do
          {
            v38 = [v30 objectAtIndex:v37];
            v39 = [v38 integerValue];

            v35 += v39;
            ++v37;
          }

          while (v36 + v37 != 1);
          if (v35 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v40 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v35 + 10;
          }
        }

        v41 = [v30 lastObject];
        v42 = [v41 integerValue];

        if (v34 >= v40)
        {
          v43 = v40;
        }

        else
        {
          v43 = v34;
        }

        if (v43 >= v42)
        {
          v43 = v42;
        }

        if (v43 >= v73)
        {
          v44 = v73;
        }

        else
        {
          v44 = v43;
        }

        v75 = v17 | v75 & 1;
        v10 = v44 + v74;
        ++v11;
      }

      while (v11 != v71);
      v45 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
      v9 = v45;
      if (!v45)
      {
LABEL_48:

        v46 = &__base[24 * v66];
        *v46 = v10;
        *(v46 + 1) = v66;
        v46[16] = v75;

        v6 = v65;
        ++v66;
        goto LABEL_3;
      }
    }
  }

  qsort(__base, [v6 count], 0x18uLL, _relevancyComparator);
  v49 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v50 = 0;
  v51 = __base + 16;
  while (v50 < [v6 count])
  {
    v52 = *(v51 - 1);
    v53 = *v51;
    v54 = [v65 objectAtIndex:v52];
    [v48 setObject:v54 atIndexedSubscript:v50];

    if (v53)
    {
      v55 = [v65 objectAtIndex:v52];
      [v49 addObject:v55];
    }

    ++v50;
    v51 += 24;
    v6 = v65;
  }

  free(__base);
  v56 = v49;
  *a3 = v49;
  v57 = v72;
  *v59 = v72;

  v6 = v65;
LABEL_56:

  return v48;
}

void sub_1BE848AF8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8495C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___sortedArrayByRelevancy_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithString:a2];
  [*(a1 + 32) addObject:?];
}

uint64_t _relevancyComparator(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void ___getDisplayNameMatches_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v21 = @"MFComposeRecipientStringMatchFirstName";
  v22 = @"MFComposeRecipientStringMatchMiddleName";
  v23 = @"MFComposeRecipientStringMatchLastName";
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = v8;
  if (v9)
  {
    v11 = [v9 rangeOfString:v10 options:{385, v21, v22, v23, v24}];
    v13 = v11;
    v14 = v12;
    v15 = v11 == 0;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v11 - v12;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  v17 = *(a1 + 40);
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
  [v17 addObject:v18];

  *(*(*(a1 + 64) + 8) + 24) |= v15;
  if (v15)
  {
    if (*(*(*(a1 + 72) + 8) + 24) && a3 + a4 >= [*(a1 + 48) length])
    {
      *(*(*(a1 + 72) + 8) + 24) = 2;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9];
    [v19 addAttribute:@"MFComposeRecipientStringMatchType" value:*(&v21 + *(*(*(a1 + 72) + 8) + 24)) range:{v13, v14}];
    [*(a1 + 56) addObject:v19];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  for (i = 16; i != -8; i -= 8)
  {
  }
}

void sub_1BE84AF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE84B0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFComposeRecipientTextView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE84B2B4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE84BC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BE84CB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE84D444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE84D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE84DBA0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE84EAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE8506F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BE850D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE852078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE852EF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE853770(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE853A08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE855188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE856114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFComposeRecipientView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE858E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE85AB58(_Unwind_Exception *a1)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE85B57C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE85E9F8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE85EED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE860388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id cleanupSubjectString(void *a1, BOOL *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:v4];
  v6 = v5 != 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v3 componentsSeparatedByCharactersInSet:v4];
    v8 = [v7 componentsJoinedByString:@" "];

    v3 = v8;
  }

  if (a2)
  {
    *a2 = v6;
  }

  return v3;
}

void sub_1BE860F74(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE861024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFComposeSubjectView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8613B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE8614AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8617F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BE862574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1BE8667C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

id _subjectWithPrefix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E699B338] subjectWithoutPrefixForSubject:v3];

  if (v5)
  {
    if ([v5 hasPrefix:v4])
    {
      v6 = v5;
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
    }

    v9 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NO_SUBJECT" value:&stru_1F3CF3758 table:@"Main"];
    v9 = [v4 stringByAppendingString:v8];
  }

  return v9;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE86A5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE86B684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE86C094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BE86C78C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v9 - 144));

  _Unwind_Resume(a1);
}

void sub_1BE86DDD8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE86EE98(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE86F3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id plainTextDocumentFromStringsAndQuoteLevels(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = objc_alloc_init(MEMORY[0x1E69B1678]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v11;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:{16, v11}];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count] == 2)
        {
          v8 = [v7 objectAtIndexedSubscript:0];
          v9 = [v7 objectAtIndexedSubscript:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && (!a2 || [v9 intValue] <= 0))
            {
              [v12 appendString:v8 withQuoteLevel:{objc_msgSend(v9, "intValue")}];
            }
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v12;
}

void sub_1BE870CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1BE87156C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak((v23 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE871CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_1BE871EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1BE872384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BE873714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1BE874A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v42 + 32));

  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);

  objc_destroyWeak((v44 - 144));
  objc_destroyWeak((v44 - 136));

  _Unwind_Resume(a1);
}

void sub_1BE874F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE8750C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE875230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8753AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE875DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE875F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE876138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE8763DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE876E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE87933C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1BE87C460(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE87C868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE87CAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE87F084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFContactsSearchManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFArray *_CopySortedArrayWithValues(CFComparisonResult (__cdecl *a1)(const void *, const void *, void *), const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v14 = &a9;
  if (a2)
  {
    do
    {
      CFArrayAppendValue(Mutable, a2);
      v12 = v14++;
      a2 = *v12;
    }

    while (*v12);
  }

  if (a1)
  {
    v15.length = CFArrayGetCount(Mutable);
    v15.location = 0;
    CFArraySortValues(Mutable, v15, a1, 0);
  }

  return Mutable;
}

void sub_1BE87F444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFContactsSearchResultsModel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _filterOutExistingRecipientsFromResults(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v24 = a1;
  v26 = a2;
  if ([v26 count])
  {
    v25 = [v24 mutableCopy];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v24;
    v3 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v3)
    {
      v4 = *v37;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v37 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v36 + 1) + 8 * i);
          if ([v6 isGroup])
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v7 = v26;
            v8 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v8)
            {
              v9 = *v33;
              while (2)
              {
                for (j = 0; j != v8; ++j)
                {
                  if (*v33 != v9)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v11 = *(*(&v32 + 1) + 8 * j);
                  v12 = [v6 children];
                  LOBYTE(v11) = [v12 containsObject:v11];

                  if ((v11 & 1) == 0)
                  {

                    [v25 removeObject:v6];
                    goto LABEL_18;
                  }
                }

                v8 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
                if (v8)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:
            v13 = [v6 children];
            v14 = [v13 count];
            v15 = v14 - [v7 count] == 1;

            if (v15)
            {
              v16 = [v6 children];
              v17 = [v16 mutableCopy];

              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              v18 = v7;
              v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v19)
              {
                v20 = *v29;
                do
                {
                  for (k = 0; k != v19; ++k)
                  {
                    if (*v29 != v20)
                    {
                      objc_enumerationMutation(v18);
                    }

                    [v17 removeObject:*(*(&v28 + 1) + 8 * k)];
                  }

                  v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
                }

                while (v19);
              }

              if ([v17 count] == 1)
              {
                [v25 removeObject:v6];
                v22 = [v17 objectAtIndex:0];
                if ([v22 wasCompleteMatch])
                {
                  [v25 insertObject:v22 atIndex:0];
                }
              }
            }
          }
        }

        v3 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v3);
    }
  }

  else
  {
    v25 = v24;
  }

  return v25;
}

void addEntriesForRecipientsIfNotInDictionary(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isGroup])
        {
          [v12 address];
        }

        else
        {
          [v12 normalizedAddress];
        }
        v13 = ;
        if (!v13)
        {
          __assert_rtn("addEntriesForRecipientsIfNotInDictionary", "MFContactsSearchResultsModel.m", 165, "address != nil");
        }

        v14 = [v6 objectForKey:v13];
        v15 = v14 == 0;

        if (v15)
        {
          [v7 setObject:v12 forKey:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

uint64_t _shouldCancel(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 _isResetting])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isCancelled];
  }

  return v5;
}

void sub_1BE8811E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1BE881388(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1BE881680(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE881FDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8833CC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE883E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, void *a63)
{
  objc_destroyWeak(&a69);

  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x258]);

  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak(&STACK[0x2A8]);

  objc_destroyWeak((v75 - 192));
  objc_destroyWeak((v75 - 184));

  _Unwind_Resume(a1);
}

void sub_1BE884308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE8843DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE8847D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE8852C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE8854F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE8856D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BE88593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BE886CC0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE887DE8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE888340(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE888DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE889318(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE889618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFEMMessageStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE88B090(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

uint64_t MFSolariumFeatureEnabled()
{
  if (MFSolariumFeatureEnabled_onceToken != -1)
  {
    MFSolariumFeatureEnabled_cold_1();
  }

  return MFSolariumFeatureEnabled_isFeatureEnabled;
}

void __MFSolariumFeatureEnabled_block_invoke()
{
  if (_UISolariumEnabled())
  {
    v0 = [MEMORY[0x1E699B7B0] currentDevice];
    MFSolariumFeatureEnabled_isFeatureEnabled = [v0 isRealityDevice] ^ 1;
  }

  else
  {
    MFSolariumFeatureEnabled_isFeatureEnabled = 0;
  }
}

void sub_1BE88B898(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE88BF6C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

BOOL MFMarginIsGenerous(double a1)
{
  if (MFSolariumFeatureEnabled())
  {
    return a1 > 31.0;
  }

  else
  {
    return a1 > 30.0;
  }
}

void sub_1BE88D068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFHardwareJPEGScaler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE88D4A8(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void _serverSocketConnectCallback(uint64_t a1, uint64_t a2, uint64_t a3, CFSocketNativeHandle *a4, uint64_t a5)
{
  v6 = *a4;
  writeStream = 0xAAAAAAAAAAAAAAAALL;
  readStream = 0xAAAAAAAAAAAAAAAALL;
  CFStreamCreatePairWithSocket(*MEMORY[0x1E695E480], v6, &readStream, &writeStream);
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_INFO, "#Hand-Off [LAN] LAN server connection established", v8, 2u);
  }

  (*(*(a5 + 32) + 16))();
  CFRelease(readStream);
  CFRelease(writeStream);
}

void sub_1BE88ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _MFMailAccountProxySource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE88F384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE890F70(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8910A0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE8911D0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE892488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BE892DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = MFMailComposeController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE893BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BE894704(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8950A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE89A5B0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id getQLPreviewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getQLPreviewControllerClass_softClass;
  v7 = getQLPreviewControllerClass_softClass;
  if (!getQLPreviewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getQLPreviewControllerClass_block_invoke;
    v3[3] = &unk_1E806CA38;
    v3[4] = &v4;
    __getQLPreviewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BE89B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE89CA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE89CB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE89D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE89D19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE89E7B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE89F7A0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8A108C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8A1344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE8A2AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _MFAutosaveLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = MFLogGeneral();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1BE819000, v13, OS_LOG_TYPE_INFO, "** [AutoSave] %@", buf, 0xCu);
    }
  }
}

void sub_1BE8A3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  _Block_object_dispose((v25 - 160), 8);

  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE8A47A8(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8A4AD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1BE8A73DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1BE8A7954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1BE8A87D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, id location)
{
  objc_destroyWeak((v25 + 64));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8A8D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, id location)
{
  objc_destroyWeak((v24 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8AB9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);

  _Unwind_Resume(a1);
}

void sub_1BE8AC518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  _Block_object_dispose((v30 - 152), 8);

  _Unwind_Resume(a1);
}

id getCloudSharingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCloudSharingClass_softClass;
  v7 = getCloudSharingClass_softClass;
  if (!getCloudSharingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCloudSharingClass_block_invoke;
    v3[3] = &unk_1E806CA38;
    v3[4] = &v4;
    __getCloudSharingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BE8AC784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE8ADDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1BE8AF2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26)
{
  objc_destroyWeak((v32 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8AF484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v16 + 48));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_1BE8AF578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_1BE8B0FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE8B170C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1BE8B38DC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8B7DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE8BB6CC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE8BBD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE8BC83C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8BC934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE8BDF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BE8BE6DC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8BEE1C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE8BFFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v39 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8C02F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1BE8C0994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BE8C0EB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8C1640(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8C247C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8C26A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8C280C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v16 + 48));

  _Unwind_Resume(a1);
}

void sub_1BE8C2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  v21 = v19;

  objc_destroyWeak((v20 + 64));
  _Unwind_Resume(a1);
}

void sub_1BE8C30E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8C334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak((v15 - 40));

  _Unwind_Resume(a1);
}

void __getQLItemClass_block_invoke(uint64_t a1)
{
  QuickLookLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getQLItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMailComposeController.m" lineNumber:147 description:{@"Unable to find class %s", "QLItem"}];

    __break(1u);
  }
}

void QuickLookLibrary_0()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __QuickLookLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/Frameworks/QuickLook.framework/QuickLook";
    QuickLookLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary_0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFMailComposeController.m" lineNumber:146 description:{@"%s", v3[0]}];

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

uint64_t __QuickLookLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  QuickLookLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLPreviewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMailComposeController.m" lineNumber:151 description:{@"Unable to find class %s", "QLPreviewController"}];

    __break(1u);
  }
}

void __getQLDismissActionClass_block_invoke(uint64_t a1)
{
  QuickLookLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLDismissAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getQLDismissActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLDismissActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMailComposeController.m" lineNumber:150 description:{@"Unable to find class %s", "QLDismissAction"}];

    __break(1u);
  }
}

Class __getCloudSharingClass_block_invoke(uint64_t a1)
{
  v7[9] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CloudSharingLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CloudSharingLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/CloudSharing.framework/CloudSharing";
    CloudSharingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudSharingLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudSharingLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFMailComposeController.m" lineNumber:154 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CloudSharing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCloudSharingClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFMailComposeController.m" lineNumber:155 description:{@"Unable to find class %s", "CloudSharing"}];

LABEL_10:
    __break(1u);
  }

  getCloudSharingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudSharingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudSharingLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2048;
  *(a3 + 14) = a2;
  return result;
}

void sub_1BE8C5AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMailComposeInternalViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8C7A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

void sub_1BE8C8454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1BE8C9BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1BE8CAEF0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8CB308(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8CC764(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8CC800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFMailComposeRecipientTextView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8CDE6C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8CE604(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8CEA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE8CEB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMailComposeToField;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8CFCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8CFE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFMailComposeView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _layoutField(void *a1, void *a2, double *a3, double a4, CGFloat Height)
{
  v8 = a1;
  v9 = a2;
  v13 = v8;
  [v13 alpha];
  if (v10 == 0.0)
  {
  }

  else
  {
    v11 = [v13 superview];

    if (v11)
    {
      v12 = v13;
      if (v9 != v13)
      {
        [v13 frame];
        Height = CGRectGetHeight(v15);
        v12 = v13;
      }

      a3[3] = Height;
      [v12 setFrame:{*a3, a3[1], a3[2], Height}];
      [v13 frame];
      a3[1] = CGRectGetMaxY(v16);
    }
  }
}

void sub_1BE8D5108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, void *a25)
{
  _Block_object_dispose((v30 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t MFMailComposeResultMake(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

void sub_1BE8DA104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE8DA1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE8DA384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE8DA434(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8DA6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  objc_destroyWeak(v26);

  objc_destroyWeak((v28 - 56));
  _Unwind_Resume(a1);
}

void sub_1BE8DA880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v19 + 48));

  _Unwind_Resume(a1);
}

void getSWCopyRepresentationTypeIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr;
  v9 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr;
  if (!getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr)
  {
    v1 = SharedWithYouCoreLibrary();
    v7[3] = dlsym(v1, "SWCopyRepresentationTypeIdentifier");
    getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr = v7[3];
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSWCopyRepresentationTypeIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFMailComposeViewController.m" lineNumber:50 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1BE8DABAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE8DAE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  _Block_object_dispose((v23 - 112), 8);

  objc_destroyWeak((v22 + 64));
  _Unwind_Resume(a1);
}

void sub_1BE8DB044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15)
{
  objc_destroyWeak((v18 + 56));

  _Unwind_Resume(a1);
}

void sub_1BE8DC088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getSWCopyRepresentationTypeIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary();
  result = dlsym(v2, "SWCopyRepresentationTypeIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SharedWithYouCoreLibrary()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharedWithYouCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/Frameworks/SharedWithYouCore.framework/SharedWithYouCore";
    SharedWithYouCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SharedWithYouCoreLibraryCore_frameworkLibrary;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFMailComposeViewController.m" lineNumber:49 description:{@"%s", v4[0]}];

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

uint64_t __SharedWithYouCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SharedWithYouCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSWCollaborationMetadataForDocumentURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary();
  result = dlsym(v2, "SWCollaborationMetadataForDocumentURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _ArrayContainsKindOfObjects(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ArrayContainsKindOfObjects_block_invoke;
    v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v6[4] = a2;
    v4 = [v3 ef_all:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BE8DCD20(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE8DE4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  objc_destroyWeak((v25 + 32));

  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v26 - 88));

  _Unwind_Resume(a1);
}

void sub_1BE8DE7FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8DEAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  objc_destroyWeak((v22 + 40));

  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 - 104));

  _Unwind_Resume(a1);
}

void sub_1BE8DEEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(v30);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8DF8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _MFMailCompositionContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8DFFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1BE8E252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

void sub_1BE8E6EC0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8E707C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8E7F5C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8E8730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFMailPopoverManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8E8E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v16 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE8EA16C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8EA340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void ___imageConversionScheduler_block_invoke()
{
  v0 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.Mail.MFMediaExporter.imageConversionScheduler" qualityOfService:25];
  v1 = _imageConversionScheduler_sInstance;
  _imageConversionScheduler_sInstance = v0;
}

void sub_1BE8EC46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1BE8EC8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE8ECD4C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void getSWCopyRepresentationTypeIdentifier_0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr_0;
  v9 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr_0;
  if (!getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr_0)
  {
    v1 = SharedWithYouCoreLibrary_0();
    v7[3] = dlsym(v1, "SWCopyRepresentationTypeIdentifier");
    getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr_0 = v7[3];
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSWCopyRepresentationTypeIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFMessageComposeViewController.m" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1BE8EDDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE8EE068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE8EED48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  _Block_object_dispose((v20 - 160), 8);

  _Block_object_dispose((v20 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1BE8EFF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BE8F0524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMessageComposeViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8F1364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BE8F1C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void _MFMessageSentCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v6 = getIMMessageSentDistributedNotificationUserInfoMessageGUIDKeySymbolLoc_ptr;
  v29 = getIMMessageSentDistributedNotificationUserInfoMessageGUIDKeySymbolLoc_ptr;
  if (!getIMMessageSentDistributedNotificationUserInfoMessageGUIDKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getIMMessageSentDistributedNotificationUserInfoMessageGUIDKeySymbolLoc_block_invoke;
    v31 = &unk_1E806CA38;
    v32 = &v26;
    v7 = IMSharedUtilitiesLibrary();
    v8 = dlsym(v7, "IMMessageSentDistributedNotificationUserInfoMessageGUIDKey");
    *(v32[1] + 24) = v8;
    getIMMessageSentDistributedNotificationUserInfoMessageGUIDKeySymbolLoc_ptr = *(v32[1] + 24);
    v6 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIMMessageSentDistributedNotificationUserInfoMessageGUIDKey(void)"];
    [v19 handleFailureInFunction:v20 file:@"MFMessageComposeViewController.m" lineNumber:89 description:{@"%s", dlerror()}];

    goto LABEL_12;
  }

  v9 = *v6;
  v10 = [v5 objectForKeyedSubscript:v9];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v11 = getIMMessageSentDistributedNotificationUserInfoSucessKeySymbolLoc_ptr;
  v29 = getIMMessageSentDistributedNotificationUserInfoSucessKeySymbolLoc_ptr;
  if (!getIMMessageSentDistributedNotificationUserInfoSucessKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getIMMessageSentDistributedNotificationUserInfoSucessKeySymbolLoc_block_invoke;
    v31 = &unk_1E806CA38;
    v32 = &v26;
    v12 = IMSharedUtilitiesLibrary();
    v13 = dlsym(v12, "IMMessageSentDistributedNotificationUserInfoSucessKey");
    *(v32[1] + 24) = v13;
    getIMMessageSentDistributedNotificationUserInfoSucessKeySymbolLoc_ptr = *(v32[1] + 24);
    v11 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIMMessageSentDistributedNotificationUserInfoSucessKey(void)"];
    [v21 handleFailureInFunction:v22 file:@"MFMessageComposeViewController.m" lineNumber:91 description:{@"%s", dlerror()}];

LABEL_12:
    __break(1u);
  }

  v14 = *v11;
  v15 = [v5 objectForKeyedSubscript:v14];
  v16 = [v15 BOOLValue];

  v17 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v16;
    _os_log_impl(&dword_1BE819000, v17, OS_LOG_TYPE_DEFAULT, "UPISupport _MFMessageSentCallback %@ %d", buf, 0x12u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MFMessageSentCallback_block_invoke;
  block[3] = &unk_1E806CDA8;
  v24 = v10;
  v25 = v16;
  v18 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1BE8F201C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *__getIMSPIShareSheetCanSendMediaSymbolLoc_block_invoke(void *a1)
{
  v5[9] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IMCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v5[7] = 0;
    v5[8] = 0;
    v5[6] = "/System/Library/PrivateFrameworks/IMCore.framework/IMCore";
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = IMCoreLibraryCore_frameworkLibrary;
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMCoreLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"MFMessageComposeViewController.m" lineNumber:66 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "IMSPIShareSheetCanSendMedia");
  *(*(a1[4] + 8) + 24) = result;
  getIMSPIShareSheetCanSendMediaSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSWCopyRepresentationTypeIdentifierSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary_0();
  result = dlsym(v2, "SWCopyRepresentationTypeIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SharedWithYouCoreLibrary_0()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharedWithYouCoreLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/Frameworks/SharedWithYouCore.framework/SharedWithYouCore";
    SharedWithYouCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SharedWithYouCoreLibraryCore_frameworkLibrary_0;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFMessageComposeViewController.m" lineNumber:53 description:{@"%s", v4[0]}];

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

uint64_t __SharedWithYouCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SharedWithYouCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getIMMessageSentDistributedNotificationUserInfoMessageGUIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMMessageSentDistributedNotificationUserInfoMessageGUIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMMessageSentDistributedNotificationUserInfoMessageGUIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IMSharedUtilitiesLibrary()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IMSharedUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/IMSharedUtilities.framework/IMSharedUtilities";
    IMSharedUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IMSharedUtilitiesLibraryCore_frameworkLibrary;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMSharedUtilitiesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFMessageComposeViewController.m" lineNumber:86 description:{@"%s", v4[0]}];

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

uint64_t __IMSharedUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMSharedUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIMMessageSentDistributedNotificationUserInfoSucessKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMMessageSentDistributedNotificationUserInfoSucessKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMMessageSentDistributedNotificationUserInfoSucessKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMMessageSentDistributedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMMessageSentDistributedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMMessageSentDistributedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BE8F2F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMessageContentLoadingView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8F3B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMessageContentProgressLayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8F4020(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void sub_1BE8F44D0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1BE8F456C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMessageURLProtocol;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8F47B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v27 = v24;
  objc_destroyWeak((v26 + 32));

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE8F525C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  objc_destroyWeak((v40 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE8F5784(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE8F6048(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8F681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFModernAddressAtom;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE8F7A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE8F7C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE8F7D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

double _drawingOffsetForPresentationOption(uint64_t a1, uint64_t a2)
{
  result = *MEMORY[0x1E695EFF8];
  v3 = &qword_1BE985910;
  v4 = 3;
  while (*(v3 - 2) != a1 || v3[1] > a2)
  {
    v3 += 4;
    if (!--v4)
    {
      return result;
    }
  }

  return 0.0;
}

id MFAtomViewIconImageForPresentationOption(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  v35 = v7;
  if (!MFAtomViewIconImageForPresentationOption_accessoryIconCache)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = MFAtomViewIconImageForPresentationOption_accessoryIconCache;
    MFAtomViewIconImageForPresentationOption_accessoryIconCache = v8;
  }

  if (a1 <= 2047)
  {
    if (a1 == 16)
    {
      v10 = 0.8;
LABEL_15:
      v11 = [MEMORY[0x1E69DC888] colorWithWhite:v10 alpha:1.0];
      if (!v11)
      {
        v11 = v7;
      }

      goto LABEL_17;
    }

    if (a1 != 1024)
    {
      goto LABEL_10;
    }

LABEL_9:
    v10 = 0.5;
    goto LABEL_15;
  }

  if (a1 == 4096 || a1 == 2048)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = v7;
  if (a1 != 0x2000)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v12 = @"small";
  if (a4)
  {
    v12 = @"large";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v12, @"downtime"];
  v14 = _MFAtomViewIconImageVariantNameForGlyphType(v13, a3);

  v15 = v14;
LABEL_18:
  v16 = v11;
  v17 = [MEMORY[0x1E696AD60] string];
  Components = CGColorGetComponents([v16 CGColor]);
  for (i = CGColorGetNumberOfComponents([v16 CGColor]); i; --i)
  {
    [v17 appendFormat:@"%f.", *Components++];
  }

  v20 = [v15 stringByAppendingFormat:@"_%@", v17];

  v21 = [MFAtomViewIconImageForPresentationOption_accessoryIconCache objectForKey:v20];
  if (!v21)
  {
    v22 = MEMORY[0x1E69DCAB8];
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [v22 imageNamed:v15 inBundle:v23];

    if (v24)
    {
      if (v16)
      {
        v25 = [v24 _flatImageWithColor:v16];

        v24 = v25;
      }

      v26 = [MFAtomIcon alloc];
      v27 = [v24 CGImage];
      [v24 scale];
      v29 = -[MFAtomIcon initWithCGImage:scale:orientation:](v26, "initWithCGImage:scale:orientation:", v27, [v24 imageOrientation], v28);
      v21 = v29;
      v30 = *MEMORY[0x1E695EFF8];
      v31 = *(MEMORY[0x1E695EFF8] + 8);
      v32 = &qword_1BE985910;
      v33 = 3;
      while (*(v32 - 2) != a1 || v32[1] > a3)
      {
        v32 += 4;
        if (!--v33)
        {
          goto LABEL_31;
        }
      }

      v31 = *v32;
      v30 = 0.0;
LABEL_31:
      [(MFAtomIcon *)v29 setDrawingOffset:v30, v31];
      [MFAtomViewIconImageForPresentationOption_accessoryIconCache setObject:v21 forKey:v20];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

id _MFAtomViewIconImageVariantNameForGlyphType(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = @"XS";
  v9 = @"S";
  v10 = @"M";
  v11 = @"L";
  v12 = @"XL";
  v13 = @"XXL";
  v14 = @"XXXL";
  v3 = 6;
  if (a2 < 6)
  {
    v3 = a2;
  }

  v4 = *(&v8 + v3);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@.png", v4, a1, v8, v9, v10, v11, v12, v13, v14, v15];
  for (i = 48; i != -8; i -= 8)
  {
  }

  return v5;
}

void sub_1BE8F9A98(_Unwind_Exception *a1)
{
  for (i = 48; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE8FAF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, char a10)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1BE8FC2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE8FC4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE8FC7A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8FD57C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE8FD790(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE8FDEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFModernLabelledAtomList;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE9002F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48)
{
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v50 - 224), 8);
  _Block_object_dispose((v50 - 160), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MFModernUIContentSizeCategoryOrdering()
{
  v8[12] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC88];
  v8[0] = *MEMORY[0x1E69DDC68];
  v8[1] = v0;
  v1 = *MEMORY[0x1E69DDC70];
  v8[2] = *MEMORY[0x1E69DDC78];
  v8[3] = v1;
  v2 = *MEMORY[0x1E69DDC58];
  v8[4] = *MEMORY[0x1E69DDC60];
  v8[5] = v2;
  v3 = *MEMORY[0x1E69DDC40];
  v8[6] = *MEMORY[0x1E69DDC50];
  v8[7] = v3;
  v4 = *MEMORY[0x1E69DDC30];
  v8[8] = *MEMORY[0x1E69DDC38];
  v8[9] = v4;
  v5 = *MEMORY[0x1E69DDC20];
  v8[10] = *MEMORY[0x1E69DDC28];
  v8[11] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:12];

  return v6;
}

id MFModernUIApplicationPreferredContentSizeCode()
{
  v0 = MFModernUIContentSizeCategoryOrdering();
  v1 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  for (i = 0; i != 6; ++i)
  {
    v4 = [v0 objectAtIndex:i];
    v5 = [v4 isEqualToString:v2];

    if (v5)
    {
      break;
    }
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:MFModernUIApplicationPreferredContentSizeCode_contentSizeCodes[i]];

  return v6;
}

BOOL MFModernUIApplicationPreferredContentSizeIsLargerThanLarge()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = MFModernUIContentSizeCategoryOrdering();
  v3 = [v2 indexOfObject:v1];
  v4 = v3 > [v2 indexOfObject:*MEMORY[0x1E69DDC70]];

  return v4;
}

BOOL MFModernUIApplicationPreferredContentSizeIsAccessibility()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = MFModernUIContentSizeCategoryOrdering();
  v3 = [v2 indexOfObject:v1];
  v4 = v3 >= [v2 indexOfObject:*MEMORY[0x1E69DDC40]];

  return v4;
}

uint64_t MFCameraRollSaveAssetWithURL(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 path];
  IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(v4);

  v6 = [getPHPhotoLibraryClass() sharedPhotoLibrary];
  if (IsCompatibleWithSavedPhotosAlbum)
  {
    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __MFCameraRollSaveAssetWithURL_block_invoke;
    v12[3] = &unk_1E806C570;
    v12[4] = v3;
    v8 = [v6 performChangesAndWait:v12 error:a2];
  }

  else
  {
    v7 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __MFCameraRollSaveAssetWithURL_block_invoke_2;
    v11[3] = &unk_1E806C570;
    v11[4] = v3;
    v8 = [v6 performChangesAndWait:v11 error:a2];
  }

  v9 = v8;

  return v9;
}

id getPHAssetChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetChangeRequestClass_softClass;
  v7 = getPHAssetChangeRequestClass_softClass;
  if (!getPHAssetChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetChangeRequestClass_block_invoke;
    v3[3] = &unk_1E806CA38;
    v3[4] = &v4;
    __getPHAssetChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BE901528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MFCameraRollSaveImage(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [getPHPhotoLibraryClass() sharedPhotoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MFCameraRollSaveImage_block_invoke;
  v8[3] = &unk_1E806C570;
  v5 = v3;
  v9 = v5;
  v6 = [v4 performChangesAndWait:v8 error:a2];

  return v6;
}

void __getPHPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPhotoLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHPhotoLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFPhotoLibraryUtilities.m" lineNumber:20 description:{@"Unable to find class %s", "PHPhotoLibrary"}];

    __break(1u);
  }
}

void PhotosLibrary()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotosLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/Frameworks/Photos.framework/Photos";
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFPhotoLibraryUtilities.m" lineNumber:19 description:{@"%s", v3[0]}];

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

uint64_t __PhotosLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPHAssetChangeRequestClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAssetChangeRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetChangeRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFPhotoLibraryUtilities.m" lineNumber:21 description:{@"Unable to find class %s", "PHAssetChangeRequest"}];

    __break(1u);
  }
}

void sub_1BE903B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1BE903D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_1BE904BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_1BE904D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_1BE904E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_1BE904F24(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1BE904FD8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1BE905098(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1BE9051C4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1BE9055E8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id _plaintextDocumentForMimePart(void *a1)
{
  v1 = a1;
  if ([v1 approximateRawSize])
  {
    v2 = [v1 copyBodyDataToOffset:-1 resultOffset:0 downloadIfNecessary:1];
    v3 = MFCreateStringWithData();
    v4 = objc_alloc_init(MEMORY[0x1E69B1678]);
    [v4 appendString:v3 withQuoteLevel:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BE908050(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE9086AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BE908C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BE908DF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BE909360(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE9093F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFProgressView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE90A230(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE90A350(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t MFABPropertyForRecentsKind(void *a1)
{
  v1 = a1;
  MFInitializeAddressBookConstants();
  if ([*MEMORY[0x1E6998F48] isEqualToString:v1])
  {
    v2 = *MEMORY[0x1E698A340];
  }

  else if ([*MEMORY[0x1E6998F60] isEqualToString:v1])
  {
    v2 = *MEMORY[0x1E698A548];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MFRecentsKindForABProperty(int a1)
{
  MFInitializeAddressBookConstants();
  if (*MEMORY[0x1E698A340] == a1)
  {
    v2 = MEMORY[0x1E6998F48];
LABEL_5:
    v3 = *v2;
    goto LABEL_7;
  }

  if (*MEMORY[0x1E698A548] == a1)
  {
    v2 = MEMORY[0x1E6998F60];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void sub_1BE90A6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _MFCRRecentContactABContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _MFPhoneNumbersEqualCallback(void *a1, void *a2)
{
  [a1 UTF8String];
  [a2 UTF8String];
  v3 = CPPhoneNumberCopyHomeCountryCode();
  v4 = CPPhoneNumbersEqual();
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void sub_1BE90B8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *a42)
{
  _Block_object_dispose((v47 - 152), 8);

  _Unwind_Resume(a1);
}

id MFLocalizedAddressSeparator()
{
  if (MFLocalizedAddressSeparator_onceToken != -1)
  {
    MFLocalizedAddressSeparator_cold_1();
  }

  v1 = MFLocalizedAddressSeparator___result;

  return v1;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE90C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MFLocalizedAddressSeparator_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v3 localizedStringForKey:@"ADDRESS_SEPARATOR" value:&stru_1F3CF3758 table:@"Main"];
  v1 = [v0 copy];
  v2 = MFLocalizedAddressSeparator___result;
  MFLocalizedAddressSeparator___result = v1;
}

id _displayNameForRecipient(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 displayString];
  if (v4 && a2)
  {
    v5 = +[MFAddressBookManager sharedManager];
    v6 = [v5 addressBook];

    v7 = [v3 address];
    v8 = MFPreferredAbbreviatedNameForAddressAndDisplayName(v6, v7, v4, 0);
  }

  else
  {
    v8 = [v3 displayString];
    v7 = v4;
  }

  return v8;
}

void sub_1BE90E124(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE90FA34(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE90FB20(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE90FE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE90FF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE910370(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE9106A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _baseDetailAttributes()
{
  v0 = +[_MFTableCellAttributesCache sharedInstance];
  v1 = [v0 cachedAttributesForIdentifier:@"detailBase" constructionBlock:&__block_literal_global_224];

  return v1;
}

void sub_1BE910A20(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE910F84(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1BE9110D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _MFTableCellAttributesCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id ___baseDetailAttributes_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0 options:0];
  v4[0] = *MEMORY[0x1E69DB648];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];
  v4[1] = @"mf_tintType";
  v5[0] = v1;
  v5[1] = @"mf_ttdimmed";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_1BE911A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFRoundProgressView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BE9148B0(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1BE9163FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE9168C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id EFLocalizedStringWithValue()
{
  v0 = _EFLocalizedString();

  return v0;
}

void sub_1BE9179F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v37 - 136), 8);

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void __getTLAlertConfigurationClass_block_invoke(uint64_t a1)
{
  ToneLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TLAlertConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTLAlertConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTLAlertConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFSoundController.m" lineNumber:38 description:{@"Unable to find class %s", "TLAlertConfiguration"}];

    __break(1u);
  }
}

void ToneLibraryLibrary()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ToneLibraryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/ToneLibrary.framework/ToneLibrary";
    ToneLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ToneLibraryLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFSoundController.m" lineNumber:36 description:{@"%s", v3[0]}];

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

uint64_t __ToneLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ToneLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void __getTLAlertClass_block_invoke(uint64_t a1)
{
  ToneLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TLAlert");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTLAlertClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTLAlertClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFSoundController.m" lineNumber:37 description:{@"Unable to find class %s", "TLAlert"}];

    __break(1u);
  }
}

Class __getFMDFMIPManagerClass_block_invoke(uint64_t a1)
{
  v7[9] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!FindMyDeviceLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __FindMyDeviceLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice";
    FindMyDeviceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FindMyDeviceLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FindMyDeviceLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFSoundController.m" lineNumber:40 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("FMDFMIPManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFMDFMIPManagerClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFSoundController.m" lineNumber:41 description:{@"Unable to find class %s", "FMDFMIPManager"}];

LABEL_10:
    __break(1u);
  }

  getFMDFMIPManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FindMyDeviceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FindMyDeviceLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BE91859C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE918658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1BE918A44(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE918E9C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE919314(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE919A9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE91A1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t MFAddressHasSafeDomain(void *a1)
{
  v1 = a1;
  v2 = [v1 emailAddressValue];
  v3 = [v2 domain];

  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [v4 managedEmailDomains];
  v6 = [v5 ef_map:&__block_literal_global_38];

  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MFAddressHasSafeDomain_block_invoke_2;
    v9[3] = &unk_1E806FE18;
    v10 = v3;
    v7 = [v6 ef_any:v9];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id __MFAddressHasSafeDomain_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 rangeOfString:@"@"];
  v4 = v2;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 substringFromIndex:v3 + 1];
  }

  return v4;
}

unint64_t MFFirstIndexPassingTest(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = MFFirstIndexInRangePassingTest(0, a1 - 1, v3);
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

unint64_t MFFirstIndexInRangePassingTest(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 > a2)
  {
    goto LABEL_2;
  }

  if ((*(v5 + 2))(v5, a1))
  {
    a2 = a1;
    goto LABEL_5;
  }

  if (v6[2](v6, a2))
  {
    while (a1 + 1 < a2)
    {
      if (v6[2](v6, (a2 + a1) >> 1))
      {
        a2 = (a2 + a1) >> 1;
      }

      else
      {
        a1 = (a2 + a1) >> 1;
      }
    }
  }

  else
  {
LABEL_2:
    a2 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_5:

  return a2;
}

uint64_t MFLastIndexPassingTest(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = MFLastIndexInRangePassingTest(0, a1 - 1, v3);
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

uint64_t MFLastIndexInRangePassingTest(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 <= a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __MFLastIndexInRangePassingTest_block_invoke;
    v11[3] = &unk_1E80709F0;
    v12 = v5;
    v8 = MFFirstIndexInRangePassingTest(a1, a2, v11);
    v9 = v8 - 1;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = a2;
    }

    if (v8 == a1)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

uint64_t _CopyCompositionServicesDomain()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B17C8];
  v1 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (!v1)
  {
    v2 = MFLogGeneral();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v0;
      _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "#Warning Unable to find shared resources preference domain for %@", &v4, 0xCu);
    }
  }

  return v1;
}

void sub_1BE91BD30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE91C2A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BE91C884(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BE91CF44(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE91D048(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __MapImageNameNumberAware_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3D167D8];
  v1 = MapImageNameNumberAware_sDigitAwareSet;
  MapImageNameNumberAware_sDigitAwareSet = v0;
}

void sub_1BE91D490(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE91D5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE91D750(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BE91DE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1BE91EA58()
{
  v31 = 0;
  v18 = sub_1BE91EF58;
  v30 = sub_1BE91F750;
  v42 = &v48;
  v48 = 0;
  v41 = &v47;
  v47 = 0;
  v40 = &v45;
  v45 = 0;
  v39 = &v44;
  v44 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6058);
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v11 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v0, v1, v2);
  v29 = &v11 - v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6060);
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v12 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, v3, v4, v5);
  v21 = &v11 - v12;
  v17 = 0;
  v32 = sub_1BE9420CC();
  v22 = *(v32 - 8);
  v23 = v32 - 8;
  v13 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v6, v7, v8);
  v35 = &v11 - v13;
  v9 = sub_1BE91EEE0();
  (*(v14 + 16))(v21, v9, v16);
  v19 = sub_1BE94204C();
  v20 = sub_1BE91F434();
  sub_1BE91F4B4();
  sub_1BE9420DC();
  v36 = sub_1BE94201C();
  v34 = *(v22 + 8);
  v33 = v22 + 8;
  v34(v35, v32);
  sub_1BE94203C();
  v48 = v36;
  v26 = sub_1BE91F6D8();
  v28 = &v46;
  swift_beginAccess();
  (*(v24 + 16))(v29, v26, v27);
  swift_endAccess();
  sub_1BE9420EC();
  v37 = sub_1BE94201C();
  v34(v35, v32);
  sub_1BE94203C();
  v47 = v37;
  v38 = sub_1BE94203C();

  sub_1BE94203C();
  v45 = v38;
  v43 = sub_1BE94202C();

  sub_1BE94203C();
  v44 = v43;
  sub_1BE91F954();
  sub_1BE91F954();
  sub_1BE91F954();
  sub_1BE91F954();
  return v43;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

uint64_t sub_1BE91EEE0()
{
  if (qword_1EBDB6718 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6060);
  return __swift_project_value_buffer(v0, qword_1EBDB7D58);
}

uint64_t sub_1BE91EF58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v27 = a1;
  v56 = 0;
  v46 = sub_1BE941DEC();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v22 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v2, v3, v4);
  v45 = &v22 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6090);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v23 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50, v5, v6, v7);
  v49 = &v22 - v23;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6098);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v24 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33, v8, v9, v10);
  v32 = &v22 - v24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60A0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v25 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38, v11, v12, v13);
  v37 = &v22 - v25;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60A8);
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v26 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v27, v14, v15, v16);
  v53 = &v22 - v26;
  v56 = v17;
  v28 = sub_1BE920938();
  sub_1BE941E0C();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60B0);
  sub_1BE91F640();

  (*(v30 + 8))(v32, v33);
  v34 = swift_getKeyPath();
  sub_1BE9209C0();
  v39 = MEMORY[0x1E69E6530];
  sub_1BE91F640();

  (*(v35 + 8))(v37, v38);
  v55 = 20;
  sub_1BE941DFC();
  (*(v43 + 104))(v45, *MEMORY[0x1E6968C38], v46);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60B8);
  v40[3] = v18;
  v19 = sub_1BE920A48();
  v20 = v40;
  v40[4] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  v42 = sub_1BE920D30();
  sub_1BE920DB8();
  sub_1BE941DDC();
  (*(v43 + 8))(v45, v46);
  (*(v47 + 8))(v49, v50);
  return (*(v51 + 8))(v53, v54);
}

unint64_t sub_1BE91F434()
{
  v2 = qword_1EBDB3278;
  if (!qword_1EBDB3278)
  {
    sub_1BE94204C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE91F4B4()
{
  v2 = qword_1EBDB3280;
  if (!qword_1EBDB3280)
  {
    sub_1BE94204C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3280);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE91F534@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v10 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6060);
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15, v10, v15, v2);
  v16 = &v9 - v11;
  (*(v13 + 16))(&v9 - v11);
  v3 = sub_1BE94211C();
  v4 = v13;
  v5 = v15;
  v6 = v3;
  v7 = v16;
  *v12 = v6;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_1BE91F674@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BE920E40(a1, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60C0);
  *a2 = sub_1BE9423EC();
}

uint64_t sub_1BE91F6D8()
{
  if (qword_1EBDB67A0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6058);
  return __swift_project_value_buffer(v0, qword_1EBDB7D70);
}

uint64_t sub_1BE91F750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  v15 = a1;
  v28 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6078);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v13 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v2, v3, v4);
  v21 = &v13 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6080);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v14 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v15, v5, v6, v7);
  v25 = &v13 - v14;
  v28 = v8;
  v18 = sub_1BE920564();
  sub_1BE941E0C();
  v27 = 1;
  sub_1BE941DFC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6088);
  v16[3] = v9;
  v10 = sub_1BE920660();
  v11 = v16;
  v16[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1BE9208B0();
  sub_1BE941DBC();
  (*(v19 + 8))(v21, v22);
  return (*(v23 + 8))(v25, v26);
}

uint64_t sub_1BE91F980()
{
  v28 = MEMORY[0x1E6982A70];
  v33 = MEMORY[0x1E6982A80];
  v52 = 0;
  v51 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6068);
  v35 = *(v39 - 8);
  v36 = v39 - 8;
  v17 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v0, v1, v2);
  v37 = &v17 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v17, v4, v5, v6);
  v38 = &v17 - v18;
  v52 = &v17 - v18;
  v26 = sub_1BE94209C();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v7, v8, v9);
  v25 = &v17 - v19;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6070);
  v29 = *(v43 - 8);
  v30 = v43 - 8;
  v21 = *(v29 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43, v10, v11, v12);
  v31 = &v17 - v20;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v20, v13, v14, v15);
  v42 = &v17 - v22;
  v51 = &v17 - v22;
  sub_1BE9420AC();
  v27 = MEMORY[0x1E6982AC0];
  MEMORY[0x1BFB49E90](v25, v26);
  (*(v23 + 8))(v25, v26);
  (*(v29 + 16))(v31, v42, v43);
  v49 = v26;
  v50 = v27;
  v34 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB49EB0](v31, v43);
  v45 = *(v29 + 8);
  v44 = v29 + 8;
  v45(v31, v43);
  (*(v35 + 16))(v37, v38, v39);
  v47 = v43;
  v48 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v46 = sub_1BE94206C();
  v41 = *(v35 + 8);
  v40 = v35 + 8;
  v41(v37, v39);
  v41(v38, v39);
  v45(v42, v43);
  return v46;
}

uint64_t sub_1BE91FECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE91EA28();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1BE91FEFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6058);
  __swift_allocate_value_buffer(v1, qword_1EBDB7D70);
  __swift_project_value_buffer(v1, qword_1EBDB7D70);
  sub_1BE94229C();
  sub_1BE94208C();
  sub_1BE94283C();
  return sub_1BE94214C();
}

uint64_t sub_1BE91FFE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE91F6D8();
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6058);
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1BE920070(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6058);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v1, v2, v3);
  v8 = &v5 - v6;
  v7 = sub_1BE91F6D8();
  (*(v10 + 16))(v8, v12, v13);
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1BE9201C4()
{
  sub_1BE91F6D8();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6058);
  sub_1BE94212C();
  swift_endAccess();
  return v1 & 1;
}

uint64_t sub_1BE920240()
{
  sub_1BE91F6D8();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6058);
  sub_1BE94213C();
  return swift_endAccess();
}

uint64_t sub_1BE9202D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6060);
  __swift_allocate_value_buffer(v1, qword_1EBDB7D58);
  __swift_project_value_buffer(v1, qword_1EBDB7D58);
  sub_1BE94229C();
  return sub_1BE94210C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_1BE920440@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE91EEE0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6060);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1BE9204C8()
{
  v2 = qword_1EBDB3268;
  if (!qword_1EBDB3268)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920564()
{
  v2 = qword_1EBDB3288;
  if (!qword_1EBDB3288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3288);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

unint64_t sub_1BE920660()
{
  v2 = qword_1EBDB32E8;
  if (!qword_1EBDB32E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6088);
    sub_1BE920708();
    sub_1BE920790();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920708()
{
  v2 = qword_1EBDB3290;
  if (!qword_1EBDB3290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920790()
{
  v2 = qword_1EBDB32E0;
  if (!qword_1EBDB32E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6078);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_1BE9208B0()
{
  v2 = qword_1EBDB32D8;
  if (!qword_1EBDB32D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6078);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920938()
{
  v2 = qword_1EBDB32A0;
  if (!qword_1EBDB32A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9209C0()
{
  v2 = qword_1EBDB32C0;
  if (!qword_1EBDB32C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB60A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920A48()
{
  v2 = qword_1EBDB32F0;
  if (!qword_1EBDB32F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB60B8);
    sub_1BE920AF0();
    sub_1BE920CA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920AF0()
{
  v2 = qword_1EBDB32A8;
  if (!qword_1EBDB32A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB60A8);
    sub_1BE920B88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920B88()
{
  v2 = qword_1EBDB32B8;
  if (!qword_1EBDB32B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB60A0);
    sub_1BE920C20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920C20()
{
  v2 = qword_1EBDB3298;
  if (!qword_1EBDB3298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920CA8()
{
  v2 = qword_1EBDB32D0;
  if (!qword_1EBDB32D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6090);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920D30()
{
  v2 = qword_1EBDB32B0;
  if (!qword_1EBDB32B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB60A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE920DB8()
{
  v2 = qword_1EBDB32C8;
  if (!qword_1EBDB32C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6090);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB32C8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1BE920E40(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1BE94203C();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t MailSettingsSpecifier.isSelectable.getter()
{
  switch(*v0)
  {
    case 3:
    case 4:
    case 5:
    case 9:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x12:
    case 0x16:
    case 0x18:
      v2 = 0;
      break;
    default:
      v2 = 1;
      break;
  }

  return v2 & 1;
}

uint64_t MailSettingsSpecifier.displayName.getter()
{
  MailSettingsSpecifier.rawValue.getter();
  sub_1BE94229C();
  sub_1BE94229C();
  sub_1BE92157C();
  sub_1BE921540();
  sub_1BE9426BC();
  sub_1BE9215F4();
  sub_1BE9215F4();
  sub_1BE9215F4();
  v1 = sub_1BE9426AC();

  return v1;
}

uint64_t sub_1BE921540()
{
  sub_1BE922EC4(0);

  return 0;
}

unint64_t sub_1BE92157C()
{
  v2 = qword_1EBDB60C8;
  if (!qword_1EBDB60C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB60C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MailSettingsSpecifier.url.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v57 = sub_1BE921EB8;
  v58 = "Fatal error";
  v59 = "Unexpectedly found nil while unwrapping an Optional value";
  v60 = "MessageUI/MailSettingsSpecifier.swift";
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v61 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
  v62 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v63 = &v31 - v62;
  v64 = sub_1BE941D8C();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64, v6, v7, v8);
  v68 = &v31 - v67;
  v69 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v31 - v67, v10, v11, v12);
  v70 = &v31 - v69;
  v95 = &v31 - v69;
  v81 = *v1;
  v94 = v81;
  v73 = 1;
  v71 = sub_1BE94229C();
  v72 = v13;
  v92 = v71;
  v93 = v13;
  v74 = sub_1BE94229C();
  v75 = v14;
  v90 = v74;
  v91 = v14;
  v78 = sub_1BE94229C();
  v80 = v15;
  v88 = v78;
  v89 = v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D8);
  v77 = sub_1BE94283C();
  v79 = v16;
  sub_1BE94203C();
  v17 = v79;
  v18 = v80;
  v19 = v81;
  *v79 = v78;
  v17[1] = v18;
  v87 = v19;
  if (MailSettingsSpecifier.isSelectable.getter())
  {
    v82 = v81;
    v54 = MailSettingsSpecifier.rawValue.getter();
    v55 = v20;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v21 = v61;
  v22 = v77;
  v23 = v79;
  v24 = v55;
  v79[2] = v54;
  v23[3] = v24;
  sub_1BE921DF8();
  v48 = v22;
  v86 = v22;
  sub_1BE941D7C();
  sub_1BE94203C();
  sub_1BE941D5C();
  sub_1BE94203C();
  MEMORY[0x1BFB49B60](v74, v75);
  v49 = sub_1BE94229C();
  v50 = v25;
  v85[1] = v48;
  KeyPath = swift_getKeyPath();

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E0);
  sub_1BE921EDC();
  v53 = sub_1BE9422FC();
  if (v21)
  {

    __break(1u);
  }

  else
  {
    v39 = v53;

    v43 = v85;
    v85[0] = v39;
    v41 = sub_1BE94229C();
    v42 = v26;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8);
    sub_1BE921F64();
    v44 = sub_1BE94222C();
    v45 = v27;

    sub_1BE91F954();
    v46 = MEMORY[0x1BFB4A0C0](v49, v50, v44, v45);
    v47 = v28;

    MEMORY[0x1BFB49B80](v46, v47);
    v84 = v81;
    if (MailSettingsSpecifier.isSelectable.getter())
    {
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v83 = v81;
      v37 = MailSettingsSpecifier.rawValue.getter();
      v38 = v29;
    }

    sub_1BE941D6C();
    (*(v65 + 16))(v68, v70, v64);
    sub_1BE941D1C();
    v32 = *(v65 + 8);
    v33 = v65 + 8;
    v32(v68, v64);
    v34 = sub_1BE941E5C();
    v35 = *(v34 - 8);
    v36 = v34 - 8;
    if ((*(v35 + 48))(v63, 1) == 1)
    {
      sub_1BE94274C();
      __break(1u);
    }

    (*(v35 + 32))(v56, v63, v34);
    v32(v70, v64);
  }

  return result;
}

uint64_t sub_1BE921E3C()
{
  sub_1BE94203C();

  swift_getAtKeyPath();
  sub_1BE9215F4();
}

unint64_t sub_1BE921EDC()
{
  v2 = qword_1EBDB3238;
  if (!qword_1EBDB3238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB60E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE921F64()
{
  v2 = qword_1EBDB3240;
  if (!qword_1EBDB3240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB60E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3240);
    return WitnessTable;
  }

  return v2;
}

MessageUI::MailSettingsSpecifier_optional __swiftcall MailSettingsSpecifier.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1BE94283C();
  *v2 = "ACCOUNTS";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "ADD_ACCOUNT";
  *(v2 + 32) = 11;
  *(v2 + 40) = 2;
  *(v2 + 48) = "NOTIFICATIONS";
  *(v2 + 56) = 13;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SUMMARIZE_MESSAGE_PREVIEWS";
  *(v2 + 80) = 26;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SHOW_CONTACT_PHOTOS";
  *(v2 + 104) = 19;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SHOW_TOCC_INDICATOR";
  *(v2 + 128) = 19;
  *(v2 + 136) = 2;
  *(v2 + 144) = "LINES_OF_PREVIEW";
  *(v2 + 152) = 16;
  *(v2 + 160) = 2;
  *(v2 + 168) = "DELETE_OR_MOVE_MESSAGE_ACTION";
  *(v2 + 176) = 29;
  *(v2 + 184) = 2;
  *(v2 + 192) = "SWIPE_OPTIONS";
  *(v2 + 200) = 13;
  *(v2 + 208) = 2;
  *(v2 + 216) = "ASK_BEFORE_DELETING";
  *(v2 + 224) = 19;
  *(v2 + 232) = 2;
  *(v2 + 240) = "SEARCH_PREFERENCE";
  *(v2 + 248) = 17;
  *(v2 + 256) = 2;
  *(v2 + 264) = "ORGANIZE_BY_THREAD";
  *(v2 + 272) = 18;
  *(v2 + 280) = 2;
  *(v2 + 288) = "COLLAPSE_READ_MESSAGES";
  *(v2 + 296) = 22;
  *(v2 + 304) = 2;
  *(v2 + 312) = "MOST_RECENT_MESSAGE_ON_TOP";
  *(v2 + 320) = 26;
  *(v2 + 328) = 2;
  *(v2 + 336) = "COMPLETE_THREADS";
  *(v2 + 344) = 16;
  *(v2 + 352) = 2;
  *(v2 + 360) = "MUTED_THREAD_ACTION";
  *(v2 + 368) = 19;
  *(v2 + 376) = 2;
  *(v2 + 384) = "BLOCKED_SENDER_OPTIONS";
  *(v2 + 392) = 22;
  *(v2 + 400) = 2;
  *(v2 + 408) = "BLOCKED_SENDERS";
  *(v2 + 416) = 15;
  *(v2 + 424) = 2;
  *(v2 + 432) = "ALWAYS_BCC_MYSELF";
  *(v2 + 440) = 17;
  *(v2 + 448) = 2;
  *(v2 + 456) = "MARK_ADDRESSES";
  *(v2 + 464) = 14;
  *(v2 + 472) = 2;
  *(v2 + 480) = "INCREASE_QUOTE_LEVEL";
  *(v2 + 488) = 20;
  *(v2 + 496) = 2;
  *(v2 + 504) = "INCLUDE_ATTACHMENTS_WITH_REPLIES";
  *(v2 + 512) = 32;
  *(v2 + 520) = 2;
  *(v2 + 528) = "ADD_LINK_PREVIEWS";
  *(v2 + 536) = 17;
  *(v2 + 544) = 2;
  *(v2 + 552) = "SIGNATURE";
  *(v2 + 560) = 9;
  *(v2 + 568) = 2;
  *(v2 + 576) = "LOAD_REMOTE_IMAGES";
  *(v2 + 584) = 18;
  *(v2 + 592) = 2;
  *(v2 + 600) = "UNDO_SEND_DELAY";
  *(v2 + 608) = 15;
  *(v2 + 616) = 2;
  sub_1BE921DF8();
  v5 = sub_1BE9427FC();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 4;
        break;
      case 5:
        v6 = 5;
        break;
      case 6:
        v6 = 6;
        break;
      case 7:
        v6 = 7;
        break;
      case 8:
        v6 = 8;
        break;
      case 9:
        v6 = 9;
        break;
      case 10:
        v6 = 10;
        break;
      case 11:
        v6 = 11;
        break;
      case 12:
        v6 = 12;
        break;
      case 13:
        v6 = 13;
        break;
      case 14:
        v6 = 14;
        break;
      case 15:
        v6 = 15;
        break;
      case 16:
        v6 = 16;
        break;
      case 17:
        v6 = 17;
        break;
      case 18:
        v6 = 18;
        break;
      case 19:
        v6 = 19;
        break;
      case 20:
        v6 = 20;
        break;
      case 21:
        v6 = 21;
        break;
      case 22:
        v6 = 22;
        break;
      case 23:
        v6 = 23;
        break;
      case 24:
        v6 = 24;
        break;
      case 25:
        v6 = 25;
        break;
      default:

        *v4 = 26;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t static MailSettingsSpecifier.allCases.getter()
{
  result = sub_1BE94283C();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  v1[10] = 10;
  v1[11] = 11;
  v1[12] = 12;
  v1[13] = 13;
  v1[14] = 14;
  v1[15] = 15;
  v1[16] = 16;
  v1[17] = 17;
  v1[18] = 18;
  v1[19] = 19;
  v1[20] = 20;
  v1[21] = 21;
  v1[22] = 22;
  v1[23] = 23;
  v1[24] = 24;
  v1[25] = 25;
  sub_1BE921DF8();
  return result;
}

unint64_t sub_1BE92282C()
{
  v2 = qword_1EBDB60F0;
  if (!qword_1EBDB60F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB60F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE92299C@<X0>(uint64_t *a1@<X8>)
{
  result = MailSettingsSpecifier.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1BE9229CC@<X0>(uint64_t *a1@<X8>)
{
  result = static MailSettingsSpecifier.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1BE922A10()
{
  v2 = qword_1EBDB60F8;
  if (!qword_1EBDB60F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB60F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE922AA4()
{
  v2 = qword_1EBDB6100;
  if (!qword_1EBDB6100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6108);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6100);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for MailSettingsSpecifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 25) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 230;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 26;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MailSettingsSpecifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE6)
  {
    v5 = ((a3 + 25) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE6)
  {
    v4 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 25;
    }
  }

  return result;
}

uint64_t sub_1BE922EC4(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_1BE9423CC();
    sub_1BE94203C();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t type metadata accessor for CompareOptions()
{
  v4 = qword_1EBDB6110;
  if (!qword_1EBDB6110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB6110);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1BE923014()
{
  v2 = (v0 + OBJC_IVAR____TtC9MessageUI20MessageUITipsManager_tipObservation);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1BE92307C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC9MessageUI20MessageUITipsManager_tipObservation);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1BE9231A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1BE923210(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

void (*sub_1BE9232A8(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC9MessageUI20MessageUITipsManager_presentingController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1BE923354;
}

void sub_1BE923354(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1BE923F04(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1BE923420()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1BE923488(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

void (*sub_1BE923520(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC9MessageUI20MessageUITipsManager_tipPopoverController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1BE923354;
}

uint64_t sub_1BE9235CC()
{
  v4 = (v0 + OBJC_IVAR____TtC9MessageUI20MessageUITipsManager____lazy_storage___addToYourEmailTip);
  swift_beginAccess();
  v5 = *v4;
  result = swift_endAccess();
  if (v5)
  {
    nullsub_1(result);
    v2 = (v3 + OBJC_IVAR____TtC9MessageUI20MessageUITipsManager____lazy_storage___addToYourEmailTip);
    swift_beginAccess();
    *v2 = 0;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BE923694()
{
  v2 = (v0 + OBJC_IVAR____TtC9MessageUI20MessageUITipsManager____lazy_storage___addToYourEmailTip);
  swift_beginAccess();
  *v2 = 0;
  return swift_endAccess();
}

uint64_t (*sub_1BE9236FC(void *a1))()
{
  *a1 = v1;
  sub_1BE9235CC();
  return sub_1BE923754;
}

_BYTE *MessageUITipsManager.init(with:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  *OBJC_IVAR____TtC9MessageUI20MessageUITipsManager_tipObservation = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC9MessageUI20MessageUITipsManager____lazy_storage___addToYourEmailTip] = 1;
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  v4.receiver = v6;
  v4.super_class = type metadata accessor for MessageUITipsManager();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t sub_1BE9239BC()
{
  v64 = 0;
  v52 = 0;
  v53 = sub_1BE941F8C();
  v54 = *(v53 - 8);
  v55 = v54;
  MEMORY[0x1EEE9AC00](v53 - 8, v53, v1, v2);
  v56 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6138);
  v57 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4 - 8, v5, v6, v7);
  v58 = &v24 - v57;
  v64 = v0;
  v63 = sub_1BE9231A8();
  v50 = v63 != 0;
  v49 = v50;
  sub_1BE923F04(&v63);
  if (v49)
  {
    v46 = 0;
    v8 = sub_1BE94244C();
    (*(*(v8 - 8) + 56))(v58, 1);
    v9 = v51;
    sub_1BE94242C();
    v10 = sub_1BE94241C();
    v11 = v51;
    v47 = v10;
    v12 = swift_allocObject();
    v13 = v46;
    v14 = v58;
    v12[2] = v47;
    v12[3] = MEMORY[0x1E69E85E0];
    v12[4] = v11;
    v15 = sub_1BE924604(v13, v13, v14, &unk_1BE985EE8, v12, MEMORY[0x1E69E7CA8] + 8);
    sub_1BE92307C(v15);
    return v52;
  }

  else
  {
    v16 = v56;
    v17 = sub_1BE923F38();
    (*(v55 + 16))(v16, v17, v53);
    v44 = sub_1BE941F6C();
    v41 = v44;
    v43 = sub_1BE94250C();
    v42 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6140);
    v45 = sub_1BE94283C();
    if (os_log_type_enabled(v44, v43))
    {
      v18 = v52;
      v32 = sub_1BE94268C();
      v28 = v32;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6148);
      v30 = 0;
      v33 = sub_1BE926594(0);
      v31 = v33;
      v34 = sub_1BE926594(v30);
      v62 = v32;
      v61 = v33;
      v60 = v34;
      v35 = 0;
      v36 = &v62;
      sub_1BE9265E8(0, &v62);
      sub_1BE9265E8(v35, v36);
      v59 = v45;
      v37 = &v24;
      MEMORY[0x1EEE9AC00](&v24, v19, v20, v21);
      v38 = &v24 - 6;
      *(&v24 - 4) = v22;
      *(&v24 - 3) = &v61;
      *(&v24 - 2) = &v60;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6150);
      sub_1BE926678();
      sub_1BE94232C();
      v40 = v18;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1BE819000, v41, v42, "Trying to observe tip display changes with no MFMailComposeController instance", v28, 2u);
        v26 = 0;
        sub_1BE926700(v31);
        sub_1BE926700(v34);
        sub_1BE94266C();

        v27 = v40;
      }
    }

    else
    {

      v27 = v52;
    }

    v25 = v27;

    (*(v55 + 8))(v56, v53);
    return v25;
  }
}

uint64_t sub_1BE923F38()
{
  if (qword_1EBDB67B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941F8C();
  return __swift_project_value_buffer(v0, qword_1EBDB67B8);
}

uint64_t sub_1BE923FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 128) = 0;
  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6178);
  *(v4 + 48) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDB6180);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 24) = a4;
  *(v4 + 80) = sub_1BE94242C();
  *(v4 + 88) = sub_1BE94241C();
  v9 = sub_1BE94240C();
  *(v4 + 96) = v9;
  *(v4 + 104) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BE924130, v9, v6);
}

uint64_t sub_1BE924130()
{
  v6 = MEMORY[0x1E69E85E0];
  *(v0 + 16) = v0;
  sub_1BE9235CC();
  sub_1BE926994();
  sub_1BE941FAC();
  sub_1BE94271C();
  v5 = sub_1BE94241C();
  *(v0 + 112) = v5;
  v1 = swift_task_alloc();
  v4[15] = v1;
  *v1 = v4[2];
  v1[1] = sub_1BE924264;
  v2 = v4[7];

  return (MEMORY[0x1EEE6DCB8])(v4 + 129, v5, v6, v2);
}

uint64_t sub_1BE924264()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v7 = v2 + 16;

  if (v0)
  {
    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_1BE9245F4;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_1BE9243E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BE9243E0()
{
  v7 = MEMORY[0x1E69E85E0];
  *(v0 + 16) = v0;
  v8 = *(v0 + 129);
  if (v8 == 2)
  {
    (*(*(v6 + 64) + 8))();

    v1 = *(*(v6 + 16) + 8);

    return v1();
  }

  else
  {
    *(v6 + 128) = v8 & 1;
    if (v8)
    {
      sub_1BE924D34();
    }

    else
    {
      sub_1BE925AA8();
    }

    v5 = sub_1BE94241C();
    *(v6 + 112) = v5;
    v3 = swift_task_alloc();
    *(v6 + 120) = v3;
    *v3 = *(v6 + 16);
    v3[1] = sub_1BE924264;
    v4 = *(v6 + 56);

    return (MEMORY[0x1EEE6DCB8])(v6 + 129, v5, v7, v4);
  }
}

uint64_t sub_1BE924604(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a1;
  v49 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v50 = a6;
  v51 = "Fatal error";
  v52 = "Unexpectedly found nil while unwrapping an Optional value";
  v53 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v54 = &unk_1BE985FA8;
  v55 = 0;
  v68 = a6;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6138) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59, v6, v7, v8);
  v60 = &v17 - v56;

  v66 = v58;
  v67 = v59;
  sub_1BE92821C(v57, v60);
  v61 = sub_1BE94244C();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  if ((*(v62 + 48))(v60, 1) == 1)
  {
    sub_1BE928344(v60);
    v47 = 0;
  }

  else
  {
    v46 = sub_1BE94243C();
    (*(v62 + 8))(v60, v61);
    v47 = v46;
  }

  v43 = v47 | 0x1C00;
  v45 = *(v59 + 16);
  v44 = *(v59 + 24);
  swift_unknownObjectRetain();

  if (v45)
  {
    v41 = v45;
    v42 = v44;
    v35 = v44;
    v36 = v45;
    swift_getObjectType();
    v37 = sub_1BE94240C();
    v38 = v9;
    swift_unknownObjectRelease();
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v33 = v40;
  v34 = v39;
  sub_1BE94203C();
  if (v49)
  {
    v31 = v48;
    v32 = v49;
    v10 = v55;
    v28 = v49;
    v29 = sub_1BE94226C();

    sub_1BE927E1C(v29 + 32, &v66, v50, &v64);
    if (v10)
    {
      __break(1u);
    }

    v27 = v64;

    v30 = v27;
  }

  else
  {
    v30 = 0;
  }

  v26 = v30;
  if (v30)
  {
    v20 = v26;
    v19 = v26;
    sub_1BE928344(v57);

    v21 = v19;
  }

  else
  {

    sub_1BE928344(v57);
    v22 = v66;
    v23 = v67;

    v11 = swift_allocObject();
    v12 = v22;
    v13 = v23;
    v14 = v34;
    v15 = v33;
    v24 = v11;
    v11[2] = v50;
    v11[3] = v12;
    v11[4] = v13;
    v25 = 0;
    if (v14 != 0 || v15 != 0)
    {
      v65[0] = 0;
      v65[1] = 0;
      v65[2] = v34;
      v65[3] = v33;
      v25 = v65;
    }

    v21 = swift_task_create();
  }

  v18 = v21;

  return v18;
}

uint64_t sub_1BE924C20()
{
  sub_1BE925AA8();
  if (sub_1BE923014())
  {

    sub_1BE926968();
    sub_1BE94245C();
  }

  else
  {
    sub_1BE926968();
  }

  sub_1BE92307C(0);
  return sub_1BE923210(0);
}

uint64_t sub_1BE924D34()
{
  v98 = 0;
  v135 = 0;
  v99 = 0;
  v130 = 0;
  v125 = 0;
  v124 = 0.0;
  v123 = 0.0;
  v122 = 0.0;
  v117 = 0;
  v100 = sub_1BE941F8C();
  v101 = *(v100 - 8);
  v102 = v101;
  MEMORY[0x1EEE9AC00](v100 - 8, v100, v1, v2);
  v103 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v0;
  v104 = sub_1BE9231A8();
  if (!v104)
  {
LABEL_36:
    v17 = v103;
    v18 = sub_1BE923F38();
    (*(v102 + 16))(v17, v18, v100);
    v44 = sub_1BE941F6C();
    v41 = v44;
    v43 = sub_1BE94250C();
    v42 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6140);
    v45 = sub_1BE94283C();
    if (os_log_type_enabled(v44, v43))
    {
      v19 = v99;
      v32 = sub_1BE94268C();
      v28 = v32;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6148);
      v30 = 0;
      v33 = sub_1BE926594(0);
      v31 = v33;
      v34 = sub_1BE926594(v30);
      v134 = v32;
      v133 = v33;
      v132 = v34;
      v35 = 0;
      v36 = &v134;
      sub_1BE9265E8(0, &v134);
      sub_1BE9265E8(v35, v36);
      v131 = v45;
      v37 = &v24;
      MEMORY[0x1EEE9AC00](&v24, v20, v21, v22);
      v38 = &v24 - 6;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6150);
      sub_1BE926678();
      sub_1BE94232C();
      v40 = v19;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1BE819000, v41, v42, "Trying to present more than one MiniTipPopoverViewController", v28, 2u);
        v26 = 0;
        sub_1BE926700(v31);
        sub_1BE926700(v34);
        sub_1BE94266C();

        v27 = v40;
      }
    }

    else
    {

      v27 = v99;
    }

    v25 = v27;

    (*(v102 + 8))(v103, v100);
    return v25;
  }

  v97 = v104;
  v96 = v104;
  v130 = v104;
  v129 = [v104 presentedViewController];
  v95 = v129 == 0;
  v94 = v95;
  sub_1BE923F04(&v129);
  if (!v94 || (v128 = sub_1BE923420(), v93 = v128 == 0, v92 = v93, sub_1BE923F04(&v128), !v92))
  {

    goto LABEL_36;
  }

  v90 = sub_1BE941FFC();
  sub_1BE9235CC();
  v126 = &unk_1F3CF2E20;
  v127 = sub_1BE926994();
  v91 = [v96 view];
  if (v91)
  {
    v89 = v91;
  }

  else
  {
    sub_1BE94274C();
    __break(1u);
  }

  v82 = v89;
  sub_1BE9257F0();
  v83 = sub_1BE94200C();
  v125 = v83;
  v84 = *MEMORY[0x1E69DE090];
  v85 = *(MEMORY[0x1E69DE090] + 8);
  v123 = v84;
  v124 = v85;
  v86 = [v96 traitCollection];
  v87 = [v86 horizontalSizeClass];

  v121 = v87;
  v120 = 1;
  v88 = type metadata accessor for UIUserInterfaceSizeClass();
  sub_1BE926AA4();
  if (sub_1BE94284C())
  {
    v81 = [v96 view];
    if (v81)
    {
      v80 = v81;
    }

    else
    {
      sub_1BE94274C();
      __break(1u);
    }

    v74 = v80;
    [v80 bounds];
    v108 = v4;
    v107 = v5;
    v106 = v6;
    v105 = v7;
    v78 = v4;
    v77 = v5;
    v76 = v6;
    v75 = v7;

    v122 = sub_1BE92580C(v75, v76, v77, v78);
    v79 = v122;
  }

  else
  {
    v122 = v84;
    v79 = v84;
  }

  v8 = v83;
  v72 = v79;
  v9 = v83;
  v118 = v72;
  v119 = v85;
  [v8 setPreferredContentSize_];

  v73 = sub_1BE941FEC();
  if (v73)
  {
    v71 = v73;
    v70 = v73;
    [v73 setPermittedArrowDirections_];
  }

  v10 = v96;
  objc_opt_self();
  v69 = swift_dynamicCastObjCClass();
  if (v69)
  {
    v68 = v69;
  }

  else
  {

    v68 = 0;
  }

  v67 = v68;
  if (v68)
  {
    v66 = v67;
    v64 = v67;
    v117 = v67;
    v11 = sub_1BE941FEC();
    v65 = v11;
    if (v11)
    {
      v63 = v65;
      v61 = v65;
      v62 = [v64 mailComposeView];
      if (v62)
      {
        v60 = v62;
      }

      else
      {
        sub_1BE94274C();
        __break(1u);
      }

      v54 = v60;
      v55 = [v60 keyboardLayoutGuide];

      [v55 layoutFrame];
      v116 = v12;
      v115 = v13;
      v114 = v14;
      v113 = v15;
      v59 = v12;
      v58 = v13;
      v57 = v14;
      v56 = v15;

      v109 = v56;
      v110 = v57;
      v111 = v58;
      v112 = v59;
      [v61 setSourceRect_];
    }
  }

  v53 = sub_1BE941FEC();
  if (v53)
  {
    v52 = v53;
    v51 = v53;
    v47 = [v96 view];
    v49 = sub_1BE92584C(v47);

    v48 = sub_1BE926B24();
    v50 = sub_1BE94238C();

    [v51 setPassthroughViews_];
  }

  [v96 presentViewController:v83 animated:1 completion:0];
  v16 = v83;
  sub_1BE923488(v83);

  return v99;
}

uint64_t sub_1BE92584C(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  if (!a1)
  {
    sub_1BE926B24();
    return sub_1BE94283C();
  }

  v10 = [a1 superview];
  if (!v10)
  {
    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  if (ObjectType == sub_1BE926B88())
  {
    MEMORY[0x1E69E5920](v10);
LABEL_6:
    sub_1BE926B24();
    v5 = sub_1BE94283C();
    v4 = v2;
    MEMORY[0x1E69E5928](a1);
    *v4 = a1;
    sub_1BE921DF8();
    MEMORY[0x1E69E5920](a1);
    return v5;
  }

  MEMORY[0x1E69E5928](v10);
  sub_1BE92584C(v10);
  MEMORY[0x1E69E5920](v10);
  sub_1BE926B24();
  sub_1BE94283C();
  v6 = v1;
  MEMORY[0x1E69E5928](a1);
  *v6 = a1;
  sub_1BE921DF8();
  v7 = sub_1BE9423AC();

  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](a1);
  return v7;
}

uint64_t sub_1BE925AA8()
{
  v49 = 0;
  v39 = 0;
  v40 = sub_1BE941F8C();
  v41 = *(v40 - 8);
  v42 = v41;
  MEMORY[0x1EEE9AC00](v40 - 8, v40, v1, v2);
  v43 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v48 = sub_1BE923420();
  v38 = v48 != 0;
  v37 = v38;
  sub_1BE923F04(&v48);
  if (v37)
  {
    v44[0] = sub_1BE923420();
    if (v44[0])
    {
      v36 = v44[0];
      v4 = v44[0];
      sub_1BE923F04(v44);
      [v36 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_1BE923F04(v44);
    }

    sub_1BE923488(0);
    return v39;
  }

  else
  {
    v5 = v43;
    v6 = sub_1BE923F38();
    (*(v42 + 16))(v5, v6, v40);
    v33 = sub_1BE941F6C();
    v30 = v33;
    v32 = sub_1BE94250C();
    v31 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6140);
    v34 = sub_1BE94283C();
    if (os_log_type_enabled(v33, v32))
    {
      v7 = v39;
      v21 = sub_1BE94268C();
      v17 = v21;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6148);
      v19 = 0;
      v22 = sub_1BE926594(0);
      v20 = v22;
      v23 = sub_1BE926594(v19);
      v47 = v21;
      v46 = v22;
      v45 = v23;
      v24 = 0;
      v25 = &v47;
      sub_1BE9265E8(0, &v47);
      sub_1BE9265E8(v24, v25);
      v44[2] = v34;
      v26 = &v13;
      MEMORY[0x1EEE9AC00](&v13, v8, v9, v10);
      v27 = &v13 - 6;
      *(&v13 - 4) = v11;
      *(&v13 - 3) = &v46;
      *(&v13 - 2) = &v45;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6150);
      sub_1BE926678();
      sub_1BE94232C();
      v29 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1BE819000, v30, v31, "Could not dismiss Tip, no existing view controller", v17, 2u);
        v15 = 0;
        sub_1BE926700(v20);
        sub_1BE926700(v23);
        sub_1BE94266C();

        v16 = v29;
      }
    }

    else
    {

      v16 = v39;
    }

    v14 = v16;

    (*(v42 + 8))(v43, v40);
    return v14;
  }
}

uint64_t static MessageUITipsManager.donateHasUsedAttachment()()
{
  v11 = 0;
  v10 = sub_1BE9420BC();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0, v1, v2);
  v9 = &v5 - v6;
  v11 = v3;
  nullsub_1(&v5 - v6);
  (*(v7 + 104))(v9, *MEMORY[0x1E6982AE0], v10);
  sub_1BE926994();
  sub_1BE941F9C();
  return (*(v7 + 8))(v9, v10);
}

uint64_t static MessageUITipsManager.donateHasSentEmailEvent()()
{
  v13 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6060);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, v0, v1, v2);
  v3 = &v7 - v8;
  v11 = &v7 - v8;
  v13 = v4;
  v5 = sub_1BE91EEE0();
  (*(v9 + 16))(v3, v5, v12);
  sub_1BE9420FC();
  return (*(v9 + 8))(v11, v12);
}

id MessageUITipsManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageUITipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE9263BC()
{
  v1 = sub_1BE941F8C();
  __swift_allocate_value_buffer(v1, qword_1EBDB67B8);
  __swift_project_value_buffer(v1, qword_1EBDB67B8);
  return sub_1BE926408();
}

uint64_t sub_1BE926408()
{
  sub_1BE94229C();
  sub_1BE94229C();
  return sub_1BE941F7C();
}

uint64_t sub_1BE926484@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE923F38();
  v1 = sub_1BE941F8C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void sub_1BE9264E8(uint64_t a1@<X8>)
{
  sub_1BE926524();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_1BE926594(uint64_t a1)
{
  if (a1)
  {
    return sub_1BE94268C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE9265E8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1BE926678()
{
  v2 = qword_1EBDB3260;
  if (!qword_1EBDB3260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE926700(uint64_t result)
{
  if (result)
  {
    sub_1BE94267C();
    return sub_1BE94266C();
  }

  return result;
}

uint64_t sub_1BE926768(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1BE926840;

  return sub_1BE923FA4(a1, v6, v7, v8);
}

uint64_t sub_1BE926840()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_1BE926994()
{
  v2 = qword_1EBDB3270;
  if (!qword_1EBDB3270)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB3270);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for UIUserInterfaceSizeClass()
{
  v4 = qword_1EBDB6170;
  if (!qword_1EBDB6170)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB6170);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1BE926AA4()
{
  v2 = qword_1EBDB6158;
  if (!qword_1EBDB6158)
  {
    type metadata accessor for UIUserInterfaceSizeClass();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE926B24()
{
  v2 = qword_1EBDB6160;
  if (!qword_1EBDB6160)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6160);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1BE926B88()
{
  v2 = qword_1EBDB6168;
  if (!qword_1EBDB6168)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6168);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1BE926C24(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1BE94247C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1BE94276C();
  __break(1u);
LABEL_12:
  result = sub_1BE94274C();
  __break(1u);
  return result;
}

uint64_t sub_1BE926F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17, a2, v26, a4);
        v15 = sub_1BE927DD4;
        v16 = &v37;
        sub_1BE926C24(sub_1BE927DF0, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_1BE94274C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_1BE94274C();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_1BE94274C();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_1BE94274C();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_1BE94274C();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_1BE94274C();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_1BE94274C();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_1BE94274C();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_1BE94274C();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_1BE94274C();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_1BE94274C();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_1BE94274C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_1BE94276C();
    __break(1u);
  }

  result = sub_1BE94274C();
  __break(1u);
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_1BE9278C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1BE94274C();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1BE94274C();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1BE94274C();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1BE94274C();
                __break(1u);
              }

              sub_1BE94274C();
              __break(1u);
            }

            sub_1BE94274C();
            __break(1u);
          }

          sub_1BE94274C();
          __break(1u);
        }

        sub_1BE94274C();
        __break(1u);
      }

      sub_1BE94274C();
      __break(1u);
    }

    sub_1BE94274C();
    __break(1u);
  }

  result = sub_1BE94274C();
  __break(1u);
  return result;
}

uint64_t sub_1BE927E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_1BE94274C();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_1BE927FDC(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1BE9280F0;

  return v6(a1);
}

uint64_t sub_1BE9280F0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_1BE92821C(const void *a1, void *a2)
{
  v6 = sub_1BE94244C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6138);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1BE928344(uint64_t a1)
{
  v3 = sub_1BE94244C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1BE9283EC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1BE926840;

  return sub_1BE927FDC(a1, v6);
}

unint64_t sub_1BE9285CC()
{
  v2 = qword_1EBDB6E40;
  if (!qword_1EBDB6E40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6E40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE9286E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1BE928750(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

void (*sub_1BE9287E8(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC9MessageUIP33_3C626DC871F6AB6A51C896DC4538F33937_ComposeFormattingColorPickerDelegate_formattingController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1BE923354;
}

void *sub_1BE928894(uint64_t a1, uint64_t a2)
{
  result = sub_1BE9286E8();
  v4 = result;
  if (result)
  {
    v5 = [result formattingDelegate];
    if (v5)
    {
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      [v5 composeFormattingController:v4 didChangeTextColor:a2];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C();
    }

    return MEMORY[0x1E69E5920](v4);
  }

  return result;
}

id sub_1BE928B40()
{
  v3 = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = 0;
  v2.super_class = type metadata accessor for _ComposeFormattingColorPickerDelegate();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id sub_1BE928BFC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _ComposeFormattingColorPickerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE928CA4()
{
  v2 = *(v0 + OBJC_IVAR___MFComposeFormattingViewController_colorPickerDelegate);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1BE928D60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1BE928E30()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

char *sub_1BE928EDC()
{
  v11 = 0;
  v1 = OBJC_IVAR___MFComposeFormattingViewController_colorPickerDelegate;
  type metadata accessor for _ComposeFormattingColorPickerDelegate();
  *v1 = sub_1BE928B18();
  swift_unknownObjectWeakInit();
  v9 = &unk_1F3CF30A0;
  v10 = sub_1BE9290B8();
  v2 = sub_1BE941EAC();
  __swift_destroy_boxed_opaque_existential_1(v8);
  v4 = sub_1BE9291D4(v2 & 1);
  v7 = v4;
  [v4 set:0 preferringDimmingVisible:?];
  v6.receiver = v11;
  v6.super_class = MFComposeFormattingViewController;
  v5 = objc_msgSendSuper2(&v6, sel_initWithConfiguration_, v4);
  MEMORY[0x1E69E5928](v5);
  v11 = v5;
  MEMORY[0x1E69E5928](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v5);
  v3 = *&v11[OBJC_IVAR___MFComposeFormattingViewController_colorPickerDelegate];
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5928](v5);
  sub_1BE928750(v5);
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v11);
  return v5;
}

unint64_t sub_1BE9290B8()
{
  v2 = qword_1EBDB6E48[0];
  if (!qword_1EBDB6E48[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EBDB6E48);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

id sub_1BE9291D4(char a1)
{
  v52 = *MEMORY[0x1E69DE5D0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DE5D0]);
  sub_1BE929A5C();
  sub_1BE94283C();
  sub_1BE94283C();
  if (a1)
  {
    v51 = v1;
    sub_1BE929AC0();
    sub_1BE94283C();
    v33 = v2;
    v31 = *MEMORY[0x1E69DE618];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE618]);
    v32 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v31);
    *v33 = v32;
    sub_1BE921DF8();
    v34 = sub_1BE94264C();

    *v51 = v34;
    sub_1BE94283C();
    v49 = v3;
    v35 = *MEMORY[0x1E69DE5E0];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE5E0]);
    v36 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v35);
    *v49 = v36;
    v37 = *MEMORY[0x1E69DE668];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE668]);
    v38 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v37);
    v49[1] = v38;
    v39 = *MEMORY[0x1E69DE600];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE600]);
    v40 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v39);
    v49[2] = v40;
    v41 = *MEMORY[0x1E69DE608];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE608]);
    v42 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v41);
    v49[3] = v42;
    v49[4] = sub_1BE94262C();
    v43 = *MEMORY[0x1E69DE640];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE640]);
    v44 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v43);
    v49[5] = v44;
    v45 = *MEMORY[0x1E69DE628];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE628]);
    v46 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v45);
    v49[6] = v46;
    v47 = *MEMORY[0x1E69DE670];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE670]);
    v48 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v47);
    v49[7] = v48;
    sub_1BE921DF8();
    v50 = sub_1BE94264C();

    v51[1] = v50;
  }

  else
  {
    v30 = v1;
    sub_1BE929AC0();
    sub_1BE94283C();
    v20 = v4;
    v12 = *MEMORY[0x1E69DE5E0];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE5E0]);
    v13 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v12);
    *v20 = v13;
    v14 = *MEMORY[0x1E69DE600];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE600]);
    v15 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v14);
    v20[1] = v15;
    v16 = *MEMORY[0x1E69DE610];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE610]);
    v17 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v16);
    v20[2] = v17;
    v18 = *MEMORY[0x1E69DE668];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE668]);
    v19 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v18);
    v20[3] = v19;
    sub_1BE921DF8();
    v21 = sub_1BE94264C();

    *v30 = v21;
    sub_1BE94283C();
    v28 = v5;
    *v5 = sub_1BE94262C();
    v22 = *MEMORY[0x1E69DE640];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE640]);
    v23 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v22);
    v28[1] = v23;
    v24 = *MEMORY[0x1E69DE628];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE628]);
    v25 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v24);
    v28[2] = v25;
    v26 = *MEMORY[0x1E69DE670];
    MEMORY[0x1E69E5928](*MEMORY[0x1E69DE670]);
    v27 = sub_1BE94262C();
    MEMORY[0x1E69E5920](v26);
    v28[3] = v27;
    sub_1BE921DF8();
    v29 = sub_1BE94264C();

    v30[1] = v29;
  }

  sub_1BE921DF8();
  sub_1BE94203C();

  sub_1BE92B690();
  v11 = sub_1BE930740();
  if (a1)
  {
    sub_1BE92B6F4();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61C0);
    v9 = sub_1BE9425CC();
    v6 = sub_1BE9307B4();
    sub_1BE92ACFC(sub_1BE930780, 0, v8, v9, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v10);
    sub_1BE91F954();
    sub_1BE94263C();
  }

  sub_1BE91F954();
  MEMORY[0x1E69E5920](v52);
  return v11;
}

unint64_t sub_1BE929A5C()
{
  v2 = qword_1EBDB61A8;
  if (!qword_1EBDB61A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB61A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1BE929AC0()
{
  v2 = qword_1EBDB61B0;
  if (!qword_1EBDB61B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB61B0);
    return ObjCClassMetadata;
  }

  return v2;
}

id MFComposeFormattingViewController.init(coder:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

void MFComposeFormattingViewController.init(coder:)()
{
  v0 = OBJC_IVAR___MFComposeFormattingViewController_colorPickerDelegate;
  type metadata accessor for _ComposeFormattingColorPickerDelegate();
  *v0 = sub_1BE928B18();
  swift_unknownObjectWeakInit();
  sub_1BE94229C();
  sub_1BE94275C();
  __break(1u);
}

uint64_t sub_1BE929CD8(char a1)
{
  v9 = a1 & 1;
  v8 = v1;
  MEMORY[0x1E69E5928](v1);
  v7.receiver = v1;
  v7.super_class = MFComposeFormattingViewController;
  objc_msgSendSuper2(&v7, sel_viewIsAppearing_, a1 & 1);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5928])();
  v4 = [v5 0x1FBB6308ALL];
  (MEMORY[0x1E69E5920])();
  [v4 setRightBarButtonItem_];
  MEMORY[0x1E69E5920](v4);
  (MEMORY[0x1E69E5928])();
  v6 = [v5 0x1FBB6308ALL];
  (MEMORY[0x1E69E5920])();
  [v6 setRightBarButtonItems_];
  return MEMORY[0x1E69E5920](v6);
}

double sub_1BE929F10()
{
  v3 = v0;
  MEMORY[0x1E69E5928](v0);
  v2.receiver = v0;
  v2.super_class = MFComposeFormattingViewController;
  objc_msgSendSuper2(&v2, sel_preferredContentSize);
  (MEMORY[0x1E69E5920])();
  return 375.0;
}

uint64_t sub_1BE92A014(double a1, double a2)
{
  v8 = a1;
  v9 = a2;
  v7 = v2;
  MEMORY[0x1E69E5928](v2);
  v6.receiver = v2;
  v6.super_class = MFComposeFormattingViewController;
  objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
  return (MEMORY[0x1E69E5920])();
}

uint64_t sub_1BE92A0B0(uint64_t a1)
{
  v92 = a1;
  v97 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v115 = 0;
  v112 = 0;
  v111 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v103 = 0;
  v102 = 0;
  v85 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v86 = &v31 - v85;
  sub_1BE941D9C();
  MEMORY[0x1EEE9AC00](v97, v5, v6, v7);
  v87 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BE9425CC();
  v89 = *(v88 - 8);
  v90 = v89;
  MEMORY[0x1EEE9AC00](v97, v88, v9, v10);
  v91 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1BE94259C();
  v94 = *(v93 - 8);
  v95 = v94;
  v14 = MEMORY[0x1EEE9AC00](v92, v93, v12, v13);
  v96 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v96;
  v119 = v14;
  v118 = v1;
  v117 = v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D8);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61E0);
  v16 = sub_1BE93083C();
  v18 = sub_1BE92ACFC(sub_1BE92AC1C, v97, v98, v99, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v100 = 0;
  v101 = v18;
  v116 = v18;
  v78 = 0;
  v79 = type metadata accessor for Key();
  v76 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61F0);
  v81 = sub_1BE93095C();
  v77 = v81;
  sub_1BE9309DC();
  v19 = sub_1BE9421EC();
  v82 = 0;
  v83 = v19;
  v72 = v19;
  v115 = v19;
  sub_1BE94203C();
  sub_1BE94251C();
  v73 = sub_1BE94256C();
  v114 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6208);
  sub_1BE930A64();
  sub_1BE9424CC();
  v75 = v113;
  if (v113)
  {
    v71 = v75;
    v70 = v75;
    v103 = v75;

    if ([v70 isSystemFont])
    {
      v62 = objc_opt_self();
      [v70 pointSize];
      v63 = [v62 systemFontOfSize_];
      v64 = 0x1FB328000uLL;
      v67 = [v63 0x1FB328E67];

      v65 = [v70 (v64 + 3687)];
      v66 = [v65 symbolicTraits];

      v69 = [v67 fontDescriptorWithSymbolicTraits_];
      v68 = v69;

      if (v69)
      {
        v61 = v68;
        v60 = v68;
        v102 = v68;
        v58 = sub_1BE930BA0();
        v59 = sub_1BE94283C();
        v57 = v20;
        v21 = v60;
        [v70 pointSize];
        v23 = sub_1BE92B62C(v60, v22);
        *v57 = v23;
        sub_1BE921DF8();
        sub_1BE94257C();
      }
    }
  }

  else
  {
  }

  v24 = v82;
  v54 = 1;
  sub_1BE94253C();
  sub_1BE94254C();
  v110 = sub_1BE92B6F4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61C0);
  sub_1BE9307B4();
  sub_1BE9424EC();
  for (i = v24; ; i = v32)
  {
    v52 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6218);
    sub_1BE94273C();
    v53 = v109;
    if (v109 == 5)
    {
      v35 = v52;
      goto LABEL_15;
    }

    v51 = v53;
    v25 = v52;
    v43 = v53;
    v108 = v53;
    sub_1BE92B75C(v53, v91);
    sub_1BE9425AC();
    (*(v90 + 8))(v91, v88);
    v44 = sub_1BE94217C();
    v45 = v44;
    v107 = v44;
    sub_1BE94203C();
    sub_1BE94203C();
    v46 = &v31;
    *(&v31 - 2) = MEMORY[0x1EEE9AC00](v44, &v31, v72, v76);
    v26 = sub_1BE9421BC();
    v47 = v25;
    v48 = v26;
    v49 = v45;
    v50 = v46;
    if (v25)
    {
      break;
    }

    v39 = v48;

    v106 = v39;
    v105 = v39;
    v104 = v45;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6220);
    sub_1BE930B18();
    v27 = sub_1BE94230C();
    v41 = 0;
    v42 = v27;
    v36 = v39;
    v37 = v43;
    v38 = v45;
    if (v27)
    {
      v34 = v38;
      v33 = v36;
      sub_1BE92C02C();
      sub_1BE94255C();

      v35 = v41;
LABEL_15:
      v28 = v84;
      sub_1BE91F954();
      v29 = v28;
      (*(v95 + 16))(v86, v96, v93);
      (*(v95 + 56))(v86, 0, 1, v93);
      sub_1BE94260C();

      (*(v95 + 8))(v96, v93);
    }

    v32 = v41;
  }

  __break(1u);
  result = 0;
  __break(1u);
  return result;
}