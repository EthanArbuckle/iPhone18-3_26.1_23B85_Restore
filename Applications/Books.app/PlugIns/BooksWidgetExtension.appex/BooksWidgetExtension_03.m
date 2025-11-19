uint64_t sub_100053FF0()
{
  v0 = sub_100002840(&qword_1000AEDB0, &qword_100089990);
  sub_10000A794(v0, qword_1000B7FC0);
  sub_10000A480(v0, qword_1000B7FC0);
  sub_100002840(&qword_1000AEDB8, &qword_100089998);
  v1 = sub_100002840(&qword_1000AEDC0, qword_1000899A0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100089430;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_100054A44();
  sub_10007FF68();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_10007FF68();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_10007FF68();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_10007FF68();
  v10 = *(v1 + 48);
  *(v5 + 4 * v2) = 4;
  sub_10007FF68();
  v11 = *(v1 + 48);
  *(v5 + 5 * v2) = 5;
  sub_10007FF68();
  v12 = *(v1 + 48);
  *(v5 + 6 * v2) = 6;
  sub_10007FF68();
  v13 = *(v1 + 48);
  *(v5 + 7 * v2) = 7;
  sub_10007FF68();
  v14 = *(v1 + 48);
  *(v5 + 8 * v2) = 8;
  sub_10007FF68();
  v15 = *(v1 + 48);
  *(v5 + 9 * v2) = 11;
  sub_10007FF68();
  v16 = *(v1 + 48);
  *(v5 + 10 * v2) = 12;
  sub_10007FF68();
  v17 = *(v1 + 48);
  *(v5 + 11 * v2) = 13;
  sub_10007FF68();
  v18 = *(v1 + 48);
  *(v5 + 12 * v2) = 14;
  sub_10007FF68();
  v19 = *(v1 + 48);
  *(v5 + 13 * v2) = 15;
  sub_10007FF68();
  v20 = *(v1 + 48);
  *(v5 + 14 * v2) = 16;
  sub_10007FF68();
  v21 = *(v1 + 48);
  *(v5 + 15 * v2) = 9;
  sub_10007FF68();
  v22 = *(v1 + 48);
  *(v5 + 16 * v2) = 10;
  sub_10007FF68();
  v23 = *(v1 + 48);
  *(v5 + 17 * v2) = 17;
  sub_10007FF68();
  v24 = *(v1 + 48);
  *(v5 + 18 * v2) = 18;
  sub_10007FF68();
  sub_100067F4C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10007FF78();
}

unint64_t sub_100054574(char a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
      result = 0x6D49747265766E69;
      break;
    case 2:
      result = 0x654C6E4F756E656DLL;
      break;
    case 3:
      result = 0x47676E6964616572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 15:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x676E69636E7973;
      break;
    case 7:
      result = 0x6E69686372616573;
      break;
    case 8:
      result = 0x6F6F626F69647561;
      break;
    case 9:
      result = 0x77726F4670696B73;
      break;
    case 10:
      result = 0x6B63614270696B73;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x79636176697270;
      break;
    case 13:
      result = 1701670760;
      break;
    case 14:
      result = 0x74616E6568707968;
      break;
    case 16:
      result = 0x726F74536B6F6F62;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x6564497465736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000547EC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100054574(*a1);
  v5 = v4;
  if (v3 == sub_100054574(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100081618();
  }

  return v8 & 1;
}

unint64_t sub_100054878()
{
  result = qword_1000AECE8;
  if (!qword_1000AECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECE8);
  }

  return result;
}

Swift::Int sub_1000548CC()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100054574(v1);
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100054930()
{
  sub_100054574(*v0);
  sub_100081298();
}

Swift::Int sub_100054984()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100054574(v1);
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_1000549E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100055D98();
  *a2 = result;
  return result;
}

unint64_t sub_100054A14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100054574(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100054A44()
{
  result = qword_1000AECF0;
  if (!qword_1000AECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECF0);
  }

  return result;
}

unint64_t sub_100054A9C()
{
  result = qword_1000AECF8;
  if (!qword_1000AECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECF8);
  }

  return result;
}

uint64_t sub_100054AF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC6E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AEDB0, &qword_100089990);
  v3 = sub_10000A480(v2, qword_1000B7FC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100054BA4()
{
  result = qword_1000AED00;
  if (!qword_1000AED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED00);
  }

  return result;
}

unint64_t sub_100054BFC()
{
  result = qword_1000AED08;
  if (!qword_1000AED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED08);
  }

  return result;
}

unint64_t sub_100054C54()
{
  result = qword_1000AED10;
  if (!qword_1000AED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED10);
  }

  return result;
}

uint64_t sub_100054CA8()
{
  sub_100055D44();
  v1 = sub_10007FEC8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100054D18()
{
  result = qword_1000AED18;
  if (!qword_1000AED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED18);
  }

  return result;
}

unint64_t sub_100054D70()
{
  result = qword_1000AED20;
  if (!qword_1000AED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED20);
  }

  return result;
}

unint64_t sub_100054DCC()
{
  result = qword_1000AED28;
  if (!qword_1000AED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED28);
  }

  return result;
}

uint64_t sub_100054E84(uint64_t a1)
{
  v2 = sub_100054A44();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100054ED4()
{
  result = qword_1000AED30;
  if (!qword_1000AED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED30);
  }

  return result;
}

unint64_t sub_100054F2C()
{
  result = qword_1000AED38;
  if (!qword_1000AED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED38);
  }

  return result;
}

unint64_t sub_100054F84()
{
  result = qword_1000AED40;
  if (!qword_1000AED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED40);
  }

  return result;
}

uint64_t sub_100054FD8()
{
  if (qword_1000AC6D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100055034(uint64_t a1)
{
  v2 = sub_100054DCC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100055084()
{
  result = qword_1000AED48;
  if (!qword_1000AED48)
  {
    sub_100004FC8(&qword_1000AED50, &qword_100089700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED48);
  }

  return result;
}

unint64_t sub_1000550FC()
{
  result = qword_1000AED58;
  if (!qword_1000AED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED58);
  }

  return result;
}

uint64_t sub_100055154()
{
  v0 = sub_1000801F8();
  sub_10000A794(v0, qword_1000B7FD8);
  sub_10000A480(v0, qword_1000B7FD8);
  return sub_1000801D8();
}

uint64_t sub_1000551B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_10007FCE8();
  *a1 = v5;
  return result;
}

uint64_t sub_1000551F4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_10007FCF8();
}

void (*sub_10005522C(uint64_t *a1))(void *a1)
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
  v4 = *v1;
  *(v3 + 32) = sub_10007FCD8();
  return sub_1000552A0;
}

void sub_1000552A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000552EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100055C9C();
  v5 = sub_100055D44();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10005535C()
{
  v0 = qword_1000AECD8;

  return v0;
}

unint64_t sub_10005539C()
{
  result = qword_1000AED60;
  if (!qword_1000AED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED60);
  }

  return result;
}

unint64_t sub_1000553F4()
{
  result = qword_1000AED68;
  if (!qword_1000AED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED68);
  }

  return result;
}

unint64_t sub_10005544C()
{
  result = qword_1000AED70;
  if (!qword_1000AED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED70);
  }

  return result;
}

uint64_t sub_10005554C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_10000A480(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000555F8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100055C9C();
  v7 = sub_100055CF0();
  v8 = sub_100055D44();
  *v5 = v2;
  v5[1] = sub_1000556C4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000556C4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_1000557CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100055990();
  *a1 = result;
  return result;
}

uint64_t sub_1000557F4(uint64_t a1)
{
  v2 = sub_10004E7FC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for BooksSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BooksSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100055990()
{
  v21 = sub_100080078();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000801F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100002840(&qword_1000AED78, &unk_100089968);
  sub_1000801D8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 19;
  v18 = sub_10007FBF8();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100054A44();
  return sub_10007FD18();
}

unint64_t sub_100055C9C()
{
  result = qword_1000AED80;
  if (!qword_1000AED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED80);
  }

  return result;
}

unint64_t sub_100055CF0()
{
  result = qword_1000AED88;
  if (!qword_1000AED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED88);
  }

  return result;
}

unint64_t sub_100055D44()
{
  result = qword_1000AED90;
  if (!qword_1000AED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED90);
  }

  return result;
}

uint64_t sub_100055D98()
{
  v0 = sub_100081638();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100055E00()
{
  result = qword_1000AEDC8;
  if (!qword_1000AEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDC8);
  }

  return result;
}

unint64_t sub_100055E58()
{
  result = qword_1000AEDD0;
  if (!qword_1000AEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDD0);
  }

  return result;
}

uint64_t sub_100055F18()
{
  v0 = sub_1000801E8();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  __chkstk_darwin(v0);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000801F8();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100080478();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = sub_1000811C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v25 - v20;
  v26 = v4;
  sub_10000A794(v4, qword_1000B7FF0);
  v25 = sub_10000A480(v4, qword_1000B7FF0);
  sub_100081158();
  sub_100080448();
  (*(v15 + 16))(v19, v21, v14);
  v22 = v27;
  (*(v7 + 16))(v11, v13, v27);
  *v3 = type metadata accessor for BundleFinder();
  (*(v29 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v30);
  v23 = v28;
  sub_100080208();
  (*(v7 + 8))(v13, v22);
  (*(v15 + 8))(v21, v14);
  return (*(v31 + 32))(v25, v23, v26);
}

uint64_t sub_1000562BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000801F8();
  v3 = sub_10000A480(v2, qword_1000B7FF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100056368()
{
  result = qword_1000AEDD8;
  if (!qword_1000AEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDD8);
  }

  return result;
}

uint64_t sub_1000563BC(uint64_t a1)
{
  v2 = sub_1000219C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100056410()
{
  result = qword_1000AD378;
  if (!qword_1000AD378)
  {
    sub_100004FC8(&qword_1000AD380, &qword_1000872F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD378);
  }

  return result;
}

__n128 sub_100056490(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000564C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100056514(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005659C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 112) & 0x301 | (a2 << 62);
  *(result + 16) &= 1uLL;
  *(result + 112) = v2;
  return result;
}

__n128 sub_1000565D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000565EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000566C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100056778(char a1)
{
  v19 = *v1;
  v16 = v19;
  sub_10001EFDC(&v19, &v15);
  v3 = 0;
  v17 = sub_100056928(a1 & 1);
  v18 = v4;
  v5 = &_swiftEmptyArrayStorage;
LABEL_2:
  v6 = &v16 + 2 * v3 + 1;
  while (++v3 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10003EE4C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_10003EE4C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  swift_arrayDestroy();
  v15 = v5;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
  v13 = sub_100081128();

  return v13;
}

uint64_t sub_100056928(int a1)
{
  v43 = a1;
  v2 = sub_1000811C8();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  v4 = __chkstk_darwin(v2);
  v49 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v50 = &v42[-v6];
  v44 = sub_100080248();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v44);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100080478();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  v13 = __chkstk_darwin(v11);
  v45 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v46 = &v42[-v15];
  v16 = sub_100002840(&qword_1000AE678, &unk_100088608);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v42[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v42[-v22];
  v24 = sub_1000811A8();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = 0;
  if ((*(v1 + 24) & 1) == 0)
  {
    v27 = *(v1 + 16);
    if (v27 != 0.0)
    {
      v28 = (v7 + 8);
      v29 = (v17 + 8);
      if (v43)
      {
        sub_100081198();
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        sub_100081188(v54);
        v53 = v27;
        v30 = v46;
        sub_100080438();
        sub_100039B5C();
        sub_100080218();
        sub_100080238();
        sub_100080228();
        (*v28)(v10, v44);
        v31 = *v29;
        (*v29)(v21, v16);
        sub_100005C98(&qword_1000AE688, &qword_1000AE678, &unk_100088608);
        sub_1000057D0();
        sub_100081168();
        v31(v23, v16);
        v32 = v30;
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
      }

      else
      {
        sub_100081198();
        v55._countAndFlagsBits = 0;
        v55._object = 0xE000000000000000;
        sub_100081188(v55);
        v53 = v27;
        v39 = v46;
        sub_100080438();
        sub_100039B5C();
        sub_100080218();
        sub_100080238();
        sub_100080228();
        (*v28)(v10, v44);
        v40 = *v29;
        (*v29)(v21, v16);
        sub_100005C98(&qword_1000AE688, &qword_1000AE678, &unk_100088608);
        sub_1000057D0();
        sub_100081168();
        v40(v23, v16);
        v32 = v39;
        v33._countAndFlagsBits = 0x74656C706D6F6320;
        v33._object = 0xE900000000000065;
      }

      sub_100081188(v33);
      v34 = v50;
      sub_1000811B8();
      sub_100080448();
      v36 = v51;
      v35 = v52;
      (*(v51 + 16))(v49, v34, v52);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      sub_100080448();
      v26 = sub_100081258();
      (*(v47 + 8))(v32, v48);
      (*(v36 + 8))(v34, v35);
    }
  }

  return v26;
}

uint64_t sub_100057040()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = sub_1000811A8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  result = 0;
  if ((*(v0 + 16) & 1) == 0)
  {
    v23 = v1;
    v18 = *(v0 + 8);
    sub_100081198();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100081188(v25);
    v24 = v18;
    sub_100081178();
    v26._object = 0x8000000100084B80;
    v26._countAndFlagsBits = 0xD000000000000016;
    sub_100081188(v26);
    sub_1000811B8();
    sub_100080448();
    (*(v8 + 16))(v12, v14, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v21 = sub_100081258();
    (*(v2 + 8))(v6, v23);
    (*(v8 + 8))(v14, v7);
    return v21;
  }

  return result;
}

Swift::Int sub_100057370(uint64_t a1, char a2)
{
  sub_1000816B8();
  if (LODWORD(flt_100089EF0[a2]))
  {
    v3 = LODWORD(flt_100089EF0[a2]);
  }

  else
  {
    v3 = 0;
  }

  sub_1000816E8(v3);
  return sub_1000816F8();
}

uint64_t sub_1000573C8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 32;
  v22 = BDSCloudAssetTypeStoreAudiobook;
  while (1)
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 64);
    v6 = *(v3 + 80);
    v25 = *(v3 + 32);
    v26 = v5;
    v7 = *(v3 + 16);
    v24[0] = *v3;
    v24[1] = v7;
    v28 = v6;
    v27 = v4;
    v8 = v25;
    v9 = v5;
    v10 = sub_100081218();
    v12 = v11;
    if (v10 == sub_100081218() && v12 == v13)
    {
      sub_10000C328(v24, v23);
LABEL_8:

      goto LABEL_10;
    }

    v14 = sub_100081618();
    sub_10000C328(v24, v23);

    if ((v14 & 1) == 0)
    {
      if (!v9)
      {
        goto LABEL_3;
      }

      v16 = sub_100081218();
      v18 = v17;
      if (v16 == sub_100081218() && v18 == v19)
      {

        goto LABEL_8;
      }

      v20 = sub_100081618();

      if ((v20 & 1) == 0)
      {
LABEL_3:
        sub_10002B884(v24);
        goto LABEL_4;
      }
    }

LABEL_10:
    if (!*(v0 + 56))
    {
      goto LABEL_3;
    }

    if (*(v0 + 48) == v8)
    {
      break;
    }

    v15 = sub_100081618();
    sub_10002B884(v24);
    if (v15)
    {
      return 1;
    }

LABEL_4:
    v3 += 88;
    if (!--v2)
    {
      return 0;
    }
  }

  sub_10002B884(v24);
  return 1;
}

uint64_t sub_1000575D8()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = sub_1000811A8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  result = 0;
  if ((*(v0 + 16) & 1) == 0)
  {
    v23 = v1;
    v18 = *(v0 + 8);
    sub_100081198();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100081188(v25);
    v24 = v18;
    sub_100081178();
    v26._countAndFlagsBits = 0x206F74206E696D20;
    v26._object = 0xEC0000006C616F67;
    sub_100081188(v26);
    sub_1000811B8();
    sub_100080448();
    (*(v8 + 16))(v12, v14, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v21 = sub_100081258();
    (*(v2 + 8))(v6, v23);
    (*(v8 + 8))(v14, v7);
    return v21;
  }

  return result;
}

uint64_t sub_10005790C()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = sub_1000811A8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  if (*(*(v0 + 32) + 16) && (*(v0 + 16) & 1) == 0)
  {
    v24 = v2;
    v19 = *(v0 + 8);
    sub_100081198();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_100081188(v26);
    v25 = v19;
    sub_100081178();
    v27._countAndFlagsBits = 0x206F74206E696D20;
    v27._object = 0xEC0000006C616F67;
    sub_100081188(v27);
    sub_1000811B8();
    sub_100080448();
    (*(v8 + 16))(v12, v14, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v22 = sub_100081258();
    (*(v24 + 8))(v6, v1);
    (*(v8 + 8))(v14, v7);
    return v22;
  }

  else
  {
    sub_100081448();
    sub_100019DAC();
    v17 = sub_1000814F8();
    sub_100080618();

    return 0;
  }
}

void sub_100057CD0()
{
  if (LODWORD(flt_100089EF0[*v0]))
  {
    v1 = LODWORD(flt_100089EF0[*v0]);
  }

  else
  {
    v1 = 0;
  }

  sub_1000816E8(v1);
}

uint64_t sub_100057D18@<X0>(float *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000586E0(*a1);
  *a2 = result;
  return result;
}

float sub_100057D44@<S0>(float *a1@<X8>)
{
  result = flt_100089EF0[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_100057D5C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 32;
  v22 = BDSCloudAssetTypeStoreAudiobook;
  while (1)
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 64);
    v6 = *(v3 + 80);
    v25 = *(v3 + 32);
    v26 = v5;
    v7 = *(v3 + 16);
    v24[0] = *v3;
    v24[1] = v7;
    v28 = v6;
    v27 = v4;
    v8 = v25;
    v9 = v5;
    v10 = sub_100081218();
    v12 = v11;
    if (v10 == sub_100081218() && v12 == v13)
    {
      sub_10000C328(v24, v23);
LABEL_8:

      goto LABEL_10;
    }

    v14 = sub_100081618();
    sub_10000C328(v24, v23);

    if ((v14 & 1) == 0)
    {
      if (!v9)
      {
        goto LABEL_3;
      }

      v16 = sub_100081218();
      v18 = v17;
      if (v16 == sub_100081218() && v18 == v19)
      {

        goto LABEL_8;
      }

      v20 = sub_100081618();

      if ((v20 & 1) == 0)
      {
LABEL_3:
        sub_10002B884(v24);
        goto LABEL_4;
      }
    }

LABEL_10:
    if (!*(v0 + 72))
    {
      goto LABEL_3;
    }

    if (*(v0 + 64) == v8)
    {
      break;
    }

    v15 = sub_100081618();
    sub_10002B884(v24);
    if (v15)
    {
      return 1;
    }

LABEL_4:
    v3 += 88;
    if (!--v2)
    {
      return 0;
    }
  }

  sub_10002B884(v24);
  return 1;
}

uint64_t sub_100057F6C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_1000581E8()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_100058464()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_1000586E0(float a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 0.25)
  {
    return 1;
  }

  if (a1 == 0.75)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if (a1 == 0.5)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10005872C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

unint64_t sub_1000589BC()
{
  result = qword_1000AEDE0;
  if (!qword_1000AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDE0);
  }

  return result;
}

id sub_100058A10()
{
  v1 = sub_100081008();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080FF8();
  v6 = sub_100080FC8();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1000AC648 != -1)
    {
      swift_once();
    }

    v7 = sub_100005554(qword_1000B7F10, qword_1000B7F28);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *v7;
    result = sub_10003ABAC(v8, v9, 0);
    if (!result)
    {
      sub_10001F17C(qword_1000B7F10, v22);
      v12 = sub_100005554(v22, v22[3]);
      v13 = _UISolariumEnabled();
      v14 = *v12;
      if (v13)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v16 = sub_10003ABAC(v8, v9, v15);
      sub_100019DF8(v22);
      return v16;
    }
  }

  else
  {
    if (qword_1000AC648 != -1)
    {
      swift_once();
    }

    v17 = sub_100005554(qword_1000B7F10, qword_1000B7F28);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    v20 = *v17;
    return sub_10003ABAC(v19, v18, 0);
  }

  return result;
}

uint64_t sub_100058C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000245E0;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  result = sub_100080E68();
  *a4 = result;
  return result;
}

id sub_100058D84(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a2;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

double sub_100058E1C@<D0>(uint64_t a1@<X8>)
{
  sub_100002840(&qword_1000AE6E0, &qword_100088640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085A40;
  if (qword_1000AC6F8 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = qword_1000AEDE8;
  v3 = qword_1000AC700;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v2 + 40) = qword_1000AEDF0;

  sub_100080F78();
  sub_100080F88();
  sub_100080F38();
  sub_100080818();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_100058F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100058F74()
{
  result = qword_1000AEDF8;
  if (!qword_1000AEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEDF8);
  }

  return result;
}

__n128 sub_100058FD0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100059004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005904C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000590E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AEE08, &qword_10008A050);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = sub_100080A78();
  v12 = *(a1 + 144);
  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = 0;
  v13 = sub_100002840(&qword_1000AEE10, &qword_10008A058);
  sub_100059238(a1, &v10[*(v13 + 44)]);
  sub_1000055FC(v10, v8, &qword_1000AEE08, &qword_10008A050);
  sub_1000055FC(v8, a2, &qword_1000AEE08, &qword_10008A050);
  v14 = a2 + *(sub_100002840(&qword_1000AEE18, &unk_10008A060) + 48);
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_100005B2C(v10, &qword_1000AEE08, &qword_10008A050);
  return sub_100005B2C(v8, &qword_1000AEE08, &qword_10008A050);
}

uint64_t sub_100059238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_100002840(&qword_1000ADB80, &unk_100087C70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v75 = &v68 - v5;
  v74 = sub_100002840(&qword_1000AEE20, &unk_10008A070);
  v6 = *(*(v74 - 8) + 64);
  v7 = __chkstk_darwin(v74);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v73 = &v68 - v10;
  __chkstk_darwin(v9);
  v76 = &v68 - v11;
  v70 = sub_100080308();
  v12 = *(v70 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v70);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BookCoverView();
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v20 = *(*(v69 - 8) + 64);
  v21 = __chkstk_darwin(v69);
  v72 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v68 - v24;
  __chkstk_darwin(v23);
  v71 = &v68 - v26;
  v27 = *(a1 + 64);
  v28 = *(a1 + 96);
  v87 = *(a1 + 80);
  v88 = v28;
  v29 = *(a1 + 96);
  *v89 = *(a1 + 112);
  v30 = *(a1 + 48);
  v84 = *(a1 + 32);
  v31 = *(a1 + 32);
  v32 = *(a1 + 48);
  v33 = *(a1 + 64);
  v85 = v30;
  v86 = v33;
  v34 = *(a1 + 16);
  v82 = *a1;
  v83 = v34;
  v92 = v27;
  v93 = v87;
  v94 = v29;
  *&v89[16] = *(a1 + 128);
  v95 = *(a1 + 112);
  v90 = v31;
  v91 = v32;
  sub_10000C328(&v90, v96);
  sub_1000256C0(&v90, v15);
  v97 = v92;
  v98 = v93;
  v99 = v94;
  v100 = v95;
  v96[0] = v90;
  v96[1] = v91;
  v35 = sub_1000112D4();
  if (*&v89[16])
  {
    if (*&v89[8] == v97)
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_100081618();
    }
  }

  else
  {
    v36 = 0;
  }

  *v19 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v12 + 32))(v19 + v16[5], v15, v70);
  *(v19 + v16[6]) = v35 & 1;
  v37 = v19 + v16[7];
  v38 = v93;
  *(v37 + 2) = v92;
  *(v37 + 3) = v38;
  *(v37 + 4) = v94;
  v37[80] = v95;
  v39 = v91;
  *v37 = v90;
  *(v37 + 1) = v39;
  *(v19 + v16[8]) = v36 & 1;
  *(v19 + v16[9]) = 0;
  v40 = sub_100080C38();
  v41 = *(a1 + 136);
  v42 = *(a1 + 152) + *(a1 + 168);
  sub_100080798();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10000C384(v19, v25);
  v51 = &v25[*(v69 + 36)];
  *v51 = v40;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = v71;
  sub_10000C1E0(v25, v71, &qword_1000ACE38, &qword_100086000);
  sub_100002840(&qword_1000ADBA0, &unk_100087C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085A40;
  v54 = sub_100080BB8();
  *(inited + 32) = v54;
  v55 = sub_100080BD8();
  *(inited + 33) = v55;
  v56 = sub_100080BC8();
  sub_100080BC8();
  if (sub_100080BC8() != v54)
  {
    v56 = sub_100080BC8();
  }

  sub_100080BC8();
  if (sub_100080BC8() != v55)
  {
    v56 = sub_100080BC8();
  }

  v57 = v75;
  *v75 = v56;
  v58 = sub_100002840(&qword_1000ADBA8, &qword_10008A0B0);
  sub_1000598F8(a1, v57 + *(v58 + 44));
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v59 = v73;
  sub_10000C1E0(v57, v73, &qword_1000ADB80, &unk_100087C70);
  v60 = (v59 + *(v74 + 36));
  v61 = v80;
  *v60 = v79;
  v60[1] = v61;
  v60[2] = v81;
  v62 = v76;
  sub_10000C1E0(v59, v76, &qword_1000AEE20, &unk_10008A070);
  v63 = v72;
  sub_1000055FC(v52, v72, &qword_1000ACE38, &qword_100086000);
  v64 = v77;
  sub_1000055FC(v62, v77, &qword_1000AEE20, &unk_10008A070);
  v65 = v78;
  sub_1000055FC(v63, v78, &qword_1000ACE38, &qword_100086000);
  v66 = sub_100002840(&qword_1000AEE28, &qword_10008A0B8);
  sub_1000055FC(v64, v65 + *(v66 + 48), &qword_1000AEE20, &unk_10008A070);
  sub_100005B2C(v62, &qword_1000AEE20, &unk_10008A070);
  sub_100005B2C(v52, &qword_1000ACE38, &qword_100086000);
  sub_100005B2C(v64, &qword_1000AEE20, &unk_10008A070);
  return sub_100005B2C(v63, &qword_1000ACE38, &qword_100086000);
}

uint64_t sub_1000598F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for LabelView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v37 - v8);
  v10 = sub_100002840(&qword_1000ADBB0, &unk_10008A0C0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&v37 - v16);
  v18 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v18;
  v43 = *(a1 + 96);
  v44 = *(a1 + 112);
  v19 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v19;
  v20 = sub_100056928(0);
  v22 = v21;
  v23 = *(a1 + 160);
  swift_retain_n();
  v24 = sub_100080B08();
  *v17 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v25 = (v17 + v4[7]);
  *v25 = v20;
  v25[1] = v22;
  *(v17 + v4[8]) = v23;
  v26 = v17 + v4[9];
  *v26 = v24;
  *(v26 + 1) = 0;
  *(v26 + 8) = 1;
  *(v17 + *(v11 + 44)) = 257;
  v27 = sub_100056928(1);
  v29 = v28;
  v30 = sub_100080B08();
  *v9 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v31 = (v9 + v4[7]);
  *v31 = v27;
  v31[1] = v29;
  *(v9 + v4[8]) = v23;
  v32 = v9 + v4[9];
  *v32 = v30;
  *(v32 + 1) = 0;
  *(v32 + 8) = 1;
  sub_1000055FC(v17, v15, &qword_1000ADBB0, &unk_10008A0C0);
  v33 = v37;
  sub_100030D6C(v9, v37);
  v34 = v38;
  sub_1000055FC(v15, v38, &qword_1000ADBB0, &unk_10008A0C0);
  v35 = sub_100002840(&qword_1000ADBB8, &qword_100087CB0);
  sub_100030D6C(v33, v34 + *(v35 + 48));
  sub_100030DD0(v9);
  sub_100005B2C(v17, &qword_1000ADBB0, &unk_10008A0C0);
  sub_100030DD0(v33);
  return sub_100005B2C(v15, &qword_1000ADBB0, &unk_10008A0C0);
}

uint64_t sub_100059BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v10[8] = v1[8];
  v10[9] = v3;
  v10[10] = v1[10];
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v10[7] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  *a1 = sub_100080A28();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = sub_100002840(&qword_1000AEE00, &qword_10008A048);
  return sub_1000590E4(v10, a1 + *(v8 + 44));
}

uint64_t sub_100059C70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100059CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100059D14()
{
  result = qword_1000AEE30;
  if (!qword_1000AEE30)
  {
    sub_100004FC8(&qword_1000AEE38, &unk_10008A108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEE30);
  }

  return result;
}

uint64_t sub_100059D78()
{
  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  v2 = sub_1000811D8();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_100081548();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100059EA4(v8);
  }

  return 0;
}

uint64_t sub_100059EA4(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD598, &qword_1000874B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100059F0C(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100059F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_100059FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005A020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005A0BC()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_10005A334@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v71 = a2;
  v3 = sub_100002840(&qword_1000AEE50, &qword_10008A248);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v58[-v5];
  v7 = sub_100002840(&qword_1000AEE58, &qword_10008A250);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v69 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v58[-v13];
  __chkstk_darwin(v12);
  v72 = &v58[-v15];
  v16 = sub_10005A0BC();
  v67 = v17;
  v68 = v16;
  v70 = *(a1 + 120);
  v18 = *(a1 + 144);
  v19 = *(a1 + 152);
  v20 = *(a1 + 160);
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v65 = v95;
  v66 = v93;
  v63 = v98;
  v64 = v97;
  v101 = v94;
  v100 = v96;
  v62 = sub_100080C38();
  sub_100080798();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v73 = v101;
  v29 = v100;
  v59 = v100;
  LOBYTE(v92[0]) = 0;
  *v6 = sub_100080A28();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v61 = *(sub_100002840(&qword_1000AEE60, &qword_10008A258) + 44);
  v99 = *(a1 + 32);
  v80[0] = v99;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  v31 = *(a1 + 144);
  v30[9] = *(a1 + 128);
  v30[10] = v31;
  v30[11] = *(a1 + 160);
  v32 = *(a1 + 80);
  v30[5] = *(a1 + 64);
  v30[6] = v32;
  v33 = *(a1 + 112);
  v30[7] = *(a1 + 96);
  v30[8] = v33;
  v34 = *(a1 + 16);
  v30[1] = *a1;
  v30[2] = v34;
  v35 = *(a1 + 48);
  v30[3] = *(a1 + 32);
  v30[4] = v35;
  sub_1000055FC(&v99, v92, &qword_1000ACDC8, &qword_100085FB0);
  sub_10002B9A0(a1, v92);
  sub_100002840(&qword_1000ACDC8, &qword_100085FB0);
  sub_100002840(&qword_1000AEE68, &qword_10008A290);
  sub_100005C98(&qword_1000ACDD8, &qword_1000ACDC8, &qword_100085FB0);
  sub_10005BC38();
  sub_100080F28();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v6, v14, &qword_1000AEE50, &qword_10008A248);
  v36 = &v14[*(v8 + 44)];
  v37 = v92[5];
  v36[4] = v92[4];
  v36[5] = v37;
  v36[6] = v92[6];
  v38 = v92[1];
  *v36 = v92[0];
  v36[1] = v38;
  v39 = v92[3];
  v36[2] = v92[2];
  v36[3] = v39;
  v40 = v72;
  sub_10000C1E0(v14, v72, &qword_1000AEE58, &qword_10008A250);
  v41 = v40;
  v42 = v69;
  sub_10005BDB8(v41, v69);
  v44 = v67;
  v43 = v68;
  *&v74 = v68;
  *(&v74 + 1) = v67;
  v46 = v65;
  v45 = v66;
  *&v75 = v66;
  BYTE8(v75) = v73;
  *&v76 = v65;
  BYTE8(v76) = v29;
  v47 = v63;
  v48 = v64;
  *&v77 = v64;
  *(&v77 + 1) = v63;
  v49 = v62;
  LOBYTE(v78) = v62;
  *(&v78 + 1) = v22;
  *&v79[0] = v24;
  *(&v79[0] + 1) = v26;
  *&v79[1] = v28;
  BYTE8(v79[1]) = 0;
  v50 = v75;
  v52 = v70;
  v51 = v71;
  *v71 = v74;
  v51[1] = v50;
  v53 = v76;
  v54 = v77;
  *(v51 + 89) = *(v79 + 9);
  v55 = v79[0];
  v51[4] = v78;
  v51[5] = v55;
  v51[2] = v53;
  v51[3] = v54;
  *(v51 + 14) = v52;
  *(v51 + 120) = 0;
  v56 = v51 + *(sub_100002840(&qword_1000AEE98, &unk_10008A2A8) + 64);
  sub_10005BDB8(v42, v56);
  sub_1000055FC(&v74, v80, &qword_1000ACE10, &qword_100086460);
  sub_10005BE28(v72);
  sub_10005BE28(v42);
  v80[0] = v43;
  v80[1] = v44;
  v80[2] = v45;
  v81 = v73;
  v82 = v46;
  v83 = v59;
  v84 = v48;
  v85 = v47;
  v86 = v49;
  v87 = v22;
  v88 = v24;
  v89 = v26;
  v90 = v28;
  v91 = 0;
  return sub_100005B2C(v80, &qword_1000ACE10, &qword_100086460);
}

uint64_t sub_10005A838@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v35 = sub_100080B68();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AEE90, &qword_10008A2A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_100002840(&qword_1000AEE78, &qword_10008A298);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v36 = sub_100002840(&qword_1000AEEA0, &qword_10008A2B8);
  v17 = *(v36 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v36);
  v20 = &v34 - v19;
  v21 = a1[3];
  v51 = a1[2];
  v52 = v21;
  v53 = a1[4];
  v54 = *(a1 + 80);
  v22 = a1[1];
  v49 = *a1;
  v50 = v22;
  *v12 = sub_100080A28();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v23 = sub_100002840(&qword_1000AEEA8, &qword_10008A2C0);
  sub_10005AC30(a2, &v49, &v12[*(v23 + 44)]);
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v12, v16, &qword_1000AEE90, &qword_10008A2A0);
  v24 = &v16[*(v13 + 36)];
  v25 = v47;
  *(v24 + 4) = v46;
  *(v24 + 5) = v25;
  *(v24 + 6) = v48;
  v26 = v43;
  *v24 = v42;
  *(v24 + 1) = v26;
  v27 = v45;
  *(v24 + 2) = v44;
  *(v24 + 3) = v27;
  v55 = v49;
  v56 = v50;
  v60 = v54;
  v58 = v52;
  v59 = v53;
  v57 = v51;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v28 = sub_10005BD00();
  sub_100080E08();
  (*(v5 + 8))(v8, v35);
  sub_100005B2C(v16, &qword_1000AEE78, &qword_10008A298);
  if (sub_1000112D4())
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v29 = sub_100056778(1);
    v30 = v31;
  }

  v40 = v29;
  v41 = v30;
  v38 = v13;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v32 = v36;
  sub_100080DD8();

  return (*(v17 + 8))(v20, v32);
}

uint64_t sub_10005AC30@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v5 = sub_100002840(&qword_1000AEEB0, &qword_10008A2C8);
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  __chkstk_darwin(v5);
  v94 = &v83 - v7;
  v8 = sub_100002840(&qword_1000AEEB8, &unk_10008A2D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v83 - v12;
  v91 = sub_100080308();
  v13 = *(v91 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v91);
  v92 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v83 - v17;
  v19 = type metadata accessor for BookCoverView();
  v20 = *(*(v19 - 1) + 64);
  __chkstk_darwin(v19);
  v22 = (&v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v23 = *(*(v90 - 8) + 64);
  v24 = __chkstk_darwin(v90);
  v84 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v83 - v27;
  __chkstk_darwin(v26);
  v93 = &v83 - v29;
  v30 = a1[1];
  v106 = *a1;
  v107 = v30;
  v31 = a1[3];
  v108 = a1[2];
  v109 = v31;
  sub_1000253FC(a2, v18);
  v32 = *(a2 + 48);
  v102 = *(a2 + 32);
  v103 = v32;
  v104 = *(a2 + 64);
  v105 = *(a2 + 80);
  v33 = *(a2 + 16);
  v100 = *a2;
  v101 = v33;
  v34 = sub_1000112D4();
  if (*(&v109 + 1))
  {
    if (v109 == v102)
    {
      v35 = 1;
    }

    else
    {
      v35 = sub_100081618();
    }
  }

  else
  {
    v35 = 0;
  }

  *v22 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 32))(v22 + v19[5], v18, v91);
  *(v22 + v19[6]) = v34 & 1;
  v36 = v22 + v19[7];
  v37 = *(a2 + 48);
  *(v36 + 2) = *(a2 + 32);
  *(v36 + 3) = v37;
  *(v36 + 4) = *(a2 + 64);
  v36[80] = *(a2 + 80);
  v38 = *(a2 + 16);
  *v36 = *a2;
  *(v36 + 1) = v38;
  *(v22 + v19[8]) = v35 & 1;
  *(v22 + v19[9]) = 0;
  sub_10000C328(a2, v99);
  v39 = sub_100080C38();
  v40 = *(a1 + 17);
  sub_100080798();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_10000C384(v22, v28);
  v49 = &v28[*(v90 + 36)];
  *v49 = v39;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_10000C1E0(v28, v93, &qword_1000ACE38, &qword_100086000);
  v50 = sub_1000253FC(a2, v92);
  __chkstk_darwin(v50);
  *(&v83 - 2) = a1;
  *(&v83 - 1) = a2;
  sub_100002840(&qword_1000AEEC0, &qword_10008A318);
  sub_10005BEA0();
  sub_100080CE8();
  v99[0] = v100;
  v96 = v100;
  sub_1000055FC(v99, v95, &qword_1000ACE48, &unk_100086040);
  v51 = 0;
  v97 = sub_100056928(0);
  v98 = v52;
  v53 = _swiftEmptyArrayStorage;
LABEL_7:
  v54 = &v96 + 2 * v51 + 1;
  while (++v51 != 3)
  {
    v55 = v54 + 2;
    v56 = *v54;
    v54 += 2;
    if (v56)
    {
      v57 = *(v55 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_10003EE4C(0, *(v53 + 2) + 1, 1, v53);
      }

      v59 = *(v53 + 2);
      v58 = *(v53 + 3);
      if (v59 >= v58 >> 1)
      {
        v53 = sub_10003EE4C((v58 > 1), v59 + 1, 1, v53);
      }

      *(v53 + 2) = v59 + 1;
      v60 = &v53[16 * v59];
      *(v60 + 4) = v57;
      *(v60 + 5) = v56;
      goto LABEL_7;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v62 = 0;
  v63 = *(v53 + 2);
  v64 = _swiftEmptyArrayStorage;
LABEL_16:
  v65 = &v53[16 * v62 + 40];
  while (1)
  {
    if (v63 == v62)
    {

      v95[0] = v64;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
      v72 = sub_100081128();
      v74 = v73;

      v95[0] = v72;
      v95[1] = v74;
      sub_100005C98(&qword_1000AEEE0, &qword_1000AEEB0, &qword_10008A2C8);
      sub_1000057D0();
      v75 = v86;
      v76 = v87;
      v77 = v94;
      sub_100080DD8();

      (*(v85 + 8))(v77, v75);
      v78 = v93;
      v79 = v84;
      sub_1000055FC(v93, v84, &qword_1000ACE38, &qword_100086000);
      v80 = v88;
      sub_1000055FC(v76, v88, &qword_1000AEEB8, &unk_10008A2D0);
      v81 = v89;
      sub_1000055FC(v79, v89, &qword_1000ACE38, &qword_100086000);
      v82 = sub_100002840(&qword_1000AEEE8, &qword_10008A328);
      sub_1000055FC(v80, v81 + *(v82 + 48), &qword_1000AEEB8, &unk_10008A2D0);
      sub_100005B2C(v76, &qword_1000AEEB8, &unk_10008A2D0);
      sub_100005B2C(v78, &qword_1000ACE38, &qword_100086000);
      sub_100005B2C(v80, &qword_1000AEEB8, &unk_10008A2D0);
      return sub_100005B2C(v79, &qword_1000ACE38, &qword_100086000);
    }

    if (v62 >= *(v53 + 2))
    {
      break;
    }

    ++v62;
    v67 = *(v65 - 1);
    v66 = *v65;
    v65 += 16;
    v68 = HIBYTE(v66) & 0xF;
    if ((v66 & 0x2000000000000000) == 0)
    {
      v68 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v68)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v95[0] = v64;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v64[2] + 1, 1);
        v64 = v95[0];
      }

      v70 = v64[2];
      v69 = v64[3];
      if (v70 >= v69 >> 1)
      {
        result = sub_100061B34((v69 > 1), v70 + 1, 1);
        v64 = v95[0];
      }

      v64[2] = v70 + 1;
      v71 = &v64[2 * v70];
      v71[4] = v67;
      v71[5] = v66;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_10005B4E8@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100002840(&qword_1000AEED8, &qword_10008A320);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  *v9 = sub_100080A78();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100002840(&qword_1000AEEF0, &qword_10008A330);
  sub_10005B64C(a1, a2, &v9[*(v10 + 44)]);
  sub_100080F58();
  sub_1000808F8();
  sub_10000C1E0(v9, a3, &qword_1000AEED8, &qword_10008A320);
  v11 = a3 + *(sub_100002840(&qword_1000AEEC0, &qword_10008A318) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_10005B64C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = type metadata accessor for LabelView();
  v6 = *(*(v59 - 8) + 64);
  v7 = __chkstk_darwin(v59);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (v57 - v10);
  if (*(a1[4] + 16) == 2)
  {
    v57[1] = a2;
    v58 = v9;
    v12 = a2[1];
    if (v12)
    {
      *&v74 = *a2;
      *(&v74 + 1) = v12;
      sub_1000057D0();

      v13 = sub_100080D28();
      v15 = v14;
      v17 = v16;
      v18 = a1[12];
      v19 = a1[13];
      *&v65 = a1[14];
      *&v64 = a1[21];
      *&v61 = sub_100080CF8();
      v21 = v20;
      v23 = v22;
      *&v60 = v24;
      sub_10000EF24(v13, v15, v17 & 1);

      sub_100080CA8();
      v25 = v61;
      *&v63 = sub_100080D18();
      *&v62 = v26;
      v28 = v27;
      *&v64 = v29;

      sub_10000EF24(v25, v21, v23 & 1);

      KeyPath = swift_getKeyPath();
      v69 = v28 & 1;
      v67 = 0;
      v66 = 0;
      *&v70 = v63;
      *(&v70 + 1) = v62;
      LOBYTE(v71) = v28 & 1;
      *(&v71 + 1) = v68[0];
      DWORD1(v71) = *(v68 + 3);
      *(&v71 + 1) = v64;
      *&v72 = KeyPath;
      *(&v72 + 1) = v65;
      v73[0] = 0;
      *&v73[33] = v83;
      *&v73[17] = v82;
      *&v73[1] = v81;
      v73[49] = 0;
    }

    else
    {
      LODWORD(v65) = sub_100080B08();
      v32 = a1[8];
      v33 = a1[11];
      sub_100080F48();
      sub_1000807E8();
      v34 = v81;
      v35 = BYTE8(v81);
      v36 = v82;
      v37 = BYTE8(v82);
      *&v64 = *(&v83 + 1);
      v38 = v83;
      LOBYTE(v33) = sub_100080C08();
      sub_100080798();
      LOBYTE(v74) = v35;
      LOBYTE(v68[0]) = 1;
      LODWORD(v70) = v65;
      *(&v70 + 1) = v34;
      LOBYTE(v71) = v35;
      *(&v71 + 1) = v36;
      LOBYTE(v72) = v37;
      *(&v72 + 1) = v38;
      *v73 = v64;
      v73[8] = v33;
      *&v73[16] = v39;
      *&v73[24] = v40;
      *&v73[32] = v41;
      *&v73[40] = v42;
      *&v73[48] = 256;
    }

    sub_100002840(&qword_1000AEF08, &qword_10008A348);
    sub_100002840(&qword_1000AEF10, &qword_10008A350);
    sub_10005BF58();
    sub_10005C010();
    sub_100080AD8();
    v64 = v75;
    v65 = v74;
    v62 = v76;
    v63 = v77;
    v60 = v78;
    v61 = v79;
    v31 = v80;
    v9 = v58;
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
    v31 = -256;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
  }

  v43 = sub_100056928(1);
  v45 = v44;
  v46 = a1[10];
  v47 = a1[21];

  v48 = sub_100080B28();
  *v11 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v49 = v59;
  v50 = (v11 + *(v59 + 20));
  *v50 = v43;
  v50[1] = v45;
  *(v11 + *(v49 + 24)) = v47;
  v51 = v11 + *(v49 + 28);
  *v51 = v48;
  *(v51 + 1) = v46;
  *(v51 + 8) = 0;
  sub_100030D6C(v11, v9);
  v70 = v65;
  v71 = v64;
  *v73 = v63;
  v72 = v62;
  *&v73[16] = v60;
  *&v73[32] = v61;
  *&v73[48] = v31;
  *(a3 + 96) = v31;
  v52 = *&v73[32];
  *(a3 + 64) = *&v73[16];
  *(a3 + 80) = v52;
  v53 = v71;
  *a3 = v70;
  *(a3 + 16) = v53;
  v54 = *v73;
  *(a3 + 32) = v72;
  *(a3 + 48) = v54;
  v55 = sub_100002840(&qword_1000AEEF8, &qword_10008A338);
  sub_100030D6C(v9, a3 + *(v55 + 48));
  sub_1000055FC(&v70, &v74, &qword_1000AEF00, &qword_10008A340);
  sub_100030DD0(v11);
  sub_100030DD0(v9);
  v74 = v65;
  v75 = v64;
  v76 = v62;
  v77 = v63;
  v78 = v60;
  v79 = v61;
  v80 = v31;
  return sub_100005B2C(&v74, &qword_1000AEF00, &qword_10008A340);
}

uint64_t sub_10005BB2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v11[8] = v1[8];
  v11[9] = v3;
  v11[10] = v1[10];
  v4 = v1[5];
  v11[4] = v1[4];
  v11[5] = v4;
  v5 = v1[7];
  v11[6] = v1[6];
  v11[7] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v7 = v1[3];
  v11[2] = v1[2];
  v11[3] = v7;
  *a1 = sub_100080A28();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = a1 + *(sub_100002840(&qword_1000AEE40, &qword_10008A238) + 44);
  *v8 = sub_100080A78();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = sub_100002840(&qword_1000AEE48, &qword_10008A240);
  return sub_10005A334(v11, (v8 + *(v9 + 44)));
}

uint64_t sub_10005BBE0()
{
  v1 = v0[6];

  v2 = v0[9];

  v3 = v0[14];

  v4 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

unint64_t sub_10005BC38()
{
  result = qword_1000AEE70;
  if (!qword_1000AEE70)
  {
    sub_100004FC8(&qword_1000AEE68, &qword_10008A290);
    sub_100004FC8(&qword_1000AEE78, &qword_10008A298);
    sub_10005BD00();
    swift_getOpaqueTypeConformance2();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEE70);
  }

  return result;
}

unint64_t sub_10005BD00()
{
  result = qword_1000AEE80;
  if (!qword_1000AEE80)
  {
    sub_100004FC8(&qword_1000AEE78, &qword_10008A298);
    sub_100005C98(&qword_1000AEE88, &qword_1000AEE90, &qword_10008A2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEE80);
  }

  return result;
}

uint64_t sub_10005BDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AEE58, &qword_10008A250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005BE28(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEE58, &qword_10008A250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005BEA0()
{
  result = qword_1000AEEC8;
  if (!qword_1000AEEC8)
  {
    sub_100004FC8(&qword_1000AEEC0, &qword_10008A318);
    sub_100005C98(&qword_1000AEED0, &qword_1000AEED8, &qword_10008A320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEEC8);
  }

  return result;
}

unint64_t sub_10005BF58()
{
  result = qword_1000AEF18;
  if (!qword_1000AEF18)
  {
    sub_100004FC8(&qword_1000AEF08, &qword_10008A348);
    sub_100005C98(&qword_1000AEF20, &qword_1000AEF28, &qword_10008A358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF18);
  }

  return result;
}

unint64_t sub_10005C010()
{
  result = qword_1000AEF30;
  if (!qword_1000AEF30)
  {
    sub_100004FC8(&qword_1000AEF10, &qword_10008A350);
    sub_10005C09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF30);
  }

  return result;
}

unint64_t sub_10005C09C()
{
  result = qword_1000AEF38;
  if (!qword_1000AEF38)
  {
    sub_100004FC8(&qword_1000AEF40, &qword_10008A360);
    sub_10005C128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF38);
  }

  return result;
}

unint64_t sub_10005C128()
{
  result = qword_1000AEF48;
  if (!qword_1000AEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF48);
  }

  return result;
}

__n128 sub_10005C184(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10005C1A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C1F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double WidgetReadingHistory.Day.progressForGoal.getter(uint64_t a1, uint64_t a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  return v2 / a2;
}

uint64_t WidgetReadingHistory.Day.minutesRemainingForGoal.getter(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = ceil((a2 - result) / 60.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    return v2 & ~(v2 >> 63);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t WidgetReadingHistory.State.daysSinceLastReadDate.getter()
{
  v1 = sub_1000803D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - v16;
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (v21)
  {
    v28 = v2;
    v29 = v1;
    v22 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    *&result = COERCE_DOUBLE(sub_100043DFC(v22, v14));
    if (v21 == 1)
    {
LABEL_3:
      sub_100043E60(v14, v17);
      sub_100043E60(v17, v19);
      sub_1000803B8();
      sub_100080348();
      v25 = v24;
      (*(v28 + 8))(v5, v29);
      sub_100043DA0(v19);
      *&result = v25 / 60.0 / 60.0 / 24.0;
    }

    else
    {
      v26 = 1;
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        sub_100043DFC(v22 + *(v7 + 72) * v26, v11);
        if (sub_100080378())
        {
          sub_100043DA0(v14);
          *&result = COERCE_DOUBLE(sub_100043E60(v11, v14));
        }

        else
        {
          *&result = COERCE_DOUBLE(sub_100043DA0(v11));
        }

        ++v26;
        if (v27 == v21)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

id sub_10005C5EC()
{
  v0 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1000811D8();
  v6 = [v4 URLForUbiquityContainerIdentifier:v5];

  if (v6)
  {
    sub_1000802C8();

    v7 = sub_100080308();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  }

  else
  {
    v8 = sub_100080308();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  }

  sub_100005B2C(v3, &qword_1000AD3B0, &unk_100087320);
  return [objc_allocWithZone(BDSBookWidgetDataSource) init];
}

uint64_t sub_10005C784(uint64_t a1, uint64_t a2)
{
  v3[145] = v2;
  v3[144] = a2;
  v3[143] = a1;
  v4 = sub_100081038();
  v3[146] = v4;
  v5 = *(v4 - 8);
  v3[147] = v5;
  v6 = *(v5 + 64) + 15;
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();

  return _swift_task_switch(sub_10005C864, 0, 0);
}

uint64_t sub_10005C864()
{
  v65 = v0;
  if (sub_100062184())
  {
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v1 = sub_1000806F8();
    *(v0 + 1208) = sub_10000A480(v1, qword_1000AEF68);
    v2 = sub_1000806D8();
    v3 = sub_100081468();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Reading Goals is on in Books settings. Fetching reading history data.", v4, 2u);
    }

    v5 = (v0 + 208);
    v6 = *(v0 + 1160);

    v7 = *(v6 + 24);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1104;
    *(v0 + 216) = sub_10005D2C4;
    v8 = swift_continuation_init();
    *(v0 + 1016) = sub_100002840(&qword_1000AF160, &qword_10008A6B8);
    *(v0 + 992) = v8;
    *(v0 + 960) = _NSConcreteStackBlock;
    *(v0 + 968) = 1107296256;
    *(v0 + 976) = sub_10005F978;
    *(v0 + 984) = &unk_1000A8C88;
    [v7 bookWidgetReadingHistoryStateInfoWithCompletionHandler:v0 + 960];
    goto LABEL_22;
  }

  if (qword_1000AC710 != -1)
  {
    swift_once();
  }

  v9 = sub_1000806F8();
  sub_10000A480(v9, qword_1000AEF68);
  v10 = sub_1000806D8();
  v11 = sub_100081468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Reading Goals is off in Books settings. No reading history data was fetched.", v12, 2u);
  }

  *(v0 + 1216) = 0;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0;
  if (qword_1000AC710 != -1)
  {
    swift_once();
  }

  *(v0 + 1224) = sub_10000A480(v9, qword_1000AEF68);
  v13 = sub_1000806D8();
  v14 = sub_100081468();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching book data from the daemon.", v15, 2u);
  }

  v16 = *(v0 + 1200);
  v17 = *(v0 + 1176);
  v18 = *(v0 + 1168);
  v19 = *(v0 + 1152);

  v20 = *(v17 + 16);
  *(v0 + 1232) = v20;
  *(v0 + 1240) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v16, v19, v18);
  v21 = (*(v17 + 88))(v16, v18);
  if (v21 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_16;
  }

  if (v21 == enum case for WidgetFamily.systemMedium(_:))
  {
    v24 = v0 + 832;
    v5 = (v0 + 80);
    v25 = *(*(v0 + 1160) + 16);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1128;
    *(v0 + 88) = sub_10005E090;
    v26 = swift_continuation_init();
    *(v0 + 888) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v0 + 864) = v26;
    *(v0 + 832) = _NSConcreteStackBlock;
    *(v0 + 840) = 1107296256;
    *(v0 + 848) = sub_10005FD04;
    *(v0 + 856) = &unk_1000A8C38;
LABEL_21:
    [v25 getBookWidgetDataWithLimit:3 completion:v24];
LABEL_22:
    v28 = v5;

    return _swift_continuation_await(v28);
  }

  if (v21 == enum case for WidgetFamily.systemLarge(_:))
  {
    v5 = (v0 + 16);
    v24 = v0 + 768;
    v25 = *(*(v0 + 1160) + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1120;
    *(v0 + 24) = sub_10005E47C;
    v27 = swift_continuation_init();
    *(v0 + 824) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v0 + 800) = v27;
    *(v0 + 768) = _NSConcreteStackBlock;
    *(v0 + 776) = 1107296256;
    *(v0 + 784) = sub_10005FD04;
    *(v0 + 792) = &unk_1000A8C10;
    goto LABEL_21;
  }

  if (v21 == enum case for WidgetFamily.accessoryCorner(_:))
  {
LABEL_16:
    v5 = (v0 + 144);
    v22 = *(*(v0 + 1160) + 16);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 1136;
    *(v0 + 152) = sub_10005DCA4;
    v23 = swift_continuation_init();
    *(v0 + 952) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v0 + 928) = v23;
    *(v0 + 896) = _NSConcreteStackBlock;
    *(v0 + 904) = 1107296256;
    *(v0 + 912) = sub_10005FD04;
    *(v0 + 920) = &unk_1000A8C60;
    [v22 getBookWidgetDataWithLimit:1 completion:v0 + 896];
    goto LABEL_22;
  }

  v20(*(v0 + 1192), *(v0 + 1152), *(v0 + 1168));
  v29 = sub_1000806D8();
  v30 = sub_100081458();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 1192);
  v33 = *(v0 + 1176);
  v34 = *(v0 + 1168);
  if (v31)
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v63;
    *v35 = 136315138;
    sub_100063130();
    v62 = sub_100081608();
    v37 = v36;
    v38 = *(v33 + 8);
    v38(v32, v34);
    v39 = sub_10006150C(v62, v37, &v64);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Widget family '%s' is not supported", v35, 0xCu);
    sub_100019DF8(v63);
  }

  else
  {

    v38 = *(v33 + 8);
    v38(v32, v34);
  }

  v38(*(v0 + 1200), *(v0 + 1168));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v40 = sub_1000815B8();
    if (v40)
    {
      goto LABEL_31;
    }

LABEL_41:
    v42 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v40 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_41;
  }

LABEL_31:
  v64 = _swiftEmptyArrayStorage;
  v28 = sub_100061B14(0, v40 & ~(v40 >> 63), 0);
  if (v40 < 0)
  {
    __break(1u);
    return _swift_continuation_await(v28);
  }

  v41 = 0;
  v42 = v64;
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v43 = sub_100081598();
    }

    else
    {
      v43 = _swiftEmptyArrayStorage[v41 + 4];
    }

    v44 = v43;
    sub_10005FDF4(v0 + 680);

    v64 = v42;
    v46 = v42[2];
    v45 = v42[3];
    if (v46 >= v45 >> 1)
    {
      sub_100061B14((v45 > 1), v46 + 1, 1);
      v42 = v64;
    }

    ++v41;
    v42[2] = v46 + 1;
    v47 = &v42[11 * v46];
    v48 = *(v0 + 696);
    *(v47 + 2) = *(v0 + 680);
    *(v47 + 3) = v48;
    v49 = *(v0 + 712);
    v50 = *(v0 + 728);
    v51 = *(v0 + 744);
    *(v47 + 112) = *(v0 + 760);
    *(v47 + 5) = v50;
    *(v47 + 6) = v51;
    *(v47 + 4) = v49;
  }

  while (v40 != v41);
LABEL_42:

  *(v0 + 1272) = v42;
  v52 = *(v0 + 1224);

  v53 = sub_1000806D8();
  v54 = sub_100081468();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v64 = v56;
    *v55 = 134218242;
    *(v55 + 4) = v42[2];

    *(v55 + 12) = 2080;
    v57 = sub_100081388();
    v59 = sub_10006150C(v57, v58, &v64);

    *(v55 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "Done fetching book data from the daemon. %ld bookInfos: %s.", v55, 0x16u);
    sub_100019DF8(v56);
  }

  else
  {
  }

  v60 = swift_task_alloc();
  *(v0 + 1280) = v60;
  *v60 = v0;
  v60[1] = sub_10005E868;

  return sub_100062420(v42);
}

uint64_t sub_10005D2C4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10005D3A4, 0, 0);
}

uint64_t sub_10005D3A4()
{
  v66 = v0;
  v1 = *(v0 + 1104);
  if (v1)
  {
    v2 = v1;
    sub_10005F9EC((v0 + 1064));
    v3 = *(v0 + 1064);
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1080);
    v6 = *(v0 + 1088);
    v7 = *(v0 + 1096);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v8 = *(v0 + 1208);
  v9 = sub_1000806D8();
  v10 = sub_100081468();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Done fetching reading history data from the daemon.", v11, 2u);
  }

  *(v0 + 1216) = v7;
  *(v0 + 1024) = v3;
  *(v0 + 1032) = v4;
  *(v0 + 1040) = v5;
  *(v0 + 1048) = v6;
  *(v0 + 1056) = v7;
  if (qword_1000AC710 != -1)
  {
    swift_once();
  }

  v12 = sub_1000806F8();
  *(v0 + 1224) = sub_10000A480(v12, qword_1000AEF68);
  v13 = sub_1000806D8();
  v14 = sub_100081468();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching book data from the daemon.", v15, 2u);
  }

  v16 = *(v0 + 1200);
  v17 = *(v0 + 1176);
  v18 = *(v0 + 1168);
  v19 = *(v0 + 1152);

  v20 = *(v17 + 16);
  *(v0 + 1232) = v20;
  *(v0 + 1240) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v16, v19, v18);
  v21 = (*(v17 + 88))(v16, v18);
  if (v21 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_11;
  }

  if (v21 == enum case for WidgetFamily.systemMedium(_:))
  {
    v25 = v0 + 832;
    v22 = (v0 + 80);
    v26 = *(*(v0 + 1160) + 16);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1128;
    *(v0 + 88) = sub_10005E090;
    v27 = swift_continuation_init();
    *(v0 + 888) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v0 + 864) = v27;
    *(v0 + 832) = _NSConcreteStackBlock;
    *(v0 + 840) = 1107296256;
    *(v0 + 848) = sub_10005FD04;
    *(v0 + 856) = &unk_1000A8C38;
LABEL_16:
    [v26 getBookWidgetDataWithLimit:3 completion:v25];
LABEL_17:
    v29 = v22;

    return _swift_continuation_await(v29);
  }

  if (v21 == enum case for WidgetFamily.systemLarge(_:))
  {
    v22 = (v0 + 16);
    v25 = v0 + 768;
    v26 = *(*(v0 + 1160) + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1120;
    *(v0 + 24) = sub_10005E47C;
    v28 = swift_continuation_init();
    *(v0 + 824) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v0 + 800) = v28;
    *(v0 + 768) = _NSConcreteStackBlock;
    *(v0 + 776) = 1107296256;
    *(v0 + 784) = sub_10005FD04;
    *(v0 + 792) = &unk_1000A8C10;
    goto LABEL_16;
  }

  if (v21 == enum case for WidgetFamily.accessoryCorner(_:))
  {
LABEL_11:
    v22 = (v0 + 144);
    v23 = *(*(v0 + 1160) + 16);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 1136;
    *(v0 + 152) = sub_10005DCA4;
    v24 = swift_continuation_init();
    *(v0 + 952) = sub_100002840(&qword_1000AF158, &qword_10008A6A8);
    *(v0 + 928) = v24;
    *(v0 + 896) = _NSConcreteStackBlock;
    *(v0 + 904) = 1107296256;
    *(v0 + 912) = sub_10005FD04;
    *(v0 + 920) = &unk_1000A8C60;
    [v23 getBookWidgetDataWithLimit:1 completion:v0 + 896];
    goto LABEL_17;
  }

  v20(*(v0 + 1192), *(v0 + 1152), *(v0 + 1168));
  v30 = sub_1000806D8();
  v31 = sub_100081458();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 1192);
  v34 = *(v0 + 1176);
  v35 = *(v0 + 1168);
  if (v32)
  {
    v36 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65[0] = v64;
    *v36 = 136315138;
    sub_100063130();
    v63 = sub_100081608();
    v38 = v37;
    v39 = *(v34 + 8);
    v39(v33, v35);
    v40 = sub_10006150C(v63, v38, v65);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Widget family '%s' is not supported", v36, 0xCu);
    sub_100019DF8(v64);
  }

  else
  {

    v39 = *(v34 + 8);
    v39(v33, v35);
  }

  v39(*(v0 + 1200), *(v0 + 1168));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v41 = sub_1000815B8();
    if (v41)
    {
      goto LABEL_26;
    }

LABEL_36:
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v41 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
    goto LABEL_36;
  }

LABEL_26:
  v65[0] = _swiftEmptyArrayStorage;
  v29 = sub_100061B14(0, v41 & ~(v41 >> 63), 0);
  if (v41 < 0)
  {
    __break(1u);
    return _swift_continuation_await(v29);
  }

  v42 = 0;
  v43 = v65[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v44 = sub_100081598();
    }

    else
    {
      v44 = _swiftEmptyArrayStorage[v42 + 4];
    }

    v45 = v44;
    sub_10005FDF4(v0 + 680);

    v65[0] = v43;
    v47 = v43[2];
    v46 = v43[3];
    if (v47 >= v46 >> 1)
    {
      sub_100061B14((v46 > 1), v47 + 1, 1);
      v43 = v65[0];
    }

    ++v42;
    v43[2] = v47 + 1;
    v48 = &v43[11 * v47];
    v49 = *(v0 + 696);
    *(v48 + 2) = *(v0 + 680);
    *(v48 + 3) = v49;
    v50 = *(v0 + 712);
    v51 = *(v0 + 728);
    v52 = *(v0 + 744);
    *(v48 + 112) = *(v0 + 760);
    *(v48 + 5) = v51;
    *(v48 + 6) = v52;
    *(v48 + 4) = v50;
  }

  while (v41 != v42);
LABEL_37:

  *(v0 + 1272) = v43;
  v53 = *(v0 + 1224);

  v54 = sub_1000806D8();
  v55 = sub_100081468();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v65[0] = v57;
    *v56 = 134218242;
    *(v56 + 4) = v43[2];

    *(v56 + 12) = 2080;
    v58 = sub_100081388();
    v60 = sub_10006150C(v58, v59, v65);

    *(v56 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "Done fetching book data from the daemon. %ld bookInfos: %s.", v56, 0x16u);
    sub_100019DF8(v57);
  }

  else
  {
  }

  v61 = swift_task_alloc();
  *(v0 + 1280) = v61;
  *v61 = v0;
  v61[1] = sub_10005E868;

  return sub_100062420(v43);
}

uint64_t sub_10005DCA4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1248) = v2;
  if (v2)
  {
    v3 = sub_10005F4E4;
  }

  else
  {
    v3 = sub_10005DDB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

char *sub_10005DDB4()
{
  v27 = v0;
  v1 = *(v0 + 1136);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v16 = *(v0 + 1136);
    }

    v2 = sub_1000815B8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v26 = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 680);
  v6 = v26;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = sub_100081598();
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    sub_10005FDF4(v5);

    v26 = v6;
    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      sub_100061B14((v9 > 1), v10 + 1, 1);
      v6 = v26;
    }

    ++v4;
    v6[2] = v10 + 1;
    v11 = &v6[11 * v10];
    v12 = *(v0 + 696);
    *(v11 + 2) = *v5;
    *(v11 + 3) = v12;
    v13 = *(v0 + 712);
    v14 = *(v0 + 728);
    v15 = *(v0 + 744);
    *(v11 + 112) = *(v0 + 760);
    *(v11 + 5) = v14;
    *(v11 + 6) = v15;
    *(v11 + 4) = v13;
  }

  while (v2 != v4);

LABEL_16:
  *(v0 + 1272) = v6;
  v17 = *(v0 + 1224);

  v18 = sub_1000806D8();
  v19 = sub_100081468();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v6[2];

    *(v20 + 12) = 2080;
    v22 = sub_100081388();
    v24 = sub_10006150C(v22, v23, &v26);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Done fetching book data from the daemon. %ld bookInfos: %s.", v20, 0x16u);
    sub_100019DF8(v21);
  }

  else
  {
  }

  v25 = swift_task_alloc();
  *(v0 + 1280) = v25;
  *v25 = v0;
  v25[1] = sub_10005E868;

  return sub_100062420(v6);
}

uint64_t sub_10005E090()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1256) = v2;
  if (v2)
  {
    v3 = sub_10005EBBC;
  }

  else
  {
    v3 = sub_10005E1A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

char *sub_10005E1A0()
{
  v27 = v0;
  v1 = *(v0 + 1128);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v16 = *(v0 + 1128);
    }

    v2 = sub_1000815B8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v26 = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 680);
  v6 = v26;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = sub_100081598();
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    sub_10005FDF4(v5);

    v26 = v6;
    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      sub_100061B14((v9 > 1), v10 + 1, 1);
      v6 = v26;
    }

    ++v4;
    v6[2] = v10 + 1;
    v11 = &v6[11 * v10];
    v12 = *(v0 + 696);
    *(v11 + 2) = *v5;
    *(v11 + 3) = v12;
    v13 = *(v0 + 712);
    v14 = *(v0 + 728);
    v15 = *(v0 + 744);
    *(v11 + 112) = *(v0 + 760);
    *(v11 + 5) = v14;
    *(v11 + 6) = v15;
    *(v11 + 4) = v13;
  }

  while (v2 != v4);

LABEL_16:
  *(v0 + 1272) = v6;
  v17 = *(v0 + 1224);

  v18 = sub_1000806D8();
  v19 = sub_100081468();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v6[2];

    *(v20 + 12) = 2080;
    v22 = sub_100081388();
    v24 = sub_10006150C(v22, v23, &v26);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Done fetching book data from the daemon. %ld bookInfos: %s.", v20, 0x16u);
    sub_100019DF8(v21);
  }

  else
  {
  }

  v25 = swift_task_alloc();
  *(v0 + 1280) = v25;
  *v25 = v0;
  v25[1] = sub_10005E868;

  return sub_100062420(v6);
}

uint64_t sub_10005E47C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1264) = v2;
  if (v2)
  {
    v3 = sub_10005F050;
  }

  else
  {
    v3 = sub_10005E58C;
  }

  return _swift_task_switch(v3, 0, 0);
}

char *sub_10005E58C()
{
  v27 = v0;
  v1 = *(v0 + 1120);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v16 = *(v0 + 1120);
    }

    v2 = sub_1000815B8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v26 = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 680);
  v6 = v26;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = sub_100081598();
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    sub_10005FDF4(v5);

    v26 = v6;
    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      sub_100061B14((v9 > 1), v10 + 1, 1);
      v6 = v26;
    }

    ++v4;
    v6[2] = v10 + 1;
    v11 = &v6[11 * v10];
    v12 = *(v0 + 696);
    *(v11 + 2) = *v5;
    *(v11 + 3) = v12;
    v13 = *(v0 + 712);
    v14 = *(v0 + 728);
    v15 = *(v0 + 744);
    *(v11 + 112) = *(v0 + 760);
    *(v11 + 5) = v14;
    *(v11 + 6) = v15;
    *(v11 + 4) = v13;
  }

  while (v2 != v4);

LABEL_16:
  *(v0 + 1272) = v6;
  v17 = *(v0 + 1224);

  v18 = sub_1000806D8();
  v19 = sub_100081468();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v6[2];

    *(v20 + 12) = 2080;
    v22 = sub_100081388();
    v24 = sub_10006150C(v22, v23, &v26);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Done fetching book data from the daemon. %ld bookInfos: %s.", v20, 0x16u);
    sub_100019DF8(v21);
  }

  else
  {
  }

  v25 = swift_task_alloc();
  *(v0 + 1280) = v25;
  *v25 = v0;
  v25[1] = sub_10005E868;

  return sub_100062420(v6);
}

uint64_t sub_10005E868(uint64_t a1)
{
  v2 = *(*v1 + 1280);
  v3 = *(*v1 + 1272);
  v5 = *v1;
  *(*v1 + 1288) = a1;

  return _swift_task_switch(sub_10005E988, 0, 0);
}

uint64_t sub_10005E988()
{
  v31 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1152);
  v5 = sub_100059D78();
  sub_100043380(v4, v0 + 1024, v1, v5, v6, (v0 + 272));

  sub_1000630C0(v0 + 272, v0 + 408);
  v7 = sub_1000806D8();
  v8 = sub_100081468();
  sub_100005B2C(v0 + 272, &qword_1000ACD70, &qword_100085E50);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    v11 = *(v0 + 384);
    *(v0 + 640) = *(v0 + 368);
    *(v0 + 656) = v11;
    *(v0 + 672) = *(v0 + 400);
    v12 = *(v0 + 320);
    *(v0 + 576) = *(v0 + 304);
    *(v0 + 592) = v12;
    v13 = *(v0 + 352);
    *(v0 + 608) = *(v0 + 336);
    *(v0 + 624) = v13;
    v14 = *(v0 + 288);
    *(v0 + 544) = *(v0 + 272);
    *(v0 + 560) = v14;
    sub_100002840(&qword_1000ACD70, &qword_100085E50);
    v15 = sub_100081508();
    v17 = sub_10006150C(v15, v16, &v30);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Returning widget view model: %s.", v9, 0xCu);
    sub_100019DF8(v10);
  }

  v18 = *(v0 + 1200);
  v19 = *(v0 + 1192);
  v20 = *(v0 + 1184);
  v21 = *(v0 + 1144);
  v22 = *(v0 + 336);
  v24 = *(v0 + 288);
  v23 = *(v0 + 304);
  *(v21 + 48) = *(v0 + 320);
  *(v21 + 64) = v22;
  *(v21 + 16) = v24;
  *(v21 + 32) = v23;
  v26 = *(v0 + 368);
  v25 = *(v0 + 384);
  v27 = *(v0 + 352);
  *(v21 + 128) = *(v0 + 400);
  *(v21 + 96) = v26;
  *(v21 + 112) = v25;
  *(v21 + 80) = v27;
  *v21 = *(v0 + 272);

  v28 = *(v0 + 8);

  return v28();
}

char *sub_10005EBBC()
{
  v43 = v0;
  v1 = *(v0 + 1256);
  swift_willThrow();
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1224);
  (*(v0 + 1232))(*(v0 + 1184), *(v0 + 1152), *(v0 + 1168));
  swift_errorRetain();
  v5 = sub_1000806D8();
  v6 = sub_100081448();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1184);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1168);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v11 = 136315394;
    sub_100063130();
    v12 = sub_100081608();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_10006150C(v12, v14, v42);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = sub_1000801B8();
    *(v11 + 14) = v16;
    *v40 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch book data from BookWidgetDataSource for widget family '%s', error: %@", v11, 0x16u);
    sub_100005B2C(v40, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v41);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v17 = sub_1000815B8();
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_16:
    v21 = _swiftEmptyArrayStorage;

    goto LABEL_17;
  }

  v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_6:
  v42[0] = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  v20 = (v0 + 680);
  v21 = v42[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v22 = sub_100081598();
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[v19 + 4];
    }

    v23 = v22;
    sub_10005FDF4(v20);

    v42[0] = v21;
    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      sub_100061B14((v24 > 1), v25 + 1, 1);
      v21 = v42[0];
    }

    ++v19;
    v21[2] = v25 + 1;
    v26 = &v21[11 * v25];
    v27 = *(v0 + 696);
    *(v26 + 2) = *v20;
    *(v26 + 3) = v27;
    v28 = *(v0 + 712);
    v29 = *(v0 + 728);
    v30 = *(v0 + 744);
    *(v26 + 112) = *(v0 + 760);
    *(v26 + 5) = v29;
    *(v26 + 6) = v30;
    *(v26 + 4) = v28;
  }

  while (v17 != v19);

LABEL_17:
  *(v0 + 1272) = v21;
  v31 = *(v0 + 1224);

  v32 = sub_1000806D8();
  v33 = sub_100081468();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v34 = 134218242;
    *(v34 + 4) = v21[2];

    *(v34 + 12) = 2080;
    v36 = sub_100081388();
    v38 = sub_10006150C(v36, v37, v42);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Done fetching book data from the daemon. %ld bookInfos: %s.", v34, 0x16u);
    sub_100019DF8(v35);
  }

  else
  {
  }

  v39 = swift_task_alloc();
  *(v0 + 1280) = v39;
  *v39 = v0;
  v39[1] = sub_10005E868;

  return sub_100062420(v21);
}

char *sub_10005F050()
{
  v43 = v0;
  v1 = *(v0 + 1264);
  swift_willThrow();
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1224);
  (*(v0 + 1232))(*(v0 + 1184), *(v0 + 1152), *(v0 + 1168));
  swift_errorRetain();
  v5 = sub_1000806D8();
  v6 = sub_100081448();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1184);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1168);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v11 = 136315394;
    sub_100063130();
    v12 = sub_100081608();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_10006150C(v12, v14, v42);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = sub_1000801B8();
    *(v11 + 14) = v16;
    *v40 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch book data from BookWidgetDataSource for widget family '%s', error: %@", v11, 0x16u);
    sub_100005B2C(v40, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v41);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v17 = sub_1000815B8();
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_16:
    v21 = _swiftEmptyArrayStorage;

    goto LABEL_17;
  }

  v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_6:
  v42[0] = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  v20 = (v0 + 680);
  v21 = v42[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v22 = sub_100081598();
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[v19 + 4];
    }

    v23 = v22;
    sub_10005FDF4(v20);

    v42[0] = v21;
    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      sub_100061B14((v24 > 1), v25 + 1, 1);
      v21 = v42[0];
    }

    ++v19;
    v21[2] = v25 + 1;
    v26 = &v21[11 * v25];
    v27 = *(v0 + 696);
    *(v26 + 2) = *v20;
    *(v26 + 3) = v27;
    v28 = *(v0 + 712);
    v29 = *(v0 + 728);
    v30 = *(v0 + 744);
    *(v26 + 112) = *(v0 + 760);
    *(v26 + 5) = v29;
    *(v26 + 6) = v30;
    *(v26 + 4) = v28;
  }

  while (v17 != v19);

LABEL_17:
  *(v0 + 1272) = v21;
  v31 = *(v0 + 1224);

  v32 = sub_1000806D8();
  v33 = sub_100081468();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v34 = 134218242;
    *(v34 + 4) = v21[2];

    *(v34 + 12) = 2080;
    v36 = sub_100081388();
    v38 = sub_10006150C(v36, v37, v42);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Done fetching book data from the daemon. %ld bookInfos: %s.", v34, 0x16u);
    sub_100019DF8(v35);
  }

  else
  {
  }

  v39 = swift_task_alloc();
  *(v0 + 1280) = v39;
  *v39 = v0;
  v39[1] = sub_10005E868;

  return sub_100062420(v21);
}

char *sub_10005F4E4()
{
  v43 = v0;
  v1 = *(v0 + 1248);
  swift_willThrow();
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1224);
  (*(v0 + 1232))(*(v0 + 1184), *(v0 + 1152), *(v0 + 1168));
  swift_errorRetain();
  v5 = sub_1000806D8();
  v6 = sub_100081448();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1184);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1168);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v11 = 136315394;
    sub_100063130();
    v12 = sub_100081608();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_10006150C(v12, v14, v42);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = sub_1000801B8();
    *(v11 + 14) = v16;
    *v40 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch book data from BookWidgetDataSource for widget family '%s', error: %@", v11, 0x16u);
    sub_100005B2C(v40, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v41);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v17 = sub_1000815B8();
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_16:
    v21 = _swiftEmptyArrayStorage;

    goto LABEL_17;
  }

  v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_6:
  v42[0] = _swiftEmptyArrayStorage;
  result = sub_100061B14(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  v20 = (v0 + 680);
  v21 = v42[0];
  do
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v22 = sub_100081598();
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[v19 + 4];
    }

    v23 = v22;
    sub_10005FDF4(v20);

    v42[0] = v21;
    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      sub_100061B14((v24 > 1), v25 + 1, 1);
      v21 = v42[0];
    }

    ++v19;
    v21[2] = v25 + 1;
    v26 = &v21[11 * v25];
    v27 = *(v0 + 696);
    *(v26 + 2) = *v20;
    *(v26 + 3) = v27;
    v28 = *(v0 + 712);
    v29 = *(v0 + 728);
    v30 = *(v0 + 744);
    *(v26 + 112) = *(v0 + 760);
    *(v26 + 5) = v29;
    *(v26 + 6) = v30;
    *(v26 + 4) = v28;
  }

  while (v17 != v19);

LABEL_17:
  *(v0 + 1272) = v21;
  v31 = *(v0 + 1224);

  v32 = sub_1000806D8();
  v33 = sub_100081468();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v34 = 134218242;
    *(v34 + 4) = v21[2];

    *(v34 + 12) = 2080;
    v36 = sub_100081388();
    v38 = sub_10006150C(v36, v37, v42);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Done fetching book data from the daemon. %ld bookInfos: %s.", v34, 0x16u);
    sub_100019DF8(v35);
  }

  else
  {
  }

  v39 = swift_task_alloc();
  *(v0 + 1280) = v39;
  *v39 = v0;
  v39[1] = sub_10005E868;

  return sub_100062420(v21);
}

uint64_t sub_10005F978(uint64_t a1, void *a2, char a3)
{
  v5 = sub_100005554((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a2;

  return _swift_continuation_resume(v6);
}

uint64_t sub_10005F9EC@<X0>(char *a1@<X8>)
{
  v4 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 currentStreak];
  v9 = [v1 today];
  v10 = [v9 readingTime];
  v11 = [v9 goal];
  LODWORD(v12) = [v9 isStreakDay];

  v13 = [v1 readingHistory];
  sub_10001F1E0(0, &qword_1000AF168, BDSReadingHistoryDayEntryInfo_ptr);
  v14 = sub_100081378();

  if (v14 >> 62)
  {
    goto LABEL_18;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v12;
  if (v15)
  {
    while (1)
    {
      v30 = _swiftEmptyArrayStorage;
      v29 = v15;
      result = sub_100061AF4(0, v15 & ~(v15 >> 63), 0);
      if (v29 < 0)
      {
        break;
      }

      v21 = v11;
      v22 = v10;
      v23 = v8;
      v24 = a1;
      v11 = 0;
      v12 = v30;
      v26 = v14 & 0xFFFFFFFFFFFFFF8;
      v27 = v14 & 0xC000000000000001;
      while (1)
      {
        a1 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v27)
        {
          v17 = sub_100081598();
        }

        else
        {
          if (v11 >= *(v26 + 16))
          {
            goto LABEL_17;
          }

          v17 = *(v14 + 8 * v11 + 32);
        }

        v18 = v17;
        sub_100061108(v7);
        if (v2)
        {
        }

        v8 = v14;

        v30 = v12;
        v10 = v12[2];
        v19 = v12[3];
        if (v10 >= v19 >> 1)
        {
          sub_100061AF4(v19 > 1, v10 + 1, 1);
          v12 = v30;
        }

        v12[2] = v10 + 1;
        sub_100043E60(v7, v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v10);
        ++v11;
        if (a1 == v29)
        {

          v8 = v23;
          a1 = v24;
          v11 = v21;
          v10 = v22;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v15 = sub_1000815B8();
      v25 = v12;
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    v12 = _swiftEmptyArrayStorage;
LABEL_20:
    *a1 = v8;
    *(a1 + 1) = v10;
    *(a1 + 2) = v11;
    a1[24] = v25;
    *(a1 + 4) = v12;
  }

  return result;
}

uint64_t sub_10005FD04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100005554((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002840(&qword_1000AD580, &qword_1000874A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001F1E0(0, &qword_1000AF178, BDSBookWidgetData_ptr);
    **(*(v4 + 64) + 40) = sub_100081378();

    return _swift_continuation_throwingResume(v4);
  }
}

id sub_10005FDF4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 readingProgress];
  if (v3)
  {
    v6 = v3;
    sub_1000813F8();

    v4 = 0.0;
    v5 = 0.0;
    if (0.0 > 1.0)
    {
      v4 = 1.0;
    }
  }

  v7 = [v1 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100081218();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v1 assetID];
  v13 = sub_100081218();
  v15 = v14;

  v16 = [v1 cloudAssetType];
  v31 = [v1 libraryAssetType];
  v17 = [v1 coverURL];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100081218();
    v27 = v20;
    v29 = v19;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  result = [v1 pageProgressionDirection];
  if (result)
  {
    v22 = result;
    v23 = sub_100081218();
    v25 = v24;

    if (v23 == 7107698 && v25 == 0xE300000000000000)
    {

      v26 = 1;
    }

    else
    {
      v26 = sub_100081618();
    }
  }

  else
  {
    v26 = 0;
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v31;
  *(a1 + 64) = v30;
  *(a1 + 72) = v28;
  *(a1 + 80) = v26 & 1;
  return result;
}

uint64_t sub_100060034()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int ConnectorStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_1000816B8();
  sub_1000816C8(a1);
  return sub_1000816F8();
}

uint64_t sub_100060158(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t WidgetReadingHistory.DayEntry.date.setter(uint64_t a1)
{
  v3 = sub_1000803D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetReadingHistory.DayEntry.day.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetReadingHistory.DayEntry(0) + 20));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t WidgetReadingHistory.DayEntry.day.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v8 = v3 + *(result + 20);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t static WidgetReadingHistory.DayEntry.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_100080398() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WidgetReadingHistory.DayEntry(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = *(a1 + v4 + 16);
  v8 = (a2 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v13 = v5 == v9 && v6 == v10;
  return v13 & (v7 ^ v11 ^ 1u);
}

uint64_t sub_100060320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100080398() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = (a2 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v15 = v7 == v11 && v8 == v12;
  return v15 & (v9 ^ v13 ^ 1u);
}

BOOL static WidgetReadingHistory.Streak.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_100080398() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetReadingHistory.Streak(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t WidgetReadingHistory.State.today.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return result;
}

uint64_t WidgetReadingHistory.State.today.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t WidgetReadingHistory.State.readingHistory.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t static WidgetReadingHistory.State.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0))
  {
    return sub_10006051C(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006051C(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v4 = *(*(v30 - 8) + 64);
  v5 = __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_17:
    v26 = 0;
    return v26 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v29 = *(v8 + 72);
    while (1)
    {
      sub_100043DFC(v13, v10);
      sub_100043DFC(v14, v7);
      if ((sub_100080398() & 1) == 0)
      {
        break;
      }

      v15 = v30;
      v16 = &v10[*(v30 + 20)];
      v17 = *v16;
      v18 = *(v16 + 1);
      v31 = v16[16];
      sub_100043DA0(v10);
      v19 = &v7[*(v15 + 20)];
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = v19[16];
      sub_100043DA0(v7);
      v24 = v17 != v20 || v18 != v21;
      v25 = v24 | v31 ^ v22;
      if ((v25 & 1) == 0)
      {
        v14 += v29;
        v13 += v29;
        if (--v11)
        {
          continue;
        }
      }

      v26 = v25 ^ 1;
      return v26 & 1;
    }

    sub_100043DA0(v7);
    sub_100043DA0(v10);
    goto LABEL_17;
  }

  v26 = 1;
  return v26 & 1;
}

unint64_t sub_100060704()
{
  result = qword_1000AEF80;
  if (!qword_1000AEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF80);
  }

  return result;
}

uint64_t sub_100060758(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_10006051C(*(a1 + 32), *(a2 + 32));
  }
}

uint64_t getEnumTagSinglePayload for ConnectorStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectorStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100060910(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100060924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_10006096C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000609C8(uint64_t *a1, int a2)
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

uint64_t sub_100060A10(uint64_t result, int a2, int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for PlatterStyle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatterStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatterStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100060AC0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100060ADC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WidgetReadingHistory.Day(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WidgetReadingHistory.Day(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetReadingHistory.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100060BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000803D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100060CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000803D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2 + 1;
  }

  return result;
}

uint64_t sub_100060DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000803D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100060E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000803D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100060EA8()
{
  result = sub_1000803D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100060F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100060FC8()
{
  v0 = sub_100080548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  sub_100080488();
  isa = sub_1000804C8().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setCalendar:isa];

  v7 = sub_1000811D8();
  [v5 setDateFormat:v7];

  qword_1000AEF60 = v5;
}

uint64_t sub_100061108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000803D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000AC708 != -1)
  {
    swift_once();
  }

  v9 = qword_1000AEF60;
  v10 = [v2 date];
  if (!v10)
  {
    sub_100081218();
    v10 = sub_1000811D8();
  }

  v11 = [v9 dateFromString:v10];

  if (v11)
  {
    sub_1000803A8();

    (*(v5 + 16))(a1, v8, v4);
    v12 = [v2 day];
    v13 = [v12 readingTime];
    v14 = [v12 goal];
    v15 = [v12 isStreakDay];

    (*(v5 + 8))(v8, v4);
    result = type metadata accessor for WidgetReadingHistory.DayEntry(0);
    v17 = a1 + *(result + 20);
    *v17 = v13;
    *(v17 + 8) = v14;
    *(v17 + 16) = v15;
  }

  else
  {
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v18 = sub_1000806F8();
    sub_10000A480(v18, qword_1000AEF68);
    v19 = v2;
    v20 = sub_1000806D8();
    v21 = sub_100081448();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v24 = [v19 date];
      v25 = sub_100081218();
      v27 = v26;

      v28 = sub_10006150C(v25, v27, &v30);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Can't widgify BDSReadingHistoryDayEntryInfo due to invalid date string: '%s'", v22, 0xCu);
      sub_100019DF8(v23);
    }

    sub_1000631A0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10006148C()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AEF68);
  sub_10000A480(v0, qword_1000AEF68);
  return sub_1000806E8();
}

uint64_t sub_10006150C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000615D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001F05C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100019DF8(v11);
  return v7;
}

unint64_t sub_1000615D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000616E4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000815A8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000616E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100061730(a1, a2);
  sub_100061860(&off_1000A6928);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100061730(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10006194C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000815A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000812B8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10006194C(v10, 0);
        result = sub_100081578();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100061860(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000619C0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10006194C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002840(&qword_1000AF180, &qword_10008A6D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000619C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF180, &qword_10008A6D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100061AB4(char *a1, int64_t a2, char a3)
{
  result = sub_100061B54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061AD4(char *a1, int64_t a2, char a3)
{
  result = sub_100061C60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100061AF4(size_t a1, int64_t a2, char a3)
{
  result = sub_100061D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061B14(char *a1, int64_t a2, char a3)
{
  result = sub_100061F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061B34(char *a1, int64_t a2, char a3)
{
  result = sub_100062078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100061B54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF190, &qword_10008A6E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100061C60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF188, &qword_10008A6D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100061D7C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002840(&qword_1000AE910, &unk_10008A6C0);
  v10 = *(type metadata accessor for WidgetReadingHistory.DayEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WidgetReadingHistory.DayEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100061F54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000AF198, &unk_10008A6E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100062078(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000ACB30, &qword_100085BE0);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_100062184()
{
  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  v2 = sub_1000811D8();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_100081548();
    swift_unknownObjectRelease();
    sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
    v4 = sub_1000811D8();
    v5 = [v1 objectForKey:v4];

    if (!v5)
    {
      v14 = 0u;
      v15 = 0u;
      sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
      v12 = sub_1000811D8();
      v11 = 1;
      [v1 setBool:1 forKey:v12];
      goto LABEL_6;
    }

    sub_100081548();
    swift_unknownObjectRelease();
    sub_100005B2C(&v14, &qword_1000AD598, &qword_1000874B0);
    v6 = sub_1000811D8();
    v7 = [v1 BOOLForKey:v6];

    v8 = sub_1000811D8();
    [v1 removeObjectForKey:v8];

    v9 = sub_1000811D8();
    [v1 setBool:v7 forKey:v9];
  }

  v10 = sub_1000811D8();
  v11 = [v1 BOOLForKey:v10];
  v12 = v1;
  v1 = v10;
LABEL_6:

  return v11;
}

uint64_t sub_100062440()
{
  v23 = v0;
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  *(v0 + 552) = v2;
  if (v2)
  {
    *(v0 + 568) = _swiftEmptyArrayStorage;
    *(v0 + 560) = 0;
    v3 = *(v1 + 48);
    *(v0 + 16) = *(v1 + 32);
    *(v0 + 32) = v3;
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    v6 = *(v1 + 96);
    *(v0 + 96) = *(v1 + 112);
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    *(v0 + 48) = v4;
    v7 = *(v1 + 32);
    *(v0 + 120) = *(v1 + 48);
    *(v0 + 104) = v7;
    v8 = *(v1 + 64);
    v9 = *(v1 + 80);
    v10 = *(v1 + 96);
    *(v0 + 184) = *(v1 + 112);
    *(v0 + 168) = v10;
    *(v0 + 152) = v9;
    *(v0 + 136) = v8;
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    *(v0 + 576) = v12;
    *(v0 + 584) = v11;
    sub_1000631F4(v0 + 16, v0 + 192);
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v13 = sub_1000806F8();
    *(v0 + 592) = sub_10000A480(v13, qword_1000AEF68);
    sub_1000631F4(v0 + 16, v0 + 280);
    v14 = sub_1000806D8();
    v15 = sub_100081468();
    sub_100063250(v0 + 16);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;

      v18 = sub_10006150C(v12, v11, &v22);

      *(v16 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "About to process raw cover for %s", v16, 0xCu);
      sub_100019DF8(v17);
    }

    v19 = swift_task_alloc();
    *(v0 + 600) = v19;
    *v19 = v0;
    v19[1] = sub_1000626EC;

    return sub_10001D5A8(v0 + 16);
  }

  else
  {
    v21 = *(v0 + 8);

    return v21(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000626EC()
{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_100062C5C;
  }

  else
  {
    v3 = sub_100062800;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100062800()
{
  v45 = v0;
  v1 = *(v0 + 592);
  sub_1000631F4(v0 + 16, v0 + 456);
  v2 = sub_1000806D8();
  v3 = sub_100081468();
  sub_100063250(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 584);
    v5 = *(v0 + 576);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44 = v7;
    *v6 = 136315138;

    v8 = sub_10006150C(v5, v4, &v44);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done processing raw cover for %s", v6, 0xCu);
    sub_100019DF8(v7);
  }

  v9 = *(v0 + 568);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 568);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_10003EF58(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_10003EF58((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = *(v0 + 552);
  v15 = *(v0 + 560) + 1;
  v16 = *(v0 + 152);
  *(v0 + 400) = *(v0 + 136);
  *(v0 + 416) = v16;
  *(v0 + 432) = *(v0 + 168);
  *(v0 + 448) = *(v0 + 184);
  v17 = *(v0 + 120);
  *(v0 + 368) = *(v0 + 104);
  *(v0 + 384) = v17;
  *(v11 + 2) = v13 + 1;
  v18 = &v11[88 * v13];
  v19 = *(v0 + 384);
  *(v18 + 2) = *(v0 + 368);
  *(v18 + 3) = v19;
  v20 = *(v0 + 400);
  v21 = *(v0 + 416);
  v22 = *(v0 + 432);
  v18[112] = *(v0 + 448);
  *(v18 + 5) = v21;
  *(v18 + 6) = v22;
  *(v18 + 4) = v20;
  if (v15 == v14)
  {
    v23 = *(v0 + 8);

    return v23(v11);
  }

  else
  {
    v25 = *(v0 + 560);
    *(v0 + 568) = v11;
    *(v0 + 560) = v25 + 1;
    v26 = *(v0 + 544) + 88 * v25;
    v27 = *(v26 + 136);
    *(v0 + 16) = *(v26 + 120);
    *(v0 + 32) = v27;
    v28 = *(v26 + 168);
    v29 = *(v26 + 184);
    v30 = *(v26 + 152);
    *(v0 + 96) = *(v26 + 200);
    *(v0 + 64) = v28;
    *(v0 + 80) = v29;
    *(v0 + 48) = v30;
    v31 = *(v26 + 120);
    *(v0 + 120) = *(v26 + 136);
    *(v0 + 104) = v31;
    v32 = *(v26 + 152);
    v33 = *(v26 + 168);
    v34 = *(v26 + 184);
    *(v0 + 184) = *(v26 + 200);
    *(v0 + 168) = v34;
    *(v0 + 152) = v33;
    *(v0 + 136) = v32;
    v36 = *(v0 + 48);
    v35 = *(v0 + 56);
    *(v0 + 576) = v36;
    *(v0 + 584) = v35;
    sub_1000631F4(v0 + 16, v0 + 192);
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v37 = sub_1000806F8();
    *(v0 + 592) = sub_10000A480(v37, qword_1000AEF68);
    sub_1000631F4(v0 + 16, v0 + 280);
    v38 = sub_1000806D8();
    v39 = sub_100081468();
    sub_100063250(v0 + 16);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = v41;
      *v40 = 136315138;

      v42 = sub_10006150C(v36, v35, &v44);

      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "About to process raw cover for %s", v40, 0xCu);
      sub_100019DF8(v41);
    }

    v43 = swift_task_alloc();
    *(v0 + 600) = v43;
    *v43 = v0;
    v43[1] = sub_1000626EC;

    return sub_10001D5A8(v0 + 16);
  }
}

uint64_t sub_100062C5C()
{
  v46 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  swift_errorRetain();
  v3 = sub_1000806D8();
  v4 = sub_100081448();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 608);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = sub_1000801B8();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch raw cover, error: %@", v7, 0xCu);
    sub_100005B2C(v8, &qword_1000AD570, &qword_10008A6B0);
  }

  else
  {
  }

  v10 = *(v0 + 568);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 568);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_10003EF58(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_10003EF58((v13 > 1), v14 + 1, 1, v12);
  }

  v15 = *(v0 + 552);
  v16 = *(v0 + 560) + 1;
  v17 = *(v0 + 152);
  *(v0 + 400) = *(v0 + 136);
  *(v0 + 416) = v17;
  *(v0 + 432) = *(v0 + 168);
  *(v0 + 448) = *(v0 + 184);
  v18 = *(v0 + 120);
  *(v0 + 368) = *(v0 + 104);
  *(v0 + 384) = v18;
  *(v12 + 2) = v14 + 1;
  v19 = &v12[88 * v14];
  v20 = *(v0 + 384);
  *(v19 + 2) = *(v0 + 368);
  *(v19 + 3) = v20;
  v21 = *(v0 + 400);
  v22 = *(v0 + 416);
  v23 = *(v0 + 432);
  v19[112] = *(v0 + 448);
  *(v19 + 5) = v22;
  *(v19 + 6) = v23;
  *(v19 + 4) = v21;
  if (v16 == v15)
  {
    v24 = *(v0 + 8);

    return v24(v12);
  }

  else
  {
    v26 = *(v0 + 560);
    *(v0 + 568) = v12;
    *(v0 + 560) = v26 + 1;
    v27 = *(v0 + 544) + 88 * v26;
    v28 = *(v27 + 136);
    *(v0 + 16) = *(v27 + 120);
    *(v0 + 32) = v28;
    v29 = *(v27 + 168);
    v30 = *(v27 + 184);
    v31 = *(v27 + 152);
    *(v0 + 96) = *(v27 + 200);
    *(v0 + 64) = v29;
    *(v0 + 80) = v30;
    *(v0 + 48) = v31;
    v32 = *(v27 + 120);
    *(v0 + 120) = *(v27 + 136);
    *(v0 + 104) = v32;
    v33 = *(v27 + 152);
    v34 = *(v27 + 168);
    v35 = *(v27 + 184);
    *(v0 + 184) = *(v27 + 200);
    *(v0 + 168) = v35;
    *(v0 + 152) = v34;
    *(v0 + 136) = v33;
    v37 = *(v0 + 48);
    v36 = *(v0 + 56);
    *(v0 + 576) = v37;
    *(v0 + 584) = v36;
    sub_1000631F4(v0 + 16, v0 + 192);
    if (qword_1000AC710 != -1)
    {
      swift_once();
    }

    v38 = sub_1000806F8();
    *(v0 + 592) = sub_10000A480(v38, qword_1000AEF68);
    sub_1000631F4(v0 + 16, v0 + 280);
    v39 = sub_1000806D8();
    v40 = sub_100081468();
    sub_100063250(v0 + 16);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v41 = 136315138;

      v43 = sub_10006150C(v37, v36, &v45);

      *(v41 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "About to process raw cover for %s", v41, 0xCu);
      sub_100019DF8(v42);
    }

    v44 = swift_task_alloc();
    *(v0 + 600) = v44;
    *v44 = v0;
    v44[1] = sub_1000626EC;

    return sub_10001D5A8(v0 + 16);
  }
}

uint64_t sub_1000630C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACD70, &qword_100085E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063130()
{
  result = qword_1000ADB10;
  if (!qword_1000ADB10)
  {
    sub_100081038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADB10);
  }

  return result;
}

unint64_t sub_1000631A0()
{
  result = qword_1000AF170;
  if (!qword_1000AF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF170);
  }

  return result;
}

unint64_t sub_1000632B8()
{
  result = qword_1000AF1A0;
  if (!qword_1000AF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1A0);
  }

  return result;
}

double sub_100063354@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_100002840(&qword_1000AF1A8, &qword_10008A838) + 36);
  v5 = enum case for BlendMode.plusLighter(_:);
  v6 = sub_100080F68();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = v3;
  *(a1 + 4) = 256;
  *(a1 + *(sub_100002840(&qword_1000AF1B0, &qword_10008A840) + 36)) = 0x3FB47AE147AE147BLL;
  v7 = (a1 + *(sub_100002840(&qword_1000AF1B8, &qword_10008A848) + 36));
  v8 = *(sub_1000808E8() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = sub_100080A38();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #2.0 }

  *v7 = _Q0;
  *&v7[*(sub_100002840(&qword_1000AD7F0, &qword_10008A850) + 36)] = 256;
  v16 = (a1 + *(sub_100002840(&qword_1000AF1C0, &unk_10008A858) + 36));
  v17 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
  v18 = enum case for ColorScheme.dark(_:);
  v19 = sub_1000807B8();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  sub_100080F48();
  sub_1000807E8();
  v20 = (a1 + *(sub_100002840(&qword_1000AF1C8, &qword_10008A898) + 36));
  *v20 = v22;
  v20[1] = v23;
  result = *&v24;
  v20[2] = v24;
  return result;
}

unint64_t sub_1000635A4()
{
  result = qword_1000AF1D0;
  if (!qword_1000AF1D0)
  {
    sub_100004FC8(&qword_1000AF1C8, &qword_10008A898);
    sub_100063630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1D0);
  }

  return result;
}

unint64_t sub_100063630()
{
  result = qword_1000AF1D8;
  if (!qword_1000AF1D8)
  {
    sub_100004FC8(&qword_1000AF1C0, &unk_10008A858);
    sub_1000636E8();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1D8);
  }

  return result;
}

unint64_t sub_1000636E8()
{
  result = qword_1000AF1E0;
  if (!qword_1000AF1E0)
  {
    sub_100004FC8(&qword_1000AF1B8, &qword_10008A848);
    sub_1000637A0();
    sub_100005C98(&qword_1000AF208, &qword_1000AD7F0, &qword_10008A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1E0);
  }

  return result;
}

unint64_t sub_1000637A0()
{
  result = qword_1000AF1E8;
  if (!qword_1000AF1E8)
  {
    sub_100004FC8(&qword_1000AF1B0, &qword_10008A840);
    sub_10006382C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1E8);
  }

  return result;
}

unint64_t sub_10006382C()
{
  result = qword_1000AF1F0;
  if (!qword_1000AF1F0)
  {
    sub_100004FC8(&qword_1000AF1A8, &qword_10008A838);
    sub_100005C98(&qword_1000AF1F8, &qword_1000AF200, &unk_10008A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1F0);
  }

  return result;
}

uint64_t sub_100063918()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v26 - v2;
  v3 = sub_1000801E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100080478();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v30);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000811C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_1000801F8();
  v28 = *(v21 - 8);
  v29 = v21;
  v22 = *(v28 + 64);
  __chkstk_darwin(v21);
  v23 = sub_1000800F8();
  sub_10000A794(v23, qword_1000B8008);
  v26[1] = sub_10000A480(v23, qword_1000B8008);
  sub_100081158();
  sub_100080448();
  (*(v14 + 16))(v18, v20, v13);
  v24 = v30;
  (*(v7 + 16))(v27, v12, v30);
  *v6 = type metadata accessor for BundleFinder();
  (*(v31 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v32);
  sub_100080208();
  (*(v7 + 8))(v12, v24);
  (*(v14 + 8))(v20, v13);
  (*(v28 + 56))(v33, 1, 1, v29);
  return sub_1000800E8();
}

uint64_t sub_100063D2C()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v65 = &v42 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v42 - v5;
  v64 = sub_1000801E8();
  v69 = *(v64 - 8);
  v6 = *(v69 + 64);
  __chkstk_darwin(v64);
  v58 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_100080478();
  v68 = *(v60 - 8);
  v8 = *(v68 + 64);
  v9 = __chkstk_darwin(v60);
  v59 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = sub_1000811C8();
  v66 = *(v13 - 8);
  v14 = v66;
  v15 = *(v66 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v63 = sub_1000801F8();
  v67 = *(v63 - 8);
  v21 = *(v67 + 64);
  __chkstk_darwin(v63);
  v56 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AF470, &qword_10008B290);
  v23 = sub_100002840(&qword_1000AF478, &qword_10008B298);
  v61 = v23;
  v24 = *(v23 - 8);
  v54 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v55 = v26;
  *(v26 + 16) = xmmword_100085A40;
  v57 = v26 + v25;
  v51 = *(v23 + 48);
  *(v26 + v25) = 0;
  sub_100081158();
  sub_100080448();
  v53 = *(v14 + 16);
  v42 = v18;
  v27 = v13;
  v53(v18, v20, v13);
  v28 = v68;
  v52 = *(v68 + 16);
  v29 = v60;
  v52(v59, v12, v60);
  v50 = type metadata accessor for BundleFinder();
  v30 = v58;
  *v58 = v50;
  v48 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v31 = *(v69 + 104);
  v69 += 104;
  v49 = v31;
  v31(v30);
  sub_100080208();
  v32 = *(v28 + 8);
  v68 = v28 + 8;
  v47 = v32;
  v32(v12, v29);
  v33 = *(v66 + 8);
  v66 += 8;
  v46 = v33;
  v33(v20, v27);
  v34 = *(v67 + 56);
  v67 += 56;
  v45 = v34;
  v34(v62, 1, 1, v63);
  v35 = sub_10007FF18();
  v36 = *(v35 - 8);
  v43 = *(v36 + 56);
  v44 = v36 + 56;
  v43(v65, 1, 1, v35);
  v37 = v57;
  sub_10007FF48();
  v51 = (v37 + v54);
  v54 = *(v61 + 48);
  *v51 = 1;
  sub_100081158();
  sub_100080448();
  v53(v42, v20, v27);
  v38 = v60;
  v52(v59, v12, v60);
  v39 = v58;
  *v58 = v50;
  v49(v39, v48, v64);
  sub_100080208();
  v47(v12, v38);
  v46(v20, v27);
  v45(v62, 1, 1, v63);
  v43(v65, 1, 1, v35);
  sub_10007FF48();
  v40 = sub_100068140(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B8020 = v40;
  return result;
}

uint64_t sub_1000644D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7468676972;
  }

  else
  {
    v4 = 1952867692;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7468676972;
  }

  else
  {
    v6 = 1952867692;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100081618();
  }

  return v9 & 1;
}

unint64_t sub_100064570()
{
  result = qword_1000AF220;
  if (!qword_1000AF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF220);
  }

  return result;
}

Swift::Int sub_1000645C4()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_10006463C()
{
  *v0;
  sub_100081298();
}

Swift::Int sub_1000646A0()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100064714@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A6DA0;
  v8._object = v3;
  v5 = sub_1000815F8(v4, v8);

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

void sub_100064774(uint64_t *a1@<X8>)
{
  v2 = 1952867692;
  if (*v1)
  {
    v2 = 0x7468676972;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000647AC()
{
  result = qword_1000AF228;
  if (!qword_1000AF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF228);
  }

  return result;
}

unint64_t sub_100064804()
{
  result = qword_1000AF230;
  if (!qword_1000AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF230);
  }

  return result;
}

unint64_t sub_10006485C()
{
  result = qword_1000AF238;
  if (!qword_1000AF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF238);
  }

  return result;
}

unint64_t sub_1000648B4()
{
  result = qword_1000AF240;
  if (!qword_1000AF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF240);
  }

  return result;
}

unint64_t sub_10006490C()
{
  result = qword_1000AF248;
  if (!qword_1000AF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF248);
  }

  return result;
}

unint64_t sub_100064968()
{
  result = qword_1000AF250;
  if (!qword_1000AF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF250);
  }

  return result;
}

unint64_t sub_100064A20()
{
  result = qword_1000AF258;
  if (!qword_1000AF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF258);
  }

  return result;
}

uint64_t sub_100064A74(uint64_t a1)
{
  v2 = sub_100064A20();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100064AC4()
{
  result = qword_1000AF260;
  if (!qword_1000AF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF260);
  }

  return result;
}

unint64_t sub_100064B1C()
{
  result = qword_1000AF268;
  if (!qword_1000AF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF268);
  }

  return result;
}

unint64_t sub_100064B74()
{
  result = qword_1000AF270;
  if (!qword_1000AF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF270);
  }

  return result;
}

uint64_t sub_100064BC8()
{
  if (qword_1000AC720 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100064C24(uint64_t a1)
{
  v2 = sub_100064968();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100064D0C()
{
  v0 = sub_1000800F8();
  sub_10000A794(v0, qword_1000B8028);
  sub_10000A480(v0, qword_1000B8028);
  return sub_1000800D8();
}

uint64_t sub_100064D70()
{
  v0 = sub_1000801F8();
  sub_10000A794(v0, qword_1000B8040);
  sub_10000A480(v0, qword_1000B8040);
  return sub_1000801D8();
}

uint64_t sub_100064DD4()
{
  v0 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  sub_10000A794(v0, qword_1000B8058);
  v1 = sub_10000A480(v0, qword_1000B8058);
  sub_10007FE78();
  v2 = sub_10007FE88();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100064E94()
{
  result = swift_getKeyPath();
  qword_1000B8070 = result;
  return result;
}

uint64_t sub_100064EBC()
{
  v1 = *(v0 + *(type metadata accessor for MenuOnLeftEntity() + 24));
}

uint64_t sub_100064EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100002840(&qword_1000AF438, &qword_10008B238) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100002840(&qword_1000AF440, &qword_10008B240) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100002840(&qword_1000AF448, &qword_10008B248) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_10007FBF8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for MenuOnLeftEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100002840(&qword_1000AF450, &qword_10008B250);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10006510C, 0, 0);
}

uint64_t sub_10006510C()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_10007FCE8();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10006719C(&qword_1000AF2D0);
  *v4 = v0;
  v4[1] = sub_1000651F4;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_100068AF4, 0, v8, v5);
}

uint64_t sub_1000651F4()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_1000652F0, 0, 0);
}

uint64_t sub_1000652F0()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_10007FCE8();
  sub_10007FCE8();
  *(v0 + 177) = *(v0 + 176);
  if (qword_1000AC740 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B8070;
  *(v0 + 152) = qword_1000B8070;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_100005C98(&qword_1000AF418, &qword_1000AF3B8, &qword_10008B188);
  *v6 = v0;
  v6[1] = sub_100065440;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for BooksMenuAnchor, v7);
}

uint64_t sub_100065440()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_1000689EC(v4);

  if (v0)
  {
    v5 = sub_10006581C;
  }

  else
  {
    v5 = sub_100065594;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100065594()
{
  v15 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v3 = v0[11];
  v4 = v0[10];
  v5 = v0[7];
  v18 = v0[8];
  v19 = v0[12];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v16 = v0[2];
  v17 = v0[9];
  sub_10007FCE8();
  v9 = sub_1000800C8();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_100080108();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_10004E850();
  sub_10006719C(&qword_1000AF2E0);
  sub_10007FBC8();
  (*(v1 + 16))(v13, v15, v2);
  sub_10007FBE8();
  sub_10007FC18();
  (*(v17 + 8))(v4, v18);
  sub_1000689EC(v14);
  (*(v1 + 8))(v15, v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006581C()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  (*(v0[15] + 8))(v0[17], v0[14]);

  v8 = v0[1];
  v9 = v0[21];

  return v8();
}

uint64_t sub_100065900()
{
  v0 = sub_100002840(&qword_1000AF458, &qword_10008B258);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000AC740 != -1)
  {
    swift_once();
  }

  sub_10007FEE8();

  type metadata accessor for MenuOnLeftEntity();
  sub_10006719C(&qword_1000AF2E0);
  sub_100005C98(&qword_1000AF460, &qword_1000AF458, &qword_10008B258);
  sub_10007FED8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100065ABC(uint64_t a1)
{
  v3 = type metadata accessor for MenuOnLeftEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100068A90(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007FCF8();
  return sub_1000689EC(a1);
}

void (*sub_100065B4C(uint64_t *a1))(void *)
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
  v4 = *v1;
  *(v3 + 32) = sub_10007FCD8();
  return sub_100065BC0;
}

uint64_t sub_100065BC4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_10007FCE8();
  *a1 = v5;
  return result;
}

uint64_t sub_100065C00(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_10007FCF8();
}

void (*sub_100065C38(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_10007FCD8();
  return sub_100068B00;
}

uint64_t sub_100065CAC()
{
  if (qword_1000AC740 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100065D28()
{
  result = qword_1000AF298;
  if (!qword_1000AF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF298);
  }

  return result;
}

unint64_t sub_100065D80()
{
  result = qword_1000AF2A0;
  if (!qword_1000AF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2A0);
  }

  return result;
}

uint64_t sub_100065EB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC738 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  v3 = sub_10000A480(v2, qword_1000B8058);
  return sub_1000055FC(v3, a1, &qword_1000AF468, &qword_10008B288);
}

uint64_t sub_100065F48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB6C;

  return sub_100064EF0(a1, v5, v4);
}

uint64_t sub_100065FF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100068540();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10006603C()
{
  result = qword_1000AF2A8;
  if (!qword_1000AF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2A8);
  }

  return result;
}

uint64_t type metadata accessor for MenuOnLeftEntity()
{
  result = qword_1000AF3A0;
  if (!qword_1000AF3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100066130()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() bu_groupUserDefaults];
  v3 = [v2 BKMenuOnLeft];

  *v1 = v3 ^ 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000661D8(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB6C;

  return sub_100066274(a1, v4);
}

uint64_t sub_100066294()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() bu_groupUserDefaults];
  if (v1)
  {
    v3 = sub_100081618();
  }

  else
  {
    v3 = 1;
  }

  [v2 setBKMenuOnLeft:v3 & 1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10006637C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_1000801F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  sub_1000801D8();
  sub_1000801D8();
  v14 = *(v11 + 56);
  v11 += 56;
  v14(v9, 0, 1, v10);
  v15 = sub_10007FF18();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_100002840(&qword_1000AEDA8, &qword_10008B1F0);
  v16 = *(v11 + 16);
  v17 = (*(v11 + 24) + 32) & ~*(v11 + 24);
  *(swift_allocObject() + 16) = xmmword_100085C00;
  sub_1000801D8();
  sub_1000801D8();
  sub_10007FF28();
  v18 = type metadata accessor for MenuOnLeftEntity();
  v19 = (a1 + *(v18 + 20));
  *v19 = 0xD000000000000015;
  v19[1] = 0x8000000100085040;
  v20 = *(v18 + 24);
  sub_100002840(&qword_1000AF290, &qword_10008AB80);
  sub_1000801D8();
  sub_100005C98(&qword_1000AF418, &qword_1000AF3B8, &qword_10008B188);
  sub_100064A20();
  result = sub_100080168();
  *(a1 + v20) = result;
  return result;
}

uint64_t sub_100066748()
{
  sub_10006637C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000667B0()
{
  result = qword_1000AF2B8;
  if (!qword_1000AF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2B8);
  }

  return result;
}

uint64_t sub_100066804(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100066F48();
  *v5 = v2;
  v5[1] = sub_1000668B4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_1000668B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_1000669CC()
{
  result = qword_1000AF2C0;
  if (!qword_1000AF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2C0);
  }

  return result;
}

unint64_t sub_100066A24()
{
  result = qword_1000AF2C8;
  if (!qword_1000AF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2C8);
  }

  return result;
}

uint64_t sub_100066AAC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100066F48();
  *v6 = v2;
  v6[1] = sub_100068B20;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100066B60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100066F48();
  *v5 = v2;
  v5[1] = sub_100068AF8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100066C14()
{
  result = qword_1000AF2D8;
  if (!qword_1000AF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2D8);
  }

  return result;
}

unint64_t sub_100066CA0()
{
  result = qword_1000AF2E8;
  if (!qword_1000AF2E8)
  {
    sub_100004FC8(&qword_1000AF2F0, qword_10008AE20);
    sub_10006719C(&qword_1000AF2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2E8);
  }

  return result;
}

uint64_t sub_100066D40(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000667B0();
  *v6 = v2;
  v6[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100066DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000074F4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100066F48()
{
  result = qword_1000AF310;
  if (!qword_1000AF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF310);
  }

  return result;
}

uint64_t sub_100066F9C()
{
  v0 = qword_1000AF210;

  return v0;
}

uint64_t sub_100067070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_100067100(uint64_t a1)
{
  v2 = sub_10006719C(&qword_1000AF2D0);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10006719C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MenuOnLeftEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000671E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007FF58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100067248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000AB6C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10006730C(uint64_t a1)
{
  v2 = sub_10006719C(&qword_1000AF328);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100067398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007FF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006746C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007FF58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100067528()
{
  sub_10007FF58();
  if (v0 <= 0x3F)
  {
    sub_1000675B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000675B4()
{
  if (!qword_1000AF3B0)
  {
    type metadata accessor for MenuOnLeftEntity();
    sub_100004FC8(&qword_1000AF3B8, &qword_10008B188);
    sub_10006719C(&qword_1000AF2D0);
    sub_100005C98(&qword_1000AF3C0, &qword_1000AF3B8, &qword_10008B188);
    sub_1000676B0();
    v0 = sub_100080188();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF3B0);
    }
  }
}

unint64_t sub_1000676B0()
{
  result = qword_1000AF3C8;
  if (!qword_1000AF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3C8);
  }

  return result;
}

unint64_t sub_1000677AC(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD490, &qword_10008B2F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002840(&qword_1000AF4B0, &qword_10008B2F8);
    v8 = sub_1000815D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_1000AD490, &qword_10008B2F0);
      v12 = *v6;
      result = sub_10004400C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10007FF58();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100067994(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3D8, &qword_100087340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002840(&qword_1000AF4A8, &qword_10008B2E8);
    v8 = sub_1000815D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_1000AD3D8, &qword_100087340);
      v12 = *v6;
      result = sub_10003F450(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10007FF58();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100067B7C(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEB10, &qword_1000891C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002840(&qword_1000AF4A0, &unk_10008B2D8);
    v8 = sub_1000815D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_1000AEB10, &qword_1000891C0);
      v12 = *v6;
      result = sub_10004400C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10007FF58();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100067D64(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEDA0, &unk_100089980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002840(&qword_1000AF488, &unk_10008B2B0);
    v8 = sub_1000815D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_1000AEDA0, &unk_100089980);
      v12 = *v6;
      result = sub_10003F590(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10007FF58();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100067F4C(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AEDC0, qword_1000899A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002840(&qword_1000AF490, &qword_10008B2C0);
    v8 = sub_1000815D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_1000AEDC0, qword_1000899A0);
      v12 = *v6;
      result = sub_10003F590(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100002840(&qword_1000AF498, &unk_10008B2C8);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100068140(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AF478, &qword_10008B298);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002840(&qword_1000AF480, &unk_10008B2A0);
    v8 = sub_1000815D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000055FC(v10, v6, &qword_1000AF478, &qword_10008B298);
      v12 = *v6;
      result = sub_10003F618(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10007FF58();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100068328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002840(&qword_1000AF4C0, &qword_10008B308);
    v3 = sub_1000815D8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003F6B4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10006843C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002840(&qword_1000AF4B8, &qword_10008B300);
    v3 = sub_1000815D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003F6B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100068540()
{
  v36 = sub_100080078();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v36);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v29 - v9;
  v11 = sub_100002840(&qword_1000AF420, &qword_10008B218);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v29 - v13;
  v29[0] = v29 - v13;
  v15 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v29 - v17;
  v32 = v29 - v17;
  v19 = sub_1000801F8();
  v35 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v33 = sub_100002840(&qword_1000AF428, &qword_10008B220);
  sub_1000801D8();
  v34 = *(v20 + 56);
  v34(v18, 1, 1, v19);
  v22 = type metadata accessor for MenuOnLeftEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_10007FBF8();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v25 = v8;
  v24(v8, 1, 1, v23);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v0 + 104);
  v29[1] = v0 + 104;
  v30 = v26;
  v26(v3);
  sub_10006719C(&qword_1000AF2D0);
  v27 = v32;
  v33 = sub_10007FD28();
  sub_100002840(&qword_1000AF430, &qword_10008B228);
  sub_1000801D8();
  v34(v27, 1, 1, v35);
  v37 = 2;
  v24(v10, 1, 1, v23);
  v24(v25, 1, 1, v23);
  v30(v3, v31, v36);
  sub_100064A20();
  sub_10007FD18();
  return v33;
}

uint64_t sub_1000689EC(uint64_t a1)
{
  v2 = type metadata accessor for MenuOnLeftEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068A48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for MenuOnLeftEntity() + 24));
}

uint64_t sub_100068A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuOnLeftEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100068C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LargeWidgetView()
{
  result = qword_1000AF520;
  if (!qword_1000AF520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100068D2C()
{
  sub_100002A24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100068DDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000807B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AF560, &qword_10008B430);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (v22 - v11);
  *v12 = sub_100080F48();
  v12[1] = v13;
  v14 = sub_100002840(&qword_1000AF568, &qword_10008B438);
  sub_100069004(a1, v12 + *(v14 + 44));
  v15 = (a1 + *(type metadata accessor for LargeWidgetView() + 20));
  v16 = v15[3];
  v22[2] = v15[2];
  v22[3] = v16;
  v22[4] = v15[4];
  v17 = v15[1];
  v22[0] = *v15;
  v22[1] = v17;
  if (sub_100057D5C())
  {
    (*(v5 + 104))(v8, enum case for ColorScheme.light(_:), v4);
  }

  else
  {
    sub_100005180(v8);
  }

  KeyPath = swift_getKeyPath();
  v19 = (a2 + *(sub_100002840(&qword_1000AF570, &qword_10008B470) + 36));
  v20 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  (*(v5 + 32))(v19 + *(v20 + 28), v8, v4);
  *v19 = KeyPath;
  return sub_10000C1E0(v12, a2, &qword_1000AF560, &qword_10008B430);
}

uint64_t sub_100069004@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for LogoView();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v62 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v48 - v7;
  v60 = sub_100080B88();
  v59 = *(v60 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v60);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v48 - v12;
  v14 = sub_100002840(&qword_1000AF578, &qword_10008B478);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v54 = sub_100002840(&qword_1000AF580, &qword_10008B480);
  v57 = *(v54 - 8);
  v18 = *(v57 + 64);
  __chkstk_darwin(v54);
  v20 = &v48 - v19;
  v58 = sub_100002840(&qword_1000AF588, &qword_10008B488);
  v55 = *(v58 - 8);
  v21 = *(v55 + 64);
  v22 = __chkstk_darwin(v58);
  v56 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v52 = &v48 - v24;
  sub_1000807F8();
  *v17 = sub_100080A68();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v25 = &v17[*(sub_100002840(&qword_1000AF590, &unk_10008B490) + 44)];
  v49 = a1;
  sub_10006970C(a1, v25);
  v26 = (a1 + *(type metadata accessor for LargeWidgetView() + 20));
  v27 = v26[3];
  v72 = v26[2];
  v73 = v27;
  v74 = v26[4];
  v28 = v26[1];
  v70 = *v26;
  v71 = v28;
  sub_100029988(v13);
  v29 = sub_100080308();
  v30 = *(v29 - 8);
  v50 = *(v30 + 56);
  v51 = v30 + 56;
  v50(v13, 0, 1, v29);
  v31 = sub_100005C98(&qword_1000AF598, &qword_1000AF578, &qword_10008B478);
  sub_100080D58();
  sub_100005B2C(v13, &qword_1000AD3B0, &unk_100087320);
  sub_100005B2C(v17, &qword_1000AF578, &qword_10008B478);
  v32 = v53;
  sub_100080B78();
  v64 = v49;
  sub_100080F48();
  sub_100002840(&qword_1000ACA68, &qword_100085B00);
  *&v65 = v14;
  *(&v65 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  sub_1000050CC();
  v33 = v52;
  v34 = v54;
  sub_100080DF8();
  (*(v59 + 8))(v32, v60);
  (*(v57 + 8))(v20, v34);
  v35 = v26[3];
  v67 = v26[2];
  v68 = v35;
  v69 = v26[4];
  v36 = *v26;
  v66 = v26[1];
  v65 = v36;
  v37 = v61;
  sub_100029988(v61);
  v50(v37, 0, 1, v29);
  v38 = v55;
  v39 = *(v55 + 16);
  v40 = v56;
  v41 = v33;
  v42 = v58;
  v39(v56, v33, v58);
  v43 = v62;
  sub_10006B9B4(v37, v62, type metadata accessor for LogoView);
  v44 = v63;
  v39(v63, v40, v42);
  v45 = sub_100002840(&qword_1000AF5A0, &unk_10008B4A0);
  sub_10006B9B4(v43, &v44[*(v45 + 48)], type metadata accessor for LogoView);
  sub_10006C1CC(v37, type metadata accessor for LogoView);
  v46 = *(v38 + 8);
  v46(v41, v42);
  sub_10006C1CC(v43, type metadata accessor for LogoView);
  return (v46)(v40, v42);
}

uint64_t sub_10006970C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v71 = type metadata accessor for TodayReadingGoalView(0);
  v3 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v5 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = sub_100002840(&qword_1000AF5A8, &qword_10008B4E8);
  v6 = *(*(v75 - 8) + 64);
  v7 = __chkstk_darwin(v75);
  v78 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v76 = &v69[-v10];
  __chkstk_darwin(v9);
  v77 = &v69[-v11];
  v70 = sub_100080B88();
  v12 = *(v70 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v70);
  v15 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100002840(&qword_1000AF5B0, &qword_10008B4F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v69[-v18];
  v20 = sub_100002840(&qword_1000AF5B8, &qword_10008B4F8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v69[-v22];
  v24 = sub_100002840(&qword_1000AF5C0, &qword_10008B500);
  v73 = *(v24 - 8);
  v74 = v24;
  v25 = *(v73 + 64);
  v26 = __chkstk_darwin(v24);
  v72 = &v69[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v80 = &v69[-v28];
  *v19 = sub_100080A28();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v29 = sub_100002840(&qword_1000AF5C8, &qword_10008B508);
  sub_100069F60(a1, &v19[*(v29 + 44)]);
  sub_1000807F8();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v19, v23, &qword_1000AF5B0, &qword_10008B4F0);
  v30 = &v23[*(v20 + 36)];
  v31 = v90;
  v30[4] = v89;
  v30[5] = v31;
  v30[6] = v91;
  v32 = v86;
  *v30 = v85;
  v30[1] = v32;
  v33 = v88;
  v30[2] = v87;
  v30[3] = v33;
  sub_100080B78();
  sub_100080F48();
  sub_10006BA1C();
  sub_10002B1F8();
  sub_100080DF8();
  (*(v12 + 8))(v15, v70);
  sub_100005B2C(v23, &qword_1000AF5B8, &qword_10008B4F8);
  v34 = type metadata accessor for LargeWidgetView();
  v35 = *(v34 + 20);
  v70 = *(a1 + *(v34 + 24));
  v36 = *(a1 + v35 + 48);
  v82 = *(a1 + v35 + 32);
  v83 = v36;
  v84 = *(a1 + v35 + 64);
  v37 = v84;
  v38 = *(a1 + v35 + 16);
  v81[0] = *(a1 + v35);
  v39 = v81[0];
  v81[1] = v38;
  v5[2] = v82;
  v5[3] = v36;
  v5[4] = v37;
  *v5 = v39;
  v5[1] = v38;
  v40 = v5 + *(v71 + 20);
  *v40 = 0x4062C00000000000;
  v41 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
  v42 = v41[5];
  v43 = enum case for ColorScheme.dark(_:);
  v44 = sub_1000807B8();
  (*(*(v44 - 8) + 104))(&v40[v42], v43, v44);
  *&v40[v41[6]] = 0x4040000000000000;
  v45 = v41[7];
  v46 = enum case for BlendMode.plusLighter(_:);
  v47 = sub_100080F68();
  (*(*(v47 - 8) + 104))(&v40[v45], v46, v47);
  v48 = v41[8];
  sub_10006BAD4(v81, v92);
  *&v40[v48] = sub_100080CC8();
  v49 = v41[9];
  sub_100080C88();
  *&v40[v49] = v50;
  v51 = v41[10];
  *&v40[v51] = sub_100080B28();
  v52 = &v40[v41[11]];
  *v52 = 0x69662E656D616C66;
  *(v52 + 1) = 0xEA00000000006C6CLL;
  *&v40[v41[12]] = 0x4020000000000000;
  sub_100080F48();
  sub_1000808F8();
  v53 = v76;
  sub_10006BB30(v5, v76, type metadata accessor for TodayReadingGoalView);
  v54 = &v53[*(v75 + 36)];
  v55 = v92[5];
  v54[4] = v92[4];
  v54[5] = v55;
  v54[6] = v92[6];
  v56 = v92[1];
  *v54 = v92[0];
  v54[1] = v56;
  v57 = v92[3];
  v54[2] = v92[2];
  v54[3] = v57;
  v58 = v77;
  sub_10006BB98(v53, v77);
  v60 = v72;
  v59 = v73;
  v61 = *(v73 + 16);
  v62 = v74;
  v61(v72, v80, v74);
  v63 = v78;
  sub_1000055FC(v58, v78, &qword_1000AF5A8, &qword_10008B4E8);
  v64 = v79;
  v61(v79, v60, v62);
  v65 = sub_100002840(&qword_1000AF5E0, &qword_10008B510);
  v66 = &v64[*(v65 + 48)];
  *v66 = v70;
  v66[8] = 0;
  sub_1000055FC(v63, &v64[*(v65 + 64)], &qword_1000AF5A8, &qword_10008B4E8);
  sub_100005B2C(v58, &qword_1000AF5A8, &qword_10008B4E8);
  v67 = *(v59 + 8);
  v67(v80, v62);
  sub_100005B2C(v63, &qword_1000AF5A8, &qword_10008B4E8);
  return (v67)(v60, v62);
}