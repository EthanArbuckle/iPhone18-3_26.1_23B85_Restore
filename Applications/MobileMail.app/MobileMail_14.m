uint64_t sub_10037B438@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v41 = 0;
  v40 = sub_10037B964;
  v23 = sub_10037B990;
  v55 = 0;
  v54 = 0;
  v1 = sub_10025C9B0(&qword_1006DA140);
  v24 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v13[-v24];
  v46 = sub_10025C9B0(&qword_1006DA128);
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v25 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v26 = &v13[-v25];
  v27 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13[-v25]);
  v28 = &v13[-v27];
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13[-v27]);
  v49 = &v13[-v29];
  v30 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13[-v29]);
  v42 = &v13[-v30];
  v55 = &v13[-v30];
  v31 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reset Default Settings", 0x16uLL, 1);
  v35 = LocalizedStringKey.init(stringLiteral:)();
  v36 = v5;
  v37 = v6;
  v38 = v7;
  static ButtonRole.destructive.getter();
  v32 = type metadata accessor for ButtonRole();
  v8 = *(v32 - 8);
  v33 = *(v8 + 56);
  v34 = v8 + 56;
  v33(v39, 0, v31);
  Button<>.init(_:role:action:)();
  v43 = sub_100372B14();
  sub_1002EC85C(v49, v46, v42);
  v47 = v44[1];
  v48 = v44 + 1;
  v47(v49, v46);
  v54 = v49;
  v14 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Kill Mail", 9uLL, 1);
  v15 = LocalizedStringKey.init(stringLiteral:)();
  v16 = v9;
  v17 = v10;
  v18 = v11;
  static ButtonRole.destructive.getter();
  (v33)(v39, 0, v14, v32);
  Button<>.init(_:role:action:)();
  sub_1002EC85C(v28, v46, v49);
  v47(v28, v46);
  v20 = v44[2];
  v19 = v44 + 2;
  v20(v28, v42, v46);
  v21 = v53;
  v53[0] = v28;
  v20(v26, v49, v46);
  v53[1] = v26;
  v52[0] = v46;
  v52[1] = v46;
  v50 = v43;
  v51 = v43;
  sub_1003A33CC(v21, 2uLL, v52, v22);
  v47(v26, v46);
  v47(v28, v46);
  v47(v49, v46);
  return (v47)(v42, v46);
}

void sub_10037B990()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 terminateWithSuccess];
  _objc_release(v0);
}

uint64_t sub_10037BA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v8 = a1;
  v9 = sub_10037BF54;
  v21 = 0;
  v20 = 0;
  v14 = sub_10025C9B0(&qword_1006DA188);
  v6 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v16 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v17 = &v6 - v7;
  v21 = &v6 - v7;
  v20 = v4;
  v12 = static HorizontalAlignment.leading.getter();
  v10 = &v18;
  v19 = v8;
  v11 = sub_10025C9B0(&qword_1006DA190);
  sub_10037BF5C();
  VStack.init(alignment:spacing:content:)();
  v15 = sub_10037BFE4();
  sub_1002EC85C(v16, v14, v17);
  sub_10037C06C(v16);
  sub_10037C154(v17, v16);
  sub_1002EC85C(v16, v14, v13);
  sub_10037C06C(v16);
  return sub_10037C06C(v17);
}

uint64_t sub_10037BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v13 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v7 = 0;
  v25 = type metadata accessor for LabeledContentStyleConfiguration.Content();
  v16 = *(v25 - 8);
  v17 = v25 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v22 = &v7 - v8;
  v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v24 = &v7 - v9;
  v38 = &v7 - v9;
  v29 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  v14 = *(v29 - 8);
  v15 = v29 - 8;
  v11 = *(v14 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v29);
  v23 = &v7 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v28 = &v7 - v12;
  v37 = &v7 - v12;
  v36 = a1;
  LabeledContentStyleConfiguration.label.getter();
  v18 = sub_10037C688();
  sub_1002EC85C(v23, v29, v28);
  v31 = *(v14 + 8);
  v30 = v14 + 8;
  v31(v23, v29);
  LabeledContentStyleConfiguration.content.getter();
  v19 = sub_10037C708();
  sub_1002EC85C(v22, v25, v24);
  v27 = *(v16 + 8);
  v26 = v16 + 8;
  v27(v22, v25);
  (*(v14 + 16))(v23, v28, v29);
  v21 = v35;
  v35[0] = v23;
  (*(v16 + 16))(v22, v24, v25);
  v35[1] = v22;
  v34[0] = v29;
  v34[1] = v25;
  v32 = v18;
  v33 = v19;
  sub_1003A33CC(v21, 2uLL, v34, v20);
  v27(v22, v25);
  v31(v23, v29);
  v27(v24, v25);
  return (v31)(v28, v29);
}

unint64_t sub_10037BF5C()
{
  v2 = qword_1006DA198;
  if (!qword_1006DA198)
  {
    sub_10025CAA4(&qword_1006DA190);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037BFE4()
{
  v2 = qword_1006DA1A0;
  if (!qword_1006DA1A0)
  {
    sub_10025CAA4(&qword_1006DA188);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA1A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10037C06C(uint64_t a1)
{
  v4 = *(sub_10025C9B0(&qword_1006DA1A8) + 44);
  v1 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  (*(*(v1 - 8) + 8))();
  v5 = *(sub_10025C9B0(&qword_1006DA1B0) + 48);
  v2 = type metadata accessor for LabeledContentStyleConfiguration.Content();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_10037C154(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_10025C9B0(&qword_1006DA1A8) + 44);
  v2 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  (*(*(v2 - 8) + 16))();
  v7 = *(sub_10025C9B0(&qword_1006DA1B0) + 48);
  v3 = type metadata accessor for LabeledContentStyleConfiguration.Content();
  (*(*(v3 - 8) + 16))(a2 + v5 + v7, a1 + v5 + v7);
  return a2;
}

uint64_t sub_10037C2EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10037C404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_10037C688()
{
  v2 = qword_1006DA1E0;
  if (!qword_1006DA1E0)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C708()
{
  v2 = qword_1006DA1E8;
  if (!qword_1006DA1E8)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Content();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA1E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C790()
{
  v2 = qword_1006DA218;
  if (!qword_1006DA218)
  {
    sub_10025CAA4(&qword_1006DA210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C818()
{
  v2 = qword_1006DA220;
  if (!qword_1006DA220)
  {
    sub_10025CAA4(&qword_1006DA208);
    sub_10037C790();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C8CC()
{
  v2 = qword_1006DA230;
  if (!qword_1006DA230)
  {
    sub_10025CAA4(&qword_1006DA228);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037C954()
{
  v2 = qword_1006DA238;
  if (!qword_1006DA238)
  {
    sub_10025CAA4(&qword_1006DA200);
    sub_10037C8CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CA0C()
{
  v2 = qword_1006DA248;
  if (!qword_1006DA248)
  {
    sub_10025CAA4(&qword_1006DA240);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CA94()
{
  v2 = qword_1006DA250;
  if (!qword_1006DA250)
  {
    sub_10025CAA4(&qword_1006DA1F8);
    sub_10037CA0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CB44()
{
  v2 = qword_1006DA260;
  if (!qword_1006DA260)
  {
    sub_10025CAA4(&qword_1006DA258);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CBCC()
{
  v2 = qword_1006DA268;
  if (!qword_1006DA268)
  {
    sub_10025CAA4(&qword_1006DA1F0);
    sub_10037CB44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CCA0()
{
  v2 = qword_1006DA280;
  if (!qword_1006DA280)
  {
    sub_10025CAA4(&qword_1006DA278);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CD34()
{
  v2 = qword_1006DA288;
  if (!qword_1006DA288)
  {
    sub_10025CAA4(&qword_1006DA270);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CDF8()
{
  v2 = qword_1006DA298;
  if (!qword_1006DA298)
  {
    sub_10025CAA4(&qword_1006DA290);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10037CE88()
{
  v2 = qword_1006DA2A8;
  if (!qword_1006DA2A8)
  {
    sub_10025CAA4(&qword_1006DA2A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA2A8);
    return WitnessTable;
  }

  return v2;
}

char *sub_10037CF10(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(a1 + 1);

  *(a2 + 1) = v6;
  (*(*(a3 - 8) + 16))(&a2[*(a4 + 32)], &a1[*(a4 + 32)]);
  return a2;
}

uint64_t sub_10037CFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  (*(*(a2 - 8) + 8))(a1 + *(a3 + 32));
  return a1;
}

void *sub_10037D05C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v82 = &v166;
  v83 = v2;
  v158 = v1;
  v159 = v3;
  v160 = v4;
  v110 = "To recipients of the email";
  v113 = "Carbon copy recipients of the email";
  v115 = "Blind carbon copy recipients of the email";
  v117 = "Subject of the email";
  v119 = "Body of the email";
  v121 = "Sender of the email";
  v124 = "Recipients to reply to";
  v127 = "Date on which the email was sent";
  v130 = "Date on which the email was received";
  v132 = "Is the email read";
  v136 = "Is the email junk";
  v139 = "Attributes of the email";
  v141 = "Account associated with the email";
  v144 = "Mailbox associated with the email";
  v149 = "Attachments of the email";
  v240 = 0;
  v239 = 0;
  v151 = 0;
  memset(v238, 0, sizeof(v238));
  v237 = 0;
  v235 = 0;
  v236 = 0;
  v170 = 0;
  v163 = 0;
  v161 = 0;
  v162 = 0;
  v5 = sub_10025C9B0(&unk_1006DA2B0);
  v84 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v85 = &v25 - v84;
  v6 = sub_10025C9B0(&qword_1006D9B50);
  v86 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v87 = &v25 - v86;
  v7 = sub_10025C9B0(&qword_1006D8740);
  v88 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v89 = &v25 - v88;
  v90 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v88);
  v91 = &v25 - v90;
  v107 = 0;
  v92 = type metadata accessor for Date();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v107);
  v96 = &v25 - v95;
  v240 = &v25 - v95;
  v97 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v98 = &v25 - v97;
  v99 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v100 = &v25 - v99;
  v239 = &v25 - v99;
  v13 = type metadata accessor for AttributeContainer();
  v101 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v102 = &v25 - v101;
  v103 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107);
  v104 = &v25 - v103;
  v105 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107);
  v156 = &v25 - v105;
  v106 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107);
  v155 = &v25 - v106;
  v108 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107);
  v153 = &v25 - v108;
  v109 = (*(*(type metadata accessor for LocalizedStringResource() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v158);
  v157 = &v25 - v109;
  v237 = v14;
  v235 = v15;
  v236 = v16;
  v123 = sub_10025C9B0(&unk_1006DA2C0);
  v112 = 2;
  v152 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("To", 2uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v147 = "AppIntents";
  v148 = 10;
  v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v231 = v110;
  v232 = 26;
  v150 = 2;
  v233 = 2;
  v234 = v151 & 1;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v126 = sub_1002B9E5C();
  v238[0] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cc", v112, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v227 = v113;
  v228 = 35;
  v229 = v150;
  v230 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[1] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Bcc", 3uLL, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v223 = v115;
  v224 = 41;
  v225 = v150;
  v226 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[2] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&unk_1006DA2D0);
  v143 = 7;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Subject", 7uLL, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v118 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v219 = v117;
  v220 = 20;
  v221 = v150;
  v222 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[3] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006D7F40);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Body", 4uLL, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v120 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v215 = v119;
  v137 = 17;
  v216 = 17;
  v217 = v150;
  v218 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[4] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA2E0);
  v135 = 6;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sender", 6uLL, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v122 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v211 = v121;
  v212 = 19;
  v213 = v150;
  v214 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[5] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ReplyTo", v143, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v125 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v207 = v124;
  v208 = 22;
  v209 = v150;
  v210 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[6] = EntityProperty<>.init(title:)();
  v129 = sub_10025C9B0(&qword_1006DA2E8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DateSent", 8uLL, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v203 = v127;
  v204 = 32;
  v205 = v150;
  v206 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[7] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DateReceived", 0xCuLL, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v199 = v130;
  v200 = 36;
  v201 = v150;
  v202 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[8] = EntityProperty<>.init(title:)();
  v134 = sub_10025C9B0(&qword_1006DA2F0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IsRead", v135, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v195 = v132;
  v196 = v137;
  v197 = v150;
  v198 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[9] = EntityProperty<>.init(title:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IsJunk", v135, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v191 = v136;
  v192 = v137;
  v193 = v150;
  v194 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[10] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA2F8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attributes", v148, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v187 = v139;
  v188 = 23;
  v189 = v150;
  v190 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10037EC78();
  v238[11] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA308);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Account", v143, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v142 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v183 = v141;
  v145 = 33;
  v184 = 33;
  v185 = v150;
  v186 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10034C204();
  v238[12] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA318);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailbox", v143, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v146 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v179 = v144;
  v180 = v145;
  v181 = v150;
  v182 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100359394();
  v238[13] = EntityProperty<>.init(title:)();
  sub_10025C9B0(&qword_1006DA328);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attachments", 0xBuLL, v152 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v147, v148, v152 & 1);
  sub_100015CC0();
  sub_10025D410(v156);
  v175 = v149;
  v176 = 24;
  v177 = v150;
  v178 = v151 & 1 & v152;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v238[14] = EntityProperty<>.init(title:)();

  v171 = v159;
  v172 = v160;
  _objc_retain(v158);
  if (v172)
  {
    v173 = v171;
    v174 = v172;
  }

  else
  {
    v173 = static String.encodeMessageID(using:)();
    v174 = v17;
    if (v172)
    {
      sub_100268744();
    }
  }

  _objc_release(v158);
  v77 = v238;
  v238[15] = v173;
  v238[16] = v174;
  v80 = [v158 attributeSet];
  v170 = v80;
  v75 = __dst;
  v78 = 136;
  memcpy(__dst, v77, sizeof(__dst));
  sub_1002B5A7C();
  sub_10037FD38();
  v76 = v254;
  memcpy(v254, v77, v78);
  sub_1002B5C98();
  sub_10037FE9C();
  v79 = v253;
  memcpy(v253, v77, v78);
  sub_1002B5D64();
  sub_1002CCA28();
  v81 = [v80 subject];
  if (v81)
  {
    v74 = v81;
    v69 = v81;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v18;
    _objc_release(v69);
    v72 = v70;
    v73 = v71;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v67 = v73;
  v66 = v72;
  memcpy(v252, v238, sizeof(v252));
  sub_100380098();
  v68 = [v80 textContent];
  if (v68)
  {
    v65 = v68;
    v60 = v68;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v19;
    _objc_release(v60);
    v63 = v61;
    v64 = v62;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v166 = v63;
  v167 = v64;
  _objc_retain(v80);
  if (v167)
  {
    *(v82 + 1) = *v82;
  }

  else
  {
    v59 = [v80 contentSnippet];
    if (v59)
    {
      v58 = v59;
      v53 = v59;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v20;
      _objc_release(v53);
      v56 = v54;
      v57 = v55;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v168 = v56;
    v169 = v57;
    if (v167)
    {
      sub_100268744();
    }
  }

  _objc_release(v80);
  v51 = v168;
  v52 = v169;
  if (v169)
  {
    v49 = v51;
    v50 = v52;
    v48 = v52;
    v47 = v51;
    v161 = v51;
    v162 = v52;
    memcpy(v251, v238, sizeof(v251));
    sub_10037ECF8();
    AttributedString.init(_:attributes:)();
    v21 = type metadata accessor for AttributedString();
    (*(*(v21 - 8) + 56))(v104, 0, 1);
    sub_1003801B8(v104);
  }

  v44 = v238;
  v43 = v250;
  v45 = 136;
  memcpy(v250, v238, sizeof(v250));
  sub_1002B5E30();
  sub_100380328();
  memcpy(&v249, v44, v45);
  _allocateUninitializedArray<A>(_:)();
  sub_10038048C();
  v46 = [v80 contentCreationDate];
  if (v46)
  {
    v42 = v46;
    v41 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v93 + 32))(v91, v98, v92);
    (*(v93 + 56))(v91, 0, 1, v92);
    _objc_release(v41);
  }

  else
  {
    (*(v93 + 56))(v91, 1, 1, v92);
  }

  v39 = *(v93 + 48);
  v40 = v93 + 48;
  if (v39(v91, 1, v92) == 1)
  {
    sub_1002A70C0(v91);
  }

  else
  {
    (*(v93 + 32))(v100, v91, v92);
    memcpy(v248, v238, sizeof(v248));
    (*(v93 + 16))(v98, v100, v92);
    sub_1003805EC(v98);
    (*(v93 + 8))(v100, v92);
  }

  v38 = [v80 mailDateReceived];
  if (v38)
  {
    v37 = v38;
    v36 = v38;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v93 + 32))(v89, v98, v92);
    (*(v93 + 56))(v89, 0, 1, v92);
    _objc_release(v36);
  }

  else
  {
    (*(v93 + 56))(v89, 1, 1, v92);
  }

  if (v39(v89, 1, v92) == 1)
  {
    sub_1002A70C0(v89);
  }

  else
  {
    (*(v93 + 32))(v96, v89, v92);
    memcpy(v247, v238, sizeof(v247));
    (*(v93 + 16))(v98, v96, v92);
    sub_100380800(v98);
    (*(v93 + 8))(v96, v92);
  }

  v35 = [v80 mailRead];
  if (v35)
  {
    v34 = v35;
    v33 = v35;
    v163 = v35;
    memcpy(v246, v238, sizeof(v246));
    [v35 BOOLValue];
    sub_100380A20();
    _objc_release(v33);
  }

  v30 = v238;
  v32 = 136;
  memcpy(v245, v238, sizeof(v245));
  v26 = [v80 isLikelyJunk];
  v27 = [v26 BOOLValue];
  _objc_release(v26);
  sub_100380B84();
  memcpy(&v244, v30, v32);
  v29 = 0;
  type metadata accessor for MailMessageAttribute();
  _allocateUninitializedArray<A>(_:)();
  sub_100380D3C();
  memcpy(&v243, v30, v32);
  v22 = *(*(type metadata accessor for MailAccountEntity() - 8) + 56);
  v28 = 1;
  v22(v87, 1);
  sub_100380F5C(v87);
  memcpy(&v242, v30, v32);
  v23 = type metadata accessor for Mailbox();
  (*(*(v23 - 8) + 56))(v85, v28);
  sub_1003811E0(v85);
  memcpy(&v241, v30, v32);
  sub_10038146C();
  _objc_release(v80);
  v31 = v165;
  memcpy(v165, v30, v32);
  sub_1003814E0(v31, v164);

  _objc_release(v158);
  sub_1003816C8();
  return memcpy(v83, v31, v32);
}

unint64_t sub_10037EC78()
{
  v2 = qword_1006DA300;
  if (!qword_1006DA300)
  {
    type metadata accessor for MailMessageAttribute();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA300);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10037ED10()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F00A8);
  sub_1000208F4(v1, qword_1006F00A8);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10037ED6C()
{
  if (qword_1006D5F78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F00A8);
}

uint64_t sub_10037EDD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10037ED6C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10037EE3C()
{
  v77 = 0;
  v1 = sub_10025C9B0(&unk_1006D7380);
  v30 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v44 = &v29 - v30;
  v77 = v0;
  v2 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v62 = &v75;
  v75 = v2;
  v76 = v3;
  v60 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("id: ", 4uLL, 1);
  object = v4._object;
  DefaultStringInterpolation.appendLiteral(_:)(v4);

  v78 = *(v55 + 120);
  sub_100268860(&v78, &v74);
  v32 = &v73;
  v73 = v78;
  v50 = &type metadata for String;
  v48 = &protocol witness table for String;
  v49 = &protocol witness table for String;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  v35 = 5;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nto: ", 5uLL, v60 & 1);
  v33 = v5._object;
  DefaultStringInterpolation.appendLiteral(_:)(v5);

  v6 = sub_10037F480();
  v34 = &v72;
  v72 = v6;
  v57 = sub_10025C9B0(&qword_1006DA330);
  v58 = sub_1003817A8();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880();
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\ncc: ", v35, v60 & 1);
  v36 = v7._object;
  DefaultStringInterpolation.appendLiteral(_:)(v7);

  v8 = sub_10037F4DC();
  v37 = &v71;
  v71 = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880();
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nbcc: ", 6uLL, v60 & 1);
  v38 = v9._object;
  DefaultStringInterpolation.appendLiteral(_:)(v9);

  v10 = sub_1002CC9CC();
  v39 = &v70;
  v70 = v10;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880();
  v54 = 10;
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nsubject: ", 0xAuLL, v60 & 1);
  v40 = v11._object;
  DefaultStringInterpolation.appendLiteral(_:)(v11);

  v12 = sub_10037F538();
  v41 = v69;
  v69[0] = v12;
  v69[1] = v13;
  v47 = sub_10025C9B0(&unk_1006D7340);
  v14 = String.init<A>(describing:)();
  v42 = v68;
  v68[0] = v14;
  v68[1] = v15;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nbody: ", 7uLL, v60 & 1);
  v43 = v16._object;
  DefaultStringInterpolation.appendLiteral(_:)(v16);

  sub_10037F5A0();
  v45 = Optional<A>.toString.getter();
  v46 = v17;
  sub_100285F68(v44);
  v67[2] = v45;
  v67[3] = v46;
  v18 = String.init<A>(describing:)();
  v51 = v67;
  v67[0] = v18;
  v67[1] = v19;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nsender: ", 9uLL, v60 & 1);
  v52 = v20._object;
  DefaultStringInterpolation.appendLiteral(_:)(v20);

  v21 = sub_10037F5F4();
  v53 = v66;
  v66[0] = v21;
  v66[1] = v22;
  v66[2] = v23;
  v66[3] = v24;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1002B7778();
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nreplyTo: ", v54, v60 & 1);
  v56 = v25._object;
  DefaultStringInterpolation.appendLiteral(_:)(v25);

  v26 = sub_10037F674();
  v59 = &v65;
  v65 = v26;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880();
  v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v60 & 1);
  v61 = v27._object;
  DefaultStringInterpolation.appendLiteral(_:)(v27);

  v64 = v75;
  v63 = v76;

  sub_100268744();
  return String.init(stringInterpolation:)();
}

uint64_t sub_10037F480()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F4DC()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F538()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F5A0()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_10037F5F4()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F674()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10037F6D0()
{
  if (qword_1006D5F80 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10037F744@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = "An email message";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v3 - v3;
  v6 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v13 = &v3 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v12 = &v3 - v5;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v3 - v7;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v3 - v8;
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v16 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 16;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10037FA38@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v29 = 0;
  v1 = sub_10025C9B0(&unk_1006D9D00);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v28 = &v9 - v10;
  v2 = sub_10025C9B0(&qword_1006D6280);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v27 = &v9 - v11;
  v23 = 0;
  v22 = type metadata accessor for LocalizedStringResource();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v12 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v23);
  v26 = &v9 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v19 = &v9 - v13;
  v18 = type metadata accessor for TypeDisplayRepresentation();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v17 = &v9 - v14;
  v29 = v5;
  sub_10037F744(&v9 - v14);
  TypeDisplayRepresentation.name.getter();
  (*(v15 + 8))(v17, v18);
  LocalizedStringResource.localizedStringResource.getter();
  (*(v20 + 8))(v19, v22);
  v6 = *(v20 + 56);
  v24 = 1;
  v6(v27, 1, 1, v22);
  v7 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v7 - 8) + 56))(v28, v24);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_10037FD38()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_10037FDAC(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *v1;

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10037FE44()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10037FE9C()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_10037FF10(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 8);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10037FFA8()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

void (*sub_100380000(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380098()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380120(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 24);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003801B8(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 32);

  sub_100289B6C(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100285F68(v6);
}

void (*sub_100380290(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 32);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380328()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_1003803F4(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 40);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10038048C()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380500(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 48);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380598()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_1003805EC(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 56);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

void (*sub_100380714(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 56);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003807AC()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100380800(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 64);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

void (*sub_100380928(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 64);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003809C0()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100380A20()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380A8C(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 72);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380B24()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100380B84()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380BF0(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 80);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380C88()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100380CE0()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_100380D3C()
{

  EntityProperty.wrappedValue.setter();
}

void (*sub_100380DB0(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 88);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100380E48()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100380EA0()
{
  v2 = *(v0 + 88);

  return v2;
}

uint64_t sub_100380ECC(uint64_t a1)
{

  *(v1 + 88) = a1;
}

uint64_t sub_100380F08()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100380F5C(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9B50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 96);

  sub_100358DBC(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100358F78(v6);
}

void (*sub_100381034(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 96);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003810CC()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100381124()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_100381150(uint64_t a1)
{

  *(v1 + 96) = a1;
}

uint64_t sub_10038118C()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_1003811E0(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006DA2B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 104);

  sub_100381830(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_1003819BC(v6);
}

void (*sub_1003812B8(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 104);

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100381350()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1003813A8()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_1003813D4(uint64_t a1)
{

  *(v1 + 104) = a1;
}

uint64_t sub_100381410()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10038146C()
{

  EntityProperty.wrappedValue.setter();
}

void *sub_1003814E0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v9 = a1[6];

  a2[6] = v9;
  v10 = a1[7];

  a2[7] = v10;
  v11 = a1[8];

  a2[8] = v11;
  v12 = a1[9];

  a2[9] = v12;
  v13 = a1[10];

  a2[10] = v13;
  v14 = a1[11];

  a2[11] = v14;
  v15 = a1[12];

  a2[12] = v15;
  v16 = a1[13];

  a2[13] = v16;
  v18 = a1[14];

  a2[14] = v18;
  a2[15] = a1[15];
  v20 = a1[16];

  result = a2;
  a2[16] = v20;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003816C8()
{
}

unint64_t sub_1003817A8()
{
  v2 = qword_1006DA338;
  if (!qword_1006DA338)
  {
    sub_10025CAA4(&qword_1006DA330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA338);
    return WitnessTable;
  }

  return v2;
}

char *sub_100381830(char *a1, char *a2)
{
  v11 = type metadata accessor for Mailbox();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = sub_10025C9B0(&unk_1006DA2B0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = type metadata accessor for UUID();
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v11 + 20);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    v7 = *(v11 + 24);
    v8 = *&a1[v7];

    *&a2[v7] = v8;
    (*(v12 + 56))();
  }

  return a2;
}

uint64_t sub_1003819BC(uint64_t a1)
{
  v4 = type metadata accessor for Mailbox();
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = type metadata accessor for UUID();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_100381A8C()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100381AE4()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_100381B10(uint64_t a1)
{

  *(v1 + 112) = a1;
}

uint64_t sub_100381B4C()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_100381B84(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

void (*sub_100381C70(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_10037FDAC(v3 + 17);
  return sub_100381D08;
}

void sub_100381D08(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 168))();
  free(v1);
}

void (*sub_100381E14(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_10037FF10(v3 + 17);
  return sub_100381D08;
}

void (*sub_100381F34(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380000(v3 + 17);
  return sub_100381D08;
}

void (*sub_10038205C(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380120(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382184(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380290(v3 + 17);
  return sub_100381D08;
}

uint64_t sub_10038221C@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_10037F5F4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void (*sub_1003822E4(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_1003803F4(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382404(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380500(v3 + 17);
  return sub_100381D08;
}

void (*sub_10038252C(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380714(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382654(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380928(v3 + 17);
  return sub_100381D08;
}

void (*sub_10038277C(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380A8C(v3 + 17);
  return sub_100381D08;
}

void (*sub_1003828A4(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380BF0(v3 + 17);
  return sub_100381D08;
}

void (*sub_1003829C4(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100380DB0(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382AEC(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_100381034(v3 + 17);
  return sub_100381D08;
}

void (*sub_100382C14(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0xB0uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x88uLL);
  v3[21] = sub_1003812B8(v3 + 17);
  return sub_100381D08;
}

uint64_t sub_100382CEC@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_100381B4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100382E0C()
{
  v2 = qword_1006DA340;
  if (!qword_1006DA340)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA340);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100382E88()
{
  sub_10025C9B0(&qword_1006DA348);
  sub_1003831B0();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_100382F30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v26 = [v25 emailAddressValue];
  swift_unknownObjectRelease();
  result = v26;
  if (v26)
  {
    v20 = [v26 stringValue];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v3;
    _objc_release(v26);
    _objc_release(v20);
    result = v21;
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = [v25 stringValue];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v4;
    swift_unknownObjectRelease();

    v9 = String._bridgeToObjectiveC()();
    v14 = [v9 stringValue];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v5;
    _objc_release(v9);
    v16 = sub_10034E760(v10, v11, v12, v13);
    v17 = v6;
    v18 = v7;
    v19 = v8;
    _objc_release(v14);

    _objc_release(v15);
    *a2 = v16;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v19;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  return result;
}

unint64_t sub_1003831B0()
{
  v2 = qword_1006DA350;
  if (!qword_1006DA350)
  {
    sub_10025CAA4(&qword_1006DA348);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383250()
{
  v2 = qword_1006DA358;
  if (!qword_1006DA358)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003832E4()
{
  v2 = qword_1006DA360;
  if (!qword_1006DA360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383378()
{
  v2 = qword_1006DA368;
  if (!qword_1006DA368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038340C()
{
  v2 = qword_1006DA370;
  if (!qword_1006DA370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003834E4()
{
  v2 = qword_1006DA390;
  if (!qword_1006DA390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383578()
{
  v2 = qword_1006DA398;
  if (!qword_1006DA398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038360C()
{
  v2 = qword_1006DA3A0;
  if (!qword_1006DA3A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003836B8()
{
  v2 = qword_1006DA3A8;
  if (!qword_1006DA3A8)
  {
    sub_10025CAA4(&qword_1006DA3B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100383758()
{
  v2 = qword_1006DA3B8;
  if (!qword_1006DA3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100383804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_10038391C(void *result, int a2, int a3)
{
  v3 = result + 17;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_100383B20(void *a1)
{
  v91 = a1;
  v80 = sub_10038491C;
  v81 = sub_10026EE84;
  v82 = sub_10026434C;
  v83 = sub_10026434C;
  v84 = sub_10026EF2C;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v85 = 0;
  v96 = 0;
  v86 = type metadata accessor for Logger();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v90 = &v26 - v89;
  v92 = (*(*(sub_10025C9B0(&qword_1006D7DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v91);
  v97 = &v26 - v92;
  v117 = v2;
  v116 = v1;
  v93 = swift_allocObject();
  v115 = v93 + 16;
  v94 = *v1;
  v95 = v1[1];

  MailMessageEntityID.init(with:)();
  v98 = type metadata accessor for MailMessageEntityID();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  if ((*(v99 + 48))(v97, 1) == 1)
  {
    sub_1002C1698(v97);
    v25 = v93;
    *(v93 + 16) = 0;
    *(v25 + 24) = 0;
  }

  else
  {
    v77 = MailMessageEntityID.uniqueIdentifier.getter();
    v78 = v3;
    (*(v99 + 8))(v97, v98);
    v4 = v93;
    v5 = v78;
    *(v93 + 16) = v77;
    *(v4 + 24) = v5;
  }

  v75 = *(v93 + 16);
  v76 = *(v93 + 24);

  v113 = v75;
  v114 = v76;
  v74 = v76 == 0;
  v73 = v74;
  sub_100268744();
  if (v73)
  {
    v71 = *v79;
    v70 = v79[1];

    sub_1003847C8();
    FixedWidthInteger.init(_:)();
    v72 = v110;
    if ((v111 & 1) == 0)
    {
      v69 = v72;
      v63 = v72;
      v109 = v72;
      v65 = [v91 messageRepository];
      sub_10028F43C();
      v6 = [objc_opt_self() allMailboxesScope];
      v64 = sub_100384840(v63, v6);
      v66 = [v65 messageForObjectID:?];
      _objc_release(v64);
      _objc_release(v65);
      v108 = v66;
      v67 = [v66 result];
      v68 = [v67 searchableMessageID];
      _objc_release(v67);
      if (v68)
      {
        v62 = v68;
        v56 = v68;
        v57 = [v68 stringValue];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v7;
        _objc_release(v56);
        _objc_release(v57);
        v60 = v58;
        v61 = v59;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v54 = v61;
      v55 = v60;
      if (v61)
      {
        v52 = v55;
        v53 = v54;
        v8 = v90;
        v39 = v54;
        v38 = v55;
        v106 = v55;
        v107 = v54;

        v9 = v39;
        v10 = v93;
        *(v93 + 16) = v38;
        *(v10 + 24) = v9;

        v11 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v87 + 16))(v8, v11, v86);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        v40 = 17;
        v42 = 7;
        v44 = swift_allocObject();
        *(v44 + 16) = 32;
        v45 = swift_allocObject();
        *(v45 + 16) = 8;
        v41 = 32;
        v12 = swift_allocObject();
        v13 = v93;
        v43 = v12;
        *(v12 + 16) = v80;
        *(v12 + 24) = v13;
        v14 = swift_allocObject();
        v15 = v43;
        v47 = v14;
        *(v14 + 16) = v81;
        *(v14 + 24) = v15;
        v49 = sub_10025C9B0(&unk_1006D7720);
        v46 = _allocateUninitializedArray<A>(_:)();
        v48 = v16;

        v17 = v44;
        v18 = v48;
        *v48 = v82;
        v18[1] = v17;

        v19 = v45;
        v20 = v48;
        v48[2] = v83;
        v20[3] = v19;

        v21 = v47;
        v22 = v48;
        v48[4] = v84;
        v22[5] = v21;
        sub_1002612B0();

        if (os_log_type_enabled(v50, v51))
        {
          v23 = v85;
          v31 = static UnsafeMutablePointer.allocate(capacity:)();
          v30 = sub_10025C9B0(&qword_1006D7290);
          v32 = sub_1002641E8(0);
          v33 = sub_1002641E8(1);
          v34 = &v105;
          v105 = v31;
          v35 = &v104;
          v104 = v32;
          v36 = &v103;
          v103 = v33;
          sub_10026423C(2, &v105);
          sub_10026423C(1, v34);
          v101 = v82;
          v102 = v44;
          sub_100264250(&v101, v34, v35, v36);
          v37 = v23;
          if (v23)
          {

            __break(1u);
          }

          else
          {
            v101 = v83;
            v102 = v45;
            sub_100264250(&v101, &v105, &v104, &v103);
            v29 = 0;
            v101 = v84;
            v102 = v47;
            sub_100264250(&v101, &v105, &v104, &v103);
            _os_log_impl(&_mh_execute_header, v50, v51, "#SiriMail searchableMessageID: %s", v31, 0xCu);
            sub_10026429C(v32);
            sub_10026429C(v33);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        _objc_release(v50);
        (*(v87 + 8))(v90, v86);
      }

      _objc_release(v66);
    }
  }

  v26 = &v112;
  swift_beginAccess();
  v27 = *(v93 + 16);
  v28 = *(v93 + 24);

  swift_endAccess();

  return v27;
}

unint64_t sub_1003847C8()
{
  v2 = qword_1006DCA30;
  if (!qword_1006DCA30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100384888()
{
  swift_beginAccess();

  swift_endAccess();
  sub_10025C9B0(&unk_1006D7340);
  return String.init<A>(describing:)();
}

uint64_t sub_100384924(void *a1)
{
  _objc_retain(a1);
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  v2 = Sequence.compactMap<A>(_:)();
  _objc_release(a1);
  return v2;
}

uint64_t sub_100384A1C@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_100383B20(a2);
  *a3 = result;
  a3[1] = v4;
  return result;
}

id sub_100384A90(uint64_t a1, void *a2)
{
  v5 = [v2 initWithGlobalMessageID:a1 mailboxScope:?];
  _objc_release(a2);
  return v5;
}

uint64_t sub_100384B0C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v40 = "An email message";
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v2 = sub_10025C9B0(&unk_1006D9D00);
  v41 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v42 = &v21 - v41;
  v3 = sub_10025C9B0(&qword_1006D6280);
  v43 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v44 = &v21 - v43;
  v56 = 0;
  v45 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v46 = &v21 - v45;
  v47 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v48 = &v21 - v47;
  v49 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v50 = &v21 - v49;
  v51 = type metadata accessor for IntentPerson();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v55 = &v21 - v54;
  v57 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v56);
  v61 = &v21 - v60;
  v62 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v63 = &v21 - v62;
  v64 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v65 = &v21 - v64;
  v66 = type metadata accessor for LocalizedStringResource();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v70 = &v21 - v69;
  v82 = v1;
  v71 = sub_1002CC92C();
  v72 = v8;
  if (v8)
  {
    v37 = v71;
    v38 = v72;
    v35 = v72;
    v36 = v71;
    v77 = v71;
    v78 = v72;
    v9 = String.isEmpty.getter();
    if ((v9 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34 = 1;
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message from ", 0xDuLL, 1);
      object = v10._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

      sub_1003807AC();
      v28._countAndFlagsBits = IntentPerson.displayString.getter();
      v28._object = v11;
      (*(v52 + 8))(v55, v51);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);

      v31 = 10;
      v32 = 0;
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" about “", 0xAuLL, 0);
      v29 = v12._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);

      v13._countAndFlagsBits = v36;
      v13._object = v35;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("”", 3uLL, v32 & 1);
      v30 = v14._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

      (*(v58 + 16))(v63, v65, v57);
      (*(v58 + 32))(v61, v63, v57);
      (*(v58 + 8))(v65, v57);
      String.LocalizationValue.init(stringInterpolation:)();
      v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v31, v34 & 1);
      sub_100015CC0();
      sub_10025D410(v46);
      v73 = v40;
      v74 = 16;
      v75 = 2;
      v76 = v32 & 1 & v34;
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      (*(v67 + 56))(v44, v34, v34, v66);
      v15 = type metadata accessor for DisplayRepresentation.Image();
      (*(*(v15 - 8) + 56))(v42, v34);
      DisplayRepresentation.init(title:subtitle:image:)();
    }
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message from ", 0xDuLL, 1);
  v21 = v17._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);

  sub_1003807AC();
  v22._countAndFlagsBits = IntentPerson.displayString.getter();
  v22._object = v18;
  (*(v52 + 8))(v55, v51);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);

  v24 = 16;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" with no subject", 0x10uLL, v26 & 1);
  v23 = v19._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);

  (*(v58 + 16))(v63, v65, v57);
  (*(v58 + 32))(v61, v63, v57);
  (*(v58 + 8))(v65, v57);
  String.LocalizationValue.init(stringInterpolation:)();
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v26 & 1);
  sub_100015CC0();
  sub_10025D410(v46);
  v79 = v40;
  v80 = v24;
  v81 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v67 + 56))(v44, v26, v26, v66);
  v20 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v20 - 8) + 56))(v42, v26);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_10038564C(void *a1)
{
  v6 = a1;
  v5 = v1;

  sub_10027EB5C(a1, v4);
  EntityProperty.wrappedValue.setter();

  return sub_10027D728(a1);
}

__n128 sub_1003856C0@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v142 = v199;
  v174 = a3;
  v176 = a2;
  v175 = a1;
  v143 = a4;
  v189 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v144 = 0u;
  v236 = 0u;
  v235 = 0u;
  v234 = 0u;
  v233 = 0u;
  v232 = 0u;
  v231 = 0u;
  v230 = 0u;
  v229 = 0u;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v210 = 0;
  v145 = 0;
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v206 = 0;
  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v197 = 0;
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v146 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10025C9B0(&unk_1006D7380);
  v147 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6 - 8);
  v148 = v40 - v147;
  v149 = *(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64);
  v7 = __chkstk_darwin(v189);
  v151 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = v40 - v151;
  __chkstk_darwin(v7);
  v152 = v40 - v151;
  v153 = type metadata accessor for Date();
  v154 = *(v153 - 8);
  v155 = v154;
  v157 = *(v154 + 64);
  __chkstk_darwin(v153 - 8);
  v159 = (v157 + 15) & 0xFFFFFFFFFFFFFFF0;
  v156 = v40 - v159;
  v240 = v40 - v159;
  __chkstk_darwin(v40 - v159);
  v158 = v40 - v159;
  __chkstk_darwin(v40 - v159);
  v160 = v40 - v159;
  v239 = v40 - v159;
  v161 = (*(*(sub_10025C9B0(&qword_1006DCAE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v189);
  v162 = v40 - v161;
  v163 = type metadata accessor for IntentPerson();
  v164 = *(v163 - 8);
  v165 = v164;
  v166 = *(v164 + 64);
  v8 = __chkstk_darwin(v189);
  v168 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v167 = v40 - v168;
  __chkstk_darwin(v8);
  v169 = v40 - v168;
  v238 = v40 - v168;
  v170 = type metadata accessor for MailMessageEntityID();
  v171 = *(v170 - 8);
  v172 = v171;
  __chkstk_darwin(v189);
  v173 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = v173;
  v186 = type metadata accessor for Logger();
  v177 = v186;
  v178 = *(v186 - 8);
  v185 = v178;
  v179 = v178;
  v10 = __chkstk_darwin(v175);
  v184 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v184;
  v228 = v10;
  v226 = v12;
  v227 = v13;
  v181 = sub_10025C9B0(&qword_1006D7F38);
  *&v230 = EntityProperty<>.init()();
  *(&v230 + 1) = EntityProperty<>.init()();
  *&v231 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0);
  *(&v231 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40);
  *&v232 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48);
  *(&v232 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3C8);
  v233.n128_u64[0] = EntityProperty<>.init()();
  v182 = sub_10025C9B0(&qword_1006DA2E8);
  v233.n128_u64[1] = EntityProperty<>.init()();
  *&v234 = EntityProperty<>.init()();
  v183 = sub_10025C9B0(&qword_1006DA2F0);
  *(&v234 + 1) = EntityProperty<>.init()();
  *&v235 = EntityProperty<>.init()();
  *(&v235 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50);
  sub_100264788();
  *&v236 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3D0);
  sub_1002DA854();
  v14 = EntityProperty<>.init()();
  v15 = v184;
  *(&v236 + 1) = v14;
  v16 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v185 + 16))(v15, v16, v186);
  v191 = Logger.logObject.getter();
  v187 = v191;
  v190 = static os_log_type_t.info.getter();
  v188 = v190;
  sub_10025C9B0(&unk_1006D7720);
  v192 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v191, v190))
  {
    v17 = v145;
    v133 = static UnsafeMutablePointer.allocate(capacity:)();
    v129 = v133;
    v130 = sub_10025C9B0(&qword_1006D7290);
    v131 = 0;
    v134 = sub_1002641E8(0);
    v132 = v134;
    v135 = sub_1002641E8(v131);
    v196 = v133;
    v195 = v134;
    v194 = v135;
    v136 = 0;
    v137 = &v196;
    sub_10026423C(0, &v196);
    sub_10026423C(v136, v137);
    v193 = v192;
    v138 = v40;
    __chkstk_darwin(v40);
    v139 = &v40[-6];
    v140 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v141 = v17;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v187, v188, "#SiriMail MailMessageEntity.init(searchableItem:existingId:)", v129, 2u);
      v127 = 0;
      sub_10026429C(v132);
      sub_10026429C(v135);
      UnsafeMutablePointer.deallocate()();

      v128 = v141;
    }
  }

  else
  {

    v128 = v145;
  }

  v18 = v175;
  v125 = v128;

  (*(v179 + 8))(v180, v177);
  v126 = [v18 attributeSet];
  v225 = v126;
  CSSearchableItem.mailMessageEntityID.getter();

  *&v223 = v176;
  *(&v223 + 1) = v174;
  if (v174)
  {
    v224 = v223;
  }

  else
  {
    *&v224 = MailMessageEntityID.encodedID.getter();
    *(&v224 + 1) = v19;
    if (*(&v223 + 1))
    {
      sub_100268744();
    }
  }

  v229 = v224;
  v348 = v232;
  v347 = v231;
  v346 = v230;
  v345 = v224;
  v352 = v236;
  v351 = v235;
  v350 = v234;
  v349 = v233;
  CSSearchableItem.toIntentPersons.getter();
  sub_1002CCA28();
  v340 = v232;
  v339 = v231;
  v338 = v230;
  v337 = v229;
  v344 = v236;
  v343 = v235;
  v342 = v234;
  v341 = v233;
  CSSearchableItem.ccIntentPersons.getter();
  sub_1002CCB50();
  v332 = v232;
  v331 = v231;
  v330 = v230;
  v329 = v229;
  v336 = v236;
  v335 = v235;
  v334 = v234;
  v333 = v233;
  CSSearchableItem.bccIntentPersons.getter();
  sub_1002CCC78();
  v124 = [v126 subject];
  if (v124)
  {
    v123 = v124;
    v118 = v124;
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v20;

    v121 = v119;
    v122 = v120;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v324 = v232;
  v323 = v231;
  v322 = v230;
  v321 = v229;
  v328 = v236;
  v327 = v235;
  v326 = v234;
  v325 = v233;
  sub_1002CCD44();
  CSSearchableItem.senderIntentPerson.getter();
  if ((*(v165 + 48))(v162, 1, v163) == 1)
  {
    sub_100387BA8(v162);
  }

  else
  {
    (*(v165 + 32))(v169, v162, v163);
    v316 = v232;
    v315 = v231;
    v314 = v230;
    v313 = v229;
    v320 = v236;
    v319 = v235;
    v318 = v234;
    v317 = v233;
    (*(v165 + 16))(v167, v169, v163);
    sub_100387D28(v167);
    (*(v165 + 8))(v169, v163);
  }

  v117 = [v126 contentCreationDate];
  if (v117)
  {
    v116 = v117;
    v115 = v117;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v155 + 32))(v152, v158, v153);
    (*(v155 + 56))(v152, 0, 1, v153);
  }

  else
  {
    (*(v155 + 56))(v152, 1, 1, v153);
  }

  v113 = *(v155 + 48);
  v114 = (v155 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v113(v152, 1, v153) == 1)
  {
    sub_1002A70C0(v152);
  }

  else
  {
    (*(v155 + 32))(v160, v152, v153);
    v308 = v232;
    v307 = v231;
    v306 = v230;
    v305 = v229;
    v312 = v236;
    v311 = v235;
    v310 = v234;
    v309 = v233;
    (*(v155 + 16))(v158, v160, v153);
    sub_100387EA4(v158);
    (*(v155 + 8))(v160, v153);
  }

  v112 = [v126 mailDateReceived];
  if (v112)
  {
    v111 = v112;
    v110 = v112;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v155 + 32))(v150, v158, v153);
    (*(v155 + 56))(v150, 0, 1, v153);
  }

  else
  {
    (*(v155 + 56))(v150, 1, 1, v153);
  }

  if (v113(v150, 1, v153) == 1)
  {
    sub_1002A70C0(v150);
  }

  else
  {
    (*(v155 + 32))(v156, v150, v153);
    v300 = v232;
    v299 = v231;
    v298 = v230;
    v297 = v229;
    v304 = v236;
    v303 = v235;
    v302 = v234;
    v301 = v233;
    (*(v155 + 16))(v158, v156, v153);
    sub_100388020(v158);
    (*(v155 + 8))(v156, v153);
  }

  v109 = [v126 mailRead];
  if (v109)
  {
    v108 = v109;
    v107 = v109;
    v197 = v109;
    v292 = v232;
    v291 = v231;
    v290 = v230;
    v289 = v229;
    v296 = v236;
    v295 = v235;
    v294 = v234;
    v293 = v233;
    [v109 BOOLValue];
    sub_1003881A8();
  }

  v284 = v232;
  v283 = v231;
  v282 = v230;
  v281 = v229;
  v288 = v236;
  v287 = v235;
  v286 = v234;
  v285 = v233;
  v103 = [v175 attributeSet];
  v104 = [v103 isLikelyJunk];

  v105 = [v104 BOOLValue];
  sub_100388274();
  v106 = [v126 mailboxIdentifiers];
  if (v106)
  {
    v102 = v106;
    v99 = v106;
    v100 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v101 = v100;
  }

  else
  {
    v101 = 0;
  }

  v98 = v101;
  if (v101)
  {
    v97 = v98;
    v94 = v98;
    v206 = v98;
    v95 = sub_10035E52C(v98);
    v200 = v95;
    v96 = sub_10025C9B0(&qword_1006D7020);
    sub_10027D50C();
    Collection.first.getter();
    if (*(&v199[0] + 1))
    {
      v201 = v199[0];
      v21 = v142[1];
      v22 = v142[2];
      v23 = v142[3];
      v205 = v142[4];
      v204 = v23;
      v203 = v22;
      v202 = v21;

      v276 = v232;
      v275 = v231;
      v274 = v230;
      v273 = v229;
      v280 = v236;
      v279 = v235;
      v278 = v234;
      v277 = v233;
      v93 = &v201;
      v92 = v198;
      sub_10027EB5C(&v201, v198);
      sub_10038564C(v92);
      v24 = sub_10035EFF8();
      v268 = v232;
      v267 = v231;
      v266 = v230;
      v265 = v229;
      v272 = v236;
      v271 = v235;
      v270 = v234;
      v269 = v233;
      sub_100388420(v24);
      sub_10027D728(v93);
    }

    else
    {
      sub_10027D594(v199);
    }
  }

  v91 = [v126 attachmentPaths];
  if (v91)
  {
    v90 = v91;
    v87 = v91;
    v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = v88;
  }

  else
  {
    v89 = 0;
  }

  v86 = v89;
  if (v89)
  {
    v85 = v86;
    v82 = v86;
    v207 = v86;
    v252 = v232;
    v251 = v231;
    v250 = v230;
    v249 = v229;
    v256 = v236;
    v255 = v235;
    v254 = v234;
    v253 = v233;
    Array<A>.asIntentFiles.getter();
    sub_1002CD004();
  }

  else
  {
    v260 = v232;
    v259 = v231;
    v258 = v230;
    v257 = v229;
    v264 = v236;
    v263 = v235;
    v262 = v234;
    v261 = v233;
    v83 = 0;
    v84 = type metadata accessor for IntentFile();
    _allocateUninitializedArray<A>(_:)();
    sub_1002CD004();
  }

  v81 = [v126 textContent];
  if (v81)
  {
    v80 = v81;
    v77 = v81;
    *&v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v78 + 1) = v25;

    v79 = v78;
  }

  else
  {
    v79 = 0uLL;
  }

  v221 = v79;
  v26 = v126;
  if (*(&v221 + 1))
  {
    v222 = v221;
  }

  else
  {
    v76 = [v126 contentSnippet];
    if (v76)
    {
      v75 = v76;
      v72 = v76;
      *&v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v73 + 1) = v27;

      v74 = v73;
    }

    else
    {
      v74 = 0uLL;
    }

    v222 = v74;
    if (*(&v221 + 1))
    {
      sub_100268744();
    }
  }

  v220 = v222;
  v71 = *(&v222 + 1) != 0;
  v70 = v71;
  sub_100268744();
  if (v70)
  {
    v68 = [objc_opt_self() sharedApplication];
    v67 = v68;
    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v66 = v69;
    }

    else
    {

      v66 = 0;
    }

    v65 = v66;
    if (v66)
    {
      v64 = v65;
      v61 = v65;
      v210 = v65;
      v28 = [v65 daemonInterface];
      v62 = v28;
      if (v28)
      {
        v60 = v62;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v29 = v125;
      v55 = v60;
      v30 = EMDaemonInterface.getMessageBody(mailMessageEntityID:)();
      v56 = v29;
      v57 = v30;
      v58 = v31;
      v59 = v29;
      if (v29)
      {
        v40[1] = v59;
        v41 = 0;
        v42 = 0;

        v52 = v41;
        v53 = v41;
        v54 = v42;
      }

      else
      {
        v51 = v58;
        v50 = v57;

        v52 = v50;
        v53 = v51;
        v54 = v56;
      }

      v47 = v54;
      v48 = v53;
      v49 = v52;
      if (v53)
      {
        v45 = v49;
        v46 = v48;
        v44 = v48;
        v43 = v49;
        v208 = v49;
        v209 = v48;
        v244 = v232;
        v243 = v231;
        v242 = v230;
        v241 = v229;
        v248 = v236;
        v247 = v235;
        v246 = v234;
        v245 = v233;
        sub_10037ECF8();
        AttributedString.init(_:attributes:)();
        v32 = type metadata accessor for AttributedString();
        (*(*(v32 - 8) + 56))(v148, 0, 1);
        sub_100387C50(v148);
      }

      v63 = v47;
    }

    else
    {
      v63 = v125;
    }
  }

  else
  {
    v63 = v125;
  }

  (*(v172 + 8))(v173, v170, v63);

  v215 = v232;
  v214 = v231;
  v213 = v230;
  v212 = v229;
  v219 = v236;
  v218 = v235;
  v217 = v234;
  v216 = v233;
  sub_1002E0080(&v212, v211);

  sub_10027D9CC();
  v33 = v143;
  v34 = v212;
  v35 = v213;
  v36 = v214;
  *(v143 + 48) = v215;
  *(v33 + 32) = v36;
  *(v33 + 16) = v35;
  *v33 = v34;
  result = v216;
  v38 = v217;
  v39 = v218;
  *(v33 + 112) = v219;
  *(v33 + 96) = v39;
  *(v33 + 80) = v38;
  *(v33 + 64) = result;
  return result;
}

id sub_100387098()
{
  sub_10025C6A0();
  result = sub_10025C704();
  qword_1006DA3C0 = result;
  return result;
}

uint64_t *sub_1003870CC()
{
  if (qword_1006D5F88 != -1)
  {
    swift_once();
  }

  return &qword_1006DA3C0;
}

void *sub_10038712C()
{
  v1 = *sub_1003870CC();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100387164@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_10025C9B0(&qword_1006DA3D8);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v6 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v22 = &v6 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v6);
  v16 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v7);
  v20 = &v6 - v8;
  v24 = sub_10027EAAC();
  v13 = 0;
  v23 = &unk_10065C028;
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = "";
  v14 = 1;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v13, 1);
  object = v3._object;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);

  KeyPath = swift_getKeyPath();
  v10 = sub_10025C9B0(&qword_1006DA3E0);
  sub_10038F4CC();
  EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v12, v13, v14 & 1);
  v15 = v4._object;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v22, v16, v19);
  (*(v17 + 8))(v20, v19);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1003873F0()
{
  v11 = v0;
  v7 = *sub_1003870CC();
  _objc_retain(v7);
  v8 = sub_100383B20(v7);
  v9 = v1;
  _objc_release(v7);
  sub_10025C9B0(&qword_1006DA3F0);
  if (v9)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
    return _EntityDeferredPropertyValue.__allocating_init(get:)();
  }

  else
  {
    sub_1002E0080(__src, v10);
    v4 = swift_allocObject();
    memcpy((v4 + 16), __src, 0x80uLL);
    return _EntityDeferredPropertyValue.__allocating_init(get:)();
  }
}

_BYTE *sub_100387598@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E0080(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1003873F0();
  result = __dst;
  *a2 = v2;
  sub_10027D9CC();
  return result;
}

uint64_t sub_100387600(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v4[27] = a3;
  v4[26] = a1;
  v4[24] = v4;
  v4[25] = 0;
  v4[18] = 0;
  v4[19] = 0;
  memcpy(v4 + 2, a2, 0x80uLL);
  v4[25] = a2;
  v4[18] = a3;
  v4[19] = a4;

  return _swift_task_switch(sub_1003876D0, 0);
}

uint64_t sub_1003876D0()
{
  v8 = v0[28];
  v7 = v0[27];
  v9 = v0[26];
  v0[24] = v0;
  v0[20] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[21] = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://message/", 0x17uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  v0[22] = v7;
  v0[23] = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744();
  *v9 = String.init(stringInterpolation:)();
  v9[1] = v4;
  v5 = *(v0[24] + 8);

  return v5();
}

uint64_t sub_100387860(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[30] = a3;
  v3[29] = a1;
  v3[26] = v3;
  v3[27] = 0;
  v3[28] = 0;
  memcpy(v3 + 2, a2, 0x80uLL);
  v3[27] = a2;
  v3[28] = a3;

  return _swift_task_switch(sub_10038791C, 0);
}

uint64_t sub_10038791C()
{
  v7 = *(v0 + 240);
  v8 = *(v0 + 232);
  *(v0 + 208) = v0;
  *(v0 + 160) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v0 + 168) = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://message/", 0x17uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  *(v0 + 144) = *v7;
  sub_100268860((v0 + 144), (v0 + 176));
  *(v0 + 192) = *(v0 + 144);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744();
  *v8 = String.init(stringInterpolation:)();
  v8[1] = v4;
  v5 = *(*(v0 + 208) + 8);

  return v5();
}

uint64_t sub_100387AC0()
{
  if (qword_1006D5F90 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100387B34()
{
  if (qword_1006D5F98 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100387BA8(uint64_t a1)
{
  v3 = type metadata accessor for IntentPerson();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100387C50(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 48);

  sub_100289B6C(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100285F68(v6);
}

uint64_t sub_100387D28(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for IntentPerson();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 64);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100387E50()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100387EA4(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 72);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100387FCC()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100388020(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v12 = __chkstk_darwin(v9);
  v11 = v1;
  v6 = *(v1 + 80);

  (*(v7 + 16))(v5, v9, v10);
  EntityProperty.wrappedValue.setter();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100388148()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_1003881A8()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_100388214()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100388274()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1003882E0()
{

  EntityProperty.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100388340()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1003883AC()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_100388420(void *a1)
{

  _objc_retain(a1);

  EntityProperty.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_1003884EC()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100388540()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100388598()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_1003885C4(uint64_t a1)
{

  *(v1 + 120) = a1;
}

__n128 sub_100388600@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = v208;
  v173 = a1;
  v155 = a2;
  v192 = 0;
  v219 = 0;
  v156 = 0u;
  v218 = 0u;
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v210 = 0;
  v157 = 0;
  type metadata accessor for IntentPerson.Handle.Label();
  __chkstk_darwin(0);
  v158 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IntentPerson.Handle();
  __chkstk_darwin(v3 - 8);
  v159 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = (*(*(sub_10025C9B0(&qword_1006DCAE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v192);
  v161 = &v78 - v160;
  v162 = type metadata accessor for IntentPerson();
  v163 = *(v162 - 8);
  v164 = v163;
  v165 = *(v163 + 64);
  v5 = __chkstk_darwin(v192);
  v167 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v78 - v167;
  __chkstk_darwin(v5);
  v168 = &v78 - v167;
  v219 = &v78 - v167;
  v169 = type metadata accessor for MailMessageEntityID();
  v170 = *(v169 - 8);
  v171 = v170;
  __chkstk_darwin(v192);
  v172 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Logger();
  v174 = v187;
  v175 = *(v187 - 8);
  v186 = v175;
  v176 = v175;
  v178 = *(v175 + 64);
  v7 = __chkstk_darwin(v173);
  v180 = (v178 + 15) & 0xFFFFFFFFFFFFFFF0;
  v177 = &v78 - v180;
  v8 = __chkstk_darwin(v7);
  v179 = &v78 - v180;
  v9 = __chkstk_darwin(v8);
  v185 = &v78 - v180;
  v181 = &v78 - v180;
  v210 = v9;
  v182 = sub_10025C9B0(&qword_1006D7F38);
  *&v212 = EntityProperty<>.init()();
  *(&v212 + 1) = EntityProperty<>.init()();
  *&v213 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0);
  *(&v213 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40);
  *&v214 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48);
  *(&v214 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3C8);
  *&v215 = EntityProperty<>.init()();
  v183 = sub_10025C9B0(&qword_1006DA2E8);
  *(&v215 + 1) = EntityProperty<>.init()();
  *&v216 = EntityProperty<>.init()();
  v184 = sub_10025C9B0(&qword_1006DA2F0);
  *(&v216 + 1) = EntityProperty<>.init()();
  *&v217 = EntityProperty<>.init()();
  *(&v217 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50);
  sub_100264788();
  *&v218 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006DA3D0);
  sub_1002DA854();
  v10 = EntityProperty<>.init()();
  v11 = v185;
  *(&v218 + 1) = v10;
  v12 = Logger.appIntentLogger.unsafeMutableAddressor();
  v188 = *(v186 + 16);
  v189 = (v186 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v188(v11, v12, v187);
  v195 = Logger.logObject.getter();
  v190 = v195;
  v194 = static os_log_type_t.info.getter();
  v191 = v194;
  v193 = sub_10025C9B0(&unk_1006D7720);
  v196 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v195, v194))
  {
    v13 = v157;
    v145 = static UnsafeMutablePointer.allocate(capacity:)();
    v141 = v145;
    v142 = sub_10025C9B0(&qword_1006D7290);
    v143 = 0;
    v146 = sub_1002641E8(0);
    v144 = v146;
    v147 = sub_1002641E8(v143);
    v200[0] = v145;
    v199 = v146;
    v198 = v147;
    v148 = 0;
    v149 = v200;
    sub_10026423C(0, v200);
    sub_10026423C(v148, v149);
    v197 = v196;
    v150 = &v78;
    __chkstk_darwin(&v78);
    v151 = &v78 - 3;
    *(&v78 - 4) = v14;
    *(&v78 - 3) = &v199;
    *(&v78 - 2) = &v198;
    v152 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v153 = v13;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v190, v191, "#SiriMail MailMessageEntity.init(from emMessage:)", v141, 2u);
      v139 = 0;
      sub_10026429C(v144);
      sub_10026429C(v147);
      UnsafeMutablePointer.deallocate()();

      v140 = v153;
    }
  }

  else
  {

    v140 = v157;
  }

  v135 = v140;

  v136 = *(v176 + 8);
  v137 = (v176 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v136(v181, v174);
  v15 = v173;
  MailMessageEntityID.init(using:)();
  *&v138 = MailMessageEntityID.encodedID.getter();
  *(&v138 + 1) = v16;
  (*(v171 + 8))(v172, v169);
  v17 = v154;
  v18 = v173;
  v211 = v138;
  v19 = v154[9];
  v20 = v154[10];
  v21 = v154[11];
  v154[45] = v154[12];
  v17[44] = v21;
  v17[43] = v20;
  v17[42] = v19;
  v22 = v17[13];
  v23 = v17[14];
  v24 = v17[15];
  v17[49] = v17[16];
  v17[48] = v24;
  v17[47] = v23;
  v17[46] = v22;
  v25 = v18;
  v209 = [v173 subject];
  if (v209)
  {
    v128 = v209;
    v26 = v209;
    sub_10026A58C(&v209);

    v130 = [v128 subjectString];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v28;
    v131 = v27;

    v132 = v129;
    v133 = v131;
    v134 = v132;
  }

  else
  {
    sub_10026A58C(&v209);

    v133 = 0;
    v134 = 0;
  }

  sub_1002CCD44();
  v29 = v154;
  v30 = v154[9];
  v31 = v154[10];
  v32 = v154[11];
  v154[37] = v154[12];
  v29[36] = v32;
  v29[35] = v31;
  v29[34] = v30;
  v33 = v29[13];
  v34 = v29[14];
  v35 = v29[15];
  v29[41] = v29[16];
  v29[40] = v35;
  v29[39] = v34;
  v29[38] = v33;
  v124 = 0;
  v125 = type metadata accessor for IntentFile();
  _allocateUninitializedArray<A>(_:)();
  sub_1002CD004();
  v36 = v173;
  v127 = [v173 senderAddress];
  v126 = v127;

  if (v127)
  {
    v123 = v126;
    v122 = v126;
    swift_getObjectType();
    ECEmailAddressConvertible.intentPerson.getter();
    swift_unknownObjectRelease();
    (*(v164 + 56))(v161, 0, 1, v162);
  }

  else
  {
    (*(v164 + 56))(v161, 1, 1, v162);
  }

  if ((*(v164 + 48))(v161, 1, v162) == 1)
  {
    v37 = v179;
    sub_100387BA8(v161);
    v38 = Logger.appIntentLogger.unsafeMutableAddressor();
    v188(v37, v38, v174);
    v120 = Logger.logObject.getter();
    v117 = v120;
    v119 = static os_log_type_t.error.getter();
    v118 = v119;
    v121 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v120, v119))
    {
      v54 = v135;
      v86 = static UnsafeMutablePointer.allocate(capacity:)();
      v82 = v86;
      v83 = sub_10025C9B0(&qword_1006D7290);
      v84 = 0;
      v87 = sub_1002641E8(0);
      v85 = v87;
      v88 = sub_1002641E8(v84);
      v206 = v86;
      v205 = v87;
      v204 = v88;
      v89 = 0;
      v90 = &v206;
      sub_10026423C(0, &v206);
      sub_10026423C(v89, v90);
      v203[2] = v121;
      v91 = &v78;
      __chkstk_darwin(&v78);
      v92 = &v78 - 3;
      *(&v78 - 4) = v55;
      *(&v78 - 3) = &v205;
      *(&v78 - 2) = &v204;
      v93 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v94 = v54;
      if (v54)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v117, v118, "#SiriMail MailMessageEntity.init(from emMessage:) EMMessage senderAddress is nil. This is unexpected, but resolving the sender to a blank person to avoid crash.", v82, 2u);
        v80 = 0;
        sub_10026429C(v85);
        sub_10026429C(v88);
        UnsafeMutablePointer.deallocate()();

        v81 = v94;
      }
    }

    else
    {

      v81 = v135;
    }

    v79 = v81;

    v136(v179, v174);
    v56 = v154;
    v57 = v154[9];
    v58 = v154[10];
    v59 = v154[11];
    v154[29] = v154[12];
    v56[28] = v59;
    v56[27] = v58;
    v56[26] = v57;
    v60 = v56[13];
    v61 = v56[14];
    v62 = v56[15];
    v56[33] = v56[16];
    v56[32] = v62;
    v56[31] = v61;
    v56[30] = v60;
    v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    sub_100389794(v158);
    IntentPerson.Handle.init(emailAddress:label:)();
    IntentPerson.init(handle:)();
    sub_100387D28(v166);
    v96 = v79;
  }

  else
  {
    v39 = v177;
    (*(v164 + 32))(v168, v161, v162);
    v40 = Logger.appIntentLogger.unsafeMutableAddressor();
    v188(v39, v40, v174);
    v115 = Logger.logObject.getter();
    v112 = v115;
    v114 = static os_log_type_t.info.getter();
    v113 = v114;
    v116 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v115, v114))
    {
      v41 = v135;
      v103 = static UnsafeMutablePointer.allocate(capacity:)();
      v99 = v103;
      v100 = sub_10025C9B0(&qword_1006D7290);
      v101 = 0;
      v104 = sub_1002641E8(0);
      v102 = v104;
      v105 = sub_1002641E8(v101);
      v203[0] = v103;
      v202 = v104;
      v201 = v105;
      v106 = 0;
      v107 = v203;
      sub_10026423C(0, v203);
      sub_10026423C(v106, v107);
      v200[1] = v116;
      v108 = &v78;
      __chkstk_darwin(&v78);
      v109 = &v78 - 3;
      *(&v78 - 4) = v42;
      *(&v78 - 3) = &v202;
      *(&v78 - 2) = &v201;
      v110 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v111 = v41;
      if (v41)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v112, v113, "#SiriMail MailMessageEntity.init(from emMessage:) resolved sender to a real person", v99, 2u);
        v97 = 0;
        sub_10026429C(v102);
        sub_10026429C(v105);
        UnsafeMutablePointer.deallocate()();

        v98 = v111;
      }
    }

    else
    {

      v98 = v135;
    }

    v95 = v98;

    v136(v177, v174);
    v43 = v154;
    v44 = v166;
    v45 = v164;
    v46 = v168;
    v47 = v162;
    v48 = v154[9];
    v49 = v154[10];
    v50 = v154[11];
    v154[21] = v154[12];
    v43[20] = v50;
    v43[19] = v49;
    v43[18] = v48;
    v51 = v43[13];
    v52 = v43[14];
    v53 = v43[15];
    v43[25] = v43[16];
    v43[24] = v53;
    v43[23] = v52;
    v43[22] = v51;
    (*(v45 + 16))(v44, v46, v47);
    sub_100387D28(v166);
    (*(v164 + 8))(v168, v162);
    v96 = v95;
  }

  v63 = v154;
  v64 = v154[9];
  v65 = v154[10];
  v66 = v154[11];
  v154[3] = v154[12];
  v63[2] = v66;
  v63[1] = v65;
  *v63 = v64;
  v67 = v63[13];
  v68 = v63[14];
  v69 = v63[15];
  v63[7] = v63[16];
  v63[6] = v69;
  v63[5] = v68;
  v63[4] = v67;
  sub_1002E0080(v208, v207);

  sub_10027D9CC();
  v70 = v154;
  v71 = v155;
  v72 = *v154;
  v73 = v154[1];
  v74 = v154[2];
  *(v155 + 48) = v154[3];
  *(v71 + 32) = v74;
  *(v71 + 16) = v73;
  *v71 = v72;
  result = v70[4];
  v76 = v70[5];
  v77 = v70[6];
  *(v71 + 112) = v70[7];
  *(v71 + 96) = v77;
  *(v71 + 80) = v76;
  *(v71 + 64) = result;
  return result;
}

uint64_t sub_100389794@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for IntentPerson.Handle.Label.other(_:);
  v1 = type metadata accessor for IntentPerson.Handle.Label();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_100389838()
{
  sub_10038F6E8();
  v0 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v1 = *(v3 + 8);

  return v1(v0);
}

uint64_t sub_1003898C8(uint64_t a1)
{
  v1[30] = a1;
  v1[11] = v1;
  v1[12] = 0;
  v1[13] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[9] = 0;
  v1[10] = 0;
  sub_10025C9B0(&qword_1006D7DF0);
  v1[31] = swift_task_alloc();
  v2 = type metadata accessor for MailMessageEntityID();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[41] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[42] = v7;
  v1[43] = v4;

  return _swift_task_switch(sub_100389AFC, v7);
}

uint64_t sub_100389AFC()
{
  v104 = v0;
  v1 = v0[40];
  v94 = v0[36];
  v95 = v0[35];
  v0[11] = v0;
  v2 = Logger.appIntentLogger.unsafeMutableAddressor();
  v3 = *(v94 + 16);
  v0[44] = v3;
  v0[45] = (v94 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v95);
  v97 = Logger.logObject.getter();
  v96 = static os_log_type_t.info.getter();
  v0[46] = sub_10025C9B0(&unk_1006D7720);
  v98 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v97, v96))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v90 = sub_1002641E8(0);
    v91 = sub_1002641E8(0);
    *(v93 + 208) = buf;
    *(v93 + 216) = v90;
    *(v93 + 224) = v91;
    sub_10026423C(0, (v93 + 208));
    sub_10026423C(0, (v93 + 208));
    *(v93 + 232) = v98;
    v92 = swift_task_alloc();
    v92[2] = v93 + 208;
    v92[3] = v93 + 216;
    v92[4] = v93 + 224;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();

    _os_log_impl(&_mh_execute_header, v97, v96, "#SiriMail MailMessageEntityQuery.entities(for identifiers:)", buf, 2u);
    sub_10026429C(v90);
    sub_10026429C(v91);
    UnsafeMutablePointer.deallocate()();

    v88 = 0;
  }

  else
  {
  }

  v83 = *(v93 + 320);
  v84 = *(v93 + 280);
  v85 = *(v93 + 240);
  v82 = *(v93 + 288);
  _objc_release(v97);
  v4 = *(v82 + 8);
  *(v93 + 376) = v4;
  *(v93 + 384) = (v82 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v83, v84);
  *(v93 + 104) = _allocateUninitializedArray<A>(_:)();

  *(v93 + 112) = v85;
  sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  v86 = 0;
  for (i = v88; ; i = v67)
  {
    sub_10025C9B0(&qword_1006D7F98);
    IndexingIterator.next()();
    v80 = *(v93 + 56);
    v81 = *(v93 + 64);
    *(v93 + 392) = v81;
    if (!v81)
    {
      break;
    }

    v79 = *(v93 + 256);
    v78 = *(v93 + 248);
    v77 = *(v93 + 264);
    *(v93 + 72) = v80;
    *(v93 + 80) = v81;

    MailMessageEntityID.init(with:)();
    if ((*(v77 + 48))(v78, 1, v79) == 1)
    {
      v53 = *(v93 + 352);
      v17 = *(v93 + 304);
      v52 = *(v93 + 280);
      sub_1002C1698(*(v93 + 248));
      v18 = Logger.appIntentLogger.unsafeMutableAddressor();
      v53(v17, v18, v52);
      log = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      v56 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v54))
      {
        v48 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v49 = sub_1002641E8(0);
        v50 = sub_1002641E8(0);
        *(v93 + 128) = v48;
        *(v93 + 136) = v49;
        *(v93 + 144) = v50;
        sub_10026423C(0, (v93 + 128));
        sub_10026423C(0, (v93 + 128));
        *(v93 + 152) = v56;
        v51 = swift_task_alloc();
        v51[2] = v93 + 128;
        v51[3] = v93 + 136;
        v51[4] = v93 + 144;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, log, v54, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v48, 2u);
        sub_10026429C(v49);
        sub_10026429C(v50);
        UnsafeMutablePointer.deallocate()();
      }

      v45 = *(v93 + 376);
      v43 = *(v93 + 304);
      v44 = *(v93 + 280);
      _objc_release(log);
      v45(v43, v44);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v47 = dispatch thunk of CSQueryBuilder.buildOr()();
      v46 = v19;
      *(v93 + 464) = v19;

      v20 = swift_task_alloc();
      v9 = v46;
      v10 = v80;
      v11 = v81;
      v21 = v20;
      v13 = v47;
      *(v93 + 472) = v21;
      *v21 = *(v93 + 88);
      v21[1] = sub_10038D714;

      return sub_1002B78F4(v13, v9, v10, v11);
    }

    v73 = *(v93 + 352);
    v5 = *(v93 + 312);
    v72 = *(v93 + 280);
    (*(*(v93 + 264) + 32))(*(v93 + 272), *(v93 + 248), *(v93 + 256));
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    v73(v5, v6, v72);
    oslog = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    v76 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v74))
    {
      v68 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v69 = sub_1002641E8(0);
      v70 = sub_1002641E8(0);
      *(v93 + 176) = v68;
      *(v93 + 184) = v69;
      *(v93 + 192) = v70;
      sub_10026423C(0, (v93 + 176));
      sub_10026423C(0, (v93 + 176));
      *(v93 + 200) = v76;
      v71 = swift_task_alloc();
      v71[2] = v93 + 176;
      v71[3] = v93 + 184;
      v71[4] = v93 + 192;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v74, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", v68, 2u);
      sub_10026429C(v69);
      sub_10026429C(v70);
      UnsafeMutablePointer.deallocate()();

      v66 = 0;
      v67 = 0;
    }

    else
    {

      v66 = v86;
      v67 = i;
    }

    v64 = *(v93 + 376);
    v62 = *(v93 + 312);
    v63 = *(v93 + 280);
    _objc_release(oslog);
    v64(v62, v63);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v65 = static String.== infix(_:_:)();

    if (v65)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v61 = dispatch thunk of CSQueryBuilder.build()();
      v60 = v7;
      *(v93 + 400) = v7;

      v8 = swift_task_alloc();
      v9 = v60;
      v10 = v80;
      v11 = v81;
      v12 = v8;
      v13 = v61;
      *(v93 + 408) = v12;
      *v12 = *(v93 + 88);
      v12[1] = sub_10038B02C;

      return sub_1002B78F4(v13, v9, v10, v11);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v59 = static String.== infix(_:_:)();

    if (v59)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v58 = dispatch thunk of CSQueryBuilder.build()();
      v57 = v15;
      *(v93 + 432) = v15;

      v16 = swift_task_alloc();
      *(v93 + 440) = v16;
      *v16 = *(v93 + 88);
      v16[1] = sub_10038C3A0;

      return sub_1002B82C0(v58, v57, v80, v81);
    }

    (*(*(v93 + 264) + 8))(*(v93 + 272), *(v93 + 256));

    v86 = v66;
  }

  v33 = *(v93 + 352);
  v22 = *(v93 + 296);
  v32 = *(v93 + 280);
  sub_100264880();
  v23 = Logger.appIntentLogger.unsafeMutableAddressor();
  v33(v22, v23, v32);
  v34 = *(v93 + 104);

  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_10038F764;
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_10026E818;
  *(v39 + 24) = v36;
  _allocateUninitializedArray<A>(_:)();
  v40 = v24;

  *v40 = sub_10026434C;
  v40[1] = v37;

  v40[2] = sub_10026434C;
  v40[3] = v38;

  v40[4] = sub_10026EBF8;
  v40[5] = v39;
  sub_1002612B0();

  if (os_log_type_enabled(v41, v42))
  {
    v29 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v30 = sub_1002641E8(0);
    v31 = sub_1002641E8(0);
    v99 = v29;
    v100 = v30;
    v101 = v31;
    sub_10026423C(0, &v99);
    sub_10026423C(1, &v99);
    v102 = sub_10026434C;
    v103 = v37;
    sub_100264250(&v102, &v99, &v100, &v101);
    v102 = sub_10026434C;
    v103 = v38;
    sub_100264250(&v102, &v99, &v100, &v101);
    v102 = sub_10026EBF8;
    v103 = v39;
    sub_100264250(&v102, &v99, &v100, &v101);
    _os_log_impl(&_mh_execute_header, v41, v42, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v29, 0xCu);
    sub_10026429C(v30);
    sub_10026429C(v31);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v27 = *(v93 + 376);
  v28 = *(v93 + 296);
  v26 = *(v93 + 280);
  _objc_release(v41);
  v27(v28, v26);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880();

  v25 = *(*(v93 + 88) + 8);

  return v25(v34);
}

uint64_t sub_10038B02C(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[52] = a1;
  v6[53] = v1;

  if (v1)
  {
    v3 = v6[42];
    v4 = sub_10038EA8C;
  }

  else
  {

    v3 = v6[42];
    v4 = sub_10038B1C8;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10038B1C8()
{
  v87 = v0;
  v1 = v0[52];
  v0[11] = v0;
  v0[21] = v1;
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  Array.append<A>(contentsOf:)();
  v81 = v0[53];
  while (1)
  {
    (*(*(v80 + 264) + 8))(*(v80 + 272), *(v80 + 256));

    sub_10025C9B0(&qword_1006D7F98);
    IndexingIterator.next()();
    v75 = *(v80 + 56);
    v76 = *(v80 + 64);
    *(v80 + 392) = v76;
    if (!v76)
    {
      break;
    }

    v79 = *(v80 + 256);
    v78 = *(v80 + 248);
    v77 = *(v80 + 264);
    *(v80 + 72) = v75;
    *(v80 + 80) = v76;

    MailMessageEntityID.init(with:)();
    if ((*(v77 + 48))(v78, 1, v79) == 1)
    {
      v50 = *(v80 + 352);
      v14 = *(v80 + 304);
      v49 = *(v80 + 280);
      sub_1002C1698(*(v80 + 248));
      v15 = Logger.appIntentLogger.unsafeMutableAddressor();
      v50(v14, v15, v49);
      oslog = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();
      v53 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v51))
      {
        v45 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v46 = sub_1002641E8(0);
        v47 = sub_1002641E8(0);
        *(v80 + 128) = v45;
        *(v80 + 136) = v46;
        *(v80 + 144) = v47;
        sub_10026423C(0, (v80 + 128));
        sub_10026423C(0, (v80 + 128));
        *(v80 + 152) = v53;
        v48 = swift_task_alloc();
        v48[2] = v80 + 128;
        v48[3] = v80 + 136;
        v48[4] = v80 + 144;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v81)
        {
        }

        _os_log_impl(&_mh_execute_header, oslog, v51, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v45, 2u);
        sub_10026429C(v46);
        sub_10026429C(v47);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v42 = *(v80 + 376);
      v40 = *(v80 + 304);
      v41 = *(v80 + 280);
      _objc_release(oslog);
      v42(v40, v41);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v44 = dispatch thunk of CSQueryBuilder.buildOr()();
      v43 = v16;
      *(v80 + 464) = v16;

      v17 = swift_task_alloc();
      v7 = v43;
      v8 = v75;
      v9 = v76;
      v18 = v17;
      v11 = v44;
      *(v80 + 472) = v18;
      *v18 = *(v80 + 88);
      v18[1] = sub_10038D714;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    v71 = *(v80 + 352);
    v2 = *(v80 + 312);
    v70 = *(v80 + 280);
    (*(*(v80 + 264) + 32))(*(v80 + 272), *(v80 + 248), *(v80 + 256));
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    v71(v2, v3, v70);
    v73 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    v74 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v73, v72))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v67 = sub_1002641E8(0);
      v68 = sub_1002641E8(0);
      *(v80 + 176) = buf;
      *(v80 + 184) = v67;
      *(v80 + 192) = v68;
      sub_10026423C(0, (v80 + 176));
      sub_10026423C(0, (v80 + 176));
      *(v80 + 200) = v74;
      v69 = swift_task_alloc();
      v69[2] = v80 + 176;
      v69[3] = v80 + 184;
      v69[4] = v80 + 192;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v81)
      {
      }

      _os_log_impl(&_mh_execute_header, v73, v72, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", buf, 2u);
      sub_10026429C(v67);
      sub_10026429C(v68);
      UnsafeMutablePointer.deallocate()();

      v64 = 0;
      v65 = 0;
    }

    else
    {

      v64 = v81;
      v65 = v54;
    }

    v62 = *(v80 + 376);
    v60 = *(v80 + 312);
    v61 = *(v80 + 280);
    _objc_release(v73);
    v62(v60, v61);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v63 = static String.== infix(_:_:)();

    if (v63)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v59 = dispatch thunk of CSQueryBuilder.build()();
      v58 = v5;
      *(v80 + 400) = v5;

      v6 = swift_task_alloc();
      v7 = v58;
      v8 = v75;
      v9 = v76;
      v10 = v6;
      v11 = v59;
      *(v80 + 408) = v10;
      *v10 = *(v80 + 88);
      v10[1] = sub_10038B02C;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v57 = static String.== infix(_:_:)();

    if (v57)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v56 = dispatch thunk of CSQueryBuilder.build()();
      v55 = v12;
      *(v80 + 432) = v12;

      v13 = swift_task_alloc();
      *(v80 + 440) = v13;
      *v13 = *(v80 + 88);
      v13[1] = sub_10038C3A0;

      return sub_1002B82C0(v56, v55, v75, v76);
    }

    v81 = v64;
    v54 = v65;
  }

  v30 = *(v80 + 352);
  v19 = *(v80 + 296);
  v29 = *(v80 + 280);
  sub_100264880();
  v20 = Logger.appIntentLogger.unsafeMutableAddressor();
  v30(v19, v20, v29);
  v31 = *(v80 + 104);

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  log = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10038F764;
  *(v33 + 24) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_10026E818;
  *(v36 + 24) = v33;
  _allocateUninitializedArray<A>(_:)();
  v37 = v21;

  *v37 = sub_10026434C;
  v37[1] = v34;

  v37[2] = sub_10026434C;
  v37[3] = v35;

  v37[4] = sub_10026EBF8;
  v37[5] = v36;
  sub_1002612B0();

  if (os_log_type_enabled(log, v39))
  {
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v27 = sub_1002641E8(0);
    v28 = sub_1002641E8(0);
    v82 = v26;
    v83 = v27;
    v84 = v28;
    sub_10026423C(0, &v82);
    sub_10026423C(1, &v82);
    v85 = sub_10026434C;
    v86 = v34;
    sub_100264250(&v85, &v82, &v83, &v84);
    if (v81)
    {
    }

    v85 = sub_10026434C;
    v86 = v35;
    sub_100264250(&v85, &v82, &v83, &v84);
    v85 = sub_10026EBF8;
    v86 = v36;
    sub_100264250(&v85, &v82, &v83, &v84);
    _os_log_impl(&_mh_execute_header, log, v39, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v26, 0xCu);
    sub_10026429C(v27);
    sub_10026429C(v28);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v24 = *(v80 + 376);
  v25 = *(v80 + 296);
  v23 = *(v80 + 280);
  _objc_release(log);
  v24(v25, v23);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880();

  v22 = *(*(v80 + 88) + 8);

  return v22(v31);
}

uint64_t sub_10038C3A0(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[56] = a1;
  v6[57] = v1;

  if (v1)
  {
    v3 = v6[42];
    v4 = sub_10038EC00;
  }

  else
  {

    v3 = v6[42];
    v4 = sub_10038C53C;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10038C53C()
{
  v87 = v0;
  v1 = v0[56];
  v0[11] = v0;
  v0[20] = v1;
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  Array.append<A>(contentsOf:)();
  v81 = v0[57];
  while (1)
  {
    (*(*(v80 + 264) + 8))(*(v80 + 272), *(v80 + 256));

    sub_10025C9B0(&qword_1006D7F98);
    IndexingIterator.next()();
    v75 = *(v80 + 56);
    v76 = *(v80 + 64);
    *(v80 + 392) = v76;
    if (!v76)
    {
      break;
    }

    v79 = *(v80 + 256);
    v78 = *(v80 + 248);
    v77 = *(v80 + 264);
    *(v80 + 72) = v75;
    *(v80 + 80) = v76;

    MailMessageEntityID.init(with:)();
    if ((*(v77 + 48))(v78, 1, v79) == 1)
    {
      v50 = *(v80 + 352);
      v14 = *(v80 + 304);
      v49 = *(v80 + 280);
      sub_1002C1698(*(v80 + 248));
      v15 = Logger.appIntentLogger.unsafeMutableAddressor();
      v50(v14, v15, v49);
      oslog = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();
      v53 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v51))
      {
        v45 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v46 = sub_1002641E8(0);
        v47 = sub_1002641E8(0);
        *(v80 + 128) = v45;
        *(v80 + 136) = v46;
        *(v80 + 144) = v47;
        sub_10026423C(0, (v80 + 128));
        sub_10026423C(0, (v80 + 128));
        *(v80 + 152) = v53;
        v48 = swift_task_alloc();
        v48[2] = v80 + 128;
        v48[3] = v80 + 136;
        v48[4] = v80 + 144;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v81)
        {
        }

        _os_log_impl(&_mh_execute_header, oslog, v51, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v45, 2u);
        sub_10026429C(v46);
        sub_10026429C(v47);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v42 = *(v80 + 376);
      v40 = *(v80 + 304);
      v41 = *(v80 + 280);
      _objc_release(oslog);
      v42(v40, v41);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v44 = dispatch thunk of CSQueryBuilder.buildOr()();
      v43 = v16;
      *(v80 + 464) = v16;

      v17 = swift_task_alloc();
      v7 = v43;
      v8 = v75;
      v9 = v76;
      v18 = v17;
      v11 = v44;
      *(v80 + 472) = v18;
      *v18 = *(v80 + 88);
      v18[1] = sub_10038D714;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    v71 = *(v80 + 352);
    v2 = *(v80 + 312);
    v70 = *(v80 + 280);
    (*(*(v80 + 264) + 32))(*(v80 + 272), *(v80 + 248), *(v80 + 256));
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    v71(v2, v3, v70);
    v73 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    v74 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v73, v72))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v67 = sub_1002641E8(0);
      v68 = sub_1002641E8(0);
      *(v80 + 176) = buf;
      *(v80 + 184) = v67;
      *(v80 + 192) = v68;
      sub_10026423C(0, (v80 + 176));
      sub_10026423C(0, (v80 + 176));
      *(v80 + 200) = v74;
      v69 = swift_task_alloc();
      v69[2] = v80 + 176;
      v69[3] = v80 + 184;
      v69[4] = v80 + 192;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v81)
      {
      }

      _os_log_impl(&_mh_execute_header, v73, v72, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", buf, 2u);
      sub_10026429C(v67);
      sub_10026429C(v68);
      UnsafeMutablePointer.deallocate()();

      v64 = 0;
      v65 = 0;
    }

    else
    {

      v64 = v81;
      v65 = v54;
    }

    v62 = *(v80 + 376);
    v60 = *(v80 + 312);
    v61 = *(v80 + 280);
    _objc_release(v73);
    v62(v60, v61);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v63 = static String.== infix(_:_:)();

    if (v63)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v59 = dispatch thunk of CSQueryBuilder.build()();
      v58 = v5;
      *(v80 + 400) = v5;

      v6 = swift_task_alloc();
      v7 = v58;
      v8 = v75;
      v9 = v76;
      v10 = v6;
      v11 = v59;
      *(v80 + 408) = v10;
      *v10 = *(v80 + 88);
      v10[1] = sub_10038B02C;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v57 = static String.== infix(_:_:)();

    if (v57)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v56 = dispatch thunk of CSQueryBuilder.build()();
      v55 = v12;
      *(v80 + 432) = v12;

      v13 = swift_task_alloc();
      *(v80 + 440) = v13;
      *v13 = *(v80 + 88);
      v13[1] = sub_10038C3A0;

      return sub_1002B82C0(v56, v55, v75, v76);
    }

    v81 = v64;
    v54 = v65;
  }

  v30 = *(v80 + 352);
  v19 = *(v80 + 296);
  v29 = *(v80 + 280);
  sub_100264880();
  v20 = Logger.appIntentLogger.unsafeMutableAddressor();
  v30(v19, v20, v29);
  v31 = *(v80 + 104);

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  log = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10038F764;
  *(v33 + 24) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_10026E818;
  *(v36 + 24) = v33;
  _allocateUninitializedArray<A>(_:)();
  v37 = v21;

  *v37 = sub_10026434C;
  v37[1] = v34;

  v37[2] = sub_10026434C;
  v37[3] = v35;

  v37[4] = sub_10026EBF8;
  v37[5] = v36;
  sub_1002612B0();

  if (os_log_type_enabled(log, v39))
  {
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v27 = sub_1002641E8(0);
    v28 = sub_1002641E8(0);
    v82 = v26;
    v83 = v27;
    v84 = v28;
    sub_10026423C(0, &v82);
    sub_10026423C(1, &v82);
    v85 = sub_10026434C;
    v86 = v34;
    sub_100264250(&v85, &v82, &v83, &v84);
    if (v81)
    {
    }

    v85 = sub_10026434C;
    v86 = v35;
    sub_100264250(&v85, &v82, &v83, &v84);
    v85 = sub_10026EBF8;
    v86 = v36;
    sub_100264250(&v85, &v82, &v83, &v84);
    _os_log_impl(&_mh_execute_header, log, v39, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v26, 0xCu);
    sub_10026429C(v27);
    sub_10026429C(v28);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v24 = *(v80 + 376);
  v25 = *(v80 + 296);
  v23 = *(v80 + 280);
  _objc_release(log);
  v24(v25, v23);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880();

  v22 = *(*(v80 + 88) + 8);

  return v22(v31);
}

uint64_t sub_10038D714(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[60] = a1;
  v6[61] = v1;

  if (v1)
  {
    v3 = v6[42];
    v4 = sub_10038ED78;
  }

  else
  {

    v3 = v6[42];
    v4 = sub_10038D8B0;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10038D8B0()
{
  v87 = v0;
  v1 = v0[60];
  v0[11] = v0;
  v0[15] = v1;
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  Array.append<A>(contentsOf:)();
  v81 = v0[61];
  while (1)
  {

    sub_10025C9B0(&qword_1006D7F98);
    IndexingIterator.next()();
    v75 = *(v80 + 56);
    v76 = *(v80 + 64);
    *(v80 + 392) = v76;
    if (!v76)
    {
      break;
    }

    v79 = *(v80 + 256);
    v78 = *(v80 + 248);
    v77 = *(v80 + 264);
    *(v80 + 72) = v75;
    *(v80 + 80) = v76;

    MailMessageEntityID.init(with:)();
    if ((*(v77 + 48))(v78, 1, v79) == 1)
    {
      v50 = *(v80 + 352);
      v14 = *(v80 + 304);
      v49 = *(v80 + 280);
      sub_1002C1698(*(v80 + 248));
      v15 = Logger.appIntentLogger.unsafeMutableAddressor();
      v50(v14, v15, v49);
      oslog = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();
      v53 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v51))
      {
        v45 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v46 = sub_1002641E8(0);
        v47 = sub_1002641E8(0);
        *(v80 + 128) = v45;
        *(v80 + 136) = v46;
        *(v80 + 144) = v47;
        sub_10026423C(0, (v80 + 128));
        sub_10026423C(0, (v80 + 128));
        *(v80 + 152) = v53;
        v48 = swift_task_alloc();
        v48[2] = v80 + 128;
        v48[3] = v80 + 136;
        v48[4] = v80 + 144;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v81)
        {
        }

        _os_log_impl(&_mh_execute_header, oslog, v51, "#SiriMail MailMessageEntityQuery fetching messages using mailMessageID or conversationID", v45, 2u);
        sub_10026429C(v46);
        sub_10026429C(v47);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v42 = *(v80 + 376);
      v40 = *(v80 + 304);
      v41 = *(v80 + 280);
      _objc_release(oslog);
      v42(v40, v41);
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      dispatch thunk of CSQueryBuilder.addConversationIDPredicate(_:)();

      v44 = dispatch thunk of CSQueryBuilder.buildOr()();
      v43 = v16;
      *(v80 + 464) = v16;

      v17 = swift_task_alloc();
      v7 = v43;
      v8 = v75;
      v9 = v76;
      v18 = v17;
      v11 = v44;
      *(v80 + 472) = v18;
      *v18 = *(v80 + 88);
      v18[1] = sub_10038D714;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    v71 = *(v80 + 352);
    v2 = *(v80 + 312);
    v70 = *(v80 + 280);
    (*(*(v80 + 264) + 32))(*(v80 + 272), *(v80 + 248), *(v80 + 256));
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    v71(v2, v3, v70);
    v73 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    v74 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v73, v72))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v67 = sub_1002641E8(0);
      v68 = sub_1002641E8(0);
      *(v80 + 176) = buf;
      *(v80 + 184) = v67;
      *(v80 + 192) = v68;
      sub_10026423C(0, (v80 + 176));
      sub_10026423C(0, (v80 + 176));
      *(v80 + 200) = v74;
      v69 = swift_task_alloc();
      v69[2] = v80 + 176;
      v69[3] = v80 + 184;
      v69[4] = v80 + 192;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v81)
      {
      }

      _os_log_impl(&_mh_execute_header, v73, v72, "#SiriMail MailMessageEntityQuery fetching messages using MailMessageEntityID", buf, 2u);
      sub_10026429C(v67);
      sub_10026429C(v68);
      UnsafeMutablePointer.deallocate()();

      v64 = 0;
      v65 = 0;
    }

    else
    {

      v64 = v81;
      v65 = v54;
    }

    v62 = *(v80 + 376);
    v60 = *(v80 + 312);
    v61 = *(v80 + 280);
    _objc_release(v73);
    v62(v60, v61);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v63 = static String.== infix(_:_:)();

    if (v63)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v59 = dispatch thunk of CSQueryBuilder.build()();
      v58 = v5;
      *(v80 + 400) = v5;

      v6 = swift_task_alloc();
      v7 = v58;
      v8 = v75;
      v9 = v76;
      v10 = v6;
      v11 = v59;
      *(v80 + 408) = v10;
      *v10 = *(v80 + 88);
      v10[1] = sub_10038B02C;

      return sub_1002B78F4(v11, v7, v8, v9);
    }

    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
    v57 = static String.== infix(_:_:)();

    if (v57)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v56 = dispatch thunk of CSQueryBuilder.build()();
      v55 = v12;
      *(v80 + 432) = v12;

      v13 = swift_task_alloc();
      *(v80 + 440) = v13;
      *v13 = *(v80 + 88);
      v13[1] = sub_10038C3A0;

      return sub_1002B82C0(v56, v55, v75, v76);
    }

    (*(*(v80 + 264) + 8))(*(v80 + 272), *(v80 + 256));
    v81 = v64;
    v54 = v65;
  }

  v30 = *(v80 + 352);
  v19 = *(v80 + 296);
  v29 = *(v80 + 280);
  sub_100264880();
  v20 = Logger.appIntentLogger.unsafeMutableAddressor();
  v30(v19, v20, v29);
  v31 = *(v80 + 104);

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  log = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10038F764;
  *(v33 + 24) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_10026E818;
  *(v36 + 24) = v33;
  _allocateUninitializedArray<A>(_:)();
  v37 = v21;

  *v37 = sub_10026434C;
  v37[1] = v34;

  v37[2] = sub_10026434C;
  v37[3] = v35;

  v37[4] = sub_10026EBF8;
  v37[5] = v36;
  sub_1002612B0();

  if (os_log_type_enabled(log, v39))
  {
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v27 = sub_1002641E8(0);
    v28 = sub_1002641E8(0);
    v82 = v26;
    v83 = v27;
    v84 = v28;
    sub_10026423C(0, &v82);
    sub_10026423C(1, &v82);
    v85 = sub_10026434C;
    v86 = v34;
    sub_100264250(&v85, &v82, &v83, &v84);
    if (v81)
    {
    }

    v85 = sub_10026434C;
    v86 = v35;
    sub_100264250(&v85, &v82, &v83, &v84);
    v85 = sub_10026EBF8;
    v86 = v36;
    sub_100264250(&v85, &v82, &v83, &v84);
    _os_log_impl(&_mh_execute_header, log, v39, "#SiriMail MailMessageEntityQuery.entities(for identifiers:) returning %ld search results", v26, 0xCu);
    sub_10026429C(v27);
    sub_10026429C(v28);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v24 = *(v80 + 376);
  v25 = *(v80 + 296);
  v23 = *(v80 + 280);
  _objc_release(log);
  v24(v25, v23);
  swift_beginAccess();
  swift_endAccess();
  sub_100264880();

  v22 = *(*(v80 + 88) + 8);

  return v22(v31);
}

uint64_t sub_10038EA8C()
{
  v4 = v0[34];
  v3 = v0[33];
  v5 = v0[32];
  v0[11] = v0;

  (*(v3 + 8))(v4, v5);

  sub_100264880();
  sub_100264880();

  v1 = *(v0[11] + 8);

  return v1();
}

uint64_t sub_10038EC00()
{
  v4 = v0[34];
  v3 = v0[33];
  v5 = v0[32];
  v0[11] = v0;

  (*(v3 + 8))(v4, v5);

  sub_100264880();
  sub_100264880();

  v1 = *(v0[11] + 8);

  return v1();
}

uint64_t sub_10038ED78()
{
  *(v0 + 88) = v0;

  sub_100264880();
  sub_100264880();

  v1 = *(*(v0 + 88) + 8);

  return v1();
}

uint64_t sub_10038EEB8()
{

  v1 = Array.count.getter();

  return v1;
}

uint64_t sub_10038EF10(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_1003898C8(a1);
}

uint64_t sub_10038EFC4(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10038F76C();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

uint64_t sub_10038F08C()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.EntitySchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F00C0;
  sub_10002094C(v7, qword_1006F00C0);
  v11 = sub_1000208F4(v7, v6);
  sub_100261018();
  sub_10038F1CC();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10038F1CC()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailMessageEntity", 0x11uLL, 1);
  return AssistantSchema.EntitySchema.init(_:)();
}

uint64_t sub_10038F2A4()
{
  if (qword_1006D5FA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F00C0);
}

uint64_t sub_10038F310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10038F2A4();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10038F38C@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = InstantAnswerView.Model.Flight.travelDate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10038F4CC()
{
  v2 = qword_1006DA3E8;
  if (!qword_1006DA3E8)
  {
    sub_10025CAA4(&qword_1006DA3F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10038F554(uint64_t a1, const void *a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_100387860(a1, a2, v2 + 16);
}

uint64_t sub_10038F614(uint64_t a1, const void *a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_100387600(a1, a2, v8, v9);
}

unint64_t sub_10038F6E8()
{
  v2 = qword_1006DB530;
  if (!qword_1006DB530)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F76C()
{
  v2 = qword_1006DA3F8;
  if (!qword_1006DA3F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F7E8()
{
  v2 = qword_1006DA400;
  if (!qword_1006DA400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F864()
{
  v2 = qword_1006DA408;
  if (!qword_1006DA408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F8F8()
{
  v2 = qword_1006DA410;
  if (!qword_1006DA410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038F98C()
{
  v2 = qword_1006DA418;
  if (!qword_1006DA418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FA20()
{
  v2 = qword_1006DA420;
  if (!qword_1006DA420)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FAB4()
{
  v2 = qword_1006DA428;
  if (!qword_1006DA428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FB44()
{
  v2 = qword_1006DB550;
  if (!qword_1006DB550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FBD8()
{
  v2 = qword_1006DA430;
  if (!qword_1006DA430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FC6C()
{
  v2 = qword_1006DA438;
  if (!qword_1006DA438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FD00()
{
  v2 = qword_1006DA440;
  if (!qword_1006DA440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FDAC()
{
  v2 = qword_1006DA448;
  if (!qword_1006DA448)
  {
    sub_10025CAA4(&unk_1006D6FF0);
    sub_10027D1BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FE5C()
{
  v2 = qword_1006DA450;
  if (!qword_1006DA450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FEF0()
{
  v2 = qword_1006DA458;
  if (!qword_1006DA458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10038FF84()
{
  v2 = qword_1006DA460;
  if (!qword_1006DA460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100390030()
{
  v2 = qword_1006DA468;
  if (!qword_1006DA468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003900C4()
{
  v2 = qword_1006DA470;
  if (!qword_1006DA470)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100390170()
{
  v2 = qword_1006DA478;
  if (!qword_1006DA478)
  {
    sub_10025CAA4(&qword_1006DA480);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100390210()
{
  v2 = qword_1006DA488;
  if (!qword_1006DA488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA488);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003902BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 128))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1003903FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_100390624()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F00D8);
  sub_1000208F4(v1, qword_1006F00D8);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_100390680()
{
  if (qword_1006D5FA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F00D8);
}

uint64_t sub_1003906EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100390680();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100390750()
{
  v1 = sub_10025C9B0(&qword_1006DA490);
  sub_10002094C(v1, qword_1006F00F0);
  sub_1000208F4(v1, qword_1006F00F0);
  type metadata accessor for MailMessageQueryComparator();
  sub_1002B9DE4();
  return EntityQueryProperties.init(properties:)();
}

uint64_t sub_1003907F0()
{
  sub_10025C9B0(&qword_1006DA4E0);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  sub_1002B9DE4();
  v2 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA4E8);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v3 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA4F0);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v4 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA4F8);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v5 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10025C9B0(&qword_1006DA500);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  type metadata accessor for MailMessageQueryComparator();
  v6 = static EntityQueryPropertiesBuilder.buildBlock(_:)();

  return v6;
}

_BYTE *sub_100390AB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_10035FC50();
  result = __dst;
  *a2 = v2;
  sub_1003816C8();
  return result;
}

uint64_t sub_100390B1C()
{
  v3[1] = 0;
  v3[2] = sub_100390D2C;
  v15 = 0;
  v13 = sub_10025C9B0(&qword_1006DA540);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v3[0] = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = v3 - v3[0];
  v15 = v3 - v3[0];
  sub_10025C9B0(&qword_1006DA548);
  v3[3] = EqualToComparator.__allocating_init(mappingTransform:)();
  v8 = sub_1002B9DE4();
  v5 = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v4 = _allocateUninitializedArray<A>(_:)();
  (*(v10 + 16))(v0, v12, v13);
  v1 = v4;
  sub_1002612B0();
  v9 = v1;
  v6 = sub_10025C9B0(&qword_1006DA2F0);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  sub_1003424B8();
  v14 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v10 + 8))(v12, v13);
  return v14;
}

uint64_t sub_100390D2C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  v4 = enum case for MailMessageQueryComparator.isRead(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a2, v4);
}

_BYTE *sub_100390DB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CCDCC();
  result = __dst;
  *a2 = v2;
  sub_1003816C8();
  return result;
}

uint64_t sub_100390E1C()
{
  v3[1] = 0;
  v3[2] = sub_10039102C;
  v15 = 0;
  v13 = sub_10025C9B0(&qword_1006DA530);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v3[0] = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = v3 - v3[0];
  v15 = v3 - v3[0];
  sub_10025C9B0(&qword_1006DA538);
  v3[3] = EqualToComparator.__allocating_init(mappingTransform:)();
  v8 = sub_1002B9DE4();
  v5 = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v4 = _allocateUninitializedArray<A>(_:)();
  (*(v10 + 16))(v0, v12, v13);
  v1 = v4;
  sub_1002612B0();
  v9 = v1;
  v6 = sub_10025C9B0(&qword_1006DA2E0);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  sub_100352270();
  v14 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v10 + 8))(v12, v13);
  return v14;
}

uint64_t sub_10039102C@<X0>(uint64_t *a1@<X8>)
{
  v6 = sub_10034F07C();
  v7 = v1;
  v2 = sub_10034F2C8();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v2;
  a1[3] = v3;
  v8 = enum case for MailMessageQueryComparator.senderEquals(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a1, v8);
}

_BYTE *sub_10039111C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CCBC4();
  result = __dst;
  *a2 = v2;
  sub_1003816C8();
  return result;
}

uint64_t sub_100391184()
{
  v5 = 0;
  v6 = sub_1003913A8;
  v20 = 0;
  v18 = sub_10025C9B0(&qword_1006DA520);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v4 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v17 = &v3 - v4;
  v20 = &v3 - v4;
  sub_10025C9B0(&qword_1006DA528);
  v7 = EqualToComparator.__allocating_init(mappingTransform:)();
  v13 = sub_1002B9DE4();
  v9 = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v8 = _allocateUninitializedArray<A>(_:)();
  (*(v15 + 16))(v0, v17, v18);
  v1 = v8;
  sub_1002612B0();
  v14 = v1;
  v10 = sub_10025C9B0(&unk_1006DA2D0);
  v11 = sub_10025C9B0(&unk_1006D7340);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  sub_10028DF54();
  v19 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v15 + 8))(v17, v18);
  return v19;
}

uint64_t sub_1003913A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v6 = enum case for MailMessageQueryComparator.subject(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a2, v6);
}

_BYTE *sub_10039144C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CD180();
  result = __dst;
  *a2 = v2;
  sub_1003816C8();
  return result;
}

uint64_t sub_1003914B4()
{
  v3[1] = 0;
  v3[2] = sub_1003916D4;
  v17 = 0;
  v15 = sub_10025C9B0(&qword_1006DA508);
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v3[0] = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v14 = v3 - v3[0];
  v17 = v3 - v3[0];
  sub_10025C9B0(&qword_1006DA510);
  v3[3] = IsBetweenComparator.__allocating_init(mappingTransform:)();
  v10 = sub_1002B9DE4();
  v6 = &unk_10065BD90;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  v4 = _allocateUninitializedArray<A>(_:)();
  (*(v12 + 16))(v0, v14, v15);
  v1 = v4;
  sub_1002612B0();
  v11 = v1;
  v7 = sub_10025C9B0(&qword_1006DA2E8);
  v5 = 0;
  v8 = type metadata accessor for Date();
  Comparator = type metadata accessor for MailMessageQueryComparator();
  sub_100341FD8();
  v16 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v12 + 8))(v14, v15);
  return v16;
}

uint64_t sub_1003916D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_10025C9B0(&qword_1006DA518) + 48);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 16);
  v9(a3, a1);
  (v9)(a3 + v6, a2, v8);
  v10 = enum case for MailMessageQueryComparator.withinDateRange(_:);
  Comparator = type metadata accessor for MailMessageQueryComparator();
  return (*(*(Comparator - 8) + 104))(a3, v10);
}

uint64_t sub_1003917E8()
{
  if (qword_1006D5FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_10025C9B0(&qword_1006DA490);
  return sub_1000208F4(v0, qword_1006F00F0);
}

uint64_t sub_100391860@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003917E8();
  v1 = sub_10025C9B0(&qword_1006DA490);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003918D0()
{
  v1 = sub_10025C9B0(&qword_1006DA498);
  sub_10002094C(v1, qword_1006F0108);
  sub_1000208F4(v1, qword_1006F0108);
  sub_1002B9DE4();
  return EntityQuerySortingOptions.init(content:)();
}

uint64_t sub_100391960()
{
  v20 = 0;
  v16 = sub_10025C9B0(&qword_1006DA4D0);
  v9 = *(v16 - 8);
  v10 = v16 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v8 = &v4 - v5;
  v6 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v20 = &v4 - v6;
  KeyPath = swift_getKeyPath();
  v13 = sub_1002B9DE4();
  sub_1003947B8();
  EntityQuerySortableByProperty.init<A>(_:)();
  v12 = &unk_10065BD90;
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v18 = *(v9 + 8);
  v17 = v9 + 8;
  v18(v8, v16);
  v11 = _allocateUninitializedArray<A>(_:)();
  (*(v9 + 16))(v1, v15, v16);
  v2 = v11;
  sub_1002612B0();
  v14 = v2;
  v19 = static EntityQuerySortingOptionsBuilder.buildBlock(_:)();

  v18(v15, v16);
  return v19;
}

_BYTE *sub_100391B40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1003814E0(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CD318();
  result = __dst;
  *a2 = v2;
  sub_1003816C8();
  return result;
}

uint64_t sub_100391BA8()
{
  if (qword_1006D5FB8 != -1)
  {
    swift_once();
  }

  v0 = sub_10025C9B0(&qword_1006DA498);
  return sub_1000208F4(v0, qword_1006F0108);
}

uint64_t sub_100391C20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100391BA8();
  v1 = sub_10025C9B0(&qword_1006DA498);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100391C90(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a1;
  *(v5 + 48) = v5;
  *(v5 + 56) = 0;
  *(v5 + 192) = 0;
  *(v5 + 64) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 72) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 56) = a1;
  *(v5 + 192) = a2 & 1;
  *(v5 + 64) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5 & 1;

  return _swift_task_switch(sub_100391E28, 0);
}

uint64_t sub_100391E28()
{
  v33 = v0;
  v1 = v0[14];
  v16 = v0[12];
  v17 = v0[11];
  v0[6] = v0;
  v18 = Array<A>.mailMessageQuery.getter();
  v19 = v2;
  v0[15] = v2;
  v0[2] = v18;
  v0[3] = v2;
  v3 = sub_100390680();
  v4 = *(v16 + 16);
  v0[16] = v4;
  v0[17] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v1, v3, v17);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100392E00;
  *(v21 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10026EE84;
  *(v24 + 24) = v21;
  v0[18] = sub_10025C9B0(&unk_1006D7720);
  _allocateUninitializedArray<A>(_:)();
  v25 = v5;

  *v25 = sub_10026434C;
  v25[1] = v22;

  v25[2] = sub_10026434C;
  v25[3] = v23;

  v25[4] = sub_10026EF2C;
  v25[5] = v24;
  sub_1002612B0();

  if (os_log_type_enabled(v26, v27))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v13 = sub_1002641E8(0);
    v14 = sub_1002641E8(1);
    v28 = buf;
    v29 = v13;
    v30 = v14;
    sub_10026423C(2, &v28);
    sub_10026423C(1, &v28);
    v31 = sub_10026434C;
    v32 = v22;
    sub_100264250(&v31, &v28, &v29, &v30);
    v31 = sub_10026434C;
    v32 = v23;
    sub_100264250(&v31, &v28, &v29, &v30);
    v31 = sub_10026EF2C;
    v32 = v24;
    sub_100264250(&v31, &v28, &v29, &v30);
    _os_log_impl(&_mh_execute_header, v26, v27, "#SiriMail MailMessageQuery.entities(matching comparators:) executing query: %s", buf, 0xCu);
    sub_10026429C(v13);
    sub_10026429C(v14);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v15[14];
  v11 = v15[11];
  v9 = v15[12];
  _objc_release(v26);
  v6 = *(v9 + 8);
  v15[19] = v6;
  v15[20] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v10, v11);
  v7 = swift_task_alloc();
  v15[21] = v7;
  *v7 = v15[6];
  v7[1] = sub_100392504;

  return sub_1002B8ACC(v18, v19, 0, 0);
}

uint64_t sub_100392504(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[22] = a1;
  v5[23] = v1;

  if (v1)
  {
    v3 = sub_100392D18;
  }

  else
  {
    v3 = sub_100392674;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_100392674()
{
  v31 = v0;
  v17 = v0[22];
  v16 = v0[16];
  v1 = v0[13];
  v15 = v0[11];
  v0[6] = v0;
  v0[9] = v17;
  v2 = sub_100390680();
  v16(v1, v2, v15);

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1003944A0;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10026E818;
  *(v22 + 24) = v19;
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = sub_10026434C;
  v23[1] = v20;

  v23[2] = sub_10026434C;
  v23[3] = v21;

  v23[4] = sub_10026EBF8;
  v23[5] = v22;
  sub_1002612B0();

  if (os_log_type_enabled(v24, v25))
  {
    v4 = v14[23];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v12 = sub_1002641E8(0);
    v13 = sub_1002641E8(0);
    v26 = buf;
    v27 = v12;
    v28 = v13;
    sub_10026423C(0, &v26);
    sub_10026423C(1, &v26);
    v29 = sub_10026434C;
    v30 = v20;
    sub_100264250(&v29, &v26, &v27, &v28);
    if (v4)
    {
    }

    v29 = sub_10026434C;
    v30 = v21;
    sub_100264250(&v29, &v26, &v27, &v28);
    v29 = sub_10026EBF8;
    v30 = v22;
    sub_100264250(&v29, &v26, &v27, &v28);
    _os_log_impl(&_mh_execute_header, v24, v25, "#SiriMail MailMessageQuery.entities(matching comparators:) returning %ld results", buf, 0xCu);
    sub_10026429C(v12);
    sub_10026429C(v13);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v14[19];
  v10 = v14[13];
  v8 = v14[11];
  _objc_release(v24);
  v9(v10, v8);

  v6 = *(v14[6] + 8);
  v7 = v14[22];

  return v6(v7);
}

uint64_t sub_100392D18()
{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_100392E2C(uint64_t a1)
{
  v1[16] = a1;
  v1[11] = v1;
  v1[12] = 0;
  v1[13] = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[9] = 0;
  v1[10] = 0;
  v2 = type metadata accessor for Logger();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v6;
  v1[22] = v3;

  return _swift_task_switch(sub_100392F78, v6);
}

uint64_t sub_100392F78()
{
  v36 = v0;
  v28 = v0[16];
  v0[11] = v0;
  v0[13] = _allocateUninitializedArray<A>(_:)();

  v0[14] = v28;
  sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  sub_10025C9B0(&qword_1006D7F98);
  IndexingIterator.next()();
  v29 = v0[7];
  v30 = v0[8];
  v0[23] = v30;
  if (v30)
  {
    v27[9] = v29;
    v27[10] = v30;
    type metadata accessor for CSQueryBuilder();
    CSQueryBuilder.__allocating_init()();
    String.mailMessageID.getter();
    dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

    v26 = dispatch thunk of CSQueryBuilder.build()();
    v25 = v1;
    v27[24] = v1;

    v2 = swift_task_alloc();
    v27[25] = v2;
    *v2 = v27[11];
    v2[1] = sub_10039375C;

    return sub_1002B8ACC(v26, v25, 0, 0);
  }

  else
  {
    v4 = v27[19];
    v15 = v27[17];
    v14 = v27[18];
    sub_100264880();
    v5 = sub_100390680();
    (*(v14 + 16))(v4, v5, v15);
    v16 = v27[13];

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1003944A8;
    *(v18 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_10026E818;
    *(v21 + 24) = v18;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v22 = v6;

    *v22 = sub_10026434C;
    v22[1] = v19;

    v22[2] = sub_10026434C;
    v22[3] = v20;

    v22[4] = sub_10026EBF8;
    v22[5] = v21;
    sub_1002612B0();

    if (os_log_type_enabled(v23, v24))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v12 = sub_1002641E8(0);
      v13 = sub_1002641E8(0);
      v31 = buf;
      v32 = v12;
      v33 = v13;
      sub_10026423C(0, &v31);
      sub_10026423C(1, &v31);
      v34 = sub_10026434C;
      v35 = v19;
      sub_100264250(&v34, &v31, &v32, &v33);
      v34 = sub_10026434C;
      v35 = v20;
      sub_100264250(&v34, &v31, &v32, &v33);
      v34 = sub_10026EBF8;
      v35 = v21;
      sub_100264250(&v34, &v31, &v32, &v33);
      _os_log_impl(&_mh_execute_header, v23, v24, "#SiriMail MailMessageQuery.entities(for identifiers:) returning %ld search results", buf, 0xCu);
      sub_10026429C(v12);
      sub_10026429C(v13);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v10 = v27[19];
    v9 = v27[17];
    v8 = v27[18];
    _objc_release(v23);
    (*(v8 + 8))(v10, v9);
    swift_beginAccess();
    swift_endAccess();
    sub_100264880();

    v7 = *(v27[11] + 8);

    return v7(v16);
  }
}

uint64_t sub_10039375C(uint64_t a1)
{
  v6 = *v2;
  v6[11] = *v2;
  v6[26] = a1;
  v6[27] = v1;

  if (v1)
  {
    v3 = v6[21];
    v4 = sub_1003940C8;
  }

  else
  {

    v3 = v6[21];
    v4 = sub_1003938E8;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1003938E8()
{
  v37 = v0;
  v1 = v0[26];
  v0[11] = v0;
  v0[15] = v1;
  sub_10025C9B0(&qword_1006DA4A0);
  sub_1003944B0();
  Array.append<A>(contentsOf:)();

  v29 = v0[27];
  sub_10025C9B0(&qword_1006D7F98);
  IndexingIterator.next()();
  v30 = v0[7];
  v31 = v0[8];
  v0[23] = v31;
  if (v31)
  {
    v28[9] = v30;
    v28[10] = v31;
    type metadata accessor for CSQueryBuilder();
    CSQueryBuilder.__allocating_init()();
    String.mailMessageID.getter();
    dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

    v27 = dispatch thunk of CSQueryBuilder.build()();
    v26 = v2;
    v28[24] = v2;

    v3 = swift_task_alloc();
    v28[25] = v3;
    *v3 = v28[11];
    v3[1] = sub_10039375C;

    return sub_1002B8ACC(v27, v26, 0, 0);
  }

  else
  {
    v5 = v28[19];
    v16 = v28[17];
    v15 = v28[18];
    sub_100264880();
    v6 = sub_100390680();
    (*(v15 + 16))(v5, v6, v16);
    v17 = v28[13];

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1003944A8;
    *(v19 + 24) = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10026E818;
    *(v22 + 24) = v19;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v23 = v7;

    *v23 = sub_10026434C;
    v23[1] = v20;

    v23[2] = sub_10026434C;
    v23[3] = v21;

    v23[4] = sub_10026EBF8;
    v23[5] = v22;
    sub_1002612B0();

    if (os_log_type_enabled(v24, v25))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v13 = sub_1002641E8(0);
      v14 = sub_1002641E8(0);
      v32 = buf;
      v33 = v13;
      v34 = v14;
      sub_10026423C(0, &v32);
      sub_10026423C(1, &v32);
      v35 = sub_10026434C;
      v36 = v20;
      sub_100264250(&v35, &v32, &v33, &v34);
      if (v29)
      {
      }

      v35 = sub_10026434C;
      v36 = v21;
      sub_100264250(&v35, &v32, &v33, &v34);
      v35 = sub_10026EBF8;
      v36 = v22;
      sub_100264250(&v35, &v32, &v33, &v34);
      _os_log_impl(&_mh_execute_header, v24, v25, "#SiriMail MailMessageQuery.entities(for identifiers:) returning %ld search results", buf, 0xCu);
      sub_10026429C(v13);
      sub_10026429C(v14);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v11 = v28[19];
    v10 = v28[17];
    v9 = v28[18];
    _objc_release(v24);
    (*(v9 + 8))(v11, v10);
    swift_beginAccess();
    swift_endAccess();
    sub_100264880();

    v8 = *(v28[11] + 8);

    return v8(v17);
  }
}

uint64_t sub_1003940C8()
{
  *(v0 + 88) = v0;

  sub_100264880();
  sub_100264880();

  v1 = *(*(v3 + 88) + 8);

  return v1();
}

uint64_t sub_1003941A8()
{

  v1 = Array.count.getter();

  return v1;
}

uint64_t sub_100394244(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = v6;
  *(v6 + 24) = a1;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v9 + 32) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_1002603BC;

  return sub_100391C90(a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_100394324(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_100392E2C(a1);
}

uint64_t sub_1003943D8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_10038340C();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_1003944B0()
{
  v2 = qword_1006DA4A8;
  if (!qword_1006DA4A8)
  {
    sub_10025CAA4(&qword_1006DA4A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100394550()
{
  v2 = qword_1006DA4B0;
  if (!qword_1006DA4B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003945E4()
{
  v2 = qword_1006DA4B8;
  if (!qword_1006DA4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100394678()
{
  v2 = qword_1006DA4C0;
  if (!qword_1006DA4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10039470C()
{
  v2 = qword_1006DA4C8;
  if (!qword_1006DA4C8)
  {
    sub_10025CAA4(&qword_1006DA4A0);
    sub_10038360C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003947B8()
{
  v2 = qword_1006DA4D8;
  if (!qword_1006DA4D8)
  {
    sub_10025CAA4(&qword_1006DA2E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MailRecategorizationCellHeaderView.title.getter()
{
  v4 = *(v0 + OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel);
  _objc_retain(v4);
  v5 = [v4 text];
  if (v5)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v5);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  _objc_release(v4);
  return v3;
}

uint64_t MailRecategorizationCellHeaderView.title.setter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel);
  _objc_retain(v6);

  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();

    [v6 setText:v5];
  }

  else
  {
    [v6 setText:0];
  }

  _objc_release(v4);
  _objc_release(v6);
}

uint64_t (*MailRecategorizationCellHeaderView.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MailRecategorizationCellHeaderView.title.getter();
  a1[1] = v2;
  return sub_100394C48;
}

uint64_t sub_100394C48(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MailRecategorizationCellHeaderView.title.setter(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  MailRecategorizationCellHeaderView.title.setter(v3, v4);
  result = a1;
  sub_100268744();
  return result;
}

void *sub_100394CC4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel);
  _objc_retain(v2);
  return v2;
}

id sub_100394D0C(double a1, double a2, double a3, double a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  ObjectType = swift_getObjectType();
  v12 = v8;
  v13 = v9;
  v14 = v4;
  v6 = OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel;
  sub_100264928();
  *&v4[v6] = sub_10025C704();
  v11.receiver = v14;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, "initWithFrame:", v8, v9);
  _objc_retain(v10);
  v14 = v10;
  sub_100394E34();
  _objc_release(v14);
  return v10;
}

void sub_100394E34()
{
  v4 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v4);
  v3 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor:?];
  _objc_release(v3);
  _objc_release(v4);
  v7 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v7);
  v5 = objc_opt_self();
  _objc_retain(UIFontTextStyleFootnote);
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  _objc_release(UIFontTextStyleFootnote);
  [v7 setFont:v6];
  _objc_release(v6);
  _objc_release(v7);
  v8 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v8);
  LODWORD(v1) = 1132068864;
  [v8 setContentHuggingPriority:v1 forAxis:?];
  _objc_release(v8);
  v9 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v9);
  [v9 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v9);
  v10 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v10);
  [v10 setNumberOfLines:0];
  _objc_release(v10);
  v11 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v11);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v11);
  v12 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v12);
  [v0 addSubview:v12];
  _objc_release(v12);
  _objc_retain(v0);
  [v0 directionalLayoutMargins];
  v13 = v2;
  _objc_release(v0);
  _objc_retain(v0);
  [v0 setDirectionalLayoutMargins:{6.0, 20.0, 6.0, v13}];
  _objc_release(v0);
  v15 = *&v0[OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel];
  _objc_retain(v15);
  [v15 mf_pinToView:v14 usingLayoutMargins:1];
  _objc_release(v15);
}

void sub_100395264()
{
  v0 = OBJC_IVAR____TtC10MobileMail34MailRecategorizationCellHeaderView_titleLabel;
  sub_100264928();
  *v0 = sub_10025C704();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003953F0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DA580);
  sub_1000208F4(v1, qword_1006DA580);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.email", 0xFuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailboxActivityObserver", 0x17uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100395494()
{
  if (qword_1006D5FC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DA580);
}

void *sub_100395500()
{
  v2 = *(v0 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100395548()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1003955B0()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100395630()
{
  v2 = *(v0 + OBJC_IVAR___MailStatusMailboxActivityObserver_underlying);

  return v2;
}

id sub_100395670(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1];
  swift_unknownObjectRelease();
  return v2;
}

char *sub_1003956C0(uint64_t a1)
{
  v23 = a1;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v20 = 0;
  v6 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = &v6 - v6;
  v7 = (*(*(type metadata accessor for OS_dispatch_queue_serial.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v11 = &v6 - v7;
  v8 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v23);
  v10 = &v6 - v8;
  v28 = v2;
  v29 = v1;
  v14 = &qword_1006DA000;
  v17 = 0;
  swift_unknownObjectWeakInit();
  sub_1003959C4();
  v16 = 33;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailStatusMailboxActivityObserver", 0x21uLL, 1);
  static DispatchQoS.utility.getter();
  sub_100395A28();
  sub_100395AC8(v12);
  v22 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = v22;
  v13 = v29;
  _objc_retain(v22);
  *&v13[OBJC_IVAR___MailStatusMailboxActivityObserver_queue] = v22;
  v15 = v29;
  swift_unknownObjectRetain();
  v18 = &v15[v14[180]];
  v19 = &v26;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v21 = v29;
  _s16ActivityObserverCMa();
  _objc_retain(v22);
  v3 = sub_100395B5C(v22);
  v4 = v22;
  *&v21[OBJC_IVAR___MailStatusMailboxActivityObserver_underlying] = v3;
  _objc_release(v4);
  v25.receiver = v29;
  v25.super_class = MailStatusMailboxActivityObserver;
  v24 = objc_msgSendSuper2(&v25, "init");
  _objc_retain(v24);
  v29 = v24;
  swift_unknownObjectRelease();
  _objc_release(v29);
  return v24;
}

unint64_t sub_1003959C4()
{
  v2 = qword_1006DA5B0;
  if (!qword_1006DA5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DA5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100395A28()
{
  sub_1003A0478(0);
  type metadata accessor for OS_dispatch_queue_serial.Attributes();
  sub_1003A0BC0();
  sub_10025C9B0(&qword_1006DA738);
  sub_1003A0C40();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100395AC8@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void sub_100395BEC()
{
  v6 = sub_10039C5DC;
  v25 = 0;
  v7 = 0;
  v11 = type metadata accessor for DispatchQoS();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v3 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = &v3 - v3;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v4 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v15 = &v3 - v4;
  v25 = v0;
  v17 = *(v0 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v17);
  static DispatchWorkItemFlags.detached.getter();
  _objc_retain(v5);
  v1 = swift_allocObject();
  v2 = v6;
  *(v1 + 16) = v5;
  v23 = v2;
  v24 = v1;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = 0;
  v21 = sub_1002AEFF8;
  v22 = &unk_10065C358;
  v12 = _Block_copy(&aBlock);
  sub_100274F94();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v8 + 8))(v10, v11);
  _Block_release(v12);

  (*(v13 + 8))(v15, v16);
  _objc_release(v17);
}

uint64_t sub_100395E5C()
{

  sub_100395EB0();
}

void sub_100395EB0()
{
  v36 = 0;
  v52 = 0;
  v35 = 0;
  v37 = type metadata accessor for Logger();
  v38 = *(v37 - 8);
  v39 = v38;
  __chkstk_darwin(0);
  v40 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchPredicate();
  v41 = *(v44 - 8);
  v43 = v41;
  __chkstk_darwin(v44 - 8);
  v45 = (v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = v0;

  v42 = *(v0 + 64);
  v3 = v42;
  v4 = v43;
  *v45 = v42;
  (*(v4 + 104))();
  v46 = _dispatchPreconditionTest(_:)();
  (*(v43 + 8))(v45, v44);
  if (v46)
  {
    v5 = v40;

    v6 = sub_100395494();
    (*(v39 + 16))(v5, v6, v37);
    v32 = Logger.logObject.getter();
    v29 = v32;
    v31 = static os_log_type_t.default.getter();
    v30 = v31;
    sub_10025C9B0(&unk_1006D7720);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v32, v31))
    {
      v7 = v35;
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = v20;
      v17 = sub_10025C9B0(&qword_1006D7290);
      v18 = 0;
      v21 = sub_1002641E8(0);
      v19 = v21;
      v22 = sub_1002641E8(v18);
      v50 = v20;
      v49 = v21;
      v48 = v22;
      v23 = 0;
      v24 = &v50;
      sub_10026423C(0, &v50);
      sub_10026423C(v23, v24);
      v47 = v33;
      v25 = v10;
      __chkstk_darwin(v10);
      v26 = &v10[-6];
      v10[-4] = v8;
      v10[-3] = &v49;
      v10[-2] = &v48;
      v27 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v28 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v29, v30, "ActivityObserver.tearDown()", v16, 2u);
        v14 = 0;
        sub_10026429C(v19);
        sub_10026429C(v22);
        UnsafeMutablePointer.deallocate()();

        v15 = v28;
      }
    }

    else
    {

      v15 = v35;
    }

    (*(v39 + 8))(v40, v37);
    v10[1] = v34 + 48;
    v12 = &v51;
    v11 = 0;
    swift_beginAccess();
    *(v34 + 56) = v11;
    swift_unknownObjectWeakAssign();
    swift_endAccess();
    v13 = *(v34 + 72);
    v9 = v13;
    ActivityStateObserver.tearDown()();
  }

  else
  {
    __break(1u);
  }
}

void sub_100396468(void *a1)
{
  v11 = a1;
  v10 = sub_1003A01A0;
  v31 = 0;
  v30 = 0;
  v12 = 0;
  v16 = type metadata accessor for DispatchQoS();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v7 - v7;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v11);
  v20 = &v7 - v8;
  v31 = v2;
  v30 = v1;
  v22 = *(v1 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v22);
  static DispatchWorkItemFlags.detached.getter();
  _objc_retain(v9);
  _objc_retain(v11);
  v3 = swift_allocObject();
  v4 = v10;
  v5 = v3;
  v6 = v11;
  *(v5 + 16) = v9;
  *(v5 + 24) = v6;
  v28 = v4;
  v29 = v5;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1002AEFF8;
  v27 = &unk_10065C3A8;
  v17 = _Block_copy(&aBlock);
  sub_100274F94();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v13 + 8))(v15, v16);
  _Block_release(v17);

  (*(v18 + 8))(v20, v21);
  _objc_release(v22);
}

uint64_t sub_100396704(void *a1, uint64_t a2)
{

  _objc_retain(a1);
  sub_100396790(a2, a1, &off_10065CB28);
  swift_unknownObjectRelease();
}

void sub_100396790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v47 = a2;
  v46 = a1;
  v40 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v39 = 0;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = v42;
  __chkstk_darwin(0);
  v44 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchPredicate();
  v48 = *(v51 - 8);
  v50 = v48;
  v5 = __chkstk_darwin(v46);
  v52 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v5;
  v60 = v7;
  v61 = v8;
  v59 = v3;

  v49 = *(v3 + 64);
  v9 = v49;
  v10 = v50;
  *v52 = v49;
  (*(v10 + 104))();
  v53 = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v52, v51);
  if (v53)
  {
    v11 = v44;

    v12 = sub_100395494();
    (*(v43 + 16))(v11, v12, v41);
    v36 = Logger.logObject.getter();
    v33 = v36;
    v35 = static os_log_type_t.default.getter();
    v34 = v35;
    sub_10025C9B0(&unk_1006D7720);
    v37 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v36, v35))
    {
      v13 = v39;
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = v24;
      v21 = sub_10025C9B0(&qword_1006D7290);
      v22 = 0;
      v25 = sub_1002641E8(0);
      v23 = v25;
      v26 = sub_1002641E8(v22);
      v57 = v24;
      v56 = v25;
      v55 = v26;
      v27 = 0;
      v28 = &v57;
      sub_10026423C(0, &v57);
      sub_10026423C(v27, v28);
      v54 = v37;
      v29 = v16;
      __chkstk_darwin(v16);
      v30 = &v16[-6];
      v16[-4] = v14;
      v16[-3] = &v56;
      v16[-2] = &v55;
      v31 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v32 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v33, v34, "ActivityObserver.start()", v20, 2u);
        v18 = 0;
        sub_10026429C(v23);
        sub_10026429C(v26);
        UnsafeMutablePointer.deallocate()();

        v19 = v32;
      }
    }

    else
    {

      v19 = v39;
    }

    (*(v43 + 8))(v44, v41);
    swift_unknownObjectRetain();
    v16[0] = v38 + 48;
    v16[1] = &v58;
    swift_beginAccess();
    *(v38 + 56) = v45;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_endAccess();
    v17 = *(v38 + 72);
    v15 = v17;

    sub_1003A0210();
    ActivityStateObserver.start(registry:delegate:)();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_100396E10(uint64_t a1, uint64_t a2)
{
  v180 = a1;
  v171 = a2;
  v149 = sub_100278D34;
  v150 = sub_1003A0388;
  v151 = sub_10026EE84;
  v152 = sub_10025E604;
  v153 = sub_100264354;
  v154 = sub_10026434C;
  v155 = sub_10026434C;
  v156 = sub_10026EF2C;
  v157 = sub_10026434C;
  v158 = sub_10026434C;
  v159 = sub_1002644E4;
  v160 = sub_1003A0318;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v181 = v202;
  v202[0] = 0;
  v202[1] = 0;
  v193 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v183 = 0;
  v172 = 0;
  v161 = type metadata accessor for DispatchQoS();
  v162 = *(v161 - 8);
  v163 = v161 - 8;
  v164 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v165 = &v37 - v164;
  v166 = type metadata accessor for DispatchWorkItemFlags();
  v167 = *(v166 - 8);
  v168 = v166 - 8;
  v169 = (*(v167 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v172);
  v170 = &v37 - v169;
  v173 = type metadata accessor for Logger();
  v174 = *(v173 - 8);
  v175 = v173 - 8;
  v176 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v172);
  v177 = &v37 - v176;
  v206 = v3;
  v205 = v4;
  v204 = v2;
  v178 = sub_100365480();
  v179 = sub_1003654E4();
  v203 = Set.init()();

  v201 = v180;
  v182 = sub_10025C9B0(&qword_1006D9D90);
  sub_1003A0290();
  Collection<>.makeIterator()();
  for (i = v183; ; i = v42)
  {
    v146 = i;
    sub_10025C9B0(&qword_1006DA5C8);
    IndexingIterator.next()();
    v147 = v209;
    if (!v209)
    {
      break;
    }

    v145 = v147;
    v143 = v147;
    v193 = v147;
    _objc_retain(v147);
    objc_opt_self();
    v144 = swift_dynamicCastObjCClass();
    if (v144)
    {
      v142 = v144;
    }

    else
    {
      _objc_release(v143);
      v142 = 0;
    }

    v141 = v142;
    if (v142)
    {
      v140 = v141;
      v135 = v141;
      v191 = v141;
      v136 = &v190;
      v190 = 0;
      v137 = [v141 mailboxScope];
      v138 = [v137 allMailboxObjectIDsWithMailboxTypeResolver:v171 forExclusion:v136];
      _objc_release(v137);
      v139 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v189 = v139;
      _objc_release(v138);
      if (v190)
      {
        v5 = v177;
        v6 = sub_100395494();
        (*(v174 + 16))(v5, v6, v173);

        v115 = 24;
        v121 = 7;
        v114 = swift_allocObject();
        *(v114 + 16) = v139;

        v120 = 32;
        v7 = swift_allocObject();
        v8 = v114;
        v116 = v7;
        *(v7 + 16) = v149;
        *(v7 + 24) = v8;

        _objc_retain(v135);
        v122 = swift_allocObject();
        *(v122 + 16) = v135;
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.error.getter();
        v118 = 17;
        v124 = swift_allocObject();
        *(v124 + 16) = 32;
        v125 = swift_allocObject();
        v119 = 8;
        *(v125 + 16) = 8;
        v9 = swift_allocObject();
        v10 = v116;
        v117 = v9;
        *(v9 + 16) = v150;
        *(v9 + 24) = v10;
        v11 = swift_allocObject();
        v12 = v117;
        v126 = v11;
        *(v11 + 16) = v151;
        *(v11 + 24) = v12;
        v127 = swift_allocObject();
        *(v127 + 16) = 64;
        v128 = swift_allocObject();
        *(v128 + 16) = v119;
        v13 = swift_allocObject();
        v14 = v122;
        v123 = v13;
        *(v13 + 16) = v152;
        *(v13 + 24) = v14;
        v15 = swift_allocObject();
        v16 = v123;
        v130 = v15;
        *(v15 + 16) = v153;
        *(v15 + 24) = v16;
        v132 = sub_10025C9B0(&unk_1006D7720);
        v129 = _allocateUninitializedArray<A>(_:)();
        v131 = v17;

        v18 = v124;
        v19 = v131;
        *v131 = v154;
        v19[1] = v18;

        v20 = v125;
        v21 = v131;
        v131[2] = v155;
        v21[3] = v20;

        v22 = v126;
        v23 = v131;
        v131[4] = v156;
        v23[5] = v22;

        v24 = v127;
        v25 = v131;
        v131[6] = v157;
        v25[7] = v24;

        v26 = v128;
        v27 = v131;
        v131[8] = v158;
        v27[9] = v26;

        v28 = v130;
        v29 = v131;
        v131[10] = v159;
        v29[11] = v28;
        sub_1002612B0();

        if (os_log_type_enabled(v133, v134))
        {
          v30 = v146;
          v100 = static UnsafeMutablePointer.allocate(capacity:)();
          v98 = sub_10025C9B0(&qword_1006D7290);
          v99 = 1;
          v101 = sub_1002641E8(1);
          v102 = sub_1002641E8(v99);
          v104 = &v187;
          v187 = v100;
          v105 = &v208;
          v208 = v101;
          v106 = &v207;
          v207 = v102;
          v103 = 2;
          sub_10026423C(2, &v187);
          sub_10026423C(v103, v104);
          v185 = v154;
          v186 = v124;
          sub_100264250(&v185, v104, v105, v106);
          v107 = v30;
          v108 = v124;
          v109 = v125;
          v110 = v126;
          v111 = v127;
          v112 = v128;
          v113 = v130;
          if (v30)
          {
            v91 = v108;
            v92 = v109;
            v93 = v110;
            v94 = v111;
            v95 = v112;
            v96 = v113;
            v54 = v113;
            v53 = v112;
            v52 = v111;
            v51 = v110;
            v50 = v109;

            __break(1u);
          }

          else
          {
            v185 = v155;
            v186 = v125;
            sub_100264250(&v185, &v187, &v208, &v207);
            v84 = 0;
            v85 = v124;
            v86 = v125;
            v87 = v126;
            v88 = v127;
            v89 = v128;
            v90 = v130;
            v185 = v156;
            v186 = v126;
            sub_100264250(&v185, &v187, &v208, &v207);
            v77 = 0;
            v78 = v124;
            v79 = v125;
            v80 = v126;
            v81 = v127;
            v82 = v128;
            v83 = v130;
            v185 = v157;
            v186 = v127;
            sub_100264250(&v185, &v187, &v208, &v207);
            v70 = 0;
            v71 = v124;
            v72 = v125;
            v73 = v126;
            v74 = v127;
            v75 = v128;
            v76 = v130;
            v185 = v158;
            v186 = v128;
            sub_100264250(&v185, &v187, &v208, &v207);
            v63 = 0;
            v64 = v124;
            v65 = v125;
            v66 = v126;
            v67 = v127;
            v68 = v128;
            v69 = v130;
            v185 = v159;
            v186 = v130;
            sub_100264250(&v185, &v187, &v208, &v207);
            v56 = 0;
            v57 = v124;
            v58 = v125;
            v59 = v126;
            v60 = v127;
            v61 = v128;
            v62 = v130;
            _os_log_impl(&_mh_execute_header, v133, v134, "Unexpectedly received exclusion mailboxes: %s for smart mailbox: %@", v100, 0x16u);
            v55 = 1;
            sub_10026429C(v101);
            sub_10026429C(v102);
            UnsafeMutablePointer.deallocate()();

            v97 = v56;
          }
        }

        else
        {
          v31 = v146;

          v97 = v31;
        }

        v48 = v97;
        _objc_release(v133);
        (*(v174 + 8))(v177, v173);
        v49 = v48;
      }

      else
      {

        v47 = &v188;
        v188 = v139;
        v46 = sub_10025C9B0(&qword_1006D9D70);
        sub_100365564();
        Set.formUnion<A>(_:)();
        v49 = v146;
      }

      v44 = v49;

      _objc_release(v135);
      v45 = v44;
    }

    else
    {
      v32 = [v143 objectID];
      v43 = v192;
      v192[0] = v32;
      sub_10025C9B0(&qword_1006D9D70);
      Set.insert(_:)();
      _objc_release(v192[1]);
      v45 = v146;
    }

    v42 = v45;
    _objc_release(v143);
  }

  sub_100264880();
  v40 = *(v148 + OBJC_IVAR___MailStatusMailboxActivityObserver_queue);
  _objc_retain(v40);
  static DispatchWorkItemFlags.detached.getter();
  v39 = *(v148 + OBJC_IVAR___MailStatusMailboxActivityObserver_underlying);

  v41 = &v203;
  v37 = v203;

  v33 = swift_allocObject();
  v34 = v37;
  v35 = v160;
  *(v33 + 16) = v39;
  *(v33 + 24) = v34;
  v199 = v35;
  v200 = v33;
  aBlock = _NSConcreteStackBlock;
  v195 = 1107296256;
  v196 = 0;
  v197 = sub_1002AEFF8;
  v198 = &unk_10065C3F8;
  v38 = _Block_copy(&aBlock);
  sub_100274F94();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v162 + 8))(v165, v161);
  _Block_release(v38);

  (*(v167 + 8))(v170, v166);
  _objc_release(v40);
  result = v41;
  sub_100264880();
  return result;
}

uint64_t sub_100398634(uint64_t a1)
{
  v113 = a1;
  v91 = sub_1003A0568;
  v92 = sub_10026E818;
  v93 = sub_1003A0568;
  v94 = sub_10026E818;
  v95 = sub_10026E824;
  v96 = sub_10026E818;
  v97 = sub_10026434C;
  v98 = sub_10026434C;
  v99 = sub_10026EBF8;
  v100 = sub_10026434C;
  v101 = sub_10026434C;
  v102 = sub_10026EBF8;
  v103 = sub_10026434C;
  v104 = sub_10026434C;
  v105 = sub_10026EBF8;
  v137 = 0;
  v136 = 0;
  v134 = 0;
  v132 = 0;
  v130 = 0;
  v127 = 0;
  v106 = 0;
  v107 = 0;
  v108 = type metadata accessor for Logger();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v112 = v40 - v111;
  v118 = type metadata accessor for DispatchPredicate();
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v114 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v113);
  v119 = (v40 - v114);
  v137 = v2;
  v136 = v1;

  v115 = *(v1 + 64);
  _objc_retain(v115);
  v3 = v116;
  *v119 = v115;
  (*(v3 + 104))();
  v120 = _dispatchPreconditionTest(_:)();
  (*(v116 + 8))(v119, v118);
  result = v120;
  if (v120)
  {
    v5 = v112;

    v49 = &v135;
    v72 = 32;
    v57 = 0;
    swift_beginAccess();
    v50 = *(v90 + 40);

    swift_endAccess();
    v59 = sub_100365480();
    v60 = sub_1003654E4();
    v62 = Set.subtracting(_:)();
    v134 = v62;

    v51 = &v133;
    swift_beginAccess();
    v52 = *(v90 + 40);

    swift_endAccess();
    v64 = Set.subtracting(_:)();

    v132 = v64;

    v54 = &v131;
    v131 = v64;
    v53 = sub_10025C9B0(&qword_1006D9D70);
    sub_100365564();
    v55 = Set.union<A>(_:)();
    v130 = v55;

    v56 = &v129;
    swift_beginAccess();
    *(v90 + 40) = v113;

    swift_endAccess();
    v58 = &v128;
    swift_beginAccess();
    v61 = *(v90 + 40);

    swift_endAccess();
    v65 = Set.count.getter();
    v127 = v65;

    v6 = sub_100395494();
    (*(v109 + 16))(v5, v6, v108);

    v63 = 24;
    v73 = 7;
    v66 = swift_allocObject();
    *(v66 + 16) = v62;

    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v74 = swift_allocObject();
    *(v74 + 16) = v65;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    v70 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    v77 = swift_allocObject();
    v71 = 8;
    *(v77 + 16) = 8;
    v7 = swift_allocObject();
    v8 = v66;
    v67 = v7;
    *(v7 + 16) = v91;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v67;
    v78 = v9;
    *(v9 + 16) = v92;
    *(v9 + 24) = v10;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v71;
    v11 = swift_allocObject();
    v12 = v68;
    v69 = v11;
    *(v11 + 16) = v93;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v69;
    v81 = v13;
    *(v13 + 16) = v94;
    *(v13 + 24) = v14;
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v71;
    v15 = swift_allocObject();
    v16 = v74;
    v75 = v15;
    *(v15 + 16) = v95;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v75;
    v85 = v17;
    *(v17 + 16) = v96;
    *(v17 + 24) = v18;
    v87 = sub_10025C9B0(&unk_1006D7720);
    v84 = _allocateUninitializedArray<A>(_:)();
    v86 = v19;

    v20 = v76;
    v21 = v86;
    *v86 = v97;
    v21[1] = v20;

    v22 = v77;
    v23 = v86;
    v86[2] = v98;
    v23[3] = v22;

    v24 = v78;
    v25 = v86;
    v86[4] = v99;
    v25[5] = v24;

    v26 = v79;
    v27 = v86;
    v86[6] = v100;
    v27[7] = v26;

    v28 = v80;
    v29 = v86;
    v86[8] = v101;
    v29[9] = v28;

    v30 = v81;
    v31 = v86;
    v86[10] = v102;
    v31[11] = v30;

    v32 = v82;
    v33 = v86;
    v86[12] = v103;
    v33[13] = v32;

    v34 = v83;
    v35 = v86;
    v86[14] = v104;
    v35[15] = v34;

    v36 = v85;
    v37 = v86;
    v86[16] = v105;
    v37[17] = v36;
    sub_1002612B0();

    if (os_log_type_enabled(v88, v89))
    {
      v38 = v106;
      v42 = static UnsafeMutablePointer.allocate(capacity:)();
      v40[10] = sub_10025C9B0(&qword_1006D7290);
      v41 = 0;
      v43 = sub_1002641E8(0);
      v44 = sub_1002641E8(v41);
      v45 = &v125;
      v125 = v42;
      v46 = &v124;
      v124 = v43;
      v47 = &v123;
      v123 = v44;
      sub_10026423C(0, &v125);
      sub_10026423C(3, v45);
      v121 = v97;
      v122 = v76;
      sub_100264250(&v121, v45, v46, v47);
      v48 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v121 = v98;
        v122 = v77;
        sub_100264250(&v121, &v125, &v124, &v123);
        v40[8] = 0;
        v121 = v99;
        v122 = v78;
        sub_100264250(&v121, &v125, &v124, &v123);
        v40[7] = 0;
        v121 = v100;
        v122 = v79;
        sub_100264250(&v121, &v125, &v124, &v123);
        v40[6] = 0;
        v121 = v101;
        v122 = v80;
        sub_100264250(&v121, &v125, &v124, &v123);
        v40[5] = 0;
        v121 = v102;
        v122 = v81;
        sub_100264250(&v121, &v125, &v124, &v123);
        v40[4] = 0;
        v121 = v103;
        v122 = v82;
        sub_100264250(&v121, &v125, &v124, &v123);
        v40[3] = 0;
        v121 = v104;
        v122 = v83;
        sub_100264250(&v121, &v125, &v124, &v123);
        v40[2] = 0;
        v121 = v105;
        v122 = v85;
        sub_100264250(&v121, &v125, &v124, &v123);
        _os_log_impl(&_mh_execute_header, v88, v89, "Removing %ld mailbox(es), adding %ld mailbox(es). Now: %ld mailbox(es)", v42, 0x20u);
        v40[1] = 0;
        sub_10026429C(v43);
        sub_10026429C(v44);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v88);
    (*(v109 + 8))(v112, v108);
    v40[0] = &v126;
    v126 = v64;
    v39 = sub_1003A0570();
    sub_10039C808(v40[0], v53, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

MFMailboxFilterCriteriaBarButtonItem __swiftcall MFMailboxFilterCriteriaBarButtonItem.init()()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result.chevronImageView = v3;
  result.subtitleLabel = v2;
  result.titleLabel = v1;
  result.super.super.super.isa = v0;
  return result;
}

uint64_t sub_100399A58(uint64_t a1)
{
  v150 = a1;
  v128 = sub_10039AEBC;
  v129 = sub_10025E604;
  v130 = sub_100264354;
  v131 = sub_1003A080C;
  v132 = sub_10026434C;
  v133 = sub_10026434C;
  v134 = sub_1002644E4;
  v135 = sub_10026434C;
  v136 = sub_10026434C;
  v137 = sub_1002644E4;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168[0] = 0;
  v168[1] = 0;
  v166 = 0;
  v138 = 0;
  v164 = 0;
  v147 = 0;
  v139 = type metadata accessor for Logger();
  v140 = *(v139 - 8);
  v141 = v139 - 8;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v139);
  v143 = v33 - v142;
  v144 = sub_10025C9B0(&qword_1006DA5E0);
  v145 = (*(*(v144 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v144);
  v146 = v33 - v145;
  v171 = v33 - v145;
  v148 = (*(*(sub_10025C9B0(&qword_1006DA5E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v147);
  v149 = (v33 - v148);
  v155 = type metadata accessor for DispatchPredicate();
  v153 = *(v155 - 8);
  v154 = v155 - 8;
  v151 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v150);
  v156 = (v33 - v151);
  v170 = v2;
  v169 = v1;
  _objc_retain(v1);
  v152 = *&v1[OBJC_IVAR___MailStatusMailboxActivityObserver_queue];
  _objc_retain(v152);
  v3 = v153;
  *v156 = v152;
  (*(v3 + 104))();
  v157 = _dispatchPreconditionTest(_:)();
  (*(v153 + 8))(v156, v155);
  result = v157;
  if (v157)
  {
    _objc_release(v127);

    v167 = v150;
    v125 = sub_10025C9B0(&qword_1006DA5F0);
    sub_1003A05F8();
    Collection<>.makeIterator()();
    for (i = v138; ; i = v35)
    {
      v123 = i;
      sub_10025C9B0(&qword_1006DA600);
      IndexingIterator.next()();
      v124 = sub_10025C9B0(&qword_1006DA608);
      if ((*(*(v124 - 8) + 48))(v149, 1) == 1)
      {
        result = v168;
        sub_100264880();
        return result;
      }

      v5 = v123;
      v120 = *v149;
      v6 = v149 + *(v124 + 48);
      v166 = v120;
      sub_1003A0680(v6, v146);
      v7 = sub_1003A07A8();
      result = sub_100302B20(v128, 0, v144, &type metadata for Never, v7, v121, &v165);
      v122 = v5;
      if (v5)
      {
        break;
      }

      v8 = v143;
      v100 = v165;
      v164 = v165;
      v9 = sub_100395494();
      (*(v140 + 16))(v8, v9, v139);
      _objc_retain(v120);
      v99 = 24;
      v107 = 7;
      v10 = swift_allocObject();
      v11 = v100;
      v101 = v10;
      *(v10 + 16) = v120;
      _objc_retain(v11);
      v108 = swift_allocObject();
      *(v108 + 16) = v100;
      sub_100015E30();

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.debug.getter();
      v104 = 17;
      v109 = swift_allocObject();
      v103 = 64;
      *(v109 + 16) = 64;
      v110 = swift_allocObject();
      v105 = 8;
      *(v110 + 16) = 8;
      v106 = 32;
      v12 = swift_allocObject();
      v13 = v101;
      v102 = v12;
      *(v12 + 16) = v129;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v102;
      v111 = v14;
      *(v14 + 16) = v130;
      *(v14 + 24) = v15;
      v112 = swift_allocObject();
      *(v112 + 16) = v103;
      v113 = swift_allocObject();
      *(v113 + 16) = v105;
      v16 = swift_allocObject();
      v17 = v108;
      v115 = v16;
      *(v16 + 16) = v131;
      *(v16 + 24) = v17;
      v117 = sub_10025C9B0(&unk_1006D7720);
      v114 = _allocateUninitializedArray<A>(_:)();
      v116 = v18;

      v19 = v109;
      v20 = v116;
      *v116 = v132;
      v20[1] = v19;

      v21 = v110;
      v22 = v116;
      v116[2] = v133;
      v22[3] = v21;

      v23 = v111;
      v24 = v116;
      v116[4] = v134;
      v24[5] = v23;

      v25 = v112;
      v26 = v116;
      v116[6] = v135;
      v26[7] = v25;

      v27 = v113;
      v28 = v116;
      v116[8] = v136;
      v28[9] = v27;

      v29 = v115;
      v30 = v116;
      v116[10] = v137;
      v30[11] = v29;
      sub_1002612B0();

      if (os_log_type_enabled(v118, v119))
      {
        v31 = v122;
        v85 = static UnsafeMutablePointer.allocate(capacity:)();
        v84 = sub_10025C9B0(&qword_1006D7290);
        v86 = sub_1002641E8(2);
        v87 = sub_1002641E8(0);
        v89 = &v162;
        v162 = v85;
        v90 = &v161;
        v161 = v86;
        v91 = &v160;
        v160 = v87;
        v88 = 2;
        sub_10026423C(2, &v162);
        sub_10026423C(v88, v89);
        v158 = v132;
        v159 = v109;
        sub_100264250(&v158, v89, v90, v91);
        v92 = v31;
        v93 = v109;
        v94 = v110;
        v95 = v111;
        v96 = v112;
        v97 = v113;
        v98 = v115;
        if (v31)
        {
          v77 = v93;
          v78 = v94;
          v79 = v95;
          v80 = v96;
          v81 = v97;
          v82 = v98;
          v41 = v98;
          v40 = v97;
          v39 = v96;
          v38 = v95;
          v37 = v94;

          __break(1u);
        }

        else
        {
          v158 = v133;
          v159 = v110;
          sub_100264250(&v158, &v162, &v161, &v160);
          v70 = 0;
          v71 = v109;
          v72 = v110;
          v73 = v111;
          v74 = v112;
          v75 = v113;
          v76 = v115;
          v158 = v134;
          v159 = v111;
          sub_100264250(&v158, &v162, &v161, &v160);
          v63 = 0;
          v64 = v109;
          v65 = v110;
          v66 = v111;
          v67 = v112;
          v68 = v113;
          v69 = v115;
          v158 = v135;
          v159 = v112;
          sub_100264250(&v158, &v162, &v161, &v160);
          v56 = 0;
          v57 = v109;
          v58 = v110;
          v59 = v111;
          v60 = v112;
          v61 = v113;
          v62 = v115;
          v158 = v136;
          v159 = v113;
          sub_100264250(&v158, &v162, &v161, &v160);
          v49 = 0;
          v50 = v109;
          v51 = v110;
          v52 = v111;
          v53 = v112;
          v54 = v113;
          v55 = v115;
          v158 = v137;
          v159 = v115;
          sub_100264250(&v158, &v162, &v161, &v160);
          v42 = 0;
          v43 = v109;
          v44 = v110;
          v45 = v111;
          v46 = v112;
          v47 = v113;
          v48 = v115;
          _os_log_impl(&_mh_execute_header, v118, v119, "%@: %@", v85, 0x16u);
          sub_10026429C(v86);
          sub_10026429C(v87);
          UnsafeMutablePointer.deallocate()();

          v83 = v42;
        }
      }

      else
      {
        v32 = v122;

        v83 = v32;
      }

      v35 = v83;
      _objc_release(v118);
      (*(v140 + 8))(v143, v139);
      v36 = &v127[OBJC_IVAR___MailStatusMailboxActivityObserver_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v33[1] = &Strong;
        v34 = Strong;
        swift_unknownObjectRetain();
        sub_100294754();
        swift_endAccess();
        swift_getObjectType();
        [v34 mailboxStatusUpdatedWithStatusInfo:v100 forMailboxObjectID:v120];
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100294754();
        swift_endAccess();
      }

      _objc_release(v100);
      sub_1003A0814(v146);
      _objc_release(v120);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10039AEBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v12 = 0;
  v4 = 0;
  v8 = type metadata accessor for ActivityStateObserver.ActivityState();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = &v4 - v5;
  v12 = v2;
  sub_1003A07A8();
  (*(v6 + 16))(v10, v9, v8);
  result = sub_10039AFB4(v10);
  *v11 = result;
  return result;
}

id sub_10039AFB4(uint64_t a1)
{
  v126 = a1;
  v2 = v1;
  v3 = v126;
  v118 = v2;
  v146 = 0;
  v144 = 0;
  v4 = sub_10025C9B0(&qword_1006D8740);
  v116 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v117 = &v22 - v116;
  v119 = type metadata accessor for ActivityStateObserver.ActivityState.Running();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v118);
  v123 = &v22 - v122;
  v124 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v125 = &v22 - v124;
  v146 = v3;
  v128 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _objc_retain(v128);
  v147 = v128;
  v127 = ActivityStateObserver.ActivityState.progress.getter();
  [v128 setProgress:?];
  _objc_release(v127);
  _objc_release(v128);
  v145 = ActivityStateObserver.ActivityState.error.getter();
  v115 = v145 == 0;
  v114 = v115;
  sub_10026A58C(&v145);
  if (v114)
  {
    v111 = v147;
    _objc_retain(v147);
    v112 = ActivityStateObserver.ActivityState.localizedDescription.getter();
    v113 = v7;
    if (v7)
    {
      v109 = v112;
      v110 = v113;
      v106 = v113;
      v107 = String._bridgeToObjectiveC()();

      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    v105 = v108;
    [v111 setStatus:?];
    _objc_release(v105);
    _objc_release(v111);
  }

  else
  {
    ActivityStateObserver.ActivityState.running.getter();
    (*(v120 + 104))(v123, enum case for ActivityStateObserver.ActivityState.Running.didComplete(_:), v119);
    v104 = static ActivityStateObserver.ActivityState.Running.== infix(_:_:)();
    v103 = *(v120 + 8);
    v102 = v120 + 8;
    v103(v123, v119);
    v103(v125, v119);
    if (v104)
    {
      v101 = ActivityStateObserver.ActivityState.error.getter();
      if (v101)
      {
        v100 = v101;
        v92 = v101;
        v144 = v101;
        v91 = v147;
        _objc_retain(v147);
        _objc_retain(v91);
        v93 = [v92 userInfo];
        v95 = &type metadata for String;
        v96 = &type metadata for Any + 8;
        v97 = &protocol witness table for String;
        v99 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = NSLocalizedDescriptionKey;
        _objc_retain(NSLocalizedDescriptionKey);
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v141;
        v141[0] = v8;
        v141[1] = v9;
        Dictionary.subscript.getter();
        sub_100268744();

        if (v143)
        {
          if (swift_dynamicCast())
          {
            v87 = v129;
            v88 = v130;
          }

          else
          {
            v87 = 0;
            v88 = 0;
          }

          v86 = v88;
          v85 = v87;
          _objc_release(v94);
          _objc_release(v93);
          v89 = v85;
          v90 = v86;
        }

        else
        {
          _objc_release(v94);
          _objc_release(v93);
          sub_10000B0D8(v142);
          v89 = 0;
          v90 = 0;
        }

        v83 = v90;
        v84 = v89;
        if (v90)
        {
          v81 = v84;
          v82 = v83;
          v78 = v83;
          v79 = String._bridgeToObjectiveC()();

          v80 = v79;
        }

        else
        {
          v80 = 0;
        }

        v70 = v80;
        [v91 setAccountErrorTitle:?];
        _objc_release(v70);
        _objc_release(v91);
        _objc_retain(v91);
        v71 = [v92 userInfo];
        v73 = &type metadata for String;
        v74 = &type metadata for Any + 8;
        v75 = &protocol witness table for String;
        v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = NSLocalizedFailureReasonErrorKey;
        _objc_retain(NSLocalizedFailureReasonErrorKey);
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v138;
        v138[0] = v10;
        v138[1] = v11;
        Dictionary.subscript.getter();
        sub_100268744();

        if (v140)
        {
          if (swift_dynamicCast())
          {
            v66 = v131;
            v67 = v132;
          }

          else
          {
            v66 = 0;
            v67 = 0;
          }

          v65 = v67;
          v64 = v66;
          _objc_release(v72);
          _objc_release(v71);
          v68 = v64;
          v69 = v65;
        }

        else
        {
          _objc_release(v72);
          _objc_release(v71);
          sub_10000B0D8(v139);
          v68 = 0;
          v69 = 0;
        }

        v62 = v69;
        v63 = v68;
        if (v69)
        {
          v60 = v63;
          v61 = v62;
          v57 = v62;
          v58 = String._bridgeToObjectiveC()();

          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v49 = v59;
        [v91 setFailureReasonDescription:?];
        _objc_release(v49);
        _objc_release(v91);
        v50 = [v92 userInfo];
        v52 = &type metadata for String;
        v53 = &type metadata for Any + 8;
        v54 = &protocol witness table for String;
        v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = NSUnderlyingErrorKey;
        _objc_retain(NSUnderlyingErrorKey);
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v135;
        v135[0] = v12;
        v135[1] = v13;
        Dictionary.subscript.getter();
        sub_100268744();

        if (v137)
        {
          if (swift_dynamicCast())
          {
            v45 = v133;
            v46 = v134;
          }

          else
          {
            v45 = 0;
            v46 = 1;
          }

          v44 = v46;
          v43 = v45;
          _objc_release(v51);
          _objc_release(v50);
          v47 = v43;
          v48 = v44;
        }

        else
        {
          _objc_release(v51);
          _objc_release(v50);
          sub_10000B0D8(v136);
          v47 = 0;
          v48 = 1;
        }

        v41 = v48;
        v42 = v47;
        if (v48 == 1)
        {
          v38 = 0;
        }

        else
        {
          v39 = v42;
          v40 = v41;
          v37 = v41;
          v36 = v42;
          sub_100367A00();
          v14 = swift_allocError();
          v15 = v37;
          *v16 = v36;
          v16[1] = v15;
          v38 = v14;
        }

        v35 = v38;
        if (v38)
        {
          v34 = v35;
          v31 = v35;
          v32 = _convertErrorToNSError(_:)();

          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v30 = v33;
        [v91 setError:?];
        _objc_release(v30);
        [v91 setHasAccountError:1];
        _objc_release(v91);
        _objc_release(v92);
      }
    }
  }

  v26 = v147;
  _objc_retain(v147);
  ActivityStateObserver.ActivityState.lastSuccessfulUpdate.getter();
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  if ((*(v28 + 48))(v117, 1) == 1)
  {
    v25 = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v117, v27);
    v25 = isa;
  }

  v23 = v25;
  [v26 setLastUpdateTime:?];
  _objc_release(v23);
  v17 = ActivityStateObserver.ActivityState.fetchState.getter();
  v19 = sub_1003A00B4(v17, v18 & 1);
  [v26 setState:v19];
  v20 = type metadata accessor for ActivityStateObserver.ActivityState();
  (*(*(v20 - 8) + 8))(v126);
  _objc_release(v147);
  return v26;
}

void *sub_10039C050(void *a1)
{
  _objc_retain(a1);
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039C0C8()
{
  sub_10025C9B0(&qword_1006DA728);
  _allocateUninitializedArray<A>(_:)();
  sub_100365480();
  type metadata accessor for ActivityStateObserver.ActivityState();
  sub_1003654E4();
  v1 = Dictionary.init(dictionaryLiteral:)();

  _allocateUninitializedArray<A>(_:)();
  Dictionary.init(dictionaryLiteral:)();

  _allocateUninitializedArray<A>(_:)();
  Dictionary.init(dictionaryLiteral:)();

  sub_1003A0B7C();
  return v1;
}

uint64_t sub_10039C1DC()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_10039C254(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_beginAccess();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  swift_endAccess();
}

uint64_t sub_10039C30C()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t sub_10039C35C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_10039C3BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_10039C420(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void *sub_10039C494()
{
  v2 = *(v0 + 64);
  _objc_retain(v2);
  return v2;
}

void *sub_10039C4C8()
{
  v2 = *(v0 + 72);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10039C4FC(void *a1)
{
  v1[2] = sub_10039C0C8();
  v1[3] = v2;
  v1[4] = v3;
  sub_100365480();
  sub_1003654E4();
  v1[5] = Set.init()();
  v1[7] = 0;
  swift_unknownObjectWeakInit();
  _objc_retain(a1);
  v1[8] = a1;
  type metadata accessor for ActivityStateObserver();
  _objc_retain(a1);
  *(v6 + 72) = ActivityStateObserver.__allocating_init(queue:)();
  _objc_release(a1);
  return v6;
}

uint64_t sub_10039C5E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10039C648()
{
  v14 = 0;
  v10 = type metadata accessor for DispatchPredicate();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v11 = (&v3 - v6);
  v14 = v0;

  v7 = *(v0 + 64);
  _objc_retain(v7);
  v1 = v8;
  *v11 = v7;
  (*(v1 + 104))();
  v12 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v10);
  result = v12;
  if (v12)
  {

    v3 = &v13;
    swift_beginAccess();
    v4 = *(v5 + 40);

    swift_endAccess();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039C7C8()
{
  sub_100365480();
  sub_1003654E4();
  return Set.count.getter();
}

uint64_t sub_10039C808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v18 = a2;
  v19 = a3;
  v21 = sub_1003A08BC;
  v35 = 0;
  v34 = 0;
  v22 = 0;
  v33 = 0;
  v36 = a2;
  v28 = type metadata accessor for DispatchPredicate();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v24 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = (v11 - v24);
  v35 = __chkstk_darwin(v23);
  v34 = v3;

  v25 = *(v3 + 64);
  _objc_retain(v25);
  v4 = v26;
  *v29 = v25;
  (*(v4 + 104))();
  v30 = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v29, v28);
  result = v30;
  if ((v30 & 1) == 0)
  {
    goto LABEL_8;
  }

  v6 = v22;

  v7 = sub_10025C9B0(&qword_1006DA608);
  v17 = sub_10025E9D8(v21, v20, v18, v7, &type metadata for Never, v19, &protocol witness table for Never, v16);
  if (v6)
  {

    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = v17;

  v33 = v14;
  v15 = v20 + 48;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v20 + 56);
  v31 = Strong;
  v32 = v9;
  if (Strong)
  {
    v11[1] = &v31;
    v13 = v31;
    v12 = v32;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v14, ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }
}

void sub_10039CAE8(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = *a1;
  v5 = *(sub_10025C9B0(&qword_1006DA608) + 48);
  _objc_retain(v9);
  *a3 = v9;
  swift_beginAccess();
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];

  swift_endAccess();
  _objc_retain(v9);
  sub_10039CC18(v9, v6, v7, v8, a3 + v5);

  _objc_release(v9);
}

uint64_t sub_10039CC18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v20 = a1;
  v18 = a2;
  v19 = a3;
  v24 = a4;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v14 = *(*(sub_10025C9B0(&qword_1006DA5E0) - 8) + 64);
  v12 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v18);
  v28 = &v12 - v12;
  v13 = v12;
  v6 = __chkstk_darwin(v5);
  v27 = &v12 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v6);
  v26 = &v12 - v15;
  v35 = v8;
  v32 = v7;
  v33 = v9;
  v34 = v10;

  _objc_retain(v20);
  v17 = &v31;
  v31 = v20;
  v16 = 0;
  v21 = sub_100365480();
  v22 = type metadata accessor for ActivityStateObserver.ActivityState();
  v23 = sub_1003654E4();
  Dictionary.subscript.getter();
  _objc_release(v31);

  _objc_retain(v20);
  v30 = v20;
  Dictionary.subscript.getter();
  _objc_release(v30);

  _objc_retain(v20);
  v29 = v20;
  Dictionary.subscript.getter();
  _objc_release(v29);

  return sub_10039EC14(v26, v27, v28, v25);
}

uint64_t sub_10039CE90(uint64_t a1)
{
  v117 = a1;
  v91 = sub_1003A08F0;
  v92 = sub_100264354;
  v93 = sub_10026434C;
  v94 = sub_10026434C;
  v95 = sub_1002644E4;
  v96 = sub_1003A08F0;
  v97 = sub_100264354;
  v98 = sub_10026434C;
  v99 = sub_10026434C;
  v100 = sub_1002644E4;
  v139 = 0;
  v138 = 0;
  v101 = 0;
  v109 = 0;
  v102 = type metadata accessor for ActivityStateObserver.Update();
  v104 = *(v102 - 8);
  v103 = v102 - 8;
  v105 = v104;
  v106 = *(v104 + 64);
  v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v108 = v37 - v107;
  v110 = type metadata accessor for Logger();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v109);
  v114 = v37 - v113;
  v115 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v116 = v37 - v115;
  v122 = type metadata accessor for DispatchPredicate();
  v120 = *(v122 - 8);
  v121 = v122 - 8;
  v118 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v117);
  v123 = (v37 - v118);
  v139 = v4;
  v138 = v1;

  v119 = *(v1 + 64);
  _objc_retain(v119);
  v5 = v120;
  *v123 = v119;
  (*(v5 + 104))();
  v124 = _dispatchPreconditionTest(_:)();
  (*(v120 + 8))(v123, v122);
  result = v124;
  if (v124)
  {

    v86 = &v137;
    swift_beginAccess();
    sub_10039E084(v117);
    swift_endAccess();
    v89 = sub_10039C648();
    v7 = ActivityStateObserver.Update.mailbox.getter();
    v88 = &v136;
    v136 = v7;
    v87 = sub_100365480();
    sub_1003654E4();
    v90 = Set.contains(_:)();
    _objc_release(v136);

    if (v90)
    {
      v8 = v116;
      v9 = sub_100395494();
      (*(v111 + 16))(v8, v9, v110);
      v71 = v105;
      (*(v104 + 16))(v108, v117, v102);
      v72 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v75 = 7;
      v76 = swift_allocObject();
      (*(v104 + 32))(v76 + v72, v108, v102);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      v73 = 17;
      v78 = swift_allocObject();
      *(v78 + 16) = 64;
      v79 = swift_allocObject();
      *(v79 + 16) = 8;
      v74 = 32;
      v10 = swift_allocObject();
      v11 = v76;
      v77 = v10;
      *(v10 + 16) = v96;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v77;
      v81 = v12;
      *(v12 + 16) = v97;
      *(v12 + 24) = v13;
      v83 = sub_10025C9B0(&unk_1006D7720);
      v80 = _allocateUninitializedArray<A>(_:)();
      v82 = v14;

      v15 = v78;
      v16 = v82;
      *v82 = v98;
      v16[1] = v15;

      v17 = v79;
      v18 = v82;
      v82[2] = v99;
      v18[3] = v17;

      v19 = v81;
      v20 = v82;
      v82[4] = v100;
      v20[5] = v19;
      sub_1002612B0();

      if (os_log_type_enabled(v84, v85))
      {
        v21 = v101;
        v64 = static UnsafeMutablePointer.allocate(capacity:)();
        v63 = sub_10025C9B0(&qword_1006D7290);
        v65 = sub_1002641E8(1);
        v66 = sub_1002641E8(0);
        v67 = &v129;
        v129 = v64;
        v68 = &v128;
        v128 = v65;
        v69 = &v127;
        v127 = v66;
        sub_10026423C(2, &v129);
        sub_10026423C(1, v67);
        v125 = v98;
        v126 = v78;
        sub_100264250(&v125, v67, v68, v69);
        v70 = v21;
        if (v21)
        {

          __break(1u);
        }

        else
        {
          v125 = v99;
          v126 = v79;
          sub_100264250(&v125, &v129, &v128, &v127);
          v62 = 0;
          v125 = v100;
          v126 = v81;
          sub_100264250(&v125, &v129, &v128, &v127);
          _os_log_impl(&_mh_execute_header, v84, v85, "Sending update for updated mailbox of interest %@", v64, 0xCu);
          sub_10026429C(v65);
          sub_10026429C(v66);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v84);
      (*(v111 + 8))(v116, v110);
      v130[1] = ActivityStateObserver.Update.mailbox.getter();
      CollectionOfOne.init(_:)();
      v61 = v130;
      v130[0] = v130[2];
      v60 = sub_10025C9B0(&qword_1006DA618);
      v22 = sub_1003A0954();
      sub_10039C808(v61, v60, v22);
      result = v61;
      sub_10026A58C(v61);
    }

    else
    {
      v23 = v114;
      v24 = sub_100395494();
      (*(v111 + 16))(v23, v24, v110);
      v45 = v105;
      (*(v104 + 16))(v108, v117, v102);
      v46 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v49 = 7;
      v50 = swift_allocObject();
      (*(v104 + 32))(v50 + v46, v108, v102);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      v47 = 17;
      v52 = swift_allocObject();
      *(v52 + 16) = 64;
      v53 = swift_allocObject();
      *(v53 + 16) = 8;
      v48 = 32;
      v25 = swift_allocObject();
      v26 = v50;
      v51 = v25;
      *(v25 + 16) = v91;
      *(v25 + 24) = v26;
      v27 = swift_allocObject();
      v28 = v51;
      v55 = v27;
      *(v27 + 16) = v92;
      *(v27 + 24) = v28;
      v57 = sub_10025C9B0(&unk_1006D7720);
      v54 = _allocateUninitializedArray<A>(_:)();
      v56 = v29;

      v30 = v52;
      v31 = v56;
      *v56 = v93;
      v31[1] = v30;

      v32 = v53;
      v33 = v56;
      v56[2] = v94;
      v33[3] = v32;

      v34 = v55;
      v35 = v56;
      v56[4] = v95;
      v35[5] = v34;
      sub_1002612B0();

      if (os_log_type_enabled(v58, v59))
      {
        v36 = v101;
        v38 = static UnsafeMutablePointer.allocate(capacity:)();
        v37[1] = sub_10025C9B0(&qword_1006D7290);
        v39 = sub_1002641E8(1);
        v40 = sub_1002641E8(0);
        v41 = &v135;
        v135 = v38;
        v42 = &v134;
        v134 = v39;
        v43 = &v133;
        v133 = v40;
        sub_10026423C(2, &v135);
        sub_10026423C(1, v41);
        v131 = v93;
        v132 = v52;
        sub_100264250(&v131, v41, v42, v43);
        v44 = v36;
        if (v36)
        {

          __break(1u);
        }

        else
        {
          v131 = v94;
          v132 = v53;
          sub_100264250(&v131, &v135, &v134, &v133);
          v37[0] = 0;
          v131 = v95;
          v132 = v55;
          sub_100264250(&v131, &v135, &v134, &v133);
          _os_log_impl(&_mh_execute_header, v58, v59, "Ignoring update for mailbox %@", v38, 0xCu);
          sub_10026429C(v39);
          sub_10026429C(v40);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v58);
      return (*(v111 + 8))(v114, v110);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039E084(uint64_t a1)
{
  v23 = a1;
  v2 = v1;
  v40 = v2;
  v60 = 0;
  v59 = 0;
  v33 = 0;
  v24 = type metadata accessor for ActivityStateObserver.ActivityState.Running();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = v8 - v27;
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - v27);
  v30 = v8 - v29;
  v31 = (*(*(sub_10025C9B0(&qword_1006DA5E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = v8 - v31;
  v50 = type metadata accessor for ActivityStateObserver.ActivityState.Kind();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v34 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v49 = v8 - v34;
  v44 = type metadata accessor for ActivityStateObserver.ActivityState();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v35 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v36 = v8 - v35;
  v37 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - v35);
  v38 = v8 - v37;
  v39 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - v37);
  v43 = v8 - v39;
  v60 = a1;
  v59 = v40;
  ActivityStateObserver.Update.state.getter();
  ActivityStateObserver.ActivityState.kind.getter();
  v45 = *(v41 + 8);
  v46 = v41 + 8;
  v45(v43, v44);
  v51 = (*(v47 + 88))(v49, v50);
  if (v51 == enum case for ActivityStateObserver.ActivityState.Kind.fetch(_:))
  {
    v21 = ActivityStateObserver.Update.mailbox.getter();
    ActivityStateObserver.Update.state.getter();
    (*(v41 + 56))(v32, 0, 1, v44);
    v22 = &v52;
    v52 = v21;
    sub_10025C9B0(&qword_1006DA628);
    return Dictionary.subscript.setter();
  }

  else if (v51 == enum case for ActivityStateObserver.ActivityState.Kind.sendMail(_:))
  {
    ActivityStateObserver.Update.state.getter();
    ActivityStateObserver.ActivityState.running.getter();
    v45(v38, v44);
    v20 = (*(v25 + 88))(v30, v24);
    if (v20 == enum case for ActivityStateObserver.ActivityState.Running.isRunning(_:))
    {
      v18 = ActivityStateObserver.Update.mailbox.getter();
      ActivityStateObserver.Update.state.getter();
      (*(v41 + 56))(v32, 0, 1, v44);
      v19 = &v53;
      v53 = v18;
      sub_10025C9B0(&qword_1006DA628);
      return Dictionary.subscript.setter();
    }

    else if (v20 == enum case for ActivityStateObserver.ActivityState.Running.didComplete(_:))
    {
      v16 = ActivityStateObserver.Update.mailbox.getter();
      (*(v41 + 56))(v32, 1, 1, v44);
      v17 = &v54;
      v54 = v16;
      sub_10025C9B0(&qword_1006DA628);
      return Dictionary.subscript.setter();
    }

    else
    {
      v14 = ActivityStateObserver.Update.mailbox.getter();
      ActivityStateObserver.Update.state.getter();
      (*(v41 + 56))(v32, 0, 1, v44);
      v15 = &v55;
      v55 = v14;
      sub_10025C9B0(&qword_1006DA628);
      Dictionary.subscript.setter();
      return (*(v25 + 8))(v30, v24);
    }
  }

  else if (v51 == enum case for ActivityStateObserver.ActivityState.Kind.categorizing(_:))
  {
    ActivityStateObserver.Update.state.getter();
    ActivityStateObserver.ActivityState.running.getter();
    v45(v36, v44);
    v13 = (*(v25 + 88))(v28, v24);
    if (v13 == enum case for ActivityStateObserver.ActivityState.Running.isRunning(_:))
    {
      v11 = ActivityStateObserver.Update.mailbox.getter();
      ActivityStateObserver.Update.state.getter();
      (*(v41 + 56))(v32, 0, 1, v44);
      v12 = &v56;
      v56 = v11;
      sub_10025C9B0(&qword_1006DA628);
      return Dictionary.subscript.setter();
    }

    else if (v13 == enum case for ActivityStateObserver.ActivityState.Running.didComplete(_:))
    {
      v9 = ActivityStateObserver.Update.mailbox.getter();
      (*(v41 + 56))(v32, 1, 1, v44);
      v10 = &v57;
      v57 = v9;
      sub_10025C9B0(&qword_1006DA628);
      return Dictionary.subscript.setter();
    }

    else
    {
      v8[0] = ActivityStateObserver.Update.mailbox.getter();
      ActivityStateObserver.Update.state.getter();
      (*(v41 + 56))(v32, 0, 1, v44);
      v8[1] = &v58;
      v58 = v8[0];
      sub_10025C9B0(&qword_1006DA628);
      Dictionary.subscript.setter();
      return (*(v25 + 8))(v28, v24);
    }
  }

  else
  {
    return (*(v47 + 8))(v49, v50);
  }
}