uint64_t sub_1E6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, updated, a4);
}

uint64_t sub_1E64C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_1E65A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E6614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DC0D0;
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
  *(v24 + 72) = 0xD000000000000018;
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
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000018;
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

uint64_t sub_1E6C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DC090;
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
  *(v24 + 72) = 0xD000000000000012;
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
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000012;
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

uint64_t sub_1E731C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DC0B0;
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

uint64_t sub_1E79A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DB730;
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
  *(v24 + 72) = 0xD000000000000015;
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
    *(v36 + 14) = sub_3F08(0xD000000000000015, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000015;
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

uint64_t sub_1E8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DC120;
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
  *(v24 + 72) = 0xD000000000000026;
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
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000026;
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

uint64_t sub_1E86A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DC0F0;
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
  *(v24 + 72) = 0xD000000000000029;
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
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000029;
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

uint64_t sub_1E8D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DC050;
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
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D7C;
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
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000019;
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
  v43[3] = sub_13D84;
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
  v49 = sub_3E010;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1E93D4(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 1196314451;
      break;
    case 2:
      result = 0x4D55424C41;
      break;
    case 3:
      result = 0x545349545241;
      break;
    case 4:
      result = 0x45524E4547;
      break;
    case 5:
      result = 0x5453494C59414C50;
      break;
    case 6:
    case 15:
      result = 0x5F54534143444F50;
      break;
    case 7:
      result = 0x5F54534143444F50;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      v2 = 0x5F434953554DLL;
      goto LABEL_22;
    case 10:
      result = 0x4F425F4F49445541;
      break;
    case 11:
      result = 0x4549564F4DLL;
      break;
    case 12:
      result = 0x574F48535F5654;
      break;
    case 13:
      result = 0x5F574F48535F5654;
      break;
    case 14:
      result = 0x49565F434953554DLL;
      break;
    case 16:
      v2 = 0x5F4F49444152;
LABEL_22:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x5453000000000000;
      break;
    case 17:
      result = 0x4E4F4954415453;
      break;
    case 18:
      result = 0x434953554DLL;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 1398228302;
      break;
    default:
      result = 0x4E574F4E4B4E55;
      break;
  }

  return result;
}

id sub_1E960C()
{
  v1 = v0;
  v2 = sub_2CE0A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  result = [v1 mediaDestination];
  if (result)
  {
    v14 = result;
    sub_2CE090();

    (*(v3 + 32))(v12, v10, v2);
    (*(v3 + 16))(v7, v12, v2);
    v15 = (*(v3 + 88))(v7, v2);
    if (v15 == enum case for INMediaDestination.playlist(_:))
    {
      (*(v3 + 8))(v12, v2);
      (*(v3 + 96))(v7, v2);
      result = *v7;
      v16 = v7[1];
    }

    else
    {
      v17 = v15;
      v18 = enum case for INMediaDestination.library(_:);
      v19 = *(v3 + 8);
      v19(v12, v2);
      if (v17 != v18)
      {
        v19(v7, v2);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E9824()
{
  v1 = v0;
  v2 = sub_2CE0A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34CC98, &unk_2D3120);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = [v1 mediaDestination];
  if (!v14)
  {
    (*(v3 + 56))(v13, 1, 1, v2);
    goto LABEL_8;
  }

  v15 = v14;
  sub_2CE090();

  (*(v3 + 32))(v13, v6, v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  sub_73000(v13, v11);
  v16 = (*(v3 + 88))(v11, v2);
  if (v16 != enum case for INMediaDestination.playlist(_:))
  {
    if (v16 == enum case for INMediaDestination.library(_:))
    {
      v17 = 1;
      goto LABEL_9;
    }

    (*(v3 + 8))(v11, v2);
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  (*(v3 + 8))(v11, v2);
  v17 = 2;
LABEL_9:
  sub_1E9F9C(v13);
  return v17;
}

id sub_1E9A80(SEL *a1)
{
  result = [v1 mediaItems];
  if (result)
  {
    v4 = result;
    sub_736BC();
    v5 = sub_2CE410();

    if (v5 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 *a1];

        if (v8)
        {
          v9 = sub_2CE270();

          return v9;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E9BB8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 mediaItems];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  sub_736BC();
  v7 = sub_2CE410();

  if (v7 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_2CECD0();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v9 = *(v7 + 32);
LABEL_7:
    v10 = v9;

    v11 = INMediaItem.isInternalSignalPresent(_:)(a1);

    sub_F1954(a2);
    return v11 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_1E9CB4()
{
  swift_getWitnessTable();

  return sub_2CBFB0();
}

BOOL sub_1E9D08()
{
  swift_getWitnessTable();

  return sub_2CBFD0();
}

BOOL sub_1E9D5C(uint64_t a1, void *a2)
{
  swift_getWitnessTable();
  v4.value._countAndFlagsBits = a1;
  v4.value._object = a2;

  return sub_2CBFF0(v4);
}

uint64_t sub_1E9DC8()
{
  swift_getWitnessTable();

  return sub_2CBFE0();
}

BOOL sub_1E9E1C()
{
  swift_getWitnessTable();

  return sub_2CC010();
}

uint64_t sub_1E9E70()
{
  swift_getWitnessTable();

  return sub_2CBF90();
}

uint64_t sub_1E9EC4()
{
  swift_getWitnessTable();

  return sub_2CBFC0();
}

uint64_t sub_1E9F9C(uint64_t a1)
{
  v2 = sub_20410(&qword_34CC98, &unk_2D3120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1EA018()
{
  result = qword_354A50;
  if (!qword_354A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A50);
  }

  return result;
}

Swift::Int sub_1EA078()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_1EA12C()
{
  *v0;
  *v0;
  *v0;
  sub_2CE310();
}

Swift::Int sub_1EA1CC()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_1EA27C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1EA4B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1EA2AC(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C67676F74;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E65;
  if (*v1 != 2)
  {
    v5 = 0x656C6261736964;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 7628147;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1EA32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EA504();
  v5 = sub_1EA558();
  v6 = sub_1EA5AC();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_1EA3A4()
{
  result = qword_354A58;
  if (!qword_354A58)
  {
    sub_2DB30(&qword_354A60, &qword_2D6F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A58);
  }

  return result;
}

unint64_t sub_1EA40C()
{
  result = qword_354A68;
  if (!qword_354A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A68);
  }

  return result;
}

unint64_t sub_1EA464()
{
  result = qword_354A70;
  if (!qword_354A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A70);
  }

  return result;
}

uint64_t sub_1EA4B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_330A00;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1EA504()
{
  result = qword_354A78;
  if (!qword_354A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A78);
  }

  return result;
}

unint64_t sub_1EA558()
{
  result = qword_354A80;
  if (!qword_354A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A80);
  }

  return result;
}

unint64_t sub_1EA5AC()
{
  result = qword_354A88;
  if (!qword_354A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354A88);
  }

  return result;
}

uint64_t sub_1EA600()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v8 = swift_allocObject();
  v31[3] = &type metadata for StringsBackedAppNameResolver;
  v31[4] = sub_2869C();
  v31[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v31[0] + 16);
  v30[3] = v6;
  v30[4] = &protocol witness table for MorphunProvider;
  v30[0] = v7;
  v29[3] = v0;
  v29[4] = &protocol witness table for FeatureFlagProvider;
  v9 = sub_F390(v29);
  (*(v1 + 16))(v9, v4, v0);
  *(v8 + 296) = v5;
  sub_EEAC(v29, v8 + 256);
  sub_EEAC(v31, v28);
  sub_EEAC(v30, v27);
  sub_EEAC(v32, v26);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = sub_2CCA30();

  v11 = sub_2CCA20();
  v23[3] = v10;
  v23[4] = &protocol witness table for MultiUserConnectionProvider;
  v23[0] = v11;
  v22[3] = sub_2CB9E0();
  v22[4] = &protocol witness table for DeviceProvider;
  sub_F390(v22);
  sub_2CB9C0();
  sub_EEAC(v28, v8 + 16);
  sub_EEAC(v27, v8 + 216);
  sub_EEAC(v26, v8 + 56);
  sub_EEAC(v23, v8 + 96);
  sub_EEAC(v22, v8 + 176);
  sub_286F0(v24, &v17);
  if (v18)
  {

    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    sub_F338(&v17, &v19);
  }

  else
  {
    sub_EEAC(v26, &v19);
    v12 = sub_2C9E60();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2C9E50();
    v20 = v12;
    v21 = &protocol witness table for ContactsManager;

    *&v19 = v15;
    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    if (v18)
    {
      sub_28760(&v17);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

uint64_t sub_1EA9EC@<X0>(uint64_t *a1@<X8>)
{
  v13 = sub_2CC360();
  v14 = &protocol witness table for StringsFileResolver;
  sub_F390(&v12);
  sub_2CC350();
  v2 = type metadata accessor for PlayMediaAlternativeSnippetProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 18;
  sub_20410(&qword_354B98, &unk_2D7080);
  v4 = sub_2CB900();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2D10E0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for PlaybackItem.Scheme.album(_:), v4);
  v10(v9 + v6, enum case for PlaybackItem.Scheme.playlist(_:), v4);
  v10(v9 + 2 * v6, enum case for PlaybackItem.Scheme.song(_:), v4);
  *(v3 + 24) = v8;
  result = sub_F338(&v12, v3 + 32);
  a1[3] = v2;
  a1[4] = &off_3399E0;
  *a1 = v3;
  return result;
}

uint64_t sub_1EABC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v7 = sub_2CC650();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CB4A0();
  v75[3] = v10;
  v75[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v75[0] = a3;
  type metadata accessor for PlayMediaCatDialogService();
  v11 = swift_allocObject();
  v11[6] = 0xEF746E65746E4961;
  v11[2] = 0xD000000000000011;
  v11[3] = 0x80000000002DA8D0;
  v43 = 0x80000000002DA8D0;
  v11[4] = a1;
  v11[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  v44 = a1;
  swift_retain_n();

  v50 = sub_2CC2B0();
  v73 = v50;
  v74 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v72);
  sub_2CC2A0();
  v49 = sub_2CC360();
  v70 = v49;
  v71 = &protocol witness table for StringsFileResolver;
  sub_F390(&v69);
  sub_2CC350();
  v12 = sub_2CB490();
  v67 = v10;
  v68 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v66 = v12;
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v13 = qword_35F900;
  sub_2CBC60();
  v14 = type metadata accessor for DialogHistoryProvider();
  v61 = v14;
  v62 = &off_33CAE0;
  v60[0] = v13;
  type metadata accessor for PlayMediaDialogProvider();
  v15 = swift_allocObject();
  v16 = sub_F9A0(v60, v14);
  v17 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v58 = v14;
  v59 = &off_33CAE0;
  v57[0] = v21;
  v15[15] = v11;
  sub_EEAC(&v72, (v15 + 16));
  sub_EEAC(&v66, (v15 + 31));
  sub_EEAC(v57, (v15 + 21));
  sub_EEAC(&v63, (v15 + 26));
  sub_EEAC(&v69, &v54);

  v22 = sub_2CB490();
  v52 = v10;
  v53 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v51 = v22;
  sub_306C(&v63);
  sub_306C(&v66);
  sub_306C(&v69);
  sub_306C(&v72);
  sub_306C(v57);
  v15[13] = 0xD000000000000011;
  v23 = v44;
  v15[14] = v43;
  v15[2] = v23;
  sub_F338(&v54, (v15 + 3));
  sub_F338(&v51, (v15 + 8));
  sub_306C(v60);
  v44 = sub_1EA600();
  v73 = sub_2CB9E0();
  v74 = &protocol witness table for DeviceProvider;
  sub_F390(&v72);
  sub_2CB9C0();
  sub_2C9A00();
  v67 = v50;
  v68 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v66);
  sub_2CC2A0();
  v64 = v49;
  v65 = &protocol witness table for StringsFileResolver;
  sub_F390(&v63);
  sub_2CC350();
  v24 = v45;
  sub_2CC640();
  sub_BBDC8(v60);
  v25 = v61;
  v26 = sub_F9A0(v60, v61);
  v43 = &v43;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v32 = type metadata accessor for SiriAudioUIAssertionProvider();
  v58 = v32;
  v59 = &off_339240;
  v57[0] = v31;
  type metadata accessor for PlayMediaViewProvider();
  v33 = swift_allocObject();
  v34 = sub_F9A0(v57, v32);
  v35 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (&v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v55 = v32;
  v56 = &off_339240;
  *&v54 = v39;
  v33[28] = 0;
  sub_EEAC(&v72, (v33 + 8));
  sub_EEAC(&v69, (v33 + 13));
  sub_EEAC(&v63, &v51);
  v40 = type metadata accessor for PlayMediaAlternativesViewProvider();
  v41 = swift_allocObject();
  sub_F338(&v51, v41 + 16);
  v33[21] = v40;
  v33[22] = &off_33DFA8;
  v33[18] = v41;

  (*(v46 + 8))(v24, v47);
  sub_306C(&v69);
  sub_306C(&v72);
  sub_F338(&v66, (v33 + 23));
  sub_F338(&v63, (v33 + 29));
  v33[2] = v15;
  sub_F338(&v54, (v33 + 3));

  sub_306C(v57);
  sub_306C(v60);
  sub_EEAC(v75, &v72);
  v70 = v50;
  v71 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v69);
  sub_2CC2A0();
  v67 = v49;
  v68 = &protocol witness table for StringsFileResolver;
  sub_F390(&v66);
  sub_2CC350();
  *(a4 + 112) = &off_32F570;

  sub_306C(v48);
  sub_306C(v75);
  strcpy((a4 + 160), "MediaItemType");
  *(a4 + 174) = -4864;
  *(a4 + 16) = v33;
  *(a4 + 24) = v15;
  sub_F338(&v72, a4 + 32);
  sub_F338(&v69, a4 + 72);
  sub_F338(&v66, a4 + 120);
  return a4;
}

uint64_t sub_1EB324(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = sub_2CB4A0();
  v43[3] = v7;
  v43[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v43[0] = a3;
  type metadata accessor for PlayMediaCatDialogService();
  v8 = swift_allocObject();
  v8[6] = 0xEF746E65746E4961;
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v26 = 0x80000000002DA8D0;
  v8[4] = a1;
  v8[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  v27 = a1;
  swift_retain_n();

  v25 = sub_2CC2B0();
  v41 = v25;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);
  sub_2CC2A0();
  v38 = sub_2CC360();
  v39 = &protocol witness table for StringsFileResolver;
  sub_F390(&v37);
  sub_2CC350();
  v36[3] = v7;
  v36[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v36[0] = sub_2CB490();
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v9 = qword_35F900;
  sub_2CBC60();
  v10 = type metadata accessor for DialogHistoryProvider();
  v34[3] = v10;
  v34[4] = &off_33CAE0;
  v34[0] = v9;
  type metadata accessor for PlayMediaDialogProvider();
  v11 = swift_allocObject();
  v12 = sub_F9A0(v34, v10);
  v13 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v33[3] = v10;
  v33[4] = &off_33CAE0;
  v33[0] = v17;
  v11[15] = v8;
  sub_EEAC(&v40, (v11 + 16));
  sub_EEAC(v36, (v11 + 31));
  sub_EEAC(v33, (v11 + 21));
  sub_EEAC(v35, (v11 + 26));
  sub_EEAC(&v37, v32);

  v18 = sub_2CB490();
  v30 = v7;
  v31 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v29 = v18;
  sub_306C(v35);
  sub_306C(v36);
  sub_306C(&v37);
  sub_306C(&v40);
  sub_306C(v33);
  v11[13] = 0xD000000000000011;
  v19 = v27;
  v11[14] = v26;
  v11[2] = v19;
  sub_F338(v32, (v11 + 3));
  sub_F338(&v29, (v11 + 8));
  sub_306C(v34);
  sub_EEAC(v43, &v40);
  v38 = v25;
  v39 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v37);
  sub_2CC2A0();
  v20 = type metadata accessor for SiriAudioOutputProvider();
  v21 = swift_allocObject();
  sub_F338(&v37, v21 + 16);
  v38 = v20;
  v39 = &off_337EB0;

  *&v37 = v21;
  sub_306C(v28);
  sub_306C(v43);
  v22 = qword_3566B0;
  v23 = sub_2CA360();
  (*(*(v23 - 8) + 56))(a4 + v22, 1, 1, v23);
  *(a4 + 16) = v11;
  sub_F338(&v40, a4 + 24);
  sub_F338(&v37, a4 + 64);
  return a4;
}

uint64_t sub_1EB740()
{
  v0 = sub_2CC650();
  v304 = *(v0 - 8);
  v305 = v0;
  v1 = *(v304 + 64);
  __chkstk_darwin(v0);
  v293 = v273 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v290 = (v273 - v5);
  v6 = sub_2CC360();
  v277 = *(v6 - 8);
  v7 = *(v277 + 64);
  __chkstk_darwin(v6);
  v289 = v273 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CC2B0();
  v295 = *(v9 - 8);
  v10 = *(v295 + 64);
  v11 = __chkstk_darwin(v9);
  v294 = v273 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v291 = v273 - v13;
  v14 = sub_20410(&qword_354B28, &unk_2D7050);
  v280 = *(v14 - 8);
  v15 = *(v280 + 64);
  v16 = __chkstk_darwin(v14);
  v279 = v273 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v273 - v18;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v278 = sub_334A0(0, &qword_354B30, INPlayMediaIntentResponse_ptr);
  sub_2C9780();
  v20 = sub_1EA600();
  sub_2C9A00();
  v21 = sub_2CB4A0();
  v22 = sub_2CB490();
  _s27NeedsDisambiguationStrategyCMa_0();
  v23 = swift_allocObject();
  v24 = sub_1EABC4(v20, &v369, v22, v23);

  *&v369 = v24;
  sub_1EE8EC(&qword_354B38, _s27NeedsDisambiguationStrategyCMa_0);
  sub_2C96A0();

  v306 = v19;
  v307 = v14;
  sub_2C9760();
  v303 = sub_EF10();
  v25 = sub_2CB490();
  v370 = v21;
  v371 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v369 = v25;
  sub_2C9A00();
  v311 = v9;
  v364 = v9;
  v365 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v363);
  sub_2CC2A0();
  v310 = v6;
  v361 = v6;
  v362 = &protocol witness table for StringsFileResolver;
  sub_F390(&v360);
  sub_2CC350();
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v26 = qword_35F900;
  v27 = type metadata accessor for DialogHistoryProvider();
  v359 = &off_33CAE0;
  v358 = v27;
  *&v357 = v26;
  v292 = _s18NeedsValueStrategyCMa_0();
  v287 = swift_allocObject();
  v28 = sub_F9A0(&v357, v27);
  v288 = v273;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v300 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = (v273 - v300);
  v32 = *(v29 + 16);
  v32(v273 - v300);
  v33 = *v31;
  v356 = &off_33CAE0;
  v355 = v27;
  *&v354 = v33;
  v297 = type metadata accessor for PlayMediaCatDialogService();
  v34 = swift_allocObject();
  v308 = 0x80000000002DA8D0;
  v34[2] = 0xD000000000000011;
  v34[3] = 0x80000000002DA8D0;
  v34[5] = 0x6964654D79616C50;
  v34[6] = 0xEF746E65746E4961;
  v35 = v303;
  v34[4] = v303;
  sub_EEAC(&v363, &v351);
  sub_EEAC(&v360, &v348);
  sub_EEAC(&v354, &v345);
  sub_FA14(_swiftEmptyArrayStorage);
  v302 = v26;

  v36 = sub_2CB490();
  v344 = &protocol witness table for SiriKitTaskLoggingProvider;
  v343 = v21;
  *&v342 = v36;
  sub_2CBC60();
  v37 = v346;
  v38 = sub_F9A0(&v345, v346);
  v286 = v273;
  v39 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v38);
  v309 = v21;
  v41 = (v273 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v338 = &off_33CAE0;
  p_Kind = v27;
  *&v336 = v43;
  v296 = type metadata accessor for PlayMediaDialogProvider();
  v44 = swift_allocObject();
  v45 = sub_F9A0(&v336, v27);
  v285 = v273;
  v299 = v30;
  __chkstk_darwin(v45);
  v46 = (v273 - v300);
  v47 = v273 - v300;
  v300 = v29 + 16;
  v298 = v32;
  v32(v47);
  v48 = *v46;
  v335 = &off_33CAE0;
  v301 = v27;
  v334 = v27;
  *&v333 = v48;
  v44[15] = v34;
  sub_EEAC(&v351, (v44 + 16));
  sub_EEAC(&v342, (v44 + 31));
  sub_EEAC(&v333, (v44 + 21));
  sub_EEAC(&v339, (v44 + 26));
  sub_EEAC(&v348, &v330);
  v49 = sub_2CB490();
  v329 = &protocol witness table for SiriKitTaskLoggingProvider;
  v328 = v309;
  *&v327 = v49;
  sub_306C(&v339);
  sub_306C(&v348);
  sub_306C(&v351);
  sub_306C(&v366);
  sub_306C(&v360);
  sub_306C(&v363);
  sub_306C(&v354);
  sub_306C(&v342);
  sub_306C(&v333);
  v44[13] = 0xD000000000000011;
  v44[14] = v308;
  v44[2] = v35;
  sub_F338(&v330, (v44 + 3));
  sub_F338(&v327, (v44 + 8));
  sub_306C(&v336);
  sub_306C(&v345);
  v50 = v287;
  v287[2] = v44;
  v51 = v309;
  sub_F338(&v369, (v50 + 3));
  sub_306C(&v357);
  *&v369 = v50;
  sub_1EE8EC(&qword_354B40, _s18NeedsValueStrategyCMa_0);
  sub_2C9630();

  sub_2C96F0();
  v52 = sub_1EA600();
  sub_2C9A00();
  _s25NeedsConfirmationStrategyCMa_0();
  swift_allocObject();
  v53 = sub_12CC28(v52, &v369);

  *&v369 = v53;
  sub_1EE8EC(&qword_354B48, _s25NeedsConfirmationStrategyCMa_0);
  sub_2C9690();

  sub_2C9750();
  v54 = sub_1EA600();
  sub_2C9A00();
  v55 = sub_2CB490();
  v56 = _s21ConfirmIntentStrategyCMa_0();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = sub_1EB324(v54, &v369, v55, v59);

  *&v369 = v60;
  sub_1EE8EC(&qword_354B50, _s21ConfirmIntentStrategyCMa_0);
  sub_2C96C0();

  sub_2C9720();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v61 = CATDefaultMode;
  v62 = sub_2CBC00();
  v63 = sub_2CBBF0();
  sub_2C9A00();
  v64 = v291;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v65 = swift_allocObject();
  v367 = &type metadata for StringsBackedAppNameResolver;
  v276 = sub_2869C();
  v368 = v276;
  *&v366 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v366 + 16);
  v364 = v62;
  v365 = &protocol witness table for MorphunProvider;
  *&v363 = v63;
  v66 = v311;
  v361 = v311;
  v362 = &protocol witness table for FeatureFlagProvider;
  v67 = sub_F390(&v360);
  v68 = v295;
  (*(v295 + 16))(v67, v64, v66);
  *(v65 + 296) = v61;
  sub_EEAC(&v360, v65 + 256);
  sub_EEAC(&v366, &v357);
  sub_EEAC(&v363, &v354);
  sub_EEAC(&v369, &v351);
  v350 = 0;
  v348 = 0u;
  v349 = 0u;
  v69 = sub_2CCA30();

  v70 = sub_2CCA20();
  v347 = &protocol witness table for MultiUserConnectionProvider;
  v346 = v69;
  *&v345 = v70;
  v303 = sub_2CB9E0();
  v343 = v303;
  v344 = &protocol witness table for DeviceProvider;
  sub_F390(&v342);
  sub_2CB9C0();
  sub_EEAC(&v357, v65 + 16);
  sub_EEAC(&v354, v65 + 216);
  sub_EEAC(&v351, v65 + 56);
  sub_EEAC(&v345, v65 + 96);
  v292 = v65;
  sub_EEAC(&v342, v65 + 176);
  sub_286F0(&v348, &v336);
  if (p_Kind)
  {

    sub_28760(&v348);
    sub_306C(&v351);
    sub_306C(&v354);
    sub_306C(&v357);
    (*(v68 + 8))(v64, v66);
    sub_306C(&v369);
    sub_306C(&v360);
    sub_306C(&v363);
    sub_306C(&v366);
    sub_306C(&v342);
    sub_306C(&v345);
    sub_F338(&v336, &v339);
  }

  else
  {
    sub_EEAC(&v351, &v339);
    v71 = sub_2C9E60();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = sub_2C9E50();
    v340 = v71;
    v341 = &protocol witness table for ContactsManager;

    *&v339 = v74;
    sub_28760(&v348);
    sub_306C(&v351);
    sub_306C(&v354);
    sub_306C(&v357);
    (*(v68 + 8))(v64, v66);
    sub_306C(&v369);
    sub_306C(&v360);
    sub_306C(&v363);
    sub_306C(&v366);
    sub_306C(&v342);
    sub_306C(&v345);
    if (p_Kind)
    {
      sub_28760(&v336);
    }
  }

  v75 = v292;
  sub_F338(&v339, v292 + 136);
  v76 = swift_allocObject();
  v76[6] = 0xEF746E65746E4961;
  v77 = v308;
  v76[2] = 0xD000000000000011;
  v76[3] = v77;
  v76[4] = v75;
  v76[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v367 = v66;
  v368 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v366);
  sub_2CC2A0();
  v364 = v310;
  v365 = &protocol witness table for StringsFileResolver;
  sub_F390(&v363);
  sub_2CC350();
  v78 = sub_2CB490();
  v79 = v51;
  v361 = v51;
  v362 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v360 = v78;
  sub_2CBC60();
  v356 = &off_33CAE0;
  v80 = v301;
  v355 = v301;
  *&v354 = v302;
  v81 = swift_allocObject();
  v82 = sub_F9A0(&v354, v80);
  v288 = v273;
  __chkstk_darwin(v82);
  v84 = (v273 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298(v84);
  v85 = *v84;
  v353 = &off_33CAE0;
  v352 = v80;
  *&v351 = v85;
  *(v81 + 15) = v76;
  sub_EEAC(&v366, (v81 + 128));
  sub_EEAC(&v360, (v81 + 248));
  sub_EEAC(&v351, (v81 + 168));
  sub_EEAC(&v357, (v81 + 208));
  sub_EEAC(&v363, &v348);

  v86 = sub_2CB490();
  v347 = &protocol witness table for SiriKitTaskLoggingProvider;
  v346 = v79;
  *&v345 = v86;
  sub_306C(&v357);
  sub_306C(&v369);
  sub_306C(&v360);
  sub_306C(&v363);
  sub_306C(&v366);
  sub_306C(&v351);
  *(v81 + 13) = 0xD000000000000011;
  *(v81 + 14) = v77;
  *(v81 + 2) = v75;
  sub_F338(&v348, (v81 + 24));
  sub_F338(&v345, (v81 + 64));
  sub_306C(&v354);

  sub_1EA9EC(&v369);
  v367 = v305;
  v368 = &protocol witness table for SubscriptionProvider;
  sub_F390(&v366);
  sub_2CC640();
  v364 = v310;
  v365 = &protocol witness table for StringsFileResolver;
  sub_F390(&v363);
  sub_2CC350();
  v361 = v311;
  v362 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v360);
  sub_2CC2A0();
  sub_BBDC8(&v357);
  v355 = sub_2CDDF0();
  v356 = &protocol witness table for EncryptionProvider;
  sub_F390(&v354);
  sub_2CDDE0();
  v87 = v370;
  v88 = sub_F9A0(&v369, v370);
  v286 = v273;
  v89 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v88);
  v91 = (v273 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91);
  v93 = v358;
  v94 = sub_F9A0(&v357, v358);
  v285 = v273;
  v95 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v94);
  v97 = (v273 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v98 + 16))(v97);
  v99 = *v91;
  v100 = *v97;
  v101 = type metadata accessor for PlayMediaAlternativeSnippetProvider();
  v353 = &off_3399E0;
  v352 = v101;
  *&v351 = v99;
  v102 = type metadata accessor for SiriAudioUIAssertionProvider();
  v350 = &off_339240;
  *(&v349 + 1) = v102;
  *&v348 = v100;
  v287 = type metadata accessor for PlayMediaIOSSnippetModelProvider();
  v103 = swift_allocObject();
  v104 = sub_F9A0(&v351, v101);
  v284 = v273;
  v105 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v104);
  v107 = (v273 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107);
  v109 = *(&v349 + 1);
  v110 = sub_F9A0(&v348, *(&v349 + 1));
  v111 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v110);
  v113 = (v273 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v114 + 16))(v113);
  v115 = *v107;
  v116 = *v113;
  v103[5] = v101;
  v103[6] = &off_3399E0;
  v103[2] = v115;
  v288 = v102;
  v103[26] = v102;
  v103[27] = &off_339240;
  v103[23] = v116;
  v291 = v81;
  v103[17] = v81;
  sub_F338(&v366, (v103 + 7));
  sub_F338(&v363, (v103 + 12));
  sub_F338(&v360, (v103 + 18));
  sub_F338(&v354, (v103 + 28));
  sub_306C(&v348);
  sub_306C(&v351);
  sub_306C(&v357);
  sub_306C(&v369);
  v117 = sub_1EA600();
  sub_2CC350();
  sub_2C9A00();
  v367 = v311;
  v368 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v366);
  sub_2CC2A0();
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v118 = sub_2CBF80();
    (*(*(v118 - 8) + 56))(v290, 1, 1, v118);
  }

  v119 = v309;
  v120 = sub_2CB490();
  v364 = v119;
  v365 = &protocol witness table for SiriKitTaskLoggingProvider;
  v121 = v119;
  *&v363 = v120;
  v122 = sub_2CA080();
  v123 = *(v122 + 48);
  v124 = *(v122 + 52);
  swift_allocObject();
  v125 = sub_2CA070();
  v361 = v122;
  v362 = &protocol witness table for ResponseFactory;
  *&v360 = v125;
  v358 = v303;
  v359 = &protocol witness table for DeviceProvider;
  sub_F390(&v357);
  sub_2CB9C0();
  v126 = sub_2CC7A0();
  v127 = sub_2CC790();
  v356 = &protocol witness table for MediaRemoteAPIProvider;
  v355 = v126;
  *&v354 = v127;
  sub_2CBC60();
  v128 = sub_2CDCA0();
  v129 = sub_2CDC90();
  v350 = &protocol witness table for PlaybackController;
  *(&v349 + 1) = v128;
  *&v348 = v129;
  sub_2CA430();
  v130 = sub_2CBC40();
  v131 = *(v130 + 48);
  v132 = *(v130 + 52);
  swift_allocObject();
  v133 = sub_2CBC30();
  v344 = &protocol witness table for AppIntentInvoker;
  v343 = v130;
  *&v342 = v133;
  v341 = &off_33E1F0;
  v340 = v287;
  *&v339 = v103;
  v274 = type metadata accessor for PlayMedia.HandleIntentStrategy();
  v134 = *(v274 + 48);
  v135 = *(v274 + 52);
  v136 = swift_allocObject();
  v137 = swift_allocObject();
  v137[6] = 0xEF746E65746E4961;
  v137[2] = 0xD000000000000011;
  v137[3] = v308;
  v137[4] = v117;
  v137[5] = 0x6964654D79616C50;
  *(v136 + 16) = v137;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  p_Kind = &v311->Kind;
  v338 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v336);
  sub_2CC2A0();
  v334 = v310;
  v335 = &protocol witness table for StringsFileResolver;
  sub_F390(&v333);
  sub_2CC350();
  v138 = sub_2CB490();
  v332 = &protocol witness table for SiriKitTaskLoggingProvider;
  v331 = v121;
  v139 = v121;
  *&v330 = v138;
  sub_2CBC60();
  v326 = &off_33CAE0;
  v140 = v301;
  v325 = v301;
  *&v324 = v302;
  v282 = v117;
  v141 = swift_allocObject();
  v142 = sub_F9A0(&v324, v140);
  v287 = v273;
  __chkstk_darwin(v142);
  v275 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = (v273 - v275);
  v298((v273 - v275));
  v145 = *v144;
  v323 = &off_33CAE0;
  v322 = v140;
  v321[0] = v145;
  v141[15] = v137;
  sub_EEAC(&v336, (v141 + 16));
  sub_EEAC(&v330, (v141 + 31));
  sub_EEAC(v321, (v141 + 21));
  sub_EEAC(&v327, (v141 + 26));
  sub_EEAC(&v333, &v318);

  v146 = sub_2CB490();
  v316 = v139;
  v317 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v315 = v146;
  sub_306C(&v327);
  sub_306C(&v330);
  sub_306C(&v333);
  sub_306C(&v336);
  sub_306C(v321);
  v141[13] = 0xD000000000000011;
  v141[14] = v308;
  v141[2] = v117;
  sub_F338(&v318, (v141 + 3));
  sub_F338(&v315, (v141 + 8));
  sub_306C(&v324);
  *(v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider) = v141;
  sub_EEAC(&v369, &v336);
  sub_EEAC(&v366, &v333);
  v331 = v303;
  v332 = &protocol witness table for DeviceProvider;
  sub_F390(&v330);

  sub_2CB9C0();
  v147 = v310;
  v328 = v310;
  v329 = &protocol witness table for StringsFileResolver;
  sub_F390(&v327);
  sub_2CC350();
  v148 = v293;
  sub_2CC640();
  sub_BBDC8(&v324);
  v149 = v325;
  v150 = sub_F9A0(&v324, v325);
  v273[1] = v273;
  v151 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v150);
  v153 = (v273 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v154 + 16))(v153);
  v155 = *v153;
  v323 = &off_339240;
  v156 = v288;
  v322 = v288;
  v321[0] = v155;
  v287 = type metadata accessor for PlayMediaViewProvider();
  v157 = swift_allocObject();
  v158 = sub_F9A0(v321, v156);
  v285 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v158);
  v286 = ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = (v273 - v286);
  v162 = *(v161 + 16);
  v283 = v161 + 16;
  v284 = v162;
  v162(v273 - v286);
  v163 = *v160;
  v319 = v156;
  v320 = &off_339240;
  *&v318 = v163;
  v157[28] = 0;
  sub_EEAC(&v330, (v157 + 8));
  sub_EEAC(&v336, (v157 + 13));
  sub_EEAC(&v327, &v315);
  v164 = type metadata accessor for PlayMediaAlternativesViewProvider();
  v281 = v164;
  v165 = swift_allocObject();
  sub_F338(&v315, v165 + 16);
  v157[21] = v164;
  v157[22] = &off_33DFA8;
  v157[18] = v165;

  v166 = *(v304 + 8);
  v304 += 8;
  v282 = v166;
  v166(v148, v305);
  sub_306C(&v336);
  sub_306C(&v345);
  sub_306C(&v369);
  (*(v277 + 8))(v289, v147);
  sub_306C(&v330);
  sub_F338(&v333, (v157 + 23));
  sub_F338(&v327, (v157 + 29));
  v157[2] = v141;
  sub_F338(&v318, (v157 + 3));
  sub_306C(v321);
  sub_306C(&v324);
  *(v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider) = v157;
  sub_F338(&v366, v136 + 24);
  sub_1EE87C(v290, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appSelectionReport);
  sub_F338(&v363, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider);
  sub_F338(&v360, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory);
  sub_F338(&v339, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider);
  sub_F338(&v357, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider);
  sub_F338(&v354, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_mediaRemoteAPIProvider);
  sub_F338(&v351, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider);
  sub_F338(&v348, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController);
  sub_F338(&v342, v136 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appIntentInvoker);
  *&v369 = v136;
  sub_1EE8EC(&qword_354B58, type metadata accessor for PlayMedia.HandleIntentStrategy);
  sub_2C9640();

  sub_2C9700();
  v167 = v291;
  swift_retain_n();
  sub_1EA600();
  v168 = v303;
  v370 = v303;
  v371 = &protocol witness table for DeviceProvider;
  sub_F390(&v369);
  sub_2CB9C0();
  sub_2C9A00();
  v364 = &v311->Kind;
  v365 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v363);
  sub_2CC2A0();
  v361 = v147;
  v362 = &protocol witness table for StringsFileResolver;
  sub_F390(&v360);
  sub_2CC350();
  v169 = v148;
  sub_2CC640();
  sub_BBDC8(&v357);
  v170 = v358;
  v171 = sub_F9A0(&v357, v358);
  v290 = v273;
  v172 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v171);
  v174 = (v273 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v175 + 16))(v174);
  v176 = *v174;
  v356 = &off_339240;
  v355 = v156;
  *&v354 = v176;
  v177 = swift_allocObject();
  v178 = sub_F9A0(&v354, v156);
  __chkstk_darwin(v178);
  v179 = (v273 - v286);
  v284(v273 - v286);
  v180 = *v179;
  v353 = &off_339240;
  v352 = v156;
  *&v351 = v180;
  v177[28] = 0;
  sub_EEAC(&v369, (v177 + 8));
  sub_EEAC(&v366, (v177 + 13));
  sub_EEAC(&v360, &v348);
  v181 = v281;
  v182 = swift_allocObject();
  sub_F338(&v348, v182 + 16);
  v177[21] = v181;
  v177[22] = &off_33DFA8;

  v177[18] = v182;
  v183 = v169;
  v184 = v305;
  v282(v183, v305);
  sub_306C(&v366);
  sub_306C(&v369);
  sub_F338(&v363, (v177 + 23));
  sub_F338(&v360, (v177 + 29));
  v177[2] = v167;
  v185 = v167;
  sub_F338(&v351, (v177 + 3));
  sub_306C(&v354);
  sub_306C(&v357);
  v186 = sub_2CC5C0();
  v187 = sub_2CC5B0();
  v353 = &protocol witness table for PlayMediaAppSelector;
  v352 = v186;
  *&v351 = v187;
  *(&v349 + 1) = &type metadata for StringsBackedAppNameResolver;
  v188 = v276;
  v350 = v276;
  *&v348 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v348 + 16);
  v346 = v168;
  v347 = &protocol witness table for DeviceProvider;
  sub_F390(&v345);
  sub_2CB9C0();
  v189 = v311;
  v343 = v311;
  v344 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v342);
  sub_2CC2A0();
  v340 = sub_2CC810();
  v341 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v339);
  sub_2CC800();
  p_Kind = &v184->Kind;
  v338 = &protocol witness table for SubscriptionProvider;
  sub_F390(&v336);
  sub_2CC640();
  v334 = sub_2CC590();
  v335 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v333);
  sub_2CC580();
  v190 = sub_2CBED0();
  v191 = sub_2CBEC0();
  v332 = &protocol witness table for MediaPlaybackLite;
  v331 = v190;
  *&v330 = v191;
  v192 = sub_2CB780();
  sub_2CBC60();
  v325 = sub_2CC040();
  v326 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v324);
  sub_2CC030();
  v322 = sub_2CB7A0();
  v323 = &protocol witness table for TCCProvider;
  sub_F390(v321);
  sub_2CB790();
  v193 = type metadata accessor for PlayMediaAppResolver();
  v194 = *(v193 + 48);
  v195 = *(v193 + 52);
  v196 = swift_allocObject();
  sub_EEAC(&v351, v196 + qword_350440);
  sub_EEAC(&v336, v196 + qword_350448);
  sub_EEAC(&v330, v196 + qword_350450);
  v197 = (v196 + qword_350470);
  *v197 = v192;
  v197[1] = &protocol witness table for SelfEmitter;
  sub_EEAC(&v327, v196 + qword_350458);
  sub_EEAC(&v324, v196 + qword_350460);
  sub_EEAC(v321, v196 + qword_350468);
  sub_EEAC(&v348, &v318);
  sub_EEAC(&v345, &v315);
  sub_EEAC(&v342, v314);
  sub_EEAC(&v339, v313);
  sub_EEAC(&v333, v312);
  v198 = class metadata base offset for CommonAppResolver;
  v199 = v196 + *(*v196 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v199, "resolutionType");
  v199[15] = -18;
  sub_EEAC(&v318, v196 + *(*v196 + v198 + 16));
  sub_EEAC(&v315, v196 + *(*v196 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(v314, v196 + *(*v196 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(v313, v196 + *(*v196 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(v312, v196 + *(*v196 + class metadata base offset for CommonAppResolver + 48));
  v200 = sub_2CCF50();
  sub_306C(v312);
  sub_306C(v313);
  sub_306C(v314);
  sub_306C(&v315);
  sub_306C(&v318);
  sub_306C(&v327);
  sub_306C(v321);
  sub_306C(&v324);
  sub_306C(&v330);
  sub_306C(&v333);
  sub_306C(&v336);
  sub_306C(&v339);
  sub_306C(&v342);
  sub_306C(&v345);
  sub_306C(&v348);
  sub_306C(&v351);
  sub_2C9A00();
  *(&v349 + 1) = &type metadata for StringsBackedAppNameResolver;
  v350 = v188;
  *&v348 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v348 + 16);
  v346 = v189;
  v347 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v345);
  sub_2CC2A0();
  v343 = v189;
  v344 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v342);
  sub_2CC2A0();
  v201 = type metadata accessor for SiriAudioOutputProvider();
  v202 = swift_allocObject();
  sub_F338(&v342, v202 + 16);
  v344 = &off_337EB0;
  v343 = v201;
  *&v342 = v202;
  swift_setDeallocating();

  sub_1204FC();
  sub_20410(&qword_354B60, &unk_2D7060);
  v203 = swift_allocObject();
  v203[26] = 0;
  v203[2] = v200;
  v203[3] = v185;
  v203[4] = sub_107D74;
  v203[5] = 0;
  sub_F338(&v351, (v203 + 6));
  sub_F338(&v348, (v203 + 11));
  sub_F338(&v345, (v203 + 16));
  sub_F338(&v342, (v203 + 21));
  *&v369 = v203;
  sub_72068(&qword_354B68, &qword_354B60, &unk_2D7060);
  sub_2C9660();

  sub_2C9710();
  *&v369 = sub_10D758(v185);
  sub_20410(&qword_3515C8, &unk_2D4570);
  sub_72068(&qword_354B70, &qword_3515C8, &unk_2D4570);
  sub_2C96B0();

  sub_2C9770();
  v290 = sub_1EA600();
  sub_2C9A00();
  v204 = sub_2CBB70();
  v205 = sub_2CBB60();
  v367 = v204;
  v368 = &protocol witness table for AccountProvider;
  *&v366 = v205;
  v206 = v309;
  v207 = sub_2CB490();
  v364 = v206;
  v365 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v363 = v207;
  v208 = v311;
  v361 = v311;
  v362 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v360);
  sub_2CC2A0();
  v209 = swift_allocObject();
  sub_F338(&v360, v209 + 16);
  sub_2CA430();
  sub_2CC2A0();
  v210 = v310;
  v358 = v310;
  v359 = &protocol witness table for StringsFileResolver;
  sub_F390(&v357);
  sub_2CC350();
  v211 = type metadata accessor for PlayMediaUnsupportedValueSnippetProvider();
  v212 = swift_allocObject();
  *(v212 + 56) = 0xD000000000000022;
  *(v212 + 64) = 0x80000000002DF170;
  sub_F338(&v357, v212 + 16);
  v359 = &off_337EB0;
  v358 = v201;
  *&v357 = v209;
  v356 = &off_334F38;
  v355 = v211;
  *&v354 = v212;
  v289 = type metadata accessor for PlayMedia.UnsupportedValueStrategy();
  v213 = *(v289 + 12);
  v214 = *(v289 + 26);
  v215 = swift_allocObject();
  v216 = sub_F9A0(&v357, v201);
  v278 = v273;
  v217 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v216);
  v219 = (v273 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = *(v220 + 16);
  v277 = v201;
  v221(v219);
  v222 = v355;
  v223 = sub_F9A0(&v354, v355);
  v276 = v273;
  v224 = *(*(v222 - 8) + 64);
  __chkstk_darwin(v223);
  v226 = (v273 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v227 + 16))(v226);
  v228 = *v219;
  v229 = *v226;
  v353 = &off_337EB0;
  v352 = v201;
  *&v351 = v228;
  v350 = &off_334F38;
  *(&v349 + 1) = v211;
  *&v348 = v229;
  v230 = swift_allocObject();
  v230[6] = 0xEF746E65746E4961;
  v231 = v308;
  v230[2] = 0xD000000000000011;
  v230[3] = v231;
  v230[4] = v290;
  v230[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v346 = v208;
  v347 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v345);
  sub_2CC2A0();
  v343 = v210;
  v344 = &protocol witness table for StringsFileResolver;
  sub_F390(&v342);
  sub_2CC350();
  v232 = v309;
  v233 = sub_2CB490();
  v341 = &protocol witness table for SiriKitTaskLoggingProvider;
  v340 = v232;
  *&v339 = v233;
  sub_2CBC60();
  v335 = &off_33CAE0;
  v234 = v301;
  v334 = v301;
  *&v333 = v302;
  v235 = swift_allocObject();
  v236 = sub_F9A0(&v333, v234);
  v297 = v273;
  __chkstk_darwin(v236);
  v237 = (v273 - v275);
  v298((v273 - v275));
  v238 = *v237;
  v332 = &off_33CAE0;
  v331 = v234;
  *&v330 = v238;
  v235[15] = v230;
  sub_EEAC(&v345, (v235 + 16));
  sub_EEAC(&v339, (v235 + 31));
  sub_EEAC(&v330, (v235 + 21));
  sub_EEAC(&v336, (v235 + 26));
  sub_EEAC(&v342, &v327);

  v239 = sub_2CB490();
  v326 = &protocol witness table for SiriKitTaskLoggingProvider;
  v325 = v232;
  *&v324 = v239;
  sub_306C(&v336);
  sub_306C(&v339);
  sub_306C(&v342);
  sub_306C(&v345);
  sub_306C(&v330);
  v235[13] = 0xD000000000000011;
  v235[14] = v231;
  v235[2] = v290;
  sub_F338(&v327, (v235 + 3));
  sub_F338(&v324, (v235 + 8));
  sub_306C(&v333);
  v215[2] = v235;
  sub_EEAC(&v369, &v345);
  v343 = v303;
  v344 = &protocol witness table for DeviceProvider;
  sub_F390(&v342);

  sub_2CB9C0();
  v340 = v311;
  v341 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v339);
  sub_2CC2A0();
  p_Kind = v310;
  v338 = &protocol witness table for StringsFileResolver;
  sub_F390(&v336);
  sub_2CC350();
  v240 = v293;
  sub_2CC640();
  sub_BBDC8(&v333);
  v241 = v334;
  v242 = sub_F9A0(&v333, v334);
  v310 = v273;
  v243 = *(*(v241 - 8) + 64);
  __chkstk_darwin(v242);
  v245 = (v273 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v246 + 16))(v245);
  v247 = *v245;
  v332 = &off_339240;
  v248 = v288;
  v331 = v288;
  *&v330 = v247;
  v249 = swift_allocObject();
  v250 = sub_F9A0(&v330, v248);
  __chkstk_darwin(v250);
  v251 = (v273 - v286);
  v284(v273 - v286);
  v252 = *v251;
  v329 = &off_339240;
  v328 = v248;
  *&v327 = v252;
  v249[28] = 0;
  sub_EEAC(&v342, (v249 + 8));
  sub_EEAC(&v345, (v249 + 13));
  sub_EEAC(&v336, &v324);
  v253 = v281;
  v254 = swift_allocObject();
  sub_F338(&v324, v254 + 16);
  v249[21] = v253;
  v249[22] = &off_33DFA8;
  v249[18] = v254;

  v282(v240, v305);
  sub_306C(&v345);
  sub_306C(&v342);
  sub_F338(&v339, (v249 + 23));
  sub_F338(&v336, (v249 + 29));
  v249[2] = v235;
  sub_F338(&v327, (v249 + 3));
  sub_306C(&v330);
  sub_306C(&v333);
  v215[3] = v249;
  sub_EEAC(&v369, (v215 + 4));
  sub_2CB5B0();
  v255 = sub_2C9C10();
  v256 = *(v255 + 48);
  v257 = *(v255 + 52);
  swift_allocObject();
  v258 = sub_2C9BF0();

  sub_306C(&v369);
  v215[9] = v258;
  sub_F338(&v366, (v215 + 10));
  sub_F338(&v363, (v215 + 15));
  sub_F338(&v351, (v215 + 20));
  sub_F338(&v360, (v215 + 25));
  v259 = v311;
  (*(v295 + 32))(v215 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_featureFlagProvider, v294, v311);
  sub_F338(&v348, v215 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia24UnsupportedValueStrategy_snippetProvider);
  sub_306C(&v354);
  sub_306C(&v357);
  *&v369 = v215;
  sub_1EE8EC(&qword_354B78, type metadata accessor for PlayMedia.UnsupportedValueStrategy);
  sub_2C96D0();

  v260 = v306;
  v261 = v307;
  sub_2C9740();
  v370 = v259;
  v371 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v369);
  sub_2CC2A0();
  v262 = v277;
  v263 = swift_allocObject();
  sub_F338(&v369, v263 + 16);
  v370 = v262;
  v371 = &off_337EB0;
  *&v369 = v263;
  sub_20410(&qword_354B80, &qword_2D7070);
  v264 = swift_allocObject();
  v264[8] = 0xD000000000000025;
  v264[9] = 0x80000000002DA520;
  v264[10] = 0x7461447475706E69;
  v264[11] = 0xE900000000000061;
  v264[2] = v291;
  sub_F338(&v369, (v264 + 3));
  *&v369 = v264;
  sub_72068(&qword_354B88, &qword_354B80, &qword_2D7070);
  sub_2C9680();

  v265 = v261;
  sub_2C9730();
  v266 = v280;
  v267 = v260;
  (*(v280 + 16))(v279, v260, v265);
  v268 = sub_20410(&qword_354B90, &qword_2D7078);
  v269 = *(v268 + 48);
  v270 = *(v268 + 52);
  swift_allocObject();
  v271 = sub_2C96E0();

  (*(v266 + 8))(v267, v265);
  return v271;
}

uint64_t sub_1EE87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1EE8EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1EE938(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v160 = &v141[-v4];
  v5 = sub_2CE000();
  v170 = *(v5 - 8);
  v171 = v5;
  v6 = *(v170 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v141[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v141[-v11];
  v13 = __chkstk_darwin(v10);
  v149 = &v141[-v14];
  __chkstk_darwin(v13);
  v159 = &v141[-v15];
  v16 = sub_2CD4C0();
  v167 = *(v16 - 8);
  v17 = *(v167 + 64);
  __chkstk_darwin(v16);
  v157 = &v141[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v168 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v19 = *(*(v168 - 8) + 64);
  v20 = __chkstk_darwin(v168);
  v151 = &v141[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v166 = &v141[-v23];
  v24 = __chkstk_darwin(v22);
  v164 = &v141[-v25];
  __chkstk_darwin(v24);
  v165 = &v141[-v26];
  v27 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v148 = &v141[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v29);
  v153 = &v141[-v32];
  v33 = __chkstk_darwin(v31);
  v154 = &v141[-v34];
  v35 = __chkstk_darwin(v33);
  v150 = &v141[-v36];
  v37 = __chkstk_darwin(v35);
  v158 = &v141[-v38];
  v39 = __chkstk_darwin(v37);
  v155 = &v141[-v40];
  v41 = __chkstk_darwin(v39);
  v152 = &v141[-v42];
  v43 = __chkstk_darwin(v41);
  v162 = &v141[-v44];
  v45 = __chkstk_darwin(v43);
  v163 = &v141[-v46];
  v47 = __chkstk_darwin(v45);
  v156 = &v141[-v48];
  v49 = __chkstk_darwin(v47);
  v51 = &v141[-v50];
  __chkstk_darwin(v49);
  v53 = &v141[-v52];
  v54 = sub_2CA870();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = __chkstk_darwin(v54);
  v59 = &v141[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v57);
  v61 = &v141[-v60];
  v169 = a1;
  sub_2CA790();
  v62 = (*(v55 + 88))(v61, v54);
  if (v62 != enum case for Parse.NLv3IntentOnly(_:) && v62 != enum case for Parse.uso(_:))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v63 = v171;
    v64 = sub_3ED0(v171, static Logger.default);
    swift_beginAccess();
    v65 = v170;
    (*(v170 + 16))(v9, v64, v63);
    v66 = sub_2CDFE0();
    v67 = sub_2CE680();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "AmbiguousDetermineFlow#on received non NLv3IntentOnly or Uso parse", v68, 2u);
    }

    (*(v65 + 8))(v9, v63);
    (*(v55 + 8))(v61, v54);
    return 0;
  }

  v69 = *(v55 + 8);
  v69(v61, v54);
  sub_2CA790();
  v70 = sub_D2F98(v59, &v172);
  (v69)(v59, v54, v70);
  if (!v173)
  {
    sub_30B8(&v172, &qword_34CF98, &unk_2D1A40);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v79 = v171;
    v80 = sub_3ED0(v171, static Logger.default);
    swift_beginAccess();
    v81 = v170;
    (*(v170 + 16))(v12, v80, v79);
    v82 = sub_2CDFE0();
    v83 = sub_2CE680();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_0, v82, v83, "AmbiguousDetermineFlow#on received unsupported NLv3IntentOnly, USO parse", v84, 2u);
    }

    (*(v81 + 8))(v12, v79);
    return 0;
  }

  sub_420A4(&v172, &v174);
  sub_35E0(&v174, v175);
  sub_2CD840();
  v71 = v167;
  v145 = *(v167 + 104);
  v143 = v167 + 104;
  v145(v51, enum case for CommonAudio.Verb.determine(_:), v16);
  v72 = *(v71 + 56);
  v146 = v71 + 56;
  v144 = v72;
  v72(v51, 0, 1, v16);
  v73 = *(v168 + 48);
  v74 = v165;
  sub_F3F4(v53, v165, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v51, &v74[v73], &qword_34D6B8, &qword_2D15B0);
  v75 = *(v71 + 48);
  v76 = v75(v74, 1, v16);
  v147 = v75;
  if (v76 != 1)
  {
    v86 = v156;
    sub_F3F4(v74, v156, &qword_34D6B8, &qword_2D15B0);
    if (v75(&v74[v73], 1, v16) != 1)
    {
      v100 = v167;
      v101 = v157;
      (*(v167 + 32))(v157, &v74[v73], v16);
      sub_1F6A64();
      v142 = sub_2CE250();
      v102 = v86;
      v103 = *(v100 + 8);
      v103(v101, v16);
      sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v53, &qword_34D6B8, &qword_2D15B0);
      v103(v102, v16);
      sub_30B8(v74, &qword_34D6B8, &qword_2D15B0);
      v78 = v170;
      v77 = v171;
      v87 = v166;
      if (v142)
      {
        goto LABEL_39;
      }

LABEL_21:
      sub_35E0(&v174, v175);
      v88 = v163;
      sub_2CD840();
      v89 = v162;
      v145(v162, enum case for CommonAudio.Verb.directedAcousticId(_:), v16);
      v144(v89, 0, 1, v16);
      v90 = *(v168 + 48);
      v91 = v164;
      sub_F3F4(v88, v164, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v89, &v91[v90], &qword_34D6B8, &qword_2D15B0);
      v92 = v147;
      if (v147(v91, 1, v16) == 1)
      {
        sub_30B8(v89, &qword_34D6B8, &qword_2D15B0);
        v91 = v164;
        sub_30B8(v88, &qword_34D6B8, &qword_2D15B0);
        v93 = v92(&v91[v90], 1, v16);
        v77 = v171;
        if (v93 == 1)
        {
          v74 = v91;
          goto LABEL_38;
        }
      }

      else
      {
        v94 = v152;
        sub_F3F4(v91, v152, &qword_34D6B8, &qword_2D15B0);
        if (v92(&v91[v90], 1, v16) != 1)
        {
          v119 = v91;
          v120 = v167;
          v121 = v119 + v90;
          v122 = v157;
          (*(v167 + 32))(v157, v121, v16);
          sub_1F6A64();
          LODWORD(v170) = sub_2CE250();
          v123 = *(v120 + 8);
          v123(v122, v16);
          sub_30B8(v162, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v163, &qword_34D6B8, &qword_2D15B0);
          v123(v94, v16);
          v95 = v155;
          v87 = v166;
          sub_30B8(v119, &qword_34D6B8, &qword_2D15B0);
          v77 = v171;
          if (v170)
          {
            goto LABEL_39;
          }

LABEL_27:
          sub_35E0(&v174, v175);
          sub_2CD840();
          v96 = v158;
          v145(v158, enum case for CommonAudio.Verb.summarise(_:), v16);
          v144(v96, 0, 1, v16);
          v97 = *(v168 + 48);
          sub_F3F4(v95, v87, &qword_34D6B8, &qword_2D15B0);
          sub_F3F4(v96, &v87[v97], &qword_34D6B8, &qword_2D15B0);
          v98 = v147;
          if (v147(v87, 1, v16) == 1)
          {
            sub_30B8(v96, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
            v99 = v98(&v87[v97], 1, v16);
            v77 = v171;
            if (v99 == 1)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v104 = v150;
            sub_F3F4(v87, v150, &qword_34D6B8, &qword_2D15B0);
            if (v98(&v87[v97], 1, v16) != 1)
            {
              v130 = v95;
              v131 = v167;
              v132 = &v87[v97];
              v133 = v157;
              (*(v167 + 32))(v157, v132, v16);
              sub_1F6A64();
              v134 = sub_2CE250();
              v135 = *(v131 + 8);
              v135(v133, v16);
              sub_30B8(v158, &qword_34D6B8, &qword_2D15B0);
              sub_30B8(v130, &qword_34D6B8, &qword_2D15B0);
              v135(v104, v16);
              sub_30B8(v166, &qword_34D6B8, &qword_2D15B0);
              v77 = v171;
              if (v134)
              {
                goto LABEL_39;
              }

LABEL_35:
              sub_35E0(&v174, v175);
              v105 = v154;
              sub_2CD840();
              v106 = v153;
              v145(v153, enum case for CommonAudio.Verb.request(_:), v16);
              v144(v106, 0, 1, v16);
              v107 = *(v168 + 48);
              v87 = v151;
              sub_F3F4(v105, v151, &qword_34D6B8, &qword_2D15B0);
              sub_F3F4(v106, &v87[v107], &qword_34D6B8, &qword_2D15B0);
              v108 = v147;
              if (v147(v87, 1, v16) == 1)
              {
                sub_30B8(v106, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v105, &qword_34D6B8, &qword_2D15B0);
                if (v108(&v87[v107], 1, v16) == 1)
                {
LABEL_37:
                  v74 = v87;
                  goto LABEL_38;
                }
              }

              else
              {
                v124 = v148;
                sub_F3F4(v87, v148, &qword_34D6B8, &qword_2D15B0);
                if (v108(&v87[v107], 1, v16) != 1)
                {
                  v136 = v167;
                  v137 = &v87[v107];
                  v138 = v157;
                  (*(v167 + 32))(v157, v137, v16);
                  sub_1F6A64();
                  v139 = sub_2CE250();
                  v140 = *(v136 + 8);
                  v140(v138, v16);
                  sub_30B8(v153, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v154, &qword_34D6B8, &qword_2D15B0);
                  v140(v124, v16);
                  sub_30B8(v87, &qword_34D6B8, &qword_2D15B0);
                  if (v139)
                  {
                    goto LABEL_39;
                  }

LABEL_49:
                  if (qword_34BF58 != -1)
                  {
                    swift_once();
                  }

                  v125 = sub_3ED0(v77, static Logger.default);
                  swift_beginAccess();
                  v126 = v149;
                  (*(v78 + 16))(v149, v125, v77);
                  v127 = sub_2CDFE0();
                  v128 = sub_2CE680();
                  if (os_log_type_enabled(v127, v128))
                  {
                    v129 = swift_slowAlloc();
                    *v129 = 0;
                    _os_log_impl(&dword_0, v127, v128, "AmbiguousDetermineFlow#on received non-determine verb", v129, 2u);
                  }

                  (*(v78 + 8))(v126, v77);
                  sub_306C(&v174);
                  return 0;
                }

                sub_30B8(v153, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v154, &qword_34D6B8, &qword_2D15B0);
                (*(v167 + 8))(v124, v16);
              }

              sub_30B8(v87, &qword_34D6B0, &unk_2D4FC0);
              goto LABEL_49;
            }

            sub_30B8(v158, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
            (*(v167 + 8))(v104, v16);
            v77 = v171;
          }

          sub_30B8(v87, &qword_34D6B0, &unk_2D4FC0);
          goto LABEL_35;
        }

        sub_30B8(v162, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v163, &qword_34D6B8, &qword_2D15B0);
        (*(v167 + 8))(v94, v16);
      }

      sub_30B8(v91, &qword_34D6B0, &unk_2D4FC0);
      v95 = v155;
      goto LABEL_27;
    }

    sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v53, &qword_34D6B8, &qword_2D15B0);
    (*(v167 + 8))(v86, v16);
LABEL_20:
    sub_30B8(v74, &qword_34D6B0, &unk_2D4FC0);
    v78 = v170;
    v87 = v166;
    goto LABEL_21;
  }

  sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v53, &qword_34D6B8, &qword_2D15B0);
  if (v75(&v74[v73], 1, v16) != 1)
  {
    goto LABEL_20;
  }

  v78 = v170;
  v77 = v171;
LABEL_38:
  sub_30B8(v74, &qword_34D6B8, &qword_2D15B0);
LABEL_39:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v109 = sub_3ED0(v77, static Logger.default);
  swift_beginAccess();
  v110 = v159;
  (*(v78 + 16))(v159, v109, v77);
  v111 = sub_2CDFE0();
  v112 = sub_2CE670();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_0, v111, v112, "AmbiguousDetermineFlow#on Handling input", v113, 2u);
  }

  (*(v78 + 8))(v110, v77);
  v114 = sub_2CA7B0();
  v115 = *(v114 - 8);
  v116 = v160;
  (*(v115 + 16))(v160, v169, v114);
  (*(v115 + 56))(v116, 0, 1, v114);
  v117 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  v118 = v161;
  swift_beginAccess();
  sub_A4888(v116, v118 + v117);
  swift_endAccess();
  sub_306C(&v174);
  return 1;
}

uint64_t sub_1EFFEC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v344 = a2;
  v343 = a1;
  v342 = sub_2C9EC0();
  v341 = *(v342 - 8);
  v4 = v341[8];
  __chkstk_darwin(v342);
  v340 = &v283 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v318 = &v283 - v8;
  v9 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v319 = &v283 - v11;
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v320 = &v283 - v14;
  v333 = sub_2CB970();
  v328 = *(v333 - 8);
  v15 = *(v328 + 64);
  __chkstk_darwin(v333);
  v327 = &v283 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = sub_2CCB20();
  v310 = *(v311 - 8);
  v17 = *(v310 + 64);
  __chkstk_darwin(v311);
  v309 = &v283 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_2CCB30();
  v325 = *(v326 - 8);
  v19 = *(v325 + 64);
  __chkstk_darwin(v326);
  v322 = &v283 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = sub_2CCAC0();
  v323 = *(v324 - 8);
  v21 = *(v323 + 64);
  __chkstk_darwin(v324);
  v317 = &v283 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_2CD500();
  v313 = *(v314 - 8);
  v23 = *(v313 + 64);
  __chkstk_darwin(v314);
  v312 = &v283 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_2CD4C0();
  v334 = *(v336 - 8);
  v25 = *(v334 + 64);
  __chkstk_darwin(v336);
  v303 = &v283 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v27 = *(*(v335 - 8) + 64);
  v28 = __chkstk_darwin(v335);
  v299 = &v283 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v306 = &v283 - v31;
  v32 = __chkstk_darwin(v30);
  v307 = &v283 - v33;
  __chkstk_darwin(v32);
  v321 = &v283 - v34;
  v296 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v35 = *(*(v296 - 8) + 64);
  v36 = __chkstk_darwin(v296);
  v295 = &v283 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v293 = &v283 - v39;
  v40 = __chkstk_darwin(v38);
  v301 = &v283 - v41;
  v42 = __chkstk_darwin(v40);
  v298 = &v283 - v43;
  v44 = __chkstk_darwin(v42);
  v297 = &v283 - v45;
  v46 = __chkstk_darwin(v44);
  v329 = &v283 - v47;
  v48 = __chkstk_darwin(v46);
  v304 = &v283 - v49;
  v50 = __chkstk_darwin(v48);
  v300 = &v283 - v51;
  v52 = __chkstk_darwin(v50);
  v315 = &v283 - v53;
  v54 = __chkstk_darwin(v52);
  v316 = &v283 - v55;
  v56 = __chkstk_darwin(v54);
  v302 = &v283 - v57;
  v58 = __chkstk_darwin(v56);
  v330 = &v283 - v59;
  __chkstk_darwin(v58);
  v331 = &v283 - v60;
  v345 = sub_2CE000();
  v346 = *(v345 - 8);
  v61 = *(v346 + 64);
  v62 = __chkstk_darwin(v345);
  v339 = (&v283 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = __chkstk_darwin(v62);
  v332 = &v283 - v65;
  v66 = __chkstk_darwin(v64);
  v305 = &v283 - v67;
  v68 = __chkstk_darwin(v66);
  v294 = &v283 - v69;
  v70 = __chkstk_darwin(v68);
  v292 = &v283 - v71;
  v72 = __chkstk_darwin(v70);
  v308 = &v283 - v73;
  __chkstk_darwin(v72);
  v337 = &v283 - v74;
  v75 = sub_2CA7B0();
  v76 = *(v75 - 8);
  v77 = *(v76 + 64);
  __chkstk_darwin(v75);
  v79 = &v283 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20410(&qword_34E480, &qword_2D2280);
  v81 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80 - 8);
  v83 = &v283 - v82;
  v84 = sub_2CA870();
  v338 = *(v84 - 8);
  v85 = *(v338 + 64);
  v86 = __chkstk_darwin(v84);
  v88 = &v283 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v86);
  v91 = &v283 - v90;
  __chkstk_darwin(v89);
  v93 = &v283 - v92;
  v94 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  swift_beginAccess();
  v95 = v3 + v94;
  v96 = v3;
  sub_F3F4(v95, v83, &qword_34E480, &qword_2D2280);
  if ((*(v76 + 48))(v83, 1, v75))
  {
    sub_30B8(v83, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v97 = v345;
    v98 = sub_3ED0(v345, static Logger.default);
    swift_beginAccess();
    v99 = v346;
    v100 = v339;
    (*(v346 + 16))(v339, v98, v97);
    v101 = sub_2CDFE0();
    v102 = sub_2CE680();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_0, v101, v102, "AmbiguousDetermineFlow#execute Parse is nil", v103, 2u);
    }

    (*(v99 + 8))(v100, v97);
    v104 = v340;
    sub_2C9EB0();
    v343(v104);
    return (v341[1])(v104, v342);
  }

  v106 = v337;
  v339 = v96;
  (*(v76 + 16))(v79, v83, v75);
  sub_30B8(v83, &qword_34E480, &qword_2D2280);
  sub_2CA790();
  (*(v76 + 8))(v79, v75);
  v107 = v338;
  (*(v338 + 32))(v93, v91, v84);
  (*(v107 + 16))(v88, v93, v84);
  v108 = (*(v107 + 88))(v88, v84);
  v109 = v84;
  v110 = v88;
  if (v108 != enum case for Parse.NLv3IntentOnly(_:) && v108 != enum case for Parse.uso(_:))
  {
    v111 = v345;
    v112 = v346;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v113 = sub_3ED0(v111, static Logger.default);
    swift_beginAccess();
    v114 = v332;
    (*(v112 + 16))(v332, v113, v111);
    v115 = sub_2CDFE0();
    v116 = sub_2CE680();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_0, v115, v116, "AmbiguousDetermineFlow#execute received non NLv3IntentOnly or Uso parse", v117, 2u);
    }

    (*(v112 + 8))(v114, v111);
    v118 = v340;
    sub_2C9EB0();
    v343(v118);
    (v341[1])(v118, v342);
    v119 = *(v107 + 8);
    v119(v93, v109);
    return (v119)(v110, v109);
  }

  v122 = *(v107 + 8);
  v120 = v107 + 8;
  v121 = v122;
  v122(v88, v84);
  sub_D2F98(v93, &v349);
  v123 = v345;
  v124 = v346;
  if (v350)
  {
    sub_420A4(&v349, &v351);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v125 = sub_3ED0(v123, static Logger.default);
    swift_beginAccess();
    v126 = *(v124 + 16);
    v286 = v125;
    v285 = v124 + 16;
    v284 = v126;
    v126(v106, v125, v123);
    sub_FE8E8(&v351, &v349);
    v127 = sub_2CDFE0();
    v128 = sub_2CE670();
    v129 = os_log_type_enabled(v127, v128);
    v290 = v109;
    v338 = v120;
    v289 = v93;
    v288 = v121;
    if (v129)
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v348 = v131;
      *v130 = 136315138;
      sub_FE8E8(&v349, v347);
      sub_20410(&qword_354CF0, qword_2D71A0);
      v132 = sub_2CE2A0();
      v134 = v133;
      sub_306C(&v349);
      v135 = sub_3F08(v132, v134, &v348);

      *(v130 + 4) = v135;
      _os_log_impl(&dword_0, v127, v128, "AmbiguousDetermineFlow#triggerDetermineStrategy audioIntent: %s", v130, 0xCu);
      sub_306C(v131);
    }

    else
    {

      sub_306C(&v349);
    }

    v287 = *(v346 + 8);
    v287(v106, v123);
    v142 = v334;
    v143 = v331;
    sub_35E0(&v351, v352);
    sub_2CD840();
    v144 = v142[13];
    v145 = v330;
    v146 = v336;
    v337 = (v142 + 13);
    v305 = v144;
    (v144)(v330, enum case for CommonAudio.Verb.determine(_:), v336);
    v147 = v142[7];
    v332 = (v142 + 7);
    v291 = v147;
    v147(v145, 0, 1, v146);
    v148 = *(v335 + 48);
    v149 = v321;
    sub_F3F4(v143, v321, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v145, v149 + v148, &qword_34D6B8, &qword_2D15B0);
    v150 = v142[6];
    if (v150(v149, 1, v146) == 1)
    {
      sub_30B8(v145, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v143, &qword_34D6B8, &qword_2D15B0);
      v151 = v150(v149 + v148, 1, v146);
      v152 = v329;
      if (v151 == 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v153 = v302;
      sub_F3F4(v149, v302, &qword_34D6B8, &qword_2D15B0);
      v154 = v150(v149 + v148, 1, v146);
      v152 = v329;
      if (v154 != 1)
      {
        v167 = v334;
        v168 = v149 + v148;
        v169 = v303;
        (*(v334 + 32))(v303, v168, v146);
        sub_1F6A64();
        v170 = v153;
        v171 = sub_2CE250();
        v172 = *(v167 + 8);
        v172(v169, v336);
        sub_30B8(v330, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v331, &qword_34D6B8, &qword_2D15B0);
        v172(v170, v336);
        v146 = v336;
        sub_30B8(v149, &qword_34D6B8, &qword_2D15B0);
        v155 = v307;
        if (v171)
        {
          goto LABEL_48;
        }

LABEL_31:
        sub_35E0(&v351, v352);
        v156 = v316;
        sub_2CD840();
        v157 = v315;
        (v305)(v315, enum case for CommonAudio.Verb.directedAcousticId(_:), v146);
        v291(v157, 0, 1, v146);
        v158 = *(v335 + 48);
        sub_F3F4(v156, v155, &qword_34D6B8, &qword_2D15B0);
        sub_F3F4(v157, v155 + v158, &qword_34D6B8, &qword_2D15B0);
        if (v150(v155, 1, v146) == 1)
        {
          sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v156, &qword_34D6B8, &qword_2D15B0);
          if (v150(v155 + v158, 1, v146) == 1)
          {
            v149 = v155;
LABEL_47:
            sub_30B8(v149, &qword_34D6B8, &qword_2D15B0);
LABEL_48:
            sub_35E0(&v351, v352);
            v178 = sub_2CD720();
            v179 = v313;
            v180 = *(v313 + 104);
            v181 = v312;
            v182 = v314;
            v180(v312, enum case for CommonAudio.Attribute.previous(_:), v314);
            v183 = sub_17F758(v181, v178);

            v184 = *(v179 + 8);
            v184(v181, v182);
            if (v183)
            {
              goto LABEL_52;
            }

            sub_35E0(&v351, v352);
            v185 = sub_2CD720();
            v180(v181, enum case for CommonAudio.Attribute.playLast(_:), v182);
            v186 = sub_17F758(v181, v185);

            v184(v181, v182);
            if (v186)
            {
              goto LABEL_52;
            }

            sub_35E0(&v351, v352);
            v187 = sub_2CD720();
            v180(v181, enum case for CommonAudio.Attribute.next(_:), v182);
            v188 = sub_17F758(v181, v187);

            v184(v181, v182);
            if (v188 & 1) != 0 || (sub_35E0(&v351, v352), v189 = sub_2CD720(), v180(v181, enum case for CommonAudio.Attribute.playNext(_:), v182), v190 = sub_17F758(v181, v189), , v184(v181, v182), (v190))
            {
LABEL_52:
              v191 = v308;
              v284(v308, v286, v345);
              v192 = sub_2CDFE0();
              v193 = sub_2CE670();
              v194 = os_log_type_enabled(v192, v193);
              v195 = v327;
              v196 = v326;
              v197 = v325;
              v198 = v324;
              v199 = v323;
              v200 = v322;
              if (v194)
              {
                v201 = swift_slowAlloc();
                *v201 = 0;
                _os_log_impl(&dword_0, v192, v193, "AmbiguousDetermineFlow#execute previous/next request so playback state of current item doesn't matter, triggering Determine strategy", v201, 2u);
              }

              v287(v191, v345);
              v202 = v317;
              (*(v199 + 104))(v317, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v198);
              (*(v197 + 104))(v200, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v196);
              v203 = v310;
              v204 = v309;
              v205 = v311;
              (*(v310 + 104))(v309, enum case for AdditionalMetricsDescription.StatusReason.hasPrevNext(_:), v311);
              v346 = sub_2CCAD0();
              v345 = v206;
              (*(v203 + 8))(v204, v205);
              (*(v197 + 8))(v200, v196);
              (*(v199 + 8))(v202, v198);
              v207 = v339[16];
              v342 = v339[17];
              v341 = sub_35E0(v339 + 13, v207);
              v208 = v328;
              (*(v328 + 104))(v195, enum case for TypeOfIntent.determine(_:), v333);
              v209 = enum case for ActivityType.start(_:);
              v210 = sub_2C9C20();
              v211 = *(v210 - 8);
              v212 = v195;
            }

            else
            {
              sub_35E0(&v351, v352);
              v264 = sub_2CDF10();
              v265 = v328;
              v266 = v327;
              v267 = v326;
              v268 = v325;
              v269 = v324;
              v270 = v323;
              v271 = v322;
              if ((v264 & 1) == 0)
              {
                v279 = v339;
                v280 = v339[11];
                sub_35E0(v339 + 7, v339[10]);
                v281 = swift_allocObject();
                v282 = v343;
                v281[2] = v279;
                v281[3] = v282;
                v281[4] = v344;

                sub_2CC330();

                goto LABEL_56;
              }

              v272 = v292;
              v284(v292, v286, v345);
              v273 = sub_2CDFE0();
              v274 = sub_2CE670();
              if (os_log_type_enabled(v273, v274))
              {
                v275 = swift_slowAlloc();
                *v275 = 0;
                _os_log_impl(&dword_0, v273, v274, "AmbiguousDetermineFlow#execute homeAutomation nodes present so playback state of current item doesn't matter, triggering Determine strategy", v275, 2u);
                v272 = v292;
              }

              v287(v272, v345);
              v276 = v317;
              (*(v270 + 104))(v317, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v269);
              (*(v268 + 104))(v271, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v267);
              v346 = sub_2CCAE0();
              v345 = v277;
              (*(v268 + 8))(v271, v267);
              (*(v270 + 8))(v276, v269);
              v278 = v339[16];
              v342 = v339[17];
              v341 = sub_35E0(v339 + 13, v278);
              (*(v265 + 104))(v266, enum case for TypeOfIntent.determine(_:), v333);
              v209 = enum case for ActivityType.start(_:);
              v210 = sub_2C9C20();
              v211 = *(v210 - 8);
              v212 = v266;
              v208 = v265;
            }

            v213 = v211;
            v214 = v320;
            (*(v211 + 104))(v320, v209, v210);
            (*(v213 + 56))(v214, 0, 1, v210);
            v215 = sub_2CA130();
            v216 = v319;
            (*(*(v215 - 8) + 56))(v319, 1, 1, v215);
            v217 = enum case for SiriKitReliabilityCodes.inProgress(_:);
            v218 = sub_2C98F0();
            v219 = *(v218 - 8);
            v220 = v318;
            (*(v219 + 104))(v318, v217, v218);
            (*(v219 + 56))(v220, 0, 1, v218);
            sub_2CB4C0();

            sub_30B8(v220, &qword_34CB78, &unk_2D0D80);
            sub_30B8(v216, &qword_34CB80, &unk_2D0B30);
            sub_30B8(v214, &qword_34CB88, &unk_2D0D90);
            (*(v208 + 8))(v212, v333);
            sub_1F2D60(v343, v344);
LABEL_56:
            v288(v289, v290);
            return sub_306C(&v351);
          }
        }

        else
        {
          v159 = v300;
          sub_F3F4(v155, v300, &qword_34D6B8, &qword_2D15B0);
          if (v150(v155 + v158, 1, v146) != 1)
          {
            v221 = v155;
            v222 = v334;
            v223 = v221 + v158;
            v224 = v303;
            (*(v334 + 32))(v303, v223, v146);
            sub_1F6A64();
            v225 = sub_2CE250();
            v226 = *(v222 + 8);
            v226(v224, v336);
            sub_30B8(v315, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v316, &qword_34D6B8, &qword_2D15B0);
            v226(v159, v336);
            v146 = v336;
            sub_30B8(v221, &qword_34D6B8, &qword_2D15B0);
            if (v225)
            {
              goto LABEL_48;
            }

LABEL_37:
            sub_35E0(&v351, v352);
            v160 = v304;
            sub_2CD840();
            (v305)(v152, enum case for CommonAudio.Verb.summarise(_:), v146);
            v291(v152, 0, 1, v146);
            v161 = *(v335 + 48);
            v162 = v160;
            v163 = v152;
            v164 = v160;
            v165 = v306;
            sub_F3F4(v162, v306, &qword_34D6B8, &qword_2D15B0);
            v166 = v165;
            sub_F3F4(v163, v165 + v161, &qword_34D6B8, &qword_2D15B0);
            if (v150(v165, 1, v146) == 1)
            {
              sub_30B8(v163, &qword_34D6B8, &qword_2D15B0);
              v149 = v306;
              sub_30B8(v164, &qword_34D6B8, &qword_2D15B0);
              if (v150(v149 + v161, 1, v146) == 1)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v173 = v297;
              sub_F3F4(v165, v297, &qword_34D6B8, &qword_2D15B0);
              if (v150(v165 + v161, 1, v146) != 1)
              {
                v254 = v334;
                v255 = v166 + v161;
                v256 = v303;
                (*(v334 + 32))(v303, v255, v146);
                sub_1F6A64();
                v257 = sub_2CE250();
                v258 = *(v254 + 8);
                v258(v256, v336);
                sub_30B8(v329, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v304, &qword_34D6B8, &qword_2D15B0);
                v258(v173, v336);
                v146 = v336;
                sub_30B8(v166, &qword_34D6B8, &qword_2D15B0);
                if (v257)
                {
                  goto LABEL_48;
                }

LABEL_45:
                sub_35E0(&v351, v352);
                v174 = v298;
                sub_2CD840();
                v175 = v301;
                (v305)(v301, enum case for CommonAudio.Verb.request(_:), v146);
                v176 = v150;
                v291(v175, 0, 1, v146);
                v177 = *(v335 + 48);
                v149 = v299;
                sub_F3F4(v174, v299, &qword_34D6B8, &qword_2D15B0);
                sub_F3F4(v175, v149 + v177, &qword_34D6B8, &qword_2D15B0);
                if (v150(v149, 1, v146) == 1)
                {
                  sub_30B8(v175, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v174, &qword_34D6B8, &qword_2D15B0);
                  if (v150(v149 + v177, 1, v146) == 1)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  v227 = v293;
                  sub_F3F4(v149, v293, &qword_34D6B8, &qword_2D15B0);
                  if (v176(v149 + v177, 1, v146) != 1)
                  {
                    v259 = v334;
                    v260 = v149 + v177;
                    v261 = v303;
                    (*(v334 + 32))(v303, v260, v146);
                    sub_1F6A64();
                    v262 = sub_2CE250();
                    v263 = *(v259 + 8);
                    v263(v261, v146);
                    sub_30B8(v301, &qword_34D6B8, &qword_2D15B0);
                    sub_30B8(v174, &qword_34D6B8, &qword_2D15B0);
                    v263(v227, v146);
                    sub_30B8(v149, &qword_34D6B8, &qword_2D15B0);
                    if (v262)
                    {
                      goto LABEL_48;
                    }

LABEL_62:
                    v228 = v294;
                    v229 = v345;
                    v284(v294, v286, v345);
                    v230 = sub_2CDFE0();
                    v231 = sub_2CE680();
                    if (os_log_type_enabled(v230, v231))
                    {
                      v232 = swift_slowAlloc();
                      *v232 = 0;
                      _os_log_impl(&dword_0, v230, v231, "AmbiguousDetermineFlow#execute received non-determine verb", v232, 2u);
                    }

                    v287(v228, v229);
                    v233 = v323;
                    v234 = v317;
                    v235 = v324;
                    (*(v323 + 104))(v317, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v324);
                    v236 = v325;
                    v237 = v322;
                    v238 = v326;
                    (*(v325 + 104))(v322, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v326);
                    sub_35E0(&v351, v352);
                    sub_2CD840();
                    sub_2CE2A0();
                    v346 = sub_2CCAE0();
                    v345 = v239;

                    (*(v236 + 8))(v237, v238);
                    (*(v233 + 8))(v234, v235);
                    v240 = v339[16];
                    v337 = v339[17];
                    sub_35E0(v339 + 13, v240);
                    v241 = v328;
                    v242 = v327;
                    (*(v328 + 104))(v327, enum case for TypeOfIntent.determine(_:), v333);
                    v243 = enum case for ActivityType.failed(_:);
                    v244 = sub_2C9C20();
                    v245 = *(v244 - 8);
                    v246 = v320;
                    (*(v245 + 104))(v320, v243, v244);
                    (*(v245 + 56))(v246, 0, 1, v244);
                    v247 = sub_2CA130();
                    v248 = v319;
                    (*(*(v247 - 8) + 56))(v319, 1, 1, v247);
                    v249 = enum case for SiriKitReliabilityCodes.genericError(_:);
                    v250 = sub_2C98F0();
                    v251 = *(v250 - 8);
                    v252 = v318;
                    (*(v251 + 104))(v318, v249, v250);
                    (*(v251 + 56))(v252, 0, 1, v250);
                    sub_2CB4C0();

                    sub_30B8(v252, &qword_34CB78, &unk_2D0D80);
                    sub_30B8(v248, &qword_34CB80, &unk_2D0B30);
                    sub_30B8(v246, &qword_34CB88, &unk_2D0D90);
                    (*(v241 + 8))(v242, v333);
                    v253 = v340;
                    sub_2C9EB0();
                    v343(v253);
                    (v341[1])(v253, v342);
                    goto LABEL_56;
                  }

                  sub_30B8(v301, &qword_34D6B8, &qword_2D15B0);
                  sub_30B8(v174, &qword_34D6B8, &qword_2D15B0);
                  (*(v334 + 8))(v227, v146);
                }

                sub_30B8(v149, &qword_34D6B0, &unk_2D4FC0);
                goto LABEL_62;
              }

              sub_30B8(v329, &qword_34D6B8, &qword_2D15B0);
              v149 = v306;
              sub_30B8(v304, &qword_34D6B8, &qword_2D15B0);
              (*(v334 + 8))(v173, v146);
            }

            sub_30B8(v149, &qword_34D6B0, &unk_2D4FC0);
            goto LABEL_45;
          }

          sub_30B8(v315, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v316, &qword_34D6B8, &qword_2D15B0);
          (*(v334 + 8))(v159, v146);
        }

        sub_30B8(v155, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_37;
      }

      sub_30B8(v330, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v331, &qword_34D6B8, &qword_2D15B0);
      (*(v334 + 8))(v153, v146);
    }

    sub_30B8(v149, &qword_34D6B0, &unk_2D4FC0);
    v155 = v307;
    goto LABEL_31;
  }

  sub_30B8(&v349, &qword_34CF98, &unk_2D1A40);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v136 = sub_3ED0(v123, static Logger.default);
  swift_beginAccess();
  v137 = v305;
  (*(v124 + 16))(v305, v136, v123);
  v138 = sub_2CDFE0();
  v139 = sub_2CE680();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&dword_0, v138, v139, "AmbiguousDetermineFlow#execute received unsupported NLv3IntentOnly, USO parse", v140, 2u);
  }

  (*(v124 + 8))(v137, v123);
  v141 = v340;
  sub_2C9EB0();
  v343(v141);
  (v341[1])(v141, v342);
  return (v121)(v93, v109);
}

uint64_t sub_1F2D60(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  v4 = sub_2C9EC0();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2CE000();
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v44);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CA870();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34E480, &qword_2D2280);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v40 - v14;
  v16 = sub_2CA7B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v40 - v21;
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  swift_beginAccess();
  v24 = v3;
  sub_F3F4(v3 + v23, v15, &qword_34E480, &qword_2D2280);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_30B8(v15, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = v44;
    v26 = sub_3ED0(v44, static Logger.default);
    swift_beginAccess();
    v27 = v45;
    v28 = v46;
    (*(v46 + 16))(v45, v26, v25);
    v29 = sub_2CDFE0();
    v30 = sub_2CE680();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "AmbiguousDetermineFlow#triggerDetermineStrategy nil input issue", v31, 2u);
    }

    (*(v28 + 8))(v27, v25);
    v32 = v47;
    sub_2C9EB0();
    v50(v32);
    return (*(v48 + 8))(v32, v49);
  }

  else
  {
    v34 = v51;
    v48 = *(v17 + 32);
    (v48)(v22, v15, v16);
    v35 = v24;
    v49 = *(v24 + 96);
    v36 = v41;
    sub_2CA790();
    (*(v17 + 16))(v20, v22, v16);
    v37 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v38 = swift_allocObject();
    v39 = v50;
    v38[2] = v35;
    v38[3] = v39;
    v38[4] = v34;
    (v48)(v38 + v37, v20, v16);

    DetermineFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(v36, 0, sub_1F69D0, v38);

    (*(v42 + 8))(v36, v43);
    return (*(v17 + 8))(v22, v16);
  }
}

uint64_t sub_1F32D0(void *a1, char a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v94 = a6;
  v110 = a5;
  v111 = a4;
  v101 = a3;
  v8 = sub_2C9EC0();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = *(v108 + 64);
  __chkstk_darwin(v8);
  v107 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v106 = v93 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v105 = v93 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v103 = v93 - v19;
  v112 = sub_2CB970();
  v104 = *(v112 - 8);
  v20 = *(v104 + 64);
  __chkstk_darwin(v112);
  v102 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCB20();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2CCB30();
  v99 = *(v100 - 8);
  v27 = *(v99 + 64);
  __chkstk_darwin(v100);
  v96 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2CCAC0();
  v97 = *(v98 - 8);
  v29 = *(v97 + 64);
  __chkstk_darwin(v98);
  v31 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v37 = v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = v93 - v38;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v40 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    (*(v33 + 16))(v37, v40, v32);
    swift_errorRetain();
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();
    sub_A41AC(a1, 1);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v95 = a1;
      v45 = v44;
      v113 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v46 = sub_2CEEF0();
      v48 = sub_3F08(v46, v47, &v113);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_0, v41, v42, "AmbiguousDetermineFlow#triggerDetermineStrategy failed intent issue with error: %s", v43, 0xCu);
      sub_306C(v45);
    }

    (*(v33 + 8))(v37, v32);
    v49 = v97;
    v50 = v98;
    (*(v97 + 104))(v31, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v98);
    v51 = v99;
    v52 = v96;
    v53 = v100;
    (*(v99 + 104))(v96, enum case for AdditionalMetricsDescription.SourceFunction.trigDetStrat(_:), v100);
    swift_getErrorValue();
    sub_2CEEF0();
    v95 = sub_2CCAE0();
    v94 = v54;

    (*(v51 + 8))(v52, v53);
    (*(v49 + 8))(v31, v50);
    v55 = v101[16];
    v100 = v101[17];
    sub_35E0(v101 + 13, v55);
    v56 = v104;
    v57 = v102;
    (*(v104 + 104))(v102, enum case for TypeOfIntent.determine(_:), v112);
    v58 = enum case for ActivityType.failed(_:);
    v59 = sub_2C9C20();
    v60 = *(v59 - 8);
    v61 = v103;
    (*(v60 + 104))(v103, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = sub_2CA130();
    v63 = v105;
    (*(*(v62 - 8) + 56))(v105, 1, 1, v62);
    v64 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v65 = sub_2C98F0();
    v66 = *(v65 - 8);
    v67 = v106;
    (*(v66 + 104))(v106, v64, v65);
    (*(v66 + 56))(v67, 0, 1, v65);
    sub_2CB4C0();

    sub_30B8(v67, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v63, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v61, &qword_34CB88, &unk_2D0D90);
    (*(v56 + 8))(v57, v112);
    v68 = v107;
    sub_2C9EB0();
  }

  else
  {
    v95 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v69 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    (*(v33 + 16))(v39, v69, v32);
    v70 = sub_2CDFE0();
    v71 = sub_2CE670();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "AmbiguousDetermineFlow#triggerDetermineStrategy successfully triggering with amended DetermineIntent", v72, 2u);
    }

    (*(v33 + 8))(v39, v32);
    v73 = v97;
    v74 = v98;
    (*(v97 + 104))(v31, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v98);
    v75 = v99;
    v76 = v96;
    v77 = v100;
    (*(v99 + 104))(v96, enum case for AdditionalMetricsDescription.SourceFunction.trigDetStrat(_:), v100);
    (*(v23 + 104))(v26, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v22);
    v93[1] = sub_2CCAD0();
    v93[0] = v78;
    (*(v23 + 8))(v26, v22);
    (*(v75 + 8))(v76, v77);
    (*(v73 + 8))(v31, v74);
    v79 = v101[16];
    v100 = v101[17];
    sub_35E0(v101 + 13, v79);
    v80 = v104;
    v81 = v102;
    (*(v104 + 104))(v102, enum case for TypeOfIntent.acousticID(_:), v112);
    v82 = enum case for ActivityType.start(_:);
    v83 = sub_2C9C20();
    v84 = *(v83 - 8);
    v85 = v103;
    (*(v84 + 104))(v103, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    v86 = sub_2CA130();
    v87 = v105;
    (*(*(v86 - 8) + 56))(v105, 1, 1, v86);
    v88 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v89 = sub_2C98F0();
    v90 = *(v89 - 8);
    v91 = v106;
    (*(v90 + 104))(v106, v88, v89);
    (*(v90 + 56))(v91, 0, 1, v89);
    sub_2CB4C0();

    sub_30B8(v91, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v87, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v85, &qword_34CB88, &unk_2D0D90);
    (*(v80 + 8))(v81, v112);
    sub_136E6C(v95, v94);
    v68 = v107;
    sub_2C9EA0();
  }

  v111(v68);
  return (*(v108 + 8))(v68, v109);
}

uint64_t sub_1F40B8(unsigned int a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v152 = a3;
  v153 = a4;
  v151 = a2;
  v5 = sub_20410(&qword_34E480, &qword_2D2280);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v135 = &v130 - v7;
  v137 = sub_2C9EC0();
  v136 = *(v137 - 8);
  v8 = *(v136 + 64);
  __chkstk_darwin(v137);
  v134 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CCB20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v133 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v146 = &v130 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v147 = &v130 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v149 = &v130 - v22;
  v154 = sub_2CB970();
  v150 = *(v154 - 8);
  v23 = *(v150 + 64);
  __chkstk_darwin(v154);
  v148 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CCB30();
  v144 = *(v25 - 8);
  v145 = v25;
  v26 = *(v144 + 64);
  __chkstk_darwin(v25);
  v141 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v142 = *(v28 - 8);
  v143 = v28;
  v29 = *(v142 + 64);
  __chkstk_darwin(v28);
  v140 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CE000();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = __chkstk_darwin(v31);
  v138 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v132 = &v130 - v37;
  v38 = __chkstk_darwin(v36);
  v131 = &v130 - v39;
  __chkstk_darwin(v38);
  v41 = &v130 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v42 = sub_3ED0(v31, static Logger.default);
  swift_beginAccess();
  v139 = v32[2];
  v139(v41, v42, v31);
  v43 = sub_2CDFE0();
  v44 = sub_2CE670();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v130 = v32;
    *v45 = 67240192;
    *(v45 + 4) = a1;
    _os_log_impl(&dword_0, v43, v44, "AmbiguousDetermineFlow#executeBasedOnPlaybackState playback state: %{public}u", v45, 8u);
    v32 = v130;
  }

  v46 = v32[1];
  v46(v41, v31);
  if (a1 > 3 || a1 == 1)
  {
    v106 = v131;
    v139(v131, v42, v31);
    v107 = sub_2CDFE0();
    v108 = sub_2CE670();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_0, v107, v108, "AmbiguousDetermineFlow#executeBasedOnPlaybackState playback state is playing, triggering Determine strategy", v109, 2u);
    }

    v46(v106, v31);
    v111 = v142;
    v110 = v143;
    v112 = v140;
    (*(v142 + 104))(v140, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v143);
    v114 = v144;
    v113 = v145;
    v115 = v141;
    (*(v144 + 104))(v141, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v145);
    v155 = a1;
    type metadata accessor for MRPlaybackState(0);
    sub_2CE2A0();
    v139 = sub_2CCAE0();
    v138 = v116;

    (*(v114 + 8))(v115, v113);
    (*(v111 + 8))(v112, v110);
    v117 = v151[17];
    v144 = v151[16];
    v145 = v117;
    sub_35E0(v151 + 13, v144);
    v118 = v150;
    v119 = v148;
    (*(v150 + 104))(v148, enum case for TypeOfIntent.determine(_:), v154);
    v120 = enum case for ActivityType.start(_:);
    v121 = sub_2C9C20();
    v122 = *(v121 - 8);
    v123 = v149;
    (*(v122 + 104))(v149, v120, v121);
    (*(v122 + 56))(v123, 0, 1, v121);
    v124 = sub_2CA130();
    v125 = v147;
    (*(*(v124 - 8) + 56))(v147, 1, 1, v124);
    v126 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v127 = sub_2C98F0();
    v128 = *(v127 - 8);
    v129 = v146;
    (*(v128 + 104))(v146, v126, v127);
    (*(v128 + 56))(v129, 0, 1, v127);
    sub_2CB4C0();

    sub_30B8(v129, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v125, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v123, &qword_34CB88, &unk_2D0D90);
    (*(v118 + 8))(v119, v154);
    return sub_1F2D60(v152, v153);
  }

  else if (sub_2CB650())
  {
    v47 = v132;
    v139(v132, v42, v31);
    v48 = sub_2CDFE0();
    v49 = sub_2CE670();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "AmbiguousDetermineFlow#executeBasedOnPlaybackState got back non playing state, and device doesn't have Shazam UI, responding with nothing playing dialog", v50, 2u);
    }

    v46(v47, v31);
    v52 = v142;
    v51 = v143;
    v53 = v140;
    (*(v142 + 104))(v140, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v143);
    v55 = v144;
    v54 = v145;
    v56 = v141;
    (*(v144 + 104))(v141, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v145);
    v139 = sub_2CCAE0();
    v138 = v57;
    (*(v55 + 8))(v56, v54);
    (*(v52 + 8))(v53, v51);
    v58 = v151;
    v59 = v151[17];
    v144 = v151[16];
    v145 = v59;
    sub_35E0(v151 + 13, v144);
    v60 = v150;
    v61 = v148;
    (*(v150 + 104))(v148, enum case for TypeOfIntent.determine(_:), v154);
    v62 = enum case for ActivityType.start(_:);
    v63 = sub_2C9C20();
    v64 = *(v63 - 8);
    v65 = v149;
    (*(v64 + 104))(v149, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    v66 = sub_2CA130();
    v67 = v147;
    (*(*(v66 - 8) + 56))(v147, 1, 1, v66);
    v68 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v69 = sub_2C98F0();
    v70 = *(v69 - 8);
    v71 = v146;
    (*(v70 + 104))(v146, v68, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    sub_2CB4C0();

    sub_30B8(v71, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v67, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v65, &qword_34CB88, &unk_2D0D90);
    (*(v60 + 8))(v61, v154);
    v72 = v58[18];
    v73 = swift_allocObject();
    swift_weakInit();
    v74 = swift_allocObject();
    v75 = v152;
    v76 = v153;
    v74[2] = v73;
    v74[3] = v75;
    v74[4] = v76;

    sub_985E0(sub_1F6ABC, v74);
  }

  else
  {
    v139(v138, v42, v31);
    v78 = sub_2CDFE0();
    v79 = sub_2CE670();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "AmbiguousDetermineFlow#executeBasedOnPlaybackState got back non playing state for Shazam UI device, triggering Acoustic ID Flow", v80, 2u);
    }

    v46(v138, v31);
    v82 = v142;
    v81 = v143;
    v83 = v140;
    (*(v142 + 104))(v140, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v143);
    v85 = v144;
    v84 = v145;
    v86 = v141;
    (*(v144 + 104))(v141, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v145);
    v87 = v133;
    (*(v11 + 104))(v133, enum case for AdditionalMetricsDescription.StatusReason.acstc(_:), v10);
    v139 = sub_2CCAD0();
    v138 = v88;
    (*(v11 + 8))(v87, v10);
    (*(v85 + 8))(v86, v84);
    (*(v82 + 8))(v83, v81);
    v89 = v151;
    v90 = v151[17];
    v144 = v151[16];
    v145 = v90;
    sub_35E0(v151 + 13, v144);
    v91 = v150;
    v92 = v148;
    (*(v150 + 104))(v148, enum case for TypeOfIntent.acousticID(_:), v154);
    v93 = enum case for ActivityType.start(_:);
    v94 = sub_2C9C20();
    v95 = *(v94 - 8);
    v96 = v149;
    (*(v95 + 104))(v149, v93, v94);
    (*(v95 + 56))(v96, 0, 1, v94);
    v97 = sub_2CA130();
    v98 = v147;
    (*(*(v97 - 8) + 56))(v147, 1, 1, v97);
    v99 = enum case for SiriKitReliabilityCodes.inProgress(_:);
    v100 = sub_2C98F0();
    v101 = *(v100 - 8);
    v102 = v146;
    (*(v101 + 104))(v146, v99, v100);
    (*(v101 + 56))(v102, 0, 1, v100);
    sub_2CB4C0();

    sub_30B8(v102, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v98, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v96, &qword_34CB88, &unk_2D0D90);
    (*(v91 + 8))(v92, v154);
    v103 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
    swift_beginAccess();
    v104 = v135;
    sub_F3F4(v89 + v103, v135, &qword_34E480, &qword_2D2280);
    sub_1371BC(v104);
    sub_30B8(v104, &qword_34E480, &qword_2D2280);
    v105 = v134;
    sub_2C9EA0();

    v152(v105);
    return (*(v136 + 8))(v105, v137);
  }
}

uint64_t sub_1F5384(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v24[-v13];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v15 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v12, v15, v7);
    v16 = sub_2CDFE0();
    v17 = sub_2CE690();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "AmbiguousDetermineFlow#nothingPlayingDialog", v18, 2u);
    }

    (*(v8 + 8))(v12, v7);
    sub_1F56A0(a1, a3, a4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v14, v20, v7);
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "AmbiguousDetermineFlow#nothingPlayingDialog self deallocated prematurely", v23, 2u);
    }

    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_1F56A0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v136 = a3;
  v137 = a2;
  v6 = sub_2C9EC0();
  v138 = *(v6 - 8);
  v139 = v6;
  v7 = *(v138 + 64);
  __chkstk_darwin(v6);
  v135 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v134 = &v114 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v132 = &v114 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v131 = &v114 - v17;
  v140 = sub_2CB970();
  v133 = *(v140 - 8);
  v18 = *(v133 + 64);
  __chkstk_darwin(v140);
  v130 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2CCB20();
  v118 = *(v119 - 8);
  v20 = *(v118 + 64);
  __chkstk_darwin(v119);
  v117 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2CCB30();
  v125 = *(v124 - 8);
  v22 = *(v125 + 64);
  __chkstk_darwin(v124);
  v128 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v129 = *(v24 - 8);
  v25 = *(v129 + 64);
  __chkstk_darwin(v24);
  v127 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v126 = &v114 - v29;
  v122 = sub_20410(&unk_3519A0, &qword_2D0980);
  v30 = *(*(v122 - 1) + 64);
  __chkstk_darwin(v122);
  v32 = (&v114 - v31);
  v33 = sub_2CE000();
  v34 = *(v33 - 8);
  v35 = v34[8];
  v36 = __chkstk_darwin(v33);
  v116 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v123 = &v114 - v39;
  __chkstk_darwin(v38);
  v41 = &v114 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v42 = sub_3ED0(v33, static Logger.default);
  swift_beginAccess();
  v43 = v34[2];
  v121 = v42;
  v120 = v43;
  v43(v41, v42, v33);
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v115 = a1;
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "ExecuteMusicOnRemoteFlow#handleDialogResult Handling dialog Result...", v46, 2u);
    a1 = v115;
  }

  v47 = v34[1];
  v47(v41, v33);
  sub_F3F4(a1, v32, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v32;
    v49 = v116;
    v120(v116, v121, v33);
    swift_errorRetain();
    v50 = sub_2CDFE0();
    v51 = v33;
    v52 = sub_2CE680();

    if (os_log_type_enabled(v50, v52))
    {
      v53 = swift_slowAlloc();
      v123 = v24;
      v122 = v4;
      v54 = v53;
      v55 = swift_slowAlloc();
      v143 = v55;
      *v54 = 136315138;
      swift_getErrorValue();
      v121 = v51;
      v141 = sub_2CEEF0();
      v142 = v56;
      v57 = sub_2CE3C0();
      v59 = sub_3F08(v57, v58, &v143);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_0, v50, v52, "AmbiguousDetermineFlow#handleDialogResult Could not properly create dialog %s, silently failing", v54, 0xCu);
      sub_306C(v55);

      v4 = v122;
      v24 = v123;

      v60 = v49;
      v61 = v121;
    }

    else
    {

      v60 = v49;
      v61 = v51;
    }

    v47(v60, v61);
    v94 = v129;
    v95 = v127;
    (*(v129 + 104))(v127, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v24);
    v96 = v125;
    v97 = v128;
    v98 = v124;
    (*(v125 + 104))(v128, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v124);
    v126 = v48;
    swift_getErrorValue();
    sub_2CEEF0();
    v123 = sub_2CCAE0();
    v122 = v99;

    (*(v96 + 8))(v97, v98);
    (*(v94 + 8))(v95, v24);
    v100 = v4[16];
    v129 = v4[17];
    sub_35E0(v4 + 13, v100);
    v101 = v133;
    v102 = v130;
    (*(v133 + 104))(v130, enum case for TypeOfIntent.determine(_:), v140);
    v103 = enum case for ActivityType.failed(_:);
    v104 = sub_2C9C20();
    v105 = *(v104 - 8);
    v106 = v131;
    (*(v105 + 104))(v131, v103, v104);
    (*(v105 + 56))(v106, 0, 1, v104);
    v107 = sub_2CA130();
    v108 = v132;
    (*(*(v107 - 8) + 56))(v132, 1, 1, v107);
    v109 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v110 = sub_2C98F0();
    v111 = *(v110 - 8);
    v112 = v134;
    (*(v111 + 104))(v134, v109, v110);
    (*(v111 + 56))(v112, 0, 1, v110);
    sub_2CB4C0();

    sub_30B8(v112, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v108, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v106, &qword_34CB88, &unk_2D0D90);
    (*(v101 + 8))(v102, v140);
    v113 = v135;
    sub_2C9EB0();
    v137(v113);

    return (*(v138 + 8))(v113, v139);
  }

  else
  {
    v62 = v32;
    v63 = v33;
    sub_24BE0(v62, v126);
    v64 = v4[25];
    v65 = sub_2C9BD0();
    v66 = v4[24];
    sub_35E0(v4 + 20, v4[23]);
    v122 = v65;
    sub_2CA3E0();
    v120(v123, v121, v63);
    v67 = sub_2CDFE0();
    v68 = sub_2CE690();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "AmbiguousDetermineFlow#handleDialogResult Dialog successfully generated, responding and exiting", v69, 2u);
    }

    v47(v123, v63);
    v70 = v129;
    v71 = v127;
    (*(v129 + 104))(v127, enum case for AdditionalMetricsDescription.ModuleName.adf(_:), v24);
    v72 = v125;
    v73 = v128;
    v74 = v124;
    (*(v125 + 104))(v128, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v124);
    v75 = v118;
    v76 = v117;
    v77 = v119;
    (*(v118 + 104))(v117, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v119);
    v123 = sub_2CCAD0();
    v121 = v78;
    (*(v75 + 8))(v76, v77);
    (*(v72 + 8))(v73, v74);
    (*(v70 + 8))(v71, v24);
    v79 = v4[16];
    v129 = v4[17];
    sub_35E0(v4 + 13, v79);
    v80 = v133;
    v81 = v130;
    (*(v133 + 104))(v130, enum case for TypeOfIntent.determine(_:), v140);
    v82 = enum case for ActivityType.completed(_:);
    v83 = sub_2C9C20();
    v84 = *(v83 - 8);
    v85 = v131;
    (*(v84 + 104))(v131, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    v86 = sub_2CA130();
    v87 = v132;
    (*(*(v86 - 8) + 56))(v132, 1, 1, v86);
    v88 = enum case for SiriKitReliabilityCodes.success(_:);
    v89 = sub_2C98F0();
    v90 = *(v89 - 8);
    v91 = v134;
    (*(v90 + 104))(v134, v88, v89);
    (*(v90 + 56))(v91, 0, 1, v89);
    sub_2CB4C0();

    sub_30B8(v91, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v87, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v85, &qword_34CB88, &unk_2D0D90);
    (*(v80 + 8))(v81, v140);
    v92 = v135;
    sub_2C9EB0();
    v137(v92);

    (*(v138 + 8))(v92, v139);
    return sub_30B8(v126, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t *sub_1F675C()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  v1 = v0[12];

  sub_306C(v0 + 13);
  v2 = v0[18];

  v3 = v0[19];

  sub_306C(v0 + 20);
  v4 = v0[25];

  sub_306C(v0 + 26);
  sub_306C(v0 + 31);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input, &qword_34E480, &qword_2D2280);
  return v0;
}

uint64_t sub_1F67E4()
{
  sub_1F675C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AmbiguousDetermineFlow()
{
  result = qword_354BC8;
  if (!qword_354BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1F6890()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1F6994(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AmbiguousDetermineFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1F69D0(void *a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1F32D0(a1, a2 & 1, v6, v7, v8, v9);
}

unint64_t sub_1F6A64()
{
  result = qword_34D708;
  if (!qword_34D708)
  {
    sub_2CD4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D708);
  }

  return result;
}

uint64_t sub_1F6AC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
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
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "SwitchPodcastNewsPreferenceFlow#on Handling input.", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = sub_2CA7B0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
  swift_beginAccess();
  sub_FECE8(v7, v2 + v19, &qword_34E480, &qword_2D2280);
  swift_endAccess();
  return sub_1FE6CC() & 1;
}

uint64_t sub_1F6D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v124 = a1;
  v125 = a2;
  v4 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v123 = &v102 - v6;
  v7 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v120 = &v102 - v9;
  v10 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v119 = &v102 - v12;
  v13 = sub_2CB970();
  v121 = *(v13 - 8);
  v122 = v13;
  v14 = *(v121 + 64);
  __chkstk_darwin(v13);
  v118 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2CCB30();
  v16 = *(v117 - 8);
  v17 = v16[8];
  __chkstk_darwin(v117);
  v114 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CCAC0();
  v115 = *(v19 - 8);
  v116 = v19;
  v20 = *(v115 + 64);
  __chkstk_darwin(v19);
  v113 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2CB380();
  v108 = *(v109 - 8);
  v22 = *(v108 + 64);
  v23 = __chkstk_darwin(v109);
  v107 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v106 = &v102 - v25;
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v104 = &v102 - v33;
  __chkstk_darwin(v32);
  v35 = &v102 - v34;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v37 = v27[2];
  v111 = v27 + 2;
  v112 = v36;
  v110 = v37;
  v37(v35, v36, v26);

  v38 = sub_2CDFE0();
  v39 = sub_2CE690();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v102 = v31;
    v41 = v40;
    v42 = swift_slowAlloc();
    v103 = v16;
    v43 = v42;
    v127 = v42;
    *v41 = 136315138;
    v126 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState);
    v44 = sub_2CE2A0();
    v46 = sub_3F08(v44, v45, &v127);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_0, v38, v39, "SwitchPodcastNewsPreferenceFlow#execute Reached this logic with httpCallState: %s.", v41, 0xCu);
    sub_306C(v43);
    v16 = v103;

    v31 = v102;
  }

  v47 = v27[1];
  v48 = v26;
  v47(v35, v26);
  v49 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider + 32);
  sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider + 24));
  if ((sub_2CC560() & 1) == 0)
  {
    v110(v31, v112, v26);
    v79 = sub_2CDFE0();
    v80 = sub_2CE670();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_0, v79, v80, "SwitchPodcastNewsPreferenceFlow#execute Feature is not enabled, erroring out.", v81, 2u);
    }

    v47(v31, v26);
    v83 = v115;
    v82 = v116;
    v84 = v113;
    (*(v115 + 104))(v113, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v116);
    v85 = v114;
    v86 = v117;
    (v16[13])(v114, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v117);
    v112 = sub_2CCAE0();
    (v16[1])(v85, v86);
    (*(v83 + 8))(v84, v82);
    v105 = v3;
    v87 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v117 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v87);
    v89 = v121;
    v88 = v122;
    v90 = v118;
    (*(v121 + 104))(v118, enum case for TypeOfIntent.switchNewsPreference(_:), v122);
    v91 = enum case for ActivityType.completed(_:);
    v92 = sub_2C9C20();
    v93 = *(v92 - 8);
    v94 = v119;
    (*(v93 + 104))(v119, v91, v92);
    (*(v93 + 56))(v94, 0, 1, v92);
    v95 = sub_2CA130();
    v96 = v120;
    (*(*(v95 - 8) + 56))(v120, 1, 1, v95);
    v97 = sub_2C98F0();
    v98 = v123;
    (*(*(v97 - 8) + 56))(v123, 1, 1, v97);
    sub_2CB4C0();

    sub_30B8(v98, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v96, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v94, &qword_34CB88, &unk_2D0D90);
    (*(v89 + 8))(v90, v88);
    goto LABEL_13;
  }

  v103 = v27;
  v50 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_networkAvailabilityProvider);
  v51 = v106;
  sub_2CB390();
  v52 = v108;
  v53 = v107;
  v54 = v109;
  (*(v108 + 104))(v107, enum case for NetworkAvailability.Status.unknown(_:), v109);
  sub_2035E8(&qword_354F20, &type metadata accessor for NetworkAvailability.Status);
  v55 = sub_2CE250();
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v51, v54);
  if (v55)
  {
    v57 = v48;
    v58 = v104;
    v110(v104, v112, v57);
    v59 = sub_2CDFE0();
    v60 = sub_2CE680();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "SwitchPodcastNewsPreferenceFlow#execute device is offline, cannot set preference.", v61, 2u);
    }

    v47(v58, v57);
    v63 = v115;
    v62 = v116;
    v64 = v113;
    (*(v115 + 104))(v113, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v116);
    v65 = v114;
    v66 = v117;
    (v16[13])(v114, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v117);
    v112 = sub_2CCAE0();
    (v16[1])(v65, v66);
    (*(v63 + 8))(v64, v62);
    v105 = v3;
    v67 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v117 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v67);
    v68 = v121;
    v69 = v122;
    v70 = v118;
    (*(v121 + 104))(v118, enum case for TypeOfIntent.switchNewsPreference(_:), v122);
    v71 = enum case for ActivityType.failed(_:);
    v72 = sub_2C9C20();
    v73 = *(v72 - 8);
    v74 = v119;
    (*(v73 + 104))(v119, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    v75 = sub_2CA130();
    v76 = v120;
    (*(*(v75 - 8) + 56))(v120, 1, 1, v75);
    v77 = sub_2C98F0();
    v78 = v123;
    (*(*(v77 - 8) + 56))(v123, 1, 1, v77);
    sub_2CB4C0();

    sub_30B8(v78, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v76, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v74, &qword_34CB88, &unk_2D0D90);
    (*(v68 + 8))(v70, v69);
LABEL_13:
    v99 = v124;
    v100 = v125;
    return sub_1FD78C(v99, v100);
  }

  if ((sub_1FE6CC() & 1) == 0)
  {
    v99 = v124;
    v100 = v125;
    return sub_1FD78C(v99, v100);
  }

  return sub_1F7B68(v124, v125);
}

uint64_t sub_1F7B68(uint64_t a1, uint64_t a2)
{
  v159 = a1;
  v160 = a2;
  v3 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v158 = v132 - v5;
  v6 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v156 = v132 - v8;
  v9 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v154 = v132 - v11;
  v157 = sub_2CB970();
  v155 = *(v157 - 8);
  v12 = *(v155 + 64);
  __chkstk_darwin(v157);
  v153 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CCB30();
  v151 = *(v14 - 8);
  v152 = v14;
  v15 = *(v151 + 64);
  __chkstk_darwin(v14);
  v148 = v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CCAC0();
  v149 = *(v17 - 8);
  v150 = v17;
  v18 = *(v149 + 64);
  __chkstk_darwin(v17);
  v147 = v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2CDFD0();
  v141 = *(v142 - 8);
  v20 = *(v141 + 64);
  v21 = __chkstk_darwin(v142);
  v139 = v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v140 = v132 - v22;
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v138 = v132 - v30;
  __chkstk_darwin(v29);
  v143 = v132 - v31;
  v32 = sub_20410(&unk_3519B0, &qword_2D1230);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = v132 - v34;
  v36 = sub_2C8D90();
  v145 = *(v36 - 8);
  v146 = v36;
  v37 = *(v145 + 64);
  v38 = __chkstk_darwin(v36);
  v40 = v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v144 = (v132 - v41);
  v42 = sub_2C8C40();
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42);
  v46 = v2;
  v48 = v132 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v46 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId + 8);
  v161 = v46;
  if (v49 && *(v46 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier + 8))
  {
    v133 = v24;
    v136 = v23;
    v134 = v45;
    v135 = v44;
    v132[0] = *(v46 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId);
    v132[1] = *(v46 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier);

    sub_2C8C30();
    sub_2C8C20();
    sub_2C8C00();
    sub_2C8C10();
    sub_20410(&qword_354F18, qword_2D7340);
    v50 = *(sub_2C8BD0() - 8);
    v51 = *(v50 + 72);
    v52 = *(v50 + 80);
    v137 = v48;
    *(swift_allocObject() + 16) = xmmword_2D10E0;
    sub_2C8BC0();

    sub_2C8BC0();

    sub_2C8BC0();
    sub_2C8BE0();
    sub_2C8BF0();
    v54 = v145;
    v53 = v146;
    if ((*(v145 + 48))(v35, 1, v146) == 1)
    {
      sub_30B8(v35, &unk_3519B0, &qword_2D1230);
      v55 = v136;
      v56 = v133;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v57 = sub_3ED0(v55, static Logger.default);
      swift_beginAccess();
      v58 = v138;
      (*(v56 + 16))(v138, v57, v55);
      v59 = sub_2CDFE0();
      v60 = sub_2CE680();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v161;
      if (v61)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_0, v59, v60, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference failed to create URL. Cannot make Media API call.", v63, 2u);
      }

      (*(v56 + 8))(v58, v55);
      v65 = v149;
      v64 = v150;
      v66 = v147;
      (*(v149 + 104))(v147, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v150);
      v68 = v151;
      v67 = v152;
      v69 = v148;
      (*(v151 + 104))(v148, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v152);
      v146 = sub_2CCAE0();
      (*(v68 + 8))(v69, v67);
      (*(v65 + 8))(v66, v64);
      v70 = *(v62 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
      v152 = *(v62 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v62 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v70);
      v71 = v155;
      v72 = v153;
      v73 = v157;
      (*(v155 + 104))(v153, enum case for TypeOfIntent.switchNewsPreference(_:), v157);
      v74 = enum case for ActivityType.failed(_:);
      v75 = sub_2C9C20();
      v76 = *(v75 - 8);
      v77 = v154;
      (*(v76 + 104))(v154, v74, v75);
      (*(v76 + 56))(v77, 0, 1, v75);
      v78 = sub_2CA130();
      v79 = v156;
      (*(*(v78 - 8) + 56))(v156, 1, 1, v78);
      v80 = sub_2C98F0();
      v81 = v158;
      (*(*(v80 - 8) + 56))(v158, 1, 1, v80);
      sub_2CB4C0();

      sub_30B8(v81, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v79, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v77, &qword_34CB88, &unk_2D0D90);
      (*(v71 + 8))(v72, v73);
      sub_1FD750(v159, v160);
    }

    else
    {
      v106 = v144;
      (*(v54 + 32))(v144, v35, v53);
      v107 = v136;
      v108 = v133;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v109 = sub_3ED0(v107, static Logger.default);
      swift_beginAccess();
      v110 = v143;
      (*(v108 + 16))(v143, v109, v107);
      (*(v54 + 16))(v40, v106, v53);
      v111 = sub_2CDFE0();
      v112 = sub_2CE670();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = v54;
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v162 = v115;
        *v114 = 136315138;
        v116 = sub_2C8D40();
        v117 = v53;
        v119 = v118;
        v158 = *(v113 + 8);
        (v158)(v40, v117);
        v120 = sub_3F08(v116, v119, &v162);

        *(v114 + 4) = v120;
        _os_log_impl(&dword_0, v111, v112, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference setPodcastNewsPreferenceURL: %s", v114, 0xCu);
        sub_306C(v115);

        (*(v108 + 8))(v143, v136);
      }

      else
      {

        v158 = *(v54 + 8);
        (v158)(v40, v53);
        (*(v108 + 8))(v110, v107);
      }

      if (qword_34BF98 != -1)
      {
        swift_once();
      }

      v121 = qword_35F760;
      v122 = v140;
      sub_2CDFB0();
      v123 = v141;
      v124 = v139;
      v125 = v142;
      (*(v141 + 16))(v139, v122, v142);
      v126 = (*(v123 + 80) + 33) & ~*(v123 + 80);
      v127 = swift_allocObject();
      *(v127 + 16) = "switchNewsSourcePreferenceMediaAPICall";
      *(v127 + 24) = 38;
      *(v127 + 32) = 2;
      (*(v123 + 32))(v127 + v126, v124, v125);
      v128 = (v127 + ((v20 + v126 + 7) & 0xFFFFFFFFFFFFFFF8));
      v129 = v160;
      *v128 = v159;
      v128[1] = v129;

      sub_2CE9E0();
      sub_2CDFA0();
      v130 = swift_allocObject();
      *(v130 + 16) = sub_13CD4;
      *(v130 + 24) = v127;

      v131 = v144;
      sub_1F8EE4(sub_13D8C, v130, v161, v144);

      (*(v123 + 8))(v122, v125);
      (v158)(v131, v146);
    }

    return (*(v134 + 8))(v137, v135);
  }

  else
  {
    v82 = v46;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v83 = sub_3ED0(v23, static Logger.default);
    swift_beginAccess();
    (*(v24 + 16))(v28, v83, v23);
    v84 = sub_2CDFE0();
    v85 = sub_2CE680();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_0, v84, v85, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference did not receive correct podcast metadata. Cannot make Media API call.", v86, 2u);
    }

    (*(v24 + 8))(v28, v23);
    v88 = v149;
    v87 = v150;
    v89 = v147;
    (*(v149 + 104))(v147, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v150);
    v91 = v151;
    v90 = v152;
    v92 = v148;
    (*(v151 + 104))(v148, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v152);
    v146 = sub_2CCAE0();
    (*(v91 + 8))(v92, v90);
    (*(v88 + 8))(v89, v87);
    v93 = *(v82 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v152 = *(v82 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v82 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v93);
    v94 = v155;
    v95 = v153;
    v96 = v157;
    (*(v155 + 104))(v153, enum case for TypeOfIntent.switchNewsPreference(_:), v157);
    v97 = enum case for ActivityType.failed(_:);
    v98 = sub_2C9C20();
    v99 = *(v98 - 8);
    v100 = v154;
    (*(v99 + 104))(v154, v97, v98);
    (*(v99 + 56))(v100, 0, 1, v98);
    v101 = sub_2CA130();
    v102 = v156;
    (*(*(v101 - 8) + 56))(v156, 1, 1, v101);
    v103 = sub_2C98F0();
    v104 = v158;
    (*(*(v103 - 8) + 56))(v158, 1, 1, v103);
    sub_2CB4C0();

    sub_30B8(v104, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v102, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v100, &qword_34CB88, &unk_2D0D90);
    (*(v94 + 8))(v95, v96);
    return sub_1FD750(v159, v160);
  }
}

uint64_t sub_1F8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t a1))
{
  v46 = a4;
  v53 = a3;
  v50 = a1;
  v51 = a2;
  v49 = sub_2CE150();
  v56 = *(v49 - 8);
  v4 = *(v56 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2C8D90();
  v6 = *(v45 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE990();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE180();
  v55 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  sub_2CE170();
  sub_2CE980();
  v54 = sub_2CBA00();
  (*(v9 + 8))(v12, v8);
  v19 = *(v14 + 8);
  v52 = v14 + 8;
  v47 = v19;
  v19(v17, v13);
  v20 = swift_allocObject();
  v41 = v20;
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  v21 = v18;
  dispatch_group_enter(v18);
  v22 = v44;
  v23 = v45;
  (*(v6 + 16))(v44, v46, v45);
  v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v53;
  (*(v6 + 32))(v26 + v24, v22, v23);
  v27 = v41;
  *(v26 + v25) = v41;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v62 = sub_2034C8;
  v63 = v26;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v46 = &v60;
  v60 = sub_A4294;
  v61 = &unk_339100;
  v28 = _Block_copy(&aBlock);
  v29 = v21;
  v42 = v29;

  sub_2CE160();
  v57 = _swiftEmptyArrayStorage;
  v44 = sub_2035E8(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  v43 = sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v31 = v48;
  v30 = v49;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v28);

  v32 = *(v56 + 8);
  v56 += 8;
  v45 = v32;
  (v32)(v31, v30);
  v33 = v47;
  v47(v17, v55);

  sub_334A0(0, &qword_34FF18, OS_dispatch_queue_ptr);
  v34 = sub_2CE9B0();
  v35 = swift_allocObject();
  v35[2] = v27;
  v36 = v50;
  v37 = v51;
  v35[3] = v53;
  v35[4] = v36;
  v35[5] = v37;
  v62 = sub_20357C;
  v63 = v35;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_A4294;
  v61 = &unk_339150;
  v38 = _Block_copy(&aBlock);

  sub_2CE160();
  v57 = _swiftEmptyArrayStorage;
  sub_2CEC10();
  v39 = v42;
  sub_2CE970();
  _Block_release(v38);

  (v45)(v31, v30);
  v33(v17, v55);
}

uint64_t sub_1F9584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_20410(&unk_3519B0, &qword_2D1230);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider + 32);
  sub_35E0((a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider), *(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider + 24));
  v13 = sub_2C8D90();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a2, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  v16 = a4;
  sub_2CC9A0();

  return sub_30B8(v11, &unk_3519B0, &qword_2D1230);
}

uint64_t sub_1F9744(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v343 = a3;
  v344 = a4;
  v347 = a2;
  v330 = a1;
  v318 = sub_2C9EC0();
  v317 = *(v318 - 8);
  v4 = *(v317 + 64);
  __chkstk_darwin(v318);
  v316 = &v309 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v337 = &v309 - v8;
  v9 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v338 = &v309 - v11;
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v339 = &v309 - v14;
  v15 = sub_2CB970();
  v16 = *(v15 - 8);
  v341 = v15;
  v342 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v340 = &v309 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_2CCB30();
  v333 = *(v332 - 8);
  v19 = *(v333 + 64);
  __chkstk_darwin(v332);
  v331 = &v309 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_2CCAC0();
  v336 = *(v335 - 8);
  v21 = v336[8];
  __chkstk_darwin(v335);
  v334 = &v309 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20410(&qword_34E480, &qword_2D2280);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v311 = &v309 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v315 = &v309 - v27;
  v319 = sub_2CA7B0();
  v325 = *(v319 - 8);
  v28 = *(v325 + 64);
  v29 = __chkstk_darwin(v319);
  v328 = &v309 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v313 = &v309 - v31;
  v32 = sub_20410(&qword_354F10, &unk_2D7330);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v327 = &v309 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v329 = &v309 - v36;
  v37 = sub_2CE000();
  v38 = *(v37 - 8);
  v39 = v38[8];
  v40 = __chkstk_darwin(v37);
  v321 = &v309 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v324 = &v309 - v43;
  v44 = __chkstk_darwin(v42);
  v323 = &v309 - v45;
  v46 = __chkstk_darwin(v44);
  v320 = &v309 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v309 - v49;
  v51 = __chkstk_darwin(v48);
  v326 = &v309 - v52;
  v53 = __chkstk_darwin(v51);
  v310 = &v309 - v54;
  v55 = __chkstk_darwin(v53);
  v314 = &v309 - v56;
  v57 = __chkstk_darwin(v55);
  v312 = &v309 - v58;
  v59 = __chkstk_darwin(v57);
  v322 = &v309 - v60;
  v61 = __chkstk_darwin(v59);
  v63 = &v309 - v62;
  v64 = __chkstk_darwin(v61);
  v66 = &v309 - v65;
  __chkstk_darwin(v64);
  v68 = &v309 - v67;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v69 = sub_3ED0(v37, static Logger.default);
  swift_beginAccess();
  v345 = v38[2];
  v346 = v69;
  v70 = v69;
  v71 = v37;
  v345(v68, v70, v37);
  v72 = sub_2CDFE0();
  v73 = sub_2CE670();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_0, v72, v73, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Completed Media API Call, checking response code.", v74, 2u);
  }

  v75 = v38[1];
  v76 = v71;
  v75(v68, v71);
  v77 = v330;
  swift_beginAccess();
  if (*(v77 + 24) == 1)
  {
    v345(v66, v346, v71);
    v78 = sub_2CDFE0();
    v79 = sub_2CE680();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Got back no response code from Media API call. Erroring out.", v80, 2u);
    }

    v75(v66, v71);
    v81 = v336;
    v82 = v334;
    v83 = v335;
    (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
    v84 = v333;
    v85 = v331;
    v86 = v332;
    (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v332);
    v346 = sub_2CCAE0();
    (*(v84 + 8))(v85, v86);
    (v81[1])(v82, v83);
    v87 = *(v347 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v345 = *(v347 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v347 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v87);
    v89 = v341;
    v88 = v342;
    v90 = v340;
    (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
    v91 = enum case for ActivityType.failed(_:);
    v92 = sub_2C9C20();
    v93 = *(v92 - 8);
    v94 = v339;
    (*(v93 + 104))(v339, v91, v92);
    (*(v93 + 56))(v94, 0, 1, v92);
    v95 = sub_2CA130();
    v96 = v338;
    (*(*(v95 - 8) + 56))(v338, 1, 1, v95);
    v97 = sub_2C98F0();
    v98 = v337;
    (*(*(v97 - 8) + 56))(v337, 1, 1, v97);
    sub_2CB4C0();

    sub_30B8(v98, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v96, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v94, &qword_34CB88, &unk_2D0D90);
    (*(v88 + 8))(v90, v89);
    return sub_1FD750(v343, v344);
  }

  v100 = *(v77 + 16);
  v101 = v345;
  if ((v100 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v345(v63, v346, v71);
    v116 = sub_2CDFE0();
    v117 = sub_2CE670();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_0, v116, v117, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Successfully set news preference, initiating playback.", v118, 2u);
    }

    v330 = (v38 + 1);
    v75(v63, v71);
    v119 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
    v120 = v347;
    swift_beginAccess();
    v121 = v329;
    sub_F3F4(v120 + v119, v329, &qword_354F10, &unk_2D7330);
    v122 = sub_2CA870();
    v123 = *(v122 - 8);
    v124 = (*(v123 + 48))(v121, 1, v122);
    v125 = v328;
    if (v124 == 1)
    {
      goto LABEL_19;
    }

    v174 = v327;
    sub_F3F4(v329, v327, &qword_354F10, &unk_2D7330);
    v175 = (*(v123 + 88))(v174, v122);
    if (v175 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v209 = v325;
      if (v175 != enum case for Parse.pommesResponse(_:))
      {
        (*(v123 + 8))(v174, v122);
LABEL_19:
        v126 = v326;
        v345(v326, v346, v76);
        v127 = sub_2CDFE0();
        v128 = sub_2CE680();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_0, v127, v128, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Unexpected parse type.", v129, 2u);
        }

        v75(v126, v76);
        v130 = v336;
        v131 = v334;
        v132 = v335;
        (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
        v133 = v333;
        v134 = v331;
        v135 = v332;
        (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v332);
        v346 = sub_2CCAE0();
        (*(v133 + 8))(v134, v135);
        (v130[1])(v131, v132);
        v136 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
        v345 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
        sub_35E0((v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v136);
        v138 = v341;
        v137 = v342;
        v139 = v340;
        (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
        v140 = enum case for ActivityType.failed(_:);
        v141 = sub_2C9C20();
        v142 = *(v141 - 8);
        v143 = v339;
        (*(v142 + 104))(v339, v140, v141);
        (*(v142 + 56))(v143, 0, 1, v141);
        v144 = sub_2CA130();
        v145 = v338;
        (*(*(v144 - 8) + 56))(v338, 1, 1, v144);
        v146 = sub_2C98F0();
        v147 = v337;
        (*(*(v146 - 8) + 56))(v337, 1, 1, v146);
        sub_2CB4C0();

        sub_30B8(v147, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v145, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v143, &qword_34CB88, &unk_2D0D90);
        (*(v137 + 8))(v139, v138);
        sub_1FD78C(v343, v344);
        return sub_30B8(v329, &qword_354F10, &unk_2D7330);
      }

      (*(v123 + 96))(v174, v122);
      v327 = *v174;
      v345(v314, v346, v76);
      v210 = sub_2CDFE0();
      v211 = sub_2CE670();
      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        *v212 = 0;
        _os_log_impl(&dword_0, v210, v211, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference received .pommesResponse parse.", v212, 2u);
      }

      v75(v314, v76);
      v213 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
      swift_beginAccess();
      v214 = v311;
      sub_F3F4(v120 + v213, v311, &qword_34E480, &qword_2D2280);
      v215 = v319;
      if ((*(v209 + 48))(v214, 1, v319) == 1)
      {
        sub_30B8(v214, &qword_34E480, &qword_2D2280);
      }

      else
      {
        (*(v209 + 32))(v125, v214, v215);
        v240 = sub_1B8014();
        if (v240)
        {
          v241 = v240;
          v242 = v336;
          v243 = v334;
          v244 = v335;
          (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
          v245 = v333;
          v246 = v331;
          v247 = v332;
          (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.successfulSwitchPreference(_:), v332);
          v248 = sub_2CCAE0();
          v345 = v249;
          v346 = v248;
          (*(v245 + 8))(v246, v247);
          (v242[1])(v243, v244);
          v250 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
          v347 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
          v336 = sub_35E0((v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v250);
          v251 = v341;
          v252 = v342;
          v253 = v340;
          (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
          v254 = enum case for ActivityType.completed(_:);
          v255 = sub_2C9C20();
          v256 = *(v255 - 8);
          v257 = v339;
          (*(v256 + 104))(v339, v254, v255);
          (*(v256 + 56))(v257, 0, 1, v255);
          v258 = sub_2CA130();
          v259 = v338;
          (*(*(v258 - 8) + 56))(v338, 1, 1, v258);
          v260 = sub_2C98F0();
          v261 = v337;
          (*(*(v260 - 8) + 56))(v337, 1, 1, v260);
          sub_2CB4C0();

          sub_30B8(v261, &qword_34CB78, &unk_2D0D80);
          sub_30B8(v259, &qword_34CB80, &unk_2D0B30);
          sub_30B8(v257, &qword_34CB88, &unk_2D0D90);
          (*(v252 + 8))(v253, v251);
          v262 = v328;
          sub_1356F8(v328, v241);
          v263 = v316;
          sub_2C9EA0();
          v343(v263);

          (*(v317 + 8))(v263, v318);
          (*(v325 + 8))(v262, v319);
          return sub_30B8(v329, &qword_354F10, &unk_2D7330);
        }

        (*(v209 + 8))(v125, v215);
      }

      v287 = v310;
      v345(v310, v346, v76);
      v288 = sub_2CDFE0();
      v289 = sub_2CE680();
      if (os_log_type_enabled(v288, v289))
      {
        v290 = swift_slowAlloc();
        *v290 = 0;
        _os_log_impl(&dword_0, v288, v289, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Failed to build playMediaIntent.", v290, 2u);
      }

      v75(v287, v76);
      v291 = v336;
      v292 = v334;
      v293 = v335;
      (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
      v294 = v333;
      v295 = v331;
      v296 = v332;
      (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v332);
      v346 = sub_2CCAE0();
      (*(v294 + 8))(v295, v296);
      (v291[1])(v292, v293);
      v297 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
      v345 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v297);
      v299 = v341;
      v298 = v342;
      v300 = v340;
      (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
      v301 = enum case for ActivityType.failed(_:);
      v302 = sub_2C9C20();
      v303 = *(v302 - 8);
      v304 = v339;
      (*(v303 + 104))(v339, v301, v302);
      (*(v303 + 56))(v304, 0, 1, v302);
      v305 = sub_2CA130();
      v306 = v338;
      (*(*(v305 - 8) + 56))(v338, 1, 1, v305);
      v307 = sub_2C98F0();
      v308 = v337;
      (*(*(v307 - 8) + 56))(v337, 1, 1, v307);
      sub_2CB4C0();

      sub_30B8(v308, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v306, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v304, &qword_34CB88, &unk_2D0D90);
      (*(v298 + 8))(v300, v299);
      sub_1FD78C(v343, v344);

      return sub_30B8(v329, &qword_354F10, &unk_2D7330);
    }

    (*(v123 + 96))(v174, v122);
    v176 = *(v174 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v177 = v345;
    v345(v322, v346, v76);
    v178 = sub_2CDFE0();
    v179 = sub_2CE670();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&dword_0, v178, v179, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference received .NLv3IntentPlusServerConversion parse.", v180, 2u);
    }

    v75(v322, v76);
    v181 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
    swift_beginAccess();
    v182 = v120 + v181;
    v183 = v315;
    sub_F3F4(v182, v315, &qword_34E480, &qword_2D2280);
    v184 = v325;
    v185 = v319;
    v186 = (*(v325 + 48))(v183, 1, v319);
    v328 = v176;
    if (v186 == 1)
    {
      sub_30B8(v183, &qword_34E480, &qword_2D2280);
    }

    else
    {
      v216 = v313;
      (*(v184 + 32))(v313, v183, v185);
      v217 = sub_2CA830();
      objc_opt_self();
      v218 = swift_dynamicCastObjCClass();
      if (v218)
      {
        v346 = v217;
        v219 = v336;
        v220 = v336[13];
        v221 = v334;
        v345 = v218;
        v222 = v335;
        v220(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
        v223 = v333;
        v224 = v331;
        v225 = v332;
        (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.successfulSwitchPreference(_:), v332);
        v330 = sub_2CCAE0();
        (*(v223 + 8))(v224, v225);
        (v219[1])(v221, v222);
        v226 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
        v347 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
        sub_35E0((v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v226);
        v228 = v341;
        v227 = v342;
        v229 = v340;
        (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
        v230 = enum case for ActivityType.completed(_:);
        v231 = sub_2C9C20();
        v232 = *(v231 - 8);
        v233 = v339;
        (*(v232 + 104))(v339, v230, v231);
        (*(v232 + 56))(v233, 0, 1, v231);
        v234 = sub_2CA130();
        v235 = v338;
        (*(*(v234 - 8) + 56))(v338, 1, 1, v234);
        v236 = sub_2C98F0();
        v237 = v337;
        (*(*(v236 - 8) + 56))(v337, 1, 1, v236);
        sub_2CB4C0();

        sub_30B8(v237, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v235, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v233, &qword_34CB88, &unk_2D0D90);
        (*(v227 + 8))(v229, v228);
        v238 = v313;
        sub_1356F8(v313, v345);
        v239 = v316;
        sub_2C9EA0();
        v343(v239);

        (*(v317 + 8))(v239, v318);
        (*(v325 + 8))(v238, v319);
LABEL_51:
        v286 = sub_2CAFE0();
        (*(*(v286 - 8) + 8))(v327, v286);
        return sub_30B8(v329, &qword_354F10, &unk_2D7330);
      }

      (*(v184 + 8))(v216, v185);
    }

    v264 = v312;
    v177(v312, v346, v76);
    v265 = sub_2CDFE0();
    v266 = sub_2CE680();
    if (os_log_type_enabled(v265, v266))
    {
      v267 = swift_slowAlloc();
      *v267 = 0;
      _os_log_impl(&dword_0, v265, v266, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Failed to build playMediaIntent.", v267, 2u);
    }

    v75(v264, v76);
    v268 = v336;
    v269 = v334;
    v270 = v335;
    (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
    v271 = v333;
    v272 = v331;
    v273 = v332;
    (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v332);
    v346 = sub_2CCAE0();
    (*(v271 + 8))(v272, v273);
    (v268[1])(v269, v270);
    v274 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
    v345 = *(v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v120 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v274);
    v276 = v341;
    v275 = v342;
    v277 = v340;
    (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
    v278 = enum case for ActivityType.failed(_:);
    v279 = sub_2C9C20();
    v280 = *(v279 - 8);
    v281 = v339;
    (*(v280 + 104))(v339, v278, v279);
    (*(v280 + 56))(v281, 0, 1, v279);
    v282 = sub_2CA130();
    v283 = v338;
    (*(*(v282 - 8) + 56))(v338, 1, 1, v282);
    v284 = sub_2C98F0();
    v285 = v337;
    (*(*(v284 - 8) + 56))(v337, 1, 1, v284);
    sub_2CB4C0();

    sub_30B8(v285, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v283, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v281, &qword_34CB88, &unk_2D0D90);
    (*(v275 + 8))(v277, v276);
    sub_1FD78C(v343, v344);

    goto LABEL_51;
  }

  v345(v50, v346, v71);
  v102 = sub_2CDFE0();
  v103 = sub_2CE680();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 134217984;
    *(v104 + 4) = v100;
    _os_log_impl(&dword_0, v102, v103, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Media API call returned unsuccessful statusCode: %ld", v104, 0xCu);
  }

  v75(v50, v71);
  if ((v100 - 600) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v105 = v321;
    v101(v321, v346, v71);
    v106 = sub_2CDFE0();
    v107 = sub_2CE680();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 134217984;
      *(v108 + 4) = v100;
      _os_log_impl(&dword_0, v106, v107, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Media API call returned %ld, will not attempt a retry and log this as a failure.", v108, 0xCu);
    }

    v75(v105, v71);
    v109 = v336;
    v110 = v334;
    v111 = v335;
    (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
    v112 = v333;
    v113 = v331;
    v114 = v332;
    (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v332);
    v349 = 0;
    v350 = 0xE000000000000000;
    sub_2CECB0(38);

    v349 = 0x6465766965636552;
    v350 = 0xE900000000000020;
    v348 = v100;
    v351._countAndFlagsBits = sub_2CEE70();
    sub_2CE350(v351);

    v352._countAndFlagsBits = 0xD00000000000001BLL;
    v352._object = 0x80000000002DF680;
    sub_2CE350(v352);
    v346 = sub_2CCAE0();

    (*(v112 + 8))(v113, v114);
    (v109[1])(v110, v111);
    v115 = (v347 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider);
LABEL_28:
    v162 = v115[3];
    v345 = v115[4];
    sub_35E0(v115, v162);
    v164 = v341;
    v163 = v342;
    v165 = v340;
    (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
    v166 = enum case for ActivityType.failed(_:);
    v167 = sub_2C9C20();
    v168 = *(v167 - 8);
    v169 = v339;
    (*(v168 + 104))(v339, v166, v167);
    (*(v168 + 56))(v169, 0, 1, v167);
    v170 = sub_2CA130();
    v171 = v338;
    (*(*(v170 - 8) + 56))(v338, 1, 1, v170);
    v172 = sub_2C98F0();
    v173 = v337;
    (*(*(v172 - 8) + 56))(v337, 1, 1, v172);
    sub_2CB4C0();

    sub_30B8(v173, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v171, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v169, &qword_34CB88, &unk_2D0D90);
    (*(v163 + 8))(v165, v164);
    return sub_1FC5F8(v343, v344);
  }

  v148 = v320;
  v101(v320, v346, v71);
  v149 = sub_2CDFE0();
  v150 = sub_2CE680();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    *v151 = 134217984;
    *(v151 + 4) = v100;
    _os_log_impl(&dword_0, v149, v150, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Media API call returned %ld, will attempt a retry if we haven't already done so once.", v151, 0xCu);
  }

  v75(v148, v71);
  v152 = v347;
  if (*(v347 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState))
  {
    v101(v324, v346, v71);
    v153 = sub_2CDFE0();
    v154 = sub_2CE680();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&dword_0, v153, v154, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Already attempted a retry of Media API call, will not do so again.", v155, 2u);
    }

    v75(v324, v71);
    v156 = v336;
    v157 = v334;
    v158 = v335;
    (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
    v159 = v333;
    v160 = v331;
    v161 = v332;
    (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.cannotSwitchPreference(_:), v332);
    v346 = sub_2CCAE0();
    (*(v159 + 8))(v160, v161);
    (v156[1])(v157, v158);
    v115 = (v152 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider);
    goto LABEL_28;
  }

  *(v347 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState) = 1;
  v101(v323, v346, v71);
  v187 = sub_2CDFE0();
  v188 = sub_2CE670();
  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    *v189 = 0;
    _os_log_impl(&dword_0, v187, v188, "SwitchPodcastNewsPreferenceFlow#handleSettingPreference Attempting a retry of Media API call.", v189, 2u);
  }

  v75(v323, v71);
  v190 = v336;
  v191 = v334;
  v192 = v335;
  (v336[13])(v334, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v335);
  v193 = v333;
  v194 = v331;
  v195 = v332;
  (*(v333 + 104))(v331, enum case for AdditionalMetricsDescription.SourceFunction.retrySwitchPreference(_:), v332);
  v346 = sub_2CCAE0();
  (*(v193 + 8))(v194, v195);
  (v190[1])(v191, v192);
  v196 = *(v152 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24);
  v347 = *(v152 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((v152 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider), v196);
  v198 = v341;
  v197 = v342;
  v199 = v340;
  (*(v342 + 104))(v340, enum case for TypeOfIntent.switchNewsPreference(_:), v341);
  v200 = enum case for ActivityType.failed(_:);
  v201 = sub_2C9C20();
  v202 = *(v201 - 8);
  v203 = v339;
  (*(v202 + 104))(v339, v200, v201);
  (*(v202 + 56))(v203, 0, 1, v201);
  v204 = sub_2CA130();
  v205 = v338;
  (*(*(v204 - 8) + 56))(v338, 1, 1, v204);
  v206 = sub_2C98F0();
  v207 = v337;
  (*(*(v206 - 8) + 56))(v337, 1, 1, v206);
  sub_2CB4C0();

  sub_30B8(v207, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v205, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v203, &qword_34CB88, &unk_2D0D90);
  (*(v197 + 8))(v199, v198);
  v208 = v316;
  sub_2C9E70();
  v343(v208);
  return (*(v317 + 8))(v208, v318);
}

uint64_t sub_1FC5F8(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v96 = a1;
  v95 = sub_2CE000();
  v3 = *(v95 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v95);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v93 = &v92 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v92 - v11;
  v13 = __chkstk_darwin(v10);
  v94 = &v92 - v14;
  __chkstk_darwin(v13);
  v16 = &v92 - v15;
  v17 = sub_20410(&qword_354F10, &unk_2D7330);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = (&v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v92 - v22;
  v24 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
  swift_beginAccess();
  v97 = v2;
  v25 = v2 + v24;
  v26 = v23;
  sub_F3F4(v25, v23, &qword_354F10, &unk_2D7330);
  v27 = sub_2CA870();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v23, 1, v27) == 1)
  {
    goto LABEL_2;
  }

  sub_F3F4(v23, v21, &qword_354F10, &unk_2D7330);
  v34 = (*(v28 + 88))(v21, v27);
  v35 = v21;
  if (v34 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v93 = v26;
    (*(v28 + 96))(v21, v27);
    v36 = *(v21 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v37 = v3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = v95;
    v39 = sub_3ED0(v95, static Logger.default);
    swift_beginAccess();
    v92 = *(v37 + 16);
    v92(v16, v39, v38);
    v40 = sub_2CDFE0();
    v41 = sub_2CE670();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog received .NLv3IntentPlusServerConversion parse.", v42, 2u);
    }

    v43 = *(v37 + 8);
    v43(v16, v38);
    v44 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v45 = v44;
      v46 = sub_112C0(_swiftEmptyArrayStorage);
      v104 = v46;
      v47 = sub_1D15EC();
      if (v48)
      {
        *(&v102 + 1) = &type metadata for String;
        *&v101 = v47;
        *(&v101 + 1) = v48;
        sub_E2DC(&v101, v100);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v46;
        sub_237690(v100, 0x5474736163646F70, 0xEC0000006369706FLL, isUniquelyReferenced_nonNull_native);
        v104 = v99;
      }

      else
      {
        sub_236110(0x5474736163646F70, 0xEC0000006369706FLL, &v101);
        sub_30B8(&v101, &qword_34CEA0, &qword_2D0FC0);
      }

      v68 = sub_1D05E4();
      if (v69)
      {
        *(&v102 + 1) = &type metadata for String;
        *&v101 = v68;
        *(&v101 + 1) = v69;
        sub_E2DC(&v101, v100);
        v70 = v104;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v70;
        sub_237690(v100, 0xD000000000000016, 0x80000000002DE7C0, v71);
        v72 = v99;
      }

      else
      {
        sub_236110(0xD000000000000016, 0x80000000002DE7C0, &v101);
        sub_30B8(&v101, &qword_34CEA0, &qword_2D0FC0);
        v72 = v104;
      }

      v73 = v97;
      v74 = *(v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_playMediaCatDialogService);
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      v75 = swift_allocObject();
      v76 = v96;
      v75[2] = v73;
      v75[3] = v76;
      v75[4] = v98;

      sub_23CFF0(v72, 0, &v101, sub_203634, v75);

      sub_30B8(&v101, &qword_34C6C0, &qword_2D0710);
    }

    else
    {

      v64 = v94;
      v92(v94, v39, v38);
      v65 = sub_2CDFE0();
      v66 = sub_2CE680();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_0, v65, v66, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Failed to build playMediaIntent.", v67, 2u);
      }

      v43(v64, v38);
      sub_1FD78C(v96, v98);
    }

    v77 = sub_2CAFE0();
    (*(*(v77 - 8) + 8))(v35, v77);
    v26 = v93;
  }

  else
  {
    if (v34 != enum case for Parse.pommesResponse(_:))
    {
      (*(v28 + 8))(v21, v27);
LABEL_2:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v29 = v95;
      v30 = sub_3ED0(v95, static Logger.default);
      swift_beginAccess();
      (*(v3 + 16))(v7, v30, v29);
      v31 = sub_2CDFE0();
      v32 = sub_2CE680();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Unexpected parse type.", v33, 2u);
      }

      (*(v3 + 8))(v7, v29);
      sub_1FD78C(v96, v98);
      return sub_30B8(v26, &qword_354F10, &unk_2D7330);
    }

    (*(v28 + 96))(v21, v27);
    v94 = *v21;
    v50 = v3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v51 = v95;
    v52 = sub_3ED0(v95, static Logger.default);
    swift_beginAccess();
    v53 = *(v50 + 16);
    v53(v12, v52, v51);
    v54 = sub_2CDFE0();
    v55 = sub_2CE670();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog received .pommesResponse parse.", v56, 2u);
    }

    v57 = *(v50 + 8);
    v57(v12, v51);
    v58 = sub_1B8014();
    if (v58)
    {
      v59 = v58;
      v60 = sub_112C0(_swiftEmptyArrayStorage);
      v104 = v60;
      v61 = sub_1D15EC();
      if (v62)
      {
        *(&v102 + 1) = &type metadata for String;
        *&v101 = v61;
        *(&v101 + 1) = v62;
        sub_E2DC(&v101, v100);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v60;
        sub_237690(v100, 0x5474736163646F70, 0xEC0000006369706FLL, v63);
        v104 = v99;
      }

      else
      {
        sub_236110(0x5474736163646F70, 0xEC0000006369706FLL, &v101);
        sub_30B8(&v101, &qword_34CEA0, &qword_2D0FC0);
      }

      v82 = sub_1D05E4();
      if (v83)
      {
        *(&v102 + 1) = &type metadata for String;
        *&v101 = v82;
        *(&v101 + 1) = v83;
        sub_E2DC(&v101, v100);
        v84 = v104;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v84;
        sub_237690(v100, 0xD000000000000016, 0x80000000002DE7C0, v85);
        v86 = v99;
      }

      else
      {
        sub_236110(0xD000000000000016, 0x80000000002DE7C0, &v101);
        sub_30B8(&v101, &qword_34CEA0, &qword_2D0FC0);
        v86 = v104;
      }

      v87 = v97;
      v88 = *(v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_playMediaCatDialogService);
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      v89 = swift_allocObject();
      v90 = v96;
      v89[2] = v87;
      v89[3] = v90;
      v89[4] = v98;

      sub_23CFF0(v86, 0, &v101, sub_2034A8, v89);

      sub_30B8(&v101, &qword_34C6C0, &qword_2D0710);
    }

    else
    {
      v78 = v93;
      v53(v93, v52, v51);
      v79 = sub_2CDFE0();
      v80 = sub_2CE680();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Failed to build playMediaIntent.", v81, 2u);
      }

      v57(v78, v51);
      sub_1FD78C(v96, v98);
    }
  }

  return sub_30B8(v26, &qword_354F10, &unk_2D7330);
}

uint64_t sub_1FD2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v7 = sub_2CE000();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v45 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v42 - v15;
  v17 = sub_20410(&unk_3519A0, &qword_2D0980);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v42 - v19);
  sub_F3F4(a1, v42 - v19, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42[0] = a3;
    v42[1] = a2;
    v49[5] = *v20;
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v21 = v49[4];
      v23 = v43;
      v22 = v44;
      v24 = v45;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v25 = sub_3ED0(v22, static Logger.default);
      swift_beginAccess();
      (*(v23 + 16))(v24, v25, v22);
      v26 = v21;
      v27 = sub_2CDFE0();
      v28 = sub_2CE680();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v49[0] = v30;
        *v29 = 136315138;
        v31 = [v26 localizedDescription];
        v32 = sub_2CE270();
        v33 = v22;
        v35 = v34;

        v47 = v32;
        v48 = v35;
        v36 = sub_2CE3C0();
        v38 = sub_3F08(v36, v37, v49);

        *(v29 + 4) = v38;
        _os_log_impl(&dword_0, v27, v28, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Error creating dialog %s.", v29, 0xCu);
        sub_306C(v30);

        (*(v23 + 8))(v45, v33);
      }

      else
      {

        (*(v23 + 8))(v24, v22);
      }

      sub_1FD78C(v42[0], v46);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    sub_24BE0(v20, v16);
    sub_F3F4(v16, v14, &qword_34C6E8, &unk_2D0FF0);
    v39 = *&v14[*(v10 + 48)];
    sub_1FDF90(v14, v39, a3, v46);

    sub_30B8(v16, &qword_34C6E8, &unk_2D0FF0);
    v40 = sub_2CA130();
    return (*(*(v40 - 8) + 8))(v14, v40);
  }

  return result;
}

uint64_t sub_1FD7C8(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, void, _OWORD *, uint64_t, void *))
{
  v26 = a5;
  v27 = a6;
  v8 = v6;
  v25 = a1;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v16, v17, a3, v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v19 = *(v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_playMediaCatDialogService);
  v20 = sub_112C0(_swiftEmptyArrayStorage);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v21 = swift_allocObject();
  v22 = v25;
  v21[2] = v8;
  v21[3] = v22;
  v21[4] = a2;

  v27(v20, 0, v28, v26, v21);

  return sub_30B8(v28, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1FDA2C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, const char *a5)
{
  v48 = a5;
  v49 = a2;
  v8 = sub_2C9EC0();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  __chkstk_darwin(v8);
  v52 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2CE000();
  v51 = *(v55 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v55);
  v50 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v47 - v18;
  v20 = sub_20410(&unk_3519A0, &qword_2D0980);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (v47 - v22);
  sub_F3F4(a1, v47 - v22, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = a3;
    v47[1] = a4;
    v58[5] = *v23;
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v24 = v58[4];
      v25 = v55;
      v26 = v50;
      v27 = v51;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v28 = sub_3ED0(v25, static Logger.default);
      swift_beginAccess();
      (*(v27 + 16))(v26, v28, v25);
      v29 = v24;
      v30 = sub_2CDFE0();
      v31 = sub_2CE680();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v58[0] = v33;
        *v32 = 136315138;
        v34 = [v29 localizedDescription];
        v35 = sub_2CE270();
        v36 = v27;
        v38 = v37;

        v56 = v35;
        v57 = v38;
        v39 = sub_2CE3C0();
        v41 = sub_3F08(v39, v40, v58);

        *(v32 + 4) = v41;
        _os_log_impl(&dword_0, v30, v31, v48, v32, 0xCu);
        sub_306C(v33);

        (*(v36 + 8))(v26, v55);
      }

      else
      {

        (*(v27 + 8))(v26, v25);
      }

      v45 = v49;
      v46 = v52;
      sub_2C9EB0();
      v45(v46);

      (*(v53 + 8))(v46, v54);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    sub_24BE0(v23, v19);
    sub_F3F4(v19, v17, &qword_34C6E8, &unk_2D0FF0);
    v42 = *&v17[*(v13 + 48)];
    sub_1FDF90(v17, v42, a3, a4);

    sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);
    v43 = sub_2CA130();
    return (*(*(v43 - 8) + 8))(v17, v43);
  }

  return result;
}

uint64_t sub_1FDF90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v38 = sub_2CA910();
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v38);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v37 - v22;
  v24 = sub_2CA130();
  (*(*(v24 - 8) + 16))(v23, a1, v24);
  *&v23[*(v20 + 56)] = a2;
  v25 = qword_34BF58;
  v26 = a2;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v27, v14);
  v28 = sub_2CDFE0();
  v29 = sub_2CE690();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "SwitchPodcastNewsPreferenceFlow#publishDialog Reached logic.", v30, 2u);
  }

  (*(v15 + 8))(v18, v14);
  sub_2CB5B0();
  v31 = sub_2CA000();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_2C9DC0();
  sub_30B8(&v41, &qword_34CC80, &qword_2D1520);
  sub_30B8(v9, &unk_353020, &unk_2D0970);
  v32 = *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher + 32);
  sub_35E0((v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher), *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher + 24));
  v33 = v38;
  *(&v42 + 1) = v38;
  v43 = &protocol witness table for AceOutput;
  v34 = sub_F390(&v41);
  (*(v10 + 16))(v34, v13, v33);
  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 24) = v40;

  sub_2CA010();

  (*(v10 + 8))(v13, v33);
  sub_30B8(v23, &qword_34C6E8, &unk_2D0FF0);
  return sub_306C(&v41);
}

uint64_t sub_1FE448(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_2C9EC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v19 = v5;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "SwitchPodcastNewsPreferenceFlow#publishDialog Dialog successfully generated and published.", v17, 2u);
    v5 = v19;
  }

  (*(v10 + 8))(v13, v9);
  sub_2C9EB0();
  a3(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1FE6CC()
{
  v1 = v0;
  v521 = sub_2CCB20();
  v520 = *(v521 - 8);
  v2 = *(v520 + 64);
  __chkstk_darwin(v521);
  v519 = &v513 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_34CC90, qword_2D40E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v551 = &v513 - v6;
  v556 = sub_2CAA00();
  v555 = *(v556 - 1);
  v7 = *(v555 + 64);
  __chkstk_darwin(v556);
  v552 = &v513 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v579 = &v513 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v580 = &v513 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v581 = &v513 - v17;
  v18 = sub_2CB970();
  v19 = *(v18 - 8);
  v583 = v18;
  v584 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v582 = &v513 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCB30();
  v23 = *(v22 - 8);
  v574 = v22;
  v575 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v573 = &v513 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2CCAC0();
  v27 = *(v26 - 8);
  v577 = v26;
  v578 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v576 = &v513 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v543 = sub_2CD540();
  v545 = *(v543 - 8);
  v30 = *(v545 + 64);
  __chkstk_darwin(v543);
  v523 = &v513 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v549 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v32 = *(*(v549 - 8) + 64);
  v33 = __chkstk_darwin(v549);
  v529 = &v513 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v540 = &v513 - v35;
  v36 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v522 = &v513 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v525 = &v513 - v41;
  v42 = __chkstk_darwin(v40);
  v526 = &v513 - v43;
  v44 = __chkstk_darwin(v42);
  v530 = &v513 - v45;
  v46 = __chkstk_darwin(v44);
  v546 = &v513 - v47;
  __chkstk_darwin(v46);
  v547 = &v513 - v48;
  v562 = sub_2CD4C0();
  v563 = *(v562 - 8);
  v49 = *(v563 + 64);
  __chkstk_darwin(v562);
  v537 = &v513 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v561 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v51 = *(*(v561 - 8) + 64);
  v52 = __chkstk_darwin(v561);
  v533 = &v513 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v542 = &v513 - v55;
  __chkstk_darwin(v54);
  v560 = &v513 - v56;
  v57 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v58 = *(*(v57 - 8) + 64);
  v59 = __chkstk_darwin(v57 - 8);
  v524 = &v513 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v538 = &v513 - v62;
  v63 = __chkstk_darwin(v61);
  v539 = &v513 - v64;
  v65 = __chkstk_darwin(v63);
  v531 = &v513 - v66;
  v67 = __chkstk_darwin(v65);
  v548 = &v513 - v68;
  v69 = __chkstk_darwin(v67);
  v541 = &v513 - v70;
  v71 = __chkstk_darwin(v69);
  v535 = &v513 - v72;
  v73 = __chkstk_darwin(v71);
  v553 = &v513 - v74;
  __chkstk_darwin(v73);
  v554 = &v513 - v75;
  v76 = sub_20410(&qword_34D360, &qword_2D11E0);
  v77 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76 - 8);
  v559 = &v513 - v78;
  v564 = type metadata accessor for AudioNLv3Intent();
  v558 = *(v564 - 8);
  v79 = *(v558 + 64);
  __chkstk_darwin(v564);
  v566 = &v513 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2CE000();
  v585 = *(v81 - 8);
  v586 = v81;
  v82 = *(v585 + 8);
  v83 = __chkstk_darwin(v81);
  v570 = &v513 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v83);
  v567 = &v513 - v86;
  v87 = __chkstk_darwin(v85);
  v532 = &v513 - v88;
  v89 = __chkstk_darwin(v87);
  v528 = &v513 - v90;
  v91 = __chkstk_darwin(v89);
  v536 = &v513 - v92;
  v93 = __chkstk_darwin(v91);
  v518 = &v513 - v94;
  v95 = __chkstk_darwin(v93);
  v517 = &v513 - v96;
  v97 = __chkstk_darwin(v95);
  v557 = &v513 - v98;
  v99 = __chkstk_darwin(v97);
  v550 = &v513 - v100;
  v101 = __chkstk_darwin(v99);
  v544 = &v513 - v102;
  v103 = __chkstk_darwin(v101);
  v534 = &v513 - v104;
  v105 = __chkstk_darwin(v103);
  v527 = &v513 - v106;
  __chkstk_darwin(v105);
  v565 = &v513 - v107;
  v108 = sub_20410(&qword_354F10, &unk_2D7330);
  v109 = *(*(v108 - 8) + 64);
  v110 = __chkstk_darwin(v108 - 8);
  v568 = (&v513 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __chkstk_darwin(v110);
  v572 = &v513 - v113;
  __chkstk_darwin(v112);
  v569 = &v513 - v114;
  v115 = sub_2CA7B0();
  v116 = *(v115 - 8);
  v117 = *(v116 + 64);
  __chkstk_darwin(v115);
  v119 = &v513 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_20410(&qword_34E480, &qword_2D2280);
  v121 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120 - 8);
  v123 = &v513 - v122;
  v124 = sub_2CA870();
  v571 = *(v124 - 8);
  v125 = *(v571 + 64);
  v126 = __chkstk_darwin(v124);
  v128 = (&v513 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = __chkstk_darwin(v126);
  v131 = &v513 - v130;
  __chkstk_darwin(v129);
  v133 = &v513 - v132;
  v134 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
  swift_beginAccess();
  v135 = &v1[v134];
  v136 = v1;
  sub_F3F4(v135, v123, &qword_34E480, &qword_2D2280);
  if ((*(v116 + 48))(v123, 1, v115))
  {
    sub_30B8(v123, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v137 = v586;
    v138 = sub_3ED0(v586, static Logger.default);
    swift_beginAccess();
    v139 = v585;
    v140 = v570;
    (*(v585 + 2))(v570, v138, v137);
    v141 = sub_2CDFE0();
    v142 = sub_2CE680();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_0, v141, v142, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Parse is nil.", v143, 2u);
    }

    (*(v139 + 1))(v140, v137);
    v145 = v577;
    v144 = v578;
    v146 = v576;
    (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
    v148 = v574;
    v147 = v575;
    v149 = v573;
    (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
    v586 = sub_2CCAE0();
    (*(v147 + 8))(v149, v148);
    (*(v144 + 8))(v146, v145);
    v150 = *&v136[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
    v585 = *&v136[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
    sub_35E0(&v136[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v150);
    v152 = v583;
    v151 = v584;
    v153 = v582;
    (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
    v154 = enum case for ActivityType.failed(_:);
    v155 = sub_2C9C20();
    v156 = *(v155 - 8);
    v157 = v581;
    (*(v156 + 104))(v581, v154, v155);
    (*(v156 + 56))(v157, 0, 1, v155);
    v158 = sub_2CA130();
    v159 = v580;
    (*(*(v158 - 8) + 56))(v580, 1, 1, v158);
    v160 = sub_2C98F0();
    v161 = v579;
    (*(*(v160 - 8) + 56))(v579, 1, 1, v160);
    sub_2CB4C0();

    sub_30B8(v161, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v159, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v157, &qword_34CB88, &unk_2D0D90);
    (*(v151 + 8))(v153, v152);
    return 0;
  }

  v515 = v128;
  (*(v116 + 16))(v119, v123, v115);
  sub_30B8(v123, &qword_34E480, &qword_2D2280);
  sub_2CA790();
  (*(v116 + 8))(v119, v115);
  v162 = v571;
  (*(v571 + 32))(v133, v131, v124);
  v163 = *(v162 + 16);
  v164 = v569;
  v570 = v133;
  v514 = v163;
  v163(v569, v133, v124);
  (*(v162 + 56))(v164, 0, 1, v124);
  v165 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
  swift_beginAccess();
  sub_FECE8(v164, &v136[v165], &qword_354F10, &unk_2D7330);
  swift_endAccess();
  v569 = v136;
  v166 = v572;
  sub_F3F4(&v136[v165], v572, &qword_354F10, &unk_2D7330);
  v167 = (*(v162 + 48))(v166, 1, v124);
  v168 = v124;
  v170 = v585;
  v169 = v586;
  v516 = v168;
  if (v167 == 1)
  {
    goto LABEL_8;
  }

  v194 = v568;
  sub_F3F4(v166, v568, &qword_354F10, &unk_2D7330);
  v195 = (*(v162 + 88))(v194, v168);
  if (v195 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    if (v195 != enum case for Parse.pommesResponse(_:))
    {
      (*(v162 + 8))(v194, v168);
LABEL_8:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v171 = sub_3ED0(v169, static Logger.default);
      swift_beginAccess();
      v172 = v567;
      (*(v170 + 2))(v567, v171, v169);
      v173 = sub_2CDFE0();
      v174 = sub_2CE680();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        *v175 = 0;
        _os_log_impl(&dword_0, v173, v174, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse received non-pommesResponse parse.", v175, 2u);
      }

      (*(v170 + 1))(v172, v169);
      v177 = v577;
      v176 = v578;
      v178 = v576;
      (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
      v180 = v574;
      v179 = v575;
      v181 = v573;
      (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
      v586 = sub_2CCAE0();
      (*(v179 + 8))(v181, v180);
      (*(v176 + 8))(v178, v177);
      v182 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
      v585 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
      sub_35E0(&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v182);
      v184 = v583;
      v183 = v584;
      v185 = v582;
      (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
      v186 = enum case for ActivityType.failed(_:);
      v187 = sub_2C9C20();
      v188 = *(v187 - 8);
      v189 = v581;
      (*(v188 + 104))(v581, v186, v187);
      (*(v188 + 56))(v189, 0, 1, v187);
      v190 = sub_2CA130();
      v191 = v580;
      (*(*(v190 - 8) + 56))(v580, 1, 1, v190);
      v192 = sub_2C98F0();
      v193 = v579;
      (*(*(v192 - 8) + 56))(v579, 1, 1, v192);
      sub_2CB4C0();

      sub_30B8(v193, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v191, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v189, &qword_34CB88, &unk_2D0D90);
      (*(v183 + 8))(v185, v184);
      goto LABEL_13;
    }

    (*(v162 + 96))(v194, v168);
    v229 = *v194;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v230 = v169;
    v231 = sub_3ED0(v169, static Logger.default);
    swift_beginAccess();
    v568 = *(v170 + 2);
    (v568)(v557, v231, v230);
    v232 = sub_2CDFE0();
    v233 = sub_2CE670();
    v234 = os_log_type_enabled(v232, v233);
    v235 = v555;
    v236 = v551;
    if (v234)
    {
      v237 = swift_slowAlloc();
      *v237 = 0;
      _os_log_impl(&dword_0, v232, v233, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse received .pommesResponse parse.", v237, 2u);
    }

    v240 = *(v170 + 1);
    v238 = v170 + 8;
    v239 = v240;
    v241 = v586;
    v240(v557, v586);
    v242 = v229;
    v243 = sub_1B7F14();
    v244 = v556;
    if (!v243)
    {
      v278 = v532;
      (v568)(v532, v231, v241);
      v279 = v242;
      v280 = sub_2CDFE0();
      v281 = sub_2CE680();

      v282 = os_log_type_enabled(v280, v281);
      v585 = v279;
      if (v282)
      {
        v283 = swift_slowAlloc();
        v284 = swift_slowAlloc();
        v587 = v284;
        *v283 = 136315138;
        sub_2CDAD0();
        sub_2CDA50();
        v285 = v278;
        v286 = sub_2CE420();
        v288 = v287;

        v289 = sub_3F08(v286, v288, &v587);

        *(v283 + 4) = v289;
        _os_log_impl(&dword_0, v280, v281, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse pommesResponse doesn't contain audioExperience %s.", v283, 0xCu);
        sub_306C(v284);

        v239(v285, v586);
      }

      else
      {

        v239(v278, v241);
      }

      v329 = v569;
      v331 = v577;
      v330 = v578;
      v332 = v576;
      (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
      v334 = v574;
      v333 = v575;
      v335 = v573;
      (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
      v586 = sub_2CCAE0();
      (*(v333 + 8))(v335, v334);
      (*(v330 + 8))(v332, v331);
      v336 = *&v329[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
      v578 = *&v329[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
      sub_35E0(&v329[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v336);
      v337 = v583;
      v338 = v584;
      v339 = v582;
      (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
      v340 = enum case for ActivityType.failed(_:);
      v341 = sub_2C9C20();
      v342 = *(v341 - 8);
      v343 = v581;
      (*(v342 + 104))(v581, v340, v341);
      (*(v342 + 56))(v343, 0, 1, v341);
      v344 = sub_2CA130();
      v345 = v580;
      (*(*(v344 - 8) + 56))(v580, 1, 1, v344);
      v346 = sub_2C98F0();
      v347 = v579;
      (*(*(v346 - 8) + 56))(v579, 1, 1, v346);
      sub_2CB4C0();

      sub_30B8(v347, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v345, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v343, &qword_34CB88, &unk_2D0D90);
      (*(v338 + 8))(v339, v337);
      goto LABEL_13;
    }

    v567 = v242;
    v245 = v552;
    v566 = v243;
    sub_2CDA40();
    sub_2CD700();
    (*(v235 + 16))(v236, v245, v244);
    (*(v235 + 56))(v236, 0, 1, v244);
    v246 = sub_2CD600();
    if (!v246)
    {
      v303 = v528;
      v304 = v586;
      (v568)(v528, v231, v586);
      v305 = sub_2CDFE0();
      v306 = sub_2CE680();
      if (os_log_type_enabled(v305, v306))
      {
        v307 = swift_slowAlloc();
        *v307 = 0;
        _os_log_impl(&dword_0, v305, v306, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse AudioUsoIntent failed to be constructed.", v307, 2u);
      }

      v239(v303, v304);
      v309 = v577;
      v308 = v578;
      v310 = v576;
      (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
      v312 = v574;
      v311 = v575;
      v313 = v573;
      (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
      v586 = sub_2CCAE0();
      (*(v311 + 8))(v313, v312);
      (*(v308 + 8))(v310, v309);
      v314 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
      v585 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
      sub_35E0(&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v314);
      v315 = v583;
      v316 = v584;
      v317 = v582;
      (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
      v318 = enum case for ActivityType.failed(_:);
      v319 = sub_2C9C20();
      v320 = *(v319 - 8);
      v321 = v581;
      (*(v320 + 104))(v581, v318, v319);
      (*(v320 + 56))(v321, 0, 1, v319);
      v322 = sub_2CA130();
      v323 = v580;
      (*(*(v322 - 8) + 56))(v580, 1, 1, v322);
      v324 = sub_2C98F0();
      v325 = v579;
      (*(*(v324 - 8) + 56))(v579, 1, 1, v324);
      sub_2CB4C0();

      goto LABEL_97;
    }

    v560 = v231;
    v564 = v239;
    v585 = v238;
    v247 = v539;
    v565 = v246;
    sub_2CD6C0();
    v248 = v563;
    v249 = v538;
    v250 = v562;
    (*(v563 + 104))(v538, enum case for CommonAudio.Verb.update(_:), v562);
    (*(v248 + 56))(v249, 0, 1, v250);
    v251 = *(v561 + 48);
    v252 = v533;
    sub_F3F4(v247, v533, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v249, v252 + v251, &qword_34D6B8, &qword_2D15B0);
    v253 = *(v248 + 48);
    if (v253(v252, 1, v250) == 1)
    {
      sub_30B8(v249, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v247, &qword_34D6B8, &qword_2D15B0);
      v254 = v253(v252 + v251, 1, v250);
      v255 = v536;
      v256 = v560;
      if (v254 == 1)
      {
        sub_30B8(v252, &qword_34D6B8, &qword_2D15B0);
LABEL_88:
        v421 = v526;
        sub_2CD6F0();
        v422 = v545;
        v423 = v525;
        v424 = v543;
        (*(v545 + 104))(v525, enum case for CommonAudio.MediaType.news(_:), v543);
        (*(v422 + 56))(v423, 0, 1, v424);
        v425 = *(v549 + 48);
        v426 = v529;
        sub_F3F4(v421, v529, &qword_34D6D0, qword_2D34A0);
        v427 = v426;
        sub_F3F4(v423, v426 + v425, &qword_34D6D0, qword_2D34A0);
        v428 = *(v422 + 48);
        if (v428(v427, 1, v424) == 1)
        {
          sub_30B8(v423, &qword_34D6D0, qword_2D34A0);
          v429 = v529;
          sub_30B8(v421, &qword_34D6D0, qword_2D34A0);
          v430 = v428(v429 + v425, 1, v424);
          v328 = v564;
          if (v430 == 1)
          {
            sub_30B8(v429, &qword_34D6D0, qword_2D34A0);
LABEL_106:
            v459 = v517;
            (v568)(v517, v256, v586);
            v460 = sub_2CDFE0();
            v461 = sub_2CE670();
            if (os_log_type_enabled(v460, v461))
            {
              v462 = swift_slowAlloc();
              *v462 = 0;
              _os_log_impl(&dword_0, v460, v461, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Correct update verb and news mediaType present in AudioUsoIntent.", v462, 2u);
            }

            v463 = v586;
            v328(v459, v586);
            v464 = sub_2CD650();
            v465 = v569;
            v466 = &v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId];
            v467 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId + 8];
            *v466 = v464;
            v466[1] = v468;

            v469 = sub_2CD670();
            v470 = &v465[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier];
            v471 = *&v465[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier + 8];
            *v470 = v469;
            v470[1] = v472;

            v473 = v518;
            v474 = v256;
            v475 = v463;
            (v568)(v518, v474, v463);

            v476 = sub_2CDFE0();
            v477 = sub_2CE670();

            if (os_log_type_enabled(v476, v477))
            {
              LODWORD(v568) = v477;
              v478 = swift_slowAlloc();
              v479 = swift_slowAlloc();
              *v478 = 138412546;
              v480 = v466[1];
              if (v480)
              {
                v481 = *v466;
                sub_10C40();
                swift_allocError();
                *v482 = v481;
                v482[1] = v480;

                v483 = _swift_stdlib_bridgeErrorToNSError();
                v484 = v483;
              }

              else
              {
                v483 = 0;
                v484 = 0;
              }

              *(v478 + 4) = v483;
              *v479 = v484;
              *(v478 + 12) = 2112;
              v485 = v470[1];
              if (v485)
              {
                v486 = *v470;
                sub_10C40();
                swift_allocError();
                *v487 = v486;
                v487[1] = v485;

                v488 = _swift_stdlib_bridgeErrorToNSError();
                v489 = v488;
              }

              else
              {
                v488 = 0;
                v489 = 0;
              }

              v465 = v569;
              *(v478 + 14) = v488;
              v479[1] = v489;
              _os_log_impl(&dword_0, v476, v568, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse newsPodcastTopicId: %@ & newsPodcastIdentifier: %@.", v478, 0x16u);
              sub_20410(&unk_34FC00, &unk_2D0150);
              swift_arrayDestroy();

              v475 = v586;
            }

            v328(v473, v475);
            v491 = v577;
            v490 = v578;
            v492 = v576;
            (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
            v494 = v574;
            v493 = v575;
            v495 = v573;
            (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
            v496 = v520;
            v497 = v519;
            v498 = v521;
            (*(v520 + 104))(v519, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v521);
            v499 = sub_2CCAD0();
            v585 = v500;
            v586 = v499;
            (*(v496 + 8))(v497, v498);
            (*(v493 + 8))(v495, v494);
            (*(v490 + 8))(v492, v491);
            v501 = *&v465[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
            v578 = *&v465[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
            sub_35E0(&v465[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v501);
            v502 = v583;
            v503 = v584;
            v504 = v582;
            (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
            v505 = enum case for ActivityType.completed(_:);
            v506 = sub_2C9C20();
            v507 = *(v506 - 8);
            v508 = v581;
            (*(v507 + 104))(v581, v505, v506);
            (*(v507 + 56))(v508, 0, 1, v506);
            v509 = sub_2CA130();
            v510 = v580;
            (*(*(v509 - 8) + 56))(v580, 1, 1, v509);
            v511 = sub_2C98F0();
            v512 = v579;
            (*(*(v511 - 8) + 56))(v579, 1, 1, v511);
            sub_2CB4C0();

            sub_30B8(v512, &qword_34CB78, &unk_2D0D80);
            sub_30B8(v510, &qword_34CB80, &unk_2D0B30);
            sub_30B8(v508, &qword_34CB88, &unk_2D0D90);
            (*(v503 + 8))(v504, v502);
            (*(v555 + 8))(v552, v556);
            (*(v571 + 8))(v570, v516);
            goto LABEL_104;
          }
        }

        else
        {
          v431 = v522;
          sub_F3F4(v427, v522, &qword_34D6D0, qword_2D34A0);
          if (v428(v427 + v425, 1, v424) != 1)
          {
            v455 = v545;
            v456 = v427 + v425;
            v457 = v523;
            (*(v545 + 32))(v523, v456, v424);
            sub_2035E8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
            LODWORD(v563) = sub_2CE250();
            v458 = *(v455 + 8);
            v458(v457, v424);
            sub_30B8(v525, &qword_34D6D0, qword_2D34A0);
            sub_30B8(v526, &qword_34D6D0, qword_2D34A0);
            v458(v431, v424);
            sub_30B8(v427, &qword_34D6D0, qword_2D34A0);
            v328 = v564;
            v255 = v536;
            if (v563)
            {
              goto LABEL_106;
            }

            goto LABEL_94;
          }

          sub_30B8(v525, &qword_34D6D0, qword_2D34A0);
          v429 = v529;
          sub_30B8(v526, &qword_34D6D0, qword_2D34A0);
          (*(v545 + 8))(v431, v424);
          v328 = v564;
        }

        sub_30B8(v429, &qword_34D6A8, &unk_2D15A0);
        v255 = v536;
LABEL_94:
        v432 = v256;
        v433 = v586;
        (v568)(v255, v432, v586);
        v434 = sub_2CDFE0();
        v435 = sub_2CE680();
        if (os_log_type_enabled(v434, v435))
        {
          v436 = swift_slowAlloc();
          *v436 = 0;
          _os_log_impl(&dword_0, v434, v435, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Update verb / news mediaType not present in AudioUsoIntent.", v436, 2u);
        }

        v328(v255, v433);
        v438 = v577;
        v437 = v578;
        v439 = v576;
        (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
        v441 = v574;
        v440 = v575;
        v442 = v573;
        (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
        v586 = sub_2CCAE0();
        (*(v440 + 8))(v442, v441);
        (*(v437 + 8))(v439, v438);
        v443 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
        v585 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
        sub_35E0(&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v443);
        v315 = v583;
        v316 = v584;
        v317 = v582;
        (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
        v444 = enum case for ActivityType.failed(_:);
        v445 = sub_2C9C20();
        v446 = *(v445 - 8);
        v321 = v581;
        (*(v446 + 104))(v581, v444, v445);
        (*(v446 + 56))(v321, 0, 1, v445);
        v447 = sub_2CA130();
        v323 = v580;
        (*(*(v447 - 8) + 56))(v580, 1, 1, v447);
        v448 = sub_2C98F0();
        v325 = v579;
        (*(*(v448 - 8) + 56))(v579, 1, 1, v448);
        sub_2CB4C0();

LABEL_97:
        sub_30B8(v325, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v323, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v321, &qword_34CB88, &unk_2D0D90);
        (*(v316 + 8))(v317, v315);
        (*(v555 + 8))(v552, v556);
LABEL_13:
        (*(v571 + 8))(v570, v516);
LABEL_79:
        sub_30B8(v572, &qword_354F10, &unk_2D7330);
        return 0;
      }
    }

    else
    {
      v326 = v524;
      sub_F3F4(v252, v524, &qword_34D6B8, &qword_2D15B0);
      v327 = v253(v252 + v251, 1, v250);
      v255 = v536;
      if (v327 != 1)
      {
        v417 = v563;
        v418 = v252 + v251;
        v419 = v537;
        (*(v563 + 32))(v537, v418, v250);
        sub_2035E8(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
        LODWORD(v561) = sub_2CE250();
        v420 = *(v417 + 8);
        v420(v419, v250);
        sub_30B8(v538, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v539, &qword_34D6B8, &qword_2D15B0);
        v420(v326, v250);
        sub_30B8(v252, &qword_34D6B8, &qword_2D15B0);
        v328 = v564;
        v256 = v560;
        if ((v561 & 1) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_88;
      }

      sub_30B8(v538, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v539, &qword_34D6B8, &qword_2D15B0);
      (*(v563 + 8))(v326, v250);
      v256 = v560;
    }

    sub_30B8(v252, &qword_34D6B0, &unk_2D4FC0);
    v328 = v564;
    goto LABEL_94;
  }

  (*(v162 + 96))(v194, v168);
  v196 = *(v194 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v197 = sub_3ED0(v169, static Logger.default);
  swift_beginAccess();
  v198 = *(v170 + 2);
  v199 = v565;
  v555 = v197;
  v557 = v170 + 16;
  v556 = v198;
  (v198)(v565, v197, v169);
  v200 = sub_2CDFE0();
  v201 = sub_2CE670();
  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    *v202 = 0;
    _os_log_impl(&dword_0, v200, v201, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse received .NLv3IntentPlusServerConversion parse.", v202, 2u);
    v199 = v565;
  }

  v204 = *(v170 + 1);
  v203 = v170 + 8;
  v567 = v204;
  (v204)(v199, v169);
  v205 = v515;
  v514(v515, v570, v168);
  v206 = v559;
  sub_2B6170(v205, v559);
  if ((*(v558 + 48))(v206, 1, v564) == 1)
  {
    sub_30B8(v206, &qword_34D360, &qword_2D11E0);
    v207 = v550;
    (v556)(v550, v555, v169);
    v208 = sub_2CDFE0();
    v209 = sub_2CE680();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&dword_0, v208, v209, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse AudioNLv3Intent failed to be constructed.", v210, 2u);
    }

    (v567)(v207, v169);
    v212 = v577;
    v211 = v578;
    v213 = v576;
    (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
    v215 = v574;
    v214 = v575;
    v216 = v573;
    (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
    v586 = sub_2CCAE0();
    (*(v214 + 8))(v216, v215);
    (*(v211 + 8))(v213, v212);
    v217 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
    v585 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
    sub_35E0(&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v217);
    v219 = v583;
    v218 = v584;
    v220 = v582;
    (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
    v221 = enum case for ActivityType.failed(_:);
    v222 = sub_2C9C20();
    v223 = *(v222 - 8);
    v224 = v581;
    (*(v223 + 104))(v581, v221, v222);
    (*(v223 + 56))(v224, 0, 1, v222);
    v225 = sub_2CA130();
    v226 = v580;
    (*(*(v225 - 8) + 56))(v580, 1, 1, v225);
    v227 = sub_2C98F0();
    v228 = v579;
    (*(*(v227 - 8) + 56))(v579, 1, 1, v227);
    sub_2CB4C0();

    sub_30B8(v228, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v226, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v224, &qword_34CB88, &unk_2D0D90);
    (*(v218 + 8))(v220, v219);
LABEL_78:
    (*(v571 + 8))(v570, v516);
    v385 = sub_2CAFE0();
    (*(*(v385 - 8) + 8))(v568, v385);
    goto LABEL_79;
  }

  v585 = v203;
  sub_D416C(v206, v566);
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  v257 = qword_357108;
  v258 = sub_2035E8(&unk_351730, type metadata accessor for AudioNLv3Intent);
  v559 = v257;
  v558 = v258;
  sub_2CACA0();
  v259 = v563;
  v260 = (v563 + 56);
  v261 = v553;
  if (v587 == 11)
  {
    v262 = *v260;
    v263 = v554;
    v264 = v554;
    v265 = 1;
  }

  else
  {
    v263 = v554;
    sub_DEB38(v587, v554);
    v262 = *v260;
    v264 = v263;
    v265 = 0;
  }

  v266 = v562;
  v262(v264, v265, 1, v562);
  v267 = v561;
  v552 = *(v259 + 104);
  (v552)(v261, enum case for CommonAudio.Verb.update(_:), v266);
  v565 = v262;
  v262(v261, 0, 1, v266);
  v268 = *(v267 + 48);
  v269 = v560;
  sub_F3F4(v263, v560, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v261, v269 + v268, &qword_34D6B8, &qword_2D15B0);
  v270 = *(v259 + 48);
  if (v270(v269, 1, v266) == 1)
  {
    sub_30B8(v261, &qword_34D6B8, &qword_2D15B0);
    v271 = v560;
    sub_30B8(v263, &qword_34D6B8, &qword_2D15B0);
    if (v270(v271 + v268, 1, v266) == 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v272 = v535;
    sub_F3F4(v269, v535, &qword_34D6B8, &qword_2D15B0);
    if (v270(v269 + v268, 1, v266) != 1)
    {
      v300 = v563;
      v301 = v537;
      (*(v563 + 32))(v537, v269 + v268, v266);
      sub_2035E8(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
      LODWORD(v551) = sub_2CE250();
      v302 = *(v300 + 8);
      v302(v301, v266);
      sub_30B8(v553, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v554, &qword_34D6B8, &qword_2D15B0);
      v302(v272, v266);
      v295 = v549;
      sub_30B8(v560, &qword_34D6B8, &qword_2D15B0);
      v273 = v586;
      v274 = v565;
      if (v551)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    }

    sub_30B8(v553, &qword_34D6B8, &qword_2D15B0);
    v271 = v560;
    sub_30B8(v554, &qword_34D6B8, &qword_2D15B0);
    (*(v563 + 8))(v272, v266);
  }

  sub_30B8(v271, &qword_34D6B0, &unk_2D4FC0);
  v273 = v586;
  v274 = v565;
LABEL_45:
  sub_2CACA0();
  v275 = v541;
  if (v587 == 11)
  {
    v276 = v541;
    v277 = 1;
  }

  else
  {
    sub_DEB38(v587, v541);
    v276 = v275;
    v277 = 0;
  }

  v290 = v562;
  v274(v276, v277, 1, v562);
  v291 = v542;
  v292 = v548;
  (v552)(v548, enum case for CommonAudio.Verb.modify(_:), v290);
  v274(v292, 0, 1, v290);
  v293 = v292;
  v294 = *(v561 + 48);
  sub_F3F4(v275, v291, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v293, v291 + v294, &qword_34D6B8, &qword_2D15B0);
  if (v270(v291, 1, v290) == 1)
  {
    sub_30B8(v293, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v275, &qword_34D6B8, &qword_2D15B0);
    if (v270(v291 + v294, 1, v290) == 1)
    {
      v271 = v291;
LABEL_53:
      v295 = v549;
      sub_30B8(v271, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_68;
    }

LABEL_56:
    v297 = &qword_34D6B0;
    v298 = &unk_2D4FC0;
    v299 = v291;
LABEL_74:
    sub_30B8(v299, v297, v298);
    goto LABEL_75;
  }

  v296 = v531;
  sub_F3F4(v291, v531, &qword_34D6B8, &qword_2D15B0);
  if (v270(v291 + v294, 1, v290) == 1)
  {
    sub_30B8(v548, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v275, &qword_34D6B8, &qword_2D15B0);
    (*(v563 + 8))(v296, v290);
    goto LABEL_56;
  }

  v348 = v296;
  v349 = v563;
  v350 = v291 + v294;
  v351 = v537;
  (*(v563 + 32))(v537, v350, v290);
  sub_2035E8(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v352 = sub_2CE250();
  v353 = *(v349 + 8);
  v353(v351, v290);
  sub_30B8(v548, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v275, &qword_34D6B8, &qword_2D15B0);
  v353(v348, v290);
  sub_30B8(v291, &qword_34D6B8, &qword_2D15B0);
  v295 = v549;
  if ((v352 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_68:
  v354 = v547;
  sub_2B84C8(v547);
  v355 = v545;
  v356 = v546;
  v357 = v543;
  (*(v545 + 104))(v546, enum case for CommonAudio.MediaType.news(_:), v543);
  (*(v355 + 56))(v356, 0, 1, v357);
  v358 = *(v295 + 48);
  v359 = v540;
  sub_F3F4(v354, v540, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v356, v359 + v358, &qword_34D6D0, qword_2D34A0);
  v360 = *(v355 + 48);
  if (v360(v359, 1, v357) != 1)
  {
    v362 = v530;
    sub_F3F4(v359, v530, &qword_34D6D0, qword_2D34A0);
    if (v360(v359 + v358, 1, v357) == 1)
    {
      sub_30B8(v546, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v547, &qword_34D6D0, qword_2D34A0);
      (*(v355 + 8))(v362, v357);
      v273 = v586;
      goto LABEL_73;
    }

    v387 = v523;
    (*(v355 + 32))(v523, v359 + v358, v357);
    sub_2035E8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
    v388 = v362;
    v389 = sub_2CE250();
    v390 = *(v355 + 8);
    v390(v387, v357);
    sub_30B8(v546, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v547, &qword_34D6D0, qword_2D34A0);
    v390(v388, v357);
    sub_30B8(v359, &qword_34D6D0, qword_2D34A0);
    v273 = v586;
    if (v389)
    {
      goto LABEL_82;
    }

LABEL_75:
    v363 = v544;
    (v556)(v544, v555, v273);
    v364 = sub_2CDFE0();
    v365 = sub_2CE680();
    if (os_log_type_enabled(v364, v365))
    {
      v366 = swift_slowAlloc();
      *v366 = 0;
      _os_log_impl(&dword_0, v364, v365, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Update verb / news mediaType not present in AudioNLv3Intent.", v366, 2u);
    }

    (v567)(v363, v273);
    v368 = v577;
    v367 = v578;
    v369 = v576;
    (*(v578 + 104))(v576, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v577);
    v371 = v574;
    v370 = v575;
    v372 = v573;
    (*(v575 + 104))(v573, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v574);
    v586 = sub_2CCAE0();
    (*(v370 + 8))(v372, v371);
    (*(v367 + 8))(v369, v368);
    v373 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
    v585 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
    sub_35E0(&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v373);
    v375 = v583;
    v374 = v584;
    v376 = v582;
    (*(v584 + 104))(v582, enum case for TypeOfIntent.switchNewsPreference(_:), v583);
    v377 = enum case for ActivityType.failed(_:);
    v378 = sub_2C9C20();
    v379 = *(v378 - 8);
    v380 = v581;
    (*(v379 + 104))(v581, v377, v378);
    (*(v379 + 56))(v380, 0, 1, v378);
    v381 = sub_2CA130();
    v382 = v580;
    (*(*(v381 - 8) + 56))(v580, 1, 1, v381);
    v383 = sub_2C98F0();
    v384 = v579;
    (*(*(v383 - 8) + 56))(v579, 1, 1, v383);
    sub_2CB4C0();

    sub_30B8(v384, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v382, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v380, &qword_34CB88, &unk_2D0D90);
    (*(v374 + 8))(v376, v375);
    sub_FED50(v566);
    goto LABEL_78;
  }

  sub_30B8(v356, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v354, &qword_34D6D0, qword_2D34A0);
  v361 = v360(v359 + v358, 1, v357);
  v273 = v586;
  if (v361 != 1)
  {
LABEL_73:
    v297 = &qword_34D6A8;
    v298 = &unk_2D15A0;
    v299 = v359;
    goto LABEL_74;
  }

  sub_30B8(v359, &qword_34D6D0, qword_2D34A0);
LABEL_82:
  v391 = v527;
  v392 = v555;
  (v556)(v527, v555, v273);
  v393 = sub_2CDFE0();
  v394 = sub_2CE670();
  if (os_log_type_enabled(v393, v394))
  {
    v395 = swift_slowAlloc();
    *v395 = 0;
    _os_log_impl(&dword_0, v393, v394, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Correct update verb and news mediaType present in AudioNLv3Intent.", v395, 2u);
  }

  (v567)(v391, v273);
  v396 = v566;
  v397 = sub_2B7B44();
  v398 = v569;
  v399 = &v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId];
  v400 = *&v569[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId + 8];
  *v399 = v397;
  v399[1] = v401;

  v402 = sub_2B8018();
  v403 = &v398[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier];
  v404 = *&v398[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier + 8];
  *v403 = v402;
  v403[1] = v405;

  (v556)(v534, v392, v273);

  v406 = sub_2CDFE0();
  v407 = sub_2CE670();

  v408 = os_log_type_enabled(v406, v407);
  v409 = v516;
  if (v408)
  {
    v410 = swift_slowAlloc();
    v411 = swift_slowAlloc();
    *v410 = 138412546;
    v412 = v399[1];
    if (v412)
    {
      v413 = *v399;
      sub_10C40();
      swift_allocError();
      *v414 = v413;
      v414[1] = v412;

      v415 = _swift_stdlib_bridgeErrorToNSError();
      v416 = v415;
    }

    else
    {
      v415 = 0;
      v416 = 0;
    }

    *(v410 + 4) = v415;
    *v411 = v416;
    *(v410 + 12) = 2112;
    v449 = v403[1];
    if (v449)
    {
      v450 = *v403;
      sub_10C40();
      swift_allocError();
      *v451 = v450;
      v451[1] = v449;

      v452 = _swift_stdlib_bridgeErrorToNSError();
      v453 = v452;
    }

    else
    {
      v452 = 0;
      v453 = 0;
    }

    v396 = v566;
    *(v410 + 14) = v452;
    v411[1] = v453;
    _os_log_impl(&dword_0, v406, v407, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse newsPodcastTopicId: %@ & newsPodcastIdentifier: %@.", v410, 0x16u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();
  }

  (v567)(v534, v586);
  sub_FED50(v396);
  (*(v571 + 8))(v570, v409);
  v454 = sub_2CAFE0();
  (*(*(v454 - 8) + 8))(v568, v454);
LABEL_104:
  sub_30B8(v572, &qword_354F10, &unk_2D7330);
  return 1;
}

uint64_t sub_203034()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input, &qword_34E480, &qword_2D2280);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse, &qword_354F10, &unk_2D7330);
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier + 8);

  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_networkAvailabilityProvider);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider));
  v4 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_playMediaCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider));
  return v0;
}

uint64_t sub_203124()
{
  sub_203034();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SwitchNewsSourcePreferenceFlow()
{
  result = qword_354D58;
  if (!qword_354D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2031D0()
{
  sub_203308(319, &qword_34E5A0, &type metadata accessor for Input);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_203308(319, &unk_354D68, &type metadata accessor for Parse);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_203308(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_203370()
{
  result = qword_354F08;
  if (!qword_354F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F08);
  }

  return result;
}

uint64_t sub_203410(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SwitchNewsSourcePreferenceFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_2034C8()
{
  v1 = *(sub_2C8D90() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1F9584(v4, v0 + v2, v5, v6);
}

uint64_t sub_203564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_203588(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  dispatch_group_leave(v5);
}

uint64_t sub_2035E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_203650()
{
  result = qword_354F28;
  if (!qword_354F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F28);
  }

  return result;
}

Swift::Int sub_2036A4()
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

Swift::Int sub_203710()
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

uint64_t sub_203760@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_330AA8;
  v7._object = v3;
  v5 = sub_2CEDF0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2037E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20396C();
  v5 = sub_2039C0();
  v6 = sub_203A14();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_203858()
{
  result = qword_354F30;
  if (!qword_354F30)
  {
    sub_2DB30(&qword_354F38, &qword_2D73A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F30);
  }

  return result;
}

unint64_t sub_2038C0()
{
  result = qword_354F40;
  if (!qword_354F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F40);
  }

  return result;
}

unint64_t sub_203918()
{
  result = qword_354F48;
  if (!qword_354F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F48);
  }

  return result;
}

unint64_t sub_20396C()
{
  result = qword_354F50;
  if (!qword_354F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F50);
  }

  return result;
}

unint64_t sub_2039C0()
{
  result = qword_354F58;
  if (!qword_354F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F58);
  }

  return result;
}

unint64_t sub_203A14()
{
  result = qword_354F60;
  if (!qword_354F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F60);
  }

  return result;
}

void sub_203A68(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a2;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  if (v17)
  {
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = a1;
    v18[4] = a3;
    v18[5] = a4;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;

      v21 = v41;
      v22 = [v20 hashedRouteUIDs];
      if (!v22)
      {
LABEL_15:
        v40 = a3;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v33 = sub_3ED0(v9, static Logger.default);
        swift_beginAccess();
        (*(v10 + 16))(v16, v33, v9);
        v34 = sub_2CDFE0();
        v35 = sub_2CE670();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v39 = a4;
          v37 = v36;
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          *(v37 + 4) = 0;
          *v38 = 0;
          _os_log_impl(&dword_0, v34, v35, "SiriAudioUIAssertionProvider#suppressSnippetIfneeded routeId: %@", v37, 0xCu);
          sub_212CC(v38);

          a4 = v39;
        }

        (*(v10 + 8))(v16, v9);
        sub_204B3C(a1, 0, 0, v40, a4);

        return;
      }
    }

    else
    {
      type metadata accessor for DetermineIntent();
      v27 = swift_dynamicCastClass();

      v28 = v41;
      if (!v27)
      {
        goto LABEL_15;
      }

      v22 = [v27 targetDeviceIds];
      if (!v22)
      {
        goto LABEL_15;
      }
    }

    v29 = v22;
    sub_2CE410();

    v30 = v5[16];
    sub_35E0(v5 + 12, v5[15]);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_205ED8;
    *(v31 + 24) = v18;

    sub_2CDE00();

    v32 = v41;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v14, v23, v9);
    v24 = sub_2CDFE0();
    v25 = sub_2CE670();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "SiriAudioUIAssertionProvider#suppressSnippetIfneeded no intent passed in", v26, 2u);
    }

    (*(v10 + 8))(v14, v9);
    sub_204B3C(a1, 0, 0, a3, a4);
  }
}

uint64_t sub_203F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a1;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = a5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    if (a2)
    {
      sub_10C40();
      swift_allocError();
      v24[1] = a3;
      *v20 = v27;
      v20[1] = a2;

      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v18 + 4) = v21;
    *v19 = v22;
    _os_log_impl(&dword_0, v16, v17, "SiriAudioUIAssertionProvider#suppressSnippetIfneeded routeId: %@", v18, 0xCu);
    sub_212CC(v19);

    a5 = v25;
  }

  (*(v11 + 8))(v14, v10);
  return sub_204B3C(v26, v27, a2, a5, a6);
}

uint64_t sub_204218(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v14, v15, "SiriAudioUIAssertionProvider#acquireUIAssertion...", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a2;
  v17[4] = a3;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    type metadata accessor for DetermineIntent();
    v25 = swift_dynamicCastClass();

    if (!v25)
    {
LABEL_11:
      sub_204558(0, 0, v4, a2, a3);
    }

    v26 = a1;
    v21 = [v25 targetDeviceIds];
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_10:

    goto LABEL_11;
  }

  v19 = v18;

  v20 = a1;
  v21 = [v19 hashedRouteUIDs];
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_7:
  v22 = v21;
  sub_2CE410();

  v23 = v4[16];
  sub_35E0(v4 + 12, v4[15]);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_205E24;
  *(v24 + 24) = v17;

  sub_2CDE00();
}

uint64_t sub_204558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v27 = a1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    if (a2)
    {
      sub_10C40();
      swift_allocError();
      *v18 = v27;
      v18[1] = a2;

      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v16 + 4) = v19;
    *v17 = v20;
    _os_log_impl(&dword_0, v14, v15, "SiriAudioUIAssertionProvider#acquireUIAssertion routeId: %@", v16, 0xCu);
    sub_212CC(v17);
  }

  (*(v9 + 8))(v12, v8);
  v21 = a3[11];
  sub_35E0(a3 + 7, a3[10]);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v24 = v28;
  v25 = v29;
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v25;

  sub_2CC850();
}

uint64_t sub_204860(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v12 = sub_204EC8(a1 & 1);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v15, v7);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v12;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    if (v14)
    {
      sub_10C40();
      swift_allocError();
      v24 = a4;
      *v20 = v25;
      v20[1] = v14;

      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v18 + 4) = v21;
    *v19 = v22;
    _os_log_impl(&dword_0, v16, v17, "SiriAudioUIAssertionProvider#acquireUIAssertion returning sessionID: %@", v18, 0xCu);
    sub_212CC(v19);

    v12 = v25;
  }

  (*(v8 + 8))(v11, v7);
  a3(v12, v14);
}

uint64_t sub_204B3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    result = sub_2CEDA0();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v10 = *(a1 + 32);
  }

  v11 = v10;
  v12 = sub_2CE260();
  [v11 setViewId:v12];

LABEL_7:
  v13 = v5[11];
  sub_35E0(v5 + 7, v5[10]);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a4;
  v15[5] = a5;

  sub_2CC850();
}

void sub_204CE8(char a1, uint64_t a2, unint64_t a3, void (*a4)(unint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_204EC8(a1 & 1);
    v8 = v7;

    if (v8)
    {
      if (a3 >> 62)
      {
        if (sub_2CEDA0())
        {
LABEL_5:
          if ((a3 & 0xC000000000000001) != 0)
          {
            v9 = sub_2CECD0();
          }

          else
          {
            if (!*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_20;
            }

            v9 = *(a3 + 32);
          }

          v10 = v9;
          v11 = sub_2CE260();

          [v10 setCorrespondingSessionID:v11];

          if ((a3 & 0xC000000000000001) != 0)
          {
            v12 = sub_2CECD0();
LABEL_12:
            v13 = v12;
            v14 = sub_2CE260();
            [v13 setViewId:v14];

            goto LABEL_15;
          }

          if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
          {
            v12 = *(a3 + 32);
            goto LABEL_12;
          }

LABEL_20:
          __break(1u);
          return;
        }
      }

      else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_5;
      }
    }
  }

LABEL_15:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_205AA8(a3);
  }

  a4(a3);
}

uint64_t sub_204EC8(char a1)
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
  v9 = sub_2CE670();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v8, v9, "SiriAudioUIAssertionProvider#fetchSessionIDIfNeeded shouldSuppressSnippet: %{BOOL}d", v10, 8u);
  }

  (*(v3 + 8))(v6, v2);
  if (a1)
  {
    return sub_2050A4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2050A4()
{
  v1 = v0;
  v2 = sub_2CE150();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2CE180();
  v49 = *(v51 - 8);
  v5 = *(v49 + 64);
  __chkstk_darwin(v51);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2CE1A0();
  v47 = *(v55 - 8);
  v7 = *(v47 + 64);
  v8 = __chkstk_darwin(v55);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v44 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v54 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v19 = v12[2];
  v19(v17, v18, v11);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "SiriAudioUIAssertionProvider#acquireAndReleaseQuickControlsAssertion acquire Media Remote assertion.", v22, 2u);
  }

  v23 = v12[1];
  v23(v17, v11);
  v24 = v1;
  v25 = *(v1 + 80);
  v26 = *(v1 + 88);
  sub_35E0((v24 + 56), v25);
  v27 = sub_2CC830();
  v29 = v28;
  if (v28)
  {
    v30 = v27;
    sub_205924();

    v44 = sub_2CE9B0();
    v31 = v45;
    sub_2CE190();
    v32 = v46;
    sub_2CE1C0();
    v54 = v29;
    v47 = *(v47 + 8);
    (v47)(v31, v55);
    v33 = swift_allocObject();
    v33[2] = v24;
    v33[3] = v30;
    v33[4] = v54;
    aBlock[4] = sub_205970;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_A4294;
    aBlock[3] = &unk_339280;
    v34 = _Block_copy(aBlock);

    v35 = v48;
    sub_2CE160();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10101C();
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v36 = v50;
    v37 = v53;
    sub_2CEC10();
    v38 = v44;
    sub_2CE9A0();
    _Block_release(v34);

    (*(v52 + 8))(v36, v37);
    (*(v49 + 8))(v35, v51);
    (v47)(v32, v55);
  }

  else
  {
    v39 = v54;
    v19(v54, v18, v11);
    v40 = sub_2CDFE0();
    v41 = sub_2CE680();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "SiriAudioUIAssertionProvider#acquireAndReleaseQuickControlsAssertion No UI sessionID has been provided", v42, 2u);
    }

    v23(v39, v11);
    return 0;
  }

  return v30;
}

uint64_t sub_2056D0(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v8, v9, "SiriAudioUIAssertionProvider#acquireAndReleaseQuickControlsAssertion release Media Remote assertion.", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = a1[11];
  sub_35E0(a1 + 7, a1[10]);
  return sub_2CC840();
}

uint64_t sub_2058B8()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_205924()
{
  result = qword_34FF18;
  if (!qword_34FF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34FF18);
  }

  return result;
}

uint64_t sub_205970()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_2056D0(*(v0 + 16));
}

uint64_t sub_20597C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_205994(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_2CECD0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_205F30;
  }

  __break(1u);
  return result;
}

void (*sub_205A20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_2CECD0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_205AA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_205AA8(unint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
LABEL_19:
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2CDFE0();
  v9 = sub_2CE660();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    v26 = v10;
    *v10 = 136446210;
    if (a1 >> 62)
    {
      v11 = sub_2CEDA0();
    }

    else
    {
      v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    v27 = v9;
    v28 = v8;
    v29 = v6;
    v30 = v3;
    v31 = v2;
    if (v11)
    {
      v12 = 0;
      v8 = 0;
      v32 = a1 & 0xFFFFFFFFFFFFFF8;
      v33 = a1 & 0xC000000000000001;
      v13 = 0xE000000000000000;
      while (1)
      {
        if (v33)
        {
          v14 = sub_2CECD0();
          v15 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          if (v12 >= *(v32 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v14 = *(a1 + 8 * v12 + 32);
          v15 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_14;
          }
        }

        v16 = v14;
        v6 = v11;
        v17 = [v16 description];
        v3 = a1;
        v18 = sub_2CE270();
        v2 = v19;

        v11 = v6;
        v34 = v8;
        v35 = v13;

        v37._countAndFlagsBits = v18;
        a1 = v3;
        v37._object = v2;
        sub_2CE350(v37);

        v8 = v34;
        v13 = v35;
        ++v12;
        if (v15 == v6)
        {
          goto LABEL_17;
        }
      }
    }

    v8 = 0;
    v13 = 0xE000000000000000;
LABEL_17:
    v21 = sub_3F08(v8, v13, &v36);

    v22 = v26;
    *(v26 + 1) = v21;
    v23 = v28;
    _os_log_impl(&dword_0, v28, v27, "SiriAudioUIAssertionProvider#logRenderingViewInfo views: %{public}s", v22, 0xCu);
    sub_306C(v25);

    return (*(v30 + 8))(v29, v31);
  }

  else
  {
LABEL_15:

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_205E34(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_205E90()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_205EE4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = sub_7F0EC(a1);
  v3(v4);
}

uint64_t sub_205F3C()
{
  type metadata accessor for InternalSignalsManager();
  v0 = swift_allocObject();
  sub_2CB4A0();
  sub_2CB490();
  v1 = sub_2CB810();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_2CB7F0();
  *(v0 + 16) = result;
  off_355060 = v0;
  return result;
}