uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[2] = *(*(a1 + 16) + 16);
  v3 = type metadata accessor for SendableTransfer();
  return sub_100001638(sub_100001618, v6, &type metadata for Never, v3, v4, a2);
}

uint64_t sub_100001530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_100001638@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v31 = a5;
  v32 = a2;
  v34 = a4;
  v33 = a1;
  v30 = *(a3 - 8);
  v10 = *(v30 + 64);
  v11 = __chkstk_darwin(a1, a2);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v11, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v19, v24);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v6);
  v28 = 1;
  if ((*(v16 + 48))(v26, 1, v15) != 1)
  {
    (*(v16 + 32))(v21, v26, v15);
    v33(v21, v13);
    (*(v16 + 8))(v21, v15);
    if (v7)
    {
      return (*(v30 + 32))(v31, v13, a3);
    }

    v28 = 0;
  }

  return (*(*(v34 - 8) + 56))(a6, v28, 1);
}

uint64_t sub_100001900(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100001970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100001AB0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

BOOL AppDependencyType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008838;
  v6._object = a2;
  v4 = sub_100006100(v3, v6);

  return v4 != 0;
}

unint64_t sub_100001D58()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

Swift::Int sub_100001DAC()
{
  sub_100006120();
  sub_100006080();
  return sub_100006130();
}

Swift::Int sub_100001E20()
{
  sub_100006120();
  sub_100006080();
  return sub_100006130();
}

uint64_t sub_100001E74@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008870;
  v7._object = v3;
  v5 = sub_100006100(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AppDependencyType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppDependencyType(_WORD *result, int a2, int a3)
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

unint64_t sub_100001FD8()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_10000202C()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

uint64_t sub_100002080()
{
  v0 = sub_100005F70();
  sub_1000046EC(v0, qword_10000CF00);
  sub_1000046B4(v0, qword_10000CF00);
  return sub_100005F50();
}

uint64_t sub_100002110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000060B0();
  v3[15] = sub_1000060A0();
  v5 = sub_100006090();

  return _swift_task_switch(sub_1000021AC, v5, v4);
}

uint64_t sub_1000021AC()
{
  v1 = *(v0 + 120);

  sub_1000047A4();
  v2 = sub_1000060D0();
  sub_1000060C0();
  sub_100005FB0();
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    sub_100005D50();
    sub_1000047F0((v0 + 56), v0 + 16);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_100004808((v0 + 16), v7);
    sub_100005E30();
    (*(v8 + 8))(*(v0 + 56), v7, v8);
    sub_10000484C((v0 + 16));
  }

  v9 = *(v0 + 96);
  sub_1000060C0();
  sub_100005FB0();
  sub_100005E10();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100002370@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_100005E30();
  *a1 = v5;
  return result;
}

uint64_t sub_1000023AC(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_100005E40();
}

void (*sub_1000023E4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100005E20();
  return sub_100002458;
}

void sub_100002458(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000024A8()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

unint64_t sub_100002500()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_100002558()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_10000261C(uint64_t a1)
{
  v2 = sub_1000048C4();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100002664()
{
  v0 = sub_100003B4C(&qword_10000C240, &qword_1000069B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_100003B4C(&qword_10000C248, &qword_1000069B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3, v5);
  sub_100005EE0();
  v7._object = 0x8000000100006C40;
  v7._countAndFlagsBits = 0xD000000000000015;
  sub_100005ED0(v7);
  swift_getKeyPath();
  sub_100003B4C(&qword_10000C250, qword_1000069E8);
  sub_100005EC0();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_100005ED0(v8);
  sub_100005EF0();
  return sub_100005EB0();
}

uint64_t sub_100002800(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000028AC;

  return sub_100002110(a1, v5, v4);
}

uint64_t sub_1000028AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000029A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003D7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029C8(uint64_t a1)
{
  v2 = sub_1000024A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002A04()
{
  v0 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v11 - v3;
  v5 = sub_100005F70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = sub_100005F40();
  sub_1000046EC(v9, qword_10000CF18);
  sub_1000046B4(v9, qword_10000CF18);
  sub_100005F50();
  (*(v6 + 56))(v4, 1, 1, v5);
  return sub_100005F30();
}

uint64_t sub_100002B74()
{
  v0 = sub_100003B4C(&qword_10000C1F0, &qword_100006968);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = v24 - v3;
  v5 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v24 - v8;
  v10 = sub_100005F70();
  v25 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_100003B4C(&qword_10000C200, &qword_100006978);
  v14 = sub_100003B4C(&qword_10000C208, &qword_100006980);
  v15 = *(v14 - 8);
  v27 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000064F0;
  v24[1] = *(v14 + 48);
  *(v17 + v16) = 0;
  sub_100005F50();
  v18 = *(v11 + 56);
  v24[2] = v11 + 56;
  v26 = v18;
  v18(v9, 1, 1, v10);
  sub_100005E70();
  v19 = sub_100005E80();
  v20 = *(*(v19 - 8) + 56);
  v20(v4, 0, 1, v19);
  sub_100005E90();
  v21 = (v17 + v16 + v27);
  v27 = *(v14 + 48);
  *v21 = 1;
  sub_100005F50();
  v26(v9, 1, 1, v25);
  sub_100005E70();
  v20(v4, 0, 1, v19);
  sub_100005E90();
  v22 = sub_100004470(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10000CF30 = v22;
  return result;
}

uint64_t sub_100002F2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6576656CLL;
  }

  else
  {
    v4 = 0x6572757361656DLL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C6576656CLL;
  }

  else
  {
    v6 = 0x6572757361656DLL;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100006110();
  }

  return v9 & 1;
}

unint64_t sub_100002FD4()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

Swift::Int sub_100003028()
{
  v1 = *v0;
  sub_100006120();
  sub_100006080();

  return sub_100006130();
}

uint64_t sub_1000030A8()
{
  *v0;
  sub_100006080();
}

Swift::Int sub_100003114()
{
  v1 = *v0;
  sub_100006120();
  sub_100006080();

  return sub_100006130();
}

uint64_t sub_100003190@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000088F8;
  v8._object = v3;
  v5 = sub_100006100(v4, v8);

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

void sub_1000031F0(uint64_t *a1@<X8>)
{
  v2 = 0x6572757361656DLL;
  if (*v1)
  {
    v2 = 0x6C6576656CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100003234()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_10000328C()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

unint64_t sub_1000032F0()
{
  result = qword_10000C180;
  if (!qword_10000C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C180);
  }

  return result;
}

unint64_t sub_100003348()
{
  result = qword_10000C188;
  if (!qword_10000C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C188);
  }

  return result;
}

unint64_t sub_1000033A0()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C190);
  }

  return result;
}

unint64_t sub_1000033F8()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_100003488@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000046B4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_100003580()
{
  result = qword_10000C1A0;
  if (!qword_10000C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A0);
  }

  return result;
}

uint64_t sub_1000035D4(uint64_t a1)
{
  v2 = sub_100003580();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003624()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

unint64_t sub_10000367C()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

unint64_t sub_1000036D4()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

uint64_t sub_100003728()
{
  if (qword_10000C0B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10000CF30;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_100003784(uint64_t a1)
{
  v2 = sub_1000033F8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003814(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for LaunchMeasureEnum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaunchMeasureEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_1000039DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000039E8(uint64_t *a1, int a2)
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

uint64_t sub_100003A30(uint64_t result, int a2, int a3)
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

uint64_t sub_100003B04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003814(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003B4C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003B94(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100006120();
  sub_100006080();

  v5 = sub_100006130();

  return sub_100003C38(a1 & 1, v5);
}

unint64_t sub_100003C38(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C6576656CLL;
    }

    else
    {
      v6 = 0x6572757361656DLL;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6C6576656CLL : 0x6572757361656DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100006110();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100003D7C()
{
  v28 = sub_100005F00();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v28, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003B4C(&qword_10000C218, &qword_100006990);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v26 - v12;
  v14 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = sub_100005F70();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  sub_100003B4C(&qword_10000C220, &qword_100006998);
  sub_100004750();
  sub_1000060E0();
  sub_100005D80();
  sub_100005D70();
  v27 = sub_100005D60();
  sub_100003B4C(&qword_10000C230, &qword_1000069A0);
  sub_100005F50();
  (*(v20 + 56))(v18, 1, 1, v19);
  v29 = 2;
  v23 = sub_100005E00();
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  v24(v10, 1, 1, v23);
  (*(v0 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100003580();
  sub_100005E60();
  return v27;
}

uint64_t sub_1000040D8(int a1)
{
  v29 = a1;
  v28 = sub_100005F00();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v28, v3);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003B4C(&qword_10000C218, &qword_100006990);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v27 - v12;
  v14 = sub_100003B4C(&qword_10000C1F8, &qword_100006970);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v27 - v17;
  v19 = sub_100005F70();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  sub_100003B4C(&qword_10000C220, &qword_100006998);
  sub_100004750();
  sub_1000060E0();
  sub_100005D80();
  sub_100005D70();
  v23 = sub_100005D60();
  sub_100003B4C(&qword_10000C230, &qword_1000069A0);

  sub_100005F50();
  (*(v20 + 56))(v18, 1, 1, v19);
  v30 = 2;
  v24 = sub_100005E00();
  v25 = *(*(v24 - 8) + 56);
  v25(v13, 1, 1, v24);
  v25(v10, 1, 1, v24);
  (*(v1 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100003580();
  sub_100005E60();
  v30 = v29 & 1;

  sub_100005E40();

  return v23;
}

unint64_t sub_100004470(uint64_t a1)
{
  v2 = sub_100003B4C(&qword_10000C208, &qword_100006980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003B4C(&qword_10000C210, &qword_100006988);
    v9 = sub_1000060F0();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_100004644(v11, v7);
      v13 = *v7;
      result = sub_100003B94(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + result) = v13;
      v17 = v9[7];
      v18 = sub_100005EA0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, &v7[v10], v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_100004644(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B4C(&qword_10000C208, &qword_100006980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000046B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000046EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100004750()
{
  result = qword_10000C228;
  if (!qword_10000C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C228);
  }

  return result;
}

unint64_t sub_1000047A4()
{
  result = qword_10000C238;
  if (!qword_10000C238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C238);
  }

  return result;
}

uint64_t sub_1000047F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004808(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000484C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004898@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100005E50();
  *a2 = result;
  return result;
}

unint64_t sub_1000048C4()
{
  result = qword_10000C258;
  if (!qword_10000C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C258);
  }

  return result;
}

uint64_t sub_100004960@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_100005F60();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  __chkstk_darwin(v1, v3);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005FA0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v41 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006070();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v39[1] = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100005F70();
  v43 = *(v46 - 8);
  v13 = *(v43 + 64);
  __chkstk_darwin(v46, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003B4C(&qword_10000C260, &qword_100006AC0);
  v40 = *(v17 - 8);
  v18 = *(v40 + 64);
  __chkstk_darwin(v17, v19);
  v21 = v39 - v20;
  v22 = sub_100003B4C(&qword_10000C268, &qword_100006AC8);
  v42 = *(v22 - 8);
  v23 = *(v42 + 64);
  __chkstk_darwin(v22, v24);
  v26 = v39 - v25;
  v27 = sub_100003B4C(&qword_10000C270, &qword_100006AD0);
  v28 = *(v27 - 8);
  v44 = v27;
  v45 = v28;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = v39 - v31;
  sub_100003B4C(&qword_10000C278, &qword_100006AD8);
  sub_100003B04(&qword_10000C280, &qword_10000C278, &qword_100006AD8);
  sub_100006050();
  sub_100006060();
  sub_100005F90();
  (*(v48 + 104))(v47, enum case for LocalizedStringResource.BundleDescription.main(_:), v49);
  sub_100005F80();
  v33 = sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0);
  sub_100006000();
  v34 = *(v43 + 8);
  v35 = v46;
  v34(v16, v46);
  (*(v40 + 8))(v21, v17);
  sub_100005F50();
  v51 = v17;
  v52 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100005FF0();
  v34(v16, v35);
  (*(v42 + 8))(v26, v22);
  v51 = v22;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  sub_100006010();
  return (*(v45 + 8))(v32, v37);
}

uint64_t sub_100004F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006030();
  *a1 = result;
  return result;
}

uint64_t sub_100004F8C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_100005F70();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003B4C(&qword_10000C260, &qword_100006AC0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v39 - v9;
  v11 = sub_100003B4C(&qword_10000C268, &qword_100006AC8);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v39 - v15;
  v17 = sub_100003B4C(&qword_10000C270, &qword_100006AD0);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v39 - v21;
  v23 = sub_100003B4C(&qword_10000C290, &unk_100006AE0);
  v24 = *(v23 - 8);
  v46 = v23;
  v47 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v39 - v27;
  sub_100003B4C(&qword_10000C278, &qword_100006AD8);
  sub_100003B04(&qword_10000C280, &qword_10000C278, &qword_100006AD8);
  sub_100006050();
  sub_100005F50();
  v29 = sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0);
  sub_100006000();
  v30 = v43;
  v31 = *(v42 + 8);
  v31(v5, v43);
  (*(v39 + 8))(v10, v6);
  sub_100005F50();
  v49 = v6;
  v50 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v40;
  sub_100005FF0();
  v31(v5, v30);
  (*(v41 + 8))(v16, v33);
  v34 = [objc_opt_self() currentDevice];
  [v34 userInterfaceIdiom];

  v49 = v33;
  v50 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v44;
  sub_100006020();
  (*(v45 + 8))(v22, v36);
  v49 = v36;
  v50 = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v46;
  sub_100006010();
  return (*(v47 + 8))(v28, v37);
}

uint64_t sub_100005508(int a1)
{
  sub_1000040D8(a1);
  sub_1000048C4();
  return sub_100006040();
}

uint64_t sub_100005570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006030();
  *a1 = result;
  return result;
}

uint64_t sub_1000055D0()
{
  sub_100003814(&qword_10000C270, &qword_100006AD0);
  sub_100003814(&qword_10000C268, &qword_100006AC8);
  sub_100003814(&qword_10000C260, &qword_100006AC0);
  sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000056E8()
{
  sub_100003814(&qword_10000C290, &unk_100006AE0);
  sub_100003814(&qword_10000C270, &qword_100006AD0);
  sub_100003814(&qword_10000C268, &qword_100006AC8);
  sub_100003814(&qword_10000C260, &qword_100006AC0);
  sub_100003B04(&qword_10000C288, &qword_10000C260, &qword_100006AC0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000583C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = sub_100003B4C(&qword_10000C2A0, &qword_100006B50);
  v1 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v2);
  v37 = &v32 - v3;
  v36 = sub_100003B4C(&qword_10000C2A8, &qword_100006B58);
  v34 = *(v36 - 8);
  v4 = v34;
  v5 = *(v34 + 64);
  v7 = __chkstk_darwin(v36, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v32 - v11;
  v13 = sub_100003B4C(&qword_10000C2B0, &qword_100006B60);
  v35 = *(v13 - 8);
  v14 = v35;
  v15 = *(v35 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v32 - v21;
  sub_100005C0C();
  sub_100005FE0();
  sub_100005C60();
  v33 = v12;
  sub_100005FE0();
  v23 = *(v14 + 16);
  v23(v19, v22, v13);
  v24 = *(v4 + 16);
  v25 = v9;
  v26 = v9;
  v27 = v36;
  v24(v26, v12, v36);
  v28 = v37;
  v23(v37, v19, v13);
  v24(&v28[*(v38 + 48)], v25, v27);
  sub_100005FC0();
  v29 = *(v34 + 8);
  v29(v33, v27);
  v30 = *(v35 + 8);
  v30(v22, v13);
  v29(v25, v27);
  return (v30)(v19, v13);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100005B8C();
  sub_100005FD0();
  return 0;
}

unint64_t sub_100005B8C()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

unint64_t sub_100005C0C()
{
  result = qword_10000C2B8;
  if (!qword_10000C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2B8);
  }

  return result;
}

unint64_t sub_100005C60()
{
  result = qword_10000C2C0;
  if (!qword_10000C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C0);
  }

  return result;
}

unint64_t sub_100005CB8()
{
  result = qword_10000C2C8;
  if (!qword_10000C2C8)
  {
    sub_100003814(&qword_10000C2D0, &qword_100006B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C8);
  }

  return result;
}