uint64_t sub_1000015F8()
{
  v0 = sub_100005734();
  sub_100003384(v0, qword_10000C390);
  sub_10000334C(v0, qword_10000C390);
  return sub_100005714();
}

uint64_t sub_100001644()
{
  v1 = v0;
  if (qword_10000C280 != -1)
  {
    swift_once();
  }

  v2 = sub_100005734();
  sub_10000334C(v2, qword_10000C390);
  v3 = sub_100005724();
  v4 = sub_100005794();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#PnRCarPlayOnDeviceWorker init", v5, 2u);
  }

  *(v1 + 16) = &_swiftEmptySetSingleton;
  return v1;
}

void sub_100001730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v22 = a1;
  v23 = sub_100005654();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23);
  v7 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v25 = [v7 UI];
  swift_unknownObjectRelease();
  v8 = [v25 publisher];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v31 = sub_100004C1C;
  v32 = v9;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100001B40;
  v30 = &unk_100008638;
  v10 = _Block_copy(&aBlock);

  v11 = [v8 filterWithIsIncluded:v10];
  _Block_release(v10);

  v31 = sub_100001B98;
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100001C48;
  v30 = &unk_100008660;
  v12 = _Block_copy(&aBlock);
  v13 = [v11 mapWithTransform:v12];
  _Block_release(v12);

  v31 = nullsub_1;
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100001CE0;
  v30 = &unk_100008688;
  v14 = _Block_copy(&aBlock);
  v15 = v23;
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v23);
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 2) = v26;
  *(v17 + 3) = v18;
  *(v17 + 4) = a2;
  (*(v5 + 32))(&v17[v16], &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v31 = sub_100004E00;
  v32 = v17;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100002C84;
  v30 = &unk_1000086D8;
  v19 = _Block_copy(&aBlock);

  v20 = [v13 sinkWithCompletion:v14 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v14);
}

uint64_t sub_100001B40(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_100001B98(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = sub_100004B98(&qword_10000C268, &qword_100005DA0);
  v4 = [a1 eventBody];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 carplayPPID];

    if (v6)
    {
      v7 = sub_100005764();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    *a2 = v7;
    a2[1] = v9;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

id sub_100001C48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(v8);

  sub_100005510(v8, v8[3]);
  v6 = sub_100005814();
  sub_100004AF0(v8);

  return v6;
}

void sub_100001CE0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100001D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v129 = a5;
  v9 = sub_100005654();
  v127 = *(v9 - 8);
  v128 = v9;
  v10 = v127[8];
  v11 = (__chkstk_darwin)();
  v123 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v124 = &v112 - v14;
  v122 = v15;
  __chkstk_darwin(v13);
  v121 = &v112 - v16;
  v17 = sub_100004B98(&qword_10000C218, &qword_100005D58);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v112 - v22;
  v24 = sub_100004B98(&qword_10000C220, &qword_100005D60);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v112 - v30;
  __chkstk_darwin(v29);
  v33 = &v112 - v32;
  swift_beginAccess();
  v34 = *(a2 + 16);

  v125 = a3;
  v126 = a4;
  LOBYTE(a4) = sub_100002B00(a3, a4, v34);

  if (a4)
  {
    if (qword_10000C280 != -1)
    {
      swift_once();
    }

    v35 = sub_100005734();
    sub_10000334C(v35, qword_10000C390);
    v36 = sub_100005724();
    v37 = sub_100005794();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_15;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "#PnRCarPlayOnDeviceWorker We have processed this turnID. Ignoring this event...";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v36, v37, v39, v38, 2u);

LABEL_15:

    return;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (!v40)
  {
    swift_unknownObjectRelease();
    if (qword_10000C280 != -1)
    {
      swift_once();
    }

    v47 = sub_100005734();
    sub_10000334C(v47, qword_10000C390);
    v36 = sub_100005724();
    v37 = sub_100005794();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_15;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "#PnRCarPlayOnDeviceWorker We are getting a nil carplayPPID for this event. Ignoring this event...";
    goto LABEL_14;
  }

  v118 = a2;
  v120 = a1;
  v119 = v40;
  sub_100005624();
  v41 = sub_100005694();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v33, 1, v41) == 1)
  {
    v44 = &qword_10000C220;
    v45 = &qword_100005D60;
    v46 = v33;
LABEL_9:
    sub_100004E78(v46, v44, v45);
LABEL_17:
    if (qword_10000C280 != -1)
    {
      swift_once();
    }

    v50 = sub_100005734();
    sub_10000334C(v50, qword_10000C390);
    v51 = sub_100005724();
    v52 = sub_100005794();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "#PnRCarPlayOnDeviceWorker We don't have a valid perf metrics for this siri request. Ignorning this event...", v53, 2u);
    }

LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  v116 = sub_100005674();
  v49 = v48;
  v117 = *(v42 + 8);
  v117(v33, v41);
  if (v49)
  {
    goto LABEL_17;
  }

  sub_100005624();
  if (v43(v31, 1, v41) == 1)
  {
    v44 = &qword_10000C220;
    v45 = &qword_100005D60;
    v46 = v31;
    goto LABEL_9;
  }

  sub_100005664();
  v117(v31, v41);
  v54 = sub_1000056B4();
  v55 = *(v54 - 8);
  isa = v55[6].isa;
  if (isa(v23, 1, v54) == 1)
  {
    v44 = &qword_10000C218;
    v45 = &qword_100005D58;
    v46 = v23;
    goto LABEL_9;
  }

  v114 = v54;
  v56 = v55;
  v113 = sub_1000056A4();
  v57 = v55[1].isa;
  v58 = v23;
  v59 = v114;
  v112 = v56 + 1;
  v57(v58);
  v60 = v57;
  sub_100005624();
  if (v43(v28, 1, v41) == 1)
  {
    v44 = &qword_10000C220;
    v45 = &qword_100005D60;
    v46 = v28;
    goto LABEL_9;
  }

  sub_100005684();
  v117(v28, v41);
  if (isa(v21, 1, v59) == 1)
  {
    v44 = &qword_10000C218;
    v45 = &qword_100005D58;
    v46 = v21;
    goto LABEL_9;
  }

  v61 = *&v116;
  v62 = sub_1000056A4();
  v60(v21, v59);
  if (v61 <= 0.0 || !v113 || !v62)
  {
    if (qword_10000C280 != -1)
    {
      swift_once();
    }

    v101 = sub_100005734();
    sub_10000334C(v101, qword_10000C390);
    v51 = sub_100005724();
    v102 = sub_100005794();
    if (os_log_type_enabled(v51, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v51, v102, "#PnRCarPlayOnDeviceWorker We are getting an erroneous SRT or timestamp for this event. Ignoring this event...", v103, 2u);
    }

    goto LABEL_21;
  }

  v117 = v62;
  v63 = 1000.0;
  if (qword_10000C280 != -1)
  {
    v116 = 0x408F400000000000;
    swift_once();
    v63 = *&v116;
  }

  v64 = v61 * v63;
  v65 = sub_100005734();
  sub_10000334C(v65, qword_10000C390);
  v67 = v127;
  v66 = v128;
  v68 = v127[2];
  v69 = v121;
  v70 = v129;
  v68(v121, v129, v128);
  v71 = v124;
  v116 = v68;
  v68(v124, v70, v66);
  swift_unknownObjectRetain();
  v72 = v126;

  v73 = sub_100005724();
  v74 = sub_100005794();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = v69;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    isa = swift_slowAlloc();
    aBlock[0] = isa;
    *v76 = 136316674;
    *(v76 + 4) = sub_1000033E8(v125, v72, aBlock);
    *(v76 + 12) = 2112;
    v78 = v119;
    *(v76 + 14) = v119;
    *v77 = v78;
    *(v76 + 22) = 2112;
    v79 = objc_allocWithZone(NSNumber);
    LODWORD(v114) = v74;
    v80 = v79;
    swift_unknownObjectRetain();
    v81 = [v80 initWithDouble:v64];
    *(v76 + 24) = v81;
    v77[1] = v81;
    *(v76 + 32) = 2112;
    v82 = objc_allocWithZone(NSNumber);
    v83 = [v82 initWithUnsignedLongLong:v113];
    *(v76 + 34) = v83;
    v77[2] = v83;
    *(v76 + 42) = 2112;
    v84 = objc_allocWithZone(NSNumber);
    v85 = [v84 initWithUnsignedLongLong:v117];
    *(v76 + 44) = v85;
    v77[3] = v85;
    *(v76 + 52) = 2080;
    v86 = v75;
    v87 = sub_100005614();
    if (v88)
    {
      v89 = v87;
    }

    else
    {
      v89 = 0;
    }

    v90 = 0xE000000000000000;
    if (v88)
    {
      v91 = v88;
    }

    else
    {
      v91 = 0xE000000000000000;
    }

    v112 = v73;
    v92 = v127[1];
    v92(v86, v128);
    v93 = sub_1000033E8(v89, v91, aBlock);
    v66 = v128;

    *(v76 + 54) = v93;
    *(v76 + 62) = 2080;
    v72 = v126;
    v94 = v124;
    v95 = sub_100005634();
    if (v96)
    {
      v97 = v95;
    }

    else
    {
      v97 = 0;
    }

    if (v96)
    {
      v90 = v96;
    }

    v92(v94, v66);
    v98 = v125;
    v67 = v127;
    v99 = sub_1000033E8(v97, v90, aBlock);

    *(v76 + 64) = v99;
    v100 = v112;
    _os_log_impl(&_mh_execute_header, v112, v114, "#PnRCarPlayOnDeviceWorker Submitting perf analytics to CarPlay's CoreAnalytics: turnID %s carplayPPID %@ SRT (in ms) %@ startTimestamp %@ endTimestamp %@ requestType %s error %s", v76, 0x48u);
    sub_100004B98(&qword_10000C228, &qword_100005D68);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {

    v104 = v67[1];
    v104(v71, v66);
    v104(v69, v66);
    v98 = v125;
  }

  v105 = v118;
  swift_beginAccess();

  sub_100003990(&v131, v98, v72);
  swift_endAccess();

  v106 = sub_100005754();
  v107 = v123;
  (v116)(v123, v129, v66);
  v108 = (*(v67 + 80) + 56) & ~*(v67 + 80);
  v109 = swift_allocObject();
  *(v109 + 16) = v119;
  *(v109 + 24) = v64;
  v110 = v117;
  *(v109 + 32) = v113;
  *(v109 + 40) = v110;
  *(v109 + 48) = v105;
  (v67[4])(v109 + v108, v107, v66);
  aBlock[4] = sub_100004FA4;
  aBlock[5] = v109;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002BF8;
  aBlock[3] = &unk_100008728;
  v111 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  AnalyticsSendEventLazy();
  _Block_release(v111);
  swift_unknownObjectRelease();
}

uint64_t sub_100002B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_100005844();
  sub_100005774();
  v7 = sub_100005854();
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
    if (v12 || (sub_100005824() & 1) != 0)
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

Class sub_100002BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000052C4();
    v5.super.isa = sub_100005744().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100002C84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100002CE4()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100002D38()
{
  objc_allocWithZone(sub_1000055E4());
  v1 = sub_1000055D4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100002DAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002E50;

  return sub_100004384();
}

uint64_t sub_100002E50(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100003030;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003030()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003124()
{
  v0 = type metadata accessor for PnRCarPlayOnDeviceWorker();
  v1 = sub_10000330C(&qword_10000C208);

  return MLHostExtension.configuration.getter(v0, v1);
}

uint64_t sub_100003190@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PnRCarPlayOnDeviceWorker();
  v2 = swift_allocObject();
  result = sub_100001644();
  *a1 = v2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PnRCarPlayOnDeviceWorker();
  sub_10000330C(&qword_10000C128);
  sub_1000055C4();
  return 0;
}

uint64_t sub_10000330C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PnRCarPlayOnDeviceWorker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000334C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003384(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000033E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000034B4(v11, 0, 0, 1, a1, a2);
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
    sub_100004B3C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004AF0(v11);
  return v7;
}

unint64_t sub_1000034B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000035C0(a5, a6);
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
    result = sub_1000057F4();
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

char *sub_1000035C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000360C(a1, a2);
  sub_10000373C(&off_1000084D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000360C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003828(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000057F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100005784();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003828(v10, 0);
        result = sub_1000057E4();
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

uint64_t sub_10000373C(uint64_t result)
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

  result = sub_10000389C(result, v12, 1, v3);
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

void *sub_100003828(uint64_t a1, uint64_t a2)
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

  sub_100004B98(&qword_10000C210, &qword_100005D50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000389C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004B98(&qword_10000C210, &qword_100005D50);
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

uint64_t sub_100003990(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100005844();
  sub_100005774();
  v9 = sub_100005854();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100005824() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100003D40(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100003AE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004B98(&qword_10000C260, &qword_100005D98);
  result = sub_1000057D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100005844();
      sub_100005774();
      result = sub_100005854();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100003D40(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100003AE0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100003EC0();
      goto LABEL_16;
    }

    sub_10000401C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100005844();
  sub_100005774();
  result = sub_100005854();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100005824();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100005834();
  __break(1u);
  return result;
}

void *sub_100003EC0()
{
  v1 = v0;
  sub_100004B98(&qword_10000C260, &qword_100005D98);
  v2 = *v0;
  v3 = sub_1000057C4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_10000401C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004B98(&qword_10000C260, &qword_100005D98);
  result = sub_1000057D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100005844();

      sub_100005774();
      result = sub_100005854();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

unint64_t sub_100004254(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100005844();
  sub_100005774();
  v6 = sub_100005854();

  return sub_1000042CC(a1, a2, v6);
}

unint64_t sub_1000042CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005824())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100004384()
{
  v1[2] = v0;
  v2 = sub_100005654();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1000056F4();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_100005704();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000044FC, 0, 0);
}

uint64_t sub_1000044FC()
{
  if (qword_10000C280 != -1)
  {
    swift_once();
  }

  v1 = sub_100005734();
  v0[12] = sub_10000334C(v1, qword_10000C390);
  v2 = sub_100005724();
  v3 = sub_1000057B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#PnRCarPlayOnDeviceWorker doWork start", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  (*(v6 + 104))(v5, enum case for StreamIdentifier.CarPlaySELFProcessedStreamIdentifier(_:), v7);
  (*(v10 + 104))(v8, enum case for ReaderDomain.PnRCarPlayOnDeviceWorker(_:), v9);
  v11 = sub_1000056E4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[13] = sub_1000056D4();
  v14 = async function pointer to PnROnDeviceMetrics.computeSiriPnRTurnGrainMetrics()[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_1000046DC;

  return PnROnDeviceMetrics.computeSiriPnRTurnGrainMetrics()();
}

uint64_t sub_1000046DC(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1000047FC, 0, 0);
}

uint64_t sub_1000047FC()
{
  v34 = v0;
  v1 = v0[15];
  if (!v1)
  {
    v22 = v0[12];
    v19 = sub_100005724();
    v20 = sub_1000057A4();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = "#PnRCarPlayOnDeviceWorker did not get a valid turnSummaries. Failing and rescheduling...";
    goto LABEL_14;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v0[15] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v32 = *(v3 + 56);
    v7 = (v3 - 8);
    v31 = v5;
    v5(v0[5], v6, v0[3]);
    while (1)
    {
      v9 = sub_100005644();
      if (v10)
      {
        v11 = v9;
        v12 = v10;
        v13 = v0[12];
        v14 = sub_100005724();
        v15 = sub_1000057B4();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v33 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_1000033E8(v11, v12, &v33);
          _os_log_impl(&_mh_execute_header, v14, v15, "#PnRCarPlayOnDeviceWorker processing turnID: %s", v16, 0xCu);
          sub_100004AF0(v17);

          v4 = v31;
        }

        v8 = v0[2];
        sub_100001730(v11, v12, v0[5]);
      }

      (*v7)(v0[5], v0[3]);
      v6 += v32;
      if (!--v2)
      {
        break;
      }

      v4(v0[5], v6, v0[3]);
    }
  }

  v18 = v0[12];

  v19 = sub_100005724();
  v20 = sub_1000057B4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = "#PnRCarPlayOnDeviceWorker doWork successful";
LABEL_14:
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, v21, v23, 2u);
  }

LABEL_15:
  v24 = v0[11];
  v25 = v0[8];
  v26 = v0[5];

  v27 = objc_allocWithZone(sub_1000055E4());
  v28 = sub_1000055D4();

  v29 = v0[1];

  return v29(v28);
}

uint64_t sub_100004AF0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004B3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004B98(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004BE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004C1C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = CFAbsoluteTimeGetCurrent() + -604800.0;
  [a1 timestamp];
  if (v5 < v6 && (v7 = [a1 eventBody]) != 0 && (v8 = v7, v9 = objc_msgSend(v7, "turnID"), v8, v9))
  {
    v10 = sub_100005764();
    v12 = v11;

    if (v10 == v3 && v12 == v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_100005824();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004D34()
{
  v1 = sub_100005654();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100004E00(uint64_t a1)
{
  v3 = *(sub_100005654() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100001D48(a1, v4, v5, v6, v7);
}

uint64_t sub_100004E78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004B98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004ED8()
{
  v1 = sub_100005654();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100004FA4()
{
  v1 = *(sub_100005654() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v6 = *(v0 + 4);
  v5 = *(v0 + 5);
  sub_100004B98(&qword_10000C238, &qword_100005D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100005C70;
  *(inited + 32) = 0x5079616C70726163;
  *(inited + 40) = 0xEB00000000444950;
  *(inited + 48) = v3;
  *(inited + 56) = 0x534D6E49747273;
  *(inited + 64) = 0xE700000000000000;
  v8 = objc_allocWithZone(NSNumber);
  v9 = v3;
  *(inited + 72) = [v8 initWithDouble:v4];
  strcpy((inited + 80), "startTimestamp");
  *(inited + 95) = -18;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v6];
  strcpy((inited + 104), "endTimestamp");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v5];
  *(inited + 128) = 0x5474736575716572;
  *(inited + 136) = 0xEB00000000657079;
  v11 = sub_100005614();
  v12 = v10;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = sub_100005310(&off_100008500);
  sub_100004B98(&qword_10000C250, &qword_100005D88);
  swift_arrayDestroy();
  if (*(v14 + 16) && (v12 ? (v15 = v11) : (v15 = 0), v16 = sub_100004254(v15, v13), (v17 & 1) != 0))
  {
    v18 = *(*(v14 + 56) + 4 * v16);
  }

  else
  {
    v18 = 0;
  }

  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInt:v18];
  *(inited + 152) = 0x726F727265;
  *(inited + 160) = 0xE500000000000000;
  sub_100005634();
  v19 = objc_allocWithZone(NSString);
  v20 = sub_100005754();

  v21 = [v19 initWithString:v20];

  *(inited + 168) = v21;
  v22 = sub_10000540C(inited);
  swift_setDeallocating();
  sub_100004B98(&qword_10000C240, &qword_100005D78);
  swift_arrayDestroy();
  return v22;
}

unint64_t sub_1000052C4()
{
  result = qword_10000C230;
  if (!qword_10000C230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C230);
  }

  return result;
}

unint64_t sub_100005310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004B98(&qword_10000C258, &qword_100005D90);
    v3 = sub_100005804();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100004254(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10000540C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004B98(&qword_10000C248, &qword_100005D80);
    v3 = sub_100005804();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100004254(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_100005510(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void type metadata accessor for SISchemaUEIRequestType()
{
  if (!qword_10000C270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C270);
    }
  }
}