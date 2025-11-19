void sub_100002230(uint64_t a1)
{
  v2 = [EKICSPreviewController alloc];
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = [v2 initWithData:v3 eventStore:v4 options:2147483649];

  if (!v5)
  {
    v38[0] = @"previewTitle";
    v25 = [*(a1 + 40) previewTitle];
    v38[1] = @"type";
    v39[0] = v25;
    v26 = [*(a1 + 40) contentType];
    v39[1] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    v24 = [NSError errorWithDomain:@"com.apple.quicklook.ICSItemViewController" code:1 userInfo:v27];

    v28 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v28 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Error while attempting to instantiate ICS preview controller: %@ #AnyItemViewController", buf, 0xCu);
    }

    v29 = *(*(a1 + 56) + 16);
    goto LABEL_12;
  }

  [v5 setAllowsImport:1];
  [v5 setAllowsEditing:0];
  [v5 setAllowsSubitems:0];
  v6 = *(a1 + 48);
  v7 = [v5 viewController];
  [v6 addChildViewController:v7];

  v8 = [*(a1 + 48) view];
  v9 = [v5 viewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v11 = [v5 viewController];
  [v11 didMoveToParentViewController:*(a1 + 48)];

  v12 = [v5 viewController];
  v13 = [v12 view];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [*(a1 + 48) view];
  v34 = @"icsView";
  v15 = [v5 viewController];
  v16 = [v15 view];
  v35 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v18 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[icsView]|" options:0 metrics:0 views:v17];
  [v14 addConstraints:v18];

  v19 = [*(a1 + 48) view];
  v20 = [v5 viewController];
  v21 = [v20 view];
  v33 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v23 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[icsView]|" options:0 metrics:0 views:v22];
  [v19 addConstraints:v23];

  v24 = [v5 viewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v24 eventDetailsScrollView];
  }

  else
  {
    [v24 view];
  }
  v30 = ;
  objc_storeWeak((*(a1 + 48) + 8), v30);

  objc_storeStrong((*(a1 + 48) + 16), v5);
  v31 = *(a1 + 56);
  if (v31)
  {
    v29 = *(v31 + 16);
LABEL_12:
    v29();
  }
}

void sub_10000289C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000028B8(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v7, a1 + 6);
  v4 = a1[4];
  v6 = a1[5];
  v5 = v3;
  QLRunInMainThread();

  objc_destroyWeak(&v7);
}

uint64_t sub_1000029A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained showPreviewViewController:*(a1 + 32)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100002EC0(uint64_t a1)
{
  v5 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [*(a1 + 32) longLongValue], 0);
  v2 = objc_opt_new();
  if (v5)
  {
    [v2 addObject:v5];
  }

  v3 = QLLocalizedDictionaryString();
  v4 = [NSString localizedStringWithFormat:v3, *(*(a1 + 40) + 8)];
  [v2 addObject:v4];

  [*(a1 + 40) setInformation:v2];
}

void sub_1000030A4(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setURL:*(a1 + 32)];
  [*(a1 + 40) setState:*(*(a1 + 40) + 16)];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003178;
  v5[3] = &unk_1000249B0;
  v5[4] = v3;
  v6 = *(a1 + 48);
  [v3 _readArchiveHeadersOfArchiveAtURL:v4 passphrase:0 completionHandler:v5];
}

void sub_100003178(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) _didDetermineArchiveNumberOfContainedFiles:a2];
    v7 = *(*(a1 + 40) + 16);
LABEL_16:
    v7();
    goto LABEL_17;
  }

  if (!v5 || [v5 code] != -1000 || (objc_msgSend(v6, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", DSArchiveServiceErrorDomain), v8, !v9))
  {
    v12 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v12 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Trying to preview a ZIP archive but can't read its header. Error: %@. %@ #ZIPHandling", buf, 0x16u);
    }

    v7 = *(*(a1 + 40) + 16);
    goto LABEL_16;
  }

  v10 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v10 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Trying to preview an encrypted ZIP archive. Error: %@. %@ #ZIPHandling", buf, 0x16u);
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  QLRunInMainThread();

LABEL_17:
}

uint64_t sub_1000033A4(uint64_t a1)
{
  [*(a1 + 32) _showPasswordView];
  [*(a1 + 32) _makePasswordViewFirstResponder];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100003814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003838(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUnarchiveProgress:0];

  if (v6)
  {
    if ([v6 code] == -1000)
    {
      v8 = [v6 domain];
      v9 = [v8 isEqualToString:DSArchiveServiceErrorDomain];

      if (v9)
      {
        v10 = _qlsLogHandle;
        if (!_qlsLogHandle)
        {
          QLSInitLogging();
          v10 = _qlsLogHandle;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = objc_loadWeakRetained((a1 + 32));
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Archive is password protected, will prompt user for password. %@ #ZIPHandling", buf, 0xCu);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_14;
  }

  if (!v5)
  {
LABEL_14:
    if ([v6 code] == 3072 && (objc_msgSend(v6, "domain"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", NSCocoaErrorDomain), v18, v19))
    {
      v20 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v20 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        v22 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412546;
        v31 = v6;
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Archive could not be unarchived because the operation was cancelled. Error: %@. %@ #ZIPHandling", buf, 0x16u);
      }
    }

    else
    {
      v23 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v23 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
        v25 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412546;
        v31 = v6;
        v32 = 2112;
        v33 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Archive could not be unarchived. Error: %@. %@ #ZIPHandling", buf, 0x16u);
      }
    }

    objc_copyWeak(&v29, (a1 + 32));
    v28 = v6;
    QLRunInMainThread();

    objc_destroyWeak(&v29);
    goto LABEL_25;
  }

  v13 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v13 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = objc_loadWeakRetained((a1 + 32));
    *buf = 138412290;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Did successfully unarchive archive. %@ #ZIPHandling", buf, 0xCu);
  }

  v16 = objc_loadWeakRetained((a1 + 32));
  [v16 setUnarchivedItemsFolderURL:v5];

  v17 = objc_loadWeakRetained((a1 + 32));
  [v17 _expandArchiveContentsAtURL:v5];

LABEL_25:
  if (*(a1 + 40) == 1)
  {
    v26 = objc_loadWeakRetained((a1 + 32));
    v27 = [v26 contents];
    [v27 stopAccessingSecurityScopedResource];
  }
}

void sub_100003C50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showCouldNotUnarchiveAlertWithError:*(a1 + 32)];
}

void sub_100003DA4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v16 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 typeIdentifier];
        v12 = [UTType typeWithIdentifier:v11];
        v13 = [v12 isEqual:UTTypeFolder];

        v14 = [v10 filePath];
        v15 = [v14 lastPathComponent];
        LOBYTE(v11) = [v15 hasPrefix:@"."];

        v7 += ((v13 | v11) & 1) == 0;
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100004288(uint64_t a1)
{
  v2 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v2 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ZIP archive has entries. %@ #ZIPHandling", &v7, 0xCu);
  }

  *(*(a1 + 32) + 8) = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = [v4 contents];
  v6 = [v5 _QLUrlFileSize];
  [v4 _updateZipInformationWithZipSize:v6];
}

void sub_1000044FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v15 = *(a1 + 32);
LABEL_3:
    QLRunInMainThread();
    goto LABEL_17;
  }

  if (v5)
  {
    if ([v5 code] == -1000)
    {
      v7 = [v6 domain];
      v8 = [v7 isEqualToString:DSArchiveServiceErrorDomain];

      if (v8)
      {
        v9 = _qlsLogHandle;
        if (!_qlsLogHandle)
        {
          QLSInitLogging();
          v9 = _qlsLogHandle;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          *buf = 138412546;
          v17 = v6;
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not read headers of encrypted ZIP archive. Error: %@. %@ #ZIPHandling", buf, 0x16u);
        }

        v14 = *(a1 + 32);
        goto LABEL_3;
      }
    }
  }

  v11 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v11 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "An error occured while trying to read archive header: %@. %@ #ZIPHandling", buf, 0x16u);
  }

  v13 = [*(a1 + 32) delegate];
  [v13 previewItemViewController:*(a1 + 32) didFailWithError:v6];

LABEL_17:
}

id sub_100004758(uint64_t a1)
{
  [*(a1 + 32) _didDetermineArchiveNumberOfContainedFiles:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _hidePasswordView];
}

void sub_10000528C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 permissionViewControllerWasCancelled:WeakRetained];
  }
}

void sub_100005310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained doneButtonTapped];
}

void sub_1000053FC(uint64_t a1)
{
  v2 = [*(a1 + 32) passwordCell];
  v1 = [v2 textField];
  [v1 becomeFirstResponder];
}

void sub_100005F84(uint64_t a1)
{
  v2 = [*(a1 + 32) passwordCell];
  v1 = [v2 textField];
  [v1 becomeFirstResponder];
}

void sub_100005FE0(uint64_t a1)
{
  v2 = [*(a1 + 32) passwordCell];
  v1 = [v2 textField];
  [v1 becomeFirstResponder];
}

void sub_100006E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006E98(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v5 = [WeakRetained webViewController];
    v6 = [v5 webView];
    v7 = [v6 _isDisplayingPDF];

    if (v7)
    {
      v8 = objc_opt_new();
      v9 = objc_loadWeakRetained(a1 + 6);
      [v9 setPdfViewController:v8];

      v10 = objc_loadWeakRetained(a1 + 6);
      v11 = [v10 presentingDelegate];
      v12 = objc_loadWeakRetained(a1 + 6);
      v13 = [v12 pdfViewController];
      [v13 setPresentingDelegate:v11];

      v14 = objc_loadWeakRetained(a1 + 6);
      v15 = [v14 webViewController];
      v16 = [v15 webView];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000071B0;
      v27[3] = &unk_100024B68;
      v29 = a1[5];
      objc_copyWeak(&v30, a1 + 6);
      v28 = a1[4];
      [v16 _getMainResourceDataWithCompletionHandler:v27];

      objc_destroyWeak(&v30);
      v17 = v29;
LABEL_10:

      goto LABEL_11;
    }

    v17 = [a1[4] contentType];
    if (_os_feature_enabled_impl())
    {
      v18 = v17;
      if ([v18 caseInsensitiveCompare:@"com.microsoft.word.doc"])
      {
        v19 = [v18 caseInsensitiveCompare:@"com.microsoft.word.docx"];

        if (v19)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      v22 = objc_loadWeakRetained(a1 + 6);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100007340;
      v24[3] = &unk_100024BB8;
      objc_copyWeak(&v26, a1 + 6);
      v25 = a1[4];
      [v22 generatePDFURLUsingPrinterWithCompletion:v24];

      objc_destroyWeak(&v26);
      v17 = v18;
      goto LABEL_10;
    }

LABEL_7:
    v20 = objc_loadWeakRetained(a1 + 6);
    v21 = [v20 webViewController];
    [v20 showPreviewViewController:v21];

    goto LABEL_10;
  }

LABEL_11:
  v23 = a1[5];
  if (v23)
  {
    v23[2](v23, v3);
  }
}

void sub_1000071B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = [WeakRetained pdfViewController];
    v10 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000072D0;
    v11[3] = &unk_100024B40;
    objc_copyWeak(&v12, (a1 + 48));
    [v9 loadPreviewControllerIfNeededWithContents:v5 context:v10 completionHandler:v11];

    objc_destroyWeak(&v12);
  }
}

void sub_1000072D0(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 pdfViewController];
  [v2 showPreviewViewController:v1];
}

void sub_100007340(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000742C;
  v8[3] = &unk_100024B90;
  v9 = a3;
  v10 = v5;
  v6 = v5;
  v7 = v9;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v12);
}

void sub_10000742C(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v13 = objc_loadWeakRetained((a1 + 56));
    v2 = [v13 webViewController];
    [v13 showPreviewViewController:v2];
  }

  else
  {
    v3 = objc_opt_new();
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setPdfViewController:v3];

    v5 = objc_loadWeakRetained((a1 + 56));
    v6 = [v5 presentingDelegate];
    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [v7 pdfViewController];
    [v8 setPresentingDelegate:v6];

    v9 = objc_loadWeakRetained((a1 + 56));
    v10 = [v9 pdfViewController];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000075F0;
    v14[3] = &unk_100024B40;
    objc_copyWeak(&v15, (a1 + 56));
    [v10 loadPreviewControllerIfNeededWithContents:v11 context:v12 completionHandler:v14];

    objc_destroyWeak(&v15);
  }
}

void sub_1000075F0(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 pdfViewController];
  [v2 showPreviewViewController:v1];
}

void sub_1000078F4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v8 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not print provide print preview to ScreenshotService for item: %@. #Printing", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007A84;
    v11[3] = &unk_100024C08;
    v10 = *(a1 + 40);
    v12 = *(a1 + 32);
    v14 = *(a1 + 56);
    v13 = *(a1 + 48);
    [v10 provideCurrentPageAndVisibleRectWithCompletionHandler:v11];
  }
}

uint64_t sub_100007A84(void *a1)
{
  v2 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v2 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Providing print preview to ScreenshotService for item: %@ #Printing", &v6, 0xCu);
  }

  v4 = a1[5];
  return (*(a1[6] + 16))();
}

void sub_100007BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!a2 || a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [NSData dataWithContentsOfURL:a2];
    (*(v3 + 16))(v3, v6, 0);
  }
}

uint64_t sub_100008348(uint64_t a1, void *a2)
{
  v8 = a2;
  if (!v8)
  {
    v3 = QLPDFViewControllerViewAccessibilityIdentifier;
    v4 = [*(a1 + 32) markupViewController];
    v5 = [v4 view];
    [v5 setAccessibilityIdentifier:v3];
  }

  [*(a1 + 32) _addDoubleTapGestureRecognizerIfNeeded];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }

  return _objc_release_x1();
}

void sub_100009C10(uint64_t a1)
{
  v2 = +[UIColor clearColor];
  v3 = [*(a1 + 32) view];
  [v3 setBackgroundColor:v2];

  v4 = [*(a1 + 32) markupViewController];
  [v4 setShowThumbnailViewForMultipage:0];
}

void sub_100009E3C(uint64_t a1)
{
  v3 = +[UIColor _ql_markupBackgroundColor];
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v3];
}

void sub_100009EA8(uint64_t a1)
{
  v2 = +[UIColor _ql_markupBackgroundColor];
  v3 = [*(a1 + 32) view];
  [v3 setBackgroundColor:v2];

  v4 = [*(a1 + 32) markupViewController];
  [v4 updateThumbnailView];
}

void sub_10000A3EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != [*(a1 + 32) presentationMode])
  {
    v3 = [*(a1 + 40) markupViewController];
    [v3 updateThumbnailView];
  }

  v4 = [*(a1 + 40) markupViewController];
  [v4 adjustContentInsetsForBars];
}

void sub_10000A5F8(void *a1)
{
  v2 = [[NSMutableData alloc] initWithLength:0];
  y = CGPointZero.y;
  [*(a1[4] + 168) printSize];
  v5 = v4;
  v7 = v6;
  Page = CGPDFDocumentGetPage([*(a1[4] + 168) pdfDocumentRef], a1[6] + 1);
  CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
  v13.origin.x = CGPointZero.x;
  v13.origin.y = y;
  v13.size.width = v5;
  v13.size.height = v7;
  UIGraphicsBeginPDFContextToData(v2, v13, 0);
  UIGraphicsBeginPDFPage();
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, 0.0, v7);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v14.origin.x = CGPointZero.x;
  v14.origin.y = y;
  v14.size.width = v5;
  v14.size.height = v7;
  CGPDFPageGetDrawingTransform(&v12, Page, kCGPDFMediaBox, v14, 0, 1);
  CGContextConcatCTM(CurrentContext, &v12);
  CGContextDrawPDFPage(CurrentContext, Page);
  CGContextRestoreGState(CurrentContext);
  UIGraphicsEndPDFContext();
  if (CGPDFDocumentGetNumberOfPages([*(a1[4] + 168) pdfDocumentRef]) - 1 == a1[6])
  {
    v10 = a1[4];
    v11 = *(v10 + 168);
    *(v10 + 168) = 0;
  }

  (*(a1[5] + 16))();
}

void sub_10000A814(uint64_t a1)
{
  v2 = [*(a1 + 32) markupViewController];
  v3 = [v2 contentViewScrollView];
  [v3 visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [*(a1 + 32) appearance];
  [v12 topInset];
  v14 = v7 + v13;

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) markupViewController];
  (*(v15 + 16))(v15, [v16 currentPDFPageIndex], v5, v14, v9, v11);
}

id sub_10000ADE4(uint64_t a1)
{
  [*(a1 + 32) setWriteOptionsForSaving:*(a1 + 40)];
  [*(a1 + 32) setHasUnsavedPermissionChanges:1];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000AE7C;
  v4[3] = &unk_100024A00;
  v4[4] = v2;
  return [v2 saveChangesIfNeededNotifyHost:1 forceNotifyHost:0 saveHandler:v4];
}

void sub_10000AE7C(uint64_t a1)
{
  [*(a1 + 32) setHasUnsavedPermissionChanges:0];
  v2 = [*(a1 + 32) delegate];
  [v2 previewItemViewControllerWantsUpdateOverlay:*(a1 + 32) animated:0];
}

void sub_10000B748(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 48) setAnnotationEditingEnabled:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_10000B8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B914(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMarkupBackgroundColor];
}

void sub_10000C71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C748(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained showSaveEditsProgressIndicatorAfterDelay];
    [v8 didStartSavingEdits];
    objc_initWeak(&location, v8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C970;
    v13[3] = &unk_100024D58;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    v9 = objc_retainBlock(v13);
    if (!v5 || v6)
    {
      v10 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v10 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = v10;
        v12 = objc_loadWeakRetained((a1 + 40));
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Could not create editedCopyURL to save Markup changes. %@ #AnyItemViewController", buf, 0xCu);
      }

      if (v9)
      {
        (v9[2])(v9);
      }
    }

    else
    {
      [v8 _saveChangesWithEditedCopy:v5 notifyHost:*(a1 + 48) completionHandler:v9];
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000C948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C970(uint64_t a1)
{
  objc_copyWeak(&v3, (a1 + 40));
  v2 = *(a1 + 32);
  QLRunInMainThread();

  objc_destroyWeak(&v3);
}

void sub_10000CA20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    v3 = *(a1 + 32);
    goto LABEL_5;
  }

  [WeakRetained hideSaveEditProgressIndicator];
  [v4 shouldLockPreviewForUnsavedEdits:0];
  [v4 didFinishSavingEdits];
  v3 = *(a1 + 32);
  if (v3)
  {
LABEL_5:
    (*(v3 + 16))();
  }
}

void sub_10000D1AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000D1C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];
  v3 = [v2 item];
  v4 = [v3 editedCopy];
  (*(v1 + 16))(v1, v4);
}

void sub_10000D700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D71C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v4 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 138412290;
    v9 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Saving changes periodically to avoid data loss if needed (%@). #AnyItemViewController", &v8, 0xCu);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _saveChangesNotifyingHost:1];
}

void sub_10000F6DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_10000F728(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _qlsLogHandle;
  if (v5)
  {
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v7 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v5;
      v8 = "Found ORIGINAL document attributes: %@ #ItemViewController";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
    }
  }

  else
  {
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v7 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v6;
      v8 = "No ORIGINAL document attributes found (error: %@) #ItemViewController";
      goto LABEL_10;
    }
  }

  objc_copyWeak(&v10, (a1 + 32));
  v9 = v5;
  QLRunInMainThread();

  objc_destroyWeak(&v10);
}

void sub_10000F8E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setOriginalDocumentAttributes:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 updateBannerVisibility];
}

void sub_10000F950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _qlsLogHandle;
  if (v5)
  {
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v7 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v5;
      v8 = "Found LAST MODIFIED document attributes: %@ #ItemViewController";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
    }
  }

  else
  {
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v7 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v6;
      v8 = "No LAST MODIFIED document attributes found (error: %@) #ItemViewController";
      goto LABEL_10;
    }
  }

  objc_copyWeak(&v10, (a1 + 32));
  v9 = v5;
  QLRunInMainThread();

  objc_destroyWeak(&v10);
}

void sub_10000FB08(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLatestDocumentAttributes:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 updateBannerVisibility];
}

void sub_10000FB78(uint64_t a1)
{
  v2 = [*(a1 + 32) urlForDocumentWorkflows];
  v14 = 0;
  v3 = [SYFormFillingDocumentAttributes formFillingDocumentAttributesForFileAtURL:v2 error:&v14];
  v4 = v14;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = _qlsLogHandle;
    if (v4 || !v3)
    {
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v6 = _qlsLogHandle;
      }

      v10 = 1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = v6;
        v12 = [WeakRetained urlForDocumentWorkflows];
        *buf = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No SYFormFillingDocumentAttributes found for file at URL %@ (error: %@) #ItemViewController", buf, 0x16u);

        v10 = 1;
      }
    }

    else
    {
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v6 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = [WeakRetained urlForDocumentWorkflows];
        v9 = [v3 formFillingCoachingDisabled];
        *buf = 138412546;
        v16 = v8;
        v17 = 1024;
        LODWORD(v18) = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found SYFormFillingDocumentAttributes for file at URL %@ with formFillingCoachingDisabled=%d #ItemViewController", buf, 0x12u);
      }

      v10 = [v3 formFillingCoachingDisabled] ^ 1;
    }

    [WeakRetained setCanShowFormFillingBanner:v10];
    objc_copyWeak(&v13, (a1 + 40));
    QLRunInMainThread();
    objc_destroyWeak(&v13);
  }
}

void sub_10000FDF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBannerVisibility];
}

void sub_1000104DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100010514(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained documentWorkflowsClient];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 urlForDocumentWorkflows];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001061C;
  v8[3] = &unk_100024E98;
  objc_copyWeak(&v9, (a1 + 32));
  [v5 openLastModifiedDocumentForFileAtURL:v7 completion:v8];

  objc_destroyWeak(&v9);
}

void sub_10001061C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v6 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v9 = [WeakRetained urlForDocumentWorkflows];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not open last modified document for file at URL %@: %@ #AnyItemViewController", &v10, 0x16u);
    }
  }
}

void sub_100010724(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained markupViewController];
  [v1 hideBanner];
}

void sub_100010A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010A3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained documentWorkflowsClient];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 urlForDocumentWorkflows];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010B44;
  v8[3] = &unk_100024E98;
  objc_copyWeak(&v9, (a1 + 32));
  [v5 openOriginalDocumentForFileAtURL:v7 completion:v8];

  objc_destroyWeak(&v9);
}

void sub_100010B44(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v6 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v9 = [WeakRetained urlForDocumentWorkflows];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not open original document for file at URL %@: %@ #AnyItemViewController", &v10, 0x16u);
    }
  }
}

void sub_100010C4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained markupViewController];
  [v1 hideBanner];
}

void sub_100011044(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_100011084(uint64_t a1)
{
  v2 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011130;
  block[3] = &unk_100024E48;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void sub_100011130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[SYFormFillingDocumentAttributes alloc] initWithFormFillingCoachingDisabled:1];
    v3 = [WeakRetained urlForDocumentWorkflows];
    v9 = 0;
    v4 = [v2 saveToFileURL:v3 error:&v9];
    v5 = v9;

    if ((v4 & 1) == 0)
    {
      v6 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v6 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = [WeakRetained urlForDocumentWorkflows];
        *buf = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save form filling document attributes to file %@: %@ #AnyItemViewController", buf, 0x16u);
      }
    }
  }
}

void sub_10001128C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained markupViewController];
    v3 = [v2 formFillingEnabled];

    if ((v3 & 1) == 0)
    {
      [WeakRetained startFormFillingDidUseBanner:1];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001131C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDidDismissFormFillingBanner:1];
    [v3 updateBannerVisibility];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

id sub_100011450(uint64_t a1)
{
  [*(a1 + 32) _updateBannerVisibility];
  v2 = *(a1 + 32);

  return [v2 setDidReceiveFormFillingCallback:1];
}

uint64_t sub_1000119FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;

  v4 = _os_feature_enabled_impl();
  *(*(a1 + 32) + 200) = v4 & ((+[VKCImageAnalyzer supportedAnalysisTypes]& 0x40) >> 6);
  v5 = [*(a1 + 32) scrollView];
  [v5 setContentInsetAdjustmentBehavior:2];

  v6 = [*(a1 + 32) view];
  [v6 setClipsToBounds:1];

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void sub_100012518(uint64_t a1)
{
  v3 = [*(a1 + 32) scrollView];
  v2 = [*(a1 + 32) scrollView];
  [v2 minimumZoomScale];
  [v3 setZoomScale:?];
}

uint64_t sub_100012998(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = a2(0);
  v7 = sub_100012F8C(a3, a4);

  return Bindable<A>.init(wrappedValue:)(v8, v6, v7);
}

uint64_t sub_100012A20()
{
  v0 = sub_100012EB4(&qword_10002B838, &qword_10001F678);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = sub_100012EB4(&qword_10002B840, &unk_10001F680);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v11 - v8;
  type metadata accessor for QLMainSceneView(0);
  sub_100012F8C(&qword_10002B848, type metadata accessor for QLMainSceneView);
  sub_100013B44();
  type metadata accessor for QLAccessorySceneView(0);
  sub_100012F8C(&qword_10002B850, type metadata accessor for QLAccessorySceneView);
  sub_100013B54();
  sub_100012F44(&qword_10002B858, &qword_10002B840, &unk_10001F680);
  sub_100012F44(&qword_10002B860, &qword_10002B838, &qword_10001F678);
  sub_100013B24();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100012CE8(uint64_t a1)
{
  v2 = sub_100012E60();

  return QLAppExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100012D94();
  sub_100013A54();
  return 0;
}

unint64_t sub_100012D94()
{
  result = qword_10002B820;
  if (!qword_10002B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002B820);
  }

  return result;
}

unint64_t sub_100012E60()
{
  result = qword_10002B830;
  if (!qword_10002B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002B830);
  }

  return result;
}

uint64_t sub_100012EB4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100012EFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100012F44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100012EFC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100012FD4()
{
  sub_100012EFC(&qword_10002B840, &unk_10001F680);
  sub_100012EFC(&qword_10002B838, &qword_10001F678);
  sub_100012F44(&qword_10002B858, &qword_10002B840, &unk_10001F680);
  sub_100012F44(&qword_10002B860, &qword_10002B838, &qword_10001F678);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_100012EB4(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_100013214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_100012EB4(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_1000132A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013300(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_100013374(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100013374(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100013AE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1000133E4@<Q0>(uint64_t a1@<X8>)
{
  v2 = (sub_100012EB4(&qword_10002B9B8, &qword_10001F790) - 8);
  v3 = (*(*v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v13 - v4;
  sub_100012EB4(&qword_10002B918, &qword_10001F6D8);
  sub_100013AC4();
  sub_100013B34();
  v6 = sub_100013A64();
  v7 = sub_100013A84();
  v8 = &v5[v2[11]];
  *v8 = v6;
  v8[8] = v7;
  sub_100013AF4();
  sub_100013A74();
  sub_100013714(v5, a1, &qword_10002B9B8, &qword_10001F790);
  v9 = a1 + *(sub_100012EB4(&qword_10002B9C0, &qword_10001F798) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

__n128 sub_100013580@<Q0>(uint64_t a1@<X8>)
{
  v2 = (sub_100012EB4(&qword_10002B9C8, &qword_10001F7A0) - 8);
  v3 = (*(*v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v13 - v4;
  sub_100012EB4(&qword_10002B878, qword_10001F690);
  sub_100013AC4();
  sub_100013B14();
  v6 = sub_100013A64();
  v7 = sub_100013A84();
  v8 = &v5[v2[11]];
  *v8 = v6;
  v8[8] = v7;
  sub_100013AF4();
  sub_100013A74();
  sub_100013714(v5, a1, &qword_10002B9C8, &qword_10001F7A0);
  v9 = a1 + *(sub_100012EB4(&qword_10002B9D0, &qword_10001F7A8) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_100013714(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100012EB4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000137C0()
{
  result = qword_10002B9E0;
  if (!qword_10002B9E0)
  {
    sub_100012EFC(&qword_10002B9B8, &qword_10001F790);
    sub_100013A00(&qword_10002B9E8, &type metadata accessor for QLPreviewCollectionWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002B9E0);
  }

  return result;
}

uint64_t sub_1000138C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100012EFC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100013944()
{
  result = qword_10002B9F8;
  if (!qword_10002B9F8)
  {
    sub_100012EFC(&qword_10002B9C8, &qword_10001F7A0);
    sub_100013A00(&unk_10002BA00, &type metadata accessor for QLAccessoryViewWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002B9F8);
  }

  return result;
}

uint64_t sub_100013A00(unint64_t *a1, void (*a2)(uint64_t))
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