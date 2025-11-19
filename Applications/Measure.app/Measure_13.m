uint64_t sub_1001102CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = sub_10000F974(&qword_1004A9BF0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v33 - v11;
  v13 = 5000.0;
  if (a3 <= 5000.0)
  {
    v13 = a3;
  }

  if (a3 < 0.0)
  {
    v13 = 0.0;
  }

  if (a1 == 1)
  {
    v14 = v35;
    v15 = &v36;
    sub_10010DE20(1, 0, 0, v35, v13);
    v16 = &v37;
LABEL_20:
    v27 = *v14;
    v28 = v14[1];
    v29 = *(v14 + 8);
    v30 = *(v14 + 36);
    v31 = *(v14 + 37);
    *v16 = *v15;
    result = sub_10011353C(v16);
    *a2 = v27;
    *(a2 + 8) = v28;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v29;
    *(a2 + 36) = v30;
    *(a2 + 37) = v31;
    return result;
  }

  if (!a1)
  {
    v17 = objc_opt_self();
    v18 = [v17 meters];
    sub_100018630(0, &qword_1004A9BF8);
    Measurement.init(value:unit:)();
    v19 = [v17 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v21 = v20;
    v22 = *(v7 + 8);
    v22(v10, v6);
    v22(v12, v6);
    v23 = v21;
    v24 = roundf(v23 + v23) * 0.5;
    if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v24 > -9.2234e18)
    {
      if (v24 < 9.2234e18)
      {
        v15 = &v34;
        v25 = v24;
        if (v24 >= 0xA)
        {
          if ((v24 - 10) >= 0x1A)
          {
            if (v25 >= 36)
            {
              v26 = 30.455;
              if (v25 < 0x78)
              {
                v26 = 1.17;
              }
            }

            else
            {
              v26 = 30.455;
            }
          }

          else
          {
            v26 = 0.85;
          }
        }

        else
        {
          v26 = 0.089;
        }

        v14 = v33;
        sub_10010DE20(0, 0, 0, v33, v26);
        v16 = v35;
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10011062C(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000F974(&qword_1004A9BF0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v148 - v11;
  v13 = objc_opt_self();
  v14 = [v13 meters];
  sub_100018630(0, &qword_1004A9BF8);
  Measurement.init(value:unit:)();
  v15 = [v13 inches];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v10, v6);
  v18(v12, v6);
  v19 = v17;
  v20 = roundf(v19 + v19) * 0.5;
  if (COERCE_INT(fabs(v20)) > 2139095039)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v20 <= -9.2234e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v20 >= 9.2234e18)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
    goto LABEL_8;
  }

  v10 = v20;
  v157 = a3;
  if (v20)
  {
    sub_10000F974(&unk_1004AF710);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1003D5360;
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v10;
    *&v155 = String.init(format:_:)();
    *&v156 = v22;
  }

  else
  {
    *&v155 = 0;
    *&v156 = 0xE000000000000000;
  }

  LOBYTE(a3) = a2;
  if (qword_1004A02F0 != -1)
  {
    goto LABEL_55;
  }

LABEL_8:
  v23 = qword_1004D4EB8;
  v24 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v10];
  v25 = [v23 stringFromNumber:v24];

  if (!v25)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v19 >= 0.0 && v19 < 12.0)
  {
    if ((v20 - v10) > 0.00000011921)
    {
      v31 = v157;
      if (v10)
      {
        v32 = objc_opt_self();
        v33 = [v32 mainBundle];
        v158._object = 0x8000000100405270;
        v34._countAndFlagsBits = 0x9D80E2BDC24025;
        v34._object = 0xA700000000000000;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v158._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v158);

        sub_10000F974(&unk_1004AF710);
        v36 = swift_allocObject();
        v154 = xmmword_1003D5360;
        *(v36 + 16) = xmmword_1003D5360;
        *(v36 + 56) = &type metadata for String;
        *(v36 + 64) = sub_1000192D0();
        *(v36 + 32) = v26;
        *(v36 + 40) = v28;
        v37 = String.init(format:_:)();
        v39 = v38;

        v40 = [v32 mainBundle];
        v41._countAndFlagsBits = 0xD000000000000014;
        v159._object = 0xE000000000000000;
        v41._object = 0x80000001004075A0;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        v159._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v159);

        v43 = swift_allocObject();
        *(v43 + 16) = v154;
        *(v43 + 56) = &type metadata for Int;
        *(v43 + 64) = &protocol witness table for Int;
        *(v43 + 32) = v10;
        countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
        object = v45;

        v47 = String._bridgeToObjectiveC()();

        [v47 floatValue];
        v49 = v48;

        v50 = v49 + 0.5;
      }

      else
      {

        v120 = objc_opt_self();
        v121 = [v120 mainBundle];
        v166._object = 0x8000000100405270;
        v122._countAndFlagsBits = 0x9D80E2BDC24025;
        v122._object = 0xA700000000000000;
        v123._countAndFlagsBits = 0;
        v123._object = 0xE000000000000000;
        v166._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v122, 0, v121, v123, v166);

        sub_10000F974(&unk_1004AF710);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_1003D5360;
        *(v124 + 56) = &type metadata for String;
        *(v124 + 64) = sub_1000192D0();
        *(v124 + 32) = 0;
        *(v124 + 40) = 0xE000000000000000;
        v37 = String.init(format:_:)();
        v39 = v125;

        v126 = [v120 mainBundle];
        v167._object = 0xE000000000000000;
        v127._countAndFlagsBits = 0x206E6120666C6148;
        v127._object = 0xEC00000068636E69;
        v128._countAndFlagsBits = 0;
        v128._object = 0xE000000000000000;
        v167._countAndFlagsBits = 0;
        v129 = NSLocalizedString(_:tableName:bundle:value:comment:)(v127, 0, v126, v128, v167);
        countAndFlagsBits = v129._countAndFlagsBits;
        object = v129._object;

        v50 = 0.5;
      }

      goto LABEL_45;
    }

    if (!v10)
    {

      v130 = objc_opt_self();
      v131 = [v130 mainBundle];
      v146 = 0x8000000100405270;
      if (a3)
      {
        v132._countAndFlagsBits = 2642469424;
        v132._object = 0xA400000000000000;
        v133._countAndFlagsBits = 0;
        v133._object = 0xE000000000000000;
        v134 = 0xD00000000000009DLL;
        v135 = NSLocalizedString(_:tableName:bundle:value:comment:)(v132, 0, v131, v133, *(&v146 - 1));
        v37 = v135._countAndFlagsBits;
        v39 = v135._object;

        v136 = [v130 mainBundle];
        v147 = 0xE000000000000000;
        v137 = 0x636E69206F72655ALL;
        v138 = 0xEB00000000736568;
      }

      else
      {
        v139._countAndFlagsBits = 0x9D80E2BDC2203CLL;
        v139._object = 0xA700000000000000;
        v140._countAndFlagsBits = 0;
        v140._object = 0xE000000000000000;
        v141 = 0xD00000000000009DLL;
        v142 = NSLocalizedString(_:tableName:bundle:value:comment:)(v139, 0, v131, v140, *(&v146 - 1));
        v37 = v142._countAndFlagsBits;
        v39 = v142._object;

        v136 = [v130 mainBundle];
        v137 = 0xD000000000000016;
        v147 = 0xE000000000000000;
        v138 = 0x8000000100407580;
      }

      v143._countAndFlagsBits = 0;
      v143._object = 0xE000000000000000;
      v144 = 0;
      v145 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v137, 0, v136, v143, *(&v147 - 1));
      countAndFlagsBits = v145._countAndFlagsBits;
      object = v145._object;

      v50 = 0.0;
      goto LABEL_44;
    }

LABEL_43:
    v94 = objc_opt_self();
    v95 = [v94 mainBundle];
    v162._object = 0x8000000100405270;
    v96._countAndFlagsBits = 0x9D80E24025;
    v96._object = 0xA500000000000000;
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    v162._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v95, v97, v162);

    sub_10000F974(&unk_1004AF710);
    v98 = swift_allocObject();
    v154 = xmmword_1003D5360;
    *(v98 + 16) = xmmword_1003D5360;
    *(v98 + 56) = &type metadata for String;
    *(v98 + 64) = sub_1000192D0();
    *(v98 + 32) = v26;
    *(v98 + 40) = v28;
    v37 = String.init(format:_:)();
    v39 = v99;

    v100 = [v94 mainBundle];
    v163._object = 0xE000000000000000;
    v101._countAndFlagsBits = 0x6568636E69204025;
    v101._object = 0xE900000000000073;
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    v163._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v163);

    v103 = swift_allocObject();
    *(v103 + 16) = v154;
    *(v103 + 56) = &type metadata for Int;
    *(v103 + 64) = &protocol witness table for Int;
    *(v103 + 32) = v10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v104;

    v105 = String._bridgeToObjectiveC()();

    [v105 floatValue];
    v50 = v106;

LABEL_44:
    v31 = v157;
    goto LABEL_45;
  }

  if (v19 < 12.0 || v19 >= 36.0)
  {
    goto LABEL_43;
  }

  v31 = v157;
  if ((a1 & 1) == 0)
  {
    v107 = objc_opt_self();
    v108 = [v107 mainBundle];
    v164._object = 0x8000000100405270;
    v109._countAndFlagsBits = 0x9D80E24025;
    v109._object = 0xA500000000000000;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v164._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v109, 0, v108, v110, v164);

    sub_10000F974(&unk_1004AF710);
    v111 = swift_allocObject();
    v154 = xmmword_1003D5360;
    *(v111 + 16) = xmmword_1003D5360;
    *(v111 + 56) = &type metadata for String;
    *(v111 + 64) = sub_1000192D0();
    *(v111 + 32) = v26;
    *(v111 + 40) = v28;
    v37 = String.init(format:_:)();
    v39 = v112;

    v113 = [v107 mainBundle];
    v165._object = 0xE000000000000000;
    v114._countAndFlagsBits = 0x6568636E69204025;
    v114._object = 0xE900000000000073;
    v115._countAndFlagsBits = 0;
    v115._object = 0xE000000000000000;
    v165._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v114, 0, v113, v115, v165);

    v116 = swift_allocObject();
    *(v116 + 16) = v154;
    *(v116 + 56) = &type metadata for Int;
    *(v116 + 64) = &protocol witness table for Int;
    *(v116 + 32) = v10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v117;

    v118 = String._bridgeToObjectiveC()();

    [v118 floatValue];
    v50 = v119;

    goto LABEL_45;
  }

  v51 = v19 / 12.0;
  if (COERCE_INT(fabs(v19 / 12.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v51 <= -9.2234e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v51 >= 9.2234e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v52 = 12 * v51;
  if ((v51 * 12) >> 64 != v52 >> 63)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v53 = roundf(v19 - v52);
  if (v53 == 12.0)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v53;
  }

  if (v53 == 12.0)
  {
    v55 = v51 + 1;
  }

  else
  {
    v55 = v51;
  }

  sub_10000F974(&unk_1004AF710);
  v56 = swift_allocObject();
  v155 = xmmword_1003D5360;
  *(v56 + 16) = xmmword_1003D5360;
  *(v56 + 56) = &type metadata for Int;
  *(v56 + 64) = &protocol witness table for Int;
  *(v56 + 32) = v55;
  v153 = String.init(format:_:)();
  *&v154 = v57;
  v58 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v55];
  v59 = [v23 stringFromNumber:v58];

  if (!v59)
  {
    goto LABEL_64;
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v152 = v61;

  v62 = swift_allocObject();
  *(v62 + 16) = v155;
  if ((LODWORD(v53) & 0x7FFFFFFFu) >= 0x7F800000 && v53 != 12.0)
  {
    goto LABEL_60;
  }

  if (v54 <= -9.2234e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v54 >= 9.2234e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *&v155 = v55;
  *(v62 + 56) = &type metadata for Int;
  *(v62 + 64) = &protocol witness table for Int;
  v148 = v60;
  v149 = v54;
  *(v62 + 32) = v54;
  v150 = String.init(format:_:)();
  v151 = v64;
  v65 = objc_allocWithZone(NSDecimalNumber);
  *&v66 = v54;
  v67 = [v65 initWithFloat:v66];
  v68 = [v23 stringFromNumber:v67];

  if (v68)
  {

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = objc_opt_self();
    v73 = [v72 mainBundle];
    v74.value._countAndFlagsBits = 0xD000000000000014;
    v160._object = 0x8000000100405270;
    v75._countAndFlagsBits = 0x20B280E240243125;
    v75._object = 0xAFB380E240243225;
    v74.value._object = 0x8000000100407540;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v160._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v74, v73, v76, v160);

    v77 = swift_allocObject();
    v156 = xmmword_1003D5730;
    *(v77 + 16) = xmmword_1003D5730;
    *(v77 + 56) = &type metadata for String;
    v78 = sub_1000192D0();
    v79 = v152;
    *(v77 + 32) = v148;
    *(v77 + 40) = v79;
    *(v77 + 96) = &type metadata for String;
    *(v77 + 104) = v78;
    *(v77 + 64) = v78;
    *(v77 + 72) = v69;
    *(v77 + 80) = v71;
    v37 = String.init(format:_:)();
    v39 = v80;

    v81 = [v72 mainBundle];
    v82._countAndFlagsBits = 0xD000000000000011;
    v161._object = 0xE000000000000000;
    v82._object = 0x8000000100407560;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v161._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v81, v83, v161);

    v84 = swift_allocObject();
    *(v84 + 16) = v156;
    *(v84 + 56) = &type metadata for Int;
    *(v84 + 32) = v155;
    *(v84 + 96) = &type metadata for Int;
    *(v84 + 104) = &protocol witness table for Int;
    v85 = v149;
    *(v84 + 64) = &protocol witness table for Int;
    *(v84 + 72) = v85;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v86;

    v87 = String._bridgeToObjectiveC()();

    [v87 floatValue];
    v89 = v88;

    v90 = v89 * 12.0;
    v91 = String._bridgeToObjectiveC()();

    [v91 floatValue];
    v93 = v92;

    v50 = v90 + v93;
LABEL_45:
    *v31 = v37;
    *(v31 + 8) = v39;
    *(v31 + 16) = countAndFlagsBits;
    *(v31 + 24) = object;
    *(v31 + 32) = v50;
    *(v31 + 36) = 1024;
    return;
  }

LABEL_65:
  __break(1u);
}

void sub_1001117E8(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000F974(&qword_1004A9BF0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v64 - v9;
  v11 = objc_opt_self();
  v12 = [v11 meters];
  sub_100018630(0, &qword_1004A9BF8);
  Measurement.init(value:unit:)();
  v13 = [v11 centimeters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  v17 = v15;
  v18 = roundf(v17);
  if (v18 == 0.0)
  {
    v19 = objc_opt_self();
    v20 = [v19 mainBundle];
    v63 = 0x8000000100405270;
    if (a1)
    {
      v21._countAndFlagsBits = 1835212848;
      v21._object = 0xE400000000000000;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v23 = 0xD00000000000009DLL;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, *(&v63 - 1));
      countAndFlagsBits = v24._countAndFlagsBits;
      object = v24._object;

      v27 = "Less than one centimeter";
      v28 = [v19 mainBundle];
      v29 = 0xD000000000000010;
    }

    else
    {
      v56._countAndFlagsBits = 0x6D632031203CLL;
      v56._object = 0xE600000000000000;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      v58 = 0xD00000000000009DLL;
      v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v20, v57, *(&v63 - 1));
      countAndFlagsBits = v59._countAndFlagsBits;
      object = v59._object;

      v27 = "%@ and a half inches";
      v28 = [v19 mainBundle];
      v29 = 0xD000000000000018;
    }

    v69._object = 0xE000000000000000;
    v60 = v27 | 0x8000000000000000;
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0;
    v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v29, 0, v28, v61, v69);
    v50 = v62._countAndFlagsBits;
    v52 = v62._object;

    v55 = 0;
    goto LABEL_13;
  }

  sub_10000F974(&unk_1004AF710);
  v30 = swift_allocObject();
  v66 = xmmword_1003D5360;
  *(v30 + 16) = xmmword_1003D5360;
  *(v30 + 56) = &type metadata for Float;
  *(v30 + 64) = &protocol witness table for Float;
  *(v30 + 32) = v17;
  v64 = String.init(format:_:)();
  v65 = v31;
  if (qword_1004A0300 != -1)
  {
    swift_once();
  }

  v32 = qword_1004D4EC8;
  v33 = objc_allocWithZone(NSDecimalNumber);
  *&v34 = v17;
  v35 = [v33 initWithFloat:{v34, v64, v65}];
  v36 = [v32 stringFromNumber:v35];

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = objc_opt_self();
    v41 = [v40 mainBundle];
    v67._object = 0x8000000100405270;
    v42._countAndFlagsBits = 0x6D63204025;
    v42._object = 0xE500000000000000;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v67._countAndFlagsBits = 0xD00000000000009DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v67);

    v44 = swift_allocObject();
    *(v44 + 16) = v66;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_1000192D0();
    *(v44 + 32) = v37;
    *(v44 + 40) = v39;
    countAndFlagsBits = String.init(format:_:)();
    object = v45;

    v46 = [v40 mainBundle];
    v68._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0x69746E6563204025;
    v47._object = 0xEE0073726574656DLL;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v68._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v68);

    v49 = swift_allocObject();
    *(v49 + 16) = v66;
    if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v18 > -9.2234e18)
    {
      if (v18 < 9.2234e18)
      {
        *(v49 + 56) = &type metadata for Int;
        *(v49 + 64) = &protocol witness table for Int;
        *(v49 + 32) = v18;
        v50 = static String.localizedStringWithFormat(_:_:)();
        v52 = v51;

        v53 = String._bridgeToObjectiveC()();

        [v53 floatValue];
        v55 = v54;

LABEL_13:
        *a2 = countAndFlagsBits;
        *(a2 + 8) = object;
        *(a2 + 16) = v50;
        *(a2 + 24) = v52;
        *(a2 + 32) = v55;
        *(a2 + 36) = 1024;
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
}

float sub_100111E38(char a1, char a2)
{
  v4 = sub_10000F974(&qword_1004A9BF0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = [objc_opt_self() *off_10046E458[a1]];
  sub_100018630(0, &qword_1004A9BF8);
  Measurement.init(value:unit:)();
  v12 = [objc_opt_self() *off_10046E458[a2]];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14;
}

uint64_t sub_100112000@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>, float a6@<S0>)
{
  *&v10 = a6;
  v12 = sub_10000F974(&qword_1004A9C00);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v180[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v180[-v17];
  v183 = a5;
  if (a1 == 1)
  {
    if (a4)
    {
      if (qword_1004A02F8 == -1)
      {
LABEL_4:
        v19 = qword_1004D4EC0;
        v20 = objc_allocWithZone(NSNumber);
        LODWORD(v21) = LODWORD(v10);
        v22 = [v20 initWithFloat:v21];
        v23 = [v19 stringFromNumber:v22];

        if (v23)
        {
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = objc_opt_self();
          v28 = [v27 mainBundle];
          v184._object = 0x8000000100405270;
          v29._countAndFlagsBits = 0xB2C26D204025;
          v29._object = 0xA600000000000000;
          v30._countAndFlagsBits = 0;
          v30._object = 0xE000000000000000;
          v184._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v184);

          sub_10000F974(&unk_1004AF710);
          v31 = swift_allocObject();
          v182 = xmmword_1003D5360;
          *(v31 + 16) = xmmword_1003D5360;
          *(v31 + 56) = &type metadata for String;
          *(v31 + 64) = sub_1000192D0();
          *(v31 + 32) = v24;
          *(v31 + 40) = v26;
          v32 = String.init(format:_:)();
          v34 = v33;

          v35 = "%@ inches (precise)";
          v36 = [v27 mainBundle];
          v37 = 0xD00000000000001ALL;
LABEL_27:
          v179 = 0xE000000000000000;
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_55:
      swift_once();
      goto LABEL_4;
    }

    if ((*&v10 >= 0.1) | a2 & 1 && *&v10 >= 0.01 && (a3 & 1) == 0)
    {
      if (qword_1004A02F8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_57;
    }

    v10 = *&v10;
    v103 = objc_opt_self();
    v104 = [v103 squareMeters];
    sub_100018630(0, &qword_1004A9C08);
    Measurement.init(value:unit:)();
    v105 = [v103 squareCentimeters];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v107 = v106;
    v108 = *(v13 + 8);
    v108(v16, v12);
    v108(v18, v12);
    v109 = v107;
    v110 = roundf(v109);
    if ((LODWORD(v110) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_19:
      v64 = qword_1004D4EC0;
      v65 = objc_allocWithZone(NSNumber);
      LODWORD(v66) = LODWORD(v10);
      v67 = [v65 initWithFloat:v66];
      v68 = [v64 stringFromNumber:v67];

      if (v68)
      {
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = objc_opt_self();
        v73 = [v72 mainBundle];
        v74.value._countAndFlagsBits = 0xD000000000000014;
        v186._object = 0x8000000100405270;
        v75._countAndFlagsBits = 0xB2C26D204025;
        v74.value._object = 0x8000000100407540;
        v75._object = 0xA600000000000000;
        v76._countAndFlagsBits = 0;
        v76._object = 0xE000000000000000;
        v186._countAndFlagsBits = 0xD00000000000009DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v74, v73, v76, v186);

        sub_10000F974(&unk_1004AF710);
        v77 = swift_allocObject();
        v182 = xmmword_1003D5360;
        *(v77 + 16) = xmmword_1003D5360;
        *(v77 + 56) = &type metadata for String;
        *(v77 + 64) = sub_1000192D0();
        *(v77 + 32) = v69;
        *(v77 + 40) = v71;
        v32 = String.init(format:_:)();
        v34 = v78;

        v35 = "%@ inches (precise)";
        v36 = [v72 mainBundle];
        v37 = 0xD00000000000001ALL;
        v179 = 0xE000000000000000;
LABEL_28:
        v94 = v35 | 0x8000000000000000;
        v95._countAndFlagsBits = 0;
        v95._object = 0xE000000000000000;
        v96 = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v37, 0, v36, v95, *(&v179 - 1));

        v97 = swift_allocObject();
        *(v97 + 16) = v182;
        *(v97 + 56) = &type metadata for Float;
        *(v97 + 64) = &protocol witness table for Float;
        *(v97 + 32) = LODWORD(v10);
        v98 = static String.localizedStringWithFormat(_:_:)();
        v100 = v99;

LABEL_29:

        v102 = v183;
        *v183 = v32;
        v102[1] = v34;
        v102[2] = v98;
        v102[3] = v100;
        *(v102 + 8) = 0;
        *(v102 + 18) = 1025;
        return result;
      }

      goto LABEL_63;
    }

    if (v110 <= -9.2234e18)
    {
      __break(1u);
    }

    else if (v110 < 9.2234e18)
    {
      v111 = v110;
      if (!v110)
      {
        v145 = [v103 squareMeters];
        Measurement.init(value:unit:)();
        v146 = [v103 squareCentimeters];
        Measurement<>.converted(to:)();

        Measurement.value.getter();
        v10 = v147;
        v108(v16, v12);
        v108(v18, v12);
        *&v10 = v10;
        if (qword_1004A02F8 != -1)
        {
          swift_once();
        }

        v148 = qword_1004D4EC0;
        v149 = objc_allocWithZone(NSNumber);
        LODWORD(v150) = LODWORD(v10);
        v151 = [v149 initWithFloat:v150];
        v152 = [v148 stringFromNumber:v151];

        if (v152)
        {
          v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v155 = v154;

          v156 = objc_opt_self();
          v157 = [v156 mainBundle];
          v192._object = 0x8000000100405270;
          v158._countAndFlagsBits = 0xB2C26D63204025;
          v158._object = 0xA700000000000000;
          v159._countAndFlagsBits = 0;
          v159._object = 0xE000000000000000;
          v192._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v158, 0, v157, v159, v192);

          sub_10000F974(&unk_1004AF710);
          v160 = swift_allocObject();
          v182 = xmmword_1003D5360;
          *(v160 + 16) = xmmword_1003D5360;
          *(v160 + 56) = &type metadata for String;
          *(v160 + 64) = sub_1000192D0();
          *(v160 + 32) = v153;
          *(v160 + 40) = v155;
          v32 = String.init(format:_:)();
          v34 = v161;

          v35 = "%@ square meters (precise)";
          v36 = [v156 mainBundle];
          v37 = 0xD000000000000015;
          goto LABEL_27;
        }

        goto LABEL_67;
      }

      if (qword_1004A02F0 != -1)
      {
        swift_once();
      }

      v112 = qword_1004D4EB8;
      v113 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v111];
      v114 = [v112 stringFromNumber:v113];

      if (!v114)
      {
        goto LABEL_65;
      }

      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v116;

      v118 = objc_opt_self();
      v119 = [v118 mainBundle];
      v188._object = 0x8000000100405270;
      v120._countAndFlagsBits = 0xB2C26D63204025;
      v120._object = 0xA700000000000000;
      v121._countAndFlagsBits = 0;
      v121._object = 0xE000000000000000;
      v188._countAndFlagsBits = 0xD00000000000009DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v120, 0, v119, v121, v188);

      sub_10000F974(&unk_1004AF710);
      v122 = swift_allocObject();
      v182 = xmmword_1003D5360;
      *(v122 + 16) = xmmword_1003D5360;
      *(v122 + 56) = &type metadata for String;
      *(v122 + 64) = sub_1000192D0();
      *(v122 + 32) = v115;
      *(v122 + 40) = v117;
      v32 = String.init(format:_:)();
      v34 = v123;

      v124 = [v118 mainBundle];
      v125._countAndFlagsBits = 0xD000000000000015;
      v189._object = 0xE000000000000000;
      v125._object = 0x80000001004076A0;
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      v189._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v125, 0, v124, v126, v189);

      v127 = swift_allocObject();
      *(v127 + 16) = v182;
      *(v127 + 56) = &type metadata for Int;
      *(v127 + 64) = &protocol witness table for Int;
      *(v127 + 32) = v111;
LABEL_43:
      v98 = static String.localizedStringWithFormat(_:_:)();
      v100 = v144;

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_60;
  }

  v181 = a3;
  LODWORD(v182) = a4;
  if (!a1)
  {
    v38 = objc_opt_self();
    v39 = [v38 squareMeters];
    sub_100018630(0, &qword_1004A9C08);
    Measurement.init(value:unit:)();
    v40 = [v38 squareFeet];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v10 = v41;
    v42 = *(v13 + 8);
    v42(v16, v12);
    v42(v18, v12);
    *&v10 = v10;
    v43 = [v38 squareFeet];
    Measurement.init(value:unit:)();
    v44 = [v38 squareInches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v46 = v45;
    v42(v16, v12);
    v42(v18, v12);
    v47 = v46;
    v48 = roundf(v47);
    if ((LODWORD(v48) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v48 > -9.2234e18)
    {
      if (v48 < 9.2234e18)
      {
        if (v182)
        {
          if (qword_1004A02F8 != -1)
          {
            swift_once();
          }

          v49 = qword_1004D4EC0;
          v50 = objc_allocWithZone(NSNumber);
          LODWORD(v51) = roundf(*&v10);
          v52 = [v50 initWithFloat:v51];
          v53 = [v49 stringFromNumber:v52];

          if (!v53)
          {
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v57 = objc_opt_self();
          v58 = [v57 mainBundle];
          v185._object = 0x8000000100405270;
          v59._countAndFlagsBits = 0xB2C27466204025;
          v59._object = 0xA700000000000000;
          v60._countAndFlagsBits = 0;
          v60._object = 0xE000000000000000;
          v185._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v185);

          sub_10000F974(&unk_1004AF710);
          v61 = swift_allocObject();
          v182 = xmmword_1003D5360;
          *(v61 + 16) = xmmword_1003D5360;
          *(v61 + 56) = &type metadata for String;
          *(v61 + 64) = sub_1000192D0();
          *(v61 + 32) = v54;
          *(v61 + 40) = v56;
          v32 = String.init(format:_:)();
          v34 = v62;

          v35 = "%@ square centimeters";
          v63 = [v57 mainBundle];
LABEL_26:
          v36 = v63;
          v37 = 0xD000000000000018;
          goto LABEL_27;
        }

        v79 = v48;
        if (v48 < 36 || (v181 & 1) != 0)
        {
          if (!v79)
          {
            v162 = [v38 squareFeet];
            Measurement.init(value:unit:)();
            v163 = [v38 squareInches];
            Measurement<>.converted(to:)();

            Measurement.value.getter();
            v10 = v164;
            v42(v16, v12);
            v42(v18, v12);
            *&v10 = v10;
            if (qword_1004A02F8 != -1)
            {
              swift_once();
            }

            v165 = qword_1004D4EC0;
            v166 = objc_allocWithZone(NSNumber);
            LODWORD(v167) = LODWORD(v10);
            v168 = [v166 initWithFloat:v167];
            v169 = [v165 stringFromNumber:v168];

            if (v169)
            {
              v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v172 = v171;

              v173 = objc_opt_self();
              v174 = [v173 mainBundle];
              v193._object = 0x8000000100405270;
              v175._countAndFlagsBits = 0x6E69207173204025;
              v175._object = 0xE800000000000000;
              v176._countAndFlagsBits = 0;
              v176._object = 0xE000000000000000;
              v193._countAndFlagsBits = 0xD00000000000009DLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v175, 0, v174, v176, v193);

              sub_10000F974(&unk_1004AF710);
              v177 = swift_allocObject();
              v182 = xmmword_1003D5360;
              *(v177 + 16) = xmmword_1003D5360;
              *(v177 + 56) = &type metadata for String;
              *(v177 + 64) = sub_1000192D0();
              *(v177 + 32) = v170;
              *(v177 + 40) = v172;
              v32 = String.init(format:_:)();
              v34 = v178;

              v35 = "%@ square feet (precise)";
              v36 = [v173 mainBundle];
              v37 = 0xD000000000000010;
              goto LABEL_27;
            }

            goto LABEL_68;
          }

          if (qword_1004A02F0 != -1)
          {
            swift_once();
          }

          v128 = qword_1004D4EB8;
          v129 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v79];
          v130 = [v128 stringFromNumber:v129];

          if (!v130)
          {
            goto LABEL_66;
          }

          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v133 = v132;

          v134 = objc_opt_self();
          v135 = [v134 mainBundle];
          v190._object = 0x8000000100405270;
          v136._countAndFlagsBits = 0x6E69207173204025;
          v136._object = 0xE800000000000000;
          v137._countAndFlagsBits = 0;
          v137._object = 0xE000000000000000;
          v190._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v136, 0, v135, v137, v190);

          sub_10000F974(&unk_1004AF710);
          v138 = swift_allocObject();
          v182 = xmmword_1003D5360;
          *(v138 + 16) = xmmword_1003D5360;
          *(v138 + 56) = &type metadata for String;
          *(v138 + 64) = sub_1000192D0();
          *(v138 + 32) = v131;
          *(v138 + 40) = v133;
          v32 = String.init(format:_:)();
          v34 = v139;

          v140 = [v134 mainBundle];
          v141._countAndFlagsBits = 0xD000000000000010;
          v191._object = 0xE000000000000000;
          v141._object = 0x80000001004076E0;
          v142._countAndFlagsBits = 0;
          v142._object = 0xE000000000000000;
          v191._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v141, 0, v140, v142, v191);

          v143 = swift_allocObject();
          *(v143 + 16) = v182;
          *(v143 + 56) = &type metadata for Int;
          *(v143 + 64) = &protocol witness table for Int;
          *(v143 + 32) = v79;
          goto LABEL_43;
        }

        if (qword_1004A02F8 == -1)
        {
LABEL_24:
          v80 = qword_1004D4EC0;
          v81 = objc_allocWithZone(NSNumber);
          LODWORD(v82) = LODWORD(v10);
          v83 = [v81 initWithFloat:v82];
          v84 = [v80 stringFromNumber:v83];

          if (!v84)
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          v88 = objc_opt_self();
          v89 = [v88 mainBundle];
          v187._object = 0x8000000100405270;
          v90._countAndFlagsBits = 0x7466207173204025;
          v90._object = 0xE800000000000000;
          v91._countAndFlagsBits = 0;
          v91._object = 0xE000000000000000;
          v187._countAndFlagsBits = 0xD00000000000009DLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, v89, v91, v187);

          sub_10000F974(&unk_1004AF710);
          v92 = swift_allocObject();
          v182 = xmmword_1003D5360;
          *(v92 + 16) = xmmword_1003D5360;
          *(v92 + 56) = &type metadata for String;
          *(v92 + 64) = sub_1000192D0();
          *(v92 + 32) = v85;
          *(v92 + 40) = v87;
          v32 = String.init(format:_:)();
          v34 = v93;

          v35 = "%@ square centimeters";
          v63 = [v88 mainBundle];
          goto LABEL_26;
        }

LABEL_60:
        swift_once();
        goto LABEL_24;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_69:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10011353C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A72C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

float sub_1001135A4(char a1, char a2)
{
  v4 = sub_10000F974(&qword_1004A9C00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = [objc_opt_self() *off_10046E478[a1]];
  sub_100018630(0, &qword_1004A9C08);
  Measurement.init(value:unit:)();
  v12 = [objc_opt_self() *off_10046E478[a2]];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return v14;
}

__n128 sub_10011376C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100113780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t sub_1001137C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100113820(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A490C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v8;
        v12 = v9;
        do
        {
          v13 = v11[10];
          if (v13 >= v11[2])
          {
            break;
          }

          v14 = *(v11 + 1);
          v15 = *(v11 + 4);
          v16 = *v11;
          *(v11 + 1) = *(v11 - 1);
          *(v11 + 2) = v16;
          *(v11 - 1) = v14;
          *v11 = v15;
          v11[2] = v13;
          v11 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v8 += 8;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000F974(&qword_1004A6B18);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_10011C254(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100113984()
{
  v0 = type metadata accessor for UUID();
  sub_10001D4FC(v0, qword_1004D4ED0);
  sub_10001D4C4(v0, qword_1004D4ED0);
  return UUID.init()();
}

uint64_t sub_1001139D0(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    v7 = *(**(a3 + 144) + 400);

    v8 = v7(v12);
    v10 = *v9;
    *v9 = 0;

    v8(v12, 0);
  }

  *(a3 + 64) = a4;
  v12[0] = 0;
  return a1(v12);
}

void sub_100113B30()
{
  v0 = [objc_opt_self() standardUserDefaults];
  Defaults.peFirstPointMaxDistance.unsafeMutableAddressor();

  v1 = String._bridgeToObjectiveC()();

  [v0 floatForKey:v1];
  v3 = v2;

  dword_1004D4F04 = v3;
}

uint64_t sub_100113BD0()
{
  v1 = *(**(v0 + 88) + 144);

  v1(v13, v2);

  if (v16)
  {
    return 0;
  }

  v3 = v15;
  v4 = *(**(v0 + 88) + 144);

  v4(v13, v5);

  if (v18)
  {
    return 0;
  }

  v6 = v17;
  v7 = *(**(v0 + 88) + 144);

  v7(v13, v8);

  if (v14)
  {
    return 0;
  }

  swift_beginAccess();
  sub_10000F974(&qword_1004A3DB0);
  RingBuffer.append(_:)();
  swift_endAccess();

  RingBuffer<A>.average()();
  v11 = v10;

  v12 = fmaxf(v11, v3) > 0.3;
  return v6 > 4.0 || v12;
}

uint64_t sub_100113D84(void *a1)
{
  v3 = type metadata accessor for ARCamera.TrackingState();
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v37 - v7;
  v9 = type metadata accessor for SessionState();
  v10 = __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  if (*(v1 + 232))
  {
    [a1 timestamp];
    result = 0;
    *(v1 + 224) = v14;
    *(v1 + 232) = 0;
    return result;
  }

  v15 = v10;
  v16 = *(v1 + 224);
  v17 = v1;
  v18 = *(**(v1 + 136) + 144);

  v19 = a1;
  v18(v37);

  v20 = v37[0];
  if (v37[0] >> 62 == 1)
  {
    goto LABEL_17;
  }

  if (v37[0] >> 62 == 2 && v37[0] == 0x8000000000000020)
  {

    return 0;
  }

  [v19 timestamp];
  v22 = v21;
  [v19 timestamp];
  *(v1 + 224) = v23;
  *(v1 + 232) = 0;
  if (!*(v1 + 64) || *(v1 + 64) == 1 || (v24 = *(**(v1 + 104) + 144), v25 = , v24(v37, v25), , (v37[0] & 0x1000000) != 0) || ARFrame.isVIOTrackingUnacceptable()() || (v26 = [objc_opt_self() standardUserDefaults], v27 = objc_msgSend(v26, "kADEdgeDetectionEnabled"), v26, (v27 & 1) == 0) || (v28 = *(**(v17 + 120) + 144), v29 = , v28(v37, v29), , v30 = v37[0], v31 = v37[1], v37[2], v37[3], v31, !v30) || ((*((swift_isaMask & *v30) + 0x200))(), v30, v32 = *(**(v17 + 96) + 144), v33 = , v32(v33), , sub_10004046C(&v12[*(v15 + 20)], v8), sub_100120744(v12, type metadata accessor for SessionState), v34 = type metadata accessor for ARCamera.TrackingState.Reason(), (*(*(v34 - 8) + 56))(v6, 2, 2, v34), v35 = static ARCamera.TrackingState.== infix(_:_:)(), sub_100120744(v6, &type metadata accessor for ARCamera.TrackingState), sub_100120744(v8, &type metadata accessor for ARCamera.TrackingState), (v35 & 1) == 0) || (sub_100113BD0() & 1) != 0 || (sub_1001141CC() & 1) != 0)
  {
LABEL_17:

    sub_10001B360(v20);
    return 0;
  }

  v36 = sub_100114A64();

  sub_10001B360(v20);
  return (v22 - v16 < 0.05) & ~v36;
}

uint64_t sub_1001141CC()
{
  v1 = v0;
  v2 = *(**(v0 + 120) + 144);

  v2(v65, v3);

  v4 = v65[0];
  v5 = v65[1];

  if (!v4)
  {
    return 1;
  }

  v6 = COERCE_FLOAT32X2_T((*((swift_isaMask & *v4) + 0x200))());

  v7 = *(**(v1 + 120) + 144);

  v7(v65, v8);

  v9 = v65[0];
  v10 = v65[1];

  if (!v10)
  {
    return 1;
  }

  if ((*((swift_isaMask & *v10) + 0x2F0))())
  {

    return 1;
  }

  v12 = *(**(v1 + 128) + 144);

  v12(v65, v13);

  *&__dst[0] = v65[0];

  sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A1650);
  swift_dynamicCast();
  v14 = v65[0];
  if (v65[0] >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_57:

LABEL_58:

    return 0;
  }

  v15 = *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_57;
  }

LABEL_8:
  v16 = 0;
  v56 = v14;
  v57 = v14 & 0xC000000000000001;
  v53 = v10;
  v54 = v14 & 0xFFFFFFFFFFFFFF8;
  v60 = v1;
  v55 = v15;
  while (1)
  {
    if (v57)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v54 + 16))
      {
        goto LABEL_54;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v20 = *((swift_isaMask & *v18) + 0xD0);
    if (v20() != 5 && v20() && v20() != 2)
    {

      goto LABEL_10;
    }

    v21 = *((swift_isaMask & *v19) + 0x250);
    v22 = v21();
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_52;
      }

      v23 = *(v22 + 40);
    }

    v24 = v23;

    type metadata accessor for MeasureCamera();
    v25 = (*((swift_isaMask & *v24) + 0x2C0))();

    (*(*v25 + 368))();

    simd_float4x4.position.getter();
    v26 = *(**(v60 + 80) + 144);

    v26(__src, v27);

    memcpy(__dst, __src, sizeof(__dst));
    sub_100013C4C(__dst);
    v28 = *(**(v60 + 80) + 144);

    v28(__src, v29);

    memcpy(v65, __src, 0x200uLL);
    sub_100013C4C(v65);
    v30 = static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v59 = v31;
    v32 = (v21)(v30);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v33 = *(v32 + 32);
    }

    v34 = v33;

    v36 = (*((swift_isaMask & *v34) + 0x2C0))(v35);

    (*(*v36 + 368))();

    simd_float4x4.position.getter();
    v37 = *(**(v60 + 80) + 144);

    v37(v61, v38);

    memcpy(v62, v61, sizeof(v62));
    sub_100013C4C(v62);
    v39 = *(**(v60 + 80) + 144);

    v39(v61, v40);

    memcpy(__src, v61, sizeof(__src));
    sub_100013C4C(__src);
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    if ((~DWORD2(v59) & 0x7F800000) == 0 && (DWORD2(v59) & 0x7FFFFF) != 0)
    {

      v15 = v55;
      v14 = v56;
LABEL_9:
      v17 = v16 + 1;
      goto LABEL_10;
    }

    v15 = v55;
    v14 = v56;
    if (*(&v59 + 2) > 1.0 || *(&v59 + 2) < 0.0 || ((~LODWORD(v42) & 0x7F800000) == 0 ? (v44 = (LODWORD(v42) & 0x7FFFFF) == 0) : (v44 = 1), !v44 || v42 > 1.0 || v42 < 0.0))
    {

      goto LABEL_9;
    }

    v58 = v41;
    v45 = sub_10011D040(v6, *&v59, v41);
    v47 = v46;
    v48 = vsub_f32(v6, *&v59);
    if (vaddv_f32(vmul_f32(v48, v48)) < 6400.0 || (v49 = vsub_f32(v6, v58), vaddv_f32(vmul_f32(v49, v49)) < 6400.0))
    {

      return 1;
    }

    if (v47 >= 6400.0)
    {
      goto LABEL_9;
    }

    v50 = vsub_f32(v58, *&v59);
    v51 = vmul_f32(v50, vsub_f32(v45, *&v59));
    v17 = v16 + 1;
    if (vaddv_f32(v51) >= 0.0)
    {
      v52 = vmul_f32(v50, v50);
      if ((vmvn_s8(vcge_f32(vadd_f32(v52, vdup_lane_s32(v52, 1)), vadd_f32(v51, vdup_lane_s32(v51, 1)))).u8[0] & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_10:
    ++v16;
    if (v17 == v15)
    {

      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:

  return 1;
}

BOOL sub_100114A64()
{
  v1 = *(**(v0 + 128) + 144);

  v1(v13, v2);

  v3 = sub_1001C9E48(v13[0], v13[1]);

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = (*((swift_isaMask & *v6) + 0xD0))();
      v11 = v9 == 6 || v9 == 7;

      if (!v11)
      {
        ++v5;
        if (v8 != i)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

void *sub_100114C04()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v1 = sub_10011CA08(v0);
    *(v0 + 248) = v1;
  }

  return v1;
}

void sub_100114C64(void *__src, uint64_t a2)
{
  memcpy(v9, __src, sizeof(v9));
  v3 = sub_10008D4F0();
  v4 = sub_100113D84(v3);

  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = 16 * (v5 == 2);
    v7 = v5 == 3;
    v8 = 4;
    if (!v7)
    {
      v8 = v6;
    }

    if (!v8)
    {
      __break(1u);
    }
  }
}

uint64_t sub_100114D00@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  nullsub_1(__srca);
  memcpy(a2, __srca, 0x200uLL);
  return sub_10004B20C(__dst, &v5);
}

uint64_t sub_100114D78@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x200uLL);
  return sub_10004B20C(__dst, &v5);
}

void sub_100114DD8()
{
  v1 = v0;
  *(v0 + 64) = 3;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *(v0 + 72) = PassthroughSubject.init()();
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *(v1 + 88) = v7(v6, v4);
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&unk_1004A3F30) + 272);

  *(v1 + 96) = v9(v8, v4);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A1940) + 272);

  *(v1 + 104) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A3F80) + 272);

  *(v1 + 112) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v1 + 120) = v15(v14, v4);
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A7530);
  *(v1 + 128) = (*(v17 + 272))(v16, v4);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&unk_1004A2520);
  *(v1 + 136) = (*(v19 + 272))(v18, v4);
  sub_10000F974(&qword_1004A9DD8);
  swift_getKeyPath();
  *(v1 + 144) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + 152) = _swiftEmptyArrayStorage;
  *(v1 + 160) = 0;
  *(v1 + 168) = 257;
  v20 = sub_100067544(0, 30, 0, _swiftEmptyArrayStorage);
  *(v1 + 176) = xmmword_1003DD990;
  *(v1 + 192) = v20;
  v21 = sub_100067410(0, 4, 0, _swiftEmptyArrayStorage);
  *(v1 + 200) = xmmword_1003DA910;
  *(v1 + 216) = v21;
  *(v1 + 224) = 0;
  *(v1 + 232) = 1;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 240) = _swiftEmptyArrayStorage;
  v22 = [objc_allocWithZone(SCNNode) init];
  v23 = *(v1 + 256);
  *(v1 + 256) = v22;

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v24 = *(&xmmword_1004D4AB8 + 1);
  if (!*(&xmmword_1004D4AB8 + 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v36 = qword_1004D4B10;
  v25 = *(&xmmword_1004D4AE8 + 1);
  v26 = xmmword_1004D4AE8;
  v27 = qword_1004D4AD0;
  v28 = xmmword_1004D4AB8;
  v38 = qword_1004D4B18;
  v40 = v28;
  v29 = v24;

  v39 = v27;

  v37 = v26;
  v30 = v25;

  v31 = v36;
  v32 = sub_1001CC7B0();
  v33 = [v32 scene];

  v34 = [v33 rootNode];

  if (!*(v1 + 256))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v34 addChildNode:?];

  StateObserver.init(configuration:)();

  v35 = sub_100114C04()[9];

  if (v35)
  {

    sub_10000F974(&qword_1004A9DE0);
    sub_10001D47C(&qword_1004A9DE8, &qword_1004A9DE0);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    sub_10000F974(&qword_1004A3270);
    sub_10001D47C(&qword_1004A3278, &qword_1004A3270);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100115508(uint64_t *a1)
{
  v1 = *a1;
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v2 = sub_10008D4F0();
  sub_100115584(v1, v2, __dst[21], __dst[22], __dst[23], __dst[24]);
}

uint64_t sub_100115584(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v26[2] = a5;
  v26[3] = a6;
  v26[0] = a3;
  v26[1] = a4;
  v27 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ariadne_trace(_:_:_:_:_:)();
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (a1 + 32);
    do
    {
      v15 = *v14;
      v28 = v14[1];
      v29 = v15;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v17 = v16;
      (*(v10 + 8))(v12, v9);
      v18 = *(v7 + 152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 152) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1000681E8(0, *(v18 + 2) + 1, 1, v18);
        *(v7 + 152) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1000681E8((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[40 * v21];
      v23 = v28;
      *(v22 + 2) = v29;
      *(v22 + 3) = v23;
      *(v22 + 8) = v17;
      *(v7 + 152) = v18;
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  if (v27)
  {
    v24 = v27;
    sub_100115E8C();
    sub_100116100();
  }

  *(v7 + 152) = _swiftEmptyArrayStorage;

  return ariadne_trace(_:_:_:_:_:)();
}

void sub_1001157D4()
{
  v1 = v0;
  *(v0 + 64) = 3;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *(v0 + 72) = PassthroughSubject.init()();
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *(v1 + 88) = v7(v6, v4);
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&unk_1004A3F30) + 272);

  *(v1 + 96) = v9(v8, v4);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A1940) + 272);

  *(v1 + 104) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A3F80) + 272);

  *(v1 + 112) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v1 + 120) = v15(v14, v4);
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A7530);
  *(v1 + 128) = (*(v17 + 272))(v16, v4);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&unk_1004A2520);
  *(v1 + 136) = (*(v19 + 272))(v18, v4);
  sub_10000F974(&qword_1004A9DD8);
  swift_getKeyPath();
  *(v1 + 144) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + 152) = _swiftEmptyArrayStorage;
  *(v1 + 160) = 0;
  *(v1 + 168) = 257;
  v20 = sub_100067544(0, 30, 0, _swiftEmptyArrayStorage);
  *(v1 + 176) = xmmword_1003DD990;
  *(v1 + 192) = v20;
  v21 = sub_100067410(0, 4, 0, _swiftEmptyArrayStorage);
  *(v1 + 200) = xmmword_1003DA910;
  *(v1 + 216) = v21;
  *(v1 + 224) = 0;
  *(v1 + 232) = 1;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 240) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100115C04()
{

  v1 = *(v0 + 256);
}

uint64_t sub_100115CAC()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    [v1 removeFromParentNode];
  }

  v2 = StateObserver.deinit();

  return v2;
}

uint64_t sub_100115D70()
{
  sub_100115CAC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EdgeInstrument()
{
  result = qword_1004A9C38;
  if (!qword_1004A9C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100115E8C()
{
  v1 = v0;
  v2 = *(**(v0 + 120) + 144);

  v2(v19, v3);

  v4 = v19[0];
  v5 = v19[1];
  v6 = v20;
  v7 = v21;
  v8 = v20;

  if (v6)
  {
    (*((swift_isaMask & *v8) + 0x200))();

    CGPoint.init(_:)();
    sub_100117ABC(v19);
    v9 = v19[0];
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = [v10 guideSnapPointsEnabled];

    if (v11)
    {
      v12 = sub_10011F6D4();
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = 0;
      if (!v9)
      {
LABEL_9:
        swift_beginAccess();
        v17 = v12;
        sub_10000F974(&qword_1004A9E08);
        RingBuffer.append(_:)();
        swift_endAccess();

        return;
      }
    }

    simd_float4x4.position.getter();
    v18 = v13;
    v14 = v9;
    if (sub_10011FC98(v14, v18))
    {
      swift_beginAccess();
      v15 = v12;
      v16 = v14;
      sub_10000F974(&qword_1004A9E08);
      RingBuffer.append(_:)();
      swift_endAccess();

      *(v1 + 168) = 257;
      return;
    }

    goto LABEL_9;
  }
}

void sub_100116100()
{
  v1 = v0;
  v2 = *(**(v0 + 120) + 144);

  v2(&v121, v3);

  v4 = v121;

  if (v4)
  {
    v5 = COERCE_FLOAT32X2_T((*((swift_isaMask & *v4) + 0x200))());

    v6 = *(**(v0 + 120) + 144);

    v6(&v121, v7);

    v8 = v121;

    if (*(&v8 + 1))
    {
      (*((swift_isaMask & **(&v8 + 1)) + 0x2B0))();

      simd_float4x4.position.getter();
      v97 = v9;
      v10 = sub_100116B34();
      v11 = v10;
      v13 = v12;
      if (v10 == 1)
      {
        v15 = 0;
      }

      else
      {
        v14 = v10;
        v15 = v11;
      }

      v16 = [objc_opt_self() standardUserDefaults];
      v17 = [v16 guideSnapPointsEnabled];

      v102 = 0;
      v95 = v11;
      if (v11 != 1 && v17)
      {
        v18 = v13;
        v102 = v13;
      }

      v96 = v13;
      v101 = v15;
      v98 = v1;
      if (v15)
      {
        v19 = direct field offset for WorldEdge.connectedSurfaces;
        swift_beginAccess();
        *&v15[v19] = _swiftEmptyArrayStorage;
        v20 = v15;

        v93 = v20;
        sub_10012006C(v20, v97);
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = (v21 + 64);
          do
          {
            v26 = *(v23 - 4);
            v103 = *v23;
            v105 = *(v23 - 1);
            v27 = &v26[direct field offset for WorldEdge.p1];
            swift_beginAccess();
            if ((v27[16] & 1) == 0)
            {
              v28 = *v27;
              v29 = *(v27 + 1);
              v30 = &v26[direct field offset for WorldEdge.p2];
              swift_beginAccess();
              if ((v30[16] & 1) == 0)
              {
                v31 = (v30 + 8);
                v32 = *v30;
                v33 = vld1q_dup_f64(v31);
                v99 = v33;
                swift_beginAccess();
                v34 = v15;
                v35 = *&v15[v19];
                v36 = v26;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v34[v19] = v35;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v35 = sub_10006865C(0, *(v35 + 2) + 1, 1, v35);
                  *&v101[v19] = v35;
                }

                v39 = *(v35 + 2);
                v38 = *(v35 + 3);
                if (v39 >= v38 >> 1)
                {
                  v35 = sub_10006865C((v38 > 1), v39 + 1, 1, v35);
                }

                *&v24 = vsub_f32(v32, v28);
                *(&v24 + 1) = vsubq_f32(v99, vdupq_n_s64(v29)).u32[2];
                *(v35 + 2) = v39 + 1;
                v25 = &v35[64 * v39];
                *(v25 + 2) = v24;
                *(v25 + 3) = v105;
                *(v25 + 4) = v103;
                v25[80] = 0;
                *&v101[v19] = v35;
                v15 = v101;
                swift_endAccess();
              }
            }

            v23 += 3;
            --v22;
          }

          while (v22);
        }

        v1 = v98;
      }

      if (v102)
      {
        v40 = direct field offset for WorldEdge.connectedSurfaces;
        swift_beginAccess();
        *&v102[v40] = _swiftEmptyArrayStorage;
        v41 = v102;

        v94 = v41;
        sub_10012006C(v41, v97);
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = (v42 + 64);
          do
          {
            v47 = *(v44 - 4);
            v104 = *v44;
            v106 = *(v44 - 1);
            v48 = &v47[direct field offset for WorldEdge.p1];
            swift_beginAccess();
            if ((v48[16] & 1) == 0)
            {
              v49 = *v48;
              v50 = *(v48 + 1);
              v51 = &v47[direct field offset for WorldEdge.p2];
              swift_beginAccess();
              if ((v51[16] & 1) == 0)
              {
                v52 = (v51 + 8);
                v53 = *v51;
                v54 = vld1q_dup_f64(v52);
                v100 = v54;
                swift_beginAccess();
                v55 = *&v102[v40];
                v56 = v47;
                v57 = swift_isUniquelyReferenced_nonNull_native();
                *&v102[v40] = v55;
                if ((v57 & 1) == 0)
                {
                  v55 = sub_10006865C(0, *(v55 + 2) + 1, 1, v55);
                  *&v102[v40] = v55;
                }

                v59 = *(v55 + 2);
                v58 = *(v55 + 3);
                if (v59 >= v58 >> 1)
                {
                  v55 = sub_10006865C((v58 > 1), v59 + 1, 1, v55);
                }

                *&v45 = vsub_f32(v53, v49);
                *(&v45 + 1) = vsubq_f32(v100, vdupq_n_s64(v50)).u32[2];
                *(v55 + 2) = v59 + 1;
                v46 = &v55[64 * v59];
                *(v46 + 2) = v45;
                *(v46 + 3) = v106;
                *(v46 + 4) = v104;
                v46[80] = 0;
                *&v102[v40] = v55;
                swift_endAccess();

                v15 = v101;
              }
            }

            v44 += 3;
            --v43;
          }

          while (v43);
        }

        v1 = v98;
      }

      v60 = *(**(v1 + 112) + 144);

      v60(&v111, v61);

      v127 = v117;
      v128 = v118;
      v129 = v119;
      v130 = v120;
      v123 = v113;
      v124 = v114;
      v125 = v115;
      v126 = v116;
      v121 = v111;
      v122 = v112;
      v62 = *(&v119 + 1);
      v63 = *(&v119 + 1);
      sub_100013BF8(&v121);
      if (v62)
      {
        v64 = *(**(v1 + 112) + 144);

        v64(v107, v65);

        v117 = v107[6];
        v118 = v107[7];
        v119 = v108;
        v120 = v109;
        v113 = v107[2];
        v114 = v107[3];
        v115 = v107[4];
        v116 = v107[5];
        v111 = v107[0];
        v112 = v107[1];
        v66 = *(&v108 + 1);
        v67 = *(&v108 + 1);
        sub_100013BF8(&v111);
        if (!v66)
        {

          goto LABEL_40;
        }

        v68 = WorldEdge.projected(for:)();
        v70 = v69;
        v72 = v71;

        if (v72)
        {

LABEL_40:
          sub_1000136FC(v95, v96);
          return;
        }

        sub_10011D040(v5, v68, v70);
        if (qword_1004A0318 != -1)
        {
          v92 = v75;
          swift_once();
          v75 = v92;
        }

        if (v75 >= *&dword_1004D4EEC)
        {

          v73 = 0;
          v62 = 0;
        }

        else
        {
          v73 = v102;
          v76 = v102;
        }

        v15 = v101;
        v74 = *(v1 + 160);
        if (!v74)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v73 = 0;
        v74 = *(v1 + 160);
        if (!v74)
        {
          goto LABEL_55;
        }
      }

      CGPoint.init(_:)();
      v77 = v74;
      WorldEdge.getClosestScreenSpacePoint(from:for:)();

      if ((BYTE4(v113) & 1) == 0)
      {
        v78 = *&v113 * *&v113;
        if (qword_1004A0310 != -1)
        {
          swift_once();
        }

        if (v78 < *&dword_1004D4EE8)
        {
          if (qword_1004A0228 != -1)
          {
            swift_once();
          }

          v79._object = 0x8000000100407830;
          v79._countAndFlagsBits = 0xD000000000000022;
          Log.debug(_:isPrivate:)(v79, 0);

          v62 = *(v1 + 160);
          if (!v62)
          {
            __break(1u);
            return;
          }

          v80 = v62;
          v73 = v102;
          v81 = v102;
          v82 = v81;
          goto LABEL_61;
        }
      }

LABEL_55:
      if (!v15 || v62)
      {
        v81 = v102;
        v82 = v73;
      }

      else
      {
        v83 = v15;

        v84 = &v83[direct field offset for WorldEdge.adVariance];
        swift_beginAccess();
        if (*v84 <= 0.5)
        {
          v85 = v83;
          v62 = v15;
        }

        v73 = v102;
        v81 = v102;
        v86 = v83;
        sub_1001173A0(v62, v102, v15);

        v82 = v81;
      }

LABEL_61:
      v87 = *(v1 + 144);
      v110[0] = v62;
      v110[1] = v73;
      v88 = *(*v87 + 392);
      v89 = v62;

      v90 = v82;
      v88(v110);
      sub_1000136FC(v95, v96);

      v91 = *(v1 + 160);
      *(v1 + 160) = v62;

      *(v1 + 168) = 257;
    }
  }
}

uint64_t sub_100116B34()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v1 throttleEdges];

  v3 = 1;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  swift_beginAccess();
  if (*(*(v0 + 216) + 16) >= 4uLL)
  {
    swift_beginAccess();
    sub_10000F974(&qword_1004A3E90);
    RingBuffer.subscript.getter();
    v3 = v75;
    v5 = v76;
    swift_endAccess();
    if (!v75)
    {
LABEL_52:

      return 1;
    }

    v6 = &v75[direct field offset for WorldEdge.p1];
    swift_beginAccess();
    if (v6[16] & 1) != 0 || (v7 = *v6, v8 = *(v6 + 1), v9 = &v75[direct field offset for WorldEdge.p2], swift_beginAccess(), (v9[1].i8[0]))
    {
LABEL_51:

      v5 = v76;
      goto LABEL_52;
    }

    v72 = v4;
    v10.i64[0] = v7;
    v10.i64[1] = v8;
    v11 = vsubq_f32(*v9, v10);
    v12 = vmulq_f32(v11, v11);
    *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    *v12.f32 = vrsqrte_f32(v13);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
    v73 = vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
    sub_1000A2734(0, 4, 0);
    for (i = -1; i != -5; --i)
    {
      swift_beginAccess();
      RingBuffer.subscript.getter();
      swift_endAccess();
      v15 = v74;
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000A2734((v16 > 1), v17 + 1, 1);
        v15 = v74;
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      *&_swiftEmptyArrayStorage[2 * v17 + 4] = v15;
    }

    v18 = 0;
    v19 = v17 + 1;
    v20 = &_swiftEmptyArrayStorage[5];
    v21 = _swiftEmptyArrayStorage;
    do
    {
      if (v18 >= _swiftEmptyArrayStorage[2])
      {
        __break(1u);
        goto LABEL_56;
      }

      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *v20;
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100067410(0, v21[2] + 1, 1, v21);
      }

      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        v21 = sub_100067410((v26 > 1), v27 + 1, 1, v21);
      }

      ++v18;
      v21[2] = v27 + 1;
      v28 = &v21[2 * v27];
      v28[4] = v23;
      v28[5] = v22;
      v20 += 2;
    }

    while (v19 != v18);

    v29 = 0;
    v30 = v21[2];
    v20 = _swiftEmptyArrayStorage;
LABEL_20:
    v31 = &v21[2 * v29 + 4];
    while (1)
    {
      if (v30 == v29)
      {

        if (qword_1004A0228 != -1)
        {
          goto LABEL_58;
        }

        goto LABEL_30;
      }

      if (v29 >= v21[2])
      {
        break;
      }

      ++v29;
      v32 = v31 + 2;
      v33 = *v31;
      v31 += 2;
      if (v33)
      {
        v34 = *(v32 - 1);
        v35 = v33;
        v36 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000A2734(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v38 = _swiftEmptyArrayStorage[2];
        v37 = _swiftEmptyArrayStorage[3];
        if (v38 >= v37 >> 1)
        {
          sub_1000A2734((v37 > 1), v38 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v38 + 1;
        v39 = &_swiftEmptyArrayStorage[2 * v38];
        v39[4] = v33;
        v39[5] = v34;
        goto LABEL_20;
      }
    }

LABEL_56:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_58:
      swift_once();
LABEL_30:
      _StringGuts.grow(_:)(25);

      v40 = v20[2];
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 0xD000000000000017;
      v42._object = 0x8000000100407860;
      Log.debug(_:isPrivate:)(v42, 0);

      if (!v40)
      {
        break;
      }

      sub_1000A2550(0, v40, 0);
      v43 = 0;
      v44 = 4;
      while (v43 < v20[2])
      {
        v45 = v20[v44];
        v46 = 1.0;
        if (v45)
        {
          v47 = &v45[direct field offset for WorldEdge.p2];
          swift_beginAccess();
          if ((v47[16] & 1) == 0)
          {
            v48 = *v47;
            v49 = *(v47 + 1);
            v50 = &v45[direct field offset for WorldEdge.p1];
            swift_beginAccess();
            if ((v50[2].i8[0] & 1) == 0)
            {
              v52 = &v50[1];
              v53 = vld1q_dup_f64(v52);
              *v51.f32 = vsub_f32(v48, *v50);
              v51.i32[2] = vsubq_f32(vdupq_n_s64(v49), v53).i32[2];
              v54 = vmulq_f32(v51, v51);
              *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
              *v54.f32 = vrsqrte_f32(v55);
              *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32)));
              v56 = vmulq_f32(v73, vmulq_n_f32(v51, vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32))).f32[0]));
              v46 = 1.0 - fabsf(v56.f32[2] + vaddv_f32(*v56.f32));
            }
          }
        }

        v58 = _swiftEmptyArrayStorage[2];
        v57 = _swiftEmptyArrayStorage[3];
        if (v58 >= v57 >> 1)
        {
          sub_1000A2550((v57 > 1), v58 + 1, 1);
        }

        ++v43;
        _swiftEmptyArrayStorage[2] = v58 + 1;
        *(&_swiftEmptyArrayStorage[4] + v58) = v46;
        v44 += 2;
        if (v40 == v43)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_40:

    v59 = _swiftEmptyArrayStorage[2];
    if (v59)
    {
      if (v59 > 7)
      {
        v60 = v59 & 0x7FFFFFFFFFFFFFF8;
        v62 = &_swiftEmptyArrayStorage[6];
        v61 = 0.0;
        v63 = v59 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v61 = (((((((v61 + COERCE_FLOAT(*(v62 - 1))) + COERCE_FLOAT(HIDWORD(*(v62 - 2)))) + COERCE_FLOAT(*(v62 - 1))) + COERCE_FLOAT(HIDWORD(*(v62 - 1)))) + COERCE_FLOAT(*v62)) + COERCE_FLOAT(HIDWORD(*v62))) + COERCE_FLOAT(v62[1])) + COERCE_FLOAT(HIDWORD(*v62));
          v62 += 4;
          v63 -= 8;
        }

        while (v63);
        if (v59 == v60)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v60 = 0;
        v61 = 0.0;
      }

      v64 = v59 - v60;
      v65 = &_swiftEmptyArrayStorage[4] + v60;
      do
      {
        v66 = *v65++;
        v61 = v61 + v66;
        --v64;
      }

      while (v64);
    }

LABEL_49:

    _StringGuts.grow(_:)(24);
    v67._object = 0x8000000100407880;
    v67._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v67);
    Float.write<A>(to:)();
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    Log.debug(_:isPrivate:)(v68, 0);

    v69 = direct field offset for WorldEdge.typeConfidence;
    swift_beginAccess();
    *&v75[v69] = 1065353216;
    if (v40 >= v72)
    {
      return v3;
    }

    v70._object = 0x80000001004078A0;
    v70._countAndFlagsBits = 0xD000000000000016;
    Log.debug(_:isPrivate:)(v70, 0);
    goto LABEL_51;
  }

  return v3;
}

void sub_1001173A0(char *a1, char *a2, void *a3)
{
  v4 = v3;
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = [v9 showSnappableEdges];

  if (v10)
  {
    if (a1)
    {
      v11 = &a1[direct field offset for WorldEdge.p1];
      swift_beginAccess();
      if (v11[16])
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v12 = &a1[direct field offset for WorldEdge.p2];
      swift_beginAccess();
      if (v12[16])
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v13 = objc_opt_self();
      v14 = a1;
      v15 = [v13 magentaColor];
      sub_10011B7CC(v15);
    }

    if (a2)
    {
      v16 = &a2[direct field offset for WorldEdge.p1];
      swift_beginAccess();
      if (v16[16])
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v17 = &a2[direct field offset for WorldEdge.p2];
      swift_beginAccess();
      if (v17[16])
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 = objc_opt_self();
      v19 = a2;
      v20 = [v18 blueColor];
      sub_10011B7CC(v20);
    }
  }

  if (!a3)
  {
    return;
  }

  v21 = a3;
  v22 = [v8 standardUserDefaults];
  v23 = [v22 showFinalPlanes];

  if (v23)
  {
    v24 = *(v4 + 256);
    if (v24)
    {
      v25 = v24;
      SCNNode.removeAllChildren()();
    }

    v26 = direct field offset for WorldEdge.backingPlanes;
    swift_beginAccess();
    if (*(*&v21[v26] + 16))
    {
      static simd_float4x4.make(position:normalizedForward:)();
      v27 = direct field offset for WorldEdge.type;
      swift_beginAccess();
      v28 = v21[v27];
      if (v28 != 4)
      {
        v29 = sub_1001206CC(v28);
        v53 = 0x203A726F727265;
        v54 = 0xE700000000000000;
        if (a1)
        {
          v30 = direct field offset for WorldEdge.adVariance;
          swift_beginAccess();
          v31 = *&a1[v30];
        }

        else
        {
          v31 = 0;
        }

        v55 = v31;
        v56 = a1 == 0;
        sub_10000F974(&qword_1004A9DF0);
        v32._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v32);

        sub_10011ACC0(v29, 1, v53, v54, 3);

        if (*(*&v21[v26] + 16) != 2)
        {
LABEL_30:

          goto LABEL_31;
        }

        static simd_float4x4.make(position:normalizedForward:)();
        v33 = objc_opt_self();
        v34 = [v33 boxWithWidth:0.12 height:0.12 length:0.0 chamferRadius:0.0];
        v35 = [v33 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
        v36 = [v35 firstMaterial];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 diffuse];

          v39 = objc_opt_self();
          v40 = [v39 redColor];
          [v38 setContents:v40];

          v41 = [v39 blackColor];
          if (v29 == v41 || (sub_100018630(0, &qword_1004AE0D0), v42 = [v39 magentaColor], v43 = static NSObject.== infix(_:_:)(), v42, (v43 & 1) != 0))
          {
            [v34 setWidth:0.07];
            [v34 setHeight:0.07];
          }

          v44 = v34;
          v45 = [v44 firstMaterial];
          if (v45)
          {
            v46 = v45;
            v47 = [v45 diffuse];

            [v47 setContents:v29];
            v48 = [objc_allocWithZone(SCNNode) init];
            v49 = [objc_allocWithZone(SCNNode) init];
            SCNMatrix4.init(_:)();
            [v48 setTransform:&v53];
            simd_float4x4.forward.getter();
            static simd_float4x4.make(position:normalizedForward:)();
            SCNMatrix4.init(_:)();
            [v49 setTransform:&v53];
            [v48 setOpacity:0.9];
            [v48 setGeometry:v44];

            [v49 setGeometry:v35];
            v50 = *(v4 + 256);
            if (v50)
            {
              [v50 addChildNode:v48];
              v51 = *(v4 + 256);
              if (v51)
              {
                v52 = v51;
                [v52 addChildNode:v49];
              }
            }

            goto LABEL_30;
          }

LABEL_40:
          __break(1u);
          return;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_34;
  }

  v29 = v21;
LABEL_31:
}

uint64_t sub_100117ABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 152);
  v4 = *(v3 + 16);
  if (v4 == 0.0)
  {
    result = 0;
    v7 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v42 = 0.0;
    v44 = 1;
  }

  else
  {
    CGPoint.floats.getter();
    v6 = v5;

    v7 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v49 = 0.0;
    v8 = 0.0;
    v9 = 0;
    v10 = -*&v4;
    v11 = 1;
    v12 = INFINITY;
LABEL_3:
    v47 = v8;
    v48 = v7;
    v13 = v12;
    v14 = (v3 + 64 + 40 * v9++);
    do
    {
      v16 = *(v14 - 4);
      v15 = *(v14 - 3);
      v18 = *(v14 - 2);
      v17 = *(v14 - 1);
      v8 = *v14;
      CGPoint.floats.getter();
      v20 = v19;
      CGPoint.floats.getter();
      if (qword_1004A0310 != -1)
      {
        v41 = v21;
        swift_once();
        v21 = v41;
      }

      v22 = vsub_f32(v21, v20);
      v23 = vmul_f32(v22, v22);
      v24 = vadd_f32(v23, vdup_lane_s32(v23, 1)).u32[0];
      v25 = vrsqrte_f32(v24);
      v26 = vmul_f32(v25, vrsqrts_f32(v24, vmul_f32(v25, v25)));
      v27 = vmul_n_f32(v22, vmul_f32(v26, vrsqrts_f32(v24, vmul_f32(v26, v26))).f32[0]);
      v28 = vmul_f32(v27, v27);
      v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
      v29 = vrsqrte_f32(v28.u32[0]);
      v30 = vmul_f32(v29, vrsqrts_f32(v28.u32[0], vmul_f32(v29, v29)));
      v31 = vmul_n_f32(v27, vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30))).f32[0]);
      v32 = vsub_f32(v6, v20);
      v33 = vmul_f32(v32, v31);
      v34 = vadd_f32(v20, vmul_n_f32(v31, vadd_f32(v33, vdup_lane_s32(v33, 1)).f32[0]));
      v35 = vsub_f32(v6, v34);
      v12 = vaddv_f32(vmul_f32(v35, v35));
      v36 = vsub_f32(v6, v21);
      v37 = vaddv_f32(vmul_f32(v36, v36));
      v38 = vaddv_f32(vmul_f32(v32, v32)) < *&dword_1004D4EE8 || v37 < *&dword_1004D4EE8;
      if (v38 || v12 < *&dword_1004D4EE8 && (v39 = vmul_f32(v22, vsub_f32(v34, v20)), v40 = vadd_f32(vzip1_s32(v39, v23), vzip2_s32(v39, v23)), v40.f32[0] >= 0.0) && (vcge_f32(vdup_lane_s32(v40, 1), v40).u8[0] & 1) != 0)
      {
        if (v12 < v13)
        {
          v11 = 0;
          v7 = v16;
          v50 = v18;
          v51 = v15;
          v49 = v17;
          if (v10 + v9)
          {
            goto LABEL_3;
          }

          v42 = v8;
          goto LABEL_22;
        }
      }

      v14 += 5;
      ++v9;
    }

    while (v10 + v9 != 1);

    if (v11)
    {
      result = 0;
      v44 = 1;
      v42 = v47;
      v7 = v48;
      v45 = v50;
      v4 = v51;
      v46 = v49;
      goto LABEL_23;
    }

    v42 = v47;
    v7 = v48;
    v8 = v47;
LABEL_22:
    v45 = v50;
    v4 = v51;
    v46 = v49;
    v52[0] = v7;
    v52[1] = v51;
    v52[2] = v50;
    v52[3] = v49;
    v52[4] = v8;
    result = sub_100117DA8(v52);
    v44 = 0;
  }

LABEL_23:
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v45;
  *(a1 + 32) = v46;
  *(a1 + 40) = v42;
  *(a1 + 48) = v44;
  return result;
}

uint64_t sub_100117DA8(CGFloat *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = MeasureCore.shared.unsafeMutableAddressor();
  v7 = *v6;
  result = swift_beginAccess();
  v9 = *(v7 + 112);
  if (!v9)
  {
    __break(1u);
    goto LABEL_35;
  }

  result = swift_beginAccess();
  if (!*(v9 + 192))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  ADProcessor.transformer.getter();

  Transformer.viewToCameraNormalized.getter();

  *&_[16] = v79;
  *_ = v78;
  *&_[32] = v80;
  *&_[40] = v81;
  v86.x = v4;
  v86.y = v5;
  CGPointApplyAffineTransform(v86, _);
  CGPoint.floats.getter();
  ARFrame.getHitRay(cameraPoint:)();
  v10 = a1[2];
  v11 = a1[3];
  v12 = *v6;
  result = swift_beginAccess();
  v13 = *(v12 + 112);
  if (!v13)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  result = swift_beginAccess();
  if (!*(v13 + 192))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  ADProcessor.transformer.getter();

  Transformer.viewToCameraNormalized.getter();
  v14 = v84;
  v15 = v85;

  *&_[16] = v83;
  *_ = v82;
  *&_[32] = v14;
  *&_[40] = v15;
  v87.x = v10;
  v87.y = v11;
  CGPointApplyAffineTransform(v87, _);
  CGPoint.floats.getter();
  ARFrame.getHitRay(cameraPoint:)();
  sub_100118DA4(_);
  if (_[32] & 1) != 0 || (v16 = *_, v17 = *&_[8], v69 = *&_[64], v70 = *&_[48], v68 = _[80], v18 = *&_[84], v19 = *&_[92], v20 = *&_[96], v66 = *&_[24], v67 = *&_[16], type metadata accessor for PlaneUtil(), v21 = static PlaneUtil.getIntersection(ray:plane:)(), (v23) || (v24 = v21, v25 = v22, v26 = static PlaneUtil.getIntersection(ray:plane:)(), (v29))
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v30._countAndFlagsBits = 0xD000000000000047;
    v30._object = 0x80000001004078C0;
    Log.default(_:isPrivate:)(v30, 0);
    return 0;
  }

  *v28.f32 = vsub_f32(v24, v26);
  v28.f32[2] = v25 - v27;
  v31 = vmulq_f32(v28, v28);
  *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
  *v31.f32 = vrsqrte_f32(v32);
  *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
  v33 = vmulq_n_f32(v28, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
  v65 = v18;
  if (fabsf(vmuls_lane_f32(0.0, v33, 2) + (v33.f32[1] + (0.0 * v33.f32[0]))) < 0.20791)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    *_ = 0;
    *&_[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(93);
    v34._countAndFlagsBits = 0xD00000000000003BLL;
    v34._object = 0x80000001004079F0;
    String.append(_:)(v34);
    Float.write<A>(to:)();
    v35._countAndFlagsBits = 0x646E6520646E6120;
    v35._object = 0xED00002079622059;
    String.append(_:)(v35);
    Float.write<A>(to:)();
    v36._countAndFlagsBits = 0x6E6169726156202ELL;
    v36._object = 0xEF20736177206563;
    String.append(_:)(v36);
    Float.write<A>(to:)();
    Log.default(_:isPrivate:)(*_, 0);
  }

  createTransform(forward:normal:position:)();
  v37 = objc_allocWithZone(type metadata accessor for WorldEdge());
  v38 = WorldEdge.init(transform:p1:p2:type:adVariance:)();
  type metadata accessor for MeasureCamera();
  v39 = *(**(v2 + 80) + 144);

  v39(__src, v40);

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  v41 = *(**(v2 + 80) + 144);

  v41(__src, v42);

  memcpy(_, __src, sizeof(_));
  sub_100013C4C(_);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v71 = v43;
  CGPoint.floats.getter();
  v45 = vsub_f32(v71, v44);
  if (vaddv_f32(vmul_f32(v45, v45)) > 25.0 || (v46 = *(**(v2 + 80) + 144), v47 = , v46(v73, v47), , memcpy(v74, v73, sizeof(v74)), sub_100013C4C(v74), v48 = *(**(v2 + 80) + 144), v49 = , v48(v73, v49), , memcpy(__src, v73, sizeof(__src)), sub_100013C4C(__src), static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)(), v72 = v50, CGPoint.floats.getter(), v52 = vsub_f32(v72, v51), vaddv_f32(vmul_f32(v52, v52)) > 25.0))
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v53 = "ason: Edge type is planar";
    v54 = 0xD000000000000040;
LABEL_21:
    v55 = v53 | 0x8000000000000000;
LABEL_22:
    Log.default(_:isPrivate:)(*&v54, 0);

    return 0;
  }

  sub_10000F974(&qword_1004A6B08);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1003D5730;
  *(v56 + 32) = v16;
  *(v56 + 40) = v17;
  *(v56 + 48) = v67;
  *(v56 + 56) = v66;
  *(v56 + 64) = 0;
  *(v56 + 80) = v70;
  *(v56 + 96) = v69;
  *(v56 + 112) = v68;
  v57 = sub_10011EE14(v56, v38);
  v59 = v58;
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v57 == 2)
  {

    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v53 = "sfully refined a real edge";
    v54 = 0xD000000000000029;
    goto LABEL_21;
  }

  if (v57 == 4)
  {

    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v55 = 0x8000000100407910;
    v54 = 0xD000000000000026;
    goto LABEL_22;
  }

  v60 = direct field offset for WorldEdge.type;
  swift_beginAccess();
  v38[v60] = v57;
  v61 = direct field offset for WorldEdge.backingPlanes;
  swift_beginAccess();
  *&v38[v61] = v59;

  v62 = &v38[direct field offset for WorldEdge.edgePlanesMetrics];
  swift_beginAccess();
  *v62 = v65;
  *(v62 + 2) = v19;
  v63 = &v38[direct field offset for WorldEdge.adVariance];
  swift_beginAccess();
  *v63 = v20;
  if (qword_1004A0228 != -1)
  {
    swift_once();
  }

  v64._countAndFlagsBits = 0xD00000000000002ALL;
  v64._object = 0x8000000100407940;
  Log.default(_:isPrivate:)(v64, 0);
  return v38;
}

uint64_t sub_1001188A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001188C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_100118908@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A0308 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_10001D4C4(v2, qword_1004D4ED0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001189B8()
{
  sub_10000F974(&qword_1004A3DC0);
  sub_10001D47C(&qword_1004A3DC8, &qword_1004A3DC0);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100118A44(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_10000F974(&unk_1004A3D70);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_100118AD8()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100118B1C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  if (*(a1 + 40))
  {
    v5 = 0;
    v6 = 1;
    v7 = 2139095040;
    v8 = 0uLL;
  }

  else
  {
    v37 = *a1;
    v38 = a1[1];
    v5 = *(a1 + 4);
    v9 = *(**(v2 + 120) + 144);

    v9(v39, v10);

    v11 = v39[0];
    v12 = v39[1];

    if (v11 && (v13 = COERCE_FLOAT32X2_T((*((swift_isaMask & *v11) + 0x200))()), v11, CGPoint.floats.getter(), v15 = v14, CGPoint.floats.getter(), v17 = v16, v18 = vsub_f32(v15, v16), v19 = vmul_f32(v18, v18), v19.i32[0] = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0], v20 = vrsqrte_f32(v19.u32[0]), v21 = vmul_f32(v20, vrsqrts_f32(v19.u32[0], vmul_f32(v20, v20))), v22 = vmul_n_f32(v18, vmul_f32(v21, vrsqrts_f32(v19.u32[0], vmul_f32(v21, v21))).f32[0]), CGPoint.floats.getter(), v24 = v23, CGPoint.floats.getter(), v26 = v25, v27 = vsub_f32(v24, v25), v28 = vmul_f32(v27, v27), v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0], v29 = vrsqrte_f32(v28.u32[0]), v30 = vmul_f32(v29, vrsqrts_f32(v28.u32[0], vmul_f32(v29, v29))), fabsf(vaddv_f32(vmul_f32(v22, vmul_n_f32(v27, vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30))).f32[0])))) <= 0.3) && ((lineIntersection(line1P1:line1P2:line2P1:line2P2:)(), v32 > 0.0) && v31 < 1.0 || ((sub_10011D040(v24, v15, v17), v34 = v33, sub_10011D040(v26, v15, v17), v35 >= v34) ? (v36 = v34) : (v36 = v35), v36 < 64.0)))
    {
      sub_10011D040(v13, v24, v26);
      v6 = 0;
      v4 = v37;
      v8 = v38;
    }

    else
    {
      v5 = 0;
      v6 = 1;
      v7 = 2139095040;
      v8 = 0uLL;
      v4 = 0uLL;
    }
  }

  *a2 = v4;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 44) = v7;
}

uint64_t sub_100118DA4@<X0>(uint64_t a1@<X8>)
{
  CGPoint.floats.getter();
  v3 = v2;
  CGPoint.floats.getter();
  v5 = v4;
  v6 = vsub_f32(v3, v4);
  v267 = vmul_f32(v6, v6);
  v7 = vadd_f32(v267, vdup_lane_s32(v267, 1)).u32[0];
  v8 = vrsqrte_f32(v7);
  v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
  v10 = vmul_n_f32(v6, vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]);
  sub_10000F974(&qword_1004A9E10);
  v11 = swift_allocObject();
  v12 = j__malloc_size(v11);
  v13 = v12 - 32;
  if (v12 < 32)
  {
    v13 = v12 - 25;
  }

  *(v11 + 16) = 15;
  *(v11 + 24) = 2 * (v13 >> 3);
  *(v11 + 32) = xmmword_1003D5360;
  *(v11 + 48) = xmmword_1003DD9A0;
  *(v11 + 64) = xmmword_1003DD9B0;
  *(v11 + 80) = xmmword_1003DD9C0;
  *(v11 + 96) = xmmword_1003DD9D0;
  *(v11 + 112) = xmmword_1003DD9E0;
  *(v11 + 128) = xmmword_1003DD9F0;
  *(v11 + 144) = 15;
  v14 = vmul_n_f32(v10, sqrtf(vaddv_f32(v267)) * 0.066667);
  *&v303 = _swiftEmptyArrayStorage;
  result = sub_1000A26F4(0, 15, 0);
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    if (v16 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_169;
    }

    v18 = *(v11 + 8 * v16 + 32);
    *&v303 = v17;
    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_1000A26F4((v19 > 1), v20 + 1, 1);
      v17 = v303;
    }

    ++v16;
    v17[2] = v20 + 1;
    v17[v20 + 4] = vadd_f32(v5, vmul_n_f32(v14, v18));
  }

  while (v16 != 15);

  v248 = a1;
  v21 = v17[2];
  if (v21)
  {
    *&v303 = _swiftEmptyArrayStorage;
    result = sub_1000A26F4(0, v21, 0);
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    v24 = vrev64_s32(vmul_f32(v10, vdup_n_s32(0x42480000u)));
    while (v22 < v17[2])
    {
      v25 = v17[v22 + 4];
      *&v303 = v23;
      v27 = v23[2];
      v26 = v23[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        result = sub_1000A26F4((v26 > 1), v27 + 1, 1);
        v23 = v303;
      }

      ++v22;
      LODWORD(v29) = vsub_f32(v25, v24).u32[0];
      HIDWORD(v29) = vadd_f32(v25, v24).i32[1];
      v23[2] = v28;
      v23[v27 + 4] = v29;
      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }

LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v30 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage[2];
  if (v28)
  {
LABEL_16:
    v30 = _swiftEmptyArrayStorage;
    v31 = 32;
    MeasureCore.shared.unsafeMutableAddressor();
    do
    {

      MeasureCore.edgeHitTest(screenPoint:frame:orientation:planeTypes:useHyperLocalStrategy:)();

      if (*(&v301 + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_100068304(0, *(v30 + 2) + 1, 1, v30);
        }

        v40 = *(v30 + 2);
        v39 = *(v30 + 3);
        if (v40 >= v39 >> 1)
        {
          v30 = sub_100068304((v39 > 1), v40 + 1, 1, v30);
        }

        v307 = v299;
        v308 = v300;
        v309 = v301;
        v310 = v302;
        v305 = v297;
        v306 = v298;
        v32 = v295;
        v303 = v295;
        v304 = v296;
        *(v30 + 2) = v40 + 1;
        v33 = &v30[128 * v40];
        v34 = v304;
        v35 = v306;
        *(v33 + 4) = v305;
        *(v33 + 5) = v35;
        *(v33 + 3) = v34;
        v36 = v307;
        v37 = v308;
        v38 = v309;
        *(v33 + 36) = v310;
        *(v33 + 7) = v37;
        *(v33 + 8) = v38;
        *(v33 + 6) = v36;
        *(v33 + 2) = v32;
      }

      v31 += 8;
      --v28;
    }

    while (v28);
  }

  v41 = *(v30 + 2);
  if (v41)
  {
    *&v278 = _swiftEmptyArrayStorage;
    sub_1000A2654(0, v41, 0);
    v42 = _swiftEmptyArrayStorage;
    v43 = v41 - 1;
    for (i = 32; ; i += 128)
    {
      v46 = *&v30[i + 32];
      v45 = *&v30[i + 48];
      v47 = *&v30[i];
      v304 = *&v30[i + 16];
      v305 = v46;
      v306 = v45;
      v49 = *&v30[i + 80];
      v48 = *&v30[i + 96];
      v50 = *&v30[i + 112];
      v307 = *&v30[i + 64];
      v308 = v49;
      v303 = v47;
      v310 = v50;
      v309 = v48;
      simd_float4x4.position.getter();
      v268 = v51;
      sub_100103724(&v303, &v287);
      *&v278 = v42;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        sub_1000A2654((v52 > 1), v53 + 1, 1);
        v42 = v278;
      }

      v54 = *(&v309 + 1);
      v42[2] = v53 + 1;
      v55 = &v42[4 * v53];
      *(v55 + 2) = v268;
      v55[6] = v54;
      if (!v43)
      {
        break;
      }

      --v43;
    }

    if (v21)
    {
LABEL_31:
      *&v303 = _swiftEmptyArrayStorage;
      result = sub_1000A26F4(0, v21, 0);
      v56 = 0;
      v57 = v303;
      v58 = vrev64_s32(vmul_f32(v10, vdup_n_s32(0x42480000u)));
      while (v56 < v17[2])
      {
        v59 = v17[v56 + 4];
        *&v303 = v57;
        v61 = *(v57 + 16);
        v60 = *(v57 + 24);
        if (v61 >= v60 >> 1)
        {
          result = sub_1000A26F4((v60 > 1), v61 + 1, 1);
          v57 = v303;
        }

        ++v56;
        LODWORD(v62) = vadd_f32(v59, v58).u32[0];
        HIDWORD(v62) = vsub_f32(v59, v58).i32[1];
        *(v57 + 16) = v61 + 1;
        *(v57 + 8 * v61 + 32) = v62;
        if (v21 == v56)
        {

          v63 = *(v57 + 16);
          if (!v63)
          {
            goto LABEL_55;
          }

          goto LABEL_37;
        }
      }

LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
    if (v21)
    {
      goto LABEL_31;
    }
  }

  v63 = _swiftEmptyArrayStorage[2];
  if (v63)
  {
LABEL_37:
    MeasureCore.shared.unsafeMutableAddressor();
    v64 = v63 - 1;
    v65 = _swiftEmptyArrayStorage;
    for (j = 32; ; j += 8)
    {

      MeasureCore.edgeHitTest(screenPoint:frame:orientation:planeTypes:useHyperLocalStrategy:)();
      v291 = v307;
      v292 = v308;
      v293 = v309;
      v294 = v310;
      v287 = v303;
      v288 = v304;
      v289 = v305;
      v290 = v306;

      if (*(&v309 + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_100068304(0, *(v65 + 2) + 1, 1, v65);
        }

        v68 = *(v65 + 2);
        v67 = *(v65 + 3);
        if (v68 >= v67 >> 1)
        {
          v65 = sub_100068304((v67 > 1), v68 + 1, 1, v65);
        }

        v282 = v291;
        v283 = v292;
        v284 = v293;
        v285 = v294;
        v280 = v289;
        v281 = v290;
        v69 = v287;
        v278 = v287;
        v279 = v288;
        *(v65 + 2) = v68 + 1;
        v70 = &v65[128 * v68];
        v71 = v279;
        v72 = v281;
        *(v70 + 4) = v280;
        *(v70 + 5) = v72;
        *(v70 + 3) = v71;
        v73 = v282;
        v74 = v283;
        v75 = v284;
        *(v70 + 36) = v285;
        *(v70 + 7) = v74;
        *(v70 + 8) = v75;
        *(v70 + 6) = v73;
        *(v70 + 2) = v69;
      }

      if (!v64)
      {
        break;
      }

      --v64;
    }

    v76 = *(v65 + 2);
    if (!v76)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_55:

    v65 = _swiftEmptyArrayStorage;
    v76 = _swiftEmptyArrayStorage[2];
    if (!v76)
    {
LABEL_56:

      v77 = _swiftEmptyArrayStorage;
      goto LABEL_57;
    }
  }

  v286 = _swiftEmptyArrayStorage;
  sub_1000A2654(0, v76, 0);
  v77 = _swiftEmptyArrayStorage;
  v78 = v76 - 1;
  for (k = 32; ; k += 128)
  {
    v81 = *&v65[k + 32];
    v80 = *&v65[k + 48];
    v82 = *&v65[k];
    v288 = *&v65[k + 16];
    v289 = v81;
    v290 = v80;
    v84 = *&v65[k + 80];
    v83 = *&v65[k + 96];
    v85 = *&v65[k + 112];
    v291 = *&v65[k + 64];
    v292 = v84;
    v287 = v82;
    v294 = v85;
    v293 = v83;
    simd_float4x4.position.getter();
    v276 = v86;
    sub_100103724(&v287, &v278);
    v286 = v77;
    v88 = v77[2];
    v87 = v77[3];
    if (v88 >= v87 >> 1)
    {
      sub_1000A2654((v87 > 1), v88 + 1, 1);
      v77 = v286;
    }

    v89 = *(&v293 + 1);
    v77[2] = v88 + 1;
    v90 = &v77[4 * v88];
    *(v90 + 2) = v276;
    v90[6] = v89;
    if (!v78)
    {
      break;
    }

    --v78;
  }

LABEL_57:
  v91 = sub_10011D0D0(v42);

  v92 = sub_10011D0D0(v77);

  v93 = objc_opt_self();
  v94 = [v93 standardUserDefaults];
  v95 = [v94 showRefinementPlanes];

  if (v95)
  {
    v96 = *(v265 + 256);
    if (v96)
    {
      v97 = v96;
      SCNNode.removeAllChildren()();
    }

    sub_10000F974(&qword_1004A9E18);
    v98 = swift_allocObject();
    *(v98 + 32) = v91;
    *(v98 + 40) = v92;
    swift_bridgeObjectRetain_n();

    if (v91)
    {
      v99 = *(v91 + 16);
      if (v99)
      {
        v100 = 0;
        v101 = v91 + 48;
        while (v100 < v99)
        {
          ++v100;

          sub_10011A740(v102, v265);

          v99 = *(v91 + 16);
          v101 += 32;
          if (v100 == v99)
          {
            goto LABEL_65;
          }
        }

        goto LABEL_175;
      }
    }

LABEL_65:
    v103 = *(v98 + 40);

    if (v103)
    {
      v104 = *(v103 + 16);
      if (v104)
      {
        v105 = 0;
        v106 = v103 + 48;
        while (v105 < v104)
        {
          ++v105;

          sub_10011A740(v107, v265);

          v104 = *(v103 + 16);
          v106 += 32;
          if (v105 == v104)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_175;
      }
    }

LABEL_70:
    swift_setDeallocating();
    sub_10000F974(&qword_1004A9E20);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  v108 = sub_10011D0D0(v91);

  v109 = sub_10011D0D0(v92);

  v110 = [v93 standardUserDefaults];
  v111 = [v110 showRefinementPlanes];

  if (v111)
  {
    v112 = [v93 standardUserDefaults];
    v113 = [v112 showFilteredRefinementPlanes];

    if (v113)
    {
      sub_10000F974(&qword_1004A9E18);
      v114 = swift_allocObject();
      *(v114 + 32) = v108;
      *(v114 + 40) = v109;
      swift_bridgeObjectRetain_n();

      if (v108)
      {
        v115 = *(v108 + 16);
        if (v115)
        {
          v116 = 0;
          v117 = v108 + 48;
          while (v116 < v115)
          {
            ++v116;

            sub_10011B23C(v118, v265);

            v115 = *(v108 + 16);
            v117 += 32;
            if (v116 == v115)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_176;
        }
      }

LABEL_78:
      v119 = *(v114 + 40);

      if (v119)
      {
        v120 = *(v119 + 16);
        if (v120)
        {
          v121 = 0;
          v122 = v119 + 48;
          while (v121 < v120)
          {
            ++v121;

            sub_10011B23C(v123, v265);

            v120 = *(v119 + 16);
            v122 += 32;
            if (v121 == v120)
            {
              goto LABEL_83;
            }
          }

          goto LABEL_176;
        }
      }

LABEL_83:
      swift_setDeallocating();
      sub_10000F974(&qword_1004A9E20);
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }
  }

  v124 = sub_10011D6C8(v108, v109);
  v126 = v125;

  v127 = v124[1].i64[0];
  v277 = v124;
  if (v127)
  {
    v128 = 0;
    v129 = v124 + 3;
    v252 = v127 - 1;
    v258 = _swiftEmptyArrayStorage;
    v255 = v124 + 3;
LABEL_86:
    v130 = &v129[2 * v128];
    v131 = v128;
    while (v131 < v124[1].i64[0])
    {
      v259 = v130[-1];
      v132 = v130->i64[0];
      v128 = v131 + 1;
      v133 = *(*v130->i64[0] + 160);

      v135 = v133(v134);
      [v135 transform];

      simd_float4x4.up.getter();
      v137 = vmulq_f32(v136, v136);
      *&v138 = v137.f32[2] + vaddv_f32(*v137.f32);
      *v137.f32 = vrsqrte_f32(v138);
      *v137.f32 = vmul_f32(*v137.f32, vrsqrts_f32(v138, vmul_f32(*v137.f32, *v137.f32)));
      v139 = vmulq_n_f32(v136, vmul_f32(*v137.f32, vrsqrts_f32(v138, vmul_f32(*v137.f32, *v137.f32))).f32[0]);
      if (fabsf(vmuls_lane_f32(0.0, v139, 2) + (v139.f32[1] + (0.0 * v139.f32[0]))) < 0.20791)
      {
        v140 = v258;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v287 = v258;
        if ((result & 1) == 0)
        {
          result = sub_1000A2654(0, v258[2] + 1, 1);
          v140 = v287;
        }

        v141 = v259;
        v143 = v140[2];
        v142 = v140[3];
        if (v143 >= v142 >> 1)
        {
          result = sub_1000A2654((v142 > 1), v143 + 1, 1);
          v141 = v259;
          v140 = v287;
        }

        v140[2] = v143 + 1;
        v258 = v140;
        v144 = &v140[4 * v143];
        v144[2] = v141;
        v144[3].i64[0] = v132;
        v129 = v255;
        v124 = v277;
        if (v252 != v131)
        {
          goto LABEL_86;
        }

LABEL_96:
        v145 = 0;
        v146 = v124 + 3;
        v256 = _swiftEmptyArrayStorage;
        v249 = v124 + 3;
LABEL_97:
        v147 = &v146[2 * v145];
        v148 = v145;
        while (v148 < v124[1].i64[0])
        {
          v260 = v147[-1];
          v149 = v147->i64[0];
          v145 = v148 + 1;
          v150 = *(*v147->i64[0] + 160);

          v152 = v150(v151);
          [v152 transform];

          simd_float4x4.up.getter();
          v154 = vmulq_f32(v153, v153);
          *&v155 = v154.f32[2] + vaddv_f32(*v154.f32);
          *v154.f32 = vrsqrte_f32(v155);
          *v154.f32 = vmul_f32(*v154.f32, vrsqrts_f32(v155, vmul_f32(*v154.f32, *v154.f32)));
          v156 = vmulq_n_f32(v153, vmul_f32(*v154.f32, vrsqrts_f32(v155, vmul_f32(*v154.f32, *v154.f32))).f32[0]);
          v157 = fabsf(vmuls_lane_f32(0.0, v156, 2) + (v156.f32[1] + (0.0 * v156.f32[0])));
          if (v157 > 1.0)
          {
            v157 = 1.0;
          }

          if ((acosf(v157) * 57.296) < 12.0)
          {
            v158 = v256;
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v287 = v256;
            if ((result & 1) == 0)
            {
              result = sub_1000A2654(0, v256[2] + 1, 1);
              v158 = v287;
            }

            v159 = v260;
            v161 = v158[2];
            v160 = v158[3];
            v162 = v158;
            if (v161 >= v160 >> 1)
            {
              result = sub_1000A2654((v160 > 1), v161 + 1, 1);
              v159 = v260;
              v162 = v287;
            }

            v162[2] = v161 + 1;
            v256 = v162;
            v163 = &v162[4 * v161];
            v163[2] = v159;
            v163[3].i64[0] = v149;
            v124 = v277;
            v146 = v249;
            if (v252 != v148)
            {
              goto LABEL_97;
            }

            goto LABEL_111;
          }

          v147 += 2;
          ++v148;
          v124 = v277;
          if (v127 == v145)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_172;
      }

      v130 += 2;
      ++v131;
      v124 = v277;
      if (v127 == v128)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_171;
  }

  v258 = _swiftEmptyArrayStorage;
  v256 = _swiftEmptyArrayStorage;
LABEL_111:
  v164 = *(v126 + 16);
  if (v164)
  {
    v165 = 0;
    v166 = v126 + 48;
    v247 = v164 - 1;
    v253 = _swiftEmptyArrayStorage;
LABEL_113:
    v167 = (v166 + 32 * v165);
    v168 = v165;
    while (v168 < *(v126 + 16))
    {
      v261 = *(v167 - 1);
      v169 = *v167;
      v165 = v168 + 1;
      v170 = *(**v167 + 160);

      v172 = v170(v171);
      [v172 transform];

      simd_float4x4.up.getter();
      v174 = vmulq_f32(v173, v173);
      *&v175 = v174.f32[2] + vaddv_f32(*v174.f32);
      *v174.f32 = vrsqrte_f32(v175);
      *v174.f32 = vmul_f32(*v174.f32, vrsqrts_f32(v175, vmul_f32(*v174.f32, *v174.f32)));
      v176 = vmulq_n_f32(v173, vmul_f32(*v174.f32, vrsqrts_f32(v175, vmul_f32(*v174.f32, *v174.f32))).f32[0]);
      if (fabsf(vmuls_lane_f32(0.0, v176, 2) + (v176.f32[1] + (0.0 * v176.f32[0]))) < 0.20791)
      {
        v177 = v253;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v287 = v253;
        if ((result & 1) == 0)
        {
          result = sub_1000A2654(0, v253[2] + 1, 1);
          v177 = v287;
        }

        v178 = v261;
        v180 = v177[2];
        v179 = v177[3];
        if (v180 >= v179 >> 1)
        {
          result = sub_1000A2654((v179 > 1), v180 + 1, 1);
          v178 = v261;
          v177 = v287;
        }

        v177[2] = v180 + 1;
        v253 = v177;
        v181 = &v177[4 * v180];
        *(v181 + 2) = v178;
        v181[6] = v169;
        v166 = v126 + 48;
        if (v247 != v168)
        {
          goto LABEL_113;
        }

LABEL_123:
        v182 = 0;
        v183 = v126 + 48;
        v184 = _swiftEmptyArrayStorage;
LABEL_124:
        v250 = v184;
        v185 = (v183 + 32 * v182);
        v186 = v182;
        while (v186 < *(v126 + 16))
        {
          v262 = *(v185 - 1);
          v187 = *v185;
          v182 = v186 + 1;
          v188 = *(**v185 + 160);

          v190 = v188(v189);
          [v190 transform];

          simd_float4x4.up.getter();
          v192 = vmulq_f32(v191, v191);
          *&v193 = v192.f32[2] + vaddv_f32(*v192.f32);
          *v192.f32 = vrsqrte_f32(v193);
          *v192.f32 = vmul_f32(*v192.f32, vrsqrts_f32(v193, vmul_f32(*v192.f32, *v192.f32)));
          v194 = vmulq_n_f32(v191, vmul_f32(*v192.f32, vrsqrts_f32(v193, vmul_f32(*v192.f32, *v192.f32))).f32[0]);
          v195 = fabsf(vmuls_lane_f32(0.0, v194, 2) + (v194.f32[1] + (0.0 * v194.f32[0])));
          if (v195 > 1.0)
          {
            v195 = 1.0;
          }

          if ((acosf(v195) * 57.296) < 12.0)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            v184 = v250;
            *&v287 = v250;
            if ((result & 1) == 0)
            {
              result = sub_1000A2654(0, v250[2] + 1, 1);
              v184 = v287;
            }

            v196 = v262;
            v198 = v184[2];
            v197 = v184[3];
            if (v198 >= v197 >> 1)
            {
              result = sub_1000A2654((v197 > 1), v198 + 1, 1);
              v196 = v262;
              v184 = v287;
            }

            v184[2] = v198 + 1;
            v199 = &v184[4 * v198];
            *(v199 + 2) = v196;
            v199[6] = v187;
            v183 = v126 + 48;
            if (v247 == v186)
            {
              v200 = v253;
              goto LABEL_138;
            }

            goto LABEL_124;
          }

          v185 += 4;
          ++v186;
          if (v164 == v182)
          {
            v200 = v253;
            v184 = v250;
            goto LABEL_138;
          }
        }

        goto LABEL_174;
      }

      v167 += 4;
      ++v168;
      if (v164 == v165)
      {
        goto LABEL_123;
      }
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    return result;
  }

  v200 = _swiftEmptyArrayStorage;
  v184 = _swiftEmptyArrayStorage;
LABEL_138:
  v201 = v184[2];
  if (v201 <= 3)
  {

    v206 = v200[2];
    if (v206 < 4)
    {

      v263 = 0u;
      v254 = 1;
      v204 = 0.0;
      v205 = 0x2000000;
      v251 = 0u;
    }

    else
    {
      v264 = sub_10011DF14(v200);
      *&v287 = _swiftEmptyArrayStorage;
      sub_1000A2570(0, v206, 0);
      v207 = 6;
      v208 = v287;
      v209 = v206;
      do
      {
        v210 = *(*v200[v207] + 160);

        v212 = v210(v211);
        [v212 transform];

        simd_float4x4.up.getter();
        *&v287 = v208;
        v215 = *(v208 + 16);
        v214 = *(v208 + 24);
        if (v215 >= v214 >> 1)
        {
          v270 = v213;
          sub_1000A2570((v214 > 1), v215 + 1, 1);
          v213 = v270;
          v208 = v287;
        }

        *(v208 + 16) = v215 + 1;
        *(v208 + 16 * v215 + 32) = v213;
        v207 += 4;
        --v209;
      }

      while (v209);

      static SIMD3<>.average(_:)();
      v271 = v216;

      v217 = vmulq_f32(v271, v271);
      *&v218 = v217.f32[2] + vaddv_f32(*v217.f32);
      *v217.f32 = vrsqrte_f32(v218);
      *v217.f32 = vmul_f32(*v217.f32, vrsqrts_f32(v218, vmul_f32(*v217.f32, *v217.f32)));
      *v217.f32 = vmul_f32(*v217.f32, vrsqrts_f32(v218, vmul_f32(*v217.f32, *v217.f32)));
      v217.i64[1] = v217.i64[0];
      sub_10011E194(&v278, v264, vtrn2q_s32(vrev64q_s32(vmulq_f32(v271, v217)), 0));
      v205 = 0;
      v251 = v279;
      v263 = v278;
      v254 = v280;
      v204 = v206 / 15.0;
    }
  }

  else
  {
    v202 = v184;

    v269 = sub_10011DF14(v202);

    v203 = SIMD3<>.up.unsafeMutableAddressor();
    sub_10011E194(&v278, v269, *v203);
    v251 = v279;
    v263 = v278;
    v254 = v280;
    v204 = v201 / 15.0;
    v205 = 0x1000000;
  }

  v219 = v256[2];
  if (v219 < 4)
  {

    v227 = v258[2];
    if (v227 < 4)
    {

      v266 = 0u;
      v273 = 0u;
      v221 = 1;
      v224 = 0.0;
      v223 = 2139095040;
      v225 = 0x20000;
      v226 = *(v126 + 16);
      if (!v226)
      {
LABEL_161:

        v237 = _swiftEmptyArrayStorage;
        goto LABEL_162;
      }
    }

    else
    {
      v257 = sub_10011DF14(v258);
      *&v287 = _swiftEmptyArrayStorage;
      sub_1000A2570(0, v227, 0);
      v228 = 6;
      v229 = v287;
      v225 = v227;
      do
      {
        v230 = *(*v258[v228] + 160);

        v232 = v230(v231);
        [v232 transform];

        simd_float4x4.up.getter();
        *&v287 = v229;
        v235 = *(v229 + 16);
        v234 = *(v229 + 24);
        if (v235 >= v234 >> 1)
        {
          v274 = v233;
          sub_1000A2570((v234 > 1), v235 + 1, 1);
          v233 = v274;
          v229 = v287;
        }

        *(v229 + 16) = v235 + 1;
        *(v229 + 16 * v235 + 32) = v233;
        v228 += 4;
        --v225;
      }

      while (v225);
      static SIMD3<>.average(_:)();
      v275 = v238;

      v239 = vmulq_f32(v275, v275);
      *&v240 = v239.f32[2] + vaddv_f32(*v239.f32);
      *v239.f32 = vrsqrte_f32(v240);
      *v239.f32 = vmul_f32(*v239.f32, vrsqrts_f32(v240, vmul_f32(*v239.f32, *v239.f32)));
      *v239.f32 = vmul_f32(*v239.f32, vrsqrts_f32(v240, vmul_f32(*v239.f32, *v239.f32)));
      v239.i64[1] = v239.i64[0];
      sub_10011E194(&v287, v257, vtrn2q_s32(vrev64q_s32(vmulq_f32(v275, v239)), 0));
      v266 = v288;
      v273 = v287;
      v221 = v289;
      sub_10011E310(v258);
      v223 = v241;

      v224 = v227 / 15.0;
      v226 = *(v126 + 16);
      if (!v226)
      {
        goto LABEL_161;
      }
    }
  }

  else
  {

    v272 = sub_10011DF14(v256);
    v220 = SIMD3<>.up.unsafeMutableAddressor();
    sub_10011E194(&v287, v272, *v220);
    v266 = v288;
    v273 = v287;
    v221 = v289;
    sub_10011E310(v256);
    v223 = v222;

    v224 = v219 / 15.0;
    v225 = 0x10000;
    v226 = *(v126 + 16);
    if (!v226)
    {
      goto LABEL_161;
    }
  }

  v286 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v236 = 48;
  do
  {

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v236 += 32;
    --v226;
  }

  while (v226);

  v237 = v286;
LABEL_162:
  v242 = sub_10011E810(v237);

  v243 = v277[1].i64[0];
  if (v243)
  {
    v286 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v244 = 48;
    do
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v244 += 32;
      --v243;
    }

    while (v243);

    v245 = v286;
  }

  else
  {

    v245 = _swiftEmptyArrayStorage;
  }

  v246 = sub_10011E810(v245);

  *v248 = v273;
  *(v248 + 16) = v266;
  *(v248 + 32) = v221;
  *(v248 + 48) = v263;
  *(v248 + 64) = v251;
  *(v248 + 80) = v254;
  *(v248 + 84) = v246 | (v242 << 8) | v225 | v205 | (LODWORD(v224) << 32);
  *(v248 + 92) = v204;
  *(v248 + 96) = v223;
  return result;
}

void sub_10011A740(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 160);
  v5 = v4();
  [v5 transform];

  simd_float4x4.up.getter();
  v6 = static simd_float4x4.make(position:normalizedForward:)();
  v7 = (v4)(v6);
  [v7 transform];
  v49 = v8;
  v47 = v10;
  v48 = v9;

  v11 = simd_float4x4.up.getter();
  v13 = vmulq_f32(v12, v12);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  v15 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  if (fabsf(vmuls_lane_f32(0.0, v15, 2) + (v15.f32[1] + (0.0 * v15.f32[0]))) >= 0.20791)
  {
    v17 = (v4)(v11);
    [v17 transform];
    v49 = v18;
    v47 = v20;
    v48 = v19;

    simd_float4x4.up.getter();
    v22 = vmulq_f32(v21, v21);
    *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
    *v22.f32 = vrsqrte_f32(v23);
    *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
    v24 = vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
    v25 = fabsf(vmuls_lane_f32(0.0, v24, 2) + (v24.f32[1] + (0.0 * v24.f32[0])));
    if (v25 > 1.0)
    {
      v25 = 1.0;
    }

    v16 = dbl_1003DDA00[(acosf(v25) * 57.296) < 12.0];
  }

  else
  {
    v16 = 0.9;
  }

  v26 = sub_10011D660(a1);
  v27 = objc_opt_self();
  v28 = [v27 boxWithWidth:0.04 height:0.04 length:0.0 chamferRadius:0.0];
  v29 = [v27 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
  v30 = [v29 firstMaterial];
  if (!v30)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = [v30 diffuse];

  v33 = objc_opt_self();
  v34 = [v33 redColor];
  [v32 setContents:v34];

  v35 = [v33 blackColor];
  if (v26 == v35 || (sub_100018630(0, &qword_1004AE0D0), v36 = [v33 magentaColor], v37 = static NSObject.== infix(_:_:)(), v36, (v37 & 1) != 0))
  {
    [v28 setWidth:{0.07, v47, v48, v49}];
    [v28 setHeight:0.07];
  }

  v38 = v28;
  v39 = [v38 firstMaterial];
  if (!v39)
  {
    goto LABEL_16;
  }

  v40 = v39;
  v41 = [v39 diffuse];

  [v41 setContents:v26];
  v42 = [objc_allocWithZone(SCNNode) init];
  v43 = [objc_allocWithZone(SCNNode) init];
  SCNMatrix4.init(_:)();
  [v42 setTransform:v50];
  simd_float4x4.forward.getter();
  static simd_float4x4.make(position:normalizedForward:)();
  SCNMatrix4.init(_:)();
  [v43 setTransform:v50];
  [v42 setOpacity:v16];
  [v42 setGeometry:v38];

  [v43 setGeometry:v29];
  v44 = *(a2 + 256);
  if (v44)
  {
    [v44 addChildNode:v42];
    v45 = *(a2 + 256);
    if (v45)
    {
      v46 = v45;
      [v46 addChildNode:v43];
    }
  }
}

void sub_10011ACC0(id a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a3;
  v10 = a5 * 0.04;
  v11 = objc_opt_self();
  v12 = [v11 boxWithWidth:v10 height:v10 length:0.0 chamferRadius:0.0];
  v13 = [v11 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
  v14 = [v13 firstMaterial];
  if (!v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 diffuse];

  v17 = objc_opt_self();
  v18 = [v17 redColor];
  [v16 setContents:v18];

  v19 = [v17 blackColor];
  if (v19 == a1 || (sub_100018630(0, &qword_1004AE0D0), v20 = [v17 magentaColor], v21 = static NSObject.== infix(_:_:)(), v20, (v21 & 1) != 0))
  {
    [v12 setWidth:{0.07, v44}];
    [v12 setHeight:0.07];
  }

  v46 = v6;
  v22 = v12;
  v23 = [v22 firstMaterial];
  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = v23;
  v25 = [v23 diffuse];

  [v25 setContents:a1];
  v26 = [objc_allocWithZone(SCNNode) init];
  v27 = [objc_allocWithZone(SCNNode) init];
  SCNMatrix4.init(_:)();
  [v26 setTransform:v47];
  simd_float4x4.forward.getter();
  static simd_float4x4.make(position:normalizedForward:)();
  SCNMatrix4.init(_:)();
  [v27 setTransform:v47];
  v28 = 0.4;
  if (a2)
  {
    v28 = 0.9;
  }

  [v26 setOpacity:{v28, v44}];
  [v26 setGeometry:v22];

  [v27 setGeometry:v13];
  if (a4)
  {
    v47[0] = v45;
    v47[1] = a4;

    v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v30 = [objc_opt_self() textWithString:v29 extrusionDepth:0.1];
    swift_unknownObjectRelease();
    v31 = [objc_opt_self() systemFontOfSize:1.0];
    [v30 setFont:v31];

    [v30 setFlatness:0.1];
    v32 = v30;
    v33 = [v32 firstMaterial];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 diffuse];

      v36 = [v17 whiteColor];
      [v35 setContents:v36];
    }

    v37 = [objc_opt_self() nodeWithGeometry:v32];

    v48 = SCNVector3.init(_:_:_:)(0.01, 0.01, 0.01);
    [v37 setScale:{*&v48.x, *&v48.y, *&v48.z}];
    *&v38 = SCNVector3Zero.x;
    *&v39 = SCNVector3Zero.y;
    *&v40 = SCNVector3Zero.z;
    [v37 setPosition:{v38, v39, v40}];
    [v26 addChildNode:v37];
  }

  v41 = *(v46 + 256);
  if (v41)
  {
    [v41 addChildNode:v26];
    v42 = *(v46 + 256);
    if (v42)
    {
      v43 = v42;
      [v43 addChildNode:v27];
    }
  }
}

void sub_10011B23C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 160);
  v3 = v2();
  [v3 transform];

  simd_float4x4.up.getter();
  v4 = static simd_float4x4.make(position:normalizedForward:)();
  v5 = (v2)(v4);
  [v5 transform];

  v6 = simd_float4x4.up.getter();
  v8 = vmulq_f32(v7, v7);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  if (fabsf(vmuls_lane_f32(0.0, v10, 2) + (v10.f32[1] + (0.0 * v10.f32[0]))) >= 0.20791)
  {
    v12 = (v2)(v6);
    [v12 transform];

    simd_float4x4.up.getter();
    v14 = vmulq_f32(v13, v13);
    *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
    *v14.f32 = vrsqrte_f32(v15);
    *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
    v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
    v17 = fabsf(vmuls_lane_f32(0.0, v16, 2) + (v16.f32[1] + (0.0 * v16.f32[0])));
    if (v17 > 1.0)
    {
      v17 = 1.0;
    }

    v11 = dbl_1003DDA00[(acosf(v17) * 57.296) < 12.0];
  }

  else
  {
    v11 = 0.9;
  }

  v18 = objc_opt_self();
  v19 = [v18 blackColor];
  v20 = objc_opt_self();
  v21 = [v20 boxWithWidth:0.04 height:0.04 length:0.0 chamferRadius:0.0];
  v22 = [v20 boxWithWidth:0.001 height:0.001 length:0.05 chamferRadius:0.0];
  v23 = [v22 firstMaterial];
  if (!v23)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v23 diffuse];

  v26 = [v18 redColor];
  [v25 setContents:v26];

  v27 = [v18 blackColor];
  if (v19 == v27 || (sub_100018630(0, &qword_1004AE0D0), v28 = [v18 magentaColor], v29 = static NSObject.== infix(_:_:)(), v28, (v29 & 1) != 0))
  {
    [v21 setWidth:0.07];
    [v21 setHeight:0.07];
  }

  v30 = v21;
  v31 = [v30 firstMaterial];
  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = v31;
  v33 = [v31 diffuse];

  [v33 setContents:v19];
  v34 = [objc_allocWithZone(SCNNode) init];
  v35 = [objc_allocWithZone(SCNNode) init];
  SCNMatrix4.init(_:)();
  [v34 setTransform:v40];
  simd_float4x4.forward.getter();
  static simd_float4x4.make(position:normalizedForward:)();
  SCNMatrix4.init(_:)();
  [v35 setTransform:v40];
  [v34 setOpacity:v11];
  [v34 setGeometry:v30];

  [v35 setGeometry:v22];
  v36 = *(a2 + 256);
  if (v36)
  {
    [v36 addChildNode:v34];
    v37 = *(a2 + 256);
    if (v37)
    {
      v38 = v37;
      [v38 addChildNode:v35];
    }
  }
}

void sub_10011B7CC(uint64_t a1)
{
  SCNVector3.init(_:)();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  SCNVector3.init(_:)();
  v39[0] = v2;
  v39[1] = v4;
  v39[2] = v6;
  v39[3] = v7;
  v39[4] = v8;
  v39[5] = v9;
  v10 = [objc_allocWithZone(NSData) initWithBytes:v39 length:24];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_1000C94CC(v11, v13);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [objc_opt_self() geometrySourceWithData:isa semantic:SCNGeometrySourceSemanticVertex vectorCount:2 floatComponents:1 componentsPerVector:3 bytesPerComponent:4 dataOffset:0 dataStride:12];

  sub_100038FD4(v11, v13);
  v16 = [objc_allocWithZone(NSData) initWithBytes:&unk_1004651E0 length:8];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_1000C94CC(v17, v19);
  v20 = Data._bridgeToObjectiveC()().super.isa;
  sub_100038FD4(v17, v19);
  v21 = [objc_opt_self() geometryElementWithData:v20 primitiveType:2 primitiveCount:1 bytesPerIndex:4];

  sub_10000F974(&unk_1004A3F10);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1003D56B0;
  *(v22 + 32) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1003D56B0;
  *(v23 + 32) = v21;
  sub_100018630(0, &qword_1004A9DF8);
  v37 = v15;
  v24 = v21;
  v25 = Array._bridgeToObjectiveC()().super.isa;

  sub_100018630(0, &qword_1004A9E00);
  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = [objc_opt_self() geometryWithSources:v25 elements:v26];

  v28 = [v27 firstMaterial];
  if (v28)
  {
    v29 = v28;
    [v28 setLightingModelName:SCNLightingModelConstant];
  }

  v30 = [v27 firstMaterial];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 diffuse];

    [v32 setContents:a1];
  }

  v33 = [objc_opt_self() nodeWithGeometry:v27];
  v34 = *(v38 + 256);
  if (v34)
  {
    v35 = v34;
    [v35 addChildNode:v33];
    sub_100038FD4(v11, v13);
    sub_100038FD4(v17, v19);
  }

  else
  {
    sub_100038FD4(v11, v13);
    sub_100038FD4(v17, v19);
  }
}

void *sub_10011BBBC(void *result, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while ((v10 - 1) != [a4 getPointCountAtContourIndex:a5])
    {
      [a4 getPointAtContourIndex:a5 pointIndex:v10 - 1];
      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        goto LABEL_12;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v8 = v10 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_10011BC90(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while ((v7 - 1) != [v3 getCornerCount])
    {
      [v3 getCornerAtIndex:v7 - 1];
      *v6 = v9;
      *(v6 + 16) = v10;
      if (v5 == v7)
      {
        goto LABEL_12;
      }

      v6 += 24;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v5 = v7 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_10011BD60(void *result, void *a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      if ((v7 - 1) == [v3 getContourCount])
      {
        v5 = v7 - 1;
        goto LABEL_13;
      }

      *v6 = v3;
      v6[1] = v7 - 1;
      if (v5 == v7)
      {
        break;
      }

      v6 += 2;
      v8 = v3;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v10 = v3;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double *sub_10011BE58(void *a1, uint64_t a2)
{
  v4 = [a1 getPointCountAtContourIndex:a2];
  result = [a1 getPointCountAtContourIndex:a2];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 getPointCountAtContourIndex:a2];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      if (v4)
      {
        v6 = sub_10006911C(v4, 0);
        if ([a1 getPointCountAtContourIndex:a2])
        {
          v7 = 0;
          v8 = (v4 - 1);
          v9 = 4;
          do
          {
            v10 = &v6[v9];
            [a1 getPointAtContourIndex:a2 pointIndex:v7];
            *v10 = v11;
            *(v10 + 1) = v12;
            if (v8 == v7)
            {
              return v6;
            }

            ++v7;
            v9 += 2;
          }

          while (v7 != [a1 getPointCountAtContourIndex:a2]);
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

double *sub_10011BF74(void *a1)
{
  v2 = [a1 getCornerCount];
  result = [a1 getCornerCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 getCornerCount];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = sub_100069130(v2, 0);
        if ([a1 getCornerCount])
        {
          v5 = 0;
          v6 = (v2 - 1);
          v7 = 4;
          do
          {
            v8 = &v4[v7];
            [a1 getCornerAtIndex:v5];
            *v8 = v9;
            *(v8 + 4) = v10;
            if (v6 == v5)
            {
              return v4;
            }

            ++v5;
            v7 += 3;
          }

          while (v5 != [a1 getCornerCount]);
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

double *sub_10011C084(void *a1)
{
  v2 = [a1 getContourCount];
  result = [a1 getContourCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 getContourCount];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = sub_1000691C0(v2, 0);
        v5 = a1;
        if ([v5 getContourCount])
        {
          v6 = 0;
          v7 = (v2 - 1);
          v8 = 4;
          do
          {
            v9 = &v4[v8];
            *v9 = v5;
            *(v9 + 1) = v6;
            if (v7 == v6)
            {
              return v4;
            }

            ++v6;
            v8 += 2;
          }

          while (v6 != [v5 getContourCount]);
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

void sub_10011C168(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10000F974(&qword_1004A6B30);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000F974(&qword_1004A6B28);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10011C254(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1000A4894(v8);
      v8 = result;
    }

    v85 = v8 + 2;
    v86 = v8[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10011C80C((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_117;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_118;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_119;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      while (v6 != v14)
      {
        v16 = *v15 >= *(v15 - 8);
        ++v14;
        v15 += 8;
        if ((((v10 < v13) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 32 * v7 - 32;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v17);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 16);
            v27 = *(v22 + v11 + 24);
            if (v11 != v17 || v23 >= v24 + 2)
            {
              v20 = v24[1];
              *v23 = *v24;
              v23[1] = v20;
            }

            v21 = v22 + v17;
            *v21 = v25;
            *(v21 + 16) = v26;
            *(v21 + 24) = v27;
          }

          ++v19;
          v17 -= 32;
          v11 += 32;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100067218(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v39 = v8[3];
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_100067218((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v40;
    v41 = v8 + 4;
    v42 = &v8[2 * v5 + 4];
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = v8[4];
          v44 = v8[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_60:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v8[2 * v40];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_109;
          }

          v65 = &v41[2 * v5];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v40 < 2)
        {
          goto LABEL_115;
        }

        v69 = &v8[2 * v40];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_75:
        if (v64)
        {
          goto LABEL_111;
        }

        v72 = &v41[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v80 = &v41[2 * v5 - 2];
        v81 = *v80;
        v82 = &v41[2 * v5];
        v83 = v82[1];
        sub_10011C80C((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v8[2];
        if (v5 >= v84)
        {
          goto LABEL_104;
        }

        v40 = v84 - 1;
        result = memmove(&v41[2 * v5], v82 + 2, 16 * (v84 - 1 - v5));
        v8[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[2 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v8[2 * v40];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_110;
      }

      if (v58 >= v50)
      {
        v76 = &v41[2 * v5];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_116;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7 + 24;
  v30 = v9 - v7;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    if (*v32 >= *(v32 - 32))
    {
LABEL_32:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v33 = (v32 - 24);
    v35 = *(v32 - 56);
    v34 = *(v32 - 40);
    *(v32 - 32) = *v32;
    v32 -= 32;
    v36 = *(v32 + 8);
    v37 = *(v32 + 24);
    *v33 = v35;
    v33[1] = v34;
    *(v32 - 24) = v36;
    *(v32 - 8) = v37;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
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
  return result;
}

uint64_t sub_10011C80C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 8 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[6] < v4[6])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 8 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v15 - 2) < *(v6 - 2))
      {
        v23 = v6 - 8;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 8, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 8;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 8;
      v15 -= 8;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= (v4 + v25))
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

void *sub_10011CA08(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A6F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v34 = sub_10000F974(&qword_1004A9E30);
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v27 - v5;
  v35 = sub_10000F974(&qword_1004A9E38);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v27 = &v27 - v7;
  v32 = sub_10000F974(&qword_1004A9E40);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v27 - v8;
  v31 = sub_10000F974(&qword_1004A9E48);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v27 - v10;
  v36 = a1;
  v12 = *(**(a1 + 80) + 200);

  v14 = v12(v13);

  v16 = (*(*v14 + 208))(v15);

  v38 = v16;
  if (qword_1004A0218 != -1)
  {
    swift_once();
  }

  v17 = qword_1004A7E08;
  v37 = qword_1004A7E08;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = v17;
  sub_10000F974(&qword_1004A9E50);
  sub_100018630(0, &qword_1004A3F00);
  sub_10001D47C(&qword_1004A9E58, &qword_1004A9E50);
  sub_1000F38F4();
  Publisher.receive<A>(on:options:)();
  sub_100018F04(v4, &qword_1004A6F50);

  sub_10001D47C(&qword_1004A9E60, &qword_1004A9E30);

  v20 = v27;
  v21 = v34;
  Publisher.filter(_:)();

  (*(v30 + 8))(v6, v21);
  sub_10001D47C(&qword_1004A9E68, &qword_1004A9E38);
  v22 = v35;
  Publisher.compactMap<A>(_:)();
  (*(v33 + 8))(v20, v22);
  v23 = v32;
  Publishers.CompactMap.map<A>(_:)();
  (*(v29 + 8))(v9, v23);
  sub_10001D47C(&qword_1004A9E70, &qword_1004A9E48);
  v24 = v31;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v28 + 8))(v11, v24);
  type metadata accessor for DepthEdgeDetector();
  swift_allocObject();
  return sub_1000CB584(v25);
}

float32x2_t sub_10011D040(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a3, a2);
  v4 = vmul_f32(v3, v3);
  v4.i32[0] = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v5 = vrsqrte_f32(v4.u32[0]);
  v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
  v7 = vmul_n_f32(v3, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]);
  v8 = vmul_f32(v7, v7);
  v8.i32[0] = vadd_f32(v8, vdup_lane_s32(v8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v11 = vmul_n_f32(v7, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
  v12 = vmul_f32(vsub_f32(a1, a2), v11);
  return vadd_f32(vmul_n_f32(v11, vadd_f32(v12, vdup_lane_s32(v12, 1)).f32[0]), a2);
}

uint64_t sub_10011D0D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1000A2694(0, v1, 0);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v40 = a1 + 32;
    v41 = a1 + 48;
    do
    {
      v5 = (v40 + 32 * v3++);
      v43 = *v5;
      v6 = v5[1].i64[0];
      v7 = *(*v6 + 160);

      v9 = v7(v8);
      [v9 transform];

      v10 = simd_float4x4.position.getter();
      v11 = v7(v10);
      [v11 transform];

      simd_float4x4.up.getter();
      v12 = 0;
      while (2)
      {
        v13 = (v41 + 32 * v12);
        v14 = v12;
        while (1)
        {
          if (v14 >= v1)
          {
            __break(1u);
LABEL_41:
            __break(1u);

            __break(1u);
            return result;
          }

          v12 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_41;
          }

          v15 = v13->i64[0];
          v42 = v13[-1];
          v16 = vmovn_s32(vceqq_f32(v42, v43));
          if ((v16.i8[0] & 1) == 0 || (v16.i8[2] & 1) == 0 || (v16.i8[4] & 1) == 0)
          {
            break;
          }

          type metadata accessor for WorldPlane();
          swift_retain_n();
          v17 = static WorldPlane.== infix(_:_:)();

          if ((v17 & 1) == 0)
          {
            goto LABEL_14;
          }

          ++v14;
          v13 += 2;
          if (v12 == v1)
          {
            v20 = _swiftEmptyArrayStorage[2];
            if (!v20)
            {
              v22 = 0.0;
              goto LABEL_25;
            }

            goto LABEL_21;
          }
        }

LABEL_14:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000A2654(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_1000A2654((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20;
        v21 = &_swiftEmptyArrayStorage[4 * v19];
        v21[2] = v42;
        v21[3].i64[0] = v15;
        if (v12 != v1)
        {
          continue;
        }

        break;
      }

LABEL_21:
      type metadata accessor for PlaneUtil();
      v22 = 0.0;
      v23 = 32;
      do
      {
        static PlaneUtil.distance(point:plane:)();
        v22 = v22 + v24;
        v23 += 32;
        --v20;
      }

      while (v20);
LABEL_25:

      v45 = v4;
      v26 = v4[2];
      v25 = v4[3];
      if (v26 >= v25 >> 1)
      {
        sub_1000A2694((v25 > 1), v26 + 1, 1);
        v4 = v45;
      }

      v4[2] = v26 + 1;
      v27 = &v4[4 * v26];
      v27[2] = v43;
      v27[3].i64[0] = v6;
      v27[3].f32[2] = v22;
    }

    while (v3 != v1);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v45 = v4;

  sub_100113820(&v45);

  v28 = v45;
  v29 = v45[2];
  if (v29)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1000A2654(0, v29, 0);
    v30 = 0;
    v31 = v45;
    v32 = v45[2];
    v33 = 4 * v32;
    do
    {
      v44 = *&v28[v30 + 4];
      v34 = v28[v30 + 6];
      v45 = v31;
      v35 = v31[3];

      if (v32 >= v35 >> 1)
      {
        sub_1000A2654((v35 > 1), v32 + 1, 1);
        v31 = v45;
      }

      v31[2] = v32 + 1;
      v36 = &v31[v33 + v30];
      *(v36 + 2) = v44;
      v36[6] = v34;
      v30 += 4;
      ++v32;
      --v29;
    }

    while (v29);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  if (v31[2] < 0xBuLL)
  {
    return v31;
  }

  sub_10011C168(v31, (v31 + 4), 0, 0x15uLL);
  v38 = v37;

  return v38;
}

BOOL sub_10011D52C(float32x4_t a1, float a2)
{
  v2 = vmulq_f32(a1, a1);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v4 = vmulq_n_f32(a1, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  return fabsf(vmuls_lane_f32(0.0, v4, 2) + (v4.f32[1] + (0.0 * v4.f32[0]))) < cosf((90.0 - a2) * 0.017453);
}

BOOL sub_10011D5C4(float32x4_t a1, float a2)
{
  v3 = vmulq_f32(a1, a1);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(a1, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v6 = fabsf(vmuls_lane_f32(0.0, v5, 2) + (v5.f32[1] + (0.0 * v5.f32[0])));
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  return (acosf(v6) * 57.296) < a2;
}

id sub_10011D660(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = objc_opt_self();
  if (v1 > 6)
  {
    v3 = &selRef_redColor;
  }

  else
  {
    v3 = off_10046E588[v1];
  }

  v4 = [v2 *v3];

  return v4;
}

float32x4_t *sub_10011D6C8(uint64_t a1, float32x4_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000A2550(0, v4, 0);
    simd_float4x4.position.getter();
    v6 = (v3 + 32);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = v4;
    v9 = v7;
    do
    {
      v10 = *v6;
      v11 = _swiftEmptyArrayStorage[3];
      v12 = v9 + 1;
      if (v9 >= v11 >> 1)
      {
        v85 = *v6;
        v87 = v5;
        sub_1000A2550((v11 > 1), v9 + 1, 1);
        v10 = v85;
        v5 = v87;
      }

      v13 = vsubq_f32(v10, v5);
      v14 = vmulq_f32(v13, v13);
      _swiftEmptyArrayStorage[2] = v12;
      *(&_swiftEmptyArrayStorage[4] + v9) = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
      v6 += 2;
      ++v9;
      --v8;
    }

    while (v8);
    v15 = v4 + v7;
    if (v4 + v7 > 7)
    {
      v16 = v15 & 0xFFFFFFFFFFFFFFF8;
      v21 = &_swiftEmptyArrayStorage[6];
      v17 = 0.0;
      v22 = v15 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v17 = (((((((v17 + COERCE_FLOAT(*(v21 - 1))) + COERCE_FLOAT(HIDWORD(*(v21 - 2)))) + COERCE_FLOAT(*(v21 - 1))) + COERCE_FLOAT(HIDWORD(*(v21 - 1)))) + COERCE_FLOAT(*v21)) + COERCE_FLOAT(HIDWORD(*v21))) + COERCE_FLOAT(v21[1])) + COERCE_FLOAT(HIDWORD(*v21));
        v21 += 4;
        v22 -= 8;
      }

      while (v22);
      if (v15 == v16)
      {
LABEL_15:

        v18 = v17 / v4;
        v19 = v2[1].u64[0];
        if (v19)
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0.0;
    }

    v23 = v12 - v16;
    v24 = &_swiftEmptyArrayStorage[4] + v16;
    do
    {
      v25 = *v24++;
      v17 = v17 + v25;
      --v23;
    }

    while (v23);
    goto LABEL_15;
  }

  v18 = INFINITY;
  v19 = a2[1].u64[0];
  if (v19)
  {
LABEL_16:
    sub_1000A2550(0, v19, 0);
    simd_float4x4.position.getter();
    v27 = v2 + 2;
    v28 = _swiftEmptyArrayStorage[2];
    v29 = v19;
    v30 = v28;
    do
    {
      v31 = *v27;
      v32 = _swiftEmptyArrayStorage[3];
      v33 = v30 + 1;
      if (v30 >= v32 >> 1)
      {
        v90 = *v27;
        v91 = v26;
        sub_1000A2550((v32 > 1), v30 + 1, 1);
        v31 = v90;
        v26 = v91;
      }

      v34 = vsubq_f32(v31, v26);
      v35 = vmulq_f32(v34, v34);
      _swiftEmptyArrayStorage[2] = v33;
      *(&_swiftEmptyArrayStorage[4] + v30) = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
      v27 += 2;
      ++v30;
      --v29;
    }

    while (v29);
    v36 = v19 + v28;
    if (v19 + v28 > 7)
    {
      v37 = v36 & 0xFFFFFFFFFFFFFFF8;
      v39 = &_swiftEmptyArrayStorage[6];
      v38 = 0.0;
      v40 = v36 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v38 = (((((((v38 + COERCE_FLOAT(*(v39 - 1))) + COERCE_FLOAT(HIDWORD(*(v39 - 2)))) + COERCE_FLOAT(*(v39 - 1))) + COERCE_FLOAT(HIDWORD(*(v39 - 1)))) + COERCE_FLOAT(*v39)) + COERCE_FLOAT(HIDWORD(*v39))) + COERCE_FLOAT(v39[1])) + COERCE_FLOAT(HIDWORD(*v39));
        v39 += 4;
        v40 -= 8;
      }

      while (v40);
      if (v36 == v37)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v37 = 0;
      v38 = 0.0;
    }

    v41 = v33 - v37;
    v42 = &_swiftEmptyArrayStorage[4] + v37;
    do
    {
      v43 = *v42++;
      v38 = v38 + v43;
      --v41;
    }

    while (v41);
LABEL_27:

    v20 = v38 / v19;
    goto LABEL_28;
  }

LABEL_9:
  v20 = INFINITY;
LABEL_28:
  if (vabds_f32(v18, v20) >= 0.04)
  {
    goto LABEL_69;
  }

  v86 = v2;
  v82 = v3;
  if (v4)
  {
    v44 = 0;
    v45 = v3 + 48;
    v46 = _swiftEmptyArrayStorage;
    v3 = 1045751499;
    v81 = v45;
    do
    {
      v83 = v46;
      v2 = (v45 + 32 * v44);
      v47 = v44;
      while (1)
      {
        if (v47 >= v4)
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v44 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_74;
        }

        v48 = v2->i64[0];
        v88 = v2[-1];
        v49 = *(*v2->i64[0] + 160);

        v51 = v49(v50);
        [v51 transform];

        simd_float4x4.up.getter();
        v53 = vmulq_f32(v52, v52);
        *&v54 = v53.f32[2] + vaddv_f32(*v53.f32);
        *v53.f32 = vrsqrte_f32(v54);
        *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32)));
        v55 = vmulq_n_f32(v52, vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32))).f32[0]);
        if (fabsf(vmuls_lane_f32(0.0, v55, 2) + (v55.f32[1] + (0.0 * v55.f32[0]))) < 0.20791)
        {
          break;
        }

        ++v47;
        v2 += 2;
        if (v44 == v4)
        {
          v46 = v83;
          goto LABEL_44;
        }
      }

      v46 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000A2654(0, v83[2] + 1, 1);
        v46 = v83;
      }

      v45 = v81;
      v56 = v88;
      v58 = v46[2];
      v57 = v46[3];
      if (v58 >= v57 >> 1)
      {
        sub_1000A2654((v57 > 1), v58 + 1, 1);
        v56 = v88;
        v46 = v83;
      }

      v46[2] = v58 + 1;
      v59 = &v46[4 * v58];
      v59[2] = v56;
      v59[3].i64[0] = v48;
    }

    while (v44 != v4);
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

LABEL_44:
  v84 = v46[2];

  if (v19)
  {
    v60 = 0;
    v61 = v86 + 3;
    v3 = 1045751499;
LABEL_46:
    v62 = &v61[2 * v60];
    v44 = v60;
    while (v44 < v19)
    {
      v60 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_76;
      }

      v63 = *v62;
      v89 = *(v62 - 1);
      v64 = (**v62)[10].i64[0];
      v2 = **v62 + 10;

      v66 = v64(v65);
      [v66 transform];

      simd_float4x4.up.getter();
      v68 = vmulq_f32(v67, v67);
      *&v69 = v68.f32[2] + vaddv_f32(*v68.f32);
      *v68.f32 = vrsqrte_f32(v69);
      *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
      v70 = vmulq_n_f32(v67, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]);
      if (fabsf(vmuls_lane_f32(0.0, v70, 2) + (v70.f32[1] + (0.0 * v70.f32[0]))) < 0.20791)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000A2654(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v71 = v89;
        v73 = _swiftEmptyArrayStorage[2];
        v72 = _swiftEmptyArrayStorage[3];
        if (v73 >= v72 >> 1)
        {
          sub_1000A2654((v72 > 1), v73 + 1, 1);
          v71 = v89;
        }

        _swiftEmptyArrayStorage[2] = v73 + 1;
        v74 = &_swiftEmptyArrayStorage[4 * v73];
        *(v74 + 2) = v71;
        v74[6] = v63;
        v61 = v86 + 3;
        if (v60 != v19)
        {
          goto LABEL_46;
        }

        goto LABEL_57;
      }

      ++v44;
      v62 += 4;
      if (v60 == v19)
      {
        goto LABEL_57;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_57:
  v44 = _swiftEmptyArrayStorage[2];

  v19 = v84;
  v2 = v86;
  v75 = v44 <= v84 ? v84 : v44;
  v76 = v44 >= v84 ? v84 : v44;
  v3 = v82;
  if ((v75 - v76) <= 7)
  {
LABEL_69:

    if (v18 >= v20)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  if (qword_1004A0228 != -1)
  {
LABEL_77:
    swift_once();
  }

  v77._object = 0x8000000100407B80;
  v77._countAndFlagsBits = 0xD00000000000004ELL;
  Log.default(_:isPrivate:)(v77, 0);
  swift_bridgeObjectRetain_n();

  i64 = v3;
  if (v44 < v19)
  {

    i64 = v2->i64;
  }

  v79 = i64;
  sub_10000F974(&qword_1004A9E28);
  swift_arrayDestroy();
  swift_bridgeObjectRetain_n();

  if (v19 < v44)
  {
  }

  swift_arrayDestroy();
  return v79;
}

float32x4_t sub_10011DF14(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
LABEL_2:
  v5 = (a1 + 32 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
LABEL_23:
      v21._object = 0x8000000100407B50;
      v21._countAndFlagsBits = 0xD00000000000002DLL;
      Log.default(_:isPrivate:)(v21, 0);
      return v24;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_27;
    }

    v7 = v5[3].i64[0];
    v5 += 2;
    ++v2;
    if (!*(v7 + 48))
    {
      v24 = *v5;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000A2654(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_1000A2654((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[4 * v9];
      v10[2] = v24;
      v10[3].i64[0] = v7;
      v2 = v6;
      goto LABEL_2;
    }
  }

  v11 = *SIMD3<>.zero.unsafeMutableAddressor();
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    v13 = &_swiftEmptyArrayStorage[4];
    v14 = _swiftEmptyArrayStorage[2];
    do
    {
      v15 = *v13;
      v13 += 2;
      v11 = vaddq_f32(v11, v15);
      v11.i32[3] = 0;
      --v14;
    }

    while (v14);
  }

  v25 = v11;

  if (v12 >= 2)
  {
    *v16.i32 = v12;
    v20.i64[0] = vdivq_f32(v25, vdupq_lane_s32(v16, 0)).u64[0];
    v20.f32[2] = v25.f32[2] / v12;
    v20.i32[3] = 0;
    v24 = v20;
    if (qword_1004A0228 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v3)
  {
    sub_1000A2570(0, v3, 0);
    v17 = _swiftEmptyArrayStorage[2];
    do
    {
      v18 = *v4;
      v19 = _swiftEmptyArrayStorage[3];
      if (v17 >= v19 >> 1)
      {
        v26 = *v4;
        sub_1000A2570((v19 > 1), v17 + 1, 1);
        v18 = v26;
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      *&_swiftEmptyArrayStorage[2 * v17 + 4] = v18;
      v4 += 2;
      ++v17;
      --v3;
    }

    while (v3);
  }

  static SIMD3<>.average(_:)();
  v24 = v22;

  return v24;
}

void sub_10011E194(uint64_t a1@<X8>, __n128 a2@<Q0>, float32x4_t a3@<Q1>)
{
  if (qword_1004A0328 != -1)
  {
    swift_once();
  }

  v4 = *&dword_1004D4EF4;
  simd_float4x4.forward.getter();
  v5 = vmulq_f32(a3, a3);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v7 = vmulq_n_f32(a3, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v9 = vmuls_n_f32(*v8.i32, *v7.i32);
  *v8.i8 = vmul_f32(vext_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL), 4uLL), *&vextq_s8(v7, v7, 4uLL));
  v10 = fabsf(*&v8.i32[1] + (v9 + *v8.i32));
  v11 = 0uLL;
  v12 = 0uLL;
  if (v10 > v4)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v13._object = 0x8000000100407AF0;
    v13._countAndFlagsBits = 0xD000000000000057;
    Log.default(_:isPrivate:)(v13, 0);
    v11 = a2;
    v12 = a3;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v10 <= v4;
}

uint64_t sub_10011E310(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  sub_1000A2694(0, v1, 0);
  v3 = 0;
  v4 = v2 + 32;
  v48 = v2 + 48;
  v47 = v2 + 32;
  do
  {
    v5 = (v4 + 32 * v3);
    v50 = *v5;
    v6 = v5[1].i64[0];
    if (v6[48] != 6)
    {

      v23 = 0.0;
      goto LABEL_29;
    }

    v7 = *(*v6 + 160);

    v9 = v7(v8);
    [v9 transform];

    v10 = simd_float4x4.position.getter();
    v11 = v7(v10);
    [v11 transform];

    result = simd_float4x4.up.getter();
    v49 = v12;
    v13 = 0;
LABEL_5:
    v14 = (v48 + 32 * v13);
    v15 = v13;
    do
    {
      if (v15 >= v1)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return result;
      }

      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_48;
      }

      v16 = v14->i64[0];
      v51 = v14[-1];
      v17 = vmovn_s32(vceqq_f32(v51, v50));
      if ((v17.i8[0] & 1) == 0 || (v17.i8[2] & 1) == 0 || (v17.i8[4] & 1) == 0)
      {

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000A2654(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          result = sub_1000A2654((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21;
        v22 = &_swiftEmptyArrayStorage[4 * v20];
        v22[2] = v51;
        v22[3].i64[0] = v16;
        if (v13 == v1)
        {
LABEL_23:
          v24 = 0;
          v23 = 0.0;
          v25 = 6;
          while (v24 < _swiftEmptyArrayStorage[2])
          {
            ++v24;
            v26 = *(*_swiftEmptyArrayStorage[v25] + 160);

            v28 = v26(v27);
            [v28 transform];

            simd_float4x4.up.getter();
            v52 = v29;

            v30 = vmulq_f32(v49, v52);
            v23 = v23 + (1.0 - fabsf(v30.f32[2] + vaddv_f32(*v30.f32)));
            v25 += 4;
            if (v21 == v24)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_49;
        }

        goto LABEL_5;
      }

      type metadata accessor for WorldPlane();
      swift_retain_n();
      v18 = static WorldPlane.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      ++v15;
      v14 += 2;
    }

    while (v13 != v1);
    v21 = _swiftEmptyArrayStorage[2];
    if (v21)
    {
      goto LABEL_23;
    }

    v23 = 0.0;
LABEL_28:

    v4 = v47;
LABEL_29:
    v32 = _swiftEmptyArrayStorage[2];
    v31 = _swiftEmptyArrayStorage[3];
    if (v32 >= v31 >> 1)
    {
      sub_1000A2694((v31 > 1), v32 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v32 + 1;
    v33 = &_swiftEmptyArrayStorage[4 * v32];
    v33[2] = v50;
    ++v3;
    v33[3].i64[0] = v6;
    v33[3].f32[2] = v23;
  }

  while (v3 != v1);
  sub_1000A2550(0, v32 + 1, 0);
  v34 = _swiftEmptyArrayStorage[2];
  v35 = v32 + 1;
  v36 = 7;
  do
  {
    v37 = _swiftEmptyArrayStorage[v36];
    v38 = _swiftEmptyArrayStorage[3];
    if (v34 >= v38 >> 1)
    {
      sub_1000A2550((v38 > 1), v34 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v34 + 1;
    *(&_swiftEmptyArrayStorage[4] + v34) = v37;
    v36 += 4;
    ++v34;
    --v35;
  }

  while (v35);

  v39 = _swiftEmptyArrayStorage[2];
  if (v39)
  {
    if (v39 <= 7)
    {
      v40 = 0;
      v41 = 0.0;
      goto LABEL_44;
    }

    v40 = v39 & 0x7FFFFFFFFFFFFFF8;
    v42 = &_swiftEmptyArrayStorage[6];
    v41 = 0.0;
    v43 = v39 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v41 = (((((((v41 + COERCE_FLOAT(*(v42 - 1))) + COERCE_FLOAT(HIDWORD(*(v42 - 2)))) + COERCE_FLOAT(*(v42 - 1))) + COERCE_FLOAT(HIDWORD(*(v42 - 1)))) + COERCE_FLOAT(*v42)) + COERCE_FLOAT(HIDWORD(*v42))) + COERCE_FLOAT(v42[1])) + COERCE_FLOAT(HIDWORD(*v42));
      v42 += 4;
      v43 -= 8;
    }

    while (v43);
    if (v39 != v40)
    {
LABEL_44:
      v44 = v39 - v40;
      v45 = &_swiftEmptyArrayStorage[4] + v40;
      do
      {
        v46 = *v45++;
        v41 = v41 + v46;
        --v44;
      }

      while (v44);
    }
  }
}

uint64_t sub_10011E810(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_33:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v3 = 0;
  while ((a1 & 0xC000000000000001) == 0)
  {
    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v4 = *(a1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

LABEL_10:
    v6 = *(*v4 + 160);
    v7 = v6();
    [v7 transform];

    v8 = simd_float4x4.up.getter();
    v10 = vmulq_f32(v9, v9);
    *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
    *v10.f32 = vrsqrte_f32(v11);
    *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
    v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    if (fabsf(vmuls_lane_f32(0.0, v12, 2) + (v12.f32[1] + (0.0 * v12.f32[0]))) < 0.17365)
    {
      goto LABEL_5;
    }

    v13 = (v6)(v8);
    [v13 transform];

    simd_float4x4.up.getter();
    v15 = vmulq_f32(v14, v14);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v16);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
    v17 = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    v18 = fabsf(vmuls_lane_f32(0.0, v17, 2) + (v17.f32[1] + (0.0 * v17.f32[0])));
    if (v18 > 1.0)
    {
      v18 = 1.0;
    }

    if ((acosf(v18) * 57.296) < 10.0)
    {
LABEL_5:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v3;
    if (v5 == v2)
    {
      goto LABEL_18;
    }
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v5 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_34:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      goto LABEL_35;
    }

LABEL_23:
    sub_1000A26D4(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      for (i = 0; i != v19; ++i)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v21 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = *(_swiftEmptyArrayStorage[i + 4] + 48);
        }

        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        if (v23 >= v22 >> 1)
        {
          sub_1000A26D4((v22 > 1), v23 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v23 + 1;
        *(&_swiftEmptyArrayStorage[4] + v23) = v21;
      }

      goto LABEL_35;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_21:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_35:

  v24 = sub_10019ADC0(_swiftEmptyArrayStorage);
  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v26 = 0;
    while (1)
    {
      if (v26 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_76;
      }

      v27 = *(&_swiftEmptyArrayStorage[4] + v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_10019C35C(v27);
      v31 = *(v24 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_77;
      }

      v35 = v30;
      if (*(v24 + 24) < v34)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_43;
      }

      v42 = v29;
      sub_1000BEA90();
      v29 = v42;
      if ((v35 & 1) == 0)
      {
LABEL_44:
        *(v24 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(*(v24 + 48) + v29) = v27;
        *(*(v24 + 56) + 8 * v29) = 0;
        v37 = *(v24 + 16);
        v33 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v33)
        {
          goto LABEL_79;
        }

        *(v24 + 16) = v38;
      }

LABEL_46:
      v39 = *(v24 + 56);
      v40 = *(v39 + 8 * v29);
      v33 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v33)
      {
        goto LABEL_78;
      }

      ++v26;
      *(v39 + 8 * v29) = v41;
      if (v25 == v26)
      {
        goto LABEL_51;
      }
    }

    sub_1000B8320(v34, isUniquelyReferenced_nonNull_native);
    v29 = sub_10019C35C(v27);
    if ((v35 & 1) != (v36 & 1))
    {
      goto LABEL_81;
    }

LABEL_43:
    if ((v35 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

LABEL_51:

  v43 = 1 << *(v24 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v24 + 64);
  if (v45)
  {
    v46 = 0;
    v47 = __clz(__rbit64(v45));
    v48 = (v45 - 1) & v45;
    v49 = (v43 + 63) >> 6;
LABEL_59:
    v53 = *(v24 + 48);
    v54 = *(v24 + 56);
    v55 = *(v53 + v47);
    v56 = *(v54 + 8 * v47);
    if (!v48)
    {
      goto LABEL_61;
    }

    do
    {
      v57 = v46;
LABEL_65:
      v58 = __clz(__rbit64(v48)) | (v57 << 6);
      v59 = *(v53 + v58);
      v48 &= v48 - 1;
      v60 = *(v54 + 8 * v58);
      if (v56 >= v60)
      {
        v55 = v55;
      }

      else
      {
        v55 = v59;
      }

      if (v56 <= v60)
      {
        v56 = v60;
      }
    }

    while (v48);
LABEL_61:
    while (1)
    {
      v57 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v57 >= v49)
      {

        return v55;
      }

      v48 = *(v24 + 64 + 8 * v57);
      ++v46;
      if (v48)
      {
        v46 = v57;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v50 = 0;
  v51 = 0;
  v49 = (v43 + 63) >> 6;
  while (v49 - 1 != v51)
  {
    v46 = v51 + 1;
    v52 = *(v24 + 8 * v51 + 72);
    v50 -= 64;
    ++v51;
    if (v52)
    {
      v48 = (v52 - 1) & v52;
      v47 = __clz(__rbit64(v52)) - v50;
      goto LABEL_59;
    }
  }

  return 7;
}

uint64_t sub_10011EE14(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + direct field offset for WorldEdge.p1);
  swift_beginAccess();
  if (v4[2].i8[0])
  {
    return 4;
  }

  v7 = v4;
  v5 = *v4;
  v6 = v7[1];
  v8 = (a2 + direct field offset for WorldEdge.p2);
  swift_beginAccess();
  if (v8[2].i8[0])
  {
    return 4;
  }

  v10 = v5;
  v11 = COERCE_FLOAT(*&v8[1]);
  *v9.f32 = vsub_f32(*v8, v5);
  v9.f32[2] = v11 - v6.f32[0];
  v13 = vmulq_f32(v9, v9);
  v12 = vaddv_f32(*v13.f32);
  v13.i32[1] = 0;
  *&v14 = v13.f32[2] + v12;
  v15 = vrsqrte_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v12));
  v16 = vmul_f32(v15, vrsqrts_f32(v14, vmul_f32(v15, v15)));
  v17 = vmulq_n_f32(v9, vmul_f32(v16, vrsqrts_f32(v14, vmul_f32(v16, v16))).f32[0]);
  v18 = *(a1 + 16);
  v74 = v17;
  if (v18)
  {
    v19 = vmul_f32(vadd_f32(v10, *v8), 0x3F0000003F000000);
    v20 = (v6.f32[0] + v11) * 0.5;
    v21 = vmulq_f32(v17, v17);
    v13.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
    v22 = (a1 + 64);
    *v21.f32 = vrsqrte_f32(*v13.f32);
    *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(*v13.f32, vmul_f32(*v21.f32, *v21.f32)));
    v23 = vmulq_n_f32(v17, vmul_f32(*v21.f32, vrsqrts_f32(*v13.f32, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
    v75 = v23;
    do
    {
      if ((*v22 & 1) == 0)
      {
        v28 = *(v22 - 32);
        v29 = vdupq_lane_s64(*(v22 - 3), 0);
        v30 = vmuls_lane_f32(*&v29.i32[2] - v20, v23, 2) + vaddv_f32(vmul_f32(vsub_f32(v28, v19), *v23.f32));
        v31 = v20 + vmuls_lane_f32(v30, v23, 2);
        v32 = vsub_f32(vadd_f32(v19, vmul_n_f32(*v23.f32, v30)), v28);
        if ((((v31 - *&v29.i32[2]) * (v31 - *&v29.i32[2])) + vaddv_f32(vmul_f32(v32, v32))) < 0.0225)
        {
          v78 = *(v22 - 24);
          v33 = *(v22 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000A2714(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v25 = _swiftEmptyArrayStorage[2];
          v24 = _swiftEmptyArrayStorage[3];
          v23 = v75;
          v26 = v78;
          if (v25 >= v24 >> 1)
          {
            sub_1000A2714((v24 > 1), v25 + 1, 1);
            v23 = v75;
            v26 = v78;
          }

          _swiftEmptyArrayStorage[2] = v25 + 1;
          v27 = &_swiftEmptyArrayStorage[6 * v25];
          v27[4] = v28;
          *(v27 + 5) = v26;
          v27[7] = v33;
          *(v27 + 64) = 0;
        }
      }

      v22 += 48;
      --v18;
    }

    while (v18);
  }

  v34 = _swiftEmptyArrayStorage[2];
  if (v34)
  {
    v35 = &_swiftEmptyArrayStorage[8];
    v36 = _swiftEmptyArrayStorage;
    do
    {
      if ((*v35 & 1) == 0)
      {
        v38 = *(v35 - 4);
        v39 = *(v35 - 3);
        v40 = *(v35 - 2);
        v41 = *(v35 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_100068410(0, *(v36 + 2) + 1, 1, v36);
        }

        v43 = *(v36 + 2);
        v42 = *(v36 + 3);
        if (v43 >= v42 >> 1)
        {
          v36 = sub_100068410((v42 > 1), v43 + 1, 1, v36);
        }

        *(v36 + 2) = v43 + 1;
        v37 = &v36[32 * v43];
        *(v37 + 4) = v38;
        *(v37 + 5) = v39;
        *(v37 + 6) = v40;
        *(v37 + 7) = v41;
      }

      v35 += 48;
      --v34;
    }

    while (v34);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  v44 = *(v36 + 2);
  if ((v44 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {

    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v45._countAndFlagsBits = 0xD00000000000002ELL;
    v45._object = 0x8000000100407AC0;
    Log.default(_:isPrivate:)(v45, 0);
    return 4;
  }

  if (v44 != 1)
  {
    v48 = *(v36 + 3);
    v49 = vmulq_f32(v48, v48);
    v50 = vaddv_f32(*v49.f32);
    *v49.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v49.f32[2] + v50));
    *v49.f32 = vmul_f32(*v49.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v49.f32[2] + v50), vmul_f32(*v49.f32, *v49.f32)));
    v51 = vmulq_n_f32(v48, vmul_f32(*v49.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v49.f32[2] + v50), vmul_f32(*v49.f32, *v49.f32))).f32[0]);
    v52 = *(v36 + 5);
    v53 = vmulq_f32(v52, v52);
    *&v54 = v53.f32[2] + vaddv_f32(*v53.f32);
    *v53.f32 = vrsqrte_f32(v54);
    *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32)));
    v55 = vmulq_f32(v51, vmulq_n_f32(v52, vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32))).f32[0]));
    v56 = v55.f32[2] + vaddv_f32(*v55.f32);
    if (qword_1004A0330 != -1)
    {
      swift_once();
    }

    v57 = v74;
    if (*&dword_1004D4EF8 < v56)
    {
      v79 = *(v36 + 3);
      if (sub_10011D5C4(v79, 5.0) && sub_10011D5C4(*(v36 + 5), 5.0) && (COERCE_FLOAT(HIDWORD(*(v36 + 4))) - *(v36 + 17)) > 0.04)
      {
        v76 = *(v36 + 2);
      }

      else
      {
        if (!sub_10011D52C(v79, 5.0))
        {
          return 2;
        }

        if (!sub_10011D52C(*(v36 + 5), 5.0))
        {
          return 2;
        }

        type metadata accessor for PlaneUtil();
        v76 = *(v36 + 2);
        static PlaneUtil.distance(point:plane:)();
        if (v60 <= 0.04)
        {
          return 2;
        }
      }

      sub_10000F974(&qword_1004A4000);
      v61 = swift_allocObject();
      v61[1] = xmmword_1003D5360;

      result = 0;
      v63 = v76;
      v62 = v79;
      goto LABEL_61;
    }

    if (qword_1004A0338 != -1)
    {
      swift_once();
      v57 = v74;
    }

    if (v56 < *&dword_1004D4EFC && v56 > -*&dword_1004D4EFC)
    {
      v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v36 + 5), *(v36 + 5)), *(v36 + 5), 0xCuLL), vnegq_f32(*(v36 + 3))), *(v36 + 5), vextq_s8(vuzp1q_s32(*(v36 + 3), *(v36 + 3)), *(v36 + 3), 0xCuLL));
      v59 = fabsf(vmuls_lane_f32(v57.f32[2], *v58.f32, 1) + (vmuls_lane_f32(v57.f32[0], v58, 2) + vmuls_lane_f32(v58.f32[0], *v57.f32, 1)));
      if (qword_1004A0340 != -1)
      {
        swift_once();
      }

      if (*&dword_1004D4F00 < v59)
      {
        return 1;
      }

      v80 = *(v36 + 2);
      simd_float4x4.position.getter();
      v65 = vsub_f32(*v80.i8, *v64.i8);
      v66 = vmul_f32(v65, v65);
      v67 = *(v36 + 4);
      v68 = vsub_f32(*v67.i8, *v64.i8);
      v69 = vmul_f32(v68, v68);
      *v64.i8 = vsub_f32(vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v67, v67, 8uLL)), vdup_laneq_s32(v64, 2));
      *v64.i8 = vadd_f32(vmul_f32(*v64.i8, *v64.i8), vadd_f32(vzip1_s32(v66, v69), vzip2_s32(v66, v69)));
      if (vcgt_f32(vdup_lane_s32(*v64.i8, 1), *v64.i8).u8[0])
      {
        if (qword_1004A0228 != -1)
        {
          swift_once();
        }

        v70._object = 0x8000000100407A30;
        v70._countAndFlagsBits = 0xD000000000000043;
        Log.default(_:isPrivate:)(v70, 0);
        sub_10000F974(&qword_1004A4000);
        v61 = swift_allocObject();
        v61[1] = xmmword_1003D5360;
        v72 = *(v36 + 2);
        v71 = *(v36 + 3);
      }

      else
      {
        if (qword_1004A0228 != -1)
        {
          swift_once();
        }

        v73._object = 0x8000000100407A30;
        v73._countAndFlagsBits = 0xD000000000000043;
        Log.default(_:isPrivate:)(v73, 0);
        sub_10000F974(&qword_1004A4000);
        v61 = swift_allocObject();
        v61[1] = xmmword_1003D5360;
        v72 = *(v36 + 4);
        v71 = *(v36 + 5);
      }

      v81 = v72;
      v77 = v71;

      result = 0;
      v62 = v77;
      v63 = v81;
LABEL_61:
      v61[2] = v63;
      v61[3] = v62;
      return result;
    }

    return 4;
  }

  if (qword_1004A0228 != -1)
  {
    swift_once();
  }

  v47._countAndFlagsBits = 0xD00000000000003BLL;
  v47._object = 0x8000000100407A80;
  Log.default(_:isPrivate:)(v47, 0);
  return 0;
}

uint64_t sub_10011F6D4()
{
  v1 = v0;
  static ComputedCameraProperties.shared(for:)();
  v2 = *(**(v0 + 112) + 144);

  v2(&v60, v3);

  v86 = v66;
  v87 = v67;
  v88 = v68;
  v89 = v69;
  v82 = v62;
  v83 = v63;
  v84 = v64;
  v85 = v65;
  v80 = v60;
  v81 = v61;
  sub_100013784(&v80, &v60);
  sub_100013BF8(&v80);
  v66 = v86;
  v67 = v87;
  LOBYTE(v68) = v88;
  v62 = v82;
  v63 = v83;
  v64 = v84;
  v65 = v85;
  v60 = v80;
  v61 = v81;
  if (sub_10001376C(&v60) == 1)
  {
    return 0;
  }

  v4 = v60;
  v5 = *(**(v0 + 120) + 144);

  v5(&v53, v6);

  v8 = v53;
  v7 = v54;

  if (!v7 || ((*((swift_isaMask & *v7) + 0x2B0))(), v7, v9 = simd_float4x4.position.getter(), v10 = *((swift_isaMask & *v4) + 0x258), (v10)(v9)) && v10() != 1)
  {
    sub_100018F04(&v80, &qword_1004A1208);
    return 0;
  }

  (*((swift_isaMask & *v4) + 0x2A8))();
  v11 = simd_float4x4.position.getter();
  (*((swift_isaMask & *v4) + 0x2A0))(v11);
  simd_float4x4.position.getter();
  type metadata accessor for MeasureCamera();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v51 = v12;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v52 = v13;
  sub_100018F04(&v80, &qword_1004A1208);
  result = 0;
  v15 = (LODWORD(v51) & 0x7FFFFF) != 0 && (~LODWORD(v51) & 0x7F800000) == 0;
  v16 = v51 >= 0.0 && v51 <= 1.0;
  if (v16 && !v15)
  {
    result = 0;
    v17 = (LODWORD(v52) & 0x7FFFFF) != 0 && (~LODWORD(v52) & 0x7F800000) == 0;
    v18 = v52 >= 0.0 && v52 <= 1.0;
    if (v18 && !v17)
    {
      CGPoint.init(xy:)();
      v20 = v19;
      v22 = v21;
      CGPoint.init(xy:)();
      v75 = v20;
      v76 = v22;
      v77 = v23;
      v78 = v24;
      v79 = 0;
      v25 = *(v1 + 152);
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v20 - v23;
        v28 = v22 - v24;
        v29 = v27;
        v30 = atan2f(fabsf(v28), fabsf(v29)) * 57.296;

        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = (v25 + 64);
        v37 = 1;
        do
        {
          v38 = *(v36 - 4);
          v39 = *(v36 - 3);
          v40 = *(v36 - 2);
          v41 = *(v36 - 1);
          v42 = v39 - v41;
          v43 = v38 - v40;
          if ((atan2f(fabsf(v42), fabsf(v43)) * 57.296) != v30)
          {
            v44 = *v36;
            *&v70 = v38;
            *(&v70 + 1) = v39;
            v71 = v40;
            v72 = v41;
            v73 = v44;
            v74 = 0;
            sub_100118B1C(&v70, &v53);
            if (v59 >= INFINITY)
            {
              v45 = v31;
            }

            else
            {
              v45 = v53;
            }

            if (v59 <= INFINITY)
            {
              v31 = v45;
            }

            else
            {
              v31 = v53;
            }

            if (v59 >= INFINITY)
            {
              v46 = v32;
            }

            else
            {
              v46 = v54;
            }

            if (v59 <= INFINITY)
            {
              v32 = v46;
            }

            else
            {
              v32 = v54;
            }

            if (v59 >= INFINITY)
            {
              v47 = v33;
            }

            else
            {
              v47 = v55;
            }

            if (v59 <= INFINITY)
            {
              v33 = v47;
            }

            else
            {
              v33 = v55;
            }

            if (v59 >= INFINITY)
            {
              v48 = v34;
            }

            else
            {
              v48 = v56;
            }

            if (v59 <= INFINITY)
            {
              v34 = v48;
            }

            else
            {
              v34 = v56;
            }

            if (v59 >= INFINITY)
            {
              v49 = v35;
            }

            else
            {
              v49 = v57;
            }

            if (v59 <= INFINITY)
            {
              v35 = v49;
            }

            else
            {
              v35 = v57;
            }

            if (v59 >= INFINITY)
            {
              v50 = v37;
            }

            else
            {
              v50 = v58;
            }

            if (v59 <= INFINITY)
            {
              v37 = v50;
            }

            else
            {
              v37 = v58;
            }
          }

          v36 += 5;
          --v26;
        }

        while (v26);

        if ((v37 & 1) == 0)
        {
          v53 = v31;
          v54 = v32;
          v55 = v33;
          v56 = v34;
          v57 = v35;
          return sub_100117DA8(&v53);
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_10011FC98(uint64_t a1, float32x4_t a2)
{
  v3 = a1 + direct field offset for WorldEdge.p1;
  swift_beginAccess();
  if (*(v3 + 16))
  {
    return 0;
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = (a1 + direct field offset for WorldEdge.p2);
  swift_beginAccess();
  if (v6[2].i8[0])
  {
    return 0;
  }

  *v8.f32 = v4;
  v8.i64[1] = v5;
  *v7.f32 = vsub_f32(*v6, v4);
  v32 = vsubq_f32(*v6->f32, v8);
  v33 = v7;
  v9 = vmuls_lane_f32(v32.f32[2], v32, 2) + vaddv_f32(vmul_f32(*v7.f32, *v7.f32));
  closestPointOnLine(lineP1:lineP2:point:)();
  v11 = vsubq_f32(v10, a2);
  v12 = vmulq_f32(v11, v11);
  if (v9 <= 0.0225)
  {
    v37 = v12;
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v13._countAndFlagsBits = 0xD000000000000028;
    v13._object = 0x8000000100407BD0;
    Log.default(_:isPrivate:)(v13, 0);
    v12 = v37;
  }

  v14 = v12.f32[2];
  v15 = vaddv_f32(*v12.f32);
  if (v9 >= 2.25)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v16._object = 0x8000000100407C00;
    v16._countAndFlagsBits = 0xD000000000000027;
    Log.default(_:isPrivate:)(v16, 0);
  }

  v17 = v33;
  v17.i32[2] = v32.i32[2];
  v18 = v14 + v15;
  if (qword_1004A0348 != -1)
  {
    v35 = v17;
    swift_once();
    v17 = v35;
  }

  v17.i32[3] = 0;
  v19 = *&dword_1004D4F04;
  if (v18 >= *&dword_1004D4F04)
  {
    v34 = v17;
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v20._countAndFlagsBits = 0xD00000000000002BLL;
    v20._object = 0x8000000100407C30;
    Log.default(_:isPrivate:)(v20, 0);
    v17 = v34;
  }

  v21 = vmulq_f32(v17, v17);
  *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
  *v21.f32 = vrsqrte_f32(v22);
  *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
  v23 = vmulq_n_f32(v17, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
  v24 = fabsf(vmuls_lane_f32(0.0, v23, 2) + (v23.f32[1] + (0.0 * v23.f32[0])));
  v25 = 1.0;
  if (v24 <= 1.0)
  {
    v25 = v24;
  }

  v26 = acosf(v25) * 57.296;
  if (v26 >= 3.0 && v24 >= 0.052336)
  {
    if (qword_1004A0228 != -1)
    {
      swift_once();
    }

    v28._countAndFlagsBits = 0xD00000000000002ALL;
    v28._object = 0x8000000100407C60;
    Log.default(_:isPrivate:)(v28, 0);
  }

  v29 = v9 > 0.0225 && v9 < 2.25;
  if (!v29 || v18 >= v19)
  {
    return 0;
  }

  if (v26 >= 10.0)
  {
    return v24 < 0.17365;
  }

  return 1;
}

void sub_10012006C(uint64_t a1, int8x16_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = a1 + direct field offset for WorldEdge.p1;
  swift_beginAccess();
  if ((*(v3 + 16) & 1) == 0)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = a1 + direct field offset for WorldEdge.p2;
    swift_beginAccess();
    if ((*(v6 + 16) & 1) == 0)
    {
      v7 = (v6 + 8);
      v8 = *v6;
      v9 = vld1q_dup_f64(v7);
      v77 = *&v9.f64[1];
      v10 = direct field offset for WorldEdge.backingPlanes;
      swift_beginAccess();
      v12 = *(a1 + v10);
      v65 = *(v12 + 16);
      if (v65)
      {
        v13 = vdupq_n_s64(v5);
        v14 = *&v13.i32[2] + v77;
        *v11.f32 = vsub_f32(v8, v4);
        v11.f32[2] = v77 - *&v13.i32[2];
        v15 = vmulq_f32(v11, v11);
        *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
        *v15.f32 = vrsqrte_f32(v16);
        *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
        v17 = vmulq_n_f32(v11, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
        v18 = vmulq_f32(v17, v17);
        *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
        v20 = vrsqrte_f32(v19);
        v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
        v22 = vmulq_n_f32(v17, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
        v23 = vmul_f32(vadd_f32(v4, v8), 0x3F0000003F000000);
        v21.i32[0] = vdup_lane_s32(v23, 1).u32[0];
        v21.f32[1] = v14 * 0.5;
        v24 = vmul_f32(vsub_f32(*&vextq_s8(a2, a2, 4uLL), v21), *&vextq_s8(v22, v22, 4uLL));
        v25 = v24.f32[1] + (((*a2.i32 - v23.f32[0]) * v22.f32[0]) + v24.f32[0]);
        v71 = (v14 * 0.5) + vmuls_lane_f32(v25, v22, 2);
        v72 = vadd_f32(v23, vmul_n_f32(*v22.f32, v25));
        v64 = v12 + 32;
        v62 = vnegq_f32(v17);
        v63 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);

        v27 = 0;
        v28.i32[0] = vdup_lane_s32(v72, 1).u32[0];
        v28.f32[1] = v71;
        v61 = v28;
        v29 = _swiftEmptyArrayStorage;
        v60 = v26;
        while (v27 < *(v26 + 16))
        {
          v69 = v27;
          v30 = (v64 + 32 * v27);
          v67 = v30[1];
          v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), v62), v67, v63);
          v32 = vmulq_f32(v31, v31);
          *&v33 = v32.f32[1] + (v32.f32[2] + v32.f32[0]);
          v34 = vrsqrte_f32(v33);
          v35 = vmul_f32(v34, vrsqrts_f32(v33, vmul_f32(v34, v34)));
          v36 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), vmul_f32(v35, vrsqrts_f32(v33, vmul_f32(v35, v35))).f32[0]);
          v68 = *v30;
          *v32.f32 = vmul_f32(vsub_f32(vext_s8(*v30->f32, *&vextq_s8(*v30, *v30, 8uLL), 4uLL), v61), *&vextq_s8(v36, v36, 4uLL));
          if ((v32.f32[1] + (((COERCE_FLOAT(*v30) - *v72.i32) * v36.f32[0]) + v32.f32[0])) <= 0.0)
          {
            v37 = -1.0;
          }

          else
          {
            v37 = 1.0;
          }

          v75 = vmuls_lane_f32(v37, v36, 2);
          v76 = vmul_n_f32(*v36.f32, v37);
          static simd_float4x4.make(position:normalizedForward:)();
          v38 = objc_allocWithZone(ObjectType);
          v70 = WorldEdge.init(transform:p1:p2:type:adVariance:)();
          v39 = v29[2];
          if (v39)
          {
            v40 = 0;
            v41 = v29 + 8;
            do
            {
              v42 = &v41[6 * v40];
              v43 = v40;
              while (1)
              {
                if (v43 >= v29[2])
                {
                  __break(1u);
                  goto LABEL_34;
                }

                v44 = *(v42 - 4);
                v73 = *v42;
                v74 = *(v42 - 1);
                swift_beginAccess();
                simd_float4x4.forward.getter();
                v79 = v45;
                v46 = qword_1004A0320;
                v47 = v44;
                if (v46 != -1)
                {
                  v51 = v47;
                  swift_once();
                  v47 = v51;
                }

                v48 = vmulq_f32(v79, v79);
                *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
                *v48.f32 = vrsqrte_f32(v49);
                *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
                v50 = vmulq_n_f32(v79, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
                if (*&dword_1004D4EF0 < (vmuls_lane_f32(v75, v50, 2) + ((v76.f32[0] * v50.f32[0]) + vmuls_lane_f32(v76.f32[1], *v50.f32, 1))))
                {
                  break;
                }

                ++v43;

                v42 += 3;
                if (v39 == v43)
                {
                  goto LABEL_25;
                }
              }

              v80 = v47;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1000A2754(0, _swiftEmptyArrayStorage[2] + 1, 1);
              }

              v53 = _swiftEmptyArrayStorage[2];
              v52 = _swiftEmptyArrayStorage[3];
              v54 = v80;
              if (v53 >= v52 >> 1)
              {
                sub_1000A2754((v52 > 1), v53 + 1, 1);
                v54 = v80;
              }

              _swiftEmptyArrayStorage[2] = v53 + 1;
              v55 = &_swiftEmptyArrayStorage[6 * v53];
              v55[4] = v54;
              v40 = v43 + 1;
              *(v55 + 3) = v74;
              *(v55 + 4) = v73;
              v41 = v29 + 8;
            }

            while (v39 - 1 != v43);
          }

LABEL_25:
          v56 = _swiftEmptyArrayStorage[2];

          if (v56)
          {
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_100068514(0, v29[2] + 1, 1, v29);
            }

            v58 = v29[2];
            v57 = v29[3];
            if (v58 >= v57 >> 1)
            {
              v29 = sub_100068514((v57 > 1), v58 + 1, 1, v29);
            }

            v29[2] = v58 + 1;
            v59 = &v29[6 * v58];
            v59[2].i64[0] = v70;
            v59[3] = v68;
            v59[4] = v67;
          }

          v26 = v60;
          v27 = v69 + 1;
          if (v69 + 1 == v65)
          {

            return;
          }
        }

LABEL_34:
        __break(1u);
      }
    }
  }
}

id sub_1001206CC(unsigned __int8 a1)
{
  v2 = a1;
  v3 = objc_opt_self();
  if (v2 > 2)
  {
    v4 = &selRef_whiteColor;
  }

  else
  {
    v4 = off_10046E5C0[a1];
  }

  v5 = [v3 *v4];

  return v5;
}

uint64_t sub_100120744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001207A4(void *a1, uint64_t a2, __n128 a3, __n128 a4, float32x4_t a5, float32x4_t a6)
{
  v7 = v6;
  *v87 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v10 = sub_10000F974(&qword_1004AA2A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v76 - v11;
  v13 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a2 + direct field offset for WorldEdge.edgePlanesMetrics);
  result = swift_beginAccess();
  v19 = *v17;
  if ((*v17 & 0xFF0000) != 0x30000)
  {
    v77 = v14;
    v78 = v12;
    v79 = v7;
    v20 = *(v17 + 2);
    v21 = *((swift_isaMask & *a1) + 0x2A0);
    *v22.i64 = (v21)(result);
    v83 = v22;
    v82 = v23;
    v81 = v24;
    v80 = v25;
    v26 = *((swift_isaMask & *a1) + 0x2A8);
    v26();
    slerp(transform1:transform2:percent:)();
    simd_float4x4.position.getter();
    v83 = v27;
    simd_float4x4.position.getter();
    v29 = vsubq_f32(v28, v83);
    v86 = v29;
    v29.i32[3] = 0;
    *v87 = v29;
    v30 = direct field offset for WorldEdge.backingPlanes;
    swift_beginAccess();
    v31 = *(a2 + v30);
    v32 = *v87;
    if (v31[1].i64[0])
    {
      v32 = v31[3];
    }

    v33 = vmulq_f32(v32, v32);
    v34 = vaddv_f32(*v33.f32);
    *v33.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34));
    *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32)));
    v35 = vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32))).f32[0]);
    v36 = vmulq_f32(*v87, *v87);
    *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
    *v36.f32 = vrsqrte_f32(v37);
    *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
    *v87 = vmulq_n_f32(*v87, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
    v38 = vmulq_f32(v35, *v87);
    v39 = acosf(v38.f32[2] + vaddv_f32(*v38.f32));
    v40 = *Float.piDiv2.unsafeMutableAddressor();
    v41 = vmulq_f32(*v87, *SIMD3<>.up.unsafeMutableAddressor());
    v42 = acosf(v41.f32[2] + vaddv_f32(*v41.f32));
    v43 = (swift_isaMask & *a1) + 184;
    v87[0] = *((swift_isaMask & *a1) + 0xB8);
    v85.n128_u64[0] = v43;
    v84.n128_u64[0] = v87[0]();
    v83.i64[0] = v44;
    v21();
    v45 = simd_float4x4.position.getter();
    v82 = v46;
    (v26)(v45);
    simd_float4x4.position.getter();
    v81 = v47;
    v48 = direct field offset for WorldEdge.type;
    result = swift_beginAccess();
    v49 = *(a2 + v48);
    if (v49 <= 1)
    {
      if (*(a2 + v48))
      {
        *&v80 = 0xE400000000000000;
        v50 = 1684828006;
      }

      else
      {
        *&v80 = 0xE500000000000000;
        v50 = 0x6666696C63;
      }
    }

    else if (v49 == 2)
    {
      *&v80 = 0xE600000000000000;
      v50 = 0x72616E616C70;
    }

    else
    {
      if (v49 != 3)
      {
        goto LABEL_16;
      }

      *&v80 = 0xE200000000000000;
      v50 = 30323;
    }

    v76 = v50;
    v51 = v39 * 57.296;
    v52 = (v40 - fabsf(v42)) * 57.296;
    v53 = vsubq_f32(v82, v81);
    v54 = vmulq_f32(v53, v53);
    v55 = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
    v56 = vmulq_f32(v86, v86);
    v57 = sqrtf(v56.f32[2] + vaddv_f32(*v56.f32));
    v58 = EdgePlanesMetrics.metricDescriptionForBestPlaneType()();
    v59 = EdgePlanesMetrics.metricDescriptionForOtherPlaneType()();
    Date.init()();
    v60 = v13[17];
    v61 = type metadata accessor for Date();
    v62 = (*(*(v61 - 8) + 56))(&v16[v60], 1, 1, v61);
    v63 = v83.i64[0];
    *v16 = v84.n128_u64[0];
    *(v16 + 1) = v63;
    *(v16 + 4) = v55;
    *(v16 + 5) = v51;
    *(v16 + 6) = v57;
    v64 = v80;
    *(v16 + 4) = v76;
    *(v16 + 5) = v64;
    *(v16 + 12) = v52;
    *(v16 + 13) = HIDWORD(v19);
    *(v16 + 56) = v58;
    *(v16 + 18) = v20;
    *(v16 + 5) = v59;
    *(v16 + 48) = 0;
    v65 = &v16[v13[18]];
    *v65 = 0;
    *(v65 + 1) = 0;
    v65[16] = 1;
    v66 = &v16[v13[19]];
    *v66 = 0;
    *(v66 + 1) = 0;
    v66[16] = 1;
    v67 = (v87[0])(v62);
    v69 = v68;
    v70 = v78;
    sub_10012A110(v16, v78, type metadata accessor for MetricsManager.EdgeGuideMetric);
    (*(v77 + 56))(v70, 0, 1, v13);
    v71 = v79;
    swift_beginAccess();
    sub_100123D9C(v70, v67, v69);
    swift_endAccess();
    sub_10012A1E0(v16, type metadata accessor for MetricsManager.EdgeGuideMetric);
    v72 = v71 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    result = swift_beginAccess();
    v73 = *(v72 + 80);
    v74 = __OFADD__(v73, 1);
    v75 = v73 + 1;
    if (!v74)
    {
      *(v72 + 80) = v75;
      return result;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_100120ED0(void *a1, uint64_t a2, __n128 a3, __n128 a4, float32x4_t a5, float32x4_t a6)
{
  v7 = v6;
  v85 = a6;
  v84 = a5;
  v83 = a4;
  v82 = a3;
  v10 = sub_10000F974(&qword_1004AA2E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v72 - v11;
  v13 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a2 + direct field offset for WorldEdge.edgePlanesMetrics);
  result = swift_beginAccess();
  v19 = *v17;
  if ((*v17 & 0xFF0000) != 0x30000)
  {
    v79 = v14;
    v80 = v12;
    v20 = *(v17 + 2);
    v21 = simd_float4x4.position.getter();
    v85 = v22;
    v23 = (swift_isaMask & *a1) + 672;
    v24 = *((swift_isaMask & *a1) + 0x2A0);
    (v24)(v21);
    simd_float4x4.position.getter();
    v26 = vsubq_f32(v85, v25);
    v26.i32[3] = 0;
    v84 = v26;
    v27 = direct field offset for WorldEdge.backingPlanes;
    swift_beginAccess();
    v28 = *(a2 + v27);
    v29 = v84;
    if (v28[1].i64[0])
    {
      v29 = v28[3];
    }

    v30 = vmulq_f32(v29, v29);
    v31 = vaddv_f32(*v30.f32);
    *v30.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v30.f32[2] + v31));
    *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v30.f32[2] + v31), vmul_f32(*v30.f32, *v30.f32)));
    v32 = vmulq_n_f32(v29, vmul_f32(*v30.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v30.f32[2] + v31), vmul_f32(*v30.f32, *v30.f32))).f32[0]);
    v33 = vmulq_f32(v84, v84);
    *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
    *v33.f32 = vrsqrte_f32(v34);
    *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
    v35 = vmulq_f32(v32, vmulq_n_f32(v84, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]));
    v36 = acosf(v35.f32[2] + vaddv_f32(*v35.f32));
    v37 = (swift_isaMask & *a1) + 184;
    v84.i64[0] = *((swift_isaMask & *a1) + 0xB8);
    v82.n128_u64[0] = v37;
    v78 = (v84.i64[0])();
    v77 = v38;
    v24();
    v39 = simd_float4x4.position.getter();
    v76 = v40;
    (*((swift_isaMask & *a1) + 0x2A8))(v39);
    v41 = simd_float4x4.position.getter();
    v75 = v42;
    (v24)(v41);
    simd_float4x4.position.getter();
    v74 = v43;
    v44 = direct field offset for WorldEdge.type;
    result = swift_beginAccess();
    v45 = *(a2 + v44);
    v81 = v7;
    v83.n128_u64[0] = v23;
    if (v45 <= 1)
    {
      if (v45)
      {
        v73 = 0xE400000000000000;
        v46 = 1684828006;
      }

      else
      {
        v73 = 0xE500000000000000;
        v46 = 0x6666696C63;
      }
    }

    else if (v45 == 2)
    {
      v73 = 0xE600000000000000;
      v46 = 0x72616E616C70;
    }

    else
    {
      if (v45 != 3)
      {
        goto LABEL_16;
      }

      v73 = 0xE200000000000000;
      v46 = 30323;
    }

    v72 = v46;
    v47 = vsubq_f32(v76, v75);
    v48 = vmulq_f32(v47, v47);
    v49 = sqrtf(v48.f32[2] + vaddv_f32(*v48.f32));
    v50 = vsubq_f32(v85, v74);
    v51 = vmulq_f32(v50, v50);
    v52 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
    v53 = EdgePlanesMetrics.metricDescriptionForBestPlaneType()();
    v54 = EdgePlanesMetrics.metricDescriptionForOtherPlaneType()();
    Date.init()();
    v55 = v13[15];
    v56 = type metadata accessor for Date();
    v57 = (*(*(v56 - 8) + 56))(&v16[v55], 1, 1, v56);
    (v24)(v57);
    v58 = simd_float4x4.position.getter();
    v59 = v77;
    *v16 = v78;
    *(v16 + 1) = v59;
    *(v16 + 4) = v49;
    *(v16 + 5) = v36 * 57.296;
    *(v16 + 6) = v52;
    v60 = v73;
    *(v16 + 4) = v72;
    *(v16 + 5) = v60;
    *(v16 + 12) = HIDWORD(v19);
    *(v16 + 56) = v53;
    *(v16 + 18) = v20;
    *(v16 + 5) = v54;
    v16[96] = 0;
    *&v16[v13[16]] = v61;
    v62 = &v16[v13[17]];
    *v62 = 0;
    *(v62 + 1) = 0;
    v62[16] = 1;
    v63 = (v84.i64[0])(v58);
    v65 = v64;
    v66 = v80;
    sub_10012A110(v16, v80, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
    (*(v79 + 56))(v66, 0, 1, v13);
    v67 = v81;
    swift_beginAccess();
    sub_100123F70(v66, v63, v65);
    swift_endAccess();
    sub_10012A1E0(v16, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
    v68 = v67 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    result = swift_beginAccess();
    v69 = *(v68 + 80);
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (!v70)
    {
      *(v68 + 80) = v71;
      return result;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

void sub_10012158C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000F974(&qword_1004AA2C0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = sub_100018630(0, &qword_1004ABAB0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v28 = v8 >> 6;

    v29 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v28)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v35);
      ++v29;
      if (v7)
      {
        while (1)
        {
          v36 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v37 = v36 | (v35 << 6);
          v38 = (*(a1 + 48) + 16 * v37);
          v40 = *v38;
          v39 = v38[1];
          sub_1000336B4(*(a1 + 56) + 40 * v37, &v53);
          *&v52 = v40;
          *(&v52 + 1) = v39;
          v48 = v52;
          v49 = v53;
          v50 = v54;
          v51 = v55;

          v41 = String._bridgeToObjectiveC()();

          sub_10001D95C(&v49, v46);
          sub_10000F974(&qword_1004AA2C8);
          sub_100018630(0, &qword_1004AE0D0);
          swift_dynamicCast();
          v42 = v47;
          v43 = sub_1001984D8(v41);
          if (v44)
          {
            v30 = v2[6];
            v31 = *(v30 + 8 * v43);
            *(v30 + 8 * v43) = v41;
            v32 = v43;

            v33 = v2[7];
            v34 = *(v33 + 8 * v32);
            *(v33 + 8 * v32) = v42;

            v29 = v35;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v45 = v2[2];
            if (v45 >= v2[3])
            {
              goto LABEL_40;
            }

            *(v2 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v43;
            *(v2[6] + 8 * v43) = v41;
            *(v2[7] + 8 * v43) = v42;
            v2[2] = v45 + 1;
            v29 = v35;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v35 = v29;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 8;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_1000336B4(*(a1 + 56) + 40 * v14, &v53);
      *&v52 = v17;
      *(&v52 + 1) = v16;
      v48 = v52;
      v49 = v53;
      v50 = v54;
      v51 = v55;

      v18 = String._bridgeToObjectiveC()();

      sub_10001D95C(&v49, v46);
      sub_10000F974(&qword_1004AA2C8);
      sub_100018630(0, &qword_1004AE0D0);
      swift_dynamicCast();
      v19 = v47;
      v20 = NSObject._rawHashValue(seed:)(v2[5]);
      v21 = -1 << *(v2 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~v10[v22 >> 6]) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = v10[v23];
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~v10[v22 >> 6])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v2[6] + 8 * v12) = v18;
      *(v2[7] + 8 * v12) = v19;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_100121A18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000F974(&qword_1004AA2D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1000336B4(*(a1 + 56) + 40 * v12, v28);
    *&v27 = v14;
    *(&v27 + 1) = v15;
    v24 = v27;
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v16 = v27;
    sub_10001D95C(v25, v23);

    sub_10000F974(&qword_1004AA2C8);
    sub_100018630(0, &qword_1004AE0D0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_100198230(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

Class sub_100121C9C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100018630(0, &qword_1004AE0D0);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_100121D38()
{
  v1 = type metadata accessor for AppSession();
  v2 = (v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 58) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 14) = CACurrentMediaTime();
  *(v4 + 60) = 1;
  v4[122] = 0;
  v5 = v2[25];
  v6 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  v7 = v2[26];
  *&v4[v7] = CACurrentMediaTime();
  v4[v2[27]] = 0;
  v8 = OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  sub_10012B558(v4, v0 + v8);
  swift_endAccess();
  v9 = [objc_allocWithZone(SBSExternalDisplayService) init];
  aBlock[4] = sub_10012B5BC;
  v12 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100128424;
  aBlock[3] = &unk_10046E7B8;
  v10 = _Block_copy(aBlock);

  [v9 getConnectedDisplayInfoWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_100121F10()
{
  v1 = v0;
  v2 = sub_10000F974(&unk_1004A3EC0);
  __chkstk_darwin(v2 - 8);
  v242 = v223 - v3;
  v4 = sub_10000F974(&qword_1004AA2B0);
  __chkstk_darwin(v4 - 8);
  v244 = v223 - v5;
  v237 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  v224 = *(v237 - 1);
  __chkstk_darwin(v237);
  v259 = v223 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000F974(&qword_1004AA2E0);
  __chkstk_darwin(v7 - 8);
  v245 = v223 - v8;
  v256 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
  v226 = *(v256 - 1);
  __chkstk_darwin(v256);
  v252 = (v223 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10000F974(&qword_1004AA2A8);
  __chkstk_darwin(v10 - 8);
  v247 = v223 - v11;
  v12 = sub_10000F974(&unk_1004A3D90);
  v13 = __chkstk_darwin(v12 - 8);
  v233 = v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v238 = v223 - v16;
  v17 = __chkstk_darwin(v15);
  v243 = v223 - v18;
  v19 = __chkstk_darwin(v17);
  v248 = v223 - v20;
  __chkstk_darwin(v19);
  v249 = (v223 - v21);
  v260 = type metadata accessor for Date();
  v227 = *(v260 - 8);
  v22 = __chkstk_darwin(v260 - 8);
  v228 = v223 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v232 = v223 - v25;
  v26 = __chkstk_darwin(v24);
  v234 = v223 - v27;
  v28 = __chkstk_darwin(v26);
  v235 = v223 - v29;
  __chkstk_darwin(v28);
  v236 = v223 - v30;
  v257 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
  v225 = *(v257 - 8);
  __chkstk_darwin(v257);
  v32 = v223 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
  v33 = *(v258 - 8);
  __chkstk_darwin(v258);
  v35 = v223 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AppSession();
  __chkstk_darwin(v36 - 8);
  v38 = v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  sub_10012A110(v1 + v39, v38, type metadata accessor for AppSession);
  sub_1000258E8();
  sub_10012A1E0(v38, type metadata accessor for AppSession);
  v40 = OBJC_IVAR____TtC7Measure14MetricsManager_edgeGuideMetrics;
  v246 = OBJC_IVAR____TtC7Measure14MetricsManager_edgeGuideMetrics;
  swift_beginAccess();
  v41 = *(v1 + v40);
  v42 = v41[2];
  if (v42)
  {
    v43 = sub_10006924C(v41[2], 0);
    v253 = v33;
    v261 = sub_1000C8B54(&v290, v43 + ((v33[5].u8[0] + 32) & ~v33[5].u8[0]), v42, v41);
    v254 = v293;
    v255 = v292;

    result = sub_10007489C();
    if (v261 != v42)
    {
      __break(1u);
      goto LABEL_91;
    }

    v33 = v253;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  v45 = v43[2];
  v261 = v1;
  v46 = v249;
  if (v45)
  {
    v47 = *(v258 + 68);
    v250 = &v35[*(v258 + 72)];
    v48 = (v33[5].u8[0] + 32) & ~v33[5].u8[0];
    v223[1] = v43;
    v49 = v43 + v48;
    v240 = (v227 + 48);
    v241 = v47;
    v230 = (v227 + 8);
    v231 = (v227 + 32);
    v239 = &v33[3].i64[1];
    v251 = v33[4].i64[1];
    v255 = v45 - 1;
    v229 = v32;
    while (1)
    {
      v253 = v49;
      sub_10012A110(v49, v35, type metadata accessor for MetricsManager.EdgeGuideMetric);
      v50 = *(v35 + 4);
      v51 = *(v35 + 20);
      v53 = *(v35 + 12);
      v52 = *(v35 + 13);
      v54 = *(v35 + 18);
      v56 = *(v35 + 7);
      v55 = *(v35 + 8);
      v58 = *(v35 + 10);
      v57 = *(v35 + 11);
      v59 = *(v35 + 5);
      v254 = *(v35 + 4);
      sub_1000D7AB8(&v35[v241], v46);
      v60 = v260;
      if ((*v240)(v46, 1, v260) == 1)
      {

        sub_100018F04(v46, &unk_1004A3D90);
        v61 = 0.0;
      }

      else
      {
        v62 = v58;
        v63 = v56;
        v64 = v236;
        (*v231)(v236, v46, v60);

        Date.timeIntervalSince(_:)();
        v66 = v65;
        v67 = v64;
        v56 = v63;
        v58 = v62;
        v32 = v229;
        (*v230)(v67, v60);
        v61 = v66;
      }

      v68 = 0.0;
      v69 = v247;
      if ((v250[1].i8[0] & 1) == 0)
      {
        v70 = &v35[*(v258 + 76)];
        if ((v70[1].i8[0] & 1) == 0)
        {
          v71 = vsubq_f32(*v250, *v70);
          v72 = vsub_f32(*v250->f32, *v70->f32);
          v68 = sqrtf(COERCE_FLOAT(vmulq_f32(v71, v71).i32[2]) + vaddv_f32(vmul_f32(v72, v72)));
        }
      }

      v73 = v35[96];
      v74 = v35[97];
      *&v280 = __PAIR64__(v53, v50);
      *(&v280 + 1) = vrev64_s32(v51);
      v281 = __PAIR64__(v54, v52);
      v282 = v56;
      v283 = v55;
      v284 = v58;
      v285 = v57;
      v286 = v254;
      v287 = v59;
      v288 = __PAIR64__(LODWORD(v68), LODWORD(v61));
      LOBYTE(v289) = v73;
      HIBYTE(v289) = v74;
      v290 = v280;
      v291 = __PAIR64__(v54, v52);
      v292 = v56;
      v293 = v55;
      v294 = v58;
      v295 = v57;
      v296 = v254;
      v297 = v59;
      v298 = __PAIR64__(LODWORD(v68), LODWORD(v61));
      v299 = v289 & 0x101;
      sub_10012A5F4(&v290);
      sub_100018F04(&v280, &qword_1004AA2D8);
      v76 = *v35;
      v75 = *(v35 + 1);
      v1 = v261;
      v77 = v246;
      swift_beginAccess();
      v78 = sub_100198230(v76, v75);
      if (v79)
      {
        v80 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = *(v77 + v1);
        *&v269[0] = v82;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000BD840();
          v82 = *&v269[0];
        }

        sub_10012A178(*(v82 + 56) + v80 * v251, v69, type metadata accessor for MetricsManager.EdgeGuideMetric);
        sub_1000C6B50(v80, v82);
        v83 = 0;
        *(v77 + v1) = v82;
      }

      else
      {
        v83 = 1;
      }

      (*v239)(v69, v83, 1, v258);
      swift_endAccess();
      sub_100018F04(v69, &qword_1004AA2A8);
      sub_10012A1E0(v35, type metadata accessor for MetricsManager.EdgeGuideMetric);
      v46 = v249;
      if (!v255)
      {
        break;
      }

      --v255;
      v49 = v253 + v251;
    }
  }

  v84 = OBJC_IVAR____TtC7Measure14MetricsManager_surfaceVectorGuideMetrics;
  swift_beginAccess();
  v85 = *(v1 + v84);
  v86 = v84;
  v87 = v85[2];
  v250 = v86;
  if (v87)
  {
    v88 = sub_100069224(v87, 0);
    v89 = v225;
    v90 = v88;
    v258 = sub_1000C8B14(&v280, &v88[(*(v225 + 80) + 32) & ~*(v225 + 80)], v87, v85);
    v255 = v283;

    sub_10007489C();
    if (v258 == v87)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v90 = _swiftEmptyArrayStorage;
  v89 = v225;
LABEL_24:
  v91 = *(v90 + 2);
  v92 = v259;
  v93 = v248;
  if (v91)
  {
    v253 = (v32 + *(v257 + 68));
    v94 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v236 = v90;
    v95 = &v90[v94];
    v249 = (v227 + 48);
    v247 = *(v257 + 60);
    v239 = (v227 + 8);
    v240 = (v227 + 32);
    v246 = (v89 + 56);
    v251 = *(v89 + 72);
    v255 = v91 - 1;
    while (1)
    {
      v254 = v95;
      sub_10012A110(v95, v32, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
      v96 = *(v32 + 16);
      v97 = *(v32 + 20);
      v98 = *(v32 + 48);
      v99 = *(v32 + 72);
      v101 = *(v32 + 56);
      v100 = *(v32 + 64);
      v102 = *(v32 + 80);
      v103 = *(v32 + 88);
      v104 = *(v32 + 32);
      v105 = *(v32 + 40);
      sub_1000D7AB8(v32 + v247, v93);
      v106 = v260;
      if ((*v249)(v93, 1, v260) == 1)
      {

        sub_100018F04(v93, &unk_1004A3D90);
        v107 = 0.0;
      }

      else
      {
        v108 = *v240;
        v241 = v102;
        v109 = v101;
        v110 = v104;
        v111 = v235;
        v108(v235, v93, v106);

        Date.timeIntervalSince(_:)();
        v113 = v112;
        v114 = v111;
        v104 = v110;
        v101 = v109;
        v102 = v241;
        (*v239)(v114, v106);
        v107 = v113;
      }

      v115 = 0.0;
      v116 = v245;
      v117 = v258;
      if ((v253[1].i8[0] & 1) == 0)
      {
        v118 = *(v32 + *(v257 + 64));
        v119 = vsubq_f32(v118, *v253);
        v120 = vsub_f32(*v118.f32, *v253->f32);
        v115 = sqrtf(COERCE_FLOAT(vmulq_f32(v119, v119).i32[2]) + vaddv_f32(vmul_f32(v120, v120)));
      }

      v121 = *(v32 + 96);
      *(&v270 + 4) = vrev64_s32(v97);
      LODWORD(v270) = v96;
      HIDWORD(v270) = v98;
      LODWORD(v271) = v99;
      v272 = v101;
      v273 = v100;
      v274 = v102;
      v275 = v103;
      v276 = v104;
      v277 = v105;
      v278 = __PAIR64__(LODWORD(v115), LODWORD(v107));
      LOBYTE(v279) = v121;
      v280 = v270;
      v281 = v271;
      v282 = v101;
      v283 = v100;
      v284 = v102;
      v285 = v103;
      v286 = v104;
      v287 = v105;
      v288 = __PAIR64__(LODWORD(v115), LODWORD(v107));
      LODWORD(v258) = v258 & 0x100 | v121 | 0x4000;
      v289 = v117 & 0x100 | v121 | 0x4000;
      sub_10012A5F4(&v280);
      sub_100018F04(&v270, &qword_1004AA2E8);
      v123 = *v32;
      v122 = *(v32 + 8);
      v124 = v261;
      v125 = v250;
      swift_beginAccess();
      v126 = sub_100198230(v123, v122);
      if (v127)
      {
        v128 = v126;
        v129 = swift_isUniquelyReferenced_nonNull_native();
        v130 = *(v125->i64 + v124);
        v262 = v130;
        v92 = v259;
        if (!v129)
        {
          sub_1000BD87C();
          v130 = v262;
        }

        sub_10012A178(*(v130 + 56) + v128 * v251, v116, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
        sub_1000C6B68(v128, v130);
        v131 = 0;
        *(v125->i64 + v124) = v130;
      }

      else
      {
        v131 = 1;
        v92 = v259;
      }

      (*v246)(v116, v131, 1, v257);
      swift_endAccess();
      sub_100018F04(v116, &qword_1004AA2E0);
      sub_10012A1E0(v32, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
      v93 = v248;
      if (!v255)
      {
        break;
      }

      --v255;
      v95 = v254 + v251;
    }
  }

  v132 = OBJC_IVAR____TtC7Measure14MetricsManager_verticalGuideMetrics;
  v133 = v261;
  swift_beginAccess();
  v134 = *(v133 + v132);
  v135 = v134[2];
  if (!v135)
  {
    v137 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v136 = sub_1000691FC(v134[2], 0);
  v258 = sub_1000C8890(&v270, v136 + ((*(v226 + 80) + 32) & ~*(v226 + 80)), v135, v134);

  result = sub_10007489C();
  if (v258 != v135)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v92 = v259;
  v137 = v136;
LABEL_42:
  v138 = v137[1].i64[0];
  v139 = v252;
  if (v138)
  {
    v140 = (v252 + v256[12]);
    v141 = v256[10];
    v142 = v137 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
    v258 = v227 + 48;
    v253 = (v227 + 32);
    v254 = v141;
    v250 = v137;
    v251 = v227 + 8;
    v257 = v226 + 56;
    v255 = *(v226 + 72);
    do
    {
      sub_10012A110(v142, v139, type metadata accessor for MetricsManager.VerticalGuideMetric);
      v146 = *(v139 + 28);
      v147 = *(v139 + 16);
      v148 = v243;
      sub_1000D7AB8(v139 + v254, v243);
      v149 = v260;
      if ((*v258)(v148, 1, v260) == 1)
      {
        sub_100018F04(v148, &unk_1004A3D90);
        v150 = 0.0;
      }

      else
      {
        v151 = v132;
        v152 = v146;
        v153 = v140;
        v154 = v234;
        (v253->i64[0])(v234, v148, v149);
        Date.timeIntervalSince(_:)();
        v139 = v252;
        v156 = v155;
        v157 = v154;
        v140 = v153;
        v146 = v152;
        v132 = v151;
        (*v251)(v157, v149);
        v150 = v156;
      }

      v158 = 0.0;
      if ((v140[1].i8[0] & 1) == 0)
      {
        v159 = *(v139 + v256[11]);
        v160 = vsubq_f32(v159, *v140);
        v161 = vsub_f32(*v159.f32, *v140->f32);
        v158 = sqrtf(COERCE_FLOAT(vmulq_f32(v160, v160).i32[2]) + vaddv_f32(vmul_f32(v161, v161)));
      }

      v162 = *(v139 + 24);
      LODWORD(v270) = v146;
      *(&v270 + 4) = vrev64_s32(v147);
      *(&v270 + 3) = v150;
      *&v271 = v158;
      BYTE4(v271) = v162;
      v279 = 0x8000;
      sub_10012A5F4(&v270);
      v164 = *v139;
      v163 = *(v139 + 8);
      v165 = v261;
      swift_beginAccess();
      v166 = sub_100198230(v164, v163);
      if (v167)
      {
        v168 = v166;
        v169 = swift_isUniquelyReferenced_nonNull_native();
        v170 = *(v165 + v132);
        v262 = v170;
        *(v165 + v132) = 0x8000000000000000;
        if (!v169)
        {
          sub_1000BE350();
          v170 = v262;
        }

        v145 = v255;
        v144 = v244;
        sub_10012A178(*(v170 + 56) + v168 * v255, v244, type metadata accessor for MetricsManager.VerticalGuideMetric);
        sub_1000C6EA0(v168, v170);
        v143 = 0;
        *(v165 + v132) = v170;
      }

      else
      {
        v143 = 1;
        v144 = v244;
        v145 = v255;
      }

      (*v257)(v144, v143, 1, v256);
      swift_endAccess();
      sub_100018F04(v144, &qword_1004AA2B0);
      v139 = v252;
      sub_10012A1E0(v252, type metadata accessor for MetricsManager.VerticalGuideMetric);
      v142 += v145;
      --v138;
    }

    while (v138);

    v92 = v259;
  }

  else
  {
  }

  v171 = OBJC_IVAR____TtC7Measure14MetricsManager_personHeightMetrics;
  v172 = v261;
  swift_beginAccess();
  v257 = v171;
  v173 = *(v172 + v171);
  v174 = v173[2];
  v175 = v238;
  v176 = v224;
  if (!v174)
  {
    v179 = _swiftEmptyArrayStorage;
    v180 = _swiftEmptyArrayStorage[2];
    if (!v180)
    {
    }

LABEL_62:
    v181 = 0;
    v182 = v237[11];
    v256 = &v179[(*(v176 + 80) + 32) & ~*(v176 + 80)];
    v255 = v92 + v237[13];
    v183 = (v227 + 48);
    v184 = (v227 + 32);
    v185 = *(v176 + 72);
    v253 = (v227 + 48);
    v254 = v185;
    v248 = v179;
    v249 = (v227 + 8);
    v251 = v182;
    v252 = (v227 + 32);
    v250 = v180;
    while (1)
    {
      sub_10012A110(v256 + v254 * v181, v92, type metadata accessor for MetricsManager.PersonHeightMetric);
      LODWORD(v258) = *(v92 + 32);
      sub_100127998();
      v187 = v186;
      sub_1000D7AB8(v92 + v182, v175);
      v188 = v183->i64[0];
      v189 = v260;
      if ((v183->i64[0])(v175, 1, v260) == 1)
      {
        sub_100018F04(v175, &unk_1004A3D90);
        v190 = 0.0;
      }

      else
      {
        v191 = *v184;
        v192 = v232;
        (*v184)(v232, v175, v189);
        v193 = v233;
        sub_1000D7AB8(v92 + v237[12], v233);
        if (v188(v193, 1, v189) == 1)
        {
          (*v249)(v192, v189);
          sub_100018F04(v193, &unk_1004A3D90);
          v190 = 0.0;
        }

        else
        {
          v194 = v228;
          v191(v228, v193, v189);
          Date.timeIntervalSince(_:)();
          v196 = v195;
          v197 = *v249;
          (*v249)(v194, v189);
          (v197)(v192, v189);
          v190 = v196;
        }

        v175 = v238;
        v180 = v250;
        v182 = v251;
      }

      v198 = v258;
      v199 = *(v92 + 24);
      v200 = *(v255 + 4) ? 0.0 : *v255;
      v201 = *(v92 + 16);
      v202 = *(v201 + 16);
      if (v202)
      {
        v203 = *(v201 + 32);
        v204 = v202 - 1;
        if (v202 == 1)
        {
          v205 = vabds_f32(v200, v203);
        }

        else
        {
          v207 = (v201 + 36);
          v208 = (v201 + 36);
          v209 = v204;
          v210 = *(v201 + 32);
          do
          {
            v211 = *v208++;
            v212 = v211;
            if (v211 < v210)
            {
              v210 = v212;
            }

            --v209;
          }

          while (v209);
          v213 = v200 - v210;
          do
          {
            v214 = *v207++;
            v215 = v214;
            if (v203 < v214)
            {
              v203 = v215;
            }

            --v204;
          }

          while (v204);
          v205 = fabsf(v213);
        }
      }

      else
      {
        v206 = fabsf(*v255);
        v203 = 0.0;
        v205 = *(v255 + 4) ? 0.0 : v206;
      }

      v181 = (v181 + 1);
      v216 = vabds_f32(v203, v200);
      v217 = sub_10012758C();
      v218 = *(v201 + 16);
      LOBYTE(v262) = v198;
      HIDWORD(v262) = v187;
      v263 = v190;
      v264 = v199;
      v265 = v205;
      v266 = v216;
      v267 = v217;
      v268 = v218;
      sub_10001D95C(&v262, v269);
      sub_10012ABB0(v269);
      v219 = *v92;
      v220 = *(v92 + 8);
      swift_beginAccess();
      v221 = v242;
      sub_1000C6618(v219, v220, v242);
      swift_endAccess();
      v222 = v221;
      v92 = v259;
      sub_100018F04(v222, &unk_1004A3EC0);
      sub_10012A1E0(v92, type metadata accessor for MetricsManager.PersonHeightMetric);
      if (v181 == v180)
      {
        break;
      }

      v184 = v252;
      v183 = v253;
    }
  }

  v177 = sub_1000691D4(v173[2], 0);
  v178 = (*(v176 + 80) + 32) & ~*(v176 + 80);
  v248 = v177;
  v258 = sub_1000C8850(v269, &v177[v178], v174, v173);

  result = sub_10007489C();
  if (v258 == v174)
  {
    v92 = v259;
    v179 = v248;
    v180 = *(v248 + 2);
    if (!v180)
    {
    }

    goto LABEL_62;
  }

LABEL_92:
  __break(1u);
  return result;
}