void sub_647CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a1;
  *a2 = sub_61948();
  a2[1] = v2;
}

uint64_t sub_64854(id *a1)
{
  v2 = *a1;
  *a1;

  swift_getAtKeyPath();
}

unint64_t sub_64900()
{
  v2 = qword_92208;
  if (!qword_92208)
  {
    sub_B24C(&qword_90CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_64988@<X0>(void *a1@<X8>)
{
  result = sub_7BFE4();
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_649D0(double *a1, void (*a2)(uint64_t, double, double))
{
  v5 = *a1;
  v6 = a1[1];
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(v2, v5, v6);
}

void *sub_64B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[5] = a6;
  v11[4] = a7;

  v11[0] = sub_7C524();
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  sub_7C534();
  sub_7C994();
  result = v11;
  sub_6570C();
  return result;
}

unint64_t sub_64BE4()
{
  v2 = qword_92210;
  if (!qword_92210)
  {
    type metadata accessor for CGSize();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_64C64()
{
  v2 = qword_92240;
  if (!qword_92240)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_64CE0(uint64_t a1)
{
  v3 = sub_7BCD4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_64D88()
{
  v2 = qword_92250;
  if (!qword_92250)
  {
    sub_B24C(&qword_92248);
    sub_64E2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_64E2C()
{
  v2 = qword_92258;
  if (!qword_92258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_64EE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
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

uint64_t sub_64FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_651E4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_6534C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_65580()
{
  sub_B24C(&qword_91518);
  sub_7C124();
  sub_2C078();
  return swift_getWitnessTable();
}

unint64_t sub_6562C()
{
  v2 = qword_92268;
  if (!qword_92268)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_656A8()
{
  v2 = qword_92270;
  if (!qword_92270)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92270);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_65744()
{
  v2 = *(v0 + 16);
  v2;
  return v2;
}

void *sub_65778()
{
  v2 = *(v0 + 24);
  v2;
  return v2;
}

uint64_t sub_657AC()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_657E4()
{
  v2 = *(v0 + 48);

  return v2;
}

void *sub_65870(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 2;
  sub_65AB0();

  v12 = sub_65B14(24.0);
  if (v12)
  {
    v12;
    v9[2] = v12;
    v9[3] = [v12 fontDescriptor];

    v9[4] = a1;
    v9[5] = a2;
    v5 = v9[2];
    v5;
    v6 = sub_63D94();
    v7 = v3;

    v9[6] = v6;
    v9[7] = v7;

    return v9;
  }

  else
  {
    sub_1F58();
    sub_B2C0();
    sub_1F58();
    sub_1F58();
    sub_1F58();
    sub_B2C0();
    sub_B2C0();
    type metadata accessor for Face();
    swift_deallocPartialClassInstance();

    return 0;
  }
}

unint64_t sub_65AB0()
{
  v2 = qword_92278;
  if (!qword_92278)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92278);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_65B14(double a1)
{
  v3 = sub_7CF04();
  v4 = [swift_getObjCClassFromMetadata() fontWithName:v3 size:a1];

  return v4;
}

uint64_t sub_65BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v3;

  v5 = *(a2 + 24);
  v5;

  CTFontManagerCompareFontDescriptors2();
  type metadata accessor for CFComparisonResult();
  sub_65CC0();
  return sub_7D724() & 1;
}

unint64_t sub_65CC0()
{
  v2 = qword_92280;
  if (!qword_92280)
  {
    type metadata accessor for CFComparisonResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92280);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_65D40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v3;

  v5 = *(a2 + 24);
  v5;

  CTFontManagerCompareFontDescriptors2();
  type metadata accessor for CFComparisonResult();
  sub_65CC0();
  return sub_7D724() & 1;
}

uint64_t sub_65E4C()
{
  swift_beginAccess();
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  swift_endAccess();
  if (v9)
  {
    return v8;
  }

  v3 = v7[2];
  v3;
  v4 = sub_63DF8();
  v5 = v1;

  swift_beginAccess();
  v7[8] = v4;
  v7[9] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_65F90(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t (*sub_66020(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_65E4C();
  a1[1] = v2;
  return sub_66078;
}

uint64_t sub_66078(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_65F90(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  sub_65F90(v3, v4);
  result = a1;
  sub_1F58();
  return result;
}

uint64_t sub_660F4()
{
  swift_beginAccess();
  v9 = *(v0 + 80);

  swift_endAccess();
  if (v9)
  {
    return v9;
  }

  font = *(v8 + 16);
  font;
  attribute = kCTFontDesignLanguagesAttribute;
  kCTFontDesignLanguagesAttribute;
  v6 = CTFontCopyAttribute(font, attribute);

  if (v6)
  {
    sub_1A88(&qword_90CB8);
    if (swift_dynamicCast())
    {
      v3 = v10;
    }

    else
    {
      v3 = 0;
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = sub_7D714();
  }

  swift_beginAccess();
  *(v8 + 80) = v11;

  swift_endAccess();
  return v11;
}

uint64_t sub_6631C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 80) = a1;

  swift_endAccess();
}

uint64_t (*sub_66390(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_660F4();
  return sub_663E0;
}

uint64_t sub_663E0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_6631C(*a1);
  }

  v3 = *a1;

  sub_6631C(v3);
  result = a1;
  sub_B2C0();
  return result;
}

uint64_t sub_6644C()
{
  swift_beginAccess();
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);

  swift_endAccess();
  if (v6)
  {
    *&v3 = v5;
  }

  else
  {
    sub_660F4();
    sub_1A88(&qword_90CB8);
    sub_127A8();
    sub_7D334();

    if (*(&v8 + 1))
    {
      v9 = v8;
    }

    else
    {
      sub_7BD14();
      sub_7D334();

      if (*(&v7 + 1))
      {
        v9 = v7;
      }

      else
      {
        *&v9 = sub_7CF84("", 0, 1);
        *(&v9 + 1) = v1;
      }
    }

    swift_beginAccess();
    *(v4 + 88) = v9;

    swift_endAccess();
    return v9;
  }

  return v3;
}

uint64_t sub_666A8(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;

  swift_endAccess();
}

uint64_t (*sub_66738(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6644C();
  a1[1] = v2;
  return sub_66790;
}

uint64_t sub_66790(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_666A8(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  sub_666A8(v3, v4);
  result = a1;
  sub_1F58();
  return result;
}

uint64_t sub_6680C()
{
  swift_beginAccess();
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);

  swift_endAccess();
  if (v8)
  {
    return v7;
  }

  v3 = sub_6691C(v6);
  v4 = v1;

  swift_beginAccess();
  *(v6 + 104) = v3;
  *(v6 + 112) = v4;

  swift_endAccess();
  return v3;
}

uint64_t sub_6691C(uint64_t a1)
{
  v50 = a1;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v51 = sub_7CEF4();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v17 - v54;
  v72 = __chkstk_darwin(v50);
  v56 = *(v72 + 16);
  v56;
  v57 = sub_64174();
  v58 = v1;
  v70 = v57;
  v71 = v1;

  v69[2] = v57;
  v69[3] = v58;
  v2 = sub_7CF84("", v59, 1);
  v60 = v69;
  v69[0] = v2;
  v69[1] = v3;
  v61 = sub_7CF94();
  sub_1F58();
  if (v61)
  {
    v26 = objc_opt_self();
    v20 = *sub_622EC();
    v20;
    v22 = [v20 localizations];
    v29 = &type metadata for String;
    v21 = sub_7D0A4();
    isa = sub_7D094().super.isa;

    v24 = sub_7D714();
    v23 = v4;
    v5 = sub_6644C();
    v6 = v23;
    v7 = v5;
    v8 = v24;
    *v23 = v7;
    v6[1] = v9;
    sub_71DDC();
    v25 = v8;
    v27 = sub_7D094().super.isa;

    v31 = [v26 preferredLocalizationsFromArray:isa forPreferences:v27];

    v30 = sub_7D0A4();
    sub_7D144();
    v34 = v67;
    v35 = v68;
    v65 = v67;
    v66 = v68;

    v39 = *sub_622EC();
    v39;
    v45 = 1;
    sub_7CF84("ALPHABET", 8uLL, 1);
    v32 = v10;
    v38 = sub_7CF04();

    v43 = "UNLOCALIZED";
    v44 = 11;
    sub_7CF84("UNLOCALIZED", 0xBuLL, v45 & 1);
    v33 = v11;
    v37 = sub_7CF04();

    v36 = sub_7CF04();

    v40 = [v39 localizedStringForKey:v38 value:v37 table:0 localization:v36];

    v41 = sub_7CF14();
    v42 = v12;
    v63 = v41;
    v64 = v12;

    v62[2] = v41;
    v62[3] = v42;
    v13 = sub_7CF84(v43, v44, v45 & 1);
    v46 = v62;
    v62[0] = v13;
    v62[1] = v14;
    v47 = sub_7CF94();
    sub_1F58();
    if (v47)
    {

      sub_7CF84("ALPHABET", 8uLL, 1);
      sub_7CE94();
      v18 = sub_61F88(v55);
      v19 = v15;
      (*(v52 + 8))(v55, v51);

      v48 = v18;
      v49 = v19;
    }

    else
    {

      v48 = v41;
      v49 = v42;
    }
  }

  else
  {
    v48 = v57;
    v49 = v58;
  }

  return v48;
}

uint64_t sub_66FE4(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  swift_endAccess();
}

uint64_t (*sub_67074(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6680C();
  a1[1] = v2;
  return sub_670CC;
}

uint64_t sub_670CC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_66FE4(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  sub_66FE4(v3, v4);
  result = a1;
  sub_1F58();
  return result;
}

uint64_t sub_67148()
{
  swift_beginAccess();
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);

  swift_endAccess();
  if (v8)
  {
    return v7;
  }

  v3 = sub_67258(v6);
  v4 = v1;

  swift_beginAccess();
  *(v6 + 120) = v3;
  *(v6 + 128) = v4;

  swift_endAccess();
  return v3;
}

uint64_t sub_67258(uint64_t a1)
{
  v66 = a1;
  v90 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v81 = 0;
  v82 = 0;
  v67 = sub_7CEF4();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v71 = &v22 - v70;
  v90 = a1;
  v77 = *(a1 + 16);
  v77;
  v74 = &type metadata for String;
  v73 = sub_7D714();
  v72 = v2;
  v3 = sub_6644C();
  v4 = v72;
  v5 = v3;
  v6 = v73;
  *v72 = v5;
  v4[1] = v7;
  sub_71DDC();
  v76 = v6;
  isa = sub_7D094().super.isa;
  v78 = CTFontCopyLocalizedNameByIDWithLanguages();

  if (!v78)
  {
    v63 = 0;
    v64 = 0;
    goto LABEL_10;
  }

  v65 = v78;
  v61 = v78;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v62 = v8;
  if (!v8)
  {

LABEL_8:
    v58 = 0;
    v59 = 0;
    goto LABEL_9;
  }

  v60 = v62;
  v62;
  sub_EF28();
  sub_7D774();

  if (!v80)
  {
    goto LABEL_8;
  }

  v58 = v79;
  v59 = v80;
LABEL_9:
  v63 = v58;
  v64 = v59;
LABEL_10:
  v56 = v64;
  v57 = v63;
  if (v64)
  {
    v54 = v57;
    v55 = v56;
    v81 = v57;
    v82 = v56;
    v24 = v57;
    v25 = v56;
  }

  else
  {
    v32 = objc_opt_self();
    v26 = *sub_622EC();
    v26;
    v28 = [v26 localizations];
    v35 = &type metadata for String;
    v27 = sub_7D0A4();
    v34 = sub_7D094().super.isa;

    v30 = sub_7D714();
    v29 = v9;
    v10 = sub_6644C();
    v11 = v29;
    v12 = v10;
    v13 = v30;
    *v29 = v12;
    v11[1] = v14;
    sub_71DDC();
    v31 = v13;
    v33 = sub_7D094().super.isa;

    v37 = [v32 preferredLocalizationsFromArray:v34 forPreferences:v33];

    v36 = sub_7D0A4();
    sub_7D144();
    v40 = v88;
    v41 = v89;
    v86 = v88;
    v87 = v89;

    v45 = *sub_622EC();
    v45;
    v50 = 11;
    v51 = 1;
    sub_7CF84("LOREM_IPSUM", 0xBuLL, 1);
    v38 = v15;
    v44 = sub_7CF04();

    v49 = "UNLOCALIZED";
    sub_7CF84("UNLOCALIZED", v50, v51 & 1);
    v39 = v16;
    v43 = sub_7CF04();

    v42 = sub_7CF04();

    v46 = [v45 localizedStringForKey:v44 value:v43 table:0 localization:v42];

    v47 = sub_7CF14();
    v48 = v17;
    v84 = v47;
    v85 = v17;

    v83[2] = v47;
    v83[3] = v48;
    v18 = sub_7CF84(v49, v50, v51 & 1);
    v52 = v83;
    v83[0] = v18;
    v83[1] = v19;
    v53 = sub_7CF94();
    sub_1F58();
    if (v53)
    {

      sub_7CF84("LOREM_IPSUM", 0xBuLL, 1);
      sub_7CE94();
      v22 = sub_61F88(v71);
      v23 = v20;
      (*(v68 + 8))(v71, v67);
      v24 = v22;
      v25 = v23;
    }

    else
    {

      v24 = v47;
      v25 = v48;
    }
  }

  return v24;
}

uint64_t sub_67ACC(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;

  swift_endAccess();
}

uint64_t (*sub_67B5C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_67148();
  a1[1] = v2;
  return sub_67BB4;
}

uint64_t sub_67BB4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_67ACC(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  sub_67ACC(v3, v4);
  result = a1;
  sub_1F58();
  return result;
}

CFIndex sub_67C30()
{
  swift_beginAccess();
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  swift_endAccess();
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  font = *(v5 + 16);
  font;
  GlyphCount = CTFontGetGlyphCount(font);

  swift_beginAccess();
  *(v5 + 136) = GlyphCount;
  *(v5 + 144) = 0;
  swift_endAccess();
  return GlyphCount;
}

uint64_t sub_67D44(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
  *(v1 + 144) = 0;
  return swift_endAccess();
}

uint64_t (*sub_67DB4(CFIndex *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_67C30();
  return sub_67E04;
}

uint64_t sub_67E5C()
{
  swift_beginAccess();
  v5 = *(v0 + 152);

  swift_endAccess();
  if (v5)
  {
    return v5;
  }

  v2 = sub_67F38(v4);

  swift_beginAccess();
  *(v4 + 152) = v2;

  swift_endAccess();
  return v2;
}

uint64_t sub_67F38(uint64_t a1)
{
  v12 = *(a1 + 16);
  v12;
  sub_6424C();

  v13 = sub_1A88(&qword_91D28);
  v14 = sub_1A88(&qword_924A8);
  v1 = sub_4B8F4();
  sub_7FFC(sub_68604, 0, v13, v14, &type metadata for Never, v1, &protocol witness table for Never, v15);
  sub_B2C0();
  swift_getKeyPath();

  sub_1A88(&qword_924B0);
  sub_69EC4();
  sub_69F4C();
  v10 = sub_7D064();

  sub_69FC4();
  sub_7D064();
  sub_7D0E4();
  v16 = sub_7D104();
  font = *(a1 + 16);
  font;

  count = sub_7D0E4();

  sub_1A88(&qword_91608);
  sub_7D0B4(0);

  GlyphsForCharacters = CTFontGetGlyphsForCharacters(font, (v10 + 32), (v16 + 32), count);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!GlyphsForCharacters || (, sub_6A04C(), v6 = sub_7D344(), , (v6 & 1) != 0))
  {
    sub_1A88(&qword_924D0);
    sub_7D714();
    sub_1A88(&qword_92498);
    v3 = sub_7CDB4();
    sub_B2C0();

    return v3;
  }

  else
  {

    sub_6A0D4();
    sub_7D764();
    sub_B2C0();
    sub_1A88(&qword_924E8);
    sub_6A15C();
    sub_7D044();
    sub_1A88(&qword_924F8);
    sub_1A88(&qword_92500);
    sub_7D5C4();

    swift_getKeyPath();

    sub_1A88(&qword_92508);
    sub_6A208();
    sub_7CDE4();

    sub_1A88(&qword_92498);
    v5 = sub_7CDF4();

    sub_B2C0();

    return v5;
  }
}

uint64_t sub_68604@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *a1;
  result = sub_7D814();
  a2[1] = result;
  return result;
}

uint64_t sub_68648()
{

  swift_getAtKeyPath();
}

uint64_t sub_686B8@<X0>(uint64_t *a1@<X8>)
{
  sub_6A34C();
  sub_7D324();
  result = sub_7D104();
  *a1 = result;
  return result;
}

uint64_t sub_68768()
{

  swift_getAtKeyPath();
}

uint64_t sub_687D8@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();

  v5 = sub_1A88(&qword_92508);
  v1 = sub_6A2C4();
  sub_7FFC(sub_6A290, KeyPath, v5, &type metadata for Unicode.Scalar, &type metadata for Never, v1, &protocol witness table for Never, v7);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    sub_1A88(&qword_91D28);
    sub_69FC4();
    result = sub_7D2C4();
    *a1 = result;
  }

  return result;
}

uint64_t sub_6891C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 152) = a1;

  swift_endAccess();
}

uint64_t (*sub_68990(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_67E5C();
  return sub_689E0;
}

uint64_t sub_689E0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_6891C(*a1);
  }

  v3 = *a1;

  sub_6891C(v3);
  result = a1;
  sub_B2C0();
  return result;
}

uint64_t sub_68A4C()
{
  swift_beginAccess();
  v5 = *(v0 + 160);

  swift_endAccess();
  if (v5)
  {
    return v5;
  }

  v2 = sub_68B28(v4);

  swift_beginAccess();
  *(v4 + 160) = v2;

  swift_endAccess();
  return v2;
}

uint64_t sub_68B28(uint64_t a1)
{
  v40 = a1;
  v41 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v55 = a1;
  v42 = sub_67C30();
  if (v42 < 0)
  {
    LODWORD(v11) = 0;
    v10 = 760;
    v9 = 2;
    sub_7D5E4();
    __break(1u);
  }

  v36 = 0;
  v53 = 0;
  v54 = v42;
  v35 = sub_1A88(&qword_92468);
  sub_69BDC();
  v52 = sub_7D134();
  v37 = sub_1A88(&qword_92478);
  v1 = sub_69C80();
  v38 = v41;
  v39 = sub_7FFC(sub_68FC8, 0, v37, &type metadata for UInt16, &type metadata for Never, v1, &protocol witness table for Never, v2);
  v32 = v39;
  sub_B2C0();
  v51 = v39;
  v33 = *(v40 + 16);
  v3 = v33;
  SymbolicTraits = CTFontGetSymbolicTraits(v33);

  v50 = SymbolicTraits;
  if (sub_69748())
  {
    v30 = v32;
    v31 = v38;
  }

  else
  {
    v4 = v38;
    v15 = *(v40 + 16);
    v5 = v15;
    v18 = 0;
    v19 = CTFontCopyGraphicsFont(v15, 0);
    v16 = v19;

    v49 = v19;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v17 = sub_67C30();
    type metadata accessor for CGRect();
    v48 = sub_7D104();

    v21 = sub_67C30();
    v20 = v32 + 32;

    sub_1A88(&qword_92488);
    v25 = &v48;
    sub_7D0B4(0);
    v23 = v48;
    v22 = v48 + 1;

    CGFontGetGlyphBBoxes(v19, (v32 + 32), v21, v22);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v43 = v32;

    v24 = &v13;
    __chkstk_darwin(&v13);
    v26 = &v9;
    v11 = v25;
    v12 = v6;
    v27 = sub_1A88(&qword_91608);
    sub_69D38();
    v7 = sub_7D554();
    v28 = v4;
    v29 = v7;
    v14 = v7;

    sub_B2C0();

    v30 = v14;
    v31 = v28;
  }

  return v30;
}

uint64_t *sub_68FC8@<X0>(uint64_t *result@<X0>, _WORD *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    result = sub_7D5E4();
    __break(1u);
  }

  if (v3 > 0xFFFF)
  {
    result = sub_7D5E4();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_690F0()
{
  type metadata accessor for CGRect();
  sub_7D144();
  if (!sub_693A4(v6, v7, v8, v9))
  {
    v3 = 1;
    return v3 & 1;
  }

  sub_67E5C();
  sub_1A88(&qword_92498);
  sub_7CE04();
  if (!v5)
  {
LABEL_9:

    v3 = 0;
    return v3 & 1;
  }

  swift_getKeyPath();

  sub_69E18();
  v0 = sub_7D074();
  v2 = v0;
  if (!v4)
  {

    if (v2)
    {

      v3 = 1;
      return v3 & 1;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_693E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v10 = sub_7D7F4();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v9 = &v3 - v5;
  sub_7D804();
  return (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_694AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v14 = sub_7D7F4();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v14);
  v15 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  v3 = sub_7D7D4();
  v4 = v12;
  v5 = v14;
  v6 = v3;
  v7 = v15;
  *v11 = v6 & 1;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_695AC()
{

  swift_getAtKeyPath();

  return v1 & 1;
}

uint64_t sub_69618(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 160) = a1;

  swift_endAccess();
}

uint64_t (*sub_6968C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_68A4C();
  return sub_696DC;
}

uint64_t sub_696DC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_69618(*a1);
  }

  v3 = *a1;

  sub_69618(v3);
  result = a1;
  sub_B2C0();
  return result;
}

uint64_t sub_69748()
{
  swift_beginAccess();
  v6 = *(v0 + 168);
  swift_endAccess();
  if (v6 == 2)
  {
    v2 = *(v5 + 16);
    v2;
    v3 = sub_62784();

    swift_beginAccess();
    *(v5 + 168) = v3 & 1;
    swift_endAccess();
    v4 = v3;
  }

  else
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_6985C(char a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
  return swift_endAccess();
}

uint64_t (*sub_698C4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_69748() & 1;
  return sub_6991C;
}

uint64_t sub_6997C()
{
  sub_1F58();
  sub_1F58();
  sub_1F58();
  sub_B2C0();
  sub_1F58();
  sub_1F58();
  sub_1F58();
  sub_B2C0();
  sub_B2C0();
  return v2;
}

uint64_t sub_69A54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Face();
  result = sub_7D534();
  *a1 = result;
  return result;
}

unint64_t sub_69B5C()
{
  v2 = qword_92460;
  if (!qword_92460)
  {
    type metadata accessor for Face();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69BDC()
{
  v2 = qword_92470;
  if (!qword_92470)
  {
    sub_B24C(&qword_92468);
    sub_64E2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69C80()
{
  v2 = qword_92480;
  if (!qword_92480)
  {
    sub_B24C(&qword_92478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69D38()
{
  v2 = qword_92490;
  if (!qword_92490)
  {
    sub_B24C(&qword_91608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69E18()
{
  v2 = qword_924A0;
  if (!qword_924A0)
  {
    sub_B24C(&qword_92498);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69EC4()
{
  v2 = qword_924B8;
  if (!qword_924B8)
  {
    sub_B24C(&qword_924B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69F4C()
{
  v2 = qword_924C0;
  if (!qword_924C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69FC4()
{
  v2 = qword_924C8;
  if (!qword_924C8)
  {
    sub_B24C(&qword_91D28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A04C()
{
  v2 = qword_924D8;
  if (!qword_924D8)
  {
    sub_B24C(&qword_91608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A0D4()
{
  v2 = qword_924E0;
  if (!qword_924E0)
  {
    sub_B24C(&qword_91608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A15C()
{
  v2 = qword_924F0;
  if (!qword_924F0)
  {
    sub_B24C(&qword_924E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A208()
{
  v2 = qword_92510;
  if (!qword_92510)
  {
    sub_B24C(&qword_92508);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A2C4()
{
  v2 = qword_92518;
  if (!qword_92518)
  {
    sub_B24C(&qword_92508);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A34C()
{
  v2 = qword_92520;
  if (!qword_92520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6A514()
{
  v8 = (v0 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  v4 = sub_6E638(v7);
  v5 = v1;

  v3 = (v7 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_6A63C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_6A698(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

uint64_t sub_6A7A4()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_6A800(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  swift_endAccess();
}

uint64_t sub_6A8CC()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_6A91C(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_6A9C4()
{
  swift_beginAccess();
  v2 = *(v0 + 56);

  swift_endAccess();
  return v2;
}

uint64_t sub_6AA20(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  swift_endAccess();
}

uint64_t sub_6AAEC()
{
  swift_beginAccess();
  v2 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t sub_6AB48(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;

  swift_endAccess();
}

uint64_t sub_6AC14@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC12FontSettings6Family_id;
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_6AC80()
{
  v2 = *(v0 + OBJC_IVAR____TtC12FontSettings6Family_descriptor);
  v2;
  return v2;
}

uint64_t sub_6ACBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1;
  v3[0] = a1;
  return sub_17330(v3, &unk_8F540, a2);
}

uint64_t sub_6ACF8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_6AD94@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_6ACF8();
}

uint64_t sub_6ADF0()
{

  sub_6AE48();
}

uint64_t sub_6AE48()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_7BE24();
}

void (*sub_6AED4(void *a1))(void (***a1)(void, void))
{
  v3 = sub_17EB8(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_7BE04();
  return sub_14158;
}

uint64_t sub_6AFB4()
{
  swift_beginAccess();
  sub_1A88(&qword_92538);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_6B030(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_1A88(&qword_92540);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_1A88(&qword_92538);
  sub_7BDF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_6B184(void *a1))(void **a1, char a2)
{
  v6 = sub_17EB8(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1A88(&qword_92540);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_17EB8(v5);
  v6[4] = sub_17EB8(v5);
  sub_6AFB4();
  return sub_6B2A8;
}

void sub_6B2A8(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_6B030(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_6B030(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_6B3A4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings6Family__state;
  swift_beginAccess();
  v2 = sub_1A88(&qword_92538);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_6B43C(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1A88(&qword_92538);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC12FontSettings6Family__state;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_6B588()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_6B5E8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_6B6BC()
{
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  sub_B2C0();
  if (!v8)
  {
    v5 = sub_6B888();

    v4 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  if (v3)
  {
    return v3;
  }

  sub_7D714();
  return sub_7D214();
}

uint64_t sub_6B888()
{
  v13 = objc_opt_self();
  swift_beginAccess();

  swift_endAccess();
  v14 = sub_7CF04();

  v15 = [v13 fontNamesForFamilyName:v14];

  sub_7D0A4();
  sub_1A88(&qword_90CB8);
  sub_64900();
  sub_7D2C4();

  sub_1A88(&qword_90C30);
  sub_7D714();
  v19 = v1;
  kCTFontFamilyNameAttribute;
  *v19 = kCTFontFamilyNameAttribute;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);

  swift_endAccess();
  *(v19 + 32) = &type metadata for String;
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  kCTFontDownloadableAttribute;
  *(v19 + 40) = kCTFontDownloadableAttribute;
  swift_beginAccess();
  v18 = *(v0 + 48);
  swift_endAccess();
  *(v19 + 72) = &type metadata for Bool;
  *(v19 + 48) = v18;
  kCTFontDownloadedAttribute;
  *(v19 + 80) = kCTFontDownloadedAttribute;
  *(v19 + 112) = &type metadata for Bool;
  *(v19 + 88) = 1;
  sub_71DDC();
  type metadata accessor for CFString();
  sub_B438();
  sub_7CDB4();
  v20.super.isa = sub_7CD84().super.isa;

  v21 = CTFontDescriptorCreateWithAttributes(v20.super.isa);
  v21;
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v21, 0);

  if (MatchingFontDescriptors)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      sub_1A88(&qword_90CE8);
      v12;
      sub_13B80();
      sub_7D774();

      if (v23)
      {
        v11 = v23;
LABEL_7:
        v10 = v11;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v11 = 0;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:
  if (v10)
  {
    KeyPath = swift_getKeyPath();

    v8 = sub_1A88(&qword_90CE8);
    v2 = sub_12A7C();
    sub_7FFC(sub_648CC, KeyPath, v8, &type metadata for String, &type metadata for Never, v2, &protocol witness table for Never, v9);

    sub_7D2C4();

    sub_1A88(&qword_90B40);
    sub_70040();
    sub_7D244();
    v6 = sub_7D254();

    return v6;
  }

  else
  {

    v4 = sub_7D254();

    return v4;
  }
}

BOOL sub_6BF9C()
{
  v0 = sub_6175C();
  v2 = *v0;
  v3 = v0[1];

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  v4 = sub_7D014(v5);

  return !v4;
}

void sub_6C028(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a1;
  *a2 = sub_635E4();
  a2[1] = v2;
}

uint64_t sub_6C098()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_6C0F8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_6C1CC()
{
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  sub_B2C0();
  if (!v8)
  {
    v5 = sub_6C38C();

    v4 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__faces);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  if (v3)
  {
    return v3;
  }

  type metadata accessor for Face();
  return sub_7D714();
}

uint64_t sub_6C38C()
{
  v6 = 0;
  memset(__b, 0, sizeof(__b));
  v7 = v0;
  type metadata accessor for Face();
  v6 = sub_7D714();
  sub_6B6BC();
  sub_7D224();
  memcpy(__b, v8, sizeof(__b));
  while (1)
  {
    sub_1A88(&qword_90B98);
    sub_7D294();
    if (!v4)
    {
      break;
    }

    if (sub_6581C(v3, v4))
    {

      sub_1A88(&qword_91870);
      sub_7D0F4();
    }
  }

  sub_B114();

  sub_1A88(&qword_91870);
  sub_700C8();
  sub_70150();
  v2 = sub_7D084();
  sub_B2C0();
  sub_B2C0();
  return v2;
}

uint64_t sub_6C5A8()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_6C608(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_6C6DC()
{
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  sub_B2C0();
  if (!v8)
  {
    v5 = sub_6C8A8();

    v4 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  if (v3)
  {
    return v3;
  }

  sub_7D714();
  return sub_7D214();
}

uint64_t sub_6C8A8()
{
  sub_6C1CC();
  sub_1A88(&qword_91870);
  sub_700C8();
  sub_7D024();
  sub_B2C0();
  sub_1A88(&qword_90CB8);
  sub_64900();
  return sub_7D2C4();
}

uint64_t sub_6C9AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = a2;
  v10 = a1;
  v17 = 0;
  v11 = (*(*(sub_1A88(&qword_90B50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v7 - v11;
  v17 = *__chkstk_darwin(v10);
  v12 = *(v17 + 16);
  v12;
  sub_63FE8(v13);

  v14 = sub_7BCD4();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    result = sub_64CE0(v13);
    v3 = v9;
    *v9 = 0;
    v3[1] = 0;
  }

  else
  {
    v7 = sub_7BCA4();
    v8 = v4;
    (*(v15 + 8))(v13, v14);
    result = v7;
    v5 = v9;
    v6 = v8;
    *v9 = v7;
    v5[1] = v6;
  }

  return result;
}

uint64_t sub_6CB54()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  *v2 = 0;

  swift_endAccess();
  v3 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  *v3 = 0;

  swift_endAccess();
  v4 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  *v4 = 0;

  return swift_endAccess();
}

uint64_t sub_6CC38()
{
  v8 = (v0 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  kCTFontCopyrightNameKey;
  v4 = sub_6DCD0(kCTFontCopyrightNameKey);
  v5 = v1;

  v3 = (v7 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_6CD9C(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*sub_6CE38(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6CC38();
  a1[1] = v2;
  return sub_6CE90;
}

uint64_t sub_6CE90(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_6CD9C(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  sub_6CD9C(v3, v4);
  result = a1;
  sub_1F58();
  return result;
}

uint64_t sub_6CF0C()
{
  v8 = (v0 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  kCTFontVersionNameKey;
  v4 = sub_6DCD0(kCTFontVersionNameKey);
  v5 = v1;

  v3 = (v7 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_6D070(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*sub_6D10C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6CF0C();
  a1[1] = v2;
  return sub_6D164;
}

uint64_t sub_6D164(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_6D070(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  sub_6D070(v3, v4);
  result = a1;
  sub_1F58();
  return result;
}

void *sub_6D1E0(void *a1)
{
  v66 = a1;
  v2 = v1;
  v67 = v2;
  v72 = 0;
  v71 = 0;
  v53 = sub_1A88(&qword_92538);
  v49 = *(v53 - 8);
  v50 = v53 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v52 = &v46 - v47;
  v72 = a1;
  v71 = v4;
  v48 = "";
  v54 = 0;
  v63 = 1;
  v5 = sub_7CF84("", 0, 1);
  v6 = v63;
  v7 = v67;
  v8 = v5;
  v9 = v48;
  v11 = v10;
  v12 = v54;
  v67[2] = v8;
  v7[3] = v11;
  v13 = sub_7CF84(v9, v12, v6 & 1);
  v14 = v63;
  v15 = v67;
  v16 = v13;
  v17 = v48;
  v19 = v18;
  v20 = v54;
  v67[4] = v16;
  v15[5] = v19;
  *(v15 + 48) = 0;
  v21 = sub_7CF84(v17, v20, v14 & 1);
  v22 = v63;
  v23 = v67;
  v24 = v21;
  v25 = v48;
  v27 = v26;
  v28 = v54;
  v67[7] = v24;
  v23[8] = v27;
  v29 = sub_7CF84(v25, v28, v22 & 1);
  v30 = v67;
  v67[9] = v29;
  v30[10] = v31;
  sub_7BCF4();
  v51 = OBJC_IVAR____TtC12FontSettings6Family__state;
  sub_6ACBC(2, v52);
  (*(v49 + 32))(v67 + v51, v52, v53);
  v32 = v54;
  v33 = v67;
  *(v67 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames) = v54;
  *(v33 + OBJC_IVAR____TtC12FontSettings6Family__faces) = v32;
  *(v33 + OBJC_IVAR____TtC12FontSettings6Family__filePaths) = v32;
  v34 = (v33 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v33 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  *v35 = 0;
  v35[1] = 0;
  v55 = sub_61948();
  v56 = v36;
  v57 = &v70;
  v61 = 33;
  v62 = 0;
  swift_beginAccess();
  v37 = v56;
  v38 = v67;
  v67[2] = v55;
  v38[3] = v37;

  swift_endAccess();
  v58 = sub_63760();
  v59 = v39;
  v60 = &v69;
  swift_beginAccess();
  v40 = v59;
  v41 = v67;
  v67[4] = v58;
  v41[5] = v40;

  swift_endAccess();
  v42 = sub_61E48();
  v43 = v67;
  v64 = v42;
  v65 = &v68;
  swift_beginAccess();
  *(v43 + 48) = v64 & v63;
  swift_endAccess();
  v66;
  v44 = v66;
  *(v43 + OBJC_IVAR____TtC12FontSettings6Family_descriptor) = v66;

  return v67;
}

uint64_t sub_6D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v53 = a2;
  v49 = a3;
  v52 = a4;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v44 = sub_1A88(&qword_92538);
  v40 = *(v44 - 8);
  v41 = v44 - 8;
  v37 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v36 - v37;
  v60 = __chkstk_darwin(v45);
  v61 = v5;
  v58 = v6;
  v59 = v7;
  v57 = v4;
  v39 = "";
  v51 = 0;
  v38 = 1;
  v8 = sub_7CF84("", 0, 1);
  v9 = v38;
  v10 = v8;
  v11 = v39;
  v13 = v12;
  v14 = v51;
  *(v4 + 16) = v10;
  *(v4 + 24) = v13;
  v15 = sub_7CF84(v11, v14, v9 & 1);
  v16 = v38;
  v17 = v15;
  v18 = v39;
  v20 = v19;
  v21 = v51;
  *(v4 + 32) = v17;
  *(v4 + 40) = v20;
  *(v4 + 48) = 0;
  v22 = sub_7CF84(v18, v21, v16 & 1);
  v23 = v38;
  v24 = v22;
  v25 = v39;
  v27 = v26;
  v28 = v51;
  *(v4 + 56) = v24;
  *(v4 + 64) = v27;
  *(v4 + 72) = sub_7CF84(v25, v28, v23 & 1);
  *(v4 + 80) = v29;
  sub_7BCF4();
  v42 = OBJC_IVAR____TtC12FontSettings6Family__state;
  sub_6ACBC(2, v43);
  (*(v40 + 32))(v4 + v42, v43, v44);
  v30 = v51;
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames) = v51;
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family__faces) = v30;
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family__filePaths) = v30;
  v31 = (v4 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v4 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  *v32 = 0;
  v32[1] = 0;

  v46 = &v56;
  v47 = 33;
  v48 = 0;
  swift_beginAccess();
  v33 = v53;
  *(v4 + 16) = v45;
  *(v4 + 24) = v33;

  swift_endAccess();

  v50 = &v55;
  swift_beginAccess();
  v34 = v52;
  *(v4 + 32) = v49;
  *(v4 + 40) = v34;

  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family_descriptor) = v51;

  return v54;
}

uint64_t sub_6D870()
{
  swift_beginAccess();

  swift_endAccess();
  swift_beginAccess();

  swift_endAccess();
  sub_198A4();
  sub_7D454();
  sub_1F58();
  sub_1F58();
  type metadata accessor for ComparisonResult();
  sub_60EC4();
  return sub_7D724() & 1;
}

uint64_t sub_6D9F0(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v19 = sub_7BD04();
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  v8 = v15[8];
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v17 = &v6 - v7;
  v9 = v7;
  v3 = __chkstk_darwin(&v6 - v7);
  v18 = &v6 - v9;
  v25 = v10;
  v24 = v4;
  v23 = v2;
  v11 = &unk_94000;
  v14 = v15[2];
  v13 = v15 + 2;
  v14(v3);
  (v14)(v17, v12 + v11[474], v19);
  v22 = sub_7BCE4();
  v21 = v15[1];
  v20 = v15 + 1;
  v21(v17, v19);
  v21(v18, v19);
  return v22 & 1;
}

uint64_t sub_6DBAC(uint64_t a1)
{
  v6[1] = a1;
  v2 = v1;
  v8 = v2;
  v14 = 0;
  v13 = 0;
  v12 = sub_7BD04();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v12);
  v11 = v6 - v7;
  v14 = a1;
  v13 = v8;
  (*(v9 + 16))(v4);
  sub_B094();
  sub_7D7C4();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_6DCD0(const __CFString *a1)
{
  sub_6C1CC();
  sub_1A88(&qword_91870);
  sub_701D0();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_92590);
    sub_7D5D4();
    if (!v7)
    {
      break;
    }

    font = *(v7 + 16);
    font;
    v5 = CTFontCopyLocalizedName(font, a1, 0);

    if (v5)
    {
      v5;
      v2 = sub_7CF14();

      sub_B2C0();
      return v2;
    }
  }

  sub_B2C0();
  return sub_7CF84("", 0, 1);
}

uint64_t sub_6DF84()
{
  sub_1F58();
  sub_1F58();
  sub_1F58();
  sub_1F58();
  v4 = OBJC_IVAR____TtC12FontSettings6Family_id;
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(v0 + v4);
  sub_BB0C((v0 + OBJC_IVAR____TtC12FontSettings6Family_descriptor));
  v5 = OBJC_IVAR____TtC12FontSettings6Family__state;
  v2 = sub_1A88(&qword_92538);
  (*(*(v2 - 8) + 8))(v0 + v5);
  sub_B2C0();
  sub_B2C0();
  sub_B2C0();
  sub_1F58();
  sub_1F58();
  return v6;
}

uint64_t sub_6E140()
{
  type metadata accessor for Family();
  sub_128FC();
  return sub_7D4F4();
}

uint64_t sub_6E194@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Family();
  result = sub_7BDC4();
  *a1 = result;
  return result;
}

void *sub_6E284(void *a1)
{
  a1;
  v3 = sub_6D1E0(a1);

  if (sub_61C04())
  {

    sub_6C1CC();

    sub_1A88(&qword_91870);
    sub_701D0();
    sub_7D344();
  }

  sub_6AE48();

  return v3;
}

uint64_t sub_6E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v9 = sub_6D580(a1, a2, a3, a4);

  sub_6AE48();

  return v9;
}

uint64_t sub_6E638(uint64_t a1)
{
  v74 = a1;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v76 = __b;
  v78 = 40;
  memset(__b, 0, sizeof(__b));
  v88 = 0;
  v89 = 0;
  v79 = 0;
  v86 = 0;
  v80 = 0;
  v54 = sub_7BBF4();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v58 = &v6 - v57;
  v59 = sub_7BBD4();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v63 = &v6 - v62;
  v64 = sub_71BF4();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v68 = &v6 - v67;
  v69 = sub_1A88(&qword_92D88);
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69);
  v73 = &v6 - v72;
  v95 = &v6 - v72;
  v94 = a1;
  v93 = 0;

  v75 = sub_6C6DC();

  v77 = &v104;
  sub_7D224();
  memcpy(v76, v77, v78);
  v81 = v80;
  v82 = v80;
  for (i = v79; ; i = v25)
  {
    v48 = i;
    v50 = v82;
    v49 = v81;
    sub_1A88(&qword_90B98);
    sub_7D294();
    v51 = v101;
    v52 = v102;
    v53 = v50;
    if (!v102)
    {
      v39 = v53;
      sub_B114();
      v40 = &v92;
      v92 = v39;
      sub_71C80();
      sub_7D204();
      v41 = v2;
      v42 = [objc_opt_self() bytes];
      sub_71CF8();
      sub_7BB54();
      (*(v60 + 104))(v63, enum case for ByteCountFormatStyle.Style.memory(_:), v59);
      sub_6EEF0();
      v43 = sub_2DE80();
      sub_4754();
      sub_7BB44();
      (*(v55 + 8))(v58, v54);
      (*(v60 + 8))(v63, v59);
      sub_71D5C();
      sub_7BB74();
      (*(v65 + 8))(v68, v64);
      v44 = v90;
      v45 = v91;
      (*(v70 + 8))(v73, v69);
      return v44;
    }

    v46 = v51;
    v47 = v52;
    v34 = v52;
    v33 = v51;
    v88 = v51;
    v89 = v52;
    v100 = 0;
    v37 = [objc_opt_self() defaultManager];

    v36 = sub_7CF04();

    v87 = v100;
    v38 = [v37 attributesOfItemAtPath:v36 error:&v87];
    v35 = v87;
    v87;
    v4 = v100;
    v100 = v35;

    if (v38)
    {
      v32 = v38;
      v28 = v38;
      v27 = type metadata accessor for FileAttributeKey();
      sub_F020();
      v29 = sub_7CD94();

      v30 = v29;
      v31 = v48;
    }

    else
    {
      v7 = v100;
      v8 = sub_7BC04();

      swift_willThrow();
      v9 = 0;

      v30 = 0;
      v31 = v9;
    }

    v25 = v31;
    v26 = v30;
    if (!v30)
    {
      v22 = v49;
      v23 = v50;
      goto LABEL_24;
    }

    v24 = v26;
    v19 = v26;
    v86 = v26;
    v18 = NSFileSize;
    NSFileSize;
    v21 = &v85;
    v85 = v18;
    v20 = type metadata accessor for FileAttributeKey();
    sub_F020();
    sub_7CE04();
    sub_BB0C(v21);
    if (v99)
    {
      result = swift_dynamicCast();
      if (result)
      {
        v14 = v84;
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 1;
      }

      v16 = v14;
      v17 = v15;
    }

    else
    {
      result = sub_B828(v98);
      v16 = 0;
      v17 = 1;
    }

    v96 = v16;
    v97 = v17 & 1;
    v13 = (v17 & 1) != 0 ? 0 : v96;
    v12 = v49 + v13;
    if (__CFADD__(v49, v13))
    {
      break;
    }

    v93 = v12;

    v22 = v12;
    v23 = v12;
LABEL_24:
    v11 = v23;
    v10 = v22;

    v81 = v10;
    v82 = v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_6EF08(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

void *sub_6EFA4(const __CTFontDescriptor *a1)
{
  v94 = a1;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  v102 = 0;
  v103 = 0;
  v77 = 0;
  v101 = 0;
  v100 = 0;
  v98 = 0;
  v99 = 0;
  v2 = sub_1A88(&qword_90B50);
  v78 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v79 = &v20 - v78;
  v85 = 0;
  v80 = sub_7BCD4();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v84 = &v20 - v83;
  v121 = &v20 - v83;
  v91 = sub_7CEF4();
  v88 = *(v91 - 8);
  v89 = v91 - 8;
  v86 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v94);
  v90 = &v20 - v86;
  v119 = v3;
  v120 = v1;
  v4 = (v1 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  *v4 = 0;
  v4[1] = 0;
  v87 = 1;
  v117 = sub_7CF84("", v5, 1);
  v118 = v6;
  sub_7CF84("No Provider Found", 0x11uLL, v87 & 1);
  sub_7CE94();
  v92 = sub_61F88(v90);
  v93 = v7;
  (*(v88 + 8))(v90, v91);
  v115 = v92;
  v116 = v93;
  v95 = kCTFontURLAttribute;
  kCTFontURLAttribute;
  v96 = CTFontDescriptorCopyAttribute(v94, v95);

  if (v96 && (v76 = v96, v97 = v96, v8 = swift_dynamicCast(), (v8 & 1) != 0))
  {
    (*(v81 + 56))(v79, 0, 1, v80);
  }

  else
  {
    (*(v81 + 56))(v79, 1, 1, v80);
  }

  if ((*(v81 + 48))(v79, 1, v80) == 1)
  {
    sub_64CE0(v79);
  }

  else
  {
    (*(v81 + 32))(v84, v79, v80);
    v72 = sub_7BCA4();
    v74 = v9;
    v10 = sub_612D8();
    v71 = *v10;
    v73 = v10[1];

    v122._countAndFlagsBits = v71;
    v122._object = v73;
    v75 = sub_7D014(v122);

    if (v75)
    {
      v111 = sub_7CF84("", 0, 1);
      v112 = v11;
      v107 = sub_7BC64();
      v69 = sub_1A88(&qword_90CB8);
      sub_702CC();
      sub_7CE34();
      v106 = v108;
      sub_1A88(&qword_925A0);
      sub_7D604();
      for (i = v77; ; i = v66)
      {
        v66 = i;
        sub_1A88(&qword_925A8);
        sub_7D614();
        v67 = v104;
        v68 = v105;
        if (!v105)
        {
          break;
        }

        v64 = v67;
        v65 = v68;
        v61 = v68;
        v58 = v67;
        v98 = v67;
        v99 = v68;
        v12 = sub_6313C();
        v59 = *v12;
        v60 = v12[1];

        v62 = sub_7CF94();

        v63 = v61;
        if (v62)
        {

          break;
        }

        v111 = v58;
        v112 = v61;
      }

      sub_B2C0();
      v55 = objc_opt_self();
      v53 = v111;
      v54 = v112;

      v56 = sub_7CF04();

      v57 = [v55 identifierFromDirectoryName:v56];

      if (v57)
      {
        v52 = v57;
        v47 = v57;
        v48 = sub_7CF14();
        v49 = v13;

        v50 = v48;
        v51 = v49;
      }

      else
      {
        v50 = 0;
        v51 = 0;
      }

      v45 = v51;
      v46 = v50;
      if (v51)
      {
        v43 = v46;
        v44 = v45;
        v14 = v66;
        v39 = v45;
        v40 = v46;
        v102 = v46;
        v103 = v45;

        v117 = v40;
        v118 = v39;

        sub_70354();
        v41 = sub_6FE88(v40, v39, 0);
        v42 = v14;
        if (v14)
        {

          v38 = 0;
        }

        else
        {
          v38 = v41;
        }

        v37 = v38;
        v101 = v38;
        v38;
        if (v37)
        {
          v36 = v37;
          v35 = v37;
          v100 = v37;
          v37;
          v34 = [v35 localizedName];
          v32 = sub_7CF14();
          v33 = v15;

          v115 = v32;
          v116 = v33;
        }
      }

      sub_1F58();
      (*(v81 + 8))(v84, v80);
    }

    else
    {
      (*(v81 + 8))(v84, v80);
    }
  }

  v94;
  v16 = sub_6D1E0(v94);
  v31 = v16;

  v120 = v16;

  v30 = &v117;
  v21 = v117;
  v23 = v118;

  v22 = &v114;
  v24 = 33;
  v25 = 0;
  swift_beginAccess();
  v17 = v23;
  v16[7] = v21;
  v16[8] = v17;

  swift_endAccess();

  v29 = &v115;
  v26 = v115;
  v28 = v116;

  v27 = &v113;
  swift_beginAccess();
  v18 = v28;
  v16[9] = v26;
  v16[10] = v18;

  swift_endAccess();

  sub_6AE48();

  sub_1F58();
  sub_1F58();

  return v31;
}

id sub_6FE88(uint64_t a1, uint64_t a2, char a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_708C0(a1, a2, a3 & 1);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_6FF1C()
{
  result = v0 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString;
  sub_1F58();
  return result;
}

uint64_t sub_6FF50()
{
  v1 = sub_6DF84();
  sub_1F58();
  return v1;
}

unint64_t sub_70040()
{
  v2 = qword_92550;
  if (!qword_92550)
  {
    sub_B24C(&qword_90B40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_700C8()
{
  v2 = qword_92560;
  if (!qword_92560)
  {
    sub_B24C(&qword_91870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_70150()
{
  v2 = qword_92568;
  if (!qword_92568)
  {
    type metadata accessor for Face();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_701D0()
{
  v2 = qword_92588;
  if (!qword_92588)
  {
    sub_B24C(&qword_91870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92588);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Family()
{
  v1 = qword_925E0;
  if (!qword_925E0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_702CC()
{
  v2 = qword_92598;
  if (!qword_92598)
  {
    sub_B24C(&qword_90CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_70354()
{
  v2 = qword_925B0;
  if (!qword_925B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_925B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_703D4()
{
  updated = sub_7BD04();
  if (v0 <= 0x3F)
  {
    updated = sub_70574();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_70574()
{
  v4 = qword_925F0;
  if (!qword_925F0)
  {
    v3 = sub_7BE34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_925F0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for FontAssetFamily()
{
  v1 = qword_92870;
  if (!qword_92870)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_70698()
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

uint64_t type metadata accessor for FontProviderFamily()
{
  v1 = qword_92B00;
  if (!qword_92B00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_70794()
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

unint64_t sub_70828()
{
  v2 = qword_92D68;
  if (!qword_92D68)
  {
    type metadata accessor for Family();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92D68);
    return WitnessTable;
  }

  return v2;
}

id sub_708C0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_7CF04();
  sub_1A88(&qword_92D70);
  sub_71B6C();
  sub_7D734();
  v8 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:v9];
  0;

  if (v8)
  {

    return v8;
  }

  else
  {
    sub_7BC04();

    swift_willThrow();

    return v4;
  }
}

uint64_t sub_70AB4(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v6 = (a3 + 1);
  }

  else
  {
    v8 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v6 = (v8 | (a3 >> 6)) + 33217;
    }

    else
    {
      v7 = (v8 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v6 = (v7 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v6 = ((a3 >> 18) | ((v7 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v5 = 4 - (__clz(v6) >> 3);
  v3.value._rawValue = &v10;
  v10 = (v6 - 0x101010101010101) & ((1 << ((8 * v5) & 0x3F)) - 1);
  sub_7D2D4(v3);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return a1(&v10, v5);
  }

  sub_7D624();
  __break(1u);
LABEL_12:
  result = sub_7D5E4();
  __break(1u);
  return result;
}

uint64_t sub_70DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_71B24;
        v16 = &v37;
        sub_70AB4(sub_71B40, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_7D5E4();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_7D5E4();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_7D5E4();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_7D5E4();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_7D5E4();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_7D5E4();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_7D5E4();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_7D5E4();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_7D5E4();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_7D5E4();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_7D5E4();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_7D5E4();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_7D624();
    __break(1u);
  }

  result = sub_7D5E4();
  __break(1u);
  return result;
}

uint64_t sub_71610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_7D5E4();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_7D5E4();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_7D5E4();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_7D5E4();
                __break(1u);
              }

              sub_7D5E4();
              __break(1u);
            }

            sub_7D5E4();
            __break(1u);
          }

          sub_7D5E4();
          __break(1u);
        }

        sub_7D5E4();
        __break(1u);
      }

      sub_7D5E4();
      __break(1u);
    }

    sub_7D5E4();
    __break(1u);
  }

  result = sub_7D5E4();
  __break(1u);
  return result;
}

unint64_t sub_71B6C()
{
  v2 = qword_92D78;
  if (!qword_92D78)
  {
    sub_B24C(&qword_92D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92D78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_71BF4()
{
  v4 = qword_92D80;
  if (!qword_92D80)
  {
    v3 = sub_7BB64();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_92D80);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_71C80()
{
  v2 = qword_92D90;
  if (!qword_92D90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_71CF8()
{
  v2 = qword_92D98;
  if (!qword_92D98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92D98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_71D5C()
{
  v2 = qword_92DA0;
  if (!qword_92DA0)
  {
    sub_71BF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_71E20(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v403 = a1;
  v402 = a2;
  v401 = a3;
  v396 = a4;
  v397 = a5;
  v398 = a6;
  v399 = a7;
  v400 = a8;
  v345 = sub_74B70;
  v346 = sub_76988;
  v347 = sub_77250;
  v348 = sub_76988;
  v349 = sub_76914;
  v350 = sub_76914;
  v351 = sub_769D4;
  v352 = sub_76914;
  v353 = sub_76914;
  v354 = sub_769D4;
  v355 = sub_74B70;
  v356 = sub_76988;
  v357 = sub_74B70;
  v358 = sub_76988;
  v359 = sub_76914;
  v360 = sub_76914;
  v361 = sub_769D4;
  v362 = sub_76914;
  v363 = sub_76914;
  v364 = sub_769D4;
  v365 = sub_74B70;
  v366 = sub_76988;
  v367 = sub_74B70;
  v368 = sub_76988;
  v369 = sub_76914;
  v370 = sub_76914;
  v371 = sub_769D4;
  v372 = sub_76914;
  v373 = sub_76914;
  v374 = sub_769D4;
  v375 = sub_74B70;
  v376 = sub_76988;
  v377 = sub_74B70;
  v378 = sub_76988;
  v379 = sub_76914;
  v380 = sub_76914;
  v381 = sub_769D4;
  v382 = sub_76914;
  v383 = sub_76914;
  v384 = sub_769D4;
  v385 = sub_74B70;
  v386 = sub_76988;
  v387 = sub_74B70;
  v388 = sub_76988;
  v389 = sub_76914;
  v390 = sub_76914;
  v391 = sub_769D4;
  v392 = sub_76914;
  v393 = sub_76914;
  v394 = sub_769D4;
  v460 = 0;
  v461 = 0;
  v459 = 0;
  v458 = 0;
  v456 = 0;
  v457 = 0;
  v455 = 0;
  v454 = 0;
  v452 = 0;
  v453 = 0;
  v449 = 0;
  v450 = 0;
  v395 = 0;
  v422 = 0;
  v404 = sub_7BDB4();
  v405 = *(v404 - 8);
  v406 = v404 - 8;
  v407 = (*(v405 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v403);
  v408 = v167 - v407;
  v409 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v410 = v167 - v409;
  v411 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10);
  v412 = v167 - v411;
  v413 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v12);
  v414 = v167 - v413;
  v415 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = __chkstk_darwin(v14);
  v416 = v167 - v415;
  v460 = v16;
  v461 = v17;
  v459 = v18 & 1;
  v458 = v19 & 1;
  v456 = v20;
  v457 = v21;
  v455 = v22;
  v454 = v23;
  if (v18)
  {
    if (*sub_7495C())
    {
      v322 = [objc_opt_self() callStackSymbols];
      v422 = sub_7D0A4();

      v323 = sub_1A88(&qword_90CB8);
      sub_77148();
      sub_7D374();
      v24 = v416;

      v25 = sub_74860();
      (*(v405 + 16))(v24, v25, v404);

      v330 = 32;
      v331 = 7;
      v26 = swift_allocObject();
      v27 = v402;
      v325 = v26;
      *(v26 + 16) = v403;
      *(v26 + 24) = v27;
      v324 = v422;

      v332 = swift_allocObject();
      *(v332 + 16) = v324;
      v343 = sub_7BD94();
      v344 = sub_7D394();
      v328 = 17;
      v334 = swift_allocObject();
      v327 = 34;
      *(v334 + 16) = 34;
      v335 = swift_allocObject();
      v329 = 8;
      *(v335 + 16) = 8;
      v28 = swift_allocObject();
      v29 = v325;
      v326 = v28;
      *(v28 + 16) = v345;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v326;
      v336 = v30;
      *(v30 + 16) = v346;
      *(v30 + 24) = v31;
      v337 = swift_allocObject();
      *(v337 + 16) = v327;
      v338 = swift_allocObject();
      *(v338 + 16) = v329;
      v32 = swift_allocObject();
      v33 = v332;
      v333 = v32;
      *(v32 + 16) = v347;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v333;
      v340 = v34;
      *(v34 + 16) = v348;
      *(v34 + 24) = v35;
      v342 = sub_1A88(&qword_92DD0);
      v339 = sub_7D714();
      v341 = v36;

      v37 = v334;
      v38 = v341;
      *v341 = v349;
      v38[1] = v37;

      v39 = v335;
      v40 = v341;
      v341[2] = v350;
      v40[3] = v39;

      v41 = v336;
      v42 = v341;
      v341[4] = v351;
      v42[5] = v41;

      v43 = v337;
      v44 = v341;
      v341[6] = v352;
      v44[7] = v43;

      v45 = v338;
      v46 = v341;
      v341[8] = v353;
      v46[9] = v45;

      v47 = v340;
      v48 = v341;
      v341[10] = v354;
      v48[11] = v47;
      sub_71DDC();

      if (os_log_type_enabled(v343, v344))
      {
        v49 = v395;
        v314 = sub_7D414();
        v313 = sub_1A88(&qword_92DD8);
        v315 = sub_74BBC(0);
        v316 = sub_74BBC(2);
        v318 = v421;
        v421[0] = v314;
        v319 = &v420;
        v420 = v315;
        v320 = &v419;
        v419 = v316;
        v317 = 2;
        sub_74C10(2, v421);
        sub_74C10(v317, v318);
        v417 = v349;
        v418 = v334;
        sub_74C24(&v417, v318, v319, v320);
        v321 = v49;
        if (v49)
        {

          __break(1u);
        }

        else
        {
          v417 = v350;
          v418 = v335;
          sub_74C24(&v417, v421, &v420, &v419);
          v311 = 0;
          v417 = v351;
          v418 = v336;
          sub_74C24(&v417, v421, &v420, &v419);
          v310 = 0;
          v417 = v352;
          v418 = v337;
          sub_74C24(&v417, v421, &v420, &v419);
          v309 = 0;
          v417 = v353;
          v418 = v338;
          sub_74C24(&v417, v421, &v420, &v419);
          v308 = 0;
          v417 = v354;
          v418 = v340;
          sub_74C24(&v417, v421, &v420, &v419);
          v307 = 0;
          _os_log_impl(&dword_0, v343, v344, "[%{public}s] -- stack --\n%{public}s", v314, 0x16u);
          sub_74C70(v315);
          sub_74C70(v316);
          sub_7D3F4();

          v312 = v307;
        }
      }

      else
      {
        v50 = v395;

        v312 = v50;
      }

      v305 = v312;

      (*(v405 + 8))(v416, v404);
      sub_B2C0();
      v306 = v305;
    }

    else
    {
      v306 = v395;
    }
  }

  else
  {
    v306 = v395;
  }

  v304 = v306;
  if (*sub_7495C())
  {

    v302 = v403;
    v303 = v402;
  }

  else
  {
    v302 = sub_7CF84("-", 1uLL, 1);
    v303 = v51;
  }

  v289 = v303;
  v290 = v302;
  v452 = v302;
  v453 = v303;

  v292 = &v451;
  v451 = v400;
  v291 = sub_1A88(&qword_90CB8);
  sub_64900();
  v293 = &type metadata for String;
  v295 = sub_7D134();
  sub_1A88(&qword_91DA8);
  v294 = sub_7D5C4();
  v296 = sub_7CF24();
  v297 = v52;

  v449 = v296;
  v450 = v297;
  v53 = sub_7D3A4();
  v300 = &v448;
  v448 = v53;
  v298 = &v447;
  v447 = v399;
  v299 = type metadata accessor for OSLogType();
  v301 = sub_749BC();
  if (sub_7CE84())
  {
    v54 = v414;
    v55 = sub_74860();
    (*(v405 + 16))(v54, v55, v404);

    v274 = 32;
    v275 = 7;
    v56 = swift_allocObject();
    v57 = v289;
    v270 = v56;
    *(v56 + 16) = v290;
    *(v56 + 24) = v57;

    v58 = swift_allocObject();
    v59 = v297;
    v276 = v58;
    *(v58 + 16) = v296;
    *(v58 + 24) = v59;
    v287 = sub_7BD94();
    v288 = sub_7D3A4();
    v272 = 17;
    v278 = swift_allocObject();
    *(v278 + 16) = 34;
    v279 = swift_allocObject();
    v273 = 8;
    *(v279 + 16) = 8;
    v60 = swift_allocObject();
    v61 = v270;
    v271 = v60;
    *(v60 + 16) = v385;
    *(v60 + 24) = v61;
    v62 = swift_allocObject();
    v63 = v271;
    v280 = v62;
    *(v62 + 16) = v386;
    *(v62 + 24) = v63;
    v281 = swift_allocObject();
    *(v281 + 16) = 33;
    v282 = swift_allocObject();
    *(v282 + 16) = v273;
    v64 = swift_allocObject();
    v65 = v276;
    v277 = v64;
    *(v64 + 16) = v387;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    v67 = v277;
    v284 = v66;
    *(v66 + 16) = v388;
    *(v66 + 24) = v67;
    v286 = sub_1A88(&qword_92DD0);
    v283 = sub_7D714();
    v285 = v68;

    v69 = v278;
    v70 = v285;
    *v285 = v389;
    v70[1] = v69;

    v71 = v279;
    v72 = v285;
    v285[2] = v390;
    v72[3] = v71;

    v73 = v280;
    v74 = v285;
    v285[4] = v391;
    v74[5] = v73;

    v75 = v281;
    v76 = v285;
    v285[6] = v392;
    v76[7] = v75;

    v77 = v282;
    v78 = v285;
    v285[8] = v393;
    v78[9] = v77;

    v79 = v284;
    v80 = v285;
    v285[10] = v394;
    v80[11] = v79;
    sub_71DDC();

    if (os_log_type_enabled(v287, v288))
    {
      v81 = v304;
      v263 = sub_7D414();
      v262 = sub_1A88(&qword_92DD8);
      v264 = sub_74BBC(0);
      v265 = sub_74BBC(2);
      v266 = &v427;
      v427 = v263;
      v267 = &v426;
      v426 = v264;
      v268 = &v425;
      v425 = v265;
      sub_74C10(3, &v427);
      sub_74C10(2, v266);
      v423 = v389;
      v424 = v278;
      sub_74C24(&v423, v266, v267, v268);
      v269 = v81;
      if (v81)
      {

        __break(1u);
      }

      else
      {
        v423 = v390;
        v424 = v279;
        sub_74C24(&v423, &v427, &v426, &v425);
        v261 = 0;
        v423 = v391;
        v424 = v280;
        sub_74C24(&v423, &v427, &v426, &v425);
        v260 = 0;
        v423 = v392;
        v424 = v281;
        sub_74C24(&v423, &v427, &v426, &v425);
        v259 = 0;
        v423 = v393;
        v424 = v282;
        sub_74C24(&v423, &v427, &v426, &v425);
        v258 = 0;
        v423 = v394;
        v424 = v284;
        sub_74C24(&v423, &v427, &v426, &v425);
        _os_log_impl(&dword_0, v287, v288, "[%{public}s] %{private}s", v263, 0x16u);
        sub_74C70(v264);
        sub_74C70(v265);
        sub_7D3F4();
      }
    }

    else
    {
    }

    (*(v405 + 8))(v414, v404);
  }

  else
  {
    v446 = sub_7D3B4();
    v445 = v399;
    if (sub_7CE84())
    {
      v82 = v412;
      v83 = sub_74860();
      (*(v405 + 16))(v82, v83, v404);

      v243 = 32;
      v244 = 7;
      v84 = swift_allocObject();
      v85 = v289;
      v239 = v84;
      *(v84 + 16) = v290;
      *(v84 + 24) = v85;

      v86 = swift_allocObject();
      v87 = v297;
      v245 = v86;
      *(v86 + 16) = v296;
      *(v86 + 24) = v87;
      v256 = sub_7BD94();
      v257 = sub_7D3B4();
      v241 = 17;
      v247 = swift_allocObject();
      *(v247 + 16) = 34;
      v248 = swift_allocObject();
      v242 = 8;
      *(v248 + 16) = 8;
      v88 = swift_allocObject();
      v89 = v239;
      v240 = v88;
      *(v88 + 16) = v375;
      *(v88 + 24) = v89;
      v90 = swift_allocObject();
      v91 = v240;
      v249 = v90;
      *(v90 + 16) = v376;
      *(v90 + 24) = v91;
      v250 = swift_allocObject();
      *(v250 + 16) = 33;
      v251 = swift_allocObject();
      *(v251 + 16) = v242;
      v92 = swift_allocObject();
      v93 = v245;
      v246 = v92;
      *(v92 + 16) = v377;
      *(v92 + 24) = v93;
      v94 = swift_allocObject();
      v95 = v246;
      v253 = v94;
      *(v94 + 16) = v378;
      *(v94 + 24) = v95;
      v255 = sub_1A88(&qword_92DD0);
      v252 = sub_7D714();
      v254 = v96;

      v97 = v247;
      v98 = v254;
      *v254 = v379;
      v98[1] = v97;

      v99 = v248;
      v100 = v254;
      v254[2] = v380;
      v100[3] = v99;

      v101 = v249;
      v102 = v254;
      v254[4] = v381;
      v102[5] = v101;

      v103 = v250;
      v104 = v254;
      v254[6] = v382;
      v104[7] = v103;

      v105 = v251;
      v106 = v254;
      v254[8] = v383;
      v106[9] = v105;

      v107 = v253;
      v108 = v254;
      v254[10] = v384;
      v108[11] = v107;
      sub_71DDC();

      if (os_log_type_enabled(v256, v257))
      {
        v109 = v304;
        v232 = sub_7D414();
        v231 = sub_1A88(&qword_92DD8);
        v233 = sub_74BBC(0);
        v234 = sub_74BBC(2);
        v235 = &v432;
        v432 = v232;
        v236 = &v431;
        v431 = v233;
        v237 = &v430;
        v430 = v234;
        sub_74C10(3, &v432);
        sub_74C10(2, v235);
        v428 = v379;
        v429 = v247;
        sub_74C24(&v428, v235, v236, v237);
        v238 = v109;
        if (v109)
        {

          __break(1u);
        }

        else
        {
          v428 = v380;
          v429 = v248;
          sub_74C24(&v428, &v432, &v431, &v430);
          v230 = 0;
          v428 = v381;
          v429 = v249;
          sub_74C24(&v428, &v432, &v431, &v430);
          v229 = 0;
          v428 = v382;
          v429 = v250;
          sub_74C24(&v428, &v432, &v431, &v430);
          v228 = 0;
          v428 = v383;
          v429 = v251;
          sub_74C24(&v428, &v432, &v431, &v430);
          v227 = 0;
          v428 = v384;
          v429 = v253;
          sub_74C24(&v428, &v432, &v431, &v430);
          _os_log_impl(&dword_0, v256, v257, "[%{public}s] %{private}s", v232, 0x16u);
          sub_74C70(v233);
          sub_74C70(v234);
          sub_7D3F4();
        }
      }

      else
      {
      }

      (*(v405 + 8))(v412, v404);
    }

    else
    {
      v444 = sub_7D384();
      v443 = v399;
      if (sub_7CE84())
      {
        if (*sub_7495C())
        {
          v226 = 1;
        }

        else
        {
          v226 = v396;
        }

        if (v226)
        {
          v110 = v410;
          v111 = sub_74860();
          (*(v405 + 16))(v110, v111, v404);

          v211 = 32;
          v212 = 7;
          v112 = swift_allocObject();
          v113 = v289;
          v207 = v112;
          *(v112 + 16) = v290;
          *(v112 + 24) = v113;

          v114 = swift_allocObject();
          v115 = v297;
          v213 = v114;
          *(v114 + 16) = v296;
          *(v114 + 24) = v115;
          v224 = sub_7BD94();
          v225 = sub_7D384();
          v209 = 17;
          v215 = swift_allocObject();
          *(v215 + 16) = 34;
          v216 = swift_allocObject();
          v210 = 8;
          *(v216 + 16) = 8;
          v116 = swift_allocObject();
          v117 = v207;
          v208 = v116;
          *(v116 + 16) = v365;
          *(v116 + 24) = v117;
          v118 = swift_allocObject();
          v119 = v208;
          v217 = v118;
          *(v118 + 16) = v366;
          *(v118 + 24) = v119;
          v218 = swift_allocObject();
          *(v218 + 16) = 33;
          v219 = swift_allocObject();
          *(v219 + 16) = v210;
          v120 = swift_allocObject();
          v121 = v213;
          v214 = v120;
          *(v120 + 16) = v367;
          *(v120 + 24) = v121;
          v122 = swift_allocObject();
          v123 = v214;
          v221 = v122;
          *(v122 + 16) = v368;
          *(v122 + 24) = v123;
          v223 = sub_1A88(&qword_92DD0);
          v220 = sub_7D714();
          v222 = v124;

          v125 = v215;
          v126 = v222;
          *v222 = v369;
          v126[1] = v125;

          v127 = v216;
          v128 = v222;
          v222[2] = v370;
          v128[3] = v127;

          v129 = v217;
          v130 = v222;
          v222[4] = v371;
          v130[5] = v129;

          v131 = v218;
          v132 = v222;
          v222[6] = v372;
          v132[7] = v131;

          v133 = v219;
          v134 = v222;
          v222[8] = v373;
          v134[9] = v133;

          v135 = v221;
          v136 = v222;
          v222[10] = v374;
          v136[11] = v135;
          sub_71DDC();

          if (os_log_type_enabled(v224, v225))
          {
            v137 = v304;
            v200 = sub_7D414();
            v199 = sub_1A88(&qword_92DD8);
            v201 = sub_74BBC(0);
            v202 = sub_74BBC(2);
            v203 = &v437;
            v437 = v200;
            v204 = &v436;
            v436 = v201;
            v205 = &v435;
            v435 = v202;
            sub_74C10(3, &v437);
            sub_74C10(2, v203);
            v433 = v369;
            v434 = v215;
            sub_74C24(&v433, v203, v204, v205);
            v206 = v137;
            if (v137)
            {

              __break(1u);
            }

            else
            {
              v433 = v370;
              v434 = v216;
              sub_74C24(&v433, &v437, &v436, &v435);
              v198 = 0;
              v433 = v371;
              v434 = v217;
              sub_74C24(&v433, &v437, &v436, &v435);
              v197 = 0;
              v433 = v372;
              v434 = v218;
              sub_74C24(&v433, &v437, &v436, &v435);
              v196 = 0;
              v433 = v373;
              v434 = v219;
              sub_74C24(&v433, &v437, &v436, &v435);
              v195 = 0;
              v433 = v374;
              v434 = v221;
              sub_74C24(&v433, &v437, &v436, &v435);
              _os_log_impl(&dword_0, v224, v225, "[%{public}s] %{private}s", v200, 0x16u);
              sub_74C70(v201);
              sub_74C70(v202);
              sub_7D3F4();
            }
          }

          else
          {
          }

          (*(v405 + 8))(v410, v404);
        }
      }

      else
      {
        if (*sub_7495C())
        {
          v194 = 1;
        }

        else
        {
          v194 = v396;
        }

        if (v194)
        {
          v138 = v408;
          v139 = sub_74860();
          (*(v405 + 16))(v138, v139, v404);

          v179 = 32;
          v180 = 7;
          v140 = swift_allocObject();
          v141 = v289;
          v175 = v140;
          *(v140 + 16) = v290;
          *(v140 + 24) = v141;

          v142 = swift_allocObject();
          v143 = v297;
          v181 = v142;
          *(v142 + 16) = v296;
          *(v142 + 24) = v143;
          v192 = sub_7BD94();
          v193 = sub_7D394();
          v177 = 17;
          v183 = swift_allocObject();
          *(v183 + 16) = 34;
          v184 = swift_allocObject();
          v178 = 8;
          *(v184 + 16) = 8;
          v144 = swift_allocObject();
          v145 = v175;
          v176 = v144;
          *(v144 + 16) = v355;
          *(v144 + 24) = v145;
          v146 = swift_allocObject();
          v147 = v176;
          v185 = v146;
          *(v146 + 16) = v356;
          *(v146 + 24) = v147;
          v186 = swift_allocObject();
          *(v186 + 16) = 33;
          v187 = swift_allocObject();
          *(v187 + 16) = v178;
          v148 = swift_allocObject();
          v149 = v181;
          v182 = v148;
          *(v148 + 16) = v357;
          *(v148 + 24) = v149;
          v150 = swift_allocObject();
          v151 = v182;
          v189 = v150;
          *(v150 + 16) = v358;
          *(v150 + 24) = v151;
          v191 = sub_1A88(&qword_92DD0);
          v188 = sub_7D714();
          v190 = v152;

          v153 = v183;
          v154 = v190;
          *v190 = v359;
          v154[1] = v153;

          v155 = v184;
          v156 = v190;
          v190[2] = v360;
          v156[3] = v155;

          v157 = v185;
          v158 = v190;
          v190[4] = v361;
          v158[5] = v157;

          v159 = v186;
          v160 = v190;
          v190[6] = v362;
          v160[7] = v159;

          v161 = v187;
          v162 = v190;
          v190[8] = v363;
          v162[9] = v161;

          v163 = v189;
          v164 = v190;
          v190[10] = v364;
          v164[11] = v163;
          sub_71DDC();

          if (os_log_type_enabled(v192, v193))
          {
            v165 = v304;
            v168 = sub_7D414();
            v167[5] = sub_1A88(&qword_92DD8);
            v169 = sub_74BBC(0);
            v170 = sub_74BBC(2);
            v171 = &v442;
            v442 = v168;
            v172 = &v441;
            v441 = v169;
            v173 = &v440;
            v440 = v170;
            sub_74C10(3, &v442);
            sub_74C10(2, v171);
            v438 = v359;
            v439 = v183;
            sub_74C24(&v438, v171, v172, v173);
            v174 = v165;
            if (v165)
            {

              __break(1u);
            }

            else
            {
              v438 = v360;
              v439 = v184;
              sub_74C24(&v438, &v442, &v441, &v440);
              v167[4] = 0;
              v438 = v361;
              v439 = v185;
              sub_74C24(&v438, &v442, &v441, &v440);
              v167[3] = 0;
              v438 = v362;
              v439 = v186;
              sub_74C24(&v438, &v442, &v441, &v440);
              v167[2] = 0;
              v438 = v363;
              v439 = v187;
              sub_74C24(&v438, &v442, &v441, &v440);
              v167[1] = 0;
              v438 = v364;
              v439 = v189;
              sub_74C24(&v438, &v442, &v441, &v440);
              _os_log_impl(&dword_0, v192, v193, "[%{public}s] %{private}s", v168, 0x16u);
              sub_74C70(v169);
              sub_74C70(v170);
              sub_7D3F4();
            }
          }

          else
          {
          }

          (*(v405 + 8))(v408, v404);
        }
      }
    }
  }
}

uint64_t sub_747CC()
{
  v1 = sub_7BDB4();
  sub_77460(v1, qword_92DA8);
  sub_77408(v1, qword_92DA8);
  sub_6305C();

  sub_7CF84("events", 6uLL, 1);
  return sub_7BDA4();
}

uint64_t sub_74860()
{
  if (qword_90A78 != -1)
  {
    swift_once();
  }

  v0 = sub_7BDB4();
  return sub_77408(v0, qword_92DA8);
}

uint64_t sub_748CC()
{
  sub_6305C();

  sub_7CF54();

  has_internal_content = os_variant_has_internal_content();
  swift_unknownObjectRelease();

  result = has_internal_content;
  byte_92DC0 = has_internal_content;
  return result;
}

char *sub_7495C()
{
  if (qword_90A80 != -1)
  {
    swift_once();
  }

  return &byte_92DC0;
}

unint64_t sub_749BC()
{
  v2 = qword_92DC8;
  if (!qword_92DC8)
  {
    type metadata accessor for OSLogType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92DC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_74A70()
{

  sub_7CF84("\n", 1uLL, 1);
  sub_1A88(&qword_90CB8);
  sub_702CC();
  v1 = sub_7CE44();

  sub_B2C0();
  return v1;
}

uint64_t sub_74B70()
{
  result = *(v0 + 16);
  sub_74A3C();
  return result;
}

uint64_t sub_74BBC(uint64_t a1)
{
  if (a1)
  {
    return sub_7D414();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_74C10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_74C70(uint64_t a1)
{
  if (a1)
  {
    sub_7D404();
    sub_7D3F4();
  }
}

void *sub_74D00(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_74D9C(v4, v5, a3);
  v8 = *a1;

  sub_7D434();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_74D9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_74F40(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_13E9C(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_B864(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_13E9C(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_B864(v13);
  }

  return v11;
}

uint64_t sub_74F40(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_7D5E4();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_752F8(v22, v17, v16);
        sub_7D444();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_75474(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_7D544();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_7D5E4();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_752F8(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_7D624();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_7D624();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_75474(uint64_t a1, uint64_t a2)
{
  v7 = sub_75530(a1, a2);
  sub_1A88(&qword_92DE8);
  inited = swift_initStackObject();
  v3 = sub_2DE00(inited, 1);
  *v4 = 0;
  sub_2DE4C();
  sub_75D40(v3);

  v8 = sub_760E8(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_75530(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_7CFC4();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_76608();
  }

  v10 = sub_76100(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_7D624();
    __break(1u);
    return sub_76608();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_76244(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_7D544();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_76244(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_7D514();
  if (v2)
  {
LABEL_29:
    sub_7D5E4();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_7D5E4();
    __break(1u);
  }

  sub_1F58();
  return v10;
}

void sub_75D40(uint64_t a1)
{
  v18 = sub_760E8(a1);
  v2 = sub_760E8(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_76638(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_7D624();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_767A4(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_7D5E4();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_7D5E4();
    __break(1u);
    goto LABEL_21;
  }

  sub_76244((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_2DF1C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_76100(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1A88(&qword_92DE8);
    v5 = swift_allocObject();

    if (sub_2DE80())
    {
      v3 = sub_774FC(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_76244(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_7D624();
    __break(1u);
  }

  result = sub_7D624();
  __break(1u);
  return result;
}

uint64_t sub_76394(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_7CFE4();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_7D5E4();
    __break(1u);
  }

  v5 = sub_7D004();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_76638(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_76100(v4, v6);
  if (v7)
  {
    sub_767AC((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_76244((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_767AC(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_7D624();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_768D4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_77148()
{
  v2 = qword_92DE0;
  if (!qword_92DE0)
  {
    sub_B24C(&qword_90CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92DE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_77408(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_77460(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_775C4@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v7 = 0;
  v6 = sub_778A8;
  v8 = &unk_811B0;
  v14 = &opaque type descriptor for <<opaque return type of SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)>>;
  v26 = 0;
  v12 = sub_1A88(&qword_92DF0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v3 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v11 = &v3 - v3;
  v21 = sub_1A88(&qword_92DF8);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v4 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v19 = &v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v4);
  v20 = &v3 - v5;
  v26 = &v3 - v5;
  sub_77A1C();
  sub_7CD74();
  v13 = sub_78AD4();
  sub_7CD34();
  (*(v9 + 8))(v11, v12);
  v24 = v12;
  v25 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_1991C(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_778A8@<X0>(uint64_t a1@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[0] = sub_3F110();
  v10[1] = v1;
  v11 = v2 & 1;
  sub_77A1C();
  sub_1991C(v10, &unk_8EFB8, &v12);
  sub_3F570();
  v4 = v12;
  v5 = v13;
  v6 = v14;
  sub_3AF28();
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6 & 1;
  sub_1991C(v8, &unk_8EFB8, a1);
  sub_3F570();
  sub_3F570();
}

unint64_t sub_77A1C()
{
  v2 = qword_92E00;
  if (!qword_92E00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92E00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_77A94(uint64_t a1, uint64_t a2)
{
  v2[15] = a2;
  v2[14] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[2] = 0;
  v2[3] = 0;
  sub_1A88(&qword_90B50);
  v2[16] = swift_task_alloc();
  v3 = sub_7C0C4();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = sub_7BCD4();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  sub_1A88(&qword_92EB0);
  v2[24] = swift_task_alloc();
  v5 = sub_7BBC4();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[13] = a2;
  sub_7D184();
  v2[28] = sub_7D174();
  v6 = sub_7D154();

  return _swift_task_switch(sub_77D38, v6);
}

uint64_t sub_77D38()
{
  v113 = v0[26];
  v115 = v0[25];
  v114 = v0[24];
  v110 = v0[23];
  v109 = v0[22];
  v111 = v0[21];
  v0[12] = v0;
  sub_7CD54();
  sub_7BBA4();
  v112 = *(v109 + 8);
  v112(v110, v111);
  if ((*(v113 + 48))(v114, 1, v115) == 1)
  {
    v105 = *(v108 + 160);
    v106 = *(v108 + 136);
    v107 = *(v108 + 120);
    v104 = *(v108 + 144);
    sub_78F7C(*(v108 + 192));
    v100 = sub_7CF84("body", 4uLL, 1);
    v103 = v1;
    v98 = sub_7CF84("⛓️‍💥 Failed to retrieve URL components from URL.", 0x39uLL, 0);
    v102 = v2;
    v99 = sub_7D3A4();
    v101 = sub_7D714();
    v97 = sub_4754();
    v3 = sub_4754();
    sub_71E20(v100, v103, v97 & 1, v3 & 1, v98, v102, v99, v101);

    sub_7CD44();
    sub_7CD64();
    (*(v104 + 8))(v105, v106);
    sub_78B5C(v107);
  }

  else
  {
    v96 = *(v108 + 168);
    v95 = *(v108 + 128);
    v94 = *(v108 + 176);
    (*(*(v108 + 208) + 32))(*(v108 + 216), *(v108 + 192), *(v108 + 200));
    sub_7BBB4();
    if ((*(v94 + 48))(v95, 1, v96) == 1)
    {
      sub_64CE0(*(v108 + 128));
      v92 = 0;
      v93 = 0;
    }

    else
    {
      v89 = *(v108 + 168);
      v88 = *(v108 + 128);
      v90 = sub_7BC74();
      v91 = v4;
      v112(v88, v89);
      v92 = v90;
      v93 = v91;
    }

    if (v93)
    {
      *(v108 + 16) = v92;
      *(v108 + 24) = v93;
      sub_7CD44();
      v83 = sub_7CF84("body", 4uLL, 1);
      v86 = v5;
      *(v108 + 32) = sub_7D704();
      *(v108 + 40) = v6;
      v117._countAndFlagsBits = sub_7CF84("🔗 Handling ", 0xEuLL, 0);
      sub_7D6F4(v117);

      *(v108 + 48) = v92;
      *(v108 + 56) = v93;
      sub_7D6E4();
      v118._countAndFlagsBits = sub_7CF84("", 0, 1);
      sub_7D6F4(v118);

      sub_1F58();
      v82 = sub_7CF74();
      v85 = v7;
      v84 = sub_7D714();
      v80 = sub_4754();
      v81 = sub_4754();
      v8 = sub_4760();
      sub_71E20(v83, v86, v80 & 1, v81 & 1, v82, v85, v8, v84);

      sub_79484(0);
      v87 = sub_7CF94();

      if (v87)
      {
        v62 = sub_7CF84("body", 4uLL, 1);
        v65 = v12;
        v61 = sub_7CF84("🔗 Redirecting to System Fonts)", 0x21uLL, 0);
        v64 = v13;
        v63 = sub_7D714();
        v59 = sub_4754();
        v60 = sub_4754();
        v14 = sub_4760();
        sub_71E20(v62, v65, v59 & 1, v60 & 1, v61, v64, v14, v63);

        *(v108 + 234) = 0;
        sub_19E54();
        sub_7C0B4();
      }

      else
      {
        sub_79484(1);
        v58 = sub_7CF94();

        if (v58)
        {
          v54 = sub_7CF84("body", 4uLL, 1);
          v57 = v15;
          v53 = sub_7CF84("🔗 Redirecting to User Fonts)", 0x1FuLL, 0);
          v56 = v16;
          v55 = sub_7D714();
          v51 = sub_4754();
          v52 = sub_4754();
          v17 = sub_4760();
          sub_71E20(v54, v57, v51 & 1, v52 & 1, v53, v56, v17, v55);

          *(v108 + 233) = 1;
          sub_19E54();
          sub_7C0B4();
        }

        else
        {
          sub_79484(2);
          v50 = sub_7CF94();

          if (v50)
          {
            v46 = sub_7CF84("body", 4uLL, 1);
            v49 = v18;
            v45 = sub_7CF84("🔗 Redirecting to More Fonts)", 0x1FuLL, 0);
            v48 = v19;
            v47 = sub_7D714();
            v43 = sub_4754();
            v44 = sub_4754();
            v20 = sub_4760();
            sub_71E20(v46, v49, v43 & 1, v44 & 1, v45, v48, v20, v47);

            *(v108 + 232) = 2;
            sub_19E54();
            sub_7C0B4();
          }

          else
          {
            v39 = sub_7CF84("body", 4uLL, 1);
            v42 = v21;
            *(v108 + 64) = sub_7D704();
            *(v108 + 72) = v22;
            v119._countAndFlagsBits = sub_7CF84("🔗 Last path component not recognized: ", 0x29uLL, 0);
            sub_7D6F4(v119);

            *(v108 + 80) = v92;
            *(v108 + 88) = v93;
            sub_7D6E4();
            v120._countAndFlagsBits = sub_7CF84("", 0, 1);
            sub_7D6F4(v120);

            sub_1F58();
            v38 = sub_7CF74();
            v41 = v23;
            v40 = sub_7D714();
            v36 = sub_4754();
            v37 = sub_4754();
            v24 = sub_4760();
            sub_71E20(v39, v42, v36 & 1, v37 & 1, v38, v41, v24, v40);
          }
        }
      }

      v33 = *(v108 + 216);
      v34 = *(v108 + 200);
      v28 = *(v108 + 160);
      v29 = *(v108 + 152);
      v30 = *(v108 + 136);
      v35 = *(v108 + 120);
      v32 = *(v108 + 208);
      v27 = *(v108 + 144);
      (*(v27 + 16))();
      sub_7CD64();
      v31 = *(v27 + 8);
      v31(v28, v30);
      v31(v29, v30);

      (*(v32 + 8))(v33, v34);
      sub_78B5C(v35);
    }

    else
    {
      v77 = *(v108 + 216);
      v78 = *(v108 + 200);
      v74 = *(v108 + 160);
      v75 = *(v108 + 136);
      v79 = *(v108 + 120);
      v76 = *(v108 + 208);
      v73 = *(v108 + 144);
      v69 = sub_7CF84("body", 4uLL, 1);
      v72 = v9;
      v67 = sub_7CF84("⛓️‍💥 Failed to retrieve last path component from URL.", 0x3EuLL, 0);
      v71 = v10;
      v68 = sub_7D3A4();
      v70 = sub_7D714();
      v66 = sub_4754();
      v11 = sub_4754();
      sub_71E20(v69, v72, v66 & 1, v11 & 1, v67, v71, v68, v70);

      sub_7CD44();
      sub_7CD64();
      (*(v73 + 8))(v74, v75);
      (*(v76 + 8))(v77, v78);
      sub_78B5C(v79);
    }
  }

  v25 = *(*(v108 + 96) + 8);

  return v25();
}

unint64_t sub_78AD4()
{
  v2 = qword_92E08;
  if (!qword_92E08)
  {
    sub_B24C(&qword_92DF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92E08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_78B5C(uint64_t a1)
{
  v12 = a1;
  v38 = 0;
  v26 = 0;
  v17 = sub_7BCD4();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v16 = &v9 - v10;
  v38 = v1;
  v21 = 1;
  v31 = sub_7CF84("body", 4uLL, 1);
  v34 = v2;
  v11 = 23;
  v3 = sub_7D704();
  v23 = &v36;
  v36 = v3;
  v37 = v4;
  v39._countAndFlagsBits = sub_7CF84("🔗 Complete handling ", v11, 0);
  object = v39._object;
  sub_7D6F4(v39);

  sub_7CD54();
  v18 = sub_7BC54();
  v19 = v5;
  (*(v14 + 8))(v16, v17);
  v20 = v35;
  v35[0] = v18;
  v35[1] = v19;
  v27 = &type metadata for String;
  sub_7D6E4();
  sub_1F58();
  v40._countAndFlagsBits = sub_7CF84("", v26, v21 & 1);
  v22 = v40._object;
  sub_7D6F4(v40);

  v25 = v36;
  v24 = v37;

  sub_1F58();
  v30 = sub_7CF74();
  v33 = v6;
  v32 = sub_7D714();
  v28 = sub_4754();
  v29 = sub_4754();
  v7 = sub_4760();
  sub_71E20(v31, v34, v28 & 1, v29 & 1, v30, v33, v7, v32);
}

uint64_t sub_78E2C()
{
  sub_B24C(&qword_92DF0);
  sub_78AD4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_78F00()
{
  v2 = qword_92EA8;
  if (!qword_92EA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92EA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_78F7C(uint64_t a1)
{
  v3 = sub_7BBC4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_79024@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = a2;
  v6 = a1;
  v12 = 0;
  v7 = sub_7CEF4();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v5 - v10;
  v12 = __chkstk_darwin(v6);
  if (v12)
  {
    if (v6 == 1)
    {
      v3 = sub_7979C();
    }

    else
    {
      v3 = sub_79808();
    }

    (*(v8 + 16))(v11, v3, v7);
  }

  else
  {
    v2 = sub_79730();
    (*(v8 + 16))(v11, v2, v7);
  }

  return (*(v8 + 32))(v5, v11, v7);
}

uint64_t *sub_791C4()
{
  if (qword_90A90 != -1)
  {
    swift_once();
  }

  return &qword_94EF8;
}

uint64_t sub_79224()
{
  if (qword_90A88 != -1)
  {
    swift_once();
  }

  v0 = sub_7BCD4();
  return sub_77408(v0, qword_94EE0);
}

uint64_t sub_79290@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v11 = a1;
  v25 = 0;
  v8[1] = 0;
  v18 = sub_7BC44();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v9 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = v8 - v9;
  v22 = sub_7BCD4();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v2 = v8 - v10;
  v23 = v8 - v10;
  v25 = v3;
  v4 = sub_79224();
  (*(v20 + 16))(v2, v4, v22);
  v5 = sub_79484(v11);
  v19 = v24;
  v24[0] = v5;
  v24[1] = v6;
  v14 = sub_198A4();
  v13 = &type metadata for String;
  sub_79994(v17);
  sub_7BCC4();
  (*(v15 + 8))(v17, v18);
  sub_1F58();
  return (*(v20 + 8))(v23, v22);
}

uint64_t sub_79484(char a1)
{
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = sub_798D4();
    }

    else
    {
      v2 = sub_79934();
    }

    sub_13F00(v2, &v4);
  }

  else
  {
    v1 = sub_79874();
    sub_13F00(v1, &v4);
  }

  return v4;
}

uint64_t sub_79508()
{
  v3[0] = "Fatal error";
  v3[1] = "Unexpectedly found nil while unwrapping an Optional value";
  v3[2] = "FontSettings/Shared.swift";
  v0 = sub_1A88(&qword_90B50);
  v4 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v9 = v3 - v4;
  v10 = sub_7BCD4();
  v5 = qword_94EE0;
  sub_77460(v10, qword_94EE0);
  v6 = sub_77408(v10, v5);
  v1 = sub_796D0();
  v7 = *v1;
  v8 = v1[1];

  sub_7BCB4();

  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, 1) == 1)
  {
    sub_7D5E4();
    __break(1u);
  }

  return (*(v11 + 32))(v6, v9, v10);
}

uint64_t *sub_796D0()
{
  if (qword_90A98 != -1)
  {
    swift_once();
  }

  return &qword_94F08;
}

uint64_t sub_79730()
{
  if (qword_90AA0 != -1)
  {
    swift_once();
  }

  v0 = sub_7CEF4();
  return sub_77408(v0, qword_94F18);
}

uint64_t sub_7979C()
{
  if (qword_90AA8 != -1)
  {
    swift_once();
  }

  v0 = sub_7CEF4();
  return sub_77408(v0, qword_94F30);
}

uint64_t sub_79808()
{
  if (qword_90AB0 != -1)
  {
    swift_once();
  }

  v0 = sub_7CEF4();
  return sub_77408(v0, qword_94F48);
}

uint64_t *sub_79874()
{
  if (qword_90AB8 != -1)
  {
    swift_once();
  }

  return &qword_94F60;
}

uint64_t *sub_798D4()
{
  if (qword_90AC0 != -1)
  {
    swift_once();
  }

  return &qword_94F70;
}

uint64_t *sub_79934()
{
  if (qword_90AC8 != -1)
  {
    swift_once();
  }

  return &qword_94F80;
}

uint64_t sub_79994@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v1 = sub_7BC44();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

BOOL sub_79A04(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_79AEC()
{
  result = sub_7D714();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_71DDC();
  return result;
}

uint64_t sub_79CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_79AEC();
  *a1 = result;
  return result;
}

uint64_t sub_79CCC()
{
  result = sub_7CF84("com.apple.graphic-icon.fonts", 0x1CuLL, 1);
  qword_94EF8 = result;
  qword_94F00 = v1;
  return result;
}

uint64_t sub_79D10()
{
  v1 = *sub_791C4();

  return v1;
}

uint64_t sub_79D4C()
{
  result = sub_7CF84("settings-navigation://com.apple.Settings.General/FONT_SETTING", 0x3DuLL, 1);
  qword_94F08 = result;
  qword_94F10 = v1;
  return result;
}

uint64_t sub_79D90()
{
  v1 = *sub_796D0();

  return v1;
}

uint64_t sub_79DCC()
{
  v1 = sub_7CEF4();
  sub_77460(v1, qword_94F18);
  sub_77408(v1, qword_94F18);
  sub_7CF84("System Fonts", 0xCuLL, 1);
  return sub_7CE94();
}

uint64_t sub_79E38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_79730();
  v1 = sub_7CEF4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_79E9C()
{
  v1 = sub_7CEF4();
  sub_77460(v1, qword_94F30);
  sub_77408(v1, qword_94F30);
  sub_7CF84("My Fonts", 8uLL, 1);
  return sub_7CE94();
}

uint64_t sub_79F08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_7979C();
  v1 = sub_7CEF4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_79F6C()
{
  v1 = sub_7CEF4();
  sub_77460(v1, qword_94F48);
  sub_77408(v1, qword_94F48);
  sub_7CF84("More Fonts", 0xAuLL, 1);
  return sub_7CE94();
}

uint64_t sub_79FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_79808();
  v1 = sub_7CEF4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_7A03C()
{
  result = sub_7CF84("SYSTEM_FONTS", 0xCuLL, 1);
  qword_94F60 = result;
  qword_94F68 = v1;
  return result;
}

uint64_t sub_7A080()
{
  v1 = *sub_79874();

  return v1;
}

uint64_t sub_7A0BC()
{
  result = sub_7CF84("USER_FONTS", 0xAuLL, 1);
  qword_94F70 = result;
  qword_94F78 = v1;
  return result;
}

uint64_t sub_7A100()
{
  v1 = *sub_798D4();

  return v1;
}

uint64_t sub_7A13C()
{
  result = sub_7CF84("MORE_FONTS", 0xAuLL, 1);
  qword_94F80 = result;
  qword_94F88 = v1;
  return result;
}

uint64_t sub_7A180()
{
  v1 = *sub_79934();

  return v1;
}

unint64_t sub_7A224()
{
  v2 = qword_92EB8;
  if (!qword_92EB8)
  {
    sub_B24C(&qword_92EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92EB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7A2C4()
{
  v2 = qword_92EC8;
  if (!qword_92EC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92EC8);
    return WitnessTable;
  }

  return v2;
}

void sub_7A340(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TopNavigationController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
}

void sub_7A4B4()
{
  v72 = 0;
  v0;
  v71.receiver = v0;
  v71.super_class = type metadata accessor for TopNavigationController();
  objc_msgSendSuper2(&v71, "viewDidLoad");

  sub_1A88(&qword_92ED0);
  sub_3F110();
  v68 = sub_7C374();
  [v69 addChildViewController:?];
  v69;
  v70 = [v69 view];

  if (v70)
  {
    v67 = v70;
  }

  else
  {
    LOBYTE(v2) = 2;
    v12 = 23;
    LODWORD(v22) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v68;
  v66 = [v68 view];

  if (v66)
  {
    v65 = v66;
  }

  else
  {
    LOBYTE(v2) = 2;
    v12 = 23;
    LODWORD(v22) = 0;
    sub_7D5E4();
    __break(1u);
  }

  [v67 addSubview:{v2, v12, v22}];

  v69;
  [v68 didMoveToParentViewController:v69];

  v68;
  v64 = [v68 view];

  if (v64)
  {
    v63 = v64;
  }

  else
  {
    LOBYTE(v3) = 2;
    v13 = 26;
    LODWORD(v23) = 0;
    sub_7D5E4();
    __break(1u);
  }

  [v63 setTranslatesAutoresizingMaskIntoConstraints:{0, v3, v13, v23}];

  v60 = objc_opt_self();
  sub_7B0CC();
  sub_7D714();
  v61 = v1;
  v68;
  v62 = [v68 view];

  if (v62)
  {
    v59 = v62;
  }

  else
  {
    LOBYTE(v4) = 2;
    v14 = 28;
    LODWORD(v24) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v57 = [v59 topAnchor];

  v69;
  v58 = [v69 view];

  if (v58)
  {
    v56 = v58;
  }

  else
  {
    LOBYTE(v5) = 2;
    v15 = 28;
    LODWORD(v25) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v53 = [v56 topAnchor];

  v54 = [v57 constraintEqualToAnchor:v53];
  *v61 = v54;
  v68;
  v55 = [v68 view];

  if (v55)
  {
    v52 = v55;
  }

  else
  {
    LOBYTE(v6) = 2;
    v16 = 29;
    LODWORD(v26) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v50 = [v52 bottomAnchor];

  v69;
  v51 = [v69 view];

  if (v51)
  {
    v49 = v51;
  }

  else
  {
    LOBYTE(v7) = 2;
    v17 = 29;
    LODWORD(v27) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v46 = [v49 bottomAnchor];

  v47 = [v50 constraintEqualToAnchor:v46];
  v61[1] = v47;
  v68;
  v48 = [v68 view];

  if (v48)
  {
    v45 = v48;
  }

  else
  {
    LOBYTE(v8) = 2;
    v18 = 30;
    LODWORD(v28) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v43 = [v45 leadingAnchor];

  v69;
  v44 = [v69 view];

  if (v44)
  {
    v42 = v44;
  }

  else
  {
    LOBYTE(v9) = 2;
    v19 = 30;
    LODWORD(v29) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v39 = [v42 leadingAnchor];

  v40 = [v43 constraintEqualToAnchor:v39];
  v61[2] = v40;
  v68;
  v41 = [v68 view];

  if (v41)
  {
    v38 = v41;
  }

  else
  {
    LOBYTE(v10) = 2;
    v20 = 31;
    LODWORD(v30) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v36 = [v38 trailingAnchor];

  v69;
  v37 = [v69 view];

  if (v37)
  {
    v35 = v37;
  }

  else
  {
    LOBYTE(v11) = 2;
    v21 = 31;
    LODWORD(v31) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v32 = [v35 trailingAnchor];

  v33 = [v36 constraintEqualToAnchor:v32];
  v61[3] = v33;
  sub_71DDC();
  isa = sub_7D094().super.isa;

  [v60 activateConstraints:isa];
}

unint64_t sub_7B0CC()
{
  v2 = qword_92ED8;
  if (!qword_92ED8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92ED8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_7B1E0(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;

  if (a2)
  {
    v5 = sub_7CF04();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for TopNavigationController();
  v4 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  v4;
  v13 = v4;

  return v4;
}

id sub_7B460(void *a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for TopNavigationController();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    v4;
    v7 = v4;

    return v4;
  }

  else
  {

    return 0;
  }
}

id sub_7B5F8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7B64C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_94E28 == -1)
  {
    if (qword_94E30)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_7BB14();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_94E30)
    {
      return _availability_version_check();
    }
  }

  if (qword_94E20 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_7BB2C();
    a3 = v10;
    a4 = v9;
    v8 = dword_94E10 < v11;
    if (dword_94E10 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_94E14 > a3)
      {
        return 1;
      }

      if (dword_94E14 >= a3)
      {
        return dword_94E18 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_94E10 < a2;
  if (dword_94E10 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_7B7E0(uint64_t result)
{
  v1 = qword_94E30;
  if (qword_94E30)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_94E30 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_94E10, &dword_94E14, &dword_94E18);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}