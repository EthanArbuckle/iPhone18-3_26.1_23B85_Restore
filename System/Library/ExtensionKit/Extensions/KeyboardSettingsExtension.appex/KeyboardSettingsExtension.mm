unint64_t sub_10000134C()
{
  result = qword_100010050;
  if (!qword_100010050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010050);
  }

  return result;
}

unint64_t sub_1000013A4()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

unint64_t sub_1000013FC()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

uint64_t sub_100001450@<X0>(uint64_t a1@<X8>)
{
  v20[2] = a1;
  v20[0] = sub_100007A70();
  v1 = *(v20[0] - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100007AB0() - 8) + 64);
  (__chkstk_darwin)();
  v6 = *(*(sub_100007AE0() - 8) + 64);
  (__chkstk_darwin)();
  v7 = (*(*(sub_100005BC0(&qword_100010108, &qword_10000A688) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v9 = v20 - v8;
  v10 = (*(*(sub_100005BC0(&qword_100010110, &qword_10000A690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v12 = v20 - v11;
  v13 = sub_100007A80();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (__chkstk_darwin)();
  v20[1] = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  sub_100007A60();
  sub_100007A60();
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_100007940();
  v18 = sub_100007950();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_100007AD0();
  sub_100007AA0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v20[0]);
  sub_100007A90();
  return sub_100007960();
}

uint64_t sub_1000032F8()
{
  v0 = (*(*(sub_100005BC0(&qword_100010110, &qword_10000A690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_100007A80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_100007A30();
  sub_100005C40(v6, qword_1000101D0);
  sub_100005C08(v6, qword_1000101D0);
  sub_100007A60();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100007A20();
}

uint64_t sub_10000346C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005D1C;

  return sub_1000053F4(a1);
}

uint64_t sub_100003514(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005D00;

  return sub_10000507C();
}

uint64_t sub_1000035B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003678;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003678(uint64_t a1)
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

unint64_t sub_10000377C()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

uint64_t sub_1000037D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003874;

  return sub_100005A4C();
}

uint64_t sub_100003874(uint64_t a1)
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

unint64_t sub_10000398C()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_1000039E4()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100003A3C()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    sub_100003AC0(&qword_100010088, qword_10000A168);
    sub_1000039E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_100003AC0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003B08(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000377C();
  *v6 = v2;
  v6[1] = sub_100003BBC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100003BBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003CB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003D54;

  return sub_10000576C();
}

uint64_t sub_100003D54(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100003E70()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

uint64_t sub_100003EC4()
{
  v0 = sub_100005BC0(&qword_100010120, &qword_10000A698);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_100005BC0(&qword_100010128, &qword_10000A6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_1000013FC();
  sub_1000079E0();
  v8._object = 0x8000000100009980;
  v8._countAndFlagsBits = 0xD000000000000039;
  sub_1000079D0(v8);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000079C0();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1000079D0(v9);
  return sub_1000079F0();
}

uint64_t sub_100004088()
{
  v0 = qword_100010020;

  return v0;
}

unint64_t sub_1000040C4()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

unint64_t sub_10000411C()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

unint64_t sub_100004174()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_1000041CC()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

uint64_t sub_100004220()
{
  sub_100005CA4();
  v1 = sub_100007990();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100004290()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

unint64_t sub_1000042E8()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_100004340()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

unint64_t sub_100004398()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

uint64_t sub_1000043F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010030 != -1)
  {
    swift_once();
  }

  v2 = sub_100007A30();
  v3 = sub_100005C08(v2, qword_1000101D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000044E4(uint64_t a1)
{
  v2 = sub_1000013FC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004534()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

uint64_t sub_100004590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003BBC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004654(uint64_t a1)
{
  v2 = sub_100004340();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000046A0(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 0x52414F4259454B2FLL;
      break;
    case 2:
    case 7:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 9:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 14:
    case 17:
      v3 = 5;
      goto LABEL_18;
    case 8:
      result = 0x79547472616D5323;
      break;
    case 10:
      v3 = 9;
LABEL_18:
      result = v3 | 0xD000000000000012;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x654B6E6576695223;
      break;
    case 15:
      result = 0x6974617463694423;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000026;
      break;
    case 22:
      result = 0x697453776F685323;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000497C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000046A0(*a1);
  v5 = v4;
  if (v3 == sub_1000046A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100007B00();
  }

  return v8 & 1;
}

unint64_t sub_100004A08()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

Swift::Int sub_100004A5C()
{
  v1 = *v0;
  sub_100007B20();
  sub_1000046A0(v1);
  sub_100007AF0();

  return sub_100007B30();
}

uint64_t sub_100004AC0()
{
  sub_1000046A0(*v0);
  sub_100007AF0();
}

Swift::Int sub_100004B14()
{
  v1 = *v0;
  sub_100007B20();
  sub_1000046A0(v1);
  sub_100007AF0();

  return sub_100007B30();
}

uint64_t sub_100004B74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100005B6C();
  *a2 = result;
  return result;
}

unint64_t sub_100004BA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000046A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100004C14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004C74@<X0>(_BYTE *a1@<X8>)
{

  result = sub_100005B6C();
  *a1 = result;
  return result;
}

uint64_t sub_100004CF4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100004D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_100004E54(char *a1, int64_t a2, char a3)
{
  result = sub_100004E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004E74(char *a1, int64_t a2, char a3)
{
  result = sub_100004F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004E94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005BC0(&qword_100010138, &qword_10000A6C0);
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

char *sub_100004F88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005BC0(&qword_100010130, &qword_10000A6B0);
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

uint64_t sub_100005098()
{
  for (i = 0; i != 23; ++i)
  {
    v3 = *(&off_10000C930 + i + 32);
    if (v3 <= 8)
    {
      if (*(&off_10000C930 + i + 32) > 3u)
      {
        if (v3 - 6 >= 3 && v3 != 4)
        {
          v5 = [objc_opt_self() currentDevice];
          v6 = [v5 userInterfaceIdiom];

          if (v6 == 1)
          {
            continue;
          }

          v7 = [objc_opt_self() mainScreen];
          [v7 _referenceBounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v29.origin.x = v9;
          v29.origin.y = v11;
          v29.size.width = v13;
          v29.size.height = v15;
          if (CGRectGetWidth(v29) <= 320.0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      if (v3 >= 2)
      {
LABEL_20:
        v16 = [objc_opt_self() currentDevice];
        v17 = [v16 userInterfaceIdiom];

        if (v17 != 1)
        {
          continue;
        }
      }
    }

    else
    {
      if (v3 > 0x16)
      {
        goto LABEL_20;
      }

      if (((1 << v3) & 0x7FCC00) == 0)
      {
        if (v3 == 12)
        {
          v1 = [objc_opt_self() currentDevice];
          v2 = [v1 userInterfaceIdiom];

          if (v2)
          {
            continue;
          }
        }

        else
        {
          if (v3 != 13)
          {
            goto LABEL_20;
          }

          if ((UIKeyboardDeviceSupportsSplit() & 1) == 0)
          {
            continue;
          }
        }
      }
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100004E74(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v19 = *(&_swiftEmptyArrayStorage + 2);
    v18 = *(&_swiftEmptyArrayStorage + 3);
    if (v19 >= v18 >> 1)
    {
      sub_100004E74((v18 > 1), v19 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v19 + 1;
    *(&_swiftEmptyArrayStorage + v19 + 32) = v3;
  }

  v20 = *(&_swiftEmptyArrayStorage + 2);
  if (v20)
  {
    sub_100004E54(0, v20, 0);
    v21 = *(&_swiftEmptyArrayStorage + 2);
    v22 = 32;
    do
    {
      v23 = *(&_swiftEmptyArrayStorage + v22);
      v24 = *(&_swiftEmptyArrayStorage + 3);
      if (v21 >= v24 >> 1)
      {
        sub_100004E54((v24 > 1), v21 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v21 + 1;
      *(&_swiftEmptyArrayStorage + v21 + 32) = v23;
      ++v22;
      ++v21;
      --v20;
    }

    while (v20);
  }

  v25 = *(v27 + 8);

  return v25(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005414()
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
      if (v7 > 8)
      {
        break;
      }

      if (v6 <= 3)
      {
        if (v6 < 2)
        {
          goto LABEL_22;
        }

LABEL_21:
        v20 = [objc_opt_self() currentDevice];
        v21 = [v20 userInterfaceIdiom];

        if (v21 == 1)
        {
          goto LABEL_22;
        }

        goto LABEL_4;
      }

      if ((v6 - 6) < 3 || v6 == 4)
      {
        goto LABEL_22;
      }

      v9 = [objc_opt_self() currentDevice];
      v10 = [v9 userInterfaceIdiom];

      if (v10 != 1)
      {
        v11 = [objc_opt_self() mainScreen];
        [v11 _referenceBounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v32.origin.x = v13;
        v32.origin.y = v15;
        v32.size.width = v17;
        v32.size.height = v19;
        if (CGRectGetWidth(v32) > 320.0)
        {
LABEL_22:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100004E74(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
          }

          v23 = *(&_swiftEmptyArrayStorage + 2);
          v22 = *(&_swiftEmptyArrayStorage + 3);
          if (v23 >= v22 >> 1)
          {
            sub_100004E74((v22 > 1), v23 + 1, 1);
          }

          *(&_swiftEmptyArrayStorage + 2) = v23 + 1;
          *(&_swiftEmptyArrayStorage + v23 + 32) = v6;
        }
      }

LABEL_4:
      if (!--v2)
      {
        goto LABEL_27;
      }
    }

    if (v6 <= 0x16)
    {
      if (((1 << v6) & 0x7FCC00) != 0)
      {
        goto LABEL_22;
      }

      if (v6 == 12)
      {
        v4 = [objc_opt_self() currentDevice];
        v5 = [v4 userInterfaceIdiom];

        if (!v5)
        {
          goto LABEL_22;
        }

        goto LABEL_4;
      }

      if (v6 == 13)
      {
        if (UIKeyboardDeviceSupportsSplit())
        {
          goto LABEL_22;
        }

        goto LABEL_4;
      }
    }

    goto LABEL_21;
  }

LABEL_27:
  v24 = *(&_swiftEmptyArrayStorage + 2);
  if (v24)
  {
    sub_100004E54(0, v24, 0);
    v25 = *(&_swiftEmptyArrayStorage + 2);
    v26 = 32;
    do
    {
      v27 = *(&_swiftEmptyArrayStorage + v26);
      v28 = *(&_swiftEmptyArrayStorage + 3);
      if (v25 >= v28 >> 1)
      {
        sub_100004E54((v28 > 1), v25 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v25 + 1;
      *(&_swiftEmptyArrayStorage + v25 + 32) = v27;
      ++v26;
      ++v25;
      --v24;
    }

    while (v24);
  }

  v29 = *(v0 + 8);

  return v29(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005788()
{
  for (i = 0; i != 23; ++i)
  {
    v3 = *(&off_10000C930 + i + 32);
    if (v3 <= 8)
    {
      if (*(&off_10000C930 + i + 32) > 3u)
      {
        if (v3 - 6 >= 3 && v3 != 4)
        {
          v5 = [objc_opt_self() currentDevice];
          v6 = [v5 userInterfaceIdiom];

          if (v6 == 1)
          {
            continue;
          }

          v7 = [objc_opt_self() mainScreen];
          [v7 _referenceBounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v25.origin.x = v9;
          v25.origin.y = v11;
          v25.size.width = v13;
          v25.size.height = v15;
          if (CGRectGetWidth(v25) <= 320.0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      if (v3 >= 2)
      {
LABEL_20:
        v16 = [objc_opt_self() currentDevice];
        v17 = [v16 userInterfaceIdiom];

        if (v17 != 1)
        {
          continue;
        }
      }
    }

    else
    {
      if (v3 > 0x16)
      {
        goto LABEL_20;
      }

      if (((1 << v3) & 0x7FCC00) == 0)
      {
        if (v3 == 12)
        {
          v1 = [objc_opt_self() currentDevice];
          v2 = [v1 userInterfaceIdiom];

          if (v2)
          {
            continue;
          }
        }

        else
        {
          if (v3 != 13)
          {
            goto LABEL_20;
          }

          if ((UIKeyboardDeviceSupportsSplit() & 1) == 0)
          {
            continue;
          }
        }
      }
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100004E74(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      sub_100004E74((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    *(&_swiftEmptyArrayStorage[4] + v19) = v3;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v20 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v20 = 23;
  }

  v21 = *(v23 + 8);

  return v21(v20);
}

uint64_t sub_100005A68()
{
  sub_100004E54(0, 23, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_10000C930 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100004E54((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 23);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100005B6C()
{
  v0 = sub_100007B10();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100005BC0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005C08(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005C40(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100005CA4()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

uint64_t sub_100005D20(uint64_t a1)
{
  v2 = sub_100005E70();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100005DC8();
  sub_100007AC0();
  return 0;
}

unint64_t sub_100005DC8()
{
  result = qword_100010140;
  if (!qword_100010140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010140);
  }

  return result;
}

unint64_t sub_100005E70()
{
  result = qword_100010148;
  if (!qword_100010148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010148);
  }

  return result;
}

uint64_t sub_100005ED4()
{
  v0 = sub_100005BC0(&qword_100010178, &qword_10000A860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_100005BC0(&qword_100010180, &qword_10000A868);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000069C0();
  sub_1000078C0();
  v12._countAndFlagsBits = 0x206E65704FLL;
  v12._object = 0xE500000000000000;
  sub_1000078B0(v12);
  swift_getKeyPath();
  sub_1000039E4();
  sub_100007810();

  sub_1000078A0();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1000078B0(v13);
  sub_1000078D0();
  v7 = sub_100007830();
  (*(v1 + 8))(v4, v0);
  sub_100005BC0(&qword_100010188, &unk_10000A870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10000A780;
  *(v8 + 32) = v7;
  v9 = sub_100007820();

  return v9;
}

uint64_t sub_100006118()
{
  v0 = sub_100007890();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000039E4();
  sub_100007810();

  sub_1000069C0();
  sub_100007880();
  v5 = sub_100007870();
  (*(v1 + 8))(v4, v0);
  sub_100005BC0(&qword_100010170, &qword_10000A858);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10000A780;
  *(v6 + 32) = v5;
  v7 = sub_100007860();

  return v7;
}

uint64_t sub_100006288()
{
  v25 = sub_100007850();
  v24 = sub_100007850();
  v23 = sub_100007850();
  v22 = sub_100007850();
  v21 = sub_100007850();
  v20 = sub_100007850();
  v19 = sub_100007850();
  v18 = sub_100007850();
  v17 = sub_100007850();
  v16 = sub_100007850();
  v15 = sub_100007850();
  v14 = sub_100007850();
  v13 = sub_100007850();
  v12 = sub_100007850();
  v0 = sub_100007850();
  v1 = sub_100007850();
  v2 = sub_100007850();
  v3 = sub_100007850();
  v4 = sub_100007850();
  v5 = sub_100007850();
  v6 = sub_100007850();
  v7 = sub_100007850();
  v8 = sub_100007850();
  sub_100005BC0(&qword_100010160, &qword_10000A820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10000A790;
  *(v9 + 32) = v25;
  *(v9 + 40) = v24;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v21;
  *(v9 + 72) = v20;
  *(v9 + 80) = v19;
  *(v9 + 88) = v18;
  *(v9 + 96) = v17;
  *(v9 + 104) = v16;
  *(v9 + 112) = v15;
  *(v9 + 120) = v14;
  *(v9 + 128) = v13;
  *(v9 + 136) = v12;
  *(v9 + 144) = v0;
  *(v9 + 152) = v1;
  *(v9 + 160) = v2;
  *(v9 + 168) = v3;
  *(v9 + 176) = v4;
  *(v9 + 184) = v5;
  *(v9 + 192) = v6;
  *(v9 + 200) = v7;
  *(v9 + 208) = v8;
  v10 = sub_100007840();

  return v10;
}

uint64_t sub_1000065FC()
{
  v0 = sub_100007850();
  v1 = sub_100007850();
  v2 = sub_100007850();
  v3 = sub_100007850();
  sub_100005BC0(&qword_100010160, &qword_10000A820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000A7A0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100007840();

  return v5;
}

uint64_t sub_100006708()
{
  v0 = sub_100007900();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100007318();
  sub_1000069C0();
  sub_100007910();
  v5 = sub_1000078F0();
  (*(v1 + 8))(v4, v0);
  sub_100005BC0(&qword_100010168, &qword_10000A828);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10000A780;
  *(v6 + 32) = v5;
  v7 = sub_1000078E0();

  return v7;
}

uint64_t sub_100006870()
{
  v0 = sub_100007800();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000069C0();
  sub_1000077F0();
  v5 = sub_1000077E0();
  (*(v1 + 8))(v4, v0);
  sub_100005BC0(&qword_100010158, &qword_10000A818);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10000A780;
  *(v6 + 32) = v5;
  v7 = sub_1000077D0();

  return v7;
}

unint64_t sub_1000069C0()
{
  result = qword_100010150;
  if (!qword_100010150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010150);
  }

  return result;
}

uint64_t sub_100006A14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000077A0();
  *a2 = v5;
  return result;
}

uint64_t sub_100006A50(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1000077B0();
}

unint64_t sub_100006A8C()
{
  result = qword_100010190;
  if (!qword_100010190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010190);
  }

  return result;
}

uint64_t sub_100006B14()
{
  v0 = sub_100007A80();
  sub_100005C40(v0, qword_1000101E8);
  sub_100005C08(v0, qword_1000101E8);
  return sub_100007A60();
}

uint64_t sub_100006B78@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000077A0();
  *a1 = v5;
  return result;
}

uint64_t sub_100006BB4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000077B0();
}

void (*sub_100006BEC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100007790();
  return sub_100006C60;
}

void sub_100006C60(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100006CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007614();
  v5 = sub_100005CA4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100006D28()
{
  result = qword_100010198;
  if (!qword_100010198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010198);
  }

  return result;
}

unint64_t sub_100006D80()
{
  result = qword_1000101A0;
  if (!qword_1000101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101A0);
  }

  return result;
}

unint64_t sub_100006DD8()
{
  result = qword_1000101A8;
  if (!qword_1000101A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101A8);
  }

  return result;
}

uint64_t sub_100006E7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010038 != -1)
  {
    swift_once();
  }

  v2 = sub_100007A80();
  v3 = sub_100005C08(v2, qword_1000101E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100006F40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005BC0(&qword_100010110, &qword_10000A690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_100007A80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100007A60();
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_100007930();
  v9 = sub_100007920();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t sub_1000070D0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007614();
  v7 = sub_100007668();
  v8 = sub_100005CA4();
  *v5 = v2;
  v5[1] = sub_10000719C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000719C()
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

uint64_t sub_1000072A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007318();
  *a1 = result;
  return result;
}

uint64_t sub_1000072CC(uint64_t a1)
{
  v2 = sub_1000069C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100007318()
{
  v21 = sub_100007A00();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005BC0(&qword_1000101B0, &unk_10000AA90);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100005BC0(&qword_100010110, &qword_10000A690);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100007A80();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005BC0(&qword_1000101B8, &unk_10000AAA0);
  sub_100007A60();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 23;
  v18 = sub_100007780();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_1000013FC();
  return sub_1000077C0();
}

unint64_t sub_100007614()
{
  result = qword_1000101C0;
  if (!qword_1000101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C0);
  }

  return result;
}

unint64_t sub_100007668()
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C8);
  }

  return result;
}