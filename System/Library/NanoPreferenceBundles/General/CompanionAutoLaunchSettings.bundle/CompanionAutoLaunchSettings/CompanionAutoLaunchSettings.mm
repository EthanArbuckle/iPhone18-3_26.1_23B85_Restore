void sub_1E34(uint64_t a1)
{
  v2 = [[NSArray alloc] initWithArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_2200(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v10)
  {
    if (*(a1 + 72) == 1)
    {
      v12 = *(a1 + 48);
      v13 = [v7 bundleIdentifier];
      LOBYTE(v12) = [v12 containsObject:v13];

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = [v7 backgroundModes];
      v17 = [v16 containsObject:@"underwater-depth"];

      if (!v17)
      {
        goto LABEL_19;
      }
    }

    v18 = cslprf_app_library_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v7 bundleIdentifier];
      *buf = 138412802;
      v27 = v9;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[%@] adding %@; %@", buf, 0x20u);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2498;
    v22[3] = &unk_35478;
    v20 = *(a1 + 56);
    v23 = *(a1 + 64);
    v24 = v7;
    [v20 _withLock:v22];
  }

  else
  {
    v14 = cslprf_app_library_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "[%@] done enumerating", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }

LABEL_19:
  os_activity_scope_leave(&state);

  return v11;
}

void sub_24D4(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2674;
  v8[3] = &unk_35518;
  v4 = v2;
  v9 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  v5 = [v4 allValues];
  v6 = cslprf_app_library_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Completed enumeration with apps: %@", buf, 0xCu);
  }

  [*(a1 + 48) _setApplications:v5];
  v7 = [*(a1 + 48) delegate];
  [v7 dataSourceDidUpdate:*(a1 + 48)];

  os_activity_scope_leave(&state);
}

void sub_2674(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_30B0(uint64_t a1)
{
  v2 = [[NSArray alloc] initWithArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_33F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v10)
  {
    v12 = cslprf_app_library_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 bundleIdentifier];
      *buf = 138412802;
      v23 = v9;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[%@] adding %@; %@", buf, 0x20u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_362C;
    v18[3] = &unk_35478;
    v14 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = v7;
    [v14 _withLock:v18];
  }

  else
  {
    v15 = cslprf_app_library_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "[%@] done enumerating", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  os_activity_scope_leave(&state);

  return v11;
}

void sub_3668(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3808;
  v8[3] = &unk_35518;
  v4 = v2;
  v9 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  v5 = [v4 allValues];
  v6 = cslprf_app_library_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Completed enumeration with apps: %@", buf, 0xCu);
  }

  [*(a1 + 48) _setApplications:v5];
  v7 = [*(a1 + 48) delegate];
  [v7 dataSourceDidUpdate:*(a1 + 48)];

  os_activity_scope_leave(&state);
}

void sub_3808(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

char *sub_3B68()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel;
  *&v0[v1] = [objc_allocWithZone(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel;
  v4 = *&v2[OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel];
  v5 = v2;
  [v4 setDelegate:v5];
  [*&v2[v3] start];

  return v5;
}

id sub_3C30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3C74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BacklightSettingsSwiftModel();
  result = sub_26194();
  *a1 = result;
  return result;
}

uint64_t sub_3CB0()
{
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_3D1C();

  return sub_262D4();
}

unint64_t sub_3D1C()
{
  result = qword_3C500[0];
  if (!qword_3C500[0])
  {
    type metadata accessor for BacklightSettingsSwiftModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_3C500);
  }

  return result;
}

id sub_3D70()
{
  v0 = objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel());

  return [v0 init];
}

uint64_t sub_3DA4()
{
  sub_4060(&qword_3B3E0, &unk_28470);
  sub_40A8(&qword_3B3E8, "NG");
  sub_40F0();
  sub_41F0();
  swift_getOpaqueTypeConformance2();
  return sub_26524();
}

uint64_t sub_3E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3B3E8, "NG");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v14 = a1;
  v15 = a2;
  sub_4060(&qword_3B4B0, qword_296B0);
  v9 = sub_40A8(&qword_3B3F8, &qword_28480);
  v10 = sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480);
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeConformance2();
  sub_26774();
  v16 = sub_133CC(0xD000000000000020, 0x800000000002C2E0);
  v17 = v11;
  sub_40F0();
  sub_41F0();
  sub_265F4();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_4060(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_40A8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_40F0()
{
  result = qword_3B3F0;
  if (!qword_3B3F0)
  {
    sub_40A8(&qword_3B3E8, "NG");
    sub_40A8(&qword_3B3F8, &qword_28480);
    sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B3F0);
  }

  return result;
}

unint64_t sub_41F0()
{
  result = qword_3BE10;
  if (!qword_3BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE10);
  }

  return result;
}

uint64_t sub_4244(uint64_t a1)
{
  v2 = sub_264F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4060(&qword_3B3F8, &qword_28480);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  *v10 = sub_26424();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_4060(&qword_3B4B8, &unk_285B0);
  sub_4404(a1, &v10[*(v11 + 44)]);
  sub_264E4();
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480);
  sub_26604();
  (*(v3 + 8))(v6, v2);
  return sub_4AB4(v10);
}

uint64_t sub_4404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_4060(&qword_3B4C0, &unk_29120);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = v31 - v6;
  v8 = sub_4060(&qword_3B4C8, &qword_285C0);
  v31[0] = *(v8 - 8);
  v9 = v31[0];
  v10 = *(v31[0] + 64);
  v11 = (__chkstk_darwin)();
  v38 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v31 - v13;
  v41 = sub_133CC(0xD000000000000020, 0x800000000002C2E0);
  v42 = v14;
  sub_41F0();
  v15 = sub_26584();
  v32 = v16;
  v33 = v15;
  v34 = v17;
  v35 = v18;
  sub_26474();
  v31[1] = v19;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_3D1C();
  v20 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120);
  v21 = v36;
  v22 = v39;
  sub_265C4();
  (*(v40 + 8))(v7, v22);
  v23 = *(v9 + 16);
  v24 = v38;
  v23(v38, v21, v8);
  v25 = v32;
  v26 = v33;
  *a2 = v33;
  *(a2 + 8) = v25;
  v27 = v34 & 1;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v28 = sub_4060(&qword_3B4D8, &qword_285F0);
  v23((a2 + *(v28 + 64)), v24, v8);
  sub_4B64(v26, v25, v27);
  v29 = *(v31[0] + 8);

  v29(v21, v8);
  v29(v24, v8);
  sub_4B74(v26, v25, v27);
}

id sub_4798@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel) privacyDuringAlwaysOnForLiveActivities];
  *a2 = result;
  return result;
}

id sub_47D8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_3D1C();
  sub_26194();
  sub_261A4();

  v4 = *(v3 + OBJC_IVAR____TtC27CompanionAutoLaunchSettingsP33_C19C8A1FA0FCF6B3EDADF7E23A9A836927BacklightSettingsSwiftModel_backlightSettingsModel);

  return [v4 setPrivacyDuringAlwaysOnForLiveActivities:v2];
}

uint64_t sub_4858()
{
  [objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel()) init];
  sub_3D1C();

  return sub_262D4();
}

uint64_t sub_48F0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_4060(&qword_3B3E0, &unk_28470);
  sub_40A8(&qword_3B3E8, "NG");
  sub_40F0();
  sub_41F0();
  swift_getOpaqueTypeConformance2();
  return sub_26524();
}

__n128 sub_49BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_49C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_4A10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_4AB4(uint64_t a1)
{
  v2 = sub_4060(&qword_3B3F8, &qword_28480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4B1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_40A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4B74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4BA4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_4BF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_4C3C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void sub_4C6C(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x800000000002C310;
  a1[2] = 0xD00000000000001CLL;
  a1[3] = 0x800000000002C330;
  a1[4] = 0xD000000000000018;
  a1[5] = 0x800000000002C350;
}

unint64_t sub_4CE8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_5318(v1);
}

uint64_t sub_4D10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_4D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_4DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a2;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_4D10;
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = v5;

  BSDispatchMain();
  _Block_release(v10);
}

void sub_4EA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_4060(&qword_3B930, &qword_28890);
  v10 = sub_26884();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  v14[4] = a6;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_4D10;
  v14[3] = a7;
  v12 = _Block_copy(v14);
  v13 = a1;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_4F9C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_BAD0;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_4D10;
  v4[3] = &unk_35798;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

void sub_508C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_5210;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_4D10;
  v4[3] = &unk_357E8;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

uint64_t sub_5154()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_26194();
  sub_261A4();
}

uint64_t sub_51D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[4] = a6;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_4D10;
  v13[3] = a7;
  v11 = _Block_copy(v13);
  v12 = a1;

  BSDispatchMain();

  _Block_release(v11);
}

unint64_t sub_5318(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_61;
  }

  v4 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v50 = v3 & 0xC000000000000001;
      v46 = (v3 + 32);
      v47 = v3 & 0xFFFFFFFFFFFFFF8;
      v49 = v2;
      v44 = v4;
      v45 = v3;
      while (1)
      {
        if (v50)
        {
          sub_26A54();
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            break;
          }

          goto LABEL_13;
        }

        if (v5 >= *(v47 + 16))
        {
          goto LABEL_58;
        }

        v8 = *&v46[8 * v5];
        swift_unknownObjectRetain();
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          break;
        }

LABEL_13:
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = v9;
          if ([v9 isGlobalDefault])
          {
            type metadata accessor for LiveActivitiesAutoLaunchModel();
            sub_B4F0(&qword_3B5F0, v6, type metadata accessor for LiveActivitiesAutoLaunchModel);
            sub_26194();
          }

          else
          {
            v48 = v5;
            v11 = (*(&stru_B8.size + (swift_isaMask & *v2)))();
            v12 = v11;
            if (v11 >> 62)
            {
              v13 = sub_26AF4();
              if (v13)
              {
LABEL_17:
                if (v13 < 1)
                {
                  goto LABEL_59;
                }

                v14 = 0;
                while (2)
                {
                  if ((v12 & 0xC000000000000001) != 0)
                  {
                    v2 = sub_26A54();
                  }

                  else
                  {
                    v2 = *(v12 + 8 * v14 + 32);
                  }

                  v15 = *(v2 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v16 = *(v2 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v3 = [v10 identifier];
                  v17 = sub_26844();
                  v19 = v18;

                  if (v15 == v17 && v16 == v19)
                  {
                  }

                  else
                  {
                    v21 = sub_26B34();

                    if ((v21 & 1) == 0)
                    {
LABEL_21:
                      ++v14;

                      if (v13 == v14)
                      {
                        goto LABEL_32;
                      }

                      continue;
                    }
                  }

                  break;
                }

                (*(*v2 + 144))(v10);
                type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
                sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
                sub_26194();
                sub_261A4();

                goto LABEL_21;
              }
            }

            else
            {
              v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
              if (v13)
              {
                goto LABEL_17;
              }
            }

LABEL_32:

            v23 = (*(&stru_B8.flags + (swift_isaMask & *v49)))(v22);
            v24 = v23;
            if (v23 >> 62)
            {
              v25 = sub_26AF4();
              if (v25)
              {
LABEL_34:
                if (v25 < 1)
                {
                  goto LABEL_60;
                }

                v26 = 0;
                while (2)
                {
                  if ((v24 & 0xC000000000000001) != 0)
                  {
                    v27 = sub_26A54();
                  }

                  else
                  {
                    v27 = *(v24 + 8 * v26 + 32);
                  }

                  v28 = *(v27 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v29 = *(v27 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v30 = [v10 identifier];
                  v31 = sub_26844();
                  v33 = v32;

                  if (v28 == v31 && v29 == v33)
                  {
                  }

                  else
                  {
                    v35 = sub_26B34();

                    if ((v35 & 1) == 0)
                    {
LABEL_38:
                      ++v26;

                      if (v25 == v26)
                      {
                        goto LABEL_49;
                      }

                      continue;
                    }
                  }

                  break;
                }

                (*(*v27 + 144))(v10);
                type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
                sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
                sub_26194();
                sub_261A4();

                goto LABEL_38;
              }
            }

            else
            {
              v25 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
              if (v25)
              {
                goto LABEL_34;
              }
            }

LABEL_49:

            v36 = [v10 identifier];
            v37 = sub_26844();
            v39 = v38;

            if (v37 == 0xD00000000000001ALL && 0x800000000002C310 == v39)
            {

              v5 = v48;
              v2 = v49;
              v4 = v44;
              v3 = v45;
            }

            else
            {
              v41 = sub_26B34();

              v5 = v48;
              v2 = v49;
              v4 = v44;
              v3 = v45;
              if ((v41 & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v42 = *&stru_108.segname[(swift_isaMask & *v2) - 8];
            v43 = v42(v40);
            if (v43)
            {
              (*(*v43 + 144))(v10);
            }

            if (!v42(v43))
            {
              goto LABEL_6;
            }

            type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
            sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
            sub_26194();
          }

          sub_261A4();
        }

LABEL_6:
        result = swift_unknownObjectRelease();
        if (v5 == v4)
        {
          return result;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      result = sub_26AF4();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_5B34(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_5B84(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_5C38()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_5C80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_5D38()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_5D8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_5E50()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_5E94(char a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_5F58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a1;
  v2 = a1;
}

uint64_t sub_5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9)
{
  v15 = *(v9 + 48);
  v16 = *(v9 + 52);
  v17 = swift_allocObject();
  sub_260D4();
  v18 = (v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v18 = a1;
  v18[1] = a2;
  v19 = "ALLMUSICAPPS_APP_TITLE";
  v20 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x800000000002C330 == a2 || (sub_26B34() & 1) != 0 || (v19 = "com.apple.NanoNowPlaying", v20 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x800000000002C310 == a2 || (sub_26B34() & 1) != 0)
  {

    a3 = sub_133CC(v20, (v19 | 0x8000000000000000));
    a4 = v21;
  }

  v22 = (v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v22 = a3;
  v22[1] = a4;
  *(v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  sub_261C4();
  swift_endAccess();
  *(v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v17;
}

uint64_t sub_6198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, char a8, char a9)
{
  sub_260D4();
  v15 = (v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v15 = a1;
  v15[1] = a2;
  v16 = "ALLMUSICAPPS_APP_TITLE";
  v17 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x800000000002C330 == a2 || (sub_26B34() & 1) != 0 || (v16 = "com.apple.NanoNowPlaying", v17 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x800000000002C310 == a2 || (sub_26B34() & 1) != 0)
  {

    a3 = sub_133CC(v17, (v16 | 0x8000000000000000));
    a4 = v18;
  }

  v19 = (v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v19 = a3;
  v19[1] = a4;
  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  v20 = a5;
  sub_261C4();
  swift_endAccess();

  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v9;
}

uint64_t sub_63B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26214();
}

uint64_t sub_6428()
{
  sub_260E4();
  sub_B4F0(&qword_3B5D0, 255, &type metadata accessor for UUID);
  return sub_267F4();
}

uint64_t sub_64B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v4 = sub_260E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_6528()
{
  v1 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  return v1;
}

uint64_t sub_6564()
{
  v1 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  v2 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  return v1;
}

uint64_t sub_65D0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  v3 = v1 == 0xD00000000000001CLL && 0x800000000002C330 == v2;
  if (v3 || (sub_26B34() & 1) != 0)
  {
    v4 = &kSessionTrackerAppBundleIdentifier;
LABEL_7:
    v5 = *v4;
    return sub_26844();
  }

  v7 = v1 == 0xD00000000000001ALL && 0x800000000002C310 == v2;
  if (v7 || (sub_26B34() & 1) != 0)
  {
    v4 = &kNowPlayingAppBundleIdentifer;
    goto LABEL_7;
  }

  return v1;
}

void sub_66D4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_6FFC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_686C;
  v7[3] = &unk_35838;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_67CC(void *a1, char a2)
{
  [a1 setAllowLiveActivitiesForApp:a2 & 1];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_26194();
  sub_261A4();
}

uint64_t sub_686C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void (*sub_68CC(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = [*(v1 + v4) allowLiveActivitiesForApp];
  return sub_6958;
}

void sub_6958(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = *(*a1 + 64);
  v5 = *((*a1)[7] + v3);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[4] = sub_BB24;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_35888;
    v7 = _Block_copy(v2);
    v8 = v2[5];

    v9 = v5;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v3;
    v2[4] = sub_BB24;
    v2[5] = v10;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_358D8;
    v7 = _Block_copy(v2);
    v11 = v2[5];
    v12 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

void sub_6B04(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_7008;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_686C;
  v7[3] = &unk_35928;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_6BF8(void *a1, uint64_t a2)
{
  [a1 setAutoLaunchBehaviorForApp:a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_B4F0(&qword_3B928, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_26194();
  sub_261A4();
}

void (*sub_6C94(void *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  v3[7] = v1;
  v3[8] = v4;
  v3[6] = [*(v1 + v4) autoLaunchBehaviorForApp];
  return sub_6D20;
}

void sub_6D20(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = *((*a1)[8] + v4);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[4] = sub_BB28;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_35978;
    v7 = _Block_copy(v2);
    v8 = v2[5];

    v9 = v5;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v4;
    v2[4] = sub_BB28;
    v2[5] = v10;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_686C;
    v2[3] = &unk_359C8;
    v7 = _Block_copy(v2);
    v11 = v2[5];
    v12 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

uint64_t sub_6EB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26204();

  return v1;
}

uint64_t sub_6F24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_6FC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void (*sub_7010(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_261F4();
  return sub_70B4;
}

void sub_70B4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_711C()
{
  swift_beginAccess();
  sub_4060(&qword_3B5D8, &qword_28650);
  sub_261D4();
  return swift_endAccess();
}

uint64_t sub_7190(uint64_t a1)
{
  v2 = sub_4060(&qword_3B5E0, qword_28658);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_4060(&qword_3B5D8, &qword_28650);
  sub_261E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_72C8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_4060(&qword_3B5E0, qword_28658);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_4060(&qword_3B5D8, &qword_28650);
  sub_261D4();
  swift_endAccess();
  return sub_7438;
}

void sub_7438(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_261E4();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_261E4();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_75A0()
{
  v1 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_260E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  v5 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v6 = sub_4060(&qword_3B5D8, &qword_28650);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_7684()
{
  v1 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_260E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  v5 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v6 = sub_4060(&qword_3B5D8, &qword_28650);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

Swift::Int sub_77A4()
{
  sub_26B84();
  (*(*v0 + 160))(v2);
  return sub_26BA4();
}

uint64_t sub_7804@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v5 = sub_260E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_7910()
{
  sub_26B84();
  (*(**v0 + 160))(v2);
  return sub_26BA4();
}

uint64_t sub_7970@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  result = sub_26194();
  *a1 = result;
  return result;
}

uint64_t sub_79B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_260C4();
}

uint64_t sub_79D8(char a1)
{
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 globalSettings];

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1 & 1;
    *(v7 + 24) = v1;
    aBlock[4] = sub_7BD0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_686C;
    aBlock[3] = &unk_35A18;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_26AE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_7B98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*sub_7BDC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 resolvedGlobalSettings];

  if (v4)
  {
    v5 = [v4 globalAllowLiveActivities];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 8) = v5;
  return sub_7CB0;
}

uint64_t sub_7CE4(SEL *a1)
{
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 resolvedGlobalSettings];

  if (!v4)
  {
    return 1;
  }

  v5 = [v4 *a1];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_7D90(char a1)
{
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 globalSettings];

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1 & 1;
    *(v7 + 24) = v1;
    aBlock[4] = sub_7F50;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_686C;
    aBlock[3] = &unk_35A68;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_26AE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_7F5C(void *a1, SEL *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  [a1 *a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v5, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_26194();
  sub_261A4();
}

uint64_t (*sub_7FEC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = (*&stru_108.segname[(swift_isaMask & *v1) + 16])();
  v4 = [v3 resolvedGlobalSettings];

  if (v4)
  {
    v5 = [v4 globalAutoLaunchLiveActivities];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 8) = v5;
  return sub_80C0;
}

id RemoteInstalledDepthAppsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_811C()
{
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = 0;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_filteredAppLibrary] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesWatchLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesCompanionLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp] = 0;
  v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled] = 0;
  v1 = [objc_opt_self() sharedSettingsModel];
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings] = v1;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  v2 = v1;
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = objc_allocWithZone(CSLPRFInstalledLiveActivityApplicationsDataSource);
  v5 = [v4 init];
  v6 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource;
  v7 = *&v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  *&v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = v5;

  v8 = *&v3[v6];
  if (v8)
  {
    [v8 setDelegate:v3];
    v9 = *&v3[v6];
    if (v9)
    {
      [v9 start];
    }
  }

  [v2 registerObserver:v3];

  return v3;
}

id sub_82A4()
{
  v1 = *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_83EC(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v196 = a1;
  v191 = [objc_allocWithZone(CSLPRFLocalApplicationLibrary) init];
  v194 = SBSCopyDisplayIdentifiers();
  if (!v194)
  {
LABEL_206:
    __break(1u);
LABEL_207:

    __break(1u);
    goto LABEL_208;
  }

  v4 = *(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource);
  v220 = 0;
  v216 = v1;
  if (v4)
  {
    v214 = v4;
    v5 = [v214 apps];
    sub_B8B4();
    v6 = sub_26884();

    v7 = v6;
    if (v6 >> 62)
    {
      v27 = sub_26AF4();
      v7 = v6;
      v8 = v27;
      if (v27)
      {
LABEL_5:
        if (v8 >= 1)
        {
          v9 = 0;
          v215 = (v7 & 0xC000000000000001);
          v2 = 0x800000000002C350;
          v212 = &_swiftEmptyArrayStorage;
          v10 = v7;
          while (1)
          {
            if (v215)
            {
              v11 = sub_26A54();
            }

            else
            {
              v11 = *(v7 + 8 * v9 + 32);
            }

            v12 = v11;
            v13 = [v12 bundleIdentifier];
            v14 = sub_26844();
            v16 = v15;

            if (v14 == 0xD000000000000018 && 0x800000000002C350 == v16)
            {
            }

            else
            {
              v18 = sub_26B34();

              if ((v18 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            (*(&stru_108.flags + (swift_isaMask & *v216)))(1);
LABEL_18:
            v19 = [v12 bundleIdentifier];

            v20 = sub_26844();
            v22 = v21;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v212 = sub_A80C(0, *(v212 + 2) + 1, 1, v212);
            }

            v24 = *(v212 + 2);
            v23 = *(v212 + 3);
            if (v24 >= v23 >> 1)
            {
              v212 = sub_A80C((v23 > 1), v24 + 1, 1, v212);
            }

            ++v9;

            v25 = v212;
            *(v212 + 2) = v24 + 1;
            v26 = &v25[16 * v24];
            *(v26 + 4) = v20;
            *(v26 + 5) = v22;
            v7 = v10;
            if (v8 == v9)
            {
              goto LABEL_27;
            }
          }
        }

        goto LABEL_205;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v8)
      {
        goto LABEL_5;
      }
    }

    v212 = &_swiftEmptyArrayStorage;
LABEL_27:

    v3 = v216;
  }

  else
  {
    v212 = &_swiftEmptyArrayStorage;
  }

  v28 = [objc_opt_self() sharedLibraryForLocation:0];
  v29 = [v28 allApplications];
  v213 = sub_4060(&qword_3B938, &qword_28898);
  v30 = sub_26884();

  v218 = &_swiftEmptyArrayStorage;
  if (v30 >> 62)
  {
    goto LABEL_66;
  }

  v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
LABEL_30:
  if (v31)
  {
    v32 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = sub_26A54();
        v3 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          v34 = v218;
          v3 = v216;
          goto LABEL_44;
        }
      }

      else
      {
        if (v32 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v31 = sub_26AF4();
          goto LABEL_30;
        }

        v33 = *(v30 + 8 * v32 + 32);
        swift_unknownObjectRetain();
        v3 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          goto LABEL_41;
        }
      }

      if ([v33 supportsSmartStack])
      {
        sub_26A84();
        v2 = v218[2];
        sub_26AB4();
        sub_26AC4();
        sub_26A94();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v32;
      if (v3 == v31)
      {
        goto LABEL_42;
      }
    }
  }

  v34 = &_swiftEmptyArrayStorage;
LABEL_44:

  v218 = &_swiftEmptyArrayStorage;
  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    v35 = sub_26AF4();
    if (v35)
    {
      goto LABEL_47;
    }

LABEL_68:
    v30 = 0;
    v48 = &_swiftEmptyArrayStorage;
    goto LABEL_69;
  }

  v35 = *(v34 + 16);
  if (!v35)
  {
    goto LABEL_68;
  }

LABEL_47:
  v2 = 0;
  v30 = 0;
  v214 = 0x800000000002C760;
  v215 = 0xD000000000000013;
  while ((v34 & 0xC000000000000001) != 0)
  {
    v3 = sub_26A54();
    v37 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_62;
    }

LABEL_53:
    v38 = [v3 SDKVersion];
    v39 = sub_26844();
    v41 = v40;

    v221 = 0.0;
    LOBYTE(v38) = sub_B7A0(v39, v41);

    if (v38)
    {
      *&v42 = v221;
      if (v221 < 19.0)
      {
        v43 = [v3 bundleIdentifier];
        v44 = sub_26844();
        v46 = v45;

        if (v44 == v215 && v214 == v46)
        {
          swift_unknownObjectRelease();

          goto LABEL_49;
        }

        v47 = sub_26B34();

        if (v47)
        {
          swift_unknownObjectRelease();
          goto LABEL_49;
        }
      }
    }

    sub_26A84();
    v36 = v218[2];
    sub_26AB4();
    sub_26AC4();
    sub_26A94();
LABEL_49:
    ++v2;
    if (v37 == v35)
    {
      goto LABEL_63;
    }
  }

  if (v2 >= *(v34 + 16))
  {
    goto LABEL_65;
  }

  v3 = *(v34 + 8 * v2 + 32);
  swift_unknownObjectRetain();
  v37 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    goto LABEL_53;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  v48 = v218;
  v3 = v216;
LABEL_69:

  (*&stru_B8.segname[(swift_isaMask & *v3) + 8])(v48);
  v49 = [v191 allApplications];
  v50 = sub_26884();

  if (v50 >> 62)
  {
    v51 = sub_26AF4();
    if (!v51)
    {
      goto LABEL_92;
    }

LABEL_71:
    if (v51 >= 1)
    {
      v52 = 0;
      v53 = v50 & 0xC000000000000001;
      v204 = &_swiftEmptyArrayStorage;
      v215 = v50;
      do
      {
        if (v53)
        {
          v54 = sub_26A54();
        }

        else
        {
          v54 = *(v50 + 8 * v52 + 32);
          swift_unknownObjectRetain();
        }

        if ([v54 supportsSmartStack])
        {
          v55 = [v54 bundleIdentifier];
          v56 = sub_26844();
          v58 = v57;

          v218 = v56;
          v219 = v58;
          __chkstk_darwin(v59);
          v189[2] = &v218;
          LOBYTE(v55) = sub_A57C(sub_B898, v189, v212);

          if (v55)
          {
            goto LABEL_73;
          }

          v60 = [v54 bundleIdentifier];
          if (!v60)
          {
            sub_26844();
            v60 = sub_26834();
          }

          v61 = [v194 containsObject:v60];

          if ((v61 & 1) == 0)
          {
LABEL_73:
            v3 = v216;
          }

          else
          {
            v62 = [v54 bundleIdentifier];
            v63 = sub_26844();
            v65 = v64;

            v66 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v204 = sub_A80C(0, *(v204 + 2) + 1, 1, v204);
            }

            v68 = *(v204 + 2);
            v67 = *(v204 + 3);
            if (v68 >= v67 >> 1)
            {
              v204 = sub_A80C((v67 > 1), v68 + 1, 1, v204);
            }

            v69 = v204;
            *(v204 + 2) = v68 + 1;
            v70 = &v69[16 * v68];
            *(v70 + 4) = v63;
            *(v70 + 5) = v65;
            v3 = v216;
            v71 = *&stru_B8.segname[(swift_isaMask & *v216) + 16];
            swift_unknownObjectRetain();
            v72 = v71(&v218);
            v74 = v73;
            sub_26874();
            if (*(&dword_10 + (*v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v75 = *(&dword_10 + (*v74 & 0xFFFFFFFFFFFFFF8));
              sub_268A4();
            }

            sub_268C4();
            v72(&v218, 0);
            v30 = v66;
          }

          v50 = v215;
        }

        ++v52;
        swift_unknownObjectRelease();
      }

      while (v51 != v52);
      goto LABEL_93;
    }

    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v51 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
  if (v51)
  {
    goto LABEL_71;
  }

LABEL_92:
  v204 = &_swiftEmptyArrayStorage;
LABEL_93:
  v76 = v30;

  v190 = [objc_allocWithZone(CSLPRFReturnToAppSettingsModel) init];
  v49 = objc_opt_self();
  v214 = 0x800000000002C310;
  v77 = sub_26834();
  v35 = &off_3A000;
  v78 = [v49 fakeApplicationWithIdentifier:v77];

  v30 = *&stru_B8.segname[(swift_isaMask & *v3) + 16];
  v2 = (swift_isaMask & *v3) + 216;
  v34 = (v30)(&v218);
  v80 = v79;
  sub_26874();
  v81 = *(&dword_10 + (*v80 & 0xFFFFFFFFFFFFFF8));
  if (v81 >= *(&dword_18 + (*v80 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_182;
  }

  while (2)
  {
    sub_268C4();
    (v34)(&v218, 0);
    v205 = 0x800000000002C330;
    v82 = sub_26834();
    v83 = [v49 *(v35 + 1064)];

    v84 = (v30)(&v218);
    v86 = v85;
    sub_26874();
    v87 = v3;
    if (*(&dword_10 + (*v86 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v86 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v177 = *(&dword_10 + (*v86 & 0xFFFFFFFFFFFFFF8));
      sub_268A4();
    }

    sub_268C4();
    v88 = v84(&v218, 0);
    v34 = &swift_isaMask;
    v89 = (*&stru_B8.segname[swift_isaMask & *v3])(v88);
    if (v89 >> 62)
    {
      v178 = v89;
      v35 = sub_26AF4();
      v89 = v178;
    }

    else
    {
      v35 = *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8));
    }

    v30 = v76;
    v49 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v90 = v89;
      v217 = &_swiftEmptyArrayStorage;
      v213 = v3;
      swift_unknownObjectRetain();
      v203 = v190;
      sub_26AA4();
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_202;
      }

      v81 = 0;
      v91 = v90;
      v202 = v90 & 0xC000000000000001;
      v195 = v90 & 0xFFFFFFFFFFFFFF8;
      v199 = kNanoTimerBundleIdentifier;
      v198 = "com.apple.NanoPhone";
      v193 = kNanoStopwatchBundleIdentifier;
      v76 = &SBSCopyDisplayIdentifiers_ptr;
      v197 = "ALLMUSICAPPS_APP_TITLE";
      v192 = "com.apple.NanoNowPlaying";
      v201 = v90;
      v200 = v35;
LABEL_101:
      if (__OFADD__(v81, 1))
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v215 = v81;
        sub_268A4();
        continue;
      }

      v210 = v81 + 1;
      v211 = v81;
      if (v202)
      {
        v3 = sub_26A54();
      }

      else
      {
        if (v81 >= *(v195 + 16))
        {
          goto LABEL_181;
        }

        v3 = *(v91 + 8 * v81 + 32);
        swift_unknownObjectRetain();
      }

      v92 = (*&stru_108.segname[(swift_isaMask & *v213) + 16])();
      v93 = [v92 settingsForApplication:v3];

      swift_unknownObjectRetain();
      v94 = v204;

      v95 = [v3 bundleIdentifier];
      v96 = sub_26844();
      v98 = v97;

      v218 = v96;
      v219 = v98;
      v223 = &v218;
      v99 = sub_A57C(sub_BB08, &v221, v94);

      v100 = v76[365];
      objc_opt_self();
      v101 = swift_dynamicCastObjCClass();
      v208 = v99;
      if (v101)
      {
        [v101 setCategory:(v99 & 1) != 0];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease_n();
        v93 = v196;
        swift_unknownObjectRetain();
      }

      v102 = [v3 bundleIdentifier];
      if (!v102)
      {
        sub_26844();
        v102 = sub_26834();
      }

      v103 = [v203 settingsForBundleID:v102];

      if (v103)
      {
        v104 = [v103 sessionCapable];
      }

      else
      {
        v104 = 0;
      }

      v105 = [v3 bundleIdentifier];
      v106 = sub_26844();
      v108 = v107;

      if (v106 == sub_26844() && v108 == v109)
      {
LABEL_116:

        goto LABEL_118;
      }

      v110 = sub_26B34();

      if (v110)
      {
        goto LABEL_118;
      }

      v148 = [v3 bundleIdentifier];
      v149 = sub_26844();
      v151 = v150;

      if (v149 == sub_26844() && v151 == v152)
      {
        goto LABEL_116;
      }

      v153 = sub_26B34();

      if (v153)
      {
LABEL_118:
        v104 = 0;
      }

      v215 = v93;
      v209 = v30;
      v111 = [v3 unionedBackgroundModes];
      v112 = sub_26834();
      v113 = [v111 containsObject:v112];

      v114 = [v3 bundleIdentifier];
      v115 = sub_26844();
      v117 = v116;

      if (v115 == 0xD00000000000001ALL && v214 == v117)
      {
LABEL_121:

        goto LABEL_123;
      }

      v118 = sub_26B34();

      if (v118)
      {
        goto LABEL_123;
      }

      v154 = [v3 bundleIdentifier];
      v155 = sub_26844();
      v157 = v156;

      if (v155 == 0xD00000000000001CLL && v205 == v157)
      {
        goto LABEL_121;
      }

      v158 = sub_26B34();

      if (v158)
      {
LABEL_123:
        v119 = 1;
      }

      else
      {
        v119 = (v113 ^ 1) & v104;
      }

      v207 = v119;
      v120 = [v3 bundleIdentifier];
      v121 = sub_26844();
      v123 = v122;

      v124 = [v3 localizedName];
      v2 = sub_26844();
      v126 = v125;

      v206 = (*&stru_158.segname[(swift_isaMask & *v213) + 8])();
      v127 = v220;
      v128 = v76[365];
      objc_opt_self();
      v129 = swift_dynamicCastObjCClassUnconditional();
      v130 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
      v131 = *(v130 + 48);
      v132 = *(v130 + 52);
      v133 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_260D4();
      v134 = (v133 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
      *v134 = v121;
      v134[1] = v123;
      v35 = 0xD000000000000028;
      if (v121 == 0xD00000000000001CLL && v205 == v123 || (sub_26B34() & 1) != 0)
      {
        v135 = &v225;
        goto LABEL_128;
      }

      v35 = 0xD000000000000026;
      if (v121 == 0xD00000000000001ALL && v214 == v123 || (sub_26B34() & 1) != 0)
      {
        v135 = &v222;
LABEL_128:
        v136 = *(v135 - 32);
        v87 = v216;

        v2 = sub_133CC(v35, (v136 | 0x8000000000000000));
        v126 = v137;
      }

      else
      {
        v87 = v216;
      }

      v138 = v208;
      v139 = v127 | v208 ^ 1;
      v140 = (v133 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      *v140 = v2;
      v140[1] = v126;
      *(v133 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = v129;
      swift_beginAccess();
      v224 = v206 & 1;
      sub_261C4();
      swift_endAccess();
      *(v133 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = v139 & 1;
      *(v133 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = v138 & 1;
      *(v133 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = v207;
      v141 = [v3 bundleIdentifier];
      v142 = sub_26844();
      v144 = v143;

      v34 = &swift_isaMask;
      if (v142 == 0xD00000000000001ALL && v214 == v144)
      {

        goto LABEL_133;
      }

      v145 = sub_26B34();

      if (v145)
      {
LABEL_133:
        v146 = *&stru_108.segname[swift_isaMask & *v213];

        v146(v147);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v30 = v209;
      if (v209)
      {
        goto LABEL_207;
      }

      sub_26A84();
      v49 = v217[2];
      sub_26AB4();
      sub_26AC4();
      sub_26A94();
      v81 = v211 + 1;
      v91 = v201;
      v76 = &SBSCopyDisplayIdentifiers_ptr;
      if (v210 == v200)
      {

        swift_unknownObjectRelease();
        break;
      }

      goto LABEL_101;
    }

    break;
  }

  v218 = sub_B578(v159);
  sub_A628(&v218);
  if (v30)
  {
LABEL_208:

    __break(1u);
    return result;
  }

  v160 = *(&stru_B8.offset + (swift_isaMask & *v87));
  v213 = ((swift_isaMask & *v87) + 232);
  v214 = v160;
  v161 = (v160)(v218);
  v162 = (*&stru_108.segname[(swift_isaMask & *v87) - 8])(v161);
  if (!v162)
  {
    goto LABEL_166;
  }

  v30 = v162;
  v81 = (*(&stru_B8.size + (swift_isaMask & *v87)))();
  v49 = v81;
  v2 = v81 & 0xFFFFFFFFFFFFFF8;
  if (v81 >> 62)
  {
LABEL_203:
    v81 = sub_26AF4();
    v163 = v81;
    goto LABEL_154;
  }

  v163 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
LABEL_154:
  v164 = 0;
  v76 = (v49 & 0xC000000000000001);
  while (1)
  {
    if (v163 == v164)
    {

      v87 = v216;
      goto LABEL_166;
    }

    if (v76)
    {
      sub_26A54();
    }

    else
    {
      if (v164 >= *(v2 + 16))
      {
        goto LABEL_179;
      }

      v165 = *(v49 + 8 * v164 + 32);
    }

    v35 = sub_260C4();

    if (v35)
    {
      break;
    }

    v166 = __OFADD__(v164++, 1);
    v34 = &swift_isaMask;
    if (v166)
    {
      goto LABEL_180;
    }
  }

  v87 = v216;
  v167 = (*(&stru_B8.reloff + (swift_isaMask & *v216)))(&v218);
  sub_9EF8(v164);

  v167(&v218, 0);
  v34 = &swift_isaMask;

LABEL_166:
  v215 = *(&stru_B8.size + (*v34 & *v87));
  v168 = v215(v162);
  v169 = v168;
  if (v168 >> 62)
  {
    v170 = sub_26AF4();
    if (!v170)
    {
      goto LABEL_185;
    }

LABEL_168:
    if (v170 >= 1)
    {
      for (i = 0; i != v170; ++i)
      {
        if ((v169 & 0xC000000000000001) != 0)
        {
          v172 = sub_26A54();
        }

        else
        {
          v172 = *(v169 + 8 * i + 32);
        }

        if (*(v172 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
        {
          v173 = *&stru_108.sectname[swift_isaMask & *v216];

          v174 = v173(&v218);
          v176 = v175;
          sub_26874();
          if (*(&dword_10 + (*v176 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v176 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v211 = *(&dword_10 + (*v176 & 0xFFFFFFFFFFFFFF8));
            sub_268A4();
          }

          sub_268C4();
          v174(&v218, 0);
        }
      }

      goto LABEL_185;
    }

    __break(1u);
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  v170 = *(&dword_10 + (v168 & 0xFFFFFFFFFFFFFF8));
  if (v170)
  {
    goto LABEL_168;
  }

LABEL_185:

  v180 = v215(v179);
  v181 = v180;
  v218 = &_swiftEmptyArrayStorage;
  if (v180 >> 62)
  {
    goto LABEL_199;
  }

  v182 = *(&dword_10 + (v180 & 0xFFFFFFFFFFFFFF8));
  if (v182)
  {
LABEL_187:
    v183 = 0;
    do
    {
      if ((v181 & 0xC000000000000001) != 0)
      {
        v185 = sub_26A54();
        v186 = v183 + 1;
        if (__OFADD__(v183, 1))
        {
          goto LABEL_197;
        }
      }

      else
      {
        if (v183 >= *(&dword_10 + (v181 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_198;
        }

        v185 = *(v181 + 8 * v183 + 32);

        v186 = v183 + 1;
        if (__OFADD__(v183, 1))
        {
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          v182 = sub_26AF4();
          if (!v182)
          {
            break;
          }

          goto LABEL_187;
        }
      }

      if (*(v185 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp))
      {
      }

      else
      {
        sub_26A84();
        v184 = v218[2];
        sub_26AB4();
        sub_26AC4();
        sub_26A94();
      }

      ++v183;
    }

    while (v186 != v182);
  }

  (v214)(v218);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v187, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_26194();
  sub_261A4();

  swift_unknownObjectRelease();
}

uint64_t sub_9EF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_A6A4(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_9F88@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  result = sub_26194();
  *a1 = result;
  return result;
}

uint64_t sub_9FC4()
{
  v1 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])();
  v2 = [v1 globalSettings];

  sub_83EC(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_A11C()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B4F0(&qword_3B5F0, v0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_26194();
  sub_261A4();
}

uint64_t type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp()
{
  result = qword_3C8C0;
  if (!qword_3C8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_A280(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_A294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_A2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_A340()
{
  v0 = sub_260E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_A52C(319, &unk_3B710, &type metadata for Bool, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_A52C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_A57C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_A628(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_B78C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_A9A0(v6);
  return sub_26A94();
}

uint64_t sub_A6A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26AF4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

char *sub_A708(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&qword_3B968, &qword_29870);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_A80C(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&qword_3B948, &unk_288A0);
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

void *sub_A918(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_4060(&qword_3B960, qword_288B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_A9A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
        v6 = sub_268B4();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_AB7C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_AAA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_AAA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = (v9 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*v11 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      v15 = result == *v14 && v13 == v14[1];
      if (v15 || (result = sub_26B34(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v16 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v16;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_AB7C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_104:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_B454(v9);
      v9 = result;
    }

    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*v6)
      {
        v89 = *&v9[16 * v88];
        v90 = *&v9[16 * v88 + 24];
        sub_B168((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v88 + 16]), (*v6 + 8 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_B454(v9);
        }

        if (v88 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v91 = &v9[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_B3C8(v88 - 1);
        v88 = *(v9 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*(*v6 + 8 * v8) + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*(*v6 + 8 * v10) + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_26B34();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
        v5 = v11 + 8 * v10 + 16;
        do
        {
          v18 = (*v5 + v17);
          result = *v18;
          v19 = v18[1];
          v20 = (*(v5 - 8) + v17);
          if (result == *v20 && v19 == v20[1])
          {
            if (v16)
            {
              goto LABEL_23;
            }
          }

          else
          {
            result = sub_26B34();
            if ((v16 ^ result))
            {
              goto LABEL_22;
            }

            v17 = OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
          }

          ++v8;
          v5 += 8;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_22:
      if (v16)
      {
LABEL_23:
        if (v8 < v10)
        {
          goto LABEL_133;
        }

        if (v10 < v8)
        {
          v22 = 8 * v8 - 8;
          v23 = 8 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_139;
              }

              v26 = *(v27 + v23);
              *(v27 + v23) = *(v27 + v22);
              *(v27 + v22) = v26;
            }

            ++v25;
            v22 -= 8;
            v23 += 8;
          }

          while (v25 < v24);
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_132;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_134;
        }

        if (v10 + a4 >= v28)
        {
          v29 = v6[1];
        }

        else
        {
          v29 = v10 + a4;
        }

        if (v29 < v10)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v8 != v29)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v8 < v10)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_A708(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_A708((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v8;
    v46 = *v95;
    if (!*v95)
    {
      goto LABEL_141;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_73:
          if (v51)
          {
            goto LABEL_120;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_123;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_127;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_87:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_94:
        v5 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v6)
        {
          goto LABEL_138;
        }

        v85 = *&v9[16 * v5 + 32];
        v86 = *&v9[16 * v47 + 40];
        sub_B168((*v6 + 8 * v85), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v86), v46);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_B454(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v9[16 * v5];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_B3C8(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_104;
    }
  }

  v92 = v10;
  v93 = v6;
  v30 = *v6;
  v31 = *v6 + 8 * v8 - 8;
  v32 = v10 - v8;
LABEL_42:
  v33 = *(v30 + 8 * v8);
  v34 = v32;
  v5 = v31;
  while (1)
  {
    v35 = (v33 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v36 = *v35;
    v37 = v35[1];
    v38 = (*v5 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v39 = v36 == *v38 && v37 == v38[1];
    if (v39 || (result = sub_26B34(), (result & 1) == 0))
    {
LABEL_41:
      ++v8;
      v31 += 8;
      --v32;
      if (v8 != v29)
      {
        goto LABEL_42;
      }

      v8 = v29;
      v10 = v92;
      v6 = v93;
      goto LABEL_53;
    }

    if (!v30)
    {
      break;
    }

    v40 = *v5;
    v33 = *(v5 + 8);
    *v5 = v33;
    *(v5 + 8) = v40;
    v5 -= 8;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_B168(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);
        v25 = (*v21 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v26 = *(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName) == *v25 && v24 == v25[1];
        if (!v26 && (sub_26B34() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (sub_26B34() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_B3C8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_B454(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t (*sub_B468(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_26A54();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_B4E8;
  }

  __break(1u);
  return result;
}

uint64_t sub_B4F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B538()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_B578(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_26AF4();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_A918(v3, 0);
  sub_B60C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_B60C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26AF4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26AF4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_B904();
          for (i = 0; i != v6; ++i)
          {
            sub_4060(&qword_3B950, &unk_28A50);
            v9 = sub_B468(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_B7A0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_26A44();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_B8B4()
{
  result = qword_3B940;
  if (!qword_3B940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3B940);
  }

  return result;
}

unint64_t sub_B904()
{
  result = qword_3B958;
  if (!qword_3B958)
  {
    sub_40A8(&qword_3B950, &unk_28A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B958);
  }

  return result;
}

uint64_t sub_B968(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B34() & 1;
  }
}

_BYTE *sub_B9C0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_BB84()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_262E4();
}

uint64_t sub_BC10@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v65 = sub_4060(&qword_3B970, &qword_288D0);
  v5 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v61 = &v60 - v6;
  v7 = sub_4060(&qword_3B978, &qword_288D8);
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  v9 = __chkstk_darwin(v7);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v60 - v11;
  v12 = sub_4060(&qword_3B980, &qword_288E0);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  v14 = __chkstk_darwin(v12);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = sub_4060(&qword_3B988, &qword_288E8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v60 - v21;
  v23 = sub_4060(&qword_3B990, &qword_288F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v73 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v75 = &v60 - v28;
  v29 = (*&stru_108.segname[(swift_isaMask & *a2) - 8])(v27);
  if (v29)
  {
    *(&v60 - 4) = __chkstk_darwin(v29);
    *(&v60 - 3) = a1;
    *(&v60 - 2) = a2;
    sub_C5D4();
    sub_26774();

    v30 = v75;
    (*(v19 + 32))(v75, v22, v18);
    v31 = (*(v19 + 56))(v30, 0, 1, v18);
  }

  else
  {
    v31 = (*(v19 + 56))(v75, 1, 1, v18);
  }

  __chkstk_darwin(v31);
  *(&v60 - 2) = a1;
  *(&v60 - 1) = a2;
  v62 = sub_4060(&qword_3B998, &qword_288F8);
  v64 = sub_C550();
  v32 = sub_26774();
  v63 = &v60;
  __chkstk_darwin(v32);
  *(&v60 - 2) = a1;
  *(&v60 - 1) = a2;
  v76 = sub_133CC(0xD00000000000002CLL, 0x800000000002C7A0);
  v77 = v33;
  sub_41F0();
  v34 = sub_26584();
  v36 = v35;
  v38 = v37;
  v60 = v17;
  v40 = v39;
  v41 = v61;
  v42 = &v61[*(v65 + 36)];
  v43 = *(sub_4060(&qword_3B9B0, &qword_28900) + 28);
  v44 = sub_26534();
  (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
  *v42 = swift_getKeyPath();
  *v41 = v34;
  *(v41 + 1) = v36;
  v41[16] = v38 & 1;
  *(v41 + 3) = v40;
  sub_C8E4();
  v45 = v74;
  sub_26754();
  v46 = v73;
  sub_CBD4(v75, v73, &qword_3B990, &qword_288F0);
  v48 = v66;
  v47 = v67;
  v65 = *(v67 + 16);
  v49 = v68;
  (v65)(v66, v17, v68);
  v51 = v69;
  v50 = v70;
  v64 = *(v70 + 16);
  v52 = v45;
  v53 = v71;
  v64(v69, v52, v71);
  v54 = v46;
  v55 = v72;
  sub_CBD4(v54, v72, &qword_3B990, &qword_288F0);
  v56 = sub_4060(&qword_3B9C8, qword_28938);
  (v65)(v55 + *(v56 + 48), v48, v49);
  v64((v55 + *(v56 + 64)), v51, v53);
  v57 = *(v50 + 8);
  v57(v74, v53);
  v58 = *(v47 + 8);
  v58(v60, v49);
  sub_C99C(v75);
  v57(v51, v53);
  v58(v48, v49);
  return sub_C99C(v73);
}

uint64_t sub_C31C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.segname[(swift_isaMask & **a1) + 8])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_C3E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.size + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_4060(&qword_3B950, &unk_28A50);
  sub_4B1C(&qword_3B9E8, &qword_3B950, &unk_28A50);
  sub_CC8C(&unk_3B9F0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_C5D4();
  return sub_26734();
}

unint64_t sub_C550()
{
  result = qword_3B9A0;
  if (!qword_3B9A0)
  {
    sub_40A8(&qword_3B998, &qword_288F8);
    sub_C5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B9A0);
  }

  return result;
}

unint64_t sub_C5D4()
{
  result = qword_3B9A8;
  if (!qword_3B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B9A8);
  }

  return result;
}

uint64_t sub_C628()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.flags + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_4060(&qword_3B950, &unk_28A50);
  sub_4B1C(&qword_3B9E8, &qword_3B950, &unk_28A50);
  sub_CC8C(&unk_3B9F0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_C5D4();
  return sub_26734();
}

uint64_t sub_C794()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_262D4();
}

uint64_t sub_C83C(uint64_t a1)
{
  v2 = sub_4060(&qword_3B9E0, &unk_28A28);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_CBD4(a1, &v6 - v4, &qword_3B9E0, &unk_28A28);
  return sub_26374();
}

unint64_t sub_C8E4()
{
  result = qword_3B9B8;
  if (!qword_3B9B8)
  {
    sub_40A8(&qword_3B970, &qword_288D0);
    sub_4B1C(&qword_3B9C0, &qword_3B9B0, &qword_28900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B9B8);
  }

  return result;
}

uint64_t sub_C99C(uint64_t a1)
{
  v2 = sub_4060(&qword_3B990, &qword_288F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_CA04@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(&stru_108.reloff + (swift_isaMask & **(v1 + 32)));

  v5(v6);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  v7 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_2104C(sub_CE50, v3, v10, v11, v12, v13);
  v8 = v13[1];
  *a1 = v13[0];
  a1[1] = v8;
  a1[2] = v14[0];
  result = *(v14 + 9);
  *(a1 + 41) = *(v14 + 9);
  return result;
}

uint64_t sub_CBD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4060(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_CC3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CC8C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_CCEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = *(&stru_108.reloff + (swift_isaMask & **(v3 + 24)));

  v8(v9);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_CC8C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  v10 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_2104C(a2, v7, v13, v14, v15, v16);
  v11 = v16[1];
  *a3 = v16[0];
  a3[1] = v11;
  a3[2] = v17[0];
  result = *(v17 + 9);
  *(a3 + 41) = *(v17 + 9);
  return result;
}

id MediaAutoLaunchModel.mediaAutoLaunchEnabled.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting) value];
  if (result)
  {
    sub_26A04();
    swift_unknownObjectRelease();
    sub_CEE8(&v3, &v4);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_CEE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void MediaAutoLaunchModel.mediaAutoLaunchEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting);
  if ([v3 value])
  {
    sub_26A04();
    swift_unknownObjectRelease();
    sub_CEE8(&v6, &v7);
    swift_dynamicCast();
    if (v5 != (a1 & 1))
    {
      type metadata accessor for MediaAutoLaunchModel();
      sub_D018();
      sub_26194();
      sub_261A4();

      isa = sub_268D4().super.super.isa;
      [v3 setValue:isa];
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_D018()
{
  result = qword_3BA08;
  if (!qword_3BA08)
  {
    type metadata accessor for MediaAutoLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA08);
  }

  return result;
}

void (*MediaAutoLaunchModel.mediaAutoLaunchEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  result = [*(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting) value];
  if (result)
  {
    sub_26A04();
    swift_unknownObjectRelease();
    sub_CEE8((v4 + 32), v4);
    swift_dynamicCast();
    *(v4 + 72) = *(v4 + 73);
    return sub_D150;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_D150(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  MediaAutoLaunchModel.mediaAutoLaunchEnabled.setter(*(*a1 + 72));

  free(v1);
}

char *MediaAutoLaunchModel.init()()
{
  sub_D2B8();
  v9[3] = &type metadata for Bool;
  LOBYTE(v9[0]) = 1;
  v1 = objc_allocWithZone(NSString);
  v2 = sub_26834();
  v3 = [v1 initWithString:v2];

  v4 = [v3 UTF8String];
  v5 = v3;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting] = sub_D304(0x747541616964656DLL, 0xEF68636E75614C6FLL, v9, v4);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MediaAutoLaunchModel();
  v6 = objc_msgSendSuper2(&v8, "init");
  [*&v6[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20MediaAutoLaunchModel_mediaAutoLaunchSetting] setDelegate:v6];
  return v6;
}

unint64_t sub_D2B8()
{
  result = qword_3BA10;
  if (!qword_3BA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BA10);
  }

  return result;
}

id sub_D304(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_26834();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_D5F0(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_26B24();
    (*(v9 + 8))(v12, v7);
    sub_D634(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v6 defaultValue:v13 notification:a4];

  swift_unknownObjectRelease();
  return v14;
}

id MediaAutoLaunchModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAutoLaunchModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_D4E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaAutoLaunchModel();
  result = sub_26194();
  *a1 = result;
  return result;
}

uint64_t MediaAutoLaunchModel.twoWaySyncSettingDidUpdate(_:)()
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();
  sub_26194();
  sub_261A4();
}

void *sub_D5F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_D634(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_D680()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_DB4C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_262D4();
}

uint64_t sub_D6FC()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_DB4C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_262E4();
}

id sub_D788()
{
  v0 = objc_allocWithZone(CSLPRFIconFetcher);

  return [v0 init];
}

uint64_t sub_D7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_4060(&qword_3BA40, &qword_28AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15[-v8];
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_4060(&qword_3BA48, &qword_28AE8);
  sub_4B1C(&qword_3BA50, &qword_3BA48, &qword_28AE8);
  sub_26524();
  sub_DB00();
  sub_DB4C(&qword_3BA58, sub_DB00);
  v10 = sub_26184();
  v11 = &v9[*(v6 + 36)];
  *v11 = v10;
  v11[1] = a3;
  v12 = a3;
  v19 = sub_133CC(0xD000000000000015, 0x800000000002C880);
  v20 = v13;
  sub_DB94();
  sub_41F0();
  sub_265F4();

  return sub_DC78(v9);
}

void sub_D99C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = (sub_133C4)();
  v6 = v5;
  if ((*&stru_158.sectname[swift_isaMask & *v3])())
  {
    v7 = sub_133C4(v3);
    v9 = v8;
    CSLPRFDepthAutoLaunchBehavior.id.getter(v7);
    v10 = sub_CE4C(v3);
    v12 = v11;
    CSLPRFDepthAutoLaunchBehavior.id.getter(v10);
    v13 = v9;
    v14 = v12;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
  }

  v15 = v6;
  sub_DEC8(v7, v9, v10, v12);
  sub_DF08(v7, v9, v10, v12);
  *a1 = v4;
  a1[1] = v15;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v12;
  sub_DF08(v7, v9, v10, v12);
}

unint64_t sub_DB00()
{
  result = qword_3BC70;
  if (!qword_3BC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BC70);
  }

  return result;
}

uint64_t sub_DB4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_DB94()
{
  result = qword_3BA60;
  if (!qword_3BA60)
  {
    sub_40A8(&qword_3BA40, &qword_28AE0);
    sub_4B1C(&qword_3BA68, &qword_3BA70, &qword_28AF0);
    sub_4B1C(&qword_3BA78, &qword_3BA80, &qword_28AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA60);
  }

  return result;
}

uint64_t sub_DC78(uint64_t a1)
{
  v2 = sub_4060(&qword_3BA40, &qword_28AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DCE0()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_DB4C(&qword_3B5F0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  v0 = sub_262D4();
  [objc_allocWithZone(CSLPRFIconFetcher) init];
  return v0;
}

__n128 sub_DDA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_DDB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_DE00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_DE50()
{
  sub_40A8(&qword_3BA40, &qword_28AE0);
  sub_DB94();
  sub_41F0();
  return swift_getOpaqueTypeConformance2();
}

void sub_DEC8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2;

    v5 = a4;
  }
}

void sub_DF08(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

uint64_t sub_DF48()
{
  sub_133CC(0xD00000000000002FLL, 0x800000000002C8A0);
  sub_41F0();
  sub_26584();
  sub_4060(&qword_3BA88, "RZ");
  sub_E084();
  return sub_26784();
}

uint64_t sub_E010()
{
  sub_4858();
  sub_E220();
  return sub_262C4();
}

unint64_t sub_E084()
{
  result = qword_3BA90;
  if (!qword_3BA90)
  {
    sub_40A8(&qword_3BA88, "RZ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA90);
  }

  return result;
}

uint64_t sub_E0E8@<X0>(uint64_t a1@<X8>)
{
  sub_133CC(0xD000000000000027, 0x800000000002C8D0);
  sub_41F0();
  result = sub_26584();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_E188()
{
  result = qword_3BA98;
  if (!qword_3BA98)
  {
    sub_40A8(&qword_3BAA0, &unk_28C60);
    sub_E084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA98);
  }

  return result;
}

unint64_t sub_E220()
{
  result = qword_3BAA8;
  if (!qword_3BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BAA8);
  }

  return result;
}

uint64_t sub_E2D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_E314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  result = sub_E364(*v4, v4[1]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_E364(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_E3C8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_E4D8();
  }

  else
  {
    *&v5 = sub_133CC(0xD000000000000010, 0x800000000002C900);
    *(&v5 + 1) = v3;
    sub_41F0();
    sub_26584();
    sub_E4D8();
  }

  sub_264B4();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_E4D8()
{
  result = qword_3CAF0[0];
  if (!qword_3CAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CAF0);
  }

  return result;
}

uint64_t sub_E52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_4060(&qword_3BAD0, &qword_28E28);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v37 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v34[-v15];

  v17 = sub_5E48();
  sub_14B50(a1, a2, v17 & 1, &v38);
  *&v44[0] = a3;
  *(&v44[0] + 1) = a4;
  sub_41F0();

  v18 = sub_26584();
  v20 = v19;
  v35 = v21;
  v23 = v22;
  v24 = v16;
  v36 = v16;
  sub_262C4();
  v25 = v11[2];
  v26 = v37;
  v25(v37, v24, v10);
  v27 = v41;
  v43[2] = v40;
  v43[3] = v41;
  v28 = v42;
  v43[4] = v42;
  v29 = v39;
  v30 = v38;
  v43[0] = v38;
  v43[1] = v39;
  *(a5 + 32) = v40;
  *(a5 + 48) = v27;
  *(a5 + 64) = v28;
  *a5 = v30;
  *(a5 + 16) = v29;
  *(a5 + 80) = v18;
  *(a5 + 88) = v20;
  LOBYTE(v24) = v35 & 1;
  *(a5 + 96) = v35 & 1;
  *(a5 + 104) = v23;
  v31 = sub_4060(&qword_3BAD8, &qword_28E30);
  v25((a5 + *(v31 + 64)), v26, v10);
  sub_EB84(v43, v44);
  sub_4B64(v18, v20, v24);
  v32 = v11[1];

  v32(v36, v10);
  v32(v26, v10);
  sub_4B74(v18, v20, v24);

  v44[2] = v40;
  v44[3] = v41;
  v44[4] = v42;
  v44[0] = v38;
  v44[1] = v39;
  return sub_EBE0(v44);
}

uint64_t sub_E82C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_26424();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = sub_4060(&qword_3BAC0, &qword_28DE8);
  sub_E52C(v3, v4, v6, v5, a1 + *(v7 + 44));
  v8 = sub_26614();
  KeyPath = swift_getKeyPath();
  result = sub_4060(&qword_3BAC8, &qword_28E20);
  v11 = (a1 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

double sub_E8F8@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  return sub_E3C8(v1[1], a1);
}

uint64_t sub_E904(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_E91C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_E928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_E984(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_E9EC()
{
  result = qword_3BAB0;
  if (!qword_3BAB0)
  {
    sub_40A8(&qword_3BAB8, &qword_28D48);
    sub_E4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BAB0);
  }

  return result;
}

uint64_t sub_EA78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_EAC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_263A4();
  *a1 = result;
  return result;
}

uint64_t sub_EB58(uint64_t *a1)
{
  v1 = *a1;

  return sub_263B4();
}

unint64_t sub_EC38()
{
  result = qword_3BAE0;
  if (!qword_3BAE0)
  {
    sub_40A8(&qword_3BAC8, &qword_28E20);
    sub_4B1C(&qword_3BAE8, &qword_3BAF0, &qword_28E38);
    sub_4B1C(&qword_3BAF8, &qword_3BB00, &unk_28E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BAE0);
  }

  return result;
}

uint64_t sub_ED28()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);

  return sub_262D4();
}

uint64_t sub_EDAC(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_EDD8()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);

  return sub_262E4();
}

uint64_t sub_EE9C()
{
  v3 = *(v0 + 16);
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  return v2;
}

uint64_t sub_EEEC()
{
  v2 = *(v0 + 16);
  sub_4060(&qword_3BB08, &qword_28E50);
  return sub_26684();
}

void (*sub_EF40(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_F04C(v3 + 48, v3 + 32);
  *(v5 + 8) = sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  return sub_EFF0;
}

void sub_EFF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 56);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  sub_26684();
  sub_F0BC(v1);

  free(v1);
}

uint64_t sub_F04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3BB10, &qword_28E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F0BC(uint64_t a1)
{
  v2 = sub_4060(&qword_3BB08, &qword_28E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F124()
{
  v3 = *(v0 + 16);
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26694();
  return v2;
}

uint64_t sub_F178()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  sub_4060(&qword_3BB18, &qword_28E60);
  sub_266F4();
  return v2;
}

uint64_t sub_F1D0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_4060(&qword_3BB18, &qword_28E60);
  return sub_26704();
}

void (*sub_F22C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 48);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_F360(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_4060(&qword_3BB18, &qword_28E60);
  sub_266F4();
  return sub_F2E8;
}

void sub_F2E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 56);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_26704();
  sub_F3BC(v1 + 48);

  free(v1);
}

uint64_t sub_F410()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  sub_4060(&qword_3BB18, &qword_28E60);
  sub_26714();
  return v2;
}

uint64_t sub_F480@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);

  v8 = sub_262D4();
  v10 = v9;
  sub_26664();

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 56) = &off_35F20;
  return result;
}

uint64_t sub_F57C()
{
  v1 = sub_26464();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_4060(&qword_3BB20, &qword_28E68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  v10 = v0;
  sub_4060(&qword_3BB28, &unk_28E70);
  sub_4B1C(&qword_3BB30, &qword_3BB28, &unk_28E70);
  sub_26514();
  sub_26454();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_26444(v11);
  sub_26434(*(*(v0 + 8) + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName));
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_26444(v12);
  sub_26484();
  sub_4B1C(&qword_3BB38, &qword_3BB20, &qword_28E68);
  sub_265E4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_F7D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_4060(&qword_3BB48, &qword_29058);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v40 = &v39 - v6;
  v7 = sub_4060(&qword_3BB50, &qword_29060);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v41 = sub_4060(&qword_3BB58, &qword_29068);
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v41);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v45 = a1;
  sub_4060(&qword_3BB60, &qword_29070);
  v19 = sub_40A8(&qword_3BB68, &qword_29078);
  v20 = sub_4B1C(&qword_3BB70, &qword_3BB68, &qword_29078);
  *&v47 = v19;
  *(&v47 + 1) = v20;
  v21 = v12;
  v22 = v4;
  v23 = 1;
  swift_getOpaqueTypeConformance2();
  v24 = v18;
  v25 = sub_26774();
  v26 = *(a1 + 8);
  if ((*(*v26 + 248))(v25))
  {
    v47 = *(a1 + 32);
    v48 = *(a1 + 48);
    sub_4060(&qword_3BB18, &qword_28E60);
    v27 = sub_266F4();
    if (v46 == 1 && (v28 = (*(*v26 + 176))(v27), (v28 & 1) != 0))
    {
      __chkstk_darwin(v28);
      *(&v39 - 2) = a1;
      sub_4060(&qword_3BB80, &qword_29088);
      sub_123B4();
      v29 = v40;
      sub_26524();
      (*(v22 + 32))(v21, v29, v3);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }
  }

  (*(v22 + 56))(v21, v23, 1, v3);
  v30 = v13;
  v31 = *(v13 + 16);
  v32 = v41;
  v33 = v42;
  v31(v42, v24, v41);
  v34 = v43;
  sub_CBD4(v21, v43, &qword_3BB50, &qword_29060);
  v35 = v44;
  v31(v44, v33, v32);
  v36 = sub_4060(&qword_3BB78, &qword_29080);
  sub_CBD4(v34, &v35[*(v36 + 48)], &qword_3BB50, &qword_29060);
  sub_126EC(v21, &qword_3BB50, &qword_29060);
  v37 = *(v30 + 8);
  v37(v24, v32);
  sub_126EC(v34, &qword_3BB50, &qword_29060);
  return (v37)(v33, v32);
}

uint64_t sub_FCE4(uint64_t *a1)
{
  v2 = sub_264F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4060(&qword_3BB68, &qword_29078);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  *v10 = sub_26424();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_4060(&qword_3BC20, &qword_29118);
  sub_FEA4(a1, &v10[*(v11 + 44)]);
  sub_264E4();
  sub_4B1C(&qword_3BB70, &qword_3BB68, &qword_29078);
  sub_26604();
  (*(v3 + 8))(v6, v2);
  return sub_126EC(v10, &qword_3BB68, &qword_29078);
}

uint64_t sub_FEA4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a2;
  v3 = sub_4060(&qword_3B4C0, &unk_29120);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v42 = v37 - v5;
  v6 = sub_4060(&qword_3B4C8, &qword_285C0);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  v8 = __chkstk_darwin(v6);
  v43 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v37 - v10;
  v12 = *a1;
  if (*(a1[1] + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
  {
    *&v54 = sub_133CC(0xD00000000000001ELL, 0x800000000002C9F0);
    *(&v54 + 1) = v13;
    sub_41F0();
    v49 = sub_26584();
    v50 = v14;
    v51 = v15 & 1;
    v52 = v16;
    v53 = 0;
  }

  else
  {
    *&v54 = sub_133CC(0xD000000000000017, 0x800000000002C9D0);
    *(&v54 + 1) = v17;
    sub_41F0();
    v49 = sub_26584();
    v50 = v19;
    v51 = v18 & 1;
    v52 = v20;
    v53 = 1;
  }

  sub_264B4();
  v21 = v56;
  v38 = v55;
  v39 = v54;
  v22 = *(&v54 + 1);
  v40 = *(&v55 + 1);
  v23 = v55;
  v41 = v54;
  sub_1274C(v54, *(&v54 + 1), v55);
  v37[1] = sub_26474();
  v37[0] = v24;
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  v25 = v42;
  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120);
  v26 = v45;
  sub_265C4();
  (*(v44 + 8))(v25, v26);
  v28 = v46;
  v27 = v47;
  v29 = *(v46 + 16);
  v30 = v43;
  v29(v43, v11, v47);
  v31 = v48;
  v32 = v38;
  *v48 = v39;
  v31[1] = v32;
  *(v31 + 32) = v21;
  *(v31 + 5) = 0;
  *(v31 + 48) = 1;
  v33 = sub_4060(&qword_3BC28, &qword_29158);
  v29(v31 + *(v33 + 64), v30, v27);
  v34 = v41;
  sub_1274C(v41, v22, v23);
  sub_12788(v34, v22, v23);
  v35 = *(v28 + 8);
  v35(v11, v27);
  v35(v30, v27);
  return sub_12788(v34, v22, v23);
}

uint64_t sub_10364@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_103FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v61 = sub_4060(&qword_3BBB0, &qword_290A0);
  v55 = *(v61 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v61);
  v54 = &v53 - v4;
  v62 = sub_4060(&qword_3BBC0, &qword_290A8);
  v57 = *(v62 - 8);
  v5 = *(v57 + 64);
  __chkstk_darwin(v62);
  v56 = &v53 - v6;
  v69 = sub_4060(&qword_3BBC8, &qword_290B0);
  v7 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v71 = &v53 - v8;
  v58 = sub_4060(&qword_3BBD0, &qword_290B8);
  v9 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v53 - v10;
  v70 = sub_4060(&qword_3BB98, &qword_29090);
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v60 = &v53 - v12;
  v67 = sub_26414();
  v65 = *(v67 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v67);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_4060(&qword_3BBA0, &qword_29098);
  v63 = *(v66 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v66);
  v18 = &v53 - v17;
  v68 = sub_4060(&qword_3BBD8, &qword_290C0);
  v64 = *(v68 - 8);
  v19 = *(v64 + 64);
  __chkstk_darwin(v68);
  v21 = &v53 - v20;
  v22 = *a1;
  v23 = a1[1];
  v24 = *(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v25 = *(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  sub_4C6C(v80);
  v82 = v80[1];
  v83 = v80[0];
  v26 = v80[0];
  sub_12650(&v82);
  v81 = v80[2];
  sub_12650(&v81);
  if (__PAIR128__(v25, v24) == v26)
  {
    sub_12650(&v83);
  }

  else
  {
    v27 = sub_26B34();
    sub_12650(&v83);
    if ((v27 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v73 = *(a1 + 1);
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  if ((v76 & 1) == 0)
  {
    v78 = sub_133CC(0xD000000000000011, 0x800000000002C920);
    v79 = v45;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
    sub_262E4();
    swift_getKeyPath();
    sub_262F4();

    v76 = v73;
    v77 = v74;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting(0);
    sub_4060(&qword_3BBE0, &qword_290F0);
    sub_126A4(&qword_3BBE8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting);
    sub_4B1C(&qword_3BBF0, &qword_3BBE0, &qword_290F0);
    sub_41F0();
    sub_266C4();
    sub_26404();
    v46 = sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098);
    v47 = v66;
    v48 = v67;
    sub_265B4();
    (*(v65 + 8))(v15, v48);
    (*(v63 + 8))(v18, v47);
    v49 = v64;
    v50 = v68;
    (*(v64 + 16))(v59, v21, v68);
    swift_storeEnumTagMultiPayload();
    *&v73 = v47;
    *(&v73 + 1) = v48;
    v74 = v46;
    v75 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v51 = sub_4B1C(&qword_3BBB8, &qword_3BBB0, &qword_290A0);
    *&v73 = v61;
    *(&v73 + 1) = v48;
    v74 = v51;
    v75 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v52 = v60;
    sub_264B4();
    sub_CBD4(v52, v71, &qword_3BB98, &qword_29090);
    swift_storeEnumTagMultiPayload();
    sub_124D0();
    sub_264B4();
    sub_126EC(v52, &qword_3BB98, &qword_29090);
    return (*(v49 + 8))(v21, v50);
  }

LABEL_5:
  if (*(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) == 1 && *(v23 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) == 1)
  {
    v78 = sub_133CC(0xD000000000000011, 0x800000000002C920);
    v79 = v28;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
    sub_262E4();
    swift_getKeyPath();
    sub_262F4();

    v76 = v73;
    v77 = v74;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting(0);
    sub_4060(&qword_3BBF8, &qword_290F8);
    sub_126A4(&qword_3BBE8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting);
    sub_4B1C(&qword_3BC00, &qword_3BBF8, &qword_290F8);
    sub_41F0();
    v29 = v54;
    sub_266C4();
    sub_26404();
    v30 = sub_4B1C(&qword_3BBB8, &qword_3BBB0, &qword_290A0);
    v31 = v56;
    v32 = v61;
    v33 = v67;
    sub_265B4();
    (*(v65 + 8))(v15, v33);
    (*(v55 + 8))(v29, v32);
    v34 = v57;
    v35 = v62;
    (*(v57 + 16))(v59, v31, v62);
    swift_storeEnumTagMultiPayload();
    v36 = sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098);
    *&v73 = v66;
    *(&v73 + 1) = v33;
    v74 = v36;
    v75 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    *&v73 = v32;
    *(&v73 + 1) = v33;
    v74 = v30;
    v75 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v37 = v60;
    sub_264B4();
    sub_CBD4(v37, v71, &qword_3BB98, &qword_29090);
    swift_storeEnumTagMultiPayload();
    sub_124D0();
    sub_264B4();
    sub_126EC(v37, &qword_3BB98, &qword_29090);
    return (*(v34 + 8))(v31, v35);
  }

  else
  {
    v78 = sub_133CC(0xD000000000000011, 0x800000000002C920);
    v79 = v39;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    sub_126A4(&qword_3B928, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
    sub_262E4();
    swift_getKeyPath();
    sub_262F4();

    v76 = v73;
    v77 = v74;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting(0);
    sub_4060(&qword_3BBE0, &qword_290F0);
    sub_126A4(&qword_3BBE8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting);
    sub_4B1C(&qword_3BBF0, &qword_3BBE0, &qword_290F0);
    sub_41F0();
    sub_266C4();
    sub_26404();
    v40 = sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098);
    v41 = v66;
    v42 = v67;
    sub_265B4();
    (*(v65 + 8))(v15, v42);
    (*(v63 + 8))(v18, v41);
    v43 = v64;
    v44 = v68;
    (*(v64 + 16))(v71, v21, v68);
    swift_storeEnumTagMultiPayload();
    sub_124D0();
    *&v73 = v41;
    *(&v73 + 1) = v42;
    v74 = v40;
    v75 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    sub_264B4();
    return (*(v43 + 8))(v21, v44);
  }
}

uint64_t sub_113DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_11470@<X0>(char *a1@<X8>)
{
  v2 = sub_4060(&qword_3BC08, &qword_29100);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v28 = sub_133CC(0xD000000000000026, 0x800000000002C940);
  v29 = v16;
  sub_41F0();
  *v15 = sub_26584();
  *(v15 + 1) = v17;
  v15[16] = v18 & 1;
  *(v15 + 3) = v19;
  *(v15 + 4) = 0;
  v15[40] = 1;
  v28 = sub_133CC(0xD000000000000026, 0x800000000002C970);
  v29 = v20;
  *v13 = sub_26584();
  *(v13 + 1) = v21;
  v13[16] = v22 & 1;
  *(v13 + 3) = v23;
  *(v13 + 4) = 2;
  v13[40] = 1;
  v24 = v3[2];
  v24(v10, v15, v2);
  v24(v7, v13, v2);
  v24(a1, v10, v2);
  v25 = sub_4060(&qword_3BC10, &qword_29108);
  v24(&a1[*(v25 + 48)], v7, v2);
  v26 = v3[1];
  v26(v13, v2);
  v26(v15, v2);
  v26(v7, v2);
  return (v26)(v10, v2);
}

uint64_t sub_11710(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();

    return sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    return sub_26304();
  }
}

uint64_t sub_11874(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();
    sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_11A74@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = sub_4060(&qword_3BC08, &qword_29100);
  v40 = *(v1 - 8);
  v2 = v40;
  v3 = *(v40 + 64);
  v4 = __chkstk_darwin(v1);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - v16;
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v44 = sub_133CC(0xD000000000000026, 0x800000000002C940);
  v45 = v20;
  sub_41F0();
  *v19 = sub_26584();
  *(v19 + 1) = v21;
  v19[16] = v22 & 1;
  *(v19 + 3) = v23;
  *(v19 + 4) = 0;
  v19[40] = 1;
  v44 = sub_133CC(0xD00000000000002DLL, 0x800000000002C9A0);
  v45 = v24;
  *v17 = sub_26584();
  *(v17 + 1) = v25;
  v17[16] = v26 & 1;
  *(v17 + 3) = v27;
  *(v17 + 4) = 1;
  v17[40] = 1;
  v44 = sub_133CC(0xD000000000000026, 0x800000000002C970);
  v45 = v28;
  *v14 = sub_26584();
  *(v14 + 1) = v29;
  v14[16] = v30 & 1;
  *(v14 + 3) = v31;
  *(v14 + 4) = 2;
  v14[40] = 1;
  v32 = *(v2 + 16);
  v33 = v11;
  v41 = v11;
  v32(v11, v19, v1);
  v34 = v8;
  v32(v8, v17, v1);
  v35 = v42;
  v32(v42, v14, v1);
  v36 = v43;
  v32(v43, v33, v1);
  v37 = sub_4060(&qword_3BC18, &qword_29110);
  v32(&v36[*(v37 + 48)], v34, v1);
  v32(&v36[*(v37 + 64)], v35, v1);
  v38 = *(v40 + 8);
  v38(v14, v1);
  v38(v17, v1);
  v38(v19, v1);
  v38(v35, v1);
  v38(v34, v1);
  return (v38)(v41, v1);
}

uint64_t sub_11E28@<X0>(char *a1@<X8>)
{
  v2 = sub_4060(&qword_3BC08, &qword_29100);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v28 = sub_133CC(0xD000000000000026, 0x800000000002C940);
  v29 = v16;
  sub_41F0();
  *v15 = sub_26584();
  *(v15 + 1) = v17;
  v15[16] = v18 & 1;
  *(v15 + 3) = v19;
  *(v15 + 4) = 0;
  v15[40] = 1;
  v28 = sub_133CC(0xD00000000000002DLL, 0x800000000002C9A0);
  v29 = v20;
  *v13 = sub_26584();
  *(v13 + 1) = v21;
  v13[16] = v22 & 1;
  *(v13 + 3) = v23;
  *(v13 + 4) = 1;
  v13[40] = 1;
  v24 = v3[2];
  v24(v10, v15, v2);
  v24(v7, v13, v2);
  v24(a1, v10, v2);
  v25 = sub_4060(&qword_3BC10, &qword_29108);
  v24(&a1[*(v25 + 48)], v7, v2);
  v26 = v3[1];
  v26(v13, v2);
  v26(v15, v2);
  v26(v7, v2);
  return (v26)(v10, v2);
}

uint64_t sub_120C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_F57C();
}

Swift::Int sub_12104()
{
  v1 = *v0;
  sub_26B84();
  sub_26B94(v1);
  return sub_26BA4();
}

Swift::Int sub_12178()
{
  v1 = *v0;
  sub_26B84();
  sub_26B94(v1);
  return sub_26BA4();
}

void *sub_121D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_12208(uint64_t a1, uint64_t a2)
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

uint64_t sub_1221C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_12264(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_122C4()
{
  sub_40A8(&qword_3BB20, &qword_28E68);
  sub_4B1C(&qword_3BB38, &qword_3BB20, &qword_28E68);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_123B4()
{
  result = qword_3BB88;
  if (!qword_3BB88)
  {
    sub_40A8(&qword_3BB80, &qword_29088);
    sub_124D0();
    sub_40A8(&qword_3BBA0, &qword_29098);
    sub_26414();
    sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BB88);
  }

  return result;
}

unint64_t sub_124D0()
{
  result = qword_3BB90;
  if (!qword_3BB90)
  {
    sub_40A8(&qword_3BB98, &qword_29090);
    sub_40A8(&qword_3BBA0, &qword_29098);
    sub_26414();
    sub_4B1C(&qword_3BBA8, &qword_3BBA0, &qword_29098);
    swift_getOpaqueTypeConformance2();
    sub_40A8(&qword_3BBB0, &qword_290A0);
    sub_4B1C(&qword_3BBB8, &qword_3BBB0, &qword_290A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BB90);
  }

  return result;
}

uint64_t sub_126A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_126EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4060(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1274C(uint64_t a1, uint64_t a2, char a3)
{
  sub_4B64(a1, a2, a3 & 1);
}

uint64_t sub_12788(uint64_t a1, uint64_t a2, char a3)
{
  sub_4B74(a1, a2, a3 & 1);
}

unint64_t sub_127C8()
{
  result = qword_3B5F0;
  if (!qword_3B5F0)
  {
    type metadata accessor for LiveActivitiesAutoLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B5F0);
  }

  return result;
}

uint64_t sub_12820()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();

  return sub_262E4();
}

uint64_t sub_1287C()
{
  sub_133CC(0xD000000000000029, 0x800000000002CA10);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD00000000000002ALL, 0x800000000002CA40);
  sub_26584();
  sub_4060(&qword_3BC30, &qword_29160);
  sub_40A8(&qword_3BC38, qword_29168);
  sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168);
  swift_getOpaqueTypeConformance2();
  return sub_26764();
}

uint64_t sub_12A14(uint64_t a1, void *a2)
{
  v4 = sub_264F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4060(&qword_3BC38, qword_29168);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  *v12 = sub_26424();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = sub_4060(&qword_3BC58, &unk_29228);
  sub_12BE4(a1, a2, &v12[*(v13 + 44)]);
  sub_264E4();
  sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168);
  sub_26604();
  (*(v5 + 8))(v8, v4);
  return sub_126EC(v12, &qword_3BC38, qword_29168);
}

uint64_t sub_12BE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a1;
  v4 = sub_4060(&qword_3B4C0, &unk_29120);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = sub_4060(&qword_3BC60, &qword_29238);
  v10 = *(v9 - 8);
  v41 = v9 - 8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v42 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v43 = sub_133CC(0xD000000000000021, 0x800000000002CA70);
  v44 = v16;
  sub_41F0();
  v17 = sub_26584();
  v35 = v18;
  v36 = v17;
  v37 = v19;
  v38 = v20;
  sub_26474();
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();
  v21 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120);
  v22 = v39;
  sub_265C4();
  v23 = (*(v40 + 8))(v8, v22);
  LOBYTE(v8) = (*&stru_158.sectname[swift_isaMask & *v33])(v23);
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v8 & 1) == 0;
  v26 = &v15[*(v41 + 44)];
  *v26 = KeyPath;
  v26[1] = sub_1333C;
  v26[2] = v25;
  v27 = v42;
  sub_13354(v15, v42);
  v29 = v35;
  v28 = v36;
  *a3 = v36;
  *(a3 + 8) = v29;
  LOBYTE(v8) = v37 & 1;
  *(a3 + 16) = v37 & 1;
  *(a3 + 24) = v38;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v30 = sub_4060(&qword_3BC68, &qword_29298);
  sub_13354(v27, a3 + *(v30 + 64));
  sub_4B64(v28, v29, v8);

  sub_126EC(v15, &qword_3BC60, &qword_29238);
  sub_126EC(v27, &qword_3BC60, &qword_29238);
  sub_4B74(v28, v29, v8);
}

uint64_t sub_12FBC()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();

  return sub_262D4();
}

uint64_t sub_13024()
{
  v2 = *v0;
  v3 = v0[1];
  sub_133CC(0xD000000000000029, 0x800000000002CA10);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD00000000000002ALL, 0x800000000002CA40);
  sub_26584();
  sub_4060(&qword_3BC30, &qword_29160);
  sub_40A8(&qword_3BC38, qword_29168);
  sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168);
  swift_getOpaqueTypeConformance2();
  return sub_26764();
}

unint64_t sub_131D4()
{
  result = qword_3BC48;
  if (!qword_3BC48)
  {
    sub_40A8(&qword_3BC50, "n^");
    sub_40A8(&qword_3BC38, qword_29168);
    sub_4B1C(&qword_3BC40, &qword_3BC38, qword_29168);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC48);
  }

  return result;
}

uint64_t sub_132D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26384();
  *a1 = result & 1;
  return result;
}

uint64_t sub_13354(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3BC60, &qword_29238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_133CC(uint64_t a1, void *a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._object = 0x800000000002CAA0;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0xD00000000000001BLL;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_26004(v10, v11, v6, v12, v9);

  return v7;
}

id sub_134A4()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

uint64_t sub_1350C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double sub_13574@<D0>(uint64_t a1@<X8>)
{
  sub_26664();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_135DC()
{
  sub_DB00();
  sub_13620();

  return sub_26334();
}

unint64_t sub_13620()
{
  result = qword_3BA58;
  if (!qword_3BA58)
  {
    sub_DB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BA58);
  }

  return result;
}

uint64_t sub_13678(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 24);
  v45 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v48 = v45;
  v49[0] = v5;
  v46 = v7;
  v47 = v6;
  v30 = v5;
  v32 = v5;
  v33 = *(v2 + 32);
  v34 = v6;
  v35 = v7;
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_CBD4(v49, &aBlock, &qword_3BD28, &qword_295C0);
  sub_CBD4(&v48, &aBlock, &qword_3BD30, &qword_295C8);
  sub_152E4(&v47, &aBlock);
  sub_CBD4(&v46, &aBlock, &qword_3BD38, &qword_295D0);
  sub_4060(&qword_3BC80, &qword_292A0);
  sub_26674();
  swift_unknownObjectRelease();
  v8 = v37;
  sub_148D8(v38);
  if (*(&v8 + 1))
  {
    if (a2)
    {
      if (v8 == __PAIR128__(a2, a1))
      {

LABEL_9:
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        sub_126EC(&v46, &qword_3BD38, &qword_295D0);
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        sub_126EC(&v46, &qword_3BD38, &qword_295D0);
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        sub_126EC(&v46, &qword_3BD38, &qword_295D0);
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        sub_126EC(&v46, &qword_3BD38, &qword_295D0);
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        sub_126EC(&v46, &qword_3BD38, &qword_295D0);
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        sub_126EC(&v46, &qword_3BD38, &qword_295D0);
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        sub_126EC(&v46, &qword_3BD38, &qword_295D0);
        sub_126EC(v49, &qword_3BD28, &qword_295C0);
        sub_126EC(&v48, &qword_3BD30, &qword_295C8);
        sub_1531C(&v47);
        return sub_126EC(&v46, &qword_3BD38, &qword_295D0);
      }

      v9 = sub_26B34();

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v32 = v30;
  v33 = v45;
  v34 = v6;
  v35 = v7;
  sub_26674();
  v10 = aBlock;

  sub_148D8(v38);
  if (v10)
  {
    [v10 invalidate];
    swift_unknownObjectRelease();
  }

  if (!a2)
  {
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    sub_26674();
    swift_unknownObjectRelease();
    aBlock = v30;
    v37 = v45;
    v38 = v6;
    v39 = v7;
    *&v41[8] = *&v43[8];
    *v41 = 0;
    v42 = v44;
    sub_26684();
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    sub_26674();

    aBlock = v30;
    v37 = v45;
    v38 = v6;
    v39 = v7;
    *v41 = *v43;
    *&v41[8] = a1;
    *&v41[16] = 0;
    v42 = v44;
    sub_26684();
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    v32 = v30;
    v33 = v45;
    v34 = v6;
    v35 = v7;
    sub_26674();
    sub_148D8(v44);
    aBlock = v30;
    v37 = v45;
    v38 = v6;
    v39 = v7;
    *v41 = *v43;
    *&v41[16] = *&v43[16];
    v42 = 0x8000000000000000;
    sub_26684();
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    return sub_126EC(&v46, &qword_3BD38, &qword_295D0);
  }

  v27 = v6;
  v28 = v7;

  sub_126EC(v49, &qword_3BD28, &qword_295C0);
  v29 = a2;
  sub_126EC(&v48, &qword_3BD30, &qword_295C8);
  sub_1531C(&v47);
  sub_126EC(&v46, &qword_3BD38, &qword_295D0);
  sub_126EC(v49, &qword_3BD28, &qword_295C0);
  sub_126EC(&v48, &qword_3BD30, &qword_295C8);
  sub_1531C(&v47);
  sub_126EC(&v46, &qword_3BD38, &qword_295D0);
  sub_126EC(v49, &qword_3BD28, &qword_295C0);
  sub_126EC(&v48, &qword_3BD30, &qword_295C8);
  sub_1531C(&v47);
  sub_126EC(&v46, &qword_3BD38, &qword_295D0);
  v11 = *(v3 + 64);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 iconCache];
    v14 = sub_26834();
    v15 = [v13 iconForName:v14 fallBackToPersistentStoreIfNecessary:0];

    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    sub_126EC(v49, &qword_3BD28, &qword_295C0);
    sub_126EC(&v48, &qword_3BD30, &qword_295C8);
    sub_1531C(&v47);
    sub_126EC(&v46, &qword_3BD38, &qword_295D0);
    if (v15)
    {

      sub_26674();

      aBlock = v30;
      v37 = v45;
      v38 = v6;
      v39 = v7;
      *v41 = *v43;
      *&v41[8] = a1;
      *&v41[16] = v29;
      v42 = v44;
      sub_26684();
      sub_126EC(v49, &qword_3BD28, &qword_295C0);
      sub_126EC(&v48, &qword_3BD30, &qword_295C8);
      sub_1531C(&v47);
      sub_126EC(&v46, &qword_3BD38, &qword_295D0);
      sub_26674();
      swift_unknownObjectRelease();
      aBlock = v30;
      v37 = v45;
      v38 = v6;
      v39 = v7;
      *&v41[8] = *&v43[8];
      *v41 = 0;
      v42 = v44;
      sub_26684();
      sub_126EC(v49, &qword_3BD28, &qword_295C0);
      sub_126EC(&v48, &qword_3BD30, &qword_295C8);
      sub_1531C(&v47);
      sub_126EC(&v46, &qword_3BD38, &qword_295D0);
      v16 = v15;
      v17 = sub_26624();
      v32 = v30;
      v33 = v45;
      v34 = v6;
      v35 = v28;
      sub_26674();
      sub_148D8(v44);
      aBlock = v30;
      v37 = v45;
      v38 = v6;
      v39 = v28;
      *v41 = *v43;
      *&v41[16] = *&v43[16];
      v42 = v17;
      sub_26684();

      sub_126EC(v49, &qword_3BD28, &qword_295C0);
      sub_126EC(&v48, &qword_3BD30, &qword_295C8);
      sub_1531C(&v47);
    }

    else
    {
      sub_126EC(v49, &qword_3BD28, &qword_295C0);
      sub_126EC(&v48, &qword_3BD30, &qword_295C8);
      sub_1531C(&v47);
      sub_126EC(&v46, &qword_3BD38, &qword_295D0);
      v18 = sub_26834();
      v19 = *(v3 + 16);
      v20 = swift_allocObject();
      v21 = *(v3 + 48);
      v20[3] = *(v3 + 32);
      v20[4] = v21;
      v20[5] = *(v3 + 64);
      v22 = *(v3 + 16);
      v20[1] = *v3;
      v20[2] = v22;
      v39 = sub_153AC;
      v40 = v20;
      aBlock = _NSConcreteStackBlock;
      *&v37 = 1107296256;
      *(&v37 + 1) = sub_14654;
      v38 = &unk_36348;
      v23 = _Block_copy(&aBlock);
      sub_EB84(v3, &v32);

      v24 = [v12 iconFetchTaskForBundleIdentifier:v18 isPhoneApp:v19 completion:v23];
      _Block_release(v23);

      v32 = v30;
      v33 = v45;
      v34 = v27;
      v35 = v7;
      swift_unknownObjectRetain();
      sub_26674();
      swift_unknownObjectRelease();
      aBlock = v30;
      v37 = v45;
      v38 = v27;
      v39 = v7;
      *&v41[8] = *&v43[8];
      *v41 = v24;
      v42 = v44;
      sub_26684();
      sub_126EC(v49, &qword_3BD28, &qword_295C0);
      sub_126EC(&v48, &qword_3BD30, &qword_295C8);
      sub_1531C(&v47);
      sub_126EC(&v46, &qword_3BD38, &qword_295D0);
      v32 = v30;
      v33 = v45;
      v34 = v27;
      v35 = v7;
      sub_26674();

      aBlock = v30;
      v37 = v45;
      v38 = v27;
      v39 = v7;
      *v41 = *v43;
      *&v41[8] = a1;
      *&v41[16] = v29;
      v42 = v44;
      sub_26684();
      swift_unknownObjectRelease();
      sub_126EC(v49, &qword_3BD28, &qword_295C0);
      sub_126EC(&v48, &qword_3BD30, &qword_295C8);
      sub_1531C(&v47);
    }

    return sub_126EC(&v46, &qword_3BD38, &qword_295D0);
  }

  v26 = *(v3 + 72);
  sub_DB00();
  sub_13620();
  result = sub_26324();
  __break(1u);
  return result;
}

void sub_14654(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_146E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v22[0] = *(v1 + 24);
  v22[1] = v4;
  v23 = *(v1 + 56);
  sub_4060(&qword_3BC80, &qword_292A0);
  sub_26674();
  v5 = v24;
  sub_148B8(v24);
  swift_unknownObjectRelease();

  sub_148D8(v24);
  sub_DB00();
  sub_13620();
  v6 = sub_26334();
  v8 = v7;
  v9 = swift_allocObject();
  v10 = *(v2 + 48);
  v9[3] = *(v2 + 32);
  v9[4] = v10;
  v9[5] = *(v2 + 64);
  v11 = *(v2 + 16);
  v9[1] = *v2;
  v9[2] = v11;
  v12 = swift_allocObject();
  v13 = *(v2 + 16);
  v14 = *(v2 + 48);
  v15 = *(v2 + 64);
  v12[3] = *(v2 + 32);
  v12[4] = v14;
  v12[5] = v15;
  v12[1] = *v2;
  v12[2] = v13;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = swift_allocObject();
  v19 = *(v2 + 48);
  v18[3] = *(v2 + 32);
  v18[4] = v19;
  v18[5] = *(v2 + 64);
  v20 = *(v2 + 16);
  v18[1] = *v2;
  v18[2] = v20;
  *a1 = v6;
  a1[1] = v8;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = v5;
  a1[5] = sub_148FC;
  a1[6] = v9;
  a1[7] = sub_14984;
  a1[8] = v12;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v17;
  a1[12] = v16;
  a1[13] = sub_149A8;
  a1[14] = v18;
  sub_EB84(v2, v22);
  sub_EB84(v2, v22);
  sub_EB84(v2, v22);
}

unint64_t sub_148B8(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return swift_errorRetain();
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_148D8(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_148FC()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  sub_4060(&qword_3BC80, &qword_292A0);
  sub_26674();

  result = sub_148D8(v3);
  if (v2)
  {
    [v2 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_149D4@<X0>(void *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (!(a2 >> 62))
  {

LABEL_5:
    result = sub_264B4();
    *a3 = v6;
    *(a3 + 8) = v7;
    return result;
  }

  if (a1)
  {
    v4 = [a1 genericIcon];
    sub_26624();
    goto LABEL_5;
  }

  sub_DB00();
  sub_13620();
  result = sub_26324();
  __break(1u);
  return result;
}

__n128 sub_14AB8@<Q0>(uint64_t a1@<X8>)
{
  sub_26664();
  sub_DB00();
  sub_13620();
  v2 = sub_26334();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = v5;
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v2;
  *(a1 + 72) = v4;
  return result;
}

__n128 sub_14B50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_26664();
  sub_DB00();
  sub_13620();
  v8 = sub_26334();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 17) = v11.n128_u32[0];
  *(a4 + 20) = *(v11.n128_u32 + 3);
  result = v11;
  *(a4 + 40) = v12;
  *(a4 + 24) = v11;
  *(a4 + 56) = v13;
  *(a4 + 64) = v8;
  *(a4 + 72) = v10;
  return result;
}

uint64_t sub_14C0C@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_146E0(a1);
}

uint64_t sub_14C50(unint64_t a1)
{
  if (a1 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t sub_14C7C(unint64_t a1)
{
  if (a1 >> 62 != 1)
  {
    return 0;
  }

  v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  swift_errorRetain();
  return v1;
}

unint64_t sub_14CD8(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 sub_14CF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_14D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_14D6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_14DF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_14E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_14EAC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_14EEC()
{
  result = qword_3BC88;
  if (!qword_3BC88)
  {
    sub_40A8(&qword_3BC90, "p]");
    sub_14F78();
    sub_150E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC88);
  }

  return result;
}

unint64_t sub_14F78()
{
  result = qword_3BC98;
  if (!qword_3BC98)
  {
    sub_40A8(&qword_3BCA0, &qword_29440);
    sub_15004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC98);
  }

  return result;
}

unint64_t sub_15004()
{
  result = qword_3BCA8;
  if (!qword_3BCA8)
  {
    sub_40A8(&qword_3BCB0, &qword_29448);
    sub_15090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCA8);
  }

  return result;
}

unint64_t sub_15090()
{
  result = qword_3CF30[0];
  if (!qword_3CF30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CF30);
  }

  return result;
}

unint64_t sub_150E4()
{
  result = qword_3BCB8;
  if (!qword_3BCB8)
  {
    sub_40A8(&qword_3BCC0, &qword_29450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCB8);
  }

  return result;
}

uint64_t sub_15148(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_151A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_15208(uint64_t *a1, unsigned int a2)
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

uint64_t sub_15264(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1534C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  sub_148D8(*(v0 + 64));
  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_153AC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_26624();
    v4 = *(v2 + 40);
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v22 = *(v2 + 48);
    v23[0] = v4;
    v20 = v6;
    v21 = v5;
    v15 = v4;
    v16 = *(v2 + 48);
    v17 = v5;
    v18 = v6;
    sub_CBD4(v23, &v11, &qword_3BD28, &qword_295C0);
    sub_CBD4(&v22, &v11, &qword_3BD30, &qword_295C8);
    sub_152E4(&v21, &v11);
    sub_CBD4(&v20, &v11, &qword_3BD38, &qword_295D0);
    sub_4060(&qword_3BC80, &qword_292A0);
    sub_26674();
    sub_148D8(v19);
    v11 = v4;
    v12 = *(v2 + 48);
    v13 = v5;
    v14 = v6;
    sub_26684();

    sub_126EC(v23, &qword_3BD28, &qword_295C0);
    sub_126EC(&v22, &qword_3BD30, &qword_295C8);
    sub_1531C(&v21);
  }

  else
  {
    if (!a2)
    {
      sub_156C8();
      swift_allocError();
    }

    v7 = *(v2 + 40);
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    v22 = *(v2 + 48);
    v23[0] = v7;
    v20 = v9;
    v21 = v8;
    v15 = v7;
    v16 = *(v2 + 48);
    v17 = v8;
    v18 = v9;
    swift_errorRetain();
    sub_CBD4(v23, &v11, &qword_3BD28, &qword_295C0);
    sub_CBD4(&v22, &v11, &qword_3BD30, &qword_295C8);
    sub_152E4(&v21, &v11);
    sub_CBD4(&v20, &v11, &qword_3BD38, &qword_295D0);
    sub_4060(&qword_3BC80, &qword_292A0);
    sub_26674();
    sub_148D8(v19);
    v11 = v7;
    v12 = *(v2 + 48);
    v13 = v8;
    v14 = v9;
    sub_26684();
    sub_126EC(v23, &qword_3BD28, &qword_295C0);
    sub_126EC(&v22, &qword_3BD30, &qword_295C8);
    sub_1531C(&v21);
  }

  return sub_126EC(&v20, &qword_3BD38, &qword_295D0);
}

uint64_t sub_156B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_156C8()
{
  result = qword_3CFC0[0];
  if (!qword_3CFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CFC0);
  }

  return result;
}

unint64_t sub_15730()
{
  result = qword_3BD40;
  if (!qword_3BD40)
  {
    sub_40A8(&qword_3BD48, &qword_295E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD40);
  }

  return result;
}

uint64_t sub_157B8@<X0>(uint64_t *a1@<X8>)
{
  sub_DB00();
  result = sub_26194();
  *a1 = result;
  return result;
}

uint64_t sub_157F8()
{
  sub_4060(&qword_3B4B0, qword_296B0);
  sub_40A8(&qword_3B3F8, &qword_28480);
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480);
  swift_getOpaqueTypeConformance2();
  return sub_26774();
}

uint64_t sub_158E0(uint64_t a1)
{
  v2 = sub_264F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4060(&qword_3B3F8, &qword_28480);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  *v10 = sub_26424();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_4060(&qword_3B4B8, &unk_285B0);
  sub_15AA8(a1, &v10[*(v11 + 44)]);
  sub_264E4();
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480);
  sub_26604();
  (*(v3 + 8))(v6, v2);
  return sub_4AB4(v10);
}

uint64_t sub_15AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_4060(&qword_3B4C0, &unk_29120);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v32 - v6;
  v8 = sub_4060(&qword_3B4C8, &qword_285C0);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v38 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  v41 = sub_133CC(0xD000000000000017, 0x800000000002C9D0);
  v42 = v15;
  sub_41F0();
  v16 = sub_26584();
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v36 = v19;
  v20 = sub_26474();
  v32[1] = v21;
  v32[2] = v20;
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();
  v22 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  sub_266E4();
  sub_4B1C(&qword_3B4D0, &qword_3B4C0, &unk_29120);
  v32[0] = v14;
  v23 = v39;
  sub_265C4();
  (*(v40 + 8))(v7, v23);
  v24 = v9[2];
  v25 = v38;
  v24(v38, v14, v8);
  v26 = v33;
  v27 = v34;
  *a2 = v34;
  *(a2 + 8) = v26;
  v28 = v35 & 1;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v29 = sub_4060(&qword_3B4D8, &qword_285F0);
  v24((a2 + *(v29 + 64)), v25, v8);
  sub_4B64(v27, v26, v28);
  v30 = v9[1];

  v30(v32[0], v8);
  v30(v25, v8);
  sub_4B74(v27, v26, v28);
}

uint64_t sub_15E2C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.sectname[swift_isaMask & **a1])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_15F10()
{
  v2 = *v0;
  v3 = v0[1];
  sub_4060(&qword_3B4B0, qword_296B0);
  sub_40A8(&qword_3B3F8, &qword_28480);
  sub_4B1C(&unk_3B400, &qword_3B3F8, &qword_28480);
  swift_getOpaqueTypeConformance2();
  return sub_26774();
}

uint64_t sub_16064()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26204();

  return v1;
}

uint64_t sub_160D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_68.segname[(swift_isaMask & **a1) - 8])();
  *a2 = result;
  return result;
}

uint64_t sub_16134(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *&stru_68.segname[swift_isaMask & **a2];

  return v3(v4);
}

uint64_t sub_16198()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_26214();
}

void (*sub_16204(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_261F4();
  return sub_70B4;
}

uint64_t sub_162A8()
{
  swift_beginAccess();
  sub_4060(&qword_3BD58, &qword_29800);
  sub_261D4();
  return swift_endAccess();
}

uint64_t sub_1631C(uint64_t a1)
{
  v2 = sub_4060(&qword_3BD60, &qword_29808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_4060(&qword_3BD58, &qword_29800);
  sub_261E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_16454(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_4060(&qword_3BD60, &qword_29808);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource__installedDepthApps;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_4060(&qword_3BD58, &qword_29800);
  sub_261D4();
  swift_endAccess();
  return sub_7438;
}

id variable initialization expression of RemoteInstalledDepthAppsDataSource.logger()
{
  result = cslprf_app_library_log();
  if (result)
  {

    return sub_26164();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1660C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) + 16];
  a1[3] = sub_4060(&qword_3BD60, &qword_29808);
  a1[4] = sub_16694();
  sub_166F8(a1);
  return v3();
}

unint64_t sub_16694()
{
  result = qword_3BD68;
  if (!qword_3BD68)
  {
    sub_40A8(&qword_3BD60, &qword_29808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD68);
  }

  return result;
}

uint64_t *sub_166F8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id variable initialization expression of RemoteInstalledDepthAppsDataSource.stingSettingsModel()
{
  v0 = objc_allocWithZone(CSLPRFStingSettingsModel);

  return [v0 init];
}

char *RemoteInstalledDepthAppsDataSource.init()()
{
  v1 = sub_4060(&qword_3BD58, &qword_29800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource__installedDepthApps;
  v19 = &_swiftEmptyArrayStorage;
  sub_4060(&qword_3BD50, &qword_297B0);
  sub_261C4();
  (*(v2 + 32))(&v0[v6], v5, v1);
  result = cslprf_app_library_log();
  if (result)
  {
    sub_26164();
    v8 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_stingSettingsModel;
    v9 = [objc_allocWithZone(CSLPRFStingSettingsModel) init];
    *&v0[v8] = v9;
    v10 = [objc_allocWithZone(CSLPRFInstalledDepthApplicationsDataSource) initWithStingModel:v9];
    *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource] = v10;
    v11 = type metadata accessor for RemoteInstalledDepthAppsDataSource();
    v18.receiver = v0;
    v18.super_class = v11;
    v12 = objc_msgSendSuper2(&v18, "init");
    v13 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource;
    v14 = *&v12[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource];
    v15 = v12;
    [v14 setDelegate:v15];
    v16 = [objc_opt_self() defaultCenter];
    [v16 addObserver:v15 selector:"updateInstalledDepthApps" name:CSLPRFStingSettingsModelDidChangeNotification object:*&v15[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_stingSettingsModel]];

    [*&v12[v13] start];
    _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RemoteInstalledDepthAppsDataSource()
{
  result = qword_3D178;
  if (!qword_3D178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RemoteInstalledDepthAppsDataSource.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteInstalledDepthAppsDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSourceC04dataJ9DidUpdateyySo015CSLPRFInstalledg12ApplicationsiJ0CF_0()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_stingSettingsModel) bundleIDsForActionType:20];
  if (v2)
  {
    v3 = v2;
    v4 = sub_26884();
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  v5 = sub_26934();

  v6 = sub_26134();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48 = v8;
    *v7 = 136315138;
    v9 = sub_26894();
    v11 = v1;
    v12 = sub_17368(v9, v10, &v48);

    *(v7 + 4) = v12;
    v1 = v11;
    _os_log_impl(&dword_0, v6, v5, "updateInstalledDepthApps with %s", v7, 0xCu);
    sub_D634(v8);
  }

  v13 = [*(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings34RemoteInstalledDepthAppsDataSource_dataSource) apps];
  sub_B8B4();
  v14 = sub_26884();

  if (v14 >> 62)
  {
    v15 = sub_26AF4();
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:

    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v48 = &_swiftEmptyArrayStorage;
  sub_184AC(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v44 = v4;
  v45 = v1;
  v16 = 0;
  v17 = v48;
  v18 = v14;
  oslog = (v14 & 0xC000000000000001);
  v19 = v14;
  v20 = v15;
  do
  {
    if (oslog)
    {
      v21 = sub_26A54();
    }

    else
    {
      v21 = *(v18 + 8 * v16 + 32);
    }

    v22 = v21;
    v23 = [v21 bundleIdentifier];
    v24 = sub_26844();

    v25 = [v22 cslprf_displayName];
    sub_26844();

    v26 = CSLPRFDepthAutoLaunchBehavior.id.getter(v24);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v48 = v17;
    v34 = *(v17 + 2);
    v33 = *(v17 + 3);
    if (v34 >= v33 >> 1)
    {
      sub_184AC((v33 > 1), v34 + 1, 1);
      v17 = v48;
    }

    ++v16;
    *(v17 + 2) = v34 + 1;
    v35 = &v17[32 * v34];
    *(v35 + 4) = v26;
    *(v35 + 5) = v28;
    *(v35 + 6) = v30;
    *(v35 + 7) = v32;
    v18 = v19;
  }

  while (v20 != v16);

  v1 = v45;
LABEL_19:
  v48 = v17;

  sub_17910(&v48);

  (*&stru_68.segname[swift_isaMask & *v1])(v48);
  v36 = sub_26934();
  v37 = v1;
  osloga = sub_26134();

  if (os_log_type_enabled(osloga, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v38 = 136315138;
    (*&stru_68.segname[(swift_isaMask & *v37) - 8])();
    v40 = sub_26894();
    v42 = v41;

    v43 = sub_17368(v40, v42, &v48);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, osloga, v36, "installedDepthApps = %s", v38, 0xCu);
    sub_D634(v39);
  }
}

void sub_17228()
{
  sub_17304();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_26154();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_17304()
{
  if (!qword_3BDF8)
  {
    sub_40A8(&qword_3BD50, &qword_297B0);
    v0 = sub_26224();
    if (!v1)
    {
      atomic_store(v0, &qword_3BDF8);
    }
  }
}

uint64_t sub_17368(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_17434(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_184CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_D634(v11);
  return v7;
}

unint64_t sub_17434(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_17540(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26A74();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_17540(uint64_t a1, unint64_t a2)
{
  v4 = sub_1758C(a1, a2);
  sub_176BC(&off_36410);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1758C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_177A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26A74();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26864();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_177A8(v10, 0);
        result = sub_26A34();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_176BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1781C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_177A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_4060(&qword_3BE08, &qword_29868);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1781C(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&qword_3BE08, &qword_29868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

Swift::Int sub_17910(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18634(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1797C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1797C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_268B4();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_17B7C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_17A74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_17A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_41F0();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v20 = *v13;
      v21 = *(v13 + 8);
      result = sub_269F4();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v17 = *(v13 + 56);
      v18 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v18;
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 24) = v17;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_17B7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = &_swiftEmptyArrayStorage;
    v99 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v100 = v6;
        v13 = (*a3 + 32 * v12);
        v14 = 32 * v11;
        v15 = (*a3 + 32 * v11);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15 + 9;
        v111 = *v13;
        v113 = v13[1];
        sub_41F0();
        result = sub_269F4();
        v19 = v11;
        v20 = result;
        v102 = v19;
        v4 = v19 + 2;
        while (v8 != v4)
        {
          v112 = *(v18 - 1);
          v114 = *v18;
          v107 = *(v18 - 5);
          v109 = *(v18 - 4);
          result = sub_269F4();
          ++v4;
          v18 += 4;
          if ((v20 == -1) == (result != -1))
          {
            v8 = v4 - 1;
            break;
          }
        }

        if (v20 == -1)
        {
          v11 = v102;
          v7 = v99;
          if (v8 < v102)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return result;
          }

          if (v102 < v8)
          {
            v68 = 32 * v8 - 16;
            v69 = v14 + 24;
            v70 = v8;
            v71 = v102;
            v6 = v100;
            while (1)
            {
              if (v71 != --v70)
              {
                v78 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v72 = (v78 + v69);
                v73 = (v78 + v68);
                v74 = *(v72 - 3);
                v75 = *(v72 - 1);
                v76 = *v72;
                v77 = *v73;
                *(v72 - 3) = *(v73 - 1);
                *(v72 - 1) = v77;
                *(v73 - 1) = v74;
                *v73 = v75;
                *(v73 + 1) = v76;
              }

              ++v71;
              v68 -= 32;
              v69 += 32;
              if (v71 >= v70)
              {
                goto LABEL_12;
              }
            }
          }

          v6 = v100;
        }

        else
        {
          v7 = v99;
          v6 = v100;
          v11 = v102;
        }
      }

LABEL_12:
      v21 = a3[1];
      if (v8 >= v21)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_120;
      }

      if (v11 + a4 < v21)
      {
        v21 = v11 + a4;
      }

      if (v21 < v11)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v21)
      {
LABEL_20:
        v22 = v8;
      }

      else
      {
        v105 = v21;
        v101 = v6;
        v79 = v11;
        v80 = *a3;
        sub_41F0();
        v81 = v80 + 32 * v8 - 32;
        v103 = v79;
        v4 = v79 - v8;
        do
        {
          v82 = (v80 + 32 * v8);
          v83 = *v82;
          v84 = v82[1];
          v85 = v4;
          v86 = v81;
          do
          {
            v108 = *v86;
            v110 = *(v86 + 8);
            result = sub_269F4();
            if (result != -1)
            {
              break;
            }

            if (!v80)
            {
              goto LABEL_124;
            }

            v87 = *(v86 + 32);
            v88 = *(v86 + 40);
            v89 = *(v86 + 48);
            v90 = *(v86 + 56);
            v91 = *(v86 + 16);
            *(v86 + 32) = *v86;
            *(v86 + 48) = v91;
            *v86 = v87;
            *(v86 + 8) = v88;
            *(v86 + 16) = v89;
            *(v86 + 24) = v90;
            v86 -= 32;
          }

          while (!__CFADD__(v85++, 1));
          ++v8;
          v81 += 32;
          --v4;
        }

        while (v8 != v105);
        v7 = v99;
        v6 = v101;
        v11 = v103;
        v22 = v105;
      }

      if (v22 < v11)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_A708(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v23 = *(v10 + 3);
      v24 = v4 + 1;
      if (v4 >= v23 >> 1)
      {
        result = sub_A708((v23 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v24;
      v25 = &v10[16 * v4];
      *(v25 + 4) = v11;
      *(v25 + 5) = v22;
      v26 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v104 = v22;
      if (v4)
      {
        while (1)
        {
          v27 = v24 - 1;
          if (v24 >= 4)
          {
            break;
          }

          if (v24 == 3)
          {
            v28 = *(v10 + 4);
            v29 = *(v10 + 5);
            v38 = __OFSUB__(v29, v28);
            v30 = v29 - v28;
            v31 = v38;
LABEL_41:
            if (v31)
            {
              goto LABEL_107;
            }

            v44 = &v10[16 * v24];
            v46 = *v44;
            v45 = *(v44 + 1);
            v47 = __OFSUB__(v45, v46);
            v48 = v45 - v46;
            v49 = v47;
            if (v47)
            {
              goto LABEL_110;
            }

            v50 = &v10[16 * v27 + 32];
            v52 = *v50;
            v51 = *(v50 + 1);
            v38 = __OFSUB__(v51, v52);
            v53 = v51 - v52;
            if (v38)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v48, v53))
            {
              goto LABEL_114;
            }

            if (v48 + v53 >= v30)
            {
              if (v30 < v53)
              {
                v27 = v24 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v54 = &v10[16 * v24];
          v56 = *v54;
          v55 = *(v54 + 1);
          v38 = __OFSUB__(v55, v56);
          v48 = v55 - v56;
          v49 = v38;
LABEL_55:
          if (v49)
          {
            goto LABEL_109;
          }

          v57 = &v10[16 * v27];
          v59 = *(v57 + 4);
          v58 = *(v57 + 5);
          v38 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v38)
          {
            goto LABEL_112;
          }

          if (v60 < v48)
          {
            goto LABEL_3;
          }

LABEL_62:
          v4 = v27 - 1;
          if (v27 - 1 >= v24)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v65 = *&v10[16 * v4 + 32];
          v66 = *&v10[16 * v27 + 40];
          sub_1821C((*a3 + 32 * v65), (*a3 + 32 * *&v10[16 * v27 + 32]), (*a3 + 32 * v66), v26);
          if (v6)
          {
          }

          if (v66 < v65)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_B454(v10);
          }

          if (v4 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v67 = &v10[16 * v4];
          *(v67 + 4) = v65;
          *(v67 + 5) = v66;
          result = sub_B3C8(v27);
          v24 = *(v10 + 2);
          if (v24 <= 1)
          {
            goto LABEL_3;
          }
        }

        v32 = &v10[16 * v24 + 32];
        v33 = *(v32 - 64);
        v34 = *(v32 - 56);
        v38 = __OFSUB__(v34, v33);
        v35 = v34 - v33;
        if (v38)
        {
          goto LABEL_105;
        }

        v37 = *(v32 - 48);
        v36 = *(v32 - 40);
        v38 = __OFSUB__(v36, v37);
        v30 = v36 - v37;
        v31 = v38;
        if (v38)
        {
          goto LABEL_106;
        }

        v39 = &v10[16 * v24];
        v41 = *v39;
        v40 = *(v39 + 1);
        v38 = __OFSUB__(v40, v41);
        v42 = v40 - v41;
        if (v38)
        {
          goto LABEL_108;
        }

        v38 = __OFADD__(v30, v42);
        v43 = v30 + v42;
        if (v38)
        {
          goto LABEL_111;
        }

        if (v43 >= v35)
        {
          v61 = &v10[16 * v27 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v38 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v38)
          {
            goto LABEL_115;
          }

          if (v30 < v64)
          {
            v27 = v24 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v104;
      if (v104 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = &_swiftEmptyArrayStorage;
LABEL_90:
  v93 = v7;
  v7 = v6;
  v6 = *v93;
  if (!*v93)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = a3;
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_B454(v10);
    v10 = result;
  }

  v94 = *(v10 + 2);
  if (v94 >= 2)
  {
    while (1)
    {
      v95 = *v4;
      if (!*v4)
      {
        goto LABEL_126;
      }

      v4 = *&v10[16 * v94];
      v96 = *&v10[16 * v94 + 24];
      sub_1821C((v95 + 32 * v4), (v95 + 32 * *&v10[16 * v94 + 16]), (v95 + 32 * v96), v6);
      if (v7)
      {
      }

      if (v96 < v4)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_B454(v10);
      }

      if (v94 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v97 = &v10[16 * v94];
      *v97 = v4;
      *(v97 + 1) = v96;
      result = sub_B3C8(v94 - 1);
      v94 = *(v10 + 2);
      v4 = a3;
      if (v94 <= 1)
      {
      }
    }
  }
}

uint64_t sub_1821C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_41F0();
LABEL_27:
      v25 = v6 - 32;
      v5 -= 32;
      v18 = v14;
      do
      {
        v19 = v5 + 32;
        v20 = *(v18 - 4);
        v21 = *(v18 - 3);
        v18 -= 32;
        v27 = *(v6 - 4);
        v29 = *(v6 - 3);
        if (sub_269F4() == -1)
        {
          if (v19 != v6)
          {
            v23 = *(v6 - 1);
            *v5 = *v25;
            *(v5 + 1) = v23;
          }

          if (v14 <= v4 || (v6 -= 32, v25 <= v7))
          {
            v6 = v25;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          v22 = *(v18 + 1);
          *v5 = *v18;
          *(v5 + 1) = v22;
        }

        v5 -= 32;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v10] <= a4)
    {
      memmove(a4, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_41F0();
      while (1)
      {
        v30 = *v6;
        v31 = *(v6 + 1);
        v26 = *v4;
        v28 = *(v4 + 1);
        if (sub_269F4() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      v17 = *(v15 + 1);
      *v7 = *v15;
      *(v7 + 1) = v17;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

char *sub_184AC(char *a1, int64_t a2, char a3)
{
  result = sub_18528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_184CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_18528(char *result, int64_t a2, char a3, char *a4)
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
    sub_4060(&unk_3BE20, &qword_29878);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18680(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, unint64_t))
{
  v7 = type metadata accessor for LiveActivitiesAutoLaunchModel();
  v8 = sub_127C8();

  return a4(a1, a2, a3 & 1, v7, v8);
}

uint64_t sub_186F8()
{
  sub_4060(&qword_3BE30, &qword_29880);
  sub_4B1C(&qword_3BE38, &qword_3BE30, &qword_29880);
  return sub_26524();
}

uint64_t sub_187A4()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_127C8();
  sub_26264();
  sub_DCE0();
  sub_18AA8();
  return sub_262C4();
}

uint64_t sub_18860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_187A4();
}

uint64_t sub_1886C@<X0>(uint64_t a1@<X8>)
{
  sub_133CC(0xD00000000000003ALL, 0x800000000002CB70);
  sub_41F0();
  result = sub_26584();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_188F8()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_4060(&qword_3BE30, &qword_29880);
  sub_4B1C(&qword_3BE38, &qword_3BE30, &qword_29880);
  return sub_26524();
}

__n128 sub_189B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_189C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}