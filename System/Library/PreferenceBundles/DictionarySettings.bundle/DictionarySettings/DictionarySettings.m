void sub_22E4(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 openURL:*(a1 + 32) options:&__NSDictionary0__struct completionHandler:0];
}

void sub_25A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_25C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    qword_11080 = 0;
    [MAAsset cancelCatalogDownload:DCSDictionaryAssetGetAssetType() then:&stru_C5B8];
  }

  v4 = +[UIApplication sharedApplication];
  [v4 setNetworkActivityIndicatorVisible:0];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPerformedRemoteQuery:1];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setCatalogDownloadResult:a2];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 reloadDictionariesList];
}

void sub_2698(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2720;
  v2[3] = &unk_C608;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_2720(uint64_t a1)
{
  NSLog(@"DictionaryUI: Catalog download finished with result = %ld", *(a1 + 40));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_2778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained performedRemoteQuery];

  if ((v3 & 1) == 0)
  {
    NSLog(@"DictionaryUI: Catalog download not aborted timely, so fired fallback timer");
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

id sub_2B80(uint64_t a1)
{
  v2 = [*(a1 + 32) activated];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 deactivateDictionaryForSpecifier:v4];
  }

  else
  {

    return [v3 activateDictionaryForSpecifier:v4];
  }
}

void sub_2CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2CF0(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] state] != &dword_4)
  {
    [a1[4] refreshState];
  }

  v12 = @"MAProgressNotification";
  v13 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2E40;
  block[3] = &unk_C6A8;
  objc_copyWeak(&v11, a1 + 6);
  v8 = a1[5];
  v9 = v4;
  v10 = v3;
  v5 = v3;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_2E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained updateProgressForSpecifier:*(a1 + 32) operationState:*(a1 + 40)];

  if ([*(a1 + 48) isStalled])
  {
    v6 = [*(a1 + 32) propertyForKey:PSValueKey];
    v3 = [v6 rawAsset];
    v4 = [v3 attributes];
    v5 = [v4 objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: Downloading dictionary(%@) is stalled", v5);
  }
}

void sub_3574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35A4(id *a1, void *a2)
{
  [a1[4] refreshState];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3688;
  block[3] = &unk_C6F8;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  v8[1] = a2;
  objc_copyWeak(v8, a1 + 7);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v8);
}

void sub_3688(uint64_t a1)
{
  [*(a1 + 32) setProgress:0.0];
  v17 = [*(a1 + 40) propertyForKey:PSTableCellKey];
  [v17 reloadDataWithAssetOperationState:&off_CDF0];
  v2 = [*(a1 + 48) attributes];
  v3 = [v2 objectForKeyedSubscript:@"DictionaryIdentifier"];
  NSLog(@"DictionaryUI: DictionarySettings downloaded dictionary(%@) with error(%ld)", v3, *(a1 + 64));

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained runningAssetOperationForDictionary:*(a1 + 32)];

  v6 = objc_loadWeakRetained((a1 + 56));
  [v6 setRunningAssetOperation:0 forDictionary:*(a1 + 32)];

  if (v5 == &dword_0 + 2)
  {
    v7 = [*(a1 + 48) attributes];
    v8 = [v7 objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: DictionarySettings download dictionary(%@) canceled by user", v8);

    if (*(a1 + 64))
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 64))
  {
LABEL_6:
    v11 = [*(a1 + 48) attributes];
    DCSDictionaryAssetAttributesDownloaded();
    goto LABEL_7;
  }

  v9 = objc_loadWeakRetained((a1 + 56));
  v10 = [NSNumber numberWithInteger:*(a1 + 64)];
  v11 = [v9 downloadFailedAlertWithError:v10];

  v12 = objc_loadWeakRetained((a1 + 56));
  [v12 presentViewController:v11 animated:1 completion:0];

  v13 = objc_loadWeakRetained((a1 + 56));
  [v13 deactivateDictionaryForSpecifier:*(a1 + 40)];

LABEL_7:
LABEL_8:
  v14 = objc_loadWeakRetained((a1 + 56));
  v15 = [v14 downloadingAssets];
  v16 = [*(a1 + 48) assetId];
  [v15 removeObjectForKey:v16];
}

void sub_3BD4(id a1)
{
  qword_11090 = +[DUDictionaryManager assetManager];

  _objc_release_x1();
}

void sub_5570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

UIImage *__cdecl sub_55A0(id a1, SUUIItemOfferButton *a2, int64_t a3)
{
  if (a3 == 2)
  {
    v3 = a2;
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [(SUUIItemOfferButton *)v3 traitCollection];

    v6 = [UIImage imageNamed:@"UniversalDownloadProgressStopButton" inBundle:v4 compatibleWithTraitCollection:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_5660(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 56);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  return [v2 setTransform:v5];
}

uint64_t sub_56D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (([WeakRetained _needsAddToLibraryOrDownloadImageViewForProgressType:{objc_msgSend(WeakRetained, "progressType")}] & 1) == 0)
    {
      [v3[1] setHidden:1];
    }
  }

  return _objc_release_x1();
}

uint64_t sub_6148()
{
  sub_64AC(&qword_10F18, qword_93C0);
  sub_6EC4();
  sub_64F4();
  swift_getOpaqueTypeConformance2();
  return sub_6F44();
}

uint64_t sub_61EC()
{
  v0 = *(*(sub_6EE4() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_6EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6F74();
  sub_6F64();
  sub_6F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_66A8(0, &qword_10FD8, &off_C388);
  sub_6ED4();
  sub_6EB4();
  sub_6F14();
  sub_66A8(0, &qword_10FE0, NSBundle_ptr);
  if (!sub_6F84())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  v7 = sub_6F24();
  v9 = v8;
  v11 = v10;
  sub_64F4();
  sub_6F34();
  sub_66F0(v7, v9, v11 & 1);

  (*(v2 + 8))(v5, v1);
}

uint64_t sub_64AC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_64F4()
{
  result = qword_10F20;
  if (!qword_10F20)
  {
    sub_6EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10F20);
  }

  return result;
}

unint64_t sub_6554()
{
  result = qword_10F28;
  if (!qword_10F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10F28);
  }

  return result;
}

unint64_t sub_65FC()
{
  result = qword_10FC8;
  if (!qword_10FC8)
  {
    sub_6660(&qword_10FD0, "~!");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10FC8);
  }

  return result;
}

uint64_t sub_6660(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_66A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_66F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_6700()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_111A8 = result;
  return result;
}

uint64_t sub_6754()
{
  v0 = sub_6F04();
  sub_6E3C(v0, qword_111E0);
  sub_6820(v0, qword_111E0);
  if (qword_111A0 != -1)
  {
    swift_once();
  }

  v1 = qword_111A8;
  return sub_6EF4();
}

uint64_t sub_6820(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_687C()
{
  v0 = sub_6F04();
  sub_6E3C(v0, qword_111F8);
  sub_6820(v0, qword_111F8);
  if (qword_111A0 != -1)
  {
    swift_once();
  }

  v1 = qword_111A8;
  return sub_6EF4();
}

uint64_t sub_696C()
{
  v0 = sub_6F04();
  sub_6E3C(v0, qword_11210);
  sub_6820(v0, qword_11210);
  if (qword_111A0 != -1)
  {
    swift_once();
  }

  v1 = qword_111A8;
  return sub_6EF4();
}

uint64_t sub_6A5C()
{
  v0 = sub_6F04();
  sub_6E3C(v0, qword_11228);
  sub_6820(v0, qword_11228);
  if (qword_111A0 != -1)
  {
    swift_once();
  }

  v1 = qword_111A8;
  return sub_6EF4();
}

uint64_t sub_6B4C()
{
  v0 = sub_6F04();
  sub_6E3C(v0, qword_11240);
  sub_6820(v0, qword_11240);
  if (qword_111A0 != -1)
  {
    swift_once();
  }

  v1 = qword_111A8;
  return sub_6EF4();
}

uint64_t sub_6C3C()
{
  v0 = sub_6F04();
  sub_6E3C(v0, qword_11258);
  sub_6820(v0, qword_11258);
  if (qword_111A0 != -1)
  {
    swift_once();
  }

  v1 = qword_111A8;
  return sub_6EF4();
}

uint64_t sub_6D08(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_6F04();

  return sub_6820(v3, a2);
}

uint64_t sub_6D80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_6F04();
  v6 = sub_6820(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_6E3C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}