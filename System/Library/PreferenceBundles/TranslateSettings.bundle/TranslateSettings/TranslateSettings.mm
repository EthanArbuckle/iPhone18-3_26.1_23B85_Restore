unint64_t sub_1590()
{
  result = qword_8148;
  if (!qword_8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t sub_1600(uint64_t a1)
{
  v2 = *(*(sub_2A38() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_2A08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28D8(0, &qword_8198, LTUITranslateSettingsController_ptr);
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_2A18();
  sub_29F8();
  sub_2A68();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11 = sub_2A78();
  v13 = v12;
  LOBYTE(ObjCClassFromMetadata) = v14;
  sub_288C(&qword_8160, &type metadata accessor for PreferencesControllerView);
  sub_2A88();
  sub_2920(v11, v13, ObjCClassFromMetadata & 1);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_2A38();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_2A58();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = sub_29E8();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = *(*(sub_226C(&qword_8170, &qword_2E10) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v14 = sub_29D8();
  v3[20] = v14;
  v15 = *(v14 - 8);
  v3[21] = v15;
  v16 = *(v15 + 64) + 15;
  v3[22] = swift_task_alloc();
  sub_2B18();
  v3[23] = sub_2B08();
  v18 = sub_2AF8();

  return _swift_task_switch(sub_1AF0, v18, v17);
}

uint64_t sub_1AF0()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[7];

  sub_2AB8();
  sub_29A8();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v13 = v0[6];
    v12 = v0[7];
    sub_2544(v0[19]);
    sub_2AA8();
    sub_2AC8();
    (*(v11 + 8))(v9, v10);
    goto LABEL_39;
  }

  v14 = v0[14];
  v15 = v0[7];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  sub_2AA8();
  v0[2] = sub_29B8();
  v0[3] = v16;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_25AC();
  v17 = sub_2B28();

  v19 = *(v17 + 16);
  if (!v19)
  {
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v20 = 0;
  v21 = -v19;
  v22 = v17 + 40;
  v23 = _swiftEmptyArrayStorage;
  do
  {
    v24 = (v22 + 16 * v20++);
    while (1)
    {
      if ((v20 - 1) >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v25 = *(v24 - 1);
      v26 = *v24;
      v27 = HIBYTE(*v24) & 0xF;
      if ((*v24 & 0x2000000000000000) == 0)
      {
        v27 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        if (v25 != 0xD000000000000013 || 0x8000000000002E70 != v26)
        {
          v29 = *(v24 - 1);
          v30 = *v24;
          result = sub_2B38();
          if ((result & 1) == 0)
          {
            break;
          }
        }
      }

      ++v20;
      v24 += 2;
      if (v21 + v20 == 1)
      {
        goto LABEL_23;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v63 = v22;
    if ((result & 1) == 0)
    {
      result = sub_2600(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v32 = _swiftEmptyArrayStorage[2];
    v31 = _swiftEmptyArrayStorage[3];
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_2600((v31 > 1), v32 + 1, 1);
      v33 = v32 + 1;
    }

    _swiftEmptyArrayStorage[2] = v33;
    v34 = &_swiftEmptyArrayStorage[2 * v32];
    *(v34 + 4) = v25;
    *(v34 + 5) = v26;
    v22 = v63;
  }

  while (v21 + v20);
LABEL_23:

  v35 = _swiftEmptyArrayStorage[2];
  if (v35)
  {
    goto LABEL_24;
  }

  v45 = v0[22];
  sub_29C8();
  if (v46)
  {
    v47 = v0[8];

    v48 = sub_2AE8();

    [v47 setSpecifierIdentifierToScrollAndHighlight:v48];

    goto LABEL_38;
  }

  v35 = _swiftEmptyArrayStorage[2];
  if (v35)
  {
LABEL_24:
    v36 = (v0[10] + 8);
    while (1)
    {
      v41 = *(v23 + 4);
      v40 = *(v23 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v35 - 1) > *(v23 + 3) >> 1)
      {
        v23 = sub_272C(isUniquelyReferenced_nonNull_native, v35, 1, v23);
      }

      sub_2838((v23 + 32));
      v43 = *(v23 + 2);
      memmove(v23 + 32, v23 + 48, 16 * v43 - 16);
      *(v23 + 2) = v43 - 1;
      if (v41 == 0xD00000000000001ELL && 0x8000000000002E90 == v40)
      {
      }

      else
      {
        v44 = sub_2B38();

        if ((v44 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v37 = v0[14];
      v38 = v0[11];
      v39 = v0[9];
      sub_28D8(0, &qword_8180, LTUITranslateSettingsDownloadController_ptr);
      sub_2A28();
      sub_288C(&qword_8188, &type metadata accessor for PreferencesControllerRecipe);
      sub_2A48();
      (*v36)(v38, v39);
LABEL_27:
      v35 = *(v23 + 2);
      if (!v35)
      {

        goto LABEL_38;
      }
    }
  }

LABEL_38:
  v50 = v0[21];
  v49 = v0[22];
  v51 = v0[20];
  v53 = v0[13];
  v52 = v0[14];
  v54 = v0[12];
  v55 = v0[6];
  sub_2AC8();
  (*(v53 + 8))(v52, v54);
  (*(v50 + 8))(v49, v51);
LABEL_39:
  v56 = v0[22];
  v57 = v0[18];
  v58 = v0[19];
  v60 = v0[14];
  v59 = v0[15];
  v61 = v0[11];

  v62 = v0[1];

  return v62();
}

uint64_t sub_2038()
{
  v1 = sub_226C(&qword_8150, &qword_2DF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v12 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_226C(&qword_8158, &qword_2DF8);
  v8 = sub_2A08();
  v9 = sub_288C(&qword_8160, &type metadata accessor for PreferencesControllerView);
  v12[0] = v8;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_2AD8();
  *(swift_allocObject() + 16) = v7;
  sub_2498();
  v10 = v7;
  sub_2A98();
  return (*(v2 + 8))(v5, v1);
}

id sub_2230@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_226C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_22B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_22F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23A4;

  return sub_18A0(a1, a2, v6);
}

uint64_t sub_23A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2498()
{
  result = qword_8168;
  if (!qword_8168)
  {
    sub_24FC(&qword_8150, &qword_2DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8168);
  }

  return result;
}

uint64_t sub_24FC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2544(uint64_t a1)
{
  v2 = sub_226C(&qword_8170, &qword_2E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AC()
{
  result = qword_8178;
  if (!qword_8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8178);
  }

  return result;
}

char *sub_2600(char *a1, int64_t a2, char a3)
{
  result = sub_2620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2620(char *result, int64_t a2, char a3, char *a4)
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
    sub_226C(&qword_8190, &qword_2E18);
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

char *sub_272C(char *result, int64_t a2, char a3, char *a4)
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
    sub_226C(&qword_8190, &qword_2E18);
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

uint64_t sub_288C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2920(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2940()
{
  sub_24FC(&qword_8150, &qword_2DF0);
  sub_2498();
  return swift_getOpaqueTypeConformance2();
}