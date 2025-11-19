__n128 sub_1C00@<Q0>(uint64_t a1@<X8>)
{
  sub_E838(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C68()
{
  v0 = sub_23D4();

  return SettingsPane.init(makeContent:)(sub_1C00, 0, &type metadata for PMIOSAppSettingsView, v0);
}

uint64_t sub_1CC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_11E70(2, 26, 0, 0))
  {
    sub_12628();

    return sub_125A8();
  }

  else
  {
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    sub_125A8();
    sub_12A88();
    swift_getWitnessTable();
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    return sub_125A8();
  }
}

uint64_t sub_1E2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_11E70(2, 26, 0, 0))
  {
    sub_12628();
    sub_125A8();
  }

  else
  {
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    sub_125A8();
    sub_12A88();
    swift_getWitnessTable();
    sub_125B8();
    swift_getWitnessTable();
    sub_12608();
    sub_125A8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_202C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_2048()
{
  v1 = *v0;
  sub_12BE8();
  sub_12BF8(v1);
  return sub_12C18();
}

Swift::Int sub_20BC()
{
  v1 = *v0;
  sub_12BE8();
  sub_12BF8(v1);
  return sub_12C18();
}

uint64_t sub_2108(uint64_t a1, uint64_t a2)
{
  result = sub_12908();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_215C(uint64_t a1, uint64_t a2)
{
  v3 = sub_12918();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_21B4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_12928();
  *a1 = v3;
  return result;
}

_DWORD *sub_21F0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_2200@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_220C()
{
  v2 = *v0;
  sub_25EC(&qword_1CEC8, type metadata accessor for UILayoutPriority);
  sub_25EC(&unk_1CED0, type metadata accessor for UILayoutPriority);
  return sub_12BB8();
}

void sub_22D0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_12C08(LODWORD(v1));
}

uint64_t sub_230C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t sub_2364()
{
  result = qword_1CE78;
  if (!qword_1CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE78);
  }

  return result;
}

unint64_t sub_23D4()
{
  result = qword_1CE80;
  if (!qword_1CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE80);
  }

  return result;
}

void sub_2450(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_24B0()
{
  result = qword_1CE98;
  if (!qword_1CE98)
  {
    sub_2514(&qword_1CEA0, ",\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE98);
  }

  return result;
}

uint64_t sub_2514(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25EC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_26C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier];
  *v5 = 0xD00000000000001ELL;
  v5[1] = 0x8000000000015830;
  v3[OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet] = 0;
  *&v3[OBJC_IVAR___PMSettingsController_subscriptions] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR___PMSettingsController_appPolicy] = 0;
  *&v3[OBJC_IVAR___PMSettingsController__specifiers] = 0;
  if (a2)
  {
    v6 = sub_127F8();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for PMSettingsController();
  v7 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v6, a3);

  sub_12808();
  v8 = objc_allocWithZone(PSSystemPolicyForApp);
  v9 = v7;
  v10 = sub_127F8();

  v11 = [v8 initWithBundleIdentifier:v10];

  v12 = *&v9[OBJC_IVAR___PMSettingsController_appPolicy];
  *&v9[OBJC_IVAR___PMSettingsController_appPolicy] = v11;

  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v9 selector:"accountStoreDidChange" name:WBSSavedAccountStoreDidChangeNotification object:0];

  sub_5F2C();
  return v9;
}

uint64_t sub_2998(char a1)
{
  v3 = (*(*(sub_7114(&qword_1D080, &qword_13850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = sub_123D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMSettingsController();
  v15.receiver = v1;
  v15.super_class = v11;
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  sub_127C8();
  sub_127B8();
  sub_12808();
  sub_123C8();
  sub_12408();
  v12 = sub_12418();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v5, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_127A8();

    (*(v7 + 8))(v10, v6);
    return (*(v13 + 8))(v5, v12);
  }

  return result;
}

char *sub_2C3C()
{
  v1 = OBJC_IVAR___PMSettingsController__specifiers;
  if (*&v0[OBJC_IVAR___PMSettingsController__specifiers])
  {
    v2 = *&v0[OBJC_IVAR___PMSettingsController__specifiers];

    v4 = sub_2D84(v3);

    return v4;
  }

  else
  {
    v6 = sub_34AC();
    sub_2F80(v6);
    v7 = sub_6C88();
    sub_2F80(v7);
    v8 = sub_49BC();
    sub_2F80(v8);
    v9 = sub_36FC();
    sub_2F80(v9);
    v10 = sub_3CF0();
    sub_2F80(v10);
    v11 = sub_4104();
    sub_2F80(v11);
    v12 = sub_30D4();
    sub_2F80(v12);

    sub_2D84(v13);
    isa = sub_12858().super.isa;

    [v0 setSpecifiers:isa];

    v15 = *&v0[v1];
    *&v0[v1] = &_swiftEmptyArrayStorage;

    v16 = sub_2D84(&_swiftEmptyArrayStorage);

    return v16;
  }
}

char *sub_2D84(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_12B98();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_6524(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_12B18();
        sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_6524((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_715C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_6524((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_715C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2F80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_12B98();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_12B98();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_6484(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_6998(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

_OWORD *sub_30D4()
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_127F8();
  v8 = [v6 groupSpecifierWithID:v7];

  if (v8)
  {
    sub_12458();
    sub_12448();
    v9 = *(v2 + 8);
    v9(v5, v1);
    v10 = sub_127F8();

    v11 = [v6 preferenceSpecifierNamed:v10 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

    if (v11)
    {
      sub_12458();
      sub_12448();
      v9(v5, v1);
      v12 = sub_127F8();

      v13 = [v6 preferenceSpecifierNamed:v12 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

      if (v13)
      {
        [v11 setButtonAction:"openPasswordsApp"];
        [v13 setButtonAction:"openAutoFillSettings"];
        isa = sub_12898().super.super.isa;
        [v13 setProperty:isa forKey:PSAllowMultilineTitleKey];

        sub_7114(&qword_1D410, &qword_13820);
        result = swift_allocObject();
        result[1] = xmmword_13790;
        *(result + 4) = v8;
        *(result + 5) = v11;
        *(result + 6) = v13;
        return result;
      }
    }

    else
    {
      v11 = v8;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v16 = sub_124E8();
  sub_7088(v16, qword_1DA78);
  v17 = sub_124D8();
  v18 = sub_12968();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Unable to load the open passwords specifiers.", v19, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_34AC()
{
  v1 = *(v0 + OBJC_IVAR___PMSettingsController_appPolicy);
  if (v1)
  {
    v2 = [v1 specifiers];
    if (v2)
    {
      v3 = v2;
      v4 = sub_12868();

      v5 = sub_35F0(v4);

      if (v5)
      {
        return v5;
      }
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v7 = sub_124E8();
  sub_7088(v7, qword_1DA78);
  v8 = sub_124D8();
  v9 = sub_12968();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Unable to load the application policy settings.", v10, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_35F0(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_12B58();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_721C(i, v6);
    sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_12B38();
    v4 = v7[2];
    sub_12B68();
    sub_12B78();
    sub_12B48();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

_OWORD *sub_36FC()
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_127F8();
  v8 = [v6 groupSpecifierWithID:v7];

  if (v8)
  {
    sub_12458();
    sub_12448();
    (*(v2 + 8))(v5, v1);
    v9 = sub_127F8();

    v10 = [v6 preferenceSpecifierNamed:v9 target:v0 set:"setPasswordBreachDetectionState:for:" get:"passwordBreachDetectionState" detail:0 cell:6 edit:0];

    if (v10)
    {
      v11 = sub_52E8();
      if (v11)
      {
        v14 = v11;
        v43[0] = v12;
        v43[1] = v13;
        isa = sub_12898().super.super.isa;
        [v10 setProperty:isa forKey:PSAllowMultilineTitleKey];

        sub_7114(&qword_1D018, &qword_13800);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_137A0;
        v44 = sub_12808();
        v45 = v17;
        sub_12AF8();
        sub_74C0(0, &qword_1D040, PSFooterHyperlinkView_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v19 = NSStringFromClass(ObjCClassFromMetadata);
        v20 = sub_12808();
        v22 = v21;

        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v20;
        *(inited + 80) = v22;
        v44 = sub_12808();
        v45 = v23;
        sub_12AF8();
        *(inited + 168) = sub_74C0(0, &qword_1D058, NSString_ptr);
        *(inited + 144) = v14;
        v44 = sub_12808();
        v45 = v24;
        v25 = v14;
        sub_12AF8();

        v26 = sub_127F8();

        v27 = [v25 rangeOfString:v26];
        v29 = v28;

        v46.location = v27;
        v46.length = v29;
        v30 = NSStringFromRange(v46);
        v31 = sub_12808();
        v33 = v32;

        *(inited + 240) = &type metadata for String;
        *(inited + 216) = v31;
        *(inited + 224) = v33;
        v44 = sub_12808();
        v45 = v34;
        sub_12AF8();
        v35 = [objc_opt_self() valueWithNonretainedObject:v0];
        *(inited + 312) = sub_74C0(0, &qword_1D048, NSValue_ptr);
        *(inited + 288) = v35;
        v44 = sub_12808();
        v45 = v36;
        sub_12AF8();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = 0xD000000000000019;
        *(inited + 368) = 0x8000000000015700;
        sub_6B4C(inited);
        swift_setDeallocating();
        sub_7114(&qword_1D028, &qword_13810);
        swift_arrayDestroy();
        v37 = sub_127E8().super.isa;

        [v8 setProperties:v37];

        sub_7114(&qword_1D410, &qword_13820);
        v38 = swift_allocObject();
        v38[1] = xmmword_137B0;
        *(v38 + 4) = v8;
        *(v38 + 5) = v10;

        goto LABEL_13;
      }
    }

    else
    {
      v10 = v8;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v39 = sub_124E8();
  sub_7088(v39, qword_1DA78);
  v25 = sub_124D8();
  v40 = sub_12968();
  if (os_log_type_enabled(v25, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v25, v40, "Unable to load the password breach detection settings.", v41, 2u);
  }

  v38 = &_swiftEmptyArrayStorage;
LABEL_13:

  return v38;
}

_OWORD *sub_3CF0()
{
  v1 = sub_12468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_127F8();
  v8 = [v6 groupSpecifierWithID:v7];

  if (v8)
  {
    sub_12458();
    sub_12448();
    v9 = *(v2 + 8);
    v9(v5, v1);
    v10 = sub_127F8();

    v11 = [v6 preferenceSpecifierNamed:v10 target:v0 set:"setAutomaticStrongPasswordsEnabled:for:" get:"isAutomaticStrongPasswordsEnabled" detail:0 cell:6 edit:0];

    if (v11)
    {
      isa = sub_12898().super.super.isa;
      [v11 setProperty:isa forKey:PSAllowMultilineTitleKey];

      sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137C0;
      v24[1] = sub_12808();
      v24[2] = v14;
      sub_12AF8();
      sub_12458();
      v15 = sub_12448();
      v17 = v16;
      v9(v5, v1);
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v15;
      *(inited + 80) = v17;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7460(inited + 32, &qword_1D028, &qword_13810);
      v18 = sub_127E8().super.isa;

      [v8 setProperties:v18];

      sub_7114(&qword_1D410, &qword_13820);
      result = swift_allocObject();
      result[1] = xmmword_137B0;
      *(result + 4) = v8;
      *(result + 5) = v11;
      return result;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v20 = sub_124E8();
  sub_7088(v20, qword_1DA78);
  v21 = sub_124D8();
  v22 = sub_12968();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Unable to load the suggest strong passwords settings", v23, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

_OWORD *sub_4104()
{
  v1 = (*(*(sub_7114(&qword_1D010, &qword_137F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v64 - v2;
  v4 = sub_12468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_127F8();
  v11 = [v9 groupSpecifierWithID:v10];

  if (!v11)
  {
    goto LABEL_7;
  }

  v72 = v3;
  sub_12458();
  sub_12448();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = sub_127F8();

  v71 = v0;
  v14 = [v9 preferenceSpecifierNamed:v13 target:v0 set:"setAllowAutomaticPasskeyUpgrades:for:" get:"allowAutomaticPasskeyUpgrades" detail:0 cell:6 edit:0];

  if (!v14)
  {

LABEL_7:
    if (qword_1CDD8 != -1)
    {
      swift_once();
    }

    v60 = sub_124E8();
    sub_7088(v60, qword_1DA78);
    v61 = sub_124D8();
    v62 = sub_12968();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Unable to load the automatic passkey upgrades settings.", v63, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v65 = v11;
  isa = sub_12898().super.super.isa;
  v64 = v14;
  [v14 setProperty:isa forKey:PSAllowMultilineTitleKey];

  sub_12458();
  v16 = sub_12448();
  v18 = v17;
  v12(v8, v4);
  sub_12458();
  v19 = sub_12448();
  v68 = v20;
  v69 = v19;
  v12(v8, v4);
  v78 = v16;
  v79 = v18;
  v73 = v18;
  v76 = 0xD000000000000011;
  v77 = 0x80000000000154C0;
  v70 = 0x80000000000154C0;
  v21 = sub_12428();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v72;
  v66 = v22 + 56;
  v67 = v23;
  v23(v72, 1, 1, v21);
  sub_70C0();
  sub_12AA8();
  LOBYTE(v18) = v25;
  result = sub_7460(v24, &qword_1D010, &qword_137F8);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v78 = v16;
    v79 = v73;
    v76 = 0xD000000000000011;
    v27 = v69;
    v77 = v70;
    v28 = v68;
    v74 = v69;
    v75 = v68;
    v29 = sub_12A98();
    v30 = v28;
    v31 = v29;
    v78 = v29;
    v79 = v32;
    v70 = v32;
    v76 = v27;
    v77 = v30;
    v67(v24, 1, 1, v21);
    v33 = sub_12AA8();
    v35 = v34;
    v37 = v36;
    result = sub_7460(v24, &qword_1D010, &qword_137F8);
    if ((v37 & 1) == 0)
    {

      v78 = v33;
      v79 = v35;
      v38 = v70;
      v76 = v31;
      v77 = v70;

      sub_7114(&qword_1D030, &qword_13818);
      sub_7A3C(&qword_1D038, &qword_1D030, &qword_13818);
      v73 = sub_12A58();
      v40 = v39;
      sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137A0;
      v78 = sub_12808();
      v79 = v42;
      sub_12AF8();
      sub_74C0(0, &qword_1D040, PSFooterHyperlinkView_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = NSStringFromClass(ObjCClassFromMetadata);
      v45 = sub_12808();
      v47 = v46;

      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v45;
      *(inited + 80) = v47;
      v78 = sub_12808();
      v79 = v48;
      sub_12AF8();
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = v31;
      *(inited + 152) = v38;
      v78 = sub_12808();
      v79 = v49;
      sub_12AF8();
      v80.location = v73;
      v80.length = v40;
      v50 = NSStringFromRange(v80);
      v51 = sub_12808();
      v53 = v52;

      *(inited + 240) = &type metadata for String;
      *(inited + 216) = v51;
      *(inited + 224) = v53;
      v78 = sub_12808();
      v79 = v54;
      sub_12AF8();
      v55 = [objc_opt_self() valueWithNonretainedObject:v71];
      *(inited + 312) = sub_74C0(0, &qword_1D048, NSValue_ptr);
      *(inited + 288) = v55;
      v78 = sub_12808();
      v79 = v56;
      sub_12AF8();
      *(inited + 384) = &type metadata for String;
      *(inited + 360) = 0xD00000000000001CLL;
      *(inited + 368) = 0x80000000000155C0;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7114(&qword_1D028, &qword_13810);
      swift_arrayDestroy();
      v57 = sub_127E8().super.isa;

      v58 = v65;
      [v65 setProperties:v57];

      sub_7114(&qword_1D410, &qword_13820);
      result = swift_allocObject();
      result[1] = xmmword_137B0;
      v59 = v64;
      *(result + 4) = v58;
      *(result + 5) = v59;
      return result;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_49BC()
{
  v1 = (*(*(sub_7114(&qword_1D010, &qword_137F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = v67 - v2;
  v4 = sub_12468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_127F8();
  v11 = [v9 groupSpecifierWithID:v10];

  if (v11)
  {
    v74 = v0;
    v12 = [v9 preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    if (v12)
    {
      v13 = v12;
      v69 = v11;
      v67[1] = sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137C0;
      v81 = sub_12808();
      v82 = v15;
      sub_12AF8();
      v16 = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
      *(inited + 96) = sub_7114(&qword_1D020, &qword_13808);
      *(inited + 72) = v16;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7460(inited + 32, &qword_1D028, &qword_13810);
      isa = sub_127E8().super.isa;

      v68 = v13;
      [v13 setProperties:isa];

      sub_12458();
      v18 = sub_12448();
      v20 = v19;
      v21 = *(v5 + 8);
      v21(v8, v4);
      sub_12458();
      v72 = sub_12448();
      v75 = v22;
      v21(v8, v4);
      v81 = v18;
      v82 = v20;
      v76 = v20;
      v79 = 0xD000000000000018;
      v80 = 0x8000000000015380;
      v23 = sub_12428();
      v24 = *(v23 - 8);
      v25 = *(v24 + 56);
      v70 = v24 + 56;
      v71 = v25;
      v25(v3, 1, 1, v23);
      sub_70C0();
      sub_12AA8();
      v27 = v26;
      result = sub_7460(v3, &qword_1D010, &qword_137F8);
      if (v27)
      {
        __break(1u);
      }

      else
      {
        v81 = v18;
        v82 = v76;
        v79 = 0xD000000000000018;
        v80 = 0x8000000000015380;
        v29 = v72;
        v30 = v75;
        v77 = v72;
        v78 = v75;
        v31 = sub_12A98();
        v33 = v32;
        v73 = v31;
        v81 = v31;
        v82 = v32;
        v79 = v29;
        v80 = v30;
        v71(v3, 1, 1, v23);
        v34 = sub_12AA8();
        v36 = v35;
        v38 = v37;
        result = sub_7460(v3, &qword_1D010, &qword_137F8);
        if ((v38 & 1) == 0)
        {

          v81 = v34;
          v82 = v36;
          v79 = v73;
          v80 = v33;

          sub_7114(&qword_1D030, &qword_13818);
          sub_7A3C(&qword_1D038, &qword_1D030, &qword_13818);
          v39 = sub_12A58();
          v41 = v74;
          if (*(v74 + OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet) == 1)
          {
            v42 = v40;
            v43 = v39;
            v44 = swift_initStackObject();
            *(v44 + 16) = xmmword_137A0;
            v81 = sub_12808();
            v82 = v45;
            sub_12AF8();
            sub_74C0(0, &qword_1D040, PSFooterHyperlinkView_ptr);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v47 = NSStringFromClass(ObjCClassFromMetadata);
            v48 = sub_12808();
            v50 = v49;

            *(v44 + 96) = &type metadata for String;
            *(v44 + 72) = v48;
            *(v44 + 80) = v50;
            v81 = sub_12808();
            v82 = v51;
            sub_12AF8();
            *(v44 + 168) = &type metadata for String;
            *(v44 + 144) = v73;
            *(v44 + 152) = v33;
            v81 = sub_12808();
            v82 = v52;
            sub_12AF8();
            v83.location = v43;
            v83.length = v42;
            v53 = NSStringFromRange(v83);
            v54 = sub_12808();
            v56 = v55;

            *(v44 + 240) = &type metadata for String;
            *(v44 + 216) = v54;
            *(v44 + 224) = v56;
            v81 = sub_12808();
            v82 = v57;
            sub_12AF8();
            v58 = [objc_opt_self() valueWithNonretainedObject:v41];
            *(v44 + 312) = sub_74C0(0, &qword_1D048, NSValue_ptr);
            *(v44 + 288) = v58;
            v81 = sub_12808();
            v82 = v59;
            sub_12AF8();
            *(v44 + 384) = &type metadata for String;
            *(v44 + 360) = 0xD00000000000001ALL;
            *(v44 + 368) = 0x8000000000015440;
            sub_6B4C(v44);
            swift_setDeallocating();
            sub_7114(&qword_1D028, &qword_13810);
            swift_arrayDestroy();
            v60 = sub_127E8().super.isa;

            v61 = v69;
            [v69 setProperties:v60];
          }

          else
          {

            v61 = v69;
          }

          v66 = v68;
          sub_7114(&qword_1D410, &qword_13820);
          result = swift_allocObject();
          result[1] = xmmword_137B0;
          *(result + 4) = v61;
          *(result + 5) = v66;
          return result;
        }
      }

      __break(1u);
      return result;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v62 = sub_124E8();
  sub_7088(v62, qword_1DA78);
  v63 = sub_124D8();
  v64 = sub_12968();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "Unable to load the show save passwords prompt preference settings.", v65, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

id sub_52E8()
{
  sub_6F34();
  v1 = *(v0 + OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier);
  v2 = *(v0 + OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier + 8);
  v3 = sub_127F8();
  v4 = [objc_opt_self() bundleWithIdentifier:v3];

  if (v4)
  {
    result = [v4 privacyFlow];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = [result localizedButtonTitle];

    if (v7)
    {
      sub_12808();

      sub_70C0();
      sub_12A98();

      v8 = sub_127F8();

      return v8;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v9 = sub_124E8();
  sub_7088(v9, qword_1DA78);
  v10 = sub_124D8();
  v11 = sub_12968();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Unable to load construct the password breach detection footer.", v12, 2u);
  }

  return 0;
}

uint64_t sub_5694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_124A8() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_12468();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_128C8();
  v4[7] = sub_128B8();
  v10 = sub_128A8();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_57B4, v10, v9);
}

uint64_t sub_57B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_74C0(0, &qword_1D070, LAContext_ptr);
  sub_12458();
  v4 = sub_12448();
  v6 = v5;
  v0[10] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = async function pointer to static LAContext.pm_authenticate(reason:)[1];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_58D8;

  return static LAContext.pm_authenticate(reason:)(v4, v6);
}

uint64_t sub_58D8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_5AC4;
  }

  else
  {
    v7 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_59F4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_59F4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[2];
  v3 = v0[3];

  sub_12498();
  v5 = objc_allocWithZone(sub_7114(&qword_1D078, &qword_13848));
  v6 = sub_125E8();
  [v4 presentViewController:v6 animated:1 completion:0];

  v7 = v0[1];

  return v7();
}

uint64_t sub_5AC4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_7114(&qword_1D068, &qword_13830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_79D0(a3, v23 - v9, &qword_1D068, &qword_13830);
  v11 = sub_128E8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_7460(v10, &qword_1D068, &qword_13830);
  }

  else
  {
    sub_128D8();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_128A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_12818() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_7460(a3, &qword_1D068, &qword_13830);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_7460(a3, &qword_1D068, &qword_13830);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_5F2C()
{
  v1 = [objc_opt_self() sharedStore];
  v2 = [v1 savedAccountsWithNeverSaveMarker];

  if (v2)
  {
    sub_74C0(0, &qword_1D000, WBSSavedAccount_ptr);
    v3 = sub_12868();

    if (v3 >> 62)
    {
      v4 = sub_12B98();
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }

    v0[OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet] = v4 != 0;
    v5 = *&v0[OBJC_IVAR___PMSettingsController__specifiers];
    *&v0[OBJC_IVAR___PMSettingsController__specifiers] = 0;

    v6 = [v0 specifiers];
  }
}

void sub_6098()
{
  v1 = v0;
  v2 = [objc_allocWithZone(_ASPasskeysLearnMoreContentViewController) init];
  v3 = [v2 navigationItem];
  sub_74C0(0, &qword_1CFF0, UIBarButtonItem_ptr);
  sub_74C0(0, &qword_1CFF8, UIAction_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  v9.value.super.super.isa = sub_129C8();
  v9.is_nil = 0;
  isa = sub_12978(UIBarButtonSystemItemDone, v9, v10).super.super.isa;
  [v3 setRightBarButtonItem:{isa, 0, 0, 0, sub_646C, v4}];

  v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v5];
  [v1 presentViewController:v7 animated:1 completion:0];
}

void sub_629C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, SEL *a6)
{
  v8 = *a5;
  v9 = objc_opt_self();
  v10 = a3;
  [v9 *a6];
}

Class sub_6328(uint64_t a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v4 = *a3;
  [objc_opt_self() *a4];
  v5.super.super.isa = sub_12898().super.super.isa;

  return v5.super.super.isa;
}

id sub_636C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6434()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6484(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_12B98();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_12B28();
  *v1 = result;
  return result;
}

char *sub_6524(char *a1, int64_t a2, char a3)
{
  result = sub_6544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6544(char *result, int64_t a2, char a3, char *a4)
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
    sub_7114(&qword_1D098, &qword_13868);
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

unint64_t sub_6654(uint64_t a1)
{
  v2 = v1;
  v4 = sub_12AD8(*(v2 + 40));

  return sub_6710(a1, v4);
}

unint64_t sub_6698(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_12BE8();
  sub_12828();
  v6 = sub_12C18();

  return sub_67D8(a1, a2, v6);
}

unint64_t sub_6710(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_716C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_12AE8();
      sub_71C8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_67D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_12BC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_6890(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_12B18();
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
    *v3 = v4;
    return sub_6910;
  }

  __break(1u);
  return result;
}

void (*sub_6918(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_12B18();
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
    *v3 = v4;
    return sub_7A84;
  }

  __break(1u);
  return result;
}

uint64_t sub_6998(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_12B98();
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
      result = sub_12B98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_7A3C(&qword_1D0B0, &qword_1D0A8, qword_13878);
          for (i = 0; i != v6; ++i)
          {
            sub_7114(&qword_1D0A8, qword_13878);
            v9 = sub_6890(v13, i, a3);
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
        sub_74C0(0, &qword_1D060, PSSpecifier_ptr);
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

unint64_t sub_6B4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7114(&qword_1D050, &qword_13828);
    v3 = sub_12BA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_79D0(v4, v13, &qword_1D028, &qword_13810);
      result = sub_6654(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_715C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_6C88()
{
  v0 = objc_opt_self();
  v1 = sub_127F8();
  v2 = [v0 groupSpecifierWithID:v1];

  if (v2)
  {
    v3 = [v0 preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:4 edit:0];
    if (v3)
    {
      v4 = v3;
      sub_7114(&qword_1D018, &qword_13800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_137C0;
      sub_12808();
      sub_12AF8();
      v6 = type metadata accessor for PMServiceNamesCellView();
      *(inited + 96) = sub_7114(&qword_1D0A0, &qword_13870);
      *(inited + 72) = v6;
      sub_6B4C(inited);
      swift_setDeallocating();
      sub_7460(inited + 32, &qword_1D028, &qword_13810);
      isa = sub_127E8().super.isa;

      [v4 setProperties:isa];

      sub_7114(&qword_1D410, &qword_13820);
      result = swift_allocObject();
      result[1] = xmmword_137B0;
      *(result + 4) = v2;
      *(result + 5) = v4;
      return result;
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v9 = sub_124E8();
  sub_7088(v9, qword_1DA78);
  v10 = sub_124D8();
  v11 = sub_12968();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Unable to load the show service names settings.", v12, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_6F34()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_12458();
  v6 = sub_12448();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_7088(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_70C0()
{
  result = qword_1D008;
  if (!qword_1D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D008);
  }

  return result;
}

uint64_t sub_7114(uint64_t *a1, uint64_t *a2)
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

_OWORD *sub_715C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_721C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_7278()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_72B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_736C;

  return sub_5694(a1, v4, v5, v6);
}

uint64_t sub_736C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_7460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7114(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_74C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_7508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7114(&qword_1D088, &qword_13858);
    v3 = sub_12BA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_79D0(v4, &v13, &qword_1D090, &qword_13860);
      v5 = v13;
      v6 = v14;
      result = sub_6698(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_715C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_79D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7114(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_7A3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2514(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7A88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v64 = sub_12468();
  v63 = *(v64 - 8);
  v3 = *(v63 + 64);
  v4 = __chkstk_darwin(v64);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v60 - v7;
  v9 = sub_7114(&qword_1D0C0, &qword_13968);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v61 = sub_7114(&qword_1D0C8, &qword_13970);
  v62 = *(v61 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v61);
  v16 = &v60 - v15;
  v68 = sub_7114(&qword_1D0D0, &qword_13978);
  v17 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v60 = &v60 - v18;
  v65 = sub_7114(&qword_1D0D8, &qword_13980);
  v66 = *(v65 - 8);
  v19 = *(v66 + 64);
  __chkstk_darwin(v65);
  v69 = &v60 - v20;
  v70 = v2;
  sub_7114(&qword_1D0E0, &qword_13988);
  sub_7A3C(&qword_1D0E8, &qword_1D0E0, &qword_13988);
  sub_12638();
  v21 = sub_7A3C(&qword_1D0F0, &qword_1D0C0, &qword_13968);
  sub_12668();
  (*(v10 + 8))(v13, v9);
  sub_12458();
  sub_12458();
  v22 = sub_12438();
  v24 = v23;
  v25 = *(v63 + 8);
  v26 = v6;
  v27 = v64;
  v25(v26, v64);
  v25(v8, v27);
  v71 = v22;
  v72 = v24;
  *&v75 = v9;
  *(&v75 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  sub_70C0();
  v28 = v60;
  v29 = v61;
  sub_126A8();

  (*(v62 + 8))(v16, v29);
  v30 = [objc_opt_self() defaultCenter];
  v31 = v68;
  v32 = v28 + *(v68 + 52);
  sub_12988();

  v33 = swift_allocObject();
  v34 = *(v2 + 112);
  *(v33 + 112) = *(v2 + 96);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v2 + 128);
  v35 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v35;
  v36 = *(v2 + 80);
  *(v33 + 80) = *(v2 + 64);
  *(v33 + 96) = v36;
  v37 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v37;
  v38 = (v28 + *(v31 + 56));
  *v38 = sub_ED24;
  v38[1] = v33;
  v75 = *(v2 + 56);
  sub_ED2C(v2, &v71);
  v64 = sub_7114(&qword_1D0F8, &qword_13990);
  sub_12738();
  LODWORD(v62) = v73;
  v39 = swift_allocObject();
  v40 = *(v2 + 112);
  *(v39 + 112) = *(v2 + 96);
  *(v39 + 128) = v40;
  *(v39 + 144) = *(v2 + 128);
  v41 = *(v2 + 48);
  *(v39 + 48) = *(v2 + 32);
  *(v39 + 64) = v41;
  v42 = *(v2 + 80);
  *(v39 + 80) = *(v2 + 64);
  *(v39 + 96) = v42;
  v43 = *(v2 + 16);
  *(v39 + 16) = *v2;
  *(v39 + 32) = v43;
  sub_ED2C(v2, &v71);
  v61 = sub_7114(&qword_1D100, &qword_13998);
  v44 = sub_7A3C(&qword_1D108, &qword_1D0D0, &qword_13978);
  v45 = sub_124A8();
  v46 = sub_12618();
  v63 = v46;
  v47 = sub_ED6C(&qword_1D110, &type metadata accessor for PMNeverSavedPasswordsView);
  v71 = v45;
  v72 = v46;
  v73 = v47;
  v74 = &protocol witness table for ZoomNavigationTransition;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v68;
  sub_126E8();

  sub_7460(v28, &qword_1D0D0, &qword_13978);
  v75 = *(v2 + 104);
  sub_12738();
  v50 = swift_allocObject();
  v51 = *(v2 + 112);
  *(v50 + 112) = *(v2 + 96);
  *(v50 + 128) = v51;
  *(v50 + 144) = *(v2 + 128);
  v52 = *(v2 + 48);
  *(v50 + 48) = *(v2 + 32);
  *(v50 + 64) = v52;
  v53 = *(v2 + 80);
  *(v50 + 80) = *(v2 + 64);
  *(v50 + 96) = v53;
  v54 = *(v2 + 16);
  *(v50 + 16) = *v2;
  *(v50 + 32) = v54;
  sub_ED2C(v2, &v71);
  sub_7114(&qword_1D118, &qword_139A0);
  v71 = v49;
  v72 = v61;
  v73 = v44;
  v74 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v55 = sub_12488();
  v56 = sub_ED6C(&qword_1D120, &type metadata accessor for PMPasskeysLearnMoreView);
  v71 = v55;
  v72 = v63;
  v73 = v56;
  v74 = &protocol witness table for ZoomNavigationTransition;
  swift_getOpaqueTypeConformance2();
  v57 = v65;
  v58 = v69;
  sub_126E8();

  return (*(v66 + 8))(v58, v57);
}

uint64_t sub_83C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v96 = a2;
  v126 = sub_7114(&qword_1D128, &qword_139A8);
  v134 = *(v126 - 8);
  v3 = v134[8];
  v4 = __chkstk_darwin(v126);
  v110 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v118 = &v91 - v6;
  v124 = sub_7114(&qword_1D130, &qword_139B0);
  v133 = *(v124 - 8);
  v7 = v133[8];
  v8 = __chkstk_darwin(v124);
  v120 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v109 = &v91 - v10;
  v11 = sub_12468();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 8);
  __chkstk_darwin(v11);
  v93 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_7114(&qword_1D138, &qword_139B8);
  v132 = *(v122 - 8);
  v14 = v132[8];
  v15 = __chkstk_darwin(v122);
  v125 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v91 - v17;
  v102 = sub_7114(&qword_1D140, &qword_139C0);
  v18 = *(*(v102 - 1) + 64);
  __chkstk_darwin(v102);
  v100 = (&v91 - v19);
  v127 = sub_7114(&qword_1D148, &qword_139C8);
  v129 = *(v127 - 8);
  v20 = *(v129 + 8);
  v21 = __chkstk_darwin(v127);
  v123 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v111 = &v91 - v23;
  v119 = sub_7114(&qword_1D150, &qword_139D0);
  v131 = *(v119 - 8);
  v24 = v131[8];
  v25 = __chkstk_darwin(v119);
  v121 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v101 = &v91 - v27;
  v105 = sub_7114(&qword_1D158, &qword_139D8);
  v28 = *(*(v105 - 1) + 64);
  __chkstk_darwin(v105);
  v97 = (&v91 - v29);
  v116 = sub_7114(&qword_1D160, &qword_139E0);
  v130 = *(v116 - 8);
  v30 = v130[8];
  v31 = __chkstk_darwin(v116);
  v117 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v103 = &v91 - v33;
  v34 = sub_7114(&qword_1D168, &qword_139E8);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v91 - v37;
  v113 = sub_7114(&qword_1D170, &qword_139F0);
  v128 = *(v113 - 8);
  v39 = v128[8];
  v40 = __chkstk_darwin(v113);
  v115 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v104 = &v91 - v42;
  v112 = sub_124C8();
  v108 = *(v112 - 8);
  v43 = v108[8];
  v44 = __chkstk_darwin(v112);
  v114 = &v91 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v107 = &v91 - v46;
  sub_12808();
  sub_124B8();
  v140 = a1;
  sub_7114(&qword_1D178, &qword_139F8);
  sub_EDC4();
  sub_12778();
  v141 = *(a1 + 16);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  v47 = swift_allocObject();
  v48 = *(a1 + 112);
  *(v47 + 112) = *(a1 + 96);
  *(v47 + 128) = v48;
  *(v47 + 144) = *(a1 + 128);
  v49 = *(a1 + 48);
  *(v47 + 48) = *(a1 + 32);
  *(v47 + 64) = v49;
  v50 = *(a1 + 80);
  *(v47 + 80) = *(a1 + 64);
  *(v47 + 96) = v50;
  v51 = *(a1 + 16);
  *(v47 + 16) = *a1;
  *(v47 + 32) = v51;
  sub_ED2C(a1, &v141);
  sub_EEB4();
  sub_126F8();

  (*(v35 + 8))(v38, v34);
  v139 = a1;
  sub_A4FC(a1, v97);
  sub_7114(&qword_1D1A8, &qword_13A08);
  sub_EF4C();
  v92 = sub_F034();
  sub_12788();
  v138 = a1;
  sub_CF14(a1, sub_B554, &unk_190A0, sub_FAD8, v100);
  sub_7114(&qword_1D1F0, &qword_13A28);
  sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28);
  v91 = sub_F1C8();
  v52 = v111;
  sub_12788();
  v141 = *(a1 + 72);
  sub_12718();
  v53 = swift_allocObject();
  v54 = *(a1 + 112);
  *(v53 + 112) = *(a1 + 96);
  *(v53 + 128) = v54;
  *(v53 + 144) = *(a1 + 128);
  v55 = *(a1 + 48);
  *(v53 + 48) = *(a1 + 32);
  *(v53 + 64) = v55;
  v56 = *(a1 + 80);
  *(v53 + 80) = *(a1 + 64);
  *(v53 + 96) = v56;
  v57 = *(a1 + 16);
  *(v53 + 16) = *a1;
  *(v53 + 32) = v57;
  sub_ED2C(a1, &v141);
  sub_F254();
  v58 = v101;
  v59 = v127;
  sub_126F8();

  v60 = *(v129 + 1);
  v98 = v129 + 8;
  v99 = v60;
  v60(v52, v59);
  v137 = a1;
  v61 = v93;
  sub_12458();
  v62 = sub_12448();
  v64 = v63;
  (*(v94 + 1))(v61, v95);
  *&v141 = v62;
  *(&v141 + 1) = v64;
  sub_70C0();
  *&v141 = sub_12658();
  *(&v141 + 1) = v65;
  v142 = v66 & 1;
  v143 = v67;
  sub_7114(&qword_1D210, &qword_13A30);
  sub_F320();
  v68 = v106;
  sub_12788();
  v136 = a1;
  sub_C530(a1, v97);
  v69 = v109;
  sub_12788();
  v135 = a1;
  sub_CF14(a1, sub_D294, &unk_19050, sub_F4B0, v100);
  sub_12788();
  sub_7114(&qword_1D220, &qword_13A38);
  sub_7A3C(&qword_1D228, &qword_1D220, &qword_13A38);
  sub_12778();
  v92 = v108[2];
  v92(v114, v107, v112);
  v105 = v128[2];
  v105(v115, v104, v113);
  v102 = v130[2];
  v102(v117, v103, v116);
  v100 = v131[2];
  v100(v121, v58, v119);
  v97 = v132[2];
  v97(v125, v68, v122);
  v95 = v133[2];
  v95(v120, v69, v124);
  v70 = *(v129 + 2);
  v129 += 16;
  v94 = v70;
  v70(v123, v111, v127);
  v93 = v134[2];
  v71 = v110;
  (v93)(v110, v118, v126);
  v72 = v96;
  v92(v96, v114, v112);
  v73 = sub_7114(&qword_1D230, &qword_13A40);
  v105(&v72[v73[12]], v115, v113);
  v102(&v72[v73[16]], v117, v116);
  v100(&v72[v73[20]], v121, v119);
  v74 = v122;
  v97(&v72[v73[24]], v125, v122);
  v75 = v124;
  v95(&v72[v73[28]], v120, v124);
  v76 = v127;
  v94(&v72[v73[32]], v123, v127);
  v77 = &v72[v73[36]];
  v78 = v126;
  (v93)(v77, v71, v126);
  v79 = v134[1];
  ++v134;
  v129 = v79;
  (v79)(v118, v78);
  v99(v111, v76);
  v80 = v133[1];
  ++v133;
  v118 = v80;
  (v80)(v109, v75);
  v81 = v132[1];
  ++v132;
  v111 = v81;
  (v81)(v106, v74);
  v82 = v131[1];
  ++v131;
  v83 = v119;
  v82(v101, v119);
  v84 = v130[1];
  ++v130;
  v85 = v116;
  v84(v103, v116);
  v86 = v128[1];
  ++v128;
  v87 = v113;
  v86(v104, v113);
  v88 = v108[1];
  v89 = v112;
  v88(v107, v112);
  (v129)(v110, v126);
  v99(v123, v127);
  (v118)(v120, v124);
  (v111)(v125, v122);
  v82(v121, v83);
  v84(v117, v85);
  v86(v115, v87);
  return (v88)(v114, v89);
}

uint64_t sub_94B8(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7114(&qword_1D190, &qword_13A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v16 - v10;
  sub_12458();
  v12 = sub_12448();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v17 = v12;
  v18 = v14;
  v16[2] = *(a1 + 16);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12738();
  sub_7114(&qword_1D2C0, &qword_13AE8);
  sub_7A3C(&qword_1D2C8, &qword_1D2C0, &qword_13AE8);
  sub_70C0();
  sub_12758();
  sub_7A3C(&qword_1D188, &qword_1D190, &qword_13A00);
  sub_126C8();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_97A0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_12468();
  v48 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v46 - v6;
  v8 = sub_7114(&qword_1D2D0, &qword_13AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v46 - v11;
  v13 = sub_7114(&qword_1D2D8, &qword_13AF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v53 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v52 = v46 - v18;
  v19 = __chkstk_darwin(v17);
  v50 = v46 - v20;
  __chkstk_darwin(v19);
  v47 = v46 - v21;
  sub_12458();
  v22 = sub_12448();
  v24 = v23;
  v25 = *(v2 + 8);
  v25(v7, v1);
  v55 = v22;
  v56 = v24;
  v49 = sub_70C0();
  *v12 = sub_12658();
  *(v12 + 1) = v26;
  v12[16] = v27 & 1;
  *(v12 + 3) = v28;
  *(v12 + 16) = 257;
  v55 = &type metadata for Text;
  v56 = &type metadata for Bool;
  v57 = &protocol witness table for Text;
  v58 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_126C8();
  v29 = *(v9 + 8);
  v46[1] = v9 + 8;
  v29(v12, v8);
  sub_12458();
  v30 = v51;
  sub_12458();
  v31 = sub_12438();
  v33 = v32;
  v34 = v30;
  v35 = v48;
  v25(v34, v48);
  v25(v7, v35);
  v55 = v31;
  v56 = v33;
  *v12 = sub_12658();
  *(v12 + 1) = v36;
  v12[16] = v37 & 1;
  *(v12 + 3) = v38;
  *(v12 + 16) = 256;
  v39 = v50;
  sub_126C8();
  v29(v12, v8);
  v40 = v47;
  v41 = v52;
  sub_79D0(v47, v52, &qword_1D2D8, &qword_13AF8);
  v42 = v53;
  sub_79D0(v39, v53, &qword_1D2D8, &qword_13AF8);
  v43 = v54;
  sub_79D0(v41, v54, &qword_1D2D8, &qword_13AF8);
  v44 = sub_7114(&qword_1D2E0, &unk_13B00);
  sub_79D0(v42, v43 + *(v44 + 48), &qword_1D2D8, &qword_13AF8);
  sub_7460(v39, &qword_1D2D8, &qword_13AF8);
  sub_7460(v40, &qword_1D2D8, &qword_13AF8);
  sub_7460(v42, &qword_1D2D8, &qword_13AF8);
  return sub_7460(v41, &qword_1D2D8, &qword_13AF8);
}

id sub_9CA4(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  return [objc_opt_self() setShouldShowServiceNamesForPasswordAndPasskeyItems:v2];
}

uint64_t sub_9D10(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7114(&qword_1D1C0, &qword_13A10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - v10;
  sub_12458();
  v12 = sub_12448();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v17[4] = v12;
  v17[5] = v14;
  v15 = *(a1 + 32);
  type metadata accessor for WBSPasswordSavingBehavior(0);
  sub_12568();
  sub_7114(&qword_1D290, &qword_13AC8);
  sub_ED6C(&qword_1D298, type metadata accessor for WBSPasswordSavingBehavior);
  sub_7A3C(&qword_1D2A0, &qword_1D290, &qword_13AC8);
  sub_70C0();
  sub_12758();
  sub_7A3C(&qword_1D1B8, &qword_1D1C0, &qword_13A10);
  sub_126C8();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_A020@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_12468();
  v47 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7114(&qword_1D2A8, &qword_13AD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v46 - v9;
  v11 = sub_7114(&qword_1D2B0, &qword_13AD8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v51 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v50 = v46 - v16;
  v17 = __chkstk_darwin(v15);
  v49 = v46 - v18;
  __chkstk_darwin(v17);
  v46[0] = v46 - v19;
  sub_12458();
  v20 = sub_12448();
  v22 = v21;
  v23 = *(v2 + 8);
  v46[1] = v2 + 8;
  v48 = v23;
  v23(v5, v1);
  v53 = v20;
  v54 = v22;
  sub_70C0();
  *v10 = sub_12658();
  *(v10 + 1) = v24;
  v10[16] = v25 & 1;
  *(v10 + 3) = v26;
  *(v10 + 4) = 0;
  v10[40] = 1;
  type metadata accessor for WBSPasswordSavingBehavior(255);
  v28 = v27;
  v29 = sub_ED6C(&qword_1D298, type metadata accessor for WBSPasswordSavingBehavior);
  v53 = &type metadata for Text;
  v54 = v28;
  v55 = &protocol witness table for Text;
  v56 = v29;
  swift_getOpaqueTypeConformance2();
  sub_126C8();
  v30 = *(v7 + 8);
  v30(v10, v6);
  sub_12458();
  v31 = sub_12448();
  v33 = v32;
  v48(v5, v47);
  v53 = v31;
  v54 = v33;
  *v10 = sub_12658();
  *(v10 + 1) = v34;
  v10[16] = v35 & 1;
  *(v10 + 3) = v36;
  *(v10 + 4) = 1;
  v10[40] = 1;
  v37 = v49;
  sub_126C8();
  v30(v10, v6);
  v38 = v46[0];
  v39 = v50;
  sub_79D0(v46[0], v50, &qword_1D2B0, &qword_13AD8);
  v40 = v37;
  v41 = v37;
  v42 = v51;
  sub_79D0(v40, v51, &qword_1D2B0, &qword_13AD8);
  v43 = v52;
  sub_79D0(v39, v52, &qword_1D2B0, &qword_13AD8);
  v44 = sub_7114(&qword_1D2B8, &qword_13AE0);
  sub_79D0(v42, v43 + *(v44 + 48), &qword_1D2B0, &qword_13AD8);
  sub_7460(v41, &qword_1D2B0, &qword_13AD8);
  sub_7460(v38, &qword_1D2B0, &qword_13AD8);
  sub_7460(v42, &qword_1D2B0, &qword_13AD8);
  return sub_7460(v39, &qword_1D2B0, &qword_13AD8);
}

uint64_t sub_A4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_7114(&qword_1D1D0, &qword_13A18);
  v4 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v60 = &v56 - v5;
  v6 = sub_7114(&qword_1D288, &unk_13AA8);
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v58 = &v56 - v8;
  v67 = sub_12368();
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  (__chkstk_darwin)();
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_12378();
  v63 = *(v64 - 8);
  v11 = *(v63 + 64);
  (__chkstk_darwin)();
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_12398() - 8) + 64);
  (__chkstk_darwin)();
  v15 = (*(*(sub_7114(&qword_1D080, &qword_13850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v17 = &v56 - v16;
  v18 = sub_12468();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  (__chkstk_darwin)();
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (*(*(sub_7114(&qword_1D258, &qword_13A68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v25 = &v56 - v24;
  v69 = sub_123B8();
  v68 = *(v69 - 8);
  v26 = *(v68 + 64);
  v27 = (__chkstk_darwin)();
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v62 = &v56 - v30;
  v59 = a1;
  v72 = *(a1 + 40);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  if (v73)
  {
    v31 = 1;
    v34 = v70;
    v33 = v71;
  }

  else
  {
    v57 = a2;
    sub_12458();
    sub_12448();
    (*(v19 + 8))(v22, v18);
    v32 = sub_12418();
    (*(*(v32 - 8) + 56))(v17, 1, 1, v32);
    (*(v63 + 104))(v13, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v64);
    (*(v66 + 104))(v65, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v67);
    sub_12388();
    sub_123A8();
    v36 = v68;
    v37 = v69;
    (*(v68 + 56))(v25, 0, 1, v69);
    v38 = v62;
    (*(v36 + 32))(v62, v25, v37);
    (*(v36 + 16))(v29, v38, v37);
    v66 = sub_12648();
    v40 = v39;
    LODWORD(v65) = v41;
    v67 = v42;
    KeyPath = swift_getKeyPath();
    v44 = swift_allocObject();
    v45 = v59;
    v46 = *(v59 + 112);
    *(v44 + 112) = *(v59 + 96);
    *(v44 + 128) = v46;
    *(v44 + 144) = *(v45 + 128);
    v47 = *(v45 + 48);
    *(v44 + 48) = *(v45 + 32);
    *(v44 + 64) = v47;
    v48 = *(v45 + 80);
    *(v44 + 80) = *(v45 + 64);
    *(v44 + 96) = v48;
    v49 = *(v45 + 16);
    *(v44 + 16) = *v45;
    *(v44 + 32) = v49;
    v50 = v60;
    v51 = &v60[*(v61 + 36)];
    v52 = *(sub_7114(&qword_1D1E8, &qword_13A20) + 28);
    sub_ED2C(v45, &v72);
    sub_12588();
    *v51 = KeyPath;
    *v50 = v66;
    *(v50 + 8) = v40;
    *(v50 + 16) = v65 & 1;
    *(v50 + 24) = v67;
    *&v72 = 0x766153726576656ELL;
    *(&v72 + 1) = 0xEA00000000006465;
    v53 = *(v45 + 128);
    sub_12798();
    sub_F108();
    v54 = v58;
    sub_126D8();
    sub_7460(v50, &qword_1D1D0, &qword_13A18);
    (*(v36 + 8))(v62, v37);
    v34 = v70;
    v55 = v71;
    a2 = v57;
    (*(v70 + 32))(v57, v54, v71);
    v33 = v55;
    v31 = 0;
  }

  return (*(v34 + 56))(a2, v31, 1, v33);
}

uint64_t sub_AD6C(uint64_t a1)
{
  v2 = *(*(sub_12598() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_125D8();
}

uint64_t sub_AE34(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(sub_7114(&qword_1D068, &qword_13830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v15[-v4 - 8];
  v6 = sub_128E8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_128C8();
  sub_ED2C(a2, v15);
  v7 = sub_128B8();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a2 + 112);
  *(v8 + 128) = *(a2 + 96);
  *(v8 + 144) = v9;
  *(v8 + 160) = *(a2 + 128);
  v10 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = v10;
  v11 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 64);
  *(v8 + 112) = v11;
  v12 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v12;
  sub_5B50(0, 0, v5, &unk_13AC0, v8);

  return sub_12578();
}

uint64_t sub_AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_12468();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_128C8();
  v4[8] = sub_128B8();
  v9 = sub_128A8();
  v4[9] = v9;
  v4[10] = v8;

  return _swift_task_switch(sub_B084, v9, v8);
}

uint64_t sub_B084()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_74C0(0, &qword_1D070, LAContext_ptr);
  sub_12458();
  v4 = sub_12448();
  v6 = v5;
  v0[11] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = async function pointer to static LAContext.pm_authenticate(reason:)[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_B1A8;

  return static LAContext.pm_authenticate(reason:)(v4, v6);
}

uint64_t sub_B1A8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_B374;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_B2C4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_B2C4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);

  *(v0 + 16) = *(v3 + 56);
  *(v0 + 112) = 1;
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12728();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_B374()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_B3EC(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v7 = sub_12448();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v12 = v7;
  v13 = v9;
  v11[2] = *(a1 + 72);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12738();
  sub_70C0();
  return sub_12768();
}

id sub_B554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_12368();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_12378();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_12398();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_7114(&qword_1D080, &qword_13850);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v39 - v15;
  v17 = sub_F5B4();
  v19 = v18;
  v20 = *v1;
  v21 = v1[1];
  v22 = sub_127F8();
  v23 = [objc_opt_self() bundleWithIdentifier:v22];

  if (v23)
  {
    v40 = v4;
    result = [v23 privacyFlow];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v26 = [result localizedButtonTitle];

    if (v26)
    {
      v27 = sub_12808();
      v39 = v3;
      v28 = a1;
      v30 = v29;

      v48 = v17;
      v49 = v19;
      v46 = 0xD000000000000018;
      v47 = 0x8000000000015230;
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_12B08(24);

      v44 = 91;
      v45 = 0xE100000000000000;
      v51._countAndFlagsBits = v27;
      v51._object = v30;
      sub_12838(v51);

      v52._object = 0x80000000000159D0;
      v52._countAndFlagsBits = 0xD000000000000015;
      sub_12838(v52);
      sub_70C0();
      sub_12A98();

      v31 = sub_12418();
      (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
      (*(v41 + 104))(v10, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v42);
      (*(v40 + 104))(v43, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v39);
      sub_12388();
      sub_123A8();

      v38 = sub_123B8();
      return (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    }
  }

  if (qword_1CDD8 != -1)
  {
    swift_once();
  }

  v32 = sub_124E8();
  sub_7088(v32, qword_1DA78);
  v33 = sub_124D8();
  v34 = sub_12968();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "Unable to load construct the password breach detection footer.", v35, 2u);
  }

  v36 = sub_123B8();
  v37 = *(*(v36 - 8) + 56);

  return v37(a1, 1, 1, v36);
}

void sub_BB1C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_12AB8();
    sub_74C0(0, &qword_1D260, UIScene_ptr);
    sub_F53C();
    sub_12958();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_12AC8() || (sub_74C0(0, &qword_1D260, UIScene_ptr), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_F5A4();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_12848();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v12 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_12878();
      }

      sub_12888();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_BD88(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = &_swiftEmptyArrayStorage;
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_12B18();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_74C0(0, &qword_1D270, UIWindow_ptr);
      v8 = sub_12868();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_12B98();
      }

      else
      {
        v10 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_12B98();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_12B98();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_12B28();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v33 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_12B98();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_7A3C(&qword_1D280, &qword_1D278, &qword_13AA0);
            for (i = 0; i != v17; ++i)
            {
              sub_7114(&qword_1D278, &qword_13AA0);
              v20 = sub_6918(v32, i, v8);
              v22 = *v21;
              (v20)(v32, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_12B98();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return &_swiftEmptyArrayStorage;
}

id sub_C11C(uint64_t a1)
{
  v3 = *(a1 + 72);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12718();
  return [objc_opt_self() setPasswordBreachDetectionEnabled:v2];
}

uint64_t sub_C188(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7114(&qword_1D1F0, &qword_13A28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - v10;
  sub_12458();
  v12 = sub_12448();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v17[4] = v12;
  v17[5] = v14;
  v15 = *(a1 + 88);
  sub_12568();
  sub_70C0();
  sub_12768();
  sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28);
  sub_126C8();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_C3DC(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v7 = sub_12448();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v12[4] = v7;
  v12[5] = v9;
  v10 = *(a1 + 96);
  sub_12568();
  sub_70C0();
  return sub_12768();
}

uint64_t sub_C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v69 = a2;
  v60 = sub_7114(&qword_1D1D0, &qword_13A18);
  v2 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v59 = &v56 - v3;
  v68 = sub_7114(&qword_1D288, &unk_13AA8);
  v67 = *(v68 - 8);
  v4 = *(v67 + 64);
  __chkstk_darwin(v68);
  v57 = &v56 - v5;
  v65 = sub_12368();
  v64 = *(v65 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v65);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_12378();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v62);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_12398();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_7114(&qword_1D080, &qword_13850);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v56 - v16;
  v18 = sub_12468();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_7114(&qword_1D258, &qword_13A68);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v56 - v25;
  v70 = sub_123B8();
  v66 = *(v70 - 8);
  v27 = *(v66 + 64);
  v28 = __chkstk_darwin(v70);
  v56 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v61 = &v56 - v30;
  sub_12458();
  sub_12448();
  (*(v19 + 8))(v22, v18);
  v31 = sub_12418();
  (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
  (*(v8 + 104))(v11, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v62);
  (*(v64 + 104))(v63, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v65);
  sub_12388();
  sub_123A8();
  v32 = v66;
  v33 = v70;
  (*(v66 + 56))(v26, 0, 1, v70);
  v34 = v61;
  (*(v32 + 32))(v61, v26, v33);
  (*(v32 + 16))(v56, v34, v33);
  v64 = sub_12648();
  v36 = v35;
  LOBYTE(v26) = v37;
  v65 = v38;
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  v41 = v58;
  v42 = *(v58 + 112);
  *(v40 + 112) = *(v58 + 96);
  *(v40 + 128) = v42;
  *(v40 + 144) = *(v41 + 128);
  v43 = *(v41 + 48);
  *(v40 + 48) = *(v41 + 32);
  *(v40 + 64) = v43;
  v44 = *(v41 + 80);
  *(v40 + 80) = *(v41 + 64);
  *(v40 + 96) = v44;
  v45 = *(v41 + 16);
  *(v40 + 16) = *v41;
  *(v40 + 32) = v45;
  v46 = v59;
  v47 = &v59[*(v60 + 36)];
  v48 = *(sub_7114(&qword_1D1E8, &qword_13A20) + 28);
  sub_ED2C(v41, v71);
  sub_12588();
  *v47 = KeyPath;
  *v46 = v64;
  *(v46 + 8) = v36;
  *(v46 + 16) = v26 & 1;
  *(v46 + 24) = v65;
  v71[0] = 0xD000000000000011;
  v71[1] = 0x80000000000158D0;
  v49 = *(v41 + 128);
  sub_12798();
  sub_F108();
  v50 = v57;
  sub_126D8();
  sub_7460(v46, &qword_1D1D0, &qword_13A18);
  (*(v32 + 8))(v61, v70);
  v51 = v67;
  v52 = v69;
  v53 = v50;
  v54 = v68;
  (*(v67 + 32))(v69, v53, v68);
  return (*(v51 + 56))(v52, 0, 1, v54);
}

uint64_t sub_CD5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  sub_7114(&qword_1D0F8, &qword_13990);
  sub_12728();
  return sub_12578();
}

uint64_t sub_CDC0(uint64_t a1)
{
  v2 = sub_12468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v7 = sub_12448();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v12[4] = v7;
  v12[5] = v9;
  v10 = *(a1 + 120);
  sub_12568();
  sub_70C0();
  return sub_12768();
}

uint64_t sub_CF14@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v7 = sub_7114(&qword_1D1D0, &qword_13A18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &KeyPath - v10;
  v12 = sub_7114(&qword_1D258, &qword_13A68);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &KeyPath - v14;
  v16 = sub_123B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &KeyPath - v23;
  a2(v22);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_7460(v15, &qword_1D258, &qword_13A68);
    v25 = 1;
    v26 = v47;
  }

  else
  {
    (*(v17 + 32))(v24, v15, v16);
    (*(v17 + 16))(v21, v24, v16);
    v43 = sub_12648();
    v42 = v27;
    v41 = v28;
    v44 = v29;
    KeyPath = swift_getKeyPath();
    v30 = swift_allocObject();
    v31 = *(a1 + 112);
    *(v30 + 112) = *(a1 + 96);
    *(v30 + 128) = v31;
    *(v30 + 144) = *(a1 + 128);
    v32 = *(a1 + 48);
    *(v30 + 48) = *(a1 + 32);
    *(v30 + 64) = v32;
    v33 = *(a1 + 80);
    *(v30 + 80) = *(a1 + 64);
    *(v30 + 96) = v33;
    v34 = *(a1 + 16);
    *(v30 + 16) = *a1;
    *(v30 + 32) = v34;
    v35 = &v11[*(v7 + 36)];
    v36 = *(sub_7114(&qword_1D1E8, &qword_13A20) + 28);
    sub_ED2C(a1, v48);
    sub_12588();
    (*(v17 + 8))(v24, v16);
    *v35 = KeyPath;
    v37 = v42;
    *v11 = v43;
    *(v11 + 1) = v37;
    v11[16] = v41 & 1;
    *(v11 + 3) = v44;
    v38 = v47;
    sub_F4CC(v11, v47);
    v25 = 0;
    v26 = v38;
  }

  return (*(v8 + 56))(v26, v25, 1, v7);
}

id sub_D294@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_12368();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_12378();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_12398();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_7114(&qword_1D080, &qword_13850);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v42 - v14;
  v16 = sub_12468();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v21 = sub_12448();
  v23 = v22;
  (*(v17 + 8))(v20, v16);
  v24 = *v1;
  v25 = v1[1];
  v26 = sub_127F8();
  v27 = [objc_opt_self() bundleWithIdentifier:v26];

  if (!v27)
  {
    goto LABEL_6;
  }

  result = [v27 privacyFlow];
  if (result)
  {
    v29 = result;
    v30 = [result localizedButtonTitle];

    if (v30)
    {
      v31 = sub_12808();
      v33 = v32;

      v51 = v21;
      v52 = v23;
      v49 = 0xD000000000000018;
      v50 = 0x8000000000015230;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_12B08(24);

      v47 = 91;
      v48 = 0xE100000000000000;
      v53._countAndFlagsBits = v31;
      v53._object = v33;
      sub_12838(v53);

      v54._object = 0x80000000000159D0;
      v54._countAndFlagsBits = 0xD000000000000015;
      sub_12838(v54);
      sub_70C0();
      sub_12A98();

      v34 = sub_12418();
      (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
      (*(v42 + 104))(v9, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v43);
      (*(v44 + 104))(v5, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v45);
      sub_12388();
      v35 = v46;
      sub_123A8();
      v41 = 0;
LABEL_11:

      v40 = sub_123B8();
      return (*(*(v40 - 8) + 56))(v35, v41, 1, v40);
    }

LABEL_6:

    if (qword_1CDD8 != -1)
    {
      swift_once();
    }

    v36 = sub_124E8();
    sub_7088(v36, qword_1DA78);
    v27 = sub_124D8();
    v37 = sub_12968();
    v38 = os_log_type_enabled(v27, v37);
    v35 = v46;
    if (v38)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v27, v37, "Unable to load construct the network fetching footer.", v39, 2u);
    }

    v41 = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_D874(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 connectedScenes];

  sub_74C0(0, &qword_1D260, UIScene_ptr);
  sub_F53C();
  v5 = sub_12948();

  sub_BB1C(v5);
  v7 = v6;

  v8 = sub_BD88(v7);

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_12B98())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_12B18();
      }

      else
      {
        if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 isKeyWindow])
      {
        goto LABEL_16;
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v12 = 0;
LABEL_16:

  v19 = [v12 rootViewController];

  v14 = *a2;
  v15 = a2[1];
  v16 = sub_127F8();
  v17 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v16];

  if (v17)
  {
    if (v19)
    {
      v18 = v19;
      [v17 setPresentingViewController:v18];
      [v17 present];

      v17 = v18;
    }
  }

  sub_12578();
}

uint64_t sub_DAC8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_12468();
  v34 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7114(&qword_1D238, &qword_13A48);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = __chkstk_darwin(v6);
  v37 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  v12 = sub_7114(&qword_1D240, &qword_13A50);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v36 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v33 - v16;
  sub_12458();
  v18 = sub_12448();
  v20 = v19;
  v21 = *(v2 + 8);
  v33[2] = v2 + 8;
  v21(v5, v1);
  v39 = v18;
  v40 = v20;
  v33[1] = sub_70C0();
  sub_12748();
  sub_7A3C(&qword_1D248, &qword_1D238, &qword_13A48);
  sub_126C8();
  v22 = v35;
  v23 = *(v35 + 8);
  v23(v11, v6);
  sub_12458();
  v24 = sub_12448();
  v26 = v25;
  v21(v5, v34);
  v39 = v24;
  v40 = v26;
  sub_12748();
  v27 = v36;
  sub_F418(v17, v36);
  v28 = *(v22 + 16);
  v29 = v37;
  v28(v37, v11, v6);
  v30 = v38;
  sub_F418(v27, v38);
  v31 = sub_7114(&qword_1D250, &unk_13A58);
  v28((v30 + *(v31 + 48)), v29, v6);
  v23(v11, v6);
  sub_7460(v17, &qword_1D240, &qword_13A50);
  v23(v29, v6);
  return sub_7460(v27, &qword_1D240, &qword_13A50);
}

void sub_DF08()
{
  v0 = sub_12418();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() passwordManagerURL];
    sub_123F8();

    sub_123E8(v8);
    v10 = v9;
    (*(v1 + 8))(v4, v0);
    sub_7508(&_swiftEmptyArrayStorage);
    isa = sub_127E8().super.isa;

    [v6 openSensitiveURL:v10 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

id sub_E08C()
{
  v0 = sub_7114(&qword_1D080, &qword_13850);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_12418();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12408();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v11 = result;
      sub_123E8(v10);
      v13 = v12;
      sub_7508(&_swiftEmptyArrayStorage);
      isa = sub_127E8().super.isa;

      [v11 openSensitiveURL:v13 withOptions:isa];

      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_E2A0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedStore];
  v4 = [v3 savedAccountsWithNeverSaveMarker];

  if (v4)
  {
    sub_74C0(0, &qword_1D000, WBSSavedAccount_ptr);
    v5 = sub_12868();

    if (v5 >> 62)
    {
      sub_12B98();
    }

    else
    {
      v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    }
  }

  v8 = *(a2 + 40);
  sub_7114(&qword_1D0F8, &qword_13990);
  return sub_12728();
}

uint64_t sub_E3B0(uint64_t a1)
{
  v2 = sub_12618();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_124A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12498();
  v14[0] = 0x766153726576656ELL;
  v14[1] = 0xEA00000000006465;
  v12 = *(a1 + 128);
  sub_12798();
  sub_125F8();
  sub_ED6C(&qword_1D110, &type metadata accessor for PMNeverSavedPasswordsView);
  sub_126B8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_E5B8(uint64_t a1)
{
  v2 = sub_12618();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_12488();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12478();
  v14[0] = 0xD000000000000011;
  v14[1] = 0x80000000000158D0;
  v12 = *(a1 + 128);
  sub_12798();
  sub_125F8();
  sub_ED6C(&qword_1D120, &type metadata accessor for PMPasskeysLearnMoreView);
  sub_126B8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_E7E4@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 16);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_7A88(a1);
}

uint64_t sub_E838@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  [v2 shouldShowServiceNamesForPasswordAndPasskeyItems];
  sub_12708();
  sub_12808();
  v3 = objc_opt_self();
  v4 = [v3 pm_defaults];
  type metadata accessor for WBSPasswordSavingBehavior(0);
  sub_ED6C(&qword_1D0B8, type metadata accessor for WBSPasswordSavingBehavior);
  v15 = sub_12558();
  v5 = [v2 sharedStore];
  v6 = [v5 savedAccountsWithNeverSaveMarker];

  if (v6)
  {
    sub_74C0(0, &qword_1D000, WBSSavedAccount_ptr);
    v7 = sub_12868();

    if (v7 >> 62)
    {
      sub_12B98();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }
  }

  sub_12708();
  sub_12708();
  [objc_opt_self() isPasswordBreachDetectionEnabled];
  sub_12708();
  sub_12808();
  v9 = [v3 safari_browserDefaults];
  v10 = sub_12548();
  sub_12808();
  v11 = [v3 pm_defaults];
  v12 = sub_12548();
  sub_12708();
  [objc_opt_self() isNetworkFetchingForPasswordsEnabled];
  sub_12808();
  v13 = [v3 pm_defaults];
  result = sub_12548();
  *a1 = 0xD00000000000001ELL;
  *(a1 + 8) = 0x8000000000015830;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v15;
  *(a1 + 40) = 0;
  *(a1 + 48) = v17;
  *(a1 + 56) = 0;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0;
  *(a1 + 80) = v17;
  *(a1 + 88) = v10;
  *(a1 + 96) = v12;
  *(a1 + 104) = 0;
  *(a1 + 112) = v17;
  *(a1 + 120) = result;
  *(a1 + 128) = 0;
  return result;
}

__n128 sub_EC10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_EC44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_EC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_ED6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_EDC4()
{
  result = qword_1D180;
  if (!qword_1D180)
  {
    sub_2514(&qword_1D178, &qword_139F8);
    sub_7A3C(&qword_1D188, &qword_1D190, &qword_13A00);
    sub_ED6C(&qword_1D198, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D180);
  }

  return result;
}

unint64_t sub_EEB4()
{
  result = qword_1D1A0;
  if (!qword_1D1A0)
  {
    sub_2514(&qword_1D168, &qword_139E8);
    sub_EDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1A0);
  }

  return result;
}

unint64_t sub_EF4C()
{
  result = qword_1D1B0;
  if (!qword_1D1B0)
  {
    sub_2514(&qword_1D1A8, &qword_13A08);
    sub_7A3C(&qword_1D1B8, &qword_1D1C0, &qword_13A10);
    sub_ED6C(&qword_1D198, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1B0);
  }

  return result;
}

unint64_t sub_F034()
{
  result = qword_1D1C8;
  if (!qword_1D1C8)
  {
    sub_2514(&qword_1D158, &qword_139D8);
    sub_2514(&qword_1D1D0, &qword_13A18);
    sub_F108();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1C8);
  }

  return result;
}

unint64_t sub_F108()
{
  result = qword_1D1D8;
  if (!qword_1D1D8)
  {
    sub_2514(&qword_1D1D0, &qword_13A18);
    sub_7A3C(&qword_1D1E0, &qword_1D1E8, &qword_13A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1D8);
  }

  return result;
}

unint64_t sub_F1C8()
{
  result = qword_1D200;
  if (!qword_1D200)
  {
    sub_2514(&qword_1D140, &qword_139C0);
    sub_F108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D200);
  }

  return result;
}

unint64_t sub_F254()
{
  result = qword_1D208;
  if (!qword_1D208)
  {
    sub_2514(&qword_1D148, &qword_139C8);
    sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28);
    sub_F1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D208);
  }

  return result;
}

unint64_t sub_F320()
{
  result = qword_1D218;
  if (!qword_1D218)
  {
    sub_2514(&qword_1D210, &qword_13A30);
    sub_7A3C(&qword_1D1F8, &qword_1D1F0, &qword_13A28);
    sub_ED6C(&qword_1D198, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D218);
  }

  return result;
}

uint64_t sub_F418(uint64_t a1, uint64_t a2)
{
  v4 = sub_7114(&qword_1D240, &qword_13A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7114(&qword_1D1D0, &qword_13A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_F53C()
{
  result = qword_1D268;
  if (!qword_1D268)
  {
    sub_74C0(255, &qword_1D260, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D268);
  }

  return result;
}

uint64_t sub_F5B4()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_12458();
  v6 = sub_12448();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_F708()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[16];

  v10 = v0[17];

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_F790()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[18];

  v11 = v0[19];

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_F818(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_736C;

  return sub_AF90(a1, v4, v5, v1 + 32);
}

uint64_t sub_F8C8()
{
  sub_2514(&qword_1D0D8, &qword_13980);
  sub_2514(&qword_1D118, &qword_139A0);
  sub_2514(&qword_1D0D0, &qword_13978);
  sub_2514(&qword_1D100, &qword_13998);
  sub_7A3C(&qword_1D108, &qword_1D0D0, &qword_13978);
  sub_124A8();
  sub_12618();
  sub_ED6C(&qword_1D110, &type metadata accessor for PMNeverSavedPasswordsView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_12488();
  sub_ED6C(&qword_1D120, &type metadata accessor for PMPasskeysLearnMoreView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_FADC()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v5 = sub_12448();
  (*(v1 + 8))(v4, v0);
  return v5;
}

UIMenu sub_FBDC(void *a1)
{
  v3 = sub_12468();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v27 = sub_74C0(0, &qword_1CFF8, UIAction_ptr);
  sub_12458();
  sub_12448();
  v28 = v11;
  v12 = *(v4 + 8);
  v12(v10, v3);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = v1;
  v15 = a1;
  v28 = sub_129C8();
  sub_12458();
  sub_12458();
  sub_12438();
  v12(v8, v3);
  v12(v10, v3);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = v14;
  v18 = v15;
  v19 = sub_129C8();
  v20 = v19;
  v21 = v28;
  if (v17[OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems])
  {
    v19 = v28;
  }

  [v19 setState:1];
  sub_74C0(0, &qword_1D318, UIMenu_ptr);
  sub_7114(&qword_1D410, &qword_13820);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_137B0;
  *(v22 + 32) = v21;
  *(v22 + 40) = v20;
  v25 = v22;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v29.value.super.isa = 0;
  v29.is_nil = 0;
  v23.value = 0;
  return sub_129A8(v30, v31, v29, v23, 0xFFFFFFFFFFFFFFFFLL, v25, v26);
}

id sub_FF30(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, char a5)
{
  a2[OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems] = a4;
  v8 = [objc_opt_self() sharedStore];
  [v8 setShouldShowServiceNamesForPasswordAndPasskeyItems:a5 & 1];

  return [a2 reloadWithSpecifier:a3 animated:1];
}

id sub_FFC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems;
  v9 = [objc_opt_self() sharedStore];
  v10 = [v9 shouldShowServiceNamesForPasswordAndPasskeyItems];

  v4[v8] = v10;
  if (a3)
  {
    v11 = sub_127F8();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for PMServiceNamesCellView();
  v12 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:specifier:", a1, v11, a4);

  if (v12)
  {
  }

  return v12;
}

id sub_10228(void *a1)
{
  v3 = OBJC_IVAR____TtC17PasswordsSettings22PMServiceNamesCellView_cachedShouldShowServiceNamesForPasswordAndPasskeyItems;
  v4 = [objc_opt_self() sharedStore];
  v5 = [v4 shouldShowServiceNamesForPasswordAndPasskeyItems];

  v1[v3] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PMServiceNamesCellView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMServiceNamesCellView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1035C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_103E8()
{
  v0 = sub_12468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12458();
  v5 = sub_12448();
  (*(v1 + 8))(v4, v0);
  return v5;
}

Class sub_104F0(void *a1)
{
  v3 = sub_12468();
  v29 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() pm_defaults];
  sub_74C0(0, &qword_1CFF8, UIAction_ptr);
  sub_12458();
  sub_12448();
  v9 = *(v4 + 8);
  v9(v7, v3);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v1;
  v10[4] = a1;
  v11 = v8;
  v12 = v1;
  v13 = a1;
  v14 = sub_129C8();
  sub_12458();
  sub_12448();
  v9(v7, v29);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = sub_129C8();
  v20 = [v16 integerForKey:WBSPasswordSavingBehaviorKey];
  v21 = v14;
  if (!v20)
  {
    goto LABEL_4;
  }

  if (v20 == &dword_0 + 1)
  {
    v21 = v19;
LABEL_4:
    [v21 setState:1];
  }

  sub_74C0(0, &qword_1D318, UIMenu_ptr);
  sub_7114(&qword_1D410, &qword_13820);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_137B0;
  *(v22 + 32) = v14;
  *(v22 + 40) = v19;
  v26 = v22;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  v23.value = 0;
  isa = sub_129A8(v31, v32, v30, v23, 0xFFFFFFFFFFFFFFFFLL, v26, v27).super.super.isa;

  return isa;
}

id sub_1085C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_127F8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_10A74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMSavePasswordsPromptPreferenceCellView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10AD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10B28(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  [v3 setInteger:a2 forKey:WBSPasswordSavingBehaviorKey];

  return [v4 reloadWithSpecifier:v5 animated:1];
}

void sub_10B90()
{
  v1 = *&v0[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView];
  if (v1)
  {
    v6 = v1;
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    v4 = sub_12998();
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    [v6 setAxis:v4 & 1];
    [v6 setAlignment:v5];
    [v6 setDistribution:v4 & 1];
    [v0 setNeedsLayout];
  }
}

void sub_10C9C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_129E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7114(&qword_1D3F0, &qword_13B90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v71 - v11;
  v13 = sub_12A38();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v71 - v18;
  v20 = type metadata accessor for PMPopUpMenuCellView();
  v80.receiver = v1;
  v80.super_class = v20;
  v74 = a1;
  objc_msgSendSuper2(&v80, "refreshCellContentsWithSpecifier:", a1);
  v21 = OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration;
  if (!*(v1 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration))
  {
    sub_7114(&qword_1D3F8, &qword_13B98);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_137C0;
    *(v22 + 32) = sub_12538();
    *(v22 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    v23 = sub_129B8();

    v24 = *(v2 + v21);
    *(v2 + v21) = v23;
    swift_unknownObjectRelease();
  }

  v25 = OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton;
  v26 = *(v2 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton);
  if (v26)
  {
    v27 = v26;
    v28 = [v27 superview];
    if (v28)
    {

      if (v74)
      {
        v29 = (*&stru_B8.segname[(swift_isaMask & *v2) - 8])();
        [v27 setMenu:v29];

        return;
      }

      goto LABEL_12;
    }
  }

  sub_12A28();
  sub_12518();
  v30 = sub_12528();
  (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
  sub_12A18();
  (*(v5 + 104))(v8, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v4);
  sub_129F8();
  v31 = [objc_opt_self() secondaryLabelColor];
  sub_12A08();
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  sub_129D8();
  sub_74C0(0, &qword_1D400, UIButton_ptr);
  (*(v75 + 16))(v17, v19, v76);
  v35 = sub_12A48();
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = v35;
  [v36 setShowsMenuAsPrimaryAction:1];
  [v36 setChangesSelectionAsPrimaryAction:1];
  [v36 setContentHorizontalAlignment:5];

  v37 = *(v2 + v25);
  *(v2 + v25) = v36;
  v38 = v36;

  v39 = [objc_allocWithZone(UILabel) init];
  (*&stru_B8.sectname[swift_isaMask & *v2])();
  v40 = sub_127F8();

  [v39 setText:v40];

  v41 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v39 setFont:v41];

  [v39 setNumberOfLines:0];
  [v39 setLineBreakMode:0];
  v42 = v39;
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for UILayoutPriority(0);
  v78 = 1144750080;
  v77 = 1130430464;
  sub_11B68();
  sub_12508();
  LODWORD(v43) = v79;
  [v42 setContentHuggingPriority:0 forAxis:v43];
  LODWORD(v44) = 1132068864;
  [v42 setContentCompressionResistancePriority:0 forAxis:v44];
  sub_7114(&qword_1D410, &qword_13820);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_137B0;
  *(v45 + 32) = v42;
  *(v45 + 40) = v38;
  v72 = v38;
  v46 = objc_allocWithZone(UIStackView);
  sub_74C0(0, &qword_1D418, UIView_ptr);
  isa = sub_12858().super.isa;

  v48 = [v46 initWithArrangedSubviews:isa];

  v49 = v48;
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v49 setAxis:0];
  [v49 setAlignment:3];
  [v49 setSpacing:4.0];
  v50 = [v2 contentView];
  [v50 addSubview:v49];

  v51 = *(v2 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView);
  *(v2 + OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView) = v49;
  v52 = v49;

  v53 = [v2 contentView];
  v54 = [v53 layoutMarginsGuide];

  v73 = objc_opt_self();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_13B60;
  v56 = [v52 topAnchor];
  v57 = [v54 topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v55 + 32) = v58;
  v59 = [v52 rightAnchor];
  v60 = [v54 rightAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v55 + 40) = v61;
  v62 = [v52 bottomAnchor];
  v63 = [v54 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v55 + 48) = v64;
  v65 = [v52 leftAnchor];

  v66 = [v54 leftAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v55 + 56) = v67;
  sub_74C0(0, &unk_1D420, NSLayoutConstraint_ptr);
  v68 = sub_12858().super.isa;

  [v73 activateConstraints:v68];

  if (!v74)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v69 = (*&stru_B8.segname[(swift_isaMask & *v2) - 8])();
  v70 = v72;
  [v72 setMenu:v69];

  [v2 _setPopupMenuButton:v70];
  sub_10B90();
  [v2 setNeedsLayout];

  (*(v75 + 8))(v19, v76);
}

id sub_117CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration] = 0;
  *&v4[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView] = 0;
  *&v4[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton] = 0;
  if (a3)
  {
    v7 = sub_127F8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for PMPopUpMenuCellView();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_11908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration] = 0;
  *&v3[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView] = 0;
  *&v3[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton] = 0;
  if (a3)
  {
    v5 = sub_127F8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PMPopUpMenuCellView();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id sub_119FC(void *a1)
{
  *&v1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_traitChangeRegistration] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_popUpButton] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PMPopUpMenuCellView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_11AB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMPopUpMenuCellView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_11B68()
{
  result = qword_1D408;
  if (!qword_1D408)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D408);
  }

  return result;
}

void sub_11BC0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC17PasswordsSettings19PMPopUpMenuCellView_stackView];
  if (v1)
  {
    v7 = v1;
    v3 = [a1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    v5 = sub_12998();
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    [v7 setAxis:v5 & 1];
    [v7 setAlignment:v6];
    [v7 setDistribution:v5 & 1];
    [a1 setNeedsLayout];
  }
}

uint64_t sub_11CC0()
{
  sub_11E1C();
  result = sub_12A78();
  qword_1DA70 = result;
  return result;
}

uint64_t sub_11D2C()
{
  v0 = sub_124E8();
  sub_11DB8(v0, qword_1DA78);
  sub_7088(v0, qword_1DA78);
  if (qword_1CDD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1DA70;
  return sub_124F8();
}

uint64_t *sub_11DB8(uint64_t a1, uint64_t *a2)
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

unint64_t sub_11E1C()
{
  result = qword_1D430;
  if (!qword_1D430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1D430);
  }

  return result;
}

uint64_t sub_11E70(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1DA60 == -1)
  {
    if (qword_1DA68)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_12338();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1DA68)
    {
      return _availability_version_check();
    }
  }

  if (qword_1DA58 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_12350();
    a3 = v10;
    a4 = v9;
    v8 = dword_1DA48 < v11;
    if (dword_1DA48 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1DA4C > a3)
      {
        return 1;
      }

      if (dword_1DA4C >= a3)
      {
        return dword_1DA50 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1DA48 < a2;
  if (dword_1DA48 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_12004(uint64_t result)
{
  v1 = qword_1DA68;
  if (qword_1DA68)
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
      qword_1DA68 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_1DA48, &dword_1DA4C, &dword_1DA50);
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