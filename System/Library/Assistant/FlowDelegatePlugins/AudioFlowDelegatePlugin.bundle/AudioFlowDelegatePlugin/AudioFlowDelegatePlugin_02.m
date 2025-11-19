uint64_t sub_3A310(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAB70;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002BLL;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000002BLL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000002BLL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_3A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v58 = a1;
  v59 = a2;
  v6 = sub_2CE000();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = v4[3];
  v56 = v4[4];
  v17 = v4[2];
  v50 = v16;
  v62 = 0x80000000002DAB40;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v57 = v10;
  v22 = *(v10 + 32);
  v60 = v9;
  v22(v21 + v19, v13);
  v23 = (v21 + v20);
  *v23 = v53;
  v23[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v50;
  *(v24 + 40) = v50;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000024;
  *(v24 + 80) = v62;

  v48 = v24;
  LOBYTE(v47) = 2;
  v46 = 125;
  v52 = v15;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v51 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v61;
  (*(v54 + 16))(v61, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v53;
    *(v35 + 4) = sub_3F08(v53, v26, &v63);
    *(v35 + 12) = 2080;
    v37 = v62;
    *(v35 + 14) = sub_3F08(0xD000000000000024, v62, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v61, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v62;
    v36 = v53;
  }

  v63 = v36;
  v64 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000024;
  v68._object = v37;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v58;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v59;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v57 + 8))(v52, v60);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v58 = a1;
  v59 = a2;
  v6 = sub_2CE000();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = v4[3];
  v56 = v4[4];
  v17 = v4[2];
  v50 = v16;
  v62 = 0x80000000002DAB10;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v57 = v10;
  v22 = *(v10 + 32);
  v60 = v9;
  v22(v21 + v19, v13);
  v23 = (v21 + v20);
  *v23 = v53;
  v23[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v50;
  *(v24 + 40) = v50;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000025;
  *(v24 + 80) = v62;

  v48 = v24;
  LOBYTE(v47) = 2;
  v46 = 125;
  v52 = v15;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v51 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v61;
  (*(v54 + 16))(v61, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v53;
    *(v35 + 4) = sub_3F08(v53, v26, &v63);
    *(v35 + 12) = 2080;
    v37 = v62;
    *(v35 + 14) = sub_3F08(0xD000000000000025, v62, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v61, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v62;
    v36 = v53;
  }

  v63 = v36;
  v64 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000025;
  v68._object = v37;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v58;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v59;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v57 + 8))(v52, v60);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3B6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v58 = a1;
  v59 = a2;
  v6 = sub_2CE000();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = v4[3];
  v56 = v4[4];
  v17 = v4[2];
  v50 = v16;
  v62 = 0x80000000002DAAE0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v57 = v10;
  v22 = *(v10 + 32);
  v60 = v9;
  v22(v21 + v19, v13);
  v23 = (v21 + v20);
  *v23 = v53;
  v23[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v50;
  *(v24 + 40) = v50;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v62;

  v48 = v24;
  LOBYTE(v47) = 2;
  v46 = 125;
  v52 = v15;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v51 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v61;
  (*(v54 + 16))(v61, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v53;
    *(v35 + 4) = sub_3F08(v53, v26, &v63);
    *(v35 + 12) = 2080;
    v37 = v62;
    *(v35 + 14) = sub_3F08(0xD000000000000026, v62, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v61, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v62;
    v36 = v53;
  }

  v63 = v36;
  v64 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000026;
  v68._object = v37;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v58;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v59;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v57 + 8))(v52, v60);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3BDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v59 = a1;
  v60 = a2;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v63 = 0x80000000002DAAB0;
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "catServiceExecute";
  *(v22 + 24) = 17;
  *(v22 + 32) = 2;
  v58 = v11;
  v23 = *(v11 + 32);
  v61 = v10;
  v23(v22 + v20, v14);
  v24 = (v22 + v21);
  *v24 = v54;
  v24[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0E40;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_1087C();
  v54 = v18;
  *(v25 + 32) = v18;
  v27 = v51;
  *(v25 + 40) = v51;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = 0xD000000000000021;
  *(v25 + 80) = v63;

  v49 = v25;
  LOBYTE(v48) = 2;
  v47 = 125;
  v53 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v22;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v33 = v62;
  (*(v55 + 16))(v62, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v54;
    *(v36 + 4) = sub_3F08(v54, v27, &v64);
    *(v36 + 12) = 2080;
    v38 = v63;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v63, &v64);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v32 + 8))(v62, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v38 = v63;
    v37 = v54;
  }

  v64 = v37;
  v65 = v27;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000021;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v64;
  v39 = v65;
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
  v43[4] = v52;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v45 = v59;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v60;
  *(&v50 - 7) = v66;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v40;
  v47 = v39;
  v48 = sub_3E06C;
  v49 = v43;

  sub_2CB0F0();

  (*(v58 + 8))(v53, v61);
  return sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3C470(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAA80;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000026;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_3CAE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = v5[3];
  v57 = v5[4];
  v18 = v5[2];
  v51 = v17;
  v64 = 0x80000000002DAA60;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v20, v14);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v59;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v18;
  *(v24 + 32) = v18;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000015;
  v27 = v64;
  *(v24 + 80) = v64;

  v49 = v24;
  LOBYTE(v48) = 2;
  v47 = 125;
  v59 = v16;
  sub_2CDF90();

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000015, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000015;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_3D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v55 = a1;
  v56 = a2;
  v6 = sub_2CE000();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v54 = v4[4];
  v16 = v4[3];
  v60 = v4[2];
  v49 = v16;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v10;
  v58 = v9;
  (*(v10 + 32))(v19 + v18, v13, v9);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v51;
  v20[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v23 = v49;
  *(v21 + 32) = v60;
  *(v21 + 40) = v23;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  strcpy((v21 + 72), "GenericError");
  *(v21 + 85) = 0;
  *(v21 + 86) = -5120;

  v46 = v21;
  LOBYTE(v45) = 2;
  v44 = 125;
  sub_2CDF90();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v19;
  v50 = v24;
  v25 = qword_34BF58;
  v51 = v19;

  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v15;
    v61 = v34;
    *v33 = 136315394;
    v35 = v60;
    *(v33 + 4) = sub_3F08(v60, v26, &v61);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v15 = v48;

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
  }

  v61 = v35;
  v62 = v26;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0x45636972656E6547;
  v66._object = 0xEC000000726F7272;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v50;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v15, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3D81C(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v5 = v4;
  v64 = a4;
  v65 = a2;
  v58 = a3;
  v7 = sub_2CE000();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v72 = a1;

  v17 = sub_2CB620();
  v70 = &type metadata for Bool;
  LOBYTE(v69) = v17 & 1;
  sub_270DC4(&v69, 0x68637461577369, 0xE700000000000000, v71);
  sub_30B8(v71, &qword_34CEA0, &qword_2D0FC0);
  v18 = sub_2CB5E0();
  v70 = &type metadata for Bool;
  LOBYTE(v69) = v18 & 1;
  sub_270DC4(&v69, 0x63614D7369, 0xE500000000000000, v71);
  sub_30B8(v71, &qword_34CEA0, &qword_2D0FC0);
  v19 = sub_2CB660();
  v70 = &type metadata for Bool;
  LOBYTE(v69) = v19 & 1;
  sub_270DC4(&v69, 0x6976654452587369, 0xEA00000000006563, v71);
  sub_30B8(v71, &qword_34CEA0, &qword_2D0FC0);
  v20 = v5[3];
  v59 = v5[4];
  v21 = v5[2];
  v68 = v20;
  v63 = v72;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v23 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v24 = v16;
  v25 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = "catServiceExecute";
  *(v26 + 24) = 17;
  *(v26 + 32) = 2;
  v66 = v11;
  v67 = v10;
  (*(v11 + 32))(v26 + v23, v14, v10);
  v27 = (v26 + v25);
  v28 = v64;
  *v27 = v58;
  v27[1] = v28;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2D0E40;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_1087C();
  v57 = v21;
  v31 = v68;
  *(v29 + 32) = v21;
  *(v29 + 40) = v31;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  *(v29 + 64) = v30;
  *(v29 + 72) = 0xD000000000000015;
  v58 = 0x80000000002DA9A0;
  *(v29 + 80) = 0x80000000002DA9A0;

  v55 = v29;
  LOBYTE(v54) = 2;
  v53 = 125;
  v64 = v24;
  sub_2CDF90();

  v32 = swift_allocObject();
  *(v32 + 16) = sub_13D7C;
  *(v32 + 24) = v26;
  v56 = v32;
  v33 = qword_34BF58;

  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = v62;
  v36 = sub_3ED0(v62, static Logger.default);
  swift_beginAccess();
  v38 = v60;
  v37 = v61;
  (*(v61 + 16))(v60, v36, v35);

  v39 = sub_2CDFE0();
  v40 = sub_2CE660();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *&v69 = swift_slowAlloc();
    *v41 = 136315394;
    v42 = v57;
    *(v41 + 4) = sub_3F08(v57, v68, &v69);
    *(v41 + 12) = 2080;
    v43 = v58;
    *(v41 + 14) = sub_3F08(0xD000000000000015, v58, &v69);
    _os_log_impl(&dword_0, v39, v40, "Evaluating CAT family:%s id:%s...", v41, 0x16u);
    swift_arrayDestroy();
    v34 = v68;

    (*(v37 + 8))(v38, v35);
    v44 = v66;
  }

  else
  {

    (*(v37 + 8))(v38, v35);
    v44 = v66;
    v43 = v58;
    v42 = v57;
  }

  *&v69 = v42;
  *(&v69 + 1) = v34;

  v73._countAndFlagsBits = 35;
  v73._object = 0xE100000000000000;
  sub_2CE350(v73);
  v74._countAndFlagsBits = 0xD000000000000015;
  v74._object = v43;
  sub_2CE350(v74);
  v45 = v69;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13D84;
  v48[4] = v56;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v63;
  *(&v56 - 10) = v59;
  *(&v56 - 9) = v50;
  v51 = v65;
  *(&v56 - 8) = 0;
  *(&v56 - 7) = v51;
  *(&v56 - 6) = 0;
  *(&v56 - 5) = v45;
  v53 = *(&v45 + 1);
  v54 = sub_3E010;
  v55 = v48;

  sub_2CB0F0();

  return (*(v44 + 8))(v64, v67);
}

uint64_t sub_3DFAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_3E010()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21810();
}

uint64_t sub_3E088@<X0>(void *a1@<X5>, uint64_t a2@<X8>)
{
  v86 = a2;
  v87 = a1;
  v85 = sub_2CD490();
  v80 = *(v85 - 1);
  v2 = *(v80 + 64);
  __chkstk_darwin(v85);
  v72 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20410(&qword_34CFB0, &unk_2D1000);
  v4 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v84 = &v72 - v5;
  v6 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v78 = &v72 - v11;
  __chkstk_darwin(v10);
  v79 = &v72 - v12;
  v13 = sub_2CA870();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v75 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v76 = &v72 - v26;
  v27 = __chkstk_darwin(v25);
  v73 = &v72 - v28;
  __chkstk_darwin(v27);
  v30 = &v72 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v32 = v21[2];
  v82 = v31;
  v81 = v32;
  v32(v30, v31, v20);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "SearchForMediaNeedsValueStrategy#actionForInput...", v35, 2u);
  }

  v36 = v21[1];
  v37 = v20;
  v36(v30, v20);
  sub_2CA790();
  v38 = (*(v14 + 88))(v19, v13);
  if (v38 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v14 + 96))(v19, v13);
    v39 = *&v19[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

    v40 = sub_2CAFE0();
    (*(*(v40 - 8) + 8))(v19, v40);
    v41 = v85;
  }

  else
  {
    v42 = v38;
    v43 = enum case for Parse.pommesResponse(_:);
    (*(v14 + 8))(v19, v13);
    v41 = v85;
    if (v42 != v43)
    {
      v56 = v75;
      v81(v75, v82, v37);
      v57 = sub_2CDFE0();
      v58 = sub_2CE690();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "SearchForMediaNeedsValueStrategy#actionForInput parse not of right type";
        goto LABEL_16;
      }

LABEL_17:

      v36(v56, v37);
      return sub_2C9CF0();
    }
  }

  v44 = v83;
  sub_2CA790();
  v45 = sub_D2F98(v44, &v88);
  (*(v14 + 8))(v44, v13, v45);
  if (!v89)
  {
    sub_30B8(&v88, &qword_34CF98, &unk_2D1A40);
    v56 = v76;
    v81(v76, v82, v37);
    v57 = sub_2CDFE0();
    v58 = sub_2CE690();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "SearchForMediaNeedsValueStrategy#actionForInput received invalid NL intent";
LABEL_16:
      _os_log_impl(&dword_0, v57, v58, v60, v59, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v85 = v36;
  v87 = v21 + 1;
  sub_420A4(&v88, &v90);
  v46 = v92;
  sub_35E0(&v90, v91);
  v47 = *(v46 + 8);
  v48 = v79;
  sub_2CD480();
  v49 = v80;
  v50 = v78;
  (*(v80 + 104))(v78, enum case for CommonAudio.Confirmation.cancel(_:), v41);
  (*(v49 + 56))(v50, 0, 1, v41);
  v51 = *(v77 + 48);
  v52 = v84;
  sub_F3F4(v48, v84, &qword_34CCE8, &unk_2D0E20);
  v53 = v52;
  sub_F3F4(v50, v52 + v51, &qword_34CCE8, &unk_2D0E20);
  v54 = *(v49 + 48);
  if (v54(v52, 1, v41) == 1)
  {
    sub_30B8(v50, &qword_34CCE8, &unk_2D0E20);
    v55 = v84;
    sub_30B8(v48, &qword_34CCE8, &unk_2D0E20);
    if (v54(v55 + v51, 1, v41) == 1)
    {
      sub_30B8(v55, &qword_34CCE8, &unk_2D0E20);
LABEL_23:
      v68 = v73;
      v81(v73, v82, v37);
      v69 = sub_2CDFE0();
      v70 = sub_2CE690();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "SearchForMediaNeedsValueStrategy#actionForInput User asked to cancel", v71, 2u);
      }

      (v85)(v68, v37);
      sub_2C9CD0();
      return sub_306C(&v90);
    }

    goto LABEL_20;
  }

  v62 = v74;
  sub_F3F4(v52, v74, &qword_34CCE8, &unk_2D0E20);
  if (v54(v52 + v51, 1, v41) == 1)
  {
    sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
    v55 = v84;
    sub_30B8(v79, &qword_34CCE8, &unk_2D0E20);
    (*(v80 + 8))(v62, v41);
LABEL_20:
    sub_30B8(v55, &qword_34CFB0, &unk_2D1000);
    goto LABEL_21;
  }

  v63 = v80;
  v64 = v72;
  (*(v80 + 32))(v72, v53 + v51, v41);
  sub_42148(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation);
  v65 = v53;
  v66 = sub_2CE250();
  v67 = *(v63 + 8);
  v67(v64, v41);
  sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v79, &qword_34CCE8, &unk_2D0E20);
  v67(v62, v41);
  sub_30B8(v65, &qword_34CCE8, &unk_2D0E20);
  if (v66)
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_2C9CE0();
  return sub_306C(&v90);
}

uint64_t sub_3EB5C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v42 = a6;
  v43 = a5;
  v48 = a3;
  v45 = a2;
  v47 = a1;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v39 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);

  v18 = sub_2CDFE0();
  v19 = sub_2CE690();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v50[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_3F08(v48, a4, v50);
    _os_log_impl(&dword_0, v18, v19, "SearchForMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v20, 0xCu);
    sub_306C(v21);
  }

  (*(v13 + 8))(v16, v12);
  v22 = v48;
  v23 = v49;
  v24 = v45;
  v25 = v43;
  sub_1C785C(v45, v48, a4, v49);
  v26 = v44;
  v39 = *(v44 + 16);
  v27 = v41;
  sub_F3F4(v23, v41, &unk_353020, &unk_2D0970);
  v28 = (*(v40 + 80) + 80) & ~*(v40 + 80);
  v29 = swift_allocObject();
  v29[2] = v22;
  v29[3] = a4;
  v29[4] = v25;
  v29[5] = v26;
  v30 = v47;
  v29[6] = v47;
  v29[7] = v24;
  v31 = v46;
  v29[8] = v42;
  v29[9] = v31;
  sub_14A58(v27, v29 + v28, &unk_353020, &unk_2D0970);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = v22;
  *(inited + 56) = a4;
  swift_bridgeObjectRetain_n();
  v33 = v25;

  v34 = v24;

  v35 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v36 = *(v39 + 120);
  v50[3] = sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  v50[4] = &off_3344D0;
  v50[0] = v34;
  v37 = v34;
  sub_1E6C98(v35, v30, v50, sub_420BC, v29);

  sub_30B8(v49, &unk_353020, &unk_2D0970);
  return sub_30B8(v50, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3F074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v105 = a7;
  v106 = a8;
  v104 = a6;
  v108 = a5;
  v97 = a4;
  v96 = a3;
  v95 = a2;
  v94 = a1;
  v107 = a9;
  v93 = sub_2CE000();
  v92 = *(v93 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin(v93);
  v103 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2CCB20();
  v89 = *(v90 - 8);
  v12 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = *(*(v99 - 8) + 64);
  v15 = __chkstk_darwin(v99);
  v102 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = &v88 - v17;
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v101 = &v88 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v100 = &v88 - v23;
  v24 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v98 = &v88 - v26;
  v27 = sub_2CCB30();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CCAC0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20410(&unk_3519A0, &qword_2D0980);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = (&v88 - v39);
  sub_F3F4(v94, &v88 - v39, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v40;
    (*(v33 + 104))(v36, enum case for AdditionalMetricsDescription.ModuleName.sfmnvs(_:), v32);
    (*(v28 + 104))(v31, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v27);
    swift_getErrorValue();
    sub_2CEEF0();
    v103 = sub_2CCAF0();

    (*(v28 + 8))(v31, v27);
    (*(v33 + 8))(v36, v32);
    v42 = v108[7];
    v108 = sub_35E0(v108 + 3, v108[6]);
    v43 = enum case for ActivityType.failed(_:);
    v44 = sub_2C9C20();
    v45 = *(v44 - 8);
    v46 = v98;
    (*(v45 + 104))(v98, v43, v44);
    (*(v45 + 56))(v46, 0, 1, v44);
    v47 = sub_2CA130();
    v48 = v100;
    (*(*(v47 - 8) + 56))(v100, 1, 1, v47);
    v49 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v50 = sub_2C98F0();
    v51 = *(v50 - 8);
    v52 = v101;
    (*(v51 + 104))(v101, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v52, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v48, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v46, &qword_34CB88, &unk_2D0D90);
    v109[0] = v41;
    v110 = 1;
    swift_errorRetain();
    v106(v109);

    return sub_30B8(v109, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v94 = a10;
    v54 = v40;
    v55 = v91;
    sub_14A58(v54, v91, &qword_34C6E8, &unk_2D0FF0);
    (*(v33 + 104))(v36, enum case for AdditionalMetricsDescription.ModuleName.sfmnvs(_:), v32);
    (*(v28 + 104))(v31, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v27);
    v56 = v89;
    v57 = v88;
    v58 = v90;
    (*(v89 + 104))(v88, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v90);
    v96 = sub_2CCB00();
    v95 = v59;
    (*(v56 + 8))(v57, v58);
    (*(v28 + 8))(v31, v27);
    (*(v33 + 8))(v36, v32);
    v60 = v108[7];
    v90 = sub_35E0(v108 + 3, v108[6]);
    v61 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v62 = sub_2C9C20();
    v63 = *(v62 - 8);
    v64 = v98;
    (*(v63 + 104))(v98, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = v55;
    v66 = v102;
    sub_F3F4(v55, v102, &qword_34C6E8, &unk_2D0FF0);

    v67 = sub_2CA130();
    v68 = *(v67 - 8);
    v69 = v100;
    (*(v68 + 32))(v100, v66, v67);
    v70 = *(v68 + 56);
    v97 = v67;
    v70(v69, 0, 1, v67);
    v71 = enum case for SiriKitReliabilityCodes.success(_:);
    v72 = sub_2C98F0();
    v73 = *(v72 - 8);
    v74 = v101;
    (*(v73 + 104))(v101, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v74, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v69, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v64, &qword_34CB88, &unk_2D0D90);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v75 = v93;
    v76 = sub_3ED0(v93, static Logger.default);
    swift_beginAccess();
    v77 = v92;
    (*(v92 + 16))(v103, v76, v75);
    v78 = sub_2CDFE0();
    v79 = sub_2CE680();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v106;
    v82 = v107;
    if (v80)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v78, v79, "SearchForMediaNeedsValueStrategy#makePromptForValue return confirmation view output", v83, 2u);
    }

    (*(v77 + 8))(v103, v75);
    v84 = sub_35E0(v108 + 8, v108[11]);
    v85 = v102;
    sub_F3F4(v65, v102, &qword_34C6E8, &unk_2D0FF0);
    v86 = *(v85 + *(v99 + 48));
    v87 = *v84;
    sub_1C1A94(v85, v86, v94, v81, v82);

    sub_30B8(v65, &qword_34C6E8, &unk_2D0FF0);
    return (*(v68 + 8))(v85, v97);
  }
}

uint64_t Determine.UnsupportedValueStrategy.__deallocating_deinit()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_3FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s11descr32D959O18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_3FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s11descr32D959O18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_3FF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s11descr32D959O18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_3FFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s11descr32D959O18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_40074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = _s11descr32D959O18NeedsValueStrategyCMa();
  *v15 = v7;
  v15[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_40158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = _s11descr32D959O18NeedsValueStrategyCMa();
  *v17 = v8;
  v17[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v18, a8);
}

void sub_40294(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v209 = a6;
  v210 = a5;
  v216 = a4;
  v206 = a2;
  v207 = a1;
  v208 = sub_20410(&qword_34CF90, &qword_2D0FA8);
  v7 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v211 = (&v193 - v8);
  v217 = sub_2CA870();
  v9 = *(v217 - 1);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v217);
  v13 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v198 = &v193 - v15;
  __chkstk_darwin(v14);
  v17 = (&v193 - v16);
  v18 = sub_2CE000();
  v19 = *(v18 - 1);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v197 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v203 = &v193 - v24;
  v25 = __chkstk_darwin(v23);
  v204 = &v193 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v193 - v28;
  v30 = __chkstk_darwin(v27);
  v200 = &v193 - v31;
  v32 = __chkstk_darwin(v30);
  v195 = &v193 - v33;
  v34 = __chkstk_darwin(v32);
  v194 = &v193 - v35;
  v36 = __chkstk_darwin(v34);
  v201 = &v193 - v37;
  v38 = __chkstk_darwin(v36);
  v196 = &v193 - v39;
  v40 = __chkstk_darwin(v38);
  v199 = &v193 - v41;
  __chkstk_darwin(v40);
  v43 = &v193 - v42;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v44 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v45 = v19[2];
  v212 = v44;
  v214 = v19 + 2;
  v213 = v45;
  v45(v43, v44, v18);

  v46 = sub_2CDFE0();
  v47 = sub_2CE690();

  v48 = os_log_type_enabled(v46, v47);
  v218 = v19;
  v205 = a3;
  v202 = v29;
  if (v48)
  {
    v49 = a3;
    v50 = swift_slowAlloc();
    v51 = v18;
    v52 = swift_slowAlloc();
    *&v223 = v52;
    *v50 = 136446210;
    *(v50 + 4) = sub_3F08(v206, v49, &v223);
    _os_log_impl(&dword_0, v46, v47, "SearchForMediaNeedsValueStrategy#parseResponseValue parameter: %{public}s", v50, 0xCu);
    sub_306C(v52);
    v18 = v51;
    v19 = v218;
  }

  v215 = v19[1];
  v215(v43, v18);
  [v207 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v53 = sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v227 = 0;
  }

  sub_2CA790();
  v54 = *(v9 + 88);
  v55 = v217;
  v56 = v54(v17, v217);
  v57 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v56 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v207 = v53;
    v71 = v18;
    v72 = enum case for Parse.pommesResponse(_:);
    if (v56 == enum case for Parse.pommesResponse(_:))
    {
      (*(v9 + 96))(v17, v55);
      v73 = *v17;
      v74 = sub_1B7F14();
      if (!v74)
      {
        v124 = v195;
        v213(v195, v212, v71);
        v125 = sub_2CDFE0();
        v126 = sub_2CE680();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&dword_0, v125, v126, "SearchForMediaNeedsValueStrategy#parseResponseValue pommesResponse contains no AudioExperience", v127, 2u);
        }

        v215(v124, v71);
        v128 = sub_2CB850();
        sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v129 = swift_allocError();
        (*(*(v128 - 8) + 104))(v130, enum case for PlaybackCode.ceGE77(_:), v128);
        v131 = v211;
        *v211 = v129;
        swift_storeEnumTagMultiPayload();
        v210(v131);

        goto LABEL_69;
      }

      v75 = v74;
      v76 = v198;
      sub_2CA790();
      v77 = sub_D2F98(v76, &v221);
      (*(v9 + 8))(v76, v55, v77);
      v18 = v71;
      if (!v222)
      {
        sub_30B8(&v221, &qword_34CF98, &unk_2D1A40);
        v158 = v194;
        v213(v194, v212, v71);
        v159 = sub_2CDFE0();
        v160 = sub_2CE690();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&dword_0, v159, v160, "SearchForMediaNeedsValueStrategy#parseResponseValue received invalid NL intent", v161, 2u);
        }

        v215(v158, v71);
        v162 = sub_2CB850();
        sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v163 = swift_allocError();
        (*(*(v162 - 8) + 104))(v164, enum case for PlaybackCode.ceGE78(_:), v162);
        v131 = v211;
        *v211 = v163;
        swift_storeEnumTagMultiPayload();
        v210(v131);

        goto LABEL_69;
      }

      sub_420A4(&v221, &v223);
      v78 = v225;
      v79 = v226;
      v80 = sub_35E0(&v223, v225);
      v81 = sub_17FF0C(v80, 0, 0, v78, v79);
      sub_2CDBC0();
      sub_2CDBB0();
      v217 = v73;
      sub_2CDAE0();
      v82 = sub_2CDBA0();

      v216 = v75;
      v202 = v82;
      v83 = sub_22F9F8(v75);
      v84 = v196;
      v213(v196, v212, v71);
      v85 = v83;
      v86 = sub_2CDFE0();
      v87 = sub_2CE670();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v88 = 138412290;
        *(v88 + 4) = v85;
        *v89 = v85;
        v90 = v85;
        _os_log_impl(&dword_0, v86, v87, "SearchForMediaNeedsValueStrategy#parseResponseValue Updating privateSearchForMediaIntentData with: %@", v88, 0xCu);
        sub_30B8(v89, &unk_34FC00, &unk_2D0150);
        v18 = v71;
      }

      v215(v84, v18);
      if (v227)
      {
        v91 = v227;
        v92 = [v91 backingStore];
        objc_opt_self();
        v93 = swift_dynamicCastObjCClass();
        if (v93)
        {
          v94 = v93;
          v95 = INIntentSlotValueTransformToPrivateSearchForMediaIntentData();
          [v94 setPrivateSearchForMediaIntentData:v95];
        }

        else
        {
          v95 = v91;
          v91 = v92;
        }

        v18 = v71;
      }

      v213(v201, v212, v18);
      v165 = v81;
      v166 = sub_2CDFE0();
      v167 = sub_2CE670();

      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        *v168 = 138412290;
        *(v168 + 4) = v165;
        *v169 = v165;
        v170 = v165;
        _os_log_impl(&dword_0, v166, v167, "SearchForMediaNeedsValueStrategy#parseResponseValue Updating media search with: %@", v168, 0xCu);
        sub_30B8(v169, &unk_34FC00, &unk_2D0150);
        v18 = v71;
      }

      v215(v201, v18);
      v171 = v227;
      if (!v227)
      {

        v64 = v205;
        goto LABEL_65;
      }

      objc_opt_self();
      v172 = swift_dynamicCastObjCClass();
      v64 = v205;
      if (v172)
      {
        v173 = v165;
        v174 = v171;
        v175 = [v174 backingStore];
        objc_opt_self();
        v176 = swift_dynamicCastObjCClass();
        if (v176)
        {
          goto LABEL_61;
        }

LABEL_63:

LABEL_64:

LABEL_65:
        sub_306C(&v223);
        v65 = v204;
        v66 = v227;
        if (v227)
        {
LABEL_10:
          if (v206 == 0x657449616964656DLL && v64 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
          {
            v67 = v66;
            v68 = [v67 mediaItems];
            if (v68)
            {
              v69 = v68;
              sub_334A0(0, &qword_356F50, INMediaItem_ptr);
              v70 = sub_2CE410();

              v68 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
            }

            else
            {
              v70 = 0;
            }

            v223 = v70;
            v224 = 0;
            v225 = v68;
            v132 = v203;
            v213(v203, v212, v18);
            sub_F3F4(&v223, &v221, &qword_34CEA0, &qword_2D0FC0);
            v133 = sub_2CDFE0();
            v134 = sub_2CE690();
            if (os_log_type_enabled(v133, v134))
            {
              v135 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v220 = v136;
              *v135 = 136446210;
              v217 = v18;
              sub_F3F4(&v221, v219, &qword_34CEA0, &qword_2D0FC0);
              sub_20410(&qword_34CEA0, &qword_2D0FC0);
              v137 = sub_2CE2A0();
              v139 = v138;
              sub_30B8(&v221, &qword_34CEA0, &qword_2D0FC0);
              v140 = sub_3F08(v137, v139, &v220);

              *(v135 + 4) = v140;
              _os_log_impl(&dword_0, v133, v134, "SearchForMediaNeedsValueStrategy#parseResponseValue returning with: %{public}s", v135, 0xCu);
              sub_306C(v136);

              v141 = v203;
              v142 = v217;
            }

            else
            {

              sub_30B8(&v221, &qword_34CEA0, &qword_2D0FC0);
              v141 = v132;
              v142 = v18;
            }

            v215(v141, v142);
            sub_F3F4(&v223, &v221, &qword_34CEA0, &qword_2D0FC0);
            v143 = v67;
            v144 = v211;
            sub_2CA220();
            v145 = sub_20410(&qword_34CFA0, &qword_2D0FC8);
            (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
            swift_storeEnumTagMultiPayload();
            v210(v144);

            sub_30B8(v144, &qword_34CF90, &qword_2D0FA8);
            v146 = &v223;
            v147 = &qword_34CEA0;
            v148 = &qword_2D0FC0;
          }

          else
          {
            v213(v65, v212, v18);

            v149 = v66;
            v150 = sub_2CDFE0();
            v151 = sub_2CE680();

            if (os_log_type_enabled(v150, v151))
            {
              v152 = swift_slowAlloc();
              v153 = swift_slowAlloc();
              *&v221 = v153;
              *v152 = 136315138;
              *(v152 + 4) = sub_3F08(v206, v64, &v221);
              _os_log_impl(&dword_0, v150, v151, "SearchForMediaNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v152, 0xCu);
              sub_306C(v153);
            }

            v215(v65, v18);
            v154 = sub_2CB850();
            sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
            v155 = swift_allocError();
            (*(*(v154 - 8) + 104))(v156, enum case for PlaybackCode.ceGE81(_:), v154);
            v157 = v211;
            *v211 = v155;
            swift_storeEnumTagMultiPayload();
            v210(v157);

            v147 = &qword_34CF90;
            v148 = &qword_2D0FA8;
            v146 = v157;
          }

          goto LABEL_70;
        }

        goto LABEL_66;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v173 = v165;
        v174 = v171;
        v175 = [v174 backingStore];
        objc_opt_self();
        v176 = swift_dynamicCastObjCClass();
        if (v176)
        {
LABEL_61:
          v177 = v176;
          v178 = INIntentSlotValueTransformToMediaSearch();
          [v177 setMediaSearch:v178];

          v18 = v71;
LABEL_62:

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      objc_opt_self();
      v186 = swift_dynamicCastObjCClass();
      v187 = v165;
      v188 = v171;
      v175 = [v188 backingStore];
      if (v186)
      {
        objc_opt_self();
        v189 = swift_dynamicCastObjCClass();
        v190 = v216;
        if (v189)
        {
          goto LABEL_76;
        }
      }

      else
      {
        objc_opt_self();
        v189 = swift_dynamicCastObjCClass();
        v190 = v216;
        if (v189)
        {
LABEL_76:
          v191 = v189;
          v192 = INIntentSlotValueTransformToMediaSearch();
          [v191 setMediaSearch:v192];

          v18 = v71;
          goto LABEL_62;
        }
      }

      goto LABEL_64;
    }

    sub_2CA790();
    v96 = v217;
    v97 = v54(v13, v217);
    if (v97 == v57)
    {
      (*(v9 + 96))(v13, v96);
      v98 = *&v13[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

      v99 = sub_2CAFE0();
      (*(*(v99 - 8) + 8))(v13, v99);
      v100 = v71;
      v101 = v202;
    }

    else
    {
      v111 = v97;
      (*(v9 + 8))(v13, v96);
      v112 = v111 == v72;
      v100 = v71;
      v101 = v202;
      if (!v112)
      {
LABEL_33:
        v213(v101, v212, v100);
        v117 = sub_2CDFE0();
        v118 = sub_2CE690();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_0, v117, v118, "SearchForMediaNeedsValueStrategy#parseResponseValue intent not of right type", v119, 2u);
        }

        v215(v101, v100);
        v120 = sub_2CB850();
        sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v121 = swift_allocError();
        (*(*(v120 - 8) + 104))(v122, enum case for PlaybackCode.ceGE79(_:), v120);
        v123 = v211;
        *v211 = v121;
        swift_storeEnumTagMultiPayload();
        v210(v123);
        sub_30B8(v123, &qword_34CF90, &qword_2D0FA8);
        (*(v9 + 8))(v17, v217);
        goto LABEL_71;
      }
    }

    v113 = v200;
    v213(v200, v212, v100);
    v114 = sub_2CDFE0();
    v115 = sub_2CE680();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_0, v114, v115, "SearchForMediaNeedsValueStrategy#parseResponseValue and SearchForMediaNeedsValueStrategy#actionForInput parse handling need to be the same!", v116, 2u);
    }

    v215(v113, v100);
    goto LABEL_33;
  }

  (*(v9 + 96))(v17, v55);
  v58 = *(v17 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
  v59 = sub_2CA830();
  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (v60)
  {
    v61 = v60;

    v62 = v227;
    v227 = v61;

    v63 = sub_2CAFE0();
    (*(*(v63 - 8) + 8))(v17, v63);
    v64 = v205;
    v65 = v204;
    v66 = v227;
    if (v227)
    {
      goto LABEL_10;
    }

LABEL_66:
    v179 = v197;
    v213(v197, v212, v18);
    v180 = sub_2CDFE0();
    v181 = sub_2CE690();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&dword_0, v180, v181, "SearchForMediaNeedsValueStrategy#parseResponseValue updatedIntent nil", v182, 2u);
    }

    v215(v179, v18);
    v183 = sub_2CB850();
    sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
    v184 = swift_allocError();
    (*(*(v183 - 8) + 104))(v185, enum case for PlaybackCode.ceGE80(_:), v183);
    v131 = v211;
    *v211 = v184;
    swift_storeEnumTagMultiPayload();
    v210(v131);
LABEL_69:
    v147 = &qword_34CF90;
    v148 = &qword_2D0FA8;
    v146 = v131;
LABEL_70:
    sub_30B8(v146, v147, v148);
    goto LABEL_71;
  }

  v102 = v199;
  v213(v199, v212, v18);
  v103 = sub_2CDFE0();
  v104 = sub_2CE670();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_0, v103, v104, "SearchForMediaNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v105, 2u);
  }

  v215(v102, v18);
  v106 = sub_2CB850();
  sub_42148(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
  v107 = swift_allocError();
  (*(*(v106 - 8) + 104))(v108, enum case for PlaybackCode.ceGE76(_:), v106);
  v109 = v211;
  *v211 = v107;
  swift_storeEnumTagMultiPayload();
  v210(v109);

  sub_30B8(v109, &qword_34CF90, &qword_2D0FA8);
  v110 = sub_2CAFE0();
  (*(*(v110 - 8) + 8))(v17, v110);
LABEL_71:
}

_OWORD *sub_420A4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_42148(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_42190()
{
  sub_2CAD10();
  sub_F3F4(v7, v5, &qword_34CEA0, &qword_2D0FC0);
  if (v6)
  {
    sub_2CAD60();
    if (swift_dynamicCast())
    {

      sub_2CAF40();

      if (v5[0])
      {

        v0 = 0;
      }

      else
      {
        v2 = sub_2CAF30();
        if (v2)
        {
          if (v2 >> 62)
          {
            v3 = sub_2CEDA0();
          }

          else
          {
            v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
          }

          v0 = v3 == 0;
        }

        else
        {

          v0 = 1;
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(v7, v5, &qword_34CEA0, &qword_2D0FC0);
  if (!v6)
  {
    sub_30B8(v7, &qword_34CEA0, &qword_2D0FC0);
    v1 = v5;
LABEL_12:
    sub_30B8(v1, &qword_34CEA0, &qword_2D0FC0);
    return 0;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v1 = v7;
    goto LABEL_12;
  }

  if (sub_2CAE30())
  {
    v0 = sub_2CAD80();

LABEL_20:
    sub_30B8(v7, &qword_34CEA0, &qword_2D0FC0);
    return v0;
  }

  sub_30B8(v7, &qword_34CEA0, &qword_2D0FC0);

  return 0;
}

BOOL sub_423CC()
{
  sub_2CAD10();
  sub_F3F4(v4, v2, &qword_34CEA0, &qword_2D0FC0);
  if (!v3)
  {
    sub_30B8(v2, &qword_34CEA0, &qword_2D0FC0);
LABEL_5:
    sub_F3F4(v4, v2, &qword_34CEA0, &qword_2D0FC0);
    if (v3)
    {
      sub_2CAEC0();
      if (swift_dynamicCast())
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_30B8(v2, &qword_34CEA0, &qword_2D0FC0);
    }

    sub_F3F4(v4, v2, &qword_34CEA0, &qword_2D0FC0);
    if (v3)
    {
      sub_2CAE70();
      if (swift_dynamicCast())
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_30B8(v2, &qword_34CEA0, &qword_2D0FC0);
    }

    sub_30B8(v4, &qword_34CEA0, &qword_2D0FC0);
    return 0;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_11:

  sub_2CAF40();

  sub_30B8(v4, &qword_34CEA0, &qword_2D0FC0);
  v0 = v2[0] != 0;
  if (v2[0])
  {
  }

  return v0;
}

uint64_t sub_4259C()
{
  sub_2CAD10();
  sub_F3F4(&v3, &v1, &qword_34CEA0, &qword_2D0FC0);
  if (*(&v2 + 1))
  {
    sub_2CAE20();
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(&v3, &v1, &qword_34CEA0, &qword_2D0FC0);
  if (*(&v2 + 1))
  {
    sub_2CAE90();
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(&v3, &v1, &qword_34CEA0, &qword_2D0FC0);
  if (*(&v2 + 1))
  {
    sub_2CAD40();
    if (swift_dynamicCast())
    {
LABEL_11:

      sub_30B8(&v3, &qword_34CEA0, &qword_2D0FC0);
      return 1;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  v1 = v3;
  v2 = v4;
  if (*(&v4 + 1))
  {
    sub_2CAE10();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    sub_30B8(&v1, &qword_34CEA0, &qword_2D0FC0);
  }

  return 0;
}

BOOL sub_42784()
{
  v0 = sub_20410(&qword_34CFC0, &qword_2D1020);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v25 - v2;
  v4 = sub_2CAE60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CAD10();
  sub_F3F4(&v28, &v26, &qword_34CEA0, &qword_2D0FC0);
  if (!*(&v27 + 1))
  {
    sub_30B8(&v26, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_11;
  }

  sub_2CAEB0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2CAED0();

  if (!v26)
  {
    goto LABEL_10;
  }

  sub_2CAAF0();

  v9 = sub_2CAFF0();

  if (!*(v9 + 16))
  {

LABEL_10:

    goto LABEL_11;
  }

  sub_4F538(0x73636972796CLL, 0xE600000000000000);
  v11 = v10;

  if (v11)
  {
    goto LABEL_30;
  }

LABEL_11:
  sub_F3F4(&v28, &v26, &qword_34CEA0, &qword_2D0FC0);
  if (!*(&v27 + 1))
  {
    sub_30B8(&v26, &qword_34CEA0, &qword_2D0FC0);
LABEL_18:
    sub_F3F4(&v28, &v26, &qword_34CEA0, &qword_2D0FC0);
    if (*(&v27 + 1))
    {
      sub_2CAF90();
      if (swift_dynamicCast())
      {
        sub_30B8(&v28, &qword_34CEA0, &qword_2D0FC0);
        goto LABEL_24;
      }
    }

    else
    {
      sub_30B8(&v26, &qword_34CEA0, &qword_2D0FC0);
    }

    v26 = v28;
    v27 = v29;
    if (!*(&v29 + 1))
    {
      v15 = &v26;
LABEL_31:
      sub_30B8(v15, &qword_34CEA0, &qword_2D0FC0);
      return 0;
    }

    sub_2CAEB0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

LABEL_24:

    return 1;
  }

  sub_2CAF50();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2CAF40();
  if (v26)
  {

    sub_2CAAF0();

    v12 = sub_2CAFF0();

    if (*(v12 + 16))
    {
      sub_4F538(0x73636972796CLL, 0xE600000000000000);
      v14 = v13;

      if (v14)
      {

LABEL_30:
        v15 = &v28;
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  sub_2CAF40();
  if (v26)
  {
    v16 = sub_2CAC20();

    if (v16)
    {

      goto LABEL_30;
    }
  }

  sub_20410(&qword_34CFC8, &qword_2D1028);
  v18 = *(v5 + 72);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2D1010;
  v25 = v20;
  v21 = v20 + v19;
  v22 = *(v5 + 104);
  v22(v21, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_TvShow(_:), v4);
  v22(v21 + v18, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Movie(_:), v4);
  v22(v21 + 2 * v18, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Video(_:), v4);
  v22(v21 + 3 * v18, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Episode(_:), v4);
  sub_2CAF40();

  if (!v26 || (v23 = sub_2CAD70(), , !v23))
  {
    sub_30B8(&v28, &qword_34CEA0, &qword_2D0FC0);

    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_37;
  }

  sub_2CAE50();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_30B8(&v28, &qword_34CEA0, &qword_2D0FC0);

LABEL_37:
    sub_30B8(v3, &qword_34CFC0, &qword_2D1020);
    return 1;
  }

  (*(v5 + 32))(v8, v3, v4);
  v24 = sub_1953B4(v8, v25);

  (*(v5 + 8))(v8, v4);
  sub_30B8(&v28, &qword_34CEA0, &qword_2D0FC0);
  return !v24;
}

uint64_t sub_42E44()
{
  v53 = sub_2CAB40();
  v0 = *(v53 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v53);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v49 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  sub_2CAD10();
  sub_F3F4(v57, v55, &qword_34CEA0, &qword_2D0FC0);
  if (!v56)
  {
    sub_30B8(v55, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_16;
  }

  sub_2CAD50();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_F3F4(v57, v55, &qword_34CEA0, &qword_2D0FC0);
    if (!v56)
    {
      sub_30B8(v57, &qword_34CEA0, &qword_2D0FC0);
      v39 = v55;
LABEL_38:
      sub_30B8(v39, &qword_34CEA0, &qword_2D0FC0);
      goto LABEL_39;
    }

    sub_2CAF50();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_37:
      v39 = v57;
      goto LABEL_38;
    }

    v30 = v54;

    sub_2CAF40();

    if (v55[0])
    {
      v31 = sub_2CAC20();

      if (!v31)
      {
        sub_30B8(v57, &qword_34CEA0, &qword_2D0FC0);

        return v31 & 1;
      }

      v32 = sub_2CAC30();

      if (v32)
      {
        v50 = v10;
        v51 = v30;
        v52 = *(v32 + 16);
        if (v52)
        {
          v33 = 0;
          v34 = v32 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
          v35 = (v0 + 8);
          do
          {
            if (v33 >= *(v32 + 16))
            {
LABEL_53:
              __break(1u);
              return result;
            }

            (*(v0 + 16))(v4, v34 + *(v0 + 72) * v33, v53);
            v37 = sub_2CAB30();
            if (v38)
            {
              if (v37 == 0x656D614E707061 && v38 == 0xE700000000000000)
              {

LABEL_46:

                v45 = *(v0 + 32);
                v46 = v53;
                v45(v7, v4, v53);
                v47 = v50;
                v45(v50, v7, v46);
                if (sub_2CAB20() == 0xD000000000000011 && 0x80000000002DADE0 == v48)
                {
                  LOBYTE(v31) = 1;
                }

                else
                {
                  LOBYTE(v31) = sub_2CEEA0();
                }

                (*v35)(v47, v53);
                goto LABEL_51;
              }

              v36 = sub_2CEEA0();

              if (v36)
              {
                goto LABEL_46;
              }
            }

            ++v33;
            result = (*v35)(v4, v53);
          }

          while (v52 != v33);
        }

        goto LABEL_36;
      }
    }

    sub_30B8(v57, &qword_34CEA0, &qword_2D0FC0);

LABEL_39:
    LOBYTE(v31) = 0;
    return v31 & 1;
  }

  v19 = v54;

  sub_2CAA90();

  v20 = v55[0];
  if (!v55[0])
  {

    goto LABEL_16;
  }

  v50 = v16;
  result = sub_2CAC30();
  if (!result)
  {
    sub_30B8(v57, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_39;
  }

  v22 = result;
  v51 = v20;
  v52 = v19;
  v49 = v18;
  v23 = *(result + 16);
  if (!v23)
  {
LABEL_32:

LABEL_36:

    goto LABEL_37;
  }

  v24 = 0;
  v25 = result + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v26 = (v0 + 8);
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_53;
    }

    (*(v0 + 16))(v13, v25 + *(v0 + 72) * v24, v53);
    v28 = sub_2CAB30();
    if (!v29)
    {
      goto LABEL_8;
    }

    if (v28 == 0x656D614E707061 && v29 == 0xE700000000000000)
    {
      break;
    }

    v27 = sub_2CEEA0();

    if (v27)
    {
      goto LABEL_41;
    }

LABEL_8:
    ++v24;
    result = (*v26)(v13, v53);
    if (v23 == v24)
    {
      goto LABEL_32;
    }
  }

LABEL_41:

  v40 = *(v0 + 32);
  v41 = v50;
  v42 = v53;
  v40(v50, v13, v53);
  v43 = v49;
  v40(v49, v41, v42);
  if (sub_2CAB20() == 0xD000000000000011 && 0x80000000002DADE0 == v44)
  {
    LOBYTE(v31) = 1;
  }

  else
  {
    LOBYTE(v31) = sub_2CEEA0();
  }

  (*v26)(v43, v53);
LABEL_51:
  sub_30B8(v57, &qword_34CEA0, &qword_2D0FC0);
  return v31 & 1;
}

BOOL sub_435A0()
{
  sub_2CAD10();
  if (!v5)
  {
    sub_30B8(v4, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_5;
  }

  sub_2CAEC0();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  v0 = v3;
LABEL_6:
  v1 = v0 != 0;

  return v1;
}

uint64_t sub_43638()
{
  v0 = sub_2CD9E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CAB40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v35 - v12;
  __chkstk_darwin(v11);
  v15 = v35 - v14;
  sub_2CAD10();
  sub_F3F4(v44, v43, &qword_34CEA0, &qword_2D0FC0);
  if (!v43[3])
  {
    sub_30B8(v44, &qword_34CEA0, &qword_2D0FC0);
    v17 = v43;
    goto LABEL_7;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v17 = v44;
LABEL_7:
    sub_30B8(v17, &qword_34CEA0, &qword_2D0FC0);
LABEL_8:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  v16 = v42;
  if (sub_2CAE30())
  {

    goto LABEL_5;
  }

  v18 = sub_2CAF30();

  if (!v18)
  {
LABEL_20:
    sub_30B8(v44, &qword_34CEA0, &qword_2D0FC0);

    return v18 & 1;
  }

  v41 = v6;
  v20 = v18 & 0xFFFFFFFFFFFFFF8;
  if (!(v18 >> 62))
  {
    result = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_13;
    }

LABEL_39:
    sub_30B8(v44, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_40;
  }

LABEL_38:
  result = sub_2CEDA0();
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_13:
  v36 = v1;
  if ((v18 & 0xC000000000000001) != 0)
  {
    sub_2CECD0();
  }

  else
  {
    if (!*(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v18 + 32);
  }

  sub_2CAC10();

  v18 = v43[0];
  if (!v43[0])
  {
    goto LABEL_20;
  }

  sub_2CD9A0();
  v1 = sub_2CAC30();

  if (!v1)
  {
    sub_30B8(v44, &qword_34CEA0, &qword_2D0FC0);

LABEL_40:

    goto LABEL_8;
  }

  v35[0] = v0;
  v35[1] = v18;
  v35[2] = v16;
  v40 = *(v1 + 16);
  if (!v40)
  {
LABEL_29:

    goto LABEL_5;
  }

  v20 = 0;
  v38 = v1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v37 = v41 + 16;
  v39 = (v41 + 8);
  while (1)
  {
    if (v20 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v0 = v1;
    (*(v41 + 16))(v10, v38 + *(v41 + 72) * v20, v5);
    v16 = sub_2CAB30();
    v23 = v22;
    v24 = sub_2CD9D0();
    v18 = v25;
    if (!v23)
    {

      goto LABEL_22;
    }

    if (v16 == v24 && v23 == v25)
    {
      break;
    }

    v16 = sub_2CEEA0();

    if (v16)
    {
      goto LABEL_32;
    }

LABEL_22:
    ++v20;
    (*v39)(v10, v5);
    v1 = v0;
    if (v40 == v20)
    {
      goto LABEL_29;
    }
  }

LABEL_32:

  v26 = *(v41 + 32);
  v26(v13, v10, v5);
  v26(v15, v13, v5);
  v27 = sub_2CAB20();
  v29 = v28;
  v30 = v36;
  v31 = v35[0];
  (*(v36 + 104))(v4, enum case for UsoMediaPlayerAttributes.shuffled(_:), v35[0]);
  v32 = sub_2CD9C0();
  v34 = v33;
  (*(v30 + 8))(v4, v31);
  if (v27 == v32 && v29 == v34)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    LOBYTE(v18) = sub_2CEEA0();
  }

  (*v39)(v15, v5);
  sub_30B8(v44, &qword_34CEA0, &qword_2D0FC0);
  return v18 & 1;
}

uint64_t sub_43C3C()
{
  v93 = sub_2CD9E0();
  v91 = *(v93 - 8);
  v0 = *(v91 + 64);
  __chkstk_darwin(v93);
  v90 = v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2CAB40();
  v96 = *(v2 - 8);
  v3 = *(v96 + 64);
  v4 = __chkstk_darwin(v2);
  v101 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v89 = v88 - v7;
  __chkstk_darwin(v6);
  v92 = v88 - v8;
  v100 = sub_2CAE60();
  v98 = *(v100 - 8);
  v9 = *(v98 + 64);
  __chkstk_darwin(v100);
  v94 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_20410(&qword_34CFD0, &qword_2D1030);
  v11 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v99 = v88 - v12;
  v13 = sub_20410(&qword_34CFC0, &qword_2D1020);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v95 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v102 = v88 - v18;
  __chkstk_darwin(v17);
  v103 = v88 - v19;
  v20 = sub_2CAD00();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20410(&qword_34CFD8, &qword_2D1038);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = v88 - v27;
  v29 = sub_20410(&qword_34CFE0, &unk_2D1040);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = v88 - v35;
  __chkstk_darwin(v34);
  v38 = v88 - v37;
  sub_2CAD10();
  sub_F3F4(v106, v105, &qword_34CEA0, &qword_2D0FC0);
  if (!v105[3])
  {
    sub_30B8(v106, &qword_34CEA0, &qword_2D0FC0);
    v42 = v105;
LABEL_52:
    sub_30B8(v42, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_53;
  }

  sub_2CAE40();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v42 = v106;
    goto LABEL_52;
  }

  v39 = v104;
  v40 = sub_2CAE30();
  if (!v40)
  {
    sub_30B8(v106, &qword_34CEA0, &qword_2D0FC0);

LABEL_53:
    v74 = 0;
    return v74 & 1;
  }

  v88[1] = v39;
  v88[2] = v40;
  v41 = sub_2CADB0();
  v88[0] = v2;
  if (v41)
  {
    sub_2CACF0();
  }

  else
  {
    (*(v21 + 56))(v38, 1, 1, v20);
  }

  (*(v21 + 104))(v36, enum case for UsoEntity_common_Person.DefinedValues.common_Person_User(_:), v20);
  (*(v21 + 56))(v36, 0, 1, v20);
  v43 = *(v25 + 48);
  sub_F3F4(v38, v28, &qword_34CFE0, &unk_2D1040);
  sub_F3F4(v36, &v28[v43], &qword_34CFE0, &unk_2D1040);
  v44 = *(v21 + 48);
  if (v44(v28, 1, v20) == 1)
  {
    sub_30B8(v36, &qword_34CFE0, &unk_2D1040);
    sub_30B8(v38, &qword_34CFE0, &unk_2D1040);
    if (v44(&v28[v43], 1, v20) == 1)
    {
      sub_30B8(v28, &qword_34CFE0, &unk_2D1040);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  sub_F3F4(v28, v33, &qword_34CFE0, &unk_2D1040);
  if (v44(&v28[v43], 1, v20) == 1)
  {
    sub_30B8(v36, &qword_34CFE0, &unk_2D1040);
    sub_30B8(v38, &qword_34CFE0, &unk_2D1040);
    (*(v21 + 8))(v33, v20);
LABEL_14:
    sub_30B8(v28, &qword_34CFD8, &qword_2D1038);
LABEL_15:
    sub_30B8(v106, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_53;
  }

  (*(v21 + 32))(v24, &v28[v43], v20);
  sub_44DD4(&qword_34CFF0, &type metadata accessor for UsoEntity_common_Person.DefinedValues);
  v45 = sub_2CE250();
  v46 = *(v21 + 8);
  v46(v24, v20);
  sub_30B8(v36, &qword_34CFE0, &unk_2D1040);
  sub_30B8(v38, &qword_34CFE0, &unk_2D1040);
  v46(v33, v20);
  sub_30B8(v28, &qword_34CFE0, &unk_2D1040);
  if ((v45 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (sub_2CAD70())
  {
    v47 = v103;
    sub_2CAE50();

    v49 = v99;
    v48 = v100;
    v50 = v98;
  }

  else
  {
    v50 = v98;
    v47 = v103;
    v48 = v100;
    (*(v98 + 56))(v103, 1, 1, v100);
    v49 = v99;
  }

  v51 = v102;
  (*(v50 + 104))(v102, enum case for UsoEntity_common_MediaItemType.DefinedValues.common_MediaItemType_Music(_:), v48);
  (*(v50 + 56))(v51, 0, 1, v48);
  v52 = *(v97 + 48);
  sub_F3F4(v47, v49, &qword_34CFC0, &qword_2D1020);
  sub_F3F4(v51, v49 + v52, &qword_34CFC0, &qword_2D1020);
  v53 = *(v50 + 48);
  if (v53(v49, 1, v48) == 1)
  {
    sub_30B8(v51, &qword_34CFC0, &qword_2D1020);
    sub_30B8(v47, &qword_34CFC0, &qword_2D1020);
    if (v53(v49 + v52, 1, v48) == 1)
    {
      sub_30B8(v49, &qword_34CFC0, &qword_2D1020);
      goto LABEL_29;
    }

LABEL_25:
    sub_30B8(v49, &qword_34CFD0, &qword_2D1030);
    goto LABEL_26;
  }

  v54 = v95;
  sub_F3F4(v49, v95, &qword_34CFC0, &qword_2D1020);
  if (v53(v49 + v52, 1, v48) == 1)
  {
    sub_30B8(v102, &qword_34CFC0, &qword_2D1020);
    sub_30B8(v103, &qword_34CFC0, &qword_2D1020);
    (*(v50 + 8))(v54, v48);
    goto LABEL_25;
  }

  v55 = v94;
  (*(v50 + 32))(v94, v49 + v52, v48);
  sub_44DD4(&qword_34CFE8, &type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues);
  v56 = sub_2CE250();
  v57 = *(v50 + 8);
  v57(v55, v48);
  sub_30B8(v102, &qword_34CFC0, &qword_2D1020);
  sub_30B8(v103, &qword_34CFC0, &qword_2D1020);
  v57(v54, v48);
  sub_30B8(v49, &qword_34CFC0, &qword_2D1020);
  if ((v56 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:

  v58 = sub_2CAF30();

  if (!v58)
  {
    goto LABEL_26;
  }

  v59 = v58 & 0xFFFFFFFFFFFFFF8;
  if (v58 >> 62)
  {
LABEL_63:
    result = sub_2CEDA0();
  }

  else
  {
    result = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
  }

  v61 = v88[0];
  if (!result)
  {
    sub_30B8(v106, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_27;
  }

  if ((v58 & 0xC000000000000001) != 0)
  {
    sub_2CECD0();
  }

  else
  {
    if (!*(v59 + 16))
    {
      __break(1u);
      return result;
    }

    v62 = *(v58 + 32);
  }

  sub_2CAC10();

  v58 = v105[0];
  if (!v105[0])
  {
LABEL_26:
    sub_30B8(v106, &qword_34CEA0, &qword_2D0FC0);
LABEL_27:

    goto LABEL_53;
  }

  sub_2CD9A0();
  v59 = v58;
  v63 = sub_2CAC30();

  if (!v63)
  {
    sub_30B8(v106, &qword_34CEA0, &qword_2D0FC0);

    goto LABEL_27;
  }

  v64 = *(v63 + 16);
  if (!v64)
  {
LABEL_50:

    goto LABEL_51;
  }

  v65 = 0;
  v66 = v63 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
  v67 = (v96 + 8);
  while (1)
  {
    if (v65 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_63;
    }

    (*(v96 + 16))(v101, v66 + *(v96 + 72) * v65, v61);
    v68 = sub_2CAB30();
    v70 = v69;
    v71 = sub_2CD9D0();
    v59 = v72;
    if (!v70)
    {

      goto LABEL_42;
    }

    if (v68 == v71 && v70 == v72)
    {
      break;
    }

    v73 = sub_2CEEA0();

    if (v73)
    {
      goto LABEL_57;
    }

LABEL_42:
    ++v65;
    v61 = v88[0];
    (*v67)(v101, v88[0]);
    if (v64 == v65)
    {
      goto LABEL_50;
    }
  }

LABEL_57:

  v75 = *(v96 + 32);
  v76 = v89;
  v77 = v88[0];
  v75(v89, v101, v88[0]);
  v78 = v92;
  v75(v92, v76, v77);
  v79 = sub_2CAB20();
  v81 = v80;
  v82 = v91;
  v83 = v90;
  v84 = v93;
  (*(v91 + 104))(v90, enum case for UsoMediaPlayerAttributes.shuffled(_:), v93);
  v85 = sub_2CD9C0();
  v87 = v86;
  (*(v82 + 8))(v83, v84);
  if (v79 == v85 && v81 == v87)
  {
    v74 = 1;
  }

  else
  {
    v74 = sub_2CEEA0();
  }

  (*v67)(v78, v88[0]);
  sub_30B8(v106, &qword_34CEA0, &qword_2D0FC0);
  return v74 & 1;
}

uint64_t sub_44BB4()
{
  sub_2CAD10();
  sub_F3F4(v5, v3, &qword_34CEA0, &qword_2D0FC0);
  if (v4)
  {
    sub_2CAE00();
    if (swift_dynamicCast())
    {

      sub_2CAF40();

      if (v3[0])
      {
        v0 = sub_2CAC20();

        if (v0)
        {

          sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_30B8(v3, &qword_34CEA0, &qword_2D0FC0);
  }

  sub_F3F4(v5, v3, &qword_34CEA0, &qword_2D0FC0);
  if (!v4)
  {
    sub_30B8(v3, &qword_34CEA0, &qword_2D0FC0);
    goto LABEL_15;
  }

  sub_2CAE80();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
    return 0;
  }

  sub_2CAF40();

  if (v3[0])
  {
    v1 = sub_2CAC20();

    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
    if (v1)
    {

      return 1;
    }
  }

  else
  {
    sub_30B8(v5, &qword_34CEA0, &qword_2D0FC0);
  }

  return 0;
}

uint64_t sub_44DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_44E1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v17, v18, v10);
    v19 = sub_2CDFE0();
    v20 = sub_2CE670();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "DetermineDialogProvider#respondWithCannotPreviousOrNextDialog Cannot answer question about previous", v21, 2u);
    }

    (*(v11 + 8))(v17, v10);
    v22 = *(v5 + 120);
    v23 = sub_112C0(_swiftEmptyArrayStorage);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_94AFC(v23, a1, &v31, a3, a4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v15, v24, v10);
    v25 = sub_2CDFE0();
    v26 = sub_2CE670();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "DetermineDialogProvider#respondWithCannotPreviousOrNextDialog Cannot answer question about next", v27, 2u);
    }

    (*(v11 + 8))(v15, v10);
    v28 = *(v5 + 120);
    v29 = sub_112C0(_swiftEmptyArrayStorage);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_94478(v29, a1, &v31, a3, a4);
  }

  return sub_48E38(&v31);
}

uint64_t sub_45174(uint64_t a1, int a2, int a3, id a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v12 = sub_2C6C9C([a4 unsupportedReason]);
  if ((v13 & 1) != 0 || v12 != 4)
  {
    sub_2CC230();
    v17 = sub_2CC1A0();
    v18 = *(v9 + 120);
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_95180(v17, a1, &v19, a8, a9);

    sub_48E38(&v19);
    return sub_2CC1C0();
  }

  else
  {
    v14 = *(v9 + 120);
    v15 = sub_112C0(_swiftEmptyArrayStorage);
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_94478(v15, a1, &v19, a8, a9);

    return sub_48E38(&v19);
  }
}

uint64_t sub_45284()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  v2 = v0[14];

  v3 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetermineDialogProvider()
{
  result = qword_34D020;
  if (!qword_34D020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_45370(uint64_t a1, NSObject *a2, char *a3, char *a4)
{
  v426 = a1;
  v427 = a3;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v431 = v6;
  v432 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v423 = &v395 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v422 = &v395 - v12;
  v13 = __chkstk_darwin(v11);
  v418 = &v395 - v14;
  v15 = __chkstk_darwin(v13);
  v410 = &v395 - v16;
  v17 = __chkstk_darwin(v15);
  v416 = &v395 - v18;
  v19 = __chkstk_darwin(v17);
  v409 = &v395 - v20;
  v21 = __chkstk_darwin(v19);
  v415 = &v395 - v22;
  v23 = __chkstk_darwin(v21);
  v408 = &v395 - v24;
  v25 = __chkstk_darwin(v23);
  v414 = &v395 - v26;
  v27 = __chkstk_darwin(v25);
  v407 = &v395 - v28;
  v29 = __chkstk_darwin(v27);
  v413 = &v395 - v30;
  v31 = __chkstk_darwin(v29);
  v406 = &v395 - v32;
  v33 = __chkstk_darwin(v31);
  v412 = &v395 - v34;
  v35 = __chkstk_darwin(v33);
  v405 = &v395 - v36;
  v37 = __chkstk_darwin(v35);
  v411 = &v395 - v38;
  v39 = __chkstk_darwin(v37);
  v421 = &v395 - v40;
  v41 = __chkstk_darwin(v39);
  v417 = &v395 - v42;
  __chkstk_darwin(v41);
  v428 = &v395 - v43;
  v420 = sub_20410(&unk_353120, &unk_2D0B50);
  v44 = swift_allocObject();
  *(v44 + 32) = 0xD000000000000010;
  *(v44 + 16) = xmmword_2D1050;
  *(v44 + 40) = 0x80000000002DAE40;
  v433 = a2;
  v45 = [a2 whaDialogMetadata];
  if (!v45 || (v46 = v45, v47 = [v45 firstSpeakerName], v46, !v47))
  {
    v51 = (v44 + 48);
    *(v44 + 72) = &type metadata for String;
LABEL_6:
    *v51 = 0;
    v50 = 0xE000000000000000;
    goto LABEL_7;
  }

  v48 = sub_2CE270();
  v50 = v49;

  v51 = (v44 + 48);
  *(v44 + 72) = &type metadata for String;
  if (!v50)
  {
    goto LABEL_6;
  }

  *v51 = v48;
LABEL_7:
  *(v44 + 56) = v50;
  *(v44 + 80) = 0xD000000000000011;
  *(v44 + 88) = 0x80000000002DAE60;
  v52 = [v433 whaDialogMetadata];
  if (!v52 || (v53 = v52, v54 = [v52 secondSpeakerName], v53, !v54))
  {
    v58 = (v44 + 96);
    *(v44 + 120) = &type metadata for String;
LABEL_12:
    *v58 = 0;
    v57 = 0xE000000000000000;
    goto LABEL_13;
  }

  v55 = sub_2CE270();
  v57 = v56;

  v58 = (v44 + 96);
  *(v44 + 120) = &type metadata for String;
  if (!v57)
  {
    goto LABEL_12;
  }

  *v58 = v55;
LABEL_13:
  *(v44 + 104) = v57;
  *(v44 + 128) = 0xD000000000000010;
  *(v44 + 136) = 0x80000000002DAE80;
  v59 = [v433 whaDialogMetadata];
  if (!v59 || (v60 = v59, v61 = [v59 firstSpeakerRoom], v60, !v61))
  {
    v65 = (v44 + 144);
    *(v44 + 168) = &type metadata for String;
    v66 = v431;
LABEL_18:
    *v65 = 0;
    v64 = 0xE000000000000000;
    goto LABEL_19;
  }

  v62 = sub_2CE270();
  v64 = v63;

  v65 = (v44 + 144);
  *(v44 + 168) = &type metadata for String;
  v66 = v431;
  if (!v64)
  {
    goto LABEL_18;
  }

  *v65 = v62;
LABEL_19:
  *(v44 + 152) = v64;
  *(v44 + 176) = 0xD000000000000011;
  *(v44 + 184) = 0x80000000002DAEA0;
  v67 = [v433 whaDialogMetadata];
  if (!v67 || (v68 = v67, v69 = [v67 secondSpeakerRoom], v68, !v69))
  {
    v73 = (v44 + 192);
    *(v44 + 216) = &type metadata for String;
LABEL_24:
    *v73 = 0;
    v72 = 0xE000000000000000;
    goto LABEL_25;
  }

  v70 = sub_2CE270();
  v72 = v71;

  v73 = (v44 + 192);
  *(v44 + 216) = &type metadata for String;
  if (!v72)
  {
    goto LABEL_24;
  }

  *v73 = v70;
LABEL_25:
  *(v44 + 200) = v72;
  *(v44 + 224) = 0xD000000000000024;
  *(v44 + 232) = 0x80000000002DAEC0;
  v74 = [v433 whaDialogMetadata];
  if (!v74 || (v75 = v74, v76 = [v74 firstPermanentNameFromSpokenEntities], v75, !v76))
  {
    v80 = (v44 + 240);
    *(v44 + 264) = &type metadata for String;
LABEL_30:
    *v80 = 0;
    v79 = 0xE000000000000000;
    goto LABEL_31;
  }

  v77 = sub_2CE270();
  v79 = v78;

  v80 = (v44 + 240);
  *(v44 + 264) = &type metadata for String;
  if (!v79)
  {
    goto LABEL_30;
  }

  *v80 = v77;
LABEL_31:
  *(v44 + 248) = v79;
  *(v44 + 272) = 0xD000000000000025;
  *(v44 + 280) = 0x80000000002DAEF0;
  v81 = [v433 whaDialogMetadata];
  if (!v81 || (v82 = v81, v83 = [v81 secondPermanentNameFromSpokenEntities], v82, !v83))
  {
    v87 = (v44 + 288);
    *(v44 + 312) = &type metadata for String;
LABEL_36:
    *v87 = 0;
    v86 = 0xE000000000000000;
    goto LABEL_37;
  }

  v84 = sub_2CE270();
  v86 = v85;

  v87 = (v44 + 288);
  *(v44 + 312) = &type metadata for String;
  if (!v86)
  {
    goto LABEL_36;
  }

  *v87 = v84;
LABEL_37:
  *(v44 + 296) = v86;
  *(v44 + 320) = 0xD00000000000001FLL;
  *(v44 + 328) = 0x80000000002DAF20;
  v88 = [v433 whaDialogMetadata];
  if (!v88 || (v89 = v88, v90 = [v88 firstRoomNameFromSpokenEntities], v89, !v90))
  {
    v94 = (v44 + 336);
    *(v44 + 360) = &type metadata for String;
LABEL_42:
    v95 = v433;
    *v94 = 0;
    v93 = 0xE000000000000000;
    goto LABEL_43;
  }

  v91 = sub_2CE270();
  v93 = v92;

  v94 = (v44 + 336);
  *(v44 + 360) = &type metadata for String;
  if (!v93)
  {
    goto LABEL_42;
  }

  *v94 = v91;
  v95 = v433;
LABEL_43:
  *(v44 + 344) = v93;
  *(v44 + 368) = 0xD00000000000001BLL;
  *(v44 + 376) = 0x80000000002DAF40;
  v96 = [v95 whaDialogMetadata];
  if (v96 && (v97 = v96, v98 = [v96 numberOfHomeAutomationWords], v97, v98))
  {
    *(&v436 + 1) = sub_48EA0();
    *&v435 = v98;
    sub_E2DC(&v435, (v44 + 384));
  }

  else
  {
    *(v44 + 408) = &type metadata for String;
    *(v44 + 384) = 0;
    *(v44 + 392) = 0xE000000000000000;
  }

  strcpy((v44 + 416), "isAllSpeakers");
  *(v44 + 430) = -4864;
  v99 = v433;
  v100 = [v433 whaDialogMetadata];
  isa = [v100 isAllSpeakers];

  v102 = sub_48EA0();
  *(v44 + 456) = v102;
  if (!isa)
  {
    isa = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 432) = isa;
  strcpy((v44 + 464), "isPauseOrStop");
  *(v44 + 478) = -4864;
  v103 = [v99 whaDialogMetadata];
  v104 = [v103 isPauseOrStop];

  *(v44 + 504) = v102;
  if (!v104)
  {
    v104 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 480) = v104;
  *(v44 + 512) = 0xD000000000000018;
  *(v44 + 520) = 0x80000000002DAF60;
  v105 = [v99 whaDialogMetadata];
  v106 = [v105 isWholeHouseAudioCommand];

  *(v44 + 552) = v102;
  if (!v106)
  {
    v106 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 528) = v106;
  *(v44 + 560) = 0x657265486E497369;
  *(v44 + 568) = 0xE800000000000000;
  v107 = [v99 whaDialogMetadata];
  v108 = [v107 isInHere];

  *(v44 + 600) = v102;
  if (!v108)
  {
    v108 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 576) = v108;
  *(v44 + 608) = 0x7065637845736168;
  *(v44 + 616) = 0xE900000000000074;
  v109 = [v99 whaDialogMetadata];
  v110 = [v109 hasExcept];

  *(v44 + 648) = v102;
  if (!v110)
  {
    v110 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 624) = v110;
  *(v44 + 656) = 0xD000000000000013;
  *(v44 + 664) = 0x80000000002DAF80;
  v111 = [v99 whaDialogMetadata];
  v112 = [v111 hasThreeOrMoreRooms];

  *(v44 + 696) = v102;
  if (!v112)
  {
    v112 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 672) = v112;
  *(v44 + 704) = 0xD000000000000015;
  *(v44 + 712) = 0x80000000002DAFA0;
  v113 = [v99 whaDialogMetadata];
  v114 = [v113 hasThreeOrMoreDevices];

  *(v44 + 744) = v102;
  if (!v114)
  {
    v114 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 720) = v114;
  *(v44 + 752) = 0xD000000000000011;
  *(v44 + 760) = 0x80000000002DAFC0;
  v115 = [v99 whaDialogMetadata];
  v116 = [v115 hasTwoOrMoreRooms];

  *(v44 + 792) = v102;
  if (!v116)
  {
    v116 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 768) = v116;
  *(v44 + 800) = 0x70756F7247736168;
  *(v44 + 808) = 0xE900000000000073;
  v117 = [v99 whaDialogMetadata];
  v118 = [v117 hasGroups];

  *(v44 + 840) = v102;
  v119 = v428;
  if (!v118)
  {
    v118 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 816) = v118;
  *(v44 + 848) = 0xD000000000000016;
  *(v44 + 856) = 0x80000000002DAFE0;
  v120 = [v99 whaDialogMetadata];
  v121 = [v120 isParticipatingSpeaker];

  *(v44 + 888) = v102;
  if (!v121)
  {
    v121 = sub_2CEB00(0).super.super.isa;
  }

  *(v44 + 864) = v121;
  v122 = sub_112C0(v44);
  swift_setDeallocating();
  v419 = sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v123 = v432;
  v124 = a4;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v125 = sub_3ED0(v66, static Logger.default);
  swift_beginAccess();
  v127 = v123 + 16;
  v126 = *(v123 + 16);
  v429 = v125;
  v430 = v126;
  v126(v119, v125, v66);

  v128 = sub_2CDFE0();
  v129 = sub_2CE670();

  v130 = os_log_type_enabled(v128, v129);
  v424 = v122;
  if (v130)
  {
    v131 = swift_slowAlloc();
    v132 = v119;
    v133 = v124;
    v134 = swift_slowAlloc();
    *&v435 = v134;
    *v131 = 136315138;
    v135 = sub_2CE210();
    v136 = v123 + 16;
    v138 = sub_3F08(v135, v137, &v435);
    v127 = v136;

    *(v131 + 4) = v138;
    _os_log_impl(&dword_0, v128, v129, "DetermineDialogProvider#makeIntentHandledDialogForAllCases WHA Params:%s", v131, 0xCu);
    sub_306C(v134);
    v124 = v133;
    v139 = v432;

    v66 = v431;

    v140 = v132;
    v141 = *(v139 + 8);
    v141(v140, v66);
  }

  else
  {

    v141 = *(v123 + 8);
    v141(v119, v66);
  }

  v142 = v433;
  v428 = [v433 queueLocation];
  v143 = [v142 queueLocation];
  v144 = [v142 nowPlayingIntentInfo];
  if (!v144)
  {
    goto LABEL_283;
  }

  v145 = v144;
  v403 = v143;
  type metadata accessor for NowPlayingIntentInfo();
  v146 = sub_2CE410();

  if (!(v146 >> 62))
  {
    if (*(&dword_10 + (v146 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_75;
    }

    goto LABEL_282;
  }

  if (!sub_2CEDA0())
  {
LABEL_282:

LABEL_283:

    v389 = v423;
    v430(v423, v429, v66);
    v390 = sub_2CDFE0();
    v391 = sub_2CE670();
    if (os_log_type_enabled(v390, v391))
    {
      v392 = swift_slowAlloc();
      *v392 = 0;
      _os_log_impl(&dword_0, v390, v391, "DetermineDialogProvider#makeIntentHandledDialogForAllCases No nowPlayingIntentInfo found returning that we don't know title", v392, 2u);
    }

    v141(v389, v66);
    v393 = *(v425 + 120);
    v394 = sub_112C0(_swiftEmptyArrayStorage);
    v437 = 0;
    v435 = 0u;
    v436 = 0u;
    sub_95804(v394, v426, &v435, v427, v124);

    goto LABEL_286;
  }

LABEL_75:
  v404 = v127;
  if ((v146 & 0xC000000000000001) != 0)
  {
    v147 = sub_2CECD0();
LABEL_78:
    v148 = v147;

    v423 = v148;
    v149 = [v148 noAppProvidedData];
    v150.super.super.isa = sub_2CEB00(0).super.super.isa;
    v151 = v150.super.super.isa;
    if (v149)
    {
      v152 = sub_2CEB30();

      if (v152)
      {
        v153 = v423;
        v154 = [v423 isLoading];
        if (!v154)
        {
          goto LABEL_83;
        }

        v155 = [v153 isLoading];
        v156.super.super.isa = sub_2CEB00(0).super.super.isa;
        v157 = v156.super.super.isa;
        if (v155)
        {
          v158 = sub_2CEB30();

          v153 = v423;
          if (v158)
          {
LABEL_83:
            v159 = [v153 albumArtist];
            if (v159)
            {
              v160 = v159;
              v161 = sub_2CE270();
              v398 = v162;
            }

            else
            {
              v161 = 0;
              v398 = 0;
            }

            v418 = v161;
            v177 = [v153 album];
            if (v177)
            {
              v178 = v177;
              v179 = sub_2CE270();
              v181 = v180;
            }

            else
            {
              v179 = 0;
              v181 = 0;
            }

            v401 = v179;
            v182 = [v153 trackArtist];
            if (v182)
            {
              v183 = v182;
              v422 = sub_2CE270();
              v399 = v184;
            }

            else
            {
              v422 = 0;
              v399 = 0;
            }

            v185 = [v153 title];
            if (v185)
            {
              v186 = v185;
              v187 = sub_2CE270();
              v189 = v188;
            }

            else
            {
              v187 = 0;
              v189 = 0;
            }

            v190 = v433;
            v191 = [v433 requestType];
            v397 = v124;
            if (v191 == &dword_4 + 1)
            {

              v192 = [v153 playlistTitle];
              if (v192)
              {
LABEL_113:
                v193 = v192;
                v187 = sub_2CE270();
                v189 = v194;

                goto LABEL_117;
              }
            }

            else
            {
              if ([v190 requestType]!= &dword_4)
              {
                goto LABEL_117;
              }

              v192 = [v153 stationTitle];
              if (v192)
              {
                goto LABEL_113;
              }
            }

            v187 = 0;
            v189 = 0;
LABEL_117:
            v400 = v187;
            v195 = [v153 appBundleId];
            v402 = v141;
            if (v195)
            {
              v196 = v195;
              v197 = sub_2CE270();
              v199 = v198;

              v200 = sub_2CBD90();
              if (v199)
              {
                v202 = v181;
                if (v197 == v200 && v199 == v201)
                {

LABEL_169:
                  v263 = v403 == &dword_0 + 2;
                  v264 = v428 == &dword_0 + 3;
                  v265 = v433;
                  v410 = [v433 requestType];
                  LODWORD(v421) = v410 == &dword_0 + 2;
                  v411 = [v265 requestType];
                  LODWORD(v420) = v411 == &dword_0 + 1;
                  v412 = [v265 requestType];
                  LODWORD(v416) = v412 == 0;
                  v413 = [v265 requestType];
                  LODWORD(v415) = v413 == &dword_4;
                  v414 = [v265 requestType];
                  v266 = v399;
                  LODWORD(v433) = v414 == &dword_4 + 1;
                  v267 = swift_allocObject();
                  v268 = v267;
                  *(v267 + 16) = xmmword_2D1060;
                  *(v267 + 32) = 0xD000000000000013;
                  *(v267 + 40) = 0x80000000002DB000;
                  *(v267 + 48) = v264;
                  *(v267 + 72) = &type metadata for Bool;
                  *(v267 + 80) = 0x65527478654E7369;
                  *(v267 + 88) = 0xEF65636E65726566;
                  *(v267 + 96) = v263;
                  *(v267 + 120) = &type metadata for Bool;
                  *(v267 + 128) = 0x7472416D75626C61;
                  v269 = v398;
                  v270 = v418;
                  if (!v398)
                  {
                    v270 = 0;
                  }

                  v271 = 0xE000000000000000;
                  if (v398)
                  {
                    v272 = v398;
                  }

                  else
                  {
                    v272 = 0xE000000000000000;
                  }

                  *(v267 + 136) = 0xEB00000000747369;
                  *(v267 + 144) = v270;
                  *(v267 + 152) = v272;
                  *(v267 + 168) = &type metadata for String;
                  *(v267 + 176) = 0x6D75626C61;
                  v273 = v202;
                  v274 = v401;
                  if (v202)
                  {
                    v275 = v202;
                  }

                  else
                  {
                    v274 = 0;
                    v275 = 0xE000000000000000;
                  }

                  *(v267 + 184) = 0xE500000000000000;
                  *(v267 + 192) = v274;
                  *(v267 + 200) = v275;
                  *(v267 + 216) = &type metadata for String;
                  *(v267 + 224) = 0x747241656C746974;
                  v276 = v422;
                  if (v266)
                  {
                    v277 = v266;
                  }

                  else
                  {
                    v276 = 0;
                    v277 = 0xE000000000000000;
                  }

                  *(v267 + 232) = 0xEB00000000747369;
                  *(v267 + 240) = v276;
                  *(v267 + 248) = v277;
                  *(v267 + 264) = &type metadata for String;
                  *(v267 + 272) = 0x656C746974;
                  v278 = v400;
                  if (v189)
                  {
                    v271 = v189;
                  }

                  else
                  {
                    v278 = 0;
                  }

                  *(v267 + 280) = 0xE500000000000000;
                  *(v267 + 288) = v278;
                  *(v267 + 296) = v271;
                  *(v267 + 312) = &type metadata for String;
                  *(v267 + 320) = 0x6D75626C417369;
                  v279 = v269;
                  *(v267 + 328) = 0xE700000000000000;
                  *(v267 + 336) = v421;
                  *(v267 + 360) = &type metadata for Bool;
                  *(v267 + 368) = 0x7473697472417369;
                  *(v267 + 376) = 0xE800000000000000;
                  *(v267 + 384) = v420;
                  *(v267 + 408) = &type metadata for Bool;
                  *(v267 + 416) = 0x656C7469547369;
                  *(v267 + 424) = 0xE700000000000000;
                  *(v267 + 432) = v416;
                  *(v267 + 456) = &type metadata for Bool;
                  *(v267 + 464) = 0x6F696461527369;
                  *(v267 + 472) = 0xE700000000000000;
                  *(v267 + 480) = v415;
                  *(v267 + 504) = &type metadata for Bool;
                  *(v267 + 512) = 0x696C79616C507369;
                  *(v267 + 520) = 0xEA00000000007473;
                  *(v267 + 552) = &type metadata for Bool;
                  *(v267 + 528) = v433;
                  v280 = v266;
                  *(v267 + 560) = 0x6D61726150616877;
                  *(v267 + 568) = 0xE900000000000073;
                  *(v267 + 600) = sub_20410(&qword_34CCD8, &unk_2D10D0);
                  *(v268 + 576) = v424;

                  v281 = sub_112C0(v268);
                  swift_setDeallocating();
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v282 = v417;
                  v283 = v431;
                  v430(v417, v429, v431);

                  v284 = sub_2CDFE0();
                  v285 = sub_2CE670();

                  LODWORD(v430) = v285;
                  v433 = v284;
                  if (os_log_type_enabled(v284, v285))
                  {
                    v286 = swift_slowAlloc();
                    v429 = v281;
                    v287 = v286;
                    v424 = swift_slowAlloc();
                    v434 = v424;
                    *v287 = 136317698;
                    v399 = v280;
                    if (v428 == &dword_0 + 3)
                    {
                      v288 = 1702195828;
                    }

                    else
                    {
                      v288 = 0x65736C6166;
                    }

                    if (v428 == &dword_0 + 3)
                    {
                      v289 = 0xE400000000000000;
                    }

                    else
                    {
                      v289 = 0xE500000000000000;
                    }

                    v290 = sub_3F08(v288, v289, &v434);

                    *(v287 + 4) = v290;
                    *(v287 + 12) = 2080;
                    if (v403 == &dword_0 + 2)
                    {
                      v291 = 1702195828;
                    }

                    else
                    {
                      v291 = 0x65736C6166;
                    }

                    if (v403 == &dword_0 + 2)
                    {
                      v292 = 0xE400000000000000;
                    }

                    else
                    {
                      v292 = 0xE500000000000000;
                    }

                    v293 = sub_3F08(v291, v292, &v434);

                    *(v287 + 14) = v293;
                    *(v287 + 22) = 2080;
                    *&v435 = v418;
                    *(&v435 + 1) = v279;
                    sub_20410(&qword_34CCC0, &unk_2D0DE0);
                    v294 = sub_2CE2A0();
                    v296 = sub_3F08(v294, v295, &v434);

                    *(v287 + 24) = v296;
                    *(v287 + 32) = 2080;
                    *&v435 = v401;
                    *(&v435 + 1) = v273;
                    v297 = sub_2CE2A0();
                    v299 = sub_3F08(v297, v298, &v434);

                    *(v287 + 34) = v299;
                    *(v287 + 42) = 2080;
                    *&v435 = v422;
                    *(&v435 + 1) = v399;
                    v300 = sub_2CE2A0();
                    v302 = sub_3F08(v300, v301, &v434);

                    *(v287 + 44) = v302;
                    *(v287 + 52) = 2080;
                    *&v435 = v400;
                    *(&v435 + 1) = v189;
                    v303 = sub_2CE2A0();
                    v305 = sub_3F08(v303, v304, &v434);

                    *(v287 + 54) = v305;
                    *(v287 + 62) = 2080;
                    if (v410 == &dword_0 + 2)
                    {
                      v306 = 1702195828;
                    }

                    else
                    {
                      v306 = 0x65736C6166;
                    }

                    if (v410 == &dword_0 + 2)
                    {
                      v307 = 0xE400000000000000;
                    }

                    else
                    {
                      v307 = 0xE500000000000000;
                    }

                    v308 = sub_3F08(v306, v307, &v434);

                    *(v287 + 64) = v308;
                    *(v287 + 72) = 2080;
                    if (v411 == &dword_0 + 1)
                    {
                      v309 = 1702195828;
                    }

                    else
                    {
                      v309 = 0x65736C6166;
                    }

                    if (v411 == &dword_0 + 1)
                    {
                      v310 = 0xE400000000000000;
                    }

                    else
                    {
                      v310 = 0xE500000000000000;
                    }

                    v311 = sub_3F08(v309, v310, &v434);

                    *(v287 + 74) = v311;
                    *(v287 + 82) = 2080;
                    if (v412)
                    {
                      v312 = 0x65736C6166;
                    }

                    else
                    {
                      v312 = 1702195828;
                    }

                    if (v412)
                    {
                      v313 = 0xE500000000000000;
                    }

                    else
                    {
                      v313 = 0xE400000000000000;
                    }

                    v314 = sub_3F08(v312, v313, &v434);

                    *(v287 + 84) = v314;
                    *(v287 + 92) = 2080;
                    if (v413 == &dword_4)
                    {
                      v315 = 1702195828;
                    }

                    else
                    {
                      v315 = 0x65736C6166;
                    }

                    if (v413 == &dword_4)
                    {
                      v316 = 0xE400000000000000;
                    }

                    else
                    {
                      v316 = 0xE500000000000000;
                    }

                    v317 = sub_3F08(v315, v316, &v434);

                    *(v287 + 94) = v317;
                    *(v287 + 102) = 2080;
                    if (v414 == &dword_4 + 1)
                    {
                      v318 = 1702195828;
                    }

                    else
                    {
                      v318 = 0x65736C6166;
                    }

                    if (v414 == &dword_4 + 1)
                    {
                      v319 = 0xE400000000000000;
                    }

                    else
                    {
                      v319 = 0xE500000000000000;
                    }

                    v320 = sub_3F08(v318, v319, &v434);

                    *(v287 + 104) = v320;
                    v321 = v433;
                    _os_log_impl(&dword_0, v433, v430, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Soundscapes Params isPreviousReference:%s isNextReference:%s albumArtist:%s album:%s titleArtist:%s title:%s isAlbum:%s isArtist:%s isTitle:%s isRadio:%s isPlaylist:%s", v287, 0x70u);
                    swift_arrayDestroy();

                    v281 = v429;

                    (*(v432 + 8))(v417, v431);
                  }

                  else
                  {

                    v402(v282, v283);
                  }

                  v322 = v423;
                  v323 = *(v425 + 120);
                  v437 = 0;
                  v435 = 0u;
                  v436 = 0u;
                  sub_93DF4(v281, v426, &v435, v427, v397);

                  goto LABEL_286;
                }

                v262 = sub_2CEEA0();

                if (v262)
                {
                  goto LABEL_169;
                }

LABEL_125:
                v203 = v403 == &dword_0 + 2;
                v204 = v428 == &dword_0 + 3;
                v205 = swift_allocObject();
                v206 = v205;
                *(v205 + 16) = xmmword_2D0050;
                *(v205 + 32) = 0xD000000000000013;
                *(v205 + 40) = 0x80000000002DB000;
                *(v205 + 48) = v204;
                *(v205 + 72) = &type metadata for Bool;
                *(v205 + 80) = 0x65527478654E7369;
                *(v205 + 88) = 0xEF65636E65726566;
                *(v205 + 96) = v203;
                *(v205 + 120) = &type metadata for Bool;
                *(v205 + 128) = 0x7472416D75626C61;
                v207 = v398;
                v208 = v418;
                if (!v398)
                {
                  v208 = 0;
                }

                v209 = 0xE000000000000000;
                if (v398)
                {
                  v210 = v398;
                }

                else
                {
                  v210 = 0xE000000000000000;
                }

                *(v205 + 136) = 0xEB00000000747369;
                *(v205 + 144) = v208;
                *(v205 + 152) = v210;
                *(v205 + 168) = &type metadata for String;
                *(v205 + 176) = 0x6D75626C61;
                v211 = v401;
                if (v202)
                {
                  v212 = v202;
                }

                else
                {
                  v211 = 0;
                  v212 = 0xE000000000000000;
                }

                *(v205 + 184) = 0xE500000000000000;
                *(v205 + 192) = v211;
                *(v205 + 200) = v212;
                *(v205 + 216) = &type metadata for String;
                *(v205 + 224) = 0x747241656C746974;
                v213 = v399;
                v214 = v422;
                if (v399)
                {
                  v215 = v399;
                }

                else
                {
                  v214 = 0;
                  v215 = 0xE000000000000000;
                }

                *(v205 + 232) = 0xEB00000000747369;
                *(v205 + 240) = v214;
                *(v205 + 248) = v215;
                *(v205 + 264) = &type metadata for String;
                *(v205 + 272) = 0x656C746974;
                v216 = v400;
                if (v189)
                {
                  v209 = v189;
                }

                else
                {
                  v216 = 0;
                }

                *(v205 + 280) = 0xE500000000000000;
                *(v205 + 288) = v216;
                *(v205 + 296) = v209;
                *(v205 + 312) = &type metadata for String;
                *(v205 + 320) = 0x6D61726150616877;
                *(v205 + 328) = 0xE900000000000073;
                *(v205 + 360) = sub_20410(&qword_34CCD8, &unk_2D10D0);
                *(v206 + 336) = v424;

                v217 = sub_112C0(v206);
                swift_setDeallocating();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                v218 = v421;
                v219 = v431;
                v430(v421, v429, v431);

                v220 = sub_2CDFE0();
                v221 = sub_2CE670();
                v424 = v189;

                if (os_log_type_enabled(v220, v221))
                {
                  v222 = swift_slowAlloc();
                  v396 = v202;
                  v223 = v222;
                  v419 = swift_slowAlloc();
                  v434 = v419;
                  *v223 = 136316418;
                  v420 = v217;
                  if (v428 == &dword_0 + 3)
                  {
                    v224 = 1702195828;
                  }

                  else
                  {
                    v224 = 0x65736C6166;
                  }

                  LODWORD(v417) = v221;
                  if (v428 == &dword_0 + 3)
                  {
                    v225 = 0xE400000000000000;
                  }

                  else
                  {
                    v225 = 0xE500000000000000;
                  }

                  v226 = sub_3F08(v224, v225, &v434);

                  *(v223 + 4) = v226;
                  *(v223 + 12) = 2080;
                  if (v403 == &dword_0 + 2)
                  {
                    v227 = 1702195828;
                  }

                  else
                  {
                    v227 = 0x65736C6166;
                  }

                  if (v403 == &dword_0 + 2)
                  {
                    v228 = 0xE400000000000000;
                  }

                  else
                  {
                    v228 = 0xE500000000000000;
                  }

                  v229 = sub_3F08(v227, v228, &v434);

                  *(v223 + 14) = v229;
                  *(v223 + 22) = 2080;
                  *&v435 = v418;
                  *(&v435 + 1) = v207;
                  sub_20410(&qword_34CCC0, &unk_2D0DE0);
                  v230 = sub_2CE2A0();
                  v232 = sub_3F08(v230, v231, &v434);

                  *(v223 + 24) = v232;
                  *(v223 + 32) = 2080;
                  *&v435 = v401;
                  *(&v435 + 1) = v396;
                  v233 = v396;

                  v234 = sub_2CE2A0();
                  v236 = sub_3F08(v234, v235, &v434);

                  *(v223 + 34) = v236;
                  *(v223 + 42) = 2080;
                  *&v435 = v422;
                  *(&v435 + 1) = v213;

                  v237 = sub_2CE2A0();
                  v239 = sub_3F08(v237, v238, &v434);

                  *(v223 + 44) = v239;
                  *(v223 + 52) = 2080;
                  v240 = v424;
                  *&v435 = v400;
                  *(&v435 + 1) = v424;

                  v217 = v420;
                  v241 = sub_2CE2A0();
                  v243 = sub_3F08(v241, v242, &v434);
                  v219 = v431;

                  *(v223 + 54) = v243;
                  _os_log_impl(&dword_0, v220, v417, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Generic Params isPreviousReference:%s isNextReference:%s albumArtist:%s album:%s titleArtist:%s title:%s", v223, 0x3Eu);
                  swift_arrayDestroy();

                  v402 = *(v432 + 8);
                  v402(v421, v219);
                  v244 = v397;
                  v245 = v433;
                }

                else
                {

                  v402(v218, v219);
                  v244 = v397;
                  v245 = v433;
                  v233 = v202;
                  v240 = v424;
                }

                v246 = [v245 requestType];
                if (v246 <= 1)
                {
                  v247 = v403;
                  if (!v246)
                  {

                    if (v240)
                    {

                      v336 = v411;
                      v430(v411, v429, v219);
                      v337 = sub_2CDFE0();
                      v338 = sub_2CE670();
                      v339 = os_log_type_enabled(v337, v338);
                      v340 = v402;
                      if (v339)
                      {
                        v341 = swift_slowAlloc();
                        *v341 = 0;
                        _os_log_impl(&dword_0, v337, v338, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about title", v341, 2u);
                      }

                      v340(v336, v219);
                      goto LABEL_245;
                    }

                    v348 = v428;
                    v362 = v402;
                    if (v428 != &dword_0 + 3 && v247 != &dword_0 + 2)
                    {
                      v363 = v405;
                      v430(v405, v429, v219);
                      v364 = sub_2CDFE0();
                      v365 = sub_2CE670();
                      if (os_log_type_enabled(v364, v365))
                      {
                        v366 = swift_slowAlloc();
                        *v366 = 0;
                        _os_log_impl(&dword_0, v364, v365, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about title", v366, 2u);
                      }

                      v362(v363, v219);
                      goto LABEL_277;
                    }

LABEL_278:
                    v386 = v348 == &dword_0 + 3;
                    v387 = v426;
                    goto LABEL_279;
                  }

                  if (v246 == (&dword_0 + 1))
                  {

                    if (v213)
                    {

                      v255 = v413;
                      v430(v413, v429, v219);
                      v256 = sub_2CDFE0();
                      v257 = sub_2CE670();
                      v258 = os_log_type_enabled(v256, v257);
                      v259 = v402;
                      if (v258)
                      {
                        v260 = swift_slowAlloc();
                        *v260 = 0;
                        _os_log_impl(&dword_0, v256, v257, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about artist", v260, 2u);
                      }

                      v259(v255, v219);
                      v261 = *(v425 + 120);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_92A68(v217, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    v374 = v402;
                    if (v428 != &dword_0 + 3 && v247 != &dword_0 + 2)
                    {
                      v375 = v407;
                      v430(v407, v429, v219);
                      v376 = sub_2CDFE0();
                      v377 = sub_2CE670();
                      if (os_log_type_enabled(v376, v377))
                      {
                        v378 = swift_slowAlloc();
                        *v378 = 0;
                        _os_log_impl(&dword_0, v376, v377, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about artist", v378, 2u);
                      }

                      v374(v375, v219);
                      v379 = *(v425 + 120);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_9652C(v217, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    v388 = v428 == &dword_0 + 3;

                    v387 = v426;
                    v386 = v388;
LABEL_279:
                    sub_44E1C(v387, v386, v427, v244);

                    return;
                  }
                }

                else
                {
                  v247 = v403;
                  if (v246 == (&dword_0 + 2))
                  {

                    if (v233)
                    {

                      v324 = v412;
                      v430(v412, v429, v219);
                      v325 = sub_2CDFE0();
                      v326 = sub_2CE670();
                      if (os_log_type_enabled(v325, v326))
                      {
                        v327 = swift_slowAlloc();
                        *v327 = 0;
                        _os_log_impl(&dword_0, v325, v326, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about album", v327, 2u);
                      }

                      v402(v324, v219);
                      v328 = *(v425 + 120);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_923E4(v217, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    v348 = v428;
                    if (v428 != &dword_0 + 3 && v247 != &dword_0 + 2)
                    {
                      v349 = v406;
                      v430(v406, v429, v219);
                      v350 = sub_2CDFE0();
                      v351 = sub_2CE670();
                      if (os_log_type_enabled(v350, v351))
                      {
                        v352 = swift_slowAlloc();
                        *v352 = 0;
                        _os_log_impl(&dword_0, v350, v351, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about album", v352, 2u);
                      }

                      v402(v349, v219);
                      v353 = *(v425 + 120);
                      v354 = sub_112C0(_swiftEmptyArrayStorage);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_95E98(v354, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    goto LABEL_278;
                  }

                  if (v246 == &dword_4)
                  {

                    if (v240)
                    {

                      v329 = v414;
                      v430(v414, v429, v219);
                      v330 = sub_2CDFE0();
                      v331 = sub_2CE670();
                      v332 = os_log_type_enabled(v330, v331);
                      v333 = v402;
                      if (v332)
                      {
                        v334 = swift_slowAlloc();
                        *v334 = 0;
                        _os_log_impl(&dword_0, v330, v331, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about radio station", v334, 2u);
                      }

                      v333(v329, v219);
                      v335 = *(v425 + 120);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_930EC(v217, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    v348 = v428;
                    v355 = v402;
                    if (v428 != &dword_0 + 3 && v247 != &dword_0 + 2)
                    {
                      v356 = v408;
                      v430(v408, v429, v219);
                      v357 = sub_2CDFE0();
                      v358 = sub_2CE670();
                      if (os_log_type_enabled(v357, v358))
                      {
                        v359 = swift_slowAlloc();
                        *v359 = 0;
                        _os_log_impl(&dword_0, v357, v358, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about radio station", v359, 2u);
                      }

                      v355(v356, v219);
                      v360 = *(v425 + 120);
                      v361 = sub_112C0(_swiftEmptyArrayStorage);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_96BC0(v361, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    goto LABEL_278;
                  }

                  if (v246 == (&dword_4 + 1))
                  {

                    if (v240)
                    {

                      v248 = v415;
                      v430(v415, v429, v219);
                      v249 = sub_2CDFE0();
                      v250 = sub_2CE670();
                      v251 = os_log_type_enabled(v249, v250);
                      v252 = v402;
                      if (v251)
                      {
                        v253 = swift_slowAlloc();
                        *v253 = 0;
                        _os_log_impl(&dword_0, v249, v250, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer about playlist", v253, 2u);
                      }

                      v252(v248, v219);
                      v254 = *(v425 + 120);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_93770(v217, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    v348 = v428;
                    v367 = v402;
                    if (v428 != &dword_0 + 3 && v247 != &dword_0 + 2)
                    {
                      v368 = v409;
                      v430(v409, v429, v219);
                      v369 = sub_2CDFE0();
                      v370 = sub_2CE670();
                      if (os_log_type_enabled(v369, v370))
                      {
                        v371 = swift_slowAlloc();
                        *v371 = 0;
                        _os_log_impl(&dword_0, v369, v370, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Answer don't know about playlist", v371, 2u);
                      }

                      v367(v368, v219);
                      v372 = *(v425 + 120);
                      v373 = sub_112C0(_swiftEmptyArrayStorage);
                      v437 = 0;
                      v435 = 0u;
                      v436 = 0u;
                      sub_97254(v373, v426, &v435, v427, v244);
                      goto LABEL_246;
                    }

                    goto LABEL_278;
                  }
                }

                if (v240)
                {

                  v430(v416, v429, v219);
                  v342 = sub_2CDFE0();
                  v343 = sub_2CE670();
                  v344 = os_log_type_enabled(v342, v343);
                  v345 = v402;
                  if (v344)
                  {
                    v346 = swift_slowAlloc();
                    *v346 = 0;
                    _os_log_impl(&dword_0, v342, v343, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Default, answer about title", v346, 2u);
                  }

                  v345(v416, v219);
LABEL_245:
                  v347 = *(v425 + 120);
                  v437 = 0;
                  v435 = 0u;
                  v436 = 0u;
                  sub_91D60(v217, v426, &v435, v427, v244);
LABEL_246:

LABEL_286:
                  sub_48E38(&v435);
                  return;
                }

                v348 = v428;
                v380 = v402;
                if (v428 != &dword_0 + 3 && v247 != &dword_0 + 2)
                {
                  v430(v410, v429, v219);
                  v381 = sub_2CDFE0();
                  v382 = sub_2CE670();
                  if (os_log_type_enabled(v381, v382))
                  {
                    v383 = swift_slowAlloc();
                    *v383 = 0;
                    _os_log_impl(&dword_0, v381, v382, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Default, answer don't know about title", v383, 2u);
                  }

                  v380(v410, v219);
LABEL_277:
                  v384 = *(v425 + 120);
                  v385 = sub_112C0(_swiftEmptyArrayStorage);
                  v437 = 0;
                  v435 = 0u;
                  v436 = 0u;
                  sub_95804(v385, v426, &v435, v427, v244);
                  goto LABEL_246;
                }

                goto LABEL_278;
              }

              v202 = v181;
            }

            else
            {
              v202 = v181;
              sub_2CBD90();
            }

            goto LABEL_125;
          }
        }

        else
        {

          v153 = v423;
        }

        v171 = v418;
        v430(v418, v429, v66);
        v172 = sub_2CDFE0();
        v173 = sub_2CE670();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          *v174 = 0;
          _os_log_impl(&dword_0, v172, v173, "DetermineDialogProvider#makeIntentHandledDialogForAllCases Content retrieved is in a loading state and we don't have final info, returning that we don't know title", v174, 2u);
        }

        v141(v171, v66);
        v175 = *(v425 + 120);
        v176 = sub_112C0(_swiftEmptyArrayStorage);
        v437 = 0;
        v435 = 0u;
        v436 = 0u;
        sub_95804(v176, v426, &v435, v427, v124);

        goto LABEL_286;
      }
    }

    else
    {
    }

    v163 = v422;
    v430(v422, v429, v66);
    v164 = sub_2CDFE0();
    v165 = sub_2CE670();
    v166 = os_log_type_enabled(v164, v165);
    v167 = v423;
    if (v166)
    {
      v168 = swift_slowAlloc();
      *v168 = 0;
      _os_log_impl(&dword_0, v164, v165, "DetermineDialogProvider#makeIntentHandledDialogForAllCases API Call did not provide any data for the playing app, returning that we don't know title", v168, 2u);
    }

    v141(v163, v66);
    v169 = *(v425 + 120);
    v170 = sub_112C0(_swiftEmptyArrayStorage);
    v437 = 0;
    v435 = 0u;
    v436 = 0u;
    sub_95804(v170, v426, &v435, v427, v124);

    goto LABEL_286;
  }

  if (*(&dword_10 + (v146 & 0xFFFFFFFFFFFFFF8)))
  {
    v147 = *(v146 + 32);
    goto LABEL_78;
  }

  __break(1u);
}

uint64_t sub_4843C(uint64_t a1, NSObject *a2, char *a3, char *a4)
{
  v92 = a3;
  v95 = a2;
  v91 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v84 - v12;
  v14 = __chkstk_darwin(v11);
  v89 = &v84 - v15;
  __chkstk_darwin(v14);
  v17 = &v84 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v20 = v6 + 2;
  v19 = v6[2];
  v94 = v18;
  v96 = v5;
  v93 = v19;
  v19(v17, v18, v5);
  v21 = sub_2CDFE0();
  v22 = sub_2CE670();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "DetermineDialogProvider#handleWHARelatedChecks Reached logic", v23, 2u);
  }

  v26 = v6[1];
  v25 = v6 + 1;
  v24 = v26;
  v26(v17, v96);
  v27 = v95;
  if ([v95 whaError]!= &dword_0 + 1)
  {
    v28 = [v27 nowPlayingIntentInfo];
    if (v28)
    {
      v29 = v28;
      type metadata accessor for NowPlayingIntentInfo();
      v30 = sub_2CE410();

      v31 = v30;
      v98 = v30;
      if (v30 >> 62)
      {
        if (sub_2CEDA0() >= 1)
        {
          v88 = v20;
          v84 = v24;
          v86 = v13;
          v85 = v25;
          v87 = a4;
          v103 = &_swiftEmptySetSingleton;
          v99 = sub_2CEDA0();
          if (!v99)
          {
            goto LABEL_34;
          }

          if (v99 < 1)
          {
            __break(1u);
            goto LABEL_34;
          }

          v25 = v85;
          v13 = v86;
          v24 = v84;
          v20 = v88;
          v31 = v98;
LABEL_10:
          v88 = v20;
          v84 = v24;
          v86 = v13;
          v85 = v25;
          v32 = 0;
          v97 = v31 & 0xC000000000000001;
          do
          {
            if (v97)
            {
              v37 = sub_2CECD0();
            }

            else
            {
              v37 = *(v31 + 8 * v32 + 32);
            }

            v38 = v37;
            v39 = [v37 title];
            if (v39)
            {
              v40 = v39;
              v102 = sub_2CE270();
              v42 = v41;
            }

            else
            {
              v102 = 0;
              v42 = 0xE000000000000000;
            }

            v43 = [v38 albumArtist];
            if (v43)
            {
              v44 = v43;
              v101 = sub_2CE270();
              v46 = v45;
            }

            else
            {
              v101 = 0;
              v46 = 0xE000000000000000;
            }

            v47 = [v38 album];
            if (v47)
            {
              v48 = v47;
              v100 = sub_2CE270();
              v50 = v49;
            }

            else
            {
              v100 = 0;
              v50 = 0xE000000000000000;
            }

            v51 = [v38 contentId];
            if (v51)
            {
              v52 = v51;
              v53 = sub_2CE270();
              v55 = v54;
            }

            else
            {
              v53 = 0;
              v55 = 0xE000000000000000;
            }

            v56 = [v38 trackArtist];
            if (v56)
            {
              v33 = v56;
              v34 = sub_2CE270();
              v36 = v35;
            }

            else
            {
              v34 = 0;
              v36 = 0xE000000000000000;
            }

            ++v32;
            *&v104 = v102;
            *(&v104 + 1) = v42;

            v107._countAndFlagsBits = v101;
            v107._object = v46;
            sub_2CE350(v107);

            v108._countAndFlagsBits = v100;
            v108._object = v50;
            sub_2CE350(v108);

            v109._countAndFlagsBits = v53;
            v109._object = v55;
            sub_2CE350(v109);

            v110._countAndFlagsBits = v34;
            v110._object = v36;
            sub_2CE350(v110);

            sub_2BCA00(&v104, v104, *(&v104 + 1));

            v31 = v98;
          }

          while (v99 != v32);
LABEL_34:

          v57 = v89;
          v58 = v96;
          v93(v89, v94, v96);
          v59 = sub_2CDFE0();
          v60 = sub_2CE670();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *&v104 = v62;
            *v61 = 136315138;
            swift_beginAccess();

            v63 = sub_2CE530();
            v65 = v64;

            v66 = sub_3F08(v63, v65, &v104);

            *(v61 + 4) = v66;
            _os_log_impl(&dword_0, v59, v60, "DetermineDialogProvider#handleWHARelatedChecks uniqueListOfNowPlayingMetadata: %s", v61, 0xCu);
            sub_306C(v62);
          }

          v67 = v58;
          v68 = v84;
          v84(v57, v67);
          v69 = v95;
          swift_beginAccess();
          v70 = v87;
          v71 = v86;
          if (v103[2] == 1)
          {
            sub_45370(v91, v69, v92, v87);
          }

          else
          {
            v93(v86, v94, v96);
            v78 = sub_2CDFE0();
            v79 = sub_2CE670();
            if (os_log_type_enabled(v78, v79))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&dword_0, v78, v79, "DetermineDialogProvider#handleWHARelatedChecks Multiple nowPlayingIntentInfo's found returning that multiple streams playing in home", v81, 2u);
            }

            v68(v71, v96);
            v82 = *(v90 + 120);
            v83 = sub_112C0(_swiftEmptyArrayStorage);
            v106 = 0;
            v104 = 0u;
            v105 = 0u;
            sub_97F5C(v83, v91, &v104, v92, v70);

            sub_48E38(&v104);
          }
        }
      }

      else
      {
        v99 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
        if (v99)
        {
          v87 = a4;
          v103 = &_swiftEmptySetSingleton;
          goto LABEL_10;
        }
      }
    }
  }

  v93(v10, v94, v96);
  v72 = sub_2CDFE0();
  v73 = sub_2CE670();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_0, v72, v73, "DetermineDialogProvider#handleWHARelatedChecks No nowPlayingIntentInfo found returning that we don't know what is playing in that room", v74, 2u);
  }

  v24(v10, v96);
  v75 = *(v90 + 120);
  v76 = sub_112C0(_swiftEmptyArrayStorage);
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  sub_978D8(v76, v91, &v104, v92, a4);

  return sub_48E38(&v104);
}

uint64_t sub_48E38(uint64_t a1)
{
  v2 = sub_20410(&qword_34C6C0, &qword_2D0710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_48EA0()
{
  result = qword_353110;
  if (!qword_353110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_353110);
  }

  return result;
}

uint64_t sub_48EEC@<X0>(void (*a1)(char *, uint64_t)@<X5>, uint64_t a2@<X8>)
{
  v84 = a1;
  v85 = a2;
  v75 = sub_2CD490();
  v77 = *(v75 - 8);
  v2 = *(v77 + 64);
  __chkstk_darwin(v75);
  v70 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20410(&qword_34CFB0, &unk_2D1000);
  v4 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v78 = &v70 - v5;
  v6 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v70 - v11;
  __chkstk_darwin(v10);
  v76 = &v70 - v13;
  v14 = sub_2CA870();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v80 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v79 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v72 = &v70 - v27;
  v28 = __chkstk_darwin(v26);
  v71 = &v70 - v29;
  __chkstk_darwin(v28);
  v31 = &v70 - v30;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v33 = v22;
  v34 = *(v22 + 16);
  v82 = v22 + 16;
  v83 = v32;
  v35 = v32;
  v36 = v21;
  v81 = v34;
  v34(v31, v35, v21);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "UpdateMediaAffinityNeedsValueStrategy#actionForInput...", v39, 2u);
  }

  v40 = *(v33 + 8);
  v40(v31, v21);
  sub_2CA790();
  if ((*(v15 + 88))(v20, v14) != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v15 + 8))(v20, v14);
    v54 = v79;
    v81(v79, v83, v21);
    v55 = sub_2CDFE0();
    v56 = sub_2CE690();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "UpdateMediaAffinityNeedsValueStrategy#actionForInput parse not of right type", v57, 2u);
LABEL_14:
    }

LABEL_15:

    v40(v54, v36);
    return sub_2C9CF0();
  }

  (*(v15 + 96))(v20, v14);
  v41 = *&v20[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

  v42 = sub_2CAFE0();
  (*(*(v42 - 8) + 8))(v20, v42);
  v43 = v80;
  sub_2CA790();
  v44 = sub_D2F98(v43, &v86);
  (*(v15 + 8))(v43, v14, v44);
  if (!v87)
  {
    sub_30B8(&v86, &qword_34CF98, &unk_2D1A40);
    v54 = v72;
    v81(v72, v83, v36);
    v55 = sub_2CDFE0();
    v58 = sub_2CE690();
    if (os_log_type_enabled(v55, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v55, v58, "UpdateMediaAffinityNeedsValueStrategy#actionForInput received invalid NL intent", v59, 2u);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v84 = v40;
  sub_420A4(&v86, &v88);
  v45 = v90;
  sub_35E0(&v88, v89);
  v46 = *(v45 + 8);
  v47 = v76;
  sub_2CD480();
  v48 = v77;
  v49 = v75;
  (*(v77 + 104))(v12, enum case for CommonAudio.Confirmation.cancel(_:), v75);
  (*(v48 + 56))(v12, 0, 1, v49);
  v50 = *(v74 + 48);
  v51 = v78;
  sub_F3F4(v47, v78, &qword_34CCE8, &unk_2D0E20);
  v52 = v51;
  sub_F3F4(v12, v51 + v50, &qword_34CCE8, &unk_2D0E20);
  v53 = *(v48 + 48);
  if (v53(v51, 1, v49) == 1)
  {
    sub_30B8(v12, &qword_34CCE8, &unk_2D0E20);
    v52 = v78;
    sub_30B8(v47, &qword_34CCE8, &unk_2D0E20);
    if (v53(v52 + v50, 1, v49) == 1)
    {
      sub_30B8(v52, &qword_34CCE8, &unk_2D0E20);
LABEL_21:
      v66 = v71;
      v81(v71, v83, v36);
      v67 = sub_2CDFE0();
      v68 = sub_2CE690();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_0, v67, v68, "UpdateMediaAffinityNeedsValueStrategy#actionForInput User asked to cancel", v69, 2u);
      }

      v84(v66, v36);
      sub_2C9CD0();
      return sub_306C(&v88);
    }

    goto LABEL_18;
  }

  v61 = v73;
  sub_F3F4(v51, v73, &qword_34CCE8, &unk_2D0E20);
  if (v53(v51 + v50, 1, v49) == 1)
  {
    sub_30B8(v12, &qword_34CCE8, &unk_2D0E20);
    sub_30B8(v76, &qword_34CCE8, &unk_2D0E20);
    (*(v77 + 8))(v61, v49);
LABEL_18:
    sub_30B8(v52, &qword_34CFB0, &unk_2D1000);
    goto LABEL_19;
  }

  v62 = v77;
  v63 = v70;
  (*(v77 + 32))(v70, v52 + v50, v49);
  sub_4C3B4(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation);
  v64 = sub_2CE250();
  v65 = *(v62 + 8);
  v65(v63, v49);
  sub_30B8(v12, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v76, &qword_34CCE8, &unk_2D0E20);
  v65(v73, v49);
  sub_30B8(v52, &qword_34CCE8, &unk_2D0E20);
  if (v64)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_2C9CE0();
  return sub_306C(&v88);
}

uint64_t sub_499AC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v47 = a6;
  v48 = a5;
  v51 = a1;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v13;
  __chkstk_darwin(v12);
  v52 = &v42 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_2CDFE0();
  v22 = sub_2CE690();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_3F08(a3, a4, v53);
    _os_log_impl(&dword_0, v21, v22, "UpdateMediaAffinityNeedsValueStrategy#makePromptForValue parameter: %{public}s", v24, 0xCu);
    sub_306C(v25);

    a2 = v43;
  }

  (*(v16 + 8))(v19, v15);
  v26 = v52;
  v27 = v48;
  sub_1C856C(a2, a3, a4, v52);
  v28 = v49;
  v43 = *(v49 + 16);
  v29 = v46;
  sub_F3F4(v26, v46, &unk_353020, &unk_2D0970);
  v30 = (*(v44 + 80) + 80) & ~*(v44 + 80);
  v31 = swift_allocObject();
  v31[2] = a3;
  v31[3] = a4;
  v31[4] = v27;
  v31[5] = v28;
  v32 = v51;
  v31[6] = v51;
  v31[7] = a2;
  v33 = v50;
  v31[8] = v47;
  v31[9] = v33;
  sub_14A58(v29, v31 + v30, &unk_353020, &unk_2D0970);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D10E0;
  strcpy((inited + 32), "isLikeAffinity");
  *(inited + 47) = -18;

  v35 = v27;

  v36 = a2;

  *(inited + 48) = [v36 affinityType] == &dword_0 + 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DB070;
  *(inited + 96) = [v36 affinityType] == &dword_0 + 2;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6574656D61726170;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xE900000000000072;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  v37 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v38 = v43[15];
  v39 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v53[4] = &off_33CC40;
  v53[3] = v39;
  v53[0] = v36;
  v40 = v36;
  sub_C1C20(v37, v32, v53, sub_4C328, v31);

  sub_30B8(v52, &unk_353020, &unk_2D0970);
  return sub_30B8(v53, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_49F94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v90 = a8;
  v87 = a6;
  v88 = a7;
  v83 = a5;
  v81 = a4;
  v80 = a3;
  v79 = a2;
  v78 = a1;
  v89 = a9;
  v76 = sub_2CCB20();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = *(*(v82 - 8) + 64);
  v13 = __chkstk_darwin(v82);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v73 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v86 = &v73 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v85 = &v73 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v84 = &v73 - v24;
  v25 = sub_2CCB30();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CCAC0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20410(&unk_3519A0, &qword_2D0980);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v73 - v37);
  sub_F3F4(v78, &v73 - v37, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v38;
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.umanvs(_:), v30);
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v25);
    swift_getErrorValue();
    sub_2CEEF0();
    v91 = sub_2CCAF0();

    (*(v26 + 8))(v29, v25);
    (*(v31 + 8))(v34, v30);
    v40 = v83[7];
    v83 = sub_35E0(v83 + 3, v83[6]);
    v41 = enum case for ActivityType.failed(_:);
    v42 = sub_2C9C20();
    v43 = *(v42 - 8);
    v44 = v84;
    (*(v43 + 104))(v84, v41, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v45 = sub_2CA130();
    v46 = v85;
    (*(*(v45 - 8) + 56))(v85, 1, 1, v45);
    v47 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v48 = sub_2C98F0();
    v49 = *(v48 - 8);
    v50 = v86;
    (*(v49 + 104))(v86, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v50, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v46, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v44, &qword_34CB88, &unk_2D0D90);
    v92[0] = v39;
    v93 = 1;
    swift_errorRetain();
    v90(v92);

    return sub_30B8(v92, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v78 = a10;
    sub_14A58(v38, v91, &qword_34C6E8, &unk_2D0FF0);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.umanvs(_:), v30);
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v25);
    v52 = v75;
    v53 = v74;
    v54 = v76;
    (*(v75 + 104))(v74, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v76);
    v81 = sub_2CCB00();
    v80 = v55;
    (*(v52 + 8))(v53, v54);
    (*(v26 + 8))(v29, v25);
    (*(v31 + 8))(v34, v30);
    v56 = v83;
    v75 = v83[6];
    v76 = v83[7];
    v79 = sub_35E0(v83 + 3, v75);
    v57 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v58 = sub_2C9C20();
    v59 = *(v58 - 8);
    v60 = v84;
    (*(v59 + 104))(v84, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = v77;
    sub_F3F4(v91, v77, &qword_34C6E8, &unk_2D0FF0);

    v62 = sub_2CA130();
    v63 = *(v62 - 8);
    v64 = v85;
    (*(v63 + 32))(v85, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = enum case for SiriKitReliabilityCodes.success(_:);
    v66 = sub_2C98F0();
    v67 = *(v66 - 8);
    v68 = v86;
    (*(v67 + 104))(v86, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v64, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v60, &qword_34CB88, &unk_2D0D90);
    v69 = sub_35E0(v56 + 8, v56[11]);
    v70 = v91;
    sub_F3F4(v91, v61, &qword_34C6E8, &unk_2D0FF0);
    v71 = *(v61 + *(v82 + 48));
    v72 = *v69;
    sub_1C1A94(v61, v71, v78, v90, v89);

    sub_30B8(v70, &qword_34C6E8, &unk_2D0FF0);
    return (*(v63 + 8))(v61, v62);
  }
}

uint64_t sub_4AB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_4AC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_4AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_4AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_4ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = _s18NeedsValueStrategyCMa();
  *v15 = v7;
  v15[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_4AE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = _s18NeedsValueStrategyCMa();
  *v17 = v8;
  v17[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v18, a8);
}

void sub_4AFD0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v145 = a6;
  v146 = a5;
  v141 = a4;
  v139 = a2;
  v140 = a1;
  v144 = sub_20410(&qword_34D358, &qword_2D11D8);
  v7 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v147 = (&v132 - v8);
  v9 = sub_20410(&qword_34D360, &qword_2D11E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v138 = &v132 - v11;
  v153 = sub_2CA870();
  v12 = *(v153 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v153);
  v16 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v132 - v18);
  __chkstk_darwin(v17);
  v152 = &v132 - v20;
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v133 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v134 = &v132 - v27;
  v28 = __chkstk_darwin(v26);
  v132 = &v132 - v29;
  v30 = __chkstk_darwin(v28);
  v142 = &v132 - v31;
  v32 = __chkstk_darwin(v30);
  v137 = &v132 - v33;
  v34 = __chkstk_darwin(v32);
  v135 = &v132 - v35;
  __chkstk_darwin(v34);
  v37 = &v132 - v36;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v39 = v22[2];
  v143 = v38;
  v149 = v39;
  v39(v37, v38, v21);

  v40 = sub_2CDFE0();
  v41 = sub_2CE690();

  v42 = os_log_type_enabled(v40, v41);
  v150 = v22;
  v151 = v21;
  v136 = a3;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v157[0] = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_3F08(v139, a3, v157);
    _os_log_impl(&dword_0, v40, v41, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue parameter: %{public}s", v43, 0xCu);
    sub_306C(v44);

    v148 = v150[1];
    v148(v37, v151);
  }

  else
  {

    v148 = v22[1];
    v148(v37, v21);
  }

  [v140 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v140 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v45 = swift_dynamicCast();
  v46 = v152;
  if ((v45 & 1) == 0)
  {
    v158 = 0;
  }

  sub_2CA790();
  v47 = *(v12 + 88);
  v48 = v153;
  v49 = v47(v46, v153);
  v50 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
  if (v49 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v12 + 96))(v46, v48);
    v51 = *&v46[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    sub_2CA790();
    v52 = v138;
    sub_2B6170(v19, v138);
    v53 = sub_2CA830();
    objc_opt_self();
    v54 = swift_dynamicCastObjCClass();
    if (v54)
    {
      v55 = v54;
      sub_30B8(v52, &qword_34D360, &qword_2D11E0);

      v56 = v158;
      v158 = v55;

      v57 = sub_2CAFE0();
      (*(*(v57 - 8) + 8))(v46, v57);
      v58 = v158;
      v59 = v151;
      v60 = v148;
      if (v158)
      {
        v61 = v136;
        v62 = v143;
        if (v139 == 0x657449616964656DLL && v136 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
        {
          v63 = v58;
          v64 = [v63 mediaItems];
          if (v64)
          {
            v65 = v64;
            sub_334A0(0, &qword_356F50, INMediaItem_ptr);
            v66 = sub_2CE410();

            v64 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
          }

          else
          {
            v66 = 0;
          }

          v110 = v134;
          v157[0] = v66;
          v157[1] = 0;
          v157[2] = 0;
          v157[3] = v64;
          v149(v134, v62, v59);
          sub_F3F4(v157, v156, &qword_34CEA0, &qword_2D0FC0);
          v111 = sub_2CDFE0();
          v112 = sub_2CE690();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v155 = v114;
            *v113 = 136446210;
            sub_F3F4(v156, v154, &qword_34CEA0, &qword_2D0FC0);
            sub_20410(&qword_34CEA0, &qword_2D0FC0);
            v115 = sub_2CE2A0();
            v148 = v60;
            v117 = v116;
            sub_30B8(v156, &qword_34CEA0, &qword_2D0FC0);
            v118 = sub_3F08(v115, v117, &v155);

            *(v113 + 4) = v118;
            _os_log_impl(&dword_0, v111, v112, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue returning with: %{public}s", v113, 0xCu);
            sub_306C(v114);

            v148(v110, v151);
          }

          else
          {

            sub_30B8(v156, &qword_34CEA0, &qword_2D0FC0);
            v60(v110, v59);
          }

          sub_F3F4(v157, v156, &qword_34CEA0, &qword_2D0FC0);
          v119 = v63;
          v120 = v147;
          sub_2CA220();
          v121 = sub_20410(&qword_34D370, &qword_2D11E8);
          (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
          swift_storeEnumTagMultiPayload();
          v146(v120);

          sub_30B8(v120, &qword_34D358, &qword_2D11D8);
          v109 = v157;
          v107 = &qword_34CEA0;
          v108 = &qword_2D0FC0;
        }

        else
        {
          v122 = v132;
          v149(v132, v62, v59);

          v123 = v58;
          v124 = sub_2CDFE0();
          v125 = sub_2CE680();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v156[0] = v127;
            *v126 = 136315138;
            *(v126 + 4) = sub_3F08(v139, v61, v156);
            _os_log_impl(&dword_0, v124, v125, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v126, 0xCu);
            sub_306C(v127);
          }

          v60(v122, v59);
          v128 = sub_2CB850();
          sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
          v129 = swift_allocError();
          (*(*(v128 - 8) + 104))(v130, enum case for PlaybackCode.ceGE86(_:), v128);
          v131 = v147;
          *v147 = v129;
          swift_storeEnumTagMultiPayload();
          v146(v131);

          v107 = &qword_34D358;
          v108 = &qword_2D11D8;
          v109 = v131;
        }
      }

      else
      {
        v99 = v133;
        v149(v133, v143, v151);
        v100 = sub_2CDFE0();
        v101 = sub_2CE690();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&dword_0, v100, v101, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue updatedIntent nil", v102, 2u);
        }

        v60(v99, v59);
        v103 = sub_2CB850();
        sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v104 = swift_allocError();
        (*(*(v103 - 8) + 104))(v105, enum case for PlaybackCode.ceGE85(_:), v103);
        v106 = v147;
        *v147 = v104;
        swift_storeEnumTagMultiPayload();
        v146(v106);
        v107 = &qword_34D358;
        v108 = &qword_2D11D8;
        v109 = v106;
      }

      sub_30B8(v109, v107, v108);
    }

    else
    {

      v80 = v135;
      v81 = v151;
      v149(v135, v143, v151);
      v82 = sub_2CDFE0();
      v83 = sub_2CE670();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v148;
      if (v84)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v82, v83, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v86, 2u);
      }

      v85(v80, v81);
      v87 = sub_2CB850();
      sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
      v88 = swift_allocError();
      (*(*(v87 - 8) + 104))(v89, enum case for PlaybackCode.ceGE83(_:), v87);
      v90 = v147;
      *v147 = v88;
      swift_storeEnumTagMultiPayload();
      v146(v90);

      sub_30B8(v90, &qword_34D358, &qword_2D11D8);
      sub_30B8(v52, &qword_34D360, &qword_2D11E0);
      v91 = sub_2CAFE0();
      (*(*(v91 - 8) + 8))(v46, v91);
    }
  }

  else
  {
    sub_2CA790();
    v67 = v153;
    if (v47(v16, v153) == v50)
    {
      (*(v12 + 96))(v16, v67);
      v68 = *&v16[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

      v69 = sub_2CAFE0();
      (*(*(v69 - 8) + 8))(v16, v69);
      v70 = v137;
      v71 = v143;
      v72 = v151;
      v149(v137, v143, v151);
      v73 = sub_2CDFE0();
      v74 = sub_2CE680();
      v75 = os_log_type_enabled(v73, v74);
      v76 = v152;
      v77 = v148;
      if (v75)
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_0, v73, v74, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue and UpdateMediaAffinityNeedsValueStrategy#actionForInput parse handling need to be the same!", v78, 2u);

        v79 = v70;
        v76 = v152;
      }

      else
      {

        v79 = v70;
      }

      v77(v79, v72);
    }

    else
    {
      (*(v12 + 8))(v16, v67);
      v72 = v151;
      v76 = v152;
      v71 = v143;
      v77 = v148;
    }

    v149(v142, v71, v72);
    v92 = sub_2CDFE0();
    v93 = sub_2CE690();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_0, v92, v93, "UpdateMediaAffinityNeedsValueStrategy#parseResponseValue intent not of right type", v94, 2u);
    }

    v77(v142, v72);
    v95 = sub_2CB850();
    sub_4C3B4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
    v96 = swift_allocError();
    (*(*(v95 - 8) + 104))(v97, enum case for PlaybackCode.ceGE84(_:), v95);
    v98 = v147;
    *v147 = v96;
    swift_storeEnumTagMultiPayload();
    v146(v98);
    sub_30B8(v98, &qword_34D358, &qword_2D11D8);
    (*(v12 + 8))(v76, v153);
  }
}

uint64_t sub_4C3B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ShimUtilities.getShimExperience(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v250 = a2;
  v229 = sub_2CE0C0();
  v234 = *(v229 - 8);
  v3 = *(v234 + 64);
  v4 = __chkstk_darwin(v229);
  v220 = &v211 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v227 = &v211 - v7;
  __chkstk_darwin(v6);
  v239 = &v211 - v8;
  v238 = sub_2CE110();
  v237 = *(v238 - 8);
  v9 = *(v237 + 64);
  v10 = __chkstk_darwin(v238);
  v216 = &v211 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v230 = &v211 - v12;
  v224 = sub_2CE100();
  v223 = *(v224 - 8);
  v13 = *(v223 + 64);
  v14 = __chkstk_darwin(v224);
  v215 = &v211 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v221 = &v211 - v16;
  v17 = sub_2CB3B0();
  v243 = *(v17 - 8);
  v244 = v17;
  v18 = *(v243 + 64);
  __chkstk_darwin(v17);
  v242 = &v211 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE120();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v219 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v218 = &v211 - v26;
  v27 = __chkstk_darwin(v25);
  v225 = &v211 - v28;
  v29 = __chkstk_darwin(v27);
  v232 = &v211 - v30;
  v31 = __chkstk_darwin(v29);
  v236 = (&v211 - v32);
  v33 = __chkstk_darwin(v31);
  v231 = &v211 - v34;
  v35 = __chkstk_darwin(v33);
  v235 = &v211 - v36;
  __chkstk_darwin(v35);
  v245 = &v211 - v37;
  v38 = sub_2CB3E0();
  v255 = *(v38 - 8);
  v39 = v255[8];
  __chkstk_darwin(v38);
  v41 = &v211 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2CE000();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = __chkstk_darwin(v42);
  v248 = &v211 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v241 = &v211 - v48;
  v49 = __chkstk_darwin(v47);
  v226 = &v211 - v50;
  v51 = __chkstk_darwin(v49);
  v222 = &v211 - v52;
  v53 = __chkstk_darwin(v51);
  v55 = &v211 - v54;
  v56 = __chkstk_darwin(v53);
  v228 = &v211 - v57;
  v58 = __chkstk_darwin(v56);
  v233 = &v211 - v59;
  v60 = __chkstk_darwin(v58);
  v240 = &v211 - v61;
  v62 = __chkstk_darwin(v60);
  v251 = &v211 - v63;
  __chkstk_darwin(v62);
  v65 = &v211 - v64;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v66 = sub_3ED0(v42, static Logger.default);
  swift_beginAccess();
  v67 = v43[2];
  v252 = v66;
  v253 = v67;
  v254 = v43 + 2;
  v67(v65, v66, v42);
  v68 = v255[2];
  v249 = a1;
  v68(v41, a1, v38);
  v69 = sub_2CDFE0();
  v70 = v38;
  v71 = sub_2CE670();
  v72 = os_log_type_enabled(v69, v71);
  v246 = v21;
  v247 = v20;
  v217 = v55;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v256 = v214;
    *v73 = 136315138;
    v74 = v41;
    v213 = v70;
    sub_2CB3C0();
    sub_20410(&qword_34D378, qword_2D11F0);
    v75 = v43;
    v76 = v42;
    v77 = sub_2CE210();
    v79 = v78;

    (v255[1])(v74, v213);
    v80 = v77;
    v42 = v76;
    v43 = v75;
    v81 = sub_3F08(v80, v79, &v256);

    *(v73 + 4) = v81;
    _os_log_impl(&dword_0, v69, v71, "ShimUtilities#getShimExperience shim parameters: %s", v73, 0xCu);
    sub_306C(v214);
    v82 = v250;

    v83 = v75[1];
    v83(v65, v42);
  }

  else
  {

    (v255[1])(v41, v70);
    v83 = v43[1];
    v83(v65, v42);
    v82 = v250;
  }

  v84 = v248;
  v85 = sub_2CB3C0();
  v86 = v251;
  v87 = v252;
  if (!*(v85 + 16) || (v88 = sub_4F538(0x6E45686372616573, 0xEC00000079746974), (v89 & 1) == 0))
  {

    v253(v84, v87, v42);
    v100 = sub_2CDFE0();
    v101 = sub_2CE680();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      v103 = "ShimUtilities#getShimExperience searchEntity shimParameter not found";
LABEL_21:
      _os_log_impl(&dword_0, v100, v101, v103, v102, 2u);
    }

LABEL_22:

    v83(v84, v42);
    v123 = type metadata accessor for ShimExperience();
    return (*(*(v123 - 8) + 56))(v82, 1, 1, v123);
  }

  v90 = *(*(v85 + 56) + 8 * v88);

  v253(v86, v87, v42);

  v91 = sub_2CDFE0();
  v92 = sub_2CE670();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v256 = v249;
    *v93 = 136315138;
    v94 = sub_2CE420();
    v255 = v43;
    v96 = v82;
    v97 = v83;
    v98 = sub_3F08(v94, v95, &v256);
    v43 = v255;
    v87 = v252;

    *(v93 + 4) = v98;
    v83 = v97;
    v82 = v96;
    _os_log_impl(&dword_0, v91, v92, "ShimUtilities#getShimExperience searchEntityParameter: %s", v93, 0xCu);
    sub_306C(v249);

    v99 = v251;
  }

  else
  {

    v99 = v86;
  }

  v83(v99, v42);
  v104 = v246;
  v106 = v242;
  v105 = v243;
  if (!*(v90 + 16))
  {

    goto LABEL_19;
  }

  v107 = v244;
  (*(v243 + 16))(v242, v90 + ((*(v243 + 80) + 32) & ~*(v243 + 80)), v244);

  if ((*(v105 + 88))(v106, v107) != enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    (*(v105 + 8))(v106, v107);
LABEL_19:
    v84 = v241;
    v253(v241, v87, v42);
    v100 = sub_2CDFE0();
    v101 = sub_2CE680();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      v103 = "ShimUtilities#getShimExperience unable to extract searchEntityTypedValue";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  (*(v105 + 96))(v106, v107);
  v108 = v245;
  v109 = v87;
  v110 = v247;
  (*(v104 + 32))(v245, v106, v247);
  v253(v240, v109, v42);
  v111 = v104 + 16;
  v112 = v235;
  v249 = *(v104 + 16);
  (v249)(v235, v108, v110);
  v113 = sub_2CDFE0();
  v114 = sub_2CE670();
  v115 = os_log_type_enabled(v113, v114);
  v248 = v83;
  if (v115)
  {
    v116 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v256 = v255;
    *v116 = 136315138;
    v117 = v104;
    (v249)(v231, v112, v247);
    v118 = sub_2CE2A0();
    v119 = v42;
    v121 = v120;
    v251 = *(v117 + 8);
    (v251)(v112, v247);
    v122 = sub_3F08(v118, v121, &v256);
    v42 = v119;

    *(v116 + 4) = v122;
    v104 = v117;
    _os_log_impl(&dword_0, v113, v114, "ShimUtilities#getShimExperience searchEntityTypedValue: %s", v116, 0xCu);
    sub_306C(v255);
    v110 = v247;

    (v248)(v240, v119);
  }

  else
  {

    v251 = *(v104 + 8);
    (v251)(v112, v110);
    v83(v240, v42);
  }

  v125 = v238;
  v126 = v237;
  v127 = v236;
  v244 = v111;
  v128 = v249;
  (v249)(v236, v245, v110);
  v243 = *(v104 + 88);
  v129 = (v243)(v127, v110);
  LODWORD(v242) = enum case for TypedValue.primitive(_:);
  v130 = v128;
  if (v129 == enum case for TypedValue.primitive(_:))
  {
    (*(v104 + 96))(v127, v110);
    v131 = *v127;
    v132 = swift_projectBox();
    v133 = v230;
    (*(v126 + 16))(v230, v132, v125);
    if ((*(v126 + 88))(v133, v125) == enum case for TypedValue.PrimitiveValue.file(_:))
    {
      (*(v126 + 96))(v133, v125);
      v134 = v223;
      v135 = v221;
      v136 = v224;
      (*(v223 + 32))(v221, v133, v224);

      sub_4DF08(v250);
      (*(v134 + 8))(v135, v136);
      return (v251)(v245, v110);
    }

    (*(v126 + 8))(v133, v125);
  }

  else
  {
    (v251)(v127, v110);
  }

  v137 = v233;
  v138 = v232;
  (v130)(v232, v245, v110);
  if ((v243)(v138, v110) != enum case for TypedValue.entity(_:))
  {
    (v251)(v138, v110);
    v155 = v226;
    v253(v226, v252, v42);
    v156 = sub_2CDFE0();
    v157 = sub_2CE680();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&dword_0, v156, v157, "ShimUtilities#getShimExperience unable to extract mediaEntityValue", v158, 2u);
    }

    (v248)(v155, v42);
    (v251)(v245, v247);
    goto LABEL_43;
  }

  v255 = v43;
  v240 = *(v104 + 96);
  v241 = (v104 + 96);
  (v240)(v138, v110);
  v139 = *v138;
  v140 = swift_projectBox();
  v141 = v234;
  v142 = v42;
  v143 = *(v234 + 16);
  v144 = v239;
  v145 = v229;
  v143(v239, v140, v229);

  v212 = v142;
  v253(v137, v252, v142);
  v146 = v227;
  v143(v227, v144, v145);
  v147 = sub_2CDFE0();
  v148 = sub_2CE670();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v256 = v236;
    *v149 = 136315138;
    LODWORD(v235) = v148;
    v143(v220, v146, v145);
    v150 = sub_2CE2A0();
    v152 = v151;
    v153 = *(v141 + 8);
    (v153)(v146, v145);
    v154 = sub_3F08(v150, v152, &v256);

    *(v149 + 4) = v154;
    _os_log_impl(&dword_0, v147, v235, "ShimUtilities#getShimExperience mediaEntityValue: %s", v149, 0xCu);
    sub_306C(v236);
    v110 = v247;
  }

  else
  {

    v153 = *(v141 + 8);
    (v153)(v146, v145);
  }

  v159 = v212;
  (v248)(v137, v212);
  v160 = v145;
  v161 = sub_2CE0B0();
  v162 = v228;
  if (!*(v161 + 16) || (v163 = sub_4F538(0x6E65697265707865, 0xEE00656C69466563), (v164 & 1) == 0))
  {
    v181 = v251;

    v182 = v222;
    v253(v222, v252, v159);
    v183 = sub_2CDFE0();
    v184 = sub_2CE680();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_0, v183, v184, "ShimUtilities#getShimExperience experienceFile property not found", v185, 2u);
    }

    (v248)(v182, v159);
    (v153)(v239, v160);
    v181(v245, v110);
LABEL_43:
    v186 = type metadata accessor for ShimExperience();
    return (*(*(v186 - 8) + 56))(v250, 1, 1, v186);
  }

  v236 = v153;
  v165 = v225;
  v166 = v249;
  (v249)(v225, *(v161 + 56) + *(v246 + 72) * v163, v110);

  v253(v162, v252, v159);
  v167 = v218;
  (v166)(v218, v165, v110);
  v168 = v162;
  v169 = sub_2CDFE0();
  v170 = sub_2CE670();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v256 = v172;
    *v171 = 136315138;
    (v166)(v231, v167, v247);
    v173 = sub_2CE2A0();
    v175 = v174;
    v176 = v167;
    v177 = v251;
    (v251)(v176, v247);
    v178 = sub_3F08(v173, v175, &v256);
    v159 = v212;

    *(v171 + 4) = v178;
    v179 = v229;
    _os_log_impl(&dword_0, v169, v170, "ShimUtilities#getShimExperience experienceFile: %s", v171, 0xCu);
    sub_306C(v172);
    v110 = v247;

    (v248)(v228, v159);
    v180 = v238;
  }

  else
  {

    v187 = v167;
    v177 = v251;
    (v251)(v187, v110);
    (v248)(v168, v159);
    v180 = v238;
    v179 = v229;
  }

  v188 = v219;
  (v166)(v219, v225, v110);
  v189 = (v243)(v188, v110);
  if (v189 == v242)
  {
    v251 = v177;
    (v240)(v188, v110);
    v190 = *v188;
    v191 = swift_projectBox();
    v192 = v237;
    v193 = v216;
    (*(v237 + 16))(v216, v191, v180);
    v194 = (*(v192 + 88))(v193, v180);
    v195 = v250;
    if (v194 == enum case for TypedValue.PrimitiveValue.file(_:))
    {
      v196 = v110;
      (*(v192 + 96))(v193, v180);
      v197 = v223;
      v198 = v215;
      v199 = v224;
      (*(v223 + 32))(v215, v193, v224);

      sub_4DF08(v195);
      (*(v197 + 8))(v198, v199);
      v200 = v110;
      v201 = v251;
      (v251)(v225, v200);
      (v236)(v239, v179);
      return v201(v245, v196);
    }

    (*(v192 + 8))(v193, v180);
  }

  else
  {
    (v177)(v188, v110);
    v195 = v250;
  }

  v202 = v217;
  v253(v217, v252, v159);
  v203 = sub_2CDFE0();
  v204 = sub_2CE680();
  v205 = os_log_type_enabled(v203, v204);
  v206 = v248;
  if (v205)
  {
    v207 = swift_slowAlloc();
    *v207 = 0;
    _os_log_impl(&dword_0, v203, v204, "ShimUtilities#getShimExperience unable to extract fileValue", v207, 2u);
  }

  v206(v202, v159);
  v208 = v247;
  v209 = v251;
  (v251)(v225, v247);
  (v236)(v239, v179);
  v209(v245, v208);
  v210 = type metadata accessor for ShimExperience();
  return (*(*(v210 - 8) + 56))(v195, 1, 1, v210);
}

uint64_t sub_4DF08@<X0>(void *a1@<X8>)
{
  v144 = a1;
  v132 = sub_20410(&unk_3519B0, &qword_2D1230);
  v1 = *(*(v132 - 8) + 64);
  v2 = __chkstk_darwin(v132);
  v4 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v131 = &v127 - v6;
  v7 = __chkstk_darwin(v5);
  v136 = &v127 - v8;
  v9 = __chkstk_darwin(v7);
  v139 = &v127 - v10;
  __chkstk_darwin(v9);
  v135 = &v127 - v11;
  v140 = sub_2C8D90();
  v12 = *(v140 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v140);
  v133 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v130 = &v127 - v16;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v145 = (&v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v24 = &v127 - v23;
  v25 = __chkstk_darwin(v22);
  v138 = &v127 - v26;
  v27 = __chkstk_darwin(v25);
  v142 = &v127 - v28;
  v29 = __chkstk_darwin(v27);
  v141 = &v127 - v30;
  __chkstk_darwin(v29);
  v32 = &v127 - v31;
  v33 = sub_2CE0F0();
  v34 = [v33 data];

  v35 = sub_2C8DC0();
  v37 = v36;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v39 = v18[2];
  v147 = v18 + 2;
  v148 = v38;
  v146 = v39;
  v39(v32, v38, v17);
  sub_525D4(v35, v37);
  v40 = sub_2CDFE0();
  v41 = v32;
  v42 = sub_2CE670();
  sub_52628(v35, v37);
  v43 = os_log_type_enabled(v40, v42);
  v143 = v12;
  v137 = v4;
  v134 = v24;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v129 = v41;
    v45 = v44;
    v46 = swift_slowAlloc();
    v154 = v46;
    *v45 = 136315138;
    sub_525D4(v35, v37);
    v47 = sub_2C8DA0();
    v48 = v17;
    v49 = v18;
    v51 = v50;
    sub_52628(v35, v37);
    v52 = sub_3F08(v47, v51, &v154);
    v53 = v49;
    v17 = v48;

    *(v45 + 4) = v52;
    _os_log_impl(&dword_0, v40, v42, "ShimUtilities#getShimExperience fileData: %s", v45, 0xCu);
    sub_306C(v46);

    v54 = v53[1];
    v54(v129, v48);
  }

  else
  {

    v54 = v18[1];
    v54(v41, v17);
  }

  sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
  sub_20410(&qword_34D3E8, &qword_2D1238);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_2D0E40;
  *(v55 + 32) = sub_334A0(0, &qword_34D3F0, NSDictionary_ptr);
  *(v55 + 40) = sub_334A0(0, &qword_34D3F8, NSURL_ptr);
  sub_2CE940();
  v129 = v35;

  v56 = v141;
  v146(v141, v148, v17);
  sub_F3F4(&v154, v152, &qword_34CEA0, &qword_2D0FC0);
  v57 = sub_2CDFE0();
  v58 = sub_2CE670();
  v59 = os_log_type_enabled(v57, v58);
  v145 = v54;
  v128 = v37;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v151 = v61;
    *v60 = 136315138;
    sub_F3F4(v152, &v149, &qword_34CEA0, &qword_2D0FC0);
    sub_20410(&qword_34CEA0, &qword_2D0FC0);
    v62 = sub_2CE2A0();
    v64 = v63;
    sub_30B8(v152, &qword_34CEA0, &qword_2D0FC0);
    v65 = sub_3F08(v62, v64, &v151);
    v54 = v145;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_0, v57, v58, "ShimUtilities#getShimExperience deserializedShimExperienceDictionary: %s", v60, 0xCu);
    sub_306C(v61);

    v66 = v141;
  }

  else
  {

    sub_30B8(v152, &qword_34CEA0, &qword_2D0FC0);
    v66 = v56;
  }

  v54(v66, v17);
  v69 = v142;
  sub_F3F4(&v154, v152, &qword_34CEA0, &qword_2D0FC0);
  if (v153)
  {
    sub_20410(&qword_34CCD8, &unk_2D10D0);
    if (swift_dynamicCast())
    {
      v70 = v149;
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    sub_30B8(v152, &qword_34CEA0, &qword_2D0FC0);
    v70 = 0;
  }

  v146(v69, v148, v17);

  v71 = sub_2CDFE0();
  v72 = sub_2CE670();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v152[0] = v74;
    *v73 = 136315138;
    v149 = v70;

    sub_20410(&qword_34D400, &unk_2D1240);
    v75 = sub_2CE2A0();
    v77 = sub_3F08(v75, v76, v152);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_0, v71, v72, "ShimUtilities#getShimExperience shimExperienceDictionary: %s", v73, 0xCu);
    sub_306C(v74);

    v54(v142, v17);
  }

  else
  {

    v54(v69, v17);
  }

  v78 = v129;
  v79 = v140;
  v80 = v143;
  if (v70)
  {
    if (*(v70 + 16))
    {
      v81 = sub_4F538(0x6E65697265707865, 0xEE00617461446563);
      v82 = 0xF000000000000000;
      if (v83)
      {
        sub_E2FC(*(v70 + 56) + 32 * v81, v152);
        v84 = swift_dynamicCast();
        if (v84)
        {
          v85 = v149;
        }

        else
        {
          v85 = 0;
        }

        if (v84)
        {
          v82 = v150;
        }
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v85 = 0;
      v82 = 0xF000000000000000;
    }

    v86 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV011deserializeA10Experience05audioH4Data21SiriInformationSearch0aH0CSg10Foundation0J0VSg_tFZ_0(v85, v82);
    sub_5267C(v85, v82);
    if (v86)
    {
      if (*(v70 + 16))
      {
        v87 = sub_4F538(0x7365526F69647561, 0xEC00000073746C75);
        v88 = 0xF000000000000000;
        if (v89)
        {
          sub_E2FC(*(v70 + 56) + 32 * v87, v152);
          v90 = swift_dynamicCast();
          if (v90)
          {
            v91 = v149;
          }

          else
          {
            v91 = 0;
          }

          if (v90)
          {
            v88 = v150;
          }
        }

        else
        {
          v91 = 0;
        }
      }

      else
      {
        v91 = 0;
        v88 = 0xF000000000000000;
      }

      v92 = sub_507D4(v91, v88);
      sub_5267C(v91, v88);
      if (v92)
      {
        sub_30B8(&v154, &qword_34CEA0, &qword_2D0FC0);
        sub_52628(v78, v128);

        v93 = v144;
        *v144 = v86;
        v93[1] = v92;
        v94 = type metadata accessor for ShimExperience();
        swift_storeEnumTagMultiPayload();
        v95 = *(*(v94 - 8) + 56);
        v96 = v93;
        return v95(v96, 0, 1, v94);
      }
    }

    if (*(v70 + 16) && (v97 = sub_4F538(7107189, 0xE300000000000000), (v98 & 1) != 0))
    {
      sub_E2FC(*(v70 + 56) + 32 * v97, v152);

      v99 = v135;
      v100 = swift_dynamicCast();
      v80 = v143;
      (*(v143 + 56))(v99, v100 ^ 1u, 1, v79);
      if ((*(v80 + 48))(v99, 1, v79) != 1)
      {
        sub_30B8(&v154, &qword_34CEA0, &qword_2D0FC0);
        sub_52628(v78, v128);
        v101 = *(v80 + 32);
        v102 = v130;
        v101(v130, v99, v79);
        v103 = v144;
        v101(v144, v102, v79);
        v94 = type metadata accessor for ShimExperience();
        swift_storeEnumTagMultiPayload();
        v95 = *(*(v94 - 8) + 56);
        v96 = v103;
        return v95(v96, 0, 1, v94);
      }
    }

    else
    {

      v80 = v143;
      v99 = v135;
      (*(v143 + 56))(v135, 1, 1, v79);
    }

    sub_30B8(v99, &unk_3519B0, &qword_2D1230);
  }

  sub_F3F4(&v154, v152, &qword_34CEA0, &qword_2D0FC0);
  if (v153)
  {
    v104 = v139;
    v105 = swift_dynamicCast();
    (*(v80 + 56))(v104, v105 ^ 1u, 1, v79);
  }

  else
  {
    sub_30B8(v152, &qword_34CEA0, &qword_2D0FC0);
    v104 = v139;
    (*(v80 + 56))(v139, 1, 1, v79);
  }

  v106 = v136;
  v107 = v138;
  v146(v138, v148, v17);
  sub_F3F4(v104, v106, &unk_3519B0, &qword_2D1230);
  v108 = sub_2CDFE0();
  v109 = sub_2CE670();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v152[0] = v111;
    *v110 = 136315138;
    sub_F3F4(v106, v131, &unk_3519B0, &qword_2D1230);
    v112 = sub_2CE2A0();
    v114 = v113;
    sub_30B8(v106, &unk_3519B0, &qword_2D1230);
    v104 = v139;
    v115 = sub_3F08(v112, v114, v152);
    v79 = v140;
    v78 = v129;

    *(v110 + 4) = v115;
    _os_log_impl(&dword_0, v108, v109, "ShimUtilities#getShimExperience shimExperienceURL: %s", v110, 0xCu);
    sub_306C(v111);

    v80 = v143;

    v116 = v138;
  }

  else
  {

    sub_30B8(v106, &unk_3519B0, &qword_2D1230);
    v116 = v107;
  }

  v145(v116, v17);
  sub_30B8(&v154, &qword_34CEA0, &qword_2D0FC0);
  v117 = v128;
  v118 = v137;
  sub_F3F4(v104, v137, &unk_3519B0, &qword_2D1230);
  if ((*(v80 + 48))(v118, 1, v79) == 1)
  {
    sub_30B8(v118, &unk_3519B0, &qword_2D1230);
    sub_30B8(v104, &unk_3519B0, &qword_2D1230);
    v119 = v134;
    v146(v134, v148, v17);
    v120 = sub_2CDFE0();
    v121 = sub_2CE680();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_0, v120, v121, "ShimUtilities#getShimExperience unable to extract ShimExperience", v122, 2u);

      sub_52628(v78, v117);
    }

    else
    {
      sub_52628(v78, v117);
    }

    v145(v119, v17);
    v67 = type metadata accessor for ShimExperience();
    return (*(*(v67 - 8) + 56))(v144, 1, 1, v67);
  }

  else
  {
    sub_52628(v78, v117);
    v123 = *(v80 + 32);
    v124 = v133;
    v123(v133, v118, v79);
    v125 = v144;
    v123(v144, v124, v79);
    v126 = type metadata accessor for ShimExperience();
    swift_storeEnumTagMultiPayload();
    (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
    return sub_30B8(v104, &unk_3519B0, &qword_2D1230);
  }
}

uint64_t sub_4F290(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_4F304(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_3F08(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_4F360(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34D3D8, &qword_2D26C0);
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

_BYTE **sub_4F454(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_4F464(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2CDD90();
  sub_5258C(&qword_34D3C0, &type metadata accessor for DeviceCategory);
  v5 = sub_2CE220();
  return sub_4FC74(a1, v5, &type metadata accessor for DeviceCategory, &qword_34D3C8, &type metadata accessor for DeviceCategory, &protocol conformance descriptor for DeviceCategory);
}

unint64_t sub_4F538(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2CEF50();
  sub_2CE310();
  v6 = sub_2CEF80();

  return sub_4FA88(a1, a2, v6);
}

unint64_t sub_4F5B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CEC40(*(v2 + 40));

  return sub_4FB40(a1, v4);
}

unint64_t sub_4F5F4(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  sub_2CEF50();
  sub_2CEF60(a1);
  v4 = sub_2CEF80();

  return sub_4FC08(a1, v4);
}

unint64_t sub_4F660(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2CD540();
  sub_5258C(&qword_34D380, &type metadata accessor for CommonAudio.MediaType);
  v5 = sub_2CE220();
  return sub_4FC74(a1, v5, &type metadata accessor for CommonAudio.MediaType, &qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
}

unint64_t sub_4F734(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2CD4B0();
  sub_5258C(&qword_34D390, &type metadata accessor for CommonAudio.Sort);
  v5 = sub_2CE220();
  return sub_4FC74(a1, v5, &type metadata accessor for CommonAudio.Sort, &qword_34D398, &type metadata accessor for CommonAudio.Sort, &protocol conformance descriptor for CommonAudio.Sort);
}

unint64_t sub_4F808(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2CD4D0();
  sub_5258C(&qword_34D3A0, &type metadata accessor for CommonAudio.Decade);
  v5 = sub_2CE220();
  return sub_4FC74(a1, v5, &type metadata accessor for CommonAudio.Decade, &qword_34D3A8, &type metadata accessor for CommonAudio.Decade, &protocol conformance descriptor for CommonAudio.Decade);
}

unint64_t sub_4F8DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2CEF50();
  if (a2)
  {
    sub_2CEF70(1u);
    sub_2CE310();
  }

  else
  {
    sub_2CEF70(0);
  }

  v6 = sub_2CEF80();

  return sub_4FE14(a1, a2, v6);
}

unint64_t sub_4F970(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CEB20(*(v2 + 40));

  return sub_4FEE0(a1, v4);
}

unint64_t sub_4F9B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2CB0A0();
  sub_5258C(&qword_34D3B0, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange);
  v5 = sub_2CE220();
  return sub_4FC74(a1, v5, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &qword_34D3B8, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
}

unint64_t sub_4FA88(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2CEEA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4FB40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_524DC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2CEC50();
      sub_52538(v8);
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

unint64_t sub_4FC08(uint64_t a1, uint64_t a2)
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

unint64_t sub_4FC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_5258C(v24, v25);
      v20 = sub_2CE250();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_4FE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2CEEA0() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_4FEE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2CEB30();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t _s23AudioFlowDelegatePlugin13ShimUtilitiesV011deserializeA10Experience05audioH4Data21SiriInformationSearch0aH0CSg10Foundation0J0VSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = v39 - v9;
  __chkstk_darwin(v8);
  v12 = v39 - v11;
  result = 0;
  if (a2 >> 60 == 15)
  {
    return result;
  }

  sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
  sub_20410(&qword_34D3E8, &qword_2D1238);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2D0E40;
  *(v14 + 32) = sub_334A0(0, &qword_34D408, NSArray_ptr);
  *(v14 + 40) = sub_2CDB90();
  sub_525D4(a1, a2);
  sub_2CE940();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v16 = v5[2];
  v43 = v15;
  v40 = v16;
  v16(v12, v15, v4);
  sub_F3F4(v47, v46, &qword_34CEA0, &qword_2D0FC0);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  v19 = os_log_type_enabled(v17, v18);
  v41 = a1;
  v42 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v39[1] = v5 + 2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    sub_F3F4(v46, v44, &qword_34CEA0, &qword_2D0FC0);
    sub_20410(&qword_34CEA0, &qword_2D0FC0);
    v23 = sub_2CE2A0();
    v25 = v24;
    sub_30B8(v46, &qword_34CEA0, &qword_2D0FC0);
    v26 = sub_3F08(v23, v25, &v45);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v17, v18, "ShimUtilities audioExperience uncast %s", v21, 0xCu);
    sub_306C(v22);
    v5 = v42;
  }

  else
  {

    sub_30B8(v46, &qword_34CEA0, &qword_2D0FC0);
  }

  v27 = v5[1];
  v27(v12, v4);
  sub_F3F4(v47, v46, &qword_34CEA0, &qword_2D0FC0);
  if (v46[3])
  {
    sub_20410(&qword_34D428, &qword_2D1268);
    if (swift_dynamicCast())
    {
      v28 = v44[0];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    sub_30B8(v46, &qword_34CEA0, &qword_2D0FC0);
    v28 = 0;
  }

  v40(v10, v43, v4);

  v29 = sub_2CDFE0();
  v30 = sub_2CE670();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46[0] = v32;
    *v31 = 136315138;
    v44[0] = v28;

    sub_20410(&qword_34D420, &qword_2D1260);
    v33 = sub_2CE2A0();
    v43 = v27;
    v35 = sub_3F08(v33, v34, v46);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v29, v30, "ShimUtilities audioExperience %s", v31, 0xCu);
    sub_306C(v32);

    v43(v10, v4);
    v36 = v41;
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_23:
    sub_30B8(v47, &qword_34CEA0, &qword_2D0FC0);
    sub_5267C(v36, a2);
    return 0;
  }

  v27(v10, v4);
  v36 = v41;
  if (!v28)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v28 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_25:
    sub_30B8(v47, &qword_34CEA0, &qword_2D0FC0);
    sub_5267C(v36, a2);

    return 0;
  }

LABEL_18:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v37 = sub_2CECD0();
    goto LABEL_21;
  }

  if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
  {
    v37 = *(v28 + 32);
LABEL_21:
    v38 = v37;
    sub_5267C(v36, a2);

    sub_30B8(v47, &qword_34CEA0, &qword_2D0FC0);
    return v38;
  }

  __break(1u);
  return result;
}

uint64_t sub_507D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = &v34[-v9];
  __chkstk_darwin(v8);
  v12 = &v34[-v11];
  v13 = 0;
  if (a2 >> 60 != 15)
  {
    sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
    sub_20410(&qword_34D3E8, &qword_2D1238);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2D0E40;
    *(v14 + 32) = sub_334A0(0, &qword_34D408, NSArray_ptr);
    *(v14 + 40) = sub_2CDA90();
    sub_525D4(a1, a2);
    sub_2CE940();

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v15 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    v16 = v5[2];
    v40 = v15;
    v37 = v16;
    v38 = (v5 + 2);
    v16(v12, v15, v4);
    sub_F3F4(v44, v43, &qword_34CEA0, &qword_2D0FC0);
    v17 = sub_2CDFE0();
    v18 = sub_2CE670();
    v19 = os_log_type_enabled(v17, v18);
    v39 = v5;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v20 = 136315138;
      v35 = v18;
      sub_F3F4(v43, v41, &qword_34CEA0, &qword_2D0FC0);
      sub_20410(&qword_34CEA0, &qword_2D0FC0);
      v21 = sub_2CE2A0();
      v23 = v22;
      sub_30B8(v43, &qword_34CEA0, &qword_2D0FC0);
      v24 = sub_3F08(v21, v23, &v42);
      v5 = v39;

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v17, v35, "ShimUtilities AudioResult uncast %s", v20, 0xCu);
      sub_306C(v36);
    }

    else
    {

      sub_30B8(v43, &qword_34CEA0, &qword_2D0FC0);
    }

    v25 = v5[1];
    v25(v12, v4);
    sub_F3F4(v44, v43, &qword_34CEA0, &qword_2D0FC0);
    if (v43[3])
    {
      sub_20410(&qword_34D418, &qword_2D1258);
      if (swift_dynamicCast())
      {
        v13 = v41[0];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      sub_30B8(v43, &qword_34CEA0, &qword_2D0FC0);
      v13 = 0;
    }

    v37(v10, v40, v4);

    v26 = sub_2CDFE0();
    v27 = sub_2CE670();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41[0] = v13;
      v43[0] = v40;
      *v28 = 136315138;

      sub_20410(&qword_34D410, &qword_2D1250);
      v29 = sub_2CE2A0();
      v31 = sub_3F08(v29, v30, v43);
      v38 = v25;
      v32 = v31;

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v26, v27, "ShimUtilities AudioResult %s", v28, 0xCu);
      sub_306C(v40);

      sub_5267C(a1, a2);

      v38(v10, v4);
    }

    else
    {
      sub_5267C(a1, a2);

      v25(v10, v4);
    }

    sub_30B8(v44, &qword_34CEA0, &qword_2D0FC0);
  }

  return v13;
}

uint64_t _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(uint64_t a1)
{
  v175 = sub_2CE110();
  v174 = *(v175 - 8);
  v2 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = &v163[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = sub_2CE0E0();
  v169 = *(v170 - 8);
  v4 = *(v169 + 64);
  v5 = __chkstk_darwin(v170);
  v167 = &v163[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v168 = &v163[-v8];
  __chkstk_darwin(v7);
  v176 = &v163[-v9];
  v187 = sub_2CB3B0();
  v185 = *(v187 - 8);
  v10 = *(v185 + 64);
  __chkstk_darwin(v187);
  v184 = &v163[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v186 = sub_2CE120();
  v180 = *(v186 - 8);
  v12 = *(v180 + 64);
  v13 = __chkstk_darwin(v186);
  v179 = &v163[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v172 = &v163[-v16];
  v17 = __chkstk_darwin(v15);
  v178 = &v163[-v18];
  __chkstk_darwin(v17);
  v183 = &v163[-v19];
  v197 = sub_2CB3E0();
  v195 = *(v197 - 8);
  v20 = *(v195 + 8);
  v21 = __chkstk_darwin(v197);
  v194 = &v163[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v191 = &v163[-v23];
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v198 = v24;
  v199 = v25;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v163[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v27);
  v193 = &v163[-v31];
  v32 = __chkstk_darwin(v30);
  v182 = &v163[-v33];
  v34 = __chkstk_darwin(v32);
  v177 = &v163[-v35];
  v36 = __chkstk_darwin(v34);
  v171 = &v163[-v37];
  v38 = __chkstk_darwin(v36);
  v181 = &v163[-v39];
  v40 = __chkstk_darwin(v38);
  v196 = &v163[-v41];
  __chkstk_darwin(v40);
  v43 = &v163[-v42];
  v44 = sub_2CA870();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v163[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_2CA340();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v54 = &v163[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v52);
  v56 = &v163[-v55];
  (*(v45 + 16))(v48, a1, v44);
  if ((*(v45 + 88))(v48, v44) != enum case for Parse.ifClientAction(_:))
  {
    (*(v45 + 8))(v48, v44);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v79 = v198;
    v80 = sub_3ED0(v198, static Logger.default);
    swift_beginAccess();
    v81 = v199;
    (*(v199 + 16))(v29, v80, v79);
    v82 = sub_2CDFE0();
    v83 = sub_2CE680();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_0, v82, v83, "ShimUtilities#getAppBundleId Not ifClientAction parse", v84, 2u);
    }

    (*(v81 + 8))(v29, v79);
    return 0;
  }

  (*(v45 + 96))(v48, v44);
  (*(v50 + 32))(v56, v48, v49);
  v57 = v49;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v58 = v198;
  v59 = sub_3ED0(v198, static Logger.default);
  swift_beginAccess();
  v60 = v199;
  v61 = *(v199 + 16);
  v189 = v199 + 16;
  v190 = v59;
  v188 = v61;
  v61(v43, v59, v58);
  (*(v50 + 16))(v54, v56, v57);
  v62 = sub_2CDFE0();
  v63 = sub_2CE670();
  v64 = os_log_type_enabled(v62, v63);
  v166 = v50;
  v192 = v56;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v200 = v165;
    *v65 = 136315138;
    v66 = v191;
    sub_2CA330();
    sub_2CB3C0();
    v164 = v63;
    v67 = v195;
    (*(v195 + 1))(v66, v197);
    sub_20410(&qword_34D378, qword_2D11F0);
    v68 = sub_2CE210();
    v69 = v57;
    v71 = v70;

    v72 = *(v50 + 8);
    (v72)(v54, v69);
    v73 = sub_3F08(v68, v71, &v200);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_0, v62, v164, "ShimUtilities#getAppBundleId shim parameter: %s", v65, 0xCu);
    sub_306C(v165);
    v74 = v199;

    v75 = v198;

    v76 = v69;
    v77 = v197;
    v78 = *(v74 + 8);
    (v78)(v43, v75);
  }

  else
  {

    v72 = *(v50 + 8);
    (v72)(v54, v57);
    v78 = *(v60 + 8);
    (v78)(v43, v58);
    v75 = v58;
    v76 = v57;
    v77 = v197;
    v67 = v195;
  }

  v85 = v194;
  sub_2CA330();
  v86 = sub_2CB3C0();
  (*(v67 + 1))(v85, v77);
  v87 = v196;
  if (!*(v86 + 16) || (v88 = sub_4F538(7368801, 0xE300000000000000), (v89 & 1) == 0))
  {

    v102 = v193;
    v188(v193, v190, v75);
    v103 = sub_2CDFE0();
    v104 = sub_2CE680();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "ShimUtilities#getAppBundleId app shimParameter not found", v105, 2u);
    }

    (v78)(v102, v75);
    v106 = v192;
    v107 = v76;
    goto LABEL_39;
  }

  v90 = *(*(v86 + 56) + 8 * v88);

  v188(v87, v190, v75);

  v91 = sub_2CDFE0();
  v92 = sub_2CE670();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v197 = v76;
    v195 = v78;
    v94 = v72;
    v95 = v93;
    v96 = swift_slowAlloc();
    v200 = v96;
    *v95 = 136315138;
    v97 = sub_2CE420();
    v99 = sub_3F08(v97, v98, &v200);

    *(v95 + 4) = v99;
    _os_log_impl(&dword_0, v91, v92, "ShimUtilities#getAppBundleId app parameter: %s", v95, 0xCu);
    sub_306C(v96);

    v72 = v94;
    v78 = v195;
    v100 = v197;

    v101 = v196;
  }

  else
  {
    v100 = v76;

    v101 = v87;
  }

  (v78)(v101, v75);
  v109 = v184;
  v108 = v185;
  if (!*(v90 + 16))
  {

LABEL_26:
    v129 = v182;
    v188(v182, v190, v75);
    v130 = sub_2CDFE0();
    v131 = sub_2CE680();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_0, v130, v131, "ShimUtilities#getAppBundleId unable to extract appValue", v132, 2u);
    }

    (v78)(v129, v75);
    v106 = v192;
    v107 = v100;
    goto LABEL_39;
  }

  v110 = v187;
  (*(v185 + 16))(v184, v90 + ((*(v185 + 80) + 32) & ~*(v185 + 80)), v187);

  if ((*(v108 + 88))(v109, v110) != enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    (*(v108 + 8))(v109, v110);
    goto LABEL_26;
  }

  v194 = v72;
  v197 = v100;
  (*(v108 + 96))(v109, v110);
  v111 = v180;
  v112 = v183;
  v113 = v186;
  (*(v180 + 32))(v183, v109, v186);
  v114 = v181;
  v188(v181, v190, v75);
  v115 = v75;
  v116 = *(v111 + 16);
  v117 = v178;
  v116(v178, v112, v113);
  v118 = sub_2CDFE0();
  v119 = sub_2CE670();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v200 = v121;
    *v120 = 136315138;
    v116(v172, v117, v186);
    v122 = sub_2CE2A0();
    v123 = v117;
    v125 = v124;
    v196 = *(v111 + 8);
    (v196)(v123, v186);
    v126 = sub_3F08(v122, v125, &v200);

    *(v120 + 4) = v126;
    _os_log_impl(&dword_0, v118, v119, "ShimUtilities#getAppBundleId app value: %s", v120, 0xCu);
    sub_306C(v121);

    v113 = v186;

    v127 = v181;
    v128 = v198;
  }

  else
  {

    v196 = *(v111 + 8);
    (v196)(v117, v113);
    v127 = v114;
    v128 = v115;
  }

  v78(v127);
  v133 = v179;
  v116(v179, v183, v113);
  if ((*(v111 + 88))(v133, v113) != enum case for TypedValue.primitive(_:))
  {
    (v196)(v133, v113);
    v72 = v194;
LABEL_36:
    v155 = v177;
    v188(v177, v190, v128);
    v156 = sub_2CDFE0();
    v157 = sub_2CE680();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&dword_0, v156, v157, "ShimUtilities#getAppBundleId unable to extract appValue typed entity", v158, 2u);
    }

    (v78)(v155, v128);
    (v196)(v183, v113);
    v106 = v192;
    v107 = v197;
LABEL_39:
    (v72)(v106, v107);
    return 0;
  }

  v195 = v78;
  (*(v111 + 96))(v133, v113);
  v134 = *v133;
  v135 = swift_projectBox();
  v136 = v174;
  v137 = v173;
  v138 = v175;
  (*(v174 + 16))(v173, v135, v175);
  if ((*(v136 + 88))(v137, v138) != enum case for TypedValue.PrimitiveValue.app(_:))
  {
    (*(v136 + 8))(v137, v138);

    v72 = v194;
    v78 = v195;
    goto LABEL_36;
  }

  (*(v136 + 96))(v137, v138);
  v139 = v169;
  v140 = v176;
  v141 = v170;
  (*(v169 + 32))(v176, v137, v170);

  v142 = v171;
  v188(v171, v190, v128);
  v143 = *(v139 + 16);
  v144 = v168;
  v143(v168, v140, v141);
  v145 = sub_2CDFE0();
  v146 = sub_2CE670();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v200 = v193;
    *v147 = 136315138;
    v143(v167, v144, v141);
    v148 = sub_2CE2A0();
    v150 = v149;
    v151 = *(v139 + 8);
    v151(v144, v141);
    v152 = sub_3F08(v148, v150, &v200);

    *(v147 + 4) = v152;
    _os_log_impl(&dword_0, v145, v146, "ShimUtilities#getAppBundleId app: %s", v147, 0xCu);
    sub_306C(v193);

    v153 = v198;
    v154 = v171;
  }

  else
  {

    v151 = *(v139 + 8);
    v151(v144, v141);
    v154 = v142;
    v153 = v128;
  }

  (v195)(v154, v153);
  v160 = v197;
  v161 = v176;
  v162 = sub_2CE0D0();
  v151(v161, v141);
  (v196)(v183, v186);
  (v194)(v192, v160);
  return v162;
}

uint64_t sub_5258C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_525D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_52628(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_5267C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_52628(a1, a2);
  }

  return a1;
}

unint64_t sub_52690(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v13 = a1;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_2CECD0();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12[0] = j;
      v12[1] = v7;
      v10 = v13(v12);
      if (v3)
      {

        return j;
      }

      if (v10)
      {
        return j;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t MediaItemDisambiguationStrategy.actionForInput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:input:)@<X0>(uint64_t *a1@<X6>, uint64_t a2@<X8>)
{
  v132 = a2;
  v115 = sub_2CA810();
  v114 = *(v115 - 8);
  v3 = *(v114 + 64);
  v4 = __chkstk_darwin(v115);
  v108 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v106 - v7;
  __chkstk_darwin(v6);
  v117 = &v106 - v9;
  v10 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v129 = (&v106 - v12);
  v13 = sub_2CD490();
  v119 = *(v13 - 8);
  v14 = *(v119 + 64);
  v15 = __chkstk_darwin(v13);
  v109 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v116 = &v106 - v18;
  __chkstk_darwin(v17);
  v118 = &v106 - v19;
  v127 = sub_2CA870();
  v126 = *(v127 - 8);
  v20 = *(v126 + 64);
  v21 = __chkstk_darwin(v127);
  v120 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v131 = &v106 - v23;
  v24 = sub_2CA7B0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CE000();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = __chkstk_darwin(v29);
  v110 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v130 = &v106 - v35;
  v36 = __chkstk_darwin(v34);
  v113 = &v106 - v37;
  v38 = __chkstk_darwin(v36);
  v112 = &v106 - v39;
  __chkstk_darwin(v38);
  v41 = &v106 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v111 = v8;
  v42 = sub_3ED0(v29, static Logger.default);
  swift_beginAccess();
  v43 = v30[2];
  v123 = v42;
  v122 = v30 + 2;
  v121 = v43;
  v43(v41, v42, v29);
  v44 = *(v25 + 16);
  v128 = a1;
  v44(v28, a1, v24);
  v45 = v28;
  v46 = sub_2CDFE0();
  v47 = sub_2CE690();
  v48 = os_log_type_enabled(v46, v47);
  v125 = v13;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v137[0] = v107;
    *v49 = 136315138;
    sub_5C3A4(&qword_34CD00, &type metadata accessor for Input);
    v50 = sub_2CEE70();
    v51 = v30;
    v52 = v50;
    v124 = v51;
    v54 = v53;
    (*(v25 + 8))(v45, v24);
    v55 = sub_3F08(v52, v54, v137);
    v30 = v124;

    *(v49 + 4) = v55;
    _os_log_impl(&dword_0, v46, v47, "MediaItemDisambiguationStrategy#actionForInput input:%s", v49, 0xCu);
    sub_306C(v107);
  }

  else
  {

    (*(v25 + 8))(v45, v24);
  }

  v56 = v30[1];
  v56(v41, v29);
  v57 = v130;
  v58 = v131;
  sub_2CA790();
  v59 = v126;
  v60 = v127;
  v61 = (*(v126 + 88))(v58, v127);
  v62 = v129;
  if (v61 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v59 + 96))(v58, v60);
    v63 = *&v58[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

    v64 = sub_2CAFE0();
    (*(*(v64 - 8) + 8))(v58, v64);
  }

  else
  {
    if (v61 == enum case for Parse.directInvocation(_:))
    {
      (*(v59 + 96))(v58, v60);
      v69 = v114;
      v70 = v58;
      v71 = v117;
      v72 = v115;
      (*(v114 + 32))(v117, v70, v115);
      sub_238E4C(v71, v137);
      if (v138 == 3)
      {
        sub_30B8(v137, &qword_34CCB0, &qword_2D5710);
        (*(v69 + 8))(v71, v72);
        return sub_2C9CE0();
      }

      v124 = v30;
      if (v138 != 255)
      {
        sub_30B8(v137, &qword_34CCB0, &qword_2D5710);
      }

      v129 = v56;
      v121(v57, v123, v29);
      v73 = *(v69 + 16);
      v74 = v111;
      v73(v111, v71, v72);
      v75 = sub_2CDFE0();
      v76 = sub_2CE680();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v131 = v29;
        v128 = v78;
        *&v135 = v78;
        *v77 = 136315138;
        v73(v108, v74, v72);
        v79 = sub_2CE2A0();
        v81 = v80;
        v82 = *(v69 + 8);
        v82(v74, v72);
        v83 = sub_3F08(v79, v81, &v135);

        *(v77 + 4) = v83;
        _os_log_impl(&dword_0, v75, v76, "MediaItemDisambiguationStrategy#actionForInput received unsupported directInvocation: %s", v77, 0xCu);
        sub_306C(v128);

        v84 = v130;
        v85 = v131;
      }

      else
      {

        v82 = *(v69 + 8);
        v82(v74, v72);
        v84 = v57;
        v85 = v29;
      }

      v129(v84, v85);
      sub_2C9CF0();
      return (v82)(v117, v72);
    }

    if (v61 != enum case for Parse.pommesResponse(_:))
    {
      v93 = v110;
      v121(v110, v123, v29);
      v94 = sub_2CDFE0();
      v95 = sub_2CE680();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_0, v94, v95, "MediaItemDisambiguationStrategy#actionForInput Ignorning unsupported parse", v96, 2u);
      }

      v56(v93, v29);
      sub_2C9CF0();
      return (*(v59 + 8))(v131, v60);
    }

    (*(v59 + 8))(v58, v60);
  }

  v65 = v120;
  sub_2CA790();
  v66 = sub_D1D64(v65, &v135);
  (*(v59 + 8))(v65, v60, v66);
  if (v136)
  {
    sub_F338(&v135, v137);
    sub_35E0(v137, v137[3]);
    sub_2CD480();
    v67 = v119;
    v68 = v125;
    if ((*(v119 + 48))(v62, 1, v125) == 1)
    {
      sub_30B8(v62, &qword_34CCE8, &unk_2D0E20);
LABEL_11:
      sub_306C(v137);
      return sub_2C9CE0();
    }

    v124 = v30;
    v131 = v29;
    (*(v67 + 32))(v118, v62, v68);
    v91 = *(v67 + 104);
    v91(v116, enum case for CommonAudio.Confirmation.cancel(_:), v68);
    sub_5C3A4(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v135 == v133 && *(&v135 + 1) == v134)
    {
      v92 = 1;
    }

    else
    {
      v92 = sub_2CEEA0();
    }

    v97 = *(v119 + 8);
    v98 = v125;
    v97(v116, v125);

    if ((v92 & 1) == 0)
    {
      v99 = v109;
      v91(v109, enum case for CommonAudio.Confirmation.no(_:), v98);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v135 == v133 && *(&v135 + 1) == v134)
      {
        v97(v99, v98);
      }

      else
      {
        v100 = sub_2CEEA0();
        v97(v99, v98);

        if ((v100 & 1) == 0)
        {
          v97(v118, v98);
          goto LABEL_11;
        }
      }
    }

    v101 = v112;
    v102 = v131;
    v121(v112, v123, v131);
    v103 = sub_2CDFE0();
    v104 = sub_2CE690();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "MediaItemDisambiguationStrategy#actionForInput cancelled", v105, 2u);
    }

    v56(v101, v102);
    sub_2C9CD0();
    v97(v118, v125);
    return sub_306C(v137);
  }

  else
  {
    sub_30B8(&v135, &qword_34CCF0, &unk_2D1270);
    v86 = v113;
    v121(v113, v123, v29);
    v87 = sub_2CDFE0();
    v88 = sub_2CE690();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "MediaItemDisambiguationStrategy#actionForInput received invalid intent", v89, 2u);
    }

    v56(v86, v29);
    return sub_2C9CF0();
  }
}

uint64_t sub_5385C(uint64_t a1)
{
  v1 = [*(a1 + 8) identifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2CE270();
    v5 = v4;

    v6 = sub_73218();
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = sub_73218();
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = v6;
  v8 = [v6 mediaIdentifier];

  if (v8)
  {
    v9 = sub_2CE270();
    v11 = v10;

    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = 0;
  v11 = 0;
  if (v5)
  {
LABEL_10:
    if (v11)
    {
      if (v3 == v9 && v5 == v11)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_2CEEA0();
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_16;
  }

LABEL_7:
  if (!v11)
  {
    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
LABEL_16:

  return v12 & 1;
}

uint64_t sub_5399C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_353080, &qword_2D1460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = [*(a1 + 8) identifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2CE270();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_F3F4(a2, v7, &unk_353080, &qword_2D1460);
  v13 = sub_2CAB40();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_30B8(v7, &unk_353080, &qword_2D1460);
    if (!v12)
    {
      goto LABEL_17;
    }

LABEL_14:
    v19 = 0;
LABEL_19:

    return v19 & 1;
  }

  v15 = sub_2CAB20();
  v17 = v16;
  (*(v14 + 8))(v7, v13);
  if (v12)
  {
    if (v17)
    {
      if (v10 == v15 && v12 == v17)
      {

        v19 = 1;
      }

      else
      {
        v19 = sub_2CEEA0();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v17)
  {
    v19 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_53BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v111 = a8;
  v113 = a7;
  v114 = a6;
  v108 = a3;
  v109 = a4;
  v107 = a2;
  v104 = a1;
  v112 = a9;
  v110 = a5;
  v91 = *a5;
  v99 = sub_2C8EC0();
  v98 = *(v99 - 8);
  v9 = *(v98 + 64);
  __chkstk_darwin(v99);
  v94 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v101 = *(v11 - 8);
  v12 = *(v101 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v103 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v14;
  __chkstk_darwin(v13);
  v106 = &v91 - v15;
  v16 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v96 = *(v16 - 8);
  v17 = *(v96 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v100 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v19;
  __chkstk_darwin(v18);
  v105 = (&v91 - v20);
  v21 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v95 = (&v91 - v23);
  v24 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v93 = &v91 - v26;
  v27 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v92 = &v91 - v29;
  v30 = sub_2CCB30();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2CCAC0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20410(&unk_3519A0, &qword_2D0980);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = (&v91 - v42);
  sub_F3F4(v104, &v91 - v42, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v43;
    (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.mids(_:), v35);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v30);
    swift_getErrorValue();
    sub_2CEEF0();
    LOBYTE(v90) = 0;
    v109 = sub_2CCAF0();

    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v46 = v110[7];
    v45 = v110[8];
    v110 = sub_35E0(v110 + 4, v46);
    v47 = enum case for ActivityType.failed(_:);
    v48 = sub_2C9C20();
    v49 = *(v48 - 8);
    v50 = v92;
    (*(v49 + 104))(v92, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    v51 = sub_2CA130();
    v52 = v93;
    (*(*(v51 - 8) + 56))(v93, 1, 1, v51);
    v53 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v54 = sub_2C98F0();
    v55 = *(v54 - 8);
    v56 = v95;
    (*(v55 + 104))(v95, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v89 = v46;
    v90 = v45;
    v88[0] = 1;
    sub_2CB4E0();

    sub_30B8(v56, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v52, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v50, &qword_34CB88, &unk_2D0D90);
    v115[0] = v44;
    v116 = 1;
    swift_errorRetain();
    v111(v115);

    v57 = qword_34C798;
    v58 = &qword_2D0DA0;
    v59 = v115;
  }

  else
  {
    v60 = v105;
    sub_14A58(v43, v105, &qword_34C6E8, &unk_2D0FF0);
    sub_20410(&qword_34D4C0, &qword_2D1438);
    sub_2CA440();
    v61 = *(v91 + 80);
    v62 = *(v91 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v104 = AssociatedTypeWitness;
    v95 = swift_getAssociatedTypeWitness();
    v64 = v106;
    v65 = v114;
    sub_B37D0(v113, v114, AssociatedTypeWitness, v95, v106);

    v66 = sub_2CA460();
    v67 = v94;
    v68 = sub_2CB570();
    __chkstk_darwin(v68);
    v90 = v67;
    sub_98ED0(sub_5B6EC, v88, v66);
    (*(v98 + 8))(v67, v99);
    sub_2AD1C(v66);

    v69 = sub_2C9960();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    v99 = sub_2C9950();
    v72 = v100;
    sub_F3F4(v60, v100, &qword_34C6E8, &unk_2D0FF0);
    v73 = v64;
    v74 = v103;
    sub_F3F4(v73, v103, &unk_353020, &unk_2D0970);
    v75 = (*(v96 + 80) + 96) & ~*(v96 + 80);
    v76 = (v97 + *(v101 + 80) + v75) & ~*(v101 + 80);
    v77 = swift_allocObject();
    v77[2] = v61;
    v77[3] = v62;
    v78 = v108;
    v77[4] = v107;
    v77[5] = v78;
    v79 = v109;
    v80 = v110;
    v77[6] = v109;
    v77[7] = v80;
    v77[8] = v65;
    v81 = v112;
    v82 = v113;
    v83 = v111;
    v77[9] = v113;
    v77[10] = v83;
    v77[11] = v81;
    sub_14A58(v72, v77 + v75, &qword_34C6E8, &unk_2D0FF0);
    sub_14A58(v74, v77 + v76, &unk_353020, &unk_2D0970);

    v84 = v79;

    v85 = v114;

    v86 = v82;

    sub_10CE1C(v85, v99, sub_5B70C, v77);

    sub_30B8(v106, &unk_353020, &unk_2D0970);
    v59 = v105;
    v57 = &qword_34C6E8;
    v58 = &unk_2D0FF0;
  }

  return sub_30B8(v59, v57, v58);
}

uint64_t sub_54724(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *), uint64_t a10, uint64_t a11)
{
  v88 = a7;
  v89 = a8;
  v83 = a5;
  v84 = a6;
  v82 = a4;
  v81 = a3;
  LODWORD(v80) = a2;
  v90 = a10;
  v91 = a9;
  v77 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v78 = &v72 - v13;
  v76 = sub_2CCB20();
  v75 = *(v76 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v76);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CA910();
  v79 = *(v17 - 8);
  v18 = *(v79 + 64);
  __chkstk_darwin(v17);
  v85 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v87 = &v72 - v22;
  v23 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v86 = &v72 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v72 - v28;
  v30 = sub_2CCB30();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2CCAC0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v80)
  {
    (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.mids(_:), v35);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v30);
    swift_getErrorValue();
    v85 = a1;
    sub_2CEEF0();
    v83 = sub_2CCAF0();

    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v40 = v84[8];
    sub_35E0(v84 + 4, v84[7]);
    v41 = enum case for ActivityType.failed(_:);
    v42 = sub_2C9C20();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v29, v41, v42);
    (*(v43 + 56))(v29, 0, 1, v42);
    v44 = sub_2CA130();
    v45 = v86;
    (*(*(v44 - 8) + 56))(v86, 1, 1, v44);
    v46 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v47 = sub_2C98F0();
    v48 = *(v47 - 8);
    v49 = v87;
    (*(v48 + 104))(v87, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    sub_2CB4E0();

    sub_30B8(v49, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v45, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v29, &qword_34CB88, &unk_2D0D90);
    *&v92 = v85;
    v95 = 1;
    swift_errorRetain();
    v91(&v92);
  }

  else
  {
    v80 = v17;
    v74 = v29;
    v73 = a11;
    sub_2CB5B0();
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    sub_2C9DF0();
    sub_30B8(&v92, &qword_34CC80, &qword_2D1520);
    (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.ModuleName.mids(_:), v35);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v30);
    v50 = v75;
    v51 = v76;
    (*(v75 + 104))(v16, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v76);
    v52 = sub_2CCB00();
    v82 = v53;
    v83 = v52;
    (*(v50 + 8))(v16, v51);
    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v54 = v84[8];
    sub_35E0(v84 + 4, v84[7]);
    v55 = enum case for ActivityType.disambiguation(_:);
    v56 = sub_2C9C20();
    v57 = *(v56 - 8);
    v58 = v74;
    (*(v57 + 104))(v74, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = v78;
    sub_F3F4(v73, v78, &qword_34C6E8, &unk_2D0FF0);

    v60 = sub_2CA130();
    v61 = *(v60 - 8);
    v62 = v86;
    (*(v61 + 32))(v86, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    v63 = enum case for SiriKitReliabilityCodes.success(_:);
    v64 = sub_2C98F0();
    v65 = *(v64 - 8);
    v66 = v87;
    (*(v65 + 104))(v87, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    sub_2CB4E0();

    sub_30B8(v66, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v62, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v58, &qword_34CB88, &unk_2D0D90);
    v67 = v80;
    *(&v93 + 1) = v80;
    v94 = &protocol witness table for AceOutput;
    v68 = sub_F390(&v92);
    v69 = v79;
    v70 = v85;
    (*(v79 + 16))(v68, v85, v67);
    v95 = 0;
    v91(&v92);
    (*(v69 + 8))(v70, v67);
  }

  return sub_30B8(&v92, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_55214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v93 = a7;
  v99 = a5;
  v100 = a6;
  v101 = a4;
  v102 = a3;
  v8 = *a2;
  v98 = a2;
  v91 = v8;
  v90 = sub_2CD230();
  v89 = *(v90 - 8);
  v9 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v92 = (&v85 - v13);
  v97 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = *(*(v97 - 8) + 64);
  v15 = __chkstk_darwin(v97);
  v87 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v85 - v18;
  __chkstk_darwin(v17);
  v21 = &v85 - v20;
  v22 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v96 = &v85 - v24;
  v25 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v95 = &v85 - v27;
  v28 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v94 = &v85 - v30;
  v31 = sub_2CE000();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20410(&unk_3519A0, &qword_2D0980);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v85 - v38);
  sub_F3F4(a1, &v85 - v38, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_14A58(v39, v21, &qword_34C6E8, &unk_2D0FF0);
    v94 = sub_20410(&qword_34D4C0, &qword_2D1438);
    sub_2CA440();
    v65 = *(v91 + 80);
    v64 = *(v91 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v95 = v65;
    v67 = swift_getAssociatedTypeWitness();
    v68 = v92;
    sub_B37D0(v101, v102, AssociatedTypeWitness, v67, v92);

    sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
    v69 = *&v19[*(v97 + 48)];
    v70 = [v69 dialog];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v71 = sub_2CE410();

    if (v71 >> 62)
    {
      result = sub_2CEDA0();
    }

    else
    {
      result = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
    }

    v86 = v21;
    v85 = v19;
    v96 = v64;
    if (result)
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v72 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v72 = *(v71 + 32);
      }

      v73 = v72;

      v74 = [v73 fullPrint];

      v75 = sub_2CE270();
      v77 = v76;
    }

    else
    {

      v75 = 0;
      v77 = 0xE000000000000000;
    }

    v78 = sub_2CA130();
    v79 = *(*(v78 - 8) + 8);
    v79(v85, v78);
    v80 = sub_2CA460();
    v81 = v88;
    sub_55D90(v75, v77, v80, v88);

    v82 = v86;
    v83 = v87;
    sub_F3F4(v86, v87, &qword_34C6E8, &unk_2D0FF0);
    v84 = *(v83 + *(v97 + 48));
    sub_5B8A4(v81, v83, v84, v68, v99, v100);

    (*(v89 + 8))(v81, v90);
    sub_30B8(v68, &unk_353020, &unk_2D0970);
    sub_30B8(v82, &qword_34C6E8, &unk_2D0FF0);
    return (v79)(v83, v78);
  }

  v40 = *v39;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v31, static Logger.default);
  swift_beginAccess();
  v42 = v32;
  (*(v32 + 16))(v35, v41, v31);
  swift_errorRetain();
  v43 = sub_2CDFE0();
  v44 = sub_2CE680();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v45 = 136315394;
    swift_getErrorValue();
    v46 = sub_2CEEF0();
    v48 = sub_3F08(v46, v47, v103);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2082;
    v49 = sub_2CCCA0();
    v51 = sub_3F08(v49, v50, v103);

    *(v45 + 14) = v51;
    _os_log_impl(&dword_0, v43, v44, "MediaItemDisambiguationStrategy#promptForDisambiguationWithRF failed to build dialog. error: %s %{public}s", v45, 0x16u);
    swift_arrayDestroy();
  }

  (*(v42 + 8))(v35, v31);
  v52 = v98[8];
  sub_35E0(v98 + 4, v98[7]);
  v53 = enum case for ActivityType.failed(_:);
  v54 = sub_2C9C20();
  v55 = *(v54 - 8);
  v56 = v94;
  (*(v55 + 104))(v94, v53, v54);
  (*(v55 + 56))(v56, 0, 1, v54);
  v57 = sub_2CA130();
  v58 = v95;
  (*(*(v57 - 8) + 56))(v95, 1, 1, v57);
  v59 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v60 = sub_2C98F0();
  v61 = *(v60 - 8);
  v62 = v96;
  (*(v61 + 104))(v96, v59, v60);
  (*(v61 + 56))(v62, 0, 1, v60);
  swift_getErrorValue();
  sub_2CEEF0();
  sub_2CB4E0();

  sub_30B8(v62, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v58, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
  v103[0] = v40;
  v104 = 1;
  swift_errorRetain();
  v99(v103);

  return sub_30B8(v103, qword_34C798, &qword_2D0DA0);
}