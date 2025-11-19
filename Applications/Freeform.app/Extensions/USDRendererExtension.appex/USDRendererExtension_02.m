uint64_t sub_1000432A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001000A2E00 == a2 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E49657A6973 && a2 == 0xEC00000073726574 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5365636166727573 && a2 == 0xEC000000656C6163 || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 4;
  }

  else
  {
    v5 = sub_10008B158();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100043464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E696B5FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEF6C7255656C6261 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A2DE0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100043624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46746C7561666564 && a2 == 0xEC000000656D6172 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E49656E616C70 && a2 == 0xEF736369736E6972 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000A2DC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000437EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10002A958(&qword_1000D6EE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v85 = a1;
  sub_10002E7C4(a1, v9);
  sub_1000476E8();
  sub_10008B308();
  if (v2)
  {
    return sub_10002E85C(v85);
  }

  v10 = v6;
  LOBYTE(v52) = 0;
  sub_10002DFAC();
  v11 = v5;
  sub_10008B088();
  v12 = v62;
  v51 = v63;
  v13 = v64;
  v14 = v65;
  v15 = v66;
  v16 = v67;
  v17 = v68;
  type metadata accessor for CGRect(0);
  LOBYTE(v52) = 1;
  sub_1000474F0(&qword_1000D6ED0, 255, type metadata accessor for CGRect);
  sub_10008B088();
  v49 = v14;
  v50 = v13;
  v18 = v62;
  v19 = v63;
  LOBYTE(v52) = 2;
  sub_10004773C();
  sub_10008B088();
  v44 = *(&v19 + 1);
  v45 = *(&v18 + 1);
  v46 = v18;
  v47 = v19;
  v20 = v62;
  v21 = *(&v62 + 1);
  v23 = v63;
  v22 = v23 >> 64;
  v48 = v23;
  LODWORD(v14) = v64;
  sub_10002A958(&qword_1000D6F00);
  LOBYTE(v52) = 3;
  sub_10004781C(&qword_1000D6F08, &qword_1000D6F10);
  sub_10008B088();
  v43 = v14;
  v24 = v62;
  v81 = 4;
  v25 = sub_10008B078();
  v26 = *(v10 + 8);
  v40 = v25;
  v26(v8, v11);
  LODWORD(v52) = v12;
  *(&v52 + 4) = v83;
  HIDWORD(v52) = v84;
  v53 = v51;
  *&v54 = v50;
  *(&v54 + 1) = v49;
  *&v55 = v15;
  *(&v55 + 1) = v16;
  v42 = v22;
  v27 = v46;
  *&v56 = v17;
  *(&v56 + 1) = v46;
  v28 = v21;
  v41 = v21;
  v30 = v44;
  v29 = v45;
  v31 = v47;
  *&v57 = v45;
  *(&v57 + 1) = v47;
  *&v58 = v44;
  BYTE8(v58) = v20;
  HIDWORD(v58) = *&v82[3];
  *(&v58 + 9) = *v82;
  *&v59 = v28;
  *(&v59 + 1) = v48;
  *&v60 = v22;
  DWORD2(v60) = v43;
  v32 = v40;
  *&v61 = v24;
  *(&v61 + 1) = v40;
  sub_100047790(&v52, &v62);
  sub_10002E85C(v85);
  LODWORD(v62) = v12;
  *(&v62 + 4) = v83;
  HIDWORD(v62) = v84;
  v63 = v51;
  v64 = v50;
  v65 = v49;
  v66 = v15;
  v67 = v16;
  v68 = v17;
  v69 = v27;
  v70 = v29;
  v71 = v31;
  v72 = v30;
  v73 = v20;
  *&v74[3] = *&v82[3];
  *v74 = *v82;
  v75 = v41;
  v76 = v48;
  v77 = v42;
  v78 = v43;
  v79 = v24;
  v80 = v32;
  result = sub_10002DA0C(&v62);
  v34 = v59;
  a2[6] = v58;
  a2[7] = v34;
  v35 = v61;
  a2[8] = v60;
  a2[9] = v35;
  v36 = v55;
  a2[2] = v54;
  a2[3] = v36;
  v37 = v57;
  a2[4] = v56;
  a2[5] = v37;
  v38 = v53;
  *a2 = v52;
  a2[1] = v38;
  return result;
}

uint64_t sub_100043CE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002A958(&qword_1000D6F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  sub_10002E7C4(a1, a1[3]);
  sub_100047A60();
  sub_10008B308();
  if (v2)
  {
    return sub_10002E85C(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_10008B048();
  type metadata accessor for CGSize(0);
  v19[15] = 1;
  sub_1000474F0(&qword_1000D6F48, 255, type metadata accessor for CGSize);
  sub_10008B088();
  v10 = v20;
  v11 = v21;
  LOBYTE(v20) = 2;
  sub_10008B068();
  v13 = v12;
  LOBYTE(v20) = 3;
  sub_10008B068();
  v15 = v14;
  LOBYTE(v20) = 4;
  sub_10008B068();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  result = sub_10002E85C(a1);
  *a2 = v9 & 1;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 28) = v15;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_100043F70(void *a1)
{
  v56 = sub_10002A958(&qword_1000D6FB0);
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v45 - v2;
  v3 = sub_10002A958(&qword_1000D6FB8);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  __chkstk_darwin(v3);
  v59 = &v45 - v5;
  v52 = sub_10002A958(&qword_1000D6FC0);
  v48 = *(v52 - 8);
  __chkstk_darwin(v52);
  v58 = &v45 - v6;
  v7 = sub_10002A958(&qword_1000D6FC8);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = sub_10002A958(&qword_1000D6FD0);
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = sub_10002A958(&qword_1000D6FD8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = a1[3];
  v61 = a1;
  sub_10002E7C4(a1, v17);
  sub_100047BC8();
  v18 = v60;
  sub_10008B308();
  if (!v18)
  {
    v19 = v9;
    v46 = v10;
    v47 = v16;
    v20 = v58;
    v21 = v59;
    v60 = v13;
    v22 = sub_10008B098();
    v23 = *(v22 + 16);
    if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 5) : (v25 = 1), v25))
    {
      v17 = sub_10008AF08();
      swift_allocError();
      v27 = v26;
      sub_10002A958(&qword_1000D6868);
      *v27 = &type metadata for CRLUSDRendering.SceneAction;
      v28 = v60;
      v29 = v47;
      sub_10008B008();
      sub_10008AEF8();
      (*(*(v17 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v17);
      swift_willThrow();
      (*(v14 + 8))(v29, v28);
      swift_unknownObjectRelease();
    }

    else if (*(v22 + 32) <= 1u)
    {
      v32 = v14;
      if (*(v22 + 32))
      {
        v65 = 1;
        sub_100047D18();
        v40 = v60;
        v41 = v47;
        sub_10008AFF8();
        (*(v49 + 8))(v19, v50);
        (*(v32 + 8))(v41, v40);
        swift_unknownObjectRelease();
        v17 = 0;
      }

      else
      {
        v64 = 0;
        sub_100047D6C();
        v33 = v12;
        v34 = v60;
        v35 = v47;
        sub_10008AFF8();
        v63 = 0;
        v36 = v46;
        sub_10008B058();
        v44 = v43;
        v62 = 1;
        sub_10008B048();
        (*(v51 + 8))(v33, v36);
        (*(v32 + 8))(v35, v34);
        swift_unknownObjectRelease();
        v17 = v44;
      }
    }

    else if (v24 == 2)
    {
      v66 = 2;
      sub_100047CC4();
      v37 = v60;
      v38 = v47;
      sub_10008AFF8();
      (*(v48 + 8))(v20, v52);
      (*(v14 + 8))(v38, v37);
      swift_unknownObjectRelease();
      v17 = 0;
    }

    else
    {
      v30 = v60;
      v31 = v47;
      if (v24 == 3)
      {
        v67 = 3;
        sub_100047C70();
        sub_10008AFF8();
        (*(v55 + 8))(v21, v54);
      }

      else
      {
        v68 = 4;
        sub_100047C1C();
        v39 = v57;
        sub_10008AFF8();
        (*(v53 + 8))(v39, v56);
      }

      (*(v14 + 8))(v31, v30);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  sub_10002E85C(v61);
  return v17;
}

unint64_t sub_1000447B8(void *a1)
{
  v30 = sub_10002A958(&qword_1000D7040);
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &v28 - v2;
  v4 = sub_10002A958(&qword_1000D7048);
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = sub_10002A958(&qword_1000D7050);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = a1[3];
  v34 = a1;
  v12 = sub_10002E7C4(a1, v11);
  sub_100047DC0();
  v13 = v33;
  sub_10008B308();
  if (!v13)
  {
    v29 = v4;
    v33 = v8;
    v14 = sub_10008B098();
    v15 = v7;
    if (*(v14 + 16) == 1)
    {
      v16 = v10;
      v17 = v33;
      if (*(v14 + 32))
      {
        v41 = 1;
        sub_100047E14();
        v18 = v3;
        sub_10008AFF8();
        sub_100047E68();
        v23 = v30;
        sub_10008B088();
        (*(v32 + 8))(v18, v23);
        (*(v17 + 8))(v16, v15);
        swift_unknownObjectRelease();
        v24 = 256;
        if (!v36)
        {
          v24 = 0;
        }

        v25 = v24 | v35;
        v26 = 0x10000;
        if (!v37)
        {
          v26 = 0;
        }

        v27 = 0x1000000;
        if (!v38)
        {
          v27 = 0;
        }

        v12 = v25 | v26 | v27 | (v39 << 32);
      }

      else
      {
        v40 = 0;
        sub_100047EBC();
        sub_10008AFF8();
        (*(v31 + 8))(v6, v29);
        (*(v17 + 8))(v10, v15);
        swift_unknownObjectRelease();
        v12 = 2;
      }
    }

    else
    {
      v19 = sub_10008AF08();
      swift_allocError();
      v21 = v20;
      sub_10002A958(&qword_1000D6868);
      *v21 = &type metadata for CRLUSDRendering.SceneDescription.AnimationState;
      v12 = v10;
      sub_10008B008();
      sub_10008AEF8();
      (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
      swift_willThrow();
      (*(v33 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }
  }

  sub_10002E85C(v34);
  return v12;
}

float sub_100044CA8(void *a1)
{
  v2 = sub_10002A958(&qword_1000D7098);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  sub_10002E7C4(a1, a1[3]);
  sub_100047F64();
  sub_10008B308();
  v14 = 0;
  sub_10008B048();
  v13 = 1;
  sub_10008B048();
  v12 = 2;
  sub_10008B048();
  v11 = 3;
  v9[1] = sub_10008B048();
  v10 = 4;
  sub_10008B068();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  sub_10002E85C(a1);
  return v8;
}

uint64_t sub_100044EEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v55 = sub_10002A958(&qword_1000D70B0);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v62 = &v48 - v3;
  v4 = sub_10002A958(&qword_1000D70B8);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  __chkstk_darwin(v4);
  v59 = &v48 - v6;
  v54 = sub_10002A958(&qword_1000D70C0);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v61 = &v48 - v7;
  v53 = sub_10002A958(&qword_1000D70C8);
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = &v48 - v8;
  v10 = sub_10002A958(&qword_1000D70D0);
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_10002A958(&qword_1000D70D8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  v17 = a1[3];
  v71 = a1;
  sub_10002E7C4(a1, v17);
  sub_100047FB8();
  v18 = v63;
  sub_10008B308();
  if (v18)
  {
    return sub_10002E85C(v71);
  }

  v19 = v12;
  v48 = v10;
  v20 = v61;
  v21 = v62;
  v63 = v14;
  v49 = v16;
  v22 = sub_10008B098();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 5) : (v25 = 1), v25))
  {
    v26 = sub_10008AF08();
    swift_allocError();
    v28 = v27;
    sub_10002A958(&qword_1000D6868);
    *v28 = &type metadata for CRLUSDRendering.RendererState;
    v29 = v49;
    sub_10008B008();
    sub_10008AEF8();
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
    swift_willThrow();
    (*(v63 + 8))(v29, v13);
    swift_unknownObjectRelease();
    return sub_10002E85C(v71);
  }

  if (*(v22 + 32) <= 1u)
  {
    if (*(v22 + 32))
    {
      LOBYTE(v64) = 1;
      sub_10004815C();
      v39 = v49;
      sub_10008AFF8();
      (*(v51 + 8))(v9, v53);
      (*(v63 + 8))(v39, v13);
      swift_unknownObjectRelease();
      v42 = 0;
      v44 = 0;
      v43 = 0;
      v45 = 0;
      v47 = 0;
      v46 = 0x8000000000000000;
      v41 = 1;
    }

    else
    {
      LOBYTE(v64) = 0;
      sub_1000481B0();
      v35 = v49;
      sub_10008AFF8();
      (*(v50 + 8))(v19, v48);
      (*(v63 + 8))(v35, v13);
      swift_unknownObjectRelease();
      v41 = 0;
      v42 = 0;
      v44 = 0;
      v43 = 0;
      v45 = 0;
      v47 = 0;
      v46 = 0x8000000000000000;
    }

    v30 = v60;
  }

  else
  {
    v30 = v60;
    if (v24 == 2)
    {
      LOBYTE(v64) = 2;
      sub_100048108();
      v36 = v49;
      sub_10008AFF8();
      v37 = v63;
      (*(v52 + 8))(v20, v54);
      (*(v37 + 8))(v36, v13);
      swift_unknownObjectRelease();
      v42 = 0;
      v44 = 0;
      v43 = 0;
      v45 = 0;
      v47 = 0;
      v46 = 0x8000000000000000;
      v41 = 2;
    }

    else
    {
      v31 = v63;
      v32 = v49;
      if (v24 == 3)
      {
        LOBYTE(v64) = 3;
        sub_100048060();
        v33 = v59;
        sub_10008AFF8();
        sub_1000480B4();
        v34 = v56;
        sub_10008B088();
        (*(v57 + 8))(v33, v34);
        (*(v31 + 8))(v32, v13);
        swift_unknownObjectRelease();
        v41 = v64;
        v42 = v65;
        v44 = v66;
        v43 = v67;
        v45 = v68;
        v46 = v69;
        v47 = v70;
      }

      else
      {
        LOBYTE(v64) = 4;
        sub_10004800C();
        sub_10008AFF8();
        sub_1000473D4();
        v38 = v55;
        sub_10008B088();
        (*(v58 + 8))(v21, v38);
        (*(v31 + 8))(v32, v13);
        swift_unknownObjectRelease();
        v43 = 0;
        v45 = 0;
        v47 = 0;
        v41 = v64;
        v42 = v65;
        v46 = 0x4000000000000000;
        v44 = v66;
      }
    }
  }

  result = sub_10002E85C(v71);
  *v30 = v41;
  v30[1] = v42;
  v30[2] = v44;
  v30[3] = v43;
  v30[4] = v45;
  v30[5] = v46;
  v30[6] = v47;
  return result;
}

void *sub_100045820(void *a1)
{
  v2 = sub_10002A958(&qword_1000D7158);
  v3 = *(v2 - 8);
  v76 = v2;
  v77 = v3;
  __chkstk_darwin(v2);
  v82 = &v61 - v4;
  v5 = sub_10002A958(&qword_1000D7160);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  __chkstk_darwin(v5);
  v81 = &v61 - v7;
  v8 = sub_10002A958(&qword_1000D7168);
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v80 = &v61 - v9;
  v68 = sub_10002A958(&qword_1000D7170);
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v78 = &v61 - v10;
  v11 = sub_10002A958(&qword_1000D7178);
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v79 = &v61 - v12;
  v13 = sub_10002A958(&qword_1000D7180);
  v66 = *(v13 - 8);
  v67 = v13;
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  v16 = sub_10002A958(&qword_1000D7188);
  v65 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = sub_10002A958(&qword_1000D7190);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v61 - v21;
  v23 = a1[3];
  v83 = a1;
  sub_10002E7C4(a1, v23);
  sub_1000482AC();
  v24 = v85;
  sub_10008B308();
  if (v24)
  {
    goto LABEL_28;
  }

  v62 = v16;
  v63 = v15;
  v25 = v79;
  v64 = 0;
  v27 = v80;
  v26 = v81;
  v23 = v82;
  v85 = v20;
  v28 = sub_10008B098();
  v29 = v28;
  if (*(v28 + 16) != 1 || (v30 = *(v28 + 32), v30 == 7))
  {
    v36 = sub_10008AF08();
    swift_allocError();
    v23 = v37;
    sub_10002A958(&qword_1000D6868);
    *v23 = &type metadata for CRLUSDRendering.RendererError;
    sub_10008B008();
    sub_10008AEF8();
    (*(*(v36 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    (*(v85 + 8))(v22, v19);
LABEL_27:
    swift_unknownObjectRelease();
LABEL_28:
    v60 = v83;
    goto LABEL_29;
  }

  if (*(v28 + 32) > 2u)
  {
    if (*(v28 + 32) > 4u)
    {
      v43 = v85;
      if (v30 == 5)
      {
        LOBYTE(v84) = 5;
        sub_100048354();
        v23 = v26;
        v44 = v64;
        sub_10008AFF8();
        if (!v44)
        {
          sub_1000483A8();
          v45 = v74;
          sub_10008B088();
          (*(v75 + 8))(v23, v45);
          (*(v43 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v23 = v84;
          goto LABEL_32;
        }
      }

      else
      {
        LOBYTE(v84) = 6;
        sub_100048300();
        v50 = v23;
        v51 = v64;
        sub_10008AFF8();
        if (!v51)
        {
          v52 = v76;
          v23 = sub_10008B018();
          (*(v77 + 8))(v50, v52);
          (*(v43 + 8))(v22, v19);
          swift_unknownObjectRelease();
          goto LABEL_32;
        }
      }

      (*(v43 + 8))(v22, v19);
    }

    else
    {
      v31 = v85;
      if (v30 == 3)
      {
        LOBYTE(v84) = 3;
        sub_100048450();
        v23 = v78;
        v32 = v64;
        sub_10008AFF8();
        if (!v32)
        {
          v33 = v68;
          v34 = sub_10008B038();
          v35 = v23;
          v23 = v34;
          (*(v71 + 8))(v35, v33);
          (*(v31 + 8))(v22, v19);
          swift_unknownObjectRelease();
LABEL_32:
          v60 = v83;
          goto LABEL_29;
        }
      }

      else
      {
        LOBYTE(v84) = 4;
        sub_1000483FC();
        v23 = v27;
        v49 = v64;
        sub_10008AFF8();
        if (!v49)
        {
          (*(v72 + 8))(v27, v73);
          (*(v31 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v23 = 0;
          goto LABEL_32;
        }
      }

      (*(v31 + 8))(v22, v19);
    }

    goto LABEL_27;
  }

  if (!*(v28 + 32))
  {
    LOBYTE(v84) = 0;
    sub_10004854C();
    v46 = v18;
    v47 = v64;
    sub_10008AFF8();
    if (!v47)
    {
      v54 = v19;
      v82 = v29;
      v55 = v62;
      v56 = sub_10008B038();
      v57 = v83;
      v58 = v85;
      v23 = v56;
      (*(v65 + 8))(v46, v55);
      (*(v58 + 8))(v22, v54);
      swift_unknownObjectRelease();
      v60 = v57;
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v38 = v64;
  if (v30 == 1)
  {
    LOBYTE(v84) = 1;
    sub_1000484F8();
    v23 = v63;
    sub_10008AFF8();
    if (!v38)
    {
      v39 = v67;
      v40 = sub_10008B038();
      v41 = v23;
      v42 = v85;
      v23 = v40;
      (*(v66 + 8))(v41, v39);
      (*(v42 + 8))(v22, v19);
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

LABEL_18:
    (*(v85 + 8))(v22, v19);
    goto LABEL_27;
  }

  LOBYTE(v84) = 2;
  sub_1000484A4();
  sub_10008AFF8();
  v48 = v83;
  if (!v38)
  {
    v59 = v70;
    v23 = sub_10008B038();
    (*(v69 + 8))(v25, v59);
  }

  (*(v85 + 8))(v22, v19);
  swift_unknownObjectRelease();
  v60 = v48;
LABEL_29:
  sub_10002E85C(v60);
  return v23;
}

uint64_t sub_1000464A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002A958(&qword_1000D7228);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10002E7C4(a1, a1[3]);
  sub_1000485F4();
  sub_10008B308();
  if (v2)
  {
    return sub_10002E85C(a1);
  }

  LOBYTE(v16) = 0;
  sub_10008B068();
  v10 = v9;
  type metadata accessor for simd_quatf(0);
  v17 = 1;
  sub_1000474F0(&qword_1000D7238, 255, type metadata accessor for simd_quatf);
  sub_10008B088();
  v15 = v16;
  type metadata accessor for CGSize(0);
  v17 = 2;
  sub_1000474F0(&qword_1000D6F48, 255, type metadata accessor for CGSize);
  sub_10008B088();
  v11 = v16;
  v17 = 3;
  sub_10008B088();
  v12 = v16;
  v17 = 4;
  sub_100048648();
  sub_10008B088();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  result = sub_10002E85C(a1);
  *a2 = v10;
  *(a2 + 16) = v15;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  return result;
}

uint64_t sub_1000467CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002A958(&qword_1000D7260);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000411C8(&_swiftEmptyArrayStorage);

  sub_10002E7C4(a1, a1[3]);
  sub_1000486F0();
  sub_10008B308();
  if (v2)
  {
    return sub_10002E85C(a1);
  }

  v18 = 0;
  sub_100048744();
  sub_10008B088();
  v14 = v17;
  v15 = v16;
  sub_10002A958(&qword_1000D7278);
  v18 = 1;
  sub_100048840(&qword_1000D7280, sub_100048798);
  sub_10008B088();
  v9 = v16;
  LOBYTE(v16) = 2;
  v10 = sub_10008B048();
  sub_10002A958(&qword_1000D7290);
  v18 = 3;
  sub_100048918(&qword_1000D7298);
  sub_10008B088();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  result = sub_10002E85C(a1);
  v13 = v14;
  *a2 = v15;
  *(a2 + 16) = v13;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_100046AEC(void *a1)
{
  sub_10002E7C4(a1, a1[3]);
  sub_10008B2F8();
  if (!v1)
  {
    sub_10002E7C4(v4, v4[3]);
    sub_10002A958(&qword_1000D6C80);
    sub_100048A5C(&qword_1000D7350);
    sub_10008B168();
    sub_10002E85C(v4);
  }

  return sub_10002E85C(a1);
}

uint64_t sub_100046BFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100046C74()
{
  result = sub_100089CD8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100046D28(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_100046D44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100046D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_100046DD0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_100046DF8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100046E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100046E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100046EE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100046F00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100046F48(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_100046FA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100046FC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046FE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_100047034(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100047050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1000470A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004710C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = xmmword_1000A64E0;
  }

  return result;
}

unint64_t sub_100047170()
{
  result = qword_1000D6E48;
  if (!qword_1000D6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E48);
  }

  return result;
}

unint64_t sub_1000471C8()
{
  result = qword_1000D6E50;
  if (!qword_1000D6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E50);
  }

  return result;
}

unint64_t sub_100047220()
{
  result = qword_1000D6E58;
  if (!qword_1000D6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E58);
  }

  return result;
}

unint64_t sub_100047278()
{
  result = qword_1000D6E60;
  if (!qword_1000D6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E60);
  }

  return result;
}

unint64_t sub_1000472D0()
{
  result = qword_1000D6E68;
  if (!qword_1000D6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E68);
  }

  return result;
}

unint64_t sub_100047328()
{
  result = qword_1000D6E70;
  if (!qword_1000D6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E70);
  }

  return result;
}

unint64_t sub_100047380()
{
  result = qword_1000D6E78;
  if (!qword_1000D6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E78);
  }

  return result;
}

unint64_t sub_1000473D4()
{
  result = qword_1000D6E80;
  if (!qword_1000D6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E80);
  }

  return result;
}

unint64_t sub_100047448()
{
  result = qword_1000D6E90;
  if (!qword_1000D6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6E90);
  }

  return result;
}

unint64_t sub_10004749C()
{
  result = qword_1000D6EA0;
  if (!qword_1000D6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6EA0);
  }

  return result;
}

uint64_t sub_1000474F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100047538()
{
  result = qword_1000D6EB8;
  if (!qword_1000D6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6EB8);
  }

  return result;
}

unint64_t sub_1000475AC()
{
  result = qword_1000D6EC8;
  if (!qword_1000D6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6EC8);
  }

  return result;
}

uint64_t sub_100047600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100047668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000476E8()
{
  result = qword_1000D6EF0;
  if (!qword_1000D6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6EF0);
  }

  return result;
}

unint64_t sub_10004773C()
{
  result = qword_1000D6EF8;
  if (!qword_1000D6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6EF8);
  }

  return result;
}

unint64_t sub_1000477C8()
{
  result = qword_1000D6F20;
  if (!qword_1000D6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6F20);
  }

  return result;
}

uint64_t sub_10004781C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD9C(&qword_1000D6F00);
    sub_1000474F0(a2, 255, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000478BC()
{
  result = qword_1000D6F40;
  if (!qword_1000D6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6F40);
  }

  return result;
}

unint64_t sub_100047910()
{
  result = qword_1000D6F50;
  if (!qword_1000D6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6F50);
  }

  return result;
}

unint64_t sub_100047964()
{
  result = qword_1000D6F58;
  if (!qword_1000D6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6F58);
  }

  return result;
}

unint64_t sub_1000479B8()
{
  result = qword_1000D6F70;
  if (!qword_1000D6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6F70);
  }

  return result;
}

unint64_t sub_100047A0C()
{
  result = qword_1000D6F78;
  if (!qword_1000D6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6F78);
  }

  return result;
}

unint64_t sub_100047A60()
{
  result = qword_1000D6F88;
  if (!qword_1000D6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6F88);
  }

  return result;
}

uint64_t sub_100047AD4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100047B0C()
{
  result = qword_1000D6FA0;
  if (!qword_1000D6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6FA0);
  }

  return result;
}

uint64_t sub_100047B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100047BC8()
{
  result = qword_1000D6FE0;
  if (!qword_1000D6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6FE0);
  }

  return result;
}

unint64_t sub_100047C1C()
{
  result = qword_1000D6FE8;
  if (!qword_1000D6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6FE8);
  }

  return result;
}

unint64_t sub_100047C70()
{
  result = qword_1000D6FF0;
  if (!qword_1000D6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6FF0);
  }

  return result;
}

unint64_t sub_100047CC4()
{
  result = qword_1000D6FF8;
  if (!qword_1000D6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6FF8);
  }

  return result;
}

unint64_t sub_100047D18()
{
  result = qword_1000D7000;
  if (!qword_1000D7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7000);
  }

  return result;
}

unint64_t sub_100047D6C()
{
  result = qword_1000D7008;
  if (!qword_1000D7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7008);
  }

  return result;
}

unint64_t sub_100047DC0()
{
  result = qword_1000D7058;
  if (!qword_1000D7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7058);
  }

  return result;
}

unint64_t sub_100047E14()
{
  result = qword_1000D7060;
  if (!qword_1000D7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7060);
  }

  return result;
}

unint64_t sub_100047E68()
{
  result = qword_1000D7068;
  if (!qword_1000D7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7068);
  }

  return result;
}

unint64_t sub_100047EBC()
{
  result = qword_1000D7070;
  if (!qword_1000D7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7070);
  }

  return result;
}

unint64_t sub_100047F10()
{
  result = qword_1000D7090;
  if (!qword_1000D7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7090);
  }

  return result;
}

unint64_t sub_100047F64()
{
  result = qword_1000D70A0;
  if (!qword_1000D70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D70A0);
  }

  return result;
}

unint64_t sub_100047FB8()
{
  result = qword_1000D70E0;
  if (!qword_1000D70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D70E0);
  }

  return result;
}

unint64_t sub_10004800C()
{
  result = qword_1000D70E8;
  if (!qword_1000D70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D70E8);
  }

  return result;
}

unint64_t sub_100048060()
{
  result = qword_1000D70F0;
  if (!qword_1000D70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D70F0);
  }

  return result;
}

unint64_t sub_1000480B4()
{
  result = qword_1000D70F8;
  if (!qword_1000D70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D70F8);
  }

  return result;
}

unint64_t sub_100048108()
{
  result = qword_1000D7100;
  if (!qword_1000D7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7100);
  }

  return result;
}

unint64_t sub_10004815C()
{
  result = qword_1000D7108;
  if (!qword_1000D7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7108);
  }

  return result;
}

unint64_t sub_1000481B0()
{
  result = qword_1000D7110;
  if (!qword_1000D7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7110);
  }

  return result;
}

unint64_t sub_100048204()
{
  result = qword_1000D7148;
  if (!qword_1000D7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7148);
  }

  return result;
}

unint64_t sub_100048258()
{
  result = qword_1000D7150;
  if (!qword_1000D7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7150);
  }

  return result;
}

unint64_t sub_1000482AC()
{
  result = qword_1000D7198;
  if (!qword_1000D7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7198);
  }

  return result;
}

unint64_t sub_100048300()
{
  result = qword_1000D71A0;
  if (!qword_1000D71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71A0);
  }

  return result;
}

unint64_t sub_100048354()
{
  result = qword_1000D71A8;
  if (!qword_1000D71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71A8);
  }

  return result;
}

unint64_t sub_1000483A8()
{
  result = qword_1000D71B0;
  if (!qword_1000D71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71B0);
  }

  return result;
}

unint64_t sub_1000483FC()
{
  result = qword_1000D71B8;
  if (!qword_1000D71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71B8);
  }

  return result;
}

unint64_t sub_100048450()
{
  result = qword_1000D71C0;
  if (!qword_1000D71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71C0);
  }

  return result;
}

unint64_t sub_1000484A4()
{
  result = qword_1000D71C8;
  if (!qword_1000D71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71C8);
  }

  return result;
}

unint64_t sub_1000484F8()
{
  result = qword_1000D71D0;
  if (!qword_1000D71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71D0);
  }

  return result;
}

unint64_t sub_10004854C()
{
  result = qword_1000D71D8;
  if (!qword_1000D71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D71D8);
  }

  return result;
}

unint64_t sub_1000485A0()
{
  result = qword_1000D7220;
  if (!qword_1000D7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7220);
  }

  return result;
}

unint64_t sub_1000485F4()
{
  result = qword_1000D7230;
  if (!qword_1000D7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7230);
  }

  return result;
}

unint64_t sub_100048648()
{
  result = qword_1000D7240;
  if (!qword_1000D7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7240);
  }

  return result;
}

unint64_t sub_10004869C()
{
  result = qword_1000D7258;
  if (!qword_1000D7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7258);
  }

  return result;
}

unint64_t sub_1000486F0()
{
  result = qword_1000D7268;
  if (!qword_1000D7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7268);
  }

  return result;
}

unint64_t sub_100048744()
{
  result = qword_1000D7270;
  if (!qword_1000D7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7270);
  }

  return result;
}

unint64_t sub_100048798()
{
  result = qword_1000D7288;
  if (!qword_1000D7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7288);
  }

  return result;
}

unint64_t sub_1000487EC()
{
  result = qword_1000D72A8;
  if (!qword_1000D72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D72A8);
  }

  return result;
}

uint64_t sub_100048840(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10002AD9C(&qword_1000D7278);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000488C4()
{
  result = qword_1000D72B8;
  if (!qword_1000D72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D72B8);
  }

  return result;
}

uint64_t sub_100048918(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD9C(&qword_1000D7290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100048984(uint64_t a1)
{
  v2 = sub_10002A958(&qword_1000D72E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1000489EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100048A00()
{
  result = qword_1000D7318;
  if (!qword_1000D7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7318);
  }

  return result;
}

uint64_t sub_100048A5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD9C(&qword_1000D6C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.SceneDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.SceneDescription.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.RendererError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.RendererError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100048F20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100048FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLPencilAndPaperFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLPencilAndPaperFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000491E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100089CD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000492C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100089CD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100049390()
{
  result = sub_100089CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CRLUSDRendering.SceneAction(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.SceneAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFEu) > 3))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.SceneAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1000494C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000494DC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState.PlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState.PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1000495F4()
{
  type metadata accessor for CRLUSDRendering.BookmarkableURL(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100049694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100049714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100049784()
{
  result = type metadata accessor for CRLUSDRendering.BookmarkableURL(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100049804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100049890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10004990C()
{
  type metadata accessor for CRLUSDRendering.BookmarkableURL(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1000499C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000499C0()
{
  if (!qword_1000D7578)
  {
    v0 = sub_10008AE68();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D7578);
    }
  }
}

__n128 sub_100049A10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100049A24(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[36])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100049A78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLUSDRendering.SceneDescription.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100049B68(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_100049B84(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_100049BBC()
{
  result = qword_1000D75B8;
  if (!qword_1000D75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75B8);
  }

  return result;
}

unint64_t sub_100049C14()
{
  result = qword_1000D75C0;
  if (!qword_1000D75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75C0);
  }

  return result;
}

unint64_t sub_100049C6C()
{
  result = qword_1000D75C8;
  if (!qword_1000D75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75C8);
  }

  return result;
}

unint64_t sub_100049CC4()
{
  result = qword_1000D75D0;
  if (!qword_1000D75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75D0);
  }

  return result;
}

unint64_t sub_100049D1C()
{
  result = qword_1000D75D8;
  if (!qword_1000D75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75D8);
  }

  return result;
}

unint64_t sub_100049D74()
{
  result = qword_1000D75E0;
  if (!qword_1000D75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75E0);
  }

  return result;
}

unint64_t sub_100049DCC()
{
  result = qword_1000D75E8;
  if (!qword_1000D75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75E8);
  }

  return result;
}

unint64_t sub_100049E24()
{
  result = qword_1000D75F0;
  if (!qword_1000D75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75F0);
  }

  return result;
}

unint64_t sub_100049E7C()
{
  result = qword_1000D75F8;
  if (!qword_1000D75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D75F8);
  }

  return result;
}

unint64_t sub_100049ED4()
{
  result = qword_1000D7600;
  if (!qword_1000D7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7600);
  }

  return result;
}

unint64_t sub_100049F2C()
{
  result = qword_1000D7608;
  if (!qword_1000D7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7608);
  }

  return result;
}

unint64_t sub_100049F84()
{
  result = qword_1000D7610;
  if (!qword_1000D7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7610);
  }

  return result;
}

unint64_t sub_100049FDC()
{
  result = qword_1000D7618;
  if (!qword_1000D7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7618);
  }

  return result;
}

unint64_t sub_10004A034()
{
  result = qword_1000D7620;
  if (!qword_1000D7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7620);
  }

  return result;
}

unint64_t sub_10004A08C()
{
  result = qword_1000D7628;
  if (!qword_1000D7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7628);
  }

  return result;
}

unint64_t sub_10004A0E4()
{
  result = qword_1000D7630;
  if (!qword_1000D7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7630);
  }

  return result;
}

unint64_t sub_10004A13C()
{
  result = qword_1000D7638;
  if (!qword_1000D7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7638);
  }

  return result;
}

unint64_t sub_10004A194()
{
  result = qword_1000D7640;
  if (!qword_1000D7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7640);
  }

  return result;
}

unint64_t sub_10004A1EC()
{
  result = qword_1000D7648;
  if (!qword_1000D7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7648);
  }

  return result;
}

unint64_t sub_10004A244()
{
  result = qword_1000D7650;
  if (!qword_1000D7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7650);
  }

  return result;
}

unint64_t sub_10004A29C()
{
  result = qword_1000D7658;
  if (!qword_1000D7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7658);
  }

  return result;
}

unint64_t sub_10004A2F4()
{
  result = qword_1000D7660;
  if (!qword_1000D7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7660);
  }

  return result;
}

unint64_t sub_10004A34C()
{
  result = qword_1000D7668;
  if (!qword_1000D7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7668);
  }

  return result;
}

unint64_t sub_10004A3A4()
{
  result = qword_1000D7670;
  if (!qword_1000D7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7670);
  }

  return result;
}

unint64_t sub_10004A3FC()
{
  result = qword_1000D7678;
  if (!qword_1000D7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7678);
  }

  return result;
}

unint64_t sub_10004A454()
{
  result = qword_1000D7680;
  if (!qword_1000D7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7680);
  }

  return result;
}

unint64_t sub_10004A4AC()
{
  result = qword_1000D7688;
  if (!qword_1000D7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7688);
  }

  return result;
}

unint64_t sub_10004A504()
{
  result = qword_1000D7690;
  if (!qword_1000D7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7690);
  }

  return result;
}

unint64_t sub_10004A55C()
{
  result = qword_1000D7698;
  if (!qword_1000D7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7698);
  }

  return result;
}

unint64_t sub_10004A5B4()
{
  result = qword_1000D76A0;
  if (!qword_1000D76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76A0);
  }

  return result;
}

unint64_t sub_10004A60C()
{
  result = qword_1000D76A8;
  if (!qword_1000D76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76A8);
  }

  return result;
}

unint64_t sub_10004A664()
{
  result = qword_1000D76B0;
  if (!qword_1000D76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76B0);
  }

  return result;
}

unint64_t sub_10004A6BC()
{
  result = qword_1000D76B8;
  if (!qword_1000D76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76B8);
  }

  return result;
}

unint64_t sub_10004A714()
{
  result = qword_1000D76C0;
  if (!qword_1000D76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76C0);
  }

  return result;
}

unint64_t sub_10004A76C()
{
  result = qword_1000D76C8;
  if (!qword_1000D76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76C8);
  }

  return result;
}

unint64_t sub_10004A7C4()
{
  result = qword_1000D76D0;
  if (!qword_1000D76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76D0);
  }

  return result;
}

unint64_t sub_10004A81C()
{
  result = qword_1000D76D8;
  if (!qword_1000D76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76D8);
  }

  return result;
}

unint64_t sub_10004A874()
{
  result = qword_1000D76E0;
  if (!qword_1000D76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76E0);
  }

  return result;
}

unint64_t sub_10004A8CC()
{
  result = qword_1000D76E8;
  if (!qword_1000D76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76E8);
  }

  return result;
}

unint64_t sub_10004A924()
{
  result = qword_1000D76F0;
  if (!qword_1000D76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76F0);
  }

  return result;
}

unint64_t sub_10004A97C()
{
  result = qword_1000D76F8;
  if (!qword_1000D76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D76F8);
  }

  return result;
}

unint64_t sub_10004A9D4()
{
  result = qword_1000D7700;
  if (!qword_1000D7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7700);
  }

  return result;
}

unint64_t sub_10004AA2C()
{
  result = qword_1000D7708;
  if (!qword_1000D7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7708);
  }

  return result;
}

unint64_t sub_10004AA84()
{
  result = qword_1000D7710;
  if (!qword_1000D7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7710);
  }

  return result;
}

unint64_t sub_10004AADC()
{
  result = qword_1000D7718;
  if (!qword_1000D7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7718);
  }

  return result;
}

unint64_t sub_10004AB34()
{
  result = qword_1000D7720;
  if (!qword_1000D7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7720);
  }

  return result;
}

unint64_t sub_10004AB8C()
{
  result = qword_1000D7728;
  if (!qword_1000D7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7728);
  }

  return result;
}

unint64_t sub_10004ABE4()
{
  result = qword_1000D7730;
  if (!qword_1000D7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7730);
  }

  return result;
}

unint64_t sub_10004AC3C()
{
  result = qword_1000D7738;
  if (!qword_1000D7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7738);
  }

  return result;
}

unint64_t sub_10004AC94()
{
  result = qword_1000D7740;
  if (!qword_1000D7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7740);
  }

  return result;
}

unint64_t sub_10004ACEC()
{
  result = qword_1000D7748;
  if (!qword_1000D7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7748);
  }

  return result;
}

unint64_t sub_10004AD44()
{
  result = qword_1000D7750;
  if (!qword_1000D7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7750);
  }

  return result;
}

unint64_t sub_10004AD9C()
{
  result = qword_1000D7758;
  if (!qword_1000D7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7758);
  }

  return result;
}

unint64_t sub_10004ADF4()
{
  result = qword_1000D7760;
  if (!qword_1000D7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7760);
  }

  return result;
}

unint64_t sub_10004AE4C()
{
  result = qword_1000D7768;
  if (!qword_1000D7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7768);
  }

  return result;
}

unint64_t sub_10004AEA4()
{
  result = qword_1000D7770;
  if (!qword_1000D7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7770);
  }

  return result;
}

unint64_t sub_10004AEFC()
{
  result = qword_1000D7778;
  if (!qword_1000D7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7778);
  }

  return result;
}

unint64_t sub_10004AF54()
{
  result = qword_1000D7780;
  if (!qword_1000D7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7780);
  }

  return result;
}

unint64_t sub_10004AFAC()
{
  result = qword_1000D7788;
  if (!qword_1000D7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7788);
  }

  return result;
}

unint64_t sub_10004B004()
{
  result = qword_1000D7790;
  if (!qword_1000D7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7790);
  }

  return result;
}

unint64_t sub_10004B05C()
{
  result = qword_1000D7798;
  if (!qword_1000D7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7798);
  }

  return result;
}

unint64_t sub_10004B0B4()
{
  result = qword_1000D77A0;
  if (!qword_1000D77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77A0);
  }

  return result;
}

unint64_t sub_10004B10C()
{
  result = qword_1000D77A8;
  if (!qword_1000D77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77A8);
  }

  return result;
}

unint64_t sub_10004B164()
{
  result = qword_1000D77B0;
  if (!qword_1000D77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77B0);
  }

  return result;
}

unint64_t sub_10004B1BC()
{
  result = qword_1000D77B8;
  if (!qword_1000D77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77B8);
  }

  return result;
}

unint64_t sub_10004B214()
{
  result = qword_1000D77C0;
  if (!qword_1000D77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77C0);
  }

  return result;
}

unint64_t sub_10004B26C()
{
  result = qword_1000D77C8;
  if (!qword_1000D77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77C8);
  }

  return result;
}

unint64_t sub_10004B2C4()
{
  result = qword_1000D77D0;
  if (!qword_1000D77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77D0);
  }

  return result;
}

unint64_t sub_10004B31C()
{
  result = qword_1000D77D8;
  if (!qword_1000D77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77D8);
  }

  return result;
}

unint64_t sub_10004B374()
{
  result = qword_1000D77E0;
  if (!qword_1000D77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77E0);
  }

  return result;
}

unint64_t sub_10004B3CC()
{
  result = qword_1000D77E8;
  if (!qword_1000D77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77E8);
  }

  return result;
}

unint64_t sub_10004B424()
{
  result = qword_1000D77F0;
  if (!qword_1000D77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77F0);
  }

  return result;
}

unint64_t sub_10004B47C()
{
  result = qword_1000D77F8;
  if (!qword_1000D77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D77F8);
  }

  return result;
}

unint64_t sub_10004B4D4()
{
  result = qword_1000D7800;
  if (!qword_1000D7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7800);
  }

  return result;
}

unint64_t sub_10004B52C()
{
  result = qword_1000D7808;
  if (!qword_1000D7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7808);
  }

  return result;
}

unint64_t sub_10004B584()
{
  result = qword_1000D7810;
  if (!qword_1000D7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7810);
  }

  return result;
}

unint64_t sub_10004B5DC()
{
  result = qword_1000D7818;
  if (!qword_1000D7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7818);
  }

  return result;
}

unint64_t sub_10004B634()
{
  result = qword_1000D7820;
  if (!qword_1000D7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7820);
  }

  return result;
}

unint64_t sub_10004B68C()
{
  result = qword_1000D7828;
  if (!qword_1000D7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7828);
  }

  return result;
}

unint64_t sub_10004B6E4()
{
  result = qword_1000D7830;
  if (!qword_1000D7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7830);
  }

  return result;
}

unint64_t sub_10004B73C()
{
  result = qword_1000D7838;
  if (!qword_1000D7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7838);
  }

  return result;
}

unint64_t sub_10004B794()
{
  result = qword_1000D7840;
  if (!qword_1000D7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7840);
  }

  return result;
}

unint64_t sub_10004B7EC()
{
  result = qword_1000D7848;
  if (!qword_1000D7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7848);
  }

  return result;
}

unint64_t sub_10004B844()
{
  result = qword_1000D7850;
  if (!qword_1000D7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7850);
  }

  return result;
}

unint64_t sub_10004B89C()
{
  result = qword_1000D7858;
  if (!qword_1000D7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7858);
  }

  return result;
}

unint64_t sub_10004B8F4()
{
  result = qword_1000D7860;
  if (!qword_1000D7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7860);
  }

  return result;
}

unint64_t sub_10004B94C()
{
  result = qword_1000D7868;
  if (!qword_1000D7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7868);
  }

  return result;
}

uint64_t sub_10004BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002A958(&qword_1000D6780);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002E1B4(a3, v24 - v9, &qword_1000D6780);
  v11 = sub_10008AD08();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10002E21C(v10, &qword_1000D6780);
  }

  else
  {
    sub_10008ACF8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10008AC88();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10008AB78() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10002E21C(a3, &qword_1000D6780);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002E21C(a3, &qword_1000D6780);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10004BD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002E1B4(a3, v25 - v10, &qword_1000D6780);
  v12 = sub_10008AD08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002E21C(v11, &qword_1000D6780);
  }

  else
  {
    sub_10008ACF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10008AC88();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10008AB78() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10002A958(&qword_1000D79A0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10002E21C(a3, &qword_1000D6780);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002E21C(a3, &qword_1000D6780);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10002A958(&qword_1000D79A0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10004C018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a2;
  v8 = sub_10002A958(&qword_1000D67D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100089DA8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  *(v5 + 136) = 0;
  v15 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_acknowledgeQueue;
  type metadata accessor for CRLUSDRendering.TaskQueue();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 128) = _swiftEmptyArrayStorage;
  *(v16 + 112) = xmmword_1000A6220;
  *(v5 + v15) = v16;
  v17 = v5 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v17 + 40) = xmmword_1000A95E0;
  if (qword_1000D6250 != -1)
  {
    swift_once();
  }

  sub_10002E1B4(a1, v10, &qword_1000D67D8);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_100089D98();
    if (v18(v10, 1, v11) != 1)
    {
      sub_10002E21C(v10, &qword_1000D67D8);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  (*(v12 + 32))(v5 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_uuid, v14, v11);
  *(v5 + 24) = v25;
  swift_unknownObjectWeakAssign();
  *(v5 + 40) = a4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0xC000000000000000;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0;
  if ((a4 & 2) != 0)
  {
    v19 = [objc_allocWithZone(_s10MetalLayerCMa()) init];
    v20 = *(v5 + 32);
    *(v5 + 32) = v19;
    v21 = v19;

    [v21 setFrame:{0.0, 0.0, 300.0, 300.0}];
    v27 = *&v21[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_frameNumber];
    swift_allocObject();
    swift_weakInit();

    sub_10002A958(&qword_1000D79A8);
    sub_100054138();
    v22 = sub_10008AA08();

    swift_unknownObjectRelease();

    sub_10002E21C(a1, &qword_1000D67D8);

    *(v5 + 136) = v22;
  }

  else
  {
    sub_10002E21C(a1, &qword_1000D67D8);
    swift_unknownObjectRelease();
  }

  return v5;
}

void *sub_10004C434()
{
  v0 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = result[4];
    if (!v5)
    {
    }

    if ((*(v5 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame) & 1) != 0 && (v6 = result[9], v6 >> 62 == 1))
    {
      v8 = result[15];
      v7 = result[16];
      v9 = result[13];
      v10 = result[14];
      v11 = result[12];
      v27 = result[11];
      v28 = v11;
      v26 = result[10];
      v12 = result[7];
      v34 = result[8];
      v13 = v34;
      v32 = v9;
      v33 = v12;
      v23 = result[6];
      v14 = v23;
      v24 = v6;
      v15 = sub_10008AD08();
      (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
      v25 = sub_10008ACE8();
      v31 = v7;
      v30 = v8;
      v29 = v10;
      sub_10005419C(v14, v12, v13, v6);
      v16 = v5;
      v17 = v23;
      v18 = v24;
      sub_10005419C(v23, v33, v34, v24);
      v19 = sub_10008ACD8();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v17;
      sub_10004BA04(0, 0, v2, &unk_1000A9A98, v20);
      sub_10005350C(v17, v33, v34, v18);

      if (!v4[17])
      {
        goto LABEL_9;
      }
    }

    else
    {
      v21 = v5;
      if (!v4[17])
      {
LABEL_9:

        v4[17] = 0;
      }
    }

    sub_10008A998();

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10004C70C()
{
  v0[2] = sub_10008ACE8();
  v0[3] = sub_10008ACD8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10004C7B8;

  return sub_10005B9DC();
}

uint64_t sub_10004C7B8()
{

  v1 = sub_10008AC88();

  return _swift_task_switch(sub_10004C8F4, v1, v0);
}

uint64_t sub_10004C8F4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10004C954()
{
  v1 = v0;
  v2 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = v0[9];
  if (v5 >> 62 == 1)
  {
    v6 = v0[16];
    v17[1] = v0[15];
    v7 = v0[13];
    v17[2] = v0[14];
    v17[3] = v6;
    v17[4] = v0[12];
    v17[5] = v7;
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = sub_10008AD08();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v17[0] = sub_10008ACE8();
    sub_10005419C(v10, v9, v8, v5);

    v12 = sub_10008ACD8();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    sub_10004BA04(0, 0, v4, &unk_1000A9AA8, v13);
    sub_10005350C(v10, v9, v8, v5);
  }

  sub_10002F138((v1 + 2));

  sub_10005350C(v1[6], v1[7], v1[8], v1[9]);

  v14 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_uuid;
  v15 = sub_100089DA8();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);

  sub_1000536AC(*(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState), *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 8), *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 16), *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 24), *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 32), *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 40));
  return v1;
}

uint64_t sub_10004CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10008ACE8();
  *(v4 + 24) = sub_10008ACD8();
  v6 = sub_10008AC88();

  return _swift_task_switch(sub_10004CC90, v6, v5);
}

uint64_t sub_10004CC90()
{

  if (qword_1000D6250 != -1)
  {
    swift_once();
  }

  sub_10005FE14(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004CD30()
{
  sub_10004C954();

  return swift_deallocClassInstance();
}

uint64_t _s10RepBackendCMa()
{
  result = qword_1000D78B0;
  if (!qword_1000D78B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004CDDC()
{
  result = sub_100089DA8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10004CEB4(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10004CED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10004CEF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10004CF44(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 32;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004CFC4(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16);
    *(result + 24) = a2 << 62;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 3);
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
    *(result + 24) = 0xC000000000000000;
  }

  return result;
}

BOOL sub_10004D070(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10004D0A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10004D0CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_10004D1A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10004D1D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100086CA0();

  *a1 = v2;
  return result;
}

unint64_t sub_10004D214()
{
  result = qword_1000D7970;
  if (!qword_1000D7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7970);
  }

  return result;
}

unint64_t sub_10004D26C()
{
  result = qword_1000D7978;
  if (!qword_1000D7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7978);
  }

  return result;
}

unint64_t sub_10004D2C4()
{
  result = qword_1000D7980;
  if (!qword_1000D7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7980);
  }

  return result;
}

unint64_t sub_10004D31C()
{
  result = qword_1000D7988;
  if (!qword_1000D7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7988);
  }

  return result;
}

uint64_t sub_10004D370(uint64_t *a1)
{
  if (a1[3] >> 62 == 1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 72) >> 62 == 1)
  {
    v3 = *(v1 + 48);

    if (!v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if (!v2)
    {
      goto LABEL_14;
    }
  }

  if (!v3 || v2 != v3)
  {
    if (qword_1000D6250 != -1)
    {
      swift_once();
    }

    sub_10005FE14(v2);
  }

LABEL_14:
}

uint64_t sub_10004D44C()
{
  v1 = v0;
  v58 = sub_100089DA8();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = v2;
  v56 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v3 - 8);
  v61 = &v54 - v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 72) >> 62;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v0 + 56);
      v11 = *(v0 + 48);
      v65 = *(v0 + 64);
      sub_1000535EC(v11, v7, v65);
      v64 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0x4000000000000000;
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v65 = 0;
      v64 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0x8000000000000000;
    }
  }

  else if (v6)
  {
    v12 = v5 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
    v5 = *(v5 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
    v7 = *(v12 + 8);
    v13 = *(v12 + 24);
    v65 = *(v12 + 16);
    v64 = v13;
    v8 = *(v12 + 32);
    v10 = *(v12 + 40);
    v9 = *(v12 + 48);
  }

  else
  {
    v7 = 0;
    v65 = 0;
    v64 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x8000000000000000;
    v5 = 2;
  }

  v62 = v10;
  v63 = v9;
  v14 = v8;
  v15 = v7;
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v59 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64B0;
  v54 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_uuid;
  sub_100089D58();
  sub_10008ABA8();
  sub_10008ABD8();

  v17 = sub_10008AB88();
  v19 = v18;

  *(inited + 56) = &type metadata for String;
  v20 = sub_1000536C0();
  *(inited + 64) = v20;
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  v21 = v5;
  v66 = v5;
  v67 = v15;
  v22 = v15;
  v23 = v65;
  v24 = v64;
  v68 = v65;
  v69 = v64;
  v70 = v14;
  v71 = v62;
  v72 = v63;
  v60 = v14;
  sub_10005364C(v21, v22, v65, v64, v14, v62);
  v25 = sub_10008AB58();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v20;
  *(inited + 72) = v25;
  *(inited + 80) = v26;
  v27 = sub_10008AE08();
  sub_100035474(v59, &_mh_execute_header, v27, "(CoreRE) [%{public}@] new state: %{public}@", 43, 2, inited);
  swift_setDeallocating();
  sub_10002A958(&qword_1000D8570);
  swift_arrayDestroy();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = sub_10008AD08();
    (*(*(v30 - 8) + 56))(v61, 1, 1, v30);
    v31 = v57;
    v32 = *(v57 + 16);
    v33 = v56;
    v59 = v22;
    v34 = v58;
    v32(v56, v0 + v54, v58);
    sub_10008ACE8();
    swift_unknownObjectRetain();
    v35 = sub_10008ACD8();
    v36 = *(v31 + 80);
    v64 = v24;
    v37 = (v36 + 40) & ~v36;
    v65 = v23;
    v38 = v1;
    v39 = v21;
    v40 = (v55 + v37 + 15) & 0xFFFFFFFFFFFFFFF0;
    v41 = swift_allocObject();
    *(v41 + 2) = v35;
    *(v41 + 3) = &protocol witness table for MainActor;
    *(v41 + 4) = v29;
    (*(v31 + 32))(&v41[v37], v33, v34);
    v42 = &v41[v40];
    *v42 = v39;
    v1 = v38;
    v43 = v65;
    v42[1] = v59;
    v42[2] = v43;
    v44 = v60;
    v42[3] = v64;
    v42[4] = v44;
    v45 = v63;
    v42[5] = v62;
    v42[6] = v45;
    sub_10004BA04(0, 0, v61, &unk_1000A57D8, v41);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10002C7DC(v21, v22, v23, v24, v60, v62);
  }

  v46 = v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  v47 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState);
  v48 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 8);
  v49 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 16);
  v50 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 24);
  v51 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 32);
  v52 = *(v1 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState + 40);
  *v46 = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0;
  *(v46 + 40) = xmmword_1000A95E0;
  return sub_1000536AC(v47, v48, v49, v50, v51, v52);
}

uint64_t sub_10004DA78()
{
  v1[3] = v0;
  sub_10008ACE8();
  v1[4] = sub_10008ACD8();
  v3 = sub_10008AC88();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10004DB10, v3, v2);
}

uint64_t sub_10004DB10()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_acknowledgeQueue);
  *(v0 + 56) = v1;
  swift_weakInit();

  return _swift_task_switch(sub_10004DB8C, v1, 0);
}

uint64_t sub_10004DB8C()
{
  sub_10008AD98();
  v1 = *(v0 + 56);
  v2 = sub_100053594();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_10004DCBC;
  v4 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, v2, 0xD000000000000013, 0x80000001000A2D80, sub_100048A54, v4, &type metadata for () + 8);
}

uint64_t sub_10004DCBC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_10004DEE4;
  }

  else
  {
    v4 = sub_10004DDE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004DDE8()
{
  v1 = v0[9];
  v2 = sub_10008AD98();
  if (v1)
  {
    v5 = v0[7];
    v6 = *(v5 + 120);
    v7 = __OFSUB__(v6, 1);
    v8 = v6 - 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 120) = v8;
      sub_10003F05C();
      v0[12] = v1;
      v3 = v0[5];
      v4 = v0[6];
      v2 = sub_10004E190;
    }

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_10004DF04;

    return sub_100052188(v9, (v0 + 2));
  }
}

uint64_t sub_10004DF04()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_10004E110;
  }

  else
  {
    v4 = sub_10004E030;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004E030(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = v3[7];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 120) = v8;
    sub_10003F05C();
    swift_weakDestroy();
    a2 = v3[5];
    a3 = v3[6];
    a1 = sub_10004E0B0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10004E0B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E110(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = v3[7];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 120) = v8;
    sub_10003F05C();
    v3[12] = v3[11];
    a2 = v3[5];
    a3 = v3[6];
    a1 = sub_10004E190;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10004E190()
{

  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E204(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_10008ACE8();
  v2[18] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[19] = v4;
  v2[20] = v3;

  return _swift_task_switch(sub_10004E29C, v4, v3);
}

uint64_t sub_10004E29C()
{
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64B0;
  sub_100089D58();
  sub_10008ABA8();
  sub_10008ABD8();

  v5 = sub_10008AB88();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000536C0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = sub_10003D358();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = sub_10008AE08();
  sub_100035474(v3, &_mh_execute_header, v11, "(CoreRE) [%{public}@] loadScene(%@)", 35, 2, inited);
  swift_setDeallocating();
  sub_10002A958(&qword_1000D8570);
  swift_arrayDestroy();
  v12 = swift_task_alloc();
  v0[21] = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_10004E508;

  return sub_10004FB58(v13, 0x6E65635364616F6CLL, 0xEB00000000292865, dword_1000A9A40);
}

uint64_t sub_10004E508()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10004E688;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10004E624;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10004E624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E688()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a3;
  v3[39] = a2;
  sub_10002A958(&qword_1000D6728);
  v3[63] = swift_task_alloc();
  v4 = sub_100089CD8();
  v3[75] = v4;
  v3[87] = *(v4 - 8);
  v3[99] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[135] = sub_10008ACE8();
  v3[145] = sub_10008ACD8();
  v6 = sub_10008AC88();
  v3[148] = v6;
  v3[149] = v5;

  return _swift_task_switch(sub_10004E848, v6, v5);
}

uint64_t sub_10004E848()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 600);
  if (*(*(v0 + 312) + 40))
  {
    v4 = *(v0 + 504);
    v5 = *(v0 + 408);
    type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    v3 = *(v1 + 16);
    v3(v4, v5, v2);
    (*(v1 + 56))(v4, 0, 1, v2);
    sub_100089C68();
    v6 = *(v0 + 984);
    v7 = *(v0 + 888);
    v8 = *(v0 + 696);
    v9 = *(v0 + 600);
    sub_10002E21C(*(v0 + 504), &qword_1000D6728);
    (*(v8 + 32))(v6, v7, v9);
  }

  else
  {
    v3 = *(v1 + 16);
    v3(*(v0 + 984), *(v0 + 408), *(v0 + 600));
  }

  v10 = *(v0 + 792);
  v11 = *(v0 + 696);
  v12 = *(v0 + 600);
  v13 = *(v0 + 408);
  v3(v10, *(v0 + 984), v12);
  type metadata accessor for CRLUSDRendering.LoadReceipt(0);
  v14 = swift_allocObject();
  *(v0 + 1200) = v14;
  (*(v11 + 32))(v14 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering11LoadReceipt_url, v10, v12);
  v15 = v13 + *(type metadata accessor for CRLUSDRendering.SceneRequest(0) + 20);
  *(v0 + 1368) = *v15;
  *(v0 + 1168) = *(v15 + 16);
  *(v0 + 1208) = *(v15 + 32);
  *(v0 + 1216) = *(v15 + 40);
  *(v0 + 1224) = *(v15 + 48);
  *(v0 + 1232) = *(v15 + 56);
  *(v0 + 1240) = *(v15 + 64);

  *(v0 + 1248) = sub_10008ACD8();
  v17 = sub_10008AC88();
  *(v0 + 1256) = v17;
  *(v0 + 1264) = v16;

  return _swift_task_switch(sub_10004EBB0, v17, v16);
}

uint64_t sub_10004EBB0()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 312);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1224);
  v8 = *(v5 + 64);
  *(v0 + 16) = *(v5 + 48);
  *(v0 + 32) = v8;
  v10 = *(v5 + 96);
  v9 = *(v5 + 112);
  v11 = *(v5 + 80);
  *(v0 + 96) = *(v5 + 128);
  *(v0 + 64) = v10;
  *(v0 + 80) = v9;
  *(v0 + 48) = v11;
  v12 = *(v5 + 64);
  *(v0 + 224) = *(v5 + 48);
  *(v0 + 240) = v12;
  v14 = *(v5 + 96);
  v13 = *(v5 + 112);
  v15 = *(v5 + 80);
  *(v0 + 304) = *(v5 + 128);
  *(v0 + 272) = v14;
  *(v0 + 288) = v13;
  *(v0 + 256) = v15;
  *(v5 + 48) = v4;
  *(v5 + 64) = v3;
  *(v5 + 72) = 0;
  *(v5 + 80) = v2;
  *(v5 + 96) = v6;
  *(v5 + 112) = v7;
  *(v5 + 128) = v1;

  sub_10005355C(v0 + 16, v0 + 320);
  sub_10005352C(v0 + 224);
  sub_10004D370((v0 + 16));
  sub_10005352C(v0 + 16);
  v16 = swift_task_alloc();
  *(v0 + 1272) = v16;
  *v16 = v0;
  v16[1] = sub_10004ECDC;

  return sub_10004DA78();
}

uint64_t sub_10004ECDC()
{
  v1 = *v0;

  v2 = *(v1 + 1264);
  v3 = *(v1 + 1256);

  return _swift_task_switch(sub_10004EDFC, v3, v2);
}

uint64_t sub_10004EDFC()
{

  v1 = swift_task_alloc();
  *(v0 + 1280) = v1;
  *v1 = v0;
  v1[1] = sub_10004EEA0;

  return sub_10003DC94();
}

uint64_t sub_10004EEA0(uint64_t a1)
{
  v3 = *v2;
  v3[161] = a1;
  v3[162] = v1;

  if (v1)
  {
    v4 = v3[149];
    v5 = v3[148];

    return _swift_task_switch(sub_10004F9B4, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[163] = v6;
    *v6 = v3;
    v6[1] = sub_10004F010;

    return sub_10003E660();
  }
}

uint64_t sub_10004F010(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 1312) = a1;
  *(v4 + 1372) = a2;
  *(v4 + 1320) = v2;

  v5 = *(v4 + 1192);
  v6 = *(v4 + 1184);
  if (v2)
  {
    v7 = sub_10004FA7C;
  }

  else
  {
    v7 = sub_10004F134;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004F134()
{
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000A64C0;
  sub_100089D58();
  sub_10008ABA8();
  sub_10008ABD8();

  v4 = sub_10008AB88();
  v6 = v5;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000536C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_10008AE08();
  sub_100035474(v2, &_mh_execute_header, v7, "(CoreRE) [%{public}@] loadScene(): entity loaded", 48, 2, v3);
  swift_setDeallocating();
  sub_10002E85C(v3 + 32);
  swift_deallocClassInstance();
  v8 = *(v1 + 48);
  *(v0 + 432) = *(v1 + 64);
  v9 = *(v1 + 80);
  v10 = *(v1 + 96);
  v11 = *(v1 + 112);
  *(v0 + 496) = *(v1 + 128);
  *(v0 + 464) = v10;
  *(v0 + 480) = v11;
  *(v0 + 448) = v9;
  *(v0 + 416) = v8;
  if (*(v0 + 440) >> 62)
  {

    goto LABEL_7;
  }

  v12 = *(v0 + 1200);
  v13 = *(v0 + 496);
  v14 = *(v0 + 416);
  *(v0 + 1088) = *(v0 + 432);
  v15 = *(v0 + 464);
  *(v0 + 1104) = *(v0 + 448);
  *(v0 + 1120) = v15;
  *(v0 + 1136) = *(v0 + 480);
  *(v0 + 1152) = v13;
  if (v12 != v14)
  {
    v16 = *(v0 + 312);
    v17 = *(v16 + 48);
    *(v0 + 528) = *(v16 + 64);
    v19 = *(v16 + 96);
    v18 = *(v16 + 112);
    v20 = *(v16 + 80);
    *(v0 + 592) = *(v16 + 128);
    *(v0 + 560) = v19;
    *(v0 + 576) = v18;
    *(v0 + 544) = v20;
    *(v0 + 512) = v17;
    *(v0 + 536) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_10002E1B4(v0 + 512, v0 + 608, &qword_1000D7990);

    sub_10005352C(v0 + 416);
LABEL_7:

    (*(*(v0 + 696) + 8))(*(v0 + 984), *(v0 + 600));

    v21 = *(v0 + 8);
LABEL_8:

    return v21();
  }

  v23 = *(v0 + 312);
  v24 = *(v23 + 48);
  *(v0 + 720) = *(v23 + 64);
  v26 = *(v23 + 96);
  v25 = *(v23 + 112);
  v27 = *(v23 + 80);
  *(v0 + 784) = *(v23 + 128);
  *(v0 + 752) = v26;
  *(v0 + 768) = v25;
  *(v0 + 736) = v27;
  *(v0 + 704) = v24;
  *(v0 + 728) &= 0x3FFFFFFFFFFFFFFFuLL;
  sub_10002E1B4(v0 + 704, v0 + 800, &qword_1000D7990);
  if (qword_1000D6250 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1320);
  v29 = sub_10006021C(*(v0 + 312), *(v0 + 1288), *(v0 + 1312), *(v0 + 1372) & 1, v0 + 1088);
  *(v0 + 1328) = v29;
  if (v28)
  {
    (*(*(v0 + 696) + 8))(*(v0 + 984), *(v0 + 600));

    sub_10005352C(v0 + 416);

    v21 = *(v0 + 8);
    goto LABEL_8;
  }

  *(v29 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_loadReceipt) = *(v0 + 1200);

  *(v0 + 1336) = sub_10008ACD8();
  v31 = sub_10008AC88();
  *(v0 + 1344) = v31;
  *(v0 + 1352) = v30;

  return _swift_task_switch(sub_10004F62C, v31, v30);
}

uint64_t sub_10004F62C()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 312);
  v3 = *(v2 + 64);
  *(v0 + 128) = *(v2 + 48);
  *(v0 + 144) = v3;
  v5 = *(v2 + 96);
  v4 = *(v2 + 112);
  v6 = *(v2 + 80);
  *(v0 + 208) = *(v2 + 128);
  *(v0 + 176) = v5;
  *(v0 + 192) = v4;
  *(v0 + 160) = v6;
  v7 = *(v2 + 64);
  *(v0 + 896) = *(v2 + 48);
  *(v0 + 912) = v7;
  v9 = *(v2 + 96);
  v8 = *(v2 + 112);
  v10 = *(v2 + 80);
  *(v0 + 976) = *(v2 + 128);
  *(v0 + 944) = v9;
  *(v0 + 960) = v8;
  *(v0 + 928) = v10;
  *(v2 + 48) = v1;
  *(v2 + 64) = xmmword_1000A95F0;

  sub_10005355C(v0 + 128, v0 + 992);
  sub_10005352C(v0 + 896);
  sub_10004D370((v0 + 128));
  sub_10005352C(v0 + 128);
  v11 = swift_task_alloc();
  *(v0 + 1360) = v11;
  *v11 = v0;
  v11[1] = sub_10004F73C;

  return sub_10004DA78();
}

uint64_t sub_10004F73C()
{
  v1 = *v0;

  v2 = *(v1 + 1352);
  v3 = *(v1 + 1344);

  return _swift_task_switch(sub_10004F85C, v3, v2);
}

uint64_t sub_10004F85C()
{

  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);

  return _swift_task_switch(sub_10004F8D0, v2, v1);
}

uint64_t sub_10004F8D0()
{

  sub_10005352C((v0 + 52));

  (*(v0[87] + 8))(v0[123], v0[75]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10004F9B4()
{
  v1 = v0[123];
  v2 = v0[87];
  v3 = v0[75];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004FA7C()
{
  v1 = v0[123];
  v2 = v0[87];
  v3 = v0[75];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004FB58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5[71] = v4;
  v5[70] = a3;
  v5[69] = a2;
  v5[72] = sub_10008ACE8();
  v5[73] = sub_10008ACD8();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v5[74] = v8;
  *v8 = v5;
  v8[1] = sub_10004FC84;

  return v10(a1);
}

uint64_t sub_10004FC84()
{
  *(*v1 + 600) = v0;

  v3 = sub_10008AC88();
  if (v0)
  {
    v4 = sub_10004FE40;
  }

  else
  {
    v4 = sub_10004FDDC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10004FDDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004FE40()
{

  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = static OS_os_log.crlThreeDimensionalObjects;
  sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64A0;
  sub_100089D58();
  sub_10008ABA8();
  sub_10008ABD8();

  v4 = sub_10008AB88();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  v7 = sub_1000536C0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v26;
  *(inited + 80) = v2;
  swift_getErrorValue();

  v8 = sub_10008B208();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = sub_10008AE18();
  sub_100035474(v27, &_mh_execute_header, v10, "(CoreRE) [%{public}@] %{public}@ error: %{public}@", 50, 2, inited);
  swift_setDeallocating();
  sub_10002A958(&qword_1000D8570);
  swift_arrayDestroy();
  *(v0 + 528) = v1;
  swift_errorRetain();
  sub_10002A958(&qword_1000D7998);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 480);
    v12 = *(v0 + 488);
    v13 = *(v0 + 496);
  }

  else
  {
    *(v0 + 536) = *(v0 + 600);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 504);
      v12 = *(v0 + 512);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = sub_10008B208();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(v0 + 568);
  v16 = *(v15 + 64);
  *(v0 + 16) = *(v15 + 48);
  *(v0 + 32) = v16;
  v18 = *(v15 + 96);
  v17 = *(v15 + 112);
  v19 = *(v15 + 80);
  *(v0 + 96) = *(v15 + 128);
  *(v0 + 64) = v18;
  *(v0 + 80) = v17;
  *(v0 + 48) = v19;
  v20 = *(v15 + 64);
  *(v0 + 256) = *(v15 + 48);
  *(v0 + 272) = v20;
  v22 = *(v15 + 96);
  v21 = *(v15 + 112);
  v23 = *(v15 + 80);
  *(v0 + 336) = *(v15 + 128);
  *(v0 + 304) = v22;
  *(v0 + 320) = v21;
  *(v0 + 288) = v23;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 72) = 0x8000000000000000;
  sub_1000535EC(v11, v12, v13);
  sub_1000535EC(v11, v12, v13);
  sub_10005355C(v0 + 16, v0 + 368);
  sub_10005352C(v0 + 256);
  sub_10004D370((v0 + 16));
  sub_10005352C(v0 + 16);
  sub_10002C83C(v11, v12, v13);
  sub_10004D44C();
  sub_10002C83C(v11, v12, v13);
  swift_willThrow();
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000501F0(uint64_t a1)
{
  *(v2 + 200) = v1;
  *(v2 + 952) = *a1;
  v3 = *(a1 + 40);
  *(v2 + 296) = *(a1 + 32);
  *(v2 + 392) = v3;
  v4 = *(a1 + 56);
  *(v2 + 488) = *(a1 + 48);
  *(v2 + 104) = a1;
  *(v2 + 880) = *(a1 + 16);
  *(v2 + 584) = v4;
  *(v2 + 680) = *(a1 + 64);
  *(v2 + 776) = sub_10008ACE8();
  *(v2 + 872) = sub_10008ACD8();
  v6 = sub_10008AC88();
  *(v2 + 896) = v6;
  *(v2 + 904) = v5;

  return _swift_task_switch(sub_1000502C4, v6, v5);
}

uint64_t sub_1000502C4()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v2;
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v5 = *(v1 + 112);
  *(v0 + 96) = *(v1 + 128);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 16);
  *(v0 + 912) = v6;
  v7 = *(v0 + 40) >> 62;
  if (v7 == 1)
  {
    v14 = *(v0 + 104);

    v15 = v6 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_configuration;
    *v15 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    v18 = *(v14 + 48);
    *(v15 + 64) = *(v14 + 64);
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    *(v15 + 16) = v16;
    sub_10005352C(v0 + 16);
  }

  else
  {
    if (!v7)
    {
      v8 = *(v1 + 64);
      *(v0 + 304) = *(v1 + 48);
      *(v0 + 320) = v8;
      v9 = *(v1 + 80);
      v10 = *(v1 + 96);
      v11 = *(v1 + 112);
      *(v0 + 384) = *(v1 + 128);
      *(v0 + 352) = v10;
      *(v0 + 368) = v11;
      *(v0 + 336) = v9;
      *(v0 + 328) &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_10005355C(v0 + 16, v0 + 400);
      sub_10005355C(v0 + 16, v0 + 496);
      sub_10002E1B4(v0 + 304, v0 + 592, &qword_1000D7990);
      *(v0 + 920) = sub_10008ACD8();
      v13 = sub_10008AC88();
      *(v0 + 928) = v13;
      *(v0 + 936) = v12;

      return _swift_task_switch(sub_100050490, v13, v12);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100050490()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 680);
  v3 = *(v0 + 584);
  v4 = *(v0 + 488);
  v5 = *(v0 + 392);
  v6 = *(v0 + 296);
  v7 = *(v0 + 880);
  v8 = *(v0 + 952);
  v9 = *(v0 + 200);
  v10 = *(v9 + 64);
  *(v0 + 112) = *(v9 + 48);
  *(v0 + 128) = v10;
  v12 = *(v9 + 96);
  v11 = *(v9 + 112);
  v13 = *(v9 + 80);
  *(v0 + 192) = *(v9 + 128);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;
  v15 = *(v9 + 96);
  v14 = *(v9 + 112);
  v16 = *(v9 + 80);
  *(v0 + 288) = *(v9 + 128);
  *(v0 + 256) = v15;
  *(v0 + 272) = v14;
  *(v0 + 240) = v16;
  v17 = *(v9 + 64);
  *(v0 + 208) = *(v9 + 48);
  *(v0 + 224) = v17;
  *(v9 + 48) = v1;
  *(v9 + 64) = v8;
  *(v9 + 72) = 0;
  *(v9 + 80) = v7;
  *(v9 + 96) = v6;
  *(v9 + 104) = v5;
  *(v9 + 112) = v4;
  *(v9 + 120) = v3;
  *(v9 + 128) = v2;
  sub_10005355C(v0 + 16, v0 + 688);
  sub_10005355C(v0 + 112, v0 + 784);
  sub_10005352C(v0 + 208);
  sub_10004D370((v0 + 112));
  sub_10005352C(v0 + 112);
  v18 = swift_task_alloc();
  *(v0 + 944) = v18;
  *v18 = v0;
  v18[1] = sub_1000505D0;

  return sub_10004DA78();
}

uint64_t sub_1000505D0()
{
  v1 = *v0;

  v2 = *(v1 + 936);
  v3 = *(v1 + 928);

  return _swift_task_switch(sub_1000506F0, v3, v2);
}

uint64_t sub_1000506F0()
{

  sub_10005352C(v0 + 16);
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);

  return _swift_task_switch(sub_100050760, v2, v1);
}

uint64_t sub_100050760()
{

  sub_10005352C(v0 + 16);
  sub_10005352C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000507D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008ACE8();
  v2[4] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_10005086C, v4, v3);
}

uint64_t sub_10005086C()
{
  v1 = v0[3];
  v0[7] = v1[6];
  v0[8] = v1[7];
  v0[9] = v1[8];
  v2 = v1[9];
  v0[10] = v2;
  v0[11] = v1[10];
  v0[12] = v1[11];
  v0[13] = v1[12];
  v0[14] = v1[13];
  v0[15] = v1[14];
  v0[16] = v1[15];
  v0[17] = v1[16];
  if (v2 >> 62 == 1 && (v3 = v0[2], v4 = *(v3 + 16), (v0[18] = v4) != 0))
  {
    v0[19] = 0;
    v5 = *(v3 + 40);

    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v13 = swift_task_alloc();
        v0[24] = v13;
        *v13 = v0;
        v13[1] = sub_100051020;

        return sub_10005AF34();
      }

      else
      {
        if (v5 != 5)
        {
LABEL_17:
          v10 = *(v3 + 32);
          v11 = swift_task_alloc();
          v0[20] = v11;
          *v11 = v0;
          v11[1] = sub_100050BA0;

          return sub_100059C5C(v5 & 1, v10);
        }

        v9 = swift_task_alloc();
        v0[23] = v9;
        *v9 = v0;
        v9[1] = sub_100050F00;

        return sub_10005A994();
      }
    }

    else
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v6 = swift_task_alloc();
          v0[22] = v6;
          *v6 = v0;
          v6[1] = sub_100050DE0;

          return sub_10005A640();
        }

        goto LABEL_17;
      }

      v12 = swift_task_alloc();
      v0[21] = v12;
      *v12 = v0;
      v12[1] = sub_100050CC0;

      return sub_10005A28C();
    }
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100050BA0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100054380, v3, v2);
}

uint64_t sub_100050CC0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100054380, v3, v2);
}

uint64_t sub_100050DE0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100054380, v3, v2);
}

uint64_t sub_100050F00()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100054380, v3, v2);
}

uint64_t sub_100051020()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100051140, v3, v2);
}

uint64_t sub_100051140()
{
  v1 = v0[19] + 1;
  if (v1 == v0[18])
  {
    v3 = v0[9];
    v2 = v0[10];
    v5 = v0[7];
    v4 = v0[8];

    sub_10005350C(v5, v4, v3, v2);
    v6 = v0[1];

    return v6();
  }

  v0[19] = v1;
  v8 = v0[2] + 16 * v1;
  v9 = *(v8 + 40);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v15[1] = sub_100051020;

      return sub_10005AF34();
    }

    else
    {
      if (v9 != 5)
      {
LABEL_16:
        v12 = *(v8 + 32);
        v13 = swift_task_alloc();
        v0[20] = v13;
        *v13 = v0;
        v13[1] = sub_100050BA0;

        return sub_100059C5C(v9 & 1, v12);
      }

      v11 = swift_task_alloc();
      v0[23] = v11;
      *v11 = v0;
      v11[1] = sub_100050F00;

      return sub_10005A994();
    }
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v10 = swift_task_alloc();
        v0[22] = v10;
        *v10 = v0;
        v10[1] = sub_100050DE0;

        return sub_10005A640();
      }

      goto LABEL_16;
    }

    v14 = swift_task_alloc();
    v0[21] = v14;
    *v14 = v0;
    v14[1] = sub_100050CC0;

    return sub_10005A28C();
  }
}

uint64_t sub_1000514CC(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 168) = a1;
  sub_10008ACE8();
  *(v2 + 24) = sub_10008ACD8();
  v4 = sub_10008AC88();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_100051568, v4, v3);
}

uint64_t sub_100051568()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = v1[6];
  *(v0 + 56) = v1[7];
  *(v0 + 64) = v1[8];
  v2 = v1[9];
  *(v0 + 72) = v2;
  *(v0 + 80) = v1[10];
  *(v0 + 88) = v1[11];
  *(v0 + 96) = v1[12];
  *(v0 + 104) = v1[13];
  *(v0 + 112) = v1[14];
  *(v0 + 120) = v1[15];
  *(v0 + 128) = v1[16];
  if (v2 >> 62 == 1)
  {

    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_1000516B4;
    v4 = *(v0 + 168);

    return sub_10005B170(v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0, 0, 1);
  }
}

uint64_t sub_1000516B4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 144) = v3;

  if (v3)
  {
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_1000518CC;
  }

  else
  {
    *(v8 + 172) = a3;
    *(v8 + 152) = a2;
    *(v8 + 160) = a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_1000517F0;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000517F0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_10005350C(v4, v3, v2, v1);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 8);
  v8 = *(v0 + 172) & 1;

  return v7(v5, v6, v8);
}

uint64_t sub_1000518CC()
{
  sub_10005350C(v0[6], v0[7], v0[8], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100051958(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = [a1 device];
  v14 = *(v4 + 32);
  if (v14)
  {
    v34 = a4;
    v15 = v14;
    v16 = [v15 device];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 registryID];
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
    }

    v33 = v12;
    v35 = v5;
    v19 = [v13 registryID];
    if (v17)
    {
      v20 = v18 == v19;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      [v15 setDevice:v13];
    }

    v21 = &v15[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData];
    v22 = *&v15[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData];
    v23 = *&v15[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData + 8];
    v24 = *&v15[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData + 16];
    v25 = *&v15[OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10MetalLayer_textureData + 24];
    *v21 = a1;
    *(v21 + 1) = a2;
    a4 = v34;
    *(v21 + 2) = a3;
    *(v21 + 3) = a4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26 = a4;
    sub_100053FE0(v22, v23, v24, v25);
    sub_1000792C0();

    v5 = v35;
    v12 = v33;
  }

  v27 = sub_10008AD08();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  sub_10008ACE8();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = a4;
  v29 = sub_10008ACD8();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v5;
  v30[5] = a1;
  v30[6] = a2;
  v30[7] = a3;
  v30[8] = v28;
  sub_10004BD04(0, 0, v12, &unk_1000A9A58, v30);
  swift_unknownObjectRelease();
}

uint64_t sub_100051BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v8[8] = sub_10008ACE8();
  v8[9] = sub_10008ACD8();
  v10 = sub_10008AC88();
  v8[10] = v10;
  v8[11] = v9;

  return _swift_task_switch(sub_100051C98, v10, v9);
}

uint64_t sub_100051C98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    *(v0 + 104) = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_uuid;
    *(v0 + 112) = sub_10008ACD8();
    v3 = sub_10008AC88();
    *(v0 + 120) = v3;
    *(v0 + 128) = v2;

    return _swift_task_switch(sub_100051D88, v3, v2);
  }

  else
  {

    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100051D88()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24) + *(v0 + 104);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_100051E90;

  return sub_100020218(0xD00000000000002CLL, 0x80000001000A1F00, sub_10002C120, v3);
}

uint64_t sub_100051E90()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1000520AC;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_100051FD4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100051FD4()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100052044, v1, v2);
}

uint64_t sub_100052044()
{

  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000520AC()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_10005211C, v1, v2);
}

uint64_t sub_10005211C()
{

  **(v0 + 16) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100052188(uint64_t a1, uint64_t a2)
{
  v2[88] = a2;
  v2[89] = sub_10008ACE8();
  v2[90] = sub_10008ACD8();
  v4 = sub_10008AC88();
  v2[91] = v4;
  v2[92] = v3;

  return _swift_task_switch(sub_100052228, v4, v3);
}

uint64_t sub_100052228()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 744) = Strong;
  if (!Strong)
  {
LABEL_21:

    goto LABEL_22;
  }

  v2 = *(Strong + 48);
  v3 = *(Strong + 72) >> 62;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = *(Strong + 64);
      v4 = *(Strong + 56);
      v10 = Strong;
      sub_1000535EC(*(Strong + 48), v4, v5);
      Strong = v10;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0x4000000000000000;
    }

    else
    {
      v2 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0x8000000000000000;
    }
  }

  else if (v3)
  {
    v11 = v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
    v2 = *(v2 + OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
    v4 = *(v11 + 8);
    v5 = *(v11 + 16);
    v6 = *(v11 + 24);
    v12 = *(v11 + 32);
    v9 = *(v11 + 40);
    v13 = *(v11 + 48);
    v14 = Strong;

    v8 = v13;
    v7 = v12;
    Strong = v14;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0x8000000000000000;
    v2 = 2;
  }

  *(v0 + 800) = v8;
  *(v0 + 792) = v9;
  *(v0 + 784) = v7;
  *(v0 + 776) = v6;
  *(v0 + 768) = v5;
  *(v0 + 760) = v4;
  *(v0 + 752) = v2;
  *(v0 + 544) = v2;
  *(v0 + 552) = v4;
  *(v0 + 560) = v5;
  *(v0 + 568) = v6;
  *(v0 + 576) = v7;
  *(v0 + 584) = v9;
  *(v0 + 592) = v8;
  v15 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  *(v0 + 808) = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_lastSentAcknowledgedRenderState;
  v16 = (Strong + v15);
  v18 = *v16;
  v17 = v16[1];
  v20 = v16[2];
  v19 = v16[3];
  v21 = v16[4];
  v22 = v16[5];
  v23 = v16[6];
  v56 = v2;
  v55 = v7;
  v61 = v9;
  v57 = (v0 + 544);
  v58 = v19;
  v59 = v20;
  v54 = v17;
  if (v22 >> 1 == 0xFFFFFFFF)
  {
    v52 = v21;
    sub_10005364C(v2, v4, v5, v6, v7, v9);
    sub_10005364C(v2, v4, v5, v6, v7, v9);
    sub_1000536AC(v2, v4, v5, v6, v7, v9);
    sub_1000536AC(v18, v54, v59, v58, v52, v22);
    v24 = v5;
LABEL_14:
    v26 = v4;
    if (qword_1000D6128 != -1)
    {
      swift_once();
    }

    v60 = static OS_os_log.crlThreeDimensionalObjects;
    *(v0 + 816) = static OS_os_log.crlThreeDimensionalObjects;
    *(v0 + 824) = sub_10002A958(&qword_1000D6C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A64B0;
    *(v0 + 832) = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_uuid;
    sub_100089D58();
    sub_10008ABA8();
    sub_10008ABD8();

    v28 = sub_10008AB88();
    v30 = v29;

    *(inited + 56) = &type metadata for String;
    v31 = sub_1000536C0();
    *(v0 + 840) = v31;
    *(inited + 64) = v31;
    *(inited + 32) = v28;
    *(inited + 40) = v30;
    v32 = *(v0 + 560);
    *(v0 + 624) = *v57;
    *(v0 + 640) = v32;
    *(v0 + 656) = *(v0 + 576);
    *(v0 + 672) = *(v0 + 592);
    sub_10005364C(v56, v26, v24, v6, v55, v61);
    v33 = sub_10008AB58();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v31;
    *(inited + 72) = v33;
    *(inited + 80) = v34;
    v35 = sub_10008AE08();
    sub_100035474(v60, &_mh_execute_header, v35, "(CoreRE) [%{public}@] new state (with acknowledge): %{public}@", 62, 2, inited);
    swift_setDeallocating();
    *(v0 + 848) = sub_10002A958(&qword_1000D8570);
    swift_arrayDestroy();
    v36 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 856) = v36;
    if (v36)
    {
      *(v0 + 864) = sub_10008ACD8();
      v38 = sub_10008AC88();
      *(v0 + 872) = v38;
      *(v0 + 880) = v37;

      return _swift_task_switch(sub_1000528D8, v38, v37);
    }

    sub_10002C7DC(v56, v26, v24, v6, v55, v61);

    v39 = *(v0 + 800);
    v40 = (*(v0 + 744) + *(v0 + 808));
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[2];
    v44 = v40[3];
    v45 = v40[4];
    v46 = v40[5];
    v47 = *(v0 + 768);
    v48 = *(v0 + 784);
    *v40 = *(v0 + 752);
    *(v40 + 1) = v47;
    *(v40 + 2) = v48;
    v40[6] = v39;
    sub_1000536AC(v41, v42, v43, v44, v45, v46);
    goto LABEL_21;
  }

  *(v0 + 464) = v18;
  *(v0 + 472) = v17;
  *(v0 + 480) = v20;
  *(v0 + 488) = v19;
  *(v0 + 496) = v21;
  *(v0 + 504) = v22;
  *(v0 + 512) = v23;
  v53 = v22;
  v25 = v21;
  sub_10005364C(v2, v4, v5, v6, v7, v9);
  sub_10005364C(v2, v4, v5, v6, v7, v9);
  sub_100053C04(v18, v54, v59, v58, v25, v53);
  v51 = sub_100041460(v57, v0 + 464);
  sub_1000536AC(v18, v54, v59, v58, v25, v53);
  sub_10002C7DC(v2, v4, v5, v6, v7, v9);
  v24 = v5;
  if ((v51 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10002C7DC(v2, v4, v5, v6, v7, v9);

  sub_10002C7DC(v2, v4, v5, v6, v7, v9);
LABEL_22:
  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1000528D8()
{
  v1 = v0[107];
  v2 = v0[93] + v0[104];
  v3 = swift_task_alloc();
  v0[111] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 68;
  v4 = swift_task_alloc();
  v0[112] = v4;
  *v4 = v0;
  v4[1] = sub_1000529E8;

  return sub_100020218(0xD00000000000002DLL, 0x80000001000A1F30, sub_10002C420, v3);
}

uint64_t sub_1000529E8()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *(*v1 + 784);
  v5 = *(*v1 + 776);
  v6 = *(*v1 + 768);
  v7 = *(*v1 + 760);
  v8 = *(*v1 + 752);
  *(*v1 + 904) = v0;

  sub_10002C7DC(v8, v7, v6, v5, v4, v3);
  if (v0)
  {
    sub_10002C7DC(v2[94], v2[95], v2[96], v2[97], v2[98], v2[99]);

    v9 = v2[110];
    v10 = v2[109];
    v11 = sub_100052D34;
  }

  else
  {

    v9 = v2[110];
    v10 = v2[109];
    v11 = sub_100052C1C;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100052C1C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);

  return _swift_task_switch(sub_100052C90, v2, v1);
}

uint64_t sub_100052C90()
{

  v1 = *(v0 + 800);
  v2 = (*(v0 + 744) + *(v0 + 808));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(v0 + 768);
  v10 = *(v0 + 784);
  *v2 = *(v0 + 752);
  *(v2 + 1) = v9;
  *(v2 + 2) = v10;
  v2[6] = v1;
  sub_1000536AC(v3, v4, v5, v6, v7, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100052D34()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);

  return _swift_task_switch(sub_100052DA8, v2, v1);
}

uint64_t sub_100052DA8()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 840);
  v3 = *(v0 + 816);

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000A64B0;
  sub_100089D58();
  sub_10008ABA8();
  sub_10008ABD8();

  v5 = sub_10008AB88();
  v7 = v6;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = v2;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_getErrorValue();
  v8 = sub_10008B208();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v2;
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  v10 = sub_10008AE08();
  sub_100035474(v3, &_mh_execute_header, v10, "(CoreRE) [%{public}@] error sending state: %{public}@", 53, 2, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v0 + 680) = v1;
  swift_errorRetain();
  sub_10002A958(&qword_1000D7998);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 520);
    v12 = *(v0 + 528);
    v13 = *(v0 + 536);
  }

  else
  {
    *(v0 + 688) = *(v0 + 904);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 600);
      v12 = *(v0 + 608);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = sub_10008B208();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(v0 + 744);
  v16 = *(v15 + 64);
  *(v0 + 16) = *(v15 + 48);
  *(v0 + 32) = v16;
  v18 = *(v15 + 96);
  v17 = *(v15 + 112);
  v19 = *(v15 + 80);
  *(v0 + 96) = *(v15 + 128);
  *(v0 + 64) = v18;
  *(v0 + 80) = v17;
  *(v0 + 48) = v19;
  v20 = *(v15 + 64);
  *(v0 + 240) = *(v15 + 48);
  *(v0 + 256) = v20;
  v22 = *(v15 + 96);
  v21 = *(v15 + 112);
  v23 = *(v15 + 80);
  *(v0 + 320) = *(v15 + 128);
  *(v0 + 288) = v22;
  *(v0 + 304) = v21;
  *(v0 + 272) = v23;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 72) = 0x8000000000000000;
  sub_1000535EC(v11, v12, v13);
  sub_1000535EC(v11, v12, v13);
  sub_10005355C(v0 + 16, v0 + 352);
  sub_10005352C(v0 + 240);
  sub_10004D370((v0 + 16));
  sub_10005352C(v0 + 16);
  sub_10002C83C(v11, v12, v13);
  sub_10004D44C();
  sub_10002C83C(v11, v12, v13);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000530F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO20USDRendererExtension15CRLUSDRendering6CoreRE10RepBackend_uuid;
  v4 = sub_100089DA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100053170(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F13C;

  return sub_10004E204(a1);
}

uint64_t sub_100053204(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027728;

  return sub_1000501F0(a1);
}

uint64_t sub_100053298(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F13C;

  return sub_1000507D4(a1);
}

uint64_t sub_10005332C(float a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000533C0;

  return sub_1000514CC(a1);
}

uint64_t sub_1000533C0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v11 = *(v8 + 8);

    return v11(a1, a2, a3 & 1);
  }
}

uint64_t sub_10005350C(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  if ((a4 >> 62) <= 1)
  {
  }

  if (a4 >> 62 == 2)
  {
    return sub_10002C83C(result, a2, a3);
  }

  return result;
}

unint64_t sub_100053594()
{
  result = qword_1000D7348;
  if (!qword_1000D7348)
  {
    type metadata accessor for CRLUSDRendering.TaskQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7348);
  }

  return result;
}

uint64_t sub_1000535EC(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
    return sub_100053638(result, a2);
  }

  if (a3 == 5)
  {
  }

  return result;
}

uint64_t sub_100053638(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10005364C(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 62 == 1)
  {

    return sub_1000535EC(result, a2, a3);
  }

  else if (!(a6 >> 62))
  {
  }

  return result;
}

uint64_t sub_1000536AC(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {
    return sub_10002C7DC(result, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t sub_1000536C0()
{
  result = qword_1000D8540;
  if (!qword_1000D8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8540);
  }

  return result;
}

uint64_t sub_100053714(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100054378;

  return v6(a1);
}

uint64_t sub_10005380C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100053904;

  return v6(a1);
}

uint64_t sub_100053904()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000539FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100053AF0;

  return v5(v2 + 32);
}

uint64_t sub_100053AF0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100053C04(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {
    return sub_10005364C(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_100053C18()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10002C7DC(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));

  return _swift_deallocObject(v0, v5 + 56, v3 | 0xF);
}

uint64_t sub_100053D08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053D40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F13C;

  return sub_100053714(a1, v4);
}

uint64_t sub_100053DF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027728;

  return sub_10004E6F8(a1, v5, v4);
}

uint64_t sub_100053EA4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100053F04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F13C;

  return sub_100051BF4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100053FE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100054040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F13C;

  return sub_1000539FC(a1, v4);
}

uint64_t sub_1000540F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100054138()
{
  result = qword_1000D79B0;
  if (!qword_1000D79B0)
  {
    sub_10002AD9C(&qword_1000D79A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D79B0);
  }

  return result;
}

uint64_t sub_10005419C(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  if ((a4 >> 62) <= 1)
  {
  }

  if (a4 >> 62 == 2)
  {
    return sub_1000535EC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000541C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F13C;

  return sub_10004C70C();
}

uint64_t sub_100054274()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000542B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F13C;

  return sub_10004CBF8(a1, v4, v5, v6);
}

uint64_t sub_100054384(uint64_t a1)
{
  v2[96] = v1;
  v2[95] = a1;
  sub_10002A958(&qword_1000D6728);
  v2[97] = swift_task_alloc();
  v3 = sub_100089CD8();
  v2[98] = v3;
  v2[99] = *(v3 - 8);
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  sub_10008ACE8();
  v2[103] = sub_10008ACD8();
  v5 = sub_10008AC88();
  v2[104] = v5;
  v2[105] = v4;

  return _swift_task_switch(sub_1000544D0, v5, v4);
}

uint64_t sub_1000544D0()
{
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 768);
  v2 = static OS_os_log.crlThreeDimensionalObjects;
  *(v0 + 848) = static OS_os_log.crlThreeDimensionalObjects;
  *(v0 + 856) = sub_10002A958(&qword_1000D6C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  v4 = sub_10003D358();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000536C0();
  *(v0 + 864) = v7;
  *(inited + 64) = v7;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v8 = sub_10008AE08();
  sub_100035474(v2, &_mh_execute_header, v8, "(ARViewBackend) loadScene(%@)", 29, 2, inited);
  swift_setDeallocating();
  sub_10002E85C(inited + 32);
  v9 = *(v0 + 792);
  v10 = *(v0 + 784);
  if (*(v1 + 32))
  {
    v12 = *(v0 + 776);
    v13 = *(v0 + 760);
    type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    v11 = *(v9 + 16);
    v11(v12, v13, v10);
    (*(v9 + 56))(v12, 0, 1, v10);
    sub_100089C68();
    v14 = *(v0 + 816);
    v15 = *(v0 + 808);
    v16 = *(v0 + 792);
    v17 = *(v0 + 784);
    sub_10002E21C(*(v0 + 776), &qword_1000D6728);
    (*(v16 + 32))(v14, v15, v17);
  }

  else
  {
    v11 = *(v9 + 16);
    v11(*(v0 + 816), *(v0 + 760), *(v0 + 784));
  }

  v18 = *(v0 + 800);
  v19 = *(v0 + 792);
  v20 = *(v0 + 784);
  v21 = *(v0 + 768);
  v22 = *(v0 + 760);
  v11(v18, *(v0 + 816), v20);
  type metadata accessor for CRLUSDRendering.LoadReceipt(0);
  v23 = swift_allocObject();
  *(v0 + 872) = v23;
  (*(v19 + 32))(v23 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering11LoadReceipt_url, v18, v20);
  v24 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  *(v0 + 880) = v24;
  v25 = (v22 + *(v24 + 20));
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 1);
  v29 = *(v25 + 2);
  v30 = *(v25 + 3);
  v32 = *(v21 + 96);
  v31 = *(v21 + 112);
  v33 = *(v21 + 80);
  *(v0 + 96) = *(v21 + 128);
  *(v0 + 64) = v32;
  *(v0 + 80) = v31;
  *(v0 + 48) = v33;
  v34 = *(v21 + 64);
  *(v0 + 16) = *(v21 + 48);
  *(v0 + 32) = v34;
  *(v21 + 48) = v23;
  *(v21 + 64) = v26;
  *(v21 + 72) = 0;
  *(v21 + 80) = v28;
  *(v21 + 96) = v29;
  *(v21 + 112) = v30;
  *(v21 + 128) = v27;
  swift_retain_n();
  sub_1000595C8(v0 + 16);
  sub_100055AEC();

  v35 = swift_task_alloc();
  *(v0 + 888) = v35;
  *v35 = v0;
  v35[1] = sub_100054B18;

  return sub_10003DC94();
}

uint64_t sub_100054B18(uint64_t a1)
{
  v3 = *v2;
  v3[112] = a1;
  v3[113] = v1;

  v4 = v3[105];
  v5 = v3[104];
  if (v1)
  {
    v6 = sub_100054F7C;
  }

  else
  {
    v6 = sub_100054C38;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100054C38()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 768);

  v3 = sub_10008AE08();
  sub_100035474(v1, &_mh_execute_header, v3, "(ARViewBackend) loadScene(): entity loaded", 42, 2, _swiftEmptyArrayStorage);
  v4 = *(v2 + 64);
  *(v0 + 288) = *(v2 + 48);
  *(v0 + 304) = v4;
  v5 = *(v2 + 80);
  v6 = *(v2 + 96);
  v7 = *(v2 + 112);
  *(v0 + 368) = *(v2 + 128);
  *(v0 + 336) = v6;
  *(v0 + 352) = v7;
  *(v0 + 320) = v5;
  v8 = *(v0 + 872);
  if (!(*(v0 + 312) >> 62) && (v9 = *(v0 + 368), v10 = *(v0 + 288), *(v0 + 624) = *(v0 + 304), v11 = *(v0 + 336), *(v0 + 640) = *(v0 + 320), *(v0 + 656) = v11, *(v0 + 672) = *(v0 + 352), *(v0 + 688) = v9, v8 == v10))
  {
    v17 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 816);
    v18 = *(v0 + 768);
    v19 = (*(v0 + 760) + *(*(v0 + 880) + 24));
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    _s13ARViewBackendC17ARViewCoordinatorCMa();
    swift_allocObject();
    sub_1000595F8(v0 + 288, v0 + 512);

    v25 = sub_100058254(v24, v0 + 624, v20, v21, v22, v23);
    *(v0 + 744) = *(v25 + 168);
    swift_allocObject();
    swift_weakInit();

    sub_10002A958(&qword_1000D7CE0);
    sub_1000596E0();
    sub_10008AA08();

    sub_10008A988();

    v26 = *(v18 + 64);
    *(v0 + 400) = *(v18 + 48);
    *(v0 + 416) = v26;
    v28 = *(v18 + 96);
    v27 = *(v18 + 112);
    v29 = *(v18 + 80);
    *(v0 + 480) = *(v18 + 128);
    *(v0 + 448) = v28;
    *(v0 + 464) = v27;
    *(v0 + 432) = v29;
    *(v18 + 48) = v8;
    *(v18 + 56) = v25;
    *(v18 + 64) = &_swiftEmptySetSingleton;
    *(v18 + 72) = 0x4000000000000000;
    swift_retain_n();
    swift_retain_n();

    sub_1000595C8(v0 + 400);
    sub_100055AEC();

    sub_1000595C8(v0 + 288);

    (*(v17 + 8))(v31, v30);
  }

  else
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 792);
    v14 = *(v0 + 784);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100054F7C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 904);
  v5 = *(v0 + 864);
  v6 = *(v0 + 848);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000A64C0;
  swift_getErrorValue();
  v8 = sub_10008B208();
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = v5;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  v10 = sub_10008AE18();
  sub_100035474(v6, &_mh_execute_header, v10, "(ARViewBackend) loadScene() error: %{public}@", 45, 2, v7);
  swift_setDeallocating();
  sub_10002E85C(v7 + 32);
  swift_deallocClassInstance();
  *(v0 + 720) = v4;
  swift_errorRetain();
  sub_10002A958(&qword_1000D7998);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 600);
    v12 = *(v0 + 608);
    v13 = *(v0 + 616);
  }

  else
  {
    *(v0 + 728) = v4;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 696);
      v12 = *(v0 + 704);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = sub_10008B208();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(v0 + 768);
  v16 = *(v15 + 64);
  *(v0 + 176) = *(v15 + 48);
  *(v0 + 192) = v16;
  v18 = *(v15 + 96);
  v17 = *(v15 + 112);
  v19 = *(v15 + 80);
  *(v0 + 256) = *(v15 + 128);
  *(v0 + 224) = v18;
  *(v0 + 240) = v17;
  *(v0 + 208) = v19;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 72) = 0x8000000000000000;
  sub_1000535EC(v11, v12, v13);
  sub_1000595C8(v0 + 176);
  sub_100055AEC();
  sub_10002C83C(v11, v12, v13);
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100055230()
{
  v0 = sub_100089DA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v10 = Strong;
    v11 = *(v8 + 64);
    v42 = *(v8 + 48);
    v43 = v11;
    v12 = *(v8 + 96);
    v44 = *(v8 + 80);
    v45 = v12;
    v46 = *(v8 + 112);
    v47 = *(v8 + 128);
    v13 = *(&v42 + 1);
    v14 = *(&v43 + 1) >> 62;
    if ((*(&v43 + 1) >> 62) > 1)
    {
      if (v14 == 2)
      {
        v33 = v42;
        v34 = v43;
        sub_1000535EC(v42, *(&v42 + 1), v43);
        v32 = 0;
        v31 = 0;
        v30 = 0;
        v29 = 0x4000000000000000;
        v28 = v13;
LABEL_12:
        v17 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering13ARViewBackend_uuid;
        v18 = sub_10008AD08();
        (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
        (*(v1 + 16))(&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v17, v0);
        sub_10008ACE8();
        swift_unknownObjectRetain();
        v19 = sub_10008ACD8();
        v20 = (*(v1 + 80) + 40) & ~*(v1 + 80);
        v21 = (v2 + v20 + 15) & 0xFFFFFFFFFFFFFFF0;
        v22 = swift_allocObject();
        *(v22 + 2) = v19;
        *(v22 + 3) = &protocol witness table for MainActor;
        *(v22 + 4) = v10;
        (*(v1 + 32))(&v22[v20], v3, v0);
        v23 = &v22[v21];
        v24 = v28;
        *v23 = v33;
        *(v23 + 1) = v24;
        v25 = v32;
        *(v23 + 2) = v34;
        *(v23 + 3) = v25;
        v26 = v29;
        *(v23 + 4) = v31;
        *(v23 + 5) = v26;
        *(v23 + 6) = v30;
        sub_10004BA04(0, 0, v6, &unk_1000A9FC8, v22);

        return swift_unknownObjectRelease();
      }

      v33 = 0;
      v28 = 0;
      v34 = 0;
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v15 = 0x8000000000000000;
      v16 = &v48;
    }

    else if (v14)
    {

      sub_10008A9B8();
      sub_1000595C8(&v42);
      v33 = v35;
      v28 = v36;
      v34 = v37;
      v32 = v38;
      v31 = v39;
      v29 = v40;
      v15 = v41;
      v16 = &v49;
    }

    else
    {
      v28 = 0;
      v34 = 0;
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0x8000000000000000;
      v15 = 2;
      v16 = &v50;
    }

    *(v16 - 32) = v15;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100055680(uint64_t a1)
{
  *(v2 + 200) = v1;
  *(v2 + 536) = *a1;
  v3 = *(a1 + 40);
  *(v2 + 296) = *(a1 + 32);
  *(v2 + 104) = a1;
  v4 = *(a1 + 16);
  *(v2 + 392) = v3;
  *(v2 + 488) = *(a1 + 48);
  v5 = *(a1 + 56);
  *(v2 + 496) = v4;
  *(v2 + 512) = v5;
  sub_10008ACE8();
  *(v2 + 528) = sub_10008ACD8();
  v7 = sub_10008AC88();

  return _swift_task_switch(sub_100055744, v7, v6);
}

uint64_t sub_100055744()
{
  v1 = *(v0 + 200);

  v2 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v2;
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v5 = *(v1 + 112);
  *(v0 + 96) = *(v1 + 128);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v6 = *(v0 + 40) >> 62;
  if (v6 == 1)
  {
    v23 = *(v0 + 104);
    v24 = *(v0 + 24);
    v26 = *(v23 + 32);
    v25 = *(v23 + 48);
    v27 = *(v23 + 16);
    *(v24 + 80) = *(v23 + 64);
    *(v24 + 48) = v26;
    *(v24 + 64) = v25;
    *(v24 + 32) = v27;
    *(v24 + 16) = *v23;
    sub_1000595F8(v0 + 16, v0 + 112);

    sub_1000568F8();

    sub_1000595C8(v0 + 16);
  }

  else if (!v6)
  {
    v7 = *(v0 + 488);
    v8 = *(v0 + 392);
    v9 = *(v0 + 296);
    v10 = *(v0 + 536);
    v11 = *(v0 + 200);
    v12 = *(v0 + 16);
    v13 = *(v0 + 496);
    v14 = *(v0 + 512);
    v15 = *(v1 + 64);
    *(v0 + 304) = *(v1 + 48);
    *(v0 + 320) = v15;
    v17 = *(v1 + 96);
    v16 = *(v1 + 112);
    v18 = *(v1 + 80);
    *(v0 + 384) = *(v1 + 128);
    *(v0 + 352) = v17;
    *(v0 + 368) = v16;
    *(v0 + 336) = v18;
    *(v1 + 48) = v12;
    *(v11 + 64) = v10;
    *(v11 + 72) = 0;
    *(v11 + 80) = v13;
    *(v11 + 96) = v9;
    *(v11 + 104) = v8;
    *(v11 + 112) = v7;
    *(v11 + 120) = v14;
    sub_1000595F8(v0 + 16, v0 + 400);
    v19 = *(v0 + 64);
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 256) = v19;
    *(v0 + 272) = *(v0 + 80);
    *(v0 + 288) = *(v0 + 96);
    v20 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v20;
    *(v0 + 232) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1000595F8(v0 + 16, v0 + 400);
    sub_1000595F8(v0 + 16, v0 + 400);
    sub_100059630(v0 + 208, v0 + 400);
    sub_1000595C8(v0 + 304);
    sub_100055AEC();
    sub_1000595C8(v0 + 16);
    sub_1000595C8(v0 + 16);
    v21 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v21;
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = *(v0 + 96);
    v22 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v22;
    *(v0 + 136) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_10002E21C(v0 + 112, &qword_1000D7990);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100055948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008ACE8();
  v2[4] = sub_10008ACD8();
  v4 = sub_10008AC88();

  return _swift_task_switch(sub_1000559E0, v4, v3);
}

uint64_t sub_1000559E0()
{
  v1 = v0[3];

  if (*(v1 + 72) >> 62 == 1)
  {
    v2 = *(v0[2] + 16);

    if (v2)
    {
      v3 = (v0[2] + 40);
      do
      {
        v4 = *v3;
        if (v4 > 3)
        {
          if (v4 == 4)
          {
            sub_100056764();
            goto LABEL_5;
          }

          if (v4 == 5)
          {
            sub_100056434();
            goto LABEL_5;
          }
        }

        else
        {
          if (v4 == 2)
          {
            sub_100056264();
            goto LABEL_5;
          }

          if (v4 == 3)
          {
            sub_10005627C();
            goto LABEL_5;
          }
        }

        sub_100055E9C();
LABEL_5:
        v3 += 16;
        --v2;
      }

      while (v2);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100055AEC()
{
  v1 = sub_100089DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v0 + 64);
    v39 = *(v0 + 48);
    v40 = v10;
    v11 = *(v0 + 96);
    v41 = *(v0 + 80);
    v42 = v11;
    v43 = *(v0 + 112);
    v44 = *(v0 + 128);
    v12 = *(&v39 + 1);
    v13 = *(&v40 + 1) >> 62;
    if ((*(&v40 + 1) >> 62) > 1)
    {
      if (v13 == 2)
      {
        v30 = v39;
        v31 = v40;
        sub_1000535EC(v39, *(&v39 + 1), v40);
        v29 = 0;
        v28 = 0;
        v27 = 0;
        v14 = 0x4000000000000000;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v12 = 0;
        v29 = 0;
        v28 = 0;
        v27 = 0;
        v14 = 0x8000000000000000;
      }

      v15 = &v45;
    }

    else
    {
      if (!v13)
      {
        v12 = 0;
        v31 = 0;
        v29 = 0;
        v28 = 0;
        v27 = 0;
        v26 = 0x8000000000000000;
        v30 = 2;
LABEL_11:
        v16 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering13ARViewBackend_uuid;
        v17 = sub_10008AD08();
        (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
        (*(v2 + 16))(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v16, v1);
        sub_10008ACE8();
        swift_unknownObjectRetain();
        v18 = sub_10008ACD8();
        v19 = (*(v2 + 80) + 40) & ~*(v2 + 80);
        v20 = (v3 + v19 + 15) & 0xFFFFFFFFFFFFFFF0;
        v21 = swift_allocObject();
        *(v21 + 2) = v18;
        *(v21 + 3) = &protocol witness table for MainActor;
        *(v21 + 4) = v9;
        (*(v2 + 32))(&v21[v19], v4, v1);
        v22 = &v21[v20];
        v23 = v31;
        *v22 = v30;
        v22[1] = v12;
        v24 = v29;
        v22[2] = v23;
        v22[3] = v24;
        v25 = v26;
        v22[4] = v28;
        v22[5] = v25;
        v22[6] = v27;
        sub_10004BA04(0, 0, v7, &unk_1000A57D8, v21);

        return swift_unknownObjectRelease();
      }

      sub_10008A9B8();
      sub_1000595C8(&v39);
      v12 = v33;
      v30 = v32;
      v31 = v34;
      v29 = v35;
      v28 = v36;
      v26 = v37;
      v14 = v38;
      v15 = &v46;
    }

    *(v15 - 32) = v14;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100055E9C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 176);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v38 = v7;
  v39 = v2;
  v40 = v0;
  if (v6)
  {
LABEL_11:
    while (1)
    {
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (v8 << 10) | (16 * v12);
      v14 = (*(v2 + 48) + v13);
      v15 = v14[1];
      v41 = *v14;
      v16 = (*(v2 + 56) + v13);
      v17 = *v16;
      if (!v16[1])
      {
        break;
      }

      swift_retain_n();

      if (sub_10008A2F8())
      {

        if (sub_10008A378())
        {
          sub_10008A368();
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_19:
        v18 = v15;
        sub_10008A168();
        v19 = sub_10008A578();
        swift_beginAccess();
        v20 = v17;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v1 + 176);
        *(v1 + 176) = 0x8000000000000000;
        v23 = v18;
        v25 = sub_10003F9EC(v41, v18);
        v26 = v22[2];
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_32;
        }

        v29 = v24;
        if (v22[3] >= v28)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v24)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_100067600();
            if (v29)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_100065A74(v28, isUniquelyReferenced_nonNull_native);
          v30 = sub_10003F9EC(v41, v23);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_34;
          }

          v25 = v30;
          if (v29)
          {
LABEL_5:

            v9 = v22;
            v10 = (v22[7] + 16 * v25);
            *v10 = v20;
            v10[1] = v19;

            goto LABEL_6;
          }
        }

        v9 = v22;
        v22[(v25 >> 6) + 8] |= 1 << v25;
        v32 = (v22[6] + 16 * v25);
        *v32 = v41;
        v32[1] = v23;
        v33 = (v22[7] + 16 * v25);
        *v33 = v20;
        v33[1] = v19;
        v34 = v22[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_33;
        }

        v22[2] = v36;
LABEL_6:
        *(v40 + 176) = v9;
        v1 = v40;
        swift_endAccess();

        v7 = v38;
        v2 = v39;
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_7:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      sub_100056A50(&v42);
      v45 = v43;
      v46 = v44;
      sub_10008A9A8();
      sub_10002E21C(&v45, &qword_1000D7278);
      return sub_10002E21C(&v46, &qword_1000D7290);
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_10008B1A8();
  __break(1u);
  return result;
}

uint64_t sub_100056294(void (*a1)(void))
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + ((v9 << 10) | (16 * v11)) + 8))
    {

      if (sub_10008A2F8())
      {
        a1();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      sub_100056A50(&v12);
      v15 = v13;
      v16 = v14;
      sub_10008A9A8();
      sub_10002E21C(&v15, &qword_1000D7278);
      return sub_10002E21C(&v16, &qword_1000D7290);
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100056434()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 176);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 176) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v38 = *(v0 + 176);

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v15 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v16 = (*(v38 + 48) + v15);
    v17 = v16[1];
    v18 = (*(v38 + 56) + v15);
    v19 = *v18;
    v39 = *v16;
    if (v18[1])
    {
      swift_retain_n();

      if (sub_10008A2F8())
      {
        sub_10008A348();
      }
    }

    else
    {
    }

    swift_beginAccess();
    v20 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v1 + 176);
    v40 = v22;
    v23 = v1;
    *(v1 + 176) = 0x8000000000000000;
    v24 = sub_10003F9EC(v39, v17);
    v26 = v22[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_28;
    }

    v30 = v25;
    if (v22[3] < v29)
    {
      sub_100065A74(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_10003F9EC(v39, v17);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

LABEL_21:
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v36 = v24;
    sub_100067600();
    v24 = v36;
    if (v30)
    {
LABEL_4:
      v11 = v24;

      v12 = v40;
      v13 = (v40[7] + 16 * v11);
      *v13 = v20;
      v13[1] = 0;

      goto LABEL_5;
    }

LABEL_22:
    v12 = v22;
    v22[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v22[6] + 16 * v24);
    *v32 = v39;
    v32[1] = v17;
    v33 = (v22[7] + 16 * v24);
    *v33 = v20;
    v33[1] = 0;
    v34 = v22[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_29;
    }

    v22[2] = v35;
LABEL_5:
    v8 &= v8 - 1;
    *(v23 + 176) = v12;
    v1 = v23;
    swift_endAccess();
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      sub_100056A50(&v41);
      v44 = v42;
      v45 = v43;
      sub_10008A9A8();
      sub_10002E21C(&v44, &qword_1000D7278);
      return sub_10002E21C(&v45, &qword_1000D7290);
    }

    v8 = *(v4 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_10008B1A8();
  __break(1u);
  return result;
}

uint64_t sub_100056764()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_10:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(v1 + 56) + ((v7 << 10) | (16 * v9)) + 8))
    {

      if (sub_10008A2F8())
      {
        sub_10008A2D8();
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      sub_100056A50(&v10);
      v13 = v11;
      v14 = v12;
      sub_10008A9A8();
      sub_10002E21C(&v13, &qword_1000D7278);
      return sub_10002E21C(&v14, &qword_1000D7290);
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000568F8()
{
  v1 = *(v0 + 16);
  sub_100089DD8();
  v3 = v2;
  v4 = ((v1 * 0.5) * 3.1416) / 180.0;
  if (v1 <= 0.0)
  {
    v4 = 0.0087266;
  }

  v5 = v3 / sinf(v4);
  sub_10002A958(&qword_1000D7CD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64A0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  sub_10005DAC8(inited);
  swift_setDeallocating();
  sub_100089EA8();
  sub_100089F58();
  sub_10008A198();
  v7 = sub_10008A218();
  sub_10008A288();
  v7(v9, 0);
  return sub_100089F18();
}

unint64_t sub_100056A50@<X0>(uint64_t a1@<X8>)
{
  v33 = *(v1 + 128);
  v34 = *(v1 + 112);
  swift_beginAccess();
  v2 = *(v1 + 176);
  sub_10002A958(&unk_1000D7FE0);
  v3 = sub_10008AFA8();
  v4 = v3;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v37 = v3 + 64;
  v41 = v2;

  v11 = 0;
  v36 = v4;
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v15 = v12 | (v11 << 6);
      v16 = (*(v41 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      if (*(*(v41 + 56) + 16 * v15 + 8))
      {

        v40 = sub_10008A378();
        v39 = sub_10008A338();
        v38 = sub_10008A318();
        v19 = sub_10008A328();
        sub_10008A2E8();
        v21 = v20;

        v4 = v36;

        v22 = 256;
        if ((v39 & 1) == 0)
        {
          v22 = 0;
        }

        v23 = v22 & 0xFFFFFFFFFFFFFFFELL | v40 & 1;
        v24 = 0x10000;
        if ((v38 & 1) == 0)
        {
          v24 = 0;
        }

        v25 = 0x1000000;
        if ((v19 & 1) == 0)
        {
          v25 = 0;
        }

        v26 = v23 | v24 | v25 | (v21 << 32);
      }

      else
      {

        v26 = 2;
      }

      *(v37 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v27 = (v4[6] + 16 * v15);
      *v27 = v18;
      v27[1] = v17;
      *(v4[7] + 8 * v15) = v26;
      v28 = v4[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v4[2] = v30;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v11 >= v9)
      {
        break;
      }

      v14 = *(v5 + 8 * v11);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    v31 = [*(v1 + 88) superview];
    v32 = v31;
    if (v31)
    {
    }

    result = sub_1000411C8(_swiftEmptyArrayStorage);
    *a1 = v34;
    *(a1 + 16) = v33;
    *(a1 + 32) = v4;
    *(a1 + 40) = v32 != 0;
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100056CFC()
{

  return v0;
}

uint64_t sub_100056D4C()
{
  sub_100056CFC();

  return swift_deallocClassInstance();
}

uint64_t sub_100056D80()
{
  sub_10002F138((v0 + 16));
  sub_100059960(*(v0 + 6), *(v0 + 7), *(v0 + 8), *(v0 + 9));
  v1 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering13ARViewBackend_uuid;
  v2 = sub_100089DA8();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100056E78()
{
  result = sub_100089DA8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100056FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering13ARViewBackend_uuid;
  v4 = sub_100089DA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100057034(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F13C;

  return sub_100054384(a1);
}

uint64_t sub_1000570C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027728;

  return sub_100055680(a1);
}

uint64_t sub_10005715C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F13C;

  return sub_100055948(a1);
}

uint64_t sub_1000571F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000533C0;

  return sub_100058ED0();
}

uint64_t sub_100057290(uint64_t a1, void *a2)
{
  v4 = sub_10002A958(&qword_1000D7CD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_10008AD08();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  sub_10008ACE8();
  v12 = a2;
  v13 = sub_10008ACD8();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v12;
  (*(v5 + 32))(&v15[v14], v7, v4);
  sub_10004BA04(0, 0, v10, &unk_1000A9F80, v15);
}

uint64_t sub_10005749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10002A958(&qword_1000D7CD0);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  sub_10008ACE8();
  v5[8] = sub_10008ACD8();
  v9 = sub_10008AC88();

  return _swift_task_switch(sub_1000575A4, v9, v8);
}

uint64_t sub_1000575A4()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  (*(v2 + 32))(v7 + v6, v1, v3);
  sub_10008A508();

  [v5 bounds];
  [v5 setNeedsDisplayInRect:?];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000576D8(void *a1)
{
  v1 = a1;
  sub_10002A958(&qword_1000D7CD0);
  return sub_10008ACA8();
}

uint64_t sub_100057728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLARView(0);
  objc_msgSendSuper2(&v2, "didMoveToSuperview");
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100056A50(&v3);
    v6 = v4;
    v7 = v5;
    sub_10008A9A8();
    sub_10002E21C(&v6, &qword_1000D7278);
    sub_10002E21C(&v7, &qword_1000D7290);
  }

  return result;
}

void sub_1000577FC(void *a1)
{
  v1 = a1;
  sub_100057728();
}

id sub_100057844(void *a1, uint64_t a2, void *a3)
{
  swift_weakInit();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for CRLARView(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1000578D4(void *a1, double a2, double a3, double a4, double a5)
{
  swift_weakInit();
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CRLARView(0);
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t sub_10005795C(uint64_t a1)
{
  v3 = sub_10008A488();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  swift_weakInit();
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_10008A4E8();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_100057AB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLARView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100057B14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057B64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100057BB8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100057BD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100057C00(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100057C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100057C68(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100057CD0(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 24) = a2 << 62;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 3);
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
    *(result + 24) = 0xC000000000000000;
  }

  return result;
}

unint64_t sub_100057D2C()
{
  result = qword_1000D7CA8;
  if (!qword_1000D7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7CA8);
  }

  return result;
}

unint64_t sub_100057D84()
{
  result = qword_1000D7CB0;
  if (!qword_1000D7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7CB0);
  }

  return result;
}

unint64_t sub_100057DDC()
{
  result = qword_1000D7CB8;
  if (!qword_1000D7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7CB8);
  }

  return result;
}

unint64_t sub_100057E34()
{
  result = qword_1000D7CC0;
  if (!qword_1000D7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D7CC0);
  }

  return result;
}

uint64_t sub_100057E88(void *a1, char a2, void *a3)
{
  v44 = a1[2];
  if (!v44)
  {
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v11 = sub_10003F9EC(v5, v6);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100067600();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_10002A958(&qword_1000D7998);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_28;
  }

  sub_100065A74(v14, a2 & 1);
  v16 = sub_10003F9EC(v5, v6);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_27:
    sub_10008B1A8();
    __break(1u);
LABEL_28:
    sub_10008AEB8(30);
    v46._object = 0x80000001000A3340;
    v46._countAndFlagsBits = 0xD00000000000001BLL;
    sub_10008ABB8(v46);
    sub_10008AF78();
    v47._countAndFlagsBits = 39;
    v47._object = 0xE100000000000000;
    sub_10008ABB8(v47);
    result = sub_10008AF88();
    __break(1u);
    return result;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v20 = (v19[6] + 16 * v11);
  *v20 = v5;
  v20[1] = v6;
  v21 = (v19[7] + 16 * v11);
  *v21 = v7;
  v21[1] = v8;
  v22 = v19[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19[2] = v24;
  if (v44 != 1)
  {
    v25 = a1 + 11;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 3);
      v27 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *a3;

      v32 = sub_10003F9EC(v28, v27);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v23 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v23)
      {
        goto LABEL_24;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_100065A74(v36, 1);
        v32 = sub_10003F9EC(v28, v27);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v29;
      v41[1] = v30;
      v42 = v39[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      ++v26;
      v39[2] = v43;
      v25 += 4;
      if (v44 == v26)
      {
      }
    }

    goto LABEL_26;
  }
}

uint64_t sub_100058254(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_10008A4B8();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10008A488();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 96) = a1;
  v19 = *(a2 + 48);
  *(v7 + 48) = *(a2 + 32);
  *(v7 + 64) = v19;
  *(v7 + 80) = *(a2 + 64);
  v20 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v20;
  sub_100089EA8();
  sub_10005DAC8(&off_1000C3C18);
  v61 = v21;

  *(v7 + 144) = sub_100089E88();
  sub_10008A618();
  sub_100089F28();
  *(v7 + 112) = v22;
  *(v7 + 128) = v23;
  sub_100089DF8();
  sub_100089F58();

  v58 = a1;
  sub_100089EC8();

  sub_10008A198();
  swift_allocObject();
  *(v7 + 152) = sub_10008A188();
  sub_10005DAC8(&off_1000C3C48);
  *(v7 + 160) = sub_100089E88();

  v24 = v7;
  sub_100089EC8();

  v57 = type metadata accessor for CRLARView(0);
  v25 = [objc_allocWithZone(v57) initWithFrame:{a3, a4, a5, a6}];
  *(v7 + 88) = v25;
  v26 = v25;
  sub_10008A4F8();

  sub_10008A418();

  sub_10008A3B8();
  if (swift_dynamicCastClass())
  {
    sub_10008A388();
    sub_10008A3A8();
    sub_10008A398();
  }

  swift_unknownObjectRelease();
  v27 = *(v7 + 88);
  (*(v16 + 104))(v18, enum case for ARView.CameraMode.nonAR(_:), v15);
  v28 = v27;
  sub_10008A498();

  [*(v24 + 88) setUserInteractionEnabled:0];
  v29 = *(v24 + 88);
  sub_10008A4F8();

  sub_10008A458();

  v30 = *(v24 + 88);
  sub_10008A4F8();

  sub_10008A458();

  v31 = *(v24 + 88);
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 clearColor];
  sub_10008A4A8();

  v35 = sub_10008A4D8();
  sub_10008A4C8();
  v35(&v66, 0);

  v36 = sub_10008A5D8();
  if (v36 >> 62)
  {
LABEL_22:
    v51 = v36;
    v37 = sub_10008AF98();
    v36 = v51;
    if (v37)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
LABEL_5:
      v38 = v36;
      *&v62 = _swiftEmptyArrayStorage;
      v36 = sub_10005CF20(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v56 = v24;
      v24 = 0;
      v39 = v62;
      v40 = v38;
      *&v61 = v38 & 0xC000000000000001;
      v59 = v38 & 0xFFFFFFFFFFFFFF8;
      *&v60 = v38;
      do
      {
        v41 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        if (v61)
        {
          v42 = sub_10008AED8();
        }

        else
        {
          if (v24 >= *(v59 + 16))
          {
            goto LABEL_21;
          }

          v42 = *(v40 + 8 * v24 + 32);
        }

        v71 = sub_10008AAE8();
        *&v66 = sub_10008B138();
        *(&v66 + 1) = v43;
        v72._countAndFlagsBits = 47;
        v72._object = 0xE100000000000000;
        sub_10008ABB8(v72);
        v44._countAndFlagsBits = sub_10008A158();
        if (v44._object)
        {
          object = v44._object;
        }

        else
        {
          v44._countAndFlagsBits = 0x64656D616E6E75;
          object = 0xE700000000000000;
        }

        v44._object = object;
        sub_10008ABB8(v44);

        v46 = v66;
        *&v62 = v39;
        v48 = v39[2];
        v47 = v39[3];
        if (v48 >= v47 >> 1)
        {
          v36 = sub_10005CF20((v47 > 1), v48 + 1, 1);
          v39 = v62;
        }

        v39[2] = v48 + 1;
        v49 = &v39[4 * v48];
        *(v49 + 2) = v46;
        v49[6] = v42;
        v49[7] = 0;
        ++v24;
        v40 = v60;
      }

      while (v41 != v37);

      v24 = v56;
      if (!v39[2])
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  v39 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_24:
    v50 = &_swiftEmptyDictionarySingleton;
    goto LABEL_25;
  }

LABEL_19:
  sub_10002A958(&unk_1000D7CF0);
  v50 = sub_10008AFC8();
LABEL_25:
  *&v66 = v50;
  sub_100057E88(v39, 1, &v66);
  *(v24 + 176) = v66;
  v52 = *(v24 + 128);
  v61 = *(v24 + 112);
  v60 = v52;
  v53 = sub_1000410CC(_swiftEmptyArrayStorage);
  v54 = sub_1000411C8(_swiftEmptyArrayStorage);
  v66 = v61;
  v67 = v60;
  *&v68 = v53;
  BYTE8(v68) = 0;
  v69 = v54;
  sub_10002A958(&qword_1000D7CE0);
  swift_allocObject();
  *(v24 + 168) = sub_10008A9E8();
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
  }

  sub_1000568F8();
  sub_100056A50(&v66);
  v70 = v68;
  v71 = v69;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  v65 = v69;
  sub_10008A9A8();

  sub_10002E21C(&v70, &qword_1000D7278);
  sub_10002E21C(&v71, &qword_1000D7290);
  return v24;
}