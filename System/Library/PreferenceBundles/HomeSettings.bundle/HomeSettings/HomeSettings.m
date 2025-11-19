void sub_1EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1EC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }
}

void sub_2C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2C24(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 propertyForKey:kHUHomePropertyKey];
  if (v7 == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

id sub_2DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    return [v3 hos_showError:a2];
  }

  else
  {
    [v3 removeSpecifier:*(a1 + 40) animated:1];
    v4 = *(a1 + 32);

    return [v4 updateHomesSections];
  }
}

void sub_324C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_6EA8(v3, v4);
    }

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"HOSResetHomeAlertTitle" value:&stru_108D8 table:@"HOSLocalizable"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"HOSResetHomeFailedErrorMessage" value:&stru_108D8 table:@"HOSLocalizable"];
    v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"HOSButtonAlertOK" value:&stru_108D8 table:@"HOSLocalizable"];
    v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
    [v9 addAction:v12];

    [*(a1 + 32) showController:v9 animate:1];
  }

  [*(a1 + 32) reloadSpecifiers];
}

id sub_39B8(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) detailController];
  v5 = [v4 homeBuilder];
  v6 = [v5 home];
  v7 = [v6 uniqueIdentifier];
  v8 = [v3 isEqual:v7];

  return v8;
}

void sub_4534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_454C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4564(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  y = NSZeroPoint.y;
  v5 = a2;
  [v3 drawAtPoint:17 blendMode:NSZeroPoint.x alpha:{y, 1.0}];
  [*(a1 + 40) drawAtPoint:0 blendMode:NSZeroPoint.x alpha:{y, 1.0}];
  v6 = [v5 currentImage];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_4B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFErrorHandler sharedHandler];
  v5 = NSStringFromSelector(*(a1 + 40));
  [v4 logError:v3 operationDescription:v5];

  v6 = *(a1 + 32);

  return [v6 _updateDownloadControl:1];
}

void sub_4BD4(id a1, id a2)
{
  v2 = dispatch_time(0, 1000000000);

  dispatch_after(v2, &_dispatch_main_q, &stru_10848);
}

void sub_4C18(id a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = HFHomeAppBundleID();
  [v2 openApplicationWithBundleID:v1];
}

void sub_612C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 capitalizedString];
  v11 = [NSString stringWithFormat:@"Upgrade: %@", v6];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [v5 unsignedShortValue];

  v10 = [v8 ho_globalPerformanceSwitchSpecifierWithName:v11 forUpgrade:v9];
  [v7 addObject:v10];
}

BOOL sub_68D8(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

void sub_6EA8(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Error erasing Home data: %@", &v4, 0xCu);
}