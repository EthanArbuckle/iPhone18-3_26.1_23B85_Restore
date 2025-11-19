id sub_21D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = *(a1 + 32);
  v11 = a6;
  v12 = a5;
  v13 = [PSSpecifier preferenceSpecifierNamed:a2 target:v10 set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:a4 cell:a3 edit:0];
  [v13 setObject:v12 forKeyedSubscript:PSKeyNameKey];

  [v13 setObject:v11 forKeyedSubscript:PSDefaultValueKey];
  [v13 setObject:RCVoiceMemosBundleID forKeyedSubscript:PSDefaultsKey];

  return v13;
}

void sub_2698(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

unint64_t sub_2950()
{
  result = qword_C4A8;
  if (!qword_C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4A8);
  }

  return result;
}

uint64_t sub_29C0(uint64_t a1)
{
  v2 = *(*(sub_3828() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_3758() - 8) + 64);
  __chkstk_darwin();
  v4 = [objc_allocWithZone(PSSpecifier) init];
  [v4 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_3818();
  sub_3748();
  return sub_3718();
}

uint64_t sub_2AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_3758();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_3778();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_3708();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_3808();
  v4[15] = sub_37F8();
  v15 = sub_37E8();

  return _swift_task_switch(sub_2CAC, v15, v14);
}

uint64_t sub_2CAC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[3];

  sub_37A8();
  v7 = sub_36F8();
  v9 = v8;
  (*(v4 + 8))(v2, v3);
  sub_3798();
  v10 = v7 == 0xD00000000000001BLL && 0x8000000000004670 == v9;
  if (v10 || (sub_3838() & 1) != 0 || v7 == 0xD000000000000024 && 0x8000000000004690 == v9 || (sub_3838() & 1) != 0)
  {
    v11 = v0[4];
    v12 = sub_37D8();

    v13 = [v11 specifierForID:v12];

    if (v13)
    {
      v14 = v0[11];
      v16 = v0[7];
      v15 = v0[8];
      v17 = v0[6];
      v18 = v0[4];
      [v13 setTarget:v18];
      v19 = sub_37D8();
      [v13 setProperty:v18 forKey:v19];

      sub_355C();
      v20 = v13;
      sub_3738();
      sub_35A8(&unk_C4D0, &type metadata accessor for PreferencesControllerRecipe);
      sub_3768();

      (*(v16 + 8))(v15, v17);
    }
  }

  else if (v7 == 0xD000000000000022 && 0x80000000000046C0 == v9 || (sub_3838() & 1) != 0 || v7 == 0xD00000000000001ELL && 0x80000000000046F0 == v9 || (sub_3838() & 1) != 0 || v7 == 0xD00000000000001CLL && 0x8000000000004710 == v9 || (sub_3838() & 1) != 0)
  {
    v29 = v0[5];
    v30 = sub_37D8();

    [v29 setSpecifierIdentifierToScrollAndHighlight:v30];
  }

  else
  {
  }

  v21 = v0[14];
  v23 = v0[10];
  v22 = v0[11];
  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[2];
  sub_37B8();
  (*(v23 + 8))(v22, v24);

  v27 = v0[1];

  return v27();
}

uint64_t sub_304C()
{
  v1 = sub_3278(&qword_C4B0, &qword_4100);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_3728();
  sub_35A8(&qword_C4B8, &type metadata accessor for PreferencesControllerView);
  v9 = v6;
  v10 = v7;
  sub_37C8();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  sub_34B0();
  v12 = v9;
  v13 = v10;
  sub_3788();
  return (*(v2 + 8))(v5, v1);
}

id sub_321C@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(RCVoiceMemosSettingsController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
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

uint64_t sub_32C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3308(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_33BC;

  return sub_2AFC(a1, a2, v7, v6);
}

uint64_t sub_33BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_34B0()
{
  result = qword_C4C0;
  if (!qword_C4C0)
  {
    sub_3514(&qword_C4B0, &qword_4100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4C0);
  }

  return result;
}

uint64_t sub_3514(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_355C()
{
  result = qword_C4C8;
  if (!qword_C4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4C8);
  }

  return result;
}

uint64_t sub_35A8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_35F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_35FC(uint64_t *a1, int a2)
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

uint64_t sub_3644(uint64_t result, int a2, int a3)
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

uint64_t sub_3690()
{
  sub_3514(&qword_C4B0, &qword_4100);
  sub_34B0();
  return swift_getOpaqueTypeConformance2();
}