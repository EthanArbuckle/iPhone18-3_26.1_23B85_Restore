uint64_t sub_100001220(uint64_t a1)
{
  v2 = sub_100001374();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000012CC();
  sub_100006870();
  return 0;
}

unint64_t sub_1000012CC()
{
  result = qword_100010030;
  if (!qword_100010030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010030);
  }

  return result;
}

unint64_t sub_100001374()
{
  result = qword_100010038;
  if (!qword_100010038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010038);
  }

  return result;
}

uint64_t sub_1000013D8()
{
  v0 = sub_1000068A0();
  sub_100001458(v0, qword_100011010);
  sub_1000014BC(v0, qword_100011010);
  return sub_100006890();
}

uint64_t *sub_100001458(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000014BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100001504()
{
  result = qword_100010040;
  if (!qword_100010040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010040);
  }

  return result;
}

uint64_t sub_100001558(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v8 = 0x8000000100006C70;
    v9 = 0x6F706D494D495323;
    if (a1 == 6)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xEA00000000007472;
    }

    v10 = 0xE700000000000000;
    v11 = 0x64726143654D2FLL;
    if (a1 != 4)
    {
      v11 = 0xD000000000000013;
      v10 = 0x8000000100006C50;
    }

    if (a1 <= 5u)
    {
      v6 = v11;
    }

    else
    {
      v6 = v9;
    }

    if (v2 <= 5)
    {
      v7 = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v3 = 0xE100000000000000;
    v4 = 47;
    v5 = 0x8000000100006C10;
    if (a1 != 2)
    {
      v5 = 0x8000000100006C30;
    }

    if (a1)
    {
      v4 = 0xD000000000000012;
      v3 = 0x8000000100006BF0;
    }

    if (a1 <= 1u)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v2 <= 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v12 = 0x8000000100006BF0;
        if (v6 != 0xD000000000000012)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v12 = 0xE100000000000000;
        if (v6 != 47)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v13 = "/PersonNameOrder";
    }

    else
    {
      v13 = "/PersonShortName";
    }

LABEL_41:
    v12 = (v13 - 32) | 0x8000000000000000;
    if (v6 != 0xD000000000000010)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v6 != 0x64726143654D2FLL)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v12 = 0x8000000100006C50;
      if (v6 != 0xD000000000000013)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_44;
  }

  if (a2 == 6)
  {
    v13 = "/ContactProvider";
    goto LABEL_41;
  }

  v12 = 0xEA00000000007472;
  if (v6 != 0x6F706D494D495323)
  {
LABEL_46:
    v14 = sub_100006950();
    goto LABEL_47;
  }

LABEL_44:
  if (v7 != v12)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_1000017B0()
{
  sub_1000068D0();
}

Swift::Int sub_1000018EC()
{
  sub_100006970();
  sub_1000068D0();

  return sub_100006980();
}

uint64_t sub_100001A34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005A14(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100001A64(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 47;
  v5 = 0x8000000100006C70;
  v6 = 0x6F706D494D495323;
  if (v2 == 6)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xEA00000000007472;
  }

  v7 = 0xE700000000000000;
  v8 = 0xD000000000000013;
  if (v2 == 4)
  {
    v8 = 0x64726143654D2FLL;
  }

  else
  {
    v7 = 0x8000000100006C50;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0x8000000100006C10;
  if (v2 != 2)
  {
    v9 = 0x8000000100006C30;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000100006BF0;
  }

  if (*v1 > 1u)
  {
    v4 = 0xD000000000000010;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_100001BAC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001C04()
{
  v1 = *v0;
  v2 = 47;
  v3 = 0x6F706D494D495323;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000013;
  if (v1 == 4)
  {
    v4 = 0x64726143654D2FLL;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100001D04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100005A14(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100001D50()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

unint64_t sub_100001DA8()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

unint64_t sub_100001DFC()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

uint64_t sub_100001E50()
{
  v0 = sub_100006820();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100006860() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_1000068C0() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_100006830();
  sub_100001458(v7, qword_100011028);
  sub_1000014BC(v7, qword_100011028);
  sub_1000068B0();
  sub_100006850();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100006840();
}

uint64_t sub_100002030()
{
  v0 = sub_100006710();
  sub_100001458(v0, qword_100011040);
  sub_1000014BC(v0, qword_100011040);
  return sub_100006700();
}

uint64_t sub_100002094@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = (*(*(sub_1000063CC(&qword_100010150, &qword_100007F28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v54 = &v49 - v4;
  v5 = (*(*(sub_1000063CC(&qword_100010128, &qword_100007F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v49 - v6;
  v8 = sub_100006820();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_100006860() - 8) + 64);
  (__chkstk_darwin)();
  v14 = *(*(sub_1000068C0() - 8) + 64);
  (__chkstk_darwin)();
  v15 = sub_100006830();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = (__chkstk_darwin)();
  v52 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        sub_1000068B0();
        sub_100006850();
        (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
        sub_100006840();
        if (qword_100010018 != -1)
        {
          swift_once();
        }

        v33 = sub_1000014BC(v15, qword_100011028);
        (*(v16 + 16))(v7, v33, v15);
        (*(v16 + 56))(v7, 0, 1, v15);
        if (qword_100010020 == -1)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_1000068B0();
        sub_100006850();
        (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
        sub_100006840();
        if (qword_100010018 != -1)
        {
          swift_once();
        }

        v43 = sub_1000014BC(v15, qword_100011028);
        (*(v16 + 16))(v7, v43, v15);
        (*(v16 + 56))(v7, 0, 1, v15);
        if (qword_100010020 == -1)
        {
          goto LABEL_39;
        }
      }
    }

    else if (a1 == 4)
    {
      sub_1000068B0();
      sub_100006850();
      (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      sub_100006840();
      if (qword_100010018 != -1)
      {
        swift_once();
      }

      v31 = sub_1000014BC(v15, qword_100011028);
      (*(v16 + 16))(v7, v31, v15);
      (*(v16 + 56))(v7, 0, 1, v15);
      if (qword_100010020 == -1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_1000068B0();
      sub_100006850();
      (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      sub_100006840();
      if (qword_100010018 != -1)
      {
        swift_once();
      }

      v35 = sub_1000014BC(v15, qword_100011028);
      (*(v16 + 16))(v7, v35, v15);
      (*(v16 + 56))(v7, 0, 1, v15);
      if (qword_100010020 == -1)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_41;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      sub_1000068B0();
      sub_100006850();
      v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v50 = v7;
      v23 = *(v9 + 104);
      v23(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      v51 = v21;
      sub_100006840();
      sub_1000068B0();
      sub_100006850();
      v23(v12, v22, v8);
      v24 = v50;
      sub_100006840();
      (*(v16 + 56))(v24, 0, 1, v15);
      if (qword_100010020 != -1)
      {
        swift_once();
      }

      v25 = sub_100006710();
      v26 = sub_1000014BC(v25, qword_100011040);
      v27 = *(v25 - 8);
      v28 = v54;
      (*(v27 + 16))(v54, v26, v25);
      (*(v27 + 56))(v28, 0, 1, v25);
      sub_1000063CC(&qword_100010158, &qword_100007F30);
      v29 = *(v16 + 72);
      v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      *(swift_allocObject() + 16) = xmmword_100007790;
      sub_100006810();
      sub_100006810();
      sub_100006810();
      sub_100006810();
      return sub_100006720();
    }

    sub_1000068B0();
    sub_100006850();
    (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
    sub_100006840();
    if (qword_100010018 != -1)
    {
      swift_once();
    }

    v34 = sub_1000014BC(v15, qword_100011028);
    (*(v16 + 16))(v7, v34, v15);
    (*(v16 + 56))(v7, 0, 1, v15);
    if (qword_100010020 == -1)
    {
LABEL_39:
      v44 = sub_100006710();
      v45 = sub_1000014BC(v44, qword_100011040);
      v46 = *(v44 - 8);
      v47 = v54;
      (*(v46 + 16))(v54, v45, v44);
      (*(v46 + 56))(v47, 0, 1, v44);
      sub_100006810();
      return sub_100006720();
    }

LABEL_41:
    swift_once();
    goto LABEL_39;
  }

  if (a1 == 2)
  {
    sub_1000068B0();
    sub_100006850();
    (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
    sub_100006840();
    if (qword_100010018 != -1)
    {
      swift_once();
    }

    v32 = sub_1000014BC(v15, qword_100011028);
    (*(v16 + 16))(v7, v32, v15);
    (*(v16 + 56))(v7, 0, 1, v15);
    if (qword_100010020 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  sub_1000068B0();
  sub_100006850();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_100006840();
  if (qword_100010018 != -1)
  {
    swift_once();
  }

  v36 = sub_1000014BC(v15, qword_100011028);
  (*(v16 + 16))(v7, v36, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  if (qword_100010020 != -1)
  {
    swift_once();
  }

  v37 = sub_100006710();
  v38 = sub_1000014BC(v37, qword_100011040);
  v39 = *(v37 - 8);
  v40 = v54;
  (*(v39 + 16))(v54, v38, v37);
  (*(v39 + 56))(v40, 0, 1, v37);
  sub_1000063CC(&qword_100010158, &qword_100007F30);
  v41 = *(v16 + 72);
  v42 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_100007780;
  sub_100006810();
  sub_100006810();
  sub_100006810();
  sub_100006810();
  sub_100006810();
  return sub_100006720();
}

uint64_t sub_1000033BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000065DC;

  return sub_100005C48(a1);
}

uint64_t sub_100003464(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003508;

  return sub_100005A60();
}

uint64_t sub_100003508(uint64_t a1)
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

uint64_t sub_100003618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000036D8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000036D8(uint64_t a1)
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

unint64_t sub_1000037DC()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_100003830()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100003888()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    sub_100001BAC(&qword_100010088, qword_100007938);
    sub_100003830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_10000390C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003F94();
  *v6 = v2;
  v6[1] = sub_1000039C0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000039C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003AB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003B58;

  return sub_100005E38();
}

uint64_t sub_100003B58(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100003C74()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

uint64_t sub_100003CC8()
{
  v0 = sub_1000063CC(&qword_100010160, &qword_100007F38);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_1000063CC(&qword_100010168, &qword_100007F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_100001DFC();
  sub_100006790();
  v8._object = 0x8000000100007330;
  v8._countAndFlagsBits = 0xD000000000000049;
  sub_100006780(v8);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100006770();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100006780(v9);
  return sub_1000067A0();
}

unint64_t sub_100003E8C()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

unint64_t sub_100003EE4()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

unint64_t sub_100003F3C()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_100003F94()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_100003FEC()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

uint64_t sub_100004040()
{
  sub_1000064BC();
  v1 = sub_100006740();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000040B0()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_100004108()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

unint64_t sub_100004164()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_1000041BC()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

uint64_t sub_100004220()
{
  v0 = (*(*(sub_1000063CC(&qword_100010128, &qword_100007F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = sub_100006830();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  sub_100006810();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000067D0();
}

uint64_t sub_1000043AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001BAC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000043F4(uint64_t a1)
{
  v2 = sub_100001DFC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004444()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

uint64_t sub_1000044A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000039C0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004564(uint64_t a1)
{
  v2 = sub_100004164();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000045B4()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

uint64_t sub_10000460C()
{
  v0 = sub_100006820();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006860();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000068C0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100006830();
  sub_100001458(v9, qword_100011058);
  sub_1000014BC(v9, qword_100011058);
  sub_1000068B0();
  sub_100006850();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100006840();
}

uint64_t sub_1000047EC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000066D0();
  *a1 = v5;
  return result;
}

uint64_t sub_100004828(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000066E0();
}

void (*sub_100004860(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000066C0();
  return sub_1000048D4;
}

void sub_1000048D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004920()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

uint64_t sub_100004974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006414();
  v5 = sub_1000064BC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000049F0()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

unint64_t sub_100004A48()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_100004AA0()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

uint64_t sub_100004B44@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010028 != -1)
  {
    swift_once();
  }

  v2 = sub_100006830();
  v3 = sub_1000014BC(v2, qword_100011058);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004C08(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006414();
  v7 = sub_100006468();
  v8 = sub_1000064BC();
  *v5 = v2;
  v5[1] = sub_100004CD4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100004CD4()
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

uint64_t sub_100004DDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005F6C();
  *a1 = result;
  return result;
}

uint64_t sub_100004E04(uint64_t a1)
{
  v2 = sub_100004920();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004E88(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100004F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004FE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000050B4(v11, 0, 0, 1, a1, a2);
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
    sub_100006560(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006514(v11);
  return v7;
}

unint64_t sub_1000050B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000051C0(a5, a6);
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
    result = sub_100006930();
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

char *sub_1000051C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000520C(a1, a2);
  sub_10000533C(&off_10000C858);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000520C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005428(v5, 0);
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

  result = sub_100006930();
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
        v10 = sub_1000068E0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005428(v10, 0);
        result = sub_100006920();
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

uint64_t sub_10000533C(uint64_t result)
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

  result = sub_10000549C(result, v12, 1, v3);
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

void *sub_100005428(uint64_t a1, uint64_t a2)
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

  sub_1000063CC(&unk_100010180, &qword_100007F68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000549C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000063CC(&unk_100010180, &qword_100007F68);
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

char *sub_100005590(char *a1, int64_t a2, char a3)
{
  result = sub_1000055D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000055B0(char *a1, int64_t a2, char a3)
{
  result = sub_1000056C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000055D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000063CC(&qword_100010178, &qword_100007F60);
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

char *sub_1000056C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000063CC(&qword_100010170, &qword_100007F58);
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

BOOL sub_1000057B8()
{
  v0 = [objc_allocWithZone(CNContactStore) init];
  v17 = 0;
  v1 = [v0 accountsMatchingPredicate:0 error:&v17];
  v2 = v17;
  if (v1)
  {
    v3 = v1;
    v4 = sub_1000068F0();
    v5 = v2;

    v6 = *(v4 + 16);

    return v6 > 1;
  }

  else
  {
    v8 = v17;
    sub_100006800();

    swift_willThrow();
    if (qword_100010010 != -1)
    {
      swift_once();
    }

    v9 = sub_1000068A0();
    sub_1000014BC(v9, qword_100011010);
    swift_errorRetain();
    v10 = sub_100006880();
    v11 = sub_100006910();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_100006960();
      v16 = sub_100004FE8(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to fetch accounts: %s", v12, 0xCu);
      sub_100006514(v13);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100005A14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C880;
  v6._object = a2;
  v4 = sub_100006940(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100005A7C()
{
  for (i = 0; i != 8; ++i)
  {
    v4 = *(&off_10000C960 + i + 32);
    if (v4 != 6 || sub_1000057B8())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000055B0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v3 = *(&_swiftEmptyArrayStorage + 2);
      v2 = *(&_swiftEmptyArrayStorage + 3);
      if (v3 >= v2 >> 1)
      {
        sub_1000055B0((v2 > 1), v3 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
      *(&_swiftEmptyArrayStorage + v3 + 32) = v4;
    }
  }

  v5 = *(&_swiftEmptyArrayStorage + 2);
  if (v5)
  {
    sub_100005590(0, v5, 0);
    v6 = *(&_swiftEmptyArrayStorage + 2);
    v7 = 32;
    do
    {
      v8 = *(&_swiftEmptyArrayStorage + v7);
      v9 = *(&_swiftEmptyArrayStorage + 3);
      if (v6 >= v9 >> 1)
      {
        sub_100005590((v9 > 1), v6 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
      *(&_swiftEmptyArrayStorage + v6 + 32) = v8;
      ++v7;
      ++v6;
      --v5;
    }

    while (v5);
  }

  v10 = *(v0 + 8);

  return v10(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005C68()
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
      if (v7 != 6 || sub_1000057B8())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000055B0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v5 = *(&_swiftEmptyArrayStorage + 2);
        v4 = *(&_swiftEmptyArrayStorage + 3);
        if (v5 >= v4 >> 1)
        {
          sub_1000055B0((v4 > 1), v5 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
        *(&_swiftEmptyArrayStorage + v5 + 32) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v8 = *(&_swiftEmptyArrayStorage + 2);
  if (v8)
  {
    sub_100005590(0, v8, 0);
    v9 = *(&_swiftEmptyArrayStorage + 2);
    v10 = 32;
    do
    {
      v11 = *(&_swiftEmptyArrayStorage + v10);
      v12 = *(&_swiftEmptyArrayStorage + 3);
      if (v9 >= v12 >> 1)
      {
        sub_100005590((v12 > 1), v9 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
      *(&_swiftEmptyArrayStorage + v9 + 32) = v11;
      ++v10;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005E54()
{
  if (qword_100010010 != -1)
  {
    swift_once();
  }

  v1 = sub_1000068A0();
  sub_1000014BC(v1, qword_100011010);
  v2 = sub_100006880();
  v3 = sub_100006900();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Falling back to default result", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_100005F6C()
{
  v0 = sub_1000067B0();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000063CC(&qword_100010120, &qword_100007F10);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_1000063CC(&qword_100010128, &qword_100007F18);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100006820();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100006860();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000068C0();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100006830();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28 = sub_1000063CC(&qword_100010130, &qword_100007F20);
  sub_1000068B0();
  sub_100006850();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100006840();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 8;
  v25 = sub_1000066B0();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_100001DFC();
  return sub_1000066F0();
}

uint64_t sub_1000063CC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100006414()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

unint64_t sub_100006468()
{
  result = qword_100010140;
  if (!qword_100010140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010140);
  }

  return result;
}

unint64_t sub_1000064BC()
{
  result = qword_100010148;
  if (!qword_100010148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010148);
  }

  return result;
}

uint64_t sub_100006514(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}