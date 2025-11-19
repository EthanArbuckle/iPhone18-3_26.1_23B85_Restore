CGColorRef sub_1000C8DBC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = v0;
    v3 = *sub_10000E7E4((v0 + 16), v1);
    v4 = sub_10006D658();
    v5 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    v6 = *(v5 + *(type metadata accessor for HeadphoneModel(0) + 136));
    v7 = objc_opt_self();
    v8 = [v7 powerBeatsPro];
    v9 = [v8 productID];

    if (v9 == v6)
    {
      if ((v4 & 0xFu) > 0xD)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_1000DA700[v4 & 0xF];
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000A570(v18, qword_10011FDE0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_33;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 16777986;
      *(v21 + 4) = v4;
      *(v21 + 5) = 256;
      *(v21 + 7) = v4 & 0xF;
      *(v21 + 8) = 2080;
      sub_100008438(&qword_10011EA80, &unk_1000DA490);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000D5250;
      *(v23 + 56) = &type metadata for UInt32;
      *(v23 + 64) = &protocol witness table for UInt32;
      *(v23 + 32) = v10;
      v24 = String.init(format:_:)();
      v26 = sub_100078978(v24, v25, &v38);

      *(v21 + 10) = v26;
      v27 = "Mute Call: B444 Color Code: %hhu, Color ID: %hhu, Color Hex: %s";
    }

    else
    {
      v16 = [v7 b494];
      v17 = [v16 productID];

      if (v17 == v6)
      {
        if ((v4 & 0xFu) > 9)
        {
          v10 = 0;
        }

        else
        {
          v10 = dword_1000DA6D8[v4 & 0xF];
        }

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000A570(v28, qword_10011FDE0);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v19, v20))
        {
          goto LABEL_33;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38 = v22;
        *v21 = 16777986;
        *(v21 + 4) = v4;
        *(v21 + 5) = 256;
        *(v21 + 7) = v4 & 0xF;
        *(v21 + 8) = 2080;
        sub_100008438(&qword_10011EA80, &unk_1000DA490);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1000D5250;
        *(v29 + 56) = &type metadata for UInt32;
        *(v29 + 64) = &protocol witness table for UInt32;
        *(v29 + 32) = v10;
        v30 = String.init(format:_:)();
        v32 = sub_100078978(v30, v31, &v38);

        *(v21 + 10) = v32;
        v27 = "Mute Call: B494 Color Code: %hhu, Color ID: %hhu, Color Hex: %s";
      }

      else
      {
        if (v6 != 8221)
        {
          v10 = 0;
          return CGColorCreateGenericRGB(HIWORD(v10) / 255.0, BYTE1(v10) / 255.0, v10 / 255.0, 1.0);
        }

        if ((v4 & 0xFu) > 0xD)
        {
          v10 = 0;
        }

        else
        {
          v10 = dword_1000DA700[v4 & 0xF];
        }

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000A570(v33, qword_10011FDE0);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v19, v20))
        {
LABEL_33:

          return CGColorCreateGenericRGB(HIWORD(v10) / 255.0, BYTE1(v10) / 255.0, v10 / 255.0, 1.0);
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38 = v22;
        *v21 = 16777986;
        *(v21 + 4) = v4;
        *(v21 + 5) = 256;
        *(v21 + 7) = v4 & 0xF;
        *(v21 + 8) = 2080;
        sub_100008438(&qword_10011EA80, &unk_1000DA490);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1000D5250;
        *(v34 + 56) = &type metadata for UInt32;
        *(v34 + 64) = &protocol witness table for UInt32;
        *(v34 + 32) = v10;
        v35 = String.init(format:_:)();
        v37 = sub_100078978(v35, v36, &v38);

        *(v21 + 10) = v37;
        v27 = "Mute Call: B498 Color Code: %hhu, Color ID: %hhu, Color Hex: %s";
      }
    }

    _os_log_impl(&_mh_execute_header, v19, v20, v27, v21, 0x12u);
    sub_10000EA94(v22);

    goto LABEL_33;
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011FDE0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cannot Get Tint Color", v14, 2u);
  }

  return 0;
}

uint64_t sub_1000C9424@<X0>(uint64_t a1@<X8>)
{
  v173 = a1;
  v172 = sub_100008438(&qword_10011FFD8, &qword_1000DA4C8);
  v2 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172);
  v4 = &v152[-v3];
  v183 = type metadata accessor for HeadphoneBatteryInfo(0);
  v5 = *(v183 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v183);
  v156 = &v152[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v160 = &v152[-v10];
  v11 = __chkstk_darwin(v9);
  v157 = &v152[-v12];
  v13 = __chkstk_darwin(v11);
  v161 = &v152[-v14];
  v15 = __chkstk_darwin(v13);
  v159 = &v152[-v16];
  v17 = __chkstk_darwin(v15);
  v158 = &v152[-v18];
  v19 = __chkstk_darwin(v17);
  v169 = &v152[-v20];
  v21 = __chkstk_darwin(v19);
  v168 = &v152[-v22];
  v23 = __chkstk_darwin(v21);
  v164 = &v152[-v24];
  v25 = __chkstk_darwin(v23);
  v27 = &v152[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v152[-v29];
  v31 = __chkstk_darwin(v28);
  v33 = &v152[-v32];
  __chkstk_darwin(v31);
  v35 = &v152[-v34];
  v178 = sub_100008438(&unk_10011FFE0, &unk_1000DA4D0);
  v36 = *(*(v178 - 8) + 64);
  v37 = __chkstk_darwin(v178);
  v162 = &v152[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __chkstk_darwin(v37);
  v163 = &v152[-v40];
  v41 = __chkstk_darwin(v39);
  v167 = &v152[-v42];
  v43 = __chkstk_darwin(v41);
  v166 = &v152[-v44];
  v45 = __chkstk_darwin(v43);
  v165 = &v152[-v46];
  v47 = __chkstk_darwin(v45);
  v177 = &v152[-v48];
  v49 = __chkstk_darwin(v47);
  v176 = &v152[-v50];
  v51 = __chkstk_darwin(v49);
  v175 = &v152[-v52];
  v53 = __chkstk_darwin(v51);
  v171 = &v152[-v54];
  v55 = __chkstk_darwin(v53);
  v179 = &v152[-v56];
  v57 = __chkstk_darwin(v55);
  v181 = &v152[-v58];
  v59 = __chkstk_darwin(v57);
  v182 = &v152[-v60];
  __chkstk_darwin(v59);
  v180 = &v152[-v61];
  v62 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v63 = *(v62 + 128);
  v64 = *(v63 + 16);

  v174 = v4;
  if (v64)
  {
    v65 = 0;
    while (v65 < *(v63 + 16))
    {
      sub_1000CE178(v63 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v65, v35, type metadata accessor for HeadphoneBatteryInfo);
      if (*(v35 + 9) == 4)
      {

        v68 = v180;
        sub_1000CE240(v35, v180, type metadata accessor for HeadphoneBatteryInfo);
        v67 = v68;
        v66 = 0;
        goto LABEL_8;
      }

      ++v65;
      sub_1000CE1E0(v35, type metadata accessor for HeadphoneBatteryInfo);
      if (v64 == v65)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_65;
  }

LABEL_6:

  v66 = 1;
  v67 = v180;
LABEL_8:
  v69 = *(v5 + 56);
  v69(v67, v66, 1, v183);
  v70 = *(v62 + 128);
  v35 = *(v70 + 16);

  if (v35)
  {
    v4 = 0;
    while (v4 < *(v70 + 16))
    {
      sub_1000CE178(v70 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v33, type metadata accessor for HeadphoneBatteryInfo);
      if (!v33[9])
      {

        sub_1000CE240(v33, v182, type metadata accessor for HeadphoneBatteryInfo);
        v71 = 0;
        goto LABEL_15;
      }

      ++v4;
      sub_1000CE1E0(v33, type metadata accessor for HeadphoneBatteryInfo);
      if (v35 == v4)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_66;
  }

LABEL_13:

  v71 = 1;
LABEL_15:
  v69(v182, v71, 1, v183);
  v72 = *(v62 + 128);
  v73 = *(v72 + 16);

  v4 = v180;
  if (v73)
  {
    v35 = 0;
    while (v35 < *(v72 + 16))
    {
      sub_1000CE178(v72 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, v30, type metadata accessor for HeadphoneBatteryInfo);
      if (*(v30 + 9) == 1)
      {

        sub_1000CE240(v30, v181, type metadata accessor for HeadphoneBatteryInfo);
        v74 = 0;
        goto LABEL_22;
      }

      ++v35;
      sub_1000CE1E0(v30, type metadata accessor for HeadphoneBatteryInfo);
      if (v73 == v35)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_67;
  }

LABEL_20:

  v74 = 1;
LABEL_22:
  v75 = 1;
  v69(v181, v74, 1, v183);
  v76 = *(v62 + 128);
  v35 = *(v76 + 16);
  if (v35)
  {
    v77 = v76 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v78 = *(v62 + 128);

    v30 = 0;
    v62 = v179;
    while (v30 < *(v76 + 16))
    {
      sub_1000CE178(v77 + *(v5 + 72) * v30, v27, type metadata accessor for HeadphoneBatteryInfo);
      if (*(v27 + 9) == 2 && *v27 > 0.0)
      {

        sub_1000CE240(v27, v62, type metadata accessor for HeadphoneBatteryInfo);
        v75 = 0;
        goto LABEL_31;
      }

      ++v30;
      sub_1000CE1E0(v27, type metadata accessor for HeadphoneBatteryInfo);
      if (v35 == v30)
      {

        v75 = 1;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
    goto LABEL_32;
  }

  v62 = v179;
LABEL_31:
  v69(v62, v75, 1, v183);
  v30 = v175;
  v35 = v176;
  if (qword_10011C770 != -1)
  {
    goto LABEL_68;
  }

LABEL_32:
  v79 = type metadata accessor for Logger();
  v80 = sub_10000A570(v79, qword_10011FDE0);
  v81 = v171;
  sub_10000E88C(v4, v171, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v182, v30, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v181, v35, &unk_10011FFE0, &unk_1000DA4D0);
  v82 = v62;
  v83 = v62;
  v84 = v177;
  sub_10000E88C(v83, v177, &unk_10011FFE0, &unk_1000DA4D0);
  v170 = v80;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v184 = v155;
    *v87 = 136315906;
    v154 = v85;
    v88 = v165;
    sub_10000E88C(v81, v165, &unk_10011FFE0, &unk_1000DA4D0);
    v89 = v166;
    sub_10000E88C(v88, v166, &unk_10011FFE0, &unk_1000DA4D0);
    v90 = String.init<A>(reflecting:)();
    v153 = v86;
    v91 = v90;
    v93 = v92;
    sub_10000E950(v88, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v81, &unk_10011FFE0, &unk_1000DA4D0);
    v94 = sub_100078978(v91, v93, &v184);

    *(v87 + 4) = v94;
    *(v87 + 12) = 2080;
    v95 = v175;
    sub_10000E88C(v175, v88, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E88C(v88, v89, &unk_10011FFE0, &unk_1000DA4D0);
    v96 = String.init<A>(reflecting:)();
    v98 = v97;
    sub_10000E950(v88, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v95, &unk_10011FFE0, &unk_1000DA4D0);
    v99 = sub_100078978(v96, v98, &v184);

    *(v87 + 14) = v99;
    *(v87 + 22) = 2080;
    v100 = v176;
    sub_10000E88C(v176, v88, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E88C(v88, v89, &unk_10011FFE0, &unk_1000DA4D0);
    v101 = String.init<A>(reflecting:)();
    v103 = v102;
    sub_10000E950(v88, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v100, &unk_10011FFE0, &unk_1000DA4D0);
    v104 = sub_100078978(v101, v103, &v184);

    *(v87 + 24) = v104;
    *(v87 + 32) = 2080;
    v105 = v179;
    v106 = v177;
    sub_10000E88C(v177, v88, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E88C(v88, v89, &unk_10011FFE0, &unk_1000DA4D0);
    v107 = String.init<A>(reflecting:)();
    v109 = v108;
    sub_10000E950(v88, &unk_10011FFE0, &unk_1000DA4D0);
    v4 = v180;
    sub_10000E950(v106, &unk_10011FFE0, &unk_1000DA4D0);
    v110 = sub_100078978(v107, v109, &v184);

    *(v87 + 34) = v110;
    v111 = v154;
    _os_log_impl(&_mh_execute_header, v154, v153, "Battery: createBatteryConfigurationForAABattery showing new battery info %s %s %s %s", v87, 0x2Au);
    swift_arrayDestroy();

    v112 = v174;
    v113 = v172;
  }

  else
  {

    sub_10000E950(v84, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v35, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v30, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v81, &unk_10011FFE0, &unk_1000DA4D0);
    v112 = v174;
    v113 = v172;
    v105 = v82;
  }

  v114 = v113[12];
  v115 = v113[16];
  v116 = v113[20];
  sub_10000E88C(v4, v112, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v182, &v114[v112], &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v181, v112 + v115, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v105, v112 + v116, &unk_10011FFE0, &unk_1000DA4D0);
  v117 = *(v5 + 48);
  v118 = v183;
  if (v117(v112, 1, v183) != 1)
  {
    v119 = v167;
    sub_10000E88C(v112, v167, &unk_10011FFE0, &unk_1000DA4D0);
    if (v117(v112 + v116, 1, v118) != 1)
    {
      sub_1000CE240(v119, v168, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v112 + v116, v169, type metadata accessor for HeadphoneBatteryInfo);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&_mh_execute_header, v128, v129, "Battery: createBatteryConfigurationForAABattery combinedWithCase", v130, 2u);
      }

      sub_10000E950(v105, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v181, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v182, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v4, &unk_10011FFE0, &unk_1000DA4D0);
      v131 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
      v132 = v173;
      sub_1000CE240(v168, v173, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v169, v132 + v131, type metadata accessor for HeadphoneBatteryInfo);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      goto LABEL_50;
    }

    v120 = v164;
    sub_1000CE240(v119, v164, type metadata accessor for HeadphoneBatteryInfo);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v121, v122, "Battery: createBatteryConfigurationForAABattery combinedWithoutCase", v123, 2u);
    }

LABEL_43:

    sub_10000E950(v105, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v181, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v182, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v4, &unk_10011FFE0, &unk_1000DA4D0);
    sub_1000CE240(v120, v173, type metadata accessor for HeadphoneBatteryInfo);
    type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
LABEL_50:
    swift_storeEnumTagMultiPayload();
    sub_10000E950(v112 + v115, &unk_10011FFE0, &unk_1000DA4D0);
    v133 = &v114[v112];
    goto LABEL_51;
  }

  if (v117(&v114[v112], 1, v118) != 1)
  {
    v124 = v163;
    sub_10000E88C(&v114[v112], v163, &unk_10011FFE0, &unk_1000DA4D0);
    if (v117(v112 + v115, 1, v118) == 1)
    {
      sub_10000E950(v105, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v181, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v182, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v4, &unk_10011FFE0, &unk_1000DA4D0);
      sub_1000CE1E0(v124, type metadata accessor for HeadphoneBatteryInfo);
      goto LABEL_46;
    }

    v180 = v114;
    v135 = v162;
    sub_10000E88C(v112 + v115, v162, &unk_10011FFE0, &unk_1000DA4D0);
    if (v117(v112 + v116, 1, v118) == 1)
    {
      v136 = v157;
      sub_1000CE240(v124, v157, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v135, v160, type metadata accessor for HeadphoneBatteryInfo);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v137, v138, "Battery: createBatteryConfigurationForAABattery splitWithoutCase", v139, 2u);
      }

      sub_10000E950(v105, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v181, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v182, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v4, &unk_10011FFE0, &unk_1000DA4D0);
      v140 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v141 = v136;
      v142 = v173;
      sub_1000CE240(v141, v173, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v160, v142 + v140, type metadata accessor for HeadphoneBatteryInfo);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
    }

    else
    {
      sub_1000CE240(v124, v158, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v135, v159, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v112 + v116, v161, type metadata accessor for HeadphoneBatteryInfo);
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&_mh_execute_header, v145, v146, "Battery: createBatteryConfigurationForAABattery splitWithCase", v147, 2u);
      }

      sub_10000E950(v105, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v181, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v182, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v4, &unk_10011FFE0, &unk_1000DA4D0);
      v148 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v149 = *(v148 + 48);
      v150 = *(v148 + 64);
      v151 = v173;
      sub_1000CE240(v158, v173, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v159, v151 + v149, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v161, v151 + v150, type metadata accessor for HeadphoneBatteryInfo);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
    }

    swift_storeEnumTagMultiPayload();
    sub_10000E950(v112 + v115, &unk_10011FFE0, &unk_1000DA4D0);
    v133 = &v180[v112];
LABEL_51:
    sub_10000E950(v133, &unk_10011FFE0, &unk_1000DA4D0);
    v127 = v112;
    v125 = &unk_10011FFE0;
    v126 = &unk_1000DA4D0;
    return sub_10000E950(v127, v125, v126);
  }

  if (v117(v112 + v115, 1, v118) == 1 && v117(v112 + v116, 1, v118) != 1)
  {
    v120 = v156;
    sub_1000CE240(v112 + v116, v156, type metadata accessor for HeadphoneBatteryInfo);
    v121 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&_mh_execute_header, v121, v143, "Battery: createBatteryConfigurationForAABattery headsetOnly", v144, 2u);
    }

    goto LABEL_43;
  }

  sub_10000E950(v105, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E950(v181, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E950(v182, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E950(v4, &unk_10011FFE0, &unk_1000DA4D0);
LABEL_46:
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v125 = &qword_10011FFD8;
  v126 = &qword_1000DA4C8;
  v127 = v112;
  return sub_10000E950(v127, v125, v126);
}

id sub_1000CAAE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = sub_100046AA8();
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000A570(v15, qword_10011FDE0);

  v54 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v56 = v14;
    v20 = a2;
    v21 = v19;
    *v19 = 67109632;
    *(v19 + 4) = v56;
    v53 = v11;
    v57 = v4;
    *(v19 + 8) = 1024;
    *(v19 + 10) = sub_100046AA8();

    *(v21 + 14) = 1024;
    v22 = v20 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    v23 = type metadata accessor for HeadphoneModel(0);
    sub_10000E88C(v22 + *(v23 + 152), v13, &qword_10011DE30, &qword_1000D79F0);
    LODWORD(v22) = (*(v57 + 48))(v13, 1, v3) != 1;
    v4 = v57;
    v11 = v53;
    sub_10000E950(v13, &qword_10011DE30, &qword_1000D79F0);
    *(v21 + 16) = v22;
    v24 = v20;
    LOBYTE(v20) = v56;

    _os_log_impl(&_mh_execute_header, v17, v18, "OBC Charging status should show:%{BOOL}d obcCharging: %{BOOL}d obcDeadline:%{BOOL}d", v21, 0x14u);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    v24 = a2;

    if (!v14)
    {
      return 0;
    }
  }

  v26 = [objc_allocWithZone(NSTextAttachment) init];
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = [v28 imageWithRenderingMode:2];
  }

  else
  {
    v29 = 0;
  }

  [v26 setImage:v29];

  sub_1000084D4(0, &qword_10011FFD0, NSMutableAttributedString_ptr);
  v25 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v26];
  v30 = v24 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v31 = type metadata accessor for HeadphoneModel(0);
  sub_10000E88C(v30 + *(v31 + 152), v11, &qword_10011DE30, &qword_1000D79F0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_10000E950(v11, &qword_10011DE30, &qword_1000D79F0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Missing full charge deadline, unexpected when showing OBC status.", v34, 2u);
    }
  }

  else
  {
    v35 = v55;
    (*(v4 + 32))(v55, v11, v3);
    v36 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v38 = [v36 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v58 = 32;
    v59 = 0xE100000000000000;
    sub_100008438(&qword_10011EA80, &unk_1000DA490);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000D5250;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_1000CDFF8();
    *(v42 + 32) = v39;
    *(v42 + 40) = v41;
    v43 = sub_1000364D8(v42, 25);
    v44 = v4;
    v46 = v45;

    v47._countAndFlagsBits = v43;
    v47._object = v46;
    String.append(_:)(v47);

    v48 = objc_allocWithZone(NSAttributedString);
    v49 = String._bridgeToObjectiveC()();

    v50 = [v48 initWithString:v49];

    [v25 appendAttributedString:v50];
    (*(v44 + 8))(v35, v3);
  }

  return v25;
}

void *sub_1000CB184(uint64_t a1, void **a2)
{
  v3 = sub_100046C58();
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = [objc_opt_self() mainBundle];
    v16._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x80000001000E2750;
    v12.value._object = 0x80000001000DBB60;
    v12.value._countAndFlagsBits = 0xD000000000000010;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v16);

    v8 = sub_1000A2F88(UIFontTextStyleCallout, v14._countAndFlagsBits, v14._object);

    return v8;
  }

  v7 = swift_slowAlloc();
  *v7 = 67109376;
  *(v7 + 4) = v3;
  *(v7 + 8) = 1024;
  *(v7 + 10) = sub_100046C58();

  _os_log_impl(&_mh_execute_header, v5, v6, "DEOC Charging should show:%{BOOL}d deocCharging: %{BOOL}d", v7, 0xEu);

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = *a2;
  v9 = v8;
  return v8;
}

uint64_t sub_1000CB388(uint64_t a1, void **a2)
{
  v3 = a1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v4 = *(type metadata accessor for HeadphoneModel(0) + 92);
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *(v3 + v4);
    v7 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

    goto LABEL_29;
  }

  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v10 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v3 + 152))
  {
    v11 = *(v3 + 144);
    v12 = *(v3 + 152);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v25 = *(v10 + 16);

  if (v25)
  {
    v26 = sub_1000CD118(v11, v12);
    v28 = v27;

    if (v28)
    {
      v6 = *(*(v10 + 56) + 8 * v26);

      v7 = *a2;
      if (*a2)
      {
LABEL_3:
        v8 = v5;
        if ([v7 length] > 0)
        {
          v9 = sub_100046AA8() && [v6 optimizedBatteryChargingCapability] == 2 && objc_msgSend(v6, "optimizedBatteryChargingState") == 1 && sub_100046AA8();
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          sub_10000A570(v13, qword_10011FDE0);
          v14 = v6;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 67109632;
            *(v17 + 4) = v9;
            *(v17 + 8) = 256;
            *(v17 + 10) = [v14 optimizedBatteryChargingCapability];
            *(v17 + 11) = 256;
            *(v17 + 13) = [v14 optimizedBatteryChargingState];

            _os_log_impl(&_mh_execute_header, v15, v16, "OBC Charge to full now, should show:%{BOOL}d chargingOBC: obcCap:%hhu obcState: %hhd", v17, 0xEu);
          }

          else
          {

            v15 = v14;
          }

          v18 = sub_100046C58() && [v14 dynamicEndOfChargeCapability]== 2 && [v14 dynamicEndOfChargeState]== 1;
          v19 = v14;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 67109632;
            *(v22 + 4) = v18;
            *(v22 + 8) = 256;
            *(v22 + 10) = [v19 dynamicEndOfChargeCapability];
            *(v22 + 11) = 256;
            *(v22 + 13) = [v19 dynamicEndOfChargeState];

            _os_log_impl(&_mh_execute_header, v20, v21, "DEOC Charge to full now, should show:%{BOOL}d chargingOBC: deocCap:%hhu obcState: %hhd", v22, 0xEu);
          }

          else
          {

            v20 = v19;
          }

          if (v9 || v18)
          {
            v23 = sub_100033A5C(24);

            return v23;
          }

          goto LABEL_40;
        }

LABEL_30:
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000A570(v30, qword_10011FDE0);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Not showing charge to full button no title to pair with.", v33, 2u);
        }

        return 0;
      }

LABEL_29:
      v29 = v5;
      goto LABEL_30;
    }
  }

  else
  {
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A570(v34, qword_10011FDE0);
  v19 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v19, v35, "Not showing charge to full button because device is likely not connected.", v36, 2u);
  }

LABEL_40:

  return 0;
}

uint64_t sub_1000CB8E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadphoneAssets(0);
  v25 = *(v4 - 1);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xFE) == 2)
  {
    URL.init(fileURLWithPath:)();
    v13 = *(v9 + 16);
    v13(v7, v12, v8);
    v13(&v7[v4[5]], v12, v8);
    (*(v9 + 56))(&v7[v4[6]], 1, 1, v8);
    v14 = v4[7];
    v15 = type metadata accessor for HeadphoneAssets.Feature(0);
    (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
    v16 = v4[8];
    *&v7[v16] = _swiftEmptyArrayStorage;
    *&v7[v4[9]] = 0;
    v17 = &v7[v4[10]];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = [objc_opt_self() configurationWithPointSize:88.0];
    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() systemImageNamed:v19 withConfiguration:v18];

    if (v20)
    {
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000D78E0;
      *(v21 + 32) = v20;

      (*(v9 + 8))(v12, v8);
      *&v7[v16] = v21;
    }

    else
    {
      (*(v9 + 8))(v12, v8);
    }

    sub_1000CE178(v7, a2, type metadata accessor for HeadphoneAssets);
    (*(v25 + 56))(a2, 0, 1, v4);
    return sub_1000CE1E0(v7, type metadata accessor for HeadphoneAssets);
  }

  else
  {
    v22 = *(v25 + 56);

    return v22(a2, 1, 1, v4);
  }
}

uint64_t sub_1000CBCA4()
{
  v0 = type metadata accessor for HeadphoneViewModel(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_1001231C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "HeadphonePresenter: handleMultipleDevicesDetected", v12, 2u);
  }

  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v13)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v15 = result + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
      Strong = swift_unknownObjectWeakLoadStrong();
      v17 = *(v15 + 8);
      result = swift_unknownObjectRelease();
      if (Strong)
      {
        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 32))(ObjectType, v17);
        sub_1000BB69C(v19, v3);
        v3[*(v0 + 96)] = 1;
        (*(v17 + 48))(v3, ObjectType, v17);
        swift_unknownObjectRelease();
        return sub_1000CE1E0(v3, type metadata accessor for HeadphoneViewModel);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000CBF9C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000CC078(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id sub_1000CC0C4(id result)
{
  if (result != 16)
  {
    return sub_1000CC0D4(result);
  }

  return result;
}

id sub_1000CC0D4(id result)
{
  if (result >= 0x10)
  {
    return result;
  }

  return result;
}

void sub_1000CC0E4(id a1)
{
  if (a1 != 16)
  {
    sub_1000CC0F4(a1);
  }
}

void sub_1000CC0F4(id a1)
{
  if (a1 >= 0x10)
  {
  }
}

char *sub_1000CC104(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&qword_10011FFB8, &unk_1000DA4B8);
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

char *sub_1000CC210(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&unk_10011FFA8, &unk_1000DA4A8);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CC31C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100008438(&qword_100120038, &qword_1000DA500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&unk_100120020, &qword_1000D7C38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CC450(void *result, int64_t a2, char a3, void *a4)
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
    sub_100008438(&unk_100120070, &qword_1000DA530);
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
    sub_100008438(&qword_10011FC60, qword_1000D9EC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CC584(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&unk_10011DC30, &unk_1000D7D30);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CC694(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&qword_10011F960, &qword_1000D9898);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

size_t sub_1000CC7D4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  sub_100008438(a5, a6);
  v16 = *(sub_100008438(a7, a8) - 8);
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
  v21 = *(sub_100008438(a7, a8) - 8);
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

void *sub_1000CC9E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100008438(&unk_1001200E0, &unk_1000DA578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&qword_10011CB58, &qword_1000D85C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CCB2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&qword_1001200D8, &qword_1000DA570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_1000CCC48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&unk_100120050, &qword_1000D9A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_1000CCD74(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100008438(a5, a6);
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

char *sub_1000CCF50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&unk_1001200B8, &qword_1000DA558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CD070(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1000CD0E4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1000CD118(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000CD2D0(a1, a2, v6);
}

unint64_t sub_1000CD190(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_1000CD388(a1, v4);
}

unint64_t sub_1000CD1FC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000CD3F8(a1, v4);
}

unint64_t sub_1000CD240(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000CD4C0(a1, v4);
}

unint64_t sub_1000CD2D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000CD388(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000CD3F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000CE6A0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100047824(v8);
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

unint64_t sub_1000CD4C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

void *sub_1000CD5C4(void *a1, int64_t a2, char a3)
{
  result = sub_1000CD684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CD5E4(char *a1, int64_t a2, char a3)
{
  result = sub_1000CD7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000CD604(size_t a1, int64_t a2, char a3)
{
  result = sub_1000CD8BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CD624(char *a1, int64_t a2, char a3)
{
  result = sub_1000CDAAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000CD644(size_t a1, int64_t a2, char a3)
{
  result = sub_1000CDBB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CD664(void *a1, int64_t a2, char a3)
{
  result = sub_1000CDD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CD684(void *result, int64_t a2, char a3, void *a4)
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
    sub_100008438(&qword_100120030, &qword_1000DA4F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&unk_10011D078, &qword_1000DA4F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CD7B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&unk_100120050, &qword_1000D9A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_1000CD8BC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100008438(&qword_1001200C8, &unk_1000DA560);
  v10 = *(sub_100008438(&qword_1001200D0, qword_1000D60C8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100008438(&qword_1001200D0, qword_1000D60C8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000CDAAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&qword_10011FFB8, &unk_1000DA4B8);
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

size_t sub_1000CDBB8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100008438(&qword_1001200B0, &qword_1000DA550);
  v10 = *(type metadata accessor for HeadphoneBatteryInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HeadphoneBatteryInfo(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000CDD90(void *result, int64_t a2, char a3, void *a4)
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
    sub_100008438(&qword_100120108, &qword_1000DA588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&qword_100120110, &unk_1000DA590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CDED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&unk_1001200B8, &qword_1000DA558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000CDFF8()
{
  result = qword_10011FF90;
  if (!qword_10011FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF90);
  }

  return result;
}

uint64_t sub_1000CE04C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    v5 = a3;
  }

  return result;
}

void sub_1000CE094(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_1000261AC(a1, a2, a3, a4);
  }
}

unint64_t sub_1000CE0C0()
{
  result = qword_10011FFC0;
  if (!qword_10011FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FFC0);
  }

  return result;
}

uint64_t sub_1000CE114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CE1E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CE240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CE2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CE370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000CE398()
{
  v0 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18[-v2];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v11 = result;
      URL._bridgeToObjectiveC()(v10);
      v13 = v12;
      sub_100008438(&unk_100120060, &unk_1000DA520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D66A0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v15;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v16;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_1000A3634(inited);
      swift_setDeallocating();
      sub_100008438(&qword_10011FA28, &qword_1000D9958);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v11 openSensitiveURL:v13 withOptions:isa];

      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

id sub_1000CE65C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_10001C2A0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000CE680(char a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1000B9A58(a1, *(v1 + 16));
}

uint64_t sub_1000CE704()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CE74C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000CE850()
{
  result = qword_100120118;
  if (!qword_100120118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120118);
  }

  return result;
}

uint64_t sub_1000CE91C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

BOOL sub_1000CE998()
{
  v1 = [v0 sourceSettings];
  v2 = [v1 notificationSettings];

  v3 = [v2 timeSensitiveSetting];
  if (v3)
  {
    return 1;
  }

  v5 = [v0 sourceSettings];
  v6 = [v5 notificationSettings];

  v7 = [v6 directMessagesSetting];
  return v7 != 0;
}

BOOL sub_1000CEA70()
{
  v1 = [*v0 sourceSettings];
  v2 = [v1 notificationSettings];

  v3 = [v2 announcementSetting];
  return v3 == 2 || sub_1000CE998();
}

BOOL sub_1000CEB00()
{
  v1 = [*v0 sourceSettings];
  v2 = [v1 notificationSettings];

  v3 = [v2 announcementSetting];
  return v3 == 2;
}

void sub_1000CEB98(char a1)
{
  v2 = v1;
  v4 = [v2 sourceSettings];
  v5 = [v4 notificationSettings];

  [v5 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000084D4(0, &qword_100120128, UNMutableNotificationSettings_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v31 setAnnouncementSetting:v6];
  v7 = &selRef_setTableHeaderView_;
  if (a1)
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_100123040);
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315138;
    v14 = [v9 sourceIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v15;
    v7 = &selRef_setTableHeaderView_;
    v19 = sub_100078978(v18, v17, v32);

    *(v12 + 4) = v19;
    v20 = "Enabling Announce Notification for %s";
  }

  else
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A570(v21, qword_100123040);
    v22 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315138;
    v23 = [v22 sourceIdentifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v24;
    v7 = &selRef_setTableHeaderView_;
    v28 = sub_100078978(v27, v26, v32);

    *(v12 + 4) = v28;
    v20 = "Disabling Announce Notification for %s";
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v20, v12, 0xCu);
  sub_10000EA94(v13);

LABEL_15:

  v29 = [objc_opt_self() currentNotificationSettingsCenter];
  v30 = [v2 v7[99]];
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  [v29 replaceNotificationSettings:v31 forNotificationSourceIdentifier:v30];

LABEL_18:
}

void sub_1000CEF5C(char a1)
{
  v2 = v1;
  v4 = [v2 notificationSystemSettings];
  [v4 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000084D4(0, &qword_100120120, UNMutableNotificationSystemSettings_ptr);
  if (swift_dynamicCast())
  {
    [v12 setShowPreviewsSetting:{objc_msgSend(v4, "showPreviewsSetting")}];
    if (a1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [v12 setAnnouncementSetting:v5];
    [v12 setAnnouncementHeadphonesSetting:v5];
    if (a1)
    {
      if (qword_10011C638 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000A570(v6, qword_100123040);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_15;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Enabling Announce Notifications";
    }

    else
    {
      if (qword_10011C638 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000A570(v11, qword_100123040);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_15;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Disabling Announce Notifications";
    }

    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_15:

    [v2 setNotificationSystemSettings:v12];
  }
}

uint64_t sub_1000CF1E8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 notificationSourceWithIdentifier:v4];

  result = sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
  a1[3] = result;
  a1[4] = &off_100108CB8;
  *a1 = v5;
  return result;
}

void *sub_1000CF268()
{
  v1 = [*v0 allNotificationSources];
  sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
  sub_1000CF304();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10001BDC0(v2);

  v4 = sub_1000B47F0(v3);

  return v4;
}

unint64_t sub_1000CF304()
{
  result = qword_10011FAE8;
  if (!qword_10011FAE8)
  {
    sub_1000084D4(255, &qword_100120100, UNNotificationSource_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FAE8);
  }

  return result;
}

void sub_1000CF6F8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled TUConfigurationAnnounceCalls state %d, assume Never", v2, 8u);
}

void sub_1000CF770(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled SFAnnounceCallsState state %d, assume Never", v2, 8u);
}

void sub_1000CF95C(void *a1)
{
  v2 = [a1 assetStatus];
  if (v2 <= 3)
  {
    v3 = off_1001028C8[v2];
  }

  v7 = [a1 displayName];
  [a1 isSuggested];
  v4 = [a1 locale];
  v5 = [a1 locale];
  v6 = [v5 localeIdentifier];
  LogPrintF();
}

void sub_1000CFA90(void *a1)
{
  v2 = [a1 assetStatus];
  if (v2 <= 3)
  {
    v3 = off_1001028C8[v2];
  }

  v5 = [a1 displayName];
  [a1 isSuggested];
  v4 = [a1 locale];
  LogPrintF();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}