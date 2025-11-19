unint64_t sub_18F0()
{
  result = qword_CA70;
  if (!qword_CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA70);
  }

  return result;
}

uint64_t sub_1960(void *a1)
{
  v3 = sub_2590(&qword_CA78, &qword_5E60);
  v4 = sub_2DEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = v18 - v9;
  *(swift_allocObject() + 16) = a1;
  v11 = a1;
  sub_2590(&qword_CA80, &qword_5E68);
  v12 = sub_4B08();
  sub_2DC4();
  v15 = sub_2CB0(v13, v14);
  v18[0] = v12;
  v18[1] = v15;
  swift_getOpaqueTypeConformance2();
  sub_4BD8();
  *(swift_allocObject() + 16) = v11;
  sub_27BC();
  v16 = v11;
  sub_4B98();
  return (*(v6 + 8))(v10, v1);
}

uint64_t sub_1B38(uint64_t a1)
{
  v3 = *(*(sub_4B38() - 8) + 64);
  (__chkstk_darwin)();
  v4 = sub_4B08();
  v5 = sub_2DEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CFC(0, &qword_CAC8, off_8288);
  v12 = [objc_allocWithZone(PSSpecifier) init];
  v13 = sub_4BF8();
  sub_2A74(a1, v13, v14, v12);
  sub_2E04();
  sub_4B18();
  sub_4AF8();
  sub_4B68();
  sub_2CFC(0, &qword_CAD0, NSBundle_ptr);
  if (!sub_4C38())
  {
    v15 = [objc_opt_self() mainBundle];
  }

  sub_2E10();
  sub_4B78();
  sub_2DC4();
  sub_2CB0(v16, v17);
  sub_2E10();
  sub_4B88();
  v18 = sub_2E10();
  sub_2D3C(v18, v19, v20);

  return (*(v7 + 8))(v11, v1);
}

uint64_t sub_1DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_4B38();
  v3[9] = v4;
  sub_2DDC(v4);
  v3[10] = v5;
  v7 = *(v6 + 64);
  v3[11] = sub_2E1C();
  v8 = sub_4B58();
  v3[12] = v8;
  sub_2DDC(v8);
  v3[13] = v9;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v12 = sub_4AE8();
  v3[16] = v12;
  sub_2DDC(v12);
  v3[17] = v13;
  v15 = *(v14 + 64);
  v3[18] = sub_2E1C();
  v16 = *(*(sub_2590(&qword_CA98, &qword_5E80) - 8) + 64);
  v3[19] = sub_2E1C();
  v17 = sub_4AD8();
  v3[20] = v17;
  sub_2DDC(v17);
  v3[21] = v18;
  v20 = *(v19 + 64);
  v3[22] = sub_2E1C();
  sub_4C28();
  v3[23] = sub_4C18();
  v22 = sub_4C08();

  return _swift_task_switch(sub_1FEC, v22, v21);
}

uint64_t sub_1FEC()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[7];

  sub_4BB8();
  sub_4AA8();
  v8 = *(v5 + 8);
  v9 = sub_2E10();
  v10(v9);
  if (sub_2990(v3, 1, v2) != 1)
  {
    v16 = v0[14];
    v17 = v0[7];
    (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
    sub_4BA8();
    v0[2] = sub_4AB8();
    v0[3] = v18;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_2A20();
    v19 = sub_4C48();

    v21 = 0;
    v22 = *(v19 + 16);
    v23 = v19 + 40;
    v24 = &_swiftEmptyArrayStorage;
LABEL_4:
    v25 = (v23 + 16 * v21);
    while (v22 != v21)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        return result;
      }

      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = HIBYTE(*v25) & 0xF;
      if ((*v25 & 0x2000000000000000) == 0)
      {
        v28 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        if (v26 != 0xD000000000000013 || 0x8000000000005A00 != v27)
        {
          sub_2E04();
          result = sub_4C58();
          if ((result & 1) == 0)
          {

            result = swift_isUniquelyReferenced_nonNull_native();
            v73 = v24;
            if ((result & 1) == 0)
            {
              result = sub_2868(0, *(v24 + 2) + 1, 1);
            }

            v23 = v19 + 40;
            v31 = *(v24 + 2);
            v30 = *(v24 + 3);
            v32 = v31 + 1;
            if (v31 >= v30 >> 1)
            {
              v34 = v31 + 1;
              v72 = v31;
              result = sub_2868((v30 > 1), v31 + 1, 1);
              v32 = v34;
              v31 = v72;
              v23 = v19 + 40;
              v24 = v73;
            }

            ++v21;
            *(v24 + 2) = v32;
            v33 = &v24[16 * v31];
            *(v33 + 4) = v26;
            *(v33 + 5) = v27;
            goto LABEL_4;
          }
        }
      }

      v25 += 2;
      ++v21;
    }

    v35 = *(v24 + 2);
    if (v35)
    {
      goto LABEL_22;
    }

    v52 = v0[22];
    v53 = sub_4AC8();
    if (v54)
    {
      v55 = v53;
      v56 = v54;
      v57 = v0[8];

      sub_2AF0(v55, v56, v57);
    }

    else
    {
      v35 = *(v24 + 2);
      if (v35)
      {
LABEL_22:
        v36 = (v0[10] + 8);
        while (1)
        {
          v38 = *(v24 + 4);
          v37 = *(v24 + 5);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v35 - 1) > *(v24 + 3) >> 1)
          {
            v24 = sub_2B54(isUniquelyReferenced_nonNull_native, v35, 1, v24);
          }

          sub_2C5C((v24 + 32));
          v40 = *(v24 + 2);
          memmove(v24 + 32, v24 + 48, 16 * v40 - 16);
          *(v24 + 2) = v40 - 1;
          v41 = v38 == 0xD000000000000019 && 0x8000000000005A20 == v37;
          if (v41 || (sub_4C58() & 1) != 0)
          {

            v42 = &unk_CAB8;
            v43 = off_8280;
          }

          else
          {
            if (v38 == 0xD000000000000015 && 0x8000000000005A40 == v37)
            {
            }

            else
            {
              v51 = sub_4C58();

              if ((v51 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            v42 = &unk_CAA8;
            v43 = &off_8290;
          }

          sub_2CFC(0, v42, v43);
          v44 = v0[14];
          v45 = v0[11];
          v46 = v0[9];
          sub_4B28();
          sub_2CB0(&qword_CAB0, &type metadata accessor for PreferencesControllerRecipe);
          sub_2E04();
          sub_4B48();
          v47 = *v36;
          v48 = sub_2E04();
          v49(v48);
LABEL_33:
          v35 = *(v24 + 2);
          if (!v35)
          {

            goto LABEL_45;
          }
        }
      }
    }

LABEL_45:
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v62 = v0[13];
    v61 = v0[14];
    v63 = v0[12];
    v64 = v0[6];
    sub_4BC8();
    (*(v62 + 8))(v61, v63);
    (*(v59 + 8))(v58, v60);
    goto LABEL_46;
  }

  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v15 = v0[6];
  v14 = v0[7];
  sub_29B8(v0[19]);
  sub_4BA8();
  sub_4BC8();
  (*(v13 + 8))(v11, v12);
LABEL_46:
  v65 = v0[22];
  v66 = v0[18];
  v67 = v0[19];
  v69 = v0[14];
  v68 = v0[15];
  v70 = v0[11];

  v71 = v0[1];

  return v71();
}

id sub_2528()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

id sub_2568@<X0>(void *a1@<X8>)
{
  result = sub_2528();
  *a1 = result;
  return result;
}

uint64_t sub_2590(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2618(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26C8;

  return sub_1DDC(a1, a2, v6);
}

uint64_t sub_26C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_27BC()
{
  result = qword_CA90;
  if (!qword_CA90)
  {
    sub_2820(&qword_CA78, &qword_5E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA90);
  }

  return result;
}

uint64_t sub_2820(uint64_t *a1, uint64_t *a2)
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

char *sub_2868(char *a1, int64_t a2, char a3)
{
  result = sub_2888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2888(char *result, int64_t a2, char a3, char *a4)
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
    sub_2590(&qword_CAC0, &qword_5E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29B8(uint64_t a1)
{
  v2 = sub_2590(&qword_CA98, &qword_5E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2A20()
{
  result = qword_CAA0;
  if (!qword_CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CAA0);
  }

  return result;
}

void sub_2A74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_4BE8();

  [a4 setProperty:a1 forKey:v6];
}

void sub_2AF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_4BE8();

  [a3 setSpecifierIdentifierToScrollAndHighlight:v4];
}

char *sub_2B54(char *result, int64_t a2, char a3, char *a4)
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
    sub_2590(&qword_CAC0, &qword_5E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2CFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2D3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2D5C()
{
  sub_2820(&qword_CA78, &qword_5E60);
  sub_27BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2E1C()
{

  return swift_task_alloc();
}

id getWFShortcutsSettingsLogObject()
{
  if (qword_CCA0 != -1)
  {
    dispatch_once(&qword_CCA0, &stru_8610);
  }

  v1 = qword_CCA8;

  return v1;
}

void sub_3A64(id a1)
{
  qword_CCA8 = os_log_create(WFLogSubsystem, "ShortcutsSettings");

  _objc_release_x1();
}

id WFShortcutsSettingsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFShortcutsSettingsGetValueForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:0 table:v3];

  return v6;
}