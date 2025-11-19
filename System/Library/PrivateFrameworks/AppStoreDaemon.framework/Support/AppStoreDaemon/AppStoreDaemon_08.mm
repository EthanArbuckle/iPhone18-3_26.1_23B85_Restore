BOOL sub_100114C40(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = sub_1003F1F78(a1, a2);
  if (v13)
  {
    static Logger.appUsage.getter();
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v13;
      v19 = v18;
      v20 = v7;
      v21 = swift_slowAlloc();
      v43 = v21;
      *v17 = 136446466;
      v22 = _typeName(_:qualified:)();
      v24 = sub_1001AD0D8(v22, v23, &v43);
      v41 = v6;
      v25 = v24;

      *(v17 + 4) = v25;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v19 = v14;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s/%@] Launch history metadata imported", v17, 0x16u);
      sub_100005518(v19, &unk_10059C250);
      v13 = v42;

      sub_100005A00(v21);

      (*(v20 + 8))(v12, v41);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    static Logger.appUsage.getter();
    v27 = a3;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = 0;
      v32 = v31;
      v33 = v7;
      v34 = swift_slowAlloc();
      v43 = v34;
      *v30 = 136446466;
      v35 = _typeName(_:qualified:)();
      v41 = v6;
      v37 = sub_1001AD0D8(v35, v36, &v43);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v32 = v27;
      v38 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s/%@] Launch history metadata import failed", v30, 0x16u);
      sub_100005518(v32, &unk_10059C250);
      v13 = v42;

      sub_100005A00(v34);

      (*(v33 + 8))(v10, v41);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }

  return v13 != 0;
}

id sub_10011541C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchSyncResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LaunchSyncResult()
{
  result = qword_10059D840;
  if (!qword_10059D840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100115524()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001155CC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100116A84(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100115648(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_100115648(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10009FAD4(0, &qword_10059D850);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100115980(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10011575C(0, v2, 1, a1);
  }
}

void sub_10011575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v37);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v38 = *a4;
    v14 = v38 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v34 = v14;
    v35 = a3;
    v16 = *(v38 + 8 * a3);
    v33 = v15;
    v17 = v14;
    while (1)
    {
      v18 = *v17;
      v19 = v16;
      v20 = v18;
      v21 = sub_10038ADA4(v19);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = sub_10038ADA4(v20);
      if (!v23)
      {
        goto LABEL_14;
      }

      v24 = v23;
      v25 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v24) = static Date.> infix(_:_:)();
      v26 = *v13;
      v27 = v25;
      v28 = v37;
      (*v13)(v27, v37);
      v26(v12, v28);

      if (v24)
      {
        if (!v38)
        {
          goto LABEL_15;
        }

        v29 = *v17;
        v16 = *(v17 + 8);
        *v17 = v16;
        *(v17 + 8) = v29;
        v17 -= 8;
        if (!__CFADD__(v15++, 1))
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 == v32)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_100115980(void ***a1, uint64_t a2, char **a3, int64_t a4)
{
  v139 = a1;
  v151 = type metadata accessor for Date();
  v7 = __chkstk_darwin(v151);
  v148 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v133 - v10;
  v12 = __chkstk_darwin(v9);
  v141 = &v133 - v13;
  v14 = __chkstk_darwin(v12);
  v142 = &v133 - v15;
  v16 = __chkstk_darwin(v14);
  v134 = &v133 - v17;
  __chkstk_darwin(v16);
  v135 = &v133 - v19;
  v146 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v21 = 0;
    v150 = (v18 + 8);
    v22 = _swiftEmptyArrayStorage;
    v138 = a4;
    v152 = v11;
    while (1)
    {
      v23 = v21;
      v24 = v21 + 1;
      if ((v21 + 1) < v20)
      {
        v137 = v22;
        v25 = *v146;
        v26 = *&(*v146)[8 * v21];
        v27 = *&(*v146)[8 * v24];
        v28 = v26;
        v29 = sub_10038ADA4(v27);
        if (!v29)
        {
          goto LABEL_142;
        }

        v30 = v29;
        v149 = v27;
        v31 = v135;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = sub_10038ADA4(v28);
        if (!v32)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v33 = v32;
        v34 = v134;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v144) = static Date.> infix(_:_:)();
        v4 = v150;
        v35 = *v150;
        v36 = v34;
        v21 = v31;
        v37 = v151;
        (*v150)(v36, v151);
        v143 = v35;
        (v35)(v21, v37);

        v38 = v23 + 2;
        v136 = v23;
        v145 = 8 * v23;
        v39 = &v25[8 * v23 + 16];
        while (v20 != v38)
        {
          v40 = *(v39 - 1);
          v41 = *v39;
          v42 = v40;
          v43 = sub_10038ADA4(v41);
          if (!v43)
          {
            goto LABEL_137;
          }

          v44 = v43;
          v4 = v20;
          v45 = v142;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = sub_10038ADA4(v42);
          if (!v46)
          {
            goto LABEL_136;
          }

          v47 = v46;
          v48 = v141;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v149) = static Date.> infix(_:_:)() & 1;
          LODWORD(v149) = v149;
          v49 = v48;
          v21 = v45;
          v50 = v151;
          v51 = v143;
          (v143)(v49, v151);
          v51(v21, v50);

          ++v38;
          ++v39;
          v11 = v152;
          if ((v144 & 1) != v149)
          {
            v20 = v38 - 1;
            break;
          }
        }

        v22 = v137;
        a4 = v138;
        v23 = v136;
        if (v144)
        {
          if (v20 < v136)
          {
            goto LABEL_129;
          }

          if (v136 < v20)
          {
            v52 = 8 * v20 - 8;
            v53 = v20;
            v54 = v136;
            do
            {
              if (v54 != --v53)
              {
                v55 = *v146;
                if (!*v146)
                {
                  goto LABEL_139;
                }

                v56 = *&v55[v145];
                *&v55[v145] = *&v55[v52];
                *&v55[v52] = v56;
              }

              ++v54;
              v52 -= 8;
              v145 += 8;
            }

            while (v54 < v53);
          }
        }

        v24 = v20;
      }

      v57 = v146[1];
      if (v24 >= v57)
      {
        v21 = v24;
        if (v24 < v23)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v58 = v24;
        v77 = __OFSUB__(v24, v23);
        v59 = v24 - v23;
        if (v77)
        {
          goto LABEL_128;
        }

        if (v59 >= a4)
        {
          goto LABEL_30;
        }

        v60 = v23 + a4;
        if (__OFADD__(v23, a4))
        {
          goto LABEL_130;
        }

        if (v60 >= v57)
        {
          v60 = v146[1];
        }

        if (v60 < v23)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v58 == v60)
        {
LABEL_30:
          v21 = v58;
          if (v58 < v23)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v136 = v23;
          v137 = v22;
          v149 = *v146;
          v110 = &v149[8 * v58 - 8];
          v111 = (v23 - v58);
          v140 = v60;
          do
          {
            v144 = v110;
            v145 = v58;
            v112 = *&v149[8 * v58];
            v143 = v111;
            v113 = v110;
            while (1)
            {
              v114 = *v113;
              v4 = v112;
              v115 = v114;
              v116 = sub_10038ADA4(v4);
              if (!v116)
              {
                goto LABEL_134;
              }

              v117 = v116;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v118 = sub_10038ADA4(v115);
              if (!v118)
              {
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
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
                goto LABEL_143;
              }

              v119 = v118;
              v120 = v148;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v119) = static Date.> infix(_:_:)();
              v121 = v11;
              v122 = *v150;
              v123 = v120;
              v124 = v151;
              (*v150)(v123, v151);
              v122(v121, v124);

              if ((v119 & 1) == 0)
              {
                break;
              }

              if (!v149)
              {
                goto LABEL_135;
              }

              v125 = *v113;
              v112 = *(v113 + 1);
              *v113 = v112;
              *(v113 + 1) = v125;
              v113 -= 8;
              v126 = __CFADD__(v111++, 1);
              v11 = v152;
              if (v126)
              {
                goto LABEL_85;
              }
            }

            v11 = v152;
LABEL_85:
            v58 = v145 + 1;
            v110 = v144 + 8;
            v111 = v143 - 1;
          }

          while (v145 + 1 != v140);
          v21 = v140;
          v23 = v136;
          v22 = v137;
          if (v140 < v136)
          {
            goto LABEL_127;
          }
        }
      }

      v61 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v61;
      }

      else
      {
        v22 = sub_100116880(0, *(v61 + 2) + 1, 1, v61);
      }

      v63 = *(v22 + 2);
      v62 = *(v22 + 3);
      v64 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        v22 = sub_100116880((v62 > 1), v63 + 1, 1, v22);
      }

      *(v22 + 2) = v64;
      v65 = &v22[16 * v63];
      *(v65 + 4) = v23;
      *(v65 + 5) = v21;
      v66 = *v139;
      if (!*v139)
      {
        goto LABEL_141;
      }

      if (v63)
      {
        while (1)
        {
          v4 = v64 - 1;
          if (v64 >= 4)
          {
            break;
          }

          if (v64 == 3)
          {
            v67 = *(v22 + 4);
            v68 = *(v22 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
LABEL_52:
            if (v70)
            {
              goto LABEL_116;
            }

            v83 = &v22[16 * v64];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_119;
            }

            v89 = &v22[16 * v4 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_123;
            }

            if (v87 + v92 >= v69)
            {
              if (v69 < v92)
              {
                v4 = v64 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v93 = &v22[16 * v64];
          v95 = *v93;
          v94 = *(v93 + 1);
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_66:
          if (v88)
          {
            goto LABEL_118;
          }

          v96 = &v22[16 * v4];
          v98 = *(v96 + 4);
          v97 = *(v96 + 5);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_121;
          }

          if (v99 < v87)
          {
            goto LABEL_3;
          }

LABEL_73:
          v104 = v4 - 1;
          if (v4 - 1 >= v64)
          {
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (!*v146)
          {
            goto LABEL_138;
          }

          v105 = v22;
          v106 = *&v22[16 * v104 + 32];
          v23 = *&v22[16 * v4 + 40];
          v107 = v147;
          sub_1001162FC(&(*v146)[8 * v106], &(*v146)[8 * *&v22[16 * v4 + 32]], &(*v146)[8 * v23], v66);
          v147 = v107;
          if (v107)
          {
            goto LABEL_110;
          }

          if (v23 < v106)
          {
            goto LABEL_112;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v108 = v105;
          }

          else
          {
            v108 = sub_10011686C(v105);
          }

          v11 = v152;
          if (v104 >= *(v108 + 2))
          {
            goto LABEL_113;
          }

          v109 = &v108[16 * v104];
          *(v109 + 4) = v106;
          *(v109 + 5) = v23;
          v153 = v108;
          sub_1001167E0(v4);
          v22 = v153;
          v64 = *(v153 + 2);
          if (v64 <= 1)
          {
            goto LABEL_3;
          }
        }

        v71 = &v22[16 * v64 + 32];
        v72 = *(v71 - 64);
        v73 = *(v71 - 56);
        v77 = __OFSUB__(v73, v72);
        v74 = v73 - v72;
        if (v77)
        {
          goto LABEL_114;
        }

        v76 = *(v71 - 48);
        v75 = *(v71 - 40);
        v77 = __OFSUB__(v75, v76);
        v69 = v75 - v76;
        v70 = v77;
        if (v77)
        {
          goto LABEL_115;
        }

        v78 = &v22[16 * v64];
        v80 = *v78;
        v79 = *(v78 + 1);
        v77 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v77)
        {
          goto LABEL_117;
        }

        v77 = __OFADD__(v69, v81);
        v82 = v69 + v81;
        if (v77)
        {
          goto LABEL_120;
        }

        if (v82 >= v74)
        {
          v100 = &v22[16 * v4 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v77 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v77)
          {
            goto LABEL_124;
          }

          if (v69 < v103)
          {
            v4 = v64 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v20 = v146[1];
      a4 = v138;
      if (v21 >= v20)
      {
        goto LABEL_99;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_99:
  v4 = *v139;
  if (*v139)
  {
    v21 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v147;
    if (isUniquelyReferenced_nonNull_native)
    {
      v128 = v21;
    }

    else
    {
LABEL_132:
      v128 = sub_10011686C(v21);
    }

    v153 = v128;
    v21 = *(v128 + 2);
    if (v21 >= 2)
    {
      while (*v146)
      {
        v129 = *&v128[16 * v21];
        v130 = v128;
        v131 = *&v128[16 * v21 + 24];
        sub_1001162FC(&(*v146)[8 * v129], &(*v146)[8 * *&v128[16 * v21 + 16]], &(*v146)[8 * v131], v4);
        if (v23)
        {
          goto LABEL_110;
        }

        if (v131 < v129)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_10011686C(v130);
        }

        if (v21 - 2 >= *(v130 + 2))
        {
          goto LABEL_126;
        }

        v132 = &v130[16 * v21];
        *v132 = v129;
        *(v132 + 1) = v131;
        v153 = v130;
        sub_1001167E0(v21 - 1);
        v128 = v153;
        v21 = *(v153 + 2);
        if (v21 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_140;
    }

LABEL_110:
  }

  else
  {
LABEL_144:
    __break(1u);
  }
}

uint64_t sub_1001162FC(void **a1, void **a2, id *a3, void **a4)
{
  v61 = type metadata accessor for Date();
  v8 = *(v61 - 8);
  v9 = __chkstk_darwin(v61);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v59 = &v54 - v12;
  v13 = __chkstk_darwin(v11);
  v56 = &v54 - v14;
  __chkstk_darwin(v13);
  v58 = (&v54 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 < v18 >> 3)
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      memmove(a4, a1, 8 * v17);
    }

    v63 = &a4[v17];
    if (a2 - a1 >= 8)
    {
      v20 = a2;
      if (a2 < a3)
      {
        v59 = (v8 + 8);
        v62 = a3;
        while (1)
        {
          v60 = v20;
          v21 = a4;
          v22 = *a4;
          v23 = *v20;
          v24 = v22;
          result = sub_10038ADA4(v23);
          if (!result)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v26 = result;
          v27 = a1;
          v28 = v58;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          result = sub_10038ADA4(v24);
          if (!result)
          {
            goto LABEL_46;
          }

          v29 = result;
          v30 = v56;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v29) = static Date.> infix(_:_:)();
          v31 = *v59;
          v32 = v30;
          v33 = v61;
          (*v59)(v32, v61);
          v31(v28, v33);

          if ((v29 & 1) == 0)
          {
            break;
          }

          v34 = v60;
          v20 = v60 + 1;
          v35 = v27;
          a4 = v21;
          if (v27 != v60)
          {
            goto LABEL_18;
          }

LABEL_19:
          a1 = v35 + 1;
          if (a4 >= v63 || v20 >= v62)
          {
            goto LABEL_21;
          }
        }

        v34 = v21;
        a4 = v21 + 1;
        v35 = v27;
        v20 = v60;
        if (v27 == v21)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v35 = *v34;
        goto LABEL_19;
      }
    }

LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  if (a4 != a2 || &a2[v19] <= a4)
  {
    memmove(a4, a2, 8 * v19);
  }

  v63 = &a4[v19];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v63 - a4 + (v63 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v63 - a4));
    }

    return 1;
  }

  v56 = (v8 + 8);
  v55 = a1;
LABEL_28:
  v60 = a2;
  v36 = a2 - 1;
  v37 = a3 - 1;
  v38 = v63;
  v58 = a2 - 1;
  while (1)
  {
    v62 = v37;
    v39 = *--v38;
    v40 = *v36;
    v41 = v39;
    v42 = v40;
    result = sub_10038ADA4(v41);
    if (!result)
    {
      goto LABEL_47;
    }

    v43 = result;
    v44 = a4;
    v45 = v59;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = sub_10038ADA4(v42);
    if (!result)
    {
      break;
    }

    v46 = result;
    v47 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v46) = static Date.> infix(_:_:)();
    v48 = *v56;
    v49 = v47;
    v50 = v61;
    (*v56)(v49, v61);
    v48(v45, v50);

    if (v46)
    {
      a3 = v62;
      a4 = v44;
      v52 = v55;
      v53 = v58;
      if (v62 + 1 != v60)
      {
        *v62 = *v58;
      }

      if (v63 <= v44 || (a2 = v53, v53 <= v52))
      {
        a2 = v53;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    v51 = v62;
    a4 = v44;
    v36 = v58;
    if (v62 + 1 != v63)
    {
      *v62 = *v38;
    }

    v37 = v51 - 1;
    v63 = v38;
    if (v38 <= v44)
    {
      v63 = v38;
      a2 = v60;
      goto LABEL_41;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1001167E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10011686C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100116880(char *result, int64_t a2, char a3, char *a4)
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
    sub_100085D40(&unk_10059F710);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100116984(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1001621AC(v3, 0);
  sub_1001606EC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100116A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100116A78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100116A98(uint64_t a1)
{
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v14 = _swiftEmptyArrayStorage;
  objc_opt_self();
  v5 = sub_10036C90C();
  (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v7 + ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100116CF4;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10009E234;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000986B4;
  aBlock[3] = &unk_10050E588;
  v9 = _Block_copy(aBlock);

  [v5 readUsingSession:v9];

  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v11 = v14;

    return v11;
  }

  return result;
}

uint64_t sub_100116CF4(void *a1)
{
  v3 = *(type metadata accessor for DateInterval() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100111764(a1, v1 + v4, v5);
}

uint64_t sub_100116D90()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

id sub_100116E24(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for DateInterval() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100111A24(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_100116F48()
{
  v0 = sub_100085D40(&qword_10059CB40);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v18 - v5;
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  XPCDictionary.init()();
  if ((XPC_ACTIVITY_INTERVAL_1_DAY * 30) >> 64 == (30 * XPC_ACTIVITY_INTERVAL_1_DAY) >> 63)
  {
    v18 = 30 * XPC_ACTIVITY_INTERVAL_1_DAY;
    v19 = 0;
    if (qword_10059B4A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_100117514();

  XPCDictionary.subscript.setter();

  v9 = 1;
  XPCDictionary.subscript.setter();
  v18 = XPC_ACTIVITY_INTERVAL_8_HOURS;
  v19 = 0;

  XPCDictionary.subscript.setter();

  XPCDictionary.subscript.setter();
  objc_opt_self();
  v10 = sub_1003D4178();
  if (v10)
  {
    v11 = v10;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = 0;
  }

  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v6, v9, 1, v12);
  sub_100117568(v6, v8);
  sub_1001175D8(v8, v3);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {
    sub_10008B4D0(v3);
    v14 = 0.0;
LABEL_10:
    v18 = v14 & ~(v14 >> 63);
    v19 = 0;

    XPCDictionary.subscript.setter();
    String.init(cString:)();

    XPCDictionary.subscript.setter();
    return sub_10008B4D0(v8);
  }

  Date.timeIntervalSinceNow.getter();
  v14 = v15;
  v16 = v15;
  result = (*(v13 + 8))(v3, v12);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v14 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v14 < 9.22337204e18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100117514()
{
  result = qword_10059D8A8;
  if (!qword_10059D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D8A8);
  }

  return result;
}

uint64_t sub_100117568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059CB40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001175D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059CB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100117648()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = [objc_opt_self() predicateWithProperty:v1 equalToValue:v2];
  swift_unknownObjectRelease();

  type metadata accessor for SkannerStoryEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1002D3F5C(ObjCClassFromMetadata, *(v0 + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection), v3);
  sub_1000FE4D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 firstMemoryEntityWithProperties:isa];

  result = 0;
  if (v7)
  {
    type metadata accessor for SkannerStory();
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

id sub_100117864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkannerDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001178CC()
{
  XPCDictionary.init()();
  if (qword_10059B4A0 != -1)
  {
    swift_once();
  }

  XPCDictionary.subscript.setter();
  sub_100117514();

  XPCDictionary.subscript.setter();
  String.init(cString:)();

  XPCDictionary.subscript.setter();

  return XPCDictionary.subscript.setter();
}

char *sub_100117DF4(id *a1)
{
  v2 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  swift_getObjectType();
  v5 = sub_1002FAD2C(a1);
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_10050E718[v5]->isa;
  }

  v7 = sub_100283920(a1);
  if (v7)
  {
    v8 = v7;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  v11 = sub_1002FDA68(a1);
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_1002FDA7C(a1);
  v17 = sub_100118A70(0, v6, v4, v13, v15, v16, 0);

  swift_deallocPartialClassInstance();
  return v17;
}

char *sub_100117FF0(void *a1, char *a2)
{
  v4 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  swift_getObjectType();
  v8 = sub_1002334B0(a1, v7);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  v11 = sub_100248DD8(a1, v10);
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_100118A70(0, a2, v6, v13, v15, 0, 1);

  swift_deallocPartialClassInstance();
  return v16;
}

char *sub_1001181A0(uint64_t a1)
{
  swift_getObjectType();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v4 = sub_1000EE808(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_10009F6D0(*(a1 + 56) + 32 * v4, v27);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v27, 0, sizeof(v27));
LABEL_6:
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v9 = sub_1000EE808(v7, v8);
    v11 = v10;

    if (v11)
    {
      sub_10009F6D0(*(a1 + 56) + 32 * v9, v26);
      goto LABEL_11;
    }
  }

  else
  {
  }

  memset(v26, 0, sizeof(v26));
LABEL_11:
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v14 = sub_1000EE808(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_10009F6D0(*(a1 + 56) + 32 * v14, v25);
      goto LABEL_16;
    }
  }

  else
  {
  }

  memset(v25, 0, sizeof(v25));
LABEL_16:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_20;
  }

  v19 = sub_1000EE808(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_20:

    memset(v24, 0, sizeof(v24));
    goto LABEL_21;
  }

  sub_10009F6D0(*(a1 + 56) + 32 * v19, v24);

LABEL_21:
  v22 = sub_10011947C(v27, v26, v25, v24);
  swift_deallocPartialClassInstance();
  return v22;
}

char *sub_100118430(void *a1)
{
  v2 = sub_100085D40(&unk_10059EED0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  swift_getObjectType();
  if ([a1 valueForProperty:@"log_code"])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v8 = sub_100294498(a1);
  if (v8)
  {
    v9 = v8;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_1000C1000(v5, v7);
  type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100005518(v7, &unk_10059EED0);
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    *(&v26 + 1) = v10;
    v12 = sub_100005F38(&v25);
    (*(v11 + 32))(v12, v7, v10);
  }

  v13 = sub_1002943F0(a1);
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = &type metadata for String;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v24[2] = 0;
  }

  v24[0] = v15;
  v24[1] = v17;
  v24[3] = v18;
  v19 = sub_100294688(a1);
  v20 = v19;
  if (v19)
  {
    v19 = sub_100084500();
  }

  else
  {
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v20;
  v23[3] = v19;
  v21 = sub_10011947C(v27, &v25, v24, v23);

  swift_deallocPartialClassInstance();
  return v21;
}

char *sub_100118754(void *a1)
{
  v2 = sub_100085D40(&unk_10059EED0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  swift_getObjectType();
  if (sub_10023E0F8(a1, @"log_code"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v8 = sub_100409134(a1);
  if (v8)
  {
    v9 = v8;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_1000C1000(v5, v7);
  type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100005518(v7, &unk_10059EED0);
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    *(&v26 + 1) = v10;
    v12 = sub_100005F38(&v25);
    (*(v11 + 32))(v12, v7, v10);
  }

  v13 = sub_10040908C(a1);
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = &type metadata for String;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v24[2] = 0;
  }

  v24[0] = v15;
  v24[1] = v17;
  v24[3] = v18;
  v19 = sub_10040916C(a1);
  v20 = v19;
  if (v19)
  {
    v19 = sub_100084500();
  }

  else
  {
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v20;
  v23[3] = v19;
  v21 = sub_10011947C(v27, &v25, v24, v23);

  swift_deallocPartialClassInstance();
  return v21;
}

char *sub_100118A70(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char a7)
{
  v14 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v14 - 8);
  v99 = &v96 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v103 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v102 = &v96 - v20;
  v105 = a1;
  if (!a1)
  {
    v100 = 0;
    v22 = 0xE000000000000000;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = 0xE300000000000000;
    v23 = 4144959;
    goto LABEL_6;
  }

  v21 = &a1[OBJC_IVAR____TtC9appstored6LogKey_value];
  v22 = *&a1[OBJC_IVAR____TtC9appstored6LogKey_value + 8];
  v100 = *v21;

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_6:
  v101._countAndFlagsBits = v23;
  v101._object = v24;
  v116 = a4;
  v117[0] = a5;
  v104 = a2;
  if (a7)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v109 = a6;
    sub_100119428();
    v25 = BinaryInteger.description.getter();
  }

  v27 = 0;
  v117[1] = v25;
  v117[2] = v26;
  v28 = _swiftEmptyArrayStorage;
  v106 = v17;
LABEL_10:
  v29 = &v117[2 * v27];
  while (++v27 != 3)
  {
    v30 = v29 + 2;
    v31 = *v29;
    v29 += 2;
    if (v31)
    {
      v32 = v22;
      v33 = v16;
      v34 = *(v30 - 3);

      v35 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1001AC6FC(0, *(v28 + 2) + 1, 1, v28);
      }

      v37 = *(v28 + 2);
      v36 = *(v28 + 3);
      if (v37 >= v36 >> 1)
      {
        v28 = sub_1001AC6FC((v36 > 1), v37 + 1, 1, v28);
      }

      *(v28 + 2) = v37 + 1;
      v38 = &v28[16 * v37];
      *(v38 + 4) = v34;
      *(v38 + 5) = v31;
      a3 = v35;
      v16 = v33;
      v22 = v32;
      v17 = v106;
      goto LABEL_10;
    }
  }

  sub_100085D40(&qword_10059CEB8);
  swift_arrayDestroy();
  v39 = v99;
  sub_1000044A4(a3, v99, &unk_10059EED0);
  if ((*(v17 + 48))(v39, 1, v16) == 1)
  {
    sub_100005518(v39, &unk_10059EED0);
    v40 = type metadata accessor for LogKey();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
    v42 = &v41[OBJC_IVAR____TtC9appstored6LogKey_activityState];
    *v42 = 0;
    v42[1] = 0;
    v109 = v28;
    v110 = sub_1001C08F8;
    v111 = 0;
    v112 = sub_1001C08F0;
    v113 = 0;
    v114 = sub_1001C08F4;
    v115 = 0;
    sub_100085D40(&unk_10059F900);
    sub_1001193C4();
    sub_100003B3C();
    v43 = Sequence<>.joined(separator:)();
    v45 = v44;

    v109 = v100;
    v110 = v22;
    v46 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v46 = v100 & 0xFFFFFFFFFFFFLL;
    }

    v47 = v46 != 0;

    v48._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v48);

    String.append(_:)(v101);

    v49._countAndFlagsBits = 0x3F3F3F3F3F3F3F3FLL;
    v49._object = 0xE800000000000000;
    String.append(_:)(v49);
    v50 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v50 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v51 = 47;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = 0xE100000000000000;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v53 = v52;
    String.append(_:)(*&v51);

    v54._countAndFlagsBits = v43;
    v54._object = v45;
    String.append(_:)(v54);

    v55 = v110;
    v56 = &v41[OBJC_IVAR____TtC9appstored6LogKey_value];
    *v56 = v109;
    v56[1] = v55;
    *&v41[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;

    v41[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = v47;
    v108.receiver = v41;
    v108.super_class = v40;
    v57 = objc_msgSendSuper2(&v108, "init");
    v58 = v57;
    if (*&v57[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
    {
      v58 = v57;
      v59 = sub_1000052DC();
    }
  }

  else
  {
    v60 = v102;
    (*(v17 + 32))(v102, v39, v16);
    v61 = *(v17 + 16);
    v98 = v16;
    v61(v103, v60, v16);
    LODWORD(v109) = bswap32(UUID.uuid.getter());
    sub_1000046F8();
    v99 = String.init<A>(_:radix:uppercase:)();
    v63 = v62;
    v97 = type metadata accessor for LogKey();
    v64 = objc_allocWithZone(v97);
    *&v64[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
    v65 = &v64[OBJC_IVAR____TtC9appstored6LogKey_activityState];
    *v65 = 0;
    v65[1] = 0;
    v109 = v28;
    v110 = sub_1001C08F8;
    v111 = 0;
    v112 = sub_1001C08F0;
    v113 = 0;
    v114 = sub_1001C08F4;
    v115 = 0;
    sub_100085D40(&unk_10059F900);
    sub_1001193C4();
    sub_100003B3C();
    v66 = Sequence<>.joined(separator:)();
    v68 = v67;

    v109 = v100;
    v110 = v22;
    v69 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v69 = v100 & 0xFFFFFFFFFFFFLL;
    }

    object = v101._object;
    countAndFlagsBits = v101._countAndFlagsBits;
    LODWORD(v100) = v69 != 0;

    v72._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v72);

    v73._countAndFlagsBits = countAndFlagsBits;
    v73._object = object;
    String.append(_:)(v73);

    v74._countAndFlagsBits = v99;
    v74._object = v63;
    String.append(_:)(v74);

    v75 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v75 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v75)
    {
      v76 = 47;
    }

    else
    {
      v76 = 0;
    }

    if (v75)
    {
      v77 = 0xE100000000000000;
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    v78 = v77;
    String.append(_:)(*&v76);

    v79._countAndFlagsBits = v66;
    v79._object = v68;
    String.append(_:)(v79);

    v80 = v110;
    v81 = &v64[OBJC_IVAR____TtC9appstored6LogKey_value];
    *v81 = v109;
    v81[1] = v80;
    *&v64[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;

    v64[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = v100;
    v107.receiver = v64;
    v107.super_class = v97;
    v82 = objc_msgSendSuper2(&v107, "init");
    v83 = v82;
    if (*&v82[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
    {
      v84 = v82;
      v85 = sub_1000052DC();
    }

    v58 = v83;
    v86 = sub_1000052DC();

    v87 = *(v106 + 8);
    v88 = v98;
    v87(v103, v98);
    v87(v102, v88);
  }

  v89 = v105;
  v90 = v104;
  v91 = v58;
  v92 = v91;
  if (v89)
  {
    v93 = sub_1000052DC();

    v94 = v90;
  }

  else
  {
    v94 = v91;
    v89 = v90;
  }

  sub_100005518(a3, &unk_10059EED0);
  return v92;
}

unint64_t sub_1001193C4()
{
  result = qword_10059DCE0;
  if (!qword_10059DCE0)
  {
    sub_10009F7F8(&unk_10059F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059DCE0);
  }

  return result;
}

unint64_t sub_100119428()
{
  result = qword_10059D928;
  if (!qword_10059D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059D928);
  }

  return result;
}

char *sub_10011947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  sub_1000044A4(a1, v24, &unk_10059CC50);
  if (v25)
  {
    if (swift_dynamicCast())
    {

      v11 = String._bridgeToObjectiveC()();
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  else
  {
    sub_100005518(v24, &unk_10059CC50);
  }

  v11 = 0;
LABEL_6:
  sub_1000044A4(a2, v24, &unk_10059CC50);
  if (v25)
  {
    v12 = type metadata accessor for UUID();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v10, v13 ^ 1u, 1, v12);
  }

  else
  {
    sub_100005518(v24, &unk_10059CC50);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  sub_1000044A4(a3, v24, &unk_10059CC50);
  if (v25)
  {
    v15 = swift_dynamicCast();
    if (v15)
    {
      v16 = v23[0];
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v23[1];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_100005518(v24, &unk_10059CC50);
    v16 = 0;
    v17 = 0;
  }

  sub_1000044A4(a4, v24, &unk_10059CC50);
  if (v25)
  {
    v18 = swift_dynamicCast();
    if (v18)
    {
      v19 = v23[0];
    }

    else
    {
      v19 = 0;
    }

    v20 = v18 ^ 1;
  }

  else
  {
    sub_100005518(v24, &unk_10059CC50);
    v19 = 0;
    v20 = 1;
  }

  v21 = sub_100118A70(0, v11, v10, v16, v17, v19, v20);
  sub_100005518(a4, &unk_10059CC50);
  sub_100005518(a3, &unk_10059CC50);
  sub_100005518(a2, &unk_10059CC50);
  sub_100005518(a1, &unk_10059CC50);
  return v21;
}

uint64_t sub_1001197D8()
{
  sub_100085D40(&unk_10059DCD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100434770;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  return v0;
}

id sub_100119878()
{
  result = [objc_allocWithZone(type metadata accessor for SkannerService()) init];
  qword_1005AB148 = result;
  return result;
}

uint64_t sub_100119AB4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_100119B1C, 0, 0);
}

uint64_t sub_100119B1C()
{
  if (qword_10059B4B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1005AB0E0;
  *(v0 + 24) = qword_1005AB0E0;
  v2 = *sub_100005B60((v1 + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics), *(v1 + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics + 24));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100119C00;

  return sub_1000E7C48(v2);
}

uint64_t sub_100119C00(char a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100119D00, 0, 0);
}

uint64_t sub_100119D00()
{
  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_100119E6C;

    return sub_1001B7EA4(sub_1000E1460, 0);
  }

  else
  {
    v3 = *(v0 + 16);
    sub_100085D40(&qword_10059D9B8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    (v3)[2](v3, isa, 0);

    _Block_release(v3);
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100119E6C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10011A050;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100119F98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100119F98()
{
  v1 = *(v0 + 16);
  sub_100085D40(&qword_10059D9B8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa, 0);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011A050()
{
  v1 = *(v0 + 16);
  sub_100085D40(&qword_10059D9B8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa, 0);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011A174()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100085384;

  return sub_100119AB4(v2);
}

id sub_10011A3AC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t sub_10011A648(unint64_t result)
{
  v1 = result;
  if (result - 1000001 > 0x3B8B87BE)
  {
    goto LABEL_6;
  }

  v1 = round(v1 / 1000000.0) * 1000000.0;
  if (v1 == INFINITY)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v1 < 9.22337204e18)
  {
LABEL_10:
    v2 = v1;
    goto LABEL_11;
  }

  __break(1u);
LABEL_6:
  v2 = result;
  if (result < 0x3B9ACA01)
  {
LABEL_11:
    v3 = [objc_opt_self() stringFromByteCount:v2 countStyle:2];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  v1 = round(v1 / 100000000.0) * 100000000.0;
  if (v1 == INFINITY)
  {
    goto LABEL_14;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v1 < 9.22337204e18)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10011A79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v17;
  *(v8 + 320) = v18;
  *(v8 + 296) = v16;
  *(v8 + 280) = v15;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 240) = a4;
  v9 = type metadata accessor for LocalizedStringsRequest();
  *(v8 + 328) = v9;
  *(v8 + 336) = *(v9 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v10 = type metadata accessor for LocalizedStringsResponse();
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 392) = v11;
  *(v8 + 400) = *(v11 - 8);
  *(v8 + 408) = swift_task_alloc();
  v12 = type metadata accessor for LocalizedStringsRequest.LocalizedString();
  *(v8 + 416) = v12;
  *(v8 + 424) = *(v12 - 8);
  *(v8 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_10011A9B0, 0, 0);
}

uint64_t sub_10011A9B0()
{
  v1 = *(v0 + 264);
  if (!v1 || (*(v0 + 240) == *(v0 + 256) ? (v2 = v1 == *(v0 + 248)) : (v2 = 0), !v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    v16 = *(v0 + 424);
    sub_100085D40(&qword_10059DAF0);
    *(v0 + 440) = *(v16 + 72);
    *(v0 + 480) = *(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_100434480;
    sub_1000EFC58(_swiftEmptyArrayStorage);
    LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)();
    LocalizedStringsRequest.init(strings:)();
    v17 = swift_task_alloc();
    *(v0 + 448) = v17;
    *v17 = v0;
    v17[1] = sub_10011AE7C;
    v15 = *(v0 + 384);
    goto LABEL_10;
  }

  v3 = *(v0 + 280);
  if (v3)
  {
    v4 = *(v0 + 424);
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 272);
    sub_100085D40(&qword_10059DAF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100436FD0;
    *(inited + 32) = 0x656D614E707061;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v6;
    *(inited + 56) = v5;
    strcpy((inited + 64), "newDistributor");
    *(inited + 79) = -18;
    *(inited + 80) = v7;
    *(inited + 88) = v3;

    sub_1000EFC58(inited);
    swift_setDeallocating();
    sub_100085D40(&qword_10059DB00);
    swift_arrayDestroy();
    LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)();
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *(v0 + 456) = 0xD000000000000039;
    *(v0 + 464) = 0x8000000100450290;
    v11 = *(v0 + 424);
    v10 = *(v0 + 432);
    v12 = *(v0 + 416);
    sub_100085D40(&qword_10059DAF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100434780;
    (*(v11 + 16))(v13 + v9, v10, v12);
    sub_1000EFC58(_swiftEmptyArrayStorage);
    LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)();
    sub_1000EFC58(_swiftEmptyArrayStorage);
    LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)();
    LocalizedStringsRequest.init(strings:)();
    v14 = swift_task_alloc();
    *(v0 + 472) = v14;
    *v14 = v0;
    v14[1] = sub_10011B3EC;
    v15 = *(v0 + 376);
LABEL_10:

    return LocalizedStringsRequest.run()(v15);
  }

  static Logger.appInstall.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v0 + 400);
  v21 = *(v0 + 408);
  v23 = *(v0 + 392);
  if (v20)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Missing domain for web distributor", v24, 2u);
  }

  (*(v22 + 8))(v21, v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10011AE7C()
{
  v2 = *v1;

  v3 = v2[44];
  v4 = v2[42];
  v5 = v2[41];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10011B8DC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10011B014;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10011B014()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = LocalizedStringsResponse.localizedStrings.getter();
  (*(v3 + 8))(v1, v2);
  if (*(v4 + 16) && (v5 = sub_1000EE808(0xD000000000000033, 0x80000001004501A0), (v6 & 1) != 0))
  {
    v7 = *(v0 + 312);
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = (*(v4 + 56) + 16 * v5);
    v12 = *v10;
    v11 = v10[1];

    sub_100085D40(&qword_10059DAF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100434780;
    *(inited + 32) = 0x656D614E707061;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;
    *(inited + 64) = 0x7562697274736964;
    *(inited + 72) = 0xEB00000000726F74;
    if (v7)
    {
      v14 = (v0 + 304);
      v15 = v7;
    }

    else
    {
      v14 = (v0 + 240);
    }

    *(inited + 80) = *v14;
    *(inited + 88) = v15;
    strcpy((inited + 96), "newDistributor");
    *(inited + 111) = -18;
    *(inited + 112) = v12;
    *(inited + 120) = v11;

    sub_1000EFC58(inited);
    swift_setDeallocating();
    sub_100085D40(&qword_10059DB00);
    swift_arrayDestroy();
    LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)();
    v18 = (*(v0 + 480) + 32) & ~*(v0 + 480);
    *(v0 + 456) = 0xD000000000000032;
    *(v0 + 464) = 0x80000001004501E0;
    v19 = *(v0 + 432);
    v20 = *(v0 + 416);
    v21 = *(v0 + 424);
    sub_100085D40(&qword_10059DAF0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100434780;
    (*(v21 + 16))(v22 + v18, v19, v20);
    sub_1000EFC58(_swiftEmptyArrayStorage);
    LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)();
    sub_1000EFC58(_swiftEmptyArrayStorage);
    LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)();
    LocalizedStringsRequest.init(strings:)();
    v23 = swift_task_alloc();
    *(v0 + 472) = v23;
    *v23 = v0;
    v23[1] = sub_10011B3EC;
    v24 = *(v0 + 376);

    return LocalizedStringsRequest.run()(v24);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10011B3EC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[42];
    v3 = v2[43];
    v5 = v2[41];

    (*(v4 + 8))(v3, v5);
    v6 = sub_10011B980;
  }

  else
  {
    (*(v2[42] + 8))(v2[43], v2[41]);
    v6 = sub_10011B558;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10011B558()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = LocalizedStringsResponse.localizedStrings.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16) && (sub_1000EE808(0xD000000000000020, 0x8000000100450260), (v5 & 1) != 0) && *(v4 + 16))
  {

    sub_1000EE808(0xD000000000000030, 0x8000000100450220);
    if (v6)
    {
      v7 = *(v4 + 16);

      if (v7)
      {
        sub_1000EE808(v0[57], v0[58]);
        v9 = v8;

        v10 = v0[53];
        v30 = v0[54];
        v11 = v0[52];
        if (v9)
        {
          v29 = v0[40];

          v12 = objc_allocWithZone(AMSDialogRequest);
          v13 = String._bridgeToObjectiveC()();

          v14 = String._bridgeToObjectiveC()();

          v15 = [v12 initWithTitle:v13 message:v14];

          v16 = String._bridgeToObjectiveC()();

          v17 = [objc_opt_self() actionWithTitle:v16];

          [v15 addButtonAction:v17];
          [v29 presentDialogRequest:v15 resultHandler:0];

          (*(v10 + 8))(v30, v11);
          goto LABEL_9;
        }

        (*(v10 + 8))(v30, v11);
      }

      else
      {
        v27 = v0[53];
        v26 = v0[54];
        v28 = v0[52];

        (*(v27 + 8))(v26, v28);
      }
    }

    else
    {
      v24 = v0[53];
      v23 = v0[54];
      v25 = v0[52];

      (*(v24 + 8))(v23, v25);
    }
  }

  else
  {
    v19 = v0[53];
    v18 = v0[54];
    v20 = v0[52];

    (*(v19 + 8))(v18, v20);
  }

LABEL_9:

  v21 = v0[1];

  return v21();
}

uint64_t sub_10011B8DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011B980()
{
  (*(v0[53] + 8))(v0[54], v0[52]);

  v1 = v0[1];

  return v1();
}

id sub_10011BAF4(id *a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_1003D266C(a1);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v12 = sub_1003D3584(a1, v11);
  v13 = [v12 iTunesMetadata];

  v14 = [v13 distributorInfo];
  result = [v14 distributorID];
  if (result)
  {
    v16 = result;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v18;
    v40 = v17;

    v19 = [v14 domain];
    v41 = v10;
    if (v19)
    {
      v20 = v19;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v38 = 0;
      v22 = 0;
    }

    v23 = a2;
    v24 = [v14 distributorNameForCurrentLocale];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = sub_1003D0F60(a1);
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v36 = v39;
    v35[4] = v40;
    v35[5] = v36;
    v35[6] = v31;
    v35[7] = v33;
    v35[8] = v38;
    v35[9] = v22;
    v37 = v41;
    v35[10] = v8;
    v35[11] = v37;
    v35[12] = v26;
    v35[13] = v28;
    v35[14] = v23;
    swift_unknownObjectRetain();
    sub_10019F02C(0, 0, v6, &unk_100437158, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10011BDA4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100085384;

  return sub_10011A79C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10011BEB4()
{
  XPCDictionary.init()();
  if (qword_10059B4A0 != -1)
  {
    swift_once();
  }

  XPCDictionary.subscript.setter();
  sub_100117514();

  XPCDictionary.subscript.setter();
  String.init(cString:)();

  XPCDictionary.subscript.setter();

  XPCDictionary.subscript.setter();

  XPCDictionary.subscript.setter();

  return XPCDictionary.subscript.setter();
}

void sub_10011C0B8()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.metrics.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock[0] = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_1001AD0D8(v9, v10, aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] run", v7, 0xCu);
    sub_100005A00(v8);
  }

  (*(v2 + 8))(v4, v1);
  objc_opt_self();
  v12 = sub_1002B5560();
  v13 = swift_allocObject();
  *(v13 + 16) = ObjectType;
  aBlock[4] = sub_10011C674;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100145BCC;
  aBlock[3] = &unk_10050E808;
  v14 = _Block_copy(aBlock);

  sub_1002B7090(v12, 5, 6, v14);
  _Block_release(v14);
}

uint64_t sub_10011C328(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static Logger.appUsage.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = v3;
      v11 = v10;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      v14 = _typeName(_:qualified:)();
      v16 = sub_1001AD0D8(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] Complete with error: %{public}@", v11, 0x16u);
      sub_100086A24(v12);

      sub_100005A00(v13);

      return (*(v4 + 8))(v7, v18);
    }

    else
    {

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_10011C67C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10011C6BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

BOOL sub_10011C720(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10011C7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_10011C8C0()
{
  type metadata accessor for UpdatesManager_Swift();
  swift_allocObject();
  result = sub_10011E17C();
  qword_1005AB150 = result;
  return result;
}

void sub_10011C990()
{
  sub_100085D40(&qword_10059C4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100436500;
  v1 = String._bridgeToObjectiveC()();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = objc_opt_self();
  v4 = [v3 predicateWithProperty:v1 value:v2 comparisonType:4];
  swift_unknownObjectRelease();

  *(v0 + 32) = v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 predicateWithProperty:v5 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:2];
  swift_unknownObjectRelease();

  *(v0 + 40) = v6;
  qword_10059DB50 = v0;
}

id sub_10011CAF8()
{
  result = sub_10011CB18();
  qword_10059DB58 = result;
  return result;
}

id sub_10011CB18()
{
  sub_100085D40(&unk_10059D038);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100434780;
  *(v0 + 32) = xmmword_100437190;
  *(v0 + 48) = 3;
  if (qword_10059B518 != -1)
  {
    swift_once();
  }

  v8 = qword_10059DB50;

  v1 = String._bridgeToObjectiveC()();

  sub_100085D40(&qword_10059DC40);
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = [objc_opt_self() containsPredicateWithProperty:v1 values:{v2, v0}];

  swift_unknownObjectRelease();

  v4 = v3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000E0D28(v8);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() predicateMatchingAllPredicates:isa];

  return v6;
}

void sub_10011CD68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setDateFormat:v6];

  *a4 = v5;
}

uint64_t sub_10011CDE0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_100085D40(&qword_10059C3E0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10011CE7C, v1, 0);
}

uint64_t sub_10011CE7C()
{
  v1 = v0[5];
  v2 = *(v1 + 144);
  v0[7] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = sub_100085D40(&qword_10059DCE8);
    *v3 = v0;
    v3[1] = sub_10011D084;
    v5 = v0 + 3;
  }

  else
  {
    v6 = v0[6];
    v7 = v0[4];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v10 = v7;
    v2 = sub_10019F31C(0x6469766F72507674, 0xEE00737070417265, v6, &unk_100437418, v9);
    v0[9] = v2;
    *(v1 + 144) = v2;

    v11 = swift_task_alloc();
    v0[10] = v11;
    v4 = sub_100085D40(&qword_10059DCE8);
    *v11 = v0;
    v11[1] = sub_10011D204;
    v5 = v0 + 2;
  }

  return Task<>.value.getter(v5, v2, v4);
}

uint64_t sub_10011D084()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10011D194, v1, 0);
}

uint64_t sub_10011D194()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011D204()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10011D330, v1, 0);
}

uint64_t sub_10011D330()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011D398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a1;
  v4[24] = a4;
  v5 = sub_100085D40(&qword_10059DCF0);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_10011D4D8, 0, 0);
}

uint64_t sub_10011D4D8()
{
  v1 = v0[24];
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Obtaining TV provider apps", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];

  v15 = *(v10 + 8);
  v0[33] = v15;
  v0[34] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v9, v11);
  v16 = [objc_opt_self() sharedCenter];
  v0[35] = v16;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10011D7C8;
  swift_continuation_init();
  v0[17] = v14;
  v17 = sub_100005F38(v0 + 14);
  sub_100085D40(&unk_10059DCA0);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v13 + 32))(v17, v12, v14);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10011DDB0;
  v0[13] = &unk_10050EEC0;
  [v16 enqueueIdentityProviderAppsQueryWithCompletion:?];
  (*(v13 + 8))(v17, v14);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10011D7C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_10011DB3C;
  }

  else
  {
    v2 = sub_10011D8D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011D8D8()
{
  v22 = v0;
  v1 = *(v0 + 168);

  result = Set.init(minimumCapacity:)();
  v18 = result;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 40);
    while (v4 < *(v1 + 16))
    {
      v6 = *v5;
      v19[0] = *(v5 - 1);
      v19[1] = v6;
      result = sub_10011DE64(v19, &v20);
      if ((v21 & 1) == 0)
      {
        result = sub_1001754E4(v19, v20);
      }

      ++v4;
      v5 += 2;
      if (v3 == v4)
      {
        v7 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = result;
LABEL_9:
    v8 = *(v0 + 192);

    static Logger.updates.getter();
    swift_bridgeObjectRetain_n();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 192);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *v14 = v12;
      *(v13 + 12) = 2048;
      v15 = *(v7 + 16);
      v16 = v12;

      *(v13 + 14) = v15;

      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Obtained %ld TV provider apps", v13, 0x16u);
      sub_100005518(v14, &unk_10059C250);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    (*(v0 + 264))(*(v0 + 248), *(v0 + 224));
    **(v0 + 184) = v7;

    v17 = *(v0 + 8);

    return v17();
  }

  return result;
}

uint64_t sub_10011DB3C()
{
  v23 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);
  swift_willThrow();

  static Logger.updates.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v21 = *(v0 + 264);
    v20 = *(v0 + 240);
    v19 = *(v0 + 224);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v10 = v6;
    v11 = Error.localizedDescription.getter();
    v13 = sub_1001AD0D8(v11, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error fetching identity provider apps: %{public}s", v7, 0x16u);
    sub_100005518(v8, &unk_10059C250);

    sub_100005A00(v9);

    v21(v20, v19);
  }

  else
  {
    v14 = *(v0 + 264);
    v15 = *(v0 + 240);
    v16 = *(v0 + 224);

    v14(v15, v16);
  }

  **(v0 + 184) = &_swiftEmptySetSingleton;

  v17 = *(v0 + 8);

  return v17();
}

void sub_10011DDB0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100085D40(&qword_10059DCF0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100085D40(&qword_10059DCF0);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t *sub_10011DE64@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v22 = 0;
    v21 = 1;
LABEL_68:
    *a2 = v22;
    *(a2 + 8) = v21 & 1;
    return result;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v23 = a2;

    v8 = sub_10016DBD8(v2, v3, 10);
    v21 = v24;

    a2 = v23;
LABEL_65:
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v8;
    }

    goto LABEL_68;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = a2;
      result = _StringObject.sharedUTF8.getter();
      a2 = v25;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v14 = result + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v8, 0xAuLL))
              {
                goto LABEL_63;
              }

              v11 = __CFADD__(10 * v8, v15);
              v8 = 10 * v8 + v15;
              if (v11)
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = __CFADD__(10 * v8, v18);
            v8 = 10 * v8 + v18;
            if (v11)
            {
              goto LABEL_63;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v8 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_64;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = 10 * v8 >= v10;
            v8 = 10 * v8 - v10;
            if (!v11)
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v4) = 0;
LABEL_64:
        v27 = v4;
        v21 = v4;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v26[0] = *result;
  v26[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v19 = v26;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = __CFADD__(10 * v8, v20);
          v8 = 10 * v8 + v20;
          if (v11)
          {
            break;
          }

          ++v19;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v26 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = 10 * v8 >= v13;
          v8 = 10 * v8 - v13;
          if (!v11)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v16 = v26 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        if (!is_mul_ok(v8, 0xAuLL))
        {
          break;
        }

        v11 = __CFADD__(10 * v8, v17);
        v8 = 10 * v8 + v17;
        if (v11)
        {
          break;
        }

        ++v16;
        if (!--v4)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
  return result;
}

id sub_10011E17C()
{
  v1 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0x40E5180000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = _swiftEmptyArrayStorage;
  v4 = type metadata accessor for UpdatesManager_Swift();
  v10.receiver = v0;
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, "init");
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_10019F02C(0, 0, v3, &unk_100437318, v7);

  return v8;
}

uint64_t sub_10011E2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = swift_getObjectType();

  return _swift_task_switch(sub_10011E34C, a4, 0);
}

uint64_t sub_10011E34C()
{
  if (qword_10059B538 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  sub_10013BA2C(&qword_10059DC08, v2, type metadata accessor for UpdatesManager_Swift);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10011E4DC;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_10011E4DC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 16);

    return _swift_task_switch(sub_10013F1B4, v4, 0);
  }
}

uint64_t sub_10011E694()
{
  sub_100085D40(&unk_10059DC60);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_10059DB70 = result;
  return result;
}

uint64_t sub_10011E70C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultCenter];
  v3 = objc_opt_self();
  v4 = @"AccountStorePrimaryAccountDidChange";
  v5 = [v3 sharedInstance];
  [v2 addObserver:v1 selector:"handleAccountChangeNotification" name:v4 object:v5];

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10011E844;

  return sub_100139DC4();
}

uint64_t sub_10011E844(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 32) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_10011E960, v4, 0);
}

uint64_t sub_10011E960()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  *(v2 + 120) = *(v0 + 32);
  *(v2 + 128) = v1 & 1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10011EA08;

  return sub_1001295BC();
}

uint64_t sub_10011EA08()
{

  return _swift_task_switch(sub_10011EB04, 0, 0);
}

uint64_t sub_10011EB04()
{
  objc_opt_self();
  *(v0 + 48) = sub_1002BB3F0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10011EBDC;

  return sub_1000DB090(sub_10011FAE8, 0);
}

uint64_t sub_10011EBDC()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 16);

  return _swift_task_switch(sub_10011ECFC, v3, 0);
}

uint64_t sub_10011ECFC()
{
  v1 = [objc_allocWithZone(type metadata accessor for UpdatesContext()) init];
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_10011EDB0;

  return sub_10012C048(v1);
}

uint64_t sub_10011EDB0(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10011EEC8, v2, 0);
}

uint64_t sub_10011EEC8()
{
  v1 = *(v0 + 64);
  sub_10013A4B4(*(v0 + 80), 0x696C616974696E49, 0xEC000000676E697ALL, v1);

  sub_10011F15C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10011EF5C(uint64_t a1)
{
  v2 = sub_100085D40(&unk_10059C490);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-v4];
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_10011E640();
  if (!*v6)
  {
    return (v7)(v14, 0);
  }

  v8 = v6;
  (*(v3 + 16))(v5, a1, v2);
  v9 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1001ACDB4(0, v9[2] + 1, 1, v9);
    *v8 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1001ACDB4(v11 > 1, v12 + 1, 1, v9);
    *v8 = v9;
  }

  v9[2] = v12 + 1;
  (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, v2);
  return (v7)(v14, 0);
}

uint64_t sub_10011F15C()
{
  v1 = v0;
  v2 = sub_100085D40(&unk_10059C490);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  result = swift_beginAccess();
  v7 = *(v1 + 152);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v11 = *(v3 + 16);
      v9 = v3 + 16;
      v10 = v11;
      v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v13 = *(v9 + 56);

      do
      {
        v10(v5, v12, v2);
        CheckedContinuation.resume(returning:)();
        (*(v9 - 8))(v5, v2);
        v12 += v13;
        --v8;
      }

      while (v8);
    }

    *(v1 + 152) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10011F444(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_10011F4C0, a2, 0);
}

uint64_t sub_10011F4C0()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = sub_1003D5FC8();

  v1[2](v1, v2);
  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011F6D4(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_10011F750, a2, 0);
}

uint64_t sub_10011F750()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 112);
  *(v1 + 112) = 0;

  v2[2](v2, v3);
  _Block_release(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10011F7D4(void *a1, char a2)
{
  v17 = _swiftEmptyArrayStorage;
  v4 = String._bridgeToObjectiveC()();
  aBlock[0] = 8;
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:3];
  swift_unknownObjectRelease();

  v7 = [a1 connection];
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  type metadata accessor for MediaAPIUpdate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = sub_1002D4C68(ObjCClassFromMetadata, v7, v8);

  v11 = swift_allocObject();
  *(v11 + 16) = &v17;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10013EF4C;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10013F1D4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011C6BC;
  aBlock[3] = &unk_10050F7A8;
  v13 = _Block_copy(aBlock);

  [v10 enumerateMemoryEntitiesUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_10009FAD4(0, &qword_10059CC48);

    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10034E224(a1, isa);
  }

  return result;
}

uint64_t sub_10011FA74(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_10011FAE8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100139050(a1);
  *a2 = 0;
  return result;
}

id sub_10011FB18@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  Current = CFAbsoluteTimeGetCurrent();
  result = sub_10034E15C(a1, Current - ASDSoftwareUpdateHistoryInterval);
  *a2 = 0;
  return result;
}

uint64_t sub_10011FCF4(char a1, void *aBlock)
{
  *(v2 + 48) = a1;
  *(v2 + 16) = _Block_copy(aBlock);

  return _swift_task_switch(sub_10011FD64, 0, 0);
}

uint64_t sub_10011FD64()
{
  v1 = *(v0 + 48);
  objc_opt_self();
  *(v0 + 24) = sub_1002BB3F0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = sub_10013EF44;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_10011FE94;

  return sub_1000DB090(sub_1000E379C, v3);
}

uint64_t sub_10011FE94()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_10013F1D8;
  }

  else
  {

    v4 = sub_10011FFF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10011FFF8()
{
  v1 = *(v0 + 16);
  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10012006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_10012010C;

  return sub_10012DE9C(a5);
}

uint64_t sub_10012010C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10012020C, 0, 0);
}

uint64_t sub_10012020C()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler);
  if (*v1)
  {
    (*v1)(v0[4], 0);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001202BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001202DC, 0, 0);
}

uint64_t sub_1001202DC()
{
  v1 = [objc_allocWithZone(type metadata accessor for UpdatesContext()) init];
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100120390;

  return sub_10012C048(v1);
}

uint64_t sub_100120390(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1001204A8, v2, 0);
}

uint64_t sub_1001204A8()
{
  v1 = *(v0 + 32);
  sub_10013A4B4(*(v0 + 48), 0xD00000000000001ALL, 0x80000001004508A0, v1);

  return _swift_task_switch(sub_100120534, 0, 0);
}

uint64_t sub_100120588(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for Logger();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100120648, v1, 0);
}

uint64_t sub_100120648()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    sub_100085D40(&unk_10059DCD0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100434480;
    *(v0 + 88) = v1;
    *(v2 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v2 + 40) = v3;
    v4 = type metadata accessor for LogKey();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
    v6 = &v5[OBJC_IVAR____TtC9appstored6LogKey_activityState];
    *v6 = 0;
    v6[1] = 0;
    *(v0 + 16) = v2;
    *(v0 + 24) = sub_1001C08F8;
    *(v0 + 32) = 0;
    *(v0 + 40) = sub_1001C08F0;
    *(v0 + 48) = 0;
    *(v0 + 56) = sub_1001C08F4;
    *(v0 + 64) = 0;
    sub_100085D40(&unk_10059F900);
    sub_10009F9D4(&qword_10059DCE0, &unk_10059F900);
    sub_100003B3C();
    v7 = Sequence<>.joined(separator:)();
    v9 = v8;

    v10._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v10);

    v11._object = 0x8000000100450840;
    v11._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v11);
    v12 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v12 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = 47;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = 0xE100000000000000;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = v14;
    String.append(_:)(*&v13);

    v16._countAndFlagsBits = v7;
    v16._object = v9;
    String.append(_:)(v16);

    v17 = &v5[OBJC_IVAR____TtC9appstored6LogKey_value];
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    *&v5[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
    v5[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
    *(v0 + 72) = v5;
    *(v0 + 80) = v4;
    v18 = objc_msgSendSuper2((v0 + 72), "init");
    v19 = v18;
    *(v0 + 136) = v18;
    if (*&v18[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
    {
      v20 = v18;
    }

    v21 = swift_task_alloc();
    *(v0 + 144) = v21;
    *v21 = v0;
    v21[1] = sub_10012099C;

    return sub_10011CDE0(v19);
  }

  else
  {

    v23 = *(v0 + 8);

    return v23(0);
  }
}

uint64_t sub_10012099C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_100120AB4, v2, 0);
}

uint64_t sub_100120AB4()
{
  v1 = sub_10011C720(*(v0 + 96), *(v0 + 152));

  if (v1)
  {
    static Logger.updates.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 96);
      v5 = swift_slowAlloc();
      *v5 = 134349056;
      *(v5 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}llu is one of the tv provider apps", v5, 0xCu);
    }

    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);

    (*(v8 + 8))(v6, v7);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_100120D88(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_100120E44;

  return sub_100120588(a1);
}

uint64_t sub_100120E44(char a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100120F90(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100120FB0, v1, 0);
}

uint64_t sub_100120FB0()
{
  receiver = v0[2].receiver;
  v2 = type metadata accessor for UpdatesContext();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 1;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 7;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = receiver;
  v5 = receiver;
  v7 = sub_1001FBBB4(v5, v6);
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v7;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 1;
  v8 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v8 = 0;
  v8[8] = 1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[3].receiver = v9;
  v10 = swift_task_alloc();
  v0[3].super_class = v10;
  *v10 = v0;
  *(v10 + 1) = sub_100121128;

  return sub_10012DE9C(v9);
}

uint64_t sub_100121128(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100121240, v2, 0);
}

uint64_t sub_100121240()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_100121434(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10013F1A8;

  return sub_100120F90(v5);
}

uint64_t sub_1001214F8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for UpdatesContext();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v12 = 0;
  v12[1] = 0;
  v11[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v11[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v11[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 0;
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = v11;
  v16 = [v14 currentProcess];
  v17 = sub_1003FA53C(v13, v16);

  *&v15[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v17;
  if (a3)
  {

    v19 = a3;
  }

  else
  {
    v19 = sub_1001FBBB4(v17, v18);
  }

  *&v15[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v19;
  v15[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v20 = &v15[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v20 = 0;
  v20[8] = 1;
  v26.receiver = v15;
  v26.super_class = v10;
  v21 = a3;
  v22 = objc_msgSendSuper2(&v26, "init");
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v3;
  v24[5] = v22;
  v24[6] = a1;
  v24[7] = a2;

  sub_10019F02C(0, 0, v9, &unk_1004373F8, v24);
}

uint64_t sub_100121780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100085384;

  return sub_100133A98(a5, a6, a7, _swiftEmptyArrayStorage);
}

uint64_t sub_1001218C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for Logger();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for AccountClientIdentifier();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for ClientInfo();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_100121A44, 0, 0);
}

uint64_t sub_100121A44()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v19 = *(v0 + 184);
  v20 = *(v0 + 216);
  v6 = type metadata accessor for UpdatesContext();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v8 = 0;
  v8[1] = 0;
  v7[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v7[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v7[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 1;
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = v7;
  v12 = [v10 currentProcess];
  v13 = sub_1003FA53C(v9, v12);

  *&v11[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v13;
  v15 = sub_1001FBBB4(v13, v14);

  *&v11[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v15;
  v11[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v16 = &v11[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v16 = 0;
  v16[8] = 1;
  *(v0 + 136) = v11;
  *(v0 + 144) = v6;
  *(v0 + 240) = objc_msgSendSuper2((v0 + 136), "init");
  static AccountClientIdentifier.production.getter();
  (*(v4 + 16))(v5, v3, v19);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v4 + 8))(v3, v19);
  *(v0 + 248) = sub_1000D6694(v2);
  (*(v1 + 8))(v2, v20);
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = sub_100121D08;

  return sub_1000C8E90(v0 + 56, 0, 0);
}

uint64_t sub_100121D08()
{
  v2 = *v1;

  v3 = *(v2 + 248);
  if (v0)
  {

    v4 = sub_100121E48;
  }

  else
  {

    v4 = sub_100121FAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100121E48()
{
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_100005518(v0 + 56, &unk_10059CB80);
  static Logger.updates.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to load bag", v8, 2u);
  }

  (*(v6 + 8))(v5, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100121FAC()
{
  sub_1000056B8((v0 + 56), v0 + 16);
  sub_1000056D0(v0 + 16, v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_100122060;
  v2 = *(v0 + 240);

  return sub_100133DF4(v2, v0 + 96);
}

uint64_t sub_100122060()
{
  v1 = *v0;

  sub_100005518(v1 + 96, &unk_10059CB80);

  return _swift_task_switch(sub_100122180, 0, 0);
}

uint64_t sub_100122180()
{
  sub_100005A00(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012226C()
{
  v1 = objc_opt_self();
  if (sub_1003D54CC() || sub_1003D5FC8())
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1003D5620(v1, 1);
    v4 = type metadata accessor for UpdatesContext();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
    *v6 = 0;
    v6[1] = 0;
    v5[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
    v5[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
    *&v5[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 3;
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = v5;
    v10 = [v8 currentProcess];
    v11 = sub_1003FA53C(v7, v10);

    *&v9[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v11;
    v13 = sub_1001FBBB4(v11, v12);

    *&v9[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v13;
    v9[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
    v14 = &v9[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
    *v14 = 0;
    v14[8] = 1;
    *(v0 + 56) = v9;
    *(v0 + 64) = v4;
    v15 = objc_msgSendSuper2((v0 + 56), "init");
    *(v0 + 80) = v15;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v16 = swift_task_alloc();
    *(v0 + 88) = v16;
    *v16 = v0;
    v16[1] = sub_1001224D0;

    return sub_100133DF4(v15, v0 + 16);
  }
}

uint64_t sub_1001224D0()
{
  v1 = *v0;

  sub_100005518(v1 + 16, &unk_10059CB80);

  return _swift_task_switch(sub_1001225F0, 0, 0);
}

uint64_t sub_1001225F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100122684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100086B9C;

  return sub_10013BCD0();
}

uint64_t sub_100122758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;

  a5(0, 0, v10, a4, v12);
}

void sub_100122868(void *a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v3 = sub_100085D40(&qword_10059CB40);
  v4 = __chkstk_darwin(v3 - 8);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v62 = &v51 - v7;
  __chkstk_darwin(v6);
  v9 = &v51 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v51 - v15;
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v70 = _swiftEmptyArrayStorage;
  objc_opt_self();
  v19 = sub_1003D60B4();
  v55 = v11;
  v58 = v18;
  if (v19)
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v11 + 32);
    v21(v9, v16, v10);
    v63 = *(v11 + 56);
    v63(v9, 0, 1, v10);
    v21(v18, v9, v10);
  }

  else
  {
    v63 = *(v11 + 56);
    v63(v9, 1, 1, v10);
    Date.init(timeIntervalSinceNow:)();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100005518(v9, &qword_10059CB40);
    }
  }

  v66 = type metadata accessor for MediaAPIUpdate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [a1 connection];
  v24 = sub_1002D4C68(ObjCClassFromMetadata, v23, 0);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v51 = v24;
  v26 = [v24 allMemoryEntitiesWithProperties:isa];

  sub_10009FAD4(0, &qword_10059CC48);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_39:
    v53 = _swiftEmptyArrayStorage;
LABEL_40:

    (*(v55 + 8))(v58, v10);
    *v52 = v53;
    return;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_39;
  }

LABEL_7:
  if (v28 >= 1)
  {
    v29 = 0;
    v54 = "ate";
    v65 = v27 & 0xC000000000000001;
    v60 = (v55 + 48);
    v61 = v55 + 56;
    v56 = (v55 + 8);
    v57 = (v55 + 32);
    v53 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v65)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v27 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v33 = v32;
        v34 = v27;
        v35 = sub_10017A4F8();
        v36 = String._bridgeToObjectiveC()();
        v37 = sub_10023E590(v33, v36);

        if (v37)
        {
          v38 = v64;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = 0;
        }

        else
        {
          v39 = 1;
          v38 = v64;
        }

        v63(v38, v39, 1, v10);
        v40 = v38;
        v41 = v62;
        sub_100117568(v40, v62);
        if ((*v60)(v41, 1, v10) == 1)
        {

          sub_100005518(v41, &qword_10059CB40);
LABEL_29:
          v27 = v34;
          goto LABEL_11;
        }

        v42 = v59;
        (*v57)(v59, v41, v10);
        if ((static Date.> infix(_:_:)() & 1) == 0)
        {
          (*v56)(v42, v10);
LABEL_28:

          goto LABEL_29;
        }

        if (v35 != 1)
        {
          (*v56)(v59, v10);
          goto LABEL_28;
        }

        v43 = String._bridgeToObjectiveC()();
        v44 = sub_10023E604(v33, v43);

        v27 = v34;
        if (v44)
        {
          v45 = String._bridgeToObjectiveC()();
          v46 = sub_10023E0F8(v33, v45);

          if (v46)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v67 = 0u;
            v68 = 0u;
          }

          v69[0] = v67;
          v69[1] = v68;
          if (!*(&v68 + 1))
          {
            (*v56)(v59, v10);

            sub_100005518(v69, &unk_10059CC50);
            goto LABEL_11;
          }

          sub_100085D40(&qword_10059D9B8);
          if (swift_dynamicCast())
          {
            v47 = objc_allocWithZone(UpdateItemMetrics);
            v48 = Dictionary._bridgeToObjectiveC()().super.isa;

            v49 = [v47 initWithData:v48];

            if (v49)
            {
              v50 = v49;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              (*v56)(v59, v10);
              v53 = v70;
              goto LABEL_29;
            }
          }
        }

        (*v56)(v59, v10);
      }

LABEL_11:
      if (v28 == ++v29)
      {
        goto LABEL_40;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1001230A4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100123164, v1, 0);
}

uint64_t sub_100123164()
{
  receiver = v0[2].receiver;
  v2 = type metadata accessor for UpdatesContext();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = receiver;
  v5 = receiver;
  v7 = sub_1001FBBB4(v5, v6);
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v7;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v8 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v8 = 0;
  v8[8] = 1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[4].super_class = v9;
  v10 = swift_task_alloc();
  v0[5].receiver = v10;
  *v10 = v0;
  v10[1] = sub_1001232D8;

  return sub_10012C048(v9);
}

uint64_t sub_1001232D8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001233F0, v2, 0);
}

uint64_t sub_1001233F0()
{
  v1 = *(v0 + 72);
  sub_10013A4B4(*(v0 + 88), 0xD000000000000014, 0x8000000100450820, v1);
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2050;
    *(v7 + 14) = v5;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Refresh update count returning count: %{public}ld", v7, 0x16u);
    sub_100005518(v8, &unk_10059C250);

    v11 = *(v0 + 72);
  }

  else
  {
    v11 = v3;
    v3 = *(v0 + 72);
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 48);

  (*(v13 + 8))(v12, v14);

  v15 = *(v0 + 8);
  v16 = *(v0 + 88);

  return v15(v16);
}

uint64_t sub_100123744(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100123808;

  return sub_1001230A4(v5);
}

uint64_t sub_100123808(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 32), a1, 0);
  }

  _Block_release(*(v6 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1001239BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v8 = type metadata accessor for Logger();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100123A84, a6, 0);
}

uint64_t sub_100123A84()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = type metadata accessor for UpdatesContext();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v5 = 0;
  v5[1] = 0;
  v4[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v4[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v4[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 8;
  *&v4[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v2;
  v6 = v2;
  v8 = sub_1001FBBB4(v6, v7);
  *&v4[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v8;
  v4[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v9 = &v4[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v9 = v1;
  v9[8] = 0;
  *(v0 + 56) = v4;
  *(v0 + 64) = v3;
  v10 = objc_msgSendSuper2((v0 + 56), "init");
  *(v0 + 120) = v10;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_100123C10;

  return sub_100133DF4(v10, v0 + 16);
}

uint64_t sub_100123C10()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  sub_100005518(v1 + 16, &unk_10059CB80);

  return _swift_task_switch(sub_100123D4C, v2, 0);
}

uint64_t sub_100123D4C()
{
  v1 = v0[15];
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(v6 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v7;
    v11 = v10;
    sub_100005518(v9, &unk_10059C250);

    v12 = v0[15];
  }

  else
  {
    v12 = v3;
    v3 = v0[15];
  }

  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];

  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100124074(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_100085D40(&qword_10059C3E0);
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a3);
  v8 = a2;

  return _swift_task_switch(sub_100124144, a4, 0);
}

uint64_t sub_100124144()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v8 = sub_10013BA2C(&qword_10059DC08, v7, type metadata accessor for UpdatesManager_Swift);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v4;
  v9[5] = v5;
  v9[6] = v3;

  sub_10019F02C(0, 0, v2, &unk_100437598, v9);

  v1[2](v1, 0);
  _Block_release(v1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001242B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1001242D8, 0, 0);
}

uint64_t sub_1001242D8()
{
  v1 = [objc_allocWithZone(type metadata accessor for UpdatesContext()) init];
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10012438C;

  return sub_10012C048(v1);
}

uint64_t sub_10012438C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1001244A4, v2, 0);
}

uint64_t sub_1001244A4()
{
  v1 = *(v0 + 48);
  sub_10013A4B4(*(v0 + 64), *(v0 + 32), *(v0 + 40), v1);

  return _swift_task_switch(sub_10012451C, 0, 0);
}

uint64_t sub_100124668(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_100124688, v1, 0);
}

uint64_t sub_100124688()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for UpdatesContext();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v1;
  v5 = v1;
  v7 = sub_1001FBBB4(v5, v6);
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v7;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 1;
  v8 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v8 = 0;
  v8[8] = 1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v9 = objc_msgSendSuper2((v0 + 56), "init");
  *(v0 + 88) = v9;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_100124814;

  return sub_100133DF4(v9, v0 + 16);
}

uint64_t sub_100124814(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(v2 + 104) = a1;

  sub_100005518(v2 + 16, &unk_10059CB80);

  return _swift_task_switch(sub_100124944, v3, 0);
}

uint64_t sub_100124944()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_100124B38(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10013F1A8;

  return sub_100124668(v5);
}

uint64_t sub_100124BFC(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_100124C1C, v1, 0);
}

uint64_t sub_100124C1C()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for UpdatesContext();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 1;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v1;
  v5 = v1;
  v7 = sub_1001FBBB4(v5, v6);
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v7;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 1;
  v8 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v8 = 0;
  v8[8] = 1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v9 = objc_msgSendSuper2((v0 + 56), "init");
  *(v0 + 88) = v9;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_100124DA8;

  return sub_100133DF4(v9, v0 + 16);
}

uint64_t sub_100124DA8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(v2 + 104) = a1;

  sub_100005518(v2 + 16, &unk_10059CB80);

  return _swift_task_switch(sub_10013F1D0, v3, 0);
}

uint64_t sub_100125064(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10013F1A8;

  return sub_100124BFC(v5);
}

uint64_t sub_100125128(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for Logger();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001251E8, v1, 0);
}

uint64_t sub_1001251E8()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for UpdatesContext();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 1;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 2;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v1;
  v5 = v1;
  v7 = sub_1001FBBB4(v5, v6);
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v7;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v8 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v8 = 0;
  v8[8] = 1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v9 = objc_msgSendSuper2((v0 + 56), "init");
  *(v0 + 112) = v9;
  static Logger.updates.getter();
  v10 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = *&v10[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
    *(v13 + 4) = v15;
    *v14 = v15;
    v16 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ Refreshing from server for reloadManagedUpdates", v13, 0xCu);
    sub_100005518(v14, &unk_10059C250);
  }

  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 88);

  (*(v18 + 8))(v17, v19);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_100125478;

  return sub_100133DF4(v10, v0 + 16);
}

uint64_t sub_100125478(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(v2 + 128) = a1;

  sub_100005518(v2 + 16, &unk_10059CB80);

  return _swift_task_switch(sub_1001255A8, v3, 0);
}

uint64_t sub_1001255A8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_1001257A4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100125868;

  return sub_100125128(v5);
}

uint64_t sub_100125868()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_10009FAD4(0, &qword_10059DCF8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 32);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100125A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return _swift_task_switch(sub_100125A48, 0, 0);
}

uint64_t sub_100125A48()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100125AF4;
  v2 = *(v0 + 64);

  return sub_100133DF4(v2, v0 + 16);
}

uint64_t sub_100125AF4(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 80) = a1;

  sub_100005518(v2 + 16, &unk_10059CB80);

  return _swift_task_switch(sub_100125C0C, 0, 0);
}

uint64_t sub_100125C0C()
{
  v1 = (v0[8] + OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler);
  if (*v1)
  {
    (*v1)(v0[10], 0);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100125CBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a3;
  v13 = a3;

  sub_10019F02C(0, 0, v10, a5, v12);
}

uint64_t sub_100125DCC(char a1)
{
  *(v2 + 40) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 16) = v3;
  *(v2 + 24) = *(v3 - 8);
  *(v2 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_100125E8C, v1, 0);
}

uint64_t sub_100125E8C()
{
  v18 = v0;
  static Logger.updates.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  if (v3)
  {
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    if (v7)
    {
      v10 = 0x64656C62616E65;
    }

    else
    {
      v10 = 0x64656C6261736964;
    }

    if (v7)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE800000000000000;
    }

    v12 = sub_1001AD0D8(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Setting auto updates to %{public}s", v8, 0xCu);
    sub_100005A00(v9);
  }

  (*(v5 + 8))(v4, v6);
  v13 = *(v0 + 40);
  v14 = objc_opt_self();
  sub_1003D61DC(v14, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001261D0(char a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10013F118;

  return sub_100125DCC(a1);
}

uint64_t sub_10012628C()
{
  v1 = v0;
  v2 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for Logger();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCTransaction();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000039;
  *(v8 + 24) = 0x80000001004507E0;
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  sub_1003204A0(v9, v10);

  v11 = type metadata accessor for UpdatesContext();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v13 = 0;
  v13[1] = 0;
  v12[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v12[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v12[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 2;
  v14 = objc_opt_self();
  v15 = objc_opt_self();
  v16 = v12;
  v17 = [v15 currentProcess];
  v18 = sub_1003FA53C(v14, v17);

  *&v16[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v18;
  v20 = sub_1001FBBB4(v18, v19);

  *&v16[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v20;
  v16[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v21 = &v16[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v21 = 0;
  v21[8] = 1;
  v40.receiver = v16;
  v40.super_class = v11;
  v22 = objc_msgSendSuper2(&v40, "init");
  objc_opt_self();
  if (sub_10030B504())
  {
    static Logger.updates.getter();
    v23 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v1;
      v27 = v26;
      v28 = swift_slowAlloc();
      v37 = v5;
      v29 = v28;
      *v27 = 138412290;
      v30 = *&v23[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
      *(v27 + 4) = v30;
      *v28 = v30;
      v31 = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Setup following migration", v27, 0xCu);
      sub_100005518(v29, &unk_10059C250);
      v5 = v37;

      v1 = v38;
    }

    (*(v39 + 8))(v7, v5);
    v32 = &unk_1004373E8;
  }

  else
  {
    v32 = &unk_1004373D8;
  }

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v1;
  v34[5] = v22;
  v34[6] = v8;

  sub_10019F02C(0, 0, v4, v32, v34);
}

uint64_t sub_10012670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001267CC, 0, 0);
}

uint64_t sub_1001267CC()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100126878;
  v2 = *(v0 + 64);

  return sub_100133DF4(v2, v0 + 16);
}

uint64_t sub_100126878(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 104) = a1;

  sub_100005518(v2 + 16, &unk_10059CB80);

  return _swift_task_switch(sub_100126990, 0, 0);
}

uint64_t sub_100126990()
{
  v1 = v0[8];
  static Logger.updates.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(v7 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2050;
    if (v6 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v10;

    *(v8 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Force update sync complete with %{public}ld updates", v8, 0x16u);
    sub_100005518(v9, &unk_10059C250);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100126B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100126C1C;

  return sub_10012C048(a5);
}

uint64_t sub_100126C1C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100126D34, v2, 0);
}

uint64_t sub_100126D34()
{
  sub_10013A4B4(*(v0 + 40), 0x6F6974617267694DLL, 0xE90000000000006ELL, *(v0 + 24));

  return _swift_task_switch(sub_100126DB8, 0, 0);
}

uint64_t sub_100126E08(void *a1)
{
  v2 = v1;
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UpdatesContext();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v13 = 0;
  v13[1] = 0;
  v12[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v12[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v12[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 0;
  *&v12[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = a1;
  v14 = a1;
  v16 = sub_1001FBBB4(v14, v15);
  *&v12[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v16;
  v12[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v17 = &v12[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v17 = 0;
  v17[8] = 1;
  v29.receiver = v12;
  v29.super_class = v11;
  v18 = objc_msgSendSuper2(&v29, "init");
  static Logger.updates.getter();
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = *&v19[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
    *(v22 + 4) = v24;
    *v23 = v24;
    v25 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Show Pending Updates Badge", v22, 0xCu);
    sub_100005518(v23, &unk_10059C250);
  }

  (*(v8 + 8))(v10, v7);
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v2;
  v27[5] = v19;

  sub_10019F02C(0, 0, v6, &unk_1004373C8, v27);
}

uint64_t sub_10012716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10012720C;

  return sub_10012C048(a5);
}

uint64_t sub_10012720C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100127324, v2, 0);
}

uint64_t sub_100127324()
{
  sub_10013A4B4(*(v0 + 40), 0xD00000000000001ALL, 0x80000001004507C0, *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001273F0(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_100085D40(&unk_10059DC70);
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = type metadata accessor for AccountClientIdentifier();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v6 = type metadata accessor for ClientInfo();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[39] = v7;
  v3[40] = *(v7 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return _swift_task_switch(sub_1001275EC, v2, 0);
}

uint64_t sub_1001275EC()
{
  v42 = v0;
  v1 = *(v0 + 216);
  v2 = type metadata accessor for UpdatesContext();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 5;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v1;
  v5 = v1;
  v7 = sub_1001FBBB4(v5, v6);
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v7;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 1;
  v8 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v8 = 0;
  v8[8] = 1;
  *(v0 + 184) = v3;
  *(v0 + 192) = v2;
  v9 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 344) = v9;
  static Logger.updates.getter();
  v10 = v9;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v38 = *(v0 + 320);
    v39 = *(v0 + 312);
    v40 = *(v0 + 336);
    v13 = *(v0 + 208);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41 = v16;
    *v14 = 138412546;
    v17 = *&v10[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
    *(v14 + 4) = v17;
    *v15 = v17;
    *(v14 + 12) = 2082;
    *(v0 + 200) = v13;
    v18 = v17;
    sub_100085D40(&unk_10059DCA0);
    sub_10009F9D4(&qword_10059C4C0, &unk_10059DCA0);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = sub_1001AD0D8(v19, v20, &v41);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Starting update all with order: %{public}s", v14, 0x16u);
    sub_100005518(v15, &unk_10059C250);

    sub_100005A00(v16);

    v22 = *(v38 + 8);
    v22(v40, v39);
  }

  else
  {
    v23 = *(v0 + 336);
    v24 = *(v0 + 312);
    v25 = *(v0 + 320);

    v22 = *(v25 + 8);
    v22(v23, v24);
  }

  *(v0 + 352) = v22;
  v27 = *(v0 + 296);
  v26 = *(v0 + 304);
  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v32 = *(v0 + 256);
  v33 = *(v0 + 224);
  static AccountClientIdentifier.production.getter();
  (*(v31 + 16))(v30, v29, v32);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v31 + 8))(v29, v32);
  *(v0 + 360) = sub_1000D6694(v26);
  (*(v27 + 8))(v26, v28);
  v35 = sub_10013BA2C(&qword_10059DC08, v34, type metadata accessor for UpdatesManager_Swift);
  v36 = swift_task_alloc();
  *(v0 + 368) = v36;
  *v36 = v0;
  v36[1] = sub_100127A7C;

  return sub_1000C8E90(v0 + 144, v33, v35);
}

uint64_t sub_100127A7C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = sub_10012810C;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_100127BA4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100127BA4()
{
  v1 = v0[43];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[21];
  v6 = v0[22];
  sub_100005B60(v0 + 18, v5);
  v7 = v1;
  v9 = sub_1000C56EC(v5, v6, v8);
  v10 = objc_allocWithZone(type metadata accessor for PerformUpdatesTask());

  v12 = sub_1000A81D4(v11, v7, v9);
  v0[48] = v12;
  v0[2] = v0;
  v0[3] = sub_100127DC4;
  swift_continuation_init();
  v0[17] = v4;
  v13 = sub_100005F38(v0 + 14);
  v14 = v12;
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v2 + 32))(v13, v3, v4);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100147F5C;
  v0[13] = &unk_10050EDD0;
  [v14 runTaskWithCompletionHandler:?];
  (*(v2 + 8))(v13, v4);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100127DC4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = *(v1 + 224);

    v4 = sub_1001281C8;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 224);
    v4 = sub_100127EEC;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100127EEC()
{
  v1 = v0[43];
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Successfully finished update all with order", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v10 = v0[48];
  v12 = v0[43];
  v11 = v0[44];
  v13 = v0[41];
  v14 = v0[39];

  v11(v13, v14);
  v15 = sub_1002D8550(v10);

  v16 = &v10[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_output];
  os_unfair_lock_lock(&v10[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_output]);
  v17 = *(v16 + 1);

  os_unfair_lock_unlock(v16);

  sub_100005A00((v0 + 18));

  v18 = v0[1];

  return v18(v15, v17);
}

uint64_t sub_10012810C()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1001281C8()
{
  v1 = v0[48];
  v2 = v0[43];
  swift_willThrow();

  sub_100005A00((v0 + 18));

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_10012842C(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  v7 = a2;

  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_100128510;

  return sub_1001273F0(v6, v7);
}

uint64_t sub_100128510(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 32);
      v9 = _convertErrorToNSError(_:)();

      (v8)[2](v8, 0, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else
  {
    if (v5)
    {
      v10 = *(v4 + 32);
      sub_10009FAD4(0, &qword_10059C4D0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      (v10)[2](v10, a1 & 1, isa, 0);
      _Block_release(v10);
    }
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_100128744(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100128768, v2, 0);
}

uint64_t sub_100128768()
{
  v2 = v0[4];
  v1 = v0[5];
  objc_opt_self();
  v0[7] = sub_1002BB3F0();
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100128888;

  return (sub_1001BA0F8)(v0 + 2, sub_10013D848, v3);
}

uint64_t sub_100128888()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {

    v5 = sub_100128A20;
  }

  else
  {

    v5 = sub_100128A08;
  }

  return _swift_task_switch(v5, v4, 0);
}

void sub_100128A3C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_10040539C(a1, v4);

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_100128C58(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100128D2C;

  return sub_100128744(v4, v6);
}

uint64_t sub_100128D2C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000A7F1C(a1, a2);
  }

  v8 = *(v5 + 24);
  (v8)[2](v8, isa);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100128EC4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100128EE4, v1, 0);
}

uint64_t sub_100128EE4()
{
  receiver = v0[2].receiver;
  v2 = type metadata accessor for UpdatesContext();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 0;
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = receiver;
  v5 = receiver;
  v7 = sub_1001FBBB4(v5, v6);
  *&v3[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v7;
  v3[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
  v8 = &v3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
  *v8 = 0;
  v8[8] = 1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[3].receiver = v9;
  v10 = swift_task_alloc();
  v0[3].super_class = v10;
  *v10 = v0;
  *(v10 + 1) = sub_100129058;

  return sub_10012DE9C(v9);
}

uint64_t sub_100129058(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100129170, v2, 0);
}

uint64_t sub_100129170()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100129364(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100129428;

  return sub_100128EC4(v5);
}

uint64_t sub_100129428(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    sub_10009FAD4(0, &qword_10059DCF8);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v3 + 32);
  (v7)[2](v7, v6.super.isa);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1001295BC()
{
  *(v1 + 112) = v0;
  sub_100085D40(&qword_10059C3E0);
  *(v1 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100129658, 0, 0);
}

uint64_t sub_100129658()
{
  v1 = type metadata accessor for LogKey();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC9appstored6LogKey_activity] = 0;
  v3 = &v2[OBJC_IVAR____TtC9appstored6LogKey_activityState];
  *v3 = 0;
  v3[1] = 0;
  v0[1].receiver = sub_1001C08F8;
  v0[1].super_class = 0;
  v0[2].receiver = sub_1001C08F0;
  v0[2].super_class = 0;
  v0[3].receiver = sub_1001C08F4;
  v0[3].super_class = 0;
  sub_100085D40(&unk_10059F8F0);
  sub_10009F9D4(&unk_10059DCC0, &unk_10059F8F0);
  sub_100003B3C();
  v4 = Sequence<>.joined(separator:)();
  v6 = v5;
  v7._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  String.append(_:)(v8);
  v9._object = 0x8000000100450760;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v9);
  v10 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v10 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = 47;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = 0xE100000000000000;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = v4;
  v14._object = v6;
  String.append(_:)(v14);

  v15 = &v2[OBJC_IVAR____TtC9appstored6LogKey_value];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC9appstored6LogKey_parentActivity] = 0;
  v2[OBJC_IVAR____TtC9appstored6LogKey_hasCategory] = 0;
  v0[6].receiver = v2;
  v0[6].super_class = v1;
  v16 = objc_msgSendSuper2(v0 + 6, "init");
  v17 = v16;
  v0[8].receiver = v16;
  if (*&v16[OBJC_IVAR____TtC9appstored6LogKey_parentActivity])
  {
    v18 = v16;
  }

  objc_opt_self();
  v0[8].super_class = sub_1002BB3F0();
  v19 = swift_allocObject();
  v0[9].receiver = v19;
  *(v19 + 16) = v17;
  v20 = v17;
  v21 = swift_task_alloc();
  v0[9].super_class = v21;
  *v21 = v0;
  *(v21 + 1) = sub_10012997C;

  return sub_1000DAA98(sub_10013D760, v19);
}

uint64_t sub_10012997C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[8] = v3;
  v6[9] = a1;
  v6[10] = a2;
  v6[11] = v2;

  v7 = v5[17];
  if (v2)
  {

    v8 = sub_100129C18;
  }

  else
  {

    v6[20] = a2;
    v8 = sub_100129AF4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100129AF4()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    if (*(v0 + 72))
    {
      v3 = *(v0 + 112);
      v2 = *(v0 + 120);
      v4 = type metadata accessor for TaskPriority();
      (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
      v5 = swift_allocObject();
      v5[2] = 0;
      v5[3] = 0;
      v5[4] = v3;
      v5[5] = v1;

      sub_10019F02C(0, 0, v2, &unk_1004373B8, v5);
    }

    else
    {
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100129C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100129C80@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v19 = 0;
  v18 = _swiftEmptyArrayStorage;
  type metadata accessor for MediaAPIUpdateEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [a1 connection];
  v8 = sub_1002D3F5C(ObjCClassFromMetadata, v7, 0);

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = &v19;
  v9[5] = &v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10013D83C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000BB2B4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014BEFC;
  aBlock[3] = &unk_10050ED80;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;

  [v8 enumeratePersistentIDsUsingBlock:v11];

  _Block_release(v11);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v15 = v19;
    v16 = v18;

    *a3 = v15;
    a3[1] = v16;
  }

  return result;
}

void sub_100129E70(uint64_t a1, int a2, int a3, id a4, void *a5, _BYTE *a6, char **a7)
{
  v12 = [a4 connection];
  v25 = [objc_allocWithZone(type metadata accessor for MediaAPIUpdateEntity()) initWithPersistentID:a1 onConnection:v12];

  if ([v25 existsInDatabase] && sub_100350204(a4, v25, a5) && (*a6 = 1, (v13 = sub_100340328(v25, @"bundle_id")) != 0))
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1001AC6FC(0, *(v18 + 2) + 1, 1, v18);
      *a7 = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    v22 = v25;
    if (v21 >= v20 >> 1)
    {
      *a7 = sub_1001AC6FC((v20 > 1), v21 + 1, 1, v18);
      v22 = v25;
    }

    v23 = *a7;
    *(v23 + 2) = v21 + 1;
    v24 = &v23[16 * v21];
    *(v24 + 4) = v15;
    *(v24 + 5) = v17;
  }

  else
  {
  }
}

uint64_t sub_10012A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10012A030, 0, 0);
}

uint64_t sub_10012A030()
{
  v1 = [objc_allocWithZone(type metadata accessor for UpdatesContext()) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10012A104;
  v3 = v0[3];

  return sub_100133A98(v1, 0xD000000000000010, 0x8000000100450780, v3);
}

uint64_t sub_10012A104()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_10012A25C;
  v4 = *(v1 + 32);

  return sub_10012C048(v4);
}

uint64_t sub_10012A25C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_10012A374, v2, 0);
}

uint64_t sub_10012A374()
{
  sub_10013A4B4(*(v0 + 56), 0xD00000000000001ELL, 0x80000001004507A0, *(v0 + 32));

  return _swift_task_switch(sub_10012A3F8, 0, 0);
}

uint64_t sub_10012A3F8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012A5D0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10012A678;

  return sub_1001295BC();
}

uint64_t sub_10012A678()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10012A7B4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(type metadata accessor for UpdatesContext()) init];
  static Logger.updates.getter();
  v14 = v13;

  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v36 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v3;
    v23 = v22;
    *v19 = 138412546;
    v24 = *&v15[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
    v39 = a1;
    v40 = v22;
    *(v19 + 4) = v24;
    *v21 = v24;
    *(v19 + 12) = 2082;
    v25 = v24;
    v35 = v15;
    v37 = a2;
    sub_100085D40(&unk_10059DCA0);
    v33 = v9;
    sub_10009F9D4(&qword_10059C4C0, &unk_10059DCA0);
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = sub_1001AD0D8(v26, v27, &v40);
    v15 = v35;

    *(v19 + 14) = v28;
    a2 = v37;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Cleaning up following removal of apps: %{public}s", v19, 0x16u);
    sub_100005518(v21, &unk_10059C250);
    v8 = v36;

    sub_100005A00(v23);
    v3 = v38;

    (*(v34 + 8))(v12, v33);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a1;
  v30[5] = a2;
  v30[6] = v15;
  v30[7] = v3;

  v31 = a2;

  sub_10019F02C(0, 0, v8, &unk_100437390, v30);
}

uint64_t sub_10012AB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = type metadata accessor for Logger();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v9 = sub_100085D40(&unk_10059DCB0);
  v7[26] = v9;
  v7[27] = *(v9 - 8);
  v7[28] = swift_task_alloc();

  return _swift_task_switch(sub_10012ACB8, 0, 0);
}

uint64_t sub_10012ACB8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  v12 = v1[20];
  v8 = [objc_allocWithZone(CleanupManager) init];
  v1[29] = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[30] = isa;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_10012AE98;
  swift_continuation_init();
  v1[17] = v7;
  v10 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v10, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10012B4B8;
  v1[13] = &unk_10050ECB8;
  sub_1002CED30(v8, isa, v12, v3);
  (*(v5 + 8))(v10, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_10012AE98()
{

  return _swift_task_switch(sub_10012AF78, 0, 0);
}

uint64_t sub_10012AF78()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);

  if (v2 < 1)
  {

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v3 = *(v0 + 168);
    static Logger.updates.getter();
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 168);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      v10 = *(v7 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
      *(v8 + 4) = v10;
      *v9 = v10;
      *(v8 + 12) = 2050;
      *(v8 + 14) = v2;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Removed %{public}ld uninstalled updates", v8, 0x16u);
      sub_100005518(v9, &unk_10059C250);
    }

    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    v14 = *(v0 + 184);

    (*(v13 + 8))(v12, v14);
    v15 = swift_task_alloc();
    *(v0 + 248) = v15;
    *v15 = v0;
    v15[1] = sub_10012B1B4;
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);

    return sub_100133A98(v16, 0x6D65722073707041, 0xEC0000006465766FLL, v17);
  }
}

uint64_t sub_10012B1B4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 256) = v3;
  *v3 = v2;
  v3[1] = sub_10012B30C;
  v4 = *(v1 + 168);

  return sub_10012C048(v4);
}

uint64_t sub_10012B30C(uint64_t a1)
{
  v2 = *(*v1 + 176);
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10012B424, v2, 0);
}

uint64_t sub_10012B424()
{
  sub_10013A4B4(*(v0 + 264), 0x6D65722073707041, 0xEC0000006465766FLL, *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012B4B8(uint64_t a1)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  sub_100085D40(&unk_10059DCB0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10012B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for Logger();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_100085D40(&unk_10059DCB0);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10012B6B8, 0, 0);
}

uint64_t sub_10012B6B8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = [objc_allocWithZone(CleanupManager) init];
  v1[27] = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[28] = isa;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_10012B890;
  swift_continuation_init();
  v1[17] = v7;
  v10 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v10, v5, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10012B4B8;
  v1[13] = &unk_10050EF88;
  sub_1002CEF04(v8, isa, v3);
  (*(v6 + 8))(v10, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_10012B890()
{

  return _swift_task_switch(sub_10012B970, 0, 0);
}

uint64_t sub_10012B970()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);

  if (v2 < 1)
  {

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for UpdatesContext()) init];
    *(v0 + 232) = v3;
    static Logger.updates.getter();
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
      *(v7 + 4) = v9;
      *v8 = v9;
      *(v7 + 12) = 2050;
      *(v7 + 14) = v2;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Corrected %{public}ld installed updates", v7, 0x16u);
      sub_100005518(v8, &unk_10059C250);
    }

    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 168);

    (*(v12 + 8))(v11, v13);
    v14 = swift_task_alloc();
    *(v0 + 240) = v14;
    *v14 = v0;
    v14[1] = sub_10012BBBC;
    v15 = *(v0 + 152);

    return sub_100133A98(v4, 0xD000000000000016, 0x8000000100450880, v15);
  }
}

uint64_t sub_10012BBBC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 248) = v3;
  *v3 = v2;
  v3[1] = sub_10012BD14;
  v4 = *(v1 + 232);

  return sub_10012C048(v4);
}

uint64_t sub_10012BD14(uint64_t a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10012BE2C, v2, 0);
}

uint64_t sub_10012BE2C()
{
  sub_10013A4B4(*(v0 + 256), 0xD000000000000016, 0x8000000100450880, *(v0 + 232));

  return _swift_task_switch(sub_10012BEB0, 0, 0);
}

uint64_t sub_10012BEB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012C048(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10012C1C8, v1, 0);
}

uint64_t sub_10012C1C8()
{
  objc_opt_self();
  if (sub_1003D5FC8())
  {
    if ([objc_opt_self() isAutomaticUpdateAuthorizationEnabled])
    {
      v1 = String._bridgeToObjectiveC()();
      v2 = CFPreferencesCopyAppValue(@"AutomaticUpdateAuthorizations", v1);

      v3 = sub_10013A314(v2);
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v0[22] = v3;
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[12];
  v8 = swift_allocObject();
  v0[23] = v8;
  *(v8 + 16) = _swiftEmptyArrayStorage;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v0[24] = v9;
  v10 = *(v5 + 8);
  v0[25] = v10;
  v0[26] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  objc_opt_self();
  v0[27] = sub_1002BB3F0();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  v12 = swift_allocObject();
  v0[28] = v12;
  *(v12 + 16) = sub_10013D67C;
  *(v12 + 24) = v11;

  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_10012C434;

  return sub_1001B8A64(sub_1000E22A0, v12);
}

uint64_t sub_10012C434()
{
  v2 = *v1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 88);
  if (v0)
  {

    v5 = sub_10013F134;
  }

  else
  {

    v5 = sub_10012C5E0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10012C5E0()
{
  v114 = v0;
  v1 = [objc_opt_self() sharedDatabaseContext];
  v0[8] = 0;
  v99 = v1;
  v2 = [v1 startAccessingReturningError:v0 + 8];
  v3 = v0[8];
  v106 = v0;
  if (v2)
  {
    v4 = v0[23];
    swift_beginAccess();
    v5 = *(v4 + 16);
    v112 = *(v5 + 16);
    if (v112)
    {
      v6 = v0[22];
      v7 = v0[14];
      v101 = v0[10];
      v110 = objc_opt_self();
      v100 = OBJC_IVAR____TtC9appstored14UpdatesContext_logKey;
      v96 = v6;
      v98 = v6 + 56;
      v107 = (v7 + 8);
      v108 = v5 + 32;
      v8 = v3;

      v103 = 0;
      v9 = 0;
      v102 = v5;
      while (1)
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
        }

        v29 = (v108 + 16 * v9);
        v30 = *v29;
        v31 = v29[1];

        v32 = String._bridgeToObjectiveC()();
        v33 = [v110 proxyForBundleID:v32];

        if (!v33)
        {
          goto LABEL_18;
        }

        if (!sub_1003D0F94(v33))
        {
          break;
        }

        v35 = v0[22];
        v36 = sub_1003D3584(v33, v34);
        v37 = v36;
        if (!v35)
        {
          goto LABEL_9;
        }

        if (v35 == 1)
        {
        }

        else
        {
          v53 = [v36 bundleIdentifier];
          if (!v53)
          {
            goto LABEL_9;
          }

          v54 = v53;
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          if (sub_10040C694(v37))
          {
            if (!*(v96 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v58 = Hasher._finalize()(), v59 = -1 << *(v96 + 32), v60 = v58 & ~v59, ((*(v98 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0))
            {
LABEL_8:

              v0 = v106;
              v5 = v102;
LABEL_9:

              if (__OFADD__(v103++, 1))
              {
                goto LABEL_49;
              }

              goto LABEL_10;
            }

            v61 = ~v59;
            while (1)
            {
              v62 = (*(v96 + 48) + 16 * v60);
              v63 = *v62 == v55 && v62[1] == v57;
              if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v98 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v0 = v106;
            v5 = v102;
          }

          else
          {
          }
        }

        v64 = v0[10];
        static Logger.updates.getter();

        v65 = v64;
        v40 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();

        v67 = os_log_type_enabled(v40, v66);
        v43 = v0[18];
        v44 = v0[13];
        if (!v67)
        {

          goto LABEL_37;
        }

        v105 = v0[18];
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v97 = v44;
        v70 = swift_slowAlloc();
        v113[0] = v70;
        *v68 = 138412546;
        v71 = *(v101 + v100);
        *(v68 + 4) = v71;
        *v69 = v71;
        *(v68 + 12) = 2082;
        v72 = v71;
        v73 = sub_1001AD0D8(v30, v31, v113);

        *(v68 + 14) = v73;
        _os_log_impl(&_mh_execute_header, v40, v66, "[%@] Found update but was authorized to install it automatically: %{public}s", v68, 0x16u);
        sub_100005518(v69, &unk_10059C250);
        v5 = v102;
        v0 = v106;

        sub_100005A00(v70);

        (*v107)(v105, v97);
LABEL_10:
        if (++v9 == v112)
        {

          goto LABEL_42;
        }
      }

LABEL_18:
      v38 = v0[10];
      static Logger.updates.getter();

      v39 = v38;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v0[17];
      v44 = v0[13];
      if (v42)
      {
        v104 = v0[17];
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v113[0] = v47;
        *v45 = 138412546;
        v48 = *(v101 + v100);
        *(v45 + 4) = v48;
        *v46 = v48;
        *(v45 + 12) = 2082;
        v49 = v48;
        v50 = sub_1001AD0D8(v30, v31, v113);

        *(v45 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Found update that is not installed: %{public}s", v45, 0x16u);
        sub_100005518(v46, &unk_10059C250);
        v5 = v102;
        v0 = v106;

        sub_100005A00(v47);

        v51 = *v107;
        v52 = v104;
      }

      else
      {
LABEL_37:

        v51 = *v107;
        v52 = v43;
      }

      v51(v52, v44);
      goto LABEL_10;
    }

    v74 = v3;
    v103 = 0;
LABEL_42:
    sub_10013CD20(v0[22]);
    [v99 stopAccessing];
  }

  else
  {
    v10 = v0[22];
    v11 = v0[10];
    v12 = v3;
    sub_10013CD20(v10);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.updates.getter();
    v13 = v11;
    swift_errorRetain();
    v0 = v106;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v18 = v106[14];
    v17 = v106[15];
    v19 = v106[13];
    if (v16)
    {
      v111 = v106[13];
      v20 = v106[10];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v113[0] = v109;
      *v21 = 138412546;
      v23 = *(v20 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
      *(v21 + 4) = v23;
      *v22 = v23;
      *(v21 + 12) = 2082;
      swift_getErrorValue();
      v24 = v23;
      v25 = Error.localizedDescription.getter();
      v27 = sub_1001AD0D8(v25, v26, v113);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Error accessing the LS database: %{public}s", v21, 0x16u);
      sub_100005518(v22, &unk_10059C250);
      v0 = v106;

      sub_100005A00(v109);

      (*(v18 + 8))(v17, v111);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v103 = 0;
  }

  v75 = v0[25];
  v76 = v0;
  v77 = v0[21];
  v78 = v0[19];
  v79 = v0[10];
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v81 = v80;
  v75(v77, v78);
  static Logger.updates.getter();
  v82 = v79;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = *(v0 + 24);
    v86 = v0[10];
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 138412802;
    v89 = *(v86 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v87 + 4) = v89;
    *v88 = v89;
    *(v87 + 12) = 2050;
    *(v87 + 14) = v103;
    *(v87 + 22) = 2050;
    *(v87 + 24) = v81 - v85;
    v90 = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "[%@] Current update count: %{public}ld elapsedTime: %{public}f", v87, 0x20u);
    sub_100005518(v88, &unk_10059C250);
  }

  v91 = v76[16];
  v93 = v76[13];
  v92 = v76[14];

  (*(v92 + 8))(v91, v93);

  v94 = v76[1];

  return v94(v103);
}

uint64_t sub_10012D030(void *a1, uint64_t a2)
{
  v3 = a2 + 16;
  type metadata accessor for MediaAPIUpdateEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [a1 connection];
  if (qword_10059B520 != -1)
  {
    swift_once();
  }

  v6 = sub_1002D3F5C(ObjCClassFromMetadata, v5, qword_10059DB58);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10013D684;
  *(v9 + 24) = v8;
  v12[4] = sub_10013F1D4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10011C6BC;
  v12[3] = &unk_10050EC68;
  v10 = _Block_copy(v12);

  [v6 enumerateMemoryEntitiesWithProperties:isa usingBlock:v10];

  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_10012D228(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_10023E644(a1, v6);

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    swift_beginAccess();
    v11 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1001AC6FC(0, *(v11 + 2) + 1, 1, v11);
      *a4 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1001AC6FC((v13 > 1), v14 + 1, 1, v11);
      *a4 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v8;
    *(v15 + 5) = v10;
    swift_endAccess();
  }
}

uint64_t sub_10012D34C()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10012D418, v0, 0);
}

uint64_t sub_10012D418()
{
  v1 = v0[3];
  objc_opt_self();
  v0[7] = sub_1002BB3F0();
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10012D51C;

  return sub_1001B97BC(sub_10013D660, v2);
}

uint64_t sub_10012D51C(uint64_t a1, char a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 56);
  v9 = *(v6 + 16);
  if (v2)
  {

    v10 = sub_10012D7DC;
  }

  else
  {

    *(v7 + 88) = a2;
    *(v7 + 80) = a1;
    v10 = sub_10012D6B0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10012D6B0()
{
  if (*(v0 + 88))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 80);
  }

  static Logger.updates.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current update count is: %{public}ld", v4, 0xCu);
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_10012D7DC()
{
  static Logger.updates.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    *(v3 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Current update count is: %{public}ld", v3, 0xCu);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(0);
}

void sub_10012D8EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MediaAPIUpdateEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = qword_10059B520;
  v6 = @"ROWID";
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_10059DB58;
  v8 = [a1 connection];
  v9 = sub_1002D4220(ObjCClassFromMetadata, v6, v7, v8);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10009FAD4(0, &qword_10059CBB0);
  if (swift_dynamicCast())
  {
    v10 = [v11 integerValue];
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = 0;
}

uint64_t sub_10012DA4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100085D40(&unk_10059D038);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100434780;
  *(v4 + 32) = xmmword_100437190;
  *(v4 + 48) = 3;
  v5 = String._bridgeToObjectiveC()();

  sub_100085D40(&qword_10059DC40);
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() containsPredicateWithProperty:v5 values:v6];

  swift_unknownObjectRelease();

  type metadata accessor for MediaAPIUpdateEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [a1 connection];
  v27 = v7;
  v10 = sub_1002D3F5C(ObjCClassFromMetadata, v9, v7);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v10 allMemoryEntitiesWithProperties:isa];

  sub_10009FAD4(0, &qword_10059CC48);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    goto LABEL_27;
  }

  v14 = v13 & 0xFFFFFFFFFFFFFF8;

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for MediaAPIUpdate();
  if (swift_dynamicCastMetatype())
  {

    goto LABEL_12;
  }

  v15 = a2;
  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    v17 = v14 + 32;
    while (swift_dynamicCastClass())
    {
      v17 += 8;
      if (!--v16)
      {
        goto LABEL_8;
      }
    }

    v13 = v14 | 1;
  }

  else
  {
LABEL_8:
  }

  a2 = v15;
LABEL_12:
  while (!(v13 >> 62))
  {
    v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_14:
    v26 = a2;
    v19 = 0;
    a2 = (v13 & 0xC000000000000001);
    while (1)
    {
      if (a2)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v20 = *(v13 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (sub_10017A580())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v19;
      if (v22 == v18)
      {
        a2 = v26;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    type metadata accessor for MediaAPIUpdate();

    v23 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v13 = v23;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (v18)
  {
    goto LABEL_14;
  }

LABEL_29:

  v24 = sub_10013CB48(_swiftEmptyArrayStorage, sub_10012DE48, 0);

  *a2 = v24;
  return result;
}

id sub_10012DE48@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v4 = *a1;
  *a2 = sub_10017A580();
  a2[1] = v4;

  return v4;
}

uint64_t sub_10012DE9C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10012DF68, v1, 0);
}

uint64_t sub_10012DF68()
{
  if (qword_10059B538 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((*(v0 + 160) & 1) != 0 || (v1 = *(v0 + 56), swift_beginAccess(), !*(v1 + 152)))
  {

    return _swift_task_switch(sub_10012E124, 0, 0);
  }

  else
  {
    v3 = *(v0 + 56);
    v4 = sub_10013BA2C(&qword_10059DC08, v2, type metadata accessor for UpdatesManager_Swift);
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_10012E3A4;
    v6 = *(v0 + 56);

    return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, v4, 0xD000000000000012, 0x80000001004505F0, sub_10013F1CC, v6, &type metadata for () + 8);
  }
}

uint64_t sub_10012E124()
{
  v1 = v0[8];
  v2 = v0[6];
  objc_opt_self();
  v0[12] = sub_1002BB3F0();
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10012E238;

  return (sub_1001B9034)(sub_10013CCF4, v3);
}

uint64_t sub_10012E238(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {

    v6 = sub_10012E994;
  }

  else
  {

    v6 = sub_10012E4D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012E3A4()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10012E4B4, v1, 0);
}

uint64_t sub_10012E4D0()
{
  v1 = v0[15];
  v2 = v0[16];
  if (!v1)
  {

    v1 = _swiftEmptyArrayStorage;
  }

  v0[18] = v2;
  v0[5] = v1;
  objc_opt_self();
  if (sub_1003D5FC8())
  {
    if ([objc_opt_self() isAutomaticUpdateAuthorizationEnabled])
    {
      v3 = String._bridgeToObjectiveC()();
      v4 = CFPreferencesCopyAppValue(@"AutomaticUpdateAuthorizations", v3);

      v5 = sub_10013A314(v4);
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v0[19] = v5;

  return _swift_task_switch(sub_10012E5FC, 0, 0);
}

uint64_t sub_10012E5FC()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 48);
  sub_10013CD10(v2);
  v4 = sub_10013AED0((v0 + 40), &_swiftEmptySetSingleton, v3, v2);
  sub_10013CD20(v2);
  v5 = *(v0 + 40);
  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_33;
  }

LABEL_3:
  v7 = *(v0 + 152);
  sub_10013B8D8(v4, v6, sub_1001621B0, sub_1001B4A38);
  sub_10013CD20(v7);
  v1 = *(v0 + 40);
  if (!(v1 >> 62))
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  while (1)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    v35 = v0;

    if (!v8)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v1 & 0xC000000000000001;
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v0 = v1;
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v13 + 16))
        {
          goto LABEL_29;
        }

        v0 = v1;
        v15 = *(v1 + 8 * v9 + 32);
      }

      v1 = v15;
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = [v15 updateState];

      if (v16 > 4 || ((1 << v16) & 0x19) == 0)
      {
        v14 = __OFADD__(v10++, 1);
        if (v14)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v14 = __OFADD__(v11++, 1);
        if (v14)
        {
          goto LABEL_30;
        }
      }

      ++v9;
      v1 = v0;
      if (v4 == v8)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_33:
    __break(1u);
  }

  v11 = 0;
  v10 = 0;
LABEL_22:
  v18 = v35;
  v19 = v35[6];
  static Logger.updates.getter();
  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v25 = v35[10];
  v24 = v35[11];
  v26 = v35[9];
  if (v23)
  {
    v27 = v35[6];
    v34 = v35[9];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412802;
    v30 = *(v27 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v28 + 4) = v30;
    *v29 = v30;
    *(v28 + 12) = 2050;
    *(v28 + 14) = v11;
    *(v28 + 22) = 2050;
    *(v28 + 24) = v10;
    v31 = v30;

    _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Returning %{public}ld available and %{public}ld recent update(s)", v28, 0x20u);
    sub_100005518(v29, &unk_10059C250);

    v18 = v35;

    (*(v25 + 8))(v24, v34);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
  }

  v32 = v18[1];

  return v32(v1);
}

uint64_t sub_10012E994()
{

  v0[18] = 0;
  v0[5] = _swiftEmptyArrayStorage;
  objc_opt_self();
  v1 = 0;
  if (sub_1003D5FC8())
  {
    if ([objc_opt_self() isAutomaticUpdateAuthorizationEnabled])
    {
      v2 = String._bridgeToObjectiveC()();
      v3 = CFPreferencesCopyAppValue(@"AutomaticUpdateAuthorizations", v2);

      v1 = sub_10013A314(v3);
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 1;
    }
  }

  v0[19] = v1;

  return _swift_task_switch(sub_10012E5FC, 0, 0);
}

uint64_t sub_10012EAA8@<X0>(id a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = _swiftEmptyArrayStorage;
  if (a2[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] != 1)
  {
    if (qword_10059B518 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  v7 = String._bridgeToObjectiveC()();
  aBlock[0] = 8;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 value:v8 comparisonType:6];
  swift_unknownObjectRelease();
  while (1)
  {

    v10 = a2[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics];
    v11 = v9;
    v12 = &off_100508ED8;
    if (v10 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1001AC6FC(0, 11, 1, &off_100508ED8);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1001AC6FC((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[16 * v14];
      strcpy(v15 + 32, "metrics_data");
      v15[45] = 0;
      *(v15 + 23) = -5120;
    }

    type metadata accessor for MediaAPIUpdate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [a1 connection];
    sub_100085D40(&unk_10059DC80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100434480;
    *(v18 + 56) = &type metadata for String;
    strcpy((v18 + 32), "install_date");
    *(v18 + 45) = 0;
    *(v18 + 46) = -5120;
    isa = Array._bridgeToObjectiveC()().super.isa;

    a1 = sub_1002D4D18(ObjCClassFromMetadata, v17, v11, isa);

    v20 = Array._bridgeToObjectiveC()().super.isa;

    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = &v28;
    v21[4] = a3;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_10013CD38;
    *(a3 + 24) = v21;
    aBlock[4] = sub_10013CD44;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011C6BC;
    aBlock[3] = &unk_10050EB50;
    v22 = _Block_copy(aBlock);
    v23 = a2;

    [a1 enumerateMemoryEntitiesWithProperties:v20 usingBlock:v22];

    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
LABEL_4:
    sub_1000E0D28(qword_10059DB50);
    v7 = Array._bridgeToObjectiveC()().super.isa;

    v9 = [objc_opt_self() predicateMatchingAllPredicates:v7];
  }

  v24 = v28;

  *a4 = v24;
  return result;
}

void sub_10012EEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v76 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100085D40(&qword_10059CB40);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v69 - v15;
  type metadata accessor for MediaAPIUpdate();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v75 = v8;
  if (*(a4 + OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup) != 1)
  {
    v24 = v76;
    goto LABEL_7;
  }

  v74 = v76;
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_10023E604(v18, v19);

  if ((v20 & 8) != 0 || (v21 = String._bridgeToObjectiveC()(), v22 = sub_10023E604(v18, v21), v21, (v22 & 0x10) != 0))
  {
LABEL_7:
    v74 = v7;
    v25 = sub_10017A62C();
    if (v26 >> 60 == 15)
    {
      v23 = v76;
      goto LABEL_9;
    }

    v27 = v25;
    v28 = v26;
    v29 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v80[0] = 0;
    v31 = [v29 JSONObjectWithData:isa options:0 error:v80];

    if (!v31)
    {
      v46 = *&v80[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000A7F1C(v27, v28);

      return;
    }

    v73 = v27;
    v32 = *&v80[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v33 = sub_100085D40(&unk_10059DC90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1000A7F1C(v73, v28);
LABEL_42:

      return;
    }

    v69[1] = v33;
    v70 = v28;
    v71 = a5;
    v34 = v78;
    v35 = sub_10017A6C0();
    v69[2] = v34;
    v37 = sub_10013D0C0(v34, v35, v36);

    sub_100180818(v37);
    v38 = objc_allocWithZone(ASDSoftwareUpdate);
    v39 = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = [v38 initWithUpdateDictionary:v39];

    v72 = v40;
    if (!v40)
    {
      __break(1u);
      return;
    }

    v41 = v10;
    v43 = v71;
    v42 = v72;
    if (*(a4 + OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics) != 1)
    {
LABEL_27:
      v48 = sub_10017A4F8();
      v49 = String._bridgeToObjectiveC()();
      v50 = sub_10023E604(v18, v49);

      if ((v50 & 1) != 0 && (v48 - 3) <= 1)
      {
        v51 = v42;
        v52 = 0;
      }

      else
      {
        v51 = v42;
        v52 = v48;
      }

      [v51 setUpdateState:v52];
      v53 = v75;
      [v42 setRawUpdateState:v48];
      v54 = String._bridgeToObjectiveC()();
      v55 = sub_10023E604(v18, v54);

      [v42 setPackageType:v55];
      v56 = String._bridgeToObjectiveC()();
      v57 = sub_10023E604(v18, v56);

      [v42 setInstallerPackagingType:v57];
      v58 = String._bridgeToObjectiveC()();
      v59 = sub_10023E590(v18, v58);

      if (v59)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      v62 = v73;
      v61 = v74;
      (*(v53 + 56))(v14, v60, 1, v74);
      sub_100117568(v14, v16);
      if ((*(v53 + 48))(v16, 1, v61) == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = Date._bridgeToObjectiveC()().super.isa;
        (*(v53 + 8))(v16, v61);
      }

      v64 = v72;
      [v72 setInstallDate:v63];

      v65 = String._bridgeToObjectiveC()();
      v66 = sub_10023E590(v18, v65);

      if (v66)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = Date._bridgeToObjectiveC()().super.isa;
        (*(v53 + 8))(v41, v74);
      }

      v67 = v70;
      [v64 setTimestamp:v66];

      v68 = v64;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000A7F1C(v62, v67);

      goto LABEL_42;
    }

    v44 = String._bridgeToObjectiveC()();
    v45 = sub_10023E0F8(v76, v44);

    if (v45)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v80[0] = v78;
    v80[1] = v79;
    if (*(&v79 + 1))
    {
      if (swift_dynamicCast())
      {
        sub_100180818(v77);

        v47.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_26:
        [v42 setMetrics:v47.super.isa];

        goto LABEL_27;
      }
    }

    else
    {
      sub_100005518(v80, &unk_10059CC50);
    }

    v47.super.isa = 0;
    goto LABEL_26;
  }

  v23 = v74;
LABEL_9:
}

uint64_t sub_10012F7A4(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for Logger();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [*a1 bundleIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() proxyForBundleID:v13];

    if (v15)
    {
      if ((sub_1003D0F94(v15) & 1) != 0 || (v17 = sub_1003D0F1C(v15), sub_10011C720(v17, a2)))
      {
        v18 = sub_1003D3584(v15, v16);
        v19 = v18;
        if (a4)
        {
          if (a4 == 1)
          {
            goto LABEL_19;
          }

          v20 = [v18 bundleIdentifier];
          if (v20)
          {
            v21 = v20;
            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            if (sub_10040C694(v19))
            {
              v25 = sub_10011C7C8(v22, v24, a4);

LABEL_20:

              [v12 setAutoUpdateEnabled:v25 & 1];
              return 0;
            }

LABEL_19:
            v25 = 1;
            goto LABEL_20;
          }
        }

        v25 = 0;
        goto LABEL_20;
      }
    }
  }

  v42[1] = v4;
  static Logger.updates.getter();
  v26 = a3;
  v27 = v12;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v30 = 138412546;
    v33 = *&v26[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
    *(v30 + 4) = v33;
    *v31 = v33;
    *(v30 + 12) = 2082;
    v34 = v33;
    v35 = [v27 bundleIdentifier];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 7104878;
    }

    v40 = sub_1001AD0D8(v37, v39, &v45);

    *(v30 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%@] Removed non-installed update with bundleID: %{public}s", v30, 0x16u);
    sub_100005518(v31, &unk_10059C250);

    sub_100005A00(v32);
  }

  (*(v43 + 8))(v11, v44);
  return 1;
}

void sub_10012FB38(uint64_t a1, void *a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100085D40(&qword_10059DC48);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100085D40(&qword_10059DC48);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10012FBE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100086B9C;

  return sub_10012FDC8();
}

uint64_t sub_10012FDC8()
{
  v1[12] = v0;
  v2 = type metadata accessor for Logger();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10012FE88, v0, 0);
}

uint64_t sub_10012FE88()
{
  if (qword_10059B538 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((*(v0 + 168) & 1) != 0 || (v1 = *(v0 + 96), swift_beginAccess(), !*(v1 + 152)))
  {
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_100130070;

    return sub_100139DC4();
  }

  else
  {
    v3 = *(v0 + 96);
    v4 = sub_10013BA2C(&qword_10059DC08, v2, type metadata accessor for UpdatesManager_Swift);
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_1001304B8;
    v6 = *(v0 + 96);

    return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, v4, 0xD000000000000012, 0x80000001004505F0, sub_10013F1CC, v6, &type metadata for () + 8);
  }
}

uint64_t sub_100130070(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  *(v3 + 136) = a1;
  *(v3 + 169) = a2;

  return _swift_task_switch(sub_10013018C, v4, 0);
}

uint64_t sub_10013018C()
{
  if ((*(v0 + 169) & 1) != 0 || (objc_opt_self(), !sub_1003D5FC8()))
  {

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v1 = *(v0 + 96);
    v2 = *(v1 + 120);
    v3 = *(v1 + 128);
    *(v1 + 120) = *(v0 + 136);
    *(v1 + 128) = 0;
    static Logger.updates.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 136);
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      if (v3)
      {
        v8 = -1;
      }

      else
      {
        v8 = v2;
      }

      *(v7 + 4) = v8;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "Account changed from: %lld to %lld", v7, 0x16u);
    }

    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 104);

    (*(v10 + 8))(v9, v11);
    v12 = type metadata accessor for UpdatesContext();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
    *v14 = 0;
    v14[1] = 0;
    v13[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
    v13[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
    *&v13[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 6;
    v15 = objc_opt_self();
    v16 = objc_opt_self();
    v17 = v13;
    v18 = [v16 currentProcess];
    v19 = sub_1003FA53C(v15, v18);

    *&v17[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v19;
    v21 = sub_1001FBBB4(v19, v20);

    *&v17[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v21;
    v17[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
    v22 = &v17[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
    *v22 = 0;
    v22[8] = 1;
    *(v0 + 80) = v17;
    *(v0 + 88) = v12;
    v23 = objc_msgSendSuper2((v0 + 80), "init");
    *(v0 + 152) = v23;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v24[1] = sub_100130654;

    return sub_100133DF4(v23, v0 + 16);
  }
}

uint64_t sub_1001304B8()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1001305C8, v1, 0);
}

uint64_t sub_1001305C8()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100130070;

  return sub_100139DC4();
}

uint64_t sub_100130654()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  sub_100005518(v1 + 16, &unk_10059CB80);

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1001307AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_100085D40(&qword_10059C3E0);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[21] = v7;
  *v7 = v4;
  v7[1] = sub_100130948;

  return sub_10012D34C();
}

uint64_t sub_100130948(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_100130A60, v2, 0);
}

uint64_t sub_100130A60()
{
  v97 = v0;
  v1 = *(v0 + 176);
  if (v1 < 1)
  {
    v27 = *(v0 + 64);
    if ((v27[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_shouldNotifyOfChanges] & 1) != 0 || *&v27[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_availableUpdateCount] != v1)
    {
      v30 = *(v0 + 72);
      static Logger.updates.getter();
      v31 = v27;
      v32 = v30;
      v33 = v31;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 136);
      v38 = *(v0 + 144);
      v39 = *(v0 + 128);
      if (v36)
      {
        v41 = *(v0 + 64);
        v40 = *(v0 + 72);
        v93 = *(v0 + 128);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v95 = v44;
        *v42 = 138412802;
        v45 = *(v40 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
        *(v42 + 4) = v45;
        *v43 = v45;
        *(v42 + 12) = 2050;
        v90 = v38;
        v46 = *&v41[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_availableUpdateCount];
        v47 = v45;

        *(v42 + 14) = v46;
        *(v42 + 22) = 2082;
        v48 = sub_1001704BC();
        v50 = sub_1001AD0D8(v48, v49, &v95);

        *(v42 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Notify updates changed with count: %{public}ld reason: %{public}s", v42, 0x20u);
        sub_100005518(v43, &unk_10059C250);

        sub_100005A00(v44);

        (*(v37 + 8))(v90, v93);
      }

      else
      {
        v55 = *(v0 + 64);

        (*(v37 + 8))(v38, v39);
      }

      v56 = *(v0 + 64);
      v57 = sub_1001704BC();
      v59 = v58;
      *(v0 + 216) = v58;
      v60 = *(v56 + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_bundleIDs);
      v61 = swift_task_alloc();
      *(v0 + 224) = v61;
      *v61 = v0;
      v61[1] = sub_1001317E0;
      v62 = *(v0 + 72);

      return sub_100133A98(v62, v57, v59, v60);
    }

    else
    {

      v28 = *(v0 + 8);

      return v28();
    }
  }

  else
  {
    v2 = *(v0 + 72);
    v3 = objc_opt_self();
    v4 = sub_1003D5FC8();
    objc_opt_self();
    v5 = sub_100006B78();
    v6 = sub_10023D17C(v5);

    v7 = *(v2 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    if (v7 <= 9)
    {
      if (((1 << v7) & 0x1BD) != 0 || !v4)
      {
        if (v6)
        {
LABEL_14:
          v10 = *(v0 + 72);
          static Logger.updates.getter();
          v11 = v10;
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();

          v14 = os_log_type_enabled(v12, v13);
          v15 = *(v0 + 152);
          v17 = *(v0 + 128);
          v16 = *(v0 + 136);
          if (v14)
          {
            v92 = *(v0 + 152);
            v18 = *(v0 + 72);
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v95 = v21;
            *v19 = 138412802;
            v22 = *(v18 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
            *(v19 + 4) = v22;
            *v20 = v22;
            *(v19 + 12) = 1026;
            *(v19 + 14) = v4;
            *(v19 + 18) = 2082;
            v23 = v22;
            v24 = sub_1001704BC();
            v26 = sub_1001AD0D8(v24, v25, &v95);

            *(v19 + 20) = v26;
            _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Not purchasing updates with auto updates enabled: %{BOOL,public}d reason: %{public}s", v19, 0x1Cu);
            sub_100005518(v20, &unk_10059C250);

            sub_100005A00(v21);

            (*(v16 + 8))(v92, v17);
          }

          else
          {

            (*(v16 + 8))(v15, v17);
          }

LABEL_24:
          v95 = 0;
          v96 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          v95 = 0xD000000000000023;
          v96 = 0x8000000100450700;
          v51._countAndFlagsBits = sub_1001704BC();
          String.append(_:)(v51);

          v52 = v96;
          *(v0 + 184) = v95;
          *(v0 + 192) = v52;
          v53 = swift_task_alloc();
          *(v0 + 200) = v53;
          *v53 = v0;
          v53[1] = sub_10013136C;
          v54 = *(v0 + 72);

          return sub_10012C048(v54);
        }
      }

      else if (v6)
      {
        v63 = *(v0 + 72);
        static Logger.updates.getter();
        v64 = v63;
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();

        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 160);
        v69 = *(v0 + 128);
        v70 = *(v0 + 136);
        if (v67)
        {
          v94 = *(v0 + 160);
          v71 = *(v0 + 72);
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v95 = v74;
          *v72 = 138412802;
          v75 = *(v71 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
          *(v72 + 4) = v75;
          *v73 = v75;
          *(v72 + 12) = 1026;
          *(v72 + 14) = 1;
          *(v72 + 18) = 2082;
          v76 = v75;
          v77 = sub_1001704BC();
          v91 = v69;
          v79 = sub_1001AD0D8(v77, v78, &v95);

          *(v72 + 20) = v79;
          _os_log_impl(&_mh_execute_header, v65, v66, "[%@] Purchasing updates with auto updates enabled: %{BOOL,public}d reason: %{public}s", v72, 0x1Cu);
          sub_100005518(v73, &unk_10059C250);

          sub_100005A00(v74);

          (*(v70 + 8))(v94, v91);
        }

        else
        {

          (*(v70 + 8))(v68, v69);
        }

        v81 = *(v0 + 112);
        v80 = *(v0 + 120);
        v82 = *(v0 + 96);
        v83 = *(v0 + 104);
        v85 = *(v0 + 72);
        v84 = *(v0 + 80);
        static Date.now.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v81 + 8))(v80, v83);
        sub_1003D6300(v3, isa);

        v87 = type metadata accessor for TaskPriority();
        (*(*(v87 - 8) + 56))(v82, 1, 1, v87);
        sub_1000056D0(v84, v0 + 16);
        v88 = swift_allocObject();
        v88[2] = 0;
        v88[3] = 0;
        v88[4] = v85;
        sub_1000056B8((v0 + 16), (v88 + 5));
        v89 = v85;
        sub_1001401B8(0, 0, v82, &unk_100437370, v88);

        goto LABEL_24;
      }

      if (((1 << v7) & 0x1BD) == 0 && v4)
      {
        sub_10018F658(0);
      }

      goto LABEL_14;
    }

    *(v0 + 56) = v7;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }
}

uint64_t sub_10013136C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_100131484, v2, 0);
}

uint64_t sub_100131484()
{
  v36 = v0;
  sub_10013A4B4(*(v0 + 208), *(v0 + 184), *(v0 + 192), *(v0 + 72));

  v1 = *(v0 + 64);
  if ((v1[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_shouldNotifyOfChanges] & 1) != 0 || *&v1[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_availableUpdateCount] != *(v0 + 176))
  {
    v4 = *(v0 + 72);
    static Logger.updates.getter();
    v5 = v1;
    v6 = v4;
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 136);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);
    if (v10)
    {
      v15 = *(v0 + 64);
      v14 = *(v0 + 72);
      v34 = *(v0 + 128);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v16 = 138412802;
      v19 = *(v14 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
      *(v16 + 4) = v19;
      *v17 = v19;
      *(v16 + 12) = 2050;
      v33 = v12;
      v20 = *&v15[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_availableUpdateCount];
      v21 = v19;

      *(v16 + 14) = v20;
      *(v16 + 22) = 2082;
      v22 = sub_1001704BC();
      v24 = sub_1001AD0D8(v22, v23, &v35);

      *(v16 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Notify updates changed with count: %{public}ld reason: %{public}s", v16, 0x20u);
      sub_100005518(v17, &unk_10059C250);

      sub_100005A00(v18);

      (*(v11 + 8))(v33, v34);
    }

    else
    {
      v25 = *(v0 + 64);

      (*(v11 + 8))(v12, v13);
    }

    v26 = *(v0 + 64);
    v27 = sub_1001704BC();
    v29 = v28;
    *(v0 + 216) = v28;
    v30 = *(v26 + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_bundleIDs);
    v31 = swift_task_alloc();
    *(v0 + 224) = v31;
    *v31 = v0;
    v31[1] = sub_1001317E0;
    v32 = *(v0 + 72);

    return sub_100133A98(v32, v27, v29, v30);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1001317E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10013198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_100085D40(&unk_10059DC70);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100131A58, 0, 0);
}

uint64_t sub_100131A58()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_100005B60(v3, v6);
  v9 = sub_1000C56EC(v6, v7, v8);
  v10 = objc_allocWithZone(type metadata accessor for PerformUpdatesTask());
  v11 = sub_1000A81D4(0, v5, v9);
  v0[23] = v11;
  v0[2] = v0;
  v0[3] = sub_100131C5C;
  swift_continuation_init();
  v0[17] = v4;
  v12 = sub_100005F38(v0 + 14);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v2 + 32))(v12, v1, v4);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100147F5C;
  v0[13] = &unk_10050EAB0;
  [v11 runTaskWithCompletionHandler:v0 + 10];
  (*(v2 + 8))(v12, v4);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100131C5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_100131DD8;
  }

  else
  {
    v2 = sub_100131D6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100131D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100131DD8()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100131E54(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[11] = a1;
  v1[12] = ObjectType;
  v4 = type metadata accessor for Logger();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100131F20, 0, 0);
}