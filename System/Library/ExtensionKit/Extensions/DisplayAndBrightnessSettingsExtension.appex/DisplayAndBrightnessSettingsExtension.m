unint64_t sub_100001A30()
{
  result = qword_10001C148;
  if (!qword_10001C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C148);
  }

  return result;
}

unint64_t sub_100001A88()
{
  result = qword_10001C150;
  if (!qword_10001C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C150);
  }

  return result;
}

unint64_t sub_100001AE0()
{
  result = qword_10001C158;
  if (!qword_10001C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C158);
  }

  return result;
}

uint64_t sub_100001B34()
{
  v0 = sub_100005414(&qword_10001C220, &qword_1000108E8);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = (*(*(sub_100005414(&qword_10001C228, &qword_1000108F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  sub_100001AE0();
  if (v7)
  {
    v8 = "estures Settings Deep Links";
  }

  else
  {
    v8 = "skingAndGestures";
  }

  if (v7)
  {
    v9 = 0xD000000000000040;
  }

  else
  {
    v9 = 0xD000000000000030;
  }

  sub_10000FC8C();
  v12._object = (v8 | 0x8000000000000000);
  v12._countAndFlagsBits = v9;
  sub_10000FC7C(v12);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000FC6C();
  (*(v1 + 8))(v4, v0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10000FC7C(v13);
  return sub_10000FC9C();
}

uint64_t sub_100001D64()
{
  v0 = (*(*(sub_100005414(&qword_10001C208, &unk_1000115D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_10000FD2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_10000FCDC();
  sub_100005494(v6, qword_10001C580);
  sub_10000545C(v6, qword_10001C580);
  sub_10000FD0C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000FCCC();
}

uint64_t sub_100001ED4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = sub_10000FD1C();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10000FD5C() - 8) + 64);
  (__chkstk_darwin)();
  v8 = *(*(sub_10000FD8C() - 8) + 64);
  (__chkstk_darwin)();
  v9 = (*(*(sub_100005414(&qword_10001C200, &unk_1000108D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v11 = &v37 - v10;
  v12 = (*(*(sub_100005414(&qword_10001C208, &unk_1000115D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v14 = &v37 - v13;
  v15 = sub_10000FD2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = (__chkstk_darwin)();
  v39 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v16 + 56))(v14, 0, 1, v15);
      sub_10000FBDC();
      v35 = sub_10000FBEC();
      (*(*(v35 - 8) + 56))(v11, 0, 1, v35);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v38);
      break;
    case 12:
      sub_10000FD0C();
      sub_10000FD0C();
      v26 = *(v16 + 56);
      v25 = v16 + 56;
      v26(v14, 0, 1, v15);
      sub_10000FBDC();
      v27 = sub_10000FBEC();
      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v28 = *(v25 + 16);
      v29 = (*(v25 + 24) + 32) & ~*(v25 + 24);
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v38);
      break;
    case 13:
      sub_10000FD0C();
      sub_10000FD0C();
      v31 = *(v16 + 56);
      v30 = v16 + 56;
      v31(v14, 0, 1, v15);
      sub_10000FBDC();
      v32 = sub_10000FBEC();
      (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v33 = *(v30 + 16);
      v34 = (*(v30 + 24) + 32) & ~*(v30 + 24);
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v38);
      break;
    default:
      sub_10000FD0C();
      v21 = *(v16 + 56);
      v20 = v16 + 56;
      v21(v14, 1, 1, v15);
      sub_10000FBDC();
      v22 = sub_10000FBEC();
      (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v23 = *(v20 + 16);
      v24 = (*(v20 + 24) + 32) & ~*(v20 + 24);
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v38);
      break;
  }

  sub_10000FD3C();
  return sub_10000FBFC();
}

uint64_t sub_100003358(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000556C;

  return sub_100004D98(a1);
}

uint64_t sub_100003400(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005550;

  return sub_100004AC4();
}

uint64_t sub_1000034A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003564;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003564(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100003668()
{
  result = qword_10001C160;
  if (!qword_10001C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C160);
  }

  return result;
}

uint64_t sub_1000036BC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003760;

  return sub_1000052A8();
}

uint64_t sub_100003760(uint64_t a1)
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

unint64_t sub_100003878()
{
  result = qword_10001C168;
  if (!qword_10001C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C168);
  }

  return result;
}

unint64_t sub_1000038D0()
{
  result = qword_10001C170;
  if (!qword_10001C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C170);
  }

  return result;
}

unint64_t sub_100003928()
{
  result = qword_10001C178;
  if (!qword_10001C178)
  {
    sub_1000039AC(&qword_10001C180, qword_100010378);
    sub_1000038D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C178);
  }

  return result;
}

uint64_t sub_1000039AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000039F4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003668();
  *v6 = v2;
  v6[1] = sub_100003AA8;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100003AA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003B9C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003C40;

  return sub_10000506C();
}

uint64_t sub_100003C40(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100003D5C()
{
  result = qword_10001C188;
  if (!qword_10001C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C188);
  }

  return result;
}

uint64_t sub_100003DB4()
{
  v0 = qword_10001C0F8;

  return v0;
}

unint64_t sub_100003DF0()
{
  result = qword_10001C190;
  if (!qword_10001C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C190);
  }

  return result;
}

unint64_t sub_100003E48()
{
  result = qword_10001C198;
  if (!qword_10001C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C198);
  }

  return result;
}

unint64_t sub_100003EA0()
{
  result = qword_10001C1A0;
  if (!qword_10001C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A0);
  }

  return result;
}

unint64_t sub_100003EF8()
{
  result = qword_10001C1A8;
  if (!qword_10001C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A8);
  }

  return result;
}

uint64_t sub_100003F4C()
{
  sub_1000054F8();
  v1 = sub_10000FC3C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100003FBC()
{
  result = qword_10001C1B0;
  if (!qword_10001C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B0);
  }

  return result;
}

unint64_t sub_100004010()
{
  result = qword_10001C1B8;
  if (!qword_10001C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B8);
  }

  return result;
}

unint64_t sub_100004068()
{
  result = qword_10001C1C0;
  if (!qword_10001C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C0);
  }

  return result;
}

unint64_t sub_1000040C4()
{
  result = qword_10001C1C8;
  if (!qword_10001C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C8);
  }

  return result;
}

uint64_t sub_100004124@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C108 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FCDC();
  v3 = sub_10000545C(v2, qword_10001C580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004210(uint64_t a1)
{
  v2 = sub_100001AE0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004260()
{
  result = qword_10001C1E0;
  if (!qword_10001C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E0);
  }

  return result;
}

uint64_t sub_1000042BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003AA8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004380(uint64_t a1)
{
  v2 = sub_100004068();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000043CC(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 0x617469746C754D2FLL;
      break;
    case 2:
      result = 0x7263536C6C75462FLL;
      break;
    case 3:
      result = 0x65776F646E69572FLL;
      break;
    case 4:
      result = 0x614D65676174532FLL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0x41746E656365522FLL;
      break;
    case 7:
      result = 0x6B636F442FLL;
      break;
    case 8:
      result = 0x746375646F72502FLL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6F54656B6168532FLL;
      break;
    case 11:
      result = 0x4772656E726F432FLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x4550535F5069502FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000045D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000043CC(*a1);
  v5 = v4;
  if (v3 == sub_1000043CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000FDBC();
  }

  return v8 & 1;
}

unint64_t sub_100004664()
{
  result = qword_10001C1E8;
  if (!qword_10001C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E8);
  }

  return result;
}

Swift::Int sub_1000046B8()
{
  v1 = *v0;
  sub_10000FDDC();
  sub_1000043CC(v1);
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_10000471C()
{
  sub_1000043CC(*v0);
  sub_10000FD9C();
}

Swift::Int sub_100004770()
{
  v1 = *v0;
  sub_10000FDDC();
  sub_1000043CC(v1);
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_1000047D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000053C8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100004800@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000043CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100004870(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000039AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000048E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000053C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100004960(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000049F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004AE0()
{
  for (i = 0; i != 14; ++i)
  {
    v3 = *(&off_100018A08 + i + 32);
    if (v3 >= 0xC)
    {
      if (v3 == 12)
      {
        v8 = [objc_opt_self() currentDevice];
        v9 = [v8 userInterfaceIdiom];

        if (v9 != 1 || ([objc_opt_self() isPictureInPictureSupported] & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v1 = [objc_opt_self() currentDevice];
        v2 = [v1 userInterfaceIdiom];

        if (v2 || ![objc_opt_self() isPictureInPictureSupported])
        {
          continue;
        }
      }
    }

    else
    {
      v4 = [objc_opt_self() currentDevice];
      v5 = [v4 userInterfaceIdiom];

      if (v5 != 1)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000B9B8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v7 = *(&_swiftEmptyArrayStorage + 2);
    v6 = *(&_swiftEmptyArrayStorage + 3);
    if (v7 >= v6 >> 1)
    {
      sub_10000B9B8((v6 > 1), v7 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v7 + 1;
    *(&_swiftEmptyArrayStorage + v7 + 32) = v3;
  }

  v10 = *(&_swiftEmptyArrayStorage + 2);
  if (v10)
  {
    sub_10000B988(0, v10, 0);
    v11 = *(&_swiftEmptyArrayStorage + 2);
    v12 = 32;
    do
    {
      v13 = *(&_swiftEmptyArrayStorage + v12);
      v14 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v14 >> 1)
      {
        sub_10000B988((v14 > 1), v11 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      *(&_swiftEmptyArrayStorage + v11 + 32) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v17 + 8);

  return v15(&_swiftEmptyArrayStorage);
}

uint64_t sub_100004DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = v7 == 12;
      if (v7 >= 0xC)
      {
        if (v8)
        {
          v13 = [objc_opt_self() currentDevice];
          v14 = [v13 userInterfaceIdiom];

          if (v14 == 1 && ([objc_opt_self() isPictureInPictureSupported] & 1) != 0)
          {
LABEL_7:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000B9B8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
            }

            v12 = *(&_swiftEmptyArrayStorage + 2);
            v11 = *(&_swiftEmptyArrayStorage + 3);
            if (v12 >= v11 >> 1)
            {
              sub_10000B9B8((v11 > 1), v12 + 1, 1);
            }

            *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
            *(&_swiftEmptyArrayStorage + v12 + 32) = v6;
          }
        }

        else
        {
          v4 = [objc_opt_self() currentDevice];
          v5 = [v4 userInterfaceIdiom];

          if (!v5 && [objc_opt_self() isPictureInPictureSupported])
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v9 = [objc_opt_self() currentDevice];
        v10 = [v9 userInterfaceIdiom];

        if (v10 == 1)
        {
          goto LABEL_7;
        }
      }

      --v2;
    }

    while (v2);
  }

  v15 = *(&_swiftEmptyArrayStorage + 2);
  if (v15)
  {
    sub_10000B988(0, v15, 0);
    v16 = *(&_swiftEmptyArrayStorage + 2);
    v17 = 32;
    do
    {
      v18 = *(&_swiftEmptyArrayStorage + v17);
      v19 = *(&_swiftEmptyArrayStorage + 3);
      if (v16 >= v19 >> 1)
      {
        sub_10000B988((v19 > 1), v16 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v16 + 1;
      *(&_swiftEmptyArrayStorage + v16 + 32) = v18;
      ++v17;
      ++v16;
      --v15;
    }

    while (v15);
  }

  v20 = *(v22 + 8);

  return v20(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005088()
{
  for (i = 0; i != 14; ++i)
  {
    v4 = *(&off_100018A08 + i + 32);
    if (v4 >= 0xC)
    {
      if (v4 == 12)
      {
        v9 = [objc_opt_self() currentDevice];
        v10 = [v9 userInterfaceIdiom];

        if (v10 != 1 || ([objc_opt_self() isPictureInPictureSupported] & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v2 = [objc_opt_self() currentDevice];
        v3 = [v2 userInterfaceIdiom];

        if (v3 || ![objc_opt_self() isPictureInPictureSupported])
        {
          continue;
        }
      }
    }

    else
    {
      v5 = [objc_opt_self() currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != 1)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000B9B8(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_10000B9B8((v7 > 1), v8 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v8 + 1;
    *(&_swiftEmptyArrayStorage[4] + v8) = v4;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v11 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v11 = 14;
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_1000052C4()
{
  sub_10000B988(0, 14, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_100018A08 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10000B988((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 14);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000053C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018A38;
  v6._object = a2;
  v4 = sub_10000FDAC(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100005414(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000545C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005494(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000054F8()
{
  result = qword_10001C218;
  if (!qword_10001C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C218);
  }

  return result;
}

unint64_t sub_100005574()
{
  result = qword_10001C240;
  if (!qword_10001C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C240);
  }

  return result;
}

unint64_t sub_1000055CC()
{
  result = qword_10001C248;
  if (!qword_10001C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C248);
  }

  return result;
}

unint64_t sub_100005624()
{
  result = qword_10001C250;
  if (!qword_10001C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C250);
  }

  return result;
}

uint64_t sub_100005678(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x8000000100012020;
    if (a1 != 1)
    {
      v9 = 0x8000000100012040;
    }

    if (a1)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 47;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE100000000000000;
    }
  }

  else
  {
    v3 = 0x525F574F4C4C4123;
    v4 = 0xEE0053544E454345;
    if (a1 != 5)
    {
      v3 = 0xD00000000000001BLL;
      v4 = 0x80000001000120B0;
    }

    v5 = 0x8000000100012060;
    v6 = 0xD000000000000016;
    if (a1 != 3)
    {
      v6 = 0xD000000000000011;
      v5 = 0x8000000100012080;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    if (v2 <= 4)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = "#USE_LARGE_APP_ICONS";
      }

      else
      {
        v11 = "#APP_DOWNLOADS_GO_TO";
      }

      v10 = (v11 - 32) | 0x8000000000000000;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v10 = 0xE100000000000000;
      if (v7 != 47)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xEE0053544E454345;
      if (v7 != 0x525F574F4C4C4123)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v10 = 0x80000001000120B0;
      if (v7 != 0xD00000000000001BLL)
      {
LABEL_41:
        v12 = sub_10000FDBC();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v10 = 0x8000000100012060;
    if (v7 != 0xD000000000000016)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0x8000000100012080;
    if (v7 != 0xD000000000000011)
    {
      goto LABEL_41;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_41;
  }

  v12 = 1;
LABEL_42:

  return v12 & 1;
}

Swift::Int sub_10000589C()
{
  sub_10000FDDC();
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_1000059D0()
{
  v0 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10000FD2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10000FCDC();
  sub_100005494(v7, qword_10001C598);
  sub_10000545C(v7, qword_10001C598);
  sub_10000FD0C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10000FCCC();
}

uint64_t sub_100005B40@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v136) = a1;
  v144 = a2;
  v2 = sub_10000FD1C();
  v139 = *(v2 - 8);
  v140 = v2;
  v3 = *(v139 + 64);
  __chkstk_darwin(v2);
  v143 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000FD5C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v142 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000FD8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v141 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000FBEC();
  v137 = *(v11 - 8);
  v138 = v11;
  v12 = *(v137 + 64);
  v13 = __chkstk_darwin(v11);
  v132 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v130 = &v121 - v16;
  v17 = __chkstk_darwin(v15);
  v129 = &v121 - v18;
  v19 = __chkstk_darwin(v17);
  v126 = &v121 - v20;
  v21 = __chkstk_darwin(v19);
  v135 = &v121 - v22;
  v23 = __chkstk_darwin(v21);
  v134 = &v121 - v24;
  __chkstk_darwin(v23);
  v133 = &v121 - v25;
  v26 = sub_100005414(&qword_10001C200, &unk_1000108D0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v131 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v128 = &v121 - v31;
  v32 = __chkstk_darwin(v30);
  v127 = &v121 - v33;
  v34 = __chkstk_darwin(v32);
  v125 = &v121 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v121 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v121 - v40;
  __chkstk_darwin(v39);
  v43 = &v121 - v42;
  v44 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v124 = &v121 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v123 = &v121 - v49;
  v50 = __chkstk_darwin(v48);
  v122 = &v121 - v51;
  v52 = __chkstk_darwin(v50);
  v121 = &v121 - v53;
  v54 = __chkstk_darwin(v52);
  v56 = &v121 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = &v121 - v58;
  __chkstk_darwin(v57);
  v61 = &v121 - v60;
  v62 = sub_10000FD2C();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v65 = __chkstk_darwin(v62);
  v66 = __chkstk_darwin(v65);
  v67 = __chkstk_darwin(v66);
  v68 = __chkstk_darwin(v67);
  v69 = __chkstk_darwin(v68);
  v70 = __chkstk_darwin(v69);
  v71 = __chkstk_darwin(v70);
  v72 = __chkstk_darwin(v71);
  v73 = v136;
  if (v136 <= 2u)
  {
    v131 = v43;
    v132 = v41;
    v82 = v133;
    v83 = v134;
    v136 = v38;
    v84 = v135;
    if (v73)
    {
      v85 = v72;
      if (v73 == 1)
      {
        sub_10000FD0C();
        sub_10000FD0C();
        (*(v63 + 56))(v59, 0, 1, v85);
        v86 = [objc_opt_self() currentDevice];
        [v86 userInterfaceIdiom];

        sub_10000FBDC();
        v88 = v137;
        v87 = v138;
        v89 = v132;
        (*(v137 + 32))(v132, v83, v138);
        (*(v88 + 56))(v89, 0, 1, v87);
      }

      else
      {
        sub_10000FD0C();
        sub_10000FD0C();
        (*(v63 + 56))(v56, 0, 1, v85);
        v102 = [objc_opt_self() currentDevice];
        [v102 userInterfaceIdiom];

        sub_10000FBDC();
        v104 = v136;
        v103 = v137;
        v105 = v138;
        (*(v137 + 32))(v136, v84, v138);
        (*(v103 + 56))(v104, 0, 1, v105);
      }

      sub_10000FD7C();
      sub_10000FD4C();
      (*(v139 + 104))(v143, enum case for LocalizedStringResource.BundleDescription.main(_:), v140);
      sub_10000FD3C();
    }

    else
    {
      v97 = v72;
      sub_10000FD0C();
      (*(v63 + 56))(v61, 1, 1, v97);
      v98 = [objc_opt_self() currentDevice];
      [v98 userInterfaceIdiom];

      sub_10000FBDC();
      v100 = v137;
      v99 = v138;
      v101 = v131;
      (*(v137 + 32))(v131, v82, v138);
      (*(v100 + 56))(v101, 0, 1, v99);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v139 + 104))(v143, enum case for LocalizedStringResource.BundleDescription.main(_:), v140);
      sub_10000FD3C();
    }
  }

  else
  {
    v74 = v72;
    if (v136 > 4u)
    {
      if (v136 != 5)
      {
        sub_10000FD0C();
        v113 = v124;
        sub_10000FD0C();
        (*(v63 + 56))(v113, 0, 1, v74);
        v114 = [objc_opt_self() currentDevice];
        [v114 userInterfaceIdiom];

        v115 = v132;
        sub_10000FBDC();
        v116 = v137;
        v117 = v131;
        v118 = v115;
        v119 = v138;
        (*(v137 + 32))(v131, v118, v138);
        (*(v116 + 56))(v117, 0, 1, v119);
        sub_10000FD7C();
        sub_10000FD4C();
        (*(v139 + 104))(v143, enum case for LocalizedStringResource.BundleDescription.main(_:), v140);
        sub_10000FD3C();
        return sub_10000FBFC();
      }

      sub_10000FD0C();
      v90 = v123;
      sub_10000FD0C();
      (*(v63 + 56))(v90, 0, 1, v74);
      v91 = [objc_opt_self() currentDevice];
      [v91 userInterfaceIdiom];

      v92 = v130;
      sub_10000FBDC();
      v93 = v137;
      v94 = v128;
      v95 = v92;
      v96 = v138;
      (*(v137 + 32))(v128, v95, v138);
      (*(v93 + 56))(v94, 0, 1, v96);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v139 + 104))(v143, enum case for LocalizedStringResource.BundleDescription.main(_:), v140);
    }

    else
    {
      if (v136 != 3)
      {
        sub_10000FD0C();
        v106 = v122;
        sub_10000FD0C();
        (*(v63 + 56))(v106, 0, 1, v74);
        v107 = [objc_opt_self() currentDevice];
        [v107 userInterfaceIdiom];

        v108 = v129;
        sub_10000FBDC();
        v109 = v137;
        v110 = v127;
        v111 = v108;
        v112 = v138;
        (*(v137 + 32))(v127, v111, v138);
        (*(v109 + 56))(v110, 0, 1, v112);
        sub_10000FD7C();
        sub_10000FD4C();
        (*(v139 + 104))(v143, enum case for LocalizedStringResource.BundleDescription.main(_:), v140);
        sub_10000FD3C();
        return sub_10000FBFC();
      }

      sub_10000FD0C();
      v75 = v121;
      sub_10000FD0C();
      (*(v63 + 56))(v75, 0, 1, v74);
      v76 = [objc_opt_self() currentDevice];
      [v76 userInterfaceIdiom];

      v77 = v126;
      sub_10000FBDC();
      v78 = v137;
      v79 = v125;
      v80 = v77;
      v81 = v138;
      (*(v137 + 32))(v125, v80, v138);
      (*(v78 + 56))(v79, 0, 1, v81);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v139 + 104))(v143, enum case for LocalizedStringResource.BundleDescription.main(_:), v140);
    }

    sub_10000FD3C();
  }

  return sub_10000FBFC();
}

uint64_t sub_100006E08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000556C;

  return sub_100008254(a1);
}

uint64_t sub_100006EB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005550;

  return sub_100007F98();
}

unint64_t sub_100006F58()
{
  result = qword_10001C258;
  if (!qword_10001C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C258);
  }

  return result;
}

uint64_t sub_100006FAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003760;

  return sub_100008518();
}

unint64_t sub_100007054()
{
  result = qword_10001C260;
  if (!qword_10001C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C260);
  }

  return result;
}

unint64_t sub_1000070AC()
{
  result = qword_10001C268;
  if (!qword_10001C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C268);
  }

  return result;
}

unint64_t sub_100007104()
{
  result = qword_10001C270;
  if (!qword_10001C270)
  {
    sub_1000039AC(&qword_10001C278, qword_1000109D8);
    sub_1000070AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C270);
  }

  return result;
}

uint64_t sub_100007188(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100006F58();
  *v6 = v2;
  v6[1] = sub_100003AA8;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000727C()
{
  result = qword_10001C280;
  if (!qword_10001C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C280);
  }

  return result;
}

uint64_t sub_1000072D0()
{
  v0 = sub_100005414(&qword_10001C300, &qword_100010F00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100005414(&qword_10001C308, &qword_100010F08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100005624();
  sub_10000FC8C();
  v9._object = 0x8000000100013D70;
  v9._countAndFlagsBits = 0xD000000000000040;
  sub_10000FC7C(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000FC6C();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10000FC7C(v10);
  return sub_10000FC9C();
}

uint64_t sub_100007494()
{
  v0 = qword_10001C230;

  return v0;
}

unint64_t sub_1000074D0()
{
  result = qword_10001C288;
  if (!qword_10001C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C288);
  }

  return result;
}

unint64_t sub_100007528()
{
  result = qword_10001C290;
  if (!qword_10001C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C290);
  }

  return result;
}

unint64_t sub_100007580()
{
  result = qword_10001C298;
  if (!qword_10001C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C298);
  }

  return result;
}

unint64_t sub_1000075D8()
{
  result = qword_10001C2A0;
  if (!qword_10001C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A0);
  }

  return result;
}

uint64_t sub_10000762C()
{
  sub_100008820();
  v1 = sub_10000FC3C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000769C()
{
  result = qword_10001C2A8;
  if (!qword_10001C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A8);
  }

  return result;
}

unint64_t sub_1000076F0()
{
  result = qword_10001C2B0;
  if (!qword_10001C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B0);
  }

  return result;
}

unint64_t sub_100007748()
{
  result = qword_10001C2B8;
  if (!qword_10001C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B8);
  }

  return result;
}

unint64_t sub_1000077A4()
{
  result = qword_10001C2C0;
  if (!qword_10001C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2C0);
  }

  return result;
}

uint64_t sub_1000077F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C110 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FCDC();
  v3 = sub_10000545C(v2, qword_10001C598);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000078E4(uint64_t a1)
{
  v2 = sub_100005624();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007934()
{
  result = qword_10001C2D8;
  if (!qword_10001C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2D8);
  }

  return result;
}

uint64_t sub_100007990(uint64_t a1)
{
  v2 = sub_100007748();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000079EC()
{
  result = qword_10001C2E0;
  if (!qword_10001C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2E0);
  }

  return result;
}

uint64_t sub_100007A4C()
{
  *v0;
  sub_10000FD9C();
}

uint64_t sub_100007B74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000087D4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100007BA4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE100000000000000;
    v9 = 0x8000000100012020;
    if (v2 != 1)
    {
      v9 = 0x8000000100012040;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v11 = 47;
    }

    if (!v10)
    {
      v8 = v9;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEE0053544E454345;
    v4 = 0x525F574F4C4C4123;
    if (v2 != 5)
    {
      v4 = 0xD00000000000001BLL;
      v3 = 0x80000001000120B0;
    }

    v5 = 0x8000000100012060;
    v6 = 0xD000000000000011;
    if (v2 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x8000000100012080;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100007CEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 47;
    }
  }

  else
  {
    v2 = 0x525F574F4C4C4123;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001BLL;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100007DD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000087D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100007E34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100007EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007FB4()
{
  for (i = 0; i != 7; ++i)
  {
    v3 = *(&off_100018BA8 + i + 32);
    if (((1 << v3) & 0xD) != 0)
    {
      v5 = objc_opt_self();
      v6 = [v5 currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7)
      {
        v4 = [v5 currentDevice];
LABEL_9:
        v8 = v4;
        v9 = [v8 userInterfaceIdiom];

        if (v9 != 1)
        {
          continue;
        }
      }
    }

    else
    {
      if (((1 << v3) & 0x32) != 0)
      {
        v4 = [objc_opt_self() currentDevice];
        goto LABEL_9;
      }

      v1 = [objc_opt_self() currentDevice];
      v2 = [v1 userInterfaceIdiom];

      if (v2)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA18(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_10000BA18((v10 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    *(&_swiftEmptyArrayStorage[4] + v11) = v3;
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    sub_10000B9E8(0, v12, 0);
    v13 = _swiftEmptyArrayStorage[2];
    v14 = 32;
    do
    {
      v15 = *(_swiftEmptyArrayStorage + v14);
      v16 = _swiftEmptyArrayStorage[3];
      if (v13 >= v16 >> 1)
      {
        sub_10000B9E8((v16 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v15;
      ++v14;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v17 = *(v19 + 8);

  return v17(_swiftEmptyArrayStorage);
}

uint64_t sub_100008274()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      v8 = 1 << v7;
      if (((1 << v7) & 0xD) != 0)
      {
        v10 = objc_opt_self();
        v11 = [v10 currentDevice];
        v12 = [v11 userInterfaceIdiom];

        if (!v12)
        {
          goto LABEL_11;
        }

        v9 = [v10 currentDevice];
LABEL_10:
        v13 = v9;
        v14 = [v13 userInterfaceIdiom];

        if (v14 == 1)
        {
          goto LABEL_11;
        }

LABEL_4:
        if (!--v2)
        {
          break;
        }
      }

      else
      {
        if ((v8 & 0x32) != 0)
        {
          v9 = [objc_opt_self() currentDevice];
          goto LABEL_10;
        }

        v4 = [objc_opt_self() currentDevice];
        v5 = [v4 userInterfaceIdiom];

        if (v5)
        {
          goto LABEL_4;
        }

LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000BA18(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10000BA18((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        *(&_swiftEmptyArrayStorage[4] + v16) = v6;
        if (!--v2)
        {
          break;
        }
      }
    }
  }

  v17 = _swiftEmptyArrayStorage[2];
  if (v17)
  {
    sub_10000B9E8(0, v17, 0);
    v18 = _swiftEmptyArrayStorage[2];
    v19 = 32;
    do
    {
      v20 = *(_swiftEmptyArrayStorage + v19);
      v21 = _swiftEmptyArrayStorage[3];
      if (v18 >= v21 >> 1)
      {
        sub_10000B9E8((v21 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      *(&_swiftEmptyArrayStorage[4] + v18) = v20;
      ++v19;
      ++v18;
      --v17;
    }

    while (v17);
  }

  v22 = *(v24 + 8);

  return v22(_swiftEmptyArrayStorage);
}

uint64_t sub_100008534()
{
  sub_10000B9E8(0, 7, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10000B9E8((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 <= v4)
  {
    sub_10000B9E8((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 <= v5)
  {
    sub_10000B9E8((v1 > 1), v2 + 3, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = v2 + 4;
  if (v3 <= v6)
  {
    sub_10000B9E8((v1 > 1), v2 + 4, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v7;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  v8 = v2 + 5;
  if (v3 <= v7)
  {
    sub_10000B9E8((v1 > 1), v2 + 5, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v7) = 4;
  v9 = v2 + 6;
  if (v3 <= v8)
  {
    sub_10000B9E8((v1 > 1), v2 + 6, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v8) = 5;
  if (v3 <= v9)
  {
    sub_10000B9E8((v1 > 1), v2 + 7, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 7;
  *(&_swiftEmptyArrayStorage[4] + v9) = 6;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000087D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018BD0;
  v6._object = a2;
  v4 = sub_10000FDAC(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100008820()
{
  result = qword_10001C2F8;
  if (!qword_10001C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2F8);
  }

  return result;
}

uint64_t sub_10000888C(uint64_t a1)
{
  v2 = sub_1000089DC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008934();
  sub_10000FD6C();
  return 0;
}

unint64_t sub_100008934()
{
  result = qword_10001C310;
  if (!qword_10001C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C310);
  }

  return result;
}

unint64_t sub_1000089DC()
{
  result = qword_10001C318;
  if (!qword_10001C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C318);
  }

  return result;
}

unint64_t sub_100008A44()
{
  result = qword_10001C330;
  if (!qword_10001C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C330);
  }

  return result;
}

unint64_t sub_100008A9C()
{
  result = qword_10001C338;
  if (!qword_10001C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C338);
  }

  return result;
}

unint64_t sub_100008AF4()
{
  result = qword_10001C340;
  if (!qword_10001C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C340);
  }

  return result;
}

uint64_t sub_100008B48()
{
  v0 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10000FD2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10000FCDC();
  sub_100005494(v7, qword_10001C5B0);
  sub_10000545C(v7, qword_10001C5B0);
  sub_10000FD0C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10000FCCC();
}

uint64_t sub_100008CB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v67 = sub_10000FD1C();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v67);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FD5C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000FD8C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100005414(&qword_10001C200, &unk_1000108D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v64 - v12;
  v14 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v64 - v16;
  v18 = sub_10000FD2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v64 - v24;
  switch(a1)
  {
    case 1:
    case 2:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v19 + 56))(v17, 0, 1, v18);
      sub_10000FBDC();
      v55 = sub_10000FBEC();
      (*(*(v55 - 8) + 56))(v13, 0, 1, v55);
      return sub_10000FC0C();
    case 3:
      v66 = v23;
      sub_10000FD0C();
      sub_10000FD0C();
      v46 = *(v19 + 56);
      v45 = v19 + 56;
      v46(v17, 0, 1, v18);
      sub_10000FBDC();
      v47 = sub_10000FBEC();
      (*(*(v47 - 8) + 56))(v13, 0, 1, v47);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v65 = v25;
      v48 = *(v45 + 16);
      v49 = (*(v45 + 24) + 32) & ~*(v45 + 24);
      *(swift_allocObject() + 16) = xmmword_100010FF0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 4:
    case 8:
    case 9:
    case 10:
    case 12:
    case 15:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v19 + 56))(v17, 0, 1, v18);
      sub_10000FBDC();
      v63 = sub_10000FBEC();
      (*(*(v63 - 8) + 56))(v13, 0, 1, v63);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
      goto LABEL_14;
    case 5:
    case 6:
    case 14:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v19 + 56))(v17, 0, 1, v18);
      sub_10000FBDC();
      v62 = sub_10000FBEC();
      (*(*(v62 - 8) + 56))(v13, 0, 1, v62);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 7:
      sub_10000FD0C();
      sub_10000FD0C();
      v51 = *(v19 + 56);
      v50 = v19 + 56;
      v51(v17, 0, 1, v18);
      sub_10000FBDC();
      v52 = sub_10000FBEC();
      (*(*(v52 - 8) + 56))(v13, 0, 1, v52);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v53 = *(v50 + 16);
      v54 = (*(v50 + 24) + 32) & ~*(v50 + 24);
      *(swift_allocObject() + 16) = xmmword_100010FD0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      return sub_10000FC0C();
    case 11:
      v66 = v23;
      sub_10000FD0C();
      sub_10000FD0C();
      v37 = *(v19 + 56);
      v36 = v19 + 56;
      v37(v17, 0, 1, v18);
      sub_10000FBDC();
      v38 = sub_10000FBEC();
      (*(*(v38 - 8) + 56))(v13, 0, 1, v38);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v39 = *(v36 + 16);
      v40 = *(v36 + 24);
      v65 = v25;
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      v64 = v13;
      sub_10000FD7C();
      sub_10000FD4C();
      v41 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v42 = *(v3 + 104);
      v43 = v67;
      v44 = v68;
      v42(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
      sub_10000FD3C();
      sub_10000FD7C();
      sub_10000FD4C();
      v42(v44, v41, v43);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 13:
      sub_10000FD0C();
      sub_10000FD0C();
      v58 = *(v19 + 56);
      v57 = v19 + 56;
      v58(v17, 0, 1, v18);
      sub_10000FBDC();
      v59 = sub_10000FBEC();
      (*(*(v59 - 8) + 56))(v13, 0, 1, v59);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v60 = *(v57 + 16);
      v61 = *(v57 + 24);
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 16:
      v66 = v23;
      sub_10000FD0C();
      sub_10000FD0C();
      v32 = *(v19 + 56);
      v31 = v19 + 56;
      v32(v17, 0, 1, v18);
      sub_10000FBDC();
      v33 = sub_10000FBEC();
      (*(*(v33 - 8) + 56))(v13, 0, 1, v33);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v65 = v25;
      v34 = *(v31 + 16);
      v35 = (*(v31 + 24) + 32) & ~*(v31 + 24);
      *(swift_allocObject() + 16) = xmmword_100010FE0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
      goto LABEL_14;
    default:
      v66 = v23;
      sub_10000FD0C();
      v27 = *(v19 + 56);
      v26 = v19 + 56;
      v27(v17, 1, 1, v18);
      sub_10000FBDC();
      v28 = sub_10000FBEC();
      (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v65 = v25;
      v29 = *(v26 + 16);
      v30 = (*(v26 + 24) + 32) & ~*(v26 + 24);
      *(swift_allocObject() + 16) = xmmword_100010FE0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v68, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
LABEL_14:
      sub_10000FD3C();
      return sub_10000FBFC();
  }
}

uint64_t sub_10000A708(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000556C;

  return sub_10000BEE0(a1);
}

uint64_t sub_10000A7B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005550;

  return sub_10000BB94();
}

unint64_t sub_10000A858()
{
  result = qword_10001C348;
  if (!qword_10001C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C348);
  }

  return result;
}

uint64_t sub_10000A8AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003760;

  return sub_10000C230();
}

unint64_t sub_10000A954()
{
  result = qword_10001C350;
  if (!qword_10001C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C350);
  }

  return result;
}

unint64_t sub_10000A9AC()
{
  result = qword_10001C358;
  if (!qword_10001C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C358);
  }

  return result;
}

unint64_t sub_10000AA04()
{
  result = qword_10001C360;
  if (!qword_10001C360)
  {
    sub_1000039AC(&qword_10001C368, qword_1000110B8);
    sub_10000A9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C360);
  }

  return result;
}

uint64_t sub_10000AA88(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000A858();
  *v6 = v2;
  v6[1] = sub_100003AA8;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000AB40()
{
  result = qword_10001C370;
  if (!qword_10001C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C370);
  }

  return result;
}

uint64_t sub_10000AB94()
{
  v0 = sub_100005414(&qword_10001C3F0, &qword_1000115E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100005414(&qword_10001C3F8, &qword_1000115E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100008AF4();
  sub_10000FC8C();
  v9._object = 0x8000000100014E80;
  v9._countAndFlagsBits = 0xD000000000000030;
  sub_10000FC7C(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000FC6C();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10000FC7C(v10);
  return sub_10000FC9C();
}

uint64_t sub_10000AD58()
{
  v0 = qword_10001C320;

  return v0;
}

unint64_t sub_10000AD94()
{
  result = qword_10001C378;
  if (!qword_10001C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C378);
  }

  return result;
}

unint64_t sub_10000ADEC()
{
  result = qword_10001C380;
  if (!qword_10001C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C380);
  }

  return result;
}

unint64_t sub_10000AE44()
{
  result = qword_10001C388;
  if (!qword_10001C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C388);
  }

  return result;
}

unint64_t sub_10000AE9C()
{
  result = qword_10001C390;
  if (!qword_10001C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C390);
  }

  return result;
}

uint64_t sub_10000AEF0()
{
  sub_10000C3A4();
  v1 = sub_10000FC3C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000AF60()
{
  result = qword_10001C398;
  if (!qword_10001C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C398);
  }

  return result;
}

unint64_t sub_10000AFB4()
{
  result = qword_10001C3A0;
  if (!qword_10001C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A0);
  }

  return result;
}

unint64_t sub_10000B00C()
{
  result = qword_10001C3A8;
  if (!qword_10001C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A8);
  }

  return result;
}

unint64_t sub_10000B068()
{
  result = qword_10001C3B0;
  if (!qword_10001C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3B0);
  }

  return result;
}

uint64_t sub_10000B0BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C118 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FCDC();
  v3 = sub_10000545C(v2, qword_10001C5B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000B1A8(uint64_t a1)
{
  v2 = sub_100008AF4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B1F8()
{
  result = qword_10001C3C8;
  if (!qword_10001C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3C8);
  }

  return result;
}

uint64_t sub_10000B254(uint64_t a1)
{
  v2 = sub_10000B00C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B2A0(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 0x4E54484749524223;
      break;
    case 2:
      result = 0x425F455449485723;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0x5F44495551494C2FLL;
      break;
    case 8:
      result = 0x434F4C4F5455412FLL;
      break;
    case 9:
      result = 0x545F455349415223;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x49535F545845542FLL;
      break;
    case 12:
      result = 0x45545F444C4F4223;
      break;
    case 13:
      result = 0x5946494E47414D2FLL;
      break;
    case 14:
      result = 0x5F535941574C412FLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000B504(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000B2A0(*a1);
  v5 = v4;
  if (v3 == sub_10000B2A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000FDBC();
  }

  return v8 & 1;
}

unint64_t sub_10000B590()
{
  result = qword_10001C3D0;
  if (!qword_10001C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3D0);
  }

  return result;
}

Swift::Int sub_10000B5E4()
{
  v1 = *v0;
  sub_10000FDDC();
  sub_10000B2A0(v1);
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_10000B648()
{
  sub_10000B2A0(*v0);
  sub_10000FD9C();
}

Swift::Int sub_10000B69C()
{
  v1 = *v0;
  sub_10000FDDC();
  sub_10000B2A0(v1);
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_10000B6FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10000C350();
  *a2 = result;
  return result;
}

unint64_t sub_10000B72C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000B2A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000B7C8@<X0>(_BYTE *a1@<X8>)
{

  result = sub_10000C350();
  *a1 = result;
  return result;
}

uint64_t sub_10000B824(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000B8B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_10000B988(char *a1, int64_t a2, char a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C428, &unk_100011630);
  *v3 = result;
  return result;
}

char *sub_10000B9B8(char *a1, int64_t a2, char a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C420, &qword_100011628);
  *v3 = result;
  return result;
}

char *sub_10000B9E8(char *a1, int64_t a2, char a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C410, &qword_100011618);
  *v3 = result;
  return result;
}

char *sub_10000BA18(char *a1, int64_t a2, char a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C418, &qword_100011620);
  *v3 = result;
  return result;
}

char *sub_10000BA48(char *a1, int64_t a2, char a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C400, &qword_1000115F8);
  *v3 = result;
  return result;
}

char *sub_10000BA78(char *a1, int64_t a2, char a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C408, &qword_100011608);
  *v3 = result;
  return result;
}

char *sub_10000BAA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100005414(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

id sub_10000BBB0()
{
  for (i = 0; i != 17; ++i)
  {
    v4 = *(&off_100018C98 + i + 32);
    if (v4 <= 8)
    {
      if (*(&off_100018C98 + i + 32) > 2u)
      {
        if (v4 - 3 < 4)
        {
          result = MobileGestalt_get_current_device();
          if (!result)
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            return result;
          }

          v6 = result;
          blueLightReductionSupported = MobileGestalt_get_blueLightReductionSupported();
LABEL_31:
          v9 = blueLightReductionSupported;

          if ((v9 & 1) == 0)
          {
            continue;
          }

          goto LABEL_32;
        }

        if (v4 != 7)
        {
          result = [objc_opt_self() sharedConnection];
          if (!result)
          {
            goto LABEL_45;
          }

          v6 = result;
          blueLightReductionSupported = [result isAutoLockEnabled];
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v4 < 2)
      {
        goto LABEL_32;
      }

      v8 = [objc_opt_self() supportsAdaptation];
LABEL_20:
      if ((v8 & 1) == 0)
      {
        continue;
      }

      goto LABEL_32;
    }

    if (*(&off_100018C98 + i + 32) <= 0xCu)
    {
      if (v4 - 11 < 2)
      {
        goto LABEL_32;
      }

      if (v4 != 9)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_44;
        }

        v6 = result;
        blueLightReductionSupported = MobileGestalt_get_hallEffectSensorCapability();
        goto LABEL_31;
      }

      v8 = [objc_opt_self() isWakeGestureAvailable];
      goto LABEL_20;
    }

    if (*(&off_100018C98 + i + 32) <= 0xEu)
    {
      if (v4 == 13)
      {
        v6 = [objc_opt_self() currentDevice];
        blueLightReductionSupported = [v6 sf_deviceSupportsDisplayZoom];
      }

      else
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_43;
        }

        v6 = result;
        blueLightReductionSupported = MobileGestalt_get_deviceSupportsAlwaysOnTime();
      }

      goto LABEL_31;
    }

    if (v4 != 15)
    {
      continue;
    }

LABEL_32:
    v16 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA78(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_10000BA78((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    *(&_swiftEmptyArrayStorage[4] + v3) = v4;
  }

  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    sub_10000BA48(0, v10, 0);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = 32;
    do
    {
      v13 = *(_swiftEmptyArrayStorage + v12);
      v14 = _swiftEmptyArrayStorage[3];
      if (v11 >= v14 >> 1)
      {
        sub_10000BA48((v14 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v0 + 8);

  return v15(_swiftEmptyArrayStorage);
}

id sub_10000BF00()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_35:
    v13 = _swiftEmptyArrayStorage[2];
    if (v13)
    {
      sub_10000BA48(0, v13, 0);
      v14 = _swiftEmptyArrayStorage[2];
      v15 = 32;
      do
      {
        v16 = *(_swiftEmptyArrayStorage + v15);
        v17 = _swiftEmptyArrayStorage[3];
        if (v14 >= v17 >> 1)
        {
          sub_10000BA48((v17 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        *(&_swiftEmptyArrayStorage[4] + v14) = v16;
        ++v15;
        ++v14;
        --v13;
      }

      while (v13);
    }

    v18 = *(v0 + 8);

    return v18(_swiftEmptyArrayStorage);
  }

  v3 = (v1 + 32);
  while (1)
  {
    v7 = *v3++;
    v6 = v7;
    if (v7 <= 8)
    {
      break;
    }

    if (v6 > 12)
    {
      if (v6 > 14)
      {
        if (v6 == 15)
        {
          goto LABEL_33;
        }

        goto LABEL_6;
      }

      if (v6 == 13)
      {
        v9 = [objc_opt_self() currentDevice];
        deviceSupportsAlwaysOnTime = [v9 sf_deviceSupportsDisplayZoom];
      }

      else
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_44;
        }

        v9 = result;
        deviceSupportsAlwaysOnTime = MobileGestalt_get_deviceSupportsAlwaysOnTime();
      }
    }

    else
    {
      if ((v6 - 11) < 2)
      {
        goto LABEL_33;
      }

      if (v6 == 9)
      {
        v11 = [objc_opt_self() isWakeGestureAvailable];
        goto LABEL_21;
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        goto LABEL_45;
      }

      v9 = result;
      deviceSupportsAlwaysOnTime = MobileGestalt_get_hallEffectSensorCapability();
    }

LABEL_32:
    v12 = deviceSupportsAlwaysOnTime;

    if (v12)
    {
LABEL_33:
      v19 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000BA78(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10000BA78((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      *(&_swiftEmptyArrayStorage[4] + v5) = v6;
    }

LABEL_6:
    if (!--v2)
    {
      goto LABEL_35;
    }
  }

  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      goto LABEL_33;
    }

    v11 = [objc_opt_self() supportsAdaptation];
LABEL_21:
    if (v11)
    {
      goto LABEL_33;
    }

    goto LABEL_6;
  }

  if ((v6 - 3) >= 4)
  {
    if (v6 == 7)
    {
      goto LABEL_33;
    }

    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      goto LABEL_46;
    }

    v9 = result;
    deviceSupportsAlwaysOnTime = [result isAutoLockEnabled];
    goto LABEL_32;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    deviceSupportsAlwaysOnTime = MobileGestalt_get_blueLightReductionSupported();
    goto LABEL_32;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10000C24C()
{
  sub_10000BA48(0, 17, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100018C98 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10000BA48((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 17);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000C350()
{
  v0 = sub_10000FDCC();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10000C3A4()
{
  result = qword_10001C3E8;
  if (!qword_10001C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3E8);
  }

  return result;
}

uint64_t sub_10000C414(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_100005414(&qword_10001C498, &qword_100011878);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_100005414(&qword_10001C4A0, &qword_100011880);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000DEB4();
  sub_10000FB7C();
  v16._object = 0xE900000000000020;
  v16._countAndFlagsBits = 0x656874206E65704FLL;
  sub_10000FB6C(v16);
  swift_getKeyPath();
  sub_10000A9AC();
  sub_10000FACC();

  sub_10000FB5C();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_10000FB6C(v17);
  sub_10000FB8C();
  v14 = sub_10000FAEC();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_10000FB7C();
  v18._countAndFlagsBits = 0x742065676E616843;
  v18._object = 0xEB00000000206568;
  sub_10000FB6C(v18);
  swift_getKeyPath();
  sub_10000FACC();

  sub_10000FB5C();

  v19._countAndFlagsBits = 0x676E697474655320;
  v19._object = 0xE900000000000073;
  sub_10000FB6C(v19);
  sub_10000FB8C();
  v9 = sub_10000FAEC();
  v7(v4, v8);
  sub_100005414(&qword_10001C4A8, qword_100011888);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010FF0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_10000FADC();

  return v11;
}

uint64_t sub_10000C7B8()
{
  v12 = sub_10000FB0C();
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  v3 = sub_10000FB0C();
  v4 = sub_10000FB0C();
  v5 = sub_10000FB0C();
  v6 = sub_10000FB0C();
  v7 = sub_10000FB0C();
  v8 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100011640;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = sub_10000FAFC();

  return v10;
}

uint64_t sub_10000C9A8()
{
  v0 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000102B0;
  *(v1 + 32) = v0;
  v2 = sub_10000FAFC();

  return v2;
}

uint64_t sub_10000CA2C()
{
  v0 = sub_10000FBBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_10000EE54();
  sub_10000DEB4();
  sub_10000FBCC();
  v5 = sub_10000FBAC();
  (*(v1 + 8))(v4, v0);
  sub_100005414(&qword_10001C448, &qword_1000117C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000102B0;
  *(v6 + 32) = v5;
  v7 = sub_10000FB9C();

  return v7;
}

uint64_t sub_10000CBC4(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_100005414(&qword_10001C478, &qword_100011838);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_100005414(&qword_10001C480, &qword_100011840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000DE60();
  sub_10000FB7C();
  v16._object = 0xE900000000000020;
  v16._countAndFlagsBits = 0x656874206E65704FLL;
  sub_10000FB6C(v16);
  swift_getKeyPath();
  sub_1000038D0();
  sub_10000FACC();

  sub_10000FB5C();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_10000FB6C(v17);
  sub_10000FB8C();
  v14 = sub_10000FAEC();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_10000FB7C();
  v18._countAndFlagsBits = 0x742065676E616843;
  v18._object = 0xEB00000000206568;
  sub_10000FB6C(v18);
  swift_getKeyPath();
  sub_10000FACC();

  sub_10000FB5C();

  v19._countAndFlagsBits = 0x676E697474655320;
  v19._object = 0xE900000000000073;
  sub_10000FB6C(v19);
  sub_10000FB8C();
  v9 = sub_10000FAEC();
  v7(v4, v8);
  sub_100005414(&qword_10001C488, &qword_100011848);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010FF0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_10000FADC();

  return v11;
}

uint64_t sub_10000CF68()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  v3 = sub_10000FB0C();
  v4 = sub_10000FB0C();
  v5 = sub_10000FB0C();
  v6 = sub_10000FB0C();
  v7 = sub_10000FB0C();
  v8 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100011650;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_10000FAFC();

  return v10;
}

uint64_t sub_10000D120()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100010FF0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_10000FAFC();

  return v3;
}

uint64_t sub_10000D1CC()
{
  v0 = sub_10000FBBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_10000F150();
  sub_10000DE60();
  sub_10000FBCC();
  v5 = sub_10000FBAC();
  (*(v1 + 8))(v4, v0);
  sub_100005414(&qword_10001C448, &qword_1000117C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000102B0;
  *(v6 + 32) = v5;
  v7 = sub_10000FB9C();

  return v7;
}

uint64_t sub_10000D368(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_100005414(&qword_10001C458, &qword_1000117F8);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_100005414(&qword_10001C460, &qword_100011800);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000DD98();
  sub_10000FB7C();
  v16._object = 0xE900000000000020;
  v16._countAndFlagsBits = 0x656874206E65704FLL;
  sub_10000FB6C(v16);
  swift_getKeyPath();
  sub_1000070AC();
  sub_10000FACC();

  sub_10000FB5C();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_10000FB6C(v17);
  sub_10000FB8C();
  v14 = sub_10000FAEC();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_10000FB7C();
  v18._countAndFlagsBits = 0x742065676E616843;
  v18._object = 0xEB00000000206568;
  sub_10000FB6C(v18);
  swift_getKeyPath();
  sub_10000FACC();

  sub_10000FB5C();

  v19._countAndFlagsBits = 0x676E697474655320;
  v19._object = 0xE900000000000073;
  sub_10000FB6C(v19);
  sub_10000FB8C();
  v9 = sub_10000FAEC();
  v7(v4, v8);
  sub_100005414(&qword_10001C468, &qword_100011808);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010FF0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_10000FADC();

  return v11;
}

uint64_t sub_10000D70C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_10000FB4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10000FACC();

  a4(v11);
  sub_10000FB3C();
  v12 = sub_10000FB2C();
  (*(v7 + 8))(v10, v6);
  sub_100005414(&qword_10001C450, &qword_1000117F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000102B0;
  *(v13 + 32) = v12;
  v14 = sub_10000FB1C();

  return v14;
}

uint64_t sub_10000D88C()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  v3 = sub_10000FB0C();
  v4 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100011660;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_10000FAFC();

  return v6;
}

uint64_t sub_10000D9AC()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100010FE0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10000FAFC();

  return v4;
}

uint64_t sub_10000DA8C()
{
  v0 = sub_10000FBBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_10000F44C();
  sub_10000DD98();
  sub_10000FBCC();
  v5 = sub_10000FBAC();
  (*(v1 + 8))(v4, v0);
  sub_100005414(&qword_10001C448, &qword_1000117C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000102B0;
  *(v6 + 32) = v5;
  v7 = sub_10000FB9C();

  return v7;
}

uint64_t sub_10000DC24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_10000FABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v7);
  sub_10000FAAC();
  v10 = sub_10000FA9C();
  (*(v5 + 8))(v9, v4);
  sub_100005414(&qword_10001C438, &qword_1000117B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000102B0;
  *(v11 + 32) = v10;
  v12 = sub_10000FA8C();

  return v12;
}

unint64_t sub_10000DD98()
{
  result = qword_10001C430;
  if (!qword_10001C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C430);
  }

  return result;
}

uint64_t sub_10000DDEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10000FA5C();
  *a2 = v5;
  return result;
}

uint64_t sub_10000DE28(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_10000FA6C();
}

unint64_t sub_10000DE60()
{
  result = qword_10001C470;
  if (!qword_10001C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C470);
  }

  return result;
}

unint64_t sub_10000DEB4()
{
  result = qword_10001C490;
  if (!qword_10001C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C490);
  }

  return result;
}

unint64_t sub_10000DF20()
{
  result = qword_10001C4E0;
  if (!qword_10001C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E0);
  }

  return result;
}

uint64_t sub_10000DFA8()
{
  v0 = sub_10000FD2C();
  sub_100005494(v0, qword_10001C5C8);
  sub_10000545C(v0, qword_10001C5C8);
  return sub_10000FD0C();
}

uint64_t (*sub_10000E00C(uint64_t *a1))()
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
  *(v3 + 32) = sub_10000FA4C();
  return sub_10000F964;
}

uint64_t sub_10000E0B0()
{
  v0 = qword_10001C4B0;

  return v0;
}

unint64_t sub_10000E0EC()
{
  result = qword_10001C4E8;
  if (!qword_10001C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E8);
  }

  return result;
}

unint64_t sub_10000E144()
{
  result = qword_10001C4F0;
  if (!qword_10001C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F0);
  }

  return result;
}

unint64_t sub_10000E198()
{
  result = qword_10001C4F8;
  if (!qword_10001C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F8);
  }

  return result;
}

uint64_t sub_10000E238(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000F898();
  v7 = sub_10000F8EC();
  v8 = sub_10000C3A4();
  *v5 = v2;
  v5[1] = sub_10000F944;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000E304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EE54();
  *a1 = result;
  return result;
}

uint64_t sub_10000E32C(uint64_t a1)
{
  v2 = sub_10000DEB4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000E36C()
{
  result = qword_10001C500;
  if (!qword_10001C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C500);
  }

  return result;
}

uint64_t sub_10000E3C4()
{
  v0 = sub_10000FD2C();
  sub_100005494(v0, qword_10001C5E0);
  sub_10000545C(v0, qword_10001C5E0);
  return sub_10000FD0C();
}

uint64_t sub_10000E428@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000FA5C();
  *a1 = v5;
  return result;
}

uint64_t sub_10000E464(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_10000FA6C();
}

uint64_t (*sub_10000E49C(uint64_t *a1))()
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
  *(v3 + 32) = sub_10000FA4C();
  return sub_10000F964;
}

uint64_t sub_10000E544()
{
  v0 = qword_10001C4C0;

  return v0;
}

unint64_t sub_10000E584()
{
  result = qword_10001C508;
  if (!qword_10001C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C508);
  }

  return result;
}

unint64_t sub_10000E5DC()
{
  result = qword_10001C510;
  if (!qword_10001C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C510);
  }

  return result;
}

uint64_t sub_10000E680(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000F7F0();
  v7 = sub_10000F844();
  v8 = sub_1000054F8();
  *v5 = v2;
  v5[1] = sub_10000F944;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000E74C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F150();
  *a1 = result;
  return result;
}

uint64_t sub_10000E774(uint64_t a1)
{
  v2 = sub_10000DE60();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000E7B4()
{
  result = qword_10001C518;
  if (!qword_10001C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C518);
  }

  return result;
}

uint64_t sub_10000E80C()
{
  v0 = sub_10000FD2C();
  sub_100005494(v0, qword_10001C5F8);
  sub_10000545C(v0, qword_10001C5F8);
  return sub_10000FD0C();
}

uint64_t (*sub_10000E870(uint64_t *a1))()
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
  *(v3 + 32) = sub_10000FA4C();
  return sub_10000E8E4;
}

void sub_10000E8E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10000E960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v7, a2, v8);
}

uint64_t sub_10000E9D8()
{
  v0 = qword_10001C4D0;

  return v0;
}

unint64_t sub_10000EA14()
{
  result = qword_10001C520;
  if (!qword_10001C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C520);
  }

  return result;
}

unint64_t sub_10000EA6C()
{
  result = qword_10001C528;
  if (!qword_10001C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C528);
  }

  return result;
}

uint64_t sub_10000EB50@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_10000FD2C();
  v6 = sub_10000545C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_10000EBEC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000F748();
  v7 = sub_10000F79C();
  v8 = sub_100008820();
  *v5 = v2;
  v5[1] = sub_10000ECB8;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000ECB8()
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

uint64_t sub_10000EDC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F44C();
  *a1 = result;
  return result;
}

uint64_t sub_10000EDE8(uint64_t a1)
{
  v2 = sub_10000DD98();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000EE54()
{
  v21 = sub_10000FCAC();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005414(&qword_10001C530, "&;");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10000FD2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005414(&qword_10001C568, &qword_100011F18);
  sub_10000FD0C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 17;
  v18 = sub_10000FA3C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100008AF4();
  return sub_10000FA7C();
}

uint64_t sub_10000F150()
{
  v21 = sub_10000FCAC();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005414(&qword_10001C530, "&;");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10000FD2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005414(&qword_10001C550, &qword_100011F10);
  sub_10000FD0C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 14;
  v18 = sub_10000FA3C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100001AE0();
  return sub_10000FA7C();
}

uint64_t sub_10000F44C()
{
  v21 = sub_10000FCAC();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005414(&qword_10001C530, "&;");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10000FD2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005414(&qword_10001C538, &qword_100011F08);
  sub_10000FD0C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 7;
  v18 = sub_10000FA3C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100005624();
  return sub_10000FA7C();
}

unint64_t sub_10000F748()
{
  result = qword_10001C540;
  if (!qword_10001C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C540);
  }

  return result;
}

unint64_t sub_10000F79C()
{
  result = qword_10001C548;
  if (!qword_10001C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C548);
  }

  return result;
}

unint64_t sub_10000F7F0()
{
  result = qword_10001C558;
  if (!qword_10001C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C558);
  }

  return result;
}

unint64_t sub_10000F844()
{
  result = qword_10001C560;
  if (!qword_10001C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C560);
  }

  return result;
}

unint64_t sub_10000F898()
{
  result = qword_10001C570;
  if (!qword_10001C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C570);
  }

  return result;
}

unint64_t sub_10000F8EC()
{
  result = qword_10001C578;
  if (!qword_10001C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C578);
  }

  return result;
}