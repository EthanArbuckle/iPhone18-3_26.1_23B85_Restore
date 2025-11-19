unint64_t sub_D30D0(char a1)
{
  result = 0x444965726F7473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      v3 = 11;
      goto LABEL_9;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6E49776569766572;
      break;
    case 5:
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD00000000000002BLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
    case 18:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0x64656C706D6173;
      break;
    case 14:
      v3 = 9;
LABEL_9:
      result = v3 | 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D3354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E4AA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D3388(uint64_t a1)
{
  v2 = sub_E1C74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D33C4(uint64_t a1)
{
  v2 = sub_E1C74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22B7C8, &qword_1C3E30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v20 - v6;
  v8 = *v1;
  v55 = v1[1];
  v56 = v8;
  v62 = *(v1 + 16);
  v54 = v1[3];
  v53 = *(v1 + 32);
  v9 = *(v1 + 5);
  v48 = *(v1 + 7);
  v49 = v9;
  v52 = v1[9];
  v51 = *(v1 + 80);
  v10 = v1[12];
  *&v46 = v1[11];
  *(&v46 + 1) = v10;
  v47 = *(v1 + 104);
  v44 = v1[14];
  v45 = *(v1 + 120);
  v42 = v1[16];
  v43 = *(v1 + 136);
  v40 = v1[18];
  v41 = *(v1 + 152);
  v38 = v1[20];
  v39 = *(v1 + 168);
  v36 = v1[22];
  v37 = *(v1 + 184);
  v34 = v1[24];
  v35 = *(v1 + 200);
  v11 = *(v1 + 13);
  v32 = *(v1 + 14);
  v33 = v11;
  v31 = *(v1 + 240);
  v29 = v1[31];
  v30 = *(v1 + 256);
  v27 = *(v1 + 35);
  v28 = *(v1 + 33);
  v26 = *(v1 + 296);
  v24 = v1[38];
  v22 = v1[40];
  v20[2] = v1[42];
  v50 = v1[44];
  v20[1] = v1[46];
  v25 = *(v1 + 312);
  v23 = *(v1 + 328);
  v21 = *(v1 + 344);
  v12 = *(v1 + 360);
  v13 = *(v1 + 376);
  v14 = a1[4];
  sub_2698(a1, a1[3]);
  sub_E1C74();
  sub_1B5884();
  LOBYTE(v58) = 0;
  v15 = v57;
  v16 = v7;
  sub_1B5574();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v51;
  v19 = v52;
  LODWORD(v57) = v12;
  LODWORD(v56) = v13;
  LOBYTE(v58) = 1;
  sub_1B5484();
  LOBYTE(v58) = 2;
  sub_1B5484();
  v59 = v48;
  v58 = v49;
  v60 = v19;
  v61 = v18;
  v63 = 3;
  sub_E1CC8();
  sub_1B54B4();
  v58 = v46;
  LOBYTE(v59) = v47;
  v63 = 4;
  sub_E1D1C();
  sub_1B54B4();
  LOBYTE(v58) = 5;
  sub_1B5484();
  LOBYTE(v58) = 6;
  sub_1B5484();
  LOBYTE(v58) = 7;
  sub_1B5484();
  LOBYTE(v58) = 8;
  sub_1B5484();
  LOBYTE(v58) = 9;
  sub_1B5484();
  LOBYTE(v58) = 10;
  sub_1B5484();
  v59 = v32;
  v58 = v33;
  LOBYTE(v60) = v31;
  v63 = 11;
  sub_E14E8();
  sub_1B54B4();
  LOBYTE(v58) = 12;
  sub_1B5484();
  v59 = v27;
  v58 = v28;
  LOBYTE(v60) = v26;
  v63 = 13;
  sub_1B54B4();
  LOBYTE(v58) = 14;
  sub_1B5484();
  LOBYTE(v58) = 15;
  sub_1B5484();
  LOBYTE(v58) = 16;
  sub_1B54A4();
  LOBYTE(v58) = 17;
  sub_1B54A4();
  LOBYTE(v58) = 18;
  sub_1B54A4();
  return (*(v4 + 8))(v16, v3);
}

void BookHistory.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v35 = *(v0 + 64);
  v36 = *(v0 + 72);
  v8 = *(v0 + 80);
  v41 = *(v0 + 88);
  v42 = *(v0 + 96);
  v57 = *(v0 + 104);
  v58 = *(v0 + 120);
  v43 = *(v0 + 112);
  v44 = *(v0 + 128);
  v59 = *(v0 + 136);
  v45 = *(v0 + 144);
  v60 = *(v0 + 152);
  v46 = *(v0 + 160);
  v61 = *(v0 + 168);
  v47 = *(v0 + 176);
  v62 = *(v0 + 184);
  v48 = *(v0 + 192);
  v63 = *(v0 + 200);
  v55 = *(v0 + 208);
  v9 = *(v0 + 216);
  v37 = *(v0 + 224);
  v38 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 272);
  v49 = *(v0 + 248);
  v64 = *(v0 + 256);
  v56 = *(v0 + 264);
  v39 = *(v0 + 280);
  v40 = *(v0 + 288);
  v12 = *(v0 + 296);
  v50 = *(v0 + 304);
  v65 = *(v0 + 312);
  v51 = *(v0 + 320);
  v66 = *(v0 + 328);
  v52 = *(v0 + 336);
  v67 = *(v0 + 344);
  v53 = *(v0 + 352);
  v68 = *(v0 + 360);
  v54 = *(v0 + 368);
  v69 = *(v0 + 376);
  sub_1B5834(*v0);
  if (v2 == 1)
  {
    sub_1B5814(0);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    sub_1B5814(0);
    if (v8 != 255)
    {
      goto LABEL_7;
    }

LABEL_21:
    sub_1B5814(0);
    if (!v57)
    {
      goto LABEL_60;
    }

    goto LABEL_22;
  }

  sub_1B5814(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v1;
  }

  else
  {
    v16 = 0;
  }

  sub_1B5834(v16);
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  sub_1B5814(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  sub_1B5834(v13);
  if (v8 == 255)
  {
    goto LABEL_21;
  }

LABEL_7:
  sub_1B5814(1u);
  sub_1B5804(v5);
  if (v8)
  {
    sub_1B5804(1uLL);
    if (v6 == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v6;
    }

    sub_1B5834(*&v14);
    if (v7 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v7;
    }

    sub_1B5834(*&v15);
    sub_1B5804(v35);
    sub_1B5804(v36);
    if (!v57)
    {
      goto LABEL_60;
    }

LABEL_22:
    sub_1B5814(0);
    if (v58)
    {
      goto LABEL_67;
    }

    goto LABEL_23;
  }

  sub_1B5804(0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = *&v6;
  }

  else
  {
    v25 = 0;
  }

  sub_1B5834(v25);
  if (v57)
  {
    goto LABEL_22;
  }

LABEL_60:
  sub_1B5814(1u);
  if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v26 = v41;
  }

  else
  {
    v26 = 0;
  }

  sub_1B5834(v26);
  if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = v42;
  }

  else
  {
    v27 = 0;
  }

  sub_1B5834(v27);
  if (v58)
  {
LABEL_67:
    sub_1B5814(0);
    if (v59)
    {
      goto LABEL_68;
    }

    goto LABEL_27;
  }

LABEL_23:
  sub_1B5814(1u);
  if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v43;
  }

  else
  {
    v17 = 0;
  }

  sub_1B5834(v17);
  if (v59)
  {
LABEL_68:
    sub_1B5814(0);
    if (v60)
    {
      goto LABEL_69;
    }

    goto LABEL_31;
  }

LABEL_27:
  sub_1B5814(1u);
  if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v44;
  }

  else
  {
    v18 = 0;
  }

  sub_1B5834(v18);
  if (v60)
  {
LABEL_69:
    sub_1B5814(0);
    if (v61)
    {
      goto LABEL_70;
    }

    goto LABEL_35;
  }

LABEL_31:
  sub_1B5814(1u);
  if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v45;
  }

  else
  {
    v19 = 0;
  }

  sub_1B5834(v19);
  if (v61)
  {
LABEL_70:
    sub_1B5814(0);
    if (v62)
    {
      goto LABEL_71;
    }

    goto LABEL_39;
  }

LABEL_35:
  sub_1B5814(1u);
  if ((v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v46;
  }

  else
  {
    v20 = 0;
  }

  sub_1B5834(v20);
  if (v62)
  {
LABEL_71:
    sub_1B5814(0);
    if (v63)
    {
      goto LABEL_72;
    }

    goto LABEL_43;
  }

LABEL_39:
  sub_1B5814(1u);
  if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v21 = v47;
  }

  else
  {
    v21 = 0;
  }

  sub_1B5834(v21);
  if (v63)
  {
LABEL_72:
    sub_1B5814(0);
    if (v10 == 255)
    {
      goto LABEL_73;
    }

LABEL_47:
    sub_1B5814(1u);
    if (v10)
    {
      sub_1B5804(1uLL);
      if (v55 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v55;
      }

      sub_1B5834(*&v23);
      if (v9 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v9;
      }

      sub_1B5834(*&v24);
      sub_1B5804(v37);
      sub_1B5804(v38);
      if (!v64)
      {
        goto LABEL_88;
      }
    }

    else
    {
      sub_1B5804(0);
      if ((*&v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v30 = *&v55;
      }

      else
      {
        v30 = 0;
      }

      sub_1B5834(v30);
      if (!v64)
      {
        goto LABEL_88;
      }
    }

LABEL_74:
    sub_1B5814(0);
    if (v12 != 255)
    {
      goto LABEL_75;
    }

LABEL_92:
    sub_1B5814(0);
    if (!v65)
    {
      goto LABEL_105;
    }

    goto LABEL_93;
  }

LABEL_43:
  sub_1B5814(1u);
  if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v22 = v48;
  }

  else
  {
    v22 = 0;
  }

  sub_1B5834(v22);
  if (v10 != 255)
  {
    goto LABEL_47;
  }

LABEL_73:
  sub_1B5814(0);
  if (v64)
  {
    goto LABEL_74;
  }

LABEL_88:
  sub_1B5814(1u);
  if ((v49 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v31 = v49;
  }

  else
  {
    v31 = 0;
  }

  sub_1B5834(v31);
  if (v12 == 255)
  {
    goto LABEL_92;
  }

LABEL_75:
  sub_1B5814(1u);
  if (v12)
  {
    sub_1B5804(1uLL);
    if (v56 == 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v56;
    }

    sub_1B5834(*&v28);
    if (v11 == 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v11;
    }

    sub_1B5834(*&v29);
    sub_1B5804(v39);
    sub_1B5804(v40);
    if (!v65)
    {
      goto LABEL_105;
    }

LABEL_93:
    sub_1B5814(0);
    if (v66)
    {
      goto LABEL_109;
    }

    goto LABEL_94;
  }

  sub_1B5804(0);
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = *&v56;
  }

  else
  {
    v33 = 0;
  }

  sub_1B5834(v33);
  if (v65)
  {
    goto LABEL_93;
  }

LABEL_105:
  sub_1B5814(1u);
  if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v34 = v50;
  }

  else
  {
    v34 = 0;
  }

  sub_1B5834(v34);
  if (v66)
  {
LABEL_109:
    sub_1B5814(0);
    if (v67)
    {
      goto LABEL_110;
    }

LABEL_98:
    sub_1B5814(1u);
    sub_1B5804(v52);
    if (v68)
    {
      goto LABEL_111;
    }

    goto LABEL_99;
  }

LABEL_94:
  sub_1B5814(1u);
  if ((v51 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = v51;
  }

  else
  {
    v32 = 0;
  }

  sub_1B5834(v32);
  if (!v67)
  {
    goto LABEL_98;
  }

LABEL_110:
  sub_1B5814(0);
  if (v68)
  {
LABEL_111:
    sub_1B5814(0);
    if (v69)
    {
      goto LABEL_112;
    }

LABEL_100:
    sub_1B5814(1u);
    sub_1B5804(v54);
    return;
  }

LABEL_99:
  sub_1B5814(1u);
  sub_1B5804(v53);
  if (!v69)
  {
    goto LABEL_100;
  }

LABEL_112:
  sub_1B5814(0);
}

Swift::Int BookHistory.hashValue.getter()
{
  sub_1B57F4();
  BookHistory.hash(into:)();
  return sub_1B5844();
}

uint64_t BookHistory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22B7E8, &unk_1C3E38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_E1C74();
  sub_1B5864();
  if (!v2)
  {
    LOBYTE(v61) = 0;
    v11 = sub_1B5434();
    LOBYTE(v61) = 1;
    v60 = sub_1B5344();
    v79 = v13 & 1;
    LOBYTE(v61) = 2;
    v59 = sub_1B5344();
    v78 = v14 & 1;
    v80 = 3;
    sub_E1D70();
    sub_1B5374();
    v57 = v62;
    v58 = v61;
    v56 = v63;
    v15 = v64;
    v80 = 4;
    sub_E1DC4();
    sub_1B5374();
    v55 = v15;
    v16 = v61;
    v77 = v62;
    LOBYTE(v61) = 5;
    v54 = sub_1B5344();
    v76 = v17 & 1;
    LOBYTE(v61) = 6;
    v53 = sub_1B5344();
    v75 = v18 & 1;
    LOBYTE(v61) = 7;
    v19 = sub_1B5344();
    v51 = *(&v16 + 1);
    v52 = v19;
    v74 = v20 & 1;
    LOBYTE(v61) = 8;
    v50 = sub_1B5344();
    v73 = v21 & 1;
    LOBYTE(v61) = 9;
    v49 = sub_1B5344();
    v72 = v22 & 1;
    LOBYTE(v61) = 10;
    v48 = sub_1B5344();
    v71 = v23 & 1;
    v80 = 11;
    *&v47 = sub_E1590();
    sub_1B5374();
    v45 = v62;
    v46 = v61;
    v44 = v63;
    LOBYTE(v61) = 12;
    v43 = sub_1B5344();
    v70 = v24 & 1;
    v80 = 13;
    sub_1B5374();
    v42 = v62;
    v47 = v61;
    v41 = v63;
    LOBYTE(v61) = 14;
    v40 = sub_1B5344();
    v69 = v25 & 1;
    LOBYTE(v61) = 15;
    v39 = sub_1B5344();
    v68 = v26 & 1;
    LOBYTE(v61) = 16;
    v38 = sub_1B5364();
    v67 = v27 & 1;
    LOBYTE(v61) = 17;
    v37 = sub_1B5364();
    v66 = v28 & 1;
    LOBYTE(v61) = 18;
    v29 = sub_1B5364();
    HIDWORD(v36) = v30;
    v31 = v29;
    (*(v6 + 8))(v9, v5);
    v32 = v60;
    *a2 = v11;
    *(a2 + 8) = v32;
    *(a2 + 16) = v79;
    *(a2 + 24) = v59;
    *(a2 + 32) = v78;
    *(a2 + 72) = v56;
    *(a2 + 80) = v55;
    v33 = v51;
    *(a2 + 88) = v16;
    *(a2 + 96) = v33;
    *(a2 + 104) = v77;
    *(a2 + 112) = v54;
    *(a2 + 120) = v76;
    *(a2 + 128) = v53;
    *(a2 + 136) = v75;
    *(a2 + 144) = v52;
    *(a2 + 152) = v74;
    *(a2 + 160) = v50;
    *(a2 + 168) = v73;
    *(a2 + 176) = v49;
    *(a2 + 184) = v72;
    *(a2 + 192) = v48;
    *(a2 + 200) = v71;
    *(a2 + 240) = v44;
    *(a2 + 248) = v43;
    *(a2 + 256) = v70;
    *(a2 + 296) = v41;
    *(a2 + 304) = v40;
    *(a2 + 312) = v69;
    *(a2 + 320) = v39;
    *(a2 + 328) = v68;
    *(a2 + 336) = v38;
    *(a2 + 344) = v67;
    *(a2 + 352) = v37;
    *(a2 + 360) = v66;
    *(a2 + 368) = v31;
    v65 = BYTE4(v36) & 1;
    *(a2 + 376) = BYTE4(v36) & 1;
    *(a2 + 56) = v57;
    *(a2 + 40) = v58;
    v34 = v45;
    *(a2 + 208) = v46;
    *(a2 + 224) = v34;
    v35 = v42;
    *(a2 + 264) = v47;
    *(a2 + 280) = v35;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_D48A0()
{
  sub_1B57F4();
  BookHistory.hash(into:)();
  return sub_1B5844();
}

uint64_t sub_D48E8()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260C18 = result;
  return result;
}

uint64_t sub_D4954()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C20);
  sub_50E58(v0, qword_260C20);
  if (qword_2282D0 != -1)
  {
    swift_once();
  }

  v1 = qword_260C18;
  return sub_1B4654();
}

uint64_t sub_D49E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[253] = v4;
  v5[252] = a3;
  v5[251] = a2;
  v8 = type metadata accessor for StoreBookRating();
  v5[254] = v8;
  v9 = *(v8 - 8);
  v5[255] = v9;
  v10 = *(v9 + 64) + 15;
  v5[256] = swift_task_alloc();
  v5[257] = swift_task_alloc();
  v11 = *(*(sub_2B0C(&qword_22BB20, &qword_1C59E0) - 8) + 64) + 15;
  v5[258] = swift_task_alloc();
  v12 = type metadata accessor for StoreBook.Origin(0);
  v5[259] = v12;
  v13 = *(v12 - 8);
  v5[260] = v13;
  v14 = *(v13 + 64) + 15;
  v5[261] = swift_task_alloc();
  v5[262] = swift_task_alloc();
  v15 = *(*(sub_2B0C(&qword_22BB28, &qword_1C59E8) - 8) + 64) + 15;
  v5[263] = swift_task_alloc();
  v5[264] = swift_task_alloc();
  v5[265] = swift_task_alloc();
  v5[266] = swift_task_alloc();
  v5[267] = swift_task_alloc();
  v5[268] = swift_task_alloc();
  v5[269] = swift_task_alloc();
  v5[270] = swift_task_alloc();
  v16 = sub_1B40C4();
  v5[271] = v16;
  v17 = *(v16 - 8);
  v5[272] = v17;
  v18 = *(v17 + 64) + 15;
  v5[273] = swift_task_alloc();
  v5[274] = swift_task_alloc();
  v5[275] = swift_task_alloc();
  v5[276] = swift_task_alloc();
  v5[277] = swift_task_alloc();
  v19 = *(*(sub_2B0C(&qword_229528, &qword_1BC5A0) - 8) + 64) + 15;
  v5[278] = swift_task_alloc();
  v5[279] = swift_task_alloc();
  v5[280] = swift_task_alloc();
  v5[281] = swift_task_alloc();
  v5[282] = swift_task_alloc();
  v5[283] = swift_task_alloc();
  v5[284] = swift_task_alloc();
  v5[285] = swift_task_alloc();
  v5[286] = swift_task_alloc();
  v5[287] = swift_task_alloc();
  v5[288] = swift_task_alloc();
  v5[289] = swift_task_alloc();
  v5[290] = swift_task_alloc();
  v5[291] = swift_task_alloc();
  v5[292] = swift_task_alloc();
  v5[293] = swift_task_alloc();
  v20 = type metadata accessor for StoreBook(0);
  v5[294] = v20;
  v21 = *(v20 - 8);
  v5[295] = v21;
  v22 = *(v21 + 64) + 15;
  v5[296] = swift_task_alloc();
  v5[297] = swift_task_alloc();
  v5[298] = swift_task_alloc();
  v5[299] = *a1;
  memcpy(v5 + 98, (a4 + 88), 0x16BuLL);

  return _swift_task_switch(sub_D4DF4, 0, 0);
}

uint64_t sub_D4DF4()
{
  v1 = v0[253];
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v0[248] = 31;
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[300] = v6;
  *v6 = v0;
  v6[1] = sub_D4F2C;

  return (v8)(v0 + 248, v2, v3);
}

uint64_t sub_D4F2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2400);
  v7 = *v2;
  *(v3 + 2408) = a1;
  *(v3 + 2416) = v1;

  if (v1)
  {
    v5 = sub_D98A8;
  }

  else
  {
    v5 = sub_D5044;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D5044()
{
  v1 = *(v0 + 2024);
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 2424) = v6;
  *v6 = v0;
  v6[1] = sub_D516C;

  return v8(v2, v3);
}

uint64_t sub_D516C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2424);
  v6 = *v2;
  *(*v2 + 2432) = v1;

  if (v1)
  {
    v7 = sub_D9B1C;
  }

  else
  {
    *(v4 + 2440) = a1;
    v7 = sub_D5294;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D5294()
{
  v50 = v0;
  v1 = *(v0 + 2432);
  v2 = sub_7EC1C(*(v0 + 2440));

  v3 = sub_4025C(v2);
  *(v0 + 2448) = v3;

  if (*(v3 + 16))
  {
    if (qword_2282D8 != -1)
    {
LABEL_34:
      swift_once();
    }

    v4 = sub_1B4644();
    sub_50E58(v4, qword_260C20);

    v5 = sub_1B4624();
    v6 = sub_1B4DB4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v48 = v8;
      *v7 = 136315138;

      v49 = sub_CC598(v9);

      sub_CCC14(&v49);
      if (v1)
      {
      }

      v11 = sub_1B4AD4();
      v13 = v12;

      v1 = sub_60FF4(v11, v13, &v48);

      *(v7 + 4) = v1;
      _os_log_impl(&dword_0, v5, v6, "Excluding hidden purchases from book history %s", v7, 0xCu);
      sub_2BF8(v8);
    }
  }

  v14 = *(v0 + 2408);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v45 = *(v0 + 2360);
    v46 = *(v0 + 2384);
    v43 = v14 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v44 = *(*(v0 + 2352) + 20);
    v17 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v1 = *(v0 + 2384);
      v18 = *(v0 + 2376);
      v19 = *(v45 + 72);
      sub_E52A4(v43 + v19 * v16, v1, type metadata accessor for StoreBook);
      v20 = *(v46 + v44);
      sub_E52A4(v1, v18, type metadata accessor for StoreBook);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v17;
      v22 = sub_43124(v20);
      v24 = *(v17 + 2);
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_32;
      }

      v1 = v23;
      if (*(v17 + 3) >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v22;
          sub_185124();
          v22 = v33;
          v17 = v49;
        }
      }

      else
      {
        sub_17CDCC(v27, isUniquelyReferenced_nonNull_native);
        v17 = v49;
        v22 = sub_43124(v20);
        if ((v1 & 1) != (v28 & 1))
        {

          return sub_1B5784();
        }
      }

      v29 = *(v0 + 2384);
      v30 = *(v0 + 2376);
      if (v1)
      {
        sub_E5200(*(v0 + 2376), *(v17 + 7) + v22 * v19);
        sub_E530C(v29, type metadata accessor for StoreBook);
      }

      else
      {
        *&v17[8 * (v22 >> 6) + 64] |= 1 << v22;
        *(*(v17 + 6) + 8 * v22) = v20;
        sub_E5198(v30, *(v17 + 7) + v22 * v19, type metadata accessor for StoreBook);
        sub_E530C(v29, type metadata accessor for StoreBook);
        v31 = *(v17 + 2);
        v26 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v26)
        {
          goto LABEL_33;
        }

        *(v17 + 2) = v32;
      }

      if (v15 == ++v16)
      {
        goto LABEL_25;
      }
    }
  }

  v17 = &_swiftEmptyDictionarySingleton;
LABEL_25:
  *(v0 + 2456) = v17;
  v34 = *(v0 + 2024);
  v35 = *(v0 + 2008);
  *(v0 + 2464) = *(v0 + 976);
  *(v0 + 2480) = sub_E0494(v35);
  v36 = *(v34 + 5);
  v37 = *(v34 + 6);
  sub_2698(v34 + 2, v36);
  v38 = sub_406DC(&off_20EA48);
  *(v0 + 2488) = v38;
  v39 = OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone;
  *(v0 + 2496) = OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone;
  v40 = *(v37 + 40);
  v47 = (v40 + *v40);
  v41 = v40[1];
  v42 = swift_task_alloc();
  *(v0 + 2504) = v42;
  *v42 = v0;
  v42[1] = sub_D5828;

  return v47(v38, &v34[v39], v36, v37);
}

uint64_t sub_D5828(uint64_t a1)
{
  v4 = *(*v2 + 2504);
  v5 = *v2;
  v3 = v5;
  v5[314] = a1;

  if (v1)
  {
    v6 = v5[311];
    v7 = v5[310];
    v8 = v5[307];
    v9 = v5[306];
    v10 = v5[301];

    v11 = v5[298];
    v12 = v5[297];
    v13 = v5[296];
    v14 = v5[293];
    v15 = v5[292];
    v51 = v5;
    v16 = v5[291];
    v17 = v3[290];
    v18 = v3[289];
    v19 = v3[288];
    v20 = v3[287];
    v25 = v3[286];
    v26 = v3[285];
    v27 = v3[284];
    v28 = v3[283];
    v29 = v3[282];
    v30 = v3[281];
    v31 = v3[280];
    v32 = v3[279];
    v33 = v3[278];
    v34 = v3[277];
    v35 = v3[276];
    v36 = v3[275];
    v37 = v3[274];
    v38 = v3[273];
    v39 = v3[270];
    v40 = v3[269];
    v41 = v3[268];
    v42 = v3[267];
    v43 = v3[266];
    v44 = v3[265];
    v45 = v3[264];
    v46 = v3[263];
    v47 = v3[262];
    v48 = v3[261];
    v49 = v3[258];
    v50 = v3[257];
    v21 = v3[256];

    v22 = v51[1];

    return v22();
  }

  else
  {
    v24 = v5[311];

    return _swift_task_switch(sub_D5BC4, 0, 0);
  }
}

uint64_t sub_D5BC4()
{
  v1 = v0[312];
  v2 = v0[253];
  v3 = *(v2 + 5);
  v4 = *(v2 + 6);
  sub_2698(v2 + 2, v3);
  v5 = sub_406DC(&off_20EA70);
  v0[315] = v5;
  v6 = *(v4 + 40);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[316] = v8;
  *v8 = v0;
  v8[1] = sub_D5D1C;

  return v10(v5, &v2[v1], v3, v4);
}

uint64_t sub_D5D1C(uint64_t a1)
{
  v4 = *(*v2 + 2528);
  v5 = *v2;
  v3 = v5;
  v5[317] = a1;
  v5[318] = v1;

  if (v1)
  {
    v6 = v5[315];
    v7 = v5[314];
    v8 = v5[310];
    v9 = v5[307];
    v10 = v5[306];
    v11 = v5[301];

    v12 = v5[298];
    v13 = v5[297];
    v14 = v5[296];
    v52 = v5;
    v15 = v5[293];
    v16 = v5[292];
    v17 = v5[291];
    v18 = v3[290];
    v19 = v3[289];
    v20 = v3[288];
    v21 = v3[287];
    v26 = v3[286];
    v27 = v3[285];
    v28 = v3[284];
    v29 = v3[283];
    v30 = v3[282];
    v31 = v3[281];
    v32 = v3[280];
    v33 = v3[279];
    v34 = v3[278];
    v35 = v3[277];
    v36 = v3[276];
    v37 = v3[275];
    v38 = v3[274];
    v39 = v3[273];
    v40 = v3[270];
    v41 = v3[269];
    v42 = v3[268];
    v43 = v3[267];
    v44 = v3[266];
    v45 = v3[265];
    v46 = v3[264];
    v47 = v3[263];
    v48 = v3[262];
    v49 = v3[261];
    v50 = v3[258];
    v51 = v3[257];
    v22 = v3[256];

    v23 = v52[1];

    return v23();
  }

  else
  {
    v25 = v5[315];

    return _swift_task_switch(sub_D60C4, 0, 0);
  }
}

uint64_t sub_D60C4()
{
  v34 = v0;
  v1 = v0[299];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 32);
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v5 = *v3++;
        v0[249] = v5;
        v6 = sub_1B5594();
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_3301C(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_3301C((v9 > 1), v10 + 1, 1, v4);
        }

        *(v4 + 2) = v10 + 1;
        v11 = &v4[16 * v10];
        *(v11 + 4) = v6;
        *(v11 + 5) = v8;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v20 = v32[318];
    v33 = v4;

    sub_CCC14(&v33);
    if (v20)
    {
    }

    else
    {
      v21 = v32[306];
      v22 = v32[301];

      v32[322] = v33;
      v23 = v32[253];
      v24 = v23[5];
      v25 = v23[6];
      sub_2698(v23 + 2, v24);
      v26 = *(v25 + 48);
      v31 = (v26 + *v26);
      v27 = v26[1];
      v28 = swift_task_alloc();
      v32[323] = v28;
      *v28 = v32;
      v28[1] = sub_D6B28;
      v29 = v32[293];

      return v31(v29, v24, v25);
    }
  }

  else
  {
    v12 = v0[253];
    v13 = v12[5];
    v14 = v12[6];
    sub_2698(v12 + 2, v13);
    v15 = *(v14 + 8);
    v30 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[319] = v17;
    *v17 = v0;
    v17[1] = sub_D6468;
    v18 = v0[310];

    return v30(v18, v13, v14);
  }
}

uint64_t sub_D6468(uint64_t a1)
{
  v4 = *(*v2 + 2552);
  v5 = *v2;
  v3 = v5;
  v5[320] = a1;
  v5[321] = v1;

  if (v1)
  {
    v6 = v5[317];
    v7 = v5[314];
    v8 = v5[310];
    v9 = v5[307];
    v10 = v5[306];
    v11 = v5[301];

    v12 = v5[298];
    v13 = v5[297];
    v14 = v5[296];
    v51 = v5;
    v15 = v5[293];
    v16 = v5[292];
    v17 = v5[291];
    v18 = v3[290];
    v19 = v3[289];
    v20 = v3[288];
    v21 = v3[287];
    v25 = v3[286];
    v26 = v3[285];
    v27 = v3[284];
    v28 = v3[283];
    v29 = v3[282];
    v30 = v3[281];
    v31 = v3[280];
    v32 = v3[279];
    v33 = v3[278];
    v34 = v3[277];
    v35 = v3[276];
    v36 = v3[275];
    v37 = v3[274];
    v38 = v3[273];
    v39 = v3[270];
    v40 = v3[269];
    v41 = v3[268];
    v42 = v3[267];
    v43 = v3[266];
    v44 = v3[265];
    v45 = v3[264];
    v46 = v3[263];
    v47 = v3[262];
    v48 = v3[261];
    v49 = v3[258];
    v50 = v3[257];
    v22 = v3[256];

    v23 = v51[1];

    return v23();
  }

  else
  {

    return _swift_task_switch(sub_D6808, 0, 0);
  }
}

uint64_t sub_D6808()
{
  v34 = v0;
  v1 = v0[301];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[295];
    v31 = v0[294];
    v33 = _swiftEmptyArrayStorage;
    sub_3747C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = v0[296];
      sub_E52A4(v5, v7, type metadata accessor for StoreBook);
      v0[250] = *(v7 + *(v31 + 20));
      v8 = sub_1B5594();
      v10 = v9;
      sub_E530C(v7, type metadata accessor for StoreBook);
      v33 = v3;
      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_3747C((v11 > 1), v12 + 1, 1);
        v3 = v33;
      }

      *(v3 + 2) = v12 + 1;
      v13 = &v3[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v14 = v0[320];
  v15 = v0[306];
  v16 = sub_4025C(v3);

  v17 = sub_1ABBA0(v16, v14);
  v18 = v0[306];
  if (*(v15 + 16) <= *(v17 + 16) >> 3)
  {
    v33 = v17;
    sub_DFCAC(v18);
    v19 = v33;
  }

  else
  {
    v19 = sub_3C0FC(v18, v17);
  }

  v20 = v0[321];
  v33 = sub_50E90(v19);
  sub_CCC14(&v33);
  if (v20)
  {
  }

  else
  {
    v22 = v0[306];
    v23 = v0[301];

    v0[322] = v33;
    v24 = v0[253];
    v25 = v24[5];
    v26 = v24[6];
    sub_2698(v24 + 2, v25);
    v27 = *(v26 + 48);
    v32 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[323] = v29;
    *v29 = v0;
    v29[1] = sub_D6B28;
    v30 = v0[293];

    return v32(v30, v25, v26);
  }
}

uint64_t sub_D6B28()
{
  v2 = *v1;
  v3 = *(*v1 + 2584);
  v11 = *v1;
  *(*v1 + 2592) = v0;

  if (v0)
  {
    v4 = v2[322];
    v5 = v2[317];
    v6 = v2[314];
    v7 = v2[310];
    v8 = v2[307];

    v9 = sub_D9D98;
  }

  else
  {
    v9 = sub_D6C84;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D6C84()
{
  v1 = v0[253];
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[325] = v6;
  *v6 = v0;
  v6[1] = sub_D6DB4;
  v7 = v0[292];

  return v9(v7, v2, v3);
}

uint64_t sub_D6DB4()
{
  v2 = *v1;
  v3 = *(*v1 + 2600);
  v11 = *v1;
  *(*v1 + 2608) = v0;

  if (v0)
  {
    v4 = v2[322];
    v5 = v2[317];
    v6 = v2[314];
    v7 = v2[310];
    v8 = v2[307];

    v9 = sub_DA00C;
  }

  else
  {
    v9 = sub_D6F10;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D6F10()
{
  v108 = v0;
  v1 = v0[291];
  v2 = v0[290];
  v3 = v0[272];
  v4 = v0[271];
  sub_43050(v0[292], v1, &qword_229528, &qword_1BC5A0);
  sub_43050(v1, v2, &qword_229528, &qword_1BC5A0);
  v5 = *(v3 + 48);
  v0[327] = v5;
  v0[328] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v5(v2, 1, v4);
  sub_42F48(v2, &qword_229528, &qword_1BC5A0);
  if (v1 == 1)
  {
    goto LABEL_2;
  }

  v6 = v0[291];
  v7 = v0[271];
  if (!v5(v6, 1, v7))
  {
    v8 = v0[293];
    v9 = v0[289];
    (*(v0[272] + 16))(v0[277], v6, v7);
    sub_43050(v8, v9, &qword_229528, &qword_1BC5A0);
    v10 = v5(v9, 1, v7);
    v11 = v0[289];
    if (v10 == 1)
    {
      v12 = v0[271];
      v13 = v0[276];
      sub_1B3FE4();
      if (v5(v11, 1, v12) != 1)
      {
        sub_42F48(v0[289], &qword_229528, &qword_1BC5A0);
      }
    }

    else
    {
      (*(v0[272] + 32))(v0[276], v0[289], v0[271]);
    }

    v14 = v0[277];
    v15 = v0[276];
    v16 = v0[272];
    v17 = v0[271];
    v18 = sub_1B4094();
    v19 = *(v16 + 8);
    v19(v15, v17);
    v19(v14, v17);
    if (v18 == 1)
    {
LABEL_2:
      sub_E5064(v0[293], v0[291]);
    }
  }

  v20 = v0[288];
  v21 = v0[271];
  sub_43050(v0[291], v20, &qword_229528, &qword_1BC5A0);
  v22 = v5(v20, 1, v21);
  v23 = v0[288];
  if (v22 == 1)
  {
    v24 = v0[271];
    v25 = v0[275];
    sub_1B40B4();
    if (v5(v23, 1, v24) != 1)
    {
      sub_42F48(v0[288], &qword_229528, &qword_1BC5A0);
    }
  }

  else
  {
    (*(v0[272] + 32))(v0[275], v0[288], v0[271]);
  }

  v26 = v0[274];
  v27 = *(v0[322] + 16);
  v0[329] = v27;
  v28 = lround(ceil(v27 / 1000.0));
  v0[330] = v28;
  result = sub_1B40B4();
  if (v28 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v28)
  {
    v58 = v0[322];
    v59 = v0[317];
    v60 = v0[314];
    v61 = v0[310];
    v62 = v0[307];
    v74 = v0[298];
    v75 = v0[297];
    v71 = v0[292];
    v72 = v0[293];
    v73 = v0[291];
    v76 = v0[296];
    v77 = v0[290];
    v78 = v0[289];
    v79 = v0[288];
    v80 = v0[287];
    v81 = v0[286];
    v82 = v0[285];
    v83 = v0[284];
    v84 = v0[283];
    v85 = v0[282];
    v86 = v0[281];
    v87 = v0[280];
    v88 = v0[279];
    v89 = v0[278];
    v90 = v0[277];
    v91 = v0[276];
    v63 = v0[275];
    v64 = v0[274];
    v65 = v0[272];
    v66 = v0[271];
    v92 = v0[273];
    v93 = v0[270];
    v94 = v0[269];
    v95 = v0[268];
    v96 = v0[267];
    v97 = v0[266];
    v98 = v0[265];
    v99 = v0[264];
    v100 = v0[263];
    v101 = v0[262];
    v102 = v0[261];
    v103 = v0[258];
    v104 = v0[257];
    v106 = v0[256];
    v67 = v0[252];

    memcpy(__dst, v0 + 98, 0x16BuLL);
    sub_71E28((v0 + 98), (v0 + 190));
    v68 = Dictionary<>.mostRecentBookHistories(limit:scorerConfig:)(v67, __dst, &_swiftEmptyDictionarySingleton);

    memcpy(v0 + 144, __dst, 0x16BuLL);
    sub_71DC0((v0 + 144));
    v69 = *(v65 + 8);
    v69(v64, v66);
    v69(v63, v66);
    sub_42F48(v71, &qword_229528, &qword_1BC5A0);
    sub_42F48(v72, &qword_229528, &qword_1BC5A0);
    sub_42F48(v73, &qword_229528, &qword_1BC5A0);

    v70 = v0[1];

    return v70(v68);
  }

  v30 = v0[322];
  v0[333] = &_swiftEmptyDictionarySingleton;
  v0[332] = 0;
  v0[331] = &_swiftEmptyDictionarySingleton;
  v31 = v0[329];
  v32 = 1000;
  if (v31 < 1000)
  {
    v32 = v0[329];
  }

  if (v31 < 1)
  {
    goto LABEL_42;
  }

  if (*(v30 + 16) < v32)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v33 = sub_40790(v30 + 32, 0, (2 * v32) | 1);
  v34 = v33;
  v0[334] = v33;
  v35 = v33 + 56;
  v36 = -1;
  v37 = -1 << *(v33 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(v33 + 56);
  v39 = (63 - v37) >> 6;

  v40 = 0;
  v41 = _swiftEmptyArrayStorage;
  if (!v38)
  {
    goto LABEL_24;
  }

  do
  {
LABEL_22:
    while (1)
    {
      v42 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v43 = (*(v34 + 48) + ((v40 << 10) | (16 * v42)));
      v44 = *v43;
      v45 = v43[1];

      result = sub_CC298(v44, v45);
      if ((v46 & 1) == 0)
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_24;
      }
    }

    v48 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_33008(0, *(v41 + 2) + 1, 1, v41);
      v41 = result;
    }

    v50 = *(v41 + 2);
    v49 = *(v41 + 3);
    if (v50 >= v49 >> 1)
    {
      result = sub_33008((v49 > 1), v50 + 1, 1, v41);
      v41 = result;
    }

    *(v41 + 2) = v50 + 1;
    *&v41[8 * v50 + 32] = v48;
  }

  while (v38);
  while (1)
  {
LABEL_24:
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v47 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v47);
    ++v40;
    if (v38)
    {
      v40 = v47;
      goto LABEL_22;
    }
  }

  v51 = v0[253];

  v52 = sub_40854(v41);
  v0[335] = v52;

  v53 = v51[15];
  v54 = v51[16];
  sub_2698(v51 + 12, v53);
  v55 = *(v54 + 8);
  v105 = (v55 + *v55);
  v56 = v55[1];
  v57 = swift_task_alloc();
  v0[336] = v57;
  *v57 = v0;
  v57[1] = sub_D7854;

  return v105(v52, v53, v54);
}

uint64_t sub_D7854(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2688);
  v15 = *v2;
  v3[337] = a1;
  v3[338] = v1;

  if (v1)
  {
    v5 = v3[335];
    v6 = v3[334];
    v7 = v3[333];
    v8 = v3[322];
    v9 = v3[317];
    v10 = v3[314];
    v11 = v3[310];
    v12 = v3[307];

    v13 = sub_DA298;
  }

  else
  {
    v13 = sub_D79E0;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_D79E0()
{
  v1 = v0[335];
  v2 = v0[253];
  v3 = v2[20];
  v4 = v2[21];
  sub_2698(v2 + 17, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[339] = v7;
  *v7 = v0;
  v7[1] = sub_D7B1C;

  return v9(v1, v3, v4);
}

uint64_t sub_D7B1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2712);
  v17 = *v2;
  v3[340] = a1;
  v3[341] = v1;

  if (v1)
  {
    v5 = v3[337];
    v6 = v3[335];
    v7 = v3[334];
    v8 = v3[333];
    v9 = v3[322];
    v10 = v3[317];
    v11 = v3[314];
    v12 = v3[310];
    v13 = v3[307];

    v14 = sub_DA590;
  }

  else
  {
    v15 = v3[335];

    v14 = sub_D7CBC;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_D7CBC()
{
  v1 = v0[253];
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v4 = *(v3 + 32);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[342] = v6;
  *v6 = v0;
  v6[1] = sub_D7DF0;
  v7 = v0[334];
  v8 = v0[310];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_D7DF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2736);
  v16 = *v2;
  v3[343] = a1;
  v3[344] = v1;

  if (v1)
  {
    v5 = v3[340];
    v6 = v3[337];
    v7 = v3[334];
    v8 = v3[333];
    v9 = v3[322];
    v10 = v3[317];
    v11 = v3[314];
    v12 = v3[310];
    v13 = v3[307];

    v14 = sub_DA888;
  }

  else
  {
    v14 = sub_D7F88;
  }

  return _swift_task_switch(v14, 0, 0);
}

void sub_D7F88()
{
  v289 = v0;
  v1 = 0;
  v2 = v0 + 1904;
  v3 = v0 + 1888;
  v4 = (v0 + 1912);
  v272 = *(v0 + 2744);
  v276 = *(v0 + 2720);
  v5 = *(v0 + 2672);
  v6 = -1;
  v7 = -1 << *(v5 + 32);
  v274 = *(v0 + 2696);
  v8 = *(v5 + 56);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v9 = v6 & v8;
  v10 = (63 - v7) >> 6;
  v285 = *(v0 + 2664);
  v278 = *(v0 + 2752);
  v283 = *(v0 + 2648);
  while (v9)
  {
    v11 = *(v0 + 2672);
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v11 + 48) + ((v1 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    swift_bridgeObjectRetain_n();
    v17 = sub_CC298(v16, v15);
    if (v18)
    {
    }

    else
    {
      v19 = v17;
      v255 = v2;
      v242 = v4;
      v244 = v3;
      if (*(*(v0 + 2456) + 16))
      {
        v20 = sub_43124(v17);
        if (v21)
        {
          sub_E52A4(*(*(v0 + 2456) + 56) + *(*(v0 + 2360) + 72) * v20, *(v0 + 2160), type metadata accessor for StoreBook);
        }
      }

      v267 = *(v0 + 2360);
      v257 = *(v0 + 2352);
      v22 = *(v0 + 2296);
      v246 = v22;
      v251 = *(v0 + 2288);
      v23 = *(v0 + 2176);
      v24 = *(v0 + 2168);
      v25 = *(v0 + 2160);
      v229 = v25;
      v233 = *(v0 + 2152);
      (*(v267 + 56))();
      v26 = *(v23 + 56);
      v26(v246, 1, 1, v24);
      v247 = v26;
      v26(v251, 1, 1, v24);
      sub_43050(v229, v233, &qword_22BB28, &qword_1C59E8);
      v27 = v257;
      v258 = *(v267 + 48);
      v28 = v258(v233, 1, v27);
      v29 = *(v0 + 2152);
      v30 = *(v0 + 2080);
      v31 = *(v0 + 2072);
      v32 = *(v0 + 2064);
      if (v28 == 1)
      {
        sub_42F48(v29, &qword_22BB28, &qword_1C59E8);
        (*(v30 + 56))(v32, 1, 1, v31);
LABEL_18:
        sub_42F48(*(v0 + 2064), &qword_22BB20, &qword_1C59E0);
        goto LABEL_19;
      }

      v234 = *(v0 + 2072);
      v33 = *(v0 + 2152);
      sub_43050(v29, v32, &qword_22BB20, &qword_1C59E0);
      sub_E530C(v33, type metadata accessor for StoreBook);
      if ((*(v30 + 48))(v32, 1, v234) == 1)
      {
        goto LABEL_18;
      }

      v40 = *(v0 + 2096);
      v41 = *(v0 + 2088);
      v235 = *(v0 + 2072);
      sub_E5198(*(v0 + 2064), v40, type metadata accessor for StoreBook.Origin);
      sub_E5198(v40, v41, type metadata accessor for StoreBook.Origin);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = *(v0 + 2288);
        v43 = *(v0 + 2088);
        sub_42F48(v42, &qword_229528, &qword_1BC5A0);
        sub_E50D4(v43, v42);
      }

      else
      {
        v140 = *(v0 + 2296);
        v141 = *(v0 + 2176);
        v142 = *(v0 + 2168);
        v240 = *(v0 + 2088);
        sub_42F48(v140, &qword_229528, &qword_1BC5A0);
        (*(v141 + 32))(v140, v240, v142);
        v247(v140, 0, 1, v142);
      }

LABEL_19:
      v34 = 0.0;
      if (!*(v274 + 16))
      {
        goto LABEL_27;
      }

      v35 = *(v0 + 2696);
      v36 = sub_43124(v19);
      if ((v37 & 1) == 0)
      {
        goto LABEL_27;
      }

      v38 = *(v0 + 2056);
      v39 = *(v0 + 2048);
      sub_E52A4(*(v274 + 56) + *(*(v0 + 2040) + 72) * v36, v39, type metadata accessor for StoreBookRating);
      sub_E5198(v39, v38, type metadata accessor for StoreBookRating);
      if (*(v38 + 16))
      {
        sub_E530C(*(v0 + 2056), type metadata accessor for StoreBookRating);
LABEL_27:
        v215 = 1;
        v51 = 0.0;
        goto LABEL_28;
      }

      v236 = *(v0 + 2624);
      v44 = *(v0 + 2616);
      v45 = *(v0 + 2280);
      v46 = *(v0 + 2168);
      v47 = *(v0 + 2056);
      v48 = *(v47 + 8);
      sub_43050(v47 + *(*(v0 + 2032) + 24), v45, &qword_229528, &qword_1BC5A0);
      v49 = v44(v45, 1, v46);
      v50 = *(v0 + 2280);
      if (v49 == 1)
      {
        sub_E530C(*(v0 + 2056), type metadata accessor for StoreBookRating);
        sub_42F48(v50, &qword_229528, &qword_1BC5A0);
        goto LABEL_27;
      }

      v143 = *(v0 + 2192);
      (*(*(v0 + 2176) + 32))(*(v0 + 2184), *(v0 + 2280), *(v0 + 2168));
      v34 = v48 + v48 + -1.0;
      sub_1B3FF4();
      v51 = v144;
      v145 = fabs(v34);
      if (v145 > 1.0)
      {
        goto LABEL_81;
      }

      if (v51 < 0.0)
      {
        v34 = v51;
LABEL_81:
        v146 = v145 <= 1.0;
        v270 = *(v0 + 2296);
        v261 = *(v0 + 2288);
        v147 = *(v0 + 2184);
        v148 = *(v0 + 2176);
        v149 = *(v0 + 2168);
        v281 = *(v0 + 2160);
        v253 = *(v0 + 2056);

        sub_E5144();
        swift_allocError();
        *v150 = v34;
        *(v150 + 8) = v146;
        swift_willThrow();
        (*(v148 + 8))(v147, v149);
        sub_E530C(v253, type metadata accessor for StoreBookRating);
        sub_42F48(v261, &qword_229528, &qword_1BC5A0);
        sub_42F48(v270, &qword_229528, &qword_1BC5A0);
        sub_42F48(v281, &qword_22BB28, &qword_1C59E8);
LABEL_68:
        if (qword_2282D8 != -1)
        {
          swift_once();
        }

        v126 = sub_1B4644();
        sub_50E58(v126, qword_260C20);
        swift_errorRetain();
        v127 = sub_1B4624();
        v128 = sub_1B4D94();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *v129 = 138412290;
          swift_errorRetain();
          v131 = _swift_stdlib_bridgeErrorToNSError();
          *(v129 + 4) = v131;
          *v130 = v131;
          _os_log_impl(&dword_0, v127, v128, "Error creating book history: %@", v129, 0xCu);
          sub_42F48(v130, &qword_22B250, &qword_1C3850);
        }

        else
        {
        }

LABEL_75:
        v278 = 0;
        goto LABEL_76;
      }

      v151 = *(v0 + 2056);
      (*(*(v0 + 2176) + 8))(*(v0 + 2184), *(v0 + 2168));
      sub_E530C(v151, type metadata accessor for StoreBookRating);
      v215 = 0;
LABEL_28:
      v52 = *(v0 + 2352);
      v53 = *(v0 + 2160);
      v54 = *(v0 + 2144);
      v247(*(v0 + 2272), 1, 1, *(v0 + 2168));
      sub_43050(v53, v54, &qword_22BB28, &qword_1C59E8);
      if (v258(v54, 1, v52) == 1)
      {
        sub_42F48(*(v0 + 2144), &qword_22BB28, &qword_1C59E8);
      }

      else
      {
        v55 = *(v0 + 2144);
        v56 = *(v55 + *(*(v0 + 2352) + 32));
        sub_E530C(v55, type metadata accessor for StoreBook);
        if (v56 != -1.0)
        {
          v57 = *(v0 + 2272);
          v58 = *(v0 + 2264);
          v59 = *(v0 + 2168);
          sub_1B3FC4();
          sub_42F48(v57, &qword_229528, &qword_1BC5A0);
          v247(v58, 0, 1, v59);
          sub_E50D4(v58, v57);
        }
      }

      v247(*(v0 + 2256), 1, 1, *(v0 + 2168));
      if (v19 == 0x18067B1ECLL)
      {
        if (qword_228358 != -1)
        {
          swift_once();
        }

        v60 = sub_1B4644();
        sub_50E58(v60, qword_260C80);
        v61 = sub_1B4624();
        v62 = sub_1B4DB4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_0, v61, v62, "6449246700 about to calculate finishedIntervalSinceReferenceDate", v63, 2u);
        }
      }

      v64 = *(v0 + 2352);
      v65 = *(v0 + 2136);
      sub_43050(*(v0 + 2160), v65, &qword_22BB28, &qword_1C59E8);
      if (v258(v65, 1, v64) == 1)
      {
        sub_42F48(*(v0 + 2136), &qword_22BB28, &qword_1C59E8);
      }

      else
      {
        v66 = *(v0 + 2136);
        v67 = *(v66 + *(*(v0 + 2352) + 36));
        sub_E530C(v66, type metadata accessor for StoreBook);
        if (v67 != -1.0)
        {
          v68 = *(v0 + 2264);
          v69 = *(v0 + 2256);
          v70 = *(v0 + 2168);
          sub_1B3FC4();
          sub_42F48(v69, &qword_229528, &qword_1BC5A0);
          v247(v68, 0, 1, v70);
          sub_E50D4(v68, v69);
        }
      }

      if (*(v276 + 16))
      {
        v71 = *(v0 + 2720);
        v72 = sub_43124(v19);
        if (v73)
        {
          v74 = *(*(v276 + 56) + 2 * v72);
        }

        else
        {
          v74 = 3;
        }

        v237 = v74;
        v75 = *(v0 + 2720);
        v76 = sub_43124(v19);
        if (v77)
        {
          v248 = *(*(v276 + 56) + 2 * v76 + 1);
        }

        else
        {
          v248 = 0;
        }
      }

      else
      {
        v248 = 0;
        v237 = 3;
      }

      if (*(v272 + 16))
      {
        v78 = *(v0 + 2744);
        v79 = sub_3A678(v16, v15);
        v81 = v80;

        v82 = _swiftEmptyArrayStorage;
        if (v81)
        {
          v83 = *(*(v272 + 56) + 8 * v79);
        }
      }

      else
      {

        v82 = _swiftEmptyArrayStorage;
      }

      v252 = v82;
      v226 = *(v0 + 2288);
      v230 = *(v0 + 2352);
      v84 = *(v0 + 2272);
      v85 = *(v0 + 2240);
      v217 = *(v0 + 2232);
      v219 = *(v0 + 2256);
      v221 = *(v0 + 2224);
      v223 = *(v0 + 2160);
      v86 = *(v0 + 2128);
      sub_43050(*(v0 + 2296), *(v0 + 2248), &qword_229528, &qword_1BC5A0);
      sub_43050(v84, v85, &qword_229528, &qword_1BC5A0);
      sub_43050(v219, v217, &qword_229528, &qword_1BC5A0);
      sub_43050(v226, v221, &qword_229528, &qword_1BC5A0);
      sub_43050(v223, v86, &qword_22BB28, &qword_1C59E8);
      if (v258(v86, 1, v230) == 1)
      {
        sub_42F48(*(v0 + 2128), &qword_22BB28, &qword_1C59E8);
        v231 = 0.0;
        v227 = 1;
      }

      else
      {
        v87 = *(v0 + 2128);
        v88 = v87 + *(*(v0 + 2352) + 24);
        v231 = *v88;
        v227 = *(v88 + 8);
        sub_E530C(v87, type metadata accessor for StoreBook);
      }

      v89 = *(v0 + 2352);
      v90 = *(v0 + 2120);
      sub_43050(*(v0 + 2160), v90, &qword_22BB28, &qword_1C59E8);
      if (v258(v90, 1, v89) == 1)
      {
        sub_42F48(*(v0 + 2120), &qword_22BB28, &qword_1C59E8);
        v91 = 0uLL;
        v92 = 1;
      }

      else
      {
        v93 = *(v0 + 2120);
        v94 = v93 + *(*(v0 + 2352) + 28);
        v224 = *v94;
        v92 = *(v94 + 16);
        sub_E530C(v93, type metadata accessor for StoreBook);
        v91 = v224;
      }

      v95 = *(v0 + 2352);
      v96 = *(v0 + 2160);
      v97 = *(v0 + 2112);
      *(v0 + 1888) = v91;
      *v255 = v92;
      *(v0 + 1912) = v34;
      *(v0 + 1920) = v51;
      *(v255 + 24) = v215;
      *(v0 + 393) = v237;
      sub_43050(v96, v97, &qword_22BB28, &qword_1C59E8);
      if (v258(v97, 1, v95) == 1)
      {
        sub_42F48(*(v0 + 2112), &qword_22BB28, &qword_1C59E8);
        v98 = 0uLL;
        v99 = 1;
      }

      else
      {
        v100 = *(v0 + 2112);
        v101 = v100 + *(*(v0 + 2352) + 40);
        v238 = *v101;
        v99 = *(v101 + 16);
        sub_E530C(v100, type metadata accessor for StoreBook);
        v98 = v238;
      }

      v102 = *(v0 + 2352);
      v103 = *(v0 + 2160);
      v104 = *(v0 + 2104);
      *(v0 + 1936) = v98;
      *(v255 + 48) = v99;
      sub_43050(v103, v104, &qword_22BB28, &qword_1C59E8);
      if (v258(v104, 1, v102) == 1)
      {
        sub_42F48(*(v0 + 2104), &qword_22BB28, &qword_1C59E8);
        v105 = 0uLL;
        v106 = 1;
      }

      else
      {
        v107 = *(v0 + 2104);
        v108 = v107 + *(*(v0 + 2352) + 44);
        v268 = *v108;
        v106 = *(v108 + 16);
        sub_E530C(v107, type metadata accessor for StoreBook);
        v105 = v268;
      }

      v109 = *(v0 + 2536);
      v110 = *(v0 + 2512);
      v111 = *(v0 + 2472);
      v112 = *(v0 + 2464);
      v113 = *(v0 + 2344);
      v114 = *(v0 + 2248);
      v115 = *(v0 + 2240);
      v116 = *(v0 + 2232);
      v117 = *(v0 + 2224);
      v118 = *(v0 + 2200);
      v119 = *(v0 + 2192);
      v120 = *(v0 + 2024);
      v121 = *(v0 + 2008);
      *(v255 + 56) = v105;
      *(v255 + 72) = v106;
      sub_DAB80(v121, v19, v252, v119, v113, v118, v114, v115, (v0 + 400), v112, v111, v116, v117, v231, v227, v244, v242, (v0 + 393), v248, (v0 + 1936), (v0 + 1960), v110, v109);
      if (v278)
      {
        v279 = *(v0 + 2296);
        v259 = *(v0 + 2288);
        v249 = *(v0 + 2272);
        v239 = *(v0 + 2256);
        v122 = *(v0 + 2248);
        v123 = *(v0 + 2240);
        v124 = *(v0 + 2232);
        v125 = *(v0 + 2224);
        v269 = *(v0 + 2160);

        sub_42F48(v125, &qword_229528, &qword_1BC5A0);
        sub_42F48(v124, &qword_229528, &qword_1BC5A0);
        sub_42F48(v123, &qword_229528, &qword_1BC5A0);
        sub_42F48(v122, &qword_229528, &qword_1BC5A0);
        sub_42F48(v239, &qword_229528, &qword_1BC5A0);
        sub_42F48(v249, &qword_229528, &qword_1BC5A0);
        sub_42F48(v259, &qword_229528, &qword_1BC5A0);
        sub_42F48(v279, &qword_229528, &qword_1BC5A0);
        sub_42F48(v269, &qword_22BB28, &qword_1C59E8);
        goto LABEL_68;
      }

      v132 = *(v0 + 2248);
      v133 = *(v0 + 2240);
      v134 = *(v0 + 2232);
      v135 = *(v0 + 2224);

      sub_42F48(v135, &qword_229528, &qword_1BC5A0);
      sub_42F48(v134, &qword_229528, &qword_1BC5A0);
      sub_42F48(v133, &qword_229528, &qword_1BC5A0);
      sub_42F48(v132, &qword_229528, &qword_1BC5A0);
      memcpy((v0 + 16), (v0 + 400), 0x179uLL);
      memcpy(__dst, (v0 + 16), 0x179uLL);
      v136 = BookHistory.isEmpty.getter();
      v280 = *(v0 + 2296);
      v260 = *(v0 + 2288);
      v137 = *(v0 + 2272);
      v138 = *(v0 + 2256);
      v139 = *(v0 + 2160);
      if (v136)
      {
        sub_42F48(*(v0 + 2256), &qword_229528, &qword_1BC5A0);
        sub_42F48(v137, &qword_229528, &qword_1BC5A0);
        sub_42F48(v260, &qword_229528, &qword_1BC5A0);
        sub_42F48(v280, &qword_229528, &qword_1BC5A0);
        sub_42F48(v139, &qword_22BB28, &qword_1C59E8);
        goto LABEL_75;
      }

      v286 = *(v0 + 2160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v283;
      sub_53C58((v0 + 16), v19, isUniquelyReferenced_nonNull_native);
      sub_42F48(v138, &qword_229528, &qword_1BC5A0);
      sub_42F48(v137, &qword_229528, &qword_1BC5A0);
      sub_42F48(v260, &qword_229528, &qword_1BC5A0);
      sub_42F48(v280, &qword_229528, &qword_1BC5A0);
      sub_42F48(v286, &qword_22BB28, &qword_1C59E8);
      v285 = __dst[0];
      v278 = 0;
      v283 = __dst[0];
LABEL_76:
      v2 = v255;
      v4 = v242;
      v3 = v244;
    }
  }

  while (2)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_115;
    }

    if (v12 < v10)
    {
      v11 = *(v0 + 2672);
      v9 = *(v11 + 8 * v12 + 56);
      ++v1;
      if (v9)
      {
        v1 = v12;
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  v153 = *(v0 + 2744);
  v154 = *(v0 + 2720);
  v155 = *(v0 + 2696);
  v156 = *(v0 + 2672);
  v157 = *(v0 + 2656);
  v158 = *(v0 + 2640);

  if (v157 + 1 != v158)
  {
    v172 = *(v0 + 2656);
    *(v0 + 2664) = v285;
    *(v0 + 2656) = v172 + 1;
    *(v0 + 2648) = v283;
    if (v172 == 0x20C49BA5E353F6)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      return;
    }

    v173 = 1000 * (v172 + 1);
    v174 = 1000 * v172 + 1999;
    if (v174 >= *(v0 + 2632) - 1)
    {
      v174 = *(v0 + 2632) - 1;
    }

    if (v174 < v173)
    {
      goto LABEL_117;
    }

    v175 = *(v0 + 2576);
    v176 = *(v175 + 16);
    if (v176 < v173 || v176 <= v174)
    {
      goto LABEL_118;
    }

    v178 = sub_40790(v175 + 32, v173, 2 * v174 + 3);
    v179 = v178;
    *(v0 + 2672) = v178;
    v180 = v178 + 56;
    v181 = -1;
    v182 = -1 << *(v178 + 32);
    if (-v182 < 64)
    {
      v181 = ~(-1 << -v182);
    }

    v183 = v181 & *(v178 + 56);
    v184 = (63 - v182) >> 6;

    v185 = 0;
    v186 = _swiftEmptyArrayStorage;
    if (!v183)
    {
      goto LABEL_101;
    }

    do
    {
LABEL_99:
      while (1)
      {
        v187 = __clz(__rbit64(v183));
        v183 &= v183 - 1;
        v188 = (*(v179 + 48) + ((v185 << 10) | (16 * v187)));
        v189 = *v188;
        v190 = v188[1];

        v191 = sub_CC298(v189, v190);
        if ((v192 & 1) == 0)
        {
          break;
        }

        if (!v183)
        {
          goto LABEL_101;
        }
      }

      v194 = v191;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_33008(0, *(v186 + 2) + 1, 1, v186);
      }

      v196 = *(v186 + 2);
      v195 = *(v186 + 3);
      if (v196 >= v195 >> 1)
      {
        v186 = sub_33008((v195 > 1), v196 + 1, 1, v186);
      }

      *(v186 + 2) = v196 + 1;
      *&v186[8 * v196 + 32] = v194;
    }

    while (v183);
LABEL_101:
    while (1)
    {
      v193 = v185 + 1;
      if (__OFADD__(v185, 1))
      {
        break;
      }

      if (v193 >= v184)
      {
        v197 = *(v0 + 2024);

        v198 = sub_40854(v186);
        *(v0 + 2680) = v198;

        v199 = v197[15];
        v200 = v197[16];
        sub_2698(v197 + 12, v199);
        v201 = *(v200 + 8);
        v287 = (v201 + *v201);
        v202 = v201[1];
        v203 = swift_task_alloc();
        *(v0 + 2688) = v203;
        *v203 = v0;
        v203[1] = sub_D7854;

        v287(v198, v199, v200);
        return;
      }

      v183 = *(v180 + 8 * v193);
      ++v185;
      if (v183)
      {
        v185 = v193;
        goto LABEL_99;
      }
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v159 = *(v0 + 2576);
  v160 = *(v0 + 2536);
  v161 = *(v0 + 2512);
  v162 = *(v0 + 2480);
  v163 = *(v0 + 2456);
  v207 = *(v0 + 2384);
  v208 = *(v0 + 2376);
  v204 = *(v0 + 2336);
  v205 = *(v0 + 2344);
  v206 = *(v0 + 2328);
  v209 = *(v0 + 2368);
  v210 = *(v0 + 2320);
  v211 = *(v0 + 2312);
  v212 = *(v0 + 2304);
  v213 = *(v0 + 2296);
  v214 = *(v0 + 2288);
  v216 = *(v0 + 2280);
  v218 = *(v0 + 2272);
  v220 = *(v0 + 2264);
  v222 = *(v0 + 2256);
  v225 = *(v0 + 2248);
  v228 = *(v0 + 2240);
  v232 = *(v0 + 2232);
  v241 = *(v0 + 2224);
  v243 = *(v0 + 2216);
  v245 = *(v0 + 2208);
  v164 = *(v0 + 2200);
  v165 = *(v0 + 2192);
  v166 = *(v0 + 2176);
  v167 = *(v0 + 2168);
  v250 = *(v0 + 2184);
  v254 = *(v0 + 2160);
  v256 = *(v0 + 2152);
  v262 = *(v0 + 2144);
  v263 = *(v0 + 2136);
  v264 = *(v0 + 2128);
  v265 = *(v0 + 2120);
  v266 = *(v0 + 2112);
  v271 = *(v0 + 2104);
  v273 = *(v0 + 2096);
  v275 = *(v0 + 2088);
  v277 = *(v0 + 2064);
  v282 = *(v0 + 2056);
  v284 = *(v0 + 2048);
  v168 = *(v0 + 2016);

  memcpy(__dst, (v0 + 784), 0x16BuLL);
  sub_71E28(v0 + 784, v0 + 1520);
  v169 = Dictionary<>.mostRecentBookHistories(limit:scorerConfig:)(v168, __dst, v285);

  memcpy((v0 + 1152), __dst, 0x16BuLL);
  sub_71DC0(v0 + 1152);
  v170 = *(v166 + 8);
  v170(v165, v167);
  v170(v164, v167);
  sub_42F48(v204, &qword_229528, &qword_1BC5A0);
  sub_42F48(v205, &qword_229528, &qword_1BC5A0);
  sub_42F48(v206, &qword_229528, &qword_1BC5A0);

  v171 = *(v0 + 8);

  v171(v169);
}

uint64_t sub_D98A8()
{
  v40 = v0[302];
  v1 = v0[298];
  v2 = v0[297];
  v3 = v0[296];
  v4 = v0[293];
  v5 = v0[292];
  v6 = v0[291];
  v7 = v0[290];
  v8 = v0[289];
  v9 = v0[288];
  v10 = v0[287];
  v13 = v0[286];
  v14 = v0[285];
  v15 = v0[284];
  v16 = v0[283];
  v17 = v0[282];
  v18 = v0[281];
  v19 = v0[280];
  v20 = v0[279];
  v21 = v0[278];
  v22 = v0[277];
  v23 = v0[276];
  v24 = v0[275];
  v25 = v0[274];
  v26 = v0[273];
  v27 = v0[270];
  v28 = v0[269];
  v29 = v0[268];
  v30 = v0[267];
  v31 = v0[266];
  v32 = v0[265];
  v33 = v0[264];
  v34 = v0[263];
  v35 = v0[262];
  v36 = v0[261];
  v37 = v0[258];
  v38 = v0[257];
  v39 = v0[256];

  v11 = v0[1];

  return v11();
}

uint64_t sub_D9B1C()
{
  v1 = v0[301];

  v41 = v0[304];
  v2 = v0[298];
  v3 = v0[297];
  v4 = v0[296];
  v5 = v0[293];
  v6 = v0[292];
  v7 = v0[291];
  v8 = v0[290];
  v9 = v0[289];
  v10 = v0[288];
  v11 = v0[287];
  v14 = v0[286];
  v15 = v0[285];
  v16 = v0[284];
  v17 = v0[283];
  v18 = v0[282];
  v19 = v0[281];
  v20 = v0[280];
  v21 = v0[279];
  v22 = v0[278];
  v23 = v0[277];
  v24 = v0[276];
  v25 = v0[275];
  v26 = v0[274];
  v27 = v0[273];
  v28 = v0[270];
  v29 = v0[269];
  v30 = v0[268];
  v31 = v0[267];
  v32 = v0[266];
  v33 = v0[265];
  v34 = v0[264];
  v35 = v0[263];
  v36 = v0[262];
  v37 = v0[261];
  v38 = v0[258];
  v39 = v0[257];
  v40 = v0[256];

  v12 = v0[1];

  return v12();
}

uint64_t sub_D9D98()
{
  v40 = v0[324];
  v1 = v0[298];
  v2 = v0[297];
  v3 = v0[296];
  v4 = v0[293];
  v5 = v0[292];
  v6 = v0[291];
  v7 = v0[290];
  v8 = v0[289];
  v9 = v0[288];
  v10 = v0[287];
  v13 = v0[286];
  v14 = v0[285];
  v15 = v0[284];
  v16 = v0[283];
  v17 = v0[282];
  v18 = v0[281];
  v19 = v0[280];
  v20 = v0[279];
  v21 = v0[278];
  v22 = v0[277];
  v23 = v0[276];
  v24 = v0[275];
  v25 = v0[274];
  v26 = v0[273];
  v27 = v0[270];
  v28 = v0[269];
  v29 = v0[268];
  v30 = v0[267];
  v31 = v0[266];
  v32 = v0[265];
  v33 = v0[264];
  v34 = v0[263];
  v35 = v0[262];
  v36 = v0[261];
  v37 = v0[258];
  v38 = v0[257];
  v39 = v0[256];

  v11 = v0[1];

  return v11();
}

uint64_t sub_DA00C()
{
  sub_42F48(v0[293], &qword_229528, &qword_1BC5A0);
  v40 = v0[326];
  v1 = v0[298];
  v2 = v0[297];
  v3 = v0[296];
  v4 = v0[293];
  v5 = v0[292];
  v6 = v0[291];
  v7 = v0[290];
  v8 = v0[289];
  v9 = v0[288];
  v10 = v0[287];
  v13 = v0[286];
  v14 = v0[285];
  v15 = v0[284];
  v16 = v0[283];
  v17 = v0[282];
  v18 = v0[281];
  v19 = v0[280];
  v20 = v0[279];
  v21 = v0[278];
  v22 = v0[277];
  v23 = v0[276];
  v24 = v0[275];
  v25 = v0[274];
  v26 = v0[273];
  v27 = v0[270];
  v28 = v0[269];
  v29 = v0[268];
  v30 = v0[267];
  v31 = v0[266];
  v32 = v0[265];
  v33 = v0[264];
  v34 = v0[263];
  v35 = v0[262];
  v36 = v0[261];
  v37 = v0[258];
  v38 = v0[257];
  v39 = v0[256];

  v11 = v0[1];

  return v11();
}

uint64_t sub_DA298()
{
  v1 = v0[293];
  v2 = v0[292];
  v3 = v0[291];
  v4 = v0[275];
  v5 = v0[271];
  v6 = *(v0[272] + 8);
  v6(v0[274], v5);
  v6(v4, v5);
  sub_42F48(v2, &qword_229528, &qword_1BC5A0);
  sub_42F48(v1, &qword_229528, &qword_1BC5A0);
  sub_42F48(v3, &qword_229528, &qword_1BC5A0);
  v46 = v0[338];
  v7 = v0[298];
  v8 = v0[297];
  v9 = v0[296];
  v10 = v0[293];
  v11 = v0[292];
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[289];
  v15 = v0[288];
  v16 = v0[287];
  v19 = v0[286];
  v20 = v0[285];
  v21 = v0[284];
  v22 = v0[283];
  v23 = v0[282];
  v24 = v0[281];
  v25 = v0[280];
  v26 = v0[279];
  v27 = v0[278];
  v28 = v0[277];
  v29 = v0[276];
  v30 = v0[275];
  v31 = v0[274];
  v32 = v0[273];
  v33 = v0[270];
  v34 = v0[269];
  v35 = v0[268];
  v36 = v0[267];
  v37 = v0[266];
  v38 = v0[265];
  v39 = v0[264];
  v40 = v0[263];
  v41 = v0[262];
  v42 = v0[261];
  v43 = v0[258];
  v44 = v0[257];
  v45 = v0[256];

  v17 = v0[1];

  return v17();
}

uint64_t sub_DA590()
{
  v1 = v0[293];
  v2 = v0[292];
  v3 = v0[291];
  v4 = v0[275];
  v5 = v0[271];
  v6 = *(v0[272] + 8);
  v6(v0[274], v5);
  v6(v4, v5);
  sub_42F48(v2, &qword_229528, &qword_1BC5A0);
  sub_42F48(v1, &qword_229528, &qword_1BC5A0);
  sub_42F48(v3, &qword_229528, &qword_1BC5A0);
  v46 = v0[341];
  v7 = v0[298];
  v8 = v0[297];
  v9 = v0[296];
  v10 = v0[293];
  v11 = v0[292];
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[289];
  v15 = v0[288];
  v16 = v0[287];
  v19 = v0[286];
  v20 = v0[285];
  v21 = v0[284];
  v22 = v0[283];
  v23 = v0[282];
  v24 = v0[281];
  v25 = v0[280];
  v26 = v0[279];
  v27 = v0[278];
  v28 = v0[277];
  v29 = v0[276];
  v30 = v0[275];
  v31 = v0[274];
  v32 = v0[273];
  v33 = v0[270];
  v34 = v0[269];
  v35 = v0[268];
  v36 = v0[267];
  v37 = v0[266];
  v38 = v0[265];
  v39 = v0[264];
  v40 = v0[263];
  v41 = v0[262];
  v42 = v0[261];
  v43 = v0[258];
  v44 = v0[257];
  v45 = v0[256];

  v17 = v0[1];

  return v17();
}

uint64_t sub_DA888()
{
  v1 = v0[293];
  v2 = v0[292];
  v3 = v0[291];
  v4 = v0[275];
  v5 = v0[271];
  v6 = *(v0[272] + 8);
  v6(v0[274], v5);
  v6(v4, v5);
  sub_42F48(v2, &qword_229528, &qword_1BC5A0);
  sub_42F48(v1, &qword_229528, &qword_1BC5A0);
  sub_42F48(v3, &qword_229528, &qword_1BC5A0);
  v46 = v0[344];
  v7 = v0[298];
  v8 = v0[297];
  v9 = v0[296];
  v10 = v0[293];
  v11 = v0[292];
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[289];
  v15 = v0[288];
  v16 = v0[287];
  v19 = v0[286];
  v20 = v0[285];
  v21 = v0[284];
  v22 = v0[283];
  v23 = v0[282];
  v24 = v0[281];
  v25 = v0[280];
  v26 = v0[279];
  v27 = v0[278];
  v28 = v0[277];
  v29 = v0[276];
  v30 = v0[275];
  v31 = v0[274];
  v32 = v0[273];
  v33 = v0[270];
  v34 = v0[269];
  v35 = v0[268];
  v36 = v0[267];
  v37 = v0[266];
  v38 = v0[265];
  v39 = v0[264];
  v40 = v0[263];
  v41 = v0[262];
  v42 = v0[261];
  v43 = v0[258];
  v44 = v0[257];
  v45 = v0[256];

  v17 = v0[1];

  return v17();
}

uint64_t sub_DAB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, uint64_t)@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, double a14, unsigned __int8 a15, uint64_t a16, double *a17, unsigned __int8 *a18, unsigned __int8 a19, uint64_t *a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  v492 = a8;
  v435 = a7;
  v416[1] = a6;
  v487 = a5;
  v493 = *&a3;
  v459 = a2;
  v385 = a11;
  v382 = a10;
  v449 = a1;
  v380 = a9;
  LODWORD(v491) = a15;
  v483 = a14;
  v484 = a12;
  v481 = a18;
  v482 = a16;
  v494 = type metadata accessor for Event();
  v472 = *(v494 - 8);
  v24 = *(v472 + 8);
  v25 = __chkstk_darwin(v494);
  v479 = &v379 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v489 = &v379 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v379 - v30;
  __chkstk_darwin(v29);
  v33 = &v379 - v32;
  v495 = sub_1B40C4();
  v444 = *(v495 - 8);
  v34 = *(v444 + 64);
  v35 = __chkstk_darwin(v495);
  v381 = &v379 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v384 = &v379 - v38;
  v39 = __chkstk_darwin(v37);
  v468 = &v379 - v40;
  v41 = __chkstk_darwin(v39);
  v486 = &v379 - v42;
  v43 = __chkstk_darwin(v41);
  v471 = &v379 - v44;
  v45 = __chkstk_darwin(v43);
  v392 = &v379 - v46;
  v47 = __chkstk_darwin(v45);
  v420 = &v379 - v48;
  v49 = __chkstk_darwin(v47);
  v418 = &v379 - v50;
  v51 = __chkstk_darwin(v49);
  v386 = &v379 - v52;
  v53 = __chkstk_darwin(v51);
  v456 = &v379 - v54;
  v55 = __chkstk_darwin(v53);
  v475 = &v379 - v56;
  v57 = __chkstk_darwin(v55);
  v458 = &v379 - v58;
  v59 = __chkstk_darwin(v57);
  v434 = &v379 - v60;
  v61 = __chkstk_darwin(v59);
  v455 = &v379 - v62;
  v63 = __chkstk_darwin(v61);
  v454 = &v379 - v64;
  v65 = __chkstk_darwin(v63);
  v433 = &v379 - v66;
  v67 = __chkstk_darwin(v65);
  v441 = &v379 - v68;
  v69 = __chkstk_darwin(v67);
  v432 = &v379 - v70;
  v71 = __chkstk_darwin(v69);
  v443 = &v379 - v72;
  v73 = __chkstk_darwin(v71);
  v462 = &v379 - v74;
  v75 = __chkstk_darwin(v73);
  v461 = &v379 - v76;
  v77 = __chkstk_darwin(v75);
  v442 = &v379 - v78;
  v79 = __chkstk_darwin(v77);
  v431 = &v379 - v80;
  __chkstk_darwin(v79);
  v466 = &v379 - v81;
  v82 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v83 = *(*(v82 - 8) + 64);
  v84 = __chkstk_darwin(v82 - 8);
  v383 = &v379 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __chkstk_darwin(v84);
  v414 = &v379 - v87;
  v88 = __chkstk_darwin(v86);
  v419 = &v379 - v89;
  v90 = __chkstk_darwin(v88);
  v417 = &v379 - v91;
  v92 = __chkstk_darwin(v90);
  v438 = &v379 - v93;
  v94 = __chkstk_darwin(v92);
  v387 = &v379 - v95;
  v96 = __chkstk_darwin(v94);
  v457 = &v379 - v97;
  v98 = __chkstk_darwin(v96);
  v485 = &v379 - v99;
  v100 = __chkstk_darwin(v98);
  v430 = &v379 - v101;
  v102 = __chkstk_darwin(v100);
  v469 = &v379 - v103;
  v104 = __chkstk_darwin(v102);
  v490 = &v379 - v105;
  v106 = __chkstk_darwin(v104);
  v108 = &v379 - v107;
  v109 = __chkstk_darwin(v106);
  v470 = &v379 - v110;
  v111 = __chkstk_darwin(v109);
  v480 = &v379 - v112;
  v113 = __chkstk_darwin(v111);
  v464 = &v379 - v114;
  v115 = __chkstk_darwin(v113);
  v117 = &v379 - v116;
  __chkstk_darwin(v115);
  v119 = &v379 - v118;
  v390 = *(v482 + 16);
  v120 = *(a17 + 1);
  v477 = *a17;
  v476 = v120;
  LODWORD(v482) = *(a17 + 16);
  v121 = v484;
  v453 = *v481;
  v122 = a20[1];
  v404 = *a20;
  v403 = v122;
  v388 = *(a20 + 16);
  v123 = v444;
  v124 = a21[1];
  v406 = *a21;
  v405 = v124;
  v389 = *(a21 + 16);
  v497 = a4;
  v125 = v488;
  v416[0] = sub_CC628(sub_E56CC);
  v415 = v126;
  v467 = a4;
  v496 = a4;
  *&v391 = COERCE_DOUBLE(sub_CC628(sub_E5264));
  v413 = v127;
  v379 = v125;
  if (v459 == 0x18067B1ECLL)
  {
    if (qword_228358 != -1)
    {
      swift_once();
    }

    v128 = sub_1B4644();
    sub_50E58(v128, qword_260C80);
    sub_43050(v121, v119, &qword_229528, &qword_1BC5A0);
    v129 = sub_1B4624();
    v130 = sub_1B4DB4();
    if (os_log_type_enabled(v129, v130))
    {
      LODWORD(v488) = v130;
      v131 = swift_slowAlloc();
      v487 = swift_slowAlloc();
      v498 = v487;
      *v131 = 136315138;
      sub_43050(v119, v117, &qword_229528, &qword_1BC5A0);
      if ((*(v123 + 48))(v117, 1, v495) == 1)
      {
        sub_42F48(v117, &qword_229528, &qword_1BC5A0);
        v132 = 0xE500000000000000;
        v133 = 0x3E6C696E3CLL;
      }

      else
      {
        v134 = sub_1B3FD4();
        v132 = v135;
        v136 = v117;
        v133 = v134;
        (*(v123 + 8))(v136, v495);
      }

      sub_42F48(v119, &qword_229528, &qword_1BC5A0);
      v137 = sub_60FF4(v133, v132, &v498);

      *(v131 + 4) = v137;
      _os_log_impl(&dword_0, v129, v488, "6449246700 finishedDate=%s", v131, 0xCu);
      sub_2BF8(v487);
    }

    else
    {

      sub_42F48(v119, &qword_229528, &qword_1BC5A0);
    }
  }

  v138 = *(v123 + 56);
  v139 = v464;
  v140 = v495;
  (v138)(v464, 1, 1, v495);
  (v138)(v480, 1, 1, v140);
  v488 = v123 + 56;
  v487 = v138;
  (v138)(v470, 1, 1, v140);
  v141 = v449;
  LODWORD(v484) = sub_2A978(0xFu, v449);
  v421 = sub_2A978(0x10u, v141);
  LODWORD(v481) = sub_2A978(0x11u, v141);
  v142 = sub_2A978(0, v141);
  v429 = sub_2A978(3u, v141);
  v428 = sub_2A978(2u, v141);
  v452 = sub_2A978(1u, v141);
  v427 = sub_2A978(0xAu, v141);
  v143 = sub_2A978(7u, v141);
  v426 = sub_2A978(0xDu, v141);
  v425 = sub_2A978(0xBu, v141);
  v424 = sub_2A978(0xCu, v141);
  v451 = sub_2A978(0xEu, v141);
  v144 = sub_2A978(0, v141);
  v145 = v483;
  if (!v144)
  {
    v145 = 0.0;
  }

  v446 = v145;
  v450 = !v144 | v491;
  v146 = sub_2A978(3u, v141);
  v147 = v477;
  if (!v146)
  {
    v147 = 0.0;
  }

  v440 = v147;
  v148 = v476;
  if (!v146)
  {
    *&v148 = 0.0;
  }

  v439 = *&v148;
  v448 = !v146 | v482;
  sub_43050(v492, v108, &qword_229528, &qword_1BC5A0);
  v149 = *(v123 + 48);
  v474 = v123 + 48;
  v473 = v149;
  if (v149(v108, 1, v140) == 1)
  {
    sub_42F48(v108, &qword_229528, &qword_1BC5A0);
LABEL_21:
    v153 = 1;
    v152 = 0.0;
    goto LABEL_22;
  }

  v150 = v466;
  (*(v123 + 32))(v466, v108, v495);
  if (!v143 && !v142)
  {
    (*(v123 + 8))(v150, v495);
    goto LABEL_21;
  }

  sub_1B3FF4();
  v152 = v151;
  (*(v123 + 8))(v150, v495);
  v153 = 0;
LABEL_22:
  v154 = v438;
  v398 = v153;
  v399 = v152;
  v155 = *(*&v493 + 16);
  v412 = 2;
  if (*&v155 == 0.0)
  {
    v465 = 0;
    *&v476 = 0.0;
    v158 = 0.0;
    v466 = 1;
    LODWORD(v477) = 1;
    v395 = 0.0;
    v513 = 1;
    v394 = 1;
    v397 = 0.0;
    v396 = 1;
    v401 = 0.0;
    v400 = 1;
    v159 = 0.0;
    v393 = 1;
    v160 = 0.0;
    v402 = 1;
    v161 = 0.0;
    v445 = 1;
    v422 = 0.0;
    v293 = 1;
    v423 = 0.0;
    v437 = 1;
LABEL_156:
    sub_43050(v435, v154, &qword_229528, &qword_1BC5A0);
    v294 = v473;
    v295 = v473(v154, 1, v495);
    v296 = v486;
    v297 = v420;
    v298 = v418;
    if (v295 == 1)
    {
      sub_42F48(v154, &qword_229528, &qword_1BC5A0);
    }

    else
    {
      (*(v123 + 32))(v418, v154, v495);
      if (sub_2A978(8u, v449))
      {
        sub_1B3FF4();
        v300 = v299;
        (*(v123 + 8))(v298, v495);
        LODWORD(v492) = 0;
        goto LABEL_162;
      }

      (*(v123 + 8))(v298, v495);
    }

    LODWORD(v492) = 1;
    v300 = 0.0;
LABEL_162:
    v301 = v417;
    sub_43050(a13, v417, &qword_229528, &qword_1BC5A0);
    v302 = v294(v301, 1, v495);
    v493 = *&a13;
    if (v302 == 1)
    {
      sub_42F48(v301, &qword_229528, &qword_1BC5A0);
    }

    else
    {
      (*(v123 + 32))(v297, v301, v495);
      if (sub_2A978(9u, v449))
      {
        sub_1B3FF4();
        v304 = v303;
        (*(v123 + 8))(v297, v495);
        LODWORD(v491) = 0;
        goto LABEL_168;
      }

      (*(v123 + 8))(v297, v495);
    }

    LODWORD(v491) = 1;
    v304 = 0.0;
LABEL_168:
    if (v484 & LOBYTE(v477))
    {
      v305 = 0;
    }

    else
    {
      v305 = v476;
    }

    v306 = v419;
    if (!v421)
    {
      v494 = 0;
      v307 = v465;
      goto LABEL_186;
    }

    sub_43050(v480, v419, &qword_229528, &qword_1BC5A0);
    if (v294(v306, 1, v495) == 1)
    {
      sub_42F48(v306, &qword_229528, &qword_1BC5A0);
      v307 = v465;
    }

    else
    {
      v436 = v293;
      v308 = v123 + 32;
      v309 = *(v123 + 32);
      v309(v392, v306, v495);
      sub_1B40B4();
      v310 = OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone;
      Date.beginningOfDay(timeZone:)(v478 + OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone, v296);
      v494 = 0;
      v311 = (v308 - 24);
      LODWORD(v490) = 1;
      v489 = v305;
      v312 = v468;
      while (1)
      {
        sub_1B4024();
        v313 = v475;
        Date.beginningOfDay(timeZone:)(v478 + v310, v475);
        v314 = *v311;
        v315 = v495;
        (*v311)(v312, v495);
        v314(v486, v315);
        v316 = v313;
        v317 = v486;
        v309(v486, v316, v315);
        if (sub_1B4094() == 1)
        {
          break;
        }

        if (*(a22 + 16))
        {
          sub_3A808(v317);
          if (v318)
          {
            v220 = (v490 & 1) == 0;
            LODWORD(v490) = 0;
            v319 = v494;
            if (!v220)
            {
              v319 = 0;
            }

            v494 = v319 + 1;
            if (__OFADD__(v319, 1))
            {
              __break(1u);
              break;
            }
          }
        }
      }

      v320 = v495;
      v314(v317, v495);
      v314(v471, v320);
      v314(v392, v320);
      v123 = v444;
      v307 = v465;
      LOBYTE(v293) = v436;
      v305 = v489;
      if ((v490 & 1) == 0)
      {
LABEL_186:
        if (v481 & v466)
        {
          v321 = 0;
        }

        else
        {
          v321 = v307;
        }

        sub_1B3FF4();
        v323 = v322;
        v324 = *v416;
        v325 = 0.0;
        if (v415)
        {
          v324 = 0.0;
        }

        if (v324 > v323)
        {
          __break(1u);
          goto LABEL_268;
        }

        if (v437)
        {
          v326 = v414;
          if (v388)
          {
            v404 = 0;
            v403 = 0;
            v327 = 0;
            v328 = 255;
            v423 = 0.0;
            if ((v293 & 1) == 0)
            {
              goto LABEL_200;
            }

LABEL_197:
            if (!v389)
            {
              v329 = 1;
              v422 = v324;
              v330 = 1;
LABEL_203:
              if ((v413 & 1) == 0)
              {
                v333 = 0;
                v332 = 1;
                v331 = *&v391;
                goto LABEL_216;
              }

              if (v390)
              {
                v412 = 0;
                v331 = 0.0;
                v332 = 0;
                v333 = -1;
LABEL_216:
                if ((v450 & 1) == 0 && (v446 < 0.0 || v446 > 1.0))
                {
                  sub_E1C20();
                  swift_allocError();
                  v352 = 0;
                  v359 = v446;
                  *v351 = v459;
                  *(v351 + 8) = v359;
                  goto LABEL_253;
                }

                LOBYTE(v498) = v450 & 1;
                if ((v445 & 1) == 0 && (v161 < 0.0 || v161 > 1.0))
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v161;
                  v352 = 1;
                  goto LABEL_253;
                }

                v512 = v445 & 1;
                if (v331 >= 0.0)
                {
                  v332 = 0;
                }

                if (v332 == 1)
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v331;
                  v352 = 2;
LABEL_253:
                  *(v351 + 16) = v352;
                  swift_willThrow();
                  sub_42F48(v470, &qword_229528, &qword_1BC5A0);
                  sub_42F48(v480, &qword_229528, &qword_1BC5A0);
                  v363 = v464;
                  return sub_42F48(v363, &qword_229528, &qword_1BC5A0);
                }

                v511 = v448 & 1;
                if (!(v402 & 1 | (v160 >= 0.0)))
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v160;
                  v352 = 4;
                  goto LABEL_253;
                }

                v510 = v402 & 1;
                if (!(v393 & 1 | (v159 >= 0.0)))
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v159;
                  v352 = 5;
                  goto LABEL_253;
                }

                v509 = v393 & 1;
                if (!(v400 & 1 | (v401 >= 0.0)))
                {
                  v360 = v401;
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v360;
                  v352 = 6;
                  goto LABEL_253;
                }

                v495 = *&v159;
                v508 = v400 & 1;
                v353 = v399;
                if (!(v398 & 1 | (v399 >= 0.0)))
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v353;
                  v352 = 7;
                  goto LABEL_253;
                }

                v507 = v398 & 1;
                if (v300 >= 0.0)
                {
                  v354 = 1;
                }

                else
                {
                  v354 = v492;
                }

                if ((v354 & 1) == 0)
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v300;
                  v352 = 8;
                  goto LABEL_253;
                }

                v506 = v492;
                if (v304 >= 0.0)
                {
                  v355 = 1;
                }

                else
                {
                  v355 = v491;
                }

                if ((v355 & 1) == 0)
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v304;
                  v352 = 9;
                  goto LABEL_253;
                }

                v356 = v300;
                v505 = v491;
                v357 = v423;
                if (v423 < 0.0)
                {
                  v358 = v327;
                }

                else
                {
                  v358 = 0;
                }

                if (v358 == 1)
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v357;
                  v352 = 10;
                  goto LABEL_253;
                }

                if (!(v396 & 1 | (v397 >= 0.0)))
                {
                  v367 = v397;
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v367;
                  v352 = 11;
                  goto LABEL_253;
                }

                v504 = v396 & 1;
                v365 = v422;
                if (v422 < 0.0)
                {
                  v366 = v329;
                }

                else
                {
                  v366 = 0;
                }

                if (v366 == 1)
                {
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v365;
                  v352 = 12;
                  goto LABEL_253;
                }

                v324 = v395;
                if (v394 & 1 | (v395 >= 0.0))
                {
                  v503 = v394 & 1;
                  if (v513 & 1 | (v158 >= 0.0))
                  {
                    v368 = (v484 ^ 1) & LOBYTE(v477);
                    v502 = v513 & 1;
                    if (!(v368 & 1 | (v305 >= 0)))
                    {
                      sub_E1C20();
                      swift_allocError();
                      *v351 = v459;
                      *(v351 + 8) = v305;
                      v352 = 15;
                      goto LABEL_253;
                    }

                    v501 = v368 & 1;
                    if (v421 && v494 < 0)
                    {
                      sub_E1C20();
                      swift_allocError();
                      v369 = v494;
                      *v351 = v459;
                      *(v351 + 8) = v369;
                      v352 = 16;
                      goto LABEL_253;
                    }

                    v163 = v321;
                    v371 = (v481 ^ 1) & v466;
                    v500 = !v421;
                    if (v371 & 1 | (v163 >= 0))
                    {
                      v372 = v330;
                      v373 = v328;
                      sub_42F48(v470, &qword_229528, &qword_1BC5A0);
                      sub_42F48(v480, &qword_229528, &qword_1BC5A0);
                      result = sub_42F48(v464, &qword_229528, &qword_1BC5A0);
                      v374 = v380;
                      v375 = v446;
                      *v380 = v459;
                      v374[1] = v375;
                      *(v374 + 16) = v498;
                      *(v374 + 32) = v512;
                      *(v374 + 5) = v412;
                      v374[6] = v331;
                      *(v374 + 80) = v333;
                      v376 = v439;
                      v374[11] = v440;
                      v374[12] = v376;
                      *(v374 + 104) = v511;
                      *(v374 + 120) = v510;
                      *(v374 + 136) = v509;
                      *(v374 + 152) = v508;
                      *(v374 + 168) = v507;
                      *(v374 + 184) = v506;
                      *(v374 + 200) = v505;
                      v377 = v403;
                      *(v374 + 28) = v404;
                      *(v374 + 29) = v377;
                      *(v374 + 240) = v373;
                      *(v374 + 256) = v504;
                      v378 = v405;
                      *(v374 + 35) = v406;
                      *(v374 + 36) = v378;
                      *(v374 + 296) = v372;
                      *(v374 + 312) = v503;
                      *(v374 + 328) = v502;
                      *(v374 + 42) = v305;
                      *(v374 + 344) = v501;
                      *(v374 + 44) = v494;
                      *(v374 + 360) = v500;
                      *(v374 + 46) = v163;
                      v499 = v371 & 1;
                      *(v374 + 376) = v371 & 1;
                      v374[3] = v161;
                      v374[7] = 0.0;
                      v374[8] = 0.0;
                      v374[9] = 0.0;
                      v374[14] = v160;
                      *(v374 + 16) = v495;
                      v374[18] = v401;
                      v374[20] = v399;
                      v374[22] = v356;
                      v374[24] = v304;
                      v374[26] = v423;
                      v374[27] = v325;
                      v374[31] = v397;
                      v374[33] = v422;
                      v374[34] = v323;
                      v374[38] = v395;
                      v374[40] = v158;
                      return result;
                    }

LABEL_275:
                    sub_E1C20();
                    swift_allocError();
                    *v351 = v459;
                    *(v351 + 8) = v163;
                    v352 = 17;
                    goto LABEL_253;
                  }

LABEL_270:
                  sub_E1C20();
                  swift_allocError();
                  *v351 = v459;
                  *(v351 + 8) = v158;
                  v352 = 13;
                  goto LABEL_253;
                }

LABEL_268:
                v370 = v324;
                sub_E1C20();
                swift_allocError();
                *v351 = v459;
                *(v351 + 8) = v370;
                v352 = 13;
                goto LABEL_253;
              }

              LODWORD(v487) = v327;
              LODWORD(v488) = v330;
              LODWORD(v490) = v328;
              sub_43050(v435, v326, &qword_229528, &qword_1BC5A0);
              v334 = v473;
              if (v473(v326, 1, v495) == 1)
              {
                sub_42F48(v326, &qword_229528, &qword_1BC5A0);
                v326 = v383;
                sub_43050(*&v493, v383, &qword_229528, &qword_1BC5A0);
                if (v334(v326, 1, v495) == 1)
                {
                  sub_42F48(v326, &qword_229528, &qword_1BC5A0);
                  v333 = 0;
                  v331 = v382;
LABEL_215:
                  v332 = 1;
                  LOBYTE(v328) = v490;
                  LOBYTE(v330) = v488;
                  v327 = v487;
                  goto LABEL_216;
                }

                v335 = *(v123 + 32);
                v336 = v416;
              }

              else
              {
                v335 = *(v123 + 32);
                v336 = &v418;
              }

              v337 = *(v336 - 32);
              v338 = v495;
              v335(v337, v326, v495);
              v339 = v475;
              sub_1B4024();
              sub_1B3FF4();
              v493 = v323;
              v340 = v325;
              v341 = v304;
              v342 = v300;
              v343 = v161;
              v344 = v158;
              v345 = v160;
              v346 = v159;
              v348 = v347;
              v349 = *(v123 + 8);
              v349(v339, v338);
              v349(v337, v338);
              v333 = 0;
              v350 = 0.0;
              if (v348 >= 0.0)
              {
                v350 = v348;
              }

              v159 = v346;
              v160 = v345;
              v158 = v344;
              v161 = v343;
              v300 = v342;
              v304 = v341;
              v325 = v340;
              v323 = v493;
              v331 = v350;
              goto LABEL_215;
            }

            v406 = 0;
            v405 = 0;
            v329 = 0;
            v330 = 255;
            v422 = 0.0;
LABEL_201:
            v323 = 0.0;
            goto LABEL_203;
          }

          v327 = 1;
          v423 = v324;
          v325 = v323;
          v328 = 1;
          if (v293)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v404 = 0;
          v403 = 0;
          v328 = 0;
          v327 = 1;
          v326 = v414;
          if (v293)
          {
            goto LABEL_197;
          }
        }

LABEL_200:
        v406 = 0;
        v405 = 0;
        v330 = 0;
        v329 = 1;
        goto LABEL_201;
      }
    }

    v494 = 0;
    goto LABEL_186;
  }

  v408 = v143;
  v409 = v142;
  v465 = 0;
  *&v476 = 0.0;
  v156 = v472[80];
  v411 = a23;
  v157 = *&v493 + ((v156 + 32) & ~v156);
  v410 = a19;
  v492 = (v123 + 8);
  v482 = v123 + 32;
  v407 = OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone;
  v460 = (v123 + 16);
  v447 = v484 | v481;
  v483 = *(v472 + 9);
  v466 = 1;
  LODWORD(v477) = 1;
  v158 = 0.0;
  v513 = 1;
  v395 = 0.0;
  v394 = 1;
  v397 = 0.0;
  v396 = 1;
  v401 = 0.0;
  v400 = 1;
  v159 = 0.0;
  v393 = 1;
  v160 = 0.0;
  v161 = 0.0;
  v422 = 0.0;
  v423 = 0.0;
  v402 = 1;
  v445 = 1;
  v436 = 1;
  v437 = 1;
  v463 = 2;
  v162 = v490;
  v163 = v469;
  while (2)
  {
    v493 = *&v155;
    sub_E52A4(v157, v33, type metadata accessor for Event);
    v164 = v495;
    v165 = v487;
    (v487)(v162, 1, 1, v495);
    (v165)(v163, 1, 1, v164);
    sub_E52A4(v33, v31, type metadata accessor for Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v167 = *(v31 + 1);

    v168 = EnumCaseMultiPayload;
    v169 = v489;
    v170 = v485;
    switch(v168)
    {
      case 1:
        v182 = v163;
        v218 = sub_2B0C(&qword_22A130, &unk_1BFD50);
        v219 = v31[v218[16]];
        v185 = *&v31[v218[20]];
        v186 = v442;
        (*v482)(v442, &v31[v218[12]], v495);
        if (v219 == 1)
        {
          goto LABEL_64;
        }

        if (v409)
        {
          v268 = v446;
          if (v450)
          {
            v268 = 0.0;
          }

          if (v268 <= v185)
          {
            v268 = v185;
          }

          v446 = v268;
          v450 = 0;
        }

        v188 = &v477;
        goto LABEL_130;
      case 2:
        v195 = sub_2B0C(&qword_22A150, &qword_1BFD70);
        v196 = v31[*(v195 + 64)];
        v197 = v461;
        v198 = v495;
        (*v482)(v461, &v31[*(v195 + 48)], v495);
        v199 = v490;
        sub_42F48(v490, &qword_229528, &qword_1BC5A0);
        (*v460)(v199, v197, v198);
        v163 = v469;
        (v487)(v199, 0, 1, v198);
        if (v447)
        {
          v200 = v163;
          v201 = v430;
          Date.beginningOfDay(timeZone:)(v478 + v407, v430);
          v169 = v489;
          sub_42F48(v200, &qword_229528, &qword_1BC5A0);
          (v487)(v201, 0, 1, v495);
          v202 = v201;
          v163 = v200;
          sub_E50D4(v202, v200);
        }

        v203 = v513;
        if (v196 & v451 & v513)
        {
          sub_1B3FF4();
          v169 = v489;
          v158 = v204;
          v203 = 0;
        }

        v513 = v203;
        v491 = *v492;
        v491(v461, v495);
        v139 = v464;
        v170 = v485;
        goto LABEL_82;
      case 3:
        v205 = sub_2B0C(&qword_22A150, &qword_1BFD70);
        v206 = v31[*(v205 + 64)];
        v207 = v462;
        v208 = v495;
        (*v482)(v462, &v31[*(v205 + 48)], v495);
        v209 = v490;
        sub_42F48(v490, &qword_229528, &qword_1BC5A0);
        (*v460)(v209, v207, v208);
        (v487)(v209, 0, 1, v208);
        if (v426)
        {
          sub_1B3FF4();
          v169 = v489;
          v395 = v210;
          v394 = 0;
        }

        v163 = v469;
        if (v447)
        {
          v211 = v469;
          v212 = v430;
          Date.beginningOfDay(timeZone:)(v478 + v407, v430);
          v169 = v489;
          sub_42F48(v211, &qword_229528, &qword_1BC5A0);
          (v487)(v212, 0, 1, v495);
          v213 = v212;
          v163 = v211;
          sub_E50D4(v213, v211);
        }

        v214 = v513;
        v170 = v485;
        if (v206 & v451 & v513)
        {
          sub_1B3FF4();
          v169 = v489;
          v158 = v215;
          v214 = 0;
        }

        v513 = v214;
        v491 = *v492;
        v491(v462, v495);
        v139 = v464;
        goto LABEL_82;
      case 4:
        v182 = v163;
        v183 = sub_2B0C(&qword_22A130, &unk_1BFD50);
        v184 = v31[v183[16]];
        v185 = *&v31[v183[20]];
        v186 = v443;
        (*v482)(v443, &v31[v183[12]], v495);
        if (v184 == 1)
        {
LABEL_64:
          v491 = *v492;
          v491(v186, v495);
          v169 = v489;
          if (v428)
          {
            v220 = (v445 & 1) == 0;
            v445 = 0;
            if (v220)
            {
              v221 = v161;
            }

            else
            {
              v221 = 0.0;
            }

            if (v221 > v185)
            {
              v161 = v221;
            }

            else
            {
              v161 = v185;
            }

            v163 = v182;
          }

          else
          {
            v163 = v182;
          }
        }

        else
        {
          if (v409)
          {
            v187 = v446;
            if (v450)
            {
              v187 = 0.0;
            }

            if (v187 <= v185)
            {
              v187 = v185;
            }

            v446 = v187;
            v450 = 0;
          }

          v188 = &v478;
LABEL_130:
          v269 = *(v188 - 32);
          if (v408)
          {
            sub_1B3FF4();
            v399 = v270;
            v491 = *v492;
            v491(v269, v495);
            v398 = 0;
          }

          else
          {
            v491 = *v492;
            v491(v269, v495);
          }

          v169 = v489;
          v163 = v182;
        }

        goto LABEL_82;
      case 5:
        v222 = v163;
        v223 = sub_2B0C(&qword_22A140, &qword_1BFD60);
        v224 = v432;
        (*v482)(v432, &v31[*(v223 + 48)], v495);
        if (v424)
        {
          sub_1B3FF4();
          v169 = v489;
          v422 = v225;
          v436 = 0;
        }

        v491 = *v492;
        v491(v224, v495);
        v163 = v222;
        goto LABEL_82;
      case 6:
        v226 = sub_2B0C(&qword_22A140, &qword_1BFD60);
        v172 = v434;
        (*v482)(v434, &v31[*(v226 + 48)], v495);
        if ((v410 & 1) == 0)
        {
          goto LABEL_80;
        }

        sub_1B3FF4();
        v169 = v489;
        v401 = v227;
        v174 = &v435 + 4;
        goto LABEL_79;
      case 7:
      case 12:
      case 15:
        goto LABEL_34;
      case 8:
        v180 = sub_2B0C(&qword_22A148, &qword_1BFD68);
        v257 = v31[*(v180 + 64)];
        if (v257 == 2)
        {
          v258 = 2;
        }

        else
        {
          v258 = v257 & 1;
        }

        if (v452)
        {
          v259 = v258;
        }

        else
        {
          v259 = v463;
        }

        v463 = v259;
        goto LABEL_35;
      case 9:
        if (v452)
        {
          v179 = 2;
        }

        else
        {
          v179 = v463;
        }

        v463 = v179;
LABEL_34:
        v180 = sub_2B0C(&qword_22A140, &qword_1BFD60);
LABEL_35:
        v181 = &v31[*(v180 + 48)];
        v491 = *v492;
        v491(v181, v495);
        goto LABEL_82;
      case 10:
        v189 = sub_2B0C(&qword_22A138, &qword_1C59F0);
        v190 = *&v31[*(v189 + 64)];
        v172 = v441;
        (*v482)(v441, &v31[*(v189 + 48)], v495);
        if (!v429)
        {
          goto LABEL_80;
        }

        v191 = v190 + -0.5 + v190 + -0.5;
        sub_1B3FF4();
        v193 = v192;
        v194 = fabs(v191);
        if (v194 > 1.0)
        {
          goto LABEL_250;
        }

        v169 = v489;
        if (v193 >= 0.0)
        {
          v491 = *v492;
          v491(v441, v495);
          v448 = 0;
          v440 = v191;
          v439 = v193;
LABEL_82:
          sub_E52A4(v33, v169, type metadata accessor for Event);
          if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) != 2)
          {
            sub_42F48(v163, &qword_229528, &qword_1BC5A0);
            sub_E530C(v33, type metadata accessor for Event);
            if (v484)
            {
              sub_42F48(v139, &qword_229528, &qword_1BC5A0);
              (v487)(v139, 1, 1, v495);
              *&v476 = 0.0;
              LODWORD(v477) = 0;
            }

            if (v481)
            {
              v237 = v470;
              sub_42F48(v470, &qword_229528, &qword_1BC5A0);
              v238 = v237;
              v169 = v489;
              (v487)(v238, 1, 1, v495);
              v465 = 0;
              v466 = 0;
            }

            v239 = v169;
LABEL_103:
            sub_E530C(v239, type metadata accessor for Event);
            goto LABEL_104;
          }

          v230 = v480;
          sub_42F48(v480, &qword_229528, &qword_1BC5A0);
          v231 = *(v169 + 8);

          v232 = sub_2B0C(&qword_22A150, &qword_1BFD70);
          v491((v169 + *(v232 + 48)), v495);
          sub_43050(v490, v230, &qword_229528, &qword_1BC5A0);
          if ((v484 & 1) == 0)
          {
            v235 = v479;
            goto LABEL_97;
          }

          v472 = v157;
          sub_43050(v139, v170, &qword_229528, &qword_1BC5A0);
          v233 = v473;
          v234 = v473(v170, 1, v495);
          v235 = v479;
          if (v234 == 1)
          {
            sub_42F48(v139, &qword_229528, &qword_1BC5A0);
            LODWORD(v477) = 0;
            v236 = v170;
            v476 = 1;
            v163 = v469;
LABEL_94:
            sub_42F48(v236, &qword_229528, &qword_1BC5A0);
            goto LABEL_95;
          }

          v240 = v139;
          v241 = v31;
          v242 = v33;
          v243 = v458;
          v244 = v495;
          (*v482)(v458, v170, v495);
          v245 = v490;
          if (v233(v490, 1, v244))
          {
            v491(v243, v495);
            v139 = v240;
            v236 = v240;
            v33 = v242;
            v31 = v241;
            v163 = v469;
            goto LABEL_94;
          }

          v260 = v475;
          v261 = v495;
          (*v460)(v475, v245, v495);
          sub_1B3FF4();
          v263 = v262;
          v264 = v491;
          v491(v260, v261);
          v264(v243, v261);
          v139 = v240;
          sub_42F48(v240, &qword_229528, &qword_1BC5A0);
          if (v263 > 86400.0)
          {
            v265 = v476;
            if (LOBYTE(v477))
            {
              v265 = 0;
            }

            v266 = __OFADD__(v265, 1);
            v267 = v265 + 1;
            v235 = v479;
            v163 = v469;
            v157 = v472;
            if (v266)
            {
              __break(1u);
              goto LABEL_270;
            }

            v33 = v242;
            v476 = v267;
            LODWORD(v477) = 0;
            v31 = v241;
            goto LABEL_96;
          }

          v235 = v479;
          v33 = v242;
          v31 = v241;
          v163 = v469;
LABEL_95:
          v157 = v472;
LABEL_96:
          sub_43050(v163, v139, &qword_229528, &qword_1BC5A0);
LABEL_97:
          sub_E52A4(v33, v235, type metadata accessor for Event);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_42F48(v163, &qword_229528, &qword_1BC5A0);
            sub_E530C(v33, type metadata accessor for Event);
            v239 = v235;
            goto LABEL_103;
          }

          v246 = *(v235 + 8);

          v247 = sub_2B0C(&qword_22A150, &qword_1BFD70);
          v491((v235 + *(v247 + 48)), v495);
          if ((v481 & 1) == 0)
          {
            sub_42F48(v163, &qword_229528, &qword_1BC5A0);
            v239 = v33;
            goto LABEL_103;
          }

          v248 = v163;
          v249 = v457;
          sub_43050(v163, v457, &qword_229528, &qword_1BC5A0);
          if (v473(v249, 1, v495) != 1)
          {
            v251 = *v482;
            v252 = v456;
            (*v482)(v456, v249, v495);
            v253 = v411;
            if (*(v411 + 16))
            {
              v254 = sub_3A808(v252);
              if (v255)
              {
                v256 = *(*(v253 + 56) + 8 * v254);
              }

              else
              {
                v256 = _swiftEmptySetSingleton;
              }

              if (v256[2])
              {
LABEL_141:
                v276 = sub_2AA44(v459, v256);

                if (v276)
                {
                  v491(v456, v495);
                  v271 = v163;
LABEL_143:
                  sub_42F48(v271, &qword_229528, &qword_1BC5A0);
                  sub_E530C(v33, type metadata accessor for Event);
                  v139 = v464;
LABEL_104:
                  v250 = v490;
                  goto LABEL_105;
                }

                v277 = v387;
                sub_43050(v470, v387, &qword_229528, &qword_1BC5A0);
                v278 = v473;
                v279 = v473(v277, 1, v495);
                v472 = v251;
                if (v279 == 1)
                {
                  v163 = v248;
                  sub_42F48(v248, &qword_229528, &qword_1BC5A0);
                  sub_E530C(v33, type metadata accessor for Event);
                  sub_42F48(v470, &qword_229528, &qword_1BC5A0);
                  v466 = 0;
                  v280 = v277;
                  v465 = 1;
                  v139 = v464;
                  goto LABEL_148;
                }

                v281 = v277;
                v282 = v386;
                v283 = v495;
                v251(v386, v281, v495);
                v284 = v490;
                if (v278(v490, 1, v283))
                {
                  v491(v282, v495);
                  v163 = v469;
                  sub_42F48(v469, &qword_229528, &qword_1BC5A0);
                  sub_E530C(v33, type metadata accessor for Event);
                  v280 = v470;
                  v139 = v464;
LABEL_148:
                  sub_42F48(v280, &qword_229528, &qword_1BC5A0);
                }

                else
                {
                  v287 = v475;
                  v288 = v495;
                  (*v460)(v475, v284, v495);
                  sub_1B3FF4();
                  v290 = v289;
                  v291 = v491;
                  v491(v287, v288);
                  v291(v282, v288);
                  v163 = v469;
                  sub_42F48(v469, &qword_229528, &qword_1BC5A0);
                  sub_E530C(v33, type metadata accessor for Event);
                  sub_42F48(v470, &qword_229528, &qword_1BC5A0);
                  v139 = v464;
                  if (v290 > 86400.0)
                  {
                    v292 = v465;
                    if (v466)
                    {
                      v292 = 0;
                    }

                    v465 = v292 + 1;
                    if (__OFADD__(v292, 1))
                    {
                      __break(1u);
                      goto LABEL_275;
                    }

                    v466 = 0;
                  }
                }

                v285 = v470;
                v286 = v495;
                (v472)(v470, v456, v495);
                (v487)(v285, 0, 1, v286);
                goto LABEL_104;
              }
            }

            else
            {
              v256 = _swiftEmptySetSingleton;
              if (_swiftEmptySetSingleton[2])
              {
                goto LABEL_141;
              }
            }

            v491(v456, v495);
            v271 = v163;
            goto LABEL_143;
          }

          sub_42F48(v163, &qword_229528, &qword_1BC5A0);
          sub_E530C(v33, type metadata accessor for Event);
          sub_42F48(v249, &qword_229528, &qword_1BC5A0);
          v250 = v490;
LABEL_105:
          sub_42F48(v250, &qword_229528, &qword_1BC5A0);
          v157 += *&v483;
          v155 = *&v493 - 1;
          v162 = v250;
          if (*&v493 == 1)
          {
            v412 = v463;
            v123 = v444;
            v154 = v438;
            v293 = v436;
            goto LABEL_156;
          }

          continue;
        }

        v191 = v193;
LABEL_250:
        v361 = v194 <= 1.0;
        sub_E5144();
        swift_allocError();
        *v362 = v191;
        *(v362 + 8) = v361;
        swift_willThrow();
        (*v492)(v441, v495);
        sub_42F48(v163, &qword_229528, &qword_1BC5A0);
        sub_E530C(v33, type metadata accessor for Event);
        sub_42F48(v470, &qword_229528, &qword_1BC5A0);
        sub_42F48(v480, &qword_229528, &qword_1BC5A0);
        sub_42F48(v139, &qword_229528, &qword_1BC5A0);
        v363 = v490;
        return sub_42F48(v363, &qword_229528, &qword_1BC5A0);
      case 11:
        v228 = sub_2B0C(&qword_22A140, &qword_1BFD60);
        v172 = v433;
        (*v482)(v433, &v31[*(v228 + 48)], v495);
        if (!v425)
        {
          goto LABEL_80;
        }

        sub_1B3FF4();
        v169 = v489;
        v397 = v229;
        v174 = &v431 + 4;
        goto LABEL_79;
      case 13:
        v176 = sub_2B0C(&qword_22A140, &qword_1BFD60);
        (*v482)(v454, &v31[*(v176 + 48)], v495);
        if (v453 != 2)
        {
          v177 = *v492;
          v178 = &v486;
          goto LABEL_62;
        }

        v272 = v454;
        sub_1B3FF4();
        v169 = v489;
        v159 = v273;
        v491 = *v492;
        v491(v272, v495);
        v393 = 0;
        goto LABEL_82;
      case 14:
        v216 = sub_2B0C(&qword_22A140, &qword_1BFD60);
        (*v482)(v455, &v31[*(v216 + 48)], v495);
        if (v453 == 1)
        {
          v274 = v455;
          sub_1B3FF4();
          v169 = v489;
          v160 = v275;
          v491 = *v492;
          v491(v274, v495);
          v402 = 0;
        }

        else
        {
          v177 = *v492;
          v178 = &v487;
LABEL_62:
          v217 = *(v178 - 32);
LABEL_81:
          v491 = v177;
          v177(v217, v495);
        }

        goto LABEL_82;
      case 16:
        v175 = &v31[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
        v491 = *v492;
        v491(v175, v495);
        v440 = 0.0;
        v439 = 0.0;
        v448 = 1;
        goto LABEL_82;
      default:
        v171 = sub_2B0C(&qword_22A140, &qword_1BFD60);
        v172 = v431;
        (*v482)(v431, &v31[*(v171 + 48)], v495);
        if (!v427)
        {
          goto LABEL_80;
        }

        sub_1B3FF4();
        v169 = v489;
        v423 = v173;
        v174 = &v472 + 4;
LABEL_79:
        *(v174 - 64) = 0;
LABEL_80:
        v177 = *v492;
        v217 = v172;
        goto LABEL_81;
    }
  }
}

uint64_t sub_DE810()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  v1 = OBJC_IVAR____TtC20BooksPersonalization18BookHistoryService_timeZone;
  v2 = sub_1B4204();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_DE8CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_91B58;

  return sub_D49E0(a1, a2, a3, a4);
}

BOOL BookHistory.isEligibleForRecommendation(with:)(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = 0;
  v4 = *(__src + 39);
  v5 = *(__src + 40);
  v6 = *(__src + 344);
  v143 = *(__src + 328);
  v144 = v6;
  v69 = __src[360];
  v142 = v69;
  v68 = __src[361];
  v141 = v68;
  v67 = __src[362];
  v140 = v67;
  v151 = *(v1 + 16);
  v77 = *(v1 + 32);
  v78 = *(v1 + 80);
  v79 = *(v1 + 104);
  v80 = *(v1 + 120);
  v81 = *(v1 + 136);
  v7 = *(v1 + 152);
  v8 = *(v1 + 168);
  v9 = *(v1 + 184);
  v10 = *(v1 + 200);
  v11 = *(v1 + 26);
  v12 = *(v1 + 27);
  v13 = *(v1 + 28);
  v14 = *(v1 + 29);
  v15 = *(v1 + 240);
  v16 = *(v1 + 31);
  v17 = *(v1 + 256);
  v18 = *(v1 + 33);
  v19 = *(v1 + 34);
  v20 = *(v1 + 35);
  v21 = *(v1 + 36);
  v22 = *(v1 + 296);
  v150[0] = *(v1 + 297);
  *(v150 + 3) = *(v1 + 75);
  v149[0] = *(v1 + 313);
  *(v149 + 3) = *(v1 + 79);
  *(v148 + 7) = *(v1 + 42);
  v148[0] = *(v1 + 329);
  v23 = *(v1 + 345);
  *(v147 + 7) = *(v1 + 44);
  v147[0] = v23;
  v146[0] = *(v1 + 361);
  *(v146 + 7) = *(v1 + 46);
  v73 = *(v1 + 38);
  v76 = *(v1 + 312);
  v74 = *(v1 + 40);
  v75 = *(v1 + 328);
  v70 = *(v1 + 344);
  v71 = *(v1 + 360);
  v72 = *(v1 + 376);
  while (2)
  {
    v24 = *(&off_20E7A8 + v3++ + 32);
    switch(v24)
    {
      case 1:
        if (v78 == 255)
        {
          goto LABEL_3;
        }

        return 0;
      case 2:
        if ((v77 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 3:
        if ((v79 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 4:
        if (v80)
        {
          goto LABEL_3;
        }

        return 0;
      case 5:
        if ((v81 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 6:
        if ((v7 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 7:
        if ((v8 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 8:
        if ((v9 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 9:
        if ((v10 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 10:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
        goto LABEL_3;
      case 11:
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      default:
        if (!v151)
        {
          return 0;
        }

LABEL_3:
        if (v3 != 18)
        {
          continue;
        }

        *v122 = *(v1 + 257);
        *v128 = *(v1 + 297);
        *v131 = *(v1 + 313);
        *v134 = *(v1 + 329);
        *v136 = *(v1 + 345);
        *v138 = *(v1 + 361);
        *v94 = *(v1 + 17);
        *&v94[7] = *(v1 + 3);
        *&v99[15] = *(v1 + 12);
        *v101 = *(v1 + 105);
        *&v101[7] = *(v1 + 14);
        *v103 = *(v1 + 121);
        *&v103[7] = *(v1 + 16);
        *&v105[7] = *(v1 + 18);
        *v105 = *(v1 + 137);
        *&v107[7] = *(v1 + 20);
        *v107 = *(v1 + 153);
        *&v109[7] = *(v1 + 22);
        *v109 = *(v1 + 169);
        *&v111[7] = *(v1 + 24);
        *v111 = *(v1 + 185);
        *v113 = *(v1 + 201);
        *&v113[3] = *(v1 + 51);
        *&v119[3] = *(v1 + 61);
        *v119 = *(v1 + 241);
        *&v122[3] = *(v1 + 65);
        *&v128[3] = *(v1 + 75);
        *&v131[3] = *(v1 + 79);
        *&v134[7] = *(v1 + 42);
        *&v136[7] = *(v1 + 44);
        v92 = *v1;
        *&v138[7] = *(v1 + 46);
        v59 = v151;
        v93 = v151;
        v95 = v77;
        v96 = *(v1 + 33);
        *v97 = *(v1 + 49);
        *&v97[15] = v1[4];
        v98 = v78;
        *v99 = *(v1 + 81);
        v100 = v79;
        v102 = v80;
        v104 = v81;
        v60 = v7;
        v61 = v8;
        v106 = v7;
        v108 = v8;
        v110 = v9;
        v64 = v10;
        v65 = v17;
        v112 = v10;
        v25 = v11;
        v114 = v11;
        v62 = v12;
        v63 = v14;
        v115 = v12;
        v66 = v13;
        v116 = v13;
        v117 = v14;
        v118 = v15;
        v26 = v16;
        v120 = v16;
        v121 = v17;
        v123 = v18;
        v124 = v19;
        v27 = v20;
        v125 = v20;
        v28 = v21;
        v126 = v21;
        v29 = v22;
        v127 = v22;
        v129 = v73;
        v130 = v76;
        v132 = v74;
        v133 = v75;
        v135 = v70;
        v137 = v71;
        v139 = v72;
        memcpy(v84, __src, sizeof(v84));
        v85 = v4;
        v86 = v5;
        v30 = *(__src + 344);
        v87 = *(__src + 328);
        v88 = v30;
        v89 = v69;
        v90 = v68;
        v91 = v67;
        if ((sub_147C40(v84) & 1) != 0 || v142 != 1 || (v76 & 1) == 0 && (v75 & 1) == 0 && v74 >= v73)
        {
          return 0;
        }

        v31 = 0.0;
        if (v15 == 255)
        {
          v43 = 1;
          v33 = v1;
          v34 = (v1 + 257);
          v35 = v62;
          v40 = v63;
          v36 = v66;
          v39 = v64;
          v38 = v65;
          v41 = v61;
          v37 = v9;
          v42 = v60;
          if ((v141 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v32 = v25;
          v33 = v1;
          v34 = (v1 + 257);
          v35 = v62;
          v36 = v66;
          v37 = v9;
          if (v15)
          {
            v32 = v62;
            if (v4 * v66 + v25 <= v62)
            {
              v32 = v4 * v66 + v25;
            }
          }

          v39 = v64;
          v38 = v65;
          v40 = v63;
          v42 = v60;
          v41 = v61;
          if ((v65 & 1) != 0 || v32 < v26)
          {
            v43 = 0;
            v31 = v32;
            if ((v141 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v43 = 1;
            if ((v141 & 1) == 0)
            {
              return 0;
            }
          }
        }

        if ((v43 & 1) == 0 && (v75 & 1) == 0 && v31 <= v74)
        {
          return 0;
        }

        if (v29 == 255)
        {
          if (v140)
          {
            goto LABEL_55;
          }

          return 0;
        }

        v44 = v18;
        if (v29)
        {
          v44 = v19;
          if (v5 * v27 + v18 <= v19)
          {
            v44 = v5 * v27 + v18;
          }
        }

        if ((v140 & 1) == 0 || (v75 & 1) == 0 && v44 <= v74)
        {
          return 0;
        }

LABEL_55:
        v92 = *v33;
        v93 = v59;
        *v94 = *(v33 + 17);
        *&v94[7] = *(v33 + 3);
        v95 = v77;
        v96 = *(v33 + 33);
        *v97 = *(v33 + 49);
        *&v97[15] = v33[4];
        v98 = v78;
        *&v99[15] = *(v33 + 12);
        *v99 = *(v33 + 81);
        v100 = v79;
        *v101 = *(v33 + 105);
        *&v101[7] = *(v33 + 14);
        v102 = v80;
        *v103 = *(v33 + 121);
        *&v103[7] = *(v33 + 16);
        v104 = v81;
        *v105 = *(v33 + 137);
        *&v105[7] = *(v33 + 18);
        v106 = v42;
        v45 = *(v33 + 153);
        *&v107[7] = *(v33 + 20);
        *v107 = v45;
        v108 = v41;
        *&v109[7] = *(v33 + 22);
        *v109 = *(v33 + 169);
        v110 = v37;
        *&v111[7] = *(v33 + 24);
        *v111 = *(v33 + 185);
        v112 = v39;
        *v113 = *(v33 + 201);
        *&v113[3] = *(v33 + 51);
        v114 = v25;
        v115 = v35;
        v116 = v36;
        v117 = v40;
        v118 = v15;
        LODWORD(v45) = *(v33 + 241);
        *&v119[3] = *(v33 + 61);
        *v119 = v45;
        v120 = v26;
        v121 = v38;
        v46 = *(v34 + 3);
        *v122 = *v34;
        *&v122[3] = v46;
        v123 = v18;
        v124 = v19;
        v125 = v27;
        v126 = v28;
        v127 = v29;
        *v128 = v150[0];
        *&v128[3] = *(v150 + 3);
        v129 = v73;
        v130 = v76;
        *v131 = v149[0];
        *&v131[3] = *(v149 + 3);
        v132 = v74;
        v133 = v75;
        *v134 = v148[0];
        *&v134[7] = *(v148 + 7);
        v135 = v70;
        *v136 = v147[0];
        *&v136[7] = *(v147 + 7);
        v137 = v71;
        *v138 = v146[0];
        *&v138[7] = *(v146 + 7);
        v139 = v72;
        memcpy(v84, __dst, sizeof(v84));
        v85 = v4;
        v86 = v5;
        v87 = v143;
        v88 = v144;
        v89 = v142;
        v90 = v141;
        v91 = v140;
        BookHistory.internalAffinitySource(with:)(v84, v82);
        v47 = v83;
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          return 1;
        }

        v48 = v82[0];
        v49 = v82[1];
        v51 = v82[2];
        v50 = v82[3];
        v53 = v82[4];
        v52 = v82[5];
        if ((v83 >> 62) > 2)
        {
          v54 = v82[0];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1BCA80;
          *(v54 + 32) = v48;
          *(v54 + 40) = v49;
          *(v54 + 48) = v51;
          *(v54 + 56) = v50;
          *(v54 + 64) = v53;
          *(v54 + 72) = v52;
          *(v54 + 80) = v47 & 1;
        }

        v56 = COERCE_DOUBLE(Array<A>.affinity.getter(v54));
        v58 = v57;

        return (v58 & 1) != 0 || v56 >= 0.0;
    }
  }
}

uint64_t sub_DF2A8()
{
  for (i = 0; i != 18; ++i)
  {
    v2 = *(&off_20E7A8 + i + 32);
    if (v2 > 7)
    {
      if (v2 - 10 >= 8)
      {
        if (v2 == 8)
        {
          if ((v0[184] & 1) == 0)
          {
            return 1;
          }
        }

        else if ((v0[200] & 1) == 0)
        {
          return 1;
        }
      }
    }

    else if (*(&off_20E7A8 + i + 32) > 3u)
    {
      if (*(&off_20E7A8 + i + 32) > 5u)
      {
        if (v2 != 6 && (v0[168] & 1) == 0)
        {
          return 1;
        }
      }

      else if (v2 == 4)
      {
        if ((v0[120] & 1) == 0)
        {
          return 1;
        }
      }

      else if ((v0[136] & 1) == 0)
      {
        return 1;
      }
    }

    else if (*(&off_20E7A8 + i + 32) > 1u)
    {
      if (v2 != 2 && (v0[104] & 1) == 0)
      {
        return 1;
      }
    }

    else if (*(&off_20E7A8 + i + 32))
    {
      if (v0[80] != 255)
      {
        return 1;
      }
    }

    else if ((v0[16] & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int sub_DF38C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B5584(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1B4B34();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_3B8F8(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_3B828(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_DF484(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
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

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_DFA18((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
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
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_32F04((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
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

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_DFA18((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
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

uint64_t sub_DFA18(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

void *sub_DFC1C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_E0EE8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_DFCAC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_DFED0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_DFDD8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_E000C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_DFED0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B57F4();
  sub_1B4884();
  v7 = sub_1B5844();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B5604() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_117818();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_E00FC(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_E000C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_1B57E4();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_117974();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_E02C0(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_E00FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B4F94();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B57F4();

        sub_1B4884();
        v15 = sub_1B5844();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_E02C0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B4F94();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_1B57E4() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_E0444(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_1B5834(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_1B5834(*&v3);
}

uint64_t sub_E0494(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptySetSingleton;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = off_21BB40[*(*(a1 + 48) + (v11 | (v10 << 6)))];
        v16 = v9;
        v13 = v12[2];
        if (v13)
        {
          v14 = 32;
          do
          {
            sub_111BA4(&v15, *(v12 + v14++));
            --v13;
          }

          while (v13);

          v9 = v16;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v8 = v10;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v10 = v8;
      }
    }
  }

  __break(1u);
  return result;
}

BOOL _s20BooksPersonalization11BookHistoryV18CollectionAdditionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v10 = *a1;
      v11 = *a2;
      if (v2 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  if (v2 != v3 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

uint64_t _s20BooksPersonalization11BookHistoryV18MarkedFinishedInfoV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (a1[5])
    {
      if (!*(a2 + 40))
      {
        return 0;
      }

      v4 = *(a1 + 1);
      v5 = *(a2 + 1);
      v6 = v2 == v3 && a1[2] == a2[2];
      v7 = v6 && *(a1 + 3) == *(a2 + 3);
      if (!v7 || *(a1 + 4) != *(a2 + 4))
      {
        return 0;
      }
    }

    else
    {
      v10 = *(a1 + 1);
      v11 = *(a2 + 1);
      if (v2 == v3)
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

BOOL _s20BooksPersonalization11BookHistoryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 80);
  v8 = *(a1 + 88);
  v7 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(a1 + 144);
  v64 = *(a1 + 152);
  v65 = *(a1 + 136);
  v14 = *(a1 + 160);
  v15 = *(a1 + 176);
  v62 = *(a1 + 184);
  v63 = *(a1 + 168);
  v16 = *(a1 + 192);
  v58 = *(a1 + 208);
  v17 = *(a1 + 216);
  v54 = *(a1 + 232);
  v55 = *(a1 + 224);
  v60 = *(a1 + 240);
  v61 = *(a1 + 200);
  v18 = *(a1 + 248);
  v59 = *(a1 + 256);
  v52 = *(a1 + 264);
  v19 = *(a1 + 272);
  v49 = *(a1 + 280);
  v48 = *(a1 + 288);
  v57 = *(a1 + 296);
  v20 = *(a1 + 304);
  v53 = *(a1 + 312);
  v21 = *(a1 + 320);
  v50 = *(a1 + 328);
  v45 = *(a1 + 336);
  v43 = *(a1 + 352);
  v46 = *(a1 + 360);
  v47 = *(a1 + 344);
  v41 = *(a1 + 368);
  v44 = *(a1 + 376);
  v22 = *(a2 + 16);
  v23 = *(a2 + 48);
  v24 = *(a2 + 80);
  v25 = *(a2 + 208);
  v26 = *(a2 + 240);
  v51 = *(a2 + 264);
  v56 = *(a2 + 296);
  v42 = *(a2 + 376);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v28 = *(a2 + 32);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v6 == 255)
  {
    if (v24 != 255)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v24 == 255 || *(a2 + 40) != *(a1 + 40))
  {
    return 0;
  }

  result = 0;
  if (v6)
  {
    if ((v24 & 1) == 0 || v2 != v23 || v3 != *(a2 + 56) || v5 != *(a2 + 64) || v4 != *(a2 + 72))
    {
      return result;
    }

    goto LABEL_31;
  }

  if ((v24 & 1) == 0 && v2 == v23)
  {
LABEL_31:
    if (v9)
    {
      if (!*(a2 + 104))
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((*(a2 + 104) & 1) != 0 || v8 != *(a2 + 88) || v7 != *(a2 + 96))
      {
        return result;
      }
    }

    if (v11)
    {
      if (!*(a2 + 120))
      {
        return 0;
      }
    }

    else
    {
      if (v10 == *(a2 + 112))
      {
        v29 = *(a2 + 120);
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        return 0;
      }
    }

    if (v65)
    {
      if (!*(a2 + 136))
      {
        return 0;
      }
    }

    else
    {
      if (v12 == *(a2 + 128))
      {
        v30 = *(a2 + 136);
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        return 0;
      }
    }

    if (v64)
    {
      if (!*(a2 + 152))
      {
        return 0;
      }
    }

    else
    {
      if (v13 == *(a2 + 144))
      {
        v31 = *(a2 + 152);
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        return 0;
      }
    }

    if (v63)
    {
      if (!*(a2 + 168))
      {
        return 0;
      }
    }

    else
    {
      if (v14 == *(a2 + 160))
      {
        v32 = *(a2 + 168);
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        return 0;
      }
    }

    if (v62)
    {
      if (!*(a2 + 184))
      {
        return 0;
      }
    }

    else
    {
      if (v15 == *(a2 + 176))
      {
        v33 = *(a2 + 184);
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    if (v61)
    {
      if (!*(a2 + 200))
      {
        return 0;
      }
    }

    else
    {
      if (v16 == *(a2 + 192))
      {
        v34 = *(a2 + 200);
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        return 0;
      }
    }

    if (v60 == 255)
    {
      if (v26 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v26 == 255)
      {
        return 0;
      }

      result = 0;
      if (v60)
      {
        if ((v26 & 1) == 0 || v58 != v25 || v17 != *(a2 + 216) || v55 != *(a2 + 224) || v54 != *(a2 + 232))
        {
          return result;
        }
      }

      else if ((v26 & 1) != 0 || v58 != v25)
      {
        return result;
      }
    }

    if (v59)
    {
      if (!*(a2 + 256))
      {
        return 0;
      }
    }

    else
    {
      v35 = *(a2 + 256);
      if (v18 != *(a2 + 248))
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    if (v57 == 255)
    {
      if (v56 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v56 == 255)
      {
        return 0;
      }

      if (v57)
      {
        if ((v56 & 1) == 0)
        {
          return 0;
        }

        result = 0;
        if (v52 != v51 || v19 != *(a2 + 272) || v49 != *(a2 + 280) || v48 != *(a2 + 288))
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if ((v56 & 1) != 0 || v52 != v51)
        {
          return result;
        }
      }
    }

    if (v53)
    {
      if (!*(a2 + 312))
      {
        return 0;
      }
    }

    else
    {
      v36 = *(a2 + 312);
      if (v20 != *(a2 + 304))
      {
        v36 = 1;
      }

      if (v36)
      {
        return 0;
      }
    }

    if (v50)
    {
      if (!*(a2 + 328))
      {
        return 0;
      }
    }

    else
    {
      v37 = *(a2 + 328);
      if (v21 != *(a2 + 320))
      {
        v37 = 1;
      }

      if (v37)
      {
        return 0;
      }
    }

    if (v47)
    {
      if (!*(a2 + 344))
      {
        return 0;
      }
    }

    else
    {
      v38 = *(a2 + 344);
      if (v45 != *(a2 + 336))
      {
        v38 = 1;
      }

      if (v38)
      {
        return 0;
      }
    }

    if (v46)
    {
      if (!*(a2 + 360))
      {
        return 0;
      }
    }

    else
    {
      v39 = *(a2 + 360);
      if (v43 != *(a2 + 352))
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    if ((v44 & 1) == 0)
    {
      v40 = *(a2 + 376);
      if (v41 != *(a2 + 368))
      {
        v40 = 1;
      }

      return (v40 & 1) == 0;
    }

    return (*(a2 + 376) & 1) != 0;
  }

  return result;
}

void *sub_E0C5C(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_3744C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = a1 + 64;
    v6 = -1 << *(a1 + 32);
    *&result = COERCE_DOUBLE(sub_1B4F84());
    v8 = result;
    v9 = 0;
    v29 = *(a1 + 36);
    v27 = v2;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v13 = *(*(a1 + 48) + 8 * v8);
      memcpy(__dst, (*(a1 + 56) + 384 * v8), sizeof(__dst));
      memcpy(v30, a2, 0x16BuLL);
      *&result = COERCE_DOUBLE(sub_147624(v30));
      if (v14)
      {
        v15 = INFINITY;
      }

      else
      {
        v15 = *&result;
      }

      v32 = v3;
      v17 = v3[2];
      v16 = v3[3];
      v18 = v3;
      if (v17 >= v16 >> 1)
      {
        *&result = COERCE_DOUBLE(sub_3744C((v16 > 1), v17 + 1, 1));
        v18 = v32;
      }

      v18[2] = v17 + 1;
      v19 = &v18[2 * v17];
      *(v19 + 4) = v13;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_27;
      }

      v5 = a1 + 64;
      v20 = *(a1 + 64 + 8 * v12);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      v3 = v18;
      if (v29 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v27;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v11 = v27;
        v24 = (a1 + 72 + 8 * v12);
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            *&result = COERCE_DOUBLE(sub_42FF0(v8, v29, 0));
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        *&result = COERCE_DOUBLE(sub_42FF0(v8, v29, 0));
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v11)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    return v3;
  }

  return result;
}

uint64_t sub_E0EE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v17 = *(*(a3 + 48) + 8 * v16);
      v18 = *(a4 + 40);
      result = sub_1B57E4();
      v19 = -1 << *(a4 + 32);
      v20 = result & ~v19;
      if ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (*(*(a4 + 48) + 8 * v20) != v17)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return sub_55438(v24, a2, v5, a3);
        }
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_55438(v24, a2, v5, a3);
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_E1080(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v9);
    bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_E0EE8(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_DFC1C(v13, v7, a1, a2);

  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

unint64_t sub_E1230()
{
  result = qword_22B568;
  if (!qword_22B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B568);
  }

  return result;
}

unint64_t sub_E1284()
{
  result = qword_22B570;
  if (!qword_22B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B570);
  }

  return result;
}

unint64_t sub_E12D8()
{
  result = qword_22B588;
  if (!qword_22B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B588);
  }

  return result;
}

unint64_t sub_E132C()
{
  result = qword_22B590;
  if (!qword_22B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B590);
  }

  return result;
}

uint64_t sub_E1380(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22B578, &qword_1C3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_E13EC()
{
  result = qword_22B5B8;
  if (!qword_22B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B5B8);
  }

  return result;
}

unint64_t sub_E1440()
{
  result = qword_22B5C8;
  if (!qword_22B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B5C8);
  }

  return result;
}

unint64_t sub_E1494()
{
  result = qword_22B5D0;
  if (!qword_22B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B5D0);
  }

  return result;
}

unint64_t sub_E14E8()
{
  result = qword_22B5D8;
  if (!qword_22B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B5D8);
  }

  return result;
}

unint64_t sub_E153C()
{
  result = qword_22B5E8;
  if (!qword_22B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B5E8);
  }

  return result;
}

unint64_t sub_E1590()
{
  result = qword_22B5F0;
  if (!qword_22B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B5F0);
  }

  return result;
}

unint64_t sub_E15E4()
{
  result = qword_22B690;
  if (!qword_22B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B690);
  }

  return result;
}

unint64_t sub_E1638()
{
  result = qword_22B698;
  if (!qword_22B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B698);
  }

  return result;
}

unint64_t sub_E168C()
{
  result = qword_22B6A0;
  if (!qword_22B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6A0);
  }

  return result;
}

unint64_t sub_E16E0()
{
  result = qword_22B6A8;
  if (!qword_22B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6A8);
  }

  return result;
}

unint64_t sub_E1734()
{
  result = qword_22B6B0;
  if (!qword_22B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6B0);
  }

  return result;
}

unint64_t sub_E1788()
{
  result = qword_22B6B8;
  if (!qword_22B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6B8);
  }

  return result;
}

unint64_t sub_E17DC()
{
  result = qword_22B6C0;
  if (!qword_22B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6C0);
  }

  return result;
}

unint64_t sub_E1830()
{
  result = qword_22B6C8;
  if (!qword_22B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6C8);
  }

  return result;
}

unint64_t sub_E1884()
{
  result = qword_22B6D0;
  if (!qword_22B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6D0);
  }

  return result;
}

unint64_t sub_E18D8()
{
  result = qword_22B6D8;
  if (!qword_22B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6D8);
  }

  return result;
}

unint64_t sub_E192C()
{
  result = qword_22B6E0;
  if (!qword_22B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6E0);
  }

  return result;
}

unint64_t sub_E1980()
{
  result = qword_22B6E8;
  if (!qword_22B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6E8);
  }

  return result;
}

unint64_t sub_E19D4()
{
  result = qword_22B6F0;
  if (!qword_22B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6F0);
  }

  return result;
}

unint64_t sub_E1A28()
{
  result = qword_22B6F8;
  if (!qword_22B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B6F8);
  }

  return result;
}

unint64_t sub_E1A7C()
{
  result = qword_22B700;
  if (!qword_22B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B700);
  }

  return result;
}

unint64_t sub_E1AD0()
{
  result = qword_22B708;
  if (!qword_22B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B708);
  }

  return result;
}

unint64_t sub_E1B24()
{
  result = qword_22B710;
  if (!qword_22B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B710);
  }

  return result;
}

unint64_t sub_E1B78()
{
  result = qword_22B718;
  if (!qword_22B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B718);
  }

  return result;
}

unint64_t sub_E1BCC()
{
  result = qword_22B720;
  if (!qword_22B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B720);
  }

  return result;
}

unint64_t sub_E1C20()
{
  result = qword_22B7C0;
  if (!qword_22B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B7C0);
  }

  return result;
}

unint64_t sub_E1C74()
{
  result = qword_22B7D0;
  if (!qword_22B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B7D0);
  }

  return result;
}

unint64_t sub_E1CC8()
{
  result = qword_22B7D8;
  if (!qword_22B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B7D8);
  }

  return result;
}

unint64_t sub_E1D1C()
{
  result = qword_22B7E0;
  if (!qword_22B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B7E0);
  }

  return result;
}

unint64_t sub_E1D70()
{
  result = qword_22B7F0;
  if (!qword_22B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B7F0);
  }

  return result;
}

unint64_t sub_E1DC4()
{
  result = qword_22B7F8;
  if (!qword_22B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B7F8);
  }

  return result;
}

unint64_t sub_E1E1C()
{
  result = qword_22B800;
  if (!qword_22B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B800);
  }

  return result;
}

unint64_t sub_E1E74()
{
  result = qword_22B808;
  if (!qword_22B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B808);
  }

  return result;
}

unint64_t sub_E1ECC()
{
  result = qword_22B810;
  if (!qword_22B810)
  {
    sub_1CC1C(&qword_22B818, &qword_1C3FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B810);
  }

  return result;
}

unint64_t sub_E1F34()
{
  result = qword_22B820;
  if (!qword_22B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B820);
  }

  return result;
}

unint64_t sub_E1F8C()
{
  result = qword_22B828;
  if (!qword_22B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B828);
  }

  return result;
}

uint64_t sub_E1FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 377))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_E2040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 377) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 377) = 0;
    }

    if (a2)
    {
      *(result + 80) = ~a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BookHistory.CollectionAddition(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for BookHistory.CollectionAddition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BookHistory.CollectionAddition(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_E21DC(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_E2224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

uint64_t sub_E2294(uint64_t *a1, unsigned int a2)
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

uint64_t sub_E22E4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_E2338(void *result, int a2)
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

uint64_t dispatch thunk of BookHistoryServiceType.fetchBookHistory(assetGroup:for:limit:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_441B4;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for BookHistoryService()
{
  result = qword_22B860;
  if (!qword_22B860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E2504()
{
  result = sub_1B4204();
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

uint64_t getEnumTagSinglePayload for BookHistory.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BookHistory.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BookHistory.Errors(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 17))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x11)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BookHistory.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 16) = 0;
    *result = a2 - 239;
    *(result + 8) = 0;
    if (a3 >= 0xEF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
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

uint64_t getEnumTagSinglePayload for BookHistoryFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BookHistoryFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_E2A5C()
{
  result = qword_22B908;
  if (!qword_22B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B908);
  }

  return result;
}

unint64_t sub_E2AB4()
{
  result = qword_22B910;
  if (!qword_22B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B910);
  }

  return result;
}

unint64_t sub_E2B0C()
{
  result = qword_22B918;
  if (!qword_22B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B918);
  }

  return result;
}

unint64_t sub_E2B64()
{
  result = qword_22B920;
  if (!qword_22B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B920);
  }

  return result;
}

unint64_t sub_E2BBC()
{
  result = qword_22B928;
  if (!qword_22B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B928);
  }

  return result;
}

unint64_t sub_E2C14()
{
  result = qword_22B930;
  if (!qword_22B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B930);
  }

  return result;
}

unint64_t sub_E2C6C()
{
  result = qword_22B938;
  if (!qword_22B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B938);
  }

  return result;
}

unint64_t sub_E2CC4()
{
  result = qword_22B940;
  if (!qword_22B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B940);
  }

  return result;
}

unint64_t sub_E2D1C()
{
  result = qword_22B948;
  if (!qword_22B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B948);
  }

  return result;
}

unint64_t sub_E2D74()
{
  result = qword_22B950;
  if (!qword_22B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B950);
  }

  return result;
}

unint64_t sub_E2DCC()
{
  result = qword_22B958;
  if (!qword_22B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B958);
  }

  return result;
}

unint64_t sub_E2E24()
{
  result = qword_22B960;
  if (!qword_22B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B960);
  }

  return result;
}

unint64_t sub_E2E7C()
{
  result = qword_22B968;
  if (!qword_22B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B968);
  }

  return result;
}

unint64_t sub_E2ED4()
{
  result = qword_22B970;
  if (!qword_22B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B970);
  }

  return result;
}

unint64_t sub_E2F2C()
{
  result = qword_22B978;
  if (!qword_22B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B978);
  }

  return result;
}

unint64_t sub_E2F84()
{
  result = qword_22B980;
  if (!qword_22B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B980);
  }

  return result;
}

unint64_t sub_E2FDC()
{
  result = qword_22B988;
  if (!qword_22B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B988);
  }

  return result;
}

unint64_t sub_E3034()
{
  result = qword_22B990;
  if (!qword_22B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B990);
  }

  return result;
}

unint64_t sub_E308C()
{
  result = qword_22B998;
  if (!qword_22B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B998);
  }

  return result;
}

unint64_t sub_E30E4()
{
  result = qword_22B9A0;
  if (!qword_22B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9A0);
  }

  return result;
}

unint64_t sub_E313C()
{
  result = qword_22B9A8;
  if (!qword_22B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9A8);
  }

  return result;
}

unint64_t sub_E3194()
{
  result = qword_22B9B0;
  if (!qword_22B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9B0);
  }

  return result;
}

unint64_t sub_E31EC()
{
  result = qword_22B9B8;
  if (!qword_22B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9B8);
  }

  return result;
}

unint64_t sub_E3244()
{
  result = qword_22B9C0;
  if (!qword_22B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9C0);
  }

  return result;
}

unint64_t sub_E329C()
{
  result = qword_22B9C8;
  if (!qword_22B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9C8);
  }

  return result;
}

unint64_t sub_E32F4()
{
  result = qword_22B9D0;
  if (!qword_22B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9D0);
  }

  return result;
}

unint64_t sub_E334C()
{
  result = qword_22B9D8;
  if (!qword_22B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9D8);
  }

  return result;
}

unint64_t sub_E33A4()
{
  result = qword_22B9E0;
  if (!qword_22B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9E0);
  }

  return result;
}

unint64_t sub_E33FC()
{
  result = qword_22B9E8;
  if (!qword_22B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9E8);
  }

  return result;
}

unint64_t sub_E3454()
{
  result = qword_22B9F0;
  if (!qword_22B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9F0);
  }

  return result;
}

unint64_t sub_E34AC()
{
  result = qword_22B9F8;
  if (!qword_22B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B9F8);
  }

  return result;
}

unint64_t sub_E3504()
{
  result = qword_22BA00;
  if (!qword_22BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA00);
  }

  return result;
}

unint64_t sub_E355C()
{
  result = qword_22BA08;
  if (!qword_22BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA08);
  }

  return result;
}

unint64_t sub_E35B4()
{
  result = qword_22BA10;
  if (!qword_22BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA10);
  }

  return result;
}

unint64_t sub_E360C()
{
  result = qword_22BA18;
  if (!qword_22BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA18);
  }

  return result;
}

unint64_t sub_E3664()
{
  result = qword_22BA20;
  if (!qword_22BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA20);
  }

  return result;
}

unint64_t sub_E36BC()
{
  result = qword_22BA28;
  if (!qword_22BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA28);
  }

  return result;
}

unint64_t sub_E3714()
{
  result = qword_22BA30;
  if (!qword_22BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA30);
  }

  return result;
}

unint64_t sub_E376C()
{
  result = qword_22BA38;
  if (!qword_22BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA38);
  }

  return result;
}

unint64_t sub_E37C4()
{
  result = qword_22BA40;
  if (!qword_22BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA40);
  }

  return result;
}

unint64_t sub_E381C()
{
  result = qword_22BA48;
  if (!qword_22BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA48);
  }

  return result;
}

unint64_t sub_E3874()
{
  result = qword_22BA50;
  if (!qword_22BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA50);
  }

  return result;
}

unint64_t sub_E38CC()
{
  result = qword_22BA58;
  if (!qword_22BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA58);
  }

  return result;
}

unint64_t sub_E3924()
{
  result = qword_22BA60;
  if (!qword_22BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA60);
  }

  return result;
}

unint64_t sub_E397C()
{
  result = qword_22BA68;
  if (!qword_22BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA68);
  }

  return result;
}

unint64_t sub_E39D4()
{
  result = qword_22BA70;
  if (!qword_22BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA70);
  }

  return result;
}

unint64_t sub_E3A2C()
{
  result = qword_22BA78;
  if (!qword_22BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA78);
  }

  return result;
}

unint64_t sub_E3A84()
{
  result = qword_22BA80;
  if (!qword_22BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA80);
  }

  return result;
}

unint64_t sub_E3ADC()
{
  result = qword_22BA88;
  if (!qword_22BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA88);
  }

  return result;
}

unint64_t sub_E3B34()
{
  result = qword_22BA90;
  if (!qword_22BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA90);
  }

  return result;
}

unint64_t sub_E3B8C()
{
  result = qword_22BA98;
  if (!qword_22BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BA98);
  }

  return result;
}

unint64_t sub_E3BE4()
{
  result = qword_22BAA0;
  if (!qword_22BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAA0);
  }

  return result;
}

unint64_t sub_E3C3C()
{
  result = qword_22BAA8;
  if (!qword_22BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAA8);
  }

  return result;
}

unint64_t sub_E3C94()
{
  result = qword_22BAB0;
  if (!qword_22BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAB0);
  }

  return result;
}

unint64_t sub_E3CEC()
{
  result = qword_22BAB8;
  if (!qword_22BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAB8);
  }

  return result;
}

unint64_t sub_E3D40()
{
  result = qword_22BAE0;
  if (!qword_22BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAE0);
  }

  return result;
}

unint64_t sub_E3D94()
{
  result = qword_22BAE8;
  if (!qword_22BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAE8);
  }

  return result;
}

unint64_t sub_E3DE8()
{
  result = qword_22BAF0;
  if (!qword_22BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAF0);
  }

  return result;
}

unint64_t sub_E3E3C()
{
  result = qword_22BAF8;
  if (!qword_22BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BAF8);
  }

  return result;
}

uint64_t sub_E3E90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C6C61756E616DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xED0000796C6C6163 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_E3FB0(uint64_t *a1)
{
  v36 = sub_2B0C(&qword_22BB00, &qword_1C59B8);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v36);
  v38 = &v31 - v3;
  v37 = sub_2B0C(&qword_22BB08, &qword_1C59C0);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v37);
  v6 = &v31 - v5;
  v7 = sub_2B0C(&qword_22BB10, &qword_1C59C8);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_2B0C(&qword_22BB18, &qword_1C59D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  sub_2698(a1, v16);
  sub_E3D40();
  v18 = v39;
  sub_1B5864();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1B5444();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_9CA4C();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_E3DE8();
          sub_1B5304();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          sub_2BF8(v40);
          return v12;
        }

        v45 = 2;
        sub_E3D94();
        v29 = v15;
        sub_1B5304();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_E3E3C();
        v29 = v15;
        sub_1B5304();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1B5114();
    swift_allocError();
    v27 = v26;
    v12 = *(sub_2B0C(&qword_22ADB8, &qword_1C2520) + 48);
    *v27 = &type metadata for BookHistory.MarkedFinishedInfo.Mechanism;
    sub_1B5314();
    sub_1B50E4();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  sub_2BF8(v40);
  return v12;
}

uint64_t sub_E4520(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000000001D5050 == a2;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D5230 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D5070 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49776569766572 && a2 == 0xEA00000000006F66 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D5250 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D5270 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000001D5290 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D52B0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000001D52D0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000000001D52F0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D5320 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5340 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000001D5370 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D5390 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000000001D53B0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D53D0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000022 && 0x80000000001D53F0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5420 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_E4AA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000000001D5050 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D5070 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D5230 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49776569766572 && a2 == 0xEA00000000006F66 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D5250 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D5270 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000001D5290 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D52B0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000001D52D0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000000001D52F0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D73A0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5340 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x64656C706D6173 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000000001D5390 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000000001D53B0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D53D0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000022 && 0x80000000001D53F0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5420 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}