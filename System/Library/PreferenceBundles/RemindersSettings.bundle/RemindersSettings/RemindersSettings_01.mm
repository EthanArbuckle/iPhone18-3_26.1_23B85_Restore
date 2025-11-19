uint64_t sub_206F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26[0] = a2;
  v7 = sub_23A20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7F84(&qword_3B3D0, &qword_27910);
  v26[1] = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v26 - v14;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  sub_7F84(&qword_3B3D8, &qword_27918);
  sub_1B278(&qword_3B3E0, &qword_3B3D8, &qword_27918);
  sub_23A40();
  sub_23A10();
  v16 = *(sub_7F84(&qword_3B3E8, &qword_27920) + 36);
  (*(v8 + 16))(&v15[v16], v11, v7);
  v17 = *(v8 + 56);
  v17(&v15[v16], 0, 1, v7);
  KeyPath = swift_getKeyPath();
  v19 = &v15[*(v12 + 36)];
  v20 = *(sub_7F84(&qword_3B3F0, &qword_27958) + 28);
  (*(v8 + 32))(v19 + v20, v11, v7);
  v17(v19 + v20, 0, 1, v7);
  *v19 = KeyPath;
  v21 = v26[0];
  v33 = a1;
  v34 = v26[0];
  sub_7F84(&qword_3B3F8, &qword_27960);
  sub_23AD0();
  v33 = v32;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = v21;
  v23 = v27;
  v22[4] = v27;
  sub_23870();
  sub_221C0();
  sub_22F80(&qword_3B438);

  v24 = v23;
  sub_23AC0();

  return sub_2235C(v15);
}

uint64_t sub_20A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a4;
  v42 = sub_7F84(&qword_3B448, &qword_279A8);
  v7 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v40 = &v37 - v8;
  v44 = sub_7F84(&qword_3B450, &qword_279B0);
  v48 = *(v44 - 8);
  v9 = v48[8];
  v10 = __chkstk_darwin(v44);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v37 - v12;
  v41 = sub_7F84(&qword_3B458, &qword_279B8);
  v39 = *(v41 - 8);
  v13 = v39;
  v14 = *(v39 + 64);
  v15 = __chkstk_darwin(v41);
  v46 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v52 = a1;
  v53 = a2;
  v19 = a2;
  v54 = a3;
  sub_7F84(&qword_3B460, &qword_279C0);
  v20 = sub_8EE4(&qword_3B468, &qword_279C8);
  v21 = sub_23A00();
  v22 = sub_1B278(&qword_3B470, &qword_3B468, &qword_279C8);
  v55 = v20;
  v56 = v21;
  v57 = v22;
  v58 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v23 = v18;
  v38 = v18;
  sub_23B10();
  v49 = a1;
  v50 = v19;
  v51 = a3;
  sub_21988();
  v55 = &type metadata for Text;
  v56 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v24 = v47;
  sub_23B20();
  v25 = *(v13 + 16);
  v26 = v46;
  v27 = v41;
  v25(v46, v23, v41);
  v28 = v48[2];
  v29 = v43;
  v30 = v24;
  v31 = v44;
  v28(v43, v30, v44);
  v32 = v45;
  v25(v45, v26, v27);
  v33 = &v32[*(sub_7F84(&qword_3B478, &qword_279D0) + 48)];
  v28(v33, v29, v31);
  v34 = v48[1];
  v34(v47, v31);
  v35 = *(v39 + 8);
  v35(v38, v27);
  v34(v29, v31);
  return (v35)(v46, v27);
}

uint64_t sub_20EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7F84(&qword_3B468, &qword_279C8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v15 - v12;
  v15[4] = a1;
  v15[5] = a2;
  sub_7F84(&qword_3B3F8, &qword_27960);
  sub_23AE0();
  sub_23870();
  sub_7F84(&qword_3B480, &qword_279D8);
  sub_22F80(&qword_3B488);
  sub_22FC4();
  sub_23AF0();
  sub_239F0();
  sub_1B278(&qword_3B470, &qword_3B468, &qword_279C8);
  sub_23A90();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21174()
{
  sub_7F84(&qword_3B498, &unk_279E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27830;
  sub_23870();
  *(v0 + 32) = sub_23850();
  swift_getKeyPath();
  sub_7F84(&qword_3B4A0, &qword_27A08);
  sub_1B278(&qword_3B4A8, &qword_3B4A0, &qword_27A08);
  sub_22F80(&qword_3B488);
  return sub_23B00();
}

uint64_t sub_212B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = sub_23A00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7F84(&qword_3B468, &qword_279C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v18 - v15;
  v18[10] = a1;
  v18[11] = a2;
  sub_7F84(&qword_3B3F8, &qword_27960);
  sub_23AE0();
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  sub_23870();
  sub_7F84(&qword_3B480, &qword_279D8);
  sub_22F80(&qword_3B488);
  sub_22FC4();
  sub_23AF0();
  sub_239F0();
  sub_1B278(&qword_3B470, &qword_3B468, &qword_279C8);
  sub_23A90();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21558()
{
  sub_7F84(&qword_3B498, &unk_279E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27840;
  sub_23870();
  *(inited + 32) = sub_23850();
  *(inited + 40) = sub_224F0();
  v1 = sub_226D0(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  swift_arrayDestroy();
  v3 = sub_23840();
  if (v3 >> 62)
  {
LABEL_25:
    v17 = v3;
    v4 = sub_24000();
    v3 = v17;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v21 = v3 + 32;
      v22 = v3 & 0xFFFFFFFFFFFFFF8;
      v20 = v4;
      v7 = v1 + 56;
      v19 = v3 & 0xC000000000000001;
      do
      {
        if (v6)
        {
          sub_23F90();
          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v22 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v21 + 8 * v5);

          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
            goto LABEL_22;
          }
        }

        if ((v1 & 0xC000000000000001) != 0)
        {

          v11 = sub_23F30();

          if (v11)
          {

            continue;
          }
        }

        else if (*(v1 + 16))
        {
          v12 = *(v1 + 40);
          sub_22F80(&qword_3B488);
          v13 = sub_23C20();
          v14 = -1 << *(v1 + 32);
          v15 = v13 & ~v14;
          if ((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            v16 = ~v14;
            sub_22F80(&qword_3B438);
            while (1)
            {
              v23 = *(*(v1 + 48) + 8 * v15);
              if (sub_23C50())
              {
                break;
              }

              v15 = (v15 + 1) & v16;
              if (((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            v6 = v19;
            v4 = v20;
            continue;
          }

LABEL_4:
          v6 = v19;
          v4 = v20;
        }

        sub_23FB0();
        v8 = _swiftEmptyArrayStorage[2];
        sub_23FD0();
        sub_23FE0();
        v3 = sub_23FC0();
      }

      while (v5 != v4);
    }
  }

  swift_getKeyPath();
  sub_7F84(&qword_3B4A0, &qword_27A08);
  sub_1B278(&qword_3B4A8, &qword_3B4A0, &qword_27A08);
  sub_22F80(&qword_3B488);
  return sub_23B00();
}

uint64_t sub_2192C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23830();
  sub_10C9C();
  result = sub_23A50();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21988()
{
  v0 = REMSettingsBundleGet();
  v8._countAndFlagsBits = 0x800000000002CA20;
  v9._countAndFlagsBits = 0xD000000000000036;
  v9._object = 0x800000000002C9E0;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v1.super.isa = v0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_235A0(v9, v10, v1, v11, v8);

  sub_10C9C();
  v2 = sub_23A50();
  v4 = v3;
  v6 = v5 & 1;
  sub_23AA0();
  sub_22F64(v2, v4, v6);
}

uint64_t sub_21A9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_7F84(&qword_3AC38, &qword_27250);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = *a2;
  v14 = sub_23DA0();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_23D80();

  v15 = a5;

  v16 = sub_23D70();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v15;
  v17[7] = v13;
  sub_1B5BC(0, 0, v12, &unk_27988, v17);
}

uint64_t sub_21C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_23D80();
  v7[3] = sub_23D70();
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_21CBC;

  return sub_2293C(a7, a6);
}

uint64_t sub_21CBC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23D50();

  return _swift_task_switch(sub_21DF8, v5, v4);
}

uint64_t sub_21DF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21E88(uint64_t a1)
{
  v2 = sub_7F84(&qword_3B440, &qword_279A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_22EDC(a1, &v6 - v4);
  return sub_239E0();
}

void destroy for TTRIGroceryLanguagePickerList(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];
}

void *sub_21F60(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;

  v5 = v4;
  return a1;
}

uint64_t *assignWithCopy for TTRIGroceryLanguagePickerList(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a2[2];
  v7 = a1[2];
  a1[2] = v6;
  v8 = v6;

  return a1;
}

__n128 initializeWithTake for TTRIGroceryLanguagePickerList(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for TTRIGroceryLanguagePickerList(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIGroceryLanguagePickerList(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRIGroceryLanguagePickerList(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2216C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_221C0()
{
  result = qword_3B400;
  if (!qword_3B400)
  {
    sub_8EE4(&qword_3B3D0, &qword_27910);
    sub_22278();
    sub_1B278(&qword_3B430, &qword_3B3F0, &qword_27958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B400);
  }

  return result;
}

unint64_t sub_22278()
{
  result = qword_3B408;
  if (!qword_3B408)
  {
    sub_8EE4(&qword_3B3E8, &qword_27920);
    sub_1B278(&qword_3B410, &qword_3B418, &qword_27968);
    sub_1B278(&qword_3B420, &qword_3B428, &unk_27970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B408);
  }

  return result;
}

uint64_t sub_2235C(uint64_t a1)
{
  v2 = sub_7F84(&qword_3B3D0, &qword_27910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2241C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_EBD0;

  return sub_21C00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_224F0()
{
  v0 = sub_23680();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() daemonUserDefaults];
  v6 = [v5 preferredLocalizations];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = sub_23D10();

  if (!v7[2])
  {

LABEL_5:
    sub_23670();
    sub_23640();
    (*(v1 + 8))(v4, v0);
    goto LABEL_6;
  }

  v8 = v7[4];
  v9 = v7[5];

LABEL_6:
  sub_23890();
  sub_23880();

  sub_23870();
  v10 = sub_23820();

  return v10;
}

unint64_t sub_226D0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_24000();
    if (result)
    {
LABEL_3:
      sub_7F84(&qword_3B4B0, &unk_27A10);
      result = sub_23F70();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_24000();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_23F90();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_23870();
    sub_22F80(&qword_3B488);
    result = sub_23C20();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_22F80(&qword_3B438);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_23C50();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2293C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_23D80();
  v2[8] = sub_23D70();
  v4 = sub_23D50();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_229D4, v4, v3);
}

uint64_t sub_229D4()
{
  v1 = v0[6];
  sub_23860();
  if (v2)
  {
    sub_7F84(&qword_3AD38, &qword_27350);
    v3 = *(sub_23680() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_27850;
    sub_23630();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v0[11] = v6;
  v0[12] = [objc_allocWithZone(REMStore) init];
  v7 = async function pointer to REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:)[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_22B54;

  return REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:)(v6);
}

uint64_t sub_22B54()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_22CF8;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_22C88;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_22C88()
{
  v1 = v0[8];

  v2 = v0[12];
  v3 = v0[6];
  v4 = v0[7];
  sub_1D13C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_22CF8()
{
  v23 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_3A938 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v4 = sub_238C0();
  sub_E648(v4, qword_3B388);
  swift_errorRetain();
  v5 = sub_238B0();
  v6 = sub_23E20();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_24080();
    v16 = sub_1E7CC(v14, v15, &v22);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "TTRIGroceryLanguagePickerList.setSecondaryGroceryLanguage: %s", v9, 0xCu);
    sub_80D4(v10);
  }

  else
  {
  }

  v17 = v0[12];
  v18 = v0[6];
  v19 = v0[7];
  sub_1D13C();

  v20 = v0[1];

  return v20();
}

uint64_t sub_22EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3B440, &qword_279A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_22F74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21558();
}

uint64_t sub_22F80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23870();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FC4()
{
  result = qword_3B490;
  if (!qword_3B490)
  {
    sub_8EE4(&qword_3B480, &qword_279D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B490);
  }

  return result;
}

uint64_t sub_23040()
{
  sub_8EE4(&qword_3B3D0, &qword_27910);
  sub_23870();
  sub_221C0();
  sub_22F80(&qword_3B438);
  return swift_getOpaqueTypeConformance2();
}

id sub_23168(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_23C80();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

void sub_233C8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error upon attempt to retrieve time zone city name. {error: %{public}@}", &v2, 0xCu);
}

void sub_23440(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error upon attempt to clear grocery local corrections. {error: %{public}@}", &v2, 0xCu);
}

void sub_234B8(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to fetch Accounts in REMSettingsController: %@", &v4, 0xCu);
}