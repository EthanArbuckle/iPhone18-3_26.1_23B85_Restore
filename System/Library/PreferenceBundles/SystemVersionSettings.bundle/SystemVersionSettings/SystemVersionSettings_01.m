uint64_t sub_22AB8()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_25F20();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_22BA4()
{
  sub_C014(v0 + 16);
  sub_1FA3C(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate);
  sub_22C44(v0 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  v3 = OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware___observationRegistrar;
  v1 = sub_25500();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_22C44(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1E93C(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_22C94()
{
  v0 = *sub_22BA4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_22CF8()
{
  v43 = sub_23444;
  v35 = sub_237AC;
  v68 = 0;
  v67 = 0;
  v59 = 0;
  v60 = 0;
  v50 = 0;
  v51 = 0;
  v41 = sub_2124(&qword_30C70, &qword_27E30);
  v36 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v37 = v12 - v36;
  v68 = v0;
  v38 = 0;
  sub_1C02C();
  v1 = sub_1D100();
  v2 = v37;
  v40 = v1;
  v67 = v1;
  [v1 setDateStyle:1];
  [v40 setTimeStyle:v38];
  sub_1F914((v39 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_installationDate), v2);
  v40;
  v45[2] = v40;
  sub_23470(v43, v45, v41, &type metadata for Never, &type metadata for String, v42, &v63);
  v44 = 0;

  sub_1FA3C(v37);
  v61 = v63;
  v62 = v64;
  if (v64)
  {
    v65 = v61;
    v66 = v62;
  }

  else
  {
    v65 = sub_25BF0("nil", 3uLL, 1);
    v66 = v3;
    if (v62)
    {
      sub_BFA8(&v61);
    }
  }

  v4 = v44;
  v31 = v65;
  v32 = v66;
  v59 = v65;
  v60 = v66;
  v33 = *(v39 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation);
  v34 = *(v39 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_documentation + 8);
  sub_1D130(v33, v34);
  v54[0] = v33;
  v54[1] = v34;
  v5 = sub_2124(&qword_31068, &qword_28548);
  result = sub_23470(v35, 0, v5, &type metadata for Never, &type metadata for String, v42, &v55);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_22C44(v54);
    v52 = v55;
    v53 = v56;
    if (v56)
    {
      v57 = v52;
      v58 = v53;
    }

    else
    {
      v57 = sub_25BF0("nil", 3uLL, 1);
      v58 = v7;
      if (v53)
      {
        sub_BFA8(&v52);
      }
    }

    v19 = v57;
    v28 = v58;
    v50 = v57;
    v51 = v58;
    v8 = sub_25EF0();
    v25 = &v48;
    v48 = v8;
    v49 = v9;
    v23 = 1;
    v69._countAndFlagsBits = sub_25BF0("<InstalledSoftware: type=", 0x19uLL, 1);
    v12[1] = v69._object;
    sub_25EE0(v69);

    v10 = *(v39 + OBJC_IVAR____TtC21SystemVersionSettings17InstalledSoftware_softwareType);
    v12[2] = &v47;
    v47 = v10;
    sub_238E0();
    v17 = 16;
    sub_25EC0();
    v70._countAndFlagsBits = sub_25BF0(", version=", 0xAuLL, v23 & 1);
    v12[3] = v70._object;
    sub_25EE0(v70);

    v13 = *(v39 + 16);
    v14 = *(v39 + 24);

    v15 = v46;
    v46[0] = v13;
    v46[1] = v14;
    v20 = &type metadata for String;
    v21 = &protocol witness table for String;
    v22 = &protocol witness table for String;
    sub_25ED0();
    sub_C014(v15);
    v71._countAndFlagsBits = sub_25BF0(", installDate=", 0xEuLL, v23 & 1);
    object = v71._object;
    sub_25EE0(v71);

    v45[5] = v31;
    v45[6] = v32;
    sub_25ED0();
    v72._countAndFlagsBits = sub_25BF0(", documentation=", v17, v23 & 1);
    v18 = v72._object;
    sub_25EE0(v72);

    v45[3] = v19;
    v45[4] = v28;
    sub_25ED0();
    v73._countAndFlagsBits = sub_25BF0(">", 1uLL, v23 & 1);
    v24 = v73._object;
    sub_25EE0(v73);

    v27 = v48;
    v26 = v49;

    sub_2395C(v25);
    v29 = sub_25BE0();
    v30 = v11;

    return v29;
  }

  return result;
}

void sub_232CC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v9[1] = a1;
  v15 = a2;
  v20 = 0;
  v19 = 0;
  v13 = sub_25440();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v9 - v10;
  v20 = v3;
  v19 = v15;
  (*(v11 + 16))(v9 - v10);
  isa = sub_25430().super.isa;
  (*(v11 + 8))(v14, v13);
  v18 = [v15 stringFromDate:isa];

  v4 = sub_25B90();
  v5 = v17;
  v6 = v4;
  v7 = v18;
  *v17 = v6;
  v5[1] = v8;
}

uint64_t sub_23470@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10);
  v36 = v17 - v32;
  sub_23FE8(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_237AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v7[0] = sub_25EF0();
  v7[1] = v2;
  v10._countAndFlagsBits = sub_25BF0("", 0, 1);
  sub_25EE0(v10);

  sub_25420();
  sub_25EC0();
  v11._countAndFlagsBits = sub_25BF0(" bytes", 6uLL, 1);
  sub_25EE0(v11);

  sub_2395C(v7);
  result = sub_25BE0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_238E0()
{
  v2 = qword_31070;
  if (!qword_31070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31070);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2395C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t sub_239C4()
{
  v2 = qword_31078;
  if (!qword_31078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_31078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_23A5C()
{
  v4 = sub_23BB4();
  updated = v4;
  if (v0 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    v3 = sub_25500();
    updated = v3;
    if (v1 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_23BB4()
{
  v4 = qword_310A8;
  if (!qword_310A8)
  {
    sub_25440();
    v3 = sub_25D90();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_310A8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_23C50(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
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

_BYTE *sub_23DB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
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

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_23FE8(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

id sub_241BC()
{
  sub_24204();
  type metadata accessor for FindSystemVersionSettingsClass();
  result = sub_24290();
  qword_31F68 = result;
  return result;
}

unint64_t sub_24204()
{
  v2 = qword_31148;
  if (!qword_31148)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_31148);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_24290()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_242E8()
{
  if (qword_31E20 != -1)
  {
    swift_once();
  }

  return &qword_31F68;
}

void *sub_24348()
{
  v1 = *sub_242E8();
  v1;
  return v1;
}

uint64_t sub_2444C(void *a1)
{
  swift_getObjectType();
  a1;
  sub_259B0();

  return v3;
}

uint64_t sub_244D4(void *a1)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();

  return v3;
}

void sub_24568(void *a1, id a2, uint64_t a3)
{
  a2;

  a2;

  v6[0] = a2;
  v6[1] = a3;
  a1;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259D0();
  sub_2278(v6);
}

uint64_t sub_24650(void *a1)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259E0();

  return v3;
}

void *sub_246FC(void *a1)
{
  a1;

  return a1;
}

uint64_t sub_2473C(void *a1, uint64_t a2)
{
  a1;

  v3 = *v2;
  v5 = *(v2 + 8);
  *v2 = a1;
  *(v2 + 8) = a2;
}

id sub_247BC()
{
  v5 = 0;
  v6 = 0;
  updated = type metadata accessor for SystemUpdateCoordinator();
  sub_E13C();
  sub_24C8(updated, v4);
  v3 = v4[0];
  v2 = v4[1];
  v4[0];

  v5 = v3;
  v6 = v2;
  sub_24860(&v5);
  return v3;
}

uint64_t sub_24860(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_248A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v13 = a1;
  v14 = a2;
  v17 = sub_24DB4;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v24 = sub_2124(&qword_311E8, &qword_28758);
  v18 = *(v24 - 8);
  v19 = v24 - 8;
  v11 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v13);
  v22 = &v10 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v23 = &v10 - v12;
  v29 = &v10 - v12;
  v27 = v5;
  v28 = v6;
  v5;

  v7 = swift_allocObject();
  v8 = v14;
  v15 = v7;
  *(v7 + 16) = v13;
  *(v7 + 24) = v8;
  v16 = sub_2124(&qword_30A28, qword_28760);
  sub_2BE0();
  sub_25AD0();
  v21 = sub_24E24();
  sub_24DC0(v22, v24, v23);
  v26 = *(v18 + 8);
  v25 = v18 + 8;
  v26(v22, v24);
  (*(v18 + 16))(v22, v23, v24);
  sub_24EAC(v22, v24, v20);
  v26(v22, v24);
  return (v26)(v23, v24);
}

uint64_t sub_24AF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v12 = a1;
  v13 = a2;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v15 = type metadata accessor for SystemVersionList();
  v8 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v18 = &v8 - v8;
  v20 = sub_2124(&qword_30A28, qword_28760);
  v10 = *(*(v20 - 8) + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v12);
  v22 = &v8 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v23 = &v8 - v11;
  v27 = &v8 - v11;
  v25 = v4;
  v26 = v5;
  sub_ACF8(v6);
  KeyPath = swift_getKeyPath();
  v12;

  v24[2] = v12;
  v24[3] = v13;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();
  v14 = v24[1];

  v16 = v24;
  v24[0] = v14;
  sub_292C();
  sub_258E0();
  sub_29AC(v16);

  sub_29E0(v18);
  v21 = sub_2BE0();
  sub_2B7C(v22, v20, v23);
  sub_2D84(v22);
  sub_2F18(v23, v22);
  sub_3208(v22, v20, v19);
  sub_2D84(v22);
  return sub_2D84(v23);
}

uint64_t sub_24D64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_24E24()
{
  v2 = qword_311F0;
  if (!qword_311F0)
  {
    sub_2C88(&qword_311E8, &qword_28758);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_311F0);
    return WitnessTable;
  }

  return v2;
}

id sub_24F30@<X0>(void *a1@<X8>)
{
  result = sub_247BC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_24F78()
{
  v2 = qword_311F8;
  if (!qword_311F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_311F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25050(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
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

uint64_t sub_25194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}