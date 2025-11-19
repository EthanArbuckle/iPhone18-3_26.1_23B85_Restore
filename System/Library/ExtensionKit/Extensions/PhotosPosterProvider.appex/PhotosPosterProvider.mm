unint64_t sub_10000221C(unint64_t result)
{
  if (result >= 3)
  {
    result = sub_10002F7C4();
    __break(1u);
  }

  return result;
}

__n128 sub_100002284()
{
  [v0 deviceMotionRotation];
  [v0 deviceOrientation];
  return v2;
}

uint64_t sub_100002318(uint64_t a1, id *a2)
{
  result = sub_10002F3E4();
  *a2 = 0;
  return result;
}

uint64_t sub_1000023AC(uint64_t a1, id *a2)
{
  v3 = sub_10002F3F4();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_10000242C@<X0>(void *a1@<X8>)
{
  result = sub_100002454();
  *a1 = result;
  return result;
}

NSString sub_100002454()
{
  sub_10002F404();
  v0 = sub_10002F3D4();

  return v0;
}

uint64_t sub_1000024A8()
{
  sub_10002F404();
  v0 = sub_10002F484();

  return v0;
}

uint64_t sub_1000024FC()
{
  sub_10002F404();
  sub_10002F444();
}

Swift::Int sub_10000256C()
{
  sub_10002F404();
  sub_10002F8D4();
  sub_10002F444();
  v0 = sub_10002F8F4();

  return v0;
}

uint64_t sub_1000025EC()
{
  sub_100002A70();
  result = sub_100002660();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100002618@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10002F3D4();

  *a2 = v5;
  return result;
}

uint64_t sub_100002664(uint64_t a1)
{
  v2 = sub_1000028E0(&qword_100049A68, type metadata accessor for PISegmentationOption);
  v3 = sub_1000028E0(&qword_100049A70, type metadata accessor for PISegmentationOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002720(uint64_t a1)
{
  v2 = sub_1000028E0(&qword_100049A78, type metadata accessor for PFParallaxStyleCategory);
  v3 = sub_1000028E0(&unk_100049A80, type metadata accessor for PFParallaxStyleCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100002804(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000028E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002A7C()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B530 = result;
  return result;
}

uint64_t sub_100002B2C(uint64_t a1, uint64_t a2, Swift::Int a3, char a4)
{
  v6 = [objc_opt_self() deviceSupportsLandscapeConfiguration];
  sub_100004120(&qword_100049CD0, &unk_100035280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000351F0;
  v8 = PISegmentationOptionClassification;
  *(inited + 32) = PISegmentationOptionClassification;
  result = sub_1000042B4(0, &qword_100049CD8, NSNumber_ptr);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v6)
    {
      v10 = 136;
    }

    else
    {
      v10 = 8;
    }

    v11 = v8;
    v12.super.super.isa = sub_10002F634(a3).super.super.isa;
    v13 = PISegmentationOptionLayerStackOptions;
    *(inited + 40) = v12;
    *(inited + 48) = v13;
    v14 = v13;
    v15.super.super.isa = sub_10002F634(v10).super.super.isa;
    v16 = PISegmentationOptionDisableRendering;
    *(inited + 56) = v15;
    *(inited + 64) = v16;
    v17 = v16;
    v18.super.super.isa = sub_10002F624(a4 & 1).super.super.isa;
    v19 = PISegmentationOptionEnableSpatialPhoto;
    *(inited + 72) = v18;
    *(inited + 80) = v19;
    v20 = v19;
    *(inited + 88) = sub_10002F624(1);
    type metadata accessor for PISegmentationOption(0);
    sub_1000042F4(&qword_100049A68, type metadata accessor for PISegmentationOption);
    v21 = sub_10002F3B4();
    v22 = sub_100004430();
    sub_100002CEC(v22, v23, v21);
  }

  return result;
}

uint64_t sub_100002CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002F1B4();
  v7 = sub_100004368(v6);
  v83 = v8;
  v84 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000441C();
  sub_1000043E8();
  __chkstk_darwin(v11);
  v79 = v77 - v12;
  v13 = sub_10002F304();
  v14 = sub_100004368(v13);
  v86 = v15;
  v87 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  if (qword_100049660 != -1)
  {
    sub_10000433C();
    swift_once();
  }

  v21 = qword_10004B530;
  sub_10002F2F4();
  sub_10002F614();
  sub_10002F2E4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = (v22 + 16);
  v24 = objc_allocWithZone(PHWallpaperAsset);
  v78 = a1;
  v25 = [v24 initWithPhotoAsset:a1];
  v82 = objc_opt_self();
  v26 = v25;
  sub_10002F134(v27);
  v29 = v28;
  sub_100011048(a3);
  v88 = v19;
  v81 = a2;
  isa = sub_10002F394().super.isa;

  v31 = swift_allocObject();
  *(v31 + 16) = v22;
  *(v31 + 24) = v20;
  aBlock[4] = sub_100004294;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034A4;
  aBlock[3] = &unk_100041060;
  v32 = _Block_copy(aBlock);
  v85 = v22;

  v33 = v20;

  [v82 exportWallpaperForAsset:v26 toURL:v29 options:isa completion:v32];
  v34 = v32;
  v35 = v88;
  _Block_release(v34);
  v82 = v26;

  v36 = v21;
  sub_10002F5F4();
  sub_10002F604();
  sub_10002F2E4();
  swift_beginAccess();
  if (*v23)
  {
    v80 = v33;
    swift_errorRetain();
    v37 = sub_10002F5D4();
    v38 = v83;
    v39 = v84;
    v40 = v79;
    (*(v83 + 16))(v79, v81, v84);
    if (os_log_type_enabled(v21, v37))
    {
      v41 = sub_10000443C();
      v81 = swift_slowAlloc();
      v90 = v81;
      *v41 = 136315650;
      v42 = [v78 localIdentifier];
      LODWORD(v78) = v37;
      v43 = v42;
      v44 = v38;
      v45 = sub_10002F404();
      v47 = v46;

      v48 = sub_100022BB4(v45, v47, &v90);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      v49 = sub_10002F184();
      v51 = v50;
      v52 = *(v44 + 8);
      v53 = sub_100004430();
      v54(v53);
      v55 = sub_100022BB4(v49, v51, &v90);

      *(v41 + 14) = v55;
      *(v41 + 22) = 2080;
      swift_getErrorValue();
      v56 = sub_10002F884();
      v58 = sub_100022BB4(v56, v57, &v90);

      *(v41 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v36, v78, "Failed to export asset %s to directory at %s, error:%s)", v41, 0x20u);
      swift_arrayDestroy();
      v35 = v88;
      sub_100004398();
      sub_100004398();
    }

    else
    {
      (*(v38 + 8))(v40, v39);
    }

    swift_willThrow();

    (*(v86 + 8))(v35, v87);
  }

  else
  {
    v59 = sub_10002F5B4();
    v60 = v83;
    v61 = v84;
    v62 = v77[0];
    (*(v83 + 16))(v77[0], v81, v84);
    if (os_log_type_enabled(v21, v59))
    {
      v63 = swift_slowAlloc();
      v80 = v33;
      v64 = v63;
      v81 = swift_slowAlloc();
      v90 = v81;
      *v64 = 136315394;
      v65 = [v78 localIdentifier];
      LODWORD(v79) = v59;
      v66 = v62;
      v67 = v60;
      v68 = v65;
      v69 = sub_10002F404();
      v71 = v70;

      v72 = sub_100022BB4(v69, v71, &v90);

      *(v64 + 4) = v72;
      *(v64 + 12) = 2080;
      v73 = sub_10002F184();
      v74 = (*(v67 + 8))(v66, v61);
      sub_100004454(v74, v75, &v90);
      sub_100004410();

      *(v64 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v36, v79, "Exported asset %s to directory %s", v64, 0x16u);
      swift_arrayDestroy();
      sub_100004398();
      sub_10000437C();
    }

    else
    {

      (*(v60 + 8))(v62, v61);
    }

    (*(v86 + 8))(v35, v87);
  }
}

void sub_100003438(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a3);
}

void sub_1000034A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100003510(void *a1, void *a2, uint64_t a3, Swift::Int a4, int a5)
{
  v120 = a5;
  v119 = a4;
  v125 = a3;
  v131 = a2;
  v6 = sub_10002F1B4();
  v7 = sub_100004368(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000441C();
  sub_1000043E8();
  __chkstk_darwin(v12);
  sub_1000043E8();
  v14 = __chkstk_darwin(v13);
  v16 = (v108 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = (v108 - v18);
  __chkstk_darwin(v17);
  v21 = v108 - v20;
  v112 = a1;
  v22 = [a1 media];
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  v23 = sub_10002F4C4();

  v130 = sub_10002A9E4(v23);
  if (v130)
  {
    v109 = v16;
    v25 = v9;
    v9 = 0;
    v123 = v23 & 0xFFFFFFFFFFFFFF8;
    v128 = (v25 + 8);
    v129 = v23 & 0xC000000000000001;
    v110 = v25;
    v118 = (v25 + 16);
    *&v24 = 138412546;
    v113 = v24;
    v126 = v21;
    v127 = v23;
    while (1)
    {
      if (v129)
      {
        v26 = sub_10002F734();
      }

      else
      {
        if (v9 >= *(v123 + 16))
        {
          goto LABEL_46;
        }

        v26 = *(v23 + 8 * v9 + 32);
      }

      v27 = v26;
      v28 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v16 = v19;
      v22 = [v26 subpath];
      sub_10002F404();
      v29 = v21;
      v21 = v30;

      sub_10002F154();

      v31 = sub_100029008(v27);
      if (!v32)
      {
        break;
      }

      LOBYTE(v22) = v32;
      if (!*(v125 + 16))
      {
        v53 = sub_1000043F8();
        v54(v53);

        goto LABEL_19;
      }

      v33 = v125;
      v34 = sub_100023198(v31, v32);
      v21 = v35;

      if ((v21 & 1) == 0)
      {
        v55 = sub_1000043F8();
        v56(v55);
LABEL_19:

LABEL_20:
        v19 = v16;
        goto LABEL_21;
      }

      v22 = *(*(v33 + 56) + 8 * v34);
      v21 = v126;
      v36 = v124;
      sub_100002B2C(v22, v126, v119, v120 & 1);
      v124 = v36;
      if (v36)
      {

        v91 = sub_10002F5D4();
        if (qword_100049660 != -1)
        {
          sub_10000433C();
          swift_once();
        }

        v92 = qword_10004B530;
        (*v118)(v108[1], v21, v6);
        if (os_log_type_enabled(v92, v91))
        {
          v93 = sub_10000443C();
          v130 = v92;
          v94 = v93;
          v95 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v134 = v131;
          *v94 = 138412802;
          *(v94 + 4) = v22;
          *v95 = v22;
          *(v94 + 12) = 2080;
          sub_100004350();
          sub_1000042F4(v96, v97);
          v98 = v22;
          LODWORD(v129) = v91;
          v99 = sub_10002F824();
          v101 = v100;
          v102 = sub_1000043B0();
          (v9)(v102);
          v103 = sub_100022BB4(v99, v101, &v134);

          *(v94 + 14) = v103;
          *(v94 + 22) = 2080;
          swift_getErrorValue();
          v104 = sub_10002F884();
          v106 = sub_100022BB4(v104, v105, &v134);

          *(v94 + 24) = v106;
          v21 = v126;
          _os_log_impl(&_mh_execute_header, v130, v129, "Failed to save %@ to '%s': %s", v94, 0x20u);
          sub_1000041B4(v95);
          sub_100004398();
          swift_arrayDestroy();
          sub_100004398();
          sub_100004398();
        }

        else
        {
          v107 = sub_1000043B0();
          (v9)(v107);
        }

        swift_willThrow();

        return (v9)(v21, v6);
      }

      v122 = v27;
      v37 = v6;
      v38 = sub_10002F5B4();
      if (qword_100049660 != -1)
      {
        sub_10000433C();
        swift_once();
      }

      v39 = qword_10004B530;
      v40 = *v118;
      v19 = v16;
      v41 = sub_100004430();
      v42(v41);
      v121 = v39;
      if (!os_log_type_enabled(v39, v38))
      {

        v16 = v128;
        v22 = *v128;
        (*v128)(v19, v37);
        (v22)(v21, v37);
        v23 = v127;
        v6 = v37;
        goto LABEL_22;
      }

      v43 = swift_slowAlloc();
      v116 = v38;
      v44 = v43;
      v45 = swift_slowAlloc();
      v114 = v45;
      v117 = sub_10000443C();
      v134 = v117;
      *v44 = v113;
      *(v44 + 4) = v22;
      *v45 = v22;
      *(v44 + 12) = 2080;
      sub_100004350();
      sub_1000042F4(&qword_10004A640, v46);
      v47 = v37;
      v115 = v22;
      v48 = sub_10002F824();
      LOBYTE(v22) = v128;
      v49 = *v128;
      v50 = sub_100004430();
      v51 = v49(v50);
      sub_100004454(v51, v52, &v134);
      sub_100004410();
      v6 = v47;
      v21 = v126;

      *(v44 + 14) = v48;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v121, v116, "Successfully saved %@ to '%s'", v44, 0x16u);
      sub_1000041B4(v114);
      sub_10000437C();
      v16 = v117;
      sub_100004168(v117);
      sub_10000437C();
      sub_100004398();

      (v49)(v21, v6);
LABEL_21:
      v23 = v127;
LABEL_22:
      ++v9;
      if (v28 == v130)
      {

        v9 = v110;
        v57 = &v135;
        v16 = v109;
        goto LABEL_26;
      }
    }

    (*v128)(v29, v6);

    v21 = v29;
    goto LABEL_20;
  }

LABEL_26:
  sub_10002F134(v57);
  v59 = v58;
  v134 = 0;
  v60 = [v112 saveToURL:v58 error:&v134];

  if (v60)
  {
    v61 = v134;
    LOBYTE(v22) = sub_10002F5B4();
    if (qword_100049660 != -1)
    {
LABEL_47:
      sub_10000433C();
      swift_once();
    }

    v62 = qword_10004B530;
    (*(v9 + 16))(v16, v131, v6);
    if (os_log_type_enabled(v62, v22))
    {
      v63 = v16;
      v64 = swift_slowAlloc();
      v65 = sub_10000443C();
      v134 = v65;
      *v64 = 136315138;
      sub_100004350();
      sub_1000042F4(v66, v67);
      sub_10002F824();
      v68 = sub_1000043CC();
      v70 = v69(v68);
      sub_100004454(v70, v71, &v134);
      sub_100004410();

      *(v64 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v62, v22, "Successfully saved model data to '%s'", v64, 0xCu);
      sub_100004168(v65);
      sub_100004398();
      return sub_10000437C();
    }

    else
    {
      return (*(v9 + 8))(v16, v6);
    }
  }

  else
  {
    v73 = v134;
    v74 = sub_10002F0F4();

    swift_willThrow();
    v134 = v74;
    v124 = v74;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    v75 = swift_dynamicCast();
    v76 = v111;
    if (v75)
    {

      v124 = v132;
      v77 = sub_10002F5D4();
      if (qword_100049660 != -1)
      {
        sub_10000433C();
        swift_once();
      }

      v78 = qword_10004B530;
      (*(v9 + 16))(v76, v131, v6);
      if (os_log_type_enabled(v78, v77))
      {
        v79 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v79 = 136315394;
        sub_100004350();
        sub_1000042F4(v80, v81);
        sub_10002F824();
        v82 = sub_1000043CC();
        v84 = v83(v82);
        sub_100004454(v84, v85, &v133);
        sub_100004410();

        *(v79 + 4) = v76;
        *(v79 + 12) = 2080;
        v86 = [v124 localizedDescription];
        v87 = sub_10002F404();
        v89 = v88;

        v90 = sub_100022BB4(v87, v89, &v133);

        *(v79 + 14) = v90;
        _os_log_impl(&_mh_execute_header, v78, v77, "Failed to save model data to '%s': %s", v79, 0x16u);
        swift_arrayDestroy();
        sub_100004398();
        sub_10000437C();
      }

      else
      {
        (*(v9 + 8))(v76, v6);
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_100004120(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004168(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000041B4(uint64_t a1)
{
  v2 = sub_100004120(&qword_100049CC0, &qword_1000355C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000421C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004254()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000429C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000042F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000437C()
{
}

uint64_t sub_100004398()
{
}

uint64_t sub_1000043B0()
{
  result = v0;
  v3 = **(v1 - 184);
  return result;
}

uint64_t sub_10000443C()
{

  return swift_slowAlloc();
}

uint64_t sub_100004454(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100022BB4(v3, v4, a3);
}

uint64_t sub_10000446C()
{
  result = sub_10002F404();
  qword_10004B538 = result;
  unk_10004B540 = v1;
  return result;
}

uint64_t sub_10000449C()
{
  [objc_allocWithZone(type metadata accessor for PosterUpdater()) init];
  v0 = sub_100004120(&qword_100049E50, &qword_100035300);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_10002F364();
  sub_10001096C(&qword_10004A5B8);
  sub_10002F2C4();
}

uint64_t sub_100004578@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002F374();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10002F384();
  v5 = sub_10002F344();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_10002F354();
  v8 = sub_1000046A4();

  *a1 = v8;
  return result;
}

id sub_100004664(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_1000046A4()
{
  sub_100004120(&qword_10004A5C0, &qword_100035578);
  v0 = *(sub_10002F204() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100035290;
  sub_10002F374();
  sub_100010364(&qword_10004A5C8, &type metadata accessor for PRRenderingConfiguration);

  sub_10002F1F4();
  sub_10002F344();
  sub_100010364(&qword_10004A5D0, &type metadata accessor for PREditingConfiguration);

  sub_10002F1F4();
  return v3;
}

uint64_t sub_100004850()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_100040F00 + v0++ + 32);
    v2 = sub_10002F424();
    v4 = v3;

    if (v2 == sub_10002F424() && v4 == v5)
    {
      break;
    }

    v7 = sub_10002F854();

    if (v7)
    {
      return v1;
    }

    if (v0 == 5)
    {
      return 5;
    }
  }

  return v1;
}

void sub_100004A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  sub_10002F614();
  if (qword_100049670 != -1)
  {
    swift_once();
  }

  sub_10002F2E4();
  v10 = objc_autoreleasePoolPush();
  sub_100004C0C(a5, a6, a7);
  objc_autoreleasePoolPop(v10);
  if (!v7)
  {
    sub_10002F604();
    sub_10002F2E4();
  }

  swift_unknownObjectRelease();
}

void sub_100004B90(uint64_t a1, uint64_t a2)
{
  sub_100010CB8();
  swift_getObjectType();
  v5 = v3;
  v6 = v2;
  sub_100010B50();
  swift_unknownObjectRetain();
  sub_100004A4C("Renderer.Initialize", 19, 2, v2, v5, v2, a2);
}

void sub_100004C0C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v75 = v67 - v8;
  v9 = sub_10002F104();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  __chkstk_darwin(v9);
  v72 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002F1B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v73 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v67 - v17;
  v77 = a1;
  v19 = [a1 backgroundView];
  v20 = [objc_opt_self() blackColor];
  [v19 setBackgroundColor:v20];

  v21 = type metadata accessor for RenderingEnvironment();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment] = a3;
  v79.receiver = v22;
  v79.super_class = v21;
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v79, "init");
  v24 = OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment;
  v25 = *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment);
  *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment) = v23;

  v67[0] = objc_opt_self();
  v26 = [v67[0] systemPhotoLibraryURL];
  sub_10002F164();

  v78 = sub_10002F184();
  v28 = v27;
  v74 = v13;
  v30 = *(v13 + 8);
  v29 = (v13 + 8);
  v69 = v18;
  v31 = v18;
  v32 = v24;
  v76 = v12;
  v68 = v30;
  v30(v31, v12);
  v33 = *(a2 + v24);
  if (!v33)
  {
    __break(1u);
    goto LABEL_29;
  }

  [*(v33 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) contents];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for PhotosPosterProviderUtils();
    sub_100005324();
    if (v34)
    {
      v35 = v34;
      v36 = [v34 photoLibraryPath];
      if (v36)
      {
        v37 = v36;

        v78 = sub_10002F404();
        v28 = v38;
      }

      goto LABEL_13;
    }
  }

  swift_unknownObjectRelease();
  v39 = *(a2 + v24);
  if (v39)
  {
    [*(v39 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) contents];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for PhotosPosterProviderUtils();
      sub_10000570C();
      if (v40)
      {
        v41 = v40;
        v42 = [v40 photoLibraryPath];
        if (v42)
        {
          v43 = v42;

          v78 = sub_10002F404();
          v28 = v44;
        }
      }
    }

LABEL_13:
    swift_unknownObjectRelease();
    v45 = sub_10002F5B4();
    if (qword_100049670 != -1)
    {
      swift_once();
    }

    v46 = qword_10004B548;
    if (os_log_type_enabled(qword_10004B548, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v80 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_100022BB4(v78, v28, &v80);
      _os_log_impl(&_mh_execute_header, v46, v45, "Load resource from library path: %s", v47, 0xCu);
      sub_100004168(v48);
    }

    v49 = *(a2 + v32);
    if (v49)
    {
      v50 = [*(v49 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) role];
      v51 = sub_10002F404();
      v53 = v52;
      v55 = v51 == sub_10002F404() && v53 == v54;
      v67[1] = v29;
      if (v55)
      {
      }

      else
      {
        v56 = sub_10002F854();

        if ((v56 & 1) == 0)
        {
LABEL_26:
          (*(v70 + 104))(v72, enum case for URL.DirectoryHint.isDirectory(_:), v71);
          v57 = v76;
          sub_1000103AC(v75, 1, 1, v76);

          v58 = v73;
          sub_10002F194();
          sub_1000042B4(0, &qword_10004A610, PHPhotoLibrary_ptr);
          (*(v74 + 16))(v69, v58, v57);
          v59 = sub_100011710();
          v60 = objc_allocWithZone(PUWallpaperPosterController);
          v61 = v77;
          v62 = [v60 initWithRenderer:v77 photoLibrary:v59];
          v63 = *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
          *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller) = v62;
          v64 = v62;

          v65 = *(a2 + v32);
          if (v65)
          {
            v66 = v65;

            [v64 renderer:v61 didInitializeWithEnvironment:v66];

            v68(v58, v57);
            return;
          }

          goto LABEL_30;
        }
      }

      [v67[0] enableMultiLibraryMode];
      goto LABEL_26;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
}

void sub_100005324()
{
  sub_100010CCC();
  v1 = v0;
  v2 = sub_10002F1B4();
  v3 = sub_100004368(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100010B68();
  __chkstk_darwin(v8);
  if (!sub_10000F848(v1))
  {
    v9 = [v1 assetDirectory];
    sub_10002F164();

    v10 = objc_opt_self();
    sub_10002F134(v11);
    v13 = v12;
    v43 = 0;
    v14 = [v10 loadFromURL:v12 error:&v43];

    if (v14)
    {
      v15 = *(v5 + 8);
      v16 = v43;
      v17 = sub_100010C90();
      v15(v17);
    }

    else
    {
      v18 = v43;
      sub_100010CB8();
      v19 = sub_10002F0F4();

      swift_willThrow();
      v43 = v19;
      sub_100004120(&qword_10004A630, &unk_100035270);
      sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_100010E4C();
      sub_1000042B4(0, &qword_10004A638, PFPosterDescriptor_ptr);
      sub_10001189C();
      v20 = sub_10002F5D4();
      if (qword_100049680 != -1)
      {
        sub_100010BB0();
      }

      v21 = qword_10004B558;
      v22 = sub_100010D4C();
      v23(v22);
      if (os_log_type_enabled(v21, v20))
      {
        v40 = v21;
        v24 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v24 = 136315394;
        sub_100010B38();
        sub_100010364(v25, v26);
        v38 = v20;
        v27 = sub_10002F824();
        v29 = v28;
        v30 = *(v5 + 8);
        v31 = sub_100010EE8();
        v30(v31);
        v32 = sub_100022BB4(v27, v29, &v44);

        *(v24 + 4) = v32;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v42;
        *v39 = v42;
        v33 = v42;
        _os_log_impl(&_mh_execute_header, v40, v38, "Failed to init PosterDescriptor from url:%s error:%@", v24, 0x16u);
        sub_100010800(v39, &qword_100049CC0, &qword_1000355C0);
        sub_10000437C();
        sub_100004168(v41);
        sub_10000437C();

        v34 = sub_100010C90();
        v30(v34);
      }

      else
      {

        v35 = *(v5 + 8);
        v36 = sub_100010EE8();
        v35(v36);
        v37 = sub_100010C90();
        v35(v37);
      }
    }
  }

  sub_100010CE4();
}

void sub_10000570C()
{
  sub_100010CCC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10002F1B4();
  v7 = sub_100004368(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100010B68();
  __chkstk_darwin(v12);
  v13 = [v5 assetDirectory];
  sub_10002F164();

  v14 = objc_opt_self();
  sub_10002F134(v15);
  v17 = v16;
  v47 = 0;
  v18 = [v14 loadFromURL:v16 error:&v47];

  if (v18)
  {
    v19 = *(v9 + 8);
    v20 = v47;
    v21 = sub_100010C90();
    v19(v21);
  }

  else
  {
    v22 = v47;
    sub_100010CB8();
    v23 = sub_10002F0F4();

    swift_willThrow();
    v47 = v23;
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_100010E4C();
    if ((v1 & 1) == 0)
    {
      [objc_allocWithZone(PFPosterConfiguration) initWithConfigurationType:v3 == 2];
    }

    v24 = sub_10002F5D4();
    if (qword_100049680 != -1)
    {
      sub_100010BB0();
    }

    v25 = qword_10004B558;
    v26 = sub_100010D4C();
    v27(v26);
    if (os_log_type_enabled(v25, v24))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v28 = 136315394;
      sub_100010B38();
      sub_100010364(v29, v30);
      v43 = v24;
      v31 = sub_10002F824();
      v42 = v25;
      v33 = v32;
      v34 = *(v9 + 8);
      v35 = sub_100010EE8();
      v34(v35);
      v36 = sub_100022BB4(v31, v33, &v48);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v46;
      *v44 = v46;
      v37 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to init PosterDescriptor from url:%s error:%@", v28, 0x16u);
      sub_100010800(v44, &qword_100049CC0, &qword_1000355C0);
      sub_10000437C();
      sub_100004168(v45);
      sub_10000437C();

      v38 = sub_100010C90();
      v34(v38);
    }

    else
    {

      v39 = *(v9 + 8);
      v40 = sub_100010EE8();
      v39(v40);
      v41 = sub_100010C90();
      v39(v41);
    }
  }

  sub_100010CE4();
}

void sub_100005B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100010D70();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v19;
  sub_100010B50();
  swift_unknownObjectRetain();
  v29 = v25;
  sub_10002F614();
  if (qword_100049670 != -1)
  {
    sub_100010A44();
  }

  sub_10002F2E4();
  v30 = objc_autoreleasePoolPush();
  v31 = type metadata accessor for RenderingEnvironment();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment] = v23;
  a9.receiver = v32;
  a9.super_class = v31;
  swift_unknownObjectRetain();
  v33 = objc_msgSendSuper2(&a9, "init");
  v34 = OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment;
  v35 = *&v19[OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment];
  *&v19[OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment] = v33;

  v36 = *&v19[OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller];
  if (!v36)
  {
    goto LABEL_6;
  }

  v37 = *&v19[v34];
  if (v37)
  {
    [v36 renderer:v29 didUpdateEnvironment:v37 withTransition:v27];
LABEL_6:
    objc_autoreleasePoolPop(v30);
    sub_10002F604();
    sub_10002F2E4();

    swift_unknownObjectRelease();
    sub_100010D88();
    return;
  }

  __break(1u);
}

void sub_100005C94(void *a1)
{
  v5 = v1;
  v3 = a1;
  sub_10002F614();
  if (qword_100049670 != -1)
  {
    sub_100010A44();
  }

  sub_100011008();
  v4 = objc_autoreleasePoolPush();
  sub_100005DA8(v5, v3);
  objc_autoreleasePoolPop(v4);
  sub_10002F604();
  sub_100011008();
}

void sub_100005DA8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller;
  v4 = *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (v4)
  {
    [v4 rendererDidInvalidate:a2];
    v5 = *(a1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + v3) = 0;
}

uint64_t sub_100005E74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100005E94, 0, 0);
}

uint64_t sub_100005E94()
{
  sub_100010EDC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  sub_10002F614();
  if (qword_100049670 != -1)
  {
    sub_100010A44();
  }

  v4 = *(v0 + 24);
  sub_10002F2E4();
  v5 = objc_autoreleasePoolPush();
  v6 = *(v4 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (v6)
  {
    [v6 rendererShouldDropExcessResources:*(v0 + 16)];
  }

  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  objc_autoreleasePoolPop(v5);
  sub_10002F604();
  sub_10002F2E4();

  sub_100010C84();

  return v9();
}

uint64_t sub_100005FE8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000060AC;

  return sub_100005E74(v6);
}

uint64_t sub_1000060AC()
{
  sub_100010C44();
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;
  sub_100010AE8();
  *v6 = v5;

  v2[2](v2);
  _Block_release(v2);
  sub_100010C84();

  return v7();
}

uint64_t sub_1000061F4(int a1, id a2)
{
  v3 = [a2 type];
  v4 = sub_10002F404();
  v6 = v5;
  if (v4 == sub_10002F404() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_10002F854();

    if ((v9 & 1) == 0)
    {
      sub_10002F5C4();
      if (qword_100049670 != -1)
      {
        sub_100010A44();
      }

      return sub_10002F2D4();
    }
  }

  v11 = [a2 metadata];
  v12 = sub_10002F3A4();

  sub_100006404(v12);
}

id sub_100006404(uint64_t a1)
{
  *&v29[0] = 1701869940;
  *(&v29[0] + 1) = 0xE400000000000000;
  v2 = sub_100010E8C();
  sub_100010C00(v2, v3);
  sub_10001072C(v30);
  if (v26[3])
  {
    if (sub_100010AC8())
    {
      v4 = sub_100004850();

      switch(v4)
      {
        case 1:
        case 2:
        case 3:
          *&v29[0] = 0x6C62697369567369;
          *(&v29[0] + 1) = 0xE900000000000065;
          v5 = sub_100010E8C();
          sub_100010C00(v5, v6);
          sub_10001072C(v30);
          if ((sub_100010AC8() & 1) == 0)
          {
            goto LABEL_12;
          }

          v7 = v29[0];
          *&v29[0] = 0x6E6F697461727564;
          *(&v29[0] + 1) = 0xE800000000000000;
          v8 = sub_100010E8C();
          sub_100010C00(v8, v9);
          sub_10001072C(v30);
          if ((sub_100010AC8() & 1) == 0 || (v10 = *v29, *&v29[0] = 0x6576727563, *(&v29[0] + 1) = 0xE500000000000000, v11 = sub_100010E8C(), sub_100010C00(v11, v12), sub_10001072C(v30), (sub_100010AC8() & 1) == 0))
          {
LABEL_12:
            sub_10002F5D4();
            if (qword_100049670 != -1)
            {
              goto LABEL_36;
            }

            return sub_10002F2D4();
          }

          v13 = *&v29[0];
          v26[0] = 0x656D617266;
          v26[1] = 0xE500000000000000;
          sub_10002F6C4();
          sub_10001157C(v30, a1, &v27);
          sub_10001072C(v30);
          if (v28)
          {
            sub_1000107F0(&v27, v29);
          }

          else
          {
            sub_10002F6C4();
            sub_10001157C(v26, a1, v29);
            sub_10001072C(v26);
            if (v28)
            {
              sub_100010800(&v27, &qword_10004A5D8, qword_100035580);
            }
          }

          sub_100010780(v29, v30);
          if (v31)
          {
            sub_1000042B4(0, &qword_10004A628, NSValue_ptr);
            if (swift_dynamicCast())
            {
              v17 = v26[0];
              [v26[0] CGRectValue];
              v19 = v18;
              v21 = v20;
              v23 = v22;
              v25 = v24;

              sub_100006A24(v13, v7, v19, v21, v23, v25, v10);
              goto LABEL_31;
            }
          }

          else
          {
            sub_100010800(v30, &qword_10004A5D8, qword_100035580);
          }

          sub_10002F5D4();
          if (qword_100049670 != -1)
          {
            sub_100010A44();
          }

          sub_100010F28();
          sub_10002F2D4();
LABEL_31:
          result = sub_100010800(v29, &qword_10004A5D8, qword_100035580);
          break;
        case 4:
          *&v29[0] = 0x6574617473;
          *(&v29[0] + 1) = 0xE500000000000000;
          v15 = sub_100010E8C();
          sub_100010C00(v15, v16);
          sub_10001072C(v30);
          if ((sub_100010AC8() & 1) == 0)
          {
            sub_10002F5D4();
            if (qword_100049670 != -1)
            {
              goto LABEL_36;
            }

            return sub_10002F2D4();
          }

          return sub_100006A54();
        case 5:
          sub_10002F5C4();
          if (qword_100049670 == -1)
          {
            return sub_10002F2D4();
          }

          goto LABEL_34;
        default:
          sub_10002F5C4();
          if (qword_100049670 == -1)
          {
            return sub_10002F2D4();
          }

LABEL_34:
          sub_100010A44();
          return sub_10002F2D4();
      }

      return result;
    }
  }

  else
  {
    sub_100010800(v26, &qword_10004A5D8, qword_100035580);
  }

  sub_10002F5D4();
  if (qword_100049670 != -1)
  {
LABEL_36:
    sub_100010A44();
  }

  return sub_10002F2D4();
}

id sub_100006A24(uint64_t a1, char a2, double a3, double a4, double a5, double a6, float a7)
{
  result = *(v7 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (result)
  {
    return [result handleKeyboardFrameDidChange:a1 duration:a2 & 1 curve:a3 isVisible:{a4, a5, a6, a7}];
  }

  return result;
}

id sub_100006A54()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (v1)
  {
    return sub_100010C3C("handleLegibilityVignetteVisibilityDidChange:", v1);
  }

  return result;
}

uint64_t sub_100006DC4@<X0>(uint64_t a1@<X8>)
{
  v4 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) "contents")];
  sub_100010CB8();
  swift_unknownObjectRelease();
  sub_10002F164();

  v5 = sub_10002F1B4();

  return sub_1000103AC(a1, 0, 1, v5);
}

uint64_t sub_100006E98()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) traitCollection];
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  v3 = [v1 _backlightLuminance];

  return v3;
}

uint64_t sub_100006F7C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) contents];
  objc_opt_self();
  sub_100010C70();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    objc_opt_self();
    sub_100010C70();
    v3 = swift_dynamicCastObjCClass() != 0;
    swift_unknownObjectRelease();
    return 2 * v3;
  }
}

id sub_1000070C0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) traitCollection];

  return v1;
}

void sub_10000713C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = a1;
  v7 = sub_100010CB8();
  a4(v7);
  sub_100010F14();

  sub_100010F00();
}

double sub_100007228()
{
  sub_100010D34(OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment);
  *&result = sub_100002284().n128_u64[0];
  return result;
}

void sub_100007314(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  sub_100010F14();

  sub_100010F00();
}

id sub_1000074D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t PRRenderer.px_updatePreferences(_:)()
{
  sub_100010CFC();
  v3 = sub_100010E2C();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = sub_100010E2C();
  *(v4 + 16) = sub_1000076FC;
  *(v4 + 24) = v3;
  v7[4] = sub_1000109C8;
  v7[5] = v4;
  sub_100010A6C();
  v7[1] = 1107296256;
  v7[2] = sub_100010A14;
  v7[3] = &unk_1000410D8;
  _Block_copy(v7);
  sub_100010E10();

  [v1 updatePreferences:v2];
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1000076FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000D9A4();
}

uint64_t sub_100007750(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PRRenderer.px_extendRenderSession(forReason:)()
{
  v1 = sub_10002F3D4();
  v2 = [v0 extendRenderingSessionForReason:v1];

  v3 = [v2 assertion];
  v4 = type metadata accessor for InvalidatableWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20PhotosPosterProvider20InvalidatableWrapper_invalidatable] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

id sub_100007C68()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) timeFont];

  return v1;
}

void sub_100007D04()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) setTimeFont:?];
}

id sub_100007D94()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) timeColor];

  return v1;
}

void sub_100007E30()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) setTimeColor:?];
}

id sub_100007EC0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) statusBarTintColor];

  return v1;
}

void sub_100007F5C()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) setStatusBarTintColor:?];
}

unint64_t sub_100008098()
{
  result = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) significantEventOptions];
  if (result > 4 || ((1 << result) & 0x16) == 0)
  {
    sub_100010A8C();
    result = sub_100010DA0();
    __break(1u);
  }

  return result;
}

id sub_100008164(unint64_t a1)
{
  if (a1 <= 4 && ((1 << a1) & 0x16) != 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences);

    return [v3 setSignificantEventOptions:a1];
  }

  else
  {
    sub_100010A8C();
    result = sub_100010DA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000082AC()
{
  sub_100010D34(OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences);
  v0 = sub_100010C70();
  return sub_100002A60(v0);
}

id sub_1000087DC(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void))
{
  v4[*a2] = 0;
  *&v4[*a3] = a1;
  v6.receiver = v4;
  v6.super_class = a4();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100008868()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) timeFont];

  return v1;
}

void sub_100008904()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) setTimeFont:?];
}

id sub_100008994()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) timeColor];

  return v1;
}

void sub_100008A30()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) setTimeColor:?];
}

id sub_100008AC0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) statusBarTintColor];

  return v1;
}

void sub_100008B5C()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) setStatusBarTintColor:?];
}

id sub_100008C5C()
{
  sub_100010D34(OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences);
  v0 = sub_100010C70();
  return sub_1000022E0(v0);
}

id sub_100008CD0(void *a1)
{
  result = [*(v1 + *a1) deviceMotionMode];
  if (result >= 3)
  {
    sub_100010A8C();
    result = sub_10002F7C4();
    __break(1u);
  }

  return result;
}

id sub_100008D9C(unint64_t a1, void *a2)
{
  v4 = *(v2 + *a2);
  [v4 setDeviceMotionMode:sub_10000221C(a1)];
  if (a1 >= 3)
  {
    sub_100010A8C();
    result = sub_100010DA0();
    __break(1u);
  }

  else
  {

    return [v4 setDeviceMotionEventsRequested:(6u >> (a1 & 7)) & 1];
  }

  return result;
}

id sub_100009370()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider24PosterEditingPreferences_posterKitPreferences) timeFont];

  return v1;
}

id sub_1000093F4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider24PosterEditingPreferences_posterKitPreferences) timeColor];

  return v1;
}

id sub_100009478()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider24PosterEditingPreferences_posterKitPreferences) statusBarTintColor];

  return v1;
}

uint64_t sub_1000095D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  *a4 = result;
  return result;
}

void sub_100009688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    swift_once();
  }

  sub_10002F2E4();
  v10 = objc_autoreleasePoolPush();
  sub_10000A024(a5, a6, a7);
  objc_autoreleasePoolPop(v10);
  if (!v7)
  {
    sub_10002F604();
    sub_10002F2E4();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000097CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    swift_once();
  }

  sub_10002F2E4();
  v11 = objc_autoreleasePoolPush();
  sub_10000BA38(a9, &v14);
  if (v9)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    a6 = v14;
    objc_autoreleasePoolPop(v11);
    sub_10002F604();
    sub_10002F2E4();
  }

  return a6;
}

uint64_t sub_10000992C()
{
  sub_100010F34();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 128) = v5;
  *(v1 + 16) = v6;
  *(v1 + 56) = sub_10002F544();
  *(v1 + 64) = sub_10002F534();
  sub_100010B50();
  v8 = sub_10002F514();
  *(v1 + 72) = v8;
  *(v1 + 80) = v7;

  return _swift_task_switch(sub_1000099CC, v8, v7);
}

uint64_t sub_1000099CC()
{
  sub_100010EDC();
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID;
  *(v0 + 88) = qword_10004B550;
  *(v0 + 96) = v5;
  v11 = *(v0 + 32);
  v6 = *(v0 + 128);
  sub_10002F2E4();
  *(v0 + 104) = sub_10002F534();
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v11;
  v8 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_100009B30;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100009B30()
{
  sub_100010C44();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *v0;
  sub_100010AE8();
  *v6 = v5;

  v7 = *(v1 + 80);
  v8 = *(v1 + 72);

  return _swift_task_switch(sub_100009C84, v8, v7);
}

uint64_t sub_100009C84()
{
  sub_100010EDC();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 128);

  sub_10002F604();
  sub_10002F2E4();
  sub_100010C84();

  return v8();
}

void sub_100009D20(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = sub_100004120(&qword_10004A618, &qword_1000355A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = objc_autoreleasePoolPush();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  a2(sub_100010540, v11);

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_100009EC4()
{
  if (*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller))
  {
  }

  else
  {
    sub_10002F714(64);
    v3._object = 0x8000000100033E00;
    v3._countAndFlagsBits = 0xD00000000000003ELL;
    sub_10002F464(v3);
    v4._countAndFlagsBits = sub_10002F724();
    sub_10002F464(v4);

    sub_100010DA0();
    __break(1u);
  }

  return _objc_retain_x3();
}

void sub_100009FAC(uint64_t a1, uint64_t a2)
{
  sub_100010CB8();
  swift_getObjectType();
  v5 = v2;
  sub_100010B50();
  swift_unknownObjectRetain();
  sub_100009688("PosterEditor.Initialize", 23, 2, v2, v2, a2, v3);
}

void sub_10000A024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v51 - v8;
  v9 = sub_10002F104();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002F1B4();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = sub_10000A534(a2);
  v20 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment;
  v21 = *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment);
  *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment) = v19;
  v22 = v19;

  LOBYTE(v21) = sub_10000EFAC();
  if (v21)
  {
    [objc_opt_self() forceDisableLandscapeConfiguration:1];
  }

  v52 = objc_opt_self();
  v23 = [v52 systemPhotoLibraryURL];
  sub_10002F164();

  v61 = sub_10002F184();
  v24 = v62 + 8;
  v54 = *(v62 + 8);
  v54(v18, v12);
  v25 = *(a1 + v20);
  if (!v25)
  {
    __break(1u);
    goto LABEL_23;
  }

  v26 = *(v25 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterDescriptor);
  v53 = v24;
  v55 = v16;
  if (v26)
  {
    v27 = v26;
    v28 = [v27 photoLibraryPath];
  }

  else
  {
    v29 = *(v25 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourcePosterConfiguration);
    if (!v29)
    {
      goto LABEL_11;
    }

    v27 = v29;
    v28 = [v27 photoLibraryPath];
  }

  v30 = v28;
  if (v30)
  {
    v31 = v30;

    v61 = sub_10002F404();
  }

LABEL_11:
  v56 = a3;
  v32 = *(a1 + v20);
  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v12;
  v34 = [*(v32 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) role];
  v35 = sub_10002F404();
  v37 = v36;
  if (v35 == sub_10002F404() && v37 == v38)
  {

    goto LABEL_19;
  }

  v40 = sub_10002F854();

  if (v40)
  {
LABEL_19:
    [v52 enableMultiLibraryMode];
  }

  (*(v57 + 104))(v59, enum case for URL.DirectoryHint.isDirectory(_:), v58);
  v41 = v33;
  sub_1000103AC(v60, 1, 1, v33);

  v42 = v55;
  sub_10002F194();
  sub_1000042B4(0, &qword_10004A610, PHPhotoLibrary_ptr);
  (*(v62 + 16))(v18, v42, v41);
  v43 = sub_100011710();
  v44 = objc_allocWithZone(PUWallpaperPosterEditorController);
  v45 = v56;
  v46 = [v44 initWithWallpaperEditor:v56 photoLibrary:v43];
  v47 = *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller);
  *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller) = v46;
  v48 = v46;

  v49 = *(a1 + v20);
  if (v49)
  {
    v50 = v49;

    [v48 editor:v45 didInitializeWithEnvironment:v50];

    v54(v42, v41);
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_10000AC78(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100010BD0();
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void sub_10000ACFC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v14 = v3;
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100011008();
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100010EA4();
  v10 = *&v14[OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100010B50();
    v13 = sub_10000E1C0(v12);

    [v9 editor:v6 didUpdateEnvironment:v13 withTransition:v5];
    objc_autoreleasePoolPop(v8);
    sub_10002F604();
    sub_100011008();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000AE98(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(id, uint64_t, void *))
{
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  a6(v10, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_10000AF3C()
{
  sub_100010F34();
  v1[2] = v2;
  v1[3] = v0;
  sub_10002F544();
  v1[4] = sub_10002F534();
  sub_100010B50();
  v4 = sub_10002F514();
  v1[5] = v4;
  v1[6] = v3;

  return _swift_task_switch(sub_10000AFCC, v4, v3);
}

uint64_t sub_10000AFCC()
{
  sub_100010EDC();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = "PosterEditor.Finalize";
  *(v3 + 32) = 21;
  *(v3 + 40) = 2;
  *(v3 + 48) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10000B0D8;
  v7 = v0[3];

  return sub_10000992C();
}

uint64_t sub_10000B0D8()
{
  sub_100010C44();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *v0;
  sub_100010AE8();
  *v5 = v4;

  v6 = *(v1 + 48);
  v7 = *(v1 + 40);

  return _swift_task_switch(sub_10000B210, v7, v6);
}

uint64_t sub_10000B210()
{
  sub_100010F34();
  v1 = *(v0 + 32);

  sub_100010C84();

  return v2();
}

void sub_10000B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_100009EC4();
  v12[4] = a1;
  v12[5] = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000B34C;
  v12[3] = &unk_100041238;
  v11 = _Block_copy(v12);

  [v10 editor:a7 finalizeWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_10000B34C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000B3B0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_10001179C(a6, v10);
}

uint64_t sub_10000B434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10002F544();
  v3[5] = sub_10002F534();
  v5 = sub_10002F514();

  return _swift_task_switch(sub_10000B4D0, v5, v4);
}

uint64_t sub_10000B4D0()
{
  sub_100010C44();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_10000B590;
  v8 = v0[4];
  v9 = v0[2];

  return sub_10000AF3C();
}

uint64_t sub_10000B590()
{
  sub_100010C44();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v5 = *v0;
  sub_100010AE8();
  *v6 = v5;

  v2[2](v2);
  _Block_release(v2);
  sub_100010C84();

  return v7();
}

void sub_10000B6D8()
{
  sub_100010CCC();
  v2 = v1;
  v3 = v0;
  v4 = v2;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010AA0();
  sub_10002F2E4();
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100009EC4();
  [v6 editorShouldBeginFinalization:v4];

  objc_autoreleasePoolPop(v5);
  sub_10002F604();
  sub_100010AA0();
  sub_10002F2E4();

  sub_100010CE4();
}

void sub_10000B828()
{
  sub_100010D70();
  v2 = v1;
  v9 = v0;
  v3 = v2;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010AA0();
  sub_100010F28();
  sub_10002F2E4();
  v4 = objc_autoreleasePoolPush();
  sub_10002F5B4();
  sub_100010AA0();
  sub_100010F28();
  sub_10002F2D4();
  v5 = sub_100010EA4();
  [v5 editorDidInvalidate:v3];

  v6 = *&v9[OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller];
  *&v9[OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller] = 0;

  objc_autoreleasePoolPop(v4);
  sub_10002F604();
  sub_100010AA0();
  sub_100010F28();
  sub_10002F2E4();

  sub_100010D88();
}

uint64_t sub_10000B9C4()
{
  sub_100010D64();
  swift_getObjectType();
  v2 = v1;
  return sub_1000097CC("PosterEditor.Looks", 18, 2, v2, v2, "PosterEditor.Looks", 18, 2, v0);
}

void sub_10000BA38(void *a1@<X4>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_100009EC4();
  v26 = a1;
  v7 = [v6 looksForEditor:a1];
  sub_100004120(&qword_10004A5F8, &qword_100035598);
  v8 = sub_10002F4C4();

  v9 = sub_10002A9E4(v8);
  v25 = v6;
  if (!v9)
  {

    v11 = &_swiftEmptyArrayStorage;
LABEL_13:
    LOBYTE(v13) = sub_10002F5C4();
    if (qword_100049678 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v10 = v9;
  v29 = &_swiftEmptyArrayStorage;
  v11 = &v29;
  sub_10002F784();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v12 = 0;
    a2 = (v8 & 0xC000000000000001);
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (a2)
      {
        v14 = sub_10002F734();
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v8 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v27 = v14;
      sub_10000BD7C(&v27, v26, &v28);
      if (v3)
      {
        goto LABEL_21;
      }

      v3 = 0;
      swift_unknownObjectRelease();
      v11 = &v29;
      sub_10002F764();
      v15 = v29[2];
      sub_10002F794();
      sub_10002F7A4();
      sub_10002F774();
      ++v12;
      if (v13 == v10)
      {

        v11 = v29;
        a2 = v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
LABEL_14:
    v16 = qword_10004B550;
    if (os_log_type_enabled(qword_10004B550, v13))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = sub_10002F724();
      v20 = sub_100022BB4(v18, v19, &v29);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      sub_1000042B4(0, &unk_10004A600, PREditingLook_ptr);
      v21 = sub_10002F4D4();
      v23 = sub_100022BB4(v21, v22, &v29);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v16, v13, "%s: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    *a2 = v11;
    return;
  }

  __break(1u);
LABEL_21:
  swift_unknownObjectRelease();

  __break(1u);
}

id sub_10000BD7C@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 pu_timeFontIdentifier];
  v7 = [objc_msgSend(a2 "environment")];
  swift_unknownObjectRelease();
  v8 = PPCreateTimeFontConfiguration(v6, v7);

  v9 = [v5 identifier];
  v10 = sub_10002F404();
  v12 = v11;

  v13 = [v5 displayName];
  v14 = sub_10002F404();
  v16 = v15;

  v17 = [v5 pu_timeFontColor];
  v18 = v17;
  if (v17)
  {
    v17 = sub_1000042B4(0, &unk_10004A840, PRPosterColor_ptr);
  }

  else
  {
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v18;
  v21[3] = v17;
  v19 = objc_allocWithZone(PREditingLook);
  result = sub_10000FE04(v10, v12, v14, v16, v8, v21);
  *a3 = result;
  return result;
}

void sub_10000BFB0(void *a1, void *a2, double a3)
{
  v12 = v3;
  v8 = a1;
  v9 = a2;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010AB8();
  sub_10002F2E4();
  v10 = objc_autoreleasePoolPush();
  sub_100010EBC();
  v11 = sub_100010EA4();
  [v11 editor:v8 didTransitionToLook:v9 progress:a3];

  objc_autoreleasePoolPop(v4);
  sub_10002F604();
  sub_100010AB8();
  sub_10002F2E4();
}

void sub_10000C178()
{
  sub_100010CCC();
  v2 = v1;
  v3 = v0;
  v4 = v2;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010FC8();
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100009EC4();
  v7 = [v6 initialLookIdentifierForEditor:v4];
  sub_10002F404();

  objc_autoreleasePoolPop(v5);
  sub_10002F604();
  sub_100010FC8();

  sub_100010CE4();
}

double sub_10000C300()
{
  sub_100010F54();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v4;
  v7 = v2;
  v8 = sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010AB8();
  sub_10002F2E4();
  v9 = objc_autoreleasePoolPush();
  sub_100010EBC();
  v10 = sub_100009EC4();
  v11 = sub_100010F40();
  [v12 v13];
  v15 = v14;

  objc_autoreleasePoolPop(v8);
  sub_10002F604();
  sub_100010AB8();
  sub_10002F2E4();

  return v15;
}

void sub_10000C514()
{
  sub_100010CCC();
  v2 = v1;
  sub_100010EF4();
  v4 = v3;
  v5 = v0;
  v6 = v4;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010C9C();
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100009EC4();
  v9 = [v8 *v2];
  if (v9)
  {
    v10 = v9;
    sub_1000042B4(0, &qword_10004A5F0, UIMenuElement_ptr);
    sub_10002F4C4();
  }

  objc_autoreleasePoolPop(v7);
  sub_10002F604();
  sub_100010C9C();

  sub_100010CE4();
}

id sub_10000C664(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);

  if (v8)
  {
    sub_1000042B4(0, &qword_10004A5F0, UIMenuElement_ptr);
    sub_100010C70();
    sub_10002F4A4();
    sub_100010B50();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10000C700(void *a1, void *a2, void *a3)
{
  swift_unknownObjectRetain();
  v7 = v3;
  v21 = a1;
  v8 = a3;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_10002F2E4();
  v20 = objc_autoreleasePoolPush();
  v9 = [a2 backgroundView];
  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  [v9 setBackgroundColor:v11];

  v12 = [v9 window];
  if (v12)
  {
    v13 = v12;
    v14 = [v10 blackColor];
    [v13 setBackgroundColor:v14];
  }

  v15 = sub_100009EC4();
  v16 = type metadata accessor for EditorViews();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding] = a2;
  v22.receiver = v17;
  v22.super_class = v16;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v22, "init");
  [v15 editor:v21 populateViews:v18 forLook:v8];

  objc_autoreleasePoolPop(v20);
  sub_10002F604();
  sub_10002F2E4();

  return swift_unknownObjectRelease();
}

void sub_10000CA6C()
{
  sub_100010CCC();
  v2 = v1;
  sub_100010EF4();
  v4 = v3;
  v5 = v0;
  v6 = v4;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010C9C();
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100009EC4();
  [v8 *v2];

  objc_autoreleasePoolPop(v7);
  sub_10002F604();
  sub_100010C9C();

  sub_100010CE4();
}

void sub_10000CCA0()
{
  sub_100010D70();
  v3 = v2;
  v5 = v4;
  v0;
  v6 = v5;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010AB8();
  sub_10002F2E4();
  v7 = objc_autoreleasePoolPush();
  sub_100010EBC();
  v8 = sub_100010EA4();
  [v8 editor:v6 depthEffectDisallowedDidChange:v3 & 1];

  objc_autoreleasePoolPop(v1);
  sub_10002F604();
  sub_100010AB8();
  sub_10002F2E4();

  sub_100010D88();
}

void sub_10000CE20()
{
  sub_100010D70();
  v2 = v1;
  v0;
  v3 = v2;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24();
  }

  sub_100010AA0();
  sub_10002F2E4();
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100010EA4();
  [v5 editorDidDelayFinalizationForBackgroundTask:v3];

  objc_autoreleasePoolPop(v4);
  sub_10002F604();
  sub_100010AA0();
  sub_10002F2E4();

  sub_100010D88();
}

id sub_10000CF94(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  *&v4[*a1] = 0;
  *&v4[*a2] = 0;
  v6 = *a3;
  if (qword_100049670 != -1)
  {
    sub_100010A44();
  }

  v7 = qword_10004B548;
  sub_10002F2F4();
  v9.receiver = v4;
  v9.super_class = a4(0);
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10000D0B4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = sub_10002F304();
  sub_100010B10(v9);
  v11 = *(v10 + 8);

  return v11(a1 + v8);
}

void PRPosterTransition.px_duration.getter()
{
  v1 = [v0 animationSettings];
  if (v1)
  {
    v2 = v1;
    [v1 duration];
  }
}

void PRPosterTransition.px_duration.setter(double a1)
{
  v2 = [objc_opt_self() settingsWithDuration:a1];
  sub_100010BD0();
  [v1 setAnimationSettings:?];
}

void *PREditor.pu_environment.getter()
{
  type metadata accessor for PosterEditor(0);
  sub_10000A534([v0 environment]);
  sub_100010B50();
  swift_unknownObjectRelease();
  return v0;
}

id sub_10000D484()
{
  sub_100010EF4();
  v4 = [v1 *v3];
  v5 = v2();
  v6 = objc_allocWithZone(v5);
  *&v6[*v0] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, "init");
}

id PREditor.pu_requestDismissal(with:)(unint64_t a1)
{
  if (a1 >= 2)
  {
    sub_100010A8C();
    result = sub_100010DA0();
    __break(1u);
  }

  else
  {

    return [v1 requestDismissalWithAction:a1];
  }

  return result;
}

id PREditor.pu_placeholderAction.getter()
{
  v1 = [v0 placeholderAction];

  return v1;
}

id PREditor.pu_currentLook.getter()
{
  v1 = [v0 currentLook];

  return v1;
}

uint64_t PREditor.pu_updatePreferences(_:)()
{
  sub_100010CFC();
  v3 = sub_100010E2C();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = sub_100010E2C();
  *(v4 + 16) = sub_10000DA40;
  *(v4 + 24) = v3;
  v8[4] = sub_10000DA94;
  v8[5] = v4;
  sub_100010A6C();
  sub_100010B20();
  v8[2] = v5;
  v8[3] = &unk_100041150;
  _Block_copy(v8);
  sub_100010E10();

  [v1 updatePreferences:v2];
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10000D9A4()
{
  sub_100010D70();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  objc_allocWithZone(v10());
  v11 = swift_unknownObjectRetain();
  v14 = sub_1000087DC(v11, v5, v3, v1);
  v7(v14, v9);
  sub_100010D88();
}

void sub_10000DA40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000D9A4();
}

uint64_t sub_10000DA94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000DAC0()
{
  sub_100010EF4();
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  swift_unknownObjectRetain();
  v5 = v0;
  v4(v1, v5);

  return swift_unknownObjectRelease();
}

void sub_10000DB50(void *a1, int a2, void *aBlock, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  v10[2] = v8;
  v9 = a1;
  a5(a4, v10);
  _Block_release(v8);
}

uint64_t PREditor.px_updatePreferences(_:)()
{
  sub_100010CFC();
  v3 = sub_100010E2C();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = sub_100010E2C();
  *(v4 + 16) = sub_1000109CC;
  *(v4 + 24) = v3;
  v8[4] = sub_1000109C8;
  v8[5] = v4;
  sub_100010A6C();
  sub_100010B20();
  v8[2] = v5;
  v8[3] = &unk_1000411C8;
  _Block_copy(v8);
  sub_100010E10();

  [v1 updatePreferences:v2];
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id PREditor.pu_disableIdleTimer()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_10002F3D4();
  v13 = 0;
  v2 = [v0 newAssertionToDisableIdleTimerForReason:v1 error:&v13];

  v3 = v13;
  if (v2)
  {
    v4 = type metadata accessor for BSInvalidatableWrapper();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC20PhotosPosterProvider22BSInvalidatableWrapper_invalidatable] = v2;
    v12.receiver = v5;
    v12.super_class = v4;
    v6 = v3;
    return objc_msgSendSuper2(&v12, "init");
  }

  else
  {
    v8 = v13;
    sub_100010B50();
    sub_10002F0F4();

    swift_willThrow();
    sub_10002F5D4();
    result = PLWallpaperGetLog();
    if (result)
    {
      v9 = result;
      sub_100004120(&unk_100049E20, &qword_1000352F8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1000352B0;
      v11 = sub_10002F0E4();
      *(v10 + 56) = sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      *(v10 + 64) = sub_10000DEE4();
      *(v10 + 32) = v11;
      sub_10002F2D4();

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10000DEE4()
{
  result = qword_100049E30;
  if (!qword_100049E30)
  {
    sub_1000042B4(255, &unk_10004A8D0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049E30);
  }

  return result;
}

UIView_optional __swiftcall PREditor.pu_view(forMenuElementIdentifier:)(Swift::String forMenuElementIdentifier)
{
  v2 = sub_10002F3D4();
  v3 = [v1 viewForMenuElementIdentifier:v2];

  v5 = v3;
  result.value.super.super.isa = v5;
  result.is_nil = v4;
  return result;
}

void sub_10000E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100010D70();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  *&v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_pu_deviceOrientation] = 0;
  v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_px_isDepthEffectDisabled] = 0;
  *&v19[*v26] = v27;
  *&v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment] = v28;
  *&v19[*v29] = 0;
  v30 = OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourceAssetDirectory;
  v31 = sub_10002F1B4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(&v19[v30], v25, v31);
  v33(&v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_targetAssetDirectory], v23, v31);
  v34 = type metadata accessor for EditingEnvironment(0);
  a9.receiver = v19;
  a9.super_class = v34;
  objc_msgSendSuper2(&a9, "init");
  v35 = *(v32 + 8);
  v35(v23, v31);
  v35(v25, v31);
  sub_100010D88();
}

id sub_10000E418()
{
  result = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterDescriptor);
  if (result)
  {
    return [result posterType];
  }

  result = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourcePosterConfiguration);
  if (result)
  {
    return [result posterType];
  }

  return result;
}

uint64_t sub_10000E47C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) editingVariant];
  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v1 == 0;
  }
}

id sub_10000E4F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - v7;
  a3(v6);
  v9 = sub_10002F1B4();
  v11 = 0;
  if (sub_1000103D4(v8, 1, v9) != 1)
  {
    sub_10002F134(v10);
    v11 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  return v11;
}

uint64_t sub_10000E604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_10002F1B4();
  sub_100010B10(v5);
  (*(v6 + 16))(a2, v2 + v4, v5);

  return sub_1000103AC(a2, 0, 1, v5);
}

void *sub_10000E6BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourcePosterConfiguration);
  v2 = v1;
  return v1;
}

void *sub_10000E720()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterDescriptor);
  v2 = v1;
  return v1;
}

id sub_10000E794()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) caseColor];

  return v1;
}

id sub_10000E808()
{
  result = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) traitCollection];
  if (result)
  {
    v2 = result;
    v3 = [result userInterfaceStyle];

    return v3;
  }

  return result;
}

uint64_t sub_10000E904()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) sourceContents];
  objc_opt_self();
  sub_100010C70();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = sub_10000EC1C(v2);
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10000E9E0()
{
  v2 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) role];
  sub_10002F404();
  if (v0 == sub_100010E70() && v1 == v3)
  {
    sub_100010FA8();
  }

  else
  {
    v0 = sub_100010B8C();

    if (v0)
    {
      sub_100010FA8();
    }

    else
    {
      sub_10002F404();
      if (v0 == sub_100010E70() && v1 == v6)
      {
        sub_100010F88();
      }

      else
      {
        v0 = sub_100010B8C();

        if (v0)
        {
          sub_100010F88();
        }

        else
        {
          sub_10002F404();
          if (v0 == sub_100010E70() && v1 == v8)
          {
            sub_100010F68();
          }

          else
          {
            v0 = sub_100010B8C();

            if (v0)
            {
              sub_100010F68();
            }

            else
            {
              v0 = 0x706F72646B636142;
              v10 = sub_10002F404();
              v12 = v11;
              if (v10 == sub_10002F404() && v12 == v13)
              {
              }

              else
              {
                v15 = sub_10002F854();

                if ((v15 & 1) == 0)
                {
                  return 0x6E776F6E6B6E55;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_10000EC1C(void *a1)
{
  v2 = sub_10002F3D4();
  v3 = [a1 objectForUserInfoKey:v2];

  if (v3)
  {
    sub_10002F674();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v8 == 1801678700 && v9 == 0xE400000000000000;
      if (v4 || (sub_100010FE8() & 1) != 0)
      {

        return 1;
      }

      if (v8 == 1701670760 && v9 == 0xE400000000000000)
      {

        return 2;
      }

      v7 = sub_100010FE8();

      if (v7)
      {
        return 2;
      }
    }
  }

  else
  {
    sub_100010800(v12, &qword_10004A5D8, qword_100035580);
  }

  return 0;
}

uint64_t sub_10000EDD0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) sourceContents];
  objc_opt_self();
  sub_100010C70();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = PPPosterOverrideConfigurationFromConfiguration(v2);
    sub_100010B50();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v0;
}

id sub_10000EE94()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) targetConfiguration];

  return v1;
}

id sub_10000F08C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) traitCollection];

  return v1;
}

uint64_t sub_10000F168()
{
  sub_100010D34(OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment);
  sub_100010D64();
  swift_unknownObjectRetain();
  sub_100002274();
  sub_100010D64();
  swift_unknownObjectRelease();
  return v0;
}

__n128 sub_10000F1C4@<Q0>(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = a2();
  v11 = v8;
  v12 = v7;
  v9 = v6;

  result = v11;
  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_10000F220()
{
  sub_100010D34(OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment);
  sub_100010D64();
  swift_unknownObjectRetain();
  sub_100002284();
  sub_100010D64();
  swift_unknownObjectRelease();
  return v0;
}

void PRMutablePosterConfiguration.pu_displayNameLocalizationKey.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10002F3D4();
  }

  else
  {
    v3 = 0;
  }

  [v2 setDisplayNameLocalizationKey:v3];
}

id sub_10000F5F4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding) backgroundView];

  return v1;
}

id sub_10000F678()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding) foregroundView];

  return v1;
}

id sub_10000F6FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding) floatingView];

  return v1;
}

uint64_t sub_10000F798()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B558 = result;
  return result;
}

uint64_t sub_10000F848(void *a1)
{
  v17[0] = 0;
  v2 = [a1 loadUserInfoWithError:v17];
  v3 = v17[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_10002F3A4();
    v6 = v3;

    sub_10002F6C4();
    sub_10001157C(v17, v5, &v18);
    sub_10001072C(v17);
    if (v19)
    {
      swift_dynamicCast();
    }

    else
    {

      sub_100010800(&v18, &qword_10004A5D8, qword_100035580);
    }
  }

  else
  {
    v7 = v17[0];
    v8 = sub_10002F0F4();

    swift_willThrow();
    v17[0] = v8;
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    swift_dynamicCast();
    v9 = v18;
    v10 = sub_10002F5D4();
    if (qword_100049680 != -1)
    {
      swift_once();
    }

    v11 = qword_10004B558;
    if (os_log_type_enabled(qword_10004B558, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = a1;
      v13[1] = v9;
      v14 = a1;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v11, v10, "Failed to load user info from descriptor:%@ error:%@", v12, 0x16u);
      sub_100004120(&qword_100049CC0, &qword_1000355C0);
      swift_arrayDestroy();
    }
  }

  return 0;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100010000();
  sub_10001096C(&qword_100049E48);
  sub_10002F2A4();
  return 0;
}

id sub_10000FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = sub_10002F3D4();

  v10 = sub_10002F3D4();

  v11 = a6[3];
  if (v11)
  {
    v12 = sub_100010414(a6, a6[3]);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_10002F844();
    (*(v13 + 8))(v16, v11);
    sub_100004168(a6);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithIdentifier:v9 displayName:v10 initialTimeFontConfiguration:a5 initialTitleColor:v17];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_10000FF9C(void *a1)
{
  v1 = [a1 displayNameLocalizationKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002F404();

  return v3;
}

unint64_t sub_100010000()
{
  result = qword_100049E40;
  if (!qword_100049E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049E40);
  }

  return result;
}

uint64_t sub_100010054(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100010118()
{
  result = sub_10002F304();
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

uint64_t sub_1000101DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010214()
{
  result = sub_10002F1B4();
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

uint64_t sub_100010364(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100010414(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010458()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000104B4()
{
  v1 = sub_100004120(&qword_10004A618, &qword_1000355A0);
  sub_100010B10(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100010540()
{
  v0 = *(*(sub_100004120(&qword_10004A618, &qword_1000355A0) - 8) + 80);

  return sub_100009E88();
}

uint64_t sub_1000105B0()
{
  sub_100010C44();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_100010C50(v5);

  return v7(v6);
}

uint64_t sub_100010648()
{
  sub_100010F34();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100010AE8();
  *v3 = v2;

  sub_100010C84();

  return v4();
}

uint64_t sub_100010780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004120(&qword_10004A5D8, qword_100035580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000107F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100010800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004120(a2, a3);
  sub_100010B10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100010858()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000108A0()
{
  sub_100010C44();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_100010C50(v5);

  return v7(v6);
}

uint64_t sub_10001096C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100010054(&qword_100049E50, &qword_100035300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010A24()
{

  return swift_once();
}

uint64_t sub_100010A44()
{

  return swift_once();
}

uint64_t sub_100010AC8()
{

  return swift_dynamicCast();
}

uint64_t sub_100010AF8()
{
  result = *(v0 - 88);
  v2 = *(v0 - 104);
  return result;
}

uint64_t sub_100010B8C()
{

  return sub_10002F854();
}

uint64_t sub_100010BB0()
{

  return swift_once();
}

double sub_100010C00(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, _OWORD);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  return sub_10001157C(va1, v2, va);
}

uint64_t sub_100010C50(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100010C84()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100010C9C()
{

  return sub_10002F2E4();
}

uint64_t sub_100010D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return __swift_stdlib_reportUnimplementedInitializer(a1, a2, a3, 6, 0);
}

uint64_t sub_100010D34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return swift_getObjectType();
}

uint64_t sub_100010DA0()
{

  return sub_10002F7C4();
}

uint64_t sub_100010E10()
{
}

uint64_t sub_100010E2C()
{

  return swift_allocObject();
}

uint64_t sub_100010E4C()
{

  return swift_dynamicCast();
}

uint64_t sub_100010E70()
{

  return sub_10002F404();
}

uint64_t sub_100010E8C()
{

  return sub_10002F6C4();
}

uint64_t sub_100010EA4()
{

  return sub_100009EC4();
}

void sub_100010F68()
{
}

void sub_100010F88()
{
}

void sub_100010FA8()
{
}

uint64_t sub_100010FC8()
{

  return sub_10002F2E4();
}

uint64_t sub_100010FE8()
{

  return sub_10002F854();
}

uint64_t sub_100011008()
{

  return sub_10002F2E4();
}

id sub_100011020()
{
  v0 = type metadata accessor for EditingEnvironment(0);

  return objc_allocWithZone(v0);
}

void sub_100011048(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004120(&qword_10004A9A0, &qword_100035788);
    sub_10002AED8();
    v2 = sub_10002F7E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 56) + v10);
    *&v31[0] = *(*(a1 + 48) + v10);
    v11 = *&v31[0];
    type metadata accessor for PISegmentationOption(0);
    v13 = v11;
    v12;
    swift_dynamicCast();
    sub_1000042B4(0, &qword_100049CD8, NSNumber_ptr);
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1000107F0(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1000107F0(v30, v31);
    v14 = sub_10002F6A4(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      sub_10002B2D4();
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        if (*&v7[8 * v15] != -1)
        {
          sub_10002B2C0();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_10002B2E8();
LABEL_21:
    v5 &= v5 - 1;
    sub_10002B2AC();
    *&v7[v19] |= v20;
    v22 = v2[6] + 40 * v21;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    sub_1000107F0(v31, (v2[7] + 32 * v21));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1000112EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004120(&qword_10004A9A0, &qword_100035788);
    sub_10002AED8();
    v2 = sub_10002F7E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_100029554(*(a1 + 56) + 32 * v10, v34);
    *&v33 = v13;
    *(&v33 + 1) = v12;
    v31[2] = v33;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v31[0] = v33;

    swift_dynamicCast();
    sub_1000107F0(v32, v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1000107F0(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1000107F0(v30, v31);
    v14 = sub_10002F6A4(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      sub_10002B2D4();
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        if (*&v7[8 * v15] != -1)
        {
          sub_10002B2C0();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_10002B2E8();
LABEL_21:
    v5 &= v5 - 1;
    sub_10002B2AC();
    *&v7[v19] |= v20;
    v22 = v2[6] + 40 * v21;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    sub_1000107F0(v31, (v2[7] + 32 * v21));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

double sub_10001157C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100023154(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100029554(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_1000115E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100023198(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_100011628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100023198(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100029554(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100011690()
{
  v0 = sub_10002F404();
  v2 = v1;
  if (v0 == sub_10002F404() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_10002B058();
    v5 = sub_10002F854();
  }

  return v5 & 1;
}

id sub_100011710()
{
  sub_100010D64();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10002F134(v2);
  v4 = v3;
  v5 = sub_10002B358();
  v7 = [v5 v6];

  v8 = sub_10002F1B4();
  sub_100010B10(v8);
  (*(v9 + 8))(v0);
  return v7;
}

uint64_t sub_10001179C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004120(&unk_10004A9F0, &qword_1000357C0);
  sub_10002AE90(v4);
  v6 = *(v5 + 64);
  sub_10002B288();
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = sub_10002F564();
  sub_1000103AC(v9, 1, 1, v10);
  sub_10002AC74();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  sub_10002AC74();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000357D0;
  v12[5] = v11;
  sub_10002237C(0, 0, v9, &unk_1000357E0, v12);
}

id sub_10001189C()
{
  sub_100010CB8();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  sub_100010C70();
  isa = sub_10002F4A4().super.isa;

  v3 = [v1 initWithDescriptorType:v0 media:isa];

  return v3;
}

Swift::Int sub_10001195C(char a1)
{
  sub_10002F8D4();
  sub_10002F8E4(a1 & 1);
  return sub_10002F8F4();
}

Swift::Int sub_1000119C0()
{
  v1 = *v0;
  sub_10002F8D4();
  sub_10002F8E4(v1);
  return sub_10002F8F4();
}

uint64_t sub_100011A14()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B590 = result;
  return result;
}

uint64_t sub_100011ACC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_10002F304();
  *(v6 + 48) = v7;
  v8 = *(v7 - 8);
  *(v6 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100011B94, v5, 0);
}

uint64_t sub_100011B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10002B3B8();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v25 = *(v22 + 64);
  v27 = *(v22 + 32);
  v26 = *(v22 + 40);
  v29 = *(v22 + 16);
  v28 = *(v22 + 24);
  v30 = *(v22 + 72);
  qword_10004B590;
  sub_10002F2F4();
  sub_10002F614();
  sub_10002B0E0();
  objc_autoreleasePoolPush();
  v27(&a10);
  v32 = *(v22 + 56);
  v31 = *(v22 + 64);
  v33 = *(v22 + 48);
  sub_10002B42C();
  sub_10002F604();
  sub_10002B0BC();
  v34 = *(v32 + 8);
  v35 = sub_10002AC38();
  v36(v35);

  sub_10002AC68();
  sub_10002ACB8();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100011D00()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100011D58()
{
  type metadata accessor for PosterUpdater.Serializer();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10004B5A0 = v0;
  return result;
}

id sub_100011D94()
{
  v1 = v0;
  v2 = sub_10002F1B4();
  v3 = sub_10002AE90(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10002AC04();
  v6 = OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary;
  v7 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary);
  }

  else
  {
    sub_1000042B4(0, &qword_10004A610, PHPhotoLibrary_ptr);
    v9 = [objc_opt_self() systemPhotoLibraryURL];
    sub_10002F164();

    v10 = sub_100011710();
    v11 = *(v0 + v6);
    *(v1 + v6) = v10;
    v8 = v10;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

uint64_t sub_100011E90()
{
  sub_100010F34();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = swift_getObjectType();
  sub_10002AE84();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100011EFC()
{
  sub_100010C44();
  if (qword_100049690 != -1)
  {
    sub_10002AC8C();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = vextq_s8(*(v0 + 16), *(v0 + 16), 8uLL);
  *(v1 + 32) = v2;
  v3 = sub_10002B40C(&unk_1000357A8);
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100011FFC;

  return v5("updateDescriptors", 17, 2, sub_10002A154, v1);
}

uint64_t sub_100011FFC()
{
  sub_100010C44();
  v3 = v2;
  sub_10002AC5C();
  v5 = v4;
  sub_10002ABD4();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  sub_100010AE8();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_10002AE84();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 48);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_10001213C()
{
  sub_100010F34();
  v1 = *(v0 + 48);

  sub_100010C84();
  v3 = *(v0 + 64);

  return v2();
}

void sub_100012198(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_10002925C(a1);
  if (!v8)
  {
LABEL_10:
    v20 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      swift_once();
    }

    v21 = qword_10004B590;
    if (os_log_type_enabled(qword_10004B590, v20))
    {
      v28 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v60 = v54;
      *v28 = 136315138;
      v29 = sub_1000292C8(a1, &selRef_identifier);
      if (!v30)
      {
        v29 = 7104878;
      }

      LODWORD(v52) = v20;
      v31 = a3;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE300000000000000;
      }

      v33 = a2;
      v34 = sub_100022BB4(v29, v32, &v60);
      a3 = v31;
      v4 = v3;

      *(v28 + 4) = v34;
      a2 = v33;
      _os_log_impl(&_mh_execute_header, v21, v20, "Update Descriptors called with refresh session identifier '%s'", v28, 0xCu);
      sub_100004168(v54);
    }

    sub_1000129C4(a2, a1, v22, v23, v24, v25, v26, v27, v50, v52, v54, v56, v58, v60, *(&v60 + 1), v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    v36 = v35;
    if ([objc_opt_self() wallpaperDemoModeEnabled])
    {

      *&v60 = sub_1000294B8(v44, sub_1000295B4);
      sub_100023A00(&v60);
      if (v4)
      {

        __break(1u);
        return;
      }

      v45 = v60;

      sub_10002F5E4();
      sub_10002F2D4();
    }

    else
    {
      sub_100020E98(v36, v37, v38, v39, v40, v41, v42, v43, v51, v53, v55, v57, v59, v60, *(&v60 + 1), v61, v62, v63, v64, v65);
      v45 = v46;
    }

    sub_1000154C4(a2, v45);

    *a3 = v45;
    return;
  }

  sub_100011628(0x444974616863, 0xE600000000000000, v8, &v60);

  if (!v62)
  {
    sub_100010800(&v60, &qword_10004A5D8, qword_100035580);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    swift_once();
  }

  v9 = qword_10004B590;
  sub_100004120(&unk_100049E20, &qword_1000352F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000352B0;
  v11 = sub_10002F264();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10002A174();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = v9;
  sub_10002F2D4();

  v15 = objc_opt_self();
  *&v60 = 0;
  v16 = [v15 openPhotoLibraryWithWellKnownIdentifier:1 error:&v60];
  if (v16)
  {
    v17 = v16;
    v18 = v60;
    v19 = sub_10002B550(v56, v58, v17, a2);

    if (v3)
    {
    }

    else
    {
      v48 = sub_10002F5E4();
      if (os_log_type_enabled(v14, v48))
      {

        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = sub_1000126D0(v19);

        _os_log_impl(&_mh_execute_header, v14, v48, "Found: %ld descriptors", v49, 0xCu);
      }

      *a3 = v19;
    }
  }

  else
  {
    v47 = v60;

    sub_10002F0F4();

    swift_willThrow();
  }
}

uint64_t sub_1000126D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10002F7D4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100012714(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
  v4[6] = sub_10002F3A4();
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_100012820;

  return sub_100011E90();
}

uint64_t sub_100012820()
{
  sub_100010EDC();
  v2 = v0;
  v4 = v3;
  sub_10002AC5C();
  v6 = v5;
  sub_10002ABD4();
  *v7 = v6;
  v9 = v8[7];
  v10 = v8[6];
  v11 = v8[3];
  v12 = v8[2];
  v13 = *v1;
  sub_100010AE8();
  *v14 = v13;

  if (v2)
  {
    sub_10002F0E4();
    sub_10002AE40();

    v15 = v4;
  }

  else
  {
    v16 = *(v6 + 40);
    isa = sub_10002F4A4().super.isa;

    v15 = isa;
  }

  v18 = *(v6 + 32);
  v19 = v18[2];
  v20 = sub_10002AECC();
  v21(v20);

  _Block_release(v18);
  sub_100010C84();

  return v22();
}

void sub_1000129C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100010CCC();
  v143 = v27;
  v29 = v28;
  v31 = v30;
  v32 = sub_10002F1B4();
  v33 = sub_100004368(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_100010B68();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  v43 = &v131 - v42;
  if (!PLIsFeaturedContentAllowed())
  {
    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
LABEL_67:
      sub_10002AA04();
      swift_once();
    }

    sub_10002F2D4();
    goto LABEL_11;
  }

  v44 = [objc_opt_self() standardUserDefaults];
  v45 = sub_10002F3D4();
  v46 = [v44 BOOLForKey:v45];

  if (v46)
  {
    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    sub_10002F2D4();
    goto LABEL_6;
  }

  sub_1000292C8(v29, &selRef_identifier);
  if (v55)
  {
    sub_10002F124();

    sub_100013734();
    if (v56)
    {
      v133 = v35;
      v134 = v32;
      v57 = sub_10002B028();
      sub_100013DB0(v57, v58, v43, v59, v60, v61, v62, v63, v131, v132, v133, SHIDWORD(v133), v134, v43, v136, v137, v138, v139, v140, v141, v142);
      v65 = v64;

      v132 = v65;
      v139 = v65;
      v66 = v31 + 8;
      v67 = 1 << *(v31 + 32);
      v68 = -1;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      v69 = v68 & v31[8];
      v70 = (v67 + 63) >> 6;

      v71 = 0;
      v136 = v31;
      if (v69)
      {
        while (1)
        {
          v72 = v71;
LABEL_21:
          v73 = __clz(__rbit64(v69)) | (v72 << 6);
          v74 = (v31[6] + 16 * v73);
          v76 = *v74;
          v75 = v74[1];
          v77 = *(v31[7] + 8 * v73);
          v78 = objc_opt_self();

          v79 = v77;
          v80 = [v78 descriptorTypeStringWithType:202];
          v81 = sub_10002F404();
          v83 = v82;

          if (v76 == v81 && v75 == v83)
          {

            goto LABEL_62;
          }

          sub_10002B034();
          v85 = sub_10002F854();

          if (v85)
          {
            break;
          }

          v69 &= v69 - 1;

          v71 = v72;
          v31 = v136;
          if (!v69)
          {
            goto LABEL_18;
          }
        }

LABEL_62:
        sub_10002F5E4();
        v129 = v134;
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        sub_10002F2D4();
        sub_100004120(&qword_10004A650, qword_1000355D8);
        sub_10002ADD0();
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1000352A0;
        *(v130 + 32) = v79;
        v141 = v130;
        sub_1000133C0(v132);
        (*(v133 + 8))(v135, v129);
        v139 = v141;
      }

      else
      {
        while (1)
        {
LABEL_18:
          v72 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            __break(1u);
            goto LABEL_66;
          }

          if (v72 >= v70)
          {
            break;
          }

          v69 = v66[v72];
          ++v71;
          if (v69)
          {
            goto LABEL_21;
          }
        }

        v102 = v135;
        v141 = sub_10002F184();
        v142 = v103;
        v137 = 0xD00000000000001ALL;
        v138 = 0x80000001000348C0;
        sub_100029F90();
        v104 = sub_10002F664();

        if (v104)
        {
          sub_10002F5E4();
          if (qword_100049688 != -1)
          {
            sub_10002AA04();
            swift_once();
          }

          sub_10002F2D4();

          sub_10001346C(v105);
          v106 = *(v133 + 8);
          v107 = sub_10002B058();
        }

        else
        {
          v108 = v134;
          v109 = *(v133 + 8);
          v107 = v102;
        }

        v109(v107, v108);
      }
    }

    else
    {
      v110 = v43;

      v112 = sub_1000136A4(v111);
      v113 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v114 = qword_10004B590;
      (*(v35 + 16))(v40, v110, v32);
      if (os_log_type_enabled(v114, v113))
      {
        swift_bridgeObjectRetain_n();
        sub_10002AB80();
        v115 = swift_slowAlloc();
        sub_10002AB68();
        v116 = swift_slowAlloc();
        v141 = v116;
        *v115 = 136315394;
        LODWORD(v136) = v113;
        v117 = sub_10002F184();
        v135 = v110;
        v118 = *(v35 + 8);
        v118(v40, v32);
        v119 = sub_10002B37C();
        sub_100022BB4(v119, v120, v121);
        sub_10002B328();

        *(v115 + 4) = v117;
        *(v115 + 12) = 2048;
        sub_1000126D0(v112);
        sub_10002B004();

        *(v115 + 14) = v117;

        _os_log_impl(&_mh_execute_header, v114, v136, "Failed to load descriptor identifiers from %s, returning %ld existing descriptors", v115, 0x16u);
        sub_100004168(v116);
        sub_10002AB08();

        sub_10002AAC4();

        v118(v135, v32);
      }

      else
      {
        v128 = *(v35 + 8);
        v128(v40, v32);
        v128(v110, v32);
      }
    }

LABEL_11:
    sub_100010CE4();
    return;
  }

  if (v31[2])
  {

    v87 = sub_1000136A4(v86);
    v88 = PXSolariumEnabled();
    v136 = _swiftEmptyArrayStorage;
    if (v88)
    {
      sub_10002F5E4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {

        sub_10002AB80();
        v89 = swift_slowAlloc();
        *v89 = 134218240;
        *(v89 + 4) = sub_1000126D0(v87);

        *(v89 + 12) = 2048;
        *(v89 + 14) = 2;
        sub_10002AD04();
        _os_log_impl(v90, v91, v92, v93, v94, 0x16u);
        sub_10002AA78();
      }

      v136 = &off_100040F28;
    }

    v137 = _swiftEmptyArrayStorage;
    v95 = sub_1000126D0(v87);
    v96 = 0;
    v97 = v87 & 0xC000000000000001;
    while (v95 != v96)
    {
      sub_100023130(v96, v97 == 0, v87);
      if (v97)
      {
        sub_10002AD14();
        v98 = sub_10002F734();
      }

      else
      {
        v98 = *(v87 + 8 * v96 + 32);
      }

      v99 = v98;
      if (__OFADD__(v96, 1))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v100 = [v98 identifier];
      sub_10002F404();
      sub_10002B040();

      v141 = v45;
      v142 = v46;
      __chkstk_darwin(v101);
      *(&v131 - 2) = &v141;
      LOBYTE(v100) = sub_100027134(sub_10002A134, (&v131 - 4), v136);

      if (v100)
      {
      }

      else
      {
        sub_10002F764();
        v45 = v137[2];
        sub_10002F794();
        sub_10002B1FC();
        sub_10002F7A4();
        sub_10002F774();
      }

      ++v96;
    }

    v122 = v137;
    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v123 = sub_10002AE9C();
    if (os_log_type_enabled(v123, v124))
    {

      sub_10002AB74();
      v125 = swift_slowAlloc();
      *v125 = 134217984;
      *(v125 + 4) = sub_1000126D0(v122);

      sub_10002AE4C(&_mh_execute_header, v126, v127, "Nil SessionInfo, Returning %ld existing descriptors");
      sub_10002AB08();
    }

    goto LABEL_11;
  }

LABEL_6:
  sub_100010CE4();

  sub_100014E50(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v26, v143, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000133C0(unint64_t a1)
{
  v3 = sub_1000126D0(a1);
  v4 = sub_1000126D0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100027050(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000295B4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10001346C(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_1000126D0(*v1);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100027050(v9);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = (*(v2 + 0x18) >> 1) - *(v2 + 0x10);
  sub_100029B20();
  if (v11 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(v2 + 16);
    v8 = __OFADD__(v12, v11);
    v13 = v12 + v11;
    if (v8)
    {
      __break(1u);
LABEL_13:
      v16 = (v2 + 64) >> 6;
      while (1)
      {
        v17 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_34;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v10 + 8 * v17);
        ++v6;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v6 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v2 + 16) = v13;
  }

  v5 = v26;
  if (v11 != v10)
  {
LABEL_7:
    sub_100029F34();
    *v1 = v3;
    return;
  }

LABEL_10:
  v4 = *(v2 + 16);
  v10 = v27;
  v2 = v28;
  v6 = v29;
  if (!v30)
  {
    goto LABEL_13;
  }

  v14 = (v30 - 1) & v30;
  v15 = __clz(__rbit64(v30)) | (v29 << 6);
  v16 = (v28 + 64) >> 6;
LABEL_18:
  v19 = *(*(v5 + 56) + 8 * v15);
  v20 = v19;
LABEL_19:
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10002F4E4();
  }

  v3 = *v1;
  v24 = *v1 & 0xFFFFFFFFFFFFFF8;
  v25 = *(v24 + 0x18) >> 1;
  while (1)
  {
    if (v4 >= v25)
    {
      *(v24 + 16) = v4;
      goto LABEL_19;
    }

    *(v24 + 32 + 8 * v4++) = v19;
    if (!v14)
    {
      break;
    }

    v21 = v6;
LABEL_29:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(*(v5 + 56) + ((v21 << 9) | (8 * v22)));
    v23 = v19;
  }

  while (1)
  {
    v21 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v21 >= v16)
    {
      *(v24 + 16) = v4;
      goto LABEL_7;
    }

    v14 = *(v10 + 8 * v21);
    ++v6;
    if (v14)
    {
      v6 = v21;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1000136A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_100022AB8(*(a1 + 16), 0);
  sub_100029B20();
  v4 = v3;
  sub_100029F34();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v2;
}

void sub_100013734()
{
  sub_100010CCC();
  v2 = v1;
  v3 = sub_10002F1B4();
  v4 = sub_100004368(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100010B68();
  __chkstk_darwin(v9);
  sub_10002AF24();
  __chkstk_darwin(v10);
  sub_10002AC50();
  v62 = v11;
  sub_10002ABF8();
  __chkstk_darwin(v12);
  sub_10002AC50();
  v66 = v13;
  sub_10002ABF8();
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_10002F5B4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v18 = qword_10004B590;
  v19 = *(v6 + 16);
  v20 = sub_10002B370();
  v63 = v22;
  v64 = v21;
  (v22)(v20);
  if (os_log_type_enabled(v18, v17))
  {
    sub_10002AB74();
    v23 = swift_slowAlloc();
    v61 = v2;
    v24 = v23;
    sub_10002AB68();
    v25 = swift_slowAlloc();
    v60 = v17;
    v26 = v25;
    v67 = v25;
    *v24 = 136315138;
    v27 = v18;
    v28 = sub_10002F184();
    v30 = v29;
    v31 = *(v6 + 8);
    v32 = sub_10002AC38();
    v65 = v33;
    v33(v32);
    v34 = v28;
    v18 = v27;
    sub_100022BB4(v34, v30, &v67);
    sub_10002B004();

    *(v24 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v27, v60, "Loading poster descriptor identifiers with refresh session directory: %s", v24, 0xCu);
    sub_100004168(v26);
    sub_10002AA18();

    v2 = v61;
    sub_10002AB08();
  }

  else
  {
    v35 = *(v6 + 8);
    v36 = sub_10002AC38();
    v65 = v37;
    v37(v36);
  }

  v38 = v66;
  sub_10002F154();
  v39 = [objc_opt_self() defaultManager];
  sub_10002F184();
  v40 = sub_10002F3D4();

  v41 = [v39 fileExistsAtPath:v40];

  if (v41)
  {
    v42 = v62;
    v63(v62, v38, v3);
    v43 = objc_allocWithZone(NSArray);
    v57 = sub_100021D08(v42);
    v58 = sub_10002B028();
    v65(v58);
    v67 = 0;
    sub_10002F4B4();
  }

  else
  {
    v44 = sub_10002F5E4();
    v45 = v2;
    v46 = v44;
    v63(v0, v45, v3);
    if (os_log_type_enabled(v18, v46))
    {
      sub_10002AB74();
      v47 = swift_slowAlloc();
      sub_10002AB68();
      v48 = swift_slowAlloc();
      v67 = v48;
      *v47 = 136315138;
      v49 = v0;
      sub_10002F184();
      sub_10002B334();
      v50 = sub_10002AD5C();
      v51 = v18;
      v52 = v65;
      v65(v50);
      sub_100022BB4(v49, v40, &v67);
      sub_10002AEB4();

      *(v47 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v51, v46, "Missing poster descriptor identifiers plist file in refresh session directory: %s", v47, 0xCu);
      sub_100004168(v48);
      sub_10002AA78();

      sub_10002AAC4();

      v53 = sub_10002B028();
      v52(v53);
    }

    else
    {
      v54 = sub_10002AD5C();
      v55 = v65;
      v65(v54);
      v56 = sub_10002B028();
      v55(v56);
    }
  }

  sub_100010CE4();
}

void sub_100013DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100010CCC();
  a20 = v23;
  a21 = v24;
  v236 = v21;
  v237 = v25;
  v240 = v26;
  v28 = v27;
  v29 = 0;
  sub_10002B208(__stack_chk_guard);
  v245 = sub_10002F1B4();
  v30 = sub_100004368(v245);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_100010B68();
  v234 = (v35 - v36);
  sub_10002ABF8();
  v38 = __chkstk_darwin(v37);
  v47 = (&v229 - v46);
  v250 = &_swiftEmptyArrayStorage;
  v48 = *(v28 + 16);
  if (v48)
  {
    v49 = objc_opt_self();
    v243 = (v32 + 8);
    v244 = v49;
    v235 = &_swiftEmptyArrayStorage;
    v50 = (v28 + 40);
    *&v51 = 136315138;
    v241 = v51;
    *&v51 = 136315394;
    v238 = v51;
    *&v51 = 138412290;
    v231 = v51;
    v239 = v47;
    while (1)
    {
      v52 = *(v50 - 1);
      v53 = *v50;

      v54 = sub_10002F5E4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v55 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v54))
      {
        sub_10002AB74();
        v56 = swift_slowAlloc();
        sub_10002AB68();
        v57 = swift_slowAlloc();
        LODWORD(v58) = sub_10002AD20(v57).n128_u32[0];
        *(v56 + 4) = sub_10002AB9C(v58);
        sub_10002B4EC(&_mh_execute_header, v55, v54, "Processing descriptor '%s'");
        sub_100004168(v22);
        sub_10002AA88();

        sub_10002AA38();
      }

      sub_10002AC2C();
      sub_10002F144();
      sub_10002F134(v59);
      v61 = v60;
      v252[0] = 0;
      v62 = [v244 loadFromURL:v60 error:v252];

      if (!v62)
      {
        v75 = v252[0];
        sub_100010D64();
        v76 = sub_10002F0F4();

        swift_willThrow();
        v247 = 0;
        v252[0] = v76;
        sub_100004120(&qword_10004A630, &unk_100035270);
        v77 = sub_10002B394();
        sub_1000042B4(v77, &unk_10004A8D0, NSError_ptr);
        sub_10002AB44();
        v78 = v249;
        v79 = sub_10002F5D4();
        if (sub_10002B4D4(v79))
        {
          sub_10002AB80();
          v80 = swift_slowAlloc();
          sub_10002ABC8();
          v22 = swift_slowAlloc();
          v251 = v22;
          *v80 = v238;
          v81 = sub_10002AC2C();
          sub_100022BB4(v81, v82, v83);
          sub_10002B504();
          *(v80 + 4) = v52;
          *(v80 + 12) = 2080;
          v84 = [v78 localizedDescription];
          v85 = sub_10002F404();
          v248 = v78;
          v86 = v47;
          v87 = v50;
          v88 = v48;
          v90 = v89;

          v91 = sub_100022BB4(v85, v90, &v251);
          v48 = v88;
          v50 = v87;
          v47 = v86;

          *(v80 + 14) = v91;
          sub_10002AC80();
          sub_10002AD50();
          _os_log_impl(v92, v93, v94, v95, v96, v97);
          swift_arrayDestroy();
          sub_10002AA88();

          sub_10002AA38();
        }

        else
        {
        }

        v139 = sub_10002B1B4();
        v140(v139);

        v29 = v247;
        goto LABEL_47;
      }

      v63 = v252[0];
      v248 = v62;
      v64 = sub_10002F5B4();
      v65 = sub_10002B070(v64);
      v246 = v50;
      if (v65)
      {
        sub_10002AB80();
        v66 = swift_slowAlloc();
        sub_10002ABE0();
        v67 = swift_slowAlloc();
        sub_10002AB68();
        swift_slowAlloc();
        v247 = v29;
        sub_10002AEF4();
        v252[0] = v68;
        *(v66 + 4) = sub_10002AB9C(*&v238);
        *(v66 + 12) = 2112;
        v29 = v247;
        *(v66 + 14) = v248;
        *v67 = v62;
        v22 = v47;
        sub_10002AD50();
        _os_log_impl(v69, v70, v71, v72, v73, v74);
        sub_100010800(v67, &qword_100049CC0, &qword_1000355C0);
        v47 = v239;
        sub_10002AB08();

        sub_100004168(v48);
        sub_10002B2A0();
        sub_10002AB08();

        sub_10002AA38();
      }

      else
      {
        v22 = v55;
      }

      v98 = v237;
      if (!*(v237 + 16))
      {
        break;
      }

      v99 = sub_10002AC2C();
      v101 = sub_100023198(v99, v100);
      if ((v102 & 1) == 0)
      {
        break;
      }

      v103 = *(*(v98 + 56) + 8 * v101);
      sub_10002F5E4();
      sub_10002AD74();
      v104 = v22;
      if (os_log_type_enabled(v22, v105))
      {
        sub_10002AB74();
        v106 = swift_slowAlloc();
        sub_10002ABE0();
        v107 = v48;
        v108 = swift_slowAlloc();
        *v106 = v231;
        *(v106 + 4) = v103;
        *v108 = v103;
        v109 = v103;
        _os_log_impl(&_mh_execute_header, v104, v98, "Found current descriptor '%@'", v106, 0xCu);
        sub_100010800(v108, &qword_100049CC0, &qword_1000355C0);
        v48 = v107;
        sub_10002AB08();

        sub_10002AA88();
      }

      v110 = [v103 assetDirectory];
      v111 = v234;
      sub_10002F164();

      sub_10002F134(v112);
      v115 = v113;
      v22 = *v243;
      (*v243)(v111, v245);
      v252[0] = 0;
      v114 = [v244 loadFromURL:v115 error:v252];

      LOBYTE(v115) = v252[0];
      if (!v114)
      {
        v141 = v252[0];
        sub_100010D64();
        v142 = sub_10002F0F4();

        swift_willThrow();
        v29 = 0;
        v252[0] = v142;
        sub_100004120(&qword_10004A630, &unk_100035270);
        v143 = sub_10002B394();
        sub_1000042B4(v143, &unk_10004A8D0, NSError_ptr);
        sub_10002AB44();
        v144 = v249;
        sub_10002F5D4();
        sub_10002AD74();
        if (os_log_type_enabled(v104, v145))
        {
          sub_10002AB80();
          v146 = swift_slowAlloc();
          sub_10002ABC8();
          v233 = swift_slowAlloc();
          v251 = v233;
          *v146 = v238;
          v147 = sub_10002AC2C();
          *(v146 + 4) = sub_100022BB4(v147, v148, v149);
          *(v146 + 12) = 2080;
          v247 = v144;
          v150 = [v144 localizedDescription];
          sub_10002F404();
          v22 = v53;
          v230 = v103;
          sub_10002AEF4();
          HIDWORD(v229) = v142;
          v152 = v151;

          v153 = sub_10002B2A0();
          v104 = v103;
          sub_100022BB4(v153, v152, v154);
          sub_100010D64();

          *(v146 + 14) = v150;
          sub_10002B3AC(&a12);
          _os_log_impl(&_mh_execute_header, v103, v155, "Failed to load current descriptor model '%s': %s", v146, 0x16u);
          sub_10002AFBC(&a17);
          swift_arrayDestroy();
          sub_10002AAB4();

          sub_10002AB08();
        }

        else
        {
        }

LABEL_32:
        v47 = v239;
LABEL_33:
        v156 = sub_10002F5E4();
        if (sub_10002B070(v156))
        {
          sub_10002AB74();
          v157 = swift_slowAlloc();
          sub_10002AB68();
          v158 = swift_slowAlloc();
          LODWORD(v159) = sub_10002AD20(v158).n128_u32[0];
          *(v157 + 4) = sub_10002AB9C(v159);
          sub_10002B4EC(&_mh_execute_header, v104, v156, "Descriptor '%s' has changed, updating");
          sub_100004168(v22);
          sub_10002AA88();

          sub_10002AA38();
        }

        v160 = sub_10002AC2C();
        sub_1000165F8(v160, v161, v248, v47, v162, v163, v164, v165, v229, v230, v231, *(&v231 + 1), v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1));
        if (!v29)
        {
          v185 = v166;
          v22 = sub_10002F5E4();
          if (sub_10002B070(v22))
          {
            sub_10002AB80();
            v186 = swift_slowAlloc();
            sub_10002ABE0();
            swift_slowAlloc();
            v247 = 0;
            sub_10002AEF4();
            sub_10002AB68();
            v187 = swift_slowAlloc();
            v252[0] = v187;
            sub_10002AB9C(*&v238);
            sub_10002B504();
            *(v186 + 4) = v52;
            *(v186 + 12) = 2112;
            *(v186 + 14) = v185;
            *v48 = v185;
            v188 = v185;
            v29 = v247;
            sub_10002AD50();
            _os_log_impl(v189, v190, v191, v192, v193, v194);
            sub_100010800(v48, &qword_100049CC0, &qword_1000355C0);
            sub_10002B2A0();
            sub_10002AB08();

            sub_100004168(v187);
            v47 = v239;
            sub_10002AB08();

            sub_10002AA38();
          }

          else
          {
          }

          v50 = v246;
          v195 = v185;
          sub_10002F494();
          sub_10002AD3C();
          if (v197)
          {
            sub_10002ABBC(v196);
            sub_10002F4E4();
          }

          sub_100010C90();
          sub_10002F504();
          sub_10002AF94();

          v198 = sub_10002B1B4();
          v38 = v199(v198);
          goto LABEL_47;
        }

        v167 = v29;
        v29 = 0;
        v252[0] = v167;
        sub_100004120(&qword_10004A630, &unk_100035270);
        v168 = sub_10002B394();
        sub_1000042B4(v168, &unk_10004A8D0, NSError_ptr);
        sub_10002AB44();
        v169 = v249;
        v170 = sub_10002F5D4();
        if (sub_10002B070(v170))
        {
          sub_10002AB80();
          v171 = swift_slowAlloc();
          sub_10002ABC8();
          v22 = swift_slowAlloc();
          v251 = v22;
          *v171 = v238;
          v172 = sub_10002AC2C();
          sub_100022BB4(v172, v173, v174);
          sub_10002B504();
          *(v171 + 4) = v52;
          *(v171 + 12) = 2080;
          v175 = [v169 localizedDescription];
          v176 = sub_10002F404();
          v247 = 0;
          v48 = v177;

          v178 = sub_100022BB4(v176, v48, &v251);
          sub_10002B2A0();

          *(v171 + 14) = v178;
          sub_10002AD50();
          _os_log_impl(v179, v180, v181, v182, v183, v184);
          swift_arrayDestroy();
          sub_10002AA88();

          sub_10002AA38();

          v29 = v247;
        }

        else
        {
        }

        v47 = v239;
        (*v243)(v239, v245);

        goto LABEL_42;
      }

      v233 = v22;
      v116 = v252[0];
      v22 = sub_10002F5B4();
      if (sub_10002B070(v22))
      {
        sub_10002AB80();
        v115 = swift_slowAlloc();
        sub_10002ABE0();
        v117 = swift_slowAlloc();
        v247 = v29;
        v118 = v103;
        v119 = v48;
        v120 = v117;
        sub_10002AB68();
        v121 = swift_slowAlloc();
        v252[0] = v121;
        *(v115 + 4) = sub_10002AB9C(*&v238);
        *(v115 + 12) = 2112;
        *(v115 + 14) = v114;
        *v120 = v114;
        v122 = v114;
        sub_10002AD50();
        _os_log_impl(v123, v124, v125, v126, v127, v128);
        sub_100010800(v120, &qword_100049CC0, &qword_1000355C0);
        v48 = v119;
        v103 = v118;
        v29 = v247;
        sub_10002AB08();

        sub_100004168(v121);
        sub_10002AAB4();

        sub_10002AA38();
      }

      sub_1000042B4(0, &qword_10004A9D8, NSObject_ptr);
      sub_10002B328();
      if ((sub_10002F644() & 1) == 0)
      {

        goto LABEL_32;
      }

      sub_10002F5E4();
      sub_10002AD74();
      if (os_log_type_enabled(v104, v129))
      {
        sub_10002AB74();
        v130 = swift_slowAlloc();
        sub_10002AB68();
        v131 = swift_slowAlloc();
        *v130 = sub_10002AD20(v131).n128_u32[0];
        v132 = sub_10002AC2C();
        sub_100022BB4(v132, v133, v134);
        sub_10002B504();
        *(v130 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v104, v115, "Descriptor '%s' hasn't changed, keeping", v130, 0xCu);
        sub_100004168(v22);
        sub_10002AA88();

        sub_10002AAB4();
      }

      else
      {
      }

      v200 = v233;
      sub_10002F494();
      sub_10002AD3C();
      if (v197)
      {
        sub_10002ABBC(v201);
        sub_10002F4E4();
      }

      sub_10002AFE0();
      sub_10002F504();
      sub_10002AF94();

      v47 = v239;
      v38 = (v200)(v239, v245);
LABEL_42:
      v50 = v246;
LABEL_47:
      v50 += 2;
      v48 = (v48 - 1);
      if (!v48)
      {
        goto LABEL_54;
      }
    }

    v135 = sub_10002F5E4();
    v104 = v22;
    if (os_log_type_enabled(v22, v135))
    {
      sub_10002AB74();
      v136 = swift_slowAlloc();
      sub_10002AB68();
      v137 = swift_slowAlloc();
      LODWORD(v138) = sub_10002AD20(v137).n128_u32[0];
      *(v136 + 4) = sub_10002AB9C(v138);
      sub_10002B4EC(&_mh_execute_header, v22, v135, "No current descriptor '%s'");
      sub_100004168(v22);
      sub_10002AA88();

      sub_10002AA38();
    }

    goto LABEL_33;
  }

  v235 = &_swiftEmptyArrayStorage;
LABEL_54:
  sub_100019D0C(v38, v39, v40, v41, v42, v43, v44, v45, v229, v230, v231, *(&v231 + 1), v232, v233, v234, v235, v236, v237, v238, *(&v238 + 1), v239, v240, v241, *(&v241 + 1), v242, v243);
  if (v202)
  {
    sub_10001B7F8();
    if (v29)
    {
      v252[0] = v29;
      sub_100004120(&qword_10004A630, &unk_100035270);
      sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002AB44();
      v203 = v249;
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {
        sub_10002AB74();
        v204 = swift_slowAlloc();
        sub_10002AB68();
        v205 = swift_slowAlloc();
        v251 = v205;
        *v204 = 136315138;
        v206 = [v203 localizedDescription];
        sub_10002F404();
        sub_10002B31C();

        v207 = sub_10002AD30();
        sub_100022BB4(v207, v208, v209);
        sub_10002ADFC();

        *(v204 + 4) = v206;
        sub_10002AD04();
        _os_log_impl(v210, v211, v212, v213, v214, 0xCu);
        sub_100004168(v205);
        sub_10002AA18();

        sub_10002AA78();
      }

      v29 = 0;
    }

    else
    {
      sub_10002F494();
      sub_10002AD3C();
      if (v197)
      {
        sub_10002ABBC(v215);
        sub_10002F4E4();
      }

      sub_100010C90();
      sub_10002F504();
      sub_10002AF94();
    }
  }

  if (sub_10001A200())
  {
    sub_10001B7F8();
    if (v29)
    {
      v252[0] = v29;
      sub_100004120(&qword_10004A630, &unk_100035270);
      sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002AB44();
      v216 = v249;
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {
        sub_10002AB74();
        v217 = swift_slowAlloc();
        sub_10002AB68();
        v218 = swift_slowAlloc();
        v251 = v218;
        *v217 = 136315138;
        v219 = [v216 localizedDescription];
        sub_10002F404();
        sub_10002B31C();

        v220 = sub_10002AD30();
        sub_100022BB4(v220, v221, v222);
        sub_10002ADFC();

        *(v217 + 4) = v219;
        sub_10002AD04();
        _os_log_impl(v223, v224, v225, v226, v227, 0xCu);
        sub_100004168(v218);
        sub_10002AA18();

        sub_10002AA78();
      }
    }

    else
    {
      sub_10002F494();
      sub_10002AF84(v250);
      if (v197)
      {
        sub_10002ABBC(v228);
        sub_10002F4E4();
      }

      sub_10002B058();
      sub_10002F504();
    }
  }

  sub_100010CE4();
}

void sub_100014E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10002B3F0();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = objc_opt_self();
  a13 = 0;
  v32 = [v31 openPhotoLibraryWithWellKnownIdentifier:1 error:&a13];
  v33 = a13;
  v34 = &unk_100035000;
  if (v32)
  {
    v35 = v32;
    v36 = objc_opt_self();
    v37 = v33;
    v38 = [v36 standardUserDefaults];
    v39 = sub_10002F3D4();
    v40 = [v38 BOOLForKey:v39];

    v41 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v42 = qword_10004B590;
    if (os_log_type_enabled(qword_10004B590, v41))
    {
      sub_10002AB74();
      v43 = swift_slowAlloc();
      sub_10002AB68();
      v44 = swift_slowAlloc();
      a13 = v44;
      *v43 = 136315138;
      if (v40)
      {
        v45 = 0x6574746120746F6ELL;
      }

      else
      {
        v45 = 0x6974706D65747461;
      }

      if (v40)
      {
        v46 = 0xEE00676E6974706DLL;
      }

      else
      {
        v46 = 0xEA0000000000676ELL;
      }

      sub_100022BB4(v45, v46, &a13);
      sub_10002B364();

      *(v43 + 4) = 0x100035000;
      v34 = &unk_100035000;
      _os_log_impl(&_mh_execute_header, v42, v41, "Cold Start Mode, generating fallback descriptors %s to use existing Suggestions", v43, 0xCu);
      sub_100004168(v44);
      sub_10002AB08();

      sub_10002AB08();
    }

    v47 = sub_1000193F4(v30, v35, v40 ^ 1);
    sub_10002F5E4();
    sub_10002AD74();
    if (os_log_type_enabled(v42, v48))
    {

      sub_10002AB74();
      v49 = swift_slowAlloc();
      *v49 = v34[196];
      *(v49 + 4) = sub_1000126D0(v47);

      sub_10002B11C(&_mh_execute_header, v42, v26, "Cold Start Mode, generated %ld fallback descriptors");
      sub_10002AA28();
    }

    sub_1000133C0(v47);
    if (sub_10001A200())
    {
      sub_10001B7F8();
      sub_10002F494();
      v51 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v51 >> 1)
      {
        sub_10002ABBC(v51);
        sub_10002F4E4();
      }

      sub_10002F504();
    }
  }

  else
  {
    v50 = a13;
    sub_10002F0F4();

    swift_willThrow();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002AEA8();
    swift_dynamicCast();
    v52 = a13;
    v53 = sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v54 = qword_10004B590;
    if (os_log_type_enabled(qword_10004B590, v53))
    {
      sub_10002AB74();
      v55 = swift_slowAlloc();
      sub_10002AB68();
      v71 = swift_slowAlloc();
      *v55 = 136315138;
      v56 = [v52 localizedDescription];
      sub_10002F404();
      sub_10002B040();

      v57 = sub_10002AFD4();
      v60 = sub_100022BB4(v57, v58, v59);

      *(v55 + 4) = v60;
      sub_10002AF44();
      _os_log_impl(v61, v62, v63, v64, v65, v66);
      sub_100004168(v71);
      sub_10002AA28();

      sub_10002AA18();
    }

    v68 = sub_1000136A4(v67);
    v69 = sub_10002F5E4();
    if (os_log_type_enabled(v54, v69))
    {

      sub_10002AB74();
      v70 = swift_slowAlloc();
      *v70 = 134217984;
      *(v70 + 4) = sub_1000126D0(v68);

      _os_log_impl(&_mh_execute_header, v54, v69, "ColdStart, Returning %ld existing descriptors", v70, 0xCu);
      sub_10002AA78();
    }
  }

  sub_10002B3D4();
}

char *sub_1000154C4(uint64_t a1, unint64_t a2)
{

  v4 = sub_1000159FC(v3);
  v5 = sub_1000126D0(a2);
  if (v5)
  {
    v6 = v5;
    result = sub_1000233C8(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        sub_10002AFE0();
        v9 = sub_10002F734();
      }

      else
      {
        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 identifier];
      v12 = sub_10002F404();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        v18 = sub_10002ABBC(v15);
        sub_1000233C8(v18, v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v6 != v8);
  }

  v19 = sub_100015B18(_swiftEmptyArrayStorage);
  v20 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v21 = qword_10004B590;
  if (sub_10002B104())
  {

    sub_10002AB74();
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = sub_1000126D0(a2);

    sub_10002B11C(&_mh_execute_header, v21, v20, "Finished updating %ld descriptors:");
    sub_10002AA28();
  }

  v23 = sub_100015BD8(v4, v19);
  sub_100015C2C(v23);

  v24 = sub_10002F5E4();
  if (sub_10002B4D4(v24))
  {

    sub_10002AB80();
    v25 = swift_slowAlloc();
    sub_10002AB68();
    v71 = swift_slowAlloc();
    sub_10002B484(3.8521e-34);
    *(v25 + 12) = 2080;
    v26 = sub_10002AD8C();
    sub_100004120(v26, v27);
    sub_10002AA5C();
    sub_10002A0B0(v28, v29, &qword_100035798);
    sub_10002ACD4();
    sub_10002F3C4();
    sub_10002B01C();

    v30 = sub_10002AD8C();
    sub_100022BB4(v30, v31, v32);
    sub_10002AD80();

    *(v25 + 14) = &unk_10004A9C0;
    sub_10002B2FC();
    _os_log_impl(v33, v34, v35, v36, v37, v38);
    sub_100004168(v71);
    sub_10002AAC4();

    sub_10002AA28();
  }

  else
  {
  }

  v39 = sub_100010C90();
  v41 = sub_100027B90(v39, v40);
  sub_100015C2C(v41);

  v42 = sub_10002F5E4();
  if (sub_10002B4D4(v42))
  {

    sub_10002AB80();
    v43 = swift_slowAlloc();
    sub_10002AB68();
    v72 = swift_slowAlloc();
    sub_10002B484(3.8521e-34);
    *(v43 + 12) = 2080;
    v44 = sub_10002AD8C();
    sub_100004120(v44, v45);
    sub_10002AA5C();
    sub_10002A0B0(v46, v47, &qword_100035798);
    sub_10002ACD4();
    sub_10002F3C4();
    sub_10002B01C();

    v48 = sub_10002AD8C();
    sub_100022BB4(v48, v49, v50);
    sub_10002AD80();

    *(v43 + 14) = &unk_10004A9C0;
    sub_10002B2FC();
    _os_log_impl(v51, v52, v53, v54, v55, v56);
    sub_100004168(v72);
    sub_10002AAC4();

    sub_10002AA28();
  }

  else
  {
  }

  v57 = sub_100010C90();
  v59 = sub_100015BD8(v57, v58);

  v60 = sub_100015C2C(v59);

  v61 = sub_10002F5E4();
  if (!sub_10002B4D4(v61))
  {
  }

  sub_10002AB80();
  v62 = swift_slowAlloc();
  sub_10002AB68();
  v73 = swift_slowAlloc();
  *v62 = 134218242;
  *(v62 + 4) = *(v60 + 16);

  *(v62 + 12) = 2080;
  v63 = sub_10002B370();
  sub_100004120(v63, v64);
  sub_10002AA5C();
  sub_10002A0B0(v65, v66, &qword_100035798);
  sub_10002ACD4();
  sub_10002F3C4();

  v67 = sub_10002B370();
  v70 = sub_100022BB4(v67, v68, v69);

  *(v62 + 14) = v70;
  _os_log_impl(&_mh_execute_header, v21, v61, "Removed %ld: \n%s", v62, 0x16u);
  sub_100004168(v73);
  sub_10002AA28();

  sub_10002AA78();
}

uint64_t sub_1000159FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10002F594();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000271E4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100015B18(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10002F594();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_1000271E4(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

void *sub_100015BD8(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100027330(a1);
    return a2;
  }

  else
  {

    return sub_10002745C(a1, a2);
  }
}

uint64_t sub_100015C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_100022B38(*(a1 + 16), 0);
  v4 = sub_100029C68(&v6, v3 + 4, v1, a1);

  sub_100029F34();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_100023A7C(&v6, sub_10002A0F4, sub_100023EA0);
  return v6;
}

void sub_100015D38()
{
  sub_100010CCC();
  v4 = v3;
  v6 = v5;
  v7 = sub_10002F1B4();
  v8 = sub_100004368(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100010B68();
  sub_10002AF24();
  __chkstk_darwin(v13);
  sub_10002B274();
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v17 = [v6 media];
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  sub_10002AED8();
  v18 = sub_10002F4C4();

  if (sub_1000126D0(v18))
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_10002F734();
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v19 = *(v18 + 32);
    }

    sub_100010B50();

    v20 = [v4 assetDirectory];
    sub_10002F164();

    v81 = v17;
    v21 = [v17 subpath];
    sub_10002F404();

    sub_10002AECC();
    v82 = v16;
    sub_10002F154();

    objc_opt_self();
    sub_10002F134(v22);
    v24 = v23;
    v85 = 0;
    v25 = sub_10002B04C();
    v27 = [v25 v26];

    v28 = v85;
    v83 = v4;
    v84 = v1;
    if (v27)
    {
      *&v80 = v10;
      v29 = objc_opt_self();
      v30 = v28;
      v31 = [v29 styleWithBakedStyle:v27];
      v32 = [v31 clockFont];
      sub_10002F404();
      sub_10002B040();

      sub_1000042B4(0, &qword_10004A9B8, PFParallaxColor_ptr);
      v33 = [v31 clockColor];
      v34 = [objc_opt_self() whiteColor];
      sub_10002AE40();
      LOBYTE(v29) = sub_10002F644();

      if (v29)
      {
        v35 = [v31 kind];
        v36 = PIParallaxStylePrefersVibrantClockForKind();

        v37 = objc_opt_self();
        if (v36)
        {
          v38 = [v37 vibrantMaterialColor];
        }

        else
        {
          v38 = [v37 vibrantMonochromeColor];
        }

        v61 = v38;
      }

      else
      {
        v57 = [v31 clockColor];
        v58 = [v57 CGColor];

        v59 = [objc_allocWithZone(UIColor) initWithCGColor:v58];
        [v31 clockVibrancy];
        v60 = [v59 colorWithAlphaComponent:?];

        v61 = [objc_allocWithZone(PRPosterColor) initWithColor:v60 preferredStyle:2];
      }

      v16 = v61;
      v48 = v80;
      v17 = v6;
      goto LABEL_22;
    }

    v40 = v85;
    sub_100010B50();
    v41 = sub_10002F0F4();

    v79 = v41;
    swift_willThrow();
    v6 = [v6 styleCategory];
    if (!v6)
    {
      v6 = PFParallaxStyleCategoryTrueColors;
    }

    v0 = PFDefaultParallaxStyleKindForCategory();
    v18 = PIParallaxStyleClockFontForKind();
    v17 = sub_10002F404();
    *&v80 = v42;

    v16 = [objc_opt_self() vibrantMaterialColor];
    LODWORD(v18) = sub_10002F5B4();
    if (qword_100049688 == -1)
    {
LABEL_15:
      v43 = qword_10004B590;
      (*(v10 + 16))(v2, v84, v7);
      if (os_log_type_enabled(v43, v18))
      {
        sub_10002AB80();
        v44 = swift_slowAlloc();
        v76 = v0;
        v45 = v44;
        sub_10002ABC8();
        v46 = swift_slowAlloc();
        v77 = v18;
        v85 = v46;
        *v45 = 136315394;
        v78 = v17;
        v47 = sub_10002F174(1);
        v48 = v10;
        v49 = v7;
        (*(v48 + 8))(v2, v7);
        v50 = sub_10002AC38();
        sub_100022BB4(v50, v51, v52);
        sub_10002B010();

        *(v45 + 4) = v47;
        sub_10002AE6C();
        v53 = v76;
        v54 = sub_10002F404();
        v56 = sub_100022BB4(v54, v55, &v85);
        v17 = v78;

        *(v45 + 14) = v56;
        v7 = v49;
        sub_10002B0A4(&_mh_execute_header, v43, v77, "Failed to load poster style from '%s', falling back to '%s'");
        swift_arrayDestroy();
        sub_10002AAB4();

        sub_10002AB08();
      }

      else
      {

        v62 = *(v10 + 8);
        v63 = sub_10002AD5C();
        v64(v63);
        v48 = v10;
      }

LABEL_22:
      sub_10002AD8C();
      sub_10002F3D4();
      sub_10002AD80();

      v65 = PRPosterRoleLockScreen;
      v66 = sub_10002AECC();
      v68 = PPCreateTimeFontConfiguration(v66, v67);
      sub_100004120(&qword_10004A650, qword_1000355D8);
      sub_10002ADD0();
      v69 = swift_allocObject();
      v80 = xmmword_1000352A0;
      *(v69 + 16) = xmmword_1000352A0;
      *(v69 + 32) = v68;
      sub_1000042B4(0, &qword_10004A9B0, PRTimeFontConfiguration_ptr);
      v70 = v68;
      sub_10002AD30();
      isa = sub_10002F4A4().super.isa;

      v72 = v83;
      [v83 setPreferredTimeFontConfigurations:isa];

      sub_10002ADD0();
      v73 = swift_allocObject();
      *(v73 + 16) = v80;
      *(v73 + 32) = v16;
      sub_1000042B4(0, &unk_10004A840, PRPosterColor_ptr);
      v74 = sub_10002F4A4().super.isa;

      [v72 setPreferredTitleColors:v74];

      v75 = *(v48 + 8);
      v75(v84, v7);
      v75(v82, v7);
      sub_100010CE4();
      return;
    }

LABEL_25:
    sub_10002AA04();
    swift_once();
    goto LABEL_15;
  }

  sub_100010CE4();
}

uint64_t sub_100016590(uint64_t a1)
{
  result = sub_1000298E4(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_100029924(result, v3, 0, a1);
  }
}

void sub_1000165F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10002B46C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v28);
  v30 = *(v29 + 64);
  sub_10002B288();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = sub_10002F1B4();
  sub_100010B10(v34);
  v36 = *(v35 + 16);
  v37 = sub_10002B028();
  v38(v37);
  sub_1000103AC(v33, 0, 1, v34);
  sub_100016B18(v27, v25, v23, v33, 0);
  sub_100010800(v33, &unk_10004A5E0, &qword_100035720);
  sub_10002B4BC();
}

void sub_10001670C()
{
  sub_10002B46C();
  v59 = v0;
  v2 = v1;
  v57 = v3;
  v58 = v4;
  v5 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v5);
  v7 = *(v6 + 64);
  sub_10002B288();
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
  v11 = sub_10002F3B4();
  v12 = sub_1000126D0(v2);
  v13 = 0;
  v63 = v2 & 0xC000000000000001;
  v64 = v12;
  v61 = v2 & 0xFFFFFFFFFFFFFF8;
  v62 = v2;
  v14 = &selRef_uuid;
  v60 = v10;
  while (v64 != v13)
  {
    if (v63)
    {
      v15 = sub_10002F734();
    }

    else
    {
      if (v13 >= *(v61 + 16))
      {
        goto LABEL_25;
      }

      v15 = *(v62 + 8 * v13 + 32);
    }

    v16 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v65 = v13;
    v17 = v14;
    v18 = sub_1000292C8(v15, v14);
    if (!v19)
    {
      goto LABEL_31;
    }

    v20 = v18;
    v21 = v19;
    v22 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v11;
    v24 = sub_10002B034();
    v26 = sub_100023198(v24, v25);
    sub_10002B234(v26, v27);
    if (v30)
    {
      goto LABEL_26;
    }

    v31 = v28;
    v32 = v29;
    sub_100004120(&qword_10004A9A8, &qword_100035790);
    if (sub_10002F7B4(isUniquelyReferenced_nonNull_native, v11))
    {
      v33 = sub_10002B034();
      v35 = sub_100023198(v33, v34);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_32;
      }

      v31 = v35;
    }

    v11 = v66;
    if (v32)
    {
      v37 = *(v66 + 56);
      v38 = *(v37 + 8 * v31);
      *(v37 + 8 * v31) = v22;
    }

    else
    {
      sub_10002B220(v66 + 8 * (v31 >> 6));
      v40 = (v39 + 16 * v31);
      *v40 = v20;
      v40[1] = v21;
      *(*(v11 + 56) + 8 * v31) = v22;
      v41 = *(v11 + 16);
      v30 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v30)
      {
        goto LABEL_27;
      }

      *(v11 + 16) = v42;
    }

    v14 = v17;
    sub_1000292C8(v22, v17);
    v43 = objc_allocWithZone(PFPosterMedia);
    v44 = sub_10002B388();
    v46 = sub_100021CA8(v44, v45);
    sub_10002F494();
    sub_10002AB34(&_swiftEmptyArrayStorage);
    if (v48)
    {
      sub_10002AA48(v47);
      sub_10002F4E4();
    }

    sub_10002F504();

    v13 = v65 + 1;
    v10 = v60;
  }

  sub_1000042B4(0, &qword_10004A638, PFPosterDescriptor_ptr);
  v49 = sub_10001189C();
  v50 = PFParallaxStyleFrequencyTable();
  type metadata accessor for PFParallaxStyleCategory(0);
  v51 = sub_10002F4C4();

  v52 = *(v51 + 16);
  if (!v52)
  {
    goto LABEL_28;
  }

  v53 = qword_10004B598 % v52;
  if (v53 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v54 = *(v51 + 8 * v53 + 32);
  sub_10002B254();

  [v49 setStyleCategory:v50];

  if (!__OFADD__(qword_10004B598, 1))
  {
    ++qword_10004B598;
    v55 = sub_10002F1B4();
    sub_1000103AC(v10, 1, 1, v55);
    sub_100016B18(v57, v58, v49, v10, v11);
    sub_100010800(v10, &unk_10004A5E0, &qword_100035720);

    sub_10002B4BC();
    return;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_10002F874();
  __break(1u);
}

char *sub_100016B18(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  v318 = a3;
  v327 = sub_10002F104();
  v12 = sub_100004368(v327);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10002AC04();
  v326 = v18 - v17;
  v19 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v19);
  v21 = *(v20 + 64);
  sub_10002B288();
  __chkstk_darwin(v22);
  v24 = &v306 - v23;
  v25 = sub_10002F1B4();
  v26 = sub_100004368(v25);
  v319 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_100010B68();
  v331 = v30 - v31;
  sub_10002ABF8();
  __chkstk_darwin(v32);
  sub_10002B274();
  __chkstk_darwin(v33);
  sub_10002B260();
  __chkstk_darwin(v34);
  sub_10002AC50();
  v329 = v35;
  sub_10002ABF8();
  __chkstk_darwin(v36);
  v325 = &v306 - v37;
  v330 = v38;
  if (sub_1000103D4(a4, 1, v38) == 1 && !a5)
  {
    sub_100029F3C();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
    return a5;
  }

  v323 = v14;
  v324 = v5;
  v40 = PRPosterRoleLockScreen;
  sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
  v41 = v40;

  v316 = a1;
  v317 = a2;
  v311 = v41;
  v315 = sub_1000189FC(a1, a2, v41);
  v42 = [v315 assetDirectory];
  sub_10002F164();

  sub_10002A47C(a4, v24, &unk_10004A5E0, &qword_100035720);
  v43 = v330;
  if (sub_1000103D4(v24, 1, v330) != 1)
  {
    v64 = v319;
    v65 = *(v319 + 32);
    v66 = v329;
    v67 = sub_10002AD5C();
    v68(v67);
    v69 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v70 = qword_10004B590;
    a5 = *(v64 + 16);
    (a5)(v6, v66, v43);
    (a5)(v7, v325, v43);
    v71 = os_log_type_enabled(v70, v69);
    v322 = v70;
    if (v71)
    {
      sub_10002AB68();
      v72 = swift_slowAlloc();
      v321 = v69;
      v73 = v72;
      a5 = swift_slowAlloc();
      *&v336 = a5;
      *v73 = 136315650;
      *(v73 + 4) = sub_10002AB14(a5, v74, &v336);
      *(v73 + 12) = 2080;
      v75 = v6;
      sub_10002F184();
      sub_10002B01C();
      v76 = v6;
      v6 = *(v64 + 8);
      (v6)(v76, v43);
      v77 = sub_10002AD8C();
      sub_100022BB4(v77, v78, v79);
      sub_10002AD80();

      *(v73 + 14) = v75;
      *(v73 + 22) = 2080;
      v80 = v7;
      sub_10002F184();
      sub_10002B01C();
      v81 = sub_10002AEC0();
      (v6)(v81);
      v82 = sub_10002AD8C();
      sub_100022BB4(v82, v83, v84);
      sub_10002AD80();
      sub_10002B3A0();

      *(v73 + 24) = v7;
      sub_10002B3AC(v338);
      _os_log_impl(v85, v70, v86, v87, v73, 0x20u);
      swift_arrayDestroy();
      sub_10002AA18();

      sub_10002AA28();
    }

    else
    {
      v88 = *(v64 + 8);
      v80 = v88;
      v89 = sub_10002AEC0();
      v88(v89);
      v90 = v6;
      v6 = v88;
      (v88)(v90, v43);
    }

    v91 = v324;
    sub_10002ACAC();
    sub_10002AC44();
    sub_100018ABC(v92, v7, v93, v94, v95, v96, v97, v98, v306, *(&v306 + 1), v307, *&v308, v309, *(&v309 + 1), v310, v311, v312, v313, SHIDWORD(v313), v314, v315);
    v46 = v91;
    if (v91)
    {
      *&v336 = v91;
      swift_errorRetain();
      sub_100004120(&qword_10004A630, &unk_100035270);
      sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002B1C8();
      sub_10002ABEC();
      v99 = swift_dynamicCast();
      v100 = v322;
      if (v99)
      {

        v101 = v334;
        sub_10002F5D4();
        sub_10002AD74();
        if (os_log_type_enabled(v100, v102))
        {
          sub_10002AB80();
          v103 = swift_slowAlloc();
          sub_10002ABC8();
          v104 = swift_slowAlloc();
          v105 = sub_10002AF14(v104);
          *v103 = 136315394;
          *(v103 + 4) = sub_10002AB14(v105, v106, v332);
          *(v103 + 12) = 2080;
          v107 = [v101 localizedDescription];
          sub_10002F404();
          sub_10002B158();
          sub_10002AC44();
          sub_100022BB4(v108, v101, v109);
          sub_10002ADFC();
          sub_10002B3A0();

          *(v103 + 14) = v107;
          _os_log_impl(&_mh_execute_header, v100, v80, "Failed to copy resources for descriptor '%s': %s", v103, 0x16u);
          sub_10002AB8C();
          swift_arrayDestroy();
          sub_10002ACAC();
          sub_10002AB08();

          sub_10002AAB4();
        }

        swift_willThrow();
      }

      sub_10002AFA4();
      v110 = v330;
      (v6)(v66, v330);
      (v6)(v7, v110);
      goto LABEL_131;
    }

    v111 = sub_10002F5B4();
    v112 = v322;
    if (os_log_type_enabled(v322, v111))
    {
      sub_10002AB80();
      a5 = swift_slowAlloc();
      sub_10002AB68();
      v113 = swift_slowAlloc();
      *&v336 = v113;
      *a5 = 134218242;
      sub_10002AF64();
      *(a5 + 14) = sub_10002AB14(v114, v115, &v336);
      _os_log_impl(&_mh_execute_header, v112, v111, "Successfully copied %ld resources for descriptor '%s'", a5, 0x16u);
      sub_100004168(v113);
      sub_10002AA28();

      sub_10002ACAC();
      sub_10002AB08();
    }

    (v6)(v66, v330);
    goto LABEL_26;
  }

  sub_100010800(v24, &unk_10004A5E0, &qword_100035720);
  if (!a5)
  {
    v46 = v324;
    sub_10002AC44();
    sub_10002ACAC();
LABEL_26:
    a4 = v318;
    goto LABEL_28;
  }

  type metadata accessor for PhotosPosterUpdaterUtils();
  sub_10002AFBC(&v337);
  sub_10002AC44();
  v44 = v324;
  sub_100003510(v45, v7, a5, 1, 1);
  v46 = v44;
  if (v44)
  {
    *&v336 = v44;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002B1C8();
    sub_10002ABEC();
    swift_dynamicCast();
    sub_10002ACAC();
    if (v47)
    {

      v46 = v334;
      LOBYTE(v48) = sub_10002F5D4();
      if (qword_100049688 == -1)
      {
LABEL_9:
        if (os_log_type_enabled(qword_10004B590, v48))
        {
          sub_10002AB80();
          v49 = swift_slowAlloc();
          sub_10002ABC8();
          v50 = swift_slowAlloc();
          v51 = sub_10002AF14(v50);
          *v49 = 136315394;
          v53 = sub_10002AB14(v51, v52, v332);
          sub_10002AF04(v53);
          v54 = [v46 localizedDescription];
          sub_10002F404();
          sub_10002B158();
          v55 = sub_10002AD30();
          sub_100022BB4(v55, v56, v57);
          sub_10002ADFC();

          *(v49 + 14) = v54;
          sub_10002AD50();
          _os_log_impl(v58, v59, v60, v61, v62, v63);
          sub_10002AB8C();
          swift_arrayDestroy();
          sub_10002AA18();

          sub_10002AA38();

          swift_willThrow();

          sub_10002AFA4();
          (*(v319 + 8))(v325, v330);
LABEL_131:

          return a5;
        }

        swift_willThrow();

        sub_10002AFA4();
LABEL_130:
        (*(v319 + 8))(v7, v330);
        goto LABEL_131;
      }

LABEL_154:
      sub_10002AA04();
      swift_once();
      goto LABEL_9;
    }

    v130 = sub_10002AA98();
    v131(v130);

LABEL_128:
    sub_10002AFA4();
    goto LABEL_131;
  }

  sub_10002ACAC();
LABEL_28:
  sub_100015D38();
  v116 = [a4 media];
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  sub_10002AED8();
  v310 = v117;
  v118 = sub_10002F4C4();

  if (!sub_1000126D0(v118))
  {

    goto LABEL_50;
  }

  if ((v118 & 0xC000000000000001) != 0)
  {
    v119 = sub_10002F734();
  }

  else
  {
    if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }

    v119 = *(v118 + 32);
  }

  v120 = v119;

  v121 = sub_10002AFBC(&v337);
  v123 = PPGalleryOptionsForDescriptorType([v121 v122], v120);
  v124 = sub_1000292C8(v118, &selRef_displayNameLocalizationKey);
  if (v125)
  {
    sub_1000290BC(v124, v125, v123);

    v126 = [v318 shuffleConfiguration];
    if (v126)
    {
      v7 = v126;
      if ([v126 shuffleType])
      {
        goto LABEL_35;
      }

      v285 = sub_100029114(v7);
      if (!v285)
      {
        goto LABEL_35;
      }

      if (*(v285 + 16) != 1)
      {

        goto LABEL_36;
      }

      v286 = sub_100016590(v285);
      v288 = v287;

      if (!v288)
      {
LABEL_35:

        goto LABEL_36;
      }

      v329 = v120;
      v289 = objc_opt_self();
      sub_100004120(&qword_10004A838, qword_1000356F8);
      sub_10002AC74();
      v290 = swift_allocObject();
      *(v290 + 16) = xmmword_1000352B0;
      *(v290 + 32) = v286;
      *(v290 + 40) = v288;

      v291.super.isa = sub_10002F4A4().super.isa;
      v324 = v286;
      isa = v291.super.isa;

      v116 = sub_100011D94();
      v293 = [v116 librarySpecificFetchOptions];

      v294 = [v289 fetchPersonsWithLocalIdentifiers:isa options:v293];
      if ([v294 firstObject])
      {
        sub_10002B328();

        v295 = [v116 px_localizedName];
        v120 = sub_10002F404();

        sub_10002AD5C();
        if (sub_10002F454() < 1)
        {
        }

        else
        {
          v296 = sub_10002AD5C();
          sub_100029174(v296, v297, v123);
        }
      }

      else
      {
        v116 = v324;
        v120 = sub_10002F5D4();
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        v298 = qword_10004B590;
        if (os_log_type_enabled(qword_10004B590, v120))
        {
          sub_10002AB74();
          v299 = swift_slowAlloc();
          LODWORD(v328) = v120;
          v120 = v299;
          sub_10002AB68();
          v322 = swift_slowAlloc();
          *&v336 = v322;
          *v120 = 136315138;
          v300 = sub_10002B37C();
          sub_100022BB4(v300, v301, v302);
          sub_10002B328();

          *(v120 + 1) = v116;
          sub_10002B3AC(&v339);
          _os_log_impl(v303, v298, v304, v305, v120, 0xCu);
          v116 = v322;
          sub_100004168(v322);
          sub_10002AA38();

          sub_10002AB08();
        }

        else
        {
        }
      }

      sub_10002B3A0();
    }
  }

LABEL_36:
  sub_1000292C8(v123, &selRef_displayNameLocalizationKey);
  sub_10002AC44();
  if (v128)
  {
    if (v127 == 0xD00000000000002DLL && v128 == 0x8000000100034750)
    {
    }

    else
    {
      v116 = sub_10002F854();

      if ((v116 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if ([v123 featuredConfidenceLevel] == 2)
    {
      [v123 setFeaturedConfidenceLevel:1];
    }
  }

LABEL_48:
  *&v336 = 0;
  if (![a5 storeGalleryOptions:v123 error:&v336])
  {
    v205 = v336;
    sub_100010B50();
    v206 = sub_10002F0F4();

    swift_willThrow();
    *&v336 = v206;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002B1C8();
    sub_10002ABEC();
    if (swift_dynamicCast())
    {

      v207 = v334;
      v208 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (os_log_type_enabled(qword_10004B590, v208))
      {
        sub_10002AB80();
        v209 = swift_slowAlloc();
        sub_10002ABC8();
        v210 = swift_slowAlloc();
        v331 = v210;
        *&v332[0] = v210;
        *v209 = 136315394;
        v212 = sub_10002AB14(v210, v211, v332);
        sub_10002AF04(v212);
        a5 = v207;
        v213 = [v207 localizedDescription];
        v7 = v120;
        v214 = sub_10002F404();
        v216 = v215;

        v217 = v214;
        v120 = v7;
        v218 = sub_100022BB4(v217, v216, v332);

        *(v209 + 14) = v218;
        sub_10002ACAC();
        sub_10002AD50();
        _os_log_impl(v219, v220, v221, v222, v223, v224);
        sub_10002AFBC(&v340);
        swift_arrayDestroy();
        sub_10002AC44();
        sub_10002AB08();

        sub_10002AA38();
      }

      swift_willThrow();

      sub_10002AFA4();
      goto LABEL_130;
    }

    v282 = sub_10002AA98();
    v283(v282);

    goto LABEL_128;
  }

  v132 = v336;

LABEL_50:
  v116 = v323;
  v336 = 0u;
  v337 = 0u;
  v133 = [v318 media];
  v6 = sub_10002F4C4();

  v329 = v6;
  v134 = sub_1000126D0(v6);
  if (!v134)
  {
    v312 = 1;
    goto LABEL_104;
  }

  v136 = v134;
  if (v134 < 1)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v137 = 0;
  v328 = v329 & 0xC000000000000001;
  v323 = (v116 + 104);
  v322 = (v116 + 8);
  v321 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v320 = v319 + 8;
  v312 = 1;
  *&v135 = PXRectUnit[1];
  v314 = PXRectUnit[0];
  v313 = v135;
  v138 = PXRectUnit[2];
  v139 = PXRectUnit[3];
  *&v135 = 136315394;
  v309 = v135;
  *&v135 = 136315650;
  v306 = v135;
  v324 = v134;
  do
  {
    if (v328)
    {
      v140 = sub_10002F734();
    }

    else
    {
      v140 = *(v329 + 8 * v137 + 32);
    }

    v141 = v140;
    v142 = sub_1000292C8(v140, &selRef_assetUUID);
    if (v143)
    {
      *&v334 = v142;
      *(&v334 + 1) = v143;
      (*v323)(v326, v321, v327);
      sub_100029F90();
      sub_10002F1A4();
      v144.isa = v322->isa;
      v145 = sub_10002AD5C();
      v146(v145);

      v147 = objc_opt_self();
      sub_10002F134(v148);
      v150 = v149;
      *&v334 = 0;
      v151 = [v147 loadCompoundLayerStackFromWallpaperURL:v149 options:0 error:&v334];

      if (v151)
      {
        v152 = v334;
        v153 = [v151 portraitLayerStack];
        if (v153)
        {
          v154 = v153;
          v155 = [v153 depthEnabled];
        }

        else
        {
          v155 = 2;
        }

        v173 = [v151 landscapeLayerStack];
        if (v173)
        {
          v174 = v173;
          v175 = [v173 depthEnabled];
        }

        else
        {
          v175 = 2;
        }

        if (v155 != 2 && (v155 & 1) != 0 || v175 != 2 && (v175 & 1) != 0)
        {
          v312 = 0;
        }

        sub_10002A47C(&v336, &v334, &qword_10004A5D8, qword_100035580);
        if (*(&v335 + 1))
        {
          v176 = sub_10002AC14();
          v177(v176, v330);

          sub_100010800(&v334, &qword_10004A5D8, qword_100035580);
        }

        else
        {
          sub_100010800(&v334, &qword_10004A5D8, qword_100035580);
          v178 = [v151 portraitLayerStack];
          v179 = 0.0;
          v180 = 0.0;
          if (v178)
          {
            v181 = v178;
            v182 = [v178 layout];
            sub_10002AE08();
            PUPosterAdditionalViewTitleHeight();
            v180 = v183;
          }

          v184 = [v151 landscapeLayerStack];
          if (v184)
          {
            v185 = v184;
            v186 = [v184 layout];
            sub_10002AE08();
            PUPosterAdditionalViewTitleHeight();
            v179 = v187;
          }

          v188 = [objc_opt_self() deviceConfiguration];
          v189 = v188;
          if (v180 > 0.0)
          {
            v190 = [v188 portraitConfiguration];
            [v190 timeRect];
            v308 = v180;

            sub_10002B308();
            v191 = v308;
            PXRectFlippedVertically();
            v180 = v191 + CGRectGetMaxY(v341);
          }

          v192 = 0.0;
          if (v179 > 0.0)
          {
            v193 = [v189 landscapeConfiguration];
            if (v193)
            {
              v194 = v193;
              [v193 timeRect];
              sub_10002B308();
              PXRectFlippedVertically();
              MaxY = CGRectGetMaxY(v342);

              v192 = v179 + MaxY;
            }
          }

          if (PPPosterPreferredTitleStyleForLayoutProperties(v180, v192))
          {
            sub_10002F674();
            swift_unknownObjectRelease();
          }

          else
          {
            v334 = 0u;
            v335 = 0u;
          }

          v196 = sub_10002B1C8();
          sub_100029FE4(v196, v197);
          v198 = sub_10002F5E4();
          if (qword_100049688 != -1)
          {
            sub_10002AA04();
            swift_once();
          }

          v199 = qword_10004B590;
          if (os_log_type_enabled(qword_10004B590, v198))
          {
            sub_10002AB68();
            v7 = v46;
            v200 = swift_slowAlloc();
            sub_10002AB68();
            v201 = swift_slowAlloc();
            *&v334 = v201;
            *v200 = v306;
            *(v200 + 4) = sub_10002AB14(v201, v202, &v334);
            *(v200 + 12) = 2048;
            *(v200 + 14) = v180;
            *(v200 + 22) = 2048;
            *(v200 + 24) = v192;
            _os_log_impl(&_mh_execute_header, v199, v198, "Calculated title style for descriptor '%s': timeMaxYPortrait: %f, timeMaxYLandscape: %f", v200, 0x20u);
            sub_100004168(v201);
            sub_10002AB08();

            v46 = v7;
            sub_10002AC44();
            sub_10002AB08();
          }

          v203 = sub_10002AC14();
          v204(v203, v330);
        }

        v136 = v324;
      }

      else
      {
        v156 = v334;
        sub_100010B50();
        sub_10002F0F4();

        swift_willThrow();
        v157 = sub_10002F5D4();
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        v158 = os_log_type_enabled(qword_10004B590, v157);
        v159 = v330;
        if (v158)
        {
          sub_10002AB80();
          v160 = swift_slowAlloc();
          sub_10002ABE0();
          v161 = swift_slowAlloc();
          sub_10002AB68();
          v162 = swift_slowAlloc();
          *&v334 = v162;
          *v160 = v309;
          *(v160 + 4) = sub_10002AB14(v162, v163, &v334);
          *(v160 + 12) = 2112;
          swift_errorRetain();
          v164 = _swift_stdlib_bridgeErrorToNSError();
          *(v160 + 14) = v164;
          *v161 = v164;
          sub_10002B2FC();
          _os_log_impl(v165, v166, v167, v168, v169, v170);
          sub_100010800(v161, &qword_100049CC0, &qword_1000355C0);
          sub_10002AAC4();

          sub_100004168(v162);
          v159 = v330;
          sub_10002AB08();

          sub_10002AA28();
        }

        v136 = v324;
        v171 = sub_10002AC14();
        v172(v171, v159);

        v46 = 0;
      }
    }

    else
    {
    }

    ++v137;
  }

  while (v136 != v137);
LABEL_104:

  v225 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v48 = qword_10004B590;
  v226 = sub_10002AD68();
  if (os_log_type_enabled(v226, v227))
  {
    v228 = swift_slowAlloc();
    sub_10002ABC8();
    v229 = swift_slowAlloc();
    v230 = sub_10002AF14(v229);
    *v228 = 136315650;
    *(v228 + 4) = sub_10002AB14(v230, v231, v332);
    *(v228 + 12) = 1024;
    *(v228 + 14) = v312 & 1;
    *(v228 + 18) = 2080;
    swift_beginAccess();
    sub_10002A47C(&v336, &v334, &qword_10004A5D8, qword_100035580);
    sub_100004120(&qword_10004A5D8, qword_100035580);
    v232 = sub_10002F414();
    v7 = sub_100022BB4(v232, v233, v332);

    *(v228 + 20) = v7;
    sub_10002AC44();
    _os_log_impl(&_mh_execute_header, v48, v225, "Providing gallery options for descriptor '%s': depthDisabled: %{BOOL}d, titleStyle: %s", v228, 0x1Cu);
    sub_10002AB8C();
    swift_arrayDestroy();
    sub_10002AA18();

    sub_10002AA78();
  }

  swift_beginAccess();
  sub_10002A47C(&v336, &v334, &qword_10004A5D8, qword_100035580);
  v234 = *(&v335 + 1);
  if (*(&v335 + 1))
  {
    v235 = sub_100010414(&v334, *(&v335 + 1));
    v236 = *(v234 - 1);
    v237 = *(v236 + 64);
    __chkstk_darwin(v235);
    sub_10002AC04();
    (*(v236 + 16))(v239 - v238);
    sub_10002AFF8();
    v240 = sub_10002F844();
    v241 = *(v236 + 8);
    v7 = (v236 + 8);
    v242 = sub_10002AFF8();
    v243(v242);
    sub_10002AC44();
    sub_100004168(&v334);
  }

  else
  {
    v240 = 0;
  }

  v244 = v318;
  v245 = PPCreatePosterDescriptorGalleryOptions(v318, v240);
  sub_10002B004();
  swift_unknownObjectRelease();
  v246 = v315;
  [v315 setPreferredGalleryOptions:v234];

  v247 = sub_100018A6C(v244);
  sub_100029174(v247, v248, v246);
  v249 = [v244 descriptorType] != 5;
  PPPosterSetPreferredRenderingConfigurationForDescriptor(v246, v312 & 1, v249);
  v6 = &type metadata for String;
  v116 = sub_10002F3B4();
  a5 = [v244 media];
  v250 = sub_10002F4C4();

  if (!sub_1000126D0(v250))
  {

    goto LABEL_119;
  }

  if ((v250 & 0xC000000000000001) == 0)
  {
    if (!*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_154;
    }

    v251 = *(v250 + 32);
    goto LABEL_115;
  }

LABEL_152:
  v251 = sub_10002F734();
LABEL_115:
  a5 = v251;

  objc_opt_self();
  v252 = swift_dynamicCastObjCClass();
  if (v252)
  {
    [v252 suggestionSubtype];
    v253 = PHSuggestionStringWithSubtype();
    v7 = sub_10002F404();
    v255 = v254;

    *(&v335 + 1) = v6;
    *&v334 = v7;
    *(&v334 + 1) = v255;
    sub_10002AC44();
    sub_1000107F0(&v334, v332);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v333 = v116;
    sub_100028E54(v332, 0xD00000000000001CLL, 0x8000000100034730, isUniquelyReferenced_nonNull_native);

    v116 = v333;
  }

  else
  {
  }

LABEL_119:
  sub_1000112EC(v116);
  sub_10002B254();

  *&v334 = 0;
  sub_10002ACAC();
  if (sub_10002903C(v257, v258, a5))
  {
    v259 = *(v319 + 8);
    v260 = v334;
    v259(v7, v330);
    sub_10002AFA4();
    sub_100010800(&v336, &qword_10004A5D8, qword_100035580);
  }

  else
  {
    v261 = v334;
    sub_10002B254();
    v262 = sub_10002F0F4();

    swift_willThrow();
    *&v334 = v262;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002AEA8();
    if (swift_dynamicCast())
    {

      v263 = *&v332[0];
      sub_10002F5D4();
      v264 = sub_10002AF34();
      if (os_log_type_enabled(v264, v265))
      {
        sub_10002AB80();
        v266 = swift_slowAlloc();
        sub_10002ABC8();
        a5 = swift_slowAlloc();
        v333 = a5;
        *v266 = 136315394;
        v268 = sub_10002AB14(a5, v267, &v333);
        sub_10002AF04(v268);
        v269 = [v263 localizedDescription];
        sub_10002F404();
        sub_10002B158();
        sub_10002AC44();
        sub_100022BB4(v270, v263, v271);
        sub_10002ADFC();

        *(v266 + 14) = v269;
        sub_10002AD50();
        _os_log_impl(v272, v273, v274, v275, v276, v277);
        sub_10002AB8C();
        swift_arrayDestroy();
        sub_10002ACAC();
        sub_10002AB08();

        sub_10002AA38();
      }

      swift_willThrow();

      sub_10002AFA4();
      v278 = sub_10002AA98();
      v279(v278);
    }

    else
    {
      v280 = sub_10002AA98();
      v281(v280);

      sub_10002AFA4();
    }

    sub_100010800(&v336, &qword_10004A5D8, qword_100035580);
  }

  return a5;
}

id sub_1000189FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10002F3D4();

  v5 = [swift_getObjCClassFromMetadata() mutableDescriptorWithIdentifier:v4 role:a3];

  return v5;
}

unint64_t sub_100018A6C(void *a1)
{
  if ([a1 posterType] == 2)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000026;
  }
}

void sub_100018ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  sub_10002B46C();
  a20 = v22;
  a21 = v23;
  v24 = v21;
  v130 = v25;
  v27 = v26;
  sub_10002B208(__stack_chk_guard);
  v138 = sub_10002F1B4();
  v28 = sub_100004368(v138);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  sub_100010B68();
  v118 = (v33 - v34);
  sub_10002ABF8();
  v36 = __chkstk_darwin(v35);
  v38 = &v115 - v37;
  __chkstk_darwin(v36);
  sub_10002AC50();
  v127 = v39;
  sub_10002ABF8();
  __chkstk_darwin(v40);
  sub_10002AC50();
  v126 = v41;
  sub_10002ABF8();
  v43 = __chkstk_darwin(v42);
  v45 = &v115 - v44;
  __chkstk_darwin(v43);
  sub_10002AC50();
  v137 = v46;
  sub_10002ABF8();
  __chkstk_darwin(v47);
  v128 = &v115 - v48;
  v49 = [objc_opt_self() defaultManager];
  v129 = v27;
  sub_10002F134(v50);
  v52 = v51;
  v141[0] = 0;
  v53 = [v49 contentsOfDirectoryAtURL:v51 includingPropertiesForKeys:0 options:16 error:v141];

  v54 = v141[0];
  if (!v53)
  {
    v98 = v141[0];
    sub_100010D64();
    sub_10002F0F4();

    swift_willThrow();
    goto LABEL_22;
  }

  v116 = v38;
  v117 = v21;
  v55 = sub_10002F4C4();
  v56 = v54;

  v57 = 0;
  v132 = *(v55 + 16);
  v136 = v30 + 16;
  *&v58 = 136315394;
  v119 = v58;
  v131 = v49;
  v123 = v30 + 8;
  v125 = v30;
  v120 = v45;
  v124 = v55;
  while (1)
  {
    if (v132 == v57)
    {

      goto LABEL_22;
    }

    if (v57 >= *(v55 + 16))
    {
      __break(1u);
LABEL_24:
      sub_10002AA04();
      swift_once();
      goto LABEL_16;
    }

    v59 = v125;
    v60 = v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57;
    v61 = *(v125 + 16);
    v62 = v45;
    v63 = v128;
    v64 = v138;
    v133 = v57;
    v134 = v61;
    (v61)(v128, v60, v138);
    sub_10002F114();
    sub_10002F154();

    sub_10002F114();
    v65 = v63;
    v45 = v62;
    v135 = *(v59 + 8);
    v135(v65, v64);
    sub_10002F154();

    sub_10002F134(v66);
    v68 = v67;
    sub_10002F134(v69);
    v71 = v70;
    v141[0] = 0;
    v72 = [v131 copyItemAtURL:v68 toURL:v70 error:v141];

    if (!v72)
    {
      break;
    }

    v73 = v141[0];
    v24 = sub_10002F5B4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v74 = qword_10004B590;
    v75 = v126;
    v76 = v134;
    (v134)(v126, v137, v138);
    v77 = v127;
    v78 = sub_10002B37C();
    (v76)(v78);
    if (os_log_type_enabled(v74, v24))
    {
      sub_10002AB80();
      v79 = swift_slowAlloc();
      sub_10002ABC8();
      v134 = swift_slowAlloc();
      v141[0] = v134;
      *v79 = v119;
      sub_100029E04();
      v122 = v74;
      v80 = v75;
      v81 = v77;
      v82 = v138;
      sub_10002F824();
      sub_10002B01C();
      v121 = v24;
      v24 = v135;
      v135(v80, v82);
      v83 = sub_10002AD8C();
      sub_100022BB4(v83, v84, v85);
      sub_10002AD80();
      v86 = v137;

      *(v79 + 4) = v80;
      *(v79 + 12) = 2080;
      v87 = sub_10002F824();
      v89 = v88;
      v24(v81, v82);
      v90 = sub_10002ADC4();
      sub_100022BB4(v90, v89, v91);
      sub_10002AE28();

      *(v79 + 14) = v87;
      sub_10002B3AC(&a19);
      _os_log_impl(&_mh_execute_header, v122, v92, "Successfully copied '%s' to '%s'", v79, 0x16u);
      swift_arrayDestroy();
      v93 = v120;
      sub_10002AB08();

      sub_10002AAB4();

      v94 = sub_10002B388();
      (v24)(v94);
      v95 = v86;
      v45 = v93;
      v24(v95, v82);
    }

    else
    {
      sub_10002B214();
      v96 = v135;
      (v135)();
      v97 = sub_10002AFF8();
      v96(v97);
      (v96)(v45, v77);
      (v96)(v137, v77);
    }

    v55 = v124;
    v57 = v133 + 1;
  }

  v99 = v141[0];

  v100 = sub_10002F0F4();

  swift_willThrow();
  v141[0] = v100;
  swift_errorRetain();
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (!swift_dynamicCast())
  {

    sub_10002B214();
    v107 = v135;
    goto LABEL_21;
  }

  v24 = v139;
  LOBYTE(v45) = sub_10002F5D4();
  if (qword_100049688 != -1)
  {
    goto LABEL_24;
  }

LABEL_16:
  v101 = qword_10004B590;
  v102 = v116;
  v103 = v138;
  v104 = v134;
  (v134)(v116, v137, v138);
  v99 = v118;
  (v104)(v118, v120, v103);
  if (os_log_type_enabled(v101, v45))
  {
    sub_10002AB68();
    v105 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v140 = v136;
    *v105 = 136315650;
    v106 = sub_100029E04();
    v134 = v101;
    sub_10002F824();
    sub_10002B340();
    v107 = v135;
    v135(v102, v138);
    v108 = sub_10002AC38();
    sub_100022BB4(v108, v109, v110);
    sub_10002B010();

    *(v105 + 4) = v102;
    *(v105 + 12) = 2080;
    sub_10002F824();
    sub_10002B334();
    (v107)(v99, v138);
    sub_100022BB4(v99, v106, &v140);
    sub_10002AEB4();

    *(v105 + 14) = v99;
    *(v105 + 22) = 2080;
    v111 = [v24 localizedDescription];
    v112 = sub_10002F404();
    v114 = v113;

    sub_100022BB4(v112, v114, &v140);
    sub_10002B010();

    *(v105 + 24) = v111;
    _os_log_impl(&_mh_execute_header, v134, v45, "Failed to copy '%s' to '%s': %s", v105, 0x20u);
    v99 = v136;
    swift_arrayDestroy();
    sub_10002AA38();

    sub_10002AAC4();
  }

  else
  {
    sub_10002B214();
    v107 = v135;
    (v135)();
    (v107)(v102, v99);
  }

  swift_willThrow();

  sub_10002B214();
LABEL_21:
  v107();
  (v107)(v137, v99);

LABEL_22:
  sub_10002B4BC();
}

uint64_t sub_1000193F4(uint64_t a1, void *a2, char a3)
{
  v6 = _swiftEmptyArrayStorage;
  v65[0] = _swiftEmptyArrayStorage;
  if (a3)
  {
    v3 = v58;
    v6 = sub_10001A608(a2);
  }

  if (!sub_1000126D0(v6))
  {

    v7 = objc_opt_self();
    aBlock[4] = sub_100019C4C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CB4;
    aBlock[3] = &unk_100041378;
    v8 = [v7 coldStartPortraitWallpaperInPhotoLibrary:a2 passingFilterBlock:_Block_copy(aBlock) maximumNumberOfTries:PNSuggestionColdStartPortraitWallpaperMaximumNumberOfFilterTries];
    v9 = sub_10002AE40();
    _Block_release(v9);
    sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
    sub_100010C70();
    v6 = sub_10002F4C4();

    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v3 = qword_10004B590;
    v10 = sub_10002AE9C();
    if (os_log_type_enabled(v10, v11))
    {

      sub_10002AB74();
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v4 = sub_1000126D0(v6);

      *(v12 + 4) = v4;

      sub_10002AE4C(&_mh_execute_header, v13, v14, "Chose %ld fallback Portrait FeaturedPhotos");
      sub_10002AB08();
    }

    else
    {
    }
  }

  v62 = v6 & 0xC000000000000001;
  v63 = sub_1000126D0(v6);
  v61 = v6 & 0xFFFFFFFFFFFFFF8;

  v15 = 0;
  v57 = _swiftEmptyArrayStorage;
  v60 = v6;
  while (1)
  {
    v16 = v15;
    if (v63 == v15)
    {
      break;
    }

    if (v62)
    {
      sub_10002B034();
      v17 = sub_10002F734();
    }

    else
    {
      if (v15 >= *(v61 + 16))
      {
        goto LABEL_41;
      }

      v17 = *(v6 + 8 * v15 + 32);
    }

    v18 = v17;
    ++v15;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_100004120(&qword_10004A838, qword_1000356F8);
    sub_10002AC74();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000352B0;
    result = sub_1000292C8(v18, &selRef_uuid);
    if (!v21)
    {
      __break(1u);
      return result;
    }

    sub_10002B334();
    v22 = objc_opt_self();
    *(v19 + 32) = v3;
    *(v19 + 40) = v4;
    sub_10002F4A4();
    sub_100010B50();

    v23 = [v22 descriptorIdentifierForDescriptorType:1 uuids:v3];

    v24 = sub_10002F404();
    if (*(a1 + 16) && (v25 = sub_10002AE34(), v27 = sub_100023198(v25, v26), (v28 & 1) != 0))
    {
      v40 = *(*(a1 + 56) + 8 * v27);
      v41 = sub_10002F5E4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v4 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v41))
      {
        sub_10002AB74();
        v42 = swift_slowAlloc();
        sub_10002AB68();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136315138;
        v44 = sub_10002AE34();
        sub_100022BB4(v44, v45, v46);
        sub_10002B364();

        *(v42 + 4) = v24;
        sub_10002B11C(&_mh_execute_header, v4, v41, "Fallback FeaturedPhoto descriptor '%s' didn't change, keeping");
        sub_100004168(v43);
        sub_10002AA88();

        sub_10002AA28();
      }

      else
      {
      }

      v6 = v60;
      v50 = v40;
      v3 = v65;
      sub_10002F494();
      sub_10002AF74(v65[0]);
      if (v49)
      {
        sub_10002ABBC(v51);
        sub_10002F4E4();
      }

      sub_10002F504();

      v57 = v65[0];
    }

    else
    {
      sub_100004120(&qword_10004A650, qword_1000355D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000352A0;
      *(inited + 32) = v18;
      v30 = v18;
      sub_10002AE34();
      sub_10001670C();
      v32 = v31;
      swift_setDeallocating();
      sub_10002288C();
      v33 = sub_10002F5E4();
      v34 = v33;
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v4 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v34))
      {
        sub_10002AB74();
        v35 = swift_slowAlloc();
        sub_10002AB68();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        v37 = sub_10002AE34();
        sub_100022BB4(v37, v38, v39);
        sub_10002B364();

        *(v35 + 4) = v24;
        sub_10002B11C(&_mh_execute_header, v4, v34, "Successfully created fallback FeaturedPhoto descriptor '%s'");
        sub_100004168(v36);
        sub_10002AA88();

        sub_10002AA28();
      }

      else
      {
      }

      v6 = v60;
      v47 = v32;
      v3 = v65;
      sub_10002F494();
      sub_10002AF74(v65[0]);
      if (v49)
      {
        sub_10002ABBC(v48);
        sub_10002F4E4();
      }

      sub_10002F504();
      v57 = v65[0];
    }
  }

  swift_bridgeObjectRelease_n();
  sub_10002F5E4();
  if (qword_100049688 == -1)
  {
    goto LABEL_37;
  }

LABEL_42:
  sub_10002AA04();
  swift_once();
LABEL_37:
  v52 = sub_10002AE9C();
  if (os_log_type_enabled(v52, v53))
  {

    sub_10002AB74();
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = sub_1000126D0(v57);

    sub_10002AE4C(&_mh_execute_header, v55, v56, "Created %ld fallback FeaturedPhoto descriptors.");
    sub_10002AB08();
  }

  return v57;
}

id sub_100019C4C(uint64_t a1)
{
  v1 = [objc_allocWithZone(PHWallpaperAsset) initWithPhotoAsset:a1];
  v2 = [objc_opt_self() tryLoadSegmentationForColdAsset:v1];

  return v2;
}

uint64_t sub_100019CB4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_100019D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, id a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10002B3F0();
  a25 = v27;
  a26 = v28;
  if ((PXSolariumEnabled() & 1) == 0)
  {
    v29 = objc_opt_self();
    a12 = 0;
    v30 = [v29 openPhotoLibraryWithWellKnownIdentifier:1 error:&a12];
    if (v30)
    {
      v31 = v30;
      v32 = a12;
      v33 = [v31 librarySpecificFetchOptions];
      [v33 setFetchLimit:1];
      sub_1000042B4(0, &qword_10004A978, NSCompoundPredicate_ptr);
      sub_100004120(&qword_10004A650, qword_1000355D8);
      sub_10002AC74();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1000355F0;
      sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
      sub_100004120(&unk_100049E20, &qword_1000352F8);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100035290;
      *(v35 + 56) = &type metadata for UInt16;
      *(v35 + 64) = &protocol witness table for UInt16;
      *(v35 + 32) = 602;
      *(v35 + 96) = &type metadata for UInt16;
      *(v35 + 104) = &protocol witness table for UInt16;
      *(v35 + 72) = 652;
      *(v34 + 32) = sub_10002F5A4();
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000352B0;
      *(v36 + 56) = &type metadata for UInt16;
      *(v36 + 64) = &protocol witness table for UInt16;
      *(v36 + 32) = 4;
      *(v34 + 40) = sub_10002F5A4();
      v37 = sub_10001A17C();
      v38 = sub_10002B358();
      [v38 v39];

      v40 = [objc_opt_self() fetchSuggestionsWithOptions:v33];
      v41 = [v40 count];
      sub_10002F5E4();
      if (v41)
      {
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }
      }

      else if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      sub_10002F2D4();
    }

    else
    {
      v42 = a12;
      sub_100010D64();
      v43 = sub_10002F0F4();

      swift_willThrow();
      a12 = v43;
      sub_100004120(&qword_10004A630, &unk_100035270);
      sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002ABEC();
      swift_dynamicCast();
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {
        sub_10002AB74();
        v44 = swift_slowAlloc();
        sub_10002AB68();
        v45 = swift_slowAlloc();
        a13 = v45;
        *v44 = 136315138;
        v46 = [a10 localizedDescription];
        sub_10002F404();
        sub_10002B31C();

        v47 = sub_10002AD30();
        sub_100022BB4(v47, v48, v49);
        sub_10002ADFC();

        *(v44 + 4) = v46;
        sub_10002AD04();
        _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
        sub_100004168(v45);
        sub_10002AA18();

        sub_10002AA78();
      }
    }
  }

  sub_10002B3D4();
}

id sub_10001A17C()
{
  sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
  isa = sub_10002F4A4().super.isa;

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:isa];

  return v1;
}

uint64_t sub_10001A200()
{
  if (PXSolariumEnabled())
  {
    return 0;
  }

  v0 = [objc_opt_self() currentDeviceSupportsSettlingEffect];
  sub_10002F5E4();
  if (!v0)
  {
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    sub_10002F2D4();
    return 0;
  }

  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  sub_10002F2D4();
  return 1;
}

void *sub_10001A2F4(uint64_t a1, uint64_t a2)
{
  v28 = sub_100023B00(a1);
  sub_100023A7C(&v28, sub_100029DC4, sub_100023BBC);
  v3 = v28;
  v4 = *(v28 + 16);
  if (v4)
  {
    v28 = &_swiftEmptyArrayStorage;
    sub_1000233A8(0, v4, 0);
    v5 = 48;
    v6 = v28;
    do
    {
      v7 = *(v3 + v5);
      v28 = v6;
      v9 = v6[2];
      v8 = v6[3];

      if (v9 >= v8 >> 1)
      {
        sub_1000233A8((v8 > 1), v9 + 1, 1);
        v6 = v28;
      }

      v6[2] = v9 + 1;
      v6[v9 + 4] = v7;
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = &_swiftEmptyArrayStorage;
  }

  v10 = 0;
  v11 = 0;
  v12 = v6[2];
  while (v12 != v10)
  {
    if (v10 >= v6[2])
    {
      goto LABEL_52;
    }

    v13 = v6[v10 + 4];
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v15 = v6[v10 + 4];
      }

      v14 = sub_10002F7D4();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 > v11)
    {
      v11 = v14;
    }

    ++v10;
  }

  v28 = &_swiftEmptyArrayStorage;
  if (v11 > 0)
  {
    v16 = 0;
    v17 = &_swiftEmptyArrayStorage;
    while (!v12)
    {
LABEL_44:
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_53;
      }

      if (v16 >= v11)
      {

        return v17;
      }
    }

    v18 = 0;
    while (v18 < v6[2])
    {
      v19 = v6[v18 + 4];
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v25 = v6[v18 + 4];
        }

        v20 = sub_10002F7D4();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16 < v20)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {

          sub_10002AFE0();
          sub_10002F734();
        }

        else
        {
          if (v16 < 0)
          {
            goto LABEL_50;
          }

          if (v16 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v21 = *(v19 + 8 * v16 + 32);
        }

        sub_10002F494();
        sub_10002AF74(v28);
        if (v23)
        {
          sub_10002ABBC(v22);
          sub_10002F4E4();
        }

        sub_10002F504();
        v17 = v28;
        if (v28 >> 62)
        {
          v24 = sub_10002F7D4();
        }

        else
        {
          v24 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v24 >= a2)
        {
          v16 = v11;
          goto LABEL_44;
        }
      }

      if (v12 == ++v18)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);

    __break(1u);
    return result;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10001A608(void *a1)
{
  v2 = [a1 librarySpecificFetchOptions];
  sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
  sub_100004120(&unk_100049E20, &qword_1000352F8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100035600;
  *(sub_10002ADDC(v3, &type metadata for UInt16) + 112) = 4;
  v4 = sub_10002F5A4();
  [v2 setPredicate:v4];

  sub_100004120(&qword_10004A650, qword_1000355D8);
  sub_10002ADD0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000352A0;
  v6 = objc_allocWithZone(NSSortDescriptor);
  *(v5 + 32) = sub_100021E54(1684632949, 0xE400000000000000, 1);
  sub_1000291D8(v5, v2, &qword_10004A950, NSSortDescriptor_ptr, &selRef_setSortDescriptors_);
  v7 = [objc_opt_self() fetchSuggestionsWithOptions:v2];
  v8 = [v7 fetchedObjects];
  if (!v8)
  {
    goto LABEL_40;
  }

  v9 = v8;
  sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
  sub_100010C70();
  v10 = sub_10002F4C4();

  if (sub_1000126D0(v10) < 1)
  {

LABEL_40:
    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
LABEL_49:
      sub_10002AA04();
      swift_once();
    }

    v71 = _swiftEmptyArrayStorage;
    sub_10002F2D4();

    return v71;
  }

  v90 = v2;
  v92 = a1;
  v88 = v7;
  v11 = sub_1000126D0(v10);
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v2 = (v10 & 0xFFFFFFFFFFFFFF8);
  v14 = &_swiftEmptyDictionarySingleton;
  v95 = v10 & 0xC000000000000001;
  v96 = v10;
  v94 = v10 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if (v13)
    {
      sub_10002AC38();
      v15 = sub_10002F734();
    }

    else
    {
      if (v12 >= v2[2])
      {
        goto LABEL_47;
      }

      v15 = *(v10 + 8 * v12 + 32);
    }

    v7 = v15;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ([v15 subtype] != 602)
    {
      [v7 subtype];
      v19 = PHSuggestionStringWithSubtype();
      v20 = sub_10002F404();
      v22 = v21;

      goto LABEL_14;
    }

    v17 = sub_1000292C8(v7, &selRef_context);
    if (v18)
    {
      v20 = v17;
      v22 = v18;
LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v14;
      v24 = sub_10002AE34();
      v26 = sub_100023198(v24, v25);
      sub_10002B234(v26, v27);
      if (v30)
      {
        goto LABEL_48;
      }

      v31 = v28;
      v32 = v29;
      sub_100004120(&qword_10004A928, &qword_100035740);
      v33 = sub_10002F7B4(isUniquelyReferenced_nonNull_native, v14);
      v14 = v99[0];
      if (v33)
      {
        v34 = sub_10002AE34();
        v36 = sub_100023198(v34, v35);
        v10 = v96;
        if ((v32 & 1) != (v37 & 1))
        {
          goto LABEL_53;
        }

        v31 = v36;
        if (v32)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v10 = v96;
        if (v32)
        {
          goto LABEL_21;
        }
      }

      sub_10002B220(v99[0] + 8 * (v31 >> 6));
      v39 = (v38 + 16 * v31);
      *v39 = v20;
      v39[1] = v22;
      *(v14[7] + 8 * v31) = _swiftEmptyArrayStorage;
      v40 = v14[2];
      v30 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v30)
      {
        __break(1u);
        goto LABEL_51;
      }

      v14[2] = v41;
LABEL_22:
      v42 = (v14[7] + 8 * v31);
      v43 = v7;
      sub_10002F494();
      sub_10002AF84(*v42);
      if (v45)
      {
        sub_10002ABBC(v44);
        sub_10002F4E4();
      }

      sub_10002B058();
      sub_10002F504();

      v12 = v16;
      v2 = v94;
      v13 = v95;
    }

    else
    {

      ++v12;
    }
  }

  v46 = sub_10001A2F4(v14, PNSuggestionColdStartPortraitWallpaperGalleryMaximumNumberOfFeaturedPhotos);
  v47 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v48 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v47))
  {

    sub_10002AB68();
    v56 = swift_slowAlloc();
    sub_10002AB68();
    v57 = swift_slowAlloc();
    v99[0] = v57;
    *v56 = 134218498;
    *(v56 + 4) = sub_1000126D0(v10);

    *(v56 + 12) = 2048;
    *(v56 + 14) = sub_1000126D0(v46);

    *(v56 + 22) = 2080;
    v58 = sub_1000126D0(v46);
    if (v58)
    {
      v59 = v58;
      v86 = v57;
      *&v87 = v56;
      *(&v87 + 1) = v48;
      LODWORD(v94) = v47;
      v95 = v14;
      sub_1000233C8(0, v58 & ~(v58 >> 63), 0);
      if (v59 < 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v60 = 0;
      do
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          sub_10002B1FC();
          v61 = sub_10002F734();
        }

        else
        {
          v61 = *(v46 + 8 * v60 + 32);
        }

        v62 = v61;
        v63 = [v61 uuid];
        v64 = sub_10002F404();
        v66 = v65;

        v97 = _swiftEmptyArrayStorage;
        v68 = _swiftEmptyArrayStorage[2];
        v67 = _swiftEmptyArrayStorage[3];
        if (v68 >= v67 >> 1)
        {
          v70 = sub_10002ABBC(v67);
          sub_1000233C8(v70, v68 + 1, 1);
        }

        ++v60;
        _swiftEmptyArrayStorage[2] = v68 + 1;
        v69 = &_swiftEmptyArrayStorage[2 * v68];
        *(v69 + 4) = v64;
        *(v69 + 5) = v66;
      }

      while (v59 != v60);
      LOBYTE(v47) = v94;
      v48 = *(&v87 + 1);
      v56 = v87;
      v57 = v86;
    }

    v72 = sub_10002F4D4();

    v73 = sub_10002AC80();
    sub_100022BB4(v73, v74, v75);
    sub_10002AE40();

    *(v56 + 24) = v72;
    _os_log_impl(&_mh_execute_header, v48, v47, "Found %ld existing Top Suggestions, chosen %ld of them: %s", v56, 0x20u);
    sub_100004168(v57);
    sub_10002AB08();

    sub_10002AB08();
  }

  sub_10001AE50(v46, v49, v50, v51, v52, v53, v54, v55, v86, v87, v88, v90, v92, v94, v95, v96, v97, v98, v99[0], v99[1], v99[2], v99[3], v99[4], v99[5], v99[6]);
  v76 = objc_allocWithZone(PHManualFetchResult);
  v77 = v93;
  sub_10002AC80();
  sub_100021EC0();
  v79 = v78;
  sub_10001AF9C(v79);
  v80 = [v77 librarySpecificFetchOptions];
  v81 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v79 options:v80];
  if (v81)
  {
    v82 = v81;

    sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
    v83 = sub_10002F3A4();

    sub_1000136A4(v83);

    v99[0] = sub_1000294B8(v84, sub_10002974C);
    sub_100023984(v99);

    return v99[0];
  }

LABEL_52:
  __break(1u);
LABEL_53:
  sub_10002F874();
  __break(1u);

  __break(1u);
  return result;
}

void sub_10001AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10002B3F0();
  a24 = v25;
  a25 = v27;
  v28 = v26;
  if (v26 >> 62)
  {
    v29 = sub_10002F7D4();
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {
LABEL_12:
    sub_10002B3D4();
    return;
  }

  a13 = &_swiftEmptyArrayStorage;
  sub_100023388(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = a13;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        sub_100010C90();
        sub_10002F734();
      }

      else
      {
        v32 = *(v28 + 8 * v30 + 32);
      }

      sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
      swift_dynamicCast();
      a13 = v31;
      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        sub_100023388((v33 > 1), v34 + 1, 1);
        v31 = a13;
      }

      ++v30;
      v31[2] = v34 + 1;
      sub_1000107F0(&a10, &v31[4 * v34 + 4]);
    }

    while (v29 != v30);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_10001AF9C(void *a1)
{
  v2 = [a1 photoLibrary];
  v52 = [v2 librarySpecificFetchOptions];
  sub_100004120(&unk_100049E20, &qword_1000352F8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000351F0;
  *(sub_10002ADDC(v3, &type metadata for UInt16) + 112) = 1;
  v4 = [a1 fetchedObjectIDsSet];
  if (!v4)
  {
    __break(1u);
    goto LABEL_32;
  }

  v5 = v4;
  sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
  sub_10002AFEC();
  sub_1000042B4(v6, v7, v8);
  sub_10002AFEC();
  sub_100029E94(v9, v10, v11);
  sub_10002F584();

  sub_10002AD30();
  isa = sub_10002F574().super.isa;

  sub_10002AFEC();
  *(v3 + 176) = sub_1000042B4(v13, v14, v15);
  sub_10002AFEC();
  *(v3 + 184) = sub_100029E94(v16, v17, v18);
  *(v3 + 152) = isa;
  v19 = sub_10002F5A4();
  [v52 setPredicate:v19];

  v20 = [objc_opt_self() fetchSuggestionsWithOptions:v52];
  v21 = [v20 fetchedObjects];

  if (!v21)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
  sub_10002AEB4();
  v22 = sub_10002F4C4();

  v23 = [a1 fetchedObjects];
  if (!v23)
  {
    goto LABEL_33;
  }

  v24 = v23;
  v25 = sub_10002F4C4();

  aBlock[0] = &_swiftEmptyArrayStorage;
  v26 = sub_1000126D0(v25);
  for (i = 0; v26 != i; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = sub_10002F734();
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v28 featuredState] == 1)
    {
    }

    else
    {
      sub_10002F764();
      v30 = *(aBlock[0] + 2);
      sub_10002F794();
      sub_10002B1FC();
      sub_10002F7A4();
      v20 = aBlock;
      sub_10002F774();
    }
  }

  v20 = aBlock[0];
  LOBYTE(v26) = sub_10002F5B4();
  if (qword_100049688 == -1)
  {
    goto LABEL_16;
  }

LABEL_30:
  sub_10002AA04();
  swift_once();
LABEL_16:
  v31 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v26))
  {

    sub_10002AB80();
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = sub_1000126D0(v20);

    *(v32 + 12) = 2048;
    *(v32 + 14) = sub_1000126D0(v22);

    sub_10002B2FC();
    _os_log_impl(v33, v34, v35, v36, v37, v38);
    sub_10002AA28();
  }

  if (sub_1000126D0(v20) <= 0 && sub_1000126D0(v22) < 1)
  {
  }

  else
  {
    v39 = swift_allocObject();
    v39[2] = v20;
    v39[3] = v22;
    aBlock[4] = sub_100029F14;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B34C;
    aBlock[3] = &unk_100041350;
    v40 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v41 = sub_10002B04C();
    v43 = [v41 v42];
    _Block_release(v40);
    if (v43)
    {
      v44 = aBlock[0];
    }

    else
    {
      v45 = aBlock[0];
      sub_100010CB8();
      sub_10002F0F4();

      swift_willThrow();
      v46 = sub_10002F5D4();
      if (os_log_type_enabled(v31, v46))
      {
        sub_10002AB74();
        v47 = swift_slowAlloc();
        sub_10002AB68();
        v48 = swift_slowAlloc();
        aBlock[0] = v48;
        *v47 = 136315138;
        swift_getErrorValue();
        v49 = sub_10002F884();
        v51 = sub_100022BB4(v49, v50, aBlock);

        *(v47 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v31, v46, "Error setting featured state of Suggestions: %s", v47, 0xCu);
        sub_100004168(v48);
        sub_10002AA88();

        sub_10002AB08();
      }
    }
  }
}