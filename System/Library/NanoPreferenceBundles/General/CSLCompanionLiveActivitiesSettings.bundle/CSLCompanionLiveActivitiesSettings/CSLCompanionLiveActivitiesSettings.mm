void sub_2194(uint64_t a1)
{
  v2 = [[NSArray alloc] initWithArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_24DC(uint64_t a1, void *a2, void *a3, void *a4)
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
    v18[2] = sub_2710;
    v18[3] = &unk_20D28;
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

void sub_274C(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_28EC;
  v8[3] = &unk_20DC8;
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

void sub_28EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

uint64_t sub_2BA0(uint64_t a1, void *a2)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._object = 0x8000000000019CA0;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0xD00000000000001BLL;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_1619C(v10, v11, v6, v12, v9);

  return v7;
}

id sub_2C78()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

char *sub_2D80()
{
  v1 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel;
  *&v0[v1] = [objc_allocWithZone(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel;
  v4 = *&v2[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel];
  v5 = v2;
  [v4 setDelegate:v5];
  [*&v2[v3] start];

  return v5;
}

id sub_2E48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BacklightSettingsSwiftModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2E8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BacklightSettingsSwiftModel();
  result = sub_1628C();
  *a1 = result;
  return result;
}

uint64_t sub_2EC8()
{
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_2F34();

  return sub_1634C();
}

unint64_t sub_2F34()
{
  result = qword_26710[0];
  if (!qword_26710[0])
  {
    type metadata accessor for BacklightSettingsSwiftModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_26710);
  }

  return result;
}

id sub_2F88()
{
  v0 = objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel());

  return [v0 init];
}

uint64_t sub_2FBC()
{
  sub_3278(&qword_25D80, &unk_17A80);
  sub_32C0(&qword_25D88, &unk_18E40);
  sub_3308();
  sub_3408();
  swift_getOpaqueTypeConformance2();
  return sub_1650C();
}

uint64_t sub_3084(uint64_t a1, uint64_t a2)
{
  v4 = sub_3278(&qword_25D88, &unk_18E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v14 = a1;
  v15 = a2;
  sub_3278(&qword_25E50, qword_18D70);
  v9 = sub_32C0(&qword_25D98, &qword_17A90);
  v10 = sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90);
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeConformance2();
  sub_166BC();
  v16 = sub_2BA0(0xD000000000000020, 0x8000000000019D60);
  v17 = v11;
  sub_3308();
  sub_3408();
  sub_1659C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_3278(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_32C0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_3308()
{
  result = qword_25D90;
  if (!qword_25D90)
  {
    sub_32C0(&qword_25D88, &unk_18E40);
    sub_32C0(&qword_25D98, &qword_17A90);
    sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25D90);
  }

  return result;
}

unint64_t sub_3408()
{
  result = qword_25DA8;
  if (!qword_25DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25DA8);
  }

  return result;
}

uint64_t sub_345C(uint64_t a1)
{
  v2 = sub_164EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3278(&qword_25D98, &qword_17A90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  *v10 = sub_1641C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_3278(&qword_25E58, &unk_17BD0);
  sub_361C(a1, &v10[*(v11 + 44)]);
  sub_164DC();
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90);
  sub_165AC();
  (*(v3 + 8))(v6, v2);
  return sub_3CCC(v10);
}

uint64_t sub_361C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_3278(&qword_25E60, &unk_182A0);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = v31 - v6;
  v8 = sub_3278(&qword_25E68, &qword_17BE0);
  v31[0] = *(v8 - 8);
  v9 = v31[0];
  v10 = *(v31[0] + 64);
  v11 = (__chkstk_darwin)();
  v38 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v31 - v13;
  v41 = sub_2BA0(0xD000000000000020, 0x8000000000019D60);
  v42 = v14;
  sub_3408();
  v15 = sub_1652C();
  v32 = v16;
  v33 = v15;
  v34 = v17;
  v35 = v18;
  sub_1646C();
  v31[1] = v19;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_2F34();
  v20 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0);
  v21 = v36;
  v22 = v39;
  sub_1656C();
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
  v28 = sub_3278(&qword_25E78, &qword_17C10);
  v23((a2 + *(v28 + 64)), v24, v8);
  sub_3D7C(v26, v25, v27);
  v29 = *(v31[0] + 8);

  v29(v21, v8);
  v29(v24, v8);
  sub_3D8C(v26, v25, v27);
}

id sub_39B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel) privacyDuringAlwaysOnForLiveActivities];
  *a2 = result;
  return result;
}

id sub_39F0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for BacklightSettingsSwiftModel();
  sub_2F34();
  sub_1628C();
  sub_1629C();

  v4 = *(v3 + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettingsP33_9D89BC2E6FE972A30DACB6DEFECBFF7527BacklightSettingsSwiftModel_backlightSettingsModel);

  return [v4 setPrivacyDuringAlwaysOnForLiveActivities:v2];
}

uint64_t sub_3A70()
{
  [objc_allocWithZone(type metadata accessor for BacklightSettingsSwiftModel()) init];
  sub_2F34();

  return sub_1634C();
}

uint64_t sub_3B08()
{
  v2 = *v0;
  v3 = v0[1];
  sub_3278(&qword_25D80, &unk_17A80);
  sub_32C0(&qword_25D88, &unk_18E40);
  sub_3308();
  sub_3408();
  swift_getOpaqueTypeConformance2();
  return sub_1650C();
}

__n128 sub_3BD4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3BE0(uint64_t a1, int a2)
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

uint64_t sub_3C28(uint64_t result, int a2, int a3)
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

uint64_t sub_3CCC(uint64_t a1)
{
  v2 = sub_3278(&qword_25D98, &qword_17A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_32C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3D7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3D8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3DAC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_3DDC(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double sub_3E70@<D0>(uint64_t a1@<X8>)
{
  sub_165FC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_3ED8()
{
  sub_3F1C();
  sub_3F68();

  return sub_163AC();
}

unint64_t sub_3F1C()
{
  result = qword_25EE0;
  if (!qword_25EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25EE0);
  }

  return result;
}

unint64_t sub_3F68()
{
  result = qword_25EE8;
  if (!qword_25EE8)
  {
    sub_3F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25EE8);
  }

  return result;
}

uint64_t sub_3FC0(unint64_t a1, unint64_t a2)
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
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_5CBC(v49, &aBlock, &qword_25F98, &qword_17F48);
  sub_5CBC(&v48, &aBlock, &qword_25FA0, &qword_17F50);
  sub_5C84(&v47, &aBlock);
  sub_5CBC(&v46, &aBlock, &qword_25FA8, &qword_17F58);
  sub_3278(&qword_25EF0, &qword_17C20);
  sub_1660C();
  swift_unknownObjectRelease();
  v8 = v37;
  sub_5220(v38);
  if (*(&v8 + 1))
  {
    if (a2)
    {
      if (v8 == __PAIR128__(a2, a1))
      {

LABEL_9:
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        sub_5D54(&v46, &qword_25FA8, &qword_17F58);
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        sub_5D54(&v46, &qword_25FA8, &qword_17F58);
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        sub_5D54(&v46, &qword_25FA8, &qword_17F58);
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        sub_5D54(&v46, &qword_25FA8, &qword_17F58);
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        sub_5D54(&v46, &qword_25FA8, &qword_17F58);
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        sub_5D54(&v46, &qword_25FA8, &qword_17F58);
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        sub_5D54(&v46, &qword_25FA8, &qword_17F58);
        sub_5D54(v49, &qword_25F98, &qword_17F48);
        sub_5D54(&v48, &qword_25FA0, &qword_17F50);
        sub_5D24(&v47);
        return sub_5D54(&v46, &qword_25FA8, &qword_17F58);
      }

      v9 = sub_1685C();

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
  sub_1660C();
  v10 = aBlock;

  sub_5220(v38);
  if (v10)
  {
    [v10 invalidate];
    swift_unknownObjectRelease();
  }

  if (!a2)
  {
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    sub_1660C();
    swift_unknownObjectRelease();
    aBlock = v30;
    v37 = v45;
    v38 = v6;
    v39 = v7;
    *&v41[8] = *&v43[8];
    *v41 = 0;
    v42 = v44;
    sub_1661C();
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    sub_1660C();

    aBlock = v30;
    v37 = v45;
    v38 = v6;
    v39 = v7;
    *v41 = *v43;
    *&v41[8] = a1;
    *&v41[16] = 0;
    v42 = v44;
    sub_1661C();
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    v32 = v30;
    v33 = v45;
    v34 = v6;
    v35 = v7;
    sub_1660C();
    sub_5220(v44);
    aBlock = v30;
    v37 = v45;
    v38 = v6;
    v39 = v7;
    *v41 = *v43;
    *&v41[16] = *&v43[16];
    v42 = 0x8000000000000000;
    sub_1661C();
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    return sub_5D54(&v46, &qword_25FA8, &qword_17F58);
  }

  v27 = v6;
  v28 = v7;

  sub_5D54(v49, &qword_25F98, &qword_17F48);
  v29 = a2;
  sub_5D54(&v48, &qword_25FA0, &qword_17F50);
  sub_5D24(&v47);
  sub_5D54(&v46, &qword_25FA8, &qword_17F58);
  sub_5D54(v49, &qword_25F98, &qword_17F48);
  sub_5D54(&v48, &qword_25FA0, &qword_17F50);
  sub_5D24(&v47);
  sub_5D54(&v46, &qword_25FA8, &qword_17F58);
  sub_5D54(v49, &qword_25F98, &qword_17F48);
  sub_5D54(&v48, &qword_25FA0, &qword_17F50);
  sub_5D24(&v47);
  sub_5D54(&v46, &qword_25FA8, &qword_17F58);
  v11 = *(v3 + 64);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 iconCache];
    v14 = sub_1671C();
    v15 = [v13 iconForName:v14 fallBackToPersistentStoreIfNecessary:0];

    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    sub_5D54(v49, &qword_25F98, &qword_17F48);
    sub_5D54(&v48, &qword_25FA0, &qword_17F50);
    sub_5D24(&v47);
    sub_5D54(&v46, &qword_25FA8, &qword_17F58);
    if (v15)
    {

      sub_1660C();

      aBlock = v30;
      v37 = v45;
      v38 = v6;
      v39 = v7;
      *v41 = *v43;
      *&v41[8] = a1;
      *&v41[16] = v29;
      v42 = v44;
      sub_1661C();
      sub_5D54(v49, &qword_25F98, &qword_17F48);
      sub_5D54(&v48, &qword_25FA0, &qword_17F50);
      sub_5D24(&v47);
      sub_5D54(&v46, &qword_25FA8, &qword_17F58);
      sub_1660C();
      swift_unknownObjectRelease();
      aBlock = v30;
      v37 = v45;
      v38 = v6;
      v39 = v7;
      *&v41[8] = *&v43[8];
      *v41 = 0;
      v42 = v44;
      sub_1661C();
      sub_5D54(v49, &qword_25F98, &qword_17F48);
      sub_5D54(&v48, &qword_25FA0, &qword_17F50);
      sub_5D24(&v47);
      sub_5D54(&v46, &qword_25FA8, &qword_17F58);
      v16 = v15;
      v17 = sub_165BC();
      v32 = v30;
      v33 = v45;
      v34 = v6;
      v35 = v28;
      sub_1660C();
      sub_5220(v44);
      aBlock = v30;
      v37 = v45;
      v38 = v6;
      v39 = v28;
      *v41 = *v43;
      *&v41[16] = *&v43[16];
      v42 = v17;
      sub_1661C();

      sub_5D54(v49, &qword_25F98, &qword_17F48);
      sub_5D54(&v48, &qword_25FA0, &qword_17F50);
      sub_5D24(&v47);
    }

    else
    {
      sub_5D54(v49, &qword_25F98, &qword_17F48);
      sub_5D54(&v48, &qword_25FA0, &qword_17F50);
      sub_5D24(&v47);
      sub_5D54(&v46, &qword_25FA8, &qword_17F58);
      v18 = sub_1671C();
      v19 = *(v3 + 16);
      v20 = swift_allocObject();
      v21 = *(v3 + 48);
      v20[3] = *(v3 + 32);
      v20[4] = v21;
      v20[5] = *(v3 + 64);
      v22 = *(v3 + 16);
      v20[1] = *v3;
      v20[2] = v22;
      v39 = sub_5E14;
      v40 = v20;
      aBlock = _NSConcreteStackBlock;
      *&v37 = 1107296256;
      *(&v37 + 1) = sub_4F9C;
      v38 = &unk_21208;
      v23 = _Block_copy(&aBlock);
      sub_531C(v3, &v32);

      v24 = [v12 iconFetchTaskForBundleIdentifier:v18 isPhoneApp:v19 completion:v23];
      _Block_release(v23);

      v32 = v30;
      v33 = v45;
      v34 = v27;
      v35 = v7;
      swift_unknownObjectRetain();
      sub_1660C();
      swift_unknownObjectRelease();
      aBlock = v30;
      v37 = v45;
      v38 = v27;
      v39 = v7;
      *&v41[8] = *&v43[8];
      *v41 = v24;
      v42 = v44;
      sub_1661C();
      sub_5D54(v49, &qword_25F98, &qword_17F48);
      sub_5D54(&v48, &qword_25FA0, &qword_17F50);
      sub_5D24(&v47);
      sub_5D54(&v46, &qword_25FA8, &qword_17F58);
      v32 = v30;
      v33 = v45;
      v34 = v27;
      v35 = v7;
      sub_1660C();

      aBlock = v30;
      v37 = v45;
      v38 = v27;
      v39 = v7;
      *v41 = *v43;
      *&v41[8] = a1;
      *&v41[16] = v29;
      v42 = v44;
      sub_1661C();
      swift_unknownObjectRelease();
      sub_5D54(v49, &qword_25F98, &qword_17F48);
      sub_5D54(&v48, &qword_25FA0, &qword_17F50);
      sub_5D24(&v47);
    }

    return sub_5D54(&v46, &qword_25FA8, &qword_17F58);
  }

  v26 = *(v3 + 72);
  sub_3F1C();
  sub_3F68();
  result = sub_1639C();
  __break(1u);
  return result;
}

void sub_4F9C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_5028@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v22[0] = *(v1 + 24);
  v22[1] = v4;
  v23 = *(v1 + 56);
  sub_3278(&qword_25EF0, &qword_17C20);
  sub_1660C();
  v5 = v24;
  sub_5200(v24);
  swift_unknownObjectRelease();

  sub_5220(v24);
  sub_3F1C();
  sub_3F68();
  v6 = sub_163AC();
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
  a1[5] = sub_5244;
  a1[6] = v9;
  a1[7] = sub_52CC;
  a1[8] = v12;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v17;
  a1[12] = v16;
  a1[13] = sub_52F0;
  a1[14] = v18;
  sub_531C(v2, v22);
  sub_531C(v2, v22);
  sub_531C(v2, v22);
}

unint64_t sub_5200(unint64_t result)
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

unint64_t sub_5220(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_5244()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  sub_3278(&qword_25EF0, &qword_17C20);
  sub_1660C();

  result = sub_5220(v3);
  if (v2)
  {
    [v2 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_5354@<X0>(void *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (!(a2 >> 62))
  {

LABEL_5:
    result = sub_164AC();
    *a3 = v6;
    *(a3 + 8) = v7;
    return result;
  }

  if (a1)
  {
    v4 = [a1 genericIcon];
    sub_165BC();
    goto LABEL_5;
  }

  sub_3F1C();
  sub_3F68();
  result = sub_1639C();
  __break(1u);
  return result;
}

__n128 sub_5438@<Q0>(uint64_t a1@<X8>)
{
  sub_165FC();
  sub_3F1C();
  sub_3F68();
  v2 = sub_163AC();
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

__n128 sub_54D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_165FC();
  sub_3F1C();
  sub_3F68();
  v8 = sub_163AC();
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

uint64_t sub_558C@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_5028(a1);
}

uint64_t sub_55D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t sub_55FC(unint64_t a1)
{
  if (a1 >> 62 != 1)
  {
    return 0;
  }

  v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  swift_errorRetain();
  return v1;
}

unint64_t sub_5658(uint64_t *a1)
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

__n128 sub_5674(uint64_t a1, uint64_t a2)
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

uint64_t sub_5690(uint64_t a1, unsigned int a2)
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

uint64_t sub_56EC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_5770(uint64_t a1, unsigned int a2)
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

uint64_t sub_57CC(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_582C(void *result, uint64_t a2)
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

unint64_t sub_586C()
{
  result = qword_25EF8;
  if (!qword_25EF8)
  {
    sub_32C0(&qword_25F00, &qword_17DC0);
    sub_58F8();
    sub_5A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25EF8);
  }

  return result;
}

unint64_t sub_58F8()
{
  result = qword_25F08;
  if (!qword_25F08)
  {
    sub_32C0(&qword_25F10, &qword_17DC8);
    sub_5984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25F08);
  }

  return result;
}

unint64_t sub_5984()
{
  result = qword_25F18;
  if (!qword_25F18)
  {
    sub_32C0(&qword_25F20, &qword_17DD0);
    sub_5A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25F18);
  }

  return result;
}

unint64_t sub_5A10()
{
  result = qword_268B0[0];
  if (!qword_268B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_268B0);
  }

  return result;
}

unint64_t sub_5A64()
{
  result = qword_25F28;
  if (!qword_25F28)
  {
    sub_32C0(&qword_25F30, &qword_17DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25F28);
  }

  return result;
}

__n128 sub_5AC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5ADC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_5B38(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_5B9C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_5BA8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_5C04(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_5CBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3278(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5D54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3278(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5DB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  sub_5220(*(v0 + 64));
  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_5E14(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_165BC();
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
    sub_5CBC(v23, &v11, &qword_25F98, &qword_17F48);
    sub_5CBC(&v22, &v11, &qword_25FA0, &qword_17F50);
    sub_5C84(&v21, &v11);
    sub_5CBC(&v20, &v11, &qword_25FA8, &qword_17F58);
    sub_3278(&qword_25EF0, &qword_17C20);
    sub_1660C();
    sub_5220(v19);
    v11 = v4;
    v12 = *(v2 + 48);
    v13 = v5;
    v14 = v6;
    sub_1661C();

    sub_5D54(v23, &qword_25F98, &qword_17F48);
    sub_5D54(&v22, &qword_25FA0, &qword_17F50);
    sub_5D24(&v21);
  }

  else
  {
    if (!a2)
    {
      sub_6130();
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
    sub_5CBC(v23, &v11, &qword_25F98, &qword_17F48);
    sub_5CBC(&v22, &v11, &qword_25FA0, &qword_17F50);
    sub_5C84(&v21, &v11);
    sub_5CBC(&v20, &v11, &qword_25FA8, &qword_17F58);
    sub_3278(&qword_25EF0, &qword_17C20);
    sub_1660C();
    sub_5220(v19);
    v11 = v7;
    v12 = *(v2 + 48);
    v13 = v8;
    v14 = v9;
    sub_1661C();
    sub_5D54(v23, &qword_25F98, &qword_17F48);
    sub_5D54(&v22, &qword_25FA0, &qword_17F50);
    sub_5D24(&v21);
  }

  return sub_5D54(&v20, &qword_25FA8, &qword_17F58);
}

uint64_t sub_6118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_6130()
{
  result = qword_26940[0];
  if (!qword_26940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_26940);
  }

  return result;
}

unint64_t sub_6198()
{
  result = qword_25FB0;
  if (!qword_25FB0)
  {
    sub_32C0(&qword_25FB8, &qword_17F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25FB0);
  }

  return result;
}

uint64_t sub_622C()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);

  return sub_1634C();
}

uint64_t sub_62B0(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_62FC()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);

  return sub_1635C();
}

uint64_t sub_63C0()
{
  v3 = *(v0 + 16);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return v2;
}

uint64_t sub_6410()
{
  v2 = *(v0 + 16);
  sub_3278(&qword_25FC8, &qword_17FC0);
  return sub_1661C();
}

void (*sub_6464(uint64_t *a1))(uint64_t *a1)
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
  sub_6570(v3 + 48, v3 + 32);
  *(v5 + 8) = sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return sub_6514;
}

void sub_6514(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 56);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  sub_1661C();
  sub_65E0(v1);

  free(v1);
}

uint64_t sub_6570(uint64_t a1, uint64_t a2)
{
  v4 = sub_3278(&qword_25FD0, &qword_17FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_65E0(uint64_t a1)
{
  v2 = sub_3278(&qword_25FC8, &qword_17FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6648()
{
  v3 = *(v0 + 16);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1662C();
  return v2;
}

uint64_t sub_669C()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return v2;
}

uint64_t sub_66F4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_3278(&qword_25FD8, &qword_17FD0);
  return sub_1666C();
}

void (*sub_6750(uint64_t *a1))(uint64_t *a1)
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
  sub_6884(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return sub_680C;
}

void sub_680C(uint64_t *a1)
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
  sub_1666C();
  sub_68E0(v1 + 48);

  free(v1);
}

uint64_t sub_6934()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1667C();
  return v2;
}

uint64_t sub_69A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);

  v8 = sub_1634C();
  v10 = v9;
  sub_165FC();

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 56) = &off_21288;
  return result;
}

uint64_t sub_6AA0()
{
  v1 = sub_1645C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3278(&qword_25FE0, &qword_17FD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  v10 = v0;
  sub_3278(&qword_25FE8, &unk_17FE0);
  sub_3D34(&qword_25FF0, &qword_25FE8, &unk_17FE0);
  sub_164FC();
  sub_1644C();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1643C(v11);
  sub_1642C(*(*(v0 + 8) + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName));
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1643C(v12);
  sub_1647C();
  sub_3D34(&qword_25FF8, &qword_25FE0, &qword_17FD8);
  sub_1658C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_6CFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_3278(&qword_26008, &qword_181D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v40 = &v39 - v6;
  v7 = sub_3278(&qword_26010, &qword_181E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v41 = sub_3278(&qword_26018, &qword_181E8);
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v41);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v45 = a1;
  sub_3278(&qword_26020, &qword_181F0);
  v19 = sub_32C0(&qword_26028, &qword_181F8);
  v20 = sub_3D34(&qword_26030, &qword_26028, &qword_181F8);
  *&v47 = v19;
  *(&v47 + 1) = v20;
  v21 = v12;
  v22 = v4;
  v23 = 1;
  swift_getOpaqueTypeConformance2();
  v24 = v18;
  v25 = sub_166BC();
  v26 = *(a1 + 8);
  if ((*(*v26 + 248))(v25))
  {
    v47 = *(a1 + 32);
    v48 = *(a1 + 48);
    sub_3278(&qword_25FD8, &qword_17FD0);
    v27 = sub_1665C();
    if (v46 == 1 && (v28 = (*(*v26 + 176))(v27), (v28 & 1) != 0))
    {
      __chkstk_darwin(v28);
      *(&v39 - 2) = a1;
      sub_3278(&qword_26040, &qword_18208);
      sub_9928();
      v29 = v40;
      sub_1650C();
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
  sub_5CBC(v21, v43, &qword_26010, &qword_181E0);
  v35 = v44;
  v31(v44, v33, v32);
  v36 = sub_3278(&qword_26038, &qword_18200);
  sub_5CBC(v34, &v35[*(v36 + 48)], &qword_26010, &qword_181E0);
  sub_5D54(v21, &qword_26010, &qword_181E0);
  v37 = *(v30 + 8);
  v37(v24, v32);
  sub_5D54(v34, &qword_26010, &qword_181E0);
  return (v37)(v33, v32);
}

uint64_t sub_7208(uint64_t *a1)
{
  v2 = sub_164EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3278(&qword_26028, &qword_181F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  *v10 = sub_1641C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_3278(&qword_260E0, &qword_18298);
  sub_73C8(a1, &v10[*(v11 + 44)]);
  sub_164DC();
  sub_3D34(&qword_26030, &qword_26028, &qword_181F8);
  sub_165AC();
  (*(v3 + 8))(v6, v2);
  return sub_5D54(v10, &qword_26028, &qword_181F8);
}

uint64_t sub_73C8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a2;
  v3 = sub_3278(&qword_25E60, &unk_182A0);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v42 = v37 - v5;
  v6 = sub_3278(&qword_25E68, &qword_17BE0);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  v8 = __chkstk_darwin(v6);
  v43 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v37 - v10;
  v12 = *a1;
  if (*(a1[1] + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
  {
    *&v54 = sub_2BA0(0xD00000000000001ELL, 0x8000000000019E80);
    *(&v54 + 1) = v13;
    sub_3408();
    v49 = sub_1652C();
    v50 = v14;
    v51 = v15 & 1;
    v52 = v16;
    v53 = 0;
  }

  else
  {
    *&v54 = sub_2BA0(0xD000000000000017, 0x8000000000019E60);
    *(&v54 + 1) = v17;
    sub_3408();
    v49 = sub_1652C();
    v50 = v19;
    v51 = v18 & 1;
    v52 = v20;
    v53 = 1;
  }

  sub_164AC();
  v21 = v56;
  v38 = v55;
  v39 = v54;
  v22 = *(&v54 + 1);
  v40 = *(&v55 + 1);
  v23 = v55;
  v41 = v54;
  sub_9C60(v54, *(&v54 + 1), v55);
  v37[1] = sub_1646C();
  v37[0] = v24;
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  v25 = v42;
  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0);
  v26 = v45;
  sub_1656C();
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
  v33 = sub_3278(&qword_260E8, qword_182D8);
  v29(v31 + *(v33 + 64), v30, v27);
  v34 = v41;
  sub_9C60(v41, v22, v23);
  sub_9C9C(v34, v22, v23);
  v35 = *(v28 + 8);
  v35(v11, v27);
  v35(v30, v27);
  return sub_9C9C(v34, v22, v23);
}

uint64_t sub_7888@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_7920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v61 = sub_3278(&qword_26070, &qword_18220);
  v55 = *(v61 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v61);
  v54 = &v53 - v4;
  v62 = sub_3278(&qword_26080, &qword_18228);
  v57 = *(v62 - 8);
  v5 = *(v57 + 64);
  __chkstk_darwin(v62);
  v56 = &v53 - v6;
  v69 = sub_3278(&qword_26088, &qword_18230);
  v7 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v71 = &v53 - v8;
  v58 = sub_3278(&qword_26090, &qword_18238);
  v9 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v53 - v10;
  v70 = sub_3278(&qword_26058, &qword_18210);
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v60 = &v53 - v12;
  v67 = sub_1640C();
  v65 = *(v67 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v67);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_3278(&qword_26060, &qword_18218);
  v63 = *(v66 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v66);
  v18 = &v53 - v17;
  v68 = sub_3278(&qword_26098, &qword_18240);
  v64 = *(v68 - 8);
  v19 = *(v64 + 64);
  __chkstk_darwin(v68);
  v21 = &v53 - v20;
  v22 = *a1;
  v23 = a1[1];
  v24 = *(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v25 = *(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  sub_BEC4(v80);
  v82 = v80[1];
  v83 = v80[0];
  v26 = v80[0];
  sub_9BC4(&v82);
  v81 = v80[2];
  sub_9BC4(&v81);
  if (__PAIR128__(v25, v24) == v26)
  {
    sub_9BC4(&v83);
  }

  else
  {
    v27 = sub_1685C();
    sub_9BC4(&v83);
    if ((v27 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v73 = *(a1 + 1);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  if ((v76 & 1) == 0)
  {
    v78 = sub_2BA0(0xD000000000000011, 0x8000000000019DB0);
    v79 = v45;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
    sub_1635C();
    swift_getKeyPath();
    sub_1636C();

    v76 = v73;
    v77 = v74;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting();
    sub_3278(&qword_260A0, &qword_18270);
    sub_9C18(&qword_260A8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting);
    sub_3D34(&qword_260B0, &qword_260A0, &qword_18270);
    sub_3408();
    sub_1663C();
    sub_163FC();
    v46 = sub_3D34(&qword_26068, &qword_26060, &qword_18218);
    v47 = v66;
    v48 = v67;
    sub_1655C();
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
    v51 = sub_3D34(&qword_26078, &qword_26070, &qword_18220);
    *&v73 = v61;
    *(&v73 + 1) = v48;
    v74 = v51;
    v75 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    v52 = v60;
    sub_164AC();
    sub_5CBC(v52, v71, &qword_26058, &qword_18210);
    swift_storeEnumTagMultiPayload();
    sub_9A44();
    sub_164AC();
    sub_5D54(v52, &qword_26058, &qword_18210);
    return (*(v49 + 8))(v21, v50);
  }

LABEL_5:
  if (*(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) == 1 && *(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) == 1)
  {
    v78 = sub_2BA0(0xD000000000000011, 0x8000000000019DB0);
    v79 = v28;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
    sub_1635C();
    swift_getKeyPath();
    sub_1636C();

    v76 = v73;
    v77 = v74;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting();
    sub_3278(&qword_260B8, &qword_18278);
    sub_9C18(&qword_260A8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting);
    sub_3D34(&qword_260C0, &qword_260B8, &qword_18278);
    sub_3408();
    v29 = v54;
    sub_1663C();
    sub_163FC();
    v30 = sub_3D34(&qword_26078, &qword_26070, &qword_18220);
    v31 = v56;
    v32 = v61;
    v33 = v67;
    sub_1655C();
    (*(v65 + 8))(v15, v33);
    (*(v55 + 8))(v29, v32);
    v34 = v57;
    v35 = v62;
    (*(v57 + 16))(v59, v31, v62);
    swift_storeEnumTagMultiPayload();
    v36 = sub_3D34(&qword_26068, &qword_26060, &qword_18218);
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
    sub_164AC();
    sub_5CBC(v37, v71, &qword_26058, &qword_18210);
    swift_storeEnumTagMultiPayload();
    sub_9A44();
    sub_164AC();
    sub_5D54(v37, &qword_26058, &qword_18210);
    return (*(v34 + 8))(v31, v35);
  }

  else
  {
    v78 = sub_2BA0(0xD000000000000011, 0x8000000000019DB0);
    v79 = v39;
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    sub_9C18(&qword_25FC0, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
    sub_1635C();
    swift_getKeyPath();
    sub_1636C();

    v76 = v73;
    v77 = v74;
    type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting();
    sub_3278(&qword_260A0, &qword_18270);
    sub_9C18(&qword_260A8, type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting);
    sub_3D34(&qword_260B0, &qword_260A0, &qword_18270);
    sub_3408();
    sub_1663C();
    sub_163FC();
    v40 = sub_3D34(&qword_26068, &qword_26060, &qword_18218);
    v41 = v66;
    v42 = v67;
    sub_1655C();
    (*(v65 + 8))(v15, v42);
    (*(v63 + 8))(v18, v41);
    v43 = v64;
    v44 = v68;
    (*(v64 + 16))(v71, v21, v68);
    swift_storeEnumTagMultiPayload();
    sub_9A44();
    *&v73 = v41;
    *(&v73 + 1) = v42;
    v74 = v40;
    v75 = &protocol witness table for InlinePickerStyle;
    swift_getOpaqueTypeConformance2();
    sub_164AC();
    return (*(v43 + 8))(v21, v44);
  }
}

uint64_t sub_8900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_8994@<X0>(char *a1@<X8>)
{
  v2 = sub_3278(&qword_260C8, &qword_18280);
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
  v28 = sub_2BA0(0xD000000000000026, 0x8000000000019DD0);
  v29 = v16;
  sub_3408();
  *v15 = sub_1652C();
  *(v15 + 1) = v17;
  v15[16] = v18 & 1;
  *(v15 + 3) = v19;
  *(v15 + 4) = 0;
  v15[40] = 1;
  v28 = sub_2BA0(0xD000000000000026, 0x8000000000019E00);
  v29 = v20;
  *v13 = sub_1652C();
  *(v13 + 1) = v21;
  v13[16] = v22 & 1;
  *(v13 + 3) = v23;
  *(v13 + 4) = 2;
  v13[40] = 1;
  v24 = v3[2];
  v24(v10, v15, v2);
  v24(v7, v13, v2);
  v24(a1, v10, v2);
  v25 = sub_3278(&qword_260D0, &qword_18288);
  v24(&a1[*(v25 + 48)], v7, v2);
  v26 = v3[1];
  v26(v13, v2);
  v26(v15, v2);
  v26(v7, v2);
  return (v26)(v10, v2);
}

uint64_t sub_8C34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_15CA4(2, 26, 0, 0))
  {
    sub_164CC();

    return sub_1637C();
  }

  else
  {
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    sub_1637C();
    sub_1678C();
    swift_getWitnessTable();
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    return sub_1637C();
  }
}

uint64_t sub_8D98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_15CA4(2, 26, 0, 0))
  {
    sub_164CC();
    sub_1637C();
  }

  else
  {
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    sub_1637C();
    sub_1678C();
    swift_getWitnessTable();
    sub_1638C();
    swift_getWitnessTable();
    sub_164BC();
    sub_1637C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8F98@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = sub_3278(&qword_260C8, &qword_18280);
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
  v44 = sub_2BA0(0xD000000000000026, 0x8000000000019DD0);
  v45 = v20;
  sub_3408();
  *v19 = sub_1652C();
  *(v19 + 1) = v21;
  v19[16] = v22 & 1;
  *(v19 + 3) = v23;
  *(v19 + 4) = 0;
  v19[40] = 1;
  v44 = sub_2BA0(0xD00000000000002DLL, 0x8000000000019E30);
  v45 = v24;
  *v17 = sub_1652C();
  *(v17 + 1) = v25;
  v17[16] = v26 & 1;
  *(v17 + 3) = v27;
  *(v17 + 4) = 1;
  v17[40] = 1;
  v44 = sub_2BA0(0xD000000000000026, 0x8000000000019E00);
  v45 = v28;
  *v14 = sub_1652C();
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
  v37 = sub_3278(&qword_260D8, &qword_18290);
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

uint64_t sub_934C@<X0>(char *a1@<X8>)
{
  v2 = sub_3278(&qword_260C8, &qword_18280);
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
  v28 = sub_2BA0(0xD000000000000026, 0x8000000000019DD0);
  v29 = v16;
  sub_3408();
  *v15 = sub_1652C();
  *(v15 + 1) = v17;
  v15[16] = v18 & 1;
  *(v15 + 3) = v19;
  *(v15 + 4) = 0;
  v15[40] = 1;
  v28 = sub_2BA0(0xD00000000000002DLL, 0x8000000000019E30);
  v29 = v20;
  *v13 = sub_1652C();
  *(v13 + 1) = v21;
  v13[16] = v22 & 1;
  *(v13 + 3) = v23;
  *(v13 + 4) = 1;
  v13[40] = 1;
  v24 = v3[2];
  v24(v10, v15, v2);
  v24(v7, v13, v2);
  v24(a1, v10, v2);
  v25 = sub_3278(&qword_260D0, &qword_18288);
  v24(&a1[*(v25 + 48)], v7, v2);
  v26 = v3[1];
  v26(v13, v2);
  v26(v15, v2);
  v26(v7, v2);
  return (v26)(v10, v2);
}

uint64_t sub_95EC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_6AA0();
}

Swift::Int sub_9628()
{
  v1 = *v0;
  sub_168AC();
  sub_168BC(v1);
  return sub_168CC();
}

Swift::Int sub_969C()
{
  v1 = *v0;
  sub_168AC();
  sub_168BC(v1);
  return sub_168CC();
}

void *sub_96F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_972C(uint64_t a1, uint64_t a2)
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

uint64_t sub_9740(uint64_t a1, int a2)
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

uint64_t sub_9788(uint64_t result, int a2, int a3)
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

uint64_t sub_97E8()
{
  sub_32C0(&qword_25FE0, &qword_17FD8);
  sub_3D34(&qword_25FF8, &qword_25FE0, &qword_17FD8);
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for CSLPRFLiveActivitiesAutoLaunchAppSetting()
{
  if (!qword_265D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_265D0);
    }
  }
}

unint64_t sub_9928()
{
  result = qword_26048;
  if (!qword_26048)
  {
    sub_32C0(&qword_26040, &qword_18208);
    sub_9A44();
    sub_32C0(&qword_26060, &qword_18218);
    sub_1640C();
    sub_3D34(&qword_26068, &qword_26060, &qword_18218);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26048);
  }

  return result;
}

unint64_t sub_9A44()
{
  result = qword_26050;
  if (!qword_26050)
  {
    sub_32C0(&qword_26058, &qword_18210);
    sub_32C0(&qword_26060, &qword_18218);
    sub_1640C();
    sub_3D34(&qword_26068, &qword_26060, &qword_18218);
    swift_getOpaqueTypeConformance2();
    sub_32C0(&qword_26070, &qword_18220);
    sub_3D34(&qword_26078, &qword_26070, &qword_18220);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26050);
  }

  return result;
}

uint64_t sub_9C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9C60(uint64_t a1, uint64_t a2, char a3)
{
  sub_3D7C(a1, a2, a3 & 1);
}

uint64_t sub_9C9C(uint64_t a1, uint64_t a2, char a3)
{
  sub_3D8C(a1, a2, a3 & 1);
}

uint64_t sub_9CD8()
{
  sub_2BA0(0xD00000000000002FLL, 0x8000000000019EA0);
  sub_3408();
  sub_1652C();
  sub_3278(&qword_260F0, qword_182F0);
  sub_9E14();
  return sub_166CC();
}

uint64_t sub_9DA0()
{
  sub_3A70();
  sub_9FB0();
  return sub_1633C();
}

unint64_t sub_9E14()
{
  result = qword_260F8;
  if (!qword_260F8)
  {
    sub_32C0(&qword_260F0, qword_182F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_260F8);
  }

  return result;
}

uint64_t sub_9E78@<X0>(uint64_t a1@<X8>)
{
  sub_2BA0(0xD000000000000027, 0x8000000000019ED0);
  sub_3408();
  result = sub_1652C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_9F18()
{
  result = qword_26100;
  if (!qword_26100)
  {
    sub_32C0(&qword_26108, "t7");
    sub_9E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26100);
  }

  return result;
}

unint64_t sub_9FB0()
{
  result = qword_26110;
  if (!qword_26110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26110);
  }

  return result;
}

uint64_t sub_A038()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_1635C();
}

uint64_t sub_A0C4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v65 = sub_3278(&qword_26118, &qword_183B0);
  v5 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v61 = &v60 - v6;
  v7 = sub_3278(&qword_26120, &qword_183B8);
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  v9 = __chkstk_darwin(v7);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v60 - v11;
  v12 = sub_3278(&qword_26128, &qword_183C0);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  v14 = __chkstk_darwin(v12);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = sub_3278(&qword_26130, &qword_183C8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v60 - v21;
  v23 = sub_3278(&qword_26138, &qword_183D0);
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
    sub_AA88();
    sub_166BC();

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
  v62 = sub_3278(&qword_26140, &qword_183D8);
  v64 = sub_AA04();
  v32 = sub_166BC();
  v63 = &v60;
  __chkstk_darwin(v32);
  *(&v60 - 2) = a1;
  *(&v60 - 1) = a2;
  v76 = sub_2BA0(0xD00000000000002CLL, 0x8000000000019F00);
  v77 = v33;
  sub_3408();
  v34 = sub_1652C();
  v36 = v35;
  v38 = v37;
  v60 = v17;
  v40 = v39;
  v41 = v61;
  v42 = &v61[*(v65 + 36)];
  v43 = *(sub_3278(&qword_26158, &qword_183E0) + 28);
  v44 = sub_1651C();
  (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
  *v42 = swift_getKeyPath();
  *v41 = v34;
  *(v41 + 1) = v36;
  v41[16] = v38 & 1;
  *(v41 + 3) = v40;
  sub_AD98();
  v45 = v74;
  sub_1669C();
  v46 = v73;
  sub_5CBC(v75, v73, &qword_26138, &qword_183D0);
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
  sub_5CBC(v54, v72, &qword_26138, &qword_183D0);
  v56 = sub_3278(&qword_26170, qword_18418);
  (v65)(v55 + *(v56 + 48), v48, v49);
  v64((v55 + *(v56 + 64)), v51, v53);
  v57 = *(v50 + 8);
  v57(v74, v53);
  v58 = *(v47 + 8);
  v58(v60, v49);
  sub_AE50(v75);
  v57(v51, v53);
  v58(v48, v49);
  return sub_AE50(v73);
}

uint64_t sub_A7D0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.segname[(swift_isaMask & **a1) + 8])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_A898()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.size + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_3278(&qword_26600, &unk_18540);
  sub_3D34(&qword_26190, &qword_26600, &unk_18540);
  sub_B0D8(&qword_26198, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_AA88();
  return sub_1668C();
}

unint64_t sub_AA04()
{
  result = qword_26148;
  if (!qword_26148)
  {
    sub_32C0(&qword_26140, &qword_183D8);
    sub_AA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26148);
  }

  return result;
}

unint64_t sub_AA88()
{
  result = qword_26150;
  if (!qword_26150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26150);
  }

  return result;
}

uint64_t sub_AADC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  (*(&stru_B8.flags + (swift_isaMask & *v1)))();
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_3278(&qword_26600, &unk_18540);
  sub_3D34(&qword_26190, &qword_26600, &unk_18540);
  sub_B0D8(&qword_26198, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_AA88();
  return sub_1668C();
}

uint64_t sub_AC48()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_1634C();
}

uint64_t sub_ACF0(uint64_t a1)
{
  v2 = sub_3278(&qword_26188, &unk_18518);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_5CBC(a1, &v6 - v4, &qword_26188, &unk_18518);
  return sub_163CC();
}

unint64_t sub_AD98()
{
  result = qword_26160;
  if (!qword_26160)
  {
    sub_32C0(&qword_26118, &qword_183B0);
    sub_3D34(&qword_26168, &qword_26158, &qword_183E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26160);
  }

  return result;
}

uint64_t sub_AE50(uint64_t a1)
{
  v2 = sub_3278(&qword_26138, &qword_183D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_AEB8@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(&stru_108.reloff + (swift_isaMask & **(v1 + 32)));

  v5(v6);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  v7 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_13AD8(sub_B29C, v3, v10, v11, v12, v13);
  v8 = v13[1];
  *a1 = v13[0];
  a1[1] = v8;
  a1[2] = v14[0];
  result = *(v14 + 9);
  *(a1 + 41) = *(v14 + 9);
  return result;
}

uint64_t sub_B088()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B0D8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_B138@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = *(&stru_108.reloff + (swift_isaMask & **(v3 + 24)));

  v8(v9);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_B0D8(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  v10 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_13AD8(a2, v7, v13, v14, v15, v16);
  v11 = v16[1];
  *a3 = v16[0];
  a3[1] = v11;
  a3[2] = v17[0];
  result = *(v17 + 9);
  *(a3 + 41) = *(v17 + 9);
  return result;
}

id sub_B2A0()
{
  v0 = objc_allocWithZone(CSLPRFIconFetcher);

  return [v0 init];
}

id sub_B2F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1671C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_B370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_iconFetcher;
  *&v4[v7] = [objc_allocWithZone(CSLPRFIconFetcher) init];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  *&v4[OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_model] = sub_F338();
  if (a2)
  {
    v8 = sub_1671C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_B4CC(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_B510(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_iconFetcher;
  *&v2[v4] = [objc_allocWithZone(CSLPRFIconFetcher) init];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  *&v2[OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_model] = sub_F338();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_B5E4()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v1 = objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = (*(&stru_20.nsects + (swift_isaMask & *v0)))(v1);
  [v0 addChildViewController:v2];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v4 addSubview:v5];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v0 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  v19 = [v2 view];
  if (v19)
  {
    v20 = v19;
    [v19 setAutoresizingMask:18];

    [v2 didMoveToParentViewController:v0];
    v21 = [v0 navigationItem];
    sub_2BA0(0xD00000000000001ALL, 0x8000000000019F30);
    v22 = sub_1671C();

    [v21 setTitle:v22];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_B86C()
{
  v1 = *(v0 + OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_model);
  sub_1452C();
  v2 = *(v0 + OBJC_IVAR___CSLPRFCompanionLiveActivitiesSettingsViewController_iconFetcher);
  sub_3F1C();
  sub_3F68();
  sub_1627C();
  v3 = objc_allocWithZone(sub_3278(&qword_261B0, &qword_18550));
  v4 = v2;
  return sub_1649C();
}

void sub_B91C(char a1)
{
  v3 = sub_3278(&qword_261B8, &qword_18558);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_1624C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_161AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1670C();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_161BC();
  v28 = *(v16 - 8);
  v17 = *(v28 + 64);
  __chkstk_darwin(v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  v29.receiver = v1;
  v29.super_class = v20;
  objc_msgSendSuper2(&v29, "viewWillAppear:", a1 & 1);
  v21 = sub_1671C();
  v22 = [objc_opt_self() bundleWithIdentifier:v21];

  if (v22)
  {
    v27 = v16;
    sub_166FC();
    v23 = [v22 bundleURL];
    sub_161DC();

    (*(v10 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
    sub_1623C();
    sub_161CC();
    sub_161EC();
    v24 = sub_161FC();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v6, 1, v24) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1626C();
      sub_1625C();

      (*(v28 + 8))(v19, v27);
      (*(v25 + 8))(v6, v24);
    }
  }
}

id sub_BD90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSLPRFCompanionLiveActivitiesSettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_BE48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_BE94()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void sub_BEC4(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000000019FD0;
  a1[2] = 0xD00000000000001CLL;
  a1[3] = 0x8000000000019FF0;
  a1[4] = 0xD000000000000018;
  a1[5] = 0x800000000001A010;
}

unint64_t sub_BF40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_C570(v1);
}

uint64_t sub_BF68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_BFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a2;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_BF68;
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = v5;

  BSDispatchMain();
  _Block_release(v10);
}

void sub_C0FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_3278(&qword_265E0, &qword_18870);
  v10 = sub_1674C();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  v14[4] = a6;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_BF68;
  v14[3] = a7;
  v12 = _Block_copy(v14);
  v13 = a1;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_C1F4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_12CF8;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_BF68;
  v4[3] = &unk_21520;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

void sub_C2E4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_C468;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_BF68;
  v4[3] = &unk_21570;
  v2 = _Block_copy(v4);
  v3 = v0;

  BSDispatchMain();
  _Block_release(v2);
}

uint64_t sub_C3AC()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_1628C();
  sub_1629C();
}

uint64_t sub_C430()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_C4AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[4] = a6;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_BF68;
  v13[3] = a7;
  v11 = _Block_copy(v13);
  v12 = a1;

  BSDispatchMain();

  _Block_release(v11);
}

unint64_t sub_C570(unint64_t result)
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
          sub_167AC();
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
            sub_12718(&qword_262A0, v6, type metadata accessor for LiveActivitiesAutoLaunchModel);
            sub_1628C();
          }

          else
          {
            v48 = v5;
            v11 = (*(&stru_B8.size + (swift_isaMask & *v2)))();
            v12 = v11;
            if (v11 >> 62)
            {
              v13 = sub_1682C();
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
                    v2 = sub_167AC();
                  }

                  else
                  {
                    v2 = *(v12 + 8 * v14 + 32);
                  }

                  v15 = *(v2 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v16 = *(v2 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v3 = [v10 identifier];
                  v17 = sub_1672C();
                  v19 = v18;

                  if (v15 == v17 && v16 == v19)
                  {
                  }

                  else
                  {
                    v21 = sub_1685C();

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
                sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
                sub_1628C();
                sub_1629C();

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
              v25 = sub_1682C();
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
                    v27 = sub_167AC();
                  }

                  else
                  {
                    v27 = *(v24 + 8 * v26 + 32);
                  }

                  v28 = *(v27 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
                  v29 = *(v27 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

                  v30 = [v10 identifier];
                  v31 = sub_1672C();
                  v33 = v32;

                  if (v28 == v31 && v29 == v33)
                  {
                  }

                  else
                  {
                    v35 = sub_1685C();

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
                sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
                sub_1628C();
                sub_1629C();

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
            v37 = sub_1672C();
            v39 = v38;

            if (v37 == 0xD00000000000001ALL && 0x8000000000019FD0 == v39)
            {

              v5 = v48;
              v2 = v49;
              v4 = v44;
              v3 = v45;
            }

            else
            {
              v41 = sub_1685C();

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
            sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
            sub_1628C();
          }

          sub_1629C();
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
      result = sub_1682C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_CD8C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_CDDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_CE90()
{
  v1 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_CED8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_CF90()
{
  v1 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_CFE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_D0A0()
{
  v1 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_D0E4(char a1)
{
  v3 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_D1A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a1;
  v2 = a1;
}

uint64_t sub_D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9)
{
  v15 = *(v9 + 48);
  v16 = *(v9 + 52);
  v17 = swift_allocObject();
  sub_1621C();
  v18 = (v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v18 = a1;
  v18[1] = a2;
  v19 = "ALLMUSICAPPS_APP_TITLE";
  v20 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x8000000000019FF0 == a2 || (sub_1685C() & 1) != 0 || (v19 = "com.apple.NanoNowPlaying", v20 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x8000000000019FD0 == a2 || (sub_1685C() & 1) != 0)
  {

    a3 = sub_2BA0(v20, (v19 | 0x8000000000000000));
    a4 = v21;
  }

  v22 = (v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v22 = a3;
  v22[1] = a4;
  *(v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  sub_162AC();
  swift_endAccess();
  *(v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v17;
}

uint64_t sub_D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, char a8, char a9)
{
  sub_1621C();
  v15 = (v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  *v15 = a1;
  v15[1] = a2;
  v16 = "ALLMUSICAPPS_APP_TITLE";
  v17 = 0xD000000000000028;
  if (a1 == 0xD00000000000001CLL && 0x8000000000019FF0 == a2 || (sub_1685C() & 1) != 0 || (v16 = "com.apple.NanoNowPlaying", v17 = 0xD000000000000026, a1 == 0xD00000000000001ALL) && 0x8000000000019FD0 == a2 || (sub_1685C() & 1) != 0)
  {

    a3 = sub_2BA0(v17, (v16 | 0x8000000000000000));
    a4 = v18;
  }

  v19 = (v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  *v19 = a3;
  v19[1] = a4;
  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = a5;
  swift_beginAccess();
  v20 = a5;
  sub_162AC();
  swift_endAccess();

  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = a7 & 1;
  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = a8 & 1;
  *(v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = a9 & 1;
  return v9;
}

uint64_t sub_D608()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_162FC();
}

uint64_t sub_D678()
{
  sub_1622C();
  sub_12718(&qword_26280, 255, &type metadata accessor for UUID);
  return sub_166EC();
}

uint64_t sub_D700@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v4 = sub_1622C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_D778()
{
  v1 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  return v1;
}

uint64_t sub_D7B4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  v2 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  return v1;
}

uint64_t sub_D820()
{
  v1 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);
  v3 = v1 == 0xD00000000000001CLL && 0x8000000000019FF0 == v2;
  if (v3 || (sub_1685C() & 1) != 0)
  {
    v4 = &kSessionTrackerAppBundleIdentifier;
LABEL_7:
    v5 = *v4;
    return sub_1672C();
  }

  v7 = v1 == 0xD00000000000001ALL && 0x8000000000019FD0 == v2;
  if (v7 || (sub_1685C() & 1) != 0)
  {
    v4 = &kNowPlayingAppBundleIdentifer;
    goto LABEL_7;
  }

  return v1;
}

void sub_D924(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_E24C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_DABC;
  v7[3] = &unk_215C0;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_DA1C(void *a1, char a2)
{
  [a1 setAllowLiveActivitiesForApp:a2 & 1];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_1628C();
  sub_1629C();
}

uint64_t sub_DABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void (*sub_DB1C(uint64_t *a1))(void ****a1, char a2)
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
  v4 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = [*(v1 + v4) allowLiveActivitiesForApp];
  return sub_DBA8;
}

void sub_DBA8(void ****a1, char a2)
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
    v2[4] = sub_12D4C;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21610;
    v7 = _Block_copy(v2);
    v8 = v2[5];

    v9 = v5;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v3;
    v2[4] = sub_12D4C;
    v2[5] = v10;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21660;
    v7 = _Block_copy(v2);
    v11 = v2[5];
    v12 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

void sub_DD54(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v7[4] = sub_E258;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_DABC;
  v7[3] = &unk_216B0;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 updateSettingsWithBlock:v5];
  _Block_release(v5);
}

uint64_t sub_DE48(void *a1, uint64_t a2)
{
  [a1 setAutoLaunchBehaviorForApp:a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_12718(&qword_25FC0, 255, type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp);
  sub_1628C();
  sub_1629C();
}

void (*sub_DEE4(void *a1))(void ****a1, char a2)
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
  v4 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings;
  v3[7] = v1;
  v3[8] = v4;
  v3[6] = [*(v1 + v4) autoLaunchBehaviorForApp];
  return sub_DF70;
}

void sub_DF70(void ****a1, char a2)
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
    v2[4] = sub_12D50;
    v2[5] = v6;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21700;
    v7 = _Block_copy(v2);
    v8 = v2[5];

    v9 = v5;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v4;
    v2[4] = sub_12D50;
    v2[5] = v10;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_DABC;
    v2[3] = &unk_21750;
    v7 = _Block_copy(v2);
    v11 = v2[5];
    v12 = v5;
  }

  [v5 updateSettingsWithBlock:v7];
  _Block_release(v7);

  free(v2);
}

uint64_t sub_E100()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_162EC();

  return v1;
}

uint64_t sub_E174@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_E214()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void (*sub_E260(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_162DC();
  return sub_E304;
}

void sub_E304(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_E36C()
{
  swift_beginAccess();
  sub_3278(&qword_26288, &qword_18620);
  sub_162BC();
  return swift_endAccess();
}

uint64_t sub_E3E0(uint64_t a1)
{
  v2 = sub_3278(&qword_26290, qword_18628);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_3278(&qword_26288, &qword_18620);
  sub_162CC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_E518(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_3278(&qword_26290, qword_18628);
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

  v9 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_3278(&qword_26288, &qword_18620);
  sub_162BC();
  swift_endAccess();
  return sub_E688;
}

void sub_E688(uint64_t a1, char a2)
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
    sub_162CC();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_162CC();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_E7F0()
{
  v1 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_1622C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  v5 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v6 = sub_3278(&qword_26288, &qword_18620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_E8D4()
{
  v1 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v2 = sub_1622C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  v5 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp__globalAllowLiveActivitiesSetting;
  v6 = sub_3278(&qword_26288, &qword_18620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

Swift::Int sub_E9F4()
{
  sub_168AC();
  (*(*v0 + 160))(v2);
  return sub_168CC();
}

uint64_t sub_EA54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_id;
  v5 = sub_1622C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_EB60()
{
  sub_168AC();
  (*(**v0 + 160))(v2);
  return sub_168CC();
}

uint64_t sub_EBC0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  result = sub_1628C();
  *a1 = result;
  return result;
}

uint64_t sub_EC00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1620C();
}

uint64_t sub_EC28(char a1)
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
    aBlock[4] = sub_EE20;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_DABC;
    aBlock[3] = &unk_217A0;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_1681C();
    __break(1u);
  }

  return result;
}

uint64_t sub_EDE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*sub_EE2C(uint64_t a1))(uint64_t *a1)
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
  return sub_EF00;
}

uint64_t sub_EF34(SEL *a1)
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

uint64_t sub_EFE0(char a1)
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
    aBlock[4] = sub_F1A0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_DABC;
    aBlock[3] = &unk_217F0;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 updateSettingsWithBlock:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_1681C();
    __break(1u);
  }

  return result;
}

uint64_t sub_F1AC(void *a1, SEL *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  [a1 *a2];
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v5, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_1628C();
  sub_1629C();
}

uint64_t (*sub_F23C(uint64_t a1))(uint64_t *a1)
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
  return sub_F310;
}

id sub_F338()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_F36C()
{
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = 0;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_filteredAppLibrary] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesWatchLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesCompanionLocalApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_liveActivitiesAllAudioAppsFakeApp] = 0;
  v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_nowPlayingIsInstalled] = 0;
  v1 = [objc_opt_self() sharedSettingsModel];
  *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_appSpecificSettings] = v1;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  v2 = v1;
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = objc_allocWithZone(CSLPRFInstalledLiveActivityApplicationsDataSource);
  v5 = [v4 init];
  v6 = OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource;
  v7 = *&v3[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  *&v3[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource] = v5;

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

id sub_F4F4()
{
  v1 = *&v0[OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LiveActivitiesAutoLaunchModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_F63C(uint64_t (*a1)(uint64_t))
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

  v4 = *(v1 + OBJC_IVAR____TtC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel_remoteInstalledAppDataSource);
  v220 = 0;
  v216 = v1;
  if (v4)
  {
    v214 = v4;
    v5 = [v214 apps];
    sub_12ADC();
    v6 = sub_1674C();

    v7 = v6;
    if (v6 >> 62)
    {
      v27 = sub_1682C();
      v7 = v6;
      v8 = v27;
      if (v27)
      {
LABEL_5:
        if (v8 >= 1)
        {
          v9 = 0;
          v215 = (v7 & 0xC000000000000001);
          v2 = 0x800000000001A010;
          v212 = &_swiftEmptyArrayStorage;
          v10 = v7;
          while (1)
          {
            if (v215)
            {
              v11 = sub_167AC();
            }

            else
            {
              v11 = *(v7 + 8 * v9 + 32);
            }

            v12 = v11;
            v13 = [v12 bundleIdentifier];
            v14 = sub_1672C();
            v16 = v15;

            if (v14 == 0xD000000000000018 && 0x800000000001A010 == v16)
            {
            }

            else
            {
              v18 = sub_1685C();

              if ((v18 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            (*(&stru_108.flags + (swift_isaMask & *v216)))(1);
LABEL_18:
            v19 = [v12 bundleIdentifier];

            v20 = sub_1672C();
            v22 = v21;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v212 = sub_11A34(0, *(v212 + 2) + 1, 1, v212);
            }

            v24 = *(v212 + 2);
            v23 = *(v212 + 3);
            if (v24 >= v23 >> 1)
            {
              v212 = sub_11A34((v23 > 1), v24 + 1, 1, v212);
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
  v213 = sub_3278(&qword_265E8, &qword_18878);
  v30 = sub_1674C();

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
        v33 = sub_167AC();
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
          v31 = sub_1682C();
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
        sub_167CC();
        v2 = v218[2];
        sub_167FC();
        sub_1680C();
        sub_167DC();
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
    v35 = sub_1682C();
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
  v214 = 0x800000000001A470;
  v215 = 0xD000000000000013;
  while ((v34 & 0xC000000000000001) != 0)
  {
    v3 = sub_167AC();
    v37 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_62;
    }

LABEL_53:
    v38 = [v3 SDKVersion];
    v39 = sub_1672C();
    v41 = v40;

    v221 = 0.0;
    LOBYTE(v38) = sub_129C8(v39, v41);

    if (v38)
    {
      *&v42 = v221;
      if (v221 < 19.0)
      {
        v43 = [v3 bundleIdentifier];
        v44 = sub_1672C();
        v46 = v45;

        if (v44 == v215 && v214 == v46)
        {
          swift_unknownObjectRelease();

          goto LABEL_49;
        }

        v47 = sub_1685C();

        if (v47)
        {
          swift_unknownObjectRelease();
          goto LABEL_49;
        }
      }
    }

    sub_167CC();
    v36 = v218[2];
    sub_167FC();
    sub_1680C();
    sub_167DC();
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
  v50 = sub_1674C();

  if (v50 >> 62)
  {
    v51 = sub_1682C();
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
          v54 = sub_167AC();
        }

        else
        {
          v54 = *(v50 + 8 * v52 + 32);
          swift_unknownObjectRetain();
        }

        if ([v54 supportsSmartStack])
        {
          v55 = [v54 bundleIdentifier];
          v56 = sub_1672C();
          v58 = v57;

          v218 = v56;
          v219 = v58;
          __chkstk_darwin(v59);
          v189[2] = &v218;
          LOBYTE(v55) = sub_117A4(sub_12AC0, v189, v212);

          if (v55)
          {
            goto LABEL_73;
          }

          v60 = [v54 bundleIdentifier];
          if (!v60)
          {
            sub_1672C();
            v60 = sub_1671C();
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
            v63 = sub_1672C();
            v65 = v64;

            v66 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v204 = sub_11A34(0, *(v204 + 2) + 1, 1, v204);
            }

            v68 = *(v204 + 2);
            v67 = *(v204 + 3);
            if (v68 >= v67 >> 1)
            {
              v204 = sub_11A34((v67 > 1), v68 + 1, 1, v204);
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
            sub_1673C();
            if (*(&dword_10 + (*v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v75 = *(&dword_10 + (*v74 & 0xFFFFFFFFFFFFFF8));
              sub_1675C();
            }

            sub_1677C();
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
  v214 = 0x8000000000019FD0;
  v77 = sub_1671C();
  v35 = &off_25000;
  v78 = [v49 fakeApplicationWithIdentifier:v77];

  v30 = *&stru_B8.segname[(swift_isaMask & *v3) + 16];
  v2 = (swift_isaMask & *v3) + 216;
  v34 = (v30)(&v218);
  v80 = v79;
  sub_1673C();
  v81 = *(&dword_10 + (*v80 & 0xFFFFFFFFFFFFFF8));
  if (v81 >= *(&dword_18 + (*v80 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_182;
  }

  while (2)
  {
    sub_1677C();
    (v34)(&v218, 0);
    v205 = 0x8000000000019FF0;
    v82 = sub_1671C();
    v83 = [v49 *(v35 + 1368)];

    v84 = (v30)(&v218);
    v86 = v85;
    sub_1673C();
    v87 = v3;
    if (*(&dword_10 + (*v86 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v86 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v177 = *(&dword_10 + (*v86 & 0xFFFFFFFFFFFFFF8));
      sub_1675C();
    }

    sub_1677C();
    v88 = v84(&v218, 0);
    v34 = &swift_isaMask;
    v89 = (*&stru_B8.segname[swift_isaMask & *v3])(v88);
    if (v89 >> 62)
    {
      v178 = v89;
      v35 = sub_1682C();
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
      sub_167EC();
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
        sub_1675C();
        continue;
      }

      v210 = v81 + 1;
      v211 = v81;
      if (v202)
      {
        v3 = sub_167AC();
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
      v96 = sub_1672C();
      v98 = v97;

      v218 = v96;
      v219 = v98;
      v223 = &v218;
      v99 = sub_117A4(sub_12D30, &v221, v94);

      v100 = v76[241];
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
        sub_1672C();
        v102 = sub_1671C();
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
      v106 = sub_1672C();
      v108 = v107;

      if (v106 == sub_1672C() && v108 == v109)
      {
LABEL_116:

        goto LABEL_118;
      }

      v110 = sub_1685C();

      if (v110)
      {
        goto LABEL_118;
      }

      v148 = [v3 bundleIdentifier];
      v149 = sub_1672C();
      v151 = v150;

      if (v149 == sub_1672C() && v151 == v152)
      {
        goto LABEL_116;
      }

      v153 = sub_1685C();

      if (v153)
      {
LABEL_118:
        v104 = 0;
      }

      v215 = v93;
      v209 = v30;
      v111 = [v3 unionedBackgroundModes];
      v112 = sub_1671C();
      v113 = [v111 containsObject:v112];

      v114 = [v3 bundleIdentifier];
      v115 = sub_1672C();
      v117 = v116;

      if (v115 == 0xD00000000000001ALL && v214 == v117)
      {
LABEL_121:

        goto LABEL_123;
      }

      v118 = sub_1685C();

      if (v118)
      {
        goto LABEL_123;
      }

      v154 = [v3 bundleIdentifier];
      v155 = sub_1672C();
      v157 = v156;

      if (v155 == 0xD00000000000001CLL && v205 == v157)
      {
        goto LABEL_121;
      }

      v158 = sub_1685C();

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
      v121 = sub_1672C();
      v123 = v122;

      v124 = [v3 localizedName];
      v2 = sub_1672C();
      v126 = v125;

      v206 = (*&stru_158.segname[(swift_isaMask & *v213) + 8])();
      v127 = v220;
      v128 = v76[241];
      objc_opt_self();
      v129 = swift_dynamicCastObjCClassUnconditional();
      v130 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
      v131 = *(v130 + 48);
      v132 = *(v130 + 52);
      v133 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_1621C();
      v134 = (v133 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
      *v134 = v121;
      v134[1] = v123;
      v35 = 0xD000000000000028;
      if (v121 == 0xD00000000000001CLL && v205 == v123 || (sub_1685C() & 1) != 0)
      {
        v135 = &v225;
        goto LABEL_128;
      }

      v35 = 0xD000000000000026;
      if (v121 == 0xD00000000000001ALL && v214 == v123 || (sub_1685C() & 1) != 0)
      {
        v135 = &v222;
LABEL_128:
        v136 = *(v135 - 32);
        v87 = v216;

        v2 = sub_2BA0(v35, (v136 | 0x8000000000000000));
        v126 = v137;
      }

      else
      {
        v87 = v216;
      }

      v138 = v208;
      v139 = v127 | v208 ^ 1;
      v140 = (v133 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      *v140 = v2;
      v140[1] = v126;
      *(v133 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_perAppSettings) = v129;
      swift_beginAccess();
      v224 = v206 & 1;
      sub_162AC();
      swift_endAccess();
      *(v133 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_installedOnWatch) = v139 & 1;
      *(v133 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) = v138 & 1;
      *(v133 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_supportsAppOption) = v207;
      v141 = [v3 bundleIdentifier];
      v142 = sub_1672C();
      v144 = v143;

      v34 = &swift_isaMask;
      if (v142 == 0xD00000000000001ALL && v214 == v144)
      {

        goto LABEL_133;
      }

      v145 = sub_1685C();

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

      sub_167CC();
      v49 = v217[2];
      sub_167FC();
      sub_1680C();
      sub_167DC();
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

  v218 = sub_127A0(v159);
  sub_11850(&v218);
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
    v81 = sub_1682C();
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
      sub_167AC();
    }

    else
    {
      if (v164 >= *(v2 + 16))
      {
        goto LABEL_179;
      }

      v165 = *(v49 + 8 * v164 + 32);
    }

    v35 = sub_1620C();

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
  sub_11148(v164);

  v167(&v218, 0);
  v34 = &swift_isaMask;

LABEL_166:
  v215 = *(&stru_B8.size + (*v34 & *v87));
  v168 = v215(v162);
  v169 = v168;
  if (v168 >> 62)
  {
    v170 = sub_1682C();
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
          v172 = sub_167AC();
        }

        else
        {
          v172 = *(v169 + 8 * i + 32);
        }

        if (*(v172 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp) == 1)
        {
          v173 = *&stru_108.sectname[swift_isaMask & *v216];

          v174 = v173(&v218);
          v176 = v175;
          sub_1673C();
          if (*(&dword_10 + (*v176 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v176 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v211 = *(&dword_10 + (*v176 & 0xFFFFFFFFFFFFFF8));
            sub_1675C();
          }

          sub_1677C();
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
        v185 = sub_167AC();
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
          v182 = sub_1682C();
          if (!v182)
          {
            break;
          }

          goto LABEL_187;
        }
      }

      if (*(v185 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp))
      {
      }

      else
      {
        sub_167CC();
        v184 = v218[2];
        sub_167FC();
        sub_1680C();
        sub_167DC();
      }

      ++v183;
    }

    while (v186 != v182);
  }

  (v214)(v218);
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v187, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_1628C();
  sub_1629C();

  swift_unknownObjectRelease();
}

uint64_t sub_11148(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_118CC(v3);
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

uint64_t sub_111D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  result = sub_1628C();
  *a1 = result;
  return result;
}

uint64_t sub_11214()
{
  v1 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])();
  v2 = [v1 globalSettings];

  sub_F63C(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1136C()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_12718(&qword_262A0, v0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  sub_1628C();
  sub_1629C();
}

uint64_t type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp()
{
  result = qword_26FA0;
  if (!qword_26FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_114D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_114E4(uint64_t a1, int a2)
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

uint64_t sub_1152C(uint64_t result, int a2, int a3)
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

void sub_11590()
{
  v0 = sub_1622C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_11754(319, &unk_263C0, &type metadata for Bool, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_11754(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_117A4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_11850(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_129B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_11BC8(v6);
  return sub_167DC();
}

uint64_t sub_118CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1682C();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

char *sub_11930(char *result, int64_t a2, char a3, char *a4)
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
    sub_3278(&qword_26618, &unk_18898);
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

char *sub_11A34(char *result, int64_t a2, char a3, char *a4)
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
    sub_3278(&qword_265F8, &unk_18880);
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

void *sub_11B40(uint64_t a1, uint64_t a2)
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

  sub_3278(&qword_26610, &qword_18890);
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

Swift::Int sub_11BC8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1684C(v2);
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
        v6 = sub_1676C();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_11DA4(v8, v9, a1, v4);
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
    return sub_11CCC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_11CCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v12 = (v9 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*v11 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      v15 = result == *v14 && v13 == v14[1];
      if (v15 || (result = sub_1685C(), (result & 1) == 0))
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

uint64_t sub_11DA4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
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
      result = sub_1267C(v9);
      v9 = result;
    }

    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*v6)
      {
        v89 = *&v9[16 * v88];
        v90 = *&v9[16 * v88 + 24];
        sub_12390((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v88 + 16]), (*v6 + 8 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1267C(v9);
        }

        if (v88 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v91 = &v9[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_125F0(v88 - 1);
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
      v12 = (*(*v6 + 8 * v8) + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      result = *v12;
      v13 = v12[1];
      v14 = (*(*v6 + 8 * v10) + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_1685C();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
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
            result = sub_1685C();
            if ((v16 ^ result))
            {
              goto LABEL_22;
            }

            v17 = OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName;
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
      result = sub_11930(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_11930((v42 > 1), v43 + 1, 1, v9);
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
        sub_12390((*v6 + 8 * v85), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v86), v46);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1267C(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v9[16 * v5];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_125F0(v47);
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
    v35 = (v33 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v36 = *v35;
    v37 = v35[1];
    v38 = (*v5 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
    v39 = v36 == *v38 && v37 == v38[1];
    if (v39 || (result = sub_1685C(), (result & 1) == 0))
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

uint64_t sub_12390(char *__dst, char *__src, char *a3, char *a4)
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
        v24 = *(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);
        v25 = (*v21 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v26 = *(v23 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName) == *v25 && v24 == v25[1];
        if (!v26 && (sub_1685C() & 1) != 0)
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
        v15 = (*v6 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (sub_1685C() & 1) == 0)
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

uint64_t sub_125F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1267C(v3);
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

uint64_t (*sub_12690(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_167AC();
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
    return sub_12710;
  }

  __break(1u);
  return result;
}

uint64_t sub_12718(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_12760()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_127A0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1682C();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_11B40(v3, 0);
  sub_12834(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_12834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1682C();
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
      result = sub_1682C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_12B2C();
          for (i = 0; i != v6; ++i)
          {
            sub_3278(&qword_26600, &unk_18540);
            v9 = sub_12690(v13, i, a3);
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

BOOL sub_129C8(uint64_t a1, uint64_t a2)
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

  sub_1679C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_12ADC()
{
  result = qword_265F0;
  if (!qword_265F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_265F0);
  }

  return result;
}

unint64_t sub_12B2C()
{
  result = qword_26608;
  if (!qword_26608)
  {
    sub_32C0(&qword_26600, &unk_18540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26608);
  }

  return result;
}

uint64_t sub_12B90(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1685C() & 1;
  }
}

_BYTE *sub_12BE8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

unint64_t sub_12D74()
{
  result = qword_25FC0;
  if (!qword_25FC0)
  {
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25FC0);
  }

  return result;
}

uint64_t sub_12DE4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  v6 = sub_12D74();

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_12E58()
{
  v3 = *(v0 + 24);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return v2;
}

uint64_t sub_12EA8()
{
  v2 = *(v0 + 24);
  sub_3278(&qword_25FC8, &qword_17FC0);
  return sub_1661C();
}

void (*sub_12EFC(uint64_t *a1))(uint64_t *a1)
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
  v4 = *(v1 + 24);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_5CBC(v3 + 48, v3 + 32, &qword_25FD0, &qword_17FC8);
  *(v5 + 8) = sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  return sub_12FBC;
}

void sub_12FBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 56);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  sub_1661C();
  sub_5D54(v1, &qword_25FC8, &qword_17FC0);

  free(v1);
}

uint64_t sub_13028()
{
  v3 = *(v0 + 24);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1662C();
  return v2;
}

uint64_t sub_1307C()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return v2;
}

uint64_t sub_130D4()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_3278(&qword_25FD8, &qword_17FD0);
  return sub_1666C();
}

void (*sub_13130(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 56);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_6884(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1665C();
  return sub_680C;
}

uint64_t sub_131EC()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1667C();
  return v2;
}

uint64_t sub_13248()
{
  v1 = 0xD000000000000026;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_12D74();
  v5 = sub_1631C();
  v6 = (*(*v5 + 200))(v5);

  if (v6 == 1)
  {
    v7 = "AUTOLAUNCH_SETTING_APP";
    v1 = 0xD00000000000002DLL;
  }

  else
  {
    v8 = sub_1631C();
    v9 = (*(*v8 + 200))(v8);

    v7 = "AUTO_LAUNCH_TITLE";
    if (v9 == 2)
    {
      v7 = "AUTOLAUNCH_SETTING_OFF";
    }
  }

  return sub_2BA0(v1, (v7 | 0x8000000000000000));
}

uint64_t sub_1338C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_12D74();
  sub_1631C();
  v6 = *(v1 + 3);
  sub_3278(&qword_25FC8, &qword_17FC0);
  sub_1660C();
  v6 = *(v1 + 5);
  v7 = *(v1 + 56);
  sub_3278(&qword_25FD8, &qword_17FD0);
  sub_1667C();
  sub_69A4(v8, v9, v10, &v6);
  sub_3278(&qword_26620, &qword_188A8);
  sub_3D34(&qword_26628, &qword_26620, &qword_188A8);
  sub_13BFC();
  return sub_1633C();
}

uint64_t sub_13500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_3278(&qword_26650, &qword_189E8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v50 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = (v43 - v7);
  v8 = sub_165DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v47 = a1;
  v15 = *(a1 + 16);
  v16 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_12D74();
  v45 = v14;
  v46 = v13;
  v44 = v15;
  v43[1] = v16;
  v17 = sub_1631C();
  v19 = *(v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v18 = *(v17 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  sub_BEC4(v71);
  v78 = v71[1];
  *v79 = v71[0];
  v20 = v71[0];
  sub_9BC4(&v78);
  v77 = v71[2];
  sub_9BC4(&v77);
  if (v19 == v20 && v18 == *(&v20 + 1))
  {
    sub_9BC4(v79);

    goto LABEL_8;
  }

  v22 = sub_1685C();
  sub_9BC4(v79);

  if (v22)
  {
LABEL_8:
    sub_165CC();
    (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
    v29 = sub_165EC();

    (*(v9 + 8))(v12, v8);
    sub_166DC();
    sub_1632C();
    v54 = v73;
    v53 = v75;
    v51 = 0;
    *&v67 = v29;
    *(&v67 + 1) = v72;
    LOBYTE(v68) = v73;
    *(&v68 + 1) = v55;
    DWORD1(v68) = *(&v55 + 3);
    *(&v68 + 1) = v74;
    LOBYTE(v69[0]) = v75;
    *(v69 + 1) = *v52;
    DWORD1(v69[0]) = *&v52[3];
    *(v69 + 8) = v76;
    *(&v69[2] + 1) = v62;
    *(&v69[1] + 8) = v61;
    v28 = 0;
    goto LABEL_9;
  }

  v23 = sub_1631C();
  v24 = (*(*v23 + 168))(v23);
  v26 = v25;

  v27 = *(sub_1631C() + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp);

  sub_54D0(v24, v26, v27, &v67);
  v28 = 1;
  LOBYTE(v61) = 1;
LABEL_9:
  v70 = v28;
  sub_3278(&qword_26658, &qword_189F0);
  sub_13D80();
  sub_13E04();
  sub_164AC();
  v30 = sub_1648C();
  v31 = v48;
  *v48 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  v32 = sub_3278(&qword_26670, &qword_189F8);
  v33 = *(v32 + 44);
  __chkstk_darwin(v32);
  v43[-2] = v47;
  sub_1630C();
  v57 = *&v79[7];
  v58 = *&v79[9];
  v59 = *&v79[11];
  v60 = v80;
  v55 = *&v79[3];
  v56 = *&v79[5];
  v34 = v50;
  sub_5CBC(v31, v50, &qword_26650, &qword_189E8);
  v35 = v58;
  v36 = v59;
  v64 = v58;
  v65 = v59;
  v37 = v60;
  v66 = v60;
  v38 = v55;
  v39 = v56;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v40 = v49;
  *(v49 + 32) = v57;
  *(v40 + 48) = v35;
  *(v40 + 64) = v36;
  *(v40 + 80) = v37;
  *v40 = v38;
  *(v40 + 16) = v39;
  v41 = sub_3278(&qword_26678, &qword_18A00);
  sub_5CBC(v34, v40 + *(v41 + 48), &qword_26650, &qword_189E8);
  sub_5CBC(&v61, &v67, &qword_26680, qword_18A08);
  sub_5D54(v31, &qword_26650, &qword_189E8);
  sub_5D54(v34, &qword_26650, &qword_189E8);
  v69[0] = v57;
  v69[1] = v58;
  v69[2] = v59;
  v70 = v60;
  v67 = v55;
  v68 = v56;
  return sub_5D54(&v67, &qword_26680, qword_18A08);
}

uint64_t sub_13AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  result = sub_165FC();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t sub_13B60()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[9] = *(v0 + 41);
  return sub_1338C();
}

uint64_t sub_13BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1641C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_3278(&qword_26648, &qword_189E0);
  return sub_13500(v3, a1 + *(v4 + 44));
}

unint64_t sub_13BFC()
{
  result = qword_26630;
  if (!qword_26630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26630);
  }

  return result;
}

__n128 sub_13C78(uint64_t a1, uint64_t a2)
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

uint64_t sub_13C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_13CDC(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_13D80()
{
  result = qword_26660;
  if (!qword_26660)
  {
    sub_32C0(&qword_26658, &qword_189F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26660);
  }

  return result;
}

unint64_t sub_13E04()
{
  result = qword_26668;
  if (!qword_26668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_26668);
  }

  return result;
}

uint64_t sub_13E58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_12D74();
  v7 = sub_1631C();
  v9 = *(v7 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  v8 = *(v7 + OBJC_IVAR____TtCC34CSLCompanionLiveActivitiesSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  sub_3408();
  result = sub_1652C();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_13F50()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14398(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_1634C();
}

uint64_t sub_13FCC()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14398(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel);

  return sub_1635C();
}

uint64_t sub_1405C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_3278(&qword_26688, &qword_18AB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15[-v8];
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_3278(&qword_26690, &qword_18AB8);
  sub_3D34(&qword_26698, &qword_26690, &qword_18AB8);
  sub_1650C();
  sub_3F1C();
  sub_14398(&qword_25EE8, sub_3F1C);
  v10 = sub_1627C();
  v11 = &v9[*(v6 + 36)];
  *v11 = v10;
  v11[1] = a3;
  v12 = a3;
  v19 = sub_2BA0(0xD000000000000015, 0x800000000001A4D0);
  v20 = v13;
  sub_143E0();
  sub_3408();
  sub_1659C();

  return sub_144C4(v9);
}

void sub_14234(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = (sub_15380)();
  v6 = v5;
  if ((*&stru_158.sectname[swift_isaMask & *v3])())
  {
    v7 = sub_15380(v3);
    v9 = v8;
    nullsub_1();
    v10 = sub_B298(v3);
    v12 = v11;
    nullsub_1();
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
  sub_14700(v7, v9, v10, v12);
  sub_14740(v7, v9, v10, v12);
  *a1 = v4;
  a1[1] = v15;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v12;
  sub_14740(v7, v9, v10, v12);
}

uint64_t sub_14398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_143E0()
{
  result = qword_266A0;
  if (!qword_266A0)
  {
    sub_32C0(&qword_26688, &qword_18AB0);
    sub_3D34(&qword_266A8, &qword_266B0, &qword_18AC0);
    sub_3D34(&qword_266B8, &qword_266C0, qword_18AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_266A0);
  }

  return result;
}

uint64_t sub_144C4(uint64_t a1)
{
  v2 = sub_3278(&qword_26688, &qword_18AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1452C()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14398(&qword_262A0, type metadata accessor for LiveActivitiesAutoLaunchModel);
  v0 = sub_1634C();
  [objc_allocWithZone(CSLPRFIconFetcher) init];
  return v0;
}

uint64_t sub_145F0(uint64_t a1, int a2)
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

uint64_t sub_14638(uint64_t result, int a2, int a3)
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

uint64_t sub_14688()
{
  sub_32C0(&qword_26688, &qword_18AB0);
  sub_143E0();
  sub_3408();
  return swift_getOpaqueTypeConformance2();
}

void sub_14700(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2;

    v5 = a4;
  }
}

void sub_14740(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t sub_14784()
{
  result = qword_262A0;
  if (!qword_262A0)
  {
    type metadata accessor for LiveActivitiesAutoLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_262A0);
  }

  return result;
}

uint64_t sub_147DC()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();

  return sub_1635C();
}

uint64_t sub_14838()
{
  sub_2BA0(0xD000000000000029, 0x800000000001A4F0);
  sub_3408();
  sub_1652C();
  sub_2BA0(0xD00000000000002ALL, 0x800000000001A520);
  sub_1652C();
  sub_3278(&qword_266C8, &qword_18BA0);
  sub_32C0(&qword_266D0, qword_18BA8);
  sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8);
  swift_getOpaqueTypeConformance2();
  return sub_166AC();
}

uint64_t sub_149D0(uint64_t a1, void *a2)
{
  v4 = sub_164EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3278(&qword_266D0, qword_18BA8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  *v12 = sub_1641C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = sub_3278(&qword_266F0, &unk_18C78);
  sub_14BA0(a1, a2, &v12[*(v13 + 44)]);
  sub_164DC();
  sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8);
  sub_165AC();
  (*(v5 + 8))(v8, v4);
  return sub_5D54(v12, &qword_266D0, qword_18BA8);
}

uint64_t sub_14BA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a1;
  v4 = sub_3278(&qword_25E60, &unk_182A0);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = sub_3278(&qword_266F8, &qword_18C88);
  v10 = *(v9 - 8);
  v41 = v9 - 8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v42 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v43 = sub_2BA0(0xD000000000000021, 0x800000000001A550);
  v44 = v16;
  sub_3408();
  v17 = sub_1652C();
  v35 = v18;
  v36 = v17;
  v37 = v19;
  v38 = v20;
  sub_1646C();
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();
  v21 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0);
  v22 = v39;
  sub_1656C();
  v23 = (*(v40 + 8))(v8, v22);
  LOBYTE(v8) = (*&stru_158.sectname[swift_isaMask & *v33])(v23);
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v8 & 1) == 0;
  v26 = &v15[*(v41 + 44)];
  *v26 = KeyPath;
  v26[1] = sub_152F8;
  v26[2] = v25;
  v27 = v42;
  sub_15310(v15, v42);
  v29 = v35;
  v28 = v36;
  *a3 = v36;
  *(a3 + 8) = v29;
  LOBYTE(v8) = v37 & 1;
  *(a3 + 16) = v37 & 1;
  *(a3 + 24) = v38;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v30 = sub_3278(&unk_26700, qword_18CE8);
  sub_15310(v27, a3 + *(v30 + 64));
  sub_3D7C(v28, v29, v8);

  sub_5D54(v15, &qword_266F8, &qword_18C88);
  sub_5D54(v27, &qword_266F8, &qword_18C88);
  sub_3D8C(v28, v29, v8);
}

uint64_t sub_14F78()
{
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();

  return sub_1634C();
}

uint64_t sub_14FE0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2BA0(0xD000000000000029, 0x800000000001A4F0);
  sub_3408();
  sub_1652C();
  sub_2BA0(0xD00000000000002ALL, 0x800000000001A520);
  sub_1652C();
  sub_3278(&qword_266C8, &qword_18BA0);
  sub_32C0(&qword_266D0, qword_18BA8);
  sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8);
  swift_getOpaqueTypeConformance2();
  return sub_166AC();
}

unint64_t sub_15190()
{
  result = qword_266E0;
  if (!qword_266E0)
  {
    sub_32C0(&qword_266E8, "B6");
    sub_32C0(&qword_266D0, qword_18BA8);
    sub_3D34(&qword_266D8, &qword_266D0, qword_18BA8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_266E0);
  }

  return result;
}

uint64_t sub_15290@<X0>(_BYTE *a1@<X8>)
{
  result = sub_163DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_15310(uint64_t a1, uint64_t a2)
{
  v4 = sub_3278(&qword_266F8, &qword_18C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15388@<X0>(uint64_t *a1@<X8>)
{
  sub_3F1C();
  result = sub_1628C();
  *a1 = result;
  return result;
}

uint64_t sub_153C8()
{
  sub_3278(&qword_25E50, qword_18D70);
  sub_32C0(&qword_25D98, &qword_17A90);
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90);
  swift_getOpaqueTypeConformance2();
  return sub_166BC();
}

uint64_t sub_154B0(uint64_t a1)
{
  v2 = sub_164EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3278(&qword_25D98, &qword_17A90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  *v10 = sub_1641C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_3278(&qword_25E58, &unk_17BD0);
  sub_15678(a1, &v10[*(v11 + 44)]);
  sub_164DC();
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90);
  sub_165AC();
  (*(v3 + 8))(v6, v2);
  return sub_3CCC(v10);
}

uint64_t sub_15678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_3278(&qword_25E60, &unk_182A0);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v32 - v6;
  v8 = sub_3278(&qword_25E68, &qword_17BE0);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v38 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  v41 = sub_2BA0(0xD000000000000017, 0x8000000000019E60);
  v42 = v15;
  sub_3408();
  v16 = sub_1652C();
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v36 = v19;
  v20 = sub_1646C();
  v32[1] = v21;
  v32[2] = v20;
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  sub_14784();
  v22 = sub_1635C();
  swift_getKeyPath();
  sub_1636C();

  sub_1664C();
  sub_3D34(&qword_25E70, &qword_25E60, &unk_182A0);
  v32[0] = v14;
  v23 = v39;
  sub_1656C();
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
  v29 = sub_3278(&qword_25E78, &qword_17C10);
  v24((a2 + *(v29 + 64)), v25, v8);
  sub_3D7C(v27, v26, v28);
  v30 = v9[1];

  v30(v32[0], v8);
  v30(v25, v8);
  sub_3D8C(v27, v26, v28);
}

uint64_t sub_159FC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*&stru_158.sectname[swift_isaMask & **a1])();
  *a2 = result & 1;
  return result;
}

uint64_t sub_15AE0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_3278(&qword_25E50, qword_18D70);
  sub_32C0(&qword_25D98, &qword_17A90);
  sub_3D34(&qword_25DA0, &qword_25D98, &qword_17A90);
  swift_getOpaqueTypeConformance2();
  return sub_166BC();
}

BOOL sub_15BE4(int a1, int a2, int a3)
{
  if (qword_272D8 == -1)
  {
    v3 = dword_272C8 < a1;
    if (dword_272C8 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1616C();
    a2 = v6;
    a3 = v5;
    v3 = dword_272C8 < a1;
    if (dword_272C8 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_272CC > a2)
  {
    return 1;
  }

  if (dword_272CC < a2)
  {
    return 0;
  }

  return dword_272D0 >= a3;
}

uint64_t sub_15CA4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_272E0 == -1)
  {
    if (qword_272E8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_16184();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_272E8)
    {
      return _availability_version_check();
    }
  }

  if (qword_272D8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1616C();
    a3 = v10;
    a4 = v9;
    v8 = dword_272C8 < v11;
    if (dword_272C8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_272CC > a3)
      {
        return 1;
      }

      if (dword_272CC >= a3)
      {
        return dword_272D0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_272C8 < a2;
  if (dword_272C8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_15E38(uint64_t result)
{
  v1 = qword_272E8;
  if (qword_272E8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_272E8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_272C8, &dword_272CC, &dword_272D0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}