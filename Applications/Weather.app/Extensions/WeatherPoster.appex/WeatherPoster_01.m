uint64_t sub_10001B984(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001B9DC()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 16);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

uint64_t sub_10001BA34(uint64_t a1)
{
  v2 = type metadata accessor for PosterDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BB00()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 32);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

uint64_t sub_10001BB58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PosterData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001BBB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_unknownObjectRetain();
    sub_10001BD48(v5, a2);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a1;
    v8[4] = a2;
    v15[4] = sub_10001C048;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100011A98;
    v15[3] = &unk_10005EA38;
    v9 = _Block_copy(v15);
    swift_unknownObjectRetain();

    v10 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:5.0];
    _Block_release(v9);
    v11 = *(v2 + 24);
    *(v2 + 24) = v10;

    ObjectType = swift_getObjectType();
    v13 = (*(a2 + 8))(*(v2 + 16), ObjectType, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_10001BD48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(*(v2 + 16), ObjectType, a2);
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    [v5 invalidate];
    v5 = *(v2 + 24);
  }

  *(v2 + 24) = 0;
}

uint64_t sub_10001BDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v8 = sub_100049FCC();
    sub_100008F90(v8, qword_100068348);

    v9 = sub_100049FAC();
    v10 = sub_10004AB9C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      v13 = sub_100030C88(*(v7 + 16));
      v15 = sub_1000230EC(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Extended session for %{public}s timed out before its task was completed", v11, 0xCu);
      sub_100008FC8(v12);
    }

    sub_10001BD48(a3, a4);
  }

  return result;
}

uint64_t sub_10001BF74()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001BFD0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C008()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C06C()
{
  sub_10001C9A4();
  v0 = sub_10004ABAC();
  if (!v0)
  {
    return DeviceSupportsVFX();
  }

  v1 = v0;
  v2 = sub_10004A95C();
  v3 = [v1 stringForKey:v2];

  if (!v3)
  {
    return DeviceSupportsVFX();
  }

  v4 = sub_10004A98C();
  v6 = v5;

  v7 = v4 == 7890550 && v6 == 0xE300000000000000;
  if (v7 || (sub_10004AF3C() & 1) != 0)
  {

    return 1;
  }

  if (v4 == 1633905005 && v6 == 0xE400000000000000)
  {

    return 0;
  }

  v10 = sub_10004AF3C();

  result = 0;
  if ((v10 & 1) == 0)
  {
    return DeviceSupportsVFX();
  }

  return result;
}

uint64_t sub_10001C1AC()
{
  v0 = sub_10001C06C();
  [objc_opt_self() setSuppressEngagement:1];
  return v0 & 1;
}

uint64_t sub_10001C1F0(char a1)
{
  [objc_allocWithZone(type metadata accessor for PosterUpdater()) init];
  *(swift_allocObject() + 16) = a1;
  v2 = sub_100002D54(&qword_100063FE8, &qword_10004D170);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10004A27C();
  sub_10001CA1C(&qword_100063FF0);
  sub_100049F8C();
}

uint64_t sub_10001C2F0@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  v4 = sub_10004A28C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_10004A29C();
  *(swift_allocObject() + 16) = a1;
  v7 = sub_10004A25C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_10004A26C();
  v10 = sub_10001C438();

  *a2 = v10;
  return result;
}

uint64_t sub_10001C438()
{
  sub_100002D54(&qword_100063FF8, &unk_10004D1F0);
  v0 = *(sub_100049F5C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10004CFA0;
  sub_10004A28C();
  sub_10001C95C(&qword_100064000, &type metadata accessor for PRRenderingConfiguration);

  sub_100049F4C();
  sub_10004A25C();
  sub_10001C95C(&qword_100064008, &type metadata accessor for PREditingConfiguration);

  sub_100049F4C();
  return v3;
}

uint64_t sub_10001C5D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001C1AC();
  *a1 = result & 1;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001C694();
  sub_10001CA1C(&qword_100063FE0);
  sub_100049F6C();
  return 0;
}

unint64_t sub_10001C694()
{
  result = qword_100063FD8;
  if (!qword_100063FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherPosterExtension(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherPosterExtension(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10001C84CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10001C95C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001C9A4()
{
  result = qword_100063CB8;
  if (!qword_100063CB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063CB8);
  }

  return result;
}

uint64_t sub_10001CA1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(&qword_100063FE8, &qword_10004D170);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001CA74(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v9 = sub_100049FCC();
  v10 = sub_1000059BC(v9);
  v78 = v11;
  v79 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100005A34();
  v77 = v14 - v15;
  sub_100013EFC();
  __chkstk_darwin(v16);
  v76 = &v74 - v17;
  sub_100013EFC();
  __chkstk_darwin(v18);
  v75 = &v74 - v19;
  v20 = type metadata accessor for SimulationReason();
  v21 = sub_100005A50(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_100005A34();
  v26 = v24 - v25;
  v28 = __chkstk_darwin(v27);
  v30 = &v74 - v29;
  __chkstk_darwin(v28);
  sub_100020A60();
  __chkstk_darwin(v31);
  sub_100020A9C();
  __chkstk_darwin(v32);
  sub_100020A80();
  swift_beginAccess();
  v33 = *(v2 + 16);
  v80[2] = a1;

  v34 = sub_10001F6AC(sub_1000209F8, v80, v33);
  swift_beginAccess();
  v35 = *(v6 + 16);
  *(v6 + 16) = v34;

  sub_1000202A8(a1, v5);
  sub_10001E724(v4, v5);
  swift_endAccess();
  sub_10002030C(v4);
  if (a2)
  {
    if (*(v6 + 24))
    {
      v36 = *(v6 + 16);

      sub_10001DBAC(v37);

      v38 = v76;
      sub_100049F9C();
      sub_1000202A8(a1, v30);

      v39 = sub_100049FAC();
      v40 = sub_10004AB9C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v38;
        v42 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v42 = 136446466;
        sub_10001D970();
        v44 = v43;
        sub_10002030C(v30);
        v45 = sub_100020AC4();
        v47 = sub_1000230EC(v45, v44, v46);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2082;
        sub_10004AA6C();
        v49 = v48;

        v50 = sub_100020AC4();
        v52 = sub_1000230EC(v50, v49, v51);

        *(v42 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v39, v40, "VFX simulation for '%{public}s' started, and scene was already unfrozen; activeSimulations=%{public}s", v42, 0x16u);
        swift_arrayDestroy();
        sub_100013F58();
        sub_100013F58();

        (*(v78 + 8))(v41, v79);
      }

      else
      {

        sub_10002030C(v30);
        (*(v78 + 8))(v38, v79);
      }
    }

    else
    {

      v63 = v75;
      sub_100049F9C();
      sub_1000202A8(a1, v3);
      v64 = sub_100049FAC();
      v65 = sub_10004AB9C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = sub_100014030();
        v67 = sub_10001A07C();
        v81 = v67;
        *v66 = 136446210;
        sub_10001D970();
        v69 = v68;
        sub_10002030C(v3);
        v70 = sub_100020AC4();
        v72 = sub_1000230EC(v70, v69, v71);

        *(v66 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v64, v65, "VFX simulation for '%{public}s' started. Unfreezing the scene to start rendering.", v66, 0xCu);
        sub_100008FC8(v67);
        sub_100013F58();
        sub_100013F58();
      }

      else
      {

        sub_10002030C(v3);
      }

      (*(v78 + 8))(v63, v79);
      *(v6 + 24) = 1;
      sub_10004A3FC();
      v73 = sub_10004A42C();
      sub_10004A08C();
    }
  }

  else
  {
    v53 = v77;
    sub_100049F9C();
    sub_1000202A8(a1, v26);
    v54 = sub_100049FAC();
    v55 = sub_10004AB9C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = sub_100014030();
      v57 = sub_10001A07C();
      v81 = v57;
      *v56 = 136446210;
      sub_10001D970();
      v59 = v58;
      sub_10002030C(v26);
      v60 = sub_100020AC4();
      v62 = sub_1000230EC(v60, v59, v61);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "VFX simulation for '%{public}s' started; Failed to unfreeze scene because manager was nil.", v56, 0xCu);
      sub_100008FC8(v57);
      sub_100013F58();
      sub_100013F58();
    }

    else
    {

      sub_10002030C(v26);
    }

    (*(v78 + 8))(v53, v79);
  }
}

uint64_t sub_10001D088(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v5 = type metadata accessor for SimulationReason();
  v6 = sub_100005A50(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005A34();
  v77 = v9 - v10;
  sub_100013EFC();
  v12 = __chkstk_darwin(v11);
  v14 = &v75 - v13;
  __chkstk_darwin(v12);
  v16 = &v75 - v15;
  v17 = sub_100049FCC();
  v18 = sub_1000059BC(v17);
  v79 = v19;
  v80 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100005A34();
  v78 = v22 - v23;
  sub_100013EFC();
  __chkstk_darwin(v24);
  sub_100020A9C();
  __chkstk_darwin(v25);
  v27 = &v75 - v26;
  v28 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  v29 = sub_100005A50(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v75 - v32;
  swift_beginAccess();
  sub_1000200E8(a1, v33);
  swift_endAccess();
  sub_10000591C(v33, &qword_100063C20, &qword_10004D2C0);
  if (*(*(v2 + 16) + 16))
  {
    v34 = *(v2 + 16);

    sub_10001DBAC(v35);

    v36 = v78;
    sub_100049F9C();
    v37 = a1;
    v38 = v77;
    sub_1000202A8(v37, v77);

    v39 = sub_100049FAC();
    v40 = sub_10004AB9C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v41 = 136446466;
      sub_10001D970();
      v43 = v42;
      sub_10002030C(v38);
      v44 = sub_100020A90();
      v46 = sub_1000230EC(v44, v43, v45);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2082;
      sub_10004AA6C();
      v48 = v47;

      v49 = sub_100020A90();
      v51 = sub_1000230EC(v49, v48, v50);

      *(v41 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v39, v40, "VFX simulation for '%{public}s' ended; Remaining simulations = %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      sub_100013F58();
      sub_100013F58();
    }

    else
    {

      sub_10002030C(v38);
    }

    return (*(v79 + 8))(v36, v80);
  }

  else
  {
    v78 = v2;
    if (v76)
    {

      v52 = v27;
      sub_100049F9C();
      sub_1000202A8(a1, v16);
      v53 = sub_100049FAC();
      v54 = sub_10004AB9C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = sub_100014030();
        v56 = sub_10001A07C();
        v81 = v56;
        *v55 = 136446210;
        sub_10001D970();
        v58 = v57;
        sub_10002030C(v16);
        v59 = sub_100020A90();
        v61 = sub_1000230EC(v59, v58, v60);

        *(v55 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "VFX simulation for '%{public}s' ended; Freezing scene as no simulations remain.", v55, 0xCu);
        sub_100008FC8(v56);
        sub_100013F58();
        sub_100013F58();
      }

      else
      {

        sub_10002030C(v16);
      }

      (*(v79 + 8))(v52, v80);
      *(v78 + 24) = 0;
      v74 = sub_10004A42C();
      sub_10004A08C();

      sub_10004A3BC();
    }

    else
    {
      v63 = v3;
      sub_100049F9C();
      v64 = v14;
      sub_1000202A8(a1, v14);
      v65 = sub_100049FAC();
      v66 = sub_10004AB7C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = sub_100014030();
        v68 = sub_10001A07C();
        v81 = v68;
        *v67 = 136446210;
        sub_10001D970();
        v70 = v69;
        sub_10002030C(v64);
        v71 = sub_100020A90();
        v73 = sub_1000230EC(v71, v70, v72);

        *(v67 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v65, v66, "VFX simulation for '%{public}s' ended; Failed to freeze scene because manager was nil.", v67, 0xCu);
        sub_100008FC8(v68);
        sub_100013F58();
        sub_100013F58();
      }

      else
      {

        sub_10002030C(v14);
      }

      return (*(v79 + 8))(v63, v80);
    }
  }
}

uint64_t sub_10001D648()
{
  *(v0 + 24) = 0;
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = &_swiftEmptySetSingleton;
}

uint64_t sub_10001D690(uint64_t a1)
{
  v5 = type metadata accessor for SimulationReason();
  v6 = sub_100005A24(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005A34();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_100020A60();
  __chkstk_darwin(v13);
  sub_100020A80();
  v14 = sub_100002D54(&qword_100064198, &unk_10004D2D8);
  v15 = sub_100005A50(v14);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v38 - v19;
  v21 = *(v18 + 56);
  sub_1000202A8(v1, &v38 - v19);
  sub_1000202A8(a1, &v20[v21]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000202A8(v20, v2);
      sub_100020A74();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = sub_100049BAC();
      sub_100005A24(v27);
      v29 = *(v33 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = sub_100020A74();
        v29(v34);
        v31 = v2;
        goto LABEL_10;
      }

      v35 = v2;
      goto LABEL_13;
    case 2u:
      sub_1000202A8(v20, v11);
      sub_100020A74();
      v26 = swift_getEnumCaseMultiPayload();
      v27 = sub_100049BAC();
      sub_100005A24(v27);
      v29 = *(v28 + 8);
      if (v26 == 2)
      {
        v30 = sub_100020A74();
        v29(v30);
        v31 = v11;
LABEL_10:
        (v29)(v31, v27);
        goto LABEL_16;
      }

      v35 = v11;
LABEL_13:
      (v29)(v35, v27);
      goto LABEL_14;
    case 3u:
      sub_100020A74();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    default:
      sub_1000202A8(v20, v3);
      sub_100020A74();
      v22 = swift_getEnumCaseMultiPayload();
      v23 = sub_100049BAC();
      sub_100005A24(v23);
      v25 = *(v24 + 8);
      if (v22)
      {
        v25(v3, v23);
LABEL_14:
        sub_10000591C(v20, &qword_100064198, &unk_10004D2D8);
        return 0;
      }

      else
      {
        v37 = sub_100020A74();
        (v25)(v37);
        v25(v3, v23);
LABEL_16:
        sub_10002030C(v20);
        return 1;
      }
  }
}

uint64_t sub_10001D970()
{
  v1 = sub_100049BAC();
  v2 = sub_1000059BC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000059D0();
  v9 = v8 - v7;
  v10 = type metadata accessor for SimulationReason();
  v11 = sub_100005A24(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_1000059D0();
  sub_1000202A8(v0, v15 - v14);
  v16 = 0x6F6974616D696E61;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = sub_100020A34(v4);
      v21(v20);
      v19 = 0x6B636F6C6E75;
      goto LABEL_4;
    case 2u:
      v22 = sub_100020A34(v4);
      v23(v22);
      v27 = 0x6E6F697461746F72;
      goto LABEL_6;
    case 3u:
      return v16;
    default:
      v17 = sub_100020A34(v4);
      v18(v17);
      v19 = 0x7265646E6572;
LABEL_4:
      v27 = v19 & 0xFFFFFFFFFFFFLL | 0x28000000000000;
LABEL_6:
      sub_100020A48();
      sub_1000209B0(v24, v25);
      v28._countAndFlagsBits = sub_10004AF1C();
      sub_10004A9DC(v28);

      v29._countAndFlagsBits = 41;
      v29._object = 0xE100000000000000;
      sub_10004A9DC(v29);
      v16 = v27;
      (*(v4 + 8))(v9, v1);
      return v16;
  }
}

void *sub_10001DBAC(uint64_t a1)
{
  v2 = type metadata accessor for SimulationReason();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000059D0();
  v34 = v5 - v4;
  v6 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    sub_1000207D4(0, v6, 0);
    v10 = sub_1000208FC(a1);
    result = &_swiftEmptyArrayStorage;
    v11 = 0;
    v38 = a1 + 56;
    v31 = a1 + 64;
    v32 = v6;
    v33 = a1;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v38 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v37 = v9;
        v36 = v8;
        v13 = result;
        sub_1000202A8(*(a1 + 48) + *(v35 + 72) * v10, v34);
        v14 = sub_10001D970();
        v16 = v15;
        sub_10002030C(v34);
        result = v13;
        v39 = v13;
        v17 = v13[2];
        v18 = result[3];
        if (v17 >= v18 >> 1)
        {
          sub_1000207D4((v18 > 1), v17 + 1, 1);
          result = v39;
        }

        result[2] = v17 + 1;
        v19 = &result[2 * v17];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        if (v37)
        {
          goto LABEL_29;
        }

        a1 = v33;
        v20 = 1 << *(v33 + 32);
        if (v10 >= v20)
        {
          goto LABEL_26;
        }

        v21 = *(v38 + 8 * v12);
        if ((v21 & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v33 + 36) != v36)
        {
          goto LABEL_28;
        }

        v22 = v21 & (-2 << (v10 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v23 = v32;
        }

        else
        {
          v24 = v12 << 6;
          v25 = v12 + 1;
          v23 = v32;
          v26 = (v31 + 8 * v12);
          while (v25 < (v20 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              v29 = result;
              sub_10002093C(v10, v36, 0);
              result = v29;
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_19;
            }
          }

          v30 = result;
          sub_10002093C(v10, v36, 0);
          result = v30;
        }

LABEL_19:
        if (++v11 == v23)
        {
          return result;
        }

        v9 = 0;
        v8 = *(v33 + 36);
        v10 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DE98()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t type metadata accessor for SimulationReason()
{
  result = qword_100064130;
  if (!qword_100064130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001DF48()
{
  sub_10001DFAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10001DFAC()
{
  if (!qword_100064140)
  {
    v0 = sub_100049BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_100064140);
    }
  }
}

uint64_t sub_10001E03C(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v5 = sub_100049BAC();
  v6 = sub_1000059BC(v5);
  v48 = v7;
  v49 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100005A34();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_100020A60();
  __chkstk_darwin(v14);
  sub_100020A80();
  v15 = type metadata accessor for SimulationReason();
  v16 = sub_100005A24(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100005A34();
  v21 = v19 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  v28 = sub_100002D54(&qword_100064198, &unk_10004D2D8);
  v29 = sub_100005A50(v28);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v47 - v33;
  v35 = *(v32 + 56);
  sub_1000202A8(a1, &v47 - v33);
  sub_1000202A8(v50, &v34[v35]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000202A8(v34, v25);
      if (sub_100020AD0() == 1)
      {
        v41 = v48;
        v40 = v49;
        (*(v48 + 32))(v2, &v34[v35], v49);
        v38 = sub_100049B8C();
        v42 = *(v41 + 8);
        v42(v2, v40);
        v42(v25, v40);
        goto LABEL_14;
      }

      v21 = v25;
      goto LABEL_11;
    case 2u:
      sub_1000202A8(v34, v21);
      if (sub_100020AD0() != 2)
      {
        goto LABEL_11;
      }

      v37 = v48;
      v36 = v49;
      (*(v48 + 32))(v12, &v34[v35], v49);
      v38 = sub_100049B8C();
      v39 = *(v37 + 8);
      v39(v12, v36);
      v39(v21, v36);
      goto LABEL_14;
    case 3u:
      if (sub_100020AD0() != 3)
      {
        goto LABEL_12;
      }

      sub_10002030C(v34);
      v38 = 1;
      return v38 & 1;
    default:
      sub_1000202A8(v34, v27);
      if (sub_100020AD0())
      {
        v21 = v27;
LABEL_11:
        (*(v48 + 8))(v21, v49);
LABEL_12:
        sub_10000591C(v34, &qword_100064198, &unk_10004D2D8);
        v38 = 0;
      }

      else
      {
        v44 = v48;
        v43 = v49;
        (*(v48 + 32))(v3, &v34[v35], v49);
        v38 = sub_100049B8C();
        v45 = *(v44 + 8);
        v45(v3, v43);
        v45(v27, v43);
LABEL_14:
        sub_10002030C(v34);
      }

      return v38 & 1;
  }
}

void sub_10001E40C()
{
  v1 = sub_100049BAC();
  v2 = sub_1000059BC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000059D0();
  v9 = v8 - v7;
  v10 = type metadata accessor for SimulationReason();
  v11 = sub_100005A24(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_1000059D0();
  sub_1000202A8(v0, v15 - v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = sub_100020A34(v4);
      v22(v21);
      v18 = 2;
      goto LABEL_6;
    case 2u:
      v19 = sub_100020A34(v4);
      v20(v19);
      v18 = 3;
      goto LABEL_6;
    case 3u:
      sub_10004AFFC(0);
      return;
    default:
      v16 = sub_100020A34(v4);
      v17(v16);
      v18 = 1;
LABEL_6:
      sub_10004AFFC(v18);
      sub_100020A48();
      sub_1000209B0(v23, v24);
      sub_10004A93C();
      (*(v4 + 8))(v9, v1);
      return;
  }
}

Swift::Int sub_10001E5E8()
{
  sub_10004AFEC();
  sub_10001E40C();
  return sub_10004B00C();
}

Swift::Int sub_10001E634()
{
  sub_10004AFEC();
  sub_10001E40C();
  return sub_10004B00C();
}

uint64_t sub_10001E670(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (v6 = type metadata accessor for PosterDataModel.DataPoint(0), result = sub_100005A24(v6), a1 + *(v8 + 72) * a2 <= a3))
  {
    type metadata accessor for PosterDataModel.DataPoint(0);
    sub_100020AB0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100020AB0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_10001E724(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = type metadata accessor for SimulationReason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10004AFEC();
  v11 = a2;
  sub_10001E40C();
  v12 = sub_10004B00C();
  v13 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v14 = v12 & v13;
    v15 = (1 << (v12 & v13)) & *(v9 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      v18 = v24;
      v19 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000202A8(v11, v8);
      v26 = *v18;
      sub_10001EDC4(v8, v14, isUniquelyReferenced_nonNull_native);
      v21 = v25;
      *v18 = v26;
      sub_10002094C(v11, v21);
      return v15 == 0;
    }

    v16 = *(v5 + 72) * v14;
    sub_1000202A8(*(v9 + 48) + v16, v8);
    v17 = sub_10001E03C(v8, v11);
    sub_10002030C(v8);
    if (v17)
    {
      break;
    }

    v12 = v14 + 1;
  }

  sub_10002030C(v11);
  sub_1000202A8(*(v9 + 48) + v16, v25);
  return v15 == 0;
}

uint64_t sub_10001E8E8(uint64_t a1)
{
  v2 = v1;
  v51 = sub_100049BAC();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SimulationReason();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  v9 = __chkstk_darwin(v7);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  sub_100002D54(&qword_100064190, &qword_10004D2D0);
  v15 = sub_10004AD3C();
  v16 = v15;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = (v13 + 56);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v47 = (v4 + 32);
    v48 = v12;
    v45 = v2;
    v46 = (v4 + 8);
    v23 = v15 + 56;
    v49 = v13;
    if (v21)
    {
LABEL_8:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      goto LABEL_14;
    }

LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        JUMPOUT(0x10001EDB4);
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
LABEL_14:
        v27 = *(v52 + 72);
        sub_10002094C(*(v13 + 48) + v27 * (v24 | (v17 << 6)), v12);
        v28 = *(v16 + 40);
        sub_10004AFEC();
        sub_1000202A8(v12, v54);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v30 = v50;
            v29 = v51;
            (*v47)(v50, v54, v51);
            v31 = 2;
            goto LABEL_19;
          case 2u:
            v30 = v50;
            v29 = v51;
            (*v47)(v50, v54, v51);
            v31 = 3;
            goto LABEL_19;
          case 3u:
            sub_10004AFFC(0);
            goto LABEL_20;
          default:
            v30 = v50;
            v29 = v51;
            (*v47)(v50, v54, v51);
            v31 = 1;
LABEL_19:
            sub_10004AFFC(v31);
            sub_1000209B0(&qword_100064188, &type metadata accessor for UUID);
            sub_10004A93C();
            v32 = v30;
            v33 = v29;
            v12 = v48;
            v13 = v49;
            (*v46)(v32, v33);
LABEL_20:
            v34 = sub_10004B00C();
            v35 = -1 << *(v16 + 32);
            v36 = v34 & ~v35;
            v37 = v36 >> 6;
            if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) != 0)
            {
              v38 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v39 = 0;
              v40 = (63 - v35) >> 6;
              do
              {
                if (++v37 == v40 && (v39 & 1) != 0)
                {
                  goto LABEL_37;
                }

                v41 = v37 == v40;
                if (v37 == v40)
                {
                  v37 = 0;
                }

                v39 |= v41;
                v42 = *(v23 + 8 * v37);
              }

              while (v42 == -1);
              v38 = __clz(__rbit64(~v42)) + (v37 << 6);
            }

            *(v23 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
            sub_10002094C(v12, *(v16 + 48) + v38 * v27);
            ++*(v16 + 16);
            if (!v21)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
        }
      }
    }

    v43 = 1 << *(v13 + 32);
    if (v43 >= 64)
    {
      sub_10001EFB0(0, (v43 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v43;
    }

    v2 = v45;
    *(v13 + 16) = 0;
  }

  *v2 = v16;
  return result;
}

uint64_t sub_10001EDC4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SimulationReason();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10001E8E8(v13 + 1);
      goto LABEL_10;
    }

    if (v14 <= v13)
    {
      sub_10001F1F4(v13 + 1);
LABEL_10:
      v20 = *v4;
      v21 = *(*v4 + 40);
      sub_10004AFEC();
      sub_10001E40C();
      v22 = sub_10004B00C();
      v23 = ~(-1 << *(v20 + 32));
      while (1)
      {
        a2 = v22 & v23;
        if (((*(v20 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1000202A8(*(v20 + 48) + *(v9 + 72) * a2, v12);
        v24 = sub_10001E03C(v12, a1);
        sub_10002030C(v12);
        if (v24)
        {
          goto LABEL_15;
        }

        v22 = a2 + 1;
      }
    }

    sub_10001F014();
  }

LABEL_7:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10002094C(a1, *(v15 + 48) + *(v9 + 72) * a2);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_15:
    result = sub_10004AF7C();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_10001EFB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10004D200;
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

void *sub_10001F014()
{
  v1 = v0;
  v2 = type metadata accessor for SimulationReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002D54(&qword_100064190, &qword_10004D2D0);
  v7 = *v0;
  v8 = sub_10004AD2C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1000202A8(*(v7 + 48) + v22, v6);
        result = sub_10002094C(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_10001F1F4(uint64_t a1)
{
  v2 = v1;
  v54 = sub_100049BAC();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SimulationReason();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v48 - v12;
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  sub_100002D54(&qword_100064190, &qword_10004D2D0);
  v15 = sub_10004AD3C();
  v16 = v15;
  if (*(v13 + 16))
  {
    v48 = v2;
    v17 = 0;
    v18 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v49 = (v4 + 8);
    v50 = (v4 + 32);
    v23 = v15 + 56;
    v51 = v13;
    v52 = v11;
    if (v21)
    {
LABEL_8:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      goto LABEL_14;
    }

LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        JUMPOUT(0x10001F69CLL);
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = *(v18 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
LABEL_14:
        v27 = *(v55 + 72);
        v28 = v57;
        sub_1000202A8(*(v13 + 48) + v27 * (v24 | (v17 << 6)), v57);
        v29 = *(v16 + 40);
        sub_10004AFEC();
        sub_1000202A8(v28, v11);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v30 = v53;
            v35 = v11;
            v32 = v54;
            (*v50)(v53, v35, v54);
            v33 = 2;
            goto LABEL_19;
          case 2u:
            v30 = v53;
            v34 = v11;
            v32 = v54;
            (*v50)(v53, v34, v54);
            v33 = 3;
            goto LABEL_19;
          case 3u:
            sub_10004AFFC(0);
            goto LABEL_20;
          default:
            v30 = v53;
            v31 = v11;
            v32 = v54;
            (*v50)(v53, v31, v54);
            v33 = 1;
LABEL_19:
            sub_10004AFFC(v33);
            sub_1000209B0(&qword_100064188, &type metadata accessor for UUID);
            sub_10004A93C();
            v36 = v30;
            v37 = v32;
            v13 = v51;
            v11 = v52;
            (*v49)(v36, v37);
LABEL_20:
            v38 = sub_10004B00C();
            v39 = -1 << *(v16 + 32);
            v40 = v38 & ~v39;
            v41 = v40 >> 6;
            if (((-1 << v40) & ~*(v23 + 8 * (v40 >> 6))) != 0)
            {
              v42 = __clz(__rbit64((-1 << v40) & ~*(v23 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v43 = 0;
              v44 = (63 - v39) >> 6;
              do
              {
                if (++v41 == v44 && (v43 & 1) != 0)
                {
                  goto LABEL_35;
                }

                v45 = v41 == v44;
                if (v41 == v44)
                {
                  v41 = 0;
                }

                v43 |= v45;
                v46 = *(v23 + 8 * v41);
              }

              while (v46 == -1);
              v42 = __clz(__rbit64(~v46)) + (v41 << 6);
            }

            *(v23 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
            sub_10002094C(v57, *(v16 + 48) + v42 * v27);
            ++*(v16 + 16);
            if (!v21)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
        }
      }
    }

    v2 = v48;
  }

  else
  {
  }

  *v2 = v16;
  return result;
}

unint64_t *sub_10001F6AC(uint64_t (*a1)(char *), unint64_t *a2, uint64_t a3)
{
  v31 = a1;
  v6 = type metadata accessor for SimulationReason();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v28 = &v26;
    __chkstk_darwin(v8);
    v26 = v11;
    v27 = (&v26 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_10001EFB0(0, v11, v27);
    v29 = 0;
    v11 = 0;
    v32 = a3;
    v14 = *(a3 + 56);
    a3 += 56;
    v13 = v14;
    v15 = 1 << *(a3 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v12 = v16 & v13;
    v17 = (v15 + 63) >> 6;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v21 = v18 | (v11 << 6);
      sub_1000202A8(*(v32 + 48) + *(v30 + 72) * v21, v10);
      v22 = v31(v10);
      sub_10002030C(v10);
      if (v3)
      {

        swift_willThrow();
        return a2;
      }

      if (v22)
      {
        *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_10001FC38(v27, v26, v29, v32);
        }
      }
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        return sub_10001FC38(v27, v26, v29, v32);
      }

      v20 = *(a3 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  a2 = sub_10001FBA8(v25, v11, a3, v31);

  return a2;
}

void *sub_10001F9B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v6 = type metadata accessor for SimulationReason();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v11 = 0;
  v32 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    sub_1000202A8(*(v32 + 48) + *(v30 + 72) * v22, v10);
    v23 = v31(v10);
    result = sub_10002030C(v10);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v28 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v25 = v32;

        return sub_10001FC38(v28, v27, v29, v25);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10001FBA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10001F9B8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_10001FC38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = sub_100049BAC();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SimulationReason();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v51 = &v42 - v15;
  if (a3)
  {
    if (*(a4 + 16) == a3)
    {
      return a4;
    }

    else
    {
      v46 = v14;
      sub_100002D54(&qword_100064190, &qword_10004D2D0);
      v17 = sub_10004AD4C();
      v16 = v17;
      if (a2 < 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = *a1;
      }

      v19 = 0;
      v42 = (v8 + 8);
      v43 = (v8 + 32);
      v20 = v17 + 56;
      v44 = v11;
      v45 = a4;
      v21 = v46;
      while (2)
      {
        if (v18)
        {
          v22 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
LABEL_16:
          v25 = *(a4 + 48);
          v50 = *(v49 + 72);
          v26 = v51;
          sub_1000202A8(v25 + v50 * (v22 | (v19 << 6)), v51);
          v27 = *(v16 + 40);
          sub_10004AFEC();
          sub_1000202A8(v26, v21);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v28 = v47;
              v29 = v48;
              (*v43)(v47, v21, v48);
              v30 = 2;
              goto LABEL_21;
            case 2u:
              v28 = v47;
              v29 = v48;
              (*v43)(v47, v21, v48);
              v30 = 3;
              goto LABEL_21;
            case 3u:
              sub_10004AFFC(0);
              goto LABEL_22;
            default:
              v28 = v47;
              v29 = v48;
              (*v43)(v47, v21, v48);
              v30 = 1;
LABEL_21:
              sub_10004AFFC(v30);
              sub_1000209B0(&qword_100064188, &type metadata accessor for UUID);
              sub_10004A93C();
              (*v42)(v28, v29);
LABEL_22:
              v31 = sub_10004B00C();
              v32 = -1 << *(v16 + 32);
              v33 = v31 & ~v32;
              v34 = v33 >> 6;
              if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) != 0)
              {
                v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
                v21 = v46;
              }

              else
              {
                v36 = 0;
                v37 = (63 - v32) >> 6;
                v21 = v46;
                do
                {
                  if (++v34 == v37 && (v36 & 1) != 0)
                  {
                    goto LABEL_36;
                  }

                  v38 = v34 == v37;
                  if (v34 == v37)
                  {
                    v34 = 0;
                  }

                  v36 |= v38;
                  v39 = *(v20 + 8 * v34);
                }

                while (v39 == -1);
                v35 = __clz(__rbit64(~v39)) + (v34 << 6);
              }

              *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
              sub_10002094C(v51, *(v16 + 48) + v35 * v50);
              ++*(v16 + 16);
              if (__OFSUB__(a3--, 1))
              {
                goto LABEL_37;
              }

              a4 = v45;
              if (!a3)
              {
                goto LABEL_33;
              }

              continue;
          }
        }

        break;
      }

      v23 = v19;
      while (1)
      {
        v19 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          JUMPOUT(0x1000200D8);
        }

        if (v19 >= a2)
        {
          break;
        }

        v24 = a1[v19];
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v18 = (v24 - 1) & v24;
          goto LABEL_16;
        }
      }

LABEL_33:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v16;
}

uint64_t sub_1000200E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v23 = type metadata accessor for SimulationReason();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10004AFEC();
  sub_10001E40C();
  v11 = sub_10004B00C();
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v24;
      return sub_100004544(v17, v16, 1, v23);
    }

    v14 = *(v5 + 72) * v13;
    sub_1000202A8(*(v9 + 48) + v14, v8);
    v15 = sub_10001E03C(v8, a1);
    sub_10002030C(v8);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  v25 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10001F014();
    v20 = v25;
  }

  v17 = v24;
  sub_10002094C(*(v20 + 48) + v14, v24);
  sub_100020368(v13);
  v16 = 0;
  *v3 = v25;
  return sub_100004544(v17, v16, 1, v23);
}

uint64_t sub_1000202A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulationReason();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002030C(uint64_t a1)
{
  v2 = type metadata accessor for SimulationReason();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020368(int64_t a1)
{
  v47 = sub_100049BAC();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SimulationReason();
  v6 = *(*(v48 - 8) + 64);
  v7 = __chkstk_darwin(v48);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v13 = &v41 - v12;
  v14 = *v1;
  v15 = *v1 + 56;
  v16 = -1 << *(*v1 + 32);
  v17 = (a1 + 1) & ~v16;
  if (((1 << v17) & *(v15 + 8 * (v17 >> 6))) != 0)
  {
    v45 = v3;
    v18 = v11;
    v19 = ~v16;

    v20 = sub_10004AD1C();
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) != 0)
    {
      v21 = (v20 + 1) & v19;
      v49 = *(v18 + 72);
      v42 = (v45 + 8);
      v43 = (v45 + 32);
      v44 = v19;
      v45 = v15;
      while (2)
      {
        v22 = v49 * v17;
        sub_1000202A8(*(v14 + 48) + v49 * v17, v13);
        v23 = *(v14 + 40);
        sub_10004AFEC();
        sub_1000202A8(v13, v9);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v24 = v46;
            v25 = v47;
            (*v43)(v46, v9, v47);
            v26 = 2;
            goto LABEL_9;
          case 2u:
            v24 = v46;
            v25 = v47;
            (*v43)(v46, v9, v47);
            v26 = 3;
            goto LABEL_9;
          case 3u:
            sub_10004AFFC(0);
            goto LABEL_10;
          default:
            v24 = v46;
            v25 = v47;
            (*v43)(v46, v9, v47);
            v26 = 1;
LABEL_9:
            sub_10004AFFC(v26);
            sub_1000209B0(&qword_100064188, &type metadata accessor for UUID);
            sub_10004A93C();
            v27 = v24;
            v28 = v25;
            v19 = v44;
            v15 = v45;
            (*v42)(v27, v28);
LABEL_10:
            v29 = sub_10004B00C();
            sub_10002030C(v13);
            v30 = v29 & v19;
            if (a1 >= v21)
            {
              if (v30 < v21 || a1 < v30)
              {
                goto LABEL_30;
              }
            }

            else if (v30 < v21 && a1 < v30)
            {
              goto LABEL_30;
            }

            v33 = *(v14 + 48);
            v34 = v49 * a1;
            v35 = v33 + v49 * a1;
            v36 = v33 + v22 + v49;
            if (v49 * a1 < v22 || v35 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              a1 = v17;
              if (v34 == v22)
              {
                goto LABEL_30;
              }

              swift_arrayInitWithTakeBackToFront();
            }

            a1 = v17;
LABEL_30:
            v17 = (v17 + 1) & v19;
            if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v38 = *(v14 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
    JUMPOUT(0x1000207C4);
  }

  *(v14 + 16) = v40;
  ++*(v14 + 36);
  return result;
}

char *sub_1000207D4(char *a1, int64_t a2, char a3)
{
  result = sub_1000207F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000207F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D54(&qword_100064180, &qword_10004D2C8);
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

uint64_t sub_1000208FC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_10004AD0C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10002093C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10002094C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulationReason();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000209B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020AD0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100020AE8(uint64_t a1, char a2)
{
  sub_100030C88(a2);
  sub_10004A9CC();
}

uint64_t sub_100020B3C()
{
  sub_10004A9CC();
}

uint64_t sub_100020BAC()
{
  sub_10004A9CC();
}

uint64_t sub_100020CD8()
{
  sub_10004A9CC();
}

uint64_t sub_100020E2C()
{
  sub_10004A9CC();
}

uint64_t sub_100020EFC()
{
  sub_10004A9CC();
}

uint64_t sub_100020F5C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1000241C0();
  }

  sub_10004A9CC();
}

Swift::Int sub_100021000()
{
  sub_100024234();
  if (!v0)
  {
    sub_1000241C0();
  }

  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_100021084()
{
  sub_100024234();
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_1000210F0()
{
  sub_100024234();
  sub_100020E2C();
  return sub_10004B00C();
}

Swift::Int sub_10002115C()
{
  sub_100024234();
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_1000211F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_10004AFEC();
  a3(a2);
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_100021258(uint64_t a1, Swift::UInt a2)
{
  sub_10004AFEC();
  sub_10004AFFC(a2);
  return sub_10004B00C();
}

id PosterUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PosterUpdater.updateDescriptors(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10002415C();
}

uint64_t sub_1000212E4()
{
  v89 = v0;
  if (qword_1000634A0 != -1)
  {
    sub_10002413C();
  }

  v1 = sub_100049FCC();
  v2 = sub_100008F90(v1, qword_100068390);
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received request to update descriptors", v5, 2u);
    sub_100013F58();
  }

  v6 = v0[2];

  v7 = 0;
  v8 = 0;
  v9 = 0x800000010004E720;
  *&v10 = 136446466;
  v83 = v10;
  v86 = v6;
  v87 = _swiftEmptyArrayStorage;
  v85 = 0x800000010004E720;
  v82 = v2;
  do
  {
    v11 = v7;
    v12 = &off_10005DD58 + 2 * v8;
    v14 = v12[4];
    v13 = v12[5];
    v15 = *(v6 + 16);

    if (v15)
    {
      v16 = v0[2];
      v17 = sub_1000241A8();
      v19 = sub_1000236E4(v17, v18);
      if (v20)
      {
        v21 = *(*(v6 + 56) + 8 * v19);
        v22 = sub_100021800();
        if ((v23 & 1) == 0 && v22 == 3)
        {
          v24 = v0[3];

          v25 = v24;
          v26 = sub_100049FAC();
          v27 = sub_10004AB9C();

          v28 = os_log_type_enabled(v26, v27);
          v29 = v0[3];
          if (v28)
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v88 = v31;
            *v30 = v83;
            v32 = sub_1000241A8();
            v35 = sub_1000230EC(v32, v33, v34);

            *(v30 + 4) = v35;
            *(v30 + 12) = 2050;
            *(v30 + 14) = 3;

            _os_log_impl(&_mh_execute_header, v26, v27, "Reusing current descriptor with identifier=%{public}s version=%{public}ld", v30, 0x16u);
            sub_100008FC8(v31);
            v6 = v86;
            sub_100013F58();
            v9 = v85;
            sub_100013F58();
          }

          else
          {
          }

          v61 = v21;
          v62 = sub_10004AA3C();
          sub_1000241FC(v62, v63, v64, v65, v66, v67, v68, v69, v81, v82, v83, *(&v83 + 1), v84, v85, v86, v87);
          if (v60)
          {
            sub_1000241D8(v70);
          }

          sub_10004AA8C();

          goto LABEL_24;
        }
      }
    }

    v36 = v0[3];

    v37 = v36;
    v38 = sub_100049FAC();
    v39 = sub_10004AB9C();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[3];
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v88 = v43;
      *v42 = v83;
      v44 = sub_1000241A8();
      *(v42 + 4) = sub_1000230EC(v44, v45, v46);
      *(v42 + 12) = 2050;
      *(v42 + 14) = 3;

      _os_log_impl(&_mh_execute_header, v38, v39, "Creating new descriptor with identifier=%{public}s version=%{public}ld", v42, 0x16u);
      sub_100008FC8(v43);
      v9 = v85;
      sub_100013F58();
      v6 = v86;
      sub_100013F58();
    }

    else
    {
    }

    if (v14 != 0xD000000000000014 || v9 != v13)
    {
      sub_1000241A8();
      sub_10004AF3C();
    }

    v48 = sub_1000241A8();
    sub_1000220E4(v48, v49, v50);

    v51 = sub_10004AA3C();
    sub_1000241FC(v51, v52, v53, v54, v55, v56, v57, v58, v81, v82, v83, *(&v83 + 1), v84, v85, v86, v87);
    if (v60)
    {
      sub_1000241D8(v59);
    }

    sub_10004AA8C();
LABEL_24:
    v7 = 1;
    v8 = 1;
  }

  while ((v11 & 1) == 0);
  v71 = sub_100049FAC();
  v72 = sub_10004AB9C();
  if (os_log_type_enabled(v71, v72))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v88 = v75;
    *v74 = 136446210;
    v76 = sub_10004AA6C();
    v78 = sub_1000230EC(v76, v77, &v88);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v71, v72, "Returning descriptors for %{public}s", v74, 0xCu);
    sub_100008FC8(v75);
    sub_100013F58();
    sub_100013F58();
  }

  v79 = v0[1];

  return v79(v87);
}

uint64_t sub_100021800()
{
  v1 = sub_10004A95C();
  v2 = [v0 objectForUserInfoKey:v1];

  if (v2)
  {
    sub_10004ACEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100023F18(v7, &qword_100064240, &qword_10004D0B8);
  }

  return 0;
}

uint64_t sub_100021914(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_100013820(0, &qword_100064238, PRPosterDescriptor_ptr);
  v5 = sub_10004A8FC();
  v3[5] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_100021A10;

  return PosterUpdater.updateDescriptors(_:)(v5);
}

uint64_t sub_100021A10()
{
  sub_1000241B4();
  v2 = v0;
  sub_1000097FC();
  v4 = v3;
  v5 = v3[6];
  v6 = v3[5];
  v7 = v3[2];
  v8 = *v1;
  sub_100009570();
  *v9 = v8;

  if (v2)
  {
    v10 = sub_1000499FC();

    isa = 0;
    v12 = v10;
  }

  else
  {
    v13 = v4[4];
    isa = sub_10004AA4C().super.isa;

    v10 = 0;
    v12 = isa;
  }

  v14 = v4[3];
  (v14)[2](v14, isa, v10);

  _Block_release(v14);
  sub_100009748();

  return v15();
}

uint64_t sub_100021BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_10004AB0C();
  sub_100004544(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_10004D340;
  v10[5] = v9;
  sub_100022E20(0, 0, v7, &unk_10004D350, v10);
}

uint64_t sub_100021CCC()
{
  sub_1000241B4();
  if (qword_1000634A0 != -1)
  {
    sub_10002413C();
  }

  v1 = sub_100049FCC();
  sub_100008F90(v1, qword_100068390);
  v2 = sub_100049FAC();
  v3 = sub_10004AB9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received request to update configuration", v4, 2u);
    sub_100013F58();
  }

  v5 = *(v0 + 16);

  sub_100009748();
  v10 = v6;
  v7 = v5;
  v8 = *(v0 + 16);

  return v10(v8);
}

uint64_t sub_100021DF8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_100024210();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_100021BA8(a6, v10);
}

uint64_t sub_100021E78(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100021F38;

  return PosterUpdater.updateConfiguration(_:)(v6);
}

uint64_t sub_100021F38()
{
  sub_1000241B4();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;
  sub_100009570();
  *v10 = v9;

  v11 = *(v5 + 32);
  if (v2)
  {
    v12 = sub_1000499FC();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 32), v4, 0);
    _Block_release(v11);
  }

  v13 = *(v9 + 8);

  return v13();
}

id sub_1000220E4(uint64_t a1, unint64_t a2, char a3)
{
  sub_100013820(0, &unk_100064250, PRMutablePosterDescriptor_ptr);

  v99 = a1;
  v5 = sub_10002295C();
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  sub_100024210();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10004D2F0;
  *(v6 + 32) = [objc_opt_self() vibrantMaterialColor];
  sub_100013820(0, &qword_100064260, PRPosterColor_ptr);
  isa = sub_10004AA4C().super.isa;

  v8 = sub_100024228();
  [v8 v9];

  sub_100024210();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10004D2F0;
  *(v10 + 32) = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierSoft];
  sub_100013820(0, &qword_100064268, PRTimeFontConfiguration_ptr);
  v11 = sub_10004AA4C().super.isa;

  v12 = sub_100024228();
  [v12 v13];

  v14 = sub_10004AB5C().super.super.isa;
  v15 = sub_10004A95C();
  [v5 setObject:v14 forUserInfoKey:v15];

  if (sub_10004A1CC())
  {
    sub_100013820(0, &qword_100064278, PRPosterDescriptorGalleryAssetLookupInfo_ptr);
    v16 = sub_1000229C0();
    v17 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v16];
    v18 = sub_100024228();
    [v18 v19];
  }

  v101 = v5;
  v20 = [objc_allocWithZone(type metadata accessor for WeatherIntent()) init];
  type metadata accessor for WeatherLocation();
  if (qword_100063468 != -1)
  {
    swift_once();
  }

  v102 = v20;
  v21 = static WeatherLocation.currentLocationID;
  v22 = *algn_1000682E8;
  v23 = qword_100063460;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1000682D0;
  v94._countAndFlagsBits = 0x800000010004F110;
  v104._countAndFlagsBits = 0x7461636F4C20794DLL;
  v104._object = 0xEB000000006E6F69;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v25.super.isa = v24;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  sub_10004990C(v104, v105, v25, v106, v94);

  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = sub_100022AD0(v21, v22);
  [v102 setLocation:v27];

  v28 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
  [v28 setHero:a3 & 1];
  [v28 setAllowsSystemSuggestedComplications:0];
  [v28 setFeaturedConfidenceLevel:1];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10004C280;
  v30 = INIntentWithTypedIntent();
  v31 = objc_allocWithZone(ATXComplication);
  *(v29 + 32) = sub_100022B64(0xD000000000000018, 0x800000010004F160, 0xD000000000000011, 0x800000010004F180, 0xD000000000000011, 0x800000010004F180, 1, v30, 5u);
  v32 = objc_allocWithZone(ATXComplication);
  sub_100024128();
  *(v29 + 40) = sub_100022B64(v33, v34, v35, v36, v37, v38, 10, v39, 5u);
  v40 = objc_allocWithZone(ATXComplication);
  sub_100024128();
  *(v29 + 48) = sub_100022B64(v41, v42, v43, v44, v45, v46, 10, v47, 5u);
  sub_100024088(v29, v28, &selRef_setModularLandscapeComplications_);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10004C280;
  v49 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  *(v48 + 32) = sub_100022B64(v50, v51, v52, v53, v54, v55, 11, v56, v95);
  v57 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  *(v48 + 40) = sub_100022B64(v58, v59, v60, v61, v62, v63, 10, v64, v96);
  v65 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  *(v48 + 48) = sub_100022B64(v66, v67, v68, v69, v70, v71, 10, v72, v97);
  sub_100024088(v48, v28, &selRef_setModularComplications_);
  v73 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  v81 = sub_100022B64(v74, v75, v76, v77, v78, v79, 12, v80, v98);
  [v28 setInlineComplication:v81];

  v103 = 0;
  v82 = sub_100024228();
  if ([v82 v83])
  {
    v84 = v103;
  }

  else
  {
    v85 = v103;
    sub_100049A0C();

    swift_willThrow();
    if (qword_1000634A0 != -1)
    {
      sub_10002413C();
    }

    v86 = sub_100049FCC();
    sub_100008F90(v86, qword_100068390);

    swift_errorRetain();
    v87 = sub_100049FAC();
    v88 = sub_10004AB7C();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v89 = 136315394;
      *(v89 + 4) = sub_1000230EC(v99, a2, &v103);
      *(v89 + 12) = 2082;
      swift_errorRetain();
      sub_100002D54(&qword_100064270, &unk_10004E090);
      v90 = sub_10004A9AC();
      v92 = sub_1000230EC(v90, v91, &v103);

      *(v89 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v87, v88, "Failed to store gallery options when updating descriptor; identifier=%s, error=%{public}s", v89, 0x16u);
      swift_arrayDestroy();
      sub_100013F58();
      sub_100013F58();
    }

    else
    {
    }
  }

  return v101;
}

id sub_10002295C()
{
  v0 = sub_10004A95C();

  v1 = [swift_getObjCClassFromMetadata() mutableDescriptorWithIdentifier:v0];

  return v1;
}

id sub_1000229C0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10004A95C();

  v2 = [v0 initWithMicaAssetIdentifier:v1];

  return v2;
}

id PosterUpdater.init()()
{
  *&v0[OBJC_IVAR____TtC13WeatherPoster13PosterUpdater_descriptorVersion] = 3;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v2, "init");
}

id PosterUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100022AD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10004A95C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10004A95C();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

id sub_100022B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned int a9)
{
  v10 = v9;
  v14 = sub_10004A95C();

  v15 = sub_10004A95C();

  if (a6)
  {
    v16 = sub_10004A95C();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 initWithExtensionBundleIdentifier:v14 kind:v15 containerBundleIdentifier:v16 widgetFamily:a7 intent:a8 source:a9];

  return v17;
}

uint64_t sub_100022C50(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100009474;

  return v7();
}

uint64_t sub_100022D38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100008B6C;

  return v8();
}

uint64_t sub_100022E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100023C68(a3, v25 - v11);
  v13 = sub_10004AB0C();
  if (sub_100004288(v12, 1, v13) == 1)
  {
    sub_100023F18(v12, &qword_100064230, &qword_10004CC28);
  }

  else
  {
    sub_10004AAFC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_10004AAAC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10004A9BC() + 32;
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

      sub_100023F18(a3, &qword_100064230, &qword_10004CC28);

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

  sub_100023F18(a3, &qword_100064230, &qword_10004CC28);
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

uint64_t sub_1000230EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000231B0(v11, 0, 0, 1, a1, a2);
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
    sub_100023F78(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100008FC8(v11);
  return v7;
}

unint64_t sub_1000231B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000232B0(a5, a6);
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
    result = sub_10004ADAC();
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

char *sub_1000232B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000232FC(a1, a2);
  sub_100023414(&off_10005DC88);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000232FC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_10004A9EC())
  {
    result = sub_1000234F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10004AD5C();
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
          result = sub_10004ADAC();
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

uint64_t sub_100023414(uint64_t result)
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

    result = sub_100023568(result, v8, 1, v3);
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

void *sub_1000234F8(uint64_t a1, uint64_t a2)
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

  sub_100002D54(&qword_100064248, &qword_10004D380);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100023568(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D54(&qword_100064248, &qword_10004D380);
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

unint64_t sub_10002365C(char a1)
{
  v3 = *(v1 + 40);
  sub_10004AFEC();
  sub_100030C88(a1);
  sub_10004A9CC();

  v4 = sub_10004B00C();

  return sub_100023780(a1, v4);
}

unint64_t sub_1000236E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10004AFEC();
  sub_10004A9CC();
  v6 = sub_10004B00C();

  return sub_100023FD4(a1, a2, v6);
}

unint64_t sub_100023780(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000010;
      v8 = "t";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000010;
          v8 = "weatherAnimation";
          break;
        case 2:
          v7 = 0xD000000000000016;
          v8 = "weatherRendering";
          break;
        case 3:
          v7 = 0xD000000000000016;
          v8 = "weatherUnloadingMemory";
          break;
        case 4:
          v7 = 0xD000000000000015;
          v8 = "weatherUnlockAnimation";
          break;
        case 5:
          v7 = 0xD000000000000016;
          v8 = "weatherDeviceRotation";
          break;
        case 6:
          v7 = 0xD000000000000012;
          v8 = "weatherLocationRequest";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000010;
      v11 = "t";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000010;
          v11 = "weatherAnimation";
          break;
        case 2:
          v10 = 0xD000000000000016;
          v11 = "weatherRendering";
          break;
        case 3:
          v10 = 0xD000000000000016;
          v11 = "weatherUnloadingMemory";
          break;
        case 4:
          v10 = 0xD000000000000015;
          v11 = "weatherUnlockAnimation";
          break;
        case 5:
          v10 = 0xD000000000000016;
          v11 = "weatherDeviceRotation";
          break;
        case 6:
          v10 = 0xD000000000000012;
          v11 = "weatherLocationRequest";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_10004AF3C();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_100023A14()
{
  sub_10002421C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10002419C(v4);
  *v5 = v6;
  v7 = sub_10002417C(v5);

  return v8(v7);
}

uint64_t sub_100023AAC()
{
  sub_1000241B4();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10002419C(v5);
  *v6 = v7;
  v6[1] = sub_100009474;

  return sub_100022C50(v1, v2, v4);
}

uint64_t sub_100023B64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100023BA4()
{
  sub_1000241B4();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_10002419C(v7);
  *v8 = v9;
  v8[1] = sub_100009474;

  return sub_100022D38(v2, v3, v4, v6);
}

uint64_t sub_100023C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023CD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023D10()
{
  sub_10002421C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10002419C(v3);
  *v4 = v5;
  v6 = sub_1000097A4(v4);

  return v7(v6);
}

uint64_t sub_100023DA8()
{
  sub_10002421C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10002419C(v3);
  *v4 = v5;
  v6 = sub_1000097A4(v4);

  return v7(v6);
}

uint64_t sub_100023E40()
{
  _Block_release(*(v0 + 24));

  sub_100024210();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100023E84()
{
  sub_10002421C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10002419C(v4);
  *v5 = v6;
  v7 = sub_10002417C(v5);

  return v8(v7);
}

uint64_t sub_100023F18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D54(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100023F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100023FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10004AF3C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_100024088(uint64_t a1, void *a2, SEL *a3)
{
  sub_100013820(0, &unk_100064280, ATXComplication_ptr);
  isa = sub_10004AA4C().super.isa;

  [a2 *a3];
}

uint64_t sub_10002413C()
{

  return swift_once();
}

uint64_t sub_10002417C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1000241D8@<X0>(unint64_t a1@<X8>)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1 + 1, 1);
}

uint64_t sub_100024234()
{

  return sub_10004AFEC();
}

id sub_10002424C(uint64_t a1)
{
  v3 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  sub_100024F18(a1, &v13 - v5);
  v7 = type metadata accessor for DynamicRotationState();
  sub_100004544(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  swift_beginAccess();
  sub_100024F7C(v6, v1 + v8);
  swift_endAccess();
  sub_100024BD0(&v14, *(a1 + *(v7 + 20)));
  v9 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer);
  v15.x = sub_100025268();
  v15.y = 0.0;
  v10 = CGPointApplyAffineTransform(v15, &v13);
  [v9 setStartPoint:{v10.x, v10.y}];
  v16.x = sub_100025268();
  v16.y = 1.0;
  v11 = CGPointApplyAffineTransform(v16, &v13);
  return [v9 setEndPoint:{v11.x, v11.y}];
}

uint64_t sub_1000243AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
  swift_beginAccess();
  v4 = sub_10004A71C();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_100024478();
  return (*(v5 + 8))(a1, v4);
}

void sub_100024478()
{
  v1 = v0;
  v2 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for DynamicRotationState();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A71C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = objc_opt_self();
  [v26 begin];
  v15 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer);
  v16 = [v15 colors];
  if (v16)
  {
    v25 = sub_10004AA5C();
  }

  else
  {
    v25 = 0;
  }

  v17 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v17, v10);
  v18.super.super.isa = v15;
  sub_10004A6FC(v18);
  (*(v11 + 8))(v14, v10);
  v19 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  swift_beginAccess();
  sub_100024FEC(v1 + v19, v5);
  if (sub_100004288(v5, 1, v6) == 1)
  {
    sub_10002505C(v5);
  }

  else
  {
    sub_100025184(v5, v9);
    v20 = [objc_opt_self() currentDevice];
    v21 = [v20 userInterfaceIdiom];

    if (v21 == 1)
    {
      sub_10002424C(v9);
    }

    sub_1000251E8(v9);
  }

  sub_1000250C4();
  v22 = sub_10002485C(0x73726F6C6F63, 0xE600000000000000);
  if (v25)
  {
  }

  else
  {

    v16 = 0;
  }

  [v22 setFromValue:{v16, v25}];
  swift_unknownObjectRelease();
  v23 = [v15 colors];
  [v22 setToValue:v23];

  v24 = v22;
  [v24 setDuration:0.25];
  if (qword_100063470 != -1)
  {
    swift_once();
  }

  [v24 setTimingFunction:qword_100068300];

  sub_100025108(v24, 0x73726F6C6F63, 0xE600000000000000, v15);
  [v26 commit];
}

id sub_10002485C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_10004A95C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath:v2];

  return v3;
}

char *sub_1000248CC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer;
  *&v2[v5] = [objc_allocWithZone(CAGradientLayer) init];
  v6 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  v7 = type metadata accessor for DynamicRotationState();
  sub_100004544(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
  v9 = sub_10004A71C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v2[v8], a1, v9);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer;
  v13 = *&v11[OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer];
  v14 = v11;
  v15.super.super.isa = v13;
  isa = v15.super.super.isa;
  sub_10004A6FC(v15);

  v17 = [v14 layer];
  [v17 addSublayer:*&v11[v12]];

  (*(v10 + 8))(a1, v9);
  return v14;
}

void sub_100024A58()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  v3 = type metadata accessor for DynamicRotationState();
  sub_100004544(v0 + v2, 1, 1, v3);
  sub_10004AE3C();
  __break(1u);
}

id sub_100024B1C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer];
  [v0 bounds];
  return [v1 setFrame:?];
}

__n128 sub_100024BD0@<Q0>(__n128 *a1@<X8>, float a2@<S0>)
{
  CGAffineTransformMakeTranslation(&v49, -0.5, -0.5);
  a = v49.a;
  b = v49.b;
  c = v49.c;
  d = v49.d;
  tx = v49.tx;
  ty = v49.ty;
  Rotation = CGAffineTransformMakeRotation(&v49, ((a2 * 3.1416) / 180.0));
  v11 = *&v49.a;
  v12 = *&v49.c;
  v13 = *&v49.tx;
  v49.a = a;
  v49.b = b;
  v49.c = c;
  v49.d = d;
  v49.tx = tx;
  v49.ty = ty;
  sub_100025244(Rotation, v14, v15, v16, v17, v18, v19, v11, v12, v13, v20, v34, v35, v36, v37, v38, v41, v42, v44, v45, v47, v21, v22, v23, *&v48.a);
  v49.a = a;
  v49.b = b;
  v49.c = c;
  v49.d = d;
  v49.tx = tx;
  v49.ty = ty;
  v24 = CGAffineTransformInvert(&v48, &v49);
  v49 = v39;
  sub_100025244(v24, v25, v26, v27, v28, v29, v30, *&v48.a, *&v48.c, *&v48.tx, v31, *&v39.c, *&v39.d, *&v39.a, *&v39.b, *&v39.a, *&v39.b, *&v39.c, *&v39.d, *&v39.tx, *&v39.ty, *&v39.a, *&v39.c, v32, *&v48.a);
  result = v40;
  *a1 = v40;
  a1[1] = v43;
  a1[2] = v46;
  return result;
}

uint64_t type metadata accessor for GradientView()
{
  result = qword_1000642C8;
  if (!qword_1000642C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024DE0()
{
  sub_100024EBC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_10004A71C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100024EBC()
{
  if (!qword_100063AE8)
  {
    type metadata accessor for DynamicRotationState();
    v0 = sub_10004ACDC();
    if (!v1)
    {
      atomic_store(v0, &qword_100063AE8);
    }
  }
}

uint64_t sub_100024F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002505C(uint64_t a1)
{
  v2 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000250C4()
{
  result = qword_1000642D8;
  if (!qword_1000642D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000642D8);
  }

  return result;
}

void sub_100025108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10004A95C();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t sub_100025184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000251E8(uint64_t a1)
{
  v2 = type metadata accessor for DynamicRotationState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGAffineTransform *sub_100025244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGAffineTransform *a5, CGAffineTransform *t2, CGAffineTransform *t1, __n128 a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __n128 t2a, __n128 t2_16, __n128 t2_32, uint64_t t1a)
{
  t2a = a8;
  t2_16 = a9;
  t2_32 = a10;

  return CGAffineTransformConcat(&a16, &t1a, &t2a);
}

double sub_100025268()
{
  *(v0 - 192) = v1;
  *(v0 - 184) = v2;
  *(v0 - 176) = v3;
  *(v0 - 168) = v4;
  *(v0 - 160) = v5;
  *(v0 - 152) = v6;
  return 0.0;
}

uint64_t sub_10002527C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DD98;
  v7._object = a2;
  v4 = sub_10004AE7C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000252D0(char a1)
{
  if (a1)
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x6C62616863616572;
  }
}

uint64_t sub_100025330@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002527C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100025360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000252D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10002538C()
{
  if (!*(v0 + 16))
  {
    v1 = v0;
    v2 = sub_10004A16C();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = sub_10004A15C();
    swift_allocObject();
    swift_weakInit();

    sub_100013364(sub_100025F9C);
    sub_10004A12C();

    v6 = *(v1 + 24);
    sub_10004A13C();
    v7 = *(v1 + 16);
    *(v1 + 16) = v5;
  }
}

uint64_t sub_100025470(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000254D0(a1);
  }

  return result;
}

uint64_t sub_1000254D0(uint64_t a1)
{
  v2 = sub_10004A1DC();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004A1FC();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A1AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100008994();
  v19 = sub_10004ABFC();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_10002605C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012500;
  aBlock[3] = &unk_10005ED40;
  v16 = _Block_copy(aBlock);

  sub_10004A1EC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000260D8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D54(&qword_100063C58, &unk_10004DE10);
  sub_100026120(&qword_100063C60, &qword_100063C58, &unk_10004DE10);
  sub_10004ACFC();
  v17 = v19;
  sub_10004AC0C();
  _Block_release(v16);

  (*(v22 + 8))(v5, v2);
  return (*(v20 + 8))(v9, v21);
}

uint64_t sub_100025880()
{
  if (*(v0 + 16))
  {

    sub_100013364(0);
    sub_10004A12C();

    if (*(v0 + 16))
    {
      v1 = *(v0 + 16);

      sub_10004A14C();

      v2 = *(v0 + 16);
    }
  }

  *(v0 + 16) = 0;
}

uint64_t sub_10002590C()
{
  v0 = sub_10004A18C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_10004A19C();
      (*(v1 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v0);
      v10 = sub_10004A17C();
      v11 = *(v1 + 8);
      v11(v5, v0);
      v11(v7, v0);
      sub_10004343C((v10 & 1) == 0);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100025AA8()
{
  v1 = *(v0 + 16);

  sub_100013DE4(v0 + 32);
  return v0;
}

uint64_t sub_100025AD8()
{
  sub_100025AA8();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for LabelViewModel.Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100025C84);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100025CCC()
{
  result = qword_100064390;
  if (!qword_100064390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064390);
  }

  return result;
}

void *sub_100025D20()
{
  v14 = sub_10004ABEC();
  v1 = sub_1000059BC(v14);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_1000059D0();
  v8 = v7 - v6;
  v9 = sub_10004ABCC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_1000059D0();
  v11 = sub_10004A1FC();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000059D0();
  v0[2] = 0;
  sub_100008994();
  sub_10004A1EC();
  sub_1000260D8(&qword_100064398, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002D54(&qword_1000643A0, &qword_10004D4A0);
  sub_100026120(&qword_1000643A8, &qword_1000643A0, &qword_10004D4A0);
  sub_10004ACFC();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v0[3] = sub_10004AC1C();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_100025F64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025FA4()
{
  v1 = sub_10004A1AC();
  sub_1000059BC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10002605C()
{
  v1 = *(*(sub_10004A1AC() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_10002590C();
}

uint64_t sub_1000260C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000260D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100026120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100026194()
{
  result = type metadata accessor for PosterDataModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100026234(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_100049E9C();
    v9 = sub_100005A00(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_100049C2C();
      v14 = sub_100005A00(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = sub_100002D54(&unk_100063DE0, "4E");
        v17 = sub_100005A00(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[7];
        }

        else
        {
          v11 = sub_100002D54(&qword_1000637A8, "4E");
          v12 = a3[9];
        }
      }
    }

    return sub_100004288(a1 + v12, a2, v11);
  }
}

uint64_t sub_1000263A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100049E9C();
    v9 = sub_100005A00(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_100049C2C();
      v14 = sub_100005A00(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = sub_100002D54(&unk_100063DE0, "4E");
        v17 = sub_100005A00(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[7];
        }

        else
        {
          v11 = sub_100002D54(&qword_1000637A8, "4E");
          v12 = a4[9];
        }
      }
    }

    return sub_100004544(v5 + v12, a2, a2, v11);
  }

  return result;
}

void sub_100026504()
{
  sub_100049E9C();
  if (v0 <= 0x3F)
  {
    sub_100049C2C();
    if (v1 <= 0x3F)
    {
      sub_100026670(319, &qword_100063818, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100026670(319, &qword_100063820, &type metadata accessor for BackgroundMoonData, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100026670(319, &unk_1000644C0, type metadata accessor for PosterDataModel.DataPoint, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100026670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000266F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026740(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10002CAC4();
  v6 = sub_100049B7C();
  v7 = sub_100005A00(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_100049D9C();
    v12 = sub_100005A00(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_10004A69C();
      v16 = sub_100005A00(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[8];
      }

      else
      {
        v18 = sub_10004A8AC();
        v19 = sub_100005A00(v18);
        if (*(v20 + 84) != a2)
        {
          v22 = *(v3 + a3[10]);
          if (v22 >= 2)
          {
            return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v9 = v19;
        v14 = a3[9];
      }
    }

    v10 = v3 + v14;
  }

  return sub_100004288(v10, a2, v9);
}

uint64_t sub_1000268CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10002CAC4();
  v8 = sub_100049B7C();
  v9 = sub_100005A00(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_100049D9C();
    v14 = sub_100005A00(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_10004A69C();
      v18 = sub_100005A00(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[8];
      }

      else
      {
        v20 = sub_10004A8AC();
        result = sub_100005A00(v20);
        if (*(v22 + 84) != a3)
        {
          *(v4 + a4[10]) = a2 + 1;
          return result;
        }

        v11 = result;
        v16 = a4[9];
      }
    }

    v12 = v4 + v16;
  }

  return sub_100004544(v12, a2, a2, v11);
}

uint64_t sub_100026A30()
{
  result = sub_100049B7C();
  if (v1 <= 0x3F)
  {
    result = sub_100049D9C();
    if (v2 <= 0x3F)
    {
      result = sub_10004A69C();
      if (v3 <= 0x3F)
      {
        result = sub_10004A8AC();
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

uint64_t getEnumTagSinglePayload for PosterDataError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterDataError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100026C50);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100026C88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PosterData(0);
  v5 = sub_100005A24(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v10 = v9 - v8;
  sub_10002C940();
  sub_10002B3AC(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002B5B0(v10, a1);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for PosterDataModel(0);
  return sub_100004544(a1, v11, 1, v12);
}

uint64_t sub_100026D60()
{
  v1 = type metadata accessor for PosterDataModel(0);
  v2 = sub_100005A50(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1000059D0();
  v5 = sub_10002CAD0();
  v6 = type metadata accessor for PosterData(v5);
  v7 = sub_100005A24(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000059D0();
  v12 = (v11 - v10);
  sub_10002C940();
  v13 = sub_10002CB3C();
  sub_10002B3AC(v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002C99C();
    sub_10002B5B0(v12, v0);
    v15 = sub_10002A190();
    sub_10002AFE4(v0, v6);
  }

  else
  {
    v16 = *v12;
    v15 = 0x4F6B726F7774656ELL;
    switch(v16)
    {
      case 1:
        return v15;
      case 2:
        v15 = 0x617461446F6ELL;
        break;
      case 3:
        v15 = 0xD000000000000014;
        break;
      default:
        v15 = 0xD000000000000014;
        break;
    }
  }

  return v15;
}

unint64_t sub_100026EE4(char a1)
{
  result = 0x4F6B726F7774656ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x617461446F6ELL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_100026F80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DDE8;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100026FE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100026F80(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100027014()
{
  v1 = sub_10002CB60();
  result = sub_100026EE4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000270FC()
{
  result = qword_1000645B0;
  if (!qword_1000645B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645B0);
  }

  return result;
}

uint64_t sub_100027150(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = sub_100049E9C();
  v4 = sub_1000059BC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000059D0();
  v11 = v10 - v9;
  v12 = sub_10004A8AC();
  v13 = sub_1000059BC(v12);
  v67 = v14;
  v68 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_1000059D0();
  v66 = v18 - v17;
  v19 = sub_100005A44();
  v20 = type metadata accessor for PosterDataModel.DataPoint(v19);
  v21 = sub_1000059BC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100005A34();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v61 - v30;
  v32 = type metadata accessor for PosterDataModel(0);
  v33 = *(a1 + *(v32 + 40));
  if (*(v33 + 16))
  {
    v34 = v32;
    v35 = *(v23 + 80);
    v62 = v23;
    v63 = v35;
    v64 = type metadata accessor for PosterDataModel.DataPoint;
    v36 = v33 + ((v35 + 32) & ~v35);
    v37 = (v35 + 32) & ~v35;
    sub_10002B3AC(v36, v31);
    (*(v6 + 16))(v11, a1 + *(v34 + 20), v3);
    sub_10004AC9C();
    v38 = a1 + *(v34 + 24);
    v39 = v66;
    sub_10004A52C();
    v40 = sub_100049B7C();
    sub_100005A24(v40);
    v42 = *(v41 + 16);
    v43 = sub_10002CB30();
    v44(v43);
    v45 = v20[5];
    v46 = sub_100049D9C();
    sub_100005A24(v46);
    (*(v47 + 16))(v28 + v45, &v31[v45]);
    v48 = *&v31[v20[6]];
    v49 = *&v31[v20[7]];
    v50 = v20[8];
    v51 = sub_10004A69C();
    sub_100005A24(v51);
    (*(v52 + 16))(v28 + v50, &v31[v50]);
    v54 = v67;
    v53 = v68;
    (*(v67 + 16))(v28 + v20[9], v39, v68);
    sub_10004A89C();
    *(v28 + v20[6]) = v48;
    *(v28 + v20[7]) = v49;
    *(v28 + v20[10]) = v55 > 0.0;
    sub_100002D54(&qword_1000639B0, &qword_10004D820);
    v56 = *(v62 + 72);
    v57 = v37;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10004CFA0;
    v58 = v33 + v57;
    sub_10002B3AC(v31, v58);
    sub_10002B5B0(v28, v58 + v56);
    (*(v54 + 8))(v39, v53);
    sub_10002AFE4(v31, type metadata accessor for PosterDataModel.DataPoint);
  }

  else
  {
    v59 = *(a1 + *(v32 + 40));
  }

  return v33;
}

uint64_t sub_100027520(double a1)
{
  v3 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  sub_100005A50(v3);
  v5 = *(v4 + 64);
  sub_100013ED4();
  __chkstk_darwin(v6);
  sub_10002CAD0();
  v7 = sub_100049B7C();
  v8 = sub_1000059BC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100005A34();
  v14 = __chkstk_darwin(v13);
  v16 = &v43 - v15;
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  sub_10002BD10(v1, v1, &unk_100065230, &qword_10004D7F8);
  v19 = type metadata accessor for PosterDataModel.DataPoint(0);
  if (sub_100004288(v1, 1, v19) == 1)
  {
    sub_10000591C(v1, &unk_100065230, &qword_10004D7F8);
    return 1;
  }

  (*(v10 + 16))(v16, v1, v7);
  sub_10002AFE4(v1, type metadata accessor for PosterDataModel.DataPoint);
  (*(v10 + 32))(v18, v16, v7);
  sub_100049B6C();
  sub_100049AFC();
  v22 = v21;
  v23 = *(v10 + 8);
  v24 = sub_10002CB30();
  (v23)(v24);
  if (v22 >= a1)
  {
    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v33 = sub_100049FCC();
    sub_100008F90(v33, qword_100068348);
    v34 = sub_100049FAC();
    v35 = sub_10004AB9C();
    if (os_log_type_enabled(v34, v35))
    {
      swift_slowAlloc();
      v36 = sub_10002CBD8();
      sub_10002CA88(v36, 4.8752e-34);
      sub_10004AB4C();
      sub_10002CA44();
      sub_10002CAA8();

      sub_10002CA64();
      sub_10004AB4C();
      sub_10002CA44();
      v37 = sub_10002CAA8();

      *(v23 + 14) = v37;
      sub_10002CC68(&_mh_execute_header, v38, v39, "Data point requires update; age=%{public}s, maxAge=%{public}s");
      swift_arrayDestroy();
      sub_100013F58();
      sub_100013F58();

      v40 = sub_10002CB3C();
      v43(v40);
    }

    else
    {

      v42 = sub_10002CB3C();
      (v23)(v42);
    }

    return 1;
  }

  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v25 = sub_100049FCC();
  sub_100008F90(v25, qword_100068348);
  v26 = sub_100049FAC();
  v27 = sub_10004AB9C();
  if (os_log_type_enabled(v26, v27))
  {
    swift_slowAlloc();
    v28 = sub_10002CBD8();
    sub_10002CA88(v28, 4.8752e-34);
    sub_10004AB4C();
    sub_10002CA44();
    sub_10002CAA8();

    sub_10002CA64();
    sub_10004AB4C();
    sub_10002CA44();
    v29 = sub_10002CAA8();

    *(v23 + 14) = v29;
    sub_10002CC68(&_mh_execute_header, v30, v31, "Data point does not require update; age=%{public}s, maxAge=%{public}s");
    swift_arrayDestroy();
    sub_100013F58();
    sub_100013F58();

    v32 = sub_10002CB3C();
    v43(v32);
  }

  else
  {

    v41 = sub_10002CB3C();
    (v23)(v41);
  }

  return 0;
}

void sub_1000279C0()
{
  sub_10002CC50();
  v2 = sub_10002CAC4();
  v27 = type metadata accessor for PosterDataModel(v2);
  v3 = sub_100005A24(v27);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000059D0();
  v8 = v7 - v6;
  v9 = type metadata accessor for PosterData(0);
  v10 = sub_100005A24(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1000059D0();
  v15 = (v14 - v13);
  v16 = sub_100002D54(&qword_1000645E0, &qword_10004D7D8);
  sub_1000059BC(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_100013ED4();
  __chkstk_darwin(v21);
  sub_10002CAE0();
  v22 = v0[4];
  sub_10002CC88(v0, v0[3]);
  sub_10002B508();
  sub_10004B04C();
  sub_10002C940();
  sub_10002B3AC(v0, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002C984();
    sub_10002B5B0(v15, v8);
    sub_10002C9FC();
    sub_10002B364(v23, v24);
    sub_10004AF0C();
    v25 = sub_10002CB84();
    sub_10002AFE4(v25, v26);
  }

  else
  {
    v28 = *v15;
    sub_10002B608();
    sub_10004AF0C();
  }

  (*(v18 + 8))(v1, v16);
  sub_10002CBF8();
}

void sub_100027BF4()
{
  sub_10002CC50();
  v3 = v2;
  v4 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v4);
  v6 = *(v5 + 64);
  sub_100013ED4();
  __chkstk_darwin(v7);
  sub_100013F88();
  v33 = v8;
  v9 = sub_100005A44();
  v31 = type metadata accessor for PosterDataModel(v9);
  v10 = sub_100005A24(v31);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1000059D0();
  sub_10002CB54();
  v13 = sub_100002D54(&qword_1000645C0, &qword_10004D7D0);
  v32 = sub_1000059BC(v13);
  v15 = *(v14 + 64);
  sub_100013ED4();
  __chkstk_darwin(v16);
  sub_10002CAE0();
  v17 = type metadata accessor for PosterData(0);
  v18 = sub_100005A24(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_1000059D0();
  v23 = v22 - v21;
  v24 = v3[4];
  sub_10002CC88(v3, v3[3]);
  sub_10002B508();
  sub_10004B03C();
  if (!v0)
  {
    sub_10002C9FC();
    sub_10002B364(v25, v26);
    sub_10004AECC();
    sub_100004544(v33, 0, 1, v31);
    v27 = sub_10002CB10();
    v28(v27, v32);
    sub_10002C99C();
    sub_10002B5B0(v33, v1);
    sub_10002B5B0(v1, v23);
    swift_storeEnumTagMultiPayload();
    v29 = sub_10002CB84();
    sub_10002B5B0(v29, v30);
  }

  sub_100008FC8(v3);
  sub_10002CBF8();
}

uint64_t sub_100028008(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DE68;
  v7._object = a2;
  v4 = sub_10004AE7C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100028070(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1000280C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028008(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000280F0()
{
  v1 = sub_10002CB60();
  result = sub_100028070(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100028120@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100028008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100028168@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002805C();
  *a1 = result;
  return result;
}

uint64_t sub_100028190(uint64_t a1)
{
  v2 = sub_10002B508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000281CC(uint64_t a1)
{
  v2 = sub_10002B508();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100028238(void *a1)
{
  v3 = v1;
  v5 = sub_100002D54(&qword_100064630, &qword_10004D7F0);
  sub_1000059BC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100013ED4();
  __chkstk_darwin(v10);
  sub_10002CB54();
  v11 = a1[4];
  sub_10002CC88(a1, a1[3]);
  sub_10002B65C();
  sub_10002CC10();
  sub_100049B7C();
  sub_10002C928();
  sub_10002B364(v12, v13);
  sub_10002C958();
  if (!v2)
  {
    v14 = type metadata accessor for PosterDataModel.DataPoint(0);
    v15 = v14[5];
    sub_100049D9C();
    sub_10002C9E4();
    sub_10002B364(v16, v17);
    sub_10002CB78();
    sub_10002C958();
    v18 = *(v3 + v14[6]);
    sub_10002C978();
    sub_10004AEFC();
    v19 = *(v3 + v14[7]);
    sub_10002C978();
    sub_10004AEFC();
    v20 = v14[8];
    sub_10004A69C();
    sub_10002C9CC();
    sub_10002B364(v21, v22);
    sub_10002CB78();
    sub_10002C958();
    v23 = v14[9];
    sub_10004A89C();
    sub_10002B704();
    sub_10002C978();
    sub_10004AF0C();
    sub_10004A88C();
    sub_10002C978();
    sub_10004AEEC();
    v24 = *(v3 + v14[10]);
    sub_10002C978();
    sub_10004AEEC();
  }

  v25 = *(v7 + 8);
  v26 = sub_10002CB30();
  return v27(v26);
}

uint64_t sub_100028504@<X0>(uint64_t a1@<X8>)
{
  sub_10002CAC4();
  v71 = sub_10004A8AC();
  v4 = sub_1000059BC(v71);
  v62 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000059D0();
  v63 = v9 - v8;
  v10 = sub_100002D54(&qword_1000645F8, &qword_10004D7E0);
  sub_100005A50(v10);
  v12 = *(v11 + 64);
  sub_100013ED4();
  __chkstk_darwin(v13);
  sub_100013F88();
  v66 = v14;
  sub_100005A44();
  v67 = sub_10004A69C();
  v15 = sub_1000059BC(v67);
  v65 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_1000059D0();
  v64 = v20 - v19;
  sub_100005A44();
  v70 = sub_100049D9C();
  v21 = sub_1000059BC(v70);
  v68 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_1000059D0();
  v27 = v26 - v25;
  v28 = sub_100049B7C();
  v29 = sub_1000059BC(v28);
  v69 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_1000059D0();
  sub_10002CB54();
  v33 = sub_100002D54(&qword_100064600, &qword_10004D7E8);
  sub_1000059BC(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_100013ED4();
  __chkstk_darwin(v38);
  sub_10002CAE0();
  v39 = v1[4];
  v75 = v1;
  sub_10002CC88(v1, v1[3]);
  sub_10002B65C();
  sub_10004B03C();
  if (!v74)
  {
    v40 = v35;
    sub_10002C928();
    sub_10002B364(v41, v42);
    sub_10004AECC();
    v61 = v2;
    sub_10002C9E4();
    sub_10002B364(v43, v44);
    sub_10004AECC();
    sub_10002CB20(2);
    v46 = v3;
    sub_10004AEBC();
    v48 = v47;
    sub_10002CB20(3);
    sub_10004AEBC();
    v50 = v49;
    sub_10002C9CC();
    sub_10002B364(v51, v52);
    sub_10004AE8C();
    v53 = sub_10002CB48();
    if (sub_100004288(v53, v54, v67) == 1)
    {
      (*(v65 + 104))(v64, enum case for CloudAltitudeKind.low(_:), v67);
      v55 = sub_10002CB48();
      v57 = a1;
      v59 = v62;
      v58 = v63;
      if (sub_100004288(v55, v56, v67) != 1)
      {
        sub_10000591C(v66, &qword_1000645F8, &qword_10004D7E0);
      }
    }

    else
    {
      (*(v65 + 32))(v64, v66, v67);
      v57 = a1;
      v59 = v62;
      v58 = v63;
    }

    sub_10002B6B0();
    sub_10004AECC();
    sub_10004AEAC();
    sub_10004A8BC();
    sub_10002CB20(7);
    v73 = sub_10004AEAC();
    (*(v40 + 8))(v46, v33);
    (*(v69 + 32))(v57, v61, v28);
    v60 = type metadata accessor for PosterDataModel.DataPoint(0);
    (*(v68 + 32))(v57 + v60[5], v27, v70);
    *(v57 + v60[6]) = v48;
    *(v57 + v60[7]) = v50;
    (*(v65 + 32))(v57 + v60[8], v64, v67);
    (*(v59 + 32))(v57 + v60[9], v58, v71);
    *(v57 + v60[10]) = v73 & 1;
  }

  return sub_100008FC8(v75);
}

uint64_t sub_100028BE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DEB8;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100028C44(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      v3 = 0x7469646E6F63;
      goto LABEL_10;
    case 2:
      result = 0x65657053646E6977;
      break;
    case 3:
      result = 0x766F4364756F6C63;
      break;
    case 4:
      result = 0x6E694B64756F6C63;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      v3 = 0x746176656C65;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
      break;
    case 7:
      result = 0x67696C7961447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100028D88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028BE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100028DB8()
{
  v1 = sub_10002CB60();
  result = sub_100028C44(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100028DFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100028C34();
  *a1 = result;
  return result;
}

uint64_t sub_100028E24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100028C38();
  *a1 = result;
  return result;
}

uint64_t sub_100028E4C(uint64_t a1)
{
  v2 = sub_10002B65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100028E88(uint64_t a1)
{
  v2 = sub_10002B65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100028EF4()
{
  sub_10002CC50();
  v2 = v0;
  v4 = v3;
  v5 = sub_100002D54(&qword_1000646A0, &qword_10004D828);
  sub_1000059BC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100013ED4();
  __chkstk_darwin(v10);
  sub_10002CB54();
  v11 = v4[4];
  sub_10002CC88(v4, v4[3]);
  sub_10002B758();
  sub_10002CC10();
  v12 = *v2;
  v13 = v2[1];
  sub_10002C978();
  sub_10004AEDC();
  if (!v1)
  {
    v14 = type metadata accessor for PosterDataModel(0);
    v15 = v14[5];
    sub_100049E9C();
    sub_10002CA2C();
    sub_10002B364(v16, v17);
    sub_10002CB78();
    sub_10002C958();
    v21 = v2 + v14[6];
    sub_100049BEC();
    sub_10002C978();
    sub_10004AEDC();

    v22 = v14[7];
    sub_100002D54(&unk_100063DE0, "4E");
    sub_10002BAC8(&qword_1000646B0, &qword_100064638);
    sub_10002C978();
    sub_10004AF0C();
    v23 = v14[8];
    sub_10002C978();
    sub_10004AF0C();
    v24 = v14[9];
    sub_100002D54(&qword_1000637A8, "4E");
    sub_10002BB54();
    sub_10002CB78();
    sub_10002C958();
    v25 = *(v2 + v14[10]);
    sub_100002D54(&qword_1000646C8, &qword_10004D830);
    sub_10002BC08();
    sub_10002C958();
  }

  v18 = *(v7 + 8);
  v19 = sub_10002CB30();
  v20(v19);
  sub_10002CBF8();
}

void sub_1000291EC()
{
  sub_10002CC50();
  v118 = v0;
  v2 = v1;
  v107 = v3;
  v4 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  sub_100005A50(v4);
  v6 = *(v5 + 64);
  sub_100013ED4();
  __chkstk_darwin(v7);
  sub_100013F88();
  v106 = v8;
  v9 = sub_100005A44();
  v109 = type metadata accessor for PosterDataModel.DataPoint(v9);
  v10 = sub_1000059BC(v109);
  v105 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_1000059D0();
  v108 = v15 - v14;
  v103 = *(sub_100002D54(&qword_100064658, &unk_10004D800) - 8);
  v16 = *(v103 + 64);
  sub_100013ED4();
  __chkstk_darwin(v17);
  sub_100013F88();
  v110 = v18;
  v19 = sub_100002D54(&qword_1000637A8, "4E");
  sub_100005A50(v19);
  v21 = *(v20 + 64);
  sub_100013ED4();
  __chkstk_darwin(v22);
  sub_100013F88();
  v104 = v23;
  v112 = sub_100002D54(&unk_100063DE0, "4E");
  v24 = sub_100005A24(v112);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100005A34();
  v111 = v27 - v28;
  __chkstk_darwin(v29);
  v113 = v97 - v30;
  v31 = sub_100002D54(&qword_1000639A8, &unk_10004CCA0);
  sub_100005A50(v31);
  v33 = *(v32 + 64);
  sub_100013ED4();
  __chkstk_darwin(v34);
  sub_100013F88();
  v117 = v35;
  sub_100005A44();
  v36 = sub_100049C2C();
  v37 = sub_1000059BC(v36);
  v114 = v38;
  v115 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_1000059D0();
  v43 = v42 - v41;
  v44 = sub_100049E9C();
  v45 = sub_1000059BC(v44);
  v116 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_1000059D0();
  v51 = v50 - v49;
  v52 = sub_100002D54(&qword_100064660, &qword_10004D810);
  sub_1000059BC(v52);
  v54 = v53;
  v56 = *(v55 + 64);
  sub_100013ED4();
  __chkstk_darwin(v57);
  v59 = v97 - v58;
  v60 = v2[3];
  v61 = v2[4];
  v119 = v2;
  sub_10002CC88(v2, v60);
  sub_10002B758();
  v62 = v118;
  sub_10004B03C();
  if (!v62)
  {
    v63 = v117;
    v102 = v43;
    v118 = v51;
    v64 = v44;
    v65 = v54;
    sub_10002CB6C();
    v100 = sub_10004AE9C();
    v101 = v66;
    sub_10002CA2C();
    sub_10002B364(v67, v68);
    sub_10002CB6C();
    sub_10004AECC();
    sub_10002CB6C();
    sub_10004AE9C();
    sub_100049BDC();

    v69 = sub_10002CB48();
    v70 = v115;
    v72 = sub_100004288(v69, v71, v115);
    v99 = v59;
    if (v72 == 1)
    {
      sub_100049C1C();
      v73 = sub_10002CB48();
      if (sub_100004288(v73, v74, v70) != 1)
      {
        sub_10000591C(v63, &qword_1000639A8, &unk_10004CCA0);
      }
    }

    else
    {
      (*(v114 + 32))(v102, v63, v70);
    }

    sub_10002BAC8(&qword_100064678, &qword_100064610);
    sub_10002CB90();
    sub_10004AECC();
    sub_10002CB90();
    sub_10004AECC();
    sub_10004A6DC();
    sub_10002C9B4();
    sub_10002B364(v75, v76);
    v77 = v104;
    sub_10002CB6C();
    sub_10004AE8C();
    v78 = v54;
    sub_100002D54(&qword_100064688, &qword_10004D818);
    sub_10002B7AC();
    sub_10004AECC();
    v98 = v52;
    v79 = *(v120 + 16);
    if (v79)
    {
      v80 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v97[1] = v120;
      v81 = v120 + v80;
      v117 = _swiftEmptyArrayStorage;
      v112 = *(v103 + 72);
      v82 = v106;
      v83 = v107;
      v84 = v110;
      do
      {
        sub_10002BD10(v81, v84, &qword_100064658, &unk_10004D800);
        sub_10002B894(v84, v82, &unk_100065230, &qword_10004D7F8);
        if (sub_100004288(v82, 1, v109) == 1)
        {
          sub_10000591C(v82, &unk_100065230, &qword_10004D7F8);
        }

        else
        {
          sub_10002CA14();
          sub_10002B5B0(v82, v108);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_10002B8E0(0, v117[2] + 1, 1, v117);
          }

          v85 = v105;
          v87 = v117[2];
          v86 = v117[3];
          if (v87 >= v86 >> 1)
          {
            v92 = sub_10002B8E0((v86 > 1), v87 + 1, 1, v117);
            v85 = v105;
            v117 = v92;
          }

          v88 = v117;
          v117[2] = v87 + 1;
          v89 = v88 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
          v90 = *(v85 + 72);
          sub_10002CA14();
          sub_10002B5B0(v108, v91);
          v82 = v106;
          v83 = v107;
        }

        v81 += v112;
        --v79;
        v84 = v110;
      }

      while (v79);

      v78 = v65;
      v93 = v104;
      v94 = v83;
    }

    else
    {

      v117 = _swiftEmptyArrayStorage;
      v94 = v107;
      v93 = v77;
    }

    (*(v78 + 8))(v99, v98);
    v95 = v101;
    *v94 = v100;
    v94[1] = v95;
    v96 = type metadata accessor for PosterDataModel(0);
    (*(v116 + 32))(v94 + v96[5], v118, v64);
    (*(v114 + 32))(v94 + v96[6], v102, v115);
    sub_10002B894(v113, v94 + v96[7], &unk_100063DE0, "4E");
    sub_10002B894(v111, v94 + v96[8], &unk_100063DE0, "4E");
    sub_10002B894(v93, v94 + v96[9], &qword_1000637A8, "4E");
    *(v94 + v96[10]) = v117;
  }

  sub_100008FC8(v119);
  sub_10002CBF8();
}

uint64_t sub_100029C44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DF98;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100029CA0(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x616E6964726F6F63;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x657369726E7573;
      break;
    case 4:
      result = 0x7465736E7573;
      break;
    case 5:
      result = 0x617461446E6F6F6DLL;
      break;
    case 6:
      result = 0x4472656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100029DBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029C44(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100029DEC()
{
  v1 = sub_10002CB60();
  result = sub_100029CA0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100029E30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100029C90();
  *a1 = result;
  return result;
}

uint64_t sub_100029E58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100029C94();
  *a1 = result;
  return result;
}

uint64_t sub_100029E80(uint64_t a1)
{
  v2 = sub_10002B758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100029EBC(uint64_t a1)
{
  v2 = sub_10002B758();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100029F28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v27 = sub_10004ACDC();
  v30 = *(v27 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v27);
  v10 = &v24 - v9;
  v28 = a3;
  v11 = type metadata accessor for SingleValueDecodable();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = a1[4];
  sub_10002B4C4(a1, a1[3]);
  sub_10004B02C();
  if (!v4)
  {
    v25 = v14;
    v26 = v11;
    v16 = v27;
    sub_10002B4C4(v31, v31[3]);
    sub_10004AF4C();
    v17 = v10;
    v18 = v32;
    v19 = v16;
    v21 = v29;
    v20 = v30;
    sub_100004544(v17, 0, 1, a2);
    v22 = v25;
    (*(v20 + 32))(v25, v17, v19);
    sub_100008FC8(v31);
    (*(v21 + 32))(v18, v22, v26);
  }

  return sub_100008FC8(a1);
}

uint64_t sub_10002A190()
{
  v1 = sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A24(v1);
  v3 = *(v2 + 64);
  sub_100013ED4();
  __chkstk_darwin();
  sub_10004AD6C(39);

  strcpy(v7, "[weatherData:");
  HIWORD(v7[1]) = -4864;
  v4 = type metadata accessor for PosterDataModel(0);
  v5 = *(v0 + v4[10]);
  type metadata accessor for PosterDataModel.DataPoint(0);
  v8._countAndFlagsBits = sub_10004AA6C();
  sub_10004A9DC(v8);

  v9._countAndFlagsBits = 0x7369726E7573202CLL;
  v9._object = 0xEA00000000003A65;
  sub_10004A9DC(v9);
  sub_10002CBB8(v4[7]);
  sub_10002CB84();
  v10._countAndFlagsBits = sub_10004A9AC();
  sub_10004A9DC(v10);

  v11._countAndFlagsBits = 0x7465736E7573202CLL;
  v11._object = 0xE90000000000003ALL;
  sub_10004A9DC(v11);
  sub_10002CBB8(v4[8]);
  sub_10002CB84();
  v12._countAndFlagsBits = sub_10004A9AC();
  sub_10004A9DC(v12);

  v13._countAndFlagsBits = 93;
  v13._object = 0xE100000000000000;
  sub_10004A9DC(v13);
  return v7[0];
}

uint64_t sub_10002A32C()
{
  v1 = v0;
  sub_10004AD6C(53);
  v10._countAndFlagsBits = 0x697469646E6F635BLL;
  v10._object = 0xEB000000003A6E6FLL;
  sub_10004A9DC(v10);
  v2 = type metadata accessor for PosterDataModel.DataPoint(0);
  v3 = v0 + v2[5];
  v11._countAndFlagsBits = sub_100049D8C();
  sub_10004A9DC(v11);

  v12._countAndFlagsBits = 0x3A65746164202CLL;
  v12._object = 0xE700000000000000;
  sub_10004A9DC(v12);
  sub_100049B7C();
  sub_10002C928();
  sub_10002B364(v4, v5);
  v13._countAndFlagsBits = sub_10004AF1C();
  sub_10004A9DC(v13);

  v14._countAndFlagsBits = 0x746176656C65202CLL;
  v14._object = 0xEC0000003A6E6F69;
  sub_10004A9DC(v14);
  v6 = v1 + v2[9];
  sub_10004A89C();
  v15._countAndFlagsBits = sub_10004AB3C();
  sub_10004A9DC(v15);

  v16._countAndFlagsBits = 0x6C7961447369202CLL;
  v16._object = 0xEE00203A74686769;
  sub_10004A9DC(v16);
  if (*(v1 + v2[10]))
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + v2[10]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_10004A9DC(v7);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  sub_10004A9DC(v17);
  return 0;
}

uint64_t sub_10002A500(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for PosterDataModel(0);
  v6 = sub_100005A50(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_1000059D0();
  v9 = sub_10002CAD0();
  v10 = type metadata accessor for PosterData(v9);
  v11 = sub_100005A24(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100005A34();
  v16 = (v14 - v15);
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v20 = sub_100002D54(&qword_1000645B8, &unk_10004D7C0);
  sub_100005A50(v20);
  v22 = *(v21 + 64);
  sub_100013ED4();
  v24 = __chkstk_darwin(v23);
  v26 = &v30 - v25;
  v27 = *(v24 + 56);
  sub_10002B3AC(a1, &v30 - v25);
  sub_10002B3AC(a2, &v26[v27]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10002C940();
    sub_10002B3AC(v26, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = sub_10000A770(*v19, v26[v27]);
      goto LABEL_6;
    }

LABEL_8:
    sub_10000591C(v26, &qword_1000645B8, &unk_10004D7C0);
    v28 = 0;
    return v28 & 1;
  }

  sub_10002C940();
  sub_10002B3AC(v26, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10002AFE4(v16, type metadata accessor for PosterDataModel);
    goto LABEL_8;
  }

  sub_10002C984();
  sub_10002B5B0(&v26[v27], v2);
  v28 = sub_10002A758(v16, v2);
  sub_10002AFE4(v2, a2);
  sub_10002AFE4(v16, a2);
LABEL_6:
  sub_10002AFE4(v26, type metadata accessor for PosterData);
  return v28 & 1;
}

uint64_t sub_10002A758(void *a1, void *a2)
{
  v4 = sub_10004A6DC();
  v5 = sub_1000059BC(v4);
  v98 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v11 = v10 - v9;
  v12 = sub_100002D54(&qword_1000637A8, "4E");
  sub_100005A50(v12);
  v14 = *(v13 + 64);
  sub_100013ED4();
  __chkstk_darwin(v15);
  sub_100013F88();
  v97 = v16;
  v17 = sub_100002D54(&qword_100063898, &qword_10004CBB8);
  sub_100005A24(v17);
  v19 = *(v18 + 64);
  sub_100013ED4();
  __chkstk_darwin(v20);
  v22 = &v91 - v21;
  v23 = sub_100049B7C();
  v24 = sub_1000059BC(v23);
  v102 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_1000059D0();
  v100 = v29 - v28;
  v30 = sub_100002D54(&unk_100063DE0, "4E");
  v31 = sub_100005A50(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100005A34();
  v99 = v34 - v35;
  __chkstk_darwin(v36);
  v38 = &v91 - v37;
  v39 = sub_100002D54(&qword_1000638A0, &qword_10004CBC0);
  v40 = sub_100005A24(v39);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_100005A34();
  v101 = v43 - v44;
  __chkstk_darwin(v45);
  v47 = &v91 - v46;
  v48 = *a1 == *a2 && a1[1] == a2[1];
  if (!v48 && (sub_10004AF3C() & 1) == 0)
  {
    goto LABEL_35;
  }

  v96 = v17;
  v49 = type metadata accessor for PosterDataModel(0);
  v50 = v49[5];
  if ((sub_100049E6C() & 1) == 0)
  {
    goto LABEL_35;
  }

  v51 = v49[6];
  if ((sub_100049C0C() & 1) == 0)
  {
    goto LABEL_35;
  }

  v93 = v4;
  v94 = v22;
  v92 = v11;
  v95 = v49;
  v52 = v49[7];
  v53 = *(v39 + 48);
  sub_10002BD10(a1 + v52, v47, &unk_100063DE0, "4E");
  sub_10002BD10(a2 + v52, &v47[v53], &unk_100063DE0, "4E");
  sub_1000059E0(v47);
  if (v48)
  {
    sub_1000059E0(&v47[v53]);
    if (v48)
    {
      sub_10000591C(v47, &unk_100063DE0, "4E");
      goto LABEL_18;
    }

LABEL_16:
    v55 = &qword_1000638A0;
    v56 = &qword_10004CBC0;
    v57 = v47;
LABEL_34:
    sub_10000591C(v57, v55, v56);
    goto LABEL_35;
  }

  sub_10002BD10(v47, v38, &unk_100063DE0, "4E");
  sub_1000059E0(&v47[v53]);
  if (v54)
  {
    (*(v102 + 8))(v38, v23);
    goto LABEL_16;
  }

  v58 = v102;
  v59 = &v47[v53];
  v60 = v100;
  (*(v102 + 32))(v100, v59, v23);
  sub_10002C928();
  sub_10002B364(v61, v62);
  v63 = sub_10004A94C();
  v64 = *(v58 + 8);
  v64(v60, v23);
  v64(v38, v23);
  sub_10000591C(v47, &unk_100063DE0, "4E");
  if ((v63 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v65 = v95[8];
  v66 = *(v39 + 48);
  v67 = v101;
  sub_10002BD10(a1 + v65, v101, &unk_100063DE0, "4E");
  sub_10002BD10(a2 + v65, v67 + v66, &unk_100063DE0, "4E");
  sub_1000059E0(v67);
  if (v48)
  {
    sub_1000059E0(v67 + v66);
    v68 = v94;
    if (v48)
    {
      sub_10000591C(v67, &unk_100063DE0, "4E");
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v69 = v99;
  sub_10002BD10(v67, v99, &unk_100063DE0, "4E");
  sub_1000059E0(v67 + v66);
  v68 = v94;
  if (v70)
  {
    (*(v102 + 8))(v69, v23);
LABEL_26:
    v55 = &qword_1000638A0;
    v56 = &qword_10004CBC0;
    v57 = v67;
    goto LABEL_34;
  }

  v71 = v102;
  v72 = v67 + v66;
  v73 = v100;
  (*(v102 + 32))(v100, v72, v23);
  sub_10002C928();
  sub_10002B364(v74, v75);
  v76 = sub_10004A94C();
  v77 = *(v71 + 8);
  v77(v73, v23);
  v77(v69, v23);
  sub_10000591C(v67, &unk_100063DE0, "4E");
  if ((v76 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  v78 = v95;
  v79 = v95[9];
  v80 = *(v96 + 48);
  sub_10002BD10(a1 + v79, v68, &qword_1000637A8, "4E");
  sub_10002BD10(a2 + v79, v68 + v80, &qword_1000637A8, "4E");
  v81 = v93;
  if (sub_100004288(v68, 1, v93) == 1)
  {
    if (sub_100004288(v68 + v80, 1, v81) == 1)
    {
      sub_10000591C(v68, &qword_1000637A8, "4E");
LABEL_38:
      v83 = sub_10002B03C(*(a1 + v78[10]), *(a2 + v78[10]));
      return v83 & 1;
    }

    goto LABEL_33;
  }

  v82 = v97;
  sub_10002BD10(v68, v97, &qword_1000637A8, "4E");
  if (sub_100004288(v68 + v80, 1, v81) == 1)
  {
    (*(v98 + 8))(v82, v81);
LABEL_33:
    v55 = &qword_100063898;
    v56 = &qword_10004CBB8;
    v57 = v68;
    goto LABEL_34;
  }

  v85 = v98;
  v86 = v92;
  (*(v98 + 32))(v92, v68 + v80, v81);
  sub_10002C9B4();
  sub_10002B364(v87, v88);
  v89 = sub_10004A94C();
  v90 = *(v85 + 8);
  v90(v86, v81);
  v90(v82, v81);
  sub_10000591C(v68, &qword_1000637A8, "4E");
  if (v89)
  {
    goto LABEL_38;
  }

LABEL_35:
  v83 = 0;
  return v83 & 1;
}

uint64_t sub_10002AF10(uint64_t a1, uint64_t a2)
{
  if (sub_100049B2C() & 1) != 0 && (v4 = type metadata accessor for PosterDataModel.DataPoint(0), (sub_10000A4A4(a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && (v5 = v4[8], (sub_10004A68C()) && (v6 = v4[9], (sub_10004A87C()))
  {
    v7 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10002AFE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100005A24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002B03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterDataModel.DataPoint(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_22:
    v23 = 0;
    return v23 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v26 = *(v9 + 72);
    while (1)
    {
      sub_10002B3AC(v14, v11);
      sub_10002B3AC(v15, v8);
      if ((sub_100049B2C() & 1) == 0)
      {
        break;
      }

      v16 = v4[5];
      sub_100049D9C();
      sub_10002B364(&qword_100063C70, &type metadata accessor for WeatherCondition);
      sub_10004AA0C();
      sub_10004AA0C();
      if (v29 == v27 && v30 == v28)
      {
      }

      else
      {
        v18 = sub_10004AF3C();

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      if (*&v11[v4[6]] != *&v8[v4[6]])
      {
        break;
      }

      if (*&v11[v4[7]] != *&v8[v4[7]])
      {
        break;
      }

      v19 = v4[8];
      if ((sub_10004A68C() & 1) == 0)
      {
        break;
      }

      v20 = v4[9];
      if ((sub_10004A87C() & 1) == 0)
      {
        break;
      }

      v21 = v11[v4[10]];
      sub_10002AFE4(v11, type metadata accessor for PosterDataModel.DataPoint);
      v22 = v8[v4[10]];
      sub_10002AFE4(v8, type metadata accessor for PosterDataModel.DataPoint);
      if (((v21 ^ v22) & 1) == 0)
      {
        v15 += v26;
        v14 += v26;
        if (--v12)
        {
          continue;
        }
      }

      v23 = v21 ^ v22 ^ 1;
      return v23 & 1;
    }

    sub_10002AFE4(v8, type metadata accessor for PosterDataModel.DataPoint);
    sub_10002AFE4(v11, type metadata accessor for PosterDataModel.DataPoint);
    goto LABEL_22;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10002B364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002B3AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002CAC4();
  v5 = v4(v3);
  sub_100005A24(v5);
  v7 = *(v6 + 16);
  v8 = sub_100013F94();
  v9(v8);
  return a2;
}

void sub_10002B404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6)
      {
        if (!v7)
        {
          return;
        }

        sub_1000047A4();
        v8 = v5;
        v9 = v7;
        v10 = sub_10004ACBC();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      else if (v7)
      {
        return;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }
}

void *sub_10002B4C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002B508()
{
  result = qword_1000645C8;
  if (!qword_1000645C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645C8);
  }

  return result;
}

unint64_t sub_10002B55C()
{
  result = qword_1000645D8;
  if (!qword_1000645D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645D8);
  }

  return result;
}

uint64_t sub_10002B5B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002CAC4();
  v5 = v4(v3);
  sub_100005A24(v5);
  v7 = *(v6 + 32);
  v8 = sub_100013F94();
  v9(v8);
  return a2;
}

unint64_t sub_10002B608()
{
  result = qword_1000645F0;
  if (!qword_1000645F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645F0);
  }

  return result;
}

unint64_t sub_10002B65C()
{
  result = qword_100064608;
  if (!qword_100064608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064608);
  }

  return result;
}

unint64_t sub_10002B6B0()
{
  result = qword_100064628;
  if (!qword_100064628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064628);
  }

  return result;
}

unint64_t sub_10002B704()
{
  result = qword_100064650;
  if (!qword_100064650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064650);
  }

  return result;
}

unint64_t sub_10002B758()
{
  result = qword_100064668;
  if (!qword_100064668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064668);
  }

  return result;
}

unint64_t sub_10002B7AC()
{
  result = qword_100064690;
  if (!qword_100064690)
  {
    sub_100009240(&qword_100064688, &qword_10004D818);
    sub_10002B830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064690);
  }

  return result;
}

unint64_t sub_10002B830()
{
  result = qword_100064698;
  if (!qword_100064698)
  {
    sub_100009240(&qword_100064658, &unk_10004D800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064698);
  }

  return result;
}

uint64_t sub_10002B894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10002CC30(a1, a2, a3, a4);
  sub_100005A24(v5);
  v7 = *(v6 + 32);
  v8 = sub_100013F94();
  v9(v8);
  return v4;
}

void *sub_10002B8E0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_10002B9CC(v8, v7);
  v10 = *(type metadata accessor for PosterDataModel.DataPoint(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_10001E670(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_10002B9CC(uint64_t a1, uint64_t a2)
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

  sub_100002D54(&qword_1000639B0, &qword_10004D820);
  v4 = *(type metadata accessor for PosterDataModel.DataPoint(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BAC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(&unk_100063DE0, "4E");
    sub_10002C928();
    sub_10002B364(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002BB54()
{
  result = qword_1000646B8;
  if (!qword_1000646B8)
  {
    sub_100009240(&qword_1000637A8, "4E");
    sub_10002B364(&qword_1000646C0, &type metadata accessor for BackgroundMoonData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000646B8);
  }

  return result;
}

unint64_t sub_10002BC08()
{
  result = qword_1000646D0;
  if (!qword_1000646D0)
  {
    sub_100009240(&qword_1000646C8, &qword_10004D830);
    sub_10002B364(&qword_1000646D8, type metadata accessor for PosterDataModel.DataPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000646D0);
  }

  return result;
}

unint64_t sub_10002BCBC()
{
  result = qword_1000646E0[0];
  if (!qword_1000646E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000646E0);
  }

  return result;
}

uint64_t sub_10002BD10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10002CC30(a1, a2, a3, a4);
  sub_100005A24(v5);
  v7 = *(v6 + 16);
  v8 = sub_100013F94();
  v9(v8);
  return v4;
}

uint64_t getEnumTagSinglePayload for RenderingSessionManager.ExtensionReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10002BEB0);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10002BEF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_10004ACDC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002BF60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_100004288(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_10002C0E8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x10002C308);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          sub_100004544(a1, v20, v9, v7);
        }
      }

      return;
  }
}

uint64_t getEnumTagSinglePayload for PosterDataModel.DataPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterDataModel.DataPoint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x10002C49CLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PosterData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10002C5A0);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002C5DC()
{
  result = qword_100064768;
  if (!qword_100064768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064768);
  }

  return result;
}

unint64_t sub_10002C634()
{
  result = qword_100064770;
  if (!qword_100064770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064770);
  }

  return result;
}

unint64_t sub_10002C68C()
{
  result = qword_100064778;
  if (!qword_100064778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064778);
  }

  return result;
}

unint64_t sub_10002C6E4()
{
  result = qword_100064780;
  if (!qword_100064780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064780);
  }

  return result;
}

unint64_t sub_10002C73C()
{
  result = qword_100064788;
  if (!qword_100064788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064788);
  }

  return result;
}

unint64_t sub_10002C794()
{
  result = qword_100064790;
  if (!qword_100064790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064790);
  }

  return result;
}

unint64_t sub_10002C7EC()
{
  result = qword_100064798;
  if (!qword_100064798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064798);
  }

  return result;
}

unint64_t sub_10002C844()
{
  result = qword_1000647A0;
  if (!qword_1000647A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647A0);
  }

  return result;
}

unint64_t sub_10002C89C()
{
  result = qword_1000647A8;
  if (!qword_1000647A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647A8);
  }

  return result;
}

uint64_t sub_10002C958()
{

  return sub_10004AF0C();
}

void sub_10002CA44()
{
  v1._countAndFlagsBits = 1852402976;
  v1._object = 0xE400000000000000;

  sub_10004A9DC(v1);
}

uint64_t sub_10002CA64()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
  *(v2 - 136) = 0;
  *(v2 - 128) = 0xE000000000000000;
  return v2 - 136;
}

double sub_10002CA88(uint64_t a1, float a2)
{
  *v2 = a2;
  *(v3 - 136) = 0;
  *(v3 - 128) = 0xE000000000000000;
  *(v3 - 120) = a1;
  return v4 / 60.0;
}

uint64_t sub_10002CAA8()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);

  return sub_1000230EC(v2, v3, (v0 - 120));
}

uint64_t sub_10002CAF0()
{
  v1 = *(v0 - 136);
  v2 = *(*(v0 - 144) + 8);
  return *(v0 - 240);
}

uint64_t sub_10002CBB8@<X0>(uint64_t a1@<X8>)
{

  return sub_10002BD10(v1 + a1, v4, v2, v3);
}

uint64_t sub_10002CBD8()
{
  *(v1 - 144) = v0;

  return swift_slowAlloc();
}

uint64_t sub_10002CC10()
{

  return sub_10004B04C();
}

uint64_t sub_10002CC30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100002D54(a3, a4);
}

void sub_10002CC68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_10002CCA0()
{
  v0 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v18 - v2;
  v4 = sub_100049DBC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100049A5C();
  v6 = sub_100049A6C();
  result = sub_100004288(v3, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100049DAC();
    v8 = sub_100049E1C();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_100049E0C();
    v11 = sub_100049DFC();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_100049DEC();
    v14 = sub_100049D0C();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_100049CFC();
    v18[4] = v14;
    v18[5] = &protocol witness table for WeatherServiceFetchOptionsProvider;
    v18[1] = v17;
    return sub_100049D5C();
  }

  return result;
}

uint64_t sub_10002CE58()
{
  v0 = sub_100049DDC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_100049DCC();
}

__n128 sub_10002CE90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002CEA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002CEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10002CF38(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      if (qword_100063460 != -1)
      {
        sub_10002D61C();
      }

      v10 = qword_1000682D0;
      v23._countAndFlagsBits = 0x800000010004F430;
      v25._countAndFlagsBits = 0xD000000000000016;
      v25._object = 0x800000010004F410;
      v4 = sub_10002D63C(v25, v17, v18, v19, v20, v21, 0xD000000000000032, v23);
      v5 = v22;
      v7 = 0xEA00000000006873;
      v6 = 0x616C732E69666977;
    }

    else
    {
      v7 = 0x800000010004F470;
      if (qword_100063460 != -1)
      {
        sub_10002D61C();
      }

      v6 = 0xD000000000000013;
      v10 = qword_1000682D0;
      v23._countAndFlagsBits = 0x800000010004F4B0;
      v24._countAndFlagsBits = 0xD000000000000018;
      v24._object = 0x800000010004F490;
      v4 = sub_10002D63C(v24, v11, v12, v13, v14, v15, 0xD00000000000002CLL, v23);
      v5 = v16;
    }

    v8 = a2 & 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
}

Swift::Int sub_10002D100(char a1)
{
  sub_10004AFEC();
  sub_10004AFFC(a1 & 1);
  return sub_10004B00C();
}

id sub_10002D164()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v3 = &UIFontTextStyleFootnote;
  if (v1)
  {
    v4 = &UIFontWeightSemibold;
  }

  else
  {
    v3 = &UIFontTextStyleSubheadline;
    v4 = &UIFontWeightMedium;
  }

  v5 = [v2 preferredFontDescriptorWithTextStyle:*v3];
  sub_100002D54(&qword_1000647B0, &qword_10004DCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CBE0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100002D54(&qword_1000647B8, &qword_10004DCD0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10004CBE0;
  *(v7 + 32) = UIFontWeightTrait;
  *(v7 + 40) = *v4;
  type metadata accessor for TraitKey(0);
  sub_10002D478(&qword_1000635F0, type metadata accessor for TraitKey);
  v8 = UIFontDescriptorTraitsAttribute;
  v9 = UIFontWeightTrait;
  v10 = sub_10004A90C();
  *(inited + 64) = sub_100002D54(&qword_1000647C0, &qword_10004DCD8);
  *(inited + 40) = v10;
  type metadata accessor for AttributeName(0);
  sub_10002D478(&qword_100063600, type metadata accessor for AttributeName);
  sub_10004A90C();
  isa = sub_10004A8EC().super.isa;

  v12 = [v5 fontDescriptorByAddingAttributes:isa];

  v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t sub_10002D3F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_10004AF3C()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), v5 || (sub_10004AF3C()))
  {
    v6 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10002D478(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for LabelViewModel.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10002D58CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002D5C8()
{
  result = qword_1000647C8;
  if (!qword_1000647C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647C8);
  }

  return result;
}

uint64_t sub_10002D61C()
{

  return swift_once();
}

uint64_t sub_10002D63C(Swift::String a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, Swift::String a8)
{
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v11.super.isa = v8;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;

  return sub_10004990C(a1, v10, v11, v12, a8);
}

uint64_t sub_10002D660()
{
  v0 = sub_10004A71C();
  sub_10002D6B8(v0, qword_1000682B8);
  sub_100008F90(v0, qword_1000682B8);
  return sub_10004A70C();
}

uint64_t *sub_10002D6B8(uint64_t a1, uint64_t *a2)
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

id sub_10002D750()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000682D0 = result;
  return result;
}

void sub_10002D7A8(uint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

void sub_10002D844(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100049BAC();
  v5 = sub_1000059BC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v12 = v11 - v10;
  v13 = type metadata accessor for DynamicRotationState();
  v14 = sub_100005A24(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000059D0();
  v19 = v18 - v17;
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 1)
  {
    if (qword_1000634B0 != -1)
    {
      sub_10002FD40();
    }

    v22 = sub_100049FCC();
    sub_100008F90(v22, qword_1000683C0);
    v23 = sub_100049FAC();
    v24 = sub_10004AB9C();
    if (sub_10001A094(v24))
    {
      v37 = v7;
      v38 = v4;
      v39 = v2;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136446466;
      v27 = sub_10001A1C4();
      v29 = sub_1000230EC(v27, v28, &v40);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2050;
      v30 = 0;
      if ((a1 - 2) <= 2)
      {
        v30 = qword_10004DE20[a1 - 2];
      }

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Initial orientation of poster is %{public}s (%{public}f degrees)", v25, 0x16u);
      sub_100008FC8(v26);
      sub_100013F58();
      sub_100013F58();

      v4 = v38;
      v2 = v39;
      v7 = v37;
    }

    else
    {
    }

    sub_100049B9C();
    v31 = 0;
    if ((a1 - 2) <= 2)
    {
      v31 = dword_10004DE38[a1 - 2];
    }

    (*(v7 + 32))(v19, v12, v4);
    *(v19 + v13[5]) = v31;
    *(v19 + v13[6]) = 1065353216;
    *(v19 + v13[7]) = a1;
    *(v19 + v13[8]) = a1;
    v32 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
    swift_beginAccess();
    sub_10002F8D8(v19, v2 + v32);
    v33 = swift_endAccess();
    v34 = *(v2 + 16);
    __chkstk_darwin(v33);
    *(&v36 - 2) = v19;

    sub_10002E570(sub_10002FC6C, (&v36 - 4), v34);

    sub_10002FD60();
    sub_10002FCE8(v19, v35);
  }
}

uint64_t sub_10002DBA0()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicRotationState();
  v3 = sub_100005A24(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000059D0();
  v8 = v7 - v6;
  if (qword_1000634B0 != -1)
  {
    sub_10002FD40();
  }

  v9 = sub_100049FCC();
  sub_100008F90(v9, qword_1000683C0);
  v10 = sub_100049FAC();
  v11 = sub_10004AB9C();
  if (sub_10001A094(v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Rotation manager was invalidated", v12, 2u);
    sub_100013F58();
  }

  sub_10002EB74();
  v13 = *(v1 + 16);
  *(v1 + 16) = _swiftEmptyArrayStorage;

  *(v1 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_100049B9C();
  *(v8 + v2[5]) = 0;
  *(v8 + v2[6]) = 1065353216;
  *(v8 + v2[7]) = 0;
  *(v8 + v2[8]) = 0;
  v14 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_10002F7E8(v8, v1 + v14);
  return swift_endAccess();
}

void sub_10002DD38(unint64_t a1, void *a2)
{
  v3 = v2;
  v87 = *v2;
  v6 = sub_100049BAC();
  v7 = sub_1000059BC(v6);
  v85 = v8;
  v86 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_1000059D0();
  v13 = v12 - v11;
  v14 = type metadata accessor for DynamicRotationState();
  v15 = sub_100005A24(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000059D0();
  v20 = v19 - v18;
  v21 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v83 - v23;
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1)
  {
    v27 = v3 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
    swift_beginAccess();
    if (*&v27[v14[8]] != a1)
    {
      v83 = *&v27[v14[8]];
      v84 = a1;
      v28 = v3 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate;
      if (swift_unknownObjectWeakLoadStrong() && (v29 = v3, v30 = *(v28 + 1), ObjectType = swift_getObjectType(), LOBYTE(v30) = (*(v30 + 8))(ObjectType, v30), swift_unknownObjectRelease(), (v30 & 1) != 0))
      {
        if (a2)
        {
          v32 = qword_1000634B0;
          v33 = a2;
          if (v32 != -1)
          {
            sub_10002FD40();
          }

          v34 = sub_100049FCC();
          sub_100008F90(v34, qword_1000683C0);
          v35 = sub_100049FAC();
          v36 = sub_10004AB9C();
          if (sub_10001A094(v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v86 = v33;
            v88[0] = v38;
            *v37 = 136446466;
            v39 = sub_10001A1C4();
            v41 = sub_10002FD78(v39, v40);

            *(v37 + 4) = v41;
            *(v37 + 12) = 2082;
            v42 = sub_10001A1C4();
            v44 = sub_10002FD78(v42, v43);

            *(v37 + 14) = v44;
            _os_log_impl(&_mh_execute_header, v35, v36, "Starting animation of device orientation; currentOrientation=%{public}s, toOrientation=%{public}s", v37, 0x16u);
            swift_arrayDestroy();
            v33 = v86;
            sub_100013F58();
            sub_100013F58();
          }

          v45 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink;
          v46 = v29;
          v47 = *(v29 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink);
          if (v47)
          {
            [v47 invalidate];
          }

          v48 = *&v27[v14[5]];
          v49 = type metadata accessor for DynamicRotationAnimationState();
          *&v24[v49[7]] = v33;
          v50 = v83;
          v51 = v84;
          *&v24[v49[5]] = v83;
          *&v24[v49[6]] = v51;
          v52 = v33;
          sub_100049B9C();
          *&v24[v49[8]] = CFAbsoluteTimeGetCurrent();
          *&v24[v49[9]] = sub_10001A110(v50, v51, v48);
          *&v24[v49[10]] = v53;
          sub_100004544(v24, 0, 1, v49);
          v54 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
          v55 = v46;
          swift_beginAccess();
          sub_10002F84C(v24, v46 + v54);
          swift_endAccess();
          sub_100013820(0, &qword_100064960, CADisplayLink_ptr);
          v88[3] = v87;
          v88[0] = v46;

          v56 = sub_10002EAF4(v88, "displayLinkFired:");
          v57 = [objc_opt_self() mainScreen];
          v58 = [v57 maximumFramesPerSecond];

          if (v58 >= 60)
          {
            v59 = 60;
          }

          else
          {
            v59 = v58;
          }

          [v56 setPreferredFramesPerSecond:v59];
          v60 = [objc_opt_self() currentRunLoop];
          [v56 addToRunLoop:v60 forMode:NSRunLoopCommonModes];

          v61 = *(v55 + v45);
          *(v55 + v45) = v56;
        }

        else
        {
          if (qword_1000634B0 != -1)
          {
            sub_10002FD40();
          }

          v87 = v3;
          v70 = sub_100049FCC();
          sub_100008F90(v70, qword_1000683C0);
          v71 = sub_100049FAC();
          v72 = sub_10004AB9C();
          if (sub_10001A094(v72))
          {
            v73 = swift_slowAlloc();
            v88[0] = swift_slowAlloc();
            *v73 = 136446466;
            v74 = sub_10001A1C4();
            v76 = sub_10002FD78(v74, v75);

            *(v73 + 4) = v76;
            *(v73 + 12) = 2082;
            v77 = v84;
            v78 = sub_10001A1C4();
            v80 = sub_10002FD78(v78, v79);

            *(v73 + 14) = v80;
            _os_log_impl(&_mh_execute_header, v71, v72, "Updating orientation change without animating because animation settings were missing; orientation=%{public}s, newOrientation=%{public}s", v73, 0x16u);
            swift_arrayDestroy();
            sub_100013F58();
            sub_100013F58();
          }

          else
          {

            v77 = v84;
          }

          sub_100049B9C();
          v81 = 0;
          if (v77 - 2 <= 2)
          {
            v81 = dword_10004DE38[v77 - 2];
          }

          (*(v85 + 32))(v20, v13, v86);
          *(v20 + v14[5]) = v81;
          *(v20 + v14[6]) = 1065353216;
          *(v20 + v14[7]) = v83;
          *(v20 + v14[8]) = v77;
          sub_10002E608(v20);
          sub_10002FD60();
          sub_10002FCE8(v20, v82);
        }
      }

      else
      {
        if (qword_1000634B0 != -1)
        {
          sub_10002FD40();
        }

        v62 = sub_100049FCC();
        sub_100008F90(v62, qword_1000683C0);
        v63 = sub_100049FAC();
        v64 = sub_10004AB9C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v88[0] = v66;
          *v65 = 136446210;
          v67 = sub_10001A1C4();
          v69 = sub_1000230EC(v67, v68, v88);

          *(v65 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v63, v64, "Rotation manager was not granted a rendering session; Skipping rotation to %{public}s", v65, 0xCu);
          sub_100008FC8(v66);
          sub_100013F58();
          sub_100013F58();
        }
      }
    }
  }
}

uint64_t sub_10002E4E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v4 + 8))(a2, ObjectType, v4);
  return (*(v4 + 16))(a2, ObjectType, v4);
}

uint64_t sub_10002E570(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      swift_unknownObjectRetain();
      v4(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002E608(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004A1DC();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10004A1FC();
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicRotationState();
  v11 = v10 - 8;
  v30 = *(v10 - 8);
  v12 = *(v30 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10004A21C();
  v31 = *(v37 - 8);
  v14 = *(v31 + 64);
  v15 = __chkstk_darwin(v37);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  v20 = *(v2 + 16);
  v39 = a1;

  sub_10002E570(sub_10002F8BC, v38, v20);

  v21 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_10002F8D8(a1, v2 + v21);
  result = swift_endAccess();
  if (*(a1 + *(v11 + 32)) >= 1.0)
  {
    sub_10002EB74();
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v23 = sub_10004ABFC();
    sub_10004A20C();
    sub_10004A23C();
    v31 = *(v31 + 8);
    (v31)(v17, v37);
    v24 = swift_allocObject();
    swift_weakInit();
    sub_100024F18(a1, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_10002FC88(v13, v26 + v25, type metadata accessor for DynamicRotationState);
    aBlock[4] = sub_10002FA40;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012500;
    aBlock[3] = &unk_10005F168;
    v27 = _Block_copy(aBlock);

    sub_10004A1EC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10002FABC();
    sub_100002D54(&qword_100063C58, &unk_10004DE10);
    sub_10002FB14();
    v28 = v33;
    v29 = v36;
    sub_10004ACFC();
    sub_10004ABDC();
    _Block_release(v27);

    (*(v35 + 8))(v28, v29);
    (*(v32 + 8))(v9, v34);
    return (v31)(v19, v37);
  }

  return result;
}

id sub_10002EAF4(uint64_t *a1, uint64_t a2)
{
  sub_10002B4C4(a1, a1[3]);
  v4 = sub_10004AF2C();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  sub_100008FC8(a1);
  return v5;
}

uint64_t sub_10002EB74()
{
  v1 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink;
  v6 = *(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink);
  if (v6)
  {
    [v6 invalidate];
    v7 = *(v0 + v5);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + v5) = 0;

  v8 = type metadata accessor for DynamicRotationAnimationState();
  sub_100004544(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
  swift_beginAccess();
  sub_10002F84C(v4, v0 + v9);
  return swift_endAccess();
}

id sub_10002EC68(void *a1)
{
  v3 = type metadata accessor for DynamicRotationState();
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for DynamicRotationAnimationState();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
  swift_beginAccess();
  sub_10002FB78(v1 + v15, v10);
  if (sub_100004288(v10, 1, v11) == 1)
  {
    sub_10002FBE8(v10);
    if (qword_1000634B0 != -1)
    {
      swift_once();
    }

    v16 = sub_100049FCC();
    sub_100008F90(v16, qword_1000683C0);
    v17 = sub_100049FAC();
    v18 = sub_10004AB7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Display link fired with no animation state", v19, 2u);
    }

    return [a1 invalidate];
  }

  else
  {
    sub_10002FC88(v10, v14, type metadata accessor for DynamicRotationAnimationState);
    [*&v14[v11[7]] progressAtTime:CFAbsoluteTimeGetCurrent() - *&v14[v11[8]]];
    v21 = *&v14[v11[9]];
    v23 = v22;
    v24 = fmodf(v21 + ((*&v14[v11[10]] - v21) * v23), 360.0);
    v25 = v11[6];
    v26 = *&v14[v11[5]];
    v27 = *&v14[v25];
    v28 = sub_100049BAC();
    (*(*(v28 - 8) + 16))(v6, v14, v28);
    *&v6[v3[5]] = v24;
    *&v6[v3[6]] = v23;
    *&v6[v3[7]] = v26;
    *&v6[v3[8]] = v27;
    sub_10002E608(v6);
    sub_10002FCE8(v6, type metadata accessor for DynamicRotationState);
    return sub_10002FCE8(v14, type metadata accessor for DynamicRotationAnimationState);
  }
}

uint64_t sub_10002EFFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 8))(a2, ObjectType, v4);
}

uint64_t sub_10002F05C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DynamicRotationState();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v30 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
    swift_beginAccess();
    sub_10002FB78(v12 + v13, v10);
    v14 = type metadata accessor for DynamicRotationAnimationState();
    if (sub_100004288(v10, 1, v14) == 1)
    {
      sub_10002FBE8(v10);
      if (qword_1000634B0 != -1)
      {
        swift_once();
      }

      v15 = sub_100049FCC();
      sub_100008F90(v15, qword_1000683C0);
      sub_100024F18(a2, v6);
      v16 = sub_100049FAC();
      v17 = sub_10004AB9C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30[0] = v19;
        *v18 = 136446210;
        v20 = *&v6[*(v3 + 32)];
        v21 = sub_10001A1C4();
        v23 = v22;
        sub_10002FCE8(v6, type metadata accessor for DynamicRotationState);
        v24 = sub_1000230EC(v21, v23, v30);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v16, v17, "Completed animation of device orientation to %{public}s", v18, 0xCu);
        sub_100008FC8(v19);
      }

      else
      {

        v25 = sub_10002FCE8(v6, type metadata accessor for DynamicRotationState);
      }

      v26 = *(v12 + 16);
      __chkstk_darwin(v25);
      v30[-2] = a2;

      sub_10002E570(sub_10002FC50, &v30[-4], v26);

      v27 = v12 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v27 + 8);
        ObjectType = swift_getObjectType();
        (*(v28 + 16))(ObjectType, v28);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return sub_10002FBE8(v10);
    }
  }

  return result;
}

uint64_t sub_10002F3EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 16))(a2, ObjectType, v4);
}

uint64_t sub_10002F44C()
{
  v1 = *(v0 + 16);

  sub_10002FD60();
  sub_10002FCE8(v0 + v2, v3);

  sub_10002FBE8(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState);
  sub_100013DE4(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate);
  return v0;
}

uint64_t sub_10002F4B0()
{
  sub_10002F44C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DynamicRotationManager()
{
  result = qword_1000648A8;
  if (!qword_1000648A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F55C()
{
  v0 = type metadata accessor for DynamicRotationState();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10002F648();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002F648()
{
  if (!qword_1000648B8)
  {
    type metadata accessor for DynamicRotationAnimationState();
    v0 = sub_10004ACDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000648B8);
    }
  }
}

uint64_t sub_10002F6A0()
{
  v1 = sub_100049BAC();
  v2 = sub_1000059BC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000059D0();
  v9 = v8 - v7;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v10 = v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
  sub_100049B9C();
  (*(v4 + 32))(v10, v9, v1);
  v11 = type metadata accessor for DynamicRotationState();
  *(v10 + v11[5]) = 0;
  *(v10 + v11[6]) = 1065353216;
  *(v10 + v11[7]) = 0;
  *(v10 + v11[8]) = 0;
  *(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink) = 0;
  v12 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
  v13 = type metadata accessor for DynamicRotationAnimationState();
  sub_100004544(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_10002F7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F93C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F974()
{
  v1 = *(type metadata accessor for DynamicRotationState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_100049BAC();
  sub_100005A24(v6);
  (*(v7 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002FA40()
{
  v1 = *(type metadata accessor for DynamicRotationState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10002F05C(v2, v3);
}

uint64_t sub_10002FAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002FABC()
{
  result = qword_100063C50;
  if (!qword_100063C50)
  {
    sub_10004A1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C50);
  }

  return result;
}

unint64_t sub_10002FB14()
{
  result = qword_100063C60;
  if (!qword_100063C60)
  {
    sub_100009240(&qword_100063C58, &unk_10004DE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C60);
  }

  return result;
}