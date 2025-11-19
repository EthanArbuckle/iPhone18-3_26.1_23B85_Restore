uint64_t sub_79F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226C;

  return sub_797FC(a1, v5);
}

uint64_t Event.isSample.getter()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 1)
  {
    v6 = *(v4 + 1);

    v7 = sub_2B0C(&qword_22A130, &unk_1BFD50);
    v8 = *(v7 + 48);
    v9 = v4[*(v7 + 64)];
    v10 = sub_1B40C4();
    (*(*(v10 - 8) + 8))(&v4[v8], v10);
  }

  else
  {
    sub_7A218(v4);
    return 2;
  }

  return v9;
}

uint64_t type metadata accessor for Event()
{
  result = qword_22A1F0;
  if (!qword_22A1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7A1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7A218(uint64_t a1)
{
  v2 = type metadata accessor for Event();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Event.endProgress.getter()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 1)
  {
    v6 = *(v4 + 1);

    v7 = sub_2B0C(&qword_22A130, &unk_1BFD50);
    v8 = *(v7 + 48);
    v9 = *&v4[*(v7 + 80)];
    v10 = sub_1B40C4();
    (*(*(v10 - 8) + 8))(&v4[v8], v10);
  }

  else
  {
    sub_7A218(v4);
    return 0;
  }

  return v9;
}

uint64_t Event.rating.getter()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v6 = *(v4 + 1);

    v7 = sub_2B0C(&qword_22A138, &qword_1C59F0);
    v8 = *(v7 + 48);
    v5 = *&v4[*(v7 + 64)];
    v9 = sub_1B40C4();
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
  }

  else
  {
    sub_7A218(v4);
    return 0;
  }

  return v5;
}

uint64_t Event.assetID.getter()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  v7 = *(v4 + 1);
  v8 = sub_1B40C4();
  v9 = *(*(v8 - 8) + 8);
  v10 = v8;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 4:
      v11 = &qword_22A130;
      v12 = &unk_1BFD50;
      break;
    case 2:
    case 3:
      v11 = &qword_22A150;
      v12 = &qword_1BFD70;
      break;
    case 8:
      v11 = &qword_22A148;
      v12 = &qword_1BFD68;
      break;
    case 10:
      v11 = &qword_22A138;
      v12 = &qword_1C59F0;
      break;
    default:
      v11 = &qword_22A140;
      v12 = &qword_1BFD60;
      break;
  }

  v13 = sub_2B0C(v11, v12);
  v9(&v4[*(v13 + 48)], v10);
  return v6;
}

uint64_t Event.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = sub_1B40C4();
  v11 = *(*(v10 - 8) + 32);
  v12 = v10;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 4:
      v13 = &qword_22A130;
      v14 = &unk_1BFD50;
      break;
    case 2:
    case 3:
      v13 = &qword_22A150;
      v14 = &qword_1BFD70;
      break;
    case 8:
      v13 = &qword_22A148;
      v14 = &qword_1BFD68;
      break;
    case 10:
      v13 = &qword_22A138;
      v14 = &qword_1C59F0;
      break;
    default:
      v13 = &qword_22A140;
      v14 = &qword_1BFD60;
      break;
  }

  v15 = sub_2B0C(v13, v14);
  return v11(a1, &v7[*(v15 + 48)], v12);
}

unint64_t Event.eventType.getter()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v4 + 1);

  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = 0xD000000000000012;
      v7 = &v4[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      break;
    case 2:
      v7 = &v4[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      v8 = 0x72706D496B6F6F62;
      break;
    case 3:
      v7 = &v4[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      v8 = 0xD000000000000019;
      break;
    case 4:
      v7 = &v4[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      v8 = 0x527361576B6F6F62;
      break;
    case 5:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x64616F6C6E776F64;
      break;
    case 6:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x746963696C707865;
      break;
    case 7:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x6B6F6F4265646968;
      break;
    case 8:
      v7 = &v4[*(sub_2B0C(&qword_22A148, &qword_1BFD68) + 48)];
      v8 = 0x694673416B72616DLL;
      break;
    case 9:
      v8 = 0xD000000000000012;
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      break;
    case 10:
      v7 = &v4[*(sub_2B0C(&qword_22A138, &qword_1C59F0) + 48)];
      v8 = 0x676E69746172;
      break;
    case 11:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0xD000000000000014;
      break;
    case 12:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x615365766F6D6572;
      break;
    case 13:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x4C74736567677573;
      break;
    case 14:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x4D74736567677573;
      break;
    case 15:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x6572616873;
      break;
    case 16:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x657461726E75;
      break;
    default:
      v7 = &v4[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v8 = 0x6E61576F54646461;
      break;
  }

  v9 = sub_1B40C4();
  (*(*(v9 - 8) + 8))(v7, v9);
  return v8;
}

uint64_t Event.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v69 = sub_1B40C4();
  v67 = *(v69 - 8);
  v3 = *(v67 + 64);
  v4 = __chkstk_darwin(v69);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v66 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v66 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v66 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v66 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v66 - v20;
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v24 = type metadata accessor for Event();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_7A1B4(v2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *v27;
  v30 = v27[1];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v52 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v53 = *(v27 + v52[16]);
      v54 = *(v27 + v52[20]);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v21, v27 + v52[12], v69);
      sub_1B5804(1uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      sub_1B5814(v53);
      v55 = 0.0;
      if (v54 != 0.0)
      {
        v55 = v54;
      }

      sub_1B5834(*&v55);
      v18 = v21;
      return (*(v32 + 8))(v18, v33);
    case 2:
      v44 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v45 = *(v27 + *(v44 + 64));
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v18, v27 + *(v44 + 48), v69);
      sub_1B5804(2uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      if (v45 == 2)
      {
        v46 = 0;
      }

      else
      {
        sub_1B5814(1u);
        v46 = v45 & 1;
      }

      sub_1B5814(v46);
      return (*(v32 + 8))(v18, v33);
    case 3:
      v48 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v49 = *(v27 + *(v48 + 64));
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v15, v27 + *(v48 + 48), v69);
      sub_1B5804(3uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      if (v49 == 2)
      {
        v50 = 0;
      }

      else
      {
        sub_1B5814(1u);
        v50 = v49 & 1;
      }

      sub_1B5814(v50);
      v18 = v15;
      return (*(v32 + 8))(v18, v33);
    case 4:
      v38 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v39 = *(v27 + v38[16]);
      v40 = *(v27 + v38[20]);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v12, v27 + v38[12], v69);
      sub_1B5804(4uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      sub_1B5814(v39);
      v41 = 0.0;
      if (v40 != 0.0)
      {
        v41 = v40;
      }

      sub_1B5834(*&v41);
      v18 = v12;
      return (*(v32 + 8))(v18, v33);
    case 5:
      v56 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v56 + 48), v69);
      v34 = 5;
      goto LABEL_23;
    case 6:
      v58 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v58 + 48), v69);
      v34 = 6;
      goto LABEL_23;
    case 7:
      v51 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v51 + 48), v69);
      v34 = 7;
      goto LABEL_23;
    case 8:
      v64 = sub_2B0C(&qword_22A148, &qword_1BFD68);
      v65 = *(v27 + *(v64 + 64));
      v32 = v67;
      (*(v67 + 32))(v9, v27 + *(v64 + 48), v69);
      sub_1B5804(8uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      if (v65 == 2)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5804(v65 & 1);
      }

      v18 = v9;
      v33 = v69;
      return (*(v32 + 8))(v18, v33);
    case 9:
      v43 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v43 + 48), v69);
      v34 = 9;
      goto LABEL_23;
    case 10:
      v60 = sub_2B0C(&qword_22A138, &qword_1C59F0);
      v61 = *(v27 + *(v60 + 64));
      v62 = v67;
      v33 = v69;
      (*(v67 + 32))(v6, v27 + *(v60 + 48), v69);
      sub_1B5804(0xAuLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      v63 = 0.0;
      if (v61 != 0.0)
      {
        v63 = v61;
      }

      sub_1B5834(*&v63);
      v18 = v6;
      v32 = v62;
      return (*(v32 + 8))(v18, v33);
    case 11:
      v37 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v37 + 48), v69);
      v34 = 11;
      goto LABEL_23;
    case 12:
      v42 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v42 + 48), v69);
      v34 = 12;
      goto LABEL_23;
    case 13:
      v57 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v57 + 48), v69);
      v34 = 13;
      goto LABEL_23;
    case 14:
      v36 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v36 + 48), v69);
      v34 = 14;
      goto LABEL_23;
    case 15:
      v47 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v47 + 48), v69);
      v34 = 15;
      goto LABEL_23;
    case 16:
      v35 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v35 + 48), v69);
      v34 = 16;
      goto LABEL_23;
    default:
      v31 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v32 = v67;
      v33 = v69;
      (*(v67 + 32))(v23, v27 + *(v31 + 48), v69);
      v34 = 0;
LABEL_23:
      sub_1B5804(v34);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      v18 = v23;
      return (*(v32 + 8))(v18, v33);
  }
}

Swift::Int Event.hashValue.getter()
{
  sub_1B57F4();
  Event.hash(into:)(v1);
  return sub_1B5844();
}

Swift::Int sub_7B8E0()
{
  sub_1B57F4();
  Event.hash(into:)(v1);
  return sub_1B5844();
}

uint64_t _s20BooksPersonalization5EventO2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v429 = a1;
  v430 = a2;
  v2 = sub_1B40C4();
  v3 = *(v2 - 8);
  v431 = v2;
  v432 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v401 = &v385 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v428 = &v385 - v8;
  v9 = __chkstk_darwin(v7);
  v400 = &v385 - v10;
  v11 = __chkstk_darwin(v9);
  v427 = &v385 - v12;
  v13 = __chkstk_darwin(v11);
  v399 = &v385 - v14;
  v15 = __chkstk_darwin(v13);
  v426 = &v385 - v16;
  v17 = __chkstk_darwin(v15);
  v398 = &v385 - v18;
  v19 = __chkstk_darwin(v17);
  v425 = &v385 - v20;
  v21 = __chkstk_darwin(v19);
  v397 = &v385 - v22;
  v23 = __chkstk_darwin(v21);
  v424 = &v385 - v24;
  v25 = __chkstk_darwin(v23);
  v396 = &v385 - v26;
  v27 = __chkstk_darwin(v25);
  v423 = &v385 - v28;
  v29 = __chkstk_darwin(v27);
  v395 = &v385 - v30;
  v31 = __chkstk_darwin(v29);
  v422 = &v385 - v32;
  v33 = __chkstk_darwin(v31);
  v394 = &v385 - v34;
  v35 = __chkstk_darwin(v33);
  v421 = &v385 - v36;
  v37 = __chkstk_darwin(v35);
  v393 = &v385 - v38;
  v39 = __chkstk_darwin(v37);
  v420 = &v385 - v40;
  v41 = __chkstk_darwin(v39);
  v392 = &v385 - v42;
  v43 = __chkstk_darwin(v41);
  v419 = &v385 - v44;
  v45 = __chkstk_darwin(v43);
  v391 = &v385 - v46;
  v47 = __chkstk_darwin(v45);
  v418 = &v385 - v48;
  v49 = __chkstk_darwin(v47);
  v390 = &v385 - v50;
  v51 = __chkstk_darwin(v49);
  v417 = &v385 - v52;
  v53 = __chkstk_darwin(v51);
  v389 = &v385 - v54;
  v55 = __chkstk_darwin(v53);
  v416 = &v385 - v56;
  v57 = __chkstk_darwin(v55);
  v388 = &v385 - v58;
  v59 = __chkstk_darwin(v57);
  v415 = &v385 - v60;
  v61 = __chkstk_darwin(v59);
  v387 = &v385 - v62;
  v63 = __chkstk_darwin(v61);
  v414 = &v385 - v64;
  v65 = __chkstk_darwin(v63);
  v386 = &v385 - v66;
  v67 = __chkstk_darwin(v65);
  v413 = &v385 - v68;
  v69 = __chkstk_darwin(v67);
  v385 = &v385 - v70;
  __chkstk_darwin(v69);
  v402 = &v385 - v71;
  v72 = type metadata accessor for Event();
  v73 = *(*(v72 - 8) + 64);
  v74 = __chkstk_darwin(v72);
  v412 = (&v385 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __chkstk_darwin(v74);
  v411 = (&v385 - v77);
  v78 = __chkstk_darwin(v76);
  v410 = (&v385 - v79);
  v80 = __chkstk_darwin(v78);
  v409 = (&v385 - v81);
  v82 = __chkstk_darwin(v80);
  v408 = (&v385 - v83);
  v84 = __chkstk_darwin(v82);
  v407 = (&v385 - v85);
  v86 = __chkstk_darwin(v84);
  v406 = (&v385 - v87);
  v88 = __chkstk_darwin(v86);
  v405 = (&v385 - v89);
  v90 = __chkstk_darwin(v88);
  v404 = (&v385 - v91);
  v92 = __chkstk_darwin(v90);
  v403 = (&v385 - v93);
  v94 = __chkstk_darwin(v92);
  v96 = (&v385 - v95);
  v97 = __chkstk_darwin(v94);
  v99 = (&v385 - v98);
  v100 = __chkstk_darwin(v97);
  v102 = (&v385 - v101);
  v103 = __chkstk_darwin(v100);
  v105 = (&v385 - v104);
  v106 = __chkstk_darwin(v103);
  v108 = (&v385 - v107);
  v109 = __chkstk_darwin(v106);
  v111 = (&v385 - v110);
  __chkstk_darwin(v109);
  v113 = (&v385 - v112);
  v114 = sub_2B0C(&qword_22A260, &unk_1C0010);
  v115 = *(*(v114 - 8) + 64);
  v116 = __chkstk_darwin(v114 - 8);
  v118 = &v385 - v117;
  v119 = &v385 + *(v116 + 56) - v117;
  sub_7A1B4(v429, &v385 - v117);
  v120 = v430;
  v430 = v119;
  sub_7A1B4(v120, v119);
  v433 = v118;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v257 = v433;
      sub_7A1B4(v433, v111);
      v258 = v111[1];
      v429 = *v111;
      v259 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v260 = v259[12];
      v261 = v111 + v260;
      v262 = v259[16];
      v263 = *(v111 + v262);
      v264 = v259[20];
      v175 = *(v111 + v264);
      v265 = v430;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v322 = v431;
        v323 = v432;
        v121 = v257;
        v125 = v111 + v260;
        goto LABEL_67;
      }

      LODWORD(v428) = v263;
      LODWORD(v427) = *(v265 + v262);
      v267 = *v265;
      v266 = v265[1];
      v179 = *(v265 + v264);
      v268 = v258;
      v182 = v431;
      v181 = v432;
      v269 = v265;
      v270 = *(v432 + 32);
      v270(v413, v261, v431);
      v271 = v269 + v260;
      v186 = v386;
      v270(v386, v271, v182);
      if (v429 == v267 && v268 == v266)
      {

LABEL_97:
        v187 = v413;
        goto LABEL_98;
      }

      v348 = sub_1B5604();

      if (v348)
      {
        goto LABEL_97;
      }

      v372 = *(v181 + 8);
      v372(v186, v182);
      v376 = &v434;
      goto LABEL_135;
    case 2u:
      v121 = v433;
      sub_7A1B4(v433, v108);
      v208 = *v108;
      v209 = v108[1];
      v210 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v211 = *(v210 + 48);
      v125 = v108 + v211;
      v212 = *(v210 + 64);
      v213 = *(v108 + v212);
      v214 = v430;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_66;
      }

      LODWORD(v429) = v213;
      v216 = *v214;
      v215 = v214[1];
      LODWORD(v428) = *(v214 + v212);
      v217 = v209;
      v182 = v431;
      v218 = v432;
      v219 = v214;
      v220 = *(v432 + 32);
      v220(v414, v108 + v211, v431);
      v221 = v219 + v211;
      v222 = v387;
      v220(v387, v221, v182);
      if (v208 == v216 && v217 == v215)
      {

LABEL_89:
        v246 = v414;
        goto LABEL_115;
      }

      v344 = sub_1B5604();

      if (v344)
      {
        goto LABEL_89;
      }

      v372 = *(v218 + 8);
      v372(v222, v182);
      v376 = &v435;
LABEL_135:
      v373 = *(v376 - 32);
      goto LABEL_141;
    case 3u:
      v121 = v433;
      sub_7A1B4(v433, v105);
      v233 = *v105;
      v234 = v105[1];
      v235 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v236 = *(v235 + 48);
      v125 = v105 + v236;
      v237 = *(v235 + 64);
      v238 = *(v105 + v237);
      v239 = v430;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_66;
      }

      LODWORD(v429) = v238;
      v241 = *v239;
      v240 = v239[1];
      LODWORD(v428) = *(v239 + v237);
      v242 = v234;
      v182 = v431;
      v218 = v432;
      v243 = v239;
      v244 = *(v432 + 32);
      v244(v415, v105 + v236, v431);
      v245 = v243 + v236;
      v222 = v388;
      v244(v388, v245, v182);
      if (v233 == v241 && v242 == v240)
      {

        v246 = v415;
        goto LABEL_115;
      }

      v346 = sub_1B5604();

      if (v346)
      {
        v246 = v415;
        goto LABEL_115;
      }

      v372 = *(v218 + 8);
      v372(v222, v182);
      v373 = v415;
      goto LABEL_141;
    case 4u:
      v167 = v433;
      sub_7A1B4(v433, v102);
      v168 = v102[1];
      v429 = *v102;
      v169 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v170 = v169[12];
      v171 = v102 + v170;
      v172 = v169[16];
      v173 = *(v102 + v172);
      v174 = v169[20];
      v175 = *(v102 + v174);
      v176 = v430;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v322 = v431;
        v323 = v432;
        v121 = v167;
        v125 = v102 + v170;
        goto LABEL_67;
      }

      LODWORD(v428) = v173;
      LODWORD(v427) = *(v176 + v172);
      v178 = *v176;
      v177 = v176[1];
      v179 = *(v176 + v174);
      v180 = v168;
      v182 = v431;
      v181 = v432;
      v183 = v176;
      v184 = *(v432 + 32);
      v184(v416, v171, v431);
      v185 = v183 + v170;
      v186 = v389;
      v184(v389, v185, v182);
      if (v429 == v178 && v180 == v177)
      {

        v187 = v416;
      }

      else
      {
        v341 = sub_1B5604();

        if ((v341 & 1) == 0)
        {
          v372 = *(v181 + 8);
          v372(v186, v182);
          v373 = v416;
          goto LABEL_141;
        }

        v187 = v416;
      }

LABEL_98:
      v349 = sub_1B4074();
      v350 = *(v181 + 8);
      v350(v186, v182);
      v350(v187, v182);
      if ((v349 & 1) == 0)
      {
        goto LABEL_143;
      }

      v351 = v433;
      if (v428 == v427)
      {
        v352 = v175 == v179;
        sub_7A218(v433);
        return v352 & 1;
      }

      goto LABEL_144;
    case 5u:
      v121 = v433;
      sub_7A1B4(v433, v99);
      v273 = *v99;
      v272 = v99[1];
      v274 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v99 + v274;
      v275 = v430;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v322 = v431;
        v323 = v432;
        goto LABEL_67;
      }

      v276 = v275[1];
      v429 = *v275;
      v278 = v431;
      v277 = v432;
      v279 = *(v432 + 32);
      v279(v417, v125, v431);
      v280 = v275 + v274;
      v281 = v390;
      v279(v390, v280, v278);
      if (v273 == v429 && v272 == v276)
      {

LABEL_102:
        v354 = v417;
        v352 = sub_1B4074();
        v355 = *(v277 + 8);
        v355(v281, v278);
        v355(v354, v278);
        goto LABEL_107;
      }

      v353 = sub_1B5604();

      if (v353)
      {
        goto LABEL_102;
      }

      v379 = *(v277 + 8);
      v379(v281, v278);
      v379(v417, v278);
      goto LABEL_143;
    case 6u:
      sub_7A1B4(v433, v96);
      v292 = *v96;
      v293 = v96[1];
      v294 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v96 + v294;
      v295 = v430;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_72;
      }

      v297 = *v295;
      v296 = v295[1];
      v298 = v432;
      v299 = *(v432 + 32);
      v300 = v125;
      v301 = v431;
      v299(v418, v300, v431);
      v302 = v295 + v294;
      v303 = v391;
      v299(v391, v302, v301);
      if (v292 == v297 && v293 == v296)
      {

LABEL_109:
        v359 = v418;
        v352 = sub_1B4074();
        v360 = *(v298 + 8);
        v360(v303, v301);
        v360(v359, v301);
        goto LABEL_107;
      }

      v358 = sub_1B5604();

      if (v358)
      {
        goto LABEL_109;
      }

      v381 = *(v298 + 8);
      v381(v303, v301);
      v381(v418, v301);
      goto LABEL_143;
    case 7u:
      v121 = v433;
      v247 = v403;
      sub_7A1B4(v433, v403);
      v248 = *v247;
      v249 = v247[1];
      v250 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v247 + v250;
      v251 = v430;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_66;
      }

      v253 = *v251;
      v252 = v251[1];
      v141 = v432;
      v254 = *(v432 + 32);
      v255 = v125;
      v131 = v431;
      v254(v419, v255, v431);
      v256 = v251 + v250;
      v145 = v392;
      v254(v392, v256, v131);
      if (v248 == v253 && v249 == v252)
      {

LABEL_95:
        v146 = v419;
        goto LABEL_105;
      }

      v347 = sub_1B5604();

      if (v347)
      {
        goto LABEL_95;
      }

      v378 = *(v141 + 8);
      v378(v145, v131);
      v378(v419, v131);
      goto LABEL_143;
    case 8u:
      v324 = v404;
      sub_7A1B4(v433, v404);
      v325 = *v324;
      v326 = v324[1];
      v327 = sub_2B0C(&qword_22A148, &qword_1BFD68);
      v328 = *(v327 + 48);
      v125 = v324 + v328;
      v329 = *(v327 + 64);
      v330 = *(v324 + v329);
      v331 = v430;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_72:
        v322 = v431;
        v323 = v432;
        v121 = v433;
        goto LABEL_67;
      }

      LODWORD(v429) = v330;
      v332 = v125;
      v334 = *v331;
      v333 = v331[1];
      LODWORD(v428) = *(v331 + v329);
      v335 = v326;
      v182 = v431;
      v218 = v432;
      v336 = *(v432 + 32);
      v336(v420, v332, v431);
      v337 = v331 + v328;
      v222 = v393;
      v336(v393, v337, v182);
      if (v325 == v334 && v335 == v333)
      {
      }

      else
      {
        v365 = sub_1B5604();

        if ((v365 & 1) == 0)
        {
          v372 = *(v218 + 8);
          v372(v222, v182);
          v373 = v420;
LABEL_141:
          v372(v373, v182);
          goto LABEL_143;
        }
      }

      v246 = v420;
LABEL_115:
      v366 = sub_1B4074();
      v367 = *(v218 + 8);
      v367(v222, v182);
      v367(v246, v182);
      if ((v366 & 1) == 0)
      {
        goto LABEL_143;
      }

      v351 = v433;
      if (v429 == 2)
      {
        if (v428 != 2)
        {
          goto LABEL_144;
        }

        goto LABEL_121;
      }

      if (v428 != 2 && ((v428 ^ v429) & 1) == 0)
      {
LABEL_121:
        sub_7A218(v433);
        v352 = 1;
        return v352 & 1;
      }

      goto LABEL_144;
    case 9u:
      v121 = v433;
      v198 = v405;
      sub_7A1B4(v433, v405);
      v199 = *v198;
      v200 = v198[1];
      v201 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v198 + v201;
      v202 = v430;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_66;
      }

      v204 = *v202;
      v203 = v202[1];
      v141 = v432;
      v205 = *(v432 + 32);
      v206 = v125;
      v131 = v431;
      v205(v421, v206, v431);
      v207 = v202 + v201;
      v145 = v394;
      v205(v394, v207, v131);
      if (v199 == v204 && v200 == v203)
      {

        v146 = v421;
        goto LABEL_105;
      }

      v343 = sub_1B5604();

      if (v343)
      {
        v146 = v421;
        goto LABEL_105;
      }

      v375 = *(v141 + 8);
      v375(v145, v131);
      v375(v421, v131);
      goto LABEL_143;
    case 0xAu:
      v121 = v433;
      v304 = v406;
      sub_7A1B4(v433, v406);
      v305 = *v304;
      v306 = v304[1];
      v307 = sub_2B0C(&qword_22A138, &qword_1C59F0);
      v308 = *(v307 + 48);
      v125 = v304 + v308;
      v309 = *(v307 + 64);
      v310 = *(v304 + v309);
      v311 = v430;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_66;
      }

      v312 = v304 + v308;
      v314 = *v311;
      v313 = v311[1];
      v315 = *(v311 + v309);
      v316 = v431;
      v317 = v432;
      v318 = v305;
      v319 = *(v432 + 32);
      v319(v422, v312, v431);
      v320 = v311 + v308;
      v321 = v395;
      v319(v395, v320, v316);
      if (v318 == v314 && v306 == v313)
      {
      }

      else
      {
        v361 = sub_1B5604();

        if ((v361 & 1) == 0)
        {
          v382 = *(v317 + 8);
          v382(v321, v316);
          v382(v422, v316);
          goto LABEL_143;
        }
      }

      v362 = v422;
      v363 = sub_1B4074();
      v364 = *(v317 + 8);
      v364(v321, v316);
      v364(v362, v316);
      if ((v363 & 1) == 0)
      {
        goto LABEL_143;
      }

      v352 = v310 == v315;
      goto LABEL_107;
    case 0xBu:
      v121 = v433;
      v157 = v407;
      sub_7A1B4(v433, v407);
      v158 = *v157;
      v159 = v157[1];
      v160 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v157 + v160;
      v161 = v430;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_66;
      }

      v163 = *v161;
      v162 = v161[1];
      v141 = v432;
      v164 = *(v432 + 32);
      v165 = v125;
      v131 = v431;
      v164(v423, v165, v431);
      v166 = v161 + v160;
      v145 = v396;
      v164(v396, v166, v131);
      if (v158 == v163 && v159 == v162)
      {

        v146 = v423;
        goto LABEL_105;
      }

      v340 = sub_1B5604();

      if (v340)
      {
        v146 = v423;
        goto LABEL_105;
      }

      v371 = *(v141 + 8);
      v371(v145, v131);
      v371(v423, v131);
      goto LABEL_143;
    case 0xCu:
      v121 = v433;
      v188 = v408;
      sub_7A1B4(v433, v408);
      v189 = *v188;
      v190 = v188[1];
      v191 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v188 + v191;
      v192 = v430;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_66;
      }

      v194 = *v192;
      v193 = v192[1];
      v141 = v432;
      v195 = *(v432 + 32);
      v196 = v125;
      v131 = v431;
      v195(v424, v196, v431);
      v197 = v192 + v191;
      v145 = v397;
      v195(v397, v197, v131);
      if (v189 == v194 && v190 == v193)
      {

        v146 = v424;
        goto LABEL_105;
      }

      v342 = sub_1B5604();

      if (v342)
      {
        v146 = v424;
        goto LABEL_105;
      }

      v374 = *(v141 + 8);
      v374(v145, v131);
      v374(v424, v131);
      goto LABEL_143;
    case 0xDu:
      v121 = v433;
      v282 = v409;
      sub_7A1B4(v433, v409);
      v283 = *v282;
      v284 = v282[1];
      v285 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v282 + v285;
      v286 = v430;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_66;
      }

      v288 = *v286;
      v287 = v286[1];
      v141 = v432;
      v289 = *(v432 + 32);
      v290 = v125;
      v131 = v431;
      v289(v425, v290, v431);
      v291 = v286 + v285;
      v145 = v398;
      v289(v398, v291, v131);
      if (v283 == v288 && v284 == v287)
      {

LABEL_104:
        v146 = v425;
        goto LABEL_105;
      }

      v356 = sub_1B5604();

      if (v356)
      {
        goto LABEL_104;
      }

      v380 = *(v141 + 8);
      v380(v145, v131);
      v380(v425, v131);
      goto LABEL_143;
    case 0xEu:
      v121 = v433;
      v147 = v410;
      sub_7A1B4(v433, v410);
      v148 = *v147;
      v149 = v147[1];
      v150 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v147 + v150;
      v151 = v430;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_66;
      }

      v153 = *v151;
      v152 = v151[1];
      v141 = v432;
      v154 = *(v432 + 32);
      v155 = v125;
      v131 = v431;
      v154(v426, v155, v431);
      v156 = v151 + v150;
      v145 = v399;
      v154(v399, v156, v131);
      if (v148 == v153 && v149 == v152)
      {

        v146 = v426;
        goto LABEL_105;
      }

      v339 = sub_1B5604();

      if (v339)
      {
        v146 = v426;
        goto LABEL_105;
      }

      v370 = *(v141 + 8);
      v370(v145, v131);
      v370(v426, v131);
      goto LABEL_143;
    case 0xFu:
      v121 = v433;
      v223 = v411;
      sub_7A1B4(v433, v411);
      v224 = *v223;
      v225 = v223[1];
      v226 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v223 + v226;
      v227 = v430;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_66;
      }

      v229 = *v227;
      v228 = v227[1];
      v141 = v432;
      v230 = *(v432 + 32);
      v231 = v125;
      v131 = v431;
      v230(v427, v231, v431);
      v232 = v227 + v226;
      v145 = v400;
      v230(v400, v232, v131);
      if (v224 == v229 && v225 == v228)
      {

        v146 = v427;
        goto LABEL_105;
      }

      v345 = sub_1B5604();

      if (v345)
      {
        v146 = v427;
        goto LABEL_105;
      }

      v377 = *(v141 + 8);
      v377(v145, v131);
      v377(v427, v131);
      goto LABEL_143;
    case 0x10u:
      v121 = v433;
      v134 = v412;
      sub_7A1B4(v433, v412);
      v135 = *v134;
      v136 = v134[1];
      v137 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v134 + v137;
      v138 = v430;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_66;
      }

      v140 = *v138;
      v139 = v138[1];
      v141 = v432;
      v142 = *(v432 + 32);
      v143 = v125;
      v131 = v431;
      v142(v428, v143, v431);
      v144 = v138 + v137;
      v145 = v401;
      v142(v401, v144, v131);
      if (v135 == v140 && v136 == v139)
      {

        v146 = v428;
LABEL_105:
        v352 = sub_1B4074();
        v357 = *(v141 + 8);
        v357(v145, v131);
        goto LABEL_106;
      }

      v338 = sub_1B5604();

      if (v338)
      {
        v146 = v428;
        goto LABEL_105;
      }

      v369 = *(v141 + 8);
      v369(v145, v131);
      v369(v428, v131);
LABEL_143:
      v351 = v433;
LABEL_144:
      sub_7A218(v351);
LABEL_145:
      v352 = 0;
      return v352 & 1;
    default:
      v121 = v433;
      sub_7A1B4(v433, v113);
      v122 = *v113;
      v123 = v113[1];
      v124 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v125 = v113 + v124;
      v126 = v430;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_66:
        v322 = v431;
        v323 = v432;
LABEL_67:
        (*(v323 + 8))(v125, v322);

        sub_7E61C(v121);
        goto LABEL_145;
      }

      v128 = *v126;
      v127 = v126[1];
      v129 = v432;
      v130 = *(v432 + 32);
      v131 = v431;
      v130(v402, v113 + v124, v431);
      v132 = v126 + v124;
      v133 = v385;
      v130(v385, v132, v131);
      if (v122 == v128 && v123 == v127)
      {
      }

      else
      {
        v368 = sub_1B5604();

        if ((v368 & 1) == 0)
        {
          v383 = *(v129 + 8);
          v383(v133, v131);
          v383(v402, v131);
          goto LABEL_143;
        }
      }

      v146 = v402;
      v352 = sub_1B4074();
      v357 = *(v129 + 8);
      v357(v133, v131);
LABEL_106:
      v357(v146, v131);
LABEL_107:
      sub_7A218(v433);
      return v352 & 1;
  }
}

unint64_t sub_7D820()
{
  result = qword_22A158;
  if (!qword_22A158)
  {
    sub_1CC1C(&qword_22A160, &qword_1BFDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A158);
  }

  return result;
}

unint64_t sub_7D888()
{
  result = qword_22A168;
  if (!qword_22A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A168);
  }

  return result;
}

unint64_t sub_7D8E0()
{
  result = qword_22A170;
  if (!qword_22A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A170);
  }

  return result;
}

uint64_t sub_7D97C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_7DB64()
{
  sub_7DC84();
  if (v0 <= 0x3F)
  {
    sub_7DCF0(319);
    if (v1 <= 0x3F)
    {
      sub_7DE14(319, &qword_22A210, &qword_22A218, &qword_1BFF60);
      if (v2 <= 0x3F)
      {
        sub_7DE14(319, &qword_22A220, &qword_22A228, &qword_1BFF68);
        if (v3 <= 0x3F)
        {
          sub_7DEA4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_7DC84()
{
  if (!qword_22A200)
  {
    sub_1B40C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_22A200);
    }
  }
}

void sub_7DCF0(uint64_t a1)
{
  if (!qword_22A208)
  {
    __chkstk_darwin(a1);
    sub_1B40C4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_22A208);
    }
  }
}

void sub_7DE14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1B40C4();
    sub_1CC1C(a3, a4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_7DEA4()
{
  if (!qword_22A230)
  {
    sub_1B40C4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_22A230);
    }
  }
}

uint64_t dispatch thunk of EventStoreType.assetIDsForEvents(ofTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7E684;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of EventStoreType.events()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7E684;

  return v9(a1, a2);
}

uint64_t dispatch thunk of EventStoreType.events(ofTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7E684;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of EventStoreType.events(forBooksWithAssetIDs:ofTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_7E684;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EventStoreType.daysOfEvents(ofTypes:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EventStoreType.earliestEventTimestamp()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226C;

  return v11(a1, a2, a3);
}

uint64_t sub_7E61C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22A260, &unk_1C0010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7E688@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (!v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A0F8, &unk_1BFCE0);
  result = sub_1B4244();
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  result = sub_1B4264();
  if (v11)
  {
    v8 = type metadata accessor for MediaTypesMediaTypeRecommendationService();
    v9 = swift_allocObject();
    sub_264B8(&v14, v9 + 16);
    sub_264B8(&v12, v9 + 56);
    result = sub_264B8(&v10, v9 + 96);
    a2[3] = v8;
    a2[4] = &off_214220;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_7E828()
{
  v0 = sub_1B4344();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22A300, &unk_1C0070);
  sub_1B4304();

  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  sub_1B4214();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_7E97C()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

char *sub_7E9D8@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 2);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = result;
    result = sub_37658(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = (v5 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < 0)
      {
        break;
      }

      v11 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_37658((v9 > 1), v10 + 1, 1);
        v4 = v11;
      }

      v4[2] = v10 + 1;
      v4[v10 + 4] = v7;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_7EAB0@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (!*(v1 + 8))
    {
      *a1 = v2;
    }

    sub_7EBC8();
    swift_allocError();
    *v8 = v2;
    *(v8 + 8) = 0;
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    sub_7EBC8();
    swift_allocError();
    *v4 = v2;
    v5 = 1;
    goto LABEL_8;
  }

  if (v3 == 3)
  {
    sub_7EBC8();
    swift_allocError();
    *v4 = v2;
    v5 = 2;
LABEL_8:
    *(v4 + 8) = v5;
LABEL_11:

    return swift_willThrow();
  }

  sub_7EBC8();
  swift_allocError();
  *v7 = v2;
  *(v7 + 8) = 3;
  return swift_willThrow();
}

unint64_t sub_7EBC8()
{
  result = qword_22A408;
  if (!qword_22A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A408);
  }

  return result;
}

void *sub_7EC1C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_3747C(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_1B4F84();
    v7 = result;
    v8 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v31 = *(*(v1 + 48) + 8 * v7);
      result = sub_1B5594();
      v11 = result;
      v13 = v12;
      v14 = v4;
      v32 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_3747C((v16 > 1), v17 + 1, 1);
        v14 = v32;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v11;
      v18[5] = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_42FF0(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_42FF0(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_7EE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_3741C(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 568 * result);
    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_3741C((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    _swiftEmptyArrayStorage[v14 + 4] = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_42FF0(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_42FF0(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_7F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v39 = *(a2 + 16);
  v38 = *(a3 + 16);
  if (v38 >= v39)
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = *(a3 + 16);
  }

  if (v4 >= v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = v4;
  }

  result = sub_376E8(0, v5 & ~(v5 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v36 = v4;
    v37 = v3;
    if (v5)
    {
      v7 = (a1 + 32);
      v8 = (a2 + 32);
      v9 = (a3 + 32);

      v10 = a3;

      v11 = v37;
      v12 = v38;
      v13 = v37;
      v14 = v39;
      v15 = v39;
      v16 = v38;
      v17 = v5;
      v18 = v5;
      while (v13)
      {
        if (!v15)
        {
          goto LABEL_30;
        }

        if (!v16)
        {
          goto LABEL_31;
        }

        v19 = *v7;
        v20 = *v8;
        v21 = *v9;
        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v34 = v18;
          v33 = *v7;
          result = sub_376E8((v22 > 1), v23 + 1, 1);
          v18 = v34;
          v24 = v23 + 1;
          v19 = v33;
          v12 = v38;
          v14 = v39;
          v11 = v37;
          v10 = a3;
        }

        _swiftEmptyArrayStorage[2] = v24;
        v25 = &_swiftEmptyArrayStorage[3 * v23];
        v25[4] = v19;
        ++v9;
        ++v8;
        --v16;
        v25[5] = v20;
        v25[6] = v21;
        ++v7;
        --v15;
        --v13;
        if (!--v17)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {

      v10 = a3;

      v11 = v3;
      v12 = v38;
      v14 = v39;
      v18 = 0;
LABEL_18:
      if (v11 <= v36)
      {
LABEL_28:

        return _swiftEmptyArrayStorage;
      }

      while (v18 < v11)
      {
        v26 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_33;
        }

        if (v14 != v18)
        {
          if (v18 >= v14)
          {
            goto LABEL_34;
          }

          if (v12 != v18)
          {
            if (v18 >= v12)
            {
              goto LABEL_35;
            }

            v27 = *(a1 + 32 + 8 * v18);
            v28 = *(a2 + 32 + 8 * v18);
            v29 = *(v10 + 32 + 8 * v18);
            v31 = _swiftEmptyArrayStorage[2];
            v30 = _swiftEmptyArrayStorage[3];
            if (v31 >= v30 >> 1)
            {
              v35 = v18;
              result = sub_376E8((v30 > 1), v31 + 1, 1);
              v18 = v35;
              v12 = v38;
              v14 = v39;
              v11 = v37;
            }

            _swiftEmptyArrayStorage[2] = v31 + 1;
            v32 = &_swiftEmptyArrayStorage[3 * v31];
            v32[4] = v27;
            v32[5] = v28;
            v32[6] = v29;
            ++v18;
            if (v26 != v11)
            {
              continue;
            }
          }
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_7F358(uint64_t a1, void *a2)
{
  v3[331] = v2;
  v3[330] = a1;
  memcpy(v3 + 235, a2, 0x170uLL);
  v3[332] = a2[46];
  memcpy(v3 + 142, a2 + 47, 0x2E8uLL);

  return _swift_task_switch(sub_7F3E8, 0, 0);
}

uint64_t sub_7F3E8()
{
  v2 = v1[330];
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  v4 = *(v2 + *(result + 52));
  if (v4)
  {
    v5 = *(v2 + *(result + 56));
    if (v5 == 0x8000000000000000 && v4 == -1)
    {
      __break(1u);
    }

    else
    {
      v7 = v1[331];
      v8 = v5 / v4;
      if (v1[332] >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v1[332];
      }

      v10 = sub_7FFC0(v2, v9);
      v1[333] = v10;
      v20 = *(v10 + 16);
      if (v20)
      {
        v21 = v10;
        sub_3741C(0, v20, 0);
        v22 = (v21 + 32);
        v23 = _swiftEmptyArrayStorage[2];
        do
        {
          v25 = *v22;
          v22 += 8;
          v24 = v25;
          v26 = _swiftEmptyArrayStorage[3];
          if (v23 >= v26 >> 1)
          {
            sub_3741C((v26 > 1), v23 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v23 + 1;
          _swiftEmptyArrayStorage[v23++ + 4] = v24;
          --v20;
        }

        while (v20);
      }

      v1[334] = _swiftEmptyArrayStorage;
      v27 = v1[331];
      v28 = v27[6];
      v29 = v27[7];
      sub_2698(v27 + 3, v28);
      v30 = *(v29 + 16);
      v33 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      v1[335] = v32;
      *v32 = v1;
      v32[1] = sub_7F7E4;

      return (v33)(_swiftEmptyArrayStorage, v28, v29);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v11 = v1[332];
    v12 = v1[331];
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BCA80;
    v1[327] = 0;
    v1[328] = 0xE000000000000000;
    v1[329] = v0;
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_1B51F4();
    v14 = v1[327];
    v15 = v1[328];
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_76888();
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_1B4DB4();
    sub_1B4614();

    v17 = v12[11];
    v16 = v12[12];
    sub_2698(v12 + 8, v17);
    memcpy(v1 + 2, v1 + 235, 0x170uLL);
    v1[48] = v11;
    memcpy(v1 + 49, v1 + 142, 0x2E8uLL);
    v18 = swift_task_alloc();
    v1[339] = v18;
    *v18 = v1;
    v18[1] = sub_7FBBC;
    v19 = v1[330];

    return sub_165F78(v19, (v1 + 2), v17, v16);
  }

  return result;
}

uint64_t sub_7F7E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2680);
  v8 = *v2;
  v3[336] = a1;
  v3[337] = v1;

  if (v1)
  {
    v5 = sub_7FD4C;
  }

  else
  {
    v6 = v3[334];

    v5 = sub_7F904;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_7F904()
{
  v1 = *(v0 + 2664);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 2424);
    v5 = *(v0 + 2688);
    v6 = v1 + 32;
    v7 = _swiftEmptyArrayStorage;
    v34 = v6;
    do
    {
      v8 = (v6 + (v3 << 6));
      v9 = v3;
      while (1)
      {
        if (v9 >= *(*(v0 + 2664) + 16))
        {
          __break(1u);
          return;
        }

        v10 = *v8;
        v11 = v8[1];
        v12 = v8[3];
        *(v0 + 2456) = v8[2];
        *(v0 + 2472) = v12;
        *v4 = v10;
        *(v0 + 2440) = v11;
        if (*(v5 + 16))
        {
          v13 = *(v0 + 2688);
          v14 = sub_43124(*(v0 + 2424));
          if (v15)
          {
            break;
          }
        }

        ++v9;
        v8 += 4;
        if (v2 == v9)
        {
          goto LABEL_15;
        }
      }

      v16 = *(v5 + 56) + 88 * v14;
      v17 = *v16;
      *(v0 + 2264) = *(v16 + 16);
      v18 = *(v16 + 32);
      v19 = *(v16 + 48);
      v20 = *(v16 + 64);
      *(v0 + 2328) = *(v16 + 80);
      *(v0 + 2296) = v19;
      *(v0 + 2312) = v20;
      *(v0 + 2280) = v18;
      *(v0 + 2248) = v17;
      v21 = *(v0 + 2264);
      v41 = *(v16 + 32);
      v42 = *(v16 + 48);
      v43 = *(v16 + 64);
      v44 = *(v16 + 80);
      v39 = *v16;
      v40 = *(v16 + 16);
      sub_42BA4(v0 + 2424, v0 + 2488);
      sub_42BA4(v0 + 2424, v0 + 2552);
      sub_5EDD8(v0 + 2248, v0 + 2336);
      v33 = v21;

      v22 = Book.Metadata.genreIDs.getter();
      v32 = sub_40E7C(&off_212D68);
      sub_43FF4(v0 + 2424);
      sub_85554(v0 + 2248);
      v30 = *(v0 + 2304);
      v31 = *(v0 + 2288);
      v29 = *(v0 + 2320);
      v35 = *v4;
      v36 = *(v0 + 2440);
      v37 = *(v0 + 2456);
      v38 = *(v0 + 2472);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_33358(0, *(v7 + 2) + 1, 1, v7);
      }

      v24 = *(v7 + 2);
      v23 = *(v7 + 3);
      if (v24 >= v23 >> 1)
      {
        v7 = sub_33358((v23 > 1), v24 + 1, 1, v7);
      }

      v3 = v9 + 1;
      *(v7 + 2) = v24 + 1;
      v25 = &v7[136 * v24];
      *(v25 + 4) = v37;
      *(v25 + 5) = v38;
      *(v25 + 2) = v35;
      *(v25 + 3) = v36;
      *(v25 + 12) = v33;
      *(v25 + 13) = v22;
      *(v25 + 14) = v32;
      *(v25 + 15) = _swiftEmptySetSingleton;
      *(v25 + 8) = v31;
      *(v25 + 9) = v30;
      v25[160] = v29;
      v6 = v34;
    }

    while (v2 - 1 != v9);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  v26 = *(v0 + 2688);
  v27 = *(v0 + 2664);

  v28 = *(v0 + 8);

  v28(v7);
}

uint64_t sub_7FBBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2712);
  v6 = *v2;
  *(*v2 + 2720) = v1;

  if (v1)
  {
    v7 = sub_7FF5C;
  }

  else
  {
    *(v4 + 2728) = a1;
    v7 = sub_7FCE4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_7FCE4()
{
  v1 = v0[338];

  v2 = v0[341];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_7FD4C()
{
  v1 = v0[334];
  v2 = v0[333];

  v3 = v0[337];
  v0[338] = v3;
  if (qword_228318 != -1)
  {
    swift_once();
  }

  v4 = v0[332];
  v5 = v0[331];
  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BCA80;
  v0[327] = 0;
  v0[328] = 0xE000000000000000;
  v0[329] = v3;
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B51F4();
  v7 = v0[327];
  v8 = v0[328];
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_76888();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_1B4DB4();
  sub_1B4614();

  v10 = v5[11];
  v9 = v5[12];
  sub_2698(v5 + 8, v10);
  memcpy(v0 + 2, v0 + 235, 0x170uLL);
  v0[48] = v4;
  memcpy(v0 + 49, v0 + 142, 0x2E8uLL);
  v11 = swift_task_alloc();
  v0[339] = v11;
  *v11 = v0;
  v11[1] = sub_7FBBC;
  v12 = v0[330];

  return sub_165F78(v12, (v0 + 2), v10, v9);
}

uint64_t sub_7FF5C()
{
  v1 = v0[338];

  v2 = v0[1];
  v3 = v0[340];

  return v2();
}

uint64_t sub_7FFC0(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v4 = sub_1B4414();
  v132 = *(v4 - 8);
  v133 = v4;
  v5 = *(v132 + 64);
  v6 = __chkstk_darwin(v4);
  v137 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v135 = &v130 - v9;
  __chkstk_darwin(v8);
  v136 = &v130 - v10;
  v138 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v134 = *(v138 - 8);
  v11 = *(v134 + 64);
  __chkstk_darwin(v138);
  v13 = &v130 - v12;
  v131 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v14 = v131[5];
  v140 = a1;
  v15 = *(a1 + v14);
  LOBYTE(v14) = v15[32];
  v16 = v14 & 0x3F;
  v17 = ((1 << v14) + 63) >> 6;
  v18 = 8 * v17;

  v20 = "ion";
  v150 = v15;
  v147 = v13;
  if (v16 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_119;
    }
  }

  v141 = &v130;
  v142 = v17;
  __chkstk_darwin(v19);
  v145 = &v130 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v145, v18);
  v146 = 0;
  v21 = 0;
  v22 = v15 + 56;
  v23 = 1 << v15[32];
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v15 + 7);
  v26 = (v23 + 63) >> 6;
  v148 = xmmword_1BCA80;
  do
  {
    while (2)
    {
      if (v25)
      {
        v27 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        goto LABEL_13;
      }

      v28 = v21;
      do
      {
        v21 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_60;
        }

        if (v21 >= v26)
        {
          goto LABEL_25;
        }

        v29 = *&v22[8 * v21];
        ++v28;
      }

      while (!v29);
      v27 = __clz(__rbit64(v29));
      v25 = (v29 - 1) & v29;
LABEL_13:
      v30 = v27 | (v21 << 6);
      v31 = *(v15 + 6);
      v149 = v30;
      memcpy(v158, (v31 + 568 * v30), 0x231uLL);
      v32 = v158[18];
      if (v158[18] >> 1 == 0xFFFFFFFF)
      {
        __break(1u);
        goto LABEL_128;
      }

      v2 = v158[12];
      v33 = v158[13];
      if ((v158[18] >> 62) <= 1)
      {
        v151 = v158[16];
        v152 = v158[14];
        v153 = v158[17];
        v154 = v158[15];
        goto LABEL_18;
      }

      if (v158[18] >> 62 == 2)
      {
        v153 = v158[17];
        v154 = v158[15];
        v151 = v158[16];
        v152 = v158[14];
LABEL_18:
        sub_2B0C(&qword_229488, &qword_1BC520);
        v34 = swift_allocObject();
        *(v34 + 16) = v148;
        *(v34 + 32) = v2;
        *(v34 + 40) = v33;
        v35 = v154;
        *(v34 + 48) = v152;
        *(v34 + 56) = v35;
        v36 = v153;
        *(v34 + 64) = v151;
        *(v34 + 72) = v36;
        *(v34 + 80) = v32 & 1;
      }

      else
      {
        v34 = v158[12];
      }

      sub_4299C(v158, v157);
      sub_43050(&v158[12], v157, &qword_22A4E0, &unk_1C01D0);
      v37 = COERCE_DOUBLE(Array<A>.affinity.getter(v34));
      v39 = v38;

      sub_2601C(v158);
      if ((v39 & 1) != 0 || v37 <= 0.0)
      {
        v15 = v150;
        continue;
      }

      break;
    }

    v15 = v150;
    *&v145[(v149 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v149;
    v40 = __OFADD__(v146++, 1);
  }

  while (!v40);
  __break(1u);
LABEL_25:
  v41 = sub_3D37C(v145, v142, v146, v15);
  v13 = v147;
  v20 = "ion";
  while (1)
  {
    v42 = *(v41 + 16);
    if (!v42)
    {
      break;
    }

    v15 = sub_351DC(*(v41 + 16), 0);
    v20 = sub_3EF0C(v158, v15 + 32, v42, v41);
    v13 = v158[2];
    v17 = v158[4];

    sub_417B8();
    if (v20 == v42)
    {
      v13 = v147;
      v20 = "CommonConfiguration" + 16;
      goto LABEL_30;
    }

    __break(1u);
LABEL_119:
    v127 = swift_slowAlloc();
    v128 = v144;
    v129 = sub_1798C8(v127, v17, v15, sub_82760);
    v144 = v128;
    if (v128)
    {
      goto LABEL_134;
    }

    v41 = v129;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_30:
  v158[0] = v15;
  v43 = v144;
  sub_14AF14(v158);
  if (v43)
  {

    __break(1u);
    goto LABEL_133;
  }

  v44 = v158[0];
  if (v143)
  {
    v45 = sub_154B48(0, *(v158[0] + 16), v143, v143, v158[0]);

    v46 = v45;
    if (!v45[2])
    {

      sub_85CD4();
      swift_allocError();
      *v47 = 1;
      swift_willThrow();
      return v44;
    }
  }

  else
  {

    sub_2B0C(&qword_2293A8, &qword_1BC448);
    v46 = swift_allocObject();
    *(v46 + 16) = *(v20 + 168);
    *(v46 + 32) = _swiftEmptyArrayStorage;
    *(v46 + 40) = &_swiftEmptyArrayStorage[4];
    *(v46 + 48) = xmmword_1C00C0;
  }

  v48 = *(v46 + 32);
  v49 = *(v46 + 40);
  v51 = *(v46 + 48);
  v50 = *(v46 + 56);
  swift_unknownObjectRetain();

  v53 = *(v139 + 16);
  __chkstk_darwin(v52);
  *(&v130 - 6) = v48;
  *(&v130 - 5) = v49;
  *(&v130 - 4) = v51;
  *(&v130 - 3) = v50;
  *(&v130 - 2) = v140;
  sub_1B4444();
  v149 = v50;
  v151 = v51;
  v152 = v49;
  v55 = v138;
  sub_1B4454();
  memcpy(v158, v157, 0x1B0uLL);
  sub_43050(&v158[45], v156, &qword_22A4E8, &unk_1C01E0);
  sub_726C8(v158);
  v44 = v158[48];
  if (!v158[48])
  {
    sub_85CD4();
    swift_allocError();
    *v58 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v134 + 8))(v13, v55);
    return v44;
  }

  v153 = &v130;
  v154 = v48;
  *&v148 = v158[53];
  v56 = v158[51];

  sub_1B43F4();

  sub_1B43F4();

  sub_1B43F4();
  v57 = sub_42094(&qword_22A4F8, &qword_22A4D8, &unk_1C5FC0);
  v59 = sub_1B44F4();
  v146 = v57;
  v60 = 0;
  v61 = *(v59 + 2);
  v62 = v59 + 40;
  v63 = _swiftEmptyArrayStorage;
LABEL_41:
  v64 = v62;
  v65 = &v62[16 * v60];
  while (v61 != v60)
  {
    if (v60 >= *(v59 + 2))
    {
      __break(1u);
LABEL_83:

      goto LABEL_84;
    }

    ++v60;
    v56 = (v65 + 2);
    v57 = *(v65 - 1);
    v66 = *v65;

    v67 = sub_CC298(v57, v66);
    v65 = v56;
    if ((v68 & 1) == 0)
    {
      v57 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_33008(0, *(v63 + 2) + 1, 1, v63);
      }

      v56 = *(v63 + 2);
      v69 = *(v63 + 3);
      v70 = v63;
      if (v56 >= v69 >> 1)
      {
        v70 = sub_33008((v69 > 1), v56 + 1, 1, v63);
      }

      *(v70 + 2) = v56 + 1;
      v63 = v70;
      *&v70[8 * v56 + 32] = v57;
      v62 = v64;
      goto LABEL_41;
    }
  }

  v21 = v147;
  v71 = sub_1B4504();
  v2 = 0;
  v145 = v63;
  v74 = *(v71 + 16);
  if (v74)
  {
    v157[0] = _swiftEmptyArrayStorage;
    v144 = v71;
    sub_37708(0, v74, 0);
    v75 = v144;
    v15 = v157[0];
    v76 = *(v157[0] + 2);
    v77 = 32;
    do
    {
      v78 = *(v75 + v77);
      v157[0] = v15;
      v79 = *(v15 + 3);
      if (v76 >= v79 >> 1)
      {
        sub_37708((v79 > 1), v76 + 1, 1);
        v75 = v144;
        v15 = v157[0];
      }

      *(v15 + 2) = v76 + 1;
      *&v15[8 * v76 + 32] = v78;
      v77 += 4;
      ++v76;
      --v74;
    }

    while (v74);
LABEL_60:
    v63 = _swiftEmptyArrayStorage;

    v21 = v147;
  }

  else
  {
    v63 = _swiftEmptyArrayStorage;

    v15 = _swiftEmptyArrayStorage;
  }

  v80 = sub_1B4504();
  v81 = v140;
  if (v2)
  {

    sub_42F48(&v158[45], &qword_22A4E8, &unk_1C01E0);
    if (qword_228318 != -1)
    {
      goto LABEL_126;
    }

    goto LABEL_39;
  }

  v82 = *(v80 + 16);
  if (v82)
  {
    v157[0] = _swiftEmptyArrayStorage;
    v146 = v80;
    sub_37708(0, v82, 0);
    v83 = v146;
    v84 = v157[0];
    v85 = *(v157[0] + 2);
    v86 = 32;
    do
    {
      v87 = *(v83 + v86);
      v157[0] = v84;
      v88 = *(v84 + 3);
      if (v85 >= v88 >> 1)
      {
        sub_37708((v88 > 1), v85 + 1, 1);
        v83 = v146;
        v84 = v157[0];
      }

      *(v84 + 2) = v85 + 1;
      *&v84[8 * v85 + 32] = v87;
      v86 += 4;
      ++v85;
      --v82;
    }

    while (v82);

    v21 = v147;
    v81 = v140;
  }

  else
  {

    v84 = _swiftEmptyArrayStorage;
  }

  v89 = *(v84 + 2);
  if (v89 != *(v145 + 2))
  {

    sub_42F48(&v158[45], &qword_22A4E8, &unk_1C01E0);
    if (qword_228318 == -1)
    {
      goto LABEL_81;
    }

    goto LABEL_128;
  }

  if (*(v15 + 2) != v89)
  {

    sub_42F48(&v158[45], &qword_22A4E8, &unk_1C01E0);
    if (qword_228318 == -1)
    {
LABEL_81:
      sub_1B4D94();
      v44 = _swiftEmptyArrayStorage;
      sub_1B4614();
      goto LABEL_51;
    }

LABEL_128:
    swift_once();
    goto LABEL_81;
  }

  v56 = sub_7F090(v145, v84, v15);
  v57 = 0;

  LOBYTE(v64) = *(v81 + v131[8]);
  v59 = *(v81 + v131[12]);

  v90 = sub_7EE60(v150);
  v157[0] = v59;
  v91 = *(v90 + 16);
  if (!v91)
  {
    goto LABEL_83;
  }

  v92 = 32;
  do
  {
    sub_111CE0(v156, *(v90 + v92));
    v92 += 8;
    --v91;
  }

  while (v91);

  v59 = v157[0];
LABEL_84:
  v93 = v148;
  if (v148)
  {
    v94 = *(v56 + 16);

    v95 = sub_85A24(0, v94, v93, v93, v56);

    sub_42F48(&v158[45], &qword_22A4E8, &unk_1C01E0);
  }

  else
  {

    sub_2B0C(&qword_229508, &unk_1C01F0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1BCA80;
    *(v95 + 32) = v63;
    *(v95 + 40) = v63 + 32;
    *(v95 + 48) = xmmword_1C00C0;
    v96 = sub_42F48(&v158[45], &qword_22A4E8, &unk_1C01E0);
  }

  v97 = v140;
  v155[0] = v95;
  v155[1] = v154;
  v155[2] = v152;
  v155[3] = v151;
  v155[4] = v149;
  __chkstk_darwin(v96);
  *(&v130 - 32) = v64;
  *(&v130 - 3) = v97;
  *(&v130 - 2) = v59;
  swift_unknownObjectRetain();
  v98 = v57;
  v99 = sub_855A8(v155, sub_85D28);
  v151 = v98;

  swift_unknownObjectRelease();

  v100 = v99;
  v21 = v99[2];
  if (!v21)
  {
    v102 = _swiftEmptyArrayStorage;
LABEL_105:

    v157[0] = v102;

    v113 = v151;
    sub_84C1C(v157);
    if (!v113)
    {

      sub_2B0C(&qword_229500, &unk_1BC580);
      sub_42094(&qword_22A500, &qword_229500, &unk_1BC580);
      v114 = sub_1B4984();

      v115 = sub_43174(*(v97 + v131[14]), v114);
      if (v118)
      {
        v120 = v118;
        v121 = v117;
        v122 = v116;
        v123 = v115;
        sub_1B5744();
        swift_unknownObjectRetain_n();
        v124 = v123;
        v125 = swift_dynamicCastClass();
        if (!v125)
        {
          swift_unknownObjectRelease();
          v125 = _swiftEmptyArrayStorage;
        }

        v126 = v125[2];

        if (__OFSUB__(v120 >> 1, v121))
        {
          __break(1u);
        }

        else if (v126 == (v120 >> 1) - v121)
        {
          v44 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v44)
          {
            v21 = v147;
            goto LABEL_52;
          }

          v44 = _swiftEmptyArrayStorage;
LABEL_117:
          v21 = v147;
          goto LABEL_51;
        }

        swift_unknownObjectRelease();
        v118 = v120;
        v117 = v121;
        v115 = v124;
        v116 = v122;
      }

      sub_511BC(v115, v116, v117, v118);
      v44 = v119;
      swift_unknownObjectRelease();
      goto LABEL_117;
    }

LABEL_133:

    __break(1u);
LABEL_134:

    __break(1u);
    return result;
  }

  v101 = 0;
  v152 = (v100 + 4);
  v102 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v101 >= v100[2])
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      swift_once();
      sub_1B4D94();
      v44 = _swiftEmptyArrayStorage;
      sub_1B4614();

      goto LABEL_51;
    }

    v103 = *(v152 + 8 * v101);
    v104 = *(v103 + 16);
    v105 = *(v102 + 2);
    v106 = v105 + v104;
    if (__OFADD__(v105, v104))
    {
      goto LABEL_122;
    }

    v107 = v100;
    v108 = *(v152 + 8 * v101);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v106 > *(v102 + 3) >> 1)
    {
      if (v105 <= v106)
      {
        v110 = v105 + v104;
      }

      else
      {
        v110 = v105;
      }

      v102 = sub_3349C(isUniquelyReferenced_nonNull_native, v110, 1, v102);
    }

    if (!*(v103 + 16))
    {

      v97 = v140;
      if (v104)
      {
        goto LABEL_123;
      }

      goto LABEL_90;
    }

    if ((*(v102 + 3) >> 1) - *(v102 + 2) < v104)
    {
      break;
    }

    swift_arrayInitWithCopy();

    v97 = v140;
    if (v104)
    {
      v111 = *(v102 + 2);
      v40 = __OFADD__(v111, v104);
      v112 = v111 + v104;
      if (v40)
      {
        goto LABEL_125;
      }

      *(v102 + 2) = v112;
    }

LABEL_90:
    ++v101;
    v100 = v107;
    if (v21 == v101)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  swift_once();
LABEL_39:
  sub_1B4D94();
  v44 = _swiftEmptyArrayStorage;
  sub_1B4614();

LABEL_51:
  swift_unknownObjectRelease();
LABEL_52:
  v72 = v133;
  v73 = *(v132 + 8);
  v73(v137, v133);
  v73(v135, v72);
  v73(v136, v72);
  (*(v134 + 8))(v21, v138);
  return v44;
}

uint64_t WorkServiceSeedBasedRecommendationService.fetchBooks(for:configuration:)(uint64_t a1, const void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_8143C, 0, 0);
}

uint64_t sub_8143C()
{
  v1 = sub_2B0C(&qword_229360, &qword_1BC400);
  v2 = swift_task_alloc();
  *(v0 + 1160) = v2;
  *(v2 + 16) = *(v0 + 1144);
  *(v2 + 32) = v0 + 16;
  v3 = sub_2B0C(&qword_22A410, &qword_1C0110);
  v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  *(v0 + 1168) = v5;
  *v5 = v0;
  v5[1] = sub_81564;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1136, v1, v3, 0, 0, &unk_1C0108, v2, v1);
}

uint64_t sub_81564()
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v7 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v4 = sub_8169C;
  }

  else
  {
    v5 = *(v2 + 1160);

    v4 = sub_81680;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8169C()
{
  v1 = v0[145];

  v2 = v0[1];
  v3 = v0[147];

  return v2();
}

uint64_t sub_81700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[295] = a5;
  v5[294] = a4;
  v5[293] = a3;
  v5[292] = a2;
  v5[291] = a1;
  v6 = sub_2B0C(&qword_229360, &qword_1BC400);
  v5[296] = v6;
  v7 = *(v6 - 8);
  v5[297] = v7;
  v8 = *(v7 + 64) + 15;
  v5[298] = swift_task_alloc();
  v5[299] = swift_task_alloc();
  v5[300] = swift_task_alloc();
  v9 = *(*(sub_2B0C(&qword_22A4C8, &qword_1CF3D0) - 8) + 64) + 15;
  v5[301] = swift_task_alloc();
  v10 = sub_2B0C(&qword_22A4D0, &unk_1C01A0);
  v5[302] = v10;
  v11 = *(v10 - 8);
  v5[303] = v11;
  v12 = *(v11 + 64) + 15;
  v5[304] = swift_task_alloc();
  v13 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v5[305] = v13;
  v5[306] = *(v13 + 64);
  v5[307] = swift_task_alloc();
  v14 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  v5[308] = swift_task_alloc();
  v5[309] = swift_task_alloc();

  return _swift_task_switch(sub_81938, 0, 0);
}

uint64_t sub_81938()
{
  v1 = *(v0 + 2344);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 2440);
    v40 = **(v0 + 2336);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v38 = *(v3 + 72);
    v39 = v4;
    v37 = (*(v0 + 2448) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1B4C54();
    v7 = *(v6 - 8);
    v36 = *(v7 + 56);
    v35 = (v7 + 48);
    v34 = (v7 + 8);
    do
    {
      v41 = v2;
      v11 = *(v0 + 2472);
      v12 = *(v0 + 2464);
      v13 = *(v0 + 2456);
      v14 = *(v0 + 2360);
      v15 = *(v0 + 2352);
      v36(v11, 1, 1, v6);
      sub_8478C(v5, v13);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = (v16 + 16);
      *(v16 + 24) = 0;
      sub_84A24(v13, v16 + v39);
      *(v16 + v37) = v15;
      memcpy((v16 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)), v14, 0x460uLL);
      sub_43050(v11, v12, &qword_2296C0, &qword_1C3800);
      LODWORD(v12) = (*v35)(v12, 1, v6);

      v18 = *(v0 + 2464);
      v19 = *(v0 + 2360);
      if (v12 == 1)
      {
        sub_84BC0(v19, v0 + 16);
        sub_42F48(v18, &qword_2296C0, &qword_1C3800);
      }

      else
      {
        sub_84BC0(v19, v0 + 1136);
        sub_1B4C44();
        (*v34)(v18, v6);
      }

      if (*v17)
      {
        v20 = *(v16 + 24);
        v21 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_1B4BC4();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      if (v24 | v22)
      {
        v8 = v0 + 2256;
        *(v0 + 2256) = 0;
        *(v0 + 2264) = 0;
        *(v0 + 2272) = v22;
        *(v0 + 2280) = v24;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 2472);
      v10 = *(v0 + 2368);
      *(v0 + 2288) = 1;
      *(v0 + 2296) = v8;
      *(v0 + 2304) = v40;
      swift_task_create();

      sub_42F48(v9, &qword_2296C0, &qword_1C3800);
      v5 += v38;
      v2 = v41 - 1;
    }

    while (v41 != 1);
  }

  v25 = *(v0 + 2432);
  v26 = *(v0 + 2368);
  v27 = **(v0 + 2336);
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  *(v0 + 2480) = &_swiftEmptyDictionarySingleton;
  v28 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v29 = swift_task_alloc();
  *(v0 + 2488) = v29;
  *v29 = v0;
  v29[1] = sub_81D38;
  v30 = *(v0 + 2432);
  v31 = *(v0 + 2416);
  v32 = *(v0 + 2408);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v32, 0, 0, v31, v0 + 2312);
}

uint64_t sub_81D38()
{
  v2 = *v1;
  v3 = *(*v1 + 2488);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 2480);

    v5 = sub_82284;
  }

  else
  {
    v5 = sub_81E50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_81E50()
{
  v1 = v0[301];
  v2 = v0[296];
  v3 = (*(v0[297] + 48))(v1, 1, v2);
  v4 = v0[310];
  if (v3 == 1)
  {
    v5 = v0[309];
    v6 = v0[308];
    v7 = v0[307];
    v8 = v0[300];
    v9 = v0[299];
    v52 = v0[298];
    v10 = v0[291];
    (*(v0[303] + 8))(v0[304], v0[302]);
    *v10 = v4;

    v11 = v0[1];

    return v11();
  }

  v13 = v0[300];
  v14 = v0[299];
  v15 = v0[298];
  v16 = *(v2 + 48);
  v17 = *(v1 + v16);
  v18 = sub_1B40F4();
  v19 = *(v18 - 8);
  v53 = v18;
  (*(v19 + 32))(v13, v1);
  *(v13 + v16) = v17;
  v20 = &qword_229360;
  sub_43050(v13, v14, &qword_229360, &qword_1BC400);
  v21 = *(v14 + *(v2 + 48));

  sub_43050(v13, v15, &qword_229360, &qword_1BC400);
  v22 = *(v15 + *(v2 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[290] = v4;
  v24 = sub_3AC78(v14);
  v26 = *(v4 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
LABEL_20:
    v51 = v24;
    sub_185F44();
    v24 = v51;
LABEL_12:
    v33 = v0[290];
    v34 = v0[300];
    if (v20)
    {
      v35 = v33[7];
      v36 = *(v35 + 8 * v24);
      *(v35 + 8 * v24) = v22;

      sub_42F48(v34, &qword_229360, &qword_1BC400);
    }

    else
    {
      v37 = v0[299];
      v33[(v24 >> 6) + 8] |= 1 << v24;
      v38 = v24;
      (*(v19 + 16))(v33[6] + *(v19 + 72) * v24, v37, v53);
      *(v33[7] + 8 * v38) = v22;
      v39 = sub_42F48(v34, &qword_229360, &qword_1BC400);
      v44 = v33[2];
      v28 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v28)
      {
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v39, v40, v41, v42, v43);
      }

      v33[2] = v45;
    }

    v46 = v0[298];
    v47 = *(v19 + 8);
    v47(v0[299], v53);
    v47(v46, v53);
    v0[310] = v33;
    v48 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v49 = swift_task_alloc();
    v0[311] = v49;
    *v49 = v0;
    v49[1] = sub_81D38;
    v50 = v0[304];
    v42 = v0[302];
    v39 = v0[301];
    v43 = v0 + 289;
    v40 = 0;
    v41 = 0;

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v39, v40, v41, v42, v43);
  }

  LOBYTE(v20) = v25;
  if (*(v0[310] + 24) >= v29)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v30 = v0[299];
  sub_17F10C(v29, isUniquelyReferenced_nonNull_native);
  v31 = v0[290];
  v24 = sub_3AC78(v30);
  if ((v20 & 1) == (v32 & 1))
  {
    goto LABEL_12;
  }

  return sub_1B5784();
}

uint64_t sub_82284()
{
  v1 = v0[309];
  v2 = v0[308];
  v3 = v0[307];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[299];
  v7 = v0[298];
  (*(v0[303] + 8))(v0[304], v0[302]);
  v8 = v0[289];

  v9 = v0[1];

  return v9();
}

uint64_t sub_8237C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7A038;

  return sub_81700(a1, a2, v6, v7, v8);
}

uint64_t sub_82440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[145] = a6;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  return _swift_task_switch(sub_8246C, 0, 0);
}

uint64_t sub_8246C()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v0[142];
  v4 = sub_1B40F4();
  v0[146] = v4;
  v5 = *(v4 - 8);
  v0[147] = v5;
  (*(v5 + 16))(v3, v2, v4);
  memcpy(v0 + 2, v1, 0x460uLL);
  v6 = swift_task_alloc();
  v0[148] = v6;
  *v6 = v0;
  v6[1] = sub_82580;
  v7 = v0[144];
  v8 = v0[143];

  return sub_7F358(v8, v0 + 2);
}

uint64_t sub_82580(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1184);
  v8 = *v2;
  *(*v2 + 1192) = v1;

  if (v1)
  {
    v6 = sub_826E8;
  }

  else
  {
    *(v4 + 1200) = a1;
    *(v4 + 1208) = *(sub_2B0C(&qword_229360, &qword_1BC400) + 48);
    v6 = sub_826C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_826E8()
{
  (*(v0[147] + 8))(v0[142], v0[146]);
  v1 = v0[1];
  v2 = v0[149];

  return v1();
}

uint64_t sub_82760(uint64_t result)
{
  v1 = *(result + 144);
  v14 = *(result + 128);
  v15 = v1;
  v16 = *(result + 160);
  v2 = *(result + 112);
  v12 = *(result + 96);
  v13 = v2;
  v3 = v15;
  if (v15 >> 1 == 0xFFFFFFFF)
  {
    __break(1u);
  }

  else
  {
    v4 = v12;
    v5 = v13;
    v6 = v14;
    if ((v15 >> 62) > 2)
    {
      v7 = v12;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1BCA80;
      *(v7 + 32) = v4;
      *(v7 + 48) = v5;
      *(v7 + 64) = v6;
      *(v7 + 80) = v3 & 1;
    }

    sub_42CD4(&v12, v11);
    v8 = COERCE_DOUBLE(Array<A>.affinity.getter(v7));
    v10 = v9;

    return (v8 > 0.0) & ~v10;
  }

  return result;
}

uint64_t sub_82878@<X0>(void *a1@<X0>, uint64_t a2@<X2>, int64_t a3@<X3>, unint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X8>)
{
  v229 = a4;
  v215 = a5;
  v231 = a3;
  v201 = a2;
  v223 = sub_1B4594();
  v214 = *(v223 - 8);
  v8 = v214[8];
  __chkstk_darwin(v223);
  v217 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v216 = sub_1B4824();
  v209 = *(v216 - 8);
  v10 = v209[8];
  __chkstk_darwin(v216);
  v202 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v192 = (&v186 - v18);
  v19 = __chkstk_darwin(v17);
  v194 = (&v186 - v20);
  v21 = __chkstk_darwin(v19);
  v218 = (&v186 - v22);
  v23 = __chkstk_darwin(v21);
  v197 = (&v186 - v24);
  v25 = __chkstk_darwin(v23);
  v196 = &v186 - v26;
  __chkstk_darwin(v25);
  v199 = &v186 - v27;
  v28 = sub_1B45D4();
  v205 = *(v28 - 8);
  v206 = v28;
  v29 = *(v205 + 64);
  v30 = __chkstk_darwin(v28);
  v204 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v222 = &v186 - v33;
  __chkstk_darwin(v32);
  v219 = &v186 - v34;
  v35 = sub_1B4414();
  v203 = *(v35 - 8);
  v36 = *(v203 + 64);
  v37 = __chkstk_darwin(v35);
  v191 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v207 = &v186 - v40;
  v41 = __chkstk_darwin(v39);
  v193 = &v186 - v42;
  v43 = __chkstk_darwin(v41);
  v224 = &v186 - v44;
  v45 = __chkstk_darwin(v43);
  v195 = &v186 - v46;
  v47 = __chkstk_darwin(v45);
  v198 = &v186 - v48;
  v49 = __chkstk_darwin(v47);
  v200 = &v186 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = (&v186 - v52);
  v54 = __chkstk_darwin(v51);
  v56 = &v186 - v55;
  __chkstk_darwin(v54);
  v58 = &v186 - v57;
  v208 = sub_1B40F4();
  v59 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v62 = &v186 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[48])
  {
    sub_85CD4();
    swift_allocError();
    *v108 = 0;
    return swift_willThrow();
  }

  v187 = v60;
  v226 = v16;
  v213 = v35;
  v189 = a6;
  v63 = a1[45];
  v220 = a1[46];
  v221 = v63;
  v64 = a1[52];
  v228 = a1[51];
  v65 = v56;
  v66 = a1[49];
  v67 = a1[50];
  v68 = a1[47];
  v210 = v62;
  sub_1B40E4();

  v211 = v58;
  sub_1B43F4();

  v212 = v65;
  sub_1B43F4();

  sub_1B43F4();
  v69 = v53;
  if (qword_228318 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v228 = qword_22E360;
    LODWORD(v227) = sub_1B4D84();
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1C00D0;
    sub_85D3C();
    v71 = sub_1B5594();
    v73 = v72;
    *(v70 + 56) = &type metadata for String;
    v74 = sub_76888();
    *(v70 + 64) = v74;
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    v234[0] = 0;
    v234[1] = 0xE000000000000000;
    sub_1B51F4();
    v75 = v234[0];
    v76 = v234[1];
    *(v70 + 96) = &type metadata for String;
    *(v70 + 104) = v74;
    *(v70 + 72) = v75;
    *(v70 + 80) = v76;
    v234[0] = 0;
    v234[1] = 0xE000000000000000;
    sub_1B51F4();
    v77 = v234[0];
    v78 = v234[1];
    *(v70 + 136) = &type metadata for String;
    *(v70 + 144) = v74;
    *(v70 + 112) = v77;
    *(v70 + 120) = v78;
    v234[0] = 0;
    v234[1] = 0xE000000000000000;
    v188 = v69;
    sub_1B51F4();
    v79 = v234[0];
    v80 = v234[1];
    *(v70 + 176) = &type metadata for String;
    *(v70 + 184) = v74;
    *(v70 + 152) = v79;
    *(v70 + 160) = v80;
    sub_1B4614();

    v82 = v229 >> 1;
    v83 = (v229 >> 1) - v231;
    if (__OFSUB__(v229 >> 1, v231))
    {
      break;
    }

    v225 = (v229 >> 1);
    v190 = (v229 >> 1) - v231;
    v186 = v83 & ~(v83 >> 63);
    if (v83)
    {
      v235 = _swiftEmptyArrayStorage;
      result = sub_3782C(0, v83 & ~(v83 >> 63), 0);
      if (v83 < 0)
      {
        goto LABEL_73;
      }

      if (v82 <= v231)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v84 = v235;
      v69 = (v201 + 568 * v231);
      v85 = (v231 + 1);
      while (1)
      {
        v229 = v84;
        memcpy(v234, v69, 0x231uLL);
        if (LOBYTE(v234[1]) == 1)
        {
          sub_4299C(v234, v232);

          v86 = 1;
        }

        else
        {
          v87 = sub_1B5604();
          sub_4299C(v234, v232);

          v86 = v87 & 1;
        }

        LODWORD(v228) = v86;
        v88 = v234[0];
        v232[2] = *&v234[5];
        v232[3] = *&v234[7];
        v232[4] = *&v234[9];
        v233 = v234[11];
        v232[0] = *&v234[1];
        v232[1] = *&v234[3];
        v89 = Book.Metadata.genreIDs.getter();
        v90 = v230;
        v91 = sub_7EC1C(v89);

        v92 = sub_7EC1C(v234[3]);
        v230 = v90;
        *&v232[0] = v88;
        v93 = sub_1B5594();
        v227 = v94;
        v95 = v221;
        v96 = sub_947FC(v221, v91);

        v97 = v96[2];
        if (v97 == v95)
        {
          v98 = v220;
        }

        else
        {
          v98 = v220;
          if (__OFSUB__(v95, v97))
          {
            goto LABEL_67;
          }

          v99 = sub_972C8(0, 0xE000000000000000, v95 - v97);
          *&v232[0] = v96;
          sub_5FC38(v99);
          v96 = *&v232[0];
        }

        v100 = sub_947FC(v98, v92);

        v101 = v100[2];
        if (v101 == v98)
        {
          sub_2601C(v234);
        }

        else
        {
          if (__OFSUB__(v98, v101))
          {
            goto LABEL_68;
          }

          v102 = sub_972C8(0, 0xE000000000000000, v98 - v101);
          *&v232[0] = v100;
          sub_5FC38(v102);
          sub_2601C(v234);
          v100 = *&v232[0];
        }

        v84 = v229;
        v235 = v229;
        v104 = *(v229 + 16);
        v103 = *(v229 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_3782C((v103 > 1), v104 + 1, 1);
          v84 = v235;
        }

        *(v84 + 16) = v104 + 1;
        v105 = v84 + 40 * v104;
        v106 = v227;
        *(v105 + 32) = v93;
        *(v105 + 40) = v106;
        *(v105 + 48) = v228;
        *(v105 + 56) = v96;
        *(v105 + 64) = v100;
        if (v225 == v85)
        {
          break;
        }

        if (v85 >= v231)
        {
          v69 += 142;
          v107 = v85++ < v225;
          if (v107)
          {
            continue;
          }
        }

        goto LABEL_65;
      }

      v229 = v84;
    }

    else
    {
      v229 = _swiftEmptyArrayStorage;
    }

    v109 = v216;
    v110 = v209;
    v111 = v202;
    sub_1B45C4();
    sub_1B43F4();
    v228 = type metadata accessor for SeedBasedRecommendationRequest(0);
    v112 = &v215[*(v228 + 28)];
    v113 = *v112;
    v114 = v112[1];
    sub_1B4804();
    v115 = sub_1B47D4();
    v117 = v116;
    v227 = v110[1];
    result = (v227)(v111, v109);
    if (v117 >> 60 == 15)
    {
      goto LABEL_75;
    }

    v118 = v199;
    sub_1B4584();
    sub_85D94(v115, v117);
    v119 = v223;
    v220 = v214[7];
    v221 = v214 + 7;
    v220(v118, 0, 1, v223);
    sub_1B45F4();
    sub_1B43F4();
    v215[*(v228 + 32)];
    v215[*(v228 + 32)];
    sub_1B4804();
    v120 = sub_1B47D4();
    v122 = v121;

    result = (v227)(v111, v216);
    if (v122 >> 60 == 15)
    {
      goto LABEL_76;
    }

    v123 = v196;
    sub_1B4584();
    sub_85D94(v120, v122);
    v124 = v220;
    v220(v123, 0, 1, v119);
    sub_1B45F4();
    sub_1B43F4();
    v125 = v119;
    v126 = sub_2B0C(&qword_229460, &qword_1C23E0);
    v127 = swift_allocObject();
    v216 = xmmword_1BCA80;
    *(v127 + 16) = xmmword_1BCA80;
    v128 = v228;
    v129 = v215;
    *(v127 + 32) = v215[*(v228 + 36)];
    v130 = v197;
    *v197 = v127;
    v131 = v214[13];
    LODWORD(v227) = enum case for Feature.int32List(_:);
    v209 = v214 + 13;
    v202 = v131;
    (v131)(v130);
    v124(v130, 0, 1, v125);
    sub_1B45F4();
    sub_1B43F4();
    v200 = v126;
    result = swift_allocObject();
    *(result + 16) = v216;
    v132 = *&v129[*(v128 + 40)];
    if (v132 < 0xFFFFFFFF80000000)
    {
      goto LABEL_71;
    }

    if (v132 > 0x7FFFFFFF)
    {
      goto LABEL_72;
    }

    v133 = v125;
    *(result + 32) = v132;
    v134 = v129;
    v135 = v218;
    *v218 = result;
    v136 = v202;
    (v202)(v135, v227, v133);
    v124(v135, 0, 1, v133);
    sub_1B45F4();
    sub_1B43F4();
    v137 = swift_allocObject();
    *(v137 + 16) = v216;
    v69 = v228;
    *(v137 + 32) = v134[*(v228 + 44)];
    v138 = v194;
    *v194 = v137;
    v136(v138, v227, v133);
    v124(v138, 0, 1, v133);
    sub_1B45F4();
    sub_1B43F4();
    v139 = v230;
    sub_7EC1C(*&v215[v69[12]]);
    v200 = v139;
    sub_1B4574();
    v124(v135, 0, 1, v133);
    sub_1B45F4();
    sub_1B43F4();
    v140 = _swiftEmptyArrayStorage;
    v141 = v190;
    if (!v190)
    {
      v158 = v213;
      v142 = v226;
LABEL_55:
      v159 = v192;
      *v192 = v140;
      v160 = v223;
      (v202)(v159, enum case for Feature.floatList(_:), v223);
      v220(v159, 0, 1, v160);
      v161 = v219;
      sub_1B45F4();
      sub_156010(v229, 0xD000000000000016, 0x80000000001D63B0, v222);

      v162 = sub_1B45B4();
      v163 = *(v162 + 16);
      if (v163)
      {
        v164 = *(v203 + 16);
        v165 = (*(v203 + 80) + 32) & ~*(v203 + 80);
        v209 = v162;
        v166 = v162 + v165;
        v228 = *(v203 + 72);
        v229 = (v214 + 6);
        v225 = (v214 + 4);
        v215 = v214 + 1;
        *&v216 = v214 + 2;
        v230 = v164;
        v231 = v203 + 16;
        v227 = (v203 + 8);
        v167 = v191;
        (v164)(v191, v162 + v165, v158);
        while (1)
        {
          sub_1B45E4();
          v171 = v158;
          v172 = v223;
          if ((*v229)(v142, 1, v223) == 1)
          {
            (*v227)(v167, v171);
            sub_42F48(v142, &qword_22A518, &qword_1C0220);
          }

          else
          {
            v168 = v217;
            (*v225)(v217, v226, v172);
            (v164)(v224, v167, v171);
            v169 = v218;
            (*v216)(v218, v168, v172);
            v220(v169, 0, 1, v172);
            sub_1B45F4();
            v170 = v168;
            v142 = v226;
            (*v215)(v170, v172);
            (*v227)(v167, v171);
          }

          v158 = v171;
          v166 += v228;
          --v163;
          v164 = v230;
          if (!v163)
          {
            break;
          }

          (v230)(v167, v166, v171);
        }

        v161 = v219;
      }

      else
      {
      }

      (*(v205 + 16))(v204, v161, v206);
      v173 = sub_1B40D4();
      v230 = v174;
      v231 = v173;
      v228 = off_22EE50;
      v229 = qword_22EE48;
      sub_2B0C(&qword_229440, &qword_1BC4E0);
      v175 = v203;
      v176 = *(v203 + 72);
      v177 = (*(v203 + 80) + 32) & ~*(v203 + 80);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_1C00E0;
      v179 = v178 + v177;
      v180 = *(v175 + 16);
      v181 = v213;
      v180(v179, v212, v213);
      v180(v179 + v176, v211, v181);
      v182 = v188;
      v180(v179 + 2 * v176, v188, v181);

      sub_40F30(v178);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B45A4();
      v183 = v206;
      v184 = *(v205 + 8);
      v184(v222, v206);
      v184(v219, v183);
      v185 = *(v175 + 8);
      v185(v182, v181);
      v185(v212, v181);
      v185(v211, v181);
      return (*(v187 + 8))(v210, v208);
    }

    v235 = _swiftEmptyArrayStorage;
    result = sub_3780C(0, v186, 0);
    v142 = v226;
    if ((v141 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    v143 = v225;
    if (v225 > v231)
    {
      v69 = (v201 + 568 * v231);
      v144 = (v231 + 1);
      v140 = v235;
      while (2)
      {
        memcpy(v234, v69, 0x231uLL);
        v145 = v234[18];
        v146 = 0.0;
        if (v234[18] >> 1 == 0xFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        v147 = v234[12];
        v148 = v234[13];
        v149 = v234[16];
        if ((v234[18] >> 62) <= 1)
        {
          v227 = v234[14];
          v228 = v234[17];
          v230 = v234[15];
          goto LABEL_41;
        }

        if (v234[18] >> 62 == 2)
        {
          v230 = v234[15];
          v227 = v234[14];
          v228 = v234[17];
LABEL_41:
          sub_2B0C(&qword_229488, &qword_1BC520);
          v150 = swift_allocObject();
          *(v150 + 16) = v216;
          *(v150 + 32) = v147;
          *(v150 + 40) = v148;
          v151 = v230;
          *(v150 + 48) = v227;
          *(v150 + 56) = v151;
          v152 = v228;
          *(v150 + 64) = v149;
          *(v150 + 72) = v152;
          *(v150 + 80) = v145 & 1;
        }

        else
        {
          v150 = v234[12];
        }

        sub_4299C(v234, v232);
        sub_43050(&v234[12], v232, &qword_22A4E0, &unk_1C01D0);
        v153 = COERCE_DOUBLE(Array<A>.affinity.getter(v150));
        v155 = v154;

        sub_2601C(v234);
        if (v155)
        {
          v146 = 0.0;
        }

        else
        {
          v146 = v153;
        }

        v143 = v225;
        v142 = v226;
LABEL_47:
        v235 = v140;
        v157 = v140[2];
        v156 = v140[3];
        if (v157 >= v156 >> 1)
        {
          sub_3780C((v156 > 1), v157 + 1, 1);
          v140 = v235;
        }

        v140[2] = v157 + 1;
        *(v140 + v157 + 8) = v146;
        if (v143 == v144)
        {
          v158 = v213;
          goto LABEL_55;
        }

        if (v144 < v231)
        {
          break;
        }

        v69 += 142;
        v107 = v144++ < v143;
        if (!v107)
        {
          break;
        }

        continue;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

unint64_t sub_83E58(int a1, uint64_t a2, uint64_t a3, unint64_t a4, void *__src, char a6, uint64_t a7, uint64_t a8)
{
  result = memcpy(__dst, __src, 0x231uLL);
  if (__dst[560] == 12)
  {
    return _swiftEmptyArrayStorage;
  }

  v81 = a4 >> 1;
  v15 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_58;
  }

  v16 = _swiftEmptyArrayStorage;
  if (!v15)
  {
    v36 = a8;
LABEL_18:
    v37 = type metadata accessor for SeedBasedRecommendationRequest(0);
    sub_43174(*(a7 + *(v37 + 52)), v16);
    v41 = v40 >> 1;
    if (v39 != v40 >> 1)
    {
      v56 = v38;
      v57 = v39;
      v58 = v36 + 56;
      v42 = _swiftEmptyArrayStorage;
      v59 = v39;
      v60 = v39;
      while (1)
      {
        do
        {
          if (v59 >= v41)
          {
            break;
          }

          v61 = (v56 + (v59 << 6));
          v62 = *v61;
          v63 = v61[1];
          v64 = v61[3];
          v87 = v61[2];
          v88 = v64;
          v85 = v62;
          v86 = v63;
          ++v59;
          if (*(v36 + 16))
          {
            v65 = v85;
            v66 = *(v36 + 40);
            v67 = sub_1B57E4();
            v68 = -1 << *(v36 + 32);
            v69 = v67 & ~v68;
            if ((*(v58 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
            {
              v70 = ~v68;
              while (*(*(v36 + 48) + 8 * v69) != v65)
              {
                v69 = (v69 + 1) & v70;
                if (((*(v58 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
                {
                  goto LABEL_44;
                }
              }

              goto LABEL_36;
            }
          }

LABEL_44:
          sub_42BA4(&v85, v82);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_375F8(0, v42[2] + 1, 1);
            v42 = v83;
          }

          v73 = v42[2];
          v72 = v42[3];
          if (v73 >= v72 >> 1)
          {
            sub_375F8((v72 > 1), v73 + 1, 1);
            v42 = v83;
          }

          v42[2] = v73 + 1;
          v74 = &v42[8 * v73];
          v75 = v85;
          v76 = v86;
          v77 = v88;
          v74[4] = v87;
          v74[5] = v77;
          v74[2] = v75;
          v74[3] = v76;
          v36 = a8;
          if (v59 == v41)
          {
            goto LABEL_20;
          }

          v60 = v59;
        }

        while (v59 >= v57);
        do
        {
          __break(1u);
LABEL_36:
          if (v59 == v41)
          {
            goto LABEL_20;
          }
        }

        while (v60 < v57);
      }
    }

    v42 = _swiftEmptyArrayStorage;
LABEL_20:
    result = swift_unknownObjectRelease();
    v43 = v42[2];
    if (!v43)
    {
      v14 = _swiftEmptyArrayStorage;
LABEL_52:

      return v14;
    }

    v44 = 0;
    v14 = _swiftEmptyArrayStorage;
LABEL_22:
    v45 = &v42[8 * v44 + 4];
    v46 = v44;
    while (v46 < v42[2])
    {
      v47 = *v45;
      v48 = v45[1];
      v49 = v45[3];
      v87 = v45[2];
      v88 = v49;
      v85 = v47;
      v86 = v48;
      if (*(&v49 + 1) > 0.0 && v88 && *(&v87 + 1) > 0.0)
      {
        sub_42BA4(&v85, v82);
        result = swift_isUniquelyReferenced_nonNull_native();
        v83 = v14;
        if ((result & 1) == 0)
        {
          result = sub_375F8(0, v14[2] + 1, 1);
          v14 = v83;
        }

        v51 = v14[2];
        v50 = v14[3];
        if (v51 >= v50 >> 1)
        {
          result = sub_375F8((v50 > 1), v51 + 1, 1);
          v14 = v83;
        }

        v44 = v46 + 1;
        v14[2] = v51 + 1;
        v52 = &v14[8 * v51];
        v53 = v85;
        v54 = v86;
        v55 = v88;
        v52[4] = v87;
        v52[5] = v55;
        v52[2] = v53;
        v52[3] = v54;
        if (v43 - 1 != v46)
        {
          goto LABEL_22;
        }

        goto LABEL_52;
      }

      ++v46;
      v45 += 4;
      if (v43 == v46)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_57;
  }

  v82[0] = _swiftEmptyArrayStorage;
  result = sub_375F8(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v78 = a7;
    v16 = v82[0];
    result = sub_2B0C(&qword_22A510, &qword_1C0208);
    if (v81 <= a3)
    {
LABEL_54:
      __break(1u);
    }

    else
    {
      v80 = a6 & 1;
      v17 = a3 + 1;
      v18 = (a2 + 24 * a3 + 8);
      while (1)
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = v18[1];
        v89[0] = 0;
        sub_2B0C(&qword_229218, &unk_1C0210);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1BCA80;
        memcpy((v22 + 32), __dst, 0x231uLL);
        v90 = v22;
        v23 = sub_1B52B4();
        sub_4299C(__dst, &v85);
        v24 = v89[0];
        v25 = v90;

        result = sub_3AB0C(v24);
        if (v26)
        {
          break;
        }

        v23[(result >> 6) + 8] |= 1 << result;
        *(v23[6] + result) = v24;
        *(v23[7] + 8 * result) = v25;
        v27 = v23[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_56;
        }

        v23[2] = v29;

        result = sub_42F48(v89, &qword_229350, &qword_1BC3F0);
        LODWORD(v85) = v83;
        *(&v85 + 3) = *(&v83 + 3);
        v84[0] = *v91;
        *(v84 + 3) = *&v91[3];
        v31 = v16[2];
        v30 = v16[3];
        v82[0] = v16;
        if (v31 >= v30 >> 1)
        {
          result = sub_375F8((v30 > 1), v31 + 1, 1);
          v16 = v82[0];
        }

        v16[2] = v31 + 1;
        v32 = &v16[8 * v31];
        v32[4] = v19;
        *(v32 + 40) = v80;
        v33 = *(&v85 + 3);
        *(v32 + 41) = v85;
        *(v32 + 11) = v33;
        v32[6] = 0;
        *(v32 + 56) = -1;
        v34 = v84[0];
        *(v32 + 15) = *(v84 + 3);
        *(v32 + 57) = v34;
        v32[8] = _swiftEmptyArrayStorage;
        v32[9] = v21;
        v32[10] = v23;
        v32[11] = v20;
        if (v81 == v17)
        {
          a7 = v78;
          v36 = a8;
          goto LABEL_18;
        }

        if (v17 >= a3)
        {
          v18 += 3;
          if (v17++ < v81)
          {
            continue;
          }
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *WorkServiceSeedBasedRecommendationService.deinit()
{
  v1 = v0[2];

  sub_2BF8(v0 + 3);
  sub_2BF8(v0 + 8);
  return v0;
}

uint64_t WorkServiceSeedBasedRecommendationService.__deallocating_deinit()
{
  v1 = v0[2];

  sub_2BF8(v0 + 3);
  sub_2BF8(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_84494(uint64_t a1, const void *a2)
{
  v3[143] = a1;
  v3[144] = *v2;
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_8450C, 0, 0);
}

uint64_t sub_8450C()
{
  v1 = sub_2B0C(&qword_229360, &qword_1BC400);
  v2 = swift_task_alloc();
  *(v0 + 1160) = v2;
  *(v2 + 16) = *(v0 + 1144);
  *(v2 + 32) = v0 + 16;
  v3 = sub_2B0C(&qword_22A410, &qword_1C0110);
  v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  *(v0 + 1168) = v5;
  *v5 = v0;
  v5[1] = sub_84634;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1136, v1, v3, 0, 0, &unk_1C0190, v2, v1);
}

uint64_t sub_84634()
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v7 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v4 = sub_85E6C;
  }

  else
  {
    v5 = *(v2 + 1160);

    v4 = sub_85E70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_8478C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeedBasedRecommendationRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_847F0()
{
  v1 = (type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = sub_1B40F4();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8] + 8);

  v11 = *(v7 + v1[9] + 8);

  v12 = *(v7 + v1[14]);

  v13 = *(v0 + v4);

  v14 = (v0 + v5);
  v15 = *(v0 + v5 + 80);

  v16 = *(v0 + v5 + 416);

  v17 = *(v0 + v5 + 456);

  v18 = *(v0 + v5 + 464);

  v19 = *(v0 + v5 + 472);

  v20 = *(v0 + v5 + 512);

  v21 = *(v0 + v5 + 536);

  v22 = *(v0 + v5 + 544);

  v23 = *(v0 + v5 + 560);

  v24 = *(v0 + v5 + 568);

  v25 = *(v0 + v5 + 576);

  v26 = *(v0 + v5 + 584);

  v27 = *(v0 + v5 + 592);

  v28 = *(v0 + v5 + 632);

  v29 = *(v0 + v5 + 648);

  v30 = *(v0 + v5 + 696);

  v31 = *(v0 + v5 + 712);

  v32 = *(v0 + v5 + 720);

  if (*(v0 + v5 + 904))
  {

    v33 = v14[114];
  }

  if (v14[116])
  {

    v34 = v14[118];

    v35 = v14[120];
  }

  if (v14[124])
  {

    v36 = v14[126];
  }

  v37 = v14[130];

  if (v14[134])
  {

    v38 = v14[136];

    v39 = v14[138];
  }

  return _swift_deallocObject(v0, v5 + 1120, v2 | 7);
}

uint64_t sub_84A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeedBasedRecommendationRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_84A88(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_226C;

  return sub_82440(a1, v9, v10, v1 + v6, v11, v1 + v8);
}

Swift::Int sub_84C1C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B94(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 8))
          {
            break;
          }

          v13 = v12 - 56;
          v14 = *(v12 + 8);
          v15 = *(v12 + 24);
          v16 = *(v12 + 56);
          v26 = *(v12 + 40);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 40);
          *(v12 + 8) = *(v12 - 56);
          *(v12 + 24) = v17;
          v18 = *(v12 - 8);
          *(v12 + 40) = *(v12 - 24);
          *(v12 + 56) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_84D94(&v24, v23, v28, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_84D94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v91 = v8 + 2;
    v92 = v8[2];
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = &v8[2 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_85338((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v5);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6) + 56);
      v11 = v9 << 6;
      v12 = *a3 + (v9 << 6);
      v13 = *(v12 + 56);
      v14 = v9 + 2;
      v15 = (v12 + 184);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 8;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = (v7 << 6) - 64;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v11);
            v23 = (v31 + v19);
            v25 = v22[2];
            v24 = v22[3];
            v27 = *v22;
            v26 = v22[1];
            v28 = v23[3];
            v30 = *v23;
            v29 = v23[1];
            v22[2] = v23[2];
            v22[3] = v28;
            *v22 = v30;
            v22[1] = v29;
            *v23 = v27;
            v23[1] = v26;
            v23[2] = v25;
            v23[3] = v24;
          }

          ++v21;
          v19 -= 64;
          v11 += 64;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v45 = v8[3];
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_32F04((v45 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v5 + 4];
    *v48 = v9;
    v48[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = v8[4];
          v50 = v8[5];
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = &v8[2 * v46];
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = &v47[2 * v5];
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v75 = &v8[2 * v46];
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v47[2 * v5];
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = &v47[2 * v5 - 2];
        v87 = *v86;
        v88 = &v47[2 * v5];
        v89 = v88[1];
        sub_85338((*a3 + (*v86 << 6)), (*a3 + (*v88 << 6)), (*a3 + (v89 << 6)), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = v8[2];
        if (v5 >= v90)
        {
          goto LABEL_101;
        }

        v46 = v90 - 1;
        result = memmove(&v47[2 * v5], v88 + 2, 16 * (v90 - 1 - v5));
        v8[2] = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = &v47[2 * v46];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = &v8[2 * v46];
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = &v47[2 * v5];
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + (v7 << 6);
  v34 = v9 - v7;
LABEL_30:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 - 1) >= v36[7])
    {
LABEL_29:
      ++v7;
      v33 += 64;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v37 = (v36 - 8);
    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    v41 = *v36;
    v40 = *(v36 + 1);
    v42 = *(v36 - 3);
    *v36 = *(v36 - 4);
    *(v36 + 1) = v42;
    v43 = *(v36 - 1);
    *(v36 + 2) = *(v36 - 2);
    *(v36 + 3) = v43;
    *v37 = v41;
    v37[1] = v40;
    v36 -= 8;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_85338(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[8 * v10];
    if (v8 < 64)
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

      if (v4[7] < v6[7])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v25 = v6 - 8;
        if (v20 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 8, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v14 - 8;
      if (v20 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 8;
      v14 -= 8;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFC0)))
  {
    memmove(v6, v4, v29 >> 6 << 6);
  }

  return 1;
}

void *sub_855A8(void *result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, _OWORD *))
{
  v33 = result[3];
  v38 = result[4] >> 1;
  v2 = v38 - v33;
  if (__OFSUB__(v38, v33))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v3 = *result;
  v4 = result[1];
  v31 = result[2];
  v5 = *(*result + 16);
  if (v2 >= v5)
  {
    v6 = *(v3 + 16);
  }

  else
  {
    v6 = v38 - v33;
  }

  v43 = _swiftEmptyArrayStorage;
  result = sub_37688(0, v6 & ~(v6 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v37 = v5;
    v29 = v3;
    v7 = v43;
    if (v6)
    {
      v30 = v3 + 32;

      result = swift_unknownObjectRetain();
      v8 = 0;
      v9 = 0;
      v10 = 1;
      v36 = v33;
      while (1)
      {
        if (v9)
        {
          sub_85D34(__src);
          memcpy(__dst, __src, 0x251uLL);
          v9 = 1;
        }

        else
        {
          v11 = v37;
          if (v8 == v37)
          {
            goto LABEL_14;
          }

          if (v8 >= v37)
          {
            goto LABEL_42;
          }

          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_43;
          }

          if (v36 == v38)
          {
LABEL_14:
            sub_85D34(__src);
            memcpy(__dst, __src, 0x251uLL);
            v9 = 1;
          }

          else
          {
            if (v36 < v33 || v36 >= v38)
            {
              goto LABEL_44;
            }

            v12 = (v30 + 32 * v8);
            v34 = *v12;
            v32 = v12[1];
            memcpy(__src, (v31 + 568 * v36++), 0x231uLL);
            __dst[0] = v34;
            __dst[1] = v32;
            memcpy(&__dst[2], __src, 0x231uLL);
            AuthorRecommendationSource.id.getter(__dst);
            swift_unknownObjectRetain();
            sub_4299C(__src, v40);
            v9 = 0;
          }

          v8 = v11;
        }

        memcpy(__src, __dst, 0x251uLL);
        result = sub_4254C(__src);
        if (result == 1)
        {
          goto LABEL_47;
        }

        v13 = a2(*&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), &__dst[2]);
        memcpy(v40, __dst, 0x251uLL);
        result = sub_42F48(v40, &qword_22A508, &qword_1C0200);
        v43 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          result = sub_37688((v14 > 1), v15 + 1, 1);
          v7 = v43;
        }

        v7[2] = v15 + 1;
        v7[v15 + 4] = v13;
        if (v6 == v10)
        {
          break;
        }

        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          goto LABEL_39;
        }
      }
    }

    else
    {

      result = swift_unknownObjectRetain();
      v8 = 0;
      v9 = 0;
      v36 = v33;
    }

    if ((v9 & 1) != 0 || (v17 = v37, v8 == v37))
    {
LABEL_38:
      swift_unknownObjectRelease();

      return v7;
    }

    v18 = (v29 + 32 * v8 + 56);
    v19 = v36;
    v20 = (v31 + 568 * v36);
    v21 = v36;
    while (v8 < v17)
    {
      if (__OFADD__(v8, 1))
      {
        goto LABEL_40;
      }

      if (v38 != v21)
      {
        if (v19 < v33 || v21 >= v38)
        {
          goto LABEL_41;
        }

        v35 = v8 + 1;
        v22 = *(v18 - 3);
        v23 = *(v18 - 2);
        v24 = *(v18 - 1);
        v25 = *v18;
        memcpy(v40, v20, 0x231uLL);
        memcpy(&__dst[2], v20, 0x231uLL);
        *&__dst[0] = v22;
        *(&__dst[0] + 1) = v23;
        *&__dst[1] = v24;
        *(&__dst[1] + 1) = v25;
        swift_unknownObjectRetain();
        sub_4299C(v40, __src);
        v26 = a2(v22, v23, v24, v25, &__dst[2]);
        memcpy(__src, __dst, 0x251uLL);
        result = sub_42F48(__src, &qword_22A508, &qword_1C0200);
        v43 = v7;
        v28 = v7[2];
        v27 = v7[3];
        if (v28 >= v27 >> 1)
        {
          result = sub_37688((v27 > 1), v28 + 1, 1);
          v7 = v43;
        }

        ++v8;
        v7[2] = v28 + 1;
        v7[v28 + 4] = v26;
        v18 += 4;
        v20 += 568;
        ++v21;
        v19 = v36;
        v17 = v37;
        if (v35 != v37)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *sub_85A24(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  sub_376A8(0, v8, 0);
  v32 = v6;
  if (v8)
  {
    result = a5;
    v30 = a5 + 4;
    v31 = a5[2];
    while (1)
    {
      v14 = v7 <= v6;
      if (a3 > 0)
      {
        v14 = v7 >= v6;
      }

      if (v14)
      {
        break;
      }

      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_50;
      }

      if (v31 >= v7 + a4)
      {
        v16 = v7 + a4;
      }

      else
      {
        v16 = v31;
      }

      if (v16 < v7)
      {
        goto LABEL_51;
      }

      if (v7 < 0)
      {
        goto LABEL_52;
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v19 = result;

      if (v18 >= v17 >> 1)
      {
        sub_376A8((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v20 = &_swiftEmptyArrayStorage[4 * v18];
      v20[4] = v19;
      v20[5] = v30;
      v20[6] = v7;
      v20[7] = (2 * v16) | 1;
      v7 = v15;
      --v8;
      result = v19;
      v6 = v32;
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v15 = v7;
    result = a5;
LABEL_29:
    v21 = v15 <= v6;
    if (a3 > 0)
    {
      v21 = v15 >= v6;
    }

    if (v21)
    {
      return _swiftEmptyArrayStorage;
    }

    v22 = result + 4;
    while (1)
    {
      v23 = __OFADD__(v15, a3) ? ((v15 + a3) >> 63) ^ 0x8000000000000000 : v15 + a3;
      if (__OFADD__(v15, a4))
      {
        break;
      }

      if (result[2] >= v15 + a4)
      {
        v24 = v15 + a4;
      }

      else
      {
        v24 = result[2];
      }

      if (v24 < v15)
      {
        goto LABEL_54;
      }

      if (v15 < 0)
      {
        goto LABEL_55;
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v27 = result;

      if (v26 >= v25 >> 1)
      {
        sub_376A8((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v28 = &_swiftEmptyArrayStorage[4 * v26];
      v28[4] = v27;
      v28[5] = v22;
      v28[6] = v15;
      v28[7] = (2 * v24) | 1;
      v29 = v23 <= v32;
      if (a3 > 0)
      {
        v29 = v23 >= v32;
      }

      v15 = v23;
      result = v27;
      if (v29)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_85CD4()
{
  result = qword_22A4F0;
  if (!qword_22A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A4F0);
  }

  return result;
}

unint64_t sub_85D3C()
{
  result = qword_22A520;
  if (!qword_22A520)
  {
    sub_1B40F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A520);
  }

  return result;
}

uint64_t sub_85D94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_41670(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for WorkServiceSeedBasedRecommendationService.Recommendation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkServiceSeedBasedRecommendationService.Recommendation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_85E18()
{
  result = qword_22A528;
  if (!qword_22A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A528);
  }

  return result;
}

uint64_t sub_85E74(uint64_t a1, char a2)
{
  *(v3 + 8216) = v2;
  *(v3 + 8616) = a2;
  *(v3 + 8168) = a1;
  v4 = sub_1B45D4();
  *(v3 + 8264) = v4;
  v5 = *(v4 - 8);
  *(v3 + 8312) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 8360) = swift_task_alloc();
  v7 = *(type metadata accessor for Event() - 8);
  *(v3 + 8408) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 8456) = swift_task_alloc();

  return _swift_task_switch(sub_85F98, 0, 0);
}

uint64_t sub_85F98()
{
  v1 = *(v0 + 8216);

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 696, sub_86038, v0 + 656);
}

uint64_t sub_86038()
{
  *(v1 + 8464) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 16, v1 + 696, sub_87140, v1 + 7600);
  }

  else
  {
    return _swift_task_switch(sub_86080, 0, 0);
  }
}

uint64_t sub_86080()
{
  v2 = *(v0 + 1560);
  v1 = *(v0 + 1576);
  v3 = *(v0 + 1544);
  *(v0 + 7768) = v2;
  *(v0 + 7784) = v1;
  v4 = *(v0 + 1576);
  *(v0 + 7800) = *(v0 + 1592);
  v6 = *(v0 + 1496);
  v5 = *(v0 + 1512);
  v7 = *(v0 + 1480);
  *(v0 + 7704) = v6;
  *(v0 + 7720) = v5;
  v8 = *(v0 + 1512);
  v10 = *(v0 + 1528);
  v9 = *(v0 + 1544);
  *(v0 + 7736) = v10;
  *(v0 + 7752) = v9;
  v11 = *(v0 + 1448);
  *(v0 + 7640) = *(v0 + 1432);
  *(v0 + 7656) = v11;
  v12 = *(v0 + 1480);
  v14 = *(v0 + 1432);
  v13 = *(v0 + 1448);
  v15 = *(v0 + 1464);
  *(v0 + 7672) = v15;
  *(v0 + 7688) = v12;
  *(v0 + 7544) = v2;
  *(v0 + 7560) = v4;
  *(v0 + 7576) = *(v0 + 1592);
  *(v0 + 7480) = v6;
  *(v0 + 7496) = v8;
  *(v0 + 7512) = v10;
  *(v0 + 7528) = v3;
  *(v0 + 7416) = v14;
  *(v0 + 7432) = v13;
  *(v0 + 7816) = *(v0 + 1608);
  *(v0 + 7592) = *(v0 + 1608);
  *(v0 + 7448) = v15;
  *(v0 + 7464) = v7;
  if (sub_87EF8(v0 + 7416) == 1)
  {
    sub_87F10();
    *(v0 + 8608) = swift_allocError();
    swift_willThrow();

    return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_870A0, v0 + 7824);
  }

  else
  {
    sub_404C4(*(v0 + 8216) + 56, v0 + 8088);
    v16 = *(v0 + 8112);
    *(v0 + 8472) = v16;
    *(v0 + 8488) = sub_2698((v0 + 8088), v16);
    *(v0 + 8496) = sub_9EF50(&off_212D90);
    sub_87F64(v0 + 7640, v0 + 7864);

    return _swift_asyncLet_get_throwing(v0 + 16, v0 + 696, sub_86248, v0 + 8048);
  }
}

uint64_t sub_86248()
{
  v1[1063] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_871E0, 0, 0);
  }

  else
  {
    v2 = v1[927];
    memcpy(v1 + 227, v1 + 87, 0x460uLL);
    memcpy(v1 + 367, v1 + 87, 0x460uLL);
    sub_84BC0((v1 + 227), (v1 + 507));
    v3 = swift_task_alloc();
    v1[1064] = v3;
    *v3 = v1;
    v3[1] = sub_86364;
    v4 = v1[1062];
    v5 = v1[1061];
    v6 = v1[1060];
    v7 = v1[1059];

    return BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(v4, v2, v1 + 367, v7, v6);
  }
}

uint64_t sub_86364(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 8512);
  v6 = *v2;
  v4[1065] = a1;
  v4[1066] = v1;

  v7 = v3[1062];
  if (v1)
  {
    memcpy(v4 + 647, v4 + 367, 0x460uLL);
    sub_2B54((v4 + 647));

    v8 = sub_87314;
  }

  else
  {

    memcpy(v4 + 787, v4 + 367, 0x460uLL);
    sub_2B54((v4 + 787));
    v8 = sub_864E8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_864E8()
{
  v1 = v0[1027];
  sub_2BF8(v0 + 1011);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[1067] = v6;
  *v6 = v0;
  v6[1] = sub_8661C;

  return v8(v2, v3);
}

uint64_t sub_8661C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 8536);
  v7 = *v2;
  *(v3 + 8544) = a1;
  *(v3 + 8552) = v1;

  if (v1)
  {
    v5 = sub_87434;
  }

  else
  {
    v5 = sub_86734;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_86734()
{
  v46 = v0;
  v1 = v0[1068];
  v2 = v0[1065];

  result = sub_43158(v3);
  v44 = result;
  v5 = *(v1 + 16);
  if (!v5)
  {
    v9 = result;
LABEL_77:
    v34 = v0[1027];
    v35 = v34[15];
    v36 = v34[16];
    sub_2698(v34 + 12, v35);
    v37 = *(v9 + 16);
    if (v37)
    {
      v38 = sub_3503C(*(v9 + 16), 0);
      v39 = sub_3F09C(v45, v38 + 4, v37, v9);
      sub_417B8();
      if (v39 == v37)
      {
LABEL_81:
        v0[1070] = v38;
        v40 = *(v36 + 16);
        v43 = (v40 + *v40);
        v41 = v40[1];
        v42 = swift_task_alloc();
        v0[1071] = v42;
        *v42 = v0;
        v42[1] = sub_86C34;

        return (v43)(v38, v35, v36);
      }

      __break(1u);
    }

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_81;
  }

  v6 = 0;
  v7 = v0[1051];
  v8 = v0[1068] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  while (v6 < *(v1 + 16))
  {
    sub_7A1B4(v8 + *(v7 + 72) * v6, v0[1057]);
    result = Event.assetID.getter();
    v12 = HIBYTE(v11) & 0xF;
    v13 = result & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v14 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      goto LABEL_5;
    }

    if ((v11 & 0x1000000000000000) == 0)
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v45[0] = result;
        v45[1] = v11 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (!v12)
          {
            goto LABEL_85;
          }

          v13 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            v24 = v45 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                break;
              }

              v19 = __CFADD__(10 * v16, v25);
              v16 = 10 * v16 + v25;
              if (v19)
              {
                break;
              }

              ++v24;
              if (!--v13)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (result == 45)
        {
          if (!v12)
          {
            goto LABEL_87;
          }

          v13 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            v20 = v45 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                break;
              }

              v19 = 10 * v16 >= v21;
              v16 = 10 * v16 - v21;
              if (!v19)
              {
                break;
              }

              ++v20;
              if (!--v13)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v12)
        {
          v16 = 0;
          v27 = v45;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              break;
            }

            v19 = __CFADD__(10 * v16, v28);
            v16 = 10 * v16 + v28;
            if (v19)
            {
              break;
            }

            v27 = (v27 + 1);
            if (!--v12)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1B5154();
          v13 = v33;
        }

        v15 = *result;
        if (v15 == 43)
        {
          if (v13 < 1)
          {
            goto LABEL_88;
          }

          if (--v13)
          {
            v16 = 0;
            if (!result)
            {
              goto LABEL_69;
            }

            v22 = (result + 1);
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              if (!is_mul_ok(v16, 0xAuLL))
              {
                break;
              }

              v19 = __CFADD__(10 * v16, v23);
              v16 = 10 * v16 + v23;
              if (v19)
              {
                break;
              }

              ++v22;
              if (!--v13)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (v13 < 1)
          {
            goto LABEL_86;
          }

          if (--v13)
          {
            v16 = 0;
            if (result)
            {
              v17 = (result + 1);
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_70;
                }

                if (!is_mul_ok(v16, 0xAuLL))
                {
                  goto LABEL_70;
                }

                v19 = 10 * v16 >= v18;
                v16 = 10 * v16 - v18;
                if (!v19)
                {
                  goto LABEL_70;
                }

                ++v17;
                if (!--v13)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_69:
            LOBYTE(v13) = 0;
LABEL_71:
            v29 = v13;

            if ((v29 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_5;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_70;
          }

          v16 = 0;
          if (!result)
          {
            goto LABEL_69;
          }

          while (1)
          {
            v26 = *result - 48;
            if (v26 > 9)
            {
              break;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              break;
            }

            v19 = __CFADD__(10 * v16, v26);
            v16 = 10 * v16 + v26;
            if (v19)
            {
              break;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_71;
            }
          }
        }
      }

LABEL_70:
      v16 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_71;
    }

    v16 = sub_3DBA4(result, v11, 10);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
LABEL_72:
      v30 = v0[1057];
      sub_111CE0(v45, v16);
      v10 = v30;
      goto LABEL_6;
    }

LABEL_5:
    v10 = v0[1057];
LABEL_6:
    result = sub_7A218(v10);
    if (++v6 == v5)
    {
      v9 = v44;
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_86C34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 8568);
  v8 = *v2;
  v3[1072] = a1;
  v3[1073] = v1;

  if (v1)
  {
    v5 = sub_87550;
  }

  else
  {
    v6 = v3[1070];

    v5 = sub_86D54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_86D54()
{
  v32 = v0;
  v1 = *(v0 + 8520);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_35388(*(v1 + 16), 0);
    v4 = sub_3F350(v30, v3 + 32, v2, v1);
    sub_417B8();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v5 = *(v0 + 8576);
  v6 = *(v0 + 8544);
  v7 = *(v0 + 8360);
  v8 = *(v0 + 8616);
  v9 = *(v0 + 7560);
  v30[8] = *(v0 + 7544);
  v30[9] = v9;
  v30[10] = *(v0 + 7576);
  v31 = *(v0 + 7592);
  v10 = *(v0 + 7496);
  v30[4] = *(v0 + 7480);
  v30[5] = v10;
  v11 = *(v0 + 7528);
  v30[6] = *(v0 + 7512);
  v30[7] = v11;
  v12 = *(v0 + 7432);
  v30[0] = *(v0 + 7416);
  v30[1] = v12;
  v13 = *(v0 + 7464);
  v30[2] = *(v0 + 7448);
  v30[3] = v13;
  sub_94934(v6, v3, v5, v30, v7);

  sub_87FD4(v0 + 7640);
  if (v8 == 1)
  {
    v14 = *(v0 + 8584);
    v15 = *(v0 + 8360);
    v16 = *(v0 + 8264);
    v17 = sub_1B3C84();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1B3C74();
    sub_8803C();
    v20 = sub_1B3C54();
    *(v0 + 8592) = v14;
    if (v14)
    {
      (*(*(v0 + 8312) + 8))(*(v0 + 8360), *(v0 + 8264));

      v22 = sub_8768C;
      v23 = v0 + 16;
      v24 = v0 + 696;
      v25 = v0 + 8368;
      goto LABEL_10;
    }

    v26 = v20;
    v27 = v21;
    v28 = *(v0 + 8216);
    sub_1B3FB4();
    *(v0 + 8600) = 0;
    sub_41670(v26, v27);
  }

  (*(*(v0 + 8312) + 32))(*(v0 + 8168), *(v0 + 8360), *(v0 + 8264));
  v22 = sub_87008;
  v23 = v0 + 16;
  v24 = v0 + 696;
  v25 = v0 + 8320;
LABEL_10:

  return _swift_asyncLet_finish(v23, v24, v22, v25);
}

uint64_t sub_87024()
{
  v1 = v0[1057];
  v2 = v0[1045];
  v3 = v0[1027];

  v4 = v0[1];

  return v4();
}

uint64_t sub_870BC()
{
  v1 = v0[1076];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_8715C()
{
  v1 = v0[1058];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_871E0()
{
  v1 = *(v0 + 8496);
  sub_87FD4(v0 + 7640);

  sub_2BF8((v0 + 8088));

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_87274, v0 + 8128);
}

uint64_t sub_87290()
{
  v1 = v0[1063];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_87314()
{
  sub_87FD4(v0 + 7640);
  sub_2BF8((v0 + 8088));

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_87394, v0 + 8176);
}

uint64_t sub_873B0()
{
  v1 = v0[1066];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_87434()
{
  v1 = *(v0 + 8520);

  sub_87FD4(v0 + 7640);

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_874B0, v0 + 8224);
}

uint64_t sub_874CC()
{
  v1 = v0[1069];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_87550()
{
  v1 = v0[1070];
  v2 = v0[1068];
  v3 = v0[1065];

  sub_87FD4((v0 + 955));

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_875EC, v0 + 1034);
}

uint64_t sub_87608()
{
  v1 = v0[1073];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_876A8()
{
  v1 = v0[1074];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_87748()
{
  v1 = v0[1075];
  v2 = v0[1057];
  v3 = v0[1045];
  v4 = v0[1027];

  v5 = v0[1];

  return v5();
}

uint64_t sub_877CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_877EC, 0, 0);
}

uint64_t sub_877EC()
{
  v1 = v0[3];
  v2 = v1[20];
  v3 = v1[21];
  sub_2698(v1 + 17, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_8791C;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_8791C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_87A10()
{
  sub_1B3EF4(1);
  v9 = [objc_opt_self() defaultManager];
  v0 = sub_1B4794();
  v1 = [v9 fileExistsAtPath:v0];

  if (v1)
  {
    v2 = sub_1B4794();

    v10 = 0;
    v3 = [v9 removeItemAtPath:v2 error:&v10];

    if (v3)
    {
      v4 = v10;
    }

    else
    {
      v5 = v10;
      sub_1B3E64();

      swift_willThrow();
      if (qword_228330 != -1)
      {
        swift_once();
      }

      sub_1B4D94();
      sub_2B0C(&qword_22A048, &unk_1BFC60);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1BCA80;
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_2B0C(&qword_229560, &unk_1BFC70);
      sub_1B51F4();
      v7 = v10;
      v8 = v11;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_76888();
      *(v6 + 32) = v7;
      *(v6 + 40) = v8;
      sub_1B4614();
    }
  }

  else
  {
  }
}

uint64_t sub_87CAC()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  v1 = OBJC_IVAR____TtC20BooksPersonalization32UserEncodingInputFeaturesService_cachePath;
  v2 = sub_1B3F34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserEncodingInputFeaturesService()
{
  result = qword_22A560;
  if (!qword_22A560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_87DBC()
{
  result = sub_1B3F34();
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

uint64_t sub_87E5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226C;

  return sub_877CC(a1, v1);
}

uint64_t sub_87EF8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_87F10()
{
  result = qword_22A608;
  if (!qword_22A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A608);
  }

  return result;
}

uint64_t sub_87F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22A610, &qword_1CF5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_87FD4(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22A610, &qword_1CF5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_8803C()
{
  result = qword_22A618;
  if (!qword_22A618)
  {
    sub_1B45D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A618);
  }

  return result;
}

unint64_t sub_880A8()
{
  result = qword_22A620;
  if (!qword_22A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A620);
  }

  return result;
}

char *sub_880FC()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
      v11 = *(*(v1 + 56) + v10);
      v12 = *(v11 + 16);
      v13 = *(v8 + 2);
      v14 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v15 = *(*(v1 + 56) + v10);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v14 > *(v8 + 3) >> 1)
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        result = sub_33128(result, v16, 1, v8);
        v8 = result;
      }

      v4 &= v4 - 1;
      if (*(v11 + 16))
      {
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v12)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v8 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_34;
          }

          *(v8 + 2) = v19;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_32;
        }
      }
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v7;
      if (v4)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v20 = *(v8 + 2);
    if (v20)
    {
      sub_3741C(0, v20, 0);
      v21 = _swiftEmptyArrayStorage[2];
      v22 = 32;
      do
      {
        v23 = *&v8[v22];
        v24 = _swiftEmptyArrayStorage[3];
        if (v21 >= v24 >> 1)
        {
          sub_3741C((v24 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        _swiftEmptyArrayStorage[v21 + 4] = v23;
        v22 += 568;
        ++v21;
        --v20;
      }

      while (v20);
    }
  }

  v25 = sub_40854(_swiftEmptyArrayStorage);

  return v25;
}

uint64_t sub_8836C(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v35 = v3;
  while (v6)
  {
LABEL_11:
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    v12 = *a2;
    v13 = *(*a2 + 16);
    if (v13)
    {
      v14 = sub_43124(v11);
      if (v15)
      {
        v13 = *(*(v12 + 56) + 8 * v14);
      }

      else
      {
        v13 = 0;
      }
    }

    v16 = v13 + 1;
    if (v13 == -1)
    {
      goto LABEL_28;
    }

    v17 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a2;
    v37 = *a2;
    v20 = a2;
    *a2 = 0x8000000000000000;
    v21 = v11;
    v22 = sub_43124(v11);
    v24 = *(v19 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_29;
    }

    v28 = v23;
    if (*(v19 + 24) < v27)
    {
      sub_17D544(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_43124(v21);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_31;
      }

LABEL_21:
      v30 = v37;
      if (v28)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v33 = v22;
    sub_18535C();
    v22 = v33;
    v30 = v37;
    if (v28)
    {
LABEL_4:
      *(v30[7] + 8 * v22) = v16;
      goto LABEL_5;
    }

LABEL_22:
    v30[(v22 >> 6) + 8] |= 1 << v22;
    *(v30[6] + 8 * v22) = v21;
    *(v30[7] + 8 * v22) = v16;
    v31 = v30[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_30;
    }

    v30[2] = v32;
LABEL_5:
    v6 &= v6 - 1;
    a2 = v20;
    v9 = *v20;
    *v20 = v30;

    v3 = v35;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_885C8(char *a1, const void *a2)
{
  memcpy(__dst, a2, 0x16BuLL);
  v103 = _swiftEmptyDictionarySingleton;
  v3 = *(a1 + 2);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {

    v5 = _swiftEmptyArrayStorage;
LABEL_3:
    v88 = v5;
    sub_71C74(__dst, v102);
    *&v96 = _swiftEmptyArrayStorage;
    sub_375F8(0, v3, 0);
    v6 = 0;
    v92 = v96;
    v89 = a1;
    v90 = a1 + 32;
    v7 = v103;
    while (2)
    {
      v8 = v6;
      v9 = &v90[64 * v6];
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = v8 + 1;
      v13 = *(v9 + 3);
      *&v102[32] = *(v9 + 2);
      *&v102[48] = v13;
      *v102 = v10;
      *&v102[16] = v11;
      *v101 = v10;
      *&v101[16] = v11;
      *&v101[32] = *&v102[32];
      *&v101[48] = v13;
      sub_42BA4(v102, v100);
      v14 = sub_880FC();
      v15 = v14;
      v16 = 0;
      v4 = v14 + 56;
      v17 = 1 << v14[32];
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(v14 + 7);
      v20 = *&v102[56];
      v21 = (v17 + 63) >> 6;
      while (v19)
      {
LABEL_14:
        v23 = 0.0;
        if (v7[2])
        {
          v24 = sub_43124(*(*(v15 + 6) + ((v16 << 9) | (8 * __clz(__rbit64(v19))))));
          if (v25)
          {
            v23 = *(v7[7] + 8 * v24);
          }
        }

        v19 &= v19 - 1;
        v20 = v20 * pow(__dst[34], v23);
      }

      while (1)
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_73;
        }

        if (v22 >= v21)
        {
          break;
        }

        v19 = *&v4[8 * v22];
        ++v16;
        if (v19)
        {
          v16 = v22;
          goto LABEL_14;
        }
      }

      v91 = v12;
      v26 = v3;

      v27 = *v102;
      v28 = v102[8];
      v29 = *&v102[16];
      v30 = v102[24];
      v31 = *&v102[32];
      v32 = *&v102[40];
      v33 = v92;
      *&v96 = v92;
      v35 = *(v92 + 16);
      v34 = *(v92 + 24);
      if (v35 >= v34 >> 1)
      {
        v93 = *&v102[40];
        sub_375F8((v34 > 1), v35 + 1, 1);
        v32 = v93;
        v33 = v96;
      }

      *(v33 + 16) = v35 + 1;
      v92 = v33;
      v36 = v33 + (v35 << 6);
      *(v36 + 32) = v27;
      *(v36 + 40) = v28;
      v37 = *&v100[3];
      *(v36 + 41) = *v100;
      *(v36 + 44) = v37;
      *(v36 + 48) = v29;
      *(v36 + 56) = v30;
      v38 = v95[0];
      *(v36 + 60) = *(v95 + 3);
      *(v36 + 57) = v38;
      *(v36 + 64) = v31;
      *(v36 + 72) = v32;
      *(v36 + 88) = v20;
      v6 = v91;
      if (v91 != v26)
      {
        v3 = v26;
        continue;
      }

      break;
    }

    result = sub_71DC0(__dst);
    v5 = v88;
    a1 = v89;
    v40 = v92;
    v41 = *(v92 + 16);
    if (v41)
    {
      while (1)
      {
        v42 = v40[3];
        *v102 = v40[2];
        *&v102[16] = v42;
        v43 = v40[5];
        *&v102[32] = v40[4];
        *&v102[48] = v43;
        sub_42BA4(v102, v100);
        *v101 = *v102;
        *&v101[16] = *&v102[16];
        *&v101[32] = *&v102[32];
        *&v101[48] = *&v102[48];
        v44 = *v102;
        v105 = *&v102[8];
        v106 = *&v102[24];
        v107 = *&v102[40];
        v108 = *&v102[56];
        if (v41 != 1)
        {
          break;
        }

LABEL_25:

        *v100 = v44;
        *&v100[8] = v105;
        *&v100[24] = v106;
        *&v100[40] = v107;
        *&v100[56] = v108;
        v45 = sub_880FC();
        sub_8836C(v45, &v103);

        sub_42BA4(v101, v100);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_3349C(0, *(v5 + 2) + 1, 1, v5);
          v5 = result;
        }

        v47 = *(v5 + 2);
        v46 = *(v5 + 3);
        if (v47 >= v46 >> 1)
        {
          result = sub_3349C((v46 > 1), v47 + 1, 1, v5);
          v5 = result;
        }

        *(v5 + 2) = v47 + 1;
        v48 = &v5[64 * v47];
        *(v48 + 4) = v44;
        v49 = v105;
        v50 = v106;
        v51 = v107;
        *(v48 + 11) = v108;
        *(v48 + 72) = v51;
        *(v48 + 56) = v50;
        *(v48 + 40) = v49;
        v52 = *(a1 + 2);
        if (v52)
        {
          v53 = 0;
          v54 = 96;
          v55 = 32;
          while (*&a1[v55] != v44)
          {
            ++v53;
            v55 += 64;
            v54 += 64;
            if (v52 == v53)
            {
              v53 = *(a1 + 2);
              goto LABEL_62;
            }
          }

          v62 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_85;
          }

          result = sub_42BA4(v101, v100);
          v63 = *(a1 + 2);
          while (v62 != v63)
          {
            if (v62 >= v63)
            {
              goto LABEL_77;
            }

            v64 = &a1[v54];
            if (*&a1[v54] != *v101)
            {
              if (v62 != v53)
              {
                if (v53 >= v63)
                {
                  goto LABEL_78;
                }

                v65 = &a1[64 * v53 + 32];
                v66 = *v65;
                v67 = *(v65 + 1);
                v68 = *(v65 + 3);
                v98 = *(v65 + 2);
                v99 = v68;
                v96 = v66;
                v97 = v67;
                v69 = *v64;
                v70 = *(v64 + 1);
                v71 = *(v64 + 3);
                *&v100[32] = *(v64 + 2);
                *&v100[48] = v71;
                *v100 = v69;
                *&v100[16] = v70;
                sub_42BA4(&v96, v95);
                sub_42BA4(v100, v95);
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_56AA4(a1);
                  a1 = result;
                }

                if (v53 >= *(a1 + 2))
                {
                  goto LABEL_79;
                }

                v72 = &a1[64 * v53];
                v73 = *(v72 + 2);
                v74 = *(v72 + 3);
                v75 = *(v72 + 5);
                v94[2] = *(v72 + 4);
                v94[3] = v75;
                v94[0] = v73;
                v94[1] = v74;
                v76 = *v100;
                v77 = *&v100[16];
                v78 = *&v100[48];
                *(v72 + 4) = *&v100[32];
                *(v72 + 5) = v78;
                *(v72 + 2) = v76;
                *(v72 + 3) = v77;
                result = sub_43FF4(v94);
                if (v62 >= *(a1 + 2))
                {
                  goto LABEL_80;
                }

                v79 = &a1[v54];
                v80 = *&a1[v54];
                v81 = *&a1[v54 + 16];
                v82 = *&a1[v54 + 48];
                v95[2] = *&a1[v54 + 32];
                v95[3] = v82;
                v95[0] = v80;
                v95[1] = v81;
                v83 = v96;
                v84 = v97;
                v85 = v99;
                *(v79 + 2) = v98;
                *(v79 + 3) = v85;
                *v79 = v83;
                *(v79 + 1) = v84;
                result = sub_43FF4(v95);
              }

              ++v53;
            }

            ++v62;
            v63 = *(a1 + 2);
            v54 += 64;
          }

          result = sub_43FF4(v101);
          v52 = *(a1 + 2);
          if (v52 < v53)
          {
            goto LABEL_82;
          }

          if (v53 < 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v53 = 0;
        }

LABEL_62:
        if (__OFADD__(v52, v53 - v52))
        {
          goto LABEL_84;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v53 > *(a1 + 3) >> 1)
        {
          if (v52 <= v53)
          {
            v87 = v53;
          }

          else
          {
            v87 = v52;
          }

          a1 = sub_3349C(isUniquelyReferenced_nonNull_native, v87, 1, a1);
          v104 = a1;
        }

        sub_5EC58(v53, v52, 0);
        result = sub_43FF4(v101);
        if (!*(a1 + 2))
        {

          goto LABEL_74;
        }

        v3 = *(a1 + 2);
        if (v3)
        {
          goto LABEL_3;
        }

        v40 = _swiftEmptyArrayStorage;
        v41 = _swiftEmptyArrayStorage[2];
        if (!v41)
        {
          goto LABEL_81;
        }
      }

      v56 = v40 + 6;
      v57 = 1;
      result = v40;
      while (v57 < *(result + 16))
      {
        v58 = *v56;
        v59 = v56[1];
        v60 = v56[3];
        *&v100[32] = v56[2];
        *&v100[48] = v60;
        *v100 = v58;
        *&v100[16] = v59;
        if (*&v101[56] < *(&v60 + 1) || (*(&v60 + 1) == *&v101[56] ? (v61 = *v100 >= v44) : (v61 = 1), !v61))
        {
          sub_42BA4(v100, &v96);
          sub_43FF4(v101);
          result = v40;
          *v101 = *v100;
          *&v101[16] = *&v100[16];
          *&v101[32] = *&v100[32];
          *&v101[48] = *&v100[48];
        }

        ++v57;
        v44 = *v101;
        v105 = *&v101[8];
        v106 = *&v101[24];
        v107 = *&v101[40];
        v108 = *&v101[56];
        v56 += 4;
        if (v41 == v57)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

  else
  {
LABEL_73:
    v5 = v4;
LABEL_74:

    return v5;
  }

  return result;
}

uint64_t sub_88CC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_88D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_88DE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  v5 = type metadata accessor for BooksBackendSeedBasedRecommendationService();
  result = sub_1B4254();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = v5;
  v17 = &off_2203D8;
  *&v15 = result;
  v7 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A778, &unk_1C0560);
  result = sub_1B4244();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v12)
  {
    v9 = type metadata accessor for CombinedSeedBasedRecommendationService();
    v10 = swift_allocObject();
    sub_264B8(&v15, v10 + 16);
    sub_264B8(&v13, v10 + 56);
    result = sub_264B8(&v11, v10 + 96);
    a2[3] = v9;
    a2[4] = &off_221340;
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_88F64(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A770, &qword_1C0558);
  result = sub_1B4264();
  if (!v46)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7F0, &unk_1C05F0);
  result = sub_1B4264();
  if (!v44)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  result = sub_1B4264();
  if (v42)
  {
    v6 = v46;
    v7 = sub_40474(v45, v46);
    v36[1] = v36;
    v8 = *(*(v6 - 8) + 64);
    __chkstk_darwin(v7);
    v10 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = v44;
    v13 = sub_40474(v43, v44);
    v36[0] = v36;
    v14 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v13);
    v16 = (v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v10;
    v19 = *v16;
    v20 = type metadata accessor for BooksBackendDiversifier();
    v40[3] = v20;
    v40[4] = &off_218F58;
    v40[0] = v18;
    v21 = type metadata accessor for SeedBasedRecommendationServiceResolver();
    v39 = &off_220D90;
    v38 = v21;
    v37[0] = v19;
    type metadata accessor for SeedBasedSuggestionsService();
    v22 = swift_allocObject();
    v23 = sub_40474(v40, v20);
    v24 = *(*(v20 - 8) + 64);
    __chkstk_darwin(v23);
    v26 = (v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = v38;
    v29 = sub_40474(v37, v38);
    v30 = *(*(v28 - 8) + 64);
    __chkstk_darwin(v29);
    v32 = (v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = *v26;
    v35 = *v32;
    v22[5] = v20;
    v22[6] = &off_218F58;
    v22[2] = v34;
    v22[10] = v21;
    v22[11] = &off_220D90;
    v22[7] = v35;
    sub_264B8(&v41, (v22 + 12));
    sub_2BF8(v37);
    sub_2BF8(v40);
    sub_2BF8(v43);
    sub_2BF8(v45);
    return v22;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_89488()
{
  type metadata accessor for BooksBackendDiversifier();

  return swift_allocObject();
}

uint64_t sub_894BC()
{
  type metadata accessor for BooksBackendPostScorer();

  return swift_allocObject();
}

uint64_t sub_894F0(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  result = sub_1B4264();
  v4 = v29;
  if (v29 == 4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7A8, &qword_1C0598);
  result = sub_1B4264();
  if (!v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A798, &qword_1C0588);
  result = sub_1B4264();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[4];
  sub_2698(a1, a1[3]);
  type metadata accessor for BooksBackendPostScorer();
  result = sub_1B4254();
  if (result)
  {
    v8 = result;
    v9 = v28;
    v10 = sub_40474(v27, v28);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for SeedBasedRecommendationRequestMapper();
    v24[3] = v16;
    v24[4] = &off_2215A8;
    v24[0] = v15;
    type metadata accessor for BooksBackendSeedBasedRecommendationService();
    v17 = swift_allocObject();
    v18 = sub_40474(v24, v16);
    v19 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v18);
    v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v21;
    *(v17 + 80) = v16;
    *(v17 + 88) = &off_2215A8;
    *(v17 + 56) = v23;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = v4;
    sub_264B8(&v25, v17 + 96);
    *(v17 + 136) = v8;
    sub_2BF8(v24);
    sub_2BF8(v27);
    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_897E4()
{
  type metadata accessor for DelegatingBookScorer();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_89838@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[4];
  sub_2698(a1, a1[3]);
  v8 = a2(0);
  result = sub_1B4254();
  if (result)
  {
    a4[3] = v8;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_898BC()
{
  type metadata accessor for IdentityBookScorer();

  return swift_allocObject();
}

uint64_t sub_898F0(void *a1)
{
  v2 = sub_1B4204();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D0, &qword_1C05D0);
  result = sub_1B4264();
  if (!v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D8, &qword_1C05D8);
  result = sub_1B4264();
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7E0, &qword_1C05E0);
  result = sub_1B4264();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7E8, &qword_1C05E8);
  result = sub_1B4264();
  if (v17)
  {
    sub_1B41F4();
    v12 = type metadata accessor for BookHistoryService();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    sub_264B8(&v22, v15 + 16);
    sub_264B8(&v20, v15 + 56);
    sub_264B8(&v18, v15 + 96);
    sub_264B8(&v16, v15 + 136);
    (*(v3 + 32))(v15 + OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone, v6, v2);
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_89B7C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), void (*a5)(void *, uint64_t))
{
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  result = sub_1B4264();
  if (v16)
  {
    v12 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(a2, a3);
    result = sub_1B4264();
    if (v14[3])
    {
      a4(0);
      v13 = swift_allocObject();
      sub_264B8(&v15, v13 + 16);
      a5(v14, v13 + 56);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_89C8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  result = sub_1B4264();
  if (v5)
  {
    a2[3] = &type metadata for URLSessionTransport;
    a2[4] = &protocol witness table for URLSessionTransport;
    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_89D14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() sharedSession];
  sub_2B0C(&qword_22A7C8, &qword_1C05C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BFC80;
  v6 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7A0, &qword_1C0590);
  result = sub_1B4244();
  if (v12)
  {
    sub_264B8(&v11, v5 + 32);
    v8 = a1[4];
    sub_2698(a1, a1[3]);
    result = sub_1B4244();
    if (v10)
    {
      result = sub_264B8(&v9, v5 + 72);
      *a2 = v4;
      a2[1] = v5;
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

uint64_t sub_89E70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7B0, &unk_1C05A0);
  result = sub_1B4264();
  v5 = v23;
  if (v23)
  {
    v6 = sub_40474(v22, v23);
    v7 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for SHA256Base64SigningService();
    v21[3] = v12;
    v21[4] = &off_218B90;
    v21[0] = v11;
    v13 = type metadata accessor for SignerMiddleware();
    v14 = swift_allocObject();
    v15 = sub_40474(v21, v12);
    v16 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v14[5] = v12;
    v14[6] = &off_218B90;
    v14[2] = v20;
    sub_2BF8(v21);
    result = sub_2BF8(v22);
    a2[3] = v13;
    a2[4] = &off_2204A0;
    *a2 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8A094@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7C0, &qword_1C05C0);
  result = sub_1B4264();
  if (v8)
  {
    v5 = type metadata accessor for ExperimentIDsMiddleware();
    v6 = swift_allocObject();
    result = sub_264B8(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_2213B0;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8A140@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v8)
  {
    v5 = type metadata accessor for SeedBasedRecommendationRequestMapper();
    v6 = swift_allocObject();
    result = sub_264B8(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_2215A8;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8A1EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7B8, &unk_1C05B0);
  result = sub_1B4264();
  if (v8)
  {
    v5 = type metadata accessor for SHA256Base64SigningService();
    v6 = swift_allocObject();
    result = sub_264B8(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_218B90;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8A298(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  result = sub_1B4264();
  v4 = v16;
  if (v16 == 255)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v14;
  v6 = v15;
  v7 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A798, &qword_1C0588);
  result = sub_1B4264();
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (v11)
  {
    type metadata accessor for BooksBackendPersonalizationMetadataService();
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = v5;
    *(v9 + 56) = v6;
    *(v9 + 64) = v4 & 1;
    sub_264B8(&v12, v9 + 72);
    sub_264B8(&v10, v9 + 112);
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_8A3F0(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  v3 = type metadata accessor for BooksBackendPersonalizationMetadataService();
  result = sub_1B4254();
  if (result)
  {
    v7[3] = v3;
    v7[4] = &off_21F310;
    v7[0] = result;
    v5 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22A308, &unk_1C65B0);
    result = sub_1B4264();
    if (v6[3])
    {
      type metadata accessor for BooksPersonalizationMetadataCache();
      swift_allocObject();
      return BooksPersonalizationMetadataCache.init(fetchService:subfolder:configurationService:)(v7, 0, 0, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_8A4E0(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22A790, &qword_1C0580);
  v4 = 0;
  while (1)
  {
    v7 = *(&off_212DB8 + v4++ + 32);
    v8 = a2[4];
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v25)
    {
      break;
    }

    sub_264B8(&v24, v26);
    swift_beginAccess();
    sub_404C4(v26, &v24);
    v9 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 16);
    *(a1 + 16) = 0x8000000000000000;
    v12 = sub_3AD4C(v7);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_17F4E8(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_3AD4C(v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v20 = v11;
      if (v18)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_1861C4();
    v12 = v23;
    v20 = v11;
    if (v18)
    {
LABEL_2:
      v5 = (v20[7] + 40 * v12);
      sub_2BF8(v5);
      sub_264B8(&v24, v5);
      goto LABEL_3;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    *(v20[6] + v12) = v7;
    sub_264B8(&v24, v20[7] + 40 * v12);
    v21 = v20[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    v20[2] = v22;
LABEL_3:
    *(a1 + 16) = v20;
    swift_endAccess();
    result = sub_2BF8(v26);
    if (v4 == 3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_8A7A8(uint64_t a1)
{
  v2 = sub_1B4274();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v32 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4344();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22A758, &unk_1C0540);
  sub_1B4304();

  v10 = enum case for Scope.singleton(_:);
  v11 = v6[13];
  v11(v9, enum case for Scope.singleton(_:), v5);
  sub_1B4214();

  v12 = v6[1];
  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22A768, &qword_1C0550);
  sub_1B4304();

  v35 = v11;
  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22A770, &qword_1C0558);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  v13 = a1;
  sub_1B4284();
  v31 = sub_2B0C(&qword_22A778, &unk_1C0560);
  sub_1B4304();

  v14 = v10;
  v36 = v10;
  v15 = v10;
  v16 = v35;
  v35(v9, v15, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  type metadata accessor for SeedBasedSuggestionsService();
  sub_1B42F4();

  v16(v9, v14, v5);
  v30[1] = v6 + 13;
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  sub_1B4304();

  v17 = v36;
  v16(v9, v36, v5);
  sub_1B4214();

  v18 = v12;
  v12(v9, v5);
  v19 = v13;
  sub_1B4284();
  sub_1B4304();

  v20 = v35;
  v35(v9, v17, v5);
  sub_1B4214();

  v18(v9, v5);
  v21 = v18;
  sub_1B4284();
  sub_2B0C(&qword_22A780, &qword_1C0570);
  sub_1B4304();

  v22 = v36;
  v20(v9, v36, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22A788, &qword_1C0578);
  sub_1B4304();

  v20(v9, v22, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BookHistorySeedBookService();
  sub_1B42F4();

  v20(v9, v22, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BooksBackendDiversifier();
  sub_1B42F4();

  v20(v9, v22, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BooksBackendPostScorer();
  sub_1B42F4();

  v20(v9, v22, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BooksBackendSeedBasedRecommendationService();
  sub_1B42F4();

  v20(v9, v22, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  v31 = type metadata accessor for DelegatingBookScorer();
  sub_1B42F4();

  v23 = v36;
  v20(v9, v36, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22A790, &qword_1C0580);
  sub_1B4304();

  v20(v9, v23, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for IdentityBookScorer();
  sub_1B42F4();

  v20(v9, v23, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BookHistoryService();
  sub_1B42F4();

  v20(v9, v23, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BookHistoryServiceStressTest();
  sub_1B42F4();

  v20(v9, v23, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22A798, &qword_1C0588);
  sub_1B4304();

  v20(v9, v23, v5);
  sub_1B4214();

  v21(v9, v5);
  v30[2] = v19;
  sub_1B4294();
  sub_1B4304();

  v20(v9, v23, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22A7A0, &qword_1C0590);
  sub_1B4304();

  v24 = v36;
  v20(v9, v36, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  sub_1B4304();

  v25 = v35;
  v35(v9, v24, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22A7A8, &qword_1C0598);
  sub_1B4304();

  v25(v9, v24, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22A7B0, &unk_1C05A0);
  sub_1B4304();

  v25(v9, v24, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BooksBackendPersonalizationMetadataService();
  sub_1B42F4();

  v25(v9, v24, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B4294();
  type metadata accessor for BooksPersonalizationMetadataCache();
  sub_1B42F4();

  v25(v9, v36, v5);
  sub_1B4214();

  v21(v9, v5);
  sub_1B42A4();
  sub_2698(v37, v37[3]);
  v27 = v32;
  v26 = v33;
  v28 = v34;
  (*(v33 + 104))(v32, enum case for CallbackScope.any(_:), v34);
  sub_1B4314();
  (*(v26 + 8))(v27, v28);
  return sub_2BF8(v37);
}

uint64_t CollectionRecommendationRequest.userInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_OWORD *ScoredAuthor.init(author:score:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 16) = a3;
  return result;
}

uint64_t sub_8B9A0()
{
  if (*v0)
  {
    result = 0x65726F6373;
  }

  else
  {
    result = 0x726F68747561;
  }

  *v0;
  return result;
}

uint64_t sub_8B9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_8BAA8(uint64_t a1)
{
  v2 = sub_8BCC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8BAE4(uint64_t a1)
{
  v2 = sub_8BCC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScoredAuthor.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22A7F8, &qword_1C0600);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_8BCC0();

  sub_1B5884();
  v16 = v8;
  v17 = v9;
  v15 = 0;
  sub_8BD14();
  v12 = v14;
  sub_1B5544();

  if (!v12)
  {
    LOBYTE(v16) = 1;
    sub_1B5514();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_8BCC0()
{
  result = qword_22A800;
  if (!qword_22A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A800);
  }

  return result;
}

unint64_t sub_8BD14()
{
  result = qword_22A808;
  if (!qword_22A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A808);
  }

  return result;
}

uint64_t ScoredAuthor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22A810, &qword_1C0608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_8BCC0();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v16[15] = 0;
  sub_8BF48();
  sub_1B5404();
  v12 = v17;
  v11 = v18;
  LOBYTE(v17) = 1;
  sub_1B53D4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v14;

  sub_2BF8(a1);
}

unint64_t sub_8BF48()
{
  result = qword_22A818;
  if (!qword_22A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A818);
  }

  return result;
}

unint64_t MediaTypeRecommendationServiceError.description.getter()
{
  v1 = *v0;
  sub_1B5084(32);

  v2 = 0xD00000000000002FLL;
  v3 = "a paid storefront";
  v4 = "d Recommendations disabled";
  v5 = 0xD00000000000005ALL;
  if (v1 == 2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v4 = "No access to recommendations; ";
  }

  if (v1)
  {
    v2 = 0xD000000000000021;
    v3 = "user is under thirteen";
  }

  if (v1 <= 1)
  {
    v6._countAndFlagsBits = v2;
  }

  else
  {
    v6._countAndFlagsBits = v5;
  }

  if (v1 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v6._object = (v7 | 0x8000000000000000);
  sub_1B48D4(v6);

  return 0xD00000000000001ELL;
}

uint64_t AuthorRecommendationSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_212E08;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_8C118@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_212E68;
  v7._object = v3;
  v5 = sub_1B52E4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_8C180()
{
  result = qword_22A820;
  if (!qword_22A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A820);
  }

  return result;
}

unint64_t sub_8C1D8()
{
  result = qword_22A828;
  if (!qword_22A828)
  {
    sub_1CC1C(&qword_22A830, &qword_1C0768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A828);
  }

  return result;
}

unint64_t sub_8C240()
{
  result = qword_22A838;
  if (!qword_22A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A838);
  }

  return result;
}

uint64_t sub_8C294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_8C2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of AuthorRecommendationServiceType.fetchRecommendedAuthors(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

unint64_t sub_8C4B0()
{
  result = qword_22A840;
  if (!qword_22A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A840);
  }

  return result;
}

unint64_t sub_8C508()
{
  result = qword_22A848;
  if (!qword_22A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A848);
  }

  return result;
}

unint64_t sub_8C560()
{
  result = qword_22A850;
  if (!qword_22A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A850);
  }

  return result;
}

uint64_t Book.Metadata.genreIDs.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      v6 = *(v4 - 1);
      v7 = *v4;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      v9 = (inited + 16);
      *(inited + 32) = v6;
      v10 = *(v7 + 16);

      if (v10)
      {
        v20 = sub_33008(&dword_0 + 1, v10 + 1, 1, inited);
        if (!*(v7 + 16))
        {

          __break(1u);
          return result;
        }

        inited = v20;
        v9 = (v20 + 16);
        v21 = *(v20 + 2);
        if ((*(v20 + 3) >> 1) - v21 < v10)
        {
          goto LABEL_32;
        }

        memcpy(&v20[8 * v21 + 32], (v7 + 32), 8 * v10);

        v22 = *(inited + 16);
        v11 = v22 + v10;
        if (__OFADD__(v22, v10))
        {
          goto LABEL_33;
        }

        *v9 = v11;
      }

      else
      {

        v11 = *v9;
      }

      v12 = *(v5 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v5 + 3) >> 1)
      {
        if (!*v9)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v5 = sub_33008(isUniquelyReferenced_nonNull_native, v15, 1, v5);
        if (!*v9)
        {
LABEL_3:

          if (v11)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        }
      }

      v16 = *(v5 + 2);
      if ((*(v5 + 3) >> 1) - v16 < v11)
      {
        goto LABEL_30;
      }

      memcpy(&v5[8 * v16 + 32], (inited + 32), 8 * v11);

      if (v11)
      {
        v17 = *(v5 + 2);
        v18 = __OFADD__(v17, v11);
        v19 = v17 + v11;
        if (v18)
        {
          goto LABEL_31;
        }

        *(v5 + 2) = v19;
      }

LABEL_4:
      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_26;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_26:
  v23 = sub_40854(v5);

  return v23;
}