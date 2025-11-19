_BYTE *sub_100050414@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  result = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (result)
  {
    v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    v50 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
    if (!v13)
    {
LABEL_15:
      v26 = 0;
      goto LABEL_16;
    }

    if (*(v13 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
    {
      v14 = result[84];
    }

    else
    {
      v14 = 1;
    }

    v15 = *(v13 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi);
    if (v14)
    {
      v16 = 0;
      if (!v15)
      {
LABEL_13:
        if (v16)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v16 = result[85] ^ 1;
      if (!v15)
      {
        goto LABEL_13;
      }
    }

    if ((result[86] & 1) == 0)
    {
      v42 = result[87];
      if (v16)
      {
        if ((v42 & 1) == 0)
        {

          v43 = sub_100054B44();
          v48 = v44;
          v49 = v43;

          v47 = sub_100054D50();
          v24 = v45;

          v25 = 3;
          goto LABEL_19;
        }

LABEL_14:

        String.LocalizationValue.init(stringLiteral:)();
        v18 = v51;
        v17 = v52;
        v19 = *(v52 + 16);
        v19(v9, v11, v51);
        static Locale.current.getter();
        v20 = String.init(localized:table:bundle:locale:comment:)();
        v48 = v21;
        v49 = v20;
        v46 = v9;
        v22 = *(v17 + 8);
        v22(v11, v18);

        String.LocalizationValue.init(stringLiteral:)();
        v19(v46, v11, v18);
        static Locale.current.getter();
        v47 = String.init(localized:table:bundle:locale:comment:)();
        v24 = v23;
        v22(v11, v18);
        v9 = v46;

        v25 = 1;
LABEL_19:
        String.LocalizationValue.init(stringLiteral:)();
        v30 = v51;
        v31 = v52;
        (*(v52 + 16))(v9, v11, v51);
        static Locale.current.getter();
        v32 = String.init(localized:table:bundle:locale:comment:)();
        v34 = v33;

        (*(v31 + 8))(v11, v30);

        *&v54 = v49;
        *(&v54 + 1) = v48;
        *&v55 = v47;
        *(&v55 + 1) = v24;
        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        *&v57 = v32;
        *(&v57 + 1) = v34;
        *&v58 = 0;
        *(&v58 + 1) = 0xE000000000000000;
        *&v59 = 0;
        *(&v59 + 1) = 0xE000000000000000;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        *&v66 = 0;
        *(&v66 + 1) = v25;
        v67 = 0uLL;
        v68[0] = v49;
        v68[1] = v48;
        v68[2] = v47;
        v68[3] = v24;
        v68[4] = 0;
        v68[5] = 0xE000000000000000;
        v68[6] = v32;
        v68[7] = v34;
        v68[8] = 0;
        v68[9] = 0xE000000000000000;
        v68[10] = 0;
        v68[11] = 0xE000000000000000;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v75 = 0;
        v76 = v25;
        v77 = 0;
        v78 = 0;
        sub_100052AFC(&v54, &v53);
        result = sub_10002A024(v68);
        v35 = v65;
        a1[10] = v64;
        a1[11] = v35;
        v36 = v67;
        a1[12] = v66;
        a1[13] = v36;
        v37 = v61;
        a1[6] = v60;
        a1[7] = v37;
        v38 = v63;
        a1[8] = v62;
        a1[9] = v38;
        v39 = v57;
        a1[2] = v56;
        a1[3] = v39;
        v40 = v59;
        a1[4] = v58;
        a1[5] = v40;
        v41 = v55;
        *a1 = v54;
        a1[1] = v41;
        return result;
      }

      v26 = v42 ^ 1;
LABEL_16:

      v27 = sub_100054F5C();
      v48 = v28;
      v49 = v27;

      v47 = sub_100055168();
      v24 = v29;

      if (v26)
      {
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100050908@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  if (qword_10007EC50 != -1)
  {
    result = swift_once();
  }

  v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (v15)
  {
    v16 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    v56 = a1;
    if (!v16)
    {
LABEL_13:
      v18 = 0xE000000000000000;
      v61 = 0;
      v62 = 0xE000000000000000;
      v63 = 0;
      v64 = 0xE000000000000000;
      v65 = 0;
      v66 = 0xE000000000000000;
      v67 = 0;
      v68 = 0xE000000000000000;
      v69 = 0;
      v70 = 0xE000000000000000;
      v71 = 0;
      v72 = 0xE000000000000000;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      sub_100052AFC(&v61, v60);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0xE000000000000000;
      v57 = 0xE000000000000000;
      v58 = 0;
      v24 = 0xE000000000000000;
LABEL_20:
      v59 = v20;
      v61 = v19;
      v62 = v18;
      v63 = v20;
      v64 = v23;
      v65 = 0;
      v66 = 0xE000000000000000;
      v41 = v18;
      v42 = v58;
      v43 = v19;
      v44 = v57;
      v67 = v58;
      v68 = v57;
      v69 = v21;
      v70 = v24;
      v71 = 0;
      v72 = 0xE000000000000000;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = v22;
      v80 = 0uLL;
      v45 = v24;
      v46 = v21;
      v47 = v22;
      result = sub_10002A024(&v61);
      v48 = v56;
      *v56 = v43;
      v48[1] = v41;
      v48[2] = v59;
      v48[3] = v23;
      v48[4] = 0;
      v48[5] = 0xE000000000000000;
      v48[6] = v42;
      v48[7] = v44;
      v48[8] = v46;
      v48[9] = v45;
      v48[10] = 0;
      v48[11] = 0xE000000000000000;
      *(v48 + 6) = 0u;
      *(v48 + 7) = 0u;
      *(v48 + 8) = 0u;
      *(v48 + 9) = 0u;
      *(v48 + 10) = 0u;
      *(v48 + 11) = 0u;
      v48[24] = v47;
      v48[25] = 0;
      v48[26] = 0;
      v48[27] = 0;
      return result;
    }

    if (*(v16 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
    {
      v17 = ~*(v15 + 84) & 1;
    }

    else
    {
      v17 = 0;
    }

    if (*(v16 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) == 1 && !*(v15 + 86))
    {
      v17 |= 2uLL;
    }

    if (v17 == 3)
    {
      v54 = 3;
      v55 = v5;
      v53 = sub_100055374();
      v18 = v25;

      v59 = sub_100055580();
      v52 = v26;

      v27 = sub_10005578C();
    }

    else
    {
      if (!v17)
      {
        goto LABEL_13;
      }

      v54 = v17;
      v55 = v5;
      if (v17)
      {
        String.LocalizationValue.init(stringLiteral:)();
        v57 = v7[2];
        v58 = v7 + 2;
        v57(v11, v14, v6);
        static Locale.current.getter();
        v53 = String.init(localized:table:bundle:locale:comment:)();
        v18 = v31;
        v50 = v7[1];
        v51 = v7;
        v50(v14, v6);

        v32 = v6;
        String.LocalizationValue.init(stringLiteral:)();
        v33 = v6;
        v34 = v57;
        v57(v11, v14, v33);
        static Locale.current.getter();
        v59 = String.init(localized:table:bundle:locale:comment:)();
        v52 = v35;
        v50(v14, v32);

        String.LocalizationValue.init(stringLiteral:)();
        v34(v11, v14, v32);
        static Locale.current.getter();
        v36 = String.init(localized:table:bundle:locale:comment:)();
        v57 = v37;
        v58 = v36;
        v6 = v32;
        v50(v14, v32);
        v7 = v51;
        goto LABEL_19;
      }

      v53 = sub_100055998();
      v18 = v29;

      v59 = sub_1000559DC();
      v52 = v30;

      v27 = sub_100055BE8();
    }

    v57 = v28;
    v58 = v27;
LABEL_19:

    String.LocalizationValue.init(stringLiteral:)();
    (v7[2])(v11, v14, v6);
    static Locale.current.getter();
    v38 = String.init(localized:table:bundle:locale:comment:)();
    v24 = v39;
    (v7[1])(v14, v6);

    v23 = v52;
    v19 = v53;
    v61 = v53;
    v62 = v18;
    v20 = v59;
    v63 = v59;
    v64 = v52;
    v65 = 0;
    v66 = 0xE000000000000000;
    v67 = v58;
    v68 = v57;
    v69 = v38;
    v70 = v24;
    v71 = 0;
    v72 = 0xE000000000000000;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v40 = v54;
    v79 = v54;
    v80 = 0uLL;
    sub_100052AFC(&v61, v60);
    v21 = v38;
    v22 = v40;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

double sub_100050F1C@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v37 = "Turn On Bluetooth";
  String.LocalizationValue.init(stringLiteral:)();
  v36 = v5[2];
  v32 = v4;
  v36(v9, v11, v4);
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v39 = v13;
  v40 = v12;
  v35 = v5[1];
  v35(v11, v4);

  v14 = sub_10002FAA8();
  v38 = v14;
  v16 = v15;

  v17 = sub_100055E24(v14, v16);
  v33 = v18;
  v34 = v17;

  String.LocalizationValue.init(stringLiteral:)();
  v19 = v32;
  v36(v9, v11, v32);
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v35(v11, v19);

  *&v42 = v40;
  *(&v42 + 1) = v39;
  *&v43 = v34;
  *(&v43 + 1) = v33;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  *&v45 = v20;
  *(&v45 + 1) = v22;
  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  *&v55 = v38;
  *(&v55 + 1) = v16;
  v56[0] = v40;
  v56[1] = v39;
  v56[2] = v34;
  v56[3] = v33;
  v56[4] = 0;
  v56[5] = 0xE000000000000000;
  v56[6] = v20;
  v56[7] = v22;
  v56[8] = 0;
  v56[9] = 0xE000000000000000;
  v56[10] = 0;
  v56[11] = 0xE000000000000000;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v64 = v38;
  v65 = v16;
  sub_100052AFC(&v42, &v41);
  sub_10002A024(v56);
  v23 = v53;
  a1[10] = v52;
  a1[11] = v23;
  v24 = v55;
  a1[12] = v54;
  a1[13] = v24;
  v25 = v49;
  a1[6] = v48;
  a1[7] = v25;
  v26 = v51;
  a1[8] = v50;
  a1[9] = v26;
  v27 = v45;
  a1[2] = v44;
  a1[3] = v27;
  v28 = v47;
  a1[4] = v46;
  a1[5] = v28;
  result = *&v42;
  v30 = v43;
  *a1 = v42;
  a1[1] = v30;
  return result;
}

uint64_t sub_100051290@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v12)
  {
    v43 = a1;
    v13 = v12;
    String.LocalizationValue.init(stringLiteral:)();
    v46 = v5[2];
    v46(v9, v11, v4);
    static Locale.current.getter();
    v14 = String.init(localized:table:bundle:locale:comment:)();
    v47 = v15;
    v48 = v14;
    v16 = v5[1];
    v44 = v5 + 1;
    v45 = v16;
    v16(v11, v4);

    v49 = v13;
    v17 = &v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
    v18 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (v18)
    {
      v19 = *v17;
      v20 = v17[1];

      v21 = sub_100056068(v19, v18);
      v41 = v22;
      v42 = v21;

      String.LocalizationValue.init(stringLiteral:)();
      v23 = v46;
      v46(v9, v11, v4);
      static Locale.current.getter();
      v24 = String.init(localized:table:bundle:locale:comment:)();
      v39 = v25;
      v40 = v24;
      v26 = v45;
      v45(v11, v4);

      String.LocalizationValue.init(stringLiteral:)();
      v23(v9, v11, v4);
      static Locale.current.getter();
      v27 = String.init(localized:table:bundle:locale:comment:)();
      v29 = v28;

      v26(v11, v4);

      *&v51 = v48;
      *(&v51 + 1) = v47;
      *&v52 = v42;
      *(&v52 + 1) = v41;
      *&v53 = 0;
      *(&v53 + 1) = 0xE000000000000000;
      *&v54 = v40;
      *(&v54 + 1) = v39;
      *&v55 = v27;
      *(&v55 + 1) = v29;
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65[0] = v48;
      v65[1] = v47;
      v65[2] = v42;
      v65[3] = v41;
      v65[4] = 0;
      v65[5] = 0xE000000000000000;
      v65[6] = v40;
      v65[7] = v39;
      v65[8] = v27;
      v65[9] = v29;
      v65[10] = 0;
      v65[11] = 0xE000000000000000;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      sub_100052AFC(&v51, &v50);
      result = sub_10002A024(v65);
      v31 = v62;
      v32 = v43;
      v43[10] = v61;
      v32[11] = v31;
      v33 = v64;
      v32[12] = v63;
      v32[13] = v33;
      v34 = v58;
      v32[6] = v57;
      v32[7] = v34;
      v35 = v60;
      v32[8] = v59;
      v32[9] = v35;
      v36 = v54;
      v32[2] = v53;
      v32[3] = v36;
      v37 = v56;
      v32[4] = v55;
      v32[5] = v37;
      v38 = v52;
      *v32 = v51;
      v32[1] = v38;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_10005172C@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v32 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v33 = v5[2];
  v33(v9, v11, v4);
  v40 = v5 + 2;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v13;
  v39 = v12;
  v14 = v5[1];
  v32[1] = v5 + 1;
  v14(v11, v4);
  v15 = v14;

  String.LocalizationValue.init(stringLiteral:)();
  v16 = v33;
  v33(v9, v11, v4);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v18;
  v37 = v17;
  v15(v11, v4);

  String.LocalizationValue.init(stringLiteral:)();
  v16(v9, v11, v4);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v20;
  v35 = v19;
  v15(v11, v4);

  String.LocalizationValue.init(stringLiteral:)();
  v16(v9, v11, v4);
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  v15(v11, v4);

  *&v42 = v39;
  *(&v42 + 1) = v38;
  *&v43 = v37;
  *(&v43 + 1) = v36;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  *&v45 = v35;
  *(&v45 + 1) = v34;
  *&v46 = v21;
  *(&v46 + 1) = v23;
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56[0] = v39;
  v56[1] = v38;
  v56[2] = v37;
  v56[3] = v36;
  v56[4] = 0;
  v56[5] = 0xE000000000000000;
  v56[6] = v35;
  v56[7] = v34;
  v56[8] = v21;
  v56[9] = v23;
  v56[10] = 0;
  v56[11] = 0xE000000000000000;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  sub_100052AFC(&v42, &v41);
  sub_10002A024(v56);
  v24 = v53;
  a1[10] = v52;
  a1[11] = v24;
  v25 = v55;
  a1[12] = v54;
  a1[13] = v25;
  v26 = v49;
  a1[6] = v48;
  a1[7] = v26;
  v27 = v51;
  a1[8] = v50;
  a1[9] = v27;
  v28 = v45;
  a1[2] = v44;
  a1[3] = v28;
  v29 = v47;
  a1[4] = v46;
  a1[5] = v29;
  result = *&v42;
  v31 = v43;
  *a1 = v42;
  a1[1] = v31;
  return result;
}

double sub_100051B64@<D0>(_OWORD *a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v31 = v4[2];
  v31(v8, v10, v3);
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v12;
  v38 = v11;
  v13 = v4[1];
  v13(v10, v3);

  String.LocalizationValue.init(stringLiteral:)();
  v14 = v31;
  v31(v8, v10, v3);
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v16;
  v35 = v15;
  v13(v10, v3);

  String.LocalizationValue.init(stringLiteral:)();
  v14(v8, v10, v3);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v18;
  v33 = v17;
  v13(v10, v3);

  String.LocalizationValue.init(stringLiteral:)();
  v14(v8, v10, v3);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  v13(v10, v3);

  *&v40 = v38;
  *(&v40 + 1) = v37;
  *&v41 = v35;
  *(&v41 + 1) = v34;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  *&v43 = v33;
  *(&v43 + 1) = v32;
  *&v44 = v19;
  *(&v44 + 1) = v21;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54[0] = v38;
  v54[1] = v37;
  v54[2] = v35;
  v54[3] = v34;
  v54[4] = 0;
  v54[5] = 0xE000000000000000;
  v54[6] = v33;
  v54[7] = v32;
  v54[8] = v19;
  v54[9] = v21;
  v54[10] = 0;
  v54[11] = 0xE000000000000000;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  sub_100052AFC(&v40, &v39);
  sub_10002A024(v54);
  v22 = v51;
  v23 = v36;
  v36[10] = v50;
  v23[11] = v22;
  v24 = v53;
  v23[12] = v52;
  v23[13] = v24;
  v25 = v47;
  v23[6] = v46;
  v23[7] = v25;
  v26 = v49;
  v23[8] = v48;
  v23[9] = v26;
  v27 = v43;
  v23[2] = v42;
  v23[3] = v27;
  v28 = v45;
  v23[4] = v44;
  v23[5] = v28;
  result = *&v40;
  v30 = v41;
  *v23 = v40;
  v23[1] = v30;
  return result;
}

uint64_t sub_100051F80@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v42 = v5[2];
  v42(v9, v11, v4);
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v43 = v13;
  v44 = v12;
  v15 = v5[1];
  v14 = v5 + 1;
  v41 = v15;
  v15(v11, v4);

  v16 = sub_10002FAA8();
  v45 = v17;

  if (qword_10007EC50 != -1)
  {
    result = swift_once();
  }

  v19 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v19)
  {
    v38 = v16;
    v39 = v14;
    v40 = v4;
    v20 = (v19 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
    v21 = v20[1];
    if (v21)
    {
      v22 = *v20;
      v23 = v20[1];

      v37 = sub_100058090(v22, v21);
      v25 = v24;

      String.LocalizationValue.init(stringLiteral:)();
      v26 = v40;
      v42(v9, v11, v40);
      static Locale.current.getter();
      v27 = String.init(localized:table:bundle:locale:comment:)();
      v29 = v28;
      v41(v11, v26);

      *&v47 = v44;
      *(&v47 + 1) = v43;
      *&v48 = v37;
      *(&v48 + 1) = v25;
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      *&v50 = v27;
      *(&v50 + 1) = v29;
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      *&v60 = v38;
      *(&v60 + 1) = v45;
      v61[0] = v44;
      v61[1] = v43;
      v61[2] = v37;
      v61[3] = v25;
      v61[4] = 0;
      v61[5] = 0xE000000000000000;
      v61[6] = v27;
      v61[7] = v29;
      v61[8] = 0;
      v61[9] = 0xE000000000000000;
      v61[10] = 0;
      v61[11] = 0xE000000000000000;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      v69 = v38;
      v70 = v45;
      sub_100052AFC(&v47, &v46);
      result = sub_10002A024(v61);
      v30 = v58;
      a1[10] = v57;
      a1[11] = v30;
      v31 = v60;
      a1[12] = v59;
      a1[13] = v31;
      v32 = v54;
      a1[6] = v53;
      a1[7] = v32;
      v33 = v56;
      a1[8] = v55;
      a1[9] = v33;
      v34 = v50;
      a1[2] = v49;
      a1[3] = v34;
      v35 = v52;
      a1[4] = v51;
      a1[5] = v35;
      v36 = v48;
      *a1 = v47;
      a1[1] = v36;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10005235C@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v32 = v5[2];
  v32(v9, v11, v4);
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v13;
  v30 = v12;
  v31 = v5[1];
  v31(v11, v4);

  String.LocalizationValue.init(stringLiteral:)();
  v32(v9, v11, v4);
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v15;
  v28 = v14;
  v31(v11, v4);

  String.LocalizationValue.init(stringLiteral:)();
  v32(v9, v11, v4);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  v31(v11, v4);

  *&v34 = v30;
  *(&v34 + 1) = v29;
  *&v35 = v28;
  *(&v35 + 1) = v27;
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  *&v37 = v16;
  *(&v37 + 1) = v18;
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48[0] = v30;
  v48[1] = v29;
  v48[2] = v28;
  v48[3] = v27;
  v48[4] = 0;
  v48[5] = 0xE000000000000000;
  v48[6] = v16;
  v48[7] = v18;
  v48[8] = 0;
  v48[9] = 0xE000000000000000;
  v48[10] = 0;
  v48[11] = 0xE000000000000000;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  sub_100052AFC(&v34, &v33);
  sub_10002A024(v48);
  v19 = v45;
  a1[10] = v44;
  a1[11] = v19;
  v20 = v47;
  a1[12] = v46;
  a1[13] = v20;
  v21 = v41;
  a1[6] = v40;
  a1[7] = v21;
  v22 = v43;
  a1[8] = v42;
  a1[9] = v22;
  v23 = v37;
  a1[2] = v36;
  a1[3] = v23;
  v24 = v39;
  a1[4] = v38;
  a1[5] = v24;
  result = *&v34;
  v26 = v35;
  *a1 = v34;
  a1[1] = v26;
  return result;
}

__n128 sub_1000526F4@<Q0>(__n128 *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  if (qword_10007EC50 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = qword_1000814E8;
    v13 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v14 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon);
      v16 = v15;
      v17 = *(v12 + v13);
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = 0;
      v17 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v17)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v44 = v15;
    v18 = (v17 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
    v20 = *v18;
    v19 = v18[1];
    swift_bridgeObjectRetain_n();

    if (v19)
    {
      break;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    swift_once();
  }

  v21 = sub_100059498(v20, v19);
  v42 = v22;
  v43 = v21;

  String.LocalizationValue.init(stringLiteral:)();
  v41.n128_u64[0] = v20;
  v41.n128_u64[1] = v19;
  v38 = v5[2];
  v38(v9, v11, v4);
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v39 = v24;
  v40 = v23;
  v37 = v5[1];
  v37(v11, v4);

  String.LocalizationValue.init(stringLiteral:)();
  v38(v9, v11, v4);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v37(v11, v4);

  v46.n128_u64[0] = 0;
  v46.n128_u64[1] = 0xE000000000000000;
  v47.n128_u64[0] = 0;
  v47.n128_u64[1] = 0xE000000000000000;
  v48.n128_u64[0] = 0;
  v48.n128_u64[1] = 0xE000000000000000;
  v49.n128_u64[0] = v40;
  v49.n128_u64[1] = v39;
  v50.n128_u64[0] = v25;
  v50.n128_u64[1] = v27;
  v51.n128_u64[0] = 0;
  v51.n128_u64[1] = 0xE000000000000000;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55.n128_u64[0] = 0;
  v55.n128_u64[1] = v44;
  v56 = v41;
  v57.n128_u64[0] = v43;
  v57.n128_u64[1] = v42;
  v58 = 0u;
  v59 = 0u;
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  v60[2] = 0;
  v60[3] = 0xE000000000000000;
  v60[4] = 0;
  v60[5] = 0xE000000000000000;
  v60[6] = v40;
  v60[7] = v39;
  v60[8] = v25;
  v60[9] = v27;
  v60[10] = 0;
  v60[11] = 0xE000000000000000;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v64 = 0;
  v65 = v44;
  v66 = v41;
  v67 = v43;
  v68 = v42;
  v69 = 0u;
  v70 = 0u;
  sub_100052AFC(&v46, &v45);
  sub_10002A024(v60);
  v28 = v57;
  a1[10] = v56;
  a1[11] = v28;
  v29 = v59;
  a1[12] = v58;
  a1[13] = v29;
  v30 = v53;
  a1[6] = v52;
  a1[7] = v30;
  v31 = v55;
  a1[8] = v54;
  a1[9] = v31;
  v32 = v49;
  a1[2] = v48;
  a1[3] = v32;
  v33 = v51;
  a1[4] = v50;
  a1[5] = v33;
  result = v46;
  v35 = v47;
  *a1 = v46;
  a1[1] = v35;
  return result;
}

void sub_100052B58(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[6];
  v10 = a1[7];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_100053194;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10001BE14;
  v26 = &unk_100073E28;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);

  v16 = a1[8];
  v17 = a1[9];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_1000531CC;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10001BE14;
  v26 = &unk_100073E50;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_100052E10(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100052E6C(a3);
  }
}

char *sub_100052E6C(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042840(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000530D8@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005315C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000531B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000531F4(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v11 = a1[6];
  v10 = a1[7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v40[4] = sub_100053AB4;
  v40[5] = v12;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 1107296256;
  v40[2] = sub_10001BE14;
  v40[3] = &unk_100073F08;
  v14 = _Block_copy(v40);
  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  v19 = [objc_opt_self() systemBlueColor];
  [v18 setTintColor:v19];

  v20 = v18;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [objc_opt_self() configurationWithPointSize:72.0];
  [v20 setPreferredSymbolConfiguration:v21];

  v22 = [v2 contentView];
  [v22 addSubview:v20];

  v23 = [v2 contentView];
  v24 = [v23 mainContentGuide];

  v25 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10005C4D0;
  v27 = [v20 topAnchor];
  v28 = [v24 topAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];

  *(v26 + 32) = v29;
  v30 = [v20 bottomAnchor];
  v31 = [v24 bottomAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31];

  *(v26 + 40) = v32;
  v33 = [v20 centerXAnchor];
  v34 = [v24 centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v26 + 48) = v35;
  v36 = [v20 centerYAnchor];

  v37 = [v24 centerYAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v26 + 56) = v38;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

void sub_100053710()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100053764();
  }
}

char *sub_100053764()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042870(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000539F8@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100053A7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053ABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100053AD4(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v10 = a1[6];
  v11 = a1[7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v51 = sub_100054484;
  v52 = v12;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE14;
  v50 = &unk_100073FC0;
  v14 = _Block_copy(&aBlock);
  v15 = objc_opt_self();
  v46 = [v15 actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  v17 = a1[8];
  v16 = a1[9];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v51 = sub_1000544BC;
  v52 = v18;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE14;
  v50 = &unk_100073FE8;
  v20 = _Block_copy(&aBlock);
  v21 = [v15 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() _systemImageNamed:v22];

  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];
  v25 = [objc_opt_self() systemBlueColor];
  [v24 setTintColor:v25];

  v26 = v24;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [objc_opt_self() configurationWithPointSize:72.0];
  [v26 setPreferredSymbolConfiguration:v27];

  v28 = [v2 contentView];
  [v28 addSubview:v26];

  v29 = [v2 contentView];
  v30 = [v29 mainContentGuide];

  v31 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10005C4D0;
  v33 = [v26 topAnchor];
  v34 = [v30 topAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34];

  *(v32 + 32) = v35;
  v36 = [v26 bottomAnchor];
  v37 = [v30 bottomAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37];

  *(v32 + 40) = v38;
  v39 = [v26 centerXAnchor];
  v40 = [v30 centerXAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v32 + 48) = v41;
  v42 = [v26 centerYAnchor];

  v43 = [v30 centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v32 + 56) = v44;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
}

void sub_1000540FC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100054158(a3);
  }
}

uint64_t sub_100054158(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000428A0(v1, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1000543C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005444C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000544A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000544E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100054520(uint64_t a1, int a2)
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

uint64_t sub_100054568(uint64_t result, int a2, int a3)
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

uint64_t sub_1000545F0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x800000010005FF10;
  v16._countAndFlagsBits = 0x1000000000000022;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._countAndFlagsBits = 782074082;
  v18._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_100054B44()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100054D50()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100054F5C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100055168()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100055374()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100055580()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_10005578C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_1000559DC()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100055C1C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100055E24(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x800000010005FE30;
  v16._countAndFlagsBits = 0x1000000000000027;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._countAndFlagsBits = 0x100000000000002ELL;
  v18._object = 0x800000010005FE60;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_100056068(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 10256610;
  v16._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._object = 0x800000010005FE90;
  v18._countAndFlagsBits = 0x100000000000007ALL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_100056294(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x800000010005FF40;
  v14._countAndFlagsBits = 0xD000000000000014;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v18[1] = a1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v15._countAndFlagsBits = 0x736574756E696D20;
  v15._object = 0xE90000000000002ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v5 + 16))(v9, v11, v4);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v11, v4);
  return v16;
}

uint64_t sub_1000564E8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x800000010005FFA0;
  v16._countAndFlagsBits = 0xD000000000000019;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_100056710()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100056920(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x800000010005FFE0;
  v16._countAndFlagsBits = 0xD000000000000017;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_100056B48()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100056D54(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x8000000100060000;
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_100057280(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v27[-v16];
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 10256610;
  v20._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v21._countAndFlagsBits = a3;
  v21._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
  v22._object = 0x8000000100060020;
  v22._countAndFlagsBits = 0x1000000000000016;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v23);
  v24._countAndFlagsBits = 0x100000000000001ALL;
  v24._object = 0x8000000100060080;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v11 + 16))(v15, v17, v10);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  (*(v11 + 8))(v17, v10);
  return v25;
}

uint64_t sub_100058090(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 10256610;
  v16._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._object = 0x80000001000609B0;
  v18._countAndFlagsBits = 0x1000000000000079;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_1000585A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v27[-v16];
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 10256610;
  v20._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
  v22._countAndFlagsBits = 0x100000000000003ALL;
  v22._object = 0x8000000100060AD0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  v23._countAndFlagsBits = a3;
  v23._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v23);
  v24._object = 0x8000000100060A70;
  v24._countAndFlagsBits = 0x1000000000000016;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v11 + 16))(v15, v17, v10);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  (*(v11 + 8))(v17, v10);
  return v25;
}

uint64_t sub_100058D08()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v7, v9, v2);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v9, v2);
  return v10;
}

uint64_t sub_100059230(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v27[-v16];
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 10256610;
  v20._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
  v22._countAndFlagsBits = 0x100000000000001BLL;
  v22._object = 0x8000000100060E30;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  v23._countAndFlagsBits = a3;
  v23._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v23);
  v24._object = 0x8000000100060E90;
  v24._countAndFlagsBits = 0x1000000000000014;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v11 + 16))(v15, v17, v10);
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  (*(v11 + 8))(v17, v10);
  return v25;
}

uint64_t sub_100059498(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x1000000000000050;
  v16._object = 0x8000000100060EB0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
  v18._object = 0x8000000100060F10;
  v18._countAndFlagsBits = 0x100000000000003FLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v7 + 16))(v11, v13, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_1000596D4()
{
  if (qword_10007EC30 != -1)
  {
    result = swift_once();
  }

  byte_1000814F0 = byte_1000814E0;
  return result;
}

id sub_1000598E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}