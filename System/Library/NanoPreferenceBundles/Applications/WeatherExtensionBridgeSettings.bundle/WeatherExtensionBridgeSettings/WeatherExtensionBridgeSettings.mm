void sub_16B0(id a1)
{
  qword_CB00 = os_log_create("com.apple.weather.watchapp", "settings");

  _objc_release_x1();
}

void sub_2050(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gizmoDefaults];
  v4 = [v3 synchronize];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B70;
  block[3] = &unk_8350;
  v7 = v2;
  v5 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_22B4(uint64_t a1)
{
  v2 = [*(a1 + 32) gizmoDefaults];
  v3 = [v2 synchronize];

  v4 = *(a1 + 32);

  return [v4 _notifyObserversOfReload];
}

void sub_23D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 name];
  v3 = [v4 copy];
  [v2 addObject:v3];
}

id sub_27D4(uint64_t a1)
{
  if ([*(a1 + 32) areLocationServicesAuthorized])
  {
    v1 = +[City currentLocationCity];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_281C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 locationID];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_2A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) gizmoDefaultsManager];
  v1 = [NSSet setWithObject:@"UserSelected"];
  [v2 synchronizeNanoDomain:@"com.apple.nanoweatherprefs" keys:v1];
}