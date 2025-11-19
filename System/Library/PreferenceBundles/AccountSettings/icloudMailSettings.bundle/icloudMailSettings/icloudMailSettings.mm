void sub_2D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2D94(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onMailAccountCreated:a2];
}

void sub_3620(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id _MSLogSystem()
{
  if (qword_12A558[0] != -1)
  {
    sub_D47A4();
  }

  v1 = qword_12A550;

  return v1;
}

void sub_3684(id a1)
{
  qword_12A550 = os_log_create("com.apple.icloudMCCKit", "icloudMailSettings");

  _objc_release_x1();
}

void sub_3F1C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"BYOD_HANDLE_URL_NOTIFICATION" object:0 userInfo:*(a1 + 32)];
}

void sub_4470(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"deeplink"];

  if (v3)
  {
    v4 = (a1 + 40);
    v5 = [*(a1 + 40) navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [*v4 navigationController];
      v8 = [v7 viewControllers];
      v9 = [v8 count];

      if (v9 >= 4)
      {
        v10 = [*(a1 + 32) userInfo];
        v11 = [v10 valueForKey:@"deeplink"];

        v12 = _MSLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_D49E4();
        }

        v13 = [v11 stringByReplacingOccurrencesOfString:@"prefs:root=APPLE_ACCOUNT&path=" withString:&stru_11B690];

        v14 = [v13 stringByReplacingOccurrencesOfString:@"settings-navigation://com.apple.Settings.AppleAccount/" withString:&stru_11B690];

        v15 = _MSLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_D4A54(v4, v15);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = [*v4 navigationController];
        v17 = [v16 viewControllers];

        v32 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v32)
        {
          v18 = *v38;
          v30 = *v38;
          v31 = v14;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v17);
              }

              v20 = *(*(&v37 + 1) + 8 * i);
              v21 = [v20 childViewControllers];
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v34;
                while (2)
                {
                  for (j = 0; j != v24; j = j + 1)
                  {
                    if (*v34 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v33 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = [*v4 navigationController];
                      v29 = [v28 popToViewController:v20 animated:1];

                      v14 = v31;
                      [*v4 handleDeeplink:v31];

                      goto LABEL_25;
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

              v18 = v30;
            }

            v14 = v31;
            v32 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v32);
        }

LABEL_25:
      }
    }
  }
}

void sub_49C8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = @"successfully";
  }

  else
  {
    v7 = [(NSError *)v4 localizedDescription];
    v6 = [NSString stringWithFormat:@"with error: %@", v7];
  }

  v8 = _MSLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "save completed %@", buf, 0xCu);
  }
}

BOOL sub_4D0C(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 identifier:a3];
  v5 = [v4 isEqualToString:@"iCloudMailboxBehaviorID"];

  return v5;
}

BOOL sub_4DF4(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 identifier:a3];
  v5 = [v4 isEqualToString:@"iCloudMailboxSMIMEID"];

  return v5;
}

uint64_t sub_535C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_53D0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_545C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_54D0()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Mail Import Providers] get providers started", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = 1;

  sub_D5580();
  v11 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_repository + 24));
  v12 = *(*v11 + 16);
  v13 = *(*v11 + 24);
  v14 = objc_allocWithZone(type metadata accessor for MSMailImportProviderListAPIRequest());
  v15 = v12;
  v16 = v13;
  v17 = sub_32208(v12, v16, 0, 0xF000000000000000);

  v18 = sub_1E894();
  v21 = v18;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_66D4(&qword_121050, &qword_D8BE0);
  sub_671C();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_5814(uint64_t *a1)
{
  v2 = sub_D5340();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v37 = *a1;
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = *(a1 + 40);
  if (v7)
  {
    v12 = v4;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v13 = sub_6610(v2, qword_137988);
    v36 = v12;
    (*(v12 + 16))(v6, v13, v2);

    v14 = sub_D5320();
    v15 = sub_D68B0();

    v35 = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v16;
      v34 = swift_slowAlloc();
      v45 = v34;
      *v16 = 136315138;
      v39 = v37;
      v40 = v7;
      v41 = v8;
      LOBYTE(v42) = v9 & 1;
      v43 = v10;
      v44 = v11 & 1;
      sub_6780();
      v31 = v14;
      v17 = sub_D6C60();
      v19 = sub_558F0(v17, v18, &v45);
      v33 = v2;
      v20 = v19;

      v21 = v32;
      *(v32 + 1) = v20;
      v22 = v31;
      _os_log_impl(&dword_0, v31, v35, "[Mail Import Providers] get providers failed: %s", v21, 0xCu);
      sub_67D4(v34);

      (*(v36 + 8))(v6, v33);
    }

    else
    {

      (*(v36 + 8))(v6, v2);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v23 = v11 & 1;
    v24 = v10;
    if (v7)
    {
      v25 = v37;
    }

    else
    {
      v25 = 0;
    }

    if (v7)
    {
      v26 = v9 & 1;
    }

    else
    {
      v8 = 0;
      v26 = 0;
    }

    if (v7)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    if (v7)
    {
      v28 = v23;
    }

    else
    {
      v28 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v25;
    v40 = v7;
    v41 = v8;
    v42 = v26;
    v43 = v27;
    v44 = v28;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_5BB4(uint64_t *a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v8, v2);

  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v7 + 16);

    _os_log_impl(&dword_0, v9, v10, "[Mail Import Providers] get providers successful, count: %ld", v11, 0xCu);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v7;

    return sub_D5580();
  }

  return result;
}

uint64_t sub_5DEC()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__isLoading;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__error;
  v4 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__providers;
  v6 = sub_66D4(&qword_121078, &qword_D8C78);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_cancellables);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_repository));
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t _s9ViewModelCMa()
{
  result = qword_120EC8;
  if (!qword_120EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5FA0()
{
  sub_68C8(319, &qword_120ED8, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_6158(319, &qword_120EF0, &unk_120EF8, &qword_D8B18);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_6110(uint64_t *a1, uint64_t *a2)
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

void sub_6158(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_6110(a3, a4);
    v5 = sub_D5590();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_61AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_61BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_61DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_6238@<X0>(uint64_t *a1@<X8>)
{
  _s9ViewModelCMa();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

double sub_6278@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_6308(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_63A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_6420(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_6494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_6514(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

BOOL sub_65AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_6610(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_6648(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_668C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_66D4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_671C()
{
  result = qword_121058;
  if (!qword_121058)
  {
    sub_6110(&qword_121050, &qword_D8BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121058);
  }

  return result;
}

unint64_t sub_6780()
{
  result = qword_121060;
  if (!qword_121060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121060);
  }

  return result;
}

uint64_t sub_67D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_6820(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_682C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_684C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_68C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_6934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_6A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MSAddressDetailView()
{
  result = qword_1210F0;
  if (!qword_1210F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6B20()
{
  sub_6C10();
  if (v0 <= 0x3F)
  {
    sub_6C68();
    if (v1 <= 0x3F)
    {
      sub_6D4C(319, &qword_121118);
      if (v2 <= 0x3F)
      {
        sub_6CFC();
        if (v3 <= 0x3F)
        {
          sub_6D4C(319, &qword_121128);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_6C10()
{
  if (!qword_121100)
  {
    sub_D57E0();
    v0 = sub_D5730();
    if (!v1)
    {
      atomic_store(v0, &qword_121100);
    }
  }
}

void sub_6C68()
{
  if (!qword_121108)
  {
    _s9ViewModelCMa_0();
    sub_EB08(&qword_121110, _s9ViewModelCMa_0);
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_121108);
    }
  }
}

unint64_t sub_6CFC()
{
  result = qword_121120;
  if (!qword_121120)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_121120);
  }

  return result;
}

void sub_6D4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_D6240();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_6DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v59 = sub_D5B20();
  v56 = *(v59 - 8);
  v3 = *(v56 + 64);
  __chkstk_darwin(v59);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MSAddressDetailView();
  v6 = *(v5 - 8);
  v60 = v5 - 8;
  v50 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_66D4(&qword_121198, &unk_E3870);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  v12 = sub_66D4(&qword_121190, &unk_D8D80);
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  v17 = sub_66D4(&qword_121180, &unk_D8D70);
  v18 = *(v17 - 8);
  v57 = v17;
  v58 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v51 = &v50 - v20;
  v21 = sub_66D4(&qword_121170, &unk_D8D60);
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = *(v61 + 64);
  __chkstk_darwin(v21);
  v52 = &v50 - v23;
  v65 = a1;
  sub_66D4(&qword_1211D8, &qword_D8D98);
  sub_109A8(&qword_1211E0, &qword_1211D8, &qword_D8D98);
  sub_D5E60();
  v24 = a1;
  sub_E05C(a1, &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v26 = swift_allocObject();
  sub_E0CC(&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v27 = &v11[*(v8 + 36)];
  *v27 = sub_E130;
  v27[1] = v26;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27[2] = 0;
  v27[3] = 0;
  v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v69._countAndFlagsBits = 2777980912;
  v69._object = 0xA400000000000000;
  v75._countAndFlagsBits = 0x45445F5341494C41;
  v75._object = 0xED0000534C494154;
  sub_D66D0(v75);
  v76._countAndFlagsBits = 2777980912;
  v76._object = 0xA400000000000000;
  sub_D66D0(v76);
  v49._countAndFlagsBits = 0xE000000000000000;
  v77._countAndFlagsBits = 0x45445F5341494C41;
  v77._object = 0xED0000534C494154;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v30.super.isa = v29;
  v31 = sub_D4E80(v77, v78, v30, v69, v49);
  v33 = v32;

  v69._countAndFlagsBits = v31;
  v69._object = v33;
  v34 = sub_DEF4();
  v35 = sub_DFAC();
  sub_D6040();

  sub_FC3C(v11, &qword_121198, &unk_E3870);
  v36 = v55;
  v37 = v56;
  v38 = v59;
  (*(v56 + 104))(v55, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v59);
  v69._countAndFlagsBits = v8;
  v69._object = &type metadata for String;
  *&v70 = v34;
  *(&v70 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v51;
  v41 = v53;
  sub_D60D0();
  (*(v37 + 8))(v36, v38);
  (*(v54 + 8))(v16, v41);
  v64 = v24;
  sub_66D4(&qword_121188, &unk_E3860);
  v69._countAndFlagsBits = v41;
  v69._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1211C0, &qword_121188, &unk_E3860);
  v42 = v52;
  v43 = v57;
  sub_D6120();
  (*(v58 + 8))(v40, v43);
  v44 = v24 + *(v60 + 28);
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v69 = v66;
  v70 = v67;
  v71[0] = v68[0];
  *(v71 + 9) = *(v68 + 9);
  sub_A01C0(&v69._countAndFlagsBits, v63);
  countAndFlagsBits = v69._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v73 = v70;
  v74[0] = v71[0];
  *(v74 + 9) = *(v71 + 9);
  sub_FC3C(&v73, &qword_120EE8, &qword_D8DD0);
  return (*(v61 + 8))(v42, v62);
}

uint64_t sub_7580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v87 = sub_66D4(&qword_1212A0, &qword_D8F20);
  v3 = *(v87 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v87);
  v82[0] = v82 - v5;
  v6 = sub_66D4(&qword_1212A8, &qword_D8F28);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v91 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = v82 - v10;
  v90 = sub_66D4(&qword_1212B0, &qword_D8F30);
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  v12 = __chkstk_darwin(v90);
  v98 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = v82 - v14;
  v96 = sub_66D4(&qword_1212B8, &qword_D8F38);
  v88 = *(v96 - 8);
  v15 = *(v88 + 64);
  v16 = __chkstk_darwin(v96);
  v95 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = v82 - v18;
  v19 = sub_66D4(&qword_1212C0, &qword_D8F40);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v82 - v22;
  v24 = sub_66D4(&qword_1212C8, &qword_D8F48);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v94 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v82 - v28;
  v30 = a1 + *(type metadata accessor for MSAddressDetailView() + 20);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  v34 = _s9ViewModelCMa_0();
  v35 = sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v85 = v31;
  v84 = v32;
  v83 = v33;
  v82[2] = v34;
  v82[1] = v35;
  v36 = sub_D5740();
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  sub_F298(v37, v38);

  v86 = v3;
  v93 = v29;
  if (v38 == 1)
  {
    __chkstk_darwin(v39);
    sub_66D4(&qword_121338, &qword_DF070);
    sub_109A8(&qword_121340, &qword_121338, &qword_DF070);
    sub_D6390();
    (*(v20 + 32))(v29, v23, v19);
    v40 = (*(v20 + 56))(v29, 0, 1, v19);
  }

  else
  {
    sub_F2AC(v37, v38);
    v40 = (*(v20 + 56))(v29, 1, 1, v19);
  }

  __chkstk_darwin(v40);
  sub_66D4(&qword_1212D0, &qword_D8F50);
  sub_109A8(&qword_1212D8, &qword_1212D0, &qword_D8F50);
  v41 = sub_D6390();
  __chkstk_darwin(v41);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v101._countAndFlagsBits = 2777980912;
  v101._object = 0xA400000000000000;
  v112._countAndFlagsBits = 0x4F52465F444E4553;
  v112._object = 0xE90000000000004DLL;
  sub_D66D0(v112);
  v113._countAndFlagsBits = 2777980912;
  v113._object = 0xA400000000000000;
  sub_D66D0(v113);
  v81._countAndFlagsBits = 0xE000000000000000;
  v114._countAndFlagsBits = 0x4F52465F444E4553;
  v114._object = 0xE90000000000004DLL;
  v115.value._countAndFlagsBits = 0;
  v115.value._object = 0;
  v44.super.isa = v43;
  v45 = sub_D4E80(v114, v115, v44, v101, v81);
  v47 = v46;

  v101._countAndFlagsBits = v45;
  v101._object = v47;
  v48 = sub_DFAC();
  v108 = sub_D5F50();
  v109 = v49;
  v110 = v50 & 1;
  v111 = v51;
  sub_A72C(a1, &v101);
  sub_66D4(&qword_1212E0, &qword_D8F58);
  sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_F2D0();
  sub_F670(&qword_121300, &qword_1212E8, &qword_D8F60);
  sub_D6380();
  v52 = sub_D5740();
  v53 = *(v52 + 16);
  v54 = *(v52 + 24);
  sub_F298(v53, v54);

  if (v54 == 1)
  {
    v85 = v82;
    __chkstk_darwin(v55);
    sub_66D4(&qword_121310, &qword_D8F70);
    v56 = sub_6110(&qword_121318, &qword_D8F78);
    v57 = sub_6110(&qword_121178, &qword_DB0C0);
    v58 = sub_F3B0();
    v59 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    v101._countAndFlagsBits = v56;
    v101._object = &type metadata for String;
    v102 = v57;
    v103 = &type metadata for Text;
    v104 = v58;
    v105 = v48;
    v106 = v59;
    v107 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v60 = v82[0];
    sub_D6390();
    v61 = v86;
    v62 = v97;
    v63 = v60;
    v64 = v87;
    (*(v86 + 32))(v97, v63, v87);
    v65 = 0;
  }

  else
  {
    sub_F2AC(v53, v54);
    v65 = 1;
    v62 = v97;
    v64 = v87;
    v61 = v86;
  }

  (*(v61 + 56))(v62, v65, 1, v64);
  v66 = v94;
  sub_FBD4(v93, v94, &qword_1212C8, &qword_D8F48);
  v67 = v88;
  v87 = *(v88 + 16);
  v68 = v95;
  (v87)(v95, v99, v96);
  v69 = v89;
  v86 = *(v89 + 16);
  v70 = v98;
  v71 = v90;
  (v86)(v98, v100, v90);
  v72 = v62;
  v73 = v91;
  sub_FBD4(v72, v91, &qword_1212A8, &qword_D8F28);
  v74 = v92;
  sub_FBD4(v66, v92, &qword_1212C8, &qword_D8F48);
  v75 = sub_66D4(&qword_121308, &qword_D8F68);
  v76 = v68;
  v77 = v96;
  (v87)(v74 + v75[12], v76, v96);
  (v86)(v74 + v75[16], v70, v71);
  sub_FBD4(v73, v74 + v75[20], &qword_1212A8, &qword_D8F28);
  sub_FC3C(v97, &qword_1212A8, &qword_D8F28);
  v78 = *(v69 + 8);
  v78(v100, v71);
  v79 = *(v67 + 8);
  v79(v99, v77);
  sub_FC3C(v93, &qword_1212C8, &qword_D8F48);
  sub_FC3C(v73, &qword_1212A8, &qword_D8F28);
  v78(v98, v71);
  v79(v95, v77);
  return sub_FC3C(v94, &qword_1212C8, &qword_D8F48);
}

uint64_t sub_8164(uint64_t a1)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 2777980912;
  v11._countAndFlagsBits = 0x415F454C42414E45;
  v11._object = 0xEC0000005341494CLL;
  sub_D66D0(v11);
  v12._countAndFlagsBits = 2777980912;
  v12._object = 0xA400000000000000;
  sub_D66D0(v12);
  v15._countAndFlagsBits = 2777980912;
  v10._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x415F454C42414E45;
  v13._object = 0xEC0000005341494CLL;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v4.super.isa = v3;
  v15._object = 0xA400000000000000;
  sub_D4E80(v13, v14, v4, v15, v10);

  v5 = (a1 + *(type metadata accessor for MSAddressDetailView() + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_DFAC();
  return sub_D62D0();
}

uint64_t sub_836C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_66D4(&qword_1213E0, &unk_DC500);
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v47);
  v5 = &v44 - v4;
  v6 = sub_66D4(&qword_1213E8, &qword_D90A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_66D4(&qword_1213F0, &qword_D90A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = sub_66D4(&qword_1213F8, &qword_D90B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v46 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v44 - v23;
  *v24 = sub_D5B30();
  *(v24 + 1) = 0x403E000000000000;
  v24[16] = 0;
  v25 = sub_66D4(&qword_121400, &qword_D90B8);
  sub_8880(a1, &v24[*(v25 + 44)]);
  *v18 = sub_D5B40();
  *(v18 + 1) = 0x403E000000000000;
  v18[16] = 0;
  v26 = *(sub_66D4(&qword_121408, &qword_D90C0) + 44);
  v44 = v18;
  sub_956C(a1, &v18[v26]);
  v27 = &a1[*(type metadata accessor for MSAddressDetailView() + 20)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = v27[16];
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v31 = sub_D5740();
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  sub_F298(v32, v33);

  if (v33 == 1)
  {
    *v5 = sub_D5B40();
    *(v5 + 1) = 0x403E000000000000;
    v5[16] = 0;
    v34 = sub_66D4(&qword_121418, &unk_D90D0);
    sub_9CD4(a1, &v5[*(v34 + 44)]);
    sub_FEA4(v5, v12, &qword_1213E0, &unk_DC500);
    v35 = 0;
  }

  else
  {
    sub_F2AC(v32, v33);
    v35 = 1;
  }

  v36 = v12;
  (*(v45 + 56))(v12, v35, 1, v47);
  v37 = v46;
  sub_FBD4(v24, v46, &qword_1213F8, &qword_D90B0);
  v38 = v44;
  v39 = v48;
  sub_FBD4(v44, v48, &qword_1213F0, &qword_D90A8);
  sub_FBD4(v12, v10, &qword_1213E8, &qword_D90A0);
  v40 = v10;
  v41 = v49;
  sub_FBD4(v37, v49, &qword_1213F8, &qword_D90B0);
  v42 = sub_66D4(&qword_121410, &qword_D90C8);
  sub_FBD4(v39, v41 + *(v42 + 48), &qword_1213F0, &qword_D90A8);
  sub_FBD4(v40, v41 + *(v42 + 64), &qword_1213E8, &qword_D90A0);
  sub_FC3C(v36, &qword_1213E8, &qword_D90A0);
  sub_FC3C(v38, &qword_1213F0, &qword_D90A8);
  sub_FC3C(v24, &qword_1213F8, &qword_D90B0);
  sub_FC3C(v40, &qword_1213E8, &qword_D90A0);
  sub_FC3C(v39, &qword_1213F0, &qword_D90A8);
  return sub_FC3C(v37, &qword_1213F8, &qword_D90B0);
}

uint64_t sub_8880@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v132 = sub_66D4(&qword_121480, &qword_D91E0);
  v3 = *(*(v132 - 8) + 64);
  v4 = (__chkstk_darwin)();
  v122 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v123 = &v120 - v6;
  v130 = sub_66D4(&qword_121488, &qword_D91E8);
  v7 = (*(*(v130 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v130);
  v131 = (&v120 - v8);
  v9 = sub_66D4(&qword_121490, &qword_D91F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v134 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v133 = &v120 - v13;
  v14 = type metadata accessor for MSAddressDetailView();
  v15 = *(v14 + 20);
  object = a1;
  v16 = &a1[v15];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = v16[16];
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v20 = sub_D5740();
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  sub_F298(v21, v22);

  if (v22)
  {
    if (v22 == 1)
    {
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v143._countAndFlagsBits = 2777980912;
      v143._object = 0xA400000000000000;
      v25 = 0x455341494C41;
      goto LABEL_6;
    }

    sub_F2AC(v21, v22);
  }

  type metadata accessor for MAPreferencesViewProvider();
  v26 = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:v26];
  v143._countAndFlagsBits = 2777980912;
  v143._object = 0xA400000000000000;
  v25 = 0x534552444441;
LABEL_6:
  v27 = v25 & 0xFFFFFFFFFFFFLL | 0x53000000000000;
  v153._countAndFlagsBits = v27;
  v153._object = 0xE700000000000000;
  sub_D66D0(v153);
  v154._countAndFlagsBits = 2777980912;
  v154._object = 0xA400000000000000;
  sub_D66D0(v154);
  v119._countAndFlagsBits = 0xE000000000000000;
  v155._countAndFlagsBits = v27;
  v155._object = 0xE700000000000000;
  v160.value._countAndFlagsBits = 0;
  v160.value._object = 0;
  v28.super.isa = v24;
  v29 = sub_D4E80(v155, v160, v28, v143, v119);
  v31 = v30;

  v143._countAndFlagsBits = v29;
  v143._object = v31;
  sub_DFAC();
  v128 = sub_D5F50();
  v127 = v32;
  v34 = v33;
  v129 = v35;
  v36 = &object[*(v14 + 32)];
  v37 = *v36;
  v38 = *(v36 + 1);
  *&v138 = v37;
  *(&v138 + 1) = v38;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v143._countAndFlagsBits;
  object = v143._object;
  v39 = v144;
  v125 = sub_D63F0();
  v124 = v40;
  v136 = v34 & 1;
  v152 = v34 & 1;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v41 = *(v143._countAndFlagsBits + 16);

  if (v41 < 2)
  {
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v54 = v143._countAndFlagsBits;
    v55 = *(v143._countAndFlagsBits + 16);
    if (v55)
    {
      *&v138 = &_swiftEmptyArrayStorage;
      sub_11B90(0, v55, 0);
      v56 = v138;
      v57 = (v54 + 56);
      do
      {
        v58 = *(v57 - 2);
        v59 = *(v57 - 1);
        v60 = *v57;
        v143._countAndFlagsBits = *(v57 - 3);
        v143._object = v58;
        swift_bridgeObjectRetain_n();

        v158._countAndFlagsBits = 64;
        v158._object = 0xE100000000000000;
        sub_D66D0(v158);

        v159._countAndFlagsBits = v59;
        v159._object = v60;
        sub_D66D0(v159);

        v61 = v143._countAndFlagsBits;
        v62 = v143._object;
        *&v138 = v56;
        v64 = v56[2];
        v63 = v56[3];
        if (v64 >= v63 >> 1)
        {
          sub_11B90((v63 > 1), v64 + 1, 1);
          v56 = v138;
        }

        v56[2] = v64 + 1;
        v65 = &v56[2 * v64];
        *(v65 + 4) = v61;
        *(v65 + 5) = v62;
        v57 += 5;
        --v55;
      }

      while (v55);
    }

    else
    {

      v56 = &_swiftEmptyArrayStorage;
    }

    v143._countAndFlagsBits = v56;
    sub_66D4(&qword_121498, &qword_D99D0);
    sub_109A8(&qword_1214A0, &qword_121498, &qword_D99D0);
    v82 = sub_D6590();
    v84 = v83;

    v143._countAndFlagsBits = v82;
    v143._object = v84;
    v85 = sub_D5F50();
    v87 = v86;
    v89 = v88;
    sub_D61B0();
    v90 = sub_D5F00();
    v92 = v91;
    v94 = v93;
    v121 = v95;

    sub_F16C(v85, v87, v89 & 1);

    KeyPath = swift_getKeyPath();
    v97 = swift_getKeyPath();
    v98 = v94 & 1;
    LOBYTE(v143._countAndFlagsBits) = v94 & 1;
    LOBYTE(v138) = 0;
    v99 = v122;
    v100 = &v122[*(v132 + 36)];
    v101 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
    v102 = enum case for Text.TruncationMode.tail(_:);
    v103 = sub_D5EF0();
    (*(*(v103 - 8) + 104))(v100 + v101, v102, v103);
    *v100 = swift_getKeyPath();
    *v99 = v90;
    *(v99 + 8) = v92;
    *(v99 + 16) = v98;
    *(v99 + 24) = v121;
    *(v99 + 32) = KeyPath;
    *(v99 + 40) = 1;
    *(v99 + 48) = 0;
    *(v99 + 56) = v97;
    *(v99 + 64) = 0x3FE999999999999ALL;
    v104 = v123;
    sub_FEA4(v99, v123, &qword_121480, &qword_D91E0);
    sub_FBD4(v104, v131, &qword_121480, &qword_D91E0);
    swift_storeEnumTagMultiPayload();
    sub_FF0C();
    v81 = v133;
    sub_D5BF0();
    sub_FC3C(v104, &qword_121480, &qword_D91E0);
  }

  else
  {
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v42 = v143._countAndFlagsBits;
    v43 = *(v143._countAndFlagsBits + 16);
    if (v43)
    {
      *&v138 = &_swiftEmptyArrayStorage;
      sub_11B90(0, v43, 0);
      v44 = v138;
      v45 = (v42 + 56);
      do
      {
        v46 = *(v45 - 2);
        v47 = *(v45 - 1);
        v48 = *v45;
        v143._countAndFlagsBits = *(v45 - 3);
        v143._object = v46;
        swift_bridgeObjectRetain_n();

        v156._countAndFlagsBits = 64;
        v156._object = 0xE100000000000000;
        sub_D66D0(v156);

        v157._countAndFlagsBits = v47;
        v157._object = v48;
        sub_D66D0(v157);

        v49 = v143._countAndFlagsBits;
        v50 = v143._object;
        *&v138 = v44;
        v52 = v44[2];
        v51 = v44[3];
        if (v52 >= v51 >> 1)
        {
          sub_11B90((v51 > 1), v52 + 1, 1);
          v44 = v138;
        }

        v44[2] = v52 + 1;
        v53 = &v44[2 * v52];
        *(v53 + 4) = v49;
        *(v53 + 5) = v50;
        v45 += 5;
        --v43;
      }

      while (v43);
    }

    else
    {

      v44 = &_swiftEmptyArrayStorage;
    }

    v143._countAndFlagsBits = v44;
    sub_66D4(&qword_121498, &qword_D99D0);
    sub_109A8(&qword_1214A0, &qword_121498, &qword_D99D0);
    v66 = sub_D6590();
    v68 = v67;

    v143._countAndFlagsBits = v66;
    v143._object = v68;
    v69 = sub_D5F50();
    v71 = v70;
    LOBYTE(v68) = v72;
    sub_D61B0();
    v73 = sub_D5F00();
    v75 = v74;
    v77 = v76;
    v79 = v78;

    sub_F16C(v69, v71, v68 & 1);

    v80 = v131;
    *v131 = v73;
    v80[1] = v75;
    *(v80 + 16) = v77 & 1;
    v80[3] = v79;
    swift_storeEnumTagMultiPayload();
    sub_FF0C();
    v81 = v133;
    sub_D5BF0();
  }

  v105 = v134;
  sub_FBD4(v81, v134, &qword_121490, &qword_D91F0);
  v106 = v128;
  *&v138 = v128;
  v107 = v127;
  *(&v138 + 1) = v127;
  LOBYTE(v139) = v136;
  *(&v139 + 1) = *v151;
  DWORD1(v139) = *&v151[3];
  v108 = v129;
  v109 = countAndFlagsBits;
  *(&v139 + 1) = v129;
  *&v140 = countAndFlagsBits;
  *(&v140 + 1) = object;
  *&v141 = v39;
  v110 = v125;
  v111 = v124;
  *(&v141 + 1) = v125;
  v142 = v124;
  v112 = v138;
  v113 = v139;
  v114 = v140;
  v115 = v141;
  v116 = v135;
  *(v135 + 64) = v124;
  v116[2] = v114;
  v116[3] = v115;
  *v116 = v112;
  v116[1] = v113;
  v117 = sub_66D4(&qword_121500, &qword_D92D8);
  sub_FBD4(v105, v116 + *(v117 + 48), &qword_121490, &qword_D91F0);
  sub_FBD4(&v138, &v143, &qword_121438, &qword_D9118);
  sub_FC3C(v81, &qword_121490, &qword_D91F0);
  sub_FC3C(v105, &qword_121490, &qword_D91F0);
  v143._countAndFlagsBits = v106;
  v143._object = v107;
  LOBYTE(v144) = v136;
  *(&v144 + 1) = *v151;
  HIDWORD(v144) = *&v151[3];
  v145 = v108;
  v146 = v109;
  v147 = object;
  v148 = v39;
  v149 = v110;
  v150 = v111;
  return sub_FC3C(&v143, &qword_121438, &qword_D9118);
}

uint64_t sub_956C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v68 = sub_66D4(&qword_121440, &qword_D9140);
  v3 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v5 = &v61 - v4;
  v71 = sub_66D4(&qword_121448, &qword_D9148);
  v72 = *(v71 - 8);
  v6 = *(v72 + 64);
  __chkstk_darwin(v71);
  v66 = &v61 - v7;
  v70 = sub_66D4(&qword_121450, &qword_D9150);
  v69 = *(v70 - 8);
  v8 = *(v69 + 64);
  v9 = __chkstk_darwin(v70);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v61 - v11;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v85._countAndFlagsBits = 2777980912;
  v85._object = 0xA400000000000000;
  v93._countAndFlagsBits = 0x55465F5341494C41;
  v93._object = 0xEE00454D414E4C4CLL;
  sub_D66D0(v93);
  v94._countAndFlagsBits = 2777980912;
  v94._object = 0xA400000000000000;
  sub_D66D0(v94);
  v60._countAndFlagsBits = 0xE000000000000000;
  v95._countAndFlagsBits = 0x55465F5341494C41;
  v95._object = 0xEE00454D414E4C4CLL;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v14.super.isa = v13;
  v15 = sub_D4E80(v95, v96, v14, v85, v60);
  v17 = v16;

  v85._countAndFlagsBits = v15;
  v85._object = v17;
  sub_DFAC();
  v64 = sub_D5F50();
  v63 = v18;
  LOBYTE(v15) = v19;
  v65 = v20;
  v21 = type metadata accessor for MSAddressDetailView();
  v22 = (a1 + *(v21 + 32));
  v23 = *v22;
  v24 = v22[1];
  *&v80 = v23;
  *(&v80 + 1) = v24;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v85._countAndFlagsBits;
  object = v85._object;
  v25 = v86;
  v76 = sub_D63F0();
  v74 = v26;
  v75 = v15 & 1;
  LOBYTE(v85._countAndFlagsBits) = v15 & 1;
  v27 = (a1 + *(v21 + 20));
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v31 = sub_D5740();
  v32 = *(v31 + 32);
  v33 = *(v31 + 40);

  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v80 = v32;
  *(&v80 + 1) = v33;
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v35 = sub_D65F0();
  v36 = v68;
  v37 = &v5[*(v68 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  v37[2] = v38;
  v39 = sub_FDA8();
  v40 = v66;
  sub_D6050();
  sub_FC3C(v5, &qword_121440, &qword_D9140);
  v85._countAndFlagsBits = v36;
  v85._object = v39;
  swift_getOpaqueTypeConformance2();
  v41 = v78;
  v42 = v71;
  sub_D6080();
  (*(v72 + 8))(v40, v42);
  v43 = v69;
  v44 = *(v69 + 16);
  v45 = v67;
  v46 = v70;
  v44(v67, v41, v70);
  v47 = v64;
  v48 = v63;
  *&v80 = v64;
  *(&v80 + 1) = v63;
  LOBYTE(v81) = v75;
  *(&v81 + 1) = *v79;
  DWORD1(v81) = *&v79[3];
  v49 = v65;
  v50 = countAndFlagsBits;
  *(&v81 + 1) = v65;
  *&v82 = countAndFlagsBits;
  *(&v82 + 1) = object;
  *&v83 = v25;
  *(&v83 + 1) = v76;
  v84 = v74;
  v51 = v80;
  v52 = v81;
  v53 = v82;
  v54 = v83;
  v55 = v73;
  *(v73 + 64) = v74;
  *(v55 + 2) = v53;
  *(v55 + 3) = v54;
  *v55 = v51;
  *(v55 + 1) = v52;
  v56 = v55;
  v57 = sub_66D4(&qword_121478, &qword_D91B8);
  v44(&v56[*(v57 + 48)], v45, v46);
  sub_FBD4(&v80, &v85, &qword_121438, &qword_D9118);
  v58 = *(v43 + 8);
  v58(v78, v46);
  v58(v45, v46);
  v85._countAndFlagsBits = v47;
  v85._object = v48;
  LOBYTE(v86) = v75;
  *(&v86 + 1) = *v79;
  HIDWORD(v86) = *&v79[3];
  v87 = v49;
  v88 = v50;
  v89 = object;
  v90 = v25;
  v91 = v76;
  v92 = v74;
  return sub_FC3C(&v85, &qword_121438, &qword_D9118);
}

uint64_t sub_9CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_66D4(&qword_121420, &qword_DA840);
  v58 = *(v59 - 8);
  v4 = *(v58 + 64);
  v5 = __chkstk_darwin(v59);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v53 - v7;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass:ObjCClassFromMetadata];
  v71._countAndFlagsBits = 2777980912;
  v71._object = 0xA400000000000000;
  v79._countAndFlagsBits = 0x4C4542414CLL;
  v79._object = 0xE500000000000000;
  sub_D66D0(v79);
  v80._countAndFlagsBits = 2777980912;
  v80._object = 0xA400000000000000;
  sub_D66D0(v80);
  v51._countAndFlagsBits = 0xE000000000000000;
  v81._countAndFlagsBits = 0x4C4542414CLL;
  v81._object = 0xE500000000000000;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v11.super.isa = v10;
  v12 = sub_D4E80(v81, v85, v11, v71, v51);
  v14 = v13;

  v71._countAndFlagsBits = v12;
  v71._object = v14;
  sub_DFAC();
  v55 = sub_D5F50();
  v16 = v15;
  v18 = v17;
  v56 = v19;
  v20 = type metadata accessor for MSAddressDetailView();
  v21 = (a1 + *(v20 + 32));
  v22 = *v21;
  v23 = v21[1];
  *&v66 = v22;
  *(&v66 + 1) = v23;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v71._countAndFlagsBits;
  object = v71._object;
  v24 = v72;
  v62 = sub_D63F0();
  v60 = v25;
  v61 = v18 & 1;
  LOBYTE(v71._countAndFlagsBits) = v18 & 1;
  v26 = [v9 bundleForClass:ObjCClassFromMetadata];
  v71._countAndFlagsBits = 2777980912;
  v71._object = 0xA400000000000000;
  v82._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v82._object = 0xE800000000000000;
  sub_D66D0(v82);
  v83._countAndFlagsBits = 2777980912;
  v83._object = 0xA400000000000000;
  sub_D66D0(v83);
  v52._countAndFlagsBits = 0xE000000000000000;
  v84._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v84._object = 0xE800000000000000;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v27.super.isa = v26;
  v28 = sub_D4E80(v84, v86, v27, v71, v52);
  v30 = v29;

  v31 = (a1 + *(v20 + 20));
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v31 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v66 = v28;
  *(&v66 + 1) = v30;
  v35 = v64;
  sub_D6410();
  v36 = v58;
  v37 = *(v58 + 16);
  v38 = v57;
  v39 = v35;
  v40 = v59;
  v37(v57, v39, v59);
  v41 = v55;
  *&v66 = v55;
  *(&v66 + 1) = v16;
  LOBYTE(v67) = v61;
  *(&v67 + 1) = *v65;
  DWORD1(v67) = *&v65[3];
  v42 = v56;
  v43 = countAndFlagsBits;
  *(&v67 + 1) = v56;
  *&v68 = countAndFlagsBits;
  *(&v68 + 1) = object;
  *&v69 = v24;
  *(&v69 + 1) = v62;
  v70 = v60;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v47 = v69;
  *(a2 + 64) = v60;
  *(a2 + 32) = v46;
  *(a2 + 48) = v47;
  *a2 = v44;
  *(a2 + 16) = v45;
  v48 = sub_66D4(&qword_121430, &qword_D9110);
  v37((a2 + *(v48 + 48)), v38, v40);
  sub_FBD4(&v66, &v71, &qword_121438, &qword_D9118);
  v49 = *(v36 + 8);
  v49(v64, v40);
  v49(v38, v40);
  v71._countAndFlagsBits = v41;
  v71._object = v16;
  LOBYTE(v72) = v61;
  *(&v72 + 1) = *v65;
  HIDWORD(v72) = *&v65[3];
  v73 = v42;
  v74 = v43;
  v75 = object;
  v76 = v24;
  v77 = v62;
  v78 = v60;
  return sub_FC3C(&v71, &qword_121438, &qword_D9118);
}

uint64_t sub_A2A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_A338(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_A3B8(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(__chkstk_darwin(v2 - 8) + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v12 = v14;
  v13 = v15;
  sub_E05C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_E0CC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_66D4(&qword_1213A0, &qword_D9080);
  sub_FA10();
  sub_F354();
  sub_FAFC();
  return sub_D6340();
}

double sub_A5D4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 24);
  sub_66D4(&qword_1213D0, &unk_D9090);
  sub_D6310();
  v5 = (a2 + *(type metadata accessor for MSAddressDetailView() + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a3 = v14;
  *(a3 + 16) = v15;
  result = *&v16;
  *(a3 + 32) = v16;
  *(a3 + 48) = v17;
  *(a3 + 50) = v10;
  return result;
}

uint64_t sub_A72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MSAddressDetailView() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v7 = sub_D5740();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_F298(v8, v9);

  if (v9 >= 2)
  {
    sub_66D4(&qword_121390, &qword_D9050);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_D8CB0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_F7DC();
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();
    sub_F298(v8, v9);
    v16 = [v15 bundleForClass:ObjCClassFromMetadata];
    v26._object = 0x80000000000E7060;
    v26._countAndFlagsBits = 0xD000000000000015;
    sub_D66D0(v26);
    v27._countAndFlagsBits = 2777980912;
    v27._object = 0xA400000000000000;
    sub_D66D0(v27);
    v32._countAndFlagsBits = 2777980912;
    v22._countAndFlagsBits = 0xE000000000000000;
    v28._object = 0x80000000000E7060;
    v28._countAndFlagsBits = 0xD000000000000015;
    v30.value._countAndFlagsBits = 0;
    v30.value._object = 0;
    v17.super.isa = v16;
    v32._object = 0xA400000000000000;
    sub_D4E80(v28, v30, v17, v32, v22);

    sub_D6610();
    sub_F2AC(v8, v9);
  }

  else
  {
    type metadata accessor for MAPreferencesViewProvider();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:v10];
    v23._countAndFlagsBits = 0xD000000000000018;
    v23._object = 0x80000000000E7040;
    sub_D66D0(v23);
    v24._countAndFlagsBits = 2777980912;
    v24._object = 0xA400000000000000;
    sub_D66D0(v24);
    v31._countAndFlagsBits = 2777980912;
    v22._countAndFlagsBits = 0xE000000000000000;
    v25._countAndFlagsBits = 0xD000000000000018;
    v25._object = 0x80000000000E7040;
    v29.value._countAndFlagsBits = 0;
    v29.value._object = 0;
    v12.super.isa = v11;
    v31._object = 0xA400000000000000;
    sub_D4E80(v25, v29, v12, v31, v22);

    sub_F2AC(v8, v9);
  }

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = 256;
  return result;
}

uint64_t sub_AA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for MSAddressDetailView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v32 = sub_66D4(&qword_121318, &qword_D8F78);
  v7 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v9 = &v29 - v8;
  sub_E05C(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_E0CC(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v29 = a1;
  v34 = a1;
  sub_66D4(&qword_121348, &qword_D8FD8);
  sub_F50C();
  v30 = v9;
  sub_D6260();
  v12 = a1 + *(v4 + 28);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v16 = v35;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = &v9[*(v32 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_10ACC;
  v19[2] = v18;
  v20 = sub_D5740();
  v21 = *(v20 + 48);
  v22 = *(v20 + 56);

  v38 = v21;
  v39 = v22;
  v23 = v29;
  v24 = v29 + *(v4 + 32);
  v25 = *v24;
  v26 = *(v24 + 8);
  v36 = v25;
  v37 = v26;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6230();
  v33 = v23;
  sub_66D4(&qword_121178, &qword_DB0C0);
  sub_F3B0();
  sub_DFAC();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  v27 = v30;
  sub_D6060();

  return sub_FC3C(v27, &qword_121318, &qword_D8F78);
}

uint64_t sub_AE90(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSAddressDetailView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_AF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_66D4(&qword_121388, &qword_D9048);
  v3 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v5 = (&v47 - v4);
  v6 = sub_66D4(&qword_121238, &unk_D8E20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v48 = sub_66D4(&qword_121360, &unk_D8FE0);
  v11 = *(*(v48 - 8) + 64);
  v12 = __chkstk_darwin(v48);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = (a1 + *(type metadata accessor for MSAddressDetailView() + 20));
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v51._countAndFlagsBits) == 1)
  {
    sub_D5780();
    sub_D63E0();
    sub_D5930();
    (*(v7 + 32))(v14, v10, v6);
    v21 = &v14[*(v48 + 36)];
    v22 = v56;
    *(v21 + 4) = v55;
    *(v21 + 5) = v22;
    *(v21 + 6) = v57;
    v23 = v52;
    *v21 = v51;
    *(v21 + 1) = v23;
    v24 = v54;
    *(v21 + 2) = v53;
    *(v21 + 3) = v24;
    sub_FEA4(v14, v16, &qword_121360, &unk_D8FE0);
    sub_FBD4(v16, v5, &qword_121360, &unk_D8FE0);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_121370, &qword_DB270);
    sub_F5B8();
    sub_F670(&qword_121368, &qword_121370, &qword_DB270);
    sub_D5BF0();
    return sub_FC3C(v16, &qword_121360, &unk_D8FE0);
  }

  else
  {
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v47}];
    v51._countAndFlagsBits = 2777980912;
    v51._object = 0xA400000000000000;
    v58._countAndFlagsBits = 0x415F4554454C4544;
    v58._object = 0xEC0000005341494CLL;
    sub_D66D0(v58);
    v59._countAndFlagsBits = 2777980912;
    v59._object = 0xA400000000000000;
    sub_D66D0(v59);
    v46._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 0x415F4554454C4544;
    v60._object = 0xEC0000005341494CLL;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v28.super.isa = v27;
    v29 = sub_D4E80(v60, v61, v28, v51, v46);
    v31 = v30;

    v51._countAndFlagsBits = v29;
    v51._object = v31;
    sub_DFAC();
    v32 = sub_D5F50();
    v34 = v33;
    LOBYTE(v29) = v35;
    sub_D6170();
    v36 = sub_D5F00();
    v38 = v37;
    v40 = v39;
    v42 = v41;

    sub_F16C(v32, v34, v29 & 1);

    sub_D63E0();
    sub_D5930();
    v50 = v40 & 1;
    v5->_countAndFlagsBits = v36;
    v5->_object = v38;
    LOBYTE(v5[1]._countAndFlagsBits) = v40 & 1;
    v5[1]._object = v42;
    v43 = v56;
    v5[6] = v55;
    v5[7] = v43;
    v5[8] = v57;
    v44 = v52;
    v5[2] = v51;
    v5[3] = v44;
    v45 = v54;
    v5[4] = v53;
    v5[5] = v45;
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_121370, &qword_DB270);
    sub_F5B8();
    sub_F670(&qword_121368, &qword_121370, &qword_DB270);
    return sub_D5BF0();
  }
}

uint64_t sub_B504(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_66D4(&qword_121380, &qword_D9040);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_D5640();
  v9 = sub_D5660();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_E05C(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_E0CC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return sub_D6250();
}

uint64_t sub_B6C8(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = a1 + *(v3 + 32);
  v7 = *v6;
  v8 = *(v6 + 8);
  v17[16] = v7;
  v18 = v8;
  v17[15] = 0;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6220();
  v9 = a1 + *(v3 + 28);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v13 = sub_D5740();
  sub_E05C(a1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_E0CC(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
  (*(*v13 + 656))(sub_F750, v15);
}

uint64_t sub_B8C4(uint64_t a1)
{
  v2 = sub_D57E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for MSAddressDetailView() + 28);
  v8 = *(v7 + 8);
  (*v7)(1);
  sub_EC34(v6);
  sub_D57D0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_B9CC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0x80000000000E7010;
  v10._countAndFlagsBits = 0xD000000000000021;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E7010;
  v12._countAndFlagsBits = 0xD000000000000021;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_BAF0(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v10, v11, v6);
  sub_E05C(a1, v5);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v14;
    v30 = v28;
    *v14 = 136315138;
    v15 = &v5[*(v2 + 20)];
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = v15[16];
    _s9ViewModelCMa_0();
    sub_EB08(&qword_121110, _s9ViewModelCMa_0);
    v19 = sub_D5740();
    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    sub_F298(v21, v20);

    if (v20 == 1)
    {
      v22 = 0xE500000000000000;
      v23 = 0x7361696C41;
    }

    else if (v20)
    {
      v22 = 0x80000000000E6FF0;
      sub_F2AC(v21, v20);
      v23 = 0xD000000000000013;
    }

    else
    {
      v22 = 0xEF73736572646441;
      v23 = 0x207972616D697250;
    }

    v25 = v29;
    sub_F23C(v5);
    v26 = sub_558F0(v23, v22, &v30);

    *(v25 + 1) = v26;
    _os_log_impl(&dword_0, v12, v13, "[%s] page viewed", v25, 0xCu);
    sub_67D4(v28);

    return (*(v7 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    return sub_F23C(v5);
  }
}

uint64_t sub_BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_66D4(&qword_1211F0, &qword_D8DF8);
  v3 = *(*(v20[0] - 8) + 64);
  __chkstk_darwin(v20[0]);
  v5 = v20 - v4;
  v6 = sub_66D4(&qword_1211F8, &qword_D8E00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = sub_D5C80();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_66D4(&qword_121200, &qword_D8E08);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  sub_D5C40();
  v20[8] = a1;
  sub_66D4(&qword_121208, &unk_D8E10);
  sub_E7EC();
  sub_D5770();
  sub_D5C50();
  v20[4] = a1;
  sub_66D4(&qword_121220, &unk_E0EB0);
  sub_E8DC();
  sub_D5770();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_D5BC0();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_C178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_66D4(&qword_121178, &qword_DB0C0);
  v26 = *(v29 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v29);
  v25 = &v24 - v4;
  v27 = sub_66D4(&qword_121298, &qword_E5E90);
  v5 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = type metadata accessor for MSAddressDetailView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = sub_D51A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(v9 + 44));
  sub_E05C(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_E0CC(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  if (v17 == 1)
  {
    sub_D5190();
    (*(v13 + 16))(v7, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_EB08(&qword_121218, &type metadata accessor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    sub_D5BF0();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v21 = v25;
    sub_D6260();
    v22 = v26;
    v23 = v29;
    (*(v26 + 16))(v7, v21, v29);
    swift_storeEnumTagMultiPayload();
    sub_EB08(&qword_121218, &type metadata accessor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    sub_D5BF0();
    return (*(v22 + 8))(v21, v23);
  }
}

uint64_t sub_C604(uint64_t a1)
{
  v19 = sub_D5B10();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - v8);
  v10 = sub_D57E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v9, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_D68C0();
    v16 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_D57D0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_C890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12._countAndFlagsBits = a1;
  v12._object = 0xE600000000000000;
  sub_D66D0(v12);
  v13._countAndFlagsBits = 2777980912;
  v13._object = 0xA400000000000000;
  sub_D66D0(v13);
  v16._countAndFlagsBits = 2777980912;
  v11._countAndFlagsBits = 0xE000000000000000;
  v14._countAndFlagsBits = a1;
  v14._object = 0xE600000000000000;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v6.super.isa = v5;
  v16._object = 0xA400000000000000;
  sub_D4E80(v14, v15, v6, v16, v11);

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_C9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = sub_66D4(&qword_121280, &unk_D8E40);
  v3 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v49 = &v46 - v4;
  v60 = sub_66D4(&qword_121288, &unk_E0ED0);
  v5 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v61 = &v46 - v6;
  v7 = type metadata accessor for MSAddressDetailView();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v51 = v9;
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_66D4(&qword_121258, &unk_D8E30);
  v10 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v48 = &v46 - v11;
  v64 = sub_66D4(&qword_121248, &unk_E0EC0);
  v12 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v62 = &v46 - v13;
  v14 = sub_66D4(&qword_121290, &qword_D8E50);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = sub_66D4(&qword_121238, &unk_D8E20);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v23 = *(v7 + 20);
  v58 = a1;
  v24 = (a1 + v23);
  v26 = *v24;
  v25 = v24[1];
  LODWORD(a1) = *(v24 + 16);
  v27 = _s9ViewModelCMa_0();
  v28 = sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v53 = v26;
  v54 = v25;
  v55 = a1;
  v52 = v27;
  v50 = v28;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v68 == 1)
  {
    sub_D5780();
    (*(v19 + 16))(v17, v22, v18);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_E994();
    sub_D5BF0();
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    v46 = v14;
    v47 = v17;
    v30 = v57;
    v31 = *(v58 + *(v7 + 36));
    sub_E05C(v58, v57);
    v32 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v33 = swift_allocObject();
    sub_E0CC(v30, v33 + v32);
    if (v31 == 1)
    {
      v34 = v48;
      sub_D5150();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v35 = v66;
      KeyPath = swift_getKeyPath();
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      v38 = (v34 + *(v59 + 36));
      *v38 = KeyPath;
      v38[1] = sub_10ACC;
      v38[2] = v37;
      v39 = &qword_121258;
      v40 = &unk_D8E30;
      sub_FBD4(v34, v61, &qword_121258, &unk_D8E30);
    }

    else
    {
      v34 = v49;
      sub_D6260();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v42 = v67;
      v43 = swift_getKeyPath();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      v45 = (v34 + *(v63 + 36));
      *v45 = v43;
      v45[1] = sub_F0D0;
      v45[2] = v44;
      v39 = &qword_121280;
      v40 = &unk_D8E40;
      sub_FBD4(v34, v61, &qword_121280, &unk_D8E40);
    }

    swift_storeEnumTagMultiPayload();
    sub_EA20();
    sub_EB50();
    v41 = v62;
    sub_D5BF0();
    sub_FC3C(v34, v39, v40);
    sub_FBD4(v41, v47, &qword_121248, &unk_E0EC0);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_E994();
    sub_D5BF0();
    return sub_FC3C(v41, &qword_121248, &unk_E0EC0);
  }
}

uint64_t sub_D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSAddressDetailView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = a1 + *(__chkstk_darwin(v5 - 8) + 28);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  _s9ViewModelCMa_0();
  sub_EB08(&qword_121110, _s9ViewModelCMa_0);
  v12 = sub_D5740();
  sub_E05C(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_E0CC(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  (*(*v12 + 648))(a3, v14);
}

uint64_t sub_D3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_D57E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + *(type metadata accessor for MSAddressDetailView() + 28);
  v10 = *(v9 + 8);
  (*v9)(a1);
  sub_EC34(v8);
  sub_D57D0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_D4A4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 1162760004;
  v19._object = 0xE400000000000000;
  sub_D66D0(v19);
  v20._countAndFlagsBits = 2777980912;
  v20._object = 0xA400000000000000;
  sub_D66D0(v20);
  v23._countAndFlagsBits = 2777980912;
  v18._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 1162760004;
  v21._object = 0xE400000000000000;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v4.super.isa = v3;
  v23._object = 0xA400000000000000;
  sub_D4E80(v21, v22, v4, v23, v18);

  sub_DFAC();
  v5 = sub_D5F50();
  v7 = v6;
  v9 = v8;
  sub_D5E30();
  v10 = sub_D5E80();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_F16C(v5, v7, v9 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_D624@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_D6B4(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_D74C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_66D4(&qword_121518, &qword_D9410);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = v1[1];
  v25 = *v1;
  v26 = v7;
  v9 = *v1;
  v8 = v1[1];
  v27 = v1[2];
  v28 = *(v1 + 24);
  v21 = v9;
  v10 = v1[2];
  v22 = v8;
  v23 = v10;
  v24 = *(v1 + 24);
  sub_66D4(&qword_1213D0, &unk_D9090);
  sub_D6310();
  swift_getKeyPath();
  v21 = v29[0];
  v22 = v29[1];
  v23 = v29[2];
  v24 = v30;
  sub_D6300();

  sub_FC3C(v29, &qword_1213D0, &unk_D9090);
  v19 = v1;
  sub_66D4(&qword_121520, &qword_D9438);
  sub_10334();
  sub_D62C0();
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  sub_D62E0();

  if (v20)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v1 + 50) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11 & 1;
  v14 = v18;
  (*(v3 + 32))(v18, v6, v2);
  result = sub_66D4(&qword_121550, &qword_D9450);
  v16 = (v14 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_10ACC;
  v16[2] = v13;
  return result;
}

uint64_t sub_DA28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = *(a1 + 24);
  sub_66D4(&qword_1213D0, &unk_D9090);
  sub_D62E0();

  v24._countAndFlagsBits = 64;
  v24._object = 0xE100000000000000;
  sub_D66D0(v24);

  sub_D66D0(v19);

  sub_DFAC();
  v3 = sub_D5F50();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = (a2 + *(sub_66D4(&qword_121548, &unk_E37D0) + 36));
  v11 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v12 = enum case for Text.TruncationMode.middle(_:);
  v13 = sub_D5EF0();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  KeyPath = swift_getKeyPath();
  v15 = a2 + *(sub_66D4(&qword_121538, &unk_D9440) + 36);
  *v15 = KeyPath;
  *(v15 + 8) = 1;
  *(v15 + 16) = 0;
  v16 = swift_getKeyPath();
  result = sub_66D4(&qword_121520, &qword_D9438);
  v18 = (a2 + *(result + 36));
  *v18 = v16;
  v18[1] = 0x3FE999999999999ALL;
  return result;
}

uint64_t sub_DC60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[15] = *(v1 + 47);
  return sub_D74C(a1);
}

uint64_t sub_DCA4()
{
  sub_66D4(&qword_121168, &qword_D8D58);
  sub_6110(&qword_121170, &unk_D8D60);
  sub_6110(&qword_121178, &qword_DB0C0);
  sub_6110(&qword_121180, &unk_D8D70);
  sub_6110(&qword_121188, &unk_E3860);
  sub_6110(&qword_121190, &unk_D8D80);
  sub_6110(&qword_121198, &unk_E3870);
  sub_DEF4();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1211C0, &qword_121188, &unk_E3860);
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  swift_getOpaqueTypeConformance2();
  return sub_D5850();
}

unint64_t sub_DEF4()
{
  result = qword_1211A0;
  if (!qword_1211A0)
  {
    sub_6110(&qword_121198, &unk_E3870);
    sub_109A8(&qword_1211A8, &qword_1211B0, &qword_D8D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211A0);
  }

  return result;
}

unint64_t sub_DFAC()
{
  result = qword_1211B8;
  if (!qword_1211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211B8);
  }

  return result;
}

unint64_t sub_E000()
{
  result = qword_1211C8;
  if (!qword_1211C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211C8);
  }

  return result;
}

uint64_t sub_E05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddressDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E0CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddressDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_66D4(&qword_121558, &qword_D9458);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v9 = v2[1];
  v10 = v2[2];
  v23 = *v2;
  v8 = v23;
  v11 = swift_allocObject();
  v12 = *(v2 + 1);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = v2[4];
  sub_10578(&v23, v22);

  v13 = sub_D63E0();
  v15 = v14;
  v16 = sub_66D4(&qword_121560, &qword_D9460);
  (*(*(v16 - 8) + 16))(v7, a1, v16);
  v17 = &v7[*(v4 + 36)];
  *v17 = sub_10570;
  v17[1] = v11;
  v17[2] = v13;
  v17[3] = v15;
  v22[0] = v8;
  v22[1] = v9;
  v22[2] = v10;
  sub_66D4(&qword_121568, &qword_D9468);
  sub_D62E0();
  v18 = swift_allocObject();
  v19 = *(v2 + 1);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v19;
  *(v18 + 48) = v2[4];
  sub_10578(&v23, v22);

  sub_66D4(&qword_121570, &qword_D9470);
  sub_1061C();
  sub_10700();
  sub_D5F80();

  return sub_FC3C(v7, &qword_121558, &qword_D9458);
}

uint64_t sub_E400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_D5800();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_D6190();
  sub_D63E0();
  sub_D5930();
  (*(v7 + 16))(v9, a1, v6);
  v11 = a2[1];
  v29 = *a2;
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v9, v6);
  v15 = v14 + v13;
  v16 = *(a2 + 1);
  *v15 = *a2;
  *(v15 + 16) = v16;
  v17 = v24;
  *(a3 + 56) = v25;
  v18 = v27;
  *(a3 + 72) = v26;
  *(a3 + 88) = v18;
  *(a3 + 104) = v28;
  v19 = v23;
  *(a3 + 8) = v22;
  *(a3 + 24) = v19;
  *(v15 + 32) = a2[4];
  *a3 = v10;
  *(a3 + 40) = v17;
  *(a3 + 120) = sub_10834;
  *(a3 + 128) = v14;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  sub_10578(&v29, v21);
}

uint64_t sub_E60C(uint64_t a1, uint64_t *a2)
{
  sub_D57F0();
  v4 = v3;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v14 = v6;
  v11 = v6;
  v12 = v5;
  v13 = v7;
  sub_10578(&v14, &v10);

  sub_66D4(&qword_121568, &qword_D9468);
  sub_D62E0();
  if (v10 < v4)
  {
    sub_D57F0();
    v11 = v6;
    v12 = v5;
    v13 = v7;
    v10 = v8;
    sub_D62F0();
  }

  sub_E158(&v14);
}

double sub_E6E8@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  *&v8 = *(a2 + 2);
  sub_66D4(&qword_121568, &qword_D9468);
  sub_D62E0();
  sub_D63F0();
  sub_D57C0();
  sub_FBD4(a1, a3, &qword_121558, &qword_D9458);
  v5 = (a3 + *(sub_66D4(&qword_121570, &qword_D9470) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_E7EC()
{
  result = qword_121210;
  if (!qword_121210)
  {
    sub_6110(&qword_121208, &unk_D8E10);
    sub_EB08(&qword_121218, &type metadata accessor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121210);
  }

  return result;
}

unint64_t sub_E8DC()
{
  result = qword_121228;
  if (!qword_121228)
  {
    sub_6110(&qword_121220, &unk_E0EB0);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121228);
  }

  return result;
}

unint64_t sub_E994()
{
  result = qword_121240;
  if (!qword_121240)
  {
    sub_6110(&qword_121248, &unk_E0EC0);
    sub_EA20();
    sub_EB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121240);
  }

  return result;
}

unint64_t sub_EA20()
{
  result = qword_121250;
  if (!qword_121250)
  {
    sub_6110(&qword_121258, &unk_D8E30);
    sub_EB08(&qword_121260, &type metadata accessor for DoneButton);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121250);
  }

  return result;
}

uint64_t sub_EB08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_EB50()
{
  result = qword_121278;
  if (!qword_121278)
  {
    sub_6110(&qword_121280, &unk_D8E40);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121278);
  }

  return result;
}

uint64_t sub_EC34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D5B10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_FBD4(v2, &v17 - v11, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_D57E0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_D68C0();
    v16 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_EF58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_EFE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_F05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D5A00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_F088(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_D5A10();
}

uint64_t sub_F16C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F23C(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F298(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_F2AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_F2D0()
{
  result = qword_1212F0;
  if (!qword_1212F0)
  {
    sub_6110(&qword_1212E0, &qword_D8F58);
    sub_F354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1212F0);
  }

  return result;
}

unint64_t sub_F354()
{
  result = qword_1212F8;
  if (!qword_1212F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1212F8);
  }

  return result;
}

unint64_t sub_F3B0()
{
  result = qword_121320;
  if (!qword_121320)
  {
    sub_6110(&qword_121318, &qword_D8F78);
    sub_109A8(&qword_121328, &qword_121330, &unk_D8F80);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121320);
  }

  return result;
}

unint64_t sub_F50C()
{
  result = qword_121350;
  if (!qword_121350)
  {
    sub_6110(&qword_121348, &qword_D8FD8);
    sub_F5B8();
    sub_F670(&qword_121368, &qword_121370, &qword_DB270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121350);
  }

  return result;
}

unint64_t sub_F5B8()
{
  result = qword_121358;
  if (!qword_121358)
  {
    sub_6110(&qword_121360, &unk_D8FE0);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121358);
  }

  return result;
}

uint64_t sub_F670(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_F768(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MSAddressDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_F7DC()
{
  result = qword_121398;
  if (!qword_121398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121398);
  }

  return result;
}

uint64_t sub_F838()
{
  v1 = type metadata accessor for MSAddressDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + v1[5];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_E0C4();
  v12 = *(v5 + v1[6] + 8);

  v13 = *(v5 + v1[7] + 8);

  v14 = *(v5 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_F990@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MSAddressDetailView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_A5D4(a1, v6, a2);
}

unint64_t sub_FA10()
{
  result = qword_1213A8;
  if (!qword_1213A8)
  {
    sub_6110(&qword_1213A0, &qword_D9080);
    sub_109A8(&qword_1213B0, &qword_1213B8, &qword_D9088);
    sub_109A8(&qword_1213C0, &qword_1213B8, &qword_D9088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1213A8);
  }

  return result;
}

unint64_t sub_FAFC()
{
  result = qword_1213C8;
  if (!qword_1213C8)
  {
    sub_6110(&qword_1213D0, &unk_D9090);
    sub_FB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1213C8);
  }

  return result;
}

unint64_t sub_FB80()
{
  result = qword_1213D8;
  if (!qword_1213D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1213D8);
  }

  return result;
}

uint64_t sub_FBD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_66D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_FC3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_66D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_FD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D5A00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_FD68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_D5A10();
}

unint64_t sub_FDA8()
{
  result = qword_121458;
  if (!qword_121458)
  {
    sub_6110(&qword_121440, &qword_D9140);
    sub_109A8(&qword_121460, &qword_121420, &qword_DA840);
    sub_109A8(&qword_121468, &qword_121470, &qword_D91B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121458);
  }

  return result;
}

uint64_t sub_FEA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_66D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_FF0C()
{
  result = qword_1214B0;
  if (!qword_1214B0)
  {
    sub_6110(&qword_121480, &qword_D91E0);
    sub_FFC4();
    sub_109A8(&qword_1214F8, &qword_1214A8, &qword_D9280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1214B0);
  }

  return result;
}

unint64_t sub_FFC4()
{
  result = qword_1214B8;
  if (!qword_1214B8)
  {
    sub_6110(&qword_1214C0, &qword_D92B8);
    sub_1007C();
    sub_109A8(&qword_1214E8, &qword_1214F0, &qword_D92D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1214B8);
  }

  return result;
}

unint64_t sub_1007C()
{
  result = qword_1214C8;
  if (!qword_1214C8)
  {
    sub_6110(&qword_1214D0, &qword_D92C0);
    sub_109A8(&qword_1214D8, &qword_1214E0, &qword_D92C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1214C8);
  }

  return result;
}

__n128 sub_10134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_101FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10210(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10334()
{
  result = qword_121528;
  if (!qword_121528)
  {
    sub_6110(&qword_121520, &qword_D9438);
    sub_103EC();
    sub_109A8(&qword_1214E8, &qword_1214F0, &qword_D92D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121528);
  }

  return result;
}

unint64_t sub_103EC()
{
  result = qword_121530;
  if (!qword_121530)
  {
    sub_6110(&qword_121538, &unk_D9440);
    sub_104A4();
    sub_109A8(&qword_1214D8, &qword_1214E0, &qword_D92C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121530);
  }

  return result;
}

unint64_t sub_104A4()
{
  result = qword_121540;
  if (!qword_121540)
  {
    sub_6110(&qword_121548, &unk_E37D0);
    sub_109A8(&qword_1214F8, &qword_1214A8, &qword_D9280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121540);
  }

  return result;
}

uint64_t sub_105D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1061C()
{
  result = qword_121578;
  if (!qword_121578)
  {
    sub_6110(&qword_121558, &qword_D9458);
    sub_109A8(&qword_121580, &qword_121560, &qword_D9460);
    sub_109A8(&qword_121588, &qword_121590, &unk_D9478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121578);
  }

  return result;
}

unint64_t sub_10700()
{
  result = qword_121598;
  if (!qword_121598)
  {
    sub_6110(&qword_121570, &qword_D9470);
    sub_1061C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121598);
  }

  return result;
}

uint64_t sub_1078C()
{
  v1 = sub_D5800();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_10834()
{
  v1 = *(sub_D5800() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_E60C(v0 + v2, v3);
}

unint64_t sub_108C4()
{
  result = qword_1215A0;
  if (!qword_1215A0)
  {
    sub_6110(&qword_121550, &qword_D9450);
    sub_109A8(&qword_1215A8, &qword_121518, &qword_D9410);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1215A0);
  }

  return result;
}

uint64_t sub_109A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_109F0()
{
  sub_6110(&qword_121558, &qword_D9458);
  sub_6110(&qword_121570, &qword_D9470);
  sub_1061C();
  sub_10700();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_10B50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

Swift::Int sub_10BCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_D6CB0();
  sub_D6680();
  sub_D6680();
  sub_D6CD0(v5);
  sub_D6CD0(v6);
  return sub_D6CE0();
}

void sub_10C64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_D6680();
  sub_D6680();
  sub_D6CD0(v5);
  sub_D6CD0(v6);
}

Swift::Int sub_10CCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_D6CB0();
  sub_D6680();
  sub_D6680();
  sub_D6CD0(v5);
  sub_D6CD0(v6);
  return sub_D6CE0();
}

uint64_t sub_10D60@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  v8._countAndFlagsBits = 64;
  v8._object = 0xE100000000000000;
  sub_D66D0(v8);

  v9._countAndFlagsBits = v3;
  v9._object = v4;
  sub_D66D0(v9);

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_10DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_D6C20() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 ^ v9 ^ 1u;
  }

  v11 = sub_D6C20();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

uint64_t sub_10ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_10F68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_10FE8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_D6C20();
  }

  return 1;
}

uint64_t sub_11070()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_110DC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

char *sub_11220()
{
  sub_F2AC(*(v0 + 2), *(v0 + 3));
  v1 = *(v0 + 5);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__enabled;
  v4 = sub_66D4(&qword_121068, &qword_DBEE0);
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v3], v4);
  v6 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__addresses;
  v7 = sub_66D4(&qword_121940, &qword_D9720);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__fullName;
  v9 = sub_66D4(&qword_121948, &unk_DC5C0);
  v10 = *(*(v9 - 8) + 8);
  v10(&v0[v8], v9);
  v10(&v0[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__label], v9);
  v5(&v0[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled], v4);
  v5(&v0[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled], v4);
  v5(&v0[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating], v4);
  v5(&v0[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting], v4);
  v11 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
  v12 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = *&v0[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel_cancellables];

  return v0;
}

uint64_t sub_11444()
{
  sub_11220();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_0()
{
  result = qword_121620;
  if (!qword_121620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_114F0()
{
  sub_116AC(319, &qword_120ED8);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_6158(319, &qword_121630, &qword_1213B8, &qword_D9088);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_116AC(319, &qword_121638);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_116AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_D5590();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_116F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_11710(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_117C0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_117F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_11804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1184C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_118B0()
{
  result = qword_1218F0;
  if (!qword_1218F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1218F0);
  }

  return result;
}

unint64_t sub_11908()
{
  result = qword_1218F8;
  if (!qword_1218F8)
  {
    sub_6110(&qword_121498, &qword_D99D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1218F8);
  }

  return result;
}

uint64_t sub_11984@<X0>(uint64_t *a1@<X8>)
{
  _s9ViewModelCMa_0();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

void *sub_119C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v0 = *(v8 + 16);
  if (v0)
  {
    sub_11B90(0, v0, 0);
    v1 = (v8 + 56);
    do
    {
      v2 = *(v1 - 1);
      v3 = *v1;
      v9 = *(v1 - 3);
      v10 = *(v1 - 2);
      swift_bridgeObjectRetain_n();

      v11._countAndFlagsBits = 64;
      v11._object = 0xE100000000000000;
      sub_D66D0(v11);

      v12._countAndFlagsBits = v2;
      v12._object = v3;
      sub_D66D0(v12);

      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_11B90((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[2 * v5];
      *(v6 + 4) = v9;
      *(v6 + 5) = v10;
      v1 += 5;
      --v0;
    }

    while (v0);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_11B5C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_119C4();
  *a1 = result;
  return result;
}

char *sub_11B90(char *a1, int64_t a2, char a3)
{
  result = sub_11CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11BB0(char *a1, int64_t a2, char a3)
{
  result = sub_11DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11BD0(char *a1, int64_t a2, char a3)
{
  result = sub_11EEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11BF0(char *a1, int64_t a2, char a3)
{
  result = sub_12130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11C10(char *a1, int64_t a2, char a3)
{
  result = sub_12258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11C30(char *a1, int64_t a2, char a3)
{
  result = sub_12364(a1, a2, a3, *v3, &qword_121928, &qword_D9708);
  *v3 = result;
  return result;
}

char *sub_11C60(char *a1, int64_t a2, char a3)
{
  result = sub_12364(a1, a2, a3, *v3, &qword_121920, &qword_D9700);
  *v3 = result;
  return result;
}

char *sub_11C90(char *a1, int64_t a2, char a3)
{
  result = sub_12364(a1, a2, a3, *v3, &qword_121918, &qword_D96F8);
  *v3 = result;
  return result;
}

char *sub_11CC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_66D4(&qword_121900, &qword_D96E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_11DD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_66D4(&qword_121910, &qword_D96F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_11EEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_66D4(&qword_121950, &qword_D9728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12008(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_66D4(&qword_121908, &qword_D96E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12130(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_66D4(&qword_121930, &qword_D9710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12258(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_66D4(&qword_121938, &qword_D9718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12364(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_66D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

Swift::Int sub_124A0()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6CC0(v1);
  return sub_D6CE0();
}

Swift::Int sub_12514()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6CC0(v1);
  return sub_D6CE0();
}

uint64_t sub_12558()
{
  if (*v0)
  {
    result = 0x736E69616D6F64;
  }

  else
  {
    result = 0x656D614E6C6C7566;
  }

  *v0;
  return result;
}

uint64_t sub_12594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_12688(uint64_t a1)
{
  v2 = sub_12A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_126C4(uint64_t a1)
{
  v2 = sub_12A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_12700(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_66D4(&qword_121B48, &qword_D99C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_6648(a1, a1[3]);
  sub_12A84();
  sub_D6D00();
  v15 = 0;
  sub_D6B80();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_66D4(&qword_121498, &qword_D99D0);
    sub_12AD8();
    sub_D6BF0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_128C4()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_12914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPrimaryUpdateAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSPrimaryUpdateAPIRequest()
{
  result = qword_121980;
  if (!qword_121980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_129D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_129EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_12A84()
{
  result = qword_121B50;
  if (!qword_121B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B50);
  }

  return result;
}

unint64_t sub_12AD8()
{
  result = qword_121B58;
  if (!qword_121B58)
  {
    sub_6110(&qword_121498, &qword_D99D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSPrimaryUpdateAPIRequest.Body.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MSPrimaryUpdateAPIRequest.Body.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_12CC8()
{
  result = qword_121B60;
  if (!qword_121B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B60);
  }

  return result;
}

unint64_t sub_12D20()
{
  result = qword_121B68;
  if (!qword_121B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B68);
  }

  return result;
}

unint64_t sub_12D78()
{
  result = qword_121B70;
  if (!qword_121B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B70);
  }

  return result;
}

uint64_t sub_12DCC()
{
  sub_67D4((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_12E28@<X0>(uint64_t *a1@<X8>)
{
  _s11descr112329O9ViewModelCMa();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

uint64_t sub_12E64(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (!*(*&v64[0] + 16))
  {
  }

  v50 = a1;
  v51 = a2;
  v11 = *(*&v64[0] + 40);
  v12 = *(*&v64[0] + 56);
  v49 = *(*&v64[0] + 64);
  v48 = v11;

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v13 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v10, v13, v6);
  v14 = sub_D5320();
  v15 = sub_D68A0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "[Custom Email Domain] update started", v16, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v17 = (v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain);
  v19 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain);
  v18 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 8);
  v21 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 16);
  v20 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  v47 = v3;
  sub_D5570();

  v23 = *(v17 + 7);
  v22 = *(v17 + 8);
  *&v55 = v19;
  *(&v55 + 1) = v18;
  *&v56 = v21;
  *(&v56 + 1) = v20;
  v57[0] = v49;
  *&v57[8] = v64[0];
  *&v57[24] = v23;
  v58 = v22;
  v63 = v22;
  v61 = *v57;
  v62 = *&v57[16];
  v59 = v55;
  v60 = v56;
  v24 = *v17;
  v25 = v17[1];
  v26 = v17[2];
  v27 = v17[3];
  v65 = *(v17 + 8);
  v64[2] = v26;
  v64[3] = v27;
  v64[0] = v24;
  v64[1] = v25;

  if (sub_B8B90(&v59, v64))
  {
    sub_1409C(&v55);
    return v50(0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v52[0]) = 1;
    v29 = v47;

    sub_D5580();
    v30 = sub_6648((v29 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository), *(v29 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository + 24));
    v31 = *(*v30 + 16);
    v32 = *(*v30 + 24);
    v54[3] = &type metadata for CustomDomain;
    v54[4] = sub_13D84();
    v33 = swift_allocObject();
    v54[0] = v33;
    v34 = v62;
    *(v33 + 48) = v61;
    *(v33 + 64) = v34;
    *(v33 + 80) = v63;
    v35 = v60;
    *(v33 + 16) = v59;
    *(v33 + 32) = v35;
    objc_allocWithZone(type metadata accessor for MSUpdateCustomDomainAPIRequest());
    sub_13E28(v54, v53);
    v36 = v31;
    v37 = v32;
    sub_13E98(&v55, v52);
    v38 = sub_45BC4(v31, v37, v53);

    sub_13EF4(v54);
    v39 = sub_1EB80();

    v52[0] = v39;
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v42 = v62;
    *(v41 + 48) = v61;
    *(v41 + 64) = v42;
    v43 = v63;
    v44 = v60;
    *(v41 + 16) = v59;
    *(v41 + 32) = v44;
    *(v41 + 80) = v43;
    *(v41 + 88) = v40;
    v45 = swift_allocObject();
    *(v45 + 16) = v50;
    *(v45 + 24) = v51;

    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_14038();
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }
}

uint64_t sub_133E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v53 = *(a1 + 24);
  v54 = v13;
  v55 = *(a1 + 32);
  v56 = v12;
  LODWORD(v15) = *(a1 + 40);
  if (v12)
  {
    if (sub_3D770())
    {
      v16 = sub_D6550();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v11, v19, v4);

      v20 = sub_D5320();
      v21 = v5;
      v22 = sub_D68B0();

      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        LODWORD(v51) = v15;
        v15 = v23;
        v24 = swift_slowAlloc();
        v52 = v14;
        v25 = v24;
        v59 = v24;
        *v15 = 136642819;
        v26 = sub_558F0(v16, v18, &v59);
        v27 = v21;
        v28 = v20;
        v29 = v26;

        *(v15 + 4) = v29;
        _os_log_impl(&dword_0, v28, v22, "[Custom Email Domain] params: %{sensitive}s", v15, 0xCu);
        sub_67D4(v25);
        v14 = v52;

        LOBYTE(v15) = v51;

        (*(v27 + 8))(v11, v4);
        v5 = v27;
      }

      else
      {

        (*(v21 + 8))(v11, v4);
        v5 = v21;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v30 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v30, v4);
    v31 = v56;

    v32 = v31;
    v33 = sub_D5320();
    v34 = sub_D68B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v52 = v14;
      v36 = v35;
      v37 = v5;
      v38 = swift_slowAlloc();
      v65 = v38;
      *v36 = 136315138;
      v59 = v54;
      v60 = v32;
      v61 = v52;
      LOBYTE(v62) = v53 & 1;
      v63 = v55;
      v64 = v15 & 1;
      sub_6780();
      v39 = sub_D6C60();
      v41 = sub_558F0(v39, v40, &v65);
      v51 = v4;
      v42 = v41;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v33, v34, "[Custom Email Domain] update failed: %s", v36, 0xCu);
      sub_67D4(v38);

      v14 = v52;

      (*(v37 + 8))(v9, v51);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v56;
    if (v56)
    {
      v44 = v54;
    }

    else
    {
      v44 = 0;
    }

    if (v56)
    {
      v45 = v14;
    }

    else
    {
      v45 = 0;
    }

    if (v56)
    {
      v46 = v53 & 1;
    }

    else
    {
      v46 = 0;
    }

    if (v56)
    {
      v47 = v55;
    }

    else
    {
      v47 = 0;
    }

    if (v56)
    {
      v48 = v15 & 1;
    }

    else
    {
      v48 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v44;
    v60 = v43;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    v64 = v48;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_13980(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Custom Email Domain] update successful", v11, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return a2(1);
}

uint64_t sub_13B88()
{
  sub_67D4((v0 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository));
  v1 = v0 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain;
  v2 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 24);
  v4 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 48);
  v5 = *(v1 + 64);
}

uint64_t sub_13C00()
{
  v0 = sub_11220();
  v1 = OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository;

  sub_67D4((v2 + v1));
  v3 = *&v0[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 8];
  v4 = *&v0[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 24];
  v5 = *&v0[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 48];
  v6 = *&v0[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 64];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for MSCustomEmailDetailViewModel()
{
  result = qword_121C50;
  if (!qword_121C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_13D84()
{
  result = qword_121F28;
  if (!qword_121F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121F28);
  }

  return result;
}

uint64_t sub_13DD8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_13E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_121F30, &unk_DC820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13EF4(uint64_t a1)
{
  v2 = sub_66D4(&qword_121F30, &unk_DC820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13F5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_13F94()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_13FF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_14038()
{
  result = qword_121F40;
  if (!qword_121F40)
  {
    sub_6110(&qword_121F38, &qword_D9CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121F40);
  }

  return result;
}

uint64_t sub_140F8()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_14148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSMailImportListAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSMailImportListAPIRequest()
{
  result = qword_121F70;
  if (!qword_121F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_141E4()
{
  if (*v0)
  {
    result = 0x694874726F706D69;
  }

  else
  {
    result = 0x7374726F706D69;
  }

  *v0;
  return result;
}

uint64_t sub_1422C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7374726F706D69 && a2 == 0xE700000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x694874726F706D69 && a2 == 0xED000079726F7473)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_14310(uint64_t a1)
{
  v2 = sub_14C48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1434C(uint64_t a1)
{
  v2 = sub_14C48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_14388@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_145A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_143B4()
{
  sub_D6CB0();
  sub_D6CC0(0);
  return sub_D6CE0();
}

Swift::Int sub_14420()
{
  sub_D6CB0();
  sub_D6CC0(0);
  return sub_D6CE0();
}

uint64_t sub_14474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_14504(uint64_t a1)
{
  v2 = sub_1491C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14540(uint64_t a1)
{
  v2 = sub_1491C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1457C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_147A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_145A8(uint64_t *a1)
{
  v2 = sub_66D4(&qword_122168, &unk_D9F20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_6648(a1, a1[3]);
  sub_14C48();
  sub_D6CF0();
  sub_66D4(&qword_122178, &qword_DA110);
  v11 = 0;
  sub_14C9C();
  sub_D6B70();
  v9 = v12;
  v11 = 1;
  sub_D6B70();
  (*(v3 + 8))(v6, v2);
  sub_67D4(a1);
  return v9;
}

void *sub_147A8(uint64_t *a1)
{
  v3 = sub_66D4(&qword_122138, &qword_D9DA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_1491C();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_14970();
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_1491C()
{
  result = qword_122140;
  if (!qword_122140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122140);
  }

  return result;
}

unint64_t sub_14970()
{
  result = qword_122148;
  if (!qword_122148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSMailImportListAPIResponse.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MSMailImportListAPIResponse.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_14AA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_14B44()
{
  result = qword_122150;
  if (!qword_122150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122150);
  }

  return result;
}

unint64_t sub_14B9C()
{
  result = qword_122158;
  if (!qword_122158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122158);
  }

  return result;
}

unint64_t sub_14BF4()
{
  result = qword_122160;
  if (!qword_122160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122160);
  }

  return result;
}

unint64_t sub_14C48()
{
  result = qword_122170;
  if (!qword_122170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122170);
  }

  return result;
}

unint64_t sub_14C9C()
{
  result = qword_122180;
  if (!qword_122180)
  {
    sub_6110(&qword_122178, &qword_DA110);
    sub_14D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122180);
  }

  return result;
}

unint64_t sub_14D20()
{
  result = qword_122188;
  if (!qword_122188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122188);
  }

  return result;
}

unint64_t sub_14D88()
{
  result = qword_122190;
  if (!qword_122190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122190);
  }

  return result;
}

unint64_t sub_14DE0()
{
  result = qword_122198;
  if (!qword_122198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122198);
  }

  return result;
}

unint64_t sub_14E38()
{
  result = qword_1221A0;
  if (!qword_1221A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221A0);
  }

  return result;
}

uint64_t sub_14E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  sub_14FF0();
  for (i = (a1 + 96); ; i += 72)
  {
    v5 = *(i - 2);
    v4 = *(i - 1);
    v6 = *i;
    v7 = *(i - 6);
    v8 = *(i - 5);
    sub_66D4(&qword_121390, &qword_D9050);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_D8CB0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_F7DC();
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;

    v10 = sub_D6870();
    v11 = sub_D65C0();
    LODWORD(v7) = [v10 evaluateWithObject:v11];

    if (v6 != v7)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_14FF0()
{
  result = qword_1221A8;
  if (!qword_1221A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1221A8);
  }

  return result;
}

uint64_t sub_15068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_66D4(&qword_1221B0, &qword_DA0E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = sub_66D4(&qword_1221B8, &qword_DA0F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24[-v12];
  v25 = a1;
  sub_66D4(&qword_1221C0, &qword_DA0F8);
  sub_15A88();
  sub_D5E60();
  v14 = sub_109A8(&qword_1221E8, &qword_1221B0, &qword_DA0E8);
  sub_D5F90();
  (*(v5 + 8))(v8, v4);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v28._countAndFlagsBits = 2777980912;
  v28._object = 0xA400000000000000;
  v29._countAndFlagsBits = 0x485F54524F504D49;
  v29._object = 0xEE0059524F545349;
  sub_D66D0(v29);
  v30._countAndFlagsBits = 2777980912;
  v30._object = 0xA400000000000000;
  sub_D66D0(v30);
  v23._countAndFlagsBits = 0xE000000000000000;
  v31._countAndFlagsBits = 0x485F54524F504D49;
  v31._object = 0xEE0059524F545349;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v17.super.isa = v16;
  v18 = sub_D4E80(v31, v32, v17, v28, v23);
  v20 = v19;

  v28._countAndFlagsBits = v18;
  v28._object = v20;
  v26 = v4;
  v27 = v14;
  swift_getOpaqueTypeConformance2();
  sub_DFAC();
  sub_D6040();

  (*(v10 + 8))(v13, v9);
  result = sub_66D4(&qword_1221F0, &qword_DA108);
  v22 = (a2 + *(result + 36));
  *v22 = sub_15560;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = 0;
  return result;
}

uint64_t sub_153D0()
{
  sub_66D4(&qword_1221D8, &qword_DA100);
  sub_15B18();
  return sub_D6390();
}

uint64_t sub_15440()
{

  sub_66D4(&qword_122178, &qword_DA110);
  sub_109A8(&qword_1221F8, &qword_122178, &qword_DA110);
  sub_15B9C();
  sub_15BF8();
  return sub_D6340();
}

uint64_t sub_15514@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  v3 = v8[0];
  *(v8 + 9) = *(a1 + 41);
  v4 = *(v8 + 9);
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  *(a2 + 41) = v4;
  return sub_15C4C(v7, &v6);
}

uint64_t sub_15560()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Mail Import History] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_156EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_66D4(&qword_122218, &qword_DA1B0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v46 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v43[-v8];
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v45 = *(a1 + 48);
  v50 = *(a1 + 56);
  v44 = *(a1 + 32);
  v48 = v10;
  v49 = v11;
  sub_DFAC();

  v12 = sub_D5F50();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = &v9[*(v4 + 44)];
  v21 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v22 = enum case for Text.TruncationMode.tail(_:);
  v23 = sub_D5EF0();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v9 = v12;
  *(v9 + 1) = v14;
  v9[16] = v16 & 1;
  *(v9 + 3) = v18;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = 1;
  v9[48] = 0;
  v48 = sub_15EF0(v44, v45, v50);
  v49 = v24;
  v25 = sub_D5F50();
  v27 = v26;
  LOBYTE(KeyPath) = v28;
  sub_D61B0();
  v29 = sub_D5F00();
  v31 = v30;
  LOBYTE(v14) = v32;

  sub_F16C(v25, v27, KeyPath & 1);

  sub_D5E50();
  v33 = sub_D5F20();
  v35 = v34;
  LOBYTE(v18) = v36;
  v38 = v37;

  sub_F16C(v29, v31, v14 & 1);

  v39 = v46;
  sub_16670(v9, v46);
  v40 = v47;
  sub_16670(v39, v47);
  v41 = v40 + *(sub_66D4(&qword_122220, &unk_DA220) + 48);
  *v41 = v33;
  *(v41 + 8) = v35;
  *(v41 + 16) = v18 & 1;
  *(v41 + 24) = v38;
  sub_166E0(v33, v35, v18 & 1);

  sub_166F0(v9);
  sub_F16C(v33, v35, v18 & 1);

  return sub_166F0(v39);
}

uint64_t sub_15A04@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 9) = *(v1 + 41);
  *a1 = sub_D5BB0();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v4 = sub_66D4(&qword_122210, &qword_DA1A8);
  return sub_156EC(v6, a1 + *(v4 + 44));
}

unint64_t sub_15A88()
{
  result = qword_1221C8;
  if (!qword_1221C8)
  {
    sub_6110(&qword_1221C0, &qword_DA0F8);
    sub_15B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221C8);
  }

  return result;
}

unint64_t sub_15B18()
{
  result = qword_1221D0;
  if (!qword_1221D0)
  {
    sub_6110(&qword_1221D8, &qword_DA100);
    sub_15B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221D0);
  }

  return result;
}

unint64_t sub_15B9C()
{
  result = qword_1221E0;
  if (!qword_1221E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221E0);
  }

  return result;
}

unint64_t sub_15BF8()
{
  result = qword_122200;
  if (!qword_122200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122200);
  }

  return result;
}

__n128 sub_15CA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_15CC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15D0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_15D70()
{
  result = qword_122208;
  if (!qword_122208)
  {
    sub_6110(&qword_1221F0, &qword_DA108);
    sub_6110(&qword_1221B8, &qword_DA0F0);
    sub_6110(&qword_1221B0, &qword_DA0E8);
    sub_109A8(&qword_1221E8, &qword_1221B0, &qword_DA0E8);
    swift_getOpaqueTypeConformance2();
    sub_DFAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122208);
  }

  return result;
}

uint64_t sub_15EF0(int a1, uint64_t a2, char a3)
{
  v43[1] = a2;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_D4F70();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_D4FB0();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v44);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_D5030();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  __chkstk_darwin(v18);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  if (a1 != 1)
  {
    v22 = sub_D6C20();

    if ((v22 & 1) != 0 && (a3 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v31 = sub_6610(v5, qword_137988);
    (*(v6 + 16))(v9, v31, v5);
    v32 = sub_D5320();
    v33 = sub_D68B0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Mail Import History has non-completed statuses", v34, 2u);
    }

    (*(v6 + 8))(v9, v5);
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v36 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    if (v49 == 1)
    {
      v37 = "IMPORT_STATUS_COMPLETED";
    }

    else
    {
      if (v49)
      {
        v50._countAndFlagsBits = 2777980912;
        v50._object = 0xA400000000000000;
        v57._object = 0x80000000000E7380;
        v57._countAndFlagsBits = 0xD000000000000014;
        sub_D66D0(v57);
        v58._countAndFlagsBits = 2777980912;
        v58._object = 0xA400000000000000;
        sub_D66D0(v58);
        v42._countAndFlagsBits = 0xE000000000000000;
        v59._object = 0x80000000000E7380;
        v59._countAndFlagsBits = 0xD000000000000014;
        v62.value._countAndFlagsBits = 0;
        v62.value._object = 0;
        v40.super.isa = v36;
        v30 = sub_D4E80(v59, v62, v40, v50, v42);

        goto LABEL_16;
      }

      v37 = "IMPORT_STATUS_IMPORTING";
    }

    v38 = v37 - 32;
    v50._countAndFlagsBits = 2777980912;
    v50._object = 0xA400000000000000;
    v54._object = ((v37 - 32) | 0x8000000000000000);
    v54._countAndFlagsBits = 0xD000000000000017;
    sub_D66D0(v54);
    v55._countAndFlagsBits = 2777980912;
    v55._object = 0xA400000000000000;
    sub_D66D0(v55);
    v42._countAndFlagsBits = 0xE000000000000000;
    v56._object = (v38 | 0x8000000000000000);
    v56._countAndFlagsBits = 0xD000000000000017;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v39.super.isa = v36;
    v30 = sub_D4E80(v56, v61, v39, v50, v42);

LABEL_16:

    return v30;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_D4FF0();
  type metadata accessor for MAPreferencesViewProvider();
  v23 = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:v23];
  v50._countAndFlagsBits = 2777980912;
  v50._object = 0xA400000000000000;
  v51._object = 0x80000000000E73E0;
  v51._countAndFlagsBits = 0xD000000000000010;
  sub_D66D0(v51);
  v52._countAndFlagsBits = 2777980912;
  v52._object = 0xA400000000000000;
  sub_D66D0(v52);
  v42._countAndFlagsBits = 0xE000000000000000;
  v53._object = 0x80000000000E73E0;
  v53._countAndFlagsBits = 0xD000000000000010;
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v25.super.isa = v24;
  sub_D4E80(v53, v60, v25, v50, v42);

  sub_66D4(&qword_121390, &qword_D9050);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_D8CB0;
  sub_D4F90();
  sub_D4F50();
  v27 = sub_D5010();
  v29 = v28;
  (*(v47 + 8))(v13, v48);
  (*(v14 + 8))(v17, v44);
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_F7DC();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = sub_D6610();

  (*(v45 + 8))(v21, v46);
  return v30;
}

uint64_t sub_16670(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_122218, &qword_DA1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_166E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_166F0(uint64_t a1)
{
  v2 = sub_66D4(&qword_122218, &qword_DA1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1679C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  v59 = a8;
  v55 = a6;
  v54 = a5;
  v9 = v8;
  v57 = a3;
  v60 = a2;
  v56 = a1;
  v11 = sub_D6450();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  __chkstk_darwin(v11);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_D6480();
  v63 = *(v65 - 8);
  v14 = *(v63 + 64);
  __chkstk_darwin(v65);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_D64A0();
  v62 = *(v69 - 8);
  v17 = *(v62 + 64);
  v18 = __chkstk_darwin(v69);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v61 = &v52 - v21;
  v53 = sub_D6460();
  v22 = *(v53 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v53);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_D5340();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a4;
  v31 = exp2(a4);
  v32 = sub_26040(0x20000000000001uLL);
  v33 = vcvtd_n_f64_u64(v32, 0x35uLL) * 0.5 + 0.75;
  if (v32 == 0x20000000000000)
  {
    v33 = 1.25;
  }

  v34 = v31 * v33;
  if (v34 <= 30.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 30.0;
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v36 = sub_6610(v26, qword_137988);
  (*(v27 + 16))(v30, v36, v26);
  v37 = v9;
  v38 = sub_D5320();
  v39 = sub_D6890();
  if (!os_log_type_enabled(v38, v39))
  {

    v38 = v37;
    goto LABEL_12;
  }

  v52 = v16;
  result = swift_slowAlloc();
  *result = 134218496;
  *(result + 4) = v35;
  *(result + 12) = 2048;
  if (!__OFADD__(v68, 1))
  {
    v41 = result;
    *(result + 14) = v68 + 1;
    *(result + 22) = 2048;
    *(result + 24) = 5;

    _os_log_impl(&dword_0, v38, v39, "Rate limited (429). Retrying in %f seconds. Attempt %ld/%ld", v41, 0x20u);

    v16 = v52;
LABEL_12:

    (*(v27 + 8))(v30, v26);
    sub_26338();
    v42 = v53;
    (*(v22 + 104))(v25, enum case for DispatchQoS.QoSClass.utility(_:), v53);
    v52 = sub_D6920();
    (*(v22 + 8))(v25, v42);
    sub_D6490();
    v43 = v61;
    sub_D64B0();
    v62 = *(v62 + 8);
    (v62)(v20, v69);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v46 = v56;
    *(v45 + 16) = v44;
    *(v45 + 24) = v46;
    *(v45 + 32) = v60;
    *(v45 + 40) = v57 & 1;
    *(v45 + 48) = v68;
    aBlock[4] = v58;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_219D0;
    aBlock[3] = v59;
    v47 = _Block_copy(aBlock);

    sub_D6470();
    v70 = _swiftEmptyArrayStorage;
    sub_26458(&qword_122400, &type metadata accessor for DispatchWorkItemFlags);
    v48 = v16;
    sub_66D4(&qword_122408, &qword_DC730);
    sub_109A8(&qword_122410, &qword_122408, &qword_DC730);
    v49 = v64;
    v50 = v67;
    sub_D6990();
    v51 = v52;
    sub_D68E0();
    _Block_release(v47);

    (*(v66 + 8))(v49, v50);
    (*(v63 + 8))(v48, v65);
    (v62)(v43, v69);
  }

  __break(1u);
  return result;
}

void sub_16EDC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113340;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_27020;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115B60;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_17428(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113370;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_2698C;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115458;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_17974(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1133A0;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_263BC;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115020;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_17EC0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1133D0;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_26E7C;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_1159F8;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1840C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113400;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_26730;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115188;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_18958(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113430;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_268EC;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_1152F0;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_18EA4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113460;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_2730C;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115CC8;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_193F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113490;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_26D14;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115890;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1993C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1134C0;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_26A28;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_1155C0;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_19E88(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v49 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v54 = a1;
  v17 = a1;
  v18 = sub_D5320();
  v19 = sub_D68B0();
  v53 = v16;

  v52 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = a5;
    *v20 = 138412546;
    v22 = v52;
    *(v20 + 4) = v52;
    *(v20 + 12) = 2112;
    v23 = v53;
    *(v20 + 14) = v53;
    *v21 = v54;
    v21[1] = a2;
    v24 = v22;
    v25 = v23;
    _os_log_impl(&dword_0, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v48;
  }

  (*(v11 + 8))(v14, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v27;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v28;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1134F0;
  v29 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v30 = qword_126728;
  v31 = v51;
  v32 = *(v51 + qword_126728);
  if (v32)
  {
    v33 = *(v51 + qword_126728);
LABEL_9:
    v38 = *(v31 + qword_126730);
    v39 = v32;
    sub_21A14(v29);

    isa = sub_D6520().super.isa;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v49;
    v42[2] = v41;
    v42[3] = v43;
    v44 = v54;
    v42[4] = a5;
    v42[5] = v44;
    v42[6] = a2;
    v42[7] = a3;
    v42[8] = v50;
    aBlock[4] = sub_26B7C;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115728;
    v45 = _Block_copy(aBlock);
    v46 = v52;
    v47 = v53;

    swift_errorRetain();

    [v33 renewCredentialsForAccount:v38 options:isa completion:v45];
    _Block_release(v45);

    return;
  }

  v34 = objc_opt_self();
  v35 = [v34 defaultStore];
  v36 = *(v31 + v30);
  *(v31 + v30) = v35;

  v37 = [v34 defaultStore];
  if (v37)
  {
    v33 = v37;
    v32 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1A3D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_27008;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115B10;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_1225C0, &qword_DAF50);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1AAB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_26974;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115408;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_1224A0, &qword_DA5D8);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1B194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_2638C;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_114FD0;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_1223D0, &qword_DAF20);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1B874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_26E64;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_1159A8;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_122588, &qword_DA678);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1BF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_26718;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115138;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_122440, &qword_DAF30);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1C634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_268D0;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_1152A0;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_122470, &qword_DA5B8);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1CD14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_271C4;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115C78;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_1225F0, &qword_DAF60);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1D3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_26CFC;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115840;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_122548, &qword_DAF40);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1DAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_26A10;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115570;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_1224D0, &qword_DA5F8);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}