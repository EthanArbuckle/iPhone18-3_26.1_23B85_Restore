void sub_1004A62B4(uint64_t *a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR___BKEngagementManager_metadata;
    v7 = Strong;
    swift_beginAccess();
    v8 = *&v7[v6];

    sub_100796BA4();
    v9 = sub_100796BB4();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = *a1;
    swift_beginAccess();
    sub_100217AB4(v4, v8 + v10);
    swift_endAccess();
  }
}

void sub_1004A6404(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = OBJC_IVAR___BKEngagementManager_metadata;
      v11 = Strong;
      swift_beginAccess();
      v12 = *&v11[v10];
      swift_errorRetain();
      v13 = v12;

      v14 = *a2;
      swift_beginAccess();
      *&v13[v14] = a1;
      swift_errorRetain();
    }

    else
    {
      swift_errorRetain();
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = OBJC_IVAR___BKEngagementManager_metadata;
      v17 = v15;
      swift_beginAccess();
      v18 = *&v17[v16];

      sub_100796BA4();

      v19 = sub_100796BB4();
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
      v20 = *a3;
      swift_beginAccess();
      sub_100217AB4(v8, v18 + v20);
      swift_endAccess();
    }

    else
    {
    }
  }
}

id EngagementManagerAnalyticsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementManagerAnalyticsHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004A66F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100798204();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1004A6760(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = [a2 eventConfigurations];
  sub_100799824();
  v6 = sub_1007A25E4();

  if (v6 >> 62)
  {
    v7 = sub_1007A38D4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v26 = _swiftEmptyArrayStorage;
  result = sub_1003BD0CC(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  v24 = v3;
  v9 = 0;
  v10 = v26;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = sub_100799814();
    v15 = v14;

    v26 = v10;
    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      sub_1003BD0CC((v16 > 1), v17 + 1, 1);
      v10 = v26;
    }

    ++v9;
    v10[2] = v17 + 1;
    v18 = &v10[2 * v17];
    v18[4] = v13;
    v18[5] = v15;
  }

  while (v7 != v9);

  v3 = v24;
LABEL_14:
  v19 = sub_10040E374(v10);

  v20 = OBJC_IVAR___BKEngagementManagerAnalyticsHelper_allProperties;
  *&v3[OBJC_IVAR___BKEngagementManagerAnalyticsHelper_allProperties] = v19;
  v21 = sub_10040E374(&off_100A0C7B0);
  swift_arrayDestroy();
  *&v3[OBJC_IVAR___BKEngagementManagerAnalyticsHelper_sampleCapableProperties] = v21;
  v22 = *&v3[v20];
  if (*(v21 + 16) <= v22[2] >> 3)
  {
    v26 = *&v3[v20];

    sub_100625434(v21);

    v23 = v26;
  }

  else
  {

    v23 = sub_10062566C(v21, v22);
  }

  *&v3[OBJC_IVAR___BKEngagementManagerAnalyticsHelper_standardProperties] = v23;
  v25.receiver = v3;
  v25.super_class = type metadata accessor for EngagementManagerAnalyticsHelper();
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_1004A69F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004A6A68(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      if (a1 == 128)
      {
        return 0x6165707061736944;
      }

      else
      {
        return 0x6465726165707041;
      }
    }

    v1 = 0x6165707061736944;
  }

  else
  {
    v1 = 0x6E69726165707041;
  }

  v6 = v1;
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3._countAndFlagsBits = 0x646574616D696E61;
  }

  else
  {
    v3._countAndFlagsBits = 0x6D696E61206E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEC00000064657461;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v3._object = v4;
  sub_1007A23D4(v3);

  return v6;
}

BOOL sub_1004A6B74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v4 = v3 ^ v2 ^ 1;
      if ((v3 & 0xC0) != 0x40)
      {
        v4 = 0;
      }

      return v4 & 1;
    }

    else
    {
      v7 = v3 == 128;
      v8 = v3 == 129;
      if (v2 == 128)
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    v6 = v3 ^ v2 ^ 1;
    if (v3 >= 0x40)
    {
      v6 = 0;
    }

    return v6 & 1;
  }
}

uint64_t sub_1004A6BE8(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = result >> 6;
  if (result >> 6)
  {
    if (v4 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return result;
      }
    }

    else if (result == 128)
    {
      if (a2 == 128)
      {
        return result;
      }
    }

    else if (a2 == 129)
    {
      return result;
    }
  }

  else if (a2 < 0x40u)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
    if (!(result >> 6))
    {
      return result;
    }

    if (v4 != 1)
    {
      if (result != 128)
      {
        return result;
      }

      v5 = *(a4 + 8);
      v6 = a2 & 1;
      v7 = 1;
      goto LABEL_30;
    }

    v9 = a4;
    v10 = a3;
    (*(a4 + 16))(a3, a4);
    v5 = *(v9 + 8);
    v6 = a2 & 1;
    v7 = 1;
LABEL_29:
    a3 = v10;
    a4 = v9;
LABEL_30:

    return v5(v7, v6, a3, a4);
  }

  if (a2 >> 6 == 1)
  {
    if (result >> 6)
    {
      if (v4 == 1 || result == 128)
      {
        return result;
      }

      v5 = *(a4 + 8);
      v6 = a2 & 1;
      v7 = 0;
      goto LABEL_30;
    }

    v9 = a4;
    v10 = a3;
    (*(a4 + 16))(a3, a4);
    v5 = *(v9 + 8);
    v6 = a2 & 1;
    v7 = 0;
    goto LABEL_29;
  }

  if (a2 == 128)
  {
    if (result >> 6)
    {
      if (v4 != 1)
      {
        if (result == 128)
        {
          return result;
        }

        v11 = *(a4 + 8);
        v12 = 0;
LABEL_44:
        v17 = a3;
        v18 = a4;
        v11(v12, 0);
        v19 = *(v18 + 16);

        return v19(v17, v18);
      }

      goto LABEL_33;
    }

    v20 = *(a4 + 16);
    v13 = a4;
    v14 = a3;
    v20(a3, a4);
    (*(v13 + 8))(0, 0, v14, v13);
  }

  else
  {
    if (!(result >> 6))
    {
LABEL_33:
      v16 = *(a4 + 16);

      return v16(a3, a4);
    }

    if (v4 != 1)
    {
      if (result != 128)
      {
        return result;
      }

      v11 = *(a4 + 8);
      v12 = 1;
      goto LABEL_44;
    }

    v20 = *(a4 + 16);
    v13 = a4;
    v14 = a3;
    v20(a3, a4);
    (*(v13 + 8))(1, 0, v14, v13);
  }

  return (v20)(v14, v13);
}

uint64_t getEnumTagSinglePayload for AppearanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AppearanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1004A70B4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1004A70E0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

void sub_1004A7138(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&unk_100AD83B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v13 - v7;
  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      v13[0] = a1;
      v13[1] = a2;
      sub_10020E834();

      sub_100795ED4();
      v11 = sub_100795EE4();
      (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    }

    else
    {
      v12 = sub_100795EE4();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    }

    sub_1007A30D4();
  }
}

uint64_t sub_1004A72A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1004A7324()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE6188);
  sub_100008B98(v0, qword_100AE6188);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

uint64_t sub_1004A73A8(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 < 1 || _s5Books17REActionMenuStateC9pageCountSivpfi_0() == a1)
  {
    return 0;
  }

  sub_1007A0654();
  v2 = sub_10079F474();

  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_1007A38D4();
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_23:

    return 0;
  }

LABEL_5:
  v4 = 0;
  while ((v2 & 0xC000000000000001) == 0)
  {
    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_16;
    }

LABEL_10:
    if (sub_1007A1264() < v1)
    {
      v6 = sub_1007A1264();
      if (__OFSUB__(v1, v6))
      {
        goto LABEL_21;
      }

      if (v1 - v6 < sub_1007A1314())
      {
        goto LABEL_17;
      }
    }

    ++v4;
    if (v5 == v3)
    {
      goto LABEL_23;
    }
  }

  sub_1007A3784();
  v5 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
LABEL_17:

  v7 = sub_1007A1304();
  result = sub_1007A1264();
  v9 = v1 - result;
  if (__OFSUB__(v1, result))
  {
    __break(1u);
  }

  else if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = [objc_allocWithZone(BKPageLocation) initWithOrdinal:v7 andOffset:v9];

    return v10;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1004A7540(uint64_t a1)
{
  sub_1007A3C04();
  v3 = 0x1000000;
  if ((*(v1 + 3) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = *v1 | (*(v1 + 2) << 16) | v3;
  v5 = &_mh_execute_header;
  if ((v1[2] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((*(v1 + 5) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x1000000000000;
  if ((v1[3] & 1) == 0)
  {
    v7 = 0;
  }

  sub_1005B59A8(v9, v4 | v5 | v6 | v7, *(v1 + 1));
  sub_1007A0634();
  sub_1004AEEB0(&qword_100AE63A0, &type metadata accessor for PageMovementState);
  sub_1007A2084();
  sub_1007A3C24(*(v1 + *(a1 + 24)));
  return sub_1007A3C44();
}

void sub_1004A7660(uint64_t a1, uint64_t a2)
{
  v4 = 0x1000000;
  if ((*(v2 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *v2 | (*(v2 + 2) << 16) | v4;
  v6 = &_mh_execute_header;
  if ((v2[2] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((*(v2 + 5) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v2[3] & 1) == 0)
  {
    v8 = 0;
  }

  sub_1005B59A8(a1, v5 | v6 | v7 | v8, *(v2 + 1));
  sub_1007A0634();
  sub_1004AEEB0(&qword_100AE63A0, &type metadata accessor for PageMovementState);
  sub_1007A2084();
  sub_1007A3C24(*(v2 + *(a2 + 24)));
}

Swift::Int sub_1004A776C(uint64_t a1, uint64_t a2)
{
  sub_1007A3C04();
  v4 = 0x1000000;
  if ((*(v2 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *v2 | (*(v2 + 2) << 16) | v4;
  v6 = &_mh_execute_header;
  if ((v2[2] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((*(v2 + 5) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v2[3] & 1) == 0)
  {
    v8 = 0;
  }

  sub_1005B59A8(v10, v5 | v6 | v7 | v8, *(v2 + 1));
  sub_1007A0634();
  sub_1004AEEB0(&qword_100AE63A0, &type metadata accessor for PageMovementState);
  sub_1007A2084();
  sub_1007A3C24(*(v2 + *(a2 + 24)));
  return sub_1007A3C44();
}

uint64_t sub_1004A7888(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = 0x1000000;
  if (*(a1 + 3))
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1 | (*(a1 + 2) << 16) | v7;
  v9 = &_mh_execute_header;
  if (a1[2])
  {
    v10 = &_mh_execute_header;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (*(a1 + 5))
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0x1000000000000;
  if (a1[3])
  {
    v14 = 0x1000000000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 | v10 | v12;
  if ((*(a2 + 3) & 1) == 0)
  {
    v6 = 0;
  }

  v16 = *a2 | (*(a2 + 2) << 16) | v6;
  if ((a2[2] & 1) == 0)
  {
    v9 = 0;
  }

  if ((*(a2 + 5) & 1) == 0)
  {
    v11 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v13 = 0;
  }

  if (sub_1005B6D88(v15 | v14, *(a1 + 1), a1[8] & 1, v16 | v9 | v11 | v13, *(a2 + 1)) & 1) != 0 && (sub_1007A0604())
  {
    v17 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1004A79C8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1001F1160(&qword_100AE63B0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v35 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v28[-v6];
  v8 = type metadata accessor for _BookReaderInteractorState(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1007A0634();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for BookReaderDataManager();
  v15 = sub_1005B6CB4();
  v30 = v16;
  v31 = v15;
  v29 = v17;
  v37 = *(v1 + 176);
  v34 = v37;
  type metadata accessor for PageMovementController();
  sub_1004AEEB0(&qword_100AE63B8, type metadata accessor for PageMovementController);

  sub_1007A0A94();
  swift_getObjectType();
  v18 = sub_1007A0A54();
  v19 = v30;
  *v7 = v31;
  *(v7 + 1) = v19;
  v7[16] = v29;
  v20 = v32;
  v21 = v33;
  v22 = *(v32 + 32);
  v22(&v7[*(v3 + 56)], v14, v33);
  v7[*(v3 + 72)] = v18 & 1;
  *v11 = 2;
  *(v11 + 1) = 0;
  *(v11 + 5) = 0;
  *(v11 + 1) = 5;
  v11[16] = 0;
  v23 = *(v9 + 28);
  sub_1007A0614();
  v24 = *(v9 + 32);
  v25 = v35;
  sub_10020B3C8(v7, v35, &qword_100AE63B0);
  v38 = *v25;
  v39 = v25[16];
  v26 = *(v3 + 56);
  LOBYTE(v3) = v25[*(v3 + 72)];
  (*(v20 + 8))(&v11[v23], v21);
  v22(&v11[v23], &v25[v26], v21);
  *v11 = v38;
  v11[16] = v39;
  v11[v24] = v3;
  sub_100298138(v11, v36);
  sub_10029819C(v11);
}

uint64_t sub_1004A7D14()
{
  v1 = sub_1001F1160(&qword_100AE63C0);
  v2 = *(v1 - 8);
  v18 = v1;
  v19 = v2;
  __chkstk_darwin(v1);
  v15 = &v15 - v3;
  v21 = sub_1001F1160(&qword_100AE63C8);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = &v15 - v4;
  v20 = sub_1001F1160(&qword_100AE63D0);
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v17 = &v15 - v5;
  type metadata accessor for BookReaderDataManager();
  v6 = sub_1005B6CF4();
  v25 = *(*(v0 + 176) + 64);
  v26 = v6;
  sub_1001F1160(&qword_100AE63D8);
  sub_100005920(&qword_100AE63E0, &qword_100AE63D8);
  v25 = sub_10079BA14();
  swift_getObjectType();
  v24 = sub_1007A0A64();
  sub_1001F1160(&qword_100AE63E8);
  sub_1001F1160(&unk_100AEA100);
  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AE63F0, &qword_100AE63E8);
  sub_100005920(&qword_100AE63F8, &unk_100AEA100);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  v7 = v15;
  sub_10079B7B4();
  type metadata accessor for _BookReaderInteractorState(0);
  sub_100005920(&qword_100AE6400, &qword_100AE63C0);
  v8 = v16;
  v9 = v18;
  sub_10079BA74();
  (*(v19 + 8))(v7, v9);
  sub_100005920(&qword_100AE6408, &qword_100AE63C8);
  sub_1004AEEB0(&qword_100AE6380, type metadata accessor for _BookReaderInteractorState);
  v10 = v17;
  v11 = v21;
  sub_10079BAF4();
  (*(v23 + 8))(v8, v11);
  sub_100005920(&qword_100AE6410, &qword_100AE63D0);
  v12 = v20;
  v13 = sub_10079BA14();
  (*(v22 + 8))(v10, v12);
  return v13;
}

uint64_t sub_1004A8224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v38) = a5;
  v37 = a4;
  v40 = a6;
  v39 = type metadata accessor for _BookReaderInteractorState(0) - 8;
  __chkstk_darwin(v39);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AE63B0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = a3;
  v23 = *(v12 + 56);
  v24 = sub_1007A0634();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v22[v23], v37, v24);
  v22[*(v12 + 72)] = v38;
  sub_1000077D8(v22, v19, &qword_100AE63B0);
  v26 = *(v12 + 56);
  v27 = v19[*(v12 + 72)];
  *v16 = *v19;
  v16[16] = v19[16];
  v38 = *(v25 + 32);
  v38(&v16[v26], &v19[v26], v24);
  v16[*(v12 + 72)] = v27;
  *v10 = 2;
  *(v10 + 1) = 0;
  *(v10 + 5) = 0;
  *(v10 + 1) = 5;
  v10[16] = 0;
  v28 = v39;
  v29 = *(v39 + 28);
  sub_1007A0614();
  sub_100007840(v22, &qword_100AE63B0);
  v30 = *(v28 + 32);
  v31 = v16;
  v32 = v36;
  sub_10020B3C8(v31, v36, &qword_100AE63B0);
  v41 = *v32;
  v42 = *(v32 + 16);
  v33 = *(v12 + 56);
  LOBYTE(v12) = *(v32 + *(v12 + 72));
  (*(v25 + 8))(&v10[v29], v24);
  v38(&v10[v29], (v32 + v33), v24);
  *v10 = v41;
  v10[16] = v42;
  v10[v30] = v12;
  sub_100298138(v10, v40);
  return sub_10029819C(v10);
}

uint64_t sub_1004A8538@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 1);
  v10 = *(a1 + 16);
  v11 = *a1;
  v12 = sub_1001F1160(&qword_100AE6418);
  v13 = *(a1 + *(v12 + 64));
  v14 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = v11 | (v4 << 16) | v14;
  v16 = &_mh_execute_header;
  if ((v6 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x10000000000;
  if ((v7 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x1000000000000;
  if ((v8 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = a1 + *(v12 + 48);

  return sub_1004A8224(v15 | v16 | v17 | v18, v9, v10 & 1, v19, v13, a2);
}

uint64_t sub_1004A8620()
{
  v0 = sub_1007A1C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10079F9D4();
  type metadata accessor for CurrentLocationProvider();
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

  sub_1007A0544();

  v4 = sub_10079F454();

  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  sub_1001F1160(&unk_100AE6A00);
  sub_100005920(&qword_100AE6398, &unk_100AE6A00);
  LOBYTE(v0) = sub_1007A28A4();

  return v0 & 1;
}

void sub_1004A8804(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1007A1C14();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&unk_100AE7C50);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1001F1160(&unk_100AF2670);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  if ((sub_1004A8620() & 1) != v2)
  {
    if (a1)
    {
      sub_1004A8C68(v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_100007840(v8, &unk_100AE7C50);
        if (qword_100AD1728 != -1)
        {
          swift_once();
        }

        v13 = sub_10079ACE4();
        sub_100008B98(v13, qword_100AE6188);
        v14 = sub_10079ACC4();
        v15 = sub_1007A29B4();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
        }
      }

      else
      {
        sub_10020B3C8(v8, v12, &unk_100AF2670);
        swift_getObjectType();
        sub_1007A1BE4();
        if (sub_1007A1B94() < 0)
        {
          __break(1u);
        }

        else
        {
          sub_1007A0904();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1006A976C(1);
            swift_unknownObjectRelease();
          }

          sub_100007840(v12, &unk_100AF2670);
        }
      }
    }

    else
    {
      swift_getObjectType();
      sub_10079F9D4();
      type metadata accessor for CurrentLocationProvider();
      sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

      sub_1007A0544();

      v17 = sub_10079F454();

      (*(v19 + 8))(v5, v3);
      sub_1005B61C8(v17);

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1006A976C(0);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1004A8C68@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CurrentLocationProvider();
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

  v2 = sub_1007A05E4();
  v4 = v3;

  sub_1002060B4();
  v5 = sub_1007A28A4();
  v6 = sub_1001F1160(&unk_100AF2670);
  v7 = v6;
  if (v5)
  {
    v8 = (a1 + *(v6 + 48));

    sub_1007A0544();

    *v8 = v2;
    v8[1] = v4;
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_1004A8E10()
{
  v1 = sub_1001F1160(&qword_100AE6420);
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  __chkstk_darwin(v1);
  v34 = &v27 - v3;
  v44 = sub_1001F1160(&qword_100AE6428);
  __chkstk_darwin(v44);
  v35 = &v27 - v4;
  v43 = sub_1001F1160(&qword_100AE6430);
  __chkstk_darwin(v43);
  v29 = &v27 - v5;
  v6 = sub_1001F1160(&unk_100AE1530);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v28 = sub_1001F1160(&qword_100AE6438);
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = &v27 - v11;
  v36 = sub_1001F1160(&qword_100AE6440);
  __chkstk_darwin(v36);
  v31 = &v27 - v13;
  v38 = sub_1001F1160(&qword_100AE6448);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v27 - v14;
  v37 = sub_1001F1160(&qword_100AE6450);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v27 - v15;
  v27 = v0;
  swift_getObjectType();
  v47 = sub_10079FA14();
  sub_10079F9B4();
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  sub_10079BAF4();
  (*(v7 + 8))(v9, v6);
  v30 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v16 = sub_100005920(&qword_100AE6458, &qword_100AE6438);
  v17 = v28;
  sub_10079B9E4();
  (*(v10 + 8))(v12, v17);
  v45 = sub_10079F9F4();
  sub_1001F1160(&unk_100AEA1E0);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
  sub_10079BAA4();

  type metadata accessor for CurrentLocationProvider();
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

  v18 = sub_1007A0554();

  v45 = v18;
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE6460);
  sub_100005920(&unk_100AEB880, &qword_100AE6460);
  v19 = v34;
  sub_10079BA64();

  sub_100005920(&qword_100AE6468, &qword_100AE6420);
  sub_1004AEEB0(&unk_100AEB800, &type metadata accessor for PageLocation);
  v20 = v41;
  sub_10079BAF4();
  (*(v42 + 8))(v19, v20);
  sub_1001F1160(&qword_100AE6470);
  sub_100005920(&qword_100AE6478, &qword_100AE6470);
  v45 = v17;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100005920(&qword_100AE6480, &qword_100AE6430);
  sub_100005920(&qword_100AE6488, &qword_100AE6428);
  v21 = v32;
  sub_10079B7C4();
  sub_100005920(&qword_100AE6490, &qword_100AE6448);
  v22 = v33;
  v23 = v38;
  sub_10079BA74();
  (*(v40 + 8))(v21, v23);
  sub_100005920(&qword_100AE6498, &qword_100AE6450);
  v24 = v37;
  v25 = sub_10079BA14();
  (*(v39 + 8))(v22, v24);
  return v25;
}

uint64_t sub_1004A96E4@<X0>(_BYTE *a1@<X8>)
{
  sub_1001F1160(&qword_100AE64A0);
  sub_10079F444();
  sub_1001F1160(&unk_100AE6A00);
  sub_100005920(&qword_100AE6398, &unk_100AE6A00);
  v2 = sub_1007A28A4();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1004A97B8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 160);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10079B884();
    sub_1004AEEB0(&qword_100AE1500, &type metadata accessor for AnyCancellable);
    result = sub_1007A2864();
    v5 = v21;
    v4 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_10004DC54();

      *(v1 + 160) = &_swiftEmptySetSingleton;

      sub_10002B130(v1 + 16);
      sub_10002B130(v1 + 32);
      sub_10002B130(v1 + 48);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v18 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
      v19 = sub_100796BB4();
      (*(*(v19 - 8) + 8))(v1 + v18, v19);

      return v1;
    }

    while (1)
    {
      sub_10079B874();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10079B884();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A9AB0()
{
  sub_1004A97B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1004A9B30()
{
  result = sub_100796BB4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1004A9C68()
{
  result = sub_1007A0634();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1004A9D34(uint64_t a1)
{
  v2 = *(*(v1 + 176) + 56);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      sub_100529680(a1, 1);
      return;
    }

LABEL_8:
    sub_1004178E4(a1, 1);
    return;
  }

  if (!*(*(v1 + 176) + 56))
  {
    goto LABEL_8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100597250(a1, 1);

    swift_unknownObjectRelease();
  }
}

void sub_1004A9DC8(uint64_t a1)
{
  v3 = sub_10079FD44();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v43 - v6;
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v45 = &v43 - v11;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 40);
  v49 = v1;
  swift_getObjectType();
  sub_10079F9D4();
  v15 = sub_10079F434();

  if (v14)
  {
    if (v15)
    {
      if (sub_1007A12D4())
      {
        sub_1007A0C24();

        v16 = v46;
        sub_10079FD04();
        if (qword_100AD1B58 != -1)
        {
          swift_once();
        }

        v17 = sub_10079ACE4();
        sub_100008B98(v17, qword_100AF40B0);
        v19 = v47;
        v18 = v48;
        v20 = v44;
        (*(v47 + 16))(v44, v16, v48);
        v21 = sub_10079ACC4();
        v22 = sub_1007A2994();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = v20;
          v45 = swift_slowAlloc();
          v50 = v45;
          *v23 = 136315138;
          sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation);
          v25 = sub_1007A3A74();
          v27 = v26;
          v28 = *(v19 + 8);
          v28(v24, v48);
          v29 = sub_1000070F4(v25, v27, &v50);
          v18 = v48;

          *(v23 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v21, v22, "Requesting move to highlight location: %s", v23, 0xCu);
          sub_1000074E0(v45);

          v16 = v46;
        }

        else
        {

          v28 = *(v19 + 8);
          v28(v20, v18);
        }

        sub_10070AD08(v16);

        v28(v16, v18);
        return;
      }

      goto LABEL_14;
    }

LABEL_15:
    type metadata accessor for CurrentLocationController(0);
    sub_1004AEEB0(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
    v51._countAndFlagsBits = v12;
    v51._object = v13;
    sub_1007A09D4(v51);
    return;
  }

  if (!v15)
  {
    goto LABEL_15;
  }

  if (!sub_1007A12C4())
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_1007A0C24();

  v30 = v45;
  sub_10079FD04();
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v31 = sub_10079ACE4();
  sub_100008B98(v31, qword_100AF40B0);
  v33 = v47;
  v32 = v48;
  (*(v47 + 16))(v9, v30, v48);
  v34 = sub_10079ACC4();
  v35 = sub_1007A2994();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v50 = v37;
    *v36 = 136315138;
    sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation);
    v38 = sub_1007A3A74();
    v40 = v39;
    v41 = *(v33 + 8);
    v41(v9, v48);
    v42 = sub_1000070F4(v38, v40, &v50);
    v32 = v48;

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Requesting move to bookmark location: %s", v36, 0xCu);
    sub_1000074E0(v37);

    v30 = v45;
  }

  else
  {

    v41 = *(v33 + 8);
    v41(v9, v32);
  }

  sub_10070AD08(v30);

  v41(v30, v32);
}

uint64_t sub_1004AA40C()
{
  swift_getObjectType();
  sub_1007A0A74();
  sub_1001F1160(&unk_100AEA1E0);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
  v0 = sub_10079BA14();

  return v0;
}

uint64_t sub_1004AA4C0()
{
  v0 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v0 - 8);
  v2 = &v9[-v1];
  v3 = sub_1007A1C14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getObjectType();
  sub_10079FA34();
  (*(v4 + 56))(v2, 0, 1, v3);
  (*(v4 + 32))(v6, v2, v3);
  swift_getObjectType();
  v7 = sub_1007A0A84();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1004AA6D8(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004AE51C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100AD5A90);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getObjectType();
    sub_1007A0A44();
    swift_getObjectType();
    sub_10079F9D4();
    swift_unknownObjectRelease();
    sub_10079F374();

    swift_getObjectType();
    v10 = sub_10079F974();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t sub_1004AA91C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1004AA9BC, v4, v3);
}

uint64_t sub_1004AA9BC()
{
  v0[7] = *(v0[2] + 64);
  v0[8] = sub_1007A26E4();
  v2 = sub_1007A2694();
  v0[9] = v2;
  v0[10] = v1;

  return _swift_task_switch(sub_1004AAA50, v2, v1);
}

uint64_t sub_1004AAA50()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1004AAB18;
  v4 = *(v0 + 104);

  return dispatch thunk of ReadingSettingsManaging.changeCurrentThemeType(to:)(v4, ObjectType, v1);
}

uint64_t sub_1004AAB18()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1004AAD1C;
  }

  else
  {
    v5 = sub_1004AAC54;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004AAC54()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004AACB8, v1, v2);
}

uint64_t sub_1004AACB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AAD1C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004AAD80, v1, v2);
}

uint64_t sub_1004AAD80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AADE4()
{
  v0 = sub_10079FD44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1C14();
  v16 = *(v4 - 8);
  v17 = v4;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentLocationProvider();
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

  sub_1007A0544();

  v7 = [objc_opt_self() sharedController];
  sub_1007A1B64();
  sub_1004AEA30();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v9)
  {
    swift_getObjectType();
    sub_10079F8B4();
    sub_10000E3E8(v18, v19);
    sub_10079ECA4();
    v10 = sub_1007A2214();

    sub_1000074E0(v18);
    v11 = sub_1007A2214();

    v12 = sub_1007A2214();

    [v7 activateChapterForBook:v10 chapterID:v11 title:v12 completion:0];
  }

  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(v18, v19);
  sub_10079ECA4();
  v13 = sub_1007A2214();

  sub_1000074E0(v18);
  [v7 updateBookProgress:v13 completion:0];

  return (*(v16 + 8))(v6, v17);
}

uint64_t sub_1004AB134(char a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1007A0364();
  }

  else
  {
    sub_1007A0384();
  }

  sub_1005C1FE4(v5, 0);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004AB21C(char a1)
{
  if (a1)
  {
    if ((sub_1004AB9C0() & 0x100000000) == 0)
    {

      sub_10079B8C4();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v2 = sub_10079F9D4();
      sub_100565C4C(v2);

      swift_unknownObjectRelease();
    }

    v3 = *(v1 + 192);
    if (v3)
    {
      v4 = *(v1 + 184);

      sub_10070B9CC(v4, v3);

      *(v1 + 184) = 0;
      *(v1 + 192) = 0;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1006C13A8();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004AB330(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007A1C14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v11 = *(v1 + 80);
  v12 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v49 = v11;
  v48 = ObjectType;
  v50 = v12;
  sub_10079F8B4();
  sub_10000E3E8(v51, v52);
  v47 = sub_10079ECF4();
  v15 = v14;
  sub_1000074E0(v51);
  if (qword_100AD1728 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  v17 = sub_100008B98(v16, qword_100AE6188);
  v18 = *(v5 + 16);
  v18(v10, a1, v4);
  v18(v7, a1, v4);

  v46[2] = v17;
  v19 = sub_10079ACC4();
  v20 = sub_1007A2994();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46[1] = v2;
    v46[0] = v22;
    v51[0] = v22;
    *v21 = 134218498;
    v23 = sub_1007A1BE4();
    v24 = *(v5 + 8);
    v24(v10, v4);
    *(v21 + 4) = v23;
    *(v21 + 12) = 2048;
    v25 = sub_1007A1B94();
    v24(v7, v4);
    *(v21 + 14) = v25;
    *(v21 + 22) = 2082;
    *(v21 + 24) = sub_1000070F4(v47, v15, v51);
    _os_log_impl(&_mh_execute_header, v19, v20, "Received updated location ordinal: %ld offset: %ld session:%{public}s", v21, 0x20u);
    sub_1000074E0(v46[0]);
  }

  else
  {
    v26 = *(v5 + 8);
    v26(v7, v4);
    v26(v10, v4);
  }

  sub_10079F8B4();
  sub_10000E3E8(v51, v52);
  v27 = sub_10079EC84();
  sub_1000074E0(v51);
  if (v27)
  {
  }

  v28 = sub_1004AB9C0();
  if ((v28 & 0x100000000) != 0)
  {
  }

  v29 = *&v28;
  if (*&v28 < 0.0)
  {
  }

  v30 = sub_1004AB9C0();
  if ((v30 & 0x100000000) == 0)
  {
    *v51 = *&v30;

    sub_10079B8C4();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001F1160(&unk_100AE0AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    v51[0] = sub_1007A2254();
    v51[1] = v32;
    sub_1007A36B4();
    v33 = objc_allocWithZone(NSNumber);
    *&v34 = v29;
    v35 = [v33 initWithFloat:v34];
    *(inited + 96) = sub_10000A7C4(0, &qword_100AD6750);
    *(inited + 72) = v35;
    sub_100013740(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100AD1E50);
    type metadata accessor for BookReaderContainerViewController();
    sub_100565BA4();

    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  sub_1007A1504();
  sub_1007A1134();
  v37 = v36;

  if (v37 >= kAEAnnotationReadingLocationSignificantHighwaterMark || kAEAnnotationReadingLocationSignificantHighwaterMark >= v29)
  {
  }

  v38 = sub_10079ACC4();
  v39 = sub_1007A29D4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v40 = 136446210;
    v42 = sub_1000070F4(v47, v15, v51);

    *(v40 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "Read past our signifigant high water mark for session:%{public}s", v40, 0xCu);
    sub_1000074E0(v41);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v44 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong assetViewControllerSignificantReadingLocationChange:v44];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1004AB9C0()
{
  v0 = sub_1007A1C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CurrentLocationProvider();
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

  sub_1007A0544();

  swift_getObjectType();
  if ((sub_10079F9E4() & 1) == 0 || (sub_1007A1B44() & 1) != 0 || (sub_10079F9D4(), v4 = sub_10079F484(), , sub_10079F9D4(), v5 = sub_10079F374(), , v5 == _s5Books17REActionMenuStateC9pageCountSivpfi_0()))
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    (*(v1 + 8))(v3, v0);
    if (v4 != v9)
    {
      v7 = 0;
      v6 = COERCE_UNSIGNED_INT(v5 / v4);
      goto LABEL_6;
    }
  }

  v6 = 0;
  v7 = 1;
LABEL_6:
  v10[12] = v7;
  return v6 | (v7 << 32);
}

void sub_1004ABBE0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = [v2 readingStatisticsEnabled];
    swift_unknownObjectRelease();
    if (v3)
    {
      swift_getObjectType();
      sub_10079F8B4();
      sub_10000E3E8(v24, v25);
      v4 = sub_10079ECF4();
      v6 = v5;
      sub_1000074E0(v24);
      if (qword_100AD1728 != -1)
      {
        swift_once();
      }

      v7 = sub_10079ACE4();
      sub_100008B98(v7, qword_100AE6188);

      v8 = sub_10079ACC4();
      v9 = sub_1007A2994();

      if (os_log_type_enabled(v8, v9))
      {
        v23 = v4;
        v10 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        *v10 = 136446466;
        v11 = sub_1007A23E4();
        v13 = sub_1000070F4(v11, v12, v24);

        *(v10 + 4) = v13;
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_1000070F4(v23, v6, v24);
        _os_log_impl(&_mh_execute_header, v8, v9, "Received updated location CFI: %{public}s session:%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      sub_10079F8B4();
      sub_10000E3E8(v24, v25);
      v14 = sub_10079EC84();
      sub_1000074E0(v24);
      if ((v14 & 1) == 0)
      {
        if (sub_1007A2414())
        {
          v15 = objc_allocWithZone(BCCFISet);
          v16 = sub_1007A2214();
          v17 = [v15 initWithCFIString:v16];

          if (!v17)
          {
            __break(1u);
            goto LABEL_25;
          }

          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            [v18 assetViewController:v1 willHideContentWithCFIs:v17];
            swift_unknownObjectRelease();
          }
        }

        if (sub_1007A2414())
        {
          v19 = objc_allocWithZone(BCCFISet);
          v20 = sub_1007A2214();
          v21 = [v19 initWithCFIString:v20];

          if (v21)
          {

            v22 = swift_unknownObjectWeakLoadStrong();
            if (v22)
            {
              [v22 assetViewController:v1 didShowContentWithCFIs:v21];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            return;
          }

LABEL_25:
          __break(1u);
          return;
        }
      }

      swift_unknownObjectRelease();

      return;
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1004AC00C(uint64_t a1)
{
  v3 = sub_100796BB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  result = sub_1007A2414();
  if (result)
  {
    sub_100796BA4();
    v11 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
    swift_beginAccess();
    (*(v4 + 24))(v1 + v11, v9, v3);
    swift_endAccess();
    v37 = v1;
    swift_getObjectType();
    sub_10079F8B4();
    sub_10000E3E8(v38, v38[3]);
    v12 = sub_10079ECF4();
    v14 = v13;
    sub_1000074E0(v38);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AF40B0);
    (*(v4 + 16))(v6, v9, v3);

    v16 = sub_10079ACC4();
    v17 = sub_1007A29A4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = a1;
      v19 = v18;
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v19 = 136446722;
      sub_1004AEEB0(&unk_100AE9A30, &type metadata accessor for Date);
      v33 = v16;
      v20 = sub_1007A3A74();
      v31 = v12;
      v22 = v21;
      v36 = v3;
      v23 = *(v4 + 8);
      v32 = v17;
      v23(v6, v36);
      v24 = sub_1000070F4(v20, v22, v38);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2082;
      v25 = sub_1000070F4(v31, v14, v38);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2082;
      v26 = sub_1007A23E4();
      v28 = sub_1000070F4(v26, v27, v38);

      *(v19 + 24) = v28;
      v29 = v23;
      v3 = v36;
      v30 = v33;
      _os_log_impl(&_mh_execute_header, v33, v32, "#currentLoc: updated location change date:%{public}s for:%{public}s location:%{public}s", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v29 = *(v4 + 8);
      v29(v6, v3);
    }

    sub_1004AC424(1);
    return (v29)(v9, v3);
  }

  return result;
}

uint64_t sub_1004AC424(int a1)
{
  LODWORD(v102) = a1;
  v105 = sub_10079FD44();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100796BB4();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v104 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v110 = &v95 - v5;
  v6 = sub_1001F1160(&qword_100AD6578);
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - v7;
  v9 = sub_1001F1160(&qword_100AD6328);
  v107 = *(v9 - 8);
  __chkstk_darwin(v9);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v95 - v12;
  v14 = sub_1001F1160(&qword_100AD6580);
  v108 = *(v14 - 8);
  __chkstk_darwin(v14);
  v106 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v95 - v17;
  __chkstk_darwin(v18);
  v20 = &v95 - v19;
  v112 = v1;
  v21 = *(v1 + 168);
  v22 = OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider;
  type metadata accessor for CurrentLocationProvider();
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

  sub_1007A0564();

  v23 = *(v21 + v22);
  v24 = v107;
  v25 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentDatedPageLocation;
  swift_beginAccess();
  sub_1000077D8(v23 + v25, v8, &qword_100AD6578);
  v26 = v24[6](v8, 1, v9);
  v113 = v14;
  if (v26 == 1)
  {
    sub_100007840(v8, &qword_100AD6578);
    goto LABEL_9;
  }

  v24[4](v13, v8, v9);
  v27 = v110;
  sub_10079FDF4();
  v28 = v104;
  sub_10079FDF4();
  v29 = sub_100796B04();
  v31 = (v109 + 8);
  v30 = *(v109 + 8);
  v32 = v28;
  v33 = v111;
  v30(v32, v111);
  v30(v27, v33);
  v34 = v13;
  if ((v29 & 1) == 0)
  {
    (v24[1])(v13, v9);
LABEL_9:
    v54 = v113;
    sub_10079FE14();
    v55 = sub_1007A2414();

    v56 = v106;
    if (v55)
    {
      swift_getObjectType();
      sub_10079F8B4();
      sub_10000E3E8(&v114, v115);
      v57 = sub_10079ECF4();
      v59 = v58;
      sub_1000074E0(&v114);
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v60 = sub_10079ACE4();
      sub_100008B98(v60, qword_100AF40B0);
      v61 = v108;
      v62 = v101;
      v108[2](v101, v20, v54);

      v63 = sub_10079ACC4();
      v64 = sub_1007A29D4();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v105 = v57;
        v66 = v65;
        v106 = swift_slowAlloc();
        v116 = v106;
        *v66 = 136446466;
        sub_10079FE14();
        v67 = sub_1007A23E4();
        v68 = v20;
        v70 = v69;

        v71 = v61[1];
        v107 = ((v61 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v108 = v71;
        (v71)(v62, v113);
        v72 = sub_1000070F4(v67, v70, &v116);
        v20 = v68;

        *(v66 + 4) = v72;
        *(v66 + 12) = 2080;
        v73 = sub_1000070F4(v105, v59, &v116);

        *(v66 + 14) = v73;
        _os_log_impl(&_mh_execute_header, v63, v64, "#currentLoc: Saving currentlocation:%{public}s for sessionID:%s", v66, 0x16u);
        swift_arrayDestroy();
        v54 = v113;
      }

      else
      {

        v85 = v61[1];
        v107 = ((v61 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v108 = v85;
        (v85)(v62, v54);
      }

      swift_getObjectType();
      sub_10079FE14();
      sub_1004AB9C0();
      v86 = v110;
      sub_10079FDF4();
      sub_1007A1524();

      (*(v109 + 8))(v86, v111);
      return (v108)(v20, v54);
    }

    else
    {
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v74 = sub_10079ACE4();
      sub_100008B98(v74, qword_100AF40B0);
      v75 = v108;
      v108[2](v56, v20, v54);
      v76 = sub_10079ACC4();
      v77 = sub_1007A29B4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v116 = v112;
        *v78 = 136446210;
        sub_10079FE14();
        v79 = sub_1007A23E4();
        v81 = v80;

        v104 = v20;
        v82 = v75[1];
        v82(v56, v54);
        v83 = sub_1000070F4(v79, v81, &v116);

        *(v78 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "#currentLoc: we have an updated readingLocationCFI:%{public}s but it is invalid. Skiping save.", v78, 0xCu);
        sub_1000074E0(v112);

        return (v82)(v104, v54);
      }

      else
      {

        v87 = v75[1];
        v87(v56, v54);
        return (v87)(v20, v54);
      }
    }
  }

  v102 = v30;
  v35 = v24;
  v106 = v34;
  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(&v114, v115);
  v36 = sub_10079ECF4();
  v38 = v37;
  sub_1000074E0(&v114);
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v101 = v31;
  v104 = v20;
  v39 = sub_10079ACE4();
  sub_100008B98(v39, qword_100AF40B0);
  v40 = v99;
  v35[2](v99, v106, v9);

  v41 = sub_10079ACC4();
  v42 = sub_1007A29D4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v114 = v97;
    *v43 = 136315394;
    v95 = v36;
    v44 = v100;
    v96 = v42;
    sub_10079FE14();
    sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation);
    v45 = sub_1007A3A74();
    v46 = v9;
    v48 = v47;
    v49 = v44;
    (*(v103 + 8))(v44, v105);
    v50 = v35[1];
    v98 = (v35 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v107 = v50;
    (v50)(v40, v46);
    v51 = sub_1000070F4(v45, v48, &v114);
    v9 = v46;

    *(v43 + 4) = v51;
    *(v43 + 12) = 2080;
    v52 = sub_1000070F4(v95, v38, &v114);

    *(v43 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v41, v96, "#currentLoc: Saving current PageLocation:%s for sessionID:%s", v43, 0x16u);
    swift_arrayDestroy();

    v53 = v109;
  }

  else
  {

    v88 = v35[1];
    v98 = (v35 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v107 = v88;
    (v88)(v40, v9);
    v53 = v109;
    v49 = v100;
  }

  v89 = v110;
  v90 = v9;
  v91 = v106;
  sub_10079FDF4();
  v92 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
  v93 = v112;
  swift_beginAccess();
  v94 = v111;
  (*(v53 + 40))(v93 + v92, v89, v111);
  swift_endAccess();
  swift_getObjectType();
  sub_10079FE14();
  sub_1004AB9C0();
  sub_10079FDF4();
  sub_1007A1534();
  v102(v89, v94);
  (*(v103 + 8))(v49, v105);
  (v107)(v91, v90);
  return (v108[1])(v104, v113);
}

uint64_t sub_1004AD258()
{
  v1 = sub_100796BB4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  _s8BookEPUB25HighlightAnnotationEntityC5BooksE26annotationModificationDate10Foundation0I0Vvg_0();
  v8 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v15 = v0;
  v9(v4, v0 + v8, v1);
  v10 = sub_100796B04();
  v11 = *(v2 + 8);
  v11(v4, v1);
  v11(v7, v1);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    _s8BookEPUB25HighlightAnnotationEntityC5BooksE26annotationModificationDate10Foundation0I0Vvg_0();
    sub_100796A84();
    v13 = sub_100796B54();
    v11(v4, v1);
    v11(v7, v1);
    if (v13)
    {
      v9(v7, v15 + v8, v1);
      sub_100796A84();
      v12 = sub_100796B54();
      v11(v4, v1);
      v11(v7, v1);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12 & 1;
}

void sub_1004AD480(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100796BB4();
  v90 = *(v4 - 8);
  v91 = v4;
  __chkstk_darwin(v4);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v6 - 8);
  v8 = &v88 - v7;
  v9 = sub_10079FD44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v88 - v14;
  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(v93, v93[3]);
  v16 = sub_10079ECF4();
  v18 = v17;
  sub_1000074E0(v93);
  if (*(v2 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) == 1)
  {

    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AF40B0);

    v20 = sub_10079ACC4();
    v21 = sub_1007A29D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v92 = a1;
      v93[0] = v23;
      *v22 = 136446210;
      sub_1007A1154();
      sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity);
      v24 = sub_1007A3A74();
      v26 = sub_1000070F4(v24, v25, v93);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "#currentLoc: Ignoring currentPersistedLocation:%{public}s as we have an openingLocation provided", v22, 0xCu);
      sub_1000074E0(v23);
    }

    return;
  }

  v88 = v16;
  v93[0] = sub_1007A02F4();
  v93[1] = v27;
  sub_1002060B4();
  v28 = sub_1007A28A4();

  if (v28 & 1) != 0 && (sub_1004AD258())
  {
    v29 = sub_1007A02F4();
    v31 = v30;
    type metadata accessor for CurrentLocationProvider();
    sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

    v32 = sub_1007A05E4();
    v34 = v33;

    if (v29 == v32 && v31 == v34)
    {

LABEL_26:
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v67 = sub_10079ACE4();
      sub_100008B98(v67, qword_100AF40B0);

      v68 = sub_10079ACC4();
      v69 = sub_1007A2994();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v92 = a1;
        v93[0] = v71;
        *v70 = 136446466;
        sub_1007A1154();
        sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity);
        v72 = sub_1007A3A74();
        v74 = sub_1000070F4(v72, v73, v93);

        *(v70 + 4) = v74;
        *(v70 + 12) = 2082;
        v75 = sub_1000070F4(v88, v18, v93);

        *(v70 + 14) = v75;
        _os_log_impl(&_mh_execute_header, v68, v69, "#currentLoc: #globalAnnotation Ignoring identical location currentPersistedLocation:%{public}s for:%{public}s", v70, 0x16u);
        swift_arrayDestroy();

        return;
      }

      goto LABEL_33;
    }

    v66 = sub_1007A3AB4();

    if (v66)
    {
      goto LABEL_26;
    }

    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v76 = sub_10079ACE4();
    sub_100008B98(v76, qword_100AF40B0);

    v77 = sub_10079ACC4();
    v78 = sub_1007A29D4();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v92 = a1;
      v93[0] = v80;
      *v79 = 136446466;
      sub_1007A1154();
      sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity);
      v81 = sub_1007A3A74();
      v83 = sub_1000070F4(v81, v82, v93);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2082;
      v84 = sub_1000070F4(v88, v18, v93);

      *(v79 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v77, v78, "#currentLoc: #globalAnnotation Adopting currentPersistedLocation:\n%{public}s \nfor:%{public}s", v79, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v85 = sub_1007A02F4();
    v87 = v86;
    type metadata accessor for CurrentLocationController(0);
    sub_1004AEEB0(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
    v94._countAndFlagsBits = v85;
    v94._object = v87;
    sub_1007A09D4(v94);
LABEL_33:

    return;
  }

  sub_1007A1124();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007840(v8, &qword_100AE6A10);
LABEL_20:
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v49 = sub_10079ACE4();
    sub_100008B98(v49, qword_100AF40B0);

    v50 = sub_10079ACC4();
    v51 = sub_1007A29D4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93[0] = a1;
      *v52 = 136446722;
      sub_1007A1154();
      sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity);
      v53 = sub_1007A3A74();
      v55 = sub_1000070F4(v53, v54, &v92);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2082;
      v56 = sub_1000070F4(v88, v18, &v92);

      *(v52 + 14) = v56;
      *(v52 + 22) = 2080;
      v57 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
      swift_beginAccess();
      v59 = v90;
      v58 = v91;
      v60 = v2 + v57;
      v61 = v89;
      (v90[2].isa)(v89, v60, v91);
      sub_1004AEEB0(&unk_100AE9A30, &type metadata accessor for Date);
      v62 = sub_1007A3A74();
      v64 = v63;
      (v59[1].isa)(v61, v58);
      v65 = sub_1000070F4(v62, v64, &v92);

      *(v52 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v50, v51, "#currentLoc: Ignoring currentPersistedLocation:%{public}s for:%{public}s currentLocationChangeDate:%s", v52, 0x20u);
      swift_arrayDestroy();

      return;
    }

    goto LABEL_33;
  }

  (*(v10 + 32))(v15, v8, v9);
  if ((sub_1004AD258() & 1) == 0)
  {
    (*(v10 + 8))(v15, v9);
    goto LABEL_20;
  }

  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v35 = sub_10079ACE4();
  sub_100008B98(v35, qword_100AF40B0);
  (*(v10 + 16))(v12, v15, v9);

  v36 = sub_10079ACC4();
  v37 = sub_1007A29D4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93[0] = v91;
    *v38 = 136446466;
    sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation);
    v90 = v36;
    v39 = sub_1007A3A74();
    v41 = v40;
    v42 = *(v10 + 8);
    LODWORD(v89) = v37;
    v43 = v12;
    v44 = v42;
    v42(v43, v9);
    v45 = sub_1000070F4(v39, v41, v93);

    *(v38 + 4) = v45;
    *(v38 + 12) = 2082;
    v46 = sub_1000070F4(v88, v18, v93);
    v47 = v44;

    *(v38 + 14) = v46;
    v48 = v90;
    _os_log_impl(&_mh_execute_header, v90, v89, "#currentLoc: #globalAnnotation Adopting currentPersistedPageLocation:\n%{public}s \nfor:%{public}s", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v47 = *(v10 + 8);
    v47(v12, v9);
  }

  sub_10070AD08(v15);
  v47(v15, v9);
}

uint64_t sub_1004AE280(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004AB21C(v1);
  }

  return result;
}

uint64_t sub_1004AE2E0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004AB330(a1);
  }

  return result;
}

uint64_t sub_1004AE340()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004ABBE0();
  }

  return result;
}

uint64_t sub_1004AE3CC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004AC00C(v1);
  }

  return result;
}

uint64_t sub_1004AE43C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004AD480(v1);
  }

  return result;
}

uint64_t sub_1004AE49C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1006A9EB0(v1);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1004AE51C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  sub_1007A0664();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v10 = [a1 annotationUuid];
    if (v10)
    {
      v11 = v10;
      sub_1007A2254();

      [a1 ordinal];
      sub_1007A0654();
      v12 = sub_10079F434();

      if (v12)
      {
        v13 = sub_1007A12E4();

        if (v13)
        {
          sub_1007A0C24();
        }
      }

      else
      {
      }

      v28 = sub_1001F1160(&unk_100AF1150);
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      v29 = sub_1001F1160(&qword_100AD6190);
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
      sub_1007A1BD4();
      swift_unknownObjectRelease();
      v30 = sub_1007A1C14();
      return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
    }

    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100AE6188);
    v19 = a1;
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Annotation %@ did not have UUID", v22, 0xCu);
      sub_100007840(v23, &unk_100AD9480);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AE6188);
    v15 = sub_10079ACC4();
    v16 = sub_1007A29B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No paginating service", v17, 2u);
    }
  }

  v25 = sub_1007A1C14();
  v26 = *(*(v25 - 8) + 56);

  return v26(a2, 1, 1, v25);
}

uint64_t sub_1004AEA30()
{
  swift_getObjectType();
  if ((sub_10079F9E4() & 1) == 0)
  {
    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AE6188);
    v7 = sub_10079ACC4();
    v8 = sub_1007A2994();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "pagination not yet complete", v9, 2u);
    }

    return 0;
  }

  v0 = sub_10079F994();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(v10, v10[3]);
  v3 = sub_10079ECC4();
  result = sub_1000074E0(v10);
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1007A3784();
    goto LABEL_7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

LABEL_7:
  v5 = sub_10079FDB4();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1007A3784();
  }

  else
  {
  }

  sub_10079FDC4();

  return v5;
}

uint64_t sub_1004AEC64()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0894();
  swift_unknownObjectRelease();
  v0 = sub_10079F294();

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0894();
  swift_unknownObjectRelease();
  v1 = sub_10079F274();

  result = v0 - v1;
  if (__OFSUB__(v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AED30()
{
  v0 = sub_1004AB9C0();
  if ((v0 & &_mh_execute_header) != 0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = *&v0;
  }

  return result;
}

uint64_t sub_1004AED60()
{
  sub_1001F1160(&qword_100AE6388);
  sub_100005920(&qword_100AE6390, &qword_100AE6388);
  return sub_10079BA14();
}

uint64_t sub_1004AEE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0894();
  v4 = swift_unknownObjectRelease();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_1004AEEB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004AEEF8(void *a1)
{
  v3 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v3 - 8);
  v5 = v41 - v4;
  v6 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = sub_1007A1C14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC5Books20BookReaderInteractor_isOpening) == 1)
  {
    *(v1 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) = 1;
  }

  if (!a1)
  {
    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v23 = sub_10079ACE4();
    sub_100008B98(v23, qword_100AE6188);
    v42 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    if (os_log_type_enabled(v42, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v42, v24, "Ignoring nil location", v25, 2u);
    }

LABEL_18:
    v33 = v42;

    return;
  }

  v14 = v11;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    v18 = [v16 cfiString];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1007A2254();
      v22 = v21;

      type metadata accessor for CurrentLocationController(0);
      sub_1004AEEB0(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
      v44._countAndFlagsBits = v20;
      v44._object = v22;
      sub_1007A09D4(v44);

LABEL_7:

      return;
    }

LABEL_31:
    __break(1u);
    return;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v42 = a1;
    v28 = [v27 pathWithAnchor];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1007A2254();
      v32 = v31;

      swift_getObjectType();
      if ((sub_10079F9E4() & 1) == 0)
      {

        v1[23] = v30;
        v1[24] = v32;
        goto LABEL_7;
      }

      sub_10070B9CC(v30, v32);
    }

    goto LABEL_18;
  }

  v42 = v1[15];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  v35 = a1;
  v41[1] = v1;
  if (v34)
  {
    v36 = [v34 pageOffset];
    v37 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    if ((v37 < 0 || v36 != v37) && ([v34 pageOffset] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  swift_getObjectType();
  [v35 ordinal];
  v38 = sub_1001F1160(&unk_100AF1150);
  (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
  v39 = sub_1001F1160(&qword_100AD6190);
  (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
  sub_1007A1BD4();
  v40 = sub_1007A0A24();
  (*(v10 + 8))(v13, v14);
  if (v40 != _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    sub_10070B5B4(v40);
  }
}

uint64_t sub_1004AF4BC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  [v0 displayCornerRadius];

  return sub_10079DC04();
}

uint64_t sub_1004AF5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v11;
  sub_10079B9A4();

  v12 = enum case for ColorScheme.light(_:);
  v33 = *(v5 + 104);
  v33(v7, enum case for ColorScheme.light(_:), v4);
  v13 = sub_10079BC34();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  if (v13)
  {
    v32 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v33(v7, v12, v4);
    sub_10079BC34();
    v14(v7, v4);
    v14(v10, v4);
    sub_10079DE54();
    a1 = v32;
  }

  else
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v15 = v2[4];
  v16 = sub_1001F1160(&qword_100AE64B0);
  v17 = v35;
  v18 = (v35 + *(v16 + 36));
  v19 = *(sub_10079C3D4() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_10079C9E4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  *v18 = v15;
  *(v18 + 1) = v15;
  v22 = sub_10079DE24();
  v23 = v2[5];
  v24 = v2[2];
  v25 = &v18[*(sub_1001F1160(&qword_100AE64B8) + 36)];
  *v25 = v22;
  v25[1] = v23;
  v25[2] = v24;
  v25[3] = 0;
  v26 = sub_10079E474();
  v28 = v27;

  v29 = &v18[*(sub_1001F1160(&qword_100AE64C0) + 36)];
  *v29 = v26;
  v29[1] = v28;
  v30 = sub_1001F1160(&qword_100AE64C8);
  return (*(*(v30 - 8) + 16))(v17, a1, v30);
}

unint64_t sub_1004AF97C()
{
  result = qword_100AE64D0;
  if (!qword_100AE64D0)
  {
    sub_1001F1234(&qword_100AE64B0);
    sub_100005920(&qword_100AE64D8, &qword_100AE64C8);
    sub_100005920(&qword_100AE64E0, &qword_100AE64C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE64D0);
  }

  return result;
}

uint64_t static ActionMenuState.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (!(a2 >> 62))
    {
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(a1, a2);
    }

    return 0;
  }

  if (a1 >> 62 == 1)
  {
    if (a2 >> 62 == 1)
    {
      a1 &= 0x3FFFFFFFFFFFFFFFuLL;
      a2 &= 0x3FFFFFFFFFFFFFFFuLL;
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(a1, a2);
    }

    return 0;
  }

  v3 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return a2 == 0x8000000000000000;
    }

    if (a2 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      return a2 == 0x8000000000000010;
    }

    if (v3 == 3)
    {
      return a2 == 0x8000000000000018;
    }

    if (a2 == 0x8000000000000020)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t ActionMenuState.description.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1007A3744(34);

    v6 = 0xD000000000000020;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1007A3744(19);

    v6 = 0xD000000000000011;
LABEL_5:
    v7._countAndFlagsBits = ChapterScrubbingState.description.getter();
    sub_1007A23D4(v7);

    return v6;
  }

  v2 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  v3 = 0x6465736F6C63;
  v4 = 0x676E697070696C66;
  v5 = 0x6E69626275726373;
  if (v2 != 3)
  {
    v5 = 0x43664F656C626174;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 1852141679;
  }

  if (v2 <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t ActionMenuState.isAnyScrubbing.getter(unint64_t a1)
{
  v1 = a1 >> 62;
  v2 = (a1 & 0xBFFFFFFFFFFFFFF7) == 0x8000000000000010;
  if (a1 >> 62 != 2)
  {
    v2 = 0;
  }

  if (v1 == 1)
  {
    v2 = 1;
  }

  return !v1 || v2;
}

uint64_t sub_1004AFD38(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 62))
  {
    if (!(v3 >> 62))
    {
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3);
    }

    return 0;
  }

  if (v2 >> 62 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v2 &= 0x3FFFFFFFFFFFFFFFuLL;
      v3 &= 0x3FFFFFFFFFFFFFFFuLL;
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3);
    }

    return 0;
  }

  v5 = __ROR8__(v2 ^ 0x8000000000000000, 3);
  if (v5 <= 1)
  {
    if (!v5)
    {
      return v3 == 0x8000000000000000;
    }

    if (v3 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return v3 == 0x8000000000000010;
    }

    if (v5 == 3)
    {
      return v3 == 0x8000000000000018;
    }

    if (v3 == 0x8000000000000020)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1004AFE0C(uint64_t *a1)
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

uint64_t sub_1004AFE28(uint64_t a1, unsigned int a2)
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

uint64_t sub_1004AFE84(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1004AFEE4(void *result, uint64_t a2)
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

uint64_t sub_1004AFF44(uint64_t a1)
{
  v2 = sub_10079BC44();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10079C534();
}

void *sub_1004B000C(uint64_t a1)
{
  v2 = v1;
  v18 = sub_1001F1160(&qword_100AE65B0);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v18 - v5;
  v7 = sub_1001F1160(&qword_100AE65A8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ThemeOptionsContainerViewModel(0);
  v13 = swift_allocObject();
  v14 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1004B1400(v12, v9);
  sub_10079B964();
  sub_100007840(v12, &qword_100AE65A8);
  v1[5] = a1;
  v1[6] = 0;
  v1[4] = v13;
  swift_beginAccess();

  sub_1001F1160(&qword_100AE65B8);
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1004B1A2C();
  v15 = v18;
  v16 = sub_10079BB04();

  (*(v4 + 8))(v6, v15);
  v2[6] = v16;

  return v2;
}

uint64_t sub_1004B02D0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004B0330(a1);
  }

  return result;
}

uint64_t sub_1004B0330(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE65A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v13 = *(v9 + 48);
    if (v13(v7, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      return sub_100007840(v7, &qword_100AE65A8);
    }

    sub_1004B1A90(v7, v11);
    sub_1001F1160(&qword_100AF26C0);
    v14 = sub_1007A0854();
    sub_1004B1400(a1, v4);
    if (v13(v4, 1, v8) == 1)
    {
      sub_100007840(v4, &qword_100AE65A8);
    }

    else
    {
      v15 = sub_1007A0854();
      sub_1004B1CE0(v4, type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions);
      if (v15)
      {
        v16 = v14 == v15;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
LABEL_12:
        sub_1004B1CE0(v11, type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions);
        return swift_unknownObjectRelease();
      }
    }

    if (sub_1007A0874())
    {
      sub_1004B1AF4();
      swift_unknownObjectRelease();
      return sub_1004B1CE0(v11, type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions);
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1004B0634()
{
  v0[2] = sub_1007A26F4();
  v0[3] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1004B06E4;

  return sub_1004B0820(0);
}

uint64_t sub_1004B06E4()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1002AE98C, v1, v0);
}

uint64_t sub_1004B0820(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_1007A3864();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  sub_1001F1160(&qword_100AE65A8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  sub_1007A26F4();
  *(v2 + 80) = sub_1007A26E4();
  v5 = sub_1007A2694();
  *(v2 + 88) = v5;
  *(v2 + 96) = v4;

  return _swift_task_switch(sub_1004B0974, v5, v4);
}

uint64_t sub_1004B0974()
{
  v1 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 72);

    sub_100007840(v4, &qword_100AE65A8);
LABEL_8:

    v11 = *(v0 + 8);

    return v11();
  }

  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 112);
  sub_100007840(*(v0 + 72), &qword_100AE65A8);
  (*(v3 + 56))(v5, 1, 1, v2);
  sub_1004B1400(v5, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B1400(v6, v7);

  sub_10079B9B4();
  sub_100007840(v6, &qword_100AE65A8);
  sub_100007840(v5, &qword_100AE65A8);
  if (v8 != 1)
  {

    goto LABEL_8;
  }

  sub_1007A3B54();
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1004B0C6C;

  return sub_1004B1524(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1004B0C6C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1004B1D40;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1004B0E00;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1004B0E00()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1004B0E98()
{
  v0 = sub_1001F1160(&qword_100AE65A8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_100007840(v2, &qword_100AE65A8);
  return v4;
}

uint64_t sub_1004B0FC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v15[3] = a2;
  v15[4] = &off_100A1F160;
  v15[0] = v6;
  type metadata accessor for ChromeStyle();
  sub_1004B19DC(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

  *a3 = sub_10079C484();
  a3[1] = v7;
  v8 = type metadata accessor for ThemeOptionsContainerViewModifier();
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  *(a3 + v8[6]) = a1;
  sub_100009864(v15, a3 + v8[7]);
  v10 = (a3 + v8[8]);
  type metadata accessor for ThemeOptionsContainerViewModel(0);
  sub_1004B19DC(&qword_100AE65A0, type metadata accessor for ThemeOptionsContainerViewModel);
  v11 = sub_10079C024();
  v13 = v12;
  result = sub_1000074E0(v15);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_1004B1140()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1007A2744();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1007A26F4();

  v6 = sub_1007A26E4();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_1003457A0(0, 0, v4, &unk_10082A4B0, v7);
}

uint64_t sub_1004B1264()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_1004B12E0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE65A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1004B1400(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B1400(v7, v4);

  sub_10079B9B4();
  return sub_100007840(v7, &qword_100AE65A8);
}

uint64_t sub_1004B1400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE65A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B1470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1004B0634();
}

uint64_t sub_1004B1524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1007A3854();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1004B1624, 0, 0);
}

uint64_t sub_1004B1624()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1007A3864();
  v5 = sub_1004B19DC(&qword_100AD76C0, &type metadata accessor for ContinuousClock);
  sub_1007A3B34();
  sub_1004B19DC(&qword_100AD76C8, &type metadata accessor for ContinuousClock.Instant);
  sub_1007A3874();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1004B17B4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1004B17B4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1004B1970, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1004B1970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B19DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004B1A2C()
{
  result = qword_100AE65C0;
  if (!qword_100AE65C0)
  {
    sub_1001F1234(&qword_100AE65B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE65C0);
  }

  return result;
}

uint64_t sub_1004B1A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B1AF4()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (!swift_weakLoadStrong())
  {
    v5 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1004B1CE0(v2, type metadata accessor for OverlayViewModel.Overlay);
  }

  sub_1007A0CF4();
}

uint64_t sub_1004B1CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ExplicitDeclineActionItem.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExplicitDeclineActionItem() + 36);
  v4 = sub_100797144();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ExplicitDeclineActionItem()
{
  result = qword_100AE6668;
  if (!qword_100AE6668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ExplicitDeclineActionItem.init(data:context:tracker:figaroProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v20);
  sub_100009864(a2, v19);
  sub_100009864(a4, v18);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    sub_1004B2000();
    sub_10079AE34();
    sub_10079AE04();
    v16 = sub_100797524();
    v17 = &protocol witness table for MenuLikeStateController;
    sub_1002256EC(&v15);
    sub_100797514();
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v11 = type metadata accessor for ExplicitDeclineActionItem();
    v12 = *(v11 + 36);
    v13 = enum case for ContextActionType.explicitDecline(_:);
    v14 = sub_100797144();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    *(a5 + *(v11 + 40)) = 2;
    sub_1000077C0(v20, a5);
    sub_1000077C0(v19, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v18, a5 + 88);
    return sub_1000077C0(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004B2000()
{
  result = qword_100AE65C8;
  if (!qword_100AE65C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE65C8);
  }

  return result;
}

uint64_t ExplicitDeclineActionItem.isSupported.getter()
{
  v1 = v0;
  sub_10000E3E8(v0, v0[3]);
  if ((sub_1007976D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000E3E8(v0, v0[3]);
  sub_1007977A4();
  if (v10 == 1)
  {
    sub_1001FF70C(v9);
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  sub_1000077C0(v9, v11);
  sub_10000E3E8(v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(v11, v12);
  v2 = sub_1007976A4();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_11:
    sub_1000074E0(v11);
    goto LABEL_12;
  }

  sub_10000E3E8(v1, v1[3]);
  v7 = sub_100797794();
  sub_1000074E0(v11);
  return v7 & 1;
}

uint64_t ExplicitDeclineActionItem.handle()()
{
  v1[13] = v0;
  sub_1007A26F4();
  v1[14] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_1004B2260, v3, v2);
}

uint64_t sub_1004B2260()
{
  v1 = *(v0 + 104);
  sub_10000E3E8(v1, v1[3]);
  if ((sub_1007976D4() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_10000E3E8(*(v0 + 104), v1[3]);
  sub_1007977A4();
  if (*(v0 + 56) == 1)
  {

    sub_1001FF70C(v0 + 16);
LABEL_5:
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 104);
  sub_1000077C0((v0 + 16), v0 + 64);
  sub_10000E3E8(v4, v1[3]);
  if (sub_100797764())
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_1004B2454;

    return sub_1004B26FC(v0 + 64);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_1004B25DC;

    return sub_1004B3B7C(v0 + 64);
  }
}

uint64_t sub_1004B2454()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1004B2574, v3, v2);
}

uint64_t sub_1004B2574()
{

  sub_1000074E0(v0 + 64);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B25DC()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1004B67F0, v3, v2);
}

uint64_t sub_1004B26FC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_10079ACE4();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_1001F1160(&unk_100AD9108);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AE66C0);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_1007A1E24();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  sub_1001F1160(&qword_100AE65D0);
  v2[35] = swift_task_alloc();
  sub_1007A1E14();
  v2[36] = swift_task_alloc();
  v7 = sub_1007979B4();
  v2[37] = v7;
  v2[38] = *(v7 - 8);
  v2[39] = swift_task_alloc();
  v8 = sub_1001F1160(&qword_100AE66C8);
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_1004B2A10, 0, 0);
}

uint64_t sub_1004B2A10()
{
  sub_10000E3E8((v0[22] + 40), *(v0[22] + 64));
  v0[43] = sub_100796EA4();
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1004B2AE4;
  v2 = v0[42];

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1004B2AE4()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1004B3478;
  }

  else
  {
    v2 = sub_1004B2BF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B2BF8()
{
  v1 = v0[38];
  v16 = v0[39];
  v17 = v0[37];
  v2 = v0[35];
  v3 = v0[30];
  v18 = v0[29];
  v19 = v0[31];
  v4 = v0[21];
  sub_1007A1E04();
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  sub_10000E3E8(v4, v4[3]);
  v6 = sub_100797674();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0);
  v8 = sub_100798464();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1007979A4();
  v0[15] = v17;
  v0[16] = sub_1004B67A4(&qword_100AE66D0, &type metadata accessor for JSAction);
  v9 = sub_1002256EC(v0 + 12);
  (*(v1 + 16))(v9, v16, v17);
  (*(v3 + 104))(v19, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_1004B2E7C;
  v11 = v0[43];
  v12 = v0[40];
  v13 = v0[34];
  v14 = v0[31];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v13, v0 + 12, v14, v11, v12);
}

uint64_t sub_1004B2E7C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  *(*v1 + 376) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1004B36A4;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);
    sub_1000074E0((v2 + 12));
    v6 = sub_1004B3014;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004B3014()
{
  sub_1004B4F24();
  sub_1004B55D4();
  if (qword_100AD1380 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = sub_100008B98(v3, qword_100AD9040);
  (*(v2 + 16))(v1, v4, v3);
  sub_100798EE4();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 400))
  {

    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    (*(v6 + 8))(v5, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = v10[19];
    v12 = v10[20];
    sub_10000E3E8(v10 + 16, v11);
    v13 = v10[10];
    v14 = swift_task_alloc();
    *(v0 + 384) = v14;
    *v14 = v0;
    v14[1] = sub_1004B3260;
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);

    return dispatch thunk of LikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(v10 + 5, v15, v16, v13, v11, v12);
  }
}

uint64_t sub_1004B3260()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1004B3914;
  }

  else
  {
    v2 = sub_1004B3374;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B3374()
{

  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  (*(v0[38] + 8))(v0[39], v0[37]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B3478()
{
  v17 = v0;

  sub_10079AC34();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[24];
    v15 = v0[25];
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1007A3B84();
    v9 = sub_1000070F4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "error while trying to submit explicit decline preference with : %s for ODP content", v5, 0xCu);
    sub_1000074E0(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004B36A4()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_1000074E0((v0 + 12));
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for ODP content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B3914()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for ODP content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B3B7C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_10079ACE4();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_1001F1160(&unk_100AD9108);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AE66C0);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_1007A1E24();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  sub_1001F1160(&qword_100AE65D0);
  v2[35] = swift_task_alloc();
  sub_1007A1E14();
  v2[36] = swift_task_alloc();
  v7 = sub_1007979B4();
  v2[37] = v7;
  v2[38] = *(v7 - 8);
  v2[39] = swift_task_alloc();
  v8 = sub_1001F1160(&qword_100AE66C8);
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_1004B3E90, 0, 0);
}

uint64_t sub_1004B3E90()
{
  sub_10000E3E8((v0[22] + 40), *(v0[22] + 64));
  v0[43] = sub_100796EA4();
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1004B3F64;
  v2 = v0[42];

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1004B3F64()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1004B4820;
  }

  else
  {
    v2 = sub_1004B4078;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B4078()
{
  v1 = v0[38];
  v18 = v0[39];
  v19 = v0[37];
  v2 = v0[35];
  v3 = v0[30];
  v20 = v0[29];
  v21 = v0[31];
  v4 = v0[22];
  sub_1007A1E04();
  sub_1001F1160(&unk_100ADE588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  strcpy((inited + 32), "cardIdentifier");
  *(inited + 47) = -18;
  sub_10000E3E8((v4 + 40), *(v4 + 64));
  v6 = sub_100796ED4();
  v7 = sub_1007973B4();
  v9 = v8;

  *(inited + 72) = sub_1001F1160(&qword_100AD4F30);
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0);
  v10 = sub_100798464();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_1007979A4();
  v0[15] = v19;
  v0[16] = sub_1004B67A4(&qword_100AE66D0, &type metadata accessor for JSAction);
  v11 = sub_1002256EC(v0 + 12);
  (*(v1 + 16))(v11, v18, v19);
  (*(v3 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v20);
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1004B4334;
  v13 = v0[43];
  v14 = v0[40];
  v15 = v0[34];
  v16 = v0[31];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v15, v0 + 12, v16, v13, v14);
}

uint64_t sub_1004B4334()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  *(*v1 + 376) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1004B4A4C;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);
    sub_1000074E0((v2 + 12));
    v6 = sub_1004B44CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004B44CC()
{
  if (qword_100AD1380 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = sub_100008B98(v3, qword_100AD9040);
  (*(v2 + 16))(v1, v4, v3);
  sub_100798EE4();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 400))
  {

    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    (*(v6 + 8))(v5, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = v10[19];
    v12 = v10[20];
    sub_10000E3E8(v10 + 16, v11);
    v13 = v10[10];
    v14 = swift_task_alloc();
    *(v0 + 384) = v14;
    *v14 = v0;
    v14[1] = sub_1004B470C;
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);

    return dispatch thunk of LikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(v10 + 5, v15, v16, v13, v11, v12);
  }
}

uint64_t sub_1004B470C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1004B4CBC;
  }

  else
  {
    v2 = sub_1004B67EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B4820()
{
  v17 = v0;

  sub_10079AC34();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[24];
    v15 = v0[25];
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1007A3B84();
    v9 = sub_1000070F4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "error while trying to submit explicit decline preference with : %s for default content", v5, 0xCu);
    sub_1000074E0(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004B4A4C()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_1000074E0((v0 + 12));
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for default content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B4CBC()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for default content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B4F24()
{
  v1 = sub_10079AD54();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v33 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10079AD84();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079AD44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10079AD64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079ADB4();
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v27 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(v0, v0[3]);
  result = sub_1007976D4();
  if (result)
  {
    sub_10000E3E8(v0, v0[3]);
    sub_1007977A4();
    if (v39 == 1)
    {
      return sub_1001FF70C(&v36);
    }

    else
    {
      sub_1000077C0(&v36, v40);
      (*(v10 + 104))(v12, enum case for FigaroClickEvent.ActionContext.actionSheet(_:), v9);
      v16 = type metadata accessor for ExplicitDeclineActionItem();
      *v8 = sub_100797134();
      v8[1] = v17;
      (*(v6 + 104))(v8, enum case for FigaroActionType.custom(_:), v5);
      sub_1001F1160(&qword_100ADAF48);
      sub_10079ADA4();
      *(swift_allocObject() + 16) = xmmword_10080B690;
      sub_10000E3E8(v40, v41);
      v26[4] = sub_100797674();
      v26[3] = v18;
      v19 = sub_1004B67A4(&qword_100AD1E90, type metadata accessor for ExplicitDeclineActionItem);
      v26[2] = sub_100797094();
      v26[1] = v20;
      sub_10000E3E8(v0 + 11, v0[14]);
      v37 = v16;
      v38 = v19;
      v21 = sub_1002256EC(&v36);
      sub_1004B6740(v0, v21);
      sub_100796F64();
      sub_1000074E0(&v36);
      (*(v29 + 104))(v28, enum case for FigaroClickEvent.Location.Type.button(_:), v30);
      sub_10079AD94();
      sub_10000E3E8(v40, v41);
      sub_100797674();
      (*(v34 + 104))(v33, enum case for FigaroClickEvent.TargetType.dontShow(_:), v35);
      sub_100019158(_swiftEmptyArrayStorage);
      v22 = v27;
      sub_10079AD74();
      sub_1004B67A4(&qword_100ADAF50, &type metadata accessor for FigaroClickEvent);
      v23 = v32;
      sub_10079AE74();
      (*(v31 + 8))(v22, v23);
      v24 = objc_opt_self();
      type metadata accessor for FigaroKey(0);
      sub_1004B67A4(&qword_100AD36A0, type metadata accessor for FigaroKey);
      isa = sub_1007A2024().super.isa;

      [v24 recordNativeEvent:isa];

      return sub_1000074E0(v40);
    }
  }

  return result;
}

uint64_t sub_1004B55D4()
{
  v1 = sub_10079ACE4();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v3 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v53 - v5;
  __chkstk_darwin(v7);
  v9 = v53 - v8;
  __chkstk_darwin(v10);
  v12 = v53 - v11;
  v57 = sub_100798034();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AE2578);
  __chkstk_darwin(v14 - 8);
  v54 = v53 - v15;
  v16 = sub_100797D94();
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin(v16);
  v59 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100798234();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100797C94();
  __chkstk_darwin(v20 - 8);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1007980E4();
  v64 = *(v23 - 8);
  v65 = v23;
  __chkstk_darwin(v23);
  v63 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(v0, v0[3]);
  if (sub_1007976D4())
  {
    sub_10000E3E8(v0, v0[3]);
    sub_1007977A4();
    if (v69)
    {
      sub_1001FF70C(v68);
      sub_10079AC34();
      v25 = sub_10079ACC4();
      v26 = sub_1007A29D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "not reporting remove suggestion because target is not a single item", v27, 2u);
      }

      return (*(v66 + 8))(v6, v67);
    }

    sub_1000077C0(v68, v70);
    sub_10000E3E8(v0, v0[3]);
    sub_100797744();
    v33 = v64;
    v32 = v65;
    if ((*(v64 + 48))(v22, 1, v65) == 1)
    {
      sub_1004B66E4(v22);
      sub_10079AC34();
      v34 = sub_10079ACC4();
      v35 = sub_1007A29D4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "not reporting remove suggestion because target is not an ODP item", v36, 2u);
      }

      (*(v66 + 8))(v9, v67);
      return sub_1000074E0(v70);
    }

    (*(v33 + 32))(v63, v22, v32);
    v37 = v0[10];
    if (!v37)
    {
      sub_10079AC34();
      v50 = sub_10079ACC4();
      v51 = sub_1007A29B4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "not reporting remove suggestion because no tracker was found", v52, 2u);
      }

      (*(v66 + 8))(v12, v67);
      (*(v33 + 8))(v63, v32);
      return sub_1000074E0(v70);
    }

    sub_100798004();
    v67 = v37;
    v66 = sub_100797FF4();
    sub_10000E3E8(v70, v71);
    v53[1] = sub_100797674();
    (*(v58 + 104))(v19, enum case for ContentAcquisitionType.unknown(_:), v60);
    sub_10000E3E8(v70, v71);
    v38 = sub_1007976B4();
    (*(v61 + 104))(v59, **(&off_100A1F208 + v38), v62);
    sub_10000E3E8(v70, v71);
    result = sub_100797634();
    v40 = v39;
    if ((v39 & 1) == 0)
    {
      if (result < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (result <= 0x7FFFFFFF)
      {
        goto LABEL_18;
      }

      __break(1u);
      return result;
    }

LABEL_18:
    v41 = sub_100797FF4();
    sub_10000E3E8(v70, v71);
    sub_100797674();
    v42 = v54;
    sub_100797FB4();

    v43 = v56;
    v44 = v55;
    v45 = v57;
    (*(v56 + 104))(v55, enum case for ProductionType.unknown(_:), v57);
    LOBYTE(v68[0]) = v40 & 1;
    v46 = v66;
    v47 = v67;
    v48 = v63;
    v49 = v59;
    sub_100797F04();

    (*(v43 + 8))(v44, v45);
    sub_100007840(v42, &qword_100AE2578);
    (*(v61 + 8))(v49, v62);
    (*(v58 + 8))(v19, v60);
    (*(v64 + 8))(v48, v65);
    return sub_1000074E0(v70);
  }

  sub_10079AC34();
  v29 = sub_10079ACC4();
  v30 = sub_1007A29D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "not reporting remove suggestion because menu is not supported", v31, 2u);
  }

  return (*(v66 + 8))(v3, v67);
}

void ExplicitDeclineActionItem.swiftuiPostAction(shelfID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v7 = sub_1001F1160(&qword_100AE65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1007A1E14();
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AE65D8);
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v31 - v17);
  v19 = sub_1001F1160(&qword_100AE65E0);
  __chkstk_darwin(v19);
  v22 = &v31 - v21;
  if (a2)
  {
    v36 = v20;
    v37 = v12;
    v38 = v13;
    v39 = v9;
    sub_10000E3E8(v4, v4[3]);

    if (sub_1007976D4())
    {
      sub_10000E3E8(v4, v4[3]);
      sub_1007977A4();
      if (v43 != 1)
      {
        sub_1000077C0(v42, v44);
        sub_1001F1160(&unk_100AE0B30);
        v23 = swift_allocObject();
        v31 = xmmword_10080B690;
        *(v23 + 16) = xmmword_10080B690;
        sub_10000E3E8(v44, v44[3]);
        *(v23 + 32) = sub_100797674();
        *(v23 + 40) = v24;
        v35 = sub_100797984();
        v34 = sub_100797994();
        v33 = sub_1004B67A4(&qword_100AE65E8, &type metadata accessor for Page);
        v32 = sub_1004B67A4(&qword_100AE65F0, &type metadata accessor for Shelf);
        sub_10079B764();
        sub_1001F1160(&qword_100AE65F8);
        v25 = v36;
        v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = v31;
        (*(v25 + 16))(v27 + v26, v22, v19);
        *v18 = v27;
        v28 = v41;
        v29 = v38;
        (*(v41 + 104))(v18, enum case for PageUpdateInstruction.removeItems<A, B>(_:), v38);
        sub_1007A1E04();
        (*(v28 + 16))(v15, v18, v29);
        v30 = sub_100798464();
        (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
        *(a3 + 24) = sub_1001F1160(&qword_100AE6600);
        *(a3 + 32) = sub_1004B6478();
        sub_1002256EC(a3);
        sub_10079B754();
        (*(v28 + 8))(v18, v29);
        (*(v25 + 8))(v22, v19);
        sub_1000074E0(v44);
        return;
      }

      sub_1001FF70C(v42);
    }

    else
    {
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

unint64_t sub_1004B6478()
{
  result = qword_100AE6608;
  if (!qword_100AE6608)
  {
    sub_1001F1234(&qword_100AE6600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6608);
  }

  return result;
}

uint64_t sub_1004B64F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return ExplicitDeclineActionItem.handle()();
}

void sub_1004B65A8()
{
  sub_1001FEBC8(319, &unk_100AE9C00);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AE6678);
          if (v4 <= 0x3F)
          {
            sub_100797144();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Attributes(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1004B66E4(uint64_t a1)
{
  v2 = sub_100797C94();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B6740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplicitDeclineActionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B67A4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004B67F4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1004B6880()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_1004B68F4()
{
  v0 = swift_allocObject();
  sub_1001F1160(&qword_100AD9AE8);
  sub_10079B964();
  sub_10079B964();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9B4();
  return v0;
}

uint64_t sub_1004B6AF8()
{
  v1 = OBJC_IVAR____TtC5Books16InfoBarViewModel__message;
  v2 = sub_1001F1160(&qword_100AF2890);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books16InfoBarViewModel__isTimedMessage;
  v4 = sub_1001F1160(&qword_100AD50E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InfoBarViewModel()
{
  result = qword_100AE6710;
  if (!qword_100AE6710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B6C40()
{
  sub_1004B6D0C();
  if (v0 <= 0x3F)
  {
    sub_1004B6D70();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004B6D0C()
{
  if (!qword_100AE6720)
  {
    sub_1001F1234(&qword_100AD9AE8);
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE6720);
    }
  }
}

void sub_1004B6D70()
{
  if (!qword_100AEB4D0)
  {
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEB4D0);
    }
  }
}

uint64_t sub_1004B6DC0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1004B6DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004B6E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004B6E84(uint64_t a1)
{
  result = sub_100258BC0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004B6EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100ADB860);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-v6];
  sub_1004B71D4(v2, v26);
  v8 = swift_allocObject();
  sub_1004B720C(v26, v8 + 16);
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_100206ECC();
  sub_10079E084();
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v12 = *(v2 + 8);
  v11 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *v2;
  type metadata accessor for ChromeStyle();
  sub_1002B3600();

  *&v21 = sub_10079C484();
  *(&v21 + 1) = v16;
  *&v22 = v9;
  *(&v22 + 1) = v10;
  *&v23 = v12;
  *(&v23 + 1) = v11;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  v25 = v15;
  sub_10027444C();
  sub_1004B724C();
  sub_10079D6B4();
  v26[2] = v23;
  v26[3] = v24;
  v27 = v25;
  v26[0] = v21;
  v26[1] = v22;
  sub_1004B72A0(v26);
  (*(v5 + 8))(v7, v4);
  v20[7] = 0;
  sub_10079DFE4();
  LOBYTE(v7) = v21;
  v17 = *(&v21 + 1);
  result = sub_1001F1160(&qword_100AE67B0);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v7;
  *(v19 + 16) = v17;
  return result;
}

uint64_t sub_1004B7144(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    v2 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 64);

    v1(Strong, v4);
    swift_unknownObjectRelease();

    return sub_100007020(v1);
  }

  return result;
}

unint64_t sub_1004B724C()
{
  result = qword_100AE67A8;
  if (!qword_100AE67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE67A8);
  }

  return result;
}

unint64_t sub_1004B72F4()
{
  result = qword_100AE67B8;
  if (!qword_100AE67B8)
  {
    sub_1001F1234(&qword_100AE67B0);
    sub_1001F1234(&qword_100ADB860);
    sub_10027444C();
    sub_1004B724C();
    swift_getOpaqueTypeConformance2();
    sub_1002746A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE67B8);
  }

  return result;
}

uint64_t sub_1004B73D8(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10000E3E8((a1 + 32), *(a1 + 56));
  v9 = *v7;
  if (a4)
  {
    sub_1001F1160(&unk_100AD67F0);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;
    v7 = v9;
    v8 = v10;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  v13 = *(v9[8] + 40);
  *v13 = a2;
  *(v13 + 8) = a3;
  v14 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_1004B74B8()
{
  v1[4] = v0;
  v2 = sub_1007A2F14();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004B7578, 0, 0);
}

uint64_t sub_1004B7578()
{
  v1 = sub_1004B7BF8();
  if (v2)
  {
    if (qword_100AD1730 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AE67C0);
    v4 = sub_10079ACC4();
    v5 = sub_1007A29D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No config provided for fetchFinishedAssetCount", v6, 2u);
    }

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    v9 = v1;
    v10 = v0[6];
    v29 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v13 = objc_opt_self();
    v14 = [v13 predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:v9];
    v0[8] = v14;
    v15 = [v13 predicateForAllStoreLibraryAssets];
    v0[9] = v15;
    v0[2] = sub_10000A7C4(0, &qword_100ADA990);
    sub_1001F1160(&qword_100AE2370);
    sub_1007A22E4();
    v16 = objc_allocWithZone(NSFetchRequest);
    v17 = sub_1007A2214();

    v18 = [v16 initWithEntityName:v17];
    v0[10] = v18;

    sub_1001F1160(&unk_100AD8160);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100811360;
    *(v19 + 32) = v14;
    *(v19 + 40) = v15;
    sub_10000A7C4(0, &unk_100AE6940);
    v20 = v14;
    v21 = v15;
    isa = sub_1007A25D4().super.isa;

    v23 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v18 setPredicate:v23];
    v24 = *(v12 + 16);
    v25 = swift_allocObject();
    v0[11] = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v18;
    (*(v10 + 104))(v29, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v11);
    v24;
    v26 = v18;
    v27 = swift_task_alloc();
    v0[12] = v27;
    *v27 = v0;
    v27[1] = sub_1004B7964;
    v28 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v28, sub_1004BB0DC, v25, &type metadata for Int);
  }
}

uint64_t sub_1004B7964()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1004B7B78;
  }

  else
  {
    v5 = sub_1004B7AF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B7AF8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1004B7B78()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004B7BF8()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD6948);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1001F1160(&qword_100AE6928);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  if ((sub_100798F24() & 1) != 0 && (v13 = *(v10 + 16), v35 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v36 = v13, v13(v12, v0 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v9), sub_100798EE4(), v34 = *(v10 + 8), v34(v12, v9), v37))
  {
    if (qword_100AD1730 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AE67C0);

    v15 = sub_10079ACC4();
    v16 = sub_1007A29D4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v36;
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = v35;
      v18(v12, v1 + v35, v9);
      sub_100798EE4();
      v21 = v20;
      v22 = v34;
      v34(v12, v9);
      *(v19 + 4) = v37;

      _os_log_impl(&_mh_execute_header, v15, v16, "Using debug override year: %ld for activeYear", v19, 0xCu);

      v36(v12, v1 + v21, v9);
    }

    else
    {

      v22 = v34;
      v18(v12, v1 + v35, v9);
    }

    sub_100798EE4();
    v22(v12, v9);
    return v37;
  }

  else
  {
    v23 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config;
    swift_beginAccess();
    sub_1000077D8(v1 + v23, v4, &qword_100AD6948);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100007840(v4, &qword_100AD6948);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v24 = sub_10079ACE4();
      sub_100008B98(v24, qword_100AE67C0);
      v25 = sub_10079ACC4();
      v26 = sub_1007A29D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No config provided for activeYear", v27, 2u);
      }

      return 0;
    }

    else
    {
      sub_100443804(v4, v8, type metadata accessor for YearInReview.RemoteConfiguration);
      v28 = *v8;
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v29 = sub_10079ACE4();
      sub_100008B98(v29, qword_100AE67C0);
      v30 = sub_10079ACC4();
      v31 = sub_1007A29D4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v30, v31, "Using config provided year: %ld for activeYear", v32, 0xCu);
      }

      sub_1004438C0(v8, type metadata accessor for YearInReview.RemoteConfiguration);
    }
  }

  return v28;
}

uint64_t sub_1004B81AC@<X0>(uint64_t *a1@<X8>)
{
  sub_10000A7C4(0, &qword_100ADA990);
  result = sub_1007A2F24();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1004B8214()
{
  sub_100007840(v0 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config, &qword_100AD6948);
  v1 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_criteria;
  v2 = sub_100797914();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride;
  v4 = sub_1001F1160(&qword_100AE6928);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for YearInReviewEntryEligibilityProvider()
{
  result = qword_100AE6830;
  if (!qword_100AE6830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B8378()
{
  sub_100443524();
  if (v0 <= 0x3F)
  {
    sub_100797914();
    if (v1 <= 0x3F)
    {
      sub_1004B848C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1004B848C()
{
  if (!qword_100AE6848)
  {
    v0 = sub_100798F04();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE6848);
    }
  }
}

uint64_t sub_1004B84DC(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_100796BB4();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE39E0);
  v6 = __chkstk_darwin(v5 - 8);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v56 - v8;
  v10 = type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = __chkstk_darwin(v10);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v56 - v13;
  v14 = sub_1001F1160(&qword_100AD6948);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - v15;
  v17 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F1160(&qword_100AE6928);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  if ((sub_100798F24() & 1) == 0 || (v24 = *(v21 + 16), v57 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v58 = v24, v24(v23, v1 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v20), sub_100798EE4(), v25 = *(v21 + 8), v25(v23, v20), !v69))
  {
    v31 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config;
    swift_beginAccess();
    sub_1000077D8(v2 + v31, v16, &qword_100AD6948);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_100007840(v16, &qword_100AD6948);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v32 = sub_10079ACE4();
      sub_100008B98(v32, qword_100AE67C0);
      v33 = sub_10079ACC4();
      v34 = sub_1007A29D4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "No config provided for isActive", v35, 2u);
      }

      goto LABEL_27;
    }

    v36 = v67;
    sub_100443804(v16, v67, type metadata accessor for YearInReview.RemoteConfiguration);
    v37 = (v65 + 48);
    if (v68)
    {
      v38 = v36 + *(v17 + 24);
      v39 = v61;
      sub_1000077D8(v38, v61, &qword_100AE39E0);
      if ((*v37)(v39, 1, v66) == 1)
      {
        sub_100007840(v39, &qword_100AE39E0);
        if (qword_100AD1730 != -1)
        {
          swift_once();
        }

        v40 = sub_10079ACE4();
        sub_100008B98(v40, qword_100AE67C0);
        v41 = sub_10079ACC4();
        v42 = sub_1007A29D4();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_26;
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "No configuration for topPicksCard entry point provided.";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);

LABEL_26:

        sub_1004438C0(v36, type metadata accessor for YearInReview.RemoteConfiguration);
LABEL_27:
        v30 = 0;
        return v30 & 1;
      }

      v46 = v60;
      sub_100443804(v39, v60, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      v47 = v62;
      sub_100796B74();
      v30 = sub_1005E4064(v47);
      (*(v63 + 8))(v47, v64);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v48 = sub_10079ACE4();
      sub_100008B98(v48, qword_100AE67C0);
      v49 = sub_10079ACC4();
      v50 = sub_1007A29D4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = v30 & 1;
        v52 = "topPicksCard isValidRange: %{BOOL}d";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 8u);
      }
    }

    else
    {
      sub_1000077D8(v36 + *(v17 + 20), v9, &qword_100AE39E0);
      if ((*v37)(v9, 1, v66) == 1)
      {
        sub_100007840(v9, &qword_100AE39E0);
        if (qword_100AD1730 != -1)
        {
          swift_once();
        }

        v45 = sub_10079ACE4();
        sub_100008B98(v45, qword_100AE67C0);
        v41 = sub_10079ACC4();
        v42 = sub_1007A29D4();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_26;
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "No configuration for notification entry point provided.";
        goto LABEL_25;
      }

      v46 = v59;
      sub_100443804(v9, v59, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      v53 = v62;
      sub_100796B74();
      v30 = sub_1005E4064(v53);
      (*(v63 + 8))(v53, v64);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v54 = sub_10079ACE4();
      sub_100008B98(v54, qword_100AE67C0);
      v49 = sub_10079ACC4();
      v50 = sub_1007A29D4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = v30 & 1;
        v52 = "notification isValidRange: %{BOOL}d";
        goto LABEL_37;
      }
    }

    sub_1004438C0(v46, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v36, type metadata accessor for YearInReview.RemoteConfiguration);
    return v30 & 1;
  }

  if (qword_100AD1730 != -1)
  {
    swift_once();
  }

  v26 = sub_10079ACE4();
  sub_100008B98(v26, qword_100AE67C0);

  v27 = sub_10079ACC4();
  v28 = sub_1007A29D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = v68 & 1;
    *(v29 + 12) = 2048;
    v58(v23, v2 + v57, v20);
    sub_100798EE4();
    v25(v23, v20);
    *(v29 + 14) = v69;

    _os_log_impl(&_mh_execute_header, v27, v28, "entryPoint: %ld is active with override year: %ld", v29, 0x16u);
  }

  else
  {
  }

  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1004B8F78(char a1)
{
  *(v2 + 320) = v1;
  *(v2 + 281) = a1;
  v3 = sub_1007978E4();
  *(v2 + 328) = v3;
  *(v2 + 336) = *(v3 - 8);
  *(v2 + 344) = swift_task_alloc();
  v4 = sub_1001F1160(&qword_100AE6928);
  *(v2 + 352) = v4;
  *(v2 + 360) = *(v4 - 8);
  *(v2 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1004B90A4, 0, 0);
}

uint64_t sub_1004B90A4()
{
  if ((sub_100798F24() & 1) != 0 && (v2 = *(v0 + 360), v1 = *(v0 + 368), v3 = *(v0 + 352), v4 = *(v0 + 320), v5 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v6 = *(v2 + 16), v6(v1, v4 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v3), sub_100798EE4(), v7 = *(v2 + 8), v7(v1, v3), *(v0 + 304)))
  {
    if (qword_100AD1730 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AE67C0);

    v9 = sub_10079ACC4();
    v10 = sub_1007A29D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 368);
      v27 = v4;
      v12 = *(v0 + 352);
      v26 = *(v0 + 281);
      v13 = swift_slowAlloc();
      v14 = v6;
      v15 = v13;
      *v13 = 134218240;
      *(v13 + 4) = v26;
      *(v13 + 12) = 2048;
      v14(v11, v27 + v5, v12);
      sub_100798EE4();
      v7(v11, v12);
      *(v15 + 14) = *(v0 + 312);

      _os_log_impl(&_mh_execute_header, v9, v10, "condition: %ld is eligible with override year: %ld", v15, 0x16u);
    }

    else
    {
    }

    v25 = *(v0 + 8);

    return v25(1);
  }

  else if (*(v0 + 281))
  {
    if (*(v0 + 281) == 1)
    {
      v16 = v0 + 208;
      v17 = v0 + 80;
      v18 = [objc_opt_self() defaultBag];
      v19 = [v18 isYIREnabled];
      *(v0 + 400) = v19;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 288;
      *(v0 + 88) = sub_1004B97BC;
      v20 = swift_continuation_init();
      *(v0 + 264) = sub_1001F1160(&qword_100AE6930);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1004B73D8;
      *(v0 + 232) = &unk_100A1F390;
      *(v0 + 240) = v20;
    }

    else
    {
      v17 = v0 + 16;
      v16 = v0 + 144;
      v23 = [objc_opt_self() defaultBag];
      v19 = [v23 isYIRNotificationsAllowed];
      *(v0 + 416) = v19;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 272;
      *(v0 + 24) = sub_1004B9964;
      v24 = swift_continuation_init();
      *(v0 + 200) = sub_1001F1160(&qword_100AE6930);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1004B73D8;
      *(v0 + 168) = &unk_100A1F368;
      *(v0 + 176) = v24;
    }

    [v19 valueWithCompletion:v16];

    return _swift_continuation_await(v17);
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 376) = v21;
    *v21 = v0;
    v21[1] = sub_1004B95A8;

    return sub_1004B74B8();
  }
}

uint64_t sub_1004B95A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = sub_1004B9B0C;
  }

  else
  {
    *(v4 + 392) = a1;
    v5 = sub_1004B96D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B96D0()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  *v1 = v0[49];
  (*(v2 + 104))(v1, enum case for YearInReviewEligibilityCriteria.EligibilityCondition.experience(_:), v3);
  v4 = sub_1007978F4();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1004B97BC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_1004B9BBC;
  }

  else
  {
    v2 = sub_1004B98CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B98CC()
{
  v1 = *(v0 + 288);

  v2 = [v1 BOOLValue];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004B9964()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_1004B9C80;
  }

  else
  {
    v2 = sub_1004B9A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B9A74()
{
  v1 = *(v0 + 272);

  v2 = [v1 BOOLValue];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004B9B0C()
{
  sub_1004BB088();
  swift_allocError();
  *v1 = 0;
  v1[1] = 0;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1004B9BBC()
{
  v1 = *(v0 + 400);
  swift_willThrow();

  sub_1004BB088();
  swift_allocError();
  *v2 = xmmword_10082A830;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_1004B9C80()
{
  v1 = *(v0 + 416);
  swift_willThrow();

  sub_1004BB088();
  swift_allocError();
  *v2 = 0xD000000000000019;
  v2[1] = 0x80000001008D8050;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3(0);
}

void sub_1004B9D54()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  if (sub_1004B84DC(1))
  {
    v5 = [objc_opt_self() predicateFor_All_Marked_As_Finished_LibraryAssets];
    v6 = [*&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_manager] persistentStoreCoordinator];
    if (v6)
    {
      v7 = v6;
      sub_1001F1160(&unk_100AD8160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100811370;
      *(inited + 32) = swift_getKeyPath();
      *(inited + 40) = swift_getKeyPath();
      *(inited + 48) = swift_getKeyPath();
      v9 = v5;
      v10 = sub_10040E230(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v33[0] = v10;
      v11 = sub_100408CFC(v10);
      sub_10040E374(v11);

      v12 = objc_allocWithZone(BCManagedObjectIDMonitor);
      v33[1] = sub_10000A7C4(0, &qword_100ADA990);
      v13 = v7;
      sub_1001F1160(&qword_100AE2370);
      sub_1007A22E4();
      v14 = sub_1007A2214();

      v15 = v9;
      v16 = sub_1007A2214();
      isa = sub_1007A2824().super.isa;
      v18 = [v12 initWithContext:0 coordinator:v13 entityName:v14 predicate:v15 mapProperty:v16 propertiesOfInterest:isa observer:v1];

      if (v18)
      {

        v19 = *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor];
        *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor] = v18;
        v20 = v18;

        v21 = sub_1007A2744();
        (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
        v22 = swift_allocObject();
        v22[2] = 0;
        v22[3] = 0;
        v22[4] = v1;
        v23 = v1;
        sub_1003457A0(0, 0, v4, &unk_10082A990, v22);

        if (qword_100AD1738 != -1)
        {
          swift_once();
        }

        v24 = sub_10079ACE4();
        sub_100008B98(v24, qword_100AE67D8);
        v25 = sub_10079ACC4();
        v26 = sub_1007A29D4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Successfully setup monitor, observing for changes", v27, 2u);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_100AD1738 != -1)
  {
    swift_once();
  }

  v28 = sub_10079ACE4();
  sub_100008B98(v28, qword_100AE67D8);
  v29 = sub_10079ACC4();
  v30 = sub_1007A29D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "TopPicksCard is not active, disabling observation", v31, 2u);
  }

  v32 = *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor];
  *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor] = 0;
}

id sub_1004BA274@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

id sub_1004BA2A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 notFinished];
  *a2 = result;
  return result;
}

uint64_t sub_1004BA2DC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateFinished];
  if (v3)
  {
    v4 = v3;
    sub_100796B64();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_100796BB4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1004BA3A0()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1004BA440;

  return sub_1004B8F78(0);
}

uint64_t sub_1004BA440(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1004BA5FC;
  }

  else
  {
    *(v4 + 32) = a1 & 1;
    v5 = sub_1004BA570;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004BA570()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
  isa = sub_1007A2684().super.super.isa;
  [v1 updateValue:isa];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004BA5FC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
  isa = sub_1007A2684().super.super.isa;
  [v1 updateValue:isa];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004BA768()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
  *(v0 + 56) = v1;
  if ([v1 getValue])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 72);
      goto LABEL_9;
    }
  }

  else
  {
    sub_100007840(v0 + 16, &unk_100AD5B40);
  }

  v2 = 0;
LABEL_9:
  *(v0 + 73) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1004BA8B4;

  return sub_1004B8F78(0);
}

uint64_t sub_1004BA8B4(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1004BAB54;
  }

  else
  {
    *(v4 + 74) = a1 & 1;
    v5 = sub_1004BA9E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004BA9E4()
{
  v1 = *(v0 + 74);
  if (v1 != *(v0 + 73))
  {
    if (qword_100AD1738 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AE67D8);
    v3 = sub_10079ACC4();
    v4 = sub_1007A29D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 73);
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 4) = v5;
      *(v6 + 8) = 1024;
      *(v6 + 10) = v1;
      _os_log_impl(&_mh_execute_header, v3, v4, "TopPicksCard eligibility did change from %{BOOL}d to %{BOOL}d", v6, 0xEu);
    }

    v7 = *(v0 + 56);

    isa = sub_1007A2684().super.super.isa;
    [v7 updateValue:isa];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004BAB54()
{
  if (*(v0 + 73) == 1)
  {
    if (qword_100AD1738 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AE67D8);
    v2 = sub_10079ACC4();
    v3 = sub_1007A29D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 73);
      v5 = swift_slowAlloc();
      *v5 = 67109376;
      *(v5 + 4) = v4;
      *(v5 + 8) = 1024;
      *(v5 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "TopPicksCard eligibility did change from %{BOOL}d to %{BOOL}d", v5, 0xEu);
    }

    v6 = *(v0 + 56);

    isa = sub_1007A2684().super.super.isa;
    [v6 updateValue:isa];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004BADC0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE67C0);
  sub_100008B98(v0, qword_100AE67C0);
  return sub_10079ACD4();
}

uint64_t sub_1004BAE40()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE67D8);
  sub_100008B98(v0, qword_100AE67D8);
  return sub_10079ACD4();
}

id sub_1004BAEE8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor] = 0;
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_eligibilityProvider] = a2;
  v6 = objc_allocWithZone(BSUIDynamicValue);
  v11 = 0;

  v7 = [v6 initWithValue:sub_1007A3B04()];
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible] = v7;
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_manager] = a1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = a1;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1004BAFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1004BA380(a1, v4, v5, v6);
}

unint64_t sub_1004BB088()
{
  result = qword_100AE6938;
  if (!qword_100AE6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6938);
  }

  return result;
}

uint64_t sub_1004BB0F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004BB138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004BA748(a1, v4, v5, v6);
}

uint64_t sub_1004BB1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004BB23C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1004BB290(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1004BB2C0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_61;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = v1;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v35 = v4;
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3784();
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_55;
        }

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v29 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_1007A38D4();
          isUniquelyReferenced_nonNull_bridgeObject = v29;
          goto LABEL_3;
        }
      }

      v7 = sub_1007A0C14();
      v8 = v7;
      if (v7 >> 62)
      {
        v9 = sub_1007A38D4();
        if (!v9)
        {
LABEL_23:

          v11 = _swiftEmptyArrayStorage;
          goto LABEL_24;
        }
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v34[0] = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A37F4();
      if (v9 < 0)
      {
        goto LABEL_57;
      }

      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_1007A3784();
        }

        else
        {
        }

        ++v10;
        sub_1007A1AD4();

        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
      }

      while (v9 != v10);

      v11 = v34[0];
LABEL_24:
      v2 = (v11 >> 62);
      v4 = v35;
      if (v11 >> 62)
      {
        v12 = sub_1007A38D4();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v4 >> 62;
      if (v4 >> 62)
      {
        v27 = sub_1007A38D4();
        v15 = v27 + v12;
        if (__OFADD__(v27, v12))
        {
LABEL_51:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_33:
        sub_1007A38D4();
        goto LABEL_34;
      }

      if (v13)
      {
        goto LABEL_33;
      }

LABEL_34:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3794();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_35:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A38D4();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v12)
        {
          goto LABEL_58;
        }

        v35 = v4;
        v20 = v16 + 8 * v17 + 32;
        v30 = v16;
        if (v2)
        {
          if (v19 < 1)
          {
            goto LABEL_60;
          }

          sub_100005920(&unk_100AE6A20, &qword_100AE6A18);
          for (i = 0; i != v19; ++i)
          {
            sub_1001F1160(&qword_100AE6A18);
            v22 = sub_1002B6D80(v34, i, v11);
            v24 = *v23;

            (v22)(v34, 0);
            *(v20 + 8 * i) = v24;
          }
        }

        else
        {
          sub_1007A1614();
          swift_arrayInitWithCopy();
        }

        v5 = v31;
        v4 = v35;
        if (v12 >= 1)
        {
          v25 = *(v30 + 16);
          v6 = __OFADD__(v25, v12);
          v26 = v25 + v12;
          if (v6)
          {
            goto LABEL_59;
          }

          *(v30 + 16) = v26;
        }
      }

      else
      {

        v5 = v31;
        if (v12 > 0)
        {
          goto LABEL_56;
        }
      }

      if (v3 == v5)
      {
        return v4;
      }
    }
  }

  return v2;
}

void *sub_1004BB718(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_61;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = v1;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v35 = v4;
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3784();
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_55;
        }

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v29 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_1007A38D4();
          isUniquelyReferenced_nonNull_bridgeObject = v29;
          goto LABEL_3;
        }
      }

      v7 = sub_1007A0C04();
      v8 = v7;
      if (v7 >> 62)
      {
        v9 = sub_1007A38D4();
        if (!v9)
        {
LABEL_23:

          v11 = _swiftEmptyArrayStorage;
          goto LABEL_24;
        }
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v34[0] = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A37F4();
      if (v9 < 0)
      {
        goto LABEL_57;
      }

      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_1007A3784();
        }

        else
        {
        }

        ++v10;
        sub_1007A1AC4();

        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
      }

      while (v9 != v10);

      v11 = v34[0];
LABEL_24:
      v2 = (v11 >> 62);
      v4 = v35;
      if (v11 >> 62)
      {
        v12 = sub_1007A38D4();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v4 >> 62;
      if (v4 >> 62)
      {
        v27 = sub_1007A38D4();
        v15 = v27 + v12;
        if (__OFADD__(v27, v12))
        {
LABEL_51:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_33:
        sub_1007A38D4();
        goto LABEL_34;
      }

      if (v13)
      {
        goto LABEL_33;
      }

LABEL_34:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3794();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_35:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A38D4();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v12)
        {
          goto LABEL_58;
        }

        v35 = v4;
        v20 = v16 + 8 * v17 + 32;
        v30 = v16;
        if (v2)
        {
          if (v19 < 1)
          {
            goto LABEL_60;
          }

          sub_100005920(&qword_100AE6398, &unk_100AE6A00);
          for (i = 0; i != v19; ++i)
          {
            sub_1001F1160(&unk_100AE6A00);
            v22 = sub_1002B6D80(v34, i, v11);
            v24 = *v23;

            (v22)(v34, 0);
            *(v20 + 8 * i) = v24;
          }
        }

        else
        {
          sub_1007A1224();
          swift_arrayInitWithCopy();
        }

        v5 = v31;
        v4 = v35;
        if (v12 >= 1)
        {
          v25 = *(v30 + 16);
          v6 = __OFADD__(v25, v12);
          v26 = v25 + v12;
          if (v6)
          {
            goto LABEL_59;
          }

          *(v30 + 16) = v26;
        }
      }

      else
      {

        v5 = v31;
        if (v12 > 0)
        {
          goto LABEL_56;
        }
      }

      if (v3 == v5)
      {
        return v4;
      }
    }
  }

  return v2;
}

uint64_t sub_1004BBB70()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v2 - 8);
  v4 = &v53[-v3];
  v5 = sub_10079F594();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_100796BB4();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100796BA4();
  v12 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v66 = *(v6 + 16);
  v66(v8, &v0[v12], v5);
  v13 = sub_10079F584();
  v67 = *(v6 + 8);
  v67(v8, v5);
  if (!v13)
  {
    goto LABEL_8;
  }

  v62 = v4;
  v64 = v13;
  v14 = v1;
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_8:
    sub_1004BD744(v11, v1);
    return (*(v9 + 8))(v11, v68);
  }

  v61 = v9;
  swift_getObjectType();
  v15 = sub_10079F9D4();
  swift_unknownObjectRelease();
  v63 = v14;
  v66(v8, &v14[v12], v5);
  v59 = v15;
  v16 = sub_10079F544();
  v67(v8, v5);
  v58 = sub_1004BB2C0(v16);
  v17 = sub_1004BB718(v16);
  v56 = 0;

  if (v17 >> 62)
  {
    v57 = sub_1007A38D4();
  }

  else
  {
    v57 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v11;

  v18 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_logger;
  v19 = v63;
  v65 = v63;
  v55 = v18;
  v20 = sub_10079ACC4();
  v21 = sub_1007A29A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    v23 = &v19[v12];
    v24 = v66;
    v66(v8, v23, v5);
    v54 = v21;
    v25 = sub_10079F554();
    v67(v8, v5);
    v26 = *(v25 + 16);
    v27 = v24;

    *(v22 + 4) = v26;
    v28 = v65;

    *(v22 + 12) = 2048;
    *(v22 + 14) = *(v28 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

    v19 = v63;
    _os_log_impl(&_mh_execute_header, v20, v54, "Processing %ld page(s) in ordinal: %ld", v22, 0x16u);
    v29 = v67;
  }

  else
  {

    v20 = v65;
    v27 = v66;
    v29 = v67;
  }

  v27(v8, &v19[v12], v5);
  v30 = v62;
  sub_10079F574();
  v29(v8, v5);
  v31 = sub_10079FD44();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentLocation;
  v33 = v65;
  swift_beginAccess();
  sub_1004BF690(v30, v33 + v32);
  swift_endAccess();
  v34 = v58;
  v69 = v58;
  sub_1001F1160(&qword_100AE6A18);
  sub_100005920(&unk_100AE6A20, &qword_100AE6A18);
  if (sub_1007A28A4())
  {
    v69 = _swiftEmptyArrayStorage;
    v35 = v65;

    v36 = sub_10079ACC4();
    v37 = sub_1007A2994();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      if (v34 >> 62)
      {
        v39 = sub_1007A38D4();
      }

      else
      {
        v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v57;
      *(v38 + 4) = v39;

      *(v38 + 12) = 2048;
      *(v38 + 14) = *(v35 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

      _os_log_impl(&_mh_execute_header, v36, v37, "Adding %ld note glyphs in documentOrdinal:%ld", v38, 0x16u);
    }

    else
    {
      v40 = v57;

      v36 = v35;
    }

    v46 = v35;
    v47 = v64;
    sub_1004BF700(v34, v46, v47, &v69);

    v48 = v46;
    v49 = sub_10079ACC4();
    v50 = sub_1007A29A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = *(v48 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

      _os_log_impl(&_mh_execute_header, v49, v50, "Updated accessibility annotations for ordinal: %ld", v51, 0xCu);
    }

    else
    {

      v49 = v48;
    }

    sub_1004BD874(v69, v40 != 0);

    v11 = v60;
    v44 = v60;
    v45 = v48;
  }

  else
  {
    v41 = v57 != 0;
    v42 = sub_1003BC194(v34);

    v43 = v65;
    sub_1004BD874(v42, v41);

    v11 = v60;
    v44 = v60;
    v45 = v43;
  }

  sub_1004BD744(v44, v45);
  v9 = v61;
  return (*(v9 + 8))(v11, v68);
}

uint64_t sub_1004BC368(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_10079F594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1004BF820(&qword_100AF71D0, &type metadata accessor for BookContentAdornmentState);
  LOBYTE(v11) = sub_1007A2124();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1004BBB70();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1004BC578()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004BBB70();
  }
}

void sub_1004BC5CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004BC620();
  }
}

uint64_t sub_1004BC620()
{
  v1 = v0;
  v2 = sub_1007A1A24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079F594();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_10079F9D4();
    swift_unknownObjectRelease();
    v11 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
    swift_beginAccess();
    (*(v7 + 16))(v9, v1 + v11, v6);
    v12 = sub_10079F544();
    (*(v7 + 8))(v9, v6);
    v13 = sub_1004BB718(v12);

    if (v13 >> 62)
    {
      v14 = sub_1007A38D4();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      *v5 = v14 != 0;
      (*(v3 + 104))(v5, enum case for ContentLoadingAccessibilityKeys.bookmarks(_:), v2);
      sub_10079F854();
      swift_unknownObjectRelease();

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1004BC8F8(uint64_t a1)
{
  v2 = sub_1007A1A24();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BookReaderChromeState();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&unk_100AE6AA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  swift_beginAccess();
  sub_1001F1160(&qword_100AE3CD0);
  sub_10079B974();
  swift_endAccess();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  sub_100005920(&unk_100AE6AB0, &unk_100AE6AA0);

  sub_10079BB04();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v15 = v8[*(v6 + 64)];
  sub_100437D94(v8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    *v4 = v15;
    v18 = v20;
    v17 = v21;
    (*(v20 + 104))(v4, enum case for ContentLoadingAccessibilityKeys.hasVisibleControls(_:), v21);
    sub_10079F854();
    swift_unknownObjectRelease();
    return (*(v18 + 8))(v4, v17);
  }

  return result;
}

void sub_1004BCCAC()
{
  v0 = sub_1007A1A24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v9 = v6[*(v4 + 56)];
    sub_100437D94(v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      *v3 = v9;
      (*(v1 + 104))(v3, enum case for ContentLoadingAccessibilityKeys.hasVisibleControls(_:), v0);
      sub_10079F854();

      swift_unknownObjectRelease();
      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

id sub_1004BCED4()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_logger, v1, v3);
  v6 = v0;
  v7 = sub_10079ACC4();
  v8 = sub_1007A29A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v6 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

    _os_log_impl(&_mh_execute_header, v7, v8, "Dealloc for ordinal: %ld", v9, 0xCu);
  }

  else
  {

    v7 = v6;
  }

  (*(v2 + 8))(v5, v1);
  v10 = type metadata accessor for BookReaderAccessoryAccessibilityController();
  v12.receiver = v6;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t type metadata accessor for BookReaderAccessoryAccessibilityController()
{
  result = qword_100AE69E0;
  if (!qword_100AE69E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BD2AC()
{
  sub_10079F594();
  if (v0 <= 0x3F)
  {
    sub_10079ACE4();
    if (v1 <= 0x3F)
    {
      sub_1004BD460(319, &unk_100AE69F0, &type metadata accessor for PageLocation);
      if (v2 <= 0x3F)
      {
        sub_1004BD460(319, &qword_100AF1E60, &type metadata accessor for BookThemeEntity);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004BD460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004BD4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v4 = sub_10079F594();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_1004BD540(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = sub_10079F594();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1004BD698;
}

void sub_1004BD698(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1004BC368(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1004BC368(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

void sub_1004BD744(uint64_t a1, void *a2)
{
  sub_100796B34();
  v4 = v3;
  v5 = a2;
  oslog = sub_10079ACC4();
  v6 = sub_1007A29A4();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(v5 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);

    *(v7 + 12) = 2048;
    *(v7 + 14) = round(v4 * -1000000.0) / 1000.0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "#accessoryperf updateAccessibilityState for ordinal %ld took %fms", v7, 0x16u);

    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t sub_1004BD874(uint64_t a1, int a2)
{
  v3 = v2;
  v160 = a2;
  v163 = a1;
  v4 = sub_10079F514();
  v158 = *(v4 - 8);
  __chkstk_darwin(v4);
  v145 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1001F1160(&qword_100AE6A68);
  __chkstk_darwin(v156);
  v159 = &v132 - v6;
  v7 = sub_1001F1160(&qword_100AE6A70);
  __chkstk_darwin(v7 - 8);
  v148 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v167 = &v132 - v10;
  __chkstk_darwin(v11);
  v157 = &v132 - v12;
  v13 = sub_1007A0EB4();
  v166 = *(v13 - 8);
  __chkstk_darwin(v13);
  v144 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1001F1160(&qword_100AE6A78);
  __chkstk_darwin(v154);
  v168 = &v132 - v15;
  v16 = sub_1001F1160(&unk_100AE6A80);
  __chkstk_darwin(v16 - 8);
  v147 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v164 = &v132 - v19;
  __chkstk_darwin(v20);
  v165 = &v132 - v21;
  v22 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v22 - 8);
  v24 = &v132 - v23;
  v25 = sub_1007A0F74();
  v161 = *(v25 - 8);
  v162 = v25;
  __chkstk_darwin(v25);
  v146 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1007A1A24();
  v27 = *(v172 - 8);
  __chkstk_darwin(v172);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v155 = &v132 - v31;
  __chkstk_darwin(v32);
  v171 = (&v132 - v33);
  v34 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v34 - 8);
  v143 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v142 = &v132 - v37;
  __chkstk_darwin(v38);
  v40 = &v132 - v39;
  v41 = sub_10079FD44();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v170 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v3 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_bookContentAccessoryAccessibilityHandler;
  result = swift_unknownObjectWeakLoadStrong();
  v173 = result;
  if (!result)
  {
    return result;
  }

  v140 = v29;
  v141 = v4;
  v46 = *(v44 + 8);
  v47 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentLocation;
  swift_beginAccess();
  sub_1000077D8(v3 + v47, v40, &qword_100AE6A10);
  v48 = *(v42 + 48);
  if (v48(v40, 1, v41) == 1)
  {
    swift_unknownObjectRelease();
    return sub_100007840(v40, &qword_100AE6A10);
  }

  v133 = v48;
  v134 = v24;
  v135 = v13;
  v136 = v42;
  v49 = *(v42 + 32);
  v137 = v41;
  v49(v170, v40, v41);
  ObjectType = swift_getObjectType();
  v51 = *(v3 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal);
  v53 = v171;
  v52 = v172;
  *v171 = v163;
  v54 = *(v27 + 104);
  v151 = v27 + 104;
  v150 = v54;
  v54(v53, enum case for ContentLoadingAccessibilityKeys.annotations(_:), v52);

  v163 = v51;
  v152 = ObjectType;
  v169 = v46;
  sub_10079F854();
  v149 = *(v27 + 8);
  v153 = v27 + 8;
  v149(v53, v52);
  v55 = v3 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_paginatingService;
  Strong = swift_unknownObjectWeakLoadStrong();
  v139 = v55;
  if (!Strong || (swift_getObjectType(), v52 = v172, v57 = sub_10079F9D4(), swift_unknownObjectRelease(), !v57))
  {
    v63 = *(v161 + 56);
    LODWORD(v161) = 1;
    v58 = v134;
    v63(v134, 1, 1, v162);
    v57 = 0;
    v62 = v168;
    goto LABEL_9;
  }

  v58 = v134;
  sub_10079F3D4();

  v60 = v161;
  v59 = v162;
  v61 = (*(v161 + 48))(v58, 1, v162);
  v62 = v168;
  if (v61 == 1)
  {
    LODWORD(v161) = 0;
LABEL_9:
    v138 = v57;
    sub_100007840(v58, &unk_100AEB380);
    v64 = v141;
LABEL_10:
    v65 = v165;
    v66 = v171;
    *v171 = 0;
    v150(v66, enum case for ContentLoadingAccessibilityKeys.pageSpread(_:), v52);
    sub_10079F854();
    v149(v66, v52);
    v67 = v159;
    goto LABEL_11;
  }

  v117 = v146;
  (*(v60 + 32))(v146, v58, v59);
  v118 = *(sub_1007A0F54() + 16);

  v138 = v57;
  if (v118 < 2)
  {
    (*(v60 + 8))(v117, v59);
    LODWORD(v161) = 0;
    v64 = v141;
    goto LABEL_10;
  }

  v119 = v142;
  sub_1007A0F14();
  v120 = v137;
  v121 = v133;
  v122 = v133(v119, 1, v137);
  if (v122 == 1)
  {
    sub_100007840(v119, &qword_100AE6A10);
    v123 = 0;
  }

  else
  {
    v123 = sub_10079FD14();
    (*(v136 + 8))(v119, v120);
  }

  v124 = v143;
  sub_1007A0F04();
  v125 = v121(v124, 1, v120);
  v126 = v125 == 1;
  if (v125 == 1)
  {
    sub_100007840(v124, &qword_100AE6A10);
    v127 = 0;
  }

  else
  {
    v127 = sub_10079FD14();
    (*(v136 + 8))(v124, v120);
  }

  v64 = v141;
  v128 = v150;
  if (v122 != 1)
  {
    v126 = v125 != 1 && v123 == v127;
  }

  v131 = v171;
  v130 = v172;
  *v171 = !v126;
  v128(v131, enum case for ContentLoadingAccessibilityKeys.pageSpread(_:), v130);
  sub_10079F854();
  v149(v131, v130);
  (*(v161 + 8))(v146, v162);
  LODWORD(v161) = 0;
  v67 = v159;
  v62 = v168;
  v65 = v165;
LABEL_11:
  v68 = swift_unknownObjectWeakLoadStrong();
  v69 = v164;
  if (v68 && (swift_getObjectType(), sub_10079F9D4(), swift_unknownObjectRelease(), v70 = sub_10079F434(), , v70))
  {
    sub_1007A1244();

    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = v166;
  v73 = *(v166 + 56);
  v74 = v135;
  v73(v65, v71, 1, v135);
  (*(v72 + 104))(v69, enum case for DocumentPaginationMode.paginated(_:), v74);
  v73(v69, 0, 1, v74);
  v75 = *(v154 + 48);
  sub_1000077D8(v65, v62, &unk_100AE6A80);
  v76 = v74;
  sub_1000077D8(v69, v62 + v75, &unk_100AE6A80);
  v77 = v72;
  v78 = v65;
  v79 = *(v77 + 48);
  if (v79(v62, 1, v76) == 1)
  {
    sub_100007840(v69, &unk_100AE6A80);
    v62 = v168;
    sub_100007840(v78, &unk_100AE6A80);
    v80 = v79(v62 + v75, 1, v76);
    v81 = v172;
    v82 = v167;
    if (v80 == 1)
    {
      sub_100007840(v62, &unk_100AE6A80);
      v83 = 1;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v84 = v147;
  sub_1000077D8(v62, v147, &unk_100AE6A80);
  if (v79(v62 + v75, 1, v76) == 1)
  {
    sub_100007840(v164, &unk_100AE6A80);
    sub_100007840(v165, &unk_100AE6A80);
    (*(v166 + 8))(v84, v76);
    v81 = v172;
    v82 = v167;
LABEL_20:
    sub_100007840(v62, &qword_100AE6A78);
    v83 = 0;
    goto LABEL_22;
  }

  v85 = v84;
  v86 = v166;
  v87 = v144;
  (*(v166 + 32))(v144, v62 + v75, v76);
  sub_1004BF820(&qword_100AE6A98, &type metadata accessor for DocumentPaginationMode);
  v88 = v62;
  v89 = v76;
  v83 = sub_1007A2124();
  v90 = *(v86 + 8);
  v90(v87, v89);
  sub_100007840(v164, &unk_100AE6A80);
  sub_100007840(v165, &unk_100AE6A80);
  v90(v85, v89);
  sub_100007840(v88, &unk_100AE6A80);
  v81 = v172;
  v82 = v167;
LABEL_22:
  v91 = v157;
  v92 = v158;
  v93 = v83 & 1;
  v94 = v155;
  *v155 = v93;
  v150(v94, enum case for ContentLoadingAccessibilityKeys.isPaginated(_:), v81);
  sub_10079F854();
  v149(v94, v81);
  if (v161)
  {
    v95 = 1;
  }

  else
  {

    sub_10079F3B4();

    v95 = 0;
  }

  v96 = *(v92 + 56);
  v96(v91, v95, 1, v64);
  (*(v92 + 104))(v82, enum case for BookNavigationDirection.rightToLeft(_:), v64);
  v96(v82, 0, 1, v64);
  v97 = *(v156 + 48);
  sub_1000077D8(v91, v67, &qword_100AE6A70);
  sub_1000077D8(v82, v67 + v97, &qword_100AE6A70);
  v98 = v82;
  v99 = *(v92 + 48);
  if (v99(v67, 1, v64) != 1)
  {
    v103 = v148;
    sub_1000077D8(v67, v148, &qword_100AE6A70);
    if (v99(v67 + v97, 1, v64) != 1)
    {
      v104 = v67 + v97;
      v105 = v145;
      (*(v92 + 32))(v145, v104, v64);
      sub_1004BF820(&qword_100AE6A90, &type metadata accessor for BookNavigationDirection);
      v106 = v103;
      v102 = sub_1007A2124();
      v107 = *(v92 + 8);
      v107(v105, v64);
      sub_100007840(v167, &qword_100AE6A70);
      sub_100007840(v91, &qword_100AE6A70);
      v107(v106, v64);
      sub_100007840(v67, &qword_100AE6A70);
      v101 = v172;
      goto LABEL_32;
    }

    sub_100007840(v167, &qword_100AE6A70);
    sub_100007840(v91, &qword_100AE6A70);
    (*(v92 + 8))(v103, v64);
    v101 = v172;
    goto LABEL_30;
  }

  sub_100007840(v98, &qword_100AE6A70);
  sub_100007840(v91, &qword_100AE6A70);
  v100 = v99(v67 + v97, 1, v64);
  v101 = v172;
  if (v100 != 1)
  {
LABEL_30:
    sub_100007840(v67, &qword_100AE6A68);
    v102 = 0;
    goto LABEL_32;
  }

  sub_100007840(v67, &qword_100AE6A70);
  v102 = 1;
LABEL_32:
  v108 = v102 & 1;
  v109 = v140;
  *v140 = v108;
  v110 = v150;
  v150(v109, enum case for ContentLoadingAccessibilityKeys.isRTL(_:), v101);
  sub_10079F854();
  v111 = v149;
  v149(v109, v101);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F9D4();
    swift_unknownObjectRelease();
    v112 = sub_10079F434();

    if (v112)
    {
      v113 = sub_1007A1234();

      v114 = (v113 & 1) == 0;
      v115 = v171;
      *v171 = v114;
      v110(v115, enum case for ContentLoadingAccessibilityKeys.isTextHorizontal(_:), v101);
      sub_10079F854();
      v111(v115, v101);
    }
  }

  v116 = v171;
  *v171 = v160 & 1;
  v110(v116, enum case for ContentLoadingAccessibilityKeys.bookmarks(_:), v101);
  sub_10079F854();

  swift_unknownObjectRelease();
  v111(v116, v101);
  return (*(v136 + 8))(v170, v137);
}

void sub_1004BECE8(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v73 = a3;
  v6 = sub_1001F1160(&unk_100AD6170);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v80 = sub_1001F1160(&unk_100AE6A30);
  v71 = *(v80 - 8);
  __chkstk_darwin(v80);
  v72 = &v62 - v9;
  v10 = sub_1001F1160(&qword_100AD6190);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v82 = &v62 - v12;
  v13 = sub_1007A1054();
  v15 = v14;
  v81 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_23:

    v57 = sub_10079ACC4();
    v58 = sub_1007A29B4();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v83 = v60;
      *v59 = 136315138;
      v61 = sub_1000070F4(v13, v15, &v83);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v57, v58, "Missing annotation detail entity for paginated highlight: %s, to send to web process plugin", v59, 0xCu);
      sub_1000074E0(v60);
    }

    else
    {
    }

    return;
  }

  v79 = v8;
  v17 = Strong;
  swift_getObjectType();
  v18 = sub_1007A08A4();
  if (!v18)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v67 = v18;
  v66 = v17;

  v19 = sub_1007A1064();
  v20 = *(v19 + 16);
  if (!v20)
  {

    v21 = _swiftEmptyArrayStorage;
    v39 = _swiftEmptyArrayStorage[2];
    if (v39)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v65 = a4;
  v85 = _swiftEmptyArrayStorage;
  sub_1003BD760(0, v20, 0);
  v21 = v85;
  v77 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_contentLayoutController;
  v23 = *(v11 + 16);
  v22 = v11 + 16;
  v76 = v23;
  v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v64 = v19;
  v25 = v19 + v24;
  v74 = (v71 + 6);
  v75 = *(v22 + 56);
  v70 = (v71 + 1);
  v78 = v22;
  v26 = (v22 - 8);
  v71 += 7;
  v69 = v10;
  v68 = v26;
  do
  {
    v27 = v82;
    v76(v82, v25, v10);
    if (!swift_weakLoadStrong())
    {
      (*v26)(v27, v10);
      v28 = v79;
      (*v71)(v79, 1, 1, v80);
      goto LABEL_9;
    }

    v28 = v79;
    sub_10079F744();

    v29 = v80;
    if ((*v74)(v28, 1, v80) == 1)
    {
      (*v26)(v27, v10);
LABEL_9:
      sub_100007840(v28, &unk_100AD6170);
      v30 = 0uLL;
      v31 = 1;
      v32 = 0uLL;
      goto LABEL_11;
    }

    v33 = v72;
    sub_10079FEE4();
    v34 = *v70;
    (*v70)(v28, v29);
    sub_10079FEB4();
    v35 = v33;
    v10 = v69;
    v34(v35, v29);
    v26 = v68;
    (*v68)(v82, v10);
    v31 = 0;
    v30 = v83;
    v32 = v84;
LABEL_11:
    v85 = v21;
    v37 = v21[2];
    v36 = v21[3];
    if (v37 >= v36 >> 1)
    {
      v63 = v30;
      v62 = v32;
      sub_1003BD760((v36 > 1), v37 + 1, 1);
      v32 = v62;
      v30 = v63;
      v21 = v85;
    }

    v21[2] = v37 + 1;
    v38 = &v21[5 * v37];
    *(v38 + 2) = v30;
    *(v38 + 3) = v32;
    *(v38 + 64) = v31;
    v25 += v75;
    --v20;
  }

  while (v20);

  a4 = v65;
  v39 = v21[2];
  if (!v39)
  {
LABEL_28:

LABEL_29:
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  v40 = *(v21 + 64);
  v41 = &v21[5 * v39 + 4];
  v42 = *(v41 - 40);
  v43 = *(v41 - 32);
  v44 = *(v41 - 24);
  v45 = *(v41 - 16);
  v46 = *(v41 - 8);

  if (v40 & 1) != 0 || (v46)
  {
    goto LABEL_29;
  }

  sub_1001F1160(&unk_100AE6A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 0x696F507472617473;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_1001F1160(&unk_100AD8160);
  v48 = swift_allocObject();
  v82 = xmmword_100811360;
  *(v48 + 16) = xmmword_100811360;
  *(v48 + 32) = sub_100797BE4();
  *(v48 + 40) = sub_100797BE4();
  *&v83 = v48;
  sub_1001F1160(&qword_100AE6A50);
  *(inited + 48) = sub_1007A3B04();
  *(inited + 56) = 0x746E696F50646E65;
  *(inited + 64) = 0xE800000000000000;
  v49 = swift_allocObject();
  *(v49 + 16) = v82;
  v86.origin.x = v42;
  v86.origin.y = v43;
  v86.size.width = v44;
  v86.size.height = v45;
  CGRectGetMaxX(v86);
  *(v49 + 32) = sub_100797BE4();
  v87.origin.x = v42;
  v87.origin.y = v43;
  v87.size.width = v44;
  v87.size.height = v45;
  CGRectGetMaxY(v87);
  *(v49 + 40) = sub_100797BE4();
  *&v83 = v49;
  *(inited + 72) = sub_1007A3B04();
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  *&v83 = sub_1007A1A44();
  *(&v83 + 1) = v50;
  *(inited + 96) = sub_1007A3B04();
  v51 = sub_1001EF0BC(inited);
  swift_setDeallocating();
  sub_1001F1160(&qword_100AE6A58);
  swift_arrayDestroy();
  *(&v84 + 1) = sub_1001F1160(&qword_100AE6A60);
  *&v83 = v51;
  v52 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = sub_10066A640(0, *(v52 + 2) + 1, 1, v52);
    *a4 = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    *a4 = sub_10066A640((v54 > 1), v55 + 1, 1, v52);
  }

  swift_unknownObjectRelease();

  v56 = *a4;
  *(v56 + 2) = v55 + 1;
  sub_1000076D4(&v83, &v56[32 * v55 + 32]);
}

uint64_t sub_1004BF690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE6A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004BF700(unint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  v6 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007A3784();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v13 = v9;
        sub_1004BECE8(&v13, a2, a3, a4);

        if (!v4)
        {
          ++v8;
          if (v10 != v7)
          {
            continue;
          }
        }

        return result;
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1007A38D4();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1004BF820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004BF938@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  v9 = a2(0);
  result = sub_100798CC4();
  if (result)
  {
    v11 = result;
    a5[3] = v9;
    result = sub_100013664(a3, 255, a4);
    a5[4] = result;
    *a5 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004BFCB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&qword_100AE6C30);
  result = sub_100798CC4();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MescalSigner();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_100013664(&qword_100AE6D00, 255, type metadata accessor for MescalSigner);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004BFD84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10000A7C4(0, &qword_100AE6C38);
  result = sub_100798CC4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_10000E3E8(a1, a1[3]);
  type metadata accessor for ExperimentIDsCookieParser();
  result = sub_100798CC4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  sub_10000E3E8(a1, a1[3]);
  type metadata accessor for ExperimentIDsHeaderValueFormatter();
  result = sub_100798CC4();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for CookieStorageExperimentIDsHeaderValueProvider();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    a2[3] = v8;
    result = sub_100013664(&qword_100AE6CF8, 255, type metadata accessor for CookieStorageExperimentIDsHeaderValueProvider);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1004BFEDC(uint64_t a1, uint64_t a2)
{
  if (qword_100AD1410 != -1)
  {
    swift_once();
  }

  sub_100013664(&qword_100AE6CE8, a2, type metadata accessor for BooksPersonalizationAssembly);
  return sub_100797A84();
}

uint64_t sub_1004BFFB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE6CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100799B34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(a1, a1[3]);
  sub_100798CD4();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    sub_10000E3E8(a1, a1[3]);
    v19 = sub_10079A1D4();
    sub_1001F1160(&qword_100AE6BE0);
    sub_1007A22E4();
    sub_100798CB4();

    v13 = v20;
    if (v20)
    {
      v14 = v19;
      v15 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v15 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        (*(v8 + 8))(v10, v7);
        *a2 = v14;
        a2[1] = v13;
        v16 = &enum case for EnvironmentType.url(_:);
LABEL_9:
        v17 = *v16;
        v18 = sub_10079A094();
        return (*(*(v18 - 8) + 104))(a2, v17, v18);
      }
    }

    v12(a2, v10, v7);
    v16 = &enum case for EnvironmentType.environment(_:);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C025C(uint64_t a1, uint64_t a2)
{
  if (qword_100AD1418 != -1)
  {
    swift_once();
  }

  sub_100013664(&qword_100AE6CE8, a2, type metadata accessor for BooksPersonalizationAssembly);
  return sub_100797A84();
}

uint64_t sub_1004C0330(uint64_t a1, uint64_t a2)
{
  if (qword_100AD1420 != -1)
  {
    swift_once();
  }

  sub_100013664(&qword_100AE6CE8, a2, type metadata accessor for BooksPersonalizationAssembly);
  return sub_100797A84();
}

uint64_t sub_1004C0590@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  v7 = a2(0);
  result = sub_100798CC4();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004C0614()
{
  v0 = [objc_opt_self() sharedProvider];

  return v0;
}

uint64_t sub_1004C067C()
{
  type metadata accessor for ExperimentIDsCookieParser();

  return swift_allocObject();
}

uint64_t sub_1004C06B0(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&qword_100AE6C28);
  result = sub_100798CC4();
  if (result)
  {
    v3 = result;
    sub_10000E3E8(a1, a1[3]);
    sub_1001F1160(&qword_100AE6CB0);
    result = sub_100798CD4();
    if (v13)
    {
      v4 = type metadata accessor for GenreRecommendationManager();
      v5 = objc_allocWithZone(v4);
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = sub_100546A84(v6);
      *&v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_accountsProvider] = v3;
      sub_100009864(v12, &v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_service]);
      *&v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_defaults] = v6;
      sub_1001F1160(&qword_100AE6CB8);
      v8 = swift_allocObject();
      *(v8 + 28) = 0;
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *&v5[OBJC_IVAR____TtC5Books26GenreRecommendationManager_stateLock] = v8;
      v11.receiver = v5;
      v11.super_class = v4;
      swift_unknownObjectRetain();
      v9 = v6;
      v10 = objc_msgSendSuper2(&v11, "init");
      [v3 addObserver:v10 accountTypes:3];

      swift_unknownObjectRelease();
      sub_1000074E0(v12);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C0870()
{
  type metadata accessor for ExperimentIDsHeaderValueFormatter();

  return swift_allocObject();
}

uint64_t sub_1004C08A4(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10000A7C4(0, &qword_100AE6C40);
  result = sub_100798CC4();
  if (result)
  {
    v2 = result;
    type metadata accessor for PaidStorefrontAccessRequirement();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C0924(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10000A7C4(0, &qword_100AE6C40);
  result = sub_100798CC4();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C09F8(void *a1, void (*a2)(void))
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&qword_100AE6C28);
  result = sub_100798CC4();
  if (result)
  {
    v5 = result;
    sub_10000E3E8(a1, a1[3]);
    type metadata accessor for AMSEngagementService();
    result = sub_100798CC4();
    if (result)
    {
      v6 = result;
      a2(0);
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1004C0AC0()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C0AFC(void *a1)
{
  v2 = sub_1001F1160(&qword_100AE6CA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_10000E3E8(a1, a1[3]);
  v5 = sub_100798FE4();
  sub_100798CD4();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000E3E8(a1, a1[3]);
    sub_1001F1160(&unk_100AEC7D0);
    result = sub_100798CC4();
    if (result)
    {
      v8 = result;
      type metadata accessor for MediaAPIMetadataService();
      v9 = swift_allocObject();
      (*(v6 + 32))(v9 + OBJC_IVAR____TtC5Books23MediaAPIMetadataService_catalogService, v4, v5);
      *(v9 + OBJC_IVAR____TtC5Books23MediaAPIMetadataService_libraryManagerResolver) = v8;
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C0CDC(void *a1, void (*a2)(void), void *a3)
{
  v6 = sub_1001F1160(&qword_100AE6CA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_10000E3E8(a1, a1[3]);
  v9 = sub_100798FE4();
  sub_100798CD4();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(0);
    v12 = swift_allocObject();
    (*(v10 + 32))(v12 + *a3, v8, v9);
    return v12;
  }

  return result;
}

uint64_t sub_1004C0E34(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  type metadata accessor for MediaAPIMetadataService();
  result = sub_100798CC4();
  if (result)
  {
    sub_100013664(&qword_100AE6C98, 255, type metadata accessor for MediaAPIMetadataService);
    sub_100013664(&qword_100AE6CA0, 255, type metadata accessor for MediaAPIMetadataService);
    sub_10079A004();
    swift_allocObject();

    return sub_100799FF4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004C0F4C()
{
  v0 = [objc_opt_self() defaultBag];

  return v0;
}

uint64_t sub_1004C0FB4(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  v1 = type metadata accessor for PersonalizationConfigurationService();
  result = sub_100798CC4();
  if (result)
  {
    v3 = result;
    v6 = v1;
    v7 = sub_100013664(&qword_100AE6C88, 255, type metadata accessor for PersonalizationConfigurationService);
    *&v5 = v3;
    type metadata accessor for MergedPersonalizationConfigurationService();
    v4 = swift_allocObject();
    sub_1000077C0(&v5, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C1084(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_10079E784();
  result = sub_100798CC4();
  if (result)
  {
    v2 = result;
    type metadata accessor for PersonalizationConfigurationService();
    swift_allocObject();
    v3 = sub_1003BB3C4(v2);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C1158()
{
  type metadata accessor for EditionStringFlatteningService();

  return swift_allocObject();
}

uint64_t sub_1004C11CC(uint64_t a1, SEL *a2, void (*a3)(void))
{
  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 *a2];

  a3(0);
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t sub_1004C1250(void *a1)
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(&unk_100AE6C70);
  result = sub_100798CC4();
  if (result)
  {
    v2 = result;
    type metadata accessor for EngagementCollectorEventStore();
    v3 = swift_allocObject();
    v4 = OBJC_IVAR____TtC5Books29EngagementCollectorEventStore____lazy_storage___iso8601DateFormatter;
    v5 = sub_100796AD4();
    (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
    *(v3 + 16) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C136C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_10000E3E8(a1, a1[3]);
  sub_1001F1160(a2);
  result = sub_100798CC4();
  if (result)
  {
    v7 = result;
    a4(0);
    result = swift_allocObject();
    *(result + 16) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C13FC(uint64_t a1, void *a2)
{
  v4 = sub_10079A534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(a2, a2[3]);
  v8 = type metadata accessor for AccountAccessRequirement();
  result = sub_100798CC4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v23 = v8;
  v24 = sub_100013664(&qword_100AE6C50, 255, type metadata accessor for AccountAccessRequirement);
  v22[0] = v10;
  v20 = *(v5 + 104);
  v20(v7, enum case for AccessRequirementUnsatisfiedReason.account(_:), v4);
  v19[1] = v10;

  sub_100799C24();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v21 = v12;
  v12(v7, v4);
  sub_1000074E0(v22);
  sub_10000E3E8(a2, a2[3]);
  v13 = type metadata accessor for PaidStorefrontAccessRequirement();
  result = sub_100798CC4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = result;
  v23 = v13;
  v24 = sub_100013664(&qword_100AE6C58, 255, type metadata accessor for PaidStorefrontAccessRequirement);
  v22[0] = v14;
  v20(v7, enum case for AccessRequirementUnsatisfiedReason.paidStorefront(_:), v4);

  v19[2] = a1;
  sub_100799C24();
  v21(v7, v4);
  sub_1000074E0(v22);
  sub_10000E3E8(a2, a2[3]);
  v15 = type metadata accessor for UnderThirteenAccessRequirement();
  result = sub_100798CC4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = result;
  v23 = v15;
  v24 = sub_100013664(&qword_100AE6C60, 255, type metadata accessor for UnderThirteenAccessRequirement);
  v22[0] = v16;
  v20(v7, enum case for AccessRequirementUnsatisfiedReason.underThirteen(_:), v4);

  sub_100799C24();
  v19[0] = v11;
  v21(v7, v4);
  sub_1000074E0(v22);
  sub_10000E3E8(a2, a2[3]);
  v17 = type metadata accessor for UserPreferenceAccessRequirement();
  result = sub_100798CC4();
  if (result)
  {
    v18 = result;
    v23 = v17;
    v24 = sub_100013664(&qword_100AE6C68, 255, type metadata accessor for UserPreferenceAccessRequirement);
    v22[0] = v18;
    v20(v7, enum case for AccessRequirementUnsatisfiedReason.userPreference(_:), v4);

    sub_100799C24();

    v21(v7, v4);
    return sub_1000074E0(v22);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1004C1944(uint64_t result, double a2)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v4 = *(v2 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_pageCount);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v4 >= 40)
  {
    v4 = 40;
  }

  v6 = v4 * a2;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7 = (1.0 - a2) * v4;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = v6;
  v9 = v7;
  if (v3 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = result - 1;
  }

  if (v5 >= v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v5;
  }

  v12 = __OFSUB__(v8, v10);
  v13 = v8 - v10;
  if (v12)
  {
    goto LABEL_43;
  }

  v12 = __OFSUB__(v9, v11);
  v14 = v9 - v11;
  if (v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v12 = __OFADD__(v10, v14);
  v15 = v10 + v14;
  if (v12)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 >= v3)
  {
    v15 = result - 1;
  }

  if (__OFADD__(v11, v13))
  {
    goto LABEL_46;
  }

  if (v11 + v13 >= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = v11 + v13;
  }

  v17 = result - v15;
  if (__OFSUB__(result, v15))
  {
    goto LABEL_47;
  }

  v18 = result + v16;
  if (__OFADD__(result, v16))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v16 < v15)
  {
    v12 = __OFADD__(v17++, 1);
    if (!v12)
    {
LABEL_33:
      if (v18 >= v17)
      {
        v19 = (v2 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange);
        *v19 = v17;
        v19[1] = v18;
        *(v2 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerCurrentPage) = result;
        return result;
      }

      goto LABEL_49;
    }

    __break(1u);
  }

  v12 = __OFSUB__(v18--, 1);
  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_50:
  __break(1u);
  return result;
}