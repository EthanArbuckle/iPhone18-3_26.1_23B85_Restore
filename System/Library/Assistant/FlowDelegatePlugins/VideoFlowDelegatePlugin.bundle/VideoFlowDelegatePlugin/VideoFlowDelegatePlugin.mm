uint64_t sub_12E8()
{
  v0 = sub_2AD0();
  sub_1374(v0, qword_8168);
  sub_13D8(v0, qword_8168);
  if (qword_80A0 != -1)
  {
    swift_once();
  }

  v1 = qword_8198;
  return sub_2AE0();
}

uint64_t *sub_1374(uint64_t a1, uint64_t *a2)
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

uint64_t sub_13D8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1410()
{
  v0 = sub_2AD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2A60();
  sub_1374(v5, qword_8180);
  sub_13D8(v5, qword_8180);
  if (qword_8090 != -1)
  {
    swift_once();
  }

  v6 = sub_13D8(v0, qword_8168);
  (*(v1 + 16))(v4, v6, v0);
  return sub_2A40();
}

uint64_t sub_154C()
{
  sub_15B4();
  result = sub_2B50();
  qword_8198 = result;
  return result;
}

unint64_t sub_15B4()
{
  result = qword_80A8;
  if (!qword_80A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_80A8);
  }

  return result;
}

uint64_t sub_15F8()
{
  v0 = swift_allocObject();
  sub_1630();
  return v0;
}

uint64_t sub_1630()
{
  v1 = v0;
  v2 = sub_2AD0();
  v3 = sub_284C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_2880();
  v10 = v9 - v8;
  if (qword_8090 != -1)
  {
    sub_2860();
  }

  sub_13D8(v2, qword_8168);
  v11 = sub_28FC();
  v12(v11);
  v13 = sub_2AC0();
  v14 = sub_2B00();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_28D8();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Initializing VideoFlowDelegatePlugin", v15, 2u);
    sub_28C0(v15);
  }

  (*(v5 + 8))(v10, v2);
  return v1;
}

uint64_t sub_178C(uint64_t a1)
{
  v58 = a1;
  v61 = *v1;
  v60 = sub_2950();
  v2 = sub_284C(v60);
  v59 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_2880();
  v8 = v7 - v6;
  v62 = sub_2AD0();
  v9 = sub_284C(v62);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_28B0();
  v57 = (v14 - v15);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = sub_2A30();
  v20 = sub_284C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_28B0();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = &v55 - v29;
  if (qword_8098 != -1)
  {
    sub_2890();
  }

  v31 = sub_2A60();
  sub_13D8(v31, qword_8180);
  sub_2A20();
  v32 = sub_2A50();
  v33 = sub_2B20();
  if (sub_2B40())
  {
    v34 = sub_28D8();
    v56 = v18;
    sub_28F0(v34);
    v35 = sub_2A10();
    _os_signpost_emit_with_name_impl(&dword_0, v32, v33, v35, "makeFlowFor", "", v11, 2u);
    v18 = v56;
    sub_28C0(v11);
  }

  (*(v22 + 16))(v27, v30, v19);
  v36 = sub_2AA0();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_2A90();
  (*(v22 + 8))(v30, v19);
  if (qword_8090 != -1)
  {
    sub_2860();
  }

  v40 = v62;
  v41 = sub_13D8(v62, qword_8168);
  v42 = *(v11 + 16);
  v42(v18, v41, v40);
  v43 = sub_2AC0();
  v44 = sub_2B00();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = sub_28D8();
    v56 = v39;
    sub_28F0(v45);
    sub_2910(&dword_0, v46, v47, "VideoFlowDelegatePlugin#makeFlowFor");
    v39 = v56;
    sub_28C0(v11);
  }

  v48 = *(v11 + 8);
  v48(v18, v40);
  sub_29C0();
  sub_29A0();
  sub_27F8(v63);
  v49 = sub_2930();
  if (v49)
  {
    v50 = v49;
    (*(v59 + 8))(v8, v60);
    sub_2258(v39);

    return v50;
  }

  else
  {
    v42(v57, v41, v40);
    v52 = sub_2AC0();
    v53 = sub_2AF0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = sub_28D8();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "Unable to create a flow. Crashing.", v54, 2u);
      sub_28C0(v54);
    }

    v48(v57, v62);
    result = sub_2B60();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v70 = a2;
  v3 = *v2;
  v64 = sub_2AD0();
  v4 = sub_284C(v64);
  v63 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_2880();
  v62 = v9 - v8;
  v67 = sub_29F0();
  v10 = sub_284C(v67);
  v66 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_2880();
  v65 = v15 - v14;
  v68 = sub_2990();
  v16 = sub_284C(v68);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_2880();
  v23 = v22 - v21;
  v24 = sub_2A30();
  v25 = sub_284C(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_28B0();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v61 - v34;
  if (qword_8098 != -1)
  {
    sub_2890();
  }

  v36 = sub_2A60();
  sub_13D8(v36, qword_8180);
  sub_2A20();
  v37 = sub_2A50();
  v38 = sub_2B20();
  if (sub_2B40())
  {
    v39 = sub_28D8();
    v61 = v3;
    v40 = v39;
    *v39 = 0;
    v41 = sub_2A10();
    _os_signpost_emit_with_name_impl(&dword_0, v37, v38, v41, "makeFlowFor", "", v40, 2u);
    sub_28C0(v40);
  }

  (*(v27 + 16))(v32, v35, v24);
  v42 = sub_2AA0();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_2A90();
  (*(v27 + 8))(v35, v24);
  v46 = v68;
  (*(v18 + 16))(v23, v69, v68);
  v47 = (*(v18 + 88))(v23, v46);
  v48 = enum case for Parse.NLv3IntentOnly(_:);
  (*(v18 + 8))(v23, v46);
  if (v47 == v48 && (v49 = v65, sub_29E0(), v50 = sub_29D0(), (*(v66 + 8))(v49, v67), v50))
  {
    if (qword_8090 != -1)
    {
      sub_2860();
    }

    v51 = v64;
    v52 = sub_13D8(v64, qword_8168);
    v53 = v63;
    v54 = v62;
    (*(v63 + 16))(v62, v52, v51);
    v55 = sub_2AC0();
    v56 = sub_2B00();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = sub_28D8();
      sub_28F0(v57);
      sub_2910(&dword_0, v58, v59, "Got frame from controls project, using it");
      sub_28C0(v46);
    }

    (*(v53 + 8))(v54, v51);
    sub_2940();
  }

  else
  {
    sub_29C0();
    sub_29A0();
    sub_27F8(v71);
  }

  sub_2258(v45);
}

uint64_t sub_2258(uint8_t *a1)
{
  v2 = sub_2A70();
  v3 = sub_284C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_2880();
  v10 = v9 - v8;
  v11 = sub_2A30();
  v12 = sub_284C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_2880();
  v19 = v18 - v17;
  if (qword_8098 != -1)
  {
    sub_2890();
  }

  v20 = sub_2A60();
  sub_13D8(v20, qword_8180);
  v21 = sub_2A50();
  sub_2A80();
  v22 = sub_2B10();
  if (sub_2B40())
  {

    sub_2AB0();

    if ((*(v5 + 88))(v10, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v10, v2);
      v23 = "";
    }

    v24 = sub_28D8();
    sub_28F0(v24);
    v25 = sub_2A10();
    _os_signpost_emit_with_name_impl(&dword_0, v21, v22, v25, "makeFlowFor", v23, a1, 2u);
    sub_28C0(a1);
  }

  return (*(v14 + 8))(v19, v11);
}

uint64_t sub_2498()
{
  v0 = sub_2AD0();
  v1 = sub_284C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_2880();
  v8 = v7 - v6;
  v9 = sub_2A30();
  v10 = sub_284C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_2880();
  v17 = v16 - v15;
  v18 = sub_2B30();
  if (qword_80A0 != -1)
  {
    swift_once();
  }

  sub_2A20();
  sub_2A00();
  (*(v12 + 8))(v17, v9);
  if (qword_8090 != -1)
  {
    sub_2860();
  }

  sub_13D8(v0, qword_8168);
  v19 = sub_28FC();
  v20(v19);
  v21 = sub_2AC0();
  v22 = sub_2B00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_28D8();
    sub_28F0(v23);
    _os_log_impl(&dword_0, v21, v22, "Plugin received warmup signal", v18, 2u);
    sub_28C0(v18);
  }

  (*(v3 + 8))(v8, v0);
  return sub_29B0();
}

uint64_t sub_2730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_15F8();
  *a1 = result;
  return result;
}

unint64_t sub_27A4()
{
  result = qword_8160;
  if (!qword_8160)
  {
    type metadata accessor for VideoFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8160);
  }

  return result;
}

uint64_t sub_2860()
{

  return swift_once();
}

uint64_t sub_2890()
{

  return swift_once();
}

uint64_t sub_28C0(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_28D8()
{

  return swift_slowAlloc();
}

void sub_2910(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}