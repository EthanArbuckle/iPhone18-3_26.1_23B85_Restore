uint64_t sub_117C()
{
  v0 = sub_2764();
  sub_14C8(v0, qword_83A0);
  sub_1254(v0, qword_83A0);
  sub_152C();
  sub_27C4();
  return sub_2774();
}

uint64_t sub_1200()
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v0 = sub_2764();

  return sub_1254(v0, qword_83A0);
}

uint64_t sub_1254(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_128C@<X0>(uint64_t a1@<X8>)
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v2 = sub_2764();
  v3 = sub_1254(v2, qword_83A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_133C(uint64_t a1)
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v2 = sub_2764();
  v3 = sub_1254(v2, qword_83A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1420())()
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v0 = sub_2764();
  sub_1254(v0, qword_83A0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *sub_14C8(uint64_t a1, uint64_t *a2)
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

unint64_t sub_152C()
{
  result = qword_8120;
  if (!qword_8120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8120);
  }

  return result;
}

uint64_t sub_1570(uint64_t a1)
{

  return _swift_once(a1, sub_117C);
}

uint64_t PCSReadingFlowPluginBase.__allocating_init()()
{
  v0 = swift_allocObject();
  PCSReadingFlowPluginBase.init()();
  return v0;
}

uint64_t PCSReadingFlowPluginBase.init()()
{
  v1 = v0;
  v2 = sub_2764();
  v3 = sub_25A4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_25B8();
  v10 = v9 - v8;
  v11 = sub_1200();
  sub_25E0();
  (*(v5 + 16))(v10, v11, v2);
  v12 = sub_2754();
  v13 = sub_27A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_262C();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "PCSReadingFlowPluginBase init | invoked.", v14, 2u);
    sub_25C8(v14);
  }

  (*(v5 + 8))(v10, v2);
  return v1;
}

uint64_t PCSReadingFlowPluginBase.findFlowForX(parse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v76 = a2;
  v72 = sub_2734();
  v2 = sub_25A4(v72);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_25B8();
  v70 = v8 - v7;
  v9 = sub_2744();
  v10 = sub_25A4(v9);
  v77 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_25F8();
  v66 = v14;
  sub_2620();
  __chkstk_darwin(v15);
  v68 = &v65 - v16;
  sub_2620();
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  v20 = sub_2764();
  v21 = sub_25A4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_25F8();
  v67 = v26;
  sub_2620();
  __chkstk_darwin(v27);
  v69 = &v65 - v28;
  sub_2620();
  __chkstk_darwin(v29);
  v31 = &v65 - v30;
  v32 = sub_1200();
  sub_25E0();
  v33 = *(v23 + 16);
  v78 = v20;
  v71 = v33;
  v33(v31, v32, v20);
  v34 = sub_2754();
  v35 = sub_27A4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = sub_262C();
    v75 = v4;
    v37 = v9;
    v38 = v19;
    v39 = v23;
    v40 = v36;
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "PCSReadingFlowPluginBase findFlowForX | invoked.", v36, 2u);
    v41 = v40;
    v23 = v39;
    v19 = v38;
    v9 = v37;
    v4 = v75;
    sub_25C8(v41);
  }

  v42 = v78;
  v74 = *(v23 + 8);
  v75 = v23 + 8;
  v74(v31, v78);
  v43 = v77;
  v44 = *(v77 + 16);
  v45 = v73;
  (v44)(v19, v73, v9);
  if ((*(v43 + 88))(v19, v9) == enum case for Parse.directInvocation(_:))
  {
    (*(v43 + 96))(v19, v9);
    v46 = v70;
    (*(v4 + 32))(v70, v19, v72);
    sub_25E0();
    v47 = v67;
    v71(v67, v32, v42);
    v48 = sub_2754();
    v49 = sub_27A4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = sub_262C();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "PCSReadingFlowPluginBase findFlowForX | received a direct invocation.", v50, 2u);
      sub_25C8(v50);
    }

    v74(v47, v78);
    PCSReadingFlowPluginBase.makeFlowFor(directInvocation:)();
    (*(v4 + 8))(v46, v72);
    return sub_26D4();
  }

  else
  {
    sub_25E0();
    v52 = v69;
    v71(v69, v32, v42);
    v53 = v68;
    (v44)(v68, v45, v9);
    v54 = v42;
    v55 = sub_2754();
    v56 = sub_27B4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v57 = 136315138;
      (v44)(v66, v53, v9);
      v58 = sub_2784();
      v60 = v59;
      sub_260C();
      v44();
      v61 = sub_1EC4(v58, v60, &v79);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_0, v55, v56, "PCSReadingFlowPluginBase findFlowForX | Unknown or unsupported parse received: %s", v57, 0xCu);
      v62 = v73;
      sub_2434(v73);
      sub_25C8(v62);
      sub_25C8(v57);

      v63 = v52;
      v64 = v78;
    }

    else
    {

      sub_260C();
      (v44)(v53, v9);
      v63 = v52;
      v64 = v54;
    }

    v74(v63, v64);
    sub_26D4();
    return (v44)(v19, v9);
  }
}

uint64_t PCSReadingFlowPluginBase.makeFlowFor(directInvocation:)()
{
  v0 = sub_2764();
  v1 = sub_25A4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_25B8();
  v8 = v7 - v6;
  v9 = sub_1200();
  sub_25E0();
  (*(v3 + 16))(v8, v9, v0);
  v10 = sub_2754();
  v11 = sub_27A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_262C();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "PCSReadingFlowPlugin makeFlowFor | invoked.", v12, 2u);
    sub_25C8(v12);
  }

  (*(v3 + 8))(v8, v0);
  return 0;
}

uint64_t sub_1E78@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

unint64_t sub_1EC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1F88(v11, 0, 0, 1, a1, a2);
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
    sub_24FC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2434(v11);
  return v7;
}

unint64_t sub_1F88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2088(a5, a6);
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
    result = sub_27E4();
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

char *sub_2088(uint64_t a1, unint64_t a2)
{
  v4 = sub_20D4(a1, a2);
  sub_21EC(&off_4318);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_20D4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2794())
  {
    result = sub_22D0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_27D4();
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
          result = sub_27E4();
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

uint64_t sub_21EC(uint64_t result)
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

    result = sub_2340(result, v8, 1, v3);
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

void *sub_22D0(uint64_t a1, uint64_t a2)
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

  sub_2558(&qword_81D8, &unk_2B60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2340(char *result, int64_t a2, char a3, char *a4)
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
    sub_2558(&qword_81D8, &unk_2B60);
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

uint64_t sub_2434(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2484()
{
  result = qword_8128;
  if (!qword_8128)
  {
    type metadata accessor for PCSReadingFlowPluginBase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8128);
  }

  return result;
}

uint64_t sub_24FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2558(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25C8(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_25E0()
{

  return swift_beginAccess();
}

uint64_t sub_262C()
{

  return swift_slowAlloc();
}

uint64_t sub_2680()
{
  v0 = PCSReadingFlowPluginBase.deinit();

  return _swift_deallocClassInstance(v0, 16, 7);
}