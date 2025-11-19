uint64_t sub_1248()
{
  v0 = swift_allocObject();
  sub_1280();
  return v0;
}

uint64_t sub_1280()
{
  v1 = v0;
  v2 = sub_312C();
  v3 = sub_2C00(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_2C54();
  v10 = v9 - v8;
  if (qword_8098 != -1)
  {
    sub_2C34();
  }

  sub_2CF8(v2, qword_8278);
  (*(v5 + 16))(v10);
  v11 = sub_311C();
  v12 = sub_316C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_2C9C();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Initializing AppLaunchPlugin", v13, 2u);
    sub_2C64(v13);
  }

  (*(v5 + 8))(v10, v2);
  return v1;
}

void sub_13E4()
{
  sub_2CC8();
  v41 = v0;
  v42 = v1;
  v2 = sub_312C();
  v3 = sub_2C00(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_2C54();
  v39 = v8 - v7;
  v9 = sub_308C();
  v10 = sub_2C00(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_2C54();
  v17 = v16 - v15;
  v18 = sub_30BC();
  v19 = sub_2C00(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_2C54();
  v26 = v25 - v24;
  if (qword_80A0 != -1)
  {
    sub_2C14();
  }

  sub_2CF8(v18, qword_8290);
  (*(v21 + 16))(v26);
  sub_307C();
  v27 = sub_30AC();
  v28 = sub_319C();
  if (sub_31AC())
  {
    v38 = v9;
    v29 = v2;
    v30 = sub_2C9C();
    *v30 = 0;
    v31 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v27, v28, v31, "AppLaunchPlugin#warmup", "", v30, 2u);
    v32 = v30;
    v2 = v29;
    v9 = v38;
    sub_2C64(v32);
  }

  (*(v12 + 8))(v17, v9);
  (*(v21 + 8))(v26, v18);
  if (qword_8098 != -1)
  {
    sub_2C34();
  }

  sub_2CF8(v2, qword_8278);
  (*(v40 + 16))(v39);

  v33 = sub_311C();
  v34 = sub_316C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v2;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_259C(v41, v42, &v43);
    _os_log_impl(&dword_0, v33, v34, "AppLaunchPlugin#warmup for %s", v36, 0xCu);
    sub_2B0C(v37);
    sub_2C64(v37);
    sub_2C64(v36);

    (*(v40 + 8))(v39, v35);
  }

  else
  {

    (*(v40 + 8))(v39, v2);
  }

  sub_304C();
  sub_2CE0();
}

void sub_179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_2CC8();
  a19 = v20;
  a20 = v21;
  v84 = v22;
  v86 = sub_2FFC();
  v23 = sub_2C00(v86);
  v85 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_2C54();
  sub_2C8C(v28 - v27);
  v88 = sub_312C();
  v29 = sub_2C00(v88);
  v87 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_2C7C();
  v82 = v33 - v34;
  __chkstk_darwin(v35);
  sub_2C8C(&v81 - v36);
  v37 = sub_308C();
  v38 = sub_2C00(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_2C7C();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  v48 = &v81 - v47;
  v49 = sub_30BC();
  v50 = sub_2C00(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v50);
  sub_2C54();
  v57 = v56 - v55;
  if (qword_80A0 != -1)
  {
    sub_2C14();
  }

  sub_2CF8(v49, qword_8290);
  (*(v52 + 16))(v57);
  sub_307C();
  v58 = sub_30AC();
  v59 = sub_318C();
  if (sub_31AC())
  {
    v60 = sub_2C9C();
    v81 = v37;
    v61 = v60;
    *v60 = 0;
    v62 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v58, v59, v62, "appLaunchPluginMakeFlow", "", v61, 2u);
    v63 = v61;
    v37 = v81;
    sub_2C64(v63);
  }

  (*(v40 + 16))(v45, v48, v37);
  v64 = sub_30FC();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_30EC();
  (*(v40 + 8))(v48, v37);
  (*(v52 + 8))(v57, v49);
  if (qword_8098 != -1)
  {
    sub_2C34();
  }

  v67 = v88;
  sub_2510(v88, qword_8278);
  v68 = v87;
  v69 = *(v87 + 16);
  v70 = sub_2CB4(&a9);
  v69(v70);
  v71 = sub_311C();
  v72 = sub_316C();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v83;
  if (v73)
  {
    v75 = sub_2C9C();
    *v75 = 0;
    _os_log_impl(&dword_0, v71, v72, "AppLaunchPlugin#makeFlowFor", v75, 2u);
    sub_2C64(v75);
  }

  v76 = *(v68 + 8);
  v76(v89, v67);
  sub_305C();
  sub_303C();
  sub_2548(&v90);
  if (sub_2FEC())
  {
    (*(v85 + 8))(v74, v86);
    sub_2134();

    sub_2CE0();
  }

  else
  {
    v77 = sub_2CB4(&v91);
    v69(v77);
    v78 = sub_311C();
    v79 = sub_315C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = sub_2C9C();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "Unable to create a flow. Crashing.", v80, 2u);
      sub_2C64(v80);
    }

    v76(v82, v88);
    sub_31EC();
    __break(1u);
  }
}

void sub_1D38()
{
  sub_2CC8();
  v1 = v0;
  v49 = v2;
  v48 = sub_312C();
  v3 = sub_2C00(v48);
  v47 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_2C54();
  sub_2C8C(v8 - v7);
  v45 = sub_308C();
  v9 = sub_2C00(v45);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_2C7C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = v44 - v18;
  v20 = sub_30BC();
  v21 = sub_2C00(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_2C54();
  v28 = v27 - v26;
  if (qword_80A0 != -1)
  {
    sub_2C14();
  }

  sub_2CF8(v20, qword_8290);
  (*(v23 + 16))(v28);
  sub_307C();
  v29 = sub_30AC();
  v30 = sub_318C();
  if (sub_31AC())
  {
    v31 = sub_2C9C();
    v44[1] = v1;
    v32 = v31;
    *v31 = 0;
    v33 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v33, "appLaunchPluginMakeFlow", "", v32, 2u);
    sub_2C64(v32);
  }

  v34 = v45;
  (*(v11 + 16))(v16, v19, v45);
  v35 = sub_30FC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_30EC();
  (*(v11 + 8))(v19, v34);
  (*(v23 + 8))(v28, v20);
  if (qword_8098 != -1)
  {
    sub_2C34();
  }

  v38 = v48;
  sub_2CF8(v48, qword_8278);
  v39 = v47;
  v40 = v46;
  (*(v47 + 16))(v46);
  v41 = sub_311C();
  v42 = sub_316C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = sub_2C9C();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "AppLaunchPlugin#findFlowForX", v43, 2u);
    sub_2C64(v43);
  }

  (*(v39 + 8))(v40, v38);
  sub_305C();
  sub_303C();
  sub_2548(&v50);
  sub_2134();

  sub_2CE0();
}

void sub_2134()
{
  sub_2CC8();
  v0 = sub_30CC();
  v1 = sub_2C00(v0);
  v30 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_2C54();
  v7 = v6 - v5;
  v31 = sub_308C();
  v8 = sub_2C00(v31);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_2C54();
  v15 = v14 - v13;
  v16 = sub_30BC();
  v17 = sub_2C00(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_2C54();
  v24 = v23 - v22;
  if (qword_80A0 != -1)
  {
    sub_2C14();
  }

  sub_2CF8(v16, qword_8290);
  (*(v19 + 16))(v24);
  v25 = sub_30AC();
  sub_30DC();
  v29 = sub_317C();
  if (sub_31AC())
  {

    sub_310C();

    if ((*(v30 + 88))(v7, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v26 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v7, v0);
      v26 = "";
    }

    v27 = sub_2C9C();
    *v27 = 0;
    v28 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v25, v29, v28, "appLaunchPluginMakeFlow", v26, v27, 2u);
    sub_2C64(v27);
  }

  (*(v10 + 8))(v15, v31);
  (*(v19 + 8))(v24, v16);
  sub_2CE0();
}

uint64_t sub_2454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1248();
  *a1 = result;
  return result;
}

unint64_t sub_24BC()
{
  result = qword_8158;
  if (!qword_8158)
  {
    type metadata accessor for AppLaunchPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8158);
  }

  return result;
}

uint64_t sub_2510(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_259C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2660(v11, 0, 0, 1, a1, a2);
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
    sub_2B58(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2B0C(v11);
  return v7;
}

unint64_t sub_2660(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2760(a5, a6);
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
    result = sub_31DC();
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

char *sub_2760(uint64_t a1, unint64_t a2)
{
  v4 = sub_27AC(a1, a2);
  sub_28C4(&off_4358);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_27AC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_314C())
  {
    result = sub_29A8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_31CC();
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
          result = sub_31DC();
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

uint64_t sub_28C4(uint64_t result)
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

    result = sub_2A18(result, v8, 1, v3);
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

void *sub_29A8(uint64_t a1, uint64_t a2)
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

  sub_2BB4(&qword_8160, qword_3458);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2A18(char *result, int64_t a2, char a3, char *a4)
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
    sub_2BB4(&qword_8160, qword_3458);
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

uint64_t sub_2B0C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2B58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2BB4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2C14()
{

  return swift_once();
}

uint64_t sub_2C34()
{

  return swift_once();
}

uint64_t sub_2C64(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_2C9C()
{

  return swift_slowAlloc();
}

uint64_t sub_2D10()
{
  sub_2D7C();
  result = sub_31BC();
  qword_8270 = result;
  return result;
}

unint64_t sub_2D7C()
{
  result = qword_8168;
  if (!qword_8168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8168);
  }

  return result;
}

uint64_t sub_2DC0()
{
  v0 = sub_312C();
  sub_2E4C(v0, qword_8278);
  sub_2510(v0, qword_8278);
  if (qword_8090 != -1)
  {
    swift_once();
  }

  v1 = qword_8270;
  return sub_313C();
}

uint64_t *sub_2E4C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2EB0()
{
  v0 = sub_312C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30BC();
  sub_2E4C(v5, qword_8290);
  sub_2510(v5, qword_8290);
  if (qword_8098 != -1)
  {
    swift_once();
  }

  v6 = sub_2510(v0, qword_8278);
  (*(v1 + 16))(v4, v6, v0);
  return sub_309C();
}