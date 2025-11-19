uint64_t sub_10000128C()
{
  v0 = sub_100001388();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for PlaceholderWidget, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001308();
  sub_100007AF4();
  return 0;
}

unint64_t sub_100001308()
{
  result = qword_100010020;
  if (!qword_100010020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010020);
  }

  return result;
}

unint64_t sub_100001388()
{
  result = qword_100010028;
  if (!qword_100010028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010028);
  }

  return result;
}

uint64_t sub_100001460()
{
  v0 = (*(*(sub_1000057CC(&qword_100010100, &qword_1000097C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v14 - v1;
  v14[0] = sub_100007AA4();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_100007AE4() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_100007B24() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_100007AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = sub_100007A84();
  sub_100005948(v12, qword_100010DB8);
  sub_100005910(v12, qword_100010DB8);
  sub_100007B14();
  sub_100007AD4();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_100007AC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_100007A74();
}

uint64_t sub_100001744()
{
  v0 = sub_1000057CC(&qword_100010150, &qword_100009800);
  sub_100005948(v0, qword_100010DD0);
  sub_100005910(v0, qword_100010DD0);
  sub_1000057CC(&qword_100010158, &qword_100009808);
  v1 = sub_1000057CC(&qword_100010160, &qword_100009810);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100009230;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_100002240();
  sub_100007A04();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_100007A04();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_100007A04();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_100007A04();
  v10 = *(v1 + 48);
  *(v5 + 4 * v2) = 4;
  sub_100007A04();
  v11 = *(v1 + 48);
  *(v5 + 5 * v2) = 5;
  sub_100007A04();
  v12 = *(v1 + 48);
  *(v5 + 6 * v2) = 6;
  sub_100007A04();
  v13 = *(v1 + 48);
  *(v5 + 7 * v2) = 7;
  sub_100007A04();
  v14 = *(v1 + 48);
  *(v5 + 8 * v2) = 8;
  sub_100007A04();
  sub_100005288(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100007A14();
}

uint64_t sub_100001AB8()
{
  v0 = sub_1000079C4();
  sub_100005948(v0, qword_100010030);
  sub_100005910(v0, qword_100010030);
  return sub_1000079B4();
}

unint64_t sub_100001B1C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1953460082;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x76657250776F6873;
    }

    if (a1)
    {
      v5 = 0x4179616C70736964;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000011;
    if (a1 == 7)
    {
      v2 = 0x6767755369726973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x68536E6565726373;
    if (a1 != 4)
    {
      v3 = 1769105779;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100001C6C()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

uint64_t sub_100001CC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xD000000000000010;
    v13 = 0x8000000100007CE0;
    if (a1 != 2)
    {
      v12 = 0x76657250776F6873;
      v13 = 0xEC00000073776569;
    }

    v14 = 0x4179616C70736964;
    if (a1)
    {
      v11 = 0xE900000000000073;
    }

    else
    {
      v14 = 1953460082;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x8000000100007D20;
    v4 = 0xD000000000000015;
    v5 = 0xD000000000000011;
    if (a1 == 7)
    {
      v5 = 0x6767755369726973;
      v6 = 0xEF736E6F69747365;
    }

    else
    {
      v6 = 0x8000000100007D50;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x68536E6565726373;
    v8 = 0xED0000676E697261;
    if (a1 != 4)
    {
      v7 = 1769105779;
      v8 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x8000000100007CE0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0xEC00000073776569;
        if (v9 != 0x76657250776F6873)
        {
          goto LABEL_53;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE900000000000073;
      if (v9 != 0x4179616C70736964)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1953460082)
      {
        goto LABEL_53;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xED0000676E697261;
      if (v9 != 0x68536E6565726373)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1769105779)
      {
LABEL_53:
        v16 = sub_100007B64();
        goto LABEL_54;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x8000000100007D20;
    if (v9 != 0xD000000000000015)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF736E6F69747365;
    if (v9 != 0x6767755369726973)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v15 = 0x8000000100007D50;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_53;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_53;
  }

  v16 = 1;
LABEL_54:

  return v16 & 1;
}

Swift::Int sub_100001FD8()
{
  v1 = *v0;
  sub_100007B74();
  sub_100002028();
  return sub_100007B84();
}

uint64_t sub_100002028()
{
  sub_100007B34();
}

Swift::Int sub_10000219C()
{
  v1 = *v0;
  sub_100007B74();
  sub_100002028();
  return sub_100007B84();
}

uint64_t sub_1000021E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000547C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100002210@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100002240()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

unint64_t sub_100002298()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

uint64_t sub_1000022EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010008 != -1)
  {
    swift_once();
  }

  v2 = sub_1000057CC(&qword_100010150, &qword_100009800);
  v3 = sub_100005910(v2, qword_100010DD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000023A0()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_1000023F8()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100002450()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_1000024B0()
{
  sub_1000058BC();
  v1 = sub_1000079F4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002520()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_100002578()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_1000025D0()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

unint64_t sub_100002628()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

uint64_t sub_1000026E4(uint64_t a1)
{
  v2 = sub_100002240();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002734()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_10000278C()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_1000027E4()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

uint64_t sub_10000283C(uint64_t a1)
{
  v2 = sub_100002628();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000288C()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    sub_1000028F0(&qword_1000100C8, &qword_100009510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

uint64_t sub_1000028F0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000294C()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

uint64_t sub_1000029A4()
{
  v0 = sub_100007AA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100007AE4() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_100007B24() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_100007AB4();
  sub_100005948(v7, qword_100010DE8);
  sub_100005910(v7, qword_100010DE8);
  sub_100007B14();
  sub_100007AD4();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100007AC4();
}

uint64_t sub_100002BB8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100007864();
  *a1 = v5;
  return result;
}

uint64_t sub_100002BF4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100007874();
}

void (*sub_100002C2C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100007854();
  return sub_100002CA0;
}

void sub_100002CA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002CEC()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_100002D40()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

uint64_t sub_100002D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814();
  v5 = sub_1000058BC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100002E04()
{
  v0 = qword_100010048;

  return v0;
}

unint64_t sub_100002E44()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

unint64_t sub_100002E9C()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

uint64_t sub_100002FA0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005910(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100003068(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005814();
  v8 = sub_100005868();
  v9 = sub_1000058BC();
  *v6 = v2;
  v6[1] = sub_10000313C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000313C()
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

uint64_t sub_100003244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000054C8();
  *a1 = result;
  return result;
}

uint64_t sub_10000326C(uint64_t a1)
{
  v2 = sub_100002CEC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for NotificationsSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationsSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003428(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100007B74();
  sub_100002028();
  v4 = sub_100007B84();

  return sub_100003494(a1, v4);
}

unint64_t sub_100003494(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    v5 = 0xE900000000000073;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v29 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0xD000000000000010;
        }

        else
        {
          v10 = 0x76657250776F6873;
        }

        if (v7 == 2)
        {
          v11 = 0x8000000100007CE0;
        }

        else
        {
          v11 = 0xEC00000073776569;
        }

        if (*(*(v29 + 48) + v4))
        {
          v12 = 0x4179616C70736964;
        }

        else
        {
          v12 = 1953460082;
        }

        if (*(*(v29 + 48) + v4))
        {
          v13 = 0xE900000000000073;
        }

        else
        {
          v13 = 0xE400000000000000;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v9 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      else if (*(*(v29 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v8 = 0x68536E6565726373;
          v9 = 0xED0000676E697261;
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1769105779;
        }
      }

      else if (v7 == 6)
      {
        v8 = 0xD000000000000015;
        v9 = 0x8000000100007D20;
      }

      else if (v7 == 7)
      {
        v8 = 0x6767755369726973;
        v9 = 0xEF736E6F69747365;
      }

      else
      {
        v8 = 0xD000000000000011;
        v9 = 0x8000000100007D50;
      }

      v14 = 0xD000000000000015;
      v15 = 0x6767755369726973;
      if (v6 != 7)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0xEF736E6F69747365;
      if (v6 != 7)
      {
        v16 = 0x8000000100007D50;
      }

      if (v6 != 6)
      {
        v14 = v15;
      }

      v17 = 0x8000000100007D20;
      if (v6 != 6)
      {
        v17 = v16;
      }

      v18 = 0x68536E6565726373;
      if (v6 != 4)
      {
        v18 = 1769105779;
      }

      v19 = 0xED0000676E697261;
      if (v6 != 4)
      {
        v19 = 0xE400000000000000;
      }

      if (v6 <= 5)
      {
        v14 = v18;
        v17 = v19;
      }

      if (v6 == 2)
      {
        v20 = 0xD000000000000010;
      }

      else
      {
        v20 = 0x76657250776F6873;
      }

      if (v6 == 2)
      {
        v21 = 0x8000000100007CE0;
      }

      else
      {
        v21 = 0xEC00000073776569;
      }

      if (v6)
      {
        v22 = 0x4179616C70736964;
      }

      else
      {
        v22 = 1953460082;
      }

      if (!v6)
      {
        v5 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v20 = v22;
        v21 = v5;
      }

      v23 = v6 <= 3 ? v20 : v14;
      v24 = v6 <= 3 ? v21 : v17;
      if (v8 == v23 && v9 == v24)
      {
        break;
      }

      v25 = sub_100007B64();

      if ((v25 & 1) == 0)
      {
        v4 = (v4 + 1) & v27;
        v5 = 0xE900000000000073;
        if ((*(v28 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000379C(uint64_t a1)
{
  v2 = sub_1000057CC(&qword_100010138, &qword_1000097E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057CC(&qword_100010148, &qword_1000097F8);
    v8 = sub_100007B44();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000059AC(v10, v6, &qword_100010138, &qword_1000097E8);
      v12 = *v6;
      result = sub_100003428(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000079E4();
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

unint64_t sub_100003984()
{
  v89 = sub_100007AA4();
  v87 = *(v89 - 8);
  v0 = *(v87 + 64);
  __chkstk_darwin(v89);
  v2 = &v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007AE4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007B24();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000057CC(&qword_100010128, &qword_1000097D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v84 = &v79 - v11;
  v12 = sub_1000057CC(&qword_100010100, &qword_1000097C8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v79 - v14;
  v16 = sub_100007AB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v102 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v79 - v21;
  sub_1000057CC(&qword_100010130, &qword_1000097E0);
  v23 = sub_1000057CC(&qword_100010138, &qword_1000097E8);
  v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v88 = *(*(v23 - 8) + 72);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100009230;
  v83 = v25;
  v101 = v23;
  v82 = *(v23 + 48);
  v99 = v22;
  v100 = v25 + v24;
  *(v25 + v24) = 0;
  sub_100007A94();
  v26 = *(v17 + 56);
  v103 = v15;
  v97 = v17 + 56;
  v98 = v16;
  v96 = v26;
  v26(v15, 1, 1, v16);
  if (qword_100010010 != -1)
  {
    swift_once();
  }

  v27 = sub_1000079C4();
  v28 = sub_100005910(v27, qword_100010030);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v90 = v27;
  v91 = v29 + 16;
  v94 = v28;
  v95 = v30;
  v31 = v84;
  v30(v84, v28, v27);
  v32 = *(v29 + 56);
  v92 = v29 + 56;
  v93 = v32;
  v32(v31, 0, 1, v27);
  sub_1000057CC(&qword_100010140, &qword_1000097F0);
  v33 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v80 = (8 * *(v17 + 72));
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_100009240;
  sub_100007B14();
  sub_100007AD4();
  v34 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v35 = v87 + 104;
  v36 = *(v87 + 104);
  v37 = v89;
  v36(v2, enum case for LocalizedStringResource.BundleDescription.main(_:), v89);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v36(v2, v34, v37);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v36(v2, v34, v37);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v36(v2, v34, v37);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v36(v2, v34, v37);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v36(v2, v34, v37);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v36(v2, v34, v37);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v85 = v34;
  v38 = v37;
  v36(v2, v34, v37);
  v86 = v36;
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v36(v2, v34, v37);
  v39 = v35;
  sub_100007AC4();
  v40 = v100;
  v41 = v103;
  v42 = v84;
  sub_1000079D4();
  v81 = v40 + v88;
  v82 = *(v101 + 48);
  *v81 = 1;
  sub_100007B14();
  sub_100007AD4();
  v43 = v85;
  v86(v2, v85, v38);
  v87 = v39;
  sub_100007AC4();
  v44 = v41;
  sub_100007A94();
  v96(v41, 0, 1, v98);
  v45 = v90;
  v95(v42, v94, v90);
  v46 = v42;
  v93(v42, 0, 1, v45);
  sub_100007B14();
  sub_100007AD4();
  v47 = v89;
  v48 = v86;
  v86(v2, v43, v89);
  sub_100007AC4();
  sub_1000079D4();
  v82 = 2 * v88;
  v80 = (v100 + 2 * v88);
  v81 = *(v101 + 48);
  *v80 = 2;
  sub_100007B14();
  sub_100007AD4();
  v48(v2, v43, v47);
  sub_100007AC4();
  sub_100007A94();
  v96(v44, 0, 1, v98);
  v49 = v90;
  v95(v46, v94, v90);
  v93(v46, 0, 1, v49);
  sub_100007B14();
  sub_100007AD4();
  v50 = v85;
  v51 = v86;
  v86(v2, v85, v89);
  sub_100007AC4();
  sub_1000079D4();
  v81 = v100 + v82 + v88;
  v82 = *(v101 + 48);
  *v81 = 3;
  sub_100007B14();
  sub_100007AD4();
  v52 = v50;
  v53 = v89;
  v51(v2, v50, v89);
  sub_100007AC4();
  sub_100007A94();
  v96(v44, 0, 1, v98);
  v54 = v84;
  v55 = v90;
  v95(v84, v94, v90);
  v93(v54, 0, 1, v55);
  sub_100007B14();
  sub_100007AD4();
  v51(v2, v52, v53);
  sub_100007AC4();
  sub_1000079D4();
  v82 = 4 * v88;
  v80 = (v100 + 4 * v88);
  v81 = *(v101 + 48);
  *v80 = 4;
  sub_100007B14();
  sub_100007AD4();
  v56 = v51;
  v51(v2, v52, v53);
  sub_100007AC4();
  v57 = v103;
  sub_100007A94();
  v96(v57, 0, 1, v98);
  v58 = v90;
  v95(v54, v94, v90);
  v93(v54, 0, 1, v58);
  sub_100007B14();
  sub_100007AD4();
  v59 = v85;
  v56(v2, v85, v53);
  sub_100007AC4();
  sub_1000079D4();
  v81 = v100 + v82 + v88;
  v82 = *(v101 + 48);
  *v81 = 5;
  sub_100007B14();
  sub_100007AD4();
  v56(v2, v59, v53);
  sub_100007AC4();
  v60 = v103;
  sub_100007A94();
  v96(v60, 0, 1, v98);
  v61 = v90;
  v95(v54, v94, v90);
  v93(v54, 0, 1, v61);
  sub_100007B14();
  sub_100007AD4();
  v62 = v85;
  v63 = v86;
  v86(v2, v85, v53);
  sub_100007AC4();
  sub_1000079D4();
  v81 = v100 + 6 * v88;
  v82 = *(v101 + 48);
  *v81 = 6;
  sub_100007B14();
  sub_100007AD4();
  v63(v2, v62, v53);
  sub_100007AC4();
  v64 = v103;
  sub_100007A94();
  v96(v64, 0, 1, v98);
  v65 = v90;
  v95(v54, v94, v90);
  v66 = v54;
  v93(v54, 0, 1, v65);
  sub_100007B14();
  sub_100007AD4();
  v67 = v85;
  v68 = v89;
  v69 = v86;
  v86(v2, v85, v89);
  sub_100007AC4();
  sub_1000079D4();
  v82 = 8 * v88;
  v81 = v100 + 7 * v88;
  v88 = *(v101 + 48);
  *v81 = 7;
  sub_100007B14();
  sub_100007AD4();
  v69(v2, v67, v68);
  v79 = v6;
  sub_100007AC4();
  v70 = v103;
  sub_100007A94();
  v96(v70, 0, 1, v98);
  v71 = v90;
  v95(v66, v94, v90);
  v93(v66, 0, 1, v71);
  sub_100007B14();
  sub_100007AD4();
  v72 = v85;
  v73 = v89;
  v74 = v86;
  v86(v2, v85, v89);
  sub_100007AC4();
  sub_1000079D4();
  v82 += v100;
  v88 = *(v101 + 48);
  *v82 = 8;
  sub_100007B14();
  sub_100007AD4();
  v74(v2, v72, v73);
  sub_100007AC4();
  sub_100007A94();
  v96(v70, 0, 1, v98);
  v75 = v84;
  v76 = v90;
  v95(v84, v94, v90);
  v93(v75, 0, 1, v76);
  sub_100007B14();
  sub_100007AD4();
  v74(v2, v72, v89);
  sub_100007AC4();
  sub_1000079D4();
  v77 = sub_10000379C(v83);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v77;
}

unint64_t sub_100005288(uint64_t a1)
{
  v2 = sub_1000057CC(&qword_100010160, &qword_100009810);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057CC(&qword_100010168, &qword_100009818);
    v8 = sub_100007B44();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000059AC(v10, v6, &qword_100010160, &qword_100009810);
      v12 = *v6;
      result = sub_100003428(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000057CC(&qword_100010170, &unk_100009820);
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

uint64_t sub_10000547C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C7B0;
  v6._object = a2;
  v4 = sub_100007B54(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000054C8()
{
  v20 = sub_100007A24();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000057CC(&qword_1000100F8, &qword_1000097C0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1000057CC(&qword_100010100, &qword_1000097C8);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100007AB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000057CC(&qword_100010108, &qword_1000097D0);
  sub_100007A94();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 9;
  v17 = sub_100007844();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100002240();
  return sub_100007884();
}

uint64_t sub_1000057CC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100005814()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_100005868()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

unint64_t sub_1000058BC()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_100005910(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005948(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000059AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005A28()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100007964();
  v7 = sub_1000078F4();
  v6(v4, v0);
  sub_100007964();
  v8 = sub_1000078F4();
  v6(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100009830;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_1000078E4();

  return v10;
}

uint64_t sub_100005C58()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100005CE4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  (*(v1 + 8))(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009840;
  *(v6 + 32) = v5;
  v7 = sub_1000078E4();

  return v7;
}

uint64_t sub_100005E60()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100005EE4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100007964();
  v7 = sub_1000078F4();
  v6(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100009850;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_1000078E4();

  return v9;
}

uint64_t sub_1000060BC()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100006140()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100007964();
  v7 = sub_1000078F4();
  v6(v4, v0);
  sub_100007964();
  v8 = sub_1000078F4();
  v6(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100009830;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_1000078E4();

  return v10;
}

uint64_t sub_100006370()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_1000063F4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  (*(v1 + 8))(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009840;
  *(v6 + 32) = v5;
  v7 = sub_1000078E4();

  return v7;
}

uint64_t sub_100006570()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_1000065F4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  (*(v1 + 8))(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009840;
  *(v6 + 32) = v5;
  v7 = sub_1000078E4();

  return v7;
}

uint64_t sub_100006770()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_1000067F4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100007964();
  v7 = sub_1000078F4();
  v6(v4, v0);
  sub_100007964();
  v8 = sub_1000078F4();
  v6(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100009830;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_1000078E4();

  return v10;
}

uint64_t sub_100006A28()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100006AAC()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  (*(v1 + 8))(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009840;
  *(v6 + 32) = v5;
  v7 = sub_1000078E4();

  return v7;
}

uint64_t sub_100006C28()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100006CAC()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  sub_100002CEC();
  sub_100007964();
  v5 = sub_1000078F4();
  (*(v1 + 8))(v4, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009840;
  *(v6 + 32) = v5;
  v7 = sub_1000078E4();

  return v7;
}

uint64_t sub_100006E28()
{
  v0 = sub_100007954();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000025D0();
  sub_1000078D4();

  sub_100002CEC();
  sub_100007944();
  v5 = sub_100007934();
  (*(v1 + 8))(v4, v0);
  sub_1000057CC(&qword_100010190, &qword_100009928);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009840;
  *(v6 + 32) = v5;
  v7 = sub_100007924();

  return v7;
}

uint64_t sub_100006F8C()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100007010()
{
  v0 = sub_100007914();
  v1 = sub_100007914();
  v2 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100009830;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_100007904();

  return v4;
}

uint64_t sub_1000070F4()
{
  v0 = sub_1000078C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002CEC();
  sub_1000078B4();
  v5 = sub_1000078A4();
  (*(v1 + 8))(v4, v0);
  sub_1000057CC(&qword_100010178, &qword_1000098E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100009840;
  *(v6 + 32) = v5;
  v7 = sub_100007894();

  return v7;
}

uint64_t sub_100007244()
{
  v0 = sub_100007994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000054C8();
  sub_100002CEC();
  sub_1000079A4();
  v20 = sub_100007984();
  v5 = *(v1 + 8);
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v19 = sub_100007984();
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v18 = sub_100007984();
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v17 = sub_100007984();
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v6 = sub_100007984();
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v7 = sub_100007984();
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v8 = sub_100007984();
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v9 = sub_100007984();
  v5(v4, v0);
  v21 = sub_1000054C8();
  sub_1000079A4();
  v10 = sub_100007984();
  v5(v4, v0);
  sub_1000057CC(&qword_100010188, &qword_1000098F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100009230;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v6;
  *(v11 + 72) = v7;
  *(v11 + 80) = v8;
  *(v11 + 88) = v9;
  *(v11 + 96) = v10;
  v14 = sub_100007974();

  return v14;
}

uint64_t sub_100007740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100007864();
  *a2 = v5;
  return result;
}

uint64_t sub_10000777C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100007874();
}