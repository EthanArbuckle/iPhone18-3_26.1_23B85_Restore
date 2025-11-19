void sub_1000018E8(uint64_t a1)
{
  v2 = type metadata accessor for SpotlightEventsAttachment();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for TranscriptAttachment();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v23 = &_swiftEmptyArrayStorage;
  v6 = sub_100007E44();
  v7 = sub_100007F94();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SearchToolDiagnostics: begin.", v8, 2u);
    sub_1000025BC();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  sub_100008004();
  sub_100001E88(v20, a1, &v21);
  sub_1000022F4(v20);
  if (v22)
  {
    v9 = swift_dynamicCast();
    if (v9)
    {
      sub_10000259C(v9, 0x80000001000089A0);
      sub_1000059B0();
      sub_100002538();
      sub_100007F24();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100007F54();
      }

      v14 = sub_100007F64();
      sub_10000259C(v14, 0x80000001000089A0);
      sub_1000025F4();
      sub_100002560();
      sub_100007F24();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100007F54();
      }

      sub_100007F64();
      v15 = v23;
      v16 = sub_100007E44();
      v17 = sub_100007F94();
      if (os_log_type_enabled(v16, v17))
      {
        *swift_slowAlloc() = 0;
        sub_1000025D4(&_mh_execute_header, v18, v19, "SearchToolDiagnostics: done.");
        sub_1000025BC();
      }

      sub_100001EEC(v15);

      return;
    }
  }

  else
  {
    sub_1000023E4(&v21, &qword_100010270, &qword_100008648);
  }

  v10 = sub_100007E44();
  v11 = sub_100007F94();
  if (os_log_type_enabled(v10, v11))
  {
    *swift_slowAlloc() = 0;
    sub_1000025D4(&_mh_execute_header, v12, v13, "SearchToolDiagnostics: user did not give consent.");
    sub_1000025BC();
  }

  sub_100001EEC(&_swiftEmptyArrayStorage);
}

double sub_100001E88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000045A0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000248C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

char *sub_100001EEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100008094();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v10 = &_swiftEmptyArrayStorage;
  result = sub_10000465C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_100008034();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_100002438();
      swift_dynamicCast();
      v10 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_10000465C((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      v3[2] = v8 + 1;
      sub_10000247C(&v9, &v3[4 * v8 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1000020EC(uint64_t a1)
{
  sub_10000259C(a1, 0x80000001000089A0);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchToolDiagnostic();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100002178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchToolDiagnostic();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchToolDiagnostic()
{
  result = qword_100010260;
  if (!qword_100010260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002264()
{
  result = sub_100007E64();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002348(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002588(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000023E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002348(a2, a3);
  sub_100002588(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_100002438()
{
  result = qword_100010280;
  if (!qword_100010280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010280);
  }

  return result;
}

_OWORD *sub_10000247C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000248C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for BPSCompletionState()
{
  if (!qword_100010288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010288);
    }
  }
}

uint64_t sub_100002538()
{

  return sub_100002390(v0, type metadata accessor for TranscriptAttachment);
}

uint64_t sub_100002560()
{

  return sub_100002390(v0, type metadata accessor for SpotlightEventsAttachment);
}

uint64_t sub_10000259C(uint64_t a1, uint64_t a2)
{

  return Logger.init(subsystem:category:)(0xD000000000000014, a2, 0xD000000000000014);
}

uint64_t sub_1000025BC()
{
}

void sub_1000025D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_1000025F4()
{
  v0 = sub_100002348(&qword_100010290, &qword_1000086A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v102 = &v88 - v2;
  v3 = type metadata accessor for SpotlightEventsAttachment();
  v4 = sub_100005980(v3);
  v103 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = sub_100007ED4();
  v9 = sub_10000596C(v8);
  v105 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007D74();
  v16 = sub_10000596C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = (&v88 - v25);
  __chkstk_darwin(v24);
  v28 = &v88 - v27;
  v29 = v106;
  sub_10000307C(&v88 - v27);
  if (v29)
  {
    return v14;
  }

  v98 = v23;
  v99 = v26;
  v96 = v7;
  v97 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = 0;
  v100 = v28;
  v101 = v15;
  sub_100007EC4();
  v30 = sub_100007EB4();
  v32 = v31;
  v105[1](v14, v8);
  if (v32 >> 60 == 15)
  {
    sub_1000033FC();
    v14 = swift_allocError();
    *v33 = 4;
    swift_willThrow();
    v18[1](v100, v101);
    return v14;
  }

  v14 = v100;
  v34 = v106;
  sub_100007DB4();
  v35 = v101;
  v36 = v18;
  v106 = v34;
  if (v34)
  {
    v18[1](v14, v101);
    sub_100003450(v30, v32);
    return v14;
  }

  sub_10000554C(0, &qword_1000102A0, NSOutputStream_ptr);
  v38 = v99;
  v94 = v18[2];
  v95 = (v18 + 2);
  (v94)(v99, v14, v35);
  v39 = v14;
  v14 = 1;
  v40 = sub_1000034BC(v38, 1);
  if (!v40)
  {
    sub_1000033FC();
    swift_allocError();
    *v64 = 1;
    swift_willThrow();
    sub_100003450(v30, v32);
    v36[1](v39, v35);
    return v14;
  }

  v99 = v36;
  v90 = v30;
  v91 = v32;
  v105 = v40;
  [v40 open];
  v41 = v104;
  v42 = sub_100007E44();
  v43 = sub_100007F94();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "SpotlightEventsAttachment: collecting pre-extracted events.", v44, 2u);
    sub_1000025BC();
  }

  v93 = dispatch_group_create();
  dispatch_group_enter(v93);
  v45 = [objc_allocWithZone(CSSearchQueryContext) init];
  sub_100007E34();
  sub_100007E24();
  isa = sub_100007F34().super.isa;

  [v45 setFetchAttributes:isa];

  sub_10000505C(&off_10000C710, v45);
  v47 = objc_allocWithZone(CSSearchQuery);
  v89 = v45;
  v92 = sub_100003F20(0, 0xE000000000000000, v45);
  v48 = swift_allocObject();
  *(v48 + 16) = 1;
  v49 = v97;
  sub_1000050D8(v41, v97);
  v50 = *(v103 + 80);
  v51 = v96;
  v52 = swift_allocObject();
  v53 = v105;
  *(v52 + 16) = v48;
  *(v52 + 24) = v53;
  sub_100005204(v49, v52 + ((v50 + 32) & ~v50));
  v111 = sub_100005268;
  v112 = v52;
  aBlock = _NSConcreteStackBlock;
  v108 = 1107296256;
  v109 = sub_100003B88;
  v110 = &unk_10000C7B0;
  v54 = _Block_copy(&aBlock);
  v103 = v48;

  v105 = v53;

  v55 = v92;
  [v92 setFoundItemsHandler:v54];
  _Block_release(v54);
  sub_1000050D8(v41, v49);
  v56 = (v50 + 16) & ~v50;
  v57 = swift_allocObject();
  sub_100005204(v49, v57 + v56);
  v58 = v93;
  *(v57 + ((v51 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v93;
  v111 = sub_1000053C0;
  v112 = v57;
  aBlock = _NSConcreteStackBlock;
  v108 = 1107296256;
  v109 = sub_100003DC4;
  v110 = &unk_10000C800;
  v59 = _Block_copy(&aBlock);
  v60 = v58;

  [v55 setCompletionHandler:v59];
  _Block_release(v59);
  [v55 start];
  v61 = v55;
  v14 = sub_100007E44();
  v62 = sub_100007F74();
  if (os_log_type_enabled(v14, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = [v61 foundItemCount];

    _os_log_impl(&_mh_execute_header, v14, v62, "Diagnostic Extension search for pre-extracted events found %ld items.", v63, 0xCu);
    sub_1000025BC();
  }

  else
  {

    v14 = v61;
  }

  v65 = v101;
  v66 = v98;
  v67 = v99;

  sub_100007FA4();
  v68 = v105;
  v69 = v106;
  sub_1000061E0();
  if (v69)
  {

    [v68 close];
    sub_100005990();

    v67[1](v100, v65);
    return v14;
  }

  v106 = v60;
  v70 = v100;
  (v94)(v66, v100, v65);
  v71 = v65;
  v72 = sub_100007E44();
  v73 = sub_100007F94();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock = v104;
    *v74 = 136315138;
    sub_10000547C();
    v75 = sub_1000080C4();
    v76 = v66;
    v78 = v77;
    v79 = v71;
    v80 = v67[1];
    v80(v76, v79);
    v81 = sub_100004030(v75, v78, &aBlock);

    *(v74 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v72, v73, "TranscriptAttachment: finished writing to: %s", v74, 0xCu);
    sub_1000054D4(v104);
    sub_1000025BC();
    v70 = v100;
    sub_1000025BC();

    v82 = v80;
    v83 = v101;
  }

  else
  {

    v82 = v67[1];
    v82(v66, v71);
    v83 = v71;
  }

  v84 = v102;
  (v94)(v102, v70, v83);
  sub_100005454(v84, 0, 1, v83);
  v85 = objc_allocWithZone(DEAttachmentItem);
  result = sub_100003F84(v84);
  if (result)
  {
    v86 = v70;
    v14 = result;

    v87 = v105;
    [v105 close];
    sub_100005990();

    v82(v86, v83);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SpotlightEventsAttachment()
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000307C@<X0>(uint64_t a1@<X8>)
{
  v37[1] = a1;
  v1 = sub_100007E14();
  v2 = sub_10000596C(v1);
  v38 = v3;
  v39 = v2;
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007D74();
  v9 = sub_10000596C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v37 - v18;
  __chkstk_darwin(v17);
  v21 = v37 - v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = [v23 temporaryDirectory];

  sub_100007D64();
  sub_100007D54();
  v25 = *(v11 + 8);
  v40 = v8;
  v26 = v8;
  v27 = v16;
  v28 = v25;
  v25(v19, v26);
  sub_100007E04();
  sub_100007DF4();
  (*(v38 + 8))(v7, v39);
  sub_100007D54();

  v29 = [v22 defaultManager];
  sub_100007D34(v30);
  v32 = v31;
  v41 = 0;
  LOBYTE(v23) = [v29 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v41];

  if (v23)
  {
    v33 = v41;
    sub_100007D44();
  }

  else
  {
    v36 = v41;
    sub_100007D24();

    swift_willThrow();
  }

  v34 = v40;
  v28(v27, v40);
  return (v28)(v21, v34);
}

unint64_t sub_1000033FC()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

uint64_t sub_100003450(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003464(a1, a2);
  }

  return a1;
}

uint64_t sub_100003464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1000034BC(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100007D34(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 append:a2 & 1];

  v9 = sub_100007D74();
  sub_100002588(v9);
  (*(v10 + 8))(a1);
  return v8;
}

void sub_100003554(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008094())
  {
    v42 = v2 & 0xC000000000000001;
    v40 = i;
    swift_beginAccess();
    swift_beginAccess();
    v4 = 0;
    v38 = v2 + 32;
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    v41 = v2;
    while (1)
    {
      if (v42)
      {
        v5 = sub_100008034();
      }

      else
      {
        if (v4 >= *(v39 + 16))
        {
          goto LABEL_44;
        }

        v5 = *(v38 + 8 * v4);
      }

      v6 = __OFADD__(v4, 1);
      v7 = v4 + 1;
      if (v6)
      {
        break;
      }

      v44 = v7;
      v45 = v5;
      if ((*(a2 + 16) & 1) == 0)
      {
        sub_1000061E0();
        v5 = v45;
      }

      *(a2 + 16) = 0;
      v8 = [v5 attributeSet];
      v9 = [v8 attributeDictionary];

      v10 = sub_100007E84();
      v11 = *(v10 + 16);
      if (v11)
      {
        v58 = &_swiftEmptyArrayStorage;
        v2 = &v58;
        sub_10000467C(0, v11, 0);
        v12 = v58;
        v15 = sub_10000558C(v10);
        v16 = 0;
        v17 = v10 + 64;
        v46 = v13;
        v47 = v11;
        while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v10 + 32))
        {
          v18 = v15 >> 6;
          if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
          {
            goto LABEL_38;
          }

          if (*(v10 + 36) != v13)
          {
            goto LABEL_39;
          }

          v49 = v16;
          v50 = v13;
          v48 = v14;
          sub_1000055CC(*(v10 + 48) + 40 * v15, v55);
          sub_10000248C(*(v10 + 56) + 32 * v15, v57);
          v52[0] = v55[0];
          v52[1] = v55[1];
          v53 = v56;
          sub_10000247C(v57, v54);
          v19 = sub_100007FD4();
          v21 = v20;
          sub_10000248C(v54, v51);
          v22 = sub_100007EE4();
          v24 = v23;
          sub_1000023E4(v52, &qword_1000102C0, &qword_1000086B8);
          v58 = v12;
          v26 = v12[2];
          v25 = v12[3];
          v27 = v12;
          if (v26 >= v25 >> 1)
          {
            sub_10000467C((v25 > 1), v26 + 1, 1);
            v27 = v58;
          }

          v27[2] = v26 + 1;
          v28 = &v27[4 * v26];
          v28[4] = v19;
          v28[5] = v21;
          v28[6] = v22;
          v28[7] = v24;
          v2 = 1 << *(v10 + 32);
          if (v15 >= v2)
          {
            goto LABEL_40;
          }

          v17 = v10 + 64;
          v29 = *(v10 + 64 + 8 * v18);
          if ((v29 & (1 << v15)) == 0)
          {
            goto LABEL_41;
          }

          v12 = v27;
          if (*(v10 + 36) != v50)
          {
            goto LABEL_42;
          }

          v30 = v29 & (-2 << (v15 & 0x3F));
          if (v30)
          {
            v2 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v18 << 6;
            v32 = v18 + 1;
            v33 = (v10 + 72 + 8 * v18);
            while (v32 < (v2 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                sub_100005628(v15, v50, v48 & 1);
                v2 = __clz(__rbit64(v34)) + v31;
                goto LABEL_29;
              }
            }

            sub_100005628(v15, v50, v48 & 1);
          }

LABEL_29:
          v14 = 0;
          v16 = v49 + 1;
          v15 = v2;
          v13 = v46;
          if (v49 + 1 == v47)
          {

            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v12 = &_swiftEmptyArrayStorage;
LABEL_32:
      if (v12[2])
      {
        sub_100002348(&qword_1000102C8, &qword_1000086C0);
        v36 = sub_1000080B4();
      }

      else
      {
        v36 = &_swiftEmptyDictionarySingleton;
      }

      *&v55[0] = v36;

      sub_100004A50(v37, 1, v55);

      sub_100007E94();

      sub_1000061E0();

      v2 = v41;
      v4 = v44;
      if (v44 == v40)
      {
        return;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }
}

uint64_t sub_100003B88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10000554C(0, &qword_1000102B8, CSSearchableItem_ptr);
  v3 = sub_100007F44();

  v2(v3);
}

void sub_100003C0C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (a1)
  {
    swift_errorRetain();
    v4 = sub_100007E44();
    v5 = sub_100007F84();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1000080F4();
      v10 = sub_100004030(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Diagnostic Extension search for pre-extracted events failed with error: %s", v6, 0xCu);
      sub_1000054D4(v7);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_100007E44();
    v12 = sub_100007F74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Diagnostic Extension search for pre-extracted events completed successfully.", v13, 2u);
    }
  }

  dispatch_group_leave(a3);
}

void sub_100003DC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

Swift::Int sub_100003E68(unsigned __int8 a1)
{
  sub_100008144();
  sub_100008154(a1);
  return sub_100008164();
}

Swift::Int sub_100003ECC()
{
  v1 = *v0;
  sub_100008144();
  sub_100008154(v1);
  return sub_100008164();
}

id sub_100003F20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100007EA4();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

id sub_100003F84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007D74();
  v6 = 0;
  if (sub_100005524(a1, 1, v4) != 1)
  {
    sub_100007D34(v5);
    v6 = v7;
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v8 = [v2 initWithPathURL:v6];

  return v8;
}

uint64_t sub_100004030(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000040F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000248C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000054D4(v11);
  return v7;
}

unint64_t sub_1000040F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000041F4(a5, a6);
    *a1 = v9;
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
    result = sub_100008044();
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

char *sub_1000041F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004240(a1, a2);
  sub_100004358(&off_10000C6E8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004240(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100007F14())
  {
    result = sub_10000443C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100008014();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_100008044();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100004358(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1000044AC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000443C(uint64_t a1, uint64_t a2)
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

  sub_100002348(&qword_1000102B0, &unk_1000086A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000044AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002348(&qword_1000102B0, &unk_1000086A8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_1000045A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007FE4(*(v2 + 40));

  return sub_1000048D8(a1, v4);
}

unint64_t sub_1000045E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100008144();
  sub_100007EF4();
  v6 = sub_100008164();

  return sub_10000499C(a1, a2, v6);
}

char *sub_10000465C(char *a1, int64_t a2, char a3)
{
  result = sub_10000469C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000467C(void *a1, int64_t a2, char a3)
{
  result = sub_1000047A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000469C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002348(&qword_1000102F0, &qword_1000086E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000047A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002348(&qword_1000102E0, &qword_1000086D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002348(&qword_1000102E8, &qword_1000086E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000048D8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1000055CC(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100007FF4();
    sub_1000022F4(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10000499C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1000080D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100004A50(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1000080E4();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1000045E4(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100002348(&qword_1000102D0, &qword_1000086C8);
      sub_100008074();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_100004D44(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_1000045E4(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100002348(&qword_1000102D8, &qword_1000086D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  sub_100008024(30);
  v31._object = 0x8000000100008A80;
  v31._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100007F04(v31);
  sub_100008054();
  v32._countAndFlagsBits = 39;
  v32._object = 0xE100000000000000;
  sub_100007F04(v32);
  result = sub_100008084();
  __break(1u);
  return result;
}

uint64_t sub_100004D44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002348(&qword_1000102C8, &qword_1000086C0);
  v39 = a2;
  result = sub_1000080A4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_100004FF8(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_100008144();
    sub_100007EF4();
    result = sub_100008164();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100004FF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100008690;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_10000505C(uint64_t a1, void *a2)
{
  isa = sub_100007F34().super.isa;

  [a2 setBundleIDs:isa];
}

uint64_t sub_1000050D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightEventsAttachment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000513C()
{
  v1 = type metadata accessor for SpotlightEventsAttachment();
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = sub_100007E64();
  sub_100002588(v8);
  (*(v9 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_100005204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightEventsAttachment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100005268(unint64_t a1)
{
  v3 = *(*(type metadata accessor for SpotlightEventsAttachment() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_100003554(a1, v4);
}

uint64_t sub_1000052DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000052F4()
{
  v1 = type metadata accessor for SpotlightEventsAttachment();
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_100007E64();
  sub_100002588(v7);
  (*(v8 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_1000053C0(uint64_t a1)
{
  v3 = type metadata accessor for SpotlightEventsAttachment();
  sub_100005980(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100003C0C(a1, v1 + v8, v9);
}

unint64_t sub_10000547C()
{
  result = qword_1000102A8;
  if (!qword_1000102A8)
  {
    sub_100007D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102A8);
  }

  return result;
}

uint64_t sub_1000054D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000554C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000558C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_100007FC4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100005628(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightEventsAttachment.SpotlightEventsAttachmentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpotlightEventsAttachment.SpotlightEventsAttachmentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100005798);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000057F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005524(a1, a2, v4);
}

uint64_t sub_100005854(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005454(a1, a2, a2, v4);
}

uint64_t sub_1000058A0()
{
  result = sub_100007E64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100005910()
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010388);
  }

  return result;
}

uint64_t sub_100005990()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);

  return sub_100003450(v2, v3);
}

char *sub_1000059B0()
{
  v2 = sub_100002348(&qword_100010290, &qword_1000086A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v80 = &v72 - v4;
  v5 = type metadata accessor for TranscriptAttachment();
  v6 = sub_100005980(v5);
  v81 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_100007ED4();
  v11 = sub_10000596C(v10);
  v83 = v12;
  v84 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100007CBC();
  v17 = (v16 - v15);
  v18 = sub_100007D74();
  v19 = sub_10000596C(v18);
  v85 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_100007CCC();
  v24 = __chkstk_darwin(v23);
  v26 = &v72 - v25;
  __chkstk_darwin(v24);
  v28 = &v72 - v27;
  v29 = sub_100006374();
  sub_100006514(v28);
  if (v0)
  {

    return v17;
  }

  v76 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v26;
  v74 = v1;
  v75 = v9;
  v78 = v18;
  v79 = v28;
  v30 = v85;
  sub_100007EC4();
  v31 = sub_100007EB4();
  v33 = v32;
  (*(v83 + 8))(v17, v84);
  if (v33 >> 60 == 15)
  {
    sub_100006320();
    swift_allocError();
    *v34 = 4;
    swift_willThrow();

    (*(v30 + 8))(v79, v78);
    return v17;
  }

  v17 = v79;
  sub_100007DB4();
  v35 = v78;
  v84 = v31;
  sub_100007628();
  v37 = v77;
  v73 = *(v30 + 16);
  v73(v77, v17, v35);
  v38 = sub_1000034BC(v37, 1);
  if (!v38)
  {
    sub_100006320();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    sub_100003450(v84, v33);

    (*(v30 + 8))(v17, v35);
    return v17;
  }

  v72 = v30 + 16;
  v77 = v38;
  [v38 open];
  v83 = swift_allocObject();
  *(v83 + 16) = 1;
  v39 = v82;
  v40 = v76;
  sub_10000767C(v82, v76);
  v41 = v81[80];
  v42 = swift_allocObject();
  sub_100007798(v40, v42 + ((v41 + 16) & ~v41));
  v90 = sub_1000077FC;
  v91 = v42;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_100007CB8;
  v89 = &unk_10000C908;
  v81 = _Block_copy(&aBlock);

  sub_10000767C(v39, v40);
  v43 = swift_allocObject();
  v44 = v77;
  *(v43 + 16) = v83;
  *(v43 + 24) = v44;
  sub_100007798(v40, v43 + ((v41 + 32) & ~v41));
  v90 = sub_10000794C;
  v91 = v43;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_100007CB8;
  v89 = &unk_10000C958;
  v45 = _Block_copy(&aBlock);

  v46 = v44;

  v47 = v29;
  v48 = v81;
  v49 = [v29 sinkWithCompletion:v81 receiveInput:v45];
  _Block_release(v45);
  _Block_release(v48);

  sub_1000061E0();
  v77 = v46;
  v81 = v33;
  v51 = v74;
  v53 = v78;
  v52 = v79;
  v73(v74, v79, v78);
  v54 = sub_100007E44();
  v55 = sub_100007F94();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v85;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v76 = v58;
    v82 = swift_slowAlloc();
    aBlock = v82;
    *v58 = 136315138;
    sub_10000547C();
    v59 = sub_1000080C4();
    v60 = v51;
    v61 = v57;
    v63 = v62;
    v64 = *(v61 + 8);
    v64(v60, v53);
    v65 = sub_100004030(v59, v63, &aBlock);

    v66 = v76;
    *(v76 + 1) = v65;
    _os_log_impl(&_mh_execute_header, v54, v55, "TranscriptAttachment: finished writing to: %s", v66, 0xCu);
    sub_1000054D4(v82);

    v52 = v79;
  }

  else
  {

    v67 = v51;
    v64 = *(v57 + 8);
    v64(v67, v53);
  }

  v68 = v80;
  v73(v80, v52, v53);
  sub_100005454(v68, 0, 1, v53);
  v69 = objc_allocWithZone(DEAttachmentItem);
  result = sub_100003F84(v68);
  if (result)
  {
    v70 = v52;
    v17 = result;

    v71 = v77;
    [v77 close];
    sub_100003450(v84, v81);

    v64(v70, v53);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000061E0()
{
  v0 = sub_100007ED4();
  v1 = sub_10000596C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100007CBC();
  v8 = v7 - v6;
  sub_100007EC4();
  v9 = sub_100007EB4();
  v11 = v10;
  (*(v3 + 8))(v8, v0);
  if (v11 >> 60 == 15)
  {
    sub_100006320();
    swift_allocError();
    *v12 = 3;
    return swift_willThrow();
  }

  else
  {
    sub_100007010(v9, v11);
    return sub_100003450(v9, v11);
  }
}

unint64_t sub_100006320()
{
  result = qword_100010390;
  if (!qword_100010390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010390);
  }

  return result;
}

id sub_100006374()
{
  v0 = sub_100007DE4();
  v1 = sub_10000596C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100007CBC();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(BMPublisherOptions) init];
  sub_100007DD4();
  isa = sub_100007DC4().super.isa;
  (*(v3 + 8))(v8, v0);
  [v9 setStartDate:isa];

  v11 = [BiomeLibraryInternal() SearchTool];
  swift_unknownObjectRelease();
  v12 = [v11 Transcript];
  swift_unknownObjectRelease();
  v13 = sub_100007EA4();
  v14 = [v12 publisherWithUseCase:v13 options:v9];

  return v14;
}

uint64_t sub_100006514@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v2 = sub_100007E14();
  v3 = sub_10000596C(v2);
  v36 = v4;
  v37 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100007CBC();
  v9 = v8 - v7;
  v10 = sub_100007D74();
  v11 = sub_10000596C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100007CCC();
  v17 = __chkstk_darwin(v16);
  v19 = v35 - v18;
  __chkstk_darwin(v17);
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = [v21 temporaryDirectory];

  sub_100007D64();
  sub_100007D54();
  v23 = *(v13 + 8);
  v38 = v10;
  v24 = v10;
  v25 = v1;
  v26 = v23;
  v23(v19, v24);
  sub_100007E04();
  sub_100007DF4();
  (*(v36 + 8))(v9, v37);
  sub_100007D54();

  v27 = [v20 defaultManager];
  sub_100007D34(v28);
  v30 = v29;
  v39 = 0;
  LOBYTE(v21) = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v39];

  if (v21)
  {
    v31 = v39;
    sub_100007D44();
  }

  else
  {
    v34 = v39;
    sub_100007D24();

    swift_willThrow();
  }

  v26(v25, v38);
  v32 = sub_100007CE8();
  return (v26)(v32);
}

void sub_100006870(void *a1)
{
  v2 = [a1 state];
  if (v2 == 1)
  {
    v5 = a1;
    oslog = sub_100007E44();
    v6 = sub_100007F84();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      [v5 error];
      sub_100002348(&qword_1000103B0, &qword_1000087F8);
      v9 = sub_100007EE4();
      v11 = sub_100004030(v9, v10, &v18);

      *(v7 + 4) = v11;
      v12 = "TranscriptAttachment: failed to fully publish events: %s";
LABEL_9:
      _os_log_impl(&_mh_execute_header, oslog, v6, v12, v7, 0xCu);
      sub_1000054D4(v8);

      return;
    }
  }

  else
  {
    if (!v2)
    {
      oslog = sub_100007E44();
      v3 = sub_100007F94();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v3, "TranscriptAttachment: finished publishing events successfully", v4, 2u);
      }

      goto LABEL_10;
    }

    v13 = a1;
    oslog = sub_100007E44();
    v6 = sub_100007F84();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      [v13 state];
      type metadata accessor for BPSCompletionState();
      v14 = sub_100007EE4();
      v16 = sub_100004030(v14, v15, &v18);

      *(v7 + 4) = v16;
      v12 = "TranscriptAttachment: unknown completion state: %s";
      goto LABEL_9;
    }
  }

LABEL_10:
}

void sub_100006B14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    sub_1000061E0();
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
  v4 = [a1 jsonDictionary];
  sub_100007E84();

  v5 = sub_100006E90();
  v11 = v5;
  if (v5)
  {
    strcpy(&v22, "eventPayload");
    BYTE13(v22) = 0;
    HIWORD(v22) = -5120;
    sub_100008004();
    v23 = sub_100002348(&qword_100010398, &qword_1000087E0);
    *&v22 = v11;
    sub_10000247C(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000072C8(v21, v24, isUniquelyReferenced_nonNull_native);
    sub_1000022F4(v24);
  }

  v13 = objc_opt_self();
  isa = sub_100007E74().super.isa;

  v24[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:3 error:v24];

  v16 = v24[0];
  if (v15)
  {
    v17 = sub_100007D94();
    v19 = v18;

    sub_100007010(v17, v19);
    sub_100003464(v17, v19);
  }

  else
  {
    v20 = v16;
    sub_100007D24();

    swift_willThrow();
    swift_errorRetain();
    v6 = sub_100007E44();
    v7 = sub_100007F84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "TranscriptAttachment: error during event processing: %@", v8, 0xCu);
      sub_1000079C0(v9);
    }

    else
    {
    }
  }
}

id sub_100006E90()
{
  result = [v0 eventBody];
  if (result)
  {
    v2 = sub_100007A28(result);
    if (v3 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v4 = v2;
      v5 = v3;
      v6 = objc_opt_self();
      isa = sub_100007D84().super.isa;
      v11 = 0;
      v8 = [v6 JSONObjectWithData:isa options:0 error:&v11];

      v9 = v11;
      if (v8)
      {
        sub_100007FB4();
        sub_100003450(v4, v5);
        swift_unknownObjectRelease();
        sub_100002348(&qword_1000103A8, &qword_1000087F0);
        swift_dynamicCast();
        return v11;
      }

      else
      {
        v10 = v9;
        sub_100007D24();

        swift_willThrow();
        return sub_100003450(v4, v5);
      }
    }
  }

  return result;
}

uint64_t sub_100007010(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v2;
      v18 = sub_100007CE8();
      sub_100007584(v18, v19);
      v13 = sub_100007CF4();
      if (!v13)
      {
        goto LABEL_15;
      }

      v20 = sub_100007D14();
      if (__OFSUB__(a1, v20))
      {
LABEL_25:
        __break(1u);
        JUMPOUT(0x100007190);
      }

      v13 += a1 - v20;
LABEL_15:
      v16 = (a1 >> 32) - a1;
LABEL_16:
      v21 = sub_100007D04();
      if (v21 >= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v21;
      }

      v23 = v22 + v13;
      if (v13)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      sub_10000720C(v13, v24, v10);

      v25 = sub_100007CE8();
      return sub_100003464(v25, v26);
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      v10 = v2;
      v11 = sub_100007CE8();
      sub_100007584(v11, v12);
      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v13 = sub_100007CF4();
      if (!v13)
      {
        goto LABEL_6;
      }

      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v14 = sub_100007D14();
      if (__OFSUB__(v8, v14))
      {
        goto LABEL_24;
      }

      v13 += v8 - v14;
LABEL_6:
      v15 = __OFSUB__(v9, v8);
      v16 = v9 - v8;
      if (!v15)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_9:
      v5 = v2;
      v7 = 0;
      v6 = 0;
      return sub_100007484(v7, v6, v5, a1, a2);
    case 3uLL:
      goto LABEL_9;
    default:
      v5 = v2;
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = a1;
      return sub_100007484(v7, v6, v5, a1, a2);
  }
}

void sub_1000071A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000720C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = [a3 write:a1 maxLength:sub_100007DA4()];
    result = sub_100007DA4();
    if (v3 == result)
    {
      return result;
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  sub_100006320();
  swift_allocError();
  *v6 = v5;
  return swift_willThrow();
}

_OWORD *sub_1000072C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000045A0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_100002348(&qword_1000103A0, &qword_1000087E8);
  if (!sub_100008064(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_1000045A0(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_1000080E4();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    sub_1000054D4(v20);

    return sub_10000247C(a1, v20);
  }

  else
  {
    sub_1000055CC(a2, v22);
    return sub_100007408(v14, v22, a1, v19);
  }
}

_OWORD *sub_100007408(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000247C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100007484(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v11 = a1;
  v13 = WORD2(a2);
  v12 = a2;
  v8 = [a3 write:&v11 maxLength:sub_100007DA4()];
  if (v8 != sub_100007DA4())
  {
    sub_100006320();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return sub_100003464(a4, a5);
}

uint64_t sub_100007584(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for TranscriptAttachment()
{
  result = qword_100010410;
  if (!qword_100010410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100007628()
{
  result = qword_1000102A0;
  if (!qword_1000102A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000102A0);
  }

  return result;
}

uint64_t sub_10000767C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000076E0()
{
  v1 = type metadata accessor for TranscriptAttachment();
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_100007E64();
  sub_100002588(v7);
  (*(v8 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_100007798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000077FC(void *a1)
{
  v2 = *(*(type metadata accessor for TranscriptAttachment() - 8) + 80);

  sub_100006870(a1);
}

uint64_t sub_10000786C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007884()
{
  v1 = type metadata accessor for TranscriptAttachment();
  sub_100005980(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = sub_100007E64();
  sub_100002588(v8);
  (*(v9 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

void sub_10000794C(void *a1)
{
  v3 = *(*(type metadata accessor for TranscriptAttachment() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_100006B14(a1, v4);
}

uint64_t sub_1000079C0(uint64_t a1)
{
  v2 = sub_100002348(&qword_100010278, &qword_100008650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007A28(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100007D94();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for TranscriptAttachment.TranscriptAttachmentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100007B64);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100007BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005524(a1, a2, v4);
}

uint64_t sub_100007C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007E64();

  return sub_100005454(a1, a2, a2, v4);
}

unint64_t sub_100007C5C()
{
  result = qword_100010448;
  if (!qword_100010448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010448);
  }

  return result;
}