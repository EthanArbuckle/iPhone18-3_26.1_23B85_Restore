unint64_t ActionError.description.getter(uint64_t a1, void *a2)
{
  sub_1004DEAAC(34);

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE700000000000000;
    a1 = 0x6E776F6E6B6E75;
  }

  v6._countAndFlagsBits = a1;
  v6._object = v4;
  sub_1004DD5FC(v6);

  return 0xD000000000000020;
}

uint64_t static ActionError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      if (sub_1004DF08C())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100041E2C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1004DF08C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

int *Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  v20[2] = a11;
  v20[3] = a12;
  v20[4] = a5;
  v20[5] = a6;
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  result = type metadata accessor for Action();
  *(a9 + result[9]) = a2;
  *(a9 + result[11]) = a10;
  v22 = (a9 + result[10]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a9 + result[12]);
  *v23 = &unk_100515B50;
  v23[1] = v20;
  v24 = (a9 + result[13]);
  *v24 = a7;
  v24[1] = a8;
  return result;
}

uint64_t sub_100041FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100041FD8, 0, 0);
}

uint64_t sub_100041FD8()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1000420D4;
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000003ALL, 0x80000001004EA120, sub_100043220, v2, v5);
}

uint64_t sub_1000420D4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100042210, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100042210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a4;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  sub_100008DE4(&qword_100638980);
  v30 = a6;
  v7 = sub_1004DD9EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v29 = &v28 - v9;
  v11 = type metadata accessor for Action();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1004DDA8C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v32, v11);
  v20 = v10;
  v21 = v7;
  (*(v8 + 16))(v20, v33, v7);
  v22 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v23 = (v13 + v22 + *(v8 + 80)) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v30;
  *(v24 + 4) = v31;
  *(v24 + 5) = v25;
  v26 = v35;
  *(v24 + 6) = v34;
  *(v24 + 7) = v26;
  (*(v12 + 32))(&v24[v22], v15, v11);
  (*(v8 + 32))(&v24[v23], v29, v21);

  sub_10021C658(0, 0, v18, &unk_100515D10, v24);
}

uint64_t sub_100042578(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_100035B28;

  return v12(a6, a7);
}

uint64_t sub_100042680()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_1006350F8);
  sub_100035430(v0, qword_1006350F8);
  return sub_1004D965C();
}

unint64_t sub_1000426F4()
{
  result = qword_100635118;
  if (!qword_100635118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100635118);
  }

  return result;
}

unint64_t sub_100042740()
{
  result = qword_100635120;
  if (!qword_100635120)
  {
    sub_1004DE58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635120);
  }

  return result;
}

uint64_t sub_1000427A8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(type metadata accessor for Action() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  (*(*(v2 - 8) + 8))(v0 + v4, v2);

  (*(v5 + 8))(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_100042940(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for Action() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035B28;

  return sub_100040780(a1, v10, v11, v1 + v8, v1 + v9, v6, v5);
}

unint64_t sub_100042AA4()
{
  result = qword_100635138[0];
  if (!qword_100635138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100635138);
  }

  return result;
}

uint64_t sub_100042AF8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_100035CC8(a1, a2);
  }

  return a1;
}

uint64_t sub_100042B08(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100042B50(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000354D0(a1, a2);
  }

  return a1;
}

BOOL _s9MusicCore21ActionSupportedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (sub_1004DF08C() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t sub_100042BDC()
{

  return swift_deallocObject();
}

uint64_t sub_100042C14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100035B28;

  return sub_100041FB0(a1, a2, v9, v8, v6, v7);
}

unint64_t sub_100042CE8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1000430A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100042D84(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100042ED0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 8) = a2 & 0x7FFFFFFF;
          *(v19 + 16) = 0;
        }

        else
        {
          *(v19 + 8) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1000430A4()
{
  result = qword_100639660;
  if (!qword_100639660)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100639660);
  }

  return result;
}

uint64_t sub_1000430F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100043118(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100043174(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1000431D0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_100043230()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for Action() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_100008DE4(&qword_100638980);
  v5 = sub_1004DD9EC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100043400(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Action() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  sub_100008DE4(&qword_100638980);
  v7 = *(sub_1004DD9EC() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100035C88;

  return sub_100042578(a1, v9, v10, v11, v12, v1 + v5, v1 + v8);
}

uint64_t sub_1000435A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043618()
{

  return swift_deallocObject();
}

uint64_t sub_100043650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B324(a1, v4);
}

uint64_t sub_100043708()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Action() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100043828(uint64_t a1, const char *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for Action() - 8);
  return sub_1000414A4(a1, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a2);
}

uint64_t sub_1000438F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_1000435A8(a3, &v23[-1] - v10);
  v12 = sub_1004DDA8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100046C18(v11);
  }

  else
  {
    sub_1004DDA7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004DD9BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004DD52C();
      sub_100045BA4(v19 + 32, v23);

      v20 = v23[0];
      sub_100046C18(a3);

      return v20;
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

  sub_100046C18(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t ActionMenu.Element.id.getter()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return ActionType.rawValue.getter(v1);
  }

  v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  return v3;
}

uint64_t ActionMenu.Element.parentMenu.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &unk_100515F1E + *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v2 = &unk_100515EEA + v1;
  }

  return *v2;
}

uint64_t ActionMenu.Element.priority.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &unk_1005160D0 + 8 * *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v2 = &unk_100515F30 + 8 * v1;
  }

  return *v2;
}

BOOL static ActionMenu.Element.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v3 = &unk_1005160D0 + 8 * *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v3 = &unk_100515F30 + 8 * v2;
  }

  v4 = *v3;
  v5 = *a2;
  if (*a2 < 0)
  {
    v6 = &unk_1005160D0 + 8 * *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v6 = &unk_100515F30 + 8 * v5;
  }

  return v4 < *v6;
}

uint64_t sub_100043C4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_100043C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

BOOL sub_100043CF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_100515F30[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v3];
  return v4 < *v5;
}

BOOL sub_100043D58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_100515F30[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v2];
  return v4 >= *v5;
}

BOOL sub_100043DC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_100515F30[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v3];
  return v4 >= *v5;
}

BOOL sub_100043E28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_100515F30[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v2];
  return v4 < *v5;
}

char *sub_100043E94(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_10003A240(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v36 = a2;
  v6 = type metadata accessor for Action();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v31 = v29 - v11;
  v13 = v12;
  __chkstk_darwin(v10);
  v15 = v29 - v14;
  v30 = v29 - v14;
  sub_100004CB8(&unk_1006351C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100511DA0;
  v17 = *(v6 + 36);
  v35 = a1;
  v32 = *(a1 + v17);
  v37 = *(v7 + 16);
  v37(v15, a1, v6);
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v29[1] = v13;
  v19 = swift_allocObject();
  v21 = v38;
  v20 = v39;
  *(v19 + 2) = a2;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  v34 = *(v7 + 32);
  v34(&v19[v18], v30, v6);
  v22 = v31;
  v37(v31, v35, v6);
  v23 = swift_allocObject();
  *(v23 + 2) = v36;
  *(v23 + 3) = v21;
  v24 = v39;
  *(v23 + 4) = v39;
  v34(&v23[v18], v22, v6);
  v25 = v33;
  v37(v33, v35, v6);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 2) = v36;
  *(v26 + 3) = v27;
  *(v26 + 4) = v24;
  v34(&v26[v18], v25, v6);
  *(v16 + 32) = v32;
  *(v16 + 40) = sub_1000463C4;
  *(v16 + 48) = v19;
  *(v16 + 56) = sub_1000463C8;
  *(v16 + 64) = v23;
  *(v16 + 72) = &unk_100515D30;
  *(v16 + 80) = v26;
  return v16;
}

uint64_t sub_1000442C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100004CB8(&qword_100635240);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000443C8, 0, 0);
}

uint64_t sub_1000443C8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = sub_1004DDA8C();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1000438F0(0, 0, v1, &unk_100515EE0, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100044550(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for Action();
  *v3 = v1;
  v3[1] = sub_100035B28;

  return Action.execute(checkSupportedStatus:)(a1, 1, v4);
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_100004CB8(&unk_1006351C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = a1 | 0x8000000000000000;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;

  return v2;
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)()
{
  sub_100004CB8(&qword_100634FB8);
  sub_100042B08(&unk_1006351D0, &qword_100634FB8);
  return sub_1004DD7CC();
}

uint64_t sub_100044744@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 48) = v3;
}

uint64_t static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v36 = a2;
  v6 = type metadata accessor for Action();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v31 = v29 - v11;
  v13 = v12;
  __chkstk_darwin(v10);
  v15 = v29 - v14;
  v30 = v29 - v14;
  sub_100004CB8(&qword_1006350A8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100511DA0;
  v17 = *(v6 + 36);
  v35 = a1;
  v32 = *(a1 + v17);
  v37 = *(v7 + 16);
  v37(v15, a1, v6);
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v29[1] = v13;
  v19 = swift_allocObject();
  v21 = v38;
  v20 = v39;
  *(v19 + 2) = a2;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  v34 = *(v7 + 32);
  v34(&v19[v18], v30, v6);
  v22 = v31;
  v37(v31, v35, v6);
  v23 = swift_allocObject();
  *(v23 + 2) = v36;
  *(v23 + 3) = v21;
  v24 = v39;
  *(v23 + 4) = v39;
  v34(&v23[v18], v22, v6);
  v25 = v33;
  v37(v33, v35, v6);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 2) = v36;
  *(v26 + 3) = v27;
  *(v26 + 4) = v24;
  v34(&v26[v18], v25, v6);
  *(v16 + 32) = v32;
  *(v16 + 40) = sub_100046EDC;
  *(v16 + 48) = v19;
  *(v16 + 56) = sub_100046ECC;
  *(v16 + 64) = v23;
  *(v16 + 72) = &unk_100515D40;
  *(v16 + 80) = v26;
  return v16;
}

uint64_t sub_100044AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100004CB8(&qword_100635240);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100044BB0, 0, 0);
}

uint64_t sub_100044BB0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = sub_1004DDA8C();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1000438F0(0, 0, v1, &unk_100515ED0, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100044D38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for Action();
  *v3 = v1;
  v3[1] = sub_100035C88;

  return Action.execute(checkSupportedStatus:)(a1, 1, v4);
}

uint64_t static ActionBuilder.buildExpression(_:)(__int128 *a1)
{
  sub_100004CB8(&qword_1006350A8);
  v2 = swift_allocObject();
  v3 = *(a1 + 6);
  v4 = *a1;
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = v4;
  v5 = a1[2];
  *(v2 + 48) = a1[1];
  *(v2 + 64) = v5;
  *(v2 + 80) = v3;

  return v2;
}

uint64_t sub_100044E98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100039BC4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100004CB8(&qword_100634B30);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100044FD0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10003A240(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000450C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003A5A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v7 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000451E0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10003A968(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004CB8(&qword_100639DA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000452E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10003A134(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100045460(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000455A4(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10003A134(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_100045AC4(&v29, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v30)
  {
    goto LABEL_13;
  }

  v16 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v29;
    if (v16 < *(v29 + 16))
    {
      v18 = *(v4 + 2);
      v19 = v29 + 16 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      while (1)
      {
LABEL_22:
        v22 = *(v4 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < v18 + 1)
        {
          result = sub_10003A134((v22 > 1), v18 + 1, 1, v4);
          v4 = result;
          v23 = *(result + 24) >> 1;
          v24 = v18 - v23;
          if (v18 < v23)
          {
LABEL_24:
            v28 = v23;
            v2 = 0;
            v25 = (v17 + 24 + 16 * v16);
            v27 = v18;
            v26 = &v4[16 * v18 + 40];
            while (1)
            {
              *(v26 - 1) = v21;
              *v26 = v20;
              if (!(v16 + v2))
              {
                break;
              }

              if ((v16 + v2 - 1) >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v21 = *(v25 - 1);
              v20 = *v25;

              --v2;
              v25 -= 2;
              v26 += 16;
              if (v24 == v2)
              {
                v16 += v2;
                v18 = v28;
                *(v4 + 2) = v28;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v27 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v24 = v18 - v23;
          if (v18 < v23)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v18;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000457E8(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1004DED5C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1004DED5C();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000458E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003B010(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000459D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1004DED5C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1004DED5C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100154FF0();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10004614C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_100045AC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100045BA4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100045C60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&qword_100635238, &qword_100635230);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_100635230);
            v9 = sub_10026FA44(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Whitetail.Binding();
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

uint64_t sub_100045E04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&unk_100635220, &qword_100635218);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_100635218);
            v9 = sub_10026FACC(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for BagProvider.Observer();
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

uint64_t sub_100045FA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&qword_100635210, &qword_10063ACB0);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_10063ACB0);
            v9 = sub_10026FB4C(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100046AB4();
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

uint64_t sub_10004614C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&qword_1006351F8, &qword_1006351F0);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_1006351F0);
            v9 = sub_10026FBD4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100004CB8(&qword_10063C330);
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

uint64_t _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v10 = *a1;
    v2 = *(a1 + 3);
    v11 = *(a1 + 1);
    v12 = v2;
    v13 = *(a1 + 5);
    if ((*a2 & 0x8000000000000000) == 0)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 3);
      v9 = *(a2 + 5);
      v3 = static ActionMenu.Item.== infix(_:_:)(&v10, &v6);
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if ((*a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (*((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v3 = 1;
    return v3 & 1;
  }

  return sub_1004DF08C();
}

uint64_t sub_1000463CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(type metadata accessor for Action() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035B28;

  return sub_1000442C4(v0 + v6, v2, v3, v4);
}

char *sub_1000464C8(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_10003A368(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100046608@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(type metadata accessor for Action() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  a1[3] = v3;
  a1[4] = v4;
  v7 = sub_1000357EC(a1);
  v8 = *(*(v3 - 8) + 16);

  return v8(v7, v1 + v6, v3);
}

uint64_t sub_100046724()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Action() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100046838()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(type metadata accessor for Action() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_100044AAC(v0 + v6, v2, v3, v4);
}

unint64_t sub_100046940()
{
  result = qword_1006351E0;
  if (!qword_1006351E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006351E0);
  }

  return result;
}

uint64_t sub_1000469A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 56))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000469F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

unint64_t sub_100046AB4()
{
  result = qword_100635200;
  if (!qword_100635200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100635200);
  }

  return result;
}

uint64_t sub_100046B04(uint64_t a1)
{
  type metadata accessor for Action();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_100044D38(a1);
}

uint64_t sub_100046C18(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100635240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046C80()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for Action() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100046D9C(uint64_t a1)
{
  type metadata accessor for Action();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_100044550(a1);
}

uint64_t Actions.MetricsReportingContext.actionContext.getter()
{
  v1 = *v0;
  sub_100046F14(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_100046F14(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_100046F24(a1, a2);
  }

  return a1;
}

uint64_t sub_100046F24(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.actionContext.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100046F70(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100046F70(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_100046F80(a1, a2);
  }

  return a1;
}

uint64_t sub_100046F80(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t type metadata accessor for Actions.MetricsReportingContext()
{
  result = qword_1006352E0;
  if (!qword_1006352E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.page.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.MetricsReportingContext() + 20);

  return sub_10004708C(a1, v3);
}

uint64_t sub_10004708C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635248);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.MetricsReportingContext.pageContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.MetricsReportingContext() + 24));

  return v1;
}

uint64_t Actions.MetricsReportingContext.pageContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.MetricsReportingContext() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.MetricsReportingContext.locations.getter()
{
  type metadata accessor for Actions.MetricsReportingContext();
}

uint64_t Actions.MetricsReportingContext.locations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.impressions.getter()
{
  type metadata accessor for Actions.MetricsReportingContext();
}

uint64_t Actions.MetricsReportingContext.impressions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext() + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.sharedListeningContext.setter(char a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Actions.MetricsReportingContext();
  v8 = v3 + *(result + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t Actions.MetricsReportingContext.init(actionContext:page:pageContext:locations:impressions:sharedListeningContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = v16[5];
  v18 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[6]];
  v21 = v16[8];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_10004708C(a3, &a9[v17]);
  *v20 = a4;
  *(v20 + 1) = a5;
  *&a9[v19] = a6;
  *&a9[v21] = a7;
  v23 = &a9[v16[9]];
  *v23 = a8;
  *(v23 + 1) = a10;
  *(v23 + 2) = a11;
  return result;
}

uint64_t static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(unsigned int (*a1)(uint64_t, uint64_t, int *), uint64_t a2, int a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t *a10)
{
  v97 = a7;
  v98 = a8;
  v96 = a6;
  LODWORD(v99) = a4;
  LODWORD(v88) = a3;
  v94 = a2;
  v82 = a1;
  v95 = a9;
  v11 = sub_100004CB8(&qword_100635248);
  v12 = __chkstk_darwin(v11 - 8);
  v92 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v90 = &v82 - v15;
  v16 = __chkstk_darwin(v14);
  v87 = &v82 - v17;
  v18 = __chkstk_darwin(v16);
  v86 = &v82 - v19;
  v20 = __chkstk_darwin(v18);
  v85 = &v82 - v21;
  v22 = __chkstk_darwin(v20);
  v83 = &v82 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = (&v82 - v25);
  __chkstk_darwin(v24);
  v28 = &v82 - v27;
  v29 = sub_100004CB8(&qword_100634B30);
  v30 = __chkstk_darwin(v29 - 8);
  v84 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v82 - v32;
  v34 = type metadata accessor for MetricsEvent.Click(0);
  v35 = __chkstk_darwin(v34);
  v37 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v91 = &v82 - v38;
  sub_1000108DC(a5, v33, &qword_100634B30);
  v39 = type metadata accessor for Actions.MetricsReportingContext();
  v40 = *(a10 + v39[7]);
  v42 = *a10;
  v41 = a10[1];
  sub_1000108DC(a10 + v39[5], v28, &qword_100635248);
  v89 = v39;
  v43 = v39[8];
  v93 = a10;
  v44 = *(a10 + v43);
  v37[v34[19]] = 0;
  v45 = &v37[v34[20]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = v94;
  *v37 = v82;
  *(v37 + 1) = v46;
  v37[16] = v88;
  v37[17] = v99;
  sub_100047F38(v33, &v37[v34[7]], &qword_100634B30);
  *&v37[v34[8]] = v40;
  v47 = &v37[v34[9]];
  *v47 = v42;
  v47[1] = v41;
  v48 = &v37[v34[10]];
  v49 = v97;
  *v48 = v96;
  *(v48 + 1) = v49;
  *(v48 + 2) = v98;
  *(v48 + 12) = v95;
  v88 = v28;
  sub_1000108DC(v28, v26, &qword_100635248);
  v50 = type metadata accessor for MetricsEvent.Page(0);
  v51 = *(v50 - 1);
  v82 = *(v51 + 48);
  v99 = v51 + 48;
  if (v82(v26, 1, v50) == 1)
  {

    sub_100046F14(v42, v41);

    sub_100047EB4(v96, v97, v98, v95);
    sub_10001074C(v26, &qword_100635248);
    v52 = v44;
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = v44;
    v53 = *v26;
    v54 = v26[1];

    sub_100046F14(v42, v41);

    sub_100047EB4(v96, v97, v98, v95);

    sub_10004B408(v26, type metadata accessor for MetricsEvent.Page);
    v52 = v55;
  }

  v56 = &v37[v34[12]];
  *v56 = v53;
  *(v56 + 1) = v54;
  v57 = v88;
  v58 = v83;
  sub_1000108DC(v88, v83, &qword_100635248);
  v59 = v82;
  v60 = v82(v58, 1, v50);
  v61 = v87;
  if (v60 == 1)
  {
    sub_10001074C(v58, &qword_100635248);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v62 = *(v58 + 16);
    v63 = *(v58 + 24);

    sub_10004B408(v58, type metadata accessor for MetricsEvent.Page);
  }

  v64 = &v37[v34[13]];
  *v64 = v62;
  *(v64 + 1) = v63;
  v65 = v85;
  v66 = v86;
  sub_1000108DC(v57, v85, &qword_100635248);
  if (v59(v65, 1, v50) == 1)
  {
    sub_10001074C(v65, &qword_100635248);
    v67 = sub_1004D809C();
    v68 = v84;
    (*(*(v67 - 8) + 56))(v84, 1, 1, v67);
  }

  else
  {
    v69 = v84;
    sub_1000108DC(v65 + v50[6], v84, &qword_100634B30);
    v70 = v65;
    v68 = v69;
    sub_10004B408(v70, type metadata accessor for MetricsEvent.Page);
  }

  v71 = v90;
  sub_100047F38(v68, &v37[v34[14]], &qword_100634B30);
  sub_1000108DC(v57, v66, &qword_100635248);
  if (v59(v66, 1, v50) == 1)
  {
    sub_10001074C(v66, &qword_100635248);
    v72 = 0;
  }

  else
  {
    v72 = *(v66 + v50[7]);

    sub_10004B408(v66, type metadata accessor for MetricsEvent.Page);
  }

  *&v37[v34[15]] = v72;
  sub_1000108DC(v57, v61, &qword_100635248);
  if (v59(v61, 1, v50) == 1)
  {
    sub_10001074C(v61, &qword_100635248);
    v73 = 1;
  }

  else
  {
    v73 = *(v61 + v50[9]);
    sub_10004B408(v61, type metadata accessor for MetricsEvent.Page);
  }

  v37[v34[16]] = v73;
  sub_1000108DC(v57, v71, &qword_100635248);
  if (v59(v71, 1, v50) == 1)
  {
    sub_10001074C(v71, &qword_100635248);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v76 = (v71 + v50[8]);
    v74 = *v76;
    v75 = v76[1];

    sub_10004B408(v71, type metadata accessor for MetricsEvent.Page);
  }

  v77 = &v37[v34[18]];
  *v77 = v74;
  *(v77 + 1) = v75;
  v78 = v92;
  sub_100047F38(v57, v92, &qword_100635248);
  if (v59(v78, 1, v50) == 1)
  {
    sub_10001074C(v78, &qword_100635248);
    v79 = 2;
  }

  else
  {
    v79 = *(v78 + v50[11]);
    sub_10004B408(v78, type metadata accessor for MetricsEvent.Page);
  }

  v37[v34[17]] = v79;
  *&v37[v34[11]] = v52;
  v80 = v91;
  sub_100047FA0(v37, v91);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v80, *(v93 + v89[6]), *(v93 + v89[6] + 8), *(v93 + v89[9]), *(v93 + v89[9] + 8), *(v93 + v89[9] + 16));
  return sub_10004B408(v80, type metadata accessor for MetricsEvent.Click);
}

id sub_100047EB4(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return sub_100047EC8(result, a2, a3, a4, SBYTE1(a4));
  }

  return result;
}

id sub_100047EC8(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_100047EF4(result);
  }

  return result;
}

id sub_100047EF4(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

uint64_t sub_100047F38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100004CB8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100047FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.init(rawValue:)(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D0F10;
  v7._object = a2;
  v4 = sub_1004DEE2C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t sub_100048090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473696C79616C70;
  }

  else
  {
    v3 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473696C79616C70;
  }

  else
  {
    v5 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_100048138()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000481BC()
{
  sub_1004DD55C();
}

Swift::Int sub_10004822C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000482AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D0F10;
  v8._object = v3;
  v5 = sub_1004DEE2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10004830C(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL MetricsEvent.Click.ActionDetails.Key.PlayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D0F60;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  return v4 != 0;
}

Swift::Int sub_1000483B8()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

Swift::Int sub_10004843C()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

uint64_t sub_100048498@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D0F98;
  v7._object = v3;
  v5 = sub_1004DEE2C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.NavigationType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C41;
  v2 = 0x7473696C79616C50;
  if (a1 != 2)
  {
    v2 = 0x434174726F706552;
  }

  if (a1)
  {
    v1 = 0x747369747241;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000485A4()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10004866C()
{
  sub_1004DD55C();
}

Swift::Int sub_100048720()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000487E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100048814(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6D75626C41;
  v4 = 0xE800000000000000;
  v5 = 0x7473696C79616C50;
  if (*v1 != 2)
  {
    v5 = 0x434174726F706552;
    v4 = 0xEE006E7265636E6FLL;
  }

  if (*v1)
  {
    v3 = 0x747369747241;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *MetricsEvent.Click.ActionDetails.init(_:)(uint64_t a1)
{
  v1 = sub_10004B4B4(a1);

  return v1;
}

uint64_t MusicItem.metricsContentType.getter(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v4 + 16))(v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  sub_100004CB8(&qword_100635250);
  if (swift_dynamicCast())
  {
    sub_100035850(v22, v24);
    v5 = v25;
    v6 = v26;
    sub_100008C70(v24, v25);
    v7 = (*(v6 + 8))(v5, v6);
    sub_100008D24(v24);
    return v7;
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_10001074C(v22, &qword_100635258);
    v24[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v9 = sub_1004DD4DC();
    v11 = v10;
    sub_10004B8A8(1);
    v12 = sub_1004DE7DC();
    v14 = v13;

    v15 = sub_10004B944(1uLL, v9, v11);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    *&v22[0] = v12;
    *(&v22[0] + 1) = v14;
    v24[0] = v15;
    v24[1] = v17;
    v24[2] = v19;
    v25 = v21;
    sub_10004B9F4();
    sub_1004DD5DC();

    return *&v22[0];
  }
}

uint64_t MusicItem.metricsTargetIdentifier.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = *(v3 + 16);
  v7(v17 - v8, v1, a1);
  sub_100004CB8(&qword_100635250);
  if (!swift_dynamicCast())
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_10001074C(v17, &qword_100635258);
    v7(v6, v1, a1);
    sub_100004CB8(&qword_100635268);
    if (swift_dynamicCast())
    {
      v12 = *(&v20 + 1);
      v13 = v21;
      sub_100008C70(&v19, *(&v20 + 1));
      v11 = (*(v13 + 8))(v12, v13);
      if (v14)
      {
        goto LABEL_5;
      }

      sub_100008D24(&v19);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      sub_10001074C(&v19, &unk_10063AC70);
    }

    return 0x497972617262694CLL;
  }

  sub_100035850(v17, &v19);
  v9 = *(&v20 + 1);
  v10 = v21;
  sub_100008C70(&v19, *(&v20 + 1));
  v11 = (*(v10 + 16))(v9, v10);
LABEL_5:
  v15 = v11;
  sub_100008D24(&v19);
  return v15;
}

uint64_t sub_100048D74()
{
  v0 = sub_1004D916C();
  v98 = *(v0 - 8);
  v99 = v0;
  __chkstk_darwin(v0);
  v97 = &v97 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004D911C();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin(v2);
  v100 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D92AC();
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin(v4);
  v103 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D8FEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC2DC();
  v108 = *(v10 - 8);
  __chkstk_darwin(v10);
  v107 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DC95C();
  v106 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DCF8C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCF9C();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v7 + 32))(v9, v18, v6);
    v109 = v6;
    sub_100004CB8(&qword_1006353A0);
    v20 = sub_1004DD4DC();
    v22 = v21;
    sub_10004B8A8(1);
    v23 = sub_1004DE7DC();
    v25 = v24;

    v26 = sub_10004B944(1uLL, v20, v22);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v113 = v23;
    v114 = v25;
    v109 = v26;
    v110 = v28;
    v111 = v30;
    v112 = v32;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v113;
    (*(v7 + 8))(v9, v6);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v16 + 96))(v18, v15);
    v35 = v107;
    v34 = v108;
    (*(v108 + 32))(v107, v18, v10);
    v109 = v10;
    sub_100004CB8(&qword_100635370);
    v36 = sub_1004DD4DC();
    v38 = v37;
    sub_10004B8A8(1);
    v39 = sub_1004DE7DC();
    v41 = v40;

    v42 = sub_10004B944(1uLL, v36, v38);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v113 = v39;
    v114 = v41;
    v109 = v42;
    v110 = v44;
    v111 = v46;
    v112 = v48;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v113;
    (*(v34 + 8))(v35, v10);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v16 + 96))(v18, v15);
    v49 = v106;
    (*(v106 + 32))(v14, v18, v12);
    v109 = v12;
    sub_100004CB8(&qword_100635360);
    v50 = sub_1004DD4DC();
    v52 = v51;
    sub_10004B8A8(1);
    v53 = sub_1004DE7DC();
    v55 = v54;

    v56 = sub_10004B944(1uLL, v50, v52);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v113 = v53;
    v114 = v55;
    v109 = v56;
    v110 = v58;
    v111 = v60;
    v112 = v62;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v113;
    (*(v49 + 8))(v14, v12);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v16 + 96))(v18, v15);
    v64 = v103;
    v63 = v104;
    v65 = v105;
    (*(v104 + 32))(v103, v18, v105);
    v109 = v65;
    sub_100004CB8(&qword_100635398);
    v66 = sub_1004DD4DC();
    v68 = v67;
    sub_10004B8A8(1);
    v69 = sub_1004DE7DC();
    v71 = v70;

    v72 = sub_10004B944(1uLL, v66, v68);
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v113 = v69;
    v114 = v71;
    v109 = v72;
    v110 = v74;
    v111 = v76;
    v112 = v78;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v113;
    (*(v63 + 8))(v64, v65);
  }

  else
  {
    if (v19 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v16 + 96))(v18, v15);
      v80 = v100;
      v79 = v101;
      v81 = v102;
      (*(v101 + 32))(v100, v18, v102);
      v109 = v81;
      v82 = &unk_100635390;
    }

    else
    {
      if (v19 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v16 + 8))(v18, v15);
        return 1735290739;
      }

      (*(v16 + 96))(v18, v15);
      v80 = v97;
      v79 = v98;
      v81 = v99;
      (*(v98 + 32))(v97, v18, v99);
      v109 = v81;
      v82 = &unk_100635388;
    }

    sub_100004CB8(v82);
    v83 = sub_1004DD4DC();
    v85 = v84;
    sub_10004B8A8(1);
    v86 = sub_1004DE7DC();
    v88 = v87;

    v89 = sub_10004B944(1uLL, v83, v85);
    v91 = v90;
    v93 = v92;
    v95 = v94;

    v113 = v86;
    v114 = v88;
    v109 = v89;
    v110 = v91;
    v111 = v93;
    v112 = v95;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v113;
    (*(v79 + 8))(v80, v81);
  }

  return v33;
}

uint64_t sub_100049750()
{
  v0 = sub_1004D916C();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin(v0);
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004D911C();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D92AC();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D8FEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC2DC();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DC95C();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DCF8C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCF9C();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v7 + 32))(v9, v19, v6);
    v21 = sub_1004D8FDC();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    if (!v23)
    {
      return 0x497972617262694CLL;
    }

    return v21;
  }

  if (v20 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v17 + 96))(v19, v16);
    v25 = v47;
    v24 = v48;
    (*(v47 + 32))(v12, v19, v48);
    v21 = sub_1004DC28C();
    v27 = v26;
    (*(v25 + 8))(v12, v24);
  }

  else
  {
    if (v20 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v17 + 96))(v19, v16);
      v28 = v46;
      (*(v46 + 32))(v15, v19, v13);
      v21 = sub_1004DC88C();
      v30 = v29;
      (*(v28 + 8))(v15, v13);
      if (!v30)
      {
        return 0x497972617262694CLL;
      }

      return v21;
    }

    if (v20 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v43;
      v31 = v44;
      v33 = v45;
      (*(v44 + 32))(v43, v19, v45);
      v34 = sub_1004D929C();
    }

    else if (v20 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v40;
      v31 = v41;
      v33 = v42;
      (*(v41 + 32))(v40, v19, v42);
      v34 = sub_1004D910C();
    }

    else
    {
      if (v20 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v17 + 8))(v19, v16);
        return 0x497972617262694CLL;
      }

      (*(v17 + 96))(v19, v16);
      v32 = v37;
      v31 = v38;
      v33 = v39;
      (*(v38 + 32))(v37, v19, v39);
      v34 = sub_1004D915C();
    }

    v21 = v34;
    v27 = v35;
    (*(v31 + 8))(v32, v33);
  }

  if (v27)
  {
    return v21;
  }

  return 0x497972617262694CLL;
}

uint64_t sub_100049DEC()
{
  v1 = sub_1004DC2DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DC95C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DCAAC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 32))(v8, v12, v5);
    v43 = v5;
    sub_100004CB8(&qword_100635360);
    v14 = sub_1004DD4DC();
    v16 = v15;
    sub_10004B8A8(1);
    v17 = sub_1004DE7DC();
    v19 = v18;

    v20 = sub_10004B944(1uLL, v14, v16);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47 = v17;
    v48 = v19;
    v43 = v20;
    v44 = v22;
    v45 = v24;
    v46 = v26;
    sub_10004B9F4();
    sub_1004DD5DC();

    v27 = v47;
    (*(v6 + 8))(v8, v5);
  }

  else if (v13 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v2 + 32))(v4, v12, v1);
    v43 = v1;
    sub_100004CB8(&qword_100635370);
    v28 = sub_1004DD4DC();
    v30 = v29;
    sub_10004B8A8(1);
    v31 = sub_1004DE7DC();
    v33 = v32;

    v34 = sub_10004B944(1uLL, v28, v30);
    v36 = v35;
    v38 = v37;
    v39 = v2;
    v41 = v40;

    v47 = v31;
    v48 = v33;
    v43 = v34;
    v44 = v36;
    v45 = v38;
    v46 = v41;
    sub_10004B9F4();
    sub_1004DD5DC();

    v27 = v47;
    (*(v39 + 8))(v4, v1);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return 1735290739;
  }

  return v27;
}

uint64_t sub_10004A234()
{
  v1 = v0;
  v2 = sub_1004DC2DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DC95C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DCAAC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for Track.song(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    v15 = sub_1004DC88C();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    if (!v17)
    {
      return 0x497972617262694CLL;
    }

    return v15;
  }

  if (v14 == enum case for Track.musicVideo(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    v15 = sub_1004DC28C();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    if (v19)
    {
      return v15;
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

  return 0x497972617262694CLL;
}

uint64_t sub_10004A554()
{
  v0 = sub_1004DC95C();
  v98 = *(v0 - 8);
  v99 = v0;
  __chkstk_darwin(v0);
  v97 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004DD05C();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin(v2);
  v100 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DC2DC();
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin(v4);
  v103 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DCB3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DCA0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D8F4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F5C();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v106 = v10;
    sub_100004CB8(&qword_100635380);
    v19 = sub_1004DD4DC();
    v21 = v20;
    sub_10004B8A8(1);
    v22 = sub_1004DE7DC();
    v24 = v23;

    v25 = sub_10004B944(1uLL, v19, v21);
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v110 = v22;
    v111 = v24;
    v106 = v25;
    v107 = v27;
    v108 = v29;
    v109 = v31;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v11 + 8))(v13, v10);
  }

  else if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v33 = v7;
    (*(v7 + 32))(v9, v17, v6);
    v106 = v6;
    sub_100004CB8(&qword_100635378);
    v34 = sub_1004DD4DC();
    v36 = v35;
    sub_10004B8A8(1);
    v37 = sub_1004DE7DC();
    v39 = v38;

    v40 = sub_10004B944(1uLL, v34, v36);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v110 = v37;
    v111 = v39;
    v106 = v40;
    v107 = v42;
    v108 = v44;
    v109 = v46;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v33 + 8))(v9, v6);
  }

  else if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v47 = v103;
    v48 = v104;
    v49 = v105;
    (*(v104 + 32))(v103, v17, v105);
    v106 = v49;
    sub_100004CB8(&qword_100635370);
    v50 = sub_1004DD4DC();
    v52 = v51;
    sub_10004B8A8(1);
    v53 = sub_1004DE7DC();
    v55 = v54;

    v56 = sub_10004B944(1uLL, v50, v52);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v110 = v53;
    v111 = v55;
    v106 = v56;
    v107 = v58;
    v108 = v60;
    v109 = v62;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v48 + 8))(v47, v49);
  }

  else if (v18 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v64 = v100;
    v63 = v101;
    v65 = v102;
    (*(v101 + 32))(v100, v17, v102);
    v106 = v65;
    sub_100004CB8(&qword_100635368);
    v66 = sub_1004DD4DC();
    v68 = v67;
    sub_10004B8A8(1);
    v69 = sub_1004DE7DC();
    v71 = v70;

    v72 = sub_10004B944(1uLL, v66, v68);
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v110 = v69;
    v111 = v71;
    v106 = v72;
    v107 = v74;
    v108 = v76;
    v109 = v78;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v63 + 8))(v64, v65);
  }

  else if (v18 == enum case for MusicPin.Item.song(_:))
  {
    (*(v15 + 96))(v17, v14);
    v80 = v97;
    v79 = v98;
    v81 = v99;
    (*(v98 + 32))(v97, v17, v99);
    v106 = v81;
    sub_100004CB8(&qword_100635360);
    v82 = sub_1004DD4DC();
    v84 = v83;
    sub_10004B8A8(1);
    v85 = sub_1004DE7DC();
    v87 = v86;

    v88 = sub_10004B944(1uLL, v82, v84);
    v90 = v89;
    v92 = v91;
    v94 = v93;

    v110 = v85;
    v111 = v87;
    v106 = v88;
    v107 = v90;
    v108 = v92;
    v109 = v94;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v79 + 8))(v80, v81);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  return v32;
}

uint64_t sub_10004AE48()
{
  v0 = sub_1004DC95C();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004DD05C();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DC2DC();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DCB3C();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DCA0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D8F4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F5C();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = sub_1004DC9AC();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    if (!v21)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v22 = v44;
    (*(v44 + 32))(v9, v17, v7);
    v19 = sub_1004DCB0C();
    v24 = v23;
    (*(v22 + 8))(v9, v7);
    if (!v24)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v26 = v42;
    v25 = v43;
    (*(v42 + 32))(v6, v17, v43);
    v19 = sub_1004DC28C();
    v28 = v27;
    (*(v26 + 8))(v6, v25);
  }

  else
  {
    if (v18 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v15 + 96))(v17, v14);
      v30 = v39;
      v29 = v40;
      v31 = v41;
      (*(v40 + 32))(v39, v17, v41);
      v32 = sub_1004DCF1C();
    }

    else
    {
      if (v18 != enum case for MusicPin.Item.song(_:))
      {
        (*(v15 + 8))(v17, v14);
        return 0x507972617262694CLL;
      }

      (*(v15 + 96))(v17, v14);
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 32))(v36, v17, v38);
      v32 = sub_1004DC88C();
    }

    v19 = v32;
    v28 = v33;
    (*(v29 + 8))(v30, v31);
  }

  if (v28)
  {
    return v19;
  }

  return 0x507972617262694CLL;
}

uint64_t sub_10004B408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D0FD0;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void *sub_10004B4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v4 = *(i - 2);
    v5 = *(i - 1);
    v6 = *i;
    v38 = v4;
    if (v6 <= 1)
    {
      if (*i)
      {
        sub_100030C58();
        v17 = sub_1004DE83C();
        v36 = v18;
        v37 = v17;

        v14 = 0xE500000000000000;
        v13 = 0x6F54646461;
      }

      else
      {
        sub_10004C424(v4, v5, 0);

        v14 = 0xE400000000000000;
        v36 = v5;
        v37 = v4;
        v13 = 1684957547;
      }
    }

    else if (v6 == 2)
    {
      sub_100030C58();
      v15 = sub_1004DE83C();
      v36 = v16;
      v37 = v15;

      v14 = 0xEA00000000006D6FLL;
      v13 = 0x72466574656C6564;
    }

    else if (v6 == 3)
    {
      v7 = 0x7473696C79616C50;
      if (v4 != 2)
      {
        v7 = 0x434174726F706552;
      }

      v8 = 0xE800000000000000;
      if (v4 != 2)
      {
        v8 = 0xEE006E7265636E6FLL;
      }

      v9 = 0x6D75626C41;
      if (v4)
      {
        v9 = 0x747369747241;
      }

      v10 = 0xE500000000000000;
      if (v4)
      {
        v10 = 0xE600000000000000;
      }

      v11 = v4 <= 1u ? v9 : v7;
      v37 = v11;
      v12 = v4 <= 1u ? v10 : v8;
      v36 = v12;
      v13 = 0x657461676976616ELL;
      v14 = 0xEA00000000006F54;
    }

    else
    {
      v14 = 0xE800000000000000;
      v37 = 0x7453657461657263;
      v36 = 0xED00006E6F697461;
      v13 = 0x6570795479616C70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_100056B84(v13, v14);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v5;
        v28 = v38;
        if (v20)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10005B7A0();
        v29 = v5;
        v28 = v38;
        if (v25)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100057604(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_100056B84(v13, v14);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_42;
      }

      v21 = v26;
      v29 = v5;
      v28 = v38;
      if (v25)
      {
LABEL_3:

        v3 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
        *v3 = v37;
        v3[1] = v36;

        sub_10004C410(v28, v29, v6);
        goto LABEL_4;
      }
    }

    _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
    *v30 = v13;
    v30[1] = v14;
    v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
    *v31 = v37;
    v31[1] = v36;
    sub_10004C410(v28, v29, v6);
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    _swiftEmptyDictionarySingleton[2] = v34;
LABEL_4:
    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1004DF16C();
  __break(1u);
  return result;
}

uint64_t sub_10004B8A8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004DD5BC();

    return sub_1004DD6EC();
  }

  return result;
}

unint64_t sub_10004B944(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1004DD5BC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1004DD6EC();
}

unint64_t sub_10004B9F4()
{
  result = qword_100635260;
  if (!qword_100635260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635260);
  }

  return result;
}

unint64_t sub_10004BA4C()
{
  result = qword_100635270;
  if (!qword_100635270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635270);
  }

  return result;
}

unint64_t sub_10004BAA4()
{
  result = qword_100635278;
  if (!qword_100635278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635278);
  }

  return result;
}

unint64_t sub_10004BAFC()
{
  result = qword_100635280;
  if (!qword_100635280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635280);
  }

  return result;
}

uint64_t sub_10004BB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100635248);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10004BC54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&qword_100635248);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_10004BD20()
{
  sub_10004BEAC(319, &qword_1006352F0);
  if (v0 <= 0x3F)
  {
    sub_10004BE54();
    if (v1 <= 0x3F)
    {
      sub_10004BEAC(319, &qword_10063C230);
      if (v2 <= 0x3F)
      {
        sub_10004BEF8(319, &qword_100635300, &qword_100635308);
        if (v3 <= 0x3F)
        {
          sub_10004BEF8(319, &qword_100635310, &qword_100635318);
          if (v4 <= 0x3F)
          {
            sub_10004BF4C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10004BE54()
{
  if (!qword_1006352F8)
  {
    type metadata accessor for MetricsEvent.Page(255);
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1006352F8);
    }
  }
}

void sub_10004BEAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1004DE7CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10004BEF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_100008DE4(a3);
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004BF4C()
{
  if (!qword_100635320)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100635320);
    }
  }
}

uint64_t sub_10004BFB4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_10004BFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004C018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10004C05C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s3KeyO15DestinationTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KeyO15DestinationTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Page.DisplayType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetricsEvent.Page.DisplayType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t _s3KeyO14NavigationTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KeyO14NavigationTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10004C410(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_10004C424(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t View.actionContextMenu(title:menu:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a4;
  v40 = a1;
  v41 = a2;
  v46 = a7;
  v47 = *(a5 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = sub_100008DE4(&qword_1006353A8);
  v16 = sub_10004C920();
  v52 = a5;
  v53 = v15;
  v54 = a6;
  v55 = v16;
  v49 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v39 = &v38 - v22;
  v23 = sub_1004DAAEC();
  v44 = *(v23 - 8);
  v45 = v23;
  v24 = __chkstk_darwin(v23);
  v48 = &v38 - v25;
  if (a3)
  {
    v47 = v15;
    __chkstk_darwin(v24);
    *(&v38 - 8) = a5;
    *(&v38 - 7) = a6;
    *(&v38 - 6) = OpaqueTypeConformance2;
    *(&v38 - 5) = a3;
    v26 = v41;
    *(&v38 - 4) = v40;
    *(&v38 - 3) = v26;
    *(&v38 - 2) = v42;

    v27 = v49;
    sub_1004DB3FC();
    v52 = a5;
    v53 = v47;
    v54 = a6;
    v55 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = *(v18 + 16);
    v29 = v39;
    v28(v39, v21, OpaqueTypeMetadata2);
    v30 = *(v18 + 8);
    v30(v21, OpaqueTypeMetadata2);
    v28(v21, v29, OpaqueTypeMetadata2);
    v15 = v47;
    sub_10004CBDC(v21, OpaqueTypeMetadata2);

    v30(v21, OpaqueTypeMetadata2);
    v30(v29, OpaqueTypeMetadata2);
  }

  else
  {
    v31 = v47;
    v32 = *(v47 + 16);
    v32(v14, OpaqueTypeConformance2, a5);
    v32(v12, v14, a5);
    v52 = a5;
    v53 = v15;
    v54 = a6;
    v55 = v49;
    swift_getOpaqueTypeConformance2();
    sub_10004CCD4(v12, OpaqueTypeMetadata2, a5);
    v33 = *(v31 + 8);
    v33(v12, a5);
    v33(v14, a5);
  }

  v52 = a5;
  v53 = v15;
  v54 = a6;
  v55 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = a6;
  v34 = v45;
  swift_getWitnessTable();
  v35 = v44;
  v36 = v48;
  (*(v44 + 16))(v46, v48, v34);
  return (*(v35 + 8))(v36, v34);
}

unint64_t sub_10004C920()
{
  result = qword_1006353B0;
  if (!qword_1006353B0)
  {
    sub_100008DE4(&qword_1006353A8);
    sub_10004C9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006353B0);
  }

  return result;
}

unint64_t sub_10004C9B8()
{
  result = qword_1006353B8;
  if (!qword_1006353B8)
  {
    sub_100008DE4(&qword_1006353C0);
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView);
    sub_100042B08(&qword_1006353D0, &qword_1006353D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006353B8);
  }

  return result;
}

uint64_t type metadata accessor for ActionMenuView()
{
  result = qword_100635510;
  if (!qword_100635510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004CAEC()
{

  sub_100004CB8(&qword_1006353C0);
  sub_10004C9B8();
  sub_100030C58();
  return sub_1004DBC5C();
}

uint64_t sub_10004CBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DAACC();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t sub_10004CCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004DAACC();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v67 = a7;
  v68 = a8;
  v65 = a5;
  v66 = a6;
  v64 = a4;
  v63 = a2;
  v62 = a1;
  v72 = a9;
  v61 = *(a10 - 8);
  v14 = __chkstk_darwin(a1);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v58 - v17;
  v19 = sub_100008DE4(&qword_1006353A8);
  v20 = sub_10004C920();
  v80 = a10;
  v81 = v19;
  v75 = v19;
  v76 = a11;
  v82 = a11;
  v83 = a12;
  v77 = a12;
  v74 = v20;
  v84 = v20;
  v85 = a13;
  v71 = a13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v58 - v26;
  v28 = sub_1004DAAEC();
  v70 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v69 = v58 - v30;
  if (a3)
  {
    v58[2] = v58;
    v31 = __chkstk_darwin(v29);
    v61 = v28;
    v58[1] = &v58[-12];
    v32 = v76;
    v33 = v77;
    v58[-10] = a10;
    v58[-9] = v32;
    v59 = v22;
    v60 = v27;
    v34 = v71;
    v58[-8] = v33;
    v58[-7] = v34;
    v58[-6] = v73;
    v58[-5] = a3;
    v35 = OpaqueTypeMetadata2;
    v58[3] = v36;
    __chkstk_darwin(v31);
    v58[-6] = a10;
    v58[-5] = v32;
    v37 = swift_allocObject();
    v38 = v68;
    *(v37 + 16) = v67;
    *(v37 + 24) = v38;

    v57 = v34;
    v39 = v74;
    v55 = v33;
    v56 = v74;
    v54 = v32;
    v40 = v75;
    sub_1004DB3EC();

    v80 = a10;
    v81 = v40;
    v82 = v32;
    v83 = v33;
    v84 = v39;
    v85 = v34;
    swift_getOpaqueTypeConformance2();
    v41 = v59;
    v42 = *(v59 + 16);
    v43 = v60;
    v42(v60, v25, v35);
    v44 = *(v41 + 8);
    v44(v25, v35);
    v42(v25, v43, v35);
    v45 = v69;
    v28 = v61;
    sub_10004CBDC(v25, v35);

    v44(v25, v35);
    v44(v43, v35);
  }

  else
  {
    v46 = v61;
    v47 = *(v61 + 16);
    v47(v18, v73, a10);
    v47(v16, v18, a10);
    v80 = a10;
    v81 = v75;
    v82 = v76;
    v83 = v77;
    v34 = v71;
    v84 = v74;
    v85 = v71;
    swift_getOpaqueTypeConformance2();
    v48 = v69;
    sub_10004CCD4(v16, OpaqueTypeMetadata2, a10);
    v49 = *(v46 + 8);
    v50 = v16;
    v45 = v48;
    v49(v50, a10);
    v49(v18, a10);
  }

  v80 = a10;
  v81 = v75;
  v51 = v77;
  v82 = v76;
  v83 = v77;
  v84 = v74;
  v85 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v51;
  swift_getWitnessTable();
  v52 = v70;
  (*(v70 + 16))(v72, v45, v28);
  return (*(v52 + 8))(v45, v28);
}

uint64_t sub_10004D48C@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = (__chkstk_darwin)();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v14 - v9;
  v8();
  v11 = *(v4 + 16);
  v11(v10, v7, a1);
  v12 = *(v4 + 8);
  v12(v7, a1);
  v11(a2, v10, a1);
  return (v12)(v10, a1);
}

uint64_t sub_10004D5DC()
{

  return swift_deallocObject();
}

uint64_t sub_10004D614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding);

  *(a3 + 32) = sub_1004DA4CC();
  *(a3 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView() + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_100004CB8(&qword_1006355C8);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;

  v8 = sub_1004D9AEC();
  result = sub_100004CB8(&qword_1006353C0);
  v10 = (a3 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9)
{
  v47 = a6;
  v43 = a5;
  v48 = a4;
  v49 = a3;
  v40 = a2;
  v42 = a1;
  v53 = a8;
  v10 = sub_1004DBDDC();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v50 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008DE4(&qword_1006353E0);
  v41 = v12;
  v13 = sub_10004DCB8();
  v59 = a7;
  v60 = v12;
  v61 = a9;
  v62 = v13;
  v14 = sub_1004DB15C();
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v35 - v15;
  sub_100008DE4(&qword_1006353D8);
  v38 = v14;
  v17 = sub_1004DA32C();
  v36 = v17;
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v39 = v35 - v18;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  v20 = sub_100042B08(&qword_1006353D0, &qword_1006353D8);
  v57 = WitnessTable;
  v58 = v20;
  v37 = swift_getWitnessTable();
  v59 = v17;
  v60 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v35 - v26;
  v54 = v42;
  v55 = v40;
  v56 = v44;

  sub_1004DB13C();
  type metadata accessor for ActionMenuView.Excluding();
  *(swift_allocObject() + 16) = v49;
  sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding);

  v28 = v39;
  v29 = v38;
  sub_1004DB54C();

  (*(v46 + 8))(v16, v29);
  v30 = v50;
  sub_1004DBDCC();
  v31 = v36;
  sub_1004DB77C();
  (*(v51 + 8))(v30, v52);
  (*(v45 + 8))(v28, v31);
  v32 = *(v22 + 16);
  v32(v27, v25, OpaqueTypeMetadata2);
  v33 = *(v22 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v53, v27, OpaqueTypeMetadata2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_10004DCB8()
{
  result = qword_1006353E8;
  if (!qword_1006353E8)
  {
    sub_100008DE4(&qword_1006353E0);
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006353E8);
  }

  return result;
}

uint64_t sub_10004DD80()
{
  type metadata accessor for ActionMenuView();
  sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView);
  sub_100030C58();

  return sub_1004DBC5C();
}

uint64_t sub_10004DE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding);

  *(a2 + 32) = sub_1004DA4CC();
  *(a2 + 40) = v3;
  v4 = *(type metadata accessor for ActionMenuView() + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_100004CB8(&qword_1006355C8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004DF74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding();
  result = sub_1004D9AFC();
  *a1 = result;
  return result;
}

uint64_t sub_10004DFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004CB8(&qword_100635570);
  v93 = *(v3 - 8);
  __chkstk_darwin(v3);
  v92 = v78 - v4;
  v104 = sub_100004CB8(&qword_100635578);
  __chkstk_darwin(v104);
  v106 = v78 - v5;
  v105 = sub_100004CB8(&qword_100635580);
  __chkstk_darwin(v105);
  v100 = v78 - v6;
  v7 = sub_1004DBC0C();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin(v7);
  v85 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100635588);
  v10 = __chkstk_darwin(v9 - 8);
  v98 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v99 = v78 - v12;
  v89 = sub_100004CB8(&qword_100635590);
  __chkstk_darwin(v89);
  v94 = v78 - v13;
  v91 = sub_1004DAB9C();
  v83 = *(v91 - 8);
  __chkstk_darwin(v91);
  v81 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100004CB8(&qword_100635598);
  v80 = *(v88 - 8);
  __chkstk_darwin(v88);
  v79 = v78 - v15;
  v90 = sub_100004CB8(&qword_1006355A0);
  v84 = *(v90 - 8);
  __chkstk_darwin(v90);
  v82 = v78 - v16;
  v17 = sub_100004CB8(&qword_1006355A8);
  v18 = __chkstk_darwin(v17 - 8);
  v95 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v102 = v78 - v20;
  v111 = sub_100004CB8(&qword_1006355B0);
  __chkstk_darwin(v111);
  v103 = v78 - v21;
  v22 = type metadata accessor for ActionMenuView();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100004CB8(&qword_1006355B8);
  __chkstk_darwin(v101);
  v107 = v78 - v26;
  v109 = sub_100004CB8(&qword_1006355C0);
  __chkstk_darwin(v109);
  v110 = v78 - v27;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding);
    result = sub_1004DA4BC();
    __break(1u);
    return result;
  }

  v28 = v1;
  v29 = *v1;

  v31 = ActionMenu.elements(excluding:includeUnsupported:)(v30, 0);
  v108 = v32;
  v34 = v33;

  if (!*(v31 + 16))
  {

    (v108)(v49);
    swift_storeEnumTagMultiPayload();
    sub_100051574();
    sub_1004DAADC();
  }

  v86 = v3;
  v87 = a1;
  v112 = v31;
  swift_getKeyPath();
  sub_100050FD4(v28, v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v36 = (v24 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_100051184(v25, v37 + v35);
  *(v37 + v36) = v31;
  swift_bridgeObjectRetain_n();
  sub_100004CB8(&qword_1006355D0);
  sub_100004CB8(&qword_1006355D8);
  sub_100042B08(&qword_1006355E0, &qword_1006355D0);
  sub_100051294();
  v38 = v107;
  sub_1004DBC1C();
  v39 = swift_allocObject();
  *(v39 + 16) = v108;
  *(v39 + 24) = v34;
  v40 = (v38 + *(v101 + 36));
  *v40 = sub_100051F90;
  v40[1] = v39;
  v40[2] = 0;
  v40[3] = 0;
  v41 = *(v29 + 32);

  v42 = v34;
  if ((MenuType.style.getter(v41) & 1) == 0)
  {
    v108 = v28;
    v51 = *(v31 + 16);
    v52 = *(v29 + 32);

    if (MenuType.rawValue.getter(v52) == 0x7463416B63697571 && v53 == 0xEB000000006E6F69)
    {

      if (v51 <= 1)
      {
LABEL_13:
        sub_1000108DC(v38, v94, &qword_1006355B8);
        swift_storeEnumTagMultiPayload();
        v65 = sub_100042B08(&qword_100635648, &qword_100635598);
        v66 = sub_100051CF0(&qword_100635650, &type metadata accessor for MenuControlGroupStyle);
        v112 = v88;
        v113 = v91;
        v114 = v65;
        v115 = v66;
        swift_getOpaqueTypeConformance2();
        sub_100051464();
        sub_1004DAADC();
        goto LABEL_14;
      }
    }

    else
    {
      v55 = sub_1004DF08C();

      if ((v55 & 1) == 0 || v51 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin(v54);
    v93 = sub_100051464();
    v56 = v79;
    sub_1004D9E7C();
    v57 = v81;
    sub_1004DAB8C();
    v58 = sub_100042B08(&qword_100635648, &qword_100635598);
    v59 = sub_100051CF0(&qword_100635650, &type metadata accessor for MenuControlGroupStyle);
    v60 = v82;
    v61 = v88;
    v62 = v91;
    sub_1004DB53C();
    (*(v83 + 8))(v57, v62);
    (*(v80 + 8))(v56, v61);
    v63 = v84;
    v64 = v90;
    (*(v84 + 16))(v94, v60, v90);
    swift_storeEnumTagMultiPayload();
    v112 = v61;
    v113 = v62;
    v114 = v58;
    v115 = v59;
    swift_getOpaqueTypeConformance2();
    sub_1004DAADC();
    (*(v63 + 8))(v60, v64);
LABEL_14:
    v68 = v96;
    v67 = v97;
    v69 = *(v108 + 8) == 1;
    v70 = v99;
    v78[1] = v42;
    if (v69)
    {
      v71 = v85;
      sub_1004DBBFC();
      (*(v68 + 32))(v70, v71, v67);
      v72 = 0;
    }

    else
    {
      v72 = 1;
    }

    (*(v68 + 56))(v70, v72, 1, v67);
    v73 = v102;
    v74 = v95;
    sub_1000108DC(v102, v95, &qword_1006355A8);
    v75 = v98;
    sub_1000108DC(v70, v98, &qword_100635588);
    v76 = v100;
    sub_1000108DC(v74, v100, &qword_1006355A8);
    v77 = sub_100004CB8(&qword_100635658);
    sub_1000108DC(v75, v76 + *(v77 + 48), &qword_100635588);
    sub_10001074C(v75, &qword_100635588);
    sub_10001074C(v74, &qword_1006355A8);
    sub_1000108DC(v76, v106, &qword_100635580);
    swift_storeEnumTagMultiPayload();
    sub_100042B08(&qword_100635630, &qword_100635580);
    sub_100042B08(&qword_100635638, &qword_100635570);
    v48 = v103;
    sub_1004DAADC();
    sub_10001074C(v76, &qword_100635580);
    sub_10001074C(v70, &qword_100635588);
    sub_10001074C(v73, &qword_1006355A8);
    v38 = v107;
    goto LABEL_18;
  }

  v44 = __chkstk_darwin(v43);
  __chkstk_darwin(v44);
  sub_100004CB8(&qword_1006355F8);
  sub_1000513AC();
  sub_100051464();
  v45 = v92;
  sub_1004DB14C();
  v46 = v93;
  v47 = v86;
  (*(v93 + 16))(v106, v45, v86);
  swift_storeEnumTagMultiPayload();
  sub_100042B08(&qword_100635630, &qword_100635580);
  sub_100042B08(&qword_100635638, &qword_100635570);
  v48 = v103;
  sub_1004DAADC();
  (*(v46 + 8))(v45, v47);
LABEL_18:
  sub_1000108DC(v48, v110, &qword_1006355B0);
  swift_storeEnumTagMultiPayload();
  sub_100051574();
  sub_1004DAADC();

  sub_10001074C(v48, &qword_1006355B0);
  return sub_10001074C(v38, &qword_1006355B8);
}

uint64_t sub_10004F0AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_10004F0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v65 = type metadata accessor for ActionMenuView();
  __chkstk_darwin(v65);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_100004CB8(&qword_100635668);
  __chkstk_darwin(v63);
  v10 = &v56[-v9];
  v11 = sub_1004DA25C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[1];
  v66 = *a1;
  v67 = v15;
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v68 = a1[2];
  v69 = v18;
  v61 = v16;
  v62 = v17;
  v70 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32)) == 0x7463416B63697571 && v19 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v21 = sub_1004DF08C();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    sub_100051658(v14);
    v22 = sub_1004DA24C();
    (*(v12 + 8))(v14, v11);
    v23 = v22 ^ 1;
    v24 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v25 = a2[2];
    v26 = a2[3];
    *v8 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v25;
    *(v8 + 3) = v26;
    sub_1000518C0(v24);
    sub_10000DE64(v25);
    type metadata accessor for ActionMenuView.Excluding();
    sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding);
    *(v8 + 4) = sub_1004DA4CC();
    *(v8 + 5) = v27;
    v28 = *(v65 + 32);
    *&v8[v28] = swift_getKeyPath();
    sub_100004CB8(&qword_1006355C8);
    swift_storeEnumTagMultiPayload();
    sub_100050FD4(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_100051350();
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView);
    sub_1004DAADC();
    return sub_10005193C(v8);
  }

LABEL_11:
  v23 = 0;
  v24 = v66;
  if (v66 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v59 = (v23 & 1) != 0 && *(a3 + 16) > 2uLL;
  v30 = a2[2];
  v31 = a2[3];
  v60 = v30;
  sub_10000DE64(v30);

  v67(v89, v32);
  v33 = v90;
  v34 = v91;
  sub_100008C70(v89, v90);
  v87 = (*(v34 + 8))(v33, v34);
  v88[0] = v35;
  v36 = v90;
  v37 = v91;
  sub_100008C70(v89, v90);
  v38 = (*(v37 + 24))(v36, v37);
  v39 = 0;
  v88[1] = v38;
  v88[2] = v40;
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v42 = &v88[2 * v39];
  while (++v39 != 3)
  {
    v43 = v42 + 2;
    v44 = *v42;
    v42 += 2;
    if (v44)
    {
      v58 = v10;
      v57 = v23;
      v45 = *(v43 - 3);

      v46 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_10003A134(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_10003A134((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      v49 = &v41[16 * v48];
      *(v49 + 4) = v45;
      *(v49 + 5) = v44;
      v31 = v46;
      v23 = v57;
      v10 = v58;
      goto LABEL_16;
    }
  }

  sub_100004CB8(&unk_100639EB0);
  swift_arrayDestroy();
  v78[0] = v41;
  sub_100004CB8(&unk_1006372E0);
  sub_100042B08(&qword_100637D70, &unk_1006372E0);
  v50 = sub_1004DD30C();
  v52 = v51;

  sub_100008D24(v89);
  LOBYTE(v72) = v66;
  *(&v72 + 1) = v94[0];
  DWORD1(v72) = *(v94 + 3);
  *(&v72 + 1) = v67;
  *&v73 = v68;
  *(&v73 + 1) = v61;
  *&v74 = v69;
  *(&v74 + 1) = v62;
  *&v75 = v70;
  BYTE8(v75) = v59;
  BYTE9(v75) = v23 & 1;
  *(&v75 + 10) = v92;
  HIWORD(v75) = v93;
  *&v76 = v60;
  *(&v76 + 1) = v31;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  LOBYTE(v78[0]) = v66;
  HIDWORD(v78[0]) = *(v94 + 3);
  *(v78 + 1) = v94[0];
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v61;
  v78[4] = v69;
  v78[5] = v62;
  v78[6] = v70;
  v79 = v59;
  v80 = v23 & 1;
  v81 = v92;
  v82 = v93;
  v83 = v60;
  v84 = v31;
  v85 = v50;
  v86 = v52;
  sub_100051998(&v72, &v71);
  sub_1000519D0(v78);
  v53 = v75;
  v10[2] = v74;
  v10[3] = v53;
  v54 = v77;
  v10[4] = v76;
  v10[5] = v54;
  v55 = v73;
  *v10 = v72;
  v10[1] = v55;
  swift_storeEnumTagMultiPayload();
  sub_100051350();
  sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView);
  return sub_1004DAADC();
}

uint64_t sub_10004F7E8(uint64_t *a1)
{
  v2 = sub_100004CB8(&qword_100635610);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - v4;
  v6 = sub_100004CB8(&qword_100635660);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = *a1;
  v10 = MenuType.image.getter(*(*a1 + 32));
  if (v10)
  {
    v11 = __chkstk_darwin(v10);
    v19[-2] = a1;
    v12 = __chkstk_darwin(v11);
    v19[-2] = v12;
    v13 = v12;
    sub_1004DB96C();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_100042B08(&qword_100635608, &qword_100635610);
    sub_1004DAADC();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v19[0] = MenuType.title.getter(*(v9 + 32));
    v19[1] = v15;
    sub_100030C58();
    *v8 = sub_1004DB34C();
    *(v8 + 1) = v16;
    v8[16] = v17 & 1;
    *(v8 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_100042B08(&qword_100635608, &qword_100635610);
    return sub_1004DAADC();
  }
}

uint64_t sub_10004FAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_100030C58();
  result = sub_1004DB34C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10004FB5C()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100635680);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16[-v4 - 8];
  (*(v0 + 8))(v17, v3);
  v6 = v18;
  v7 = v19;
  sub_100008C70(v17, v18);
  if ((*(v7 + 48))(v6, v7))
  {
    sub_1004D9C4C();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1004D9C7C();
  (*(*(v9 - 8) + 56))(v5, v8, 1, v9);
  v10 = swift_allocObject();
  v11 = v1[3];
  v10[3] = v1[2];
  v10[4] = v11;
  v12 = v1[5];
  v10[5] = v1[4];
  v10[6] = v12;
  v13 = v1[1];
  v10[1] = *v1;
  v10[2] = v13;
  __chkstk_darwin(v10);
  *(&v15 - 2) = v1;
  *(&v15 - 1) = v17;
  sub_100051998(v1, v16);
  sub_100004CB8(&qword_100635688);
  sub_100042B08(&qword_100635690, &qword_100635688);
  sub_1004DBA2C();
  return sub_100008D24(v17);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1004D9C4C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1004D9C7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_10004FE08()
{
  sub_100008DE4(&qword_1006353A8);
  sub_10004C920();
  swift_getOpaqueTypeMetadata2();
  sub_1004DAAEC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10004FEE0()
{
  sub_100008DE4(&qword_1006353A8);
  sub_10004C920();
  swift_getOpaqueTypeMetadata2();
  sub_1004DAAEC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10004FFCC()
{
  sub_100008DE4(&qword_1006353E0);
  sub_10004DCB8();
  sub_1004DB15C();
  sub_100008DE4(&qword_1006353D8);
  sub_1004DA32C();
  swift_getWitnessTable();
  sub_100042B08(&qword_1006353D0, &qword_1006353D8);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100050104(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006354B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000501D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_1006354B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100050284()
{
  type metadata accessor for ActionMenu();
  if (v0 <= 0x3F)
  {
    sub_100050340();
    if (v1 <= 0x3F)
    {
      sub_1000503A4();
      if (v2 <= 0x3F)
      {
        sub_100050438();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100050340()
{
  if (!qword_100635520)
  {
    sub_100008DE4(&qword_100634FA0);
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_100635520);
    }
  }
}

void sub_1000503A4()
{
  if (!qword_100635528)
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding);
    v0 = sub_1004DA4DC();
    if (!v1)
    {
      atomic_store(v0, &qword_100635528);
    }
  }
}

void sub_100050438()
{
  if (!qword_100635530)
  {
    sub_1004DA25C();
    v0 = sub_1004D9DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_100635530);
    }
  }
}

uint64_t sub_1000504B8(_OWORD *a1)
{
  v2 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_1004DDA8C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004DDA4C();
  sub_100051998(a1, v12);
  v6 = sub_1004DDA3C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v8;
  v9 = a1[5];
  *(v7 + 96) = a1[4];
  *(v7 + 112) = v9;
  v10 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  sub_10021C658(0, 0, v4, &unk_1005167C0, v7);
}

uint64_t sub_1000505F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1004DDA4C();
  v4[4] = sub_1004DDA3C();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_100050704;

  return v8();
}

uint64_t sub_100050704()
{
  *(*v1 + 48) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_1000508E0;
  }

  else
  {
    v4 = sub_100050860;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100050860()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000508E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050944()
{
  sub_100004CB8(&qword_100635698);
  sub_100004CB8(&qword_1006356A0);
  sub_100051C08();
  sub_100051D38();
  return sub_1004DB96C();
}

uint64_t sub_100050A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006356B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_100004CB8(&qword_1006356D0);
  sub_100042B08(&qword_1006356D8, &qword_1006356D0);
  sub_1004D9C9C();
  v12 = *(a1 + 80);
  sub_100042B08(&qword_1006356B0, &qword_1006356B8);
  sub_100030C58();
  sub_1004DB55C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100050BC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  sub_100008C70(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    sub_100008C70(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_100030C58();
  v9 = sub_1004DB34C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_100008C70(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = sub_1004DB34C();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_100051E00(v9, v11, v13 & 1);

  sub_100051E00(v18, v20, v16);

  sub_100051E10(v18, v20, v16);

  sub_100051E10(v9, v11, v13 & 1);
}

uint64_t sub_100050D98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  sub_100008C70(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v9 = v8;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    sub_100008C70(a2, v6);
  }

  result = (*(v7 + 32))(v6, v7);
  v9 = result;
  if (!result)
  {
    v12 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v12 = v9(v11);
  sub_100051DB4(v9);

LABEL_8:
  *a3 = v12;
  return result;
}

uint64_t sub_100050F04(uint64_t a1)
{
  v2 = sub_1004DA25C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1004DA56C();
}

uint64_t sub_100050FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051038()
{
  v1 = type metadata accessor for ActionMenuView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 16))
  {
  }

  v3 = *(v1 + 32);
  sub_100004CB8(&qword_1006355C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004DA25C();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100051184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000511E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004F0F4(a1, (v2 + v6), v7, a2);
}

unint64_t sub_100051294()
{
  result = qword_1006355E8;
  if (!qword_1006355E8)
  {
    sub_100008DE4(&qword_1006355D8);
    sub_100051350();
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006355E8);
  }

  return result;
}

unint64_t sub_100051350()
{
  result = qword_1006355F0;
  if (!qword_1006355F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006355F0);
  }

  return result;
}

unint64_t sub_1000513AC()
{
  result = qword_100635600;
  if (!qword_100635600)
  {
    sub_100008DE4(&qword_1006355F8);
    sub_100042B08(&qword_100635608, &qword_100635610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635600);
  }

  return result;
}

unint64_t sub_100051464()
{
  result = qword_100635618;
  if (!qword_100635618)
  {
    sub_100008DE4(&qword_1006355B8);
    sub_1000514F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635618);
  }

  return result;
}

unint64_t sub_1000514F0()
{
  result = qword_100635620;
  if (!qword_100635620)
  {
    sub_100008DE4(&qword_100635628);
    sub_100051294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635620);
  }

  return result;
}

unint64_t sub_100051574()
{
  result = qword_100635640;
  if (!qword_100635640)
  {
    sub_100008DE4(&qword_1006355B0);
    sub_100042B08(&qword_100635630, &qword_100635580);
    sub_100042B08(&qword_100635638, &qword_100635570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635640);
  }

  return result;
}

uint64_t sub_100051658@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DA74C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_1006355C8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000108DC(v2, &v14 - v9, &qword_1006355C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004DA25C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100051890@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1004DB8DC();
  *a1 = result;
  return result;
}

uint64_t sub_1000518C0(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_10005193C(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100051A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100051A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100051A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100051AE0()
{
  result = qword_100635670;
  if (!qword_100635670)
  {
    sub_100008DE4(&qword_100635678);
    sub_100051574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635670);
  }

  return result;
}

uint64_t sub_100051B88()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100051C08()
{
  result = qword_1006356A8;
  if (!qword_1006356A8)
  {
    sub_100008DE4(&qword_100635698);
    sub_100042B08(&qword_1006356B0, &qword_1006356B8);
    sub_100051CF0(&qword_1006356C0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006356A8);
  }

  return result;
}

uint64_t sub_100051CF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100051D38()
{
  result = qword_1006356C8;
  if (!qword_1006356C8)
  {
    sub_100008DE4(&qword_1006356A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006356C8);
  }

  return result;
}

uint64_t sub_100051DB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100051E00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100051E10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100051E20()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100051E88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_1000505F8(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  v8 = ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  v9 = *(v8 + 16);
  if (v9)
  {
    v36 = v6;
    v39 = _swiftEmptyArrayStorage;
    sub_1004DEBCC();
    v10 = 32;
    v11 = v9;
    do
    {
      v12 = *(v8 + v10);
      v13 = *(v8 + v10 + 16);
      v14 = *(v8 + v10 + 32);
      v41 = *(v8 + v10 + 48);
      v40[1] = v13;
      v40[2] = v14;
      v40[0] = v12;
      sub_1000532D4(v40, v38);
      v15._rawValue = excluding._rawValue;
      sub_100052328(v4, v9, v15, includeUnsupported);
      sub_100053330(v40);
      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
      v10 += 56;
      --v11;
    }

    while (v11);

    v16 = v39;
    v6 = v36;
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v38[0] = _swiftEmptyArrayStorage;
  v18 = v16[2];
  while (v18 != v17)
  {
    if (v17 >= v16[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_1004DED5C())
      {
        goto LABEL_29;
      }

LABEL_15:
      v22 = *(v4 + 32);
      v37 = MenuType.title.getter(*(v4 + 32));
      v24 = v23;
      v25 = MenuType.image.getter(v22);
      v26 = (MenuType.style.getter(v22) & 1) == 0;
      if (v17)
      {
        v27 = sub_1004DED5C();
      }

      else
      {
        v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v22) == 0x7463416B63697571 && v28 == 0xEB000000006E6F69)
      {

        if (v27 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v30 = 1;
      }

      else
      {
        v29 = sub_1004DF08C();

        if ((v29 & 1) != 0 && v27 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v30 = 2;
      }

      sub_100006F10(0, &qword_1006350E8);
      v44._countAndFlagsBits = v37;
      v44._object = v24;
      v45.value._countAndFlagsBits = 0;
      v45.value._object = 0;
      v43.value.super.isa = v25;
      v43.is_nil = 0;
      v31.value = v26;
      v32.super.super.isa = sub_1004DE4AC(v44, v45, v43, v31, v30, v7, v35).super.super.isa;

      goto LABEL_30;
    }

    v19 = v16[v17++ + 4];
    if (v19)
    {
      v20 = v19;
      sub_1004DD84C();
      if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
      v7 = v38[0];
    }
  }

  v6(v21);
  v17 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v32.super.super.isa = 0;
LABEL_30:
  isa = v32.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v33;
  return result;
}

id sub_100052328(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      sub_1004DEAAC(20);

      v80 = 0xD000000000000012;
      v81 = 0x80000001004EA290;
      sub_1004DD5FC(v14[1]);
      if (qword_100633E98 != -1)
      {
        swift_once();
      }

      v80 = qword_10063CF40;
      v81 = *algn_10063CF48;

      v84._countAndFlagsBits = 46;
      v84._object = 0xE100000000000000;
      sub_1004DD5FC(v84);

      v85._countAndFlagsBits = 0xD000000000000012;
      v85._object = 0x80000001004EA290;
      sub_1004DD5FC(v85);

      v18 = sub_1004DD3FC();

      [v17 setAccessibilityIdentifier:v18];
    }

    return v16;
  }

  v76 = v4[5];
  v77 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v74 = v4[1];
  v75 = v4[2];
  v74(&v80, a1, a2, excluding._rawValue);
  v12 = MenuType.rawValue.getter(*(a1 + 32)) == 0x7463416B63697571 && v11 == 0xEB000000006E6F69;
  v78 = v6;
  if (v12)
  {

    if (a4)
    {
LABEL_16:
      v21 = 0;
LABEL_17:
      v22 = v82;
      v23 = v83;
      sub_100008C70(&v80, v82);
      v24 = (*(v23 + 32))(v22, v23);
      v26 = v25;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1004DF08C();

    if (v13 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_1004DE2CC();
  if (v19)
  {
    goto LABEL_16;
  }

  v37 = v82;
  v38 = v83;
  sub_100008C70(&v80, v82);
  v39 = (*(v38 + 40))(v37, v38);
  if (!v39)
  {
    v21 = 1;
    goto LABEL_17;
  }

  v24 = v39;
  v26 = v40;
  v21 = 1;
LABEL_18:
  v27 = v10();
  if (v28 == 1)
  {
    v29 = 0;
  }

  else
  {
    sub_1000354D0(v27, v28);
    v29 = 1;
  }

  v30 = v82;
  v31 = v83;
  sub_100008C70(&v80, v82);
  v32 = (*(v31 + 48))(v30, v31);
  v33 = v29 | 2;
  if ((v32 & 1) == 0)
  {
    v33 = v29;
  }

  v73 = v33;
  if (a2 <= 2)
  {
    v21 = 0;
  }

  v34 = v82;
  v35 = v83;
  sub_100008C70(&v80, v82);
  if (v21 != 1)
  {
    goto LABEL_31;
  }

  (*(v35 + 16))(v34, v35);
  if (!v36)
  {
    v34 = v82;
    v35 = v83;
    sub_100008C70(&v80, v82);
LABEL_31:
    (*(v35 + 8))(v34, v35);
  }

  v41 = v10;
  v42 = v82;
  v43 = v83;
  sub_100008C70(&v80, v82);
  (*(v43 + 24))(v42, v43);
  v44 = v9;
  if (v24)
  {

    v26(v45);
  }

  sub_100006F10(0, &qword_1006350D0);
  v46 = v82;
  v47 = v83;
  sub_100008C70(&v80, v82);
  v48 = (*(v47 + 56))(v46, v47);
  v49 = swift_allocObject();
  v49[2] = v78;
  v49[3] = v74;
  v49[4] = v75;
  v49[5] = v41;
  v49[6] = v44;
  v49[7] = v76;
  v49[8] = v77;

  v72 = v49;
  v71 = v48;
  v50 = sub_1004DE62C();
  v51 = v82;
  v52 = v83;
  sub_100008C70(&v80, v82);
  v53 = *(v52 + 8);
  v16 = v50;
  v53(v51, v52);
  v79[0] = v54;
  v55 = v82;
  v56 = v83;
  sub_100008C70(&v80, v82);
  v57 = (*(v56 + 24))(v55, v56);
  v58 = 0;
  v79[1] = v57;
  v79[2] = v59;
  v60 = _swiftEmptyArrayStorage;
LABEL_35:
  v61 = &v79[2 * v58];
  while (++v58 != 3)
  {
    v62 = v61 + 2;
    v63 = *v61;
    v61 += 2;
    if (v63)
    {
      v64 = *(v62 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_10003A134(0, *(v60 + 2) + 1, 1, v60);
      }

      v66 = *(v60 + 2);
      v65 = *(v60 + 3);
      if (v66 >= v65 >> 1)
      {
        v60 = sub_10003A134((v65 > 1), v66 + 1, 1, v60);
      }

      *(v60 + 2) = v66 + 1;
      v67 = &v60[16 * v66];
      *(v67 + 4) = v64;
      *(v67 + 5) = v63;
      goto LABEL_35;
    }
  }

  sub_100004CB8(&unk_100639EB0);
  swift_arrayDestroy();
  sub_100004CB8(&unk_1006372E0);
  sub_1000533D4();
  sub_1004DD30C();

  v68 = sub_1004DD3FC();

  [v16 setAccessibilityLabel:{v68, 0, v73, v71, sub_1000533CC, v72}];

  sub_1004DEAAC(20);

  v86._countAndFlagsBits = ActionType.rawValue.getter(v78);
  sub_1004DD5FC(v86);

  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v87._countAndFlagsBits = 46;
  v87._object = 0xE100000000000000;
  sub_1004DD5FC(v87);

  v88._countAndFlagsBits = 0xD000000000000012;
  v88._object = 0x80000001004EA290;
  sub_1004DD5FC(v88);

  v69 = sub_1004DD3FC();

  [v16 setAccessibilityIdentifier:v69];
  sub_100051DB4(v24);

  sub_100008D24(&v80);
  return v16;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  v7 = ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v6;
  v9 = *(v7 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v39 = v6;
    v42 = _swiftEmptyArrayStorage;
    sub_1004DEBCC();
    v11 = 32;
    v12 = v9;
    do
    {
      v13 = *(v7 + v11);
      v14 = *(v7 + v11 + 16);
      v15 = *(v7 + v11 + 32);
      v44 = *(v7 + v11 + 48);
      v43[1] = v14;
      v43[2] = v15;
      v43[0] = v13;
      sub_1000532D4(v43, v41);
      v16._rawValue = excluding._rawValue;
      sub_100052328(v2, v9, v16);
      sub_100053330(v43);
      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v42;
    v8 = v39;
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v41[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_1004DED5C())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v2 + 32);
      v24 = MenuType.title.getter(*(v2 + 32));
      v26 = v25;
      v28 = *(v3 + 40);
      v27 = *(v3 + 48);

      v29 = MenuType.image.getter(v23);
      v30 = (MenuType.style.getter(v23) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v18)
        {
          v40 = sub_1004DED5C();
        }

        else
        {
          v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v23) == 0x7463416B63697571 && v31 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v32 = sub_1004DF08C();

        if (v32)
        {
LABEL_23:
          if (v40 > 1)
          {
            v33 = 1;
LABEL_26:
            sub_100006F10(0, &qword_1006350E8);
            v47._countAndFlagsBits = v24;
            v47._object = v26;
            v48.value._countAndFlagsBits = v28;
            v48.value._object = v27;
            v46.value.super.isa = v29;
            v46.is_nil = 0;
            v34.value = v30;
            v35.super.super.isa = sub_1004DE4AC(v47, v48, v46, v34, v33, v10, v38).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v33 = 2;
      goto LABEL_26;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      sub_1004DD84C();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
      v10 = v41[0];
    }
  }

  v8(v22);
  v18 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v35.super.super.isa = 0;
LABEL_30:
  isa = v35.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v36;
  return result;
}

uint64_t sub_100052EAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1004DDA8C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1004DDA4C();

  v7 = sub_1004DDA3C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = *(a2 + 48);
  sub_10021C658(0, 0, v5, &unk_1005167D8, v8);
}

uint64_t sub_10005300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1004DDA4C();
  v4[3] = sub_1004DDA3C();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100053114;

  return v8();
}

uint64_t sub_100053114()
{
  *(*v1 + 40) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_100053270;
  }

  else
  {
    v4 = sub_1000333D8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100053270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053384()
{

  return swift_deallocObject();
}

unint64_t sub_1000533D4()
{
  result = qword_100637D70;
  if (!qword_100637D70)
  {
    sub_100008DE4(&unk_1006372E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637D70);
  }

  return result;
}

uint64_t sub_100053438()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100053488(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_10005300C(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1004DF08C();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v138 = sub_1004D82AC();
  v6 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = 0;
  v141 = 0xE000000000000000;
  v143._countAndFlagsBits = 8254;
  v143._object = 0xE200000000000000;
  sub_1004DD5FC(v143);
  v8 = v2[1];
  v142[0] = *v2;
  v142[1] = v8;
  v142[2] = v2[2];
  sub_1004DEC6C();
  v9 = v140;
  v10 = v141;
  v11 = sub_10003A134(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v15 = swift_allocObject();
    *(v11 + 16) = v14;
    v16 = v11 + 16 * v13;
    *(v16 + 32) = v9;
    *(v16 + 40) = v10;
    v15[2] = v11;
    v17 = (v15 + 2);
    v18 = (*(v3 + 32))();

    v19 = sub_10005E25C(v18, v15 + 2, a1, a2 & 1);

    if (!*(v19 + 16))
    {
      if (!*(*v17 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_10005EA78(1uLL, 1, 0xD00000000000001CLL, 0x80000001004EA2B0);
    }

    v119 = v15;
    *&v142[0] = v19;
    v118 = v19;

    sub_10005D330(v142);
    v117[1] = 0;
    v13 = 0x654D6E6F69746341;
    v122 = *&v142[0];
    sub_100004CB8(&qword_100635708);
    inited = swift_initStackObject();
    v132 = xmmword_100511DA0;
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = 0;
    v10 = inited + 32;
    v21 = *(v3 + 16);
    v15 = *(v3 + 24);

    v9 = v137;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v14 = sub_1004D827C();
    v23 = v22;
    v24 = v6[1];
    v136 = v6 + 1;
    v134 = v24;
    v24(v9, v138);
    v133 = type metadata accessor for ActionMenu();
    v25 = swift_allocObject();
    *(v25 + 88) = 0;
    *(v25 + 96) = 0;
    *(v25 + 16) = v14;
    *(v25 + 24) = v23;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    strcpy(v142, "ActionMenu: ");
    BYTE13(v142[0]) = 0;
    HIWORD(v142[0]) = -5120;

    v11 = v142;
    v135 = v21;
    v144._countAndFlagsBits = v21;
    v144._object = v15;
    sub_1004DD5FC(v144);

    v26 = *(&v142[0] + 1);
    *(v25 + 56) = *&v142[0];
    *(v25 + 64) = v26;
    *(v25 + 80) = _swiftEmptyArrayStorage;
    *(v25 + 72) = 1;
    *(inited + 40) = v25;
    v6 = sub_10005EB54(inited);
    swift_setDeallocating();
    a1 = v122;
    sub_10005EC48(inited + 32);
    v121 = *(a1 + 16);
    if (!v121)
    {
      break;
    }

    v3 = 0;
    v120 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v12 = *(a1 + 16);
      if (v3 >= v12)
      {
        break;
      }

      v27 = (v120 + 56 * v3);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v10 = v27[3];
      v9 = v27[4];
      v31 = v27[5];
      v13 = v27[6];
      if (*v27 < 0)
      {
        v32 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v32 - 1) >= 0xA)
        {
          if (!*((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v32 == 11)
          {
            v11 = 4;
          }

          else
          {
            v11 = 6;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = byte_100516C8A[v28];
      }

      v14 = v6[2];
      v129 = v28;
      v130 = v29;
      v131 = v30;
      v33 = v31;
      sub_1000518C0(v28);
      v34 = v33;
      v128 = v13;
      if (!v14 || (v14 = v11, v35 = sub_100056B9C(v11), v34 = v33, (v36 & 1) == 0))
      {
        v125 = v3;
        v127 = v9;
        v126 = v11;
        if ((v11 - 1) >= 0xA)
        {
          if (v11)
          {
            v42 = v34;
            v43 = v10;
            v45 = 0;
            if (v11 == 11)
            {
              v44 = 4;
            }

            else
            {
              v44 = 6;
            }

            goto LABEL_24;
          }

          sub_10005ECB0(v129);
          goto LABEL_8;
        }

        v42 = v34;
        v43 = v10;
        v44 = 0;
        v45 = 1;
LABEL_24:
        v46 = sub_100004CB8(&unk_1006351C0);
        v47 = swift_allocObject();
        *(v47 + 16) = v132;
        v48 = v130;
        *(v47 + 32) = v129;
        *(v47 + 40) = v48;
        *(v47 + 48) = v131;
        *(v47 + 56) = v43;
        *(v47 + 64) = v127;
        *(v47 + 72) = v42;
        v49 = v128;
        *(v47 + 80) = v128;

        v123 = v43;
        v13 = v49;
        v124 = v42;
        sub_1000518C0(v129);
        v50 = v137;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v51 = sub_1004D827C();
        v53 = v52;
        v134(v50, v138);
        v54 = swift_allocObject();
        *(v54 + 88) = 0;
        *(v54 + 96) = 0;
        *(v54 + 16) = v51;
        *(v54 + 24) = v53;
        v55 = v126;
        *(v54 + 32) = v126;
        *(v54 + 40) = 0;
        *(v54 + 48) = 0;
        strcpy(v142, "ActionMenu: ");
        BYTE13(v142[0]) = 0;
        HIWORD(v142[0]) = -5120;
        v145._countAndFlagsBits = v135;
        v145._object = v15;
        sub_1004DD5FC(v145);

        v56 = *(&v142[0] + 1);
        *(v54 + 56) = *&v142[0];
        *(v54 + 64) = v56;
        *(v54 + 80) = v47;
        *(v54 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v142[0] = v6;
        sub_10005A3EC(v54, v55, isUniquelyReferenced_nonNull_native);
        v6 = *&v142[0];
        if (*(*&v142[0] + 16))
        {
          v58 = sub_100056B9C(v44);
          if (v59)
          {
LABEL_40:
            v11 = *(v6[7] + 8 * v58);

            swift_beginAccess();
            v14 = *(v11 + 80);
            v79 = swift_isUniquelyReferenced_nonNull_native();
            *(v11 + 80) = v14;
            a1 = v122;
            v10 = v123;
            if ((v79 & 1) == 0)
            {
              v14 = sub_10003A240(0, *(v14 + 16) + 1, 1, v14);
              *(v11 + 80) = v14;
            }

            v9 = *(v14 + 16);
            v80 = *(v14 + 24);
            if (v9 >= v80 >> 1)
            {
              v14 = sub_10003A240((v80 > 1), v9 + 1, 1, v14);
            }

            *(v14 + 16) = v9 + 1;
            a2 = 56;
            v81 = v14 + 56 * v9;
            *(v81 + 32) = v54 | 0x8000000000000000;
            *(v81 + 40) = 0u;
            *(v81 + 56) = 0u;
            *(v81 + 72) = 0u;
            *(v11 + 80) = v14;
            swift_endAccess();

            sub_10005ECB0(v129);

            v3 = v125;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v60 = swift_allocObject();
            *(v60 + 16) = v132;
            *(v60 + 32) = v54 | 0x8000000000000000;
            *(v60 + 40) = 0u;
            *(v60 + 56) = 0u;
            *(v60 + 72) = 0u;

            v61 = v137;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v62 = sub_1004D827C();
            v64 = v63;
            v134(v61, v138);
            v54 = swift_allocObject();
            *(v54 + 88) = 0;
            *(v54 + 96) = 0;
            *(v54 + 16) = v62;
            *(v54 + 24) = v64;
            *(v54 + 32) = v44;
            *(v54 + 40) = 0;
            *(v54 + 48) = 0;
            strcpy(v142, "ActionMenu: ");
            BYTE13(v142[0]) = 0;
            HIWORD(v142[0]) = -5120;
            v146._countAndFlagsBits = v135;
            v146._object = v15;
            sub_1004DD5FC(v146);

            v65 = *(&v142[0] + 1);
            *(v54 + 56) = *&v142[0];
            *(v54 + 64) = v65;
            *(v54 + 80) = v60;
            *(v54 + 72) = 1;

            v66 = swift_isUniquelyReferenced_nonNull_native();
            *&v142[0] = v6;
            v67 = sub_100056B9C(v44);
            v69 = v6[2];
            v70 = (v68 & 1) == 0;
            v71 = __OFADD__(v69, v70);
            v72 = v69 + v70;
            if (v71)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v88 = sub_100056B9C(0);
                if (v89)
                {
                  v10 = *(v6[7] + 8 * v88);
                  v90 = *(v46 + 80);

                  v91 = v137;
                  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                  v92 = sub_1004D827C();
                  v94 = v93;
                  v134(v91, v138);
                  v95 = swift_allocObject();
                  *(v95 + 88) = 0;
                  *(v95 + 96) = 0;
                  *(v95 + 16) = v92;
                  *(v95 + 24) = v94;
                  *(v95 + 32) = 6;
                  *(v95 + 40) = 0;
                  *(v95 + 48) = 0;
                  strcpy(v142, "ActionMenu: ");
                  BYTE13(v142[0]) = 0;
                  HIWORD(v142[0]) = -5120;

                  v147._countAndFlagsBits = v135;
                  v147._object = v15;
                  sub_1004DD5FC(v147);

                  v96 = *(&v142[0] + 1);
                  *(v95 + 56) = *&v142[0];
                  *(v95 + 64) = v96;
                  *(v95 + 80) = v90;
                  *(v95 + 72) = 1;
                  v19 = v95 | 0x8000000000000000;
                  swift_beginAccess();
                  v17 = *(v10 + 80);
                  v97 = swift_isUniquelyReferenced_nonNull_native();
                  *(v10 + 80) = v17;
                  if (v97)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v73 = v68;
            if (v6[3] < v72)
            {
              sub_1000578C4(v72, v66);
              v67 = sub_100056B9C(v44);
              if ((v73 & 1) != (v74 & 1))
              {
                sub_1004DF16C();
                __break(1u);

                __break(1u);
                JUMPOUT(0x100054740);
              }

              goto LABEL_31;
            }

            if (v66)
            {
LABEL_31:
              v6 = *&v142[0];
              if (v73)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v75 = v67;
              sub_10005B918();
              v67 = v75;
              v6 = *&v142[0];
              if (v73)
              {
LABEL_32:
                *(v6[7] + 8 * v67) = v54;

                if (v45)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v58 = sub_100056B9C(0);
                  if (v78)
                  {
                    v13 = v128;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v67 >> 6) + 8] |= 1 << v67;
          *(v6[6] + v67) = v44;
          *(v6[7] + 8 * v67) = v54;
          v76 = v6[2];
          v71 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v71)
          {
            goto LABEL_60;
          }

          v6[2] = v77;
          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v13 = v10;
      v11 = *(v6[7] + 8 * v35);
      swift_beginAccess();
      v14 = *(v11 + 80);

      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 80) = v14;
      v10 = v9;
      if ((v37 & 1) == 0)
      {
        v14 = sub_10003A240(0, *(v14 + 16) + 1, 1, v14);
        *(v11 + 80) = v14;
      }

      v9 = *(v14 + 16);
      v38 = *(v14 + 24);
      v39 = v131;
      v40 = v130;
      if (v9 >= v38 >> 1)
      {
        v82 = sub_10003A240((v38 > 1), v9 + 1, 1, v14);
        v40 = v130;
        v39 = v131;
        v14 = v82;
      }

      *(v14 + 16) = v9 + 1;
      a2 = 56;
      v41 = (v14 + 56 * v9);
      v41[4] = v129;
      v41[5] = v40;
      v41[6] = v39;
      v41[7] = v13;
      v41[8] = v10;
      v41[9] = v33;
      v41[10] = v128;
      *(v11 + 80) = v14;
      swift_endAccess();

LABEL_8:
      a1 = v122;
LABEL_9:
      if (++v3 == v121)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v11 = sub_10003A134((v12 > 1), v14, 1, v11);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v83 = sub_100056B9C(12);
  if (v84)
  {
    v46 = *(v6[7] + 8 * v83);
    swift_beginAccess();
    if (*(*(v46 + 80) + 16) <= 2uLL)
    {
      v85 = v6[2];

      if (v85)
      {
        sub_100056B9C(6);
        if ((v86 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_100044FD0(v87);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v101 = sub_100056B9C(6);
          if ((v102 & 1) == 0)
          {
            break;
          }

          v17 = *(v6[7] + 8 * v101);
          swift_beginAccess();
          v103 = *(v17 + 10);
          v19 = *(v103 + 16);
          if (!v19)
          {
            break;
          }

          v10 = 0;
          v104 = 32;
          while (v10 < *(v103 + 16))
          {
            v106 = *(v103 + v104);
            if (v106 < 0)
            {
              v17 = 0xE800000000000000;
              switch(*((v106 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v17 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v17 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v17 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v17 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v17 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v17 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v17 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v17 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v17 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v105 = sub_1004DF08C();

                  if ((v105 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_100056B9C(6);
                    if (v107)
                    {
                      swift_beginAccess();

                      sub_100054FC0(v10, v142);
                      swift_endAccess();
                      sub_100053330(v142);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v10;
            v104 += 56;
            if (v19 == v10)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v17 = sub_10003A240(0, *(v17 + 2) + 1, 1, v17);
          *(v10 + 80) = v17;
LABEL_64:
          v99 = *(v17 + 2);
          v98 = *(v17 + 3);
          if (v99 >= v98 >> 1)
          {
            v17 = sub_10003A240((v98 > 1), v99 + 1, 1, v17);
          }

          *(v17 + 2) = v99 + 1;
          v100 = &v17[56 * v99];
          *(v100 + 4) = v19;
          *(v100 + 40) = 0u;
          *(v100 + 56) = 0u;
          *(v100 + 72) = 0u;
          *(v10 + 80) = v17;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v108 = sub_100056B9C(0), (v109 & 1) != 0))
  {
    v110 = *(v6[7] + 8 * v108);
  }

  else
  {
LABEL_97:
    v111 = v137;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v112 = sub_1004D827C();
    v114 = v113;
    v134(v111, v138);
    v110 = swift_allocObject();
    *(v110 + 88) = 0;
    *(v110 + 96) = 0;
    *(v110 + 16) = v112;
    *(v110 + 24) = v114;
    *(v110 + 32) = 0;
    *(v110 + 40) = 0;
    *(v110 + 48) = 0;
    strcpy(v139, "ActionMenu: ");
    BYTE5(v139[1]) = 0;
    HIWORD(v139[1]) = -5120;
    v148._countAndFlagsBits = v135;
    v148._object = v15;
    sub_1004DD5FC(v148);

    v115 = v139[1];
    *(v110 + 56) = v139[0];
    *(v110 + 64) = v115;
    *(v110 + 80) = v118;
    *(v110 + 72) = 1;
  }

  return v110;
}

uint64_t ActionMenuBuilder.init(id:debugDescription:actionBuilder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a4)
  {
    v12 = a4;
  }

  else
  {

    a3 = a1;
    v12 = a2;
  }

  v17._countAndFlagsBits = a3;
  v17._object = v12;
  sub_1004DD5FC(v17);

  v14 = v16[0];
  v15 = v16[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = v14;
  a7[3] = v15;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double sub_100054828@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v45 = a1[1];
    v34 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v35 = sub_100035920();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v35);
    }

    else
    {
      v39 = sub_1000358CC();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v39);
    }

    a3 = v34;
    v7 = v45;
    if ((v36 & 1) == 0)
    {
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      sub_1004DEAAC(29);

      v56._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004DD5FC(v56);

      v57._object = 0x80000001004EA3B0;
      v57._countAndFlagsBits = 0xD000000000000017;
      sub_1004DD5FC(v57);
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v16 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v14 = sub_10003A134((v16 > 1), v17 + 1, 1, v14);
      *a2 = v14;
      goto LABEL_39;
    }
  }

  if (!sub_1001B3E90(v6, a3))
  {
    v43 = a2;
    v44 = v7;
    v42 = v8;
    v19 = v9();
    if (v20 == 1)
    {
      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004DD5FC(v49);

      v21 = *a2;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_10003A134(0, *(v21 + 2) + 1, 1, v21);
        *a2 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_10003A134((v23 > 1), v24 + 1, 1, v21);
        *a2 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = 0x20939CE22020;
      *(v25 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v42;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    else
    {
      v26 = v19;
      v27 = v20;
      if ((a4 & 1) == 0)
      {
        v53._countAndFlagsBits = ActionType.rawValue.getter(v6);
        sub_1004DD5FC(v53);

        v54._countAndFlagsBits = 2108704;
        v54._object = 0xE300000000000000;
        sub_1004DD5FC(v54);
        if (!v27)
        {
          sub_1000354D0(v26, 0);
          v27 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
        }

        v55._countAndFlagsBits = v26;
        v55._object = v27;
        sub_1004DD5FC(v55);

        v14 = *v43;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v14;
        if ((v37 & 1) == 0)
        {
          v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
          *v43 = v14;
        }

        v17 = *(v14 + 2);
        v38 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 >= v38 >> 1)
        {
          v14 = sub_10003A134((v38 > 1), v17 + 1, 1, v14);
          *v43 = v14;
        }

        goto LABEL_39;
      }

      sub_1004DEAAC(44);

      v50._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004DD5FC(v50);

      v51._countAndFlagsBits = 0xD000000000000022;
      v51._object = 0x80000001004EA380;
      sub_1004DD5FC(v51);
      if (!v27)
      {
        sub_1000354D0(v26, 0);
        v27 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v52._countAndFlagsBits = v26;
      v52._object = v27;
      sub_1004DD5FC(v52);

      v28 = *v43;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_10003A134(0, *(v28 + 2) + 1, 1, v28);
        *v43 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_10003A134((v30 > 1), v31 + 1, 1, v28);
        *v43 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[16 * v31];
      *(v32 + 4) = 0x20939CE22020;
      *(v32 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    return result;
  }

  sub_1004DEAAC(17);

  v47._countAndFlagsBits = ActionType.rawValue.getter(v6);
  sub_1004DD5FC(v47);

  v48._countAndFlagsBits = 0x756C637865202D20;
  v48._object = 0xEB00000000646564;
  sub_1004DD5FC(v48);
  v14 = *a2;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((v15 & 1) == 0)
  {
    v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
    *a2 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v14 + 2) = v18;
  v41 = &v14[16 * v17];
  *(v41 + 4) = 544743456;
  *(v41 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v20, "ActionMenu: ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v21._countAndFlagsBits = a6;
  v21._object = a2;
  sub_1004DD5FC(v21);

  v18 = v20[1];
  *(v17 + 56) = v20[0];
  *(v17 + 64) = v18;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_100054FC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005D290(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_100055094(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005D2CC(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100055120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005D2E0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_100060260(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000551D0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_10005525C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a2;

    a6 = a1;
  }

  v17._countAndFlagsBits = a6;
  v17._object = v12;
  sub_1004DD5FC(v17);

  v14 = v16[1];
  *(v10 + 56) = v16[0];
  *(v10 + 64) = v14;
  *(v10 + 80) = a8;
  *(v10 + 72) = a9 & 1;
  return v10;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v22._countAndFlagsBits = a6;
  v22._object = a2;
  sub_1004DD5FC(v22);

  v18 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v18;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  strcpy(v18, "ActionMenu: ");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a2;

    a6 = a1;
  }

  v19._countAndFlagsBits = a6;
  v19._object = v13;
  sub_1004DD5FC(v19);

  v15 = v18[1];
  *(v11 + 56) = v18[0];
  *(v11 + 64) = v15;
  *(v11 + 72) = a8 & 1;
  v16 = *(v11 + 88);
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;

  sub_10000DE74(v16);

  *(v11 + 80) = _swiftEmptyArrayStorage;
  return v11;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = 0;
  v51 = 0xE000000000000000;
  v60._countAndFlagsBits = 8254;
  v60._object = 0xE200000000000000;
  sub_1004DD5FC(v60);
  v59 = v2;
  type metadata accessor for ActionMenu();
  sub_1004DEC6C();
  v4 = 0;
  v5 = 0xE000000000000000;
  v6 = sub_10003A134(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = (v8 + 1);
  if (v8 >= v7 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v10 = swift_allocObject();
    *(v6 + 2) = v9;
    v11 = &v6[16 * v8];
    *(v11 + 4) = v4;
    *(v11 + 5) = v5;
    *(v10 + 16) = v6;
    v46 = (v10 + 16);
    v12 = *(v3 + 88);
    if (v12)
    {

      v14 = v12(v13);
      sub_10000DE74(v12);
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v42 = v3;
    v50 = v14;

    sub_100044FD0(v15);
    v8 = v50;
    v58 = &_swiftEmptySetSingleton;
    v16 = *(v50 + 2);

    v45 = v16;
    if (!v16)
    {
      break;
    }

    v17 = 0;
    v4 = 0;
    v6 = (v8 + 40);
    v9 = _swiftEmptyArrayStorage;
    v44 = v8;
    while (1)
    {
      v7 = *(v8 + 16);
      if (v17 >= v7)
      {
        break;
      }

      v49 = v17;
      v19 = *(v6 - 1);
      v18 = *v6;
      v5 = *(v6 + 1);
      v3 = *(v6 + 2);
      v20 = *(v6 + 3);
      v21 = *(v6 + 4);
      v22 = *(v6 + 5);
      v50 = v19;
      v51 = v18;
      v52 = v5;
      v53 = v3;
      v54 = v20;
      v55 = v21;
      v56 = v22;
      sub_1000518C0(v19);
      if (sub_1000559DC(&v50, v46, a1, a2 & 1, &v58))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v9;
        v43 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000374AC(0, *(v9 + 2) + 1, 1);
          v9 = v57;
        }

        v24 = v5;
        v25 = v18;
        v26 = v3;
        v27 = v20;
        v28 = v21;
        v29 = v22;
        v30 = v19;
        v32 = *(v9 + 2);
        v31 = *(v9 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          sub_1000374AC((v31 > 1), v32 + 1, 1);
          v33 = v32 + 1;
          v30 = v19;
          v29 = v22;
          v28 = v21;
          v27 = v20;
          v26 = v3;
          v25 = v18;
          v24 = v5;
          v9 = v57;
        }

        *(v9 + 2) = v33;
        v34 = &v9[56 * v32];
        *(v34 + 4) = v30;
        *(v34 + 5) = v25;
        *(v34 + 6) = v24;
        *(v34 + 7) = v26;
        *(v34 + 8) = v27;
        *(v34 + 9) = v28;
        *(v34 + 10) = v29;
        v4 = v43;
      }

      else
      {
        sub_10005ECB0(v19);
      }

      v17 = v49 + 1;
      v6 += 56;
      v8 = v44;
      if (v45 == v49 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v6 = sub_10003A134((v7 > 1), v9, 1, v6);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_17:
  v35 = v9;

  if (a2)
  {
    v37 = v9;
    v38 = v46;
    v39 = sub_10005E788(v37, v46, &v58);

    v35 = v39;
    v40 = v42;
    if (*(v35 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v40 = v42;
    v38 = v46;
    if (*(v35 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v38 + 2))
  {
    __break(1u);
    return result;
  }

  sub_10005EA78(1uLL, 1, 0xD00000000000001CLL, 0x80000001004EA2B0);
LABEL_23:
  if (*(v40 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_10005D290(v35);
    }

    v41 = *(v35 + 2);
    v50 = v35 + 32;
    v51 = v41;
    sub_10005D3C4(&v50, sub_100060474, sub_100060428);
  }

  return v35;
}

uint64_t sub_1000559DC(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_1001B3E90(v5, a3);
    if (v10)
    {
      sub_1004DEAAC(17);

      v40._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004DD5FC(v40);

      v11._countAndFlagsBits = 0x756C637865202D20;
      v11._object = 0xEB00000000646564;
      goto LABEL_5;
    }

    v20 = v6(v10);
    if (v21 == 1)
    {
      if (a4)
      {
        v22 = ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v22)
        {
          v22 = &_swiftEmptySetSingleton;
        }

        sub_100055FB4(v22);
        sub_10014B17C(v5);
      }

      v41._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004DD5FC(v41);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
      if (a4 & 1) == 0 || (v27 = *a5, , v28 = sub_100120180(v5, v27), , (v28))
      {
        v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
        sub_1004DD5FC(v42);

        v43._countAndFlagsBits = 2108704;
        v43._object = 0xE300000000000000;
        sub_1004DD5FC(v43);
        if (v25)
        {
          v29._countAndFlagsBits = v26;
        }

        else
        {
          sub_1000354D0(v26, 0);
          v25 = 0xE700000000000000;
          v29._countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v29._object = v25;
        sub_1004DD5FC(v29);

        v12 = 544743456;
        v13 = 0xE400000000000000;
        v14 = *a2;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((v33 & 1) == 0)
        {
          v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
          *a2 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 < v16 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v14 = sub_10003A134((v16 > 1), v18, 1, v14);
        result = 0;
        goto LABEL_48;
      }

      v35 = ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v35)
      {
        v35 = &_swiftEmptySetSingleton;
      }

      sub_100055FB4(v35);
      sub_1004DEAAC(44);

      v44._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004DD5FC(v44);

      v45._countAndFlagsBits = 0xD000000000000022;
      v45._object = 0x80000001004EA380;
      sub_1004DD5FC(v45);
      if (v25)
      {
        v36._countAndFlagsBits = v26;
      }

      else
      {
        sub_1000354D0(v26, 0);
        v25 = 0xE700000000000000;
        v36._countAndFlagsBits = 0x6E776F6E6B6E75;
      }

      v36._object = v25;
      sub_1004DD5FC(v36);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((v39 & 1) == 0)
      {
        v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v14 = sub_10003A134((v24 > 1), v18, 1, v14);
    result = 1;
LABEL_48:
    *a2 = v14;
    goto LABEL_31;
  }

  v30 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v31 = sub_100035920();
    v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v31);
    a3 = v30;
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = sub_1000358CC();
    v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v37);
    a3 = v30;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  if (qword_100634428 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1004DEAAC(29);

    v46._countAndFlagsBits = ActionType.rawValue.getter(v5);
    sub_1004DD5FC(v46);

    v11._object = 0x80000001004EA3B0;
    v11._countAndFlagsBits = 0xD000000000000017;
LABEL_5:
    sub_1004DD5FC(v11);
    v12 = 544743456;
    v13 = 0xE400000000000000;
    v14 = *a2;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((v15 & 1) == 0)
    {
      v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
      *a2 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 < v16 >> 1)
    {
      result = 0;
LABEL_31:
      *(v14 + 2) = v18;
      v34 = &v14[16 * v17];
      *(v34 + 4) = v12;
      *(v34 + 5) = v13;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}