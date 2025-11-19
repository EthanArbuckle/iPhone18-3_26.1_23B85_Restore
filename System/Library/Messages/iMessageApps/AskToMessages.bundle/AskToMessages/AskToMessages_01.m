uint64_t sub_172A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_5660C();
  *a1 = result;
  return result;
}

uint64_t sub_172F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  *a2 = v5;
  return result;
}

uint64_t sub_1737C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

unint64_t sub_173F4()
{
  result = qword_71D18;
  if (!qword_71D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71D18);
  }

  return result;
}

uint64_t sub_17458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_174BC()
{
  result = qword_71D28;
  if (!qword_71D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_71D28);
  }

  return result;
}

void *sub_17508(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_17564()
{
  result = qword_71D38;
  if (!qword_71D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71D38);
  }

  return result;
}

unint64_t sub_175B8()
{
  result = qword_71D40;
  if (!qword_71D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71D40);
  }

  return result;
}

id sub_17650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Localization();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_176A8()
{
  v1 = sub_5695C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  v8 = *v0;

  sub_5793C();
  v9 = sub_56C8C();
  sub_562CC();

  sub_5694C();
  swift_getAtKeyPath();
  sub_1FAB8(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_177F4()
{
  v1 = sub_5613C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_71B18, &qword_59008);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for LegacyBalloonView();
  v14 = *(v0 + *(v13 + 28));
  v15 = v14;
  if (!v14)
  {
    v16 = v13;
    v17 = *(v0 + *(v13 + 52) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v2;
    sub_5662C();

    v18 = v31;

    if (v33 != 255)
    {
      v15 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_BCE4(v32, v33);
    }

    v19 = *(v16 + 24);
    v30 = v0;
    v20 = *(v0 + v19);
    sub_5639C();
    v21 = *(v18 + 48);
    v22 = v21(v12, 1, v1);
    sub_2E90(v12, &qword_71B18, &qword_59008);
    if (v22 == 1)
    {
      goto LABEL_11;
    }

    sub_5639C();
    if (v21(v10, 1, v1))
    {
      sub_2E90(v10, &qword_71B18, &qword_59008);
      v23 = 0.0;
      v24 = v31;
    }

    else
    {
      v24 = v31;
      (*(v31 + 16))(v5, v10, v1);
      sub_2E90(v10, &qword_71B18, &qword_59008);
      sub_5611C();
      v23 = v25;
      (*(v24 + 8))(v5, v1);
    }

    sub_5612C();
    sub_5611C();
    v27 = v26;
    (*(v24 + 8))(v5, v1);
    if (v23 >= v27)
    {
LABEL_11:
      v15 = ~*(v30 + *(v16 + 40) + 32) & 1;
    }

    else
    {
      v15 = 2;
    }
  }

LABEL_12:
  v28 = v14;
  return v15;
}

id sub_17B14()
{
  v1 = type metadata accessor for MessagesContext();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LegacyBalloonView();
  sub_21F14(v0 + *(v6 + 40), v5, type metadata accessor for MessagesContext);
  v7 = *(v2 + 44);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21F7C(v5, type metadata accessor for MessagesContext);
  if (!Strong)
  {
    return 0;
  }

  v9 = [Strong activeConversation];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 selectedMessage];

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 isPending];

  return v11;
}

uint64_t sub_17C4C()
{
  v1 = type metadata accessor for LegacyBalloonView();
  v2 = (v0 + *(v1 + 44));
  v3 = v2[1];
  if (v3 && (*v2 == 0xD000000000000019 ? (v4 = v3 == 0x800000000005C0F0) : (v4 = 0), v4 || (v5 = v1, v6 = sub_57B8C(), v1 = v5, (v6 & 1) != 0)))
  {
    v7 = *(v0 + *(v1 + 24));
    v8 = sub_5643C();
    v9 = sub_5640C();
    v11 = v10;

    if (v9 == 0xD00000000000001DLL && 0x800000000005C030 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_57B8C();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void *sub_17D44()
{
  v0 = type metadata accessor for ResponseUIExtensionAvailabilityViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_22F1C("com.apple.askto.responseUI", 26, 2);
}

uint64_t sub_17D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessagesContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v8 = type metadata accessor for LegacyBalloonView();
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  sub_2AFC(&qword_71D78, &qword_593B0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[12];
  v27 = 0;
  sub_2AFC(&qword_71D80, &qword_593B8);
  sub_5707C();
  *(a2 + v10) = v28;
  v11 = a2 + v8[14];
  *v11 = sub_17D44;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = a2 + v8[15];
  LOBYTE(v27) = 0;
  sub_5707C();
  v13 = *(&v28 + 1);
  *v12 = v28;
  *(v12 + 8) = v13;
  v14 = *(a1 + 24);
  *(a2 + v8[6]) = sub_5763C();
  *(a2 + v8[7]) = sub_5764C();
  v15 = type metadata accessor for PayloadViewModel();
  sub_2E28(a1 + v15[7], a2 + v8[8], &qword_71B00, &unk_593C0);
  sub_2E28(a1 + v15[8], a2 + v8[9], &qword_71B00, &unk_593C0);
  v16 = v15[9];
  sub_21F14(a1 + v16, a2 + v8[10], type metadata accessor for MessagesContext);
  v17 = sub_5762C();
  v18 = (a2 + v8[11]);
  *v18 = v17;
  v18[1] = v19;
  sub_21F14(a1 + v16, v7, type metadata accessor for MessagesContext);
  v20 = type metadata accessor for ResponseTransmitter();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_14F68(v7, v14);
  v23 = (a2 + v8[13]);
  sub_21ECC(&qword_71D88, type metadata accessor for ResponseTransmitter);
  *v23 = sub_5672C();
  v23[1] = v24;
  return sub_21F7C(a1, type metadata accessor for PayloadViewModel);
}

uint64_t sub_1804C@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v2 = type metadata accessor for LegacyBalloonView();
  v111 = *(v2 - 8);
  v3 = *(v111 + 64);
  __chkstk_darwin(v2);
  v122 = v4;
  v112 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2AFC(&qword_71EA0, &qword_59438);
  v5 = *(*(v109 - 8) + 64);
  v6 = __chkstk_darwin(v109);
  v107 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = &v103 - v8;
  v9 = sub_5674C();
  v117 = *(v9 - 8);
  v10 = *(v117 + 8);
  v11 = __chkstk_darwin(v9);
  v116 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = (&v103 - v13);
  v108 = sub_2AFC(&qword_71EA8, &qword_59440);
  v14 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v106 = &v103 - v15;
  v16 = sub_561AC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2AFC(&qword_71EB0, &qword_59448);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v103 - v23;
  v25 = sub_2AFC(&qword_71EB8, &qword_59450);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v103 - v27;
  v118 = sub_2AFC(&qword_71EC0, &qword_59458);
  v29 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v110 = &v103 - v30;
  v119 = sub_2AFC(&qword_71EC8, &qword_59460);
  v31 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v120 = &v103 - v32;
  *v24 = sub_56A2C();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v33 = sub_2AFC(&qword_71ED0, &qword_59468);
  sub_18E20(v1, &v24[*(v33 + 44)]);
  v123 = 0x65757165526B7341;
  v124 = 0xEB000000003A7473;
  v121 = v2;
  v34 = *(v2 + 24);
  v113 = v1;
  v35 = *(v1 + v34);
  sub_5645C();
  sub_21ECC(&qword_71ED8, &type metadata accessor for UUID);
  v128._countAndFlagsBits = sub_57B7C();
  sub_577DC(v128);

  v36 = v20;
  v37 = v115;
  (*(v17 + 8))(v36, v16);
  sub_3260(&qword_71EE0, &qword_71EB0, &qword_59448);
  sub_56ECC();
  v38 = v116;

  sub_2E90(v24, &qword_71EB0, &qword_59448);
  LOBYTE(v35) = sub_56CCC();
  sub_5668C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = &v28[*(sub_2AFC(&qword_71EE8, &qword_59470) + 36)];
  *v47 = v35;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  LOBYTE(v35) = sub_56C9C();
  sub_5668C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = &v28[*(sub_2AFC(&qword_71EF0, &qword_59478) + 36)];
  *v56 = v35;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = sub_5678C();
  v58 = sub_56CAC();
  v103 = v25;
  v59 = *(v25 + 36);
  v104 = v28;
  v60 = &v28[v59];
  *v60 = v57;
  v60[8] = v58;
  v61 = v117;
  v62 = *(v117 + 13);
  v62(v37, enum case for DynamicTypeSize.small(_:), v9);
  v62(v38, enum case for DynamicTypeSize.accessibility3(_:), v9);
  sub_21ECC(&qword_71EF8, &type metadata accessor for DynamicTypeSize);
  result = sub_576BC();
  if (result)
  {
    v64 = *(v61 + 4);
    v65 = v105;
    v66 = v9;
    v64(v105, v37, v9);
    v67 = v109;
    v64((v65 + *(v109 + 48)), v38, v9);
    v68 = v107;
    sub_2E28(v65, v107, &qword_71EA0, &qword_59438);
    v69 = *(v67 + 48);
    v70 = v106;
    v64(v106, v68, v66);
    v71 = *(v61 + 1);
    v71(v68 + v69, v66);
    sub_B0DC(v65, v68, &qword_71EA0, &qword_59438);
    v64((v70 + *(v108 + 36)), (v68 + *(v67 + 48)), v66);
    v71(v68, v66);
    sub_1F828();
    sub_3260(&qword_71F30, &qword_71EA8, &qword_59440);
    v72 = v110;
    v73 = v104;
    sub_56E8C();
    sub_2E90(v70, &qword_71EA8, &qword_59440);
    sub_2E90(v73, &qword_71EB8, &qword_59450);
    v74 = v112;
    v75 = v113;
    v117 = type metadata accessor for LegacyBalloonView;
    sub_21F14(v113, v112, type metadata accessor for LegacyBalloonView);
    v76 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v77 = swift_allocObject();
    sub_1FACC(v74, v77 + v76);
    v78 = (v72 + *(v118 + 36));
    *v78 = sub_1FB30;
    v78[1] = v77;
    v78[2] = 0;
    v78[3] = 0;
    v79 = v75 + *(v121 + 56);
    v80 = v75;
    v81 = *v79;
    v82 = *(v79 + 8);
    v83 = *(v79 + 16);
    type metadata accessor for ResponseUIExtensionAvailabilityViewModel();
    sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel);
    sub_566AC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    sub_21F14(v80, v74, type metadata accessor for LegacyBalloonView);
    v84 = swift_allocObject();
    sub_1FACC(v74, v84 + v76);
    sub_1FBD0();
    v85 = v120;
    sub_56F3C();

    sub_2E90(v72, &qword_71EC0, &qword_59458);
    v86 = v121;
    v87 = v80;
    v115 = *(v80 + *(v121 + 52) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    v88 = v123;
    LOBYTE(v83) = v124;
    v89 = v119;
    v90 = *(v119 + 52);
    sub_2AFC(&unk_71C70, "jV");
    sub_5799C();
    sub_BCE4(v88, v83);
    v91 = v87;
    sub_21F14(v87, v74, v117);
    v92 = swift_allocObject();
    sub_1FACC(v74, v92 + v76);
    v93 = &v85[*(v89 + 56)];
    *v93 = sub_1FD00;
    v93[1] = v92;
    v122 = sub_569EC();
    v117 = v95;
    v118 = v94;
    LODWORD(v116) = v96;
    v97 = v91 + *(v86 + 60);
    v98 = *v97;
    v99 = *(v97 + 8);
    v126 = v98;
    v127 = v99;
    sub_2AFC(&qword_71F40, &unk_59520);
    sub_570AC();
    LODWORD(v121) = v125;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    v115 = &v103;
    v101 = v123;
    LOBYTE(v74) = v124;
    __chkstk_darwin(v100);
    sub_2AFC(&qword_71F48, &unk_5A730);
    sub_2AFC(&qword_71F50, &unk_59530);
    sub_3260(&qword_71F58, &qword_71EC8, &qword_59460);
    sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
    v102 = v120;
    sub_56EEC();

    sub_BCE4(v101, v74);
    return sub_2E90(v102, &qword_71EC8, &qword_59460);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v242 = a2;
  v232 = sub_2AFC(&qword_71F70, &qword_59560);
  v3 = *(*(v232 - 8) + 64);
  __chkstk_darwin(v232);
  v227 = &v192[-v4];
  v209 = sub_2AFC(&qword_71F78, &qword_59568);
  v5 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v210 = &v192[-v6];
  v219 = sub_2AFC(&qword_71F80, &qword_59570);
  v7 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v219);
  v211 = &v192[-v8];
  v217 = sub_2AFC(&qword_71F88, &qword_59578);
  v9 = *(*(v217 - 8) + 64);
  __chkstk_darwin(v217);
  v218 = &v192[-v10];
  v233 = type metadata accessor for LegacyBalloonView();
  v213 = *(v233 - 8);
  v11 = *(v213 + 64);
  __chkstk_darwin(v233);
  v214 = v12;
  v215 = &v192[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_561CC();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v212 = &v192[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_5773C();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v208 = &v192[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v207 = &v192[-v20];
  v226 = sub_2AFC(&qword_71F90, &qword_59580);
  v21 = *(*(v226 - 8) + 64);
  __chkstk_darwin(v226);
  v216 = &v192[-v22];
  v223 = sub_2AFC(&qword_71F98, &qword_59588);
  v23 = *(*(v223 - 8) + 64);
  __chkstk_darwin(v223);
  v224 = &v192[-v24];
  v228 = sub_2AFC(&qword_71FA0, &qword_59590);
  v25 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v220 = &v192[-v26];
  v27 = sub_2AFC(&qword_71FA8, &qword_59598);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v225 = &v192[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v243 = &v192[-v31];
  v235 = sub_2AFC(&qword_71FB0, &qword_595A0);
  v32 = *(*(v235 - 8) + 64);
  __chkstk_darwin(v235);
  v238 = &v192[-v33];
  v229 = sub_2AFC(&qword_71FB8, &qword_595A8);
  v34 = *(*(v229 - 8) + 64);
  __chkstk_darwin(v229);
  v230 = &v192[-v35];
  v236 = sub_2AFC(&qword_71FC0, &qword_595B0);
  v36 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v231 = &v192[-v37];
  v38 = sub_2AFC(&qword_71FC8, &qword_595B8);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v241 = &v192[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v43 = &v192[-v42];
  v234 = sub_2AFC(&qword_71FD0, &qword_595C0);
  v44 = *(v234 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v234);
  v47 = &v192[-v46];
  v48 = sub_5717C();
  v49 = *(v48 - 8);
  v221 = v48;
  v222 = v49;
  v50 = *(v49 + 64);
  v51 = __chkstk_darwin(v48);
  v53 = &v192[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v51);
  v55 = &v192[-v54];
  v56 = sub_2AFC(&qword_71FD8, &qword_595C8);
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v240 = &v192[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v58);
  v61 = &v192[-v60];
  v62 = sub_2AFC(&qword_71FE0, &qword_595D0);
  v63 = *(*(v62 - 8) + 64);
  v64 = __chkstk_darwin(v62 - 8);
  v239 = &v192[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v64);
  v67 = &v192[-v66];
  *v67 = sub_5696C();
  *(v67 + 1) = 0;
  v67[16] = 1;
  v68 = *(sub_2AFC(&qword_71FE8, &qword_595D8) + 44);
  v237 = v67;
  sub_1A9B4(a1, &v67[v68]);
  v69 = a1;
  v70 = sub_177F4();
  v244 = v61;
  v245 = v43;
  if ((v70 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v70)
  {
    sub_200A0(v70);
  }

  if (sub_17B14())
  {
LABEL_5:
    (*(v44 + 56))(v61, 1, 1, v234);
  }

  else
  {
    sub_571DC();
    sub_566EC();
    v201 = v264;
    v202 = v262;
    v199 = v267;
    v200 = v266;
    v251 = 1;
    v250 = v263;
    v249 = v265;
    sub_5716C();
    sub_571DC();
    sub_566EC();
    v198 = v268;
    v206 = v272;
    v204 = v270;
    v205 = v273;
    v255 = 1;
    v253 = v269;
    v252 = v271;
    v71 = v251;
    v193 = v250;
    v194 = v249;
    v72 = v222;
    v73 = *(v222 + 16);
    v74 = v53;
    v75 = v55;
    v203 = v55;
    v76 = v53;
    v77 = v221;
    v73(v74, v75, v221);
    v248[0] = v259;
    *(v248 + 3) = *(&v259 + 3);
    v195 = v255;
    v196 = v253;
    v247[0] = v256;
    *(v247 + 3) = *(&v256 + 3);
    v197 = v252;
    v246[0] = v254[0];
    *(v246 + 3) = *(v254 + 3);
    *v47 = 0;
    v47[8] = v71;
    *(v47 + 2) = v202;
    v47[24] = v193;
    *(v47 + 4) = v201;
    v47[40] = v194;
    v78 = v199;
    *(v47 + 6) = v200;
    *(v47 + 7) = v78;
    v79 = sub_2AFC(&qword_72060, &qword_59608);
    v73(&v47[*(v79 + 48)], v76, v77);
    v80 = v244;
    v81 = &v47[*(v79 + 64)];
    *v81 = 0;
    v81[8] = v195;
    *(v81 + 9) = v248[0];
    *(v81 + 3) = *(v248 + 3);
    *(v81 + 2) = v198;
    v81[24] = v196;
    *(v81 + 25) = v247[0];
    *(v81 + 7) = *(v247 + 3);
    v82 = v203;
    *(v81 + 4) = v204;
    v81[40] = v197;
    *(v81 + 11) = *(v246 + 3);
    *(v81 + 41) = v246[0];
    v83 = v205;
    *(v81 + 6) = v206;
    *(v81 + 7) = v83;
    v84 = *(v72 + 8);
    v84(v82, v77);
    v84(v76, v77);
    sub_B0DC(v47, v80, &qword_71FD0, &qword_595C0);
    (*(v44 + 56))(v80, 0, 1, v234);
  }

  v85 = v69;
  v86 = sub_177F4();
  v87 = v243;
  if (!v86)
  {
    if (sub_17B14())
    {
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
    }

    else
    {
      type metadata accessor for Localization();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v128 = objc_opt_self();
      v129 = [v128 bundleForClass:ObjCClassFromMetadata];
      v190._countAndFlagsBits = 0x800000000005C5E0;
      v274._countAndFlagsBits = 0xD000000000000010;
      v274._object = 0x800000000005C5E0;
      v276.value._countAndFlagsBits = 0;
      v276.value._object = 0;
      v130.super.isa = v129;
      v278._countAndFlagsBits = 0;
      v278._object = 0xE000000000000000;
      v98 = sub_55EFC(v274, v276, v130, v278, v190);
      v99 = v131;

      v132 = [v128 bundleForClass:ObjCClassFromMetadata];
      v191._countAndFlagsBits = 0x800000000005C600;
      v275._countAndFlagsBits = 0xD000000000000013;
      v275._object = 0x800000000005C600;
      v277.value._countAndFlagsBits = 0;
      v277.value._object = 0;
      v133.super.isa = v132;
      v279._countAndFlagsBits = 0;
      v279._object = 0xE000000000000000;
      v100 = sub_55EFC(v275, v277, v133, v279, v191);
      v101 = v134;
    }

    v135 = v230;
    *v230 = v98;
    v135[1] = v99;
    v135[2] = v100;
    v135[3] = v101;
    v135[5] = 0;
    v135[6] = 0;
    v135[4] = 0;
    swift_storeEnumTagMultiPayload();
    sub_20660(v98, v99);
    sub_2AFC(&qword_72010, &qword_595E8);
    sub_1FF90();
    sub_3260(&qword_72018, &qword_71F70, &qword_59560);
    v136 = v231;
    sub_56ABC();
    sub_2E28(v136, v238, &qword_71FC0, &qword_595B0);
    swift_storeEnumTagMultiPayload();
    sub_2AFC(&qword_71FF8, &qword_595E0);
    sub_1FED8();
    sub_20014();
    sub_56ABC();
    sub_206C4(v98, v99);
    v137 = v136;
    v138 = &qword_71FC0;
    v139 = &qword_595B0;
    goto LABEL_50;
  }

  v88 = v86;
  if (v86 == 1)
  {
    sub_571DC();
    sub_566EC();
    v91 = v260;
    v92 = *v261;
    v221 = v259;
    v222 = *&v261[8];
    LOBYTE(v256) = 1;
    LOBYTE(v254[0]) = BYTE8(v259);
    v255 = BYTE8(v260);
    v93 = sub_17C4C();
    v94 = v233;
    v234 = v91;
    if (v93)
    {
      v95 = sub_5697C();
      v96 = v220;
      *v220 = v95;
      *(v96 + 8) = 0x4014000000000000;
      *(v96 + 16) = 0;
      v97 = sub_2AFC(&qword_72030, &qword_595F8);
      sub_1BA3C(v85, &unk_6EA70, sub_20974, v96 + *(v97 + 44));
      sub_2E28(v96, v224, &qword_71FA0, &qword_59590);
      swift_storeEnumTagMultiPayload();
      sub_3260(&qword_72040, &qword_71FA0, &qword_59590);
      sub_201BC();
      sub_56ABC();
      sub_2E90(v96, &qword_71FA0, &qword_59590);
LABEL_49:
      v172 = v256;
      v173 = v254[0];
      v174 = v255;
      v175 = v225;
      sub_2E28(v87, v225, &qword_71FA8, &qword_59598);
      v176 = v227;
      *v227 = 0;
      *(v176 + 8) = v172;
      *(v176 + 16) = v221;
      *(v176 + 24) = v173;
      *(v176 + 32) = v234;
      *(v176 + 40) = v174;
      v177 = v222;
      *(v176 + 48) = v92;
      *(v176 + 56) = v177;
      v178 = sub_2AFC(&qword_72058, &qword_59600);
      sub_2E28(v175, v176 + *(v178 + 48), &qword_71FA8, &qword_59598);
      sub_2E90(v175, &qword_71FA8, &qword_59598);
      sub_2E28(v176, v230, &qword_71F70, &qword_59560);
      swift_storeEnumTagMultiPayload();
      sub_2AFC(&qword_72010, &qword_595E8);
      sub_1FF90();
      v179 = v87;
      sub_3260(&qword_72018, &qword_71F70, &qword_59560);
      v180 = v231;
      sub_56ABC();
      sub_2E28(v180, v238, &qword_71FC0, &qword_595B0);
      swift_storeEnumTagMultiPayload();
      sub_2AFC(&qword_71FF8, &qword_595E0);
      sub_1FED8();
      sub_20014();
      sub_56ABC();
      sub_2E90(v180, &qword_71FC0, &qword_595B0);
      sub_2E90(v176, &qword_71F70, &qword_59560);
      v137 = v179;
      v138 = &qword_71FA8;
      v139 = &qword_59598;
LABEL_50:
      sub_2E90(v137, v138, v139);
      goto LABEL_51;
    }

    v108 = *(v85 + *(v233 + 24));
    v109 = sub_563EC();
    v206 = v92;
    if (v110)
    {
      v111 = v110;
      v205 = v109;
      v112 = v85 + *(v94 + 56);
      v113 = *v112;
      v114 = *(v112 + 8);
      v115 = *(v112 + 16);
      type metadata accessor for ResponseUIExtensionAvailabilityViewModel();
      sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel);
      sub_566AC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_5662C();

      if (v253 == 1)
      {
        sub_576DC();
        sub_D820(0, &qword_717B0, NSBundle_ptr);
        if (!sub_5796C())
        {
          v116 = [objc_opt_self() mainBundle];
        }

        sub_561BC();
        v117 = sub_5779C();
        v119 = v118;
        v120 = v215;
        sub_21F14(v85, v215, type metadata accessor for LegacyBalloonView);
        v121 = (*(v213 + 80) + 16) & ~*(v213 + 80);
        v122 = (v214 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
        v123 = swift_allocObject();
        sub_1FACC(v120, v123 + v121);
        v124 = (v123 + v122);
        *v124 = v205;
        v124[1] = v111;
        v125 = v218;
        *v218 = v117;
        v125[1] = v119;
        v125[2] = sub_205D0;
        v125[3] = v123;
        swift_storeEnumTagMultiPayload();
        sub_200B0();
        sub_20104();
        v126 = v216;
        sub_56ABC();
        v87 = v243;
LABEL_48:
        sub_2E28(v126, v224, &qword_71F90, &qword_59580);
        swift_storeEnumTagMultiPayload();
        sub_3260(&qword_72040, &qword_71FA0, &qword_59590);
        sub_201BC();
        sub_56ABC();
        sub_2E90(v126, &qword_71F90, &qword_59580);
        v92 = v206;
        goto LABEL_49;
      }
    }

    sub_563EC();
    v126 = v216;
    if (v159)
    {

      sub_576DC();
      sub_D820(0, &qword_717B0, NSBundle_ptr);
      if (!sub_5796C())
      {
        v160 = [objc_opt_self() mainBundle];
      }

      sub_561BC();
      v161 = sub_5779C();
      v163 = v162;
      v164 = v215;
      sub_21F14(v85, v215, type metadata accessor for LegacyBalloonView);
      v165 = (*(v213 + 80) + 16) & ~*(v213 + 80);
      v166 = swift_allocObject();
      sub_1FACC(v164, v166 + v165);
      v167 = v210;
      *v210 = v161;
      v167[1] = v163;
      v167[2] = sub_20248;
      v167[3] = v166;
      swift_storeEnumTagMultiPayload();
      sub_200B0();
      sub_3260(&qword_72040, &qword_71FA0, &qword_59590);
      v168 = v211;
      sub_56ABC();
    }

    else
    {
      v169 = sub_5697C();
      v170 = v220;
      *v220 = v169;
      *(v170 + 8) = 0x4014000000000000;
      *(v170 + 16) = 0;
      v171 = sub_2AFC(&qword_72030, &qword_595F8);
      sub_1BA3C(v85, &unk_6EBB0, sub_22338, v170 + *(v171 + 44));
      sub_2E28(v170, v210, &qword_71FA0, &qword_59590);
      swift_storeEnumTagMultiPayload();
      sub_200B0();
      sub_3260(&qword_72040, &qword_71FA0, &qword_59590);
      v168 = v211;
      sub_56ABC();
      sub_2E90(v170, &qword_71FA0, &qword_59590);
    }

    sub_2E28(v168, v218, &qword_71F80, &qword_59570);
    swift_storeEnumTagMultiPayload();
    sub_200B0();
    sub_20104();
    sub_56ABC();
    sub_2E90(v168, &qword_71F80, &qword_59570);
    goto LABEL_48;
  }

  if (v86 != 2)
  {
    v102 = v69 + *(v233 + 40);
    v103 = (v102 + *(type metadata accessor for MessagesContext() + 32));
    v104 = *v103;
    v105 = v103[1];
    if (v104 == sub_5722C() && v105 == v106)
    {
      v107 = 1;
    }

    else
    {
      v107 = sub_57B8C();
    }

    v140 = sub_13744(v107 & 1, 1);
    v142 = v141;
    v143 = sub_13E94(v107 & 1);
    v145 = v144;
    v146 = sub_5721C();
    v147 = sub_564CC();

    v148 = 0x800000000005C580;
    v149 = 0xD000000000000011;
    if (v147 != 2)
    {
      v149 = 0;
      v148 = 0;
    }

    if (v147 == 1)
    {
      v150 = 0xD000000000000015;
    }

    else
    {
      v150 = v149;
    }

    if (v147 == 1)
    {
      v151 = 0x800000000005C5A0;
    }

    else
    {
      v151 = v148;
    }

    v152 = sub_5721C();
    v153 = sub_564CC();

    switch(v153)
    {
      case 0:
        goto LABEL_38;
      case 2:
        v154 = sub_56F6C();
        break;
      case 1:
        v154 = sub_56FAC();
        break;
      default:
LABEL_38:
        v154 = sub_56F7C();
        break;
    }

    v255 = 0;
    *&v259 = v140;
    *(&v259 + 1) = v142;
    *&v260 = v143;
    *(&v260 + 1) = v145;
    *v261 = v150;
    *&v261[8] = v151;
    *&v261[16] = v154;
    v261[24] = 0;
    sub_1FE84();

    sub_56ABC();
    v155 = v257;
    v259 = v256;
    v260 = v257;
    v156 = v258[0];
    *v261 = v258[0];
    v157 = *(v258 + 9);
    *&v261[9] = *(v258 + 9);
    v243 = v145;
    v158 = v238;
    *v238 = v256;
    v158[1] = v155;
    v158[2] = v156;
    *(v158 + 41) = v157;
    swift_storeEnumTagMultiPayload();
    sub_2E28(&v259, v254, &qword_71FF8, &qword_595E0);
    sub_2AFC(&qword_71FF8, &qword_595E0);
    sub_1FED8();
    sub_20014();
    sub_56ABC();
    sub_200A0(v88);
    sub_2E90(&v259, &qword_71FF8, &qword_595E0);

    goto LABEL_51;
  }

  LOBYTE(v254[0]) = 1;
  BYTE8(v258[1]) = 1;
  sub_1FE84();
  sub_56ABC();
  v89 = v260;
  v90 = v238;
  *v238 = v259;
  v90[1] = v89;
  v90[2] = *v261;
  *(v90 + 41) = *&v261[9];
  swift_storeEnumTagMultiPayload();
  sub_2AFC(&qword_71FF8, &qword_595E0);
  sub_1FED8();
  sub_20014();
  sub_56ABC();
LABEL_51:
  v181 = v237;
  v182 = v239;
  sub_2E28(v237, v239, &qword_71FE0, &qword_595D0);
  v183 = v244;
  v184 = v240;
  sub_2E28(v244, v240, &qword_71FD8, &qword_595C8);
  v185 = v245;
  v186 = v241;
  sub_2E28(v245, v241, &qword_71FC8, &qword_595B8);
  v187 = v242;
  sub_2E28(v182, v242, &qword_71FE0, &qword_595D0);
  v188 = sub_2AFC(&qword_72028, &qword_595F0);
  sub_2E28(v184, v187 + *(v188 + 48), &qword_71FD8, &qword_595C8);
  sub_2E28(v186, v187 + *(v188 + 64), &qword_71FC8, &qword_595B8);
  sub_2E90(v185, &qword_71FC8, &qword_595B8);
  sub_2E90(v183, &qword_71FD8, &qword_595C8);
  sub_2E90(v181, &qword_71FE0, &qword_595D0);
  sub_2E90(v186, &qword_71FC8, &qword_595B8);
  sub_2E90(v184, &qword_71FD8, &qword_595C8);
  return sub_2E90(v182, &qword_71FE0, &qword_595D0);
}

uint64_t sub_1A9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_2AFC(&qword_72100, &qword_59720);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = (&v40 - v7);
  v44 = type metadata accessor for IconView(0);
  v8 = *(*(v44 - 8) + 64);
  v9 = __chkstk_darwin(v44);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_572EC();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2AFC(&qword_71B00, &unk_593C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v40 - v19;
  v21 = sub_5756C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v40 - v27;
  v29 = type metadata accessor for LegacyBalloonView();
  sub_2E28(a1 + *(v29 + 32), v20, &qword_71B00, &unk_593C0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_2E90(v20, &qword_71B00, &unk_593C0);
    sub_176A8();
    sub_572CC();
    sub_5727C();
    (*(v40 + 8))(v16, v41);
    (*(v22 + 32))(v28, v26, v21);
  }

  else
  {
    v30 = *(v22 + 32);
    v30(v26, v20, v21);
    v30(v28, v26, v21);
  }

  v42 = v21;
  v31 = v44;
  (*(v22 + 16))(&v12[*(v44 + 20)], v28, v21);
  type metadata accessor for IconView.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_2E28(a1 + *(v29 + 36), &v12[*(v31 + 24)], &qword_71B00, &unk_593C0);
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v32 = sub_56A1C();
  v33 = v43;
  *v43 = v32;
  *(v33 + 8) = 0x4008000000000000;
  *(v33 + 16) = 0;
  v34 = sub_2AFC(&qword_72108, &qword_59728);
  sub_1AED4(a1, v33 + *(v34 + 44));
  v35 = v45;
  sub_21F14(v12, v45, type metadata accessor for IconView);
  v36 = v47;
  sub_2E28(v33, v47, &qword_72100, &qword_59720);
  v37 = v46;
  sub_21F14(v35, v46, type metadata accessor for IconView);
  v38 = sub_2AFC(&qword_72110, &qword_59730);
  sub_2E28(v36, v37 + *(v38 + 48), &qword_72100, &qword_59720);
  sub_2E90(v33, &qword_72100, &qword_59720);
  sub_21F7C(v12, type metadata accessor for IconView);
  (*(v22 + 8))(v28, v42);
  sub_2E90(v36, &qword_72100, &qword_59720);
  return sub_21F7C(v35, type metadata accessor for IconView);
}

uint64_t sub_1AED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_2AFC(&qword_72118, &qword_59738);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v49 - v7;
  v8 = sub_2AFC(&qword_72120, &qword_59740);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v49 - v12;
  v13 = *(a1 + *(type metadata accessor for LegacyBalloonView() + 24));
  v14 = sub_5646C();
  if (!v15)
  {
    v14 = sub_5642C();
  }

  v16 = v14;
  v17 = v15;
  v18 = sub_5635C();
  if (!v19)
  {
    v18 = sub_5644C();
  }

  v53 = v19;
  v54 = v18;
  *&v75[0] = v16;
  *(&v75[0] + 1) = v17;
  v52 = sub_2B4C();
  v20 = sub_56E0C();
  v22 = v21;
  v24 = v23;
  sub_56CDC();
  sub_56CEC();

  v25 = sub_56DDC();
  v50 = v26;
  v51 = v25;
  v28 = v27;
  v30 = v29;

  sub_21FDC(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  sub_571CC();
  sub_567CC();
  *&v77[55] = v83;
  *&v77[71] = v84;
  *&v77[87] = v85;
  *&v77[103] = v86;
  *&v77[7] = v80;
  *&v77[23] = v81;
  *&v77[39] = v82;
  *(&v74[4] + 1) = *&v77[64];
  *(&v74[5] + 1) = *&v77[80];
  *(&v74[6] + 1) = *&v77[96];
  *(v74 + 1) = *v77;
  *(&v74[1] + 1) = *&v77[16];
  *(&v74[2] + 1) = *&v77[32];
  v79 = v30 & 1;
  v78 = 0;
  *&v71 = v51;
  *(&v71 + 1) = v28;
  LOBYTE(v72) = v30 & 1;
  *(&v72 + 1) = v50;
  *&v73 = KeyPath;
  *(&v73 + 1) = 1;
  LOBYTE(v74[0]) = 0;
  *&v74[7] = *(&v86 + 1);
  *(&v74[3] + 1) = *&v77[48];
  sub_2AFC(&qword_72128, &qword_59778);
  sub_22050();
  sub_56ECC();
  v75[8] = v74[5];
  v75[9] = v74[6];
  v76 = *&v74[7];
  v75[4] = v74[1];
  v75[5] = v74[2];
  v75[6] = v74[3];
  v75[7] = v74[4];
  v75[0] = v71;
  v75[1] = v72;
  v75[2] = v73;
  v75[3] = v74[0];
  sub_2E90(v75, &qword_72128, &qword_59778);
  *&v71 = v54;
  *(&v71 + 1) = v53;
  v32 = sub_56E0C();
  v34 = v33;
  LOBYTE(KeyPath) = v35;
  sub_56D5C();
  v54 = sub_56DDC();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_21FDC(v32, v34, KeyPath & 1);

  sub_571CC();
  sub_567CC();
  v70 = v39 & 1;
  *&v60 = v54;
  *(&v60 + 1) = v37;
  LOBYTE(v61) = v39 & 1;
  *(&v61 + 1) = v41;
  v69 = 256;
  sub_2AFC(&qword_72138, &qword_59780);
  sub_220DC();
  v42 = v56;
  sub_56ECC();
  v74[3] = v66;
  v74[4] = v67;
  v74[5] = v68;
  LOWORD(v74[6]) = v69;
  v73 = v62;
  v74[0] = v63;
  v74[1] = v64;
  v74[2] = v65;
  v71 = v60;
  v72 = v61;
  sub_2E90(&v71, &qword_72138, &qword_59780);
  v43 = v59;
  v44 = v55;
  sub_2E28(v59, v55, &qword_72120, &qword_59740);
  v45 = v58;
  sub_2E28(v42, v58, &qword_72118, &qword_59738);
  v46 = v57;
  sub_2E28(v44, v57, &qword_72120, &qword_59740);
  v47 = sub_2AFC(&qword_72158, &unk_59790);
  sub_2E28(v45, v46 + *(v47 + 48), &qword_72118, &qword_59738);
  sub_2E90(v42, &qword_72118, &qword_59738);
  sub_2E90(v43, &qword_72120, &qword_59740);
  sub_2E90(v45, &qword_72118, &qword_59738);
  return sub_2E90(v44, &qword_72120, &qword_59740);
}

uint64_t sub_1B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LegacyBalloonView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2AFC(&qword_71820, &qword_59550);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_578CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21F14(a1, v9, type metadata accessor for LegacyBalloonView);
  sub_578AC();

  v15 = sub_5789C();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_1FACC(v9, v18 + v16);
  v19 = (v18 + v17);
  *v19 = a2;
  v19[1] = a3;
  sub_31894(0, 0, v13, &unk_596E8, v18);
}

uint64_t sub_1B6F4(uint64_t a1)
{
  v2 = sub_2AFC(&qword_720F8, &unk_59710);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_560CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(type metadata accessor for LegacyBalloonView() + 24));
  sub_5634C();
  v15 = *(v10 + 48);
  if (v15(v6, 1, v9) == 1)
  {
    sub_560BC();
    if (v15(v6, 1, v9) != 1)
    {
      sub_2E90(v6, &qword_720F8, &unk_59710);
    }
  }

  else
  {
    (*(v10 + 32))(v8, v6, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  if (v15(v8, 1, v9) == 1)
  {
    return sub_2E90(v8, &qword_720F8, &unk_59710);
  }

  (*(v10 + 32))(v13, v8, v9);
  v17 = [objc_opt_self() sharedApplication];
  sub_5609C(v18);
  v20 = v19;
  sub_B310(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_21ECC(&qword_71700, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_5766C().super.isa;

  [v17 openURL:v20 options:isa completionHandler:0];

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1BA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v41[1] = a2;
  v42 = a3;
  v45 = a4;
  v5 = sub_2AFC(&qword_72068, &qword_59610);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v41[0] = v41 - v7;
  v8 = sub_2AFC(&qword_72070, &qword_59618);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v41 - v13;
  v15 = sub_2AFC(&qword_72078, &qword_59620);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v41 - v17;
  v19 = sub_2AFC(&qword_72080, &qword_59628);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v41 - v24;
  v46 = a1;
  sub_2AFC(&qword_72088, &qword_59630);
  sub_20730();
  sub_20784();
  sub_56D8C();
  v26 = *(a1 + *(type metadata accessor for LegacyBalloonView() + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  LOBYTE(a1) = v47;
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  v29 = &v18[*(v15 + 36)];
  v30 = v42;
  *v29 = KeyPath;
  v29[1] = v30;
  v29[2] = v28;
  sub_2098C();
  sub_56ECC();
  sub_2E90(v18, &qword_72078, &qword_59620);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  if (v47 == 1)
  {
    v31 = v41[0];
    sub_566DC();
    v32 = v43;
    v33 = v31;
    v34 = v44;
    (*(v43 + 32))(v14, v33, v44);
    v35 = 0;
    v36 = v34;
    v37 = v32;
  }

  else
  {
    v35 = 1;
    v37 = v43;
    v36 = v44;
  }

  (*(v37 + 56))(v14, v35, 1, v36);
  sub_2E28(v25, v23, &qword_72080, &qword_59628);
  sub_2E28(v14, v12, &qword_72070, &qword_59618);
  v38 = v45;
  sub_2E28(v23, v45, &qword_72080, &qword_59628);
  v39 = sub_2AFC(&qword_720C8, &unk_596C0);
  sub_2E28(v12, v38 + *(v39 + 48), &qword_72070, &qword_59618);
  sub_2E90(v14, &qword_72070, &qword_59618);
  sub_2E90(v25, &qword_72080, &qword_59628);
  sub_2E90(v12, &qword_72070, &qword_59618);
  return sub_2E90(v23, &qword_72080, &qword_59628);
}

uint64_t sub_1BF00(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = (a1 + *(type metadata accessor for LegacyBalloonView() + 56));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  type metadata accessor for ResponseUIExtensionAvailabilityViewModel();
  sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel);
  v10 = sub_566AC();
  v11 = sub_578CC();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_578AC();

  v12 = sub_5789C();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  sub_31894(0, 0, v5, &unk_59558, v13);
}

void sub_1C0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MessagesContext();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LegacyBalloonView();
  sub_21F14(a3 + *(v9 + 40), v8, type metadata accessor for MessagesContext);
  v10 = *(v5 + 44);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21F7C(v8, type metadata accessor for MessagesContext);
  if (Strong)
  {
    [Strong requestResize];
  }
}

void sub_1C18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v9 = type metadata accessor for LegacyBalloonView();
  v10 = (a2 + *(v9 + 40));
  v12 = *v10;
  v11 = v10[1];
  if (a1)
  {
    v13 = v9;
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v14 = sub_562FC();
    sub_B144(v14, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v8, 1);
    v15 = sub_562DC();
    v16 = sub_5792C();

    sub_BCFC(v8, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      if (v11)
      {
        sub_B8D8();
        swift_allocError();
        *v19 = v12;
        v19[1] = v11;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v17 + 4) = v20;
      *v18 = v21;
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v30;
      v18[1] = v30;
      _os_log_impl(&dword_0, v15, v16, "%@: Error sending response: %@", v17, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = (a2 + *(v13 + 60));
    v32 = *v31;
    v33 = *(v31 + 1);
    v37[16] = v32;
    v38 = v33;
    v37[15] = 1;
    sub_2AFC(&qword_71F40, &unk_59520);
    sub_5709C();
  }

  else
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v22 = sub_562FC();
    sub_B144(v22, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v8, 0);
    v23 = sub_562DC();
    v24 = sub_5794C();

    sub_BCFC(v8, 0);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      if (v11)
      {
        sub_B8D8();
        swift_allocError();
        *v27 = v12;
        v27[1] = v11;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v25 + 4) = v28;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v8;
      *v26 = v29;
      v26[1] = v8;
      v34 = v8;
      _os_log_impl(&dword_0, v23, v24, "%@: Successfully sent response: %@", v25, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_21F14(v10, v7, type metadata accessor for MessagesContext);
    v35 = *(v4 + 36);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_21F7C(v7, type metadata accessor for MessagesContext);
    if (Strong)
    {
      [Strong requestResize];
    }
  }
}

uint64_t sub_1C60C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LegacyBalloonView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_2AFC(&qword_71F68, &unk_59540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_569EC();
  sub_5666C();
  v10 = sub_5667C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_21F14(a2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyBalloonView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1FACC(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  return sub_570FC();
}

uint64_t sub_1C7F8(uint64_t a1)
{
  v2 = type metadata accessor for LegacyBalloonView();
  v3 = (a1 + *(v2 + 60));
  v6 = *v3;
  v7 = *(v3 + 1);
  sub_2AFC(&qword_71F40, &unk_59520);
  sub_5709C();
  v4 = *(a1 + *(v2 + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

uint64_t sub_1C8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (os_variant_has_internal_ui() && (v7 & 1) != 0)
  {
    swift_errorRetain();
    sub_2AFC(&qword_71D30, &qword_5A740);
    swift_willThrowTypedImpl();
    swift_getErrorValue();
    v8 = sub_57BDC();
    v10 = v9;
    sub_BCFC(v6, 1);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_569CC();
  v18._object = 0x800000000005C540;
  v18._countAndFlagsBits = 0xD000000000000038;
  sub_569BC(v18);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v19._countAndFlagsBits = v8;
    v19._object = v10;
    sub_577DC(v19);

    v12._countAndFlagsBits = 32;
    v13 = 0xE100000000000000;
  }

  else
  {

    v12._countAndFlagsBits = 0;
    v13 = 0xE000000000000000;
  }

  v12._object = v13;
  sub_569AC(v12);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_569BC(v20);
  sub_569FC();
  result = sub_56DEC();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_1CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for LegacyBalloonView();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v6[13] = *(v8 + 64);
  v6[14] = swift_task_alloc();
  sub_578AC();
  v6[15] = sub_5789C();
  v10 = sub_5788C();
  v6[16] = v10;
  v6[17] = v9;

  return _swift_task_switch(sub_1CBB8, v10, v9);
}

uint64_t sub_1CBB8()
{
  v1 = (v0[8] + *(v0[11] + 48));
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  v27 = v2;
  sub_2AFC(&qword_720E8, &qword_596F0);
  sub_5708C();
  v4 = v0[6];
  if (v4)
  {
    v5 = v0[11];
    v6 = v0[8];
    sub_D820(0, &qword_720F0, NSObject_ptr);
    v7 = sub_565DC();
    v8 = *(v6 + *(v5 + 24));
    v9 = sub_5798C();

    if (v9)
    {
      v10 = v4;
      goto LABEL_6;
    }
  }

  v12 = v0[13];
  v11 = v0[14];
  v26 = v3;
  v14 = v0[11];
  v13 = v0[12];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  sub_565FC();
  v18 = *(v17 + *(v14 + 24));
  sub_21F14(v17, v11, type metadata accessor for LegacyBalloonView);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_1FACC(v11, v20 + v19);

  v21 = v18;
  v22 = sub_565EC();
  v0[4] = v26;
  v0[5] = v27;
  v0[7] = v22;
  v10 = v22;
  sub_5709C();
LABEL_6:
  v0[18] = v10;
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = sub_1CDF4;
  v24 = v0[8];

  return sub_1DAD8(v10);
}

uint64_t sub_1CDF4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_1CF34, v5, v4);
}

uint64_t sub_1CF34()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CFA8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyBalloonView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2AFC(&qword_71820, &qword_59550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_578CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21F14(a2, v7, type metadata accessor for LegacyBalloonView);
  sub_578AC();
  v13 = a1;
  v14 = sub_5789C();
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_1FACC(v7, v17 + v15);
  *(v17 + v16) = v13;
  sub_31894(0, 0, v11, &unk_59708, v17);
}

uint64_t sub_1D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_578AC();
  v5[4] = sub_5789C();
  v7 = sub_5788C();

  return _swift_task_switch(sub_1D234, v7, v6);
}

uint64_t sub_1D234()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1D2A0(v2);
  v4 = v0[1];

  return v4();
}

void sub_1D2A0(void *a1)
{
  v77 = a1;
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v71 = &v66 - v4;
  v76 = type metadata accessor for MessagesContext();
  v5 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyBalloonView();
  v68 = *(v7 - 1);
  v8 = *(v68 + 64);
  v9 = __chkstk_darwin(v7);
  v69 = v10;
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v66 - v11;
  v12 = sub_5733C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5734C();
  v17 = (v1 + v7[11]);
  v18 = *v17;
  v19 = v17[1];
  v67 = *(v1 + v7[6]);
  v20 = sub_5643C();
  (*(v13 + 104))(v16, enum case for ResponseJourney.Checkpoint.userDidInitiateMessagesTranscript(_:), v12);
  sub_21ECC(&qword_720E0, &type metadata accessor for ResponseJourney);
  sub_575BC();

  (*(v13 + 8))(v16, v12);
  v21 = v1;
  v22 = (v1 + v7[10]);
  v23 = *v22;
  v24 = v22[1];
  v72 = v7;
  v73 = v23;
  if (qword_715C0 != -1)
  {
    swift_once();
  }

  v25 = sub_562FC();
  sub_B144(v25, qword_75770);
  v26 = v74;
  sub_21F14(v1, v74, type metadata accessor for LegacyBalloonView);

  v27 = v77;
  v28 = sub_562DC();
  v29 = sub_5794C();
  v77 = v27;

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412802;
    if (v24)
    {
      sub_B8D8();
      swift_allocError();
      *v32 = v73;
      v32[1] = v24;

      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v33;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    *(v30 + 4) = v33;
    *(v30 + 12) = 2112;
    v35 = v77;
    *(v30 + 14) = v77;
    *v31 = v34;
    v31[1] = v35;
    *(v30 + 22) = 2112;
    v36 = v26;
    v37 = *(v26 + v72[6]);
    v38 = v35;
    v39 = v37;
    sub_21F7C(v36, type metadata accessor for LegacyBalloonView);
    *(v30 + 24) = v39;
    v31[2] = v39;
    _os_log_impl(&dword_0, v28, v29, "%@: User selected answer choice. answerChoice: %@, question: %@", v30, 0x20u);
    sub_2AFC(&qword_71828, &qword_598B0);
    swift_arrayDestroy();
  }

  else
  {

    sub_21F7C(v26, type metadata accessor for LegacyBalloonView);
  }

  v40 = v75;
  sub_21F14(v22, v75, type metadata accessor for MessagesContext);
  v41 = *(v76 + 36);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21F7C(v40, type metadata accessor for MessagesContext);
  if (Strong && (v43 = [Strong activeConversation], Strong, v43))
  {
    v44 = v67;
    v45 = [v43 senderAddress];
    sub_5778C();

    v46 = objc_allocWithZone(sub_5725C());
    v47 = v77;
    v48 = sub_5723C();
    v49 = sub_578CC();
    v50 = v71;
    (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
    v51 = v70;
    sub_21F14(v21, v70, type metadata accessor for LegacyBalloonView);
    sub_578AC();
    v52 = v48;
    v53 = v43;
    v54 = sub_5789C();
    v55 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v56 = (v69 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    *(v57 + 24) = &protocol witness table for MainActor;
    sub_1FACC(v51, v57 + v55);
    *(v57 + v56) = v52;
    *(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
    sub_31894(0, 0, v50, &unk_596D8, v57);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v58 = v77;
    v52 = sub_562DC();
    v59 = sub_5792C();

    if (os_log_type_enabled(v52, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412546;
      if (v24)
      {
        sub_B8D8();
        swift_allocError();
        *v62 = v73;
        v62[1] = v24;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        v64 = v63;
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      *(v60 + 4) = v63;
      *(v60 + 12) = 2112;
      *(v60 + 14) = v58;
      *v61 = v64;
      v61[1] = v58;
      v65 = v58;
      _os_log_impl(&dword_0, v52, v59, "%@: Could not send response because activeConversation was nil. answerChoice: %@", v60, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1DAD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for LegacyBalloonView();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for MessagesContext();
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_578AC();
  v2[11] = sub_5789C();
  v8 = sub_5788C();
  v2[12] = v8;
  v2[13] = v7;

  return _swift_task_switch(sub_1DC10, v8, v7);
}

uint64_t sub_1DC10()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];
  sub_21F14(v0[3] + *(v3 + 40), v1, type metadata accessor for MessagesContext);
  v4 = *(v2 + 36);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  sub_21F7C(v1, type metadata accessor for MessagesContext);
  if (Strong)
  {
    v6 = v0[8];
    v8 = v0[5];
    v7 = v0[6];
    sub_21F14(v0[3], v6, type metadata accessor for LegacyBalloonView);
    v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v10 = swift_allocObject();
    v0[15] = v10;
    sub_1FACC(v6, v10 + v9);
    v11 = *(&async function pointer to dispatch thunk of HostResponseUIFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:) + 1);
    v35 = (&async function pointer to dispatch thunk of HostResponseUIFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:) + async function pointer to dispatch thunk of HostResponseUIFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:));
    v12 = Strong;
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1DFD4;
    v14 = v0[2];

    return v35(v12, sub_21A48, v10);
  }

  else
  {
    v16 = v0[11];

    if (qword_715C0 != -1)
    {
      swift_once();
    }

    v17 = v0[7];
    v18 = v0[3];
    v19 = sub_562FC();
    sub_B144(v19, qword_75770);
    sub_21F14(v18, v17, type metadata accessor for LegacyBalloonView);
    v20 = sub_562DC();
    v21 = sub_5792C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[7];
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = (v23 + *(v3 + 40));
      v27 = v26[1];
      v28 = v0[7];
      if (v27)
      {
        v29 = *v26;
        sub_B8D8();
        swift_allocError();
        *v30 = v29;
        v30[1] = v27;

        v27 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_21F7C(v28, type metadata accessor for LegacyBalloonView);
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_0, v20, v21, "%@: Cannot present response UI flow - unable to get presenting view controller", v24, 0xCu);
      sub_2E90(v25, &qword_71828, &qword_598B0);
    }

    else
    {

      sub_21F7C(v23, type metadata accessor for LegacyBalloonView);
    }

    v31 = v0[10];
    v32 = v0[7];
    v33 = v0[8];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1DFD4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v8 = *v0;

  v5 = *(v1 + 104);
  v6 = *(v1 + 96);

  return _swift_task_switch(sub_1E130, v6, v5);
}

uint64_t sub_1E130()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E1B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyBalloonView();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  if (a1)
  {
    swift_errorRetain();
    if (qword_715C0 != -1)
    {
      swift_once();
    }

    v11 = sub_562FC();
    sub_B144(v11, qword_75770);
    sub_21F14(v1, v10, type metadata accessor for LegacyBalloonView);
    swift_errorRetain();
    v12 = sub_562DC();
    v13 = sub_5792C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      v16 = &v10[*(v4 + 40)];
      v17 = *(v16 + 1);
      if (v17)
      {
        v31[0] = *v16;
        sub_B8D8();
        swift_allocError();
        *v18 = v31[0];
        v18[1] = v17;

        v17 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_21F7C(v10, type metadata accessor for LegacyBalloonView);
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      v15[1] = v19;
      _os_log_impl(&dword_0, v12, v13, "%@: Response UI flow ended with error: %@", v14, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();

      goto LABEL_17;
    }

    v29 = v10;
LABEL_16:
    sub_21F7C(v29, type metadata accessor for LegacyBalloonView);
    goto LABEL_17;
  }

  if (qword_715C0 != -1)
  {
    swift_once();
  }

  v20 = sub_562FC();
  sub_B144(v20, qword_75770);
  sub_21F14(v1, v8, type metadata accessor for LegacyBalloonView);
  v21 = sub_562DC();
  v22 = sub_5794C();
  if (!os_log_type_enabled(v21, v22))
  {

    v29 = v8;
    goto LABEL_16;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  *v23 = 138412290;
  v25 = &v8[*(v4 + 40)];
  v26 = *(v25 + 1);
  if (v26)
  {
    v27 = *v25;
    sub_B8D8();
    swift_allocError();
    *v28 = v27;
    v28[1] = v26;

    v26 = _swift_stdlib_bridgeErrorToNSError();
  }

  sub_21F7C(v8, type metadata accessor for LegacyBalloonView);
  *(v23 + 4) = v26;
  *v24 = v26;
  _os_log_impl(&dword_0, v21, v22, "%@: Response UI flow completed successfully", v23, 0xCu);
  sub_2E90(v24, &qword_71828, &qword_598B0);

LABEL_17:
  v32 = *(v2 + *(v4 + 48));
  v31[1] = 0;
  sub_2AFC(&qword_720E8, &qword_596F0);
  return sub_5709C();
}

uint64_t sub_1E660(uint64_t a1)
{
  v2 = type metadata accessor for LegacyBalloonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(__chkstk_darwin(v2 - 8) + 32));
  v9[1] = sub_5637C();
  sub_21F14(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyBalloonView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1FACC(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_2AFC(&qword_71B60, &qword_59020);
  sub_2AFC(&qword_71F48, &unk_5A730);
  sub_3260(&qword_720D0, &qword_71B60, &qword_59020);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
  sub_21ECC(&qword_720D8, &type metadata accessor for ATAnswerChoice);
  return sub_5719C();
}

uint64_t sub_1E884(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyBalloonView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_2AFC(&qword_71F68, &unk_59540);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  sub_564CC();
  v12 = sub_564BC();
  if (v12 == sub_564BC())
  {
    sub_5665C();
    v13 = sub_5667C();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_5667C();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  sub_21F14(a2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyBalloonView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = sub_1FACC(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  __chkstk_darwin(v17);
  *(&v20 - 2) = v11;
  v18 = v11;
  return sub_570CC();
}

uint64_t sub_1EAFC@<X0>(uint64_t a1@<X8>)
{
  sub_564EC();
  sub_2B4C();
  result = sub_56E0C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1EB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_578AC();
  v6[5] = sub_5789C();
  v8 = sub_5788C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_1EBF4, v8, v7);
}

uint64_t sub_1EBF4()
{
  v1 = v0[2];
  v2 = type metadata accessor for LegacyBalloonView();
  v3 = *(v1 + *(v2 + 52) + 8);
  v4 = *(v2 + 40);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1ECB0;
  v7 = v0[3];
  v6 = v0[4];

  return sub_14234(v7, v6, v1 + v4);
}

uint64_t sub_1ECB0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_1EDD0, v4, v3);
}

uint64_t sub_1EDD0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1EE34@<X0>(void *a1@<X8>)
{
  result = sub_5681C();
  *a1 = v3;
  return result;
}

uint64_t sub_1EE60@<X0>(void *a1@<X8>)
{
  result = sub_5681C();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for LegacyBalloonView()
{
  result = qword_71DF0;
  if (!qword_71DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1EF70(uint64_t a1)
{
  v2 = sub_5675C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_5688C();
}

uint64_t sub_1F050(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2AFC(&qword_71B00, &unk_593C0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = type metadata accessor for MessagesContext();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1F1EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_2AFC(&qword_71B00, &unk_593C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = type metadata accessor for MessagesContext();
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_1F374()
{
  sub_1F7BC(319, &qword_71E00, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1F5CC(319, &qword_71E08, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_5647C();
      if (v2 <= 0x3F)
      {
        sub_1F5CC(319, &qword_71E10, &type metadata accessor for ATResponse, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1F5CC(319, &qword_71E18, &type metadata accessor for Icon, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            type metadata accessor for MessagesContext();
            if (v5 <= 0x3F)
            {
              sub_1F7BC(319, &qword_71E20, &type metadata for String, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1F630();
                if (v7 <= 0x3F)
                {
                  sub_1F694();
                  if (v8 <= 0x3F)
                  {
                    sub_1F728();
                    if (v9 <= 0x3F)
                    {
                      sub_1F7BC(319, &unk_71E48, &type metadata for Bool, &type metadata accessor for State);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1F5CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1F630()
{
  if (!qword_71E28)
  {
    sub_2C70(&qword_71D80, &qword_593B8);
    v0 = sub_570BC();
    if (!v1)
    {
      atomic_store(v0, &qword_71E28);
    }
  }
}

void sub_1F694()
{
  if (!qword_71E30)
  {
    type metadata accessor for ResponseTransmitter();
    sub_21ECC(&qword_71D88, type metadata accessor for ResponseTransmitter);
    v0 = sub_5673C();
    if (!v1)
    {
      atomic_store(v0, &qword_71E30);
    }
  }
}

void sub_1F728()
{
  if (!qword_71E38)
  {
    type metadata accessor for ResponseUIExtensionAvailabilityViewModel();
    sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel);
    v0 = sub_566BC();
    if (!v1)
    {
      atomic_store(v0, &qword_71E38);
    }
  }
}

void sub_1F7BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1F828()
{
  result = qword_71F00;
  if (!qword_71F00)
  {
    sub_2C70(&qword_71EB8, &qword_59450);
    sub_1F8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F00);
  }

  return result;
}

unint64_t sub_1F8B4()
{
  result = qword_71F08;
  if (!qword_71F08)
  {
    sub_2C70(&qword_71EF0, &qword_59478);
    sub_1F940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F08);
  }

  return result;
}

unint64_t sub_1F940()
{
  result = qword_71F10;
  if (!qword_71F10)
  {
    sub_2C70(&qword_71EE8, &qword_59470);
    sub_1F9CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F10);
  }

  return result;
}

unint64_t sub_1F9CC()
{
  result = qword_71F18;
  if (!qword_71F18)
  {
    sub_2C70(&qword_71F20, &qword_59480);
    sub_3260(&qword_71EE0, &qword_71EB0, &qword_59448);
    sub_21ECC(&qword_71F28, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F18);
  }

  return result;
}

uint64_t sub_1FAB8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1FACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyBalloonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1FB50(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LegacyBalloonView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1C0A8(a1, a2, v6);
}

unint64_t sub_1FBD0()
{
  result = qword_71F38;
  if (!qword_71F38)
  {
    sub_2C70(&qword_71EC0, &qword_59458);
    sub_2C70(&qword_71EB8, &qword_59450);
    sub_2C70(&qword_71EA8, &qword_59440);
    sub_1F828();
    sub_3260(&qword_71F30, &qword_71EA8, &qword_59440);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F38);
  }

  return result;
}

void sub_1FD00(uint64_t a1)
{
  v3 = *(type metadata accessor for LegacyBalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1C18C(a1, v4);
}

uint64_t sub_1FD90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1FDD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22334;

  return sub_23548(a1, v4, v5, v6);
}

unint64_t sub_1FE84()
{
  result = qword_71FF0;
  if (!qword_71FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71FF0);
  }

  return result;
}

unint64_t sub_1FED8()
{
  result = qword_72000;
  if (!qword_72000)
  {
    sub_2C70(&qword_71FC0, &qword_595B0);
    sub_1FF90();
    sub_3260(&qword_72018, &qword_71F70, &qword_59560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72000);
  }

  return result;
}

unint64_t sub_1FF90()
{
  result = qword_72008;
  if (!qword_72008)
  {
    sub_2C70(&qword_72010, &qword_595E8);
    sub_1FE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72008);
  }

  return result;
}

unint64_t sub_20014()
{
  result = qword_72020;
  if (!qword_72020)
  {
    sub_2C70(&qword_71FF8, &qword_595E0);
    sub_1FE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72020);
  }

  return result;
}

void sub_200A0(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_200B0()
{
  result = qword_72038;
  if (!qword_72038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72038);
  }

  return result;
}

unint64_t sub_20104()
{
  result = qword_72048;
  if (!qword_72048)
  {
    sub_2C70(&qword_71F80, &qword_59570);
    sub_200B0();
    sub_3260(&qword_72040, &qword_71FA0, &qword_59590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72048);
  }

  return result;
}

unint64_t sub_201BC()
{
  result = qword_72050;
  if (!qword_72050)
  {
    sub_2C70(&qword_71F90, &qword_59580);
    sub_200B0();
    sub_20104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72050);
  }

  return result;
}

uint64_t sub_20260(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LegacyBalloonView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_202D4()
{
  v1 = type metadata accessor for LegacyBalloonView();
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
    v7 = *(v4 + v5);
  }

  v8 = v1[8];
  v9 = sub_5756C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v1[9];
  if (!v11(v4 + v12, 1, v9))
  {
    (*(v10 + 8))(v4 + v12, v9);
  }

  v13 = (v33 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v4 + v1[10];
  v15 = *(v14 + 8);

  v16 = *(v14 + 24);

  v17 = type metadata accessor for MessagesContext();
  v18 = v17[7];
  v19 = sub_561AC();
  (*(*(v19 - 8) + 8))(v14 + v18, v19);
  v20 = *(v14 + v17[8] + 8);

  v21 = v17[9];
  swift_unknownObjectWeakDestroy();
  v22 = *(v4 + v1[11] + 8);

  v23 = v4 + v1[12];

  v24 = *(v23 + 8);

  v25 = *(v4 + v1[13] + 8);

  v26 = (v4 + v1[14]);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v26 + 16);
  sub_1FAC4();
  v30 = *(v4 + v1[15] + 8);

  v31 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16, v2 | 7);
}

uint64_t sub_205D0()
{
  v1 = *(type metadata accessor for LegacyBalloonView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1B4FC(v0 + v2, v4, v5);
}

uint64_t sub_20660(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_206C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_20730()
{
  result = qword_72090;
  if (!qword_72090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72090);
  }

  return result;
}

unint64_t sub_20784()
{
  result = qword_72098;
  if (!qword_72098)
  {
    sub_2C70(&qword_72088, &qword_59630);
    sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72098);
  }

  return result;
}

uint64_t sub_2083C@<X0>(uint64_t a1@<X8>)
{
  result = sub_5692C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20870(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_5693C();
}

uint64_t sub_208A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5690C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_208D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5690C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2098C()
{
  result = qword_720A0;
  if (!qword_720A0)
  {
    sub_2C70(&qword_72078, &qword_59620);
    sub_3260(&qword_720A8, &qword_720B0, &unk_596B0);
    sub_3260(&qword_720B8, &qword_720C0, &qword_5A9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_720A0);
  }

  return result;
}

uint64_t sub_20A70(void **a1)
{
  v3 = *(type metadata accessor for LegacyBalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E884(a1, v4);
}

uint64_t sub_20AF0()
{
  v1 = type metadata accessor for LegacyBalloonView();
  v2 = *(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
    v7 = *(v4 + v5);
  }

  v8 = v1[8];
  v9 = sub_5756C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v1[9];
  if (!v11(v4 + v12, 1, v9))
  {
    (*(v10 + 8))(v4 + v12, v9);
  }

  v13 = (v32 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v4 + v1[10];
  v15 = *(v14 + 8);

  v16 = *(v14 + 24);

  v17 = type metadata accessor for MessagesContext();
  v18 = v17[7];
  v19 = sub_561AC();
  (*(*(v19 - 8) + 8))(v14 + v18, v19);
  v20 = *(v14 + v17[8] + 8);

  v21 = v17[9];
  swift_unknownObjectWeakDestroy();
  v22 = *(v4 + v1[11] + 8);

  v23 = v4 + v1[12];

  v24 = *(v23 + 8);

  v25 = *(v4 + v1[13] + 8);

  v26 = (v4 + v1[14]);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v26 + 16);
  sub_1FAC4();
  v30 = *(v4 + v1[15] + 8);

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_20E78()
{
  v1 = type metadata accessor for LegacyBalloonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v34 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_5675C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[8];
  v10 = sub_5756C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v1[9];
  if (!v12(v5 + v13, 1, v10))
  {
    (*(v11 + 8))(v5 + v13, v10);
  }

  v14 = (v34 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = v5 + v1[10];
  v17 = *(v16 + 8);

  v18 = *(v16 + 24);

  v19 = type metadata accessor for MessagesContext();
  v20 = v19[7];
  v21 = sub_561AC();
  (*(*(v21 - 8) + 8))(v16 + v20, v21);
  v22 = *(v16 + v19[8] + 8);

  v23 = v19[9];
  swift_unknownObjectWeakDestroy();
  v24 = *(v5 + v1[11] + 8);

  v25 = v5 + v1[12];

  v26 = *(v25 + 8);

  v27 = *(v5 + v1[13] + 8);

  v28 = (v5 + v1[14]);
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  sub_1FAC4();
  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_21188(uint64_t a1)
{
  v4 = *(type metadata accessor for LegacyBalloonView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22334;

  return sub_1EB58(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_212C0()
{
  v1 = type metadata accessor for LegacyBalloonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v34 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_5675C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[8];
  v10 = sub_5756C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v1[9];
  if (!v12(v5 + v13, 1, v10))
  {
    (*(v11 + 8))(v5 + v13, v10);
  }

  v14 = (v34 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v5 + v1[10];
  v16 = *(v15 + 8);

  v17 = *(v15 + 24);

  v18 = type metadata accessor for MessagesContext();
  v19 = v18[7];
  v20 = sub_561AC();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(v15 + v18[8] + 8);

  v22 = v18[9];
  swift_unknownObjectWeakDestroy();
  v23 = *(v5 + v1[11] + 8);

  v24 = v5 + v1[12];

  v25 = *(v24 + 8);

  v26 = *(v5 + v1[13] + 8);

  v27 = (v5 + v1[14]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  sub_1FAC4();
  v31 = *(v5 + v1[15] + 8);

  v32 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

uint64_t sub_215C4(uint64_t a1)
{
  v4 = *(type metadata accessor for LegacyBalloonView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_BBC4;

  return sub_1CAB8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_216F4(void *a1)
{
  v3 = *(type metadata accessor for LegacyBalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFA8(a1, v4);
}

uint64_t sub_21764()
{
  v1 = type metadata accessor for LegacyBalloonView();
  v2 = *(*(v1 - 1) + 80);
  v31 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
    v7 = *(v4 + v5);
  }

  v8 = v1[8];
  v9 = sub_5756C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v1[9];
  if (!v11(v4 + v12, 1, v9))
  {
    (*(v10 + 8))(v4 + v12, v9);
  }

  v13 = v4 + v1[10];
  v14 = *(v13 + 8);

  v15 = *(v13 + 24);

  v16 = type metadata accessor for MessagesContext();
  v17 = v16[7];
  v18 = sub_561AC();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  v19 = *(v13 + v16[8] + 8);

  v20 = v16[9];
  swift_unknownObjectWeakDestroy();
  v21 = *(v4 + v1[11] + 8);

  v22 = v4 + v1[12];

  v23 = *(v22 + 8);

  v24 = *(v4 + v1[13] + 8);

  v25 = (v4 + v1[14]);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  sub_1FAC4();
  v29 = *(v4 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v31, v2 | 7);
}

uint64_t sub_21A48(uint64_t a1)
{
  v3 = *(type metadata accessor for LegacyBalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1E1B4(a1);
}

uint64_t sub_21AAC()
{
  v1 = type metadata accessor for LegacyBalloonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v33 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_5675C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[8];
  v10 = sub_5756C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v1[9];
  if (!v12(v5 + v13, 1, v10))
  {
    (*(v11 + 8))(v5 + v13, v10);
  }

  v14 = (v33 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v5 + v1[10];
  v16 = *(v15 + 8);

  v17 = *(v15 + 24);

  v18 = type metadata accessor for MessagesContext();
  v19 = v18[7];
  v20 = sub_561AC();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(v15 + v18[8] + 8);

  v22 = v18[9];
  swift_unknownObjectWeakDestroy();
  v23 = *(v5 + v1[11] + 8);

  v24 = v5 + v1[12];

  v25 = *(v24 + 8);

  v26 = *(v5 + v1[13] + 8);

  v27 = (v5 + v1[14]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  sub_1FAC4();
  v31 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v14 + 8, v2 | 7);
}

uint64_t sub_21DAC(uint64_t a1)
{
  v4 = *(type metadata accessor for LegacyBalloonView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22334;

  return sub_1D19C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21FDC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21FEC@<X0>(uint64_t a1@<X8>)
{
  result = sub_5692C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_22020(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_5693C();
}

unint64_t sub_22050()
{
  result = qword_72130;
  if (!qword_72130)
  {
    sub_2C70(&qword_72128, &qword_59778);
    sub_2D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72130);
  }

  return result;
}

unint64_t sub_220DC()
{
  result = qword_72140;
  if (!qword_72140)
  {
    sub_2C70(&qword_72138, &qword_59780);
    sub_22168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72140);
  }

  return result;
}

unint64_t sub_22168()
{
  result = qword_72148;
  if (!qword_72148)
  {
    sub_2C70(&qword_72150, &qword_59788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72148);
  }

  return result;
}

uint64_t sub_221EC()
{
  sub_2C70(&qword_71EC8, &qword_59460);
  sub_2C70(&qword_71F48, &unk_5A730);
  sub_2C70(&qword_71F50, &unk_59530);
  sub_3260(&qword_71F58, &qword_71EC8, &qword_59460);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_22354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2AFC(&qword_71B00, &unk_593C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MessagesContext();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2AFC(&qword_71B00, &unk_593C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MessagesContext();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PayloadViewModel()
{
  result = qword_721B8;
  if (!qword_721B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22614()
{
  sub_227CC(319, &qword_721C8, sub_22730);
  if (v0 <= 0x3F)
  {
    sub_2277C();
    if (v1 <= 0x3F)
    {
      sub_5765C();
      if (v2 <= 0x3F)
      {
        sub_227CC(319, &qword_71E18, &type metadata accessor for Icon);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MessagesContext();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ManageContactsSetting();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22730()
{
  result = qword_721D0;
  if (!qword_721D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_721D0);
  }

  return result;
}

void sub_2277C()
{
  if (!qword_71E20)
  {
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, &qword_71E20);
    }
  }
}

void sub_227CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_579AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22820()
{
  v1 = type metadata accessor for BalloonView();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_72218, &unk_597B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PayloadViewModel();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LegacyBalloonView();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B84();
  sub_22DE0(v0, v12, type metadata accessor for PayloadViewModel);
  if (v17 == 1)
  {
    sub_33008(v12, v4);
    sub_22DE0(v4, v8, type metadata accessor for BalloonView);
    swift_storeEnumTagMultiPayload();
    sub_22D98(&qword_72220, type metadata accessor for LegacyBalloonView);
    sub_22D98(&qword_72228, type metadata accessor for BalloonView);
    sub_56ABC();
    v18 = type metadata accessor for BalloonView;
    v19 = v4;
  }

  else
  {
    sub_17D8C(v12, v16);
    sub_22DE0(v16, v8, type metadata accessor for LegacyBalloonView);
    swift_storeEnumTagMultiPayload();
    sub_22D98(&qword_72220, type metadata accessor for LegacyBalloonView);
    sub_22D98(&qword_72228, type metadata accessor for BalloonView);
    sub_56ABC();
    v18 = type metadata accessor for LegacyBalloonView;
    v19 = v16;
  }

  return sub_22E48(v19, v18);
}

uint64_t sub_22B84()
{
  v1 = *(v0 + 24);
  v2 = sub_5762C();
  if (!v3)
  {
    goto LABEL_13;
  }

  if (v2 == 0xD000000000000019 && v3 == 0x800000000005C0F0)
  {

    goto LABEL_9;
  }

  v5 = sub_57B8C();

  if (v5)
  {
LABEL_9:
    v6 = sub_5763C();
    v7 = sub_5643C();

    v8 = sub_5640C();
    v10 = v9;

    if (v8 == 0xD00000000000001DLL && 0x800000000005C030 == v10)
    {

      return 0;
    }

    v12 = sub_57B8C();

    result = 0;
    if (v12)
    {
      return result;
    }
  }

LABEL_13:
  v13 = sub_5763C();
  v14 = sub_5643C();

  v15 = sub_5640C();
  v17 = v16;

  if (v15 == 0xD00000000000002DLL && 0x800000000005BFB0 == v17)
  {
    goto LABEL_20;
  }

  v19 = sub_57B8C();

  if (v19)
  {
    return 1;
  }

  v20 = sub_5763C();
  v21 = sub_5643C();

  v22 = sub_5640C();
  v24 = v23;

  if (v22 == 0xD00000000000001DLL && 0x800000000005C700 == v24)
  {
LABEL_20:

    return 1;
  }

  v25 = sub_57B8C();

  if (v25)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22EA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  return v1;
}

void *sub_22F1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2AFC(&qword_71820, &qword_59550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27[-v11];
  v13 = sub_2AFC(&qword_71D10, &qword_59130);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27[-v16];
  v18 = OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel__isExtensionAvailable;
  v27[15] = 0;
  sub_5661C();
  (*(v14 + 32))(v4 + v18, v17, v13);
  v19 = v4 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_extensionPointID;
  *v19 = a1;
  *(v19 + 1) = a2;
  v19[16] = a3;
  v20 = sub_562AC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_monitor) = sub_5629C();
  v23 = sub_578CC();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_578AC();

  v24 = sub_5789C();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;
  *(v25 + 48) = a3;
  *(v25 + 56) = v4;
  *(v25 + 64) = v8;
  sub_31894(0, 0, v12, &unk_59858, v25);

  return v4;
}

uint64_t sub_23194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = sub_578AC();
  v7[4] = sub_5789C();
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_23274;

  return (sub_24960)(a4, a5, a6);
}

uint64_t sub_23274(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 57) = a1;

  return _swift_task_switch(sub_23374, 0, 0);
}

uint64_t sub_23374()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = sub_5789C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_23400, v3, v2);
}

uint64_t sub_23400()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 57);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = v2;

  sub_5663C();
  v7 = sub_5788C();

  return _swift_task_switch(sub_234E8, v7, v6);
}

uint64_t sub_234E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_562BC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_578AC();
  v4[6] = sub_5789C();
  v9 = sub_5788C();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_2363C, v9, v8);
}

uint64_t sub_2363C()
{
  v1 = v0[5];
  v2 = v0[2] + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_extensionPointID;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_5623C();
  v6 = *(v0[2] + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_monitor);
  v7 = async function pointer to AppExtensionPoint.Monitor.addAppExtensionPoint(_:)[1];
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_23888;
  v9 = v0[5];

  return AppExtensionPoint.Monitor.addAppExtensionPoint(_:)(v9);
}

uint64_t sub_23888()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[7];
    v5 = v3[8];

    return _swift_task_switch(sub_23BA0, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[11] = v6;
    *v6 = v3;
    v6[1] = sub_239F4;
    v7 = v3[2];

    return sub_23D5C(v7);
  }
}

uint64_t sub_239F4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_23B14, v4, v3);
}

uint64_t sub_23B14()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23BA0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);
  v5 = v0[10];
  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v6 = sub_562FC();
  sub_B144(v6, qword_757E8);
  swift_errorRetain();
  v7 = sub_562DC();
  v8 = sub_5792C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, "ResponseUIExtensionAvailability: Error activating extension monitoring: %@", v9, 0xCu);
    sub_2516C(v10);
  }

  else
  {
  }

  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23D5C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_5627C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_23E1C, 0, 0);
}

uint64_t sub_23E1C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  sub_561DC();
  sub_578AC();
  v0[6] = sub_5789C();
  v5 = sub_5788C();

  return _swift_task_switch(sub_23EE8, v5, v4);
}

uint64_t sub_23EE8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];

  sub_241B4(v2, v3);

  return _swift_task_switch(sub_23F98, 0, 0);
}

uint64_t sub_23F98()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24014(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_578CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_31894(0, 0, v5, &unk_598D0, v7);
}

uint64_t sub_24120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_BBC4;

  return sub_23D5C(a4);
}

uint64_t sub_241B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5627C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(sub_5626C() + 16);

  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v9 = sub_562FC();
  sub_B144(v9, qword_757E8);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_562DC();
  v11 = sub_5794C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = a2;
    v13 = v12;
    *v12 = 134217984;
    v14 = *(sub_5626C() + 16);

    (*(v5 + 8))(v8, v4);
    *(v13 + 1) = v14;
    _os_log_impl(&dword_0, v10, v11, "ResponseUIExtensionAvailability: Continuous monitoring found %ld extension(s)", v13, 0xCu);
    a2 = v28;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }

  v15 = v29;
  if (v29)
  {

    v16 = sub_562DC();
    v17 = sub_5794C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = *(a2 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_extensionPointID);
      v21 = *(a2 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_extensionPointID + 8);
      v22 = *(a2 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_extensionPointID + 16);
      v23 = sub_57ADC();
      v25 = sub_293C0(v23, v24, &v30);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_0, v16, v17, "ResponseUIExtensionAvailability: ✅ Extensions found for extension point %s", v18, 0xCu);
      sub_13040(v19);

      v15 = v29;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  if ((v15 != 0) != v32)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v15 != 0;

    return sub_5663C();
  }

  return result;
}

uint64_t sub_2455C()
{
  v1 = OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel__isExtensionAvailable;
  v2 = sub_2AFC(&qword_71D10, &qword_59130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_monitor);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseUIExtensionAvailabilityViewModel()
{
  result = qword_72270;
  if (!qword_72270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24668()
{
  sub_171E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24710@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ResponseUIExtensionAvailabilityViewModel();
  result = sub_5660C();
  *a1 = result;
  return result;
}

uint64_t sub_24750()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_24790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_BBC4;

  return sub_23194(a1, v4, v5, v6, v7, v10, v8);
}

uint64_t sub_2486C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  *a2 = v5;
  return result;
}

uint64_t sub_248EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

uint64_t sub_24960(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 104) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_562BC();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  sub_578AC();
  *(v3 + 56) = sub_5789C();
  v8 = sub_5788C();
  *(v3 + 64) = v8;
  *(v3 + 72) = v7;

  return _swift_task_switch(sub_24A58, v8, v7);
}

uint64_t sub_24A58()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 104);
  sub_5623C();
  v5 = sub_562AC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 80) = sub_5629C();
  v8 = async function pointer to AppExtensionPoint.Monitor.addAppExtensionPoint(_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_24CAC;
  v10 = *(v0 + 48);

  return AppExtensionPoint.Monitor.addAppExtensionPoint(_:)(v10);
}

uint64_t sub_24CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_24F98;
  }

  else
  {
    v7 = sub_24DE8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_24DE8()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = *(sub_5625C() + 16);

  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v4 = v0[10];
  v5 = sub_562FC();
  sub_B144(v5, qword_757E8);

  v6 = sub_562DC();
  v7 = sub_5794C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = *(sub_5625C() + 16);

    *(v10 + 4) = v11;

    _os_log_impl(&dword_0, v6, v7, "ResponseUIExtensionAvailability: Initial check found %ld extension(s)", v10, 0xCu);
  }

  else
  {
    v12 = v0[10];
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v13 = v0[6];

  v14 = v0[1];

  return v14(v3 != 0);
}

uint64_t sub_24F98()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];

  (*(v5 + 8))(v3, v4);
  v6 = v0[12];
  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v7 = sub_562FC();
  sub_B144(v7, qword_757E8);
  swift_errorRetain();
  v8 = sub_562DC();
  v9 = sub_5792C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_0, v8, v9, "ResponseUIExtensionAvailability: Initial check error: %@", v10, 0xCu);
    sub_2516C(v11);
  }

  else
  {
  }

  v13 = v0[6];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_2516C(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71828, &qword_598B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25248()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_25288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22334;

  return sub_24120(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ContentModel()
{
  result = qword_723B0;
  if (!qword_723B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25388()
{
  result = type metadata accessor for PayloadViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_253F4()
{
  v1 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  sub_55F6C();
  if (v11)
  {
    v12 = sub_5774C();

    [v0 setNamePrefix:v12];
  }

  sub_55F0C();
  if (v13)
  {
    v14 = sub_5774C();

    [v0 setGivenName:v14];
  }

  sub_55F4C();
  if (v15)
  {
    v16 = sub_5774C();

    [v0 setMiddleName:v16];
  }

  sub_55F2C();
  if (v17)
  {
    v18 = sub_5774C();

    [v0 setFamilyName:v18];
  }

  sub_55F8C();
  if (v19)
  {
    v20 = sub_5774C();

    [v0 setNameSuffix:v20];
  }

  sub_55FCC();
  if (v21)
  {
    v22 = sub_5774C();

    [v0 setNickname:v22];
  }

  v36 = v0;
  sub_55FAC();
  v23 = sub_5600C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v10, 1, v23) == 1)
  {
    sub_25824(v10);
  }

  else
  {
    sub_55F0C();
    v27 = v26;
    (*(v24 + 8))(v10, v23);
    if (v27)
    {
      v28 = sub_5774C();

      [v36 setPhoneticGivenName:v28];
    }
  }

  sub_55FAC();
  if (v25(v7, 1, v23) == 1)
  {
    sub_25824(v7);
  }

  else
  {
    sub_55F4C();
    v30 = v29;
    (*(v24 + 8))(v7, v23);
    if (v30)
    {
      v31 = sub_5774C();

      [v36 setPhoneticMiddleName:v31];
    }
  }

  sub_55FAC();
  if (v25(v4, 1, v23) == 1)
  {
    sub_25824(v4);
  }

  else
  {
    sub_55F2C();
    v33 = v32;
    (*(v24 + 8))(v4, v23);
    if (v33)
    {
      v34 = sub_5774C();

      [v36 setPhoneticFamilyName:v34];
    }
  }
}

uint64_t sub_25824(uint64_t a1)
{
  v2 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id sub_259C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_25A68(uint64_t *a1, int a2)
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

uint64_t sub_25AB0(uint64_t result, int a2, int a3)
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

unint64_t sub_25B00()
{
  result = qword_72480;
  if (!qword_72480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72480);
  }

  return result;
}

id sub_25B54()
{
  v0 = [objc_allocWithZone(CNContactPickerViewController) init];
  sub_2AFC(&qword_72488, &unk_59A80);
  sub_56C6C();
  [v0 setDelegate:v2];

  return v0;
}

id sub_25BD4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_25C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25D3C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_25CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25D3C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_25D10()
{
  sub_25D3C();
  sub_56C0C();
  __break(1u);
}

unint64_t sub_25D3C()
{
  result = qword_72490;
  if (!qword_72490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72490);
  }

  return result;
}

uint64_t sub_25D9C()
{
  v1 = v0;
  v2 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_5600C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55FFC();
  v11 = [v0 namePrefix];
  sub_5778C();

  sub_55F7C();
  v12 = [v1 nameSuffix];
  sub_5778C();

  sub_55F9C();
  v13 = [v1 nickname];
  sub_5778C();

  sub_55FDC();
  v14 = [v1 nickname];
  sub_5778C();

  sub_55FDC();
  v15 = [v1 givenName];
  sub_5778C();

  sub_55F1C();
  v16 = [v1 middleName];
  sub_5778C();

  sub_55F5C();
  v17 = [v1 familyName];
  sub_5778C();

  sub_55F3C();
  sub_55FFC();
  v18 = [v1 phoneticGivenName];
  sub_5778C();

  sub_55F1C();
  v19 = [v1 phoneticMiddleName];
  sub_5778C();

  sub_55F5C();
  v20 = [v1 phoneticFamilyName];
  sub_5778C();

  sub_55F3C();
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_55FBC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26174()
{
  v0 = sub_5736C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5738C();
  sub_B17C(v5, qword_72500);
  sub_B144(v5, qword_72500);
  (*(v1 + 104))(v4, enum case for ContactFormatter.Style.shortName(_:), v0);
  return sub_5737C();
}

uint64_t sub_26278()
{
  v0 = 0x6E776F6E6B6E753CLL;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong activeConversation];
    if (v3 && (v4 = v3, v5 = [v3 selectedMessage], v4, v5) && (v6 = objc_msgSend(v5, "guid"), v5, v6))
    {
      v0 = sub_5778C();
    }

    else
    {
    }
  }

  return v0;
}

void sub_26354(void *a1)
{
  v2 = v1;
  if (qword_715D0 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_757A0);

  v4 = sub_562DC();
  v5 = sub_5794C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_26278();
    v9 = sub_293C0(v7, v8, &v73);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_293C0(0xD00000000000002BLL, 0x800000000005C900, &v73);
    _os_log_impl(&dword_0, v4, v5, "%s: %s called", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v1 + 72);
  if (v10)
  {

    v11 = v10;
    v12 = sub_562DC();
    v13 = sub_5790C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v73 = v15;
      *v14 = 136315138;
      v16 = sub_26278();
      v18 = sub_293C0(v16, v17, &v73);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "%s: Removing existing child view controller", v14, 0xCu);
      sub_13040(v15);
    }

    [v11 willMoveToParentViewController:0];
    v19 = [v11 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 removeFromSuperview];

    [v11 removeFromParentViewController];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v72 = sub_562DC();
    v33 = sub_5792C();

    if (os_log_type_enabled(v72, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136315138;
      v36 = sub_26278();
      v38 = sub_293C0(v36, v37, &v73);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v72, v33, "%s: Missing parent view controller. Not adding new child view controller to view hierarchy.", v34, 0xCu);
      sub_13040(v35);

      v39 = v72;
LABEL_21:

      return;
    }

    v39 = v72;
LABEL_23:

    goto LABEL_21;
  }

  v70 = Strong;
  v22 = [Strong view];
  if (!v22)
  {
LABEL_19:

    v40 = sub_562DC();
    v41 = sub_5792C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136315138;
      v44 = sub_26278();
      v46 = sub_293C0(v44, v45, &v73);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "%s: Missing views. Not adding new child view controller to view hierarchy.", v42, 0xCu);
      sub_13040(v43);

      v39 = v70;
      goto LABEL_21;
    }

    v39 = v70;
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [a1 view];
  if (!v24)
  {

    goto LABEL_19;
  }

  v25 = v24;
  [v70 addChildViewController:a1];
  v26 = objc_opt_self();
  v27 = [v26 clearColor];
  [v23 setBackgroundColor:v27];

  v28 = [v26 clearColor];
  [v25 setBackgroundColor:v28];

  [v25 setMinimumContentSizeCategory:UIContentSizeCategorySmall];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  [v23 addSubview:v25];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [objc_opt_self() currentDevice];
  v30 = [v29 userInterfaceIdiom];

  if (v30 == &dword_0 + 1)
  {
    v31 = [v23 leadingAnchor];
    v32 = [v23 trailingAnchor];
  }

  else
  {
    v47 = [v23 safeAreaLayoutGuide];
    v48 = [v47 leadingAnchor];

    v31 = v48;
    v49 = [v23 safeAreaLayoutGuide];
    v32 = [v49 trailingAnchor];
  }

  v69 = objc_opt_self();
  sub_2AFC(&qword_717B8, &unk_58EF0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_58C10;
  v51 = v32;
  v52 = [v25 leadingAnchor];
  v68 = v31;
  v53 = [v52 constraintEqualToAnchor:v31];

  *(v50 + 32) = v53;
  v54 = [v25 trailingAnchor];
  v55 = [v54 constraintEqualToAnchor:v51];

  *(v50 + 40) = v55;
  v56 = [v25 topAnchor];
  v57 = [v23 safeAreaLayoutGuide];
  v58 = [v57 topAnchor];

  v59 = [v56 constraintEqualToAnchor:v58];
  *(v50 + 48) = v59;
  v60 = [v25 bottomAnchor];
  v61 = [v23 safeAreaLayoutGuide];
  v62 = [v61 bottomAnchor];

  v63 = [v60 constraintEqualToAnchor:v62];
  *(v50 + 56) = v63;
  sub_274AC();
  isa = sub_5783C().super.isa;

  [v69 activateConstraints:isa];

  v65 = v70;
  [a1 didMoveToParentViewController:v65];

  v66 = *(v2 + 72);
  *(v2 + 72) = a1;

  v67 = a1;
}

void sub_26CC0(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong additionalSafeAreaInsets];
    top = v7;
    left = v9;
    bottom = v11;
    right = v13;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v15 = top + bottom;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  v18 = left + right;
  v19 = 84.0;
  if (a2 > 84.0)
  {
    v19 = a2;
  }

  v20 = a1 - v18;
  if (a1 > 288.0)
  {
    v20 = 288.0 - v18;
  }

  v21 = 84.0;
  if (a2 > 84.0)
  {
    v21 = a2;
  }

  v22 = 288.0;
  if (a1 <= 288.0)
  {
    v22 = a1;
  }

  if (v17 == &dword_0 + 1)
  {
    v19 = v21;
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  v24 = v19 - v15;
  v25 = *(v2 + 72);
  if (v25)
  {
    v26 = v25;
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      [v27 sizeThatFits:{v23, v24}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_26E50(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2AFC(&qword_725F0, &qword_59B18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ContentModel();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_715D0 != -1)
  {
    swift_once();
  }

  v16 = sub_562FC();
  v17 = sub_B144(v16, qword_757A0);

  v43 = v17;
  v18 = sub_562DC();
  v19 = sub_5794C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = a1;
    v40 = v22;
    v45[0] = v22;
    *v21 = 136315394;
    v23 = sub_26278();
    v25 = v2;
    v26 = v10;
    v27 = v15;
    v28 = v11;
    v29 = v7;
    v30 = sub_293C0(v23, v24, v45);

    *(v21 + 4) = v30;
    v7 = v29;
    v11 = v28;
    v15 = v27;
    v10 = v26;
    v2 = v25;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_293C0(0xD00000000000001CLL, 0x800000000005C930, v45);
    _os_log_impl(&dword_0, v18, v19, "%s: %s called", v21, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v12 = v41;
  }

  v31 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  swift_beginAccess();
  sub_274F8(v2 + v31, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_27568(v10);

    v32 = sub_562DC();
    v33 = sub_5792C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      v36 = sub_26278();
      v38 = sub_293C0(v36, v37, &v44);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v32, v33, "%s: Not changing presentation style because there was no content model.", v34, 0xCu);
      sub_13040(v35);
    }
  }

  else
  {
    sub_275D0(v10, v15);
    sub_27634(v15, v7);
    (*(v12 + 56))(v7, 0, 1, v11);
    swift_beginAccess();
    sub_27698(v7, v2 + v31);
    swift_endAccess();
    v39 = sub_D94C(v15, a1);
    sub_26354(v39);

    sub_27708(v15);
  }
}

uint64_t sub_272D4()
{
  sub_13040((v0 + 16));
  sub_27764(v0 + 56);

  sub_27568(v0 + OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContentContainer()
{
  result = qword_72548;
  if (!qword_72548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_273A4()
{
  sub_27454();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_27454()
{
  if (!qword_72558)
  {
    type metadata accessor for ContentModel();
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, &qword_72558);
    }
  }
}

unint64_t sub_274AC()
{
  result = qword_71A00;
  if (!qword_71A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_71A00);
  }

  return result;
}

uint64_t sub_274F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_725F0, &qword_59B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27568(uint64_t a1)
{
  v2 = sub_2AFC(&qword_725F0, &qword_59B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27698(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_725F0, &qword_59B18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27708(uint64_t a1)
{
  v2 = type metadata accessor for ContentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ATPayload.newMessage(sessionId:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2AFC(&qword_720F8, &unk_59710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v136 = &v122 - v6;
  v137 = sub_560CC();
  v139 = *(v137 - 8);
  v7 = v139[8];
  __chkstk_darwin(v137);
  v130 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2AFC(&qword_71B48, &qword_5A780);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v133 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v122 - v14;
  __chkstk_darwin(v13);
  v17 = &v122 - v16;
  v18 = sub_561AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v128 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v129 = &v122 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v122 - v26;
  __chkstk_darwin(v25);
  v29 = &v122 - v28;
  v31 = v30;
  sub_2E28(a1, v17, &qword_71B48, &qword_5A780);
  v32 = *(v19 + 48);
  v33 = v32(v17, 1, v31);
  v134 = v19;
  v131 = v32;
  v132 = v19 + 48;
  if (v33 == 1)
  {
    sub_2E90(v17, &qword_71B48, &qword_5A780);
    v34 = sub_5763C();
    sub_5633C();

    v35 = v2;
    if (v32(v15, 1, v31) == 1)
    {
      sub_2E90(v15, &qword_71B48, &qword_5A780);
      if (qword_715D8 != -1)
      {
        swift_once();
      }

      v36 = sub_562FC();
      sub_B144(v36, qword_757B8);
      v37 = sub_562DC();
      v38 = sub_5792C();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v139;
      if (v39)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_0, v37, v38, "AskTo question ID was not a valid UUID. Will not breadcrumb.", v41, 2u);
      }

      v42 = [objc_allocWithZone(MSSession) init];
      goto LABEL_23;
    }

    (*(v134 + 32))(v27, v15, v31);
    v138[3] = &type metadata for AskToFeatures;
    v138[4] = sub_2948C();
    v46 = sub_5622C();
    sub_13040(v138);
    if ((v46 & 1) == 0)
    {
      v40 = v139;
      if (qword_715D8 != -1)
      {
        swift_once();
      }

      v69 = sub_562FC();
      sub_B144(v69, qword_757B8);
      v70 = sub_562DC();
      v71 = sub_5794C();
      v72 = os_log_type_enabled(v70, v71);
      v48 = v134;
      if (v72)
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v70, v71, "AskTo breadcrumbing is not enabled", v73, 2u);
      }

      v74 = [objc_allocWithZone(MSSession) init];
      goto LABEL_22;
    }

    if (qword_715D8 != -1)
    {
      swift_once();
    }

    v47 = sub_562FC();
    sub_B144(v47, qword_757B8);
    v48 = v134;
    v49 = v129;
    (*(v134 + 16))(v129, v27, v31);
    v50 = v35;
    v51 = sub_562DC();
    v52 = sub_5794C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v123 = v53;
      v126 = swift_slowAlloc();
      v138[0] = v126;
      *v53 = 136315394;
      v125 = v52;
      v54 = sub_5763C();
      v127 = v27;
      v55 = v128;
      sub_5645C();

      sub_294E0();
      v56 = sub_57B7C();
      v57 = v35;
      v59 = v58;
      v124 = v51;
      v60 = *(v48 + 8);
      v61 = v55;
      v27 = v127;
      v60(v61, v31);
      v62 = sub_293C0(v56, v59, v138);
      v35 = v57;

      v63 = v123;
      *(v123 + 1) = v62;
      *(v63 + 6) = 2080;
      v64 = sub_57B7C();
      v66 = v65;
      v60(v49, v31);
      v48 = v134;
      v67 = sub_293C0(v64, v66, v138);

      *(v63 + 14) = v67;
      v68 = v124;
      _os_log_impl(&dword_0, v124, v125, "Breadcrumbing question with system ID %s using content hash %s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v48 + 8))(v49, v31);
    }

    v40 = v139;
    v75 = objc_allocWithZone(MSSession);
    isa = sub_5616C().super.isa;
    v77 = [v75 initWithIdentifier:isa];

    v74 = v77;
    if (v77)
    {
LABEL_22:
      v78 = *(v48 + 8);
      v42 = v74;
      v78(v27, v31);
      goto LABEL_23;
    }

LABEL_48:
    __break(1u);
    return;
  }

  (*(v19 + 32))(v29, v17, v31);
  v43 = objc_allocWithZone(MSSession);
  v44 = sub_5616C().super.isa;
  v45 = [v43 initWithIdentifier:v44];

  if (!v45)
  {
    __break(1u);
    goto LABEL_48;
  }

  (*(v19 + 8))(v29, v31);
  v42 = v45;
  v35 = v2;
  v40 = v139;
LABEL_23:
  v79 = [objc_allocWithZone(MSMessage) initWithSession:v42];
  v139 = v42;

  [v79 setRequiresValidation:1];
  v80 = ATPayload.fallbackLinkPreview()();
  if (v80)
  {
    v81 = v80;
    v82 = [objc_allocWithZone(MSMessageRichLinkLayout) initWithLinkMetadata:v80];
    v83 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v82];
  }

  else
  {
    v81 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    v84 = sub_5763C();
    sub_5642C();

    v85 = sub_5774C();

    [v81 setCaption:v85];

    v86 = sub_5763C();
    sub_5644C();

    v87 = sub_5774C();

    [v81 setSubcaption:v87];

    v83 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v81];
  }

  if ([v83 respondsToSelector:"setRequiredCapabilities:"])
  {
    v88.super.isa = sub_5783C().super.isa;
    [v83 setRequiredCapabilities:v88.super.isa];
  }

  else
  {
    if (qword_715D8 != -1)
    {
      swift_once();
    }

    v89 = sub_562FC();
    sub_B144(v89, qword_757B8);
    v88.super.isa = sub_562DC();
    v90 = sub_5792C();
    if (os_log_type_enabled(v88.super.isa, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v88.super.isa, v90, "MSMessage does not respond to #selector(setter: MSMessage.requiredCapabilities)!", v91, 2u);
    }
  }

  [v79 setLayout:v83];
  v92 = sub_5763C();
  sub_563BC();
  v94 = v93;

  if (!v94)
  {
    v95 = sub_5763C();
    sub_5635C();
    v97 = v96;

    if (!v97)
    {
      v98 = sub_5763C();
      sub_5642C();
    }
  }

  v99 = sub_5774C();

  [v79 setSummaryText:v99];

  v101 = v135;
  v100 = v136;
  sub_575AC();
  v102 = v137;
  if (v101)
  {

    (v40[7])(v100, 1, 1, v102);
  }

  else if ((v40[6])(v100, 1, v137) != 1)
  {
    v118 = v130;
    (v40[4])(v130, v100, v102);
    sub_5609C(v119);
    v121 = v120;
    [v79 setURL:v120];

    (v40[1])(v118, v102);
    return;
  }

  v103 = v31;
  sub_2E90(v100, &qword_720F8, &unk_59710);
  if (qword_715D8 != -1)
  {
    swift_once();
  }

  v104 = sub_562FC();
  sub_B144(v104, qword_757B8);
  v105 = v35;
  v106 = sub_562DC();
  v107 = sub_5792C();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v138[0] = swift_slowAlloc();
    *v108 = 136315650;
    *(v108 + 4) = sub_293C0(0xD00000000000004DLL, 0x800000000005C950, v138);
    *(v108 + 12) = 2080;
    *(v108 + 14) = sub_293C0(0xD000000000000016, 0x800000000005C9A0, v138);
    *(v108 + 22) = 2080;
    v109 = sub_5763C();
    v110 = v133;
    sub_5633C();

    if (v131(v110, 1, v103) == 1)
    {
      sub_2E90(v110, &qword_71B48, &qword_5A780);
      v111 = 0xE500000000000000;
      v112 = 0x3E6C696E3CLL;
    }

    else
    {
      v113 = sub_5615C();
      v114 = v110;
      v115 = v113;
      v111 = v116;
      (*(v134 + 8))(v114, v103);
      v112 = v115;
    }

    v117 = sub_293C0(v112, v111, v138);

    *(v108 + 24) = v117;
    _os_log_impl(&dword_0, v106, v107, "%s.%s: Failed to create ATURL for payload: %s", v108, 0x20u);
    swift_arrayDestroy();
  }

  sub_2936C();
  swift_allocError();
  swift_willThrow();
}

LPLinkMetadata_optional __swiftcall ATPayload.fallbackLinkPreview()()
{
  v1 = v0;
  v2 = sub_2AFC(&qword_720F8, &unk_59710);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v53[0] = v53 - v8;
  __chkstk_darwin(v7);
  v10 = v53 - v9;
  v11 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v53 - v16;
  v18 = sub_5763C();
  sub_5630C();

  v19 = sub_5636C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v17, 1, v19) == 1)
  {
    sub_2E90(v17, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v22 = (*(v20 + 88))(v17, v19);
    v53[1] = v1;
    v23 = enum case for ATQuestion.TopicMetadata.communication(_:);
    (*(v20 + 8))(v17, v19);
    if (v22 == v23)
    {
      v24 = [objc_allocWithZone(LPLinkMetadata) init];
      v25 = sub_5763C();
      sub_5642C();

      v26 = sub_5774C();

      [v24 setTitle:v26];

      sub_560BC();
      v27 = sub_560CC();
      v28 = *(v27 - 8);
      v30 = 0;
      if ((*(v28 + 48))(v10, 1, v27) != 1)
      {
        sub_5609C(v29);
        v30 = v31;
        (*(v28 + 8))(v10, v27);
      }

      goto LABEL_18;
    }
  }

  v32 = sub_5763C();
  sub_5630C();

  if (v21(v15, 1, v19) == 1)
  {
    sub_2E90(v15, &qword_71A10, &qword_5A5A0);
    v24 = 0;
    goto LABEL_20;
  }

  v34 = (*(v20 + 88))(v15, v19);
  v35 = enum case for ATQuestion.TopicMetadata.contentAgeRestrictionException(_:);
  (*(v20 + 8))(v15, v19);
  if (v34 != v35)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v24 = [objc_allocWithZone(LPLinkMetadata) init];
  v36 = sub_5763C();
  sub_5642C();

  v37 = sub_5774C();

  [v24 setTitle:v37];

  v38 = sub_5763C();
  sub_5634C();

  v39 = sub_560CC();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  if (v41(v6, 1, v39) == 1)
  {
    v42 = v53[0];
    sub_560BC();
    if (v41(v6, 1, v39) != 1)
    {
      sub_2E90(v6, &qword_720F8, &unk_59710);
    }
  }

  else
  {
    v42 = v53[0];
    (*(v40 + 32))(v53[0], v6, v39);
    (*(v40 + 56))(v42, 0, 1, v39);
  }

  if (v41(v42, 1, v39) == 1)
  {
    v30 = 0;
  }

  else
  {
    sub_5609C(v43);
    v30 = v44;
    (*(v40 + 8))(v42, v39);
  }

LABEL_18:
  [v24 setURL:v30];

  v45 = sub_28F30();
  if (v33 >> 60 != 15)
  {
    v46 = v45;
    v47 = v33;
    v48 = objc_allocWithZone(LPImage);
    sub_29538(v46, v47);
    isa = sub_560EC().super.isa;
    v50 = sub_5774C();
    v51 = [v48 initWithData:isa MIMEType:v50];

    sub_12F8C(v46, v47);
    [v24 setImage:v51];

    sub_12F8C(v46, v47);
  }

LABEL_20:
  v52 = v24;
  result.is_nil = v33;
  result.value.super.isa = v52;
  return result;
}

id sub_28D48(id a1, SEL a2, id a3, id *a4)
{
  v6 = sub_561AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2AFC(&qword_71B48, &qword_5A780);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19[-v13];
  if (a3)
  {
    sub_5618C();
    (*(v7 + 32))(v14, v10, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  v15 = a1;
  ATPayload.newMessage(sessionId:)(v14);
  v17 = v16;
  sub_2E90(v14, &qword_71B48, &qword_5A780);

  return v17;
}

uint64_t sub_28F30()
{
  v26 = sub_5756C();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v26);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2AFC(&qword_71B00, &unk_593C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_572EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_572DC();
  v18 = sub_5763C();
  v19 = sub_5632C();

  if (v19)
  {
    sub_5728C();
  }

  else
  {
    sub_5729C();
  }

  v20 = v26;
  (*(v0 + 56))(v9, 0, 1, v26);
  (*(v11 + 16))(v15, v17, v10);
  sub_2E28(v9, v7, &qword_71B00, &unk_593C0);
  if ((*(v0 + 48))(v7, 1, v20) == 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = v25;
    (*(v0 + 32))(v25, v7, v20);
    v21 = sub_572AC();
    (*(v0 + 8))(v22, v20);
  }

  sub_2E90(v9, &qword_71B00, &unk_593C0);
  v23 = *(v11 + 8);
  v23(v17, v10);
  v23(v15, v10);
  return v21;
}

id sub_29274(id a1, SEL a2)
{
  v2 = a1;
  v3 = ATPayload.fallbackLinkPreview()();

  return v3;
}

Swift::Int sub_292C0()
{
  sub_57C2C();
  sub_57C3C(0);
  return sub_57C4C();
}

Swift::Int sub_2932C()
{
  sub_57C2C();
  sub_57C3C(0);
  return sub_57C4C();
}

unint64_t sub_2936C()
{
  result = qword_725F8;
  if (!qword_725F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_725F8);
  }

  return result;
}

uint64_t sub_293C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_296CC(v11, 0, 0, 1, a1, a2);
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
    sub_17458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_13040(v11);
  return v7;
}

unint64_t sub_2948C()
{
  result = qword_72600;
  if (!qword_72600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72600);
  }

  return result;
}

unint64_t sub_294E0()
{
  result = qword_71ED8;
  if (!qword_71ED8)
  {
    sub_561AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71ED8);
  }

  return result;
}

uint64_t sub_29538(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for PayloadError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PayloadError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29678()
{
  result = qword_72608;
  if (!qword_72608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72608);
  }

  return result;
}

unint64_t sub_296CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_297D8(a5, a6);
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
    result = sub_57B0C();
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

char *sub_297D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_29824(a1, a2);
  sub_29954(&off_6E388);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_29824(uint64_t a1, unint64_t a2)
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

  v6 = sub_29A40(v5, 0);
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

  result = sub_57B0C();
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
        v10 = sub_577EC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_29A40(v10, 0);
        result = sub_57AAC();
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

uint64_t sub_29954(uint64_t result)
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

  result = sub_29AB4(result, v12, 1, v3);
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

void *sub_29A40(uint64_t a1, uint64_t a2)
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

  sub_2AFC(&qword_72610, &qword_59BE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_72610, &qword_59BE8);
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

uint64_t sub_29BB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_29BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29C64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_569DC();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v4);
  swift_errorRetain();
  sub_2AFC(&qword_71D30, &qword_5A740);
  sub_2AFC(&qword_72618, &qword_59C70);
  if (swift_dynamicCast())
  {
    sub_2A3C8(&v37, &v40);
    sub_17508(&v40, *(&v41 + 1));
    v5 = sub_55EAC();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      sub_569CC();
      v44._object = 0x800000000005CA00;
      v44._countAndFlagsBits = 0xD000000000000013;
      sub_569BC(v44);
      v45._countAndFlagsBits = v7;
      v45._object = v8;
      sub_569AC(v45);

      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      sub_569BC(v46);
      sub_569FC();
      sub_B038();
      if (!sub_5796C())
      {
        v9 = [objc_opt_self() mainBundle];
      }

      v10 = sub_56DEC();
      v12 = v11;
      v14 = v13 & 1;
      sub_2A33C(v10, v11, v13 & 1);

      sub_56ABC();
      sub_2AFC(&qword_72628, &qword_59C80);
      sub_2A34C();
      sub_56ABC();
      sub_21FDC(v10, v12, v14);

      v36 = v38;
      v35 = v37;
      v15 = v39;
      v16 = BYTE1(v39);
      result = sub_13040(&v40);
      v18 = v35;
      v19 = v36;
      goto LABEL_18;
    }

    sub_13040(&v40);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2A2D4(&v37);
  }

  swift_getErrorValue();
  v20 = sub_57BDC();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    sub_569CC();
    v47._object = 0x800000000005CA00;
    v47._countAndFlagsBits = 0xD000000000000013;
    sub_569BC(v47);
    swift_getErrorValue();
    v48._countAndFlagsBits = sub_57BDC();
    sub_569AC(v48);

    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    sub_569BC(v49);
    sub_569FC();
    sub_B038();
    if (!sub_5796C())
    {
      v24 = [objc_opt_self() mainBundle];
    }

    v25 = sub_56DEC();
    v27 = v26;
    *&v37 = v25;
    *(&v37 + 1) = v26;
    v29 = v28 & 1;
    *&v38 = v28 & 1;
    *(&v38 + 1) = v30;
    LOBYTE(v39) = 1;
    sub_2A33C(v25, v26, v28 & 1);

    sub_56ABC();
    v37 = v40;
    v38 = v41;
    LOWORD(v39) = v42;
    sub_2AFC(&qword_72628, &qword_59C80);
    sub_2A34C();
    sub_56ABC();
    sub_21FDC(v25, v27, v29);
  }

  else
  {
    sub_569EC();
    sub_B038();
    if (!sub_5796C())
    {
      v31 = [objc_opt_self() mainBundle];
    }

    *&v37 = sub_56DEC();
    *(&v37 + 1) = v32;
    *&v38 = v33 & 1;
    *(&v38 + 1) = v34;
    LOWORD(v39) = 256;
    sub_2AFC(&qword_72628, &qword_59C80);
    sub_2A34C();
    result = sub_56ABC();
  }

  v18 = v40;
  v19 = v41;
  v15 = v42;
  v16 = v43;
LABEL_18:
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v15;
  *(a1 + 33) = v16;
  return result;
}

uint64_t sub_2A2D4(uint64_t a1)
{
  v2 = sub_2AFC(&qword_72620, &qword_59C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2A33C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2A34C()
{
  result = qword_72630;
  if (!qword_72630)
  {
    sub_2C70(&qword_72628, &qword_59C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72630);
  }

  return result;
}

uint64_t sub_2A3C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2A3E4()
{
  result = qword_72638;
  if (!qword_72638)
  {
    sub_2C70(qword_72640, &unk_59C88);
    sub_2A34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72638);
  }

  return result;
}

void sub_2A478(uint64_t a1)
{
  sub_2A89C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2A500(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
  }

  v8 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_2A660(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 9) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 9] & ~v8;

  v18(v19);
}

void sub_2A89C()
{
  if (!qword_726C8[0])
  {
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, qword_726C8);
    }
  }
}

uint64_t sub_2A8F4(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2A99C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_2AC54(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_2B01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_56AAC();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return sub_56ABC();
}

uint64_t sub_2B114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_56AAC();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_56ABC();
}

uint64_t sub_2B20C@<X0>(uint64_t a1@<X0>, __int8 *a2@<X8>)
{
  v37 = a2;
  v36 = sub_5699C();
  v35 = *(v36 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v36);
  v5 = &v30.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = *(a1 + 24);
  v6 = v30.i64[1];
  v31 = v30.i64[0];
  v7 = sub_571BC();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v30.i8[-v9];
  sub_2C70(&qword_72750, &qword_59D88);
  v33 = sub_5676C();
  sub_2C70(&qword_72758, &qword_59D90);
  v11 = sub_5676C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = (__chkstk_darwin)(v11);
  v16 = &v30.i8[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v30.i8[-v18];
  v39 = *(a1 + 16);
  v17.i64[0] = v39;
  *&v20 = vdupq_laneq_s64(v30, 1).u64[0];
  v21 = *(a1 + 48);
  *(&v20 + 1) = *(a1 + 40);
  v46 = vzip1q_s64(v17, v30);
  v47 = v20;
  v22 = *(a1 + 56);
  v48 = v21;
  v49 = v22;
  v50 = v32;
  v40 = v30;
  v41 = *(&v20 + 1);
  v42 = v21;
  v43 = v22;
  v44 = v32;
  sub_2B8EC(sub_2C444, v45, sub_2C45C, v38, v31, v6);
  sub_5698C();
  v55 = &protocol witness table for EmptyView;
  v56 = v21;
  v57 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_56EAC();
  (*(v35 + 8))(v5, v36);
  (*(v34 + 8))(v10, v7);
  v24 = sub_3260(&qword_72760, &qword_72750, &qword_59D88);
  v53 = WitnessTable;
  v54 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_3260(&qword_72768, &qword_72758, &qword_59D90);
  v51 = v25;
  v52 = v26;
  swift_getWitnessTable();
  v27 = v12[2];
  v27(v19, v16, v11);
  v28 = v12[1];
  v28(v16, v11);
  v27(v37, v19, v11);
  return (v28)(v19, v11);
}

uint64_t sub_2B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = v10;
  v19[1] = v11;
  v19[2] = v12;
  v19[3] = v13;
  v19[4] = v14;
  v19[5] = v15;
  v16 = type metadata accessor for ATOnboardingSection();
  v17 = *(v6 + 16);
  v17(v9, a1 + *(v16 + 68), a2);
  v17(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_2B7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = v10;
  v19[1] = v11;
  v19[2] = v12;
  v19[3] = v13;
  v19[4] = v14;
  v19[5] = v15;
  v16 = type metadata accessor for ATOnboardingSection();
  v17 = *(v6 + 16);
  v17(v9, a1 + *(v16 + 72), a2);
  v17(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_2B8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = __chkstk_darwin(a1);
  v8(v7);
  return sub_571AC();
}

uint64_t sub_2B9C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v45 = sub_5653C();
  v44 = *(v45 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v45);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  sub_5676C();
  sub_56ACC();
  v6 = sub_5700C();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  sub_2C70(&qword_72770, &qword_59D98);
  v10 = sub_5676C();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  sub_2C70(&qword_72778, &qword_59DA0);
  v14 = sub_5676C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v41 = &v37 - v19;
  v20 = *(a1 + 24);
  v47 = v5;
  v48 = v20;
  v49 = v38;
  v57 = v20;
  v58 = &protocol witness table for _FrameLayout;
  v38 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v56 = v20;
  v21 = swift_getWitnessTable();
  sub_56FFC();
  v22 = [objc_opt_self() secondarySystemBackgroundColor];
  v59 = sub_56FEC();
  v54 = v21;
  v23 = swift_getWitnessTable();
  sub_56E9C();

  (*(v40 + 8))(v9, v6);
  v24 = v43;
  sub_5652C();
  sub_5651C();
  v26 = v25;
  v28 = v27;
  (*(v44 + 8))(v24, v45);
  v59 = v26;
  v60 = 0x4030000000000000;
  v61 = v28;
  v62 = 0x4030000000000000;
  v63 = 0;
  v29 = sub_3260(&qword_72780, &qword_72770, &qword_59D98);
  v52 = v23;
  v53 = v29;
  v30 = swift_getWitnessTable();
  v31 = v39;
  sub_56E5C();
  (*(v42 + 8))(v13, v10);
  v32 = sub_3260(&qword_72788, &qword_72778, &qword_59DA0);
  v50 = v30;
  v51 = v32;
  swift_getWitnessTable();
  v33 = v15[2];
  v34 = v41;
  v33(v41, v31, v14);
  v35 = v15[1];
  v35(v31, v14);
  v33(v46, v34, v14);
  return (v35)(v34, v14);
}

uint64_t sub_2BF7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = sub_5676C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v38 = v37 - v13;
  v14 = *(a2 - 8);
  v15 = v14[8];
  __chkstk_darwin(v16);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v37 - v20;
  v22 = sub_56ACC();
  v39 = *(v22 - 8);
  v40 = v22;
  v23 = *(v39 + 64);
  __chkstk_darwin(v22);
  v25 = v37 - v24;
  if (a1[8] == 1)
  {
    v26 = type metadata accessor for ATOnboardingRow();
    v27 = v14[2];
    v27(v21, &a1[*(v26 + 36)], a2);
    v27(v18, v21, a2);
    v48 = a3;
    v49 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    sub_2B114(v18, v7, a2);
    v28 = v14[1];
    v28(v18, a2);
    v28(v21, a2);
  }

  else
  {
    v29 = *a1;
    v30 = *(type metadata accessor for ATOnboardingRow() + 36);
    sub_571DC();
    sub_56F0C();
    v42 = a3;
    v43 = &protocol witness table for _FrameLayout;
    v37[1] = swift_getWitnessTable();
    v31 = v8[2];
    v32 = v38;
    v31(v38, v11, v7);
    v33 = v8[1];
    v33(v11, v7);
    v31(v11, v32, v7);
    sub_2B01C(v11, v7);
    v33(v11, v7);
    v33(v32, v7);
  }

  v46 = a3;
  v47 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v45 = a3;
  v34 = v40;
  swift_getWitnessTable();
  v35 = v39;
  (*(v39 + 16))(v41, v25, v34);
  return (*(v35 + 8))(v25, v34);
}

uint64_t sub_2C3F8(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2C49C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_571BC();
  sub_2C70(&qword_72750, &qword_59D88);
  sub_5676C();
  sub_2C70(&qword_72758, &qword_59D90);
  sub_5676C();
  v5 = *(a1 + 32);
  swift_getWitnessTable();
  sub_3260(&qword_72760, &qword_72750, &qword_59D88);
  swift_getWitnessTable();
  sub_3260(&qword_72768, &qword_72758, &qword_59D90);
  return swift_getWitnessTable();
}

uint64_t sub_2C61C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_5676C();
  sub_56ACC();
  sub_5700C();
  sub_2C70(&qword_72770, &qword_59D98);
  sub_5676C();
  sub_2C70(&qword_72778, &qword_59DA0);
  sub_5676C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_3260(&qword_72780, &qword_72770, &qword_59D98);
  swift_getWitnessTable();
  sub_3260(&qword_72788, &qword_72778, &qword_59DA0);
  return swift_getWitnessTable();
}

__n128 sub_2C7F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2C810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2C858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2C8D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_2AFC(&qword_72118, &qword_59738);
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v60 = &v57 - v5;
  v6 = sub_2AFC(&qword_72798, &qword_59E50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v57 - v11;
  v12 = sub_2AFC(&qword_727A0, &qword_59E58);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v57 - v14;
  v16 = sub_2AFC(&qword_727A8, &qword_59E60);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v62 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  __chkstk_darwin(v23);
  v25 = &v57 - v24;
  *v15 = sub_5697C();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v26 = sub_2AFC(&qword_727B0, &qword_59E68);
  sub_2CF0C(a1, &v15[*(v26 + 44)]);
  sub_571CC();
  sub_567CC();
  sub_B0DC(v15, v22, &qword_727A0, &qword_59E58);
  v27 = &v22[*(v17 + 44)];
  v28 = v84;
  *(v27 + 4) = v83;
  *(v27 + 5) = v28;
  *(v27 + 6) = v85;
  v29 = v80;
  *v27 = v79;
  *(v27 + 1) = v29;
  v30 = v82;
  *(v27 + 2) = v81;
  *(v27 + 3) = v30;
  v61 = v25;
  sub_B0DC(v22, v25, &qword_727A8, &qword_59E60);
  v31 = a1[3];
  if (v31)
  {
    *&v76[0] = a1[2];
    *(&v76[0] + 1) = v31;
    sub_2B4C();

    v32 = sub_56E0C();
    v34 = v33;
    v36 = v35;
    sub_56D4C();
    v37 = sub_56DDC();
    v39 = v38;
    v58 = v3;
    v59 = v9;
    v41 = v40;

    sub_21FDC(v32, v34, v36 & 1);

    sub_56FDC();
    v42 = sub_56DAC();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_21FDC(v37, v39, v41 & 1);
    v9 = v59;

    sub_571CC();
    sub_567CC();
    v78 = v46 & 1;
    *&v66 = v42;
    *(&v66 + 1) = v44;
    LOBYTE(v67) = v46 & 1;
    *(&v67 + 1) = v48;
    v75 = 256;
    sub_2AFC(&qword_72138, &qword_59780);
    sub_220DC();
    v49 = v60;
    sub_56ECC();
    v76[6] = v72;
    v76[7] = v73;
    v76[8] = v74;
    v77 = v75;
    v76[2] = v68;
    v76[3] = v69;
    v76[4] = v70;
    v76[5] = v71;
    v76[0] = v66;
    v76[1] = v67;
    sub_2E90(v76, &qword_72138, &qword_59780);
    v50 = v49;
    v51 = v64;
    sub_B0DC(v50, v64, &qword_72118, &qword_59738);
    (*(v63 + 56))(v51, 0, 1, v58);
  }

  else
  {
    v51 = v64;
    (*(v63 + 56))(v64, 1, 1, v3);
  }

  v53 = v61;
  v52 = v62;
  sub_2E28(v61, v62, &qword_727A8, &qword_59E60);
  sub_2E28(v51, v9, &qword_72798, &qword_59E50);
  v54 = v65;
  sub_2E28(v52, v65, &qword_727A8, &qword_59E60);
  v55 = sub_2AFC(&qword_727B8, &qword_59E70);
  sub_2E28(v9, v54 + *(v55 + 48), &qword_72798, &qword_59E50);
  sub_2E90(v51, &qword_72798, &qword_59E50);
  sub_2E90(v53, &qword_727A8, &qword_59E60);
  sub_2E90(v9, &qword_72798, &qword_59E50);
  return sub_2E90(v52, &qword_727A8, &qword_59E60);
}

uint64_t sub_2CF0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v67 = sub_2AFC(&qword_727C0, &qword_59E78);
  v3 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v66 = (&v65 - v4);
  v73 = sub_2AFC(&qword_727C8, &qword_59E80);
  v72 = *(v73 - 8);
  v5 = *(v72 + 64);
  __chkstk_darwin(v73);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_2AFC(&qword_727D0, &qword_59E88);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v75 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v65 - v13;
  v14 = sub_2AFC(&qword_727D8, &qword_59E90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v74 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  v70 = a1;
  v20 = a1[1];
  *&v84[0] = *a1;
  *(&v84[0] + 1) = v20;
  sub_2B4C();

  v21 = sub_56E0C();
  v23 = v22;
  LOBYTE(a1) = v24;
  sub_56D5C();
  v25 = sub_56DDC();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_21FDC(v21, v23, a1 & 1);

  KeyPath = swift_getKeyPath();
  v33 = sub_56FCC();
  v34 = swift_getKeyPath();
  v83 = v29 & 1;
  v82 = 0;
  *&v77 = v25;
  *(&v77 + 1) = v27;
  v35 = v19;
  v36 = v70;
  LOBYTE(v78) = v29 & 1;
  *(&v78 + 1) = v31;
  *&v79 = KeyPath;
  *(&v79 + 1) = 1;
  LOBYTE(v80) = 0;
  *(&v80 + 1) = v34;
  v81 = v33;
  sub_2AFC(&qword_727E0, &qword_59EF8);
  sub_2D7C8();
  sub_56ECC();
  v84[2] = v79;
  v84[3] = v80;
  v85 = v81;
  v84[0] = v77;
  v84[1] = v78;
  sub_2E90(v84, &qword_727E0, &qword_59EF8);
  if (v36[5])
  {
    v37 = v72;
    v38 = v73;
    v39 = v71;
    v40 = v36[4];
    v41 = v36[5];

    v42 = sub_5702C();
    v43 = sub_2AFC(&qword_727F8, &qword_59F08);
    v44 = v66;
    v45 = (v66 + *(v43 + 36));
    v46 = *(sub_2AFC(&qword_71678, &qword_58970) + 28);
    v47 = enum case for Image.Scale.small(_:);
    v48 = sub_5704C();
    (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
    *v45 = swift_getKeyPath();
    *v44 = v42;
    v49 = sub_56D4C();
    v50 = swift_getKeyPath();
    v51 = (v44 + *(v67 + 36));
    *v51 = v50;
    v51[1] = v49;
    v52 = v36[6];
    if (!v52)
    {
      v52 = sub_56F7C();
    }

    v53 = swift_getKeyPath();
    v54 = v44;
    v55 = v69;
    sub_B0DC(v54, v69, &qword_727C0, &qword_59E78);
    v56 = v38;
    v57 = (v55 + *(v38 + 36));
    *v57 = v53;
    v57[1] = v52;
    v58 = v68;
    sub_B0DC(v55, v68, &qword_727C8, &qword_59E80);
    v59 = v39;
    sub_B0DC(v58, v39, &qword_727C8, &qword_59E80);
    (*(v37 + 56))(v39, 0, 1, v56);
  }

  else
  {
    v59 = v71;
    (*(v72 + 56))(v71, 1, 1, v73);
  }

  v60 = v74;
  sub_2E28(v35, v74, &qword_727D8, &qword_59E90);
  v61 = v75;
  sub_2E28(v59, v75, &qword_727D0, &qword_59E88);
  v62 = v76;
  sub_2E28(v60, v76, &qword_727D8, &qword_59E90);
  v63 = sub_2AFC(&qword_727F0, &qword_59F00);
  sub_2E28(v61, v62 + *(v63 + 48), &qword_727D0, &qword_59E88);
  sub_2E90(v59, &qword_727D0, &qword_59E88);
  sub_2E90(v35, &qword_727D8, &qword_59E90);
  sub_2E90(v61, &qword_727D0, &qword_59E88);
  return sub_2E90(v60, &qword_727D8, &qword_59E90);
}

uint64_t sub_2D5B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_56A2C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_2AFC(&qword_72790, &qword_59E48);
  return sub_2C8D0(v6, a1 + *(v4 + 44));
}

uint64_t sub_2D648(uint64_t a1)
{
  v2 = sub_5704C();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_5680C();
}

uint64_t sub_2D718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5685C();
  *a1 = result;
  return result;
}

uint64_t sub_2D744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5685C();
  *a1 = result;
  return result;
}

uint64_t sub_2D770(uint64_t *a1)
{
  v1 = *a1;

  return sub_5686C();
}

uint64_t sub_2D79C(uint64_t *a1)
{
  v1 = *a1;

  return sub_5686C();
}

unint64_t sub_2D7C8()
{
  result = qword_727E8;
  if (!qword_727E8)
  {
    sub_2C70(&qword_727E0, &qword_59EF8);
    sub_2D70();
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_727E8);
  }

  return result;
}

void sub_2D8F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v58 = sub_5605C();
  v56 = *(v58 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v58);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_561CC();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v57);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v55 = sub_5773C();
  v14 = *(v55 - 1);
  v15 = *(v14 + 64);
  __chkstk_darwin(v55);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  v67 = sub_5606C();
  v65 = *(v67 - 8);
  v21 = *(v65 + 64);
  __chkstk_darwin(v67);
  v59 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v68 = &v53 - v24;
  v62 = sub_2AFC(&qword_72918, &qword_5A1E8);
  v61 = *(v62 - 8);
  v25 = *(v61 + 64);
  __chkstk_darwin(v62);
  v27 = &v53 - v26;
  v63 = a1;
  v64 = a2;
  v69 = a1;
  v70 = a2;
  sub_2AFC(&qword_72920, &qword_5A1F0);
  sub_3260(&qword_72928, &qword_72920, &qword_5A1F0);
  v60 = v27;
  sub_5677C();
  sub_576DC();
  sub_B038();
  v28 = sub_5796C();
  if (!v28)
  {
    v28 = [objc_opt_self() mainBundle];
  }

  v29 = v28;
  sub_561BC();
  v30 = *(v14 + 16);
  v53 = v20;
  v31 = v55;
  v30(v17, v20, v55);
  v32 = v57;
  (*(v7 + 16))(v10, v13, v57);
  v33 = [v29 bundleURL];
  v34 = v54;
  sub_560AC();

  (*(v56 + 104))(v34, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v58);
  sub_5607C();

  (*(v7 + 8))(v13, v32);
  (*(v14 + 8))(v53, v31);
  v36 = v63;
  v35 = v64;
  v74 = v63;
  v75 = v64;
  sub_2AFC(&qword_72930, &qword_5A1F8);
  sub_570AC();
  v37 = v77;
  v38 = v78;
  v39 = v79;
  swift_getKeyPath();
  v77 = v37;
  v78 = v38;
  v79 = v39;
  sub_2AFC(&qword_72938, &qword_5A228);
  sub_5712C();

  v57 = v74;
  v56 = v75;
  LODWORD(v58) = v76;

  v72 = v36;
  v73 = v35;
  sub_5708C();
  v40 = *(v71 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  v55 = &v53;
  v53 = v72;
  LODWORD(v54) = v73;
  v42 = __chkstk_darwin(v41);
  v72 = v43;
  LOBYTE(v73) = v44;
  v45 = v65;
  (*(v65 + 16))(v59, v68, v67, v42);
  v46 = sub_56DFC();
  v48 = v47;
  LOBYTE(v40) = v49;
  v64 = v50;
  sub_2AFC(&qword_71F48, &unk_5A730);
  sub_2AFC(&qword_71F50, &unk_59530);
  sub_3260(&qword_72940, &qword_72918, &qword_5A1E8);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
  v51 = v62;
  v52 = v60;
  sub_56EFC();
  sub_21FDC(v46, v48, v40 & 1);

  (*(v45 + 8))(v68, v67);
  (*(v61 + 8))(v52, v51);
  sub_BCE4(v53, v54);
}

uint64_t sub_2E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2AFC(&qword_72930, &qword_5A1F8);
  sub_5708C();
  v6 = v17[2];
  v7 = v17[3];

  sub_5604C();
  v8 = sub_2AFC(&qword_72920, &qword_5A1F0);
  v9 = v8[9];
  sub_5708C();
  v10 = v17[4];
  v11 = v17[5];

  sub_5604C();
  v12 = sub_5606C();
  (*(*(v12 - 8) + 56))(a3 + v9, 0, 1, v12);
  sub_5708C();
  v13 = sub_300E8();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(a3 + v8[10]) = 0;
  *(a3 + v8[11]) = v13;
  v15 = (a3 + v8[12]);
  *v15 = sub_30478;
  v15[1] = v14;
}

uint64_t sub_2E360@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a1;
  v52 = a3;
  v3 = sub_2AFC(&qword_71F68, &unk_59540);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v43 - v7;
  v8 = sub_5605C();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_561CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_5773C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v43 - v26;
  v28 = sub_5606C();
  v46 = *(v28 - 8);
  v47 = v28;
  v29 = *(v46 + 64);
  __chkstk_darwin(v28);
  v53 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_576DC();
  sub_B038();
  v31 = sub_5796C();
  if (!v31)
  {
    v31 = [objc_opt_self() mainBundle];
  }

  v32 = v31;
  sub_561BC();
  (*(v21 + 16))(v24, v27, v20);
  (*(v13 + 16))(v16, v19, v12);
  v33 = [v32 bundleURL];
  v43 = v20;
  v34 = v12;
  v35 = v33;
  sub_560AC();

  (*(v44 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v45);
  sub_5607C();

  (*(v13 + 8))(v19, v34);
  (*(v21 + 8))(v27, v43);
  v36 = v49;
  sub_5666C();
  v37 = sub_5667C();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = swift_allocObject();
  v39 = v50;
  *(v38 + 16) = v51;
  *(v38 + 24) = v39;
  v40 = sub_2E28(v36, v48, &qword_71F68, &unk_59540);
  __chkstk_darwin(v40);
  v41 = v53;
  *(&v43 - 2) = v53;

  sub_570CC();
  sub_2E90(v36, &qword_71F68, &unk_59540);
  return (*(v46 + 8))(v41, v47);
}

uint64_t sub_2E8D4()
{
  sub_2AFC(&qword_72930, &qword_5A1F8);
  sub_5708C();
  *(v2 + 104) = 0;

  sub_5708C();
  v0 = *(v2 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_5663C();
}

uint64_t sub_2E9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (os_variant_has_internal_ui() && (v7 & 1) != 0)
  {
    swift_errorRetain();
    sub_2AFC(&qword_71D30, &qword_5A740);
    swift_willThrowTypedImpl();
    swift_getErrorValue();
    v8 = sub_57BDC();
    v10 = v9;
    sub_BCFC(v6, 1);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_569CC();
  v18._object = 0x800000000005C540;
  v18._countAndFlagsBits = 0xD000000000000038;
  sub_569BC(v18);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v19._countAndFlagsBits = v8;
    v19._object = v10;
    sub_577DC(v19);

    v12._countAndFlagsBits = 32;
    v13 = 0xE100000000000000;
  }

  else
  {

    v12._countAndFlagsBits = 0;
    v13 = 0xE000000000000000;
  }

  v12._object = v13;
  sub_569AC(v12);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_569BC(v20);
  sub_569FC();
  result = sub_56DEC();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_2EB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v55 = a2;
  v2 = sub_56B6C();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_56B3C();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2AFC(&qword_72948, &qword_5A2F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_2AFC(&qword_72950, &qword_5A300);
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v49 = sub_2AFC(&qword_72958, &qword_5A308);
  v52 = *(v49 - 8);
  v20 = *(v52 + 64);
  __chkstk_darwin(v49);
  v41 = &v41 - v21;
  v22 = sub_2AFC(&qword_72960, &qword_5A310);
  v23 = *(v22 - 8);
  v50 = v22;
  v51 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v42 = &v41 - v25;
  v48 = sub_2AFC(&qword_72968, &qword_5A318);
  v26 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v43 = &v41 - v27;
  sub_2AFC(&qword_72970, &qword_5A320);
  sub_3260(&qword_72978, &qword_72970, &qword_5A320);
  sub_56D7C();
  sub_56B2C();
  v28 = sub_3260(&qword_72980, &qword_72948, &qword_5A2F8);
  v29 = v45;
  sub_56F4C();
  (*(v6 + 8))(v9, v29);
  (*(v11 + 8))(v14, v10);
  sub_56C9C();
  sub_56B5C();
  v56 = v10;
  v57 = v29;
  v58 = v28;
  v59 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v41;
  v32 = v46;
  sub_56E7C();
  v33 = v54;
  v34 = *(v53 + 8);
  v34(v5, v54);
  (*(v47 + 8))(v19, v32);
  sub_56CCC();
  sub_56B5C();
  v56 = v32;
  v57 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v42;
  v37 = v49;
  sub_56E7C();
  v34(v5, v33);
  (*(v52 + 8))(v31, v37);
  v56 = v37;
  v57 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v43;
  v39 = v50;
  sub_56EDC();
  (*(v51 + 8))(v36, v39);
  *(v38 + *(v48 + 36)) = 256;
  sub_3062C();
  sub_56EBC();
  return sub_307F8(v38);
}

uint64_t sub_2F1F4(uint64_t a1)
{
  v2 = *(a1 + 64);

  sub_2AFC(&qword_72990, &qword_5A328);
  sub_2AFC(&qword_72998, &qword_5A330);
  sub_3260(&qword_729A0, &qword_72990, &qword_5A328);
  sub_30868();
  sub_30920();
  return sub_5719C();
}

uint64_t sub_2F2F4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v18[2] = a1[2];
  v19[0] = v3;
  *(v19 + 9) = *(a1 + 57);
  v4 = a1[1];
  v18[0] = *a1;
  v18[1] = v4;
  v5 = a2 + *(sub_2AFC(&qword_729B8, &qword_5A338) + 36);
  *v5 = sub_5697C();
  *(v5 + 8) = 0x4030000000000000;
  *(v5 + 16) = 0;
  v6 = sub_2AFC(&qword_729C8, &qword_5A340);
  sub_2F3FC(v18, v5 + *(v6 + 44));
  *a2 = 0;
  *(a2 + 8) = 1;
  v7 = sub_56CCC();
  sub_5668C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = sub_2AFC(&qword_72998, &qword_5A330);
  v17 = a2 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_2F3FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2AFC(&qword_729D0, &qword_5A348);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_2AFC(&qword_729D8, &qword_5A350);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  sub_2F728(a1, &v26 - v16);
  sub_571DC();
  sub_566EC();
  v18 = &v17[*(v11 + 44)];
  v19 = v31;
  *v18 = v30;
  *(v18 + 1) = v19;
  *(v18 + 2) = v32;
  *v9 = sub_56A2C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = *(sub_2AFC(&qword_729E0, &unk_5A358) + 44);
  v21 = sub_30974(a1);
  v22 = *(v21 + 16);
  v28 = 0;
  v29 = v22;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v21;
  sub_2AFC(&qword_729E8, &unk_5A380);
  sub_2AFC(&qword_72628, &qword_59C80);
  sub_30B78();
  sub_2A34C();
  sub_5718C();
  sub_2E28(v17, v14, &qword_729D8, &qword_5A350);
  sub_2E28(v9, v6, &qword_729D0, &qword_5A348);
  v23 = v27;
  sub_2E28(v14, v27, &qword_729D8, &qword_5A350);
  v24 = sub_2AFC(&qword_72A00, &qword_5A390);
  sub_2E28(v6, v23 + *(v24 + 48), &qword_729D0, &qword_5A348);
  sub_2E90(v9, &qword_729D0, &qword_5A348);
  sub_2E90(v17, &qword_729D8, &qword_5A350);
  sub_2E90(v6, &qword_729D0, &qword_5A348);
  return sub_2E90(v14, &qword_729D8, &qword_5A350);
}

uint64_t sub_2F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_5703C();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2AFC(&qword_72A10, &qword_5A3A0);
  v7 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v9 = &v34 - v8;
  v38 = sub_2AFC(&qword_72A18, &qword_5A3A8);
  v10 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v12 = &v34 - v11;
  v39 = sub_2AFC(&qword_72A20, &qword_5A3B0);
  v13 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v15 = &v34 - v14;
  v16 = sub_55D9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  if (*(a1 + 72))
  {
    if (*(a1 + 72) == 1)
    {
      sub_30E78(*(a1 + 56), *(a1 + 64), 1);
      v23 = v21;
      sub_5701C();
      v24 = v36;
      v25 = v37;
      (*(v36 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v37);
      v26 = sub_5705C();
      v35 = v15;
      v27 = v26;

      (*(v24 + 8))(v6, v25);
      *v12 = v27;
      *(v12 + 1) = 0;
      v12[16] = 1;
      *(v12 + 17) = 1;
      v12[19] = 1;
      swift_storeEnumTagMultiPayload();

      sub_2AFC(&qword_72A40, &qword_5A3B8);
      sub_30CE4();
      sub_30D3C();
      v28 = v35;
      sub_56ABC();
      sub_2E28(v28, v9, &qword_72A20, &qword_5A3B0);
      swift_storeEnumTagMultiPayload();
      sub_30C58();
      sub_56ABC();

      sub_30E98(v21, v22, 1);
      return sub_2E90(v28, &qword_72A20, &qword_5A3B0);
    }

    sub_55D8C();
    (*(v17 + 16))(v9, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_30C58();
    sub_30CE4();
    sub_56ABC();
  }

  else
  {
    v30 = *(a1 + 64);

    v31 = v15;
    v32 = sub_2FC88();
    sub_30E98(v21, v22, 0);
    v33 = v32;
    sub_55D7C();
    (*(v17 + 16))(v12, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_2AFC(&qword_72A40, &qword_5A3B8);
    sub_30CE4();
    sub_30D3C();
    sub_56ABC();
    sub_2E28(v31, v9, &qword_72A20, &qword_5A3B0);
    swift_storeEnumTagMultiPayload();
    sub_30C58();
    sub_56ABC();

    sub_2E90(v31, &qword_72A20, &qword_5A3B0);
  }

  return (*(v17 + 8))(v20, v16);
}

id sub_2FC88()
{
  v0 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11[-v2];
  v4 = sub_5600C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_allocWithZone(CNMutableContact) init];

  sub_5601C();
  (*(v5 + 56))(v3, 0, 1, v4);
  (*(v5 + 32))(v8, v3, v4);
  sub_253F4();
  (*(v5 + 8))(v8, v4);
  return v9;
}

unint64_t *sub_2FEA4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(a2 + 16))
    {
      v20 = *(a2 + 16 * v4 + 32);
      sub_2B4C();

      v5 = sub_56E0C();
      v7 = v6;
      v9 = v8;
      sub_56CDC();
      v10 = sub_56DDC();
      v12 = v11;
      v14 = v13;

      sub_21FDC(v5, v7, v9 & 1);

      LODWORD(v20) = sub_56B8C();
      sub_56DBC();
      sub_21FDC(v10, v12, v14 & 1);

LABEL_7:
      result = sub_56ABC();
      *a3 = v20;
      *(a3 + 16) = v21;
      *(a3 + 32) = v22;
      return result;
    }

    __break(1u);
  }

  else if (*(a2 + 16))
  {
    v20 = *(a2 + 32);
    sub_2B4C();

    v15 = sub_56E0C();
    v17 = v16;
    v19 = v18;
    sub_56D6C();
    sub_56DDC();

    sub_21FDC(v15, v17, v19 & 1);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_300E8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    sub_4944();
    v1 = v2;
    v3 = *(v0 + 80);
    *(v0 + 80) = v2;
  }

  return v1;
}

void *sub_3014C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[12];

  return v0;
}

uint64_t sub_3019C()
{
  sub_3014C();

  return swift_deallocClassInstance();
}

uint64_t sub_301F4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_30210(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_30234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3027C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_30308(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_3031C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_30364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_303A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_30428()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2E8D4();
}

uint64_t sub_30438()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30478@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  sub_2AFC(&qword_72930, &qword_5A1F8);
  result = sub_5708C();
  *a1 = v4;
  return result;
}

uint64_t sub_304E0()
{
  sub_2C70(&qword_72918, &qword_5A1E8);
  sub_2C70(&qword_71F48, &unk_5A730);
  sub_2C70(&qword_71F50, &unk_59530);
  sub_3260(&qword_72940, &qword_72918, &qword_5A1E8);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3062C()
{
  result = qword_72988;
  if (!qword_72988)
  {
    sub_2C70(&qword_72968, &qword_5A318);
    sub_2C70(&qword_72960, &qword_5A310);
    sub_2C70(&qword_72958, &qword_5A308);
    sub_2C70(&qword_72950, &qword_5A300);
    sub_2C70(&qword_72948, &qword_5A2F8);
    sub_56B3C();
    sub_3260(&qword_72980, &qword_72948, &qword_5A2F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72988);
  }

  return result;
}

uint64_t sub_307F8(uint64_t a1)
{
  v2 = sub_2AFC(&qword_72968, &qword_5A318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_30868()
{
  result = qword_729A8;
  if (!qword_729A8)
  {
    sub_2C70(&qword_72998, &qword_5A330);
    sub_3260(&qword_729B0, &qword_729B8, &qword_5A338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729A8);
  }

  return result;
}

unint64_t sub_30920()
{
  result = qword_729C0;
  if (!qword_729C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729C0);
  }

  return result;
}

uint64_t sub_30974(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v26 = v3;
  v27 = v5;
  v7 = a1[3];
  v6 = a1[4];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v28 = v7;
  v29 = v9;
  v11 = a1[5];
  v10 = a1[6];
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
  }

  else
  {
    v11 = 0;
    result = 0;
  }

  v14 = 0;
  v30 = v11;
  v31 = result;
  v15 = &_swiftEmptyArrayStorage;
LABEL_17:
  if (v14 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = 16 * v14 + 40;
  while (1)
  {
    if (v14 == 3)
    {
      sub_2AFC(&qword_72A08, &qword_5A398);
      swift_arrayDestroy();
      return v15;
    }

    if (v17 == ++v14)
    {
      break;
    }

    v19 = v18 + 16;
    v20 = *&v25[v18];
    v18 += 16;
    if (v20)
    {
      v21 = *&v25[v19 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_6AAC(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_6AAC((v22 > 1), v23 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v23 + 1;
      v24 = &v15[16 * v23];
      *(v24 + 4) = v21;
      *(v24 + 5) = v20;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_30B38()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_30B78()
{
  result = qword_729F0;
  if (!qword_729F0)
  {
    sub_2C70(&qword_729E8, &unk_5A380);
    sub_30C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729F0);
  }

  return result;
}

unint64_t sub_30C04()
{
  result = qword_729F8;
  if (!qword_729F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729F8);
  }

  return result;
}

unint64_t sub_30C58()
{
  result = qword_72A28;
  if (!qword_72A28)
  {
    sub_2C70(&qword_72A20, &qword_5A3B0);
    sub_30CE4();
    sub_30D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A28);
  }

  return result;
}

unint64_t sub_30CE4()
{
  result = qword_72A30;
  if (!qword_72A30)
  {
    sub_55D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A30);
  }

  return result;
}

unint64_t sub_30D3C()
{
  result = qword_72A38;
  if (!qword_72A38)
  {
    sub_2C70(&qword_72A40, &qword_5A3B8);
    sub_30DF4();
    sub_3260(&qword_72A58, &qword_72A60, &qword_5A3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A38);
  }

  return result;
}

unint64_t sub_30DF4()
{
  result = qword_72A48;
  if (!qword_72A48)
  {
    sub_2C70(&qword_72A50, &qword_5A3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A48);
  }

  return result;
}

id sub_30E78(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

void sub_30E98(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_30EB8()
{
  sub_2C70(&qword_72968, &qword_5A318);
  sub_3062C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_30F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_561AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_3101C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_561AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MessagesContext()
{
  result = qword_72AC0;
  if (!qword_72AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_31128()
{
  sub_2277C();
  if (v0 <= 0x3F)
  {
    sub_561AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_311D8()
{
  v0 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v38 - v2;
  v4 = sub_5600C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_573DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(CNMutableContact) init];
  v15 = sub_5747C();
  sub_573EC();

  v16 = (*(v10 + 88))(v13, v9);
  if (v16 == enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    v39 = v8;
    v17 = sub_5747C();
    sub_573FC();

    v18 = objc_allocWithZone(CNPhoneNumber);
    v19 = sub_5774C();

    v20 = [v18 initWithStringValue:v19];

    [objc_allocWithZone(CNLabeledValue) initWithLabel:0 value:v20];
    v21 = [v14 phoneNumbers];
    sub_2AFC(&qword_72B08, "Bq");
    v22 = sub_5784C();

    v41 = v22;
    sub_5782C();
    if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v36 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
      sub_5786C();
    }

    sub_5787C();
    isa = sub_5783C().super.isa;

    [v14 setPhoneNumbers:isa];

    v8 = v39;
  }

  else if (v16 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
  {
    v24 = sub_5747C();
    sub_573FC();

    v25 = sub_5774C();

    [objc_allocWithZone(CNLabeledValue) initWithLabel:0 value:v25];

    v26 = [v14 emailAddresses];
    sub_2AFC(&qword_72B08, "Bq");
    v27 = sub_5784C();

    v41 = v27;
    sub_5782C();
    if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v37 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
      sub_5786C();
    }

    sub_5787C();
    v28 = sub_5783C().super.isa;

    [v14 setEmailAddresses:v28];
  }

  else if (v16 != enum case for _CommunicationHandle.Kind.custom(_:))
  {
    (*(v10 + 8))(v13, v9);
  }

  sub_5745C();
  if (v29)
  {

    sub_5601C();

    (*(v5 + 56))(v3, 0, 1, v4);
    (*(v5 + 32))(v8, v3, v4);
    sub_253F4();
    (*(v5 + 8))(v8, v4);
  }

  v30 = sub_5742C();
  if (v31 >> 60 != 15)
  {
    v32 = v30;
    v33 = v31;
    v34 = sub_560EC().super.isa;
    [v14 setImageData:v34];

    sub_12F8C(v32, v33);
  }

  [v14 copy];
  sub_579CC();

  swift_unknownObjectRelease();
  sub_22730();
  swift_dynamicCast();
  return v40;
}