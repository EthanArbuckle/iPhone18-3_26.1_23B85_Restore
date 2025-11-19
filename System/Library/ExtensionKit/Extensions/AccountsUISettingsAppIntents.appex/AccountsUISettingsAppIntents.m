unint64_t sub_100001444()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_10000149C()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_1000014F0()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

void sub_100001544(uint64_t a1@<X8>)
{
  v2 = (*(*(sub_100004C08(&qword_100010188, &qword_100008698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v38 - v3;
  v5 = (*(*(sub_100004C08(&qword_100010160, &qword_100008688) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v45 = &v38 - v6;
  v42 = sub_100007A18();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v38 - v11;
  v12 = sub_100007AB8();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v16 = [objc_opt_self() defaultStore];
  if (v16)
  {
    v17 = v16;
    v18 = 0x6E776F6E6B6E55;
    v19 = sub_100007AC8();
    v20 = [v17 accountWithIdentifier:v19];

    v40 = v4;
    v41 = a1;
    v39 = v20;
    if (!v20)
    {
      sub_100004EEC(0, &qword_100010190, ACAccountType_ptr);
      v25 = 0xE700000000000000;
LABEL_10:
      v38 = sub_100007B28();
      v30 = v29;

      sub_100007AA8();
      v46._object = 0x8000000100008E20;
      v46._countAndFlagsBits = 0xD000000000000013;
      sub_100007A98(v46);
      v47._countAndFlagsBits = v18;
      v47._object = v25;
      sub_100007A88(v47);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      sub_100007A98(v48);
      sub_100007A08();
      sub_100007AA8();
      v49._object = 0x8000000100008E40;
      v49._countAndFlagsBits = 0x100000000000002CLL;
      sub_100007A98(v49);
      v50._countAndFlagsBits = v18;
      v50._object = v25;
      sub_100007A88(v50);
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      sub_100007A98(v51);
      v31 = v45;
      sub_100007A08();
      v33 = *(v7 + 56);
      v32 = v7 + 56;
      v33(v31, 0, 1, v42);
      v34 = v40;
      sub_100007888();
      v35 = sub_100007898();
      (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
      sub_100004C08(&qword_100010198, &qword_1000086A0);
      v36 = *(v32 + 16);
      v37 = (*(v32 + 24) + 32) & ~*(v32 + 24);
      *(swift_allocObject() + 16) = xmmword_100007F00;
      sub_100007AA8();
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      sub_100007A98(v52);
      v53._countAndFlagsBits = v18;
      v53._object = v25;
      sub_100007A88(v53);
      v54._countAndFlagsBits = 0x676E697474657320;
      v54._object = 0xE900000000000073;
      sub_100007A98(v54);
      sub_100007A08();
      sub_100007AA8();
      v55._countAndFlagsBits = 0xD00000000000001BLL;
      v55._object = 0x8000000100008EA0;
      sub_100007A98(v55);
      v56._countAndFlagsBits = v38;
      v56._object = v30;
      sub_100007A88(v56);

      v57._countAndFlagsBits = 0x746E756F63636120;
      v57._object = 0xEA0000000000203ALL;
      sub_100007A98(v57);
      v58._countAndFlagsBits = v18;
      v58._object = v25;
      sub_100007A88(v58);

      v59._countAndFlagsBits = 46;
      v59._object = 0xE100000000000000;
      sub_100007A98(v59);
      sub_100007A08();
      sub_1000078A8();

      return;
    }

    v21 = [v20 accountDescription];
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v18 = sub_100007AE8();
      v25 = v24;

      v20 = v22;
    }

    else
    {
      v25 = 0xE700000000000000;
    }

    v26 = [v20 accountType];
    if (v26)
    {
      v27 = v26;
      sub_100004EEC(0, &qword_100010190, ACAccountType_ptr);
      v28 = [v27 identifier];

      if (v28)
      {
        sub_100007AE8();
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100001B60()
{
  v0 = (*(*(sub_100004C08(&qword_100010160, &qword_100008688) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_100007A18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_1000079C8();
  sub_100004D84(v6, qword_1000102E8);
  sub_100004D4C(v6, qword_1000102E8);
  sub_1000079F8();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000079B8();
}

uint64_t sub_100001CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100004EA8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004C08(&qword_1000101C0, &qword_1000086D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_100004EEC(0, &qword_1000101B8, ACAccount_ptr);
      v9 = sub_100007B18();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100001DD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100004F5C;

  return sub_100004350();
}

uint64_t sub_100001E70(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001F14;

  return sub_100003F0C();
}

uint64_t sub_100001F14(uint64_t a1)
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

uint64_t sub_100002024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000020E4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000020E4(uint64_t a1)
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

unint64_t sub_1000021E8()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

unint64_t sub_10000223C()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_100002294()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    sub_100002318(&qword_1000100B8, qword_100007F98);
    sub_10000223C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

uint64_t sub_100002318(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002360(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100002A30();
  *v6 = v2;
  v6[1] = sub_100002414;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002414()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002508(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000025AC;

  return sub_10000454C();
}

uint64_t sub_1000025AC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  v6[1] = a2;
  v7 = *(v9 + 8);

  return v7();
}

unint64_t sub_1000026D4()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

uint64_t sub_100002728()
{
  v0 = sub_100004C08(&qword_1000101A0, &qword_1000086A8);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_100004C08(&qword_1000101A8, &qword_1000086B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_1000014F0();
  sub_100007968();
  v8._object = 0x8000000100008EE0;
  v8._countAndFlagsBits = 0xD00000000000003ALL;
  sub_100007958(v8);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100007948();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100007958(v9);
  return sub_100007978();
}

uint64_t sub_1000028EC()
{
  v0 = qword_100010038;

  return v0;
}

unint64_t sub_100002928()
{
  result = qword_1000100C8;
  if (!qword_1000100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C8);
  }

  return result;
}

unint64_t sub_100002980()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_1000029D8()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_100002A30()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

unint64_t sub_100002A88()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

uint64_t sub_100002ADC()
{
  sub_100004CF8();
  v1 = sub_1000078F8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002B4C()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

unint64_t sub_100002BA4()
{
  result = qword_1000100F8;
  if (!qword_1000100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F8);
  }

  return result;
}

unint64_t sub_100002C00()
{
  result = qword_100010100;
  if (!qword_100010100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010100);
  }

  return result;
}

unint64_t sub_100002C58()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

uint64_t sub_100002CAC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_100002CF8()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    sub_100002318(&qword_100010118, &qword_100008238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

uint64_t sub_100002D5C(uint64_t a1)
{
  v2 = sub_1000014F0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002DAC()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

void sub_100002E00(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  sub_100001544(a1);
}

uint64_t sub_100002E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002414;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002ECC(uint64_t a1)
{
  v2 = sub_100002C00();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100002F18()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_100002F48@<X0>(void *a1@<X8>)
{
  result = sub_100004818();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100002F74()
{
  result = qword_100010128;
  if (!qword_100010128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010128);
  }

  return result;
}

Swift::Int sub_100002FC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100007B98();
  sub_100007AF8();
  return sub_100007BA8();
}

uint64_t sub_100003014()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_100007AF8();
}

Swift::Int sub_10000301C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100007B98();
  sub_100007AF8();
  return sub_100007BA8();
}

uint64_t sub_100003064(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100007B88();
  }
}

unint64_t sub_100003098()
{
  result = qword_100010130;
  if (!qword_100010130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010130);
  }

  return result;
}

uint64_t sub_1000030EC()
{
  v0 = sub_100007A18();
  sub_100004D84(v0, qword_100010300);
  sub_100004D4C(v0, qword_100010300);
  return sub_1000079F8();
}

uint64_t sub_100003150@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_100007838();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_10000318C(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  return sub_100007848();
}

void (*sub_1000031C4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100007828();
  return sub_100003238;
}

void sub_100003238(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003284()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

uint64_t sub_1000032D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C50();
  v5 = sub_100004CF8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100003348()
{
  v0 = qword_100010058;

  return v0;
}

unint64_t sub_100003388()
{
  result = qword_100010140;
  if (!qword_100010140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010140);
  }

  return result;
}

unint64_t sub_1000033E0()
{
  result = qword_100010148;
  if (!qword_100010148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010148);
  }

  return result;
}

unint64_t sub_100003438()
{
  result = qword_100010150;
  if (!qword_100010150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010150);
  }

  return result;
}

uint64_t sub_100003514@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100004D4C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000035DC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004C50();
  v7 = sub_100004CA4();
  v8 = sub_100004CF8();
  *v5 = v2;
  v5[1] = sub_1000036A8;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000036A8()
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

uint64_t sub_1000037B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000048EC();
  *a1 = result;
  return result;
}

uint64_t sub_1000037D8(uint64_t a1)
{
  v2 = sub_100003284();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100003824(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003844(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003890(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_1000038EC(char *a1, int64_t a2, char a3)
{
  result = sub_10000390C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000390C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004C08(&qword_1000101C8, &qword_1000086E0);
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

uint64_t sub_100003A18()
{
  v1 = sub_100007A28();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100003AD4, 0, 0);
}

uint64_t sub_100003AD4()
{
  v1 = [objc_opt_self() defaultStore];
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    sub_100004EEC(0, &qword_100010190, ACAccountType_ptr);
    sub_100007B38();
    isa = sub_100007B08().super.isa;
    v0[23] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100003C64;
    v4 = swift_continuation_init();
    v0[17] = sub_100004C08(&qword_1000101B0, &qword_1000086C8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100001CD0;
    v0[13] = &unk_10000CC20;
    v0[14] = v4;
    [v2 accountsWithAccountTypeIdentifiers:isa completion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100003C64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_100003E74;
  }

  else
  {
    v3 = sub_100003D74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003D74()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  if (v2)
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    sub_100007A68();
    (*(v4 + 104))(v3, enum case for AccountsUIModel.FilterType.none(_:), v5);
    v6 = sub_100007A48();

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_100003E74()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[21];

  v5 = v0[1];

  return v5(&_swiftEmptyArrayStorage);
}

uint64_t sub_100003F0C()
{
  v1 = sub_100007A28();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100004008;

  return sub_100003A18();
}

uint64_t sub_100004008(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100004108, 0, 0);
}

char *sub_100004108()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_100007A68();
  (*(v3 + 104))(v2, enum case for AccountsUIModel.FilterType.none(_:), v4);
  v5 = sub_100007A48();

  (*(v3 + 8))(v2, v4);
  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      result = sub_1000038EC(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        break;
      }

      v8 = 0;
      v20 = v0;
      while (1)
      {
        v0 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_100007B48();
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        result = [v9 identifier];
        if (!result)
        {
          goto LABEL_23;
        }

        v11 = result;
        v12 = sub_100007AE8();
        v14 = v13;

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_1000038EC((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        ++v8;
        if (v0 == v6)
        {

          v0 = v20;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v6 = sub_100007B58();
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_18:

LABEL_19:
    v18 = v0[4];

    v19 = v0[1];

    return v19(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_100004350()
{
  v1 = sub_100007A28();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10000444C;

  return sub_100003A18();
}

uint64_t sub_10000444C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100004F3C, 0, 0);
}

uint64_t sub_10000454C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045EC;

  return sub_100003A18();
}

uint64_t sub_1000045EC(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_1000046EC, 0, 0);
}

uint64_t sub_1000046EC()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = *(v0 + 24);
    }

    result = sub_100007B58();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    v6 = *(v0 + 24);

    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v8 = *(v0 + 24);
    v3 = sub_100007B48();
    v9 = *(v0 + 24);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 24) + 32);
  }

  v4 = [v3 identifier];

  if (v4)
  {
    sub_100007AD8();
  }

LABEL_12:
  v7 = *(v0 + 8);

  return v7(0);
}

id sub_100004818()
{
  sub_100007A68();
  v0 = sub_100007A58();
  v1 = sub_100007A38();

  v2 = sub_100007AC8();
  v3 = [v1 monitoredAccountWithIdentifier:v2];

  if (!v3)
  {
    return 0;
  }

  result = [v3 identifier];
  if (result)
  {
    v5 = result;
    v6 = sub_100007AE8();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000048EC()
{
  v22 = sub_100007988();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004C08(&qword_100010158, &qword_100008680);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100004C08(&qword_100010160, &qword_100008688);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100007A18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100004C08(&qword_100010168, &qword_100008690);
  sub_1000079F8();
  sub_1000079F8();
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = sub_100007818();
  v23 = 0;
  v24 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v22);
  sub_1000014F0();
  return sub_100007868();
}

uint64_t sub_100004C08(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004C50()
{
  result = qword_100010170;
  if (!qword_100010170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010170);
  }

  return result;
}

unint64_t sub_100004CA4()
{
  result = qword_100010178;
  if (!qword_100010178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010178);
  }

  return result;
}

unint64_t sub_100004CF8()
{
  result = qword_100010180;
  if (!qword_100010180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010180);
  }

  return result;
}

uint64_t sub_100004D4C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004D84(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100004DF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004E5C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100004EA8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004EEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004F60()
{
  v0 = sub_100004C08(&qword_100010160, &qword_100008688);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100007A18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000079C8();
  sub_100004D84(v7, qword_100010318);
  sub_100004D4C(v7, qword_100010318);
  sub_1000079F8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000079B8();
}

uint64_t sub_1000050D0()
{
  v0 = sub_100004C08(&qword_100010188, &qword_100008698);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v27 - v2;
  v4 = sub_100004C08(&qword_100010160, &qword_100008688);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v27 - v6;
  v8 = sub_100007A18();
  v34 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v42 = v27 - v12;
  sub_100004C08(&qword_100010298, &qword_100008C90);
  v13 = sub_100004C08(&qword_1000102A0, &unk_100008C98);
  v44 = v13;
  v14 = *(v13 - 8);
  v37 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v39 = v16;
  *(v16 + 16) = xmmword_100008700;
  v43 = v16 + v15;
  v32 = *(v13 + 48);
  *(v16 + v15) = 0;
  sub_1000079F8();
  v41 = v7;
  sub_1000079F8();
  v17 = *(v9 + 56);
  v9 += 56;
  v33 = v17;
  v17(v7, 0, 1, v8);
  v31 = "s → Contacts Accounts → ";
  v40 = v3;
  sub_100007888();
  v29 = sub_100007898();
  v18 = *(v29 - 8);
  v28 = *(v18 + 56);
  v30 = v18 + 56;
  v28(v3, 0, 1, v29);
  v27[3] = sub_100004C08(&qword_100010198, &qword_1000086A0);
  v19 = *(v9 + 16);
  v20 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  v27[0] = v9;
  v27[1] = 4 * v19;
  v35 = 5 * v19;
  *(swift_allocObject() + 16) = xmmword_100008710;
  v38 = 0xD000000000000012;
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  v27[2] = 3 * v19;
  v36 = 0xD000000000000013;
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  v21 = v43;
  v22 = v40;
  v23 = v41;
  sub_1000078A8();
  v24 = (v21 + v37);
  v37 = *(v44 + 48);
  *v24 = 1;
  sub_1000079F8();
  sub_1000079F8();
  v33(v23, 0, 1, v34);
  sub_100007888();
  v28(v22, 0, 1, v29);
  *(swift_allocObject() + 16) = xmmword_100008720;
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000079F8();
  sub_1000078A8();
  v25 = sub_100006D2C(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100010330 = v25;
  return result;
}

uint64_t sub_1000058A4()
{
  v0 = sub_100004C08(&qword_1000102B0, &qword_100008CB0);
  sub_100004D84(v0, qword_100010338);
  sub_100004D4C(v0, qword_100010338);
  sub_100004C08(&qword_1000102B8, &qword_100008CB8);
  v1 = sub_100004C08(&qword_1000102C0, &qword_100008CC0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100008700;
  v5 = (v4 + v3);
  v6 = *(v1 + 48);
  *v5 = 0;
  sub_100005D84();
  sub_1000078C8();
  v7 = *(v1 + 48);
  v5[v2] = 1;
  sub_1000078C8();
  sub_100006F14(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1000078D8();
}

uint64_t sub_100005A80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x756F636341646461;
  }

  else
  {
    v4 = 1953460082;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v6 = 0x756F636341646461;
  }

  else
  {
    v6 = 1953460082;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000746ELL;
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
    v9 = sub_100007B88();
  }

  return v9 & 1;
}

unint64_t sub_100005B28()
{
  result = qword_1000101E0;
  if (!qword_1000101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E0);
  }

  return result;
}

Swift::Int sub_100005B7C()
{
  v1 = *v0;
  sub_100007B98();
  sub_100007AF8();

  return sub_100007BA8();
}

uint64_t sub_100005BFC()
{
  *v0;
  sub_100007AF8();
}

Swift::Int sub_100005C68()
{
  v1 = *v0;
  sub_100007B98();
  sub_100007AF8();

  return sub_100007BA8();
}

uint64_t sub_100005CE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10000CA38;
  v8._object = v3;
  v5 = sub_100007B78(v4, v8);

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

void sub_100005D44(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (*v1)
  {
    v2 = 0x756F636341646461;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100005D84()
{
  result = qword_1000101E8;
  if (!qword_1000101E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E8);
  }

  return result;
}

unint64_t sub_100005DDC()
{
  result = qword_1000101F0;
  if (!qword_1000101F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101F0);
  }

  return result;
}

uint64_t sub_100005E30@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010078 != -1)
  {
    swift_once();
  }

  v2 = sub_100004C08(&qword_1000102B0, &qword_100008CB0);
  v3 = sub_100004D4C(v2, qword_100010338);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100005EE4()
{
  result = qword_1000101F8;
  if (!qword_1000101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101F8);
  }

  return result;
}

unint64_t sub_100005F3C()
{
  result = qword_100010200;
  if (!qword_100010200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010200);
  }

  return result;
}

unint64_t sub_100005F94()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

uint64_t sub_100005FF4()
{
  sub_1000074D8();
  v1 = sub_100007878();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100006064()
{
  result = qword_100010210;
  if (!qword_100010210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010210);
  }

  return result;
}

unint64_t sub_1000060BC()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

unint64_t sub_100006114()
{
  result = qword_100010220;
  if (!qword_100010220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010220);
  }

  return result;
}

unint64_t sub_10000616C()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

uint64_t sub_100006224(uint64_t a1)
{
  v2 = sub_100005D84();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100006274()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

unint64_t sub_1000062CC()
{
  result = qword_100010238;
  if (!qword_100010238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010238);
  }

  return result;
}

unint64_t sub_100006324()
{
  result = qword_100010240;
  if (!qword_100010240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010240);
  }

  return result;
}

uint64_t sub_100006378()
{
  if (qword_100010070 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000063D4(uint64_t a1)
{
  v2 = sub_10000616C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006424()
{
  result = qword_100010248;
  if (!qword_100010248)
  {
    sub_100002318(&qword_100010250, &qword_1000089F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010248);
  }

  return result;
}

unint64_t sub_10000649C()
{
  result = qword_100010258;
  if (!qword_100010258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010258);
  }

  return result;
}

uint64_t sub_1000064F4()
{
  v0 = sub_100007A18();
  sub_100004D84(v0, qword_100010350);
  sub_100004D4C(v0, qword_100010350);
  return sub_1000079F8();
}

uint64_t sub_100006558@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100007838();
  *a1 = v5;
  return result;
}

uint64_t sub_100006594(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100007848();
}

void (*sub_1000065CC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100007828();
  return sub_100003238;
}

unint64_t sub_100006640()
{
  result = qword_100010260;
  if (!qword_100010260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010260);
  }

  return result;
}

uint64_t sub_100006694(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007430();
  v5 = sub_1000074D8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100006700()
{
  v0 = qword_1000101D0;

  return v0;
}

unint64_t sub_10000673C()
{
  result = qword_100010268;
  if (!qword_100010268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010268);
  }

  return result;
}

unint64_t sub_100006794()
{
  result = qword_100010270;
  if (!qword_100010270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010270);
  }

  return result;
}

uint64_t sub_100006894(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007430();
  v7 = sub_100007484();
  v8 = sub_1000074D8();
  *v5 = v2;
  v5[1] = sub_1000036A8;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100006960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007108();
  *a1 = result;
  return result;
}

uint64_t sub_100006988(uint64_t a1)
{
  v2 = sub_100006640();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for InternetAccountsDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InternetAccountsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006B48(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100007B98();
  sub_100007AF8();

  v5 = sub_100007BA8();

  return sub_100006BEC(a1 & 1, v5);
}

unint64_t sub_100006BEC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x756F636341646461;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xEA0000000000746ELL;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x756F636341646461 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xEA0000000000746ELL : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100007B88();

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

unint64_t sub_100006D2C(uint64_t a1)
{
  v2 = sub_100004C08(&qword_1000102A0, &unk_100008C98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C08(&qword_1000102A8, &qword_100008CA8);
    v8 = sub_100007B68();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000752C(v10, v6, &qword_1000102A0, &unk_100008C98);
      v12 = *v6;
      result = sub_100006B48(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000078B8();
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

unint64_t sub_100006F14(uint64_t a1)
{
  v2 = sub_100004C08(&qword_1000102C0, &qword_100008CC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004C08(&qword_1000102C8, &qword_100008CC8);
    v8 = sub_100007B68();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000752C(v10, v6, &qword_1000102C0, &qword_100008CC0);
      v12 = *v6;
      result = sub_100006B48(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100004C08(&qword_1000102D0, &unk_100008CD0);
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

uint64_t sub_100007108()
{
  v21 = sub_100007988();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004C08(&qword_100010158, &qword_100008680);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100004C08(&qword_100010160, &qword_100008688);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100007A18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100004C08(&qword_100010278, &unk_100008C80);
  sub_1000079F8();
  sub_1000079F8();
  (*(v16 + 56))(v14, 0, 1, v15);
  v22 = 2;
  v18 = sub_100007818();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100005D84();
  return sub_100007858();
}

unint64_t sub_100007430()
{
  result = qword_100010280;
  if (!qword_100010280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010280);
  }

  return result;
}

unint64_t sub_100007484()
{
  result = qword_100010288;
  if (!qword_100010288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010288);
  }

  return result;
}

unint64_t sub_1000074D8()
{
  result = qword_100010290;
  if (!qword_100010290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010290);
  }

  return result;
}

uint64_t sub_10000752C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004C08(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000075A4(uint64_t a1)
{
  v2 = sub_1000076F4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000764C();
  sub_100007A78();
  return 0;
}

unint64_t sub_10000764C()
{
  result = qword_1000102D8;
  if (!qword_1000102D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102D8);
  }

  return result;
}

unint64_t sub_1000076F4()
{
  result = qword_1000102E0;
  if (!qword_1000102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102E0);
  }

  return result;
}