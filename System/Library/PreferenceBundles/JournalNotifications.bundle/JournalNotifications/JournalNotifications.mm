__n128 initializeBufferWithCopyOfBuffer for Coordinate(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Coordinate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Coordinate(uint64_t result, int a2, int a3)
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

uint64_t sub_2684()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_C5FC4(19);
  v3 = [v0 entity];
  v4 = [v3 managedObjectClassName];

  if (v4)
  {
    v5 = sub_C5484();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  v13._countAndFlagsBits = v5;
  v13._object = v2;
  sub_C5524(v13);

  v14._countAndFlagsBits = 23328;
  v14._object = 0xE200000000000000;
  sub_C5524(v14);
  v7 = [v1 objectID];
  v8 = [v7 pl_shortURI];

  if (v8)
  {
    v9 = sub_C5484();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v15._countAndFlagsBits = v9;
  v15._object = v11;
  sub_C5524(v15);

  v16._countAndFlagsBits = 0x7865746E6F63205DLL;
  v16._object = 0xEB00000000203A74;
  sub_C5524(v16);
  [v1 managedObjectContext];
  sub_3CB0(&qword_1043B0);
  v17._countAndFlagsBits = sub_C54C4();
  sub_C5524(v17);

  return 0;
}

uint64_t sub_2860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C5484();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_28F0(_DWORD *a1, int *a2)
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

_DWORD *sub_2920@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_294C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_2A70@<X0>(void *a1@<X8>)
{
  result = sub_C3FB4();
  *a1 = v3;
  return result;
}

BOOL sub_2AC0(void *a1, uint64_t *a2)
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

uint64_t sub_2B18(uint64_t a1, id *a2)
{
  result = sub_C5464();
  *a2 = 0;
  return result;
}

uint64_t sub_2B90(uint64_t a1, id *a2)
{
  v3 = sub_C5474();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2C10@<X0>(void *a1@<X8>)
{
  sub_C5484();
  v2 = sub_C5444();

  *a1 = v2;
  return result;
}

void *sub_2C7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2CA8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_2DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_2E40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C5854();
  *a1 = result;
  return result;
}

_DWORD *sub_2E78@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2EA8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_4A5C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2EE8()
{
  sub_3738(&qword_1046A0, type metadata accessor for FileProtectionType);
  sub_3738(&qword_1046A8, type metadata accessor for FileProtectionType);

  return sub_C6124();
}

uint64_t sub_2FA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_4A94(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2FE4()
{
  sub_3738(&qword_104580, type metadata accessor for Key);
  sub_3738(&qword_104588, type metadata accessor for Key);

  return sub_C6124();
}

uint64_t sub_30A0()
{
  sub_3738(&qword_104570, type metadata accessor for OptionKey);
  sub_3738(&qword_104578, type metadata accessor for OptionKey);

  return sub_C6124();
}

uint64_t sub_315C()
{
  sub_3738(&qword_1045B0, type metadata accessor for MKPointOfInterestCategory);
  sub_3738(&qword_1045B8, type metadata accessor for MKPointOfInterestCategory);

  return sub_C6124();
}

uint64_t sub_3218()
{
  sub_3738(&qword_104618, type metadata accessor for AttributeName);
  sub_3738(&qword_104620, type metadata accessor for AttributeName);

  return sub_C6124();
}

uint64_t sub_32D4()
{
  sub_3738(&qword_1045E0, type metadata accessor for FeatureKey);
  sub_3738(&qword_1045E8, type metadata accessor for FeatureKey);

  return sub_C6124();
}

uint64_t sub_3390()
{
  sub_3738(&qword_104608, type metadata accessor for TraitKey);
  sub_3738(&qword_104610, type metadata accessor for TraitKey);

  return sub_C6124();
}

void *sub_344C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_345C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_3468()
{
  sub_3738(&qword_1045F0, type metadata accessor for Weight);
  sub_3738(&qword_1045F8, type metadata accessor for Weight);
  sub_4ACC();
  return sub_C6124();
}

uint64_t sub_3530()
{
  sub_3738(&qword_1046B0, type metadata accessor for SystemDesign);
  sub_3738(&qword_1046B8, type metadata accessor for SystemDesign);

  return sub_C6124();
}

uint64_t sub_35EC()
{
  sub_3738(&qword_1043A0, type metadata accessor for DynamicRange);
  sub_3738(&qword_1043A8, type metadata accessor for DynamicRange);

  return sub_C6124();
}

uint64_t sub_3738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3780()
{
  sub_3738(&qword_1045A0, type metadata accessor for NLTagScheme);
  sub_3738(&qword_1045A8, type metadata accessor for NLTagScheme);

  return sub_C6124();
}

uint64_t sub_383C()
{
  sub_3738(&qword_104590, type metadata accessor for NLTag);
  sub_3738(&qword_104598, type metadata accessor for NLTag);

  return sub_C6124();
}

uint64_t sub_38F8@<X0>(void *a1@<X8>)
{
  v2 = sub_C5444();

  *a1 = v2;
  return result;
}

uint64_t sub_3940()
{
  sub_3738(&qword_1045C0, type metadata accessor for GEOPOICategory);
  sub_3738(&qword_1045C8, type metadata accessor for GEOPOICategory);

  return sub_C6124();
}

uint64_t sub_39FC()
{
  sub_3738(&qword_1045D0, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_3738(&qword_1045D8, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_C6124();
}

void sub_3AC0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_C6324(*&v1);
}

uint64_t sub_3B14()
{
  sub_C5484();
  v0 = sub_C5584();

  return v0;
}

uint64_t sub_3B50()
{
  sub_C5484();
  sub_C5514();
}

Swift::Int sub_3BA4()
{
  sub_C5484();
  sub_C62F4();
  sub_C5514();
  v0 = sub_C6344();

  return v0;
}

uint64_t sub_3CB0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_3D5C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3D68(uint64_t a1, int a2)
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

uint64_t sub_3D88(uint64_t result, int a2, int a3)
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

__n128 sub_3DC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for JournalNotificationsManager.CompatibilityScheduleItem(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JournalNotificationsManager.CompatibilityScheduleItem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_3E48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_4314()
{
  v0 = sub_C5484();
  v2 = v1;
  if (v0 == sub_C5484() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_C6244();
  }

  return v5 & 1;
}

uint64_t sub_4A5C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_4A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_4ACC()
{
  result = qword_104600;
  if (!qword_104600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104600);
  }

  return result;
}

void sub_4B84(uint64_t a1, unint64_t *a2)
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

void sub_4F30(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_C5EE4();
    sub_BE28(0, &qword_104790);
    sub_B7BC();
    sub_C5824();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
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
    if (!sub_C5F24() || (sub_BE28(0, &qword_104790), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_B824();
      return;
    }

LABEL_16:
    sub_C3FE4();
    if (swift_dynamicCastClass())
    {
      sub_C5654();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_C56A4();
      }

      sub_C56D4();
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

uint64_t sub_5190()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_104758);
  v1 = sub_B680(v0, qword_104758);
  if (qword_1042D8 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_115668);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_5258(unint64_t a1)
{
  v2 = 0;
  v3 = sub_3CB0(&qword_104770);
  __chkstk_darwin(v3);
  v202 = &v188 - v4;
  v212 = sub_C49F4();
  v5 = *(v212 - 1);
  __chkstk_darwin(v212);
  v211 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CB0(&qword_104778);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  p_align = (&v188 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = &v188 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = (&v188 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = (&v188 - v21);
  v23 = __chkstk_darwin(v20);
  v210 = &v188 - v24;
  __chkstk_darwin(v23);
  v209 = &v188 - v25;
  v214 = sub_C3D14();
  *&v204 = *(v214 - 8);
  v26 = __chkstk_darwin(v214);
  v28 = &v188 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v208 = &v188 - v29;
  v30 = [a1 userInfo];
  if (!v30)
  {
    return;
  }

  v206 = v22;
  v193 = v5;
  v31 = v30;
  v205 = sub_C52B4();

  if (qword_104130 == -1)
  {
    goto LABEL_3;
  }

LABEL_219:
  swift_once();
LABEL_3:
  v32 = sub_C4CD4();
  v33 = sub_B680(v32, qword_104758);
  v34 = a1;
  v207 = v33;
  v35 = sub_C4CB4();
  v36 = sub_C5A34();

  v37 = os_log_type_enabled(v35, v36);
  v196 = v10;
  v201 = p_align;
  v197 = v16;
  v203 = v19;
  v198 = v3;
  v195 = v28;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v226[0] = v16;
    *v38 = 136315138;
    v39 = [v34 name];
    v40 = sub_C5484();
    v28 = v41;

    v42 = sub_BA920(v40, v28, v226);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v36, "Responding to NSManagedObjectContextObjectsDidChange notification: %s", v38, 0xCu);
    sub_BED0(v16);
  }

  v43 = v205;
  v219 = &_swiftEmptySetSingleton;
  v220 = sub_C5484();
  v221 = v44;
  sub_C5F64();
  if (*(v43 + 16) && (a1 = v43, v45 = sub_23FB0(v226), (v46 & 1) != 0))
  {
    sub_B760(*(v43 + 56) + 32 * v45, v225);
    sub_B6B8(v226);
    sub_3CB0(&qword_104788);
    if (swift_dynamicCast())
    {
      sub_4F30(v220);
      v28 = v47;

      v226[0] = &_swiftEmptyArrayStorage;
      if (v28 >> 62)
      {
        v3 = sub_C60E4();
      }

      else
      {
        v3 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      }

      v194 = v2;
      if (v3)
      {
        v16 = 0;
        v213 = v28 & 0xC000000000000001;
        v2 = (v28 & 0xFFFFFFFFFFFFFF8);
        p_align = &stru_FAFE8.align;
        while (1)
        {
          if (v213)
          {
            v48 = sub_C5FE4();
          }

          else
          {
            if (v16 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_215;
            }

            v48 = *(v28 + 8 * v16 + 32);
          }

          v49 = v48;
          v10 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_214;
          }

          v50 = [v48 entry];
          if (v50)
          {
            a1 = v50;
            v51 = [v50 p_align[305]];
          }

          else
          {
            v51 = 0;
          }

          v19 = p_align;
          v52 = [*(v215 + 32) p_align[305]];
          v53 = v52;
          if (v51)
          {
            if (!v52)
            {

              goto LABEL_13;
            }

            sub_BE28(0, &qword_1047A0);
            a1 = sub_C5D44();

            if ((a1 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (v52)
          {

LABEL_27:
            goto LABEL_13;
          }

          a1 = v226;
          sub_C6064();
          sub_C6094();
          sub_C60A4();
          sub_C6074();
LABEL_13:
          ++v16;
          p_align = v19;
          if (v10 == v3)
          {
            v89 = v226[0];
            v2 = v194;
            v43 = v205;
            goto LABEL_66;
          }
        }
      }

      v89 = &_swiftEmptyArrayStorage;
LABEL_66:

      if (v89 < 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = (v89 >> 62) & 1;
      }

      if (v3 == 1)
      {
        v200 = sub_C60E4();
        if (!v200)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v200 = *(v89 + 16);
        if (!v200)
        {
          goto LABEL_222;
        }
      }

      v90 = sub_C4CB4();
      v91 = sub_C5A34();
      v92 = os_log_type_enabled(v90, v91);
      v213 = v89;
      if (v92)
      {
        v10 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v226[0] = v188;
        *v10 = 134218242;
        v192 = v3;
        v191 = v90;
        v189 = v91;
        if (v3)
        {
          v93 = sub_C60E4();
        }

        else
        {
          v93 = *(v89 + 16);
        }

        v116 = v206;
        *(v10 + 4) = v93;

        a1 = 0;
        v190 = v10;
        *(v10 + 12) = 2080;
        v199 = (v89 & 0xC000000000000001);
        v28 = v204 + 56;
        p_align = (v204 + 48);
        v16 = &_swiftEmptyArrayStorage;
        v2 = (v204 + 32);
        do
        {
          if (v199)
          {
            v117 = sub_C5FE4();
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (a1 >= *(v89 + 16))
            {
              goto LABEL_218;
            }

            v117 = *(v89 + 8 * a1 + 32);
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          v118 = v117;
          v119 = [v118 id];
          if (v119)
          {
            v120 = v119;
            sub_C3CF4();

            v116 = v206;
            v121 = 0;
          }

          else
          {
            v121 = 1;
          }

          v10 = v214;
          (*v28)(v116, v121, 1, v214);
          v122 = v210;
          sub_B874(v116, v210);
          v123 = v122;
          v19 = v209;
          sub_B874(v123, v209);

          if ((*p_align)(v19, 1, v10) == 1)
          {
            sub_C060(v19, &qword_104778);
          }

          else
          {
            v124 = *v2;
            (*v2)(v208, v19, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_48230(0, *(v16 + 16) + 1, 1, v16);
            }

            v10 = *(v16 + 16);
            v125 = *(v16 + 24);
            if (v10 >= v125 >> 1)
            {
              v16 = sub_48230(v125 > 1, v10 + 1, 1, v16);
            }

            *(v16 + 16) = v10 + 1;
            v124((v16 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v10), v208, v214);
            v116 = v206;
          }

          v89 = v213;
          ++a1;
        }

        while (v3 != v200);
        v126 = sub_C5684();
        v128 = v127;

        v129 = sub_BA920(v126, v128, v226);

        v130 = v190;
        *(v190 + 14) = v129;
        v89 = v213;
        v131 = v191;
        _os_log_impl(&dword_0, v191, v189, "Processing %ld asset inserts: %s", v130, 0x16u);
        sub_BED0(v188);

        v2 = v194;
        v43 = v205;
        if (!v192)
        {
LABEL_140:
          v95 = *(v89 + 16);
          if (v95)
          {
            goto LABEL_141;
          }

          goto LABEL_222;
        }
      }

      else
      {

        if (!v3)
        {
          goto LABEL_140;
        }
      }

      v95 = sub_C60E4();
      if (v95)
      {
LABEL_141:
        if (v95 < 1)
        {
          __break(1u);
          return;
        }

        v132 = 0;
        v209 = v89 & 0xC000000000000001;
        LODWORD(v208) = enum case for AssetType.reflection(_:);
        v133 = (v193 + 104);
        v134 = (v193 + 8);
        v210 = v95;
        while (1)
        {
          if (v209)
          {
            v136 = sub_C5FE4();
          }

          else
          {
            v136 = *(v89 + 8 * v132 + 32);
          }

          v137 = v136;
          v138 = [v136 assetType];
          if (v138)
          {
            v139 = v138;
            v16 = sub_C5484();
            v141 = v140;
          }

          else
          {
            v16 = 0;
            v141 = 0;
          }

          v142 = v211;
          v143 = v212;
          (*v133)(v211, v208, v212);
          v28 = sub_C49E4();
          v145 = v144;
          (*v134)(v142, v143);
          if (v141)
          {
            if (v16 == v28 && v141 == v145)
            {

              v89 = v213;
LABEL_157:
              v135 = 4;
              goto LABEL_145;
            }

            v16 = sub_C6244();

            v89 = v213;
            if (v16)
            {
              goto LABEL_157;
            }
          }

          else
          {

            v89 = v213;
          }

          v135 = 1;
LABEL_145:
          sub_60A54(v226, v135);

          if (v210 == ++v132)
          {

            v2 = v194;
            v43 = v205;
            goto LABEL_31;
          }
        }
      }

LABEL_222:
    }
  }

  else
  {
    sub_B6B8(v226);
  }

LABEL_31:
  v220 = sub_C5484();
  v221 = v54;
  sub_C5F64();
  if (*(v43 + 16) && (v55 = sub_23FB0(v226), (v56 & 1) != 0))
  {
    sub_B760(*(v43 + 56) + 32 * v55, v225);
    sub_B6B8(v226);
    sub_3CB0(&qword_104788);
    if (swift_dynamicCast())
    {
      v57 = v220;

      a1 = sub_C4CB4();
      v58 = sub_C5A34();
      v59 = v57 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v58))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        if (v59)
        {
          v61 = sub_C5EF4();
        }

        else
        {
          v61 = *(v57 + 16);
        }

        *(v60 + 4) = v61;

        _os_log_impl(&dword_0, a1, v58, "Processing %ld updated objects", v60, 0xCu);
      }

      else
      {
      }

      v194 = v2;
      if (v59)
      {
        sub_C5EE4();
        a1 = sub_BE28(0, &qword_104790);
        sub_B7BC();
        sub_C5824();
        v57 = v220;
        v3 = v221;
        v96 = v222;
        p_align = v223;
        v2 = v224;
      }

      else
      {
        p_align = 0;
        v3 = v57 + 56;
        v97 = -1 << *(v57 + 32);
        v96 = ~v97;
        v98 = -v97;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        else
        {
          v99 = -1;
        }

        v2 = (v99 & *(v57 + 56));
      }

      v19 = ((v96 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_92;
      }

LABEL_89:
      v100 = sub_C5F24();
      if (v100)
      {
        v225[0] = v100;
        sub_BE28(0, &qword_104790);
        swift_dynamicCast();
        a1 = v226[0];
        v10 = p_align;
        v28 = v2;
        if (v226[0])
        {
          while (1)
          {
            v103 = sub_7194(a1, v215);
            v104 = v219;

            v105 = sub_948C(v103, v104);

            v219 = v105;
            p_align = v10;
            v2 = v28;
            if (v57 < 0)
            {
              goto LABEL_89;
            }

LABEL_92:
            v101 = p_align;
            v102 = v2;
            v10 = p_align;
            if (!v2)
            {
              break;
            }

LABEL_96:
            v28 = (v102 - 1) & v102;
            a1 = *(*(v57 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v102)))));
            if (!a1)
            {
              goto LABEL_99;
            }
          }

          while (1)
          {
            v10 = v101 + 1;
            if (__OFADD__(v101, 1))
            {
              break;
            }

            if (v10 >= v19)
            {
              goto LABEL_99;
            }

            v102 = *(v3 + 8 * v10);
            v101 = (v101 + 1);
            if (v102)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
          goto LABEL_213;
        }
      }

LABEL_99:
      sub_B824();
      v2 = v194;
      v43 = v205;
    }
  }

  else
  {
    sub_B6B8(v226);
  }

  v218[0] = sub_C5484();
  v218[1] = v62;
  sub_C5F64();
  if (*(v43 + 16) && (v63 = sub_23FB0(v226), (v64 & 1) != 0))
  {
    sub_B760(*(v43 + 56) + 32 * v63, v225);
    sub_B6B8(v226);
    sub_3CB0(&qword_104788);
    if (swift_dynamicCast())
    {
      v65 = v218[0];

      a1 = sub_C4CB4();
      v66 = sub_C5A34();
      v67 = v65 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v66))
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        if (v67)
        {
          v69 = sub_C5EF4();
        }

        else
        {
          v69 = *(v65 + 16);
        }

        *(v68 + 4) = v69;

        _os_log_impl(&dword_0, a1, v66, "Processing %ld refreshed objects", v68, 0xCu);
      }

      else
      {
      }

      v194 = v2;
      if (v67)
      {
        sub_C5EE4();
        a1 = sub_BE28(0, &qword_104790);
        sub_B7BC();
        sub_C5824();
        v65 = v225[0];
        v3 = v225[1];
        v106 = v225[2];
        p_align = v225[3];
        v2 = v225[4];
      }

      else
      {
        p_align = 0;
        v3 = v65 + 56;
        v107 = -1 << *(v65 + 32);
        v106 = ~v107;
        v108 = -v107;
        if (v108 < 64)
        {
          v109 = ~(-1 << v108);
        }

        else
        {
          v109 = -1;
        }

        v2 = (v109 & *(v65 + 56));
      }

      v19 = ((v106 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v65 & 0x8000000000000000) == 0)
      {
        goto LABEL_112;
      }

LABEL_109:
      v110 = sub_C5F24();
      if (!v110 || (v218[0] = v110, sub_BE28(0, &qword_104790), swift_dynamicCast(), a1 = v226[0], v10 = p_align, v28 = v2, !v226[0]))
      {
LABEL_119:
        sub_B824();
        v2 = v194;
        v43 = v205;
        goto LABEL_45;
      }

      while (1)
      {
        v113 = sub_7194(a1, v215);
        v114 = v219;

        v115 = sub_948C(v113, v114);

        v219 = v115;
        p_align = v10;
        v2 = v28;
        if (v65 < 0)
        {
          goto LABEL_109;
        }

LABEL_112:
        v111 = p_align;
        v112 = v2;
        v10 = p_align;
        if (!v2)
        {
          break;
        }

LABEL_116:
        v28 = (v112 - 1) & v112;
        a1 = *(*(v65 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v112)))));
        if (!a1)
        {
          goto LABEL_119;
        }
      }

      while (1)
      {
        v10 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          break;
        }

        if (v10 >= v19)
        {
          goto LABEL_119;
        }

        v112 = *(v3 + 8 * v10);
        v111 = (v111 + 1);
        if (v112)
        {
          goto LABEL_116;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }
  }

  else
  {
    sub_B6B8(v226);
  }

LABEL_45:
  v216 = sub_C5484();
  v217 = v70;
  sub_C5F64();
  if (!*(v43 + 16) || (v71 = sub_23FB0(v226), (v72 & 1) == 0))
  {

    sub_B6B8(v226);
    goto LABEL_54;
  }

  sub_B760(*(v43 + 56) + 32 * v71, v218);
  sub_B6B8(v226);

  sub_3CB0(&qword_104788);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v10 = v216;
  v73 = v216 & 0xC000000000000001;
  if ((v216 & 0xC000000000000001) != 0)
  {
    if (sub_C5EF4() < 1)
    {
      goto LABEL_75;
    }
  }

  else if (*(v216 + 16) < 1)
  {
LABEL_75:

    goto LABEL_54;
  }

  v74 = sub_C4CB4();
  a1 = sub_C5A34();
  if (os_log_type_enabled(v74, a1))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    if (v73)
    {
      v76 = sub_C5EF4();
    }

    else
    {
      v76 = *(v10 + 16);
    }

    *(v75 + 4) = v76;

    _os_log_impl(&dword_0, v74, a1, "Notified of %ld deletes:", v75, 0xCu);
  }

  else
  {
  }

  v194 = v2;
  if (v73)
  {
    sub_C5EE4();
    a1 = sub_BE28(0, &qword_104790);
    sub_B7BC();
    sub_C5824();
    v10 = v226[0];
    v146 = v226[1];
    v147 = v226[2];
    v73 = v226[3];
    v28 = v226[4];
  }

  else
  {
    v148 = -1 << *(v10 + 32);
    v146 = v10 + 56;
    v147 = ~v148;
    v149 = -v148;
    if (v149 < 64)
    {
      v150 = ~(-1 << v149);
    }

    else
    {
      v150 = -1;
    }

    v28 = v150 & *(v10 + 56);
  }

  v193 = v147;
  p_align = ((v147 + 64) >> 6);
  v212 = (v204 + 56);
  v206 = (v204 + 48);
  v199 = (v204 + 32);
  v200 = (v204 + 8);
  *&v94 = 136315138;
  v204 = v94;
  v19 = &qword_104778;
  v209 = v10;
  v208 = v146;
  v205 = p_align;
  if ((v10 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v154 = v73;
      v155 = v28;
      v3 = v73;
      if (!v28)
      {
        while (1)
        {
          v3 = v154 + 1;
          if (__OFADD__(v154, 1))
          {
            break;
          }

          if (v3 >= p_align)
          {
            goto LABEL_211;
          }

          v155 = *(v146 + 8 * v3);
          ++v154;
          if (v155)
          {
            goto LABEL_175;
          }
        }

LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

LABEL_175:
      v153 = (v155 - 1) & v155;
      v152 = *(*(v10 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v155)))));
      if (!v152)
      {
        goto LABEL_211;
      }

LABEL_176:
      v156 = v152;
      v157 = sub_C4CB4();
      v158 = sub_C5A34();

      v159 = os_log_type_enabled(v157, v158);
      v213 = v156;
      v211 = v153;
      if (v159)
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v218[0] = v161;
        *v160 = v204;
        v162 = sub_2684();
        v164 = sub_BA920(v162, v163, v218);

        *(v160 + 4) = v164;
        _os_log_impl(&dword_0, v157, v158, "Processing deletion %s", v160, 0xCu);
        sub_BED0(v161);
      }

      v2 = v202;
      v165 = v214;
      sub_C4094();
      v166 = swift_dynamicCastClass();
      v167 = v197;
      v168 = v203;
      if (v166)
      {
        v169 = [v166 id];
        if (v169)
        {
          v170 = v169;
          sub_C3CF4();

          v165 = v214;
          v171 = 0;
        }

        else
        {
          v171 = 1;
        }

        v172 = *v212;
        (*v212)(v167, v171, 1, v165);
        sub_B874(v167, v168);
      }

      else
      {
        v172 = *v212;
        (*v212)(v203, 1, 1, v165);
      }

      v210 = *(v215 + 32);
      v173 = [v210 id];
      if (v173)
      {
        v174 = v201;
        v175 = v173;
        sub_C3CF4();

        v165 = v214;
        v176 = 0;
      }

      else
      {
        v176 = 1;
        v174 = v201;
      }

      v172(v174, v176, 1, v165);
      a1 = *(v198 + 48);
      v177 = v203;
      sub_B954(v203, v2, &qword_104778);
      sub_B954(v174, v2 + a1, &qword_104778);
      v178 = *v206;
      if ((*v206)(v2, 1, v165) == 1)
      {
        break;
      }

      v180 = v196;
      sub_B954(v2, v196, &qword_104778);
      if (v178(v2 + a1, 1, v165) == 1)
      {
        sub_C060(v201, &qword_104778);
        sub_C060(v203, &qword_104778);
        (*v200)(v180, v165);
        v10 = v209;
        v16 = v213;
LABEL_192:
        sub_C060(v2, &qword_104770);
        v146 = v208;
        p_align = v205;
        goto LABEL_193;
      }

      v185 = v195;
      (*v199)(v195, v2 + a1, v165);
      sub_B82C(&qword_1047A8, &type metadata accessor for UUID);
      a1 = sub_C53A4();
      v186 = *v200;
      (*v200)(v185, v165);
      sub_C060(v201, &qword_104778);
      sub_C060(v203, &qword_104778);
      v186(v180, v165);
      sub_C060(v2, &qword_104778);
      v10 = v209;
      v146 = v208;
      p_align = v205;
      v16 = v213;
      if (a1)
      {
        goto LABEL_202;
      }

LABEL_193:
      sub_C3FE4();
      v181 = swift_dynamicCastClass();
      if (v181 && (v182 = [v181 entry]) != 0)
      {
        a1 = v182;
        v2 = [v182 objectID];
      }

      else
      {
        v2 = 0;
      }

      v183 = [v210 objectID];
      v184 = v183;
      if (v2)
      {
        if (!v183)
        {

          goto LABEL_208;
        }

        sub_BE28(0, &qword_1047A0);
        a1 = sub_C5D44();

        if (a1)
        {
LABEL_205:
          a1 = &v219;
          sub_60A54(v218, 4);
          v187 = 1;
          goto LABEL_206;
        }
      }

      else
      {
        if (!v183)
        {
          goto LABEL_205;
        }
      }

LABEL_207:

LABEL_208:
      v73 = v3;
      v28 = v211;
      if (v10 < 0)
      {
        goto LABEL_168;
      }
    }

    sub_C060(v174, &qword_104778);
    sub_C060(v177, &qword_104778);
    v179 = v178(v2 + a1, 1, v165);
    v10 = v209;
    v16 = v213;
    if (v179 == 1)
    {
      sub_C060(v2, &qword_104778);
      v146 = v208;
      p_align = v205;
LABEL_202:
      a1 = &v219;
      v187 = 9;
LABEL_206:
      sub_60A54(v218, v187);
      goto LABEL_207;
    }

    goto LABEL_192;
  }

LABEL_168:
  v151 = sub_C5F24();
  if (v151)
  {
    v216 = v151;
    sub_BE28(0, &qword_104790);
    swift_dynamicCast();
    v152 = v218[0];
    v3 = v73;
    v153 = v28;
    if (v218[0])
    {
      goto LABEL_176;
    }
  }

LABEL_211:
  sub_B824();
LABEL_54:
  v77 = v219;
  v78 = v219[2];
  v79 = sub_C4CB4();
  v80 = sub_C5A34();
  v81 = os_log_type_enabled(v79, v80);
  if (v78)
  {
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v218[0] = v83;
      *v82 = 136315138;
      sub_B70C();

      v84 = sub_C5804();
      v86 = v85;

      v87 = sub_BA920(v84, v86, v218);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_0, v79, v80, "Detected %s changes", v82, 0xCu);
      sub_BED0(v83);
    }

    v218[0] = v77;

    sub_C4E54();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (v81)
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v79, v80, "No changed fields found from NSManagedObjectContextObjectsDidChange notification.", v88, 2u);
    }
  }
}

void *sub_7194(void *a1, uint64_t a2)
{
  v146 = a2;
  v3 = sub_C49F4();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v133 = &v124[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_C3D14();
  v5 = *(v147 - 8);
  __chkstk_darwin(v147);
  v140 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_3CB0(&qword_104770);
  v7 = __chkstk_darwin(v145);
  v142 = &v124[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v124[-v9];
  v11 = sub_3CB0(&qword_104778);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v124[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v144 = &v124[-v16];
  v17 = __chkstk_darwin(v15);
  v138 = &v124[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v124[-v20];
  v22 = __chkstk_darwin(v19);
  v132 = &v124[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v124[-v25];
  v27 = __chkstk_darwin(v24);
  v139 = &v124[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v124[-v30];
  __chkstk_darwin(v29);
  v33 = &v124[-v32];
  v149 = &_swiftEmptySetSingleton;
  sub_C4094();
  v34 = swift_dynamicCastClass();
  v136 = v14;
  if (!v34)
  {
LABEL_15:
    sub_C3FE4();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      return v149;
    }

    v49 = v48;
    v141 = a1;
    v50 = [v49 entry];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 id];

      if (v52)
      {
        v53 = v138;
        sub_C3CF4();

        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v138;
      }

      v55 = v5[7];
      v55(v53, v54, 1, v147);
      sub_B874(v53, v21);
    }

    else
    {
      v55 = v5[7];
      v55(v21, 1, 1, v147);
    }

    v86 = [*(v146 + 32) id];
    v139 = v49;
    if (v86)
    {
      v87 = v144;
      v88 = v86;
      sub_C3CF4();

      v89 = 0;
    }

    else
    {
      v89 = 1;
      v87 = v144;
    }

    v90 = v147;
    v55(v87, v89, 1, v147);
    v91 = *(v145 + 48);
    v92 = v21;
    v93 = v21;
    v94 = v142;
    sub_B954(v92, v142, &qword_104778);
    sub_B954(v87, &v94[v91], &qword_104778);
    v95 = v5[6];
    if (v95(v94, 1, v90) == 1)
    {
      sub_C060(v87, &qword_104778);
      sub_C060(v93, &qword_104778);
      if (v95(&v94[v91], 1, v147) == 1)
      {
        sub_C060(v94, &qword_104778);
        goto LABEL_39;
      }
    }

    else
    {
      v143 = v93;
      v96 = v136;
      sub_B954(v94, v136, &qword_104778);
      if (v95(&v94[v91], 1, v147) != 1)
      {
        v97 = v140;
        v98 = v147;
        (v5[4])(v140, &v94[v91], v147);
        sub_B82C(&qword_1047A8, &type metadata accessor for UUID);
        v99 = sub_C53A4();
        v100 = v5[1];
        v100(v97, v98);
        sub_C060(v144, &qword_104778);
        sub_C060(v143, &qword_104778);
        v100(v96, v98);
        sub_C060(v94, &qword_104778);
        if (v99)
        {
LABEL_39:
          v101 = [v139 assetType];
          if (v101)
          {
            v102 = v101;
            v103 = sub_C5484();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          v107 = v134;
          v106 = v135;
          v108 = v133;
          (*(v134 + 104))(v133, enum case for AssetType.reflection(_:), v135);
          v109 = sub_C49E4();
          v111 = v110;
          (*(v107 + 8))(v108, v106);
          if (v105)
          {
            if (v103 == v109 && v105 == v111)
            {

LABEL_48:
              v113 = 4;
LABEL_50:
              sub_60A54(&v148, v113);
              goto LABEL_51;
            }

            v112 = sub_C6244();

            if (v112)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v113 = 1;
          goto LABEL_50;
        }

LABEL_51:

        return v149;
      }

      sub_C060(v144, &qword_104778);
      sub_C060(v143, &qword_104778);
      (v5[1])(v96, v147);
    }

    sub_C060(v94, &qword_104770);
    goto LABEL_51;
  }

  v35 = v34;
  v130 = v26;
  v131 = a1;
  v137 = a1;
  v36 = [v35 id];
  if (v36)
  {
    v37 = v36;
    sub_C3CF4();

    v38 = v5[7];
    v38(v33, 0, 1, v147);
  }

  else
  {
    v38 = v5[7];
    v38(v33, 1, 1, v147);
  }

  v39 = [*(v146 + 32) id];
  v143 = v21;
  if (v39)
  {
    v40 = v39;
    sub_C3CF4();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v147;
  v129 = (v5 + 7);
  v38(v31, v41, 1, v147);
  v43 = v5;
  v44 = *(v145 + 48);
  sub_B954(v33, v10, &qword_104778);
  sub_B954(v31, &v10[v44], &qword_104778);
  v141 = v43;
  v45 = v42;
  v46 = v43[6];
  if (v46(v10, 1, v45) != 1)
  {
    v47 = v139;
    sub_B954(v10, v139, &qword_104778);
    if (v46(&v10[v44], 1, v147) != 1)
    {
      v126 = v46;
      v127 = v38;
      v56 = v141;
      v57 = *(v141 + 4);
      v128 = v35;
      v58 = v140;
      v59 = v147;
      v57(v140, &v10[v44], v147);
      sub_B82C(&qword_1047A8, &type metadata accessor for UUID);
      v60 = v47;
      v125 = sub_C53A4();
      v61 = v56[1];
      v62 = v58;
      v35 = v128;
      v61(v62, v59);
      sub_C060(v31, &qword_104778);
      sub_C060(v33, &qword_104778);
      v61(v60, v59);
      sub_C060(v10, &qword_104778);
      if (v125)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_C060(v31, &qword_104778);
    sub_C060(v33, &qword_104778);
    (*(v141 + 1))(v47, v147);
LABEL_13:
    sub_C060(v10, &qword_104770);
LABEL_14:

    v5 = v141;
    v21 = v143;
    a1 = v131;
    goto LABEL_15;
  }

  sub_C060(v31, &qword_104778);
  sub_C060(v33, &qword_104778);
  if (v46(&v10[v44], 1, v147) != 1)
  {
    goto LABEL_13;
  }

  v126 = v46;
  v127 = v38;
  sub_C060(v10, &qword_104778);
LABEL_21:
  sub_80C4(v35);

  v64 = sub_948C(v63, &_swiftEmptySetSingleton);
  sub_9568(v35);

  v149 = sub_948C(v65, v64);
  if (qword_104130 != -1)
  {
    swift_once();
  }

  v66 = sub_C4CD4();
  sub_B680(v66, qword_104758);
  v67 = v137;

  v68 = sub_C4CB4();
  v69 = sub_C5A34();

  if (os_log_type_enabled(v68, v69))
  {
    LODWORD(v146) = v69;
    v70 = swift_slowAlloc();
    v128 = v35;
    v71 = v70;
    v145 = swift_slowAlloc();
    v148 = v145;
    *v71 = 136315650;
    sub_B70C();
    v72 = sub_C5804();
    v74 = v73;

    v75 = sub_BA920(v72, v74, &v148);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    v76 = sub_C5804();
    v78 = v77;

    v79 = sub_BA920(v76, v78, &v148);

    *(v71 + 14) = v79;
    *(v71 + 22) = 2080;
    v80 = [v128 id];
    v81 = v67;
    if (v80)
    {
      v82 = v132;
      v83 = v80;
      sub_C3CF4();

      v84 = 0;
      v85 = v141;
    }

    else
    {
      v84 = 1;
      v85 = v141;
      v82 = v132;
    }

    v115 = v147;
    v127(v82, v84, 1, v147);
    v116 = v130;
    sub_B874(v82, v130);
    if (v126(v116, 1, v115))
    {
      sub_C060(v116, &qword_104778);
      v117 = 0xE300000000000000;
      v118 = 7104878;
    }

    else
    {
      v119 = v140;
      v120 = v147;
      v85[2](v140, v116, v147);
      sub_C060(v116, &qword_104778);
      v121 = sub_C3CC4();
      v117 = v122;
      (v85[1])(v119, v120);
      v118 = v121;
    }

    v123 = sub_BA920(v118, v117, &v148);

    *(v71 + 24) = v123;
    _os_log_impl(&dword_0, v68, v146, "Tracked %s CoreData changes and %s inspected changes to entry with ID %s", v71, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v149;
}

void sub_80C4(void *a1)
{
  v2 = sub_3CB0(&qword_1047C0);
  __chkstk_darwin(v2 - 8);
  v168 = &v146 - v3;
  v4 = sub_3CB0(&qword_1047B0);
  __chkstk_darwin(v4 - 8);
  v172 = &v146 - v5;
  v6 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v6 - 8);
  v171 = &v146 - v7;
  v170 = sub_C3CB4();
  v177 = *(v170 - 8);
  v8 = __chkstk_darwin(v170);
  v167 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v146 - v10;
  v12 = sub_C4004();
  v176 = *(v12 - 8);
  __chkstk_darwin(v12);
  v178 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_C3D14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v173 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3CB0(&qword_104770);
  __chkstk_darwin(v17);
  v19 = &v146 - v18;
  v20 = sub_3CB0(&qword_104778);
  v21 = __chkstk_darwin(v20 - 8);
  v166 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v165 = &v146 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v146 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v146 - v29;
  __chkstk_darwin(v28);
  v32 = &v146 - v31;
  v179 = a1;
  v33 = [a1 id];
  if (v33)
  {
    v34 = v33;
    sub_C3CF4();

    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 0;
  }

  else
  {
    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 1;
  }

  v180 = v35;
  v35(v36, v37, 1, v14);
  v175 = *(v181 + 32);
  v38 = [v175 id];
  v182 = v14;
  v169 = v11;
  if (v38)
  {
    v39 = v38;
    sub_C3CF4();

    v14 = v182;
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v164 = v15 + 56;
  v180(v30, v40, 1, v14);
  v41 = *(v17 + 48);
  sub_B954(v32, v19, &qword_104778);
  v42 = v182;
  sub_B954(v30, &v19[v41], &qword_104778);
  v43 = *(v15 + 48);
  if (v43(v19, 1, v42) != 1)
  {
    sub_B954(v19, v27, &qword_104778);
    if (v43(&v19[v41], 1, v42) != 1)
    {
      v174 = v43;
      v161 = v15 + 48;
      v45 = &v19[v41];
      v46 = v173;
      (*(v15 + 32))(v173, v45, v42);
      sub_B82C(&qword_1047A8, &type metadata accessor for UUID);
      LODWORD(v163) = sub_C53A4();
      v162 = v12;
      v47 = *(v15 + 8);
      v47(v46, v42);
      sub_C060(v30, &qword_104778);
      sub_C060(v32, &qword_104778);
      v47(v27, v42);
      v12 = v162;
      v44 = v179;
      sub_C060(v19, &qword_104778);
      if ((v163 & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    sub_C060(v30, &qword_104778);
    sub_C060(v32, &qword_104778);
    (*(v15 + 8))(v27, v42);
LABEL_12:
    sub_C060(v19, &qword_104770);
    return;
  }

  v174 = v43;
  sub_C060(v30, &qword_104778);
  sub_C060(v32, &qword_104778);
  if (v174(&v19[v41], 1, v182) != 1)
  {
    goto LABEL_12;
  }

  v161 = v15 + 48;
  sub_C060(v19, &qword_104778);
  v44 = v179;
LABEL_15:
  v48 = [v44 changedValuesForCurrentEvent];
  v49 = sub_C52B4();

  sub_9F4C(v49);
  v51 = v50;
  v149 = 0;

  v52 = sub_67234(v51);

  v54 = 0;
  v55 = v52 + 56;
  v56 = 1 << *(v52 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v52 + 56);
  v185 = &_swiftEmptySetSingleton;
  v59 = (v56 + 63) >> 6;
  v163 = (v176 + 13);
  v160 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_prompts;
  ++v176;
  v151 = (v15 + 16);
  v159 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_dateSource;
  v150 = (v15 + 8);
  v156 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_date;
  v158 = v184;
  v155 = v177 + 4;
  v60 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v157 = (v177 + 7);
  v154 = (v177 + 6);
  v177 += 5;
  *&v53 = 136315138;
  v152 = v53;
  while (v58)
  {
LABEL_23:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = *(*(v52 + 48) + (v62 | (v54 << 6)));
    if (v63 > 6)
    {
      if (v63 > 9)
      {
        if ((v63 - 11) >= 2)
        {
          v66 = v178;
          (*v163)(v178, v60, v12);
          v67 = sub_C3FF4();
          (*v176)(v66, v12);
          if (v67)
          {
            v68 = v179;
            v69 = [v179 mergeableAttributes];
            if (v69)
            {
              v70 = v69;
              v71 = v168;
              sub_C4944();

              v72 = sub_C45C4();
              (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
              sub_C060(v71, &qword_1047C0);
              v73 = sub_A2E8(v68);
              if (v73)
              {
                v185 = sub_948C(v73, v185);
              }
            }

            else
            {
              v153 = v60;
              v127 = sub_C45C4();
              v128 = v168;
              (*(*(v127 - 8) + 56))(v168, 1, 1, v127);
              sub_C060(v128, &qword_1047C0);
              if (qword_104130 != -1)
              {
                swift_once();
              }

              v129 = sub_C4CD4();
              sub_B680(v129, qword_104758);
              v130 = v179;
              v131 = sub_C4CB4();
              v132 = sub_C5A44();

              if (os_log_type_enabled(v131, v132))
              {
                v133 = swift_slowAlloc();
                v147 = swift_slowAlloc();
                aBlock[0] = v147;
                *v133 = v152;
                v134 = [v130 id];
                LODWORD(v162) = v132;
                v148 = v133;
                if (v134)
                {
                  v135 = v166;
                  v136 = v134;
                  sub_C3CF4();

                  v137 = 0;
                }

                else
                {
                  v137 = 1;
                  v135 = v166;
                }

                v138 = v182;
                v180(v135, v137, 1, v182);
                v139 = v165;
                sub_B874(v135, v165);
                if (v174(v139, 1, v138))
                {
                  sub_C060(v139, &qword_104778);
                  v140 = 0xE700000000000000;
                  v141 = 0x6E776F6E6B6E55;
                }

                else
                {
                  v142 = v173;
                  (*v151)(v173, v139, v138);
                  sub_C060(v139, &qword_104778);
                  v146 = sub_C3CC4();
                  v140 = v143;
                  (*v150)(v142, v138);
                  v141 = v146;
                }

                v144 = sub_BA920(v141, v140, aBlock);

                v145 = v148;
                *(v148 + 1) = v144;
                _os_log_impl(&dword_0, v131, v162, "mergeableAttributes changed to nil value for entry %s. This implies an incorrect assignment rather than a merge operation somewhere.", v145, 0xCu);
                sub_BED0(v147);
              }

LABEL_56:
              v60 = v153;
            }
          }
        }
      }

      else if (v63 == 7)
      {
        v94 = [v175 dateSource];
        if (v94)
        {
          v162 = v12;
          v95 = v52;
          v96 = v60;
          v97 = v94;
          sub_C5484();

          v60 = v96;
          v52 = v95;
          v12 = v162;
        }

        v115 = v172;
        sub_C4174();
        v116 = v181;
        v117 = v159;
        swift_beginAccess();
        sub_B8E4(v115, v116 + v117);
        swift_endAccess();
        sub_60A54(aBlock, 3);
      }

      else
      {
        if (v63 != 8)
        {
          v153 = v60;
          v98 = [v175 prompt];
          v99 = v12;
          if (v98)
          {
            v100 = v98;
            v101 = sub_C3984();
            v103 = v102;

            v104 = sub_C3954();
            sub_BF1C(v101, v103);
          }

          else
          {
            v104 = 0;
          }

          v118 = v181;
          v119 = *(v181 + v160);
          *(v181 + v160) = v104;
          v120 = v104;

          v121 = *(v118 + 24);
          v122 = swift_allocObject();
          swift_weakInit();
          v184[2] = sub_C058;
          v184[3] = v122;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v184[0] = sub_34660;
          v184[1] = &unk_F1628;
          v123 = _Block_copy(aBlock);

          [v121 performBlock:v123];
          _Block_release(v123);

          sub_60A54(aBlock, 6);
          v12 = v99;
          goto LABEL_56;
        }

        sub_60A54(aBlock, 7);
      }
    }

    else if (v63 > 2)
    {
      if ((v63 - 5) >= 2)
      {
        if (v63 == 3)
        {
          v74 = v178;
          (*v163)(v178, v60, v12);
          v75 = sub_C3FF4();
          (*v176)(v74, v12);
          if ((v75 & 1) == 0)
          {
            v76 = [v179 title];
            if (v76)
            {
              v77 = v76;
              v78 = sub_C3984();
              v79 = v60;
              v81 = v80;

              v82 = sub_C3954();
              v83 = v81;
              v60 = v79;
              sub_BF1C(v78, v83);
            }

            else
            {
              v82 = 0;
            }

            sub_2B7A8(v82);

            sub_60A54(aBlock, 2);
          }
        }

        else
        {
          v162 = v12;
          v105 = [v175 entryDate];
          if (v105)
          {
            v106 = v167;
            v107 = v105;
            sub_C3C64();

            v153 = v60;
            v108 = *v155;
            v109 = v171;
            v110 = v106;
            v111 = v170;
            (*v155)(v171, v110, v170);
            (*v157)(v109, 0, 1, v111);
            v112 = v169;
            v113 = v109;
            v114 = v111;
            v108(v169, v113, v111);
            v60 = v153;
          }

          else
          {
            v124 = v171;
            v114 = v170;
            (*v157)(v171, 1, 1, v170);
            v112 = v169;
            sub_C3CA4();
            if ((*v154)(v124, 1, v114) != 1)
            {
              sub_C060(v171, &qword_104800);
            }
          }

          v125 = v181;
          v126 = v156;
          swift_beginAccess();
          (*v177)(v125 + v126, v112, v114);
          swift_endAccess();
          sub_60A54(aBlock, 3);
          v12 = v162;
        }
      }

      else
      {
        sub_60A54(aBlock, 8);
      }
    }

    else if (v63)
    {
      if (v63 == 1)
      {
        v64 = v178;
        (*v163)(v178, v60, v12);
        v65 = sub_C3FF4();
        (*v176)(v64, v12);
        if ((v65 & 1) == 0)
        {
          sub_60A54(aBlock, 1);
        }
      }
    }

    else
    {
      v84 = v178;
      (*v163)(v178, v60, v12);
      v85 = sub_C3FF4();
      (*v176)(v84, v12);
      if ((v85 & 1) == 0)
      {
        v86 = [v179 text];
        if (v86)
        {
          v87 = v86;
          v88 = sub_C3984();
          v89 = v60;
          v91 = v90;

          v92 = sub_C3954();
          v93 = v91;
          v60 = v89;
          sub_BF1C(v88, v93);
        }

        else
        {
          v92 = 0;
        }

        sub_2BF40(v92);

        sub_60A54(aBlock, 0);
      }
    }
  }

  while (1)
  {
    v61 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v61 >= v59)
    {

      return;
    }

    v58 = *(v55 + 8 * v61);
    ++v54;
    if (v58)
    {
      v54 = v61;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_948C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_60A54(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_9568(void *a1)
{
  v3 = sub_C4004();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v75 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_1047B0);
  __chkstk_darwin(v5 - 8);
  v68 = &v67 - v6;
  v74 = sub_C3CB4();
  v72 = *(v74 - 8);
  v7 = __chkstk_darwin(v74);
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v67 - v10;
  __chkstk_darwin(v9);
  v73 = &v67 - v11;
  v12 = sub_C3D14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v71 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB0(&qword_104770);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = sub_3CB0(&qword_104778);
  v19 = __chkstk_darwin(v18 - 8);
  v80 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v67 - v22;
  __chkstk_darwin(v21);
  v25 = &v67 - v24;
  v78 = a1;
  v26 = [a1 id];
  if (v26)
  {
    v27 = v26;
    sub_C3CF4();

    v28 = *(v13 + 56);
    v28(v25, 0, 1, v12);
  }

  else
  {
    v28 = *(v13 + 56);
    v28(v25, 1, 1, v12);
  }

  v67 = *(v1 + 32);
  v29 = [v67 id];
  v79 = v1;
  if (v29)
  {
    v30 = v29;
    sub_C3CF4();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v28(v23, v31, 1, v12);
  v32 = *(v15 + 48);
  sub_B954(v25, v17, &qword_104778);
  sub_B954(v23, &v17[v32], &qword_104778);
  v33 = *(v13 + 48);
  if (v33(v17, 1, v12) == 1)
  {
    sub_C060(v23, &qword_104778);
    sub_C060(v25, &qword_104778);
    if (v33(&v17[v32], 1, v12) == 1)
    {
      sub_C060(v17, &qword_104778);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v34 = v80;
  sub_B954(v17, v80, &qword_104778);
  if (v33(&v17[v32], 1, v12) == 1)
  {
    sub_C060(v23, &qword_104778);
    sub_C060(v25, &qword_104778);
    (*(v13 + 8))(v34, v12);
LABEL_12:
    sub_C060(v17, &qword_104770);
    return &_swiftEmptySetSingleton;
  }

  v36 = v71;
  (*(v13 + 32))(v71, &v17[v32], v12);
  sub_B82C(&qword_1047A8, &type metadata accessor for UUID);
  v37 = v34;
  v38 = sub_C53A4();
  v39 = *(v13 + 8);
  v39(v36, v12);
  sub_C060(v23, &qword_104778);
  sub_C060(v25, &qword_104778);
  v39(v37, v12);
  sub_C060(v17, &qword_104778);
  if ((v38 & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

LABEL_15:
  v83 = &_swiftEmptySetSingleton;
  v40 = v78;
  if (([v78 isRemovedFromCloud] & 1) != 0 || objc_msgSend(v40, "isFullyRemoved"))
  {
    sub_60A54(v82, 9);
  }

  v41 = [v40 entryDate];
  v42 = v79;
  v44 = v73;
  v43 = v74;
  v45 = v72;
  if (v41)
  {
    v46 = v69;
    v47 = v41;
    sub_C3C64();

    (*(v45 + 32))(v44, v46, v43);
    v48 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_date;
    swift_beginAccess();
    v49 = v70;
    (*(v45 + 16))(v70, v42 + v48, v43);
    sub_B82C(&qword_1047B8, &type metadata accessor for Date);
    LOBYTE(v47) = sub_C53A4();
    v50 = *(v45 + 8);
    v50(v49, v43);
    if ((v47 & 1) == 0)
    {
      swift_beginAccess();
      (*(v45 + 24))(v42 + v48, v44, v43);
      swift_endAccess();
      v51 = [v67 dateSource];
      if (v51)
      {
        v52 = v51;
        sub_C5484();
      }

      v53 = v68;
      sub_C4174();
      v54 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_dateSource;
      swift_beginAccess();
      sub_B8E4(v53, v42 + v54);
      swift_endAccess();
      sub_60A54(v81, 3);
    }

    v50(v44, v43);
  }

  v55 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_bookmarked;
  v56 = *(v42 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_bookmarked);
  if (v56 != [v40 flagged])
  {
    v57 = [v40 flagged];
    v58 = *(v42 + v55);
    *(v42 + v55) = v57;
    sub_2C628(v58);
    sub_60A54(v81, 7);
  }

  v60 = v75;
  v59 = v76;
  v61 = v77;
  (*(v76 + 104))(v75, enum case for JournalFeatureFlags.enhancedSync(_:), v77);
  v62 = sub_C3FF4();
  (*(v59 + 8))(v60, v61);
  if ((v62 & 1) == 0)
  {
    v63 = sub_A874();
    v64 = sub_AC70(v63);

    if (v64)
    {
      sub_60A54(v81, 0);
    }
  }

  v65 = sub_A2E8(v40);
  v35 = v83;
  if (v65)
  {
    return sub_948C(v65, v83);
  }

  return v35;
}

void sub_9F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v39 = &_swiftEmptyArrayStorage;
    sub_524F8(0, v1, 0);
    v3 = &_swiftEmptyArrayStorage;
    v4 = v2 + 64;
    v5 = sub_C5EA4();
    v6 = 0;
    v30 = v2 + 72;
    v34 = v2 + 64;
    v35 = v2;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v36 = v3;
      v37 = *(v2 + 36);
      v10 = (*(v2 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_BFD4(v11, v12);
      if (v13 == 13)
      {
        if (qword_104130 != -1)
        {
          swift_once();
        }

        v14 = sub_C4CD4();
        sub_B680(v14, qword_104758);

        v15 = sub_C4CB4();
        v16 = sub_C5A34();

        if (os_log_type_enabled(v15, v16))
        {
          v32 = v16;
          v17 = 12;
          v18 = swift_slowAlloc();
          log = v15;
          v19 = swift_slowAlloc();
          v38 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_BA920(v11, v12, &v38);
          _os_log_impl(&dword_0, log, v32, "No JournalEntryMO field match for key: %s", v18, 0xCu);
          sub_BED0(v19);
        }

        else
        {

          v17 = 12;
        }
      }

      else
      {
        v17 = v13;
      }

      v3 = v36;
      v20 = v37;
      v39 = v36;
      v22 = v36[2];
      v21 = v36[3];
      if (v22 >= v21 >> 1)
      {
        sub_524F8((v21 > 1), v22 + 1, 1);
        v20 = v37;
        v3 = v39;
      }

      v3[2] = v22 + 1;
      *(v3 + v22 + 32) = v17;
      v2 = v35;
      v7 = 1 << *(v35 + 32);
      if (v5 >= v7)
      {
        goto LABEL_29;
      }

      v4 = v34;
      v23 = *(v34 + 8 * v9);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      if (v20 != *(v35 + 36))
      {
        goto LABEL_31;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v7 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v33;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        v8 = v33;
        while (v26 < (v7 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_C0C0(v5, v20, 0);
            v7 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_C0C0(v5, v20, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

id sub_A2E8(void *a1)
{
  v2 = v1;
  v4 = sub_C4934();
  v44 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v39 - v7;
  v8 = sub_3CB0(&qword_1047C0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = sub_C45C4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v41 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v39 - v22;
  __chkstk_darwin(v21);
  v25 = &v39 - v24;
  result = [a1 mergeableAttributes];
  if (result)
  {
    v27 = result;
    v39 = v4;
    sub_C4944();

    v28 = v2;
    v29 = *(v15 + 32);
    v29(v25, v23, v14);
    v30 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v45 = v28;
    sub_B954(v28 + v30, v13, &qword_1047C0);
    v40 = *(v15 + 48);
    if (v40(v13, 1, v14) == 1)
    {
      sub_C060(v13, &qword_1047C0);
    }

    else
    {
      v29(v20, v13, v14);
      sub_B82C(&qword_1047D0, &type metadata accessor for MergeableEntryAttributes);
      v31 = sub_C51F4();
      v32 = *(v15 + 8);
      v32(v20, v14);
      if ((v31 & 1) == 0)
      {
        v32(v25, v14);
        return 0;
      }
    }

    v47 = &_swiftEmptySetSingleton;
    v33 = v45;
    if (sub_29ED8(v25))
    {
      sub_60A54(&v46, 11);
    }

    if (sub_29F08(v25))
    {
      sub_60A54(&v46, 12);
    }

    sub_B954(v33 + v30, v11, &qword_1047C0);
    if (v40(v11, 1, v14))
    {
      sub_C060(v11, &qword_1047C0);
    }

    else
    {
      v34 = v41;
      (*(v15 + 16))(v41, v11, v14);
      sub_C060(v11, &qword_1047C0);
      v35 = v42;
      sub_C4544();
      (*(v15 + 8))(v34, v14);
      v36 = v43;
      sub_C4544();
      sub_B82C(&qword_1047C8, &type metadata accessor for MergeableEntryAssetsPlacement);
      v37 = v39;
      LOBYTE(v34) = sub_C51F4();
      v38 = *(v44 + 8);
      v38(v36, v37);
      v38(v35, v37);
      if (v34)
      {
        sub_60A54(&v46, 1);
      }
    }

    sub_2A27C(v25);
    (*(v15 + 8))(v25, v14);
    return v47;
  }

  return result;
}

id sub_A874()
{
  v1 = v0;
  v2 = sub_3CB0(&qword_1047E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-1] - v4;
  v6 = sub_3CB0(&qword_1047F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-1] - v7;
  v9 = sub_C4004();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
  v13 = sub_C3FF4();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_C4064();
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_C060(v8, &qword_1047F8);
      return 0;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_C060(v8, &qword_1047F8);
      v20 = [objc_allocWithZone(UITraitCollection) init];
      v21 = type metadata accessor for CustomAttributeProviderConcrete();
      v22 = sub_B82C(&qword_1047E8, type metadata accessor for CustomAttributeProviderConcrete);
      v27[3] = v21;
      v27[4] = v22;
      v23 = sub_BF70(v27);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      sub_C4CC4();
      *v23 = v24;
      sub_B82C(&qword_1047F0, &type metadata accessor for MergeableTextAttributeScope);
      v25 = sub_C51B4();

      (*(v3 + 8))(v5, v2);
      sub_BED0(v27);
      return v25;
    }
  }

  else
  {
    result = [v1 text];
    if (result)
    {
      v15 = result;
      v16 = sub_C3984();
      v18 = v17;

      v19 = sub_C3954();
      sub_BF1C(v16, v18);
      return v19;
    }
  }

  return result;
}

uint64_t sub_AC70(void *a1)
{
  v3 = [objc_allocWithZone(UITraitCollection) init];
  type metadata accessor for CustomAttributeProviderConcrete();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_C4CC4();
  v5 = sub_B9BC(v3, v4, v1);

  p_align = &stru_FAFE8.align;
  v7 = &stru_FAFE8.align;
  v8 = &stru_FAFE8.align;
  v9 = &stru_FAFE8.align;
  v10 = &unk_CD000;
  if (!v5)
  {
    if (!a1)
    {
      v40 = 0;
      return v40 & 1;
    }

    v23 = 0;
    goto LABEL_10;
  }

  v11 = v5;
  v12 = [v11 string];
  if (!v12)
  {
    sub_C5484();
    v12 = sub_C5444();
  }

  v13 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v12];

  v14 = [objc_opt_self() labelColor];
  v15 = [objc_opt_self() systemFontOfSize:0.0];
  result = [v11 length];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = result;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = 0;
  v18[5] = 0;
  v18[6] = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_C304;
  *(v19 + 24) = v18;
  v45 = sub_C300;
  v46 = v19;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_B5B0;
  v44 = &unk_F15D8;
  v20 = _Block_copy(&v41);
  v21 = v15;
  v22 = v14;
  v23 = v13;

  [v11 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v20}];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!a1)
  {

    goto LABEL_18;
  }

  v10 = &unk_CD000;
  v9 = (&stru_FAFE8 + 24);
  v8 = (&stru_FAFE8 + 24);
  v7 = (&stru_FAFE8 + 24);
  p_align = (&stru_FAFE8 + 24);
LABEL_10:
  v25 = a1;
  v26 = [v25 *(p_align + 320)];
  if (!v26)
  {
    sub_C5484();
    v26 = sub_C5444();
  }

  v27 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v26];

  v28 = [objc_opt_self() *(v7 + 322)];
  v29 = [objc_opt_self() *(v8 + 323)];
  result = [v25 *(v9 + 324)];
  if (result < 0)
  {
    goto LABEL_23;
  }

  v30 = result;
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = 0;
  v31[5] = 0;
  v31[6] = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_BDD4;
  *(v32 + 24) = v31;
  v45 = sub_BDE8;
  v46 = v32;
  v41 = _NSConcreteStackBlock;
  v42 = v10[449];
  v43 = sub_B5B0;
  v44 = &unk_F1560;
  v33 = _Block_copy(&v41);
  v34 = v29;
  v35 = v28;
  v36 = v27;

  [v25 enumerateAttributesInRange:0 options:v30 usingBlock:{0, v33}];

  _Block_release(v33);
  v37 = swift_isEscapingClosureAtFileLocation();

  if ((v37 & 1) == 0)
  {
    if (v23)
    {
      sub_BE28(0, &qword_1047D8);
      v38 = v23;
      v39 = sub_C5D44();

      v40 = v39 ^ 1;
      return v40 & 1;
    }

LABEL_18:
    v40 = 1;
    return v40 & 1;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_B208(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x64724F7465737361;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7461447972746E65;
      break;
    case 5:
      result = 0x6449656C646E7562;
      break;
    case 6:
      result = 0x6144656C646E7562;
      break;
    case 7:
      result = 0x72756F5365746164;
      break;
    case 8:
      result = 0x64656767616C66;
      break;
    case 9:
      result = 0x74706D6F7270;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B3B4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_B208(*a1);
  v5 = v4;
  if (v3 == sub_B208(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_C6244();
  }

  return v8 & 1;
}

Swift::Int sub_B43C()
{
  v1 = *v0;
  sub_C62F4();
  sub_B208(v1);
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_B4A0()
{
  sub_B208(*v0);
  sub_C5514();
}

Swift::Int sub_B4F4()
{
  v1 = *v0;
  sub_C62F4();
  sub_B208(v1);
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_B554@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BFD4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_B584@<X0>(unint64_t *a1@<X8>)
{
  result = sub_B208(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_B82C(&qword_104580, type metadata accessor for Key);
  v9 = sub_C52B4();
  v8(v9, a3, a4, a5);
}

uint64_t sub_B680(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_B70C()
{
  result = qword_104780;
  if (!qword_104780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104780);
  }

  return result;
}

uint64_t sub_B760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_B7BC()
{
  result = qword_104798;
  if (!qword_104798)
  {
    sub_BE28(255, &qword_104790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104798);
  }

  return result;
}

uint64_t sub_B82C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B874(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_1047B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B954(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3CB0(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_B9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_C45C4();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3CB0(&qword_1047C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_3CB0(&qword_1047E0);
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = sub_C4004();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for CustomAttributeProviderConcrete();
  v27[4] = sub_B82C(&qword_1047E8, type metadata accessor for CustomAttributeProviderConcrete);
  v27[0] = a2;
  (*(v15 + 104))(v17, enum case for JournalFeatureFlags.enhancedSync(_:), v14);

  LOBYTE(a2) = sub_C3FF4();
  (*(v15 + 8))(v17, v14);
  if (a2)
  {
    v18 = OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_B954(a3 + v18, v10, &qword_1047C0);
    v19 = v26;
    if ((*(v26 + 48))(v10, 1, v5))
    {
      sub_C060(v10, &qword_1047C0);
      v20 = 0;
    }

    else
    {
      (*(v19 + 16))(v7, v10, v5);
      sub_C060(v10, &qword_1047C0);
      sub_C4564();
      (*(v19 + 8))(v7, v5);
      sub_B82C(&qword_1047F0, &type metadata accessor for MergeableTextAttributeScope);
      v20 = sub_C51B4();
      (*(v24 + 8))(v13, v11);
    }
  }

  else
  {
    v20 = *(a3 + OBJC_IVAR____TtC20JournalNotifications14EntryViewModel_attributedText);
    v21 = v20;
  }

  sub_BED0(v27);
  return v20;
}

uint64_t sub_BE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_BE28(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_BE70()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_BED0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_BF1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_BF70(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_BFD4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F0130;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_C020()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C060(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3CB0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_C0C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t *sub_C0CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t _s6FieldsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FieldsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_C2A4()
{
  result = qword_104808;
  if (!qword_104808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104808);
  }

  return result;
}

id sub_C318()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setParagraphSpacingBefore:8.0];
  sub_C368();
  return v0;
}

id sub_C368()
{
  isa = v0;
  result = [(objc_class *)v0 tabStops];
  if (result)
  {
    v3 = result;
    sub_C6C4();
    v4 = sub_C5674();

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_C60E4())
    {
      v19 = isa;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = sub_C5FE4();
      }

      else
      {
        if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;
      v8 = objc_allocWithZone(NSTextTab);
      type metadata accessor for OptionKey(0);
      sub_C710();
      isa = sub_C52A4().super.isa;
      [v8 initWithTextAlignment:2 location:isa options:26.0];

      sub_C5654();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        isa = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_C56A4();
      }

      sub_C56D4();

      if (i == 1)
      {
LABEL_10:
        isa = v19;
        break;
      }

      v9 = 36.0;
      v10 = 5;
      while (1)
      {
        v11 = v10 - 4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v12 = sub_C5FE4();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_21;
          }

          v12 = *(v4 + 8 * v10);
        }

        v13 = v12;
        v14 = v10 - 3;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 alignment];
        v16 = objc_allocWithZone(NSTextTab);
        v17 = sub_C52A4().super.isa;
        [v16 initWithTextAlignment:v15 location:v17 options:v9];

        sub_C5654();
        isa = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        if (isa >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_C56A4();
        }

        sub_C56D4();

        v9 = v9 + 10.0;
        ++v10;
        if (v14 == i)
        {
          goto LABEL_10;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v18 = sub_C5664().super.isa;

    [(objc_class *)isa setTabStops:v18];

    return [(objc_class *)isa setDefaultTabInterval:10.0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_C6C4()
{
  result = qword_104810;
  if (!qword_104810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_104810);
  }

  return result;
}

unint64_t sub_C710()
{
  result = qword_104570;
  if (!qword_104570)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104570);
  }

  return result;
}

void sub_C768(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v127 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v124 = v11;
  if (!v14)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v22 = v16;
LABEL_16:
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(a1 + 48) + 8 * v26);
      sub_B760(*(a1 + 56) + 32 * v26, &v129);
      *&v131 = v27;
      sub_D564(&v129, (&v131 + 8));
      v28 = v27;
LABEL_17:
      v134 = v131;
      v135 = v132;
      v136 = v133;
      v29 = v131;
      if (!v131)
      {

        if (*(*&v10 + 16))
        {
          v102 = sub_25CD0(NSForegroundColorAttributeName);
          v104 = a9;
          v103 = a3;
          v105 = a2;
          if (v106)
          {
            sub_B760(*(*&v10 + 56) + 32 * v102, &v134);
            sub_D574(&v134);
            if (!*(*&v10 + 16))
            {
              goto LABEL_89;
            }

LABEL_87:
            v109 = sub_25CD0(NSFontAttributeName);
            if (v110)
            {
              sub_B760(*(*&v10 + 56) + 32 * v109, &v134);
              sub_D574(&v134);
LABEL_92:
              sub_24EFC(NSAdaptiveImageGlyphAttributeName, &v134);
              sub_D574(&v134);
              type metadata accessor for Key(0);
              sub_D5DC();
              isa = sub_C52A4().super.isa;
              [v104 setAttributes:isa range:{v105, v103}];

              return;
            }

LABEL_89:
            v134 = 0u;
            v135 = 0u;
            sub_D574(&v134);
            v111 = a8;
            *(&v135 + 1) = sub_BE28(0, &qword_104828);
            if (!a8)
            {
              v111 = a6;
            }

            *&v134 = v111;
            sub_D564(&v134, &v131);
            v112 = v111;
            v113 = v127;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v129 = v113;
            sub_819DC(&v131, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
            v127 = *&v129;
            goto LABEL_92;
          }

          v10 = v127;
        }

        else
        {
          v104 = a9;
          v103 = a3;
          v105 = a2;
        }

        v134 = 0u;
        v135 = 0u;
        sub_D574(&v134);
        *(&v135 + 1) = sub_BE28(0, &qword_104820);
        *&v134 = a7;
        sub_D564(&v134, &v131);
        v107 = a7;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v129 = v10;
        sub_819DC(&v131, NSForegroundColorAttributeName, v108);
        v10 = *&v129;
        v127 = *&v129;
        if (!*(v129 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      sub_D564((&v134 + 8), &v131);
      v30 = sub_C5484();
      v32 = v31;
      if (v30 == sub_C5484() && v32 == v33)
      {

        p_align = (&stru_FAFE8 + 24);
      }

      else
      {
        v35 = sub_C6244();

        p_align = &stru_FAFE8.align;
        if ((v35 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_B760(&v131, &v129);
      v36 = sub_BE28(0, &qword_104828);
      if (swift_dynamicCast())
      {
        v122 = v128[0];
        v37 = [v122 fontDescriptor];
        v38 = p_align;
        v39 = [v37 *(p_align + 343)];

        if (v39 && (v40 = [a6 fontDescriptor], v41 = objc_msgSend(a6, "fontDescriptor"), v42 = objc_msgSend(v41, *(v38 + 343)), v41, v43 = objc_msgSend(v40, "fontDescriptorWithSymbolicTraits:", v42 | v39), v40, v43))
        {
          v44 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];

          v45 = v122;
        }

        else
        {
          v45 = v122;

          v44 = a6;
        }

        v130 = v36;
        *&v129 = v44;
        sub_D564(&v129, v128);
        v69 = v44;
        v70 = v127;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v70;
        v73 = sub_25CD0(v29);
        v74 = *(*&v70 + 16);
        v75 = (v72 & 1) == 0;
        v76 = v74 + v75;
        if (__OFADD__(v74, v75))
        {
          goto LABEL_94;
        }

        v77 = v72;
        if (*(*&v70 + 24) < v76)
        {
          sub_9AC6C(v76, v71);
          v78 = sub_25CD0(v29);
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_100;
          }

          v73 = v78;
          v10 = v126;
          if ((v77 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v80 = (*(*&v10 + 56) + 32 * v73);
          sub_BED0(v80);
          sub_D564(v128, v80);

          sub_BED0(&v131);
LABEL_70:
          v127 = v10;
          goto LABEL_78;
        }

        if (v71)
        {
          v10 = v126;
          if (v72)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_9CD18();
          v10 = v126;
          if (v77)
          {
            goto LABEL_56;
          }
        }

LABEL_68:
        *(*&v10 + 8 * (v73 >> 6) + 64) |= 1 << v73;
        *(*(*&v10 + 48) + 8 * v73) = v29;
        sub_D564(v128, (*(*&v10 + 56) + 32 * v73));

        sub_BED0(&v131);
        v93 = *(*&v10 + 16);
        v65 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v65)
        {
          goto LABEL_96;
        }

        *(*&v10 + 16) = v94;
        goto LABEL_70;
      }

LABEL_26:
      v46 = sub_C5484();
      v48 = v47;
      if (v46 == sub_C5484() && v48 == v49)
      {
      }

      else
      {
        v50 = sub_C6244();

        if ((v50 & 1) == 0)
        {
LABEL_38:
          v54 = sub_C5484();
          v56 = v55;
          if (v54 == sub_C5484() && v56 == v57)
          {
          }

          else
          {
            v58 = sub_C6244();

            if ((v58 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_B760(&v131, &v129);
          sub_BE28(0, &qword_104830);
          if (swift_dynamicCast())
          {
            v17 = v128[0];
            v18 = sub_7565C();
            [v18 setParagraphSpacingBefore:a4];
            sub_C368();
            v130 = sub_BE28(0, &qword_104838);
            *&v129 = v18;
            sub_D564(&v129, v128);
            v19 = v18;
            v20 = v127;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            v126 = v20;
            sub_819DC(v128, NSParagraphStyleAttributeName, v21);

            sub_BED0(&v131);
            v10 = v126;
            goto LABEL_6;
          }

LABEL_43:
          sub_B760(&v131, &v129);
          v59 = v127;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = *&v59;
          v61 = sub_25CD0(v29);
          v63 = *(*&v59 + 16);
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            goto LABEL_95;
          }

          v67 = v62;
          if (*(*&v59 + 24) >= v66)
          {
            if ((v60 & 1) == 0)
            {
              v95 = v61;
              sub_9CD18();
              v61 = v95;
              v10 = *v128;
              if (v67)
              {
                goto LABEL_59;
              }

              goto LABEL_72;
            }
          }

          else
          {
            sub_9AC6C(v66, v60);
            v61 = sub_25CD0(v29);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_100;
            }
          }

          v10 = *v128;
          if (v67)
          {
LABEL_59:
            v81 = (*(*&v10 + 56) + 32 * v61);
            sub_BED0(v81);
            sub_D564(&v129, v81);

            sub_BED0(&v131);
LABEL_6:
            v127 = v10;
            v11 = v124;
            if (v14)
            {
              continue;
            }

            goto LABEL_8;
          }

LABEL_72:
          *(*&v10 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          *(*(*&v10 + 48) + 8 * v61) = v29;
          sub_D564(&v129, (*(*&v10 + 56) + 32 * v61));
          sub_BED0(&v131);
          v96 = *(*&v10 + 16);
          v65 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v65)
          {
            goto LABEL_97;
          }

          *(*&v10 + 16) = v97;
          goto LABEL_6;
        }
      }

      break;
    }

    sub_B760(&v131, &v129);
    v51 = sub_BE28(0, &qword_104820);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v52 = v128[0];
    *&v129 = 0;
    v128[0] = 0;
    v125 = 0;
    v126 = 0.0;
    [v52 getRed:&v129 green:v128 blue:&v126 alpha:&v125];
    v53 = *&v129;
    if (*&v129 > 0.001 || (v53 = *v128, *v128 > 0.001) || (v53 = v126, v126 > 0.001))
    {
      *&v129 = 0;
      v128[0] = 0;
      v125 = 0;
      v126 = 0.0;
      [v52 getRed:&v129 green:v128 blue:&v126 alpha:{&v125, v53}];
      if (*&v129 < 0.99 || *v128 < 0.99 || v126 < 0.99)
      {

        goto LABEL_38;
      }
    }

    v130 = v51;
    *&v129 = a7;
    sub_D564(&v129, v128);
    v82 = a7;
    v83 = v127;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v83;
    v85 = sub_25CD0(NSForegroundColorAttributeName);
    v87 = *(*&v83 + 16);
    v88 = (v86 & 1) == 0;
    v65 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (v65)
    {
      goto LABEL_98;
    }

    v90 = v86;
    if (*(*&v83 + 24) >= v89)
    {
      if ((v84 & 1) == 0)
      {
        v98 = v85;
        sub_9CD18();
        v85 = v98;
        v10 = v126;
        if (v90)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

LABEL_65:
      v10 = v126;
      if (v90)
      {
LABEL_66:
        v92 = (*(*&v10 + 56) + 32 * v85);
        sub_BED0(v92);
        sub_D564(v128, v92);

        sub_BED0(&v131);
LABEL_77:
        v127 = v10;
LABEL_78:
        v11 = v124;
        if (v14)
        {
          continue;
        }

LABEL_8:
        if (v15 <= v16 + 1)
        {
          v23 = v16 + 1;
        }

        else
        {
          v23 = v15;
        }

        v24 = v23 - 1;
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v15)
          {
            v14 = 0;
            v133 = 0;
            v16 = v24;
            v131 = 0u;
            v132 = 0u;
            goto LABEL_17;
          }

          v14 = *(v11 + 8 * v22);
          ++v16;
          if (v14)
          {
            v16 = v22;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
      }

LABEL_75:
      *(*&v10 + 8 * (v85 >> 6) + 64) |= 1 << v85;
      *(*(*&v10 + 48) + 8 * v85) = NSForegroundColorAttributeName;
      sub_D564(v128, (*(*&v10 + 56) + 32 * v85));
      v99 = NSForegroundColorAttributeName;

      sub_BED0(&v131);
      v100 = *(*&v10 + 16);
      v65 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v65)
      {
        goto LABEL_99;
      }

      *(*&v10 + 16) = v101;
      goto LABEL_77;
    }

    break;
  }

  sub_9AC6C(v89, v84);
  v85 = sub_25CD0(NSForegroundColorAttributeName);
  if ((v90 & 1) == (v91 & 1))
  {
    goto LABEL_65;
  }

LABEL_100:
  type metadata accessor for Key(0);
  sub_C6294();
  __break(1u);
}

id sub_D39C(void *a1)
{
  if ([a1 horizontalSizeClass] == &dword_0 + 2 || objc_msgSend(a1, "userInterfaceIdiom") == &dword_4 + 1)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:a1];

    return v2;
  }

  else
  {
    v4 = sub_25A5C(UIFontTextStyleBody, &off_F0328, a1);
    sub_D460(&unk_F0348);
    return v4;
  }
}

id sub_D4B4(void *a1)
{
  v2 = &off_F0360;
  v3 = &unk_F0380;
  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v4 = &UIFontTextStyleTitle3;
  }

  else
  {
    v5 = [a1 userInterfaceIdiom];
    v4 = &UIFontTextStyleTitle3;
    if (v5 != &dword_4 + 1)
    {
      v4 = &UIFontTextStyleHeadline;
      v2 = &off_F0398;
      v3 = &unk_F03B8;
    }
  }

  v6 = sub_25A5C(*v4, v2, a1);
  sub_D460(v3);
  return v6;
}

_OWORD *sub_D564(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_D574(uint64_t a1)
{
  v2 = sub_3CB0(&qword_104818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_D5DC()
{
  result = qword_104580;
  if (!qword_104580)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104580);
  }

  return result;
}

uint64_t sub_D634(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = sub_3CB0(&qword_104858);
  v5 = __chkstk_darwin(v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_C4114();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = *(v10 + 16);
  v25 = v2;
  v16(v13, v2, v9);
  v23 = sub_E990(&qword_104860);
  sub_C5E64();
  sub_E990(&qword_104868);
  v24 = a2;
  v17 = sub_C53A4();
  v27 = v4;
  v18 = *(v4 + 48);
  *v8 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v10 + 32))(&v8[v18], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v19 = v24;
    v16(&v8[v18], v24, v9);
    v16(v13, v19, v9);
    sub_C5E74();
  }

  v20 = v26;
  sub_E9D4(v8, v26, &qword_104858);
  v21 = *v20;
  (*(v10 + 32))(v28, &v20[*(v27 + 48)], v9);
  return v21;
}

uint64_t sub_D91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3CB0(&qword_104878);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  switch(a1)
  {
    case 1:
      v13 = &enum case for MergeableWritingDirection.rightToLeft(_:);
      goto LABEL_7;
    case 0:
      v13 = &enum case for MergeableWritingDirection.leftToRight(_:);
      goto LABEL_7;
    case -1:
      v13 = &enum case for MergeableWritingDirection.natural(_:);
LABEL_7:
      v14 = *v13;
      v15 = sub_C4704();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v10, v14, v15);
      (*(v16 + 56))(v10, 0, 1, v15);
      goto LABEL_9;
  }

  v15 = sub_C4704();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_9:
  sub_E9D4(v10, v12, &qword_104878);
  sub_E9D4(v12, v7, &qword_104878);
  sub_C4704();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_C060(v7, &qword_104878);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

uint64_t sub_DBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3CB0(&qword_104870);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = &enum case for MergeableTextAlignment.left(_:);
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v13 = &enum case for MergeableTextAlignment.center(_:);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v13 = &enum case for MergeableTextAlignment.right(_:);
        goto LABEL_12;
      case 3:
        v13 = &enum case for MergeableTextAlignment.justified(_:);
        goto LABEL_12;
      case 4:
        v13 = &enum case for MergeableTextAlignment.natural(_:);
LABEL_12:
        v14 = *v13;
        v15 = sub_C44E4();
        v16 = *(v15 - 8);
        (*(v16 + 104))(v10, v14, v15);
        (*(v16 + 56))(v10, 0, 1, v15);
        goto LABEL_13;
    }
  }

  v15 = sub_C44E4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
LABEL_13:
  sub_E9D4(v10, v12, &qword_104870);
  sub_E9D4(v12, v7, &qword_104870);
  sub_C44E4();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v7, 1, v15) == 1)
  {
    sub_C060(v7, &qword_104870);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v7, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

size_t sub_DEEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_C4234();
  v4 = *(v29 - 8);
  v5 = __chkstk_darwin(v29);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = sub_C51E4();
  __chkstk_darwin(v10 - 8);
  if (!(a1 >> 62))
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_C51D4();
    return sub_C4274();
  }

  v11 = sub_C60E4();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = a1;
  v30 = &_swiftEmptyArrayStorage;
  result = sub_52518(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26[1] = a2;
    v14 = v30;
    v15 = v12;
    v28 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v27 = v4 + 32;
      do
      {
        v17 = sub_C5FE4();
        v18 = [swift_unknownObjectRetain() markerFormat];
        sub_C5484();

        [v17 startingItemNumber];
        sub_C51D4();
        sub_C4214();
        swift_unknownObjectRelease_n();
        v30 = v14;
        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_52518(v19 > 1, v20 + 1, 1);
          v14 = v30;
        }

        ++v16;
        v14[2] = v20 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v9, v29);
      }

      while (v11 != v16);
    }

    else
    {
      v27 = v4 + 32;
      v21 = 32;
      do
      {
        v22 = *(v15 + v21);
        v23 = [v22 markerFormat];
        sub_C5484();

        [v22 startingItemNumber];
        sub_C51D4();
        sub_C4214();

        v30 = v14;
        v25 = v14[2];
        v24 = v14[3];
        if (v25 >= v24 >> 1)
        {
          sub_52518(v24 > 1, v25 + 1, 1);
          v14 = v30;
        }

        v14[2] = v25 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, v29);
        v21 += 8;
        --v11;
        v15 = v28;
      }

      while (v11);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_E2C8()
{
  v1 = v0;
  v2 = sub_C4194();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3CB0(&qword_104840);
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_C4A14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_C4164();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MergeableColor.sRGB(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = sub_C4A04();
    (*(v11 + 8))(v13, v10);
    return v19;
  }

  if (v18 == enum case for MergeableColor.catalogColor(_:))
  {
    (*(v15 + 96))(v17, v14);
    sub_E9D4(v17, v9, &qword_104840);
    sub_E774(v9, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_C060(v9, &qword_104840);
      sub_C060(v7, &qword_104840);
      return 0;
    }

    else
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      (*(v29 + 32))(v28, v7, v30);
      sub_C4184();
      v25 = sub_C5444();

      v19 = [objc_opt_self() colorNamed:v25];

      (*(v23 + 8))(v22, v24);
      sub_C060(v9, &qword_104840);
    }

    return v19;
  }

  if (v18 == enum case for MergeableColor.unknown(_:))
  {
    (*(v15 + 96))(v17, v14);
    v20 = *(sub_3CB0(&qword_104848) + 48);
    v21 = sub_C5164();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
    return 0;
  }

  result = sub_C6234();
  __break(1u);
  return result;
}

uint64_t sub_E774(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E7E4(char a1)
{
  v2 = sub_C4114();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v12[1] = 0;
  sub_E990(&qword_104850);
  result = sub_C6434();
  if (a1)
  {
    sub_C4104();
    sub_D634(v8, v6);
    v10 = *(v3 + 8);
    v10(v6, v2);
    result = (v10)(v8, v2);
  }

  if ((a1 & 2) != 0)
  {
    sub_C40F4();
    sub_D634(v8, v6);
    v11 = *(v3 + 8);
    v11(v6, v2);
    return (v11)(v8, v2);
  }

  return result;
}

uint64_t sub_E990(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C4114();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E9D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3CB0(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_EA3C()
{

  v1 = OBJC_IVAR____TtC20JournalNotifications31CustomAttributeProviderConcrete_logger;
  v2 = sub_C4CD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomAttributeProviderConcrete()
{
  result = qword_1048A8;
  if (!qword_1048A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_EB34()
{
  result = sub_C4CD4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_EBD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_C4CC4();
  *a1 = v2;
  return result;
}

id sub_EC60()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

uint64_t sub_ECA0()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_104938);
  sub_B680(v0, qword_104938);
  return sub_C4CC4();
}

id sub_ED20(void *a1, char a2, char a3, char a4, void *a5)
{
  if (!a1)
  {
LABEL_17:
    if ((a2 & 1) != 0 && (v31 = [objc_opt_self() workStyleAttributes]) != 0)
    {
      v20 = v31;
      if (qword_104138 != -1)
      {
        swift_once();
      }

      v32 = sub_C4CD4();
      sub_B680(v32, qword_104938);
      v33 = sub_C4CB4();
      v34 = sub_C5A64();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] Work";
    }

    else
    {
      if ((a3 & 1) != 0 || (a4 & 1) == 0 || (v37 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0], v20 = objc_msgSend(objc_opt_self(), "styleAttributesForPlace:", v37), v37, !v20))
      {
        if (qword_104138 != -1)
        {
          swift_once();
        }

        v39 = sub_C4CD4();
        sub_B680(v39, qword_104938);
        v40 = a1;
        v41 = sub_C4CB4();
        v42 = sub_C5A64();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = 7104878;
          v44 = swift_slowAlloc();
          v76[0] = swift_slowAlloc();
          *v44 = 136315394;
          if (a1)
          {
            v45 = [v40 name];
            if (v45)
            {
              v46 = v45;
              v47 = sub_C5484();
              v49 = v48;
            }

            else
            {
              v49 = 0xE300000000000000;
              v47 = 7104878;
            }

            v52 = sub_BA920(v47, v49, v76);

            *(v44 + 4) = v52;
            *(v44 + 12) = 2080;
            v53 = [v40 pointOfInterestCategory];
            if (v53)
            {
              v54 = v53;
              v43 = sub_C5484();
              v50 = v55;
            }

            else
            {
              v50 = 0xE300000000000000;
            }
          }

          else
          {
            v50 = 0xE300000000000000;
            v51 = sub_BA920(7104878, 0xE300000000000000, v76);

            *(v44 + 4) = v51;
            *(v44 + 12) = 2080;
          }

          v56 = sub_BA920(v43, v50, v76);

          *(v44 + 14) = v56;
          _os_log_impl(&dword_0, v41, v42, "[POIClustering] [RENDERING] Fallback, mkMapItem.name=%s, mkMapItem.poiCategory=%s", v44, 0x16u);
          swift_arrayDestroy();
        }

        return 0;
      }

      if (qword_104138 != -1)
      {
        swift_once();
      }

      v38 = sub_C4CD4();
      sub_B680(v38, qword_104938);
      v33 = sub_C4CB4();
      v34 = sub_C5A64();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] City";
    }

    _os_log_impl(&dword_0, v33, v34, v36, v35, 2u);

LABEL_31:

    goto LABEL_49;
  }

  v10 = a1;
  v11 = [v10 pointOfInterestCategory];
  if (v11)
  {
    v12 = v11;
    v13 = sub_C5484();
    v15 = v14;
    if (v13 == sub_C5484() && v15 == v16)
    {

      goto LABEL_16;
    }

    v18 = sub_C6244();

    if (v18)
    {
      goto LABEL_14;
    }
  }

  v19 = [v10 _styleAttributes];
  if (!v19)
  {
LABEL_14:
    v12 = v10;
LABEL_16:

    goto LABEL_17;
  }

  v20 = v19;
  if (qword_104138 != -1)
  {
    swift_once();
  }

  v21 = sub_C4CD4();
  sub_B680(v21, qword_104938);
  v22 = v10;
  v23 = sub_C4CB4();
  v24 = sub_C5A64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v77 = v26;
    *v25 = 134218242;
    v27 = [v22 name];
    if (v27)
    {
      v28 = v27;
      sub_C5484();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v76[1] = v30;
    sub_3CB0(&qword_104950);
    v57 = sub_C5DB4();

    *(v25 + 4) = v57;

    *(v25 + 12) = 2080;
    v76[0] = [v22 pointOfInterestCategory];
    sub_3CB0(&qword_104958);
    v58 = sub_C5D94();
    v60 = v59;

    v61 = sub_BA920(v58, v60, &v77);

    *(v25 + 14) = v61;
    _os_log_impl(&dword_0, v23, v24, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v25, 0x16u);
    sub_BED0(v26);
  }

  else
  {
  }

LABEL_49:
  v62 = v20;
  [a5 displayScale];
  v64 = v63;
  v65 = [objc_allocWithZone(VKIconModifiers) init];
  [v65 setNightMode:{objc_msgSend(a5, "userInterfaceStyle") == &dword_0 + 2}];
  result = [objc_opt_self() iconManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v67 = result;
  v68 = v64;
  v69 = sub_C5444();
  *&v70 = v68;
  v71 = [v67 imageForStyleAttributes:v62 withStylesheetName:v69 contentScale:7 sizeGroup:v65 modifiers:v70];

  if (!v71)
  {

    return 0;
  }

  result = [v71 fillColor];
  if (result)
  {
    v72 = result;
    v73 = [objc_allocWithZone(UIColor) initWithCGColor:v72];

    result = [v71 image];
    if (result)
    {
      v74 = result;
      [v71 contentScale];
      [objc_allocWithZone(UIImage) initWithCGImage:v74 scale:0 orientation:v75];

      return v73;
    }

    goto LABEL_58;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_F5DC(uint64_t *a1, int a2)
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

uint64_t sub_F624(uint64_t result, int a2, int a3)
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

uint64_t sub_F670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_F6C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

int *sub_F718()
{
  result = sub_25418(&off_F03D0);
  off_104960[0] = result;
  return result;
}

int *sub_F740()
{
  result = sub_25418(&off_F0460);
  off_104968[0] = result;
  return result;
}

uint64_t sub_F768(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a2 > 1 || (a3 & 1) != 0)
  {
    if (qword_104148 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v3 = off_104968[0];
    if (!*(off_104968[0] + &dword_10))
    {
      return 0;
    }
  }

  else
  {
    if (qword_104140 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v3 = off_104960[0];
    if (!*(off_104960[0] + &dword_10))
    {
      return 0;
    }
  }

  v4 = sub_23FF8(a1);
  if (v5)
  {
    return *(*&stru_20.segname[v3 + 16] + 8 * v4);
  }

  return 0;
}

double sub_F84C(__int16 a1, uint64_t a2, int a3, double a4)
{
  v8 = COERCE_DOUBLE(sub_F768(a1, a2, a3 & 1));
  v9 = 0.0;
  v10 = 0.0;
  if ((v11 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v12 = v8 * 0.45;
      v13 = (v8 - v8 * 0.45) * 0.5;
      v14 = v13;
    }

    else
    {
      v13 = v8 * 0.55 * 0.5;
      v12 = v8 * 0.45;
      v14 = a4;
    }

    nullsub_1(v13, v14, v12, v12);
    v10 = v15;
  }

  v16 = COERCE_DOUBLE(sub_F768(a1, a2, a3 & 1));
  if ((v17 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v18 = v16 * 0.45;
      v19 = (v16 - v16 * 0.45) * 0.5;
      v20 = v19;
    }

    else
    {
      v19 = v16 * 0.55 * 0.5;
      v18 = v16 * 0.45;
      v20 = a4;
    }

    v9 = nullsub_1(v19, v20, v18, v18);
  }

  v21 = COERCE_DOUBLE(sub_F768(a1, a2, a3 & 1));
  v22 = 0.0;
  if ((v23 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v24 = v21 * 0.45;
      v25 = (v21 - v21 * 0.45) * 0.5;
      v26 = v25;
    }

    else
    {
      v25 = v21 * 0.55 * 0.5;
      v24 = v21 * 0.45;
      v26 = a4;
    }

    nullsub_1(v25, v26, v24, v24);
  }

  v27 = v10 * 0.15 * 0.5;
  v28 = v22 - v27;

  return nullsub_1(v9 - v27, v28, v10 * 1.15, v10 * 1.15);
}

uint64_t sub_FA60()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_104970);
  v1 = sub_B680(v0, qword_104970);
  if (qword_104318 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_115728);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_FB28()
{
  if (qword_1041C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1153F8;
  qword_1152E8 = qword_1153F8;

  return v1;
}

void sub_FB8C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v7 = sub_3CB0(&qword_1049D8);
  __chkstk_darwin(v7 - 8);
  v122 = v112 - v8;
  v9 = sub_3CB0(&qword_1049C8);
  __chkstk_darwin(v9 - 8);
  v121 = v112 - v10;
  v11 = sub_3CB0(&qword_1049D0);
  __chkstk_darwin(v11 - 8);
  v131 = v112 - v12;
  v13 = sub_3CB0(&qword_1049B8);
  __chkstk_darwin(v13 - 8);
  v115 = v112 - v14;
  v15 = sub_3CB0(&qword_104870);
  __chkstk_darwin(v15 - 8);
  v118 = v112 - v16;
  v120 = sub_C44E4();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v114 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3CB0(&qword_1049B0);
  __chkstk_darwin(v18 - 8);
  v117 = v112 - v19;
  v20 = sub_3CB0(&qword_104878);
  __chkstk_darwin(v20 - 8);
  v128 = v112 - v21;
  v22 = sub_C4704();
  v129 = *(v22 - 8);
  v130 = v22;
  __chkstk_darwin(v22);
  v116 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3CB0(&qword_1049C0);
  __chkstk_darwin(v24 - 8);
  v126 = v112 - v25;
  v127 = sub_C4294();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_C51E4();
  __chkstk_darwin(v27 - 8);
  v28 = sub_C4114();
  v123.i64[0] = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v112 - v32;
  v34 = sub_3CB0(&qword_1049E0);
  __chkstk_darwin(v34 - 8);
  v36 = v112 - v35;
  sub_C4824();
  sub_14308(&qword_104998, &type metadata accessor for MergeableTextAttributeScope);
  v37 = a4;
  sub_C51A4();
  if (!*(a1 + 16) || (v38 = sub_25CD0(NSFontAttributeName), (v39 & 1) == 0) || (sub_B760(*(a1 + 56) + 32 * v38, v135), sub_BE28(0, &qword_104828), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    v48 = v37;
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v113 = a2;
  v40 = *&v134[0];
  v41 = [*&v134[0] fontDescriptor];
  v42 = [v41 symbolicTraits];

  if ((v42 & 3) == 0)
  {

    a2 = v113;
    goto LABEL_8;
  }

  v112[1] = swift_getKeyPath();
  v43 = v40;
  v44 = [v43 fontDescriptor];
  v45 = [v44 symbolicTraits];

  sub_E7E4(v45);
  v46 = v123.i64[0];
  (*(v123.i64[0] + 16))(v31, v33, v28);
  sub_C51D4();
  sub_C4124();

  (*(v46 + 8))(v33, v28);
  v47 = sub_C4144();
  (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
  sub_3CB0(&qword_1049E8);
  sub_14308(&qword_1049F0, &type metadata accessor for MergeableTextAttributeScope.FontAttribute);
  v48 = v37;
  sub_C5194();

  a2 = v113;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

LABEL_9:
  v49 = sub_25CD0(NSUnderlineStyleAttributeName);
  if (v50)
  {
    sub_B760(*(a1 + 56) + 32 * v49, v135);
    if (swift_dynamicCast())
    {
      v51 = *&v134[0];
      if (*&v134[0])
      {
        swift_getKeyPath();
        *&v135[0] = v51;
        BYTE8(v135[0]) = 0;
        sub_3CB0(&qword_1049E8);
        sub_14308(&qword_104A08, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute);
        sub_C5194();
      }
    }
  }

LABEL_13:
  if (*(a1 + 16))
  {
    v52 = sub_25CD0(NSStrikethroughStyleAttributeName);
    if (v53)
    {
      sub_B760(*(a1 + 56) + 32 * v52, v135);
      if (swift_dynamicCast())
      {
        v54 = *&v134[0];
        if (*&v134[0])
        {
          swift_getKeyPath();
          *&v135[0] = v54;
          BYTE8(v135[0]) = 0;
          sub_3CB0(&qword_1049E8);
          sub_14308(&qword_104A10, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute);
          sub_C5194();
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v55 = sub_25CD0(NSParagraphStyleAttributeName);
    if (v56)
    {
      sub_B760(*(a1 + 56) + 32 * v55, v135);
      sub_BE28(0, &qword_104830);
      if (swift_dynamicCast())
      {
        v57 = a2;
        v58 = *&v134[0];
        [*&v134[0] firstLineHeadIndent];
        *v60.i64 = *v59.i64 - trunc(*v59.i64);
        v61.f64[0] = NAN;
        v61.f64[1] = NAN;
        v123 = vnegq_f64(v61);
        v62 = *vbslq_s8(v123, v60, v59).i64 + -0.1;
        [v58 headIndent];
        if (fabs(v62) < 0.01)
        {
          *v64.i64 = *v63.i64 - trunc(*v63.i64);
          if (fabs(*vbslq_s8(v123, v64, v63).i64 + -0.1) < 0.01)
          {
            swift_getKeyPath();
            LOBYTE(v135[0]) = 1;
            sub_3CB0(&qword_1049E8);
            sub_14308(&qword_104A00, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
            sub_C5194();
          }
        }

        v65 = [v58 textLists];
        sub_BE28(0, &qword_104A50);
        v66 = sub_C5674();

        if (v66 >> 62)
        {
          v111 = sub_C60E4();

          if (!v111)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v67 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));

          if (!v67)
          {
LABEL_27:
            a2 = v57;
            if ([v58 baseWritingDirection] != -1)
            {
              v74 = [v58 baseWritingDirection];
              v75 = v128;
              sub_D91C(v74, v128);
              v77 = v129;
              v76 = v130;
              if ((*(v129 + 48))(v75, 1, v130) == 1)
              {
                sub_C060(v75, &qword_104878);
              }

              else
              {
                v78 = v116;
                (*(v77 + 32))(v116, v75, v76);
                swift_getKeyPath();
                v79 = v117;
                (*(v77 + 16))(v117, v78, v76);
                v80 = sub_3CB0(&qword_104A48);
                swift_storeEnumTagMultiPayload();
                (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
                sub_3CB0(&qword_1049E8);
                sub_14308(&qword_104A40, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
                a2 = v57;
                sub_C5194();
                (*(v77 + 8))(v78, v76);
              }
            }

            if ([v58 alignment] == &dword_4)
            {
            }

            else
            {
              v81 = [v58 alignment];
              v82 = v118;
              sub_DBEC(v81, v118);
              v83 = v119;
              v84 = v120;
              if ((*(v119 + 48))(v82, 1, v120) == 1)
              {

                sub_C060(v82, &qword_104870);
              }

              else
              {
                v85 = v114;
                (*(v83 + 32))(v114, v82, v84);
                swift_getKeyPath();
                v86 = v115;
                (*(v83 + 16))(v115, v85, v84);
                v87 = sub_3CB0(&qword_104A38);
                swift_storeEnumTagMultiPayload();
                (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
                sub_3CB0(&qword_1049E8);
                sub_14308(&qword_104A30, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
                a2 = v57;
                sub_C5194();

                (*(v83 + 8))(v85, v84);
              }
            }

            goto LABEL_36;
          }
        }

        v68 = [v58 textLists];
        v69 = sub_C5674();

        v70 = v124;
        sub_DEEC(v69, v124);
        swift_getKeyPath();
        v72 = v125;
        v71 = v126;
        v73 = v127;
        (*(v125 + 16))(v126, v70, v127);
        (*(v72 + 56))(v71, 0, 1, v73);
        sub_3CB0(&qword_1049E8);
        sub_14308(&qword_104A28, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
        sub_C5194();
        (*(v72 + 8))(v70, v73);
        goto LABEL_27;
      }
    }
  }

LABEL_36:
  if (!*(a1 + 16) || (v88 = sub_25CD0(NSParagraphAttachmentAttributeName), (v89 & 1) == 0) || (sub_B760(*(a1 + 56) + 32 * v88, v135), sub_BE28(0, &qword_104A60), (swift_dynamicCast() & 1) == 0))
  {
LABEL_42:
    if (!*(a1 + 16))
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v90 = *&v134[0];
  v91 = [*&v134[0] textAttachment];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v91)
  {
    swift_getKeyPath();
    v92 = a2;
    v93 = v91;
    v94 = v131;
    sub_C4894();
    v95 = sub_C48B4();
    (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
    sub_3CB0(&qword_1049E8);
    sub_14308(&qword_104A18, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
    sub_C5194();

    a2 = v92;
    goto LABEL_42;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

LABEL_43:
  v96 = sub_25CD0(NSAttachmentAttributeName);
  if (v97)
  {
    sub_B760(*(a1 + 56) + 32 * v96, v134);
    sub_D564(v134, v135);
    sub_B760(v135, v134);
    sub_3CB0(&qword_104A68);
    if (swift_dynamicCast())
    {
      v98 = v133;
      swift_getKeyPath();
      v99 = a2;
      v100 = v98;
      v101 = v131;
      sub_C4894();
      v102 = sub_C48B4();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      sub_3CB0(&qword_1049E8);
      v103 = &qword_104A18;
      v104 = &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
    }

    else
    {
      sub_B760(v135, v134);
      sub_3CB0(&qword_104A70);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_49:
        sub_BED0(v135);
        goto LABEL_50;
      }

      v105 = v133;
      swift_getKeyPath();
      v99 = a2;
      v100 = v105;
      v106 = v121;
      sub_C4974();
      v107 = sub_C4994();
      (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
      sub_3CB0(&qword_1049E8);
      v103 = &unk_104A20;
      v104 = &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
    }

    sub_14308(v103, v104);
    a2 = v99;
    sub_C5194();

    goto LABEL_49;
  }

LABEL_50:
  if (!*(a1 + 16) || (v108 = sub_25CD0(NSForegroundColorAttributeName), (v109 & 1) == 0))
  {

    goto LABEL_56;
  }

  sub_B760(*(a1 + 56) + 32 * v108, v135);

  sub_BE28(0, &qword_104820);
  if (swift_dynamicCast())
  {
    v110 = *&v134[0];
    if (sub_11170(*&v134[0], v48, v132))
    {
      swift_getKeyPath();
      sub_C4154();
      sub_3CB0(&qword_1049E8);
      sub_14308(&qword_1049F8, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute);
      sub_C5194();

LABEL_56:
      sub_BED0(v132);
      return;
    }

    sub_BED0(v132);
  }

  else
  {
    sub_BED0(v132);
  }
}

BOOL sub_11170(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_3CB0(&qword_1049E8);
  sub_14308(&qword_104A00, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_C5184();

  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_13DC4(a3, a3[3]);
    v4 = sub_C5224();
  }

  else
  {
    if (qword_104158 != -1)
    {
      swift_once();
    }

    v4 = qword_1152E8;
  }

  v5 = v4;
  sub_BE28(0, &qword_104820);
  v6 = sub_C5D44();

  return (v6 & 1) == 0;
}

void sub_112D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = __chkstk_darwin();
  a5(v6);
  __break(1u);
}

uint64_t sub_1133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1140C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_3CB0(&qword_1049B0);
  __chkstk_darwin(v5 - 8);
  v191 = &v163[-v6];
  v7 = sub_3CB0(&qword_1049B8);
  __chkstk_darwin(v7 - 8);
  v175 = &v163[-v8];
  v170 = sub_C4234();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v163[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_3CB0(&qword_1049C0);
  __chkstk_darwin(v10 - 8);
  v173 = &v163[-v11];
  v178 = sub_C4294();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v163[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_3CB0(&qword_1049C8);
  __chkstk_darwin(v13 - 8);
  v190 = &v163[-v14];
  v15 = sub_C4994();
  v16 = *(v15 - 8);
  v183 = v15;
  v184 = v16;
  v17 = __chkstk_darwin(v15);
  v172 = &v163[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v187 = &v163[-v19];
  v167 = sub_C3D14();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v163[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_3CB0(&qword_1049D0);
  __chkstk_darwin(v21 - 8);
  v180 = &v163[-v22];
  v23 = sub_C48B4();
  v188 = *(v23 - 8);
  v189 = v23;
  v24 = __chkstk_darwin(v23);
  v171 = &v163[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v182 = &v163[-v26];
  v27 = sub_3CB0(&qword_1049D8);
  __chkstk_darwin(v27 - 8);
  v185 = &v163[-v28];
  v29 = sub_C4114();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v163[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v163[-v34];
  v36 = sub_3CB0(&qword_1049E0);
  __chkstk_darwin(v36 - 8);
  v38 = &v163[-v37];
  v179 = sub_25504(&_swiftEmptyArrayStorage);
  v39 = a2[3];
  v192 = a2;
  sub_13DC4(a2, v39);
  v40 = sub_C5214();
  swift_getKeyPath();
  v41 = sub_3CB0(&qword_1049E8);
  sub_14308(&qword_1049F0, &type metadata accessor for MergeableTextAttributeScope.FontAttribute);
  v186 = v41;
  sub_C5184();

  v42 = sub_C4144();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v38, 1, v42) == 1)
  {
    sub_C060(v38, &qword_1049E0);
    v44 = v191;
  }

  else
  {
    sub_C4134();
    (*(v43 + 8))(v38, v42);
    sub_C4104();
    sub_14308(&qword_104860, &type metadata accessor for MergeableFont.Traits);
    v45 = sub_C5E54();
    v46 = *(v30 + 8);
    v46(v33, v29);
    v176 = v3;
    sub_C40F4();
    v47 = sub_C5E54();
    v46(v33, v29);
    v46(v35, v29);
    if (v47)
    {
      v48 = v45 & 1 | 2;
    }

    else
    {
      v48 = v45 & 1;
    }

    v44 = v191;
    v3 = v176;
    v49 = sub_236E0(v48);

    v40 = v49;
  }

  v196 = sub_BE28(0, &qword_104828);
  *&v195 = v40;
  sub_D564(&v195, &v194);
  v181 = v40;
  v50 = v179;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v193 = v50;
  sub_819DC(&v194, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  v52 = v193;
  swift_getKeyPath();
  sub_14308(&qword_1049F8, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute);
  v53 = v185;
  sub_C5184();

  v54 = sub_C4164();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v53, 1, v54);
  v57 = v187;
  if (v56 == 1)
  {
    sub_C060(v53, &qword_1049D8);
  }

  else
  {
    v58 = sub_E2C8();
    (*(v55 + 8))(v53, v54);
    if (v58)
    {
      goto LABEL_17;
    }
  }

  swift_getKeyPath();
  sub_14308(&qword_104A00, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_C5184();

  if (v195 == 2 || (v195 & 1) == 0)
  {
    sub_13DC4(v192, v192[3]);
    v59 = sub_C5224();
  }

  else
  {
    if (qword_104158 != -1)
    {
      swift_once();
    }

    v59 = qword_1152E8;
  }

  v58 = v59;
LABEL_17:
  v196 = sub_BE28(0, &qword_104820);
  *&v195 = v58;
  sub_D564(&v195, &v194);
  v60 = v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v52;
  sub_819DC(&v194, NSForegroundColorAttributeName, v61);
  v62 = v193;
  swift_getKeyPath();
  sub_14308(&qword_104A08, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute);
  sub_C5184();

  if (BYTE8(v195))
  {
    v63 = v190;
  }

  else
  {
    v63 = v190;
    if (v195)
    {
      v196 = &type metadata for Int;
      sub_D564(&v195, &v194);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_819DC(&v194, NSUnderlineStyleAttributeName, v64);
      v62 = v193;
    }
  }

  v65 = v44;
  swift_getKeyPath();
  sub_14308(&qword_104A10, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute);
  sub_C5184();

  if (BYTE8(v195))
  {
    v66 = v60;
  }

  else
  {
    v66 = v60;
    if (v195)
    {
      v67 = v57;
      v196 = &type metadata for Int;
      sub_D564(&v195, &v194);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_819DC(&v194, NSStrikethroughStyleAttributeName, v68);
      v62 = v193;
      goto LABEL_26;
    }
  }

  v67 = v57;
LABEL_26:
  swift_getKeyPath();
  sub_14308(&qword_104A18, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
  v69 = v180;
  sub_C5184();

  v71 = v188;
  v70 = v189;
  if ((*(v188 + 48))(v69, 1, v189) == 1)
  {
    sub_C060(v69, &qword_1049D0);
    v72 = v67;
LABEL_37:
    v100 = v66;
    v101 = v65;
    v89 = v183;
    goto LABEL_38;
  }

  v185 = v62;
  (*(v71 + 32))(v182, v69, v70);
  sub_13DC4(v192, v192[3]);
  v73 = sub_C5204();
  if (v73)
  {
    v74 = v73;
    ObjectType = swift_getObjectType();
    v76 = sub_C5244();
    v72 = v67;
    if (v77)
    {
      v196 = ObjectType;
      *&v195 = v74;
      sub_D564(&v195, &v194);
      v78 = v74;
      v79 = v185;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v79;
      sub_819DC(&v194, NSAttachmentAttributeName, v80);
    }

    else
    {
      v102 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v74 position:v76];
      v103 = NSParagraphAttachmentAttributeName;
      v196 = sub_BE28(0, &qword_104A60);
      *&v195 = v102;
      sub_D564(&v195, &v194);
      v104 = v102;
      v105 = v185;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v105;
      sub_819DC(&v194, v103, v106);
    }

    (*(v188 + 8))(v182, v189);
    v62 = v193;
    v63 = v190;
    goto LABEL_37;
  }

  v180 = v66;
  v72 = v67;
  if (qword_104150 != -1)
  {
    swift_once();
  }

  v81 = sub_C4CD4();
  sub_B680(v81, qword_104970);
  v82 = v188;
  v83 = v189;
  v84 = v171;
  v85 = v182;
  (*(v188 + 16))(v171, v182, v189);
  v86 = sub_C4CB4();
  v87 = sub_C5A44();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v183;
  if (v88)
  {
    v90 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *&v195 = v179;
    *v90 = 136315138;
    v91 = v165;
    v164 = v87;
    sub_C48A4();
    sub_14308(&qword_104A58, &type metadata accessor for UUID);
    v92 = v167;
    v93 = sub_C6214();
    v95 = v94;
    (*(v166 + 8))(v91, v92);
    v176 = v3;
    v96 = *(v82 + 8);
    v96(v84, v83);
    v97 = sub_BA920(v93, v95, &v195);
    v98 = v180;
    v89 = v183;

    *(v90 + 4) = v97;
    _os_log_impl(&dword_0, v86, v164, "Attachment not found for ID: %s", v90, 0xCu);
    sub_BED0(v179);

    v99 = v83;
    v100 = v98;
    v96(v182, v99);
    v63 = v190;
    v101 = v191;
    v3 = v176;
    v72 = v187;
    v62 = v185;
  }

  else
  {

    v131 = *(v82 + 8);
    v131(v84, v83);
    v131(v85, v83);
    v62 = v185;
    v63 = v190;
    v101 = v191;
    v100 = v180;
  }

LABEL_38:
  swift_getKeyPath();
  sub_14308(&qword_104A20, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
  sub_C5184();

  v107 = v184;
  if ((*(v184 + 48))(v63, 1, v89) == 1)
  {
    sub_C060(v63, &qword_1049C8);
  }

  else
  {
    v185 = v62;
    (*(v107 + 32))(v72, v63, v89);
    sub_13DC4(v192, v192[3]);
    v108 = sub_C5234();
    if (v108)
    {
      v109 = v108;
      v196 = swift_getObjectType();
      *&v195 = v109;
      sub_D564(&v195, &v194);
      v110 = v109;
      v111 = v185;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v111;
      sub_819DC(&v194, NSAttachmentAttributeName, v112);

      (*(v107 + 8))(v72, v89);
      v62 = v193;
    }

    else
    {
      v113 = v100;
      if (qword_104150 != -1)
      {
        swift_once();
      }

      v114 = sub_C4CD4();
      sub_B680(v114, qword_104970);
      v115 = v184;
      v116 = v172;
      v117 = v187;
      (*(v184 + 16))(v172, v187, v89);
      v118 = sub_C4CB4();
      v119 = sub_C5A44();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v195 = v121;
        *v120 = 136315138;
        v122 = sub_C4984();
        v123 = v89;
        v124 = v113;
        v126 = v125;
        v176 = v3;
        v127 = *(v115 + 8);
        v128 = v116;
        v129 = v123;
        v127(v128, v123);
        v130 = sub_BA920(v122, v126, &v195);

        *(v120 + 4) = v130;
        _os_log_impl(&dword_0, v118, v119, "Attachment not found for prompt: %s", v120, 0xCu);
        sub_BED0(v121);

        v127(v187, v129);
        v100 = v124;
        v101 = v191;
        v3 = v176;
        v62 = v185;
      }

      else
      {

        v132 = *(v115 + 8);
        v132(v116, v89);
        v132(v117, v89);
        v101 = v191;
        v62 = v185;
        v100 = v113;
      }
    }
  }

  v133 = sub_BE28(0, &qword_104838);
  v134 = sub_C318();
  if (sub_12F68())
  {
    swift_getKeyPath();
    sub_14308(&qword_104A00, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
    sub_C5184();

    if (v195 != 2 && (v195 & 1) != 0)
    {
      v135 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v135 setParagraphStyle:v134];
      [v135 setFirstLineHeadIndent:14.1];
      [v135 setHeadIndent:14.1];

      v134 = v135;
    }

    swift_getKeyPath();
    sub_14308(&qword_104A28, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
    v136 = v173;
    sub_C5184();
    v137 = v136;

    v138 = v177;
    v139 = v136;
    v140 = v178;
    if ((*(v177 + 48))(v139, 1, v178) == 1)
    {
      sub_C060(v137, &qword_1049C0);
    }

    else
    {
      v190 = v133;
      v180 = v100;
      (*(v138 + 32))(v174, v137, v140);
      v141 = sub_C4284();
      v142 = *(v141 + 16);
      if (v142)
      {
        v189 = v134;
        v185 = v62;
        v176 = v3;
        *&v195 = &_swiftEmptyArrayStorage;
        sub_C6084();
        v192 = *(v169 + 16);
        v143 = *(v169 + 80);
        v188 = v141;
        v144 = v141 + ((v143 + 32) & ~v143);
        v145 = *(v169 + 72);
        v146 = (v169 + 8);
        v147 = v170;
        v148 = v168;
        do
        {
          (v192)(v148, v144, v147);
          sub_C4204();
          v149 = sub_C5444();

          [objc_allocWithZone(NSTextList) initWithMarkerFormat:v149 options:0 startingItemNumber:sub_C4224()];

          (*v146)(v148, v147);
          sub_C6064();
          sub_C6094();
          sub_C60A4();
          sub_C6074();
          v144 += v145;
          --v142;
        }

        while (v142);

        v101 = v191;
        v62 = v185;
        v134 = v189;
      }

      else
      {
      }

      sub_BE28(0, &qword_104A50);
      isa = sub_C5664().super.isa;

      [v134 setTextLists:isa];

      (*(v177 + 8))(v174, v178);
      v100 = v180;
      v133 = v190;
    }

    swift_getKeyPath();
    sub_14308(&qword_104A30, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
    v151 = v175;
    sub_C5184();

    v152 = sub_3CB0(&qword_104A38);
    if ((*(*(v152 - 8) + 48))(v151, 1, v152) == 1)
    {
      sub_C060(v151, &qword_1049B8);
    }

    else
    {
      v153 = sub_1347C();
      v155 = v154;
      sub_C060(v151, &qword_104A38);
      if ((v155 & 1) == 0)
      {
        [v134 setAlignment:v153];
      }
    }

    swift_getKeyPath();
    sub_14308(&qword_104A40, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_C5184();

    v156 = sub_3CB0(&qword_104A48);
    if ((*(*(v156 - 8) + 48))(v101, 1, v156) == 1)
    {
      sub_C060(v101, &qword_1049B0);
    }

    else
    {
      v157 = sub_13714();
      v159 = v158;
      sub_C060(v101, &qword_104A48);
      if ((v159 & 1) == 0)
      {
        [v134 setBaseWritingDirection:v157];
      }
    }
  }

  v196 = v133;
  *&v195 = v134;
  sub_D564(&v195, &v194);
  v160 = v134;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v62;
  sub_819DC(&v194, NSParagraphStyleAttributeName, v161);

  return v193;
}

uint64_t sub_12F68()
{
  v0 = sub_3CB0(&qword_1049C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = sub_3CB0(&qword_1049B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-v4];
  v6 = sub_3CB0(&qword_1049B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_3CB0(&qword_1049C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  swift_getKeyPath();
  sub_3CB0(&qword_1049E8);
  sub_14308(&qword_104A00, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_C5184();

  if (v21[15] != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_14308(&qword_104A28, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute);
  sub_C5184();

  v12 = sub_C4294();
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_C060(v11, &qword_1049C0);
  if (v14 == 1)
  {
    swift_getKeyPath();
    sub_14308(&qword_104A40, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_C5184();

    v15 = sub_3CB0(&qword_104A48);
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_C060(v8, &qword_1049B0);
    if (v16 == 1)
    {
      swift_getKeyPath();
      sub_14308(&qword_104A30, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute);
      sub_C5184();

      v17 = sub_3CB0(&qword_104A38);
      v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
      sub_C060(v5, &qword_1049B8);
      if (v18 == 1)
      {
        swift_getKeyPath();
        sub_14308(&qword_104A20, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
        sub_C5184();

        v19 = sub_C4994();
        v13 = (*(*(v19 - 8) + 48))(v2, 1, v19) != 1;
        sub_C060(v2, &qword_1049C8);
      }
    }
  }

  return v13;
}

uint64_t sub_1347C()
{
  v1 = sub_3CB0(&qword_104A38);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_C44E4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_B954(v0, v3, &qword_104A38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_C060(v3, &qword_104A38);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableTextAlignment.natural(_:))
  {
    v11 = 4;
LABEL_13:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableTextAlignment.left(_:))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.right(_:))
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.center(_:))
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.justified(_:))
  {
    v11 = 3;
    goto LABEL_13;
  }

  result = sub_C6234();
  __break(1u);
  return result;
}

uint64_t sub_13714()
{
  v1 = sub_3CB0(&qword_104A48);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_C4704();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_B954(v0, v3, &qword_104A48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_C060(v3, &qword_104A48);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableWritingDirection.natural(_:))
  {
    v11 = -1;
LABEL_9:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableWritingDirection.leftToRight(_:))
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (v12 == enum case for MergeableWritingDirection.rightToLeft(_:))
  {
    v11 = 1;
    goto LABEL_9;
  }

  result = sub_C6234();
  __break(1u);
  return result;
}

void protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTextAttributeScope(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_139D8(a3, v7);

  sub_FB8C(a1, a2, v7, a4);
}

uint64_t sub_139D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for static AttributeConverter.preferredAttributeProvider.getter in conformance MergeableTextAttributeScope()
{
  v0 = type metadata accessor for CustomAttributeProviderConcrete();
  sub_14308(&qword_1047E8, type metadata accessor for CustomAttributeProviderConcrete);
  return v0;
}

uint64_t protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTitleAttributeScope()
{
  sub_14308(&qword_104988, &type metadata accessor for MergeableTitleAttributeScope);

  return sub_C51A4();
}

unint64_t _s13JournalShared28MergeableTitleAttributeScopeV0A2UI0E9Converter0A13NotificationsAdEP12nsAttributes4from15traitCollection06customE8ProviderSDySo21NSAttributedStringKeyaypG9Coherence012CRAttributedR0V0K0Vyx_G_So07UITraitN0CAD06CustomeP0_ptFZTW_0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_3CB0(&qword_1049A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE0A0;
  *(inited + 32) = NSFontAttributeName;
  sub_13DC4(a3, a3[3]);
  v5 = NSFontAttributeName;
  v6 = sub_C5214();
  v7 = sub_BE28(0, &qword_104828);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  sub_13DC4(a3, a3[3]);
  v8 = NSForegroundColorAttributeName;
  v9 = sub_C5224();
  *(inited + 104) = sub_BE28(0, &qword_104820);
  *(inited + 80) = v9;
  v10 = sub_25504(inited);
  swift_setDeallocating();
  sub_3CB0(&qword_1049A8);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_13CD0()
{
  result = qword_104990;
  if (!qword_104990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104990);
  }

  return result;
}

void *sub_13DC4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_14308(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_14350(uint64_t a1, __int16 a2, uint64_t a3, int a4, void *a5, void *a6, double a7)
{
  v14 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_basePOICircleView;
  v46 = a2 & 0x100;
  v47 = a4 & 0x10000;
  *&v7[v14] = [objc_allocWithZone(UIImageView) init];
  v15 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_downArrowView;
  *&v7[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *&v7[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = &v7[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration];
  *v18 = a2;
  v18[1] = HIBYTE(a2) & 1;
  *(v18 + 1) = a3;
  v18[16] = a4 & 1;
  v18[17] = BYTE1(a4) & 1;
  v18[18] = BYTE2(a4) & 1;
  *(v18 + 3) = a7;
  v49.receiver = v7;
  v49.super_class = _s19MOPOIAnnotationViewCMa();
  v19 = objc_msgSendSuper2(&v49, "initWithAnnotation:reuseIdentifier:", a1, 0);
  v20 = sub_F768(a2, a3, a4 & 1);
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if ((v26 & 1) == 0)
  {
    v22 = nullsub_1(0.0, 0.0, *&v20, *&v20);
  }

  [v19 setFrame:{v22, v23, v24, v25}];
  v27 = &v19[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_basePOICircleView];
  v28 = *&v19[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_basePOICircleView];
  v29 = COERCE_DOUBLE(sub_F768(a2, a3, a4 & 1));
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  if ((v33 & 1) == 0)
  {
    if ((a3 > 1 || (a4 & 1) != 0 || v47 && !v46) && (a4 & 0x100) != 0)
    {
      v34 = v29 * 0.45;
      v35 = (v29 - v29 * 0.45) * 0.5;
      v36 = v35;
    }

    else
    {
      v35 = v29 * 0.55 * 0.5;
      v34 = v29 * 0.45;
      v36 = a7;
    }

    v21 = nullsub_1(v35, v36, v34, v34);
  }

  [v28 setFrame:{v21, v30, v31, v32}];

  sub_14BF8(a5, a6);
  if (a3 <= 1)
  {
    if (a4)
    {
      sub_1503C();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    }

    else if (!v47 || v46)
    {
      sub_1478C();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_downArrowView]];
    }
  }

  else
  {
    sub_1503C();
    sub_1492C();
    [v19 addSubview:*&v19[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    v27 = &v19[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_clusterCountLabel];
  }

  [v19 addSubview:*v27];
  v37 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_borderBackgroundView;
  v38 = [*&v19[OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_borderBackgroundView] layer];
  v39 = [objc_opt_self() secondarySystemBackgroundColor];
  v40 = [v39 CGColor];

  [v38 setShadowColor:v40];
  v41 = [*&v19[v37] layer];
  LODWORD(v42) = 0.5;
  [v41 setShadowOpacity:v42];

  v43 = [*&v19[v37] layer];
  [v43 setShadowRadius:5.0];

  v44 = [*&v19[v37] layer];
  [v44 setShadowPathIsBounds:1];

  sub_14FFC(a5, a6);
  swift_unknownObjectRelease();
  return v19;
}

void sub_1478C()
{
  v1 = v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration;
  v2 = *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 8);
  v3 = *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 16);
  v4 = v2 <= 1 && v3 == 0;
  if (v4 && ((*(v1 + 18) ^ 1 | *(v1 + 1)) & 1) != 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_downArrowView);
    v6 = *(v1 + 24);
    v7 = COERCE_DOUBLE(sub_F768(*v1, v2, v3));
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if ((v12 & 1) == 0)
    {
      v8 = nullsub_1(v7 * 0.4, v6 + v7 * 0.3, v7 * 0.2, v7 * 0.2);
    }

    [v5 setFrame:{v8, v9, v10, v11}];
    v13 = sub_C5444();
    v14 = [objc_opt_self() systemImageNamed:v13];

    [v5 setImage:v14];

    [v5 setContentMode:2];
  }
}

void sub_1492C()
{
  v1 = v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration;
  v2 = *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 8);
  if (v2 >= 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_clusterCountLabel);
    v4 = *(v1 + 17);
    v5 = *(v1 + 24);
    v6 = COERCE_DOUBLE(sub_F768(*v1, v2, *(v1 + 16)));
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    if ((v11 & 1) == 0)
    {
      if (v4)
      {
        v12 = v6 * 0.45;
        v13 = (v6 - v6 * 0.45) * 0.5;
        v14 = v13;
      }

      else
      {
        v13 = v6 * 0.55 * 0.5;
        v12 = v6 * 0.45;
        v14 = v5;
      }

      v7 = nullsub_1(v13, v14, v12, v12);
    }

    [v3 setFrame:{v7, v8, v9, v10}];
    sub_C6214();
    v15 = sub_C5444();

    [v3 setText:v15];

    [v3 setTextAlignment:1];
    v16 = [objc_opt_self() whiteColor];
    [v3 setTextColor:v16];

    v17 = COERCE_DOUBLE(sub_F768(*v1, *(v1 + 8), *(v1 + 16)));
    v18 = 15.0;
    if ((v19 & 1) == 0)
    {
      v18 = v17 / 6.0;
    }

    v20 = [objc_opt_self() boldSystemFontOfSize:v18];
    [v3 setFont:v20];

    [v3 setAdjustsFontSizeToFitWidth:1];
    [v3 setClipsToBounds:1];
    v21 = [v3 layer];
    [v3 frame];
    [v21 setCornerRadius:CGRectGetWidth(v22) * 0.5];
  }
}

void sub_14BF8(void *a1, void *a2)
{
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_basePOICircleView);
    v19 = a1;
    v5 = a2;
    [v4 setImage:v5];
    [*(v2 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v19];
    [*(v2 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v19];
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_basePOICircleView);
    [v6 frame];
    v7 = CGRectGetWidth(v21) * 0.25;
    [v6 frame];
    v8 = CGRectGetHeight(v22) * 0.23;
    [v6 frame];
    v9 = CGRectGetWidth(v23) * 0.5;
    [v6 frame];
    Height = CGRectGetHeight(v24);
    v11 = nullsub_1(v7, v8, v9, Height * 0.5);
    v15 = [objc_allocWithZone(UIImageView) initWithFrame:{v11, v12, v13, v14}];
    v19 = v15;
    if (qword_104208 != -1)
    {
      swift_once();
      v15 = v19;
    }

    [v15 setImage:qword_115468];
    v16 = [objc_opt_self() systemWhiteColor];
    [v19 setTintColor:v16];

    if (qword_1041C0 != -1)
    {
      swift_once();
    }

    v17 = qword_1153F0;
    [v6 setBackgroundColor:qword_1153F0];
    [*(v2 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v17];
    [*(v2 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v17];
    v18 = [v6 layer];
    [v6 frame];
    [v18 setCornerRadius:CGRectGetHeight(v25) * 0.5];

    [v6 addSubview:v19];
  }
}

id sub_14F38()
{
  v2.receiver = v0;
  v2.super_class = _s19MOPOIAnnotationViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_14FFC(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_1503C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_borderBackgroundView);
  if (*(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 16);
  if (*(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 18))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  [v1 setFrame:{sub_F84C(v2 | *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration), *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 8), v4 | v5, *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_configuration + 24))}];
  v6 = [v1 layer];
  v7 = [objc_opt_self() whiteColor];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor:v8];
  [v1 setClipsToBounds:1];
  v9 = [v1 layer];
  [v1 frame];
  [v9 setCornerRadius:CGRectGetWidth(v11) * 0.5];
}

void sub_151C8()
{
  v1 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtCC20JournalNotifications10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  sub_C60D4();
  __break(1u);
}

uint64_t sub_152D0()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_104B60);
  v1 = sub_B680(v0, qword_104B60);
  if (qword_104308 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_1156F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_15398()
{
  sub_C62F4();
  sub_C3D14();
  sub_17874(&qword_104C98, &type metadata accessor for UUID);
  sub_C5304();
  return sub_C6344();
}

uint64_t sub_15434()
{
  sub_C3D14();
  sub_17874(&qword_104C98, &type metadata accessor for UUID);
  return sub_C5304();
}

Swift::Int sub_154B4()
{
  sub_C62F4();
  sub_C3D14();
  sub_17874(&qword_104C98, &type metadata accessor for UUID);
  sub_C5304();
  return sub_C6344();
}

size_t sub_1555C(uint64_t a1, double a2)
{
  v5 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  v8 = &off_104000;
  *&v2[OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v9 = _s30MOSuggestionAssetMapsClustererCMa();
  v52.receiver = v2;
  v52.super_class = v9;
  v10 = objc_msgSendSuper2(&v52, "init");
  v11 = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v51 = _swiftEmptyArrayStorage;
    v38 = v10;
    v13 = v10;
    result = sub_52538(0, v12, 0);
    v15 = 0;
    v16 = v51;
    v17 = a1 + 48;
    v39 = v12;
    v40 = a1;
    while (v15 < *(a1 + 16))
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      v21 = *v17;
      v20 = *(v17 + 8);
      v22 = *(v17 + 16);
      v23 = *(v17 + 32);
      v45 = *(v17 + 24);
      v46 = *(v17 + 40);
      v24 = *(v17 + 48);
      if (v22)
      {
        v20 = 1;
      }

      v43 = v21;
      v44 = v20;
      v48 = v15;
      v25 = v21;

      v49 = sub_C6214();
      v50 = v26;
      v53._countAndFlagsBits = 95;
      v53._object = 0xE100000000000000;
      sub_C5524(v53);
      v47 = v16;
      v27 = v49;
      v28 = v50;
      v29 = v42;
      v30 = v25;

      sub_C3D04();

      *v7 = v18;
      v7[1] = v19;
      v32 = v43;
      v31 = v44;
      v7[2] = 0;
      v7[3] = v31;
      v7[4] = v27;
      v7[5] = v28;
      v16 = v47;
      *(v7 + v29[9]) = v32;
      v33 = (v7 + v29[10]);
      *v33 = v45;
      v33[1] = v23;
      *(v7 + v29[11]) = v46;
      *(v7 + v29[12]) = v24;
      v51 = v16;
      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_52538(v34 > 1, v35 + 1, 1);
        v16 = v51;
      }

      ++v15;
      *(v16 + 2) = v35 + 1;
      result = sub_19D34(v7, v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35);
      v17 += 72;
      a1 = v40;
      if (v39 == v15)
      {

        v8 = &off_104000;
        v11 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v10;

    v16 = _swiftEmptyArrayStorage;
LABEL_11:
    *(v8[369] + v11) = v16;

    return v11;
  }

  return result;
}

uint64_t sub_15874()
{
  v1 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v115 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v114 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v113 = v105 - v5;
  v6 = __chkstk_darwin(v4);
  v112 = v105 - v7;
  v8 = __chkstk_darwin(v6);
  v110 = v105 - v9;
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v111 = v105 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v105 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v105 - v17;
  result = __chkstk_darwin(v16);
  v22 = v105 - v21;
  v23 = *(v0 + OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_inputClusters);
  v130 = v23;
  v24 = v23[2];
  if (!v24)
  {
LABEL_108:
    __break(1u);
    return result;
  }

  v117 = v24 - 1;
  if (v24 != 1)
  {
    v106 = v20;
    v105[0] = result;
    v127 = v0;
    v109 = OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold;
    v107 = OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_results;
    v125 = OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_skipColumns;
    v126 = OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_skipRows;

    v25 = 0;
    v108 = 0;
    v121 = v18;
    v123 = v22;
    v116 = v15;
    while (2)
    {
      v122 = v23;
      v119 = v25 + 1;
      result = sub_194C4(&v130);
      v26 = 0;
      v27 = result + 32;
      v120 = result;
      v28 = *(result + 16);
      v124 = -1;
      v29 = 1.79769313e308;
      v30 = -1;
      v31 = v127;
LABEL_7:
      v32 = v26;
      while (v28 != v32)
      {
        if (v32 >= v28)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v26 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_93;
        }

        v33 = *(v27 + 8 * v32);
        v34 = *(v33 + 16);
        ++v32;
        if (v34)
        {
          v35 = 0;
          v36 = v33 + 32;
          v37 = v32 - 1;
          while (1)
          {
            v38 = *(v36 + 8 * v35);
            v39 = *(v31 + v126);
            if (*(v39 + 16))
            {
              result = sub_C62E4();
              v40 = -1 << *(v39 + 32);
              v41 = result & ~v40;
              if ((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                v42 = ~v40;
                v31 = v127;
                while (*(*(v39 + 48) + 8 * v41) + 1 != v32)
                {
                  v41 = (v41 + 1) & v42;
                  if (((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
            }

LABEL_21:
            v43 = *(v31 + v125);
            if (*(v43 + 16))
            {
              result = sub_C62E4();
              v44 = -1 << *(v43 + 32);
              v45 = result & ~v44;
              if ((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
              {
                v46 = ~v44;
                v31 = v127;
                while (*(*(v43 + 48) + 8 * v45) != v35)
                {
                  v45 = (v45 + 1) & v46;
                  if (((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_13;
              }

              v31 = v127;
              if (v28 >= 2)
              {
LABEL_29:
                if (v35 < v37 && v37 >= 1)
                {
                  if (v38 >= v29)
                  {
                    v47 = v29;
                  }

                  else
                  {
                    v47 = v38;
                  }

                  v48 = v124;
                  if (v38 >= v29)
                  {
                    v49 = v124;
                  }

                  else
                  {
                    v49 = v35;
                  }

                  if (v38 >= v29)
                  {
                    v50 = v30;
                  }

                  else
                  {
                    v50 = v32 - 1;
                  }

                  if (v35 < v28)
                  {
                    v29 = v47;
                    v48 = v49;
                  }

                  v124 = v48;
                  if (v35 < v28)
                  {
                    v30 = v50;
                  }
                }
              }
            }

            else
            {
LABEL_26:
              if (v28 >= 2)
              {
                goto LABEL_29;
              }
            }

LABEL_13:
            if (++v35 == v34)
            {
              v18 = v121;
              v22 = v123;
              goto LABEL_7;
            }
          }
        }
      }

      v51 = v116;
      v52 = v124;
      if (v30 == -1 && v124 == -1)
      {

LABEL_5:
        v23 = v122;
        v25 = v119;
        if (v119 != v117)
        {
          continue;
        }
      }

      break;
    }

    v53 = v122;
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    v54 = v122[2];
    if (v30 >= v54)
    {
LABEL_96:
      __break(1u);
    }

    else
    {
      v55 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v56 = *(v115 + 72);
      result = sub_19D98(v122 + v55 + v56 * v30, v22);
      if (v52 < v54)
      {
        v118 = v56;
        v57 = sub_19D98(v53 + v55 + v56 * v52, v18);
        if (v29 >= *(v127 + v109) * *(v127 + v109))
        {

          v61 = v114;
          sub_19D98(v22, v114);
          swift_beginAccess();
          v62 = v113;
          sub_61048(v113, v61);
          sub_19E50(v62);
          sub_19D98(v18, v61);
          sub_61048(v62, v61);
          sub_19E50(v62);
          swift_endAccess();
LABEL_74:
          sub_19E50(v18);
          sub_19E50(v22);
          goto LABEL_5;
        }

        __chkstk_darwin(v57);
        v105[-2] = v22;
        v105[-1] = v18;
        v58 = v108;
        result = sub_178BC(sub_19F10, &v105[-4], v53);
        v108 = v58;
        v105[1] = v105;
        if (v59)
        {
          v124 = v53[2];
          v60 = v105[0];
        }

        else
        {
          v63 = result + 1;
          v60 = v105[0];
          v64 = v118;
          if (__OFADD__(result, 1))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v124 = result;
          v66 = v53 + 2;
          v65 = v53[2];
          if (v63 != v65)
          {
            v99 = v55 + v118 * v63;
            while (v63 < v65)
            {
              sub_19D98(v53 + v99, v51);
              if (sub_C3CE4())
              {
                result = sub_19E50(v51);
              }

              else
              {
                v100 = sub_C3CE4();
                result = sub_19E50(v51);
                if ((v100 & 1) == 0)
                {
                  v101 = v124;
                  if (v63 != v124)
                  {
                    if (v124 < 0)
                    {
                      goto LABEL_103;
                    }

                    v102 = v55;
                    v103 = *v66;
                    if (v124 >= *v66)
                    {
                      goto LABEL_104;
                    }

                    v104 = v124 * v118;
                    result = sub_19D98(v53 + v102 + v124 * v118, v106);
                    if (v63 >= v103)
                    {
                      goto LABEL_105;
                    }

                    sub_19D98(v53 + v99, v110);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v53 = sub_577FC(v53);
                    }

                    v55 = v102;
                    result = sub_19EAC(v110, v53 + v102 + v104);
                    if (v63 >= v53[2])
                    {
                      goto LABEL_106;
                    }

                    result = sub_19EAC(v106, v53 + v99);
                    v64 = v118;
                    v101 = v124;
                  }

                  v124 = v101 + 1;
                }
              }

              ++v63;
              v66 = v53 + 2;
              v65 = v53[2];
              v99 += v64;
              if (v63 == v65)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_94;
          }
        }

LABEL_57:

        v67 = v53[2];
        v68 = v124 - v67;
        if (v124 <= v67)
        {
          if ((v124 & 0x8000000000000000) == 0)
          {
            v69 = v53[2];
            if (v69 >= v67)
            {
              v70 = v69 + v68;
              if (!__OFADD__(v69, v68))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v130 = v53;
                if (isUniquelyReferenced_nonNull_native && v70 <= v53[3] >> 1)
                {
                  v122 = v53;
                }

                else
                {
                  if (v69 <= v70)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = v69;
                  }

                  v122 = sub_48490(isUniquelyReferenced_nonNull_native, v72, 1, v53);
                  v130 = v122;
                }

                result = sub_57824(v124, v67, 0);
                v73 = v60[9];
                v74 = v123;
                v75 = *&v123[v73];
                v76 = v75;
                v77 = v121;
                if (!v75)
                {
                  v76 = *&v121[v73];
                  result = v76;
                }

                v78 = *(v74 + 3);
                v79 = *(v77 + 3);
                v80 = v78 + v79;
                if (!__OFADD__(v78, v79))
                {
                  v81 = (*(v74 + 1) + *(v77 + 1)) * 0.5;
                  v82 = (*v74 + *v77) * 0.5;
                  v83 = *(v74 + 4);
                  v84 = *(v74 + 5);
                  v85 = *(v77 + 4);
                  v86 = *(v77 + 5);
                  v128 = v83;
                  v129 = v84;
                  v87 = v75;

                  v131._countAndFlagsBits = v85;
                  v131._object = v86;
                  sub_C5524(v131);
                  v88 = v128;
                  v89 = v129;
                  v90 = v111;
                  sub_C3D04();
                  *v90 = v82;
                  *(v90 + 8) = v81;
                  *(v90 + 16) = v29;
                  *(v90 + 24) = v80;
                  *(v90 + 32) = v88;
                  *(v90 + 40) = v89;
                  *(v90 + v60[9]) = v76;
                  v91 = (v90 + v60[10]);
                  *v91 = 0;
                  v91[1] = 0xE000000000000000;
                  *(v90 + v60[11]) = 0;
                  *(v90 + v60[12]) = 0;
                  sub_19D98(v90, v112);
                  v92 = v122;
                  v94 = v122[2];
                  v93 = v122[3];
                  if (v94 >= v93 >> 1)
                  {
                    v92 = sub_48490(v93 > 1, v94 + 1, 1, v122);
                  }

                  v95 = v118;
                  v92[2] = v94 + 1;
                  sub_19D34(v112, v92 + v55 + v94 * v95);
                  v122 = v92;
                  v130 = v92;
                  v96 = v111;
                  v97 = v114;
                  sub_19D98(v111, v114);
                  swift_beginAccess();
                  v98 = v113;
                  sub_61048(v113, v97);
                  sub_19E50(v98);
                  swift_endAccess();
                  sub_19E50(v96);
                  v18 = v121;
                  v22 = v123;
                  goto LABEL_74;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_16288()
{
  _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  if (sub_C3CE4())
  {
    return 1;
  }

  else
  {
    return sub_C3CE4() & 1;
  }
}

double *sub_16304()
{
  v120 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v122 = *(v120 - 1);
  v0 = __chkstk_darwin(v120);
  v125 = v105 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v4 = v105 - v3;
  v5 = __chkstk_darwin(v2);
  v114 = v105 - v6;
  v7 = __chkstk_darwin(v5);
  v108 = v105 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (v105 - v10);
  __chkstk_darwin(v9);
  v13 = (v105 - v12);
  v131 = 0;
  v132 = 0xE000000000000000;
  if (qword_104160 != -1)
  {
    goto LABEL_103;
  }

LABEL_2:
  v14 = sub_C4CD4();
  sub_B680(v14, qword_104B60);
  v15 = sub_C4CB4();
  v16 = sub_C5A64();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = 0x3FE0000000000000;
    _os_log_impl(&dword_0, v15, v16, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v17, 0xCu);
  }

  v18 = OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_results;
  v19 = v121;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = &off_104000;
  if (*(v20 + 16))
  {
    v126 = v18;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0.0;
LABEL_10:
    if (v24)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        swift_once();
        goto LABEL_2;
      }

      if (v29 >= v25)
      {
        break;
      }

      v24 = *(v20 + 56 + 8 * v29);
      ++v26;
      if (v24)
      {
        v26 = v29;
LABEL_15:
        sub_19D98(*(v20 + 48) + *(v122 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v13);
        v30 = v13[2];
        v31 = *(v13 + v120[9]);
        v32 = v31;
        sub_19E50(v13);
        if (v31)
        {

          v28 = 0.5;
        }

        else
        {
          v28 = -0.5;
        }

        v24 &= v24 - 1;
        v27 = v27 + v30 * (1.0 - v28);
        goto LABEL_10;
      }
    }

    v33 = *(v126 + v121);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = sub_AC6E0(*(v33 + 16), 0);
      v126 = sub_AD470(&v127, v35 + ((*(v122 + 80) + 32) & ~*(v122 + 80)), v34, v33);
      swift_bridgeObjectRetain_n();
      sub_B824();
      if (v126 != v34)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v127 = v35;
    v13 = 0;
    sub_179A8(&v127);

    v37 = v127;
    v38 = *(v127 + 2);
    if (v38)
    {
      v39 = 0;
      v40 = v27 / v34;
      v117 = OBJC_IVAR____TtCC20JournalNotifications10MapManager30MOSuggestionAssetMapsClusterer_inputClusters;
      v36 = v122;
      v116 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v127 + v116;
      v105[2] = MKPointOfInterestCategoryReligiousSite;
      v126 = _swiftEmptyArrayStorage;
      v113 = v127;
      v112 = v38;
      v111 = v127 + v116;
      v119 = v11;
      while (1)
      {
        if (v39 >= *(v37 + 2))
        {
          goto LABEL_99;
        }

        v42 = *(v36 + 72);
        sub_19D98(&v41[v42 * v39], v11);
        v43 = v11[2];
        if (v43 >= v40)
        {
          goto LABEL_26;
        }

        v123 = v42;
        v127 = v131;
        v128 = v132;
        v13 = *(v11 + 4);
        v11 = *(v11 + 5);
        v129 = v13;
        v130 = v11;
        sub_19DFC();
        if (sub_C5E34())
        {
          v11 = v119;
          goto LABEL_25;
        }

        v118 = v13;
        v127 = v13;
        v128 = v11;
        v129 = 95;
        v130 = 0xE100000000000000;
        v44 = sub_C5E04();
        if (!*(v44 + 16))
        {
          goto LABEL_101;
        }

        v45 = v44;
        v13 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_57810(v45);
        }

        v11 = v119;
        v46 = *(v45 + 2);
        if (!v46)
        {
          goto LABEL_102;
        }

        *(v45 + 2) = v46 - 1;

        v47 = *(v45 + 2);
        if (!v47)
        {

          v52 = 0;
          goto LABEL_83;
        }

        v48 = 0;
        v115 = 0;
        v124 = 0;
        v49 = (v45 + 5);
        v50 = 0.0;
        v51 = 0.0;
        do
        {
          v54 = *(v49 - 1);
          v55 = *v49;
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v55 == 0xE000000000000000;
          }

          if (!v56 && (sub_C6244() & 1) == 0)
          {

            v57 = sub_170A8(v54, v55);
            if ((v58 & 1) == 0 && (v57 & 0x8000000000000000) == 0)
            {
              v59 = *(v121 + v117);
              if (v57 < *(v59 + 16))
              {
                v60 = (v59 + v116 + v57 * v123);
                v62 = *v60;
                v61 = v60[1];
                v63 = *(v60 + v120[9]);
                if (v63)
                {
                  v64 = v63;
                  if (v115 <= 0)
                  {
                    v109 = v64;
                    v65 = [v109 pointOfInterestCategory];
                    v110 = v13;
                    if (v65)
                    {
                      v66 = v65;
                      v106 = sub_C5484();
                      v68 = v67;
                      v69 = sub_C5484();
                      v107 = v68;
                      if (v106 == v69 && v68 == v70)
                      {

                        v13 = v110;
                        goto LABEL_38;
                      }

                      v105[1] = v70;
                      LODWORD(v106) = sub_C6244();

                      v13 = v110;
                      if (v106)
                      {
                        v66 = v109;
                        goto LABEL_38;
                      }
                    }

                    v66 = v109;
                    v72 = [v109 _styleAttributes];
                    if (v72)
                    {

                      v73 = v120;
                      v74 = (v11 + v120[10]);
                      v75 = v74[1];
                      v115 = *v74;
                      v109 = v75;
                      v107 = v120[8];

                      v76 = v108;
                      sub_C3D04();
                      *v76 = v62;
                      *(v76 + 8) = v61;
                      *(v76 + 16) = v43;
                      *(v76 + 24) = 1;
                      v77 = v110;
                      *(v76 + 32) = v118;
                      *(v76 + 40) = v77;
                      *(v76 + v73[9]) = v63;
                      v78 = (v76 + v73[10]);
                      v79 = v109;
                      *v78 = v115;
                      v78[1] = v79;
                      *(v76 + v73[11]) = 0;
                      *(v76 + v73[12]) = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v126 = sub_48490(0, *(v126 + 2) + 1, 1, v126);
                      }

                      v81 = *(v126 + 2);
                      v80 = *(v126 + 3);
                      if (v81 >= v80 >> 1)
                      {
                        v126 = sub_48490(v80 > 1, v81 + 1, 1, v126);
                      }

                      v82 = v126;
                      *(v126 + 2) = v81 + 1;
                      sub_19D34(v108, v82 + v116 + v81 * v123);
                      if (v51 != 0.0)
                      {
                        v51 = v51 + (v51 - v62) / 7.0;
                      }

                      v13 = v110;
                      if (v50 != 0.0)
                      {
                        v50 = v50 + (v50 - v61) / 7.0;
                      }

                      v115 = 1;
LABEL_46:
                      v124 = v63;
                      goto LABEL_47;
                    }

LABEL_38:
                  }
                }

                if (v51 == 0.0)
                {
                  v51 = v62;
                }

                else
                {
                  v51 = (v51 + v62) * 0.5;
                }

                if (v50 == 0.0)
                {
                  v50 = v61;
                }

                else
                {
                  v50 = (v50 + v61) * 0.5;
                }

                if (__OFADD__(v48++, 1))
                {
                  goto LABEL_100;
                }

                goto LABEL_46;
              }
            }
          }

LABEL_47:
          v49 += 2;
          --v47;
        }

        while (v47);

        v41 = v111;
        if (v48 < 1)
        {
          v37 = v113;
          v38 = v112;
        }

        else
        {
          v83 = v120;
          v84 = (v11 + v120[10]);
          v85 = v84[1];
          v115 = *v84;
          v86 = v124;
          v87 = v124;

          v88 = v114;
          sub_C3D04();
          *v88 = v51;
          *(v88 + 8) = v50;
          *(v88 + 16) = v43;
          v89 = v118;
          *(v88 + 24) = v48;
          *(v88 + 32) = v89;
          *(v88 + 40) = v13;
          *(v88 + v83[9]) = v86;
          v90 = (v88 + v83[10]);
          *v90 = v115;
          v90[1] = v85;
          *(v88 + v83[11]) = 0;
          *(v88 + v83[12]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_48490(0, *(v126 + 2) + 1, 1, v126);
          }

          v92 = *(v126 + 2);
          v91 = *(v126 + 3);
          v37 = v113;
          v38 = v112;
          v11 = v119;
          if (v92 >= v91 >> 1)
          {
            v126 = sub_48490(v91 > 1, v92 + 1, 1, v126);
          }

          v93 = v126;
          *(v126 + 2) = v92 + 1;
          sub_19D34(v114, v93 + v116 + v92 * v123);
        }

        v52 = v124;
LABEL_83:
        v133._countAndFlagsBits = v118;
        v133._object = v13;
        sub_C5524(v133);

LABEL_25:
        v36 = v122;
LABEL_26:
        ++v39;
        sub_19E50(v11);
        if (v39 == v38)
        {

          goto LABEL_86;
        }
      }
    }

    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
LABEL_86:
    v21 = &off_104000;
  }

  else
  {
LABEL_20:
    v126 = _swiftEmptyArrayStorage;
    v36 = v122;
  }

  v94 = *(v21[369] + v121);
  v95 = *(v94 + 16);
  if (v95)
  {
    v96 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v97 = v94 + v96;
    v98 = *(v36 + 72);
    v124 = *(v21[369] + v121);

    do
    {
      sub_19D98(v97, v4);
      v127 = v131;
      v128 = v132;
      v100 = *(v4 + 4);
      v101 = *(v4 + 5);
      v129 = v100;
      v130 = v101;
      sub_19DFC();
      if ((sub_C5E34() & 1) == 0)
      {
        sub_19D98(v4, v125);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_48490(0, *(v126 + 2) + 1, 1, v126);
        }

        v103 = *(v126 + 2);
        v102 = *(v126 + 3);
        if (v103 >= v102 >> 1)
        {
          v126 = sub_48490(v102 > 1, v103 + 1, 1, v126);
        }

        v99 = v126;
        *(v126 + 2) = v103 + 1;
        sub_19D34(v125, v99 + v96 + v103 * v98);
        v134._countAndFlagsBits = v100;
        v134._object = v101;
        sub_C5524(v134);
      }

      sub_19E50(v4);
      v97 += v98;
      --v95;
    }

    while (v95);
  }

  return v126;
}

uint64_t sub_170A8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_C6044();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_17A50(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_173D8()
{
  v2.receiver = v0;
  v2.super_class = _s30MOSuggestionAssetMapsClustererCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_174B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_C3D14();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_17570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_C3D14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s30MOSuggestionAssetMapsClustererC7ClusterVMa()
{
  result = qword_104C20;
  if (!qword_104C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_17660()
{
  sub_1772C();
  if (v0 <= 0x3F)
  {
    sub_C3D14();
    if (v1 <= 0x3F)
    {
      sub_17788();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1772C()
{
  if (!qword_104C30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_104C30);
    }
  }
}

void sub_17788()
{
  if (!qword_104C38)
  {
    sub_177E0();
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_104C38);
    }
  }
}

unint64_t sub_177E0()
{
  result = qword_104C40;
  if (!qword_104C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_104C40);
  }

  return result;
}

uint64_t sub_17874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_178BC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

Swift::Int sub_179A8(void **a1)
{
  v2 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_3C8A0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_18450(v6);
  *a1 = v3;
  return result;
}

unsigned __int8 *sub_17A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_C5594();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_17FDC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_C6044();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}