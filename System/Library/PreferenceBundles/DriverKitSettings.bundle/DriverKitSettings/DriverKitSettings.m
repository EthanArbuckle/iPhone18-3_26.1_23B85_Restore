__CFString *LocalizedString(void *a1)
{
  v1 = a1;
  if (qword_C538[0] != -1)
  {
    sub_4C4C();
  }

  v2 = [qword_C530 localizedStringForKey:v1 value:@"localized string not found" table:@"DriverKitSettings"];
  if (v2 == @"localized string not found" && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_4C60(v1);
  }

  return v2;
}

void sub_16D0(id a1)
{
  qword_C530 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_1BDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + OBJC_IVAR___PSBundleController__parent));
  [WeakRetained reloadSpecifiers];
}

uint64_t sub_1C2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1C44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1C()
{
  v1 = sub_4D80();
  v2 = *(*(v1 - 8) + 64);
  (__chkstk_darwin)();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_4D60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = sub_4D70();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 24);
  v18 = direct field offset for DriverApprovalState.driver;
  v19 = sub_4D50();
  sub_3670(v17 + *(v19 + 20) + v18, v16, &type metadata accessor for DriverKitDriverSource);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    v20 = sub_4F30();
    v21 = LocalizedString(v20);

    v22 = sub_4F40();
  }

  else
  {
    sub_36D8(v16, v12, &type metadata accessor for DriverKitDriverApp);
    sub_3670(v12, v10, &type metadata accessor for DriverKitDriverApp);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_3740(v10, &type metadata accessor for DriverKitDriverApp);
      v23 = sub_4F30();
      v24 = LocalizedString(v23);

      v22 = sub_4F40();
      v25 = v12;
      v26 = &type metadata accessor for DriverKitDriverApp;
    }

    else
    {
      sub_3740(v12, &type metadata accessor for DriverKitDriverApp);
      sub_36D8(v10, v4, &type metadata accessor for SettingsApplicationRecord);
      v27 = &v4[*(v1 + 36)];
      v22 = *v27;
      v28 = v27[1];

      v25 = v4;
      v26 = &type metadata accessor for SettingsApplicationRecord;
    }

    sub_3740(v25, v26);
  }

  return v22;
}

__n128 sub_2068@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = (*(v1 + 24) + direct field offset for DriverApprovalState.driver);
  v5 = (v4 + *(sub_4D50() + 24));
  v6 = v5[1];
  if (v3 >= 2)
  {
    if (v6)
    {
      v9 = *v5;
      v10 = v5[1];
    }

    else
    {
      v9 = *v4;
      v26 = v4[1];
    }

    *&v36 = v9;
    *(&v36 + 1) = v10;
    sub_3420();

    sub_4E40();
    sub_3140(&qword_C408, &qword_56B8);
    sub_3474(&qword_C400, &qword_C408, &qword_56B8);
    sub_4E00();
  }

  else
  {
    v29 = a1;
    if (v6)
    {
      v7 = *v5;
      v8 = v5[1];
    }

    else
    {
      v12 = *v4;
      v11 = v4[1];
    }

    sub_3420();

    v13 = sub_4E40();
    v30 = v14;
    v28 = v15;
    sub_1D1C();
    v16 = sub_4E40();
    v18 = v17;
    v20 = v19;
    sub_4E10();
    v21 = sub_4E30();
    v23 = v22;
    v25 = v24;

    sub_3650(v16, v18, v20 & 1);

    sub_3660(v13, v30, v28 & 1);

    sub_3660(v21, v23, v25 & 1);

    sub_3660(v13, v30, v28 & 1);

    sub_3660(v21, v23, v25 & 1);

    sub_3650(v21, v23, v25 & 1);

    sub_3650(v13, v30, v28 & 1);

    sub_3140(&qword_C408, &qword_56B8);
    sub_3474(&qword_C400, &qword_C408, &qword_56B8);
    sub_4E00();
    sub_3650(v21, v23, v25 & 1);

    sub_3650(v13, v30, v28 & 1);

    v38 = v33;
    v39 = v34;
    v40 = v35;
    v36 = v31;
    v37 = v32;
    a1 = v29;
  }

  *(a1 + 32) = v38;
  *(a1 + 48) = v39;
  *(a1 + 64) = v40;
  result = v37;
  *a1 = v36;
  *(a1 + 16) = v37;
  return result;
}

uint64_t sub_2428@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_3140(&qword_C3E8, &qword_56A8);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = v32 - v5;
  sub_4F80();
  sub_3188(v1, v45);
  v7 = sub_4F70();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = v1[1];
  *(v8 + 32) = *v1;
  *(v8 + 48) = v9;
  v10 = v1[3];
  *(v8 + 64) = v1[2];
  *(v8 + 80) = v10;
  sub_3188(v1, v45);
  v11 = sub_4F70();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  v13 = v2[1];
  *(v12 + 32) = *v2;
  *(v12 + 48) = v13;
  v14 = v2[3];
  *(v12 + 64) = v2[2];
  *(v12 + 80) = v14;
  sub_4F00();
  v15 = v45[0];
  v16 = v45[1];
  v41 = v2;

  sub_3140(&qword_C3F0, &qword_56B0);
  sub_32BC();
  v38 = v6;
  v36 = v15;
  v35 = v16;
  sub_4EF0();
  v17 = sub_4F30();
  v18 = LocalizedString(v17);

  sub_4F40();
  sub_3140(&qword_C410, &qword_56C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_55A0;
  v20 = (*(v2 + 3) + direct field offset for DriverApprovalState.driver);
  v21 = (v20 + *(sub_4D50() + 24));
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];
  }

  else
  {
    v22 = *v20;
    v23 = v20[1];
  }

  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_33BC();
  *(v19 + 32) = v22;
  *(v19 + 40) = v23;

  v24 = sub_4F50();
  v26 = v25;
  v34 = v25;

  v43 = v24;
  v44 = v26;
  v42 = v2[3];
  sub_3140(&qword_C420, &qword_56C8);
  v27 = sub_4EC0();
  v33 = v32;
  v32[3] = v46;
  v28 = __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  sub_3140(&qword_C428, &qword_56D0);
  sub_3140(&qword_C430, &qword_56D8);
  sub_3474(&qword_C438, &qword_C3E8, &qword_56A8);
  sub_3420();
  sub_3474(&qword_C448, &qword_C428, &qword_56D0);
  sub_34BC();
  v29 = v40;
  v30 = v38;
  sub_4E90();

  return (*(v39 + 8))(v30, v29);
}

void sub_2948(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a4 + 24);
  if (sub_4CF0())
  {
  }

  else if (sub_4CE0() == 1)
  {
    if ((v5 & 1) == 0)
    {
      if (*a4)
      {
        v8 = *a4;
        sub_4D10();
      }

      else
      {
        v7 = *(a4 + 8);
        sub_4D40();
        sub_35F8();
        sub_4DD0();
        __break(1u);
      }
    }
  }

  else if (v5)
  {
    v9 = *(a4 + 48);
    sub_3140(&qword_C420, &qword_56C8);
    sub_4EB0();
  }
}

uint64_t sub_2A70@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_3140(&qword_C458, &qword_56E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_3140(&qword_C460, &qword_56E8);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v33 - v17;
  __chkstk_darwin(v16);
  v20 = &v33 - v19;
  sub_4DA0();
  v21 = sub_4DB0();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  v22 = swift_allocObject();
  v23 = a1[1];
  v22[1] = *a1;
  v22[2] = v23;
  v24 = a1[3];
  v22[3] = a1[2];
  v22[4] = v24;
  sub_3188(a1, v35);
  sub_4ED0();
  v25 = swift_allocObject();
  v26 = a1[1];
  v25[1] = *a1;
  v25[2] = v26;
  v27 = a1[3];
  v25[3] = a1[2];
  v25[4] = v27;
  sub_3188(a1, v35);
  sub_4EE0();
  v28 = v8[2];
  v28(v15, v20, v7);
  v28(v12, v18, v7);
  v29 = v34;
  v28(v34, v15, v7);
  v30 = sub_3140(&qword_C468, &unk_56F0);
  v28(&v29[*(v30 + 48)], v12, v7);
  v31 = v8[1];
  v31(v18, v7);
  v31(v20, v7);
  v31(v12, v7);
  return (v31)(v15, v7);
}

uint64_t sub_2E08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4F30();
  v3 = LocalizedString(v2);

  sub_4F40();
  sub_3420();
  result = sub_4E40();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

void sub_2EAC(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_3140(&qword_C420, &qword_56C8);
  sub_4EB0();
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 24);
    v4 = v2;
    sub_4D10();
  }

  else
  {
    v5 = *(a1 + 8);
    sub_4D40();
    sub_35F8();
    sub_4DD0();
    __break(1u);
  }
}

uint64_t sub_2F54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4F30();
  v3 = LocalizedString(v2);

  sub_4F40();
  sub_3420();
  result = sub_4E40();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

double sub_2FF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = direct field offset for DriverApprovalState.driver;
  v5 = (v3 + *(sub_4D50() + 28) + v4);
  if (*(v5 + 1))
  {
    v7 = *v5;
    sub_3420();

    sub_4E40();
  }

  sub_4E00();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_3104@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2428(a1);
}

uint64_t sub_3140(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_31C4@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 56);
  result = sub_4CE0();
  *a1 = result == 1;
  return result;
}

uint64_t sub_31FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 72) >= 2uLL)
  {
  }

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

__n128 sub_3268@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_2068(v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_32BC()
{
  result = qword_C3F8;
  if (!qword_C3F8)
  {
    sub_3374(&qword_C3F0, &qword_56B0);
    sub_3474(&qword_C400, &qword_C408, &qword_56B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3F8);
  }

  return result;
}

uint64_t sub_3374(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_33BC()
{
  result = qword_C418;
  if (!qword_C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C418);
  }

  return result;
}

unint64_t sub_3420()
{
  result = qword_C440;
  if (!qword_C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C440);
  }

  return result;
}

uint64_t sub_3474(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3374(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_34BC()
{
  result = qword_C450;
  if (!qword_C450)
  {
    sub_3374(&qword_C430, &qword_56D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C450);
  }

  return result;
}

uint64_t sub_3544()
{
  v2 = *(v0 + 64);
  sub_3140(&qword_C420, &qword_56C8);
  return sub_4EB0();
}

uint64_t sub_3598()
{
  if (*(v0 + 56) >= 2uLL)
  {
  }

  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_35F8()
{
  result = qword_C470;
  if (!qword_C470)
  {
    sub_4D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C470);
  }

  return result;
}

uint64_t sub_3650(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3660(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_36D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_37A0()
{
  sub_3374(&qword_C3E8, &qword_56A8);
  sub_3374(&qword_C428, &qword_56D0);
  sub_3374(&qword_C430, &qword_56D8);
  sub_3474(&qword_C438, &qword_C3E8, &qword_56A8);
  sub_3420();
  sub_3474(&qword_C448, &qword_C428, &qword_56D0);
  sub_34BC();
  return swift_getOpaqueTypeConformance2();
}

id sub_38D8()
{
  v1 = OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController;
  v2 = *&v0[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController];
  }

  else
  {
    v4 = sub_393C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_393C(void *a1)
{
  result = [a1 specifier];
  if (result)
  {
    v2 = result;
    v3 = [result propertyForKey:PSAppSettingsBundleIDKey];

    if (v3)
    {
      sub_4F90();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v14 = v18;
    v15 = v19;
    if (*(&v19 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v12;
        v5 = v13;
LABEL_10:
        sub_4D40();
        sub_35F8();
        v6 = sub_4DE0();
        v8 = v7;
        v9 = *sub_4D30();
        v10 = sub_4D90();
        *&v14 = v6;
        *(&v14 + 1) = v8;
        *&v15 = v4;
        *(&v15 + 1) = v5;
        v16 = v10;
        v17 = v9;
        v11 = objc_allocWithZone(sub_3140(&qword_C4C0, &unk_5760));
        return sub_4DF0();
      }
    }

    else
    {
      sub_415C(&v14);
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_3AA8()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v1 = sub_4F30();
  v2 = LocalizedString(v1);

  if (!v2)
  {
    sub_4F40();
    v2 = sub_4F30();
  }

  [v0 setTitle:v2];

  v3 = sub_38D8();
  [v0 addChildViewController:v3];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController;
  v7 = [*&v0[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController] view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  [v5 addSubview:v7];

  v9 = [*&v0[v6] view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_3140(&qword_C4A8, &qword_5750);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5700;
  v12 = [*&v0[v6] view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v12 trailingAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v11 + 32) = v18;
  v19 = [*&v0[v6] view];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v11 + 40) = v25;
  v26 = [*&v0[v6] view];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v0 view];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v11 + 48) = v32;
  v33 = [*&v0[v6] view];
  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v0 view];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 bottomAnchor];

    v39 = [v35 constraintEqualToAnchor:v38];
    *(v11 + 56) = v39;
    v40 = objc_opt_self();
    sub_4110();
    isa = sub_4F60().super.isa;

    [v40 activateConstraints:isa];

    return;
  }

LABEL_25:
  __break(1u);
}

id sub_40A4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_4110()
{
  result = qword_C4B0;
  if (!qword_C4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4B0);
  }

  return result;
}

uint64_t sub_415C(uint64_t a1)
{
  v2 = sub_3140(&qword_C4B8, &qword_5758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_41C4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_41FC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_4288(v4, v3);
  sub_4D40();
  sub_4B58(&qword_C470, &type metadata accessor for DriverManager);
  result = sub_4DE0();
  *a1 = result;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v3;
  return result;
}

uint64_t sub_4288(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_42A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_4300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_4368()
{
  result = qword_C4C8;
  if (!qword_C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4C8);
  }

  return result;
}

uint64_t sub_43D8()
{
  v0 = sub_4F30();
  v1 = LocalizedString(v0);

  sub_4F40();
  sub_3420();
  sub_4E40();
  sub_3140(&qword_C4F0, &qword_58C8);
  sub_4A20();
  return sub_4F20();
}

uint64_t sub_450C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v8 = a1;
    sub_4D20();

    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = a3;
    v9[5] = a4;
    v10 = v8;
    sub_4288(a3, a4);
    sub_3140(&qword_C508, &unk_58D0);
    sub_3474(&qword_C510, &qword_C508, &unk_58D0);
    sub_4AA4();
    sub_4B58(&qword_C518, &type metadata accessor for DriverApprovalState);
    return sub_4F10();
  }

  else
  {
    sub_4D40();
    sub_4B58(&qword_C470, &type metadata accessor for DriverManager);
    result = sub_4DD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_46D4@<X0>(id *a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_4288(a2, a3);
  sub_4D40();
  sub_4B58(&qword_C470, &type metadata accessor for DriverManager);
  v8 = sub_4DE0();
  v10 = v9;
  sub_4D00();
  sub_4B58(&unk_C520, &type metadata accessor for DriverApprovalState);
  v11 = sub_4DC0();
  v13 = v12;
  result = sub_4EA0();
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  *(a4 + 48) = v15;
  *(a4 + 56) = v16;
  return result;
}

uint64_t sub_4814()
{
  v1 = sub_3140(&qword_C4D0, &qword_58B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-v4];
  v6 = v0[1];
  v9 = *v0;
  v10 = v6;
  sub_3140(&qword_C4D8, &qword_58C0);
  sub_4988();
  sub_4E20();
  sub_3474(&qword_C500, &qword_C4D0, &qword_58B8);
  sub_4E50();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_497C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_43D8();
}

unint64_t sub_4988()
{
  result = qword_C4E0;
  if (!qword_C4E0)
  {
    sub_3374(&qword_C4D8, &qword_58C0);
    sub_4A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E0);
  }

  return result;
}

unint64_t sub_4A20()
{
  result = qword_C4E8;
  if (!qword_C4E8)
  {
    sub_3374(&qword_C4F0, &qword_58C8);
    sub_4AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E8);
  }

  return result;
}

unint64_t sub_4AA4()
{
  result = qword_C4F8;
  if (!qword_C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4F8);
  }

  return result;
}

uint64_t sub_4B04()
{
  if (*(v0 + 40) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4B4C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_46D4(a1, v2[4], v2[5], a2);
}

uint64_t sub_4B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4BA0()
{
  sub_3374(&qword_C4D0, &qword_58B8);
  sub_3474(&qword_C500, &qword_C4D0, &qword_58B8);
  return swift_getOpaqueTypeConformance2();
}

void sub_4C60(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to get localized string for %@", &v1, 0xCu);
}