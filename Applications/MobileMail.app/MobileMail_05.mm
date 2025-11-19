void sub_1001F49A8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 sceneMovedToForeground];
}

void sub_1001F5604(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001F56CC;
  v2[3] = &unk_10064C838;
  objc_copyWeak(&v3, (a1 + 32));
  v1 = +[EFScheduler mainThreadScheduler];
  [v1 performBlock:v2];

  objc_destroyWeak(&v3);
}

void sub_1001F56CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageContentView];
  [v1 reload];
}

void sub_1001F5B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, id location, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001F5BDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F5BF4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([*(a1 + 32) ef_conformsToMarkupUTType] && objc_msgSend(v7, "isEqualToString:", MFActivityTypeMarkupDocument))
  {
    v4 = [*(a1 + 40) contentURL];
    [WeakRetained _previewURL:v4 withEditingEnabled:1];
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1001F5F74(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10048BD2C(v2, v3);
    }
  }
}

void sub_1001F6A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1001F6B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1001F6BBC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) contentRequest];
  v4 = [v3 message];
  [v5 setSourceMessageListItem:v4];

  [v5 setPossibleStoreURL:{objc_msgSend(*(a1 + 40), "ef_hasScheme:", EMMailToURLScheme) ^ 1}];
}

BOOL sub_1001F6EC4(id a1, EMMailbox *a2)
{
  v2 = [(EMMailbox *)a2 account];
  v3 = [v2 supportsiCloudCleanup];

  return v3;
}

void sub_1001F6FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001F7564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

EFFuture *__cdecl sub_1001F7990(id a1, EMContentRepresentation *a2)
{
  v2 = a2;
  v3 = [(EMContentRepresentation *)v2 requestedHeaders];
  v4 = [v3 firstHeaderForKey:ECMessageHeaderKeyHMEAddress];

  v5 = [ECTagValueList tagValueListFromString:v4 error:0];
  v6 = [v5 objectForKeyedSubscript:EMHeaderTagHMESenderAddress];
  v7 = [(EMContentRepresentation *)v2 contentItem];
  v8 = v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = [v7 senderAddress];
  }

  v10 = v9;
  v11 = [EFFuture futureWithResult:v9];

  return v11;
}

void sub_1001F7C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001F7C90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setDelegate:*(a1 + 32)];
  }
}

void sub_1001F7EE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_1001F829C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1006DD5C8;
  v7 = qword_1006DD5C8;
  if (!qword_1006DD5C8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001FCA34;
    v3[3] = &unk_100650760;
    v3[4] = &v4;
    sub_1001FCA34(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001F8364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001F837C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1006DD5D8;
  v7 = qword_1006DD5D8;
  if (!qword_1006DD5D8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001FCCF8;
    v3[3] = &unk_100650760;
    v3[4] = &v4;
    sub_1001FCCF8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001F8444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001F8830(id a1, EMContentItem *a2)
{
  v2 = [(EMContentItem *)a2 type];
  if ([v2 conformsToType:UTTypeMovie])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 conformsToType:UTTypeImage];
  }

  return v3;
}

id sub_1001F88A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) messageContentView];
  v5 = [v4 downloadFutureForContentItem:v3];

  return v5;
}

void sub_1001F8FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak((v14 - 96));

  _Unwind_Resume(a1);
}

id sub_1001F9140()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1006DD5E0;
  v7 = qword_1006DD5E0;
  if (!qword_1006DD5E0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001FCDDC;
    v3[3] = &unk_100650760;
    v3[4] = &v4;
    sub_1001FCDDC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001F9208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F9220(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F92FC;
  v7[3] = &unk_100655048;
  v7[4] = WeakRetained;
  v6 = [v4 ef_map:v7];
  [WeakRetained _performMailAction:4 withMarkedUpFileAttachments:v6];
}

id sub_1001F92FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 editedFileURL];
  v6 = [v3 item];
  v7 = [v6 previewItemURL];
  v8 = [v7 lastPathComponent];
  v9 = [v4 _makeFileCopyOfEditedQuickLookFileToLocalContainer:v5 preferredFileName:v8];

  return v9;
}

void sub_1001F93EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F94C8;
  v7[3] = &unk_100655048;
  v7[4] = WeakRetained;
  v6 = [v4 ef_map:v7];
  [WeakRetained _performMailAction:5 withMarkedUpFileAttachments:v6];
}

id sub_1001F94C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 editedFileURL];
  v6 = [v3 item];
  v7 = [v6 previewItemURL];
  v8 = [v7 lastPathComponent];
  v9 = [v4 _makeFileCopyOfEditedQuickLookFileToLocalContainer:v5 preferredFileName:v8];

  return v9;
}

void sub_1001F95B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F9694;
  v7[3] = &unk_100655048;
  v7[4] = WeakRetained;
  v6 = [v4 ef_map:v7];
  [WeakRetained _performMailAction:0 withMarkedUpFileAttachments:v6];
}

id sub_1001F9694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 editedFileURL];
  v6 = [v3 item];
  v7 = [v6 previewItemURL];
  v8 = [v7 lastPathComponent];
  v9 = [v4 _makeFileCopyOfEditedQuickLookFileToLocalContainer:v5 preferredFileName:v8];

  return v9;
}

void sub_1001F9B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak((v16 - 96));

  _Unwind_Resume(a1);
}

void sub_1001F9C8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F9D68;
  v7[3] = &unk_100655070;
  v7[4] = WeakRetained;
  v6 = [v4 ef_map:v7];
  [WeakRetained _performMailAction:4 withMarkedUpFileAttachments:v6];
}

id sub_1001F9D68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:UIDocumentInteractionControllerResultModifiedURLKey];
  v5 = [v3 objectForKey:UIDocumentInteractionControllerResultOriginalURLKey];
  v6 = *(a1 + 32);
  v7 = [v5 lastPathComponent];
  v8 = [v6 _makeFileCopyOfEditedQuickLookFileToLocalContainer:v4 preferredFileName:v7];

  return v8;
}

void sub_1001F9E20(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001F9E58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F9F34;
  v7[3] = &unk_100655070;
  v7[4] = WeakRetained;
  v6 = [v4 ef_map:v7];
  [WeakRetained _performMailAction:5 withMarkedUpFileAttachments:v6];
}

id sub_1001F9F34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:UIDocumentInteractionControllerResultModifiedURLKey];
  v5 = [v3 objectForKey:UIDocumentInteractionControllerResultOriginalURLKey];
  v6 = *(a1 + 32);
  v7 = [v5 lastPathComponent];
  v8 = [v6 _makeFileCopyOfEditedQuickLookFileToLocalContainer:v4 preferredFileName:v7];

  return v8;
}

void sub_1001F9FEC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001FA024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FA100;
  v7[3] = &unk_100655070;
  v7[4] = WeakRetained;
  v6 = [v4 ef_map:v7];
  [WeakRetained _performMailAction:0 withMarkedUpFileAttachments:v6];
}

id sub_1001FA100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:UIDocumentInteractionControllerResultModifiedURLKey];
  v5 = [v3 objectForKey:UIDocumentInteractionControllerResultOriginalURLKey];
  v6 = *(a1 + 32);
  v7 = [v5 lastPathComponent];
  v8 = [v6 _makeFileCopyOfEditedQuickLookFileToLocalContainer:v4 preferredFileName:v7];

  return v8;
}

void sub_1001FA1B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001FA674(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1001FA760(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  v3 = [*(a1 + 40) view];
  [v3 setOpaque:0];

  v4 = +[UIColor clearColor];
  v2 = [*(a1 + 40) view];
  [v2 setBackgroundColor:v4];

  [*(a1 + 40) setModalPresentationStyle:5];
  v5 = [*(a1 + 32) parentViewController];
  [v5 presentViewController:*(a1 + 40) animated:1 completion:0];
}

void sub_1001FAD4C(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

BOOL sub_1001FBD10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 emailAddressValue];

  if (v5)
  {
    v6 = [v3 value];
    v7 = [v6 emailAddressValue];
    v8 = [v7 compare:*(a1 + 32)] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1001FBDD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [*(a1 + 40) senderAddress];
  }

  v6 = v5;
  v7 = [v5 emailAddressValue];
  v8 = [v7 domain];

  v9 = [*(a1 + 40) mailProviderDisplayNameForBIMI];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FBF78;
  v13[3] = &unk_10064C6B0;
  v10 = v8;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  v16 = *(a1 + 48);
  v12 = +[EFScheduler mainThreadScheduler];
  [v12 performBlock:v13];
}

void sub_1001FBF78(uint64_t a1)
{
  v3 = [[BIMIVerifiedDomainContactHeaderViewModel alloc] initWithDomain:*(a1 + 32) mailProviderDisplayName:*(a1 + 40)];
  if (MUISolariumFeatureEnabled())
  {
    v2 = [v3 contactsCustomViewConfiguration];
    [*(a1 + 48) setCustomViewConfiguration:v2];
  }

  else
  {
    v2 = [[BIMIVerifiedDomainHeaderView alloc] initWithViewModel:v3];
    [*(a1 + 48) setContactHeaderView:v2];
  }
}

void sub_1001FC2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001FCA34(uint64_t a1)
{
  sub_1001FCB18();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLPreviewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1006DD5C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageViewController.m" lineNumber:59 description:{@"Unable to find class %s", "QLPreviewController"}];

    __break(1u);
  }
}

void sub_1001FCB18()
{
  v3[0] = 0;
  if (!qword_1006DD5D0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001FCC8C;
    v3[4] = &unk_10064C4F8;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/Frameworks/QuickLook.framework/QuickLook";
    qword_1006DD5D0 = _sl_dlopen();
  }

  if (!qword_1006DD5D0)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFMessageViewController.m" lineNumber:57 description:{@"%s", v3[0]}];

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

uint64_t sub_1001FCC8C()
{
  result = _sl_dlopen();
  qword_1006DD5D0 = result;
  return result;
}

void sub_1001FCCF8(uint64_t a1)
{
  sub_1001FCB18();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1006DD5D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getQLItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageViewController.m" lineNumber:60 description:{@"Unable to find class %s", "QLItem"}];

    __break(1u);
  }
}

void sub_1001FCDDC(uint64_t a1)
{
  sub_1001FCB18();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLDismissAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1006DD5E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getQLDismissActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageViewController.m" lineNumber:58 description:{@"Unable to find class %s", "QLDismissAction"}];

    __break(1u);
  }
}

void sub_1001FD960(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD5E8;
  qword_1006DD5E8 = v1;
}

void sub_1001FDC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 48));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_1001FDC4C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [MFMessageCompositionTriageInteraction compositionRepresentationRequestForMessage:v3];
  v6 = [WeakRetained messageListItemSelection];
  v7 = [v6 messageListItems];
  v8 = [v7 firstObject];

  v9 = [[MFTriageInteractionTarget alloc] initWithMessageListItem:v8 primaryMessage:v3 selectedMessageContent:0 primaryMessageContentRequest:v5 targetPreference:1 preferQuickCompositionalActions:1];
  v19.receiver = a1[4];
  v19.super_class = MFMoreTriageInteraction;
  v10 = objc_msgSendSuper2(&v19, "delegate");
  if (objc_opt_respondsToSelector())
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001FDED8;
    v14[3] = &unk_1006509D8;
    v15 = v10;
    v16 = WeakRetained;
    v17 = v9;
    v18 = a1[5];
    v11 = +[EFScheduler mainThreadScheduler];
    [v11 performBlock:v14];

    v12 = v15;
  }

  else
  {
    v12 = +[MFMoreTriageInteraction log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot present more actions as ActionsViewController is not provided by delegate", v13, 2u);
    }
  }
}

void sub_1001FDE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18)
{
  v25 = v24;

  _Unwind_Resume(a1);
}

void sub_1001FDED8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001FDFFC;
  v8[3] = &unk_10064C598;
  v4 = *(a1 + 48);
  v9 = *(a1 + 56);
  v5 = [v2 moreTriageInteraction:v3 actionsViewControllerWithInteractionTarget:v4 didDismissHandler:v8];
  v6 = [*(a1 + 40) delegate];
  v7 = [v6 presentingViewControllerForTriageInteraction:*(a1 + 40)];

  [v7 presentViewController:v5 animated:1 completion:0];
}

void sub_1001FDFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_1001FE00C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MFMoreTriageInteraction log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 ef_publicDescription];
    sub_10048BDFC(v4, v5, v3);
  }
}

void sub_1001FE7B0(uint64_t a1)
{
  if (a1)
  {
    v2 = +[EFScheduler globalAsyncScheduler];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001FEAB0;
    v3[3] = &unk_10064C7E8;
    v3[4] = a1;
    [v2 performBlock:v3];
  }
}

void sub_1001FEAB0(uint64_t a1)
{
  v2 = [*(a1 + 32) messageListItemSelection];
  v3 = [v2 messageListItems];

  v4 = [v3 ef_firstObjectPassingTest:&stru_100655150];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mailboxes];
    v7 = [v6 firstObject];
    [v7 type];
  }

  v8 = [*(a1 + 32) targetMailbox];
  v9 = v8;
  if (v8)
  {
    [v8 type];
  }

  else
  {
    [*(a1 + 32) targetMailboxType];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v3;
  v11 = 0;
  v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v11 += [*(*(&v15 + 1) + 8 * i) count];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  AnalyticsSendEventLazy();
}

BOOL sub_1001FED34(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 mailboxes];
  v3 = [v2 count] != 0;

  return v3;
}

id sub_1001FED84(uint64_t a1)
{
  v12[0] = @"canHavePrediction";
  v2 = (a1 + 32);
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) canHavePrediction]);
  v13[0] = v3;
  v12[1] = @"hasPrediction";
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*v2 hasPrediction]);
  v13[1] = v4;
  v12[2] = @"predictionSelected";
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) predictionSelected]);
  v13[2] = v5;
  v12[3] = @"presentTransferUI";
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) didPresentTransferUI]);
  v13[3] = v6;
  v12[4] = @"sourceMailboxType";
  v7 = ECPrettyDescriptionFromMailboxType();
  v13[4] = v7;
  v12[5] = @"targetMailboxType";
  v8 = ECPrettyDescriptionFromMailboxType();
  v13[5] = v8;
  v12[6] = @"numberOfMessages";
  v9 = [NSNumber numberWithInteger:*(a1 + 56)];
  v13[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

void sub_1001FF4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001FF53C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPrediction:v3];
}

void sub_1001FF704(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001FF7B0;
  v6[3] = &unk_10064D270;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1001FF9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    [v4 finishWithResult:v3];
  }

  else
  {
    v5 = [*(a1 + 40) firstObject];
    v6 = [v5 itemID];
    v7 = [NSError em_itemNotFoundErrorWithItemID:v6];
    [v4 finishWithError:v7];
  }
}

void sub_1001FFADC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ef_isCancelledError])
  {
    [*(a1 + 32) cancel];
  }
}

void sub_1001FFD6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    [v4 finishWithResult:v3];
  }

  else
  {
    v5 = [*(a1 + 40) firstObject];
    v6 = [NSError em_itemNotFoundErrorWithItemID:v5];
    [v4 finishWithError:v6];
  }
}

void sub_1001FFE40(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ef_isCancelledError])
  {
    [*(a1 + 32) cancel];
  }
}

void sub_10020016C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10020025C;
  v10[3] = &unk_100655220;
  v8 = v6;
  v11 = v8;
  v9 = [UIPreviewAction actionWithTitle:a2 style:0 handler:v10];
  [v7 addObject:v9];
}

void sub_100200344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100200360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentTransferUI];
}

void sub_100200650(id *a1, void *a2, char a3, void *a4)
{
  v7 = a4;
  v8 = [a2 ef_stringByTrimmingWhitespaceAndNewlineCharacters];
  v9 = [a1[4] _iconImageName];
  v10 = [a1[4] _tintColor];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100200820;
  v19 = &unk_100655298;
  v11 = v7;
  v21 = v11;
  v12 = a1[6];
  v13 = a1[4];
  v22 = v12;
  v20 = v13;
  v23 = a3;
  v14 = [MFCardAction cardActionWithTitle:v8 shortTitle:0 imageName:v9 tintColor:v10 handler:&v16];

  v15 = [a1[4] accessibilityIdentifier];
  [v14 setAccessibilityIdentifier:v15];

  [a1[5] addObject:v14];
}

uint64_t sub_100200820(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

id sub_100200874(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _presentTransferUI];
}

void sub_100200A60(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100200B80;
  v14 = &unk_1006552E8;
  v7 = a4;
  v16 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v17 = v8;
  v15 = v9;
  v18 = a3;
  v10 = [UIAlertAction actionWithTitle:a2 style:0 handler:&v11];
  [*(a1 + 40) addObject:{v10, v11, v12, v13, v14}];
}

uint64_t sub_100200B80(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

id sub_100200FCC(uint64_t a1)
{
  [*(a1 + 32) setPredictionSelected:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 moveToTargetEMMailbox:v3];
}

void sub_100201134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100201174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDismissHandler];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100201248;
  v4 = v3[3] = &unk_1006525C8;
  v2 = v4;
  [WeakRetained _performInteractionBoilerplateWithBlock:0 completion:v3];
}

uint64_t sub_100201248(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100201494(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1002015B8;
  v16 = &unk_1006552E8;
  v9 = v7;
  v18 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  v19 = v10;
  v17 = v11;
  v20 = a3;
  v12 = [UIAlertAction actionWithTitle:a2 style:0 handler:&v13];
  [v8 addAction:{v12, v13, v14, v15, v16}];
}

uint64_t sub_1002015B8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100201CC8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100201FE8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1002023EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100203DBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _alongsideCompletions];
  [v1 _applyBlocks:?];
}

void sub_10020425C(id *a1)
{
  v2 = [a1[4] redirectController];
  v3 = [a1[5] URL];
  v4 = [v2 handleOAuthRedirectURL:v3];

  if (v4)
  {
    v5 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[5] ef_publicDescription];
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handled OAuth redirect from request %{public}@", buf, 0xCu);
    }

    v7 = a1[6];
    v8 = +[NSNull null];
    [v7 finishWithResult:v8];
  }

  else
  {
    v9 = [a1[5] URL];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [NSError errorWithDomain:NSURLErrorDomain code:-1008 userInfo:v10];

    v11 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [a1[5] ef_publicDescription];
      sub_10048BF2C(v12, buf, v11);
    }

    [a1[6] finishWithError:v8];
  }
}

uint64_t sub_10020485C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

uint64_t sub_100204880(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 1);
  }

  return result;
}

void sub_100205BA0(_Unwind_Exception *a1)
{
  STACK[0x2E8] = v1;

  _Unwind_Resume(a1);
}

void sub_100206784(uint64_t a1, void *a2, char *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) _attributedStringForAddress:v7 appendComma:{objc_msgSend(*(a1 + 48), "count") - 1 > a3}];
  [v5 appendAttributedString:v6];
}

void sub_1002073A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFPriorityLoadingQueue;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100207554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_100207E1C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

void sub_100208518(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[4];
  v7 = [objc_opt_class() localizedStringForAction:a2];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10020862C;
  v10[3] = &unk_100655430;
  v8 = a1[6];
  v10[4] = a1[5];
  v12 = a2;
  v11 = v8;
  v9 = [UIAlertAction actionWithTitle:v7 style:a3 handler:v10];
  [v6 addAction:v9];
}

void sub_1002087B8(uint64_t a1, uint64_t a2)
{
  v4 = [MFReadLaterTriageInteraction localizedStringForAction:a2];
  v5 = *(a1 + 40);
  v12 = @"MailKBRemindMePlistKey";
  v6 = [NSNumber numberWithInteger:a2];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [UICommand commandWithTitle:v4 image:0 action:v5 propertyList:v7];

  v9 = *(a1 + 32);
  if (a2 == 5)
  {
    v10 = 23;
  }

  else
  {
    v10 = 22;
  }

  v11 = [MFMailMenuCommand shortcutWithCommand:v8 menu:v10];
  [v9 addObject:v11];
}

id sub_100208C24(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_class() localizedStringForAction:a2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100208D44;
  v8[3] = &unk_100655480;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = [UIAction actionWithTitle:v4 image:0 identifier:0 handler:v8];

  return v6;
}

void sub_100208D44(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 presentationSourceItem];
  [*(a1 + 32) setPresentationSource:v3];

  [*(a1 + 32) performReadLaterAction:*(a1 + 56) preparation:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_100209088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100209108(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setPresentationSource:v6];
    [v9 setContextualActionHandlerCompletion:v7];
    if ([v9 isRemoveReadLater])
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12.receiver = *(a1 + 32);
      v12.super_class = MFReadLaterTriageInteraction;
      objc_msgSendSuper2(&v12, "_performInteractionAfterPreparation:completion:", v10, v11);
    }

    else if ([v9 isPresentCustom])
    {
      [v9 _presentCustomDatePickerWithPreparation:*(a1 + 40) completion:*(a1 + 48)];
    }
  }
}

void sub_1002092BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1002092F0(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if ([v2 isInitialState])
  {
    v3 = [*(a1 + 32) delegate];
    v4 = [v3 presentingViewControllerForTriageInteraction:*(a1 + 32)];
    v5 = [*(a1 + 32) _alertControllerWithCompletion:*(a1 + 40)];
    v6 = [*(a1 + 32) presentationSource];
    [v5 mf_presentFromViewController:v4 withSource:v6];
  }

  else if ([v2 isCancelled])
  {
    (*(*(a1 + 40) + 16))();
  }

  else if ([v2 shouldPresentCustomDatePicker])
  {
    [*(a1 + 32) _presentCustomDatePickerWithPreparation:0 completion:*(a1 + 40)];
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9.receiver = *(a1 + 32);
    v9.super_class = MFReadLaterTriageInteraction;
    objc_msgSendSuper2(&v9, "_performInteractionAfterPreparation:completion:", v7, v8);
  }
}

void sub_100209410(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_10020986C(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 readLater];
  v3 = v2 != 0;

  return v3;
}

void sub_100209CB8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, a3);
  }
}

BOOL sub_10020A808(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 followUp];
  v3 = v2 != 0;

  return v3;
}

id sub_10020B084(id a1, ECEmailAddressConvertible *a2)
{
  v2 = [(ECEmailAddressConvertible *)a2 stringValue];

  return v2;
}

id sub_10020B0B4(id a1, ECEmailAddressConvertible *a2)
{
  v2 = [(ECEmailAddressConvertible *)a2 stringValue];

  return v2;
}

id sub_10020B0E4(id a1, ECEmailAddressConvertible *a2)
{
  v2 = [(ECEmailAddressConvertible *)a2 stringValue];

  return v2;
}

uint64_t sub_10020B844()
{
  if (qword_1006DD608 != -1)
  {
    sub_10048BF84();
  }

  return byte_1006DD600;
}

void sub_10020B87C(id a1)
{
  v1 = +[UIDevice currentDevice];
  byte_1006DD600 = [v1 _graphicsQuality] == 100;
}

double sub_10020B914(double a1)
{
  v2 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v12[0] = _Q0;
  v12[1] = xmmword_1004FC4C0;
  v13 = 0x4046800000000000;
  result = 45.0;
  while (1)
  {
    v9 = v2 + 1;
    v10 = (v2 + 1);
    if (v10 >= a1)
    {
      break;
    }

    ++v2;
    if (v9 == 4)
    {
      return result;
    }
  }

  result = *(v12 + v2);
  v11 = a1 - v10 + 1.0;
  if (v11 > 0.0)
  {
    return (1.0 - v11) * result + v11 * *(v12 + v2 + 1);
  }

  return result;
}

void sub_10020B9F4()
{
  if (qword_1006DD608 != -1)
  {
    sub_10048BF84();
  }
}

double sub_10020BA5C(double a1)
{
  v1 = a1;
  v2 = exp2f(((v1 + -0.85) * 10.0) / 0.3);
  return atanf(v2) * -0.16;
}

float sub_10020BAAC(double a1, double a2)
{
  if (a2 < 0.0)
  {
    sub_10048BF98();
  }

  v3 = 400000.0 / (a2 + 1.0) + 1500.0;
  v4 = 1.0 - a1;
  v5 = exp2f(((v4 + -1.2275) * 10.0) / 0.745);
  v6 = atanf(v5);
  return (a1 + -0.144999996) * sinf(v6) * v3;
}

void sub_10020C54C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD610;
  qword_1006DD610 = v1;
}

void sub_10020C894(uint64_t a1)
{
  v2 = +[UIPrintInteractionController sharedPrintController];
  [v2 setPrintPageRenderer:*(a1 + 32)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020C9A8;
  v4[3] = &unk_100655638;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  [v2 savePDFToURL:v3 showProgress:0 completionHandler:v4];
}

void sub_10020C9A8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = +[MFScreenshotService log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 ef_publicDescription];
      v10 = a1[4];
      *buf = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error generating screenshot for %{public}@ : %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = +[MFScreenshotService log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Providing screenshot for %@", buf, 0xCu);
    }

    v13 = a1[5];
    v18 = 0;
    v14 = [NSData dataWithContentsOfURL:v13 options:1 error:&v18];
    v8 = v18;
    if (v8)
    {
      v15 = +[MFScreenshotService log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[5];
        v17 = [0 ef_publicDescription];
        *buf = 138412546;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error gathering data from pdf at %@ : %{public}@", buf, 0x16u);
      }
    }

    else
    {
      (*(a1[6] + 16))(CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    }
  }
}

id sub_10020CEC4(id a1, UISearchToken *a2)
{
  v2 = [(UISearchToken *)a2 representedObject];

  return v2;
}

void sub_10020D348(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

id sub_10020D3C8(id a1, UISearchToken *a2)
{
  v2 = [(UISearchToken *)a2 representedObject];

  return v2;
}

BOOL sub_10020D45C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10020D5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

id sub_10020D660(id a1, MUISuggestionToken *a2)
{
  v2 = a2;
  v3 = [(MUISuggestionToken *)v2 image];
  v4 = [(MUISuggestionToken *)v2 title];
  v5 = [UISearchToken tokenWithIcon:v3 text:v4];

  [v5 setRepresentedObject:v2];

  return v5;
}

void sub_10020D6F4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10020D86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFSearchController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10020DC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_10020DED0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD620;
  qword_1006DD620 = v1;
}

id sub_10020ED2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = MDItemMailboxes;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  v5 = +[NSLocale preferredLanguages];
  v6 = [v5 firstObject];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [EMSearchableIndexQuery queryStringForPhrase:v3 attributes:v4 modifiers:0 languages:v7 phraseMatchFormatString:@"*%@*" comparisonOperator:*(a1 + 32)];

  return v8;
}

UIFont *__cdecl sub_10020FF20(id a1)
{
  v1 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0 options:2];
  v2 = [UIFont fontWithDescriptor:v1 size:0.0];

  return v2;
}

UIFont *__cdecl sub_10021001C(id a1)
{
  v1 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0 options:2];
  v2 = [UIFont fontWithDescriptor:v1 size:0.0];

  return v2;
}

double sub_100210254(uint64_t a1)
{
  v1 = [*(a1 + 32) _subtitleFont];
  [v1 _scaledValueForValue:16.0];
  v3 = v2;

  return v3;
}

void sub_100210444(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1002110C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

void sub_100211108(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [NSMutableArray arrayWithArray:a3];
  [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:v6];
}

void sub_1002118CC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v7 = [v6 mutableCopy];

  [v7 removeObjectsAtIndexes:v5];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

void sub_100211DB0(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_100211ED0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100211FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

_UNKNOWN **sub_1002120EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 indexOfObject:a3];
  v9 = [v6 indexOfObject:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = &off_1006743D8;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v13;
    }

    else
    {
      v12 = &off_1006743C0;
    }
  }

  else
  {
    v10 = -1;
    if (v8 >= v9)
    {
      v10 = 1;
    }

    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = [NSNumber numberWithInteger:v11];
  }

  return v12;
}

int64_t sub_1002121D8(id a1, MUISearchSuggestionCategory *a2, MUISearchSuggestionCategory *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (qword_1006DD648 != -1)
  {
    sub_10048C0EC();
  }

  v7 = sub_1002120EC(v5, qword_1006DD640, v4, v6);
  v8 = v7;
  if (!v7)
  {
    if (qword_1006DD658 != -1)
    {
      sub_10048C100();
    }

    v9 = sub_1002120EC(v7, qword_1006DD650, v6, v4);
    v10 = v9;
    if (!v9 || (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[v9 integerValue]), v11 = objc_claimAutoreleasedReturnValue(), v10, (v8 = v11) == 0))
    {
      v12 = [(MUISearchSuggestionCategory *)v4 displayName];
      v13 = [(MUISearchSuggestionCategory *)v6 displayName];
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 localizedCaseInsensitiveCompare:v13]);
    }
  }

  v14 = [v8 integerValue];

  return v14;
}

void sub_100212400(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD630;
  qword_1006DD630 = v1;
}

void sub_10021276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFSearchSuggestionsViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100212AB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100212E64(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained delegate];
  [v7 searchSuggestionsViewController:WeakRetained didSelectSuggestion:v9];

  v8 = [WeakRetained tableView];
  [v8 deselectRowAtIndexPath:v5 animated:1];
}

void sub_100212F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100212FD4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = [a4 cellHelper];
  v7 = [*(a1 + 32) layoutValuesHelper];
  v8 = [v6 cellView];
  [v8 setLayoutValuesHelper:v7];

  v9 = [v11 message];
  [v6 setMessageListItem:v9 style:3 hintsBySnippetZone:0];

  v10 = [*(a1 + 32) scene];
  [v6 setShowsAccessory:1 showingDetail:{objc_msgSend(v10, "isInExpandedEnvironment")}];
}

double sub_100213190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) layoutValuesHelper];
  v5 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (IsAccessibilityCategory)
  {
    v7 = [v3 message];
    v8 = [v7 summary];
    v9 = [*(a1 + 32) tableView];
    [v9 bounds];
    [v4 dynamicRowHeightWithSummary:v8 bounds:?];
    v11 = v10;
  }

  else
  {
    v7 = [v4 topHitsLayoutValues];
    [v7 defaultRowHeight];
    v11 = v12;
  }

  return v11;
}

void sub_10021338C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14[0] = @"MFSuggestionsListIndexKey";
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 row]);
  v14[1] = @"MFSuggestionsRankingIndexKey";
  v15[0] = v8;
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 rankingIndex]);
  v15[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  [v5 userDidInteract];
  v11 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v5 itemID];
    v13 = [v5 messageList];
    [v11 searchSuggestionsViewController:WeakRetained didSelectItemID:v12 messageList:v13 indexInformation:v10];
  }
}

void sub_10021351C(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_100213B14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(*(a1 + 32) + 8) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) setObject:0 forKeyedSubscript:v4];
  }
}

id sub_100214930(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  [*(a1 + 40) currentKeyboardOverlap];
  v5 = [v4 mf_isIndexPathVisible:v3 overlap:?];

  return v5;
}

id sub_100214990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tableViewModel];
  v5 = [v4 sectionAtIndex:{objc_msgSend(v3, "section")}];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:{objc_msgSend(v3, "row")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1002152BC(id a1)
{
  v1 = +[MUISearchSuggestionCategory recentSearchCategory];
  v2 = +[MUISearchSuggestionCategory recentGenericCategory];
  v12[1] = v2;
  v3 = +[MUISearchSuggestionCategory instantAnswersCategory];
  v12[2] = v3;
  v4 = +[MUISearchSuggestionCategory topHitsCategory];
  v12[3] = v4;
  v5 = +[MUISearchSuggestionCategory contactCategory];
  v12[4] = v5;
  v6 = +[MUISearchSuggestionCategory genericCategory];
  v12[5] = v6;
  v7 = +[MUISearchSuggestionCategory documentCategory];
  v12[6] = v7;
  v8 = +[MUISearchSuggestionCategory linkCategory];
  v12[7] = v8;
  v9 = +[MUISearchSuggestionCategory locationCategory];
  v12[8] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:9];
  v11 = qword_1006DD640;
  qword_1006DD640 = v10;
}

void sub_100215430(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_1002154AC(id a1)
{
  v1 = +[MUISearchSuggestionCategory cannedCategory];
  v5[0] = v1;
  v2 = +[MUISearchSuggestionCategory otherCategory];
  v5[1] = v2;
  v3 = [NSArray arrayWithObjects:v5 count:2];
  v4 = qword_1006DD650;
  qword_1006DD650 = v3;
}

void sub_1002156B0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100216544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100216590(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[88] == 1)
    {
      v4 = [WeakRetained delegate];
      v5 = +[_TtC10MobileMail25MFSafetyCheckWhenBlocking shared];
      v6 = [v3 senders];
      v7 = [v6 allObjects];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10021672C;
      v9[3] = &unk_100655A58;
      v8 = v4;
      v10 = v8;
      v11 = v3;
      v12 = *(a1 + 32);
      [v5 presentSafetyCheckIfNeededForEmailAddresses:v7 completion:v9];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void sub_10021672C(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100216834;
  v8[3] = &unk_1006509D8;
  v3 = a2;
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:v8];
}

void sub_1002167FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_100216834(id *a1)
{
  if (a1[4])
  {
    v8 = [a1[5] presentingViewControllerForTriageInteraction:a1[6]];
    if (MUISolariumFeatureEnabled())
    {
      [a1[4] setModalPresentationStyle:7];
      v2 = [a1[6] presentationSource];
      v3 = [a1[4] popoverPresentationController];
      [v3 setSourceItem:v2];

      v4 = a1[6];
      v5 = [a1[4] popoverPresentationController];
      [v5 setDelegate:v4];

      v6 = [a1[7] copy];
      [a1[6] setInteractionCompletion:v6];
    }

    else
    {
      (*(a1[7] + 2))();
    }

    [v8 presentViewController:a1[4] animated:1 completion:0];
  }

  else
  {
    v7 = *(a1[7] + 2);

    v7();
  }
}

void sub_100216B88(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD660;
  qword_1006DD660 = v1;
}

void sub_100216DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100216E2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = +[MFShareAsEMLTriageInteraction log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 ef_publicDescription];
      sub_10048C2AC(v9, buf, v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = +[MFShareAsEMLTriageInteraction log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 contentURL];
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished requesting representation at: %{public}@", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100217058;
    v13[3] = &unk_10064E320;
    v14 = v5;
    v15 = WeakRetained;
    v16 = *(a1 + 32);
    v12 = +[EFScheduler mainThreadScheduler];
    [v12 performBlock:v13];
  }
}

void sub_100217058(uint64_t a1)
{
  v2 = [UIActivityViewController alloc];
  v3 = [*(a1 + 32) contentURL];
  v10 = v3;
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [v2 initWithActivityItems:v4 applicationActivities:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100217218;
  v8[3] = &unk_100655A80;
  v9 = *(a1 + 32);
  [v5 setCompletionWithItemsHandler:v8];
  v6 = [*(a1 + 40) delegate];
  v7 = [v6 presentingViewControllerForTriageInteraction:*(a1 + 40)];

  [v7 presentViewController:v5 animated:1 completion:0];
  (*(*(a1 + 48) + 16))();
}

void sub_100217218(uint64_t a1, uint64_t a2, int a3)
{
  v5 = +[MFShareAsEMLTriageInteraction log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) contentURL];
    v7[0] = 67109378;
    v7[1] = a3;
    v8 = 2114;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished share activity interaction: %{BOOL}d for: %{public}@", v7, 0x12u);
  }
}

void sub_100217450(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD670;
  qword_1006DD670 = v1;
}

void sub_100217850(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100217918;
  v3[3] = &unk_10064D9D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v2 performBlock:v3];
}

void sub_100217918(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:v1];
}

id sub_100217980(uint64_t a1)
{
  [*(a1 + 32) invoke];
  v2 = *(a1 + 40);

  return [v2 cancel];
}

id sub_1002179BC(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = [*(a1 + 56) _presentStoreURL:*(a1 + 40) from:*(a1 + 48)];

  return v2;
}

void sub_100217B38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
  }

  v4 = [*(a1 + 32) BOOLErrorCompletionHandlerAdapter];
  (v4)[2](v4, a2, v5);
}

id sub_100217BF8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1006DD680;
  v7 = qword_1006DD680;
  if (!qword_1006DD680)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100218234;
    v3[3] = &unk_100650760;
    v3[4] = &v4;
    sub_100218234(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100217CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100218014(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[MFStoreController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v5 ef_publicDescription];
      sub_10048C304(v7, v8, buf, v6);
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100218170;
    v11[3] = &unk_10064C660;
    v11[4] = v9;
    v12 = v5;
    [v10 dismissViewControllerAnimated:1 completion:v11];
  }
}

void sub_10021817C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = +[NSNull null];
  [v1 finishWithResult:?];
}

Class sub_100218234(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_1006DD688)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_10021845C;
    v7[4] = &unk_10064C4F8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/Frameworks/StoreKit.framework/StoreKit";
    qword_1006DD688 = _sl_dlopen();
  }

  if (!qword_1006DD688)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *StoreKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFStoreController.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SKStoreProductViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getSKStoreProductViewControllerClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFStoreController.m" lineNumber:22 description:{@"Unable to find class %s", "SKStoreProductViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1006DD680 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10021845C()
{
  result = _sl_dlopen();
  qword_1006DD688 = result;
  return result;
}

void sub_100218718(id *a1)
{
  v2 = [a1[4] presenterProvider];
  v7 = v2[2]();

  if (v7)
  {
    v3 = a1[5];
    v4 = [a1[4] storeClass];
    v5 = [a1[6] URL];
    v6 = [v4 openPossibleStoreURL:v5 presentingFrom:v7];
    [v3 finishWithFuture:v6];
  }

  else
  {
    v5 = [NSError mf_generalRoutingErrorWithDescription:@"MFStoreURLRoute.presenterProvider did not return a presenter." request:a1[6]];
    [a1[5] finishWithError:v5];
  }
}

void sub_100218E50(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD690;
  qword_1006DD690 = v1;
}

void sub_100219280(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100219CAC(id a1)
{
  v1 = [MUISearchSuggestionCategory alloc];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_DATE" value:&stru_100662A88 table:@"Main"];
  v4 = [v1 initWithDisplayName:v3];
  v5 = qword_1006DD6A0;
  qword_1006DD6A0 = v4;

  [qword_1006DD6A0 setImageInstantiationBlock:&stru_100655B58];
  v6 = [UIImage systemImageNamed:MFImageGlyphSearchDate];
  [qword_1006DD6A0 setAtomImage:v6];

  v7 = MSSearchSuggestionCategoryDates;
  v8 = qword_1006DD6A0;

  [v8 setParsecCategory:v7];
}

void sub_100219E1C(id a1)
{
  v1 = [MUISearchSuggestionCategory alloc];
  v5 = +[NSBundle mainBundle];
  v2 = [v5 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_OTHER" value:&stru_100662A88 table:@"Main"];
  v3 = [v1 initWithDisplayName:v2];
  v4 = qword_1006DD6B0;
  qword_1006DD6B0 = v3;
}

void sub_100219F20(id a1)
{
  v1 = [MUISearchSuggestionCategory alloc];
  v5 = +[NSBundle mainBundle];
  v2 = [v5 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_CANNED" value:&stru_100662A88 table:@"Main"];
  v3 = [v1 initWithDisplayName:v2];
  v4 = qword_1006DD6C0;
  qword_1006DD6C0 = v3;
}

NSPredicate *__cdecl sub_10021A124(id a1, MUISearchAtomSuggestion *a2)
{
  v2 = [(MUISearchAtomSuggestion *)a2 title];
  v3 = [EMMessageListItemSearchPredicates spotlightSearchPredicateForValue:v2];

  return v3;
}

EDReceivingAccount *__cdecl sub_10021A1D4(id a1, NSString *a2)
{
  v2 = [MailAccount accountWithUniqueId:a2];

  return v2;
}

void sub_10021A90C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD6D8;
  qword_1006DD6D8 = v1;
}

void sub_10021B170(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10021B4E8(uint64_t a1)
{
  [*(a1 + 32) frame];
  v14 = CGRectOffset(v13, *(a1 + 48), 0.0);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  [*(a1 + 40) frame];
  v16 = CGRectOffset(v15, *(a1 + 48), 0.0);
  v6 = v16.origin.x;
  v7 = v16.origin.y;
  v8 = v16.size.width;
  v9 = v16.size.height;
  [*(a1 + 32) setFrame:{x, y, width, height}];
  v10 = *(a1 + 40);

  return [v10 setFrame:{v6, v7, v8, v9}];
}

void sub_10021B5AC(uint64_t a1)
{
  v2 = [*(a1 + 32) swipeController];
  [v2 resetSwipedItemAnimated:1 completion:*(a1 + 40)];
}

void sub_10021B8A4(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![v7 updateAction])
  {
    v3 = [v7 indexPathAfterUpdate];
    v4 = [v3 item];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [*(a1 + 32) insertedIndexPaths];
      v6 = [v7 indexPathAfterUpdate];
      [v5 addObject:v6];
    }
  }
}

void sub_10021B954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10021C44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFTextSelectionScrollHandler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10021C570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v15;

  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10021C5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleTouchEvents:v3];
}

void sub_10021C9E0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2 && [v2 phase] == 2)
  {
    v3 = *(a1 + 32);
    v4 = v3[3];
    v5 = [v3 scrollView];
    [v4 locationInView:?];
    [v3 _scrollForTouchLocation:?];
  }
}

void sub_10021CB0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10021DA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_10021E3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10021E418(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tabPressUpdated:v3];
}

void sub_10021EB48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10021F62C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setCountForLayout:*(a1 + 32)];
  [v5 setIndexForLayout:a3];
}

void sub_100220524(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v6 = [v9 contentViewType];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v9 borrowedContentView];
    [WeakRetained tiltedTabView:v7 relinquishSnapshotView:v8 forItemAtIndex:a3];
  }

  else
  {
    v8 = [v9 borrowedContentView];
    [WeakRetained tiltedTabView:v7 relinquishContentView:v8 forItemAtIndex:a3];
  }

  [v9 setBorrowedContentView:0];
}

void sub_100220F60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 tiltedTabView:WeakRetained didActivateSpringLoadingForItemAtIndex:*(a1 + 40)];
}

void sub_100220FE4(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    [v5 setFalseShadowEdge:4];
    goto LABEL_5;
  }

  if ([*(*(a1 + 32) + 56) count] - 3 < a3)
  {
LABEL_5:
    [v6 setShadowOpacity:0.2];
    [v6 setShadowRadius:3.0];
  }
}

void sub_100221678(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 closeButton];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    [*(a1 + 40) _closeItem:v8];
    *a4 = 1;
  }
}

void sub_10022283C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a1;
  v7 = a2;
  v8 = a3;
  if (a4 < 1)
  {
    [v10 setFromValue:v8];
    v9 = v7;
  }

  else
  {
    [v10 setFromValue:v7];
    v9 = v8;
  }

  [v10 setToValue:v9];
}

void sub_100222B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1002237E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) borrowedContentView];
  [WeakRetained tiltedTabView:v3 relinquishSnapshotView:v4 forItemAtIndex:*(a1 + 48)];

  v5 = [WeakRetained tiltedTabView:*(a1 + 32) snapshotViewForItemAtIndex:*(a1 + 48)];
  [*(a1 + 40) setContentViewType:1];
  [*(a1 + 40) setBorrowedContentView:v5];
  if ([*(a1 + 32) rotationStyle] != 2)
  {
    v6 = [*(a1 + 32) _currentOrientation];
    v7 = [*(a1 + 40) capturedInterfaceOrientation];
    LOBYTE(v8) = 0;
    v9 = 0;
    v44 = xmmword_1004FC5F0;
    v45 = xmmword_1004FC5E0;
    *&v53.m11 = xmmword_1004FC5E0;
    *&v53.m13 = xmmword_1004FC5F0;
    v10 = 0.0;
    for (i = 1; ; i = v7)
    {
      while (i != v7)
      {
        v8 = (v8 + 1) & 3;
        v10 = v10 + -1.57079633;
        i = *(&v53.m11 + v8);
      }

      if (*(&v53.m11 + v9) == v6)
      {
        break;
      }

      v9 = (v9 + 1) & 3;
      v10 = v10 + 1.57079633;
    }

    *&v12 = -1;
    *(&v12 + 1) = -1;
    *&v53.m41 = v12;
    *&v53.m43 = v12;
    *&v53.m31 = v12;
    *&v53.m33 = v12;
    *&v53.m21 = v12;
    *&v53.m23 = v12;
    *&v53.m11 = v12;
    *&v53.m13 = v12;
    CATransform3DMakeRotation(&v53, v10, 0.0, 0.0, 1.0);
    v13 = [*(a1 + 40) contentClipperView];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v52 = v53;
    CATransform3DGetAffineTransform(&v46, &v52);
    v54.origin.x = v15;
    v54.origin.y = v17;
    v54.size.width = v19;
    v54.size.height = v21;
    v55 = CGRectApplyAffineTransform(v54, &v46);
    width = v55.size.width;
    height = v55.size.height;
    [*(a1 + 40) setCapturedInterfaceOrientation:{objc_msgSend(*(a1 + 32), "_currentOrientation", v55.origin.x, v55.origin.y)}];
    v24 = [*(a1 + 40) capturedInterfaceOrientation];
    LOBYTE(v25) = 0;
    v26 = 0;
    y = CGPointZero.y;
    *&v52.m11 = xmmword_1004FC5E0;
    *&v52.m13 = xmmword_1004FC5F0;
    v28 = 0.0;
    for (j = 1; ; j = v24)
    {
      while (j != v24)
      {
        v25 = (v25 + 1) & 3;
        v28 = v28 + -1.57079633;
        j = *(&v52.m11 + v25);
      }

      if (*(&v52.m11 + v26) == v6)
      {
        break;
      }

      v26 = (v26 + 1) & 3;
      v28 = v28 + 1.57079633;
    }

    *&v30 = -1;
    *(&v30 + 1) = -1;
    *&v52.m41 = v30;
    *&v52.m43 = v30;
    *&v52.m31 = v30;
    *&v52.m33 = v30;
    *&v52.m21 = v30;
    *&v52.m23 = v30;
    *&v52.m11 = v30;
    *&v52.m13 = v30;
    CATransform3DMakeRotation(&v52, v28, 0.0, 0.0, 1.0);
    v31 = *(a1 + 40);
    v48 = *&v52.m31;
    v49 = *&v52.m33;
    v50 = *&v52.m41;
    v51 = *&v52.m43;
    *&v46.a = *&v52.m11;
    *&v46.c = *&v52.m13;
    *&v46.tx = *&v52.m21;
    v47 = *&v52.m23;
    [v31 setContentTransform:&v46];
    [*(a1 + 40) layoutSubviews];
    [v13 setFrame:{CGPointZero.x, y, width, height}];
  }

  v32 = [WeakRetained tiltedTabView:*(a1 + 32) headerViewForItemAtIndex:{*(a1 + 48), v44, v45}];
  [v32 frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [*(a1 + 40) headerView];
  [v41 setFrame:{v34, v36, v38, v40}];

  v42 = [v32 title];
  v43 = [*(a1 + 40) headerView];
  [v43 setTitle:v42];
}

void sub_100223C28(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v7 = [*(a1 + 40) borrowedContentView];
  [v7 setAlpha:1.0];

  v8 = +[UIColor clearColor];
  v2 = [*(a1 + 40) contentClipperView];
  [v2 setBackgroundColor:v8];

  if (([*(a1 + 40) autoresizesContentView] & 1) == 0)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v9 = [*(a1 + 40) contentClipperView];
    [v9 setFrame:{v3, v4, v5, v6}];
  }
}

id *sub_100223D50(id *result, int a2)
{
  if (a2)
  {
    return [result[4] removeFromSuperview];
  }

  return result;
}

void sub_100225414(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8) ^ 1;
  if (*(v2 + 144))
  {
    v3 &= [v2 _indexOfVisibleItem:?] == 0;
  }

  if (v3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 40) headerView];
  [v5 setAlpha:v4];
}

void sub_1002254E4(uint64_t a1)
{
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = *(a1 + 208);
    v1 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v1)
    {
      v2 = *v18;
      do
      {
        for (i = 0; i != v1; i = i + 1)
        {
          if (*v18 != v2)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v17 + 1) + 8 * i);
          v5 = [v4 composePlaceholderView];
          if (v5)
          {
            if (MUISolariumFeatureEnabled())
            {
              v6 = 44.0;
            }

            else
            {
              v6 = 13.0;
            }

            x = 16.0;
            v8 = 16.0;
            if ((MUISolariumFeatureEnabled() & 1) == 0)
            {
              v9 = [v4 closeButtonWrapperView];
              v10 = [v5 navigationBar];
              v11 = [v10 topItem];
              v12 = [v11 leftBarButtonItem];
              v13 = [v12 customView];

              [v13 bounds];
              [v9 convertRect:v13 fromView:?];
              x = v22.origin.x;
              MidY = CGRectGetMidY(v22);

              v8 = MidY + -6.5;
            }

            v15 = [v4 closeButton];
            [v15 setFrame:{x, v8, v6, v6}];
          }
        }

        v1 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v1);
    }
  }
}

void sub_1002261EC(void *a1, int a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = 3.0;
  }

  else
  {
    v4 = -3.0;
  }

  v15 = v3;
  [v3 bounds];
  v5 = [UIBezierPath bezierPathWithRect:?];
  v6 = [v15 layer];
  [v6 setMasksToBounds:0];

  v7 = +[UIColor blackColor];
  v8 = [v7 CGColor];
  v9 = [v15 layer];
  [v9 setShadowColor:v8];

  v10 = [v15 layer];
  LODWORD(v11) = 0.5;
  [v10 setShadowOpacity:v11];

  v12 = [v15 layer];
  [v12 setShadowOffset:{v4, 0.0}];

  v13 = [v5 CGPath];
  v14 = [v15 layer];
  [v14 setShadowPath:v13];
}

id sub_100226380(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

void sub_1002263CC(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setShadowOpacity:0.0];
}

id sub_100226438(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  v2 = [*(a1 + 48) layer];
  [v2 setMasksToBounds:1];

  v3 = [*(a1 + 48) layer];
  [v3 setShadowPath:0];

  v4 = [*(a1 + 56) messageDetailNavController];
  v5 = [v4 view];
  [v5 setAlpha:1.0];

  v6 = +[UIColor mailSplitViewBorderColor];
  [*(a1 + 64) setBorderColor:v6];

  [*(a1 + 72) setConfiguration:*(a1 + 64)];
  v7 = *(a1 + 80);
  v8 = [v7 transitionWasCancelled] ^ 1;

  return [v7 completeTransition:v8];
}

void sub_1002269F4(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  v6 = [*(a1 + 48) view];
  [v6 setFrame:{v2, v3, v4, v5}];
}

id sub_100226AA0(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 48);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

void sub_100226C3C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1002270D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1002273F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100227488(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 displayMode];
}

id sub_1002274F0(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

void sub_10022767C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id sub_100227E44(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    memset(&v6, 0, sizeof(v6));
  }

  CGAffineTransformScale(&v7, &v6, 0.0799999982, 0.0799999982);
  v6 = v7;
  [v3 setTransform:&v6];
  v4 = [*(a1 + 32) layer];
  [v4 setAllowsGroupOpacity:1];

  return [*(a1 + 32) setAlpha:0.0];
}

void sub_100228E18(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD6E8;
  qword_1006DD6E8 = v1;
}

id sub_1002292D8(uint64_t a1)
{
  v2 = [*(a1 + 32) stackContainerView];
  v3 = [v2 subviews];
  [v3 enumerateObjectsWithOptions:0 usingBlock:&stru_100655E48];

  [*(*(a1 + 32) + 48) removeStackedViews:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [v4 _updateBackgroundColor];
}

void sub_10022937C(id a1, UIView *a2, unint64_t a3, BOOL *a4)
{
  v8 = a2;
  v4 = +[UIColor clearColor];
  [(UIView *)v8 setBackgroundColor:v4];

  [(UIView *)v8 setAlpha:0.0];
  v5 = +[UIColor clearColor];
  v6 = [v5 CGColor];
  v7 = [(UIView *)v8 layer];
  [v7 setBorderColor:v6];
}

void sub_100229430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10022A340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFTransferStackViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10022AFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, id location)
{
  objc_destroyWeak((v27 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10022B048(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(EFIsNull + 16))(EFIsNull, v3))
  {
    v4 = +[MFTransferStackViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10048C440(a1, v4);
    }

    v5 = 0;
  }

  else
  {
    v5 = [[MessageContentRepresentationRequest alloc] initWithMessage:v3];
  }

  return v5;
}

void sub_10022B118(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((*(EFIsNotNull + 16))(EFIsNotNull, v3))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  if (v7)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [WeakRetained[2] setObject:v7 forKey:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10022B504(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) messageContentView];
  v5 = [v4 contentRequest];
  v6 = [v5 itemID];
  v7 = [v3 itemID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = +[MFTransferStackViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Content request for message %{public}@ already started", &v14, 0xCu);
    }
  }

  else
  {
    v11 = +[MFTransferStackViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Start content request for message: %{public}@", &v14, 0xCu);
    }

    v13 = [*(a1 + 32) messageContentView];
    [v13 setContentRequest:v3];

    [*(a1 + 32) setStackWrapperViewState:1];
    if (([v3 hasStarted] & 1) == 0)
    {
      [v3 start];
    }
  }
}

void sub_10022B87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_10022BBE8(int a1, void *a2)
{
  v3 = [a2 traitCollection];
  v4 = [v3 layoutDirection] == 1;

  if (v4 != a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id sub_10022BCEC()
{
  v0 = qword_1006DD6F8;
  if (!qword_1006DD6F8)
  {
    v4[0] = SwipeActionNone;
    v4[1] = SwipeActionRead;
    v5[0] = &off_100674420;
    v5[1] = &off_100674438;
    v4[2] = SwipeActionFlag;
    v4[3] = SwipeActionMove;
    v5[2] = &off_100674450;
    v5[3] = &off_100674468;
    v4[4] = SwipeActionTrash;
    v4[5] = SwipeActionArchive;
    v5[4] = &off_100674480;
    v5[5] = &off_100674498;
    v4[6] = SwipeActionAlternateDestructiveAction;
    v5[6] = &off_1006744B0;
    v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
    v2 = qword_1006DD6F8;
    qword_1006DD6F8 = v1;

    v0 = qword_1006DD6F8;
  }

  return v0;
}

void sub_10022BEDC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10022C3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  if (v3)
  {
    v3[2]();
  }
}

void sub_10022C5BC(uint64_t a1)
{
  v2 = [*(a1 + 32) contextualActionHandlerCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) contextualActionHandlerCompletion];
    v3[2](v3, *(a1 + 40));

    v4 = *(a1 + 32);

    [v4 setContextualActionHandlerCompletion:0];
  }
}

uint64_t sub_10022C64C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10022C758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10022C9C0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = [v2 presentingViewControllerForTriageInteraction:*(a1 + 32)];

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10022D380(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  [*(a1 + 32) setPresentationSource:v7];
  [*(a1 + 32) setContextualActionHandlerCompletion:v6];
  [*(a1 + 32) _performInteractionAfterPreparation:*(a1 + 40) completion:*(a1 + 48)];
}

id sub_10022D68C(uint64_t a1)
{
  [*(a1 + 32) setTriggeredFromMenuAction:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _performInteractionAfterPreparation:v3 completion:v4];
}

void sub_10022DB80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dismissHandler];
  v5 = objc_retainBlock(*(a1 + 40));
  if (v4)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10022DC94;
    v10 = &unk_100655FD8;
    v11 = *(a1 + 40);
    v12 = v4;
    v6 = objc_retainBlock(&v7);

    v5 = v6;
  }

  [*(a1 + 32) _performInteractionAfterPreparation:*(a1 + 48) completion:{v5, v7, v8, v9, v10}];
}

void sub_10022DC94(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void sub_10022DEC0(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) updateReason];
  if (v5)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = +[MFWidgetController sharedController];
    [v7 reloadTimelinesWithReason:v5];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, a3);
  }
}

void sub_10022DF98(void *a1, int a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10022E094;
  v7[3] = &unk_10064FB58;
  v9 = a2;
  v4 = a1[5];
  v7[4] = a1[4];
  v8 = v4;
  v5 = [EFDeallocInvocationToken tokenWithLabel:@"Triage Interaction Preparation Continuation" invocationBlock:v7];
  if (a2)
  {
    v6 = a1[6];
    if (v6)
    {
      (*(v6 + 16))(v6, a1[4], v5);
    }
  }
}

void sub_10022E094(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10022E148;
    v3[3] = &unk_100656028;
    v3[4] = *(a1 + 32);
    v2 = objc_retainBlock(v3);
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 32) _performAsynchronousInteractionBoilerplateWithBlock:v2 completion:*(a1 + 40)];
}

void sub_10022E85C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10022EB74(id a1)
{
  v1 = objc_alloc_init(MFUIStateCaptor);
  v2 = qword_1006DD700;
  qword_1006DD700 = v1;
}

id sub_10022ED68(uint64_t a1)
{
  v1 = [*(a1 + 32) mf_window];
  v2 = [v1 recursiveDescription];

  return v2;
}

id sub_10022EFA4(void *a1, int a2)
{
  v2 = sub_10022EFD4(a1, a2, 1.0);

  return v2;
}

id sub_10022EFD4(void *a1, int a2, double a3)
{
  v5 = a1;
  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = v7;
  v9 = sub_10022F330(a3);
  [v8 boundingRectWithSize:33 options:v9 attributes:0 context:{a3 * 40.0, a3 * 19.0}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v43.origin.x = v11;
  v43.origin.y = v13;
  v43.size.width = v15;
  v43.size.height = v17;
  Width = CGRectGetWidth(v43);
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v20 = 19.0;
  if (IsBoldTextEnabled)
  {
    v20 = 21.0;
  }

  v21 = v20 * a3;
  v22 = v20 * a3;
  if (v20 * a3 - Width <= a3 * 10.0)
  {
    UICeilToScale();
    v22 = v23;
  }

  v42.width = v22;
  v42.height = v21;
  UIGraphicsBeginImageContextWithOptions(v42, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v25 = +[UIColor systemBlueColor];
  CGContextSetFillColorWithColor(CurrentContext, [v25 CGColor]);

  v26 = CGPathCreateWithContinuousRoundedRect();
  CGContextAddPath(CurrentContext, v26);
  CGContextFillPath(CurrentContext);
  CGPathRelease(v26);
  UIRectCenteredIntegralRectScale();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (a2)
  {
    CGContextSetBlendMode(CurrentContext, kCGBlendModeClear);
  }

  v35 = sub_10022F330(a3);
  [v8 drawWithRect:33 options:v35 attributes:0 context:{v28, v30, v32, v34, 0}];

  if (a2)
  {
    CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
  }

  v36 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v37 = [v36 _imageThatSuppressesAccessibilityHairlineThickening];

  if (a2)
  {
    v38 = 2;
  }

  else
  {
    v38 = 1;
  }

  v39 = [v37 imageWithRenderingMode:v38];

  return v39;
}

id sub_10022F2FC(void *a1)
{
  v1 = sub_10022EFD4(a1, 1, 4.0);

  return v1;
}

id sub_10022F330(double a1)
{
  v2 = objc_alloc_init(NSMutableParagraphStyle);
  [v2 setLineBreakMode:5];
  [v2 setAllowsDefaultTighteningForTruncation:1];
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = &UIFontWeightBlack;
  if (!IsBoldTextEnabled)
  {
    v4 = &UIFontWeightMedium;
  }

  v5 = *v4;
  v10[0] = NSFontAttributeName;
  v6 = [UIFont systemFontOfSize:a1 * 12.0 weight:v5];
  v11[0] = v6;
  v11[1] = v2;
  v10[1] = NSParagraphStyleAttributeName;
  v10[2] = NSForegroundColorAttributeName;
  v7 = +[UIColor systemWhiteColor];
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

void sub_10022F550(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD710;
  qword_1006DD710 = v1;
}

void sub_10022FE8C(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ALERT_UNSUBSCRIBE_ERROR_TITLE" value:&stru_100662A88 table:@"Main"];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"ALERT_UNSUBSCRIBE_ERROR" value:&stru_100662A88 table:@"Main"];
  v11 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  [v11 addAction:v8];
  v9 = [*(a1 + 32) delegate];
  v10 = [v9 presentingViewControllerForTriageInteraction:*(a1 + 32)];

  [v10 presentViewController:v11 animated:1 completion:0];
}

void sub_100230268(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[MFUnsubscribeAndDeleteTriageInteraction log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      sub_10048C528(v6, v3, &v7);
    }

    [*(a1 + 32) _showErrorAlert:v3];
  }
}

void sub_10023034C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[MFUnsubscribeAndDeleteTriageInteraction log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      sub_10048C580(v6, v3, &v7);
    }

    [*(a1 + 32) _showErrorAlert:v3];
  }
}

void sub_1002306FC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD720;
  qword_1006DD720 = v1;
}

void sub_10023086C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100231088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFUnsubscribeTriageInteraction;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1002314F4(uint64_t a1)
{
  [*(a1 + 32) setShouldAskForConfirmation:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 32);
  v5.super_class = MFUnsubscribeTriageInteraction;
  return objc_msgSendSuper2(&v5, "_performInteractionAfterPreparation:completion:", v2, v3);
}

__CFString *sub_1002315D8(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown Policy (%lu)", a1];
  }

  else
  {
    v2 = off_1006561D0[a1];
  }

  return v2;
}

void sub_1002316E8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD730;
  qword_1006DD730 = v1;
}

void sub_100231C24(uint64_t a1)
{
  v2 = [*(a1 + 32) _prioritizedRoutesForRequest:*(a1 + 40)];
  v3 = *(a1 + 40);
  v5 = v2;
  v4 = [*(a1 + 32) _routeRequest:v3 routes:?];
  [v3 completeWithResultOfFuture:v4];
}

id sub_100231F8C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v5 = [NSError mf_generalRoutingErrorWithDescription:@"Router was deallocated before routing was complete." request:a1[4]];
    v6 = [EFFuture futureWithError:v5];
    goto LABEL_5;
  }

  if ([v3 mf_allowFallbackRouting])
  {
    v5 = [a1[5] ef_tail];
    v6 = [WeakRetained _routeRequest:a1[4] routes:v5];
LABEL_5:
    v7 = v6;

    goto LABEL_9;
  }

  v8 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [a1[4] ef_publicDescription];
    v10 = [v3 ef_publicDescription];
    sub_10048C5D8(v9, v10, v12, v8);
  }

  v7 = [EFFuture futureWithError:v3];
LABEL_9:

  return v7;
}

void sub_100232108(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

int64_t sub_100232280(id a1, MFURLRoute *a2, MFURLRoute *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MFURLRoute *)v4 priority];
  if (v6 <= [(MFURLRoute *)v5 priority])
  {
    v8 = [(MFURLRoute *)v4 priority];
    v7 = v8 < [(MFURLRoute *)v5 priority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_100232444(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD740;
  qword_1006DD740 = v1;
}

void sub_100232940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v24 = v20;

  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 - 72));

  _Unwind_Resume(a1);
}

id sub_1002329A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

void sub_1002329D0(uint64_t a1)
{
  v2 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request completed successfully. Request=%{public}@", &v4, 0xCu);
  }
}

void sub_100232A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [v3 ef_publicDescription];
    sub_10048C648(v5, v6, v7, v4);
  }
}

void sub_100232D90(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD750;
  qword_1006DD750 = v1;
}

void sub_100233694(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD760;
  qword_1006DD760 = v1;
}

id sub_100233B08(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) reverseTransformedValue:a2];

  return v2;
}

void sub_100233B3C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1002349DC(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 32) browseMailboxForActivityPayload:*(a1 + 40) activityType:MSMailActivityHandoffTypeSearch scrollToMessage:0];
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 73) & 1) != 0 || v4)
  {
    [*(a1 + 48) selectDefaultMailboxForActivityRouter:*(a1 + 56)];
  }

  v2 = [*(a1 + 48) splitViewControllerForActivityRouter:*(a1 + 56)];
  if ([v2 displayMode] == 1)
  {
    [v2 showMessageListViewController:1 animated:0 completion:0];
  }

  v3 = [*(a1 + 48) messageListViewControllerForActivityRouter:*(a1 + 56)];
  [v3 beginSearchWithQueryString:*(a1 + 64) scope:0];
}

void sub_100234AF8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setObject:&off_100674510 forKeyedSubscript:@"ceActivityErrorReason"];
    v3 = [NSError mailHandoffErrorWithActivityContextInfo:*(a1 + 32) errorFormat:@"Could not continue Message Display Activity. Unable to find message at URL: %@", *(a1 + 40)];
    [*(a1 + 48) presentAlertForHandoffError:?];
  }
}

void sub_100234BA8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _mailComposeController];
  [v6 handleLargeMessageComposeHandoffWithInputStream:v7 outputStream:v5 error:0];
}

void sub_100234C4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = [*(a1 + 32) _mailComposeController];
  [v9 handleLargeMessageComposeHandoffWithInputStream:v10 outputStream:v7 error:v8];
}

void sub_100234CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10023594C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fileURL];
  v5 = [MFComposeMailMessage legacyMessageWithMessage:*(a1 + 32) mailboxUid:0];
  v6 = [[_MFMailCompositionContext alloc] initWithComposeType:5 originalMessage:*(a1 + 32) legacyMessage:v5];
  v14 = 0;
  v7 = [v4 checkResourceIsReachableAndReturnError:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ReturnToSender success: found a valid document url %{public}@", buf, 0xCu);
    }

    [v6 insertAttachmentWithURL:v4];
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [v8 localizedDescription];
    [v11 returnToSenderErrorHandling:v12 urlError:v13];
  }

  [*(a1 + 56) showComposeWithContext:v6 fromActivityRouter:*(a1 + 40)];
}

void sub_100236520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v29 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002365C0(uint64_t a1)
{
  [*(a1 + 32) beginIgnoringInteractionEvents];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10023666C;
  v5[3] = &unk_10064DE08;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 addInvocationBlock:v5];
}

void sub_10023666C(uint64_t a1)
{
  [*(a1 + 32) endIgnoringInteractionEvents];
  v2 = +[MFUserInteractionAssertion signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "MFUserInteractionAssertion", "", v5, 2u);
  }
}

void sub_100236704(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateWithState:2];
}

void sub_100236984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v17 = v14;

  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_1002369C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) invoke];
  if (WeakRetained)
  {
    WeakRetained[3] = *(a1 + 48);
  }
}

void sub_100236B08(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD780;
  qword_1006DD780 = v1;
}

void sub_100236C2C(uint64_t a1)
{
  v2 = [MFVIPSendersLibrary alloc];
  v5 = [*(a1 + 32) defaultMessageLibrary];
  v3 = [(MFVIPSendersLibrary *)v2 initWithLibrary:?];
  v4 = qword_1006DD790;
  qword_1006DD790 = v3;
}

void sub_10023717C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFVIPSendersLibrary;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1002371B8(uint64_t a1)
{
  v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v2 performSyncBlock:&v3];

  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

void sub_10023726C(uint64_t a1)
{
  ABAddressBookUnregisterChangeCallback();
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 24);

  ABAddressBookUnregisterExternalChangeCallback(v3, sub_1002372D0, v2);
}

id *sub_100237418(id *result)
{
  if (atomic_fetch_add_explicit(result[4] + 6, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    return [result[4] _checkForAddressBookChangesNeedingRevert:1];
  }

  return result;
}

void sub_100238448(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = [*(a1 + 32) userProfileProvider];
  v36 = [v3 accountsEmailAddresses];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = *&v36;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "starting to/cc migration, email addresses: %@", buf, 0xCu);
  }

  v50 = 1;
  v32 = +[MFMailMessageLibrary defaultInstance];
  v5 = 0;
  v6 = 0;
  while ((v5 & 1) == 0 && (v50 & 1) != 0)
  {
    context = objc_autoreleasePoolPush();
    v35 = +[NSMutableDictionary dictionary];
    v7 = [v32 storedIntegerPropertyWithName:@"MaxRowIdForMigrationToVersion31"];
    v8 = [v7 longLongValue];

    v33 = [v32 orderedBatchOfMessagesEndingAtRowId:v8 limit:500 success:&v50];
    if (v50 != 1)
    {
      v26 = MFLogGeneral();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "failure during to/cc migration", buf, 2u);
      }

      goto LABEL_43;
    }

    if ([v33 count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v33;
      v9 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v9)
      {
        v37 = *v47;
        do
        {
          v10 = 0;
          v38 = v9;
          do
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v46 + 1) + 8 * v10);
            v12 = [v11 libraryID];
            v13 = [v11 messageFlags];
            v14 = [v11 to];
            v15 = [v11 cc];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v16 = v36;
            v17 = [v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
            v39 = v13;
            v40 = v10;
            v41 = v12;
            v18 = 0;
            v19 = 0;
            if (v17)
            {
              v20 = *v43;
              while (2)
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v43 != v20)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v22 = *(*(&v42 + 1) + 8 * i);
                  if (!v19 && v14 != 0)
                  {
                    v19 = [v14 mf_indexOfRecipientWithEmailAddress:*(*(&v42 + 1) + 8 * i)] != 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if (!v18 && v15 != 0)
                  {
                    v18 = [v15 mf_indexOfRecipientWithEmailAddress:v22] != 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if (v19 && v18)
                  {
                    LOBYTE(v18) = 1;
                    LOBYTE(v19) = 1;
                    goto LABEL_27;
                  }
                }

                v17 = [v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_27:

            v6 = v41;
            v23 = 0x8000000000;
            if (!v19 || (v39 & 0x8000000000) != 0)
            {
              v23 = 0;
            }

            if (v18 && (v39 & 0x10000000000) == 0)
            {
              v24 = v23 | 0x10000000000;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              v25 = [NSNumber numberWithUnsignedLongLong:?];
              [v35 setObject:v25 forKey:v11];
            }

            v10 = v40 + 1;
          }

          while ((v40 + 1) != v38);
          v9 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v9);
      }

      if ([v35 count])
      {
        [v32 updateFlagsForMessagesInPlace:v35 success:&v50];
      }

      if (v50 != 1)
      {
        goto LABEL_44;
      }

      if (v6)
      {
        v26 = [NSNumber numberWithLongLong:v6 - 1];
        [v32 setStoredIntegerPropertyWithName:@"MaxRowIdForMigrationToVersion31" value:v26];
LABEL_43:

LABEL_44:
        v5 = 0;
        goto LABEL_46;
      }
    }

    v5 = 1;
LABEL_46:

    objc_autoreleasePoolPop(context);
  }

  if (v5)
  {
    v27 = MFLogGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "done with to/cc migration, setting ToCcMigrationCompleted default", buf, 2u);
    }

    [v32 setStoredIntegerPropertyWithName:@"MaxRowIdForMigrationToVersion31" value:0];
    v28 = +[NSUserDefaults standardUserDefaults];
    [v28 setBool:1 forKey:@"ToCcMigrationCompleted"];
  }

  v29 = MFLogGeneral();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v54 = v30 - Current;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "to/cc migration took %f ms", buf, 0xCu);
  }
}

id sub_100238B50(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) count] || (result = objc_msgSend(*(*(a1 + 32) + 48), "count")) != 0)
  {
    result = [*(a1 + 32) _clearVIPSenderFlagForSenders:*(*(a1 + 32) + 56) retryFailedSenders:0];
    if (result)
    {
      result = [*(a1 + 32) _setVIPSenderFlagForSenders:*(*(a1 + 32) + 48) retryFailedSenders:0];
      if (result)
      {
        [*(*(a1 + 32) + 48) removeAllObjects];
        [*(*(a1 + 32) + 56) removeAllObjects];
        v3 = *(a1 + 32);

        return [v3 _removePendingVIPChanges];
      }
    }
  }

  return result;
}

id sub_100238D60(uint64_t a1)
{
  [*(*(a1 + 32) + 56) unionSet:*(a1 + 40)];
  [*(*(a1 + 32) + 48) minusSet:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _savePendingVIPChanges_nts];
}

id sub_100238F1C(uint64_t a1)
{
  [*(*(a1 + 32) + 56) minusSet:*(a1 + 40)];
  [*(*(a1 + 32) + 48) unionSet:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _savePendingVIPChanges_nts];
}

void sub_10023912C(uint64_t a1)
{
  v2 = objc_alloc_init(EAEmailAddressSet);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) emailAddresses];
        [v2 unionSet:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _setVIPSenderFlagForSenders:v2 retryFailedSenders:1];
}

void sub_100239298(uint64_t a1)
{
  v2 = objc_alloc_init(EAEmailAddressSet);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) emailAddresses];
        [v2 unionSet:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _clearVIPSenderFlagForSenders:v2 retryFailedSenders:1];
}

void sub_1002397D8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_100239E34(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10023A16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10023A1CC(uint64_t a1, void *a2)
{
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = [UIFont fontWithDescriptor:*(a1 + 32) size:0.0];
  v5 = [v22 textProperties];
  [v5 setFont:v4];

  if (WeakRetained && [WeakRetained sectionCount] >= 2)
  {
    v6 = WeakRetained[1];
    if ([*(a1 + 40) section])
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"VIP_ALERTS" value:&stru_100662A88 table:@"Main"];
      [v22 setText:v8];

      v9 = [*(a1 + 48) tintColor];
      v10 = [v22 textProperties];
      [v10 setColor:v9];

      v11 = [v22 textProperties];
      [v11 setAlignment:1];
    }

    else
    {
      v12 = [*(a1 + 40) row];
      if (v12 != [v6 count])
      {
        v17 = [v6 objectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
        v18 = [v17 name];
        [v22 setText:v18];

        v19 = +[UIColor labelColor];
        v20 = [v22 textProperties];
        [v20 setColor:v19];

        v21 = [v22 textProperties];
        [v21 setAlignment:4];

        [*(a1 + 56) setAccessoryType:1];
        [*(a1 + 56) setShouldDisableWhileEditing:0];

        goto LABEL_6;
      }

      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"VIP_ADD_PERSON" value:&stru_100662A88 table:@"Main"];
      [v22 setText:v14];

      v15 = [*(a1 + 48) tintColor];
      v16 = [v22 textProperties];
      [v16 setColor:v15];

      if ([v6 count])
      {
        v11 = [v22 textProperties];
        [v11 setAlignment:4];
      }

      else
      {
        v11 = [v22 textProperties];
        [v11 setAlignment:1];
      }
    }

    [*(a1 + 56) setShouldDisableWhileEditing:1];
LABEL_6:
  }
}

id sub_10023A818(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v2 = *(a1 + 48);
  v5 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:100];

  return [*(a1 + 32) _dismissIfNeeded];
}

void sub_10023A8EC(uint64_t a1)
{
  v2 = +[VIPManager defaultInstance];
  [v2 deleteVIPWithIdentifier:*(a1 + 32)];
}

void sub_10023B668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10023B6E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addNewVIPSender];
}

void sub_10023BAA4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10023C37C(uint64_t a1)
{
  v3 = [*(a1 + 32) errorOnlyCompletionHandlerAdapter];
  v2 = [*(a1 + 40) _routeVIPMessagesURL:*(a1 + 48)];
  v3[2](v3, v2);
}

void sub_10023C410(uint64_t a1)
{
  v4 = [*(a1 + 32) scene];
  v2 = [v4 mailboxPickerController];
  [v2 showVIPSettingsAnimated:1];

  v3 = *(a1 + 40);
  v5 = +[NSNull null];
  [v3 finishWithResult:?];
}

id sub_10023C4C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mf_request];

  v5 = v3;
  if (!v4)
  {
    v6 = [NSError mf_routingErrorWithUnderlyingError:v3 request:*(a1 + 32) allowFallbackRouting:1];

    v5 = v6;
  }

  v7 = [EFFuture futureWithError:v5];

  return v7;
}

void sub_10023CF5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id +[NSError mf_blockedURLErrorWithRequest:](id a1, SEL a2, id a3)
{
  v3 = [a1 _mf_errorWithCode:6000001 request:a3 underlyingError:0 allowFallbackRouting:0 debugDescription:0];

  return v3;
}

void sub_10023DDB8(id a1)
{
  [NSError ef_setDecoder:&stru_100656408 forDomain:@"MFURLRoutingErrorDomain"];

  [NSError setUserInfoValueProviderForDomain:@"MFURLRoutingErrorDomain" provider:&stru_100656448];
}

NSString *__cdecl sub_10023DE14(id a1, int64_t a2)
{
  if ((a2 - 6000000) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100656468 + a2 - 6000000);
  }
}

id sub_10023DE40(id a1, NSError *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(NSString *)v5 isEqualToString:NSDebugDescriptionErrorKey]&& (v6 = [(NSError *)v4 code], (v6 - 6000001) < 3))
  {
    v7 = *(&off_100656488 + (v6 - 6000001));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

NSString *__cdecl sub_10023E2CC(id a1, int64_t a2)
{
  if ((a2 - 5000000) >= 5)
  {
    v3 = [NSString stringWithFormat:@"Unknown restoration state error code: %li", a2];
  }

  else
  {
    v3 = off_1006564E0[a2 - 5000000];
  }

  return v3;
}

void sub_10023E964(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [*(a1 + 32) ef_subarrayWithRange:{a2, a3}];
  if (a3)
  {
    v11 = v6;
    v7 = *(a1 + 32);
    if (a2)
    {
      v8 = [v7 objectAtIndexedSubscript:a2 - 1];
      v9 = [[OrderedCollectionGroupedInsertion alloc] initWithType:1 insertions:v11 associatedObject:v8];
    }

    else
    {
      if (a3 == [v7 count])
      {
        v10 = [[OrderedCollectionGroupedInsertion alloc] initWithType:0 insertions:v11 associatedObject:0];
LABEL_8:
        [*(a1 + 40) addObject:v10];

        v6 = v11;
        goto LABEL_9;
      }

      v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      v9 = [[OrderedCollectionGroupedInsertion alloc] initWithType:2 insertions:v11 associatedObject:v8];
    }

    v10 = v9;

    goto LABEL_8;
  }

LABEL_9:
}

id sub_10023EAB8(uint64_t a1)
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

id sub_10023EB58(void *a1)
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

void sub_10023EC18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10023EDA0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10023F0C0(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = qword_1006DD7B0;
  qword_1006DD7B0 = v1;
}

void sub_10023FB80(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1002400F8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD7C0;
  qword_1006DD7C0 = v1;
}

void sub_100240C00(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100240E0C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained actionBlock];
    (v5)[2](v5, 1, v6);
  }
}

void sub_10024115C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [*(a1 + 32) messageList];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002412AC;
  v9[3] = &unk_10064C7E8;
  v8 = v4;
  v10 = v8;
  [v5 _deleteItemsWithIDs:v6 fromCollection:v7 completionHandler:v9];
}

void sub_100241510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

id sub_100241578(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v8 section])
  {
    v11 = +[MessageListTableViewCell reusableIdentifier];
    v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v8];

    [WeakRetained _configureCell:v12 itemID:v9];
  }

  else
  {
    v12 = [v7 dequeueReusableCellWithIdentifier:@"PreviousDraftPickerNewMessageCellIdentifier" forIndexPath:v8];
    [v12 mf_updateContentConfigurationWithBlock:&stru_100656570];
  }

  return v12;
}

void sub_1002416B4(id a1, UIListContentConfiguration *a2)
{
  v7 = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PREVIOUS_DRAFT_PICKER_NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
  [(UIListContentConfiguration *)v7 setText:v3];

  v4 = +[UIColor mailInteractiveColor];
  v5 = [(UIListContentConfiguration *)v7 textProperties];
  [v5 setColor:v4];

  v6 = [(UIListContentConfiguration *)v7 textProperties];
  [v6 setAlignment:1];
}

void sub_1002417CC(uint64_t a1)
{
  v2 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v3 = [*(a1 + 32) composeSection];
  v12[0] = v3;
  v4 = [*(a1 + 32) collectionHelper];
  v5 = [v4 section];
  v12[1] = v5;
  v6 = [NSArray arrayWithObjects:v12 count:2];
  [v2 appendSectionsWithIdentifiers:v6];

  v7 = [[EMObjectID alloc] initAsEphemeralID:1];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [*(a1 + 32) composeSection];
  [v2 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v9];

  v10 = [*(a1 + 32) tableViewDataSource];
  [v10 applySnapshot:v2 animatingDifferences:0];
}

void sub_100241D18(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 itemID];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) setOutgoingMailbox:1];
    [*(a1 + 40) setInbox:0];
    [*(a1 + 40) setDisclosureEnabled:0];
    [*(a1 + 40) setMessageListItem:v5 style:0];
    [*(a1 + 40) setShouldDisplayUnreadAndVIP:0];
    [*(a1 + 40) setShouldAnnotateReplyOrForward:0];
  }
}

void sub_100241DF4(uint64_t a1)
{
  v2 = +[PreviousDraftPickerController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ef_publicDescription];
    sub_10048C964(v3, v4, v5, v2);
  }
}

void sub_10024208C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1002421B8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) collectionHelper];
  [v6 addItemIDs:*(a1 + 40) after:*(a1 + 48) snapshot:v7 section:v5 validateOtherSections:0];
}

void sub_100242358(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) collectionHelper];
  [v6 addItemIDs:*(a1 + 40) before:*(a1 + 48) snapshot:v7 section:v5 validateOtherSections:0];
}

void sub_1002425D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [*(a1 + 40) collectionHelper];
        [v12 moveItemID:v11 after:*(a1 + 48) snapshot:v5 section:v6];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_100242844(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [*(a1 + 40) collectionHelper];
        [v12 moveItemID:v11 before:*(a1 + 48) snapshot:v5 section:v6];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_100242A5C(uint64_t a1)
{
  v1 = [*(a1 + 32) headerView];
  [v1 setLoading:0 immediately:0];
}

void sub_100242B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PreviousDraftPickerController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deletedItemIDs: %{public}@", &v7, 0xCu);
  }

  v6 = [v3 mui_validItemIDsFromExistingItemIDs:*(a1 + 32) updateReason:@"Deleting itemIDS"];
  if ([v6 count])
  {
    [v3 deleteItemsWithIdentifiers:v6];
  }
}

void sub_100242DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_100242E04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) messageList];

  if (v2 == v3)
  {
    v6 = [*(a1 + 40) tableViewDataSource];
    v7 = [*(a1 + 40) collectionHelper];
    v8 = [v7 section];
    v9 = [v7 updateQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100242FF8;
    v14[3] = &unk_1006565C0;
    v15 = v6;
    v18 = *(a1 + 48);
    v16 = v8;
    v20 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v19 = v10;
    v17 = v11;
    v12 = v8;
    v13 = v6;
    dispatch_async(v9, v14);

    v4 = v7;
  }

  else
  {
    v4 = +[PreviousDraftPickerController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) ef_publicDescription];
      sub_10048C9CC(v5, buf, v4);
    }
  }
}

void sub_100242FF8(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshot];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) applySnapshot:v2 animatingDifferences:*(a1 + 72)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100243108;
  v5[3] = &unk_10064D270;
  v3 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:v5];
}

void sub_1002430D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

id sub_100243108(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _updateHeaderViewDraftsState];
}

id sub_100243B10()
{
  if (qword_1006DD7D8 != -1)
  {
    sub_10048CA24();
  }

  v1 = qword_1006DD7D0;

  return v1;
}

void sub_100243EB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1002440F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10024416C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 mailbox];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 sourceType];
    *a4 = 1;
  }
}

void sub_100244310(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_100244B78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048CDE4();
  }

  v5 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:v3];
  v6 = [EFFuture futureWithError:v5];

  return v6;
}

void sub_100244C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048CE30();
  }
}

void sub_100245580(id a1)
{
  v1 = os_log_create("com.apple.mobilemail", "RestorationMailboxSerialization");
  v2 = qword_1006DD7D0;
  qword_1006DD7D0 = v1;
}

void sub_10024577C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100245820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100245910(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_100245940()
{
  if (qword_1006DD7F8 != -1)
  {
    sub_10048D220();
  }

  v1 = qword_1006DD7F0;

  return v1;
}

void sub_100245CE4(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 localizedStringForKey:@"SEARCH_SCOPE_MAILBOX" value:&stru_100662A88 table:@"Main"];
  v3 = [MUISearchSuggestionCategoryScope scopeWithTitle:v2 identifier:MFSearchSuggestionMailboxCategoryScope];

  [v3 setParsecScope:MSSearchScopeMailbox];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SEARCH_SCOPE_CONTENT" value:&stru_100662A88 table:@"Main"];
  v6 = [MUISearchSuggestionCategoryScope scopeWithTitle:v5 identifier:MUISearchSuggestionCategoryContentScope];

  [v6 setParsecScope:MSSearchScopeMessage];
  [v3 setPredicateApplier:&stru_100656668];
  [v6 setPredicateApplier:&stru_100656688];
  v7 = [MUISearchSuggestionCategory alloc];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_MAILBOX" value:&stru_100662A88 table:@"Main"];
  v10 = [v7 initWithDisplayName:v9];
  v11 = qword_1006DD7E0;
  qword_1006DD7E0 = v10;

  [qword_1006DD7E0 setImageInstantiationBlock:&stru_1006566A8];
  v12 = [UIImage systemImageNamed:MFImageGlyphSearchMailbox];
  [qword_1006DD7E0 setAtomImage:v12];

  v14[0] = v3;
  v14[1] = v6;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [qword_1006DD7E0 setScopes:v13];

  [qword_1006DD7E0 setParsecCategory:MSSearchSuggestionCategoryMailboxes];
}

NSPredicate *__cdecl sub_100246004(id a1, SearchMailboxSuggestion *a2)
{
  v2 = [(SearchMailboxSuggestion *)a2 mailboxes];
  v3 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v2];

  return v3;
}

NSPredicate *__cdecl sub_100246074(id a1, SearchMailboxSuggestion *a2)
{
  v2 = [(SearchMailboxSuggestion *)a2 title];
  v3 = [EMMessageListItemSearchPredicates spotlightUserQueryStringPredicateForValue:v2];

  return v3;
}

void sub_10024617C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1002461A8(id a1)
{
  v1 = os_log_create("com.apple.email", "SearchMailboxSuggestion");
  v2 = qword_1006DD7F0;
  qword_1006DD7F0 = v1;
}

id *sub_1002461EC(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = SearchTopHitsSuggestion;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

void sub_100246514(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1002466E8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD800;
  qword_1006DD800 = v1;
}

id *sub_100246A84(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = _SearchTopHitsSuggesterQuery;
    v11 = objc_msgSendSuper2(&v24, "init");
    v12 = v11;
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      *(a1 + 12) = sub_100246C3C(a1, v8);
      v13 = [v9 copy];
      v14 = a1[4];
      a1[4] = v13;

      if (v10)
      {
        v15 = *(v10 + 3);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = [v16 copy];
      v18 = a1[5];
      a1[5] = v17;

      if (v10)
      {
        objc_storeStrong(v12 + 3, *(v10 + 2));
        v19 = *(v10 + 1);
      }

      else
      {
        v23 = a1[3];
        a1[3] = 0;

        v19 = 0;
      }

      objc_storeStrong(v12 + 7, v19);
      v20 = sub_100246D00(a1);
      v21 = a1[6];
      a1[6] = v20;
    }
  }

  return a1;
}

BOOL sub_100246C3C(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 phrase];
    v6 = [v4 inputLanguages];
    v7 = [v5 ef_stringByRemovingQuotesForLanguages:v6];

    a1 = [v7 length] != 0;
  }

  return a1;
}

void sub_100246CC8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_100246D00(id *a1)
{
  if (a1)
  {
    if ([a1[2] phraseKind] == 1)
    {
      v2 = 4;
    }

    else
    {
      v2 = 10;
    }

    v17 = [a1[2] phrase];
    v3 = [EMSearchableIndexTopHitsQuery alloc];
    v16 = a1[2];
    v4 = [v16 spotlightQueryStrings];
    v5 = a1[3];
    v14 = a1[2];
    v15 = v4;
    v6 = [v14 inputLanguages];
    v7 = [v6 firstObject];
    v8 = a1[2];
    v9 = [v8 updatedSuggestion];
    v10 = a1[2];
    v11 = [v10 feedbackQueryID];
    v12 = [v3 initWithSearchString:v17 filterQueries:v15 bundleID:v5 keyboardLanguage:v7 updatedSuggestion:v9 generateSuggestions:1 logDescription:@"Ranked Suggestions" resultLimit:EMTopHitsQueryDefaultLimit suggestionLimit:v2 customFlags:0 feedbackQueryID:v11];

    sub_100246F50(a1, v12);
    sub_1002470C0(a1, v12);
    if ([a1[2] includeTopHitsAndInstantAnswers])
    {
      sub_100247194(a1, v12);
      sub_1002472AC(a1, v12);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100246F50(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 topHitsQuerySuggestionResult];
    objc_initWeak(&location, a1);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002482A4;
    v8[3] = &unk_100656790;
    objc_copyWeak(&v9, &location);
    [v5 addSuccessBlock:v8];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002486AC;
    v6[3] = &unk_10064DEA8;
    objc_copyWeak(&v7, &location);
    [v5 addFailureBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void sub_100247080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v9 - 56));

  _Unwind_Resume(a1);
}

void sub_1002470C0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1002491D4;
    v4[3] = &unk_10064D928;
    objc_copyWeak(&v5, &location);
    [v3 setEmbeddingHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void sub_100247170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 24));

  _Unwind_Resume(a1);
}

void sub_100247194(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 topHitsQueryResult];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100247430;
    v7[3] = &unk_100656740;
    v7[4] = a1;
    [v5 addSuccessBlock:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10024819C;
    v6[3] = &unk_10064D028;
    v6[4] = a1;
    [v5 addFailureBlock:v6];
  }
}

void sub_1002472AC(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 topHitsQueryInstantAnswersResult];
    objc_initWeak(&location, a1);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002487B0;
    v8[3] = &unk_1006567B8;
    objc_copyWeak(v9, &location);
    v9[1] = "_createHandlersForInstantAnswersResultsWithQuery:";
    [v5 addSuccessBlock:v8];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002490E8;
    v6[3] = &unk_10064DEA8;
    objc_copyWeak(&v7, &location);
    [v5 addFailureBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void sub_1002473F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v8 - 72));

  _Unwind_Resume(a1);
}

void sub_100247430(uint64_t a1, void *a2)
{
  v56 = a2;
  v49 = [v56 searchableItemIdentifiers];
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v50 = a1;
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 12) == 1 && (v4 = [v49 count], v3 = *(a1 + 32), v4))
  {
    if (v3)
    {
      v5 = *(v3 + 56);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 messageObjectIDsForSearchableItemIdentifiers:v49];
    v46 = [v7 result];

    v44 = [v46 objectIDs];
    v48 = [v46 objectIDByPersistentID];
    v8 = *(v50 + 32);
    v9 = [v56 matchingHintsByPersistentID];
    v55 = sub_100247D38(v8, v9, v48);

    v10 = +[SearchTopHitsSuggester log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v55 count];
      v12 = [v55 allValues];
      v13 = [v12 firstObject];
      v14 = [EFPrivacy partiallyRedactedDictionary:v13];
      *buf = 134218242;
      v75 = v11;
      v76 = 2112;
      v77 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Snippet Hints] [TopHits] Received (%ld) items: %@", buf, 0x16u);
    }

    v42 = [v56 mailRankingSignalsByPersistentID];
    v15 = objc_alloc_init(NSMutableDictionary);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100247E5C;
    v60[3] = &unk_1006566F0;
    v16 = v48;
    v61 = v16;
    v52 = v15;
    v62 = v52;
    v63 = &v69;
    v64 = &v65;
    [v42 enumerateKeysAndObjectsUsingBlock:v60];
    v17 = objc_alloc_init(NSMutableDictionary);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100247F64;
    v57[3] = &unk_100656718;
    v41 = v16;
    v58 = v41;
    v51 = v17;
    v59 = v51;
    [v49 enumerateObjectsUsingBlock:v57];
    v43 = [EMMessage predicateForMessagesWithObjectIDs:v44];
    v45 = [EMMessageListItemPredicates sortDescriptorForDateAscending:0];
    v18 = [EMQuery alloc];
    v19 = objc_opt_class();
    v73 = v45;
    v20 = [NSArray arrayWithObjects:&v73 count:1];
    v47 = [v18 initWithTargetClass:v19 predicate:v43 sortDescriptors:v20];

    v21 = [EMMessageList alloc];
    v22 = *(v50 + 32);
    if (v22)
    {
      v23 = *(v22 + 56);
    }

    else
    {
      v23 = 0;
    }

    v53 = [v21 initWithQuery:v47 repository:v23];
    v24 = [v53 allItemIDs];
    v25 = [v24 result:0];

    v54 = objc_alloc_init(NSMutableArray);
    for (i = 0; i < [v25 count]; ++i)
    {
      v27 = [v25 objectAtIndexedSubscript:i];
      v28 = sub_1002461EC([SearchTopHitsSuggestion alloc], v53, v27, v56);
      [v28 setMatchingHintsByGlobalMessageID:v55];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v27;
        v30 = [v29 globalMessageID];
        v31 = [NSNumber numberWithLongLong:v30];
        v32 = [v52 objectForKey:v31];
        [v28 setMailRankingSignals:v32];

        v33 = [NSNumber numberWithLongLong:v30];
        v34 = [v51 objectForKey:v33];
        v35 = [NSNumber numberWithUnsignedInteger:i];
        v36 = [v34 isEqual:v35];
        v37 = [v28 mailRankingSignals];
        [v37 setWasReorderedByRecency:v36 ^ 1];
      }

      [v54 addObject:v28];
    }

    v39 = +[SearchTopHitsSuggester log];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v54;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Generated top hits %@", buf, 0xCu);
    }

    v3 = *(v50 + 32);
    v38 = v54;
  }

  else
  {
    v38 = 0;
  }

  v40 = v38;
  sub_10024803C(v3, v38);
  sub_10048D28C(*(v50 + 32), 1, *(v70 + 24), *(v66 + 24));
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
}

void sub_100247AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25)
{
  _Block_object_dispose((v28 - 216), 8);
  _Block_object_dispose((v28 - 184), 8);

  _Unwind_Resume(a1);
}

id sub_100247D38(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_opt_new();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002496EC;
    v11[3] = &unk_1006567E0;
    v12 = v6;
    v8 = v7;
    v13 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = v13;
    a1 = v8;
  }

  return a1;
}

void sub_100247E5C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v6 = v5;
  if (v5)
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 globalMessageID]);
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
    *(*(*(a1 + 48) + 8) + 24) |= [v8 isSyntacticMatch];
    *(*(*(a1 + 56) + 8) + 24) |= [v8 isSemanticMatch];
  }
}

void sub_100247F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    v8 = v5;
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 globalMessageID]);
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];

    v5 = v8;
  }
}

void sub_10024803C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14 = v3;
    os_unfair_lock_lock((a1 + 8));
    v4 = [v14 copy];
    v6 = v4;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = &__NSArray0__struct;
    }

    objc_setProperty_nonatomic_copy(a1, v5, v7, 72);

    v8 = *(a1 + 64);
    if (v8 && (v9 = *(a1 + 80), v8, v9))
    {
      sub_100249214(a1);
      v10 = *(a1 + 72);
      v11 = *(a1 + 64);
      v12 = [v11 arrayByAddingObjectsFromArray:v10];

      v13 = [v12 arrayByAddingObjectsFromArray:*(a1 + 80)];

      os_unfair_lock_unlock((a1 + 8));
      v3 = v14;
      if (!v13)
      {
        goto LABEL_11;
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      os_unfair_lock_unlock((a1 + 8));
    }

    v3 = v14;
  }

LABEL_11:
}

void sub_10024819C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SearchTopHitsSuggester log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 ef_publicDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to generate top hits %@", &v6, 0xCu);
  }

  sub_10024803C(*(a1 + 32), 0);
}

void sub_1002482A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 suggestions];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100248498;
  v12[3] = &unk_100656768;
  v12[4] = WeakRetained;
  v6 = [v5 ef_compactMap:v12];

  v7 = +[SearchTopHitsSuggester log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 ef_mapSelector:"ef_publicDescription"];
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated suggestions %@", buf, 0xCu);
  }

  sub_10024852C(WeakRetained, v6);
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 includeTopHitsAndInstantAnswers];
  if (WeakRetained)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    sub_10048D28C(WeakRetained, 1, 0, 0);
  }
}

void sub_100248448(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_100248498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(v4 + 16) phraseKind] == 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MUISearchAtomSuggestion suggestionFromSpotlightSuggestion:v3 shouldShowAvaters:v5];

  return v6;
}

void sub_10024852C(uint64_t a1, void *a2)
{
  v14 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v3 = [v14 copy];
    v5 = v3;
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = &__NSArray0__struct;
    }

    objc_setProperty_nonatomic_copy(a1, v4, v6, 64);

    if ([*(a1 + 16) includeTopHitsAndInstantAnswers])
    {
      v7 = *(a1 + 72);
      if (!v7 || (v8 = *(a1 + 80), v7, !v8))
      {
        os_unfair_lock_unlock((a1 + 8));
        goto LABEL_13;
      }

      sub_100249214(a1);
      v9 = *(a1 + 72);
      v10 = *(a1 + 64);
      v11 = [v10 arrayByAddingObjectsFromArray:v9];

      v12 = [v11 arrayByAddingObjectsFromArray:*(a1 + 80)];

      v13 = v12;
    }

    else
    {
      v13 = *(a1 + 64);
    }

    os_unfair_lock_unlock((a1 + 8));
    if (v13)
    {
      (*(*(a1 + 32) + 16))();
    }
  }

LABEL_13:
}

void sub_100248658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_1002486AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[SearchTopHitsSuggester log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 ef_publicDescription];
    sub_10048D3A4(v6, v7, v5);
  }

  sub_10024852C(WeakRetained, 0);
  if (WeakRetained)
  {
    sub_10048D28C(WeakRetained, 3, 0, 0);
  }
}

void sub_1002487B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v37 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v38 = v3;
  v40 = objc_alloc_init(NSMutableArray);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [v3 instantAnswersSuggestions];
  v4 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v4)
  {
    v41 = *v47;
    do
    {
      v42 = v4;
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v46 + 1) + 8 * i);
        v7 = [v6 instantAnswer];
        v45 = [v7 messageId];

        if ([v45 length])
        {
          v8 = [v45 integerValue];
          v9 = [EMMessageObjectID alloc];
          v10 = +[EMMailboxScope allMailboxesScope];
          v11 = [v9 initWithGlobalMessageID:v8 mailboxScope:v10];

          if (WeakRetained)
          {
            v12 = WeakRetained[7];
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          v54 = v11;
          v14 = [NSArray arrayWithObjects:&v54 count:1];
          v15 = [v13 messageListItemsForObjectIDs:v14];

          v16 = [v15 firstObject];
          v17 = [v16 result:0];

          v53 = v11;
          v18 = [NSArray arrayWithObjects:&v53 count:1];
          v43 = [EMMessage predicateForMessagesWithObjectIDs:v18];

          v19 = [EMMessageListItemPredicates sortDescriptorForDateAscending:0];
          v20 = [EMQuery alloc];
          v21 = objc_opt_class();
          v52 = v19;
          v22 = [NSArray arrayWithObjects:&v52 count:1];
          v23 = [v20 initWithTargetClass:v21 predicate:v43 sortDescriptors:v22];

          v24 = [EMMessageList alloc];
          v25 = WeakRetained;
          if (WeakRetained)
          {
            v25 = WeakRetained[7];
          }

          v26 = v25;
          v27 = [v24 initWithQuery:v23 repository:v26];

          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v35 = +[NSAssertionHandler currentHandler];
              [v35 handleFailureInMethod:*(v37 + 40) object:WeakRetained file:@"SearchTopHitsSuggester.m" lineNumber:340 description:{@"unexpected class found:%@", objc_opt_class()}];
            }

            v28 = [MUISearchInstantAnswersSuggestion alloc];
            v29 = [v6 instantAnswer];
            v30 = [v28 initWithMessage:v17 instantAnswer:v29 messageList:v27];
            [v40 ef_addOptionalObject:v30];
          }

          else
          {
            v29 = +[SearchTopHitsSuggester log];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v33 = [v6 instantAnswer];
              v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v33 instantAnswersKind]);
              *buf = 138412290;
              v51 = v34;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[instant answers] Unable to fetch itemIDs for instant answer with kind:%@", buf, 0xCu);
            }
          }
        }

        else
        {
          v31 = +[SearchTopHitsSuggester log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[instant answers] Couldn't extract EMGlobalMessageID from messageid in csInstantAnswers from spotlight, so skipping creating messageList", buf, 2u);
          }

          v32 = [MUISearchInstantAnswersSuggestion alloc];
          v11 = [v6 instantAnswer];
          v15 = [v32 initWithInstantAnswer:v11];
          [v40 ef_addOptionalObject:v15];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v4);
  }

  v36 = +[SearchTopHitsSuggester log];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v40;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[instant answers] Generated instantAnswers %@", buf, 0xCu);
  }

  sub_100248EE8(WeakRetained, v40);
}

void sub_100248EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v4 = [v3 copy];
    v6 = v4;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = &__NSArray0__struct;
    }

    objc_setProperty_nonatomic_copy(a1, v5, v7, 80);

    v8 = +[SearchTopHitsSuggester log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 80) count];
      v16 = 134217984;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[instant answers] Suggester found instant answers with count: %ld", &v16, 0xCu);
    }

    v10 = *(a1 + 64);
    if (!v10 || (v11 = *(a1 + 72) == 0, v10, v11))
    {
      os_unfair_lock_unlock((a1 + 8));
    }

    else
    {
      sub_100249214(a1);
      v12 = *(a1 + 72);
      v13 = *(a1 + 64);
      v14 = [v13 arrayByAddingObjectsFromArray:v12];

      v15 = [v14 arrayByAddingObjectsFromArray:*(a1 + 80)];

      os_unfair_lock_unlock((a1 + 8));
      if (v15)
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

void sub_1002490E8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[SearchTopHitsSuggester log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 ef_publicDescription];
    sub_10048D3FC(v6, v7, v5);
  }

  sub_100248EE8(WeakRetained, 0);
}

void sub_1002491D4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[13] = a2;
  }
}

void sub_100249214(id *a1)
{
  if (a1)
  {
    v27 = objc_alloc_init(NSMutableArray);
    v1 = objc_alloc_init(NSMutableSet);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v2 = a1[10];
    v3 = [v2 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v3)
    {
      v4 = *v33;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v33 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v32 + 1) + 8 * i);
          v7 = [v6 message];

          if (v7)
          {
            v8 = [v6 messageConversationID];
            [v1 addObject:v8];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v3);
    }

    v9 = +[SearchTopHitsSuggester log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[instant answers] Deduping top hits with instant answer message IDs:%@", buf, 0xCu);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = a1[9];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v11)
    {
      v12 = *v29;
      v13 = EMTopHitsQueryDefaultLimit;
      do
      {
        for (j = 0; j != v11; j = j + 1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * j);
          v16 = [v15 messageConversationID];
          if ([v1 containsObject:v16])
          {

LABEL_24:
            v20 = +[SearchTopHitsSuggester log];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v15 messageConversationID];
              *buf = 138412802;
              v37 = v21;
              v38 = 2112;
              v39 = v1;
              v40 = 2048;
              v41 = v13;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[instant answers][Top Hit] ignoring the top hit with itemID:%@ because it is either matching with instant answer itemIDs:%@ or reached top hits default query limit:%ld", buf, 0x20u);
            }

            continue;
          }

          v17 = [v27 count] < v13;

          if (!v17)
          {
            goto LABEL_24;
          }

          v18 = +[SearchTopHitsSuggester log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v15 messageConversationID];
            *buf = 138412546;
            v37 = v19;
            v38 = 2112;
            v39 = v1;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[instant answers][Top Hit] adding the top hits with itemID:%@ to the final list as it doesn't match with instant answer itemIDs:%@", buf, 0x16u);
          }

          [v27 addObject:v15];
        }

        v11 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v11);
    }

    v22 = [v27 copy];
    objc_setProperty_nonatomic_copy(a1, v23, v22, 72);

    v24 = +[SearchTopHitsSuggester log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = a1[9];
      sub_10048D454(v25, buf, [v25 count], v24);
    }
  }
}

void sub_1002496EC(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v17 = a3;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v17;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:{16, v17}];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 attribute];
        v12 = [EMMessageSnippetHintZoneBuilder snippetHintZoneFromString:v11];

        v13 = [v10 tokens];
        [v5 setObject:v13 forKeyedSubscript:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = [*(a1 + 32) objectForKeyedSubscript:v18];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 globalMessageID]);
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v16];
  }
}

void sub_100249A7C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10024A020(id a1)
{
  v1 = +[EMSmartMailbox em_defaultExcludedMailboxesScope];
  v25 = +[EMSmartMailbox em_inboxMailboxScope];
  v26[0] = &off_100674540;
  v24 = [EMSmartMailbox unreadMailboxWithMailboxScope:v25];
  v27[0] = v24;
  v26[1] = &off_100674558;
  v23 = [EMSmartMailbox includesMeMailboxWithMailboxScope:v25];
  v27[1] = v23;
  v26[2] = &off_100674570;
  v22 = [EMSmartMailbox hasAttachmentsMailboxWithMailboxScope:v25];
  v27[2] = v22;
  v26[3] = &off_100674588;
  v21 = [EMSmartMailbox todayMailboxWithMailboxScope:v25];
  v27[3] = v21;
  v26[4] = &off_1006745A0;
  v20 = +[EMSmartMailbox em_VIPMailbox];
  v27[4] = v20;
  v26[5] = &off_1006745B8;
  v19 = +[EMSmartMailbox em_flaggedMailbox];
  v27[5] = v19;
  v26[6] = &off_1006745D0;
  v18 = [EMSmartMailbox orangeMailboxWithMailboxScope:v1];
  v27[6] = v18;
  v26[7] = &off_1006745E8;
  v17 = [EMSmartMailbox redMailboxWithMailboxScope:v1];
  v27[7] = v17;
  v26[8] = &off_100674600;
  v16 = [EMSmartMailbox purpleMailboxWithMailboxScope:v1];
  v27[8] = v16;
  v26[9] = &off_100674618;
  v15 = [EMSmartMailbox blueMailboxWithMailboxScope:v1];
  v27[9] = v15;
  v26[10] = &off_100674630;
  v14 = [EMSmartMailbox yellowMailboxWithMailboxScope:v1];
  v27[10] = v14;
  v26[11] = &off_100674648;
  v13 = [EMSmartMailbox greenMailboxWithMailboxScope:v1];
  v27[11] = v13;
  v26[12] = &off_100674660;
  v2 = [EMSmartMailbox grayMailboxWithMailboxScope:v1];
  v27[12] = v2;
  v26[13] = &off_100674678;
  v3 = [EMSmartMailbox notifyThreadsMailboxWithMailboxScope:v1];
  v27[13] = v3;
  v26[14] = &off_100674690;
  v4 = [EMSmartMailbox muteThreadsMailboxWithMailboxScope:v1];
  v27[14] = v4;
  v26[15] = &off_1006746A8;
  v5 = +[EMSmartMailbox em_readLaterMailbox];
  v27[15] = v5;
  v26[16] = &off_1006746C0;
  v6 = +[EMSmartMailbox em_followUpMailbox];
  v27[16] = v6;
  v26[17] = &off_1006746D8;
  v7 = +[LocalAccount localAccount];
  v8 = [v7 sendLaterFolder];
  v9 = [v8 URL];
  v10 = [EMSmartMailbox em_scopedSendLaterMailboxWithMailboxURL:v9];
  v27[17] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:18];
  v12 = qword_1006DD820;
  qword_1006DD820 = v11;
}

void sub_10024A8CC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setBadgeCount:{objc_msgSend(v3, "integerValue")}];
  v4 = sub_1000203A0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) mailbox];
    v6 = 138412546;
    v7 = v3;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting badge count to %@ for smart mailbox: %{public}@", &v6, 0x16u);
  }
}

void sub_10024AA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SharedMailboxController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10024B00C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10024B4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 96) assertIsExecuting:1];
  v4 = *(a1 + 40);
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 daemonInterface];
  v7 = [v6 accountRepository];
  v8 = [EMFocusController updatedPredicateForFocus:v3 currentPredicate:v4 usingAccountRepository:v7];

  v9 = [EMQuery alloc];
  v10 = objc_opt_class();
  v11 = [*(a1 + 32) mailbox];
  v12 = [v11 name];
  v13 = [v9 initWithTargetClass:v10 predicate:v8 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v12];

  v14 = +[UIApplication sharedApplication];
  v15 = [v14 daemonInterface];
  v16 = [v15 messageRepository];
  v17 = [*(a1 + 32) serverCountMailboxScope];
  v18 = [v16 startCountingQuery:v13 includingServerCountsForMailboxScope:v17 withObserver:*(a1 + 32)];

  v19 = sub_1000203A0();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = *(a1 + 48);
    v25 = 138544130;
    v26 = v20;
    v27 = 2114;
    v28 = v18;
    v29 = 2048;
    v30 = v8;
    v31 = 2114;
    v32 = v21;
    v22 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ starting query: unreadCountToken:%{public}@ scopePredicate: %p added to token %{public}@", &v25, 0x2Au);
  }

  v23 = sub_1000203A0();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 48);
    v25 = 138543618;
    v26 = v24;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Added cancelable %{public}@ - %{public}@", &v25, 0x16u);
  }

  [*(a1 + 48) addCancelable:v18];
  [*(a1 + 32) setUnreadCountToken:v18];
}

id sub_10024B9C4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithBool:a2];
  v5 = sub_10000C96C(v3, v4);

  v6 = [v5 BOOLValue];
  return v6;
}

BOOL sub_10024BA68(int a1)
{
  v2 = dword_1006D5B2C;
  if (dword_1006D5B2C < 0 || a1)
  {
    v2 = sub_10024B9C4(CollapseReadConversationMessagesKey, 1);
    dword_1006D5B2C = v2;
  }

  return v2 != 0;
}

id sub_10024BAB8(int a1)
{
  v2 = qword_1006DD840;
  if (qword_1006DD840)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = sub_10000C96C(IncludeAttachmentRepliesKey, IncludeAttachmentRepliesWhenAdding);
    v5 = [v4 copy];
    v6 = qword_1006DD840;
    qword_1006DD840 = v5;

    v2 = qword_1006DD840;
  }

  return v2;
}

id sub_10024BB48(int a1)
{
  os_unfair_lock_lock(&unk_1006DD850);
  v2 = qword_1006DD848;
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
    v5 = sub_10000C96C(RightSwipeActionKey, SwipeActionRead);

    if (qword_1006DD848 != v5)
    {
      objc_storeStrong(&qword_1006DD848, v5);
    }
  }

  os_unfair_lock_unlock(&unk_1006DD850);

  return v5;
}

id sub_10024BC14(int a1)
{
  os_unfair_lock_lock(&unk_1006DD860);
  v2 = qword_1006DD858;
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
    v5 = sub_10000C96C(LeftSwipeActionKey, SwipeActionFlag);

    if (qword_1006DD858 != v5)
    {
      objc_storeStrong(&qword_1006DD858, v5);
    }
  }

  os_unfair_lock_unlock(&unk_1006DD860);

  return v5;
}

double sub_10024BCE0(uint64_t a1)
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

double sub_10024BD78(uint64_t a1)
{
  v2 = sub_10024BCE0(a1) + -9.5;
  v3 = -32.0;
  if (a1)
  {
    v3 = -23.0;
  }

  return v2 + v3 * 0.5;
}

__CFString *sub_10024EB3C(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1006568F0[a1];
  }
}

uint64_t (**sub_10024F7FC(void *a1))(id, _BOOL8)
{
  v2 = a1[4];
  if (*(v2 + 48))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 56) == a1[6];
  }

  result = a1[5];
  if (result)
  {
    result = result[2](result, v3);
  }

  if (v3)
  {
    v5 = a1[6];
    v6 = a1[4];

    return [v6 setCurrentState:v5];
  }

  return result;
}

id *sub_10024F964(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] setAlpha:0.0];
  }

  return result;
}

id sub_10024FC4C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 fullsizeTransform];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [v3 setTransform:v5];
  result = [*(a1 + 32) setAlpha:1.0];
  if (*(a1 + 48) == 1)
  {
    return [*(a1 + 40) setDimmed:0 animated:*(a1 + 49)];
  }

  return result;
}

void sub_10024FCD8(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setShouldRasterize:0];
}

id sub_10024FEC8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 fullsizeTransform];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v3 = *(a1 + 32);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  [v3 setTransform:v6];
  v4 = [*(a1 + 32) layer];
  [v4 setBorderWidth:0.0];

  result = [*(a1 + 32) setAlpha:1.0];
  if (*(a1 + 48) == 1)
  {
    return [*(a1 + 40) setDimmed:1 animated:*(a1 + 49)];
  }

  return result;
}

id sub_1002500B4(uint64_t a1)
{
  result = [*(a1 + 32) updateItemView:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 49);

    return [v3 setDimmed:0 animated:v4];
  }

  return result;
}

id sub_100250234(uint64_t a1)
{
  [*(a1 + 32) updateItemView:*(a1 + 40) onStack:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setDimmed:0 animated:v3];
}

id *sub_100250494(id *result)
{
  if (*(result + 48) == 1)
  {
    return [result[4] updateItemView:result[5]];
  }

  return result;
}

id sub_100250734(uint64_t a1)
{
  result = [*(a1 + 32) updateItemView:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 49);

    return [v3 setDimmed:0 animated:v4];
  }

  return result;
}

id sub_1002514CC(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 152);
  v10[4] = *(a1 + 136);
  v10[5] = v2;
  v3 = *(a1 + 184);
  v10[6] = *(a1 + 168);
  v10[7] = v3;
  v4 = *(a1 + 88);
  v10[0] = *(a1 + 72);
  v10[1] = v4;
  v5 = *(a1 + 120);
  v10[2] = *(a1 + 104);
  v10[3] = v5;
  [*(a1 + 32) setTransform3D:v10];
  v6 = *(a1 + 200);
  v7 = *(a1 + 208);
  v8 = [*(a1 + 32) layer];
  [v8 setAnchorPoint:{v6, v7}];

  return [*(a1 + 32) layoutIfNeeded];
}

id sub_100251584(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  v2 = *(a1 + 40);

  return [v2 setTransitioningDelegate:0];
}

void sub_1002518B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10025200C(uint64_t a1)
{
  v1 = [*(a1 + 32) tiltedTabView];
  [v1 layoutItemsAnimated:0];
}

void sub_100252070(uint64_t a1)
{
  v1 = [*(a1 + 32) tiltedTabView];
  [v1 updateSnapshotsIfNecessary];
}

void sub_100253068(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD878;
  qword_1006DD878 = v1;
}

void sub_10025318C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1006DD888;
  qword_1006DD888 = v1;
}

int64_t sub_100253840(id a1, EMMessageListItem *a2, EMMessageListItem *a3)
{
  v4 = a3;
  v5 = [(EMMessageListItem *)a2 date];
  v6 = [(EMMessageListItem *)v4 date];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_1002538B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100253930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TransferMailboxPickerController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100254270(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1002548D0(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MFMessageScreenshotConfiguration);
  [(MFMessageScreenshotConfiguration *)v4 setSize:320.0, 400.0];
  v5 = [a1[4] view];
  [v5 layoutMargins];
  [(MFMessageScreenshotConfiguration *)v4 setMargins:?];

  v6 = [a1[4] traitCollection];
  [(MFMessageScreenshotConfiguration *)v4 setTraitCollection:v6];

  [(MFMessageScreenshotConfiguration *)v4 setShowSourceMailbox:1];
  [(MFMessageScreenshotConfiguration *)v4 setShowBanners:0];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100254A4C;
  v8[3] = &unk_100656998;
  objc_copyWeak(&v9, a1 + 6);
  [WeakRetained generateScreenshotViewForMessage:v3 configuration:v4 completion:v8];

  objc_destroyWeak(&v9);
}

void sub_100254A10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  _Unwind_Resume(a1);
}

void sub_100254A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setMessageThumbnailWithView:v5];

    v3 = v5;
  }
}

void sub_1002551CC(void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v6 = [a1 view];
  [v6 setUserInteractionEnabled:1];

  [a1 saveScrollOffset];
  v7 = [a1 currentTransferContext];
  v8 = v7;
  if (a2)
  {
    if (!v7)
    {
      v9 = +[TransferMailboxPickerController log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10048D538(v9);
      }
    }

    v10 = [a1 scene];
    v11 = [v10 daemonInterface];
    v12 = [v11 mailboxRepository];
    v13 = [v8 mailboxURLString];
    [v12 recordFrecencyEventWithMailboxURLString:v13];

LABEL_12:
    goto LABEL_13;
  }

  if (v7)
  {
    v11 = +[TransferMailboxPickerController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10048D4F4(v11);
    }

    v10 = v8;
    v8 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v14 = [a1 didFinish];
  if (v14)
  {
    v15 = [v8 mailbox];
    v16 = [v8 messageListItems];
    (v14)[2](v14, a3, v15, v16);
  }

  [a1 setCurrentTransferContext:0];
}

void sub_1002553D8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 mailboxProvider];
    v6 = [v5 mailboxFromLegacyMailbox:v3];

    if (v6)
    {
      v7 = [NSSet setWithArray:a1[1]];
      v8 = [TransferMailboxContext alloc];
      v9 = [v3 URLString];
      v10 = [(TransferMailboxContext *)v8 initWithMailbox:v6 mailboxURLString:v9 messageListItems:v7];
      [a1 setCurrentTransferContext:v10];

      if ([v6 isTrashMailbox] && objc_msgSend(v7, "count") >= 0xC9)
      {
        v11 = +[TransferMailboxPickerController signpostLog];
        v12 = [a1 signpostID];
        if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          v15 = 134217984;
          v16 = [v7 count];
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v12, "TransferToTrashMailbox", "The user has selected to transfer %lu messages to trash mailbox.", &v15, 0xCu);
        }
      }

      v13 = [a1 willTransferMessages];
      v14 = v13;
      if (v13)
      {
        (*(v13 + 16))(v13, v6, v7);
      }
    }
  }
}

void sub_100255ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100255F24(uint64_t a1)
{
  UIAnimationDragCoefficient();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100256014;
  v8[3] = &unk_10064D9D8;
  v9 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100256084;
  v5[3] = &unk_1006569E8;
  v7 = v9;
  v3 = *(a1 + 32);
  v8[4] = *(a1 + 32);
  v6 = v3;
  return [UIView animateWithDuration:v8 animations:v5 completion:v2 * 0.1];
}

id sub_100256014(uint64_t a1)
{
  result = [*(*(a1 + 32) + 120) frame];
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 120);

    return [v3 setFrame:?];
  }

  return result;
}

void sub_100256084(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(*(a1 + 32) + 120) removeFromSuperview];
    v2 = *(a1 + 32);
    v3 = *(v2 + 120);
    *(v2 + 120) = 0;
  }

  [*(*(a1 + 32) + 88) frame];
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  v9 = *(a1 + 32);
  v10 = v9[14];
  v11 = *(*(a1 + 40) + 8);
  v12 = [v9 view];
  [v10 convertPoint:v12 fromView:{*(v11 + 32), *(v11 + 40)}];
  v13 = *(*(a1 + 40) + 8);
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;

  [*(*(a1 + 32) + 88) setSeparatorStyle:1];
  [*(*(a1 + 32) + 88) setFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  [*(*(a1 + 32) + 112) addSubview:*(*(a1 + 32) + 88)];
  v16 = *(a1 + 32);
  v17 = *(v16 + 88);
  *(v16 + 88) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 112);
  *(v18 + 112) = 0;

  v20 = *(a1 + 32);
  if (v20)
  {

    sub_1002551CC(v20, 1, 0);
  }
}

void *sub_1002561E0(void *result)
{
  *(*(result[5] + 8) + 40) = *(*(result[5] + 8) + 40) + -5.0;
  *(*(result[5] + 8) + 56) = *(*(result[5] + 8) + 56) + 10.0;
  if ((result[6] & 1) == 0)
  {
    return [*(result[4] + 120) setFrame:{*(*(result[5] + 8) + 32), *(*(result[5] + 8) + 40), *(*(result[5] + 8) + 48), *(*(result[5] + 8) + 56)}];
  }

  return result;
}

void sub_100256B8C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100256E6C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 - 1;
  if (v4)
  {
    do
    {
      v5 = *(*(*(a1 + 48) + 8) + 24);
      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(a1 + 32);
      }

      v7 = v6;
      [*(a1 + 40) _drawThumbnailInContext:objc_msgSend(v10 view:"CGContext") frame:{v7, v5 * 2.5, *(a1 + 56) - *(a1 + 64) - v5 * 2.5, *(a1 + 72) - (v5 * 2.5 + v5 * 2.5), *(a1 + 64) - (v5 * 2.5 + v5 * 2.5)}];

      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 24);
      *(v8 + 24) = v9 - 1;
    }

    while (v9);
  }
}

NSString *__cdecl sub_1002575E0(id a1, NSString *a2)
{
  v2 = [NSString ef_stringByIsolatingDirectionalityForString:a2];

  return v2;
}

void sub_1002586A4(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

void sub_100258970(id a1)
{
  v1 = os_log_create("com.apple.mobilemail", "CollectionViewDynamicOffset");
  v2 = qword_1006DD898;
  qword_1006DD898 = v1;
}

uint64_t sub_100258E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 frame];
  MinY = CGRectGetMinY(v13);
  [v6 frame];
  if (MinY <= CGRectGetMinY(v14))
  {
    [v5 frame];
    v10 = CGRectGetMinY(v15);
    [v6 frame];
    if (v10 >= CGRectGetMinY(v16))
    {
      v11 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 32) == 0;
    v9 = -1;
  }

  else
  {
    v8 = *(a1 + 32) == 0;
    v9 = 1;
  }

  if (v8)
  {
    v11 = -v9;
  }

  else
  {
    v11 = v9;
  }

LABEL_9:

  return v11;
}

void sub_10025921C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1002599E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100259A28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100259A40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 32) == v7)
  {
    if (a3)
    {
      v11 = v7;
      v8 = [*(a1 + 40) objectAtIndex:a3 - 1];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = v11;
    }

    *a4 = 1;
  }
}

uint64_t sub_10025A24C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_10025A268(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2 == 1)
  {
    [v3 showColumn:v4];
  }

  else
  {
    [v3 hideColumn:v4];
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_10025B204(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10025B70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_10025B8A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10025BFD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10025C0F0;
  v8[3] = &unk_100656B40;
  v13 = *(a1 + 56);
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v14 = *(a1 + 57);
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v8];
}

void sub_10025C0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

id sub_10025C0F0(uint64_t a1)
{
  if ((*(a1 + 64) & 1) != 0 || ![*(a1 + 32) count])
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 65);

    return [v7 _showVIPSettingsFromSelectionTarget:v8 item:v9 animated:v10];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 65);
    v11.receiver = *(a1 + 40);
    v11.super_class = VIPMailboxController;
    return objc_msgSendSuper2(&v11, "presentFromSelectionTarget:item:accessoryTapped:animated:", v2, v3, v4, v5);
  }
}

id sub_10025C66C()
{
  sub_10025C6A0();
  result = sub_10025C704();
  qword_1006D5D18 = result;
  return result;
}

unint64_t sub_10025C6A0()
{
  v2 = qword_1006DC580;
  if (!qword_1006DC580)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC580);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_10025C734()
{
  if (qword_1006D5D10 != -1)
  {
    swift_once();
  }

  return &qword_1006D5D18;
}

void *sub_10025C794()
{
  v1 = *sub_10025C734();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_10025C7CC()
{
  v2 = *sub_10025C734();
  _objc_retain(v2);
  v4 = [v2 accountRepository];
  _objc_release(v2);
  v3 = [v4 receivingAccounts];
  sub_10025C90C();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v4);
  sub_10025C9B0(&qword_1006D6268);
  sub_10025CA1C();
  v1 = _ArrayProtocol.filter(_:)();
  _objc_release(v3);
  return v1;
}

unint64_t sub_10025C90C()
{
  v2 = qword_1006D6260;
  if (!qword_1006D6260)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D6260);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10025C9B0(uint64_t *a1)
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

unint64_t sub_10025CA1C()
{
  v2 = qword_1006D6270;
  if (!qword_1006D6270)
  {
    sub_10025CAA4(&qword_1006D6268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D6270);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10025CAA4(uint64_t *a1)
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

uint64_t sub_10025CB18()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006D5D28);
  sub_1000208F4(v1, qword_1006D5D28);
  return sub_10025CB64();
}

uint64_t sub_10025CB8C()
{
  if (qword_1006D5D20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006D5D28);
}

uint64_t sub_10025CBF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10025CB8C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10025CC78()
{
  if (qword_1006D5D40 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10025CCEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v33 = a1;
  v28 = a2;
  v27 = a3;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v4 = sub_10025C9B0(&unk_1006D9D00);
  v19 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v53 = &v19 - v19;
  v5 = sub_10025C9B0(&qword_1006D6280);
  v20 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v52 = &v19 - v20;
  v48 = 0;
  v21 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v47 = &v19 - v21;
  v22 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v46 = &v19 - v22;
  v23 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v44 = &v19 - v23;
  v41 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v39 = *(v41 - 8);
  v40 = v41 - 8;
  v24 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v48);
  v43 = &v19 - v24;
  v25 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v38 = &v19 - v25;
  v26 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v42 = &v19 - v26;
  v57 = type metadata accessor for LocalizedStringResource();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v30 = *(v54 + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v48);
  v51 = &v19 - v29;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v56 = &v19 - v31;
  v64 = &v19 - v31;
  v61 = v11;
  v62 = v12;
  v63 = v13;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36 = "";
  *&v49[1] = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v48, 1);
  object = v14._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

  _objc_retain(v33);
  v35 = [v33 name];
  v34._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34._object = v15;
  _objc_release(v33);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v34);

  _objc_release(v35);
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v36, v48, v49[1] & 1);
  v37 = v16._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);

  (*(v39 + 16))(v38, v42, v41);
  (*(v39 + 32))(v43, v38, v41);
  (*(v39 + 8))(v42, v41);
  String.LocalizationValue.init(stringInterpolation:)();
  v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v49[1] & 1);
  sub_100015CC0();
  sub_10025D410(v47);
  v58 = 0;
  v59 = 0;
  v60 = *v49 & 0x100;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v54 + 16))(v51, v56, v57);
  (*(v54 + 56))(v52, *&v49[1], *&v49[1], v57);
  v17 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v17 - 8) + 56))(v53, *&v49[1]);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v54 + 8))(v56, v57);
}

uint64_t sub_10025D410@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_10025D4AC()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10025D524()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_10025D5BC()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10025D650(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_10025D68C()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10025D704()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_10025D79C()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10025D830(uint64_t a1)
{

  *(v1 + 16) = a1;
}

id sub_10025D86C()
{
  sub_10025C6A0();
  result = sub_10025C704();
  qword_1006D5D50 = result;
  return result;
}

uint64_t *sub_10025D8A0()
{
  if (qword_1006D5D48 != -1)
  {
    swift_once();
  }

  return &qword_1006D5D50;
}

void *sub_10025D900()
{
  v1 = *sub_10025D8A0();
  _objc_retain(v1);
  return v1;
}

void sub_10025D938()
{
  v0 = *sub_10025D8A0();
  _objc_retain(v0);
  qword_1006EFDB8 = [v0 accountRepository];
  _objc_release(v0);
}

uint64_t *sub_10025D9A0()
{
  if (qword_1006D5D58 != -1)
  {
    swift_once();
  }

  return &qword_1006EFDB8;
}

void *sub_10025DA00()
{
  v1 = *sub_10025D9A0();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_10025DA38(void *a1)
{
  _objc_retain(a1);
  v6 = [a1 objectID];
  _objc_release(a1);
  [v6 representedObjectID];
  _objc_release(v6);
  sub_10025C9B0(&qword_1006D6288);
  if (swift_dynamicCast())
  {
    v3 = v7;
    v4 = v8;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }
}

id sub_10025DBD0(void *a1)
{
  v58 = a1;
  v60 = sub_10025E604;
  v64 = sub_100264354;
  v66 = sub_10026434C;
  v68 = sub_10026434C;
  v71 = sub_1002644E4;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v49 = 0;
  v57 = type metadata accessor for Logger();
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v50 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = v19 - v50;
  v85 = __chkstk_darwin(v58);
  v51 = sub_10025C9B0(&unk_1006D6290);
  v52 = EntityProperty<>.init()();

  v87 = v52;
  v1 = EntityProperty<>.init()();
  v2 = v53;
  v54 = v1;

  v88 = v54;
  v3 = sub_10025CB8C();
  (*(v55 + 16))(v2, v3, v57);
  _objc_retain(v58);
  v62 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = v58;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v61 = 32;
  v4 = swift_allocObject();
  v5 = v63;
  v65 = v4;
  *(v4 + 16) = v60;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v65;
  v72 = v6;
  *(v6 + 16) = v64;
  *(v6 + 24) = v7;
  v74 = sub_10025C9B0(&unk_1006D7720);
  v70 = _allocateUninitializedArray<A>(_:)();
  v73 = v8;

  v9 = v67;
  v10 = v73;
  *v73 = v66;
  v10[1] = v9;

  v11 = v69;
  v12 = v73;
  v73[2] = v68;
  v12[3] = v11;

  v13 = v72;
  v14 = v73;
  v73[4] = v71;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v75, v76))
  {
    v15 = v49;
    v42 = static UnsafeMutablePointer.allocate(capacity:)();
    v41 = sub_10025C9B0(&qword_1006D7290);
    v43 = sub_1002641E8(1);
    v44 = sub_1002641E8(0);
    v45 = &v81;
    v81 = v42;
    v46 = &v80;
    v80 = v43;
    v47 = &v79;
    v79 = v44;
    sub_10026423C(2, &v81);
    sub_10026423C(1, v45);
    v77 = v66;
    v78 = v67;
    sub_100264250(&v77, v45, v46, v47);
    v48 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v77 = v68;
      v78 = v69;
      sub_100264250(&v77, &v81, &v80, &v79);
      v40 = 0;
      v77 = v71;
      v78 = v72;
      sub_100264250(&v77, &v81, &v80, &v79);
      _os_log_impl(&_mh_execute_header, v75, v76, "init with account %@", v42, 0xCu);
      sub_10026429C(v43);
      sub_10026429C(v44);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v75);
  (*(v55 + 8))(v53, v57);
  _objc_retain(v58);
  _objc_retain(v58);
  v86 = v58;
  v32 = v58;
  v33 = v87;
  v34 = v88;
  _objc_retain(v58);
  v35 = [v58 name];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v16;
  _objc_release(v58);
  sub_10025D524();
  _objc_release(v35);
  v38 = [v58 emailAddresses];
  sub_1002644F0();
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v37;
  v36 = sub_10025C9B0(&qword_1006D62A8);
  sub_100264554();
  v39 = Collection.isEmpty.getter();

  _objc_release(v38);
  if ((v39 & 1) != 0 || ((v29 = [v58 identityEmailAddress]) == 0 ? (v26 = 0, v27 = 0) : (v28 = v29, v22 = v29, v23 = objc_msgSend(v29, "stringValue"), v24 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v25 = v17, _objc_release(v22), _objc_release(v23), v26 = v24, v27 = v25), v20 = v27, v21 = v26, !v27))
  {
    v19[1] = v86;
    v19[2] = v87;
    v19[3] = v88;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    sub_10025D704();
  }

  else
  {
    v19[4] = v21;
    v19[5] = v20;
    v82 = v21;
    v83 = v20;
    sub_10025D704();
  }

  _objc_release(v58);
  sub_1002645DC(&v86);
  return v58;
}

uint64_t sub_10025E60C()
{
  sub_10025C7CC();

  v4 = sub_10025C9B0(&qword_1006D6268);
  sub_10025CA1C();
  _ArrayProtocol.filter(_:)();

  v0 = sub_100264654();
  v3 = sub_10025E9D8(sub_10025E97C, 0, v4, &unk_100656DF0, &type metadata for Never, v0, &protocol witness table for Never, v2);

  return v3;
}

uint64_t sub_10025E78C(id *a1)
{
  v7 = *a1;
  _objc_retain(*a1);
  v5 = [v7 objectID];
  _objc_release(v7);
  [v5 representedObjectID];
  _objc_release(v5);
  sub_10025C9B0(&qword_1006D6288);
  if (swift_dynamicCast())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    sub_10025C9B0(&unk_1006D69B0);
    sub_1002688A0();
    v2 = Sequence<>.contains(_:)();

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_10025E97C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  _objc_retain(*a1);
  result = sub_10025DBD0(v5);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_10025E9D8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v50);
  v55 = &v15 - v54;
  v56 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v59);
  v64 = &v15 - v63;
  v65 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v66 = &v15 - v65;
  v67 = dispatch thunk of Collection.count.getter();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = ContiguousArray.init()();
  v33 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v67);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v67 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_24:
    v17 = static Array._allocateUninitialized(_:)();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = dispatch thunk of Collection.subscript.read();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_100268928();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    ContiguousArray.append(_:)();
    dispatch thunk of Collection.formIndex(after:)();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_10025F2BC()
{
  sub_10025C7CC();

  v4 = sub_10025C9B0(&qword_1006D6268);
  sub_10025CA1C();
  _ArrayProtocol.filter(_:)();

  v0 = sub_100264654();
  v3 = sub_10025E9D8(sub_10025E97C, 0, v4, &unk_100656DF0, &type metadata for Never, v0, &protocol witness table for Never, v2);

  return v3;
}

uint64_t sub_10025F448(id *a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v30 = a2;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v33 = *a1;
  v27 = v33;
  v42 = v33;
  v40 = a2;
  v41 = a3;
  v3 = v33;
  v32 = [v33 name];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v4;

  v39[0] = v28;
  v39[1] = v29;
  v37 = v30;
  v38 = v34;
  sub_1002686CC();
  v31 = v39;
  v35 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
  sub_100268744();

  v5 = v33;

  if (v35)
  {
    v24 = 1;
    v25 = v26;
  }

  else
  {
    v21 = v26;
    v16 = [v27 emailAddresses];
    v15 = v16;
    v17 = sub_1002644F0();
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v11;
    __chkstk_darwin(v11);
    v19 = v10;
    v10[2] = v30;
    v10[3] = v6;
    v20 = sub_10025C9B0(&qword_1006D62A8);
    sub_1002687A0();
    v7 = v21;
    v8 = Sequence.contains(where:)();
    v22 = v7;
    v23 = v8;
    if (v7)
    {

      __break(1u);
    }

    else
    {
      v14 = v23;

      sub_100264880();

      v24 = v14;
      v25 = v22;
    }
  }

  v13 = v25;
  v12 = v24;

  return v12 & 1;
}

uint64_t sub_10025F6D8(id *a1, uint64_t a2, uint64_t a3)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *a1;
  v17 = a2;
  v18 = a3;
  v13 = [v19 emailAddressValue];
  if (v13)
  {
    v7 = [v13 stringValue];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v3;
    _objc_release(v13);
    _objc_release(v7);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v15[0] = v10;
  v15[1] = v11;
  v16 = v12;
  if (!v11)
  {
    if (!*(&v16 + 1))
    {
      sub_100268744();
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_100268860(v15, &v14);
  if (!*(&v16 + 1))
  {
    sub_100268744();
LABEL_11:
    sub_100268828();
    v6 = 0;
    goto LABEL_10;
  }

  v5 = static String.== infix(_:_:)();
  sub_100268744();
  sub_100268744();
  sub_100268744();
  v6 = v5;
LABEL_10:

  return v6 & 1;
}

uint64_t sub_10025F910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10025DA38(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10025F9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_10025FAC4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10025FAC4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_10025FC24(uint64_t a1)
{
  v1[9] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[4] = 0;
  v1[6] = 0;
  v1[8] = 0;
  v1[3] = a1;
  return _swift_task_switch(sub_10025FC6C, 0);
}

uint64_t sub_10025FC6C()
{
  v8 = v0[9];
  v0[2] = v0;
  v7 = sub_10025C7CC();
  v0[4] = v7;

  v0[5] = v7;

  *(swift_task_alloc() + 16) = v8;
  v9 = sub_10025C9B0(&qword_1006D6268);
  sub_10025CA1C();
  v10 = _ArrayProtocol.filter(_:)();

  v6[6] = v10;
  v6[7] = v10;
  v1 = sub_100264654();
  v5 = sub_10025E9D8(sub_10025E97C, 0, v9, &unk_100656DF0, &type metadata for Never, v1, &protocol witness table for Never, v4);
  v6[8] = v5;

  v2 = *(v6[2] + 8);

  return v2(v5);
}

uint64_t sub_10025FEDC(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v2[9] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[7] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return _swift_task_switch(sub_10025FF2C, 0);
}

uint64_t sub_10025FF2C()
{
  v9 = v0[10];
  v8 = v0[9];
  v0[4] = v0;
  v7 = sub_10025C7CC();
  v0[5] = v7;

  v0[6] = v7;

  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = sub_10025C9B0(&qword_1006D6268);
  sub_10025CA1C();
  v12 = _ArrayProtocol.filter(_:)();

  v6[7] = v12;
  v6[8] = v12;
  v1 = sub_100264654();
  v5 = sub_10025E9D8(sub_10025E97C, 0, v11, &unk_100656DF0, &type metadata for Never, v1, &protocol witness table for Never, v4);

  v2 = *(v6[4] + 8);

  return v2(v5);
}

uint64_t sub_1002601BC()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10025C7CC();
  v5 = sub_10025C9B0(&qword_1006D6268);
  v1 = sub_100264654();
  v7 = sub_10025E9D8(sub_10025E97C, 0, v5, &unk_100656DF0, &type metadata for Never, v1, &protocol witness table for Never, v6);
  sub_100264880();
  v2 = *(*(v4 + 16) + 8);

  return v2(v7);
}

uint64_t sub_1002602FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_10025FEDC(a2, a3);
}

uint64_t sub_1002603BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v7 = v3 + 16;
  v8 = v3 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    **(v7 + 8) = a1;
    v4 = *(*v8 + 8);
  }

  return v4();
}

uint64_t sub_100260564(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_10025FC24(a1);
}

uint64_t sub_100260618(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_1002607AC(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1002603BC;

  return sub_100260194();
}

uint64_t sub_10026085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_100260618;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100260928(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_1002648AC();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

uint64_t sub_1002609F0()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_100260B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100260C5C()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = 0;
  return _swift_task_switch(sub_100260C88, 0);
}

uint64_t sub_100260C88()
{
  v0[2] = v0;
  v5 = sub_10025C7CC();
  v0[3] = v5;
  v0[4] = v5;
  v6 = sub_10025C9B0(&qword_1006D6268);
  v1 = sub_100264654();
  v8 = sub_10025E9D8(sub_10025E97C, 0, v6, &unk_100656DF0, &type metadata for Never, v1, &protocol witness table for Never, v7);

  v2 = *(*(v4 + 16) + 8);

  return v2(v8);
}

uint64_t sub_100260E28(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1002603BC;

  return sub_100260C5C();
}

uint64_t sub_100260ED8()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.EntitySchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006EFDC0;
  sub_10002094C(v7, qword_1006EFDC0);
  v11 = sub_1000208F4(v7, v6);
  sub_100261018();
  sub_1002610EC();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_100261018()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mail", 4uLL, 1);
  return AssistantSchema.EntitySchema.init(_:)();
}

uint64_t sub_1002610EC()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailAccountEntity", 0x11uLL, 1);
  return AssistantSchema.EntitySchema.init(_:)();
}

uint64_t sub_1002611C4()
{
  if (qword_1006D5D60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006EFDC0);
}

uint64_t sub_100261230@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002611C4();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10026137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = type metadata accessor for ContentSizeCategory();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = type metadata accessor for EnvironmentValues();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  EnvironmentValues.sizeCategory.getter();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_10026150C(uint64_t a1)
{
  v3 = a1;
  v1 = type metadata accessor for ContentSizeCategory();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return EnvironmentValues.sizeCategory.setter();
}

void sub_1002616F4(char a1)
{
  _objc_retain(v1);
  [v1 setFiltersEnabled:a1 & 1];
  _objc_release(v1);
}

void sub_100261774()
{
  _objc_retain(v0);
  [v0 toggleFilters];
  _objc_release(v0);
}

uint64_t sub_100261924(void *a1)
{
  _objc_retain(a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(a1);
  return v3;
}

uint64_t sub_1002619A8()
{
  sub_100268454();
  sub_10026805C();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t sub_1002619E4()
{
  sub_100268454();
  sub_10026805C();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t sub_100261A30()
{
  sub_100268454();
  sub_10026805C();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t sub_100261A80()
{
  sub_100268454();
  sub_10026805C();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100261ACC()
{
  sub_100268554();
  sub_1002685D4();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t sub_100261B08()
{
  sub_100268554();
  sub_1002685D4();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t sub_100261B54()
{
  sub_100268554();
  sub_1002685D4();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t sub_100261BA4()
{
  sub_100268554();
  sub_1002685D4();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100261C3C()
{
  sub_100267E64();
  sub_100267EE4();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t sub_100261C78()
{
  sub_100267E64();
  sub_100267EE4();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t sub_100261CC4()
{
  sub_100267E64();
  sub_100267EE4();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t sub_100261D14()
{
  sub_100267E64();
  sub_100267EE4();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100261D60(uint64_t a1@<X8>)
{
  sub_100261D9C();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_100261E58()
{
  sub_100267B74();
  sub_100267BF4();
  return OptionSet<>.init()();
}

uint64_t sub_10026205C()
{
  sub_100267B74();
  sub_100267BF4();
  return OptionSet<>.formUnion(_:)();
}

uint64_t sub_1002620A0()
{
  sub_100267B74();
  sub_100267BF4();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t sub_1002620E4()
{
  sub_100267B74();
  sub_100267BF4();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t sub_1002622D4()
{
  sub_100267C6C();
  sub_10026805C();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t sub_100262310()
{
  sub_100267C6C();
  sub_10026805C();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t sub_10026235C()
{
  sub_100267C6C();
  sub_10026805C();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t sub_1002623AC()
{
  sub_100267C6C();
  sub_10026805C();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}