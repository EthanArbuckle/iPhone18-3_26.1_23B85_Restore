uint64_t sub_250C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0090;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000017;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000017, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000017;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_251318(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v60 = a5;
  v59 = a4;
  v66 = a2;
  v67 = a3;
  v8 = sub_2CE000();
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2CDFD0();
  v68 = *(v70 - 8);
  v12 = *(v68 + 64);
  v13 = __chkstk_darwin(v70);
  v14 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v57 - v15;
  v75 = a1;
  v16 = sub_2CC8E0();

  sub_2CBC60();
  sub_35E0(&v73, v74);
  sub_2CBE60();
  sub_306C(&v73);
  v17 = sub_2CC8D0();

  if (v17)
  {
    v72 = v16;
    *&v71 = v17;
    sub_2CC230();
    v18 = sub_2CC210();
    sub_270DC4(&v71, v18, v19, &v73);

    sub_30B8(&v73, &qword_34CEA0, &qword_2D0FC0);
  }

  v63 = v11;
  v65 = v8;
  v72 = &type metadata for Bool;
  LOBYTE(v71) = v17 != 0;
  sub_2CC230();
  v20 = sub_2CC200();
  sub_270DC4(&v71, v20, v21, &v73);

  sub_30B8(&v73, &qword_34CEA0, &qword_2D0FC0);
  v22 = v6[5];
  v61 = v6[4];
  v57 = v6[6];
  v62 = v75;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v23 = qword_35F760;
  v24 = v69;
  sub_2CDFB0();
  v25 = v68;
  v26 = v70;
  (*(v68 + 16))(v14, v24, v70);
  v27 = (*(v25 + 80) + 33) & ~*(v25 + 80);
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = "catServiceExecute";
  *(v29 + 24) = 17;
  *(v29 + 32) = 2;
  (*(v25 + 32))(v29 + v27, v14, v26);
  v30 = (v29 + v28);
  v31 = v60;
  *v30 = v59;
  v30[1] = v31;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2D0E40;
  *(v32 + 56) = &type metadata for String;
  v33 = sub_1087C();
  v60 = v22;
  *(v32 + 32) = v22;
  v34 = v57;
  *(v32 + 40) = v57;
  *(v32 + 96) = &type metadata for String;
  *(v32 + 104) = v33;
  *(v32 + 64) = v33;
  *(v32 + 72) = 0xD000000000000014;
  *(v32 + 80) = 0x80000000002E0070;

  v56 = v32;
  LOBYTE(v55) = 2;
  v54 = 125;
  sub_2CDF90();

  v35 = swift_allocObject();
  *(v35 + 16) = sub_13D80;
  *(v35 + 24) = v29;
  v58 = v35;
  v36 = qword_34BF58;
  v59 = v29;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = v65;
  v38 = sub_3ED0(v65, static Logger.default);
  swift_beginAccess();
  v40 = v63;
  v39 = v64;
  (*(v64 + 16))(v63, v38, v37);

  v41 = sub_2CDFE0();
  v42 = sub_2CE660();

  v43 = v34;
  if (os_log_type_enabled(v41, v42))
  {
    v44 = swift_slowAlloc();
    *&v71 = swift_slowAlloc();
    *v44 = 136315394;
    v45 = v60;
    *(v44 + 4) = sub_3F08(v60, v43, &v71);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_3F08(0xD000000000000014, 0x80000000002E0070, &v71);
    _os_log_impl(&dword_0, v41, v42, "Evaluating CAT family:%s id:%s...", v44, 0x16u);
    swift_arrayDestroy();

    (*(v39 + 8))(v40, v37);
  }

  else
  {

    (*(v39 + 8))(v40, v37);
    v45 = v60;
  }

  *&v71 = v45;
  *(&v71 + 1) = v43;

  v76._countAndFlagsBits = 35;
  v76._object = 0xE100000000000000;
  sub_2CE350(v76);
  v77._countAndFlagsBits = 0xD000000000000014;
  v77._object = 0x80000000002E0070;
  sub_2CE350(v77);
  v46 = v71;
  v47 = sub_2CB460();
  if (!v47)
  {
    sub_2CB180();
    v47 = sub_2CB170();
  }

  v48 = v47;
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = sub_13DB4;
  v49[4] = v58;
  v50 = sub_2CB180();
  __chkstk_darwin(v50);
  v51 = v62;
  *(&v57 - 10) = v61;
  *(&v57 - 9) = v51;
  v52 = v67;
  *(&v57 - 8) = v66;
  *(&v57 - 7) = v52;
  *(&v57 - 6) = 0;
  *(&v57 - 5) = v46;
  v54 = *(&v46 + 1);
  v55 = sub_3E06C;
  v56 = v49;

  sub_2CB0F0();

  return (*(v68 + 8))(v69, v70);
}

uint64_t sub_251B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_252194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC030;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001DLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001DLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001DLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_252818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0020;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002BLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_252E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v53 = a1;
  v5 = sub_2CE000();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v15 = v3[5];
  v51 = v3[4];
  v16 = v3[6];
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v56 = v14;
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v47 = v9;
  v21 = *(v9 + 32);
  v54 = v8;
  v21(v20 + v18, v12);
  v22 = (v20 + v19);
  *v22 = v48;
  v22[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v48 = v15;
  *(v23 + 32) = v15;
  *(v23 + 40) = v16;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x704F746F6E6E6143;
  *(v23 + 80) = 0xEF7070416E4F6E65;

  v45 = v23;
  LOBYTE(v44) = 2;
  v43 = 125;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D7C;
  *(v25 + 24) = v20;
  v46[0] = v25;
  v26 = qword_34BF58;
  v46[1] = v20;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v50;
  v28 = sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v29 = v49;
  v30 = v55;
  (*(v49 + 16))(v55, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v48;
    *(v33 + 4) = sub_3F08(v48, v16, &v57);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x704F746F6E6E6143, 0xEF7070416E4F6E65, &v57);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v55, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v34 = v48;
  }

  v57 = v34;
  v58 = v16;

  v61._countAndFlagsBits = 35;
  v61._object = 0xE100000000000000;
  sub_2CE350(v61);
  v62._countAndFlagsBits = 0x704F746F6E6E6143;
  v62._object = 0xEF7070416E4F6E65;
  sub_2CE350(v62);
  v36 = v57;
  v35 = v58;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13D84;
  v39[4] = v46[0];
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v52;
  v46[-10] = v51;
  v46[-9] = v41;
  v46[-8] = v53;
  v46[-7] = v59;
  v46[-6] = 0;
  v46[-5] = v36;
  v43 = v35;
  v44 = sub_3E010;
  v45 = v39;

  sub_2CB0F0();

  (*(v47 + 8))(v56, v54);
  return sub_30B8(v59, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_253564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253624@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v81 = a1;
  v82 = a2;
  v2 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v75 = &v67 - v4;
  v5 = sub_2CD490();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  v7 = __chkstk_darwin(v5);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v67 - v9;
  v79 = sub_2CA870();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v79);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v74 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v72 = &v67 - v20;
  v21 = __chkstk_darwin(v19);
  v69 = &v67 - v22;
  v23 = __chkstk_darwin(v21);
  v68 = &v67 - v24;
  v25 = __chkstk_darwin(v23);
  v70 = &v67 - v26;
  v27 = __chkstk_darwin(v25);
  v71 = &v67 - v28;
  __chkstk_darwin(v27);
  v30 = &v67 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v80 = v15[2];
  v80(v30, v31, v14);
  v32 = sub_2CDFE0();
  v33 = sub_2CE670();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "CommonNeedsConfirmationStrategy#actionForInput...", v34, 2u);
  }

  v35 = v15[1];
  v36 = v14;
  v35(v30, v14);
  sub_2CA790();
  v37 = sub_D1D64(v13, &v83);
  (*(v10 + 8))(v13, v79, v37);
  if (v84)
  {
    sub_F338(&v83, v85);
    sub_35E0(v85, v85[3]);
    v38 = v75;
    sub_2CD480();
    v40 = v77;
    v39 = v78;
    if ((*(v77 + 48))(v38, 1, v78) == 1)
    {
      sub_30B8(v38, &qword_34CCE8, &unk_2D0E20);
      v41 = v72;
      v80(v72, v31, v14);
      v42 = sub_2CDFE0();
      v43 = sub_2CE680();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "CommonNeedsConfirmationStrategy#actionForInput unable to get confirmation state from intent, ignoring...", v44, 2u);
      }

      v35(v41, v14);
      sub_2C9CF0();
      return sub_306C(v85);
    }

    v50 = v76;
    (*(v40 + 32))(v76, v38, v39);
    v51 = v73;
    (*(v40 + 16))(v73, v50, v39);
    v52 = (*(v40 + 88))(v51, v39);
    if (v52 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v80(v71, v31, v36);
      v53 = sub_2CDFE0();
      v54 = sub_2CE690();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_0, v53, v54, "CommonNeedsConfirmationStrategy#actionForInput request is confirmed", v55, 2u);
      }

      v56 = &v87;
    }

    else
    {
      if (v52 != enum case for CommonAudio.Confirmation.no(_:))
      {
        if (v52 != enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v80(v69, v31, v36);
          v63 = sub_2CDFE0();
          v64 = sub_2CE680();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_0, v63, v64, "CommonNeedsConfirmationStrategy#actionForInput no valid confirmation in the intent, ignoring", v65, 2u);
          }

          v35(v69, v36);
          sub_2C9CF0();
          v66 = *(v40 + 8);
          v66(v76, v39);
          v66(v73, v39);
          return sub_306C(v85);
        }

        v80(v68, v31, v36);
        v60 = sub_2CDFE0();
        v61 = sub_2CE690();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_0, v60, v61, "CommonNeedsConfirmationStrategy#actionForInput request is cancelled", v62, 2u);
        }

        v35(v68, v36);
        sub_2C9CD0();
        goto LABEL_22;
      }

      v80(v70, v31, v36);
      v57 = sub_2CDFE0();
      v58 = sub_2CE690();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_0, v57, v58, "CommonNeedsConfirmationStrategy#actionForInput request is rejected", v59, 2u);
      }

      v56 = &v86;
    }

    v35(*(v56 - 32), v36);
    sub_2C9CE0();
LABEL_22:
    (*(v40 + 8))(v76, v39);
    return sub_306C(v85);
  }

  sub_30B8(&v83, &qword_34CCF0, &unk_2D1270);
  v45 = v74;
  v80(v74, v31, v14);
  v46 = sub_2CDFE0();
  v47 = sub_2CE680();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "CommonNeedsConfirmationStrategy#actionForInput unable to make confirmation intent from parse, ignoring...", v48, 2u);
  }

  v35(v45, v36);
  return sub_2C9CF0();
}

uint64_t sub_254018(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v50 = a6;
  v51 = a1;
  v12 = *v7;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v48 = v12;
    v24 = v23;
    v54 = v23;
    *v22 = 136446210;
    v25 = sub_2CCCA0();
    v46 = v13;
    v47 = a3;
    v27 = v14;
    v28 = a5;
    v29 = sub_3F08(v25, v26, &v54);
    a3 = v47;

    *(v22 + 4) = v29;
    a5 = v28;
    _os_log_impl(&dword_0, v19, v20, "CommonNeedsConfirmationStrategy#confirmationOutputContext... Insights:%{public}s", v22, 0xCu);
    sub_306C(v24);
    v12 = v48;

    a4 = v49;

    (*(v27 + 8))(v17, v46);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v30 = *(v12 + 80);
  v31 = *(v12 + 88);
  type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v32 = swift_allocBox();
  sub_2546BC(v33);
  v34 = v52;
  v49 = *(v52 + 208);
  sub_20410(&qword_34F2A8, &qword_2D4990);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2D10E0;
  v36 = swift_allocObject();
  v37 = v51;
  v36[2] = v34;
  v36[3] = v37;
  v36[4] = a4;
  v36[5] = a5;
  v36[6] = a3;
  v36[7] = a2;
  v36[8] = v32;
  *(v35 + 32) = sub_25F75C;
  *(v35 + 40) = v36;
  v38 = swift_allocObject();
  v38[2] = v34;
  v38[3] = v37;
  v38[4] = a2;
  v38[5] = a3;
  v38[6] = a4;
  v38[7] = a5;
  v38[8] = v32;
  *(v35 + 48) = sub_25F774;
  *(v35 + 56) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v35 + 64) = sub_25F7A8;
  *(v35 + 72) = v39;
  v40 = swift_allocObject();
  v40[2] = v30;
  v40[3] = v31;
  v41 = v50;
  v40[4] = v32;
  v40[5] = v41;
  v40[6] = v53;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v42 = a3;
  v43 = a2;
  v44 = v42;

  sub_2CCC70();
}

uint64_t sub_254468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v27 = a5;
  v28 = a6;
  v29 = a3;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "CommonNeedsConfirmationStrategy#makeIntentCancelledByParameterRejectionResponse...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v20 = *(v7 + 16);
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  *(v21 + 16) = v29;
  *(v21 + 24) = a4;
  *(v21 + 32) = v7;
  *(v21 + 40) = a1;
  v24 = v27;
  *(v21 + 48) = a2;
  *(v21 + 56) = v24;
  *(v21 + 64) = v23;

  v25 = a2;

  sub_284914(a1, v22, a4, sub_25F748, v21);
}

uint64_t sub_2546BC@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v3 = v2[9];
  v4 = sub_2CD230();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[v2[10]] = 0;
  v5 = v2[11];
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[12];
  v8 = sub_2CA000();
  v9 = *(*(v8 - 8) + 56);

  return v9(&a1[v7], 1, 1, v8);
}

uint64_t sub_2547E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v94 = a8;
  v90 = a5;
  v92 = a4;
  v91 = a3;
  v95 = a1;
  v93 = a10;
  v14 = *a6;
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  __chkstk_darwin(v15 - 8);
  v81 = &v78 - v17;
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v89 = &v78 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v88 = &v78 - v23;
  v24 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v87 = (&v78 - v26);
  v86 = sub_2CCB30();
  v85 = *(v86 - 8);
  v27 = *(v85 + 64);
  __chkstk_darwin(v86);
  v83 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2CCAC0();
  v29 = *(v84 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v84);
  v82 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v79 = a6;
    v80 = a9;
    v81 = a7;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    (*(v33 + 16))(v36, v37, v32);
    v38 = v95;
    swift_errorRetain();
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    sub_1E1074(v38, 1);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v96[0] = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = sub_2CEEF0();
      v45 = v29;
      v46 = sub_3F08(v43, v44, v96);

      *(v41 + 4) = v46;
      v29 = v45;
      _os_log_impl(&dword_0, v39, v40, "CommonNeedsConfirmationStrategy#makePromptForConfirmation Error creating views: %s", v41, 0xCu);
      sub_306C(v42);
    }

    (*(v33 + 8))(v36, v32);
    v47 = v79;
    v48 = v82;
    v49 = v84;
    (*(v29 + 104))(v82, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v84);
    v50 = v85;
    v51 = v29;
    v52 = v83;
    v53 = v86;
    (*(v85 + 104))(v83, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v86);
    v54 = v95;
    swift_getErrorValue();
    sub_2CEEF0();
    v92 = sub_2CCAF0();
    v91 = v55;

    (*(v50 + 8))(v52, v53);
    (*(v51 + 8))(v48, v49);
    v56 = v47[17];
    v90 = sub_35E0(v47 + 13, v47[16]);
    v57 = enum case for ActivityType.failed(_:);
    v58 = sub_2C9C20();
    v59 = *(v58 - 8);
    v60 = v87;
    (*(v59 + 104))(v87, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = sub_2CA130();
    v62 = v88;
    (*(*(v61 - 8) + 56))(v88, 1, 1, v61);
    v63 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v64 = sub_2C98F0();
    v65 = *(v64 - 8);
    v66 = v89;
    (*(v65 + 104))(v89, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    sub_2CB4E0();

    sub_30B8(v66, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v62, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v60, &qword_34CB88, &unk_2D0D90);
    v96[0] = v54;
    v97 = 1;
    swift_errorRetain();
    (v80)(v96);
    return sub_30B8(v96, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v68 = v90;
    v87 = a6[2];
    v69 = v81;
    sub_F3F4(a11, v81, &unk_353020, &unk_2D0970);
    v70 = (*(v80 + 80) + 104) & ~*(v80 + 80);
    v71 = swift_allocObject();
    v71[2] = *(v14 + 80);
    v72 = v91;
    v71[3] = *(v14 + 88);
    v71[4] = v72;
    v73 = v92;
    v71[5] = v92;
    v71[6] = v68;
    v71[7] = a6;
    v71[8] = a7;
    v74 = v95;
    v71[9] = v94;
    v71[10] = a9;
    v71[11] = v93;
    v71[12] = v74;
    sub_14A58(v69, v71 + v70, &unk_353020, &unk_2D0970);
    v75 = (*v87 + 208);
    v89 = *v75;
    v88 = v75;
    sub_140154(v74, 0);

    v76 = v68;

    v77 = v94;

    (v89)(a7, v72, v73, v76, v77, sub_25F66C, v71);
  }
}

uint64_t sub_25521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9)
{
  v119 = a8;
  v117 = a7;
  v116 = a6;
  v112 = a5;
  v111 = a4;
  v110 = a3;
  v109 = a2;
  v105 = a1;
  v118 = a9;
  v100 = sub_2CCB20();
  v99 = *(v100 - 8);
  v9 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2CA910();
  v103 = *(v104 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v104);
  v108 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v101 - 8) + 64);
  v14 = __chkstk_darwin(v101);
  v102 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v107 = &v95 - v16;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v115 = &v95 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v114 = &v95 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v113 = &v95 - v25;
  v106 = sub_2CCB30();
  v26 = *(v106 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v106);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CCAC0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2CE000();
  v96 = *(v97 - 8);
  v35 = *(v96 + 64);
  __chkstk_darwin(v97);
  v37 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20410(&unk_3519A0, &qword_2D0980);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (&v95 - v40);
  sub_F3F4(v105, &v95 - v40, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v107 = v34;
    v105 = v29;
    v104 = v31;
    v108 = v30;
    v103 = v26;
    v42 = *v41;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = v97;
    v44 = sub_3ED0(v97, static Logger.default);
    swift_beginAccess();
    v45 = v96;
    (*(v96 + 16))(v37, v44, v43);
    swift_errorRetain();
    v46 = sub_2CDFE0();
    v47 = sub_2CE680();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v120 = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = sub_2CEEF0();
      v52 = sub_3F08(v50, v51, &v120);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_0, v46, v47, "CommonNeedsConfirmationStrategy#makePromptForConfirmation Error creating the confirmation prompt dialog: %s", v48, 0xCu);
      sub_306C(v49);
    }

    (*(v45 + 8))(v37, v43);
    v53 = v112;
    v54 = v106;
    v55 = v103;
    v56 = v104;
    v57 = v107;
    v58 = v108;
    (*(v104 + 104))(v107, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v108);
    v59 = v105;
    (*(v55 + 104))(v105, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v54);
    swift_getErrorValue();
    sub_2CEEF0();
    v112 = sub_2CCAF0();
    v111 = v60;

    (*(v55 + 8))(v59, v54);
    (*(v56 + 8))(v57, v58);
    v61 = v53[17];
    sub_35E0(v53 + 13, v53[16]);
    v62 = enum case for ActivityType.failed(_:);
    v63 = sub_2C9C20();
    v64 = *(v63 - 8);
    v65 = v113;
    (*(v64 + 104))(v113, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    v66 = sub_2CA130();
    v67 = v114;
    (*(*(v66 - 8) + 56))(v114, 1, 1, v66);
    v68 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v69 = sub_2C98F0();
    v70 = *(v69 - 8);
    v71 = v115;
    (*(v70 + 104))(v115, v68, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    sub_2CB4E0();

    sub_30B8(v71, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v67, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v65, &qword_34CB88, &unk_2D0D90);
    *&v120 = v42;
    v123 = 1;
    swift_errorRetain();
    v119(&v120);
  }

  else
  {
    sub_14A58(v41, v107, &qword_34C6E8, &unk_2D0FF0);
    sub_2CB5B0();
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    sub_2C9DE0();
    sub_30B8(&v120, &qword_34CC80, &qword_2D1520);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v30);
    v72 = v106;
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v106);
    v73 = v99;
    v74 = v98;
    v75 = v100;
    (*(v99 + 104))(v98, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v100);
    v111 = sub_2CCB00();
    (*(v73 + 8))(v74, v75);
    (*(v26 + 8))(v29, v72);
    (*(v31 + 8))(v34, v30);
    v76 = v112[17];
    v112 = sub_35E0(v112 + 13, v112[16]);
    v77 = enum case for ActivityType.confirmation(_:);
    v78 = sub_2C9C20();
    v79 = *(v78 - 8);
    v80 = v113;
    (*(v79 + 104))(v113, v77, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    v81 = v107;
    v82 = v102;
    sub_F3F4(v107, v102, &qword_34C6E8, &unk_2D0FF0);

    v83 = sub_2CA130();
    v84 = *(v83 - 8);
    v85 = v114;
    (*(v84 + 32))(v114, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    v86 = enum case for SiriKitReliabilityCodes.success(_:);
    v87 = sub_2C98F0();
    v88 = *(v87 - 8);
    v89 = v115;
    (*(v88 + 104))(v115, v86, v87);
    (*(v88 + 56))(v89, 0, 1, v87);
    sub_2CB4E0();

    sub_30B8(v89, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v85, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v80, &qword_34CB88, &unk_2D0D90);
    v90 = v104;
    *(&v121 + 1) = v104;
    v122 = &protocol witness table for AceOutput;
    v91 = sub_F390(&v120);
    v92 = v103;
    v93 = v108;
    (*(v103 + 16))(v91, v108, v90);
    v123 = 0;
    v119(&v120);
    (*(v92 + 8))(v93, v90);
    sub_30B8(v81, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v120, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_256110(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a1;
  v10 = *(*a2 + 88);
  v22 = *(*a2 + 80);
  v11 = v22;
  v12 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  (*(v13 + 16))(&v22 - v15, a1, v12);
  v17 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v11;
  *(v18 + 3) = v10;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  v19 = v24;
  *(v18 + 6) = a4;
  *(v18 + 7) = v19;
  *(v18 + 8) = v25;
  (*(v13 + 32))(&v18[v17], v16, v12);

  v20 = a4;

  sub_25E470(v23, sub_25F2C8, v18, v22, v10);
}

uint64_t sub_2562E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v128 = a7;
  v149 = a6;
  v150 = a5;
  v147 = a4;
  v146 = a3;
  v8 = *a2;
  v137 = a2;
  v127 = v8;
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v148 = &v122[-v11];
  v12 = sub_20410(&qword_34C820, &unk_2D0A30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v129 = &v122[-v14];
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v135 = &v122[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v132 = &v122[-v19];
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v134 = &v122[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v145 = &v122[-v24];
  v126 = sub_2CCB20();
  v125 = *(v126 - 8);
  v25 = *(v125 + 64);
  __chkstk_darwin(v126);
  v124 = &v122[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_2CCB30();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v142 = &v122[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_2CCAC0();
  v143 = *(v144 - 8);
  v31 = *(v143 + 64);
  __chkstk_darwin(v144);
  v141 = &v122[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_2CE000();
  v34 = *(v33 - 8);
  v35 = v34[8];
  v36 = __chkstk_darwin(v33);
  v133 = &v122[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v136 = &v122[-v39];
  __chkstk_darwin(v38);
  v41 = &v122[-v40];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v42 = sub_3ED0(v33, static Logger.default);
  swift_beginAccess();
  v43 = v34[2];
  v140 = v42;
  v139 = v34 + 2;
  v138 = v43;
  v43(v41, v42, v33);
  sub_F3F4(a1, v154, qword_34C798, &qword_2D0DA0);
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  v46 = os_log_type_enabled(v44, v45);
  v151 = a1;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v130 = v28;
    v48 = v47;
    v153 = swift_slowAlloc();
    *v48 = 136315394;
    v131 = v27;
    v123 = v45;
    sub_F3F4(v154, v152, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    v49 = sub_2CE2A0();
    v51 = v50;
    v27 = v131;
    sub_30B8(v154, qword_34C798, &qword_2D0DA0);
    v52 = sub_3F08(v49, v51, &v153);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2082;
    v53 = sub_2CCCA0();
    v55 = sub_3F08(v53, v54, &v153);
    a1 = v151;

    *(v48 + 14) = v55;
    _os_log_impl(&dword_0, v44, v123, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF returning final output: %s Insights:%{public}s", v48, 0x16u);
    swift_arrayDestroy();

    v28 = v130;
  }

  else
  {

    sub_30B8(v154, qword_34C798, &qword_2D0DA0);
  }

  v56 = v34[1];
  (v56)(v41, v33);
  sub_F3F4(a1, v154, qword_34C798, &qword_2D0DA0);
  if (v155)
  {
    v57 = v154[0];
    v58 = v136;
    v138(v136, v140, v33);
    swift_errorRetain();
    v59 = sub_2CDFE0();
    v60 = sub_2CE680();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v131 = v27;
      v62 = v61;
      v63 = swift_slowAlloc();
      v130 = v28;
      v154[0] = v63;
      *v62 = 136446466;
      v152[0] = v57;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v64 = sub_2CE2A0();
      v66 = sub_3F08(v64, v65, v154);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2082;
      v67 = sub_2CCCA0();
      v69 = sub_3F08(v67, v68, v154);

      *(v62 + 14) = v69;
      _os_log_impl(&dword_0, v59, v60, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF failed with error: %{public}s, Insights:%{public}s", v62, 0x16u);
      swift_arrayDestroy();
      v28 = v130;

      v27 = v131;

      v70 = v136;
    }

    else
    {

      v70 = v58;
    }

    (v56)(v70, v33);
    v91 = v143;
    v92 = v141;
    v93 = v144;
    (*(v143 + 104))(v141, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v144);
    v94 = v142;
    (*(v28 + 104))(v142, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v27);
    swift_getErrorValue();
    sub_2CEEF0();
    v140 = sub_2CCAE0();

    (*(v28 + 8))(v94, v27);
    (*(v91 + 8))(v92, v93);
    v95 = v137[17];
    sub_35E0(v137 + 13, v137[16]);
    v145 = v57;
    v96 = enum case for ActivityType.failed(_:);
    v97 = sub_2C9C20();
    v98 = *(v97 - 8);
    v99 = v134;
    (*(v98 + 104))(v134, v96, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    v100 = sub_2CA130();
    v101 = v135;
    (*(*(v100 - 8) + 56))(v135, 1, 1, v100);
    v102 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v103 = sub_2C98F0();
    v104 = *(v103 - 8);
    v105 = v148;
    (*(v104 + 104))(v148, v102, v103);
    (*(v104 + 56))(v105, 0, 1, v103);
    sub_2CB4E0();

    sub_30B8(v105, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v101, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v99, &qword_34CB88, &unk_2D0D90);
    v150(v151);
  }

  else
  {
    v136 = v34;
    v135 = v56;
    sub_30B8(v154, qword_34C798, &qword_2D0DA0);
    v71 = v143;
    v72 = v141;
    v73 = v144;
    (*(v143 + 104))(v141, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v144);
    v74 = v124;
    v75 = v142;
    (*(v28 + 104))(v142, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v27);
    v76 = v125;
    v77 = v126;
    (*(v125 + 104))(v74, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v126);
    v131 = sub_2CCAD0();
    v134 = v78;
    (*(v76 + 8))(v74, v77);
    (*(v28 + 8))(v75, v27);
    (*(v71 + 8))(v72, v73);
    sub_EEAC((v137 + 13), v154);
    sub_35E0(v154, v154[3]);
    v79 = enum case for ActivityType.showInterstitial(_:);
    v80 = sub_2C9C20();
    v81 = *(v80 - 8);
    v82 = v145;
    (*(v81 + 104))(v145, v79, v80);
    (*(v81 + 56))(v82, 0, 1, v80);
    v83 = *(v127 + 80);
    v84 = *(v127 + 88);
    v85 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
    v86 = v129;
    sub_F3F4(v128 + *(v85 + 44), v129, &qword_34C820, &unk_2D0A30);
    v87 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    v88 = v33;
    if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
    {
      sub_30B8(v86, &qword_34C820, &unk_2D0A30);
      v89 = sub_2CA130();
      v90 = v132;
      (*(*(v89 - 8) + 56))(v132, 1, 1, v89);
    }

    else
    {

      v107 = sub_2CA130();
      v108 = *(v107 - 8);
      v90 = v132;
      (*(v108 + 32))(v132, v86, v107);
      (*(v108 + 56))(v90, 0, 1, v107);
    }

    v109 = enum case for SiriKitReliabilityCodes.success(_:);
    v110 = sub_2C98F0();
    v111 = *(v110 - 8);
    v112 = v148;
    (*(v111 + 104))(v148, v109, v110);
    (*(v111 + 56))(v112, 0, 1, v110);
    v113 = v145;
    sub_2CB4E0();

    sub_30B8(v112, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v90, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v113, &qword_34CB88, &unk_2D0D90);
    sub_306C(v154);
    v114 = v133;
    v138(v133, v140, v88);
    v115 = sub_2CDFE0();
    v116 = sub_2CE670();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v154[0] = v118;
      *v117 = 136446210;
      v119 = sub_2CCCA0();
      v121 = sub_3F08(v119, v120, v154);

      *(v117 + 4) = v121;
      _os_log_impl(&dword_0, v115, v116, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF completed successfully. Insights:%{public}s", v117, 0xCu);
      sub_306C(v118);
    }

    (v135)(v114, v88);
    return (v150)(v151);
  }
}

uint64_t sub_25750C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20410(&qword_34C820, &unk_2D0A30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_2CB260();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  sub_F3F4(a2 + *(v13 + 48), v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a2 + *(v13 + 44), v6, &qword_34C820, &unk_2D0A30);
  v14 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_30B8(v6, &qword_34C820, &unk_2D0A30);
  }

  else
  {
    v15 = *&v6[*(v14 + 48)];
    v16 = [v15 catId];

    sub_2CE270();
    v17 = sub_2CA130();
    (*(*(v17 - 8) + 8))(v6, v17);
  }

  sub_2CA590();
  sub_2CA5F0();
  return sub_2CA5A0();
}

uint64_t sub_2577D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_2577F4, 0, 0);
}

uint64_t sub_2577F4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_2CA080();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[11] = sub_2CA070();
  v6 = sub_2CD230();
  v0[5] = v6;
  v0[6] = sub_25F700(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v7 = sub_F390(v0 + 2);
  (*(*(v6 - 8) + 16))(v7, v1, v6);
  sub_20410(&unk_351900, &unk_2D0960);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = xmmword_2D0770;
  *(v8 + 32) = v2;
  v9 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
  v15 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v10 = v2;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_25799C;
  v12 = v0[10];
  v13 = v0[7];

  return v15(v13, v0 + 2, v8, v12);
}

uint64_t sub_25799C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v7 = *v0;

  sub_306C((v1 + 16));
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_257ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_257B00, 0, 0);
}

uint64_t sub_257B00()
{
  v1 = v0[3];
  v2 = sub_2CA080();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[5] = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = xmmword_2D0770;
  *(v5 + 32) = v1;
  v6 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v12 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v7 = v1;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_257C24;
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v5, v9);
}

uint64_t sub_257C24()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_257D54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_257D74, 0, 0);
}

uint64_t sub_257D74()
{
  v1 = sub_2CA080();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[4] = sub_2CA070();
  v4 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v9 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_257E48;
  v6 = v0[2];
  v7 = v0[3];

  return (v9)(v6, _swiftEmptyArrayStorage, v7);
}

uint64_t sub_257E48()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_257F5C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a2;
  v14 = *a1;
  v15 = a1[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = a2[2];
  v18 = swift_allocObject();
  v18[2] = *(v13 + 80);
  v18[3] = *(v13 + 88);
  v18[4] = sub_CEEA8;
  v18[5] = v16;
  v18[6] = a8;
  v19 = *(*v17 + 208);

  v19(a3, a4, a5, a6, a7, sub_25F848, v18);
}

uint64_t sub_2580AC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v19 = a2;
  v3 = sub_20410(&qword_34C820, &unk_2D0A30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v12 = swift_projectBox();
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v10;
    swift_beginAccess();
    v14 = *(v11 + 40);
    v15 = *(v12 + v14);
    *(v12 + v14) = v13;
  }

  else
  {
    sub_14A58(v10, v6, &qword_34C6E8, &unk_2D0FF0);
    v17 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    swift_beginAccess();
    v16 = sub_FECE8(v6, v12 + *(v11 + 44), &qword_34C820, &unk_2D0A30);
  }

  return v19(v16);
}

uint64_t sub_2582CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a2;
  v14 = *a1;
  v15 = a1[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = a2[19];
  v18 = swift_allocObject();
  v18[2] = *(v13 + 80);
  v18[3] = *(v13 + 88);
  v18[4] = sub_CE4A8;
  v18[5] = v16;
  v18[6] = a8;

  sub_24CD8(a3, a4, a5, a6, a7, sub_25F7C0, v18);
}

uint64_t sub_2583FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = sub_25F7D8(a1, v5 + *(v4 + 36));
  return a2(v6);
}

uint64_t sub_258488(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v13 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v14 = swift_projectBox();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_B70E0(v8);
  swift_beginAccess();
  v15 = sub_FECE8(v8, v14 + *(v13 + 48), &unk_353020, &unk_2D0970);
  return v9(v15);
}

uint64_t sub_258604(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v34 = a3;
  v33 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v7 = &v28 - v6;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v14, v8);

  v15 = v8;
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  v32 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v18 = 136446466;
    swift_beginAccess();
    v19 = *(v4 + 16);
    v30 = v15;
    v20 = v33;
    v19(v7, v13, v33);
    v21 = sub_2CE2A0();
    v31 = a2;
    v23 = sub_3F08(v21, v22, v35);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    v24 = sub_2CCCA0();
    v26 = sub_3F08(v24, v25, v35);
    a2 = v31;

    *(v18 + 14) = v26;
    _os_log_impl(&dword_0, v16, v32, "CommonNeedsConfirmationStrategy#confirmationOutputContext created output context:  %{public}s Insights:%{public}s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v12, v30);
  }

  else
  {

    (*(v9 + 8))(v12, v15);
    v20 = v33;
  }

  swift_beginAccess();
  (*(v4 + 16))(v7, v13, v20);
  a2(v7);
  return (*(v4 + 8))(v7, v20);
}

uint64_t sub_2589C4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v111 = a7;
  v112 = a8;
  v109 = a5;
  v110 = a6;
  v114 = a4;
  v103 = a3;
  v104 = a2;
  v102 = a1;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v100 = &v95 - v10;
  v98 = sub_2CCB20();
  v97 = *(v98 - 8);
  v11 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v105 - 8) + 64);
  v14 = __chkstk_darwin(v105);
  v99 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v95 - v16;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v108 = &v95 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v107 = &v95 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v106 = &v95 - v25;
  v26 = sub_2CE000();
  v115 = *(v26 - 8);
  v116 = v26;
  v27 = *(v115 + 64);
  v28 = __chkstk_darwin(v26);
  v101 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v95 - v30;
  v31 = sub_2CCB30();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2CCAC0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20410(&unk_3519A0, &qword_2D0980);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = (&v95 - v43);
  sub_F3F4(v102, &v95 - v43, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v44;
    (*(v37 + 104))(v40, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v36);
    (*(v32 + 104))(v35, enum case for AdditionalMetricsDescription.SourceFunction.cnclParamRejResp(_:), v31);
    swift_getErrorValue();
    sub_2CEEF0();
    v105 = sub_2CCAF0();
    v113 = v46;

    (*(v32 + 8))(v35, v31);
    (*(v37 + 8))(v40, v36);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v47 = v116;
    v48 = sub_3ED0(v116, static Logger.default);
    swift_beginAccess();
    v49 = v95;
    (*(v115 + 16))(v95, v48, v47);
    v50 = sub_2CDFE0();
    v51 = sub_2CE680();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "CommonNeedsConfirmationStrategy#makeIntentCancelledByParameterRejectionResponse rejected parameter failure", v52, 2u);
    }

    (*(v115 + 8))(v49, v116);
    v53 = v114[17];
    sub_35E0(v114 + 13, v114[16]);
    v54 = enum case for ActivityType.failed(_:);
    v55 = sub_2C9C20();
    v56 = *(v55 - 8);
    v57 = v106;
    (*(v56 + 104))(v106, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    v58 = sub_2CA130();
    v59 = v107;
    (*(*(v58 - 8) + 56))(v107, 1, 1, v58);
    v60 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v61 = sub_2C98F0();
    v62 = *(v61 - 8);
    v63 = v108;
    (*(v62 + 104))(v108, v60, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    sub_2CB4E0();

    sub_30B8(v63, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v59, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v57, &qword_34CB88, &unk_2D0D90);
    v117[0] = v45;
    v118 = 1;
    swift_errorRetain();
    v111(v117);

    return sub_30B8(v117, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v65 = v40;
    v102 = v31;
    sub_14A58(v44, v113, &qword_34C6E8, &unk_2D0FF0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v66 = v116;
    v67 = sub_3ED0(v116, static Logger.default);
    swift_beginAccess();
    (*(v115 + 16))(v101, v67, v66);
    v68 = sub_2CDFE0();
    v69 = sub_2CE670();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "CommonNeedsConfirmationStrategy#makeIntentCancelledByParameterRejectionResponse rejected parameter success", v70, 2u);
    }

    (*(v115 + 8))(v101, v116);
    (*(v37 + 104))(v65, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v36);
    v71 = v102;
    (*(v32 + 104))(v35, enum case for AdditionalMetricsDescription.SourceFunction.cnclParamRejResp(_:), v102);
    v72 = v97;
    v73 = v96;
    v74 = v98;
    (*(v97 + 104))(v96, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v98);
    v75 = sub_2CCB00();
    v115 = v76;
    v116 = v75;
    (*(v72 + 8))(v73, v74);
    (*(v32 + 8))(v35, v71);
    (*(v37 + 8))(v65, v36);
    v77 = v114[16];
    v103 = v114[17];
    v104 = sub_35E0(v114 + 13, v77);
    v78 = enum case for ActivityType.completed(_:);
    v79 = sub_2C9C20();
    v80 = *(v79 - 8);
    v81 = v106;
    (*(v80 + 104))(v106, v78, v79);
    (*(v80 + 56))(v81, 0, 1, v79);
    v82 = v99;
    sub_F3F4(v113, v99, &qword_34C6E8, &unk_2D0FF0);

    v83 = sub_2CA130();
    v84 = *(v83 - 8);
    v85 = v107;
    (*(v84 + 32))(v107, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    v86 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
    v87 = sub_2C98F0();
    v88 = *(v87 - 8);
    v89 = v108;
    (*(v88 + 104))(v108, v86, v87);
    (*(v88 + 56))(v89, 0, 1, v87);
    sub_2CB4E0();

    sub_30B8(v89, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v85, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v81, &qword_34CB88, &unk_2D0D90);
    v90 = v113;
    v91 = v114[25];
    sub_F3F4(v113, v82, &qword_34C6E8, &unk_2D0FF0);
    v92 = *(v82 + *(v105 + 48));
    v93 = sub_2CA000();
    v94 = v100;
    (*(*(v93 - 8) + 56))(v100, 1, 1, v93);
    sub_1C2330(v82, v92, v94, v111, v112);

    sub_30B8(v94, &unk_353020, &unk_2D0970);
    sub_30B8(v90, &qword_34C6E8, &unk_2D0FF0);
    return (*(v84 + 8))(v82, v83);
  }
}

uint64_t sub_259884()
{
  sub_18781C();

  return swift_deallocClassInstance();
}

uint64_t sub_2598F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 80);
  v18 = *(a6 + 88);
  v19 = type metadata accessor for CommonNeedsConfirmationStrategy();
  *v16 = v7;
  v16[1] = sub_E664;

  return NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v19, a7);
}

uint64_t sub_259A08(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v13 = *(a10 + 80);
  v15 = *(a10 + 88);
  return sub_25A084(a2, a3, a4, a6, a7, a8, a9);
}

uint64_t sub_259B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20 = *(a10 + 80);
  v21 = *(a10 + 88);
  v24 = type metadata accessor for CommonNeedsConfirmationStrategy();

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v24, a11);
}

uint64_t sub_259C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19 = *(a9 + 80);
  v20 = *(a9 + 88);
  v23 = type metadata accessor for CommonNeedsConfirmationStrategy();

  return a11(a1, a2, a3, a4, a5, a6, a7, a8, v23, a10);
}

uint64_t sub_259D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 + 80);
  v16 = *(a7 + 88);
  v17 = type metadata accessor for CommonNeedsConfirmationStrategy();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_259DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a8 + 80);
  v17 = *(a8 + 88);
  v18 = type metadata accessor for CommonNeedsConfirmationStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v18, a9);
}

uint64_t sub_259E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 80);
  v18 = *(a6 + 88);
  v19 = type metadata accessor for CommonNeedsConfirmationStrategy();
  *v16 = v7;
  v16[1] = sub_24C84;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v19, a7);
}

uint64_t sub_259F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = *(a7 + 80);
  v20 = *(a7 + 88);
  v21 = type metadata accessor for CommonNeedsConfirmationStrategy();
  *v18 = v15;
  v18[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v21, a8);
}

uint64_t sub_25A084(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v432 = a7;
  v433 = a6;
  v428 = a5;
  v412 = a4;
  v419 = a3;
  v424 = a2;
  v409 = a1;
  v7 = sub_20410(&qword_34CC98, &unk_2D3120);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v371 = &v370 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v413 = &v370 - v11;
  v405 = sub_2CE0A0();
  v403 = *(v405 - 8);
  v12 = *(v403 + 64);
  __chkstk_darwin(v405);
  v402 = &v370 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2CA540();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v430 = sub_2CEFA0();
  v431 = *(v430 - 8);
  v14 = *(v431 + 64);
  __chkstk_darwin(v430);
  v429 = (&v370 - v15);
  v425 = sub_2CA360();
  v423 = *(v425 - 8);
  v16 = *(v423 + 64);
  __chkstk_darwin(v425);
  v404 = &v370 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v406 = sub_20410(&qword_355F20, &qword_2D8378);
  v18 = *(*(v406 - 8) + 64);
  v19 = __chkstk_darwin(v406);
  v399 = &v370 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v397 = &v370 - v22;
  v23 = __chkstk_darwin(v21);
  v396 = &v370 - v24;
  v25 = __chkstk_darwin(v23);
  v398 = &v370 - v26;
  v27 = __chkstk_darwin(v25);
  v393 = &v370 - v28;
  v29 = __chkstk_darwin(v27);
  v395 = &v370 - v30;
  v31 = __chkstk_darwin(v29);
  v394 = &v370 - v32;
  __chkstk_darwin(v31);
  v392 = &v370 - v33;
  v418 = sub_2C9900();
  v421 = *(v418 - 8);
  v34 = *(v421 + 64);
  v35 = __chkstk_darwin(v418);
  v420 = &v370 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v417 = &v370 - v37;
  v38 = sub_20410(qword_34F2C8, &unk_2D3070);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v407 = &v370 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v379 = &v370 - v43;
  v44 = __chkstk_darwin(v42);
  v391 = &v370 - v45;
  v46 = __chkstk_darwin(v44);
  v378 = &v370 - v47;
  v48 = __chkstk_darwin(v46);
  v390 = &v370 - v49;
  v50 = __chkstk_darwin(v48);
  v377 = &v370 - v51;
  v52 = __chkstk_darwin(v50);
  v389 = &v370 - v53;
  v54 = __chkstk_darwin(v52);
  v376 = &v370 - v55;
  v56 = __chkstk_darwin(v54);
  v415 = &v370 - v57;
  v58 = __chkstk_darwin(v56);
  v375 = &v370 - v59;
  v60 = __chkstk_darwin(v58);
  v388 = &v370 - v61;
  v62 = __chkstk_darwin(v60);
  v374 = &v370 - v63;
  v64 = __chkstk_darwin(v62);
  v401 = &v370 - v65;
  v66 = __chkstk_darwin(v64);
  v373 = &v370 - v67;
  v68 = __chkstk_darwin(v66);
  v414 = &v370 - v69;
  v70 = __chkstk_darwin(v68);
  v372 = &v370 - v71;
  v72 = __chkstk_darwin(v70);
  v400 = &v370 - v73;
  __chkstk_darwin(v72);
  v422 = &v370 - v74;
  v75 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75 - 8);
  v78 = &v370 - v77;
  v427 = sub_2CD490();
  v437 = *(v427 - 8);
  v79 = *(v437 + 64);
  v80 = __chkstk_darwin(v427);
  v416 = &v370 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v426 = &v370 - v82;
  v83 = sub_2CA870();
  v84 = *(v83 - 8);
  v85 = *(v84 + 64);
  __chkstk_darwin(v83);
  v87 = &v370 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2CE000();
  v89 = *(v88 - 8);
  v90 = v89[8];
  v91 = __chkstk_darwin(v88);
  v93 = &v370 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __chkstk_darwin(v91);
  v411 = &v370 - v95;
  v96 = __chkstk_darwin(v94);
  v387 = &v370 - v97;
  v98 = __chkstk_darwin(v96);
  v386 = &v370 - v99;
  v100 = __chkstk_darwin(v98);
  v385 = &v370 - v101;
  v102 = __chkstk_darwin(v100);
  v384 = &v370 - v103;
  v104 = __chkstk_darwin(v102);
  v382 = &v370 - v105;
  v106 = __chkstk_darwin(v104);
  v381 = &v370 - v107;
  v108 = __chkstk_darwin(v106);
  v383 = &v370 - v109;
  v110 = __chkstk_darwin(v108);
  v380 = &v370 - v111;
  v112 = __chkstk_darwin(v110);
  v410 = &v370 - v113;
  __chkstk_darwin(v112);
  v115 = &v370 - v114;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v116 = sub_3ED0(v88, static Logger.default);
  swift_beginAccess();
  v117 = v89[2];
  v434 = v116;
  v435 = v117;
  v436 = v89 + 2;
  v117(v115, v116, v88);
  v118 = sub_2CDFE0();
  v119 = sub_2CE670();
  v120 = os_log_type_enabled(v118, v119);
  v438 = v88;
  if (v120)
  {
    v121 = swift_slowAlloc();
    *v121 = 0;
    _os_log_impl(&dword_0, v118, v119, "CommonNeedsConfirmationStrategy#parseConfirmationResponse...", v121, 2u);
    v88 = v438;
  }

  v124 = v89[1];
  v122 = v89 + 1;
  v123 = v124;
  v124(v115, v88);
  sub_2CA790();
  v125 = sub_D1D64(v87, &v440);
  (*(v84 + 8))(v87, v83, v125);
  if (!v441)
  {
    sub_30B8(&v440, &qword_34CCF0, &unk_2D1270);
    goto LABEL_9;
  }

  v428 = v122;
  sub_F338(&v440, v442);
  sub_35E0(v442, v442[3]);
  sub_2CD480();
  v126 = v427;
  if ((*(v437 + 48))(v78, 1, v427) != 1)
  {
    v136 = v437;
    v137 = v426;
    (*(v437 + 32))(v426, v78, v126);
    v138 = v416;
    (*(v136 + 16))(v416, v137, v126);
    v139 = (*(v136 + 88))(v138, v126);
    if (v139 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v140 = v421;
      v141 = v417;
      v142 = v418;
      (*(v421 + 104))(v417, enum case for SiriKitConfirmationState.confirmed(_:), v418);
      v143 = v422;
      v144 = v425;
      v145 = v419;
      goto LABEL_19;
    }

    v143 = v422;
    v144 = v425;
    v145 = v419;
    v142 = v418;
    v140 = v421;
    v141 = v417;
    if (v139 == enum case for CommonAudio.Confirmation.no(_:))
    {
      v146 = &enum case for SiriKitConfirmationState.rejected(_:);
    }

    else
    {
      if (v139 != enum case for CommonAudio.Confirmation.cancel(_:))
      {
        v201 = enum case for CommonAudio.Confirmation.moreInfo(_:);
        v202 = v139;
        (*(v421 + 104))(v417, enum case for SiriKitConfirmationState.unset(_:), v418);
        v203 = v202 == v201;
        v140 = v421;
        v145 = v419;
        if (!v203)
        {
          (*(v437 + 8))(v138, v126);
        }

LABEL_19:
        v147 = v420;
        (*(v140 + 32))(v420, v141, v142);
        v148 = (*(v140 + 88))(v147, v142);
        if (v148 == enum case for SiriKitConfirmationState.confirmed(_:))
        {
          v149 = v423;
          v150 = v143;
          (*(v423 + 104))(v143, enum case for ConfirmationResponse.confirmed(_:), v144);
        }

        else
        {
          v150 = v143;
          if (v148 != enum case for SiriKitConfirmationState.rejected(_:))
          {
            v151 = *(v423 + 56);
            v151(v150, 1, 1, v144);
            (*(v140 + 8))(v420, v142);
LABEL_25:

            v152 = sub_2C5C50(v424, v145);
            if (v152 == 8)
            {
              v153 = v411;
              v154 = v438;
              v435(v411, v434, v438);

              v155 = sub_2CDFE0();
              v156 = sub_2CE680();

              if (os_log_type_enabled(v155, v156))
              {
                v157 = v145;
                v158 = swift_slowAlloc();
                v159 = swift_slowAlloc();
                *&v440 = v159;
                *v158 = 136315138;
                *(v158 + 4) = sub_3F08(v424, v157, &v440);
                _os_log_impl(&dword_0, v155, v156, "CommonNeedsConfirmationStrategy#parseConfirmationResponse unexpected parameter: %s", v158, 0xCu);
                sub_306C(v159);
              }

              v123(v153, v154);
              v160 = sub_2CB850();
              sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
              v161 = swift_allocError();
              v163 = v162;
              v164 = &enum case for PlaybackCode.ceGE54(_:);
LABEL_29:
              (*(*(v160 - 8) + 104))(v163, *v164, v160);
              v165 = v429;
              *v429 = v161;
              v166 = v430;
              swift_storeEnumTagMultiPayload();
              v433(v165);
              (*(v431 + 8))(v165, v166);
              sub_30B8(v150, qword_34F2C8, &unk_2D3070);
              (*(v437 + 8))(v426, v126);
              return sub_306C(v442);
            }

            v167 = v152;
            v168 = v410;
            v169 = v438;
            v435(v410, v434, v438);

            v170 = sub_2CDFE0();
            v171 = sub_2CE690();

            if (os_log_type_enabled(v170, v171))
            {
              v172 = v151;
              v173 = v145;
              v174 = swift_slowAlloc();
              v175 = swift_slowAlloc();
              *&v440 = v175;
              *v174 = 136315138;
              v176 = v173;
              v151 = v172;
              *(v174 + 4) = sub_3F08(v424, v176, &v440);
              _os_log_impl(&dword_0, v170, v171, "CommonNeedsConfirmationStrategy#parseConfirmationResponse Applying parameter %s in intent", v174, 0xCu);
              sub_306C(v175);
              v150 = v422;
            }

            v123(v168, v169);
            v177 = v415;
            v178 = [v412 itemToConfirm];
            v126 = v427;
            v179 = v413;
            v180 = v414;
            if (v167 <= 3u)
            {
              if (v167 <= 1u)
              {
                if (!v167)
                {
                  sub_2CEC00();
                  swift_unknownObjectRelease();
                  sub_736BC();
                  if (!swift_dynamicCast())
                  {
                    v251 = v380;
                    v435(v380, v434, v438);
                    v252 = sub_2CDFE0();
                    v253 = sub_2CE680();
                    if (os_log_type_enabled(v252, v253))
                    {
                      v254 = swift_slowAlloc();
                      *v254 = 0;
                      _os_log_impl(&dword_0, v252, v253, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v254, 2u);
                    }

                    v123(v251, v438);
                    v160 = sub_2CB850();
                    sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                    v161 = swift_allocError();
                    v163 = v255;
                    v164 = &enum case for PlaybackCode.ceGE55(_:);
                    goto LABEL_29;
                  }

                  v181 = v425;
                  v182 = v439;
                  v183 = v423;
                  v184 = v400;
                  (*(v423 + 104))(v400, enum case for ConfirmationResponse.confirmed(_:), v425);
                  v151(v184, 0, 1, v181);
                  v185 = *(v406 + 48);
                  v186 = v392;
                  sub_F3F4(v150, v392, qword_34F2C8, &unk_2D3070);
                  sub_F3F4(v184, v186 + v185, qword_34F2C8, &unk_2D3070);
                  v187 = *(v183 + 48);
                  if (v187(v186, 1, v181) == 1)
                  {
                    sub_30B8(v184, qword_34F2C8, &unk_2D3070);
                    v188 = v187(v186 + v185, 1, v181);
                    v189 = v409;
                    if (v188 == 1)
                    {
                      sub_30B8(v186, qword_34F2C8, &unk_2D3070);
LABEL_137:
                      sub_20410(&unk_351900, &unk_2D0960);
                      v333 = swift_allocObject();
                      *(v333 + 16) = xmmword_2D0770;
                      *(v333 + 32) = v182;
                      v334 = v182;
                      sub_732B0(v333, 1);

                      goto LABEL_152;
                    }

                    goto LABEL_134;
                  }

                  v297 = v372;
                  sub_F3F4(v186, v372, qword_34F2C8, &unk_2D3070);
                  v298 = v187(v186 + v185, 1, v181);
                  v189 = v409;
                  if (v298 != 1)
                  {
                    v328 = v423;
                    v329 = v186 + v185;
                    v330 = v404;
                    (*(v423 + 32))(v404, v329, v181);
                    sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                    v331 = sub_2CE250();
                    v332 = *(v328 + 8);
                    v332(v330, v181);
                    sub_30B8(v400, qword_34F2C8, &unk_2D3070);
                    v332(v297, v181);
                    sub_30B8(v186, qword_34F2C8, &unk_2D3070);
                    if ((v331 & 1) == 0)
                    {

                      goto LABEL_152;
                    }

                    goto LABEL_137;
                  }

                  v299 = v400;
                  goto LABEL_133;
                }

                sub_2CEC00();
                swift_unknownObjectRelease();
                v224 = v405;
                v225 = swift_dynamicCast();
                v226 = v403;
                v227 = *(v403 + 56);
                if (!v225)
                {
                  v227(v179, 1, 1, v224);
                  sub_30B8(v179, &qword_34CC98, &unk_2D3120);
                  v271 = v383;
                  v272 = v438;
                  v435(v383, v434, v438);
                  v273 = sub_2CDFE0();
                  v274 = sub_2CE680();
                  if (os_log_type_enabled(v273, v274))
                  {
                    v275 = swift_slowAlloc();
                    *v275 = 0;
                    _os_log_impl(&dword_0, v273, v274, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v275, 2u);
                  }

                  v123(v271, v272);
                  v276 = sub_2CB850();
                  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                  v277 = swift_allocError();
                  (*(*(v276 - 8) + 104))(v278, enum case for PlaybackCode.ceGE56(_:), v276);
                  v279 = v429;
                  *v429 = v277;
                  v280 = v430;
                  swift_storeEnumTagMultiPayload();
                  v433(v279);
                  (*(v431 + 8))(v279, v280);
                  v281 = v150;
                  goto LABEL_153;
                }

                v438 = *(v403 + 56);
                v227(v179, 0, 1, v224);
                (*(v226 + 32))(v402, v179, v224);
                v228 = v423;
                v229 = v425;
                (*(v423 + 104))(v180, enum case for ConfirmationResponse.confirmed(_:), v425);
                v151(v180, 0, 1, v229);
                v230 = *(v406 + 48);
                v231 = v394;
                sub_F3F4(v150, v394, qword_34F2C8, &unk_2D3070);
                sub_F3F4(v180, v231 + v230, qword_34F2C8, &unk_2D3070);
                v232 = *(v228 + 48);
                if (v232(v231, 1, v229) == 1)
                {
                  sub_30B8(v180, qword_34F2C8, &unk_2D3070);
                  v233 = v232(v231 + v230, 1, v229);
                  v189 = v409;
                  v234 = v405;
                  if (v233 == 1)
                  {
                    sub_30B8(v231, qword_34F2C8, &unk_2D3070);
LABEL_147:
                    v359 = v371;
                    v360 = v402;
                    (*(v226 + 16))(v371, v402, v234);
                    v438(v359, 0, 1, v234);
                    sub_72E4C(v359);
                    sub_30B8(v359, &qword_34CC98, &unk_2D3120);
                    (*(v226 + 8))(v360, v234);
                    goto LABEL_152;
                  }
                }

                else
                {
                  v308 = v230;
                  v309 = v373;
                  sub_F3F4(v231, v373, qword_34F2C8, &unk_2D3070);
                  v310 = v308;
                  v311 = v232(v231 + v308, 1, v229);
                  v189 = v409;
                  if (v311 != 1)
                  {
                    v354 = v423;
                    v355 = v231 + v310;
                    v356 = v404;
                    (*(v423 + 32))(v404, v355, v229);
                    sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                    v357 = sub_2CE250();
                    v358 = *(v354 + 8);
                    v358(v356, v229);
                    sub_30B8(v414, qword_34F2C8, &unk_2D3070);
                    v358(v309, v229);
                    v150 = v422;
                    sub_30B8(v231, qword_34F2C8, &unk_2D3070);
                    v234 = v405;
                    if (v357)
                    {
                      goto LABEL_147;
                    }

                    goto LABEL_122;
                  }

                  sub_30B8(v414, qword_34F2C8, &unk_2D3070);
                  (*(v423 + 8))(v309, v229);
                  v234 = v405;
                }

                sub_30B8(v231, &qword_355F20, &qword_2D8378);
LABEL_122:
                (*(v226 + 8))(v402, v234);
                goto LABEL_152;
              }

              v204 = v425;
              if (v167 != 2)
              {
                sub_2CEC00();
                swift_unknownObjectRelease();
                type metadata accessor for INPlaybackRepeatMode(0);
                if (!swift_dynamicCast())
                {
                  v287 = v382;
                  v435(v382, v434, v438);
                  v288 = sub_2CDFE0();
                  v289 = sub_2CE680();
                  if (os_log_type_enabled(v288, v289))
                  {
                    v290 = swift_slowAlloc();
                    *v290 = 0;
                    _os_log_impl(&dword_0, v288, v289, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v290, 2u);
                  }

                  v123(v287, v438);
                  v160 = sub_2CB850();
                  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                  v161 = swift_allocError();
                  v163 = v291;
                  v164 = &enum case for PlaybackCode.ceGE58(_:);
                  goto LABEL_29;
                }

                v438 = v439;
                v242 = v423;
                v237 = v388;
                (*(v423 + 104))(v388, enum case for ConfirmationResponse.confirmed(_:), v204);
                v151(v237, 0, 1, v204);
                v181 = v204;
                v243 = *(v406 + 48);
                v186 = v393;
                sub_F3F4(v150, v393, qword_34F2C8, &unk_2D3070);
                sub_F3F4(v237, v186 + v243, qword_34F2C8, &unk_2D3070);
                v244 = *(v242 + 48);
                if (v244(v186, 1, v204) == 1)
                {
                  sub_30B8(v237, qword_34F2C8, &unk_2D3070);
                  v245 = v244(v186 + v243, 1, v204);
                  v189 = v409;
                  if (v245 == 1)
                  {
                    sub_30B8(v186, qword_34F2C8, &unk_2D3070);
LABEL_129:
                    v318 = [v189 backingStore];
                    objc_opt_self();
                    v326 = swift_dynamicCastObjCClass();
                    if (v326)
                    {
                      [v326 setPlaybackRepeatMode:INPlaybackRepeatModeGetBackingType()];
                    }

LABEL_151:

                    goto LABEL_152;
                  }

LABEL_134:
                  sub_30B8(v186, &qword_355F20, &qword_2D8378);
                  goto LABEL_152;
                }

                v297 = v375;
                sub_F3F4(v186, v375, qword_34F2C8, &unk_2D3070);
                v320 = v244(v186 + v243, 1, v204);
                v189 = v409;
                if (v320 != 1)
                {
                  v321 = v237;
                  v322 = v423;
                  v323 = v404;
                  (*(v423 + 32))(v404, v186 + v243, v204);
                  sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                  v324 = sub_2CE250();
                  v325 = *(v322 + 8);
                  v325(v323, v181);
                  sub_30B8(v321, qword_34F2C8, &unk_2D3070);
                  v325(v297, v181);
                  sub_30B8(v186, qword_34F2C8, &unk_2D3070);
                  if ((v324 & 1) == 0)
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_129;
                }

LABEL_132:
                v299 = v237;
LABEL_133:
                sub_30B8(v299, qword_34F2C8, &unk_2D3070);
                (*(v423 + 8))(v297, v181);
                goto LABEL_134;
              }

              sub_2CEC00();
              swift_unknownObjectRelease();
              if (!swift_dynamicCast())
              {
                v261 = v381;
                v435(v381, v434, v438);
                v262 = sub_2CDFE0();
                v263 = sub_2CE680();
                if (os_log_type_enabled(v262, v263))
                {
                  v264 = swift_slowAlloc();
                  *v264 = 0;
                  _os_log_impl(&dword_0, v262, v263, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v264, 2u);
                }

                v123(v261, v438);
                v160 = sub_2CB850();
                sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                v161 = swift_allocError();
                v163 = v265;
                v164 = &enum case for PlaybackCode.ceGE57(_:);
                goto LABEL_29;
              }

              LODWORD(v436) = v439;
              v205 = enum case for ConfirmationResponse.confirmed(_:);
              v206 = v151;
              v207 = v423;
              v208 = v401;
              v435 = *(v423 + 104);
              v435(v401, enum case for ConfirmationResponse.confirmed(_:), v204);
              v438 = v206;
              v434 = v207 + 56;
              v206(v208, 0, 1, v204);
              v209 = *(v406 + 48);
              v210 = v395;
              sub_F3F4(v150, v395, qword_34F2C8, &unk_2D3070);
              v211 = v425;
              sub_F3F4(v208, v210 + v209, qword_34F2C8, &unk_2D3070);
              v212 = *(v207 + 48);
              if (v212(v210, 1, v211) == 1)
              {
                sub_30B8(v208, qword_34F2C8, &unk_2D3070);
                v213 = v425;
                sub_30B8(v150, qword_34F2C8, &unk_2D3070);
                v214 = v212(v210 + v209, 1, v213);
                v215 = v438;
                v216 = v436;
                if (v214 == 1)
                {
                  sub_30B8(v210, qword_34F2C8, &unk_2D3070);
LABEL_113:
                  v150 = v422;
                  v435(v422, v205, v213);
                  v215(v150, 0, 1, v213);
                  v189 = v409;
                  v304 = [v409 backingStore];
                  objc_opt_self();
                  v302 = swift_dynamicCastObjCClass();
                  if (!v302)
                  {
                  }

                  [v302 setPlayShuffled:v216];
LABEL_116:

LABEL_152:
                  sub_F3F4(v150, v407, qword_34F2C8, &unk_2D3070);
                  v367 = v189;
                  v368 = v429;
                  sub_2CA530();
                  v369 = v430;
                  swift_storeEnumTagMultiPayload();
                  v433(v368);
                  (*(v431 + 8))(v368, v369);
                  v281 = v150;
LABEL_153:
                  sub_30B8(v281, qword_34F2C8, &unk_2D3070);
                  (*(v437 + 8))(v426, v427);
                  return sub_306C(v442);
                }
              }

              else
              {
                v303 = v374;
                sub_F3F4(v210, v374, qword_34F2C8, &unk_2D3070);
                if (v212(v210 + v209, 1, v211) != 1)
                {
                  v341 = v303;
                  v342 = v423;
                  v343 = v210 + v209;
                  v344 = v404;
                  (*(v423 + 32))(v404, v343, v211);
                  sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                  v345 = sub_2CE250();
                  v346 = *(v342 + 8);
                  v346(v344, v211);
                  sub_30B8(v401, qword_34F2C8, &unk_2D3070);
                  sub_30B8(v422, qword_34F2C8, &unk_2D3070);
                  v346(v341, v425);
                  v213 = v425;
                  sub_30B8(v210, qword_34F2C8, &unk_2D3070);
                  v215 = v438;
                  v216 = v436;
                  if (v345)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_112;
                }

                sub_30B8(v401, qword_34F2C8, &unk_2D3070);
                v213 = v425;
                sub_30B8(v422, qword_34F2C8, &unk_2D3070);
                (*(v423 + 8))(v303, v213);
                v215 = v438;
                LODWORD(v216) = v436;
              }

              sub_30B8(v210, &qword_355F20, &qword_2D8378);
LABEL_112:
              v216 = v216 ^ 1;
              goto LABEL_113;
            }

            if (v167 > 5u)
            {
              v217 = v425;
              if (v167 == 6)
              {
                sub_2CEC00();
                swift_unknownObjectRelease();
                if (!swift_dynamicCast())
                {
                  v266 = v386;
                  v435(v386, v434, v438);
                  v267 = sub_2CDFE0();
                  v268 = sub_2CE680();
                  if (os_log_type_enabled(v267, v268))
                  {
                    v269 = swift_slowAlloc();
                    *v269 = 0;
                    _os_log_impl(&dword_0, v267, v268, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v269, 2u);
                  }

                  v123(v266, v438);
                  v160 = sub_2CB850();
                  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                  v161 = swift_allocError();
                  v163 = v270;
                  v164 = &enum case for PlaybackCode.ceGE61(_:);
                  goto LABEL_29;
                }

                v218 = *&v439;
                v219 = v423;
                v220 = v390;
                (*(v423 + 104))(v390, enum case for ConfirmationResponse.confirmed(_:), v217);
                v151(v220, 0, 1, v217);
                v221 = *(v406 + 48);
                v186 = v397;
                sub_F3F4(v150, v397, qword_34F2C8, &unk_2D3070);
                sub_F3F4(v220, v186 + v221, qword_34F2C8, &unk_2D3070);
                v222 = *(v219 + 48);
                if (v222(v186, 1, v217) == 1)
                {
                  sub_30B8(v220, qword_34F2C8, &unk_2D3070);
                  v223 = v222(v186 + v221, 1, v217);
                  v189 = v409;
                  if (v223 != 1)
                  {
                    goto LABEL_134;
                  }

                  sub_30B8(v186, qword_34F2C8, &unk_2D3070);
                }

                else
                {
                  v305 = v378;
                  sub_F3F4(v186, v378, qword_34F2C8, &unk_2D3070);
                  v306 = v222(v186 + v221, 1, v217);
                  v307 = v217;
                  v189 = v409;
                  if (v306 == 1)
                  {
                    sub_30B8(v220, qword_34F2C8, &unk_2D3070);
                    (*(v423 + 8))(v305, v307);
                    goto LABEL_134;
                  }

                  v347 = v220;
                  v348 = v423;
                  v349 = v186 + v221;
                  v350 = v404;
                  (*(v423 + 32))(v404, v349, v307);
                  sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                  v351 = sub_2CE250();
                  v352 = *(v348 + 8);
                  v352(v350, v307);
                  sub_30B8(v347, qword_34F2C8, &unk_2D3070);
                  v352(v305, v307);
                  sub_30B8(v186, qword_34F2C8, &unk_2D3070);
                  if ((v351 & 1) == 0)
                  {
                    goto LABEL_152;
                  }
                }

                v353 = [v189 backingStore];
                objc_opt_self();
                v318 = swift_dynamicCastObjCClass();
                if (!v318)
                {
                }

                [v318 setPlaybackSpeed:v218];
                goto LABEL_151;
              }

              sub_2CEC00();
              swift_unknownObjectRelease();
              type metadata accessor for INMediaAffinityType(0);
              if (!swift_dynamicCast())
              {
                v292 = v387;
                v435(v387, v434, v438);
                v293 = sub_2CDFE0();
                v294 = sub_2CE680();
                if (os_log_type_enabled(v293, v294))
                {
                  v295 = swift_slowAlloc();
                  *v295 = 0;
                  _os_log_impl(&dword_0, v293, v294, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v295, 2u);
                }

                v123(v292, v438);
                v160 = sub_2CB850();
                sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                v161 = swift_allocError();
                v163 = v296;
                v164 = &enum case for PlaybackCode.ceGE62(_:);
                goto LABEL_29;
              }

              v438 = v439;
              v247 = v423;
              v237 = v391;
              (*(v423 + 104))(v391, enum case for ConfirmationResponse.confirmed(_:), v217);
              v151(v237, 0, 1, v217);
              v181 = v217;
              v248 = *(v406 + 48);
              v186 = v399;
              sub_F3F4(v150, v399, qword_34F2C8, &unk_2D3070);
              sub_F3F4(v237, v186 + v248, qword_34F2C8, &unk_2D3070);
              v249 = *(v247 + 48);
              if (v249(v186, 1, v217) == 1)
              {
                sub_30B8(v237, qword_34F2C8, &unk_2D3070);
                v250 = v249(v186 + v248, 1, v217);
                v189 = v409;
                if (v250 != 1)
                {
                  goto LABEL_134;
                }

                sub_30B8(v186, qword_34F2C8, &unk_2D3070);
              }

              else
              {
                v297 = v379;
                sub_F3F4(v186, v379, qword_34F2C8, &unk_2D3070);
                v327 = v249(v186 + v248, 1, v217);
                v189 = v409;
                if (v327 == 1)
                {
                  goto LABEL_132;
                }

                v361 = v237;
                v362 = v423;
                v363 = v404;
                (*(v423 + 32))(v404, v186 + v248, v181);
                sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                v364 = sub_2CE250();
                v365 = *(v362 + 8);
                v365(v363, v181);
                sub_30B8(v361, qword_34F2C8, &unk_2D3070);
                v365(v297, v181);
                sub_30B8(v186, qword_34F2C8, &unk_2D3070);
                if ((v364 & 1) == 0)
                {
                  goto LABEL_152;
                }
              }

              v318 = [v189 backingStore];
              objc_opt_self();
              v366 = swift_dynamicCastObjCClass();
              if (v366)
              {
                [v366 setAffinityType:INMediaAffinityTypeGetBackingType()];
              }

              goto LABEL_151;
            }

            v190 = v425;
            if (v167 != 4)
            {
              sub_2CEC00();
              swift_unknownObjectRelease();
              type metadata accessor for INPlaybackQueueLocation(0);
              if (!swift_dynamicCast())
              {
                v282 = v385;
                v435(v385, v434, v438);
                v283 = sub_2CDFE0();
                v284 = sub_2CE680();
                if (os_log_type_enabled(v283, v284))
                {
                  v285 = swift_slowAlloc();
                  *v285 = 0;
                  _os_log_impl(&dword_0, v283, v284, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v285, 2u);
                }

                v123(v282, v438);
                v160 = sub_2CB850();
                sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                v161 = swift_allocError();
                v163 = v286;
                v164 = &enum case for PlaybackCode.ceGE60(_:);
                goto LABEL_29;
              }

              v438 = v439;
              v236 = v423;
              v237 = v389;
              (*(v423 + 104))(v389, enum case for ConfirmationResponse.confirmed(_:), v190);
              v151(v237, 0, 1, v190);
              v181 = v190;
              v238 = *(v406 + 48);
              v186 = v396;
              sub_F3F4(v150, v396, qword_34F2C8, &unk_2D3070);
              sub_F3F4(v237, v186 + v238, qword_34F2C8, &unk_2D3070);
              v239 = *(v236 + 48);
              if (v239(v186, 1, v190) == 1)
              {
                sub_30B8(v237, qword_34F2C8, &unk_2D3070);
                v240 = v239(v186 + v238, 1, v190);
                v189 = v409;
                if (v240 != 1)
                {
                  goto LABEL_134;
                }

                sub_30B8(v186, qword_34F2C8, &unk_2D3070);
              }

              else
              {
                v297 = v377;
                sub_F3F4(v186, v377, qword_34F2C8, &unk_2D3070);
                v312 = v239(v186 + v238, 1, v190);
                v189 = v409;
                if (v312 == 1)
                {
                  goto LABEL_132;
                }

                v313 = v237;
                v314 = v423;
                v315 = v404;
                (*(v423 + 32))(v404, v186 + v238, v190);
                sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                v316 = sub_2CE250();
                v317 = *(v314 + 8);
                v317(v315, v181);
                sub_30B8(v313, qword_34F2C8, &unk_2D3070);
                v317(v297, v181);
                sub_30B8(v186, qword_34F2C8, &unk_2D3070);
                if ((v316 & 1) == 0)
                {
                  goto LABEL_152;
                }
              }

              v318 = [v189 backingStore];
              objc_opt_self();
              v319 = swift_dynamicCastObjCClass();
              if (v319)
              {
                [v319 setPlaybackQueueLocation:INPlaybackQueueLocationGetBackingType()];
              }

              goto LABEL_151;
            }

            sub_2CEC00();
            swift_unknownObjectRelease();
            if (!swift_dynamicCast())
            {
              v256 = v384;
              v435(v384, v434, v438);
              v257 = sub_2CDFE0();
              v258 = sub_2CE680();
              if (os_log_type_enabled(v257, v258))
              {
                v259 = swift_slowAlloc();
                *v259 = 0;
                _os_log_impl(&dword_0, v257, v258, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v259, 2u);
              }

              v123(v256, v438);
              v160 = sub_2CB850();
              sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
              v161 = swift_allocError();
              v163 = v260;
              v164 = &enum case for PlaybackCode.ceGE59(_:);
              goto LABEL_29;
            }

            LODWORD(v436) = v439;
            v191 = enum case for ConfirmationResponse.confirmed(_:);
            v192 = v423;
            v435 = *(v423 + 104);
            v435(v177, enum case for ConfirmationResponse.confirmed(_:), v190);
            v438 = v151;
            v434 = v192 + 56;
            v151(v177, 0, 1, v190);
            v193 = *(v406 + 48);
            v194 = v398;
            sub_F3F4(v150, v398, qword_34F2C8, &unk_2D3070);
            v195 = v425;
            sub_F3F4(v177, v194 + v193, qword_34F2C8, &unk_2D3070);
            v196 = *(v192 + 48);
            if (v196(v194, 1, v195) == 1)
            {
              sub_30B8(v177, qword_34F2C8, &unk_2D3070);
              v197 = v425;
              sub_30B8(v150, qword_34F2C8, &unk_2D3070);
              v198 = v196(v194 + v193, 1, v197);
              v199 = v438;
              v200 = v436;
              if (v198 == 1)
              {
                sub_30B8(v194, qword_34F2C8, &unk_2D3070);
LABEL_106:
                v150 = v422;
                v435(v422, v191, v197);
                v199(v150, 0, 1, v197);
                v189 = v409;
                v301 = [v409 backingStore];
                objc_opt_self();
                v302 = swift_dynamicCastObjCClass();
                if (!v302)
                {
                }

                [v302 setResumePlayback:v200];
                goto LABEL_116;
              }
            }

            else
            {
              v300 = v376;
              sub_F3F4(v194, v376, qword_34F2C8, &unk_2D3070);
              if (v196(v194 + v193, 1, v195) != 1)
              {
                v335 = v300;
                v336 = v423;
                v337 = v194 + v193;
                v338 = v404;
                (*(v423 + 32))(v404, v337, v195);
                sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse);
                v339 = sub_2CE250();
                v340 = *(v336 + 8);
                v340(v338, v195);
                sub_30B8(v415, qword_34F2C8, &unk_2D3070);
                sub_30B8(v422, qword_34F2C8, &unk_2D3070);
                v340(v335, v425);
                v197 = v425;
                sub_30B8(v194, qword_34F2C8, &unk_2D3070);
                v199 = v438;
                v200 = v436;
                if (v339)
                {
                  goto LABEL_106;
                }

                goto LABEL_105;
              }

              sub_30B8(v415, qword_34F2C8, &unk_2D3070);
              v197 = v425;
              sub_30B8(v422, qword_34F2C8, &unk_2D3070);
              (*(v423 + 8))(v300, v197);
              v199 = v438;
              LODWORD(v200) = v436;
            }

            sub_30B8(v194, &qword_355F20, &qword_2D8378);
LABEL_105:
            v200 = v200 ^ 1;
            goto LABEL_106;
          }

          v149 = v423;
          (*(v423 + 104))(v143, enum case for ConfirmationResponse.rejected(_:), v144);
        }

        v151 = *(v149 + 56);
        v151(v150, 0, 1, v144);
        goto LABEL_25;
      }

      v146 = &enum case for SiriKitConfirmationState.cancelled(_:);
    }

    (*(v421 + 104))(v417, *v146, v418);
    goto LABEL_19;
  }

  sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
  sub_306C(v442);
  v88 = v438;
LABEL_9:
  v435(v93, v434, v88);
  v127 = sub_2CDFE0();
  v128 = sub_2CE680();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_0, v127, v128, "CommonNeedsConfirmationStrategy#parseConfirmationResponse unable to make confirmation intent from parse, ignoring...", v129, 2u);
  }

  v123(v93, v88);
  v130 = sub_2CB850();
  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v131 = swift_allocError();
  (*(*(v130 - 8) + 104))(v132, enum case for PlaybackCode.ceGE53(_:), v130);
  v133 = v429;
  *v429 = v131;
  v134 = v430;
  swift_storeEnumTagMultiPayload();
  v433(v133);
  return (*(v431 + 8))(v133, v134);
}

uint64_t sub_25DD38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v39 = a7;
  v40 = a3;
  v41 = a4;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v38 = v14;
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v35 = a8;
    v25 = v18;
    v26 = v24;
    v42 = v24;
    *v23 = 136446210;
    v27 = sub_2CCCA0();
    v36 = a5;
    v29 = sub_3F08(v27, v28, &v42);
    a5 = v36;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_0, v20, v21, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF... Insights:%{public}s", v23, 0xCu);
    sub_306C(v26);
    a8 = v35;

    v9 = v37;

    (*(v15 + 8))(v25, v38);
  }

  else
  {

    (*(v15 + 8))(v18, v38);
  }

  v30 = swift_allocObject();
  v30[2] = v9;
  v30[3] = a1;
  v31 = v39;
  v30[4] = a2;
  v30[5] = v31;
  v30[6] = a8;

  v32 = a2;

  sub_254018(a1, v32, a5, v40, v41, sub_25F2A0, v30);
}

uint64_t sub_25E010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v56 = a4;
  v57 = a8;
  v55 = a7;
  v52 = a5;
  v53 = a3;
  v12 = *v8;
  v48 = a6;
  v49 = v12;
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v47 - v16;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v8[12];
  sub_35E0(v8 + 8, v8[11]);
  if (sub_2CC4B0())
  {
    v24 = v52;
    v23 = v53;
    v26 = v55;
    v25 = v56;
    v27 = v48;
    v28 = v57;

    return sub_25DD38(a1, a2, v23, v25, v24, v27, v26, v28);
  }

  else
  {
    v47 = a1;
    v48 = a2;
    v30 = v52;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    (*(v18 + 16))(v21, v31, v17);
    v32 = sub_2CDFE0();
    v33 = sub_2CE670();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "CommonNeedsConfirmationStrategy#makePromptForConfirmation...", v34, 2u);
    }

    (*(v18 + 8))(v21, v17);
    v36 = *(v49 + 80);
    v35 = *(v49 + 88);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v37 = v54;
    sub_B70E0(v54);
    v38 = v9[18];
    v39 = v51;
    sub_F3F4(v37, v51, &unk_353020, &unk_2D0970);
    v40 = (*(v50 + 80) + 96) & ~*(v50 + 80);
    v41 = swift_allocObject();
    v41[2] = v36;
    v41[3] = v35;
    v42 = v56;
    v43 = v57;
    v41[4] = v53;
    v41[5] = v42;
    v41[6] = v30;
    v41[7] = v9;
    v44 = v48;
    v41[8] = v47;
    v41[9] = v44;
    v41[10] = v55;
    v41[11] = v43;
    sub_14A58(v39, v41 + v40, &unk_353020, &unk_2D0970);

    v45 = v30;

    v46 = v44;

    sub_11093C(sub_25F200, v41);

    return sub_30B8(v54, &unk_353020, &unk_2D0970);
  }
}

uint64_t sub_25E470(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v98 = a4;
  v99 = a5;
  v97 = a3;
  v104 = a2;
  v105 = a1;
  v5 = sub_20410(&qword_34C820, &unk_2D0A30);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v84 - v9;
  v10 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v96 = &v84 - v12;
  v13 = sub_2CD230();
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  v15 = __chkstk_darwin(v13);
  v87 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v16;
  __chkstk_darwin(v15);
  v18 = &v84 - v17;
  v19 = sub_2C9B80();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_2CA630();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v103 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v25;
  __chkstk_darwin(v24);
  v106 = &v84 - v26;
  v89 = sub_2CB260();
  v88 = *(v89 - 8);
  v27 = *(v88 + 64);
  __chkstk_darwin(v89);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CE000();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2CB460();
  if (!v35)
  {
    sub_2CB180();
    v35 = sub_2CB170();
  }

  v36 = v35;
  v92 = v18;
  v102 = v13;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v37 = v30;
  v38 = sub_3ED0(v30, static Logger.default);
  swift_beginAccess();
  v39 = *(v31 + 16);
  v94 = v37;
  v39(v34, v38, v37);

  v40 = sub_2CDFE0();
  v41 = sub_2CE660();

  v42 = os_log_type_enabled(v40, v41);
  v95 = v36;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v91 = v21;
    v44 = v43;
    v45 = swift_slowAlloc();
    v85 = v22;
    v46 = v45;
    v107 = v45;
    *v44 = 136315138;
    sub_2CB130();
    sub_2CD3C0();

    v47 = sub_2CB200();
    v49 = v48;
    (*(v88 + 8))(v29, v89);
    v50 = sub_3F08(v47, v49, &v107);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_0, v40, v41, "CommonNeedsConfirmationStrategy#confirmationViewOutput with responseMode = %s", v44, 0xCu);
    sub_306C(v46);
    v36 = v95;
    v22 = v85;

    v21 = v91;
  }

  (*(v31 + 8))(v34, v94);
  v51 = sub_2C9B30();
  __chkstk_darwin(v51);
  v52 = v99;
  *(&v84 - 4) = v98;
  *(&v84 - 3) = v52;
  v53 = v105;
  *(&v84 - 2) = v105;
  *(&v84 - 1) = v36;
  sub_2CA560();
  v54 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext();
  v55 = v96;
  sub_F3F4(v53 + *(v54 + 36), v96, &unk_3530C0, &unk_2D0A40);
  v56 = v100;
  v57 = v102;
  if ((*(v100 + 48))(v55, 1, v102) == 1)
  {
    sub_30B8(v55, &unk_3530C0, &unk_2D0A40);
  }

  else
  {
    v58 = v56;
    v59 = v92;
    v99 = *(v56 + 32);
    v99();
    v60 = v53 + *(v54 + 44);
    v61 = v90;
    sub_F3F4(v60, v90, &qword_34C820, &unk_2D0A30);
    v62 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    if ((*(*(v62 - 8) + 48))(v61, 1, v62) != 1)
    {
      v105 = *(v61 + *(v62 + 48));
      v74 = sub_2CA130();
      (*(*(v74 - 8) + 8))(v61, v74);
      v75 = v87;
      (*(v58 + 16))(v87, v59, v57);
      v76 = v103;
      (*(v22 + 16))(v103, v106, v21);
      v77 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v91 = v21;
      v78 = (v86 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = (*(v22 + 80) + v78 + 8) & ~*(v22 + 80);
      v80 = swift_allocObject();
      (v99)(v80 + v77, v75, v57);
      v81 = v105;
      *(v80 + v78) = v105;
      v21 = v91;
      (*(v22 + 32))(v80 + v79, v76, v91);
      v82 = v81;
      sub_20410(&unk_353030, &unk_2D1450);
      sub_2CE4F0();

      (*(v58 + 8))(v92, v57);
      return (*(v22 + 8))(v106, v21);
    }

    (*(v58 + 8))(v59, v57);
    sub_30B8(v61, &qword_34C820, &unk_2D0A30);
    v53 = v105;
  }

  v63 = v93;
  sub_F3F4(v53 + *(v54 + 44), v93, &qword_34C820, &unk_2D0A30);
  v64 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
  {
    sub_30B8(v63, &qword_34C820, &unk_2D0A30);
    v65 = v103;
    (*(v22 + 16))(v103, v106, v21);
    v66 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v67 = swift_allocObject();
    (*(v22 + 32))(v67 + v66, v65, v21);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  else
  {
    v68 = *(v63 + *(v64 + 48));
    v69 = sub_2CA130();
    (*(*(v69 - 8) + 8))(v63, v69);
    v70 = v103;
    (*(v22 + 16))(v103, v106, v21);
    v71 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    (*(v22 + 32))(v72 + v71, v70, v21);
    v73 = v68;
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  return (*(v22 + 8))(v106, v21);
}

uint64_t sub_25F00C(void (*a1)(_BYTE *))
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE670();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "CommonNeedsConfirmationStrategy#makeConfirmationRejectedResponse... (ignoring)", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_2C9BC0();
  sub_2C9BB0();
  v13[40] = 0;
  a1(v13);
  return sub_30B8(v13, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_25F2C8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_2562E0(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_25F348(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_25750C(a1, v1[4]);
}

uint64_t sub_25F354(uint64_t a1)
{
  v4 = *(sub_2CA630() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24C84;

  return sub_257D54(a1, v1 + v5);
}

uint64_t sub_25F430(uint64_t a1)
{
  v4 = *(sub_2CA630() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24C84;

  return sub_257ADC(a1, v6, v1 + v5);
}

uint64_t sub_25F514(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2CA630() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_E664;

  return sub_2577D0(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_25F66C(uint64_t a1)
{
  v3 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v5 = *(v1 + 96);
  v6 = v1 + ((*(v3 + 80) + 104) & ~*(v3 + 80));
  return sub_25521C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
}

uint64_t sub_25F700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F7B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_258604(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_25F7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_25F878()
{
  sub_CEE50(319, &qword_34F358, &qword_34C6E0, &unk_2D0730);
  if (v0 <= 0x3F)
  {
    sub_25F9C0(319, &qword_34EE70, &type metadata accessor for SiriAudioSnippets);
    if (v1 <= 0x3F)
    {
      sub_CEE50(319, &qword_34F350, &qword_34C6E8, &unk_2D0FF0);
      if (v2 <= 0x3F)
      {
        sub_25F9C0(319, &qword_355FB0, &type metadata accessor for NLContextUpdate);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F9C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Class sub_25FA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_334A0(0, &qword_34DD50, NSObject_ptr);
    v5.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_25FAD4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_25FB40()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_35F850 = v10;
  return result;
}

uint64_t sub_25FCD8()
{
  result = AFIsInternalInstall();
  byte_35F858 = result;
  return result;
}

uint64_t sub_25FCF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "PlayMediaRCHFlowWrapper#exitValue exiting", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return sub_265310(a1);
}

uint64_t sub_25FEB8(uint64_t a1)
{
  v2 = sub_2CA7B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  (*(v3 + 16))(v6, a1, v2);
  v13 = sub_2CDFE0();
  v14 = sub_2CE670();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v7;
    v16 = v15;
    v23 = swift_slowAlloc();
    v27 = v23;
    *v16 = 136315138;
    sub_270D7C(&qword_34CD00, &type metadata accessor for Input);
    v17 = sub_2CEE70();
    v25 = a1;
    v19 = v18;
    (*(v3 + 8))(v6, v2);
    v20 = sub_3F08(v17, v19, &v27);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v13, v14, "PlayMediaRCHFlowWrapper#onInput with input: %s", v16, 0xCu);
    sub_306C(v23);

    (*(v8 + 8))(v11, v24);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  v21 = *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaFlow);
  return sub_2CA890() & 1;
}

uint64_t sub_260220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = sub_2CE150();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE180();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v27 = v12;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "PlayMediaRCHFlowWrapper#execute", v21, 2u);
    v12 = v27;
  }

  (*(v14 + 8))(v17, v13);
  if (qword_34C018 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v23 = v28;
  v22[2] = v3;
  v22[3] = v23;
  v22[4] = a2;
  aBlock[4] = sub_2758E8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_33C7D0;
  v24 = _Block_copy(aBlock);

  sub_2CE160();
  v32 = _swiftEmptyArrayStorage;
  sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80);
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v24);
  (*(v31 + 8))(v8, v5);
  (*(v29 + 8))(v12, v30);
}

uint64_t sub_2606D0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v85 = a3;
  v86 = a2;
  v83 = a1;
  v79 = sub_2C9EC0();
  v78 = *(v79 - 8);
  v3 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_356378, &qword_2D8590);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v74 - v7;
  v9 = sub_20410(&qword_3524B0, &unk_2D8440);
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = &v74 - v15;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v74 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v75 = &v74 - v22;
  v23 = __chkstk_darwin(v21);
  v76 = &v74 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v74 - v26;
  __chkstk_darwin(v25);
  v29 = &v74 - v28;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v31 = v17[2];
  v89 = v16;
  v80 = v31;
  v31(v29, v30, v16);
  v32 = sub_2CDFE0();
  v33 = sub_2CE670();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "PlayMediaRCHFlowWrapper#execute-async", v34, 2u);
  }

  v35 = v89;
  v81 = v17[1];
  v82 = v17 + 1;
  v81(v29, v89);
  v36 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v37 = v83;
  swift_beginAccess();
  sub_F3F4(v37 + v36, v8, &qword_356378, &qword_2D8590);
  v39 = v87;
  v38 = v88;
  if ((*(v88 + 48))(v8, 1, v87) == 1)
  {
    sub_30B8(v8, &qword_356378, &qword_2D8590);
    v80(v27, v30, v35);
    v40 = sub_2CDFE0();
    v41 = sub_2CE670();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "PlayMediaRCHFlowWrapper#execute no result from action, assuming this is the prior-execution", v42, 2u);
    }

    v81(v27, v35);
    v90 = *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaFlow);

    sub_20410(&qword_3510A8, &unk_2D4D80);
    sub_72068(&qword_356390, &qword_3510A8, &unk_2D4D80);
    v43 = v77;
    sub_2C9E80();

    v86(v43);
    return (*(v78 + 8))(v43, v79);
  }

  else
  {
    v45 = v84;
    (*(v38 + 32))(v84, v8, v39);
    (*(v38 + 16))(v14, v45, v39);
    v46 = (*(v38 + 88))(v14, v39);
    if (v46 == enum case for RCHFlowResult.complete<A, B>(_:))
    {
      (*(v38 + 96))(v14, v39);
      v47 = *v14;
      v48 = *(v14 + 1);

      v49 = v76;
      v80(v76, v30, v89);
      v50 = sub_2CDFE0();
      v51 = sub_2CE670();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_0, v50, v51, "PlayMediaRCHFlowWrapper#execute completed", v52, 2u);
      }

      v81(v49, v89);
      sub_2CD0A0();
      v53 = v48;
      sub_2CEAE0();

      v54 = sub_2CD080();

      sub_2614A8(v47, v53, v54, v86, v85);

      return (*(v88 + 8))(v84, v87);
    }

    else if (v46 == enum case for RCHFlowResult.error<A, B>(_:))
    {
      (*(v38 + 96))(v14, v39);
      v55 = *v14;
      v56 = v75;
      v57 = v89;
      v80(v75, v30, v89);
      swift_errorRetain();
      v58 = sub_2CDFE0();
      v59 = sub_2CE670();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v90 = v61;
        *v60 = 136315138;
        swift_getErrorValue();
        v62 = sub_2CEEF0();
        v64 = sub_3F08(v62, v63, &v90);

        *(v60 + 4) = v64;
        v39 = v87;
        _os_log_impl(&dword_0, v58, v59, "PlayMediaRCHFlowWrapper#execute error: %s", v60, 0xCu);
        sub_306C(v61);
      }

      v81(v56, v57);
      v65 = v77;
      sub_2C9EB0();
      v86(v65);

      (*(v78 + 8))(v65, v79);
      return (*(v88 + 8))(v84, v39);
    }

    else if (v46 == enum case for RCHFlowResult.cancelled<A, B>(_:))
    {
      v66 = v74;
      v80(v74, v30, v89);
      v67 = sub_2CDFE0();
      v68 = sub_2CE690();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_0, v67, v68, "PlayMediaRCHFlowWrapper#execute cancelled, closing", v69, 2u);
        v38 = v88;
      }

      v81(v66, v89);
      v70 = v77;
      sub_2C9EB0();
      v86(v70);
      (*(v78 + 8))(v70, v79);
      return (*(v38 + 8))(v84, v39);
    }

    else
    {
      v71 = v38;
      v72 = v77;
      sub_2C9EB0();
      v86(v72);
      (*(v78 + 8))(v72, v79);
      v73 = *(v71 + 8);
      v73(v84, v39);
      return (v73)(v14, v39);
    }
  }
}

uint64_t sub_2611F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_356378, &qword_2D8590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21[-v6];
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "PlayMediaRCHFlowWrapper#execute setting result...", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = sub_20410(&qword_3524B0, &unk_2D8440);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  swift_beginAccess();
  sub_27579C(v7, a2 + v19);
  return swift_endAccess();
}

uint64_t sub_2614A8(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v55 = a2;
  v56 = a5;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = sub_2CCF90();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v54 = a3;
    v19 = sub_2CBD20();
    v61[0] = v17;
    v61[1] = v18;
    __chkstk_darwin(v19);
    *(&v52 - 2) = v61;
    v20 = sub_13964(sub_334E8, (&v52 - 4), v19);

    if (v20)
    {
      v21 = v8;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v22 = v7;
      v23 = sub_3ED0(v7, static Logger.default);
      swift_beginAccess();
      v24 = v21;
      (*(v21 + 16))(v14, v23, v22);

      v25 = sub_2CDFE0();
      v26 = sub_2CE690();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v59[0] = v28;
        *v27 = 136446210;
        v29 = sub_3F08(v17, v18, v59);

        *(v27 + 4) = v29;
        _os_log_impl(&dword_0, v25, v26, "PlayMediaRCHFlowWrapper#processAllContinuations for bundle: %{public}s IS a music or radio request, performing prepareForSetQueue validation...", v27, 0xCu);
        sub_306C(v28);
      }

      else
      {
      }

      (*(v24 + 8))(v14, v22);
      v45 = v54;
      sub_2CBED0();
      sub_2CBEC0();
      v46 = swift_allocObject();
      v47 = v57;
      v46[2] = v58;
      v46[3] = a1;
      v49 = v55;
      v48 = v56;
      v46[4] = v55;
      v46[5] = v45;
      v46[6] = v47;
      v46[7] = v48;

      v50 = v49;

      sub_2CBE80();
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v12, v30, v7);

  v31 = sub_2CDFE0();
  v32 = sub_2CE690();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v60 = v34;
    *v33 = 136446210;
    v54 = v12;
    v59[0] = sub_2CCF90();
    v59[1] = v35;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v36 = sub_2CE2A0();
    v38 = sub_3F08(v36, v37, &v60);
    v53 = v7;
    v39 = v38;

    *(v33 + 4) = v39;
    _os_log_impl(&dword_0, v31, v32, "PlayMediaRCHFlowWrapper#processAllContinuations %{public}s not a music or radio bundle identifier, skipping prepareForSetQueue validation", v33, 0xCu);
    sub_306C(v34);

    (*(v8 + 8))(v54, v53);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v40 = swift_allocObject();
  v42 = v55;
  v41 = v56;
  v43 = v57;
  v40[2] = v55;
  v40[3] = v43;
  v40[4] = v41;
  v40[5] = v58;
  v40[6] = a1;

  v44 = v42;

  sub_2CB6D0();
}

uint64_t sub_261A5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v101 = a7;
  v102 = a5;
  v97 = a6;
  v98 = a2;
  v99 = a3;
  v100 = a4;
  v103 = sub_2CE000();
  v96 = *(v103 - 8);
  v8 = *(v96 + 64);
  v9 = __chkstk_darwin(v103);
  v95 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v83 - v11;
  v12 = sub_2CB850();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v83 - v18;
  v20 = sub_20410(&qword_352D78, &unk_2D5320);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v83 - v22;
  v24 = sub_2CC950();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v93 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v92 = &v83 - v28;
  __chkstk_darwin(v27);
  v30 = &v83 - v29;
  v31 = a1;
  v33 = v32;
  v35 = v34;
  sub_F3F4(v31, v23, &qword_352D78, &unk_2D5320);
  if ((*(v33 + 48))(v23, 1, v35) == 1)
  {
    sub_30B8(v23, &qword_352D78, &unk_2D5320);
LABEL_5:
    v41 = v103;
    v42 = v95;
    v43 = v96;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = sub_3ED0(v41, static Logger.default);
    swift_beginAccess();
    (*(v43 + 16))(v42, v44, v41);
    v45 = sub_2CDFE0();
    v46 = sub_2CE690();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "PlayMediaRCHFlowWrapper#processAllContinuations found non-error result for prepareForSetQueue, continuing to validate playback continuation...", v47, 2u);
    }

    (*(v43 + 8))(v42, v41);
    v48 = swift_allocObject();
    v50 = v100;
    v49 = v101;
    v51 = v97;
    v48[2] = v100;
    v48[3] = v51;
    v48[4] = v49;
    v52 = v99;
    v48[5] = v98;
    v48[6] = v52;

    v53 = v50;

    sub_2CB6D0();
  }

  v90 = *(v33 + 32);
  v91 = v33 + 32;
  v90(v30, v23, v35);
  v36 = v33;
  sub_2CC940();
  (*(v13 + 104))(v17, enum case for PlaybackCode.noSetQueueCodes(_:), v12);
  sub_270D7C(&qword_353CD8, &type metadata accessor for PlaybackCode);
  v37 = sub_2CE250();
  v40 = *(v13 + 8);
  v38 = v13 + 8;
  v39 = v40;
  v40(v17, v12);
  v40(v19, v12);
  if (v37)
  {
    (*(v36 + 8))(v30, v35);
    goto LABEL_5;
  }

  v86 = v38;
  v95 = v30;
  v89 = v35;
  v55 = v103;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v56 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v57 = v96;
  (*(v96 + 16))(v94, v56, v55);
  v87 = v36;
  v58 = *(v36 + 16);
  v59 = v92;
  v60 = v89;
  v88 = v58;
  v58(v92, v95, v89);
  v61 = sub_2CDFE0();
  v85 = sub_2CE680();
  if (os_log_type_enabled(v61, v85))
  {
    v62 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v104 = v84;
    *v62 = 136446210;
    v83 = v61;
    sub_2CC940();
    v63 = sub_2CB840();
    v65 = v64;
    v39(v19, v12);
    v66 = v87;
    v92 = *(v87 + 8);
    (v92)(v59, v89);
    v67 = sub_3F08(v63, v65, &v104);

    v68 = v62;
    v60 = v89;
    *(v68 + 1) = v67;
    v69 = v83;
    _os_log_impl(&dword_0, v83, v85, "PlayMediaRCHFlowWrapper#processAllContinuations found unsuccessful prepareForSetQueue response %{public}s... waiting for playback continuation to complete to error...", v68, 0xCu);
    sub_306C(v84);

    (*(v57 + 8))(v94, v103);
    v70 = v66;
  }

  else
  {

    v70 = v87;
    v92 = *(v87 + 8);
    (v92)(v59, v60);
    (*(v57 + 8))(v94, v55);
  }

  v71 = v93;
  v72 = v95;
  v88(v93, v95, v60);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v25 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v90((v77 + v73), v71, v60);
  v78 = v99;
  *(v77 + v74) = v98;
  *(v77 + v75) = v78;
  v80 = v100;
  v79 = v101;
  *(v77 + v76) = v100;
  v81 = (v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v81 = v97;
  v81[1] = v79;

  v82 = v80;

  sub_2CB6D0();

  return (v92)(v72, v60);
}

uint64_t sub_26234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v87 = a5;
  v88 = a7;
  v86 = a6;
  v89 = a3;
  v90 = a4;
  v93 = a2;
  v8 = sub_2CC950();
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  v10 = __chkstk_darwin(v8);
  v84 = v11;
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v74 - v12;
  v80 = sub_2CB850();
  v79 = *(v80 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v80);
  v78 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_352D78, &unk_2D5320);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v74 - v20;
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v91 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v74 - v27;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v81 = v23[2];
  v81(v28, v29, v22);
  sub_F3F4(a1, v21, &qword_352D78, &unk_2D5320);
  v30 = sub_2CDFE0();
  LODWORD(v77) = sub_2CE690();
  v31 = os_log_type_enabled(v30, v77);
  v92 = v22;
  v82 = v23;
  if (v31)
  {
    v75 = v29;
    v32 = v8;
    v33 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v96 = v74;
    *v33 = 136446210;
    sub_F3F4(v21, v19, &qword_352D78, &unk_2D5320);
    v34 = v94;
    v35 = (*(v94 + 48))(v19, 1, v32);
    v76 = v32;
    if (v35 == 1)
    {
      sub_30B8(v19, &qword_352D78, &unk_2D5320);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v39 = v78;
      sub_2CC940();
      (*(v34 + 8))(v19, v32);
      v36 = sub_2CB840();
      v37 = v40;
      (*(v79 + 8))(v39, v80);
    }

    v95[0] = v36;
    v95[1] = v37;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v41 = sub_2CE2A0();
    v43 = v42;
    sub_30B8(v21, &qword_352D78, &unk_2D5320);
    v44 = sub_3F08(v41, v43, &v96);

    *(v33 + 4) = v44;
    _os_log_impl(&dword_0, v30, v77, "PlayMediaRCHFlowWrapper#processAllContinuations playback continuation completed, code? %{public}s", v33, 0xCu);
    sub_306C(v74);

    v38 = v82[1];
    v22 = v92;
    v38(v28, v92);
    v8 = v76;
    v29 = v75;
  }

  else
  {

    sub_30B8(v21, &qword_352D78, &unk_2D5320);
    v38 = v23[1];
    v38(v28, v22);
  }

  v45 = v91;
  v81(v91, v29, v22);
  v46 = v94;
  v47 = *(v94 + 16);
  v48 = v83;
  v47(v83, v93, v8);
  v49 = sub_2CDFE0();
  v50 = v8;
  v51 = sub_2CE690();
  if (os_log_type_enabled(v49, v51))
  {
    v52 = swift_slowAlloc();
    v81 = v38;
    v53 = v52;
    v77 = swift_slowAlloc();
    v95[0] = v77;
    *v53 = 136446210;
    v54 = v47;
    v55 = v78;
    sub_2CC940();
    v56 = sub_2CB840();
    v57 = v48;
    v59 = v58;
    v60 = v55;
    v47 = v54;
    (*(v79 + 8))(v60, v80);
    (*(v94 + 8))(v57, v50);
    v61 = sub_3F08(v56, v59, v95);

    *(v53 + 4) = v61;
    _os_log_impl(&dword_0, v49, v51, "PlayMediaRCHFlowWrapper#processAllContinuations replacing playback code for evaluation with failed prepareForSetQueue code: %{public}s", v53, 0xCu);
    sub_306C(v77);
    v46 = v94;

    (v81)(v91, v92);
  }

  else
  {

    (*(v46 + 8))(v48, v50);
    v38(v45, v92);
  }

  v62 = v85;
  v47(v85, v93, v50);
  v63 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v64 = swift_allocObject();
  (*(v46 + 32))(v64 + v63, v62, v50);
  v65 = sub_20410(&qword_356388, &qword_2D85A8);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  sub_2CB6E0();
  v68 = swift_allocObject();
  v70 = v86;
  v69 = v87;
  v68[2] = v87;
  v68[3] = v70;
  v71 = v89;
  v68[4] = v88;
  v68[5] = v71;
  v68[6] = v90;
  v72 = v69;

  sub_2CB6D0();
}

uint64_t sub_262BFC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_20410(&qword_352D78, &unk_2D5320);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_2CC950();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  a1(v8);
  return sub_30B8(v8, &qword_352D78, &unk_2D5320);
}

uint64_t sub_262D28(uint64_t a1, void *a2, void (*a3)(char *), void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v202 = a6;
  v205 = a4;
  v206 = a5;
  v204 = a3;
  v201 = sub_2C9EC0();
  v194 = *(v201 - 8);
  v8 = *(v194 + 64);
  __chkstk_darwin(v201);
  v193 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_356378, &qword_2D8590);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v198 = (&v179 - v12);
  v189 = sub_2CB850();
  v188 = *(v189 - 8);
  v13 = *(v188 + 64);
  __chkstk_darwin(v189);
  v187 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2CE000();
  v15 = *(v208 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v208);
  v192 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v179 - v20;
  v22 = __chkstk_darwin(v19);
  v199 = &v179 - v23;
  v24 = __chkstk_darwin(v22);
  v195 = &v179 - v25;
  v26 = __chkstk_darwin(v24);
  v182 = &v179 - v27;
  v28 = __chkstk_darwin(v26);
  v181 = &v179 - v29;
  __chkstk_darwin(v28);
  v180 = &v179 - v30;
  v186 = sub_2CA870();
  v185 = *(v186 - 8);
  v31 = v185[8];
  __chkstk_darwin(v186);
  v184 = (&v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_20410(&qword_34E480, &qword_2D2280);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v179 - v35;
  v37 = sub_2CA7B0();
  v191 = *(v37 - 8);
  v38 = *(v191 + 64);
  __chkstk_darwin(v37);
  v183 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20410(&qword_352D78, &unk_2D5320);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v179 - v42;
  v44 = sub_2CC950();
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44);
  v197 = &v179 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v200 = &v179 - v49;
  v196 = v50;
  __chkstk_darwin(v48);
  v52 = &v179 - v51;
  v53 = a1;
  v54 = v15;
  v56 = v55;
  v58 = v57;
  sub_F3F4(v53, v43, &qword_352D78, &unk_2D5320);
  v59 = (*(v56 + 48))(v43, 1, v58);
  v207 = v15;
  v203 = a2;
  if (v59 == 1)
  {
    sub_30B8(v43, &qword_352D78, &unk_2D5320);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v60 = v208;
    v61 = sub_3ED0(v208, static Logger.default);
    swift_beginAccess();
    v62 = v15[2];
    v62(v21, v61, v60);
    v63 = sub_2CDFE0();
    v64 = sub_2CE690();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v206 = v61;
      v67 = v66;
      v210 = v66;
      *v65 = 136446210;
      v68 = sub_2CCCC0();
      v70 = sub_3F08(v68, v69, &v210);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_0, v63, v64, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s lingering continuation completed successfully", v65, 0xCu);
      sub_306C(v67);
      v61 = v206;

      v71 = v207;
    }

    else
    {

      v71 = v54;
    }

    v93 = v71[1];
    v93(v21, v60);
    if (!sub_2CE810())
    {
      v62(v192, v61, v60);
      v94 = sub_2CDFE0();
      v95 = sub_2CE690();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_0, v94, v95, "PlayMediaRCHFlowWrapper#processPlaybackContinuation allowing Siri to resume as not new playback producing", v96, 2u);
      }

      v93(v192, v60);
    }

    v97 = v193;
    sub_2C9EB0();
    v204(v97);
    return (*(v194 + 8))(v97, v201);
  }

  v72 = *(v56 + 32);
  v201 = v52;
  v194 = v56 + 32;
  v193 = v72;
  (v72)(v52, v43, v58);
  v73 = sub_2CE780();
  v74 = &off_34B000;
  v75 = v200;
  v190 = v58;
  if (v73)
  {
    sub_F3F4(v206 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_input, v36, &qword_34E480, &qword_2D2280);
    v76 = v191;
    v77 = v37;
    if ((*(v191 + 48))(v36, 1, v37) == 1)
    {
      sub_30B8(v36, &qword_34E480, &qword_2D2280);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v78 = v208;
      v79 = sub_3ED0(v208, static Logger.default);
      swift_beginAccess();
      v80 = v182;
      (v54[2])(v182, v79, v78);
      v81 = sub_2CDFE0();
      v82 = sub_2CE680();
      v83 = os_log_type_enabled(v81, v82);
      v58 = v190;
      if (v83)
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v209[0] = v85;
        *v84 = 136446210;
        v86 = sub_2CCCC0();
        v88 = v58;
        v89 = v78;
        v90 = sub_3F08(v86, v87, v209);
        v74 = &off_34B000;

        *(v84 + 4) = v90;
        _os_log_impl(&dword_0, v81, v82, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s Cache invalidation: input passed for pommesResponse extraction is nil", v84, 0xCu);
        sub_306C(v85);
        v75 = v200;
        v91 = v207;

        v92 = v89;
        v58 = v88;
        v54 = v91;
        (v91[1])(v80, v92);
      }

      else
      {

        (v54[1])(v80, v78);
      }

      goto LABEL_29;
    }

    v99 = v183;
    (*(v76 + 32))(v183, v36, v77);
    v100 = v184;
    sub_2CA790();
    v101 = v185;
    v102 = v186;
    if ((v185[11])(v100, v186) == enum case for Parse.pommesResponse(_:))
    {
      (v101[12])(v100, v102);
      v103 = *v100;
      v104 = sub_2CDA30();
      v105 = *(v104 + 48);
      v106 = *(v104 + 52);
      swift_allocObject();
      if (sub_2CDA20())
      {
        sub_2CDA10();

        (*(v191 + 8))(v99, v77);
      }

      else
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v163 = v208;
        v164 = sub_3ED0(v208, static Logger.default);
        swift_beginAccess();
        v165 = v54;
        v166 = v54[2];
        v167 = v180;
        v166(v180, v164, v163);
        v168 = sub_2CDFE0();
        v169 = sub_2CE680();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v209[0] = v171;
          *v170 = 136446210;
          v172 = sub_2CCCC0();
          v174 = sub_3F08(v172, v173, v209);
          v192 = v77;
          v175 = v163;
          v176 = v174;
          v74 = &off_34B000;

          *(v170 + 4) = v176;
          _os_log_impl(&dword_0, v168, v169, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s Cache invalidation: nil PommesSearchClient instantiation", v170, 0xCu);
          sub_306C(v171);
          v75 = v200;
          v177 = v207;

          v178 = v175;
          v58 = v190;
          (v177[1])(v167, v178);
          (*(v191 + 8))(v183, v192);
          v54 = v177;
          goto LABEL_29;
        }

        (v165[1])(v167, v163);
        (*(v191 + 8))(v183, v77);
        v54 = v165;
      }
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v107 = v208;
      v108 = sub_3ED0(v208, static Logger.default);
      swift_beginAccess();
      v109 = v181;
      (v54[2])(v181, v108, v107);
      v110 = sub_2CDFE0();
      v111 = sub_2CE680();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v209[0] = v113;
        *v112 = 136446210;
        v114 = sub_2CCCC0();
        v116 = v56;
        v117 = sub_3F08(v114, v115, v209);
        v75 = v200;
        v192 = v77;
        v118 = v207;

        *(v112 + 4) = v117;
        v56 = v116;
        v54 = v118;
        v74 = &off_34B000;
        _os_log_impl(&dword_0, v110, v111, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s Cache invalidation: non pommes-response input", v112, 0xCu);
        sub_306C(v113);

        (v54[1])(v109, v208);
        (*(v191 + 8))(v183, v192);
      }

      else
      {

        (v54[1])(v109, v208);
        (*(v191 + 8))(v99, v77);
      }

      (v185[1])(v184, v186);
    }

    v58 = v190;
  }

LABEL_29:
  if (v74[491] != -1)
  {
    swift_once();
  }

  v119 = v208;
  v120 = sub_3ED0(v208, static Logger.default);
  swift_beginAccess();
  v121 = v54[2];
  v122 = v195;
  v186 = v120;
  v185 = v54 + 2;
  v184 = v121;
  (v121)(v195, v120, v119);
  v123 = *(v56 + 16);
  v200 = (v56 + 16);
  v192 = v123;
  (v123)(v75, v201, v58);
  v124 = sub_2CDFE0();
  v125 = v56;
  v126 = sub_2CE680();
  v127 = os_log_type_enabled(v124, v126);
  v179 = v125;
  if (v127)
  {
    v128 = v75;
    v129 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v209[0] = v183;
    *v129 = 136446466;
    v130 = sub_2CCCC0();
    v132 = sub_3F08(v130, v131, v209);

    *(v129 + 4) = v132;
    *(v129 + 12) = 2082;
    v133 = v58;
    v134 = v187;
    sub_2CC940();
    v135 = sub_2CB840();
    v137 = v136;
    (*(v188 + 8))(v134, v189);
    v191 = *(v125 + 8);
    (v191)(v128, v133);
    v138 = sub_3F08(v135, v137, v209);

    *(v129 + 14) = v138;
    _os_log_impl(&dword_0, v124, v126, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s lingering continuation completed with error PlaybackCodeAndDescription: %{public}s", v129, 0x16u);
    swift_arrayDestroy();
    v119 = v208;

    v139 = v207;
  }

  else
  {

    v191 = *(v125 + 8);
    (v191)(v75, v58);
    v139 = v54;
  }

  v140 = v139[1];
  v140(v122, v119);
  v141 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:6 userActivity:0];
  v142 = v203;
  v143 = v198;
  *v198 = v202;
  *(v143 + 8) = v142;
  *(v143 + 16) = v141;
  v144 = enum case for RCHFlowResult.complete<A, B>(_:);
  v145 = sub_20410(&qword_3524B0, &unk_2D8440);
  v146 = *(v145 - 8);
  (*(v146 + 104))(v143, v144, v145);
  (*(v146 + 56))(v143, 0, 1, v145);
  v147 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v148 = v206;
  swift_beginAccess();

  v195 = v142;
  v203 = v141;
  sub_27579C(v143, v148 + v147);
  swift_endAccess();
  v149 = v199;
  (v184)(v199, v186, v119);
  v150 = sub_2CDFE0();
  v151 = sub_2CE690();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&dword_0, v150, v151, "PlayMediaRCHFlowWrapper#execute unexpected error causing cancel of any previously requested prepareForAudioHandoff", v152, 2u);
  }

  v140(v149, v119);
  sub_2C9A00();
  v208 = v209[4];
  v207 = sub_35E0(v209, v209[3]);
  v153 = v197;
  v154 = v190;
  (v192)(v197, v201, v190);
  v155 = (*(v179 + 80) + 24) & ~*(v179 + 80);
  v156 = (v196 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
  v158 = swift_allocObject();
  *(v158 + 16) = v206;
  (v193)(v158 + v155, v153, v154);
  *(v158 + v156) = v202;
  v159 = v195;
  *(v158 + v157) = v195;
  v160 = (v158 + ((v157 + 15) & 0xFFFFFFFFFFFFFFF8));
  v161 = v205;
  *v160 = v204;
  v160[1] = v161;

  v162 = v159;

  sub_2CA180();

  (v191)(v201, v154);
  return sub_306C(v209);
}

uint64_t sub_2642CC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a2;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "PlayMediaRCHFlowWrapper#execute unexpected error cancelled any previously requested prepareForAudioHandoff; evaluating fallback dialog...", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a3;
  v20 = v24;
  *(v19 + 32) = a4;
  *(v19 + 40) = v20;
  *(v19 + 48) = a6;

  v21 = a4;

  sub_26767C(v25, a3, v21, sub_2758B8, v19);
}

uint64_t sub_264510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v118 = a6;
  v119 = a5;
  v109 = a3;
  v110 = a4;
  v111 = a1;
  v112 = a2;
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v108 = &v97 - v8;
  v9 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v107 = &v97 - v11;
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v106 = &v97 - v14;
  v104 = sub_2CCB20();
  v103 = *(v104 - 8);
  v15 = *(v103 + 64);
  __chkstk_darwin(v104);
  v97 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2CCB30();
  v99 = *(v101 - 8);
  v17 = *(v99 + 64);
  __chkstk_darwin(v101);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2CCAC0();
  v20 = *(v98 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v98);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2C9EC0();
  v116 = *(v24 - 8);
  v117 = v24;
  v25 = *(v116 + 64);
  __chkstk_darwin(v24);
  v115 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2C8E80();
  v100 = *(v102 - 8);
  v27 = *(v100 + 64);
  __chkstk_darwin(v102);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CE000();
  v113 = *(v30 - 8);
  v114 = v30;
  v31 = *(v113 + 64);
  v32 = __chkstk_darwin(v30);
  v105 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v97 - v34;
  v36 = sub_20410(&unk_3519A0, &qword_2D0980);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = &v97 - v38;
  v40 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v97 - v42;
  sub_F3F4(v111, v39, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v112;
    sub_30B8(v39, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v45 = v114;
    v46 = sub_3ED0(v114, static Logger.default);
    swift_beginAccess();
    v47 = v113;
    (*(v113 + 16))(v35, v46, v45);
    v48 = sub_2CDFE0();
    v49 = sub_2CE680();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "PlayMediaRCHFlowWrapper#execute unexpected error evaluating failure dialog template", v50, 2u);
    }

    (*(v47 + 8))(v35, v45);
    v51 = v98;
    (*(v20 + 104))(v23, enum case for AdditionalMetricsDescription.ModuleName.pmrfw(_:), v98);
    v52 = v99;
    v53 = v101;
    (*(v99 + 104))(v19, enum case for AdditionalMetricsDescription.SourceFunction.procPly(_:), v101);
    v54 = v103;
    v55 = v97;
    v56 = v104;
    (*(v103 + 104))(v97, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v104);
    v57 = sub_2CCAD0();
    v113 = v58;
    v114 = v57;
    (*(v54 + 8))(v55, v56);
    (*(v52 + 8))(v19, v53);
    (*(v20 + 8))(v23, v51);
    v59 = *(v44 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider + 32);
    sub_35E0((v44 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider), *(v44 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider + 24));
    v60 = enum case for ActivityType.failed(_:);
    v61 = sub_2C9C20();
    v62 = *(v61 - 8);
    v63 = v106;
    (*(v62 + 104))(v106, v60, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    v64 = sub_2CA130();
    v65 = v107;
    (*(*(v64 - 8) + 56))(v107, 1, 1, v64);
    v66 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v67 = sub_2C98F0();
    v68 = *(v67 - 8);
    v69 = v108;
    (*(v68 + 104))(v108, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v69, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v65, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v63, &qword_34CB88, &unk_2D0D90);
    v70 = v115;
    sub_2C9EB0();
    v119(v70);
    return (*(v116 + 8))(v70, v117);
  }

  else
  {
    sub_14A58(v39, v43, &qword_34C6E8, &unk_2D0FF0);
    v72 = *(v112 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_viewFactory);
    sub_2C9C00();
    sub_2C98E0();
    v73 = sub_2CB540();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v76 = sub_2CB530();
    v122 = v73;
    v123 = sub_270D7C(&unk_353100, &type metadata accessor for SiriEnvironmentBackedDeviceState);
    v121[0] = v76;
    sub_2C9890();
    sub_306C(v121);
    sub_2C98B0();

    sub_2C98C0();

    v77 = [objc_allocWithZone(SAUIAddViews) init];
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    isa = sub_2CE400().super.isa;

    [v77 setViews:isa];

    [v77 setDialogPhase:SAUIDialogPhaseErrorValue];
    [v77 setTemporary:0];
    v79 = v77;
    sub_2CBC60();
    sub_35E0(v121, v122);
    sub_2CBE60();
    if (v80)
    {
      v81 = sub_2CE260();
    }

    else
    {
      v81 = 0;
    }

    v83 = v113;
    v82 = v114;
    v84 = v105;
    sub_306C(v121);
    [v79 setRefId:v81];

    v85 = v79;
    sub_2C8E70();
    sub_2C8E50();
    (*(v100 + 8))(v29, v102);
    v86 = sub_2CE260();

    [v85 setAceId:v86];

    sub_2C9A00();
    sub_35E0(v121, v122);
    sub_2CA150();
    sub_306C(v121);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v87 = sub_3ED0(v82, static Logger.default);
    swift_beginAccess();
    (*(v83 + 16))(v84, v87, v82);
    v88 = sub_2CDFE0();
    v89 = sub_2CE690();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v120 = v91;
      *v90 = 136446210;
      v92 = sub_2CCCC0();
      v114 = v43;
      v94 = v83;
      v95 = sub_3F08(v92, v93, &v120);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_0, v88, v89, "PlayMediaRCHFlowWrapper#execute %{public}s sent failure ace view for failed continuation", v90, 0xCu);
      sub_306C(v91);

      v43 = v114;
      (*(v94 + 8))(v84, v82);
    }

    else
    {

      (*(v83 + 8))(v84, v82);
    }

    v96 = v115;
    sub_2C9EB0();
    v119(v96);

    (*(v116 + 8))(v96, v117);
    return sub_30B8(v43, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_265310@<X0>(uint64_t *a1@<X8>)
{
  v168 = a1;
  v1 = sub_20410(&qword_356378, &qword_2D8590);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v153 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v163 = (&v148 - v5);
  v6 = sub_20410(&qword_3524B0, &unk_2D8440);
  v171 = *(v6 - 8);
  v7 = *(v171 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v166 = &v148 - v11;
  v162 = sub_2CE150();
  v161 = *(v162 - 8);
  v12 = *(v161 + 8);
  __chkstk_darwin(v162);
  v157 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2CE180();
  v14 = *(v156 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v156);
  v17 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v154 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v150 = &v148 - v24;
  v25 = __chkstk_darwin(v23);
  v151 = &v148 - v26;
  v27 = __chkstk_darwin(v25);
  v149 = &v148 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v148 - v30;
  __chkstk_darwin(v29);
  v33 = &v148 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0xE000000000000000;
  v167 = v34;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v152 = v31;
  v155 = v10;
  v169 = v6;
  v35 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v36 = v19[2];
  v160 = v35;
  v159 = v19 + 2;
  v158 = v36;
  (v36)(v33, v35, v18);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "PlayMediaRCHFlowWrapper#exit", v39, 2u);
  }

  v40 = v19[1];
  v165 = v19 + 1;
  v164 = v40;
  v40(v33, v18);
  sub_2CBED0();
  sub_2CBEC0();
  sub_2CBEB0();

  sub_2CE170();
  v41 = sub_2CB9F0();
  v172 = v18;
  v42 = *(v14 + 8);
  v43 = v156;
  v42(v17, v156);
  aBlock[4] = sub_266758;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_33C3E8;
  v44 = _Block_copy(aBlock);
  sub_2CE160();
  v173[0] = _swiftEmptyArrayStorage;
  sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80);
  v45 = v157;
  v46 = v162;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v44);

  (*(v161 + 1))(v45, v46);
  v42(v17, v43);
  v47 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v48 = v170;
  swift_beginAccess();
  v49 = v48 + v47;
  v50 = v163;
  sub_F3F4(v49, v163, &qword_356378, &qword_2D8590);
  v51 = v171;
  v52 = v169;
  if ((*(v171 + 48))(v50, 1, v169) != 1)
  {
    v64 = v172;
    v65 = v51 + 32;
    v66 = *(v51 + 32);
    v67 = v166;
    (v66)(v166, v50, v52);
    v68 = v155;
    v163 = *(v51 + 16);
    (v163)(v155, v67, v52);
    v69 = (*(v51 + 88))(v68, v52);
    if (v69 == enum case for RCHFlowResult.complete<A, B>(_:))
    {
      v161 = v66;
      v162 = v51 + 32;
      (*(v51 + 96))(v68, v52);
      v70 = *v68;
      v71 = v68[1];
      v72 = v68[2];
      v73 = v152;
      v158();
      v74 = v72;

      v75 = v71;
      v76 = sub_2CDFE0();
      v77 = sub_2CE690();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v160 = v74;
        v79 = v78;
        v174 = swift_slowAlloc();
        *v79 = 136446978;
        v80 = sub_2CCCC0();
        v82 = sub_3F08(v80, v81, &v174);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2080;
        v173[0] = [v160 code];
        v83 = sub_2CEE70();
        v85 = sub_3F08(v83, v84, &v174);

        *(v79 + 14) = v85;
        *(v79 + 22) = 2080;
        v173[0] = sub_2CCF90();
        v173[1] = v86;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v87 = sub_2CE2A0();
        v89 = sub_3F08(v87, v88, &v174);

        *(v79 + 24) = v89;
        *(v79 + 32) = 2080;
        v90 = sub_2CE770();
        v92 = sub_3F08(v90, v91, &v174);

        *(v79 + 34) = v92;
        v48 = v170;
        _os_log_impl(&dword_0, v76, v77, "PlayMediaRCHFlowWrapper#exit %{public}s SUCCESS response code:%s with app:%s intent:%s", v79, 0x2Au);
        swift_arrayDestroy();
        v52 = v169;

        v74 = v160;
        v51 = v171;

        v93 = v152;
      }

      else
      {

        v93 = v73;
      }

      v164(v93, v172);
      v58 = v167;
      *(v167 + 16) = 0x6574656C706D6F63;
      *(v58 + 24) = 0xE800000000000000;
      v109 = v166;
      sub_266EFC(v166);
      v110 = v153;
      (v163)(v153, v109, v52);
      (*(v51 + 56))(v110, 0, 1, v52);
      sub_272348(v110);
      sub_30B8(v110, &qword_356378, &qword_2D8590);
      sub_272654(v109);
      sub_2730D4(v109);
      sub_273CB0(v109);

      v111 = v168;
      v112 = v109;
      v113 = v52;
    }

    else
    {
      if (v69 != enum case for RCHFlowResult.error<A, B>(_:))
      {
        if (v69 == enum case for RCHFlowResult.cancelled<A, B>(_:))
        {
          v114 = v149;
          v115 = v64;
          (v158)(v149, v160, v64);
          v116 = sub_2CDFE0();
          v117 = sub_2CE680();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v162 = v65;
            v120 = v119;
            v173[0] = v119;
            *v118 = 136446210;
            v121 = sub_2CCCC0();
            v123 = v66;
            v124 = sub_3F08(v121, v122, v173);

            *(v118 + 4) = v124;
            v66 = v123;
            _os_log_impl(&dword_0, v116, v117, "PlayMediaRCHFlowWrapper#exit %{public}s CANCELLED response", v118, 0xCu);
            sub_306C(v120);

            v125 = v149;
            v126 = v172;
          }

          else
          {

            v125 = v114;
            v126 = v115;
          }

          v164(v125, v126);
          v58 = v167;
          *(v167 + 16) = 0x656C6C65636E6163;
          *(v58 + 24) = 0xE900000000000064;
          v141 = v166;
          sub_266EFC(v166);
          v142 = v153;
          (v163)(v153, v141, v52);
          (*(v171 + 56))(v142, 0, 1, v52);
          sub_272348(v142);
          sub_30B8(v142, &qword_356378, &qword_2D8590);
          sub_272654(v141);
          sub_2730D4(v141);
          sub_273CB0(v141);
          (v66)(v168, v141, v52);
        }

        else
        {
          v131 = v150;
          (v158)(v150, v160, v64);
          v132 = sub_2CDFE0();
          v133 = sub_2CE690();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v173[0] = v135;
            *v134 = 136446210;
            v136 = sub_2CCCC0();
            v138 = sub_3F08(v136, v137, v173);

            *(v134 + 4) = v138;
            v51 = v171;
            _os_log_impl(&dword_0, v132, v133, "PlayMediaRCHFlowWrapper#exit %{public}s UNKNOWN response", v134, 0xCu);
            sub_306C(v135);

            v139 = v150;
            v140 = v172;
          }

          else
          {

            v139 = v131;
            v140 = v64;
          }

          v164(v139, v140);
          v58 = v167;
          *(v167 + 16) = 0x6E776F6E6B6E75;
          *(v58 + 24) = 0xE700000000000000;
          v143 = sub_2CB850();
          sub_270D7C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
          v144 = swift_allocError();
          (*(*(v143 - 8) + 104))(v145, enum case for PlaybackCode.ceGE94(_:), v143);
          v146 = *(v51 + 8);
          v146(v166, v52);
          v147 = v168;
          *v168 = v144;
          *(v147 + 8) = 0;
          (*(v51 + 104))();
          v146(v155, v52);
        }

        goto LABEL_23;
      }

      v161 = v66;
      v162 = v51 + 32;
      (*(v51 + 96))(v68, v52);
      v94 = *v68;
      v95 = *(v68 + 8);
      v96 = v151;
      v97 = v64;
      (v158)(v151, v160, v64);
      swift_errorRetain();
      v98 = sub_2CDFE0();
      v99 = sub_2CE680();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = v95;
        v101 = swift_slowAlloc();
        v173[0] = swift_slowAlloc();
        *v101 = 136446722;
        v102 = sub_2CCCC0();
        v104 = sub_3F08(v102, v103, v173);

        *(v101 + 4) = v104;
        *(v101 + 12) = 1024;
        *(v101 + 14) = v100;
        *(v101 + 18) = 2082;
        swift_getErrorValue();
        v105 = sub_2CEEF0();
        v107 = sub_3F08(v105, v106, v173);

        *(v101 + 20) = v107;
        v51 = v171;
        _os_log_impl(&dword_0, v98, v99, "PlayMediaRCHFlowWrapper#exit %{public}s ERROR response. handled:%{BOOL}d error: %{public}s", v101, 0x1Cu);
        swift_arrayDestroy();

        v108 = v151;
      }

      else
      {

        v108 = v96;
      }

      v164(v108, v97);
      v58 = v167;
      *(v167 + 16) = 0x726F727265;
      *(v58 + 24) = 0xE500000000000000;
      v127 = v166;
      v48 = v170;
      sub_266EFC(v166);
      v128 = v153;
      v129 = v169;
      (v163)(v153, v127, v169);
      (*(v51 + 56))(v128, 0, 1, v129);
      sub_272348(v128);
      sub_30B8(v128, &qword_356378, &qword_2D8590);
      sub_272654(v127);
      sub_2730D4(v127);
      sub_273CB0(v127);

      v111 = v168;
      v112 = v127;
      v113 = v129;
    }

    v161(v111, v112, v113);
    goto LABEL_23;
  }

  sub_30B8(v50, &qword_356378, &qword_2D8590);
  v53 = v154;
  v54 = v172;
  (v158)(v154, v160);
  v55 = sub_2CDFE0();
  v56 = sub_2CE670();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v167;
  if (v57)
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_0, v55, v56, "PlayMediaRCHFlowWrapper#exit missing saved result", v59, 2u);
  }

  v164(v53, v54);
  v60 = sub_2CB850();
  sub_270D7C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v61 = swift_allocError();
  (*(*(v60 - 8) + 104))(v62, enum case for PlaybackCode.ceGE93(_:), v60);
  v63 = v168;
  *v168 = v61;
  *(v63 + 8) = 0;
  (*(v51 + 104))();
LABEL_23:
  sub_274228(v48, v58);
}

uint64_t sub_266764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = sub_20410(&qword_3524B0, &unk_2D8440);
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_2CE000();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return _swift_task_switch(sub_2668A8, 0, 0);
}

uint64_t sub_2668A8()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = sub_3ED0(v2, static Logger.default);
  v0[26] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[27] = v5;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42 = v5;
  v43 = v4;
  v5(v1, v4, v2);
  v6 = sub_2CDFE0();
  v7 = sub_2CE670();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "PlayMediaRCHFlowWrapper#donateIntentForEngagement checking for intent", v8, 2u);
  }

  v9 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[18];
  v15 = v0[15];

  v16 = *(v11 + 8);
  v0[29] = v16;
  v16(v9, v10);
  (*(v12 + 16))(v13, v15, v14);
  if ((*(v12 + 88))(v13, v14) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v17 = v0[20];
    (*(v0[19] + 96))(v17, v0[18]);
    v19 = *v17;
    v18 = v17[1];
    v0[30] = v18;

    sub_2CD180();
    sub_2CD170();
    v20 = v0[10];
    v21 = v0[11];
    v22 = sub_35E0(v0 + 7, v20);
    v0[5] = v20;
    v0[6] = *(v21 + 16);
    v23 = sub_F390(v0 + 2);
    (*(*(v20 - 8) + 16))(v23, v22, v20);
    sub_306C(v0 + 7);
    v24 = async function pointer to static SuggestionsDonationProvider.donateIntentForEngagement(intent:currentRequestId:suggestionsAPIClient:)[1];
    v25 = swift_task_alloc();
    v0[31] = v25;
    *v25 = v0;
    v25[1] = sub_266CA8;
    v26 = v0[16];
    v27 = v0[17];

    return static SuggestionsDonationProvider.donateIntentForEngagement(intent:currentRequestId:suggestionsAPIClient:)(v18, v26, v27, v0 + 2);
  }

  else
  {
    v28 = v0[24];
    v29 = v0[21];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v42(v28, v43, v29);
    v30 = sub_2CDFE0();
    v31 = sub_2CE690();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "PlayMediaRCHFlowWrapper#donateIntentForEngagement no intent found in response", v32, 2u);
    }

    v33 = v0[29];
    v34 = v0[24];
    v35 = v0[25];
    v37 = v0[22];
    v36 = v0[23];
    v39 = v0[20];
    v38 = v0[21];

    v33(v34, v38);

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_266CA8()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v4 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_266DAC, 0, 0);
}

uint64_t sub_266DAC()
{
  v1 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 184), *(v0 + 208), *(v0 + 168));
  v2 = sub_2CDFE0();
  v3 = sub_2CE670();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 240);
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "PlayMediaRCHFlowWrapper#donateIntentForEngagement complete", v5, 2u);
  }

  else
  {

    v2 = *(v0 + 240);
  }

  v6 = *(v0 + 232);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);

  v6(v9, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_266EFC(uint64_t a1)
{
  v64 = sub_2CE000();
  v66 = *(v64 - 8);
  v2 = *(v66 + 64);
  v3 = __chkstk_darwin(v64);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v61 = &v54 - v7;
  __chkstk_darwin(v6);
  v65 = &v54 - v8;
  v9 = sub_20410(&qword_3524B0, &unk_2D8440);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v54 - v15);
  v17 = *(v10 + 16);
  v17(&v54 - v15, a1, v9);
  v18 = *(v10 + 88);
  if (v18(v16, v9) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v10 + 96))(v16, v9);
    v19 = *v16;
    v63 = v16[1];
    v60 = v16[2];
    v17(v14, a1, v9);
    v59 = v18(v14, v9);
    (*(v10 + 8))(v14, v9);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = v64;
    v21 = sub_3ED0(v64, static Logger.default);
    swift_beginAccess();
    v22 = v66;
    v23 = *(v66 + 16);
    v23(v65, v21, v20);
    v24 = sub_2CDFE0();
    v25 = sub_2CE690();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "PlayMediaRCHFlowWrapper#appSelectionRecord Saving...", v26, 2u);
      v22 = v66;
    }

    v56 = enum case for RCHFlowResult.cancelled<A, B>(_:);

    v28 = *(v22 + 8);
    v27 = v22 + 8;
    v55 = v28;
    v28(v65, v20);

    v58 = v63;
    v29 = v60;
    v57 = [v60 code];
    v62 = *(v62 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_pseSignalsStitcher);
    sub_2CC2B0();
    v65 = swift_allocBox();
    sub_2CC2A0();

    v30 = sub_2CCF90();
    if (v31)
    {
      v32 = v31;
      v54 = v30;
      v33 = v61;
      v23(v61, v21, v20);
      v34 = v33;

      v35 = sub_2CDFE0();
      v36 = sub_2CE670();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v66 = v27;
        v38 = v37;
        v39 = swift_slowAlloc();
        v67[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_3F08(v54, v32, v67);
        _os_log_impl(&dword_0, v35, v36, "AppSelectionContext#saveRecord setting lastBundleIdentifier=%s", v38, 0xCu);
        sub_306C(v39);
        v29 = v60;
      }

      v55(v34, v20);
      sub_2CC260();
    }

    v47 = v59 == v56;

    sub_2CBC60();
    sub_35E0(v67, v67[3]);
    v48 = sub_2CBE60();
    v50 = v49;
    sub_306C(v67);
    sub_2CC0E0();
    v51 = swift_allocObject();
    *(v51 + 16) = v47;
    *(v51 + 24) = v48;
    *(v51 + 32) = v50;
    v52 = v62;
    *(v51 + 40) = v63;
    *(v51 + 48) = v19;
    *(v51 + 56) = v65;
    *(v51 + 64) = v52;
    *(v51 + 72) = v57;
    *(v51 + 80) = 0;

    v53 = v58;
    sub_2CC0C0();
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v40 = v64;
    v41 = sub_3ED0(v64, static Logger.default);
    swift_beginAccess();
    v42 = v66;
    (*(v66 + 16))(v5, v41, v40);
    v43 = sub_2CDFE0();
    v44 = sub_2CE680();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "PlayMediaRCHFlowWrapper#appSelectionRecord unable to get RCH result", v45, 2u);
    }

    return (*(v42 + 8))(v5, v40);
  }
}

void sub_26767C(uint64_t a1, unint64_t a2, void *a3, char *a4, char *a5)
{
  v434 = a5;
  v433 = a4;
  v432 = a3;
  v429 = a2;
  v418 = sub_2CB9E0();
  v417 = *(v418 - 8);
  v6 = *(v417 + 64);
  __chkstk_darwin(v418);
  v416 = &v382 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = sub_2CC760();
  v385 = *(v392 - 8);
  v8 = *(v385 + 64);
  __chkstk_darwin(v392);
  v382 = &v382 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = sub_20410(&qword_34FCB0, &unk_2D8580);
  v10 = *(*(v384 - 8) + 64);
  __chkstk_darwin(v384);
  v394 = &v382 - v11;
  v12 = sub_20410(&qword_34FCB8, &unk_2D3580);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v383 = &v382 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v390 = &v382 - v17;
  __chkstk_darwin(v16);
  v393 = &v382 - v18;
  v439 = sub_2CB850();
  v19 = *(v439 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v439);
  v395 = &v382 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v396 = &v382 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v382 - v26;
  v28 = __chkstk_darwin(v25);
  v435 = &v382 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v382 - v31;
  v33 = __chkstk_darwin(v30);
  v424 = &v382 - v34;
  __chkstk_darwin(v33);
  v36 = &v382 - v35;
  v37 = sub_2CC950();
  v38 = *(v37 - 8);
  v39 = v38[8];
  v40 = __chkstk_darwin(v37);
  v398 = &v382 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v382 - v42;
  v44 = sub_2CE000();
  v45 = *(v44 - 8);
  v46 = v45[8];
  v47 = __chkstk_darwin(v44);
  v423 = &v382 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v421 = &v382 - v50;
  v51 = __chkstk_darwin(v49);
  v420 = &v382 - v52;
  v53 = __chkstk_darwin(v51);
  v419 = &v382 - v54;
  v55 = __chkstk_darwin(v53);
  v415 = &v382 - v56;
  v57 = __chkstk_darwin(v55);
  v414 = &v382 - v58;
  v59 = __chkstk_darwin(v57);
  v413 = &v382 - v60;
  v61 = __chkstk_darwin(v59);
  v412 = &v382 - v62;
  v63 = __chkstk_darwin(v61);
  v411 = &v382 - v64;
  v65 = __chkstk_darwin(v63);
  v410 = &v382 - v66;
  v67 = __chkstk_darwin(v65);
  v409 = &v382 - v68;
  v69 = __chkstk_darwin(v67);
  v408 = &v382 - v70;
  v71 = __chkstk_darwin(v69);
  v406 = &v382 - v72;
  v73 = __chkstk_darwin(v71);
  v407 = &v382 - v74;
  v75 = __chkstk_darwin(v73);
  v404 = &v382 - v76;
  v77 = __chkstk_darwin(v75);
  v403 = &v382 - v78;
  v79 = __chkstk_darwin(v77);
  v402 = &v382 - v80;
  v81 = __chkstk_darwin(v79);
  v401 = &v382 - v82;
  v83 = __chkstk_darwin(v81);
  v397 = &v382 - v84;
  v85 = __chkstk_darwin(v83);
  v391 = &v382 - v86;
  v87 = __chkstk_darwin(v85);
  v430 = &v382 - v88;
  v89 = __chkstk_darwin(v87);
  v422 = &v382 - v90;
  __chkstk_darwin(v89);
  v440 = &v382 - v91;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v425 = v32;
  v426 = v27;
  v92 = sub_3ED0(v44, static Logger.default);
  swift_beginAccess();
  v93 = v45[2];
  v436 = v92;
  v437 = v45 + 2;
  v438 = v93;
  v93(v440, v92, v44);
  v94 = v38[2];
  v387 = v38 + 2;
  v386 = v94;
  v94(v43, a1, v37);
  v95 = sub_2CDFE0();
  v96 = a1;
  v97 = sub_2CE690();
  v98 = os_log_type_enabled(v95, v97);
  v441 = v45;
  v442 = v44;
  v399 = v37;
  v389 = v38;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v405 = v96;
    v100 = v99;
    v427 = v99;
    v428 = swift_slowAlloc();
    *&v447 = v428;
    *v100 = 136446210;
    sub_2CC940();
    v101 = sub_2CB840();
    v103 = v102;
    v104 = v439;
    (*(v19 + 8))(v36, v439);
    v388 = v38[1];
    v388(v43, v37);
    v105 = sub_3F08(v101, v103, &v447);

    v106 = v427;
    *(v427 + 4) = v105;
    _os_log_impl(&dword_0, v95, v97, "PlayMediaRCHFlowWrapper#dialogForError code %{public}s", v106, 0xCu);
    sub_306C(v428);

    v107 = v442;
    v108 = v405;

    v109 = v441[1];
    v109(v440, v107);
  }

  else
  {

    v388 = v38[1];
    v388(v43, v37);
    v109 = v45[1];
    v109(v440, v44);
    v108 = v96;
    v104 = v439;
  }

  v400 = sub_274B20();
  v428 = v110;
  sub_2CB750();
  sub_2CC940();
  v111 = sub_2CB740();
  v112 = *(v19 + 8);
  v427 = v36;
  v113 = v36;
  v114 = (v19 + 8);
  v112(v113, v104);
  v115 = v104;
  v440 = v109;
  if (v111)
  {
    v116 = v112;
    v117 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
    v118 = v424;
    sub_2CC940();
    v119 = sub_112C0(_swiftEmptyArrayStorage);
    sub_270F9C(v119, v117, v118, v429, v432, v433, v434);
    v116(v118, v104);

    return;
  }

  v120 = v425;
  sub_2CC940();
  v122 = *(v19 + 104);
  v121 = (v19 + 104);
  v424 = v122;
  (v122)(v435, enum case for PlaybackCode.applicationTerminated(_:), v115);
  v123 = sub_270D7C(&qword_352D80, &type metadata accessor for PlaybackCode);
  sub_2CE3E0();
  v422 = v123;
  sub_2CE3E0();
  if (v447 == v446)
  {
    v112(v435, v115);
    v124 = v120;
    v125 = v112;
    v126 = v114;
    v127 = v125;
    (v125)(v124, v115);

    v128 = v427;
    v438(v430, v436, v442);
  }

  else
  {
    v129 = v114;
    v130 = v109;
    v131 = v115;
    v132 = sub_2CEEA0();
    v112(v435, v131);
    v133 = v120;
    v134 = v131;
    v109 = v130;
    v135 = v112;
    v126 = v129;
    v127 = v135;
    (v135)(v133, v134);

    v128 = v427;
    if ((v132 & 1) == 0)
    {
      goto LABEL_15;
    }

    v438(v430, v436, v442);
  }

  v136 = sub_2CDFE0();
  v137 = sub_2CE690();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    *v138 = 0;
    _os_log_impl(&dword_0, v136, v137, "PlayMediaRCHFlowWrapper#dialogForError capturing non special case applicationTerminated", v138, 2u);
  }

  v109(v430, v442);
LABEL_15:
  sub_2CC940();
  v139 = v426;
  v140 = v439;
  v141 = v108;
  v142 = v424;
  (v424)(v426, enum case for PlaybackCode.subscriptionError(_:), v439);
  sub_270D7C(&qword_353CD8, &type metadata accessor for PlaybackCode);
  v143 = sub_2CE250();
  (v127)(v139, v140);
  (v127)(v128, v140);
  if (v143)
  {

    v144 = v423;
    v145 = v442;
    v438(v423, v436, v442);
    v146 = sub_2CDFE0();
    v147 = sub_2CE690();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&dword_0, v146, v147, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for Podcast subscription error code", v148, 2u);
    }

    (v440)(v144, v145);
    sub_20410(&unk_356F30, &qword_2D69C0);
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_2D0090;
    *(v149 + 32) = 0x656C746974;
    *(v149 + 40) = 0xE500000000000000;
    v150 = v432;
    v151 = sub_1D05D8();
    if (v152)
    {
      v153 = v151;
    }

    else
    {
      v153 = 0;
    }

    v154 = 0xE000000000000000;
    if (v152)
    {
      v154 = v152;
    }

    *(v149 + 48) = v153;
    *(v149 + 56) = v154;
    v155 = sub_90A9C(v149);
    swift_setDeallocating();
    sub_30B8(v149 + 32, &qword_354748, &qword_2D69C8);
    swift_deallocClassInstance();
    v156 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
    v157 = sub_2349AC(v155);

    v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v449 = &off_3381B8;
    *&v447 = v150;
    v158 = v150;
    sub_24C478(v157, v429, &v447, v433, v434);
    goto LABEL_24;
  }

  sub_2CC940();
  v142(v139, enum case for PlaybackCode.emptyLibrary(_:), v140);
  v159 = sub_2CE250();
  (v127)(v139, v140);
  (v127)(v128, v140);
  if ((v159 & 1) == 0)
  {
    sub_2CC940();
    v142(v139, enum case for PlaybackCode.playbackDeviceNotFound(_:), v140);
    v167 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v167)
    {

      v168 = v420;
      v169 = v442;
      v438(v420, v436, v442);
      v170 = sub_2CDFE0();
      v171 = sub_2CE690();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&dword_0, v170, v171, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for playbackDeviceNotFound code", v172, 2u);
      }

      (v440)(v168, v169);
      v173 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v174 = v432;
      sub_24B0E0(&v447, v433, v434);
      goto LABEL_25;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.maxStreamCountReached(_:), v140);
    v175 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v175)
    {

      v176 = v419;
      v177 = v442;
      v438(v419, v436, v442);
      v178 = sub_2CDFE0();
      v179 = sub_2CE690();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&dword_0, v178, v179, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for maxStreamCountReached code", v180, 2u);
      }

      (v440)(v176, v177);
      v181 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v182 = v432;
      sub_24B760(&v447, v433, v434);
      goto LABEL_25;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.connectionFailed(_:), v140);
    v183 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v183)
    {

      v184 = v415;
      v185 = v442;
      v438(v415, v436, v442);
      v186 = sub_2CDFE0();
      v187 = sub_2CE690();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&dword_0, v186, v187, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for connectionFailed code", v188, 2u);
      }

      (v440)(v184, v185);
      v189 = v416;
      sub_2CB9C0();
      v190 = sub_2CB9D0();
      (*(v417 + 8))(v189, v418);
      v191 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v192 = v432;
      if (v190)
      {
        sub_24F254(v429, &v447, v433, v434);
      }

      else
      {
        sub_24EBD4(v429, &v447, v433, v434);
      }

      goto LABEL_25;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.radioRestrictedLocation(_:), v140);
    v193 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v193)
    {

      v194 = v414;
      v195 = v442;
      v438(v414, v436, v442);
      v196 = sub_2CDFE0();
      v197 = sub_2CE690();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        *v198 = 0;
        _os_log_impl(&dword_0, v196, v197, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for radioRestrictedLocation code", v198, 2u);
      }

      (v440)(v194, v195);
      v199 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v200 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v201 = v432;
      sub_362B0(v200, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.couldNotDiscoverClusterLeader(_:), v140);
    v202 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v202)
    {

      v203 = v413;
      v204 = v442;
      v438(v413, v436, v442);
      v205 = sub_2CDFE0();
      v206 = sub_2CE690();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *v207 = 0;
        _os_log_impl(&dword_0, v205, v206, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for couldNotDiscoverClusterLeader code", v207, 2u);
      }

      (v440)(v203, v204);
      v208 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v209 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v210 = v432;
      sub_36920(v209, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.timedOutWaitingForCanBeNowPlaying(_:), v140);
    v211 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v211)
    {

      v212 = v412;
      v213 = v442;
      v438(v412, v436, v442);
      v214 = sub_2CDFE0();
      v215 = sub_2CE690();
      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        *v216 = 0;
        _os_log_impl(&dword_0, v214, v215, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for timedOutWaitingForCanBeNowPlaying code", v216, 2u);
      }

      (v440)(v212, v213);
      v217 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v218 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v219 = v432;
      sub_36F90(v218, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.ageVerificationExplicitContent(_:), v140);
    v220 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v220)
    {

      v221 = v411;
      v222 = v442;
      v438(v411, v436, v442);
      v223 = sub_2CDFE0();
      v224 = sub_2CE690();
      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        *v225 = 0;
        _os_log_impl(&dword_0, v223, v224, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for ageVerificationExplicitContent (explicitContentRestricted) code", v225, 2u);
      }

      (v440)(v221, v222);
      v226 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v227 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v228 = v432;
      sub_2448A0(v227, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.xSchemeURLError(_:), v140);
    v229 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v229)
    {

      v230 = v410;
      v231 = v442;
      v438(v410, v436, v442);
      v232 = sub_2CDFE0();
      v233 = sub_2CE690();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        *v234 = 0;
        _os_log_impl(&dword_0, v232, v233, "PlayMediaRCHFlowWrapper#dialogForError using XSchemeURLError handling and dialoging", v234, 2u);
      }

      (v440)(v230, v231);
      sub_20410(&unk_353120, &unk_2D0B50);
      v235 = swift_allocObject();
      *(v235 + 16) = xmmword_2D10E0;
      strcpy((v235 + 32), "MetricsError");
      *(v235 + 45) = 0;
      *(v235 + 46) = -5120;
      v236 = sub_2CC910();
      *(v235 + 72) = &type metadata for String;
      *(v235 + 48) = v236;
      *(v235 + 56) = v237;
      sub_2CC230();
      *(v235 + 80) = sub_2CC1F0();
      *(v235 + 88) = v238;
      *(v235 + 120) = &type metadata for String;
      *(v235 + 96) = 0x55656D6568635358;
      *(v235 + 104) = 0xEF726F7272454C52;
      *(v235 + 128) = sub_2CC200();
      *(v235 + 136) = v239;
      v240 = sub_2CC910();
      *(v235 + 168) = &type metadata for String;
      *(v235 + 144) = v240;
      *(v235 + 152) = v241;
      v242 = sub_112C0(v235);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v243 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v445 = v242;
      v444 = &type metadata for Bool;
      LOBYTE(v443) = 1;
      v244 = v432;

      sub_270DC4(&v443, 0xD000000000000010, 0x80000000002DEA50, &v446);
      sub_30B8(&v446, &qword_34CEA0, &qword_2D0FC0);
      sub_243394(v445, v429, &v447, v433, v434);

      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.broadcastStationDown(_:), v140);
    v245 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v245)
    {

      v246 = v409;
      v247 = v442;
      v438(v409, v436, v442);
      v248 = sub_2CDFE0();
      v249 = sub_2CE690();
      if (os_log_type_enabled(v248, v249))
      {
        v250 = swift_slowAlloc();
        *v250 = 0;
        _os_log_impl(&dword_0, v248, v249, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for broadcastStationDown code", v250, 2u);
      }

      (v440)(v246, v247);
      v251 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v252 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v253 = v432;
      sub_2455A8(v252, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.poorNetworkConnectionTimeout(_:), v140);
    v254 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v254)
    {

      v255 = v408;
      v256 = v442;
      v438(v408, v436, v442);
      v257 = sub_2CDFE0();
      v258 = sub_2CE690();
      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        *v259 = 0;
        _os_log_impl(&dword_0, v257, v258, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for poorNetworkConnectionTimeout code", v259, 2u);
      }

      (v440)(v255, v256);
      v260 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v261 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v262 = v432;
      sub_245C2C(v261, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.notCurrentlyAllowedExplicitStation(_:), v140);
    v263 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v263)
    {

      v264 = v406;
      v265 = v442;
      v438(v406, v436, v442);
      v266 = sub_2CDFE0();
      v267 = sub_2CE690();
      if (os_log_type_enabled(v266, v267))
      {
        v268 = swift_slowAlloc();
        *v268 = 0;
        _os_log_impl(&dword_0, v266, v267, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for currently explicit content station not allowed for user", v268, 2u);
      }

      (v440)(v264, v265);
      sub_20410(&unk_356F30, &qword_2D69C0);
      v269 = swift_allocObject();
      *(v269 + 16) = xmmword_2D0090;
      *(v269 + 32) = 0x656C746974;
      *(v269 + 40) = 0xE500000000000000;
      v270 = v432;
      v271 = sub_1D05D8();
      if (v272)
      {
        v273 = v271;
      }

      else
      {
        v273 = 0;
      }

      v274 = 0xE000000000000000;
      if (v272)
      {
        v274 = v272;
      }

      *(v269 + 48) = v273;
      *(v269 + 56) = v274;
      v275 = sub_90A9C(v269);
      swift_setDeallocating();
      sub_30B8(v269 + 32, &qword_354748, &qword_2D69C8);
      swift_deallocClassInstance();
      v276 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v277 = sub_2349AC(v275);

      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v270;
      v278 = v270;
      sub_2462B0(v277, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    sub_2CC940();
    v142(v139, enum case for PlaybackCode.podcastUpNextEmpty(_:), v140);
    v279 = sub_2CE250();
    (v127)(v139, v140);
    (v127)(v128, v140);
    if (v279)
    {

      v438(v407, v436, v442);
      v280 = sub_2CDFE0();
      v281 = sub_2CE690();
      if (os_log_type_enabled(v280, v281))
      {
        v282 = swift_slowAlloc();
        *v282 = 0;
        _os_log_impl(&dword_0, v280, v281, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for podcastUpNextEmpty code", v282, 2u);
      }

      (v440)(v407, v442);
      v283 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v284 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v285 = v432;
      sub_244F24(v284, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    v405 = v141;
    sub_2CC940();
    v425 = v121;
    v142(v139, enum case for PlaybackCode.podcastServerNotReachable(_:), v140);
    v286 = sub_2CE250();
    (v127)(v139, v140);
    v435 = v126;
    v430 = v127;
    (v127)(v128, v140);
    if (v286)
    {

      v438(v404, v436, v442);
      v287 = sub_2CDFE0();
      v288 = sub_2CE690();
      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        *v289 = 0;
        _os_log_impl(&dword_0, v287, v288, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for podcastServerNotReachable code", v289, 2u);
      }

      (v440)(v404, v442);
      v290 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v291 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v292 = v432;
      sub_246934(v291, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    v293 = v427;
    sub_2CC940();
    v294 = v426;
    v295 = v439;
    (v424)(v426, enum case for PlaybackCode.errorApplicationDisabled(_:), v439);
    v296 = sub_2CE250();
    v297 = v430;
    (v430)(v294, v295);
    v297(v293, v295);
    if (v296)
    {

      v438(v403, v436, v442);
      v298 = sub_2CDFE0();
      v299 = sub_2CE690();
      if (os_log_type_enabled(v298, v299))
      {
        v300 = swift_slowAlloc();
        *v300 = 0;
        _os_log_impl(&dword_0, v298, v299, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for errorApplicationDisabled code", v300, 2u);
      }

      (v440)(v403, v442);
      v301 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v302 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v303 = v432;
      sub_37C70(v302, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    v304 = v427;
    sub_2CC940();
    v305 = v426;
    v306 = v439;
    (v424)(v426, enum case for PlaybackCode.noLocalEndpointConnection(_:), v439);
    v307 = sub_2CE250();
    v308 = v430;
    (v430)(v305, v306);
    v308(v304, v306);
    if (v307)
    {

      v438(v402, v436, v442);
      v309 = sub_2CDFE0();
      v310 = sub_2CE690();
      if (os_log_type_enabled(v309, v310))
      {
        v311 = swift_slowAlloc();
        *v311 = 0;
        _os_log_impl(&dword_0, v309, v310, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for noLocalEndpointConnection code", v311, 2u);
      }

      (v440)(v402, v442);
      v312 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      v313 = sub_112C0(_swiftEmptyArrayStorage);
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v314 = v432;
      sub_34234(v313, v429, &v447, v433, v434);
      goto LABEL_24;
    }

    v315 = v427;
    sub_2CC940();
    v316 = v426;
    v317 = v439;
    (v424)(v426, enum case for PlaybackCode.icUserIdentityError(_:), v439);
    v318 = sub_2CE250();
    v319 = v430;
    (v430)(v316, v317);
    v319(v315, v317);
    if (v318)
    {
      v438(v401, v436, v442);
      v320 = sub_2CDFE0();
      v321 = sub_2CE680();
      if (os_log_type_enabled(v320, v321))
      {
        v322 = swift_slowAlloc();
        *v322 = 0;
        _os_log_impl(&dword_0, v320, v321, "PlayMediaRCHFlowWrapper#dialogForError NOT using special dialog for icUserIdentityError code on non-tvOS platform!", v322, 2u);
      }

      (v440)(v401, v442);
      v323 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
      sub_20410(&unk_353120, &unk_2D0B50);
      v324 = swift_allocObject();
      *(v324 + 16) = xmmword_2D0090;
      *(v324 + 32) = 0x457363697274654DLL;
      v325 = v324 + 32;
      *(v324 + 72) = &type metadata for String;
      *(v324 + 40) = 0xEC000000726F7272;
      v326 = v428;
      *(v324 + 48) = v400;
      *(v324 + 56) = v326;
      v327 = sub_112C0(v324);
      swift_setDeallocating();
      sub_30B8(v325, &qword_34CBA0, &unk_2D0FE0);
      swift_deallocClassInstance();
      v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v449 = &off_3381B8;
      *&v447 = v432;
      v445 = v327;
      v444 = &type metadata for Bool;
      LOBYTE(v443) = 1;
      v328 = v432;

      sub_270DC4(&v443, 0xD000000000000010, 0x80000000002DEA50, &v446);
      sub_30B8(&v446, &qword_34CEA0, &qword_2D0FC0);
      sub_243394(v445, v429, &v447, v433, v434);

      goto LABEL_24;
    }

    sub_2CCF90();
    v329 = sub_2CBDB0();

    if ((v329 & 1) == 0)
    {
      sub_2CC8E0();
      sub_2CBC60();
      sub_35E0(&v447, v448);
      sub_2CBE60();
      sub_306C(&v447);
      v330 = sub_2CC8D0();

      if (v330)
      {
        sub_2CC8B0();

        v331 = 0;
      }

      else
      {
        v331 = 1;
      }

      v332 = v385;
      v333 = *(v385 + 56);
      v334 = v393;
      v335 = v392;
      v333(v393, v331, 1, v392);
      v336 = v390;
      (*(v332 + 104))(v390, enum case for AirPlayRouteSetupState.error(_:), v335);
      v333(v336, 0, 1, v335);
      v337 = *(v384 + 48);
      v338 = v334;
      v339 = v394;
      sub_F3F4(v338, v394, &qword_34FCB8, &unk_2D3580);
      sub_F3F4(v336, v339 + v337, &qword_34FCB8, &unk_2D3580);
      v340 = *(v332 + 48);
      if (v340(v339, 1, v335) == 1)
      {
        sub_30B8(v390, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v393, &qword_34FCB8, &unk_2D3580);
        if (v340(v394 + v337, 1, v392) == 1)
        {
          sub_30B8(v394, &qword_34FCB8, &unk_2D3580);
LABEL_122:

          v379 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
          v380 = sub_112C0(_swiftEmptyArrayStorage);
          v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v449 = &off_3381B8;
          *&v447 = v432;
          v381 = v432;
          sub_251318(v380, v429, &v447, v433, v434);
LABEL_24:

LABEL_25:
          sub_30B8(&v447, &qword_34C6C0, &qword_2D0710);
          return;
        }

        goto LABEL_110;
      }

      v341 = v394;
      sub_F3F4(v394, v383, &qword_34FCB8, &unk_2D3580);
      if (v340(v341 + v337, 1, v392) == 1)
      {
        sub_30B8(v390, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v393, &qword_34FCB8, &unk_2D3580);
        (*(v385 + 8))(v383, v392);
LABEL_110:
        sub_30B8(v394, &qword_34FCB0, &unk_2D8580);
        goto LABEL_111;
      }

      v372 = v385;
      v373 = v394;
      v374 = v382;
      v375 = v392;
      (*(v385 + 32))(v382, v394 + v337, v392);
      sub_270D7C(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState);
      v376 = v383;
      v377 = sub_2CE250();
      v378 = *(v372 + 8);
      v378(v374, v375);
      sub_30B8(v390, &qword_34FCB8, &unk_2D3580);
      sub_30B8(v393, &qword_34FCB8, &unk_2D3580);
      v378(v376, v375);
      sub_30B8(v373, &qword_34FCB8, &unk_2D3580);
      if (v377)
      {
        goto LABEL_122;
      }
    }

LABEL_111:
    v342 = sub_112C0(_swiftEmptyArrayStorage);
    sub_2CC940();
    v343 = enum case for PlaybackCode.noPlayTOWindow(_:);
    (v424)(v395, enum case for PlaybackCode.noPlayTOWindow(_:), v439);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v447 == v446)
    {
      v344 = v439;
      v345 = v430;
      (v430)(v395, v439);
      v345(v396, v344);
    }

    else
    {
      v346 = sub_2CEEA0();
      v347 = v439;
      v348 = v430;
      (v430)(v395, v439);
      v348(v396, v347);

      if ((v346 & 1) == 0)
      {
LABEL_117:
        v448 = &type metadata for String;
        *&v447 = v400;
        *(&v447 + 1) = v428;
        sub_E2DC(&v447, &v446);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v443 = v342;
        sub_237690(&v446, 0x457363697274654DLL, 0xEC000000726F7272, isUniquelyReferenced_nonNull_native);
        v359 = v443;
        v438(v397, v436, v442);
        v386(v398, v405, v399);
        v360 = sub_2CDFE0();
        v361 = sub_2CE690();
        if (os_log_type_enabled(v360, v361))
        {
          v362 = swift_slowAlloc();
          v363 = swift_slowAlloc();
          *&v447 = v363;
          *v362 = 136446210;
          v364 = v427;
          v365 = v398;
          sub_2CC940();
          v366 = sub_2CB840();
          v368 = v367;
          (v430)(v364, v439);
          v388(v365, v399);
          v369 = sub_3F08(v366, v368, &v447);

          *(v362 + 4) = v369;
          _os_log_impl(&dword_0, v360, v361, "PlayMediaRCHFlowWrapper#dialogForError using fallback generic error response for code: %{public}s", v362, 0xCu);
          sub_306C(v363);
        }

        else
        {

          v388(v398, v399);
        }

        (v440)(v397, v442);
        v370 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
        v448 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v449 = &off_3381B8;
        *&v447 = v432;
        v444 = &type metadata for Bool;
        v445 = v359;
        LOBYTE(v443) = 1;
        v371 = v432;

        sub_270DC4(&v443, 0xD000000000000010, 0x80000000002DEA50, &v446);
        sub_30B8(&v446, &qword_34CEA0, &qword_2D0FC0);
        sub_243394(v445, v429, &v447, v433, v434);

        goto LABEL_25;
      }
    }

    v438(v391, v436, v442);
    v349 = sub_2CDFE0();
    v350 = sub_2CE690();
    if (os_log_type_enabled(v349, v350))
    {
      v351 = swift_slowAlloc();
      *v351 = 0;
      _os_log_impl(&dword_0, v349, v350, "PlayMediaRCHFlowWrapper#dialogForError noPlayTOWindow", v351, 2u);
    }

    (v440)(v391, v442);
    v352 = v427;
    v353 = v439;
    (v424)(v427, v343, v439);
    v354 = sub_2CB840();
    v356 = v355;
    (v430)(v352, v353);
    v448 = &type metadata for Bool;
    LOBYTE(v447) = 1;
    sub_E2DC(&v447, &v446);
    v357 = swift_isUniquelyReferenced_nonNull_native();
    *&v443 = v342;
    sub_237690(&v446, v354, v356, v357);

    v342 = v443;
    goto LABEL_117;
  }

  v160 = v421;
  v161 = v442;
  v438(v421, v436, v442);
  v162 = sub_2CDFE0();
  v163 = sub_2CE690();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    *v164 = 0;
    _os_log_impl(&dword_0, v162, v163, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for emptyLibrary code", v164, 2u);
  }

  (v440)(v160, v161);
  v165 = *(v431 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaDialogProvider);
  v166 = [objc_opt_self() resolutionResultUnsupportedWithReason:_INPlayMediaMediaItemUnsupportedReasonEmptyLibrary];
  sub_19E928(v429, 0x657449616964656DLL, 0xEA0000000000736DLL, v166, v432, v433, v434);
}

uint64_t sub_26B5C0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v3 = sub_2CDFD0();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  v8 = __chkstk_darwin(v6);
  v86 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v84 = v74 - v11;
  v12 = __chkstk_darwin(v10);
  v81 = v74 - v13;
  __chkstk_darwin(v12);
  v15 = v74 - v14;
  v16 = sub_20410(&qword_3524B0, &unk_2D8440);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v85 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = (v74 - v22);
  __chkstk_darwin(v21);
  v25 = (v74 - v24);
  v26 = *(v17 + 16);
  v87 = a1;
  v26(v74 - v24, a1, v16);
  v27 = *(v17 + 88);
  v28 = v27(v25, v16);
  if (v28 != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v17 + 8))(v25, v16);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v54 = v89;
    v55 = sub_3ED0(v89, static Logger.default);
    swift_beginAccess();
    v56 = v88;
    (*(v88 + 16))(v15, v55, v54);
    v57 = sub_2CDFE0();
    v58 = sub_2CE690();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "PlayMediaRCHFlowWrapper#saveToSiriMemory no intent", v59, 2u);
    }

    return (*(v56 + 8))(v15, v54);
  }

  v29 = v28;
  v77 = v27;
  v76 = *(v17 + 96);
  v76(v25, v16);
  v30 = *v25;
  v78 = v25[1];
  v31 = v25[2];

  v75 = v26;
  v26(v23, v87, v16);
  v32 = v77;
  if (v77(v23, v16) != v29)
  {
    (*(v17 + 8))(v23, v16);
LABEL_18:
    v60 = v88;
    v43 = v89;
    v61 = v86;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v62 = sub_3ED0(v43, static Logger.default);
    swift_beginAccess();
    (*(v60 + 16))(v61, v62, v43);
    v63 = sub_2CDFE0();
    v64 = sub_2CE680();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v63, v64, "PlayMediaRCHFlowWrapper#saveToSiriMemory no app present", v65, 2u);
    }

    else
    {
    }

    return (*(v60 + 8))(v61, v43);
  }

  v74[1] = v17 + 96;
  v33 = v76;
  v76(v23, v16);
  v35 = *v23;
  v34 = v23[1];
  v36 = v23[2];

  v37 = sub_2CCF90();
  if (!v38)
  {

    goto LABEL_18;
  }

  v39 = v38;
  v40 = v33;
  v86 = v37;
  v41 = v85;
  v75(v85, v87, v16);
  v42 = v32(v41, v16) == v29;
  v43 = v89;
  if (!v42)
  {

    (*(v17 + 8))(v41, v16);
LABEL_24:
    v60 = v88;
    v61 = v84;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v66 = sub_3ED0(v43, static Logger.default);
    swift_beginAccess();
    (*(v60 + 16))(v61, v66, v43);
    v67 = sub_2CDFE0();
    v68 = sub_2CE690();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "PlayMediaRCHFlowWrapper#saveToSiriMemory no response present, or not success", v69, 2u);
    }

    else
    {
    }

LABEL_29:

    return (*(v60 + 8))(v61, v43);
  }

  v40(v41, v16);
  v44 = *v41;
  v45 = v41[1];
  v46 = v41[2];

  if ([v46 code] != &dword_4)
  {

    goto LABEL_24;
  }

  v47 = v78;
  v48 = v78;
  sub_1D2AC4(v47);

  v49 = sub_2CBD40();
  v90[0] = v86;
  v90[1] = v39;
  __chkstk_darwin(v49);
  v74[-2] = v90;
  v50 = sub_13964(sub_334E8, &v74[-4], v49);

  if ((v50 & 1) == 0)
  {

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v70 = sub_3ED0(v43, static Logger.default);
    swift_beginAccess();
    v60 = v88;
    v61 = v81;
    (*(v88 + 16))(v81, v70, v43);
    v71 = sub_2CDFE0();
    v72 = sub_2CE690();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "PlayMediaRCHFlowWrapper#saveToSiriMemory SiriKit already donating for 3p interactions", v73, 2u);
    }

    else
    {
    }

    goto LABEL_29;
  }

  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v51 = qword_35F760;
  v52 = v80;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  sub_26BFD4(v86, v39, v48, v46, v79);

  sub_2CE9D0();
  sub_2CDFA0();

  return (*(v82 + 8))(v52, v83);
}

void sub_26BFD4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a3;
  v8 = sub_2C8E80();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v49 = v12[2];
  v50 = v18;
  v49(v17, v18, v11);

  v19 = sub_2CDFE0();
  v20 = sub_2CE690();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = a5;
    v23 = a1;
    v24 = a2;
    v25 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_3F08(v23, v24, aBlock);
    _os_log_impl(&dword_0, v19, v20, "PlayMediaRCHFlowWrapper#saveToSiriMemory successful 1p, also donating INInteraction on behalf of: %{public}s", v21, 0xCu);
    sub_306C(v25);
  }

  v26 = v12[1];
  v26(v17, v11);
  v27 = v53;
  v28 = sub_2CE6E0();
  if (v28)
  {
    v29 = v28;
    v30 = [v27 identifier];
    if (v30)
    {
      v31 = v30;
      sub_2CE270();
    }

    else
    {
      v36 = v46;
      sub_2C8E70();
      sub_2C8E50();
      (*(v47 + 8))(v36, v48);
    }

    v37 = sub_2CE260();

    [v29 setIdentifier:v37];

    v38 = objc_allocWithZone(INInteraction);
    v39 = [v38 initWithIntent:v29 response:v52];

    isa = sub_2C8B90().super.isa;
    [v39 setDateInterval:isa];

    v41 = sub_2CE260();
    v42 = swift_allocObject();
    *(v42 + 16) = v29;
    aBlock[4] = sub_27535C;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25FAD4;
    aBlock[3] = &unk_33C528;
    v43 = _Block_copy(aBlock);
    v44 = v29;

    [v39 _donateInteractionWithBundleId:v41 completion:v43];
    _Block_release(v43);
  }

  else
  {
    v32 = v51;
    v49(v51, v50, v11);
    v33 = sub_2CDFE0();
    v34 = sub_2CE690();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "PlayMediaRCHFlowWrapper#saveToSiriMemory Cannot convert intent to SiriRemembers intent. Bailing on INInteraction donation", v35, 2u);
    }

    v26(v32, v11);
  }
}

uint64_t sub_26C518(uint64_t a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v7);
  v11 = v36 - v10 + 16;
  if (a1)
  {
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v12 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v11, v12, v4);
    swift_errorRetain();
    v13 = sub_2CDFE0();
    v14 = sub_2CE680();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_2CEEF0();
      v19 = sub_3F08(v17, v18, v36);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "PlayMediaRCHFlowWrapper#saveToSiriMemory error donating INInteraction: %{public}s", v15, 0xCu);
      sub_306C(v16);
    }

    else
    {
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v9, v20, v4);
    v21 = a2;
    v22 = sub_2CDFE0();
    v23 = sub_2CE690();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      v26 = [v21 identifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_2CE270();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v36[0] = v28;
      v36[1] = v30;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v32 = sub_2CE2A0();
      v34 = sub_3F08(v32, v33, &v37);

      *(v24 + 4) = v34;
      _os_log_impl(&dword_0, v22, v23, "PlayMediaRCHFlowWrapper#saveToSiriMemory also successfully donated INInteraction with identifier: %s", v24, 0xCu);
      sub_306C(v25);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_26C940(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = sub_2CE150();
  v40 = *(v37 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v37);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE180();
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_356378, &qword_2D8590);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v29 - v15;
  v34 = sub_2CBA10();
  sub_F3F4(a2, v16, &qword_356378, &qword_2D8590);
  v17 = *(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  sub_14A58(v16, v18 + ((v17 + 24) & ~v17), &qword_356378, &qword_2D8590);
  v46 = sub_2753E0;
  v47 = v18;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v35 = &v44;
  v44 = sub_A4294;
  v45 = &unk_33C5A0;
  v19 = _Block_copy(&aBlock);

  sub_2CE160();
  v41 = _swiftEmptyArrayStorage;
  v32 = sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  v31 = sub_20410(&qword_34DD48, &qword_2D5F80);
  v33 = sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80);
  v20 = v37;
  sub_2CEC10();
  v21 = v34;
  sub_2CE9C0();
  _Block_release(v19);

  v22 = *(v40 + 8);
  v40 += 8;
  v34 = v22;
  v22(v6, v20);
  v23 = *(v39 + 8);
  v39 += 8;
  v30 = v23;
  v23(v11, v38);

  v24 = sub_2CBA10();
  sub_F3F4(v36, v16, &qword_356378, &qword_2D8590);
  v25 = swift_allocObject();
  sub_14A58(v16, v25 + ((v17 + 16) & ~v17), &qword_356378, &qword_2D8590);
  v46 = sub_275574;
  v47 = v25;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_A4294;
  v45 = &unk_33C5F0;
  v26 = _Block_copy(&aBlock);
  sub_2CE160();
  v41 = _swiftEmptyArrayStorage;
  v27 = v37;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v26);

  v34(v6, v27);
  v30(v11, v38);
}

uint64_t sub_26CE58(uint64_t a1, void *a2)
{
  v4 = sub_2CDFD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v9 = qword_35F760;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  sub_26CFCC(a1, a2);
  sub_2CE9D0();
  sub_2CDFA0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26CFCC(uint64_t a1, id a2)
{
  v183 = a2;
  v3 = sub_2CC2B0();
  v161 = *(v3 - 8);
  v162 = v3;
  v4 = *(v161 + 64);
  __chkstk_darwin(v3);
  v160 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CC780();
  v176 = *(v6 - 8);
  v177 = v6;
  v7 = *(v176 + 64);
  __chkstk_darwin(v6);
  v175 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_356378, &qword_2D8590);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v178 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v174 = &v157 - v14;
  __chkstk_darwin(v13);
  v173 = (&v157 - v15);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v157 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v172 = &v157 - v22;
  v23 = __chkstk_darwin(v21);
  v158 = &v157 - v24;
  __chkstk_darwin(v23);
  v26 = &v157 - v25;
  v186 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v27 = *(*(v186 - 1) + 64);
  v28 = __chkstk_darwin(v186);
  v30 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v170 = &v157 - v32;
  v33 = __chkstk_darwin(v31);
  v169 = &v157 - v34;
  v35 = __chkstk_darwin(v33);
  v168 = &v157 - v36;
  v37 = __chkstk_darwin(v35);
  v167 = &v157 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v157 - v40;
  v42 = __chkstk_darwin(v39);
  v165 = &v157 - v43;
  v44 = __chkstk_darwin(v42);
  v164 = &v157 - v45;
  v46 = __chkstk_darwin(v44);
  v163 = &v157 - v47;
  v48 = __chkstk_darwin(v46);
  v159 = &v157 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v157 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v157 - v54;
  __chkstk_darwin(v53);
  v57 = &v157 - v56;
  if (a1)
  {
    sub_2CC0B0();
  }

  else
  {
    v58 = sub_2CBF80();
    (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
  }

  v166 = v41;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v59 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v60 = v17[2];
  v181 = v17 + 2;
  v182 = v59;
  v180 = v60;
  v60(v26, v59, v16);
  sub_F3F4(v57, v55, &qword_34DD30, &unk_2D1BC0);
  v61 = sub_2CDFE0();
  v62 = v26;
  v63 = sub_2CE670();
  v64 = os_log_type_enabled(v61, v63);
  v184 = v17;
  v185 = v16;
  v187 = v57;
  v171 = v30;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v188[0] = v66;
    *v65 = 136315138;
    v179 = v62;
    sub_F3F4(v55, v52, &qword_34DD30, &unk_2D1BC0);
    v67 = sub_2CE2A0();
    v69 = v68;
    sub_30B8(v55, &qword_34DD30, &unk_2D1BC0);
    v70 = sub_3F08(v67, v69, v188);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_0, v61, v63, "PlayMediaRCHFlowWrapper#logCoreAnalytics supplying CoreAnalytics instrumentation, with appSelectionReport: %s...", v65, 0xCu);
    sub_306C(v66);

    v71 = v184[1];
    v71(v179, v185);
  }

  else
  {

    sub_30B8(v55, &qword_34DD30, &unk_2D1BC0);
    v71 = v17[1];
    v71(v62, v16);
  }

  v72 = v183;
  v73 = v173;
  sub_F3F4(v183, v173, &qword_356378, &qword_2D8590);
  v74 = sub_20410(&qword_3524B0, &unk_2D8440);
  v75 = *(v74 - 8);
  v76 = *(v75 + 48);
  v77 = v76(v73, 1, v74);
  v78 = v174;
  if (v77 == 1)
  {
    sub_30B8(v73, &qword_356378, &qword_2D8590);
LABEL_16:
    v186 = 0;
    goto LABEL_17;
  }

  if ((*(v75 + 88))(v73, v74) != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v75 + 8))(v73, v74);
    goto LABEL_16;
  }

  (*(v75 + 96))(v73, v74);
  v79 = *v73;
  v186 = v73[1];
  v80 = v73[2];

  v180(v158, v182, v185);
  v81 = sub_2CDFE0();
  v82 = sub_2CE670();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_0, v81, v82, "PlayMediaRCHFlowWrapper#logCoreAnalytics supplying intent from complete FlowResult", v83, 2u);
    v72 = v183;
  }

  v71(v158, v185);
LABEL_17:
  sub_F3F4(v72, v78, &qword_356378, &qword_2D8590);
  v84 = v76(v78, 1, v74);
  v179 = v71;
  if (v84 == 1)
  {
    sub_30B8(v78, &qword_356378, &qword_2D8590);
LABEL_28:
    v174 = 0;
    v91 = 0xE000000000000000;
    goto LABEL_29;
  }

  if ((*(v75 + 88))(v78, v74) != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v75 + 8))(v78, v74);
    goto LABEL_28;
  }

  (*(v75 + 96))(v78, v74);
  v85 = *v78;
  v86 = *(v78 + 16);

  v87 = sub_2CCF90();
  v89 = v88;

  if (v89)
  {
    v90 = v87;
  }

  else
  {
    v90 = 0;
  }

  v174 = v90;
  if (v89)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  v72 = v183;
LABEL_29:
  v92 = v175;
  v93 = v176;
  v94 = v177;
  (*(v176 + 104))(v175, enum case for CoreAnalyticsResponses.FabricatedPlayCodes.generalUnsuccessful(_:), v177);
  v183 = sub_2CC770();
  (*(v93 + 8))(v92, v94);
  v95 = v178;
  sub_F3F4(v72, v178, &qword_356378, &qword_2D8590);
  if (v76(v95, 1, v74) == 1)
  {
    sub_30B8(v95, &qword_356378, &qword_2D8590);
  }

  else
  {
    if ((*(v75 + 88))(v95, v74) == enum case for RCHFlowResult.complete<A, B>(_:))
    {
      (*(v75 + 96))(v95, v74);
      v96 = *v95;
      v97 = v95[1];
      v98 = v95[2];

      v183 = [v98 code];
      v99 = [v98 code];

      v100 = v99 == &dword_4;
      goto LABEL_35;
    }

    (*(v75 + 8))(v95, v74);
  }

  v100 = 0;
LABEL_35:
  v101 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v101 = v174 & 0xFFFFFFFFFFFFLL;
  }

  if (v101)
  {
    v176 = v100;
    sub_20410(&qword_34DD38, &unk_2D3B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D1AB0;
    *(inited + 32) = 0x6449707061;
    v177 = inited + 32;
    *(inited + 40) = 0xE500000000000000;
    v103 = sub_2CE260();

    *(inited + 48) = v103;
    *(inited + 56) = 1701080931;
    *(inited + 64) = 0xE400000000000000;
    *(inited + 72) = sub_2CE560();
    *(inited + 80) = 0x70616C45656D6974;
    *(inited + 88) = 0xEB00000000646573;
    v104 = v159;
    sub_F3F4(v187, v159, &qword_34DD30, &unk_2D1BC0);
    v105 = sub_2CBF80();
    v106 = *(v105 - 8);
    v107 = *(v106 + 48);
    if (v107(v104, 1, v105) == 1)
    {
      sub_30B8(v104, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBEF0();
      (*(v106 + 8))(v104, v105);
    }

    *(inited + 96) = sub_2CE500();
    *(inited + 104) = 0x65636E6174736E69;
    *(inited + 112) = 0xE800000000000000;
    v113 = v160;
    sub_2CC2A0();
    sub_2CC280();
    (*(v161 + 8))(v113, v162);
    *(inited + 120) = sub_2CE560();
    *(inited + 128) = 0x756F43736D657469;
    *(inited + 136) = 0xEA0000000000746ELL;
    if (v186)
    {
      v114 = [v186 mediaItems];
      if (v114)
      {
        sub_334A0(0, &qword_356F50, INMediaItem_ptr);
        v115 = sub_2CE410();

        if (v115 >> 62)
        {
          sub_2CEDA0();
        }

        else
        {
          v116 = *(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8));
        }
      }

      *(inited + 144) = sub_2CE560();
      *(inited + 152) = 0x7265666E49707061;
      *(inited + 160) = 0xEB00000000646572;
      v117 = sub_2CE730();
    }

    else
    {
      *(inited + 144) = sub_2CE560();
      *(inited + 152) = 0x7265666E49707061;
      *(inited + 160) = 0xEB00000000646572;
      v117 = 1;
    }

    *(inited + 168) = [objc_allocWithZone(NSNumber) initWithBool:v117 & 1];
    *(inited + 176) = 0x706D657474417361;
    *(inited + 184) = 0xEB00000000646574;
    v118 = v187;
    *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:{v107(v187, 1, v105) != 1}];
    *(inited + 200) = 0x646573557361;
    *(inited + 208) = 0xE600000000000000;
    v119 = v163;
    sub_F3F4(v118, v163, &qword_34DD30, &unk_2D1BC0);
    v120 = v107;
    v121 = v107(v119, 1, v105);
    v122 = v166;
    v178 = v106;
    if (v121 == 1)
    {
      sub_30B8(v119, &qword_34DD30, &unk_2D1BC0);
      v123 = 0;
    }

    else
    {
      v123 = sub_2CBEE0();
      (*(v106 + 8))(v119, v105);
    }

    *(inited + 216) = [objc_allocWithZone(NSNumber) initWithBool:v123 & 1];
    strcpy((inited + 224), "asExperimentId");
    *(inited + 239) = -18;
    v124 = v164;
    sub_F3F4(v118, v164, &qword_34DD30, &unk_2D1BC0);
    v125 = v120;
    if (v120(v124, 1, v105) == 1)
    {
      sub_30B8(v124, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF10();
      (*(v178 + 8))(v124, v105);
    }

    v126 = sub_2CE260();

    *(inited + 240) = v126;
    strcpy((inited + 248), "asTreatmentId");
    *(inited + 262) = -4864;
    v127 = v165;
    sub_F3F4(v118, v165, &qword_34DD30, &unk_2D1BC0);
    if (v125(v127, 1, v105) == 1)
    {
      sub_30B8(v127, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF00();
      (*(v178 + 8))(v127, v105);
    }

    v128 = sub_2CE260();

    *(inited + 264) = v128;
    *(inited + 272) = 0x756F6C6C6F527361;
    *(inited + 280) = 0xEB00000000644974;
    sub_F3F4(v118, v122, &qword_34DD30, &unk_2D1BC0);
    if (v125(v122, 1, v105) == 1)
    {
      sub_30B8(v122, &qword_34DD30, &unk_2D1BC0);
      v129 = v178;
    }

    else
    {
      sub_2CBF70();
      v129 = v178;
      (*(v178 + 8))(v122, v105);
    }

    v130 = sub_2CE260();

    *(inited + 288) = v130;
    *(inited + 296) = 0x6469666E6F437361;
    *(inited + 304) = 0xEF73624165636E65;
    v131 = v167;
    sub_F3F4(v118, v167, &qword_34DD30, &unk_2D1BC0);
    if (v125(v131, 1, v105) == 1)
    {
      sub_30B8(v131, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF20();
      (*(v129 + 8))(v131, v105);
    }

    v132 = v171;
    v133 = v168;
    *(inited + 312) = sub_2CE500();
    *(inited + 320) = 0xD000000000000010;
    *(inited + 328) = 0x80000000002DB4E0;
    sub_F3F4(v187, v133, &qword_34DD30, &unk_2D1BC0);
    if (v125(v133, 1, v105) == 1)
    {
      sub_30B8(v133, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF40();
      (*(v129 + 8))(v133, v105);
    }

    v134 = v169;
    *(inited + 336) = sub_2CE500();
    *(inited + 344) = 0x64497070417361;
    *(inited + 352) = 0xE700000000000000;
    sub_F3F4(v187, v134, &qword_34DD30, &unk_2D1BC0);
    if (v125(v134, 1, v105) == 1)
    {
      sub_30B8(v134, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF30();
      (*(v129 + 8))(v134, v105);
    }

    v135 = sub_2CE260();

    *(inited + 360) = v135;
    *(inited + 368) = 0x7265735577656ELL;
    *(inited + 376) = 0xE700000000000000;
    v136 = v170;
    sub_F3F4(v187, v170, &qword_34DD30, &unk_2D1BC0);
    if (v125(v136, 1, v105) == 1)
    {
      sub_30B8(v136, &qword_34DD30, &unk_2D1BC0);
      v137 = 0;
    }

    else
    {
      v137 = sub_2CBF60();
      (*(v129 + 8))(v136, v105);
    }

    *(inited + 384) = [objc_allocWithZone(NSNumber) initWithBool:v137 & 1];
    strcpy((inited + 392), "successCount");
    *(inited + 405) = 0;
    *(inited + 406) = -5120;
    *(inited + 408) = sub_2CE560();
    *(inited + 416) = 0xD000000000000010;
    *(inited + 424) = 0x80000000002DB500;
    v138 = v187;
    v139 = v125(v187, 1, v105) != 1;
    sub_334A0(0, &qword_353110, NSNumber_ptr);
    *(inited + 432) = sub_2CEB10(v139);
    *(inited + 440) = 0x6F43646573557361;
    *(inited + 448) = 0xEB00000000746E75;
    sub_F3F4(v138, v132, &qword_34DD30, &unk_2D1BC0);
    if (v125(v132, 1, v105) == 1)
    {
      sub_30B8(v132, &qword_34DD30, &unk_2D1BC0);
      v140 = v185;
      v141 = v172;
    }

    else
    {
      v142 = sub_2CBEE0();
      (*(v129 + 8))(v132, v105);
      v140 = v185;
      v141 = v172;
      if (v142)
      {
        v143 = 1;
LABEL_80:
        *(inited + 456) = sub_2CEB10(v143);
        strcpy((inited + 464), "responseCode");
        *(inited + 477) = 0;
        *(inited + 478) = -5120;
        v188[0] = v183;
        sub_2CEE70();
        v144 = sub_2CE260();

        *(inited + 480) = v144;
        v145 = sub_90728(inited);
        swift_setDeallocating();
        sub_20410(&qword_34DD40, &unk_2D1BD0);
        swift_arrayDestroy();
        v180(v141, v182, v140);

        v146 = sub_2CDFE0();
        v147 = sub_2CE670();

        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v188[0] = v149;
          *v148 = 136315138;
          sub_334A0(0, &qword_34DD50, NSObject_ptr);
          v150 = sub_2CE210();
          v152 = sub_3F08(v150, v151, v188);

          *(v148 + 4) = v152;
          _os_log_impl(&dword_0, v146, v147, "PlayMediaRCHFlowWrapper#logCoreAnalytics recording result analytics data: %s", v148, 0xCu);
          sub_306C(v149);
        }

        v179(v141, v140);
        v153 = sub_2CE260();
        v154 = swift_allocObject();
        *(v154 + 16) = v145;
        v188[4] = CommonFlowStrategy.makeParameterMetadata(intent:);
        v188[5] = v154;
        v188[0] = _NSConcreteStackBlock;
        v188[1] = 1107296256;
        v188[2] = sub_25FA38;
        v188[3] = &unk_33C640;
        v155 = _Block_copy(v188);

        AnalyticsSendEventLazy();

        _Block_release(v155);
        return sub_30B8(v187, &qword_34DD30, &unk_2D1BC0);
      }
    }

    v143 = 0;
    goto LABEL_80;
  }

  v108 = v157;
  v109 = v185;
  v180(v157, v182, v185);
  v110 = sub_2CDFE0();
  v111 = sub_2CE680();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_0, v110, v111, "PlayMediaRCHFlowWrapper#logCoreAnalytics no meaningful app identifier", v112, 2u);
  }

  v179(v108, v109);
  return sub_30B8(v187, &qword_34DD30, &unk_2D1BC0);
}

void sub_26E948(uint64_t a1)
{
  v2 = sub_2C8E30();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v43 - v12;
  v14 = sub_20410(&qword_356378, &qword_2D8590);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v43 - v16;
  sub_F3F4(a1, v43 - v16, &qword_356378, &qword_2D8590);
  v18 = sub_20410(&qword_3524B0, &unk_2D8440);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_30B8(v17, &qword_356378, &qword_2D8590);
LABEL_17:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v11, v34, v6);
    v35 = sub_2CDFE0();
    v36 = sub_2CE690();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "PlayMediaRCHFlowWrapper#logCoreAnalytics skipping daily briefing", v37, 2u);
    }

    (*(v7 + 8))(v11, v6);
    return;
  }

  if ((*(v19 + 88))(v17, v18) != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v19 + 8))(v17, v18);
    goto LABEL_17;
  }

  (*(v19 + 96))(v17, v18);
  v21 = *v17;
  v20 = *(v17 + 1);

  if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v20, &off_330DF0))
  {
    goto LABEL_29;
  }

  v22 = [v20 mediaItems];
  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = v22;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v24 = sub_2CE410();

  if (!(v24 >> 62))
  {
    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

LABEL_31:

    return;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_31;
  }

LABEL_8:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_34;
    }

    v25 = *(v24 + 32);
  }

  v26 = v25;

  v27 = [v26 identifier];

  if (!v27)
  {
LABEL_29:

    return;
  }

  v43[0] = sub_2CE270();
  v29 = v28;

  v30 = sub_2CCF90();
  if (!v31)
  {
    goto LABEL_28;
  }

  v32 = v31;
  v43[1] = v29;
  if (sub_2CBE30() == v30 && v32 == v33)
  {

    goto LABEL_24;
  }

  v38 = sub_2CEEA0();

  if ((v38 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_24:
  if (qword_34BF58 != -1)
  {
LABEL_34:
    swift_once();
  }

  v39 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v13, v39, v6);
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "PlayMediaRCHFlowWrapper#logCoreAnalytics setting last invocation date for podcast in DailyBriefing synced DB", v42, 2u);
  }

  (*(v7 + 8))(v13, v6);
  sub_2CDC10();
  sub_2CDC00();
  sub_2C8E20();
  sub_2C8E00();
  (*(v44 + 8))(v5, v2);
  sub_2CDBF0();
}

uint64_t sub_26F018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v29 = sub_20410(&qword_3524B0, &unk_2D8440);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v26 - v6;
  v30 = sub_2CC040();
  v28 = *(v30 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v10;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "PlayMediaRCHFlowWrapper#logReliability performing reliability test...", v19, 2u);
    v10 = v27;
  }

  (*(v12 + 8))(v15, v11);
  sub_2CC030();
  v20 = v29;
  (*(v4 + 16))(v7, a1, v29);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  (*(v4 + 32))(v22 + v21, v7, v20);
  v23 = (v22 + ((v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;

  sub_2CC020();

  return (*(v28 + 8))(v10, v30);
}

uint64_t sub_26F3BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v114 = a6;
  v115 = a2;
  v111 = a5;
  v112 = a1;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v102[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = sub_20410(&qword_3524B0, &unk_2D8440);
  v13 = *(v116 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v116);
  v16 = &v102[-v15];
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v117 = &v102[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v107 = &v102[-v23];
  v24 = __chkstk_darwin(v22);
  v113 = &v102[-v25];
  v26 = __chkstk_darwin(v24);
  v106 = &v102[-v27];
  __chkstk_darwin(v26);
  v29 = &v102[-v28];
  if (a3)
  {
    v108 = a4;
    v109 = v12;
    v110 = v9;
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    (*(v18 + 16))(v29, v30, v17);
    swift_errorRetain();
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v105 = v8;
      v34 = v33;
      v104 = swift_slowAlloc();
      v120 = v104;
      *v34 = 136446210;
      swift_getErrorValue();
      v103 = v32;
      v35 = sub_2CEEF0();
      v37 = v17;
      v38 = v18;
      v39 = sub_3F08(v35, v36, &v120);

      *(v34 + 4) = v39;
      v18 = v38;
      v17 = v37;
      _os_log_impl(&dword_0, v31, v103, "PlayMediaRCHFlowWrapper#logReliability nowPlaying app error:%{public}s", v34, 0xCu);
      sub_306C(v104);

      v8 = v105;

      v40 = -1;

      (*(v18 + 8))(v29, v37);
    }

    else
    {

      (*(v18 + 8))(v29, v17);
      v40 = -1;
    }

    v12 = v109;
    v9 = v110;
    a4 = v108;
  }

  else
  {
    v40 = -2;
  }

  v41 = a4;
  v42 = v116;
  (*(v13 + 16))(v16, v41, v116);
  v43 = (*(v13 + 88))(v16, v42);
  v44 = v117;
  if (v43 != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v13 + 8))(v16, v42);
    goto LABEL_45;
  }

  v45 = v42;
  v46 = v18;
  (*(v13 + 96))(v16, v45);
  v47 = *v16;
  v48 = v16[1];
  v49 = v16[2];

  if ([v49 code] != &dword_4)
  {
    if (v114)
    {
      if (v115 && (v111 == v112 && v114 == v115 || (sub_2CEEA0() & 1) != 0))
      {
        goto LABEL_26;
      }
    }

    else if (!v115)
    {
LABEL_26:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v63 = sub_3ED0(v17, static Logger.default);
      swift_beginAccess();
      v64 = v107;
      (*(v46 + 16))(v107, v63, v17);
      v65 = sub_2CDFE0();
      v66 = sub_2CE670();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v116 = v17;
        v68 = v67;
        v69 = swift_slowAlloc();
        v115 = v49;
        v70 = v69;
        *v68 = 136315138;
        v118 = 2;
        v119 = v69;
        v71 = sub_2CEE70();
        v73 = v12;
        v74 = sub_3F08(v71, v72, &v119);

        *(v68 + 4) = v74;
        v12 = v73;
        v75 = v66;
        v40 = 2;
        _os_log_impl(&dword_0, v65, v75, "PlayMediaRCHFlowWrapper#logReliability sirikit failure & playback queue correct: %s...", v68, 0xCu);
        sub_306C(v70);

        (*(v46 + 8))(v107, v116);
      }

      else
      {

        (*(v46 + 8))(v64, v17);
        v40 = 2;
      }

      goto LABEL_45;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v88 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    (*(v46 + 16))(v44, v88, v17);
    v89 = sub_2CDFE0();
    v90 = sub_2CE670();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v116 = v17;
      v92 = v91;
      v93 = swift_slowAlloc();
      v115 = v49;
      v94 = v93;
      *v92 = 136315138;
      v118 = 3;
      v119 = v93;
      v95 = sub_2CEE70();
      v97 = v12;
      v98 = sub_3F08(v95, v96, &v119);

      *(v92 + 4) = v98;
      v12 = v97;
      v99 = v90;
      v40 = 3;
      _os_log_impl(&dword_0, v89, v99, "PlayMediaRCHFlowWrapper#logReliability sirikit failure & playback queue incorrect: %s...", v92, 0xCu);
      sub_306C(v94);

      (*(v46 + 8))(v117, v116);
    }

    else
    {

      (*(v46 + 8))(v44, v17);
      v40 = 3;
    }

    goto LABEL_45;
  }

  if (v114)
  {
    v50 = v113;
    if (v115 && (v111 == v112 && v114 == v115 || (sub_2CEEA0() & 1) != 0))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v50 = v113;
    if (!v115)
    {
LABEL_16:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v51 = sub_3ED0(v17, static Logger.default);
      swift_beginAccess();
      v52 = v106;
      (*(v46 + 16))(v106, v51, v17);
      v53 = sub_2CDFE0();
      v54 = sub_2CE670();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v116 = v17;
        v56 = v55;
        v57 = swift_slowAlloc();
        v115 = v49;
        v58 = v57;
        v118 = 0;
        v119 = v57;
        *v56 = 136315138;
        v59 = sub_2CEE70();
        v61 = v12;
        v62 = sub_3F08(v59, v60, &v119);

        *(v56 + 4) = v62;
        v12 = v61;
        _os_log_impl(&dword_0, v53, v54, "PlayMediaRCHFlowWrapper#logReliability sirikit success & playback queue correct: %s...", v56, 0xCu);
        sub_306C(v58);

        (*(v46 + 8))(v106, v116);
      }

      else
      {

        (*(v46 + 8))(v52, v17);
      }

      v40 = 0;
      goto LABEL_45;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v76 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  (*(v46 + 16))(v50, v76, v17);
  v77 = sub_2CDFE0();
  v78 = sub_2CE670();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v116 = v17;
    v80 = v79;
    v81 = swift_slowAlloc();
    v115 = v49;
    v82 = v81;
    *v80 = 136315138;
    v118 = 1;
    v119 = v81;
    v83 = sub_2CEE70();
    v85 = v12;
    v86 = sub_3F08(v83, v84, &v119);

    *(v80 + 4) = v86;
    v12 = v85;
    v87 = v78;
    v40 = 1;
    _os_log_impl(&dword_0, v77, v87, "PlayMediaRCHFlowWrapper#logReliability sirikit success & playback queue incorrect: %s...", v80, 0xCu);
    sub_306C(v82);

    (*(v46 + 8))(v113, v116);
  }

  else
  {

    (*(v46 + 8))(v50, v17);
    v40 = 1;
  }

LABEL_45:
  sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_2D0090;
  *(v100 + 56) = &type metadata for Int;
  *(v100 + 64) = &protocol witness table for Int;
  *(v100 + 32) = v40;
  sub_2CDFC0();
  sub_2CDF90();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_27010C()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_input, &qword_34E480, &qword_2D2280);
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaFlow);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider));
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);

  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaDialogProvider);

  v4 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_viewFactory);

  v5 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_pseSignalsStitcher);

  v6 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_signpost;
  v7 = sub_2CDFD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_start;
  v9 = sub_2C8E30();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result, &qword_356378, &qword_2D8590);
  return v0;
}

uint64_t sub_27024C()
{
  sub_27010C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2702CC()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_2CDFD0();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_2C8E30();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_27042C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_27042C()
{
  if (!qword_356088)
  {
    sub_2DB30(&qword_3524B0, &unk_2D8440);
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_356088);
    }
  }
}

void (*sub_270490(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2CB190();
  return sub_AED18;
}

uint64_t sub_27058C()
{
  v0 = type metadata accessor for PriorResultContext(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = (v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId);
  *v4 = 0;
  v4[1] = 0;
  *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) = 0;
  *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch) = 0;
  *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_requestCancelled) = 0;
  *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_previousDisambiguationCancelled) = 0;
  result = sub_2C8DF0();
  qword_35F860 = v3;
  return result;
}

uint64_t sub_27061C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v47 = a2;
  v46 = a1;
  v7 = sub_2CE000();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CBF80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v46 - v17;
  v19 = sub_2C8E30();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C8E20();
  v24 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_time;
  swift_beginAccess();
  v25 = v23;
  v26 = v46;
  (*(v20 + 40))(v5 + v24, v25, v19);
  swift_endAccess();
  if (v26)
  {
    sub_2CC0B0();
    if ((*(v11 + 48))(v18, 1, v10))
    {
      sub_30B8(v18, &qword_34DD30, &unk_2D1BC0);
      v27 = 0;
    }

    else
    {
      (*(v11 + 16))(v14, v18, v10);
      sub_30B8(v18, &qword_34DD30, &unk_2D1BC0);
      v27 = sub_2CBEE0();
      (*(v11 + 8))(v14, v10);
    }

    v30 = v50;
    v29 = v51;
    v31 = v48;
    v32 = v49;
    *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) = v27 & 1;
    v33 = sub_2CC0A0();
    v28 = [v33 mediaSearch];
  }

  else
  {
    v28 = 0;
    *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) = 0;
    v30 = v50;
    v29 = v51;
    v31 = v48;
    v32 = v49;
  }

  v34 = *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch);
  *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch) = v28;

  *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_requestCancelled) = v47 & 1;
  v35 = (v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId);
  v36 = *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId + 8);
  *v35 = v31;
  v35[1] = a4;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v29, static Logger.default);
  swift_beginAccess();
  (*(v30 + 16))(v32, v37, v29);

  v38 = sub_2CDFE0();
  v39 = sub_2CE670();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53 = a4;
    v54 = v41;
    *v40 = 136315138;
    v52 = v31;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v42 = sub_2CE2A0();
    v44 = sub_3F08(v42, v43, &v54);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_0, v38, v39, "PriorResultContext#update set prior result context for refId: %s", v40, 0xCu);
    sub_306C(v41);
  }

  return (*(v30 + 8))(v32, v29);
}

uint64_t sub_270B54()
{
  v1 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_time;
  v2 = sub_2C8E30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_270C3C()
{
  result = sub_2C8E30();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_270D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270DC4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_4F538(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_236A58(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_4F538(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_2CEEE0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_23632C();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_237944(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  sub_E2DC((v13[7] + 32 * v14), a4);
  result = sub_E2DC(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}