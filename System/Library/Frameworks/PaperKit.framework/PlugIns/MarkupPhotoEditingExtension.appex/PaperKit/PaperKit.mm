void MarkupPhotoExtensionInitialize()
{
  v0 = sub_100000EB0();

  objc_registerClassPair(v0);
}

id sub_100000EB0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000087D0;
  v7 = qword_1000087D0;
  if (!qword_1000087D0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100001BE0;
    v3[3] = &unk_100004238;
    v3[4] = &v4;
    sub_100001BE0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100000F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000012B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001504(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [*(a1 + 32) markupVC];
    [v3 setAnnotationEditingEnabled:0];

    v4 = [v6 localizedDescription];
    NSLog(@"Encountered error while trying to load content: %@", v4);
  }

  else
  {
    v4 = [*(a1 + 40) accessibilityDescription];
    v5 = [*(a1 + 32) markupVC];
    [v5 setImageDescription:v4];
  }
}

void sub_10000169C(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = _os_feature_enabled_impl();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_alloc_init(PHContentEditingOutputRequestOptions);
  v4 = v3;
  if (v2)
  {
    v5 = &UTTypeHEIC;
  }

  else
  {
    v5 = &UTTypeJPEG;
  }

  [v3 setPreferHEICForRenderedImages:v2 & 1];
  v6 = [PHContentEditingOutput alloc];
  v7 = [*(a1 + 32) input];
  v8 = [v6 initWithContentEditingInput:v7 withOptions:v4];

  v9 = [*(a1 + 32) markupVC];
  v10 = [v9 createArchivedModelData];

  v11 = [[PHAdjustmentData alloc] initWithFormatIdentifier:@"com.apple.PaperKit.Markup" formatVersion:@"1.0" data:v10];
  [v8 setAdjustmentData:v11];
  v12 = [*(a1 + 32) markupVC];
  v13 = [v12 imageDescription];
  [v8 setAccessibilityDescription:v13];

  v14 = *(a1 + 32);
  v15 = *v5;
  v16 = [v14 markupVC];
  v17 = [v8 renderedContentURL];
  [v16 writeToURL:v17 embeddingSourceImageAndEditModel:0 contentType:v15 error:0];

  (*(*(a1 + 40) + 16))();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000018D0;
  block[3] = &unk_1000041E8;
  v18 = *(a1 + 32);

  block[4] = v18;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000018D0(uint64_t a1)
{
  v2 = [*(a1 + 32) markupVC];
  [v2 documentDidCloseTeardown];

  v3 = *(a1 + 32);

  return [v3 setIsWritingOutputDoNotTearDown:0];
}

Class sub_100001BE0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000087D8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001D24;
    v4[4] = &unk_100004270;
    v4[5] = v4;
    v5 = off_100004258;
    v6 = 0;
    qword_1000087D8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000087D8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PHEditingExtensionContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100001F50();
  }

  qword_1000087D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001D24(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000087D8 = result;
  return result;
}

Class sub_100001D98(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000087E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001EDC;
    v4[4] = &unk_100004270;
    v4[5] = v4;
    v5 = off_100004290;
    v6 = 0;
    qword_1000087E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000087E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PPKMarkupViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100001F78();
  }

  qword_1000087E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001EDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000087E8 = result;
  return result;
}