void sub_10001A5C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10001A654(char a1, void *a2, uint64_t a3, float a4)
{
  v5 = v4;
  swift_getKeyPath();
  v36 = v4;
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v4 + 16);
  if (v10)
  {
    swift_getKeyPath();
    v36 = v4;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + 32))
    {
      if (sub_100019028())
      {
        if ((a1 & 1) == 0)
        {
          sub_100017474(a2, a4);
          goto LABEL_23;
        }

        sub_100017198(a1 & 1);
        if (qword_1003A92B8 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_1000078E8(v11, qword_1003D2938);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v36 = v15;
          *v14 = 136315138;
          v16 = String.init<A>(describing:)();
          v18 = sub_10028D78C(v16, v17, &v36);

          *(v14 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v12, v13, "Forward %s audio to resultHandler", v14, 0xCu);
          sub_100008664(v15);
        }
      }

      else
      {
        if (a1)
        {
          goto LABEL_23;
        }

        sub_100017198(0);
        if (qword_1003A92B8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_1000078E8(v27, qword_1003D2938);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          buf = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = v35;
          *buf = 136315138;
          v30 = String.init<A>(describing:)();
          v33 = v29;
          v32 = sub_10028D78C(v30, v31, &v36);

          *(buf + 4) = v32;
          _os_log_impl(&_mh_execute_header, v28, v33, "Forward %s audio to resultHandler", buf, 0xCu);
          sub_100008664(v35);
        }

        swift_getKeyPath();
        v36 = v5;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v5 + 88) == 1 && *(v5 + 65) != 1)
        {
          goto LABEL_23;
        }
      }
    }

    v10(a3, a2, a4);
LABEL_23:
    sub_10001ABE4(v10);
    return;
  }

  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000078E8(v19, qword_1003D2938);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136315138;
    v24 = String.init<A>(describing:)();
    v26 = sub_10028D78C(v24, v25, &v36);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Cannot process %s audio results. No AudioResultHandler configured", v22, 0xCu);
    sub_100008664(v23);
  }
}

unint64_t sub_10001AB60()
{
  result = qword_1003AA3A0;
  if (!qword_1003AA3A0)
  {
    type metadata accessor for AudioRouteManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA3A0);
  }

  return result;
}

uint64_t sub_10001ABE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001AC9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001ACD4(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

uint64_t sub_10001AD18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

float sub_10001ADC4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 60) = result;
  return result;
}

float sub_10001AE00()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t sub_10001AFFC()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
}

void sub_10001B038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100018B30(v2);
  *(v1 + 88) = v2;
}

void sub_10001B080(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100014668(v1);
}

void sub_10001B0B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

unint64_t sub_10001B0E8()
{
  result = qword_1003AA3B0;
  if (!qword_1003AA3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AA3B0);
  }

  return result;
}

float sub_10001B134()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 44) = result;
  return result;
}

float sub_10001B144()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_10001B16C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001B2AC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10001B2F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_100016898(a1, v4, v5, v6);
}

uint64_t sub_10001B3D4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_10001AD18(v1);
  return sub_10001ABE4(v4);
}

uint64_t sub_10001B420()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_10001B45C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B494()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B4DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10001B694(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001B6A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10001B6F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001B75C()
{

  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  Binding.wrappedValue.setter();
}

uint64_t sub_10001B80C()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10001B8A8()
{
  v1 = sub_100005AD4(&qword_1003AA3C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;

  sub_100005AD4(&qword_1003A93D8);
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  Button.init(action:label:)();
  sub_10001BAEC(&qword_1003AA3D0, &qword_1003AA3C0);
  View.accessibilityIdentifier(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10001BAA0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10001BAEC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001BB38()
{
  result = qword_1003AA3D8;
  if (!qword_1003AA3D8)
  {
    sub_100005EA8(&qword_1003AA3E0);
    sub_10001BAEC(&qword_1003AA3D0, &qword_1003AA3C0);
    sub_10001BBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA3D8);
  }

  return result;
}

unint64_t sub_10001BBF0()
{
  result = qword_1003AA3E8;
  if (!qword_1003AA3E8)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA3E8);
  }

  return result;
}

uint64_t sub_10001BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AA3F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10001BD88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100005AD4(&qword_1003AA3F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Locale();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AudioRoutingMenu()
{
  result = qword_1003AA450;
  if (!qword_1003AA450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001BEE8()
{
  sub_10001C05C();
  if (v0 <= 0x3F)
  {
    sub_10001C108(319, &qword_1003AA468, &qword_1003A93C8, &unk_1002D9A40, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Locale();
      if (v2 <= 0x3F)
      {
        sub_10001C0B4(319, &qword_1003AA470, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10001C0B4(319, &unk_1003AA478, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_10001C108(319, &qword_1003B29B0, &unk_1003B27F0, &unk_1002D4010, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10001C05C()
{
  if (!qword_1003AA460)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AA460);
    }
  }
}

void sub_10001C0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AudioDevice);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001C108(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005EA8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10001C188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v62 = a1;
  v3 = type metadata accessor for AudioRoutingMenu();
  v4 = *(v3 - 8);
  v68 = v3 - 8;
  v58 = v4;
  v66 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003AA4F0);
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  __chkstk_darwin(v10);
  v13 = &v53 - v12;
  v14 = sub_100005AD4(&qword_1003AA4E0);
  v15 = *(v14 - 8);
  v55 = v14;
  v56 = v15;
  __chkstk_darwin(v14);
  v64 = &v53 - v16;
  v57 = sub_100005AD4(&qword_1003AA4D0);
  __chkstk_darwin(v57);
  v63 = &v53 - v17;
  v18 = sub_100005AD4(&qword_1003AA4C8);
  v19 = *(v18 - 8);
  v59 = v18;
  v60 = v19;
  __chkstk_darwin(v18);
  v67 = &v53 - v20;
  v70 = a1;
  sub_100005AD4(&qword_1003AA510);
  sub_10001BAEC(&qword_1003AA518, &qword_1003AA510);
  Form.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  (*(v7 + 104))(v9, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v6);
  v21 = sub_10001BAEC(&qword_1003AA4F8, &qword_1003AA4F0);
  v22 = v53;
  View.navigationBarTitle(_:displayMode:)();

  (*(v7 + 8))(v9, v6);
  (*(v54 + 8))(v13, v22);
  v23 = v62;
  v69 = v62;
  sub_100005AD4(&qword_1003AA4E8);
  *&v77 = v22;
  *(&v77 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  sub_10001BAEC(&qword_1003AA500, &qword_1003AA4E8);
  v25 = v63;
  v24 = v64;
  v26 = v55;
  View.toolbar<A>(content:)();
  (*(v56 + 8))(v24, v26);
  v27 = v65;
  sub_10001EBFC(v23, v65);
  v28 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v29 = swift_allocObject();
  sub_10001EC64(v27, v29 + v28);
  v30 = v57;
  v31 = &v25[*(v57 + 36)];
  *v31 = sub_10001ECC8;
  v31[1] = v29;
  v31[2] = 0;
  v31[3] = 0;
  v32 = v23 + *(v68 + 28);
  v33 = *(v32 + 80);
  v81 = *(v32 + 64);
  v82[0] = v33;
  v82[1] = *(v32 + 96);
  v83 = *(v32 + 112);
  v34 = *(v32 + 16);
  v77 = *v32;
  v78 = v34;
  v35 = *(v32 + 48);
  v79 = *(v32 + 32);
  v80 = v35;
  sub_100005AD4(&qword_1003AA520);
  State.wrappedValue.getter();
  v81 = v88;
  v82[0] = v89[0];
  *(v82 + 9) = *(v89 + 9);
  v77 = v84;
  v78 = v85;
  v79 = v86;
  v80 = v87;
  sub_10001EBFC(v23, v27);
  v36 = swift_allocObject();
  sub_10001EC64(v27, v36 + v28);
  v37 = sub_100005AD4(&qword_1003A93C8);
  v64 = sub_10001EA54();
  v38 = sub_10001F344(&qword_1003AA508, sub_1000133B0);
  v39 = v63;
  View.onChange<A>(of:initial:_:)();

  v90[4] = v81;
  v91[0] = v82[0];
  *(v91 + 9) = *(v82 + 9);
  v90[0] = v77;
  v90[1] = v78;
  v90[2] = v79;
  v90[3] = v80;
  sub_100009EBC(v90, &qword_1003A93C8);
  sub_100009EBC(v39, &qword_1003AA4D0);
  v40 = (v62 + *(v68 + 44));
  v41 = v40[3];
  v42 = v40[5];
  v95 = v40[4];
  v96[0] = v42;
  *(v96 + 9) = *(v40 + 89);
  v43 = v40[1];
  v92[0] = *v40;
  v92[1] = v43;
  v44 = v40[3];
  v46 = *v40;
  v45 = v40[1];
  v93 = v40[2];
  v94 = v44;
  v47 = v40[5];
  v75 = v95;
  v76[0] = v47;
  *(v76 + 9) = *(v40 + 89);
  v71 = v46;
  v72 = v45;
  v73 = v93;
  v74 = v41;
  v48 = v65;
  sub_10001EBFC(v62, v65);
  v49 = swift_allocObject();
  sub_10001EC64(v48, v49 + v28);
  sub_10001F620(v92, &v77, &qword_1003A93C8);
  *&v77 = v30;
  *(&v77 + 1) = v37;
  *&v78 = v64;
  *(&v78 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v50 = v59;
  v51 = v67;
  View.onChange<A>(of:initial:_:)();

  v81 = v75;
  v82[0] = v76[0];
  *(v82 + 9) = *(v76 + 9);
  v77 = v71;
  v78 = v72;
  v79 = v73;
  v80 = v74;
  sub_100009EBC(&v77, &qword_1003A93C8);
  return (*(v60 + 8))(v51, v50);
}

uint64_t sub_10001CA4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v35 = sub_100005AD4(&qword_1003AA5A0);
  v33 = *(v35 - 8);
  v3 = __chkstk_darwin(v35);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = sub_100005AD4(&qword_1003AA5A8);
  v32 = *(v7 - 8);
  v8 = v32;
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v38 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v39 = Text.init(_:tableName:bundle:comment:)();
  v40 = v14;
  v41 = v15 & 1;
  v42 = v16;
  sub_100005AD4(&qword_1003AA5B0);
  sub_10001BAEC(&qword_1003AA5B8, &qword_1003AA5B0);
  v31 = v13;
  Section<>.init(header:content:)();
  v37 = a1;
  sub_100005AD4(&qword_1003AA5C0);
  sub_10001BAEC(&qword_1003AA5C8, &qword_1003AA5C0);
  v29 = v6;
  Section<>.init(content:)();
  v17 = *(v8 + 16);
  v30 = v11;
  v18 = v7;
  v17(v11, v13, v7);
  v20 = v33;
  v19 = v34;
  v21 = *(v33 + 16);
  v22 = v6;
  v23 = v35;
  v21(v34, v22, v35);
  v24 = v36;
  v17(v36, v11, v18);
  v25 = sub_100005AD4(&qword_1003AA5D0);
  v21(&v24[*(v25 + 48)], v19, v23);
  v26 = *(v20 + 8);
  v26(v29, v23);
  v27 = *(v32 + 8);
  v27(v31, v18);
  v26(v19, v23);
  return (v27)(v30, v18);
}

uint64_t sub_10001CE30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for MenuOrder();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003AA5E8);
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v54 = &v53 - v6;
  v68 = sub_100005AD4(&qword_1003AA5F0);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v53 = &v53 - v7;
  v8 = sub_100005AD4(&qword_1003AA5F8);
  v9 = __chkstk_darwin(v8 - 8);
  v69 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v53 - v11;
  v62 = type metadata accessor for Locale();
  v12 = *(v62 - 8);
  __chkstk_darwin(v62);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005AD4(&qword_1003AA5D8);
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = __chkstk_darwin(v15);
  v63 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v53 - v18;
  v20 = LocalizedStringKey.init(stringLiteral:)();
  v60 = v21;
  v61 = v20;
  v22 = type metadata accessor for AudioRoutingMenu();
  static Locale.current.getter();
  v23 = Locale.sqDisplayName(context:in:)();
  v25 = v24;
  (*(v12 + 8))(v14, v62);
  if (v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v25)
  {
    v27 = v25;
  }

  *&v78 = v26;
  *(&v78 + 1) = v27;
  sub_10001F278();
  v62 = v19;
  LabeledContent<>.init<A>(_:value:)();
  v28 = (a1 + *(v22 + 20));
  v29 = v28[5];
  v82 = v28[4];
  v83 = v29;
  v84[0] = v28[6];
  *&v84[1] = *(v28 + 14);
  v30 = v28[1];
  v78 = *v28;
  v79 = v30;
  v31 = v28[3];
  v80 = v28[2];
  v81 = v31;
  sub_100005AD4(&qword_1003AA520);
  State.wrappedValue.getter();
  if (v86)
  {
    sub_100009EBC(v85, &qword_1003A93C8);
    LocalizedStringKey.init(stringLiteral:)();
    v32 = v28[5];
    v75 = v28[4];
    v76 = v32;
    v77[0] = v28[6];
    *&v77[1] = *(v28 + 14);
    v33 = v28[1];
    v71 = *v28;
    v72 = v33;
    v34 = v28[3];
    v73 = v28[2];
    v74 = v34;
    v35 = State.projectedValue.getter();
    v75 = v82;
    v76 = v83;
    v77[0] = v84[0];
    *(v77 + 9) = *(v84 + 9);
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    __chkstk_darwin(v35);
    sub_100005AD4(&qword_1003A93C8);
    sub_100005AD4(&qword_1003AA608);
    sub_10001F344(&qword_1003AA610, sub_10001F3BC);
    sub_10001F410();
    v36 = v54;
    Picker<>.init(_:selection:content:)();
    v37 = v57;
    static MenuOrder.fixed.getter();
    sub_10001BAEC(&qword_1003AA628, &qword_1003AA5E8);
    v38 = v53;
    v39 = v56;
    View.menuOrder(_:)();
    (*(v58 + 8))(v37, v59);
    (*(v55 + 8))(v36, v39);
    v40 = v66;
    v41 = v67;
    v42 = v68;
    (*(v66 + 32))(v67, v38, v68);
    (*(v40 + 56))(v41, 0, 1, v42);
  }

  else
  {
    v41 = v67;
    (*(v66 + 56))(v67, 1, 1, v68);
  }

  v44 = v63;
  v43 = v64;
  v45 = *(v64 + 16);
  v46 = v62;
  v47 = v65;
  v45(v63, v62, v65);
  v48 = v69;
  sub_10001F2CC(v41, v69);
  v49 = v70;
  v45(v70, v44, v47);
  v50 = sub_100005AD4(&qword_1003AA600);
  sub_10001F2CC(v48, &v49[*(v50 + 48)]);
  sub_100009EBC(v41, &qword_1003AA5F8);
  v51 = *(v43 + 8);
  v51(v46, v47);
  sub_100009EBC(v48, &qword_1003AA5F8);
  return (v51)(v44, v47);
}

uint64_t sub_10001D608()
{
  type metadata accessor for AudioRoutingMenu();
  swift_getKeyPath();

  sub_100005AD4(&qword_1003AA630);
  sub_100005AD4(&qword_1003AA638);
  sub_10001F514();
  sub_10001F3BC();
  sub_100005EA8(&qword_1003A93C8);
  sub_10001F344(&qword_1003AA610, sub_10001F3BC);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10001D778@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v19 = a1[4];
  v20[0] = v3;
  *(v20 + 9) = *(a1 + 89);
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  v5 = a1[3];
  v17 = a1[2];
  v18 = v5;
  sub_10001F278();

  v27[4] = v19;
  *v28 = v20[0];
  *&v28[9] = *(v20 + 9);
  v27[0] = v15;
  v27[1] = v16;
  v27[2] = v17;
  v27[3] = v18;
  v21 = v15;
  v22 = v16;
  *&v26[9] = *(v20 + 9);
  v25 = v19;
  *v26 = v20[0];
  v23 = v17;
  v24 = v18;
  v26[25] = 1;
  *a2 = Text.init<A>(_:)();
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  v9 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v9;
  v10 = v23;
  v11 = v24;
  *(a2 + 122) = *&v26[10];
  v12 = *v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v12;
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  v29 = 1;
  sub_10001F5C4(&v15, v14);
  sub_10001F620(&v21, v14, &qword_1003A93D0);
  return sub_100009EBC(v27, &qword_1003A93D0);
}

uint64_t sub_10001D8BC@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v34 = type metadata accessor for Locale();
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003AA5D8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v37 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v36 = v32 - v9;
  v10 = __chkstk_darwin(v8);
  v35 = v32 - v11;
  __chkstk_darwin(v10);
  v33 = v32 - v12;
  v32[1] = LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for AudioRoutingMenu();
  static Locale.current.getter();
  v13 = Locale.sqDisplayName(context:in:)();
  v15 = v14;
  (*(v1 + 8))(v3, v34);
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v15)
  {
    v17 = v15;
  }

  v39 = v16;
  v40 = v17;
  sub_10001F278();
  LabeledContent<>.init<A>(_:value:)();
  LocalizedStringKey.init(stringLiteral:)();
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 name];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v39 = v20;
  v40 = v22;
  v23 = v35;
  LabeledContent<>.init<A>(_:value:)();
  v24 = *(v5 + 16);
  v25 = v36;
  v26 = v33;
  v24(v36, v33, v4);
  v27 = v37;
  v24(v37, v23, v4);
  v28 = v38;
  v24(v38, v25, v4);
  v29 = sub_100005AD4(&qword_1003AA5E0);
  v24(&v28[*(v29 + 48)], v27, v4);
  v30 = *(v5 + 8);
  v30(v23, v4);
  v30(v26, v4);
  v30(v27, v4);
  return (v30)(v25, v4);
}

uint64_t sub_10001DCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_100005AD4(&qword_1003AA528);
  __chkstk_darwin(v19);
  v17 = &v17 - v3;
  v18 = sub_100005AD4(&qword_1003AA530);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100005AD4(&qword_1003AA538);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  static ToolbarItemPlacement.navigationBarLeading.getter();
  v22 = a1;
  sub_100005AD4(&qword_1003AA540);
  sub_10001BAEC(&qword_1003AA548, &qword_1003AA540);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v21 = a1;
  sub_100005AD4(&qword_1003AA550);
  sub_10001EDDC();
  ToolbarItem<>.init(placement:content:)();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10001E010(uint64_t a1)
{
  v2 = type metadata accessor for AudioRoutingMenu();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10001EBFC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10001EC64(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button<>.init(_:action:)();
}

uint64_t sub_10001E158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioRoutingMenu();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v7 - 8);
  static ButtonRole.confirm.getter();
  sub_10001EBFC(a1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10001EC64(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  Button<>.init(role:action:)();
  static Font.body.getter();
  v10 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v12 = (a2 + *(sub_100005AD4(&qword_1003AA568) + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  v13 = static Color.translateAccentColor.getter();
  v14 = swift_getKeyPath();
  v18[1] = v13;
  v15 = AnyShapeStyle.init<A>(_:)();
  result = sub_100005AD4(&qword_1003AA550);
  v17 = (a2 + *(result + 36));
  *v17 = v14;
  v17[1] = v15;
  return result;
}

uint64_t sub_10001E350(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&unk_1003B1290);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F620(a1, v7, &unk_1003B1290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10001E5CC(uint64_t a1)
{
  v2 = type metadata accessor for AudioRoutingMenu();
  v3 = (a1 + *(v2 + 20));
  v4 = v3[5];
  v19 = v3[4];
  *v20 = v4;
  *&v20[16] = v3[6];
  v21 = *(v3 + 14);
  v5 = v3[1];
  v15 = *v3;
  v16 = v5;
  v6 = v3[3];
  v17 = v3[2];
  v18 = v6;
  sub_100005AD4(&qword_1003AA520);
  result = State.wrappedValue.getter();
  v8 = v23;
  if (v23)
  {
    v9 = v22;
    v10 = (a1 + *(v2 + 44));
    v11 = *v10;
    v12 = v10[1];
    if (*v10)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      v14 = sub_10001ED78;
    }

    else
    {
      v14 = nullsub_1;
    }

    *&v15 = v9;
    *(&v15 + 1) = v8;
    v18 = v26;
    v19 = v27;
    *v20 = v28[0];
    *&v20[9] = *(v28 + 9);
    v16 = v24;
    v17 = v25;
    sub_10001AD18(v11);
    (v14)(&v15);

    return sub_100009EBC(&v22, &qword_1003A93C8);
  }

  return result;
}

uint64_t sub_10001E734(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[5];
  v6[4] = a1[4];
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 89);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return a2(v6);
}

uint64_t sub_10001E788(uint64_t a1)
{
  result = type metadata accessor for AudioRoutingMenu();
  v3 = (a1 + *(result + 36));
  v4 = v3[5];
  v32[4] = v3[4];
  v33[0] = v4;
  *(v33 + 9) = *(v3 + 89);
  v5 = v3[3];
  v32[2] = v3[2];
  v32[3] = v5;
  v6 = v3[1];
  v32[0] = *v3;
  v32[1] = v6;
  if (*(&v32[0] + 1))
  {
    v7 = (a1 + *(result + 20));
    v8 = v7[5];
    v9 = v7[3];
    v26 = v7[4];
    v27 = v8;
    v10 = v7[5];
    v28 = v7[6];
    v11 = v7[1];
    v23[0] = *v7;
    v23[1] = v11;
    v12 = v7[3];
    v14 = *v7;
    v13 = v7[1];
    v24 = v7[2];
    v25 = v12;
    v19 = v26;
    v20 = v10;
    v21 = v7[6];
    v15 = v14;
    v16 = v13;
    v29 = *(v7 + 14);
    v22 = *(v7 + 14);
    v17 = v24;
    v18 = v9;
    sub_10001F620(v32, v30, &qword_1003A93C8);
    sub_10001F620(v23, v30, &qword_1003AA520);
    sub_100005AD4(&qword_1003AA520);
    State.wrappedValue.setter();
    v30[4] = v19;
    v30[5] = v20;
    v30[6] = v21;
    v31 = v22;
    v30[0] = v15;
    v30[1] = v16;
    v30[2] = v17;
    v30[3] = v18;
    return sub_100009EBC(v30, &qword_1003AA520);
  }

  return result;
}

uint64_t sub_10001E8FC()
{
  sub_100005AD4(&qword_1003AA4C0);
  sub_100005EA8(&qword_1003AA4C8);
  sub_100005EA8(&qword_1003A93C8);
  sub_100005EA8(&qword_1003AA4D0);
  sub_10001EA54();
  sub_10001F344(&qword_1003AA508, sub_1000133B0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_10001EA54()
{
  result = qword_1003AA4D8;
  if (!qword_1003AA4D8)
  {
    sub_100005EA8(&qword_1003AA4D0);
    sub_100005EA8(&qword_1003AA4E0);
    sub_100005EA8(&qword_1003AA4E8);
    sub_100005EA8(&qword_1003AA4F0);
    sub_10001BAEC(&qword_1003AA4F8, &qword_1003AA4F0);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA500, &qword_1003AA4E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA4D8);
  }

  return result;
}

uint64_t sub_10001EBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioRoutingMenu();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioRoutingMenu();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001ECE0()
{
  v1 = *(type metadata accessor for AudioRoutingMenu() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001E5CC(v2);
}

uint64_t sub_10001ED40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001ED78(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[5];
  v7[4] = a1[4];
  v8[0] = v3;
  *(v8 + 9) = *(a1 + 89);
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return v2(v7);
}

unint64_t sub_10001EDDC()
{
  result = qword_1003AA558;
  if (!qword_1003AA558)
  {
    sub_100005EA8(&qword_1003AA550);
    sub_10001EE94();
    sub_10001BAEC(&qword_1003AA590, &qword_1003AA598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA558);
  }

  return result;
}

unint64_t sub_10001EE94()
{
  result = qword_1003AA560;
  if (!qword_1003AA560)
  {
    sub_100005EA8(&qword_1003AA568);
    sub_10001BAEC(&qword_1003AA570, &qword_1003AA578);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA560);
  }

  return result;
}

uint64_t sub_10001EF88()
{
  v1 = type metadata accessor for AudioRoutingMenu();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100005AD4(&unk_1003B1290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  if (*(v7 + 8))
  {
  }

  v8 = v5 + v1[6];
  if (*(v8 + 8))
  {
  }

  v9 = v1[7];
  v10 = type metadata accessor for Locale();
  v11 = *(*(v10 - 8) + 8);
  v11(v5 + v9, v10);
  v11(v5 + v1[8], v10);
  v12 = v5 + v1[9];
  if (*(v12 + 8))
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10001F278()
{
  result = qword_1003B8CF0;
  if (!qword_1003B8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8CF0);
  }

  return result;
}

uint64_t sub_10001F2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AA5F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F344(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(&qword_1003A93C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001F3BC()
{
  result = qword_1003AA618;
  if (!qword_1003AA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA618);
  }

  return result;
}

unint64_t sub_10001F410()
{
  result = qword_1003AA620;
  if (!qword_1003AA620)
  {
    sub_100005EA8(&qword_1003AA608);
    sub_100005EA8(&qword_1003A93C8);
    sub_10001F344(&qword_1003AA610, sub_10001F3BC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA620);
  }

  return result;
}

unint64_t sub_10001F514()
{
  result = qword_1003AA640;
  if (!qword_1003AA640)
  {
    sub_100005EA8(&qword_1003AA630);
    sub_10001BAEC(&qword_1003AA648, &qword_1003AA650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA640);
  }

  return result;
}

uint64_t sub_10001F620(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005AD4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10001F6E4()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v61 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v59 - v5;
  v7 = type metadata accessor for BottomToTopLayout();
  v73.receiver = v0;
  v73.super_class = v7;
  v68 = v7;
  objc_msgSendSuper2(&v73, "prepareLayout");
  v8 = OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes;
  swift_beginAccess();
  *&v0[v8] = &_swiftEmptyDictionarySingleton;

  v9 = [v0 collectionView];
  if (!v9)
  {
    return;
  }

  v10 = v0[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_faceToFaceSide];
  v11 = v9;
  [v11 bounds];
  Height = CGRectGetHeight(v74);
  [v11 safeAreaInsets];
  v14 = v13;
  if (v10 == 2 || (v10 & 1) != 0)
  {
    v19 = Height - v13;
    [v11 safeAreaInsets];
    v21 = v20;

    [v11 keyboardBottomInsetAdjustmentDelta];
    v18 = v19 - v21 - v22 - *&v1[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_additionalSpeakButtonPadding];
  }

  else
  {
    [v11 safeAreaInsets];
    v16 = v15;

    [v11 keyboardBottomInsetAdjustmentDelta];
    v18 = Height - (v14 + v16 + v17);
  }

  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_viewportHeight] = v18;
  [v1 collectionViewContentSize];
  if (v18 - v23 >= 0.0)
  {
    v24 = v18 - v23;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = [v11 numberOfSections];
  if ((v25 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if (!v25)
  {
LABEL_30:

    return;
  }

  v26 = 0;
  v66 = (v61 + 16);
  v67 = (v61 + 8);
  v62 = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v63 = v6;
  v60 = v11;
  v59 = v25;
  while (1)
  {
    v27 = [v11 numberOfItemsInSection:{v26, v59, v60}];
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v28 = v27;
    if (v27)
    {
      break;
    }

LABEL_12:
    ++v26;
    v11 = v60;
    if (v26 == v59)
    {
      goto LABEL_30;
    }
  }

  v29 = 0;
  v65 = v26;
  v64 = v27;
  while (1)
  {
    IndexPath.init(row:section:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v72.receiver = v1;
    v72.super_class = v68;
    v31 = objc_msgSendSuper2(&v72, "layoutAttributesForItemAtIndexPath:", isa);

    if (!v31)
    {
      (*v67)(v6, v2);
      goto LABEL_17;
    }

    CGAffineTransformMakeTranslation(&v71, 0.0, v24);
    [v31 setTransform:&v71];
    v32 = *v66;
    v33 = v69;
    v34 = v6;
    v35 = v2;
    (*v66)(v69, v34, v2);
    swift_beginAccess();
    v36 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *&v1[v8];
    v38 = v70;
    v39 = v1;
    v40 = v8;
    v41 = v39;
    *&v39[v8] = 0x8000000000000000;
    v43 = sub_10028DECC(v33);
    v44 = v38[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    v47 = v42;
    if (v38[3] >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10029082C();
      }
    }

    else
    {
      sub_10028ED38(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_10028DECC(v69);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_36;
      }

      v43 = v48;
    }

    v2 = v35;
    v50 = v70;
    if (v47)
    {
      v51 = v70[7];
      v52 = *(v51 + 8 * v43);
      *(v51 + 8 * v43) = v36;

      v53 = *v67;
      (*v67)(v69, v35);
    }

    else
    {
      v70[(v43 >> 6) + 8] |= 1 << v43;
      v54 = v61;
      v55 = v69;
      v32(v50[6] + *(v61 + 72) * v43, v69, v2);
      *(v50[7] + 8 * v43) = v36;
      v53 = *(v54 + 8);
      v53(v55, v2);
      v56 = v50[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_33;
      }

      v50[2] = v58;
    }

    v6 = v63;
    v8 = v40;
    v1 = v41;
    *&v41[v8] = v50;

    swift_endAccess();

    v53(v6, v2);
    v26 = v65;
    v28 = v64;
LABEL_17:
    if (v28 == ++v29)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10001FCE0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = *(*(v10 + 56) + ((v16 << 9) | (8 * v17)));
        [v18 frame];
        v20.origin.x = a1;
        v20.origin.y = a2;
        v20.size.width = a3;
        v20.size.height = a4;
        if (CGRectIntersectsRect(v19, v20))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v15 = v16;
          if (!v13)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v15 = v16;
          if (!v13)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v16 = v15;
      }
    }
  }

  __break(1u);
}

id sub_10001FF20(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16) && (, sub_10028DECC(a1), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(v1 + v7);
    if (*(v10 + 16))
    {

      v11 = sub_10028DECC(a1);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);

        return v13;
      }
    }
  }

  else
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000078E8(v15, qword_1003D2770);
    (*(v4 + 16))(v6, a1, v3);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      sub_1000208A0();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v4 + 8))(v6, v3);
      v23 = sub_10028D78C(v20, v22, &v24);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "BottomToTopLayout can't find cached attributes for indexPath: %{public}s", v18, 0xCu);
      sub_100008664(v19);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

id sub_100020418(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_viewportHeight] = 0;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_additionalSpeakButtonPadding] = 0;
  v2[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_faceToFaceSide] = 2;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A3A0C;
  aBlock[3] = &unk_10037F698;
  v3 = _Block_copy(aBlock);

  v6.receiver = v2;
  v6.super_class = type metadata accessor for BottomToTopLayout();
  v4 = objc_msgSendSuper2(&v6, "initWithSectionProvider:", v3);

  _Block_release(v3);
  return v4;
}

id sub_100020580(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes] = &_swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_viewportHeight] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_additionalSpeakButtonPadding] = 0;
  v3[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_faceToFaceSide] = 2;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A3A0C;
  aBlock[3] = &unk_10037F648;
  v5 = _Block_copy(aBlock);

  v8.receiver = v3;
  v8.super_class = type metadata accessor for BottomToTopLayout();
  v6 = objc_msgSendSuper2(&v8, "initWithSectionProvider:configuration:", v5, a3);

  _Block_release(v5);
  return v6;
}

id sub_100020714(void *a1)
{
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_viewportHeight] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_additionalSpeakButtonPadding] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_faceToFaceSide] = 2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BottomToTopLayout();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000207E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BottomToTopLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100020848()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000208A0()
{
  result = qword_1003AA718;
  if (!qword_1003AA718)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA718);
  }

  return result;
}

unint64_t sub_1000208F8()
{
  result = qword_1003AA720;
  if (!qword_1003AA720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AA720);
  }

  return result;
}

__n128 sub_100020954(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100020968(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000209C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100020A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v35 = a2;
  v3 = sub_100005AD4(&qword_1003AA730);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  KeyPath = swift_getKeyPath();
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v2[5];
  v69 = *(v2 + 3);
  v70 = v9;
  v68 = v10;
  v11 = swift_allocObject();
  v12 = *(v2 + 1);
  v11[1] = *v2;
  v11[2] = v12;
  v11[3] = *(v2 + 2);
  v13 = sub_100005AD4(&qword_1003AA738);
  (*(*(v13 - 8) + 16))(v6, v33, v13);
  v14 = &v6[*(v4 + 44)];
  *v14 = KeyPath;
  v14[1] = sub_100021138;
  v14[2] = v11;
  v47 = *(v2 + 3);
  *&v48 = v10;
  v34 = v8;

  sub_10001F620(&v70, &v51, &qword_1003AA740);
  sub_10001F620(&v69, &v51, &qword_1003AA748);
  sub_10001F620(&v68, &v51, &qword_1003AA750);
  sub_100005AD4(&qword_1003AA758);
  State.projectedValue.getter();
  v15 = v51;
  v16 = v52;
  v17 = v53;
  v18 = v54;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = static Alignment.center.getter();
  v20 = v19;
  *(v49 + 8) = v44;
  *(&v49[1] + 8) = v45;
  *(&v49[2] + 8) = v46;
  *(&v49[6] + 8) = v40;
  *(&v49[7] + 8) = v41;
  *(&v49[8] + 8) = v42;
  *(&v49[9] + 8) = v43;
  *(&v49[3] + 8) = v37;
  *(&v49[4] + 8) = v38;
  *&v47 = v15;
  *(&v47 + 1) = v16;
  *&v48 = v17;
  *(&v48 + 1) = v18;
  *(&v49[5] + 8) = v39;
  v21 = v34;
  *&v49[0] = v34;
  *(&v49[10] + 1) = v33;
  v50 = v19;
  v22 = v6;
  v23 = v35;
  sub_100021140(v22, v35);
  v24 = v23 + *(sub_100005AD4(&qword_1003AA760) + 36);
  v25 = v49[9];
  *(v24 + 160) = v49[8];
  *(v24 + 176) = v25;
  *(v24 + 192) = v49[10];
  v26 = v49[5];
  *(v24 + 96) = v49[4];
  *(v24 + 112) = v26;
  v27 = v49[7];
  *(v24 + 128) = v49[6];
  *(v24 + 144) = v27;
  v28 = v49[1];
  *(v24 + 32) = v49[0];
  *(v24 + 48) = v28;
  v29 = v49[3];
  *(v24 + 64) = v49[2];
  *(v24 + 80) = v29;
  v30 = v48;
  *v24 = v47;
  *(v24 + 16) = v30;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v31 = v39;
  v62 = v40;
  v63 = v41;
  v64 = v42;
  v65 = v43;
  v59 = v37;
  v60 = v38;
  *(v24 + 208) = v50;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = v18;
  v61 = v31;
  v55 = v21;
  v66 = v33;
  v67 = v20;
  sub_10001F620(&v47, &v36, &qword_1003AA768);
  return sub_100009EBC(&v51, &qword_1003AA768);
}

uint64_t sub_100020E2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1003A9210 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2740);
  v5 = a3[1];
  v22 = *a3;
  v6 = a3[2];
  v7 = a3[5];
  v21 = *(a3 + 3);
  v16 = v5;
  v17 = v7;
  v20 = v7;
  sub_10001F620(&v22, &v18, &qword_1003AA770);

  sub_10001F620(&v21, &v18, &qword_1003AA748);
  sub_10001F620(&v20, &v18, &qword_1003AA750);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100009EBC(&v22, &qword_1003AA770);

  sub_100009EBC(&v21, &qword_1003AA748);
  sub_100009EBC(&v20, &qword_1003AA750);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v18 = v11;
    *v10 = 136315138;
    if (v6)
    {
      v12 = v16;
    }

    else
    {
      v12 = 0x6C6562616C206F6ELL;
    }

    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    v14 = sub_10028D78C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Asked to show new translation for: %s", v10, 0xCu);
    sub_100008664(v11);
  }

  v18 = *(a3 + 3);
  v19 = v17;
  swift_unknownObjectRetain();
  sub_100005AD4(&qword_1003AA758);
  return State.wrappedValue.setter();
}

uint64_t sub_1000210E8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100021140(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AA730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000211B4()
{
  result = qword_1003AA778;
  if (!qword_1003AA778)
  {
    sub_100005EA8(&qword_1003AA760);
    sub_10002126C();
    sub_10001BAEC(&qword_1003AA7A0, &qword_1003AA768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA778);
  }

  return result;
}

unint64_t sub_10002126C()
{
  result = qword_1003AA780;
  if (!qword_1003AA780)
  {
    sub_100005EA8(&qword_1003AA730);
    sub_10001BAEC(&qword_1003AA788, &qword_1003AA738);
    sub_10001BAEC(&qword_1003AA790, &qword_1003AA798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA780);
  }

  return result;
}

__n128 sub_100021350(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100021364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000213AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100021410(void *a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = *(v1 + 1);
  *&v37[0] = *v1;
  *(&v37[0] + 1) = v4;
  v37[1] = *(v1 + 1);
  v38 = v6;
  sub_100005AD4(&qword_1003AA7B0);
  Binding.wrappedValue.getter();
  if (v36[0])
  {
    v7 = v1[4];
    if (v7)
    {

      v8 = [a1 presentedViewController];
      if (v8)
      {

        if (qword_1003A9210 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000078E8(v9, qword_1003D2740);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Already has presented controller, skipping update.", v12, 2u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for BroadcastViewModel();
        v22 = swift_allocObject();
        ObjectType = swift_getObjectType();

        v24 = swift_unknownObjectRetain();
        v25 = sub_1000263A8(v24, v7, 0, 0, v22, ObjectType, v36[1]);

        v26 = objc_allocWithZone(type metadata accessor for BroadcastViewController());

        v27 = sub_1000247AC();
        v39 = v5;
        v37[0] = v38;
        v28 = swift_allocObject();
        *(v28 + 48) = v2[4];
        v29 = *(v2 + 1);
        *(v28 + 16) = *v2;
        *(v28 + 32) = v29;
        v30 = &v27[qword_1003AA968];
        v31 = *&v27[qword_1003AA968];
        *v30 = sub_100021BD8;
        v30[1] = v28;

        sub_100021C2C(&v39, v36);

        sub_100021C88(v37, v36);
        sub_10001ABE4(v31);
        v32 = swift_allocObject();
        *(v32 + 16) = v27;
        v33 = (v25 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_dismissHandler);
        v34 = *(v25 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_dismissHandler);
        *v33 = sub_100021D30;
        v33[1] = v32;
        v35 = v27;
        sub_10001ABE4(v34);
        [a1 presentViewController:v35 animated:1 completion:0];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_1003A9210 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000078E8(v18, qword_1003D2740);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "No TTS manager provided", v21, 2u);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003A9210 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D2740);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "There's no translation object to present; early returning", v16, 2u);
    }

    v17 = [a1 presentedViewController];
    if (v17)
    {

      [a1 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1000218D4(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_100021D38;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100096948;
  v5[3] = &unk_10037F868;
  v3 = _Block_copy(v5);
  v4 = a1;

  [v4 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

id sub_1000219B4()
{
  v0 = objc_allocWithZone(UIViewController);

  return [v0 initWithNibName:0 bundle:0];
}

uint64_t sub_100021A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100021D58();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100021AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100021D58();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100021B08()
{
  sub_100021D58();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100021B34()
{
  result = qword_1003AA7A8;
  if (!qword_1003AA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA7A8);
  }

  return result;
}

uint64_t sub_100021B88()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100021C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AA748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021CF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100021D58()
{
  result = qword_1003AA7B8;
  if (!qword_1003AA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA7B8);
  }

  return result;
}

uint64_t sub_100021DDC@<X0>(__int128 *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v43 = a2;
  v3 = sub_100005AD4(&qword_1003AA800);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_100005AD4(&qword_1003AA808);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v10 = sub_100005AD4(&qword_1003AA810);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v42 - v16;
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v20 = *a1;
  v45 = a1[1];
  v46 = v20;
  v21 = swift_allocObject();
  v22 = a1[1];
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 4);
  sub_10001F620(&v46, v44, &qword_1003AA818);
  sub_10001F620(&v45, v44, &qword_1003AA820);
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v23 = sub_100005AD4(&qword_1003AA828);
  sub_1000230FC(&v5[*(v23 + 44)]);
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023BD4(v5, v9, &qword_1003AA800);
  v24 = &v9[*(v7 + 44)];
  v25 = v44[5];
  *(v24 + 4) = v44[4];
  *(v24 + 5) = v25;
  *(v24 + 6) = v44[6];
  v27 = v44[1];
  v26 = v44[2];
  *v24 = v44[0];
  *(v24 + 1) = v27;
  v28 = v44[3];
  *(v24 + 2) = v26;
  *(v24 + 3) = v28;
  LOBYTE(v5) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100023BD4(v9, v17, &qword_1003AA808);
  v37 = &v17[*(v11 + 44)];
  *v37 = v5;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_100023BD4(v17, v19, &qword_1003AA810);
  sub_10001F620(v19, v14, &qword_1003AA810);
  v38 = v43;
  *v43 = sub_100023BCC;
  v38[1] = v21;
  v39 = v38;
  v40 = sub_100005AD4(&qword_1003AA830);
  sub_10001F620(v14, v39 + *(v40 + 48), &qword_1003AA810);

  sub_100009EBC(v19, &qword_1003AA810);
  sub_100009EBC(v14, &qword_1003AA810);
}

uint64_t sub_1000221AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AA8B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  static Axis.Set.vertical.getter();
  v10 = a2;
  v11 = a1;
  sub_100005AD4(&qword_1003AA8C0);
  sub_100024120();
  ScrollView.init(_:showsIndicators:content:)();
  v12 = *(a2 + 16);
  sub_100005AD4(&qword_1003AA820);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  sub_10001BAEC(&qword_1003AA940, &qword_1003AA8B8);
  View.scrollDisabled(_:)();
  return (*(v5 + 8))(v7, v4);
}

__n128 sub_100022384@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v84 = a1;
  v112 = a3;
  v4 = sub_100005AD4(&qword_1003AA948);
  __chkstk_darwin(v4 - 8);
  v110 = &v81 - v5;
  v105 = type metadata accessor for EnabledTextSelectability();
  v107 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Locale();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for LayoutDirection();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100005AD4(&qword_1003AA920);
  __chkstk_darwin(v86);
  v10 = &v81 - v9;
  v101 = sub_100005AD4(&qword_1003AA950);
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v85 = &v81 - v11;
  v96 = sub_100005AD4(&qword_1003AA918) - 8;
  __chkstk_darwin(v96);
  v93 = &v81 - v12;
  v97 = sub_100005AD4(&qword_1003AA900);
  __chkstk_darwin(v97);
  v94 = &v81 - v13;
  v109 = sub_100005AD4(&qword_1003AA958);
  v106 = *(v109 - 8);
  __chkstk_darwin(v109);
  v95 = &v81 - v14;
  v103 = sub_100005AD4(&qword_1003AA8F8) - 8;
  __chkstk_darwin(v103);
  v99 = &v81 - v15;
  v104 = sub_100005AD4(&qword_1003AA8E8) - 8;
  __chkstk_darwin(v104);
  v102 = &v81 - v16;
  v108 = sub_100005AD4(&qword_1003AA8D8) - 8;
  __chkstk_darwin(v108);
  v83 = &v81 - v17;
  v18 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10001F278();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v82 = v24;
  KeyPath = swift_getKeyPath();
  v26 = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_translation + 8);
  ObjectType = swift_getObjectType();
  v28 = *(v26 + 48);
  swift_unknownObjectRetain();
  v29 = v28(ObjectType, v26);
  swift_unknownObjectRelease();
  v30 = [v29 targetLocale];

  v31 = v87;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v30) = Locale.isRTL()();
  (*(v91 + 8))(v31, v92);
  v32 = v89;
  v33 = &enum case for LayoutDirection.rightToLeft(_:);
  if ((v30 & 1) == 0)
  {
    v33 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v34 = v88;
  v35 = v90;
  (*(v89 + 104))(v88, *v33, v90);
  v36 = &v10[*(v86 + 36)];
  v37 = sub_100005AD4(&qword_1003AA938);
  (*(v32 + 32))(v36 + *(v37 + 28), v34, v35);
  *v36 = KeyPath;
  *v10 = v19;
  *(v10 + 1) = v21;
  v10[16] = v23 & 1;
  *(v10 + 3) = v82;
  v38 = v100;
  EnabledTextSelectability.init()();
  sub_100024558();
  v39 = v85;
  v40 = v105;
  View.textSelection<A>(_:)();
  (*(v107 + 8))(v38, v40);
  v41 = v10;
  v42 = v83;
  sub_100009EBC(v41, &qword_1003AA920);
  static Font.Weight.bold.getter();
  v43 = type metadata accessor for Font.Design();
  v44 = v110;
  (*(*(v43 - 8) + 56))(v110, 1, 1, v43);
  v45 = static Font.system(size:weight:design:)();
  sub_100009EBC(v44, &qword_1003AA948);
  v46 = swift_getKeyPath();
  v47 = v93;
  (*(v98 + 32))(v93, v39, v101);
  v48 = (v47 + *(v96 + 44));
  *v48 = v46;
  v48[1] = v45;
  v49 = static Color.white.getter();
  v50 = swift_getKeyPath();
  v51 = v94;
  sub_100023BD4(v47, v94, &qword_1003AA918);
  v52 = (v51 + *(v97 + 36));
  *v52 = v50;
  v52[1] = v49;
  v113 = *(v84 + 16);
  sub_100005AD4(&qword_1003AA820);
  State.projectedValue.getter();
  sub_10002438C();
  v53 = v95;
  View.bindGeometry(to:reader:)();

  sub_100009EBC(v51, &qword_1003AA900);
  LOBYTE(v49) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v99;
  (*(v106 + 32))(v99, v53, v109);
  v63 = v62 + *(v103 + 44);
  *v63 = v49;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  LOBYTE(v49) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v102;
  sub_100023BD4(v62, v102, &qword_1003AA8F8);
  v73 = v72 + *(v104 + 44);
  *v73 = v49;
  *(v73 + 8) = v65;
  *(v73 + 16) = v67;
  *(v73 + 24) = v69;
  *(v73 + 32) = v71;
  *(v73 + 40) = 0;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100023BD4(v72, v42, &qword_1003AA8E8);
  v74 = (v42 + *(v108 + 44));
  v75 = v114;
  *v74 = v113;
  v74[1] = v75;
  v74[2] = v115;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v76 = v112;
  sub_100023BD4(v42, v112, &qword_1003AA8D8);
  v77 = v76 + *(sub_100005AD4(&qword_1003AA8C0) + 36);
  v78 = v121;
  *(v77 + 64) = v120;
  *(v77 + 80) = v78;
  *(v77 + 96) = v122;
  v79 = v117;
  *v77 = v116;
  *(v77 + 16) = v79;
  result = v119;
  *(v77 + 32) = v118;
  *(v77 + 48) = result;
  return result;
}

uint64_t sub_10002300C(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_1000230FC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v51 = type metadata accessor for AccessibilityTraits();
  v46 = *(v51 - 8);
  v47 = v46;
  __chkstk_darwin(v51);
  v2 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003AA838);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v45 = sub_100005AD4(&qword_1003AA840);
  __chkstk_darwin(v45);
  v7 = &v45 - v6;
  v53 = sub_100005AD4(&qword_1003AA848);
  v8 = __chkstk_darwin(v53);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - v11;
  __chkstk_darwin(v10);
  v52 = &v45 - v13;
  v14 = sub_100005AD4(&qword_1003AA850);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v17 = sub_100005AD4(&qword_1003AA858);
  v18 = __chkstk_darwin(v17 - 8);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v49 = &v45 - v20;

  ConversationButton.init(action:)();
  v21 = static Color.broadcastTintColor.getter();
  KeyPath = swift_getKeyPath();
  v23 = &v16[*(v14 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_100023EEC();
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v16, &qword_1003AA850);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = enum case for PlayButton.Size.large(_:);
  v25 = type metadata accessor for PlayButton.Size();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v5, v24, v25);
  (*(v26 + 56))(v5, 0, 1, v25);

  PlayButton.init(isPlaying:size:action:)();
  v27 = static Color.white.getter();
  v28 = swift_getKeyPath();
  v29 = &v7[*(v45 + 36)];
  *v29 = v28;
  v29[1] = v27;
  sub_100005AD4(&qword_1003AA880);
  v30 = v47;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1002D1370;
  static AccessibilityTraits.playsSound.getter();
  static AccessibilityTraits.startsMediaSession.getter();
  v55._countAndFlagsBits = v31;
  sub_1000240D0(&qword_1003AA888, &type metadata accessor for AccessibilityTraits);
  sub_100005AD4(&qword_1003AA890);
  sub_10001BAEC(&qword_1003AA898, &qword_1003AA890);
  v32 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100023FE8();
  v33 = v48;
  View.accessibilityAddTraits(_:)();
  (*(v30 + 8))(v2, v32);
  sub_100009EBC(v7, &qword_1003AA840);
  v34 = [objc_opt_self() mainBundle];
  v56._object = 0xE000000000000000;
  v35._object = 0x80000001002F0900;
  v35._countAndFlagsBits = 0xD000000000000015;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v56);

  v55 = v37;
  sub_10001F278();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  sub_100009EBC(v33, &qword_1003AA848);
  v38 = v52;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_100009EBC(v12, &qword_1003AA848);
  v40 = v49;
  v39 = v50;
  sub_10001F620(v49, v50, &qword_1003AA858);
  sub_10001F620(v38, v12, &qword_1003AA848);
  v41 = v54;
  sub_10001F620(v39, v54, &qword_1003AA858);
  v42 = sub_100005AD4(&qword_1003AA8B0);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_10001F620(v12, v41 + *(v42 + 64), &qword_1003AA848);
  sub_100009EBC(v38, &qword_1003AA848);
  sub_100009EBC(v40, &qword_1003AA858);
  sub_100009EBC(v12, &qword_1003AA848);
  return sub_100009EBC(v39, &qword_1003AA858);
}

uint64_t sub_1000238C8(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_dismissHandler);
  if (v1)
  {

    v1(v2);

    return sub_10001ABE4(v1);
  }

  return result;
}

uint64_t sub_100023948@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005AD4(&qword_1003AA7C0);
  __chkstk_darwin(v3);
  v5 = (v16 - v4);
  v6 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v6;
  v17 = *(v1 + 32);
  *v5 = static Alignment.center.getter();
  v5[1] = v7;
  v8 = sub_100005AD4(&qword_1003AA7C8);
  sub_100021DDC(v16, (v5 + *(v8 + 44)));
  v9 = static Color.broadcastTintColor.getter();
  v10 = static Edge.Set.all.getter();
  v11 = static Alignment.center.getter();
  v12 = v5 + *(v3 + 36);
  *v12 = v9;
  v12[8] = v10;
  *(v12 + 2) = v11;
  *(v12 + 3) = v13;
  sub_100023AA8();
  View.statusBar(hidden:)();
  sub_100009EBC(v5, &qword_1003AA7C0);
  result = sub_100005AD4(&qword_1003AA7F8);
  v15 = (a1 + *(result + 36));
  *v15 = sub_100023934;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 0;
  return result;
}

unint64_t sub_100023AA8()
{
  result = qword_1003AA7D0;
  if (!qword_1003AA7D0)
  {
    sub_100005EA8(&qword_1003AA7C0);
    sub_10001BAEC(&qword_1003AA7D8, &qword_1003AA7E0);
    sub_10001BAEC(&qword_1003AA7E8, &qword_1003AA7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA7D0);
  }

  return result;
}

uint64_t sub_100023B8C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100023BD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005AD4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023C44@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100023CC4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100023D48@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100023DC8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100023E3C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100023E68@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100023EEC()
{
  result = qword_1003AA860;
  if (!qword_1003AA860)
  {
    sub_100005EA8(&qword_1003AA850);
    sub_1000240D0(&qword_1003AA868, &type metadata accessor for ConversationButton);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA860);
  }

  return result;
}

unint64_t sub_100023FE8()
{
  result = qword_1003AA8A0;
  if (!qword_1003AA8A0)
  {
    sub_100005EA8(&qword_1003AA840);
    sub_1000240D0(&qword_1003AA8A8, &type metadata accessor for PlayButton);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8A0);
  }

  return result;
}

uint64_t sub_1000240D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100024120()
{
  result = qword_1003AA8C8;
  if (!qword_1003AA8C8)
  {
    sub_100005EA8(&qword_1003AA8C0);
    sub_1000241AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8C8);
  }

  return result;
}

unint64_t sub_1000241AC()
{
  result = qword_1003AA8D0;
  if (!qword_1003AA8D0)
  {
    sub_100005EA8(&qword_1003AA8D8);
    sub_100024238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8D0);
  }

  return result;
}

unint64_t sub_100024238()
{
  result = qword_1003AA8E0;
  if (!qword_1003AA8E0)
  {
    sub_100005EA8(&qword_1003AA8E8);
    sub_1000242C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8E0);
  }

  return result;
}

unint64_t sub_1000242C4()
{
  result = qword_1003AA8F0;
  if (!qword_1003AA8F0)
  {
    sub_100005EA8(&qword_1003AA8F8);
    sub_100005EA8(&qword_1003AA900);
    sub_10002438C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA8F0);
  }

  return result;
}

unint64_t sub_10002438C()
{
  result = qword_1003AA908;
  if (!qword_1003AA908)
  {
    sub_100005EA8(&qword_1003AA900);
    sub_100024444();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA908);
  }

  return result;
}

unint64_t sub_100024444()
{
  result = qword_1003AA910;
  if (!qword_1003AA910)
  {
    sub_100005EA8(&qword_1003AA918);
    sub_100005EA8(&qword_1003AA920);
    type metadata accessor for EnabledTextSelectability();
    sub_100024558();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA910);
  }

  return result;
}

unint64_t sub_100024558()
{
  result = qword_1003AA928;
  if (!qword_1003AA928)
  {
    sub_100005EA8(&qword_1003AA920);
    sub_10001BAEC(&qword_1003AA930, &qword_1003AA938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA928);
  }

  return result;
}

unint64_t sub_10002464C()
{
  result = qword_1003AA960;
  if (!qword_1003AA960)
  {
    sub_100005EA8(&qword_1003AA7F8);
    sub_100005EA8(&qword_1003AA7C0);
    sub_100023AA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA960);
  }

  return result;
}

uint64_t type metadata accessor for BroadcastViewController()
{
  result = qword_1003AA970;
  if (!qword_1003AA970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000247AC()
{
  v1 = (v0 + qword_1003AA968);
  *v1 = 0;
  v1[1] = 0;
  type metadata accessor for BroadcastViewModel();
  sub_100024A98();

  v2 = ObservedObject.init(wrappedValue:)();
  v4 = v3;
  State.init(wrappedValue:)();
  v5 = UIHostingController.init(rootView:)();
  [v5 setModalPresentationStyle:{5, v2, v4, v7, v8, 0x404E000000000000, 0}];
  [v5 setModalTransitionStyle:2];

  return v5;
}

void sub_100024890(uint64_t a1)
{
  v1 = (a1 + qword_1003AA968);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100024904()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 30;
  }

  else
  {
    return 24;
  }
}

uint64_t sub_100024968(uint64_t result)
{
  v1 = *(result + qword_1003AA968);
  if (v1)
  {

    v1(v2);

    return sub_10001ABE4(v1);
  }

  return result;
}

id sub_1000249E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BroadcastViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100024A98()
{
  result = qword_1003AA9C0;
  if (!qword_1003AA9C0)
  {
    type metadata accessor for BroadcastViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA9C0);
  }

  return result;
}

uint64_t sub_100024AF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100024B64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100024BD8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_translation + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 24))(ObjectType, v5);
      v9 = v8;
      swift_unknownObjectRelease();
      if (v1)
      {
        if (v7 != v2 || v1 != v9)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

void sub_100024D38()
{
  v1 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v29[-1] - v2;
  v29[3] = &type metadata for TranslateFeatures;
  v29[4] = sub_100009DF8();
  LOBYTE(v29[0]) = 2;
  v4 = isFeatureEnabled(_:)();
  sub_100008664(v29);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_ttsManager);
    if (v5)
    {
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v5;
      v7[5] = v0;

      sub_10005E36C(0, 0, v3, &unk_1002D4848, v7);
LABEL_7:

      return;
    }

    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D28F0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Can't toggle TTS because there's no TTSManager", v15, 2u);
    goto LABEL_16;
  }

  type metadata accessor for PersistedTranslation();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    if (qword_1003A9210 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2740);

    v13 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v13, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v18 = 136446210;
    swift_getObjectType();
    v20 = _typeName(_:qualified:)();
    v22 = sub_10028D78C(v20, v21, v29);

    *(v18 + 4) = v22;
    sub_100008664(v19);

LABEL_16:

LABEL_17:

    return;
  }

  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_conversationManager);
  if (v9)
  {
    v10 = v8;
    type metadata accessor for TTSPlaybackViewModel();
    swift_allocObject();
    v11 = v9;
    swift_unknownObjectRetain();
    sub_1002B984C(v11);
    sub_1002B8FBC(v10, 0);
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  v23 = qword_1003A9210;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000078E8(v24, qword_1003D2740);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Can't toggle TTS because there's no ConversationManager", v27, 2u);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000251C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = type metadata accessor for UUID();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  sub_100005AD4(&unk_1003B8C90);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  v5[34] = v9;
  v10 = *(v9 - 8);
  v5[35] = v10;
  v5[36] = *(v10 + 64);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return _swift_task_switch(sub_100025404, 0, 0);
}

uint64_t sub_100025404()
{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_translation;
  v0[41] = OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_translation;
  v3 = (v1 + v2);
  v0[42] = *v3;
  v4 = v3[1];
  v0[43] = v4;
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v0[44] = (*(v4 + 24))(ObjectType, v4);
  v0[45] = v6;
  (*(v4 + 32))(ObjectType, v4);
  (*(v4 + 40))(ObjectType, v4);
  swift_weakInit();

  return _swift_task_switch(sub_100025514, 0, 0);
}

uint64_t sub_100025514()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v28 = v0[44];
  v29 = v0[45];
  v4 = v0 + 10;
  v26 = v0[40];
  v27 = v0[39];
  v5 = v0[37];
  v6 = v0[38];
  v24 = v5;
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  aBlock = v4;
  v31 = v1[33];
  v37 = v1[32];
  v38 = v1[31];
  v35 = v1[29];
  v36 = v3;
  v33 = v1[30];
  v34 = v1[28];
  v1[2] = v2;
  v1[3] = sub_10002590C;
  v39 = *(v1 + 21);
  v25 = swift_continuation_init();
  sub_100026AA0();
  v32 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  v11 = v10;
  swift_weakInit();

  v12 = *(v8 + 16);
  v12(v6, v26, v9);
  v12(v5, v27, v9);
  v13 = *(v8 + 80);
  v14 = (v13 + 49) & ~v13;
  v15 = v14 + v7;
  v16 = (v13 + v14 + v7 + 1) & ~v13;
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v25;
  *(v18 + 32) = v28;
  *(v18 + 40) = v29;
  *(v18 + 48) = 1;
  v19 = *(v8 + 32);
  v19(v18 + v14, v6, v9);
  *(v18 + v15) = 0;
  v19(v18 + v16, v24, v9);
  v20 = (v18 + v17);
  v21 = v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v20 = 0;
  v20[1] = 0;
  *v21 = v39;
  *(v21 + 16) = 256;
  *(v21 + 18) = 0;
  v1[14] = sub_100026C4C;
  v1[15] = v18;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100096948;
  v1[13] = &unk_10037F9B8;
  v22 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v1[20] = _swiftEmptyArrayStorage;
  sub_100026DC4(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v35 + 8))(v33, v34);
  (*(v37 + 8))(v31, v38);

  return _swift_continuation_await(v36);
}

uint64_t sub_10002590C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_100025D08;
  }

  else
  {
    swift_weakDestroy();
    v2 = sub_100025A30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025A30()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[22];
  swift_unknownObjectRelease();
  v7 = v6 + v1;
  v8 = *(v5 + 8);
  v8(v2, v4);
  v8(v3, v4);
  v9 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 128);
  swift_unknownObjectRetain();
  v11(ObjectType, v9);
  swift_unknownObjectRelease();
  v12 = *(v7 + 8);
  v13 = swift_getObjectType();
  v14 = *(v12 + 96);
  swift_unknownObjectRetain();
  v15 = v14(v13, v12);
  swift_unknownObjectRelease();
  v16 = 2;
  v17 = 3;
  v18 = 3;
  if (v15 == 1.25)
  {
    v18 = 4;
  }

  if (v15 != 1.0)
  {
    v17 = v18;
  }

  if (v15 != 0.75)
  {
    v16 = v17;
  }

  if (v15 == 0.5)
  {
    v19 = 1;
  }

  else
  {
    v19 = v16;
  }

  v20 = v0[26];
  v21 = v0[23];
  v22 = v0[24];
  sub_100026D44(v0[27], v20);
  v23 = (*(v22 + 48))(v20, 1, v21);
  v24 = v0[26];
  if (v23 == 1)
  {
    sub_100009EBC(v0[27], &unk_1003B8C90);
    v25 = v24;
  }

  else
  {
    v27 = v0[24];
    v26 = v0[25];
    v28 = v0[23];
    v29 = v0[27];
    (*(v27 + 32))(v26, v0[26], v28);
    v30 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v30 translationTTSPlayedWithInvocationId:isa sourceOrTargetLanguage:2 isAutoplayTranslation:0 ttsPlaybackSpeed:v19 audioChannel:1];

    (*(v27 + 8))(v26, v28);
    v25 = v29;
  }

  sub_100009EBC(v25, &unk_1003B8C90);

  v32 = v0[1];

  return v32();
}

uint64_t sub_100025D08()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[34];
  v4 = v0[35];
  swift_unknownObjectRelease();
  swift_weakDestroy();
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D28F0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Exception while toggling TTS: %@", v9, 0xCu);
    sub_100009EBC(v10, &unk_1003AECA0);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100025F54()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel__isPlaying;
  v2 = sub_100005AD4(&unk_1003B8DF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel__displayText;
  v4 = sub_100005AD4(&qword_1003AABD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10001ABE4(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_dismissHandler));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BroadcastViewModel()
{
  result = qword_1003AAA20;
  if (!qword_1003AAA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000260F0()
{
  sub_100026204(319, &qword_1003B95C0);
  if (v0 <= 0x3F)
  {
    sub_100026204(319, &qword_1003AAA30);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100026204(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10002625C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BroadcastViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002629C()
{
  v0 = static String.TRANSLATION_LIMIT.getter();
  v7 = String.truncated(limit:)(v0);
  countAndFlagsBits = v7._1._countAndFlagsBits;
  if (v7._0)
  {
    if (qword_1003A9210 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2740);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Warning: Attempted to display text that was too long; only displaying a truncated version", v5, 2u);
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_1000263A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a4;
  v43 = a6;
  v12 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v12 - 8);
  v47 = &v40 - v13;
  v14 = sub_100005AD4(&qword_1003AABE0);
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin(v14);
  v41 = &v40 - v15;
  v16 = sub_100005AD4(&qword_1003AABE8);
  v49 = *(v16 - 8);
  v50 = v16;
  __chkstk_darwin(v16);
  v48 = &v40 - v17;
  v18 = sub_100005AD4(&unk_1003B8DF0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  v22 = OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel__isPlaying;
  LOBYTE(v53) = 0;
  Published.init(initialValue:)();
  (*(v19 + 32))(a5 + v22, v21, v18);
  v23 = (a5 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_dismissHandler);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_ttsManager;
  *(a5 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_ttsManager) = 0;
  *(a5 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_conversationManager) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = &_swiftEmptySetSingleton;
  }

  v44 = OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_observers;
  *(a5 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_observers) = v25;
  v26 = (a5 + OBJC_IVAR____TtC17SequoiaTranslator18BroadcastViewModel_translation);
  *v26 = a1;
  v26[1] = a7;
  v27 = *v23;
  v28 = v42;
  *v23 = a3;
  v23[1] = v28;
  swift_unknownObjectRetain();
  sub_10001AD18(a3);
  sub_10001ABE4(v27);
  *(a5 + v24) = a2;

  (*(a7 + 72))(v43, a7);
  v29 = sub_10002629C();
  v31 = v30;

  swift_unknownObjectRelease();
  swift_beginAccess();
  v51 = v29;
  v52 = v31;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  sub_100005AD4(&qword_1003AABF0);
  v32 = v41;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100026AA0();
  v33 = static OS_dispatch_queue.main.getter();
  v53 = v33;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v35 = v47;
  (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
  sub_10001BAEC(&qword_1003AABF8, &qword_1003AABE0);
  sub_100026DC4(&qword_1003B2410, sub_100026AA0);
  v36 = v48;
  v37 = v46;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v35, &qword_1003B23F0);
  (*(v45 + 8))(v32, v37);

  swift_allocObject();
  swift_weakInit();
  sub_10001BAEC(qword_1003AAC00, &qword_1003AABE8);
  v38 = v50;
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v36, v38);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a5;
}

uint64_t sub_100026998()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000269E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_1000251C0(a1, v4, v5, v7, v6);
}

unint64_t sub_100026AA0()
{
  result = qword_1003A9C40;
  if (!qword_1003A9C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A9C40);
  }

  return result;
}

uint64_t sub_100026AEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026B24()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4 + 1) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 19, v3 | 7);
}

void sub_100026C4C()
{
  v1 = *(type metadata accessor for Locale() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(v1 + 64);
  v5 = v3 + v4;
  v6 = (v2 + v3 + v4 + 1) & ~v2;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1002B9EFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v3, *(v0 + v5), v0 + v6, *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16), *(v0 + v8 + 17), *(v0 + v8 + 18));
}

uint64_t sub_100026D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003B8C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100026E38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100026E74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100026E88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100026ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100026F4C(char a1)
{
  result = 50.0;
  if (a1)
  {
    return 32.0;
  }

  return result;
}

Swift::Int sub_100026FA0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100027004()
{
  Hasher.init(_seed:)();
  sub_100026F78(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100027088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  v32 = *(a1 + 24);
  v58 = v32;
  v59 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  type metadata accessor for Button();
  sub_100005EA8(&qword_1003AA588);
  type metadata accessor for ModifiedContent();
  sub_100005EA8(&qword_1003AA878);
  v3 = type metadata accessor for ModifiedContent();
  v31 = type metadata accessor for GlassButtonStyle();
  WitnessTable = swift_getWitnessTable();
  v57 = sub_100028AA8(&qword_1003AA580, &qword_1003AA588);
  v34 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v54 = swift_getWitnessTable();
  v55 = sub_100028AA8(&qword_1003AA870, &qword_1003AA878);
  v29 = swift_getWitnessTable();
  v30 = sub_100028A48(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  v28 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for _ConditionalContent();
  sub_100005EA8(&qword_1003AAD10);
  v23 = type metadata accessor for ModifiedContent();
  v4 = v33;
  v5 = v32;
  v6 = type metadata accessor for Button();
  v25 = type metadata accessor for ImageTranslationButtonStyle();
  v24 = swift_getWitnessTable();
  v7 = sub_100028A48(&qword_1003AAD18, &type metadata accessor for ImageTranslationButtonStyle);
  v50 = v6;
  v51 = v25;
  v52 = v24;
  v53 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for StaticIf();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  Solarium.init()();
  v40 = v4;
  v41 = v5;
  v42 = v35;
  v37 = v4;
  v38 = v5;
  v39 = v35;
  v50 = v3;
  v51 = v31;
  v15 = v29;
  v52 = v29;
  v53 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_100028AA8(&qword_1003AAD20, &qword_1003AAD10);
  v46 = v16;
  v47 = v17;
  v18 = swift_getWitnessTable();
  v50 = v6;
  v51 = v25;
  v52 = v24;
  v53 = v7;
  v22 = swift_getOpaqueTypeConformance2();
  StaticIf<>.init(_:then:else:)();
  v43 = &protocol witness table for Solarium;
  v44 = v18;
  v45 = v22;
  v19 = swift_getWitnessTable();
  sub_10002D870(v12, v8, v19);
  v20 = *(v9 + 8);
  v20(v12, v8);
  sub_10002D870(v14, v8, v19);
  return (v20)(v14, v8);
}

uint64_t sub_100027654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v71 = a3;
  v68 = a4;
  v67 = type metadata accessor for ButtonBorderShape();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ModifiedContent();
  v87 = a3;
  v88 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Button();
  v62 = *(v7 - 8);
  __chkstk_darwin(v7);
  v52 = v47 - v8;
  sub_100005EA8(&qword_1003AA588);
  v9 = type metadata accessor for ModifiedContent();
  v61 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = v47 - v10;
  sub_100005EA8(&qword_1003AA878);
  v11 = type metadata accessor for ModifiedContent();
  v64 = *(v11 - 8);
  __chkstk_darwin(v11);
  v63 = v47 - v12;
  v13 = type metadata accessor for GlassButtonStyle();
  v14 = swift_getWitnessTable();
  v15 = sub_100028AA8(&qword_1003AA580, &qword_1003AA588);
  v47[1] = v14;
  v85 = v14;
  v86 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_100028AA8(&qword_1003AA870, &qword_1003AA878);
  v83 = v16;
  v84 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_100028A48(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  v79 = v11;
  v80 = v13;
  v59 = v13;
  v50 = v18;
  v81 = v18;
  v82 = v19;
  v49 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for _ConditionalContent();
  v57 = *(v20 - 8);
  __chkstk_darwin(v20);
  v48 = v47 - v21;
  sub_100005EA8(&qword_1003AAD10);
  v53 = v20;
  v22 = type metadata accessor for ModifiedContent();
  v60 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v54 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v58 = v47 - v25;
  v26 = swift_allocObject();
  v28 = v70;
  v27 = v71;
  *(v26 + 16) = v70;
  *(v26 + 24) = v27;
  v29 = *(a1 + 16);
  *(v26 + 32) = *a1;
  *(v26 + 48) = v29;
  *(v26 + 63) = *(a1 + 31);
  v72 = v28;
  v73 = v27;
  v74 = a1;

  v30 = v52;
  Button.init(action:label:)();
  if (*(a1 + 32))
  {
    static Font.body.getter();
  }

  else
  {
    static Font.title.getter();
  }

  View.font(_:)();

  (*(v62 + 8))(v30, v7);
  if (*(a1 + 33))
  {
    static Color.accentColor.getter();
  }

  v31 = v63;
  v32 = v69;
  View.foregroundColor(_:)();

  v33 = (*(v61 + 8))(v32, v9);
  LOBYTE(v32) = *(a1 + 34);
  __chkstk_darwin(v33);
  v34 = v71;
  v47[-2] = v70;
  v47[-1] = v34;
  v79 = v11;
  v80 = v59;
  v35 = v50;
  v81 = v50;
  v82 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  sub_1002C4864((v32 & 1) == 0, sub_100028B80, &v47[-4], v11, OpaqueTypeMetadata2, v35, OpaqueTypeConformance2, v48);
  (*(v64 + 8))(v31, v11);
  v38 = v65;
  static ButtonBorderShape.circle.getter();
  v77 = OpaqueTypeConformance2;
  v78 = v35;
  v39 = v53;
  v40 = swift_getWitnessTable();
  v41 = v54;
  View.buttonBorderShape(_:)();
  (*(v66 + 8))(v38, v67);
  (*(v57 + 8))(v37, v39);
  v42 = sub_100028AA8(&qword_1003AAD20, &qword_1003AAD10);
  v75 = v40;
  v76 = v42;
  v43 = swift_getWitnessTable();
  v44 = v58;
  sub_10002D870(v41, v22, v43);
  v45 = *(v60 + 8);
  v45(v41, v22);
  sub_10002D870(v44, v22, v43);
  return (v45)(v44, v22);
}

uint64_t sub_100027F54@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v21 - v16;
  (*a1)(v15);
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v7 + 8))(v9, a2);
  v21[2] = a3;
  v21[3] = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_10002D870(v14, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_10002D870(v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t sub_1000281A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = a3;
  v16 = a1;
  v14 = type metadata accessor for GlassButtonStyle();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  GlassButtonStyle.init()();
  type metadata accessor for ModifiedContent();
  v21 = a2;
  v22 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  type metadata accessor for Button();
  sub_100005EA8(&qword_1003AA588);
  type metadata accessor for ModifiedContent();
  sub_100005EA8(&qword_1003AA878);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_100028AA8(&qword_1003AA580, &qword_1003AA588);
  v19 = WitnessTable;
  v20 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_100028AA8(&qword_1003AA870, &qword_1003AA878);
  v17 = v9;
  v18 = v10;
  swift_getWitnessTable();
  sub_100028A48(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  v11 = v14;
  View.buttonStyle<A>(_:)();
  return (*(v4 + 8))(v6, v11);
}

uint64_t sub_100028414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v44 = a4;
  v43 = type metadata accessor for ImageTranslationButtonStyle.Style();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageTranslationButtonStyle();
  v35 = v7;
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Button();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v31 - v10;
  WitnessTable = swift_getWitnessTable();
  v34 = WitnessTable;
  v33 = sub_100028A48(&qword_1003AAD18, &type metadata accessor for ImageTranslationButtonStyle);
  v48 = v9;
  v49 = v7;
  v50 = WitnessTable;
  v51 = v33;
  v36 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  v13 = __chkstk_darwin(OpaqueTypeMetadata2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  v19 = a2;
  *(v18 + 16) = a2;
  v20 = v31;
  *(v18 + 24) = v31;
  v21 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v21;
  *(v18 + 63) = *(a1 + 31);
  v45 = v19;
  v46 = v20;
  v47 = a1;

  v22 = v32;
  Button.init(action:label:)();
  v23 = &enum case for ImageTranslationButtonStyle.Style.secondary(_:);
  if (!*(a1 + 32))
  {
    v23 = &enum case for ImageTranslationButtonStyle.Style.primary(_:);
  }

  (*(v41 + 104))(v40, *v23, v43);
  v24 = v38;
  ImageTranslationButtonStyle.init(style:highlighted:)();
  v26 = v34;
  v25 = v35;
  v27 = v33;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v24, v25);
  (*(v39 + 8))(v22, v9);
  v48 = v9;
  v49 = v25;
  v50 = v26;
  v51 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10002D870(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v29 = *(v37 + 8);
  v29(v15, OpaqueTypeMetadata2);
  sub_10002D870(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v29)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_1000288D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = (__chkstk_darwin)();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v14 - v10;
  (*v9)();
  sub_10002D870(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_10002D870(v11, a2, a3);
  return (v12)(v11, a2);
}

uint64_t sub_100028A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100028AA8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028B34()
{

  return _swift_deallocObject(v0, 67, 7);
}

uint64_t sub_100028BB8()
{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for Button();
  sub_100005EA8(&qword_1003AA588);
  type metadata accessor for ModifiedContent();
  sub_100005EA8(&qword_1003AA878);
  type metadata accessor for ModifiedContent();
  type metadata accessor for GlassButtonStyle();
  swift_getWitnessTable();
  sub_100028AA8(&qword_1003AA580, &qword_1003AA588);
  swift_getWitnessTable();
  sub_100028AA8(&qword_1003AA870, &qword_1003AA878);
  swift_getWitnessTable();
  sub_100028A48(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  sub_100005EA8(&qword_1003AAD10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Button();
  type metadata accessor for ImageTranslationButtonStyle();
  swift_getWitnessTable();
  sub_100028A48(&qword_1003AAD18, &type metadata accessor for ImageTranslationButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_100028AA8(&qword_1003AAD20, &qword_1003AAD10);
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void *sub_100028F6C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t *sub_100028F98@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100028FD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100029044()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1000290BC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__sceneTypeSelection;
  v2 = sub_100005AD4(&qword_1003AB3B8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__presentationTypeSelection;
  v4 = sub_100005AD4(&qword_1003AB3C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__planeDetectionSelection;
  v6 = sub_100005AD4(&qword_1003AB3C8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__translationEnabled;
  v8 = sub_100005AD4(&unk_1003B8DF0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__groupingEnabled, v8);
  v9(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__usesAlternateLineGrouping, v8);
  v10 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__textRecognitionDefaultFrequency;
  v11 = sub_100005AD4(&qword_1003AED60);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__textRecognitionInfrequentFrequency, v11);
  v9(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__pauseOnLowStability, v8);
  v13 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__staticImage;
  v14 = sub_100005AD4(&qword_1003AB3D0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v9(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__isShareSheetPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__showRegionAdjustmentView, v8);
  v9(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__showBoundingBox, v8);
  v15 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__staticInteractionSelection;
  v16 = sub_100005AD4(&qword_1003AB3D8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__currentHeight;
  v18 = sub_100005AD4(&qword_1003AB3E0);
  v19 = *(*(v18 - 8) + 8);
  v19(v0 + v17, v18);
  v19(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__currentWidth, v18);
  v20 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__regionOfInterest;
  v21 = sub_100005AD4(qword_1003AB3E8);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  return v0;
}

uint64_t sub_10002948C()
{
  sub_1000290BC();

  return swift_deallocClassInstance();
}

void sub_10002950C()
{
  sub_100026204(319, &qword_1003AADE8);
  if (v0 <= 0x3F)
  {
    sub_100026204(319, &qword_1003AADF0);
    if (v1 <= 0x3F)
    {
      sub_100026204(319, &qword_1003AADF8);
      if (v2 <= 0x3F)
      {
        sub_100026204(319, &qword_1003B95C0);
        if (v3 <= 0x3F)
        {
          sub_100026204(319, &qword_1003AAE00);
          if (v4 <= 0x3F)
          {
            sub_100029834(319, &qword_1003AAE08, &qword_1003AAE10);
            if (v5 <= 0x3F)
            {
              sub_100026204(319, &qword_1003AAE18);
              if (v6 <= 0x3F)
              {
                sub_100026204(319, &qword_1003AAE20);
                if (v7 <= 0x3F)
                {
                  sub_100029834(319, &qword_1003AAE28, &unk_1003AAE30);
                  if (v8 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100029834(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_100005EA8(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000298AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003AB2D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002997C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003AB2D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100029A4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100029A84()
{
  sub_100029C00(319, &qword_1003AB348, sub_100029B58);
  if (v0 <= 0x3F)
  {
    sub_100029BA4();
    if (v1 <= 0x3F)
    {
      sub_100029C00(319, &unk_1003AB360, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100029B58()
{
  result = qword_1003AB350;
  if (!qword_1003AB350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB350);
  }

  return result;
}

void sub_100029BA4()
{
  if (!qword_1003AB358)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AB358);
    }
  }
}

void sub_100029C00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100029C88()
{
  result = qword_1003AB398;
  if (!qword_1003AB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB398);
  }

  return result;
}

unint64_t sub_100029CE0()
{
  result = qword_1003AB3A0;
  if (!qword_1003AB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB3A0);
  }

  return result;
}

unint64_t sub_100029D38()
{
  result = qword_1003AB3A8;
  if (!qword_1003AB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB3A8);
  }

  return result;
}

unint64_t sub_100029D90()
{
  result = qword_1003AB3B0;
  if (!qword_1003AB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB3B0);
  }

  return result;
}

uint64_t sub_100029DE4()
{
  v1 = sub_100005AD4(qword_1003AB3E8);
  v76 = *(v1 - 8);
  v77 = v1;
  __chkstk_darwin(v1);
  v75 = &v56 - v2;
  v3 = sub_100005AD4(&qword_1003AB3E0);
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v72 = &v56 - v4;
  v5 = sub_100005AD4(&qword_1003AB3D8);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v69 = &v56 - v6;
  v7 = sub_100005AD4(&qword_1003AB3D0);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = &v56 - v8;
  v65 = sub_100005AD4(&qword_1003AAE10);
  v9 = __chkstk_darwin(v65);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v56 - v11;
  v62 = sub_100005AD4(&qword_1003AED60);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v56 - v12;
  v59 = sub_100005AD4(&unk_1003B8DF0);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = &v56 - v13;
  v57 = sub_100005AD4(&qword_1003AB3C8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v16 = &v56 - v15;
  v17 = sub_100005AD4(&qword_1003AB3C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v21 = sub_100005AD4(&qword_1003AB3B8);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v56 - v23;
  v25 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__sceneTypeSelection;
  LOBYTE(v78) = 0;
  Published.init(initialValue:)();
  (*(v22 + 32))(v0 + v25, v24, v21);
  v26 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__presentationTypeSelection;
  LOBYTE(v78) = 1;
  Published.init(initialValue:)();
  (*(v18 + 32))(v0 + v26, v20, v17);
  v27 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__planeDetectionSelection;
  LOBYTE(v78) = 2;
  Published.init(initialValue:)();
  (*(v56 + 32))(v0 + v27, v16, v57);
  v28 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__translationEnabled;
  LOBYTE(v78) = 1;
  Published.init(initialValue:)();
  v29 = *(v58 + 32);
  v30 = v59;
  v29(v0 + v28, v14, v59);
  v31 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__groupingEnabled;
  LOBYTE(v78) = 1;
  Published.init(initialValue:)();
  v29(v0 + v31, v14, v30);
  v32 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__usesAlternateLineGrouping;
  LOBYTE(v78) = 0;
  Published.init(initialValue:)();
  v29(v0 + v32, v14, v30);
  v33 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__textRecognitionDefaultFrequency;
  LODWORD(v78) = 1048576000;
  v34 = v60;
  Published.init(initialValue:)();
  v35 = *(v61 + 32);
  v36 = v62;
  v35(v0 + v33, v34, v62);
  v37 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__textRecognitionInfrequentFrequency;
  LODWORD(v78) = 1069547520;
  Published.init(initialValue:)();
  v35(v0 + v37, v34, v36);
  v38 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__pauseOnLowStability;
  LOBYTE(v78) = 1;
  Published.init(initialValue:)();
  v29(v0 + v38, v14, v30);
  v39 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__staticImage;
  v40 = type metadata accessor for CameraConfiguration.StaticImage(0);
  v41 = v63;
  (*(*(v40 - 8) + 56))(v63, 1, 1, v40);
  sub_10002A858(v41, v64);
  v42 = v66;
  Published.init(initialValue:)();
  sub_10002A8C8(v41);
  (*(v67 + 32))(v0 + v39, v42, v68);
  v43 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__isShareSheetPresented;
  LOBYTE(v78) = 0;
  Published.init(initialValue:)();
  v29(v0 + v43, v14, v30);
  v44 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__showRegionAdjustmentView;
  LOBYTE(v78) = 1;
  Published.init(initialValue:)();
  v29(v0 + v44, v14, v30);
  v45 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__showBoundingBox;
  LOBYTE(v78) = 0;
  Published.init(initialValue:)();
  v29(v0 + v45, v14, v30);
  v46 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__staticInteractionSelection;
  LOBYTE(v78) = 0;
  v47 = v69;
  Published.init(initialValue:)();
  (*(v70 + 32))(v0 + v46, v47, v71);
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration_maxHeight) = 0x4069000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration_maxWidth) = 0x4069000000000000;
  v48 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__currentHeight;
  *&v78 = 0x4069000000000000;
  v49 = v72;
  Published.init(initialValue:)();
  v50 = v74;
  v51 = *(v73 + 32);
  v51(v0 + v48, v49, v74);
  v52 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__currentWidth;
  *&v78 = 0x4069000000000000;
  Published.init(initialValue:)();
  v51(v0 + v52, v49, v50);
  v53 = OBJC_IVAR____TtC17SequoiaTranslator19CameraConfiguration__regionOfInterest;
  v78 = 0u;
  v79 = 0u;
  v80 = 1;
  sub_100005AD4(&unk_1003AAE30);
  v54 = v75;
  Published.init(initialValue:)();
  (*(v76 + 32))(v0 + v53, v54, v77);
  return v0;
}

uint64_t sub_10002A800@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraConfiguration(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002A858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AAE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A8C8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AAE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002A940()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SharePreview();
    if (v2 <= 0x3F)
    {
      result = sub_10002ACA4();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CameraButton.Style();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002AA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);

    return v5();
  }

  else
  {
    v9 = type metadata accessor for SharePreview();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      return (*(v10 + 48))(a1 + *(a3 + 84), a2, v9);
    }

    else
    {
      v11 = *(a1 + *(a3 + 88));
      if (v11 >= 0xFFFFFFFF)
      {
        LODWORD(v11) = -1;
      }

      return (v11 + 1);
    }
  }
}

uint64_t sub_10002AB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(a1, a2, a2);
  }

  else
  {
    result = type metadata accessor for SharePreview();
    v11 = *(result - 8);
    if (*(v11 + 84) == a3)
    {
      return (*(v11 + 56))(a1 + *(a4 + 84), a2, a2, result);
    }

    else
    {
      *(a1 + *(a4 + 88)) = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_10002ACA4()
{
  result = qword_1003AB470[0];
  if (!qword_1003AB470[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1003AB470);
  }

  return result;
}

uint64_t sub_10002AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v36 = *(a1 + 16);
  v3 = type metadata accessor for CollectionOfOne();
  v35 = *(a1 + 40);
  v4 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v65 = &protocol witness table for _FrameLayout;
  v6.i64[0] = v36;
  v33 = v6;
  v40 = *(a1 + 64);
  v64 = v40.i64[1];
  v37 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v57 = v3;
  v59 = v4;
  v60 = WitnessTable;
  v62 = swift_getWitnessTable();
  v7 = *(a1 + 24);
  *&v8 = vdupq_laneq_s64(v7, 1).u64[0];
  *(&v8 + 1) = v35;
  v32 = v8;
  v33 = vzip1q_s64(v33, v7);
  v34 = v7;
  v58 = v7;
  v31 = *(a1 + 48);
  v61 = vextq_s8(v31, v40, 8uLL);
  v63 = v31.i64[0];
  v9 = type metadata accessor for ShareLink();
  v30 = type metadata accessor for GlassButtonStyle();
  v10 = swift_getWitnessTable();
  v28 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v29 = sub_100028A48(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_100005EA8(&qword_1003AAD10);
  type metadata accessor for ModifiedContent();
  v26 = type metadata accessor for ImageTranslationButtonStyle();
  v25 = sub_100028A48(&qword_1003AAD18, &type metadata accessor for ImageTranslationButtonStyle);
  v57 = v9;
  v58.i64[0] = v26;
  v58.i64[1] = v10;
  v59 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for StaticIf();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  Solarium.init()();
  v47 = v33;
  v48 = v32;
  v49 = v31;
  v50 = v40;
  v51 = v38;
  v41 = v36;
  v42 = v34;
  v43 = v35;
  v44 = v31;
  v45 = v40;
  v46 = v38;
  v57 = v9;
  v58.i64[0] = v30;
  v58.i64[1] = v10;
  v59 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_10002C5D8();
  v55 = OpaqueTypeConformance2;
  v56 = v19;
  v20 = swift_getWitnessTable();
  v57 = v9;
  v58.i64[0] = v26;
  v58.i64[1] = v10;
  v59 = v25;
  v24 = swift_getOpaqueTypeConformance2();
  StaticIf<>.init(_:then:else:)();
  v52 = &protocol witness table for Solarium;
  v53 = v20;
  v54 = v24;
  v21 = swift_getWitnessTable();
  sub_10002D870(v15, v11, v21);
  v22 = *(v12 + 8);
  v22(v15, v11);
  sub_10002D870(v17, v11, v21);
  return (v22)(v17, v11);
}

uint64_t sub_10002B1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v66 = a6;
  v75 = a5;
  v87 = a1;
  v94 = a9;
  v73 = a10;
  v93 = type metadata accessor for ButtonBorderShape();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GlassButtonStyle();
  v69 = v16;
  v90 = *(v16 - 8);
  __chkstk_darwin(v16);
  v89 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a3;
  v107 = a4;
  v108 = a7;
  v109 = a8;
  v64 = a7;
  v86 = type metadata accessor for SharePreview();
  v85 = *(v86 - 8);
  v18 = __chkstk_darwin(v86);
  v84 = &v61 - v19;
  v76 = a2;
  v82 = *(a2 - 8);
  __chkstk_darwin(v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v21;
  v22 = type metadata accessor for CollectionOfOne();
  v23 = type metadata accessor for ModifiedContent();
  v79 = v23;
  WitnessTable = swift_getWitnessTable();
  v115 = a10;
  v116 = &protocol witness table for _FrameLayout;
  v88 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v74 = swift_getWitnessTable();
  v106 = v22;
  v107 = a3;
  v25 = a3;
  v108 = a4;
  v109 = v23;
  v110 = WitnessTable;
  v111 = a7;
  v112 = a8;
  v113 = v74;
  v26 = a8;
  v27 = v66;
  v114 = v66;
  v28 = type metadata accessor for ShareLink();
  v83 = *(v28 - 8);
  __chkstk_darwin(v28);
  v72 = &v61 - v29;
  v31 = v30;
  v70 = v30;
  v32 = swift_getWitnessTable();
  v68 = v32;
  v67 = sub_100028A48(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  v106 = v31;
  v107 = v16;
  v108 = v32;
  v109 = v67;
  v77 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v62 = &v61 - v33;
  sub_100005EA8(&qword_1003AAD10);
  v78 = type metadata accessor for ModifiedContent();
  v80 = *(v78 - 8);
  v34 = __chkstk_darwin(v78);
  v63 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v71 = &v61 - v36;
  v37 = v87;
  v38 = v76;
  (*(v82 + 16))(v21, v87, v76);
  v106 = v38;
  v107 = v25;
  v39 = v75;
  v108 = a4;
  v109 = v75;
  v40 = v64;
  v110 = v27;
  v111 = v64;
  v41 = v26;
  v112 = v26;
  v42 = v73;
  v113 = v73;
  v43 = type metadata accessor for CameraShareButton();
  (*(v85 + 16))(v84, v37 + *(v43 + 84), v86);
  v95 = v38;
  v96 = v25;
  v97 = a4;
  v98 = v39;
  v99 = v27;
  v100 = v40;
  v101 = v41;
  v102 = v42;
  v103 = v37;
  v44 = v72;
  ShareLink.init<A>(item:subject:message:preview:label:)();
  v45 = v89;
  GlassButtonStyle.init()();
  v46 = v62;
  v47 = v70;
  v48 = v69;
  v49 = v68;
  v50 = v67;
  View.buttonStyle<A>(_:)();
  (*(v90 + 8))(v45, v48);
  (*(v83 + 8))(v44, v47);
  v51 = v91;
  static ButtonBorderShape.circle.getter();
  v106 = v47;
  v107 = v48;
  v108 = v49;
  v109 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v63;
  v54 = OpaqueTypeMetadata2;
  View.buttonBorderShape(_:)();
  (*(v92 + 8))(v51, v93);
  (*(v81 + 8))(v46, v54);
  v55 = sub_10002C5D8();
  v104 = OpaqueTypeConformance2;
  v105 = v55;
  v56 = v78;
  v57 = swift_getWitnessTable();
  v58 = v71;
  sub_10002D870(v53, v56, v57);
  v59 = *(v80 + 8);
  v59(v53, v56);
  sub_10002D870(v58, v56, v57);
  return (v59)(v58, v56);
}

uint64_t sub_10002BAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v83 = a6;
  v62 = a5;
  v75 = a1;
  v82 = a9;
  v60 = a10;
  v81 = type metadata accessor for ImageTranslationButtonStyle.Style();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ImageTranslationButtonStyle();
  v80 = *(v84 - 8);
  __chkstk_darwin(v84);
  v77 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a3;
  v95 = a4;
  v96 = a7;
  v97 = a8;
  v76 = type metadata accessor for SharePreview();
  v74 = *(v76 - 8);
  v17 = __chkstk_darwin(v76);
  v72 = &v55 - v18;
  v63 = a2;
  v19 = *(a2 - 8);
  __chkstk_darwin(v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v21;
  v22 = type metadata accessor for CollectionOfOne();
  v23 = type metadata accessor for ModifiedContent();
  v68 = v23;
  WitnessTable = swift_getWitnessTable();
  v103 = a10;
  v104 = &protocol witness table for _FrameLayout;
  v61 = swift_getWitnessTable();
  v94 = v22;
  v95 = a3;
  v96 = a4;
  v97 = v23;
  v98 = WitnessTable;
  v99 = a7;
  v100 = a8;
  v101 = v61;
  v102 = v83;
  v25 = type metadata accessor for ShareLink();
  v73 = *(v25 - 8);
  __chkstk_darwin(v25);
  v59 = &v55 - v26;
  v28 = v27;
  v67 = v27;
  v29 = swift_getWitnessTable();
  v66 = v29;
  v65 = sub_100028A48(&qword_1003AAD18, &type metadata accessor for ImageTranslationButtonStyle);
  v94 = v28;
  v95 = v84;
  v96 = v29;
  v97 = v65;
  v69 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  v30 = __chkstk_darwin(OpaqueTypeMetadata2);
  v58 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v64 = &v55 - v32;
  v33 = v21;
  v34 = v75;
  v35 = v63;
  (*(v19 + 16))(v33, v75, v63);
  v94 = v35;
  v95 = a3;
  v36 = v62;
  v96 = a4;
  v97 = v62;
  v37 = v83;
  v98 = v83;
  v99 = a7;
  v38 = a7;
  v39 = a8;
  v100 = a8;
  v40 = v60;
  v101 = v60;
  v56 = type metadata accessor for CameraShareButton();
  (*(v74 + 16))(v72, v34 + *(v56 + 84), v76);
  v85 = v35;
  v86 = a3;
  v87 = a4;
  v88 = v36;
  v89 = v37;
  v90 = v38;
  v91 = v39;
  v92 = v40;
  v93 = v34;
  v41 = v59;
  ShareLink.init<A>(item:subject:message:preview:label:)();
  v42 = sub_100026F68(*(v34 + *(v56 + 92)), 0);
  v43 = &enum case for ImageTranslationButtonStyle.Style.primary(_:);
  if (!v42)
  {
    v43 = &enum case for ImageTranslationButtonStyle.Style.secondary(_:);
  }

  (*(v79 + 104))(v78, *v43, v81);
  v44 = v77;
  ImageTranslationButtonStyle.init(style:highlighted:)();
  v45 = v58;
  v46 = v67;
  v47 = v84;
  v48 = v66;
  v49 = v65;
  View.buttonStyle<A>(_:)();
  (*(v80 + 8))(v44, v47);
  (*(v73 + 8))(v41, v46);
  v94 = v46;
  v95 = v47;
  v96 = v48;
  v97 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v64;
  v52 = OpaqueTypeMetadata2;
  sub_10002D870(v45, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v53 = *(v71 + 8);
  v53(v45, v52);
  sub_10002D870(v51, v52, OpaqueTypeConformance2);
  return (v53)(v51, v52);
}

uint64_t sub_10002C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a4;
  v28 = a6;
  v32 = a9;
  v31 = *(a5 - 8);
  __chkstk_darwin(a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v27 - v21;
  v35 = a2;
  v36 = a3;
  v37 = v27;
  v38 = a5;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = a10;
  v23 = type metadata accessor for CameraShareButton();
  (*(a1 + *(v23 + 88)))();
  LOBYTE(v23) = *(a1 + *(v23 + 92));
  sub_100026F4C(v23);
  sub_100028F64(v23);
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v31 + 8))(v15, a5);
  v33 = a10;
  v34 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_10002D870(v20, v16, WitnessTable);
  v25 = *(v17 + 8);
  v25(v20, v16);
  sub_10002D870(v22, v16, WitnessTable);
  return (v25)(v22, v16);
}

unint64_t sub_10002C5D8()
{
  result = qword_1003AAD20;
  if (!qword_1003AAD20)
  {
    sub_100005EA8(&qword_1003AAD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AAD20);
  }

  return result;
}

uint64_t sub_10002C678()
{
  type metadata accessor for CollectionOfOne();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ShareLink();
  type metadata accessor for GlassButtonStyle();
  swift_getWitnessTable();
  sub_100028A48(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_100005EA8(&qword_1003AAD10);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ImageTranslationButtonStyle();
  sub_100028A48(&qword_1003AAD18, &type metadata accessor for ImageTranslationButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf();
  swift_getOpaqueTypeConformance2();
  sub_10002C5D8();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10002C940()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10002C97C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002C990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10002C9D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002CABC()
{
  sub_100005AD4(&qword_1003BA760);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_10002CB18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v4 = type metadata accessor for ButtonBorderShape();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v70 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassButtonStyle();
  v52 = v6;
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v67 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ButtonToggleStyle();
  v66 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a1 + 16);
  v63 = type metadata accessor for ModifiedContent();
  v61 = *(a1 + 24);
  v83 = v61;
  v84 = &protocol witness table for _FrameLayout;
  v68 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Toggle();
  v65 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v46 - v11;
  v12 = swift_getWitnessTable();
  v13 = sub_10002D5C8(qword_1003AB4F8, &type metadata accessor for ButtonToggleStyle);
  v79 = v10;
  v80 = v8;
  v14 = v8;
  v51 = v8;
  v81 = v12;
  v82 = v13;
  v15 = v13;
  v54 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = OpaqueTypeMetadata2;
  v60 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = &v46 - v17;
  v79 = v10;
  v80 = v14;
  v81 = v12;
  v82 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = OpaqueTypeConformance2;
  v49 = sub_10002D5C8(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  v79 = OpaqueTypeMetadata2;
  v80 = v6;
  v81 = OpaqueTypeConformance2;
  v82 = v49;
  v56 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v48 = swift_getOpaqueTypeMetadata2();
  v57 = *(v48 - 8);
  __chkstk_darwin(v48);
  v21 = &v46 - v20;
  sub_100005EA8(&qword_1003AAD10);
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v47 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v55 = &v46 - v26;
  sub_10002CABC();
  v74 = v64;
  v75 = v61;
  v76 = v2;
  v27 = v59;
  Toggle.init(isOn:label:)();
  v28 = v58;
  ButtonToggleStyle.init()();
  v29 = v18;
  v30 = v51;
  View.toggleStyle<A>(_:)();
  (*(v66 + 8))(v28, v30);
  (*(v65 + 8))(v27, v10);
  v31 = v67;
  GlassButtonStyle.init()();
  v32 = v21;
  v33 = v53;
  v34 = v52;
  v35 = v50;
  v36 = v49;
  View.buttonStyle<A>(_:)();
  (*(v69 + 8))(v31, v34);
  (*(v60 + 8))(v29, v33);
  v37 = v70;
  static ButtonBorderShape.circle.getter();
  v79 = v33;
  v80 = v34;
  v81 = v35;
  v82 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v47;
  v40 = v48;
  View.buttonBorderShape(_:)();
  (*(v71 + 8))(v37, v72);
  (*(v57 + 8))(v32, v40);
  v41 = sub_10002C5D8();
  v77 = v38;
  v78 = v41;
  swift_getWitnessTable();
  v42 = *(v23 + 16);
  v43 = v55;
  v42(v55, v39, v22);
  v44 = *(v23 + 8);
  v44(v39, v22);
  v42(v73, v43, v22);
  return (v44)(v43, v22);
}

uint64_t sub_10002D330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v21 - v16;
  (*(a1 + 24))(v15);
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v7 + 8))(v9, a2);
  v23 = a3;
  v24 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v18 = *(v11 + 16);
  v18(v17, v14, v10);
  v19 = *(v11 + 8);
  v19(v14, v10);
  v18(v22, v17, v10);
  return (v19)(v17, v10);
}

uint64_t sub_10002D5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002D634()
{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for Toggle();
  type metadata accessor for ButtonToggleStyle();
  swift_getWitnessTable();
  sub_10002D5C8(qword_1003AB4F8, &type metadata accessor for ButtonToggleStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for GlassButtonStyle();
  swift_getOpaqueTypeConformance2();
  sub_10002D5C8(&qword_1003AAD08, &type metadata accessor for GlassButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_100005EA8(&qword_1003AAD10);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10002C5D8();
  return swift_getWitnessTable();
}

uint64_t sub_10002D880(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002D8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D950()
{
  result = Image.init(systemName:)();
  qword_1003D24A0 = result;
  return result;
}

uint64_t sub_10002D988()
{
  result = Image.init(systemName:)();
  qword_1003D24A8 = result;
  return result;
}

uint64_t sub_10002D9B4()
{
  result = Image.init(systemName:)();
  qword_1003D24B0 = result;
  return result;
}

uint64_t sub_10002D9EC()
{
  result = Image.init(systemName:)();
  qword_1003D24B8 = result;
  return result;
}

uint64_t sub_10002DA28()
{
  result = Image.init(systemName:)();
  qword_1003D24C0 = result;
  return result;
}

uint64_t sub_10002DA60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v88 = sub_100005AD4(&qword_1003AB588);
  v3 = __chkstk_darwin(v88);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v87 = &v84 - v5;
  v90 = sub_100005AD4(&qword_1003AB590);
  v89 = *(v90 - 8);
  v6 = __chkstk_darwin(v90);
  v103 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v84 - v8;
  v9 = sub_100005AD4(&qword_1003AB598);
  v10 = __chkstk_darwin(v9 - 8);
  v102 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v84 - v12;
  v13 = sub_100005AD4(&qword_1003AB5A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v84 - v15;
  v97 = sub_100005AD4(&qword_1003AB5A8);
  v17 = __chkstk_darwin(v97);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v84 - v20;
  v99 = sub_100005AD4(&qword_1003AB5B0);
  v98 = *(v99 - 8);
  v22 = __chkstk_darwin(v99);
  v101 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v106 = &v84 - v25;
  v26 = __chkstk_darwin(v24);
  v108 = &v84 - v27;
  __chkstk_darwin(v26);
  v29 = &v84 - v28;
  v104 = a1;

  Button.init(action:label:)();
  v94 = sub_10001BAEC(&qword_1003AB5B8, &qword_1003AB5A0);
  v96 = v13;
  View.accessibilityIdentifier(_:)();
  v30 = *(v14 + 8);
  v95 = v14 + 8;
  v92 = v30;
  v30(v16, v13);
  LocalizedStringKey.init(stringLiteral:)();
  v31 = Text.init(_:tableName:bundle:comment:)();
  v33 = v32;
  v35 = v34;
  v36 = v21;
  ModifiedContent<>.accessibility(label:)();
  sub_10002EA54(v31, v33, v35 & 1);

  sub_100009EBC(v19, &qword_1003AB5A8);
  KeyPath = swift_getKeyPath();
  LOBYTE(v112) = 0;
  v93 = sub_10002EFE4();
  v105 = sub_10002F0CC();
  v100 = v29;
  View.buttonStyle<A>(_:)();

  sub_100009EBC(v21, &qword_1003AB5A8);
  v37 = v104;
  v110 = v104;

  Button.init(action:label:)();
  v38 = v96;
  View.accessibilityIdentifier(_:)();
  v85 = v16;
  v92(v16, v38);
  LocalizedStringKey.init(stringLiteral:)();
  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  LOBYTE(v13) = v42;
  ModifiedContent<>.accessibility(label:)();
  sub_10002EA54(v39, v41, v13 & 1);

  v43 = v19;
  sub_100009EBC(v19, &qword_1003AB5A8);
  KeyPath = swift_getKeyPath();
  LOBYTE(v112) = 0;
  View.buttonStyle<A>(_:)();
  v44 = v37;

  v45 = sub_100009EBC(v36, &qword_1003AB5A8);
  if (*(v37 + 89))
  {
    __chkstk_darwin(v45);

    v46 = v85;
    Button.init(action:label:)();
    v47 = v96;
    View.accessibilityIdentifier(_:)();
    v92(v46, v47);
    LocalizedStringKey.init(stringLiteral:)();
    v48 = Text.init(_:tableName:bundle:comment:)();
    v50 = v49;
    v52 = v51;
    ModifiedContent<>.accessibility(label:)();
    sub_10002EA54(v48, v50, v52 & 1);

    sub_100009EBC(v43, &qword_1003AB5A8);
    KeyPath = swift_getKeyPath();
    LOBYTE(v112) = 0;
    v53 = v106;
    View.buttonStyle<A>(_:)();

    v44 = v104;
    sub_100009EBC(v36, &qword_1003AB5A8);
    v54 = v98;
    v55 = v107;
    v56 = v99;
    (*(v98 + 32))(v107, v53, v99);
    v57 = 0;
    v58 = v55;
    v59 = v56;
  }

  else
  {
    v57 = 1;
    v58 = v107;
    v59 = v99;
    v54 = v98;
  }

  (*(v54 + 56))(v58, v57, 1, v59);
  v61 = *(v44 + 48);
  v60 = *(v44 + 56);
  v115 = 0;

  State.init(wrappedValue:)();
  v113 = v61;
  v114 = v60;
  sub_10002F128();
  v62 = v86;
  View.accessibilityIdentifier(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v63 = Text.init(_:tableName:bundle:comment:)();
  v65 = v64;
  v67 = v66;
  v68 = v87;
  ModifiedContent<>.accessibility(label:)();
  sub_10002EA54(v63, v65, v67 & 1);

  sub_100009EBC(v62, &qword_1003AB588);
  KeyPath = swift_getKeyPath();
  LOBYTE(v112) = 0;
  sub_10002F17C();
  View.buttonStyle<A>(_:)();

  sub_100009EBC(v68, &qword_1003AB588);
  v69 = *(v54 + 16);
  v70 = v106;
  v71 = v99;
  v69(v106, v100, v99);
  v72 = v101;
  v69(v101, v108, v71);
  sub_10002F238(v107, v102);
  v73 = v89;
  v74 = *(v89 + 16);
  v75 = v90;
  v74(v103, v109, v90);
  v76 = v91;
  v69(v91, v70, v71);
  v77 = sub_100005AD4(&qword_1003AB5E0);
  v69(&v76[v77[12]], v72, v71);
  v78 = v102;
  sub_10002F238(v102, &v76[v77[16]]);
  v79 = &v76[v77[20]];
  v80 = v103;
  v74(v79, v103, v75);
  v81 = *(v73 + 8);
  v81(v109, v75);
  sub_10002F2A8(v107);
  v82 = *(v98 + 8);
  v82(v108, v71);
  v82(v100, v71);
  v81(v80, v75);
  sub_10002F2A8(v78);
  v82(v101, v71);
  return (v82)(v106, v71);
}

uint64_t sub_10002E7DC@<X0>(void *a1@<X8>)
{
  if (qword_1003A9188 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1003D24A0;
}

uint64_t sub_10002E84C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 64))
  {
    if (qword_1003A9198 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1003A9190 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  *a2 = result;
  return result;
}

uint64_t sub_10002E8F4@<X0>(uint64_t *a1@<X8>)
{
  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  if (v3 == 1)
  {
    if (qword_1003A91A8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1003A91A0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  *a1 = result;
  return result;
}

uint64_t sub_10002E9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v8[4] = v1[4];
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 89);
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = v1[3];
  v8[2] = v1[2];
  v8[3] = v5;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = 0;
  v6 = sub_100005AD4(&qword_1003AB580);
  return sub_10002DA60(v8, (a1 + *(v6 + 44)));
}

uint64_t sub_10002EA54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002EA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v43 = a2;
  v45 = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AB5F8);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_100005AD4(&qword_1003AB600);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v42 = sub_100005AD4(&qword_1003AB608);
  v13 = *(v42 - 8);
  __chkstk_darwin(v42);
  v15 = &v37 - v14;
  v40 = sub_100005AD4(&qword_1003AB610);
  __chkstk_darwin(v40);
  v17 = &v37 - v16;
  v44 = a1;
  ButtonStyleConfiguration.label.getter();
  v18 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(sub_100005AD4(&qword_1003AB618) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = &v12[*(v10 + 36)];
  v22 = *(sub_100005AD4(&qword_1003AB620) + 28);
  v23 = enum case for Image.Scale.large(_:);
  v24 = type metadata accessor for Image.Scale();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  v25 = enum case for DynamicTypeSize.xxLarge(_:);
  v26 = type metadata accessor for DynamicTypeSize();
  (*(*(v26 - 8) + 104))(v9, v25, v26);
  sub_10002F5D8(&qword_1003AB628, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_10002F438();
  sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8);
  View.dynamicTypeSize<A>(_:)();
  sub_100009EBC(v9, &qword_1003AB5F8);
  sub_100009EBC(v12, &qword_1003AB600);
  if ((v41 & 1) == 0)
  {
    v29 = v43;

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v31 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10002F620(v29, 0);
    (*(v38 + 8))(v31, v39);
    if (v46 != 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v28 = static Color.translateAccentColor.getter();
    goto LABEL_7;
  }

  if (v43)
  {
    goto LABEL_6;
  }

LABEL_4:
  v28 = static Color.tertiaryTranslateAccentColor.getter();
LABEL_7:
  v32 = v28;
  v33 = swift_getKeyPath();
  (*(v13 + 32))(v17, v15, v42);
  v34 = &v17[*(v40 + 36)];
  *v34 = v33;
  v34[1] = v32;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v35 = 0.5;
  }

  else
  {
    v35 = 1.0;
  }

  v36 = v45;
  sub_10002F634(v17, v45);
  result = sub_100005AD4(&qword_1003AB658);
  *(v36 + *(result + 36)) = v35;
  return result;
}

unint64_t sub_10002EFE4()
{
  result = qword_1003AB5C0;
  if (!qword_1003AB5C0)
  {
    sub_100005EA8(&qword_1003AB5A8);
    sub_10001BAEC(&qword_1003AB5B8, &qword_1003AB5A0);
    sub_10002F5D8(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB5C0);
  }

  return result;
}

unint64_t sub_10002F0CC()
{
  result = qword_1003AB5C8;
  if (!qword_1003AB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB5C8);
  }

  return result;
}

unint64_t sub_10002F128()
{
  result = qword_1003AB5D0;
  if (!qword_1003AB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB5D0);
  }

  return result;
}

unint64_t sub_10002F17C()
{
  result = qword_1003AB5D8;
  if (!qword_1003AB5D8)
  {
    sub_100005EA8(&qword_1003AB588);
    sub_10002F128();
    sub_10002F5D8(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB5D8);
  }

  return result;
}

uint64_t sub_10002F238(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AB598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F2A8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AB598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F318(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10002F32C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10002F374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_10002F438()
{
  result = qword_1003AB630;
  if (!qword_1003AB630)
  {
    sub_100005EA8(&qword_1003AB600);
    sub_10002F4F0();
    sub_10001BAEC(&qword_1003AB648, &qword_1003AB620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB630);
  }

  return result;
}

unint64_t sub_10002F4F0()
{
  result = qword_1003AB638;
  if (!qword_1003AB638)
  {
    sub_100005EA8(&qword_1003AB618);
    sub_10002F5D8(&qword_1003AB640, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB638);
  }

  return result;
}

uint64_t sub_10002F5D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002F620(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10002F634(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AB610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002F6A8()
{
  result = qword_1003AB660;
  if (!qword_1003AB660)
  {
    sub_100005EA8(&qword_1003AB658);
    sub_10002F734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB660);
  }

  return result;
}

unint64_t sub_10002F734()
{
  result = qword_1003AB668;
  if (!qword_1003AB668)
  {
    sub_100005EA8(&qword_1003AB610);
    sub_100005EA8(&qword_1003AB600);
    sub_100005EA8(&qword_1003AB5F8);
    sub_10002F438();
    sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB668);
  }

  return result;
}

id sub_10002F888()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___stack;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___stack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___stack);
  }

  else
  {
    sub_100005AD4(&unk_1003AFCC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1002D53D0;
    *(v4 + 32) = sub_10002F9FC();
    *(v4 + 40) = sub_10002FC68();
    *(v4 + 48) = sub_10002FE8C();
    v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    LODWORD(v6) = 1128792064;
    [v5 setContentHuggingPriority:1 forAxis:v6];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    *(v4 + 56) = v5;
    *(v4 + 64) = sub_1000304AC();
    *(v4 + 72) = sub_1000300F4();
    v7 = objc_allocWithZone(UIStackView);
    sub_10000A2CC(0, &qword_1003AFCF0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithArrangedSubviews:isa];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

objc_class *sub_10002F9FC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___expandAction;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___expandAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___expandAction);
  }

  else
  {
    type metadata accessor for ActionButton();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A2CC(0, &qword_1003A9940);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100031F1C;
    *(v5 + 24) = v4;
    swift_retain_n();
    v17 = v5;
    v6 = v0;
    v18.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v18).super.super.super.super.isa;
    v8 = objc_opt_self();
    v9 = isa;
    v10 = [v8 systemFontOfSize:{17.0, 0, 0, 0, sub_1000320A4, v17}];
    v11 = [objc_opt_self() configurationWithFont:v10 scale:3];

    v12 = v9;
    [(objc_class *)v12 setPreferredSymbolConfiguration:v11 forImageInState:0];
    sub_10000704C();
    [(objc_class *)v12 setFrame:0.0, 0.0, 44.0, 44.0];
    v13 = [objc_opt_self() whiteColor];
    [(objc_class *)v12 setTintColor:v13];

    v14 = *(v6 + v1);
    *(v6 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

objc_class *sub_10002FC68()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___starAction;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___starAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___starAction);
  }

  else
  {
    type metadata accessor for ActionButton();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v4;
    v6 = v0;
    v7 = sub_100006D4C(1918989427, 0xE400000000000000, 0x6C69662E72617473, 0xE90000000000006CLL, sub_100031EEC, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_10002FD3C(void *a1, uint64_t a2, void (*a3)(_OWORD *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions_delegate;
    swift_beginAccess();
    sub_100031D68(v6 + v7, v10);
    if (v11)
    {
      sub_100031DD8(v10, v9);
      sub_100009EBC(v10, &unk_1003AB980);
      sub_1000085CC(v9, v9[3]);
      if ([a1 sender])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v8, 0, sizeof(v8));
      }

      a3(v8);

      sub_100009EBC(v8, &unk_1003AB9C0);
      return sub_100008664(v9);
    }

    else
    {

      return sub_100009EBC(v10, &unk_1003AB980);
    }
  }

  return result;
}

objc_class *sub_10002FE8C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___bookClosedAction;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___bookClosedAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___bookClosedAction);
  }

  else
  {
    type metadata accessor for ActionButton();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A2CC(0, &qword_1003A9940);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100031EBC;
    *(v5 + 24) = v4;
    swift_retain_n();
    v17 = v5;
    v6 = v0;
    v18.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v18).super.super.super.super.isa;
    v8 = objc_opt_self();
    v9 = isa;
    v10 = [v8 systemFontOfSize:{17.0, 0, 0, 0, sub_1000320A4, v17}];
    v11 = [objc_opt_self() configurationWithFont:v10 scale:3];

    v12 = v9;
    [(objc_class *)v12 setPreferredSymbolConfiguration:v11 forImageInState:0];
    sub_10000704C();
    [(objc_class *)v12 setFrame:0.0, 0.0, 44.0, 44.0];
    v13 = [objc_opt_self() whiteColor];
    [(objc_class *)v12 setTintColor:v13];

    v14 = *(v6 + v1);
    *(v6 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

objc_class *sub_1000300F4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton);
  }

  else
  {
    type metadata accessor for ActionButton();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A2CC(0, &qword_1003A9940);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100031E74;
    *(v5 + 24) = v4;
    swift_retain_n();
    v17 = v5;
    v6 = v0;
    v18.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v18).super.super.super.super.isa;
    v8 = objc_opt_self();
    v9 = isa;
    v10 = [v8 systemFontOfSize:{17.0, 0, 0, 0, sub_100031EB4, v17}];
    v11 = [objc_opt_self() configurationWithFont:v10 scale:3];

    v12 = v9;
    [(objc_class *)v12 setPreferredSymbolConfiguration:v11 forImageInState:0];
    sub_10000704C();
    [(objc_class *)v12 setFrame:0.0, 0.0, 44.0, 44.0];
    v13 = [objc_opt_self() whiteColor];
    [(objc_class *)v12 setTintColor:v13];

    v14 = *(v6 + v1);
    *(v6 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

uint64_t sub_100030360(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions_delegate;
    swift_beginAccess();
    sub_100031D68(v3 + v4, v7);
    if (v8)
    {
      sub_100031DD8(v7, v6);
      sub_100009EBC(v7, &unk_1003AB980);
      sub_1000085CC(v6, v6[3]);
      if ([a1 sender])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v5, 0, sizeof(v5));
      }

      sub_10003A9D0(4u, v5);

      sub_100009EBC(v5, &unk_1003AB9C0);
      return sub_100008664(v6);
    }

    else
    {

      return sub_100009EBC(v7, &unk_1003AB980);
    }
  }

  return result;
}

id sub_1000304AC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playbackRateLabel;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playbackRateLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playbackRateLabel);
  }

  else
  {
    v4 = sub_10003050C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10003050C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:0];
  v2 = objc_opt_self();
  [v1 pointSize];
  v3 = [v2 systemFontOfSize:? weight:?];
  v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  v5 = [v4 scaledFontForFont:v3 maximumPointSize:1.79769313e308];

  [v0 setFont:v5];
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v0 setTextColor:v7];
  [v0 setHidden:1];
  return v0;
}

char *sub_1000306C4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions_background;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for ChromeBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = &v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions_delegate];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___stack] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___expandAction] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___starAction] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___bookClosedAction] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions_playLongPress] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playbackRateLabel] = 0;
  v81.receiver = v4;
  v81.super_class = type metadata accessor for CardActions();
  v11 = objc_msgSendSuper2(&v81, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions_background;
  v13 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator11CardActions_background];
  v14 = v11;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v11[v12] setAlpha:0.0];
  v15 = *&v11[v12];
  v16 = v14;
  [v16 addSubview:v15];
  v17 = *&v11[v12];
  sub_1002C31A4(v17);

  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:28.0];
  v20 = objc_opt_self();
  v79 = [v20 configurationWithFont:v19];

  v21 = [v18 systemFontOfSize:17.0];
  v22 = [v20 configurationWithFont:v21];

  v23 = sub_10002FC68();
  v24 = v22;
  [(objc_class *)v23 setPreferredSymbolConfiguration:v24 forImageInState:0];

  v25 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___starAction;
  LODWORD(v26) = 1148846080;
  [*&v16[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___starAction] setContentCompressionResistancePriority:1 forAxis:v26];
  v27 = *&v16[v25];
  v28 = String._bridgeToObjectiveC()();
  [v27 setAccessibilityIdentifier:v28];

  [*&v16[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = sub_10002FE8C();
  v80 = v24;
  [(objc_class *)v29 setPreferredSymbolConfiguration:v24 forImageInState:0];

  v78 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___bookClosedAction;
  [*&v16[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___bookClosedAction] setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = sub_1000300F4();
  [(objc_class *)v30 setPreferredSymbolConfiguration:v79 forImageInState:0];

  v31 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton;
  LODWORD(v32) = 1148846080;
  [*&v16[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton] setContentCompressionResistancePriority:1 forAxis:v32];
  [*&v16[v31] setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = sub_10002F9FC();
  v34 = String._bridgeToObjectiveC()();
  v35 = objc_opt_self();
  v36 = [v35 colorNamed:v34];

  [(objc_class *)v33 setTintColor:v36];
  v37 = *&v16[v25];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v35 colorNamed:v38];

  [v37 setTintColor:v39];
  v40 = *&v16[v78];
  v41 = String._bridgeToObjectiveC()();
  v42 = [v35 colorNamed:v41];

  [v40 setTintColor:v42];
  v43 = *&v16[v31];
  v44 = String._bridgeToObjectiveC()();
  v45 = [v35 colorNamed:v44];

  [v43 setTintColor:v45];
  v46 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___expandAction;
  v47 = *&v16[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___expandAction];
  v48 = String._bridgeToObjectiveC()();
  [v47 setAccessibilityIdentifier:v48];

  [*&v16[v46] setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = *&v16[v78];
  v50 = objc_opt_self();
  v51 = v49;
  v52 = [v50 mainBundle];
  v82._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000015;
  v53._object = 0x80000001002F0E10;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v82);

  v55 = String._bridgeToObjectiveC()();

  [v51 setAccessibilityLabel:v55];

  v56 = *&v16[v78];
  v57 = String._bridgeToObjectiveC()();
  [v56 setAccessibilityIdentifier:v57];

  v58 = sub_10002F888();
  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];

  v59 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___stack;
  [*&v16[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___stack] setDistribution:0];
  [*&v16[v59] setDirectionalLayoutMargins:{10.0, 32.0, 10.0, 32.0}];
  [*&v16[v59] setLayoutMarginsRelativeArrangement:1];
  [*&v16[v59] setInsetsLayoutMarginsFromSafeArea:0];
  [*&v16[v59] setCustomSpacing:*&v16[v46] afterView:28.0];
  [*&v16[v59] setCustomSpacing:*&v16[v25] afterView:28.0];
  v60 = *&v16[v59];
  v61 = sub_1000304AC();
  [v60 setCustomSpacing:v61 afterView:4.0];

  [v16 addSubview:*&v16[v59]];
  v62 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1002D53E0;
  v64 = [*&v16[v59] topAnchor];
  v65 = [v16 topAnchor];

  v66 = [v64 constraintEqualToAnchor:v65];
  *(v63 + 32) = v66;
  v67 = [*&v16[v59] leadingAnchor];
  v68 = [v16 leadingAnchor];

  v69 = [v67 constraintEqualToAnchor:v68];
  *(v63 + 40) = v69;
  v70 = [v16 trailingAnchor];

  v71 = [*&v16[v59] trailingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v63 + 48) = v72;
  v73 = [v16 bottomAnchor];

  v74 = [*&v16[v59] bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v63 + 56) = v75;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v62 activateConstraints:isa];

  sub_100031094();
  return v16;
}

void sub_100031094()
{
  v1 = v0;
  v22 = objc_opt_self();
  sub_10000A2CC(0, &qword_1003A9940);
  for (i = 0; i != 4; ++i)
  {
    v3 = *(&off_10037D2F8 + i + 32);
    v4 = [v22 mainBundle];
    swift__string._object = 0x80000001002F1080;
    v5._object = 0x80000001002F1060;
    swift__string._countAndFlagsBits = 0xD00000000000001FLL;
    v5._countAndFlagsBits = 0xD000000000000013;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, swift__string);

    sub_100005AD4(&qword_1003A9AB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002D3160;
    v8 = sub_1000314A0(v3);
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100031CD0();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    String.init(format:_:)();

    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = v3;
    v12 = v1;
    v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v14._countAndFlagsBits = 0x6574615279616C70;
    v14._object = 0xE90000000000005FLL;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v15 = String._bridgeToObjectiveC()();

    [v13 setAccessibilityIdentifier:{v15, 0}];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v16 = sub_1000300F4();
  [(objc_class *)v16 setShowsMenuAsPrimaryAction:0];

  v17 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton];
  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_10000A2CC(0, &unk_1003B2900);
    v18 = v17;

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v18 = v17;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000A2CC(0, &unk_1003B2900);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_10000A2CC(0, &qword_1003AB700);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v23.value.super.isa = 0;
  v23.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v23, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  [v18 setMenu:isa];
}

uint64_t sub_1000314A0(unsigned __int8 a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = "EED_THREE_QUARTERS";
  v4 = "EED_ONE_AND_ONE_QUARTER";
  v5 = 0xD00000000000001ALL;
  if (a1 != 2)
  {
    v4 = "A11Y_PLAYBUTTON_PLAYBACK_TITLE";
    v5 = 0xD000000000000027;
  }

  if (a1)
  {
    v3 = "PLAYBACK_RATE_SPEED_NORMAL";
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v3 = v4;
    v7 = v5;
  }

  v12._object = 0xE000000000000000;
  v8 = v3 | 0x8000000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v2, v9, v12)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10003159C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions_delegate;
  swift_beginAccess();
  sub_100031D68(a2 + v6, v10);
  if (!v11)
  {
    return sub_100009EBC(v10, &unk_1003AB980);
  }

  sub_100031DD8(v10, v9);
  sub_100009EBC(v10, &unk_1003AB980);
  sub_1000085CC(v9, v9[3]);
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_10003A9D0(a3, v8);
  sub_100009EBC(v8, &unk_1003AB9C0);
  return sub_100008664(v9);
}

void sub_1000316C0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1000300F4();
  v5 = [objc_opt_self() mainBundle];
  v24._object = 0xE000000000000000;
  v6._object = 0x80000001002F0FA0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v24);

  sub_100005AD4(&qword_1003A9AB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D3160;
  v9 = sub_1000314A0(a1);
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100031CD0();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  String.init(format:_:)();

  v12 = String._bridgeToObjectiveC()();

  [(objc_class *)v4 setAccessibilityLabel:v12];

  v13 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton);
  v14 = [v13 accessibilityLabel];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v23 = sub_10001F278();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v19 = String._bridgeToObjectiveC()();

    [v13 setAccessibilityIdentifier:{v19, &type metadata for String, v23, v23, v23, 95, 0xE100000000000000, 32, 0xE100000000000000, v16, v18}];

    v20 = sub_1000304AC();
    v21 = v20;
    if (a1 == 2)
    {
      [v20 setHidden:1];
    }

    else
    {
      sub_1000314A0(a1);
      v22 = String._bridgeToObjectiveC()();

      [v21 setText:v22];

      [*(v2 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playbackRateLabel) setHidden:0];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10003198C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardActions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for PersonalTranslatorViewModel.TTSPlaybackRate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalTranslatorViewModel.TTSPlaybackRate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100031C04()
{
  result = qword_1003AB6E0;
  if (!qword_1003AB6E0)
  {
    sub_100005EA8(&qword_1003AB6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6E0);
  }

  return result;
}

unint64_t sub_100031C7C()
{
  result = qword_1003AB6F0;
  if (!qword_1003AB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6F0);
  }

  return result;
}

unint64_t sub_100031CD0()
{
  result = qword_1003AB6F8;
  if (!qword_1003AB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB6F8);
  }

  return result;
}

uint64_t sub_100031D24()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100031D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003AB980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031DD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100031E3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031E7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100031F4C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions_background;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ChromeBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions_delegate;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___stack) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___expandAction) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___starAction) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___bookClosedAction) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playButton) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions_playLongPress) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11CardActions____lazy_storage___playbackRateLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003204C(double a1)
{
  if (a1 == 0.5)
  {
    return 0;
  }

  if (a1 == 0.75)
  {
    return 1;
  }

  if (a1 == 1.25)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if (a1 == 1.0)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

id sub_1000320A8()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___containerView);
  }

  else
  {
    v4 = sub_100032108();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100032108()
{
  v0 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [v0 layer];
  [v1 setCornerRadius:10.0];

  v2 = [v0 layer];
  [v2 setMasksToBounds:1];

  v3 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v3];

  return v0;
}

id sub_100032204()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView];
  }

  else
  {
    v4 = sub_100032268(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100032268(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TranslationCard()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12[3] = type metadata accessor for CardCollectionViewCell();
  v12[4] = &off_1003800F0;
  v12[0] = a1;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_delegate;
  swift_beginAccess();
  v4 = v2;
  v5 = a1;
  sub_100033458(v12, v2 + v3);
  swift_endAccess();

  v6 = objc_opt_self();
  v7 = v4;
  v8 = [v6 secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v8];

  v9 = v7;
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  [v9 setClipsToBounds:1];
  return v9;
}

char *sub_1000323C8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_paddingDefault] = 0x4038000000000000;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_topPaddingDefault] = 0x4010000000000000;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_bottomPaddingDefault] = 0xC010000000000000;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_leadingPadding] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_trailingPadding] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___containerView] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_collapsedMinHeight] = 0x4056800000000000;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_expandedMinimumHeight] = 0x4077C00000000000;
  v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded] = 0;
  v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying] = 0;
  v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minimumHeightEnabled] = 1;
  v9 = &v4[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_delegate];
  v10 = type metadata accessor for CardCollectionViewCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v85.receiver = v4;
  v85.super_class = v10;
  v11 = objc_msgSendSuper2(&v85, "initWithFrame:", a1, a2, a3, a4);
  v12 = sub_100032204();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [v11 contentView];
  v14 = sub_1000320A8();
  [v13 addSubview:v14];

  v15 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___containerView;
  v16 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView;
  [*&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___containerView] addSubview:*&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView]];
  v17 = [*&v11[v16] bottomAnchor];
  v18 = v15;
  v19 = [*&v11[v15] bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];
  v83 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D53E0;
  v23 = [*&v11[v16] topAnchor];
  v24 = v18;
  v25 = [*&v11[v18] topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  *(v22 + 32) = v26;
  v27 = [*&v11[v16] leadingAnchor];
  v28 = [*&v11[v24] leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v22 + 40) = v29;
  v30 = [*&v11[v16] trailingAnchor];
  v31 = [*&v11[v24] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v22 + 48) = v32;
  *(v22 + 56) = v20;
  sub_100033604();
  v84 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v83 activateConstraints:isa];

  v34 = [*&v11[v24] heightAnchor];
  v35 = [v34 constraintGreaterThanOrEqualToConstant:90.0];

  LODWORD(v36) = 1148846080;
  v82 = v35;
  [v35 setPriority:v36];
  v37 = String._bridgeToObjectiveC()();
  [v35 setIdentifier:v37];

  v38 = [*&v11[v16] heightAnchor];
  v39 = [v38 constraintEqualToConstant:0.0];

  v40 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight];
  *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight] = v39;

  v41 = [*&v11[v24] bottomAnchor];
  v42 = [*(*&v11[v16] + OBJC_IVAR____TtC17SequoiaTranslator8CardView_container) bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:16.0];

  v81 = v43;
  LODWORD(v44) = 1132068864;
  [v43 setPriority:v44];
  v45 = String._bridgeToObjectiveC()();
  [v43 setIdentifier:v45];

  v46 = [*&v11[v24] leadingAnchor];
  v47 = [v11 contentView];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor:v48 constant:24.0];
  LODWORD(v50) = 1148829696;
  [v49 setPriority:v50];
  v51 = [v11 contentView];
  v52 = [v51 trailingAnchor];

  v53 = [*&v11[v24] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:24.0];

  v55 = v24;
  v56 = [*&v11[v24] topAnchor];
  v57 = [v11 contentView];
  v58 = [v57 topAnchor];

  v59 = [v56 constraintEqualToAnchor:v58];
  LODWORD(v60) = 1148829696;
  [v59 setPriority:v60];
  v61 = [*&v11[v55] bottomAnchor];
  v62 = [v11 contentView];

  v63 = [v62 bottomAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];

  LODWORD(v65) = 1148829696;
  [v64 setPriority:v65];
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1002D53D0;
  *(v66 + 32) = v59;
  *(v66 + 40) = v49;
  *(v66 + 48) = v54;
  *(v66 + 56) = v64;
  *(v66 + 64) = v82;
  *(v66 + 72) = v81;
  v67 = v59;
  v68 = v49;
  v69 = v54;
  v70 = v64;
  v71 = v82;
  v72 = v81;
  v73 = Array._bridgeToObjectiveC()().super.isa;

  [v83 activateConstraints:v73];

  [v71 setActive:v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minimumHeightEnabled]];
  v74 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_leadingPadding];
  *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_leadingPadding] = v68;
  v75 = v68;

  v76 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_trailingPadding];
  *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_trailingPadding] = v69;
  v77 = v69;

  v78 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight];
  *&v11[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight] = v71;
  v79 = v71;

  sub_100032D44();
  return v11;
}

id sub_100032D44()
{
  v1 = v0;
  v2 = sub_100032204();
  v3 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded;
  v4 = v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded];
  v5 = OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded;
  v6 = v2[OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded];
  v2[OBJC_IVAR____TtC17SequoiaTranslator8CardView_expanded] = v4;
  if (v4 != v6)
  {
    sub_1002959E8();
    v4 = v2[v5];
  }

  if (v6 != v4)
  {
    sub_1002959E8();
  }

  if ((v1[v3] & 1) == 0)
  {
    v7 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight];
    if (v7)
    {
      [v7 setActive:0];
    }
  }

  v8 = [*&v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView] layer];
  v9 = v8;
  v10 = 0.0;
  v11 = 10.0;
  if (!v1[v3])
  {
    v11 = 0.0;
  }

  [v8 setCornerRadius:v11];

  v12 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight;
  v13 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight];
  if (v13)
  {
    v14 = v1[v3] == 1 ? *&v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_expandedMinimumHeight] : 90.0;
    [v13 setConstant:v14];
    v15 = *&v1[v12];
    if (v15)
    {
      if (v1[v3] == 1)
      {
        v16 = v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minimumHeightEnabled];
      }

      else
      {
        v16 = 0;
      }

      [v15 setActive:v16];
    }
  }

  v17 = [v1 traitCollection];
  v18 = [v17 horizontalSizeClass];

  if (v18 == 1)
  {
    v10 = 16.0;
  }

  v19 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_leadingPadding];
  if (v19)
  {
    v20 = 0.0;
    if (!v1[v3])
    {
      v20 = v10;
    }

    [v19 setConstant:v20];
  }

  result = *&v1[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_trailingPadding];
  if (result)
  {
    v22 = 0.0;
    if (!v1[v3])
    {
      v22 = v10;
    }

    return [result setConstant:v22];
  }

  return result;
}

id sub_100032FBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000330B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_delegate;
  swift_beginAccess();
  sub_100033380(v4 + v9, v12);
  if (!v13)
  {
    return sub_1000333F0(v12);
  }

  sub_100031DD8(v12, v11);
  sub_1000333F0(v12);
  sub_1000085CC(v11, v11[3]);
  sub_100038790(a1, a2, a3, a4, v4);
  return sub_100008664(v11);
}

uint64_t sub_100033178(void *a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_delegate;
  swift_beginAccess();
  sub_100033380(v1 + v3, v6);
  if (!v7)
  {
    return sub_1000333F0(v6);
  }

  sub_100031DD8(v6, v5);
  sub_1000333F0(v6);
  sub_1000085CC(v5, v5[3]);
  sub_100038E64(a1);
  return sub_100008664(v5);
}

uint64_t sub_100033218(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_delegate;
  swift_beginAccess();
  sub_100033380(v2 + v5, v8);
  if (!v9)
  {
    return sub_1000333F0(v8);
  }

  sub_100031DD8(v8, v7);
  sub_1000333F0(v8);
  sub_1000085CC(v7, v7[3]);
  a2(a1, v2);
  return sub_100008664(v7);
}

uint64_t sub_100033380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AB7A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000333F0(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AB7A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100033458(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003AB7B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000334C8()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_paddingDefault) = 0x4038000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_topPaddingDefault) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_bottomPaddingDefault) = 0xC010000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_leadingPadding) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_trailingPadding) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_cardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_collapsedMinHeight) = 0x4056800000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_expandedMinimumHeight) = 0x4077C00000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minimumHeightEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100033604()
{
  result = qword_1003B3480;
  if (!qword_1003B3480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B3480);
  }

  return result;
}

NSString sub_100033650()
{
  result = String._bridgeToObjectiveC()();
  qword_1003D24C8 = result;
  return result;
}

id sub_1000336D0(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 estimatedDimension:100.0];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v3 heightDimension:v4];

  v7 = [objc_opt_self() itemWithLayoutSize:v6];
  v8 = [v2 fractionalWidthDimension:1.0];
  v9 = [v2 estimatedDimension:100.0];
  v10 = [v5 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() horizontalGroupWithLayoutSize:v10 subitem:v7 count:1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  v13 = objc_allocWithZone(type metadata accessor for InvertedCollectionViewLayout());
  v23 = sub_10003BD7C;
  v24 = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A3A0C;
  v22 = &unk_100380648;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v11;
  v17 = [v13 initWithSectionProvider:v14];
  _Block_release(v14);

  v22 = type metadata accessor for CardListController();
  v23 = &off_100380130;
  v18 = v15;

  aBlock[0] = v18;
  v19 = OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_swipeDelegate;
  swift_beginAccess();
  sub_10003BD84(aBlock, v17 + v19, &unk_1003B1AC0);
  swift_endAccess();
  return v17;
}

id sub_1000339A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1002C378C(a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() sectionWithGroup:a4];
  [v13 setInterGroupSpacing:8.0];
  [v13 setContentInsets:{v6, v8, v10, v12}];
  return v13;
}

id sub_100033A6C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100033AD0(uint64_t a1)
{
  v2 = sub_1000336B0();
  v3 = [objc_allocWithZone(UICollectionView) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v4;
  [v5 setShowsVerticalScrollIndicator:0];
  [v5 setAlwaysBounceVertical:1];
  [v5 setAllowsMultipleSelection:0];
  [v5 setDataSource:a1];
  [v5 setDelegate:a1];
  [v5 setContentInsetAdjustmentBehavior:2];

  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  [v5 setBackgroundColor:v6];

  type metadata accessor for CardCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v8];

  CGAffineTransformMakeScale(&v12, 1.0, -1.0);
  [v5 setTransform:&v12];

  type metadata accessor for MoreHistoryCollectionViewCell();
  v9 = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();
  [v5 registerClass:v9 forCellWithReuseIdentifier:v10];

  return v5;
}

void sub_100033CEC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CardListController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  sub_1000340C0();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_100033A4C();
  [v5 addSubview:v6];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView];
    sub_1002C31A4(v9);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100033F04()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for CardListController();
  objc_msgSendSuper2(&v24, "viewSafeAreaInsetsDidChange");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 safeAreaInsets];
  v4 = v3;
  v6 = v5;

  v7 = [v0 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 safeAreaInsets];
  v10 = v9;

  v11 = [v0 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 safeAreaInsets];
  v14 = v13;

  v15 = sub_100033A4C();
  [v15 contentInset];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (v17 != v10 || v19 != v4 || v21 != v14 || v23 != v6)
  {
    [*&v0[OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView] setContentInset:{v10, v4, v14, v6}];
  }
}

uint64_t sub_1000340C0()
{
  v1 = v0;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Locale();
  v6 = *(v54 - 8);
  v7 = __chkstk_darwin(v54);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v44 - v9;
  v51 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_dictionaryManager;
  v10 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_dictionaryManager);
  v11 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_conversation);
  v12 = v10;
  v13 = v11;
  v14 = sub_100097D4C();

  sub_1000DCA80(v14);
  v59 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v15 = aBlock[0];
  if (!(aBlock[0] >> 62))
  {
    result = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
  }

LABEL_3:
  if (result >= 1)
  {
    v17 = 0;
    v48 = v15 & 0xC000000000000001;
    v47 = (v6 + 8);
    v46 = v63;
    v45 = (v2 + 8);
    v44 = (v4 + 8);
    v50 = v15;
    v49 = result;
    do
    {
      if (v48)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = *(v59 + v51);
      v21 = v52;
      v60 = v19;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      v22 = v53;
      dispatch thunk of PersistedTranslation.targetLocale.getter();
      v23 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v25 = Locale._bridgeToObjectiveC()().super.isa;
      v26 = [v23 initWithSourceLocale:isa targetLocale:v25];

      v27 = *v47;
      v28 = v54;
      (*v47)(v22, v54);
      v27(v21, v28);
      v29 = *&v20[OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_dictionaryQueue];
      v30 = swift_allocObject();
      *(v30 + 16) = v20;
      *(v30 + 24) = v26;
      v63[2] = sub_10003BD74;
      v63[3] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v63[0] = sub_100096948;
      v63[1] = &unk_1003805F8;
      v31 = _Block_copy(aBlock);
      v32 = v20;
      v33 = v29;
      v34 = v26;
      v35 = v55;
      static DispatchQoS.unspecified.getter();
      v61 = _swiftEmptyArrayStorage;
      sub_1000115AC();
      sub_100005AD4(&unk_1003A9C50);
      sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
      v36 = v57;
      v37 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*v45)(v36, v37);
      (*v44)(v35, v56);

      v38 = OBJC_IVAR____TtC17SequoiaTranslator17DictionaryManager_pairAvailability;
      swift_beginAccess();
      v39 = *&v32[v38];

      v40 = [v34 canonicalIdentifier];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      sub_10022B6B4(v41, v43, v39);

      v15 = v50;
    }

    while (v49 != v17);
  }

  __break(1u);
  return result;
}

void sub_100034710(char a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for CardListController();
  objc_msgSendSuper2(&v24, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_initialAppearance;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_initialAppearance) == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_session);
    v5 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation;
    if (*(v4 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation))
    {
      v22 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_initialAppearance;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v23 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v21 = v1;
        v7 = 0;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v7 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v23 + 8 * v7 + 32);
          }

          v1 = v8;
          v9 = *(v4 + v5);
          if (!v9)
          {
            break;
          }

          type metadata accessor for PersistedTranslation();
          v10 = v1;
          v11 = v9;
          v1 = static NSObject.== infix(_:_:)();

          if (v1)
          {

            v13 = 0;
            goto LABEL_20;
          }

          v12 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_21;
          }

LABEL_16:
          ++v7;
          if (v12 == i)
          {

            v7 = 0;
            v13 = 1;
LABEL_20:
            v1 = v21;
            goto LABEL_25;
          }
        }

        v12 = v7 + 1;
        if (!__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

      v7 = 0;
      v13 = 1;
LABEL_25:
      v3 = v22;
    }

    else
    {
      v7 = 0;
      v13 = 0;
    }

    sub_100034B10(v7, v13);
    *(v1 + v3) = 0;
    sub_100036570();
    v14 = [objc_opt_self() defaultCenter];
    if (qword_1003A91B0 != -1)
    {
      swift_once();
    }

    v15 = qword_1003D24C8;
    sub_100005AD4(&qword_1003AB9B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002D3160;
    AnyHashable.init<A>(_:)();
    v17 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_minSourceTextSize);
    v18 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController_minSourceTextSize + 8);
    type metadata accessor for CGSize(0);
    *(inited + 96) = v19;
    *(inited + 72) = v17;
    *(inited + 80) = v18;
    sub_1002925AC(inited);
    swift_setDeallocating();
    sub_100009EBC(inited + 32, &qword_1003AB9B8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 postNotificationName:v15 object:0 userInfo:isa];
  }
}

uint64_t sub_100034B10(uint64_t a1, int a2)
{
  LODWORD(v64) = a2;
  v56 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for IndexPath();
  v55 = *(v65 - 8);
  v9 = *(v55 + 64);
  v10 = __chkstk_darwin(v65);
  v11 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v57 = &v54 - v15;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10003BB04;
  *(v18 + 24) = v17;
  v71 = sub_10003BEF0;
  v72 = v18;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1000CC9DC;
  v70 = &unk_100380508;
  v19 = _Block_copy(&aBlock);
  v20 = v2;

  [v16 performWithoutAnimation:v19];
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_23:
    v27 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  v22 = sub_100033A4C();
  [v22 contentOffset];
  v3 = v23;
  v4 = v24;

  v19 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView;
  v25 = [*(v20 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView) indexPathsForSelectedItems];
  v66 = v17;
  if (v25)
  {
    v26 = v25;
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (aBlock >> 62)
  {
    goto LABEL_23;
  }

  v27 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  if (v27 <= 0)
  {
    goto LABEL_16;
  }

  if (v64)
  {
    v28 = *&v19[v20];
    if (v16)
    {
      if (v16[2])
      {
        v29 = v55;
        v30 = v65;
        (*(v55 + 16))(v11, v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v65);
        v31 = v28;

        v32.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v29 + 8))(v11, v30);
LABEL_20:
        [v31 selectItemAtIndexPath:v32.super.isa animated:0 scrollPosition:1];

        sub_10000A2CC(0, &qword_1003A9C40);
        v47 = static OS_dispatch_queue.main.getter();
        v48 = swift_allocObject();
        v48[2] = v20;
        v48[3] = v3;
        v48[4] = v4;
        v71 = sub_10003BB9C;
        v72 = v48;
        aBlock = _NSConcreteStackBlock;
        v68 = 1107296256;
        v69 = sub_100096948;
        v70 = &unk_100380558;
        v49 = _Block_copy(&aBlock);
        v50 = v20;

        v51 = v58;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_1000115AC();
        sub_100005AD4(&unk_1003A9C50);
        sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
        v52 = v59;
        v53 = v63;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v49);

        (*(v62 + 8))(v52, v53);
        (*(v60 + 8))(v51, v61);
      }

      v31 = v28;
    }

    else
    {
      v31 = v28;
    }

    v32.super.isa = 0;
    goto LABEL_20;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v33 = aBlock >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = v56;

  if (v33 <= v34)
  {
LABEL_16:
  }

  v35 = v57;
  IndexPath.init(item:section:)();
  sub_10000A2CC(0, &qword_1003A9C40);
  v64 = static OS_dispatch_queue.main.getter();
  v36 = v55;
  v37 = v65;
  (*(v55 + 16))(v14, v35, v65);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v16;
  *(v39 + 24) = v20;
  (*(v36 + 32))(v39 + v38, v14, v37);
  v71 = sub_10003BCD0;
  v72 = v39;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_100096948;
  v70 = &unk_1003805A8;
  v40 = _Block_copy(&aBlock);
  v41 = v20;

  v42 = v58;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  v43 = v59;
  v44 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = v64;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v62 + 8))(v43, v44);
  (*(v60 + 8))(v42, v61);
  (*(v36 + 8))(v57, v37);
}

void sub_100035480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (a1 && *(a1 + 16))
  {
    v9 = type metadata accessor for IndexPath();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100035F80(v8, 0);
    sub_100009EBC(v8, &unk_1003AB970);
  }

  v11 = sub_100033A4C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v11 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

  sub_100035674(a3, 0);
  v13 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView;
  [*(a2 + OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView) layoutIfNeeded];
  v14 = *(a2 + v13);
  v15 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v14 scrollToItemAtIndexPath:v15 atScrollPosition:4 animated:0];
}

void sub_100035674(uint64_t a1, int a2)
{
  v3 = v2;
  v81 = a2;
  v5 = type metadata accessor for Locale();
  v82 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v79 - v9;
  v11 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v11 - 8);
  v13 = &v79 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_currentExpandedIndexPath;
  swift_beginAccess();
  sub_10003BD84(v13, &v2[v16], &unk_1003AB970);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_session;

  v18 = IndexPath.item.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((aBlock & 0xC000000000000001) == 0)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v18 < *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = aBlock[v18 + 4];
      goto LABEL_5;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v20 = v19;

  v21 = *&v3[v17];
  v22 = *(v21 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
  *(v21 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation) = v20;

  v23 = v20;

  v24 = sub_100033A4C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v26 = [v24 cellForItemAtIndexPath:isa];

  if (!v26)
  {

    return;
  }

  type metadata accessor for CardCollectionViewCell();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {

    return;
  }

  v28 = v27;
  v80 = v26;
  v29 = v23;
  v30 = sub_100032204();
  v31 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator18CardListController_dictionaryManager];
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v79 = v29;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v32 = objc_allocWithZone(_LTLocalePair);
  v33 = Locale._bridgeToObjectiveC()().super.isa;
  v34 = Locale._bridgeToObjectiveC()().super.isa;
  v35 = [v32 initWithSourceLocale:v33 targetLocale:v34];

  v36 = *(v82 + 8);
  v36(v8, v5);
  v36(v10, v5);
  LOBYTE(v33) = sub_1000DCA80(v35);

  v37 = sub_10002FE8C();
  [(objc_class *)v37 setHidden:(v33 & 1) == 0];

  v38 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded;
  v39 = *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded);
  *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded) = 1;
  if ((v39 & 1) == 0)
  {
    sub_100032D44();
  }

  v40 = [v3 view];
  if (!v40)
  {
    goto LABEL_33;
  }

  v41 = v40;
  v42 = [v40 safeAreaLayoutGuide];

  [v42 layoutFrame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v89.origin.x = v44;
  v89.origin.y = v46;
  v89.size.width = v48;
  v89.size.height = v50;
  Height = CGRectGetHeight(v89);
  *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_expandedMinimumHeight) = Height;
  v52 = *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight);
  v53 = v79;
  if (v52)
  {
    if (!*(v28 + v38))
    {
      Height = 90.0;
    }

    [v52 setConstant:Height];
  }

  v54 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator18CardListController_conversation];
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v54;
  static Published.subscript.getter();

  v57 = aBlock;
  v56 = v84;
  v58 = [v53 identifier];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  if (!v56)
  {

    v64 = *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying);
    *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = 0;
    v63 = v81;
    if ((v64 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v57 != v59 || v56 != v61)
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v66 = *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying);
    *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = v65 & 1;
    v63 = v81;
    if ((v65 & 1) == v66)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v62 = *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying);
  *(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = 1;
  v63 = v81;
  if ((v62 & 1) == 0)
  {
LABEL_24:
    v67 = *(*(v28 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView) + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions);
    v68 = sub_1000300F4();

    sub_10000704C();
  }

LABEL_25:
  if (v63)
  {
    v69 = objc_opt_self();
    v70 = swift_allocObject();
    *(v70 + 16) = v28;
    v87 = sub_10003BAF4;
    v88 = v70;
    aBlock = _NSConcreteStackBlock;
    v84 = 1107296256;
    v85 = sub_100096948;
    v86 = &unk_100380490;
    v71 = _Block_copy(&aBlock);
    v72 = v80;

    [v69 animateWithDuration:v71 animations:0.25];
    _Block_release(v71);
  }

  v73 = objc_opt_self();
  v74 = swift_allocObject();
  *(v74 + 16) = v3;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_10003BA60;
  *(v75 + 24) = v74;
  v87 = sub_10003BEF0;
  v88 = v75;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_1000CC9DC;
  v86 = &unk_100380440;
  v76 = _Block_copy(&aBlock);
  v77 = v3;

  [v73 performWithoutAnimation:v76];

  _Block_release(v76);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_32;
  }
}

uint64_t sub_100035F80(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v6 - 8);
  v8 = &v44[-v7];
  isEscapingClosureAtFileLocation = type metadata accessor for IndexPath();
  v10 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F620(a1, v8, &unk_1003AB970);
  if ((*(v10 + 48))(v8, 1, isEscapingClosureAtFileLocation) == 1)
  {
    return sub_100009EBC(v8, &unk_1003AB970);
  }

  (*(v10 + 32))(v12, v8, isEscapingClosureAtFileLocation);
  v14 = sub_100033A4C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [v14 cellForItemAtIndexPath:isa];

  if (!v16)
  {
    return (*(v10 + 8))(v12, isEscapingClosureAtFileLocation);
  }

  type metadata accessor for CardCollectionViewCell();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
LABEL_20:

    return (*(v10 + 8))(v12, isEscapingClosureAtFileLocation);
  }

  v18 = v17;
  v45 = a2;
  v19 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_session;
  v47 = v3;

  v20 = IndexPath.item.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((aBlock & 0xC000000000000001) != 0)
  {
    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v21 = v47;
    goto LABEL_9;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = v47;
  if (v20 >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v46 = aBlock[v20 + 4];
LABEL_9:

  v22 = *(*&v21[v19] + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
  if (v22)
  {
    type metadata accessor for PersistedTranslation();
    v23 = v46;
    v24 = v22;
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
      v26 = *&v47[v19];
      v27 = *(v26 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
      *(v26 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation) = 0;
    }
  }

  v28 = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded);
  *(v18 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded) = 0;
  if (v28 == 1)
  {
    sub_100032D44();
  }

  v29 = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying);
  *(v18 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = 0;
  if (v29)
  {
    v30 = sub_100032204();
    v31 = *&v30[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions];

    v32 = sub_1000300F4();
    sub_10000704C();
  }

  if (v45)
  {
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v18;
    v52 = sub_10003BEF4;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_100096948;
    v51 = &unk_1003803C8;
    v35 = _Block_copy(&aBlock);
    v36 = v16;

    [v33 animateWithDuration:v35 animations:0.25];
    _Block_release(v35);
  }

  v37 = objc_opt_self();
  v38 = swift_allocObject();
  v39 = v47;
  *(v38 + 16) = v47;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_10003BEE0;
  *(v40 + 24) = v38;
  v52 = sub_10003BA58;
  v53 = v40;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1000CC9DC;
  v51 = &unk_100380378;
  v41 = _Block_copy(&aBlock);
  v42 = v39;

  [v37 performWithoutAnimation:v41];
  _Block_release(v41);

  v43 = *(v10 + 8);
  v10 += 8;
  v43(v12, isEscapingClosureAtFileLocation);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

void sub_100036570()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for CardCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 safeAreaLayoutGuide];

    [v5 layoutFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v52.origin.x = v7;
    v52.origin.y = v9;
    v52.size.width = v11;
    v52.size.height = v13;
    Width = CGRectGetWidth(v52);
    v15 = sub_100032204();
    v16 = sub_100293D50();

    [v16 textContainerInset];
    v18 = v17;

    v19 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView;
    v20 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView];
    v21 = sub_100293D50();

    [v21 textContainerInset];
    v23 = v22;

    v24 = *&v2[v19];
    v25 = sub_100293D50();

    [v25 contentInset];
    v27 = v26;

    v28 = *&v2[v19];
    v29 = sub_100293D50();

    [v29 contentInset];
    v31 = v30;

    v32 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
    v33 = objc_opt_self();
    [v32 pointSize];
    v34 = [v33 systemFontOfSize:? weight:?];
    v35 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
    v36 = [v35 scaledFontForFont:v34 maximumPointSize:1.79769313e308];

    v37 = sub_1002C1274(1.79769313e308);
    v38 = [v1 view];
    if (v38)
    {
      v39 = v38;
      v40 = Width - v18 - v23 - v27 - v31 + -64.0;
      v41 = [v38 safeAreaLayoutGuide];

      [v41 layoutFrame];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v53.origin.x = v43;
      v53.origin.y = v45;
      v53.size.width = v47;
      v53.size.height = v49;
      Height = CGRectGetHeight(v53);

      v51 = &v1[OBJC_IVAR____TtC17SequoiaTranslator18CardListController_minSourceTextSize];
      *v51 = floor(v40);
      v51[1] = floor((Height + -88.0 + -34.0 + -1.0 - (v37 + v37)) / 2.3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100036940()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardListController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CardListController()
{
  result = qword_1003AB820;
  if (!qword_1003AB820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100036A98()
{
  sub_100036B8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100036B8C()
{
  if (!qword_1003AB830)
  {
    type metadata accessor for IndexPath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AB830);
    }
  }
}

id sub_100036C84()
{
  v1 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CardListController();
  v30.receiver = v0;
  v30.super_class = v8;
  objc_msgSendSuper2(&v30, "viewWillLayoutSubviews");
  v9 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController_currentExpandedIndexPath;
  swift_beginAccess();
  sub_10001F620(v0 + v9, v3, &unk_1003AB970);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100009EBC(v3, &unk_1003AB970);
  }

  (*(v5 + 32))(v7, v3, v4);
  v11 = v0;
  v12 = sub_100033A4C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [v12 cellForItemAtIndexPath:isa];

  if (!v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for CardCollectionViewCell();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
LABEL_10:

    return (*(v5 + 8))(v7, v4);
  }

  v16 = v15;
  result = [v11 view];
  if (result)
  {
    v17 = result;
    v18 = [result safeAreaLayoutGuide];

    [v18 layoutFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v31.origin.x = v20;
    v31.origin.y = v22;
    v31.size.width = v24;
    v31.size.height = v26;
    Height = CGRectGetHeight(v31);
    *(v16 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_expandedMinimumHeight) = Height;
    v28 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight);
    if (v28)
    {
      if (!*(v16 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded))
      {
        Height = 90.0;
      }

      [v28 setConstant:Height];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1000370A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v88 - v10;
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  type metadata accessor for CardCollectionViewCell();
  v14 = swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v92[0] >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.row.getter() < v15)
  {
    v88 = v7;

    v16 = IndexPath.item.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v89 = v6;
    if ((v92[0] & 0xC000000000000001) == 0)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v92[0] + 8 * v16 + 32);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_38;
    }

    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v18 = v17;

    v19 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator18CardListController_conversation];
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
    static Published.subscript.getter();

    v21 = v92[0];
    v22 = v92[1];
    v23 = [v18 identifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v22)
    {
      if (v21 == v24 && v22 == v26)
      {

        v27 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying);
        *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = 1;
        if (v27)
        {
LABEL_17:
          v34 = sub_100032204();
          sub_10028A040(v18);

          v35 = [v3 view];
          if (v35)
          {
            v36 = v35;
            v37 = [v35 safeAreaLayoutGuide];

            [v37 layoutFrame];
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v45 = v44;

            v95.origin.x = v39;
            v95.origin.y = v41;
            v95.size.width = v43;
            v95.size.height = v45;
            Height = CGRectGetHeight(v95);
            *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_expandedMinimumHeight) = Height;
            v47 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_minHeight);
            if (v47)
            {
              if (!*(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded))
              {
                Height = 90.0;
              }

              [v47 setConstant:Height];
            }

            v48 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView;
            v49 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator18CardListController_minSourceTextSize];
            v50 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator18CardListController_minSourceTextSize + 8];
            v51 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell____lazy_storage___cardView);
            v52 = sub_100293D50();
            v53 = [v52 text];

            if (v53)
            {
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;

              v57 = sub_1002C1A2C(v49, v50, v54, v56, 0);

              v58 = *&v51[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont];
              *&v51[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont] = v57;
              v59 = v57;

              sub_100296B60();
              v60 = type metadata accessor for CardListController();
              v93 = v60;
              v94 = &off_100380140;
              v92[0] = v3;
              v61 = OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_delegate;
              swift_beginAccess();
              v62 = v3;
              sub_10003BD84(v92, v14 + v61, &qword_1003AB7A8);
              swift_endAccess();
              v63 = *(*(v14 + v48) + OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions);
              v93 = v60;
              v94 = &off_100380168;
              v92[0] = v62;
              v64 = OBJC_IVAR____TtC17SequoiaTranslator11CardActions_delegate;
              swift_beginAccess();
              v65 = v62;
              v66 = v63;
              sub_10003BD84(v92, v63 + v64, &unk_1003AB980);
              swift_endAccess();

              v67 = [a1 indexPathsForSelectedItems];
              if (v67)
              {
                v68 = v67;
                type metadata accessor for IndexPath();
                v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v70 = sub_1001C3AEC(a2, v69);

                v71 = (v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded);
                v72 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded);
                *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded) = v70;
                if (v70 == v72)
                {
                  v73 = *(v14 + v48);
                  if (!v70)
                  {
                    goto LABEL_31;
                  }

LABEL_29:
                  v75 = *&v65[OBJC_IVAR____TtC17SequoiaTranslator18CardListController_dictionaryManager];
                  v76 = v73;
                  v77 = v75;
                  v78 = v90;
                  dispatch thunk of PersistedTranslation.sourceLocale.getter();
                  v79 = v91;
                  dispatch thunk of PersistedTranslation.targetLocale.getter();
                  v80 = objc_allocWithZone(_LTLocalePair);
                  v81 = Locale._bridgeToObjectiveC()().super.isa;
                  v82 = Locale._bridgeToObjectiveC()().super.isa;
                  v83 = [v80 initWithSourceLocale:v81 targetLocale:v82];

                  v84 = v89;
                  v85 = *(v88 + 8);
                  v85(v79, v89);
                  v85(v78, v84);
                  LOBYTE(v85) = sub_1000DCA80(v83);

                  v86 = v85 ^ 1;
LABEL_32:
                  v87 = sub_10002FE8C();
                  [(objc_class *)v87 setHidden:v86 & 1];

                  return;
                }
              }

              else
              {
                v71 = (v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded);
                v74 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded);
                *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isExpanded) = 0;
                if ((v74 & 1) == 0)
                {
                  v73 = *(v14 + v48);
                  goto LABEL_31;
                }
              }

              sub_100032D44();
              v73 = *(v14 + v48);
              if (*v71)
              {
                goto LABEL_29;
              }

LABEL_31:
              v76 = v73;
              v86 = 1;
              goto LABEL_32;
            }

LABEL_39:
            __break(1u);
            return;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying);
        *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = v29 & 1;
        if ((v29 & 1) == v30)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {

      v28 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying);
      *(v14 + OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_isPlaying) = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v31 = sub_100032204();
    v32 = *&v31[OBJC_IVAR____TtC17SequoiaTranslator8CardView_actions];

    v33 = sub_1000300F4();
    sub_10000704C();

    goto LABEL_17;
  }
}

void sub_100037DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  v15 = [v7 presentedViewController];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for DictionaryWordSelectionController();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_dictionaryController);
      v105 = v18;

      if (v18)
      {
        v19 = &v105[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
        *v19 = a2;
        *(v19 + 1) = a3;

        sub_1000E0A1C();
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v104 = a5;
  v20 = sub_100033A4C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v20 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

  v22 = OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView;
  v23 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator18CardListController____lazy_storage___collectionView];
  v24 = IndexPath._bridgeToObjectiveC()().super.isa;
  v105 = [v23 cellForItemAtIndexPath:v24];

  if (v105)
  {
    type metadata accessor for CardCollectionViewCell();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
LABEL_20:

LABEL_22:

      return;
    }

    v102 = a7;
    v103 = v25;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v106 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();

      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v26 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = IndexPath.row.getter();
    if ((v27 & 0x8000000000000000) != 0 || v27 >= v26)
    {
      goto LABEL_22;
    }

    v28 = IndexPath.row.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v106 & 0xC000000000000001) == 0)
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v28 < *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(v106 + 8 * v28 + 32);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v30 = v29;

    v31 = *&v103[OBJC_IVAR____TtC17SequoiaTranslator22CardCollectionViewCell_expandedMinimumHeight];
    v32 = objc_allocWithZone(type metadata accessor for DictionaryWordSelectionController());
    v33 = sub_1000E2748(v31);
    v34 = *&v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translation];
    *&v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translation] = v30;
    v35 = v30;

    v36 = sub_1000E2484();
    v37 = sub_100032204();

    sub_10028A040(v35);
    v38 = &v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_word];
    *v38 = a2;
    v38[1] = a3;
    v39 = v35;

    v40 = &v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initialTouchPointInTargetView];
    *v40 = a4;
    *(v40 + 1) = v104;
    v40[16] = a6 & 1;
    v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_initiallySetHighlightToFirstWord] = v102 & 1;
    v41 = sub_1000E2484();
    v42 = sub_100032204();

    v43 = sub_100032204();
    v44 = *&v43[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont];

    v45 = *&v42[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont];
    *&v42[OBJC_IVAR____TtC17SequoiaTranslator15TranslationCard_expandedFont] = v44;
    v46 = v44;

    sub_100296B60();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v49 = swift_allocObject();
    *(v49 + 2) = v47;
    *(v49 + 3) = v48;
    *(v49 + 4) = v8;
    v50 = &v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translationAlternativeSelectedHandler];
    v51 = *&v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_translationAlternativeSelectedHandler];
    *v50 = sub_10003A0A0;
    v50[1] = v49;

    v52 = v8;
    sub_10001ABE4(v51);

    [v103 bounds];
    [v103 convertRect:0 toView:?];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = *&v8[v22];
    [v61 bounds];
    [v61 convertRect:0 toView:?];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;

    v108.origin.x = v63;
    v108.origin.y = v65;
    v108.size.width = v67;
    v108.size.height = v69;
    v70 = v65 + CGRectGetHeight(v108);
    [*&v8[v22] safeAreaInsets];
    v72 = v70 - v71;
    v109.origin.x = v54;
    v109.origin.y = v56;
    v109.size.width = v58;
    v109.size.height = v60;
    v73 = v72 - CGRectGetHeight(v109);
    v110.origin.x = v54;
    v110.origin.y = v56;
    v110.size.width = v58;
    v110.size.height = v60;
    Width = CGRectGetWidth(v110);
    v111.origin.x = v54;
    v111.origin.y = v56;
    v111.size.width = v58;
    v111.size.height = v60;
    Height = CGRectGetHeight(v111);
    v76 = &v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalCardFrame];
    *v76 = v54;
    v76[1] = v73;
    v76[2] = Width;
    v76[3] = Height;
    [*&v8[v22] frame];
    MinY = CGRectGetMinY(v112);
    [*&v8[v22] adjustedContentInset];
    v79 = v78;
    [*&v8[v22] frame];
    MaxY = CGRectGetMaxY(v113);
    [*&v8[v22] adjustedContentInset];
    v82 = v81;
    [*&v8[v22] frame];
    MinX = CGRectGetMinX(v114);
    [*&v8[v22] contentSize];
    v85 = v84;
    v86 = [v52 view];
    if (v86)
    {
      v87 = v86;
      [v86 convertRect:0 toView:{MinX, MinY + v79, v85, MaxY - v82 + 8.0 - (MinY + v79)}];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;

      v96 = &v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_originalVisibleScrollRect];
      *v96 = v89;
      v96[1] = v91;
      v96[2] = v93;
      v96[3] = v95;
      *&v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_scrollViewAdditionalContentHeight] = 0x4020000000000000;
      v97 = [v52 view];
      if (v97)
      {
        v98 = v97;
        v99 = [v97 window];

        if (v99)
        {
          v100 = [v99 snapshotViewAfterScreenUpdates:0];
        }

        else
        {
          v100 = 0;
        }

        v101 = *&v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_backgroundView];
        *&v33[OBJC_IVAR____TtC17SequoiaTranslator33DictionaryWordSelectionController_backgroundView] = v100;

        [v33 setModalPresentationStyle:0];
        [v52 presentViewController:v33 animated:0 completion:0];

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}