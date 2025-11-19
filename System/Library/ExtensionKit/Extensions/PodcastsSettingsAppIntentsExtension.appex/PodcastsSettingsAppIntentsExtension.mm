uint64_t sub_100001280(uint64_t a1)
{
  v2 = sub_1000013D4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000132C();
  sub_100004A3C();
  return 0;
}

unint64_t sub_10000132C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_1000013D4()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001438()
{
  v0 = sub_100004A2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000045A4(&qword_10000C130, &qword_1000058F8);
  sub_100004720(v5, qword_10000CCE0);
  v30 = sub_1000046E8(v5, qword_10000CCE0);
  sub_1000045A4(&qword_10000C138, &qword_100005900);
  v6 = sub_1000045A4(&qword_10000C140, &qword_100005908);
  v31 = v6;
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v28 = 4 * v7;
  v9 = swift_allocObject();
  v29 = v9;
  *(v9 + 16) = xmmword_100005350;
  v27 = *(v6 + 48);
  *(v9 + v8) = 0;
  v10 = v9 + v8;
  v11 = v1;
  v12 = *(v1 + 104);
  v33 = v1 + 104;
  v34 = v12;
  v13 = v0;
  v12(v4, enum case for PodcastsSettingsDeepLinkURLs.rootURL(_:), v0);
  sub_100004A1C();
  v14 = *(v11 + 8);
  v14(v4, v0);
  v32 = sub_100002B14();
  v35 = v10;
  sub_10000492C();
  v15 = v31;
  v16 = *(v31 + 48);
  v26 = v7;
  v27 = v16;
  *(v10 + v7) = 1;
  v17 = v34;
  v34(v4, enum case for PodcastsSettingsDeepLinkURLs.cellularDownloadsURL(_:), v13);
  sub_100004A1C();
  v25 = v14;
  v14(v4, v13);
  sub_10000492C();
  v27 = *(v15 + 48);
  *(v35 + 2 * v7) = 2;
  v17(v4, enum case for PodcastsSettingsDeepLinkURLs.forwardURL(_:), v13);
  sub_100004A1C();
  v14(v4, v13);
  sub_10000492C();
  v18 = v35;
  v19 = v31;
  v27 = *(v31 + 48);
  *(v35 + 2 * v7 + v26) = 3;
  v34(v4, enum case for PodcastsSettingsDeepLinkURLs.backURL(_:), v13);
  sub_100004A1C();
  v20 = v25;
  v25(v4, v13);
  sub_10000492C();
  v21 = (v18 + v28);
  v22 = *(v19 + 48);
  *v21 = 4;
  v34(v4, enum case for PodcastsSettingsDeepLinkURLs.podcastsAndPrivacyURL(_:), v13);
  sub_100004A1C();
  v20(v4, v13);
  sub_10000492C();
  sub_100003E78(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10000493C();
}

uint64_t sub_1000018CC()
{
  v0 = sub_1000049AC();
  sub_100004720(v0, qword_10000CCF8);
  sub_1000046E8(v0, qword_10000CCF8);
  return sub_10000499C();
}

uint64_t sub_100001930()
{
  v0 = (*(*(sub_1000045A4(&qword_10000C110, &qword_1000058D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v61 = &v48 - v1;
  v2 = (*(*(sub_1000045A4(&qword_10000C0E8, &qword_1000058C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v48 - v3;
  v5 = sub_1000049CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (__chkstk_darwin)();
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_100004A0C() - 8) + 64);
  (__chkstk_darwin)();
  v11 = *(*(sub_100004A5C() - 8) + 64);
  (__chkstk_darwin)();
  v67 = sub_1000049DC();
  v70 = *(v67 - 8);
  v12 = *(v70 + 64);
  v13 = (__chkstk_darwin)();
  v69 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v48 - v15;
  sub_1000045A4(&qword_10000C118, &qword_1000058E0);
  v16 = sub_1000045A4(&qword_10000C120, &qword_1000058E8);
  v71 = v16;
  v17 = *(v16 - 8);
  v60 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v52 = (4 * v60);
  v19 = swift_allocObject();
  v53 = v19;
  *(v19 + 16) = xmmword_100005350;
  v72 = v19 + v18;
  v62 = *(v16 + 48);
  *(v19 + v18) = 0;
  sub_100004A4C();
  sub_1000049FC();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v6 + 104);
  v64 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  v56 = v6 + 104;
  v57 = v21;
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v22 = v20;
  v23 = v5;
  v21(v9, v22, v5);
  v24 = v4;
  sub_1000049EC();
  v25 = *(v70 + 56);
  v70 += 56;
  v66 = v25;
  v25(v4, 0, 1, v67);
  v68 = "ath to the settings pane";
  v26 = v61;
  sub_1000048EC();
  v58 = sub_1000048FC();
  v27 = *(v58 - 8);
  v65 = *(v27 + 56);
  v59 = v27 + 56;
  v65(v26, 0, 1, v58);
  sub_1000049BC();
  v28 = v72;
  sub_10000490C();
  v50 = (v28 + v60);
  v51 = *(v71 + 48);
  *v50 = 1;
  sub_100004A4C();
  sub_1000049FC();
  v29 = v64;
  v55 = v23;
  v30 = v57;
  v57(v9, v64, v23);
  sub_1000049EC();
  v62 = "oads settings pane";
  sub_100004A4C();
  sub_1000049FC();
  v30(v9, v29, v23);
  sub_1000049EC();
  v54 = v24;
  v31 = v67;
  v66(v24, 0, 1, v67);
  sub_1000048EC();
  v32 = v26;
  v33 = v58;
  v65(v32, 0, 1, v58);
  sub_1000049BC();
  sub_10000490C();
  v51 = 2 * v60;
  v49 = (v72 + 2 * v60);
  v50 = *(v71 + 48);
  *v49 = 2;
  sub_100004A4C();
  sub_1000049FC();
  v34 = v64;
  v35 = v55;
  v36 = v57;
  v57(v9, v64, v55);
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v36(v9, v34, v35);
  v37 = v54;
  sub_1000049EC();
  v66(v37, 0, 1, v31);
  v38 = v61;
  sub_1000048EC();
  v65(v38, 0, 1, v33);
  sub_1000049BC();
  sub_10000490C();
  v51 += v72 + v60;
  v60 = *(v71 + 48);
  *v51 = 3;
  sub_100004A4C();
  sub_1000049FC();
  v39 = v64;
  v40 = v55;
  v36(v9, v64, v55);
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v36(v9, v39, v40);
  v41 = v54;
  sub_1000049EC();
  v66(v41, 0, 1, v67);
  v42 = v61;
  sub_1000048EC();
  v65(v42, 0, 1, v58);
  sub_1000049BC();
  sub_10000490C();
  v52 += v72;
  v60 = *(v71 + 48);
  *v52 = 4;
  sub_100004A4C();
  sub_1000049FC();
  v43 = v64;
  v44 = v55;
  v45 = v57;
  v57(v9, v64, v55);
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v45(v9, v43, v44);
  sub_1000049EC();
  v66(v41, 0, 1, v67);
  sub_1000048EC();
  v65(v42, 0, 1, v58);
  sub_1000049BC();
  sub_10000490C();
  v46 = sub_10000406C(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10000CD10 = v46;
  return result;
}

unint64_t sub_1000025E8()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_10000263C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 1953460082;
    }

    if (v2)
    {
      v3 = 0x8000000100004C10;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64726177726F66;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1801675106;
  }

  else
  {
    v3 = 0x8000000100004C30;
    v4 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 1953460082;
    }

    if (a2)
    {
      v6 = 0x8000000100004C10;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE700000000000000;
    if (v4 != 0x64726177726F66)
    {
LABEL_34:
      v8 = sub_100004A9C();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 1801675106;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x8000000100004C30;
    }

    if (v4 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

Swift::Int sub_1000027CC()
{
  v1 = *v0;
  sub_100004AAC();
  sub_100004A6C();

  return sub_100004ABC();
}

uint64_t sub_1000028A8()
{
  *v0;
  *v0;
  *v0;
  sub_100004A6C();
}

Swift::Int sub_100002970()
{
  v1 = *v0;
  sub_100004AAC();
  sub_100004A6C();

  return sub_100004ABC();
}

uint64_t sub_100002A48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004254(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100002A78(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953460082;
  v5 = 0xE700000000000000;
  v6 = 0x64726177726F66;
  v7 = 0xE400000000000000;
  v8 = 1801675106;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000100004C30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000100004C10;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100002B14()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100002B6C()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100002BC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_1000045A4(&qword_10000C130, &qword_1000058F8);
  v3 = sub_1000046E8(v2, qword_10000CCE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002C74()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100002CCC()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100002D24()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100002D84()
{
  sub_100004694();
  v1 = sub_1000048DC();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002DF4()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002E4C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100002EA4()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100002EFC()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002FB8(uint64_t a1)
{
  v2 = sub_100002B14();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003008()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100003060()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_1000030B8()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_10000310C()
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100003168(uint64_t a1)
{
  v2 = sub_100002EFC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000031B8()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_10000321C(&qword_10000C0B0, &qword_100005620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_10000321C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003278()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_1000032D0()
{
  v0 = sub_1000049DC();
  sub_100004720(v0, qword_10000CD18);
  sub_1000046E8(v0, qword_10000CD18);
  return sub_1000049BC();
}

uint64_t sub_100003334@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000048AC();
  *a1 = v5;
  return result;
}

uint64_t sub_100003370(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000048BC();
}

void (*sub_1000033A8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10000489C();
  return sub_10000341C;
}

void sub_10000341C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003468()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_1000034BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045EC();
  v5 = sub_100004694();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000352C()
{
  v0 = qword_10000C030;

  return v0;
}

unint64_t sub_10000356C()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_1000035C4()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_10000361C()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_10000371C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_1000046E8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000037E4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000045EC();
  v7 = sub_100004640();
  v8 = sub_100004694();
  *v5 = v2;
  v5[1] = sub_1000038B0;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000038B0()
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

uint64_t sub_1000039B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000042A0();
  *a1 = result;
  return result;
}

uint64_t sub_1000039E0(uint64_t a1)
{
  v2 = sub_100003468();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PodcastsSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PodcastsSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003B9C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100004AAC();
  sub_100004A6C();

  v4 = sub_100004ABC();

  return sub_100003CA0(a1, v4);
}

unint64_t sub_100003CA0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v2 + 48) + v4) ? 0xD000000000000011 : 1953460082;
        v8 = *(*(v2 + 48) + v4) ? 0x8000000100004C10 : 0xE400000000000000;
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x64726177726F66;
      }

      else
      {
        v7 = v6 == 3 ? 1801675106 : 0xD000000000000012;
        v8 = v6 == 3 ? 0xE400000000000000 : 0x8000000100004C30;
      }

      if (v5 == 3)
      {
        v9 = 1801675106;
      }

      else
      {
        v9 = 0xD000000000000012;
      }

      if (v5 == 3)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0x8000000100004C30;
      }

      if (v5 == 2)
      {
        v9 = 0x64726177726F66;
        v10 = 0xE700000000000000;
      }

      v11 = v5 ? 0xD000000000000011 : 1953460082;
      v12 = v5 ? 0x8000000100004C10 : 0xE400000000000000;
      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_100004A9C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
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

unint64_t sub_100003E78(uint64_t a1)
{
  v2 = sub_1000045A4(&qword_10000C140, &qword_100005908);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000045A4(&qword_10000C148, &qword_100005910);
    v8 = sub_100004A7C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004784(v10, v6, &qword_10000C140, &qword_100005908);
      v12 = *v6;
      result = sub_100003B9C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000045A4(&unk_10000C150, qword_100005918);
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

unint64_t sub_10000406C(uint64_t a1)
{
  v2 = sub_1000045A4(&qword_10000C120, &qword_1000058E8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000045A4(&qword_10000C128, &qword_1000058F0);
    v8 = sub_100004A7C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004784(v10, v6, &qword_10000C120, &qword_1000058E8);
      v12 = *v6;
      result = sub_100003B9C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10000491C();
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

uint64_t sub_100004254(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000086B0;
  v6._object = a2;
  v4 = sub_100004A8C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000042A0()
{
  v21 = sub_10000496C();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000045A4(&qword_10000C0E0, &qword_1000058C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000045A4(&qword_10000C0E8, &qword_1000058C8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000049DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000045A4(&qword_10000C0F0, &qword_1000058D0);
  sub_1000049BC();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 5;
  v18 = sub_10000488C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100002B14();
  return sub_1000048CC();
}

uint64_t sub_1000045A4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000045EC()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_100004640()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_100004694()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004720(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100004784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000045A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}