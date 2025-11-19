uint64_t sub_100001368(uint64_t a1)
{
  v2 = sub_1000014BC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001414();
  sub_100007120();
  return 0;
}

unint64_t sub_100001414()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_1000014BC()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100001524()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_10000157C()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

uint64_t sub_1000015D0()
{
  v0 = sub_100007100();
  sub_100003F18(v0, qword_100010DE0);
  sub_100003EE0(v0, qword_100010DE0);
  return sub_1000070E0();
}

double sub_100001634@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_100006F60();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_100001678(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  return sub_100006F70();
}

void (*sub_1000016B8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100006F50();
  return sub_10000172C;
}

void sub_10000172C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001778()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

uint64_t sub_1000017CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D04();
  v5 = sub_100003F7C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000183C()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

unint64_t sub_100001894()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_1000018EC()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

uint64_t sub_1000019E0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006D04();
  v7 = sub_100006D58();
  v8 = sub_100003F7C();
  *v5 = v2;
  v5[1] = sub_100001AAC;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100001AAC()
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

uint64_t sub_100001BB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005318();
  *a1 = result;
  return result;
}

uint64_t sub_100001BDC(uint64_t a1)
{
  v2 = sub_100001778();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100001C1C()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

unint64_t sub_100001C74()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

unint64_t sub_100001CCC()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

uint64_t sub_100001D20()
{
  v0 = sub_100005614(&off_10000C9A0);
  result = swift_arrayDestroy();
  off_100010080 = v0;
  return result;
}

uint64_t sub_100001D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v32._countAndFlagsBits = a3;
  v32._object = a4;
  v33 = a5;
  v7 = sub_100007190();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v9);
  v10 = sub_100003E98(&qword_100010140, &qword_100007F68);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_100003E98(&qword_100010148, &qword_100007F70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v31 - v16;
  v18 = sub_100007100();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  if (a1 == 1953460082 && a2 == 0xE400000000000000 || (sub_1000073A0() & 1) != 0)
  {
    sub_1000070E0();
    v23 = *(v19 + 56);
    v22 = v19 + 56;
    v23(v17, 1, 1, v18);
    sub_100006F90();
    v24 = sub_100006FB0();
    (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    sub_100003E98(&qword_100010150, &qword_100007F78);
    v25 = *(v22 + 16);
    v26 = (*(v22 + 24) + 32) & ~*(v22 + 24);
    *(swift_allocObject() + 16) = xmmword_1000078F0;
    sub_1000070E0();
    sub_1000070E0();
    sub_1000070E0();
  }

  else
  {

    sub_100007180();
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_100007170(v34);
    sub_100007160(v32);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_100007170(v35);
    sub_1000070F0();
    sub_1000070E0();
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_100006FA0();
    v27 = sub_100006FB0();
    (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
    sub_100007180();
    v36._countAndFlagsBits = 10256610;
    v36._object = 0xA300000000000000;
    sub_100007170(v36);
    countAndFlagsBits = v32._countAndFlagsBits;
    object = v32._object;
    sub_100007160(v32);
    v37._object = 0x80000001000083D0;
    v37._countAndFlagsBits = 0x100000000000005CLL;
    sub_100007170(v37);
    v38._countAndFlagsBits = countAndFlagsBits;
    v38._object = object;
    sub_100007160(v38);
    v39._countAndFlagsBits = 46;
    v39._object = 0xE100000000000000;
    sub_100007170(v39);
    sub_1000070F0();
  }

  return sub_100006FC0();
}

uint64_t sub_100002248()
{
  v0 = sub_100003E98(&qword_100010148, &qword_100007F70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100007100();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000070A0();
  sub_100003F18(v7, qword_100010DF8);
  sub_100003EE0(v7, qword_100010DF8);
  sub_1000070E0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100007090();
}

uint64_t sub_1000023BC(void *a1, uint64_t a2)
{
  v4 = [a1 bundleIdentifier];
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = v4;
  v6 = sub_1000071B0();
  v8 = v7;

  if (sub_100006E5C() != 33)
  {
    if (qword_100010058 != -1)
    {
      swift_once();
    }

    v16 = sub_100007150();
    sub_100003EE0(v16, qword_100010E10);

    v10 = sub_100007130();
    v11 = sub_100007250();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v43 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v17 = sub_1000040DC(v6, v8, &v43);

      *(v12 + 14) = v17;
      v15 = "Ignoring '%{private,mask.hash}s' (system application).";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (qword_100010048 != -1)
  {
    swift_once();
  }

  if (sub_100002C18(v6, v8, off_100010080))
  {
    if (qword_100010058 != -1)
    {
      swift_once();
    }

    v9 = sub_100007150();
    sub_100003EE0(v9, qword_100010E10);

    v10 = sub_100007130();
    v11 = sub_100007250();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v43 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v14 = sub_1000040DC(v6, v8, &v43);

      *(v12 + 14) = v14;
      v15 = "Ignoring '%{private,mask.hash}s' (not allowed).";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v10, v11, v15, v12, 0x16u);
      sub_100006284(v13);

LABEL_21:

LABEL_22:
      v21 = 0;
      return v21 & 1;
    }

    goto LABEL_20;
  }

  v18 = [a1 appClipMetadata];
  if (v18)
  {

    if (qword_100010058 != -1)
    {
      swift_once();
    }

    v19 = sub_100007150();
    sub_100003EE0(v19, qword_100010E10);

    v10 = sub_100007130();
    v11 = sub_100007250();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v43 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v20 = sub_1000040DC(v6, v8, &v43);

      *(v12 + 14) = v20;
      v15 = "Ignoring '%{private,mask.hash}s' (App Clip).";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v21 = sub_100002C18(v6, v8, a2);
  if ([a1 developerType] == 1)
  {
    if (qword_100010058 != -1)
    {
      swift_once();
    }

    v23 = sub_100007150();
    sub_100003EE0(v23, qword_100010E10);

    v24 = sub_100007130();
    v25 = sub_100007250();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v26 = 141558531;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v27 = sub_1000040DC(v6, v8, &v43);

      *(v26 + 14) = v27;
      *(v26 + 22) = 2080;
      if (v21)
      {
        v28 = 29545;
      }

      else
      {
        v28 = 0x746F6E207369;
      }

      if (v21)
      {
        v29 = 0xE200000000000000;
      }

      else
      {
        v29 = 0xE600000000000000;
      }

      v30 = sub_1000040DC(v28, v29, &v43);

      *(v26 + 24) = v30;
      v31 = "Application '%{private,mask.hash}s' %s Launchable (#1).";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v24, v25, v31, v26, 0x20u);
      swift_arrayDestroy();

      return v21 & 1;
    }

    goto LABEL_51;
  }

  if (![a1 isWebAppPlaceholder])
  {
    if (qword_100010058 != -1)
    {
      swift_once();
    }

    v38 = sub_100007150();
    sub_100003EE0(v38, qword_100010E10);

    v24 = sub_100007130();
    v25 = sub_100007250();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v26 = 141558531;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v39 = sub_1000040DC(v6, v8, &v43);

      *(v26 + 14) = v39;
      *(v26 + 22) = 2080;
      if (v21)
      {
        v40 = 29545;
      }

      else
      {
        v40 = 0x746F6E207369;
      }

      if (v21)
      {
        v41 = 0xE200000000000000;
      }

      else
      {
        v41 = 0xE600000000000000;
      }

      v42 = sub_1000040DC(v40, v41, &v43);

      *(v26 + 24) = v42;
      v31 = "Application '%{private,mask.hash}s' %s Launchable (#2).";
      goto LABEL_50;
    }

LABEL_51:

    return v21 & 1;
  }

  if (qword_100010058 != -1)
  {
    swift_once();
  }

  v32 = sub_100007150();
  sub_100003EE0(v32, qword_100010E10);

  v33 = sub_100007130();
  v34 = sub_100007250();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    v37 = sub_1000040DC(v6, v8, &v43);

    *(v35 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "Application '%{private,mask.hash}s' is web app.", v35, 0x16u);
    sub_100006284(v36);
  }

  else
  {
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_100002C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1000073D0();
  sub_1000071C0();
  v7 = sub_1000073E0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1000073A0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100002D10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_100002D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006DD0;

  return sub_100006340(a1);
}

uint64_t sub_100002E10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100006DB0;

  return sub_100005970();
}

uint64_t sub_100002EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002F74;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002F74(uint64_t a1)
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

unint64_t sub_100003078()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

uint64_t sub_1000030CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003170;

  return sub_100005970();
}

uint64_t sub_100003170(uint64_t a1)
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

unint64_t sub_100003288()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_1000032E0()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

unint64_t sub_100003338()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    sub_1000033BC(&qword_1000100F0, qword_100007B68);
    sub_1000032E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

uint64_t sub_1000033BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003404(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003078();
  *v6 = v2;
  v6[1] = sub_1000034B8;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000034B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000035AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000034B8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10000366C()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

uint64_t sub_1000036C0()
{
  v0 = sub_100003E98(&qword_100010160, &qword_100007F80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003E98(&qword_100010168, &qword_100007F88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100001CCC();
  sub_100007050();
  v9._object = 0x80000001000084F0;
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  sub_100007040(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100007030();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100007040(v10);
  return sub_100007060();
}

unint64_t sub_100003888()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

unint64_t sub_1000038E0()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

uint64_t sub_100003940()
{
  sub_100003F7C();
  v1 = sub_100007000();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000039B0()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_100003A08()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

unint64_t sub_100003A60()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_100003AC0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100003B04@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003EE0(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_100003BB0()
{
  result = qword_100010128;
  if (!qword_100010128)
  {
    sub_1000033BC(&qword_100010130, &qword_100007DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010128);
  }

  return result;
}

uint64_t sub_100003C14(uint64_t a1)
{
  v2 = sub_100001CCC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003C64()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

uint64_t sub_100003CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100006DAC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003D88(uint64_t a1)
{
  v2 = sub_100003A60();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100003DE4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100003E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003E98(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003EE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003F18(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003F7C()
{
  result = qword_100010158;
  if (!qword_100010158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010158);
  }

  return result;
}

char *sub_100003FD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E98(&qword_100010190, &qword_100007FA0);
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

uint64_t sub_1000040DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000041A8(v11, 0, 0, 1, a1, a2);
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
    sub_1000062E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006284(v11);
  return v7;
}

unint64_t sub_1000041A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000042B4(a5, a6);
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
    result = sub_100007340();
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

void *sub_1000042B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004300(a1, a2);
  sub_100004430(&off_10000CA20);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100004300(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000451C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100007340();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000071D0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000451C(v10, 0);
        result = sub_100007320();
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

uint64_t sub_100004430(uint64_t result)
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

  result = sub_100004590(result, v12, 1, v3);
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

void *sub_10000451C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003E98(&qword_100010188, &qword_100007F98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004590(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E98(&qword_100010188, &qword_100007F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_100004684(void *a1, void *a2)
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

    v9 = sub_1000072C0();

    if (v9)
    {

      sub_1000061E8();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_1000072B0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10000489C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100004A7C(v21 + 1);
    }

    v19 = v8;
    sub_100004CA4(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000061E8();
  v11 = sub_100007260(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100004D28(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100007270();

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

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10000489C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003E98(&qword_100010198, &qword_100007FA8);
    v2 = sub_100007300();
    v15 = v2;
    sub_1000072A0();
    if (sub_1000072D0())
    {
      sub_1000061E8();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100004A7C(v9 + 1);
        }

        v2 = v15;
        result = sub_100007260(*(v15 + 40));
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

      while (sub_1000072D0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100004A7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003E98(&qword_100010198, &qword_100007FA8);
  result = sub_1000072F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_100007260(*(v6 + 40));
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100004CA4(uint64_t a1, uint64_t a2)
{
  sub_100007260(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_100007290();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100004D28(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100004A7C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100004E88();
      goto LABEL_12;
    }

    sub_100004FD8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_100007260(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000061E8();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100007270();

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
  sub_1000073C0();
  __break(1u);
}

id sub_100004E88()
{
  v1 = v0;
  sub_100003E98(&qword_100010198, &qword_100007FA8);
  v2 = *v0;
  v3 = sub_1000072E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100004FD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003E98(&qword_100010198, &qword_100007FA8);
  result = sub_1000072F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_100007260(v17);
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_1000051EC(char *a1, int64_t a2, char a3)
{
  result = sub_10000520C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000520C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E98(&qword_1000101A8, &qword_100007FC0);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100005318()
{
  v21 = sub_100007070();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100003E98(&qword_1000101B0, &qword_100007FC8) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100003E98(&qword_100010148, &qword_100007F70);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100007100();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100003E98(&qword_1000101B8, &unk_100007FD0);
  sub_1000070E0();
  (*(v15 + 56))(v13, 1, 1, v14);
  v17 = sub_100006F40();
  v22 = 0u;
  v23 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100001CCC();
  return sub_100006F80();
}

Swift::Int sub_100005614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003E98(&qword_1000101A0, &qword_100007FB0);
    v3 = sub_100007310();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1000073D0();

      sub_1000071C0();
      result = sub_1000073E0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1000073A0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_10000577C()
{
  result = SBSCopyDisplayIdentifiers();
  if (result)
  {
    v1 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100007210();
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005810(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000061E8();
    sub_100006234(&qword_100010180, sub_1000061E8);
    result = sub_100007220();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100007330();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100004684(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_100007390();
  }

  v6 = result;
  v5 = sub_100007390();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100005970()
{
  v1 = sub_100007110();
  v0[24] = v1;
  v2 = *(v1 - 8);
  v0[25] = v2;
  v3 = *(v2 + 64) + 15;
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_100005A2C, 0, 0);
}

void sub_100005A2C()
{
  v66 = v0;
  v1 = v0[26];
  v2 = v0[24];
  v3 = sub_10000577C();
  v4 = [objc_opt_self() enumeratorWithOptions:192];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v0[6] = sub_1000061C8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100002D10;
  v0[5] = &unk_10000CE90;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v4 setFilter:v6];
  _Block_release(v6);
  v8 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  v59 = v4;
  sub_100007240();
  sub_100006234(&qword_100010170, &type metadata accessor for NSFastEnumerationIterator);
  sub_100007280();
  while (v0[16])
  {
    sub_1000062D0(v0 + 13, v0 + 17);
    sub_1000061E8();
    if ((swift_dynamicCast() & 1) != 0 && v0[23])
    {
      sub_1000071E0();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000071F0();
      }

      v11 = v0[26];
      v12 = v0[24];
      sub_100007200();
      v8 = v65;
    }

    else
    {
      v9 = v0[26];
      v10 = v0[24];
    }

    sub_100007280();
  }

  (*(v0[25] + 8))(v0[26], v0[24]);
  v14 = sub_100005810(v8);

  if ((v14 & 0xC000000000000001) != 0)
  {
    sub_1000072A0();
    sub_1000061E8();
    sub_100006234(&qword_100010180, sub_1000061E8);
    sub_100007230();
    v14 = v0[8];
    v15 = v0[9];
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[12];
  }

  else
  {
    v17 = 0;
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);
  }

  v58 = v16;
  v22 = _swiftEmptyArrayStorage;
  v23 = (v16 + 64) >> 6;
  v62 = v14;
  v63 = v15;
  v61 = v23;
  if (v14 < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v24 = v17;
  v25 = v18;
  v26 = v17;
  if (!v18)
  {
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_40;
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_21:
  v64 = (v25 - 1) & v25;
  v27 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
  if (v27)
  {
    while (1)
    {
      if (qword_100010058 != -1)
      {
        swift_once();
      }

      v29 = sub_100007150();
      sub_100003EE0(v29, qword_100010E10);
      v30 = v27;
      v31 = sub_100007130();
      v32 = sub_100007250();
      if (os_log_type_enabled(v31, v32))
      {
        v60 = v22;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v65 = v34;
        *v33 = 141558275;
        *(v33 + 4) = 1752392040;
        *(v33 + 12) = 2081;
        v35 = [v30 bundleIdentifier];

        if (!v35)
        {
          __break(1u);
          return;
        }

        v36 = sub_1000071B0();
        v38 = v37;

        v39 = sub_1000040DC(v36, v38, &v65);

        *(v33 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "Creating Entity for '%{private,mask.hash}s'.", v33, 0x16u);
        sub_100006284(v34);

        v22 = v60;
      }

      else
      {
      }

      v40 = v30;
      v41 = [v40 bundleIdentifier];
      if (v41)
      {
        v42 = v41;
        v43 = sub_1000071B0();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0xE000000000000000;
      }

      v46 = [v40 localizedName];

      v47 = sub_1000071B0();
      v49 = v48;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100003FD0(0, *(v22 + 2) + 1, 1, v22);
      }

      v51 = *(v22 + 2);
      v50 = *(v22 + 3);
      if (v51 >= v50 >> 1)
      {
        v22 = sub_100003FD0((v50 > 1), v51 + 1, 1, v22);
      }

      *(v22 + 2) = v51 + 1;
      v52 = &v22[32 * v51];
      *(v52 + 4) = v43;
      *(v52 + 5) = v45;
      *(v52 + 6) = v47;
      *(v52 + 7) = v49;
      v17 = v26;
      v15 = v63;
      v18 = v64;
      v23 = v61;
      v14 = v62;
      if ((v62 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      v28 = sub_1000072D0();
      if (v28)
      {
        v0[22] = v28;
        sub_1000061E8();
        swift_dynamicCast();
        v27 = v0[21];
        v26 = v17;
        v64 = v18;
        if (v27)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_40:
  sub_10000627C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_47:
    v22 = sub_100003FD0(0, *(v22 + 2) + 1, 1, v22);
  }

  v54 = *(v22 + 2);
  v53 = *(v22 + 3);
  if (v54 >= v53 >> 1)
  {
    v22 = sub_100003FD0((v53 > 1), v54 + 1, 1, v22);
  }

  v55 = v0[26];

  *(v22 + 2) = v54 + 1;
  v56 = &v22[32 * v54];
  *(v56 + 4) = 1953460082;
  *(v56 + 5) = 0xE400000000000000;
  *(v56 + 6) = 0;
  *(v56 + 7) = 0xE000000000000000;

  v57 = v0[1];

  v57(v22);
}

uint64_t sub_100006190()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000061D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000061E8()
{
  result = qword_100010178;
  if (!qword_100010178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010178);
  }

  return result;
}

uint64_t sub_100006234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006284(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_1000062D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000062E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006340(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_1000063D0, 0, 0);
}

uint64_t sub_1000063D0()
{
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v89 = (v2 + 32);
    do
    {
      if (v4 >= v3)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        while (2)
        {
          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_80:
            v35 = sub_100007390();
            v36 = v89;
            if (!v35)
            {
              goto LABEL_81;
            }

LABEL_38:
            v37 = 0;
            v86 = v36 + 7;
LABEL_41:
            if ((v1 & 0xC000000000000001) != 0)
            {
              v38 = sub_100007330();
            }

            else
            {
              if (v37 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                continue;
              }

              v38 = *(v1 + 32 + 8 * v37);
            }

            break;
          }

          v39 = v38;
          if (__OFADD__(v37++, 1))
          {
            continue;
          }

          break;
        }

        v41 = [v38 bundleIdentifier];
        if (!v41)
        {

          goto LABEL_40;
        }

        v42 = v41;
        v43 = sub_1000071B0();
        v45 = v44;

        v46 = [v39 appClipMetadata];
        if (v46)
        {
          v47 = v46;

          goto LABEL_48;
        }

        if ([v39 developerType] == 1)
        {
          if (v36[2])
          {
            v48 = v36[5];
            sub_1000073D0();
            sub_1000071C0();
            v49 = sub_1000073E0();
            v50 = -1 << *(v36 + 32);
            v51 = v49 & ~v50;
            if ((*(v86 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
            {
              v52 = ~v50;
              do
              {
                v53 = (v89[6] + 16 * v51);
                v54 = *v53 == v43 && v53[1] == v45;
                if (v54 || (sub_1000073A0() & 1) != 0)
                {
                  goto LABEL_61;
                }

                v51 = (v51 + 1) & v52;
              }

              while (((*(v86 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0);
            }

LABEL_71:

            v36 = v89;
            goto LABEL_40;
          }
        }

        else
        {
          if ([v39 isWebAppPlaceholder])
          {
            goto LABEL_61;
          }

          v36 = v89;
          if (v89[2])
          {
            v56 = v89[5];
            sub_1000073D0();
            sub_1000071C0();
            v57 = sub_1000073E0();
            v58 = -1 << *(v89 + 32);
            v59 = v57 & ~v58;
            if (((*(v86 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
            {
              goto LABEL_71;
            }

            v60 = ~v58;
            while (1)
            {
              v61 = (v89[6] + 16 * v59);
              v62 = *v61 == v43 && v61[1] == v45;
              if (v62 || (sub_1000073A0() & 1) != 0)
              {
                break;
              }

              v59 = (v59 + 1) & v60;
              if (((*(v86 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
              {
                goto LABEL_71;
              }
            }

LABEL_61:

            sub_100007350();
            v55 = v91[2];
            sub_100007370();
            sub_100007380();
            sub_100007360();
            v36 = v89;
LABEL_40:
            if (v37 == v35)
            {
              v63 = v91;
              goto LABEL_82;
            }

            goto LABEL_41;
          }
        }

LABEL_48:

        goto LABEL_40;
      }

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_76;
      }

      v6 = &v89[2 * v4];
      v7 = *v6;
      v1 = v6[1];
      ++v4;
      swift_bridgeObjectRetain_n();
      if (sub_100006E5C() == 33)
      {
        if (qword_100010048 != -1)
        {
          swift_once();
        }

        v8 = off_100010080;
        if (!*(off_100010080 + 2) || (v9 = *(off_100010080 + 5), sub_1000073D0(), sub_1000071C0(), v10 = sub_1000073E0(), v11 = -1 << v8[32], v12 = v10 & ~v11, ((*&v8[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) == 0))
        {
LABEL_19:
          v91 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000051EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_1000051EC((v16 > 1), v17 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v17 + 1;
          v18 = &_swiftEmptyArrayStorage[2 * v17];
          *(v18 + 4) = v7;
          *(v18 + 5) = v1;
          continue;
        }

        v13 = ~v11;
        while (1)
        {
          v14 = (*(v8 + 6) + 16 * v12);
          v15 = *v14 == v7 && v14[1] == v1;
          if (v15 || (sub_1000073A0() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*&v8[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }
    }

    while (v5 != v3);
  }

  v19 = _swiftEmptyArrayStorage[2];
  if (!v19)
  {

    v30 = _swiftEmptyArrayStorage;
    v31 = v88;
    goto LABEL_106;
  }

  v89 = sub_10000577C();
  v20 = 0;
  v1 = _swiftEmptyArrayStorage;
  v21 = &_swiftEmptyArrayStorage[5];
  do
  {
    if (v20 >= _swiftEmptyArrayStorage[2])
    {
      goto LABEL_77;
    }

    v23 = *(v21 - 1);
    v22 = *v21;
    v24 = objc_allocWithZone(LSApplicationRecord);

    v25 = sub_1000071A0();

    *(v88 + 16) = 0;
    v26 = [v24 initWithBundleIdentifier:v25 allowPlaceholder:0 error:v88 + 16];

    v27 = *(v88 + 16);
    if (!v26)
    {
      v32 = v27;

      sub_1000070D0();

      swift_willThrow();

      v33 = *(v88 + 8);

      return v33();
    }

    v28 = v27;
    sub_1000071E0();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000071F0();
    }

    ++v20;
    sub_100007200();
    v1 = _swiftEmptyArrayStorage;
    v21 += 2;
  }

  while (v19 != v20);

  v91 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_80;
  }

  v35 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v89;
  if (v35)
  {
    goto LABEL_38;
  }

LABEL_81:
  v63 = _swiftEmptyArrayStorage;
LABEL_82:

  v31 = v88;
  v64 = v63;
  if ((v63 & 0x8000000000000000) != 0 || (v63 & 0x4000000000000000) != 0)
  {
    v81 = sub_100007390();
    v64 = v63;
    v65 = v81;
    if (!v81)
    {
      goto LABEL_100;
    }

LABEL_85:
    if (v65 < 1)
    {
      __break(1u);
    }

    v66 = 0;
    v87 = v64 & 0xC000000000000001;
    v30 = _swiftEmptyArrayStorage;
    v90 = v64;
    do
    {
      if (v87)
      {
        v67 = sub_100007330();
      }

      else
      {
        v67 = *(v64 + 8 * v66 + 32);
      }

      v68 = v67;
      v69 = [v68 bundleIdentifier];
      if (v69)
      {
        v70 = v69;
        v71 = sub_1000071B0();
        v73 = v72;
      }

      else
      {
        v71 = 0;
        v73 = 0xE000000000000000;
      }

      v74 = [v68 localizedName];

      v75 = sub_1000071B0();
      v77 = v76;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100003FD0(0, *(v30 + 2) + 1, 1, v30);
      }

      v79 = *(v30 + 2);
      v78 = *(v30 + 3);
      if (v79 >= v78 >> 1)
      {
        v30 = sub_100003FD0((v78 > 1), v79 + 1, 1, v30);
      }

      ++v66;

      *(v30 + 2) = v79 + 1;
      v80 = &v30[32 * v79];
      *(v80 + 4) = v71;
      *(v80 + 5) = v73;
      *(v80 + 6) = v75;
      *(v80 + 7) = v77;
      v31 = v88;
      v64 = v90;
    }

    while (v65 != v66);
  }

  else
  {
    v65 = *(v63 + 16);
    if (v65)
    {
      goto LABEL_85;
    }

LABEL_100:
    v30 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_100003FD0(0, *(v30 + 2) + 1, 1, v30);
  }

  v83 = *(v30 + 2);
  v82 = *(v30 + 3);
  if (v83 >= v82 >> 1)
  {
    v30 = sub_100003FD0((v82 > 1), v83 + 1, 1, v30);
  }

  *(v30 + 2) = v83 + 1;
  v84 = &v30[32 * v83];
  *(v84 + 4) = 1953460082;
  *(v84 + 5) = 0xE400000000000000;
  *(v84 + 6) = 0;
  *(v84 + 7) = 0xE000000000000000;
LABEL_106:
  v85 = *(v31 + 8);

  return v85(v30);
}

unint64_t sub_100006D04()
{
  result = qword_1000101C0;
  if (!qword_1000101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C0);
  }

  return result;
}

unint64_t sub_100006D58()
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C8);
  }

  return result;
}

uint64_t sub_100006DD4()
{
  v0 = sub_100007150();
  sub_100003F18(v0, qword_100010E10);
  sub_100003EE0(v0, qword_100010E10);

  return sub_100007140();
}

uint64_t sub_100006E5C()
{
  v0 = sub_1000073B0();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}