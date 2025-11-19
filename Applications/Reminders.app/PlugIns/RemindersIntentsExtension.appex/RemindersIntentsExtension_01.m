id sub_100016E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v15[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v15[4] = &off_10003DE48;
  v15[0] = a3;
  v14[3] = v8;
  v14[4] = &protocol witness table for TTRCurrentTimeProvider;
  v14[0] = a4;
  v9 = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_store] = a1;
  *&v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_queue] = a2;
  sub_10000B82C(v15, &v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource]);
  sub_10000B82C(v14, &v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider]);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_100008D70(v15);
  sub_100008D70(v14);
  return v11;
}

void sub_100016F54(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v7 < *(a3 + 16))
    {
      v15 = *(a3 + 8 * v7 + 32);
      v9 = v15;
      v10 = v6(&v15);
      if (v3)
      {

        return;
      }

      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100021404(0, v8[2] + 1, 1);
          v8 = v16;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          sub_100021404((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        v8[2] = v13 + 1;
        v8[v13 + 4] = v9;
        v6 = a1;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_1000170B4()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042350);
  v1 = sub_1000089D8(v0, qword_100042350);
  if (qword_100041B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100017204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v11 = sub_100030664();
  sub_1000089D8(v11, qword_100042350);

  v12 = a1;
  v13 = sub_100030654();
  v14 = sub_100030884();

  if (os_log_type_enabled(v13, v14))
  {
    v37 = a4;
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = v12;
    v17 = [v16 description];
    v18 = sub_1000306F4();
    v20 = v19;

    v21 = sub_10002B88C(v18, v20, &v39);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = a2;

    sub_100008944(&qword_100041C00, &qword_100033DC0);
    v23 = sub_100030704();
    v25 = sub_10002B88C(v23, v24, &v39);

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Widget provideListOptions {intent: %s, searchTerm: %s}", v15, 0x16u);
    swift_arrayDestroy();

    a4 = v37;
  }

  else
  {

    v22 = a2;
  }

  sub_100008944(&qword_1000423B8, &unk_100034348);
  v26 = &v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource];
  v27 = *&v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 24];
  v28 = *&v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 32];
  sub_100008A10(&v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource], v27);
  sub_10000CB88(v27, v28);
  v29 = *(v26 + 3);
  v30 = *(v26 + 4);
  sub_100008A10(v26, v29);
  sub_10000CAAC(v29, v30);
  sub_1000305E4();

  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = v6;
  v31[5] = v22;
  v31[6] = a3;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10001ADD0;
  *(v32 + 24) = v31;

  v33 = v6;
  v34 = sub_1000305B4();
  sub_1000305F4();

  v35 = swift_allocObject();
  *(v35 + 16) = a4;
  *(v35 + 24) = a5;

  v36 = sub_1000305B4();
  sub_100030604();
}

void sub_1000176C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10002FE14();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100017734(uint64_t a1, uint64_t a2, uint64_t (*a3)(id, void), uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v161 = a6;
  v162 = a7;
  v143 = a4;
  v144 = a3;
  v146 = sub_100030514();
  v150 = *(v146 - 8);
  v10 = *(v150 + 64);
  __chkstk_darwin(v146);
  v159 = v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008944(&qword_1000423C8, &unk_100034360);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v160 = v136 - v14;
  v149 = sub_10002FE54();
  v15 = *(v149 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v149);
  v148 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100008944(&qword_1000423B0, &qword_100034340);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v136 - v20;
  v141 = sub_100030284();
  v140 = *(v141 - 8);
  v22 = *(v140 + 64);
  __chkstk_darwin(v141);
  v142 = v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v136 - v26;
  v28 = sub_100030534();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v145 = v136 - v34;
  if (!a1)
  {
LABEL_4:
    if (qword_100041AF0 == -1)
    {
LABEL_5:
      v35 = sub_100030664();
      sub_1000089D8(v35, qword_100042350);
      v36 = sub_100030654();
      v37 = sub_100030864();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Widget provideListOptions failed no data", v38, 2u);
      }

      return v144(0, 0);
    }

LABEL_44:
    swift_once();
    goto LABEL_5;
  }

  sub_10001AE88(a2, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100008BB8(v27, &qword_1000420D0, &unk_1000341E0);
    goto LABEL_4;
  }

  v158 = v15;
  v40 = v145;
  (*(v29 + 32))(v145, v27, v28);
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v41 = sub_100030664();
  v42 = sub_1000089D8(v41, qword_100042350);
  (*(v29 + 16))(v32, v40, v28);

  v43 = v29;
  v136[1] = v42;
  v44 = sub_100030654();
  v45 = sub_100030884();
  v46 = os_log_type_enabled(v44, v45);
  v139 = v28;
  v138 = v29;
  if (v46)
  {
    v47 = swift_slowAlloc();
    *v47 = 134218240;
    *(v47 + 4) = *(a1 + 16);

    *(v47 + 12) = 2048;
    v48 = *(sub_100030524() + 16);

    v137 = *(v43 + 8);
    v137(v32, v28);
    *(v47 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "Widget provideListOptions smartListTypes: %ld, accounts %ld ", v47, 0x16u);
  }

  else
  {
    v137 = *(v29 + 8);
    v137(v32, v28);
  }

  v169 = _swiftEmptyArrayStorage;
  sub_1000302A4();
  v49 = v142;
  v50 = sub_100030294();
  __chkstk_darwin(v50);
  v134 = v49;

  sub_100016F54(sub_10001AEF8, &v136[-4], a1);
  v156 = 0;
  v157 = a5;
  v52 = *(v51 + 16);
  v53 = v158;
  if (v52)
  {
    v163 = _swiftEmptyArrayStorage;
    v54 = v51;
    sub_100030BF4();
    sub_100030324();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v154 = sub_10001AB2C();
    v55 = v54;
    v147 = (v53 + 8);
    v153 = v167;
    v56 = 4;
    v152 = v21;
    v151 = v54;
    v57 = v157;
    while (1)
    {
      v59 = v55[v56];
      sub_100030464();
      v60 = sub_100030454();
      v61 = *(v60 - 8);
      v62 = (*(v61 + 48))(v21, 1, v60);
      v158 = v52;
      if (v62 == 1)
      {
        sub_100008BB8(v21, &qword_1000423B0, &qword_100034340);
        v63 = 0;
      }

      else
      {
        v64 = v148;
        sub_100030444();
        (*(v61 + 8))(v21, v60);
        sub_10002FE34();
        v63 = v65;
        (*v147)(v64, v149);
      }

      sub_1000308F4();
      if (v63)
      {
        v66 = sub_1000306C4();
      }

      else
      {
        v66 = 0;
      }

      v67 = objc_allocWithZone(ObjCClassFromMetadata);
      v68 = sub_1000306C4();

      v69 = [v67 initWithIdentifier:v66 displayString:v68];

      v168 = 0;
      v70 = sub_100030904();
      v71 = swift_allocObject();
      v71[2] = v59;
      v71[3] = v57;
      v71[4] = &v168;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_10001B620;
      *(v72 + 24) = v71;
      v167[2] = sub_10001B610;
      v167[3] = v72;
      aBlock = _NSConcreteStackBlock;
      v166 = 1107296256;
      v167[0] = sub_10001A914;
      v167[1] = &unk_10003DA00;
      v73 = _Block_copy(&aBlock);
      v74 = v59;
      v75 = v57;

      dispatch_sync(v70, v73);

      _Block_release(v73);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v77 = v168;

      if (v77)
      {
        v78 = v77;
        v79 = v69;
        [v79 setDisplayImage:v78];
      }

      sub_100030BD4();
      v58 = v163[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      ++v56;
      v52 = v158 - 1;
      v21 = v152;
      v55 = v151;
      if (v158 == 1)
      {

        v80 = v163;
        a5 = v157;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v80 = _swiftEmptyArrayStorage;
LABEL_27:
  v81 = v146;
  if (v162)
  {
    v168 = _swiftEmptyArrayStorage;
    if (v80 >> 62)
    {
      v82 = sub_100030CE4();
      if (v82)
      {
LABEL_30:
        v83 = 0;
        v158 = v80 & 0xC000000000000001;
        while (1)
        {
          if (v158)
          {
            v85 = sub_100030BA4();
          }

          else
          {
            if (v83 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v85 = *(v80 + 8 * v83 + 32);
          }

          v86 = v85;
          v87 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            break;
          }

          v88 = [v85 displayString];
          v89 = sub_1000306F4();
          v91 = v90;

          aBlock = v89;
          v166 = v91;
          v163 = v161;
          v164 = v162;
          v92 = sub_10002FF34();
          v93 = v160;
          (*(*(v92 - 8) + 56))(v160, 1, 1, v92);
          v134 = sub_10000FA88();
          v135 = v134;
          sub_100030AB4();
          LOBYTE(v88) = v94;
          sub_100008BB8(v93, &qword_1000423C8, &unk_100034360);

          if (v88)
          {
          }

          else
          {
            sub_100030BD4();
            v95 = v168[2];
            sub_100030C04();
            sub_100030C14();
            sub_100030BE4();
          }

          ++v83;
          v84 = v87 == v82;
          a5 = v157;
          if (v84)
          {
            goto LABEL_46;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v82)
      {
        goto LABEL_30;
      }
    }

LABEL_46:

    v81 = v146;
  }

  v96 = &_s10Foundation14DateComponentsV15RemindersUICoreE010rem_allDaybC0ACyF_ptr;
  v97 = objc_allocWithZone(INObjectSection);
  v98 = sub_100030324();
  isa = sub_100030784().super.isa;

  v100 = [v97 initWithTitle:0 items:isa];

  v101 = v100;
  sub_100030774();
  if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v148 = v101;
    sub_1000307C4();
    v102 = v169;
    v103 = sub_100030524();
    ObjCClassFromMetadata = *(v103 + 16);
    if (!ObjCClassFromMetadata)
    {
      break;
    }

    v101 = 0;
    v154 = v103 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v153 = (v150 + 16);
    v151 = (v150 + 8);
    v149 = v98;
    v152 = v103;
    while (v101 < *(v103 + 16))
    {
      v104 = *(v150 + 72);
      v158 = v101;
      (*(v150 + 16))(v159, v154 + v104 * v101, v81);
      v105 = sub_100030504();
      v106 = a5;
      v107 = v156;
      v108 = sub_10001AF58(v105, v106);
      v156 = v107;

      if (v162)
      {
        v168 = _swiftEmptyArrayStorage;
        if (v108 >> 62)
        {
          v101 = sub_100030CE4();
          if (v101)
          {
LABEL_54:
            v98 = 0;
            v81 = v108 & 0xC000000000000001;
            a5 = (v108 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v81)
              {
                v109 = sub_100030BA4();
              }

              else
              {
                if (v98 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v109 = *(v108 + 8 * v98 + 32);
              }

              v110 = v109;
              v96 = (v98 + 1);
              if (__OFADD__(v98, 1))
              {
                break;
              }

              v111 = [v109 displayString];
              v112 = sub_1000306F4();
              v114 = v113;

              aBlock = v112;
              v166 = v114;
              v163 = v161;
              v164 = v162;
              v115 = sub_10002FF34();
              v116 = v160;
              (*(*(v115 - 8) + 56))(v160, 1, 1, v115);
              v134 = sub_10000FA88();
              v135 = v134;
              sub_100030AB4();
              LOBYTE(v111) = v117;
              sub_100008BB8(v116, &qword_1000423C8, &unk_100034360);

              if (v111)
              {
              }

              else
              {
                sub_100030BD4();
                v118 = v168[2];
                sub_100030C04();
                sub_100030C14();
                sub_100030BE4();
              }

              ++v98;
              if (v96 == v101)
              {
                a5 = v157;
                v81 = v146;
                v96 = &_s10Foundation14DateComponentsV15RemindersUICoreE010rem_allDaybC0ACyF_ptr;
                v98 = v149;
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_80:
            __break(1u);
            break;
          }
        }

        else
        {
          v101 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v101)
          {
            goto LABEL_54;
          }
        }

LABEL_66:
      }

      v119 = sub_1000304F4();
      v120 = [v119 displayName];

      if (!v120)
      {
        sub_1000306F4();
        v120 = sub_1000306C4();
      }

      v121 = objc_allocWithZone(v96[449]);
      v122 = sub_100030784().super.isa;

      v123 = [v121 initWithTitle:v120 items:v122];

      v124 = v123;
      sub_100030774();
      if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v125 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000307B4();
      }

      v101 = v158 + 1;
      sub_1000307C4();

      (*v151)(v159, v81);
      v103 = v152;
      if (v101 == ObjCClassFromMetadata)
      {
        v102 = v169;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_82:
    sub_1000307B4();
  }

LABEL_73:

  v126 = sub_100030654();
  v127 = sub_100030884();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 134217984;
    if (v102 >> 62)
    {
      v129 = sub_100030CE4();
    }

    else
    {
      v129 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v128 + 4) = v129;

    _os_log_impl(&_mh_execute_header, v126, v127, "Widget provideListOptions sections %ld ", v128, 0xCu);
  }

  else
  {
  }

  v130 = objc_allocWithZone(INObjectCollection);
  sub_100008944(&qword_1000423D0, &qword_100034370);
  v131 = sub_100030784().super.isa;

  v132 = [v130 initWithSections:v131];

  v133 = v132;
  v144(v132, 0);

  v137(v145, v139);
  return (*(v140 + 8))(v142, v141);
}

uint64_t sub_100018A3C(uint64_t *a1)
{
  v2 = sub_100030284();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = sub_1000306F4();
  v10 = v9;
  if (v8 == sub_1000306F4() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = sub_100030D44();

  if ((v13 & 1) == 0)
  {
    v15 = sub_1000306F4();
    v17 = v16;
    if (v15 == sub_1000306F4() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_100030D44();

      if ((v20 & 1) == 0)
      {
        v21 = sub_1000306F4();
        v23 = v22;
        if (v21 == sub_1000306F4() && v23 == v24)
        {
LABEL_14:

          v14 = 1;
          return v14 & 1;
        }

        v26 = sub_100030D44();

        if (v26)
        {
          goto LABEL_6;
        }

        v27 = sub_1000306F4();
        v29 = v28;
        if (v27 == sub_1000306F4() && v29 == v30)
        {
LABEL_22:

LABEL_24:
          v14 = 0;
          return v14 & 1;
        }

        v31 = sub_100030D44();

        if (v31)
        {
          goto LABEL_24;
        }

        v32 = sub_1000306F4();
        v34 = v33;
        if (v32 == sub_1000306F4() && v34 == v35)
        {
        }

        else
        {
          v36 = sub_100030D44();

          if ((v36 & 1) == 0)
          {
            v37 = sub_1000306F4();
            v39 = v38;
            if (v37 != sub_1000306F4() || v39 != v40)
            {
              v41 = sub_100030D44();

              if (v41)
              {
                goto LABEL_24;
              }

              v42 = sub_1000306F4();
              v44 = v43;
              if (v42 != sub_1000306F4() || v44 != v45)
              {
                sub_100030D44();
              }
            }

            goto LABEL_22;
          }
        }

        sub_100030274();
LABEL_17:
        sub_10001B2E8();
        v14 = sub_100030AC4();
        (*(v3 + 8))(v6, v2);
        return v14 & 1;
      }
    }

    sub_100030264();
    goto LABEL_17;
  }

LABEL_6:
  v14 = 1;
  return v14 & 1;
}

id sub_100018E60(void *a1)
{
  v2 = sub_10002FE54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008944(&qword_1000423B0, &qword_100034340);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = a1;
  sub_100030464();
  v12 = sub_100030454();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_100008BB8(v10, &qword_1000423B0, &qword_100034340);
    v14 = 0;
  }

  else
  {
    sub_100030444();
    (*(v13 + 8))(v10, v12);
    sub_10002FE34();
    v14 = v15;
    (*(v3 + 8))(v6, v2);
  }

  sub_1000308F4();
  if (v14)
  {
    v16 = sub_1000306C4();
  }

  else
  {
    v16 = 0;
  }

  sub_100030324();
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = sub_1000306C4();

  v19 = [v17 initWithIdentifier:v16 displayString:v18];

  v20 = sub_10001A1B8(v11);
  if (v20)
  {
    v21 = v20;
    [v19 setDisplayImage:v20];
  }

  return v19;
}

void sub_100019110(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1000304B4();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v55 = &v41 - v12;
  v13 = sub_1000304E4();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  __chkstk_darwin(v13);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000304C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v21, a1, v16, v19);
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == enum case for REMAccountsListDataView.Model.AccountChild.list(_:))
  {
    (*(v17 + 96))(v21, v16);
    v23 = *v21;
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v24 = swift_allocObject();
    *(v24 + 1) = xmmword_100033D00;
    v25 = sub_1000196A4(v23);
LABEL_5:
    v24[4] = v25;

LABEL_6:
    *a3 = v24;
    return;
  }

  if (v22 == enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:))
  {
    (*(v17 + 96))(v21, v16);
    v23 = *v21;
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v24 = swift_allocObject();
    *(v24 + 1) = xmmword_100033D00;
    v25 = sub_1000199E8(v23);
    goto LABEL_5;
  }

  if (v22 == enum case for REMAccountsListDataView.Model.AccountChild.group(_:))
  {
    (*(v17 + 96))(v21, v16);
    v26 = v45;
    v27 = v44;
    v28 = v46;
    (*(v45 + 32))();
    v29 = sub_1000304D4();
    v30 = *(v29 + 16);
    if (!v30)
    {

      (*(v26 + 8))(v27, v28);
      v24 = _swiftEmptyArrayStorage;
      goto LABEL_6;
    }

    v51 = a2;
    v42 = a3;
    v43 = v3;
    v56 = _swiftEmptyArrayStorage;
    v52 = v30;
    sub_100030BF4();
    v31 = 0;
    v32 = *(v54 + 80);
    v53 = v29;
    v50 = v29 + ((v32 + 32) & ~v32);
    v49 = v54 + 88;
    v48 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
    v47 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
    v33 = (v54 + 96);
    v34 = (v54 + 8);
    while (v31 < *(v53 + 16))
    {
      v37 = v54;
      v38 = v55;
      v39 = *(v54 + 16);
      v39(v55, v50 + *(v54 + 72) * v31, v7);
      v39(v10, v38, v7);
      v40 = (*(v37 + 88))(v10, v7);
      if (v40 == v48)
      {
        (*v33)(v10, v7);
        v35 = *v10;
        sub_1000196A4(*v10);
      }

      else
      {
        if (v40 != v47)
        {
          goto LABEL_19;
        }

        (*v33)(v10, v7);
        v35 = *v10;
        sub_1000199E8(*v10);
      }

      ++v31;

      (*v34)(v55, v7);
      sub_100030BD4();
      v36 = v56[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      if (v52 == v31)
      {
        (*(v45 + 8))(v44, v46);

        v24 = v56;
        a3 = v42;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_19:
    sub_100030D34();
    __break(1u);
  }

  sub_100030D34();
  __break(1u);
}

id sub_1000196A4(void *a1)
{
  v2 = sub_1000300A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002FE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 objectID];
  v14 = [v13 urlRepresentation];

  sub_10002FE44();
  sub_10002FE34();
  (*(v8 + 8))(v12, v7);
  v15 = [a1 displayName];
  if (!v15)
  {
    sub_1000306F4();
    v15 = sub_1000306C4();
  }

  sub_100030324();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_1000306C4();

  v18 = [v16 initWithIdentifier:v17 displayString:v15];

  v19 = [a1 appearanceContext];
  v20 = [v19 badge];

  v21 = [a1 color];
  (*(v3 + 104))(v6, enum case for TTRListBadgeView.Shape.round(_:), v2);
  v22 = sub_10001A340(v20, v21, v6);

  (*(v3 + 8))(v6, v2);
  if (v22)
  {
    [v18 setDisplayImage:v22];
  }

  v23 = v18;
  v24 = [a1 sharingStatusText];
  [v23 setSubtitleString:v24];

  return v23;
}

id sub_1000199E8(void *a1)
{
  v2 = sub_1000300A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002FE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 objectID];
  v14 = [v13 urlRepresentation];

  sub_10002FE44();
  sub_10002FE34();
  (*(v8 + 8))(v12, v7);
  v15 = [a1 name];
  if (!v15)
  {
    sub_1000306F4();
    v15 = sub_1000306C4();
  }

  sub_100030324();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_1000306C4();

  v18 = [v16 initWithIdentifier:v17 displayString:v15];

  v19 = [a1 customContext];
  v20 = [v19 badge];
  v21 = [v19 color];

  sub_100030094();
  v22 = sub_10001A340(v20, v21, v6);

  (*(v3 + 8))(v6, v2);
  if (v22)
  {
    [v18 setDisplayImage:v22];
  }

  [v18 setSubtitleString:0];
  return v18;
}

uint64_t sub_100019CE8(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100042350);
  swift_errorRetain();
  v5 = sub_100030654();
  v6 = sub_100030864();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_100030D64();
    v11 = sub_10002B88C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Widget provideListOptions failed error %s", v7, 0xCu);
    sub_100008D70(v8);
  }

  return a2(0, a1);
}

id sub_100019F54(void *a1)
{
  v2 = v1;
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100042350);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_1000306F4();
    v14 = v13;

    v15 = sub_10002B88C(v12, v14, &v22);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Widget defaultList {intent: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v16 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 24);
  v17 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 32);
  sub_100008A10((v2 + OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource), v16);
  v18 = (*(v17 + 72))(v16, v17);
  if (!v18)
  {
    return sub_100018E60(REMSmartListTypeToday);
  }

  v19 = v18;
  v20 = sub_1000196A4(v18);

  return v20;
}

uint64_t sub_10001A1B8(void *a1)
{
  v2 = v1;
  v13 = 0;
  sub_10001AB2C();
  v4 = sub_100030904();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10001AD2C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10001B610;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A914;
  aBlock[3] = &unk_10003D8E8;
  v7 = _Block_copy(aBlock);
  v8 = a1;
  v9 = v2;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_10001A340(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000300A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v23 = 0;
  sub_10001AB2C();
  v11 = sub_100030904();
  (*(v9 + 16))(&aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v4;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  (*(v9 + 32))(&v13[v12], &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v13[(v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = &v23;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10001AC58;
  *(v14 + 24) = v13;
  aBlock[4] = sub_10001ACEC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A914;
  aBlock[3] = &unk_10003D870;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  v17 = v4;
  v18 = a1;

  dispatch_sync(v11, v15);

  _Block_release(v15);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v20 = v23;

    return v20;
  }

  return result;
}

void sub_10001A5AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v33 = a5;
  v34 = a4;
  v7 = sub_1000300A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002FFF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(sub_1000300E4()) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
  if (!a2)
  {
    goto LABEL_7;
  }

  v18 = [a2 emoji];
  if (!v18)
  {
    v22 = [a2 emblem];
    if (v22)
    {
      v23 = v22;
      sub_100030914();

      goto LABEL_8;
    }

LABEL_7:
    sub_100030914();
LABEL_8:
    sub_1000300C4();
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v19 = v18;
  sub_1000306F4();
  v32 = v12;

  v12 = v32;
  sub_1000300B4();
  sub_100030084();
  if (!a3)
  {
LABEL_4:
    sub_100030004();
    v20 = v17;
    sub_10002FFD4();
    v21 = sub_10002FFE4();
    (*(v13 + 8))(v16, v12);
    goto LABEL_10;
  }

LABEL_9:
  v24 = v17;
  v21 = sub_100030A74();
LABEL_10:
  [v17 setTintColor:v21];

  (*(v8 + 16))(v11, v34, v7);
  sub_1000300D4();
  sub_100030A04();
  [v17 layoutIfNeeded];
  v25 = sub_1000309F4();
  if (v25)
  {
    v26 = v25;
    v27 = [objc_opt_self() imageWithUIImage:v25];
    v28 = v33;
    v29 = *v33;
    *v33 = v27;

    if (*v28)
    {
      v30 = *v28;
      [v30 _setRenderingMode:1];
    }

    v17 = v26;
  }
}

void sub_10001A93C(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = sub_1000308E4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000308D4();
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(sub_1000300E4()) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
      v15 = v5;
      sub_1000300C4();
      [v8 setTintColor:v7];
      v9 = sub_1000309F4();
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() imageWithUIImage:v9];
        v12 = *a3;
        *a3 = v11;

        if (*a3)
        {
          v13 = *a3;
          [v13 _setRenderingMode:1];
        }
      }

      else
      {
        v10 = v15;
        v15 = v8;
      }

      v14 = v15;
    }

    else
    {
      v14 = v5;
    }
  }
}

unint64_t sub_10001AB2C()
{
  result = qword_1000421C0;
  if (!qword_1000421C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000421C0);
  }

  return result;
}

uint64_t sub_10001AB78()
{
  v1 = sub_1000300A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10001AC58()
{
  v1 = *(sub_1000300A4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_10001A5AC(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_10001ACEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001AD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001AD48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AD88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001ADE0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AE18(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_100008944(&qword_1000423C0, &qword_100034358);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_10001AE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AF18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001AF58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = *(a1 + 16);
  if (!v34)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v6 = *(sub_1000304C4() - 8);
  v33 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v7 = _swiftEmptyArrayStorage;
  v32 = *(v6 + 72);
  while (1)
  {
    v9 = v3;
    sub_100019110(v33 + v32 * v5, a2, &v39);
    if (v3)
    {

      return v7;
    }

    v10 = v39;
    v11 = v39 >> 62;
    v12 = v39 >> 62 ? sub_100030CE4() : *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      v30 = sub_100030CE4();
      v15 = v30 + v12;
      if (__OFADD__(v30, v12))
      {
LABEL_35:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v12;
    if (result)
    {
      if (v13)
      {
        goto LABEL_17;
      }

      v16 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v15 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v13)
      {
LABEL_17:
        sub_100030CE4();
        goto LABEL_18;
      }

      v16 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = *(v16 + 16);
LABEL_18:
    result = sub_100030BB4();
    v7 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v19 >> 1) - v18) < v37)
    {
      goto LABEL_40;
    }

    v36 = v7;
    v22 = v16 + 8 * v18 + 32;
    v31 = v16;
    if (v11)
    {
      if (v20 < 1)
      {
        goto LABEL_42;
      }

      sub_10001B284();
      for (i = 0; i != v20; ++i)
      {
        sub_100008944(&qword_1000423D8, &qword_100034378);
        v24 = sub_10002C184(v38, i, v10);
        v26 = *v25;
        (v24)(v38, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      sub_100030324();
      swift_arrayInitWithCopy();
    }

    v3 = v9;
    v7 = v36;
    if (v37 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v37);
      v29 = v27 + v37;
      if (v28)
      {
        goto LABEL_41;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v5 == v34)
    {
      return v7;
    }
  }

  v21 = v16;
  result = sub_100030CE4();
  v16 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_10001B284()
{
  result = qword_1000423E0;
  if (!qword_1000423E0)
  {
    sub_100008C7C(&qword_1000423D8, &qword_100034378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000423E0);
  }

  return result;
}

unint64_t sub_10001B2E8()
{
  result = qword_1000423E8;
  if (!qword_1000423E8)
  {
    sub_100030284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000423E8);
  }

  return result;
}

void sub_10001B340(void *a1, uint64_t a2)
{
  sub_1000305A4();
  v4 = sub_100030594();
  v5 = [a1 list];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];
  }

  else
  {
    v7 = 0;
  }

  [v4 setList:v7];

  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v8 = sub_100030664();
  sub_1000089D8(v8, qword_100042350);
  v9 = a1;
  v25 = v4;
  v10 = sub_100030654();
  v11 = sub_100030884();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = v9;
    v14 = [v13 description];
    v15 = sub_1000306F4();
    v17 = v16;

    v18 = sub_10002B88C(v15, v17, &v26);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = v25;
    v20 = [v19 description];
    v21 = sub_1000306F4();
    v23 = v22;

    v24 = sub_10002B88C(v21, v23, &v26);

    *(v12 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "Widget handle {intent: %s, response: %s}", v12, 0x16u);
    swift_arrayDestroy();
  }

  (*(a2 + 16))(a2, v25);
}

uint64_t sub_10001B624()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_1000423F0);
  v1 = sub_1000089D8(v0, qword_1000423F0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001B6EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1000303D4();
  v6 = sub_1000303B4();
  v53 = v5;
  sub_100008944(&qword_100041F50, &qword_100034118);
  sub_10002FF24();
  sub_100026AD0();
  sub_100026928(&qword_1000426B8, &type metadata accessor for UUID);
  v7 = sub_100030764();

  v8 = v7 >> 62;
  if (v7 >> 62)
  {
    v9 = sub_100030CE4();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  if (v6 >> 62)
  {
    goto LABEL_54;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

    if (qword_100041AF8 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  while (1)
  {
LABEL_5:
    if (v8)
    {
      v10 = sub_100030CE4();
      if (!v9)
      {
        break;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_100030BA4();
LABEL_13:
      v12 = v11;

      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v13 = v12;
      v14 = sub_100030814();
      if (qword_100041AF8 != -1)
      {
        swift_once();
      }

      v15 = sub_100030664();
      sub_1000089D8(v15, qword_1000423F0);
      isa = v13;
      v17 = v14;
      v18 = sub_100030654();
      v19 = sub_100030884();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        v22 = [(objc_class *)isa objectID];
        *(v20 + 4) = v22;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v22;
        v21[1] = v17;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "Got one REMList(%@) matches the name {result: .success(%@)}", v20, 0x16u);
        sub_100008944(&unk_100041BF0, &unk_100033DB0);
        swift_arrayDestroy();
      }

LABEL_28:

      sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
      v34 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v17];

LABEL_50:
      goto LABEL_51;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v7 + 32);
      goto LABEL_13;
    }

    __break(1u);
LABEL_54:
    if (!sub_100030CE4())
    {
      goto LABEL_55;
    }
  }

  if (v6 >> 62)
  {
    if (sub_100030CE4() != 1)
    {
      goto LABEL_34;
    }

    if (sub_100030CE4())
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
LABEL_34:

    if (v10)
    {
      v53 = _swiftEmptyArrayStorage;
      sub_100030BF4();
      if (v10 < 0)
      {
        __break(1u);
        return;
      }

      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v35 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          sub_100030BA4();
        }

        else
        {
          v37 = *(v7 + 8 * v35 + 32);
        }

        ++v35;
        sub_100030814();
        sub_100030BD4();
        v36 = v53[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      while (v10 != v35);
    }

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v38 = sub_100030664();
    sub_1000089D8(v38, qword_1000423F0);

    v39 = sub_100030654();
    v40 = sub_100030884();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = v42;
      *v41 = 134218242;
      if (v8)
      {
        v43 = sub_100030CE4();
      }

      else
      {
        v43 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v41 + 4) = v43;

      *(v41 + 12) = 2080;
      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v44 = sub_1000307A4();
      v46 = sub_10002B88C(v44, v45, &v53);

      *(v41 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Got %ld REMList matches the name {result: .disambiguation(%s)}", v41, 0x16u);
      sub_100008D70(v42);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    isa = sub_100030784().super.isa;

    v34 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate:isa];
    goto LABEL_50;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_34;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

LABEL_21:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = sub_100030BA4();
    goto LABEL_24;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v6 + 32);
LABEL_24:
    v25 = v24;

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v26 = v25;
    v27 = sub_1000307F4();
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v28 = sub_100030664();
    sub_1000089D8(v28, qword_1000423F0);
    isa = v26;
    v17 = v27;
    v18 = sub_100030654();
    v29 = sub_100030884();

    if (os_log_type_enabled(v18, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      v32 = [(objc_class *)isa objectID];
      *(v30 + 4) = v32;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v17;
      *v31 = v32;
      v31[1] = v17;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v18, v29, "Found REMSmartList matching the name {objectID: %@, result: .success(%@)}", v30, 0x16u);
      sub_100008944(&unk_100041BF0, &unk_100033DB0);
      swift_arrayDestroy();
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_61:
  swift_once();
LABEL_56:
  v49 = sub_100030664();
  sub_1000089D8(v49, qword_1000423F0);
  v50 = sub_100030654();
  v51 = sub_100030884();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "No REMList or REMSmartList matches the name, prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v52, 2u);
  }

  v34 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:a2 forReason:1];
LABEL_51:
  v48 = v34;
  a3();
}

void sub_10001C0C0(id *a1)
{
  v1 = [*a1 remObjectID];
  v2 = [v1 uuid];

  sub_10002FF14();
}

void sub_10001C138(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v8 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_30:
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v54 = sub_100030664();
    sub_1000089D8(v54, qword_1000423F0);

    v55 = sub_100030654();
    v56 = sub_100030884();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v57 = 136315650;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v58 = sub_1000307A4();
      v60 = sub_10002B88C(v58, v59, &v69);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      v61 = sub_1000307A4();
      v63 = sub_10002B88C(v61, v62, &v69);

      *(v57 + 14) = v63;
      *(v57 + 22) = 2080;
      v64 = sub_1000307A4();
      v66 = sub_10002B88C(v64, v65, &v69);

      *(v57 + 24) = v66;
      _os_log_impl(&_mh_execute_header, v55, v56, "No list shared with the specified .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguateDueToNoDefaultList}", v57, 0x20u);
      swift_arrayDestroy();
    }

    v27 = sub_10001CAEC();
    goto LABEL_35;
  }

  if (!sub_100030CE4())
  {
    goto LABEL_30;
  }

  v9 = sub_100030CE4();
LABEL_3:
  if (!v9)
  {
LABEL_19:
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v35 = sub_100030664();
    sub_1000089D8(v35, qword_1000423F0);

    v36 = sub_100030654();
    v37 = sub_100030884();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v38 = 134219010;
      if (v8)
      {
        v39 = sub_100030CE4();
      }

      else
      {
        v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v38 + 4) = v39;

      *(v38 + 12) = 2080;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v40 = sub_1000307A4();
      v42 = sub_10002B88C(v40, v41, &v69);

      *(v38 + 14) = v42;
      *(v38 + 22) = 2080;
      v43 = sub_1000307A4();
      v45 = sub_10002B88C(v43, v44, &v69);

      *(v38 + 24) = v45;
      *(v38 + 32) = 2080;
      v46 = sub_1000307A4();
      v48 = sub_10002B88C(v46, v47, &v69);

      *(v38 + 34) = v48;
      *(v38 + 42) = 2080;
      sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
      v49 = sub_1000307A4();
      v51 = sub_10002B88C(v49, v50, &v69);

      *(v38 + 44) = v51;
      _os_log_impl(&_mh_execute_header, v36, v37, "Got %ld REMList matching .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguation(%s)}", v38, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    isa = sub_100030784().super.isa;

    v27 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate:isa];

    goto LABEL_35;
  }

  if (v9 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_100030BA4();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v10 = *(a1 + 32);
    }

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v9 = sub_100030814();
    if (qword_100041AF8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  v69 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = 0;
      do
      {
        v29 = v28 + 1;
        sub_100030BA4();
        sub_100030814();
        sub_100030BD4();
        v30 = v69[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        v28 = v29;
      }

      while (v9 != v29);
    }

    else
    {
      v31 = (a1 + 32);
      do
      {
        v32 = *v31++;
        v33 = v32;
        sub_100030814();
        sub_100030BD4();
        v34 = v69[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        --v9;
      }

      while (v9);
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_9:
  v11 = sub_100030664();
  sub_1000089D8(v11, qword_1000423F0);

  v12 = v9;
  v13 = sub_100030654();
  v14 = sub_100030884();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v15 = 136315906;
    sub_100008D28(0, &qword_100042658, INPerson_ptr);
    v17 = sub_1000307A4();
    v67 = a6;
    v19 = sub_10002B88C(v17, v18, &v69);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_1000307A4();
    v22 = sub_10002B88C(v20, v21, &v69);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    v23 = sub_1000307A4();
    v25 = sub_10002B88C(v23, v24, &v69);
    a6 = v67;

    *(v15 + 24) = v25;
    *(v15 + 32) = 2112;
    *(v15 + 34) = v12;
    *v16 = v12;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Found exactly 1 list matching .targetTaskListMembers, using that. {targetTaskListMembers: %s, emails: %s, phones: %s, result: .success(%@)}", v15, 0x2Au);
    sub_100008BB8(v16, &unk_100041BF0, &unk_100033DB0);

    swift_arrayDestroy();
  }

  sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
  v27 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v12];

LABEL_35:
  v68 = v27;
  a6();
}

id sub_10001CAEC()
{
  v1 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v61 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
  v62 = 0;
  v10 = [v9 fetchEligibleDefaultListsWithError:{&v62, v6}];
  v11 = v62;
  if (!v10)
  {
    v19 = v62;
    sub_10002FE24();

    swift_willThrow();
    goto LABEL_42;
  }

  v12 = v10;
  v61 = v9;
  sub_100008D28(0, &qword_100041F48, REMList_ptr);
  v13 = sub_100030794();
  v14 = v11;

  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_13:

    v13 = _swiftEmptyArrayStorage;
LABEL_14:
    if (v13 >> 62)
    {
      if (sub_100030CE4())
      {
        v20 = sub_100030CE4();
LABEL_16:
        if (v20 != 1)
        {
          if (qword_100041AF8 != -1)
          {
            swift_once();
          }

          v27 = sub_100030664();
          sub_1000089D8(v27, qword_1000423F0);

          v28 = sub_100030654();
          v29 = sub_100030884();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 134217984;
            if (v13 >> 62)
            {
              v31 = sub_100030CE4();
            }

            else
            {
              v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v30 + 4) = v31;

            _os_log_impl(&_mh_execute_header, v28, v29, "Disambiguating with some lists {count: %ld}", v30, 0xCu);
          }

          else
          {
          }

          sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
          isa = sub_100030784().super.isa;

          v34 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate:isa];

          return v34;
        }

        if (qword_100041AF8 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_16;
      }
    }

    v63._countAndFlagsBits = 0x7265646E696D6552;
    v64._object = 0x80000001000350C0;
    v63._object = 0xE900000000000073;
    v64._countAndFlagsBits = 0xD00000000000006ALL;
    sub_1000301E4(v63, v64);
    v35 = sub_100030724();

    v36 = sub_10002FE04();
    v37 = *(v36 - 8);
    v38 = *(v37 + 56);
    v38(v8, 1, 1, v36);
    v38(v4, 1, 1, v36);
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v39.super.isa = sub_100030784().super.isa;
    v40 = *(v37 + 48);
    v41 = 0;
    if (v40(v8, 1, v36) != 1)
    {
      v41 = sub_10002FD94().super.isa;
      (*(v37 + 8))(v8, v36);
    }

    if (v40(v4, 1, v36) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = sub_10002FD94().super.isa;
      (*(v37 + 8))(v4, v36);
    }

    v13 = [objc_allocWithZone(INTaskList) initWithTitle:v35 tasks:v39.super.isa groupName:0 createdDateComponents:v41 modifiedDateComponents:v42 identifier:0];

    v62 = 0;
    v43 = [v61 fetchDefaultAccountWithError:&v62];
    v4 = v43;
    if (!v62)
    {
      if (!v43)
      {
        if (qword_100041AF8 != -1)
        {
          swift_once();
        }

        v57 = sub_100030664();
        sub_1000089D8(v57, qword_1000423F0);
        v58 = sub_100030654();
        v59 = sub_100030864();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "No lists found in fetchEligibleDefaultLists and no default account available. Responding with .success so that we can fail the user in handle() with .failureRequiringAppLaunch. {result: .success}", v60, 2u);
        }

        sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
        v34 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v13];

        return v34;
      }

      if (qword_100041AF8 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_63;
    }

    v62;

    swift_willThrow();
LABEL_42:
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v44 = sub_100030664();
    sub_1000089D8(v44, qword_1000423F0);
    swift_errorRetain();
    v45 = sub_100030654();
    v46 = sub_100030864();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = sub_100030D64();
      v51 = sub_10002B88C(v49, v50, &v62);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Error trying to retrieve eligible default lists {error: %s}", v47, 0xCu);
      sub_100008D70(v48);
    }

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    v26 = [swift_getObjCClassFromMetadata() unsupported];

    return v26;
  }

  v15 = sub_100030CE4();
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_4:
  v62 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v15 & 0x8000000000000000) == 0)
  {
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v16 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        sub_100030BA4();
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      ++v16;
      sub_100030814();
      sub_100030BD4();
      v17 = v62[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
    }

    while (v15 != v16);

    v13 = v62;
    goto LABEL_14;
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_18:
  v21 = sub_100030664();
  sub_1000089D8(v21, qword_1000423F0);
  v22 = sub_100030654();
  v23 = sub_100030884();
  if (os_log_type_enabled(v22, v23))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Got exactly 1 list from fetchEligibleDefaultLists, using that. {result: .confirmationRequired}", v4, 2u);
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v24 = sub_100030BA4();
    goto LABEL_23;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v13 + 32);
LABEL_23:
    v25 = v24;

    sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
    v26 = [swift_getObjCClassFromMetadata() confirmationRequiredWithTaskListToConfirm:v25];

    return v26;
  }

  __break(1u);
LABEL_63:
  swift_once();
LABEL_50:
  v53 = sub_100030664();
  sub_1000089D8(v53, qword_1000423F0);
  v54 = sub_100030654();
  v55 = sub_100030884();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "No lists found in fetchEligibleDefaultLists(), prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v56, 2u);
  }

  v34 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:v13 forReason:1];
  return v34;
}

void sub_10001D5A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_1000423F0);
  v7 = a1;
  v8 = sub_100030654();
  v9 = sub_100030884();

  if (os_log_type_enabled(v8, v9))
  {
    v27 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v12 = [v7 taskTitles];
    if (v12)
    {
      v13 = v12;
      sub_100008D28(0, &unk_100042590, INSpeakableString_ptr);
      sub_100030794();
    }

    sub_100008944(&qword_100042588, &unk_1000344C0);
    v15 = sub_100030A94();
    v17 = v16;

    v18 = sub_10002B88C(v15, v17, &v28);

    *(v10 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriKit asked for resolving task titles {taskTitles: %s}", v10, 0xCu);
    sub_100008D70(v11);

    a2 = v27;
  }

  else
  {
  }

  __chkstk_darwin(v14);
  v19 = sub_100008944(&unk_100042570, &unk_1000344A8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_100030624();
  v22 = sub_1000305B4();
  sub_100008944(&qword_100041C00, &qword_100033DC0);
  sub_1000305F4();

  *(swift_allocObject() + 16) = v7;
  v23 = v7;
  v24 = sub_1000305B4();
  sub_100008944(&qword_100042580, &qword_1000344B8);
  sub_1000305F4();

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;

  v26 = sub_1000305B4();
  sub_1000305F4();
}

uint64_t sub_10001D954@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100008944(&unk_1000425B0, &qword_1000344D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  if (*a1)
  {
    sub_1000308C4();
    v11 = sub_1000308B4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v11 = sub_1000308B4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  sub_100008B50(v10, v7, &unk_1000425B0, &qword_1000344D8);
  sub_1000308B4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100008BB8(v10, &unk_1000425B0, &qword_1000344D8);
    result = sub_100008BB8(v7, &unk_1000425B0, &qword_1000344D8);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v14 = sub_1000308A4();
    v16 = v15;
    sub_100008BB8(v10, &unk_1000425B0, &qword_1000344D8);
    *a2 = v14;
    a2[1] = v16;
    return (*(v12 + 8))(v7, v11);
  }

  return result;
}

id sub_10001DB88@<X0>(id a1@<X1>, uint64_t *a2@<X0>, char *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = [a1 taskTitles];
  v46 = a3;
  if (!v6)
  {
    a3 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v7 = v6;
  sub_100008D28(0, &unk_100042590, INSpeakableString_ptr);
  v8 = sub_100030794();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_21:

    a3 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v9 = sub_100030CE4();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_4:
  sub_100021424(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v44 = v5;
  v45 = v4;
  v10 = 0;
  a3 = _swiftEmptyArrayStorage;
  v11 = v8;
  v47 = v8 & 0xC000000000000001;
  v12 = v8;
  v13 = v9;
  do
  {
    if (v47)
    {
      v14 = sub_100030BA4();
    }

    else
    {
      v14 = *(v11 + 8 * v10 + 32);
    }

    v15 = v14;
    v16 = [v14 spokenPhrase];
    v17 = sub_1000306F4();
    v19 = v18;

    v21 = _swiftEmptyArrayStorage[2];
    v20 = _swiftEmptyArrayStorage[3];
    if (v21 >= v20 >> 1)
    {
      sub_100021424((v20 > 1), v21 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v21 + 1;
    v22 = &_swiftEmptyArrayStorage[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
    v11 = v12;
  }

  while (v13 != v10);

  v5 = v44;
  v4 = v45;
  if (v44)
  {
LABEL_15:
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_23:
      if (qword_100041AF8 != -1)
      {
        swift_once();
      }

      v26 = sub_100030664();
      sub_1000089D8(v26, qword_1000423F0);
      v27 = sub_100030654();
      v28 = sub_100030884();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Resolved taskTitles {result: .success}", v29, 2u);
      }

      v30 = *(a3 + 2);
      if (v30)
      {
        sub_100030BF4();
        v31 = objc_opt_self();
        v32 = (a3 + 40);
        do
        {
          v34 = *(v32 - 1);
          v33 = *v32;

          v35 = sub_100030724();
          v36 = [v31 successWithResolvedString:v35];

          sub_100030BD4();
          v37 = _swiftEmptyArrayStorage[2];
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
          v32 += 2;
          --v30;
        }

        while (v30);
      }

      v39 = _swiftEmptyArrayStorage;
      goto LABEL_37;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_17:
      v24 = *(a3 + 2);
      v23 = *(a3 + 3);
      if (v24 >= v23 >> 1)
      {
        a3 = sub_10002B4F4((v23 > 1), v24 + 1, 1, a3);
      }

      *(a3 + 2) = v24 + 1;
      v25 = &a3[16 * v24];
      *(v25 + 4) = v4;
      *(v25 + 5) = v5;
      goto LABEL_23;
    }

LABEL_39:
    a3 = sub_10002B4F4(0, 1, 1, a3);
    goto LABEL_17;
  }

LABEL_22:
  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_23;
  }

  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v40 = sub_100030664();
  sub_1000089D8(v40, qword_1000423F0);
  v41 = sub_100030654();
  v42 = sub_100030884();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "userTitles has 0 elements {result: .needsValue}", v43, 2u);
  }

  sub_100008944(&unk_100041EB0, &unk_1000340E0);
  v39 = swift_allocObject();
  *(v39 + 1) = xmmword_100033D00;
  sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
  result = [swift_getObjCClassFromMetadata() needsValue];
  v39[4] = result;
LABEL_37:
  *v46 = v39;
  return result;
}

void sub_10001E164(uint64_t a1, uint64_t a2)
{
  sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
  isa = sub_100030784().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_10001E210(void *a1)
{
  v2 = v1;
  v3 = [a1 targetTaskList];
  if (!v3 || (v4 = v3, v5 = *(v1 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store), v6 = sub_1000307E4(), v4, !v6))
  {
    v7 = sub_1000218FC(*(v2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store));
    if (!v7)
    {
      return 0;
    }

LABEL_6:
    v8 = [v7 capabilities];

    return v8;
  }

  v7 = [v6 account];

  if (v7)
  {
    goto LABEL_6;
  }

  return 0;
}

void sub_10001E2D8(void *a1, void (*a2)(void))
{
  if (*a1)
  {
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v3 = sub_100030664();
    sub_1000089D8(v3, qword_1000423F0);
    v4 = sub_100030654();
    v5 = sub_100030884();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Got userActivity {result: .success(.currentActivity)", v6, 2u);
    }

    v7 = [objc_opt_self() successWithResolvedTaskReference:1];
  }

  else
  {
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v8 = sub_100030664();
    sub_1000089D8(v8, qword_1000423F0);
    v9 = sub_100030654();
    v10 = sub_100030884();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Got nil userActivity {result: .notRequired}", v11, 2u);
    }

    sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
    v7 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v12 = v7;
  a2();
}

void sub_10001E4DC(uint64_t a1, void (*a2)(void))
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v3 = sub_100030664();
  sub_1000089D8(v3, qword_1000423F0);
  swift_errorRetain();
  v4 = sub_100030654();
  v5 = sub_100030864();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_100030D64();
    v10 = sub_10002B88C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Got error userActivity. {result: .notRequired, error: %s}", v6, 0xCu);
    sub_100008D70(v7);
  }

  sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
  v11 = [swift_getObjCClassFromMetadata() notRequired];
  a2();
}

void sub_10001E6C8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_10001E770(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_10001E804(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v2;
    v5 = v2;
  }
}

uint64_t sub_10001E868(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = sub_1000308B4();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v32);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008944(&qword_100042600, &qword_1000344F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v31 - v14;
  v16 = *a1;
  result = swift_projectBox();
  if (v16)
  {
    v18 = result;
    v31 = v4;
    v19 = objc_allocWithZone(REMUserActivity);
    v20 = v16;
    v21 = [v19 initWithUserActivity:v20];
    v22 = 1;
    swift_beginAccess();
    v23 = *(a2 + 16);
    *(a2 + 16) = v21;

    v24 = [v20 webpageURL];
    if (v24)
    {
      v25 = v24;
      sub_10002FE44();

      v22 = 0;
    }

    v26 = sub_10002FE54();
    (*(*(v26 - 8) + 56))(v15, v22, 1, v26);
    swift_beginAccess();
    sub_100026970(v15, v18);
    sub_1000308C4();
    v27 = sub_100030894();
    v29 = v28;

    (*(v8 + 8))(v11, v32);
    swift_beginAccess();
    v30 = *(a4 + 24);
    *(a4 + 16) = v27;
    *(a4 + 24) = v29;
  }

  return result;
}

void sub_10001EAE0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void (*a16)(void))
{
  v60 = swift_projectBox();
  v18 = swift_projectBox();
  v19 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
  v20 = objc_allocWithZone(REMSaveRequest);
  a3;
  v21 = [v20 initWithStore:v19];
  sub_100030024();
  v22 = v21;
  sub_1000300F4();
  v66 = v78;
  v67 = 0;
  v68 = a5;
  v69 = a6;
  v70 = v60;
  v71 = a8;
  v72 = a9 + 16;
  v73 = a10 + 16;
  v74 = v18;
  v75 = a12 + 16;
  v76 = a13 + 16;
  v77 = a14;
  v23 = sub_1000281C8(sub_1000268E0, v65, a4);
  v78 = 0;
  v24 = [v22 saveSynchronouslyWithError:&v78];
  v25 = v78;
  if (v24)
  {
    sub_100030074();
    v26 = v25;
    sub_100030064();
    sub_100030054();

    if (v23 >> 62)
    {
      v27 = sub_100030CE4();
      v59 = v22;
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = v22;
      if (v27)
      {
LABEL_4:
        v78 = _swiftEmptyArrayStorage;
        sub_100030BF4();
        if (v27 < 0)
        {
          __break(1u);
        }

        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        v28 = 0;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            sub_100030BA4();
          }

          else
          {
            v30 = *(v23 + 8 * v28 + 32);
          }

          ++v28;
          sub_1000309C4();
          sub_100030BD4();
          v29 = v78[2];
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
        }

        while (v27 != v28);
      }
    }

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v41 = sub_100030664();
    sub_1000089D8(v41, qword_1000423F0);

    v42 = sub_100030654();
    v43 = sub_100030884();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v78 = v45;
      *v44 = 136315138;
      sub_100008D28(0, &unk_100041E90, INTask_ptr);
      v46 = sub_1000307A4();
      v48 = sub_10002B88C(v46, v47, &v78);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "insertedTasks: %s", v44, 0xCu);
      sub_100008D70(v45);
    }

    v49 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:3 userActivity:0];
    [v49 setModifiedTaskList:a15];
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    isa = sub_100030784().super.isa;

    [v49 setAddedTasks:isa];

    v78 = a14;
    v51 = sub_100030A14();
    sub_100008D28(0, &qword_1000425E8, INAddTasksIntent_ptr);
    v52 = sub_1000302B4();

    [v49 setWarnings:v52];
    v53 = v49;
    v54 = sub_100030654();
    v55 = sub_100030884();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "successfully handled intent {result: %@}", v56, 0xCu);
      sub_100008BB8(v57, &unk_100041BF0, &unk_100033DB0);
    }

    (a16)(v53);

    return;
  }

  v31 = v78;

  sub_10002FE24();

  swift_willThrow();
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v32 = sub_100030664();
  sub_1000089D8(v32, qword_1000423F0);
  swift_errorRetain();
  v33 = sub_100030654();
  v34 = sub_100030864();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v78 = v36;
    *v35 = 136446210;
    swift_getErrorValue();
    v37 = sub_100030D74();
    v39 = sub_10002B88C(v37, v38, &v78);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error saving saveRequest {error: %{public}s}", v35, 0xCu);
    sub_100008D70(v36);
  }

  v40 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
  a16();
}

void sub_10001F288(void **a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void (*a5)(void, void)@<X5>, void (*a6)(char *, uint64_t)@<X6>, void **a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t *a11, id *a12, id a13)
{
  v207 = a7;
  v197 = a6;
  v204 = a5;
  v212 = a8;
  v202 = sub_10002FEE4();
  v201 = *(v202 - 8);
  v17 = *(v201 + 64);
  __chkstk_darwin(v202);
  v200 = v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100008944(&qword_100042600, &qword_1000344F0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v199 = v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v208 = (v191 - v23);
  v211 = sub_10002FE54();
  v210 = *(v211 - 8);
  v24 = *(v210 + 64);
  __chkstk_darwin(v211);
  v217 = (v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v209 = v191 - v27;
  v28 = sub_100008944(&qword_1000425D0, &qword_100034098);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v196 = v191 - v30;
  v206 = sub_100030234();
  v203 = *(v206 - 8);
  v31 = *(v203 + 64);
  __chkstk_darwin(v206);
  v192 = v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v193 = v191 - v34;
  __chkstk_darwin(v35);
  v198 = v191 - v36;
  v37 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v195 = v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = v191 - v41;
  v43 = sub_10002FE04();
  v44 = *(v43 - 8);
  v215 = v43;
  v216 = v44;
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v194 = v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v213 = (v191 - v48);
  v49 = *a1;
  v50 = sub_100030014();
  sub_1000301D4();
  sub_100026928(&unk_100042628, &type metadata accessor for TTRReminderEditor);
  v51 = v50;
  v52 = a2;
  v214 = v51;
  sub_1000301F4();
  v53 = v219[3];
  v54 = [v49 spokenPhrase];
  if (!v54)
  {
    sub_1000306F4();
    v54 = sub_1000306C4();
  }

  v55 = [objc_allocWithZone(NSAttributedString) initWithString:v54];

  v56.super.isa = v55;
  v222.value._countAndFlagsBits = 0;
  v222.value._object = 0;
  sub_100030194(v56, v222, 1);

  v219[8] = v53;
  if (a3)
  {
    v57 = qword_100041AF8;
    v58 = a3;
    if (v57 != -1)
    {
      swift_once();
    }

    v59 = sub_100030664();
    sub_1000089D8(v59, qword_1000423F0);
    v60 = v58;
    v61 = sub_100030654();
    v62 = sub_100030884();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v60;
      *v64 = a3;
      v65 = v60;
      _os_log_impl(&_mh_execute_header, v61, v62, "setting locationTrigger {locationTrigger: %@}", v63, 0xCu);
      sub_100008BB8(v64, &unk_100041BF0, &unk_100033DB0);
    }

    v66 = v60;
    sub_100030144();
  }

  v67 = &selRef_imageWithUIImage_;
  if (a4)
  {
    v68 = qword_100041AF8;
    v69 = a4;
    if (v68 != -1)
    {
      swift_once();
    }

    v70 = sub_100030664();
    sub_1000089D8(v70, qword_1000423F0);
    v71 = v69;
    v72 = sub_100030654();
    v73 = sub_100030884();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = a4;
      v76 = v71;
      _os_log_impl(&_mh_execute_header, v72, v73, "setting vehicleTrigger {vehicleTrigger: %@}", v74, 0xCu);
      sub_100008BB8(v75, &unk_100041BF0, &unk_100033DB0);
    }

    v77 = v71;
    sub_100030134();
  }

  v205 = a9;
  v78 = v204;
  swift_beginAccess();
  sub_100008B50(v78, v42, &qword_100041BB0, &unk_1000340A0);
  v79 = v215;
  v80 = v216;
  if ((*(v216 + 48))(v42, 1, v215) == 1)
  {
    sub_100008BB8(v42, &qword_100041BB0, &unk_1000340A0);
    v81 = v217;
  }

  else
  {
    v82 = v213;
    (*(v80 + 32))(v213, v42, v79);
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v83 = sub_100030664();
    v84 = sub_1000089D8(v83, qword_1000423F0);
    v85 = *(v80 + 16);
    v86 = v194;
    v85(v194, v82, v79);
    v191[1] = v84;
    v87 = sub_100030654();
    v88 = sub_100030884();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v86;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v219[0] = v91;
      *v90 = 136315138;
      sub_100026928(&qword_100042638, &type metadata accessor for DateComponents);
      v92 = sub_100030D14();
      v94 = v93;
      v95 = v89;
      v79 = v215;
      v204 = *(v216 + 8);
      v204(v95, v215);
      v96 = sub_10002B88C(v92, v94, v219);

      *(v90 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v87, v88, "setting dueDateComponents {dueDateComponents: %s}", v90, 0xCu);
      sub_100008D70(v91);
      v80 = v216;
    }

    else
    {

      v204 = *(v80 + 8);
      v204(v86, v79);
    }

    v81 = v217;
    v97 = v206;
    v98 = v195;
    v99 = v213;
    v85(v195, v213, v79);
    (*(v80 + 56))(v98, 0, 1, v79);
    sub_100030164();
    sub_100008BB8(v98, &qword_100041BB0, &unk_1000340A0);
    v100 = v196;
    sub_100008B50(v197, v196, &qword_1000425D0, &qword_100034098);
    v101 = v203;
    if ((*(v203 + 48))(v100, 1, v97) == 1)
    {
      v204(v99, v79);
      sub_100008BB8(v100, &qword_1000425D0, &qword_100034098);
    }

    else
    {
      v102 = v198;
      (*(v101 + 32))(v198, v100, v97);
      v103 = v193;
      v215 = *(v101 + 16);
      v215(v193, v102, v97);
      v104 = sub_100030654();
      v105 = sub_100030884();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v219[0] = v107;
        *v106 = 136315138;
        v215(v192, v103, v206);
        v108 = sub_100030704();
        v110 = v109;
        v197 = *(v203 + 8);
        v197(v103, v206);
        v111 = sub_10002B88C(v108, v110, v219);

        *(v106 + 4) = v111;
        v81 = v217;
        _os_log_impl(&_mh_execute_header, v104, v105, "setting recurrenceRule {recurrenceRule: %s}", v106, 0xCu);
        sub_100008D70(v107);
        v101 = v203;

        v97 = v206;
      }

      else
      {

        v197 = *(v101 + 8);
        v197(v103, v97);
      }

      sub_100008944(&qword_100041E70, &unk_1000340C8);
      v112 = *(v101 + 72);
      v113 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v114 = swift_allocObject();
      v114[1] = xmmword_100033CF0;
      v115 = v198;
      v215(v114 + v113, v198, v97);
      v220.value._rawValue = v114;
      v220.is_nil = 0;
      sub_100030154(v220, v116);

      v197(v115, v97);
      v204(v213, v79);
    }

    v67 = &selRef_imageWithUIImage_;
  }

  v117 = v207;
  swift_beginAccess();
  v118 = *v117;
  if (v118)
  {
    v119 = qword_100041AF8;
    v120 = v118;
    if (v119 != -1)
    {
      swift_once();
    }

    v121 = sub_100030664();
    sub_1000089D8(v121, qword_1000423F0);
    v122 = v120;
    v123 = sub_100030654();
    v124 = sub_100030884();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v125 = 138412290;
      *(v125 + 4) = v122;
      *v126 = v118;
      v127 = v122;
      _os_log_impl(&_mh_execute_header, v123, v124, "setting contactRepresentation {contactRepresentation: %@}", v125, 0xCu);
      sub_100008BB8(v126, &unk_100041BF0, &unk_100033DB0);

      v81 = v217;
    }

    v128 = v122;
    sub_100030124();
  }

  v129 = a11;
  v130 = v205;
  swift_beginAccess();
  v131 = *v130;
  if (*v130)
  {
    v132 = qword_100041AF8;
    v133 = v131;
    if (v132 != -1)
    {
      swift_once();
    }

    v134 = sub_100030664();
    sub_1000089D8(v134, qword_1000423F0);
    v135 = v133;
    v136 = sub_100030654();
    v137 = sub_100030884();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v138 = 138412290;
      *(v138 + 4) = v135;
      *v139 = v131;
      v140 = v135;
      _os_log_impl(&_mh_execute_header, v136, v137, "setting userActivity {remUserActivity: %@}", v138, 0xCu);
      sub_100008BB8(v139, &unk_100041BF0, &unk_100033DB0);
      v67 = &selRef_imageWithUIImage_;
    }

    v141 = v135;
    sub_100030114();

    v81 = v217;
  }

  v217 = a12;
  swift_beginAccess();
  v142 = v208;
  sub_100008B50(a10, v208, &qword_100042600, &qword_1000344F0);
  v143 = v210;
  v144 = v211;
  if ((*(v210 + 48))(v142, 1, v211) == 1)
  {
    sub_100008BB8(v142, &qword_100042600, &qword_1000344F0);
  }

  else
  {
    v216 = a11;
    v145 = v209;
    (*(v143 + 32))(v209, v142, v144);
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v146 = sub_100030664();
    sub_1000089D8(v146, qword_1000423F0);
    v215 = *(v143 + 16);
    v215(v81, v145, v144);
    v147 = sub_100030654();
    v148 = sub_100030884();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v208 = v149;
      v213 = swift_slowAlloc();
      v218 = v213;
      *v149 = 136315138;
      v150 = sub_10002FE34();
      v152 = v151;
      v153 = v81;
      v154 = *(v143 + 8);
      v154(v153, v144);
      v155 = sub_10002B88C(v150, v152, &v218);
      v67 = &selRef_imageWithUIImage_;

      v156 = v208;
      *(v208 + 1) = v155;
      _os_log_impl(&_mh_execute_header, v147, v148, "setting URL attachment {userActivityURL: %s}", v156, 0xCu);
      sub_100008D70(v213);
    }

    else
    {

      v157 = v81;
      v154 = *(v143 + 8);
      v154(v157, v144);
    }

    v158 = v199;
    v159 = v209;
    v215(v199, v209, v144);
    (*(v143 + 56))(v158, 0, 1, v144);
    sub_100030174();
    sub_100008BB8(v158, &qword_100042600, &qword_1000344F0);
    v154(v159, v144);
    v129 = v216;
  }

  swift_beginAccess();
  if (v129[1])
  {
    v160 = *v129;
    v161 = v67[351];
    v162 = v129[1];

    if (v161 != -1)
    {
      swift_once();
    }

    v163 = sub_100030664();
    sub_1000089D8(v163, qword_1000423F0);
    v164 = sub_100030654();
    v165 = sub_100030884();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      *v166 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "setting notes", v166, 2u);
    }

    v167 = objc_allocWithZone(NSAttributedString);
    v168 = sub_1000306C4();

    v169 = [v167 initWithString:v168];

    v221.value.super.isa = v169;
    sub_100030184(v221);
  }

  v170 = v217;
  swift_beginAccess();
  v171 = v214;
  if (*v170)
  {
    v172 = v67[351];
    v173 = *v170;
    if (v172 != -1)
    {
      swift_once();
    }

    v174 = sub_100030664();
    sub_1000089D8(v174, qword_1000423F0);
    v175 = sub_100030654();
    v176 = sub_100030884();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&_mh_execute_header, v175, v176, "setting custom smart list filters", v177, 2u);
      v171 = v214;
    }

    v178 = v200;
    sub_10002FED4();
    sub_1000301A4();

    (*(v201 + 8))(v178, v202);
  }

  v179 = [v171 accountCapabilities];
  v180 = [v179 supportsFlagged];

  if (!v180)
  {
    goto LABEL_68;
  }

  v181 = [a13 priority];
  if (!v181)
  {
    goto LABEL_68;
  }

  if (v181 == 1)
  {
    v182 = 0;
LABEL_67:
    sub_1000301C4(v182);
LABEL_68:
    if (v67[351] != -1)
    {
      swift_once();
    }

    v183 = sub_100030664();
    sub_1000089D8(v183, qword_1000423F0);
    v184 = v171;
    v185 = sub_100030654();
    v186 = sub_100030884();

    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *v187 = 138543362;
      v189 = [v184 objectID];
      *(v187 + 4) = v189;
      *v188 = v189;
      _os_log_impl(&_mh_execute_header, v185, v186, "Inserting reminder: {objectID: %{public}@}", v187, 0xCu);
      sub_100008BB8(v188, &unk_100041BF0, &unk_100033DB0);
    }

    *v212 = v184;
    return;
  }

  if (v181 == 2)
  {
    v182 = 1;
    goto LABEL_67;
  }

  if (v67[351] != -1)
  {
    swift_once();
  }

  v190 = sub_100030664();
  sub_1000089D8(v190, qword_1000423F0);
  sub_1000216C8(_swiftEmptyArrayStorage);
  sub_1000216C8(_swiftEmptyArrayStorage);
  sub_100026B5C("unknown priority", 16, 2);
  __break(1u);
}

void sub_100020B18(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_100020BAC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 taskReference];
  if (!v13)
  {

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v17 = sub_100030664();
    sub_1000089D8(v17, qword_1000423F0);
    v18 = sub_100030654();
    v19 = sub_100030854();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = ".taskReference is .unknown. {resolve: nil}";
    goto LABEL_14;
  }

  if (v13 != 1)
  {

    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v22 = sub_100030664();
    sub_1000089D8(v22, qword_1000423F0);
    v18 = sub_100030654();
    v19 = sub_100030864();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = ".taskReference is an unhandled enum. {resolve: nil}";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_15:

    v23 = 0;
    return a1(&v23);
  }

  v14 = *(a6 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_userActivityProvider + 32);
  sub_100008A10((a6 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_userActivityProvider), *(a6 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_userActivityProvider + 24));
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_10000D764;
  v15[5] = v12;

  sub_1000302E4();
}

uint64_t sub_100020E54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void))
{
  if (!a2)
  {
    return a5();
  }

  swift_errorRetain();
  a3(a2);
}

uint64_t sub_100020ECC(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2 && (v3 = v2, v4 = [v2 triggerContact], v3, v4))
  {
    sub_100008A10((v1 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_contactRepresentationResolver), *(v1 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_contactRepresentationResolver + 24));
    v5 = v4;
    v6 = sub_100027EBC();

    return v6;
  }

  else
  {
    v8 = sub_100008944(&qword_100041E68, &qword_1000340C0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    return sub_100030614();
  }
}

id sub_100020FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRAddTasksIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000210FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021150()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021188(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1000211BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100030D84();
  sub_100030734();
  v6 = sub_100030D94();

  return sub_100021278(a1, a2, v6);
}

unint64_t sub_100021234(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100030A54(*(v2 + 40));

  return sub_100021330(a1, v4);
}

unint64_t sub_100021278(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100030D44())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100021330(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100030A64();

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

void *sub_100021404(void *a1, int64_t a2, char a3)
{
  result = sub_100021444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100021424(char *a1, int64_t a2, char a3)
{
  result = sub_10002156C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100021444(void *result, int64_t a2, char a3, void *a4)
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
    sub_100008944(&qword_1000426C0, &unk_100034550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for REMSmartListType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002156C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008944(&qword_1000425A8, &qword_1000344D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10002167C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000216C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008944(&qword_100042648, &qword_100034518);
    v3 = sub_100030CF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008B50(v4, &v13, &unk_1000425F0, &qword_1000340B0);
      v5 = v13;
      v6 = v14;
      result = sub_1000211BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000269E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000217F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008944(&qword_100042640, &qword_100034510);
    v3 = sub_100030CF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000211BC(v5, v6);
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

id sub_1000218FC(void *a1)
{
  v13 = 0;
  result = [a1 fetchDefaultAccountWithError:&v13];
  if (v13)
  {
    v2 = result;
    v3 = v13;

    swift_willThrow();
    if (qword_100041AF8 != -1)
    {
      swift_once();
    }

    v4 = sub_100030664();
    sub_1000089D8(v4, qword_1000423F0);
    v5 = v3;
    v6 = sub_100030654();
    v7 = sub_100030864();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_100030D64();
      v12 = sub_10002B88C(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to determine default account {error: %s}", v8, 0xCu);
      sub_100008D70(v9);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100021AE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000307D4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000E420(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_100021B78(char *a1, unint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AF8 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v7 = sub_100030664();
    sub_1000089D8(v7, qword_1000423F0);
    v8 = a1;
    v9 = sub_100030654();
    v10 = sub_100030884();

    v82 = v6;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = a3;
      v13 = swift_slowAlloc();
      v86 = v13;
      *v11 = 136315138;
      v85 = [v8 targetTaskList];
      sub_100008944(&unk_1000426A0, &unk_100034540);
      v14 = sub_100030A94();
      v16 = v15;

      v17 = sub_10002B88C(v14, v16, &v86);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "SiriKit asked for resolving tasklist {targetTaskList: %s}", v11, 0xCu);
      sub_100008D70(v13);
      a3 = v12;
    }

    v18 = [v8 targetTaskList];
    if (v18)
    {
      v19 = v18;
      v20 = (a2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource);
      v21 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 24);
      v22 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 32);
      sub_100008A10(v20, v21);
      sub_100008944(&unk_100041EB0, &unk_1000340E0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100033D00;
      *(v23 + 32) = v19;
      v24 = swift_allocObject();
      v24[2] = v19;
      v24[3] = sub_10000B8D4;
      v24[4] = v82;
      v25 = *(v22 + 40);
      v26 = v19;

      v25(v23, sub_100026AC4, v24, v21, v22);

LABEL_6:

      return;
    }

    v27 = [v8 targetTaskListMembers];
    if (!v27)
    {
      goto LABEL_67;
    }

    a1 = v27;
    sub_100008D28(0, &qword_100042658, INPerson_ptr);
    v6 = sub_100030794();

    if (!(v6 >> 62))
    {
      v28 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        break;
      }

      goto LABEL_10;
    }

    v28 = sub_100030CE4();
    if (!v28)
    {
      break;
    }

LABEL_10:
    v81 = a2;
    v29 = 0;
    a2 = v6 & 0xC000000000000001;
    v84 = v6 & 0xFFFFFFFFFFFFFF8;
    v30 = _swiftEmptyArrayStorage;
    do
    {
      if (a2)
      {
        v31 = sub_100030BA4();
      }

      else
      {
        if (v29 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v31 = *(v6 + 8 * v29 + 32);
      }

      a1 = v31;
      a3 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v32 = sub_100030A24();

      a1 = *(v32 + 16);
      v33 = *(v30 + 2);
      v34 = &a1[v33];
      if (__OFADD__(v33, a1))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v34 <= *(v30 + 3) >> 1)
      {
        if (*(v32 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v33 <= v34)
        {
          v36 = &a1[v33];
        }

        else
        {
          v36 = v33;
        }

        v30 = sub_10002B4F4(isUniquelyReferenced_nonNull_native, v36, 1, v30);
        if (*(v32 + 16))
        {
LABEL_26:
          if ((*(v30 + 3) >> 1) - *(v30 + 2) < a1)
          {
            goto LABEL_60;
          }

          swift_arrayInitWithCopy();

          if (a1)
          {
            v37 = *(v30 + 2);
            v38 = __OFADD__(v37, a1);
            v39 = &a1[v37];
            if (v38)
            {
              goto LABEL_62;
            }

            *(v30 + 2) = v39;
          }

          goto LABEL_12;
        }
      }

      if (a1)
      {
        goto LABEL_55;
      }

LABEL_12:
      ++v29;
    }

    while (a3 != v28);
    v40 = 0;
    v41 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (a2)
      {
        v42 = sub_100030BA4();
      }

      else
      {
        if (v40 >= *(v84 + 16))
        {
          goto LABEL_57;
        }

        v42 = *(v6 + 8 * v40 + 32);
      }

      a1 = v42;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v83 = v40 + 1;
      v43 = v30;
      v44 = a2;
      a2 = v28;
      v45 = v6;
      a3 = sub_100030A34();

      a1 = a3[2];
      v46 = *(v41 + 2);
      v6 = &a1[v46];
      if (__OFADD__(v46, a1))
      {
        goto LABEL_58;
      }

      v47 = swift_isUniquelyReferenced_nonNull_native();
      if (!v47 || v6 > *(v41 + 3) >> 1)
      {
        if (v46 <= v6)
        {
          v48 = &a1[v46];
        }

        else
        {
          v48 = v46;
        }

        v41 = sub_10002B4F4(v47, v48, 1, v41);
      }

      v6 = v45;
      v28 = a2;
      if (a3[2])
      {
        if ((*(v41 + 3) >> 1) - *(v41 + 2) < a1)
        {
          goto LABEL_61;
        }

        a2 = v44;
        swift_arrayInitWithCopy();

        v30 = v43;
        if (a1)
        {
          v49 = *(v41 + 2);
          v38 = __OFADD__(v49, a1);
          v50 = &a1[v49];
          if (v38)
          {
            goto LABEL_63;
          }

          *(v41 + 2) = v50;
        }
      }

      else
      {

        a2 = v44;
        v30 = v43;
        if (a1)
        {
          goto LABEL_59;
        }
      }

      ++v40;
      if (v83 == v28)
      {
        v51 = *&v81[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 24];
        v52 = *&v81[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource + 32];
        sub_100008A10(&v81[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource], v51);

        v54 = sub_100021AE0(v53);

        v56 = v41;
        v57 = v6;
        v58 = sub_100021AE0(v55);

        v59 = swift_allocObject();
        v59[2] = v57;
        v59[3] = v30;
        v59[4] = v56;
        v59[5] = v81;
        v59[6] = sub_10000B8D4;
        v59[7] = v82;
        v60 = *(v52 + 56);

        v61 = v81;
        v60(v54, v58, sub_100026A74, v59, v51, v52);

        goto LABEL_6;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

LABEL_67:
  v62 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
  v86 = 0;
  v63 = [v62 fetchDefaultListWithError:{&v86, v81}];
  v64 = v63;
  if (v86)
  {
    v65 = v86;

    swift_willThrow();
LABEL_69:
    v66 = sub_100030654();
    v67 = sub_100030884();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "No .targetTaskList and unable to get defaultList. {result: .disambiguateDueToNoDefaultList}", v68, 2u);
    }

    v69 = sub_10001CAEC();
    (a3[2])(a3, v69);

    return;
  }

  if (!v63)
  {
    goto LABEL_69;
  }

  sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
  v70 = v64;
  v71 = sub_100030814();
  v72 = v70;
  v73 = v71;
  v74 = sub_100030654();
  v75 = sub_100030884();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138412546;
    v78 = [v72 objectID];
    *(v76 + 4) = v78;
    *(v76 + 12) = 2112;
    *(v76 + 14) = v73;
    *v77 = v78;
    v77[1] = v73;
    v79 = v73;
    _os_log_impl(&_mh_execute_header, v74, v75, "Using defaultList {objectID: %@, result: .success(%@)}", v76, 0x16u);
    sub_100008944(&unk_100041BF0, &unk_100033DB0);
    swift_arrayDestroy();
  }

  *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_didNotSpecifyTargetList) = 1;
  sub_100008D28(0, &unk_1000425C0, INAddTasksTargetTaskListResolutionResult_ptr);
  v80 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList:v73];
  (a3[2])(a3, v80);
}

void sub_100022540(void *a1, uint64_t a2)
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_1000423F0);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v98 = v9;
    *v8 = 136315138;
    v96 = [v5 spatialEventTrigger];
    sub_100008944(&qword_100042698, &qword_100034538);
    v10 = sub_100030A94();
    v12 = v11;

    v13 = sub_10002B88C(v10, v12, &v98);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriKit asked for resolving spatial event trigger {spatialEventTrigger: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v14 = [v5 spatialEventTrigger];
  if (!v14)
  {
    v25 = sub_100030654();
    v26 = sub_100030884();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, ".spatialEventTrigger is nil {result: .notRequired}", v27, 2u);
    }

    sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2, v24);
    goto LABEL_68;
  }

  v15 = v14;
  if (![v14 event])
  {
    v28 = sub_100030654();
    v29 = sub_100030864();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "spatialEventTrigger.event must not be .unknown {result: .unsupported}", v30, 2u);
    }

    sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
    v24 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v24);

    goto LABEL_68;
  }

  v16 = [v15 mobileSpace];
  v17 = v15;
  v18 = sub_100030654();
  v19 = sub_100030884();

  v20 = os_log_type_enabled(v18, v19);
  if (v16 == 1)
  {
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v15;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Resolved vehicle trigger {result: .success, spatialEventTrigger: %@}", v21, 0xCu);
      sub_100008BB8(v22, &unk_100041BF0, &unk_100033DB0);
    }

    v24 = [objc_opt_self() successWithResolvedSpatialEventTrigger:v17];
    (*(a2 + 16))(a2, v24);
LABEL_67:

    goto LABEL_68;
  }

  v95 = a2;
  if (v20)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v98 = v32;
    *v31 = 136315138;
    v33 = [v17 suggestedValues];
    if (v33)
    {
      v34 = v33;
      sub_100008D28(0, &qword_100042680, CLPlacemark_ptr);
      sub_100030794();
    }

    sub_100008944(&qword_100042690, &qword_100034530);
    v35 = sub_100030A94();
    v37 = v36;

    v38 = sub_10002B88C(v35, v37, &v98);

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v18, v19, "suggestedValues: %s", v31, 0xCu);
    sub_100008D70(v32);

    a2 = v95;
  }

  else
  {
  }

  v39 = [v17 suggestedValues];
  if (v39)
  {
    v40 = v39;
    sub_100008D28(0, &qword_100042680, CLPlacemark_ptr);
    v41 = sub_100030794();
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  v42 = v41 >> 62;
  if (!(v41 >> 62))
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_50:

    v64 = sub_100030654();
    v65 = sub_100030884();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "fallback to spatialEventTrigger.placemark instead because placemark count is 0 {count: 0}", v66, 2u);
    }

    v67 = [v17 placemark];
    if (!v67)
    {
      v82 = sub_100030654();
      v83 = sub_100030864();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "spatialEventTrigger.placemark == nil. Siri is messed up. Ignoring. {result: .notRequired}", v84, 2u);
      }

      sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
      v62 = [swift_getObjCClassFromMetadata() notRequired];
      v63 = *(a2 + 16);
      goto LABEL_62;
    }

    v44 = [v17 placemark];
LABEL_54:
    v68 = [v44 region];
    if (v68)
    {
      v69 = v68;
      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        v71 = v70;
        v72 = a2;
        v17 = v17;
        v73 = v69;
        v74 = sub_100030654();
        v75 = sub_100030884();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v76 = 138412546;
          *(v76 + 4) = v71;
          *(v76 + 12) = 2112;
          *(v76 + 14) = v17;
          *v77 = v71;
          v77[1] = v15;
          v78 = v17;
          v79 = v73;
          _os_log_impl(&_mh_execute_header, v74, v75, "Resolved circularRegion {circularRegion: %@, result: .success(%@)}", v76, 0x16u);
          sub_100008944(&unk_100041BF0, &unk_100033DB0);
          swift_arrayDestroy();
        }

        v24 = v44;
        v80 = [objc_allocWithZone(INSpatialEventTrigger) initWithPlacemark:v24 event:{objc_msgSend(v17, "event")}];

        v81 = [objc_opt_self() successWithResolvedSpatialEventTrigger:v80];
        (*(v72 + 16))(v72, v81);

        goto LABEL_67;
      }
    }

    v24 = v44;
    v85 = sub_100030654();
    v86 = sub_100030864();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v98 = v88;
      *v87 = 136315138;
      v97 = [v24 region];
      sub_100008944(&qword_100042688, &qword_100034528);
      v89 = sub_100030A94();
      v90 = a2;
      v92 = v91;

      v93 = sub_10002B88C(v89, v92, &v98);
      a2 = v90;

      *(v87 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v85, v86, "Got a placemark with a CLRegion that is not a CLCircularRegion {region: %s, result: unsupported}", v87, 0xCu);
      sub_100008D70(v88);
    }

    sub_100008D28(0, &qword_100042670, INSpatialEventTriggerResolutionResult_ptr);
    v94 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v94);

    goto LABEL_67;
  }

  if (!sub_100030CE4())
  {
    goto LABEL_50;
  }

LABEL_27:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v43 = sub_100030BA4();
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v43 = *(v41 + 32);
  }

  v44 = v43;
  if (!v42)
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  if (sub_100030CE4() == 1)
  {
LABEL_43:

    v57 = sub_100030654();
    v58 = sub_100030884();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Using the only suggestedValue because placemarks.count is 1 {count: 1}", v59, 2u);
    }

    a2 = v95;
    goto LABEL_54;
  }

LABEL_32:

  v45 = sub_100030654();
  v46 = sub_100030884();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v98 = v48;
    *v47 = 136315138;
    sub_100008D28(0, &qword_100042680, CLPlacemark_ptr);
    v49 = sub_1000307A4();
    v51 = sub_10002B88C(v49, v50, &v98);

    *(v47 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "Disambiguate suggestedValues {result: .disambiguation, placemarks: %s}", v47, 0xCu);
    sub_100008D70(v48);
  }

  if (!v42)
  {
    v52 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_36;
    }

LABEL_48:

    v60 = objc_opt_self();
    sub_100008D28(0, &qword_100042678, INSpatialEventTrigger_ptr);
    isa = sub_100030784().super.isa;

    v62 = [v60 disambiguationWithSpatialEventTriggersToDisambiguate:isa];

    v63 = *(v95 + 16);
LABEL_62:
    v63();

    v24 = v17;
LABEL_68:

    return;
  }

  v52 = sub_100030CE4();
  if (!v52)
  {
    goto LABEL_48;
  }

LABEL_36:
  v98 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v52 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v54 = sub_100030BA4();
      }

      else
      {
        v54 = *(v41 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      [objc_allocWithZone(INSpatialEventTrigger) initWithPlacemark:v54 event:{objc_msgSend(v17, "event")}];

      sub_100030BD4();
      v56 = v98[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
    }

    while (v52 != v53);
    goto LABEL_48;
  }

LABEL_71:
  __break(1u);
}

void sub_100023384(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_1000423F0);
  v7 = a1;
  v8 = sub_100030654();
  v9 = sub_100030884();

  if (os_log_type_enabled(v8, v9))
  {
    v32 = v5;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315138;
    [v7 taskReference];
    type metadata accessor for INTaskReference(0);
    v12 = sub_100030704();
    v14 = sub_10002B88C(v12, v13, &v33);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriKit asked for resolving task reference {taskReference: %s}", v10, 0xCu);
    sub_100008D70(v11);

    v5 = v32;
  }

  if ([v7 taskReference] != 1)
  {
    v25 = sub_100030654();
    v26 = sub_100030884();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "userActivity not requested {result: .notRequired}", v27, 2u);
    }

    sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
    v28 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_15;
  }

  v15 = sub_10001E210(v7);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 supportsReminderActions];

    if ((v17 & 1) == 0)
    {
      v29 = sub_100030654();
      v30 = sub_100030864();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Target list account doesn't support userActivity. {result: .unsupported()}", v31, 2u);
      }

      sub_100008D28(0, &qword_100042668, INTaskReferenceResolutionResult_ptr);
      v28 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_15:
      v24 = v28;
      (a3)[2](a3, v24);
      goto LABEL_16;
    }
  }

  __chkstk_darwin(v15);
  v18 = sub_100008944(&unk_100042570, &unk_1000344A8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_100030624();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10000B8D4;
  *(v21 + 24) = v5;

  v22 = sub_1000305B4();
  sub_1000305F4();

  v23 = swift_allocObject();
  *(v23 + 16) = sub_10000B8D4;
  *(v23 + 24) = v5;

  v24 = sub_1000305B4();
  sub_100030604();

LABEL_16:
}

void sub_100023854(void *a1, uint64_t a2)
{
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_1000423F0);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = [v5 targetTaskListMembers];
    if (v10)
    {
      v11 = v10;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v12 = sub_100030794();
    }

    else
    {
      v12 = 0;
    }

    v30 = v12;
    sub_100008944(&qword_100042660, &qword_100034520);
    v13 = sub_100030704();
    v15 = sub_10002B88C(v13, v14, &v31);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriKit asked for resolving target task list members {targetTaskListMembers: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v16 = [v5 targetTaskListMembers];
  if (!v16)
  {
    sub_100008D28(0, &qword_100042650, INPersonResolutionResult_ptr);
    v26 = [swift_getObjCClassFromMetadata() notRequired];
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100033D00;
    *(v27 + 32) = v26;
    v28 = v26;
    v29.super.isa = sub_100030784().super.isa;
    (*(a2 + 16))(a2, v29.super.isa);

LABEL_21:

    return;
  }

  v17 = v16;
  sub_100008D28(0, &qword_100042658, INPerson_ptr);
  v18 = sub_100030794();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_20:

    sub_100008D28(0, &qword_100042650, INPersonResolutionResult_ptr);
    v29.super.isa = sub_100030784().super.isa;
    (*(a2 + 16))(a2, v29.super.isa);
    goto LABEL_21;
  }

  v19 = sub_100030CE4();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_11:
  v31 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = objc_opt_self();
    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = sub_100030BA4();
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v20 successWithResolvedPerson:{v22, v30}];

      sub_100030BD4();
      v25 = v31[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
    }

    while (v19 != v21);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_100023C68(void *a1, uint64_t *a2, void (**a3)(void, void))
{
  v298 = a2;
  v280 = sub_10002FFC4();
  v279 = *(v280 - 8);
  v5 = *(v279 + 64);
  __chkstk_darwin(v280);
  v278 = &v264 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_10002FE04();
  v285 = *(v286 - 8);
  v7 = *(v285 + 64);
  __chkstk_darwin(v286);
  v284 = &v264 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = sub_10002FEE4();
  v282 = *(v283 - 8);
  v9 = *(v282 + 64);
  __chkstk_darwin(v283);
  v281 = &v264 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_100030304();
  v288 = *(v289 - 8);
  v11 = *(v288 + 64);
  __chkstk_darwin(v289);
  v287 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008944(&qword_1000425D0, &qword_100034098);
  v290 = *(v13 - 8);
  v14 = *(v290 + 64);
  __chkstk_darwin(v13 - 8);
  v292 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = v15;
  __chkstk_darwin(v16);
  v294 = &v264 - v17;
  v18 = sub_100008944(&qword_1000425D8, &unk_1000344E0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v264 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v264 - v23;
  v297 = sub_10002FF24();
  v296 = *(v297 - 1);
  isa = v296[8].isa;
  __chkstk_darwin(v297);
  v295 = (&v264 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v293 = &v264 - v28;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AF8 != -1)
  {
    swift_once();
  }

  v30 = sub_100030664();
  sub_1000089D8(v30, qword_1000423F0);
  sub_100008944(&qword_1000425E0, &unk_100033D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_100008D28(0, &qword_1000425E8, INAddTasksIntent_ptr);
  *(inited + 48) = a1;
  v32 = a1;
  sub_1000216C8(inited);
  swift_setDeallocating();
  sub_100008BB8(inited + 32, &unk_1000425F0, &qword_1000340B0);
  sub_100026D38();

  v33 = v32;
  v34 = sub_100030654();
  v35 = sub_100030884();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = a3;
    v38 = v29;
    v39 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v39 = v33;
    v40 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "SiriKit asked for handling intent {intent: %@}", v36, 0xCu);
    sub_100008BB8(v39, &unk_100041BF0, &unk_100033DB0);
    v29 = v38;
    a3 = v37;
  }

  v41 = [v33 taskTitles];
  if (!v41)
  {
    v78 = sub_100030654();
    v79 = sub_100030864();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "intent.taskTitles is nil - should have resolved it in previous calls. {result: .failure}", v80, 2u);
LABEL_24:
    }

LABEL_25:

    v87 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
    (a3)[2](a3, v87);

    return;
  }

  v42 = v41;
  sub_100008D28(0, &unk_100042590, INSpeakableString_ptr);
  v43 = sub_100030794();

  v44 = [v33 targetTaskList];
  if (!v44)
  {

    v81 = v33;
    v78 = sub_100030654();
    v82 = sub_100030864();

    if (os_log_type_enabled(v78, v82))
    {
      v83 = swift_slowAlloc();
      v84 = a3;
      v85 = swift_slowAlloc();
      *v83 = 138412290;
      *(v83 + 4) = v81;
      *v85 = v81;
      v86 = v81;
      _os_log_impl(&_mh_execute_header, v78, v82, "Unexpected nil .targetTaskList from intent. {intent: %@, result: .failure}", v83, 0xCu);
      sub_100008BB8(v85, &unk_100041BF0, &unk_100033DB0);
      a3 = v84;

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v45 = v44;
  v275 = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v277 = v45;
  v47 = sub_100030804();
  v276 = v46;
  if (!v48)
  {
    goto LABEL_13;
  }

  if (v47)
  {
    sub_10002FEF4();
    v49 = v296;
    v50 = v297;
    if ((v296[6].isa)(v24, 1, v297) == 1)
    {
      sub_100008BB8(v24, &qword_1000425D8, &unk_1000344E0);
      goto LABEL_11;
    }

    (v49[4].isa)(v293, v24, v50);
    v122 = objc_opt_self();
    v123 = sub_10002FF04().super.isa;
    v124 = [v122 objectIDWithUUID:v123];

    v125 = *(v298 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
    v302 = 0;
    v271 = v125;
    v126 = [v125 fetchCustomSmartListWithObjectID:v124 error:&v302];
    if (!v126)
    {
      v273 = a3;
      v188 = v302;

      v148 = sub_10002FE24();

      swift_willThrow();
      goto LABEL_59;
    }

    v127 = v126;
    v272 = v124;
    v128 = v302;
    v129 = [v127 customContext];
    if (v129)
    {
      v130 = v129;
      v270 = v127;
      v131 = sub_100030974();

      if (v131)
      {
        v268 = v131;
        v273 = a3;
        v132 = v272;
        v133 = sub_100030654();
        v269 = v133;
        v134 = sub_100030884();

        v135 = os_log_type_enabled(v133, v134);
        v136 = v276;
        if (v135)
        {
          v137 = swift_slowAlloc();
          v274 = v29;
          v138 = v137;
          v139 = swift_slowAlloc();
          *v138 = 138543362;
          *(v138 + 4) = v132;
          *v139 = v132;
          v140 = v132;
          v141 = v139;
          v142 = v140;
          _os_log_impl(&_mh_execute_header, v269, v134, "Successfully fetched custom smart list {smartListID: %{public}@}", v138, 0xCu);
          sub_100008BB8(v141, &unk_100041BF0, &unk_100033DB0);
          v132 = v140;

          v29 = v274;
        }

        v143 = *(v136 + 16);
        v144 = v268;
        *(v136 + 16) = v268;
        v145 = v144;

        v302 = 0;
        v146 = [v271 fetchDefaultListWithError:&v302];
        if (v302)
        {
          v147 = v302;

          swift_willThrow();
          v302 = v147;
          v148 = v147;
          sub_100008944(&qword_100042610, &unk_100034500);
          sub_100008D28(0, &qword_100042618, NSError_ptr);
          if (swift_dynamicCast())
          {
            v298 = v145;

            v149 = v300;
            v150 = v132;
            v151 = v149;
            v152 = sub_100030654();
            v153 = sub_100030864();

            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v295 = swift_slowAlloc();
              v301 = v295;
              *v154 = 138543618;
              *(v154 + 4) = v150;
              *v155 = v150;
              *(v154 + 12) = 2082;
              v299 = v151;
              sub_100026878();
              v156 = v150;
              v157 = sub_100030D74();
              v159 = sub_10002B88C(v157, v158, &v301);

              *(v154 + 14) = v159;
              _os_log_impl(&_mh_execute_header, v152, v153, "Smart List found and unable to fetch default list. {result: .failure, smartListID: %{public}@, error: %{public}s}", v154, 0x16u);
              sub_100008BB8(v155, &unk_100041BF0, &unk_100033DB0);

              sub_100008D70(v295);
            }

            v160 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
            (v273)[2](v273, v160);

LABEL_62:
            (v296[1].isa)(v293, v297);
            goto LABEL_63;
          }

          v124 = v272;
LABEL_59:
          v302 = v148;
          sub_100008944(&qword_100042610, &unk_100034500);
          sub_100008D28(0, &qword_100042618, NSError_ptr);
          swift_dynamicCast();
          v189 = v300;
          v190 = v124;
          v191 = v189;
          v192 = sub_100030654();
          v193 = sub_100030864();

          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v298 = swift_slowAlloc();
            v299 = v191;
            v301 = v298;
            *v194 = 138543618;
            *(v194 + 4) = v190;
            *v195 = v190;
            *(v194 + 12) = 2082;
            sub_100026878();
            v196 = v190;
            v197 = sub_100030D74();
            v199 = sub_10002B88C(v197, v198, &v301);

            *(v194 + 14) = v199;
            _os_log_impl(&_mh_execute_header, v192, v193, "Error fetching smart list. {listID: %{public}@, error: %{public}s}", v194, 0x16u);
            sub_100008BB8(v195, &unk_100041BF0, &unk_100033DB0);

            sub_100008D70(v298);
          }

          v200 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
          (v273)[2](v273, v200);

          goto LABEL_62;
        }

        (v296[1].isa)(v293, v297);

        a3 = v273;
        if (v146)
        {
          v248 = v146;

          v69 = v248;
          v177 = v69;
          v53 = v298;
          goto LABEL_52;
        }
      }

      else
      {
        (v296[1].isa)(v293, v297);
      }
    }

    else
    {
      (v296[1].isa)(v293, v297);
    }
  }

LABEL_11:
  sub_10002FEF4();

  v51 = v296;
  v52 = v297;
  if ((v296[6].isa)(v21, 1, v297) != 1)
  {
    (v51[4].isa)(v295, v21, v52);
    v99 = objc_opt_self();
    v100 = sub_10002FF04().super.isa;
    v101 = [v99 objectIDWithUUID:v100];

    v53 = v298;
    v102 = *(v298 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
    v302 = 0;
    v103 = [v102 fetchListWithObjectID:v101 error:&v302];
    v104 = v302;
    if (v103)
    {
      v105 = v103;
      v106 = v104;
      v107 = sub_100030654();
      v108 = sub_100030884();

      v109 = os_log_type_enabled(v107, v108);
      v293 = v105;
      if (v109)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v110 = 138543362;
        v112 = [v105 objectID];
        *(v110 + 4) = v112;
        *v111 = v112;
        _os_log_impl(&_mh_execute_header, v107, v108, "Successfully fetched list {listID: %{public}@}", v110, 0xCu);
        sub_100008BB8(v111, &unk_100041BF0, &unk_100033DB0);
        v53 = v298;

        v51 = v296;

        v113 = v101;
      }

      else
      {
        v113 = v107;
        v107 = v101;
      }

      (v51[1].isa)(v295, v297);
      v177 = 0;
      v69 = v293;
      goto LABEL_52;
    }

    v273 = a3;
    v161 = v302;

    v162 = sub_10002FE24();

    swift_willThrow();
    v302 = v162;
    sub_100008944(&qword_100042610, &unk_100034500);
    sub_100008D28(0, &qword_100042618, NSError_ptr);
    swift_dynamicCast();
    v163 = v300;
    v164 = v101;
    v165 = v163;
    v166 = sub_100030654();
    v167 = sub_100030864();

    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v274 = v29;
      v171 = v170;
      v301 = v170;
      *v168 = 138543618;
      *(v168 + 4) = v164;
      *v169 = v164;
      *(v168 + 12) = 2082;
      v299 = v165;
      sub_100026878();
      v298 = v165;
      v172 = v164;
      v173 = sub_100030D74();
      v175 = sub_10002B88C(v173, v174, &v301);

      *(v168 + 14) = v175;
      v165 = v298;
      _os_log_impl(&_mh_execute_header, v166, v167, "Unable to fetch list. {result: .failure, listID: %{public}@, error: %{public}s}", v168, 0x16u);
      sub_100008BB8(v169, &unk_100041BF0, &unk_100033DB0);

      sub_100008D70(v171);
    }

    v176 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
    (v273)[2](v273, v176);

    (v296[1].isa)(v295, v297);
LABEL_63:

LABEL_82:

    return;
  }

  sub_100008BB8(v21, &qword_1000425D8, &unk_1000344E0);
LABEL_13:
  v274 = v29;
  v53 = v298;
  v54 = *(v298 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store);
  v55 = sub_1000218FC(v54);
  if (v55)
  {
    v56 = v55;
    v57 = [v277 title];
    v58 = [v57 spokenPhrase];

    if (!v58)
    {
      sub_1000306F4();
      v58 = sub_1000306C4();
    }

    v59 = [objc_allocWithZone(REMSaveRequest) initWithStore:v54];
    v297 = [v59 updateAccount:v56];
    v60 = [v59 addListWithName:v58 toAccountChangeItem:?];

    v302 = 0;
    v61 = [v59 saveSynchronouslyWithError:&v302];
    v62 = v302;
    if (!v61 || (v63 = v302, v64 = [v60 objectID], v302 = 0, v65 = objc_msgSend(v54, "fetchListWithObjectID:error:", v64, &v302), v64, v62 = v302, !v65))
    {
      v88 = v62;

      sub_10002FE24();

      swift_willThrow();
      v89 = v56;
      v90 = v60;
      v91 = sub_100030654();
      v92 = sub_100030864();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138543618;
        v95 = [v90 objectID];
        *(v93 + 4) = v95;
        *(v93 + 12) = 2112;
        *(v93 + 14) = v89;
        *v94 = v95;
        v94[1] = v56;
        v96 = v89;
        _os_log_impl(&_mh_execute_header, v91, v92, "Error creating new list. {listID: %{public}@, account: %@, result: .failure}", v93, 0x16u);
        sub_100008944(&unk_100041BF0, &unk_100033DB0);
        swift_arrayDestroy();
      }

      v97 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
      (a3)[2](a3, v97);

      v98 = &v303;
LABEL_81:
      v247 = *(v98 - 32);
      goto LABEL_82;
    }

    v295 = v60;
    v66 = v65;
    v67 = v62;
    v68 = v56;
    v69 = v66;
    v70 = sub_100030654();
    v71 = sub_100030884();

    v296 = v70;
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v293 = v69;
      v74 = v73;
      *v72 = 138543618;
      v75 = [v293 objectID];
      *(v72 + 4) = v75;
      *(v72 + 12) = 2112;
      *(v72 + 14) = v68;
      *v74 = v75;
      v74[1] = v56;
      v76 = v68;
      v77 = v296;
      _os_log_impl(&_mh_execute_header, v296, v71, "Successfully created new list {listID: %{public}@, account: %@}", v72, 0x16u);
      sub_100008944(&unk_100041BF0, &unk_100033DB0);
      swift_arrayDestroy();
      v69 = v293;

      v53 = v298;
    }

    else
    {
    }

    v177 = 0;
    v29 = v274;
LABEL_52:
    v178 = [v69 isGroup];

    if (v178)
    {

      v179 = v69;
      v180 = sub_100030654();
      v181 = sub_100030864();

      if (os_log_type_enabled(v180, v181))
      {
        v182 = v177;
        v183 = swift_slowAlloc();
        v184 = a3;
        v185 = swift_slowAlloc();
        *v183 = 138543362;
        v186 = [v179 objectID];
        *(v183 + 4) = v186;
        *v185 = v186;
        _os_log_impl(&_mh_execute_header, v180, v181, "Fetched list is a Group, can't add reminder to groups. {result: .failure, listID: %{public}@}", v183, 0xCu);
        sub_100008BB8(v185, &unk_100041BF0, &unk_100033DB0);
        a3 = v184;

        v177 = v182;
      }

      v187 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:4 userActivity:0];
      (a3)[2](a3, v187);

      return;
    }

    v293 = v69;
    if ([v33 spatialEventTrigger])
    {
      sub_100008D28(0, &qword_100041E78, REMAlarmLocationTrigger_ptr);
      v296 = sub_100030964();
    }

    else
    {
      v296 = 0;
    }

    if ([v33 spatialEventTrigger])
    {
      sub_100008D28(0, &unk_100041E80, REMAlarmVehicleTrigger_ptr);
      v268 = sub_100030954();
    }

    else
    {
      v268 = 0;
    }

    sub_100008944(&qword_100041BB0, &unk_1000340A0);
    v297 = swift_allocBox();
    v202 = v201;
    v203 = [v33 temporalEventTrigger];
    v265 = v202;
    if (v203)
    {
      v204 = v203;
      sub_100030934();
    }

    else
    {
      (*(v285 + 56))(v202, 1, 1, v286);
    }

    v205 = [v33 temporalEventTrigger];
    v274 = v29;
    v269 = v177;
    if (v205)
    {
      sub_10000B82C(v53 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider, &v302);
      sub_100030224();
    }

    else
    {
      v206 = sub_100030234();
      (*(*(v206 - 8) + 56))(v294, 1, 1, v206);
    }

    v207 = swift_allocObject();
    v207[2] = 0;
    v208 = sub_100020ECC(v33);
    v209 = swift_allocObject();
    *(v209 + 16) = 0;
    __chkstk_darwin(v209);
    *(&v264 - 2) = v33;
    *(&v264 - 1) = v53;
    v210 = sub_100008944(&unk_100042570, &unk_1000344A8);
    v211 = *(v210 + 48);
    v212 = *(v210 + 52);
    swift_allocObject();
    v270 = sub_100030624();
    sub_100008944(&qword_100042600, &qword_1000344F0);
    v213 = swift_allocBox();
    v215 = v214;
    v216 = sub_10002FE54();
    (*(*(v216 - 8) + 56))(v215, 1, 1, v216);
    v217 = swift_allocObject();
    *(v217 + 16) = 0;
    *(v217 + 24) = 0;
    v266 = sub_100008944(&qword_100042608, &qword_1000344F8);
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v218 = swift_allocObject();
    *(v218 + 16) = xmmword_1000343B0;

    v219 = sub_1000305B4();
    v267 = v208;
    v220 = sub_1000305F4();
    v295 = v207;

    *(v218 + 32) = v220;
    v221 = swift_allocObject();
    v221[2] = v209;
    v221[3] = v213;
    v221[4] = v217;
    v273 = v209;

    v272 = v213;

    v271 = v217;

    v222 = sub_1000305B4();
    v223 = sub_1000305F4();

    *(v218 + 40) = v223;
    v266 = sub_1000305C4();

    v224 = v288;
    v225 = v287;
    v226 = v289;
    (*(v288 + 104))(v287, enum case for REMFeatureFlags.siriDefaultTime(_:), v289);
    LOBYTE(v217) = sub_1000302F4();
    (*(v224 + 8))(v225, v226);
    if ((v217 & 1) != 0 && *(v298 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_didNotSpecifyTargetList) == 1)
    {
      v227 = [v33 temporalEventTrigger];
      if (v227 || (v227 = [v33 spatialEventTrigger]) != 0 || (v227 = objc_msgSend(v33, "contactEventTrigger")) != 0)
      {
      }

      else
      {
        v249 = *(v298 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider + 32);
        sub_100008A10((v298 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider), *(v298 + OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider + 24));
        v250 = v281;
        sub_100030034();
        v251 = objc_opt_self();
        v252 = sub_10002FE94().super.isa;
        v253 = v278;
        sub_10002FFA4();
        v254 = sub_10002FFB4().super.isa;
        (*(v279 + 8))(v253, v280);
        v255 = [v251 rem_dateComponentsWithDate:v252 timeZone:v254 isAllDay:0];

        v256 = v284;
        sub_10002FDA4();

        v257 = sub_10002FDB4();
        if (v258)
        {
          _Block_release(a3);
          __break(1u);
          return;
        }

        v259 = v257;
        v260 = objc_opt_self();
        [v260 nextThirdsHour:{objc_msgSend(v260, "nextThirdsHourFromHour:", v259)}];
        sub_10002FDC4();
        sub_10002FDD4();
        sub_10002FDE4();
        (*(v282 + 8))(v250, v283);
        v261 = v265;
        sub_100008BB8(v265, &qword_100041BB0, &unk_1000340A0);
        v262 = v285;
        v263 = v286;
        (*(v285 + 32))(v261, v256, v286);
        (*(v262 + 56))(v261, 0, 1, v263);
      }
    }

    sub_100008B50(v294, v292, &qword_1000425D0, &qword_100034098);
    v290 = (*(v290 + 80) + 64) & ~*(v290 + 80);
    v289 = (v291 + v290 + 7) & 0xFFFFFFFFFFFFFFF8;
    v228 = (v289 + 15) & 0xFFFFFFFFFFFFFFF8;
    v229 = (v228 + 15) & 0xFFFFFFFFFFFFFFF8;
    v230 = (v229 + 15) & 0xFFFFFFFFFFFFFFF8;
    v291 = (v230 + 15) & 0xFFFFFFFFFFFFFFF8;
    v231 = (v291 + 15) & 0xFFFFFFFFFFFFFFF8;
    v232 = (v231 + 15) & 0xFFFFFFFFFFFFFFF8;
    v233 = swift_allocObject();
    v234 = v293;
    v233[2] = v298;
    v233[3] = v234;
    v235 = v296;
    v233[4] = v275;
    v233[5] = v235;
    v236 = v268;
    v237 = v297;
    v233[6] = v268;
    v233[7] = v237;
    sub_1000266D4(v292, v233 + v290);
    *(v233 + v289) = v295;
    *(v233 + v228) = v273;
    *(v233 + v229) = v272;
    *(v233 + v230) = v271;
    v238 = (v233 + ((v232 + 15) & 0xFFFFFFFFFFFFFFF8));
    *(v233 + v291) = v276;
    *(v233 + v231) = v33;
    v239 = v277;
    *(v233 + v232) = v277;
    v240 = v274;
    *v238 = sub_1000089C4;
    v238[1] = v240;
    v292 = v236;

    v241 = v239;

    v242 = v33;
    v243 = v293;

    v244 = v298;
    v245 = v296;
    v246 = sub_1000305B4();
    sub_1000305F4();

    sub_100008BB8(v294, &qword_1000425D0, &qword_100034098);

    v98 = &v302;
    goto LABEL_81;
  }

  v114 = v33;
  v115 = sub_100030654();
  v116 = sub_100030864();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = a3;
    v119 = swift_slowAlloc();
    *v117 = 138412290;
    *(v117 + 4) = v114;
    *v119 = v114;
    v120 = v114;
    _os_log_impl(&_mh_execute_header, v115, v116, "Unable to create list because there is no default account. {intent: %@, result: .failureRequiringAppLaunch}", v117, 0xCu);
    sub_100008BB8(v119, &unk_100041BF0, &unk_100033DB0);
    a3 = v118;
  }

  v121 = [objc_allocWithZone(INAddTasksIntentResponse) initWithCode:5 userActivity:0];
  (a3)[2](a3, v121);
}

uint64_t sub_100026400()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026438()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002648C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000264F4()
{
  v1 = *(sub_100008944(&qword_1000425D0, &qword_100034098) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(v0 + 32);

  v6 = *(v0 + 56);

  v7 = sub_100030234();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v9);

  v18 = *(v0 + v10);

  v19 = *(v0 + v11);

  v20 = *(v0 + v12);

  v21 = *(v0 + v13);

  v22 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16, v2 | 7);
}

uint64_t sub_1000266D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_1000425D0, &qword_100034098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100026744(uint64_t a1)
{
  v3 = *(sub_100008944(&qword_1000425D0, &qword_100034098) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v12 + 8);
  sub_10001EAE0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v11), *v12);
}

unint64_t sub_100026878()
{
  result = qword_100042620;
  if (!qword_100042620)
  {
    sub_100008D28(255, &qword_100042618, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042620);
  }

  return result;
}

uint64_t sub_100026928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100026970(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_100042600, &qword_1000344F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000269E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100026A1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026A84()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100026AD0()
{
  result = qword_1000426B0;
  if (!qword_1000426B0)
  {
    sub_100008C7C(&qword_100041F50, &qword_100034118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000426B0);
  }

  return result;
}

void sub_100026B5C(uint64_t a1, uint64_t a2, char a3)
{

  v5 = sub_100030654();
  v6 = sub_100030874();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446722;
    v8 = sub_100030B94();
    v10 = sub_10002B88C(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_100030694();
    v13 = a3;
    v14 = sub_10002B88C(v11, v12, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2082;
    v15 = sub_100030694();
    v17 = sub_10002B88C(v15, v16, &v18);
    a3 = v13;

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

void sub_100026D38()
{
  sub_100030314();
  sub_100030644();
  sub_100008944(&qword_1000426C8, &qword_100034598);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_100030B94();
  v1 = sub_1000306C4();

  *(inited + 48) = v1;
  sub_1000217F8(inited);
  swift_setDeallocating();
  sub_1000270A0(inited + 32);
  sub_100030634();

  if (qword_100041B00 != -1)
  {
    swift_once();
  }

  v2 = sub_100030664();
  sub_1000089D8(v2, qword_100042D20);

  v3 = sub_100030654();
  v4 = sub_100030884();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = sub_100030B94();
    v8 = sub_10002B88C(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_100030694();
    v11 = sub_10002B88C(v9, v10, &v12);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s; UserInfo=%s", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10002702C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_100030664();
  sub_100008CC4(v5, a2);
  sub_1000089D8(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_100030674();
}

uint64_t sub_1000270A0(uint64_t a1)
{
  v2 = sub_100008944(&qword_1000426D0, &unk_1000345A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027108()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_1000426D8);
  v1 = sub_1000089D8(v0, qword_1000426D8);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100027208(void *a1, uint64_t a2, void (**a3)(void, void), void *a4, uint64_t *a5, unint64_t *a6)
{
  v58 = a4;
  v59 = a2;
  v10 = sub_100008944(&qword_1000426F0, "r");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v60 = (v56 - v12);
  if (qword_100041B20 != -1)
  {
    swift_once();
  }

  v13 = sub_100030664();
  v14 = sub_1000089D8(v13, qword_1000426D8);
  v15 = a1;
  v16 = sub_100030654();
  v17 = sub_100030884();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v57 = a3;
    v56[0] = v19;
    v62 = v19;
    *v18 = 136315138;
    v20 = [v15 temporalEventTrigger];
    v56[1] = v14;
    v21 = a6;
    v22 = a5;
    v23 = v20;
    v61 = v20;
    sub_100008944(&qword_100042700, &unk_1000346B0);
    v24 = sub_100030A94();
    v26 = v25;

    a5 = v22;
    a6 = v21;
    v27 = sub_10002B88C(v24, v26, &v62);

    *(v18 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "SiriKit asked for resolving temporalEventTrigger {temporalEventTrigger: %s}", v18, 0xCu);
    sub_100008D70(v56[0]);
    a3 = v57;
  }

  v28 = v60;
  v29 = [v15 temporalEventTrigger];
  if (!v29)
  {
    v39 = sub_100030654();
    v40 = sub_100030884();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, ".temporalEventTrigger is nil {result: .notRequired}", v41, 2u);
    }

    sub_100008D28(0, a6, a5);
    v30 = [swift_getObjCClassFromMetadata() notRequired];
    (a3)[2](a3, v30);
    goto LABEL_27;
  }

  v30 = v29;
  v31 = v59 + *v58;
  sub_100030944();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = *v28;
    v43 = sub_100030654();
    v44 = sub_100030884();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, ".temporalEventTrigger resolved to a valid date {result: .success(with: %@)}", v45, 0xCu);
      sub_1000169BC(v46);
    }

    sub_100008D28(0, a6, a5);
    v48 = [swift_getObjCClassFromMetadata() successWithResolvedTemporalEventTrigger:v42];
    (a3)[2](a3, v48);

    goto LABEL_26;
  }

  v32 = sub_100030924();
  v33 = (*(*(v32 - 8) + 88))(v28, v32);
  if (v33 == enum case for INTemporalEventTrigger.ValidationError.timeInPast(_:))
  {
    v34 = sub_100030654();
    v35 = sub_100030884();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, ".temporalEventTrigger would create a due date in the past {result: .unsupported(.timeInPast)}", v36, 2u);
    }

    v37 = *a5;
    v38 = [objc_opt_self() unsupportedForReason:1];
LABEL_25:
    v48 = v38;
    (a3)[2](a3, v48);
LABEL_26:

LABEL_27:
    return;
  }

  if (v33 == enum case for INTemporalEventTrigger.ValidationError.invalidRecurrence(_:))
  {
    v49 = sub_100030654();
    v50 = sub_100030884();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, ".temporalEventTrigger.recurrenceRule is not supported {result: .unsupported(.invalidRecurrence)}", v51, 2u);
    }

    v52 = *a5;
    v38 = [objc_opt_self() unsupportedForReason:2];
    goto LABEL_25;
  }

  if (v33 == enum case for INTemporalEventTrigger.ValidationError.noDate(_:))
  {
    v53 = sub_100030654();
    v54 = sub_100030884();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, ".temporalEventTrigger could not be converted into a dueDate, ignoring it {result: .notRequired}", v55, 2u);
    }

    sub_100008D28(0, a6, a5);
    v38 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  _Block_release(a3);
  sub_100030D34();
  __break(1u);
}

uint64_t sub_1000278B4()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042710);
  v1 = sub_1000089D8(v0, qword_100042710);
  if (qword_100041B08 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v14 = a5(v13);
  v15 = swift_allocObject();
  v15[2] = sub_10000D764;
  v15[3] = v12;
  v15[4] = a7;
  v15[5] = a5;
  v15[6] = a6;
  v18[4] = sub_100027E1C;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100027E2C;
  v18[3] = &unk_10003DD90;
  v16 = _Block_copy(v18);
  v17 = a7;

  [v14 requestAccessForEntityType:0 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_100027AC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100027AFC(char a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100041B28 != -1)
    {
      swift_once();
    }

    v7 = sub_100030664();
    sub_1000089D8(v7, qword_100042710);
    swift_errorRetain();
    v8 = sub_100030654();
    v9 = sub_100030864();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_100030D64();
      v14 = sub_10002B88C(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error requesting permission for CNContactStore {error: %s}", v10, 0xCu);
      sub_100008D70(v11);
    }

    a3(0);
  }

  else if (a1)
  {
    v15 = a6();
    v20 = sub_100030A44();

    a3(v20);
  }

  else
  {
    if (qword_100041B28 != -1)
    {
      swift_once();
    }

    v16 = sub_100030664();
    sub_1000089D8(v16, qword_100042710);
    v17 = sub_100030654();
    v18 = sub_100030864();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Permission not granted for accessing CNContactStore {granted: false}", v19, 2u);
    }

    a3(0);
  }
}

uint64_t sub_100027DD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100027E2C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100027EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100027EBC()
{
  v5 = *v0;
  v1 = sub_100008944(&qword_100041E68, &qword_1000340C0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_100030624();
}

void *_s25RemindersIntentsExtension32TTRContactRepresentationResolverVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for TTRContactRepresentationResolver(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t assignWithTake for TTRContactRepresentationResolver(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100028084(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = &_swiftEmptyArrayStorage;
    sub_100030BF4();
    v9 = *(sub_100030354() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_100030BD4();
      v12 = v14[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1000281C8(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100030CE4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v16 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_100030BA4();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_100030BD4();
      v12 = v16[2];
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_100028370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v9[2] = &v10;
  v6 = sub_100028084(a4, v9, a1);
  sub_100008944(&qword_100042858, &qword_100034790);
  v9[3] = v6;
  sub_100008944(&qword_100042860, &unk_100034798);
  sub_10002C39C();
  sub_1000305D4();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_1000305B4();
  sub_1000305F4();
}

uint64_t sub_10002848C()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042728);
  v1 = sub_1000089D8(v0, qword_100042728);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100028554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100030354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v25 = v5;
    v26 = a2;
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v28 = enum case for REMSearchCriterion.listID(_:);
    v17 = (v14 - 8);
    v18 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v27 = *(v14 + 56);
    while (1)
    {
      v15(v12, v18, v4, v10);
      (v15)(v8, v12, v4);
      v19 = (*(v14 + 72))(v8, v4);
      if (v19 == v28)
      {
        break;
      }

      v20 = *v17;
      (*v17)(v8, v4);
      v20(v12, v4);
      v18 += v27;
      if (!--v13)
      {
        v21 = 1;
        v5 = v25;
        a2 = v26;
        return (*(v5 + 56))(a2, v21, 1, v4);
      }
    }

    v5 = v25;
    (*(v25 + 96))(v8, v4);

    v22 = *(sub_100008944(&qword_100041C30, &qword_100033DD8) + 48);
    v23 = sub_100030344();
    (*(*(v23 - 8) + 8))(v8 + v22, v23);
    a2 = v26;
    (*(v5 + 32))(v26, v12, v4);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 56))(a2, v21, 1, v4);
}

void sub_1000287D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (sub_10002CA2C(a1))
  {
    if (qword_100041B30 != -1)
    {
      swift_once();
    }

    v8 = sub_100030664();
    sub_1000089D8(v8, qword_100042728);

    v9 = sub_100030654();
    v10 = sub_100030884();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      sub_100030354();
      v13 = sub_1000307A4();
      v15 = sub_10002B88C(v13, v14, &v32);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Querying Spotlight for reminders {criteria: %s}", v11, 0xCu);
      sub_100008D70(v12);
    }

    sub_100030254();
    sub_100008944(&qword_100042870, &qword_1000347A8);
    v16 = sub_100030374();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100033CF0;
    (*(v17 + 104))(v20 + v19, enum case for REMSearchableItemType.reminder(_:), v16);
    sub_100008D28(0, &qword_1000421C0, OS_dispatch_queue_ptr);
    v21 = sub_100030904();
    sub_100030244();

    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = v4;
    v22[4] = a2;
    v22[5] = a3;

    v23 = sub_1000305B4();
    sub_1000305F4();

    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = a3;

    v31 = sub_1000305B4();
    sub_100030604();
  }

  else
  {
    if (qword_100041B30 != -1)
    {
      swift_once();
    }

    v25 = sub_100030664();
    sub_1000089D8(v25, qword_100042728);
    v26 = sub_100030654();
    v27 = sub_100030884();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Criteria does not contain a text search, using fallback data source", v28, 2u);
    }

    v29 = v4[7];
    v30 = v4[8];
    sub_100008A10(v4 + 4, v29);
    (*(v30 + 24))(a1, a2, a3, v29, v30);
  }
}

uint64_t sub_100028C74(uint64_t *a1, unint64_t a2, void *a3, void (*a4)(unint64_t), unint64_t a5)
{
  v6 = v5;
  v99 = a4;
  v11 = sub_100030344();
  v94 = *(v11 - 1);
  v12 = v94[8];
  __chkstk_darwin(v11);
  v91 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v89 - v15;
  __chkstk_darwin(v16);
  v104 = &v89 - v17;
  v18 = sub_100008944(&qword_100041BB8, &qword_100033D80);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v89 - v20;
  v103 = sub_100030354();
  v106 = *(v103 - 8);
  v22 = *(v106 + 64);
  __chkstk_darwin(v103);
  v96 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v98 = &v89 - v25;
  v26 = *a1;

  v28 = sub_10002BFB4(v27);

  if (qword_100041B30 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v29 = sub_100030664();
    v30 = sub_1000089D8(v29, qword_100042728);

    v97 = v30;
    v31 = sub_100030654();
    v32 = sub_100030884();

    v33 = os_log_type_enabled(v31, v32);
    v105 = v11;
    v100 = a3;
    v101 = a2;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v34 = 134218498;
      v92 = v6;
      v95 = a5;
      if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
      {
        v35 = sub_100030CE4();
      }

      else
      {
        v35 = *(v28 + 16);
      }

      *(v34 + 4) = v35;

      *(v34 + 12) = 2080;
      v36 = sub_1000307A4();
      v38 = sub_10002B88C(v36, v37, &v107);

      *(v34 + 14) = v38;
      *(v34 + 22) = 2080;
      sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
      v39 = sub_1000307A4();
      v41 = sub_10002B88C(v39, v40, &v107);

      *(v34 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Got %ld reminders from Spotlight {criteria: %s, reminderIDs: %s}", v34, 0x20u);
      swift_arrayDestroy();

      v6 = v92;
      a5 = v95;
      a3 = v100;
      v11 = v105;
    }

    else
    {
    }

    v42 = a3[2];
    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    isa = sub_100030784().super.isa;

    v107 = 0;
    v44 = [v42 fetchRemindersWithObjectIDs:isa error:&v107];

    v45 = v107;
    if (!v44)
    {
      v50 = v107;
      sub_10002FE24();

      return swift_willThrow();
    }

    sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
    sub_100012784();
    v46 = sub_100030684();
    v47 = v45;

    v28 = sub_10002BE34(v46);

    v48 = v101;
    sub_100028554(v101, v21);
    a3 = v106;
    v49 = v103;
    if ((*(v106 + 48))(v21, 1, v103) == 1)
    {
      sub_10002CD00(v21);
      goto LABEL_40;
    }

    v52 = v98;
    (a3[4])();
    v53 = v96;
    (a3[2])(v96, v52, v49);
    if ((a3[11])(v53, v49) != enum case for REMSearchCriterion.listID(_:))
    {
      v69 = a3[1];
      v69(v52, v49);
      v69(v53, v49);
      goto LABEL_40;
    }

    v95 = a5;
    (a3[12])(v53, v49);
    v102 = *v53;
    v54 = sub_100008944(&qword_100041C30, &qword_100033DD8);
    v55 = v53;
    v56 = v94;
    v21 = v104;
    (v94[4])(v104, v55 + *(v54 + 48), v11);
    v57 = v93;
    (v56[13])(v93, enum case for REMSearchCriterion.Inclusion.includeForSiri(_:), v11);
    v58 = sub_100030334();
    v59 = v56[1];
    v96 = (v56 + 1);
    v93 = v59;
    (v59)(v57, v11);
    if ((v58 & 1) == 0)
    {
      break;
    }

    v60 = sub_100030654();
    v61 = sub_100030884();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Criteria had list id, filtering further", v62, 2u);
    }

    v92 = v6;

    v107 = _swiftEmptyArrayStorage;
    if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
    {
      v63 = sub_100030CE4();
      if (!v63)
      {
LABEL_39:

        (v93)(v21, v11);
        (a3[1])(v98, v103);
        v28 = v107;
        a5 = v95;
        v48 = v101;
        goto LABEL_40;
      }
    }

    else
    {
      v63 = *(v28 + 16);
      if (!v63)
      {
        goto LABEL_39;
      }
    }

    a2 = 0;
    a5 = v28 & 0xC000000000000001;
    while (1)
    {
      if (a5)
      {
        v65 = sub_100030BA4();
      }

      else
      {
        if (a2 >= *(v28 + 16))
        {
          goto LABEL_35;
        }

        v65 = *(v28 + 8 * a2 + 32);
      }

      v11 = v65;
      a3 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      sub_100008D28(0, &qword_100042888, NSObject_ptr);
      v6 = [v11 list];
      v66 = [v6 objectID];

      v67 = sub_100030A64();
      if (v67)
      {
        sub_100030BD4();
        v68 = v107[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      else
      {
      }

      v21 = v104;
      v11 = v105;
      ++a2;
      v64 = a3 == v63;
      a3 = v106;
      if (v64)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v70 = v91;
  (v56[2])(v91, v21, v11);
  v71 = sub_100030654();
  v72 = sub_100030874();
  v73 = os_log_type_enabled(v71, v72);
  a5 = v95;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v107 = v94;
    *v74 = 136315138;
    sub_10002CD68();
    v90 = v71;
    v75 = sub_100030D14();
    v77 = v76;
    v78 = v70;
    v79 = v93;
    (v93)(v78, v11);
    v80 = sub_10002B88C(v75, v77, &v107);

    *(v74 + 4) = v80;
    v81 = v90;
    _os_log_impl(&_mh_execute_header, v90, v72, "Called with %s, but should only be .includeForSiri in TTRIntentsHandlerSpotlightDataSource.", v74, 0xCu);
    sub_100008D70(v94);

    v48 = v101;

    (v79)(v104, v105);
  }

  else
  {

    v82 = v93;
    (v93)(v70, v11);
    (v82)(v21, v11);
  }

  (*(v106 + 8))(v98, v103);
LABEL_40:
  if (v28 >> 62)
  {
    if (sub_100030CE4())
    {
      goto LABEL_42;
    }
  }

  else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    v99(v28);
  }

  v83 = v48;

  v84 = sub_100030654();
  v85 = sub_100030884();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v84, v85, "Consulting fallbackDataSource since Spotlight result is empty.", v86, 2u);
  }

  v87 = v100[7];
  v88 = v100[8];
  sub_100008A10(v100 + 4, v87);
  return (*(v88 + 24))(v83, v99, a5, v87, v88);
}

uint64_t sub_1000297F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100042728);

  swift_errorRetain();
  v5 = sub_100030654();
  v6 = sub_100030864();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    sub_100030354();
    v8 = sub_1000307A4();
    v10 = sub_10002B88C(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_100030D64();
    v13 = sub_10002B88C(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error matching reminders from Spotlight {criteria: %s, error: %s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  return a3(_swiftEmptyArrayStorage);
}

void sub_1000299E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) < 2uLL)
  {
    v9 = v3;
    if (qword_100041B30 != -1)
    {
      swift_once();
    }

    v10 = sub_100030664();
    sub_1000089D8(v10, qword_100042728);

    v11 = sub_100030654();
    v12 = sub_100030884();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      sub_100030354();
      v15 = sub_1000307A4();
      v17 = sub_10002B88C(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Querying Spotlight for lists {criteria: %s}", v13, 0xCu);
      sub_100008D70(v14);
    }

    sub_100030254();
    sub_100008944(&qword_100042870, &qword_1000347A8);
    v18 = sub_100030374();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100033CF0;
    (*(v19 + 104))(v22 + v21, enum case for REMSearchableItemType.list(_:), v18);
    sub_100008D28(0, &qword_1000421C0, OS_dispatch_queue_ptr);
    v23 = sub_100030904();
    sub_100030244();

    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v9;
    v24[4] = a2;
    v24[5] = a3;

    v25 = sub_1000305B4();
    sub_1000305F4();

    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = a2;
    v26[4] = a3;

    v27 = sub_1000305B4();
    sub_100030604();
  }

  else
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = a1;

    sub_100028370(v8, sub_10002C5C4, v7, sub_10002C368);
  }
}

uint64_t sub_100029E30(unint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = sub_1000303E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D8E0(a5, a1);

  sub_1000303C4();
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100029F40(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v51 = a3;
  v10 = sub_1000303E4();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;

  v15 = sub_10002BFB4(v14);

  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v16 = sub_100030664();
  v17 = sub_1000089D8(v16, qword_100042728);

  v47 = v17;
  v18 = sub_100030654();
  v19 = sub_100030884();

  if (os_log_type_enabled(v18, v19))
  {
    v45 = a4;
    v20 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v20 = 134218498;
    v46 = a5;
    v44 = v5;
    if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      v21 = sub_100030CE4();
    }

    else
    {
      v21 = *(v15 + 16);
    }

    *(v20 + 4) = v21;

    *(v20 + 12) = 2080;
    sub_100030354();
    v22 = a2;
    v23 = sub_1000307A4();
    v25 = sub_10002B88C(v23, v24, &v52);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    v26 = sub_1000307A4();
    v28 = sub_10002B88C(v26, v27, &v52);

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Got %ld lists from Spotlight {criteria: %s, listIDs: %s}", v20, 0x20u);
    swift_arrayDestroy();

    a4 = v45;
    a5 = v46;
  }

  else
  {
    v22 = a2;
  }

  v29 = v51[2];
  sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
  isa = sub_100030784().super.isa;

  v52 = 0;
  v31 = [v29 fetchListsWithObjectIDs:isa error:&v52];

  v32 = v52;
  if (v31)
  {
    sub_100008D28(0, &qword_100041F48, REMList_ptr);
    sub_100012784();
    v33 = sub_100030684();
    v34 = v32;

    if ((v33 & 0xC000000000000001) != 0)
    {
      v35 = v22;
      if (sub_100030C84())
      {
LABEL_12:
        sub_10002BEF4(v33);

        v36 = v48;
        sub_1000303C4();
        a4(v36);
        return (*(v49 + 8))(v36, v50);
      }
    }

    else
    {
      v35 = v22;
      if (*(v33 + 16))
      {
        goto LABEL_12;
      }
    }

    v39 = sub_100030654();
    v40 = sub_100030884();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Consulting fallbackDataSource for CSL or non-Spotlight-indexed list", v41, 2u);
    }

    v42 = v51[7];
    v43 = v51[8];
    sub_100008A10(v51 + 4, v42);
    return (*(v43 + 32))(v35, a4, a5, v42, v43);
  }

  else
  {
    v38 = v52;
    sub_10002FE24();

    return swift_willThrow();
  }
}

uint64_t sub_10002A450(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = sub_1000303E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v11 = sub_100030664();
  sub_1000089D8(v11, qword_100042728);

  swift_errorRetain();
  v12 = sub_100030654();
  v13 = sub_100030864();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[1] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = a3;
    v26 = v16;
    *v15 = 136315394;
    sub_100030354();
    v17 = sub_1000307A4();
    v19 = sub_10002B88C(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_100030D64();
    v22 = sub_10002B88C(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Error matching lists from Spotlight {criteria: %s, error: %s}", v15, 0x16u);
    swift_arrayDestroy();
    a3 = v25;
  }

  sub_1000303C4();
  a3(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10002A6F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = sub_100030354();
  v64 = *(v68 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v68);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v51 - v9);
  result = swift_allocObject();
  v69 = result;
  v70 = _swiftEmptyArrayStorage;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_100030CE4();
    v12 = result;
    v52 = a2;
    v53 = a3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_31:
    v45 = _swiftEmptyArrayStorage;
    v46 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_32;
    }

LABEL_29:
    v47 = swift_allocObject();
    v48 = v53;
    v47[2] = v54;
    v47[3] = a1;
    v47[4] = v52;
    v47[5] = v48;
    v47[6] = v46;
    v47[7] = v69;

    sub_100028370(v45, sub_10002C174, v47, sub_10002C368);
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = a2;
  v53 = a3;
  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = a1 & 0xC000000000000001;
    v60 = enum case for REMStringMatchingStyle.prefix(_:);
    v59 = enum case for REMSearchCriterion.textualField(_:);
    v65 = v64 + 32;
    v66 = (v64 + 104);
    v57 = 0x8000000100034940;
    v56 = enum case for REMSearchableListType.grocery(_:);
    v67 = _swiftEmptyArrayStorage;
    v55 = enum case for REMSearchCriterion.listType(_:);
    v62 = v12;
    v63 = a1;
    v61 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v15 = sub_100030BA4();
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = sub_100030834();
      if (v17)
      {

        v18 = v16;
        sub_100030774();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000307B4();
        }

        sub_1000307C4();

        v67 = v70;
      }

      else
      {
        v19 = [v16 title];
        v20 = [v19 spokenPhrase];

        v21 = sub_1000306F4();
        v23 = v22;

        v24 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
        *v10 = v21;
        v10[1] = v23;
        v25 = sub_100030474();
        (*(*(v25 - 8) + 104))(v10 + v24, v60, v25);
        v26 = *v66;
        (*v66)(v10, v59, v68);
        v27 = *(v69 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10002B628(0, *(v27 + 2) + 1, 1, v27, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
          *(v69 + 16) = v27;
        }

        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        if (v29 >= v28 >> 1)
        {
          v27 = sub_10002B628(v28 > 1, v29 + 1, 1, v27, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
        }

        *(v27 + 2) = v29 + 1;
        v30 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v31 = *(v64 + 72);
        v32 = *(v64 + 32);
        v32(&v27[v30 + v31 * v29], v10, v68);
        *(v69 + 16) = v27;
        v33 = [v16 title];
        v34 = [v33 vocabularyIdentifier];

        if (v34)
        {
          v35 = sub_1000306F4();
          v37 = v36;

          if (v35 == 0xD000000000000011 && v57 == v37)
          {

LABEL_23:
            v39 = sub_100030394();
            v40 = v58;
            (*(*(v39 - 8) + 104))(v58, v56, v39);
            v26(v40, v55, v68);
            v41 = *(v69 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_10002B628(0, *(v41 + 2) + 1, 1, v41, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
              *(v69 + 16) = v41;
            }

            v43 = *(v41 + 2);
            v42 = *(v41 + 3);
            v14 = v61;
            if (v43 >= v42 >> 1)
            {
              v41 = sub_10002B628(v42 > 1, v43 + 1, 1, v41, &qword_100041C28, &qword_100033DD0, &type metadata accessor for REMSearchCriterion);
              *(v69 + 16) = v41;
            }

            *(v41 + 2) = v43 + 1;
            v32(&v41[v30 + v43 * v31], v58, v68);
            *(v69 + 16) = v41;
            v12 = v62;
            a1 = v63;
            goto LABEL_6;
          }

          v38 = sub_100030D44();

          if (v38)
          {
            goto LABEL_23;
          }
        }

        v12 = v62;
        a1 = v63;
        v14 = v61;
      }

LABEL_6:
      if (v12 == ++v13)
      {
        v45 = *(v69 + 16);
        v46 = v67;
        if (v45[2])
        {
          goto LABEL_29;
        }

LABEL_32:

        v49 = v54[7];
        v50 = v54[8];
        sub_100008A10(v54 + 4, v49);
        (*(v50 + 40))(a1, v52, v53, v49, v50);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002AE5C(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    v19 = a4;
    v20 = a3;
    v21 = sub_100030CE4();
    a3 = v20;
    a4 = v19;
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_3:
    if (a2 >> 62)
    {
      v22 = a4;
      v23 = a3;
      v24 = sub_100030CE4();
      a3 = v23;
      a4 = v22;
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v25 = a6;
    v26 = a3[7];
    v27 = a3[8];
    v28 = a4;
    sub_100008A10(a3 + 4, v26);
    return (*(v27 + 40))(v28, a5, v25, v26, v27);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_5:
  v14 = a3[7];
  v15 = a3[8];
  sub_100008A10(a3 + 4, v14);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(v15 + 40);

  v17(a7, sub_10002C540, v16, v14, v15);
}

uint64_t sub_10002B03C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v20 = a5;
  v8 = sub_1000303E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000303D4();
  v22 = a2;

  sub_10000CEBC(v13);
  v14 = v22;
  swift_beginAccess();
  v15 = *(a3 + 16);

  sub_10000D8E0(v16, v14);

  v17 = sub_1000303B4();
  v21 = a4;

  sub_10000CEA4(v17);
  sub_1000303C4();
  v20(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10002B1D4()
{
  sub_100008D70((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10002B240(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 64);
  sub_100008A10((*v1 + 32), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_10002B30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 56);
  v10 = *(*v4 + 64);
  sub_100008A10((*v4 + 32), v9);
  return (*(v10 + 56))(a1, a2, a3, a4, v9, v10);
}

uint64_t sub_10002B394()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  sub_100008A10((*v0 + 32), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_10002B3EC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  sub_100008A10((*v2 + 32), v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t sub_10002B45C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  sub_100008A10((*v2 + 32), v5);
  return (*(v6 + 88))(a1, a2, v5, v6);
}

char *sub_10002B4F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008944(&qword_1000425A8, &qword_1000344D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10002B628(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100008944(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10002B804(uint64_t a1, uint64_t a2)
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

  sub_100008944(&unk_100041EB0, &unk_1000340E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10002B88C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002B958(v11, 0, 0, 1, a1, a2);
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
    sub_10002C5D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D70(v11);
  return v7;
}

unint64_t sub_10002B958(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002BA64(a5, a6);
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
    result = sub_100030BC4();
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

char *sub_10002BA64(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002BAB0(a1, a2);
  sub_10002BBE0(&off_10003D2A0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002BAB0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10002BCCC(v5, 0);
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

  result = sub_100030BC4();
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
        v10 = sub_100030744();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002BCCC(v10, 0);
        result = sub_100030B84();
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

uint64_t sub_10002BBE0(uint64_t result)
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

  result = sub_10002BD40(result, v12, 1, v3);
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

void *sub_10002BCCC(uint64_t a1, uint64_t a2)
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

  sub_100008944(&qword_100042878, &qword_1000347B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002BD40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008944(&qword_100042878, &qword_1000347B0);
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

void *sub_10002BE34(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100030C84();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10002B804(v2, 0);

    v1 = sub_10002C62C(&v5, v3 + 4, v2, v1, &unk_100041EC0, REMReminder_ptr);
    sub_10002C828();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10002BEF4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100030C84();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10002B804(v2, 0);

    v1 = sub_10002C62C(&v5, v3 + 4, v2, v1, &qword_100041F48, REMList_ptr);
    sub_10002C828();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_10002BFB4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100030C84();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10002B804(v2, 0);

    v1 = sub_10002C830(&v5, v3 + 4, v2, v1);
    sub_10002C828();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t (*sub_10002C064(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100030BA4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10002CE68;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C0E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C11C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

void (*sub_10002C184(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100030BA4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10002C204;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C20C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_100008944(&qword_100041C28, &qword_100033DD0);
  v6 = sub_100030354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100033CF0;
  (*(v7 + 16))(v10 + v9, a1, v6);
  v11 = sub_100008944(&qword_100042858, &qword_100034790);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_100030624();

  *a3 = v14;
  return result;
}

unint64_t sub_10002C39C()
{
  result = qword_100042868;
  if (!qword_100042868)
  {
    sub_100008C7C(&qword_100042860, &unk_100034798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042868);
  }

  return result;
}

uint64_t sub_10002C400()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = *a5;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_1000299E4(a6, sub_100012824, v10);
}

uint64_t sub_10002C4F0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002C584()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C5D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002C62C(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_100030C34();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_100030CB4())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_100008D28(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 56) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

uint64_t sub_10002C830(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_100030C34();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_100030CC4())
      {
        goto LABEL_31;
      }

      sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_10002CA2C(uint64_t a1)
{
  v2 = sub_100030354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v21 = v3;
  v13 = *(v3 + 16);
  v12 = v3 + 16;
  v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v22 = *(v12 + 56);
  v23 = v13;
  v15 = enum case for REMSearchCriterion.textualField(_:);
  while (1)
  {
    v23(v10, v14, v2, v8);
    (*(v12 + 16))(v6, v10, v2);
    if ((*(v12 + 72))(v6, v2) == v15)
    {
      break;
    }

    (*(v12 - 8))(v6, v2);
    v14 += v22;
    if (!--v11)
    {
      return 0;
    }
  }

  (*(v21 + 96))(v6, v2);
  v17 = *(v6 + 1);

  v18 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
  v19 = sub_100030474();
  (*(*(v19 - 8) + 8))(&v6[v18], v19);
  return 1;
}

uint64_t sub_10002CC4C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002CCB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002CD00(uint64_t a1)
{
  v2 = sub_100008944(&qword_100041BB8, &qword_100033D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002CD68()
{
  result = qword_100042880;
  if (!qword_100042880)
  {
    sub_100030344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042880);
  }

  return result;
}

uint64_t sub_10002CDF4(void (*a1)(char *), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *v5;

  sub_10001238C(v6, v7, a1, a2);
}

uint64_t sub_10002CE84(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100030BA4();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_100030CE4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10002CFAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = swift_allocObject();
  *(v35 + 16) = _swiftEmptyArrayStorage;
  v4 = (v35 + 16);
  result = swift_allocObject();
  v6 = result;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_100030CE4();
    v7 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = _swiftEmptyArrayStorage;
  v36 = v6;
  v37 = a1 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v12 = sub_100030BA4();
    }

    else
    {
      v12 = *(a1 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = sub_1000309A4();
    if (v14)
    {
      v11 = v14;
      sub_100030774();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = a1;
        v26 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000307B4();
        a1 = v25;
        v9 = v37;
      }

      sub_1000307C4();
    }

    else
    {
      v15 = a1;
      v16 = [v13 title];
      v17 = [v16 spokenPhrase];

      v18 = sub_1000306F4();
      v20 = v19;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 16) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_10002B4F4(0, *(v10 + 2) + 1, 1, v10);
        *(v6 + 16) = v10;
      }

      v23 = *(v10 + 2);
      v22 = *(v10 + 3);
      if (v23 >= v22 >> 1)
      {
        v10 = sub_10002B4F4((v22 > 1), v23 + 1, 1, v10);
      }

      *(v10 + 2) = v23 + 1;
      v24 = &v10[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v20;
      v6 = v36;
      *(v36 + 16) = v10;
      a1 = v15;
      v9 = v37;
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_19:
  v27 = swift_allocObject();
  v27[2] = v35;
  v27[3] = v6;
  v27[4] = a2;
  v27[5] = a3;
  v28 = v34[6];
  v29 = v34[7];
  sub_100008A10(v34 + 3, v28);
  v30 = swift_allocObject();
  v30[2] = v34;
  v30[3] = sub_10002E3F4;
  v30[4] = v27;
  v31 = *(v29 + 8);

  v31(sub_100013C68, v30, v28, v29);
}

uint64_t sub_10002D30C()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042898);
  v1 = sub_1000089D8(v0, qword_100042898);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002D3D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002D488;
  v6[3] = &unk_10003E110;
  v4 = _Block_copy(v6);

  [v3 getDeliveredNotificationsWithCompletionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_10002D488(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100008D28(0, &qword_100042960, UNNotification_ptr);
  v3 = sub_100030794();

  v2(v3);
}

uint64_t sub_10002D50C(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v71 = a4;
  v72 = a3;
  v70 = a2;
  v5 = sub_100008944(&qword_100042958, &unk_100034850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v63 - v7;
  v9 = sub_100030434();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  v17 = sub_100008944(&unk_100041BC0, &qword_100033D88);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v63 - v19;
  v93 = sub_100030584();
  v82 = *(v93 - 8);
  v21 = *(v82 + 64);
  __chkstk_darwin(v93);
  v92 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v81 = &v63 - v24;
  if (a1 >> 62)
  {
LABEL_34:
    v25 = sub_100030CE4();
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_3:
      v83 = v13;
      v84 = v16;
      v13 = 0;
      v90 = a1 & 0xFFFFFFFFFFFFFF8;
      v91 = a1 & 0xC000000000000001;
      v87 = (v10 + 48);
      v79 = (v10 + 16);
      v80 = (v10 + 32);
      v78 = (v10 + 88);
      v77 = enum case for RDUserNotificationType.reminderAlarm(_:);
      v75 = enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:);
      v73 = enum case for RDUserNotificationType.caldavSharedList(_:);
      v69 = enum case for RDUserNotificationType.assignmentNotification(_:);
      v68 = enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:);
      v67 = enum case for RDUserNotificationType.dueDateDeltaAlarm(_:);
      v76 = (v10 + 8);
      v86 = (v82 + 56);
      v74 = (v10 + 96);
      v26 = (v82 + 32);
      v85 = (v82 + 48);
      v66 = enum case for RDUserNotificationType.todayNotification(_:);
      v65 = enum case for RDUserNotificationType.todayNotificationBadge(_:);
      v64 = enum case for RDUserNotificationType.beforeFirstUnlock(_:);
      v94 = _swiftEmptyArrayStorage;
      v88 = v25;
      v89 = a1;
      while (1)
      {
        if (v91)
        {
          v27 = sub_100030BA4();
        }

        else
        {
          if (v13 >= *(v90 + 16))
          {
            goto LABEL_33;
          }

          v27 = *(a1 + 8 * v13 + 32);
        }

        a1 = v27;
        v28 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v29 = [v27 request];
        v30 = [v29 content];

        v31 = v30;
        sub_100030424();
        if ((*v87)(v8, 1, v9) == 1)
        {
          break;
        }

        v16 = v84;
        (*v80)(v84, v8, v9);
        v32 = v83;
        (*v79)(v83, v16, v9);
        v33 = (*v78)(v32, v9);
        if (v33 != v77)
        {
          if (v33 == v75 || v33 == v73 || v33 == v69 || v33 == v68 || v33 == v67)
          {
            v16 = v76;
            v35 = *v76;
            (*v76)(v84, v9);

            v35(v83, v9);
          }

          else
          {
            if (v33 != v66 && v33 != v65 && v33 != v64)
            {
              result = sub_100030D34();
              __break(1u);
              return result;
            }

            (*v76)(v84, v9);
          }

          goto LABEL_20;
        }

        (*v76)(v16, v9);

        (*v74)(v32, v9);
        v10 = v93;
        (*v26)(v20, v32, v93);
        v34 = 0;
LABEL_21:
        (*v86)(v20, v34, 1, v10);

        if ((*v85)(v20, 1, v10) == 1)
        {
          sub_100008BB8(v20, &unk_100041BC0, &qword_100033D88);
        }

        else
        {
          v36 = *v26;
          v16 = v81;
          (*v26)(v81, v20, v10);
          v36(v92, v16, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_10002B600(0, *(v94 + 2) + 1, 1, v94);
          }

          v38 = *(v94 + 2);
          v37 = *(v94 + 3);
          v10 = v38 + 1;
          if (v38 >= v37 >> 1)
          {
            v94 = sub_10002B600(v37 > 1, v38 + 1, 1, v94);
          }

          v39 = v93;
          v40 = v94;
          *(v94 + 2) = v10;
          v36(&v40[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v38], v92, v39);
        }

        ++v13;
        a1 = v89;
        if (v28 == v88)
        {
          goto LABEL_36;
        }
      }

      sub_100008BB8(v8, &qword_100042958, &unk_100034850);
LABEL_20:
      v34 = 1;
      v10 = v93;
      goto LABEL_21;
    }
  }

  v94 = _swiftEmptyArrayStorage;
LABEL_36:
  v41 = *(v70 + 16);
  v42 = v94;
  v43 = sub_100030A84();
  v44 = v43;
  v45 = v43 >> 62;
  if (v43 >> 62)
  {
    v46 = sub_100030CE4();
  }

  else
  {
    v46 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v46 != *(v42 + 2))
  {
    if (qword_100041B38 != -1)
    {
      swift_once();
    }

    v47 = sub_100030664();
    sub_1000089D8(v47, qword_100042898);

    v48 = sub_100030654();
    v49 = sub_100030864();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      if (v45)
      {
        v51 = sub_100030CE4();
      }

      else
      {
        v51 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v50 + 4) = v51;

      *(v50 + 12) = 2048;
      *(v50 + 14) = *(v42 + 2);

      _os_log_impl(&_mh_execute_header, v48, v49, "Unable to fetch some reminders. reminders count doesn't match with reminderIDs count. {notificationIdentifiers.count: %ld, reminders.count: %ld}", v50, 0x16u);
    }

    else
    {
    }
  }

  if (qword_100041B38 != -1)
  {
    swift_once();
  }

  v52 = sub_100030664();
  sub_1000089D8(v52, qword_100042898);

  v53 = sub_100030654();
  v54 = sub_100030884();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v95 = v56;
    *v55 = 134218242;
    if (v45)
    {
      v57 = sub_100030CE4();
    }

    else
    {
      v57 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v55 + 4) = v57;

    *(v55 + 12) = 2080;
    v58 = sub_1000307A4();
    v60 = v59;

    v61 = sub_10002B88C(v58, v60, &v95);

    *(v55 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v53, v54, "Retrieved %ld reminders from notification center {notificationIdentifiers: %s}", v55, 0x16u);
    sub_100008D70(v56);
  }

  else
  {
  }

  v72(v44);
}

uint64_t sub_10002E0FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t))
{

  v8 = sub_10002E440(v7, (a2 + 16), (a3 + 16));

  if (qword_100041B38 != -1)
  {
    swift_once();
  }

  v9 = sub_100030664();
  sub_1000089D8(v9, qword_100042898);

  v10 = sub_100030654();
  v11 = sub_100030884();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 134218242;
    if (v8 >> 62)
    {
      v14 = sub_100030CE4();
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v14;

    *(v12 + 12) = 2080;
    sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
    v15 = sub_1000307A4();
    v17 = sub_10002B88C(v15, v16, &v19);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Got %ld matchingReminders matching searchTerms {matchingReminders: %s}", v12, 0x16u);
    sub_100008D70(v13);
  }

  else
  {
  }

  a4(v8);
}

uint64_t sub_10002E310()
{
  sub_100008D70((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10002E374()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E3AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E400()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10002E440(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v29 = a3;
  v6 = a1;
  v37 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100030CE4())
  {
    swift_beginAccess();
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v8 = 0;
    v32 = v6 & 0xFFFFFFFFFFFFFF8;
    v33 = v6 & 0xC000000000000001;
    v31 = v6 + 32;
    v27 = v6;
    v28 = a2;
    v26 = i;
    while (1)
    {
      if (v33)
      {
        v10 = sub_100030BA4();
      }

      else
      {
        if (v8 >= *(v32 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(v31 + 8 * v8);
      }

      v35 = v10;
      v11 = __OFADD__(v8, 1);
      v12 = v8 + 1;
      if (v11)
      {
        break;
      }

      v34 = v12;
      v13 = *a2;

      v14 = [v35 objectID];
      v36 = v14;
      __chkstk_darwin(v14);
      v25[2] = &v36;
      v15 = sub_10002CE84(sub_10002E748, v25, v13);

      if (v15)
      {
LABEL_5:
        sub_100030BD4();
        v9 = v37[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      else
      {
        v16 = *v29;
        v17 = *(*v29 + 16);
        if (v17)
        {
          v30 = v4;

          v6 = 0;
          v18 = (v16 + 40);
          v4 = v35;
          while (v6 < *(v16 + 16))
          {
            v19 = *(v18 - 1);
            v20 = *v18;

            v21 = [v4 titleAsString];
            if (v21)
            {
              v22 = v21;
              sub_1000306F4();
              a2 = v23;

              v38._countAndFlagsBits = v19;
              v38._object = v20;
              v4 = v35;
              LOBYTE(v22) = sub_100030714(v38);

              if (v22)
              {

                v4 = v30;
                v6 = v27;
                a2 = v28;
                i = v26;
                goto LABEL_5;
              }
            }

            else
            {
            }

            ++v6;
            v18 += 2;
            if (v17 == v6)
            {

              v4 = v30;
              v6 = v27;
              a2 = v28;
              i = v26;
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_6:
      v8 = v34;
      if (v34 == i)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10002E748(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
  return sub_100030A64() & 1;
}

uint64_t sub_10002E7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E7CC()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042968);
  v1 = sub_1000089D8(v0, qword_100042968);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002E894(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100041B40 != -1)
  {
    swift_once();
  }

  v7 = sub_100030664();
  sub_1000089D8(v7, qword_100042968);
  v8 = a1;
  v9 = sub_100030654();
  v10 = sub_100030884();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = a3;
    v13 = swift_slowAlloc();
    v70 = v13;
    *v11 = 136315138;
    v3 = [v8 contactEventTrigger];
    sub_100008944(&qword_100042990, "V");
    v14 = sub_100030A94();
    v16 = v15;

    v17 = sub_10002B88C(v14, v16, &v70);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v11, 0xCu);
    sub_100008D70(v13);
    a3 = v12;
  }

  v18 = [v8 contactEventTrigger];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v18 triggerContact];
  if (!v20)
  {

LABEL_17:
    v35 = sub_100030654();
    v36 = sub_100030884();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Got nil contactEventTrigger. {result: .notRequired}", v37, 2u);
    }

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v19 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v19);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v8 targetTask];
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  v24 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store);
  v25 = sub_1000309B4();

  if (!v25 || (v26 = [v25 account], v27 = objc_msgSend(v26, "capabilities"), v26, v25, !v27))
  {
LABEL_13:
    v31 = sub_100030654();
    v32 = sub_100030864();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v33, 2u);
    }

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v34 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v34);

    v19 = v34;
    goto LABEL_20;
  }

  if (![v27 supportsPersonTrigger])
  {
    v38 = sub_100030654();
    v39 = sub_100030884();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v40, 2u);
    }

    v41 = [objc_opt_self() unsupportedForReason:1];
    (*(a3 + 16))(a3, v41);

    v19 = v41;
    goto LABEL_20;
  }

  v28 = [v21 contactIdentifier];
  if (v28)
  {

    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100033D00;
    *(v29 + 32) = v21;
    v30 = v21;
  }

  else
  {
    v42 = [v21 alternatives];
    if (v42)
    {
      v43 = v42;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v29 = sub_100030794();
    }

    else
    {
      v29 = &_swiftEmptyArrayStorage;
    }
  }

  if (v29 >> 62)
  {
    v44 = sub_100030CE4();
    if (v44)
    {
      goto LABEL_29;
    }

LABEL_37:

    v48 = &_swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v44 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_37;
  }

LABEL_29:
  v68 = a3;
  v70 = &_swiftEmptyArrayStorage;
  sub_100030BF4();
  if (v44 < 0)
  {
    __break(1u);
LABEL_61:
    v67 = sub_100030BA4();
LABEL_57:
    v57.super.isa = v67;

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v58 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger:v57.super.isa];
    goto LABEL_58;
  }

  v45 = 0;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v46 = sub_100030BA4();
    }

    else
    {
      v46 = *(v29 + 8 * v45 + 32);
    }

    v47 = v46;
    ++v45;
    [objc_allocWithZone(INContactEventTrigger) initWithTriggerContact:v46];

    sub_100030BD4();
    v3 = v70[2];
    sub_100030C04();
    sub_100030C14();
    sub_100030BE4();
  }

  while (v44 != v45);

  v48 = v70;
  a3 = v68;
LABEL_38:
  if (v48 >> 62)
  {
    v49 = sub_100030CE4();
    if (v49 >= 2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49 >= 2)
    {
LABEL_40:

      v50 = sub_100030654();
      v51 = sub_100030884();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = v69;
        *v52 = 136315138;
        sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
        v53 = sub_1000307A4();
        v55 = sub_10002B88C(v53, v54, &v70);

        *(v52 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v50, v51, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v52, 0xCu);
        sub_100008D70(v69);
      }

      sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
      v57.super.isa = sub_100030784().super.isa;

      v58 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate:v57.super.isa];
LABEL_58:
      v66 = v58;

LABEL_59:
      (*(a3 + 16))(a3, v66);

LABEL_20:
      return;
    }
  }

  if (v49 != 1)
  {

    v63 = sub_100030654();
    v64 = sub_100030884();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Got 0 triggersToChoose {result: .unsupported}", v65, 2u);
    }

    sub_100008D28(0, &qword_100042998, INSetTaskAttributeContactEventTriggerResolutionResult_ptr);
    v66 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_59;
  }

  v59 = sub_100030654();
  v60 = sub_100030884();

  if (!os_log_type_enabled(v59, v60))
  {

    v61 = v48 & 0xC000000000000001;
    goto LABEL_54;
  }

  v3 = v27;
  v27 = v21;
  v21 = a3;
  v44 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v44 = 138412290;
  v61 = v48 & 0xC000000000000001;
  if ((v48 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v48 + 32); ; i = sub_100030BA4())
    {
      *(v44 + 4) = i;
      *a3 = i;
      _os_log_impl(&_mh_execute_header, v59, v60, "Got 1 triggersToChoose {result: .success(%@)}", v44, 0xCu);
      sub_1000169BC(a3);

      a3 = v21;
      v21 = v27;
      v27 = v3;
LABEL_54:
      if (v61)
      {
        break;
      }

      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v67 = *(v48 + 32);
        goto LABEL_57;
      }

      __break(1u);
LABEL_63:
      ;
    }

    goto LABEL_61;
  }

  __break(1u);
}

void sub_10002F344(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100041B40 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_100042968);
  v7 = a1;
  v8 = sub_100030654();
  v9 = sub_100030884();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v65 = v12;
    *v10 = 136315138;
    v3 = [v7 contactEventTrigger];
    sub_100008944(&qword_100042990, "V");
    v13 = sub_100030A94();
    v15 = v14;

    v16 = sub_10002B88C(v13, v15, &v65);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v10, 0xCu);
    sub_100008D70(v12);
    a3 = v11;
  }

  v17 = [v7 contactEventTrigger];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v19 = [v17 triggerContact];
  if (!v19)
  {

LABEL_12:
    v26 = sub_100030654();
    v27 = sub_100030884();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Got nil contactEventTrigger. {result: .notRequired}", v28, 2u);
    }

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v18 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v18);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = sub_10001E210(v7);
  if (!v21)
  {
    v29 = sub_100030654();
    v30 = sub_100030864();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v31, 2u);
    }

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v32 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v32);

    v18 = v32;
    goto LABEL_15;
  }

  v22 = v21;
  if (([v21 supportsPersonTrigger] & 1) == 0)
  {
    v33 = sub_100030654();
    v34 = sub_100030884();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v35, 2u);
    }

    v36 = [objc_opt_self() unsupportedForReason:1];
    (*(a3 + 16))(a3, v36);

    v18 = v36;
    goto LABEL_15;
  }

  v23 = [v20 contactIdentifier];
  if (v23)
  {

    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100033D00;
    *(v24 + 32) = v20;
    v25 = v20;
  }

  else
  {
    v37 = [v20 alternatives];
    if (v37)
    {
      v38 = v37;
      sub_100008D28(0, &qword_100042658, INPerson_ptr);
      v24 = sub_100030794();
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }
  }

  if (v24 >> 62)
  {
    v39 = sub_100030CE4();
    if (v39)
    {
      goto LABEL_27;
    }

LABEL_35:

    v43 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v39 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_35;
  }

LABEL_27:
  v63 = a3;
  v65 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  if (v39 < 0)
  {
    __break(1u);
LABEL_59:
    v62 = sub_100030BA4();
LABEL_55:
    v52.super.isa = v62;

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v53 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger:v52.super.isa];
    goto LABEL_56;
  }

  v40 = 0;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v41 = sub_100030BA4();
    }

    else
    {
      v41 = *(v24 + 8 * v40 + 32);
    }

    v42 = v41;
    ++v40;
    [objc_allocWithZone(INContactEventTrigger) initWithTriggerContact:v41];

    sub_100030BD4();
    v3 = v65[2];
    sub_100030C04();
    sub_100030C14();
    sub_100030BE4();
  }

  while (v39 != v40);

  v43 = v65;
  a3 = v63;
LABEL_36:
  if (v43 >> 62)
  {
    v44 = sub_100030CE4();
    if (v44 >= 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= 2)
    {
LABEL_38:

      v45 = sub_100030654();
      v46 = sub_100030884();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = v64;
        *v47 = 136315138;
        sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
        v48 = sub_1000307A4();
        v50 = sub_10002B88C(v48, v49, &v65);

        *(v47 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v45, v46, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v47, 0xCu);
        sub_100008D70(v64);
      }

      sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_100008D28(0, &qword_100042988, INContactEventTrigger_ptr);
      v52.super.isa = sub_100030784().super.isa;

      v53 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate:v52.super.isa];
LABEL_56:
      v61 = v53;

LABEL_57:
      (*(a3 + 16))(a3, v61);

LABEL_15:
      return;
    }
  }

  if (v44 != 1)
  {

    v58 = sub_100030654();
    v59 = sub_100030884();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Got 0 triggersToChoose {result: .unsupported}", v60, 2u);
    }

    sub_100008D28(0, &qword_100042980, INAddTasksContactEventTriggerResolutionResult_ptr);
    v61 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_57;
  }

  v54 = sub_100030654();
  v55 = sub_100030884();

  if (!os_log_type_enabled(v54, v55))
  {

    v56 = v43 & 0xC000000000000001;
    goto LABEL_52;
  }

  v3 = v22;
  v22 = v20;
  v20 = a3;
  v39 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v39 = 138412290;
  v56 = v43 & 0xC000000000000001;
  if ((v43 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v43 + 32); ; i = sub_100030BA4())
    {
      *(v39 + 4) = i;
      *a3 = i;
      _os_log_impl(&_mh_execute_header, v54, v55, "Got 1 triggersToChoose {result: .success(%@)}", v39, 0xCu);
      sub_1000169BC(a3);

      a3 = v20;
      v20 = v22;
      v22 = v3;
LABEL_52:
      if (v56)
      {
        break;
      }

      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v62 = *(v43 + 32);
        goto LABEL_55;
      }

      __break(1u);
LABEL_61:
      ;
    }

    goto LABEL_59;
  }

  __break(1u);
  sub_10002FD74();
}