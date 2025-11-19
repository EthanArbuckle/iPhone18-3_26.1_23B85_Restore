__n128 sub_68060@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_66D4(&qword_121238, &unk_D8E20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  sub_D5780();
  sub_D63E0();
  sub_D5930();
  (*(v3 + 32))(a1, v6, v2);
  v7 = a1 + *(sub_66D4(&qword_121360, &unk_D8FE0) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_681BC@<X0>(uint64_t a1@<X8>)
{
  sub_DFAC();

  v2 = sub_D5F50();
  v4 = v3;
  v6 = v5;
  sub_D61B0();
  v7 = sub_D5F00();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_F16C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_6829C()
{
  v0 = sub_D4EC0();
  v49 = *(v0 - 8);
  v1 = *(v49 + 64);
  __chkstk_darwin(v0);
  v52 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_D64C0();
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v53);
  v50 = (v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_66D4(&qword_123340, qword_DC760);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v43 - v7;
  v9 = sub_D4F20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v48 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_D5340();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v13, qword_137988);
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_D5320();
  v20 = sub_D68A0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "[Unified Settings] page viewed", v21, 2u);
  }

  (*(v14 + 8))(v17, v13);
  sub_D4F10();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_FC3C(v8, &qword_123340, qword_DC760);
  }

  (*(v10 + 32))(v48, v8, v9);
  sub_D64F0();
  v47 = v10;
  v46 = sub_D64E0();
  v23 = v50;
  *v50 = 0xD00000000000001ELL;
  v23[1] = 0x80000000000E8A50;
  (*(v51 + 104))();
  v45 = v0;
  v43[0] = "com.apple.graphic-icon.account";
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass:ObjCClassFromMetadata];
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  v55._object = 0x80000000000E8A70;
  v55._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v55);
  v56._countAndFlagsBits = 2777980912;
  v56._object = 0xA400000000000000;
  sub_D66D0(v56);
  v39._countAndFlagsBits = 0xE000000000000000;
  v57._object = 0x80000000000E8A70;
  v57._countAndFlagsBits = 0xD000000000000011;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v27.super.isa = v26;
  sub_D4E80(v57, v67, v27, v54, v39);
  v44 = v9;

  sub_D4EB0();
  sub_66D4(&qword_126358, &qword_DE8D8);
  v28 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v43[1] = 2 * *(v49 + 72);
  *(swift_allocObject() + 16) = xmmword_DE7C0;
  v29 = [v25 bundleForClass:ObjCClassFromMetadata];
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  v58._countAndFlagsBits = 0xD000000000000013;
  v58._object = 0x80000000000E8A90;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v40._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD000000000000013;
  v60._object = 0x80000000000E8A90;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v30.super.isa = v29;
  sub_D4E80(v60, v68, v30, v54, v40);

  sub_D4EB0();
  v31 = [v25 bundleForClass:ObjCClassFromMetadata];
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  v61._countAndFlagsBits = 0x4C5F44554F4C4349;
  v61._object = 0xEC0000004C454241;
  sub_D66D0(v61);
  v62._countAndFlagsBits = 2777980912;
  v62._object = 0xA400000000000000;
  sub_D66D0(v62);
  v41._countAndFlagsBits = 0xE000000000000000;
  v63._countAndFlagsBits = 0x4C5F44554F4C4349;
  v63._object = 0xEC0000004C454241;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v32.super.isa = v31;
  sub_D4E80(v63, v69, v32, v54, v41);

  sub_D4EB0();
  v33 = [v25 bundleForClass:ObjCClassFromMetadata];
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  v34 = v43[0];
  v64._object = (v43[0] | 0x8000000000000000);
  v64._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v64);
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  sub_D66D0(v65);
  v42._countAndFlagsBits = 0xE000000000000000;
  v66._object = (v34 | 0x8000000000000000);
  v66._countAndFlagsBits = 0xD000000000000011;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v35.super.isa = v33;
  sub_D4E80(v66, v70, v35, v54, v42);

  sub_D4EB0();
  v36 = v50;
  v37 = v52;
  v38 = v48;
  sub_D64D0();

  (*(v49 + 8))(v37, v45);
  (*(v51 + 8))(v36, v53);
  return (*(v47 + 8))(v38, v44);
}

void sub_68ACC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 != 2)
  {
    v3 = *(a3 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    sub_711B0();
    sub_D5900();
  }
}

uint64_t sub_68B98@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_68C84(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_68CF8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_68D5C;
  a2[1] = v7;
  return result;
}

uint64_t sub_68C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAPreferencesView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_68CEC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_68CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAPreferencesView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_68D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MAPreferencesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_656B8(a1, v6, a2);
}

uint64_t sub_68DE4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_66D4(&qword_121338, &qword_DF070);
  v21 = *(v1 - 8);
  v2 = v21;
  v3 = *(v21 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_66D4(&qword_1266B0, &qword_DF078);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_6902C();
  sub_697E0();
  sub_FBD4(v15, v13, &qword_1266B0, &qword_DF078);
  v16 = *(v2 + 16);
  v16(v6, v8, v1);
  v17 = v22;
  sub_FBD4(v13, v22, &qword_1266B0, &qword_DF078);
  v18 = sub_66D4(&qword_1266B8, &qword_DF080);
  v16((v17 + *(v18 + 48)), v6, v1);
  v19 = *(v21 + 8);
  v19(v8, v1);
  sub_FC3C(v15, &qword_1266B0, &qword_DF078);
  v19(v6, v1);
  return sub_FC3C(v13, &qword_1266B0, &qword_DF078);
}

uint64_t sub_6902C()
{
  v1 = sub_66D4(&qword_1266C0, &qword_DF0D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v48 - v3;
  v5 = sub_66D4(&qword_1266C8, &qword_DF0D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v51 = &v48 - v7;
  v8 = sub_66D4(&qword_1266D0, &qword_DF0E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v48 - v12;
  v55 = sub_66D4(&qword_1266D8, &qword_DF0E8);
  v13 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v15 = &v48 - v14;
  v16 = sub_D6510();
  v54 = *(v16 - 8);
  v17 = *(v54 + 64);
  __chkstk_darwin(v16);
  v53 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_D5B10();
  v19 = *(v49 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v49);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for MAPreferencesView() + 20);
  v56 = v0;
  v24 = v0 + v23;
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    if ((v25 & 1) == 0)
    {
LABEL_3:
      *v4 = sub_D5BA0();
      *(v4 + 1) = 0x4028000000000000;
      v4[16] = 0;
      v26 = sub_66D4(&qword_1266E0, &qword_DF0F0);
      sub_6A04C(&v4[*(v26 + 44)]);
      sub_D63E0();
      sub_D5930();
      v27 = v51;
      sub_FEA4(v4, v51, &qword_1266C0, &qword_DF0D0);
      v28 = v27 + *(v5 + 36);
      v29 = v62;
      *(v28 + 64) = v61;
      *(v28 + 80) = v29;
      *(v28 + 96) = v63;
      v30 = v58;
      *v28 = v57;
      *(v28 + 16) = v30;
      v31 = v60;
      *(v28 + 32) = v59;
      *(v28 + 48) = v31;
      v32 = sub_D5B90();
      v33 = v50;
      sub_FEA4(v27, v50, &qword_1266C8, &qword_DF0D8);
      v34 = (v33 + *(v8 + 36));
      *v34 = v32;
      v34[1] = sub_6A5B4;
      v34[2] = 0;
      v35 = v52;
      sub_FEA4(v33, v52, &qword_1266D0, &qword_DF0E0);
      sub_FBD4(v35, v15, &qword_1266D0, &qword_DF0E0);
      swift_storeEnumTagMultiPayload();
      sub_72C3C(&qword_1266E8, &type metadata accessor for SettingsFeatureDescriptionView);
      sub_72C84();
      sub_D5BF0();
      return sub_FC3C(v35, &qword_1266D0, &qword_DF0E0);
    }
  }

  else
  {

    sub_D68C0();
    v37 = sub_D5DB0();
    v48 = v5;
    v38 = v37;
    sub_D5310();

    v5 = v48;
    sub_D5B00();
    swift_getAtKeyPath();
    sub_68CEC(v25, 0);
    (*(v19 + 8))(v22, v49);
    if (LOBYTE(v57._countAndFlagsBits) != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v64._countAndFlagsBits = 0x5241435F4C49414DLL;
  v64._object = 0xEF454C5449545F44;
  sub_D66D0(v64);
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  sub_D66D0(v65);
  v47._countAndFlagsBits = 0xE000000000000000;
  v66._countAndFlagsBits = 0x5241435F4C49414DLL;
  v66._object = 0xEF454C5449545F44;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v41.super.isa = v40;
  v42 = sub_D4E80(v66, v67, v41, v57, v47);
  v44 = v43;

  v57._countAndFlagsBits = v42;
  v57._object = v44;
  sub_DFAC();
  sub_D5F50();
  sub_69C94();
  sub_D5B60();
  sub_D5F40();
  v45 = v53;
  sub_D6500();
  v46 = v54;
  (*(v54 + 16))(v15, v45, v16);
  swift_storeEnumTagMultiPayload();
  sub_72C3C(&qword_1266E8, &type metadata accessor for SettingsFeatureDescriptionView);
  sub_72C84();
  sub_D5BF0();
  return (*(v46 + 8))(v45, v16);
}

void sub_697E0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(AADeviceInfo) init];
  v3 = [v2 deviceClass];

  if (v3)
  {
    v4 = 0xD00000000000001FLL;
    sub_D65F0();

    v5 = sub_D6660();
    v7 = v6;

    v8 = v5 == 0x454E4F485049 && v7 == 0xE600000000000000;
    if (v8 || (sub_D6C20() & 1) != 0)
    {

      v9 = "MAIL_DATACLASS_SWITCH_TEXT_IPAD";
      v4 = 0xD000000000000021;
    }

    else
    {
      v16 = v5 == 1145131081 && v7 == 0xE400000000000000;
      if (v16 || (sub_D6C20() & 1) != 0)
      {

        v9 = "MAIL_DATACLASS_SWITCH_TEXT_IPOD";
      }

      else if (v5 == 1146048585 && v7 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
      {

        v9 = "WITCH_TEXT_IPHONE SIMULATOR";
      }

      else if (v5 == 0xD000000000000010 && 0x80000000000E8C20 == v7 || (sub_D6C20() & 1) != 0)
      {

        v9 = "WITCH_TEXT_REALITYDEVICE";
        v4 = 0xD00000000000002BLL;
      }

      else if (v5 == 0x445954494C414552 && v7 == 0xED00004543495645)
      {

        v9 = "WITCH_TEXT_OTHER";
        v4 = 0xD000000000000028;
      }

      else
      {
        v17 = sub_D6C20();

        if (v17)
        {
          v4 = 0xD000000000000028;
        }

        else
        {
          v4 = 0xD000000000000020;
        }

        if (v17)
        {
          v9 = "WITCH_TEXT_OTHER";
        }

        else
        {
          v9 = "IPHONE SIMULATOR";
        }
      }
    }

    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v18._object = 2777980912;
    v19._object = (v9 | 0x8000000000000000);
    v19._countAndFlagsBits = v4;
    sub_D66D0(v19);
    v20._countAndFlagsBits = 2777980912;
    v20._object = 0xA400000000000000;
    sub_D66D0(v20);
    v23._countAndFlagsBits = 2777980912;
    v18._countAndFlagsBits = 0xE000000000000000;
    v21._object = (v9 | 0x8000000000000000);
    v21._countAndFlagsBits = v4;
    v22.value._countAndFlagsBits = 0;
    v22.value._object = 0;
    v12.super.isa = v11;
    v23._object = 0xA400000000000000;
    sub_D4E80(v21, v22, v12, v23, v18);

    v13 = (v1 + *(type metadata accessor for MAPreferencesView() + 24));
    v14 = *v13;
    v15 = v13[1];
    _s9ViewModelCMa_3();
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    sub_DFAC();
    sub_D62D0();
  }

  else
  {
    __break(1u);
  }
}

id sub_69BF4()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [objc_allocWithZone(ISImageDescriptor) initWithSize:60.0 scale:{60.0, v2}];
  result = [v3 setDrawBorder:1];
  qword_126250 = v3;
  return result;
}

void sub_69C94()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v23._object = 0x80000000000E8D60;
  v23._countAndFlagsBits = 0xD00000000000001DLL;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v40._countAndFlagsBits = 2777980912;
  v20._countAndFlagsBits = 0xE000000000000000;
  v25._object = 0x80000000000E8D60;
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v3.super.isa = v2;
  v40._object = 0xA400000000000000;
  v4 = sub_D4E80(v25, v37, v3, v40, v20);
  v6 = v5;

  v7 = [v1 bundleForClass:ObjCClassFromMetadata];
  v26._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v26._object = 0xEA00000000004552;
  sub_D66D0(v26);
  v27._countAndFlagsBits = 2777980912;
  v27._object = 0xA400000000000000;
  sub_D66D0(v27);
  v41._countAndFlagsBits = 2777980912;
  v21._countAndFlagsBits = 0xE000000000000000;
  v28._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v28._object = 0xEA00000000004552;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v8.super.isa = v7;
  v41._object = 0xA400000000000000;
  v9 = sub_D4E80(v28, v38, v8, v41, v21);
  v11 = v10;

  v29._countAndFlagsBits = v9;
  v29._object = v11;
  sub_D66D0(v29);

  v30._countAndFlagsBits = 10333;
  v30._object = 0xE200000000000000;
  sub_D66D0(v30);
  v31._countAndFlagsBits = v4;
  v31._object = v6;
  sub_D66D0(v31);

  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  sub_D66D0(v32);
  v12 = [objc_allocWithZone(AADeviceInfo) init];
  v13 = [v12 deviceClass];

  if (v13)
  {
    sub_D65F0();

    v14 = sub_D6660();
    v16 = v15;

    v33._countAndFlagsBits = v14;
    v33._object = v16;
    sub_D66D0(v33);

    v17 = [v1 bundleForClass:ObjCClassFromMetadata];
    v34._countAndFlagsBits = 0xD000000000000012;
    v34._object = 0x80000000000E8D80;
    sub_D66D0(v34);
    v35._countAndFlagsBits = 2777980912;
    v35._object = 0xA400000000000000;
    sub_D66D0(v35);
    v42._countAndFlagsBits = 2777980912;
    v22._countAndFlagsBits = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000012;
    v36._object = 0x80000000000E8D80;
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v18.super.isa = v17;
    v42._object = 0xA400000000000000;
    sub_D4E80(v36, v39, v18, v42, v22);

    sub_66D4(&qword_121390, &qword_D9050);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_D8CB0;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_F7DC();
    *(v19 + 32) = 91;
    *(v19 + 40) = 0xE100000000000000;
    sub_D6610();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6A04C@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_66D4(&qword_126708, &qword_DF0F8);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v58 - v5;
  v7 = objc_allocWithZone(ISIcon);
  v8 = sub_D65C0();
  [v7 initWithBundleIdentifier:v8];

  if (qword_120E60 != -1)
  {
    swift_once();
  }

  v9 = qword_126250;
  sub_D5300();
  v10 = sub_D5DE0();
  v11 = &v6[*(v1 + 36)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v70._countAndFlagsBits = 2777980912;
  v70._object = 0xA400000000000000;
  v64 = v6;
  v77._countAndFlagsBits = 0x5241435F4C49414DLL;
  v77._object = 0xEF454C5449545F44;
  sub_D66D0(v77);
  v78._countAndFlagsBits = 2777980912;
  v78._object = 0xA400000000000000;
  sub_D66D0(v78);
  v57._countAndFlagsBits = 0xE000000000000000;
  v79._countAndFlagsBits = 0x5241435F4C49414DLL;
  v79._object = 0xEF454C5449545F44;
  v80.value._countAndFlagsBits = 0;
  v80.value._object = 0;
  v14.super.isa = v13;
  v15 = sub_D4E80(v79, v80, v14, v70, v57);
  v17 = v16;

  v70._countAndFlagsBits = v15;
  v70._object = v17;
  sub_DFAC();
  v18 = sub_D5F50();
  v20 = v19;
  LOBYTE(v15) = v21;
  sub_D5E40();
  v22 = sub_D5F20();
  v24 = v23;
  v26 = v25;

  sub_F16C(v18, v20, v15 & 1);

  sub_D5E10();
  v62 = sub_D5E80();
  v60 = v27;
  v63 = v28;
  v61 = v29;
  sub_F16C(v22, v24, v26 & 1);

  sub_69C94();
  sub_D5B60();
  v30 = sub_D5F40();
  v32 = v31;
  v34 = v33;
  sub_D5E00();
  v35 = sub_D5F20();
  v37 = v36;
  v59 = v36;
  v39 = v38;
  v41 = v40;

  sub_F16C(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v43 = v39 & 1;
  LOBYTE(v70._countAndFlagsBits) = v39 & 1;
  v44 = v64;
  v45 = v66;
  sub_FBD4(v64, v66, &qword_126708, &qword_DF0F8);
  v46 = v65;
  sub_FBD4(v45, v65, &qword_126708, &qword_DF0F8);
  v47 = sub_66D4(&qword_126710, &unk_DF130);
  v48 = v46 + *(v47 + 48);
  v49 = v62;
  v50 = v60;
  *v48 = v62;
  *(v48 + 8) = v50;
  LOBYTE(v30) = v63 & 1;
  *(v48 + 16) = v63 & 1;
  *(v48 + 24) = v61;
  v51 = (v46 + *(v47 + 64));
  *&v68 = v35;
  *(&v68 + 1) = v37;
  v52 = v35;
  v69[0] = v43;
  *&v69[1] = v67[0];
  *&v69[4] = *(v67 + 3);
  *&v69[8] = v41;
  *&v69[16] = KeyPath;
  *&v69[24] = 1;
  v69[26] = 1;
  v53 = *v69;
  *v51 = v68;
  v51[1] = v53;
  *(v51 + 27) = *&v69[11];
  v54 = v49;
  v55 = v50;
  sub_166E0(v49, v50, v30);

  sub_FBD4(&v68, &v70, &qword_123668, &qword_DB360);
  sub_FC3C(v44, &qword_126708, &qword_DF0F8);
  v70._countAndFlagsBits = v52;
  v70._object = v59;
  v71 = v43;
  *v72 = v67[0];
  *&v72[3] = *(v67 + 3);
  v73 = v41;
  v74 = KeyPath;
  v75 = 1;
  v76 = 1;
  sub_FC3C(&v70, &qword_123668, &qword_DB360);
  sub_F16C(v54, v55, v30);

  return sub_FC3C(v45, &qword_126708, &qword_DF0F8);
}

uint64_t sub_6A5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = sub_66D4(&qword_126648, &qword_DEDB8);
  v3 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v5 = &v49 - v4;
  v54 = sub_66D4(&qword_126650, &qword_DEDC0);
  v6 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v8 = &v49 - v7;
  v9 = type metadata accessor for MAPreferencesView();
  v10 = v9 - 8;
  v53 = *(v9 - 8);
  v11 = *(v53 + 64);
  __chkstk_darwin(v9);
  v12 = sub_66D4(&qword_126658, &qword_DEDC8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v56 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = (a1 + *(v10 + 32));
  v19 = v18[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v19;
  sub_D5570();

  v20 = *(v60 + 16);

  v59 = v17;
  v51 = v18;
  v52 = a1;
  if (v20 < 2)
  {
    *v5 = sub_D5B40();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v29 = sub_66D4(&qword_126660, &qword_DEE18);
    sub_6B904(a1, &v5[*(v29 + 44)]);
    sub_68C84(a1, &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = *(v53 + 80);
    v31 = swift_allocObject();
    sub_68CF8(&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + ((v30 + 16) & ~v30));
    v32 = &v5[*(v55 + 36)];
    *v32 = sub_72220;
    *(v32 + 1) = v31;
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    sub_FBD4(v5, v8, &qword_126648, &qword_DEDB8);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_126668, &qword_DEE20);
    sub_109A8(&qword_126670, &qword_126668, &qword_DEE20);
    sub_72284();
    sub_D5BF0();
    sub_FC3C(v5, &qword_126648, &qword_DEDB8);
    LODWORD(v24) = v30;
  }

  else
  {
    v21 = *v18;
    _s9ViewModelCMa_3();
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v22 = v60;
    v50 = v61;
    v23 = v62;
    sub_68C84(a1, &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = *(v53 + 80);
    v25 = (v24 + 16) & ~v24;
    v26 = swift_allocObject();
    sub_68CF8(&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    sub_68C84(a1, &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = swift_allocObject();
    sub_68CF8(&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v25);
    v28 = v50;
    *v8 = v22;
    *(v8 + 1) = v28;
    v8[16] = v23;
    *(v8 + 3) = sub_72580;
    *(v8 + 4) = v26;
    *(v8 + 5) = sub_725F0;
    *(v8 + 6) = v27;
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_126668, &qword_DEE20);
    sub_109A8(&qword_126670, &qword_126668, &qword_DEE20);
    sub_72284();
    sub_D5BF0();
  }

  if (sub_61364(&off_1138E0))
  {
    v33 = *v51;
    _s9ViewModelCMa_3();
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v34 = v60;
    v35 = v61;
    v58 = v62;
    v36 = v52;
    sub_68C84(v52, &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = (v24 + 16) & ~v24;
    v38 = swift_allocObject();
    sub_68CF8(&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
    sub_68C84(v36, &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = swift_allocObject();
    sub_68CF8(&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v37);
    v55 = v34;

    v40 = sub_724C0;
    v41 = sub_72450;
  }

  else
  {
    v55 = 0;
    v35 = 0;
    v58 = 0;
    v41 = 0;
    v38 = 0;
    v40 = 0;
    v39 = 0;
  }

  v42 = v59;
  v43 = v56;
  sub_FBD4(v59, v56, &qword_126658, &qword_DEDC8);
  v44 = v57;
  sub_FBD4(v43, v57, &qword_126658, &qword_DEDC8);
  v45 = (v44 + *(sub_66D4(&qword_126690, &qword_DEE30) + 48));
  v46 = v55;
  v47 = v58;
  sub_7233C(v55, v35);
  sub_7239C(v46, v35);
  *v45 = v46;
  v45[1] = v35;
  v45[2] = v47;
  v45[3] = v41;
  v45[4] = v38;
  v45[5] = v40;
  v45[6] = v39;
  sub_FC3C(v42, &qword_126658, &qword_DEDC8);
  sub_7239C(v46, v35);
  return sub_FC3C(v43, &qword_126658, &qword_DEDC8);
}

uint64_t sub_6AE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(__chkstk_darwin(v4 - 8) + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v8 = v25[0];
  v9 = v25[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v10 = v25[0];
  sub_2A5C4(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v25);
  sub_68C84(a1, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_68CF8(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = v26;
  v14 = sub_38BFC(v25, v26);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v23 = type metadata accessor for MSRepositoryDefault();
  v24 = &off_1188F0;
  *&v22 = v19;
  v20 = swift_allocObject();
  v20[2] = v8;
  v20[3] = v9;
  v20[4] = v10;
  sub_38BDC(&v22, (v20 + 5));
  v20[10] = sub_72694;
  v20[11] = v12;
  result = sub_67D4(v25);
  *a2 = sub_72764;
  *(a2 + 8) = v20;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_6B0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v9 == a1 && v10 == a2)
  {
  }

  v7 = sub_D6C20();

  if ((v7 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    return sub_60618();
  }

  return result;
}

uint64_t sub_6B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = sub_66D4(&qword_126660, &qword_DEE18);
  sub_6B904(a1, a2 + *(v7 + 44));
  sub_68C84(a1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_68CF8(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = sub_66D4(&qword_126648, &qword_DEDB8);
  v11 = (a2 + *(result + 36));
  *v11 = sub_72EB0;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_6B35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(__chkstk_darwin(v4 - 8) + 32) + 8);
  v8 = *(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_account);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_D5570();

  v9 = v19[0];
  sub_2A5C4(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v19);
  v10 = *(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxAliasCountAllowed);
  sub_68C84(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_68CF8(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v18 = 0;
  sub_D6200();
  v13 = *(&v17[0] + 1);
  *(a2 + 24) = v17[0];
  *(a2 + 32) = v13;
  sub_2A5C4(v19, a2 + 56);
  *(a2 + 40) = sub_72EC4;
  *(a2 + 48) = v12;
  sub_38BDC(v19, v17);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  result = sub_38BDC(v17, v14 + 40);
  *(v14 + 80) = v10;
  *a2 = sub_729B8;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  return result;
}

double sub_6B584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_6B64C(a1, &v8);
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v13 = v8;
  v14 = v9;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v18[0] = v8;
  v18[1] = v9;
  sub_FBD4(&v13, &v7, &qword_1265E0, &qword_DEC58);
  sub_FC3C(v18, &qword_1265E0, &qword_DEC58);
  v4 = v13;
  *(a2 + 40) = v14;
  v5 = v16;
  *(a2 + 56) = v15;
  *(a2 + 72) = v5;
  result = *&v17;
  *(a2 + 88) = v17;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_6B64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v30._countAndFlagsBits = 0x4553534552444441;
  v30._object = 0xE900000000000053;
  sub_D66D0(v30);
  v31._countAndFlagsBits = 2777980912;
  v31._object = 0xA400000000000000;
  sub_D66D0(v31);
  v34._countAndFlagsBits = 2777980912;
  v25._countAndFlagsBits = 0xE000000000000000;
  v32._countAndFlagsBits = 0x4553534552444441;
  v32._object = 0xE900000000000053;
  v33.value._countAndFlagsBits = 0;
  v33.value._object = 0;
  v6.super.isa = v5;
  v34._object = 0xA400000000000000;
  v7 = sub_D4E80(v32, v33, v6, v34, v25);

  sub_DFAC();
  v8 = sub_D5F50();
  v27 = v9;
  v28 = v8;
  v26 = v10;
  v29 = v11;
  v12 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  sub_2A2C8(v7);
  v13 = sub_D5F50();
  v15 = v14;
  v17 = v16;
  sub_D61B0();
  v18 = sub_D5F00();
  v20 = v19;
  LOBYTE(v7) = v21;
  v23 = v22;

  sub_F16C(v13, v15, v17 & 1);

  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v7 & 1;
  *(a2 + 72) = v23;
  sub_166E0(v28, v27, v26 & 1);

  sub_166E0(v18, v20, v7 & 1);

  sub_F16C(v18, v20, v7 & 1);

  sub_F16C(v28, v27, v26 & 1);
}

uint64_t sub_6B904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_66D4(&qword_126698, &qword_DEFA0);
  v5 = *(v4 - 8);
  v50 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v53._countAndFlagsBits = 2777980912;
  v53._object = 0xA400000000000000;
  v54._countAndFlagsBits = 0x5F544C5541464544;
  v54._object = 0xED00004C49414D45;
  sub_D66D0(v54);
  v55._countAndFlagsBits = 2777980912;
  v55._object = 0xA400000000000000;
  sub_D66D0(v55);
  v42._countAndFlagsBits = 0xE000000000000000;
  v56._countAndFlagsBits = 0x5F544C5541464544;
  v56._object = 0xED00004C49414D45;
  v57.value._countAndFlagsBits = 0;
  v57.value._object = 0;
  v13.super.isa = v12;
  v14 = sub_D4E80(v56, v57, v13, v53, v42);
  v16 = v15;

  v53._countAndFlagsBits = v14;
  v53._object = v16;
  sub_DFAC();
  v17 = sub_D5F50();
  v45 = v18;
  v46 = v17;
  v47 = v19;
  v48 = v20;
  v21 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v22 = sub_D5F50();
  v24 = v23;
  LOBYTE(ObjCClassFromMetadata) = v25;
  v44 = v26;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v29 = ObjCClassFromMetadata & 1;
  v52 = ObjCClassFromMetadata & 1;
  v51 = 0;
  v30 = &v10[*(sub_66D4(&qword_1266A0, &qword_E32E0) + 36)];
  v31 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v32 = enum case for Text.TruncationMode.tail(_:);
  v33 = sub_D5EF0();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v10 = v22;
  *(v10 + 1) = v24;
  v10[16] = v29;
  *(v10 + 17) = v53._countAndFlagsBits;
  *(v10 + 5) = *(&v53._countAndFlagsBits + 3);
  *(v10 + 3) = v44;
  *(v10 + 4) = KeyPath;
  *(v10 + 5) = 0x3FE6666666666666;
  *(v10 + 6) = v28;
  *(v10 + 7) = 1;
  v10[64] = 0;
  v34 = sub_D61B0();
  v35 = swift_getKeyPath();
  v36 = v49;
  v37 = &v10[*(v50 + 44)];
  *v37 = v35;
  v37[1] = v34;
  sub_FBD4(v10, v36, &qword_126698, &qword_DEFA0);
  v39 = v45;
  v38 = v46;
  *a2 = v46;
  *(a2 + 8) = v39;
  LOBYTE(v34) = v47 & 1;
  *(a2 + 16) = v47 & 1;
  *(a2 + 24) = v48;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v40 = sub_66D4(&qword_1266A8, &qword_DF068);
  sub_FBD4(v36, a2 + *(v40 + 64), &qword_126698, &qword_DEFA0);
  sub_166E0(v38, v39, v34);

  sub_FC3C(v10, &qword_126698, &qword_DEFA0);
  sub_FC3C(v36, &qword_126698, &qword_DEFA0);
  sub_F16C(v38, v39, v34);
}

uint64_t sub_6BD18(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v3 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_D5580();
  }

  return result;
}

uint64_t sub_6BE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v117 = sub_66D4(&qword_126458, &qword_DE9F8);
  v113 = *(v117 - 8);
  v3 = *(v113 + 64);
  __chkstk_darwin(v117);
  v99 = &v96 - v4;
  v5 = sub_D51D0();
  v111 = *(v5 - 8);
  v112 = v5;
  v6 = *(v111 + 64);
  __chkstk_darwin(v5);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_66D4(&qword_126530, &qword_DEB80);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v122 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v125 = &v96 - v12;
  v13 = sub_66D4(&qword_126538, &qword_DEB88);
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = *(v108 + 64);
  __chkstk_darwin(v13);
  v98 = &v96 - v15;
  v16 = sub_66D4(&qword_126540, &qword_DEB90);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v121 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v96 - v20;
  v21 = type metadata accessor for MAPreferencesView();
  v22 = v21 - 8;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_66D4(&qword_126548, &qword_DEB98);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v96 - v28;
  v106 = sub_66D4(&qword_126550, &qword_DEBA0);
  v105 = *(v106 - 8);
  v30 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v96 - v31;
  v32 = sub_66D4(&qword_126558, &qword_DEBA8);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v119 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v96 - v36;
  v38 = a1;
  v39 = (a1 + *(v22 + 32));
  v40 = v39[1];
  v41 = sub_61364(&off_113908);
  v123 = v25;
  v124 = v37;
  v118 = v24;
  v107 = v23;
  v100 = v39;
  v115 = v38;
  v97 = v26;
  if (v41)
  {
    sub_68C84(v38, &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v116 = v29;
    v42 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v43 = swift_allocObject();
    v44 = sub_68CF8(&v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
    __chkstk_darwin(v44);
    sub_66D4(&qword_126588, &qword_DEBC8);
    sub_71ACC();
    sub_D6260();
    *(v116 + *(v26 + 36)) = sub_D5CA0();
    v45 = *v39;
    _s9ViewModelCMa_3();
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    sub_68C84(v38, v123);
    v46 = swift_allocObject();
    sub_68CF8(v123, v46 + v42);
    type metadata accessor for MSAutoReplyView();
    sub_71BEC();
    sub_72C3C(&qword_1265C8, type metadata accessor for MSAutoReplyView);
    v47 = v124;
    v48 = v104;
    sub_D60F0();
    v23 = v107;

    v29 = v116;

    v25 = v123;

    sub_FC3C(v29, &qword_126548, &qword_DEB98);
    v49 = v105;
    v50 = v48;
    v51 = v106;
    (*(v105 + 32))(v47, v50, v106);
    (*(v49 + 56))(v47, 0, 1, v51);
  }

  else
  {
    (*(v105 + 56))(v37, 1, 1, v106);
  }

  if (sub_61364(&off_113930))
  {
    if (sub_61364(&off_113958))
    {
      v106 = 0;
      v116 = 0;
      v105 = 0;
      v101 = 0;
      v104 = 0;
      v102 = 0;
      v103 = 0;
    }

    else
    {
      v52 = *v100;
      _s9ViewModelCMa_3();
      sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
      sub_D5870();
      swift_getKeyPath();
      sub_D5880();

      v53 = v126;
      v116 = v127;
      v105 = v128;
      v54 = v23;
      v55 = v115;
      sub_68C84(v115, v25);
      v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v57 = swift_allocObject();
      sub_68CF8(v25, v57 + v56);
      v58 = v55;
      v23 = v54;
      sub_68C84(v58, v25);
      v59 = swift_allocObject();
      sub_68CF8(v25, v59 + v56);
      v106 = v53;

      v104 = v57;

      v103 = v59;

      v102 = sub_72EC0;
      v101 = sub_72EBC;
    }
  }

  else
  {
    v106 = 0;
    v105 = 0;
    v101 = 0;
    v104 = 0;
    v102 = 0;
    v103 = 0;
    v116 = 1;
  }

  if (sub_61364(&off_113980))
  {
    v60 = v23;
    v61 = v115;
    sub_68C84(v115, v25);
    v62 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v63 = swift_allocObject();
    v64 = sub_68CF8(v25, v63 + v62);
    __chkstk_darwin(v64);
    sub_66D4(&qword_126588, &qword_DEBC8);
    sub_71ACC();
    sub_D6260();
    *&v29[*(v97 + 36)] = sub_D5CA0();
    v65 = *v100;
    _s9ViewModelCMa_3();
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v66 = v61;
    v67 = v123;
    sub_68C84(v66, v123);
    v68 = swift_allocObject();
    sub_68CF8(v67, v68 + v62);
    type metadata accessor for MailForwadingView();
    sub_71BEC();
    sub_72C3C(&qword_1265C0, type metadata accessor for MailForwadingView);
    v69 = v98;
    sub_D60F0();

    sub_FC3C(v29, &qword_126548, &qword_DEB98);
    v70 = v108;
    v71 = v120;
    v72 = v69;
    v73 = v109;
    (*(v108 + 32))(v120, v72, v109);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v71 = v120;
    v70 = v108;
    v73 = v109;
  }

  v75 = 1;
  (*(v70 + 56))(v71, v74, 1, v73);
  v77 = v110;
  v76 = v111;
  v78 = v112;
  (*(v111 + 104))(v110, enum case for iCloudMailSettingsFeatureFlag.mailboxBehavior(_:), v112);
  v79 = sub_D51C0();
  (*(v76 + 8))(v77, v78);
  if (v79)
  {
    v80 = v123;
    sub_68C84(v115, v123);
    v81 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v82 = swift_allocObject();
    sub_68CF8(v80, v82 + v81);
    sub_66D4(&qword_126568, &qword_DEBB8);
    sub_719D0();
    v83 = v99;
    sub_D6260();
    *(v83 + *(v117 + 36)) = sub_D5CA0();
    sub_FEA4(v83, v125, &qword_126458, &qword_DE9F8);
    v75 = 0;
  }

  v84 = v125;
  (*(v113 + 56))(v125, v75, 1, v117);
  v85 = v119;
  sub_FBD4(v124, v119, &qword_126558, &qword_DEBA8);
  v86 = v121;
  sub_FBD4(v71, v121, &qword_126540, &qword_DEB90);
  sub_FBD4(v84, v122, &qword_126530, &qword_DEB80);
  v87 = v114;
  sub_FBD4(v85, v114, &qword_126558, &qword_DEBA8);
  v88 = sub_66D4(&qword_126560, &qword_DEBB0);
  v89 = (v87 + v88[12]);
  v90 = v106;
  v91 = v116;
  *v89 = v106;
  v89[1] = v91;
  v92 = v101;
  v89[2] = v105;
  v89[3] = v92;
  v93 = v102;
  v89[4] = v104;
  v89[5] = v93;
  v89[6] = v103;
  sub_FBD4(v86, v87 + v88[16], &qword_126540, &qword_DEB90);
  v94 = v122;
  sub_FBD4(v122, v87 + v88[20], &qword_126530, &qword_DEB80);
  sub_71970(v90, v91);
  sub_71994(v90, v91);
  sub_FC3C(v125, &qword_126530, &qword_DEB80);
  sub_FC3C(v120, &qword_126540, &qword_DEB90);
  sub_FC3C(v124, &qword_126558, &qword_DEBA8);
  sub_FC3C(v94, &qword_126530, &qword_DEB80);
  sub_FC3C(v121, &qword_126540, &qword_DEB90);
  sub_71994(v90, v91);
  return sub_FC3C(v119, &qword_126558, &qword_DEBA8);
}

uint64_t sub_6CE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v37._countAndFlagsBits = 0x5045522D4F545541;
  v37._object = 0xEA0000000000594CLL;
  sub_D66D0(v37);
  v38._countAndFlagsBits = 2777980912;
  v38._object = 0xA400000000000000;
  sub_D66D0(v38);
  v45._countAndFlagsBits = 2777980912;
  v28._countAndFlagsBits = 0xE000000000000000;
  v39._countAndFlagsBits = 0x5045522D4F545541;
  v39._object = 0xEA0000000000594CLL;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v7.super.isa = v6;
  v45._object = 0xA400000000000000;
  sub_D4E80(v39, v43, v7, v45, v28);

  sub_DFAC();
  v8 = sub_D5F50();
  v31 = v9;
  v32 = v8;
  v30 = v10;
  v33 = v11;
  v12 = *(*(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8) + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply);

  sub_D54F0();

  if (v36 == 1)
  {
    sub_31650(v34, v35, 1);
    v13 = [v5 bundleForClass:ObjCClassFromMetadata];
    v40._object = 0x80000000000E7700;
    v40._countAndFlagsBits = 0xD000000000000018;
    sub_D66D0(v40);
    v41._countAndFlagsBits = 2777980912;
    v41._object = 0xA400000000000000;
    sub_D66D0(v41);
    v46._countAndFlagsBits = 2777980912;
    v29._countAndFlagsBits = 0xE000000000000000;
    v42._object = 0x80000000000E7700;
    v42._countAndFlagsBits = 0xD000000000000018;
    v44.value._countAndFlagsBits = 0;
    v44.value._object = 0;
    v14.super.isa = v13;
    v46._object = 0xA400000000000000;
    sub_D4E80(v42, v44, v14, v46, v29);
  }

  else
  {

    sub_31650(v34, v35, v36);
    sub_2DE30();
    sub_31650(v34, v35, v36);
  }

  v15 = sub_D5F50();
  v17 = v16;
  v19 = v18;
  sub_D61B0();
  v20 = sub_D5F00();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_F16C(v15, v17, v19 & 1);

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  *(a2 + 64) = v24 & 1;
  *(a2 + 72) = v26;
  sub_166E0(v32, v31, v30 & 1);

  sub_166E0(v20, v22, v24 & 1);

  sub_F16C(v20, v22, v24 & 1);

  sub_F16C(v32, v31, v30 & 1);
}

uint64_t sub_6D2A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_D5220();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAPreferencesView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + *(__chkstk_darwin(v9 - 8) + 32) + 8);
  v13 = *(v12 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply);
  sub_2A5C4(v12 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v23);
  sub_68C84(a1, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  sub_68CF8(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *a2 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MSAutoReplyView();
  v17 = v16[7];
  (*(v5 + 104))(v8, enum case for Solarium.main(_:), v4);

  LOBYTE(v11) = sub_D5210();
  (*(v5 + 8))(v8, v4);
  *(a2 + v17) = v11 & 1;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  result = sub_38BDC(v23, v18 + 24);
  v20 = a2 + v16[5];
  *v20 = sub_71EA4;
  *(v20 + 1) = v18;
  v20[16] = 0;
  v21 = (a2 + v16[6]);
  *v21 = sub_71E60;
  v21[1] = v15;
  return result;
}

uint64_t sub_6D54C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_6D5D4@<X0>(uint64_t a1@<X8>)
{
  sub_66D4(&qword_1265D0, &qword_DEC50);
  sub_109A8(&qword_1265D8, &qword_1265D0, &qword_DEC50);
  sub_D5810();
  result = sub_66D4(&qword_126588, &qword_DEBC8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

double sub_6D6A0@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_D5B40();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_FBD4(&v19, &v11, &qword_1265E0, &qword_DEC58);
  sub_FC3C(v24, &qword_1265E0, &qword_DEC58);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_6D7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v54._countAndFlagsBits = 0x524F465F4C49414DLL;
  v54._object = 0xEF474E4944524157;
  sub_D66D0(v54);
  v55._countAndFlagsBits = 2777980912;
  v55._object = 0xA400000000000000;
  sub_D66D0(v55);
  v63._countAndFlagsBits = 2777980912;
  v37._countAndFlagsBits = 0xE000000000000000;
  v56._countAndFlagsBits = 0x524F465F4C49414DLL;
  v56._object = 0xEF474E4944524157;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v7.super.isa = v6;
  v63._object = 0xA400000000000000;
  v8 = sub_D4E80(v56, v61, v7, v63, v37);
  v10 = v9;

  *&v43 = v8;
  *(&v43 + 1) = v10;
  sub_DFAC();
  v11 = sub_D5F50();
  v40 = v12;
  v41 = v11;
  v39 = v13;
  v42 = v14;
  v15 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v53[0] = *(&v43 + 1);
  *(v53 + 7) = v10;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  if (v44 == 1)
  {
    v45 = v49;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    LOBYTE(v43) = v8;
    *(&v43 + 1) = v53[0];
    *(&v43 + 1) = *(v53 + 7);
    v44 = 1;
    sub_FC3C(&v43, &qword_125930, &unk_DFB90);
LABEL_6:
    v16 = [v5 bundleForClass:ObjCClassFromMetadata];
    *&v43 = 2777980912;
    *(&v43 + 1) = 0xA400000000000000;
    v59._countAndFlagsBits = 4605519;
    v59._object = 0xE300000000000000;
    sub_D66D0(v59);
    v60._countAndFlagsBits = 2777980912;
    v60._object = 0xA400000000000000;
    sub_D66D0(v60);
    v18 = *(&v43 + 1);
    v17._countAndFlagsBits = v43;
    v38._countAndFlagsBits = 0xE000000000000000;
    v19._countAndFlagsBits = 4605519;
    v19._object = 0xE300000000000000;
    goto LABEL_7;
  }

  LOBYTE(v43) = v8;
  *(&v43 + 1) = v53[0];
  *(&v43 + 1) = *(v53 + 7);
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  sub_FC3C(&v43, &qword_125930, &unk_DFB90);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = [v5 bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 20047;
  v57._object = 0xE200000000000000;
  sub_D66D0(v57);
  v58._countAndFlagsBits = 2777980912;
  v58._object = 0xA400000000000000;
  sub_D66D0(v58);
  v17._countAndFlagsBits = 2777980912;
  v18 = 0xA400000000000000;
  v38._countAndFlagsBits = 0xE000000000000000;
  v19._countAndFlagsBits = 20047;
  v19._object = 0xE200000000000000;
LABEL_7:
  v62.value._countAndFlagsBits = 0;
  v62.value._object = 0;
  v20.super.isa = v16;
  v17._object = v18;
  v21 = sub_D4E80(v19, v62, v20, v17, v38);
  v23 = v22;

  *&v43 = v21;
  *(&v43 + 1) = v23;
  v24 = sub_D5F50();
  v26 = v25;
  v28 = v27;
  sub_D61B0();
  v29 = sub_D5F00();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_F16C(v24, v26, v28 & 1);

  LOBYTE(v43) = v39 & 1;
  LOBYTE(v49) = v39 & 1;
  LOBYTE(v53[0]) = v33 & 1;
  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v29;
  *(a2 + 56) = v31;
  *(a2 + 64) = v33 & 1;
  *(a2 + 72) = v35;
  sub_166E0(v41, v40, v39 & 1);

  sub_166E0(v29, v31, v33 & 1);

  sub_F16C(v29, v31, v33 & 1);

  sub_F16C(v41, v40, v43);
}

uint64_t sub_6DC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D5220();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAPreferencesView();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  v11 = *(a1 + *(__chkstk_darwin(v9 - 8) + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v29 = v24[3];
  v30 = v24[4];
  v31 = v25;
  v26 = v24[0];
  v27 = v24[1];
  v28 = v24[2];
  sub_2A5C4(v11 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v24);
  sub_68C84(a1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v13 = swift_allocObject();
  sub_68CF8(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = type metadata accessor for MailForwadingView();
  v15 = v14[5];
  *(a2 + v15) = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[7];
  (*(v5 + 104))(v8, enum case for Solarium.main(_:), v4);
  LOBYTE(v15) = sub_D5210();
  (*(v5 + 8))(v8, v4);
  *(a2 + v16) = v15 & 1;
  v17 = (a2 + v14[6]);
  *v17 = sub_72EC4;
  v17[1] = v13;
  v18 = swift_allocObject();
  v19 = v29;
  v20 = v30;
  *(v18 + 48) = v28;
  *(v18 + 64) = v19;
  *(v18 + 80) = v20;
  *(v18 + 96) = v31;
  v21 = v27;
  *(v18 + 16) = v26;
  *(v18 + 32) = v21;
  result = sub_38BDC(v24, v18 + 104);
  *a2 = sub_71F50;
  *(a2 + 8) = v18;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_6DF9C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0x80000000000E6C80;
  v10._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E6C80;
  v12._countAndFlagsBits = 0xD000000000000011;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_6E0C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for MAPreferencesView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v7;
  v8 = sub_66D4(&qword_126518, &qword_DEAA0);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  v10 = __chkstk_darwin(v8);
  v53 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = a1;
  v15 = (a1 + *(v4 + 32));
  v16 = *(v15[1] + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_mailAssistantProvider);

  v17 = v13;
  sub_D52A0();

  v18 = sub_61364(&off_1139A8);
  v51 = 0;
  v52 = 0;
  v19 = 0;
  v20 = 0;
  v50 = 0;
  v21 = 0;
  v22 = 0;
  if (v18)
  {
    v23 = *v15;
    _s9ViewModelCMa_3();
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v24 = v5;
    v25 = v54;
    v26 = v55;
    v19 = v56;
    v27 = v14;
    v28 = v44;
    sub_68C84(v14, v44);
    v29 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v30 = swift_allocObject();
    sub_68CF8(v28, v30 + v29);
    sub_68C84(v27, v28);
    v22 = swift_allocObject();
    sub_68CF8(v28, v22 + v29);
    v52 = v25;

    v51 = v26;

    v50 = v30;

    v21 = sub_71824;
    v20 = sub_7180C;
  }

  v31 = v47;
  v32 = *(v47 + 16);
  v33 = v53;
  v46 = v17;
  v34 = v17;
  v35 = v48;
  v32(v53, v34, v48);
  v36 = v49;
  v32(v49, v33, v35);
  v37 = &v36[*(sub_66D4(&qword_126520, &qword_DEAA8) + 48)];
  v39 = v51;
  v38 = v52;
  v40 = v50;
  sub_7233C(v52, v51);
  sub_7239C(v38, v39);
  *v37 = v38;
  v37[1] = v39;
  v37[2] = v19;
  v37[3] = v20;
  v37[4] = v40;
  v37[5] = v21;
  v37[6] = v22;
  v41 = *(v31 + 8);
  v41(v46, v35);
  sub_7239C(v38, v39);
  return (v41)(v53, v35);
}

uint64_t sub_6E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v31 = a2;
  v2 = type metadata accessor for MAPreferencesView();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v30 = sub_66D4(&qword_126458, &qword_DE9F8);
  v4 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v6 = &v25 - v5;
  v28 = sub_66D4(&qword_126638, &qword_DED68);
  v7 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v9 = &v25 - v8;
  v29 = sub_66D4(&qword_126448, &qword_DE9F0);
  v25 = *(v29 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v29);
  v12 = &v25 - v11;
  v13 = sub_D51D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for iCloudMailSettingsFeatureFlag.endToEndEncryption(_:), v13);
  v18 = sub_D51C0();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) != 0 && (v19 = *(*(v27 + *(v2 + 24) + 8) + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionViewModel)) != 0)
  {
    *(&v25 - 2) = __chkstk_darwin(v27);
    v32 = v19;
    swift_retain_n();
    sub_66D4(&qword_1265D0, &qword_DEC50);
    sub_109A8(&qword_1265D8, &qword_1265D0, &qword_DEC50);
    sub_72174();
    sub_D5810();
    v20 = v25;
    v21 = v29;
    (*(v25 + 16))(v9, v12, v29);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_126440, &qword_126448, &qword_DE9F0);
    sub_71304();
    sub_D5BF0();

    return (*(v20 + 8))(v12, v21);
  }

  else
  {
    sub_68C84(v27, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v24 = swift_allocObject();
    sub_68CF8(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    sub_66D4(&qword_126568, &qword_DEBB8);
    sub_719D0();
    sub_D6260();
    *&v6[*(v30 + 36)] = sub_D5CA0();
    sub_FBD4(v6, v9, &qword_126458, &qword_DE9F8);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_126440, &qword_126448, &qword_DE9F0);
    sub_71304();
    sub_D5BF0();
    return sub_FC3C(v6, &qword_126458, &qword_DE9F8);
  }
}

uint64_t sub_6EA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v37._object = 0x80000000000E6CA0;
  v37._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v37);
  v38._countAndFlagsBits = 2777980912;
  v38._object = 0xA400000000000000;
  sub_D66D0(v38);
  v46._countAndFlagsBits = 2777980912;
  v31._countAndFlagsBits = 0xE000000000000000;
  v39._object = 0x80000000000E6CA0;
  v39._countAndFlagsBits = 0xD000000000000015;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v7.super.isa = v6;
  v46._object = 0xA400000000000000;
  v8 = sub_D4E80(v39, v44, v7, v46, v31);

  sub_DFAC();
  v9 = sub_D5F50();
  v34 = v10;
  v35 = v9;
  v33 = v11;
  v36 = v12;
  v13 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v14 = [v5 bundleForClass:ObjCClassFromMetadata];
  if (v8 == 1)
  {
    v40._countAndFlagsBits = 20047;
    v40._object = 0xE200000000000000;
    sub_D66D0(v40);
    v41._countAndFlagsBits = 2777980912;
    v41._object = 0xA400000000000000;
    sub_D66D0(v41);
    v15._countAndFlagsBits = 2777980912;
    v32._countAndFlagsBits = 0xE000000000000000;
    v16._countAndFlagsBits = 20047;
    v16._object = 0xE200000000000000;
  }

  else
  {
    v42._countAndFlagsBits = 4605519;
    v42._object = 0xE300000000000000;
    sub_D66D0(v42);
    v43._countAndFlagsBits = 2777980912;
    v43._object = 0xA400000000000000;
    sub_D66D0(v43);
    v15._countAndFlagsBits = 2777980912;
    v32._countAndFlagsBits = 0xE000000000000000;
    v16._countAndFlagsBits = 4605519;
    v16._object = 0xE300000000000000;
  }

  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v17.super.isa = v14;
  v15._object = 0xA400000000000000;
  sub_D4E80(v16, v45, v17, v15, v32);

  v18 = sub_D5F50();
  v20 = v19;
  v22 = v21;
  sub_D61B0();
  v23 = sub_D5F00();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_F16C(v18, v20, v22 & 1);

  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v23;
  *(a2 + 56) = v25;
  *(a2 + 64) = v27 & 1;
  *(a2 + 72) = v29;
  sub_166E0(v35, v34, v33 & 1);

  sub_166E0(v23, v25, v27 & 1);

  sub_F16C(v23, v25, v27 & 1);

  sub_F16C(v35, v34, v33 & 1);
}

uint64_t sub_6EE44@<X0>(uint64_t a1@<X8>)
{
  sub_D5810();
  result = sub_66D4(&qword_126568, &qword_DEBB8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_6EEAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0x80000000000E6CA0;
  v10._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E6CA0;
  v12._countAndFlagsBits = 0xD000000000000015;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_6EFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  sub_5FEAC();
  _s11descr1123A1O9ViewModelCMa();
  sub_72C3C(&qword_1265E8, _s11descr1123A1O9ViewModelCMa);
  result = sub_D5860();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  return result;
}

id sub_6F070()
{
  v0 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  result = [v0 setDrawBorder:1];
  qword_126258 = v0;
  return result;
}

uint64_t sub_6F0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_68C84(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_68CF8(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v11 = a1;
  sub_66D4(&qword_1265F0, &qword_DECD8);
  sub_71FAC();
  sub_D6260();
  LODWORD(a1) = sub_D5CA0();
  result = sub_66D4(&qword_1264C8, &unk_DEA70);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_6F244@<X0>(uint64_t a1@<X8>)
{
  sub_66D4(&qword_126610, &qword_DECE8);
  sub_109A8(&qword_126618, &qword_126610, &qword_DECE8);
  sub_D5810();
  result = sub_66D4(&qword_1265F0, &qword_DECD8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_6F314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_126620, &unk_DECF0);
  return sub_6F36C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_6F36C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = sub_66D4(&qword_1226F8, &qword_DA778);
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v63 = (&v61 - v6);
  v7 = sub_66D4(&qword_121238, &unk_D8E20);
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v61 - v12;
  v14 = sub_66D4(&qword_122700, &qword_DED00);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v72 = &v61 - v19;
  v20 = sub_66D4(&qword_126628, &qword_DED08);
  v68 = *(v20 - 8);
  v21 = *(v68 + 64);
  v22 = __chkstk_darwin(v20);
  v74 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v61 - v24;
  v26 = objc_allocWithZone(ISIcon);
  v27 = sub_D65C0();
  [v26 initWithType:v27];

  if (qword_120E68 != -1)
  {
    swift_once();
  }

  v28 = qword_126258;
  v73 = v25;
  sub_D5300();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v75._countAndFlagsBits = 2777980912;
  v75._object = 0xA400000000000000;
  v76._object = 0x80000000000E8C00;
  v76._countAndFlagsBits = 0xD000000000000013;
  sub_D66D0(v76);
  v77._countAndFlagsBits = 2777980912;
  v77._object = 0xA400000000000000;
  sub_D66D0(v77);
  v60._countAndFlagsBits = 0xE000000000000000;
  v78._object = 0x80000000000E8C00;
  v78._countAndFlagsBits = 0xD000000000000013;
  v79.value._countAndFlagsBits = 0;
  v79.value._object = 0;
  v31.super.isa = v30;
  v32 = sub_D4E80(v78, v79, v31, v75, v60);
  v34 = v33;

  v75._countAndFlagsBits = v32;
  v75._object = v34;
  sub_DFAC();
  v35 = sub_D5F50();
  v65 = v36;
  v66 = v35;
  v64 = v37;
  v67 = v38;
  v39 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v40 = 1;
  if (LOBYTE(v75._countAndFlagsBits) == 1)
  {
    sub_D5780();
    v42 = v61;
    v41 = v62;
    v43 = *(v61 + 16);
    v43(v11, v13, v62);
    v44 = v63;
    *v63 = 0;
    *(v44 + 8) = 1;
    v45 = sub_66D4(&qword_122740, &qword_DED60);
    v43((v44 + *(v45 + 48)), v11, v41);
    v46 = *(v42 + 8);
    v46(v13, v41);
    v46(v11, v41);
    sub_FEA4(v44, v72, &qword_1226F8, &qword_DA778);
    v40 = 0;
  }

  v47 = v72;
  (*(v70 + 56))(v72, v40, 1, v69);
  v48 = v68;
  v49 = *(v68 + 16);
  v50 = v74;
  v49(v74, v73, v20);
  sub_FBD4(v47, v18, &qword_122700, &qword_DED00);
  v51 = v18;
  v52 = v71;
  v49(v71, v50, v20);
  v53 = sub_66D4(&qword_126630, &qword_DED58);
  v54 = &v52[*(v53 + 48)];
  v55 = v65;
  v56 = v66;
  *v54 = v66;
  *(v54 + 1) = v55;
  v57 = v64 & 1;
  v54[16] = v64 & 1;
  *(v54 + 3) = v67;
  sub_FBD4(v51, &v52[*(v53 + 64)], &qword_122700, &qword_DED00);
  sub_166E0(v56, v55, v57);

  sub_FC3C(v47, &qword_122700, &qword_DED00);
  v58 = *(v48 + 8);
  v58(v73, v20);
  sub_FC3C(v51, &qword_122700, &qword_DED00);
  sub_F16C(v56, v55, v57);

  return (v58)(v74, v20);
}

uint64_t sub_6FA00()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x80000000000E8B80;
  sub_D66D0(v20);
  v21._countAndFlagsBits = 2777980912;
  v21._object = 0xA400000000000000;
  sub_D66D0(v21);
  v36._countAndFlagsBits = 2777980912;
  v17._countAndFlagsBits = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000017;
  v22._object = 0x80000000000E8B80;
  v33.value._countAndFlagsBits = 0;
  v33.value._object = 0;
  v3.super.isa = v2;
  v36._object = 0xA400000000000000;
  v4 = sub_D4E80(v22, v33, v3, v36, v17);
  v6 = v5;

  v7 = [v1 bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v23._object = 0xEA00000000004552;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v37._countAndFlagsBits = 2777980912;
  v18._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v25._object = 0xEA00000000004552;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v8.super.isa = v7;
  v37._object = 0xA400000000000000;
  v9 = sub_D4E80(v25, v34, v8, v37, v18);
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_D66D0(v26);

  v27._countAndFlagsBits = 10333;
  v27._object = 0xE200000000000000;
  sub_D66D0(v27);
  v28._countAndFlagsBits = v4;
  v28._object = v6;
  sub_D66D0(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_D66D0(v29);
  v12 = [v1 bundleForClass:ObjCClassFromMetadata];
  v30._object = 0x80000000000E8BA0;
  v30._countAndFlagsBits = 0xD000000000000012;
  sub_D66D0(v30);
  v31._countAndFlagsBits = 2777980912;
  v31._object = 0xA400000000000000;
  sub_D66D0(v31);
  v38._countAndFlagsBits = 2777980912;
  v19._countAndFlagsBits = 0xE000000000000000;
  v32._object = 0x80000000000E8BA0;
  v32._countAndFlagsBits = 0xD000000000000012;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v13.super.isa = v12;
  v38._object = 0xA400000000000000;
  sub_D4E80(v32, v35, v13, v38, v19);

  sub_66D4(&qword_121390, &qword_D9050);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_D8CB0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_F7DC();
  *(v14 + 32) = 91;
  *(v14 + 40) = 0xE100000000000000;
  v15 = sub_D6610();

  return v15;
}

uint64_t sub_6FD5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = sub_D63D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for MAPreferencesView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = *(a1 + *(__chkstk_darwin(v10 - 8) + 32) + 8);
  sub_2A5C4(v13 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v43);
  v40 = *(v13 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxRuleCountAllowed);
  v14 = *(v13 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_sharedPreference);
  v15 = *(v13 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_folderList);
  sub_68C84(a1, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_68CF8(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  KeyPath = swift_getKeyPath();
  v19 = v38;
  *v38 = KeyPath;
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for MSRulesView();
  v21 = v19 + v20[6];
  v41 = 0;
  v22 = v14;

  v23 = v15;

  sub_D6200();
  object = v42._object;
  *v21 = v42._countAndFlagsBits;
  *(v21 + 1) = object;
  v25 = v20[7];
  (*(v4 + 104))(v9, enum case for EditMode.inactive(_:), v3);
  (*(v4 + 16))(v39, v9, v3);
  sub_D6200();
  (*(v4 + 8))(v9, v3);
  v26 = (v19 + v20[8]);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v42._countAndFlagsBits = 2777980912;
  v42._object = 0xA400000000000000;
  v44._countAndFlagsBits = 0x49542E53454C5552;
  v44._object = 0xEB00000000454C54;
  sub_D66D0(v44);
  v45._countAndFlagsBits = 2777980912;
  v45._object = 0xA400000000000000;
  sub_D66D0(v45);
  v36._countAndFlagsBits = 0xE000000000000000;
  v46._countAndFlagsBits = 0x49542E53454C5552;
  v46._object = 0xEB00000000454C54;
  v47.value._countAndFlagsBits = 0;
  v47.value._object = 0;
  v29.super.isa = v28;
  v30 = sub_D4E80(v46, v47, v29, v42, v36);
  v32 = v31;

  *v26 = v30;
  v26[1] = v32;
  v33 = swift_allocObject();
  result = sub_38BDC(v43, (v33 + 2));
  v33[7] = v40;
  v33[8] = v22;
  v33[9] = v23;
  v33[10] = sub_718F0;
  v33[11] = v17;
  v35 = v19 + v20[5];
  *v35 = sub_7195C;
  *(v35 + 1) = v33;
  v35[16] = 0;
  return result;
}

double sub_70184@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_70268(a1, &v8);
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v14 = v8;
  v15 = v9;
  v21 = v13;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[0] = v8;
  v20[1] = v9;
  sub_FBD4(&v14, &v7, &qword_126528, &qword_DEAD8);
  sub_FC3C(v20, &qword_126528, &qword_DEAD8);
  v4 = v17;
  *(a2 + 56) = v16;
  *(a2 + 72) = v4;
  *(a2 + 88) = v18;
  *(a2 + 104) = v19;
  result = *&v14;
  v6 = v15;
  *(a2 + 24) = v14;
  *(a2 + 40) = v6;
  return result;
}

uint64_t sub_70268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v40._object = 0x80000000000E8B60;
  v40._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v40);
  v41._countAndFlagsBits = 2777980912;
  v41._object = 0xA400000000000000;
  sub_D66D0(v41);
  v48._countAndFlagsBits = 2777980912;
  v31._countAndFlagsBits = 0xE000000000000000;
  v42._object = 0x80000000000E8B60;
  v42._countAndFlagsBits = 0xD000000000000011;
  v46.value._countAndFlagsBits = 0;
  v46.value._object = 0;
  v7.super.isa = v6;
  v48._object = 0xA400000000000000;
  v8 = sub_D4E80(v42, v46, v7, v48, v31);

  sub_DFAC();
  v9 = sub_D5F50();
  v34 = v10;
  v35 = v9;
  v33 = v11;
  v36 = v12;
  v13 = *(a1 + *(type metadata accessor for MAPreferencesView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v8 <= 0)
  {
    v20 = [v5 bundleForClass:ObjCClassFromMetadata];
    v43._countAndFlagsBits = 4605519;
    v43._object = 0xE300000000000000;
    sub_D66D0(v43);
    v44._countAndFlagsBits = 2777980912;
    v44._object = 0xA400000000000000;
    sub_D66D0(v44);
    v49._countAndFlagsBits = 2777980912;
    v32._countAndFlagsBits = 0xE000000000000000;
    v45._countAndFlagsBits = 4605519;
    v45._object = 0xE300000000000000;
    v47.value._countAndFlagsBits = 0;
    v47.value._object = 0;
    v21.super.isa = v20;
    v49._object = 0xA400000000000000;
    v22 = sub_D4E80(v45, v47, v21, v49, v32);
    v24 = v23;

    *&v37 = v22;
    *(&v37 + 1) = v24;
    v25 = sub_D5F50();
    v27 = v26;
    v29 = v28;
    sub_D61B0();
    sub_D5F00();

    sub_F16C(v25, v27, v29 & 1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    *&v37 = sub_2A2C8(v8);
    *(&v37 + 1) = v14;
    v15 = sub_D5F50();
    v17 = v16;
    v19 = v18;
    sub_D61B0();
    sub_D5F00();

    sub_F16C(v15, v17, v19 & 1);
  }

  sub_D5BF0();
  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v37;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  sub_166E0(v35, v34, v33 & 1);

  sub_71878(v37, *(&v37 + 1), v38);
  sub_718B4(v37, *(&v37 + 1), v38);
  sub_F16C(v35, v34, v33 & 1);
}

double sub_7070C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_7078C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_72BD8(v2, v3);

  return sub_D5580();
}

uint64_t sub_70814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_70894(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_70910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_70990(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_70A64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

__n128 sub_70AD4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_70B90(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v17[2] = a1[2];
  v17[3] = v3;
  v17[4] = a1[4];
  v18 = *(a1 + 10);
  v4 = a1[1];
  v17[0] = *a1;
  v17[1] = v4;
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[2];
  v7 = a1[4];
  v14 = a1[3];
  v15 = v7;
  v16 = *(a1 + 10);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  v13 = v6;
  sub_FBD4(v17, v10, &qword_125930, &unk_DFB90);

  return sub_D5580();
}

uint64_t sub_70D30()
{
  v1 = type metadata accessor for MAPreferencesView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_D5910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  sub_66D4(&qword_1235A0, &qword_DB238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_D5710();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = (v3 + v4 + v7) & ~v7;
  sub_68CEC(*(v9 + *(v1 + 20)), *(v9 + *(v1 + 20) + 8));
  v13 = *(v9 + *(v1 + 24) + 8);

  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v2 | v7 | 7);
}

void sub_70EF4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for MAPreferencesView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_D5910() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_68ACC(a1, a2, v2 + v6);
}

unint64_t sub_70FD8()
{
  result = qword_126340;
  if (!qword_126340)
  {
    sub_6110(&qword_126320, &qword_DE880);
    sub_6110(&qword_126318, &qword_DE878);
    sub_6110(&qword_126310, &qword_DE870);
    sub_109A8(&qword_126338, &qword_126310, &qword_DE870);
    swift_getOpaqueTypeConformance2();
    sub_DFAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126340);
  }

  return result;
}

unint64_t sub_7112C()
{
  result = qword_126348;
  if (!qword_126348)
  {
    sub_6110(&unk_125940, &qword_DDCE8);
    sub_635C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126348);
  }

  return result;
}

unint64_t sub_711B0()
{
  result = qword_126350;
  if (!qword_126350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126350);
  }

  return result;
}

unint64_t sub_7124C()
{
  result = qword_126438;
  if (!qword_126438)
  {
    sub_6110(&qword_126430, &qword_DE9E8);
    sub_109A8(&qword_126440, &qword_126448, &qword_DE9F0);
    sub_71304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126438);
  }

  return result;
}

unint64_t sub_71304()
{
  result = qword_126450;
  if (!qword_126450)
  {
    sub_6110(&qword_126458, &qword_DE9F8);
    sub_109A8(&qword_126460, &qword_126468, &unk_DEA00);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126450);
  }

  return result;
}

unint64_t sub_713E8()
{
  result = qword_126490;
  if (!qword_126490)
  {
    sub_6110(&qword_1263F0, &unk_DE970);
    sub_71474();
    sub_71504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126490);
  }

  return result;
}

unint64_t sub_71474()
{
  result = qword_126498;
  if (!qword_126498)
  {
    sub_6110(&qword_1263F8, &unk_E3D20);
    sub_F5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126498);
  }

  return result;
}

unint64_t sub_71504()
{
  result = qword_1264A0;
  if (!qword_1264A0)
  {
    sub_6110(&qword_1263D8, &qword_DE958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1264A0);
  }

  return result;
}

unint64_t sub_7158C()
{
  result = qword_1264A8;
  if (!qword_1264A8)
  {
    sub_6110(&qword_1263D0, &qword_DE950);
    sub_109A8(&qword_126488, &qword_126360, &qword_DE8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1264A8);
  }

  return result;
}

unint64_t sub_716A4()
{
  result = qword_1264D0;
  if (!qword_1264D0)
  {
    sub_6110(&qword_1264C8, &unk_DEA70);
    sub_109A8(&qword_1264D8, &qword_1264E0, &qword_DEA80);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1264D0);
  }

  return result;
}

uint64_t sub_717A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_681BC(a1);
}

uint64_t sub_717A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_71878(uint64_t a1, uint64_t a2, char a3)
{
  sub_166E0(a1, a2, a3 & 1);
}

uint64_t sub_718B4(uint64_t a1, uint64_t a2, char a3)
{
  sub_F16C(a1, a2, a3 & 1);
}

uint64_t sub_7190C()
{
  sub_67D4(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_71970(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_7233C(result, a2);
  }

  return result;
}

uint64_t sub_71994(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_7239C(result, a2);
  }

  return result;
}

unint64_t sub_719D0()
{
  result = qword_126570;
  if (!qword_126570)
  {
    sub_6110(&qword_126568, &qword_DEBB8);
    sub_109A8(&qword_126578, &qword_126580, &qword_DEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126570);
  }

  return result;
}

unint64_t sub_71ACC()
{
  result = qword_126590;
  if (!qword_126590)
  {
    sub_6110(&qword_126588, &qword_DEBC8);
    sub_109A8(&qword_126598, &qword_1265A0, &qword_DEBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126590);
  }

  return result;
}

unint64_t sub_71BEC()
{
  result = qword_1265A8;
  if (!qword_1265A8)
  {
    sub_6110(&qword_126548, &qword_DEB98);
    sub_109A8(&qword_1265B0, &qword_1265B8, &qword_DEC00);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1265A8);
  }

  return result;
}

double sub_71CD0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MAPreferencesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_70184(v4, a1);
}

uint64_t sub_71E64()
{
  v1 = *(v0 + 16);

  sub_67D4((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_71EE8()
{
  if (v0[4] != 1)
  {

    if (v0[8] != 1)
    {

      v1 = v0[10];

      v2 = v0[12];
    }
  }

  sub_67D4(v0 + 13);

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_71FAC()
{
  result = qword_1265F8;
  if (!qword_1265F8)
  {
    sub_6110(&qword_1265F0, &qword_DECD8);
    sub_109A8(&qword_126600, &qword_126608, &qword_DECE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1265F8);
  }

  return result;
}

uint64_t sub_720D4(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for MAPreferencesView();
  v4 = *(v1 + *(v3 + 24) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + 8);
  return a1();
}

unint64_t sub_72174()
{
  result = qword_126640;
  if (!qword_126640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126640);
  }

  return result;
}

uint64_t sub_72224()
{
  v1 = *(type metadata accessor for MAPreferencesView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_6BD18(v2);
}

unint64_t sub_72284()
{
  result = qword_126678;
  if (!qword_126678)
  {
    sub_6110(&qword_126648, &qword_DEDB8);
    sub_109A8(&qword_126680, &qword_126688, &qword_DEE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126678);
  }

  return result;
}

uint64_t sub_7233C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_7239C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_72450@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MAPreferencesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6B35C(v4, a1);
}

double sub_724C0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MAPreferencesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6B584(v4, a1);
}

uint64_t sub_72580@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MAPreferencesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6AE04(v4, a1);
}

uint64_t sub_72608(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MAPreferencesView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_72694(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MAPreferencesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6B0C4(a1, a2, v6);
}

uint64_t sub_72714()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_67D4(v0 + 5);
  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_727C8()
{
  v1 = type metadata accessor for MAPreferencesView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1235A0, &qword_DB238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D5710();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_68CEC(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v8 = *(v5 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_72900(char a1)
{
  result = type metadata accessor for MAPreferencesView();
  if (a1)
  {
    v4 = *(v1 + *(result + 24) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80)) + 8);
    return sub_60618();
  }

  return result;
}

uint64_t sub_72970()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_67D4(v0 + 5);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_72A1C@<X0>(void *a1@<X8>)
{
  result = sub_D5A20();
  *a1 = v3;
  return result;
}

uint64_t sub_72A48@<X0>(void *a1@<X8>)
{
  result = sub_D5A20();
  *a1 = v3;
  return result;
}

uint64_t sub_72AD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5A40();
  *a1 = result;
  return result;
}

uint64_t sub_72B28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D59C0();
  *a1 = result;
  return result;
}

uint64_t sub_72B54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D59C0();
  *a1 = result;
  return result;
}

uint64_t sub_72B80(uint64_t *a1)
{
  v1 = *a1;

  return sub_D59D0();
}

uint64_t sub_72BAC(uint64_t *a1)
{
  v1 = *a1;

  return sub_D59D0();
}

uint64_t sub_72BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_72C3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_72C84()
{
  result = qword_1266F0;
  if (!qword_1266F0)
  {
    sub_6110(&qword_1266D0, &qword_DF0E0);
    sub_72D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1266F0);
  }

  return result;
}

unint64_t sub_72D10()
{
  result = qword_1266F8;
  if (!qword_1266F8)
  {
    sub_6110(&qword_1266C8, &qword_DF0D8);
    sub_109A8(&qword_126700, &qword_1266C0, &qword_DF0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1266F8);
  }

  return result;
}

uint64_t sub_72DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5A40();
  *a1 = result;
  return result;
}

uint64_t sub_72F40(uint64_t a1)
{
  v2 = *(v1 + qword_126728);
  *(v1 + qword_126728) = a1;
  return _objc_release_x1();
}

uint64_t sub_72F54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = qword_126738;
  swift_beginAccess();
  v6 = *(&stru_20.filesize + (v4 & v3));
  v7 = *(&stru_20.maxprot + (v4 & v3));
  type metadata accessor for MSRequest.RequestBody();
  v8 = sub_D6930();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

id sub_73028()
{
  v1 = *(v0 + qword_126728);
  if (v1)
  {
    v2 = *(v0 + qword_126728);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = *(v0 + qword_126728);
  *(v0 + qword_126728) = v4;

  result = [v3 defaultStore];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_730C4()
{
  v1 = qword_126758;
  v2 = *(v0 + qword_126758);
  if (v2)
  {
    v3 = *(v0 + qword_126758);
  }

  else
  {
    sub_73718(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_73128(unsigned __int8 a1)
{
  v1 = 5522759;
  v2 = 5526864;
  if (a1 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (a1)
  {
    v1 = 1414745936;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_73188()
{
  v1 = sub_D5340();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(&stru_B8.reloff + (swift_isaMask & *v0)))(v4);
  v9 = v8;
  v11 = v10;
  v12 = [*(v0 + qword_126730) propertiesForDataclass:v7];
  if (v12)
  {
    v13 = v12;
    v14 = sub_D6530();

    v30 = v9;
    v31 = v11;

    sub_D69D0();
    if (*(v14 + 16) && (v15 = sub_4BA90(v32), (v16 & 1) != 0))
    {
      sub_263D4(*(v14 + 56) + 32 * v15, v33);
      sub_4C868(v32);

      if (swift_dynamicCast())
      {

        return v30;
      }
    }

    else
    {

      sub_4C868(v32);
    }
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v1, qword_137988);
  (*(v2 + 16))(v6, v18, v1);
  v19 = v7;

  v20 = sub_D5320();
  v21 = sub_D68B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = v1;
    v23 = v2;
    v24 = v22;
    v32[0] = swift_slowAlloc();
    *v24 = 136315394;

    v25 = sub_558F0(v9, v11, v32);

    *(v24 + 4) = v25;
    *(v24 + 12) = 2080;
    v26 = sub_D65F0();
    v28 = sub_558F0(v26, v27, v32);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_0, v20, v21, "Account bag has no value for key: %s in %s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v23 + 8))(v6, v29);
  }

  else
  {

    (*(v2 + 8))(v6, v1);
  }

  return 0;
}

id sub_73550(void *a1)
{
  v1 = a1;
  sub_73188();

  v2 = sub_D65C0();

  return v2;
}

uint64_t sub_73614()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return type metadata accessor for MSAPIResponse();
}

uint64_t sub_73620()
{
  swift_getObjCClassMetadata();
  sub_73614();

  return swift_getObjCClassFromMetadata();
}

void sub_73718(uint64_t a1)
{
  v2 = sub_73028();
  v3 = sub_73028();
  v4 = [v3 aida_accountForiCloudAccount:*(a1 + qword_126730)];

  v5 = objc_allocWithZone(AAGrandSlamSigner);
  v6 = sub_D65C0();
  v7 = [v5 initWithAccountStore:v2 grandSlamAccount:v4 appTokenID:v6];

  if (!v7)
  {
    __break(1u);
  }
}

Class sub_737E0(void *a1)
{
  v2 = sub_D4D40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_738D8(v6);

  v8 = sub_D4D20();
  (*(v3 + 8))(v6, v2);

  return v8;
}

void sub_738D8(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = sub_D5340();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  v7 = __chkstk_darwin(v5);
  v63 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v62[-v10];
  v12 = *(&stru_20.filesize + (v4 & v3));
  v13 = *(&stru_20.maxprot + (v4 & v3));
  v14 = type metadata accessor for MSRequest();
  v66.receiver = v2;
  v66.super_class = v14;
  v15 = objc_msgSendSuper2(&v66, "urlRequest");
  if (!v15)
  {
    __break(1u);
  }

  v16 = v15;
  [v15 mutableCopy];

  sub_D6980();
  swift_unknownObjectRelease();
  sub_5411C(0, &qword_1269E8, NSMutableURLRequest_ptr);
  v17 = swift_dynamicCast();
  v18 = v68;
  if ((*(&stru_B8.reserved2 + (swift_isaMask & *v2)))(v17))
  {
    v19 = sub_730C4();
    [v19 setUseAltDSID:1];

    if (([*(v2 + qword_126758) signURLRequest:v18 isUserInitiated:1] & 1) == 0)
    {
      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v20 = sub_6610(v5, qword_137988);
      (*(v64 + 16))(v11, v20, v5);
      v21 = sub_D5320();
      v22 = sub_D68B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "Unable to sign grandslam request", v23, 2u);
      }

      (*(v64 + 8))(v11, v5);
    }

    v24 = [v18 aa_addBasicAuthorizationHeaderWithAccount:*(v2 + qword_126730) preferUsingPassword:0];
  }

  else
  {
    v24 = [v18 aa_addAuthTokenOrBasicAuthHeaderWithAccount:*(v2 + qword_126730) preferUsingPassword:0];
  }

  (*(&stru_B8.flags + (swift_isaMask & *v2)))(v24);
  v25 = sub_D65C0();

  [v18 setHTTPMethod:v25];

  sub_72F54(&v68);
  if (v69[24] == 255)
  {
    v28 = v5;
    type metadata accessor for MSRequest.RequestBody();
    v31 = sub_D6930();
    (*(*(v31 - 8) + 8))(&v68, v31);
  }

  else
  {
    v70 = v68;
    v71[0] = *v69;
    *(v71 + 9) = *&v69[9];
    v26 = type metadata accessor for MSRequest.RequestBody();
    v27 = *(v26 - 8);
    (*(v27 + 16))(&v68, &v70, v26);
    if (v69[24])
    {
      v28 = v5;
      v29 = v68;
      isa = sub_D4F30().super.isa;
      [v18 setHTTPBody:isa];
      sub_26628(v29, *(&v29 + 1));

      (*(v27 + 8))(&v70, v26);
    }

    else
    {
      sub_38BDC(&v68, v67);
      sub_6648(v67, v67[3]);
      v28 = v5;
      v32 = sub_74578();
      v34 = v33;
      v35 = sub_D4F30().super.isa;
      sub_26628(v32, v34);
      [v18 setHTTPBody:v35];

      (*(v27 + 8))(&v70, v26);
      sub_67D4(v67);
    }
  }

  v36 = sub_D65C0();
  v37 = sub_D65C0();
  [v18 setValue:v36 forHTTPHeaderField:v37];

  v38 = [objc_allocWithZone(AADeviceInfo) init];
  v39 = [v38 udid];

  v40 = sub_D65C0();
  [v18 setValue:v39 forHTTPHeaderField:v40];

  v41 = *(v2 + qword_126760);
  v42 = *(v2 + qword_126760 + 8);

  v43 = sub_D65C0();

  v44 = sub_D65C0();
  [v18 setValue:v43 forHTTPHeaderField:v44];

  if ((*&stru_108.sectname[swift_isaMask & *v2])())
  {
    v45 = [objc_allocWithZone(AKAnisetteProvisioningController) init];
    *&v70 = 0;
    v46 = [v45 anisetteDataWithError:&v70];
    if (v46)
    {
      v47 = v46;
      v48 = v70;
      v49 = [v47 machineID];
      v50 = sub_D65C0();
      [v18 setValue:v49 forHTTPHeaderField:v50];

      v51 = [v47 oneTimePassword];
      v52 = sub_D65C0();
      [v18 setValue:v51 forHTTPHeaderField:v52];

      *&v70 = [v47 routingInfo];
      sub_D6C10();
      v53 = sub_D65C0();

      v54 = sub_D65C0();
      [v18 setValue:v53 forHTTPHeaderField:v54];
    }

    else
    {
      v55 = v70;
      sub_D4EA0();

      swift_willThrow();
      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v56 = sub_6610(v28, qword_137988);
      v57 = v64;
      v58 = v63;
      (*(v64 + 16))(v63, v56, v28);
      v59 = sub_D5320();
      v60 = sub_D68B0();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_0, v59, v60, "Can't get anisette data", v61, 2u);
      }

      (*(v57 + 8))(v58, v28);
    }
  }

  sub_D4D30();
}

uint64_t sub_74578()
{
  v0 = sub_D4DA0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_D4D90();
  v3 = sub_D4D80();

  return v3;
}

void sub_74608(void *a1)
{
  v1 = *(&stru_20.filesize + (swift_isaMask & *a1));
  v2 = *(&stru_20.maxprot + (swift_isaMask & *a1));
  sub_77DA8();
}

uint64_t sub_74678(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  v4 = qword_126738;
  v5 = *(&stru_20.filesize + (v3 & v2));
  v6 = *(&stru_20.maxprot + (v3 & v2));
  type metadata accessor for MSRequest.RequestBody();
  v7 = sub_D6930();
  (*(*(v7 - 8) + 8))(&a1[v4], v7);

  v8 = *&a1[qword_126760 + 8];
}

uint64_t sub_74790(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for MSResult();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_74824@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v101 = a3;
  v91 = sub_D4F20();
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  v9 = __chkstk_darwin(v91);
  v94 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4;
  v102 = v4[10];
  v88 = *(v102 - 8);
  v12 = *(v88 + 8);
  __chkstk_darwin(v9);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_D5340();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v93 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v87 = &v87 - v21;
  v22 = __chkstk_darwin(v20);
  v89 = &v87 - v23;
  __chkstk_darwin(v22);
  v25 = &v87 - v24;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v95 = v14;
  v26 = sub_6610(v15, qword_137988);
  v27 = v16[2];
  v97 = v26;
  v98 = v27;
  v99 = v16 + 2;
  (v27)(v25);
  v28 = sub_D5320();
  v29 = sub_D68D0();
  v30 = os_log_type_enabled(v28, v29);
  v100 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v92 = v11;
    v33 = v32;
    v103[0]._countAndFlagsBits = v32;
    *v31 = 136315138;
    v34 = sub_D6D30();
    v96 = a2;
    v36 = v15;
    v37 = sub_558F0(v34, v35, &v103[0]._countAndFlagsBits);
    a2 = v96;

    *(v31 + 4) = v37;
    v15 = v36;
    _os_log_impl(&dword_0, v28, v29, "Parsing response %s", v31, 0xCu);
    sub_67D4(v33);
    a4 = v100;
    v11 = v92;
  }

  v38 = v16[1];
  v38(v25, v15);
  if (!swift_conformsToProtocol2())
  {
    v92 = a1;
    v44 = sub_D4D70();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    sub_D4D60();
    v47 = v11[11];
    v48 = v95;
    v49 = a2;
    v50 = v101;
    sub_D4D50();
    v96 = 0;

    v81 = v102;
    v82 = (v100 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v88 + 4))(v100, v48, v81);
    *v82 = v49;
    v82[1] = v50;
    type metadata accessor for MSResult();
    swift_storeEnumTagMultiPayload();
    v42 = v49;
    v43 = v50;
    return sub_26558(v42, v43);
  }

  if ([a1 statusCode] - 200 <= &stru_20.nsects + 3)
  {
    v39 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    swift_dynamicCast();
    v40 = v101;
    *v39 = a2;
    v39[1] = v40;
    v41 = v11[11];
    type metadata accessor for MSResult();
    swift_storeEnumTagMultiPayload();
    v42 = a2;
    v43 = v40;
    return sub_26558(v42, v43);
  }

  v88 = v38;
  v95 = v16;
  v51 = v15;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v103[0]._countAndFlagsBits = 2777980912;
  v103[0]._object = 0xA400000000000000;
  v104._object = 0x80000000000E8950;
  v104._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v104);
  v105._countAndFlagsBits = 2777980912;
  v105._object = 0xA400000000000000;
  sub_D66D0(v105);
  v86._countAndFlagsBits = 0xE000000000000000;
  v106._object = 0x80000000000E8950;
  v106._countAndFlagsBits = 0xD000000000000015;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v54.super.isa = v53;
  v55 = sub_D4E80(v106, v107, v54, v103[0], v86);
  v57 = v56;

  sub_6780();
  v58 = swift_allocError();
  *v59 = v55;
  *(v59 + 8) = v57;
  *(v59 + 16) = 0;
  *(v59 + 24) = 1;
  *(v59 + 32) = 0;
  *(v59 + 40) = 1;
  v96 = v58;
  swift_willThrow();
  v60 = [a1 allHeaderFields];
  v61 = sub_D6530();

  sub_75908(v61);

  v62 = sub_D4D70();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_D4D60();
  sub_7858C();
  sub_D4D50();

  countAndFlagsBits = v103[0]._countAndFlagsBits;
  object = v103[0]._object;
  v67 = v89;
  v68 = v51;
  v98(v89, v97, v51);
  v69 = a1;

  v70 = sub_D5320();
  v71 = sub_D68B0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v92 = v11;
    v73 = a4;
    v74 = v72;
    v75 = swift_slowAlloc();
    v103[0]._countAndFlagsBits = v75;
    *v74 = 134218242;
    *(v74 + 4) = [v69 statusCode];

    *(v74 + 12) = 2080;

    v76 = sub_558F0(countAndFlagsBits, object, &v103[0]._countAndFlagsBits);
    *&v101 = countAndFlagsBits;
    v77 = v68;
    v78 = v76;

    *(v74 + 14) = v78;
    _os_log_impl(&dword_0, v70, v71, "[%ld] %s", v74, 0x16u);
    sub_67D4(v75);

    a4 = v73;
    v11 = v92;

    v79 = v67;
    v80 = v77;
    countAndFlagsBits = v101;
  }

  else
  {

    v79 = v67;
    v80 = v68;
  }

  v88(v79, v80);
  v84 = [v69 statusCode];

  *a4 = countAndFlagsBits;
  *(a4 + 8) = object;
  *(a4 + 16) = v84;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v85 = v11[11];
  type metadata accessor for MSResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_75908(uint64_t a1)
{
  v36 = sub_D5340();
  v35 = *(v36 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v36);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v10 = &unk_DF4E0;
  while (1)
  {
    v11 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_4C80C(*(a1 + 48) + 40 * v12, v44);
    sub_263D4(*(a1 + 56) + 32 * v12, v45);
    sub_4C80C(v44, &v37);
    if (swift_dynamicCast())
    {
      v41 = v40;
      sub_263D4(v45, &v42);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
    }

    v6 &= v6 - 1;
    sub_FC3C(v44, &qword_1269C8, &qword_DF4D8);
    if (*(&v41 + 1))
    {
      v37 = v41;
      v38 = v42;
      v39 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_A57FC(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v33 = v14 + 1;
        v19 = sub_A57FC((v13 > 1), v14 + 1, 1, v9);
        v15 = v33;
        v9 = v19;
      }

      v9[2] = v15;
      v16 = &v9[6 * v14];
      v17 = v37;
      v18 = v39;
      v16[3] = v38;
      v16[4] = v18;
      v16[2] = v17;
    }

    else
    {
      sub_FC3C(&v41, &qword_1269D0, &unk_DF4E0);
    }
  }

  while (1)
  {
    v8 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (v9[2])
  {
    sub_66D4(&qword_1223F8, &qword_DA4F0);
    v20 = sub_D6AE0();
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  a1 = v36;
  v7 = v35;
  v10 = v34;
  v44[0] = v20;

  sub_773B8(v21, 1, v44);

  sub_77774(v44[0]);

  if (qword_120E38 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v22 = sub_6610(a1, qword_137988);
  (*(v7 + 16))(v10, v22, a1);

  v23 = sub_D5320();
  v24 = sub_D68B0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44[0] = v26;
    *v25 = 136380675;
    v27 = sub_D6540();
    v29 = v28;

    v30 = sub_558F0(v27, v29, v44);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "Response headers: %{private}s", v25, 0xCu);
    sub_67D4(v26);
  }

  else
  {
  }

  return (*(v7 + 8))(v10, a1);
}

uint64_t sub_75E10(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_D4F40();
  v11 = v10;

  sub_77E08(v7, v9, v11, a5);
  v13 = v12;
  sub_26628(v9, v11);

  return v13;
}

uint64_t sub_75EA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = sub_D4F40();
  v9 = v8;

  sub_77FD8(v5, v7, v9);
  v11 = v10;
  sub_26628(v7, v9);

  return v11;
}

uint64_t sub_75F24(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_D4F40();
  v12 = v11;

  v13 = sub_D65F0();
  v15 = v14;

  sub_7819C(v7, v10, v12, v13, v15);
  v17 = v16;

  sub_26628(v10, v12);

  return v17;
}

uint64_t sub_75FE0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_D6650();
  v7 = v6;
  v8 = *a2;
  v9 = a2[1];
  if (v5 == sub_D6650() && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_D6C20();
  }

  return v12 & 1;
}

uint64_t sub_76074(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_76194(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *(&stru_20.filesize + (swift_isaMask & *v1)), *(&stru_20.maxprot + (swift_isaMask & *v1)));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_7620C(char *a1)
{
  v2 = *(&stru_20.nsects + (swift_isaMask & *a1));
  v3 = *(&stru_20.filesize + (swift_isaMask & *a1));
  v4 = *(&stru_20.maxprot + (swift_isaMask & *a1));
  v5 = type metadata accessor for MSResult();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v2], v5);
}

uint64_t sub_762F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    result = sub_76668();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_76380(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 41;
  if (((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x29)
  {
    v4 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_764A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 <= 0x29)
  {
    v5 = 41;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

ValueMetadata *sub_76668()
{
  result = qword_1268E8[0];
  if (!qword_1268E8[0])
  {
    result = &type metadata for MSError;
    atomic_store(&type metadata for MSError, qword_1268E8);
  }

  return result;
}

uint64_t sub_76698()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_766D4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_766FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_76710(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7674C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_76798(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_767E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_76830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7688C(uint64_t a1)
{
  v2 = sub_76E2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_768C8(uint64_t a1)
{
  v2 = sub_76E2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_76970()
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

Swift::Int sub_769E4()
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_76A80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_113A88;
  v8._object = a2;
  v6 = sub_D6AF0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_76AD8(uint64_t a1)
{
  v2 = sub_78538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_76B14(uint64_t a1)
{
  v2 = sub_78538();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_76B50@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_783A8(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_76B94(void *a1)
{
  v3 = sub_66D4(&qword_126990, &unk_DF4C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_78538();
  sub_D6D00();
  sub_D6BC0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_76CD0()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8._object = 0x80000000000E8950;
  v8._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v8);
  v9._countAndFlagsBits = 2777980912;
  v9._object = 0xA400000000000000;
  sub_D66D0(v9);
  v12._countAndFlagsBits = 2777980912;
  v7._countAndFlagsBits = 0xE000000000000000;
  v10._object = 0x80000000000E8950;
  v10._countAndFlagsBits = 0xD000000000000015;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v2.super.isa = v1;
  v12._object = 0xA400000000000000;
  v3 = sub_D4E80(v10, v11, v2, v12, v7);
  v5 = v4;

  qword_137A18 = v3;
  unk_137A20 = v5;
  qword_137A28 = 0;
  byte_137A30 = 1;
  qword_137A38 = 0;
  byte_137A40 = 1;
  return result;
}

uint64_t sub_76DDC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_76E2C()
{
  result = qword_126978;
  if (!qword_126978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126978);
  }

  return result;
}

Swift::Int sub_76E80()
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

Swift::Int sub_76EF4()
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_76F54@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_D6AF0(a2, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_76FE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_113AF8;
  v8._object = a2;
  v6 = sub_D6AF0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_77038(uint64_t a1)
{
  v2 = sub_78A54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_77074(uint64_t a1)
{
  v2 = sub_78A54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_770F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = sub_66D4(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_6648(a1, a1[3]);
  a4();
  sub_D6CF0();
  if (v5)
  {
    return sub_67D4(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = sub_D6B40();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = sub_67D4(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_7727C(void *a1)
{
  v3 = sub_66D4(&qword_126A30, &qword_DF820);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_78A54();
  sub_D6D00();
  sub_D6BC0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_773B8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_78764(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_26430(v48, v43);
  v9 = *a3;
  v10 = sub_4BAD4(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_4C22C(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_4BAD4(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_D6C50();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_4CA24();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    swift_errorRetain();
    sub_66D4(&qword_1269E0, &unk_DF500);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_67D4(v43);
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_26430(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_78764(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_26430(v48, v43);
      v30 = *a3;
      v31 = sub_4BAD4(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_4C22C(v35, 1);
        v37 = *a3;
        v31 = sub_4BAD4(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_26430(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_D6A10(30);
  v50._object = 0x80000000000E8F50;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  sub_D66D0(v50);
  sub_D6A90();
  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  sub_D66D0(v51);
  result = sub_D6AA0();
  __break(1u);
  return result;
}

uint64_t sub_77774(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_778D4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_77AE0(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_778D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v26 = a3;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v31 = v4;
    v11 = __clz(__rbit64(v9));
    v27 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;
    sub_263D4(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v19 = sub_263D4(v30, &v29);
    __chkstk_darwin(v19);
    v22[2] = v28;
    swift_bridgeObjectRetain_n();
    v20 = v31;
    LOBYTE(v17) = sub_76074(sub_78744, v22, &off_1139D0);
    v4 = v20;
    swift_arrayDestroy();
    sub_FC3C(v28, &qword_1269D8, &unk_DF4F0);
    sub_67D4(v30);

    v9 = v27;
    if (v17)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_77B58(v24, v23, v25, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_77B58(v24, v23, v25, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v31 = v4;
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_77AE0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_778D4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_77B58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_66D4(&qword_1223F8, &qword_DA4F0);
  result = sub_D6AE0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_263D4(v17 + 32 * v16, v34);
    sub_26430(v34, v33);
    v21 = *(v9 + 40);
    sub_D6CB0();

    sub_D6680();
    result = sub_D6CE0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_26430(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_77E08(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v21 = a4;
  swift_getObjectType();
  v9 = *(&stru_20.filesize + (swift_isaMask & *v4));
  v10 = *(&stru_20.maxprot + (swift_isaMask & *v4));
  v11 = type metadata accessor for MSResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_74824(a1, a2, a3, &v20[-v14]);
  (*(v12 + 32))(&v5[*(&stru_20.nsects + (swift_isaMask & *v5))], v15, v11);
  v16 = a1;
  isa = sub_D4F30().super.isa;
  v18 = type metadata accessor for MSAPIResponse();
  v22.receiver = v5;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, "initWithHTTPResponse:data:bodyIsPlist:", v16, isa, v21 & 1);

  if (!v19)
  {
    __break(1u);
  }
}

void sub_77FD8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = *(&stru_20.filesize + (swift_isaMask & *v3));
  v9 = *(&stru_20.maxprot + (swift_isaMask & *v3));
  v10 = type metadata accessor for MSResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_74824(a1, a2, a3, &v19 - v13);
  (*(v11 + 32))(&v4[*(&stru_20.nsects + (swift_isaMask & *v4))], v14, v10);
  v15 = a1;
  isa = sub_D4F30().super.isa;
  v17 = type metadata accessor for MSAPIResponse();
  v19.receiver = v4;
  v19.super_class = v17;
  v18 = objc_msgSendSuper2(&v19, "initWithHTTPResponse:data:", v15, isa);

  if (!v18)
  {
    __break(1u);
  }
}

void sub_7819C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a4;
  v23 = a5;
  swift_getObjectType();
  v10 = *(&stru_20.filesize + (swift_isaMask & *v5));
  v11 = *(&stru_20.maxprot + (swift_isaMask & *v5));
  v12 = type metadata accessor for MSResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_74824(a1, a2, a3, &v22 - v15);
  (*(v13 + 32))(&v6[*(&stru_20.nsects + (swift_isaMask & *v6))], v16, v12);
  v17 = a1;
  isa = sub_D4F30().super.isa;
  v19 = sub_D65C0();
  v20 = type metadata accessor for MSAPIResponse();
  v24.receiver = v6;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, "initWithHTTPResponse:data:mediaType:", v17, isa, v19, v22, v23);

  if (!v21)
  {
    __break(1u);
  }
}

uint64_t sub_783A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_126980, &qword_DF4C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_78538();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v11 = sub_D6B40();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_67D4(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

unint64_t sub_78538()
{
  result = qword_126988;
  if (!qword_126988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126988);
  }

  return result;
}

unint64_t sub_7858C()
{
  result = qword_126998;
  if (!qword_126998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126998);
  }

  return result;
}

unint64_t sub_785E0()
{
  result = qword_1269A8;
  if (!qword_1269A8)
  {
    sub_5411C(255, &qword_1269A0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269A8);
  }

  return result;
}

unint64_t sub_78648()
{
  result = qword_1269B0;
  if (!qword_1269B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269B0);
  }

  return result;
}

unint64_t sub_7869C()
{
  result = qword_1269B8;
  if (!qword_1269B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269B8);
  }

  return result;
}

unint64_t sub_786F0()
{
  result = qword_1269C0;
  if (!qword_1269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269C0);
  }

  return result;
}

uint64_t sub_78764(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1223E0, &unk_E3890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_78848()
{
  result = qword_1269F0;
  if (!qword_1269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269F0);
  }

  return result;
}

unint64_t sub_788A0()
{
  result = qword_1269F8;
  if (!qword_1269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269F8);
  }

  return result;
}

unint64_t sub_788F8()
{
  result = qword_126A00;
  if (!qword_126A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A00);
  }

  return result;
}

unint64_t sub_78950()
{
  result = qword_126A08;
  if (!qword_126A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A08);
  }

  return result;
}

unint64_t sub_789A8()
{
  result = qword_126A10;
  if (!qword_126A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A10);
  }

  return result;
}

unint64_t sub_78A00()
{
  result = qword_126A18;
  if (!qword_126A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A18);
  }

  return result;
}

unint64_t sub_78A54()
{
  result = qword_126A28;
  if (!qword_126A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A28);
  }

  return result;
}

unint64_t sub_78ABC()
{
  result = qword_126A38;
  if (!qword_126A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A38);
  }

  return result;
}

unint64_t sub_78B14()
{
  result = qword_126A40;
  if (!qword_126A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A40);
  }

  return result;
}

unint64_t sub_78B6C()
{
  result = qword_126A48;
  if (!qword_126A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A48);
  }

  return result;
}

uint64_t (*sub_78BC4(unsigned __int8 a1))()
{
  v61 = sub_D4EC0();
  v63 = *(v61 - 8);
  v2 = *(v63 + 64);
  __chkstk_darwin(v61);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D64C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v62 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_66D4(&qword_123340, qword_DC760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v50 - v11;
  v13 = sub_D4F20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65._countAndFlagsBits = sub_795E8(a1);
  v64._countAndFlagsBits = 0xD00000000000005ELL;
  v64._object = 0x80000000000E9120;
  sub_D66D0(v65);

  sub_D4F10();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_7C15C(v12);
  }

  else
  {
    v59 = v13;
    v60 = v14;
    v18 = *(v14 + 32);
    v58 = v17;
    v18(v17, v12, v13);
    sub_D64F0();
    v57 = sub_D64E0();
    v19 = v62;
    *v62 = 0xD00000000000001ELL;
    v19[1] = 0x80000000000E8A50;
    (*(v6 + 104))();
    v20 = sub_79758(a1);
    v53 = v20;
    v56 = v6;
    v22 = v21;
    v51 = v21;
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = v4;
    v24 = ObjCClassFromMetadata;
    v25 = objc_opt_self();
    v26 = [v25 bundleForClass:v24];
    v64._countAndFlagsBits = 2777980912;
    v64._object = 0xA400000000000000;
    v66._countAndFlagsBits = v20;
    v66._object = v22;
    sub_D66D0(v66);
    v67._countAndFlagsBits = 2777980912;
    v67._object = 0xA400000000000000;
    sub_D66D0(v67);
    v45._countAndFlagsBits = 0xE000000000000000;
    v68._countAndFlagsBits = v20;
    v68._object = v22;
    v81.value._countAndFlagsBits = 0;
    v81.value._object = 0;
    v27.super.isa = v26;
    sub_D4E80(v68, v81, v27, v64, v45);
    v55 = v5;

    sub_D4EB0();
    sub_66D4(&qword_126358, &qword_DE8D8);
    v28 = *(v63 + 72);
    v29 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_DF970;
    v30 = [v25 bundleForClass:v24];
    v64._countAndFlagsBits = 2777980912;
    v64._object = 0xA400000000000000;
    v69._countAndFlagsBits = 0xD000000000000013;
    v69._object = 0x80000000000E8A90;
    sub_D66D0(v69);
    v70._countAndFlagsBits = 2777980912;
    v70._object = 0xA400000000000000;
    sub_D66D0(v70);
    v46._countAndFlagsBits = 0xE000000000000000;
    v71._countAndFlagsBits = 0xD000000000000013;
    v71._object = 0x80000000000E8A90;
    v82.value._countAndFlagsBits = 0;
    v82.value._object = 0;
    v31.super.isa = v30;
    sub_D4E80(v71, v82, v31, v64, v46);

    sub_D4EB0();
    v32 = v24;
    v33 = [v25 bundleForClass:v24];
    v64._countAndFlagsBits = 2777980912;
    v64._object = 0xA400000000000000;
    v72._countAndFlagsBits = 0x4C5F44554F4C4349;
    v72._object = 0xEC0000004C454241;
    sub_D66D0(v72);
    v73._countAndFlagsBits = 2777980912;
    v73._object = 0xA400000000000000;
    sub_D66D0(v73);
    v47._countAndFlagsBits = 0xE000000000000000;
    v74._countAndFlagsBits = 0x4C5F44554F4C4349;
    v74._object = 0xEC0000004C454241;
    v83.value._countAndFlagsBits = 0;
    v83.value._object = 0;
    v34.super.isa = v33;
    sub_D4E80(v74, v83, v34, v64, v47);

    sub_D4EB0();
    v35 = [v25 bundleForClass:v32];
    v64._countAndFlagsBits = 2777980912;
    v64._object = 0xA400000000000000;
    v75._object = 0x80000000000E8A70;
    v75._countAndFlagsBits = 0xD000000000000011;
    sub_D66D0(v75);
    v76._countAndFlagsBits = 2777980912;
    v76._object = 0xA400000000000000;
    sub_D66D0(v76);
    v48._countAndFlagsBits = 0xE000000000000000;
    v77._object = 0x80000000000E8A70;
    v77._countAndFlagsBits = 0xD000000000000011;
    v84.value._countAndFlagsBits = 0;
    v84.value._object = 0;
    v36.super.isa = v35;
    sub_D4E80(v77, v84, v36, v64, v48);

    sub_D4EB0();
    v37 = [v25 bundleForClass:v32];
    v64._countAndFlagsBits = 2777980912;
    v64._object = 0xA400000000000000;
    v38 = v53;
    v78._countAndFlagsBits = v53;
    v39 = v51;
    v78._object = v51;
    sub_D66D0(v78);
    v79._countAndFlagsBits = 2777980912;
    v79._object = 0xA400000000000000;
    sub_D66D0(v79);
    v49._countAndFlagsBits = 0xE000000000000000;
    v80._countAndFlagsBits = v38;
    v80._object = v39;
    v85.value._countAndFlagsBits = 0;
    v85.value._object = 0;
    v40.super.isa = v37;
    sub_D4E80(v80, v85, v40, v64, v49);

    sub_D4EB0();
    v41 = v62;
    v42 = v54;
    v43 = v58;
    sub_D64D0();

    (*(v63 + 8))(v42, v61);
    (*(v56 + 8))(v41, v55);
    (*(v60 + 8))(v43, v59);
  }

  return nullsub_1;
}

uint64_t static MAPreferencesViewProvider.getSwiftUIView(accountStore:appleAccount:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for MAPreferencesController());
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a2;
  v9 = sub_7BDE0(v7, v8, a3);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t type metadata accessor for MAPreferencesController()
{
  result = qword_126AA8;
  if (!qword_126AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MAPreferencesViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAPreferencesViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAPreferencesViewProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id MAPreferencesViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAPreferencesViewProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_795E8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x504D495F4C49414DLL;
    v6 = 0xD000000000000013;
    if (a1 == 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x5F544C5541464544;
    v2 = 0x5045525F4F545541;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x524F465F4C49414DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x53455341494C41;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_79758(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4D5F54524F504D49;
    if (a1 != 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000011;
    if (a1 != 5)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x5F544C5541464544;
    v2 = 0x5045522D4F545541;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x524F465F4C49414DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4553534552444441;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

void sub_79928(char a1)
{
  v2 = sub_D6450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D6480();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v13 = Strong;
      sub_26338();
      v19 = sub_D6900();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      aBlock[4] = sub_7C368;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_219D0;
      aBlock[3] = &unk_1184B8;
      v17 = _Block_copy(aBlock);
      v18 = v13;

      sub_D6470();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_7C3D0(&qword_122400, &type metadata accessor for DispatchWorkItemFlags);
      sub_66D4(&qword_122408, &qword_DC730);
      sub_109A8(&qword_122410, &qword_122408, &qword_DC730);
      sub_D6990();
      v15 = v17;
      v16 = v19;
      sub_D6910();
      _Block_release(v15);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
    }
  }
}

uint64_t sub_79C4C(char *a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_66D4(&qword_126B00, &qword_DFA90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = *&a1[qword_126A90];
  sub_D5280();
  (*(v8 + 16))(v12, v14, v7);
  v16 = objc_allocWithZone(sub_66D4(&qword_126B08, &qword_DFA98));
  v17 = sub_D5BD0();
  v18 = [a1 parentViewController];
  if (v18)
  {
    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      [v20 showController:v17];

      return (*(v8 + 8))(v14, v7);
    }
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v21 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v21, v2);
  v22 = sub_D5320();
  v23 = sub_D68B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Unable to navigate to Mail Cleanup, parent view controller is not a PSViewController", v24, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_79F68(uint64_t a1)
{
  v1 = *(a1 + qword_126A78);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_79FE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D6450();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D6480();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_D64A0();
  v55 = *(v59 - 8);
  v11 = *(v55 + 64);
  v12 = __chkstk_darwin(v59);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v49 - v14;
  v15 = sub_D5340();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v20 = sub_6610(v15, qword_137988);
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_D5320();
  v22 = sub_D68D0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v2;
    v24 = v23;
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v24 = 136315138;
    v66 = a1;

    sub_66D4(&qword_126AF8, &qword_DFA88);
    v25 = sub_D6640();
    v49 = v15;
    v27 = v5;
    v28 = v4;
    v29 = sub_558F0(v25, v26, &aBlock);

    *(v24 + 4) = v29;
    v4 = v28;
    v5 = v27;
    _os_log_impl(&dword_0, v21, v22, "handleUniversalLink: %s", v24, 0xCu);
    sub_67D4(v50);

    v2 = v51;

    result = (*(v16 + 8))(v19, v49);
    if (!a1)
    {
      return result;
    }
  }

  else
  {

    result = (*(v16 + 8))(v19, v15);
    if (!a1)
    {
      return result;
    }
  }

  if (*(a1 + 16))
  {

    v31 = sub_4BAD4(1752457584, 0xE400000000000000);
    if (v32)
    {
      sub_263D4(*(a1 + 56) + 32 * v31, &aBlock);
      if (swift_dynamicCast())
      {
        v33 = sub_7C1D4(v66, v67);
        switch(v33)
        {
          case 7:
            v35 = *&v2[qword_126A78];
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(aBlock) = 0;

            v36 = a1;
            sub_D5580();
            sub_26338();
            v51 = sub_D6900();
            v37 = v52;
            sub_D6490();
            v38 = v53;
            sub_D64B0();
            v55 = *(v55 + 8);
            (v55)(v37, v59);
            v39 = swift_allocObject();
            *(v39 + 16) = v2;
            *(v39 + 24) = v36;
            v64 = sub_7C328;
            v65 = v39;
            aBlock = _NSConcreteStackBlock;
            v61 = 1107296256;
            v40 = &unk_118468;
            break;
          case 9:

            v34 = *&v2[qword_126A90];
            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_D5270();

          case 10:

          default:
            v41 = v33;

            sub_26338();
            v51 = sub_D6900();
            v42 = v52;
            sub_D6490();
            v38 = v53;
            sub_D64B0();
            v55 = *(v55 + 8);
            (v55)(v42, v59);
            v43 = swift_allocObject();
            *(v43 + 16) = v2;
            *(v43 + 24) = v41;
            v64 = sub_7C258;
            v65 = v43;
            aBlock = _NSConcreteStackBlock;
            v61 = 1107296256;
            v40 = &unk_1183F0;
            break;
        }

        v62 = sub_219D0;
        v63 = v40;
        v44 = _Block_copy(&aBlock);
        v45 = v2;

        v46 = v54;
        sub_D6470();
        aBlock = _swiftEmptyArrayStorage;
        sub_7C3D0(&qword_122400, &type metadata accessor for DispatchWorkItemFlags);
        sub_66D4(&qword_122408, &qword_DC730);
        sub_109A8(&qword_122410, &qword_122408, &qword_DC730);
        v47 = v56;
        sub_D6990();
        v48 = v51;
        sub_D68E0();
        _Block_release(v44);

        (*(v5 + 8))(v47, v4);
        (*(v57 + 8))(v46, v58);
        return (v55)(v38, v59);
      }
    }
  }

  return result;
}

uint64_t sub_7A81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + qword_126A78);
  if (*(a2 + 16) && (v4 = sub_4BAD4(0x6574617473, 0xE500000000000000), (v5 & 1) != 0))
  {
    sub_263D4(*(a2 + 56) + 32 * v4, v12);
    v6 = swift_dynamicCast();
    if (v6)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_5FEAC();
  sub_2111C(v7, v8);
}

uint64_t sub_7A8F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_D6530();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_79FE4(v4);
}

void sub_7A978(char *a1)
{
  v2 = *&a1[qword_126A78];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;

  sub_D5580();
  sub_5FEAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5580();
}

uint64_t sub_7AAA0()
{
  v1 = *(v0 + qword_126A78);

  v2 = *(v0 + qword_126A90);
}

id sub_7AB00()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7AB38(uint64_t a1)
{
  v2 = *(a1 + qword_126A78);

  v3 = *(a1 + qword_126A90);
}

uint64_t sub_7ABC8(uint64_t a1)
{
  v2 = sub_D5710();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D5970();
}

uint64_t sub_7AC90(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v118 = a4;
  v119 = a2;
  v120 = a1;
  v127 = sub_66D4(&qword_122F80, &qword_DFB50);
  v126 = *(v127 - 8);
  v7 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v104 - v8;
  v9 = sub_66D4(&qword_126B10, &qword_DFB58);
  v129 = *(v9 - 8);
  v130 = v9;
  v10 = *(v129 + 64);
  __chkstk_darwin(v9);
  v128 = &v104 - v11;
  v124 = sub_D51D0();
  v123 = *(v124 - 8);
  v12 = *(v123 + 64);
  __chkstk_darwin(v124);
  v122 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_66D4(&qword_125FF0, &unk_DFB60);
  v116 = *(v117 - 8);
  v14 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v104 - v15;
  v121 = sub_66D4(&qword_125FE8, qword_DE450);
  v114 = *(v121 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v121);
  v113 = &v104 - v17;
  v112 = sub_66D4(&qword_125FD8, &unk_DFB70);
  v111 = *(v112 - 8);
  v18 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v104 - v19;
  v109 = sub_66D4(&qword_121948, &unk_DC5C0);
  v108 = *(v109 - 8);
  v20 = *(v108 + 64);
  __chkstk_darwin(v109);
  v107 = &v104 - v21;
  v106 = sub_66D4(&qword_125FE0, &unk_DFB80);
  v105 = *(v106 - 8);
  v22 = *(v105 + 64);
  __chkstk_darwin(v106);
  v24 = &v104 - v23;
  v104 = sub_66D4(&qword_125FD0, &qword_DE448);
  v25 = *(v104 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v104);
  v28 = &v104 - v27;
  v29 = sub_66D4(&qword_121068, &qword_DBEE0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v104 - v32;
  v134[3] = type metadata accessor for MSRepositoryDefault();
  v134[4] = &off_1188F0;
  v134[0] = a3;
  swift_unknownObjectWeakInit();
  v34 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isDefaultEmailPresented;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35 = *(v30 + 32);
  v35(a5 + v34, v33, v29);
  v36 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isMailForwardingPresented;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35(a5 + v36, v33, v29);
  v37 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAutoReplyPresented;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35(a5 + v37, v33, v29);
  v38 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAliasesPresented;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35(a5 + v38, v33, v29);
  v39 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isRulesPresented;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35(a5 + v39, v33, v29);
  v40 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isUnsubscribePresented;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35(a5 + v40, v33, v29);
  v41 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__state;
  v132 = 0uLL;
  sub_D5530();
  (*(v25 + 32))(a5 + v41, v28, v104);
  v42 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__emails;
  *&v132 = _swiftEmptyArrayStorage;
  sub_66D4(&qword_121498, &qword_D99D0);
  sub_D5530();
  (*(v105 + 32))(a5 + v42, v24, v106);
  v43 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__defaultEmail;
  *&v132 = 0;
  *(&v132 + 1) = 0xE000000000000000;
  v44 = v107;
  sub_D5530();
  (*(v108 + 32))(a5 + v43, v44, v109);
  v45 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isEndToEndEncryptionEnabled;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35(a5 + v45, v33, v29);
  v46 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__ruleCount;
  *&v132 = 0;
  v47 = v110;
  sub_D5530();
  (*(v111 + 32))(a5 + v46, v47, v112);
  v48 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__serverPreferences;
  v132 = 0uLL;
  *v133 = 1;
  memset(&v133[8], 0, 64);
  sub_66D4(&qword_125930, &unk_DFB90);
  v49 = v113;
  sub_D5530();
  (*(v114 + 32))(a5 + v48, v49, v121);
  v50 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainEnabled;
  LOBYTE(v132) = 0;
  sub_D5530();
  v35(a5 + v50, v33, v29);
  v51 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainSpinning;
  LOBYTE(v132) = 0;
  sub_D5530();
  v121 = v29;
  v35(a5 + v51, v33, v29);
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel) = 0;
  v52 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__scrollTarget;
  LOBYTE(v132) = 2;
  sub_66D4(&unk_125940, &qword_DDCE8);
  v53 = v115;
  sub_D5530();
  v54 = *(v116 + 32);
  v55 = v117;
  v54(a5 + v52, v53, v117);
  v56 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__shouldScrollTo;
  LOBYTE(v132) = 2;
  sub_D5530();
  v54(a5 + v56, v53, v55);
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_refreshPublisher) = 0;
  v57 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_account;
  v132 = 0u;
  memset(v133, 0, 56);
  v58 = sub_66D4(&qword_124C70, &qword_DFBA0);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v61 = sub_D5510();
  v117 = v57;
  *(a5 + v57) = v61;
  v62 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply;
  v132 = 0uLL;
  *v133 = 1;
  memset(&v133[8], 0, 32);
  v63 = sub_66D4(&qword_126B18, &qword_DFBA8);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  *(a5 + v62) = sub_D5510();
  v66 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_sharedPreference;
  v132 = xmmword_DBAE0;
  memset(v133, 0, 32);
  v67 = sub_66D4(&qword_126B20, &qword_DFBB0);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  *(a5 + v66) = sub_D5510();
  v70 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_folderList;
  *&v132 = 0;
  v71 = sub_66D4(&qword_126B28, qword_DFBB8);
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  *(a5 + v70) = sub_D5510();
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxAliasCountAllowed) = 3;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxRuleCountAllowed) = 500;
  swift_unknownObjectWeakAssign();
  v74 = v119;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) = v119;
  v75 = v120;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_accountStore) = v120;
  sub_2A5C4(v134, a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository);
  v76 = ACAccountDataclassMail;
  v77 = v74;
  v78 = v75;
  LOBYTE(v76) = [v77 isEnabledForDataclass:v76];
  swift_beginAccess();
  LOBYTE(v131) = v76;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  v131 = 0;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v131) = 0;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v131) = 0;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v131) = 0;
  sub_D5530();
  swift_endAccess();
  LOBYTE(v132) = 0;
  v79 = sub_66D4(&qword_124C50, &unk_DC740);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  v82 = sub_D5510();
  v83 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionStatus;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionStatus) = v82;
  v84 = v123;
  v85 = v122;
  v86 = v124;
  (*(v123 + 104))(v122, enum case for iCloudMailSettingsFeatureFlag.endToEndEncryption(_:), v124);
  LOBYTE(v49) = sub_D51C0();
  (*(v84 + 8))(v85, v86);
  v87 = 0;
  if (v49)
  {
    v88 = *(a5 + v117);
    v89 = *(a5 + v83);
    v90 = _s27EndToEndEncryptionViewModelCMa();
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();
    v93 = v77;

    v87 = sub_55EA8(v93, v88, v89);
  }

  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionViewModel) = v87;
  v94 = sub_D52B0();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  v97 = v77;
  v98 = v78;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_mailAssistantProvider) = sub_D5290();
  swift_beginAccess();
  v99 = v125;
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50);
  v100 = v128;
  v101 = v127;
  sub_D5600();
  (*(v126 + 8))(v99, v101);
  swift_allocObject();
  swift_weakInit();
  sub_109A8(&qword_126B30, &qword_126B10, &qword_DFB58);

  v102 = v130;
  sub_D5610();

  (*(v129 + 8))(v100, v102);
  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();

  *&v132 = *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionStatus);
  swift_allocObject();
  swift_weakInit();

  sub_109A8(&qword_126B38, &qword_124C50, &unk_DC740);
  sub_D5610();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();

  sub_60618();
  sub_67D4(v134);
  return a5;
}

uint64_t sub_7BDE0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for MAPreferencesView();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = (&v41[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for MSRepositoryDefault();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v41[3] = v13;
  v41[4] = &off_1188F0;
  v41[0] = v14;
  v15 = _s9ViewModelCMa_3();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = sub_38BFC(v41, v13);
  v20 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v41[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v25 = a1;
  v26 = a2;
  v27 = sub_7AC90(v25, v26, v24, a3, v18);
  sub_67D4(v41);
  *(v4 + qword_126A78) = v27;
  *(v4 + qword_126A80) = v25;
  *(v4 + qword_126A88) = v26;
  v28 = sub_D52B0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v25;
  v32 = v26;
  v33 = v31;
  v34 = v32;

  *(v4 + qword_126A90) = sub_D5290();
  *v12 = swift_getKeyPath();
  sub_66D4(&qword_1235A0, &qword_DB238);
  swift_storeEnumTagMultiPayload();
  v35 = v12 + *(v9 + 28);
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = (v12 + *(v9 + 32));
  sub_7C3D0(&unk_1262D8, _s9ViewModelCMa_3);

  *v36 = sub_D5860();
  v36[1] = v37;
  v38 = sub_D5BD0();

  return v38;
}

uint64_t sub_7C15C(uint64_t a1)
{
  v2 = sub_66D4(&qword_123340, qword_DC760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7C1D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113B30;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7C220()
{

  return _swift_deallocObject(v0, 25, 7);
}

void *sub_7C258()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + qword_126A78);
  return sub_638A0(v1);
}

uint64_t sub_7C290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7C2A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C2E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7C330()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C3A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5A90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_7C3D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7C418()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C470@<X0>(void (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v48 = sub_D5060();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v48);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_D5480();
  v50 = *(v53 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v53);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_66D4(&qword_126C48, &qword_DFDB8);
  v52 = *(v54 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v54);
  v49 = &v45 - v10;
  v11 = sub_66D4(&qword_126C50, &unk_DFDC0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v51 = &v45 - v14;
  v15 = sub_66D4(&qword_123340, qword_DC760);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v45 - v17;
  v19 = sub_D4F20();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v45 - v25;
  sub_7E398(a1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_signingUIUrl, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_FC3C(v18, &qword_123340, qword_DC760);
    return (*(v12 + 56))(v56, 1, 1, v11);
  }

  else
  {
    v45 = v12;
    v46 = v11;
    (*(v20 + 32))(v26, v18, v19);
    (*(v20 + 16))(v24, v26, v19);
    v47 = a1;
    v28 = *(a1 + 2);

    sub_D5050();
    sub_D5040();
    (*(v3 + 8))(v6, v48);
    v29 = sub_D5430();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_D5420();
    sub_D5470();
    if (qword_120E48 != -1)
    {
      swift_once();
    }

    sub_7E408(&qword_126C58, type metadata accessor for EndToEndEncryptionLiftUIDataSource);
    v32 = sub_7E408(&qword_126C60, &type metadata accessor for RemoteContentView);

    v33 = v49;
    v34 = v53;
    v35 = v55;
    sub_D5F60();
    v36 = v34;

    (*(v50 + 8))(v35, v34);
    v37 = v56;
    v38 = v45;
    if (qword_120E50 != -1)
    {
      swift_once();
    }

    v39 = qword_1379B0;
    v57 = v36;
    v58 = v32;
    swift_getOpaqueTypeConformance2();
    v40 = v51;
    v41 = v54;
    sub_D5F70();

    (*(v52 + 8))(v33, v41);
    (*(v20 + 8))(v26, v19);
    v43 = v46;
    v42 = v47;
    v44 = (v40 + *(v46 + 36));
    *v44 = sub_7E450;
    v44[1] = v42;
    v44[2] = 0;
    v44[3] = 0;
    sub_7E454(v40, v37);
    (*(v38 + 56))(v37, 0, 1, v43);
  }
}

uint64_t sub_7CAE8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1734437990;
  }

  else
  {
    v2 = 1850700649;
  }

  if (*a2)
  {
    v3 = 1734437990;
  }

  else
  {
    v3 = 1850700649;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_D6C20();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_7CB60()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_7CBC8()
{
  *v0;
  sub_D6680();
}

Swift::Int sub_7CC14()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_7CC78@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_113C40;
  v8._object = v3;
  v5 = sub_D6AF0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_7CCD8(uint64_t *a1@<X8>)
{
  v2 = 1850700649;
  if (*v1)
  {
    v2 = 1734437990;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_7CD00()
{
  if (*v0)
  {
    return 1734437990;
  }

  else
  {
    return 1850700649;
  }
}

uint64_t sub_7CD24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_113C40;
  v9._object = a2;
  v6 = sub_D6AF0(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_7CD88(uint64_t a1)
{
  v2 = sub_7E2E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7CDC4(uint64_t a1)
{
  v2 = sub_7E2E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t *sub_7CE00(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v36 = v2;
  v37 = v5;
  v6 = sub_66D4(&qword_126C28, &qword_DFDA8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v35 = &v32 - v8;
  v9 = sub_66D4(&qword_126C20, &qword_DFD98);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = sub_66D4(&qword_126C30, &qword_DFDB0);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v17 = a1[4];
  sub_6648(a1, a1[3]);
  sub_7E2E0();
  v18 = v36;
  sub_D6CF0();
  if (v18)
  {
    v25 = *(*v1 + 48);
    v26 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    v27 = a1;
  }

  else
  {
    v36 = a1;
    v19 = v33;
    v39 = 0;
    sub_7E334();
    sub_D6B30();
    v32 = v13;
    v20 = *(v19 + 48);
    if (v20(v35, 1, v9) == 1)
    {
      *v12 = 0;
      (*(v19 + 104))(v12, enum case for Referenceable.value<A>(_:), v9);
      v21 = v12;
      if (v20(v35, 1, v9) != 1)
      {
        sub_FC3C(v35, &qword_126C28, &qword_DFDA8);
      }
    }

    else
    {
      v21 = v12;
      (*(v19 + 32))(v12, v35, v9);
    }

    (*(v19 + 32))(v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_isOn, v21, v9);
    v38 = 1;
    v22 = v32;
    v23 = sub_D6B00();
    if (v24)
    {
      v29 = v23;
    }

    else
    {
      v29 = 0;
    }

    if (v24)
    {
      v30 = v24;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    (*(v34 + 8))(v16, v22);
    v31 = (v3 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_flag);
    *v31 = v29;
    v31[1] = v30;
    v27 = v36;
  }

  sub_67D4(v27);
  return v3;
}

uint64_t sub_7D238(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((result & 1) == 0)
  {
    v4[3] = &type metadata for Bool;
    LOBYTE(v4[0]) = (a3 & 1) == 0;
    sub_7DE18(0x6669746E6F507369, 0xEC0000006E4F7865, v4, a4);
    return sub_67D4(v4);
  }

  return result;
}

uint64_t sub_7D2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_66D4(&qword_124C58, &qword_DFDA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_D53C0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a4, v9);
  (*(v10 + 56))(v8, 0, 1, v9);

  return sub_D5460();
}

uint64_t sub_7D3E8()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_isOn;
  v2 = sub_66D4(&qword_126C20, &qword_DFD98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_flag + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for EndToEndEncryptionView.ToggleEndToEndEncryption()
{
  result = qword_126B78;
  if (!qword_126B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7D4F8()
{
  sub_7D590();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_7D590()
{
  if (!qword_126B88)
  {
    v0 = sub_D53B0();
    if (!v1)
    {
      atomic_store(v0, &qword_126B88);
    }
  }
}

uint64_t sub_7D614(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to RemoteAction.performAction()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7E794;

  return RemoteAction.performAction()(a1, a2);
}

uint64_t sub_7D6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to RemoteAction.performAction(with:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7D76C;

  return RemoteAction.performAction(with:)(a1, a2, a3);
}

uint64_t sub_7D76C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_7D860(uint64_t a1)
{
  v3 = *v1;
  sub_7DB3C(a1);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t *sub_7DA4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_7CE00(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_7DB3C(uint64_t a1)
{
  v4 = sub_66D4(&qword_126C20, &qword_DFD98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-v7];
  (*(v5 + 16))(&v19[-v7], v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_isOn, v4);
  sub_D53A0();
  if (v2)
  {

    v9 = 0;
  }

  else
  {
    v9 = v19[15];
  }

  (*(v5 + 8))(v8, v4);
  v10 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_flag) == 0x78656669746E6F70 && *(v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_flag + 8) == 0xE800000000000000;
  if (v10 || (result = sub_D6C20(), (result & 1) != 0))
  {
    if (qword_120E48 != -1)
    {
      swift_once();
    }

    v12 = *(qword_1379A8 + 16);

    v13 = [v12 aa_primaryEmail];
    if (v13)
    {
      v14 = v13;
      v15 = sub_D65F0();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = v9;
    *(v18 + 32) = a1;

    sub_5628C(v9, v15, v17, sub_7DE08, v18);
  }

  return result;
}

uint64_t sub_7DDC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_D53C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  sub_263D4(a3, v29);
  sub_66D4(&qword_124C60, &qword_DC750);
  if (swift_dynamicCast())
  {
    sub_38BDC(&aBlock, v30);
    v23 = a1;
    sub_6648(v30, v30[3]);
    sub_D53D0();
    sub_26338();
    v24 = sub_D6900();
    (*(v9 + 16))(v12, v14, v8);
    v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 2) = a4;
    *(v16 + 3) = v17;
    *(v16 + 4) = a2;
    (*(v9 + 32))(&v16[v15], v12, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_7E228;
    *(v18 + 24) = v16;
    v27 = sub_7E2A0;
    v28 = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_7D3C0;
    *(&v26 + 1) = &unk_1185A8;
    v19 = _Block_copy(&aBlock);

    v20 = v24;
    dispatch_sync(v24, v19);
    _Block_release(v19);

    (*(v9 + 8))(v14, v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_67D4(v30);
    }
  }

  else
  {
    v27 = 0;
    aBlock = 0u;
    v26 = 0u;
    return sub_FC3C(&aBlock, &qword_124C68, &qword_DC758);
  }

  return result;
}

uint64_t sub_7E15C()
{
  v1 = sub_D53C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7E228()
{
  v1 = *(sub_D53C0() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_7D2A0(v2, v3, v4, v5);
}

uint64_t sub_7E2A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_7E2C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_7E2E0()
{
  result = qword_126C38;
  if (!qword_126C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C38);
  }

  return result;
}

unint64_t sub_7E334()
{
  result = qword_126C40;
  if (!qword_126C40)
  {
    sub_6110(&qword_126C20, &qword_DFD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C40);
  }

  return result;
}

uint64_t sub_7E398(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_123340, qword_DC760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7E454(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_126C50, &unk_DFDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7E4D8()
{
  result = qword_126C68;
  if (!qword_126C68)
  {
    sub_6110(&qword_126C70, &qword_DFDE0);
    sub_7E55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C68);
  }

  return result;
}

unint64_t sub_7E55C()
{
  result = qword_126C78;
  if (!qword_126C78)
  {
    sub_6110(&qword_126C50, &unk_DFDC0);
    sub_6110(&qword_126C48, &qword_DFDB8);
    sub_D5480();
    sub_7E408(&qword_126C60, &type metadata accessor for RemoteContentView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C78);
  }

  return result;
}

unint64_t sub_7E690()
{
  result = qword_126C80;
  if (!qword_126C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C80);
  }

  return result;
}

unint64_t sub_7E6E8()
{
  result = qword_126C88;
  if (!qword_126C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C88);
  }

  return result;
}

unint64_t sub_7E740()
{
  result = qword_126C90;
  if (!qword_126C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C90);
  }

  return result;
}

uint64_t sub_7E798()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_7E7E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSMailImportProviderListAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSMailImportProviderListAPIRequest()
{
  result = qword_126CC0;
  if (!qword_126CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7E898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000000E9380 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_D6C20();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_7E92C(uint64_t a1)
{
  v2 = sub_7EF38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7E968(uint64_t a1)
{
  v2 = sub_7EF38();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_7E9A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_7EA74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_7E9D0(uint64_t a1)
{
  v2 = sub_7ED68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7EA0C(uint64_t a1)
{
  v2 = sub_7ED68();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_7EA48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_7EBF8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_7EA74(uint64_t *a1)
{
  v3 = sub_66D4(&qword_126EB8, &unk_E0160);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_7EF38();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&unk_120EF8, &qword_D8B18);
    sub_7EF8C();
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_67D4(a1);
  }

  return v9;
}

void *sub_7EBF8(uint64_t *a1)
{
  v3 = sub_66D4(&qword_126E88, &qword_DFFF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_7ED68();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_7EDBC();
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_7ED68()
{
  result = qword_126E90;
  if (!qword_126E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126E90);
  }

  return result;
}

unint64_t sub_7EDBC()
{
  result = qword_126E98;
  if (!qword_126E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126E98);
  }

  return result;
}

unint64_t sub_7EE34()
{
  result = qword_126EA0;
  if (!qword_126EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EA0);
  }

  return result;
}

unint64_t sub_7EE8C()
{
  result = qword_126EA8;
  if (!qword_126EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EA8);
  }

  return result;
}

unint64_t sub_7EEE4()
{
  result = qword_126EB0;
  if (!qword_126EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EB0);
  }

  return result;
}

unint64_t sub_7EF38()
{
  result = qword_126EC0;
  if (!qword_126EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EC0);
  }

  return result;
}

unint64_t sub_7EF8C()
{
  result = qword_126EC8;
  if (!qword_126EC8)
  {
    sub_6110(&unk_120EF8, &qword_D8B18);
    sub_7F010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EC8);
  }

  return result;
}

unint64_t sub_7F010()
{
  result = qword_126ED0;
  if (!qword_126ED0)
  {
    type metadata accessor for ImportProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126ED0);
  }

  return result;
}

unint64_t sub_7F07C()
{
  result = qword_126ED8;
  if (!qword_126ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126ED8);
  }

  return result;
}

unint64_t sub_7F0D4()
{
  result = qword_126EE0;
  if (!qword_126EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EE0);
  }

  return result;
}

unint64_t sub_7F12C()
{
  result = qword_126EE8;
  if (!qword_126EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EE8);
  }

  return result;
}

uint64_t sub_7F180()
{
  if (*(v0 + 21) >= 2uLL)
  {
    v3 = *(v0 + 20);
  }

  else
  {
    v9 = v0[2];
    v10 = v0[3];
    v11 = *(v0 + 8);
    v7 = *v0;
    v8 = v0[1];
    v1 = sub_B5458();
    if (v2)
    {
      v3 = v1;
    }

    else
    {
      sub_B4EAC();
      if (v5[2])
      {
        v3 = v5[4];
        v6 = v5[5];
      }

      else
      {

        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_7F258()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_7F2A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPreferencesAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSPreferencesAPIRequest()
{
  result = qword_126F18;
  if (!qword_126F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7F32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7F350(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_7F374(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_7F3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_7F408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7F498(void *a1)
{
  v2 = v1;
  v4 = sub_66D4(&qword_127108, &qword_E0420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26[-v7];
  v9 = a1[4];
  sub_6648(a1, a1[3]);
  sub_802B4();
  sub_D6D00();
  v10 = *(v2 + 16);
  v11 = *(v2 + 48);
  v50 = *(v2 + 32);
  v51 = v11;
  v12 = *(v2 + 16);
  v49[0] = *v2;
  v49[1] = v12;
  v13 = *(v2 + 48);
  v44 = v50;
  v45 = v13;
  v52 = *(v2 + 64);
  v46 = *(v2 + 64);
  v42 = v49[0];
  v43 = v10;
  v41 = 0;
  sub_63AE8(v49, &v33);
  sub_804C0();
  v14 = v53;
  sub_D6BF0();
  if (v14)
  {
    v35 = v44;
    v36 = v45;
    *&v37 = v46;
    v33 = v42;
    v34 = v43;
    sub_80370(&v33);
  }

  else
  {
    v39[2] = v44;
    v39[3] = v45;
    v40 = v46;
    v39[0] = v42;
    v39[1] = v43;
    sub_80370(v39);
    v15 = *(v2 + 120);
    v47[2] = *(v2 + 104);
    v47[3] = v15;
    v47[4] = *(v2 + 136);
    v48 = *(v2 + 152);
    v16 = *(v2 + 88);
    v47[0] = *(v2 + 72);
    v47[1] = v16;
    v17 = *(v2 + 120);
    v35 = *(v2 + 104);
    v36 = v17;
    v37 = *(v2 + 136);
    v38 = *(v2 + 152);
    v18 = *(v2 + 88);
    v33 = *(v2 + 72);
    v34 = v18;
    v32 = 1;
    sub_80514(v47, v30);
    sub_316F4();
    sub_D6BB0();
    v30[2] = v35;
    v30[3] = v36;
    v30[4] = v37;
    v31 = v38;
    v30[0] = v33;
    v30[1] = v34;
    sub_80308(v30);
    v19 = *(v2 + 176);
    v27 = *(v2 + 160);
    v28 = v19;
    v29 = *(v2 + 192);
    v26[15] = 2;
    sub_467DC();
    sub_D6BB0();
    v20 = *(v2 + 208);
    LOBYTE(v27) = 3;
    sub_D6BE0();
    v21 = *(v2 + 216);
    v22 = *(v2 + 224);
    LOBYTE(v27) = 4;
    sub_D6BA0();
    v23 = *(v2 + 232);
    v24 = *(v2 + 240);
    LOBYTE(v27) = 5;
    sub_D6BA0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_7F82C()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6E756F43656C7572;
  v4 = 0xD000000000000014;
  if (v1 == 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_7F8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7FA58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_7F930(uint64_t a1)
{
  v2 = sub_802B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F96C(uint64_t a1)
{
  v2 = sub_802B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_7F9A8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7FC64(a1, v12);
  if (!v2)
  {
    v5 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v5;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v6 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v6;
    v7 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v7;
    v8 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v8;
    v9 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v9;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_7FA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9410 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E7BA0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F43656C7572 && a2 == 0xE900000000000074 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000000E7C00 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000000E8790 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_7FC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_1270E0, &unk_E0410);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v52 = a1;
  sub_6648(a1, v10);
  sub_802B4();
  sub_D6CF0();
  if (v2)
  {
    v126 = v2;
    sub_67D4(v52);
    v69 = 0uLL;
    v70 = 1uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    sub_80308(&v69);
    return sub_461BC(0, 1);
  }

  else
  {
    v51 = v6;
    v113 = 0;
    sub_803C4();
    v12 = v5;
    sub_D6B70();
    v123 = v116;
    v124 = v117;
    v125 = v118;
    v121 = v114;
    v122 = v115;
    v101 = 1;
    sub_80418();
    sub_D6B30();
    v39 = v105;
    v40 = v102;
    v36 = v107;
    v37 = v106;
    v49 = v108;
    v50 = v103;
    v47 = v110;
    v48 = v109;
    v46 = v111;
    v44 = v104;
    v45 = v112;
    v96[1] = 0;
    v96[0] = 0;
    v96[2] = 1;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    sub_80308(v96);
    LOBYTE(v53) = 2;
    sub_8046C();
    sub_D6B30();
    v38 = v69;
    v14 = v70;
    v43 = v71;
    v41 = *(&v69 + 1);
    v42 = *(&v71 + 1);
    LOBYTE(v69) = 3;
    v15 = sub_D6B60();
    LOBYTE(v69) = 4;
    v16 = sub_D6B20();
    v120 = v17 & 1;
    v95 = 5;
    v18 = sub_D6B20();
    v126 = 0;
    v20 = v19;
    v21 = *(v51 + 8);
    v51 = v18;
    v21(v9, v12);
    v119 = v20 & 1;
    v55 = v123;
    v56 = v124;
    v53 = v121;
    v54 = v122;
    v22 = v39;
    v23 = v40;
    *&v57 = v125;
    *(&v57 + 1) = v40;
    *&v58 = v50;
    *(&v58 + 1) = v44;
    *&v59 = v39;
    *(&v59 + 1) = v37;
    *&v60 = v36;
    *(&v60 + 1) = v49;
    *&v61 = v48;
    *(&v61 + 1) = v47;
    *&v62 = v46;
    *(&v62 + 1) = v45;
    v24 = v16;
    v35 = v16;
    v25 = v38;
    *&v63 = v38;
    *(&v63 + 1) = v41;
    v64 = v14;
    *&v65 = v43;
    *(&v65 + 1) = v42;
    *&v66 = v15;
    *(&v66 + 1) = v24;
    v34 = v120;
    LOBYTE(v67) = v120;
    *(&v67 + 1) = v51;
    LOBYTE(v12) = v119;
    v68 = v119;
    sub_26D60(&v53, &v69);
    sub_67D4(v52);
    v71 = v123;
    v72 = v124;
    v69 = v121;
    v70 = v122;
    v73 = v125;
    v74 = v23;
    v75 = v50;
    v76 = v44;
    v77 = v22;
    v78 = v37;
    v79 = v36;
    v80 = v49;
    v81 = v48;
    v82 = v47;
    v83 = v46;
    v84 = v45;
    v85 = v25;
    v86 = v41;
    v87 = v14;
    v88 = v43;
    v89 = v42;
    v90 = v15;
    v91 = v35;
    v92 = v34;
    v93 = v51;
    v94 = v12;
    result = sub_26DBC(&v69);
    v26 = v66;
    *(a2 + 192) = v65;
    *(a2 + 208) = v26;
    *(a2 + 224) = v67;
    *(a2 + 240) = v68;
    v27 = v62;
    *(a2 + 128) = v61;
    *(a2 + 144) = v27;
    v28 = v64;
    *(a2 + 160) = v63;
    *(a2 + 176) = v28;
    v29 = v58;
    *(a2 + 64) = v57;
    *(a2 + 80) = v29;
    v30 = v60;
    *(a2 + 96) = v59;
    *(a2 + 112) = v30;
    v31 = v54;
    *a2 = v53;
    *(a2 + 16) = v31;
    v32 = v56;
    *(a2 + 32) = v55;
    *(a2 + 48) = v32;
  }

  return result;
}

unint64_t sub_802B4()
{
  result = qword_1270E8;
  if (!qword_1270E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1270E8);
  }

  return result;
}

uint64_t sub_80308(uint64_t a1)
{
  v2 = sub_66D4(&qword_125930, &unk_DFB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_803C4()
{
  result = qword_1270F0;
  if (!qword_1270F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1270F0);
  }

  return result;
}

unint64_t sub_80418()
{
  result = qword_1270F8;
  if (!qword_1270F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1270F8);
  }

  return result;
}

unint64_t sub_8046C()
{
  result = qword_127100;
  if (!qword_127100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127100);
  }

  return result;
}

unint64_t sub_804C0()
{
  result = qword_127110;
  if (!qword_127110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127110);
  }

  return result;
}

uint64_t sub_80514(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125930, &unk_DFB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_80598()
{
  result = qword_127118;
  if (!qword_127118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127118);
  }

  return result;
}

unint64_t sub_805F0()
{
  result = qword_127120;
  if (!qword_127120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127120);
  }

  return result;
}

unint64_t sub_80648()
{
  result = qword_127128;
  if (!qword_127128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127128);
  }

  return result;
}

uint64_t sub_806A4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_80708@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = sub_D50D0();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D50E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D50C0();
  v10 = *(v9 - 8);
  v11 = v10;
  v38 = v9;
  v39 = v10;
  v12 = *(v10 + 64);
  __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_D5030();
  v41 = *(v43 - 8);
  v15 = *(v41 + 64);
  __chkstk_darwin(v43);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_D5110();
  v40 = *(v42 - 8);
  v18 = *(v40 + 64);
  __chkstk_darwin(v42);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_66D4(&qword_122F48, &unk_E0DE0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v37 - v23;
  sub_D5100();
  sub_D5020();
  (*(v11 + 104))(v14, enum case for Calendar.MatchingPolicy.nextTime(_:), v9);
  v25 = v5;
  v26 = *(v5 + 104);
  v27 = v8;
  v28 = v4;
  v26(v8, enum case for Calendar.RepeatedTimePolicy.first(_:), v4);
  v30 = v44;
  v29 = v45;
  (*(v1 + 104))(v44, enum case for Calendar.SearchDirection.forward(_:), v45);
  sub_D50F0();
  v31 = v29;
  v32 = v41;
  (*(v1 + 8))(v30, v31);
  (*(v25 + 8))(v27, v28);
  (*(v39 + 8))(v14, v38);
  v33 = v17;
  v34 = v43;
  (*(v32 + 8))(v33, v43);
  (*(v40 + 8))(v20, v42);
  v35 = *(v32 + 48);
  if (v35(v24, 1, v34) != 1)
  {
    return (*(v32 + 32))(v46, v24, v34);
  }

  sub_D5020();
  result = (v35)(v24, 1, v34);
  if (result != 1)
  {
    return sub_80BBC(v24);
  }

  return result;
}

uint64_t sub_80BBC(uint64_t a1)
{
  v2 = sub_66D4(&qword_122F48, &unk_E0DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_80C24()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_80C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleBatchAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleBatchAPIRequest()
{
  result = qword_127298;
  if (!qword_127298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_80D08(void *a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_127488, &qword_E0678);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_6648(a1, a1[3]);
  sub_81108();
  sub_D6D00();
  v11[1] = a2;
  sub_66D4(&qword_127470, &qword_E0670);
  sub_811B0(&qword_127490, sub_81228);
  sub_D6BF0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_80E94(uint64_t a1)
{
  v2 = sub_81108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80ED0(uint64_t a1)
{
  v2 = sub_81108();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_80F0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_80F54(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_80F54(uint64_t *a1)
{
  v3 = sub_66D4(&qword_127460, &qword_E0668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_81108();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_127470, &qword_E0670);
    sub_811B0(&qword_127478, sub_8115C);
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_81108()
{
  result = qword_127468;
  if (!qword_127468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127468);
  }

  return result;
}

unint64_t sub_8115C()
{
  result = qword_127480;
  if (!qword_127480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127480);
  }

  return result;
}

uint64_t sub_811B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(&qword_127470, &qword_E0670);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_81228()
{
  result = qword_127498;
  if (!qword_127498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127498);
  }

  return result;
}

unint64_t sub_81290()
{
  result = qword_1274A0;
  if (!qword_1274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1274A0);
  }

  return result;
}

unint64_t sub_812E8()
{
  result = qword_1274A8;
  if (!qword_1274A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1274A8);
  }

  return result;
}

unint64_t sub_81340()
{
  result = qword_1274B0;
  if (!qword_1274B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1274B0);
  }

  return result;
}

uint64_t sub_81394()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_813DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeQSFolderListAPI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GeQSFolderListAPI()
{
  result = qword_1274E0;
  if (!qword_1274E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_81488(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_814B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 29029;
  v4 = 0xE200000000000000;
  v5 = 29799;
  v6 = 0x6374614D74786574;
  v7 = 0xE900000000000068;
  if (a1 != 4)
  {
    v6 = 0x65756C615670616DLL;
    v7 = 0xEA0000000000664FLL;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 25964;
  if (a1 != 1)
  {
    v8 = 29804;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE200000000000000;
      if (v9 != 29799)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE900000000000068;
      if (v9 != 0x6374614D74786574)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v11 = 0xEA0000000000664FLL;
      if (v9 != 0x65756C615670616DLL)
      {
LABEL_33:
        v12 = sub_D6C20();
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE200000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 25964)
        {
          goto LABEL_33;
        }
      }

      else if (v9 != 29804)
      {
        goto LABEL_33;
      }
    }

    else if (v9 != 29029)
    {
      goto LABEL_33;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_81650(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1346585938;
  v5 = 1245861203;
  if (a1 != 4)
  {
    v5 = 1414744396;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 20308;
  if (a1 != 1)
  {
    v6 = 17219;
  }

  if (a1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v6 = 1297044038;
  }

  if (a1 <= 2u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v9 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v7 != 1346585938)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v7 != 1245861203)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 1414744396)
    {
LABEL_34:
      v10 = sub_D6C20();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    v9 = 0xE200000000000000;
    if (a2 == 1)
    {
      if (v7 != 20308)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 17219)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    if (v7 != 1297044038)
    {
      goto LABEL_34;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_34;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_817C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x524154535F544F4ELL;
    v10 = 0xEB00000000444554;
    if (a1 != 6)
    {
      v9 = 0x444554454C4544;
      v10 = 0xE700000000000000;
    }

    v11 = 0x4C414E5245544E49;
    v12 = 0xEE00524F5252455FLL;
    if (a1 != 4)
    {
      v11 = 0x524F5252455F4353;
      v12 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x574549564552;
    if (a1 != 2)
    {
      v5 = 0xD000000000000014;
      v4 = 0x80000000000E6E90;
    }

    v6 = 0x4554454C504D4F43;
    if (a1)
    {
      v3 = 0xE900000000000044;
    }

    else
    {
      v6 = 0x44455452415453;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEB00000000444554;
        if (v7 != 0x524154535F544F4ELL)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x444554454C4544)
        {
LABEL_47:
          v14 = sub_D6C20();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEE00524F5252455FLL;
      if (v7 != 0x4C414E5245544E49)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x524F5252455F4353)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x574549564552)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000000000E6E90;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE900000000000044;
    if (v7 != 0x4554454C504D4F43)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x44455452415453)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_81A6C(char a1, char a2)
{
  if (*&aMove_0[8 * a1] == *&aMove_0[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_D6C20();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_81AD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 1802401098;
  v5 = 0xE600000000000000;
  if (a1 == 5)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x73726568744FLL;
  }

  v6 = 0xD000000000000010;
  v7 = 0x80000000000E6D30;
  if (a1 != 3)
  {
    v6 = 0x65766968637241;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x737466617244;
  if (a1 != 1)
  {
    v9 = 0x73654D20746E6553;
    v8 = 0xED00007365676173;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x584F424E49;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x737466617244)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xED00007365676173;
        if (v10 != 0x73654D20746E6553)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x584F424E49)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802401098)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x73726568744FLL)
      {
LABEL_40:
        v13 = sub_D6C20();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x80000000000E6D30;
    if (v10 != 0xD000000000000010)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x65766968637241)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

Swift::Int sub_81CF4()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_81DD4()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_81EA4()
{
  sub_D6680();
}

Swift::Int sub_81FEC()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_8210C(uint64_t a1, char a2)
{
  sub_D6CB0();
  v3 = *&aMove_0[8 * a2];
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_82168()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_822C4()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_82390()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_82480()
{
  *v0;
  *v0;
  *v0;
  sub_D6680();
}

uint64_t sub_82540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_82A68(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_82570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1297044038;
  v5 = 1346585938;
  v6 = 1245861203;
  if (v2 != 4)
  {
    v6 = 1414744396;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 20308;
  if (v2 != 1)
  {
    v7 = 17219;
  }

  if (*v1)
  {
    v4 = v7;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v8;
  a1[1] = v3;
}