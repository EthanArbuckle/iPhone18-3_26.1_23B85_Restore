id sub_2EE4(uint64_t a1)
{
  v2 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  v3 = [v2 units];
  [v3 setPreferredTemperatureUnit:*(a1 + 32)];

  [*(a1 + 40) reloadWidget];
  v4 = *(a1 + 40);

  return [v4 updateSelectedUnit];
}

id sub_3D30(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  [v3 setResetIdentifier:v2 ^ 1];

  v4 = *(a1 + 40);

  return [v4 reload];
}

id sub_3D98(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  [v3 setShowHomeWorkLabels:v2 ^ 1];

  v4 = *(a1 + 40);

  return [v4 reload];
}

id sub_3E00(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  [v3 setUseSignificantLocations:v2 ^ 1];

  v4 = *(a1 + 40);

  return [v4 reload];
}

id WSBundle()
{
  if (qword_11398[0] != -1)
  {
    sub_7550();
  }

  v1 = qword_11390;

  return v1;
}

void sub_42CC(id a1)
{
  qword_11390 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_4440(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_7774();

  return v3;
}

id sub_4494()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_44F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_4558()
{
  v1 = sub_7674();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v11 = v1;
  v12 = &protocol witness table for NanoPreferencesSynchronizer;
  v10 = sub_7664();
  v4 = sub_7624();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_7614();
  sub_7604();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for WeatherSettingsUnits();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t sub_4674()
{
  sub_75F4();
  sub_75E4();
  sub_75C4();
}

uint64_t sub_4714()
{
  sub_5C34();
  sub_75F4();
  *(v0 + 16) = sub_75E4();
  v1 = async function pointer to UnitManager.refreshUnitsFromStorage()[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_47B8;

  return UnitManager.refreshUnitsFromStorage()();
}

uint64_t sub_47B8()
{
  sub_5C34();
  sub_5C4C();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_5C04();
  *v5 = v4;

  sub_5C40();

  return v6();
}

uint64_t sub_4930(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_49D4;

  return sub_46F8();
}

uint64_t sub_49D4()
{
  sub_5C34();
  sub_5C4C();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_5C04();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  sub_5C40();

  return v7();
}

uint64_t sub_4AF8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_4F1C(&qword_11278, &qword_A8F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_77F4();
  sub_4F8C(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_A908;
  v9[5] = v8;
  sub_5518(0, 0, v6, &unk_A918, v9);
}

uint64_t sub_4C08(void *a1)
{
  v3 = (*(*(sub_4F1C(&qword_11270, &qword_A8E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_5C68();
  sub_75F4();
  if (a1)
  {
    v4 = a1;
    sub_75E4();
    v5 = v4;
    sub_7654();
    sub_75B4();
  }

  else
  {
    sub_75E4();
    v6 = sub_7644();
    sub_4F8C(v1, 1, 1, v6);
    sub_75B4();
  }

  return sub_5854(v1, &qword_11270, &qword_A8E0);
}

uint64_t sub_4DB4()
{
  v1 = (*(*(sub_4F1C(&qword_11270, &qword_A8E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_5C68();
  sub_75F4();
  sub_75E4();
  sub_75A4();

  v2 = sub_7644();
  if (sub_4F64(v0, 1, v2) == 1)
  {
    sub_5854(v0, &qword_11270, &qword_A8E0);
    return 0;
  }

  else
  {
    v3 = sub_7634();
    (*(*(v2 - 8) + 8))(v0, v2);
  }

  return v3;
}

id sub_4EC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherSettingsUnits();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4F1C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4FB4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4FF4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_50A0;

  return sub_4930(v2, v3);
}

uint64_t sub_50A0()
{
  sub_5C34();
  sub_5C4C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5C04();
  *v4 = v3;

  sub_5C40();

  return v5();
}

uint64_t sub_5180(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_5C00;

  return v7();
}

uint64_t sub_526C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_5C00;

  return sub_5180(v2, v3, v5);
}

uint64_t sub_532C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_50A0;

  return v8();
}

uint64_t sub_5414()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_5454(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_5C58(v7);
  *v8 = v9;
  v8[1] = sub_5C00;

  return sub_532C(a1, v3, v4, v6);
}

uint64_t sub_5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_4F1C(&qword_11278, &qword_A8F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_57E4(a3, v24 - v10);
  v12 = sub_77F4();
  if (sub_4F64(v11, 1, v12) == 1)
  {
    sub_5854(v11, &qword_11278, &qword_A8F8);
  }

  else
  {
    sub_77E4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_77B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_7794() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_5854(a3, &qword_11278, &qword_A8F8);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_5854(a3, &qword_11278, &qword_A8F8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_57E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F1C(&qword_11278, &qword_A8F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5854(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4F1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_58B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_59AC;

  return v7(a1);
}

uint64_t sub_59AC()
{
  sub_5C34();
  sub_5C4C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5C04();
  *v4 = v3;

  sub_5C40();

  return v5();
}

uint64_t sub_5A90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5AC8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_5C58(v3);
  *v4 = v5;
  v6 = sub_5C14(v4);

  return v7(v6);
}

uint64_t sub_5B60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_5C58(v3);
  *v4 = v5;
  v6 = sub_5C14(v4);

  return v7(v6);
}

uint64_t sub_5C14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_5C40()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id sub_5C7C()
{
  result = [objc_allocWithZone(type metadata accessor for WeatherSettingsState()) init];
  qword_11620 = result;
  return result;
}

id sub_5CAC()
{
  if (qword_11218 != -1)
  {
    swift_once();
  }

  v1 = qword_11620;

  return v1;
}

id sub_5DA8()
{
  v0 = objc_opt_self();
  v1 = sub_677C();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:0];

  return v2;
}

void sub_5E54()
{
  v0 = objc_opt_self();
  v1 = sub_677C();
  isa = sub_77A4().super.super.isa;
  [v0 writePreferenceForKey:v1 value:isa];
}

id sub_5F14()
{
  v0 = objc_opt_self();
  v1 = sub_677C();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:1];

  return v2;
}

void sub_5FC0()
{
  v0 = objc_opt_self();
  v1 = sub_677C();
  isa = sub_77A4().super.super.isa;
  [v0 writePreferenceForKey:v1 value:isa];
}

id sub_6080()
{
  v0 = objc_opt_self();
  v1 = sub_679C();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:0];

  return v2;
}

void sub_612C()
{
  v0 = objc_opt_self();
  v1 = sub_679C();
  isa = sub_77A4().super.super.isa;
  [v0 writePreferenceForKey:v1 value:isa];
}

uint64_t sub_6288()
{
  v1 = v0;
  v2 = *(*(sub_7684() - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC15WeatherSettings20WeatherSettingsState_predictedLocationsAuthorizationManager);
  sub_7694();
  result = sub_6320(v4);
  *(v1 + OBJC_IVAR____TtC15WeatherSettings20WeatherSettingsState_predictedLocationsAuthorization) = result;
  return result;
}

uint64_t sub_6320(uint64_t a1)
{
  v2 = sub_7684();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  v5 = 0;
  if (v4 != enum case for PredictedLocationsAuthorization.notDetermined(_:))
  {
    if (v4 == enum case for PredictedLocationsAuthorization.featureUnavailable(_:))
    {
      return 1;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.enabled(_:))
    {
      return 2;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.disabledInSystemServices(_:))
    {
      return 3;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.disabledInWeatherSettings(_:))
    {
      return 4;
    }

    else
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  return v5;
}

id sub_64A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15WeatherSettings20WeatherSettingsState_units;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for WeatherSettingsUnits()) init];
  v4 = OBJC_IVAR____TtC15WeatherSettings20WeatherSettingsState_predictedLocationsAuthorizationManager;
  v5 = sub_76C4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = sub_76B4();
  *&v1[OBJC_IVAR____TtC15WeatherSettings20WeatherSettingsState_predictedLocationsAuthorization] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t sub_65F0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_6620(Swift::UInt a1)
{
  sub_7834();
  sub_7844(a1);
  return sub_7854();
}

Swift::Int sub_66A0(uint64_t a1, Swift::UInt a2)
{
  sub_7834();
  sub_7844(a2);
  return sub_7854();
}

unint64_t sub_66E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_65F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_6728()
{
  result = qword_112C0;
  if (!qword_112C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_112C0);
  }

  return result;
}

NSString sub_677C()
{

  return sub_7774();
}

NSString sub_679C()
{

  return sub_7774();
}

unint64_t sub_67F4()
{
  result = qword_11360;
  if (!qword_11360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11360);
  }

  return result;
}

uint64_t sub_6864(void *a1, void *a2)
{
  v4 = sub_4F1C(&qword_11368, &qword_AAD0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_76E4();
  sub_705C();
  v10 = a1;
  v11 = a2;
  sub_7764();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  sub_725C();
  v13 = v10;
  v14 = v11;
  sub_7724();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_6A08(uint64_t a1)
{
  v2 = *(*(sub_7814() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_7704() - 8) + 64);
  __chkstk_darwin();
  v4 = [objc_allocWithZone(PSSpecifier) init];
  v5 = sub_7784();
  sub_7370(a1, v5, v6, v4);
  sub_7804();
  sub_76F4();
  return sub_76D4();
}

uint64_t sub_6B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_7714();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_4F1C(&unk_11380, &qword_AAE8) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_7584();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_7594();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_77D4();
  v4[16] = sub_77C4();
  v16 = sub_77B4();

  return _swift_task_switch(sub_6D44, v16, v15);
}

uint64_t sub_6D44()
{
  v2 = v0 + 10;
  v1 = v0[10];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[9];
  v6 = v0[3];

  sub_7744();
  sub_7564();
  if (sub_4F64(v5, 1, v1) == 1)
  {
    v7 = v0[8];
    v8 = v0 + 8;
    v10 = v0[2];
    v9 = v0[3];
    sub_7308(v0[9]);
    sub_7734();
    sub_7754();
    v11 = v0 + 7;
    v2 = v0 + 6;
  }

  else
  {
    v8 = v0 + 12;
    v11 = v0 + 11;
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v12 = sub_7574();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = v12 == 0xD000000000000010 && v13 == 0x800000000000B520;
      if (v16 || (sub_7824() & 1) != 0)
      {
        v18 = v0[4];
        v17 = v0[5];

        v19 = [v17 specifierIdentifierForSelectedTemperature];
        v20 = sub_7784();
        v22 = v21;

        v23 = v20;
        v24 = v22;
        v25 = v18;
      }

      else
      {
        v25 = v0[4];
        v23 = v14;
        v24 = v15;
      }

      sub_73EC(v23, v24, v25);
    }

    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];
    v30 = v0[2];
    v29 = v0[3];
    sub_7734();
    sub_7754();
    (*(v27 + 8))(v26, v28);
  }

  v31 = *v8;
  v32 = *v2;
  v34 = v0[14];
  v33 = v0[15];
  v36 = v0[12];
  v35 = v0[13];
  v38 = v0[8];
  v37 = v0[9];
  (*(*v11 + 8))(v31, v32);
  (*(v34 + 8))(v33, v35);

  v39 = v0[1];

  return v39();
}

id sub_6F90()
{
  v0 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  [objc_allocWithZone(WSWeatherSettingsController) init];
  return v0;
}

id sub_6FEC@<X0>(void *a1@<X8>)
{
  result = sub_6F90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_7014()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_705C()
{
  result = qword_11370;
  if (!qword_11370)
  {
    sub_76E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11370);
  }

  return result;
}

uint64_t sub_70B4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7168;

  return sub_6B5C(a1, a2, v7, v6);
}

uint64_t sub_7168()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_725C()
{
  result = qword_11378;
  if (!qword_11378)
  {
    sub_72C0(&qword_11368, &qword_AAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11378);
  }

  return result;
}

uint64_t sub_72C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_7308(uint64_t a1)
{
  v2 = sub_4F1C(&unk_11380, &qword_AAE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_7370(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_7774();

  [a4 setProperty:a1 forKey:v6];
}

void sub_73EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_7774();

  [a3 setSpecifierIdentifierToScrollAndHighlight:v4];
}

__n128 sub_7450(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_745C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_749C(uint64_t result, int a2, int a3)
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

uint64_t sub_74E8()
{
  sub_72C0(&qword_11368, &qword_AAD0);
  sub_725C();
  return swift_getOpaqueTypeConformance2();
}