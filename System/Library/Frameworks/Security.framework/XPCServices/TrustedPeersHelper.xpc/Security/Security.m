int main(int argc, const char **argv, const char **envp)
{
  zone = malloc_create_zone(0, 0);
  malloc_set_zone_name(zone, "ICU");
  u_setMemoryFunctions();
  type metadata accessor for CuttlefishCKOperationRunnerCreator();
  v4 = swift_allocObject();
  v5 = sub_10000200C(0, &qword_100297560, off_100275020);
  qword_1002B02E8 = sub_100002054(v4, v5, [objc_allocWithZone(OTPersonaActualAdapter) init], objc_msgSend(objc_allocWithZone(OTManagedConfigurationActualAdapter), "init"));
  v6 = sub_100216774();
  sub_1000025E4(v6, qword_100297200);
  sub_100002648(v6, qword_100297200);
  sub_100216764();
  qword_1002B02F0 = 0xD00000000000001CLL;
  *algn_1002B02F8 = 0x80000001002277B0;
  sub_100002680();
  v7 = sub_100216754();
  v8 = sub_100216C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting up", v9, 2u);
  }

  v10 = sub_1002167A4();
  signal(13, v10);
  v11 = objc_opt_self();
  v12 = [objc_allocWithZone(type metadata accessor for SetValueTransformer()) init];
  if (qword_100297220 != -1)
  {
    swift_once();
  }

  [v11 setValueTransformer:v12 forName:qword_1002B0310];

  qword_1002B0300 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1002B0308 = [objc_opt_self() serviceListener];
  [qword_1002B0308 setDelegate:qword_1002B0300];
  [qword_1002B0308 resume];
  return 0;
}

uint64_t sub_10000200C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_100002054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v22 = sub_100216CC4();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  (__chkstk_darwin)();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_100216CA4() - 8) + 64);
  (__chkstk_darwin)();
  v10 = *(*(sub_100216824() - 8) + 64);
  (__chkstk_darwin)();
  v11 = type metadata accessor for CuttlefishCKOperationRunnerCreator();
  v27[3] = v11;
  v27[4] = &off_10027F9F0;
  v27[0] = a1;
  type metadata accessor for ContainerMap();
  v12 = swift_allocObject();
  v13 = sub_1000023C4(v27, v11);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v13, v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v12[6] = v11;
  v12[7] = &off_10027F9F0;
  v12[3] = v18;
  sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
  sub_100216804();
  v26 = &_swiftEmptyArrayStorage;
  sub_100002414(&unk_10029D670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10001148C(&unk_1002977F0, &unk_100226580);
  sub_10000245C();
  sub_100216E34();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v12[2] = sub_100216CF4();
  v19 = sub_1000024C0(&_swiftEmptyArrayStorage);
  v20 = v24;
  v12[8] = v23;
  v12[9] = v20;
  v12[10] = v25;
  v12[11] = v19;
  sub_100006128(v27);
  return v12;
}

uint64_t sub_1000023C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100002414(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000245C()
{
  result = qword_10029D680;
  if (!qword_10029D680)
  {
    sub_100011534(&unk_1002977F0, &unk_100226580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D680);
  }

  return result;
}

unint64_t sub_1000024C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D90, &qword_10021D7A8);
    v3 = sub_100217144();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1000158D4(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t *sub_1000025E4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002648(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002680()
{
  sub_1002169B4();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = sub_100216074();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = sub_100216044();
  sub_1000027D8(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  sub_100002880(&v7, 65537);
  v5 = v4;
  sub_100002BF0(v7, v8);
  if (v5)
  {
  }

  else
  {
LABEL_6:
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

void sub_1000027D8(int *a1, int a2)
{
  sub_1002161B4();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_100216034();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_100216064();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_100216054();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

void sub_100002880(uint64_t *a1, int a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v18, 0, 15);
      sub_100002CF0(v18, a2, &v19);
      return;
    }

    v9 = *a1;

    sub_100002BF0(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000);
    sub_1002161A4();
    v6 = v19;
    sub_100002C44(*(v19 + 16), *(v19 + 24), v20, a2);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v19;
      a1[1] = v10;
      return;
    }

    goto LABEL_16;
  }

  if (!v7)
  {
    sub_100002BF0(v6, v5);
    v18[0] = v6;
    LOWORD(v18[1]) = v5;
    BYTE2(v18[1]) = BYTE2(v5);
    BYTE3(v18[1]) = BYTE3(v5);
    BYTE4(v18[1]) = BYTE4(v5);
    BYTE5(v18[1]) = BYTE5(v5);
    BYTE6(v18[1]) = BYTE6(v5);
    sub_100002CF0(v18, a2, &v19);
    v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
    *a1 = v18[0];
    a1[1] = v8;
    return;
  }

  v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100002BF0(v6, v5);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000);
  v12 = v6 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v6)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (sub_100216034() && __OFSUB__(v6, sub_100216064()))
    {
LABEL_20:
      __break(1u);
    }

    v13 = sub_100216074();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_100216014();

    v11 = v16;
  }

  if (v12 < v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_100002C44(v6, v6 >> 32, v11, a2);

  v10 = v11 | 0x4000000000000000;
  if (v2)
  {
LABEL_16:
    *a1 = v6;
    a1[1] = v10;
    return;
  }

  *a1 = v6;
  a1[1] = v10;
}

uint64_t sub_100002BF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100002C44(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_100216034();
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216064();
    v10 = a1 - v9;
    if (__OFSUB__(a1, v9))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_100216054();
      sub_100002CF0((v8 + v10), a4, &v11);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100002CF0(char *a1@<X0>, int a2@<W2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    if (qword_100297238 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_100297DD8);
    v8 = sub_100216754();
    v9 = sub_100216C74();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed to bind memory", v10, 2u);
    goto LABEL_12;
  }

  sub_100216794();
  if (confstr(a2, a1, 0x400uLL) > 0)
  {
    *a3 = sub_100216A24();
    a3[1] = v6;
    return;
  }

  if (qword_100297238 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_100297DD8);
  v8 = sub_100216754();
  v12 = sub_100216C74();
  if (os_log_type_enabled(v8, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = a2;
    *(v13 + 8) = 1024;
    *(v13 + 10) = sub_100216784();
    _os_log_impl(&_mh_execute_header, v8, v12, "confstr %d failed: %d", v13, 0xEu);
LABEL_12:
  }

LABEL_13:

  *a3 = 0;
  a3[1] = 0;
}

NSString sub_100002F44()
{
  result = sub_100216964();
  qword_1002B0310 = result;
  return result;
}

id sub_100002F7C(void *a1, void *a2)
{
  v2 = [a1 machines];
  v3 = &_swiftEmptySetSingleton;
  if (v2)
  {
    v4 = v2;
    v33[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();
  }

  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216C04();
    v3 = v33[1];
    v5 = v33[2];
    v6 = v33[3];
    v7 = v33[4];
    v8 = v33[5];
  }

  else
  {
    v9 = -1 << *(&_swiftEmptySetSingleton + 32);
    v5 = &_swiftEmptySetSingleton + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(&_swiftEmptySetSingleton + 7));

    v7 = 0;
  }

  do
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      if (!sub_100216F14() || (type metadata accessor for MachineMO(), swift_dynamicCast(), (v12 = v33[0]) == 0))
      {
LABEL_19:
        sub_1001ACCA0();
      }
    }

    else
    {
      v14 = v7;
      v15 = v8;
      if (!v8)
      {
        while (1)
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v7 >= ((v6 + 64) >> 6))
          {
            goto LABEL_19;
          }

          v15 = *&v5[8 * v7];
          ++v14;
          if (v15)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
      }

LABEL_9:
      v8 = ((v15 - 1) & v15);
      v12 = *(*(v3 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v13 = [v12 allowed];
  }

  while ((v13 & 1) == 0);
  sub_1001ACCA0();
  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216C04();
    v18 = v33[6];
    v17 = v33[7];
    v19 = v33[8];
    v20 = v33[9];
    v21 = v33[10];
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
    v22 = -1 << *(&_swiftEmptySetSingleton + 32);
    v17 = &_swiftEmptySetSingleton + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = (v24 & *(&_swiftEmptySetSingleton + 7));

    v20 = 0;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (sub_100216F14())
  {
    type metadata accessor for MachineMO();
    swift_dynamicCast();
    v25 = v33[0];
    v26 = v20;
    v27 = v21;
    if (v33[0])
    {
      while (1)
      {
        if ([v25 allowed])
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        [v25 setStatus:v30];
        [v25 setAllowed:0];

        v20 = v26;
        v21 = v27;
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

LABEL_30:
        v28 = v20;
        v29 = v21;
        v26 = v20;
        if (!v21)
        {
          break;
        }

LABEL_34:
        v27 = (v29 - 1) & v29;
        v25 = *(*(v18 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v25)
        {
          goto LABEL_40;
        }
      }

      while (1)
      {
        v26 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
          goto LABEL_44;
        }

        if (v26 >= ((v19 + 64) >> 6))
        {
          break;
        }

        v29 = *&v17[8 * v26];
        ++v28;
        if (v29)
        {
          goto LABEL_34;
        }
      }
    }
  }

LABEL_40:
  sub_1001ACCA0();

  v33[0] = 0;
  if ([a2 save:v33])
  {
    return v33[0];
  }

  v31 = v33[0];
  sub_100216154();

  return swift_willThrow();
}

id sub_1000034AC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t *a8)
{
  v11 = a1;
  v12 = [a1 voucherInfo];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100216224();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xC000000000000000;
  }

  v17 = [v11 voucherInfoSig];
  v199 = a7;
  v200 = a6;
  if (v17)
  {
    v18 = v17;
    v19 = sub_100216224();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xC000000000000000;
  }

  isa = sub_100216204().super.isa;
  v23 = sub_100216204().super.isa;
  v24 = [objc_opt_self() voucherInfoWithData:isa sig:v23];

  sub_100002BF0(v19, v21);
  sub_100002BF0(v14, v16);
  if (!v24)
  {
    if (qword_100297558 != -1)
    {
      swift_once();
    }

    v35 = sub_100216774();
    sub_100002648(v35, qword_10029E8B0);
    v36 = a4;
    v37 = sub_100216754();
    v38 = sub_100216C74();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v207 = v40;
      *v39 = 136446210;
      v41 = [v36 peerID];
      if (v41)
      {
        v42 = v41;
        v43 = sub_100216974();
        v45 = v44;
      }

      else
      {
        v43 = 7104878;
        v45 = 0xE300000000000000;
      }

      v64 = sub_100005FB0(v43, v45, &v207);

      *(v39 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v37, v38, "voucher dedup unable to construct TPVoucher for peerID %{public}s, leaving in DB", v39, 0xCu);
      sub_100006128(v40);
    }

    goto LABEL_88;
  }

  v25 = v24;
  v26 = [v25 sponsorID];
  v27 = sub_100216974();
  v29 = v28;

  v30 = [a5 egoPeerID];
  v202 = v11;
  if (!v30)
  {

    goto LABEL_32;
  }

  v31 = v30;
  v32 = sub_100216974();
  v34 = v33;

  if (v27 == v32 && v29 == v34)
  {
  }

  else
  {
    v46 = sub_1002171A4();

    if ((v46 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v47 = [a5 egoSponsoredBeneficiaryIDs];
  if (v47)
  {
    v207 = 0;
    v48 = v47;
    sub_100216BA4();
  }

  v208 = &_swiftEmptySetSingleton;
  v49 = [v25 beneficiaryID];
  v50 = sub_100216974();
  v52 = v51;

  sub_10018B000(&v207, v50, v52);

  v53 = sub_100216B94().super.isa;

  [a5 setEgoSponsoredBeneficiaryIDs:v53];

  if (qword_100297558 != -1)
  {
    swift_once();
  }

  v54 = sub_100216774();
  sub_100002648(v54, qword_10029E8B0);
  v55 = a4;
  v56 = sub_100216754();
  v57 = sub_100216C94();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    *v58 = 136446466;
    v59 = [v55 peerID];
    if (v59)
    {
      v60 = v59;
      v61 = sub_100216974();
      v63 = v62;
    }

    else
    {
      v61 = 7104878;
      v63 = 0xE300000000000000;
    }

    v65 = sub_100005FB0(v61, v63, &v207);

    *(v58 + 4) = v65;
    *(v58 + 12) = 2082;

    v66 = sub_100216BC4();
    v68 = v67;

    v69 = sub_100005FB0(v66, v68, &v207);

    *(v58 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v56, v57, "found voucher that ego sponsored, added %{public}s to list of sponsored beneficiaries: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    v11 = v202;
  }

  else
  {

    v11 = v202;
  }

LABEL_32:
  v70 = [v25 beneficiaryID];
  v71 = sub_100216974();
  v73 = v72;

  v74 = [a4 peerID];
  if (v74)
  {
    v75 = v74;
    v76 = sub_100216974();
    v78 = v77;

    if (v71 == v76 && v73 == v78)
    {

LABEL_39:
      v80 = *a8;

      v81 = sub_100005D20(v25, v80);

      if (v81)
      {
        if (qword_100297558 != -1)
        {
          swift_once();
        }

        v82 = sub_100216774();
        sub_100002648(v82, qword_10029E8B0);
        v83 = v25;
        v84 = a4;
        v85 = sub_100216754();
        v86 = sub_100216C94();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v207 = swift_slowAlloc();
          *v87 = 136446978;
          v88 = [v84 peerID];
          if (v88)
          {
            v89 = v88;
            v90 = sub_100216974();
            v92 = v91;
          }

          else
          {
            v90 = 7104878;
            v92 = 0xE300000000000000;
          }

          v171 = sub_100005FB0(v90, v92, &v207);

          *(v87 + 4) = v171;
          *(v87 + 12) = 2082;
          v172 = [v83 sponsorID];
          v173 = sub_100216974();
          v175 = v174;

          v176 = sub_100005FB0(v173, v175, &v207);

          *(v87 + 14) = v176;
          *(v87 + 22) = 2082;
          v177 = [v83 beneficiaryID];
          v178 = sub_100216974();
          v180 = v179;

          v181 = sub_100005FB0(v178, v180, &v207);

          *(v87 + 24) = v181;
          *(v87 + 32) = 2050;
          v182 = [v83 reason];

          *(v87 + 34) = v182;
          _os_log_impl(&_mh_execute_header, v85, v86, "duplicate voucher for peerID %{public}s sponsorID %{public}s beneficiaryID %{public}s reason %{public}lu", v87, 0x2Au);
          swift_arrayDestroy();

          v11 = v202;
        }

        else
        {
        }

        v183 = v11;
        sub_100216B04();
        if (*((*v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v196 = *((*v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        goto LABEL_84;
      }

      v104 = v25;
      sub_100005CF8(&v207, v104);

      if (qword_100297558 != -1)
      {
        swift_once();
      }

      v105 = sub_100216774();
      sub_100002648(v105, qword_10029E8B0);
      v83 = v104;
      v106 = a4;
      v107 = sub_100216754();
      v108 = sub_100216C64();

      if (!os_log_type_enabled(v107, v108))
      {

LABEL_84:
        goto LABEL_88;
      }

      v109 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *v109 = 136446978;
      v110 = [v106 peerID];
      if (v110)
      {
        v111 = v110;
        v112 = sub_100216974();
        v114 = v113;
      }

      else
      {
        v112 = 7104878;
        v114 = 0xE300000000000000;
      }

      v184 = sub_100005FB0(v112, v114, &v207);

      *(v109 + 4) = v184;
      *(v109 + 12) = 2082;
      v185 = [v83 sponsorID];
      v186 = sub_100216974();
      v188 = v187;

      v189 = sub_100005FB0(v186, v188, &v207);

      *(v109 + 14) = v189;
      *(v109 + 22) = 2082;
      v190 = [v83 beneficiaryID];
      v191 = sub_100216974();
      v193 = v192;

      v194 = sub_100005FB0(v191, v193, &v207);

      *(v109 + 24) = v194;
      *(v109 + 32) = 2050;
      v195 = [v83 reason];

      *(v109 + 34) = v195;
      _os_log_impl(&_mh_execute_header, v107, v108, "voucher kept for peerID %{public}s sponsorID %{public}s beneficiaryID %{public}s reason %{public}lu", v109, 0x2Au);
      swift_arrayDestroy();

LABEL_87:
      v11 = v202;
LABEL_88:
      result = [v11 hasChanges];
      if ((result & 1) == 0)
      {
        return [a3 refreshObject:v11 mergeChanges:0];
      }

      return result;
    }

    v79 = sub_1002171A4();

    if (v79)
    {

      goto LABEL_39;
    }
  }

  else
  {
  }

  if (qword_100297558 != -1)
  {
    swift_once();
  }

  v93 = sub_100216774();
  sub_100002648(v93, qword_10029E8B0);
  v94 = v25;
  v95 = a4;
  v96 = sub_100216754();
  v97 = sub_100216C94();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    *v98 = 136446978;
    v99 = [v95 peerID];
    if (v99)
    {
      v100 = v99;
      v101 = sub_100216974();
      v103 = v102;
    }

    else
    {
      v101 = 7104878;
      v103 = 0xE300000000000000;
    }

    v115 = sub_100005FB0(v101, v103, &v207);

    *(v98 + 4) = v115;
    *(v98 + 12) = 2082;
    v116 = [v94 sponsorID];
    v117 = sub_100216974();
    v119 = v118;

    v120 = sub_100005FB0(v117, v119, &v207);

    *(v98 + 14) = v120;
    *(v98 + 22) = 2082;
    v121 = [v94 beneficiaryID];
    v122 = sub_100216974();
    v124 = v123;

    v125 = sub_100005FB0(v122, v124, &v207);

    *(v98 + 24) = v125;
    *(v98 + 32) = 2050;
    v126 = [v94 reason];

    *(v98 + 34) = v126;
    _os_log_impl(&_mh_execute_header, v96, v97, "voucher inconsistency for peerID %{public}s sponsorID %{public}s beneficiaryID %{public}s reason %{public}lu", v98, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v127 = objc_allocWithZone(NSFetchRequest);
  v128 = sub_100216964();
  v83 = [v127 initWithEntityName:v128];

  sub_100006174();
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_10021D420;
  *(v129 + 56) = type metadata accessor for ContainerMO();
  *(v129 + 64) = sub_100006208(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v129 + 32) = a5;
  v130 = a5;
  v131 = [v94 beneficiaryID];
  v132 = sub_100216974();
  v134 = v133;

  *(v129 + 96) = &type metadata for String;
  *(v129 + 104) = sub_100019BD0();
  *(v129 + 72) = v132;
  *(v129 + 80) = v134;
  v135 = sub_100216C34();
  [v83 setPredicate:v135];

  [v83 setFetchLimit:1];
  type metadata accessor for PeerMO();
  v136 = sub_100216D44();
  if (!v8)
  {
    v138 = v136;

    if (!v138)
    {
      v152 = v94;
      v153 = sub_100216754();
      v154 = sub_100216C74();

      v205 = v152;
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v207 = v156;
        *v155 = 136315138;
        v157 = [v152 beneficiaryID];
        v158 = sub_100216974();
        v160 = v159;

        v161 = sub_100005FB0(v158, v160, &v207);

        *(v155 + 4) = v161;
        _os_log_impl(&_mh_execute_header, v153, v154, "deleting voucher due to peerID not found: %s", v155, 0xCu);
        sub_100006128(v156);
      }

      v11 = v202;
      v162 = v202;
      sub_100216B04();
      if (*((*v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v198 = *((*v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100216B44();
      }

      sub_100216B64();

      goto LABEL_84;
    }

    v139 = sub_100216754();
    v140 = sub_100216C94();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "moving voucher", v141, 2u);
    }

    v142 = [v94 beneficiaryID];
    v143 = sub_100216974();
    v145 = v144;

    v146 = *v199;
    if (*(*v199 + 16))
    {
      v147 = sub_100015A28(v143, v145);
      v149 = v148;

      if (v149)
      {
        v150 = *(v146[7] + 8 * v147);

LABEL_76:
        v207 = v151;
        v163 = v202;
        sub_100216B04();
        if (*((v207 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v207 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v197 = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v164 = v207;
        v165 = [v94 beneficiaryID];
        v166 = sub_100216974();
        v168 = v167;

        v169 = *v199;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v208 = *v199;
        *v199 = 0x8000000000000000;
        sub_10018642C(v164, v166, v168, isUniquelyReferenced_nonNull_native);

        *v199 = v208;

        goto LABEL_87;
      }
    }

    else
    {
    }

    v151 = _swiftEmptyArrayStorage;
    goto LABEL_76;
  }

  result = [v202 hasChanges];
  if ((result & 1) == 0)
  {
    return [a3 refreshObject:v202 mergeChanges:0];
  }

  return result;
}

void sub_100004860(void *a1, void (*a2)(void *, char *), uint64_t a3, void (*a4)(unint64_t), uint64_t a5, void (*a6)(void))
{
  a6(0);
  v11 = sub_100216D44();
  if (v7)
  {
    if (qword_100297520 != -1)
    {
LABEL_41:
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);
    swift_errorRetain();
    v13 = sub_100216754();
    v14 = sub_100216C74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to fetch count for chunkwise enumeration: %{public}@", v15, 0xCu);
      sub_1000114D4(v16, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
  }

  else
  {
    v18 = v11;
    v19 = [a1 fetchBatchSize];
    if (v19)
    {
      v20 = v18 >= 0;
      if (v19 > 0)
      {
        v20 = v18 < 1;
      }

      if (!v20)
      {
        v21 = v18;
        v51 = a2;
        v22 = 0;
        v23 = &selRef_hasPeerWithID_error_;
        v24 = &type metadata for Any;
        v47 = a4;
        v45 = v19;
        v46 = a1;
        v50 = v21;
        while (1)
        {
          v25 = v19 + v22;
          if (__OFADD__(v22, v19))
          {
            v25 = ((v19 + v22) >> 63) ^ 0x8000000000000000;
          }

          v48 = v25;
          v53 = 0;
          v49 = objc_autoreleasePoolPush();
          [a1 v23[303]];
          sub_100216E24();
          swift_unknownObjectRelease();
          sub_10001148C(&qword_10029D5F0, &qword_100226530);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v26 = v24;
          v18 = v52;
          [v52 setFetchBatchSize:0];
          [v52 setFetchOffset:v22];
          if (__OFSUB__(v50, v22))
          {
            __break(1u);
            goto LABEL_43;
          }

          v27 = [a1 fetchBatchSize];
          if (v27 >= v50 - v22)
          {
            v28 = (v50 - v22);
          }

          else
          {
            v28 = v27;
          }

          [v52 setFetchLimit:v28];
          v29 = sub_100216D54();
          v30 = v29;
          v31 = v29 & 0xFFFFFFFFFFFFFF8;
          if (v29 >> 62)
          {
            v32 = sub_1002170F4();
          }

          else
          {
            v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v33 = 0;
          do
          {
            v34 = v33;
            if (v32 == v33)
            {
              break;
            }

            if ((v30 & 0xC000000000000001) != 0)
            {
              v35 = sub_100217014();
            }

            else
            {
              if (v33 >= *(v31 + 16))
              {
                goto LABEL_40;
              }

              v35 = *(v30 + 8 * v33 + 32);
            }

            v36 = v35;
            if (__OFADD__(v34, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v37 = objc_autoreleasePoolPush();
            v51(v36, &v53);
            objc_autoreleasePoolPop(v37);

            v33 = v34 + 1;
            v26 = &type metadata for Any;
          }

          while ((v53 & 1) == 0);

          v47(v30);

          [v6 refreshAllObjects];

          objc_autoreleasePoolPop(v49);
          if (v32 == v34)
          {
            v22 = v48;
            v38 = v50 >= v48;
            v19 = v45;
            a1 = v46;
            if (v45 > 0)
            {
              v38 = v48 >= v50;
            }

            v23 = &selRef_hasPeerWithID_error_;
            v24 = v26;
            if (!v38)
            {
              continue;
            }
          }

          return;
        }

        sub_1002170E4();
        __break(1u);
      }
    }

    else
    {
LABEL_43:
      __break(1u);
      swift_once();
      v39 = sub_100216774();
      sub_100002648(v39, qword_10029D160);
      swift_errorRetain();
      v40 = sub_100216754();
      v41 = sub_100216C74();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failed to fetch for chunkwise enumeration: %{public}@", v42, 0xCu);
        sub_1000114D4(v43, &qword_10029D580, &unk_10021CCC0);
      }

      swift_willThrow();
      objc_autoreleasePoolPop(v49);
    }
  }
}

void sub_100004F38(int64_t a1, __objc2_prop *a2, id a3)
{
  v4 = v3;
  if (qword_100297558 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v8 = sub_100216774();
    v9 = sub_100002648(v8, qword_10029E8B0);
    v10 = a1;
    v11 = sub_100216754();
    v12 = sub_100216C94();

    v13 = os_log_type_enabled(v11, v12);
    v65 = v9;
    if (v13)
    {
      v67 = a3;
      v68 = a2;
      v14 = v4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v72 = v16;
      *v15 = 136446210;
      v17 = [v10 peerID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_100216974();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v4 = v14;
      v22 = sub_100005FB0(v19, v21, &v72);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "cleaning up vouchers for peer %{public}s", v15, 0xCu);
      sub_100006128(v16);

      a3 = v67;
      a2 = v68;
    }

    else
    {
    }

    v72 = &_swiftEmptySetSingleton;
    v71 = _swiftEmptyArrayStorage;
    v70 = &_swiftEmptyDictionarySingleton;
    v23 = objc_allocWithZone(NSFetchRequest);
    v24 = sub_100216964();
    v25 = [v23 initWithEntityName:v24];

    sub_100006174();
    sub_10001148C(&qword_100297D30, &qword_1002270B0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10021D600;
    *(v26 + 56) = type metadata accessor for PeerMO();
    *(v26 + 64) = sub_100006208(&qword_10029E8C8, type metadata accessor for PeerMO);
    *(v26 + 32) = v10;
    v27 = v10;
    v28 = sub_100216C34();
    [v25 setPredicate:v28];

    sub_10001148C(&qword_10029D150, &qword_100226560);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10021D420;
    *(v29 + 32) = 0x4972656863756F76;
    *(v29 + 40) = 0xEB000000006F666ELL;
    *(v29 + 88) = &type metadata for String;
    *(v29 + 56) = &type metadata for String;
    strcpy((v29 + 64), "voucherInfoSig");
    *(v29 + 79) = -18;
    isa = sub_100216B14().super.isa;

    [v25 setPropertiesToFetch:isa];

    v31 = [v25 setFetchBatchSize:10];
    __chkstk_darwin(v31, v32);
    v64[2] = a3;
    v64[3] = v27;
    v64[4] = a2;
    v64[5] = &v71;
    v64[6] = &v70;
    v64[7] = &v72;
    sub_1000060FC(v25, sub_100004F14, v64, EscrowCheckGraphStatus.rawValue.getter, 0);
    if (v4)
    {

LABEL_35:

      return;
    }

    v33 = v71;
    v67 = 0;
    v68 = a2;
    v66 = v25;
    if (v71 >> 62)
    {
      v34 = sub_1002170F4();
    }

    else
    {
      v34 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a3 = a3;
    if (v34)
    {
      v35 = 0;
      a1 = v33 & 0xC000000000000001;
      v36 = v33 & 0xFFFFFFFFFFFFFF8;
      a2 = &stru_100292000;
      while (1)
      {
        if (a1)
        {
          v37 = v33;
          v38 = sub_100217014();
        }

        else
        {
          if (v35 >= *(v36 + 16))
          {
            goto LABEL_38;
          }

          v37 = v33;
          v38 = *(v33 + 8 * v35 + 32);
        }

        v39 = v38;
        v4 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        [a3 deleteObject:v38];

        ++v35;
        v33 = v37;
        if (v4 == v34)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_21:

    v69 = 0;
    if (![a3 save:&v69])
    {
      v54 = v69;
      sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      v55 = sub_100216754();
      v56 = sub_100216C74();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v66;
      if (v57)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138543362;
        swift_errorRetain();
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v61;
        *v60 = v61;
        _os_log_impl(&_mh_execute_header, v55, v56, "voucher cleanup unable to save %{public}@", v59, 0xCu);
        sub_10005707C(v60);
      }

      swift_willThrow();
      goto LABEL_35;
    }

    v64[8] = v33;
    v40 = v70;
    a2 = v70 + 4;
    v41 = 1 << LOBYTE(v70[2].name);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v4 = v42 & v70[4].name;
    v43 = (v41 + 63) >> 6;
    v44 = v69;
    v65 = v40;

    v45 = 0;
    v46 = v66;
    if (v4)
    {
      break;
    }

LABEL_26:
    while (1)
    {
      a1 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (a1 >= v43)
      {

        v62 = v65;

        v63 = *(v62 + 16);

        return;
      }

      v4 = *(&a2->name + a1);
      ++v45;
      if (v4)
      {
        goto LABEL_29;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  while (1)
  {
    a1 = v45;
LABEL_29:
    v47 = __clz(__rbit64(v4)) | (a1 << 6);
    v48 = (*(v65 + 48) + 16 * v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(*(v65 + 56) + 8 * v47);

    v52 = objc_autoreleasePoolPush();
    v53 = v67;
    sub_100201360(a3, v68, v49, v50, v51);
    v67 = v53;
    if (v53)
    {
      break;
    }

    v4 &= v4 - 1;
    objc_autoreleasePoolPop(v52);

    v45 = a1;
    v46 = v66;
    if (!v4)
    {
      goto LABEL_26;
    }
  }

  objc_autoreleasePoolPop(v52);
  __break(1u);
}

uint64_t sub_1000056E8(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_100216EF4();

    if (v17)
    {

      sub_10000200C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_100216ED4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_10018B85C(v15, result + 1, a5, a6, a3, a4);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_100188D90(v29 + 1, a5, a6);
        }

        v30 = v16;
        sub_100188FB0(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_10000200C(0, a3, a4);
    v19 = sub_100216DB4(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_100216DC4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v27 = a2;
      sub_100005B68(v27, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v38;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10000595C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10001148C(a2, a3);
  result = sub_100216F94();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_100216DB4(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

void sub_100005B68(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100188D90(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10018C604(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10000595C(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_100216DB4(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_10000200C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_100216DC4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1002171B4();
  __break(1u);
}

uint64_t sub_100005D20(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100216F24();
  }

  else if (*(a2 + 16) && (sub_10000200C(0, &qword_10029D640, TPVoucher_ptr), v5 = sub_100216DB4(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_100216DC4();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100005E68(int64_t a1)
{
  v3 = *(v1 + 16);
  sub_100004F38(a1, *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *v3 = (v4 | *v3) & 1;
  }
}

unint64_t sub_100005EA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1001B436C(a5, a6);
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
    result = sub_100217034();
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

uint64_t sub_100005FB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005EA4(v11, 0, 0, 1, a1, a2);
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
    sub_1000060A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006128(v11);
  return v7;
}

uint64_t sub_1000060A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006128(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100006174()
{
  result = qword_10029D570;
  if (!qword_10029D570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10029D570);
  }

  return result;
}

uint64_t sub_1000061C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000625C(uint64_t a1, void (*a2)(uint64_t *))
{
  v5[3] = sub_10001148C(&qword_10029E8D0, qword_1002272A0);
  v5[4] = sub_1000062F8();
  v5[0] = a1;

  a2(v5);
  return sub_100006128(v5);
}

unint64_t sub_1000062F8()
{
  result = qword_10029E8D8;
  if (!qword_10029E8D8)
  {
    sub_100011534(&qword_10029E8D0, qword_1002272A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E8D8);
  }

  return result;
}

uint64_t sub_10000635C(void *a1, void *a2)
{
  v3 = a1[4];
  sub_100006484(a1, a1[3]);
  *(swift_allocObject() + 16) = a2;
  v4 = a2;
  sub_100216AF4();
}

uint64_t sub_100006448()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100006484(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000064E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_10000652C(void *a1, void *a2)
{
  result = [a1 hasChanges];
  if ((result & 1) == 0)
  {

    return [a2 refreshObject:a1 mergeChanges:0];
  }

  return result;
}

id sub_100006598(void *a1)
{
  v3 = *(v1 + 16);
  result = [a1 hasChanges];
  if ((result & 1) == 0)
  {

    return [v3 refreshObject:a1 mergeChanges:0];
  }

  return result;
}

void *sub_10000666C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100006760()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000067A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000680C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000684C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006884()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000068CC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006920()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006988()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000069F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006A2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100006A7C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006AD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100006B24()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006B5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006B94()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006C04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006C3C()
{
  v1 = sub_100216384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = *(v0 + v6 + 8);

  v10(v0 + v7, v1);
  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + v9);

  v14 = *(v0 + v19 + 8);

  v15 = *(v0 + v20 + 8);

  v16 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16, v3 | 7);
}

uint64_t sub_100006E18()
{
  updated = type metadata accessor for UpdateTrustRequest(0);
  v2 = *(*(updated - 1) + 80);
  v28 = *(*(updated - 1) + 64);
  v29 = (v2 + 16) & ~v2;
  v30 = v0;
  v3 = v0 + v29;
  v4 = *(v0 + v29 + 8);

  v5 = *(v0 + v29 + 24);

  v6 = *(v0 + v29 + 32);

  v7 = *(v0 + v29 + 40);

  v8 = updated[8];
  v9 = sub_1002164D4();
  v10 = *(*(v9 - 8) + 8);
  v10(v3 + v8, v9);
  v11 = v3 + updated[9];
  v12 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    sub_100002BF0(*v11, *(v11 + 8));
    sub_100002BF0(*(v11 + 16), *(v11 + 24));
    v10(v11 + *(v12 + 24), v9);
  }

  v13 = v3 + updated[10];
  v14 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    sub_100002BF0(*v13, *(v13 + 8));
    sub_100002BF0(*(v13 + 16), *(v13 + 24));
    v10(v13 + *(v14 + 24), v9);
  }

  v15 = v3 + updated[11];
  v16 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v15 + 8);

    v10(v15 + *(v16 + 20), v9);
    v18 = *(v16 + 24);
    v19 = sub_1002164A4();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v15 + v18, 1, v19))
    {
      (*(v20 + 8))(v15 + v18, v19);
    }
  }

  v21 = v3 + updated[12];
  v22 = type metadata accessor for Metrics(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = *(v21 + 8);

    v24 = *(v21 + 24);

    v10(v21 + *(v22 + 24), v9);
  }

  v25 = v3 + updated[13];
  v26 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v10(v25 + *(v26 + 20), v9);
  }

  return _swift_deallocObject(v30, v29 + v28, v2 | 7);
}

uint64_t sub_1000071E4()
{
  v1 = type metadata accessor for SetRecoveryKeyRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  sub_100002BF0(*(v4 + 32), *(v4 + 40));
  sub_100002BF0(*(v4 + 48), *(v4 + 56));
  v7 = *(v0 + v3 + 64);

  v8 = *(v0 + v3 + 72);

  v9 = v1[10];
  v10 = sub_1002164D4();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);
  v12 = v0 + v3 + v1[11];
  v13 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_100002BF0(*v12, *(v12 + 8));
    sub_100002BF0(*(v12 + 16), *(v12 + 24));
    v11(v12 + *(v13 + 24), v10);
  }

  v14 = v4 + v1[12];
  v15 = type metadata accessor for Metrics(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v14 + 8);

    v17 = *(v14 + 24);

    v11(v14 + *(v15 + 24), v10);
  }

  v18 = v4 + v1[13];
  v19 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v11(v18 + *(v19 + 20), v10);
  }

  return _swift_deallocObject(v0, v3 + v21, v2 | 7);
}

uint64_t sub_1000074B0()
{
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v2 = *(*(RepairActionRequest - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(RepairActionRequest - 1) + 64);
  v4 = *(v0 + v3 + 8);

  v5 = *(v0 + v3 + 24);

  v6 = RepairActionRequest[11];
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + RepairActionRequest[12];
  v10 = type metadata accessor for Metrics(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = *(v9 + 8);

    v12 = *(v9 + 24);

    v8(v9 + *(v10 + 24), v7);
  }

  v13 = v0 + v3 + RepairActionRequest[13];
  v14 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v8(v13 + *(v14 + 20), v7);
  }

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_1000076A0()
{
  v1 = type metadata accessor for GetEscrowCheckRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = *(v0 + v3 + 8);

  v5 = *(v0 + v3 + 32);

  v6 = v1[11];
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + v1[12];
  v10 = type metadata accessor for Metrics(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = *(v9 + 8);

    v12 = *(v9 + 24);

    v8(v9 + *(v10 + 24), v7);
  }

  v13 = v0 + v3 + v1[13];
  v14 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v8(v13 + *(v14 + 20), v7);
  }

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_1000078F0()
{
  v1 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[6];
  v8 = sub_1002164D4();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = v0 + v3 + v1[7];
  v11 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_100002BF0(*v10, *(v10 + 8));
    sub_100002BF0(*(v10 + 16), *(v10 + 24));
    v9(v10 + *(v11 + 24), v8);
  }

  v12 = v4 + v1[8];
  v13 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_100002BF0(*v12, *(v12 + 8));
    sub_100002BF0(*(v12 + 16), *(v12 + 24));
    v9(v12 + *(v13 + 24), v8);
  }

  v14 = v4 + v1[9];
  v15 = type metadata accessor for Metrics(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v14 + 8);

    v17 = *(v14 + 24);

    v9(v14 + *(v15 + 24), v8);
  }

  v18 = v4 + v1[10];
  v19 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v9(v18 + *(v19 + 20), v8);
  }

  return _swift_deallocObject(v0, v3 + v21, v2 | 7);
}

uint64_t sub_100007BC8()
{
  v1 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = v0 + v3 + *(v1 + 20);
  v7 = type metadata accessor for Metrics(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = *(v6 + 8);

    v9 = *(v6 + 24);

    v5(v6 + *(v7 + 24), v4);
  }

  v10 = v0 + v3 + *(v1 + 24);
  v11 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v5(v10 + *(v11 + 20), v4);
  }

  return _swift_deallocObject(v0, v3 + v13, v2 | 7);
}

unint64_t sub_100007FD8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_100007FF0()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_10000800C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_100008028(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_100008048(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

unint64_t sub_100008084@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_10000809C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1000080B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_10021D470;
  a2[1] = xmmword_10021D470;
  v2 = a2 + *(a1 + 24);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_100008184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 20);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_100008268@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 24);
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t _s18TrustedPeersHelper12ViewKeyClassOwet_0(uint64_t a1, int a2)
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

uint64_t _s18TrustedPeersHelper12ViewKeyClassOwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_10000830C(uint64_t a1)
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

uint64_t sub_100008328(uint64_t result, int a2)
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

uint64_t sub_100008360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100008490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000085C0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v14 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v15 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v17 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_100008840(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v14 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v15 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v17 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100008AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1002164D4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100008BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1002164D4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100008CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008D70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008EF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100009048(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000090EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D820, &unk_10021E840);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100009228(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D820, &unk_10021E840);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000093B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v14 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v15 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v17 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_100009634(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v14 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v15 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v17 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[13];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1000098B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_100009A8C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100009C64(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_100009E90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10000A12C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_10000A1D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000A3EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000A51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1002164D4();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 36);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_10001148C(&unk_10029D720, &qword_10021E868);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 40);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_10000A64C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D720, &qword_10021E868);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000A7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000A8D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000AA00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10000AAAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000AB50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_10000ACD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10000AE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000AF88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000B0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000B2B0(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  v10 = sub_1002164D4();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(&a1[v13], a2, v11);
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v16 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[7]];

  return v17(v18, a2, v16);
}

_BYTE *sub_10000B434(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10000B818()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B850()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B890()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B8C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B910()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B964()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  v8 = *(v0 + 40);

  v9 = *(v0 + 64);

  v10 = *(v0 + 80);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  v12 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, (v6 + 19) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_10000BA94()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 24);

  v8 = *(v0 + 48);

  v9 = *(v0 + 64);

  v10 = *(v0 + 88);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  v12 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, (v6 + 19) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_10000BBCC()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_10000BCF8()
{
  v1 = (type metadata accessor for AddCustodianRecoveryKeyResponse(0) - 8);
  v2 = *(*v1 + 80);
  v25 = *(*v1 + 64);
  v26 = sub_1002163D4();
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v24 = *(v3 + 64);

  v5 = (v0 + ((v2 + 24) & ~v2));
  v6 = *v5;

  v7 = v1[7];
  v8 = sub_1002164D4();
  v9 = *(*(v8 - 8) + 8);
  v9(&v5[v7], v8);
  v10 = &v5[v1[8]];
  v11 = type metadata accessor for Changes(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = *(v10 + 1);

    v13 = *(v10 + 2);

    sub_100002BF0(*(v10 + 3), *(v10 + 4));
    sub_100002BF0(*(v10 + 5), *(v10 + 6));
    v9(&v10[*(v11 + 36)], v8);
  }

  v14 = (((v2 + 24) & ~v2) + v25 + v4) & ~v4;
  v15 = (v24 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (((v17 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v14, v26);
  v19 = *(v0 + v15);

  v20 = *(v0 + v16 + 8);

  v21 = *(v0 + v17 + 8);

  v22 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16, v2 | v4 | 7);
}

uint64_t sub_10000BF70()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BFA8()
{
  v1 = (type metadata accessor for FetchPolicyDocumentsResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[7];
  v9 = sub_1002164D4();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_10000C0C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000C120()
{
  v1 = *(v0 + 24);

  if (*(v0 + 48) != 1)
  {

    v2 = *(v0 + 64);

    v3 = *(v0 + 80);

    v4 = *(v0 + 104);
  }

  return _swift_deallocObject(v0, 145, 7);
}

uint64_t sub_10000C1A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10000C210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  sub_100002BF0(*(v0 + 96), *(v0 + 104));
  sub_100002BF0(*(v0 + 112), *(v0 + 120));
  sub_100002BF0(*(v0 + 128), *(v0 + 136));
  sub_100002BF0(*(v0 + 144), *(v0 + 152));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10000C2A0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  sub_100002BF0(*(v0 + 104), *(v0 + 112));
  sub_100002BF0(*(v0 + 120), *(v0 + 128));
  sub_100002BF0(*(v0 + 136), *(v0 + 144));
  sub_100002BF0(*(v0 + 152), *(v0 + 160));

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_10000C338()
{
  v1 = type metadata accessor for Peer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v27 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = v1[6];
  v8 = sub_1002164D4();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = v0 + v3 + v1[7];
  v11 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_100002BF0(*v10, *(v10 + 8));
    sub_100002BF0(*(v10 + 16), *(v10 + 24));
    v9(v10 + *(v11 + 24), v8);
  }

  v12 = v4 + v1[8];
  v13 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_100002BF0(*v12, *(v12 + 8));
    sub_100002BF0(*(v12 + 16), *(v12 + 24));
    v9(v12 + *(v13 + 24), v8);
  }

  v14 = v4 + v1[9];
  v15 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    sub_100002BF0(*v14, *(v14 + 8));
    sub_100002BF0(*(v14 + 16), *(v14 + 24));
    v9(v14 + *(v15 + 24), v8);
  }

  v16 = v4 + v1[10];
  v17 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    sub_100002BF0(*v16, *(v16 + 8));
    sub_100002BF0(*(v16 + 16), *(v16 + 24));
    v9(v16 + *(v17 + 24), v8);
  }

  v18 = v4 + v1[11];
  v19 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    sub_100002BF0(*v18, *(v18 + 8));
    sub_100002BF0(*(v18 + 16), *(v18 + 24));
    v9(v18 + *(v19 + 24), v8);
  }

  v20 = (v27 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;

  v24 = *(v0 + v22 + 8);

  v25 = *(v0 + v23 + 8);

  return _swift_deallocObject(v0, v23 + 16, v2 | 7);
}

uint64_t sub_10000C6E8()
{
  v1 = type metadata accessor for Peer(0);
  v34 = *(*(v1 - 1) + 80);
  v2 = (v34 + 24) & ~v34;
  v31 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = type metadata accessor for JoinWithVoucherResponse(0);
  v35 = *(*(v32 - 8) + 80);
  v33 = *(*(v32 - 8) + 64);

  v3 = v0 + v2;
  v4 = *(v0 + v2 + 8);

  v5 = *(v0 + v2 + 16);

  v6 = v1[6];
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v9 = v3 + v1[7];
  v10 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    sub_100002BF0(*v9, *(v9 + 8));
    sub_100002BF0(*(v9 + 16), *(v9 + 24));
    v8(v9 + *(v10 + 24), v7);
  }

  v11 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v3 + v1[8];
  v13 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_100002BF0(*v12, *(v12 + 8));
    sub_100002BF0(*(v12 + 16), *(v12 + 24));
    v8(v12 + *(v13 + 24), v7);
  }

  v14 = v3 + v1[9];
  v15 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    sub_100002BF0(*v14, *(v14 + 8));
    sub_100002BF0(*(v14 + 16), *(v14 + 24));
    v8(v14 + *(v15 + 24), v7);
  }

  v16 = v3 + v1[10];
  v17 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    sub_100002BF0(*v16, *(v16 + 8));
    sub_100002BF0(*(v16 + 16), *(v16 + 24));
    v8(v16 + *(v17 + 24), v7);
  }

  v18 = (v11 + v35 + 8) & ~v35;
  v19 = v3 + v1[11];
  v20 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    sub_100002BF0(*v19, *(v19 + 8));
    sub_100002BF0(*(v19 + 16), *(v19 + 24));
    v8(v19 + *(v20 + 24), v7);
  }

  v21 = *(v0 + v18);

  v8(v0 + v18 + *(v32 + 20), v7);
  v22 = (v0 + v18 + *(v32 + 24));
  v23 = type metadata accessor for Changes(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = v22[1];

    v25 = v22[2];

    sub_100002BF0(v22[3], v22[4]);
    sub_100002BF0(v22[5], v22[6]);
    v8(v22 + *(v23 + 36), v7);
  }

  v26 = (v33 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v0 + v26 + 8);

  v29 = *(v0 + v27 + 8);

  return _swift_deallocObject(v0, v27 + 16, v34 | v35 | 7);
}

uint64_t sub_10000CBC8()
{
  sub_100002BF0(*(v0 + 32), *(v0 + 40));
  sub_100002BF0(*(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  return _swift_deallocObject(v0, 161, 7);
}

uint64_t sub_10000CC5C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  sub_100002BF0(*(v0 + 120), *(v0 + 128));
  sub_100002BF0(*(v0 + 136), *(v0 + 144));
  v6 = *(v0 + 160);

  v7 = *(v0 + 176);

  v8 = *(v0 + 192);

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t sub_10000CD0C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 120);

  sub_100002BF0(*(v0 + 128), *(v0 + 136));
  sub_100002BF0(*(v0 + 144), *(v0 + 152));
  v6 = *(v0 + 168);

  v7 = *(v0 + 184);

  v8 = *(v0 + 200);

  return _swift_deallocObject(v0, 209, 7);
}

uint64_t sub_10000CDC4()
{
  v1 = type metadata accessor for Peer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 65) & ~v2;
  v30 = *(*(v1 - 1) + 64);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = v1[6];
  v10 = sub_1002164D4();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);
  v12 = v0 + v3 + v1[7];
  v13 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_100002BF0(*v12, *(v12 + 8));
    sub_100002BF0(*(v12 + 16), *(v12 + 24));
    v11(v12 + *(v13 + 24), v10);
  }

  v14 = v6 + v1[8];
  v15 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    sub_100002BF0(*v14, *(v14 + 8));
    sub_100002BF0(*(v14 + 16), *(v14 + 24));
    v11(v14 + *(v15 + 24), v10);
  }

  v16 = v6 + v1[9];
  v17 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    sub_100002BF0(*v16, *(v16 + 8));
    sub_100002BF0(*(v16 + 16), *(v16 + 24));
    v11(v16 + *(v17 + 24), v10);
  }

  v18 = v6 + v1[10];
  v19 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    sub_100002BF0(*v18, *(v18 + 8));
    sub_100002BF0(*(v18 + 16), *(v18 + 24));
    v11(v18 + *(v19 + 24), v10);
  }

  v20 = v6 + v1[11];
  v21 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    sub_100002BF0(*v20, *(v20 + 8));
    sub_100002BF0(*(v20 + 16), *(v20 + 24));
    v11(v20 + *(v21 + 24), v10);
  }

  v22 = (v30 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;

  v27 = *(v0 + v25 + 8);

  v28 = *(v0 + v26 + 8);

  return _swift_deallocObject(v0, v26 + 16, v2 | 7);
}

uint64_t sub_10000D19C()
{
  v1 = type metadata accessor for Peer(0);
  v37 = *(*(v1 - 1) + 80);
  v2 = (v37 + 72) & ~v37;
  v34 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = type metadata accessor for JoinWithVoucherResponse(0);
  v38 = *(*(v35 - 8) + 80);
  v36 = *(*(v35 - 8) + 64);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 16);

  v8 = v1[6];
  v9 = sub_1002164D4();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v11 = v5 + v1[7];
  v12 = type metadata accessor for SignedPeerPermanentInfo(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    sub_100002BF0(*v11, *(v11 + 8));
    sub_100002BF0(*(v11 + 16), *(v11 + 24));
    v10(v11 + *(v12 + 24), v9);
  }

  v13 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v5 + v1[8];
  v15 = type metadata accessor for SignedPeerStableInfo(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    sub_100002BF0(*v14, *(v14 + 8));
    sub_100002BF0(*(v14 + 16), *(v14 + 24));
    v10(v14 + *(v15 + 24), v9);
  }

  v16 = v5 + v1[9];
  v17 = type metadata accessor for SignedPeerDynamicInfo(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    sub_100002BF0(*v16, *(v16 + 8));
    sub_100002BF0(*(v16 + 16), *(v16 + 24));
    v10(v16 + *(v17 + 24), v9);
  }

  v18 = v5 + v1[10];
  v19 = type metadata accessor for SignedRecoveryVoucher(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    sub_100002BF0(*v18, *(v18 + 8));
    sub_100002BF0(*(v18 + 16), *(v18 + 24));
    v10(v18 + *(v19 + 24), v9);
  }

  v20 = (v13 + v38 + 8) & ~v38;
  v21 = v5 + v1[11];
  v22 = type metadata accessor for SignedCustodianRecoveryKey(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    sub_100002BF0(*v21, *(v21 + 8));
    sub_100002BF0(*(v21 + 16), *(v21 + 24));
    v10(v21 + *(v22 + 24), v9);
  }

  v23 = *(v0 + v20);

  v10(v0 + v20 + *(v35 + 20), v9);
  v24 = (v0 + v20 + *(v35 + 24));
  v25 = type metadata accessor for Changes(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v26 = v24[1];

    v27 = v24[2];

    sub_100002BF0(v24[3], v24[4]);
    sub_100002BF0(v24[5], v24[6]);
    v10(v24 + *(v25 + 36), v9);
  }

  v28 = (v36 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;

  v31 = *(v0 + v29 + 8);

  v32 = *(v0 + v30 + 8);

  return _swift_deallocObject(v0, v30 + 16, v37 | v38 | 7);
}

uint64_t sub_10000D6A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000D708()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000D780()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000D7F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000D860()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D8C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000D928()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000D9A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  sub_100002BF0(*(v0 + 112), *(v0 + 120));
  v6 = *(v0 + 136);

  v7 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10000DA18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 136);

  v7 = *(v0 + 144);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10000DAA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  v8 = *(v0 + 168);

  return _swift_deallocObject(v0, 177, 7);
}

uint64_t sub_10000DB48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  return _swift_deallocObject(v0, 153, 7);
}

uint64_t sub_10000DBD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10000DC40()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000DC98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000DCF0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000DD48()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000DDBC()
{
  sub_100006128((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DDF8()
{
  v1 = (type metadata accessor for UpdateTrustResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = (v0 + v3 + v1[8]);
  v10 = type metadata accessor for Changes(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = v9[1];

    v12 = v9[2];

    sub_100002BF0(v9[3], v9[4]);
    sub_100002BF0(v9[5], v9[6]);
    v8(v9 + *(v10 + 36), v7);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v13 + 8);

  v19 = *(v0 + v14);

  v20 = *(v0 + v15 + 8);

  v21 = *(v0 + v16);

  v22 = *(v0 + v17);

  return _swift_deallocObject(v0, ((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10000DFE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  v7 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10000E074()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 128);

  v6 = *(v0 + 136);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10000E12C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10000E1C8()
{
  v1 = (type metadata accessor for ResetResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = (v0 + v3 + v1[7]);
  v8 = type metadata accessor for Changes(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = v7[1];

    v10 = v7[2];

    sub_100002BF0(v7[3], v7[4]);
    sub_100002BF0(v7[5], v7[6]);
    v6(v7 + *(v8 + 36), v5);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v2 | 7);
}

uint64_t sub_10000E35C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000E3C8()
{
  v1 = (type metadata accessor for RemoveRecoveryKeyResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = (v0 + v3 + v1[7]);
  v8 = type metadata accessor for Changes(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = v7[1];

    v10 = v7[2];

    sub_100002BF0(v7[3], v7[4]);
    sub_100002BF0(v7[5], v7[6]);
    v6(v7 + *(v8 + 36), v5);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v2 | 7);
}

uint64_t sub_10000E574()
{
  v1 = *(v0 + 32);

  if (*(v0 + 56) != 1)
  {

    v2 = *(v0 + 72);

    v3 = *(v0 + 88);

    v4 = *(v0 + 112);
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10000E5F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E644()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000E6A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000E6F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E738()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000E790()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000E7E8()
{
  v1 = *(v0 + 16);

  sub_100002BF0(*(v0 + 64), *(v0 + 72));
  sub_100002BF0(*(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 104);

  v3 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10000E860()
{
  v1 = (type metadata accessor for SetRecoveryKeyResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = (v0 + v3 + v1[8]);
  v10 = type metadata accessor for Changes(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = v9[1];

    v12 = v9[2];

    sub_100002BF0(v9[3], v9[4]);
    sub_100002BF0(v9[5], v9[6]);
    v8(v9 + *(v10 + 36), v7);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16, v2 | 7);
}

uint64_t sub_10000EA08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  sub_100002BF0(*(v0 + 104), *(v0 + 112));
  sub_100002BF0(*(v0 + 120), *(v0 + 128));
  sub_100002BF0(*(v0 + 136), *(v0 + 144));
  sub_100002BF0(*(v0 + 152), *(v0 + 160));
  v6 = *(v0 + 176);

  v7 = *(v0 + 192);

  v8 = *(v0 + 208);

  return _swift_deallocObject(v0, 217, 7);
}

uint64_t sub_10000EAD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EB30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000EE98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EED8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EF10()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000EF58()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 92, 7);
}

uint64_t sub_10000EFB0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10000F010()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000F0EC()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F1B8()
{
  v1 = sub_1002163D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_10000F2E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10000F348()
{
  v1 = *(v0 + 24);

  if (*(v0 + 48) != 1)
  {

    v2 = *(v0 + 64);

    v3 = *(v0 + 80);

    v4 = *(v0 + 104);
  }

  return _swift_deallocObject(v0, 145, 7);
}

uint64_t sub_10000F3C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_10000F438()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F480()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  sub_100002BF0(*(v0 + 112), *(v0 + 120));
  sub_100002BF0(*(v0 + 128), *(v0 + 136));
  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  v7 = *(v0 + 160);

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_10000F510()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000F564()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000F5BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F604()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 104);

  sub_100002BF0(*(v0 + 112), *(v0 + 120));
  v6 = *(v0 + 136);

  v7 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10000F67C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F6B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F6EC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F73C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  sub_100002BF0(*(v0 + 112), *(v0 + 120));
  v6 = *(v0 + 136);

  v7 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10000F7B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10000F814()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_100002BF0(*(v0 + 56), *(v0 + 64));
  sub_100002BF0(*(v0 + 72), *(v0 + 80));
  sub_100002BF0(*(v0 + 88), *(v0 + 96));
  sub_100002BF0(*(v0 + 104), *(v0 + 112));
  v3 = *(v0 + 128);

  v4 = *(v0 + 144);

  v5 = *(v0 + 160);

  v6 = *(v0 + 176);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10000F89C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10000F90C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10000F994()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  v10 = *(v0 + 152);

  v11 = *(v0 + 168);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_10000FA28()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000FA78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FE30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FE70()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10000FFA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010268(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_100010328@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_10001039C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_100216464();
}

uint64_t sub_1000103E8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_100216454();
}

Swift::Int sub_100010440()
{
  sub_100217264();
  v1 = *v0;
  swift_getWitnessTable();
  sub_100216454();
  return sub_100217284();
}

_DWORD *sub_1000104A8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000104D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_100216444();
}

uint64_t sub_100010554(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000105C0(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10001062C(void *a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000106BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100010748(uint64_t a1)
{
  v2 = sub_100002414(&qword_100298530, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000107B4(uint64_t a1)
{
  v2 = sub_100002414(&qword_100298530, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100010820(void *a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100298530, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000108B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002414(&qword_100298530, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10001092C()
{
  v2 = *v0;
  sub_100217264();
  sub_100216904();
  return sub_100217284();
}

uint64_t sub_10001098C(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297858, type metadata accessor for CKUnderlyingError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000109F8(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297858, type metadata accessor for CKUnderlyingError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100010A64(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100010AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002414(&qword_100297890, type metadata accessor for CKUnderlyingError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100010B54(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297898, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100010BC0(uint64_t a1)
{
  v2 = sub_100002414(&qword_100297898, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100010C2C(uint64_t a1)
{
  v2 = sub_100002414(&qword_100298530, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100010C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002414(&qword_100298530, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100010D40(void *a1)
{
  v2 = sub_100216774();
  sub_100002648(v2, qword_100297200);
  v3 = a1;
  v4 = sub_100216754();
  v5 = sub_100216C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received a new client: %{public}@", v6, 0xCu);
    sub_1000114D4(v7, &qword_10029D580, &unk_10021CCC0);
  }

  v9 = sub_100216964();
  v10 = [v3 valueForEntitlement:v9];

  if (!v10)
  {
    v50 = 0u;
    v51 = 0u;
    sub_1000114D4(&v50, &unk_100297770, &unk_10021DF90);
LABEL_11:
    v22 = v3;
    v23 = sub_100216754();
    v24 = sub_100216C54();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v49[0] = v27;
      *v25 = 138543618;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2082;
      v28 = v22;
      *(v25 + 14) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, v49);
      _os_log_impl(&_mh_execute_header, v23, v24, "client(%{public}@ is missing entitlement '%{public}s'", v25, 0x16u);
      sub_1000114D4(v26, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v27);
    }

    return 0;
  }

  sub_100216E24();
  swift_unknownObjectRelease();
  v49[0] = v50;
  v49[1] = v51;
  if (swift_dynamicCast() && v48 == 1)
  {
    v11 = sub_100216754();
    v12 = sub_100216C54();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_9:

      sub_100006128(v49);
      v16 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___TrustedPeersHelperProtocol];
      v17 = TrustedPeersHelperSetupProtocol(v16);

      [v3 setExportedInterface:v17];
      v18 = [v3 endpoint];
      v19 = qword_1002B02E8;
      type metadata accessor for Client();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;

      [v3 setExportedObject:v20];
      [v3 resume];

      return 1;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = v14;
    *v13 = 136446210;
    v15 = &v47;
LABEL_8:
    *(v13 + 4) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, v15);
    _os_log_impl(&_mh_execute_header, v11, v12, "client has entitlement '%{public}s'", v13, 0xCu);
    sub_100006128(v14);

    goto LABEL_9;
  }

  if (swift_dynamicCast() && v47 == 1)
  {
    v11 = sub_100216754();
    v12 = sub_100216C54();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_9;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48 = v14;
    *v13 = 136446210;
    v15 = &v48;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v29 = v48;
    v30 = v3;
    v31 = sub_100216754();
    v32 = sub_100216C54();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v33 = 138543874;
      *(v33 + 4) = v30;
      *v34 = v30;
      *(v33 + 12) = 2082;
      v36 = v30;
      *(v33 + 14) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, &v47);
      *(v33 + 22) = 2048;
      *(v33 + 24) = v29;
      v37 = "client(%{public}@ has wrong integer value for '%{public}s' (%ld), rejecting";
      v38 = v32;
      v39 = v31;
      v40 = v33;
      v41 = 32;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v39, v38, v37, v40, v41);
      sub_1000114D4(v34, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v35);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (!swift_dynamicCast())
  {
    sub_100006128(v49);
    goto LABEL_11;
  }

  v42 = v47;
  v43 = v3;
  v31 = sub_100216754();
  v44 = sub_100216C54();

  if (os_log_type_enabled(v31, v44))
  {
    v45 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v45 = 138543874;
    *(v45 + 4) = v43;
    *v34 = v43;
    *(v45 + 12) = 2082;
    v46 = v43;
    *(v45 + 14) = sub_100005FB0(0xD00000000000002BLL, 0x8000000100227810, &v48);
    *(v45 + 22) = 1024;
    *(v45 + 24) = v42;
    v37 = "client(%{public}@ has wrong BOOLean value for '%{public}s' (%{BOOL}d), rejecting";
    v38 = v44;
    v39 = v31;
    v40 = v45;
    v41 = 28;
    goto LABEL_24;
  }

LABEL_25:

  sub_100006128(v49);
  return 0;
}

uint64_t sub_10001148C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000114D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10001148C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011534(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100011814()
{
  result = qword_100297880;
  if (!qword_100297880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297880);
  }

  return result;
}

void sub_100011A2C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100011C2C()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_100297950);
  sub_100002648(v0, qword_100297950);
  return sub_100216764();
}

double sub_100011CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000124E8(a1, &v21);
  if (v22)
  {
    sub_1000125AC(&v21, v23);
    v3 = objc_opt_self();
    sub_100006484(v23, v24);
    v4 = sub_100217194();
    *&v21 = 0;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v21];
    swift_unknownObjectRelease();
    v6 = v21;
    if (v5)
    {
      v7 = sub_100216224();
      v9 = v8;

      *(a2 + 24) = &type metadata for Data;
      *a2 = v7;
      *(a2 + 8) = v9;
      sub_100006128(v23);
      return result;
    }

    v11 = v6;
    v12 = sub_100216154();

    swift_willThrow();
    sub_100006128(v23);
    if (qword_100297218 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_100297950);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C54();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;
      *&v21 = v12;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18 = sub_100216994();
      v20 = sub_100005FB0(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to serialize a Set: %{public}s", v16, 0xCu);
      sub_100006128(v17);
    }

    else
    {
    }
  }

  else
  {
    sub_100012480(&v21);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_100011FB8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000124E8(a1, v9);
  if (v9[3])
  {
    if (swift_dynamicCast())
    {
      v3 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100012558(v7, v8);
      v4 = sub_1001905FC();
      sub_10001148C(&qword_10029D6D0, &qword_1002265B0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_10021D420;
      *(v5 + 32) = sub_10000200C(0, &unk_10029D790, NSSet_ptr);
      *(v5 + 40) = sub_10000200C(0, &qword_10029D6E0, NSString_ptr);
      sub_100216974();
      sub_100216D84();

      sub_100002BF0(v7, v8);
      sub_100002BF0(v7, v8);
      return result;
    }
  }

  else
  {
    sub_100012480(v9);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

id sub_1000122C8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100216E24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_100012480(v16);
  v8 = v18;
  if (v18)
  {
    v9 = sub_100006484(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_100217194();
    (*(v10 + 8))(v13, v8);
    sub_100006128(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_100012448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetValueTransformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012480(uint64_t a1)
{
  v2 = sub_10001148C(&unk_100297770, &unk_10021DF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000124E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001148C(&unk_100297770, &unk_10021DF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012558(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_1000125AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_1000125EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryKey();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012654(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_1002163D4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v11;
  v50 = v12;
  v13 = *(v12 + 16);
  v48 = a1;
  v13(v10, a1);
  v14 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
  v15 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey] publicKey];
  v45 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey;
  v16 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey] publicKey];
  v17 = *&a2[v14];
  v18 = objc_allocWithZone(TPCustodianRecoveryKey);
  v19 = v17;
  isa = sub_1002163B4().super.isa;
  v51 = 0;
  v21 = [v18 initWithUUID:isa signingPublicKey:v15 encryptionPublicKey:v16 signingKeyPair:v19 kind:a3 error:&v51];

  if (v21)
  {
    v43 = v14;
    v22 = v50 + 8;
    v23 = *(v50 + 8);
    v24 = v51;
    v50 = v22;
    v44 = v23;
    v23(v10, v49);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v25 = v47;
    *(v47 + 24) = v21;
    v26 = [v21 peerID];
    v27 = sub_100216974();
    v29 = v28;

    v30 = *&a2[v43];
    v31 = *&a2[v45];
    v32 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
    v33 = v30;
    v34 = v31;
    v35 = v46;
    v36 = sub_1000576E4(v27, v29, v33, v34);
    v37 = v25;
    if (!v35)
    {
      v41 = v36;

      v44(v48, v49);
      *(v25 + 16) = v41;
      return v37;
    }

    v44(v48, v49);
  }

  else
  {
    v38 = v51;
    sub_100216154();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v39 = v49;
    v40 = *(v50 + 8);
    v40(v48, v49);
    v40(v10, v39);
    v37 = v47;
  }

  type metadata accessor for CustodianRecoveryKey();
  swift_deallocPartialClassInstance();
  return v37;
}

uint64_t sub_1000129C8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  v13 = sub_1001B43B8(a2, a3);
  if ((a3 & 0x1000000000000000) != 0)
  {
    v44 = sub_100216A44();

    v14 = v44;
  }

  else
  {

    if ((a3 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v14 = a2 & 0xFFFFFFFFFFFFLL;
    }
  }

  v15 = sub_1000139DC(v13 + 32, v14);
  v17 = v16;

  objc_allocWithZone(type metadata accessor for RecoveryKeySet());
  sub_100012558(v15, v17);
  v18 = sub_100014D24(v15, v17, a4, a5);
  if (v6)
  {

    sub_100002BF0(v15, v17);
LABEL_11:
    type metadata accessor for CustodianRecoveryKey();
    swift_deallocPartialClassInstance();
    return v7;
  }

  v47 = v7;
  v48 = v18;
  v46 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
  v19 = [objc_msgSend(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey] "publicKey")];
  swift_unknownObjectRelease();
  v20 = sub_100216224();
  v22 = v21;

  v23 = [objc_msgSend(a1 "signingPublicKey")];
  swift_unknownObjectRelease();
  v24 = sub_100216224();
  v26 = v25;

  LOBYTE(v23) = sub_100052F18(v20, v22, v24, v26);
  sub_100002BF0(v24, v26);
  sub_100002BF0(v20, v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  v45 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey;
  v27 = [objc_msgSend(*&v48[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey] "publicKey")];
  swift_unknownObjectRelease();
  v28 = sub_100216224();
  v30 = v29;

  v31 = [objc_msgSend(a1 "encryptionPublicKey")];
  swift_unknownObjectRelease();
  v32 = sub_100216224();
  v34 = v33;

  LOBYTE(v31) = sub_100052F18(v28, v30, v32, v34);
  sub_100002BF0(v32, v34);
  sub_100002BF0(v28, v30);
  if ((v31 & 1) == 0)
  {
LABEL_10:
    sub_100012E74();
    swift_allocError();
    swift_willThrow();

    sub_100002BF0(v15, v17);
    v7 = v47;
    goto LABEL_11;
  }

  *(v47 + 24) = a1;
  v35 = a1;
  v36 = [v35 peerID];
  v37 = sub_100216974();
  v39 = v38;

  v40 = *&v48[v46];
  v41 = *&v48[v45];
  objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
  v43 = sub_1000576E4(v37, v39, v40, v41);
  sub_100002BF0(v15, v17);

  v7 = v47;
  *(v47 + 16) = v43;
  return v7;
}

uint64_t sub_100012E0C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100012E74()
{
  result = qword_100297B98;
  if (!qword_100297B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297B98);
  }

  return result;
}

id sub_100012EC8()
{
  v1 = v0;
  v2 = [v0 peerID];
  if (!v2)
  {
    sub_100216974();
    v2 = sub_100216964();
  }

  v3 = [objc_msgSend(v1 "signingPublicKey")];
  swift_unknownObjectRelease();
  v4 = sub_100216224();
  v6 = v5;

  v7 = [objc_msgSend(v1 "encryptionPublicKey")];
  swift_unknownObjectRelease();
  v8 = sub_100216224();
  v10 = v9;

  v11 = objc_allocWithZone(TrustedPeersHelperPeer);
  isa = sub_100216204().super.isa;
  v13 = sub_100216204().super.isa;
  v14 = sub_100216B94().super.isa;
  v15 = [v11 initWithPeerID:v2 signingSPKI:isa encryptionSPKI:v13 secureElementIdentity:0 viewList:v14];

  sub_100002BF0(v8, v10);
  sub_100002BF0(v4, v6);

  return v15;
}

Swift::Int sub_100013090()
{
  sub_100217264();
  sub_100217274(0);
  return sub_100217284();
}

Swift::Int sub_1000130FC()
{
  sub_100217264();
  sub_100217274(0);
  return sub_100217284();
}

uint64_t sub_10001313C(uint64_t a1)
{
  v2 = sub_1000131E0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100013178(uint64_t a1)
{
  v2 = sub_1000131E0();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000131E0()
{
  result = qword_100297BA0;
  if (!qword_100297BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297BA0);
  }

  return result;
}

void sub_100013234(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {

      sub_100002BF0(v7, v6);
      *&v20 = v7;
      *(&v20 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000);
      sub_1002161A4();
      v11 = *(&v20 + 1);
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      v14 = sub_100216034();
      if (v14)
      {
        v15 = v14;
        v16 = sub_100216064();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          __break(1u);
        }

        else if (!__OFSUB__(v12, v13))
        {
          sub_100216054();
          sub_1000134D0(a2, a3, v15 + v17);
          *a1 = v20;
          a1[1] = v11 | 0x8000000000000000;
          return;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      *(&v20 + 7) = 0;
      *&v20 = 0;
      sub_1000134D0(a2, a3, &v20);
    }
  }

  else
  {
    if (v8)
    {

      sub_100002BF0(v7, v6);
      *&v20 = v7;
      *(&v20 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000);
      sub_100013798(&v20, a2, a3);
      v9 = v20;
      v10 = *(&v20 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100002BF0(v7, v6);
      *&v20 = v7;
      WORD4(v20) = v6;
      BYTE10(v20) = BYTE2(v6);
      BYTE11(v20) = BYTE3(v6);
      BYTE12(v20) = BYTE4(v6);
      BYTE13(v20) = BYTE5(v6);
      BYTE14(v20) = BYTE6(v6);
      sub_1000134D0(a2, a3, &v20);
      v9 = v20;
      v10 = DWORD2(v20) | ((WORD6(v20) | (BYTE14(v20) << 16)) << 32);
    }

    *a1 = v9;
    a1[1] = v10;
  }
}

void sub_1000134D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v14 + 7) = 0;
      *&v14 = 0;
      if (a3)
      {
        ccdigest();
        return;
      }

      goto LABEL_18;
    }

    sub_100002BF0(v6, v5);
    *&v14 = v6;
    *(&v14 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000);
    sub_1002161A4();
    v9 = *(&v14 + 1);
    v11 = *(v14 + 16);
    v10 = *(v14 + 24);
    if (sub_100216034())
    {
      if (__OFSUB__(v11, sub_100216064()))
      {
        __break(1u);
      }

      else if (!__OFSUB__(v10, v11))
      {
        sub_100216054();
        if (a3)
        {
          ccdigest();
          *a1 = v14;
          a1[1] = v9 | 0x8000000000000000;
          return;
        }

        goto LABEL_19;
      }

      __break(1u);
    }
  }

  else
  {
    if (v7)
    {

      sub_100002BF0(v6, v5);
      *&v14 = v6;
      *(&v14 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000);
      sub_100013864(&v14, a2, a3);
      v12 = *(&v14 + 1) | 0x4000000000000000;
      *a1 = v14;
      a1[1] = v12;
      return;
    }

    sub_100002BF0(v6, v5);
    *&v14 = v6;
    WORD4(v14) = v5;
    BYTE10(v14) = BYTE2(v5);
    BYTE11(v14) = BYTE3(v5);
    BYTE12(v14) = BYTE4(v5);
    BYTE13(v14) = BYTE5(v5);
    BYTE14(v14) = BYTE6(v5);
    if (a3)
    {
      ccdigest();
      v8 = DWORD2(v14) | ((WORD6(v14) | (BYTE14(v14) << 16)) << 32);
      *a1 = v14;
      a1[1] = v8;
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_100013798(int *a1, uint64_t *a2, uint64_t a3)
{
  sub_1002161B4();
  v6 = *a1;
  if (a1[1] < v6)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(a1 + 1);

  v8 = sub_100216034();
  if (v8)
  {
    v9 = v8;
    v10 = sub_100216064();
    v11 = v6 - v10;
    if (!__OFSUB__(v6, v10))
    {
      sub_100216054();
      sub_1000134D0(a2, a3, v9 + v11);

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_100013864(int *a1, uint64_t a2, uint64_t a3)
{
  sub_1002161B4();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(a1 + 1);

  if (!sub_100216034())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, sub_100216064()))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100216054();
  if (a3)
  {
    ccdigest();

    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_10001391C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001393C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_100216074();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_100216044();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_1000139DC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100017F84(a1, &a1[a2]);
  }

  v3 = sub_100216074();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_100216024();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1002161D4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

id sub_100013A8C(uint64_t a1, unint64_t a2, id a3, unint64_t a4)
{
  v9 = sub_1001B43B8(a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v34 = sub_100216A44();

    v10 = v34;
  }

  else
  {

    if ((a2 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }
  }

  v11 = sub_1000139DC(v9 + 32, v10);
  v13 = v12;

  objc_allocWithZone(type metadata accessor for RecoveryKeySet());
  sub_100012558(v11, v13);
  v14 = sub_100014D24(v11, v13, a3, a4);
  if (v4)
  {
    sub_100002BF0(v11, v13);
  }

  else
  {
    v15 = v14;
    v42 = type metadata accessor for RecoveryKey();
    v36 = objc_allocWithZone(v42);
    v35 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
    v16 = [*&v15[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey] publicKey];
    v17 = [v16 keyData];

    v18 = sub_100216224();
    v20 = v19;

    v21 = ccsha384_di();
    v22 = [objc_opt_self() ccsha384_diSize];
    v40 = sub_10001393C(v22);
    v41 = v23;
    v38 = v18;
    v39 = v20;
    sub_100012558(v18, v20);
    sub_100013234(&v40, &v38, v21);
    v24 = v40;
    v25 = v41;
    v26 = sub_100216214(0);
    v28 = v27;
    sub_100002BF0(v24, v25);
    sub_100002BF0(v38, v39);
    v40 = 2968402;
    v41 = 0xE300000000000000;
    v43._countAndFlagsBits = v26;
    v43._object = v28;
    sub_100216A14(v43);

    sub_100002BF0(v18, v20);
    v29 = *&v15[v35];
    v30 = v40;
    v31 = v41;
    v32 = *&v15[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey];
    objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
    *&v36[OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys] = sub_1000576E4(v30, v31, v29, v32);
    v37.receiver = v36;
    v37.super_class = v42;
    a3 = objc_msgSendSuper2(&v37, "init");

    sub_100002BF0(v11, v13);
  }

  return a3;
}

id sub_100013D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = sub_100216204().super.isa;
  v10 = 0;
  v6 = [v3 initWithData:isa specifier:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100216154();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100013E34(void *a1)
{
  v3 = [a1 signingKeyData];
  v4 = sub_100216224();
  v6 = v5;

  v7 = ccsha384_di();
  v8 = [objc_opt_self() ccsha384_diSize];
  v47 = sub_10001393C(v8);
  v48 = v9;
  v45 = v4;
  v46 = v6;
  sub_100012558(v4, v6);
  sub_100013234(&v47, &v45, v7);
  v10 = v47;
  v11 = v48;
  v12 = sub_100216214(0);
  v14 = v13;
  sub_100002BF0(v10, v11);
  sub_100002BF0(v45, v46);
  v47 = 2968402;
  v48 = 0xE300000000000000;
  v50._countAndFlagsBits = v12;
  v50._object = v14;
  sub_100216A14(v50);

  sub_100002BF0(v4, v6);
  v49 = v48;
  v15 = [a1 signingKeyData];
  v16 = sub_100216224();
  v18 = v17;

  v19 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
  v20 = objc_allocWithZone(_SFECPublicKey);
  sub_100012558(v16, v18);
  v21 = sub_100013D6C(v16, v18, v19);

  sub_100002BF0(v16, v18);
  if (v1)
  {
    sub_100002BF0(v16, v18);
  }

  else
  {
    v22 = [v21 encodeSubjectPublicKeyInfo];
    v44 = sub_100216224();
    v24 = v23;

    sub_100002BF0(v16, v18);
    v25 = [a1 encryptionKeyData];
    v26 = sub_100216224();
    v28 = v27;

    v29 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
    v30 = objc_allocWithZone(_SFECPublicKey);
    sub_100012558(v26, v28);
    v31 = sub_100013D6C(v26, v28, v29);

    sub_100002BF0(v26, v28);
    v43 = v24;
    v33 = [v31 encodeSubjectPublicKeyInfo];
    v34 = sub_100216224();
    v36 = v35;

    sub_100002BF0(v26, v28);
    v37 = objc_allocWithZone(TrustedPeersHelperPeer);
    v38 = sub_100216964();

    isa = sub_100216204().super.isa;
    v40 = sub_100216204().super.isa;
    v41 = sub_100216B94().super.isa;
    v42 = [v37 initWithPeerID:v38 signingSPKI:isa encryptionSPKI:v40 secureElementIdentity:0 viewList:v41];

    sub_100002BF0(v34, v36);
    sub_100002BF0(v44, v43);

    return v42;
  }
}

void *sub_100014204()
{
  v0 = sub_100216974();
  v2 = v1;
  v7 = &type metadata for String;
  *&v6 = 0xD000000000000045;
  *(&v6 + 1) = 0x8000000100227950;
  sub_1000125AC(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100185894(v5, v0, v2, isUniquelyReferenced_nonNull_native);

  return &_swiftEmptyDictionarySingleton;
}

uint64_t getEnumTagSinglePayload for RecoveryKey.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RecoveryKey.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_10001439C()
{
  result = qword_100297BA8;
  if (!qword_100297BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297BA8);
  }

  return result;
}

id sub_100014664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PolicyRedactionCrypter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000146BC(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v6, "aes256BitSize")}];
  v8 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v7];

  v9 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v6, "aes256BitSize")}];
  v10 = objc_allocWithZone(_SFAESKey);
  sub_100012558(a2, a3);
  v11 = sub_100013D6C(a2, a3, v9);

  sub_100002BF0(a2, a3);
  if (v3)
  {

    return a3;
  }

  result = [a1 ciphertext];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  v33 = v11;
  v14 = sub_100216224();
  v16 = v15;

  result = [a1 authenticationCode];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = result;
  v32 = v8;
  v18 = sub_100216224();
  v20 = v19;

  result = [a1 initializationVector];
  if (result)
  {
    v21 = result;
    v22 = sub_100216224();
    v24 = v23;

    v25 = objc_allocWithZone(_SFAuthenticatedCiphertext);
    isa = sub_100216204().super.isa;
    v35 = v14;
    a3 = sub_100216204().super.isa;
    v27 = sub_100216204().super.isa;
    v28 = [v25 initWithCiphertext:isa authenticationCode:a3 initializationVector:v27];

    sub_100002BF0(v22, v24);
    sub_100002BF0(v18, v20);

    sub_100002BF0(v35, v16);
    v36 = 0;
    v29 = [v32 decrypt:v28 withKey:v33 error:&v36];
    v30 = v36;
    if (v29)
    {
      a3 = sub_100216224();
    }

    else
    {
      v31 = v30;
      sub_100216154();

      swift_willThrow();
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

__objc2_prop *sub_1000149F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = objc_opt_self();
  v8 = &stru_100292000;
  v9 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v7, "aes256BitSize")}];
  v10 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v9];

  v11 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v7, "aes256BitSize")}];
  v12 = objc_allocWithZone(_SFAESKey);
  sub_100012558(a3, a4);
  v13 = sub_100013D6C(a3, a4, v11);

  sub_100002BF0(a3, a4);
  if (v4)
  {
    goto LABEL_2;
  }

  isa = sub_100216204().super.isa;
  v35 = 0;
  v15 = [v10 encrypt:isa withKey:v13 additionalAuthenticatedData:0 error:&v35];

  v8 = v35;
  if (!v15)
  {
    v34 = v35;
    sub_100216154();

    swift_willThrow();
LABEL_2:

    return v8;
  }

  v16 = objc_allocWithZone(TPPBPolicyRedactionAuthenticatedCiphertext);
  v17 = v8;
  result = [v16 init];
  if (result)
  {
    v8 = result;
    v19 = [v15 ciphertext];
    v20 = sub_100216224();
    v22 = v21;

    v23 = sub_100216204().super.isa;
    sub_100002BF0(v20, v22);
    [(__objc2_prop *)v8 setCiphertext:v23];

    v24 = [v15 authenticationCode];
    v25 = sub_100216224();
    v27 = v26;

    v28 = sub_100216204().super.isa;
    sub_100002BF0(v25, v27);
    [(__objc2_prop *)v8 setAuthenticationCode:v28];

    v29 = [v15 initializationVector];
    v30 = sub_100216224();
    v32 = v31;

    v33 = sub_100216204().super.isa;
    sub_100002BF0(v30, v32);
    [(__objc2_prop *)v8 setInitializationVector:v33];

    return v8;
  }

  __break(1u);
  return result;
}

char *sub_100014D24(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_100018144(1, a1, a2, a3, a4);
  if (v5)
  {

    sub_100002BF0(a1, a2);
    type metadata accessor for RecoveryKeySet();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = v10;
    v52 = v11;
    v12 = sub_10001853C();
    v13 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v12];

    v14 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey;
    *&v4[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_encryptionKey] = v13;
    v15 = sub_100018144(0, a1, a2, a3, a4);
    v17 = v16;

    v18 = v15;
    v20 = sub_10001853C();
    v43 = v18;
    v44 = v17;
    v45 = v14;
    v21 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v20];

    v42 = OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey;
    *&v4[OBJC_IVAR____TtC18TrustedPeersHelper14RecoveryKeySet_signingKey] = v21;
    v22 = [objc_msgSend(v21 "publicKey")];
    swift_unknownObjectRelease();
    v23 = sub_100216224();
    v25 = v24;

    v26 = ccsha384_di();
    v27 = [objc_opt_self() ccsha384_diSize];
    v50 = sub_10001393C(v27);
    v51 = v28;
    v48 = v23;
    v49 = v25;
    sub_100012558(v23, v25);
    sub_100013234(&v50, &v48, v26);
    v29 = v50;
    v30 = v51;
    v31 = sub_100216214(0);
    v33 = v32;
    sub_100002BF0(v23, v25);
    sub_100002BF0(v29, v30);
    sub_100002BF0(v48, v49);
    v34 = [*&v4[v42] keyData];
    v35 = sub_100216224();
    v37 = v36;

    sub_100018A14(v35, v37, v31, v33);
    sub_100002BF0(v35, v37);
    v38 = [*&v4[v45] keyData];
    v39 = sub_100216224();
    v41 = v40;

    sub_100018D0C(v39, v41, v31, v33);
    sub_100002BF0(v39, v41);

    sub_100002BF0(v43, v44);
    sub_100002BF0(v46, v52);
    v47.receiver = v4;
    v47.super_class = type metadata accessor for RecoveryKeySet();
    v4 = objc_msgSendSuper2(&v47, "init");
    sub_100002BF0(a1, a2);
  }

  return v4;
}

id sub_10001517C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryKeySet();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100015220()
{
  result = qword_100297CD8;
  if (!qword_100297CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297CD8);
  }

  return result;
}

uint64_t sub_100015274(uint64_t a1)
{
  v2 = sub_10001573C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000152B0(uint64_t a1)
{
  v2 = sub_10001573C();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000152EC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_100216FD4(23);

      v8 = 0xD000000000000015;
      v10._countAndFlagsBits = a1;
      v10._object = a2;
      sub_100216A14(v10);
      return v8;
    }

    sub_100216FD4(35);

    v4 = 0xD000000000000021;
LABEL_6:
    v8 = v4;
    v9._countAndFlagsBits = sub_100217174();
    sub_100216A14(v9);

    return v8;
  }

  if (a3 == 2)
  {
    sub_100216FD4(31);

    v4 = 0xD00000000000001DLL;
    goto LABEL_6;
  }

  if (a1 ^ 1 | a2)
  {
    v7 = 0xD00000000000001DLL;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a1 | a2)
  {
    return v7;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_1000154B0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = sub_10001900C(&_swiftEmptyArrayStorage);
  v7 = sub_1000152EC(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_100216974();
    v13 = v12;
    v26 = &type metadata for String;
    *&v25 = v9;
    *(&v25 + 1) = v10;
    sub_1000125AC(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v24, v11, v13, isUniquelyReferenced_nonNull_native);
  }

  if (a3 == 2)
  {
    v15 = sub_100216974();
    v17 = v19;
    v20 = objc_allocWithZone(NSError);
    v21 = sub_100216964();
    v18 = [v20 initWithDomain:v21 code:a1 userInfo:0];

    goto LABEL_7;
  }

  if (!a3)
  {
    v15 = sub_100216974();
    v17 = v16;
    v18 = [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
LABEL_7:
    v26 = sub_10000200C(0, &qword_100297CE8, NSError_ptr);
    *&v25 = v18;
    sub_1000125AC(&v25, v24);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v24, v15, v17, v22);
  }

  return v6;
}

uint64_t sub_1000156EC()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 5;
    }

    else
    {
      return qword_10021D848[*v0];
    }
  }

  else if (*(v0 + 16))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_10001573C()
{
  result = qword_100297CE0;
  if (!qword_100297CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297CE0);
  }

  return result;
}

double sub_100015790@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100015974(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018676C();
      v11 = v13;
    }

    sub_1000125AC((*(v11 + 56) + 32 * v8), a2);
    sub_100184D2C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_100015830@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100015A28(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001868EC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1000125AC((*(v12 + 56) + 32 * v9), a3);
    sub_100184F24(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1000158D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_100217264();
  sub_1002169C4();
  sub_1002169C4();
  v10 = sub_100217284();

  return sub_100015BC0(a1, a2, a3, a4, v10);
}

unint64_t sub_100015974(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100217264();
  type metadata accessor for CFString(0);
  sub_100019C24(&qword_100297D40, type metadata accessor for CFString);
  sub_100216454();
  v4 = sub_100217284();

  return sub_100015CC0(a1, v4);
}

unint64_t sub_100015A28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100217264();
  sub_1002169C4();
  v6 = sub_100217284();

  return sub_100015DCC(a1, a2, v6);
}

unint64_t sub_100015AA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100216F54(*(v2 + 40));

  return sub_100015E84(a1, v4);
}

unint64_t sub_100015AE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100216DB4(*(v2 + 40));

  return sub_100015F4C(a1, v4);
}

unint64_t sub_100015B28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100216194();
  sub_100019C24(&unk_10029D660, &type metadata accessor for URL);
  v5 = sub_1002168F4();

  return sub_100016020(a1, v5);
}

unint64_t sub_100015BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1002171A4() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1002171A4() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_100015CC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100019C24(&qword_100297D40, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100216444();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100015DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1002171A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100015E84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100019390(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100216F64();
      sub_1000193EC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100015F4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100216DC4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100016020(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_100216194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_100019C24(&qword_100297D00, &type metadata accessor for URL);
      v17 = sub_100216954();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1000161E0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v12 = a2;
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v167 = a4;
      v168 = a5;
      v169 = a6;
      sub_100012558(a2, a3);

      sub_100002BF0(v15, v14);
      *&v174 = v15;
      *(&v174 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v163 = a1;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000);
      sub_1002161A4();
      v20 = v174;
      v21 = *(v174 + 16);
      v22 = *(v174 + 24);
      v23 = sub_100216034();
      if (!v23)
      {
        result = sub_100002BF0(v12, a3);
        __break(1u);
        goto LABEL_151;
      }

      v24 = v23;
      v25 = sub_100216064();
      v26 = v21 - v25;
      if (__OFSUB__(v21, v25))
      {
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v27 = __OFSUB__(v22, v21);
      v28 = v22 - v21;
      if (v27)
      {
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v29 = sub_100216054();
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      v31 = v24 + v26;
      v32 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v32 != 2)
        {
          memset(v173, 0, 14);
          v33 = *v167;
          v34 = v167[1];
          sub_100012558(*v167, v34);
          v158 = a11;
          v35 = v31 + v30;
          v155 = a10;
          v152 = a9;
          LOBYTE(v151) = a8 & 1;
          v148 = a7;
          v40 = v173;
          v36 = v168;
          v37 = v33;
          v38 = v34;
          v39 = v31;
          goto LABEL_80;
        }

        v165 = v30;
        v76 = *(v12 + 16);
        v77 = *(v12 + 24);
        v78 = sub_100216034();
        if (v78)
        {
          v79 = sub_100216064();
          if (__OFSUB__(v76, v79))
          {
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v78 += v76 - v79;
        }

        v27 = __OFSUB__(v77, v76);
        v80 = v77 - v76;
        if (v27)
        {
          __break(1u);
LABEL_47:
          v52 = v163;
          if (v162 >> 32 >= v162)
          {
            v81 = sub_100216034();
            if (!v81)
            {
              v55 = 0;
LABEL_107:
              v136 = sub_100216054();
              if (v136 >= (v162 >> 32) - v162)
              {
                v135 = (v162 >> 32) - v162;
              }

              else
              {
                v135 = v136;
              }

              goto LABEL_110;
            }

            v82 = v81;
            v83 = sub_100216064();
            if (!__OFSUB__(v162, v83))
            {
              v55 = v162 - v83 + v82;
              goto LABEL_107;
            }

            goto LABEL_144;
          }

          goto LABEL_135;
        }
      }

      else
      {
        if (!v32)
        {
          v173[0] = v12;
          LOWORD(v173[1]) = a3;
          BYTE2(v173[1]) = BYTE2(a3);
          BYTE3(v173[1]) = BYTE3(a3);
          BYTE4(v173[1]) = BYTE4(a3);
          BYTE5(v173[1]) = BYTE5(a3);
          v33 = *v167;
          v34 = v167[1];
          sub_100012558(*v167, v34);
          v158 = a11;
          v35 = v31 + v30;
          v155 = a10;
          v152 = a9;
          LOBYTE(v151) = a8 & 1;
          v148 = a7;
          v36 = v168;
          v37 = v33;
          v38 = v34;
          v39 = v31;
          v40 = v173 + BYTE6(a3);
LABEL_80:
          sub_100017474(v37, v38, v36, v39, v35, v173, v40, v169, v148, v151, v152, v155, v158);
          v103 = v33;
LABEL_81:
          sub_100002BF0(v103, v34);
          sub_100002BF0(v12, a3);
          result = sub_100002BF0(v12, a3);
          *a1 = v20;
          a1[1] = *(&v20 + 1) | 0x8000000000000000;
          return result;
        }

        v165 = v30;
        v80 = (v12 >> 32) - v12;
        if (v12 >> 32 < v12)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v78 = sub_100216034();
        if (v78)
        {
          v97 = sub_100216064();
          if (__OFSUB__(v12, v97))
          {
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
          }

          v78 += v12 - v97;
        }
      }

      v98 = sub_100216054();
      if (v98 >= v80)
      {
        v99 = v80;
      }

      else
      {
        v99 = v98;
      }

      v100 = v99 + v78;
      if (v78)
      {
        v101 = v100;
      }

      else
      {
        v101 = 0;
      }

      v102 = *v167;
      v34 = v167[1];
      sub_100012558(*v167, v34);
      LOBYTE(v151) = a8 & 1;
      sub_100017474(v102, v34, v168, v31, v31 + v165, v78, v101, v169, a7, v151, a9, a10, a11);
      v103 = v102;
      goto LABEL_81;
    }

    v44 = a3 >> 62;
    *(&v174 + 7) = 0;
    *&v174 = 0;
    if ((a3 >> 62) > 1)
    {
      if (v44 != 2)
      {
        memset(v173, 0, 14);
        v45 = *a4;
        v46 = a4[1];
        sub_100012558(*a4, v46);
        LOBYTE(v151) = a8 & 1;
        sub_100017474(v45, v46, a5, &v174, &v174, v173, v173, a6, a7, v151, a9, a10, a11);
        goto LABEL_66;
      }

      v59 = *(a2 + 16);
      v60 = *(a2 + 24);
      v61 = sub_100216034();
      if (v61)
      {
        v62 = sub_100216064();
        if (__OFSUB__(v59, v62))
        {
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v61 += v59 - v62;
      }

      v27 = __OFSUB__(v60, v59);
      v63 = v60 - v59;
      if (v27)
      {
        goto LABEL_137;
      }

      v64 = sub_100216054();
      if (v64 >= v63)
      {
        v65 = v63;
      }

      else
      {
        v65 = v64;
      }

      v66 = v65 + v61;
      if (v61)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      v68 = *a4;
      v69 = a4[1];
      sub_100012558(*a4, v69);
      v159 = a11;
      v156 = a10;
      v153 = a9;
      LOBYTE(v151) = a8 & 1;
      v149 = a7;
      v70 = v68;
      v71 = v69;
      v72 = a5;
      v73 = v61;
      v74 = v67;
      v75 = a6;
    }

    else
    {
      if (!v44)
      {
        v173[0] = a2;
        LOWORD(v173[1]) = a3;
        BYTE2(v173[1]) = BYTE2(a3);
        BYTE3(v173[1]) = BYTE3(a3);
        BYTE4(v173[1]) = BYTE4(a3);
        BYTE5(v173[1]) = BYTE5(a3);
        v45 = *a4;
        v46 = a4[1];
        sub_100012558(*a4, v46);
        LOBYTE(v151) = a8 & 1;
        sub_100017474(v45, v46, a5, &v174, &v174, v173, v173 + BYTE6(a3), a6, a7, v151, a9, a10, a11);
LABEL_66:
        v93 = v45;
        v94 = v46;
        goto LABEL_67;
      }

      v84 = (a2 >> 32) - a2;
      if (a2 >> 32 < a2)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v87 = sub_100216034();
      if (v87)
      {
        v88 = sub_100216064();
        if (__OFSUB__(v12, v88))
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v87 += v12 - v88;
      }

      v89 = sub_100216054();
      if (v89 >= v84)
      {
        v90 = (v12 >> 32) - v12;
      }

      else
      {
        v90 = v89;
      }

      v91 = v90 + v87;
      if (v87)
      {
        v92 = v91;
      }

      else
      {
        v92 = 0;
      }

      v68 = *a4;
      v69 = a4[1];
      sub_100012558(*a4, v69);
      v159 = a11;
      v156 = a10;
      v153 = a9;
      LOBYTE(v151) = a8 & 1;
      v149 = a7;
      v70 = v68;
      v71 = v69;
      v72 = a5;
      v73 = v87;
      v74 = v92;
      v75 = a6;
    }

    sub_100017474(v70, v71, v72, &v174, &v174, v73, v74, v75, v149, v151, v153, v156, v159);
    v93 = v68;
    v94 = v69;
LABEL_67:
    sub_100002BF0(v93, v94);
    return sub_100002BF0(v12, a3);
  }

  v167 = a4;
  v168 = a5;
  v169 = a6;
  if (!v16)
  {
    v163 = a1;
    v165 = a3;
    v162 = a2;
    sub_100012558(a2, a3);
    sub_100002BF0(v15, v14);
    *&v174 = v15;
    WORD4(v174) = v14;
    BYTE10(v174) = BYTE2(v14);
    BYTE11(v174) = BYTE3(v14);
    BYTE12(v174) = BYTE4(v14);
    BYTE13(v174) = BYTE5(v14);
    v12 = &v174 + BYTE6(v14);
    v17 = v165 >> 62;
    BYTE14(v174) = BYTE6(v14);
    if ((v165 >> 62) > 1)
    {
      if (v17 != 2)
      {
        memset(v173, 0, 14);
        v18 = *v167;
        v19 = v167[1];
        sub_100012558(*v167, v19);
        LOBYTE(v151) = a8 & 1;
        sub_100017474(v18, v19, v168, &v174, &v174 + BYTE6(v14), v173, v173, v169, a7, v151, a9, a10, a11);
        goto LABEL_64;
      }

      v49 = *(v162 + 16);
      v50 = *(v162 + 24);
      v51 = sub_100216034();
      v52 = v163;
      if (v51)
      {
        v53 = v51;
        v54 = sub_100216064();
        if (__OFSUB__(v49, v54))
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v55 = v49 - v54 + v53;
      }

      else
      {
        v55 = 0;
      }

      if (!__OFSUB__(v50, v49))
      {
        v134 = sub_100216054();
        if (v134 >= v50 - v49)
        {
          v135 = v50 - v49;
        }

        else
        {
          v135 = v134;
        }

LABEL_110:
        v137 = v135 + v55;
        if (v55)
        {
          v138 = v137;
        }

        else
        {
          v138 = 0;
        }

        v139 = *v167;
        v19 = v167[1];
        sub_100012558(*v167, v19);
        LOBYTE(v151) = a8 & 1;
        sub_100017474(v139, v19, v168, &v174, v12, v55, v138, v169, a7, v151, a9, a10, a11);
        v95 = v139;
        goto LABEL_114;
      }

      goto LABEL_138;
    }

    if (!v17)
    {
      v173[0] = v162;
      LODWORD(v173[1]) = v165;
      WORD2(v173[1]) = WORD2(v165);
      v18 = *v167;
      v19 = v167[1];
      sub_100012558(*v167, v19);
      LOBYTE(v151) = a8 & 1;
      sub_100017474(v18, v19, v168, &v174, &v174 + BYTE6(v14), v173, v173 + BYTE6(v165), v169, a7, v151, a9, a10, a11);
LABEL_64:
      v52 = v163;
      v95 = v18;
LABEL_114:
      sub_100002BF0(v95, v19);
      v140 = v174;
      v141 = DWORD2(v174) | ((WORD6(v174) | (BYTE14(v174) << 16)) << 32);
      sub_100002BF0(v162, v165);
      result = sub_100002BF0(v162, v165);
      *v52 = v140;
      v52[1] = v141;
      return result;
    }

    goto LABEL_47;
  }

  v41 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100012558(a2, a3);
  sub_100012558(v15, v14);
  sub_100002BF0(v15, v14);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000);
  sub_100012558(v12, a3);
  v42 = v15;
  v43 = v15 >> 32;
  v161 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v43 < v15)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (sub_100216034() && __OFSUB__(v15, sub_100216064()))
    {
      goto LABEL_134;
    }

    v104 = sub_100216074();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();
    v107 = sub_100216014();

    v41 = v107;
  }

  v108 = v43 - v15;
  if (v43 < v15)
  {
    goto LABEL_130;
  }

  result = sub_100216034();
  if (result)
  {
    v109 = result;
    v110 = sub_100216064();
    v111 = v42 - v110;
    if (!__OFSUB__(v42, v110))
    {
      v112 = sub_100216054();
      if (v112 < v108)
      {
        v108 = v112;
      }

      v113 = v109 + v111;
      v114 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v114 != 2)
        {
          *(&v174 + 6) = 0;
          *&v174 = 0;
          v115 = *v167;
          v116 = v167[1];
          sub_100012558(*v167, v116);
          v160 = a11;
          v117 = v113 + v108;
          v157 = a10;
          v154 = a9;
          LOBYTE(v151) = a8 & 1;
          v150 = a7;
          v122 = &v174;
          v118 = v168;
          v119 = v115;
          v120 = v116;
          v121 = v113;
          v123 = v169;
          goto LABEL_100;
        }

        v164 = v108;
        v166 = v109 + v111;
        v124 = *(v12 + 16);
        v125 = *(v12 + 24);
        v126 = sub_100216034();
        if (v126)
        {
          v127 = v126;
          v128 = sub_100216064();
          if (__OFSUB__(v124, v128))
          {
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v129 = v124 - v128 + v127;
        }

        else
        {
          v129 = 0;
        }

        if (__OFSUB__(v125, v124))
        {
          goto LABEL_141;
        }

        v142 = sub_100216054();
        if (v142 >= v125 - v124)
        {
          v143 = v125 - v124;
        }

        else
        {
          v143 = v142;
        }
      }

      else
      {
        if (!v114)
        {
          *&v174 = v12;
          WORD4(v174) = a3;
          BYTE10(v174) = BYTE2(a3);
          BYTE11(v174) = BYTE3(a3);
          BYTE12(v174) = BYTE4(a3);
          BYTE13(v174) = BYTE5(a3);
          v115 = *v167;
          v116 = v167[1];
          sub_100012558(*v167, v116);
          v160 = a11;
          v117 = v113 + v108;
          v157 = a10;
          v154 = a9;
          LOBYTE(v151) = a8 & 1;
          v150 = a7;
          v118 = v168;
          v119 = v115;
          v120 = v116;
          v121 = v113;
          v122 = &v174 + BYTE6(a3);
          v123 = v169;
LABEL_100:
          sub_100017474(v119, v120, v118, v121, v117, &v174, v122, v123, v150, v151, v154, v157, v160);
          v133 = v115;
LABEL_128:
          sub_100002BF0(v133, v116);

          sub_100002BF0(v12, a3);
          sub_100002BF0(v12, a3);
          result = sub_100002BF0(v12, a3);
          *a1 = v161;
          a1[1] = v41 | 0x4000000000000000;
          return result;
        }

        v164 = v108;
        v166 = v109 + v111;
        if (v12 >> 32 < v12)
        {
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v130 = sub_100216034();
        if (v130)
        {
          v131 = v130;
          v132 = sub_100216064();
          if (__OFSUB__(v12, v132))
          {
            goto LABEL_149;
          }

          v129 = v12 - v132 + v131;
        }

        else
        {
          v129 = 0;
        }

        v144 = sub_100216054();
        if (v144 >= (v12 >> 32) - v12)
        {
          v143 = (v12 >> 32) - v12;
        }

        else
        {
          v143 = v144;
        }
      }

      v145 = v143 + v129;
      if (v129)
      {
        v146 = v145;
      }

      else
      {
        v146 = 0;
      }

      v147 = *v167;
      v116 = v167[1];
      sub_100012558(*v167, v116);
      LOBYTE(v151) = a8 & 1;
      sub_100017474(v147, v116, v168, v166, v166 + v164, v129, v146, v169, a7, v151, a9, a10, a11);
      v133 = v147;
      goto LABEL_128;
    }

    goto LABEL_132;
  }

LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_100017104(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return ccec_x963_export();
    }

    v6 = *a1;

    sub_100002BF0(v3, v2);
    *a1 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000);
    sub_1002161A4();
    v7 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = *(v3 + 16);
    result = sub_100216034();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (!__OFSUB__(v8, sub_100216064()))
    {
      sub_100216054();
      result = ccec_x963_export();
      *a1 = v3;
      a1[1] = v7 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
    sub_100002BF0(v3, v2);
    LOWORD(v16) = v2;
    BYTE2(v16) = BYTE2(v2);
    HIBYTE(v16) = BYTE3(v2);
    LOBYTE(v17) = BYTE4(v2);
    HIBYTE(v17) = BYTE5(v2);
    result = ccec_x963_export();
    *a1 = v3;
    a1[1] = v16 | ((v17 | (BYTE6(v2) << 16)) << 32);
    return result;
  }

  v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100002BF0(v3, v2);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000);
  v10 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v10 < v3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (sub_100216034() && __OFSUB__(v3, sub_100216064()))
    {
LABEL_23:
      __break(1u);
    }

    v11 = sub_100216074();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_100216014();

    v9 = v14;
  }

  if (v10 < v3)
  {
    goto LABEL_20;
  }

  result = sub_100216034();
  if (result)
  {
    if (!__OFSUB__(v3, sub_100216064()))
    {
      sub_100216054();
      v15 = ccec_x963_export();

      *a1 = v3;
      a1[1] = v9 | 0x4000000000000000;
      return v15;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100017474(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13)
{
  v16 = a3;
  v17 = a12;
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v50 = a13;
      memset(v101, 0, 14);
      result = ccsha384_di();
      if (a4)
      {
        if (a6)
        {
          if (a8)
          {
            LODWORD(result) = cchkdf();
            *v16 = result;
            if (result)
            {
              goto LABEL_54;
            }

            result = ccrng();
            if (result)
            {
              result = ccec_generate_key_deterministic();
              *v16 = result;
              if (!result)
              {
                if (a12)
                {
                  v53 = sub_100019CD4(a12);
                  v108 = sub_10001393C(v53);
                  v109 = v54;
                  sub_100017104(&v108);
                  v22 = v108;
                  v23 = v109;
                  v106 = &type metadata for Data;
                  v107 = &protocol witness table for Data;
                  v104 = v108;
                  v105 = v109;
                  v55 = sub_100006484(&v104, &type metadata for Data);
                  v25 = *v55;
                  v26 = v55[1];
                  v56 = v26 >> 62;
                  if ((v26 >> 62) <= 1)
                  {
                    if (!v56)
                    {
                      v28 = a13;
                      goto LABEL_59;
                    }

                    goto LABEL_95;
                  }

                  goto LABEL_67;
                }

                goto LABEL_152;
              }

              goto LABEL_54;
            }

            goto LABEL_148;
          }

          goto LABEL_138;
        }

        goto LABEL_136;
      }

      goto LABEL_134;
    }

    v98 = a13;
    v16 = *(a1 + 16);
    v29 = *(a1 + 24);
    v30 = sub_100216034();
    if (v30)
    {
      v31 = sub_100216064();
      if (__OFSUB__(v16, v31))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v30 += v16 - v31;
    }

    if (__OFSUB__(v29, v16))
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    sub_100216054();
    result = ccsha384_di();
    if (!a4)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (!a6)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (!v30)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (!a8)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    LODWORD(result) = cchkdf();
    *a3 = result;
    if (result)
    {
      goto LABEL_54;
    }

    result = ccrng();
    if (!result)
    {
      goto LABEL_149;
    }

    result = ccec_generate_key_deterministic();
    *a3 = result;
    if (result)
    {
      goto LABEL_54;
    }

    if (!a12)
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v32 = sub_100019CD4(a12);
    v108 = sub_10001393C(v32);
    v109 = v33;
    sub_100017104(&v108);
    v34 = v108;
    v35 = v109;
    v106 = &type metadata for Data;
    v107 = &protocol witness table for Data;
    v104 = v108;
    v105 = v109;
    v36 = sub_100006484(&v104, &type metadata for Data);
    v37 = *v36;
    v17 = v36[1];
    v38 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v38 != 2)
      {
        goto LABEL_89;
      }

      v68 = *(v37 + 16);
      v69 = *(v37 + 24);
      sub_100012558(v34, v35);
      a8 = sub_100216034();
      if (a8)
      {
        v70 = sub_100216064();
        v37 = v68 - v70;
        if (__OFSUB__(v68, v70))
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        a8 += v37;
      }

      v63 = __OFSUB__(v69, v68);
      a6 = v69 - v68;
      if (!v63)
      {
        goto LABEL_111;
      }

      __break(1u);
LABEL_82:
      if (v47 == 2)
      {
        v71 = *(v37 + 16);
        v72 = *(v37 + 24);
        sub_100012558(v34, v35);
        a8 = sub_100216034();
        if (a8)
        {
          v73 = sub_100216064();
          if (__OFSUB__(v71, v73))
          {
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
          }

          a8 += v71 - v73;
        }

        v63 = __OFSUB__(v72, v71);
        a6 = v72 - v71;
        if (!v63)
        {
          goto LABEL_111;
        }

        __break(1u);
      }

LABEL_89:
      memset(v101, 0, 14);
      sub_100012558(v34, v35);
      v48 = v101;
      v49 = v101;
      goto LABEL_118;
    }

    if (!v38)
    {
LABEL_47:
      v101[0] = v37;
      LOWORD(v101[1]) = v17;
      BYTE2(v101[1]) = BYTE2(v17);
      BYTE3(v101[1]) = BYTE3(v17);
      BYTE4(v101[1]) = BYTE4(v17);
      BYTE5(v101[1]) = BYTE5(v17);
      sub_100012558(v34, v35);
      v48 = v101;
      v49 = v101 + BYTE6(v17);
LABEL_118:
      sub_100017EF0(v48, v49, &v102);
      sub_100002BF0(v34, v35);
      v93 = v102;
      v94 = v103;
      sub_100006128(&v104);
      v95 = *v98;
      v96 = v98[1];
      *v98 = v93;
      v98[1] = v94;
      return sub_100002BF0(v95, v96);
    }

    a4 = v37;
    v39 = v37 >> 32;
    a6 = v39 - a4;
    if (v39 < a4)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    sub_100012558(v34, v35);
    a8 = sub_100216034();
    if (!a8)
    {
      goto LABEL_111;
    }

    a1 = sub_100216064();
    v40 = a4 - a1;
    if (!__OFSUB__(a4, a1))
    {
LABEL_110:
      a8 += v40;
      goto LABEL_111;
    }

    __break(1u);
  }

  else
  {
    v98 = a13;
    if (!v18)
    {
      v101[0] = a1;
      LOWORD(v101[1]) = a2;
      BYTE2(v101[1]) = BYTE2(a2);
      BYTE3(v101[1]) = BYTE3(a2);
      BYTE4(v101[1]) = BYTE4(a2);
      BYTE5(v101[1]) = BYTE5(a2);
      result = ccsha384_di();
      if (a4)
      {
        if (a6)
        {
          if (a8)
          {
            LODWORD(result) = cchkdf();
            *v16 = result;
            if (result)
            {
              goto LABEL_54;
            }

            result = ccrng();
            if (result)
            {
              result = ccec_generate_key_deterministic();
              *v16 = result;
              if (!result)
              {
                if (a12)
                {
                  v20 = sub_100019CD4(a12);
                  v108 = sub_10001393C(v20);
                  v109 = v21;
                  sub_100017104(&v108);
                  v22 = v108;
                  v23 = v109;
                  v106 = &type metadata for Data;
                  v107 = &protocol witness table for Data;
                  v104 = v108;
                  v105 = v109;
                  v24 = sub_100006484(&v104, &type metadata for Data);
                  v25 = *v24;
                  v26 = v24[1];
                  v27 = v26 >> 62;
                  if ((v26 >> 62) <= 1)
                  {
                    if (!v27)
                    {
                      v28 = a13;
LABEL_59:
                      v100[0] = v25;
                      LOWORD(v100[1]) = v26;
                      BYTE2(v100[1]) = BYTE2(v26);
                      BYTE3(v100[1]) = BYTE3(v26);
                      BYTE4(v100[1]) = BYTE4(v26);
                      BYTE5(v100[1]) = BYTE5(v26);
                      sub_100012558(v22, v23);
                      v57 = v100;
                      v58 = v100 + BYTE6(v26);
LABEL_106:
                      sub_100017EF0(v57, v58, &v102);
                      sub_100002BF0(v22, v23);
                      v83 = v102;
                      v84 = v103;
                      sub_100006128(&v104);
                      v85 = *v28;
                      v86 = v28[1];
                      *v28 = v83;
                      v28[1] = v84;
                      return sub_100002BF0(v85, v86);
                    }

                    v28 = a13;
                    v74 = v25;
                    v75 = v25 >> 32;
                    v64 = v75 - v74;
                    if (v75 >= v74)
                    {
                      sub_100012558(v22, v23);
                      v61 = sub_100216034();
                      if (!v61)
                      {
                        goto LABEL_99;
                      }

                      v50 = v26 & 0x3FFFFFFFFFFFFFFFLL;
                      v76 = sub_100216064();
                      v25 = v74 - v76;
                      if (!__OFSUB__(v74, v76))
                      {
                        goto LABEL_98;
                      }

                      __break(1u);
LABEL_95:
                      v77 = v25;
                      v78 = v25 >> 32;
                      v64 = v78 - v77;
                      if (v78 >= v77)
                      {
                        v28 = v50;
                        sub_100012558(v22, v23);
                        v61 = sub_100216034();
                        if (v61)
                        {
                          v79 = sub_100216064();
                          v25 = v77 - v79;
                          if (!__OFSUB__(v77, v79))
                          {
LABEL_98:
                            v61 += v25;
                            goto LABEL_99;
                          }

                          goto LABEL_129;
                        }

LABEL_99:
                        v80 = sub_100216054();
                        if (v80 >= v64)
                        {
                          v81 = v64;
                        }

                        else
                        {
                          v81 = v80;
                        }

                        v82 = (v81 + v61);
                        if (v61)
                        {
                          v58 = v82;
                        }

                        else
                        {
                          v58 = 0;
                        }

                        v57 = v61;
                        goto LABEL_106;
                      }

                      goto LABEL_124;
                    }

LABEL_123:
                    __break(1u);
LABEL_124:
                    __break(1u);
                    goto LABEL_125;
                  }

                  v28 = a13;
                  if (v27 != 2)
                  {
LABEL_74:
                    memset(v100, 0, 14);
                    sub_100012558(v22, v23);
                    v57 = v100;
                    v58 = v100;
                    goto LABEL_106;
                  }

                  v59 = *(v25 + 16);
                  v60 = *(v25 + 24);
                  sub_100012558(v22, v23);
                  v50 = v26 & 0x3FFFFFFFFFFFFFFFLL;
                  v61 = sub_100216034();
                  if (v61)
                  {
                    v50 = v26 & 0x3FFFFFFFFFFFFFFFLL;
                    v62 = sub_100216064();
                    v25 = v59 - v62;
                    if (__OFSUB__(v59, v62))
                    {
LABEL_127:
                      __break(1u);
                      goto LABEL_128;
                    }

                    v61 += v25;
                  }

                  v63 = __OFSUB__(v60, v59);
                  v64 = v60 - v59;
                  if (!v63)
                  {
                    goto LABEL_99;
                  }

                  __break(1u);
LABEL_67:
                  v28 = v50;
                  if (v56 == 2)
                  {
                    v65 = *(v25 + 16);
                    v66 = *(v25 + 24);
                    sub_100012558(v22, v23);
                    v61 = sub_100216034();
                    if (v61)
                    {
                      v67 = sub_100216064();
                      if (__OFSUB__(v65, v67))
                      {
LABEL_128:
                        __break(1u);
LABEL_129:
                        __break(1u);
                        goto LABEL_130;
                      }

                      v61 += v65 - v67;
                    }

                    v63 = __OFSUB__(v66, v65);
                    v64 = v66 - v65;
                    if (!v63)
                    {
                      goto LABEL_99;
                    }

                    __break(1u);
                  }

                  goto LABEL_74;
                }

                goto LABEL_151;
              }

LABEL_54:
              v51 = result;
              sub_100015220();
              swift_allocError();
              *v52 = v51;
              *(v52 + 8) = 0;
              *(v52 + 16) = 2;
              return swift_willThrow();
            }

            goto LABEL_147;
          }

          goto LABEL_137;
        }

        goto LABEL_135;
      }

      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }
  }

  v41 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_120;
  }

  v97 = v17;
  v42 = sub_100216034();
  if (!v42)
  {
    goto LABEL_37;
  }

  v43 = sub_100216064();
  if (__OFSUB__(v41, v43))
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v42 += v41 - v43;
LABEL_37:
  sub_100216054();
  result = ccsha384_di();
  if (!a4)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (!a6)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (!v42)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (!a8)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  LODWORD(result) = cchkdf();
  *v16 = result;
  if (result)
  {
    goto LABEL_54;
  }

  result = ccrng();
  if (!result)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  result = ccec_generate_key_deterministic();
  *v16 = result;
  if (result)
  {
    goto LABEL_54;
  }

  if (v97)
  {
    v44 = sub_100019CD4(v97);
    v108 = sub_10001393C(v44);
    v109 = v45;
    sub_100017104(&v108);
    v34 = v108;
    v35 = v109;
    v106 = &type metadata for Data;
    v107 = &protocol witness table for Data;
    v104 = v108;
    v105 = v109;
    v46 = sub_100006484(&v104, &type metadata for Data);
    v37 = *v46;
    v17 = v46[1];
    v47 = v17 >> 62;
    if ((v17 >> 62) <= 1)
    {
      if (!v47)
      {
        goto LABEL_47;
      }

      v87 = v37;
      v88 = v37 >> 32;
      a6 = v88 - v87;
      if (v88 < v87)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      sub_100012558(v34, v35);
      a8 = sub_100216034();
      if (a8)
      {
        v89 = sub_100216064();
        v40 = v87 - v89;
        if (__OFSUB__(v87, v89))
        {
          goto LABEL_132;
        }

        goto LABEL_110;
      }

LABEL_111:
      v90 = sub_100216054();
      if (v90 >= a6)
      {
        v91 = a6;
      }

      else
      {
        v91 = v90;
      }

      v92 = (v91 + a8);
      if (a8)
      {
        v49 = v92;
      }

      else
      {
        v49 = 0;
      }

      v48 = a8;
      goto LABEL_118;
    }

    goto LABEL_82;
  }

LABEL_154:
  __break(1u);
  return result;
}