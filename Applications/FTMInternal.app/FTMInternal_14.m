uint64_t sub_1001E76C4(uint64_t a1)
{
  v2 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  v3 = *(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v24 = 0;
  v4 = [v3 getIMSRegistrationStatus:v2 error:&v24];
  if (v4)
  {
    v5 = v4;
    v6 = v24;
    v7 = [v5 isRegisteredForVoice];
    v8 = [v5 isRegisteredForSMS];
    v24 = 0;
    v9 = [v3 getSystemConfiguration:v2 withError:&v24];
    if (v9)
    {
      v10 = v9;
      v11 = v24;
      v12 = [v10 operationStatus];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 registrationState];

        v15 = v14 == 1;
      }

      else
      {
        v15 = 0;
      }

      v22 = sub_1001FD670(v7, v8, v15);

      goto LABEL_12;
    }

    v17 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v16 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = 0;
    v7 = 0;
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002EED40;
  swift_getErrorValue();
  v19 = Error.localizedDescription.getter();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_1001A76E8();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  os_log(_:dso:log:type:_:)();

  v22 = sub_1001FD670(v7, v8, 0);

  v10 = v2;
LABEL_12:

  return v22;
}

void sub_1001E79A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a1 slotID];
  v5 = v4;
  if (!a2)
  {
    v24 = [v3 slotID];
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v5;
    v26[4] = v3;
    v27 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
    v28 = v3;

    v29 = [v27 initWithSlot:v24];
    v30 = *&v200[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client];
    v31 = swift_allocObject();
    *(v31 + 16) = sub_10020372C;
    *(v31 + 24) = v26;
    *&aBlock[2] = sub_100203738;
    *(&aBlock[2] + 1) = v31;
    *&aBlock[0] = _NSConcreteStackBlock;
    *(&aBlock[0] + 1) = 1107296256;
    *&aBlock[1] = sub_1001F2210;
    *(&aBlock[1] + 1) = &unk_10031EC98;
    v32 = _Block_copy(aBlock);

    [v30 copyCellInfo:v29 completion:v32];
    _Block_release(v32);

    goto LABEL_123;
  }

  v199 = v4;
  v6 = qword_100374FD8;
  v7 = a2;
  if (v6 != -1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002EED50;
    v9 = v3;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v173 = v9;

    *(v8 + 56) = &type metadata for String;
    v14 = sub_1001A76E8();
    *(v8 + 64) = v14;
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    v15 = v7;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v14;
    v191 = v14;
    *(v8 + 72) = v17;
    *(v8 + 80) = v19;
    os_log(_:dso:log:type:_:)();

    v20 = sub_1001FD848(v15);
    v181 = sub_1001FDC20(v15);
    v198 = v21;
    v180 = sub_1001FDD84(v15, sub_100225FB8);
    v197 = v22;
    v179 = sub_1001FDD84(v15, sub_100225FC4);
    v196 = v23;
    v194 = v20;
    if (v20 > 4u && v20 == 5)
    {
      goto LABEL_9;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_11;
    }

    if (v20 == 3)
    {
LABEL_9:

LABEL_11:
      v178 = sub_1001FDEAC(v15, sub_100225FD0);
      v36 = v35;
      v177 = sub_1001FDEAC(v15, sub_100225FDC);
      v195 = v37;
      goto LABEL_12;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_11;
    }

    v177 = 0;
    v178 = 0;
    v195 = 0xE000000000000000;
    v36 = 0xE000000000000000;
LABEL_12:
    v38 = sub_1001FDFB8(v15);
    v7 = v39;
    v40 = sub_1001E92CC(v15, v199);
    v175 = v15;
    v41 = v15;
    v42 = v199;
    v174 = sub_1001EB974(v41, v199);
    v192 = sub_1001E76C4(v199);
    v43 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v44 = *(*&v200[v43] + 16);
    v193 = v40;
    if (v44)
    {
      if ((v198 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v198) & 0xF;
      }

      else
      {
        v45 = v181 & 0xFFFFFFFFFFFFLL;
      }

      v46 = HIBYTE(v197) & 0xF;
      if ((v197 & 0x2000000000000000) == 0)
      {
        v46 = v180 & 0xFFFFFFFFFFFFLL;
      }

      v189 = v46;
      v190 = v45;
      if ((v196 & 0x2000000000000000) != 0)
      {
        v47 = HIBYTE(v196) & 0xF;
      }

      else
      {
        v47 = v179 & 0xFFFFFFFFFFFFLL;
      }

      v48 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v48 = v178 & 0xFFFFFFFFFFFFLL;
      }

      v187 = v48;
      v188 = v47;
      if ((v195 & 0x2000000000000000) != 0)
      {
        v49 = HIBYTE(v195) & 0xF;
      }

      else
      {
        v49 = v177 & 0xFFFFFFFFFFFFLL;
      }

      v50 = HIBYTE(v7) & 0xF;
      v176 = v38;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v50 = v38 & 0xFFFFFFFFFFFFLL;
      }

      v185 = v50;
      v186 = v49;
      v172 = *&v200[v43];

      v51 = 0;
      v183 = v7;
      v184 = v36;
      v182 = v44;
      while (1)
      {
        v3 = *&v200[v43];
        if (v51 >= *(v3 + 16))
        {
          break;
        }

        if (*(v3 + 224 * v51 + 48) == v42)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v200[v43] = v3;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v3 = sub_1001FA71C(v3);
          }

          if (v51 >= *(v3 + 16))
          {
            goto LABEL_130;
          }

          v62 = v3 + 224 * v51;
          *(v62 + 97) = v194;
          *&v200[v43] = v3;
          if (v51 >= *(v3 + 16))
          {
            goto LABEL_131;
          }

          *(v62 + 96) = v192;
          *&v200[v43] = v3;
          swift_endAccess();
          if (v190)
          {
            swift_beginAccess();

            v63 = swift_isUniquelyReferenced_nonNull_native();
            *&v200[v43] = v3;
            if ((v63 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v200[v43] = v3;
            }

            if (v51 >= *(v3 + 16))
            {
              goto LABEL_135;
            }

            v64 = v3 + 224 * v51;
            v65 = *(v64 + 192);
            *(v64 + 184) = v181;
            *(v64 + 192) = v198;
            *&v200[v43] = v3;
            swift_endAccess();
          }

          if (v189)
          {
            swift_beginAccess();

            v66 = swift_isUniquelyReferenced_nonNull_native();
            *&v200[v43] = v3;
            if ((v66 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v200[v43] = v3;
            }

            if (v51 >= *(v3 + 16))
            {
              goto LABEL_136;
            }

            v67 = v3 + 224 * v51;
            v68 = *(v67 + 176);
            *(v67 + 168) = v180;
            *(v67 + 176) = v197;
            *&v200[v43] = v3;
            swift_endAccess();
          }

          if (v188)
          {
            swift_beginAccess();

            v69 = swift_isUniquelyReferenced_nonNull_native();
            *&v200[v43] = v3;
            if ((v69 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v200[v43] = v3;
            }

            if (v51 >= *(v3 + 16))
            {
              goto LABEL_137;
            }

            v70 = v3 + 224 * v51;
            v71 = *(v70 + 112);
            *(v70 + 104) = v179;
            *(v70 + 112) = v196;
            *&v200[v43] = v3;
            swift_endAccess();
          }

          if (v187)
          {
            swift_beginAccess();

            v72 = swift_isUniquelyReferenced_nonNull_native();
            *&v200[v43] = v3;
            if ((v72 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v200[v43] = v3;
            }

            if (v51 >= *(v3 + 16))
            {
              goto LABEL_138;
            }

            v73 = v3 + 224 * v51;
            v74 = *(v73 + 128);
            *(v73 + 120) = v178;
            *(v73 + 128) = v36;
            *&v200[v43] = v3;
            swift_endAccess();
          }

          if (v186)
          {
            swift_beginAccess();

            v75 = swift_isUniquelyReferenced_nonNull_native();
            *&v200[v43] = v3;
            if ((v75 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v200[v43] = v3;
            }

            if (v51 >= *(v3 + 16))
            {
              goto LABEL_139;
            }

            v76 = v3 + 224 * v51;
            v77 = *(v76 + 144);
            *(v76 + 136) = v177;
            *(v76 + 144) = v195;
            *&v200[v43] = v3;
            swift_endAccess();
          }

          if (v185)
          {
            swift_beginAccess();

            v78 = swift_isUniquelyReferenced_nonNull_native();
            *&v200[v43] = v3;
            if ((v78 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v200[v43] = v3;
            }

            if (v51 >= *(v3 + 16))
            {
              goto LABEL_140;
            }

            v79 = v3 + 224 * v51;
            v80 = *(v79 + 160);
            *(v79 + 152) = v176;
            *(v79 + 160) = v7;
            *&v200[v43] = v3;
            swift_endAccess();
          }

          static os_log_type_t.default.getter();
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_1002EED50;
          *(v81 + 56) = &type metadata for Int;
          *(v81 + 64) = &protocol witness table for Int;
          *(v81 + 32) = v199 != 1;
          v82 = Array.description.getter();
          *(v81 + 96) = &type metadata for String;
          *(v81 + 104) = v191;
          *(v81 + 72) = v82;
          *(v81 + 80) = v83;
          os_log(_:dso:log:type:_:)();

          if (qword_100375020 != -1)
          {
            swift_once();
          }

          v84 = qword_100382508;
          v7 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
          swift_beginAccess();
          v3 = *&v84[v7];
          v85 = *(v3 + 16);
          if (v85)
          {
            v86 = 0;
            v87 = 0;
            v88 = (v3 + 40);
            while ((*v88 & 1) != 0 || *(v88 - 1) != v42)
            {
              ++v87;
              v88 += 208;
              v86 += 208;
              if (v85 == v87)
              {
                goto LABEL_29;
              }
            }

            v53 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_141;
            }

            v89 = v84;
            if (v53 != v85)
            {
              while (v53 < v85)
              {
                v90 = (v3 + v86 + 240);
                if ((*(v3 + v86 + 248) & 1) != 0 || *v90 != v199)
                {
                  if (v53 != v87)
                  {
                    if (v87 >= v85)
                    {
                      goto LABEL_127;
                    }

                    v91 = 208 * v87;
                    v92 = (v3 + 32 + 208 * v87);
                    __dst[0] = *v92;
                    v93 = v92[1];
                    v94 = v92[2];
                    v95 = v92[3];
                    __dst[4] = v92[4];
                    __dst[3] = v95;
                    __dst[2] = v94;
                    __dst[1] = v93;
                    v96 = v92[5];
                    v97 = v92[6];
                    v98 = v92[7];
                    __dst[8] = v92[8];
                    __dst[7] = v98;
                    __dst[6] = v97;
                    __dst[5] = v96;
                    v99 = v92[9];
                    v100 = v92[10];
                    v101 = v92[11];
                    *(&__dst[11] + 9) = *(v92 + 185);
                    __dst[11] = v101;
                    __dst[10] = v100;
                    __dst[9] = v99;
                    aBlock[0] = *v90;
                    v102 = *(v3 + v86 + 256);
                    v103 = *(v3 + v86 + 272);
                    v104 = *(v3 + v86 + 288);
                    aBlock[4] = *(v3 + v86 + 304);
                    aBlock[3] = v104;
                    aBlock[2] = v103;
                    aBlock[1] = v102;
                    v105 = *(v3 + v86 + 320);
                    v106 = *(v3 + v86 + 336);
                    v107 = *(v3 + v86 + 352);
                    aBlock[8] = *(v3 + v86 + 368);
                    aBlock[7] = v107;
                    aBlock[6] = v106;
                    aBlock[5] = v105;
                    v108 = *(v3 + v86 + 384);
                    v109 = *(v3 + v86 + 400);
                    v110 = *(v3 + v86 + 416);
                    *(&aBlock[11] + 9) = *(v3 + v86 + 425);
                    aBlock[11] = v110;
                    aBlock[10] = v109;
                    aBlock[9] = v108;
                    sub_100201470(__dst, __src);
                    sub_100201470(aBlock, __src);
                    v111 = swift_isUniquelyReferenced_nonNull_native();
                    *&v84[v7] = v3;
                    if ((v111 & 1) == 0)
                    {
                      v3 = sub_1001FA708(v3);
                      *&v84[v7] = v3;
                    }

                    if (v87 >= *(v3 + 16))
                    {
                      goto LABEL_128;
                    }

                    v112 = (v3 + v91);
                    v202[0] = *(v3 + v91 + 32);
                    v113 = *(v3 + v91 + 48);
                    v114 = *(v3 + v91 + 64);
                    v115 = *(v3 + v91 + 96);
                    v202[3] = *(v3 + v91 + 80);
                    v202[4] = v115;
                    v202[1] = v113;
                    v202[2] = v114;
                    v116 = *(v3 + v91 + 112);
                    v117 = *(v3 + v91 + 128);
                    v118 = *(v3 + v91 + 160);
                    v202[7] = *(v3 + v91 + 144);
                    v202[8] = v118;
                    v202[5] = v116;
                    v202[6] = v117;
                    v119 = *(v3 + v91 + 176);
                    v120 = *(v3 + v91 + 192);
                    v121 = *(v3 + v91 + 208);
                    *(v203 + 9) = *(v3 + v91 + 217);
                    v202[10] = v120;
                    v203[0] = v121;
                    v202[9] = v119;
                    v112[2] = aBlock[0];
                    v122 = aBlock[1];
                    v123 = aBlock[2];
                    v124 = aBlock[4];
                    v112[5] = aBlock[3];
                    v112[6] = v124;
                    v112[3] = v122;
                    v112[4] = v123;
                    v125 = aBlock[5];
                    v126 = aBlock[6];
                    v127 = aBlock[8];
                    v112[9] = aBlock[7];
                    v112[10] = v127;
                    v112[7] = v125;
                    v112[8] = v126;
                    v128 = aBlock[9];
                    v129 = aBlock[10];
                    v130 = aBlock[11];
                    *(v112 + 217) = *(&aBlock[11] + 9);
                    v112[12] = v129;
                    v112[13] = v130;
                    v112[11] = v128;
                    sub_1002014CC(v202);
                    *&v84[v7] = v3;
                    if (v53 >= *(v3 + 16))
                    {
                      goto LABEL_129;
                    }

                    v131 = (v3 + v86);
                    __src[0] = *(v3 + v86 + 240);
                    v132 = *(v3 + v86 + 256);
                    v133 = *(v3 + v86 + 272);
                    v134 = *(v3 + v86 + 304);
                    __src[3] = *(v3 + v86 + 288);
                    __src[4] = v134;
                    __src[1] = v132;
                    __src[2] = v133;
                    v135 = *(v3 + v86 + 320);
                    v136 = *(v3 + v86 + 336);
                    v137 = *(v3 + v86 + 352);
                    __src[8] = *(v3 + v86 + 368);
                    __src[7] = v137;
                    __src[5] = v135;
                    __src[6] = v136;
                    v138 = *(v3 + v86 + 384);
                    v139 = *(v3 + v86 + 400);
                    v140 = *(v3 + v86 + 416);
                    *(&__src[11] + 9) = *(v3 + v86 + 425);
                    __src[11] = v140;
                    __src[10] = v139;
                    __src[9] = v138;
                    v131[15] = __dst[0];
                    v141 = __dst[1];
                    v142 = __dst[2];
                    v143 = __dst[4];
                    v131[18] = __dst[3];
                    v131[19] = v143;
                    v131[16] = v141;
                    v131[17] = v142;
                    v144 = __dst[5];
                    v145 = __dst[6];
                    v146 = __dst[8];
                    v131[22] = __dst[7];
                    v131[23] = v146;
                    v131[20] = v144;
                    v131[21] = v145;
                    v147 = __dst[9];
                    v148 = __dst[10];
                    v149 = __dst[11];
                    *(v131 + 425) = *(&__dst[11] + 9);
                    v131[25] = v148;
                    v131[26] = v149;
                    v131[24] = v147;
                    sub_1002014CC(__src);
                    *&v84[v7] = v3;
                  }

                  ++v87;
                }

                ++v53;
                v85 = *(v3 + 16);
                v86 += 208;
                if (v53 == v85)
                {
                  goto LABEL_78;
                }
              }

              __break(1u);
              break;
            }

            v53 = v85;
LABEL_78:
            v85 = v87;
            if (v53 < v87)
            {
              goto LABEL_134;
            }
          }

          else
          {
LABEL_29:
            v52 = v84;
            v53 = v85;
          }

          sub_1001FCC58(v85, v53, sub_100224C0C, sub_1001FC954);
          swift_endAccess();
          sub_10020D3C0(1);
          v54 = *&v84[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v55 = aBlock[0];
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock[0]) = (v55 & 1) == 0;

          static Published.subscript.setter();

          v56 = qword_100382508;
          swift_beginAccess();
          v57 = v56;

          sub_1001E2FA8(v58);
          swift_endAccess();
          sub_10020D3C0(1);
          v59 = *&v57[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v60 = aBlock[0];
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock[0]) = (v60 & 1) == 0;

          static Published.subscript.setter();

          v42 = v199;
          v7 = v183;
          v36 = v184;
          v44 = v182;
        }

        if (++v51 == v44)
        {

          v38 = v176;
          goto LABEL_93;
        }
      }

      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_93:

    sub_1001FE268(v42, v194, v38, v7);

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v3 = 0x666E4920646E6142;
    v150 = sub_10021AF50();
    v7 = v150[2];
    if (v7)
    {
      v151 = 0;
      while (1)
      {
        if (v151 >= v150[2])
        {
          goto LABEL_132;
        }

        if (*(v150 + v151 + 32) && *(v150 + v151 + 32) != 1)
        {
          break;
        }

        v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v152)
        {
          v42 = v199;
LABEL_106:

          sub_1001FFA94(v175, v194, v42, v202);
          v7 = v193;
          sub_100200658(v42, v202, v193, v174);

          sub_1001AC99C(v202, &unk_100377060, &qword_1002F2200);
          goto LABEL_107;
        }

        ++v151;
        v42 = v199;
        if (v7 == v151)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_106;
    }

LABEL_102:

LABEL_107:
    v153 = sub_10021AF50();
    v154 = v153[2];
    if (!v154)
    {
      break;
    }

    v155 = 0;
    while (v155 < v153[2])
    {
      if (*(v153 + v155 + 32))
      {
        if (*(v153 + v155 + 32) != 2)
        {

LABEL_118:

          v157 = v175;
          sub_1001FFA94(v175, v194, v199, __src);
          memcpy(__dst, __src, 0x121uLL);
          if (sub_1002004E8(__dst) == 1)
          {
            goto LABEL_119;
          }

          sub_1001E4158();
          v158 = [v173 slotID];
          v159 = swift_allocObject();
          v159[2] = v175;
          memcpy(v159 + 3, __src, 0x121uLL);
          v159[40] = v200;
          v159[41] = v173;
          v170 = v175;
          v171 = v173;
          v200;
          goto LABEL_120;
        }

        v7 = 0xE90000000000006FLL;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v156)
      {
        goto LABEL_118;
      }

      if (v154 == ++v155)
      {
        goto LABEL_116;
      }
    }

LABEL_133:
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
    swift_once();
  }

LABEL_116:

  v157 = v175;
LABEL_119:
  sub_1001FFA48(v201);
  memcpy(aBlock, v201, 0x121uLL);
  sub_1001E4158();
  v158 = [v173 slotID];
  v159 = swift_allocObject();
  v159[2] = v157;
  memcpy(v159 + 3, aBlock, 0x121uLL);
  v159[40] = v200;
  v159[41] = v173;
  v160 = v157;
  v161 = v173;
  v200;
LABEL_120:
  sub_1001F1774(v158, sub_1002050B0, v159);

  static os_log_type_t.default.getter();
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1002EED40;
  v163 = *&v200[v43];
  v164 = sub_1001A551C(&qword_100377040, &qword_1002F21E8);
  *(v162 + 56) = v164;
  *(v162 + 64) = sub_1001AD0C8(&qword_100377048, &qword_100377040, &qword_1002F21E8);
  *(v162 + 32) = v163;

  os_log(_:dso:log:type:_:)();

  v165 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  v166 = static NSNotificationName.carrierUpdate;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1002EED40;
  v201[0] = 0x7372656972726163;
  v201[1] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v168 = *&v200[v43];
  *(v167 + 96) = v164;
  *(v167 + 72) = v168;

  sub_1001FD020(v167);
  swift_setDeallocating();
  sub_1001AC99C(v167 + 32, &qword_100377058, &qword_1002F21F8);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v165 postNotificationName:v166 object:0 userInfo:isa];

  v29 = v175;
LABEL_123:
}

uint64_t sub_1001E9088(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = a2;
  if (!a1 || a2)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002EED40;
    if (v4)
    {
      swift_getErrorValue();
      v4 = Error.localizedDescription.getter();
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1001A76E8();
    if (v11)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (v11)
    {
      v13 = v11;
    }

    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    os_log(_:dso:log:type:_:)();

    v8 = 0;
  }

  else
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1002EED40;
    *(v6 + 56) = sub_1001E1BB4(0, &qword_100377030, CTCellInfo_ptr);
    *(v6 + 64) = sub_10020346C(&qword_100377038, &qword_100377030, CTCellInfo_ptr);
    *(v6 + 32) = a1;
    v7 = a1;
    os_log(_:dso:log:type:_:)();

    v8 = a1;
  }

  return a3(v8);
}

char *sub_1001E92CC(void *a1, uint64_t a2)
{
  v272 = a2;
  v260 = a1;
  v280 = type metadata accessor for Metric(0);
  v282 = *(v280 - 8);
  v2 = *(v282 + 64);
  v3 = __chkstk_darwin(v280);
  v279 = v250 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = v250 - v6;
  v8 = __chkstk_darwin(v5);
  v263 = v250 - v9;
  v10 = __chkstk_darwin(v8);
  v261 = v250 - v11;
  v12 = __chkstk_darwin(v10);
  v262 = v250 - v13;
  __chkstk_darwin(v12);
  v15 = v250 - v14;
  if (qword_100375020 != -1)
  {
    goto LABEL_192;
  }

LABEL_2:
  v16 = sub_10021AF50();
  v17 = v16[2];
  if (v17)
  {
    v254 = v15;
    v18 = 0;
    v15 = 0x666E4920646E6142;
    while (1)
    {
      if (v18 >= v16[2])
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        swift_once();
        goto LABEL_2;
      }

      if (*(v16 + v18 + 32) && *(v16 + v18 + 32) != 1)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_14;
      }

      if (v17 == ++v18)
      {
        goto LABEL_9;
      }
    }

LABEL_14:

    v23 = [v260 legacyInfo];
    if (!v23)
    {
      goto LABEL_10;
    }

    v24 = v23;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = sub_1001EB62C(v15);

    if (!v25)
    {
      goto LABEL_10;
    }

    v26 = v25[2];
    v257 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v275 = v26;
    if (v26)
    {
      v271 = 0;
      v274 = v25 + 4;
      v27 = kCTCellMonitorCellTypeNeighbor;
      v270 = kCTCellMonitorRadioAccessTechnologyLTE;
      v283 = kCTRegistrationRadioAccessTechnologyLTE;
      v255 = xmmword_1002EED50;
      v253 = _swiftEmptyArrayStorage;
      v278 = v7;
      v7 = 0;
      v267 = v25;
      v256 = kCTCellMonitorCellTypeNeighbor;
      v264 = kCTCellMonitorRadioAccessTechnologyNR;
      v258 = kCTRegistrationRadioAccessTechnologyNR;
      while (1)
      {
        if (v7 >= v25[2])
        {
          goto LABEL_190;
        }

        v28 = v274[v7];

        v30 = sub_100226314(v29);
        v15 = v31;
        v277 = v28;
        result = sub_1002265B8(v28);
        if (!v27)
        {
          goto LABEL_194;
        }

        v32 = result;
        ++v7;
        if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v33)
        {
          break;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
LABEL_29:
          v36 = v264;
          if (v32 != 3)
          {
            goto LABEL_18;
          }

          v37 = v277;
          v38 = sub_100225CF4(v277);
          v40 = v39;
          LOBYTE(v314) = 1;
          LOBYTE(v287) = 1;
          LOBYTE(v285) = 1;
          LOBYTE(v284) = 1;
          v330 = 1;
          v329 = 1;
          v328 = 1;
          v327 = 1;
          v326 = 1;
          v325 = 1;
          v324 = 1;
          v323 = 1;
          v349 = 0;
          v350 = 1;
          v352 = 0;
          v353 = 1;
          v356 = 0;
          v357 = 0;
          v355 = 0;
          v358 = 1;
          v360 = 0;
          v361 = 1;
          *(&v362 + 7) = 0;
          HIBYTE(v362) = 1;
          *(&v363 + 7) = 0;
          HIBYTE(v363) = 1;
          *(&v364 + 7) = 0;
          HIBYTE(v364) = 1;
          *&v365[7] = 0;
          v365[15] = 1;
          v366 = 0;
          v367 = 1;
          v368 = 1539;
          v371 = 0;
          v372 = 1;
          v374 = 0;
          v375 = 1;
          *(&v376 + 7) = 0;
          HIBYTE(v376) = 1;
          v348 = 1;
          *(v347 + 3) = *&v351[3];
          v347[0] = *v351;
          v346 = 1;
          *(v345 + 3) = *&v354[3];
          v345[0] = *v354;
          v344 = 1;
          *(v343 + 3) = *&v359[3];
          v343[0] = *v359;
          v342 = 1;
          *(v341 + 15) = *&v365[15];
          v340 = v364;
          v341[0] = *v365;
          v338 = v362;
          v339 = v363;
          v337 = 1;
          v336 = v370;
          v335 = v369;
          v334 = 1;
          *(v333 + 3) = *&v373[3];
          v333[0] = *v373;
          v332 = 1;
          v331 = v376;
          v41 = COERCE_DOUBLE(sub_100226854(v37));
          v43 = 0.0;
          if (v42)
          {
            v41 = 0.0;
          }

          if (v41 <= 1000000.0)
          {
            v44 = v41;
          }

          else
          {
            v44 = v41 / 1000000.0;
          }

          v45 = v270;
          if (v44 > 0.0)
          {
            v46 = v38;
            if (!v270 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v314 = 0uLL, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !*(&v314 + 1)))
            {
LABEL_46:
              v344 = 0;
              v43 = v44;
              v38 = v46;
              goto LABEL_47;
            }

            if (v314 == __PAIR128__(v40, v38))
            {

              if (v44 > 100.0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v44 > 100.0 || (v47 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            if (v44 == 6.0)
            {
              v43 = 1.4;
              v38 = v46;
            }

            else
            {
              v43 = 3.0;
              v38 = v46;
              if (v44 != 15.0)
              {
                v43 = 5.0;
                if (v44 != 25.0)
                {
                  v43 = 10.0;
                  if (v44 != 50.0)
                  {
                    v43 = 15.0;
                    if (v44 != 75.0)
                    {
                      if (v44 == 100.0)
                      {
                        v43 = 20.0;
                      }

                      else
                      {
                        v43 = v44;
                      }
                    }
                  }
                }
              }
            }

            v344 = 0;
          }

LABEL_47:
          v273 = v7;
          v259 = v356;
          if (v36 && (objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v314 = 0uLL;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();
            v48 = v283;
            if (*(&v314 + 1))
            {
              v252 = v38;
              if (v314 == __PAIR128__(v40, v38))
              {

                goto LABEL_55;
              }

              v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v50)
              {
LABEL_55:
                v268 = sub_100226B04(v277);
                if (v51)
                {
                  goto LABEL_56;
                }

                v334 = 0;
                *&v314 = sub_1001FDC20(v260);
                *(&v314 + 1) = v119;
                v287 = 32;
                v288 = 0xE100000000000000;
                sub_1001A56A0();
                v120 = StringProtocol.components<A>(separatedBy:)();

                if (v120[2])
                {
                  v121 = v120[4];
                  v122 = v120[5];

                  v123 = sub_1001E248C(v121, v122);
                  if (v124)
                  {
                    v125 = 0;
                  }

                  else
                  {
                    v125 = v123;
                  }

                  v266 = v125;
                }

                else
                {

                  v266 = 0;
                }

                v251 = v40;
                v15 = *(v269 + v257);
                v126 = *(v15 + 16);

                if (v126)
                {
                  v7 = 0;
                  v127 = _swiftEmptyArrayStorage;
                  v128 = v272;
                  v48 = v283;
LABEL_110:
                  v129 = (v15 + 32 + 224 * v7);
                  v130 = v7;
                  while (v130 < *(v15 + 16))
                  {
                    v131 = v129[1];
                    v314 = *v129;
                    v315 = v131;
                    v132 = v129[2];
                    v133 = v129[3];
                    v134 = v129[5];
                    v318[0] = v129[4];
                    v318[1] = v134;
                    v316 = v132;
                    v317 = v133;
                    v135 = v129[6];
                    v136 = v129[7];
                    v137 = v129[9];
                    v318[4] = v129[8];
                    v319 = v137;
                    v318[2] = v135;
                    v318[3] = v136;
                    v138 = v129[10];
                    v139 = v129[11];
                    v140 = v129[13];
                    v321[1] = v129[12];
                    v322 = v140;
                    v320 = v138;
                    v321[0] = v139;
                    v7 = v130 + 1;
                    if (v315 == v128)
                    {
                      sub_100203618(&v314, &v287);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v285 = v127;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_1001F5504(0, v127[2] + 1, 1);
                        v127 = v285;
                      }

                      v143 = v127[2];
                      v142 = v127[3];
                      v128 = v272;
                      if (v143 >= v142 >> 1)
                      {
                        sub_1001F5504((v142 > 1), v143 + 1, 1);
                        v128 = v272;
                        v127 = v285;
                      }

                      v127[2] = v143 + 1;
                      v144 = &v127[28 * v143];
                      v145 = v315;
                      v144[2] = v314;
                      v144[3] = v145;
                      v146 = v316;
                      v147 = v317;
                      v148 = v318[1];
                      v144[6] = v318[0];
                      v144[7] = v148;
                      v144[4] = v146;
                      v144[5] = v147;
                      v149 = v318[2];
                      v150 = v318[3];
                      v151 = v319;
                      v144[10] = v318[4];
                      v144[11] = v151;
                      v144[8] = v149;
                      v144[9] = v150;
                      v152 = v320;
                      v153 = v321[0];
                      v154 = v322;
                      v144[14] = v321[1];
                      v144[15] = v154;
                      v144[12] = v152;
                      v144[13] = v153;
                      v48 = v283;
                      if (v126 - 1 != v130)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_122;
                    }

                    v129 += 14;
                    ++v130;
                    if (v126 == v7)
                    {
                      goto LABEL_122;
                    }
                  }

                  goto LABEL_191;
                }

                v127 = _swiftEmptyArrayStorage;
                v48 = v283;
LABEL_122:

                if (v127[2])
                {
                  v155 = *(v127 + 13);
                  v320 = *(v127 + 12);
                  v321[0] = v155;
                  v156 = *(v127 + 15);
                  v321[1] = *(v127 + 14);
                  v322 = v156;
                  v157 = *(v127 + 9);
                  v318[2] = *(v127 + 8);
                  v318[3] = v157;
                  v158 = *(v127 + 11);
                  v318[4] = *(v127 + 10);
                  v319 = v158;
                  v159 = *(v127 + 5);
                  v316 = *(v127 + 4);
                  v317 = v159;
                  v160 = *(v127 + 7);
                  v318[0] = *(v127 + 6);
                  v318[1] = v160;
                  v161 = *(v127 + 3);
                  v314 = *(v127 + 2);
                  v315 = v161;
                  sub_100203618(&v314, &v287);

                  v162 = v322;
                  v163 = v262;
                  v25 = v267;
                  v7 = v273;
                  v45 = v270;
                  v281 = *(v322 + 16);
                  if (v281)
                  {
                    v164 = 0;
                    v165 = _swiftEmptyArrayStorage;
                    v276 = v322;
                    while (v164 < *(v162 + 16))
                    {
                      v166 = (*(v282 + 80) + 32) & ~*(v282 + 80);
                      v167 = *(v282 + 72);
                      sub_100204DB0(v162 + v166 + v167 * v164, v163, type metadata accessor for Metric);
                      v168 = v258;
                      if (!v258)
                      {
                        goto LABEL_125;
                      }

                      v169 = *(v163 + *(v280 + 28));
                      type metadata accessor for CFString(0);
                      sub_10020169C(&unk_1003770F0, type metadata accessor for CFString);
                      v170 = v168;
                      v48 = v283;
                      LOBYTE(v169) = static _CFObject.== infix(_:_:)();

                      v7 = v273;
                      v163 = v262;
                      if (v169)
                      {
                        sub_100204E18(v262, v261, type metadata accessor for Metric);
                        v171 = swift_isUniquelyReferenced_nonNull_native();
                        v287 = v165;
                        if ((v171 & 1) == 0)
                        {
                          sub_1001F54C0(0, v165[2] + 1, 1);
                          v165 = v287;
                        }

                        v173 = v165[2];
                        v172 = v165[3];
                        if (v173 >= v172 >> 1)
                        {
                          sub_1001F54C0(v172 > 1, v173 + 1, 1);
                          v165 = v287;
                        }

                        v165[2] = v173 + 1;
                        result = sub_100204E18(v261, v165 + v166 + v173 * v167, type metadata accessor for Metric);
                        v48 = v283;
                      }

                      else
                      {
LABEL_125:
                        result = sub_1002034BC(v163, type metadata accessor for Metric);
                      }

                      ++v164;
                      v25 = v267;
                      v45 = v270;
                      v162 = v276;
                      if (v281 == v164)
                      {
                        goto LABEL_161;
                      }
                    }

                    __break(1u);
LABEL_194:
                    __break(1u);
                    return result;
                  }

                  v165 = _swiftEmptyArrayStorage;
LABEL_161:
                  sub_100203650(&v314);
                  if (v165[2])
                  {
                    v204 = v254;
                    sub_100204DB0(v165 + ((*(v282 + 80) + 32) & ~*(v282 + 80)), v254, type metadata accessor for Metric);

                    v205 = *(v204 + *(v280 + 36));
                    sub_1002034BC(v204, type metadata accessor for Metric);
                    v206 = String._bridgeToObjectiveC()();
                    v207 = [v205 componentsSeparatedByString:v206];

                    v208 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
                    v40 = v251;
                    if (*(v208 + 16))
                    {
                      sub_1001A73BC(v268, v266);
                      v210 = *(v209 + 16);
                      v266 = v209;
                      if (v210)
                      {
                        v211 = (v209 + 32);
                        v281 = _swiftEmptyArrayStorage;
                        v212 = &type metadata for Int;
                        v276 = v208;
                        do
                        {
                          v214 = *v211++;
                          v213 = v214;
                          v287 = v214;
                          v215 = v212;
                          v287 = dispatch thunk of CustomStringConvertible.description.getter();
                          v288 = v216;
                          __chkstk_darwin(v287);
                          v250[-2] = &v287;
                          v217 = v208;
                          v218 = v271;
                          v219 = sub_1001E2ED0(sub_1002050FC, &v250[-4], v217);
                          v271 = v218;

                          if (v219)
                          {
                            v287 = v213;
                            v220 = dispatch thunk of CustomStringConvertible.description.getter();
                            v222 = v221;
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v281 = sub_100224D30(0, *(v281 + 2) + 1, 1, v281);
                            }

                            v224 = *(v281 + 2);
                            v223 = *(v281 + 3);
                            if (v224 >= v223 >> 1)
                            {
                              v281 = sub_100224D30((v223 > 1), v224 + 1, 1, v281);
                            }

                            v225 = v281;
                            *(v281 + 2) = v224 + 1;
                            v226 = &v225[16 * v224];
                            *(v226 + 4) = v220;
                            *(v226 + 5) = v222;
                            v212 = &type metadata for Int;
                          }

                          else
                          {
                            v212 = v215;
                          }

                          --v210;
                          v208 = v276;
                        }

                        while (v210);
                      }

                      else
                      {
                        v281 = _swiftEmptyArrayStorage;
                      }

                      if (!*(v281 + 2))
                      {

                        v25 = v267;
                        if (qword_100374FD8 != -1)
                        {
                          swift_once();
                        }

                        LODWORD(v277) = static os_log_type_t.default.getter();
                        sub_1001A551C(&unk_100377020, &unk_1002EF770);
                        v239 = swift_allocObject();
                        *(v239 + 16) = v255;
                        v285 = v208;
                        sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                        sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
                        v240 = BidirectionalCollection<>.joined(separator:)();
                        v242 = v241;

                        *(v239 + 56) = &type metadata for String;
                        v15 = sub_1001A76E8();
                        *(v239 + 64) = v15;
                        *(v239 + 32) = v240;
                        *(v239 + 40) = v242;
                        v285 = 0x6E20646E6142;
                        v286 = 0xE600000000000000;
                        v243 = Array.description.getter();
                        v245 = v244;

                        v246._countAndFlagsBits = v243;
                        v246._object = v245;
                        String.append(_:)(v246);

                        v247 = v285;
                        v248 = v286;
                        *(v239 + 96) = &type metadata for String;
                        *(v239 + 104) = v15;
                        *(v239 + 72) = v247;
                        *(v239 + 80) = v248;
                        os_log(_:dso:log:type:_:)();

                        v294 = v43;
                        v300 = v339;
                        v301 = v340;
                        *v302 = v341[0];
                        v287 = 0;
                        LOBYTE(v288) = v348;
                        *(&v288 + 1) = v347[0];
                        HIDWORD(v288) = *(v347 + 3);
                        v289 = 0;
                        v290 = v346;
                        *v291 = v345[0];
                        *&v291[3] = *(v345 + 3);
                        v292 = 0;
                        v293 = 0;
                        v295 = v344;
                        *v296 = v343[0];
                        *&v296[3] = *(v343 + 3);
                        v297 = 0;
                        v298 = v342;
                        *&v302[15] = *(v341 + 15);
                        v299 = v338;
                        v303 = 0;
                        v304 = v337;
                        v305 = 259;
                        v307 = v336;
                        v306 = v335;
                        v308 = v268;
                        v309 = v334;
                        *&v310[3] = *(v333 + 3);
                        *v310 = v333[0];
                        v311 = 0;
                        goto LABEL_99;
                      }

                      v25 = v267;
                      v40 = v251;
                      if (qword_100374FD8 != -1)
                      {
                        swift_once();
                      }

                      v266 = qword_1003824C0;
                      LODWORD(v265) = static os_log_type_t.default.getter();
                      sub_1001A551C(&unk_100377020, &unk_1002EF770);
                      v227 = swift_allocObject();
                      *(v227 + 16) = v255;
                      v287 = v208;
                      v259 = sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                      v250[1] = sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
                      v228 = BidirectionalCollection<>.joined(separator:)();
                      v230 = v229;

                      *(v227 + 56) = &type metadata for String;
                      v231 = sub_1001A76E8();
                      *(v227 + 64) = v231;
                      *(v227 + 32) = v228;
                      *(v227 + 40) = v230;
                      v287 = 0x6E20646E6142;
                      v288 = 0xE600000000000000;
                      v232 = v281;

                      v233._countAndFlagsBits = Array.description.getter();
                      String.append(_:)(v233);

                      v234 = v287;
                      v235 = v288;
                      *(v227 + 96) = &type metadata for String;
                      *(v227 + 104) = v231;
                      *(v227 + 72) = v234;
                      *(v227 + 80) = v235;
                      os_log(_:dso:log:type:_:)();

                      v287 = 0x6E20646E6142;
                      v288 = 0xE600000000000000;
                      v285 = v232;
                      v236 = BidirectionalCollection<>.joined(separator:)();
                      v49 = v237;

                      v238._countAndFlagsBits = v236;
                      v238._object = v49;
                      String.append(_:)(v238);

                      sub_1002014CC(&v349);
                      v265 = v288;
                      v266 = v287;
                      LOBYTE(v49) = 1;
                      v259 = v288;
                      v7 = v273;
                      v45 = v270;
                    }

                    else
                    {

                      v265 = 0;
                      v266 = 0;
                      LOBYTE(v49) = 1;
                    }

                    v48 = v283;
                  }

                  else
                  {

                    v265 = 0;
                    v266 = 0;
                    LOBYTE(v49) = 1;
                    v40 = v251;
                  }
                }

                else
                {

                  v265 = 0;
                  v266 = 0;
                  LOBYTE(v49) = 1;
                  v25 = v267;
                  v7 = v273;
                  v45 = v270;
                  v40 = v251;
                }
              }

              else
              {
LABEL_56:
                v265 = 0;
                v266 = 0;
                v268 = 0;
                LOBYTE(v49) = 6;
              }

              v38 = v252;
              goto LABEL_58;
            }

            v265 = 0;
            v266 = 0;
            v268 = 0;
            LOBYTE(v49) = 6;
          }

          else
          {
            v265 = 0;
            v266 = 0;
            v268 = 0;
            LOBYTE(v49) = 6;
            v48 = v283;
          }

LABEL_58:
          if (!v45 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v314 = 0uLL, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !*(&v314 + 1)))
          {

LABEL_106:
            v276 = 0;
            goto LABEL_142;
          }

          if (v314 == __PAIR128__(v40, v38))
          {
          }

          else
          {
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v52 & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          v276 = sub_100226B10(v277);
          if (v53)
          {
            goto LABEL_106;
          }

          v332 = 0;
          v54 = *(v269 + v257);
          v55 = *(v54 + 16);

          if (v55)
          {
            v56 = 0;
            v49 = v54 + 32;
            v57 = _swiftEmptyArrayStorage;
            v58 = v272;
            do
            {
              v59 = (v49 + 224 * v56);
              v60 = v56;
              while (1)
              {
                if (v60 >= *(v54 + 16))
                {
                  __break(1u);
                  goto LABEL_187;
                }

                v61 = v59[1];
                v314 = *v59;
                v315 = v61;
                v62 = v59[2];
                v63 = v59[3];
                v64 = v59[5];
                v318[0] = v59[4];
                v318[1] = v64;
                v316 = v62;
                v317 = v63;
                v65 = v59[6];
                v66 = v59[7];
                v67 = v59[9];
                v318[4] = v59[8];
                v319 = v67;
                v318[2] = v65;
                v318[3] = v66;
                v68 = v59[10];
                v69 = v59[11];
                v70 = v59[13];
                v321[1] = v59[12];
                v322 = v70;
                v320 = v68;
                v321[0] = v69;
                v56 = v60 + 1;
                if (v315 == v58)
                {
                  break;
                }

                v59 += 14;
                ++v60;
                if (v55 == v56)
                {
                  goto LABEL_79;
                }
              }

              sub_100203618(&v314, &v287);
              v71 = swift_isUniquelyReferenced_nonNull_native();
              v285 = v57;
              if ((v71 & 1) == 0)
              {
                sub_1001F5504(0, v57[2] + 1, 1);
                v57 = v285;
              }

              v73 = v57[2];
              v72 = v57[3];
              v58 = v272;
              if (v73 >= v72 >> 1)
              {
                sub_1001F5504((v72 > 1), v73 + 1, 1);
                v58 = v272;
                v57 = v285;
              }

              v57[2] = v73 + 1;
              v74 = &v57[28 * v73];
              v75 = v315;
              v74[2] = v314;
              v74[3] = v75;
              v76 = v316;
              v77 = v317;
              v78 = v318[1];
              v74[6] = v318[0];
              v74[7] = v78;
              v74[4] = v76;
              v74[5] = v77;
              v79 = v318[2];
              v80 = v318[3];
              v81 = v319;
              v74[10] = v318[4];
              v74[11] = v81;
              v74[8] = v79;
              v74[9] = v80;
              v82 = v320;
              v83 = v321[0];
              v84 = v322;
              v74[14] = v321[1];
              v74[15] = v84;
              v74[12] = v82;
              v74[13] = v83;
              v48 = v283;
            }

            while (v55 - 1 != v60);
          }

          else
          {
            v57 = _swiftEmptyArrayStorage;
          }

LABEL_79:

          if (!v57[2])
          {
            goto LABEL_136;
          }

          v85 = *(v57 + 13);
          v320 = *(v57 + 12);
          v321[0] = v85;
          v86 = *(v57 + 15);
          v321[1] = *(v57 + 14);
          v322 = v86;
          v87 = *(v57 + 9);
          v318[2] = *(v57 + 8);
          v318[3] = v87;
          v88 = *(v57 + 11);
          v318[4] = *(v57 + 10);
          v319 = v88;
          v89 = *(v57 + 5);
          v316 = *(v57 + 4);
          v317 = v89;
          v90 = *(v57 + 7);
          v318[0] = *(v57 + 6);
          v318[1] = v90;
          v91 = *(v57 + 3);
          v314 = *(v57 + 2);
          v315 = v91;
          sub_100203618(&v314, &v287);

          v92 = v322;
          v93 = v278;
          v281 = *(v322 + 16);
          if (v281)
          {
            v94 = 0;
            v95 = _swiftEmptyArrayStorage;
            while (v94 < *(v92 + 16))
            {
              v96 = (*(v282 + 80) + 32) & ~*(v282 + 80);
              v97 = *(v282 + 72);
              sub_100204DB0(v92 + v96 + v97 * v94, v93, type metadata accessor for Metric);
              if (!v48)
              {
                goto LABEL_82;
              }

              v98 = *(v93 + *(v280 + 28));
              type metadata accessor for CFString(0);
              LOBYTE(v49) = sub_10020169C(&unk_1003770F0, type metadata accessor for CFString);
              v99 = v283;
              v48 = v283;
              LOBYTE(v98) = static _CFObject.== infix(_:_:)();

              v93 = v278;
              if (v98)
              {
                sub_100204E18(v278, v279, type metadata accessor for Metric);
                v100 = swift_isUniquelyReferenced_nonNull_native();
                v287 = v95;
                if ((v100 & 1) == 0)
                {
                  sub_1001F54C0(0, v95[2] + 1, 1);
                  v95 = v287;
                }

                v49 = v95[2];
                v101 = v95[3];
                if (v49 >= v101 >> 1)
                {
                  sub_1001F54C0(v101 > 1, v49 + 1, 1);
                  v95 = v287;
                }

                v95[2] = v49 + 1;
                sub_100204E18(v279, v95 + v96 + v49 * v97, type metadata accessor for Metric);
                v48 = v283;
              }

              else
              {
LABEL_82:
                sub_1002034BC(v93, type metadata accessor for Metric);
              }

              if (v281 == ++v94)
              {
                goto LABEL_93;
              }
            }

LABEL_187:
            __break(1u);
LABEL_188:

            *&v317 = v43;
            *(&v318[1] + 9) = v339;
            *(&v318[2] + 9) = v340;
            *(&v318[3] + 9) = v341[0];
            *&v314 = 0;
            BYTE8(v314) = v348;
            *(&v314 + 9) = v347[0];
            HIDWORD(v314) = *(v347 + 3);
            *&v315 = 0;
            BYTE8(v315) = v346;
            *(&v315 + 9) = v345[0];
            HIDWORD(v315) = *(v345 + 3);
            *&v316 = v266;
            *(&v316 + 1) = v265;
            BYTE8(v317) = v344;
            *(&v317 + 9) = v343[0];
            HIDWORD(v317) = *(v343 + 3);
            *&v318[0] = 0;
            BYTE8(v318[0]) = v342;
            *(v318 + 9) = v338;
            *(&v318[4] + 1) = *(v341 + 15);
            *&v319 = 0;
            BYTE8(v319) = v337;
            BYTE9(v319) = 3;
            BYTE10(v319) = v49;
            HIBYTE(v319) = v336;
            *(&v319 + 11) = v335;
            *&v320 = v268;
            BYTE8(v320) = v334;
            HIDWORD(v320) = *(v333 + 3);
            *(&v320 + 9) = v333[0];
            *&v321[0] = v276;
            BYTE8(v321[0]) = v332;
            *(v321 + 9) = v331;
            sub_1002014CC(&v314);
            return _swiftEmptyArrayStorage;
          }

          v95 = _swiftEmptyArrayStorage;
LABEL_93:
          sub_100203650(&v314);
          if (v95[2])
          {
            v102 = v263;
            sub_100204DB0(v95 + ((*(v282 + 80) + 32) & ~*(v282 + 80)), v263, type metadata accessor for Metric);

            v103 = *(v102 + *(v280 + 36));
            sub_1002034BC(v102, type metadata accessor for Metric);
            v104 = String._bridgeToObjectiveC()();
            v105 = [v103 componentsSeparatedByString:v104];

            v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v267;
            if (*(v106 + 16))
            {
              v107 = sub_1001A7150(v276);
              v287 = v107;
              v287 = dispatch thunk of CustomStringConvertible.description.getter();
              v288 = v108;
              __chkstk_darwin(v287);
              v250[-2] = &v287;
              v109 = v271;
              v110 = sub_1001E2ED0(sub_1002050FC, &v250[-4], v106);
              v271 = v109;

              if ((v110 & 1) == 0)
              {

                if (qword_100374FD8 != -1)
                {
                  swift_once();
                }

                v15 = qword_1003824C0;
                static os_log_type_t.default.getter();
                sub_1001A551C(&unk_100377020, &unk_1002EF770);
                v111 = swift_allocObject();
                *(v111 + 16) = v255;
                v285 = v106;
                sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
                v112 = BidirectionalCollection<>.joined(separator:)();
                v114 = v113;

                *(v111 + 56) = &type metadata for String;
                v115 = sub_1001A76E8();
                *(v111 + 64) = v115;
                *(v111 + 32) = v112;
                *(v111 + 40) = v114;
                v284 = v107;
                v285 = 0x4220646E6142;
                v286 = 0xE600000000000000;
                v116._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v116);

                v117 = v285;
                v118 = v286;
                *(v111 + 96) = &type metadata for String;
                *(v111 + 104) = v115;
                *(v111 + 72) = v117;
                *(v111 + 80) = v118;
                os_log(_:dso:log:type:_:)();

                v294 = v43;
                v300 = v339;
                v301 = v340;
                *v302 = v341[0];
                v287 = 0;
                LOBYTE(v288) = v348;
                *(&v288 + 1) = v347[0];
                HIDWORD(v288) = *(v347 + 3);
                v289 = 0;
                v290 = v346;
                *v291 = v345[0];
                *&v291[3] = *(v345 + 3);
                v292 = v266;
                v293 = v265;
                v295 = v344;
                *v296 = v343[0];
                *&v296[3] = *(v343 + 3);
                v297 = 0;
                v298 = v342;
                *&v302[15] = *(v341 + 15);
                v299 = v338;
                v303 = 0;
                v304 = v337;
                v305 = 515;
                v307 = v336;
                v306 = v335;
                v308 = v268;
                v309 = v334;
                *&v310[3] = *(v333 + 3);
                *v310 = v333[0];
                v311 = v276;
LABEL_99:
                v312 = v332;
                v313 = v331;
                sub_1002014CC(&v287);
                v7 = v273;
                v27 = v256;
                goto LABEL_19;
              }

              if (qword_100374FD8 != -1)
              {
                swift_once();
              }

              v281 = qword_1003824C0;
              LODWORD(v266) = static os_log_type_t.default.getter();
              sub_1001A551C(&unk_100377020, &unk_1002EF770);
              v174 = swift_allocObject();
              *(v174 + 16) = v255;
              v287 = v106;
              sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
              sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
              v175 = BidirectionalCollection<>.joined(separator:)();
              v177 = v176;

              *(v174 + 56) = &type metadata for String;
              v49 = sub_1001A76E8();
              *(v174 + 64) = v49;
              *(v174 + 32) = v175;
              *(v174 + 40) = v177;
              v287 = 0x4220646E6142;
              v288 = 0xE600000000000000;
              v285 = v107;
              v178._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v178);

              v179 = v287;
              v180 = v288;
              *(v174 + 96) = &type metadata for String;
              *(v174 + 104) = v49;
              *(v174 + 72) = v179;
              *(v174 + 80) = v180;
              LOBYTE(v49) = 2;
              os_log(_:dso:log:type:_:)();

              v287 = 0x4220646E6142;
              v288 = 0xE600000000000000;
              v285 = v107;
              v181._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v181);

              v265 = v288;
              v266 = v287;
              v259 = v288;
            }

            else
            {

              LOBYTE(v49) = 2;
            }
          }

          else
          {
LABEL_136:

            LOBYTE(v49) = 2;
            v25 = v267;
          }

          v7 = v273;
LABEL_142:
          v182 = sub_1001A6478(3uLL);
          if (v182 == 4)
          {
            goto LABEL_188;
          }

          v183 = v182;
          v337 = 0;
          v15 = sub_100226B1C(v277);

          v342 = 0;
          v184 = v259;
          if (v259)
          {
            v348 = 0;
            v185 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
            v186 = v272;
            v187 = [v185 initWithSlot:v272];
            v188 = [v187 slotID];

            *(&v318[1] + 9) = v339;
            *(&v318[2] + 9) = v340;
            *(&v318[3] + 9) = v341[0];
            v189 = v188 != 1;
            v346 = 0;
            *&v314 = v186;
            BYTE8(v314) = v348;
            *(&v314 + 9) = v347[0];
            HIDWORD(v314) = *(v347 + 3);
            *&v315 = v189;
            BYTE8(v315) = 0;
            *(&v315 + 9) = v345[0];
            HIDWORD(v315) = *(v345 + 3);
            *&v316 = v266;
            *(&v316 + 1) = v265;
            *&v317 = v43;
            BYTE8(v317) = v344;
            *(&v317 + 9) = v343[0];
            HIDWORD(v317) = *(v343 + 3);
            *&v318[0] = v15;
            BYTE8(v318[0]) = v342;
            *(&v318[4] + 1) = *(v341 + 15);
            *(v318 + 9) = v338;
            *&v319 = 3;
            BYTE8(v319) = v337;
            BYTE9(v319) = v183;
            BYTE10(v319) = v49;
            HIBYTE(v319) = v336;
            *(&v319 + 11) = v335;
            *&v320 = v268;
            BYTE8(v320) = v334;
            HIDWORD(v320) = *(v333 + 3);
            *(&v320 + 9) = v333[0];
            *&v321[0] = v276;
            BYTE8(v321[0]) = v332;
            *(v321 + 9) = v331;
            sub_100201470(&v314, &v287);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v253 = sub_100224C0C(0, *(v253 + 2) + 1, 1, v253);
            }

            v191 = *(v253 + 2);
            v190 = *(v253 + 3);
            v192 = v272;
            if (v191 >= v190 >> 1)
            {
              v249 = sub_100224C0C((v190 > 1), v191 + 1, 1, v253);
              v192 = v272;
              v253 = v249;
            }

            v193 = v253;
            *(v253 + 2) = v191 + 1;
            v194 = &v193[208 * v191];
            *(v194 + 2) = v314;
            v195 = v315;
            v196 = v316;
            v197 = v318[0];
            *(v194 + 5) = v317;
            *(v194 + 6) = v197;
            *(v194 + 3) = v195;
            *(v194 + 4) = v196;
            v198 = v318[1];
            v199 = v318[2];
            v200 = v318[4];
            *(v194 + 9) = v318[3];
            *(v194 + 10) = v200;
            *(v194 + 7) = v198;
            *(v194 + 8) = v199;
            v201 = v319;
            v202 = v320;
            v203 = v321[0];
            *(v194 + 217) = *(v321 + 9);
            *(v194 + 12) = v202;
            *(v194 + 13) = v203;
            *(v194 + 11) = v201;
            v184 = v192;
          }

          else
          {
            v189 = 0;
          }

          *&v317 = v43;
          *(&v318[1] + 9) = v339;
          *(&v318[2] + 9) = v340;
          *(&v318[3] + 9) = v341[0];
          *&v314 = v184;
          BYTE8(v314) = v348;
          *(&v314 + 9) = v347[0];
          HIDWORD(v314) = *(v347 + 3);
          *&v315 = v189;
          BYTE8(v315) = v346;
          *(&v315 + 9) = v345[0];
          HIDWORD(v315) = *(v345 + 3);
          *&v316 = v266;
          *(&v316 + 1) = v265;
          BYTE8(v317) = v344;
          *(&v317 + 9) = v343[0];
          HIDWORD(v317) = *(v343 + 3);
          *&v318[0] = v15;
          BYTE8(v318[0]) = v342;
          *(&v318[4] + 1) = *(v341 + 15);
          *(v318 + 9) = v338;
          *&v319 = 3;
          BYTE8(v319) = v337;
          BYTE9(v319) = v183;
          BYTE10(v319) = v49;
          HIBYTE(v319) = v336;
          *(&v319 + 11) = v335;
          *&v320 = v268;
          BYTE8(v320) = v334;
          HIDWORD(v320) = *(v333 + 3);
          *(&v320 + 9) = v333[0];
          *&v321[0] = v276;
          BYTE8(v321[0]) = v332;
          *(v321 + 9) = v331;
          sub_1002014CC(&v314);
          v27 = v256;
          if (v7 == v275)
          {
            goto LABEL_185;
          }
        }

        else
        {
LABEL_18:

LABEL_19:
          if (v7 == v275)
          {
            goto LABEL_185;
          }
        }
      }

      goto LABEL_29;
    }

    v253 = _swiftEmptyArrayStorage;
LABEL_185:

    v20 = v253;
  }

  else
  {
LABEL_9:

LABEL_10:
    v20 = _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002EED50;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 32) = 0xD00000000000001BLL;
  *(v21 + 40) = 0x80000001002BBE80;
  *(v21 + 88) = sub_1001A551C(&qword_100377138, &qword_1002F22F8);
  *(v21 + 64) = v20;

  print(_:separator:terminator:)();

  return v20;
}

void *sub_1001EB62C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_1001F5524(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1001A773C(i, v9);
      sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001F5524((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1001EB754(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1001A773C(i, v6);
    sub_1001E1BB4(0, &qword_100377140, CellularLoggingFileInformation_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void *sub_1001EB860(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1001F53D8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1001A773C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001F53D8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1001EB974(void *a1, uint64_t a2)
{
  v241 = a1;
  v262 = type metadata accessor for Metric(0);
  v266 = *(v262 - 8);
  v3 = *(v266 + 64);
  v4 = __chkstk_darwin(v262);
  v260 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  object = &v230 - v7;
  v9 = __chkstk_darwin(v6);
  v246 = &v230 - v10;
  v11 = __chkstk_darwin(v9);
  v243 = &v230 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v230 - v14;
  __chkstk_darwin(v13);
  v235 = &v230 - v16;
  v248 = type metadata accessor for FTMBandInfoDataModel(0);
  v236 = *(v248 - 8);
  v17 = *(v236 + 64);
  v18 = __chkstk_darwin(v248);
  v238 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v230 - v20;
  v250 = a2;
  v247 = a2 != 1;
  if (qword_100375020 != -1)
  {
    goto LABEL_193;
  }

LABEL_2:
  v22 = sub_10021AF50();
  v23 = v22[2];
  if (v23)
  {
    v256 = v21;
    v242 = v15;
    v261 = object;
    v24 = 0;
    object = 0x666E4920646E6142;
    while (1)
    {
      if (v24 >= v22[2])
      {
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        swift_once();
        goto LABEL_2;
      }

      if (!*(v22 + v24 + 32))
      {
        v15 = 0xE600000000000000;
        goto LABEL_9;
      }

      if (*(v22 + v24 + 32) != 1)
      {
        break;
      }

      v15 = 0xE700000000000000;
LABEL_9:
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_15;
      }

      if (v23 == ++v24)
      {
        goto LABEL_11;
      }
    }

LABEL_15:

    v28 = [v241 legacyInfo];
    v29 = v256;
    if (!v28)
    {
      goto LABEL_12;
    }

    v30 = v28;
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = sub_1001EB62C(v31);

    if (!v32)
    {
      goto LABEL_12;
    }

    object = v32[2];
    v237 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v254 = object;
    if (object)
    {
      v15 = 0;
      v255 = 0;
      v253 = v32 + 4;
      v252 = kCTCellMonitorCellTypeNeighbor;
      v33 = kCTCellMonitorRadioAccessTechnologyLTE;
      v234 = xmmword_1002EED50;
      v233 = _swiftEmptyArrayStorage;
      v257 = kCTCellMonitorRadioAccessTechnologyLTE;
      v251 = v32;
      v244 = kCTCellMonitorRadioAccessTechnologyNR;
      v239 = kCTRegistrationRadioAccessTechnologyNR;
      v264 = kCTRegistrationRadioAccessTechnologyLTE;
      while (1)
      {
        if (v15 >= v32[2])
        {
          goto LABEL_190;
        }

        v34 = v253[v15];

        v21 = sub_100226314(v35);
        object = v36;
        v259 = v34;
        v37 = sub_1002265B8(v34);
        result = v252;
        if (!v252)
        {
          __break(1u);
          return result;
        }

        ++v15;
        if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && object == v38)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v40 = v244;
        if (v37 == 1)
        {
          v41 = 2;
LABEL_34:
          v42 = v259;
          v21 = sub_100225CF4(v259);
          v44 = v43;
          object = *(v248 + 92);
          v45 = type metadata accessor for Date();
          (*(*(v45 - 8) + 56))(v29 + object, 1, 1, v45);
          *v29 = v247;
          *(v29 + 8) = 0;
          *(v29 + 9) = v41;
          *(v29 + 16) = 0;
          *(v29 + 24) = 1793;
          *(v29 + 40) = 0;
          *(v29 + 48) = 0;
          *(v29 + 32) = 0;
          *(v29 + 56) = 1;
          *(v29 + 64) = 0;
          *(v29 + 72) = 1;
          *(v29 + 80) = 0;
          *(v29 + 88) = 1;
          *(v29 + 96) = 0;
          *(v29 + 104) = 1;
          *(v29 + 112) = 0;
          *(v29 + 120) = 1;
          *(v29 + 128) = 0;
          *(v29 + 136) = 1;
          *(v29 + 144) = 0;
          *(v29 + 152) = 1;
          *(v29 + 160) = 0;
          *(v29 + 168) = 1;
          *(v29 + 176) = 0;
          *(v29 + 184) = 1;
          *(v29 + 192) = 0;
          *(v29 + 200) = 1;
          *(v29 + 208) = 0;
          *(v29 + 216) = 1;
          *(v29 + 224) = 0;
          *(v29 + 232) = 1;
          *(v29 + 240) = 0;
          *(v29 + 248) = 1;
          *(v29 + 256) = 0;
          *(v29 + 264) = 1;
          v46 = v42;
          v47 = v21;
          v48 = COERCE_DOUBLE(sub_100226854(v46));
          if (v49)
          {
            v48 = 0.0;
          }

          if (v48 <= 1000000.0)
          {
            v50 = v48;
          }

          else
          {
            v50 = v48 / 1000000.0;
          }

          if (v50 <= 0.0)
          {
            goto LABEL_52;
          }

          if (v33)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v269 = 0uLL;
              static String._conditionallyBridgeFromObjectiveC(_:result:)();
              if (*(&v269 + 1))
              {
                if (v269 == __PAIR128__(v44, v21))
                {

                  if (v50 <= 100.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  object = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v50 <= 100.0 && (object & 1) != 0)
                  {
LABEL_48:
                    if (v50 == 6.0)
                    {
                      v51 = 1.4;
                    }

                    else
                    {
                      v51 = 3.0;
                      if (v50 != 15.0)
                      {
                        v51 = 5.0;
                        if (v50 != 25.0)
                        {
                          v51 = 10.0;
                          if (v50 != 50.0)
                          {
                            v51 = 15.0;
                            if (v50 != 75.0)
                            {
                              if (v50 == 100.0)
                              {
                                v51 = 20.0;
                              }

                              else
                              {
                                v51 = v50;
                              }
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_51;
                  }
                }
              }
            }
          }

          v51 = v50;
LABEL_51:
          *(v29 + 48) = v51;
          *(v29 + 56) = 0;
LABEL_52:
          v258 = v15;
          if (!v40)
          {
            goto LABEL_59;
          }

          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            goto LABEL_59;
          }

          v269 = 0uLL;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
          if (!*(&v269 + 1))
          {
            goto LABEL_59;
          }

          if (v269 == __PAIR128__(v44, v21))
          {
          }

          else
          {
            object = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((object & 1) == 0)
            {
              goto LABEL_59;
            }
          }

          v52 = sub_100226B04(v259);
          if (v53)
          {
            goto LABEL_59;
          }

          *(v29 + 25) = 1;
          v240 = v52;
          *(v29 + 80) = v52;
          *(v29 + 88) = 0;
          v118 = sub_1001FDC20(v241);
          object = v119;
          *&v269 = v118;
          *(&v269 + 1) = v119;
          v267 = 32;
          v268 = 0xE100000000000000;
          sub_1001A56A0();
          v120 = StringProtocol.components<A>(separatedBy:)();

          if (v120[2])
          {
            object = v120[4];
            v21 = v120[5];

            v121 = sub_1001E248C(object, v21);
            if (v122)
            {
              v123 = 0;
            }

            else
            {
              v123 = v121;
            }

            v230 = v123;
          }

          else
          {

            v230 = 0;
          }

          v232 = v44;
          v124 = *(v249 + v237);
          v15 = *(v124 + 16);

          v231 = v47;
          if (v15)
          {
            v125 = 0;
            v21 = v124 + 32;
            v126 = _swiftEmptyArrayStorage;
            v127 = v250;
LABEL_111:
            v128 = (v21 + 224 * v125);
            v129 = v125;
            while (v129 < *(v124 + 16))
            {
              v130 = v128[1];
              v269 = *v128;
              v270 = v130;
              v131 = v128[2];
              v132 = v128[3];
              v133 = v128[5];
              v273 = v128[4];
              v274 = v133;
              v271 = v131;
              v272 = v132;
              v134 = v128[6];
              v135 = v128[7];
              v136 = v128[9];
              v277 = v128[8];
              v278 = v136;
              v275 = v134;
              v276 = v135;
              v137 = v128[10];
              v138 = v128[11];
              v139 = v128[13];
              v281 = v128[12];
              v282 = v139;
              v279 = v137;
              v280 = v138;
              v125 = v129 + 1;
              if (v270 == v127)
              {
                sub_100203618(&v269, &v267);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v283 = v126;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1001F5504(0, v126[2] + 1, 1);
                  v126 = v283;
                }

                v142 = v126[2];
                v141 = v126[3];
                object = v142 + 1;
                v127 = v250;
                if (v142 >= v141 >> 1)
                {
                  sub_1001F5504((v141 > 1), v142 + 1, 1);
                  v127 = v250;
                  v126 = v283;
                }

                v126[2] = object;
                v143 = &v126[28 * v142];
                v144 = v270;
                v143[2] = v269;
                v143[3] = v144;
                v145 = v271;
                v146 = v272;
                v147 = v274;
                v143[6] = v273;
                v143[7] = v147;
                v143[4] = v145;
                v143[5] = v146;
                v148 = v275;
                v149 = v276;
                v150 = v278;
                v143[10] = v277;
                v143[11] = v150;
                v143[8] = v148;
                v143[9] = v149;
                v151 = v279;
                v152 = v280;
                v153 = v282;
                v143[14] = v281;
                v143[15] = v153;
                v143[12] = v151;
                v143[13] = v152;
                v47 = v231;
                if (v15 - 1 != v129)
                {
                  goto LABEL_111;
                }

                goto LABEL_123;
              }

              v128 += 14;
              ++v129;
              if (v15 == v125)
              {
                goto LABEL_123;
              }
            }

            goto LABEL_191;
          }

          v126 = _swiftEmptyArrayStorage;
LABEL_123:

          if (!v126[2])
          {

            v240 = 0;
            v29 = v256;
            v33 = v257;
            v15 = v258;
            v44 = v232;
            goto LABEL_60;
          }

          v154 = *(v126 + 13);
          v279 = *(v126 + 12);
          v280 = v154;
          v155 = *(v126 + 15);
          v281 = *(v126 + 14);
          v282 = v155;
          v156 = *(v126 + 9);
          v275 = *(v126 + 8);
          v276 = v156;
          v157 = *(v126 + 11);
          v277 = *(v126 + 10);
          v278 = v157;
          v158 = *(v126 + 5);
          v271 = *(v126 + 4);
          v272 = v158;
          v159 = *(v126 + 7);
          v273 = *(v126 + 6);
          v274 = v159;
          v160 = *(v126 + 3);
          v269 = *(v126 + 2);
          v270 = v160;
          sub_100203618(&v269, &v267);

          object = v282;
          v161 = v242;
          v29 = v256;
          v33 = v257;
          v15 = v258;
          v265 = *(v282 + 16);
          if (v265)
          {
            v162 = 0;
            v245 = _swiftEmptyArrayStorage;
            v263 = v282;
            while (v162 < *(object + 16))
            {
              v163 = (*(v266 + 80) + 32) & ~*(v266 + 80);
              v164 = *(v266 + 72);
              sub_100204DB0(object + v163 + v164 * v162, v161, type metadata accessor for Metric);
              v165 = v239;
              if (!v239)
              {
                goto LABEL_126;
              }

              v166 = *(v161 + *(v262 + 28));
              type metadata accessor for CFString(0);
              v21 = sub_10020169C(&unk_1003770F0, type metadata accessor for CFString);
              v167 = v165;
              object = v263;
              LOBYTE(v166) = static _CFObject.== infix(_:_:)();

              v29 = v256;
              v161 = v242;
              if (v166)
              {
                sub_100204E18(v242, v243, type metadata accessor for Metric);
                v168 = v245;
                v169 = swift_isUniquelyReferenced_nonNull_native();
                v267 = v168;
                if ((v169 & 1) == 0)
                {
                  sub_1001F54C0(0, v168[2] + 1, 1);
                  v168 = v267;
                }

                v21 = v168[2];
                v170 = v168[3];
                if (v21 >= v170 >> 1)
                {
                  sub_1001F54C0(v170 > 1, v21 + 1, 1);
                  v168 = v267;
                }

                v168[2] = v21 + 1;
                v245 = v168;
                sub_100204E18(v243, v168 + v163 + v21 * v164, type metadata accessor for Metric);
                object = v263;
              }

              else
              {
LABEL_126:
                sub_1002034BC(v161, type metadata accessor for Metric);
              }

              ++v162;
              v33 = v257;
              v15 = v258;
              if (v265 == v162)
              {
                goto LABEL_163;
              }
            }

            goto LABEL_192;
          }

          v245 = _swiftEmptyArrayStorage;
LABEL_163:
          sub_100203650(&v269);
          if (!v245[2])
          {

            v240 = 0;
            v47 = v231;
            v44 = v232;
            goto LABEL_60;
          }

          v188 = v235;
          sub_100204DB0(v245 + ((*(v266 + 80) + 32) & ~*(v266 + 80)), v235, type metadata accessor for Metric);

          v189 = *(v188 + *(v262 + 36));
          sub_1002034BC(v188, type metadata accessor for Metric);
          v190 = String._bridgeToObjectiveC()();
          v21 = [v189 componentsSeparatedByString:v190];

          object = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v231;
          v44 = v232;
          if (!*(object + 16))
          {

LABEL_59:
            v240 = 0;
            goto LABEL_60;
          }

          sub_1001A73BC(v240, v230);
          v192 = v191[2];
          v245 = v191;
          if (v192)
          {
            v193 = v191 + 4;
            v263 = _swiftEmptyArrayStorage;
            v194 = &type metadata for Int;
            do
            {
              v195 = *v193;
              v265 = (v193 + 1);
              v267 = v195;
              v196 = v194;
              v267 = dispatch thunk of CustomStringConvertible.description.getter();
              v268 = v197;
              __chkstk_darwin(v267);
              *(&v230 - 2) = &v267;
              v198 = object;
              v199 = object;
              v200 = v255;
              v201 = sub_1001E2ED0(sub_1002050FC, (&v230 - 4), v199);
              v255 = v200;

              if (v201)
              {
                v267 = v195;
                v202 = dispatch thunk of CustomStringConvertible.description.getter();
                v204 = v203;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v263 = sub_100224D30(0, *(v263 + 2) + 1, 1, v263);
                }

                v44 = v232;
                v206 = *(v263 + 2);
                v205 = *(v263 + 3);
                if (v206 >= v205 >> 1)
                {
                  v263 = sub_100224D30((v205 > 1), v206 + 1, 1, v263);
                }

                v207 = v263;
                *(v263 + 2) = v206 + 1;
                v208 = &v207[16 * v206];
                *(v208 + 4) = v202;
                *(v208 + 5) = v204;
                v194 = &type metadata for Int;
              }

              else
              {
                v194 = v196;
                v44 = v232;
              }

              --v192;
              object = v198;
              v193 = v265;
            }

            while (v192);
          }

          else
          {
            v263 = _swiftEmptyArrayStorage;
          }

          v33 = v257;
          if (!*(v263 + 2))
          {

            if (qword_100374FD8 != -1)
            {
              swift_once();
            }

            static os_log_type_t.default.getter();
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v21 = swift_allocObject();
            *(v21 + 16) = v234;
            v267 = object;
            sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
            sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
            v221 = BidirectionalCollection<>.joined(separator:)();
            v223 = v222;

            *(v21 + 56) = &type metadata for String;
            v224 = sub_1001A76E8();
            *(v21 + 64) = v224;
            *(v21 + 32) = v221;
            *(v21 + 40) = v223;
            v267 = 0x6E20646E6142;
            v268 = 0xE600000000000000;
            object = Array.description.getter();
            v226 = v225;

            v227._countAndFlagsBits = object;
            v227._object = v226;
            String.append(_:)(v227);

            v228 = v267;
            v229 = v268;
            *(v21 + 96) = &type metadata for String;
            *(v21 + 104) = v224;
            *(v21 + 72) = v228;
            *(v21 + 80) = v229;
            os_log(_:dso:log:type:_:)();
            goto LABEL_101;
          }

          if (qword_100374FD8 != -1)
          {
            swift_once();
          }

          v265 = qword_1003824C0;
          LODWORD(v245) = static os_log_type_t.default.getter();
          sub_1001A551C(&unk_100377020, &unk_1002EF770);
          v209 = swift_allocObject();
          *(v209 + 16) = v234;
          v267 = object;
          v240 = sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
          v232 = sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
          v210 = BidirectionalCollection<>.joined(separator:)();
          v212 = v211;

          *(v209 + 56) = &type metadata for String;
          v213 = sub_1001A76E8();
          *(v209 + 64) = v213;
          *(v209 + 32) = v210;
          *(v209 + 40) = v212;
          v267 = 0x6E20646E6142;
          v268 = 0xE600000000000000;
          v214 = v263;

          v215._countAndFlagsBits = Array.description.getter();
          String.append(_:)(v215);

          v216 = v267;
          v217 = v268;
          *(v209 + 96) = &type metadata for String;
          *(v209 + 104) = v213;
          *(v209 + 72) = v216;
          *(v209 + 80) = v217;
          os_log(_:dso:log:type:_:)();

          v267 = 0x6E20646E6142;
          v268 = 0xE600000000000000;
          v283 = v214;
          object = BidirectionalCollection<>.joined(separator:)();
          v21 = v218;

          v219._countAndFlagsBits = object;
          v219._object = v21;
          String.append(_:)(v219);

          v220 = v268;
          v29 = v256;
          *(v256 + 32) = v267;
          *(v29 + 40) = v220;
          v240 = v220;
          v15 = v258;
          v47 = v231;
LABEL_60:
          if (!v33 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v269 = 0uLL, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !*(&v269 + 1)))
          {

            goto LABEL_143;
          }

          if (v269 == __PAIR128__(v44, v47))
          {
          }

          else
          {
            object = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((object & 1) == 0)
            {
              goto LABEL_143;
            }
          }

          v54 = sub_100226B10(v259);
          if ((v55 & 1) == 0)
          {
            *(v29 + 25) = 2;
            v245 = v54;
            *(v29 + 96) = v54;
            *(v29 + 104) = 0;
            v56 = *(v249 + v237);
            v15 = *(v56 + 16);

            if (v15)
            {
              v57 = 0;
              v21 = v56 + 32;
              v58 = _swiftEmptyArrayStorage;
              v59 = v250;
              do
              {
                v60 = (v21 + 224 * v57);
                v61 = v57;
                while (1)
                {
                  if (v61 >= *(v56 + 16))
                  {
                    __break(1u);
                    goto LABEL_188;
                  }

                  v62 = v60[1];
                  v269 = *v60;
                  v270 = v62;
                  v63 = v60[2];
                  v64 = v60[3];
                  v65 = v60[5];
                  v273 = v60[4];
                  v274 = v65;
                  v271 = v63;
                  v272 = v64;
                  v66 = v60[6];
                  v67 = v60[7];
                  v68 = v60[9];
                  v277 = v60[8];
                  v278 = v68;
                  v275 = v66;
                  v276 = v67;
                  v69 = v60[10];
                  v70 = v60[11];
                  v71 = v60[13];
                  v281 = v60[12];
                  v282 = v71;
                  v279 = v69;
                  v280 = v70;
                  v57 = v61 + 1;
                  if (v270 == v59)
                  {
                    break;
                  }

                  v60 += 14;
                  ++v61;
                  if (v15 == v57)
                  {
                    goto LABEL_81;
                  }
                }

                sub_100203618(&v269, &v267);
                v72 = swift_isUniquelyReferenced_nonNull_native();
                v283 = v58;
                if ((v72 & 1) == 0)
                {
                  sub_1001F5504(0, v58[2] + 1, 1);
                  v58 = v283;
                }

                v74 = v58[2];
                v73 = v58[3];
                object = v74 + 1;
                v59 = v250;
                if (v74 >= v73 >> 1)
                {
                  sub_1001F5504((v73 > 1), v74 + 1, 1);
                  v59 = v250;
                  v58 = v283;
                }

                v58[2] = object;
                v75 = &v58[28 * v74];
                v76 = v270;
                v75[2] = v269;
                v75[3] = v76;
                v77 = v271;
                v78 = v272;
                v79 = v274;
                v75[6] = v273;
                v75[7] = v79;
                v75[4] = v77;
                v75[5] = v78;
                v80 = v275;
                v81 = v276;
                v82 = v278;
                v75[10] = v277;
                v75[11] = v82;
                v75[8] = v80;
                v75[9] = v81;
                v83 = v279;
                v84 = v280;
                v85 = v282;
                v75[14] = v281;
                v75[15] = v85;
                v75[12] = v83;
                v75[13] = v84;
              }

              while (v15 - 1 != v61);
            }

            else
            {
              v58 = _swiftEmptyArrayStorage;
            }

LABEL_81:

            if (!v58[2])
            {
              goto LABEL_137;
            }

            v86 = *(v58 + 13);
            v279 = *(v58 + 12);
            v280 = v86;
            v87 = *(v58 + 15);
            v281 = *(v58 + 14);
            v282 = v87;
            v88 = *(v58 + 9);
            v275 = *(v58 + 8);
            v276 = v88;
            v89 = *(v58 + 11);
            v277 = *(v58 + 10);
            v278 = v89;
            v90 = *(v58 + 5);
            v271 = *(v58 + 4);
            v272 = v90;
            v91 = *(v58 + 7);
            v273 = *(v58 + 6);
            v274 = v91;
            v92 = *(v58 + 3);
            v269 = *(v58 + 2);
            v270 = v92;
            sub_100203618(&v269, &v267);

            object = v282;
            v93 = v261;
            v265 = *(v282 + 16);
            if (v265)
            {
              v94 = 0;
              v95 = _swiftEmptyArrayStorage;
              v263 = v282;
              while (v94 < *(object + 16))
              {
                v96 = (*(v266 + 80) + 32) & ~*(v266 + 80);
                v97 = *(v266 + 72);
                sub_100204DB0(object + v96 + v97 * v94, v93, type metadata accessor for Metric);
                v15 = v264;
                if (!v264)
                {
                  goto LABEL_84;
                }

                v98 = *(v93 + *(v262 + 28));
                type metadata accessor for CFString(0);
                v21 = sub_10020169C(&unk_1003770F0, type metadata accessor for CFString);
                v99 = v15;
                object = v263;
                LOBYTE(v98) = static _CFObject.== infix(_:_:)();

                v93 = v261;
                if (v98)
                {
                  sub_100204E18(v261, v260, type metadata accessor for Metric);
                  v100 = swift_isUniquelyReferenced_nonNull_native();
                  v267 = v95;
                  if ((v100 & 1) == 0)
                  {
                    sub_1001F54C0(0, v95[2] + 1, 1);
                    v95 = v267;
                  }

                  v21 = v95[2];
                  v101 = v95[3];
                  if (v21 >= v101 >> 1)
                  {
                    sub_1001F54C0(v101 > 1, v21 + 1, 1);
                    v95 = v267;
                  }

                  v95[2] = v21 + 1;
                  sub_100204E18(v260, v95 + v96 + v21 * v97, type metadata accessor for Metric);
                  object = v263;
                }

                else
                {
LABEL_84:
                  sub_1002034BC(v93, type metadata accessor for Metric);
                }

                if (v265 == ++v94)
                {
                  goto LABEL_95;
                }
              }

LABEL_188:
              __break(1u);
              goto LABEL_189;
            }

            v95 = _swiftEmptyArrayStorage;
LABEL_95:
            sub_100203650(&v269);
            if (v95[2])
            {
              v102 = v246;
              sub_100204DB0(v95 + ((*(v266 + 80) + 32) & ~*(v266 + 80)), v246, type metadata accessor for Metric);

              v103 = *(v102 + *(v262 + 36));
              sub_1002034BC(v102, type metadata accessor for Metric);
              v104 = String._bridgeToObjectiveC()();
              v21 = [v103 componentsSeparatedByString:v104];

              v105 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v257;
              if (*(v105 + 16))
              {
                v106 = sub_1001A7150(v245);
                v267 = v106;
                v267 = dispatch thunk of CustomStringConvertible.description.getter();
                v268 = v107;
                __chkstk_darwin(v267);
                *(&v230 - 2) = &v267;
                v108 = v255;
                v109 = sub_1001E2ED0(sub_100203680, (&v230 - 4), v105);
                v255 = v108;

                if ((v109 & 1) == 0)
                {

                  if (qword_100374FD8 != -1)
                  {
                    swift_once();
                  }

                  v21 = static os_log_type_t.default.getter();
                  sub_1001A551C(&unk_100377020, &unk_1002EF770);
                  v110 = swift_allocObject();
                  *(v110 + 16) = v234;
                  v267 = v105;
                  sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                  sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
                  v111 = BidirectionalCollection<>.joined(separator:)();
                  v113 = v112;

                  *(v110 + 56) = &type metadata for String;
                  v114 = sub_1001A76E8();
                  *(v110 + 64) = v114;
                  *(v110 + 32) = v111;
                  *(v110 + 40) = v113;
                  v267 = 0x4220646E6142;
                  v268 = 0xE600000000000000;
                  v283 = v106;
                  v115._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  object = v115._object;
                  String.append(_:)(v115);

                  v116 = v267;
                  v117 = v268;
                  *(v110 + 96) = &type metadata for String;
                  *(v110 + 104) = v114;
                  *(v110 + 72) = v116;
                  *(v110 + 80) = v117;
                  os_log(_:dso:log:type:_:)();
LABEL_101:

                  v29 = v256;
                  sub_1002034BC(v256, type metadata accessor for FTMBandInfoDataModel);
                  v33 = v257;
                  v15 = v258;
                  goto LABEL_20;
                }

                if (qword_100374FD8 != -1)
                {
                  swift_once();
                }

                v265 = qword_1003824C0;
                LODWORD(v263) = static os_log_type_t.default.getter();
                sub_1001A551C(&unk_100377020, &unk_1002EF770);
                v171 = swift_allocObject();
                *(v171 + 16) = v234;
                v267 = v105;
                sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
                sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
                v172 = BidirectionalCollection<>.joined(separator:)();
                v174 = v173;

                *(v171 + 56) = &type metadata for String;
                v175 = sub_1001A76E8();
                *(v171 + 64) = v175;
                *(v171 + 32) = v172;
                *(v171 + 40) = v174;
                v267 = 0x4220646E6142;
                v268 = 0xE600000000000000;
                v283 = v106;
                v176._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                v21 = v176._object;
                String.append(_:)(v176);

                v177 = v267;
                v178 = v268;
                *(v171 + 96) = &type metadata for String;
                *(v171 + 104) = v175;
                *(v171 + 72) = v177;
                *(v171 + 80) = v178;
                os_log(_:dso:log:type:_:)();

                v267 = 66;
                v268 = 0xE100000000000000;
                v283 = v106;
                v179._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v179);

                v180 = v268;
                v29 = v256;
                *(v256 + 32) = v267;
                *(v29 + 40) = v180;
                v240 = v180;
              }

              else
              {

                v29 = v256;
              }
            }

            else
            {
LABEL_137:

              v29 = v256;
              v33 = v257;
            }

            v15 = v258;
          }

LABEL_143:
          v181 = sub_100226B28(v259);
          if ((v182 & 1) == 0)
          {
            *(v29 + 176) = v181;
            *(v29 + 184) = 0;
          }

          v183 = sub_100226DD4(v259);
          if ((v184 & 1) == 0)
          {
            *(v29 + 192) = v183;
            *(v29 + 200) = 0;
          }

          object = v259;
          v185 = sub_100226B1C(v259);

          *(v29 + 128) = v185;
          *(v29 + 136) = 0;
          if (v240)
          {
            sub_100204DB0(v29, v238, type metadata accessor for FTMBandInfoDataModel);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = sub_100224E3C(0, v233[2] + 1, 1, v233);
            }

            object = v233[2];
            v186 = v233[3];
            if (object >= v186 >> 1)
            {
              v233 = sub_100224E3C(v186 > 1, object + 1, 1, v233);
            }

            v187 = v233;
            v233[2] = object + 1;
            sub_100204E18(v238, v187 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * object, type metadata accessor for FTMBandInfoDataModel);
          }

          v32 = v251;
          sub_1002034BC(v29, type metadata accessor for FTMBandInfoDataModel);
          if (v15 == v254)
          {
            goto LABEL_186;
          }
        }

        else
        {
          if (v37 == 2)
          {
            v41 = 3;
            goto LABEL_34;
          }

LABEL_19:

LABEL_20:
          v32 = v251;
          if (v15 == v254)
          {
            goto LABEL_186;
          }
        }
      }
    }

    v233 = _swiftEmptyArrayStorage;
LABEL_186:

    v25 = v233;
  }

  else
  {
LABEL_11:

LABEL_12:
    v25 = _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002EED50;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 32) = 0xD00000000000001FLL;
  *(v26 + 40) = 0x80000001002BBDD0;
  *(v26 + 88) = sub_1001A551C(&qword_1003770E8, &unk_1002F22C0);
  *(v26 + 64) = v25;

  print(_:separator:terminator:)();

  return v25;
}

uint64_t sub_1001ED800(void *a1, uint64_t a2, void *a3, const void *a4, void *a5, void *a6)
{
  v35 = a6;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v34 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v34);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002EED40;
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v39 = 0x636F20726F727265;
    v40 = 0xEF20646572727563;
    swift_getErrorValue();
    aBlock = Error.localizedDescription.getter();
    v42 = v18;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v19._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v19);

    v20 = v39;
    v21 = v40;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    print(_:separator:terminator:)();
  }

  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  v23[2] = a3;
  memcpy(v23 + 3, a4, 0x121uLL);
  v23[40] = a1;
  v23[41] = a5;
  v24 = v35;
  v23[42] = v35;
  v45 = sub_100201790;
  v46 = v23;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10020C96C;
  v44 = &unk_10031EAB8;
  v25 = _Block_copy(&aBlock);
  v26 = a3;
  sub_1001AC934(a4, &v39, &unk_100377060, &qword_1002F2200);
  v27 = a1;
  v28 = a5;
  v29 = v24;

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  v31 = v33;
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v38 + 8))(v31, v30);
  return (*(v36 + 8))(v16, v37);
}

uint64_t sub_1001EDC54(void *a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v320 = a2;
  v321 = a3;
  memcpy(v350, a2, sizeof(v350));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v297[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v318 = type metadata accessor for Metric(0);
  v13 = *(*(v318 - 1) + 64);
  __chkstk_darwin(v318);
  v15 = &v297[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v319 = &v297[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v297[-v21];
  v23 = [a1 legacyInfo];
  if (!v23)
  {
    goto LABEL_15;
  }

  v316 = v12;
  v317 = v15;
  v24 = v23;
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v25 + 16))
  {
    goto LABEL_14;
  }

  sub_1001A773C(v25 + 32, v349);

  v26 = sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    return os_log(_:dso:log:type:_:)();
  }

  v313 = v26;
  v27 = v326[0];
  v28 = *(v326[0] + 16);
  if (!v28)
  {
LABEL_14:

    goto LABEL_15;
  }

  v308 = v9;
  v309 = v8;
  v311 = v17;
  v312 = a5;
  v314 = v22;
  v29 = sub_100225A48(v28, 0);
  v30 = sub_1001FC2A4(v349, v29 + 4, v28, v27);
  v31 = v349[1];
  v315 = v27;
  swift_bridgeObjectRetain_n();
  sub_1001DD8F0();
  if (v30 != v28)
  {
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v310 = v16;
  v349[0] = v29;
  sub_1001DBCA0(v349);

  v32 = v349[0];
  v33 = kCTCellMonitorBandInfo;
  v34 = v349[0] + 40;
  v35 = -*(v349[0] + 2);
  v36 = -1;
  do
  {
    if (v35 + v36 == -1)
    {

      if (qword_100374FD8 == -1)
      {
LABEL_19:
        static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1002EED40;
        *(v41 + 56) = v313;
        *(v41 + 64) = sub_1001AD0C8(&qword_1003770D0, &qword_1003751A8, &unk_1002EED70);
        *(v41 + 32) = v315;
        os_log(_:dso:log:type:_:)();
      }

LABEL_211:
      swift_once();
      goto LABEL_19;
    }

    if (++v36 >= *(v32 + 2))
    {
      __break(1u);
LABEL_168:
      v43 = v315;
LABEL_174:

      v48 = v311;
      v46 = v314;
      if (kCTCellMonitorRadioAccessTechnologyLTE)
      {
        if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v243)
        {
        }

        else
        {
          v245 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v245 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        v246 = [v312 slotID] != 1;
        if (qword_100374FD8 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        v247 = qword_100382508;
        sub_100213B74(v43, v246);

        v238 = [objc_opt_self() defaultCenter];
        if (qword_100374FE0 != -1)
        {
          swift_once();
        }

        v239 = static NSNotificationName.NewABMMetric;
        sub_1001A551C(&qword_100377050, &qword_1002F21F0);
        v240 = swift_allocObject();
        *(v240 + 16) = xmmword_1002EED40;
        strcpy(v326, "metricObject");
        BYTE5(v326[1]) = 0;
        HIWORD(v326[1]) = -5120;
        AnyHashable.init<A>(_:)();
        *(v240 + 96) = &type metadata for MetricNotificationObject;
        v241 = swift_allocObject();
        *(v240 + 72) = v241;
        *(v241 + 16) = 4543564;
        *(v241 + 24) = 0xE300000000000000;
        *(v241 + 32) = 5521746;
        *(v241 + 40) = 0xE300000000000000;
        goto LABEL_187;
      }

      goto LABEL_221;
    }

    if (!v33)
    {
      goto LABEL_218;
    }

    v31 = *(v34 - 1);
    v38 = *v34;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
    {

      goto LABEL_21;
    }

    v34 += 16;
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v37 & 1) == 0);

LABEL_21:
  memcpy(v349, v320, 0x121uLL);
  v42 = sub_1002004E8(v349);
  v43 = v315;
  if (v42 == 1)
  {
    goto LABEL_78;
  }

  v320 = v349[0];
  LODWORD(v313) = LOBYTE(v349[1]);
  v346 = *(&v349[17] + 1);
  v347 = *(&v349[19] + 1);
  v348[0] = *(&v349[21] + 1);
  *(v348 + 15) = *&v349[23];
  v342 = *(&v349[9] + 1);
  v343 = *(&v349[11] + 1);
  v344 = *(&v349[13] + 1);
  v345 = *(&v349[15] + 1);
  v338 = *(&v349[1] + 1);
  v339 = *(&v349[3] + 1);
  v340 = *(&v349[5] + 1);
  v341 = *(&v349[7] + 1);
  v336[0] = *(&v349[26] + 1);
  *(v336 + 3) = HIDWORD(v349[26]);
  v303 = v349[25];
  v304 = v349[27];
  v44 = v349[28];
  v334[0] = *(&v349[28] + 1);
  *(v334 + 3) = HIDWORD(v349[28]);
  *(v332 + 3) = HIDWORD(v349[30]);
  v332[0] = *(&v349[30] + 1);
  v307 = v349[31];
  *(v330 + 3) = HIDWORD(v349[32]);
  v330[0] = *(&v349[32] + 1);
  v305 = v349[29];
  v306 = v349[33];
  *(v328 + 3) = HIDWORD(v349[34]);
  v328[0] = *(&v349[34] + 1);
  v5 = v349[35];
  LODWORD(v300) = LOBYTE(v349[26]);
  v337 = v349[26];
  v335 = v349[28];
  v298 = LOBYTE(v349[32]);
  LODWORD(v299) = LOBYTE(v349[30]);
  v333 = v349[30];
  v331 = v349[32];
  LODWORD(v302) = LOBYTE(v349[34]);
  v329 = v349[34];
  LODWORD(v301) = LOBYTE(v349[36]);
  v327 = v349[36];
  memcpy(v326, v350, 0x121uLL);
  sub_1001DFAB0(v326, v325);
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v45 = sub_10021AF50();
  v46 = v45[2];
  if (!v46)
  {
LABEL_31:

    *(&v325[17] + 1) = v346;
    *(&v325[19] + 1) = v347;
    *(&v325[21] + 1) = v348[0];
    *&v325[23] = *(v348 + 15);
    *(&v325[9] + 1) = v342;
    *(&v325[11] + 1) = v343;
    *(&v325[13] + 1) = v344;
    *(&v325[15] + 1) = v345;
    *(&v325[1] + 1) = v338;
    *(&v325[3] + 1) = v339;
    *(&v325[5] + 1) = v340;
    v325[0] = v320;
    LOBYTE(v325[1]) = v313;
    *(&v325[7] + 1) = v341;
    v325[25] = v303;
    LOBYTE(v325[26]) = v300;
    *(&v325[26] + 1) = v336[0];
    HIDWORD(v325[26]) = *(v336 + 3);
    v325[27] = v304;
    LOBYTE(v325[28]) = v44;
    *(&v325[28] + 1) = v334[0];
    HIDWORD(v325[28]) = *(v334 + 3);
    v325[29] = v305;
    LOBYTE(v325[30]) = v299;
    *(&v325[30] + 1) = v332[0];
    HIDWORD(v325[30]) = *(v332 + 3);
    v325[31] = v307;
    LOBYTE(v325[32]) = v298;
    *(&v325[32] + 1) = v330[0];
    HIDWORD(v325[32]) = *(v330 + 3);
    v325[33] = v306;
    LOBYTE(v325[34]) = v302;
    *(&v325[34] + 1) = v328[0];
    HIDWORD(v325[34]) = *(v328 + 3);
    v325[35] = v5;
    LOBYTE(v325[36]) = v301;
    v50 = v325;
    goto LABEL_77;
  }

  v47 = 0;
  v48 = 0x79636167654CLL;
  while (2)
  {
    if (v47 >= v45[2])
    {
      __break(1u);
LABEL_208:
      (*(v48 + 8))(v46, v310);
    }

    if (!*(v45 + v47 + 32) || *(v45 + v47 + 32) == 2)
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {
        goto LABEL_33;
      }

      if (v46 == ++v47)
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

LABEL_33:

  v31 = v306;
  v51 = v307;
  if (v321)
  {
    v52 = [v321 rsrp];
    if (v52)
    {
      v53 = v52;
      v54 = Int.init(truncating:)();
      v337 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1002EED40;
      v303 = v54;
      v325[0] = v54;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = sub_1001A76E8();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      os_log(_:dso:log:type:_:)();
    }

    v59 = [v321 rsrq];
    if (v59)
    {
      v60 = v59;
      v61 = Int.init(truncating:)();
      v335 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1002EED40;
      v304 = v61;
      v325[0] = v61;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = sub_1001A76E8();
      *(v62 + 32) = v63;
      *(v62 + 40) = v65;
      os_log(_:dso:log:type:_:)();
    }

    v66 = [v321 rssi];
    if (v66)
    {
      v67 = v66;
      v68 = Int.init(truncating:)();
      v333 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1002EED40;
      v305 = v68;
      v325[0] = v68;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = sub_1001A76E8();
      *(v69 + 32) = v70;
      *(v69 + 40) = v72;
      os_log(_:dso:log:type:_:)();
    }

    v73 = v321;
    v74 = [v321 snr];
    if (v74)
    {
      v75 = v74;
      Double.init(truncating:)();
      v5 = v76;
      v327 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1002EED40;
      v325[0] = 0;
      v325[1] = 0xE000000000000000;
      Double.write<A>(to:)();
      v78 = v325[0];
      v79 = v325[1];
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_1001A76E8();
      *(v77 + 32) = v78;
      *(v77 + 40) = v79;
      os_log(_:dso:log:type:_:)();

      v73 = v321;
    }

    v80 = [v73 rscp];
    if (v80)
    {
      v81 = v80;
      v51 = Int.init(truncating:)();
      v331 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1002EED40;
      v325[0] = v51;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      *(v82 + 56) = &type metadata for String;
      *(v82 + 64) = sub_1001A76E8();
      *(v82 + 32) = v83;
      *(v82 + 40) = v85;
      os_log(_:dso:log:type:_:)();
    }

    v86 = [v321 ecn0];
    if (v86)
    {
      v87 = v86;
      v31 = Int.init(truncating:)();
      v329 = 0;
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1002EED40;
      v325[0] = v31;
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      *(v88 + 56) = &type metadata for String;
      *(v88 + 64) = sub_1001A76E8();
      *(v88 + 32) = v89;
      *(v88 + 40) = v91;
      os_log(_:dso:log:type:_:)();
    }
  }

  v307 = v51;
  if (qword_100374F98 != -1)
  {
LABEL_216:
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1002EED40;
  *(&v325[17] + 1) = v346;
  *(&v325[19] + 1) = v347;
  *(&v325[21] + 1) = v348[0];
  *&v325[23] = *(v348 + 15);
  *(&v325[9] + 1) = v342;
  *(&v325[11] + 1) = v343;
  *(&v325[13] + 1) = v344;
  *(&v325[15] + 1) = v345;
  *(&v325[1] + 1) = v338;
  *(&v325[3] + 1) = v339;
  *(&v325[5] + 1) = v340;
  v324[0] = 0;
  v324[1] = 0xE000000000000000;
  v325[0] = v320;
  v93 = v313;
  LOBYTE(v325[1]) = v313;
  *(&v325[7] + 1) = v341;
  v325[25] = v303;
  LOBYTE(v325[26]) = v337;
  *(&v325[26] + 1) = v336[0];
  HIDWORD(v325[26]) = *(v336 + 3);
  v325[27] = v304;
  LOBYTE(v325[28]) = v335;
  *(&v325[28] + 1) = v334[0];
  HIDWORD(v325[28]) = *(v334 + 3);
  v325[29] = v305;
  LOBYTE(v325[30]) = v333;
  *(&v325[30] + 1) = v332[0];
  HIDWORD(v325[30]) = *(v332 + 3);
  v325[31] = v307;
  LOBYTE(v325[32]) = v331;
  *(&v325[32] + 1) = v330[0];
  HIDWORD(v325[32]) = *(v330 + 3);
  v306 = v31;
  v325[33] = v31;
  LOBYTE(v325[34]) = v329;
  *(&v325[34] + 1) = v328[0];
  HIDWORD(v325[34]) = *(v328 + 3);
  v325[35] = v5;
  LOBYTE(v325[36]) = v327;
  _print_unlocked<A, B>(_:_:)();
  v94 = v324[0];
  v95 = v324[1];
  *(v92 + 56) = &type metadata for String;
  *(v92 + 64) = sub_1001A76E8();
  *(v92 + 32) = v94;
  *(v92 + 40) = v95;
  os_log(_:dso:log:type:_:)();

  v96 = qword_100382508;
  v97 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v36 = *&v96[v97];
  v98 = *(v36 + 16);
  if (!v98)
  {
    goto LABEL_71;
  }

  v99 = v93;
  v31 = 0;
  v100 = 328;
  while (2)
  {
    if (*(v36 + v100 - 288))
    {
      if (v99)
      {
        goto LABEL_66;
      }

LABEL_62:
      ++v31;
      v100 += 296;
      if (v98 == v31)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  if ((v99 & 1) != 0 || *(v36 + v100 - 296) != v320)
  {
    goto LABEL_62;
  }

LABEL_66:
  v101 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    swift_once();
LABEL_93:
    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_1002EED50;
    v127 = [v312 *(v31 + 3592)];
    v128 = sub_1001A76E8();
    v129 = 48;
    if (v127 != 1)
    {
      v129 = 49;
    }

    *(v126 + 56) = &type metadata for String;
    *(v126 + 64) = v128;
    *(v126 + 32) = v129;
    *(v126 + 40) = 0xE100000000000000;
    *(v126 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
    *(v126 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
    *(v126 + 72) = v36;
    v130 = v36;
    os_log(_:dso:log:type:_:)();

    v131 = v311;
    v132 = v314;
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v133 = qword_100382508;
    v134 = *(v131 + 16);
    v306 = (v131 + 16);
    v307 = v134;
    v135 = v319;
    (v134)(v319, v132, v310);
    v313 = v133;
    v305 = String._bridgeToObjectiveC()();
    v303 = String._bridgeToObjectiveC()();
    sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
    v302 = NSString.init(stringLiteral:)();
    v301 = NSString.init(stringLiteral:)();
    v136 = [v130 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v304 = v130;

    v137 = String._bridgeToObjectiveC()();

    v138 = NSString.init(stringLiteral:)();
    v139 = v316;
    Date.init()();
    UUID.uuidString.getter();
    v299 = String._bridgeToObjectiveC()();

    v140 = v317;
    v141 = v318;
    v142 = v318[14];
    v143 = v318[15];
    v300 = v318[16];
    v144 = v310;
    (v307)(v317, v135, v310);
    *(v140 + v141[5]) = v305;
    v145 = v302;
    *(v140 + v141[6]) = v303;
    *(v140 + v141[7]) = v145;
    *(v140 + v141[8]) = v301;
    *(v140 + v141[9]) = v137;
    *(v140 + v141[10]) = v138;
    v147 = v308;
    v146 = v309;
    (*(v308 + 16))(v140 + v141[11], v139, v309);
    *(v140 + v141[12]) = v299;
    *(v140 + v141[13]) = v320;
    *(v140 + v142) = 0;
    *(v140 + v143) = 0;
    (*(v147 + 8))(v139, v146);
    (*(v311 + 8))(v135, v144);
    *(v300 + v140) = xmmword_1002F2090;
    v148 = v313;
    sub_100215264(v140);

    sub_1002034BC(v140, type metadata accessor for Metric);
    v124 = v321;
LABEL_98:
    v149 = [v124 snr];
    if (v149)
    {
      v150 = v149;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_1002EED50;
      v152 = [v312 slotID];
      v153 = sub_1001A76E8();
      v154 = 48;
      if (v152 != 1)
      {
        v154 = 49;
      }

      *(v151 + 56) = &type metadata for String;
      *(v151 + 64) = v153;
      *(v151 + 32) = v154;
      *(v151 + 40) = 0xE100000000000000;
      *(v151 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v151 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v151 + 72) = v150;
      v155 = v150;
      os_log(_:dso:log:type:_:)();

      v156 = v311;
      v157 = v314;
      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v158 = qword_100382508;
      v159 = *(v156 + 16);
      v307 = (v156 + 16);
      v313 = v159;
      v160 = v319;
      (v159)(v319, v157, v310);
      v321 = v158;
      v306 = String._bridgeToObjectiveC()();
      v304 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v303 = NSString.init(stringLiteral:)();
      v302 = NSString.init(stringLiteral:)();
      v161 = [v155 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v305 = v155;

      v162 = String._bridgeToObjectiveC()();

      v163 = NSString.init(stringLiteral:)();
      v164 = v316;
      Date.init()();
      UUID.uuidString.getter();
      v300 = String._bridgeToObjectiveC()();

      v165 = v317;
      v166 = v318;
      v167 = v318[14];
      v168 = v318[15];
      v301 = v318[16];
      v169 = v310;
      (v313)(v317, v160, v310);
      *(v165 + v166[5]) = v306;
      v170 = v303;
      *(v165 + v166[6]) = v304;
      *(v165 + v166[7]) = v170;
      *(v165 + v166[8]) = v302;
      *(v165 + v166[9]) = v162;
      *(v165 + v166[10]) = v163;
      v172 = v308;
      v171 = v309;
      (*(v308 + 16))(v165 + v166[11], v164, v309);
      *(v165 + v166[12]) = v300;
      *(v165 + v166[13]) = v320;
      *(v165 + v167) = 0;
      *(v165 + v168) = 0;
      (*(v172 + 8))(v164, v171);
      (*(v311 + 8))(v160, v169);
      *(v165 + v301) = xmmword_1002F2090;
      v173 = v321;
      sub_100215264(v165);

      sub_1002034BC(v165, type metadata accessor for Metric);
    }

LABEL_106:
    v174 = [v312 slotID] != 1;
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v175 = v311;
    v176 = v314;
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v177 = qword_100382508;
    sub_100213B74(v315, v174);

    v178 = [objc_opt_self() defaultCenter];
    if (qword_100374FE0 != -1)
    {
      swift_once();
    }

    v179 = static NSNotificationName.NewABMMetric;
    sub_1001A551C(&qword_100377050, &qword_1002F21F0);
    v180 = swift_allocObject();
    *(v180 + 16) = xmmword_1002EED40;
    strcpy(v326, "metricObject");
    BYTE5(v326[1]) = 0;
    HIWORD(v326[1]) = -5120;
    AnyHashable.init<A>(_:)();
    *(v180 + 96) = &type metadata for MetricNotificationObject;
    v181 = swift_allocObject();
    *(v180 + 72) = v181;
    *(v181 + 16) = 18229;
    *(v181 + 24) = 0xE200000000000000;
    *(v181 + 32) = 5521746;
    *(v181 + 40) = 0xE300000000000000;
    *(v181 + 48) = v320;
    sub_1001FD020(v180);
    swift_setDeallocating();
    sub_1001AC99C(v180 + 32, &qword_100377058, &qword_1002F21F8);
    swift_deallocClassInstance();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v178 postNotificationName:v179 object:0 userInfo:isa];

    return (*(v175 + 8))(v176, v310);
  }

  v102 = v96;
  if (v101 != v98)
  {
    v183 = v313;
    while (1)
    {
      if (v101 >= v98)
      {
        goto LABEL_210;
      }

      if (*(v36 + v100 + 8))
      {
        if (v183)
        {
          goto LABEL_116;
        }
      }

      else if ((v183 & 1) == 0 && *(v36 + v100) == v320)
      {
        goto LABEL_116;
      }

      if (v101 != v31)
      {
        if (v31 >= v98)
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
          goto LABEL_215;
        }

        memcpy(v324, (v36 + 32 + 296 * v31), 0x121uLL);
        memcpy(v325, (v36 + v100), 0x121uLL);
        sub_1001DFAB0(v324, v323);
        sub_1001DFAB0(v325, v323);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1001FA730(v36);
        }

        if (v31 >= *(v36 + 16))
        {
          goto LABEL_213;
        }

        v184 = v36 + 296 * v31;
        memcpy(v322, (v184 + 32), 0x121uLL);
        memcpy((v184 + 32), v325, 0x121uLL);
        sub_1001DFB0C(v322);
        if (v101 >= *(v36 + 16))
        {
          goto LABEL_214;
        }

        memcpy(v323, (v36 + v100), 0x121uLL);
        memcpy((v36 + v100), v324, 0x121uLL);
        sub_1001DFB0C(v323);
        *&v96[v97] = v36;
        v183 = v313;
      }

      ++v31;
LABEL_116:
      ++v101;
      v98 = *(v36 + 16);
      v100 += 296;
      if (v101 == v98)
      {
        goto LABEL_69;
      }
    }
  }

  v101 = v98;
LABEL_69:
  v98 = v31;
  if (v101 < v31)
  {
    __break(1u);
LABEL_71:
    v103 = v96;
    v101 = v98;
  }

  sub_1001FCC58(v98, v101, sub_100224F8C, sub_1001FCB58);
  swift_endAccess();
  v104 = *&v96[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v105 = v324[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v324[0]) = (v105 & 1) == 0;

  static Published.subscript.setter();

  *(&v325[17] + 1) = v346;
  *(&v325[19] + 1) = v347;
  *(&v325[21] + 1) = v348[0];
  *&v325[23] = *(v348 + 15);
  *(&v325[9] + 1) = v342;
  *(&v325[11] + 1) = v343;
  *(&v325[13] + 1) = v344;
  *(&v325[15] + 1) = v345;
  *(&v325[1] + 1) = v338;
  *(&v325[3] + 1) = v339;
  *(&v325[5] + 1) = v340;
  v106 = qword_100382508;
  v325[0] = v320;
  LOBYTE(v325[1]) = v313;
  *(&v325[7] + 1) = v341;
  v325[25] = v303;
  LODWORD(v302) = v337;
  LOBYTE(v325[26]) = v337;
  *(&v325[26] + 1) = v336[0];
  HIDWORD(v325[26]) = *(v336 + 3);
  v325[27] = v304;
  LODWORD(v301) = v335;
  LOBYTE(v325[28]) = v335;
  *(&v325[28] + 1) = v334[0];
  HIDWORD(v325[28]) = *(v334 + 3);
  v325[29] = v305;
  LODWORD(v300) = v333;
  LOBYTE(v325[30]) = v333;
  HIDWORD(v325[30]) = *(v332 + 3);
  *(&v325[30] + 1) = v332[0];
  v107 = v307;
  v325[31] = v307;
  LODWORD(v299) = v331;
  LOBYTE(v325[32]) = v331;
  *(&v325[32] + 1) = v330[0];
  HIDWORD(v325[32]) = *(v330 + 3);
  v325[33] = v306;
  v108 = v329;
  LOBYTE(v325[34]) = v329;
  *(&v325[34] + 1) = v328[0];
  HIDWORD(v325[34]) = *(v328 + 3);
  v325[35] = v5;
  v109 = v327;
  LOBYTE(v325[36]) = v327;
  v110 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v111 = *&v106[v110];
  v112 = v106;
  sub_1001DFAB0(v325, v324);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v106[v110] = v111;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v111 = sub_100224F8C(0, *(v111 + 2) + 1, 1, v111);
    *&v106[v110] = v111;
  }

  v115 = *(v111 + 2);
  v114 = *(v111 + 3);
  if (v115 >= v114 >> 1)
  {
    v111 = sub_100224F8C((v114 > 1), v115 + 1, 1, v111);
  }

  *(v111 + 2) = v115 + 1;
  memcpy(&v111[296 * v115 + 32], v325, 0x121uLL);
  *&v106[v110] = v111;
  swift_endAccess();
  v116 = *&v112[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v117 = v324[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v324[0]) = (v117 & 1) == 0;

  static Published.subscript.setter();

  *(&v324[17] + 1) = v346;
  *(&v324[19] + 1) = v347;
  *(&v324[21] + 1) = v348[0];
  *&v324[23] = *(v348 + 15);
  *(&v324[9] + 1) = v342;
  *(&v324[11] + 1) = v343;
  *(&v324[13] + 1) = v344;
  *(&v324[15] + 1) = v345;
  *(&v324[1] + 1) = v338;
  *(&v324[3] + 1) = v339;
  *(&v324[5] + 1) = v340;
  v324[0] = v320;
  LOBYTE(v324[1]) = v313;
  *(&v324[7] + 1) = v341;
  v324[25] = v303;
  LOBYTE(v324[26]) = v302;
  *(&v324[26] + 1) = v336[0];
  HIDWORD(v324[26]) = *(v336 + 3);
  v324[27] = v304;
  LOBYTE(v324[28]) = v301;
  *(&v324[28] + 1) = v334[0];
  HIDWORD(v324[28]) = *(v334 + 3);
  v324[29] = v305;
  LOBYTE(v324[30]) = v300;
  *(&v324[30] + 1) = v332[0];
  HIDWORD(v324[30]) = *(v332 + 3);
  v324[31] = v107;
  LOBYTE(v324[32]) = v299;
  *(&v324[32] + 1) = v330[0];
  HIDWORD(v324[32]) = *(v330 + 3);
  v324[33] = v306;
  LOBYTE(v324[34]) = v108;
  *(&v324[34] + 1) = v328[0];
  HIDWORD(v324[34]) = *(v328 + 3);
  v324[35] = v5;
  LOBYTE(v324[36]) = v109;
  v50 = v324;
LABEL_77:
  sub_1001DFB0C(v50);
  v43 = v315;
LABEL_78:
  sub_1002017A4(v312, v321);
  if (!*(v43 + 16))
  {
  }

  v118 = sub_1001F66B8(0xD000000000000027, 0x80000001002B9780);
  if ((v119 & 1) == 0)
  {
  }

  sub_1001A773C(*(v43 + 56) + 32 * v118, v326);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v32 = v325[0];
  v36 = v325[1];
  v120 = HIBYTE(v325[1]) & 0xFLL;
  if ((v325[1] & 0x2000000000000000) == 0)
  {
    v120 = v325[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v120)
  {
  }

  UUID.init()();
  v31 = &selRef_clearRlfCauses;
  LODWORD(v320) = [v312 slotID] != 1;
  v121 = String.lowercased()();
  v122 = String.lowercased()();
  if (v121._countAndFlagsBits == v122._countAndFlagsBits && v121._object == v122._object)
  {

    goto LABEL_90;
  }

  v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v123)
  {
LABEL_90:

    v124 = v321;
    if (v321)
    {
      v125 = [v321 rsrp];
      if (v125)
      {
        v36 = v125;
        if (qword_100374FD8 == -1)
        {
          goto LABEL_93;
        }

        goto LABEL_219;
      }

      goto LABEL_98;
    }

    goto LABEL_106;
  }

  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v185 = sub_10021AF50();
  v186 = v185[2];
  if (v186)
  {
    v31 = 0;
    while (v31 < v185[2])
    {
      if (*(v185 + v31 + 32) && *(v185 + v31 + 32) != 1)
      {

        goto LABEL_174;
      }

      v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v187)
      {
        goto LABEL_168;
      }

      ++v31;
      v43 = v315;
      if (v186 == v31)
      {
        goto LABEL_139;
      }
    }

LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

LABEL_139:

  v48 = v311;
  v46 = v314;
LABEL_140:
  if (!kCTCellMonitorRadioAccessTechnologyGSM)
  {
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);

    __break(1u);
    return result;
  }

  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v188)
  {

    goto LABEL_148;
  }

  v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v190)
  {
LABEL_148:

    v191 = v321;
    if (v321)
    {
      v192 = [v321 rscp];
      if (v192)
      {
        v193 = v192;
        if (qword_100374FD8 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v194 = swift_allocObject();
        *(v194 + 16) = xmmword_1002EED50;
        v195 = [v312 slotID];
        v196 = sub_1001A76E8();
        v197 = 48;
        if (v195 != 1)
        {
          v197 = 49;
        }

        *(v194 + 56) = &type metadata for String;
        *(v194 + 64) = v196;
        *(v194 + 32) = v197;
        *(v194 + 40) = 0xE100000000000000;
        *(v194 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
        *(v194 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
        *(v194 + 72) = v193;
        v198 = v193;
        v307 = v198;
        os_log(_:dso:log:type:_:)();

        v199 = qword_100382508;
        v306 = *(v48 + 16);
        (v306)(v319, v46, v310);
        v313 = v199;
        v305 = String._bridgeToObjectiveC()();
        v304 = String._bridgeToObjectiveC()();
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v303 = NSString.init(stringLiteral:)();
        v302 = NSString.init(stringLiteral:)();
        v200 = [v198 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v201 = String._bridgeToObjectiveC()();

        v202 = NSString.init(stringLiteral:)();
        v203 = v316;
        Date.init()();
        UUID.uuidString.getter();
        v300 = String._bridgeToObjectiveC()();

        v205 = v317;
        v204 = v318;
        v206 = v318[15];
        v299 = v318[14];
        v301 = v318[16];
        v207 = v319;
        v208 = v310;
        (v306)(v317, v319, v310);
        v209 = v304;
        *(v205 + v204[5]) = v305;
        *(v205 + v204[6]) = v209;
        v210 = v302;
        *(v205 + v204[7]) = v303;
        *(v205 + v204[8]) = v210;
        *(v205 + v204[9]) = v201;
        *(v205 + v204[10]) = v202;
        v212 = v308;
        v211 = v309;
        (*(v308 + 16))(v205 + v204[11], v203, v309);
        *(v205 + v204[12]) = v300;
        *(v205 + v204[13]) = v320;
        *(v299 + v205) = 0;
        *(v205 + v206) = 0;
        v46 = v314;
        (*(v212 + 8))(v203, v211);
        v48 = v311;
        (*(v311 + 8))(v207, v208);
        *(v205 + v301) = xmmword_1002F2090;
        v213 = v313;
        sub_100215264(v205);

        sub_1002034BC(v205, type metadata accessor for Metric);
        v43 = v315;
        v191 = v321;
      }

      v214 = [v191 ecn0];
      if (v214)
      {
        v215 = v214;
        if (qword_100374FD8 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v216 = swift_allocObject();
        *(v216 + 16) = xmmword_1002EED50;
        v217 = [v312 slotID];
        v218 = sub_1001A76E8();
        v219 = 48;
        if (v217 != 1)
        {
          v219 = 49;
        }

        *(v216 + 56) = &type metadata for String;
        *(v216 + 64) = v218;
        *(v216 + 32) = v219;
        *(v216 + 40) = 0xE100000000000000;
        *(v216 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
        *(v216 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
        *(v216 + 72) = v215;
        v220 = v215;
        v313 = v220;
        os_log(_:dso:log:type:_:)();

        v221 = qword_100382508;
        v307 = *(v48 + 16);
        (v307)(v319, v46, v310);
        v321 = v221;
        v306 = String._bridgeToObjectiveC()();
        v305 = String._bridgeToObjectiveC()();
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v304 = NSString.init(stringLiteral:)();
        v303 = NSString.init(stringLiteral:)();
        v222 = [v220 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v223 = String._bridgeToObjectiveC()();

        v224 = NSString.init(stringLiteral:)();
        v225 = v316;
        Date.init()();
        UUID.uuidString.getter();
        v301 = String._bridgeToObjectiveC()();

        v227 = v317;
        v226 = v318;
        v228 = v318[15];
        v300 = v318[14];
        v302 = v318[16];
        v229 = v319;
        v230 = v310;
        (v307)(v317, v319, v310);
        v231 = v305;
        *(v227 + v226[5]) = v306;
        *(v227 + v226[6]) = v231;
        v232 = v303;
        *(v227 + v226[7]) = v304;
        *(v227 + v226[8]) = v232;
        *(v227 + v226[9]) = v223;
        *(v227 + v226[10]) = v224;
        v234 = v308;
        v233 = v309;
        (*(v308 + 16))(v227 + v226[11], v225, v309);
        *(v227 + v226[12]) = v301;
        *(v227 + v226[13]) = v320;
        *(v300 + v227) = 0;
        *(v227 + v228) = 0;
        v46 = v314;
        (*(v234 + 8))(v225, v233);
        v48 = v311;
        (*(v311 + 8))(v229, v230);
        *(v227 + v302) = xmmword_1002F2090;
        v235 = v321;
        sub_100215264(v227);

        sub_1002034BC(v227, type metadata accessor for Metric);
        v43 = v315;
      }
    }

    v236 = [v312 slotID] != 1;
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v237 = qword_100382508;
    sub_100213B74(v43, v236);

    v238 = [objc_opt_self() defaultCenter];
    if (qword_100374FE0 != -1)
    {
      swift_once();
    }

    v239 = static NSNotificationName.NewABMMetric;
    sub_1001A551C(&qword_100377050, &qword_1002F21F0);
    v240 = swift_allocObject();
    *(v240 + 16) = xmmword_1002EED40;
    strcpy(v326, "metricObject");
    BYTE5(v326[1]) = 0;
    HIWORD(v326[1]) = -5120;
    AnyHashable.init<A>(_:)();
    *(v240 + 96) = &type metadata for MetricNotificationObject;
    v241 = swift_allocObject();
    *(v240 + 72) = v241;
    *(v241 + 16) = 5067591;
    *(v241 + 24) = 0xE300000000000000;
    goto LABEL_166;
  }

  if (!kCTCellMonitorRadioAccessTechnologyUMTS)
  {
    goto LABEL_222;
  }

  if (v32 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v36 != v242)
  {
    v249 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v249)
    {
      goto LABEL_189;
    }

    goto LABEL_208;
  }

LABEL_189:
  v250 = v321;
  if (v321)
  {
    v251 = [v321 rscp];
    if (v251)
    {
      v252 = v251;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v253 = swift_allocObject();
      *(v253 + 16) = xmmword_1002EED50;
      v254 = [v312 slotID];
      v255 = sub_1001A76E8();
      v256 = 48;
      if (v254 != 1)
      {
        v256 = 49;
      }

      *(v253 + 56) = &type metadata for String;
      *(v253 + 64) = v255;
      *(v253 + 32) = v256;
      *(v253 + 40) = 0xE100000000000000;
      *(v253 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v253 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v253 + 72) = v252;
      v257 = v252;
      v307 = v257;
      os_log(_:dso:log:type:_:)();

      v258 = qword_100382508;
      v306 = *(v48 + 16);
      (v306)(v319, v46, v310);
      v313 = v258;
      v305 = String._bridgeToObjectiveC()();
      v304 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v303 = NSString.init(stringLiteral:)();
      v302 = NSString.init(stringLiteral:)();
      v259 = [v257 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v260 = String._bridgeToObjectiveC()();

      v261 = NSString.init(stringLiteral:)();
      v262 = v316;
      Date.init()();
      UUID.uuidString.getter();
      v300 = String._bridgeToObjectiveC()();

      v263 = v317;
      v264 = v318;
      v265 = v318[15];
      v299 = v318[14];
      v301 = v318[16];
      v266 = v319;
      v267 = v310;
      (v306)(v317, v319, v310);
      v268 = v304;
      *(v263 + v264[5]) = v305;
      *(v263 + v264[6]) = v268;
      v269 = v302;
      *(v263 + v264[7]) = v303;
      *(v263 + v264[8]) = v269;
      *(v263 + v264[9]) = v260;
      *(v263 + v264[10]) = v261;
      v271 = v308;
      v270 = v309;
      (*(v308 + 16))(v263 + v264[11], v262, v309);
      *(v263 + v264[12]) = v300;
      *(v263 + v264[13]) = v320;
      *(v299 + v263) = 0;
      *(v263 + v265) = 0;
      v46 = v314;
      (*(v271 + 8))(v262, v270);
      v48 = v311;
      (*(v311 + 8))(v266, v267);
      *(v263 + v301) = xmmword_1002F2090;
      v272 = v313;
      sub_100215264(v263);

      sub_1002034BC(v263, type metadata accessor for Metric);
      v43 = v315;
      v250 = v321;
    }

    v273 = [v250 ecn0];
    if (v273)
    {
      v274 = v273;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v275 = swift_allocObject();
      *(v275 + 16) = xmmword_1002EED50;
      v276 = [v312 slotID];
      v277 = sub_1001A76E8();
      v278 = 48;
      if (v276 != 1)
      {
        v278 = 49;
      }

      *(v275 + 56) = &type metadata for String;
      *(v275 + 64) = v277;
      *(v275 + 32) = v278;
      *(v275 + 40) = 0xE100000000000000;
      *(v275 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v275 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v275 + 72) = v274;
      v279 = v274;
      v313 = v279;
      os_log(_:dso:log:type:_:)();

      v280 = qword_100382508;
      v307 = *(v48 + 16);
      (v307)(v319, v46, v310);
      v321 = v280;
      v306 = String._bridgeToObjectiveC()();
      v305 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v304 = NSString.init(stringLiteral:)();
      v303 = NSString.init(stringLiteral:)();
      v281 = [v279 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v282 = String._bridgeToObjectiveC()();

      v283 = NSString.init(stringLiteral:)();
      v284 = v316;
      Date.init()();
      UUID.uuidString.getter();
      v301 = String._bridgeToObjectiveC()();

      v285 = v317;
      v286 = v318;
      v287 = v318[15];
      v300 = v318[14];
      v302 = v318[16];
      v288 = v319;
      v289 = v310;
      (v307)(v317, v319, v310);
      v290 = v305;
      *(v285 + v286[5]) = v306;
      *(v285 + v286[6]) = v290;
      v291 = v303;
      *(v285 + v286[7]) = v304;
      *(v285 + v286[8]) = v291;
      *(v285 + v286[9]) = v282;
      *(v285 + v286[10]) = v283;
      v293 = v308;
      v292 = v309;
      (*(v308 + 16))(v285 + v286[11], v284, v309);
      *(v285 + v286[12]) = v301;
      *(v285 + v286[13]) = v320;
      *(v300 + v285) = 0;
      *(v285 + v287) = 0;
      v46 = v314;
      (*(v293 + 8))(v284, v292);
      v48 = v311;
      (*(v311 + 8))(v288, v289);
      *(v285 + v302) = xmmword_1002F2090;
      v294 = v321;
      sub_100215264(v285);

      sub_1002034BC(v285, type metadata accessor for Metric);
      v43 = v315;
    }
  }

  v295 = [v312 slotID] != 1;
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v296 = qword_100382508;
  sub_100213B74(v43, v295);

  v238 = [objc_opt_self() defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v239 = static NSNotificationName.NewABMMetric;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_1002EED40;
  strcpy(v326, "metricObject");
  BYTE5(v326[1]) = 0;
  HIWORD(v326[1]) = -5120;
  AnyHashable.init<A>(_:)();
  *(v240 + 96) = &type metadata for MetricNotificationObject;
  v241 = swift_allocObject();
  *(v240 + 72) = v241;
  *(v241 + 16) = 1398033749;
  *(v241 + 24) = 0xE400000000000000;
LABEL_166:
  *(v241 + 32) = 5521746;
  *(v241 + 40) = 0xE300000000000000;
LABEL_187:
  *(v241 + 48) = v320;
  sub_1001FD020(v240);
  swift_setDeallocating();
  sub_1001AC99C(v240 + 32, &qword_100377058, &qword_1002F21F8);
  swift_deallocClassInstance();
  v248 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v238 postNotificationName:v239 object:0 userInfo:v248];

  return (*(v48 + 8))(v46, v310);
}

void sub_1001F1774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = aBlock - v10;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  swift_beginAccess();
  sub_1001E29F4(v11, a1);
  swift_endAccess();
  v13 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  v14 = [objc_opt_self() descriptorWithSubscriptionContext:v13];
  v15 = *(v4 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100201630;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002050F8;
  aBlock[3] = &unk_10031E9C8;
  v17 = _Block_copy(aBlock);

  [v15 getSignalStrengthMeasurements:v14 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1001F1994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = result;
  if (a2)
  {
    sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
    v32 = v8;
    v30 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = a4;
    v39 = sub_100201724;
    v40 = v18;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_10020C96C;
    v38 = &unk_10031EA68;
    v19 = _Block_copy(&aBlock);
    v31 = a3;
    v20 = v19;
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v30;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v22 = v34;
    v23 = v20;
    a3 = v31;
    v8 = v32;
    _Block_release(v23);

    (v8[1])(v11, v7);
    result = (*(v13 + 8))(v17, v22);
  }

  v24 = v33;
  if (v33)
  {
    sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
    v25 = v24;
    v33 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a3;
    v26[4] = a4;
    v39 = sub_100201690;
    v40 = v26;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_10020C96C;
    v38 = &unk_10031EA18;
    v27 = _Block_copy(&aBlock);

    v32 = v25;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v33;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (v8[1])(v11, v7);
    return (*(v13 + 8))(v17, v34);
  }

  return result;
}

uint64_t sub_1001F1E9C(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002EED40;
  _StringGuts.grow(_:)(17);

  if (a1)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
  }

  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0x636F20726F727265;
  *(v4 + 40) = 0xEF20646572727563;
  print(_:separator:terminator:)();

  if (a1)
  {
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002EED40;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1001A76E8();
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    os_log(_:dso:log:type:_:)();
  }

  return a2(0, a1);
}

uint64_t sub_1001F20E0(void *a1, uint64_t (*a2)(id, void))
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002EED40;
  strcpy(v14, "measurements");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  v5 = a1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11 = v14[0];
  v12 = v14[1];
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = v11;
  *(v4 + 40) = v12;
  print(_:separator:terminator:)();

  return a2(v5, 0);
}

void sub_1001F2210(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1001F229C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v28);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002EED40;
    aBlock = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    aBlock = 0xD000000000000021;
    v33 = 0x80000001002BBC90;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v31 = v17;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v18._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v18);

    v19 = aBlock;
    v20 = v33;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = v19;
    *(v16 + 40) = v20;
    print(_:separator:terminator:)();
  }

  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a1;
  v36 = sub_100203610;
  v37 = v22;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10020C96C;
  v35 = &unk_10031EBF8;
  v23 = _Block_copy(&aBlock);
  v24 = a1;
  v25 = a3;
  v26 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v29 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v28);
}

void sub_1001F269C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (!a1)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v153 = a4;
  v9 = a1;
  v10 = sub_1001FD848(v9);
  v161 = sub_1001FDC20(v9);
  v178 = v11;
  v160 = sub_1001FDD84(v9, sub_100225FB8);
  v177 = v12;
  v159 = sub_1001FDD84(v9, sub_100225FC4);
  v176 = v13;
  v174 = v10;
  if (v10 == 5)
  {
    goto LABEL_6;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    if (v10 == 3)
    {
LABEL_6:

      goto LABEL_8;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v157 = 0;
      v158 = 0;
      v175 = 0xE000000000000000;
      v17 = 0xE000000000000000;
      goto LABEL_9;
    }
  }

LABEL_8:
  v158 = sub_1001FDEAC(v9, sub_100225FD0);
  v17 = v16;
  v157 = sub_1001FDEAC(v9, sub_100225FDC);
  v175 = v18;
LABEL_9:
  v19 = sub_1001FDFB8(v9);
  v21 = v20;
  v180 = sub_1001E92CC(v9, a3);
  v155 = v9;
  v154 = sub_1001EB974(v9, a3);
  v173 = sub_1001E76C4(a3);
  v22 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
  swift_beginAccess();
  v181 = a3;
  v179 = *(*&v8[v22] + 16);
  if (!v179)
  {
    goto LABEL_92;
  }

  if ((v178 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v178) & 0xF;
  }

  else
  {
    v23 = v161 & 0xFFFFFFFFFFFFLL;
  }

  v24 = HIBYTE(v177) & 0xF;
  if ((v177 & 0x2000000000000000) == 0)
  {
    v24 = v160 & 0xFFFFFFFFFFFFLL;
  }

  v171 = v24;
  v172 = v23;
  if ((v176 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v176) & 0xF;
  }

  else
  {
    v25 = v159 & 0xFFFFFFFFFFFFLL;
  }

  v26 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v26 = v158 & 0xFFFFFFFFFFFFLL;
  }

  v169 = v26;
  v170 = v25;
  if ((v175 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v175) & 0xF;
  }

  else
  {
    v27 = v157 & 0xFFFFFFFFFFFFLL;
  }

  v28 = HIBYTE(v21) & 0xF;
  v156 = v19;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v28 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v167 = v28;
  v168 = v27;
  v166 = a3 != 1;
  v152 = *&v8[v22];

  v29 = 0;
  v164 = v22;
  v165 = v8;
  v162 = v21;
  v163 = v17;
  while (1)
  {
    v37 = *&v8[v22];
    if (v29 >= *(v37 + 2))
    {
      goto LABEL_124;
    }

    if (*&v37[224 * v29 + 48] != a3)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v22] = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_1001FA71C(v37);
    }

    if (v29 >= *(v37 + 2))
    {
      goto LABEL_128;
    }

    v39 = &v37[224 * v29];
    v39[97] = v174;
    *&v8[v22] = v37;
    if (v29 >= *(v37 + 2))
    {
      goto LABEL_129;
    }

    v39[96] = v173;
    *&v8[v22] = v37;
    swift_endAccess();
    if (v172)
    {
      swift_beginAccess();

      v40 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v22] = v37;
      if ((v40 & 1) == 0)
      {
        v37 = sub_1001FA71C(v37);
        *&v8[v22] = v37;
      }

      if (v29 >= *(v37 + 2))
      {
        goto LABEL_133;
      }

      v41 = &v37[224 * v29];
      v42 = *(v41 + 24);
      *(v41 + 23) = v161;
      *(v41 + 24) = v178;
      *&v8[v22] = v37;
      swift_endAccess();
    }

    if (v171)
    {
      swift_beginAccess();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v22] = v37;
      if ((v43 & 1) == 0)
      {
        v37 = sub_1001FA71C(v37);
        *&v8[v22] = v37;
      }

      if (v29 >= *(v37 + 2))
      {
        goto LABEL_134;
      }

      v44 = &v37[224 * v29];
      v45 = *(v44 + 22);
      *(v44 + 21) = v160;
      *(v44 + 22) = v177;
      *&v8[v22] = v37;
      swift_endAccess();
    }

    if (v170)
    {
      swift_beginAccess();

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v22] = v37;
      if ((v46 & 1) == 0)
      {
        v37 = sub_1001FA71C(v37);
        *&v8[v22] = v37;
      }

      if (v29 >= *(v37 + 2))
      {
        goto LABEL_135;
      }

      v47 = &v37[224 * v29];
      v48 = *(v47 + 14);
      *(v47 + 13) = v159;
      *(v47 + 14) = v176;
      *&v8[v22] = v37;
      swift_endAccess();
    }

    if (v169)
    {
      swift_beginAccess();

      v49 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v22] = v37;
      if ((v49 & 1) == 0)
      {
        v37 = sub_1001FA71C(v37);
        *&v8[v22] = v37;
      }

      if (v29 >= *(v37 + 2))
      {
        goto LABEL_136;
      }

      v50 = &v37[224 * v29];
      v51 = *(v50 + 16);
      *(v50 + 15) = v158;
      *(v50 + 16) = v17;
      *&v8[v22] = v37;
      swift_endAccess();
    }

    if (v168)
    {
      swift_beginAccess();

      v52 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v22] = v37;
      if ((v52 & 1) == 0)
      {
        v37 = sub_1001FA71C(v37);
        *&v8[v22] = v37;
      }

      if (v29 >= *(v37 + 2))
      {
        goto LABEL_137;
      }

      v53 = &v37[224 * v29];
      v54 = *(v53 + 18);
      *(v53 + 17) = v157;
      *(v53 + 18) = v175;
      *&v8[v22] = v37;
      swift_endAccess();
    }

    if (v167)
    {
      swift_beginAccess();

      v55 = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v22] = v37;
      if ((v55 & 1) == 0)
      {
        v37 = sub_1001FA71C(v37);
        *&v8[v22] = v37;
      }

      if (v29 >= *(v37 + 2))
      {
        goto LABEL_138;
      }

      v56 = &v37[224 * v29];
      v57 = *(v56 + 20);
      *(v56 + 19) = v156;
      *(v56 + 20) = v21;
      *&v8[v22] = v37;
      swift_endAccess();
    }

    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1002EED50;
    *(v58 + 56) = &type metadata for Int;
    *(v58 + 64) = &protocol witness table for Int;
    *(v58 + 32) = v166;
    v59 = Array.description.getter();
    v61 = v60;
    *(v58 + 96) = &type metadata for String;
    *(v58 + 104) = sub_1001A76E8();
    *(v58 + 72) = v59;
    *(v58 + 80) = v61;
    os_log(_:dso:log:type:_:)();

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v8 = qword_100382508;
    v22 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
    swift_beginAccess();
    v62 = *&v8[v22];
    v63 = *(v62 + 2);
    if (v63)
    {
      break;
    }

LABEL_26:
    v30 = v8;
    a3 = v63;
LABEL_27:
    sub_1001FCC58(v63, a3, sub_100224C0C, sub_1001FC954);
    swift_endAccess();
    sub_10020D3C0(1);
    v31 = *&v8[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = v187[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v187[0]) = (v32 & 1) == 0;

    static Published.subscript.setter();

    v33 = qword_100382508;
    swift_beginAccess();
    v34 = v33;

    sub_1001E2FA8(v35);
    swift_endAccess();
    sub_10020D3C0(1);
    v36 = *&v34[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v33) = v187[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v187[0]) = (v33 & 1) == 0;

    static Published.subscript.setter();

    v22 = v164;
    v8 = v165;
    a3 = v181;
    v21 = v162;
    v17 = v163;
LABEL_28:
    if (++v29 == v179)
    {

      v19 = v156;
LABEL_92:

      sub_1001FE268(a3, v174, v19, v21);

      if (qword_100375020 == -1)
      {
        goto LABEL_93;
      }

      goto LABEL_140;
    }
  }

  v64 = 0;
  v65 = 0;
  v66 = v62 + 40;
  while ((*v66 & 1) != 0 || *(v66 - 1) != a3)
  {
    ++v65;
    v66 += 208;
    v64 += 208;
    if (v63 == v65)
    {
      goto LABEL_26;
    }
  }

  a3 = v65 + 1;
  if (__OFADD__(v65, 1))
  {
    goto LABEL_139;
  }

  v67 = v8;
  if (a3 != v63)
  {
    while (a3 < v63)
    {
      v68 = &v62[v64 + 240];
      if ((v62[v64 + 248] & 1) != 0 || *v68 != v181)
      {
        if (a3 != v65)
        {
          if (v65 >= v63)
          {
            goto LABEL_125;
          }

          v69 = 208 * v65;
          v70 = &v62[208 * v65 + 32];
          __dst[0] = *v70;
          v71 = *(v70 + 1);
          v72 = *(v70 + 2);
          v73 = *(v70 + 4);
          __dst[3] = *(v70 + 3);
          __dst[4] = v73;
          __dst[1] = v71;
          __dst[2] = v72;
          v74 = *(v70 + 5);
          v75 = *(v70 + 6);
          v76 = *(v70 + 8);
          __dst[7] = *(v70 + 7);
          __dst[8] = v76;
          __dst[5] = v74;
          __dst[6] = v75;
          v77 = *(v70 + 9);
          v78 = *(v70 + 10);
          v79 = *(v70 + 11);
          *(&__dst[11] + 9) = *(v70 + 185);
          __dst[10] = v78;
          __dst[11] = v79;
          __dst[9] = v77;
          v187[0] = *v68;
          v80 = *&v62[v64 + 256];
          v81 = *&v62[v64 + 272];
          v82 = *&v62[v64 + 304];
          v187[3] = *&v62[v64 + 288];
          v187[4] = v82;
          v187[1] = v80;
          v187[2] = v81;
          v83 = *&v62[v64 + 320];
          v84 = *&v62[v64 + 336];
          v85 = *&v62[v64 + 368];
          v187[7] = *&v62[v64 + 352];
          v187[8] = v85;
          v187[5] = v83;
          v187[6] = v84;
          v86 = *&v62[v64 + 384];
          v87 = *&v62[v64 + 400];
          v88 = *&v62[v64 + 416];
          *(&v187[11] + 9) = *&v62[v64 + 425];
          v187[10] = v87;
          v187[11] = v88;
          v187[9] = v86;
          sub_100201470(__dst, __src);
          sub_100201470(v187, __src);
          v89 = swift_isUniquelyReferenced_nonNull_native();
          *&v8[v22] = v62;
          if ((v89 & 1) == 0)
          {
            v62 = sub_1001FA708(v62);
            *&v8[v22] = v62;
          }

          if (v65 >= *(v62 + 2))
          {
            goto LABEL_126;
          }

          v90 = &v62[v69];
          v183[0] = *&v62[v69 + 32];
          v91 = *&v62[v69 + 48];
          v92 = *&v62[v69 + 64];
          v93 = *&v62[v69 + 96];
          v183[3] = *&v62[v69 + 80];
          v183[4] = v93;
          v183[1] = v91;
          v183[2] = v92;
          v94 = *&v62[v69 + 112];
          v95 = *&v62[v69 + 128];
          v96 = *&v62[v69 + 160];
          v183[7] = *&v62[v69 + 144];
          v183[8] = v96;
          v183[5] = v94;
          v183[6] = v95;
          v97 = *&v62[v69 + 176];
          v98 = *&v62[v69 + 192];
          v99 = *&v62[v69 + 208];
          *(v184 + 9) = *&v62[v69 + 217];
          v183[10] = v98;
          v184[0] = v99;
          v183[9] = v97;
          *(v90 + 2) = v187[0];
          v100 = v187[1];
          v101 = v187[2];
          v102 = v187[4];
          *(v90 + 5) = v187[3];
          *(v90 + 6) = v102;
          *(v90 + 3) = v100;
          *(v90 + 4) = v101;
          v103 = v187[5];
          v104 = v187[6];
          v105 = v187[8];
          *(v90 + 9) = v187[7];
          *(v90 + 10) = v105;
          *(v90 + 7) = v103;
          *(v90 + 8) = v104;
          v106 = v187[9];
          v107 = v187[10];
          v108 = v187[11];
          *(v90 + 217) = *(&v187[11] + 9);
          *(v90 + 12) = v107;
          *(v90 + 13) = v108;
          *(v90 + 11) = v106;
          sub_1002014CC(v183);
          *&v8[v22] = v62;
          if (a3 >= *(v62 + 2))
          {
            goto LABEL_127;
          }

          v109 = &v62[v64];
          __src[0] = *&v62[v64 + 240];
          v110 = *&v62[v64 + 256];
          v111 = *&v62[v64 + 272];
          v112 = *&v62[v64 + 304];
          __src[3] = *&v62[v64 + 288];
          __src[4] = v112;
          __src[1] = v110;
          __src[2] = v111;
          v113 = *&v62[v64 + 320];
          v114 = *&v62[v64 + 336];
          v115 = *&v62[v64 + 368];
          __src[7] = *&v62[v64 + 352];
          __src[8] = v115;
          __src[5] = v113;
          __src[6] = v114;
          v116 = *&v62[v64 + 384];
          v117 = *&v62[v64 + 400];
          v118 = *&v62[v64 + 416];
          *(&__src[11] + 9) = *&v62[v64 + 425];
          __src[10] = v117;
          __src[11] = v118;
          __src[9] = v116;
          *(v109 + 15) = __dst[0];
          v119 = __dst[1];
          v120 = __dst[2];
          v121 = __dst[4];
          *(v109 + 18) = __dst[3];
          *(v109 + 19) = v121;
          *(v109 + 16) = v119;
          *(v109 + 17) = v120;
          v122 = __dst[5];
          v123 = __dst[6];
          v124 = __dst[8];
          *(v109 + 22) = __dst[7];
          *(v109 + 23) = v124;
          *(v109 + 20) = v122;
          *(v109 + 21) = v123;
          v125 = __dst[9];
          v126 = __dst[10];
          v127 = __dst[11];
          *(v109 + 425) = *(&__dst[11] + 9);
          *(v109 + 25) = v126;
          *(v109 + 26) = v127;
          *(v109 + 24) = v125;
          sub_1002014CC(__src);
          *&v8[v22] = v62;
        }

        ++v65;
      }

      ++a3;
      v63 = *(v62 + 2);
      v64 += 208;
      if (a3 == v63)
      {
        goto LABEL_77;
      }
    }

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

  a3 = v63;
LABEL_77:
  v63 = v65;
  if (a3 >= v65)
  {
    goto LABEL_27;
  }

  while (1)
  {
    __break(1u);
LABEL_133:
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
    swift_once();
LABEL_93:
    v128 = sub_10021AF50();
    v129 = v128[2];
    if (v129)
    {
      v130 = 0;
      while (1)
      {
        if (v130 >= v128[2])
        {
          goto LABEL_130;
        }

        if (*(v128 + v130 + 32) && *(v128 + v130 + 32) != 1)
        {
          break;
        }

        v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v131)
        {
          a3 = v181;
LABEL_104:

          sub_1001FFA94(v155, v174, a3, v183);
          sub_100200658(a3, v183, v180, v154);

          sub_1001AC99C(v183, &unk_100377060, &qword_1002F2200);
          goto LABEL_105;
        }

        ++v130;
        a3 = v181;
        if (v129 == v130)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_104;
    }

LABEL_100:

LABEL_105:
    v132 = sub_10021AF50();
    v133 = v132[2];
    if (!v133)
    {
      break;
    }

    a3 = 0;
    while (a3 < v132[2])
    {
      if (*(v132 + a3 + 32) && *(v132 + a3 + 32) != 2)
      {

LABEL_114:

        v135 = v155;
        sub_1001FFA94(v155, v174, v181, __src);
        memcpy(__dst, __src, 0x121uLL);
        v136 = v153;
        if (sub_1002004E8(__dst) == 1)
        {
          goto LABEL_115;
        }

        sub_1001E4158();
        v137 = [v153 slotID];
        v138 = swift_allocObject();
        v138[2] = v155;
        memcpy(v138 + 3, __src, 0x121uLL);
        v138[40] = v8;
        v138[41] = v153;
        v150 = v155;
        v8;
        v151 = v153;
        v141 = sub_1002050B0;
        goto LABEL_116;
      }

      v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v134)
      {
        goto LABEL_114;
      }

      if (v133 == ++a3)
      {
        goto LABEL_112;
      }
    }

LABEL_131:
    __break(1u);
  }

LABEL_112:

  v135 = v155;
  v136 = v153;
LABEL_115:
  sub_1001FFA48(v182);
  memcpy(v187, v182, 0x121uLL);
  sub_1001E4158();
  v137 = [v136 slotID];
  v138 = swift_allocObject();
  v138[2] = v135;
  memcpy(v138 + 3, v187, 0x121uLL);
  v138[40] = v8;
  v138[41] = v136;
  v139 = v135;
  v8;
  v140 = v136;
  v141 = sub_1001FFA84;
LABEL_116:
  sub_1001F1774(v137, v141, v138);

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1002EED40;
  v143 = *&v8[v22];
  v144 = sub_1001A551C(&qword_100377040, &qword_1002F21E8);
  *(v142 + 56) = v144;
  *(v142 + 64) = sub_1001AD0C8(&qword_100377048, &qword_100377040, &qword_1002F21E8);
  *(v142 + 32) = v143;

  os_log(_:dso:log:type:_:)();

  v145 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  v146 = static NSNotificationName.carrierUpdate;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1002EED40;
  v182[0] = 0x7372656972726163;
  v182[1] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v148 = *&v8[v22];
  *(v147 + 96) = v144;
  *(v147 + 72) = v148;

  sub_1001FD020(v147);
  swift_setDeallocating();
  sub_1001AC99C(v147 + 32, &qword_100377058, &qword_1002F21F8);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v145 postNotificationName:v146 object:0 userInfo:isa];
}

void sub_1001F3B94(char *a1, void *a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) != 1)
  {
    return;
  }

  if (qword_100374FD8 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002EED50;
    *&v108[0] = a1;
    v6 = a1;
    sub_1001A551C(&qword_100377238, &qword_1002F23D8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v5 + 56) = &type metadata for String;
    v10 = sub_1001A76E8();
    *(v5 + 64) = v10;
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    *&v108[0] = a2;
    v11 = a2;
    sub_1001A551C(&qword_100377250, &qword_1002F23F0);
    v12 = String.init<A>(describing:)();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v10;
    *(v5 + 72) = v12;
    *(v5 + 80) = v13;
    os_log(_:dso:log:type:_:)();

    if (!a1)
    {
      __break(1u);
      return;
    }

    v14 = &selRef_clearRlfCauses;
    v15 = [v6 slotID];
    v16 = "CarrierInfoArray ";
    if (v15 == 1)
    {
      v16 = "0000000100000002";
    }

    a1 = (v16 | 0x8000000000000000);
    v17 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v18 = *(v3 + v17);
    v19 = *(v18 + 16);
    if (v19 == 1)
    {
      v26 = *(v18 + 48);
      if (v26 == [v6 slotID])
      {
LABEL_11:

        goto LABEL_22;
      }

      v27 = [v6 slotID];
      v28 = [v6 isSimPresent];
      v29 = [v6 phoneNumber];
      if (v29)
      {
        v30 = v29;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      *&v93 = 0;
      *(&v93 + 1) = 0xE000000000000000;
      *&v94 = v27;
      BYTE8(v94) = v28;
      *&v95 = 0xD000000000000010;
      *(&v95 + 1) = a1;
      *&v96 = v31;
      *(&v96 + 1) = v33;
      LOWORD(v97) = 1541;
      *(&v97 + 1) = 0x6E776F6E6B6E55;
      v98 = 0xE700000000000000;
      v99 = 0xE000000000000000;
      *&v100 = 0xE000000000000000;
      *(&v100 + 1) = 0x2020202020202020;
      *&v101 = 0xEA00000000002020;
      *(&v101 + 1) = 0x2020202020202020;
      *&v102 = 0xEA00000000002020;
      *(&v102 + 1) = 0x2020202020202020;
      *&v103 = 0xEA00000000002020;
      *(&v103 + 1) = 0x2020202020202020;
      *&v104 = 0xEA00000000002020;
      *(&v104 + 1) = 0x2020202020202020;
      *&v105 = 0xEA00000000002020;
      *(&v105 + 1) = _swiftEmptyArrayStorage;
      *&v106 = _swiftEmptyArrayStorage;
      *(&v106 + 1) = _swiftEmptyArrayStorage;
      swift_beginAccess();
      v108[10] = v103;
      v108[11] = v104;
      v108[12] = v105;
      v108[13] = v106;
      v108[6] = v99;
      v108[7] = v100;
      v108[8] = v101;
      v108[9] = v102;
      v108[2] = v95;
      v108[3] = v96;
      v108[4] = v97;
      v108[5] = v98;
      v108[0] = v93;
      v108[1] = v94;
      a1 = (v3 + v17);
      sub_100204650(0, 0, v108);
      swift_endAccess();
      sub_100203650(&v93);
      v14 = &selRef_clearRlfCauses;
    }

    else
    {
      if (v19)
      {
        goto LABEL_11;
      }

      v88 = [v6 slotID];
      v20 = [v6 isSimPresent];
      v21 = [v6 phoneNumber];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      swift_beginAccess();
      v34 = *(v3 + v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v17) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_100224E64(0, *(v34 + 2) + 1, 1, v34);
        *(v3 + v17) = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v87 = sub_100224E64((v36 > 1), v37 + 1, 1, v34);
        v38 = v37 + 1;
        v34 = v87;
      }

      *(v34 + 2) = v38;
      v39 = &v34[224 * v37];
      *(v39 + 4) = 0;
      *(v39 + 5) = 0xE000000000000000;
      *(v39 + 6) = v88;
      v39[56] = v20;
      v40 = *(&v93 + 3);
      *(v39 + 57) = v93;
      *(v39 + 15) = v40;
      *(v39 + 8) = 0xD000000000000010;
      *(v39 + 9) = a1;
      *(v39 + 10) = v23;
      *(v39 + 11) = v25;
      *(v39 + 48) = 1541;
      v41 = v91;
      *(v39 + 51) = v92;
      *(v39 + 98) = v41;
      *(v39 + 13) = 0x6E776F6E6B6E55;
      *(v39 + 14) = 0xE700000000000000;
      *(v39 + 15) = 0;
      *(v39 + 16) = 0xE000000000000000;
      *(v39 + 17) = 0;
      *(v39 + 18) = 0xE000000000000000;
      *(v39 + 19) = 0x2020202020202020;
      *(v39 + 20) = 0xEA00000000002020;
      *(v39 + 21) = 0x2020202020202020;
      *(v39 + 22) = 0xEA00000000002020;
      *(v39 + 23) = 0x2020202020202020;
      *(v39 + 24) = 0xEA00000000002020;
      *(v39 + 25) = 0x2020202020202020;
      *(v39 + 26) = 0xEA00000000002020;
      *(v39 + 27) = 0x2020202020202020;
      *(v39 + 28) = 0xEA00000000002020;
      *(v39 + 29) = _swiftEmptyArrayStorage;
      *(v39 + 30) = _swiftEmptyArrayStorage;
      *(v39 + 31) = _swiftEmptyArrayStorage;
      *(v3 + v17) = v34;
      swift_endAccess();
      v14 = &selRef_clearRlfCauses;
    }

LABEL_22:
    v42 = *(*(v3 + v17) + 16);
    if (!v42)
    {
      break;
    }

    v43 = 0;
    for (i = 0; i != v42; ++i)
    {
      v45 = *(v3 + v17);
      if (i >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      a1 = *(v45 + v43 + 48);
      if (a1 == [v6 slotID])
      {
        a1 = [v6 isSimPresent];
        swift_beginAccess();
        v46 = *(v3 + v17);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v17) = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_1001FA71C(v46);
        }

        if (i >= *(v46 + 2))
        {
          goto LABEL_53;
        }

        v46[v43 + 56] = a1;
        *(v3 + v17) = v46;
        swift_endAccess();
      }

      v43 += 224;
    }

    v48 = *(v3 + v17);
    v49 = *(v48 + 16);

    if (!v49)
    {
      goto LABEL_45;
    }

    v50 = 0;
    a1 = v49 - 1;
    v51 = _swiftEmptyArrayStorage;
    v52 = 32;
LABEL_33:
    v53 = *(v48 + 16);
    v54 = v52 + 224 * v50;
    v55 = v50;
    while (v55 < v53)
    {
      v56 = *(v48 + v54 + 16);
      v93 = *(v48 + v54);
      v94 = v56;
      v57 = *(v48 + v54 + 32);
      v58 = *(v48 + v54 + 48);
      v59 = *(v48 + v54 + 80);
      v97 = *(v48 + v54 + 64);
      v98 = v59;
      v95 = v57;
      v96 = v58;
      v60 = *(v48 + v54 + 96);
      v61 = *(v48 + v54 + 112);
      v62 = *(v48 + v54 + 144);
      v101 = *(v48 + v54 + 128);
      v102 = v62;
      v99 = v60;
      v100 = v61;
      v63 = *(v48 + v54 + 160);
      v64 = *(v48 + v54 + 176);
      v65 = *(v48 + v54 + 208);
      v105 = *(v48 + v54 + 192);
      v106 = v65;
      v103 = v63;
      v104 = v64;
      v50 = v55 + 1;
      if (BYTE8(v94))
      {
        sub_100203618(&v93, &v91);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v51;
        v89 = v52;
        if ((v66 & 1) == 0)
        {
          sub_1001F5504(0, v51[2] + 1, 1);
          v51 = v107;
        }

        v68 = v51[2];
        v67 = v51[3];
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          sub_1001F5504((v67 > 1), v68 + 1, 1);
          v69 = v68 + 1;
          v51 = v107;
        }

        v51[2] = v69;
        v70 = &v51[28 * v68];
        v71 = v94;
        v70[2] = v93;
        v70[3] = v71;
        v72 = v95;
        v73 = v96;
        v74 = v98;
        v70[6] = v97;
        v70[7] = v74;
        v70[4] = v72;
        v70[5] = v73;
        v75 = v99;
        v76 = v100;
        v77 = v102;
        v70[10] = v101;
        v70[11] = v77;
        v70[8] = v75;
        v70[9] = v76;
        v78 = v103;
        v79 = v104;
        v80 = v106;
        v70[14] = v105;
        v70[15] = v80;
        v70[12] = v78;
        v70[13] = v79;
        v52 = v89;
        if (a1 == v55)
        {
LABEL_43:
          v14 = &selRef_clearRlfCauses;
          goto LABEL_46;
        }

        goto LABEL_33;
      }

      v54 += 224;
      ++v55;
      if (v49 == v50)
      {
        goto LABEL_43;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v81 = *(v3 + v17);

LABEL_45:
  v51 = _swiftEmptyArrayStorage;
LABEL_46:

  *(v3 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded) = v51[2] == 2;
  swift_beginAccess();
  v82 = *(v3 + v17);
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *(v3 + v17);
  if (v83)
  {
    sub_1001FCC58(0, *(v84 + 16), sub_100224E64, sub_100204724);
  }

  else
  {
    *(v3 + v17) = sub_100225ACC(0, *(v84 + 24) >> 1);
  }

  sub_1001E3210(v51);
  swift_endAccess();
  sub_1001E571C([v6 v14[449]]);
  v85 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:{objc_msgSend(v6, v14[449])}];
  sub_1001E79A8(v85, a2);

  v86 = *(v3 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager);
  sub_10020BEF4();
}

void *sub_1001F449C(void *result, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) == 1)
  {
    v3 = result;
    if (result)
    {
      v5 = [result slotID];
      v6 = "CarrierInfoArray ";
      if (v5 == 1)
      {
        v6 = "0000000100000002";
      }

      v20 = v6 | 0x8000000000000000;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1002EED50;
      v8 = v3;
      sub_1001A551C(&qword_100377238, &qword_1002F23D8);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      *(v7 + 56) = &type metadata for String;
      v12 = sub_1001A76E8();
      *(v7 + 64) = v12;
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      v13 = a2;
      sub_1001A551C(&qword_100377248, &qword_1002F23E8);
      v14 = String.init<A>(describing:)();
      *(v7 + 96) = &type metadata for String;
      *(v7 + 104) = v12;
      *(v7 + 72) = v14;
      *(v7 + 80) = v15;
      os_log(_:dso:log:type:_:)();

      v16 = [v8 slotID];
      v17 = swift_allocObject();
      v17[2] = v2;
      v17[3] = v3;
      v17[4] = 0xD000000000000010;
      v17[5] = v20;
      v18 = v8;
      v19 = v2;
      sub_1001F1774(v16, sub_100204F30, v17);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001F46D8(void *a1, uint64_t a2, char *a3, void *a4, unint64_t a5, unint64_t a6)
{
  v96 = a1;
  v97 = a4;
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v95 = *(v101 - 8);
  v10 = *(v95 + 64);
  __chkstk_darwin(v101);
  v100 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchQoS();
  v102 = *(v99 - 8);
  v12 = *(v102 + 64);
  __chkstk_darwin(v99);
  v98 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_100374FD8 != -1)
    {
LABEL_30:
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    *&v104 = Error.localizedDescription.getter();
    *(&v104 + 1) = v15;
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1001A76E8();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    os_log(_:dso:log:type:_:)();
  }

  v91 = sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v94 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v21 = v96;
  v20 = v97;
  v19[2] = a3;
  v19[3] = v20;
  v19[4] = v21;
  *&v106 = sub_100204F40;
  *(&v106 + 1) = v19;
  *&v104 = _NSConcreteStackBlock;
  *(&v104 + 1) = 1107296256;
  *&v105 = sub_10020C96C;
  *(&v105 + 1) = &unk_10031EE28;
  v93 = _Block_copy(&v104);
  v92 = v21;
  v22 = a3;
  v90 = v20;

  v23 = v98;
  static DispatchQoS.unspecified.getter();
  *&v104 = _swiftEmptyArrayStorage;
  v24 = sub_10020169C(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  v25 = sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  v26 = sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  v28 = v100;
  v27 = v101;
  v87 = v26;
  v88 = v25;
  v89 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v93;
  v29 = v94;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  v86 = *(v95 + 8);
  v86(v28, v27);
  v31 = *(v102 + 8);
  v102 += 8;
  v85 = v31;
  v31(v23, v99);
  v32 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
  swift_beginAccess();
  v93 = v22;
  v33 = *&v22[v32];
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = v33 + 32;
    v94 = (v34 - 1);
    v37 = _swiftEmptyArrayStorage;
    v95 = v33 + 32;
    do
    {
      v38 = (v36 + 224 * v35);
      a3 = v35;
      while (1)
      {
        if (a3 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v39 = v38[1];
        v104 = *v38;
        v105 = v39;
        v40 = v38[2];
        v41 = v38[3];
        v42 = v38[5];
        v108 = v38[4];
        v109 = v42;
        v106 = v40;
        v107 = v41;
        v43 = v38[6];
        v44 = v38[7];
        v45 = v38[9];
        v112 = v38[8];
        v113 = v45;
        v110 = v43;
        v111 = v44;
        v46 = v38[10];
        v47 = v38[11];
        v48 = v38[13];
        v116 = v38[12];
        v117 = v48;
        v114 = v46;
        v115 = v47;
        if (v106 == __PAIR128__(a6, a5) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++a3;
        v38 += 14;
        if (v34 == a3)
        {
          goto LABEL_19;
        }
      }

      sub_100203618(&v104, v103);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001F5504(0, v37[2] + 1, 1);
        v37 = v118;
      }

      v51 = v37[2];
      v50 = v37[3];
      if (v51 >= v50 >> 1)
      {
        sub_1001F5504((v50 > 1), v51 + 1, 1);
        v37 = v118;
      }

      v35 = a3 + 1;
      v37[2] = v51 + 1;
      v52 = &v37[28 * v51];
      v53 = v105;
      v52[2] = v104;
      v52[3] = v53;
      v54 = v106;
      v55 = v107;
      v56 = v109;
      v52[6] = v108;
      v52[7] = v56;
      v52[4] = v54;
      v52[5] = v55;
      v57 = v110;
      v58 = v111;
      v59 = v113;
      v52[10] = v112;
      v52[11] = v59;
      v52[8] = v57;
      v52[9] = v58;
      v60 = v114;
      v61 = v115;
      v62 = v117;
      v52[14] = v116;
      v52[15] = v62;
      v52[12] = v60;
      v52[13] = v61;
      v36 = v95;
    }

    while (v94 != a3);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

LABEL_19:

  if (!v37[2])
  {
  }

  v63 = *(v37 + 13);
  v114 = *(v37 + 12);
  v115 = v63;
  v64 = *(v37 + 15);
  v116 = *(v37 + 14);
  v117 = v64;
  v65 = *(v37 + 9);
  v110 = *(v37 + 8);
  v111 = v65;
  v66 = *(v37 + 11);
  v112 = *(v37 + 10);
  v113 = v66;
  v67 = *(v37 + 5);
  v106 = *(v37 + 4);
  v107 = v67;
  v68 = *(v37 + 7);
  v108 = *(v37 + 6);
  v109 = v68;
  v69 = *(v37 + 3);
  v104 = *(v37 + 2);
  v105 = v69;
  v70 = BYTE1(v108);
  sub_100203618(&v104, v103);

  if (v70 == 1)
  {

    sub_100203650(&v104);
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = sub_100203650(&v104);
    if ((v72 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v73 = static OS_dispatch_queue.main.getter();
  v74 = swift_allocObject();
  v75 = v93;
  v76 = v96;
  v77 = v97;
  v74[2] = v93;
  v74[3] = v77;
  v74[4] = v76;
  v103[4] = sub_100204FA0;
  v103[5] = v74;
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 1107296256;
  v103[2] = sub_10020C96C;
  v103[3] = &unk_10031EE78;
  v78 = _Block_copy(v103);
  v79 = v75;
  v80 = v90;
  v81 = v92;

  v82 = v98;
  static DispatchQoS.unspecified.getter();
  v103[0] = _swiftEmptyArrayStorage;
  v84 = v100;
  v83 = v101;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v78);

  v86(v84, v83);
  return v85(v82, v99);
}

__n128 sub_1001F5168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1001F51A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1001F51EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F52B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1001F5340(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

char *sub_1001F53B8(char *a1, int64_t a2, char a3)
{
  result = sub_1001F5688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F53D8(char *a1, int64_t a2, char a3)
{
  result = sub_1001F577C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F53F8(char *a1, int64_t a2, char a3)
{
  result = sub_1001F5888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F5418(char *a1, int64_t a2, char a3)
{
  result = sub_1001F598C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001F5438(size_t a1, int64_t a2, char a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_100377270, &qword_1002F2450, type metadata accessor for FTMBandInfoDataModel);
  *v3 = result;
  return result;
}

size_t sub_1001F547C(size_t a1, int64_t a2, char a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_1003772A8, &unk_1002F2488, type metadata accessor for STransferMetrics);
  *v3 = result;
  return result;
}

size_t sub_1001F54C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_100377120, &qword_1002F22E0, type metadata accessor for Metric);
  *v3 = result;
  return result;
}

char *sub_1001F5504(char *a1, int64_t a2, char a3)
{
  result = sub_1001F5A8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001F5524(void *a1, int64_t a2, char a3)
{
  result = sub_1001F5BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F5544(char *a1, int64_t a2, char a3)
{
  result = sub_1001F5CE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001F5564(size_t a1, int64_t a2, char a3)
{
  result = sub_1001F62F4(a1, a2, a3, *v3, &qword_100377280, &unk_1002F2460, &qword_100377288, &qword_1002F3B20);
  *v3 = result;
  return result;
}

void *sub_1001F55A4(void *a1, int64_t a2, char a3)
{
  result = sub_1001F5E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001F55C4(void *a1, int64_t a2, char a3)
{
  result = sub_1001F60A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001F55E4(char *a1, int64_t a2, char a3)
{
  result = sub_1001F61D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001F5604(size_t a1, int64_t a2, char a3)
{
  result = sub_1001F62F4(a1, a2, a3, *v3, &qword_100377160, &unk_1002F2310, &qword_100377168, &unk_1002F5C70);
  *v3 = result;
  return result;
}

size_t sub_1001F5644(size_t a1, int64_t a2, char a3)
{
  result = sub_1001F64DC(a1, a2, a3, *v3, &qword_100377170, &qword_1002F2320, type metadata accessor for DashboardViewModelObject);
  *v3 = result;
  return result;
}

char *sub_1001F5688(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377290, &qword_1002F2470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001F577C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
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

char *sub_1001F5888(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1001F598C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377118, &qword_1002F22D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1001F5A8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377128, &qword_1002F22E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F5BB4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001A551C(&qword_100377130, &qword_1002F22F0);
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
    sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001F5CE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377278, &qword_1002F2458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F5E0C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001A551C(&qword_100377200, &qword_1002F23A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_100379B70, &qword_1002F2380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F5F54(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001A551C(&qword_1003771E0, &qword_1002F2388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003771E8, &qword_1002F2390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001F60A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001A551C(&unk_1003771C0, &qword_1002F2368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001F61D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003771A8, &qword_1002F2350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1001F62F4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001A551C(a5, a6);
  v16 = *(sub_1001A551C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1001A551C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_1001F64DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001A551C(a5, a6);
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

unint64_t sub_1001F66B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1001F67B8(a1, a2, v6);
}

unint64_t sub_1001F6730(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1001F6870(a1, v4);
}

unint64_t sub_1001F6774(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001F68DC(a1, v4);
}

unint64_t sub_1001F67B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1001F6870(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1001F68DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100201580(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1002015DC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_1001F69A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1001F6774(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001F9BB0();
      v11 = v13;
    }

    sub_1002015DC(*(v11 + 48) + 40 * v8);
    sub_100201570((*(v11 + 56) + 32 * v8), a2);
    sub_1001F843C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1001F6A48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1001F66B8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001F9D54();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100201570((*(v12 + 56) + 32 * v9), a3);
    sub_1001F85E0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1001F6AEC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for STransferMetrics();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_1001A551C(&qword_100377208, &unk_1002F23B0);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_100204E18(v28, v9, type metadata accessor for STransferMetrics);
      }

      else
      {
        sub_100204DB0(v28, v9, type metadata accessor for STransferMetrics);
      }

      v29 = *(v13 + 40);
      result = static Hasher._hash(seed:_:)();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_100204E18(v9, *(v13 + 56) + v27 * v21, type metadata accessor for STransferMetrics);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1001F6E34(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = type metadata accessor for Date();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1001A551C(&unk_1003770B0, &qword_1002F2260);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = static Hasher._hash(seed:_:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1001F7180(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001A551C(&unk_100377220, &unk_1002F23C8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1001F7428(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001A551C(&unk_100377070, &qword_1002F2258);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100201570((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100201580(v24, &v37);
        sub_1001A773C(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100201570(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1001F76E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100201570(v25, v37);
      }

      else
      {
        sub_1001A773C(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100201570(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1001F7998(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001A551C(&qword_1003771B0, &qword_1002F2358);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1001F7C38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001A551C(&qword_1003771A0, &qword_1002F2348);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}