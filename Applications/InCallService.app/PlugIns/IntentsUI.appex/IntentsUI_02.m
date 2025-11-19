id sub_10005A380(void *a1)
{
  v1 = a1;
  sub_1000595A4();

  v2 = sub_10007B448();

  return v2;
}

unint64_t sub_10005A3F0()
{
  result = sub_10005A738();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005A468(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_10005A580(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_10005A738()
{
  result = qword_1000C5988;
  if (!qword_1000C5988)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000C5988);
  }

  return result;
}

uint64_t sub_10005A788(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10005A798(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100030744(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005A800()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A8C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100030744(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005A92C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005A9AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005AA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for FTMessageSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMessageSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10005ABEC()
{
  result = qword_1000C5A48;
  if (!qword_1000C5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5A48);
  }

  return result;
}

unint64_t sub_10005AC54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005C7CC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int sub_10005ACA0()
{
  v1 = *v0;
  sub_10007BBD8();
  sub_10007BBE8(v1);
  return sub_10007BBF8();
}

Swift::Int sub_10005AD18()
{
  v1 = *v0;
  sub_10007BBD8();
  sub_10007BBE8(v1);
  return sub_10007BBF8();
}

uint64_t *sub_10005AD5C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Int sub_10005AD84()
{
  v1 = v0;
  v2 = sub_10007AE28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v7, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007BBD8();
  sub_100042D2C(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_10007BBE8(1uLL);
    sub_10005BD9C(&qword_1000C5B50, &type metadata accessor for UUID);
    sub_10007B428();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    sub_10007BBE8(0);
    sub_10007BBE8(v11);
  }

  return sub_10007BBF8();
}

void sub_10005AFC0()
{
  v1 = sub_10007AE28();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100042D2C(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v6, v9, v1);
    sub_10007BBE8(1uLL);
    sub_10005BD9C(&qword_1000C5B50, &type metadata accessor for UUID);
    sub_10007B428();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v10 = *v9;
    sub_10007BBE8(0);
    sub_10007BBE8(v10);
  }
}

Swift::Int sub_10005B17C()
{
  v1 = v0;
  v2 = sub_10007AE28();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007BBD8();
  sub_100042D2C(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v10, v2);
    sub_10007BBE8(1uLL);
    sub_10005BD9C(&qword_1000C5B50, &type metadata accessor for UUID);
    sub_10007B428();
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v11 = *v10;
    sub_10007BBE8(0);
    sub_10007BBE8(v11);
  }

  return sub_10007BBF8();
}

uint64_t sub_10005B35C()
{
  v1 = sub_10007AE28();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v6, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100042D2C(v0 + OBJC_IVAR___MPMessageID_value, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    v10 = sub_10007ADC8();
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  else
  {
    v12[1] = *v9;
    return sub_10007BB28();
  }
}

id sub_10005B6D0(void *a1)
{
  v1 = a1;
  sub_10005B35C();

  v2 = sub_10007B448();

  return v2;
}

uint64_t sub_10005B950()
{
  result = type metadata accessor for MessageID.Value(319);
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

uint64_t sub_10005BA4C(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C7DC(a1, v12);
  if (!v13)
  {
    sub_1000316B8(v12, &qword_1000C5B58);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v7 = v11;
  sub_100042D2C(v11 + OBJC_IVAR___MPMessageID_value, v6);
  v8 = sub_10005BE54(v6, v1 + OBJC_IVAR___MPMessageID_value);

  sub_100042D90(v6);
  return v8 & 1;
}

uint64_t sub_10005BC38()
{
  result = sub_10007AE28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10005BCB8()
{
  result = qword_1000C5B30;
  if (!qword_1000C5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5B30);
  }

  return result;
}

uint64_t sub_10005BD9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005BE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageID.Value(0);
  v11 = __chkstk_darwin(v9, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = (&v26 - v15);
  v17 = sub_100030744(&qword_1000C5B48);
  v19 = __chkstk_darwin(v17 - 8, v18);
  v21 = &v26 - v20;
  v22 = *(v19 + 56);
  sub_100042D2C(a1, &v26 - v20);
  sub_100042D2C(a2, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100042D2C(v21, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *v16 == *&v21[v22];
      goto LABEL_6;
    }

LABEL_8:
    sub_1000316B8(v21, &qword_1000C5B48);
    v23 = 0;
    return v23 & 1;
  }

  sub_100042D2C(v21, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v21[v22], v4);
  v23 = sub_10007ADF8();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v13, v4);
LABEL_6:
  sub_100042D90(v21);
  return v23 & 1;
}

uint64_t sub_10005C0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007AE28();
  v48 = *(v4 - 8);
  v49 = v4;
  v6 = __chkstk_darwin(v4, v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v47 = &v45 - v9;
  v10 = type metadata accessor for MessageID.Value(0);
  v12 = __chkstk_darwin(v10, v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v45 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v45 - v21;
  __chkstk_darwin(v20, v23);
  v25 = (&v45 - v24);
  v26 = sub_100030744(&qword_1000C5B48);
  v28 = __chkstk_darwin(v26 - 8, v27);
  v30 = &v45 - v29;
  v31 = *(v28 + 56);
  sub_100042D2C(a1, &v45 - v29);
  v50 = a2;
  sub_100042D2C(a2, &v30[v31]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100042D2C(v30, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v47;
      v32 = v48;
      v34 = *(v48 + 32);
      v35 = v49;
      v34(v47, v22, v49);
      v36 = v46;
      v34(v46, &v30[v31], v35);
      if (sub_10007ADF8())
      {
        v37 = *(v32 + 8);
        v37(v36, v35);
        v37(v33, v35);
LABEL_7:
        sub_100042D90(v30);
        v40 = 0;
        return v40 & 1;
      }

      v40 = sub_10007ADE8();
      v43 = *(v32 + 8);
      v43(v36, v35);
      v43(v33, v35);
LABEL_18:
      sub_100042D90(v30);
      return v40 & 1;
    }

    (*(v48 + 8))(v22, v49);
  }

  else
  {
    sub_100042D2C(v30, v25);
    v38 = *v25;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = *&v30[v31];
      if (v38 == v39)
      {
        goto LABEL_7;
      }

      v40 = v38 < v39;
      goto LABEL_18;
    }
  }

  sub_100042D2C(a1, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100042D90(v18);
    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

  sub_100042D2C(v50, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100042D90(v14);
    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  v40 = v41 < v42;
  sub_1000316B8(v30, &qword_1000C5B48);
  return v40 & 1;
}

uint64_t sub_10005C4E0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_10007AE28();
  v31 = *(v3 - 8);
  v5 = __chkstk_darwin(v3, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for MessageID.Value(0);
  v13 = __chkstk_darwin(v11, v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v16);
  v18 = &v31 - v17;
  v19 = sub_100030744(&qword_1000C5B48);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v23 = &v31 - v22;
  v24 = OBJC_IVAR___MPMessageID_value;
  v25 = *(v21 + 56);
  sub_100042D2C(a1 + OBJC_IVAR___MPMessageID_value, &v31 - v22);
  sub_100042D2C(v32 + v24, &v23[v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100042D2C(v23, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v31;
      v27 = *(v31 + 32);
      v27(v10, v18, v3);
      v27(v7, &v23[v25], v3);
      v28 = sub_10007ADE8();
      v29 = *(v26 + 8);
      v29(v7, v3);
      v29(v10, v3);
    }

    else
    {
      (*(v31 + 8))(v18, v3);
      sub_100042D90(&v23[v25]);
      v28 = 1;
    }
  }

  else
  {
    sub_100042D2C(v23, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100042D90(&v23[v25]);
      v28 = 0;
    }

    else
    {
      v28 = *v15 < *&v23[v25];
    }
  }

  sub_100042D90(v23);
  return v28 & 1;
}

unint64_t sub_10005C7CC(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10005C7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030744(&qword_1000C5B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C860()
{
  result = qword_1000C5B60;
  if (!qword_1000C5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5B60);
  }

  return result;
}

uint64_t sub_10005CB34()
{
  v0 = sub_10007AE28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE18();
  v5 = type metadata accessor for LegacyVoicemail();
  v6 = objc_allocWithZone(v5);
  (*(v1 + 16))(&v6[OBJC_IVAR___MPLegacyVoicemail_accountID], v4, v0);
  v7 = &v6[OBJC_IVAR___MPLegacyVoicemail_label];
  *v7 = 0x7972616D697250;
  v7[1] = 0xE700000000000000;
  v6[OBJC_IVAR___MPLegacyVoicemail_hasUnreadMessages] = 1;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = (*(v1 + 8))(v4, v0);
  qword_1000C7630 = v8;
  return result;
}

uint64_t type metadata accessor for LegacyVoicemail()
{
  result = qword_1000C5B90;
  if (!qword_1000C5B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005CDF0()
{
  result = sub_10007AE28();
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

id sub_10005CEB0()
{
  sub_100030744(&unk_1000C59F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000A2540;
  if (qword_1000C4E08 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C7658;
  *(v0 + 32) = qword_1000C7658;
  v2 = qword_1000C4E10;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1000C7660;
  *(v0 + 40) = qword_1000C7660;
  v5 = qword_1000C4E18;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1000C7668;
  *(v0 + 48) = qword_1000C7668;
  v8 = qword_1000C4E20;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1000C7670;
  *(v0 + 56) = qword_1000C7670;
  v11 = qword_1000C4E28;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1000C7678;
  *(v0 + 64) = qword_1000C7678;
  v14 = qword_1000C4E30;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1000C7680;
  *(v0 + 72) = qword_1000C7680;
  v17 = qword_1000C4E38;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1000C7688;
  *(v0 + 80) = qword_1000C7688;
  v20 = qword_1000C4E40;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1000C7690;
  *(v0 + 88) = qword_1000C7690;
  v23 = qword_1000C4E48;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1000C7698;
  *(v0 + 96) = qword_1000C7698;
  qword_1000C7650 = v0;

  return v25;
}

id sub_10005D3B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *a3 = result;
  return result;
}

BOOL sub_10005D438(uint64_t a1)
{
  swift_getObjectType();
  sub_10005C7DC(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      v4 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    sub_10005EDC8(v7);
  }

  return 0;
}

id sub_10005D5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, "init");
  *a2 = result;
  return result;
}

uint64_t sub_10005D60C@<X0>(void *a1@<X8>)
{
  if (qword_1000C4E00 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1000C7650;
}

id sub_10005D67C@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  *a1 = result;
  return result;
}

void sub_10005D6F4(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_10005D7B8(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *(v6 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_10005D878(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

BOOL sub_10005D93C(char **a1, char **a2)
{
  v2 = *a2;
  v3 = sub_10005D970(a1, *a2);

  return v3;
}

BOOL sub_10005D970(char **a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v7 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v8 = type metadata accessor for VoicemailAccountManagerUpdate();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, "init");
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&a2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = sub_10007B768();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, "init");

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id sub_10005DA9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10005DAC8(*a1);
  *a2 = result;
  return result;
}

id sub_10005DAC8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v6 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v7 = type metadata accessor for VoicemailAccountManagerUpdate();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, "init");
  v10 = *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v11 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, "init");
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, "init");
  v16 = sub_10007B768();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, "init");
    v20 = *&v19[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, "init");
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, "init");

    *v2 = v26;
  }

  return v13;
}

void sub_10005DC6C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_10005DCAC(*a1);

  *a2 = v4;
}

id sub_10005DCAC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, "init");
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, "init");
  LOBYTE(v6) = sub_10007B768();

  if (v6)
  {

    return 0;
  }

  return v12;
}

void sub_10005DDE4(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

id sub_10005DE70(uint64_t *a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  result = objc_msgSendSuper2(&v9, "init");
  *v2 = result;
  return result;
}

void sub_10005DEF4(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

void sub_10005DF80(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v9 = *(*v3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v10 = objc_allocWithZone(a1);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v26.receiver = v10;
  v26.super_class = a1;
  v11 = [(objc_class *)&v26 init];
  v12 = *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v13 = *(v6 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v12;
  v14 = objc_allocWithZone(a1);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v13;
  v25.receiver = v14;
  v25.super_class = a1;
  v15 = [(objc_class *)&v25 init];
  v16 = *&v7[v8];
  v17 = objc_allocWithZone(a1);
  *&v17[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v16;
  v24.receiver = v17;
  v24.super_class = a1;
  v18 = [(objc_class *)&v24 init];
  v19 = *&v18[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v20 = *(v15 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v19;
  v21 = objc_allocWithZone(a1);
  *&v21[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v20;
  v23.receiver = v21;
  v23.super_class = a1;
  v22 = [(objc_class *)&v23 init];

  *a3 = v22;
}

uint64_t sub_10005E0A4(uint64_t *a1, Class a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  LOBYTE(v3) = sub_10007B768();

  return v3 & 1;
}

uint64_t sub_10005E194(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v16.receiver = v10;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = objc_allocWithZone(ObjectType);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v15.receiver = v12;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  LOBYTE(ObjectType) = sub_10007B768();

  return ObjectType & 1;
}

uint64_t sub_10005E284(void *a1, Class a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = *(*a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  LOBYTE(v3) = sub_10007B768();

  return v3 & 1;
}

uint64_t sub_10005E348(objc_class *a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(a1);
  *&v2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = [(objc_class *)&v5 init];
  LOBYTE(v1) = sub_10007B768();

  return v1 & 1;
}

void sub_10005E3DC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v8 = objc_msgSendSuper2(&v19, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v9;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
  v18.receiver = v11;
  v18.super_class = v6;
  v12 = objc_msgSendSuper2(&v18, "init");
  v13 = *&v3[v4];

  v14 = *(v12 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v14;
  v17.receiver = v15;
  v17.super_class = v6;
  v16 = objc_msgSendSuper2(&v17, "init");

  *v1 = v16;
}

uint64_t sub_10005E4E8@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_10005EB6C(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10005E5FC()
{
  result = qword_1000C5BE0;
  if (!qword_1000C5BE0)
  {
    sub_100035550(&qword_1000C5BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5BE0);
  }

  return result;
}

uint64_t sub_10005E6C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccountManagerUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005E708()
{
  swift_getObjectType();
  if (qword_1000C4E08 != -1)
  {
    swift_once();
  }

  v0 = qword_1000C7658;
  v1 = sub_10007B768();

  if (v1)
  {
    return 0x7453656E696C6E6FLL;
  }

  if (qword_1000C4E10 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C7660;
  v4 = sub_10007B768();

  if (v4)
  {
    return 0x696C696261706163;
  }

  if (qword_1000C4E18 != -1)
  {
    swift_once();
  }

  v5 = qword_1000C7668;
  v6 = sub_10007B768();

  if (v6)
  {
    return 0xD000000000000012;
  }

  if (qword_1000C4E20 != -1)
  {
    swift_once();
  }

  v7 = qword_1000C7670;
  v8 = sub_10007B768();

  if (v8)
  {
    return 0x72506E49636E7973;
  }

  if (qword_1000C4E28 != -1)
  {
    swift_once();
  }

  v9 = qword_1000C7678;
  v10 = sub_10007B768();

  if (v10)
  {
    return 0xD000000000000013;
  }

  if (qword_1000C4E30 != -1)
  {
    swift_once();
  }

  v11 = qword_1000C7680;
  v12 = sub_10007B768();

  if (v12)
  {
    return 0xD000000000000012;
  }

  if (qword_1000C4E38 != -1)
  {
    swift_once();
  }

  v13 = qword_1000C7688;
  v14 = sub_10007B768();

  if (v14)
  {
    return 0x73746E756F636361;
  }

  if (qword_1000C4E40 != -1)
  {
    swift_once();
  }

  v15 = qword_1000C7690;
  v16 = sub_10007B768();

  if (v16)
  {
    return 0x676E697465657267;
  }

  if (qword_1000C4E48 != -1)
  {
    swift_once();
  }

  v17 = qword_1000C7698;
  v18 = sub_10007B768();

  if (v18)
  {
    return 0x69616D6563696F56;
  }

  sub_10005ED74();
  return sub_10007B4F8();
}

char *sub_10005EB6C(unint64_t a1)
{
  v2 = type metadata accessor for VoicemailAccountManagerUpdate();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, "init");
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007BA18())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10007B898();
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v10 = *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, "init");
      v13 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      v14 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v15 = *(v7 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, "init");
      v18 = sub_10007B768();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, "init");

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

unint64_t sub_10005ED74()
{
  result = qword_1000C5C00;
  if (!qword_1000C5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5C00);
  }

  return result;
}

uint64_t sub_10005EDC8(uint64_t a1)
{
  v2 = sub_100030744(&qword_1000C5B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10005EE30(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007BA18())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10007B898();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10005EF30(uint64_t a1)
{
  v2 = sub_10007B308();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = v26 - v10;
  __chkstk_darwin(v9, v12);
  v14 = v26 - v13;
  sub_100065D84(&qword_1000C5C48, &type metadata accessor for Handle);
  result = sub_10007B698();
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v14, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v14, v2);
      sub_100062DE0(v11, v7);
      result = (*(v3 + 8))(v11, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005F190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = sub_100030744(&qword_1000C5C38);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v7 = sub_10007B2E8();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = sub_10007B308();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_10005F304, 0, 0);
}

uint64_t sub_10005F304()
{

  v2 = sub_1000651C8(v1);

  v3 = sub_100064E80(_swiftEmptyArrayStorage);
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10007B7E8();
    sub_100055038(0, &qword_1000C5C28);
    sub_100065A40();
    v4 = sub_10007B6A8();
    v2 = v0[2];
    v5 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v9;
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

    v6 = 0;
  }

  v12 = v0[17];
  v36 = v7;
  v13 = (v7 + 64) >> 6;
  v38 = enum case for Handle.Kind.phoneNumber(_:);
  v43 = (v12 + 104);
  v42 = enum case for Handle.Kind.generic(_:);
  v37 = enum case for Handle.Kind.emailAddress(_:);
  v40 = (v12 + 8);
  v41 = (v12 + 16);
  v39 = (v0[21] + 8);
  v45 = v2;
  v46 = v5;
  v44 = v13;
  v0[23] = v3;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v6;
    v15 = v8;
    v16 = v6;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_28:
      sub_100065D60();

      sub_10007AFA8();
      v0[24] = sub_10007AF98();

      v33 = sub_10005EF30(v32);
      v0[25] = v33;
      v34 = swift_task_alloc();
      v0[26] = v34;
      *v34 = v0;
      v34[1] = sub_10005F7D8;
      v4 = v33;

      return BlockList.areHandlesBlocked(_:)(v4);
    }

    while (1)
    {
      v47 = v3;
      v20 = [v18 type];
      v21 = v42;
      if (v20 >= 2)
      {
        v21 = v38;
        if (v20 != 2)
        {
          v21 = v37;
          if (v20 != 3)
          {
            v21 = v38;
          }
        }
      }

      v22 = v0[18];
      v23 = v0[19];
      v24 = v0[16];
      (*v43)(v23, v21, v24);
      (*v41)(v22, v23, v24);
      v25 = [v18 value];
      sub_10007B478();

      sub_10007B2F8();
      (*v40)(v23, v24);
      if (*(v47 + 16) && (v26 = sub_100060568(v0[22]), (v27 & 1) != 0))
      {
        v48 = *(*(v47 + 56) + 8 * v26);
      }

      else
      {
        v48 = _swiftEmptyArrayStorage;
      }

      v13 = v44;
      v28 = v18;
      sub_10007B508();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007B548();
      }

      v29 = v0[22];
      v30 = v0[20];
      sub_10007B568();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100061C00(v48, v29, isUniquelyReferenced_nonNull_native);

      v3 = v47;
      v4 = (*v39)(v29, v30);
      v6 = v16;
      v5 = v46;
      v8 = v17;
      v2 = v45;
      v0[23] = v47;
      if ((v45 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_10007B818();
      if (v19)
      {
        v0[9] = v19;
        sub_100055038(0, &qword_1000C5C28);
        swift_dynamicCast();
        v18 = v0[8];
        v16 = v6;
        v17 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return BlockList.areHandlesBlocked(_:)(v4);
}

uint64_t sub_10005F7D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {

    v4 = sub_10005FC20;
  }

  else
  {
    v4 = sub_10005F948;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005F948()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[21];
  v26 = v0[13];
  v0[7] = sub_100064D88(_swiftEmptyArrayStorage);
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v27 = v3;

  v10 = 0;
  v23 = v1;
  while (v7)
  {
LABEL_11:
    v13 = v0[14];
    v12 = v0[15];
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    (*(v27 + 16))(v12, *(v1 + 48) + *(v27 + 72) * v14, v0[20]);
    *(v12 + *(v26 + 48)) = *(*(v1 + 56) + v14);
    sub_10005A798(v12, v13, &qword_1000C5C38);
    if (*(v2 + 16) && (v15 = sub_100060568(v0[14]), (v16 & 1) != 0))
    {
      v17 = v0[14];
      v24 = v0[20];
      v25 = v0[15];
      v18 = *(*(v2 + 56) + 8 * v15);
      v19 = *(v0[21] + 8);

      v19(v17, v24);
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 7;
      *(v20 + 24) = v25;
      sub_10005EE30(sub_100065D68, v20, v18);
      v1 = v23;
    }

    else
    {
      (*(v0[21] + 8))(v0[14], v0[20]);
    }

    v7 &= v7 - 1;
    result = sub_1000316B8(v0[15], &qword_1000C5C38);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  v21 = v0[11];

  v21(v0[7]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10005FC20()
{
  if (qword_1000C4E58 != -1)
  {
    swift_once();
  }

  v1 = sub_10007B338();
  sub_1000345E8(v1, qword_1000C5C08);
  swift_errorRetain();
  v2 = sub_10007B318();
  v3 = sub_10007B6C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch blocked status: %@", v4, 0xCu);
    sub_1000316B8(v5, &qword_1000C5378);
  }

  v7 = *(v0 + 88);

  sub_100064D88(_swiftEmptyArrayStorage);
  v7();

  v8 = *(v0 + 8);

  return v8();
}

void sub_10005FE0C(void **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(NSNumber) initWithBool:*(a3 + *(sub_100030744(&qword_1000C5C38) + 48))];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    if ((*a2 & 0xC000000000000001) == 0)
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      sub_100061DCC(v6, v4, isUniquelyReferenced_nonNull_native);
      *a2 = v11;
      return;
    }

    if (v7 < 0)
    {
      v8 = *a2;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_10007B9C8();
    if (!__OFADD__(v9, 1))
    {
      *a2 = sub_10006086C(v8, v9 + 1);
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_10005FF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_10005A798(a3, v26 - v11, &qword_1000C5110);
  v13 = sub_10007B608();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000316B8(v12, &qword_1000C5110);
  }

  else
  {
    sub_10007B5F8();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10007B578();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10007B4A8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_100060264(uint64_t a1, uint64_t a2)
{
  sub_100055038(0, &qword_1000C5C28);
  sub_100055038(0, &qword_1000C5638);
  sub_100065A40();
  isa = sub_10007B408().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100060314()
{
  v0 = sub_10007B338();
  sub_10003C2DC(v0, qword_1000C5C08);
  sub_1000345E8(v0, qword_1000C5C08);
  return sub_10007B328();
}

unint64_t sub_100060394(uint64_t a1)
{
  sub_10007AE68();
  sub_100065D84(&qword_1000C5C90, &type metadata accessor for TPTipsHelper.Entry.Kind);
  v2 = sub_10007B418();
  return sub_10006224C(a1, v2, &type metadata accessor for TPTipsHelper.Entry.Kind, qword_1000C5C98, &type metadata accessor for TPTipsHelper.Entry.Kind, &protocol conformance descriptor for TPTipsHelper.Entry.Kind);
}

unint64_t sub_100060468(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007B758(*(v2 + 40));

  return sub_100061FFC(a1, v4);
}

unint64_t sub_1000604AC(uint64_t a1, uint64_t a2)
{
  sub_10007BBD8();
  sub_10007B4B8();
  v4 = sub_10007BBF8();

  return sub_1000620C0(a1, a2, v4);
}

unint64_t sub_100060524(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007B758(*(v2 + 40));

  return sub_100062178(a1, v4);
}

unint64_t sub_100060568(uint64_t a1)
{
  sub_10007B308();
  sub_100065D84(&qword_1000C5C48, &type metadata accessor for Handle);
  v2 = sub_10007B418();
  return sub_10006224C(a1, v2, &type metadata accessor for Handle, &qword_1000C5C58, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
}

double sub_10006063C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100060394(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000623EC();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_10007AE68();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1000355E0((*(v9 + 56) + 40 * v7), a2);
    sub_100061750(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100060720(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_100060524(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100061A74(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100062A58();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_10007B9D8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_10007B9C8();
  v8 = sub_10006086C(v4, v7);

  v9 = sub_100060524(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100061A74(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_10006086C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100030744(&qword_1000C5C50);
    v2 = sub_10007BA48();
    v19 = v2;
    sub_10007B9B8();
    v3 = sub_10007B9E8();
    if (v3)
    {
      v4 = v3;
      sub_100055038(0, &qword_1000C5C28);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100055038(0, &qword_1000C5638);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000614E8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_10007B758(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10007B9E8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100060AB8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10007AE68();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100030744(&qword_1000C5C88);
  v38 = a2;
  result = sub_10007BA38();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_1000355E0((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_1000354A0(*(v9 + 56) + 40 * v23, v43);
      }

      sub_100065D84(&qword_1000C5C90, &type metadata accessor for TPTipsHelper.Entry.Kind);
      result = sub_10007B418();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_1000355E0(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100060E9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100030744(&qword_1000C5C80);
  result = sub_10007BA38();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_10007B758(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10006110C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10007B308();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100030744(&qword_1000C5C40);
  v40 = a2;
  result = sub_10007BA38();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_100065D84(&qword_1000C5C48, &type metadata accessor for Handle);
      result = sub_10007B418();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1000614E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100030744(&qword_1000C5C50);
  result = sub_10007BA38();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_10007B758(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_100061750(int64_t a1, uint64_t a2)
{
  v43 = sub_10007AE68();
  v4 = *(v43 - 8);
  result = __chkstk_darwin(v43, v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_10007B7C8();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = (v13 + 1) & v12;
    v41 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v41(v42, *(v7 + 48) + v18 * v11, v14);
      sub_100065D84(&qword_1000C5C90, &type metadata accessor for TPTipsHelper.Entry.Kind);
      v24 = sub_10007B418();
      result = (*v38)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v7 = v44;
          v28 = *(v44 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = v29 + 40 * a1;
          v31 = (v29 + 40 * v11);
          if (a1 != v11 || v30 >= v31 + 40)
          {
            v32 = *v31;
            v33 = v31[1];
            *(v30 + 32) = *(v31 + 4);
            *v30 = v32;
            *(v30 + 16) = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void sub_100061A74(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007B7C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10007B758(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100061C00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10007B308();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100060568(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000627D8();
      goto LABEL_7;
    }

    sub_10006110C(v18, a3 & 1);
    v23 = sub_100060568(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100061F44(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_10007BB68();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

id sub_100061DCC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100060524(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000614E8(v13, a3 & 1);
      v8 = sub_100060524(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100055038(0, &qword_1000C5C28);
        sub_10007BB68();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100062A58();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_100061F44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10007B308();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100061FFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MessageID(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10007B768();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000620C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10007BB38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100062178(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100055038(0, &qword_1000C5C28);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10007B768();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10006224C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100065D84(v23, v24);
      v19 = sub_10007B438();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void *sub_1000623EC()
{
  v1 = v0;
  v29 = sub_10007AE68();
  v31 = *(v29 - 8);
  __chkstk_darwin();
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030744(&qword_1000C5C88);
  v3 = *v0;
  v4 = sub_10007BA28();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_1000354A0(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_1000355E0(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_100062674()
{
  v1 = v0;
  sub_100030744(&qword_1000C5C80);
  v2 = *v0;
  v3 = sub_10007BA28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1000627D8()
{
  v1 = v0;
  v34 = sub_10007B308();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030744(&qword_1000C5C40);
  v4 = *v0;
  v5 = sub_10007BA28();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_100062A58()
{
  v1 = v0;
  sub_100030744(&qword_1000C5C50);
  v2 = *v0;
  v3 = sub_10007BA28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100062BB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10007B808();

    if (v9)
    {

      type metadata accessor for MessageID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10007B7F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100063308(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100063A74(v20 + 1, &qword_1000C52F0);
    }

    v18 = v8;
    sub_100063C94(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MessageID(0);
  v11 = sub_10007B758(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100063D18(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10007B768();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100062DE0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10007B308();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_100065D84(&qword_1000C5C48, &type metadata accessor for Handle);
  v34 = a2;
  v12 = sub_10007B418();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_100065D84(&qword_1000C5C58, &type metadata accessor for Handle);
      v22 = sub_10007B438();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_100063EA8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1000630C0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10007B808();

    if (v9)
    {

      sub_100055038(0, &qword_1000C5C28);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10007B7F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100063508(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100063A74(v20 + 1, &qword_1000C5C70);
    }

    v18 = v8;
    sub_100063C94(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100055038(0, &qword_1000C5C28);
  v11 = sub_10007B758(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10006414C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10007B768();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100063308(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100030744(&qword_1000C52F0);
    v2 = sub_10007B858();
    v15 = v2;
    sub_10007B7E8();
    if (sub_10007B818())
    {
      type metadata accessor for MessageID(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100063A74(v9 + 1, &qword_1000C52F0);
        }

        v2 = v15;
        result = sub_10007B758(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10007B818());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100063508(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100030744(&qword_1000C5C70);
    v2 = sub_10007B858();
    v15 = v2;
    sub_10007B7E8();
    if (sub_10007B818())
    {
      sub_100055038(0, &qword_1000C5C28);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100063A74(v9 + 1, &qword_1000C5C70);
        }

        v2 = v15;
        result = sub_10007B758(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10007B818());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100063718()
{
  v1 = v0;
  v36 = sub_10007B308();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100030744(&qword_1000C5C60);
  result = sub_10007B848();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100065D84(&qword_1000C5C48, &type metadata accessor for Handle);
      result = sub_10007B418();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_100063A74(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100030744(a2);
  result = sub_10007B848();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_10007B758(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_100063C94(uint64_t a1, void *a2)
{
  sub_10007B758(a2[5]);
  result = sub_10007B7D8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100063D18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100063A74(v6 + 1, &qword_1000C52F0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100064524(&qword_1000C52F0);
      goto LABEL_12;
    }

    sub_100064980(v6 + 1, &qword_1000C52F0);
  }

  v8 = *v3;
  v9 = sub_10007B758(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MessageID(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10007B768();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10007BB58();
  __break(1u);
}

uint64_t sub_100063EA8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10007B308();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100063718();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000642EC();
      goto LABEL_12;
    }

    sub_100064664();
  }

  v13 = *v3;
  sub_100065D84(&qword_1000C5C48, &type metadata accessor for Handle);
  v14 = sub_10007B418();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100065D84(&qword_1000C5C58, &type metadata accessor for Handle);
      v22 = sub_10007B438();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10007BB58();
  __break(1u);
  return result;
}

void sub_10006414C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100063A74(v6 + 1, &qword_1000C5C70);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100064524(&qword_1000C5C70);
      goto LABEL_12;
    }

    sub_100064980(v6 + 1, &qword_1000C5C70);
  }

  v8 = *v3;
  v9 = sub_10007B758(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100055038(0, &qword_1000C5C28);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10007B768();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10007BB58();
  __break(1u);
}

void *sub_1000642EC()
{
  v1 = v0;
  v2 = sub_10007B308();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030744(&qword_1000C5C60);
  v7 = *v0;
  v8 = sub_10007B838();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id sub_100064524(uint64_t *a1)
{
  v2 = v1;
  sub_100030744(a1);
  v3 = *v1;
  v4 = sub_10007B838();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_100064664()
{
  v1 = v0;
  v33 = sub_10007B308();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_100030744(&qword_1000C5C60);
  v7 = sub_10007B848();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100065D84(&qword_1000C5C48, &type metadata accessor for Handle);
      result = sub_10007B418();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100064980(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100030744(a2);
  result = sub_10007B848();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_10007B758(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

unint64_t sub_100064B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030744(&qword_1000C5C80);
    v3 = sub_10007BA58();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100060468(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100064C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030744(&qword_1000C5C78);
    v3 = sub_10007BA58();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000604AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100064D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030744(&qword_1000C5C50);
    v3 = sub_10007BA58();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100060524(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100064E80(uint64_t a1)
{
  v2 = sub_100030744(&qword_1000C5C68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100030744(&qword_1000C5C40);
    v8 = sub_10007BA58();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10005A798(v10, v6, &qword_1000C5C68);
      result = sub_100060568(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10007B308();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_100065068(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for MessageID(0);
    sub_100065D84(&qword_1000C5628, type metadata accessor for MessageID);
    result = sub_10007B698();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10007B898();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100062BB8(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_10007BA18();
  }

  v5 = result;
  v4 = sub_10007BA18();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000651C8(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100055038(0, &qword_1000C5C28);
    sub_100065A40();
    result = sub_10007B698();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10007B898();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1000630C0(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_10007BA18();
  }

  v5 = result;
  v4 = sub_10007BA18();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_100065308(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10007BA18())
    {
LABEL_3:
      sub_100030744(&qword_1000C5C70);
      v3 = sub_10007B868();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10007BA18();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10007B898();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10007B758(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100055038(0, &qword_1000C5C28);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10007B768();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10007B758(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100055038(0, &qword_1000C5C28);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10007B768();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1000655F8(unint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v24 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = objc_allocWithZone(TUFeatureFlags);
  _Block_copy(a2);
  v10 = [v9 init];
  v11 = [v10 betterBlockingEnabled];

  if (v11)
  {
    v29 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007BA18())
    {
      v13 = _swiftEmptyArrayStorage;
      if (!i)
      {
        break;
      }

      v25 = v7;
      v26 = a2;
      v27 = v8;
      v14 = 0;
      a2 = (a1 & 0xC000000000000001);
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      isa = _swiftEmptyArrayStorage >> 62;
      while (1)
      {
        if (a2)
        {
          v17 = sub_10007B898();
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v17 = *(a1 + 8 * v14 + 32);
        }

        v16 = v17;
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v19 = [v17 remoteParticipantHandles];
        if (v19)
        {
          v15 = v19;
          sub_100055038(0, &qword_1000C5C28);
          sub_100065A40();
          v7 = sub_10007B678();

          v16 = v15;
        }

        else if (isa && sub_10007BA18())
        {
          sub_100065308(_swiftEmptyArrayStorage);
          v7 = v20;
        }

        else
        {
          v7 = &_swiftEmptySetSingleton;
        }

        sub_1000714A0(v7);
        ++v14;
        if (v18 == i)
        {
          v13 = v29;
          a2 = v26;
          v8 = v27;
          v7 = v25;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_19:
    if (v13 >> 62)
    {
      if (sub_10007BA18())
      {
        goto LABEL_21;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      v21 = sub_10007B608();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v13;
      v22[5] = sub_100065A38;
      v22[6] = v8;

      sub_10005FF00(0, 0, v7, &unk_1000A2740, v22);

      sub_1000316B8(v7, &qword_1000C5110);

      return;
    }
  }

  sub_100064D88(_swiftEmptyArrayStorage);
  sub_100055038(0, &qword_1000C5C28);
  sub_100055038(0, &qword_1000C5638);
  sub_100065A40();
  isa = sub_10007B408().super.isa;
  a2[2](a2, isa);

  v23 = isa;
}

uint64_t sub_100065A00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100065A40()
{
  result = qword_1000C5C30;
  if (!qword_1000C5C30)
  {
    sub_100055038(255, &qword_1000C5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5C30);
  }

  return result;
}

uint64_t sub_100065AA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100065AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003124C;

  return sub_10005F190(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100065BB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031874;

  return sub_100052764(a1, v4);
}

uint64_t sub_100065C70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100065CA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003124C;

  return sub_100052764(a1, v4);
}

uint64_t sub_100065D84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100065DD0()
{
  result = sub_10007AF68();
  if (v1 <= 0x3F)
  {
    result = sub_10007B338();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100065ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10005A798(a3, v23 - v10, &qword_1000C5110);
  v12 = sub_10007B608();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000316B8(v11, &qword_1000C5110);
  }

  else
  {
    sub_10007B5F8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10007B578();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10007B4A8() + 32;

      sub_100030744(&qword_1000C5698);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1000316B8(a3, &qword_1000C5110);

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

  sub_1000316B8(a3, &qword_1000C5110);
  sub_100030744(&qword_1000C5698);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100066190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10005A798(a3, v23 - v10, &qword_1000C5110);
  v12 = sub_10007B608();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000316B8(v11, &qword_1000C5110);
  }

  else
  {
    sub_10007B5F8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10007B578();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10007B4A8() + 32;

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

      sub_1000316B8(a3, &qword_1000C5110);

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

  sub_1000316B8(a3, &qword_1000C5110);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10006643C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10007B338();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4 + *((swift_isaMask & *v4) + 0xB0), v8);
  v13 = v4 + *((swift_isaMask & *v4) + 0x80);
  os_unfair_lock_lock(v13);
  sub_1000665BC(v13 + 1, v4, v12, a1, a2, a3);
  os_unfair_lock_unlock(v13);
  return (*(v9 + 8))(v12, v8);
}

void sub_1000665BC(void **a1, uint64_t *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a4;
  v10 = *a1;
  if (v10)
  {
    v11 = v10;
LABEL_5:
    swift_unknownObjectRetain_n();
    v8(v11);
    swift_unknownObjectRelease_n();
    return;
  }

  v11 = (*(a2 + *((swift_isaMask & *a2) + 0x78)))();
  *a1 = v11;
  v15 = a2 + *((swift_isaMask & *a2) + 0x90);
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v15);
  sub_10006670C(v15 + 1, v11, a2, a3, a6);
  if (!v7)
  {
    os_unfair_lock_unlock(v15);
    v8 = a4;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(v15);
  __break(1u);
}

_OWORD *sub_10006670C(char **a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a2;
  v25 = a1;
  v7 = *a3;
  v8 = swift_isaMask;
  v9 = sub_10007B338();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v13 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = *((v8 & v7) + 0x50);
  *(v14 + 3) = *((v8 & v7) + 0x58);
  *(v14 + 4) = v26;
  v15 = v8 & v7;
  v16 = v25;
  *(v14 + 5) = *(v15 + 96);
  *(v14 + 6) = a3;
  (*(v10 + 32))(&v14[v13], &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v31 = sub_10006C4D4;
  v32 = v14;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v29 = sub_100067DC8;
  ObjectType = &unk_1000B3D30;
  v17 = _Block_copy(&aBlock);
  v18 = a3;

  v19 = [v27 listenForChangesWithHandler:v17];
  ObjectType = swift_getObjectType();
  *&aBlock = v19;
  v20 = *v16;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1000784C4(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1000784C4((v21 > 1), v22 + 1, 1, v20);
  }

  swift_unknownObjectRelease();
  *(v20 + 2) = v22 + 1;
  result = sub_1000444B4(&aBlock, &v20[32 * v22 + 32]);
  *v16 = v20;
  return result;
}

uint64_t sub_1000669CC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v39 = a1;
  v35 = a2;
  v37 = *a3;
  v36 = swift_isaMask;
  v6 = sub_100030744(&qword_1000C4F48);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v32 - v8;
  v33 = &v32 - v8;
  v10 = sub_10007B338();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v14 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v32 - v17;
  v19 = sub_10007B608();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = a4;
  v22 = v10;
  (*(v11 + 16))(v14, v21, v10);
  sub_10005A798(v35, v9, &qword_1000C4F48);
  v23 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v34 + 80) + v24 + 8) & ~*(v34 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v28 = v36;
  v27 = v37;
  *(v26 + 4) = *((v36 & v37) + 0x50);
  *(v26 + 5) = *((v28 & v27) + 0x58);
  *(v26 + 6) = v38;
  *(v26 + 7) = *((v28 & v27) + 0x60);
  *(v26 + 8) = v20;
  (*(v11 + 32))(&v26[v23], v14, v22);
  v29 = v39;
  *&v26[v24] = v39;
  sub_10006C778(v33, &v26[v25]);
  v30 = v29;
  sub_100078AB0(0, 0, v18, &unk_1000A28D8, v26);
}

uint64_t sub_100066D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = sub_100030744(&qword_1000C4F48);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_100066DD4, 0, 0);
}

uint64_t sub_100066DD4()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = v0[7];
    sub_10005A798(v0[8], v0[11], &qword_1000C4F48);
    v3 = v2;
    v4 = sub_10007B318();
    v5 = sub_10007B6E8();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2080;
      sub_10005A798(v7, v8, &qword_1000C4F48);
      v13 = v9;
      v14 = sub_10007B488();
      v16 = v15;
      sub_1000316B8(v7, &qword_1000C4F48);
      v17 = sub_100052954(v14, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailAccountManager: processing %@ for UUID %s", v10, 0x16u);
      sub_1000316B8(v11, &qword_1000C5378);

      sub_100035504(v12);
    }

    else
    {

      sub_1000316B8(v7, &qword_1000C4F48);
    }

    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_1000670BC;
    v22 = v0[7];
    v21 = v0[8];

    return sub_100067228(v22, v21);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1000670BC()
{

  return _swift_task_switch(sub_1000671B8, 0, 0);
}

uint64_t sub_1000671B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067228(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_isaMask & *v2;
  v4 = sub_10007B588();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = *(sub_100030744(&qword_1000C4F48) - 8);
  v3[10] = v5;
  v3[11] = *(v5 + 64);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100067390, 0, 0);
}

uint64_t sub_100067390()
{
  v39 = v0;
  v1 = *(v0 + 24);
  *(v0 + 104) = *((swift_isaMask & **(v0 + 40)) + 0xB0);
  v2 = v1;
  v3 = sub_10007B318();
  v4 = sub_10007B6E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating voicemail account Cache with updates: %@", v6, 0xCu);
    sub_1000316B8(v7, &qword_1000C5378);
  }

  v36 = *(v0 + 96);
  v37 = *(v0 + 80);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);
  v35 = v12;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_task_alloc();
  v15 = v10[10];
  v14[2] = v15;
  v16 = v10[11];
  v14[3] = v16;
  v17 = v10[12];
  v14[4] = v17;
  v14[5] = v13;
  v14[6] = v12;
  sub_10006643C(sub_10006C998, v14, &type metadata for () + 8);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10005A798(v11, v36, &qword_1000C4F48);
  v19 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v35;
  sub_10006C778(v36, v20 + v19);
  v21 = v35;

  sub_10007AF08();

  v22 = v9 + *((swift_isaMask & *v9) + 0x98);
  os_unfair_lock_lock(v22);
  sub_10006B7E4(v22 + 1, v9, &v38);
  os_unfair_lock_unlock(v22);
  v23 = v38;
  *(v0 + 112) = v38;
  if (v23)
  {

    v24 = swift_task_alloc();
    *(v0 + 120) = v24;
    v25 = sub_100030744(&qword_1000C56A0);
    *(v0 + 128) = v25;
    *v24 = v0;
    v24[1] = sub_1000678C8;

    return Task.value.getter(v25, v23, &type metadata for () + 8, v25, &protocol self-conformance witness table for Error);
  }

  else
  {
    v26 = *(v0 + 24);
    v27 = sub_10007B318();
    v28 = sub_10007B6E8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 24);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v27, v28, "Finished Updating voicemail account Cache with updates: %@", v30, 0xCu);
      sub_1000316B8(v31, &qword_1000C5378);
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1000678C8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_100067B4C;
  }

  else
  {
    v2 = sub_1000679E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000679E4()
{

  v1 = *(v0 + 24);
  v2 = sub_10007B318();
  v3 = sub_10007B6E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished Updating voicemail account Cache with updates: %@", v5, 0xCu);
    sub_1000316B8(v6, &qword_1000C5378);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100067B4C()
{
  v0[2] = v0[17];
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v1 = sub_10007B318();
    v2 = sub_10007B6E8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling disk update because newer updates were received", v3, 2u);
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = sub_10007B318();
    v8 = sub_10007B6C8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update cache on Disk with: %@", v9, 0xCu);
      sub_1000316B8(v10, &qword_1000C5378);

      goto LABEL_9;
    }
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

uint64_t sub_100067DC8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100030744(&qword_1000C4F48);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a3)
  {
    sub_10007AE08();
    v11 = sub_10007AE28();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_10007AE28();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a2;
  v10();

  return sub_1000316B8(v9, &qword_1000C4F48);
}

uint64_t sub_100067F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10007B918();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10006801C, 0, 0);
}

uint64_t sub_10006801C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_10007B938();
  v5 = sub_10006CDFC(&qword_1000C5D58, &type metadata accessor for ContinuousClock);
  sub_10007BB78();
  sub_10006CDFC(&qword_1000C5D60, &type metadata accessor for ContinuousClock.Instant);
  sub_10007B948();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000681AC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000681AC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100068368, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100068368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000683D4@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v7 = swift_unknownObjectRetain();
    a2(v7);
    swift_unknownObjectRelease();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(*(a3 - 8) + 56);

  return v9(a4, v8, 1, a3);
}

uint64_t sub_100068480@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = swift_isaMask;
  v10 = *((swift_isaMask & *v4) + 0x50);
  v11 = *((swift_isaMask & *v4) + 0x58);
  v12 = *((swift_isaMask & *v4) + 0x60);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = a3;
  v13[5] = v12;
  v13[6] = a1;
  v13[7] = a2;
  v14 = (v4 + *((v9 & v8) + 0x70));

  os_unfair_lock_lock(v14);
  sub_1000683D4(&v14[2]._os_unfair_lock_opaque, a1, a3, a4);
  sub_10007B788();
  sub_10007B788();
  os_unfair_lock_unlock(v14);
}

uint64_t sub_1000685C4(void *a1)
{
  v1 = a1;
  v2 = sub_1000685F8();

  return v2 & 1;
}

uint64_t sub_1000685F8()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_10006D270;
  v6[6] = v5;
  sub_100068480(sub_10006D2F8, v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  sub_10006643C(sub_10006D330, 0, &type metadata for Bool);
  return v8;
}

id sub_10006877C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isAnyAccountSubscribed];
  *a2 = result;
  return result;
}

uint64_t sub_1000687AC(void *a1)
{
  v1 = a1;
  v2 = sub_1000687E0();

  return v2 & 1;
}

uint64_t sub_1000687E0()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_10006D304;
  v6[6] = v5;
  sub_100068480(sub_10006D2F8, v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  sub_10006643C(sub_100068948, 0, &type metadata for Bool);
  return v8;
}

id sub_100068948@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isOnline];
  *a2 = result;
  return result;
}

uint64_t sub_100068978(void *a1)
{
  v1 = a1;
  v2 = sub_1000689AC();

  return v2 & 1;
}

uint64_t sub_1000689AC()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_10006D304;
  v6[6] = v5;
  sub_100068480(sub_10006D2F8, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

id sub_100068B14(void *a1)
{
  v1 = a1;
  v2 = sub_100068B48();

  return v2;
}

id sub_100068B48()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_10006CE74;
  v6[6] = v5;
  sub_100068480(sub_10006D0EC, v6, &type metadata for UInt, &v8);

  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) storageUsage];
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100068CB4()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100068D04(void *a1)
{
  v1 = a1;
  v2 = sub_100068D38();

  return v2;
}

uint64_t sub_100068D38()
{
  v0 = sub_100068D94();
  if (v0 >> 62)
  {
    v1 = sub_10007BA18();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

unint64_t sub_100068D94()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_10006CE74;
  v6[6] = v5;
  v7 = sub_100030744(&qword_1000C5D70);
  sub_100068480(sub_10006CE80, v6, v7, &v11);

  result = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_4;
  }

  v9 = v11;
  v10 = sub_10007BA18();
  result = v9;
  if (!v10)
  {
LABEL_4:

LABEL_5:
    sub_10006643C(sub_10006D314, 0, v7);
    return v11;
  }

  return result;
}

Class sub_100068F54(void *a1)
{
  v1 = a1;
  sub_100068D94();

  type metadata accessor for VoicemailAccount();
  v2.super.isa = sub_10007B518().super.isa;

  return v2.super.isa;
}

void sub_100068FB8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = sub_10007B528();

  *a2 = v4;
}

void sub_100069020(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = sub_10007B528();

  *a2 = v4;
}

uint64_t sub_100069080(void *a1)
{
  v1 = a1;
  v2 = sub_1000690B4();

  return v2 & 1;
}

uint64_t sub_1000690B4()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_10006D304;
  v6[6] = v5;
  sub_100068480(sub_10006D06C, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

uint64_t sub_10006921C()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

id sub_10006926C(void *a1)
{
  v1 = a1;
  v2 = sub_1000692B0();

  return v2;
}

id sub_1000692B0()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_10006CE74;
  v6[6] = v5;
  v7 = sub_100030744(&qword_1000C5D78);
  sub_100068480(sub_10006CFF0, v6, v7, &v9);

  result = v9;
  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) transcriptionProgress];
  }

  return result;
}

void *sub_10006942C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007BA18())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10007B898();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_100069574(uint64_t a1, uint64_t (*a2)(id *), void *a3, void (*a4)(void *))
{
  v8 = sub_10007AE28();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100068D94();
  v30 = a1;
  v14 = sub_10006942C(a2, v29, v13);

  if (v14)
  {
    v15 = v14[*a3];
  }

  else
  {
    if (qword_1000C4E60 != -1)
    {
      swift_once();
    }

    v16 = sub_10007B338();
    sub_1000345E8(v16, qword_1000C76E8);
    (*(v9 + 16))(v12, a1, v8);
    v17 = sub_10007B318();
    v18 = sub_10007B6C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v19 = 136315138;
      sub_10006CDFC(&qword_1000C5D68, &type metadata accessor for UUID);
      v20 = sub_10007BB28();
      v28 = a4;
      v22 = v21;
      (*(v9 + 8))(v12, v8);
      v23 = sub_100052954(v20, v22, &v31);
      a4 = v28;

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "No Account found for %s in cache.", v19, 0xCu);
      sub_100035504(v27);
    }

    else
    {

      v24 = (*(v9 + 8))(v12, v8);
    }

    __chkstk_darwin(v24, v25);
    *(&v27 - 2) = a1;
    sub_10006643C(a4, (&v27 - 4), &type metadata for Bool);
    return v31;
  }

  return v15;
}

uint64_t sub_1000698F0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), void *a5, void (*a6)(void *))
{
  v10 = sub_10007AE28();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v15 = a1;
  LOBYTE(a6) = sub_100069574(v14, a4, a5, a6);

  (*(v11 + 8))(v14, v10);
  return a6 & 1;
}

uint64_t sub_100069A00(uint64_t a1)
{
  v2[2] = a1;
  sub_10006643C(sub_10006CDE4, v2, &type metadata for Bool);
  return v3;
}

uint64_t sub_100069A4C(void *a1)
{
  v2 = sub_10007AE28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v7 = a1;
  v8 = sub_100069A00(v6);

  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_100069B3C(uint64_t a1)
{
  v2[2] = a1;
  sub_10006643C(sub_10006CD80, v2, &type metadata for Int);
  return v2[3];
}

uint64_t sub_100069BA0(uint64_t a1)
{
  v2[2] = a1;
  sub_10006643C(sub_10006CD74, v2, &type metadata for Int);
  return v2[3];
}

uint64_t sub_100069C04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_10007AE28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v11 = a1;
  v12 = a4(v10);

  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t sub_100069CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return sub_10006643C(sub_10006CD64, v6, &type metadata for () + 8);
}

void sub_100069D4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10007B448();
  isa = sub_10007ADD8().super.isa;
  v12[4] = a5;
  v12[5] = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100069E3C;
  v12[3] = &unk_1000B3EC0;
  v11 = _Block_copy(v12);

  [a1 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

void sub_100069E3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100069EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = sub_10007AE28();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = sub_10007B478();
  v15 = v14;
  sub_10007AE08();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a1;
  sub_100069CFC(v13, v15, v11, sub_10006D2FC, v16);

  return (*(v8 + 8))(v11, v7);
}

double sub_10006A014(uint64_t a1)
{
  v2[2] = a1;
  sub_10006643C(sub_10006CD04, v2, &type metadata for Double);
  return *&v2[3];
}

double sub_10006A060(void *a1)
{
  v2 = sub_10007AE28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v7 = a1;
  v8 = sub_10006A014(v6);

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_10006A158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return sub_10006643C(sub_10006CCF8, v4, &type metadata for () + 8);
}

void sub_10006A1A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = sub_10007ADD8().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10006A27C;
  v9[3] = &unk_1000B3E70;
  v8 = _Block_copy(v9);

  [a1 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

void sub_10006A27C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10006A308(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_10007AE28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_10007AE08();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  sub_10006A158(v10, sub_10006CCF0, v12);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10006A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return sub_10006643C(sub_10006C404, v5, &type metadata for () + 8);
}

void sub_10006A488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = sub_10007ADD8().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100069E3C;
  v11[3] = &unk_1000B3E20;
  v10 = _Block_copy(v11);

  [a1 setGreeting:a2 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_10006A568(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = sub_10007AE28();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_10007AE08();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  sub_10006A43C(v15, v12, sub_10006C3FC, v14);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10006A6B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_10007B608();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v12 = sub_10006CDFC(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v2;
  v13[5] = v9;
  v14 = v2;

  sub_10007903C(0, 0, v8, &unk_1000A28A0, v13);
  sub_10007B398();
  swift_allocObject();
  v15 = sub_10007B3A8();

  return v15;
}

uint64_t sub_10006A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006CDFC(&qword_1000C52F8, type metadata accessor for VoicemailActor);
  v7 = sub_10007B578();

  return _swift_task_switch(sub_10006A954, v7, v6);
}

uint64_t sub_10006A954()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + *((swift_isaMask & *v0[4]) + 0x88));

  sub_100030744(&qword_1000C5D38);
  sub_10006C398();
  v2 = sub_10007B3D8();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10006AA5C(char *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(sub_100030744(&qword_1000C5D48) + 48);

  v4(v5, &a1[v6]);
}

id sub_10006AAF0(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a1;
  v8 = sub_10006A6B8(sub_10006C204, v6);

  _Block_release(aBlock);

  return v8;
}

uint64_t sub_10006ABE0(char *a1)
{
  swift_unknownObjectRelease();
  sub_10007B788();
  sub_10007AF78();
  sub_10007B778();

  sub_1000316B8(&a1[*((swift_isaMask & *a1) + 0x80) + 8], &qword_1000C5D50);

  sub_1000316B8(&a1[*((swift_isaMask & *a1) + 0x90) + 8], &qword_1000C5D80);
  sub_1000316B8(&a1[*((swift_isaMask & *a1) + 0x98) + 8], &qword_1000C5D88);

  sub_10007AF68();
  sub_10007AF78();
  sub_10007B778();
  v2 = *((swift_isaMask & *a1) + 0xB0);
  v3 = sub_10007B338();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

char *sub_10006AE84()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  sub_10007B788();
  return sub_10007AF68();
}

char *sub_10006AED0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C5D20);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10006AF00()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C5D28);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10006AF30()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C5D30);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10006AF60()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10007AF68();
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void *sub_10006AFA0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = (result + *((swift_isaMask & *result) + 0x70));
    os_unfair_lock_lock(v7);
    v8 = *&v7[2]._os_unfair_lock_opaque;
    sub_10007B788();
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v7);
    if (v8)
    {
      v9 = qword_1000C4E18;
      swift_unknownObjectRetain();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_1000C7668;
      v11 = *(a3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      if ((*(qword_1000C7668 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v12 = [a1 isAnyAccountSubscribed];
      }

      else
      {
        v12 = [v8 anyAccountSubscribed];
      }

      v45 = v12;
      if (qword_1000C4E08 != -1)
      {
        swift_once();
      }

      v21 = qword_1000C7658;
      v22 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_1000C7658 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v23 = [a1 isOnline];
      }

      else
      {
        v23 = [v8 online];
      }

      v44 = v23;
      if ((*(v21 + v22) & v11) != 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = v8;
      }

      v43 = [v24 isMessageWaiting];
      if (qword_1000C4E28 != -1)
      {
        swift_once();
      }

      if ((*(qword_1000C7678 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = v8;
      }

      v42 = [v25 storageUsage];
      if (qword_1000C4E30 != -1)
      {
        swift_once();
      }

      v26 = qword_1000C7680;
      v27 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_1000C7680 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v28 = [a1 isTranscriptionEnabled];
      }

      else
      {
        v28 = [v8 transcriptionEnabled];
      }

      v29 = v28;
      if ((*(v26 + v27) & v11) != 0)
      {
        v30 = a1;
      }

      else
      {
        v30 = v8;
      }

      v31 = [v30 transcriptionProgress];
      sub_100030744(&unk_1000C59F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000A27A0;
      if (qword_1000C4E38 != -1)
      {
        swift_once();
      }

      v33 = qword_1000C7688;
      *(inited + 32) = qword_1000C7688;
      *(inited + 40) = v10;
      v34 = v33;
      v35 = v10;
      v36 = sub_10005EB68(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v37 = sub_10005E194(v36);

      if (v37)
      {
        v38 = v8;
      }

      else
      {
        v38 = a1;
      }

      v39 = [v38 accounts];
      type metadata accessor for VoicemailAccount();
      sub_10007B528();

      v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = sub_10007B518().super.isa;

      v20 = [v40 initWithAnyAccountSubscribed:v45 online:v44 isMessageWaiting:v43 storageUsage:v42 transcriptionEnabled:v29 transcriptionProgress:v31 accounts:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = [a1 isAnyAccountSubscribed];
      v14 = [a1 isOnline];
      v15 = [a1 isMessageWaiting];
      v16 = [a1 storageUsage];
      v17 = [a1 isTranscriptionEnabled];
      v18 = [a1 transcriptionProgress];
      v19 = [a1 accounts];
      v20 = [v46 initWithAnyAccountSubscribed:v13 online:v14 isMessageWaiting:v15 storageUsage:v16 transcriptionEnabled:v17 transcriptionProgress:v18 accounts:v19];
    }

    swift_unknownObjectRetain();
    os_unfair_lock_lock(v7);
    swift_unknownObjectRelease();
    *&v7[2]._os_unfair_lock_opaque = v20;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v7);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_10006B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_100030744(&qword_1000C5D48);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006B5B0, 0, 0);
}

uint64_t sub_10006B5B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = *((swift_isaMask & *Strong) + 0x88);
    type metadata accessor for VoicemailActor();
    swift_initStaticObject();
    sub_10006CDFC(&qword_1000C52F8, type metadata accessor for VoicemailActor);
    v3 = sub_10007B578();

    return _swift_task_switch(sub_10006B6FC, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10006B724()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = *(v0[8] + 48);
  *v1 = v4;
  sub_10005A798(v3, v1 + v5, &qword_1000C4F48);
  v6 = v4;
  sub_10007B3B8();
  sub_1000316B8(v1, &qword_1000C5D48);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10006B7E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = swift_isaMask & *a2;
  v6 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - v8;
  if (*a1)
  {
    sub_100030744(&qword_1000C56A0);
    sub_10007B628();
  }

  sub_10007B5D8();
  v10 = sub_10007B608();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = *(v5 + 80);
  *(v12 + 48) = *(v5 + 96);
  *(v12 + 56) = v11;
  v13 = sub_100066190(0, 0, v9, &unk_1000A2910, v12);

  *a1 = v13;
  *a3 = v13;
  return result;
}

uint64_t sub_10006B9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_10007B938();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006BA84, 0, 0);
}

uint64_t sub_10006BA84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    sub_10007B928();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_10006BBB4;

    return sub_100067F1C(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10006BBB4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_10006BE00;
  }

  else
  {
    v3 = sub_10006BD1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006BD1C()
{
  v1 = v0[11];
  sub_10007B648();
  v2 = v0[9];
  if (!v1)
  {
    sub_10006BE6C();
    v4 = (v2 + *((swift_isaMask & *v2) + 0x98));
    os_unfair_lock_lock(v4);

    *&v4[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v4);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_10006BE00()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10006BE6C()
{
  v1 = (v0 + *((swift_isaMask & *v0) + 0xA8));
  os_unfair_lock_lock(v1);
  v2 = sub_10007AF68();
  sub_10006BF0C(v1 + *(v2 + 28), v0);

  os_unfair_lock_unlock(v1);
}

void sub_10006BF0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_isaMask;
  v5 = (a2 + *((swift_isaMask & *a2) + 0x70));
  os_unfair_lock_lock(v5);
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x60);
  v8 = *&v5[2]._os_unfair_lock_opaque;
  swift_unknownObjectRetain();
  if (v2)
  {
    sub_10007B788();
    os_unfair_lock_unlock(v5);
    __break(1u);
  }

  else
  {
    sub_10007B788();
    os_unfair_lock_unlock(v5);
    if (v8)
    {
      v17 = v8;
      v9 = (*(v7 + 16))(&v17, v6, v7);
      v10 = sub_10007B318();
      if (v9)
      {
        v11 = sub_10007B6C8();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Failed to update cache on Disk";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
        }
      }

      else
      {
        v11 = sub_10007B6E8();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Updated cache on Disk";
          goto LABEL_11;
        }
      }

      swift_unknownObjectRelease();
      return;
    }

    v14 = sub_10007B318();
    v15 = sub_10007B6C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to update cache on Disk because the cache was nil", v16, 2u);
    }
  }
}

uint64_t sub_10006C1CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C20C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C244()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006C28C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031874;

  return sub_10006A888(a1, v4, v5, v7, v6);
}

void sub_10006C34C()
{
  sub_10007B398();

  sub_10007B628();
}

unint64_t sub_10006C398()
{
  result = qword_1000C5D40;
  if (!qword_1000C5D40)
  {
    sub_100035550(&qword_1000C5D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5D40);
  }

  return result;
}

uint64_t sub_10006C410()
{
  v1 = sub_10007B338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006C4D4(void *a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(sub_10007B338() - 8);
  v7 = *(v2 + 48);
  v8 = v2 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return sub_1000669CC(a1, a2, v7, v8, v5);
}

uint64_t sub_10006C560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006C578()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C5B0()
{
  v1 = sub_10007B338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100030744(&qword_1000C4F48) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = sub_10007AE28();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_10006C778(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030744(&qword_1000C4F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C7E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10007B338() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100030744(&qword_1000C4F48) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[8];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10003124C;

  return sub_100066D20(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_10006C9A8()
{
  v1 = *(sub_100030744(&qword_1000C4F48) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10007AE28();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006CAD0()
{
  v2 = *(sub_100030744(&qword_1000C4F48) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100031874;

  return sub_10006B50C(v4, v5, v0 + v3);
}

uint64_t sub_10006CBDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006CC1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003124C;

  return sub_10006B9C4(a1, v4, v5, v6);
}

void sub_10006CD04(void *a1@<X0>, void *a2@<X8>)
{
  isa = sub_10007ADD8().super.isa;
  [a1 maximumGreetingDurationForAccountUUID:isa];
  v6 = v5;

  *a2 = v6;
}

void sub_10006CD8C(void *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  isa = sub_10007ADD8().super.isa;
  v7 = [a1 *a2];

  *a3 = v7;
}

uint64_t sub_10006CDFC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10006CE60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10006CE80@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t sub_10006CEB0()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_10006CF44(void *a1@<X0>, SEL *a2@<X1>, _BYTE *a3@<X8>)
{
  isa = sub_10007ADD8().super.isa;
  LOBYTE(a2) = [a1 *a2];

  *a3 = a2;
}

id sub_10006CFA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transcriptionProgress];
  *a2 = result;
  return result;
}

uint64_t sub_10006CFF0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

id sub_10006D02C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 transcriptionEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_10006D06C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result & 1;
  return result;
}

id sub_10006D0AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storageUsage];
  *a2 = result;
  return result;
}

uint64_t sub_10006D0EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

id sub_10006D128@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMessageWaiting];
  *a2 = result;
  return result;
}

uint64_t sub_10006D168()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006D1A0()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10006D1E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 online];
  *a2 = result;
  return result;
}

id sub_10006D230@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 anyAccountSubscribed];
  *a2 = result;
  return result;
}

uint64_t sub_10006D334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    v6 = a1[1];
    *a3 = v5;
    a3[1] = v6;
    return swift_unknownObjectRetain();
  }

  else
  {
    v9 = sub_10007B318();
    v10 = sub_10007B6E8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailAccountManagerDecorator: Creating VMD", v11, 2u);
    }

    v12 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory);
    v13 = sub_10006D4C8();
    v14 = v12();
    v16 = v15;

    v17 = sub_10007B318();
    v18 = sub_10007B6E8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "VoicemailAccountManagerDecorator: Created VMD", v19, 2u);
    }

    *a1 = v14;
    a1[1] = v16;
    *a3 = v14;
    a3[1] = v16;
    return swift_unknownObjectRetain();
  }
}

id sub_10006D4C8()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for VoicemailDelegateDecorator();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_queue;
  sub_10007AF38();
  v5 = v0;
  *&v3[v4] = sub_10007AF28();
  v6 = &v3[OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_lastTask];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_logger;
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v8 = sub_10007B338();
  v9 = sub_1000345E8(v8, qword_1000C76E8);
  (*(*(v8 - 8) + 16))(&v3[v7], v9, v8);
  v10 = &v3[OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate];
  *v10 = &unk_1000A2B60;
  *(v10 + 1) = v1;
  v21.receiver = v3;
  v21.super_class = v2;
  v11 = objc_msgSendSuper2(&v21, "init");
  v12 = &v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  os_unfair_lock_lock(&v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables]);
  v20 = v2;
  *&v19 = v11;
  v13 = *(v12 + 1);
  v14 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 1) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000784C4(0, *(v13 + 2) + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  v17 = *(v13 + 2);
  v16 = *(v13 + 3);
  if (v17 >= v16 >> 1)
  {
    v13 = sub_1000784C4((v16 > 1), v17 + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  *(v13 + 2) = v17 + 1;
  sub_1000444B4(&v19, &v13[32 * v17 + 32]);
  os_unfair_lock_unlock(v12);
  return v14;
}

uint64_t sub_10006D6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_100030744(&qword_1000C5D48);
  v3[6] = swift_task_alloc();
  v3[7] = sub_100030744(&qword_1000C4F48);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006D7D8, 0, 0);
}

uint64_t sub_10006D7D8()
{
  v21 = v0;
  v1 = v0[2];
  sub_100070A6C(v0[3], v0[9]);
  v2 = v1;
  v3 = sub_10007B318();
  v4 = sub_10007B6E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    sub_100070A6C(v6, v7);
    v12 = v8;
    v13 = sub_10007B488();
    v15 = v14;
    sub_1000316B8(v6, &qword_1000C4F48);
    v16 = sub_100052954(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "VoicemailAccountManagerDecorator: processing update %@, uuid: %s", v9, 0x16u);
    sub_1000316B8(v10, &qword_1000C5378);

    sub_100035504(v11);
  }

  else
  {

    sub_1000316B8(v6, &qword_1000C4F48);
  }

  v0[10] = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v18 = sub_10007B578();

  return _swift_task_switch(sub_10006DA30, v18, v17);
}

uint64_t sub_10006DA5C()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_100070A6C(v2, v1 + v4);
  v5 = v3;
  sub_10007B3B8();
  sub_1000316B8(v1, &qword_1000C5D48);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10006DB90()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_10006D334(v1 + 1, v0, &v16);
  os_unfair_lock_unlock(v1);
  v2 = *(&v16 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 40))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v5 = sub_10007B338();
  sub_1000345E8(v5, qword_1000C76E8);
  v6 = v0;
  v7 = sub_10007B318();
  v8 = sub_10007B6E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    sub_10006D334(v1 + 1, v6, &v16);
    os_unfair_lock_unlock(v1);
    sub_100030744(&qword_1000C5DF0);
    v11 = sub_10007B498();
    v13 = sub_100052954(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) online: %{BOOL}d", v9, 0x12u);
    sub_100035504(v10);
  }

  return v4 & 1;
}

uint64_t sub_10006DDE4(const char *a1)
{
  v3 = &v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_10006D334(v3 + 1, v1, &v18);
  os_unfair_lock_unlock(v3);
  v4 = *(&v18 + 1);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 32))(ObjectType, v4);
  swift_unknownObjectRelease();
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v7 = sub_10007B338();
  sub_1000345E8(v7, qword_1000C76E8);
  v8 = v1;
  v9 = sub_10007B318();
  v10 = sub_10007B6E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    os_unfair_lock_lock(v3);
    sub_10006D334(v3 + 1, v8, &v18);
    os_unfair_lock_unlock(v3);
    sub_100030744(&qword_1000C5DF0);
    v13 = sub_10007B498();
    v15 = sub_100052954(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 0x12u);
    sub_100035504(v12);
  }

  return v6 & 1;
}

uint64_t sub_10006E038()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_10006D334(v1 + 1, v0, &v16);
  os_unfair_lock_unlock(v1);
  v2 = *(&v16 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v5 = sub_10007B338();
  sub_1000345E8(v5, qword_1000C76E8);
  v6 = v0;
  v7 = sub_10007B318();
  v8 = sub_10007B6E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    sub_10006D334(v1 + 1, v6, &v16);
    os_unfair_lock_unlock(v1);
    sub_100030744(&qword_1000C5DF0);
    v11 = sub_10007B498();
    v13 = sub_100052954(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) storageUsage: %lu", v9, 0x16u);
    sub_100035504(v10);
  }

  return v4;
}

uint64_t sub_10006E280()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_10006D334(v1 + 1, v0, &v17);
  os_unfair_lock_unlock(v1);
  v2 = *(&v17 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 64))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v4 >> 62)
  {
    v5 = sub_10007BA18();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v6 = sub_10007B338();
  sub_1000345E8(v6, qword_1000C76E8);
  v7 = v0;
  v8 = sub_10007B318();
  v9 = sub_10007B6E8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    os_unfair_lock_lock(v1);
    sub_10006D334(v1 + 1, v7, &v17);
    os_unfair_lock_unlock(v1);
    sub_100030744(&qword_1000C5DF0);
    v12 = sub_10007B498();
    v14 = sub_100052954(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "VMD(%s) estimatedAccountCount: %ld", v10, 0x16u);
    sub_100035504(v11);
  }

  return v5;
}

void *sub_10006E534()
{
  v70 = sub_10007AE28();
  v1 = *(v70 - 8);
  v3 = __chkstk_darwin(v70, v2);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3, v5);
  v68 = &v59 - v7;
  v9 = __chkstk_darwin(v6, v8);
  v67 = &v59 - v10;
  __chkstk_darwin(v9, v11);
  v66 = &v59 - v12;
  v13 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  v71 = v0;
  v14 = 0;
  sub_10006D334((v13 + 8), v0, &v79);
  v65 = v13;
  os_unfair_lock_unlock(v13);
  v15 = v80;
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 64))(ObjectType, v15);
  swift_unknownObjectRelease();
  v18 = v17;
  if (v17 >> 62)
  {
    goto LABEL_19;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    while (1)
    {
      v20 = v18;
      v78 = _swiftEmptyArrayStorage;
      result = sub_10007B8E8();
      if (v19 < 0)
      {
        break;
      }

      v18 = 0;
      v22 = v20;
      v64 = v20 & 0xC000000000000001;
      v59 = v20 & 0xFFFFFFFFFFFFFF8;
      v61 = v1 + 8;
      v60 = (v1 + 32);
      v62 = v20;
      v63 = v19;
      v23 = v65;
      v24 = (v1 + 8);
      while (!__OFADD__(v18, 1))
      {
        v75 = v18 + 1;
        v76 = v18;
        if (v64)
        {
          v25 = sub_10007B898();
        }

        else
        {
          if (v18 >= *(v59 + 16))
          {
            goto LABEL_18;
          }

          v25 = *(v22 + 8 * v18 + 32);
        }

        v26 = v25;
        v27 = [v25 UUID];
        v28 = v66;
        sub_10007AE08();

        os_unfair_lock_lock(v23);
        v29 = v71;
        sub_10006D334((v23 + 8), v71, &v79);
        os_unfair_lock_unlock(v23);
        v30 = v80;
        v31 = swift_getObjectType();
        v73 = (*(v30 + 88))(v28, v31, v30);
        swift_unknownObjectRelease();
        v32 = *v24;
        v33 = v70;
        (*v24)(v28, v70);
        v34 = [v26 UUID];
        v35 = v67;
        sub_10007AE08();

        os_unfair_lock_lock(v23);
        sub_10006D334((v23 + 8), v29, &v79);
        os_unfair_lock_unlock(v23);
        v36 = v80;
        v37 = swift_getObjectType();
        v72 = (*(v36 + 96))(v35, v37, v36);
        swift_unknownObjectRelease();
        v32(v35, v33);
        v38 = [v26 UUID];
        v39 = v68;
        sub_10007AE08();

        os_unfair_lock_lock(v23);
        sub_10006D334((v23 + 8), v29, &v79);
        v74 = v14;
        os_unfair_lock_unlock(v23);
        v40 = v80;
        v41 = swift_getObjectType();
        v42 = (*(v40 + 104))(v39, v41, v40);
        swift_unknownObjectRelease();
        v32(v39, v33);
        v43 = type metadata accessor for VoicemailAccount();
        v44 = objc_allocWithZone(v43);
        v45 = [v26 UUID];
        v46 = v69;
        sub_10007AE08();

        (*v60)(&v44[OBJC_IVAR___MPVoicemailAccount_uuid], v46, v33);
        v47 = [v26 accountDescription];
        if (v47)
        {
          v48 = v47;
          v49 = sub_10007B478();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        v52 = v63;
        v53 = v75;
        v54 = &v44[OBJC_IVAR___MPVoicemailAccount_accountDescription];
        *v54 = v49;
        v54[1] = v51;
        v44[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v73 & 1;
        v44[OBJC_IVAR___MPVoicemailAccount_subscribed] = v72 & 1;
        v44[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v42 & 1;
        v55 = [v26 isProvisioned];
        v44[OBJC_IVAR___MPVoicemailAccount_provisioned] = v55;
        v56 = [v26 handle];
        v57 = v56;
        if (v56)
        {
        }

        v44[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v57 != 0;
        v77.receiver = v44;
        v77.super_class = v43;
        v1 = objc_msgSendSuper2(&v77, "init");

        sub_10007B8C8();
        sub_10007B8F8();
        sub_10007B908();
        sub_10007B8D8();
        v18 = v76 + 1;
        v22 = v62;
        v14 = v74;
        if (v53 == v52)
        {

          return v78;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v58 = v18;
      v19 = sub_10007BA18();
      v18 = v58;
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_10006ECAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger;
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v9 = sub_10007B338();
  v10 = sub_1000345E8(v9, qword_1000C76E8);
  (*(*(v9 - 8) + 16))(&v3[v8], v10, v9);
  v11 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  sub_100030744(&qword_1000C5D38);
  swift_allocObject();
  *&v3[v11] = sub_10007B3C8();
  v12 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  *v12 = 0;
  *(v12 + 1) = _swiftEmptyArrayStorage;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory];
  *v14 = sub_100070B50;
  v14[1] = v13;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_10006FCF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10007B338();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_10007B608();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  (*(v6 + 16))(v9, v2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger, v5);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v17 = sub_10003D1C8();
  v18 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = inited;
  *(v20 + 3) = v17;
  *(v20 + 4) = v2;
  (*(v6 + 32))(&v20[v18], v9, v25);
  *&v20[v19] = v14;
  v21 = v2;

  sub_10007903C(0, 0, v13, &unk_1000A2B50, v20);
  sub_10007B398();
  swift_allocObject();
  v22 = sub_10007B3A8();

  return v22;
}

uint64_t sub_10006FF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v7 = sub_10007B338();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v10 = sub_10007B578();

  return _swift_task_switch(sub_10007007C, v10, v9);
}

uint64_t sub_10007007C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v13 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  sub_100030744(&qword_1000C5D38);
  sub_10006C398();
  v10 = sub_10007B3D8();

  *v13 = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000701FC(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007B318();
  v6 = sub_10007B6E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "VoicemailAccountManagerDecorator: processing listener.", v7, 2u);
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = *a1;
  v10 = *(sub_100030744(&qword_1000C5D48) + 48);

  v8(v9, &a1[v10]);
}

uint64_t type metadata accessor for VoicemailAccountManagerWithDelegateDecorator()
{
  result = qword_1000C5DD8;
  if (!qword_1000C5DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000704E8()
{
  result = sub_10007B338();
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

char *sub_1000705A8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C5DE8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_1000705D8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C5D28);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100070608()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070640()
{
  v1 = sub_10007B338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100070720(uint64_t a1)
{
  v4 = *(sub_10007B338() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003124C;

  return sub_10006FF7C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100070850()
{
  v1 = sub_10007B338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000708EC(char *a1)
{
  v3 = *(sub_10007B338() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000701FC(a1, v1 + v4, v5);
}

uint64_t sub_100070988()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000709C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100031874;

  return sub_10006D6EC(a1, a2, v6);
}

uint64_t sub_100070A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030744(&qword_1000C4F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100070ADC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_100070B18()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100070B94()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  if (v8)
  {
    v0 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v0 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v0)
    {
      swift_unknownObjectRetain();
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v1 = objc_opt_self();
      v2 = sub_10007B448();

      v3 = sub_10007B448();

      v4 = [v1 normalizedPhoneNumberHandleForValue:v2 isoCountryCode:v3];

      if (v4)
      {
        v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v4];

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_100070D98(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10007B478();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void *sub_100070DFC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_60:
    v3 = sub_10007BA18();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 & 0xC000000000000001;
  v37 = v2;
  v38 = v1;
  v39 = v1 & 0xC000000000000001;
  if (!v3)
  {
    goto LABEL_55;
  }

  v5 = 0;
  do
  {
    v6 = v5;
    while (1)
    {
      if (v4)
      {
        sub_10007B898();
        v5 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_57;
        }

        swift_unknownObjectRetain();
        v5 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      v7 = [swift_unknownObjectRetain() senderDestinationID];
      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = v7;
      v9 = sub_10007B478();
      v11 = v10;
      swift_unknownObjectRelease();

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12)
      {

        goto LABEL_8;
      }

      v13 = [swift_unknownObjectRetain() senderISOCountryCode];
      if (v13)
      {
        break;
      }

LABEL_7:
      swift_unknownObjectRelease();
LABEL_8:
      swift_unknownObjectRelease();
LABEL_9:
      ++v6;
      if (v5 == v3)
      {
        goto LABEL_31;
      }
    }

    v14 = v13;
    sub_10007B478();
    swift_unknownObjectRelease();

    v15 = objc_opt_self();
    v16 = sub_10007B448();

    v2 = v37;
    v17 = sub_10007B448();
    v1 = v38;

    v18 = [v15 normalizedPhoneNumberHandleForValue:v16 isoCountryCode:v17];

    v4 = v39;
    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v18];

    swift_unknownObjectRelease();
    if (!v19)
    {
      goto LABEL_9;
    }

    sub_10007B508();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10007B548();
      v4 = v39;
    }

    sub_10007B568();
  }

  while (v5 != v3);
LABEL_31:
  v20 = 0;
  v36 = v3;
  do
  {
    v21 = v20;
    while (1)
    {
      if (v4)
      {
        sub_10007B898();
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v21 >= *(v2 + 16))
        {
          goto LABEL_59;
        }

        swift_unknownObjectRetain();
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_58;
        }
      }

      v22 = [swift_unknownObjectRetain() receiverDestinationID];
      if (!v22)
      {
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v23 = v22;
      v24 = sub_10007B478();
      v26 = v25;
      swift_unknownObjectRelease();

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {

        v4 = v39;
        goto LABEL_34;
      }

      v28 = [swift_unknownObjectRetain() receiverISOCountryCode];
      if (!v28)
      {

        swift_unknownObjectRelease();
        v4 = v39;
        goto LABEL_34;
      }

      v29 = v28;
      sub_10007B478();
      swift_unknownObjectRelease();

      v30 = objc_opt_self();
      v31 = sub_10007B448();

      v32 = sub_10007B448();
      v3 = v36;

      v33 = [v30 normalizedPhoneNumberHandleForValue:v31 isoCountryCode:v32];

      v2 = v37;
      v1 = v38;
      v4 = v39;
      if (v33)
      {
        break;
      }

LABEL_34:
      swift_unknownObjectRelease();
LABEL_35:
      ++v21;
      if (v20 == v3)
      {
        goto LABEL_55;
      }
    }

    v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v33];

    swift_unknownObjectRelease();
    if (!v34)
    {
      goto LABEL_35;
    }

    sub_10007B508();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10007B548();
      v4 = v39;
    }

    sub_10007B568();
  }

  while (v20 != v36);
LABEL_55:
  sub_100071828(_swiftEmptyArrayStorage);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100071400(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10007BA18();
LABEL_9:
  result = sub_10007B8A8();
  *v1 = result;
  return result;
}