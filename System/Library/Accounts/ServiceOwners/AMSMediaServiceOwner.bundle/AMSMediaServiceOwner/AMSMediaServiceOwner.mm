uint64_t _s20AMSMediaServiceOwnerAAC17supportedServicesSaySo15AIDAServiceTypeaGvgZ_0()
{
  v0 = sub_11880();
  v19 = *(v0 - 8);
  v20 = v0;
  v1 = *(v19 + 64);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1780("supportedServices", 17, 2, 0);
  sub_A4D0(&qword_1C818, &qword_12788);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_125C0;
  v5 = AIDAServiceTypeStore;
  *(v4 + 32) = AIDAServiceTypeStore;
  v6 = v5;
  sub_11840();
  sub_A4D0(&qword_1C6A8, &qword_126D8);
  v7 = *(sub_117E0() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_125D0;
  sub_A4D0(&qword_1C6B0, &qword_126E0);
  v10 = AMSSetLogKeyIfNeeded();
  sub_118F0();

  sub_117C0();

  v22 = &type metadata for String;
  v21[0] = 0xD000000000000011;
  v21[1] = 0x8000000000013A10;
  sub_117A0();
  sub_1E30(v21, &qword_1C6B8, &qword_126E8);
  sub_11790();
  v21[0] = &_swiftEmptyArrayStorage;
  sub_2018(0, 1, 0);
  v11 = v21[0];
  v12 = sub_118F0();
  v14 = v13;
  v16 = *(v11 + 16);
  v15 = *(v11 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_2018((v15 > 1), v16 + 1, 1);
    v11 = v21[0];
  }

  *(v11 + 16) = v16 + 1;
  v17 = v11 + 16 * v16;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;
  v22 = sub_A4D0(&qword_1C820, &qword_12790);
  v21[0] = v11;
  sub_117A0();
  sub_1E30(v21, &qword_1C6B8, &qword_126E8);
  sub_11850();

  (*(v19 + 8))(v3, v20);
  sub_203C("supportedServices", 0x11uLL, 2);
  return v4;
}

uint64_t sub_1780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v36 = a4;
  LODWORD(v49) = a3;
  *(&v48 + 1) = a2;
  *&v48 = a1;
  v4 = sub_11880();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11840();
  v9 = sub_A4D0(&qword_1C6A8, &qword_126D8);
  v10 = *(sub_117E0() - 8);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  v13 = (v12 + 32) & ~v12;
  v43 = 3 * v11;
  v45 = v12;
  v46 = v9;
  v14 = swift_allocObject();
  v42 = xmmword_125E0;
  *(v14 + 16) = xmmword_125E0;
  v44 = v13;
  v15 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  v16 = AMSSetLogKeyIfNeeded();
  sub_118F0();

  v41 = v15;
  sub_117C0();

  *(&v57[0] + 1) = &type metadata for StaticString;
  v56 = v48;
  LOBYTE(v57[0]) = v49;
  sub_117A0();
  sub_1E30(&v56, &qword_1C6B8, &qword_126E8);
  *(&v57[0] + 1) = &type metadata for String;
  *&v56 = 0x64657472617473;
  *(&v56 + 1) = 0xE700000000000000;
  sub_117B0();
  sub_1E30(&v56, &qword_1C6B8, &qword_126E8);
  sub_11850();

  v17 = *(v5 + 8);
  v47 = v8;
  *(&v48 + 1) = v4;
  *&v48 = v5 + 8;
  v40 = v17;
  v17(v8, v4);
  result = v36;
  if (v36)
  {
    v20 = v36 + 64;
    v19 = *(v36 + 64);
    v38 = 2 * v11;
    v21 = 1 << *(v36 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    v39 = v20;
    v37 = v24;
    if (v23)
    {
      while (1)
      {
        v26 = v25;
LABEL_10:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = v27 | (v26 << 6);
        v29 = (*(v36 + 48) + 16 * v28);
        v31 = *v29;
        v30 = v29[1];
        sub_2E64(*(v36 + 56) + 32 * v28, &v51);
        *&v53 = v31;
        *(&v53 + 1) = v30;
        sub_2EC0(&v51, &v54);

LABEL_11:
        v56 = v53;
        v57[0] = v54;
        v57[1] = v55;
        v32 = *(&v53 + 1);
        if (!*(&v53 + 1))
        {
        }

        v49 = v56;
        sub_2EC0(v57, &v53);
        v33 = v47;
        sub_11840();
        *(swift_allocObject() + 16) = v42;
        v34 = AMSSetLogKeyIfNeeded();
        sub_118F0();

        sub_117C0();

        *(&v50 + 1) = v32;
        *&v51 = 58;
        *(&v51 + 1) = 0xE100000000000000;
        *&v50 = v49;
        *&v50 = sub_11940();
        *(&v50 + 1) = v35;
        sub_11920();
        v52 = &type metadata for String;
        v20 = v39;
        v51 = v50;
        sub_117A0();
        sub_1E30(&v51, &qword_1C6B8, &qword_126E8);
        sub_2E64(&v53, &v51);
        v24 = v37;
        sub_117A0();
        sub_1E30(&v51, &qword_1C6B8, &qword_126E8);
        sub_11850();

        v40(v33, *(&v48 + 1));
        result = sub_2ED0(&v53);
        if (!v23)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {
          v23 = 0;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          goto LABEL_11;
        }

        v23 = *(v20 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1D58(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1DE8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DE8()
{
  result = qword_1C8B0;
  if (!qword_1C8B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1C8B0);
  }

  return result;
}

uint64_t sub_1E30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_A4D0(a2, a3);
  sub_1039C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1E8C()
{

  return AMSErrorWithMultipleUnderlyingErrors();
}

void sub_1EB0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *sub_1F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_A4D0(qword_1C828, qword_12798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2018(char *a1, int64_t a2, char a3)
{
  result = sub_1F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_203C(uint64_t a1, unint64_t a2, int a3)
{
  v15 = a3;
  v14 = a2;
  v16 = sub_11880();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11840();
  sub_A4D0(&qword_1C6A8, &qword_126D8);
  v8 = *(sub_117E0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_125E0;
  sub_A4D0(&qword_1C6B0, &qword_126E0);
  v11 = AMSSetLogKeyIfNeeded();
  sub_118F0();

  sub_117C0();

  v20 = &type metadata for StaticString;
  v17 = a1;
  v18 = v14;
  v19 = v15;
  sub_117A0();
  sub_1E30(&v17, &qword_1C6B8, &qword_126E8);
  v20 = &type metadata for String;
  v17 = 0x64656873696E6966;
  v18 = 0xE800000000000000;
  sub_117B0();
  sub_1E30(&v17, &qword_1C6B8, &qword_126E8);
  sub_11850();

  return (*(v4 + 8))(v7, v16);
}

id AMSMediaServiceOwner.init(accountStore:)()
{
  sub_10800();
  swift_getObjectType();
  sub_10428(v0 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner);
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "init");
}

void sub_232C()
{
  v6 = *(v0 + 848);
  v7 = *(v0 + 856);
  v5 = *(v0 + 840);
  v1 = *(v0 + 912);
  v2 = *(v0 + 824);
  v8 = *(v0 + 792);
  v9 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v10 = *(v0 + 760);
}

void *sub_23C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v72 = sub_11880();
  v75 = *(v72 - 8);
  v9 = *(v75 + 64);
  v10 = (__chkstk_darwin)();
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v60 = &v60 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - v15;
  __chkstk_darwin(v14);
  v64 = &v60 - v17;
  v79 = a2;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  v74 = xmmword_125C0;
  *(inited + 16) = xmmword_125C0;
  *(inited + 32) = 0x5465636976726573;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = sub_118F0();
  *(inited + 56) = v19;
  v20 = sub_118B0();
  sub_1780("account(forService:)", 20, 2, v20);

  sub_A4D0(&qword_1C6F8, &qword_12730);
  v21 = swift_initStackObject();
  *(v21 + 16) = v74;
  v22 = AMSAccountMediaTypeProduction;
  *(v21 + 32) = AMSAccountMediaTypeProduction;
  v68 = "account(forService:)";
  v73 = v22;
  sub_11840();
  v23 = sub_A4D0(&qword_1C6A8, &qword_126D8);
  v24 = *(sub_117E0() - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *&v74 = *(v24 + 72);
  v69 = 3 * v74;
  v67 = v23;
  v26 = swift_allocObject();
  v62 = xmmword_125E0;
  *(v26 + 16) = xmmword_125E0;
  v65 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  v78 = v65;
  v27 = swift_allocObject();
  v76 = v27;
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  v70 = a3;
  *(v27 + 32) = a4;
  v66 = a5 & 1;
  *(v27 + 40) = a5;
  v61 = a2;
  v71 = a4;

  v28 = AMSLogKey();
  if (v28)
  {
    v29 = v28;
    sub_118F0();
  }

  sub_117D0();

  sub_2ED0(&v76);
  v30 = v74;
  sub_11790();
  v68 = (2 * v30);
  v31 = sub_118F0();
  v78 = &type metadata for String;
  v76 = v31;
  v77 = v32;
  sub_117B0();
  sub_1E30(&v76, &qword_1C6B8, &qword_126E8);
  sub_11850();

  v33 = *(v75 + 8);
  v34 = v72;
  v75 += 8;
  v35 = v33;
  v33(v16, v72);
  sub_2F50(0, &qword_1C690, ACAccountStore_ptr);
  sub_2F90(&qword_1C728, &qword_1C690, ACAccountStore_ptr);
  sub_11820();
  v42 = v76;
  if (v76)
  {
    swift_setDeallocating();
    sub_2FD4();
    v43 = v42;
    sub_11840();
    *(swift_allocObject() + 16) = xmmword_125D0;
    v78 = v65;
    v44 = swift_allocObject();
    v76 = v44;
    v45 = v61;
    v46 = v70;
    *(v44 + 16) = v61;
    *(v44 + 24) = v46;
    *(v44 + 32) = v71;
    *(v44 + 40) = v66;
    v47 = v45;

    v48 = AMSLogKey();
    if (v48)
    {
      v49 = v48;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v76);
    v78 = &type metadata for String;
    v76 = 0xD000000000000014;
    v77 = 0x80000000000141B0;
    sub_117A0();
    sub_1E30(&v76, &qword_1C6B8, &qword_126E8);
    sub_11790();
    v78 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
    v76 = v43;
    sub_117A0();
    sub_1E30(&v76, &qword_1C6B8, &qword_126E8);
    v58 = v60;
    sub_11850();
  }

  else
  {
    sub_11840();
    *(swift_allocObject() + 16) = v62;
    v78 = v65;
    v36 = swift_allocObject();
    v76 = v36;
    v37 = v61;
    v38 = v70;
    *(v36 + 16) = v61;
    *(v36 + 24) = v38;
    *(v36 + 32) = v71;
    *(v36 + 40) = v66;
    v39 = v37;

    v40 = AMSLogKey();
    if (v40)
    {
      v41 = v40;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v76);
    sub_11790();
    type metadata accessor for AMSAccountMediaType(0);
    v78 = v50;
    v76 = v73;
    v51 = v73;
    sub_117A0();
    sub_1E30(&v76, &qword_1C6B8, &qword_126E8);
    v52 = v63;
    sub_11850();

    v34 = v72;
    v35(v52, v72);
    swift_setDeallocating();
    sub_2FD4();
    sub_11840();
    *(swift_allocObject() + 16) = v62;
    v78 = v65;
    v53 = swift_allocObject();
    v76 = v53;
    v54 = v70;
    *(v53 + 16) = v39;
    *(v53 + 24) = v54;
    *(v53 + 32) = v71;
    *(v53 + 40) = v66;
    v55 = v39;

    v56 = AMSLogKey();
    if (v56)
    {
      v57 = v56;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v76);
    v78 = &type metadata for String;
    v76 = 0xD000000000000014;
    v77 = 0x80000000000141B0;
    sub_117A0();
    sub_1E30(&v76, &qword_1C6B8, &qword_126E8);
    sub_11790();
    v58 = v64;
    sub_11850();
    v42 = 0;
  }

  v35(v58, v34);
  sub_203C("account(forService:)", 0x14uLL, 2);
  return v42;
}

ACAccount_optional __swiftcall AMSMediaServiceOwner.account(forService:)(__C::AIDAServiceType forService)
{
  v2 = sub_23C8(forService._rawValue, *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner), *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner + 8), *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner + 16), *(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner + 24));
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_2E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2EC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2ED0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2F30()
{

  return sub_11790();
}

uint64_t sub_2F50(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2F90(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F50(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2FD4()
{
  v1 = *(v0 + 16);
  type metadata accessor for AMSAccountMediaType(0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

NSString sub_3108@<X0>(void *a1@<X8>)
{
  result = sub_39B8();
  *a1 = result;
  return result;
}

uint64_t sub_3134(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_3804() & 1;
}

uint64_t sub_3160()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_32D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_335C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_3360(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_3394();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_339C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_33CC(uint64_t a1)
{
  v2 = sub_32D0(&qword_1C530, type metadata accessor for AIDAServiceType);
  v3 = sub_32D0(&qword_1C538, type metadata accessor for AIDAServiceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_118C0();

  *a2 = v5;
  return result;
}

uint64_t sub_35A8(uint64_t a1)
{
  v2 = sub_32D0(&qword_1C560, type metadata accessor for AMSAccountMediaType);
  v3 = sub_32D0(&qword_1C568, type metadata accessor for AMSAccountMediaType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_373C()
{
  sub_118F0();
  sub_11910();
}

Swift::Int sub_3790()
{
  sub_118F0();
  sub_11A00();
  sub_11910();
  v0 = sub_11A10();

  return v0;
}

uint64_t sub_3804()
{
  v0 = sub_118F0();
  v2 = v1;
  if (v0 == sub_118F0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_119F0();
  }

  return v5 & 1;
}

uint64_t sub_3888()
{
  sub_118F0();
  v0 = sub_11930();

  return v0;
}

uint64_t sub_38C0(uint64_t a1, id *a2)
{
  result = sub_118D0();
  *a2 = 0;
  return result;
}

uint64_t sub_3938(uint64_t a1, id *a2)
{
  v3 = sub_118E0();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_39B8()
{
  sub_118F0();
  v0 = sub_118C0();

  return v0;
}

unint64_t sub_3A14(uint64_t a1)
{
  result = sub_3A3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3A3C()
{
  result = qword_1C5D0;
  if (!qword_1C5D0)
  {
    type metadata accessor for AIDAServiceOperationUIPermissions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D0);
  }

  return result;
}

uint64_t sub_3A94(uint64_t a1)
{
  *(a1 + 8) = sub_3AFC(&qword_1C530);
  result = sub_3AFC(&qword_1C518);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_3AFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AMSMediaServiceOwner.__allocating_init(accountStore:)()
{
  v1 = objc_allocWithZone(sub_10800());
  sub_10428(v1 + OBJC_IVAR____TtC20AMSMediaServiceOwner20AMSMediaServiceOwner_serviceOwner);
  v4.receiver = v2;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, "init");
}

id sub_3B90@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(AMSAuthenticateTask);

  v7 = a2;
  result = sub_E4E4(a1, a2);
  *a3 = result;
  return result;
}

id AMSMediaServiceOwner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSMediaServiceOwner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::String_optional __swiftcall AMSMediaServiceOwner.altDSID(for:service:)(ACAccount a1, __C::AIDAServiceType service)
{
  v2 = sub_435C(a1.super.isa, service._rawValue, sub_3CB4);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_3CB4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v41 = a6;
  v42 = a5;
  v40 = a4;
  v44 = sub_11880();
  v43 = *(v44 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v44);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v48 = a1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125F0;
  *(inited + 32) = 0x746E756F636361;
  *(inited + 40) = 0xE700000000000000;
  v15 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
  *(inited + 48) = a1;
  *(inited + 72) = v15;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = sub_118F0();
  *(inited + 104) = v16;
  v17 = a1;
  v18 = sub_118B0();
  sub_1780("altDSID(for:service:)", 21, 2, v18);

  sub_2F90(&qword_1C6C8, &qword_1C6C0, ACAccount_ptr);
  result = sub_11730();
  if (v45)
  {

    v20 = sub_11750();
    v22 = v21;
    if (v21)
    {

      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      v23 = *(sub_117E0() - 8);
      v24 = *(v23 + 72);
      v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      *(swift_allocObject() + 16) = xmmword_125D0;
      v47 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v26 = swift_allocObject();
      v45 = v26;
      v27 = v40;
      *(v26 + 16) = a3;
      *(v26 + 24) = v27;
      *(v26 + 32) = v42;
      *(v26 + 40) = v41 & 1;
      v28 = a3;

      v29 = AMSLogKey();
      if (v29)
      {
        v30 = v29;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v45);
      v47 = &type metadata for String;
      v45 = 0xD000000000000015;
      v46 = 0x8000000000014140;
      sub_117A0();
      sub_1E30(&v45, &qword_1C6B8, &qword_126E8);
      sub_11790();
      v47 = &type metadata for String;
      v45 = v20;
      v46 = v22;
      sub_117A0();
      sub_1E30(&v45, &qword_1C6B8, &qword_126E8);
      sub_11850();
    }

    else
    {
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      v31 = *(sub_117E0() - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      *(swift_allocObject() + 16) = xmmword_125E0;
      v47 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v34 = swift_allocObject();
      v45 = v34;
      v35 = v40;
      *(v34 + 16) = a3;
      *(v34 + 24) = v35;
      *(v34 + 32) = v42;
      *(v34 + 40) = v41 & 1;
      v36 = a3;

      v37 = AMSLogKey();
      if (v37)
      {
        v38 = v37;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v45);
      v47 = &type metadata for String;
      v45 = 0xD000000000000015;
      v46 = 0x8000000000014140;
      sub_117A0();
      sub_1E30(&v45, &qword_1C6B8, &qword_126E8);
      sub_11790();
      sub_11850();
      v13 = v11;
    }

    (*(v43 + 8))(v13, v44);
    sub_203C("altDSID(for:service:)", 0x15uLL, 2);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall AMSMediaServiceOwner.dsid(for:service:)(ACAccount a1, __C::AIDAServiceType service)
{
  v2 = sub_435C(a1.super.isa, service._rawValue, sub_4380);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_4380(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v42 = a6;
  v43 = a5;
  v41 = a4;
  v45 = sub_11880();
  v44 = *(v45 - 8);
  v8 = *(v44 + 64);
  v9 = __chkstk_darwin(v45);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v49 = a1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125F0;
  *(inited + 32) = 0x746E756F636361;
  *(inited + 40) = 0xE700000000000000;
  v15 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
  *(inited + 48) = a1;
  *(inited + 72) = v15;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = sub_118F0();
  *(inited + 104) = v16;
  v17 = a1;
  v18 = sub_118B0();
  sub_1780("dsid(for:service:)", 18, 2, v18);

  sub_2F90(&qword_1C6C8, &qword_1C6C0, ACAccount_ptr);
  result = sub_11730();
  if (v46)
  {

    v20 = sub_11740();
    if (v21)
    {
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      v22 = *(sub_117E0() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_125E0;
      v48 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v25 = swift_allocObject();
      v46 = v25;
      v26 = v41;
      *(v25 + 16) = a3;
      *(v25 + 24) = v26;
      *(v25 + 32) = v43;
      *(v25 + 40) = v42 & 1;
      v27 = a3;

      v28 = AMSLogKey();
      if (v28)
      {
        v29 = v28;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v46);
      v48 = &type metadata for String;
      v46 = 0xD000000000000012;
      v47 = 0x8000000000014100;
      sub_117A0();
      sub_1E30(&v46, &qword_1C6B8, &qword_126E8);
      sub_11790();
      sub_11850();

      (*(v44 + 8))(v11, v45);
      v39 = 0;
    }

    else
    {
      v30 = v20;
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      v31 = *(sub_117E0() - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      *(swift_allocObject() + 16) = xmmword_125D0;
      v48 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v34 = swift_allocObject();
      v46 = v34;
      v35 = v41;
      *(v34 + 16) = a3;
      *(v34 + 24) = v35;
      *(v34 + 32) = v43;
      *(v34 + 40) = v42 & 1;
      v36 = a3;

      v37 = AMSLogKey();
      if (v37)
      {
        v38 = v37;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v46);
      v48 = &type metadata for String;
      v46 = 0xD000000000000012;
      v47 = 0x8000000000014100;
      sub_117A0();
      sub_1E30(&v46, &qword_1C6B8, &qword_126E8);
      sub_11790();
      v48 = &type metadata for Int64;
      v46 = v30;
      sub_117A0();
      sub_1E30(&v46, &qword_1C6B8, &qword_126E8);
      sub_11850();

      (*(v44 + 8))(v13, v45);
      v46 = v30;
      v39 = sub_119E0();
    }

    sub_203C("dsid(for:service:)", 0x12uLL, 2);
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_4A5C(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, id))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
  v12 = v11;

  if (v12)
  {
    sub_10C90();
    v13 = sub_118C0();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_4B24@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v52 = a5;
  v53 = a4;
  v51 = a3;
  v56 = a6;
  v55 = sub_11880();
  v54 = *(v55 - 8);
  v8 = *(v54 + 64);
  v9 = __chkstk_darwin(v55);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = sub_A4D0(&qword_1C678, &qword_126A8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v49 - v15;
  v60 = a1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125F0;
  *(inited + 32) = 0x746E756F636361;
  *(inited + 40) = 0xE700000000000000;
  v18 = sub_2F50(0, &qword_1C6C0, ACAccount_ptr);
  *(inited + 48) = a1;
  *(inited + 72) = v18;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = sub_118F0();
  *(inited + 104) = v19;
  v20 = a1;
  v21 = sub_118B0();
  sub_1780("nameComponents(for:service:)", 28, 2, v21);

  sub_2F90(&qword_1C6C8, &qword_1C6C0, ACAccount_ptr);
  result = sub_11730();
  if (v57)
  {

    sub_11770();
    v24 = v23;
    sub_11760();
    if (v24)
    {
    }

    else if (!v25)
    {
      v40 = v50;
      sub_11840();
      sub_A4D0(&qword_1C6A8, &qword_126D8);
      v41 = *(sub_117E0() - 8);
      v42 = *(v41 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      *(swift_allocObject() + 16) = xmmword_125E0;
      v59 = &type metadata for String;
      v57 = 0xD00000000000001CLL;
      v58 = 0x80000000000140A0;
      sub_117A0();
      sub_1E30(&v57, &qword_1C6B8, &qword_126E8);
      v59 = sub_A4D0(&qword_1C6B0, &qword_126E0);
      v44 = swift_allocObject();
      v57 = v44;
      v45 = v51;
      *(v44 + 16) = a2;
      *(v44 + 24) = v45;
      *(v44 + 32) = v53;
      *(v44 + 40) = v52 & 1;
      v46 = a2;

      v47 = AMSLogKey();
      if (v47)
      {
        v48 = v47;
        sub_118F0();
      }

      sub_117D0();

      sub_2ED0(&v57);
      sub_11790();
      sub_11850();

      (*(v54 + 8))(v40, v55);
      v39 = sub_11710();
      v37 = v56;
      v38 = 1;
      goto LABEL_8;
    }

    sub_11770();
    sub_11760();
    v26 = sub_11710();
    sub_A518(v16, 1, 1, v26);
    sub_116F0();
    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    v27 = *(sub_117E0() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_125D0;
    v59 = sub_A4D0(&qword_1C6B0, &qword_126E0);
    v30 = swift_allocObject();
    v57 = v30;
    v31 = v51;
    *(v30 + 16) = a2;
    *(v30 + 24) = v31;
    *(v30 + 32) = v53;
    *(v30 + 40) = v52 & 1;
    v32 = a2;

    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      sub_118F0();
    }

    sub_117D0();

    sub_2ED0(&v57);
    v59 = &type metadata for String;
    v57 = 0xD00000000000001CLL;
    v58 = 0x80000000000140A0;
    sub_117A0();
    sub_1E30(&v57, &qword_1C6B8, &qword_126E8);
    sub_11790();
    v59 = v26;
    v35 = sub_F8E4(&v57);
    v36 = v56;
    (*(*(v26 - 8) + 16))(v35, v56, v26);
    sub_117A0();
    sub_1E30(&v57, &qword_1C6B8, &qword_126E8);
    sub_11850();

    (*(v54 + 8))(v12, v55);
    v37 = v36;
    v38 = 0;
    v39 = v26;
LABEL_8:
    sub_A518(v37, v38, 1, v39);
    return sub_203C("nameComponents(for:service:)", 0x1CuLL, 2);
  }

  __break(1u);
  return result;
}

uint64_t AMSMediaServiceOwner.sign(inService:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10564();
}

uint64_t sub_5470()
{
  sub_10558();
  sub_10DC4(*(v0 + 32));
  v1 = sub_10F40(&unk_12608);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_10668(v1);

  return v3(v2);
}

uint64_t sub_5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 916) = a6;
  *(v6 + 736) = a5;
  *(v6 + 728) = a4;
  *(v6 + 720) = a3;
  *(v6 + 712) = a2;
  *(v6 + 704) = a1;
  v7 = sub_11880();
  *(v6 + 744) = v7;
  v8 = *(v7 - 8);
  *(v6 + 752) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();

  return _swift_task_switch(sub_5614, 0, 0);
}

uint64_t sub_5614()
{
  sub_10DB8();
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = AMSSetLogKeyIfNeeded();
  sub_118F0();
  sub_10DAC();

  *(v0 + 800) = v1;
  sub_A4D0(&qword_1C680, &qword_126B0);
  inited = swift_initStackObject();
  sub_10640(inited, xmmword_125F0)[4].n128_u64[1] = &type metadata for String;
  inited[3].n128_u64[0] = sub_118F0();
  inited[3].n128_u64[1] = v7;
  sub_10C24();
  inited[5].n128_u64[0] = v8;
  inited[5].n128_u64[1] = v9;
  inited[7].n128_u64[1] = sub_2F50(0, &qword_1C688, AIDAServiceContext_ptr);
  inited[6].n128_u64[0] = v3;
  v10 = v3;
  v11 = sub_118B0();
  sub_105A0();
  sub_1780(v12, v13, v14, v11);

  v15 = sub_F568(v10);
  *(v0 + 808) = v15;
  if (!v15)
  {
    v19 = *(v0 + 792);
    v20 = *(v0 + 916);
    v21 = *(v0 + 736);
    v108 = *(v0 + 720);

    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    v22 = sub_117E0();
    sub_1009C(v22);
    v24 = *(v23 + 72);
    sub_100E0();
    *(sub_11020() + 16) = xmmword_125E0;
    *(v0 + 208) = sub_A4D0(&qword_1C6B0, &qword_126E0);
    sub_102AC();
    v25 = swift_allocObject();
    *(v0 + 184) = v25;
    v34 = sub_108A4(v25, v26, v27, v28, v29, v30, v31, v32, v105, v106, v33).n128_u64[0];
    *(v35 + 32) = v21;
    *(v35 + 40) = v20;
    v36 = v34;

    v37 = AMSLogKey();
    if (v37)
    {
      v38 = v37;
      sub_118F0();
      sub_10DAC();
    }

    v95 = *(v0 + 792);
    v96 = *(v0 + 752);
    v97 = *(v0 + 744);
    sub_10CB4();

    sub_2ED0((v0 + 184));
    *(v0 + 240) = &type metadata for String;
    *(v0 + 216) = 0xD000000000000015;
    *(v0 + 224) = 0x8000000000013B30;
    sub_117A0();
    sub_1E30(v0 + 216, &qword_1C6B8, &qword_126E8);
    sub_11790();
    sub_11860();

    (*(v96 + 8))(v95, v97);
    v98 = sub_118C0();
    v99 = sub_118C0();
    sub_104C4();
    AMSError();

    swift_willThrow();
    sub_103D0();
    sub_105A0();
    sub_203C(v100, v101, v102);

    v103 = sub_10274();

    return v104(v103);
  }

  v16 = v15;
  v107 = v1;
  v17 = sub_F5E4(*(v0 + 712));
  if (!v17)
  {
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    goto LABEL_9;
  }

  sub_C2FC(AIDAServiceTypeStore, v17, (v0 + 248));

  if (!*(v0 + 272))
  {
LABEL_9:
    sub_1E30(v0 + 248, &qword_1C6B8, &qword_126E8);
    goto LABEL_10;
  }

  sub_2F50(0, &qword_1C720, AMSSignInContext_ptr);
  if (!swift_dynamicCast())
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v18 = *(v0 + 696);
LABEL_11:
  v39 = *(v0 + 784);
  v40 = *(v0 + 916);
  v41 = *(v0 + 736);
  v109 = *(v0 + 720);
  sub_11840();
  *(v0 + 816) = sub_A4D0(&qword_1C6A8, &qword_126D8);
  v42 = sub_117E0();
  sub_1009C(v42);
  *(v0 + 824) = *(v43 + 72);
  *(v0 + 912) = *(v44 + 80);
  *(sub_10874() + 16) = xmmword_125D0;
  v45 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  *(v0 + 832) = v45;
  *(v0 + 304) = v45;
  sub_102AC();
  v46 = swift_allocObject();
  *(v0 + 280) = v46;
  v55 = sub_108A4(v46, v47, v48, v49, v50, v51, v52, v53, v2, v107, v54).n128_u64[0];
  *(v56 + 32) = v41;
  *(v56 + 40) = v40;
  v57 = v55;

  v58 = AMSLogKey();
  if (v58)
  {
    v59 = v58;
    sub_118F0();
  }

  sub_117D0();

  sub_2ED0((v0 + 280));
  *(v0 + 336) = &type metadata for String;
  *(v0 + 312) = 0xD000000000000015;
  *(v0 + 320) = 0x8000000000013B30;
  sub_117A0();
  sub_1E30(v0 + 312, &qword_1C6B8, &qword_126E8);
  sub_11790();
  if (v18)
  {
    v60 = sub_2F50(0, &qword_1C720, AMSSignInContext_ptr);
    v61 = v18;
  }

  else
  {
    v61 = 0;
    v60 = 0;
    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
  }

  *(v0 + 840) = v61;
  v62 = *(v0 + 784);
  v63 = *(v0 + 752);
  v64 = *(v0 + 744);
  *(v0 + 344) = v61;
  *(v0 + 368) = v60;
  v65 = v61;
  sub_117A0();
  sub_1E30(v0 + 344, &qword_1C6B8, &qword_126E8);
  sub_11870();

  *(v0 + 848) = *(v63 + 8);
  *(v0 + 856) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v66 = sub_10B20();
  v67(v66);
  sub_A4D0(&qword_1C6F8, &qword_12730);
  v68 = swift_initStackObject();
  *(v0 + 864) = v68;
  *(v68 + 16) = xmmword_125C0;
  v69 = AMSAccountMediaTypeProduction;
  *(v0 + 872) = AMSAccountMediaTypeProduction;
  *(v68 + 32) = v69;
  v70 = v69;
  v71 = v70;
  if (v18)
  {
    v72 = v65;
    v73 = v71;
    if ([v72 skipAuthentication])
    {
      v74 = swift_task_alloc();
      *(v0 + 880) = v74;
      *v74 = v0;
      v74[1] = sub_5E8C;
      v75 = *(v0 + 916);
      v76 = *(v0 + 736);
      v77 = *(v0 + 728);
      v78 = *(v0 + 720);
      v79 = *(v0 + 712);

      return sub_CFD4(v16, v73, v79, v72, v78, v77, v76, v75);
    }
  }

  else
  {
    v81 = v70;
  }

  v82 = swift_task_alloc();
  *(v0 + 896) = v82;
  *v82 = v0;
  v82[1] = sub_6B0C;
  v83 = *(v0 + 728);
  v84 = *(v0 + 720);
  v85 = *(v0 + 712);
  v112 = *(v0 + 916);
  v111 = *(v0 + 736);
  sub_106A0();

  return sub_AA3C(v86, v87, v88, v89, v90, v91, v92, v93);
}

uint64_t sub_5E8C()
{
  sub_102D8();
  v3 = v2;
  sub_102F8();
  sub_1011C();
  *v5 = v4;
  v7 = *(v6 + 880);
  v8 = *v1;
  sub_10078();
  *v9 = v8;
  *(v10 + 888) = v0;

  if (!v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6B0C()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v5 = *(v4 + 896);
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 904) = v0;

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_7794(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000C;

  return AMSMediaServiceOwner.sign(inService:with:)(v8, v9);
}

uint64_t sub_786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4D0(&qword_1C670, &qword_12658);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_11990();
  sub_A518(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_12668;
  v10[5] = v9;
  sub_E9AC(0, 0, v7, &unk_12678, v10);
}

uint64_t AMSMediaServiceOwner.signOutService(_:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10564();
}

uint64_t sub_7994()
{
  sub_10558();
  sub_10DC4(*(v0 + 32));
  v1 = sub_10F40(&unk_12618);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_10668(v1);

  return v3(v2);
}

uint64_t sub_7A34()
{
  sub_102D8();
  v3 = v2;
  sub_102F8();
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_10078();
  *v7 = v6;

  sub_10510();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_7B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 744) = a6;
  *(v6 + 584) = a5;
  *(v6 + 576) = a4;
  *(v6 + 568) = a3;
  *(v6 + 560) = a2;
  *(v6 + 552) = a1;
  v8 = sub_11880();
  *(v6 + 592) = v8;
  v9 = *(v8 - 8);
  *(v6 + 600) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 512) = a3;

  return _swift_task_switch(sub_7C28, 0, 0);
}

uint64_t sub_7C28()
{
  sub_10B2C();
  v1 = *(v0 + 744);
  v2 = *(v0 + 584);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  sub_A4D0(&qword_1C680, &qword_126B0);
  v28 = *(v0 + 568);
  inited = swift_initStackObject();
  sub_10640(inited, xmmword_125F0)[4].n128_u64[1] = &type metadata for String;
  inited[3].n128_u64[0] = sub_118F0();
  inited[3].n128_u64[1] = v6;
  sub_10C24();
  inited[5].n128_u64[0] = v7;
  inited[5].n128_u64[1] = v8;
  inited[7].n128_u64[1] = sub_2F50(0, &qword_1C688, AIDAServiceContext_ptr);
  inited[6].n128_u64[0] = v3;
  v9 = v3;
  v10 = sub_118B0();
  sub_105E4();
  sub_1780(v11, v12, v13, v10);

  sub_102AC();
  v14 = swift_allocObject();
  *(v0 + 640) = v14;
  sub_10E04(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  sub_10574(v23);
  v25 = v24;

  v26 = swift_task_alloc();
  *(v0 + 648) = v26;
  *v26 = v0;
  v26[1] = sub_7DE4;

  return sub_A7D8(2, &unk_126C0, v14);
}

uint64_t sub_7DE4()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v2 = v1;
  v4 = *(v3 + 648);
  v5 = *(v3 + 640);
  v6 = *v0;
  sub_10078();
  *v7 = v6;
  *(v9 + 656) = v8;

  sub_107A8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_7EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v15 + 656);
  v17 = *(v16 + 16);
  *(v15 + 664) = v17;
  if (v17)
  {
    *(v15 + 680) = &_swiftEmptyArrayStorage;
    *(v15 + 672) = 0;
    v18 = *(v16 + 32);
    *(v15 + 688) = v18;
    v19 = async function pointer to AccountStoreProtocol.activeiTunesAccount(for:)[1];
    v20 = v18;
    sub_10800();
    v21 = swift_task_alloc();
    sub_10C78(v21);
    v22 = sub_103F4();
    v24 = sub_2F50(v22, v23, ACAccountStore_ptr);
    sub_10C18(v24);
    sub_10014();
    sub_105AC();
    v28 = sub_2F90(v25, v26, v27);
    sub_103C0(v28);
    *v14 = v29;
    v30 = sub_1002C();

    return AccountStoreProtocol.activeiTunesAccount(for:)(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v38 = *(v15 + 632);
    v39 = *(v15 + 744);
    v40 = *(v15 + 584);
    v74 = *(v15 + 568);

    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    v41 = sub_117E0();
    sub_1009C(v41);
    v43 = *(v42 + 72);
    sub_103B4();
    *(sub_11020() + 16) = xmmword_125E0;
    *(v15 + 424) = sub_A4D0(&qword_1C6B0, &qword_126E0);
    sub_102AC();
    v44 = swift_allocObject();
    *(v15 + 400) = v44;
    v53 = sub_10E04(v44, v45, v46, v47, v48, v49, v50, v51, v52).n128_u64[0];
    *(v54 + 32) = v40;
    *(v54 + 40) = v39;
    v55 = v53;

    v56 = AMSLogKey();
    if (v56)
    {
      v57 = v56;
      sub_118F0();
      sub_10990();
    }

    else
    {
      sub_109EC();
    }

    v58 = *(v15 + 632);
    v59 = *(v15 + 600);
    v60 = *(v15 + 592);
    sub_10D30();

    sub_2ED0((v15 + 400));
    *(v15 + 456) = &type metadata for String;
    *(v15 + 432) = 0xD000000000000017;
    *(v15 + 440) = 0x8000000000013A40;
    sub_117A0();
    sub_1E30(v15 + 432, &qword_1C6B8, &qword_126E8);
    sub_11790();
    sub_11870();

    v61 = *(v59 + 8);
    v62 = sub_10B20();
    v63(v62);
    v64 = *(v15 + 632);
    v65 = *(v15 + 624);
    v66 = *(v15 + 616);
    v67 = *(v15 + 608);
    sub_105E4();
    sub_203C(v68, v69, v70);

    v71 = sub_10088();

    return v72(v71);
  }
}

uint64_t sub_8220()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v5 = *(v4 + 696);
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 720) = v0;

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_91E0()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v5 = *(v4 + 728);
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 736) = v0;

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_A124(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10B38();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_786C(a7, v12);
}

uint64_t sub_A1A8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_A280;

  return AMSMediaServiceOwner.signOutService(_:with:)(v8, v9);
}

uint64_t sub_A280()
{
  sub_10B2C();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  v8 = v5[6];
  v9 = v5[4];
  v10 = v5[3];
  v11 = v5[2];
  v12 = *v1;
  *v7 = *v1;

  v13 = v5[5];
  if (v2)
  {
    v14 = sub_11720();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(v5[5], v4 & 1, 0);
  }

  _Block_release(v6[5]);
  v15 = v12[1];

  return v15();
}

uint64_t sub_A43C()
{
  sub_1107C();
  sub_10558();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_105D8(v5);
  *v6 = v7;
  sub_10204(v6);
  sub_11068();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_A4D0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 16) = a2;
  v16 = async function pointer to AccountStoreProtocol.activeiTunesAccount(for:)[1];
  v17 = swift_task_alloc();
  *(v14 + 32) = v17;
  v18 = sub_2F50(0, &qword_1C690, ACAccountStore_ptr);
  v19 = sub_2F90(&qword_1C698, &qword_1C690, ACAccountStore_ptr);
  *v17 = v14;
  v17[1] = sub_A64C;

  return AccountStoreProtocol.activeiTunesAccount(for:)(v14 + 24, a1, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_A64C()
{
  sub_102D8();
  sub_102F8();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_10078();
  *v5 = v4;

  if (v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_A750()
{
  sub_102D8();
  v1 = *(v0 + 24);
  if (v1)
  {
  }

  sub_10510();

  return v2();
}

uint64_t sub_A7D8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = a1;
  return _swift_task_switch(sub_A7FC, 0, 0);
}

uint64_t sub_A7FC()
{
  sub_106BC();
  v1 = *(v0 + 56);
  sub_A4D0(&qword_1C6D8, &qword_126F8);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_A4D0(&qword_1C6E0, &qword_12710);
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  swift_task_alloc();
  sub_103A8();
  *(v0 + 48) = v5;
  *v5 = v6;
  v5[1] = sub_A914;
  sub_1051C();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_A914()
{
  sub_102D8();
  sub_102F8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_10078();
  *v5 = v4;

  sub_107A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_AA18()
{
  v1 = *(v0 + 16);
  sub_10510();
  return v2();
}

uint64_t sub_AA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 612) = v16;
  *(v8 + 424) = a8;
  *(v8 + 432) = v15;
  *(v8 + 408) = a6;
  *(v8 + 416) = a7;
  *(v8 + 392) = a4;
  *(v8 + 400) = a5;
  *(v8 + 376) = a2;
  *(v8 + 384) = a3;
  *(v8 + 368) = a1;
  v10 = sub_11880();
  *(v8 + 440) = v10;
  v11 = *(v10 - 8);
  *(v8 + 448) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 288) = a7;

  return _swift_task_switch(sub_AB54, 0, 0);
}

uint64_t sub_AB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10858();
  sub_10C6C();
  v15 = *(v14 + 488);
  v16 = *(v14 + 612);
  v17 = *(v14 + 432);
  v58 = *(v14 + 416);
  sub_11840();
  *(v14 + 496) = sub_A4D0(&qword_1C6A8, &qword_126D8);
  v18 = sub_117E0();
  sub_1009C(v18);
  *(v14 + 504) = *(v19 + 72);
  *(v14 + 608) = *(v20 + 80);
  *(sub_11020() + 16) = xmmword_125E0;
  v21 = sub_A4D0(&qword_1C6B0, &qword_126E0);
  *(v14 + 512) = v21;
  *(v14 + 40) = v21;
  sub_102AC();
  v22 = swift_allocObject();
  *(v14 + 16) = v22;
  sub_10E04(v22, v23, v24, v25, v26, v27, v28, v29, v30);
  sub_10574(v31);
  v33 = v32;

  if (AMSLogKey())
  {
    sub_118F0();
    sub_10D48();
  }

  else
  {
    sub_10CA8();
  }

  v34 = *(v14 + 488);
  v35 = *(v14 + 448);
  *&v58 = *(v14 + 440);
  v36 = *(v14 + 376);
  sub_117D0();

  sub_2ED0((v14 + 16));
  sub_11790();
  type metadata accessor for AMSAccountMediaType(0);
  *(v14 + 72) = v37;
  *(v14 + 48) = v36;
  v38 = v36;
  sub_117A0();
  sub_1E30(v14 + 48, &qword_1C6B8, &qword_126E8);
  sub_11870();

  *(v14 + 520) = *(v35 + 8);
  *(v14 + 528) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39 = sub_10C9C();
  v40(v39);
  v41 = async function pointer to AccountStoreProtocol.activeiTunesAccount(for:)[1];
  v42 = swift_task_alloc();
  *(v14 + 536) = v42;
  v43 = sub_103F4();
  *(v14 + 544) = sub_2F50(v43, v44, ACAccountStore_ptr);
  sub_10014();
  sub_1051C();
  *(v14 + 552) = sub_2F90(v45, v46, v47);
  *v42 = v14;
  v42[1] = sub_AE20;
  v48 = *(v14 + 376);
  sub_10480();

  return AccountStoreProtocol.activeiTunesAccount(for:)(v49, v50, v51, v52, v53, v54, v55, v56, v58, *(&v58 + 1), a11, a12, a13, a14);
}

uint64_t sub_AE20()
{
  sub_102D8();
  sub_102F8();
  v3 = *(v2 + 536);
  v4 = *v1;
  sub_10078();
  *v5 = v4;

  if (v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_BD84()
{
  sub_102D8();
  sub_102F8();
  v3 = v2;
  v4 = *(v2 + 576);
  v5 = *v1;
  sub_10078();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (!v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_BE9C()
{
  sub_106BC();

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);

  sub_103E8();

  return v6();
}

uint64_t sub_BF30()
{
  sub_1107C();
  sub_10558();

  v1 = *(v0 + 584);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 456);

  sub_103E8();
  sub_11068();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_BFC4()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 600) = v0;

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_C0BC()
{
  sub_106BC();

  v1 = sub_10304();
  *(v0 + 568) = v1;
  *(v0 + 312) = v1;
  v2 = sub_103F4();
  sub_2F50(v2, v3, AMSAuthenticateTask_ptr);
  sub_100F0(&qword_1C800);
  v4 = async function pointer to dispatch thunk of AuthenticateTaskProtocol.performAuthentication()[1];
  swift_task_alloc();
  sub_103A8();
  *(v0 + 576) = v5;
  *v5 = v6;
  v7 = sub_100AC(v5);

  return dispatch thunk of AuthenticateTaskProtocol.performAuthentication()(v7);
}

uint64_t sub_C178()
{
  sub_10B2C();
  v1 = *(v0 + 600);
  v2 = *(v0 + 560);
  v3 = sub_118C0();
  v4 = sub_118C0();
  v5 = sub_11720();
  sub_10784();
  AMSError();

  swift_willThrow();

  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = *(v0 + 456);

  sub_103E8();

  return v11();
}

uint64_t sub_C2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_F05C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

double sub_C2FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_F0D4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_2E64(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_C360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *__return_ptr, void **, uint64_t, id))
{
  v25 = a1;
  v10 = sub_F5E4(a1);
  if (!v10)
  {
    v23 = 0u;
    v24 = 0u;
    goto LABEL_6;
  }

  sub_C2FC(AIDAServiceTypeStore, v10, &v23);

  if (!*(&v24 + 1))
  {
LABEL_6:
    sub_1E30(&v23, &qword_1C6B8, &qword_126E8);
    goto LABEL_7;
  }

  sub_2F50(0, &qword_1C720, AMSSignInContext_ptr);
  if (swift_dynamicCast())
  {
    v11 = v22;
    v12 = [v22 canMakeAccountActive];
    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
  v12 = &dword_0 + 1;
LABEL_8:
  v13 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  sub_2F50(0, &unk_1C808, AMSProcessInfo_ptr);
  v14 = sub_C6C8();
  [v13 setClientInfo:v14];

  [v13 setAllowServerDialogs:{objc_msgSend(a1, "operationUIPermissions") == &dword_0 + 1}];
  [v13 setAuthenticationType:{objc_msgSend(a1, "operationUIPermissions") != &dword_0 + 1}];
  [v13 setCanMakeAccountActive:v12];
  v15 = [v13 clientInfo];
  [v15 setAccountMediaType:a2];

  v16 = sub_118C0();
  [v13 setDebugReason:v16];

  if (v11)
  {
    isa = [v11 customHTTPHeaders];
    if (isa)
    {
      sub_118A0();

      isa = sub_11890().super.isa;
    }

    [v13 setHTTPHeaders:isa];

    v18 = [v11 ignoreAccountConversion];
  }

  else
  {
    [v13 setHTTPHeaders:0];
    v18 = &dword_0 + 1;
  }

  [v13 setIgnoreAccountConversion:v18];
  v19 = sub_118C0();
  [v13 setLogKey:v19];

  a7(&v23, &v25, a3, v13);
  return v23;
}

id sub_C6C8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_118C0();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t sub_C73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a1;
  v5 = sub_A4D0(&qword_1C6E8, &qword_12720);
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v8 = sub_A4D0(&qword_1C6F0, &qword_12728);
  v4[22] = v8;
  v9 = *(v8 - 8);
  v4[23] = v9;
  v10 = *(v9 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v11 = *(*(sub_A4D0(&qword_1C670, &qword_12658) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_C8C4, 0, 0);
}

uint64_t sub_C8C4()
{
  sub_10E48();
  sub_10DB8();
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  sub_A4D0(&qword_1C6F8, &qword_12730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_125C0;
  v7 = AMSAccountMediaTypeProduction;
  *(inited + 32) = AMSAccountMediaTypeProduction;
  v38 = *v5;
  v8 = sub_11990();
  v9 = v7;
  sub_A518(v2, 1, 1, v8);
  v10 = swift_allocObject();
  v10[2] = 0;
  v11 = v10 + 2;
  v10[3] = 0;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v9;
  sub_EC78(v2, v1);
  LODWORD(v1) = sub_ECE8(v1, 1, v8);
  v37 = v9;

  if (v1 == 1)
  {
    sub_1E30(v0[26], &qword_1C670, &qword_12658);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    sub_11980();
    sub_1039C(v8);
    v15 = *(v14 + 8);
    v16 = sub_106FC();
    v17(v16);
    if (*v11)
    {
      v18 = v10[3];
      v19 = *v11;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_11960();
      v13 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = &unk_12740;
  *(v21 + 24) = v10;

  sub_A4D0(&qword_1C6D8, &qword_126F8);
  v22 = (v13 | v12);
  if (v13 | v12)
  {
    v22 = v0 + 7;
    v0[7] = 0;
    v0[8] = 0;
    v0[9] = v12;
    v0[10] = v13;
  }

  v23 = v0[27];
  v24 = v0[24];
  v25 = v0[25];
  v26 = v0[22];
  v27 = v0[23];
  v36 = v0[21];
  v0[11] = 1;
  v0[12] = v22;
  v0[13] = v38;
  swift_task_create();

  sub_1E30(v23, &qword_1C670, &qword_12658);
  swift_setDeallocating();
  sub_2FD4();
  v0[14] = v38;
  v28 = sub_10790();
  sub_A4D0(v28, v29);
  type metadata accessor for AMSAccountMediaType(0);
  sub_FF68(&qword_1C708, &qword_1C700, &qword_12750);
  sub_119D0();
  (*(v27 + 16))(v24, v25, v26);
  sub_FF68(&qword_1C710, &qword_1C6F0, &qword_12728);
  sub_119A0();
  v0[28] = &_swiftEmptyArrayStorage;
  sub_1061C(&qword_1C718, &qword_1C6E8, &qword_12720);
  v30 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_103A8();
  v0[29] = v31;
  *v31 = v32;
  sub_10400(v31);
  sub_106A0();

  return dispatch thunk of AsyncIteratorProtocol.next()(v33);
}

uint64_t sub_CCD0()
{
  sub_1107C();
  sub_10558();
  sub_102F8();
  v3 = v2;
  v4 = v2[29];
  v5 = *v1;
  sub_10078();
  *v6 = v5;

  if (v0)
  {
    v7 = v3[28];
    v9 = v3[20];
    v8 = v3[21];
    v10 = v3[19];

    (*(v9 + 8))(v8, v10);
  }

  sub_107A8();
  sub_11068();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_CE08()
{
  sub_10B2C();
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[28];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_F444(0, v4[2] + 1, 1, v4);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_F444((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    v4[v6 + 4] = v1;
    v0[28] = v4;
    sub_1061C(&qword_1C718, &qword_1C6E8, &qword_12720);
    v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    swift_task_alloc();
    sub_103A8();
    v0[29] = v8;
    *v8 = v9;
    sub_10400();

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 15);
  }

  else
  {
    v10 = v0[26];
    v11 = v0[27];
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[22];
    v15 = v0[23];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v15 + 8))(v12, v14);

    sub_10510();
    v17 = v0[28];

    return v16(v17);
  }
}

uint64_t sub_CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 392) = a8;
  *(v8 + 240) = a6;
  *(v8 + 248) = a7;
  *(v8 + 224) = a4;
  *(v8 + 232) = a5;
  *(v8 + 208) = a2;
  *(v8 + 216) = a3;
  *(v8 + 200) = a1;
  v10 = sub_11880();
  *(v8 + 256) = v10;
  v11 = *(v10 - 8);
  *(v8 + 264) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 112) = a5;

  return _swift_task_switch(sub_D0B8, 0, 0);
}

uint64_t sub_D698()
{
  sub_102D8();
  sub_102F8();
  v3 = *(v2 + 304);
  v4 = *v1;
  sub_10078();
  *v5 = v4;

  if (v0)
  {
  }

  sub_107A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_D79C()
{
  sub_106BC();
  v0[18] = 0;
  v1 = v0[26];
  v2 = sub_103F4();
  sub_2F50(v2, v3, ACAccount_ptr);
  sub_10060();
  sub_1051C();
  sub_2F90(v4, v5, v6);
  sub_10DE4();
  sub_11780();
  v7 = async function pointer to AccountStoreProtocol.save(_:)[1];
  swift_task_alloc();
  sub_103A8();
  v0[47] = v8;
  *v8 = v9;
  sub_10690(v8);

  return AccountStoreProtocol.save(_:)(v0 + 15);
}

uint64_t sub_D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10E48();
  sub_10DB8();
  v18 = *(v16 + 144);
  *(v16 + 320) = v18;
  if (!v18)
  {
    v31 = *(v16 + 208);
    sub_10DE4();
    sub_2F50(v32, v33, v34);
    sub_10060();
    sub_10DE4();
    sub_2F90(v35, v36, v37);
    sub_11780();
    v38 = async function pointer to AccountStoreProtocol.save(_:)[1];
    v39 = swift_task_alloc();
    *(v16 + 376) = v39;
    *v39 = v16;
    sub_10690(v39);
LABEL_13:
    sub_106A0();

    return AccountStoreProtocol.save(_:)(v46);
  }

  *(v16 + 152) = v18;
  v19 = sub_103F4();
  v21 = sub_2F50(v19, v20, ACAccount_ptr);
  sub_10060();
  sub_104C4();
  v25 = sub_2F90(v22, v23, v24);
  v26 = v18;
  sub_11750();
  sub_107B4();
  v27 = sub_11750();
  if (!v28)
  {

    goto LABEL_11;
  }

  if (v17 == v27 && v18 == v28)
  {

    goto LABEL_20;
  }

  v30 = sub_119F0();

  if (v30)
  {
LABEL_20:
    v61 = *(v16 + 272);
    v62 = *(v16 + 392);
    v63 = *(v16 + 248);
    v97 = *(v16 + 232);
    sub_11840();
    sub_A4D0(&qword_1C6A8, &qword_126D8);
    v64 = sub_1088C();
    sub_1009C(v64);
    v66 = *(v65 + 72);
    sub_103B4();
    v98 = v67;
    *(sub_10874() + 16) = xmmword_125F0;
    *(v16 + 72) = sub_A4D0(&qword_1C6B0, &qword_126E0);
    sub_102AC();
    v68 = swift_allocObject();
    *(v16 + 48) = v68;
    v77 = sub_10E04(v68, v69, v70, v71, v72, v73, v74, v75, v76).n128_u64[0];
    *(v78 + 32) = v63;
    *(v78 + 40) = v62;
    v79 = v77;

    v80 = AMSLogKey();
    v99 = v26;
    if (v80)
    {
      v81 = v80;
      sub_118F0();
      sub_10990();
    }

    else
    {
      sub_109EC();
    }

    v82 = *(v16 + 296);
    v83 = *(v16 + 264);
    v84 = *(v16 + 272);
    v85 = *(v16 + 256);
    sub_106FC();
    sub_117D0();

    sub_2ED0((v16 + 48));
    sub_11790();
    sub_11870();

    (*(v83 + 8))(v84, v85);

    v87 = *(v16 + 272);
    v86 = *(v16 + 280);

    sub_10510();
    sub_106A0();

    return v90(v88, v89, v90, v91, v92, v93, v94, v95, v97, *(&v97 + 1), v98, v99, a13, a14, a15, a16);
  }

LABEL_11:
  v40 = *(v16 + 216);
  *(v16 + 160) = v26;
  v41 = v26;
  if ([v40 shouldForceOperation])
  {
    v42 = *(v16 + 208);
    *(v16 + 328) = v21;
    *(v16 + 336) = v25;
    sub_11780();
    v43 = async function pointer to AccountStoreProtocol.save(_:)[1];
    swift_task_alloc();
    sub_103A8();
    *(v16 + 344) = v44;
    *v44 = v45;
    sub_10690(v44);
    goto LABEL_13;
  }

  v48 = *(v16 + 296);

  v49 = sub_118C0();
  v50 = sub_118C0();
  AMSError();

  swift_willThrow();
  v52 = *(v16 + 272);
  v51 = *(v16 + 280);

  sub_103E8();
  sub_106A0();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_DDA4()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 352) = v0;

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_DE9C()
{
  sub_102D8();
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[26];
  sub_11780();
  v4 = async function pointer to AccountStoreProtocol.save(_:)[1];
  swift_task_alloc();
  sub_103A8();
  v0[45] = v5;
  *v5 = v6;
  sub_10690(v5);

  return AccountStoreProtocol.save(_:)(v0 + 15);
}

uint64_t sub_DF44()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 368) = v0;

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_E03C()
{
  sub_10B2C();
  v2 = *(v0 + 352);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = sub_1049C();
  v6 = sub_118C0();
  sub_11720();
  sub_106C8();

  swift_willThrow();

  v8 = *(v0 + 272);
  v7 = *(v0 + 280);

  sub_103E8();

  return v9();
}

uint64_t sub_E134()
{
  sub_102D8();
  v1 = *(v0 + 320);

  v2 = *(v0 + 120);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);

  sub_10510();

  return v5(v2);
}

uint64_t sub_E1B0()
{
  sub_10B2C();
  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v4 = sub_1049C();
  v5 = sub_118C0();
  sub_11720();
  sub_106C8();

  swift_willThrow();

  v7 = *(v0 + 272);
  v6 = *(v0 + 280);

  sub_103E8();

  return v8();
}

uint64_t sub_E2A8()
{
  sub_102D8();
  sub_102F8();
  sub_1011C();
  *v3 = v2;
  v5 = *(v4 + 376);
  v6 = *v1;
  sub_10078();
  *v7 = v6;
  *(v8 + 384) = v0;

  sub_107A8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_E3A0()
{
  sub_102D8();
  v1 = v0[15];
  v3 = v0[34];
  v2 = v0[35];

  sub_10510();

  return v4(v1);
}

uint64_t sub_E40C()
{
  sub_1107C();
  sub_10558();
  v2 = *(v0 + 384);
  v3 = sub_1049C();
  v4 = sub_118C0();
  sub_11720();
  sub_106C8();

  swift_willThrow();

  v6 = *(v0 + 272);
  v5 = *(v0 + 280);

  sub_103E8();
  sub_11068();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

id sub_E4E4(uint64_t a1, void *a2)
{
  sub_A4D0(&qword_1C7F0, &qword_12780);
  isa = sub_11890().super.isa;

  v5 = [v2 initWithAuthenticationResults:isa options:a2];

  return v5;
}

uint64_t sub_E574(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10008;

  return v7();
}

uint64_t sub_E65C()
{
  sub_1107C();
  sub_10558();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_105D8(v5);
  *v6 = v7;
  sub_10204(v6);
  sub_11068();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_E6F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_E7D8;

  return v8();
}

uint64_t sub_E7D8()
{
  sub_102D8();
  sub_102F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10078();
  *v4 = v3;

  sub_103E8();

  return v5();
}

uint64_t sub_E8B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_10B38();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_E8F0()
{
  sub_10558();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_102C8(v5);
  *v6 = v7;
  v6[1] = sub_10008;
  sub_10784();

  return v8();
}

uint64_t sub_E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_A4D0(&qword_1C670, &qword_12658);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_EC78(a3, v25 - v11);
  v13 = sub_11990();
  if (sub_ECE8(v12, 1, v13) == 1)
  {
    sub_1E30(v12, &qword_1C670, &qword_12658);
  }

  else
  {
    sub_11980();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_11960();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_11900() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E30(a3, &qword_1C670, &qword_12658);

      return v23;
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

  sub_1E30(a3, &qword_1C670, &qword_12658);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_EC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4D0(&qword_1C670, &qword_12658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ED10(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_EE08;

  return v7(a1);
}

uint64_t sub_EE08()
{
  sub_102D8();
  sub_102F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10078();
  *v4 = v3;

  sub_103E8();

  return v5();
}

uint64_t sub_EEEC()
{
  sub_106BC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_102C8(v3);
  *v4 = v5;
  v6 = sub_10254(v4);

  return v7(v6);
}

uint64_t sub_EF80()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10B38();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_EFC8()
{
  sub_1107C();
  sub_10558();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_105D8(v5);
  *v6 = v7;
  sub_10204(v6);
  sub_11068();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_F05C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_11A00();
  sub_11910();
  v6 = sub_11A10();

  return sub_F168(a1, a2, v6);
}

unint64_t sub_F0D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_118F0();
  sub_11A00();
  sub_11910();
  v4 = sub_11A10();

  return sub_F21C(a1, v4);
}

unint64_t sub_F168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_119F0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_F21C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_118F0();
    v8 = v7;
    if (v6 == sub_118F0() && v8 == v9)
    {

      return i;
    }

    v11 = sub_119F0();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void *sub_F314(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_A4D0(&qword_1C6D0, &qword_126F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_A4D0(&qword_1C6A0, &qword_126D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_F444(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_A4D0(&qword_1C6F8, &qword_12730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AMSAccountMediaType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_F568(void *a1)
{
  v1 = [a1 authenticationResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_A4D0(&qword_1C7F0, &qword_12780);
  v3 = sub_118A0();

  return v3;
}

uint64_t sub_F5E4(void *a1)
{
  v1 = [a1 signInContexts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for AIDAServiceType(0);
  sub_FFB0();
  v3 = sub_118A0();

  return v3;
}

uint64_t sub_F65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = swift_task_alloc();
  *(v14 + 16) = v20;
  *v20 = v14;
  v20[1] = sub_F71C;

  return sub_A540(a1, v16, v17, v18, v19, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_F71C()
{
  sub_102D8();
  v2 = v1;
  sub_102F8();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_10078();
  *v6 = v5;

  sub_10510();

  return v7(v2);
}

uint64_t sub_F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_106BC();
  v16 = v15;
  v17 = swift_task_alloc();
  v18 = sub_105D8(v17);
  *v18 = v24;
  v18[1] = sub_F71C;

  return sub_F65C(v16, v14 + 16, sub_F65C, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_F8A8()
{
  v1 = *(v0 + 32);

  sub_102AC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t *sub_F8E4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_F9FC;

  return sub_C73C(a2, a3, a4, a5);
}

uint64_t sub_F9FC()
{
  sub_102D8();
  v2 = v1;
  sub_102F8();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_10078();
  *v7 = v6;

  *v5 = v2;
  sub_103E8();

  return v8();
}

uint64_t sub_FAF8()
{
  sub_10558();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  v9 = sub_102C8(v8);
  *v9 = v10;
  v9[1] = sub_10008;

  return sub_F944(v4, v2, v7, v5, v6);
}

uint64_t sub_FBBC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_FCB0;

  return v6(v2 + 16);
}

uint64_t sub_FCB0()
{
  sub_106BC();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  sub_10078();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_FDD4()
{
  sub_10558();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_102C8(v6);
  *v7 = v8;
  v7[1] = sub_E7D8;
  sub_10784();

  return sub_113E8(v9, v10, v11, v3, v4, v5);
}

uint64_t sub_FE8C()
{
  sub_106BC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_102C8(v3);
  *v4 = v5;
  v6 = sub_10254(v4);

  return v7(v6);
}

uint64_t sub_FF20(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_FF68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_FF20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_FFB0()
{
  result = qword_1C530;
  if (!qword_1C530)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C530);
  }

  return result;
}

uint64_t sub_100F0(unint64_t *a1)
{

  return sub_2F90(a1, v2, v1);
}

uint64_t sub_1012C@<X0>(uint64_t a1@<X8>)
{
  v2[25] = v1;
  v2[22] = 0xD000000000000017;
  v2[23] = a1;

  return sub_117A0();
}

uint64_t sub_10158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(a1 + 16) = v15;
  *(a1 + 24) = a13;
  *(a1 + 32) = v14;
  *(a1 + 40) = a14;

  return _objc_retain_x28();
}

uint64_t sub_1019C@<X0>(uint64_t a1@<X8>)
{
  v2[49] = v1;
  v2[46] = 0xD000000000000017;
  v2[47] = a1;

  return sub_117A0();
}

id sub_101E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a1 + 16) = v17;
  *(a1 + 24) = a15;
  *(a1 + 32) = v16;
  *(a1 + 40) = a16;

  return v17;
}

uint64_t sub_10204(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10228()
{
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];

  return sub_203C(v1, 0x17uLL, 2);
}

uint64_t sub_10254(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10284()
{
  v3 = *(v0 + 592);

  return sub_117D0();
}

uint64_t sub_10304()
{
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v6 = *(v0 + 400);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v9 = *(v0 + 368);
  v11 = *(v0 + 612);

  return sub_C360(v7, v8, v9, v6, v4, v5, v2);
}

void *sub_10330@<X0>(unint64_t a1@<X8>)
{

  return sub_F314((a1 > 1), v2, 1, v1);
}

uint64_t sub_10354()
{
  v2 = *(v0 + 592);

  return sub_117D0();
}

void *sub_10378()
{
  v2 = v0[2] + 1;

  return sub_F314(0, v2, 1, v0);
}

void sub_103D0()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
}

uint64_t sub_103E8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10400(uint64_t result)
{
  *(result + 8) = sub_CCD0;
  v2 = *(v1 + 168);
  v3 = *(v1 + 152);
  return result;
}

void sub_10428(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = sub_3B90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

void sub_10448()
{
  v6 = *(v0 + 848);
  v7 = *(v0 + 856);
  v1 = *(v0 + 840);
  v2 = *(v0 + 912);
  v3 = *(v0 + 824);
  v8 = *(v0 + 792);
  v9 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v10 = *(v0 + 760);
}

NSString sub_1049C()
{

  return sub_118C0();
}

void sub_104D0()
{
  v2 = *(v1 + 16);
  v3 = *(v0 + 832);
  v4 = *(v0 + 912);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v10 = *(v0 + 916);
  v7 = *(v0 + 736);
  v9 = *(v0 + 728);
  v8 = *(v0 + 720);
}

void sub_10528()
{
  v2 = *(v0 + 16);
  v3 = *(v1 + 912);
  v4 = *(v1 + 824);
  v5 = *(v1 + 816);
  v10 = *(v1 + 916);
  v6 = *(v1 + 736);
  v8 = *(v1 + 832);
  v9 = *(v1 + 728);
  v7 = *(v1 + 720);
}

uint64_t sub_10574(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_10580()
{

  return sub_117D0();
}

uint64_t sub_105B8()
{

  return swift_allocObject();
}

void sub_105FC()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
}

uint64_t sub_1061C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_FF68(a1, a2, a3);
}

__n128 *sub_10640(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x5465636976726573;
  result[2].n128_u64[1] = 0xEB00000000657079;
  return result;
}

uint64_t sub_10668(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t sub_10690(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 312);
  v4 = *(v2 + 288);
  return result;
}

uint64_t sub_106C8()
{

  return AMSError();
}

uint64_t sub_10708()
{
  v2 = *(v0 + 744);

  return sub_117D0();
}

uint64_t sub_10740()
{
  v2 = *(v0 + 744);

  return sub_117D0();
}

void sub_107C0()
{
  v1 = v0[105];
  v2 = v0[95];
  v4 = v0[93];
  v3 = 3 * v0[103];
}

void sub_107E0()
{
  v1 = v0[105];
  v2 = v0[95];
  v4 = v0[93];
  v3 = 3 * v0[103];
}

uint64_t sub_1080C()
{
  v3 = v1[96];
  v4 = v1[93];
  v5 = 3 * v1[103];
  v6 = *(v0 + 32);

  return swift_getErrorValue();
}

uint64_t sub_10874()
{

  return swift_allocObject();
}

uint64_t sub_1088C()
{

  return sub_117E0();
}

__n128 sub_108A4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

uint64_t *sub_108B0()
{
  v2 = v0[58];
  v0[29] = v0[59];

  return sub_F8E4(v0 + 26);
}

uint64_t *sub_108CC()
{
  v2 = v0[61];
  v0[41] = v0[62];

  return sub_F8E4(v0 + 38);
}

uint64_t sub_108E8()
{
  v3 = v1[77];
  v4 = v1[75];
  v5 = v1[74];
  v6 = *(v0 + 32);

  return swift_getErrorValue();
}

uint64_t sub_10914()
{
  v3 = v0[77];
  v4 = v0[75];
  v5 = v0[74];
  v6 = *(v1 + 32);

  return swift_getErrorValue();
}

id sub_1094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a1 + 32) = v9;
  *(a1 + 40) = a9;

  return v10;
}

uint64_t sub_10968@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 272) = v1;
  *(v2 + 280) = a1;

  return sub_117A0();
}

uint64_t sub_109A8()
{
  v2 = *(v0 + 612);
  v3 = *(v0 + 432);
  v5 = *(v0 + 416);

  return sub_11840();
}

void sub_109F8()
{
  v2 = *(v1 + 16);
  v3 = *(v0 + 744);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
}

uint64_t sub_10A14()
{
  v2 = *(v0 + 656);
}

void sub_10A3C()
{
  v2 = *(v0 + 16);
  v3 = *(v1 + 744);
  v4 = *(v1 + 584);
  v5 = *(v1 + 576);
  v6 = *(v1 + 568);
}

uint64_t sub_10A58()
{

  return sub_11790();
}

uint64_t sub_10A74()
{

  return sub_11790();
}

void sub_10A90()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[96];
  v4 = v0[93];
  v5 = 3 * v0[103];
}

NSString sub_10AAC()
{

  return sub_118C0();
}

uint64_t sub_10AC8()
{
  v2 = *(v0 + 612);
  v3 = *(v0 + 432);
  v5 = *(v0 + 416);

  return sub_11840();
}

uint64_t sub_10AF4@<X0>(uint64_t a1@<X8>)
{
  v1[78] = a1;
  v1[75] = 0xD000000000000015;
  v1[76] = v2;

  return sub_117A0();
}

uint64_t sub_10B48()
{
  *(v0 + 16) = v1;
  *(v0 + 32 + 8 * v2) = v4;
  v6 = v3[108];
  v7 = v3[101];
  v8 = v3[100];
}

uint64_t sub_10B70@<X0>(uint64_t a1@<X8>)
{
  v1[54] = a1;
  v1[51] = 0xD000000000000015;
  v1[52] = v2;

  return sub_117A0();
}

uint64_t sub_10B98()
{

  return sub_117D0();
}

uint64_t sub_10BC0()
{

  return sub_117D0();
}

__n128 *sub_10C3C(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result[1] = a2;
  *(v15 + 400) = a15;
  return result;
}

void sub_10C54()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
}

uint64_t sub_10CB4()
{

  return sub_117D0();
}

void sub_10CD0()
{
}

id sub_10CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(a1 + 16) = a13;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;

  return a13;
}

uint64_t sub_10D0C()
{

  return AMSErrorWithMultipleUnderlyingErrors();
}

uint64_t sub_10D30()
{

  return sub_117D0();
}

void sub_10D48()
{
}

__n128 *sub_10D98(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result[1] = a2;
  *(v15 + 496) = a15;
  return result;
}

void sub_10DC4(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
}

__n128 sub_10DF0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

__n128 sub_10E04(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t *sub_10E80()
{
  v2 = v0[79];
  v0[58] = v0[80];

  return sub_F8E4(v0 + 55);
}

uint64_t sub_10EA0()
{
  v2 = *(v0 + 768);

  return sub_11840();
}

uint64_t sub_10EC0()
{
  v2 = *(v0 + 768);

  return sub_11840();
}

uint64_t sub_10EE0()
{
  v2 = *(v0 + 776);

  return sub_11840();
}

uint64_t sub_10F00()
{
  v2 = *(v0 + 776);

  return sub_11840();
}

uint64_t *sub_10F20()
{
  v2 = v0[82];
  v0[70] = v0[83];

  return sub_F8E4(v0 + 67);
}

uint64_t sub_10F40@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t *sub_10F60()
{
  v2 = v0[79];
  v0[58] = v0[80];

  return sub_F8E4(v0 + 55);
}

uint64_t *sub_10F80()
{
  v2 = v0[82];
  v0[70] = v0[83];

  return sub_F8E4(v0 + 67);
}

uint64_t sub_10FA0@<X0>(uint64_t a1@<X8>)
{
  v1[66] = a1;
  v1[63] = v3;
  v1[64] = v2;

  return sub_117A0();
}

uint64_t sub_10FC0@<X0>(uint64_t a1@<X8>)
{
  v1[66] = a1;
  v1[63] = v3;
  v1[64] = v2;

  return sub_117A0();
}

uint64_t sub_10FE0()
{
  *(v0 + 600) = v2;
  *(v0 + 608) = v1;

  return sub_117A0();
}

id sub_11000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = a13;

  return v14;
}

uint64_t sub_11020()
{

  return swift_allocObject();
}

NSArray sub_11038()
{

  return sub_11950();
}

uint64_t sub_11050()
{

  return sub_117A0();
}

uint64_t sub_11090(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_ECE8(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_111E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_A518(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_113E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_114E4;

  return v11(a6);
}

uint64_t sub_114E4(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_115E4, 0, 0);
}

uint64_t sub_115E4()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 24);
    v2 = v1;
  }

  else
  {
    v1 = 0;
  }

  **(v0 + 16) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_11660(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_11684, 0, 0);
}

uint64_t sub_11684()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = v1;
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}