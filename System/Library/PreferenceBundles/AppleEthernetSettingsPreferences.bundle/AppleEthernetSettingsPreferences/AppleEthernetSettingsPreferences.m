int64_t sub_1F08(id a1, AppleEthernetInterface *a2, AppleEthernetInterface *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(AppleEthernetInterface *)v4 displayName];
  v7 = [(AppleEthernetInterface *)v5 displayName];
  v8 = [v6 compare:v7 options:65];

  if (!v8)
  {
    v9 = [(AppleEthernetInterface *)v4 BSDName];
    v10 = [(AppleEthernetInterface *)v5 BSDName];
    v8 = [v9 compare:v10 options:64];
  }

  return v8;
}

CFStringRef sub_296C(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{

  return SCDynamicStoreKeyCreateNetworkServiceEntity(v6, v4, v5, a4);
}

void sub_43AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_4980(uint64_t a1)
{
  v2 = [*(a1 + 32) currentConfig];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4A40;
  v4[3] = &unk_10698;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = v2;
  v3 = v2;
  dispatch_async(&_dispatch_main_q, v4);

  objc_destroyWeak(&v6);
}

void sub_4A40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained settingsViewController];
  [v2 refreshConfig:*(a1 + 32)];
}

uint64_t sub_4D08()
{
  sub_5064(&qword_17508, qword_D750);
  sub_6900();
  sub_50AC();
  swift_getOpaqueTypeConformance2();
  return sub_6960();
}

uint64_t sub_4DAC()
{
  v0 = *(*(sub_6920() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_6900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6990();
  sub_6980();
  sub_6970();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_5260(0, &qword_175C8, &off_10390);
  sub_6910();
  sub_68F0();
  sub_6930();
  sub_5260(0, &unk_175D0, NSBundle_ptr);
  if (!sub_69A0())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  v7 = sub_6940();
  v9 = v8;
  v11 = v10;
  sub_50AC();
  sub_6950();
  sub_52A8(v7, v9, v11 & 1);

  (*(v2 + 8))(v5, v1);
}

uint64_t sub_5064(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_50AC()
{
  result = qword_17510;
  if (!qword_17510)
  {
    sub_6900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_17510);
  }

  return result;
}

unint64_t sub_510C()
{
  result = qword_17518;
  if (!qword_17518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_17518);
  }

  return result;
}

unint64_t sub_51B4()
{
  result = qword_175B8;
  if (!qword_175B8)
  {
    sub_5218(&qword_175C0, &qword_D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_175B8);
  }

  return result;
}

uint64_t sub_5218(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_5260(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_52A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_52B8(int a1, int a2, dispatch_object_t object)
{
  v3 = dispatch_get_context(object);
  if (v3)
  {
    v5 = v3;
    v4 = [v3 settingsDelegate];
    [v4 ethernetSettingsChanged];

    v3 = v5;
  }
}

void sub_5744(uint64_t a1)
{
  if (![*(a1 + 32) lockPreferences])
  {
    v2 = [*(a1 + 32) findServiceForInterface:*(*(a1 + 32) + 40)];
    if (v2)
    {
      v3 = v2;
      Interface = SCNetworkServiceGetInterface(v2);
      if (Interface)
      {
        SCNetworkInterfaceForceConfigurationRefresh(Interface);
      }

      [*(a1 + 32) unlockPreferences];

      CFRelease(v3);
    }

    else
    {
      v5 = *(a1 + 32);

      [v5 unlockPreferences];
    }
  }
}

void sub_57D8(uint64_t a1)
{
  if (![*(a1 + 32) lockPreferences])
  {
    v2 = [*(a1 + 32) findServiceForInterface:*(*(a1 + 32) + 40)];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3 updatePreferencesForService:v2 withConfig:*(a1 + 40)];
      [*(a1 + 32) commitAndApplyChangesToPreferences];
      [*(a1 + 32) unlockPreferences];

      CFRelease(v2);
    }

    else
    {

      [v3 unlockPreferences];
    }
  }
}