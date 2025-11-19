id AMAmbientSettingsBundle()
{
  if (qword_C7C8 != -1)
  {
    sub_51B0();
  }

  v1 = qword_C7C0;

  return v1;
}

void sub_171C(id a1)
{
  v3 = objc_opt_self();
  v1 = [NSBundle bundleForClass:v3];
  v2 = qword_C7C0;
  qword_C7C0 = v1;
}

void sub_1ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1EFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateModeSelectionFromPreferences];
}

void sub_2720(id a1)
{
  qword_C7D0 = objc_opt_new();

  _objc_release_x1();
}

unint64_t sub_3DC4()
{
  result = qword_C760;
  if (!qword_C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C760);
  }

  return result;
}

uint64_t sub_3E34(uint64_t a1)
{
  v2 = *(*(sub_5268() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_5238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50E0(0, &qword_C7B0, &off_82D8);
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_5248();
  sub_5228();
  sub_5298();
  sub_50E0(0, &qword_C7B8, NSBundle_ptr);
  if (!sub_5358())
  {
    v9 = [objc_opt_self() mainBundle];
  }

  v10 = sub_52A8();
  v12 = v11;
  v14 = v13;
  sub_5094(&qword_C778, &type metadata accessor for PreferencesControllerView);
  sub_52B8();
  sub_5128(v10, v12, v14 & 1);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_4110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_5268();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_5288();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = sub_5218();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = *(*(sub_4A74(&qword_C788, &qword_6300) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v14 = sub_5208();
  v3[20] = v14;
  v15 = *(v14 - 8);
  v3[21] = v15;
  v16 = *(v15 + 64) + 15;
  v3[22] = swift_task_alloc();
  sub_5348();
  v3[23] = sub_5338();
  v18 = sub_5328();

  return _swift_task_switch(sub_4360, v18, v17);
}

uint64_t sub_4360()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[7];

  sub_52E8();
  sub_51D8();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v14 = v0[14];
    v15 = v0[7];
    (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
    sub_52D8();
    v0[2] = sub_51E8();
    v0[3] = v16;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_4DB4();
    v17 = sub_5368();

    v19 = 0;
    v20 = *(v17 + 16);
    v21 = _swiftEmptyArrayStorage;
LABEL_4:
    v22 = (v17 + 40 + 16 * v19);
    while (v20 != v19)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v24 = *(v22 - 1);
      v23 = *v22;
      v22 += 2;
      ++v19;
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_4E08(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v27 = _swiftEmptyArrayStorage[2];
        v26 = _swiftEmptyArrayStorage[3];
        if (v27 >= v26 >> 1)
        {
          result = sub_4E08((v26 > 1), v27 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v27 + 1;
        v28 = &_swiftEmptyArrayStorage[2 * v27];
        *(v28 + 4) = v24;
        *(v28 + 5) = v23;
        goto LABEL_4;
      }
    }

    v29 = _swiftEmptyArrayStorage[2];
    if (v29)
    {
      goto LABEL_16;
    }

    v39 = v0[22];
    sub_51F8();
    if (v40)
    {
      v41 = v0[8];

      v42 = sub_5318();

      [v41 setSpecifierIdentifierToScrollAndHighlight:v42];
    }

    else
    {
      v29 = _swiftEmptyArrayStorage[2];
      if (v29)
      {
LABEL_16:
        v30 = (v0[10] + 8);
        while (1)
        {
          v35 = *(v21 + 4);
          v34 = *(v21 + 5);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v29 - 1) > *(v21 + 3) >> 1)
          {
            v21 = sub_4F34(isUniquelyReferenced_nonNull_native, v29, 1, v21);
          }

          sub_5040((v21 + 32));
          v37 = *(v21 + 2);
          memmove(v21 + 32, v21 + 48, 16 * v37 - 16);
          *(v21 + 2) = v37 - 1;
          if (v35 == 0xD000000000000019 && 0x80000000000067C0 == v34)
          {
          }

          else
          {
            v38 = sub_5378();

            if ((v38 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          v31 = v0[14];
          v32 = v0[11];
          v33 = v0[9];
          sub_50E0(0, &qword_C798, off_82D0);
          sub_5258();
          sub_5094(&qword_C7A0, &type metadata accessor for PreferencesControllerRecipe);
          sub_5278();
          (*v30)(v32, v33);
LABEL_19:
          v29 = *(v21 + 2);
          if (!v29)
          {

            goto LABEL_30;
          }
        }
      }
    }

LABEL_30:
    v44 = v0[21];
    v43 = v0[22];
    v45 = v0[20];
    v47 = v0[13];
    v46 = v0[14];
    v48 = v0[12];
    v49 = v0[6];
    sub_52F8();
    (*(v47 + 8))(v46, v48);
    (*(v44 + 8))(v43, v45);
    goto LABEL_31;
  }

  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v13 = v0[6];
  v12 = v0[7];
  sub_4D4C(v0[19]);
  sub_52D8();
  sub_52F8();
  (*(v11 + 8))(v9, v10);
LABEL_31:
  v50 = v0[22];
  v51 = v0[18];
  v52 = v0[19];
  v54 = v0[14];
  v53 = v0[15];
  v55 = v0[11];

  v56 = v0[1];

  return v56();
}

uint64_t sub_4840()
{
  v1 = sub_4A74(&qword_C768, &qword_62E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v12 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_4A74(&qword_C770, &qword_62E8);
  v8 = sub_5238();
  v9 = sub_5094(&qword_C778, &type metadata accessor for PreferencesControllerView);
  v12[0] = v8;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_5308();
  *(swift_allocObject() + 16) = v7;
  sub_4CA0();
  v10 = v7;
  sub_52C8();
  return (*(v2 + 8))(v5, v1);
}

id sub_4A38@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_4A74(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4ABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4AFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4BAC;

  return sub_4110(a1, a2, v6);
}

uint64_t sub_4BAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_4CA0()
{
  result = qword_C780;
  if (!qword_C780)
  {
    sub_4D04(&qword_C768, &qword_62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C780);
  }

  return result;
}

uint64_t sub_4D04(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4D4C(uint64_t a1)
{
  v2 = sub_4A74(&qword_C788, &qword_6300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4DB4()
{
  result = qword_C790;
  if (!qword_C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C790);
  }

  return result;
}

char *sub_4E08(char *a1, int64_t a2, char a3)
{
  result = sub_4E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4E28(char *result, int64_t a2, char a3, char *a4)
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
    sub_4A74(&qword_C7A8, &qword_6308);
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

char *sub_4F34(char *result, int64_t a2, char a3, char *a4)
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
    sub_4A74(&qword_C7A8, &qword_6308);
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

uint64_t sub_5094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_50E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_5128(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_5148()
{
  sub_4D04(&qword_C768, &qword_62E0);
  sub_4CA0();
  return swift_getOpaqueTypeConformance2();
}