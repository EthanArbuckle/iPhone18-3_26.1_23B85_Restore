void sub_100021A1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading extension data: %@", &v2, 0xCu);
}

void sub_100021A94()
{
  sub_1000097D8();
  sub_100009804(v0);
  sub_10000981C();
  sub_1000097B0();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100021C30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000EB08();
  sub_10000EAF8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100021D18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000EB08();
  sub_10000EAF8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100021D98(uint64_t a1)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_10000EAF8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100021E98(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_10000EB08();
  sub_10000EAF8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000220B0()
{
  sub_100007808();
  sub_10000EAF8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100022264()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000EB1C();
  sub_10000EB34(&_mh_execute_header, v2, v3, "failed to resolve temporary directory (%d): %s", v4, v5, v6, v7, v8);
}

void sub_1000222EC()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000EB1C();
  sub_10000EB34(&_mh_execute_header, v2, v3, "failed to initialize temporary directory (%d): %s", v4, v5, v6, v7, v8);
}

void sub_100022374()
{
  sub_1000097D8();
  v1 = v0;
  [v0 extensionID];
  v2 = [v1 store];
  sub_100010DFC();
  sub_1000097C8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10002242C(uint64_t a1)
{
  v1 = [sub_100010E08(a1) extensionIdentifier];
  sub_100007808();
  sub_1000097C8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000224B8(uint64_t a1)
{
  v1 = [sub_100010E08(a1) extensionIdentifier];
  sub_100007808();
  sub_1000097C8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100022544(uint64_t a1)
{
  v1 = [sub_100010E08(a1) extensionIdentifier];
  sub_100007808();
  sub_1000097C8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000225D0(id *a1)
{
  v7 = [sub_100010E08(a1) extensionIdentifier];
  [*a1 allowLoadingDisabledExtensions];
  sub_1000097C8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100022680()
{
  sub_1000097D8();
  v1 = v0;
  v2 = [*v0 extensionIdentifier];
  v3 = [*v1 store];
  sub_100010DFC();
  sub_100010E30();
  sub_1000097C8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_100022740()
{
  sub_1000097D8();
  v1 = [sub_100010E08(v0) extensionIdentifier];
  sub_100010DCC();
  sub_1000097C8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000227D4(uint64_t a1)
{
  v1 = [sub_100010E08(a1) extensionIdentifier];
  sub_100007808();
  sub_100010DFC();
  sub_1000097C8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100022868()
{
  sub_1000097D8();
  v2 = [*(v1 + 32) extensionIdentifier];
  v3 = *(*(*v0 + 8) + 40);
  sub_100007808();
  sub_1000097C8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100022918(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error performing initial deletion during request completion: %@", &v3, 0xCu);
}

void sub_10002299C()
{
  sub_1000097D8();
  v1 = v0;
  v2 = [*v0 extensionIdentifier];
  v3 = [*v1 store];
  sub_100010DFC();
  sub_100010E30();
  sub_1000097C8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_100022A5C(void *a1)
{
  [a1 maximumAllowedEntries];
  sub_100007808();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100022ADC()
{
  sub_1000097D8();
  [v0 lastBlockingPhoneNumber];
  sub_100010DE4();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022B5C()
{
  sub_1000097D8();
  [v0 lastBlockingPhoneNumber];
  sub_100010DE4();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022BDC()
{
  sub_1000097D8();
  [v0 extensionID];
  sub_100010DCC();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022C90()
{
  sub_1000097D8();
  [v0 extensionID];
  sub_100010DCC();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022D10()
{
  sub_1000097D8();
  [v0 extensionID];
  sub_100010DCC();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022D90()
{
  sub_1000097D8();
  [v0 lastIdentificationPhoneNumber];
  sub_100010DE4();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022E10()
{
  sub_1000097D8();
  [v0 lastIdentificationPhoneNumber];
  sub_100010DE4();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022E90()
{
  sub_1000097D8();
  [v0 extensionID];
  sub_100010DCC();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022F10()
{
  sub_1000097D8();
  [v0 extensionID];
  sub_100010DCC();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022F90()
{
  sub_1000097D8();
  [v0 extensionID];
  sub_100010DCC();
  sub_1000097C8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100023154(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error getting extensions: %@", &v2, 0xCu);
}

void sub_1000231CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error getting installed extensions: %@", &v2, 0xCu);
}