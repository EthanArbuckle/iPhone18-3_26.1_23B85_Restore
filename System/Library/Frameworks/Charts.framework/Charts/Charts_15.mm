uint64_t sub_1AADBF2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_1AAF8D554();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1AAF8D5F4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1AAF8CFB4();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBF02C(a2 + 448, v38);
  v14 = *(a3 + 184);
  if (v14)
  {
    if (*(a3 + 152))
    {
      if (*(a3 + 176))
      {
        v15 = 0;
        v16 = *(v14 + 16);
        if (v16)
        {
          v17 = *(a3 + 184);
        }

        else
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v17 = *(a3 + 160);
        v15 = *(a3 + 168);
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
      v17 = *(a3 + 136);
      v15 = *(a3 + 144);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v18 = 255;
  }

  sub_1AAD9C220(v36, v38, v17, v15, v18);
  sub_1AAD9A5B4(v37);
  memcpy(v39, v37, 0x1E0uLL);
  sub_1AADB35BC(v36, v39, *(a2 + 528), *(a2 + 536), *(a2 + 544), *(a2 + 552), a3, a4, v35);
  swift_unknownObjectRetain();
  v19 = sub_1AAF8CF34();
  v20 = sub_1AAF8CDC4();
  v21 = sub_1AAF8CF54();
  if (!(*(*(v20 - 8) + 48))(v22, 1, v20))
  {
    sub_1AAD9A6F4();
    *(swift_allocObject() + 16) = xmmword_1AAF92AB0;
    sub_1AACED220(v35, &v32);
    sub_1AADACA00();
    swift_dynamicCast();
    sub_1AAF8CDB4();
  }

  v21(&v33, 0);
  v19(&v34, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1AAF8CF44();
  swift_unknownObjectRelease();
  if (qword_1EB422B40 != -1)
  {
    swift_once();
  }

  v23 = v31;
  v24 = sub_1AAD0F5D8(v31, qword_1EB432060);
  (*(v29 + 16))(v8, v24, v23);
  sub_1AAF8D5E4();
  v25 = v30;
  sub_1AAF8CF94();
  (*(v28 + 8))(v10, v25);
  (*(v11 + 8))(v13, v27);
  sub_1AAD9A5F8(v35);
  sub_1AAD9A64C(v36);
  return sub_1AADBFF98(v38, sub_1AADBF090);
}

uint64_t sub_1AADBF760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  v92 = *(a1 + 96);
  v7 = *(a1 + 96);
  v93 = *(a1 + 112);
  v8 = *(a1 + 112);
  v94 = *(a1 + 128);
  v9 = *(a1 + 128);
  v95 = *(a1 + 144);
  v10 = *(a1 + 16);
  v88 = *(a1 + 32);
  v11 = *(a1 + 32);
  v89 = *(a1 + 48);
  v12 = *(a1 + 48);
  v90 = *(a1 + 64);
  v13 = *(a1 + 64);
  v91 = *(a1 + 80);
  v87 = *(a1 + 16);
  v14 = *(a1 + 256);
  v101 = *(a1 + 240);
  v102 = v14;
  v15 = *(a1 + 288);
  v103 = *(a1 + 272);
  v104 = v15;
  v16 = *(a1 + 192);
  v97 = *(a1 + 176);
  v98 = v16;
  v17 = *(a1 + 224);
  v99 = *(a1 + 208);
  v100 = v17;
  v18 = *(a1 + 144);
  v96 = *(a1 + 160);
  v19 = *(a1 + 368);
  v110 = *(a1 + 384);
  v20 = *(a1 + 416);
  v111 = *(a1 + 400);
  v112 = v20;
  v113 = *(a1 + 432);
  v21 = *(a1 + 304);
  v106 = *(a1 + 320);
  v22 = *(a1 + 352);
  v107 = *(a1 + 336);
  v108 = v22;
  v109 = v19;
  v105 = v21;
  v70 = *(a2 + 32);
  v68 = *(a2 + 72);
  v66 = *(a2 + 112);
  v114[0] = v10;
  v114[4] = v6;
  v114[3] = v13;
  v114[2] = v12;
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  v71 = *(a2 + 48);
  v114[1] = v11;
  v114[8] = v18;
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  v69 = *(a2 + 88);
  v114[7] = v9;
  v114[6] = v8;
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  v67 = *(a2 + 128);
  v114[5] = v7;
  if (sub_1AACDB99C(v114))
  {
    goto LABEL_17;
  }

  v29 = sub_1AACD2C84(v114);
  v30 = *(v29 + 32);
  v58 = *(v29 + 40);
  v31 = *(v29 + 48);
  v65[6] = v102;
  v65[7] = v103;
  v65[8] = v104;
  v65[4] = v100;
  v65[5] = v101;
  v65[2] = v98;
  v65[3] = v99;
  v65[0] = v96;
  v65[1] = v97;
  if (sub_1AACDB99C(v65))
  {
    goto LABEL_17;
  }

  v32 = *(sub_1AACD2C84(v65) + 48);
  v64[6] = v111;
  v64[7] = v112;
  v64[8] = v113;
  v64[4] = v109;
  v64[5] = v110;
  v64[2] = v107;
  v64[3] = v108;
  v64[0] = v105;
  v64[1] = v106;
  if (sub_1AACDB99C(v64))
  {
    goto LABEL_17;
  }

  v33 = *(sub_1AACD2C84(v64) + 48);
  v63[2] = v89;
  v63[3] = v90;
  v63[6] = v93;
  v63[7] = v94;
  v63[4] = v91;
  v63[5] = v92;
  v63[0] = v87;
  v63[1] = v88;
  v63[14] = v101;
  v63[15] = v102;
  v63[16] = v103;
  v63[17] = v104;
  v63[10] = v97;
  v63[11] = v98;
  v63[12] = v99;
  v63[13] = v100;
  v63[8] = v95;
  v63[9] = v96;
  v63[24] = v111;
  v63[25] = v112;
  v63[26] = v113;
  v63[20] = v107;
  v63[21] = v108;
  v63[22] = v109;
  v63[23] = v110;
  v63[18] = v105;
  v63[19] = v106;
  if (v31 < 0)
  {
    if (v32 < 0)
    {
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v33 < 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  if ((v32 & 0x80000000) == 0 || (v33 & 0x80000000) == 0)
  {
    sub_1AACCAE10(v30, v58, v31);
    goto LABEL_17;
  }

LABEL_12:
  sub_1AAD5835C(&v87, v86);
  sub_1AAD5835C(&v96, v86);
  sub_1AAD5835C(&v105, v86);
  sub_1AADBFF98(v63, sub_1AADBFF38);
  sub_1AAF8CD24();
  sub_1AAF8CCE4();
  sub_1AAF8CC04();
  swift_allocObject();
  v34 = sub_1AAF8CBF4();
  sub_1AAF8D064();
  sub_1AAF8D074();
  v72 = v23;
  v73 = v24;
  v74 = v70;
  v35 = *(a1 + 80);
  v86[5] = *(a1 + 96);
  v36 = *(a1 + 128);
  v86[6] = *(a1 + 112);
  v86[7] = v36;
  v86[8] = *(a1 + 144);
  v37 = *(a1 + 16);
  v86[1] = *(a1 + 32);
  v38 = *(a1 + 64);
  v86[2] = *(a1 + 48);
  v86[3] = v38;
  v62 = v34;
  v75 = v71;
  v86[4] = v35;
  v86[0] = v37;

  v39 = sub_1AADC6AE0(v86);
  v76 = v25;
  v77 = v26;
  v78 = v68;
  v40 = *(a1 + 224);
  v85[5] = *(a1 + 240);
  v41 = *(a1 + 272);
  v85[6] = *(a1 + 256);
  v85[7] = v41;
  v85[8] = *(a1 + 288);
  v42 = *(a1 + 160);
  v85[1] = *(a1 + 176);
  v43 = *(a1 + 208);
  v85[2] = *(a1 + 192);
  v85[3] = v43;
  v59 = v39;
  v79 = v69;
  v85[4] = v40;
  v85[0] = v42;
  v57 = sub_1AADC6AE0(v85);
  v80 = v27;
  v81 = v28;
  v82 = v66;
  v83 = v67;
  v44 = *(a1 + 400);
  v84[7] = *(a1 + 416);
  v84[8] = *(a1 + 432);
  v45 = *(a1 + 352);
  v84[2] = *(a1 + 336);
  v84[3] = v45;
  v46 = *(a1 + 368);
  v84[5] = *(a1 + 384);
  v84[6] = v44;
  v84[4] = v46;
  v47 = *(a1 + 320);
  v84[0] = *(a1 + 304);
  v84[1] = v47;
  v48 = sub_1AADC6AE0(v84);
  *&v49 = __PAIR64__(v57, v59);
  *(&v49 + 1) = v48;
  v60 = v49;

  sub_1AAF8D094();
  v50 = sub_1AAF8CC64();
  *(v51 + 32) = v60;
  v50(v61, 0);

  if ((*(a1 + 592) & 1) == 0)
  {
    v52 = *(a1 + 576);
    v53 = *(a1 + 584);

    v54 = sub_1AAF8CC64();
    *(v55 + 16) = v52;
    *(v55 + 24) = v53;
    v54(v61, 0);
  }

  sub_1AADBF2C4(&v62, a1, a2, a3);

  sub_1AAF8CC24();

  return v34;
}

void sub_1AADBFF38()
{
  if (!qword_1EB424808)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB424808);
    }
  }
}

uint64_t sub_1AADBFF98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AADC0010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 552))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
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

double sub_1AADC0064(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 552) = 1;
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
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 552) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADC0174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_1AAF8D554();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1AAF8D5F4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1AAF8CFB4();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBF02C(a2 + 448, v38);
  v14 = *(a3 + 184);
  if (v14)
  {
    if (*(a3 + 152))
    {
      if (*(a3 + 176))
      {
        v15 = 0;
        v16 = *(v14 + 16);
        if (v16)
        {
          v17 = *(a3 + 184);
        }

        else
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v17 = *(a3 + 160);
        v15 = *(a3 + 168);
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
      v17 = *(a3 + 136);
      v15 = *(a3 + 144);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v18 = 255;
  }

  sub_1AAD9C220(v36, v38, v17, v15, v18);
  sub_1AAD9A5B4(v37);
  memcpy(v39, v37, 0x1E0uLL);
  sub_1AADB35BC(v36, v39, *(a2 + 528), *(a2 + 536), *(a2 + 544), *(a2 + 552), a3, a4, v35);
  swift_unknownObjectRetain();
  v19 = sub_1AAF8CF34();
  v20 = sub_1AAF8CDC4();
  v21 = sub_1AAF8CF54();
  if (!(*(*(v20 - 8) + 48))(v22, 1, v20))
  {
    sub_1AAD9A6F4();
    *(swift_allocObject() + 16) = xmmword_1AAF92AB0;
    sub_1AACED220(v35, &v32);
    sub_1AADACA00();
    swift_dynamicCast();
    sub_1AAF8CDB4();
  }

  v21(&v33, 0);
  v19(&v34, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1AAF8CF44();
  swift_unknownObjectRelease();
  if (qword_1EB422B40 != -1)
  {
    swift_once();
  }

  v23 = v31;
  v24 = sub_1AAD0F5D8(v31, qword_1EB432060);
  (*(v29 + 16))(v8, v24, v23);
  sub_1AAF8D5E4();
  v25 = v30;
  sub_1AAF8CF94();
  (*(v28 + 8))(v10, v25);
  (*(v11 + 8))(v13, v27);
  sub_1AAD9A5F8(v35);
  sub_1AAD9A64C(v36);
  return sub_1AADBFF98(v38, sub_1AADBF090);
}

uint64_t sub_1AADC0610(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[6];
  v7 = a1[8];
  v90 = a1[7];
  v91 = v7;
  v8 = a1[2];
  v9 = a1[4];
  v86 = a1[3];
  v87 = v9;
  v10 = a1[4];
  v11 = a1[6];
  v88 = a1[5];
  v89 = v11;
  v12 = a1[2];
  v84 = a1[1];
  v85 = v12;
  v13 = a1[16];
  v98 = a1[15];
  v99 = v13;
  v14 = a1[18];
  v100 = a1[17];
  v101 = v14;
  v15 = a1[12];
  v94 = a1[11];
  v95 = v15;
  v16 = a1[14];
  v96 = a1[13];
  v97 = v16;
  v17 = a1[8];
  v18 = a1[10];
  v92 = a1[9];
  v93 = v18;
  v19 = a1[26];
  v108 = a1[25];
  v109 = v19;
  v20 = a1[22];
  v104 = a1[21];
  v105 = v20;
  v21 = a1[24];
  v106 = a1[23];
  v107 = v21;
  v22 = a1[20];
  v102 = a1[19];
  v103 = v22;
  v23 = *(a2 + 40);
  v70 = *(a2 + 24);
  v71 = v23;
  v24 = *(a2 + 80);
  v68 = *(a2 + 64);
  v69 = v24;
  v25 = *(a2 + 120);
  v66 = *(a2 + 104);
  v67 = v25;
  v110 = a1[27];
  v111[0] = v84;
  v26 = *(a2 + 16);
  v111[3] = v10;
  v111[4] = v88;
  v27 = *(a2 + 56);
  v111[1] = v8;
  v111[2] = v86;
  v28 = *(a2 + 96);
  v111[7] = v17;
  v111[8] = v92;
  v111[5] = v6;
  v111[6] = v90;
  if (!sub_1AACDB99C(v111))
  {
    v29 = sub_1AACD2C84(v111);
    v31 = *(v29 + 32);
    v30 = *(v29 + 40);
    v32 = *(v29 + 48);
    v65[6] = v99;
    v65[7] = v100;
    v65[8] = v101;
    v65[4] = v97;
    v65[5] = v98;
    v65[2] = v95;
    v65[3] = v96;
    v65[0] = v93;
    v65[1] = v94;
    if (!sub_1AACDB99C(v65))
    {
      v33 = *(sub_1AACD2C84(v65) + 48);
      v64[6] = v108;
      v64[7] = v109;
      v64[8] = v110;
      v64[4] = v106;
      v64[5] = v107;
      v64[2] = v104;
      v64[3] = v105;
      v64[0] = v102;
      v64[1] = v103;
      if (!sub_1AACDB99C(v64))
      {
        v34 = *(sub_1AACD2C84(v64) + 48);
        if (v32 < 0)
        {
          if ((v33 & 0x80000000) == 0 && (v34 & 0x80000000) == 0)
          {
            v58 = xmmword_1AAF95170;
            goto LABEL_13;
          }
        }

        else
        {
          if (v33 < 0)
          {
            if ((v34 & 0x80000000) == 0)
            {
              v58 = xmmword_1AAF938C0;
              goto LABEL_13;
            }
          }

          else if (v34 < 0)
          {
            v58 = xmmword_1AAF95180;
LABEL_13:
            v63[6] = v90;
            v63[7] = v91;
            v63[2] = v86;
            v63[3] = v87;
            v63[4] = v88;
            v63[5] = v89;
            v63[0] = v84;
            v63[1] = v85;
            v63[14] = v98;
            v63[15] = v99;
            v63[16] = v100;
            v63[17] = v101;
            v63[10] = v94;
            v63[11] = v95;
            v63[12] = v96;
            v63[13] = v97;
            v63[8] = v92;
            v63[9] = v93;
            v63[24] = v108;
            v63[25] = v109;
            v63[26] = v110;
            v63[20] = v104;
            v63[21] = v105;
            v63[22] = v106;
            v63[23] = v107;
            v63[18] = v102;
            v63[19] = v103;
            sub_1AAD5835C(&v84, v83);
            sub_1AAD5835C(&v93, v83);
            sub_1AAD5835C(&v102, v83);
            sub_1AADBFF98(v63, sub_1AADBFF38);
            sub_1AAF8CD24();
            sub_1AAF8CCA4();
            sub_1AAF8CC04();
            swift_allocObject();
            v35 = sub_1AAF8CBF4();
            sub_1AAF8D064();
            sub_1AAF8D074();

            sub_1AAF8D094();
            v36 = sub_1AAF8CC64();
            *(v37 + 16) = v58;
            v36(v83, 0);

            v62 = v35;
            v72 = v26;
            v73 = v70;
            v74 = v71;
            v38 = a1[8];
            v83[6] = a1[7];
            v83[7] = v38;
            v83[8] = a1[9];
            v39 = a1[4];
            v83[2] = a1[3];
            v83[3] = v39;
            v40 = a1[6];
            v83[4] = a1[5];
            v83[5] = v40;
            v41 = a1[2];
            v83[0] = a1[1];
            v83[1] = v41;

            v42 = sub_1AADC6AE0(v83);
            v75 = v27;
            v59 = v42;
            v76 = v68;
            v77 = v69;
            v43 = a1[17];
            v82[6] = a1[16];
            v82[7] = v43;
            v82[8] = a1[18];
            v44 = a1[13];
            v82[2] = a1[12];
            v82[3] = v44;
            v45 = a1[15];
            v82[4] = a1[14];
            v82[5] = v45;
            v46 = a1[11];
            v82[0] = a1[10];
            v82[1] = v46;
            v47 = sub_1AADC6AE0(v82);
            v78 = v28;
            v79 = v66;
            v80 = v67;
            v48 = a1[23];
            v81[5] = a1[24];
            v49 = a1[26];
            v81[6] = a1[25];
            v81[7] = v49;
            v81[8] = a1[27];
            v50 = a1[19];
            v81[1] = a1[20];
            v51 = a1[22];
            v81[2] = a1[21];
            v81[3] = v51;
            v81[4] = v48;
            v57 = v47;
            v81[0] = v50;
            v52 = sub_1AADC6AE0(v81);
            *&v53 = __PAIR64__(v57, v59);
            *(&v53 + 1) = v52;
            v60 = v53;

            v54 = sub_1AAF8CC64();
            *(v55 + 32) = v60;
            v54(v61, 0);

            sub_1AADC0174(&v62, a1, a2, a3);

            sub_1AAF8CC24();

            return v35;
          }

          sub_1AACCAE10(v31, v30, v32);
        }
      }
    }
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AADC0C0C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AADB09E4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AAD94A74();
    v7 = v10;
  }

  sub_1AAD80E08(*(v7 + 48) + 40 * v5);
  v8 = *(*(v7 + 56) + 8 * v5);
  sub_1AAD92750(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1AADC0CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  v10 = MEMORY[0x1E69E6720];
  sub_1AADC4E74(0, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - v12;
  sub_1AADC4D28(a3, v26 - v12, &qword_1EB424B60, v9, v10, sub_1AADC4E74);
  v14 = sub_1AAF8F994();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_1AADC4DEC(v13, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1AADC4E74);
  }

  else
  {
    sub_1AAF8F984();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1AAF8F954();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1AAF8F684() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1AADC4DEC(a3, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1AADC4E74);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AADC4DEC(a3, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1AADC4E74);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1AADC1080(uint64_t a1, uint64_t a2)
{
  v6 = sub_1AAF8D2E4();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-v10 - 8];
  v31[0] = a1;
  v31[1] = a2;
  v12 = *(v2 + 112);
  v29[6] = *(v2 + 96);
  v29[7] = v12;
  v30 = *(v2 + 128);
  v13 = *(v2 + 48);
  v29[2] = *(v2 + 32);
  v29[3] = v13;
  v14 = *(v2 + 80);
  v29[4] = *(v2 + 64);
  v29[5] = v14;
  v15 = *(v2 + 16);
  v29[0] = *v2;
  v29[1] = v15;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(a2, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (((a1 + 1) * (a2 + 1)) >> 64 != ((a1 + 1) * (a2 + 1)) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 + 0x4000000000000000 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((2 * v16 * 3) >> 64 == (6 * v16) >> 63)
  {
    if (qword_1EB422B60 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  swift_once();
LABEL_8:
  sub_1AADC4E74(0, &qword_1EB424868, MEMORY[0x1E697A430], MEMORY[0x1E69E6F90]);
  sub_1AAF8D384();
  v17 = swift_allocObject();
  v26 = xmmword_1AAF92AB0;
  *(v17 + 16) = xmmword_1AAF92AB0;

  sub_1AAF8D374();
  sub_1AAF8D2D4();
  v18 = v32;
  (*(v32 + 16))(v8, v11, v6);
  sub_1AAF8D3B4();
  swift_allocObject();
  v19 = sub_1AAF8D2F4();
  v20 = v19;
  if (v3)
  {
    (*(v18 + 8))(v11, v6);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v26 - 2) = v29;
    *(&v26 - 1) = v31;
    v21 = sub_1AAF8D324();
    MEMORY[0x1EEE9AC00](v21);
    *(&v26 - 2) = v29;
    *(&v26 - 1) = v31;
    sub_1AAF8D334();
    v22 = MEMORY[0x1E697A428];
    sub_1AADC4E74(0, &qword_1EB424870, MEMORY[0x1E697A428], MEMORY[0x1E69E6F90]);
    sub_1AAF8D354();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    sub_1AADBE218();
    sub_1AAF8D344();
    v28 = v23;
    v24 = sub_1AAF8D364();
    *&v26 = v6;
    sub_1AADC4E74(0, &qword_1EB424878, v22, MEMORY[0x1E69E62F8]);
    sub_1AADC4B20(&qword_1EB424880, &qword_1EB424878, v22);
    sub_1AAF8D314();

    v24(v27, 0);
    (*(v32 + 8))(v11, v26);
  }

  return v20;
}

uint64_t sub_1AADC15C8(uint64_t a1, uint64_t a2)
{
  sub_1AAF8F964();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1AADC4C20();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD00000000000003FLL, 0x80000001AAFCE070);
    v8 = sub_1AAF907B4();
    MEMORY[0x1AC5982F0](v8);

    MEMORY[0x1AC5982F0](46, 0xE100000000000000);
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

void *sub_1AADC1750()
{
  result = sub_1AADF6F70(MEMORY[0x1E69E7CC0]);
  off_1EB424810 = result;
  return result;
}

uint64_t sub_1AADC1778()
{
  v8 = sub_1AAF8FDC4();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AAF8FDB4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1AAF8F2C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1AADC4AD4();
  sub_1AAF8F2B4();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1AADC4A8C(&qword_1EB424848, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1AADC4E74(0, &qword_1EB424850, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1AADC4B20(&qword_1EB424858, &qword_1EB424850, v5);
  sub_1AAF8FF64();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1AAF8FDE4();
  qword_1EB424818 = result;
  return result;
}

uint64_t sub_1AADC19EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AADC4E74(0, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  if (qword_1EB422B68 != -1)
  {
    swift_once();
  }

  v19 = a1;
  sub_1AAD80D58();

  sub_1AAF90024();
  swift_beginAccess();
  if (*(off_1EB424810 + 2) && (sub_1AADB09E4(v20), (v9 & 1) != 0))
  {
    swift_endAccess();

    sub_1AAD80E08(v20);
    sub_1AAF8F9A4();
  }

  else
  {
    swift_endAccess();
    sub_1AAD80E08(v20);
  }

  v19 = a1;

  sub_1AAF90024();
  v10 = sub_1AAF8F994();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1AAF8F974();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = sub_1AAF8F964();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a1;
  v14 = sub_1AADC0CA4(0, 0, v8, &unk_1AAF9E238, v12);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = off_1EB424810;
  off_1EB424810 = 0x8000000000000000;
  sub_1AADD24D0(v14, v20, isUniquelyReferenced_nonNull_native);
  sub_1AAD80E08(v20);
  off_1EB424810 = v18;
  return swift_endAccess();
}

uint64_t sub_1AADC1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1AAF90254();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_1AAF8F974();
  v6[9] = sub_1AAF8F964();
  v9 = sub_1AAF8F954();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1AADC1DC8, v9, v8);
}

uint64_t sub_1AADC1DC8()
{
  sub_1AAF905E4();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1AADC1E94;

  return sub_1AADC2F04(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1AADC1E94()
{
  v2 = *v1;
  v2[13] = v0;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_1AADC2124;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_1AADC202C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1AADC202C()
{
  v0[14] = v0[13];
  if (sub_1AAF8F9C4())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1AADC2218;
    v5 = v0[3];
    v4 = v0[4];

    return sub_1AADC436C(v5, v4);
  }
}

uint64_t sub_1AADC2124()
{
  v0[14] = 0;
  if (sub_1AAF8F9C4())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1AADC2218;
    v5 = v0[3];
    v4 = v0[4];

    return sub_1AADC436C(v5, v4);
  }
}

uint64_t sub_1AADC2218()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1AADC2338, v3, v2);
}

uint64_t sub_1AADC2338()
{

  if (qword_1EB422B70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  *(swift_task_alloc() + 16) = v1;
  sub_1AADC4E74(0, &qword_1EB424820, sub_1AAD9AABC, MEMORY[0x1E69E6720]);
  sub_1AAF8FDD4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AADC246C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EB422B68 != -1)
  {
    swift_once();
  }

  sub_1AAD80D58();

  sub_1AAF90024();
  swift_beginAccess();
  *a1 = sub_1AADC0C0C(v3);
  swift_endAccess();
  return sub_1AAD80E08(v3);
}

uint64_t sub_1AADC253C()
{
  if (qword_1EB422B68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = sub_1AADC284C(v0);

  off_1EB424810 = v1;
}

uint64_t sub_1AADC25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1AAF8F974();
  v5[3] = sub_1AAF8F964();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1AADC26B0;

  return sub_1AADC436C(a4, a5);
}

uint64_t sub_1AADC26B0()
{

  v1 = sub_1AAF8F954();

  return MEMORY[0x1EEE6DFA0](sub_1AADC27EC, v1, v0);
}

uint64_t sub_1AADC27EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AADC284C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      sub_1AAD9AB20(*(a1 + 48) + 40 * v12, v31);
      *(&v32 + 1) = *(*(a1 + 56) + 8 * v12);
      v28 = v31[0];
      v29 = v31[1];
      v30 = v32;
      v13 = *(&v32 + 1);

      if ((swift_task_isCancelled() & 1) == 0)
      {
        break;
      }

      result = sub_1AADC4EF0(&v28);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v26 = v29;
    v27 = v30;
    v25 = v28;
    v14 = *(v2 + 16);
    if (*(v2 + 24) <= v14)
    {

      sub_1AAD8A130(v14 + 1, 1);
      v2 = v33;
    }

    else
    {
    }

    result = sub_1AAF8FFE4();
    v15 = v2 + 64;
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v15 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *(*(v2 + 56) + 8 * v19) = v13;
    ++*(v2 + 16);
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1AADC2AB8()
{
  sub_1AAF8D094();
  sub_1AAF8CC14();
  if (qword_1EB422B70 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB424818;
  v3[4] = sub_1AADC253C;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1AAD8867C;
  v3[3] = &unk_1F1FD2EE0;
  v1 = _Block_copy(v3);

  dispatch_sync(v0, v1);
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1AADC2BF4(uint64_t a1, __int128 *a2)
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
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1AADC2C40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1AADC2C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADC2D14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AADC2E0C;

  return v6(a1);
}

uint64_t sub_1AADC2E0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AADC2F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1AAF90244();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1AADC3004, 0, 0);
}

uint64_t sub_1AADC3004()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1AAF90254();
  v5 = sub_1AADC4A8C(&qword_1EB424830, MEMORY[0x1E69E8820]);
  sub_1AAF905C4();
  sub_1AADC4A8C(&qword_1EB424838, MEMORY[0x1E69E87E8]);
  sub_1AAF90264();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1AADC3194;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1AADC3194()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1AADC3350, 0, 0);
}

uint64_t sub_1AADC3350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AADC33BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AAD9E0C8;

  return sub_1AADC1CD0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AADC3484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AADC4FC8;

  return sub_1AADC2D14(a1, v4);
}

uint64_t sub_1AADC353C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AAD9E0C8;

  return sub_1AADC2D14(a1, v4);
}

void sub_1AADC35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    sub_1AADBDDEC(a1, *a4, a4[1]);
  }

  else
  {
    sub_1AAF902C4();
    __break(1u);
  }
}

uint64_t sub_1AADC3688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v5 = *a4;
    v6 = a4[1];

    return sub_1AADBE22C(a1, v5, v6, 0);
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADC36F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v31 = a2;
  v32 = sub_1AAF8CFB4();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8D764();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5[5];
  v39 = a5[4];
  v40 = v15;
  v41 = a5[6];
  v42 = *(a5 + 14);
  v16 = a5[1];
  v35 = *a5;
  v36 = v16;
  v17 = a5[3];
  v37 = a5[2];
  v38 = v17;
  *&v18 = 255;
  *(&v18 + 1) = 255;
  v43 = v18;
  v34[0] = a3;
  v34[1] = a4;
  sub_1AAF8F974();
  v33[2] = a1;
  v33[3] = v34;
  v33[4] = &v43;

  sub_1AADC15C8(sub_1AADC4B84, v33);
  sub_1AAF8D754();
  sub_1AADC4D9C(0, &qword_1EB424860, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v29 = xmmword_1AAF99670;
  *(inited + 16) = xmmword_1AAF99670;
  v20 = *(a5 + 9);
  v21 = *(a5 + 18);
  v22 = *(a5 + 19);
  *(inited + 32) = *(a5 + 8);
  *(inited + 36) = v21;
  v23 = *(a5 + 29);
  *(inited + 40) = *(a5 + 28);
  sub_1AAD9A288(inited);
  v28 = v24;
  swift_setDeallocating();
  v25 = swift_initStackObject();
  *(v25 + 16) = v29;
  *(v25 + 32) = v20;
  *(v25 + 36) = v22;
  *(v25 + 40) = v23;
  sub_1AAD9A288(v25);
  v29 = v26;
  swift_setDeallocating();
  sub_1AAF8CBD4();
  sub_1AAF8D744();
  sub_1AAF8CF44();
  sub_1AAF8CF94();

  (*(v30 + 8))(v10, v32);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1AADC39F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v34 = sub_1AAF8D554();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AAF8D5F4();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1AAF8CFB4();
  v10 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADC4D28(a2 + 128, v42, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle, MEMORY[0x1E69E6720], sub_1AADC4D9C);
  v13 = *(a3 + 184);
  if (v13)
  {
    if (*(a3 + 152))
    {
      if (*(a3 + 176))
      {
        v14 = 0;
        v15 = *(v13 + 16);
        if (v15)
        {
          v16 = *(a3 + 184);
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = 2;
        }

        else
        {
          v17 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v16 = *(a3 + 160);
        v14 = *(a3 + 168);
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
      v16 = *(a3 + 136);
      v14 = *(a3 + 144);
    }
  }

  else
  {
    v16 = 0;
    v14 = 0;
    v17 = 255;
  }

  sub_1AAD9C220(v40, v42, v16, v14, v17);
  v18 = *(a2 + 208);
  v19 = *(a2 + 216);
  sub_1AAD9A96C(a3, v44);

  sub_1AADADC74(a3, v18, v19, v43);
  memcpy(v41, v43, sizeof(v41));
  nullsub_1(v41, v20);
  memcpy(v44, v41, 0x1E0uLL);
  sub_1AADB35BC(v40, v44, *(a2 + 224), *(a2 + 232), *(a2 + 240), *(a2 + 248), a3, v30, v39);
  swift_unknownObjectRetain();
  v21 = sub_1AAF8CF34();
  v22 = sub_1AAF8CDC4();
  v23 = sub_1AAF8CF54();
  if (!(*(*(v22 - 8) + 48))(v24, 1, v22))
  {
    sub_1AADC4E74(0, &qword_1EB422FC0, sub_1AADACA00, MEMORY[0x1E69E6F90]);
    *(swift_allocObject() + 16) = xmmword_1AAF92AB0;
    sub_1AACED220(v39, &v36);
    sub_1AADACA00();
    swift_dynamicCast();
    sub_1AAF8CDB4();
  }

  v23(&v37, 0);
  v21(&v38, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1AAF8CF44();
  swift_unknownObjectRelease();
  if (qword_1EB422B40 != -1)
  {
    swift_once();
  }

  v25 = v34;
  v26 = sub_1AAD0F5D8(v34, qword_1EB432060);
  (*(v32 + 16))(v7, v26, v25);
  sub_1AAF8D5E4();
  v27 = v35;
  sub_1AAF8CF94();
  sub_1AAD9A9C8(v43);
  (*(v33 + 8))(v9, v27);
  (*(v10 + 8))(v12, v31);
  sub_1AAD9A5F8(v39);
  sub_1AAD9A64C(v40);
  return sub_1AADC4DEC(v42, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle, MEMORY[0x1E69E6720], sub_1AADC4D9C);
}

uint64_t sub_1AADC3F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  sub_1AADC4E74(0, &qword_1EB424B60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = *(a2 + 64);
  v9 = *(a2 + 96);
  v33 = *(a2 + 80);
  v34 = v9;
  v10 = *(a2 + 96);
  v35 = *(a2 + 112);
  v11 = *(a2 + 32);
  v30[0] = *(a2 + 16);
  v30[1] = v11;
  v12 = *(a2 + 64);
  v31 = *(a2 + 48);
  v32 = v12;
  v41 = v31;
  v42 = v8;
  v39 = v30[0];
  v40 = v11;
  v13 = *(a2 + 112);
  v44 = v10;
  v45 = v13;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v36 = *(a2 + 128);
  v46 = *(a2 + 128);
  v43 = v33;
  v37 = v15;
  v38 = v14;
  swift_retain_n();
  v16 = sub_1AADC1080(255, 255);
  v25 = v7;
  sub_1AAF8CD24();

  sub_1AAF8CCB4();
  sub_1AAF8CC04();
  swift_allocObject();

  v17 = sub_1AAF8CBF4();
  sub_1AAF8D064();
  sub_1AAF8D074();

  sub_1AAF8D034();

  v29[0] = v16;
  v29[1] = v17;

  sub_1AADC36F0(v16, v17, v15, v14, v30);

  sub_1AADC39F4(v29, a1, a2, v26);
  sub_1AAD9AA1C();
  sub_1AAF8E144();
  if (qword_1ED9B36D8 != -1)
  {
    swift_once();
  }

  sub_1AACBFDA4(&xmmword_1ED9C34F0, v27);
  v18 = sub_1AACD20AC(v28, v27);
  sub_1AAD10630(v27);
  sub_1AAD10630(v28);
  if ((v18 & 1) == 0)
  {
    v19 = sub_1AAF8F994();
    v20 = v25;
    (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
    sub_1AAF8F974();
    v21 = sub_1AAF8F964();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v16;
    v22[5] = v17;

    sub_1AADC0CA4(0, 0, v20, &unk_1AAF9E270, v22);
  }

  sub_1AAF8D094();

  sub_1AAF8CC24();

  return v16;
}

uint64_t sub_1AADC436C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_1AAF8CDE4();
  v2[8] = swift_task_alloc();
  v3 = sub_1AAF8CE94();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_1AADC4E74(0, &qword_1EB424828, MEMORY[0x1E697A2B0], MEMORY[0x1E69E6720]);
  v2[12] = swift_task_alloc();
  sub_1AAF8F974();
  v2[13] = sub_1AAF8F964();
  v5 = sub_1AAF8F954();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AADC44E8, v5, v4);
}

uint64_t sub_1AADC44E8()
{
  sub_1AAF8CD24();
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1AADC45A8;
  v2 = *(v0 + 48);

  return MEMORY[0x1EEDD6320](v2);
}

uint64_t sub_1AADC45A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v6 = v4[14];
    v7 = v4[15];

    return MEMORY[0x1EEE6DFA0](sub_1AADC4A38, v6, v7);
  }

  else
  {
    sub_1AAF8CD44();
    v8 = swift_task_alloc();
    v4[19] = v8;
    *v8 = v5;
    v8[1] = sub_1AADC4734;

    return MEMORY[0x1EEDD6368](a1);
  }
}

uint64_t sub_1AADC4734(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1AADC4A54;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1AADC485C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1AADC485C()
{
  v1 = v0[21];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  sub_1AADC4D9C(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AAF9DE80;
  *(v6 + 32) = v1;
  (*(v4 + 104))(v3, *MEMORY[0x1E697A2A0], v5);

  sub_1AAF8CDD4();
  sub_1AAF8CEA4();
  v7 = sub_1AAF8CEB4();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = sub_1AAF8CF34();
  sub_1AAF8CFC4();
  v8(v0 + 2, 0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1AADC4A8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AADC4AD4()
{
  result = qword_1EB424840;
  if (!qword_1EB424840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB424840);
  }

  return result;
}

uint64_t sub_1AADC4B20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AADC4E74(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AADC4C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AADC4FC8;

  return sub_1AADC25E0(a1, v4, v5, v7, v6);
}

uint64_t sub_1AADC4D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AADC4D9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AADC4DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AADC4E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AADC4ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AADC4EF0(uint64_t a1)
{
  sub_1AADC4F4C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AADC4F4C()
{
  if (!qword_1EB424888)
  {
    sub_1AAD9AABC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424888);
    }
  }
}

uint64_t sub_1AADC4FCC@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  else
  {
    Value = AGGraphGetValue();
    v241 = *Value;
    v11 = *(Value + 64);
    v13 = *(Value + 32);
    v12 = *(Value + 48);
    v242 = *(Value + 16);
    v243 = v13;
    v244 = v12;
    v245 = v11;
    v174 = v241;
    v166 = v13;
    v169 = v242;
    v161 = v12;
    v5 = v11;
    sub_1AACB987C(&v241, &v236);
    v9 = v161;
    v8 = v166;
    v7 = v169;
    v6 = v174;
  }

  v241 = v6;
  v242 = v7;
  v243 = v8;
  v244 = v9;
  v245 = v5;
  v14 = sub_1AADC7A90(&v241);
  v167 = v15;
  v17 = v16;
  if (v4 == v3)
  {
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    v23 = AGGraphGetValue();
    v24 = *(v23 + 88);
    v236 = *(v23 + 72);
    v237 = v24;
    v25 = *(v23 + 120);
    v238 = *(v23 + 104);
    v239 = v25;
    v18 = *(v23 + 136);
    v240 = v18;
    v170 = v236;
    v157 = v238;
    v162 = v237;
    v153 = v25;
    sub_1AACB987C(&v236, &v231);
    v22 = v170;
    v21 = v153;
    v20 = v157;
    v19 = v162;
  }

  v236 = v22;
  v237 = v19;
  v238 = v20;
  v239 = v21;
  v240 = v18;
  v26 = sub_1AADC7A90(&v236);
  v28 = v27;
  v30 = v29;
  if (v4 == v3)
  {
    v31 = v26;
    v32 = 0;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
  }

  else
  {
    v31 = v26;
    v37 = AGGraphGetValue();
    v38 = *(v37 + 160);
    v231 = *(v37 + 144);
    v232 = v38;
    v39 = *(v37 + 192);
    v233 = *(v37 + 176);
    v234 = v39;
    v32 = *(v37 + 208);
    v235 = v32;
    v171 = v231;
    v158 = v233;
    v163 = v232;
    v154 = v39;
    sub_1AACB987C(&v231, &v224);
    v36 = v154;
    v35 = v158;
    v34 = v163;
    v33 = v171;
  }

  v231 = v33;
  v232 = v34;
  v233 = v35;
  v234 = v36;
  v235 = v32;
  v164 = sub_1AADC7A90(&v231);
  v150 = v40;
  v172 = v41;
  sub_1AADC6948(0, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
  v42 = AGGraphGetValue();
  v200[0] = *v42;
  v44 = *(v42 + 32);
  v43 = *(v42 + 48);
  v45 = *(v42 + 16);
  v201 = *(v42 + 64);
  v200[2] = v44;
  v200[3] = v43;
  v200[1] = v45;
  v225 = *(v42 + 16);
  v226 = *(v42 + 32);
  v227 = *(v42 + 48);
  v228 = *(v42 + 64);
  v224 = *v42;
  v151 = sub_1AADC5F80(&v224, v14, v17, v167);
  v202[2] = v226;
  v202[3] = v227;
  v203 = v228;
  v202[0] = v224;
  v202[1] = v225;
  sub_1AAD73248(v200, v230);
  sub_1AAD731C8(v202);
  v46 = AGGraphGetValue();
  v204[0] = *v46;
  v48 = *(v46 + 32);
  v47 = *(v46 + 48);
  v49 = *(v46 + 16);
  v205 = *(v46 + 64);
  v204[2] = v48;
  v204[3] = v47;
  v204[1] = v49;
  v225 = *(v46 + 16);
  v226 = *(v46 + 32);
  v227 = *(v46 + 48);
  v228 = *(v46 + 64);
  v224 = *v46;
  v155 = sub_1AADC5F80(&v224, v31, v30, v28);
  v206[2] = v226;
  v206[3] = v227;
  v207 = v228;
  v206[0] = v224;
  v206[1] = v225;
  sub_1AAD73248(v204, v230);
  sub_1AAD731C8(v206);
  v50 = AGGraphGetValue();
  v208[0] = *v50;
  v52 = *(v50 + 32);
  v51 = *(v50 + 48);
  v53 = *(v50 + 16);
  v209 = *(v50 + 64);
  v208[2] = v52;
  v208[3] = v51;
  v208[1] = v53;
  v225 = *(v50 + 16);
  v226 = *(v50 + 32);
  v227 = *(v50 + 48);
  v228 = *(v50 + 64);
  v224 = *v50;
  v159 = sub_1AADC5F80(&v224, v164, v150, v172);
  v210[2] = v226;
  v210[3] = v227;
  v211 = v228;
  v210[0] = v224;
  v210[1] = v225;
  sub_1AAD73248(v208, v230);
  sub_1AAD731C8(v210);
  v54 = AGGraphGetValue();
  v212[0] = *v54;
  v56 = *(v54 + 32);
  v55 = *(v54 + 48);
  v57 = *(v54 + 16);
  v213 = *(v54 + 64);
  v212[3] = v55;
  v212[1] = v57;
  v212[2] = v56;
  v225 = *(v54 + 16);
  v226 = *(v54 + 32);
  v227 = *(v54 + 48);
  v228 = *(v54 + 64);
  v224 = *v54;
  sub_1AAD73248(v212, v230);
  sub_1AADC5FBC(&v224, v151, v14, v17, v167, v229);
  sub_1AADC66C8(v14, v17, v167);
  v214[2] = v226;
  v214[3] = v227;
  v215 = v228;
  v214[1] = v225;
  v214[0] = v224;
  sub_1AAD731C8(v214);
  v58 = AGGraphGetValue();
  v216[0] = *v58;
  v60 = *(v58 + 32);
  v59 = *(v58 + 48);
  v61 = *(v58 + 16);
  v217 = *(v58 + 64);
  v216[3] = v59;
  v216[1] = v61;
  v216[2] = v60;
  v225 = *(v58 + 16);
  v226 = *(v58 + 32);
  v227 = *(v58 + 48);
  v228 = *(v58 + 64);
  v224 = *v58;
  sub_1AAD73248(v216, v230);
  sub_1AADC5FBC(&v224, v155, v31, v30, v28, v230);
  sub_1AADC66C8(v31, v30, v28);
  v218[2] = v226;
  v218[3] = v227;
  v219 = v228;
  v218[1] = v225;
  v218[0] = v224;
  sub_1AAD731C8(v218);
  v62 = AGGraphGetValue();
  v220[0] = *v62;
  v64 = *(v62 + 32);
  v63 = *(v62 + 48);
  v65 = *(v62 + 16);
  v221 = *(v62 + 64);
  v220[3] = v63;
  v220[1] = v65;
  v220[2] = v64;
  v196 = *(v62 + 16);
  v197 = *(v62 + 32);
  v198 = *(v62 + 48);
  v199 = *(v62 + 64);
  v195 = *v62;
  sub_1AAD73248(v220, &v224);
  sub_1AADC5FBC(&v195, v159, v164, v150, v172, &v224);
  sub_1AADC66C8(v164, v150, v172);
  v222[2] = v197;
  v222[3] = v198;
  v223 = v199;
  v222[1] = v196;
  v222[0] = v195;
  sub_1AAD731C8(v222);
  sub_1AADC66DC(v229);
  v67 = v66;
  v69 = v68;
  sub_1AADC66DC(v230);
  v71 = v70;
  v73 = v72;
  sub_1AADC66DC(&v224);
  v75 = v74;
  v152 = v76;
  v156 = v73;
  v77 = v73 - v71;
  v78 = v76 - v74;
  if (v69 - v67 > v73 - v71)
  {
    v79 = v69 - v67;
  }

  else
  {
    v79 = v73 - v71;
  }

  v173 = v78;
  if (v79 > v78)
  {
    v80 = v79;
  }

  else
  {
    v80 = v78;
  }

  v81 = (v69 - v67 + v69 - v67) / v80 * 0.25;
  v82 = AGGraphGetValue();
  v195 = *v82;
  v84 = *(v82 + 32);
  v83 = *(v82 + 48);
  v85 = *(v82 + 16);
  v199 = *(v82 + 64);
  v197 = v84;
  v198 = v83;
  v196 = v85;
  v86 = *(v82 + 32);
  v180 = *(v82 + 16);
  v181 = v86;
  v87 = v83;
  v88 = v199;
  v165 = v69;
  v160 = v69 - v67;
  v168 = v77;
  if (BYTE8(v195) == 254)
  {
    v190 = v195;
    v191 = v180;
    v192 = v181;
    v193 = v83;
    v194 = v199;
    sub_1AAD73248(&v195, &v185);
    result = sub_1AAD731C8(&v190);
  }

  else
  {
    v190 = v195;
    v191 = v180;
    v192 = v181;
    v193 = v83;
    v194 = v199;
    sub_1AAD73248(&v195, &v185);
    sub_1AACAF328(v87, *(&v87 + 1), v88);
    result = sub_1AAD731C8(&v190);
    if (v88 < 0xFC)
    {
      if ((v88 & 0xE0) == 0x20)
      {
        v90 = COERCE_DOUBLE(sub_1AADE69D4(v87));
        if (v91)
        {
          v92 = -v81;
        }

        else
        {
          v92 = v90;
        }

        v93 = *(v87 + 16);
        if (v93)
        {
          v81 = *(v87 + 32);
          v94 = v93 - 1;
          if (v94)
          {
            v95 = (v87 + 40);
            do
            {
              v96 = *v95++;
              v97 = v96;
              if (v81 < v96)
              {
                v81 = v97;
              }

              --v94;
            }

            while (v94);
          }
        }

        result = sub_1AACC0710(v87, *(&v87 + 1), v88);
        v98 = v92;
        v99 = v81;
        if (v98 > v99)
        {
          goto LABEL_112;
        }

        v77 = v168;
        goto LABEL_34;
      }

      result = sub_1AACC0710(v87, *(&v87 + 1), v88);
    }
  }

  v99 = v81;
  if (v99 < 0.0)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v98 = -v99;
LABEL_34:
  v100 = (v77 + v77) / v80 * 0.25;
  v101 = AGGraphGetValue();
  v190 = *v101;
  v103 = *(v101 + 32);
  v102 = *(v101 + 48);
  v104 = *(v101 + 16);
  v194 = *(v101 + 64);
  v192 = v103;
  v193 = v102;
  v191 = v104;
  v105 = *(v101 + 32);
  v176 = *(v101 + 16);
  v177 = v105;
  v106 = v102;
  v107 = v194;
  if (BYTE8(v190) == 254)
  {
    v185 = v190;
    v186 = v176;
    v187 = v177;
    v188 = v102;
    v189 = v194;
    sub_1AAD73248(&v190, &v180);
    result = sub_1AAD731C8(&v185);
  }

  else
  {
    v185 = v190;
    v186 = v176;
    v187 = v177;
    v188 = v102;
    v189 = v194;
    sub_1AAD73248(&v190, &v180);
    sub_1AACAF328(v106, *(&v106 + 1), v107);
    result = sub_1AAD731C8(&v185);
    if (v107 < 0xFC)
    {
      if ((v107 & 0xE0) == 0x20)
      {
        v108 = COERCE_DOUBLE(sub_1AADE69D4(v106));
        if (v109)
        {
          v110 = -v100;
        }

        else
        {
          v110 = v108;
        }

        v111 = *(v106 + 16);
        if (v111)
        {
          v100 = *(v106 + 32);
          v112 = v111 - 1;
          if (v112)
          {
            v113 = (v106 + 40);
            do
            {
              v114 = *v113++;
              v115 = v114;
              if (v100 < v114)
              {
                v100 = v115;
              }

              --v112;
            }

            while (v112);
          }
        }

        sub_1AACC0710(v106, *(&v106 + 1), v107);
        v116 = v110;
        *&v100 = v100;
        if (v116 <= *&v100)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      result = sub_1AACC0710(v106, *(&v106 + 1), v107);
    }
  }

  *&v100 = v100;
  if (*&v100 < 0.0)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v116 = -*&v100;
LABEL_52:
  v117 = (v173 + v173) / v80 * 0.25;
  v118 = AGGraphGetValue();
  v185 = *v118;
  v120 = *(v118 + 32);
  v119 = *(v118 + 48);
  v121 = *(v118 + 16);
  v189 = *(v118 + 64);
  v187 = v120;
  v188 = v119;
  v186 = v121;
  v122 = *(v118 + 32);
  v178 = *(v118 + 16);
  v179 = v122;
  v123 = v119;
  v124 = v189;
  if (BYTE8(v185) == 254)
  {
    v180 = v185;
    v181 = v178;
    v182 = v179;
    v183 = v119;
    v184 = v189;
    sub_1AAD73248(&v185, &v176);
    sub_1AAD731C8(&v180);
    sub_1AADC6834(&v224);
    sub_1AADC6834(v230);
    result = sub_1AADC6834(v229);
  }

  else
  {
    v180 = v185;
    v181 = v178;
    v182 = v179;
    v183 = v119;
    v184 = v189;
    sub_1AAD73248(&v185, &v176);
    sub_1AACAF328(v123, *(&v123 + 1), v124);
    sub_1AAD731C8(&v180);
    if (v124 < 0xFC && (v124 & 0xE0) == 0x20)
    {
      v125 = COERCE_DOUBLE(sub_1AADE69D4(v123));
      v126 = -v117;
      if ((v127 & 1) == 0)
      {
        v126 = v125;
      }

      v175 = v126;
      v128 = *(v123 + 16);
      if (v128)
      {
        v117 = *(v123 + 32);
        v129 = v128 - 1;
        if (v129)
        {
          v130 = (v123 + 40);
          do
          {
            v131 = *v130++;
            v132 = v131;
            if (v117 < v131)
            {
              v117 = v132;
            }

            --v129;
          }

          while (v129);
        }
      }

      sub_1AACAF328(v123, *(&v123 + 1), v124);
      sub_1AADC6834(&v224);
      sub_1AADC6834(v230);
      sub_1AADC6834(v229);
      sub_1AACC0710(v123, *(&v123 + 1), v124);
      result = sub_1AACC0710(v123, *(&v123 + 1), v124);
      v133 = v175;
      v134 = v117;
      if (v133 <= v134)
      {
        goto LABEL_69;
      }

      __break(1u);
    }

    sub_1AADC6834(&v224);
    sub_1AADC6834(v230);
    sub_1AADC6834(v229);
    result = sub_1AACC0710(v123, *(&v123 + 1), v124);
  }

  v134 = v117;
  if (v134 < 0.0)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    return result;
  }

  v133 = -v134;
LABEL_69:
  if (v99 >= v98)
  {
    v135 = v98;
  }

  else
  {
    v135 = v99;
  }

  if (v98 > v99)
  {
    v136 = v98;
  }

  else
  {
    v136 = v99;
  }

  if (v135 > v136)
  {
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (*&v100 >= v116)
  {
    v137 = v116;
  }

  else
  {
    v137 = *&v100;
  }

  if (v116 > *&v100)
  {
    v138 = v116;
  }

  else
  {
    v138 = *&v100;
  }

  if (v137 > v138)
  {
    goto LABEL_107;
  }

  if (v134 >= v133)
  {
    v139 = v133;
  }

  else
  {
    v139 = v134;
  }

  if (v133 > v134)
  {
    v140 = v133;
  }

  else
  {
    v140 = v134;
  }

  if (v139 > v140)
  {
    goto LABEL_108;
  }

  v141 = v152;
  v142 = v156;
  if (v75 > v152)
  {
    v143 = v75;
  }

  else
  {
    v143 = v152;
  }

  if (v152 >= v75)
  {
    v141 = v75;
  }

  v144 = (v134 - v133) / v173;
  if (v71 > v156)
  {
    v145 = v71;
  }

  else
  {
    v145 = v156;
  }

  if (v156 >= v71)
  {
    v142 = v71;
  }

  v146 = (*&v100 - v116) / v168;
  v147 = v165;
  if (v67 > v165)
  {
    v148 = v67;
  }

  else
  {
    v148 = v165;
  }

  if (v165 >= v67)
  {
    v147 = v67;
  }

  v149 = (v99 - v98) / v160;
  *a2 = v149;
  *(a2 + 8) = v98 - v67 * v149;
  *(a2 + 16) = v147;
  *(a2 + 24) = v148;
  *(a2 + 32) = v135;
  *(a2 + 36) = v136;
  *(a2 + 40) = v146;
  *(a2 + 48) = v116 - v71 * v146;
  *(a2 + 56) = v142;
  *(a2 + 64) = v145;
  *(a2 + 72) = v137;
  *(a2 + 76) = v138;
  *(a2 + 80) = v144;
  *(a2 + 88) = v133 - v75 * v144;
  *(a2 + 96) = v141;
  *(a2 + 104) = v143;
  *(a2 + 112) = v139;
  *(a2 + 116) = v140;
  return result;
}

uint64_t sub_1AADC5CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

int64_t sub_1AADC5D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1AADC5DE0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 32;
  v3 = *(result + 32);
  if (v1 == 1)
  {
    return *(result + 32);
  }

  v4 = *(result + 40);
  if (v4 >= v3)
  {
    v5 = *(result + 40);
  }

  else
  {
    v5 = *(result + 32);
  }

  if (v4 < v3)
  {
    v3 = *(result + 40);
  }

  if (v1 == 2)
  {
    return *&v3;
  }

  v6 = 2;
  v7 = v3;
  v8 = v5;
  while (v6 < v1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_30;
    }

    v10 = *(v2 + 8 * v6);
    v6 = *(result + 16);
    v12 = v10;
    if (v11 != v1)
    {
      if (v11 >= v1)
      {
        goto LABEL_31;
      }

      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_32;
      }

      v12 = *(v2 + 8 * v11);
    }

    if (v12 >= v10)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }

    if (v12 < v10)
    {
      v10 = v12;
    }

    if (v10 < v7)
    {
      v3 = v10;
      v7 = v10;
    }

    if (v9 >= v8)
    {
      v8 = v9;
    }

    if (v6 == v1)
    {
      return *&v3;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_1AADC5EC0@<D0>(_OWORD *a1@<X8>)
{
  sub_1AADC69B8(v6);
  v2 = v10;
  a1[4] = v9;
  a1[5] = v2;
  a1[6] = v11[0];
  *(a1 + 105) = *(v11 + 9);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

double sub_1AADC5F18@<D0>(uint64_t a1@<X8>)
{
  sub_1AADC4FCC(*(v1 + 8), v7);
  v3 = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1AADC5F80(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 8) == 254)
  {
    if ((a4 & 0xFF00) == 0x200)
    {
      return 0;
    }

    else
    {
      return a4;
    }
  }

  else
  {
    if ((a4 & 0xFF00) == 0x200)
    {
      v5 = 0;
    }

    else
    {
      v5 = a4;
    }

    if (*(a1 + 41) == 255 || *(a1 + 41) >= 3u)
    {
      return v5;
    }

    else
    {
      return *(a1 + 41);
    }
  }
}

uint64_t sub_1AADC5FBC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v8 = 0;
  v9 = 0;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  if (v11 == 254)
  {
    v59 = 0;
    goto LABEL_19;
  }

  v16 = *(a1 + 64);
  v59 = 0;
  if (v16 > 0xFB)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 48);
  v59 = *(a1 + 56);
  v17 = v16 >> 5;
  if (v16 >> 5 > 3)
  {
    if (v16 >> 5 > 5)
    {
      v56 = *(a1 + 32);
      v20 = a5;
      if (v17 == 6)
      {

        v8 = v16;
        a5 = v20;
        v9 = v21;
      }

      else
      {
        sub_1AADC681C(v9, v59, v16 & 0x1F);
        v8 = v16;
        a5 = v20;
      }

      v14 = v56;
      goto LABEL_19;
    }

    v18 = a5;
    if (v17 != 4)
    {

LABEL_14:
      v8 = v16;
      a5 = v18;
      v9 = v19;
      goto LABEL_19;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v16 >> 5 > 1)
  {
    v18 = a5;
    goto LABEL_13;
  }

  if (v17)
  {
    v57 = *(a1 + 32);
    v22 = *(a1 + 48);
    v23 = a5;

    a5 = v23;
    v9 = v22;
    v14 = v57;
  }

  v8 = v16;
LABEL_19:
  v58 = v8;
  if (!a2)
  {
    v27 = 2;
    if (v11 == 254)
    {
      v28 = 0;
      v24 = 0;
      v47 = 0;
      v13 = 0;
      v14 = 0;
      v29 = 0;
      LOBYTE(v15) = -1;
      v12 = 2;
      LOBYTE(v11) = 2;
LABEL_25:
      v30 = ((v27 == 2) | v27) & 1;
      v52 = v29;
      v54 = v11;
      goto LABEL_26;
    }

    if (v11 == 255)
    {
      v29 = 0;
    }

    else
    {
      v29 = v10;
    }

    if (v11 == 255)
    {
      v37 = 2;
    }

    else
    {
      v37 = v11;
    }

    v39 = v15 >> 8;
    if (v15 >> 8 <= 0xFE)
    {
      if (v39 != 3)
      {
        if (!v39)
        {

          v24 = 0;
          v34 = 0;
          v26 = 0x8000000000000000;
          goto LABEL_77;
        }

        goto LABEL_109;
      }

      v55 = v37;
      v45 = a5;
      sub_1AADC68F0(v13, v14, v15);
      v40 = v12 & 0x100;
      if (v15 == 255)
      {
        v24 = 0;
        v28 = 0;
        v27 = v12;
        a5 = v45;
      }

      else
      {
        if (v15)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        a5 = v45;
        v27 = v12;
        v24 = v13;
        v28 = v14;
      }

      v37 = v55;
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v40 = 0;
      v24 = 0;
      v28 = 0;
      LOBYTE(v15) = -1;
      v12 = 2;
    }

    v47 = v40;
    if (v37 == 1)
    {
      v52 = v29;
      v54 = 1;
      v30 = 0;
    }

    else
    {
      if (v37 != 2)
      {
        goto LABEL_25;
      }

      LOBYTE(v11) = 2;
      if (v29 != 2)
      {
        goto LABEL_25;
      }

      v54 = 2;
      v30 = 0;
      v52 = 2;
    }

LABEL_26:
    v31 = MEMORY[0x1E69E7CC0];
    v32 = v28;
    if ((a5 & 0xFF00) != 0x200 && !a5)
    {
      sub_1AADC6948(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1AAF9E2B0;
      *(v31 + 32) = a3;
      *(v31 + 40) = a4;
    }

    sub_1AADC68F0(v13, v14, v15);
    result = sub_1AACAF350(v12, v13, v14, v15, 3u);
    if (v24)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    v26 = v30 | v47;
    goto LABEL_50;
  }

  if (a2 != 1)
  {
    if (v11 == 254)
    {
      v49 = v9;
      v35 = 0;
      v13 = 0;
      v24 = 0;
      v36 = 0;
      v26 = 0x4000000000000000;
      LOBYTE(v15) = -1;
      v53 = 0;
      v54 = 2;
    }

    else
    {
      if (v11 == 255)
      {
        v29 = 0;
      }

      else
      {
        v29 = v10;
      }

      if (v11 == 255)
      {
        LOBYTE(v37) = 2;
      }

      else
      {
        LOBYTE(v37) = v11;
      }

      v41 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v41 != 3)
        {
          if (v41 == 2)
          {

            v24 = 0;
            v34 = 0;
            v26 = 0xC000000000000000;
            goto LABEL_77;
          }

          goto LABEL_109;
        }

        v54 = v37;
        v46 = a5;
        sub_1AADC68F0(v13, v14, v15);
        v26 = v12 & 0x100 | 0x4000000000000000;
        v53 = v29;
        v49 = v9;
        if (v15 == 255)
        {
          v35 = v14;
          v24 = 0;
          v36 = 0;
          a5 = v46;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          a5 = v46;
          v24 = v13;
          v35 = v14;
          v36 = v14;
        }

LABEL_68:
        v42 = a5 & 0xFF00;
        v43 = v35;
        v44 = a5;
        sub_1AADC68F0(v13, v35, v15);
        if (v42 == 512 || v44 != 2)
        {
          result = sub_1AACAF350(v12, v13, v43, v15, 3u);
          v12 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1AADC68F0(v13, v43, v15);
          sub_1AACAF350(v12, v13, v43, v15, 3u);
          v12 = a3;
          sub_1AAD9A814(a3, a4, 2);
          result = sub_1AADC691C(v13, v43, v15);
        }

        if (v24)
        {
          v34 = v36;
        }

        else
        {
          v34 = 0;
        }

        v29 = v53;
        v9 = v49;
        goto LABEL_76;
      }

      v53 = v29;
      v54 = v37;
      v49 = v9;
      v35 = 0;
      v13 = 0;
      v24 = 0;
      v36 = 0;
      v26 = 0x4000000000000000;
      LOBYTE(v15) = -1;
    }

    v12 = 2;
    goto LABEL_68;
  }

  if (v11 == 254)
  {
    v14 = 0;
    v13 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0x2000000000000000;
    LOBYTE(v15) = -1;
    v52 = 0;
    v54 = 2;
LABEL_43:
    v12 = 2;
    goto LABEL_44;
  }

  if (v11 == 255)
  {
    v29 = 0;
  }

  else
  {
    v29 = v10;
  }

  if (v11 == 255)
  {
    LOBYTE(v37) = 2;
  }

  else
  {
    LOBYTE(v37) = v11;
  }

  v38 = v15 >> 8;
  if (v15 >> 8 > 0xFE)
  {
    v52 = v29;
    v54 = v37;
    v14 = 0;
    v13 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0x2000000000000000;
    LOBYTE(v15) = -1;
    goto LABEL_43;
  }

  if (v38 == 3)
  {
    v48 = a5;
    sub_1AADC68F0(v13, v14, v15);
    v26 = v12 & 0x100 | 0x2000000000000000;
    v52 = v29;
    v54 = v37;
    if (v15 == 255)
    {
      v24 = 0;
      v25 = 0;
      a5 = v48;
LABEL_44:
      v31 = MEMORY[0x1E69E7CC0];
      if ((a5 & 0xFF00) != 0x200 && a5 == 1)
      {
        sub_1AADC6948(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1AAF9E2B0;
        *(v31 + 32) = a3;
        *(v31 + 40) = a4;
      }

      sub_1AADC68F0(v13, v14, v15);
      result = sub_1AACAF350(v12, v13, v14, v15, 3u);
      if (v24)
      {
        v34 = v25;
      }

      else
      {
        v34 = 0;
      }

LABEL_50:
      v12 = v31;
      v29 = v52;
LABEL_76:
      LOBYTE(v37) = v54;
LABEL_77:
      *a6 = v29;
      *(a6 + 8) = v37;
      *(a6 + 16) = v12;
      *(a6 + 24) = v26;
      *(a6 + 32) = v24;
      *(a6 + 40) = v34;
      *(a6 + 48) = v9;
      *(a6 + 56) = v59;
      *(a6 + 64) = v58;
      return result;
    }

    a5 = v48;
    if (v15 == 1)
    {
      v24 = v13;
      v25 = v14;
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_107;
  }

  if (v38 == 1)
  {

    v24 = 0;
    v34 = 0;
    v26 = 0xA000000000000000;
    goto LABEL_77;
  }

LABEL_109:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AADC66C8(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0xFF00) != 0x200)
  {
    return sub_1AAD9A83C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AADC66DC(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = (*(a1 + 24) >> 61) & 3;
  if (!v3)
  {
    if (!*(result + 16))
    {
      return result;
    }

    return sub_1AADC5DE0(result);
  }

  if (v3 != 1)
  {
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  if (*(result + 16))
  {
    return sub_1AADC5DE0(result);
  }

  return result;
}

uint64_t sub_1AADC67CC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 > 3)
  {
    if ((a3 >> 5) > 5u)
    {
      if (v3 != 6)
      {
        return sub_1AADC681C(result, a2, a3 & 0x1F);
      }
    }

    else if (v3 != 4)
    {
    }
  }

  if (a3 >> 5)
  {
  }

  return result;
}

uint64_t sub_1AADC681C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1AADC6888(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 > 3)
  {
    if ((a3 >> 5) > 5u)
    {
      if (v3 != 6)
      {
        return sub_1AADC68D8(result, a2, a3 & 0x1F);
      }
    }

    else if (v3 != 4)
    {
    }
  }

  if (a3 >> 5)
  {
  }

  return result;
}

uint64_t sub_1AADC68D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1AADC68F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1AADC6904(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AADC6904(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1AADC691C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1AADC6930(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AADC6930(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_1AADC6948(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 initializeBufferWithCopyOfBuffer for MakeCanonicalScale3D(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_1AADC69B8(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1;
  return result;
}

float sub_1AADC69F0@<S0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = v2 + 5;
    v4 = 76;
    v5 = 9;
    v6 = 8;
    v7 = 7;
    v8 = 6;
    if (a1 != 1)
    {
      v8 = 11;
      v7 = 12;
      v6 = 13;
      v5 = 14;
      v4 = 116;
      v3 = v2 + 10;
    }
  }

  else
  {
    v4 = 36;
    v5 = 4;
    v6 = 3;
    v7 = 2;
    v8 = 1;
    v3 = v2;
  }

  result = *(v2 + v4);
  v10 = v2[v5];
  v11 = v2[v6];
  v12 = v2[v7];
  v13 = v2[v8];
  *a2 = *v3;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
  *(a2 + 36) = result;
  return result;
}

void sub_1AADC6A88()
{
  if (*(v0 + 16) > *(v0 + 24))
  {
    __break(1u);
  }
}

double sub_1AADC6A9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = vabdd_f64(v2, v1) * 0.04;
  result = v1 + v3;
  v5 = v2 - v3;
  if (result > v5)
  {
    return (result + v5) * 0.5;
  }

  return result;
}

unint64_t sub_1AADC6AE0(_OWORD *a1)
{
  v2 = a1[7];
  v29[6] = a1[6];
  v29[7] = v2;
  v29[8] = a1[8];
  v3 = a1[3];
  v29[2] = a1[2];
  v29[3] = v3;
  v4 = a1[5];
  v29[4] = a1[4];
  v29[5] = v4;
  v5 = a1[1];
  v29[0] = *a1;
  v29[1] = v5;
  v6 = sub_1AACDB99C(v29);
  v7 = sub_1AACD2C84(v29);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = *(v7 + 104);
      v15 = *(v7 + 112);
      v16 = *(v7 + 120);
      sub_1AADC7510(*(v7 + 32), *(v7 + 40), *(v7 + 48));
      v18 = v17;
      sub_1AADC7510(v14, v15, v16);
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      if (v18 > v19)
      {
        v19 = v18;
      }

      v21 = LODWORD(v20);
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_32;
      }

      if (*(v7 + 8))
      {
        v22 = v1 + 2;
      }

      else
      {
        v22 = v7;
      }

      v23 = v1[1];
      v19 = *v22 * *v1 + v23;
      v24 = v1 + 3;
      if (!*(v7 + 24))
      {
        v24 = (v7 + 16);
      }

      v25 = *v24 * *v1 + v23;
      if (v25 >= v19)
      {
        v26 = v19;
      }

      else
      {
        v26 = *v24 * *v1 + v23;
      }

      if (v19 <= v25)
      {
        v19 = v25;
      }

      v21 = LODWORD(v26);
    }

    return v21 | (LODWORD(v19) << 32);
  }

  if (v6 == 1)
  {
    if (*(v7 + 8))
    {
      v8 = v1[1] + *v1 * ((v1[2] + v1[3]) * 0.5);
    }

    else
    {
      v8 = *v7 * *v1 + v1[1];
    }

    goto LABEL_31;
  }

  v9 = *(v7 + 48);
  v12 = v7 + 32;
  v10 = *(v7 + 32);
  v11 = *(v12 + 8);
  if (v9 < 0)
  {
    v13 = (*&v11 + *&v10) * 0.5;
    goto LABEL_29;
  }

  if (v9 < 2u)
  {
    v13 = *&v10;
    sub_1AAD0E818(v10, v11, v9);
LABEL_29:
    v8 = v13 * *v1 + v1[1];
LABEL_31:
    *&v28 = v8;
    return v28;
  }

LABEL_32:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AADC6CFC()
{
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x63537261656E694CLL, 0xEE00207B20656C61);
  sub_1AAF8FA24();
  MEMORY[0x1AC5982F0](0x202B207820, 0xE500000000000000);
  sub_1AAF8FA24();
  MEMORY[0x1AC5982F0](0x6E69616D6F64202CLL, 0xEA0000000000203ALL);
  sub_1AADC75A8(0, &qword_1EB424890);
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](0x3A65676E6172202CLL, 0xE900000000000020);
  sub_1AADC75A8(0, &qword_1EB424898);
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1AADC6EB0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&v4);
  sub_1AAF906C4();
  return sub_1AAF906C4();
}

uint64_t sub_1AADC6F5C()
{
  sub_1AAF90694();
  sub_1AADC6EB0();
  return sub_1AAF906F4();
}

uint64_t sub_1AADC6FA0()
{
  sub_1AAF90694();
  sub_1AADC6EB0();
  return sub_1AAF906F4();
}

BOOL sub_1AADC6FDC(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 36) == *(a2 + 36) && *(a1 + 32) == *(a2 + 32);
}

uint64_t sub_1AADC7024()
{
  sub_1AAF90694();
  sub_1AADC6EB0();
  sub_1AADC6EB0();
  sub_1AADC6EB0();
  return sub_1AAF906F4();
}

uint64_t sub_1AADC7080()
{
  sub_1AADC6EB0();
  sub_1AADC6EB0();
  return sub_1AADC6EB0();
}

uint64_t sub_1AADC70C8()
{
  sub_1AAF90694();
  sub_1AADC6EB0();
  sub_1AADC6EB0();
  sub_1AADC6EB0();
  return sub_1AAF906F4();
}

BOOL sub_1AADC7120(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1AADC73F8(v12, v14);
}

unint64_t sub_1AADC71A4()
{
  sub_1AAF900D4();

  v0 = sub_1AADC6CFC();
  MEMORY[0x1AC5982F0](v0);

  MEMORY[0x1AC5982F0](0x79202020200A7D20, 0xEB00000000207B20);
  v1 = sub_1AADC6CFC();
  MEMORY[0x1AC5982F0](v1);

  MEMORY[0x1AC5982F0](0x7A202020200A7D20, 0xEB00000000207B20);
  v2 = sub_1AADC6CFC();
  MEMORY[0x1AC5982F0](v2);

  MEMORY[0x1AC5982F0](2097839392, 0xE400000000000000);
  return 0xD000000000000012;
}

void sub_1AADC72C0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

double sub_1AADC72D4@<D0>(uint64_t a1@<X8>)
{
  v6 = *(AGGraphGetValue() + 32);
  v5 = *(AGGraphGetValue() + 72);
  Value = AGGraphGetValue();
  *&v3 = v6;
  *(&v3 + 1) = v5;
  *a1 = v3;
  result = *(Value + 112);
  *(a1 + 16) = result;
  return result;
}

float sub_1AADC7374@<S0>(float *a1@<X8>)
{
  type metadata accessor for CGSize(0);
  v2 = *AGGraphGetValue();
  v3 = *(AGGraphGetValue() + 8);
  if (v3 >= v2)
  {
    v3 = v2;
  }

  result = 1.0 / fmax(v3, 1.0);
  *a1 = result;
  return result;
}

BOOL sub_1AADC73F8(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    v3 = v2 && *(a1 + 24) == *(a2 + 24);
    v4 = v3 && *(a1 + 32) == *(a2 + 32);
    v5 = v4 && *(a1 + 36) == *(a2 + 36);
    if (v5 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112) && *(a1 + 116) == *(a2 + 116))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AADC7510(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 & 0x80) == 0 && a3 > 1u)
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

void sub_1AADC75A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

__n128 sub_1AADC763C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1AADC7668(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADC7688(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 120) = v3;
  return result;
}

unint64_t sub_1AADC76E4()
{
  result = qword_1EB4248A0;
  if (!qword_1EB4248A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4248A0);
  }

  return result;
}

unint64_t sub_1AADC7744()
{
  result = qword_1EB4248A8[0];
  if (!qword_1EB4248A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4248A8);
  }

  return result;
}

__n128 sub_1AADC77C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AADC77E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 2) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
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

uint64_t sub_1AADC7838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = 0;
      *(result + 24) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADC78FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AADC7938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 8) >> 2) & 0xFFFFFF80 | (*(a1 + 8) >> 1);
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

uint64_t sub_1AADC798C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADC7A1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AADC7A90(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    if (*(a1 + 16))
    {
      if (*(a1 + 40))
      {
        if (!*(v1 + 16))
        {
          sub_1AADC7B3C(a1);
          return 0;
        }

        v2 = a1;

        a1 = v2;
      }

      else
      {
        v1 = *(a1 + 24);
      }
    }

    else
    {
      v1 = *a1;
    }

    sub_1AADC7B3C(a1);
  }

  return v1;
}

uint64_t sub_1AADC7B3C(uint64_t a1)
{
  sub_1AADC7B98();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AADC7B98()
{
  if (!qword_1EB4249B0)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4249B0);
    }
  }
}

uint64_t sub_1AADC7BF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 1) << 8 == 512)
  {
    v4 = result;
    nullsub_1(a3, a4);
    result = sub_1AACD3F0C();
    *v4 = result & 0x1FF;
  }

  return result;
}

uint64_t sub_1AADC7C5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    v9 = a1;
    v10 = a2;
    if (a3)
    {
      if ((a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
      {
        if (*(v5 + 40))
        {
          v11 = *&a1;
        }

        else
        {
          v11 = *(v5 + 24);
          if (v11 >= *&a1)
          {
            v11 = *&a1;
          }

          if (*(v5 + 32) >= *&a1)
          {
            v9 = *(v5 + 32);
          }
        }

        *(v5 + 24) = v11;
        *(v5 + 32) = v9;
        *(v5 + 40) = 0;
      }

      if ((~a2 & 0x7FF0000000000000) != 0)
      {
        if (*(v5 + 40))
        {
          *(v5 + 24) = *&a2;
          *(v5 + 32) = *&a2;
        }

        else
        {
          v13 = *(v5 + 24);
          if (v13 >= *&a2)
          {
            v13 = *&a2;
          }

          if (*(v5 + 32) >= *&a2)
          {
            v10 = *(v5 + 32);
          }

          *(v5 + 24) = v13;
          *(v5 + 32) = v10;
        }

        *(v5 + 40) = 0;
      }
    }

    else
    {
      if ((a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
      {
        if (*(v5 + 16))
        {
          v12 = *&a1;
        }

        else
        {
          v12 = *v5;
          if (*v5 >= *&a1)
          {
            v12 = *&a1;
          }

          if (*(v5 + 8) >= *&a1)
          {
            v9 = *(v5 + 8);
          }
        }

        *v5 = v12;
        *(v5 + 8) = v9;
        *(v5 + 16) = 0;
      }

      if ((~a2 & 0x7FF0000000000000) != 0)
      {
        if (*(v5 + 16))
        {
          *v5 = *&a2;
          *(v5 + 8) = *&a2;
          *(v5 + 16) = 0;
        }

        else
        {
          v14 = *v5;
          if (*v5 >= *&a2)
          {
            v14 = *&a2;
          }

          if (*(v5 + 8) >= *&a2)
          {
            v10 = *(v5 + 8);
          }

          *v5 = v14;
          *(v5 + 8) = v10;
          *(v5 + 16) = 0;
        }
      }
    }
  }

  else
  {
    sub_1AACD3D44(a1, a2, a3);
  }

  return sub_1AADC7BF8(v5 + 64, a4, a4, a5);
}

double sub_1AADC7D9C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = 0;
  v30[1] = 0;
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v34 = 1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CD0];
  v35 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CD0];
  v37 = 512;
  sub_1AACB9B38(v30);
  LOBYTE(v29[0]) = 1;
  *&v28 = v4;
  *(&v28 + 1) = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v29[2] = a1[2];
  v29[3] = v8;
  v29[0] = v6;
  v29[1] = v7;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[8];
  v29[7] = a1[7];
  v29[8] = v11;
  v12 = a1[6];
  v29[5] = v10;
  v29[6] = v12;
  v29[4] = v9;
  v13 = sub_1AACDB99C(v29);
  v14 = sub_1AACD2C84(v29);
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v20 = *(v14 + 104);
    v21 = *(v14 + 112);
    v22 = *(v14 + 128);
    v23 = *(v14 + 136);
    v24 = *(v14 + 120);
    sub_1AADC7C5C(*(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64));
    v19 = v20;
    v15 = v21;
    v18 = v24;
    v16 = v22;
    v17 = v23;
LABEL_8:
    sub_1AADC7C5C(v19, v15, v18, v16, v17);
LABEL_9:
    sub_1AADC7F60(a1);
    goto LABEL_10;
  }

  if (v13 != 1)
  {
    v15 = *(v14 + 40);
    v16 = *(v14 + 56);
    v17 = *(v14 + 64);
    v18 = *(v14 + 48);
    v19 = *(v14 + 32);
    goto LABEL_8;
  }

LABEL_10:
  *a2 = 0uLL;
  *(a2 + 16) = 1;
  *(a2 + 17) = *v26;
  *(a2 + 20) = *&v26[3];
  *(a2 + 24) = 0uLL;
  *(a2 + 40) = 1;
  *(a2 + 44) = *&v27[3];
  *(a2 + 41) = *v27;
  result = *&v28;
  *(a2 + 48) = v28;
  *(a2 + 64) = 512;
  return result;
}

__n128 sub_1AADC7FB4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[0] = 0;
  v18[1] = 0;
  v19 = 1;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CD0];
  v23 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CD0];
  v25 = 512;
  sub_1AACB9B38(v18);
  LOBYTE(v27[0]) = 1;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  sub_1AADC7C5C(a1, a2, a3, a4, a5);
  v27[0] = *v15;
  *(v27 + 3) = *&v15[3];
  v26[0] = *v16;
  *(v26 + 3) = *&v16[3];
  result = 0uLL;
  *a6 = 0uLL;
  *(a6 + 16) = 1;
  *(a6 + 17) = v27[0];
  *(a6 + 20) = *(v27 + 3);
  *(a6 + 24) = 0uLL;
  *(a6 + 40) = 1;
  *(a6 + 41) = v26[0];
  *(a6 + 44) = *(v26 + 3);
  *(a6 + 48) = v17;
  *(a6 + 64) = 512;
  return result;
}

__n128 sub_1AADC8104(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1AADC8148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 210))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADC8190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AADC8228(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AADC824C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADC8294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADC82FC@<X0>(uint64_t a1@<X8>)
{
  sub_1AADC8504();
  result = AGGraphGetValue();
  v4 = *(result + 32);
  v3 = *(result + 48);
  v5 = *(result + 64);
  v34 = *(result + 16);
  v6 = *result;
  v37 = v5;
  v35 = v4;
  v36 = v3;
  v33 = v6;
  if (*(&v34 + 1))
  {
    v21 = v33;
    v8 = *(&v36 + 1);
    v7 = v37;
    v9 = v35;
    v10 = v36;
    v20 = v34;
    sub_1AADC8554(&v33, &v22);
    sub_1AADC7FB4(v9, *(&v9 + 1), v10, v8, v7, &v22);
    v11 = v23;
    v32[0] = *v24;
    *(v32 + 3) = *&v24[3];
    v18 = v25;
    v19 = v22;
    v12 = v26;
    v31[0] = *v27;
    *(v31 + 3) = *&v27[3];
    v13 = v28;
    v14 = v29;
    v15 = v30;
    sub_1AAD04750(v21, *(&v21 + 1), v20 & 1);

    result = sub_1AAD0E818(v9, *(&v9 + 1), v10);
    v16 = v18;
    v17 = v19;
  }

  else
  {
    v11 = 1;
    LOBYTE(v22) = 1;
    LOBYTE(v32[0]) = 1;
    v16 = 0uLL;
    v15 = 512;
    v14 = MEMORY[0x1E69E7CD0];
    v13 = MEMORY[0x1E69E7CC0];
    v12 = 1;
    v17 = 0uLL;
  }

  *a1 = v17;
  *(a1 + 16) = v11;
  *(a1 + 17) = v32[0];
  *(a1 + 20) = *(v32 + 3);
  *(a1 + 24) = v16;
  *(a1 + 40) = v12;
  *(a1 + 41) = v31[0];
  *(a1 + 44) = *(v31 + 3);
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  return result;
}

double sub_1AADC849C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 sub_1AADC84B0@<Q0>(uint64_t a1@<X8>)
{
  sub_1AADC82FC(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void sub_1AADC8504()
{
  if (!qword_1ED9B3D88[0])
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B3D88);
    }
  }
}

uint64_t sub_1AADC8554(uint64_t a1, uint64_t a2)
{
  sub_1AADC8504();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADC85B8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD674F0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1AADC8710(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  sub_1AACD6084(0, a3);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1AADC88CC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD67908(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AADC89C0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD67A2C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AADC8AB4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1AAD67B50(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AADC8BCC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AADC8D3C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD68C78(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AADC8E34(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD6958C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1AAD463D8();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AADC8F2C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1AAD69810(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AADC9038@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = v7 + result;
  if (__OFADD__(v7, result))
  {
    goto LABEL_35;
  }

  v4 = a2;
  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v6 + 24) >> 1, v10 < v8))
  {
    if (v7 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v7;
    }

    result = sub_1AACF04D8(result, v11, 1, v6);
    v6 = result;
    v10 = *(result + 24) >> 1;
  }

  v12 = *(v6 + 16);
  a3 = v10 - v12;
  if (v10 != v12)
  {
    if (a3 >= 1)
    {
      v9 = v5;
      if (!v5)
      {
        goto LABEL_28;
      }

      v13 = (v6 + 8 * v12);
      v14 = &v13[2];
      v15 = v5 & ~(v5 >> 63);
      v16 = v10 + ~v12;
      if (v15 < v16)
      {
        v16 = v5 & ~(v5 >> 63);
      }

      if (v16 >= v5 - 1)
      {
        v16 = v5 - 1;
      }

      if (v16 > 3)
      {
        v19 = v16 + 1;
        v20 = v19 & 3;
        if ((v19 & 3) == 0)
        {
          v20 = 4;
        }

        v17 = v19 - v20;
        v18 = v17 + 1;
        v14 += v17;
        v21 = vdupq_n_s64(v4);
        v22 = v13 + 3;
        v23 = v17;
        do
        {
          v22[-1] = v21;
          *v22 = v21;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
      }

      else
      {
        v17 = 0;
        v18 = 1;
      }

      while (1)
      {
        if (v17 == v15)
        {
          goto LABEL_34;
        }

        v17 = v18;
        *v14 = v4;
        if (a3 == v18)
        {
          break;
        }

        ++v14;
        ++v18;
        if (v5 + 1 == v17 + 1)
        {
          v9 = v5;
          goto LABEL_28;
        }
      }

      v9 = a3;
      if (a3 >= v5)
      {
LABEL_28:
        if (v9 > 0)
        {
          v24 = *(v6 + 16);
          v25 = __OFADD__(v24, v9);
          v26 = v24 + v9;
          if (v25)
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            return result;
          }

          *(v6 + 16) = v26;
        }

        goto LABEL_31;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 > 0)
  {
    goto LABEL_50;
  }

  v9 = 0;
LABEL_31:
  if (v9 != a3)
  {
    goto LABEL_32;
  }

LABEL_36:
  if (a3 == v5)
  {
    goto LABEL_32;
  }

  if (a3 >= v5)
  {
    goto LABEL_54;
  }

  v27 = *(v6 + 16);
  v28 = a3 + 1;
  while (1)
  {
    v29 = *(v6 + 24);
    v30 = v29 >> 1;
    if ((v29 >> 1) < v27 + 1)
    {
      break;
    }

    if (v27 < v30)
    {
      goto LABEL_42;
    }

LABEL_39:
    *(v6 + 16) = v27;
  }

  v33 = v6;
  v34 = v28;
  v35 = v27;
  result = sub_1AACF04D8((v29 > 1), v27 + 1, 1, v33);
  v27 = v35;
  v28 = v34;
  v6 = result;
  v30 = *(result + 24) >> 1;
  if (v35 >= v30)
  {
    goto LABEL_39;
  }

LABEL_42:
  v31 = v28 + v30 - v27;
  v9 = v27 + 4;
  v32 = v28;
  while (1)
  {
    *(v6 + 8 * v9) = v4;
    if (v5 == v32)
    {
      break;
    }

    if (v28 < 0 || v32 >= v5)
    {
      goto LABEL_53;
    }

    ++v32;
    if (++v9 - v30 == 4)
    {
      v27 = v30;
      v28 = v31;
      goto LABEL_39;
    }
  }

LABEL_51:
  *(v6 + 16) = v9 - 3;
LABEL_32:
  *v3 = v6;
  return result;
}

uint64_t sub_1AADC92A4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD6931C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AADC93E8(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AADC9518()
{
  swift_getKeyPath();
  sub_1AADCD1AC(&qword_1EB424118, type metadata accessor for RenderTrigger);
  sub_1AAF8D0C4();

  return *(v0 + 16);
}

uint64_t sub_1AADC95B8(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1AADCD1AC(&qword_1EB424118, type metadata accessor for RenderTrigger);
    sub_1AAF8D0B4();
  }

  return result;
}

uint64_t sub_1AADC96BC()
{
  v1 = OBJC_IVAR____TtC6Charts13RenderTrigger___observationRegistrar;
  v2 = sub_1AAF8D104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t Chart3DImageRenderer.snapshotter.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Chart3DImageRendererKey.defaultValue.getter()
{
  if (qword_1EB422B78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Chart3DImageRendererKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EB422B78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB4249C0 = a1;
}

uint64_t (*static Chart3DImageRendererKey.defaultValue.modify())()
{
  if (qword_1EB422B78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1AADC9928@<X0>(void *a1@<X8>)
{
  if (qword_1EB422B78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB4249C0;
}

uint64_t sub_1AADC99A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB422B78;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB4249C0 = v1;
}

uint64_t type metadata accessor for RenderTrigger()
{
  result = qword_1EB4249D8;
  if (!qword_1EB4249D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AADC9AFC()
{
  result = sub_1AAF8D104();
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

uint64_t sub_1AADC9BBC()
{
  sub_1AACB4A98(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1AADC9C18@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  sub_1AADCC8B4(0, &qword_1EB424B08, a1, type metadata accessor for MetalView.CaptureManager, MEMORY[0x1E6981790]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1AAF8EE34();
  sub_1AADCCA20();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AAF92AB0;
  result = sub_1AAF8EE34();
  *(v8 + 32) = sub_1AADCCA70;
  *(v8 + 40) = v10;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v8;
  return result;
}

uint64_t sub_1AADC9D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = v1(v2);
  sub_1AACB4A98(v1);
  return v3;
}

id sub_1AADC9DA4(uint64_t a1)
{
  sub_1AADCD1F4(0, &qword_1EB424B50, sub_1AADCD25C, &type metadata for MetalViewRepresentable, MEMORY[0x1E697CA58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = sub_1AADC9F7C(a1, *(v1 + 8));
  v9 = *(v1 + 32);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = *(v9 + 16);
  *(v9 + 16) = sub_1AADCD2B0;
  *(v9 + 24) = v12;

  sub_1AACB4A98(v13);

  return v8;
}

id sub_1AADC9F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  sub_1AADCC8B4(0, &qword_1EB424B60, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v28 - v5;
  sub_1AADCD1F4(0, &qword_1EB424B50, sub_1AADCD25C, &type metadata for MetalViewRepresentable, MEMORY[0x1E697CA58]);
  sub_1AAF8E664();
  v7 = v34;
  v8 = sub_1AADCD34C(v34);

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = sub_1AAF8F994();
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  v29 = v11;
  sub_1AAF8F974();

  v12 = v8;
  v13 = sub_1AAF8F964();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v9;
  v14[5] = v12;
  sub_1AADC0CA4(0, 0, v6, &unk_1AAF9F2C0, v14);

  v11(v6, 1, 1, v10);
  v16 = *v3;
  v33 = v3[1];
  v34 = v16;
  v32 = v3[2];
  v28[1] = v3[4];

  v17 = v12;
  v18 = v30;
  swift_unknownObjectRetain();
  sub_1AADCD5A4(&v34, v31);
  sub_1AADCD5A4(&v33, v31);
  sub_1AADCD5A4(&v32, v31);

  v19 = sub_1AAF8F964();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 24) = MEMORY[0x1E69E85E0];
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = v9;
  v22 = *(v3 + 1);
  *(v20 + 56) = *v3;
  *(v20 + 72) = v22;
  *(v20 + 88) = v3[4];
  sub_1AADC0CA4(0, 0, v6, &unk_1AAF9F2D0, v20);

  v29(v6, 1, 1, v10);
  v23 = v17;
  sub_1AADCD5A4(&v34, v31);
  sub_1AADCD5A4(&v33, v31);
  sub_1AADCD5A4(&v32, v31);

  v24 = sub_1AAF8F964();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v21;
  v26 = *(v3 + 1);
  *(v25 + 32) = *v3;
  *(v25 + 48) = v26;
  *(v25 + 64) = v3[4];
  *(v25 + 72) = v23;
  sub_1AADC0CA4(0, 0, v6, &unk_1AAF9F2E0, v25);

  [v23 bounds];
  [v23 setNeedsDisplayInRect_];

  return v23;
}

int64_t sub_1AADCA350()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_1AADCD1F4(0, &qword_1EB424B50, sub_1AADCD25C, &type metadata for MetalViewRepresentable, MEMORY[0x1E697CA58]);
  sub_1AAF8E664();
  v2 = sub_1AADCB784(v1);

  return v2;
}

uint64_t sub_1AADCA414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1AAF8F974();
  v5[7] = sub_1AAF8F964();
  v7 = sub_1AAF8F954();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AADCA4AC, v7, v6);
}

uint64_t sub_1AADCA4AC()
{
  v1 = v0[5];
  swift_beginAccess();
  if (*(v1 + 16))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_1AADCA594;

    return MEMORY[0x1EEE6DA78]();
  }
}

uint64_t sub_1AADCA594()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1AADCA6B4, v3, v2);
}

uint64_t sub_1AADCA6B4()
{
  v1 = *(v0 + 48);
  [v1 bounds];
  [v1 setNeedsDisplayInRect_];
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1AADCA770;

  return MEMORY[0x1EEE6DA60](16666667);
}

uint64_t sub_1AADCA770()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1AADCD850;
  }

  else
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1AADCA894;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AADCA894()
{
  if (*(v0[5] + 16))
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1AADCA594;

    return MEMORY[0x1EEE6DA78]();
  }
}

uint64_t sub_1AADCA968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_1AADCC8B4(0, &qword_1EB424B60, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[9] = swift_task_alloc();
  v8 = sub_1AAF8CFB4();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v9 = sub_1AAF8D7A4();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_1AAF8D714();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  v11 = sub_1AAF8D734();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = sub_1AAF8F974();
  v7[23] = sub_1AAF8F964();
  v13 = sub_1AAF8F954();
  v7[24] = v13;
  v7[25] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1AADCABD8, v13, v12);
}

uint64_t sub_1AADCABD8()
{
  sub_1AAF8CED4();
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_1AADCACC4;

  return MEMORY[0x1EEDD6710](0x746867694CLL, 0xE500000000000000, v2);
}

uint64_t sub_1AADCACC4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_1AADCB164;
  }

  else
  {
    v4[27] = a1;
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_1AADCADF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1AADCADF0()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[18];
  v27 = v0[19];
  v28 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[12];
  v21 = v0[13];
  v22 = v0[14];
  v23 = v0[11];
  v24 = v0[10];
  v26 = v0[9];
  v8 = v0[6];
  v25 = v0[7];

  *v3 = v1;
  (*(v4 + 104))(v3, *MEMORY[0x1E697A730], v5);

  sub_1AAF8D724();
  swift_unknownObjectRetain();
  sub_1AAF8D794();
  sub_1AAF8CF44();
  sub_1AAD0D328(0, &qword_1EB424B68, &unk_1EB424B70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AAF9E2B0;
  v10 = MEMORY[0x1E697A728];
  *(v9 + 56) = v27;
  *(v9 + 64) = v10;
  v11 = sub_1AACB2508((v9 + 32));
  (*(v28 + 16))(v11, v2, v27);
  v12 = MEMORY[0x1E697A818];
  *(v9 + 96) = v21;
  *(v9 + 104) = v12;
  v13 = sub_1AACB2508((v9 + 72));
  (*(v22 + 16))(v13, v6, v21);
  sub_1AAF8CF84();

  (*(v23 + 8))(v7, v24);
  [v8 bounds];
  [v8 setNeedsDisplayInRect_];
  swift_beginAccess();
  *(v25 + 16) = 1;
  sub_1AAD87E88();
  [v8 bounds];
  [v8 setNeedsDisplayInRect_];
  v14 = sub_1AAF8F994();
  (*(*(v14 - 8) + 56))(v26, 1, 1, v14);
  v15 = v8;
  v16 = sub_1AAF8F964();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_1AADC0CA4(0, 0, v26, &unk_1AAF9F2F0, v17);

  (*(v22 + 8))(v6, v21);
  (*(v28 + 8))(v2, v27);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1AADCB164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AADCB204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1AAF8F974();
  v4[4] = sub_1AAF8F964();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1AADCB2B8;

  return MEMORY[0x1EEE6DA60](16666667);
}

uint64_t sub_1AADCB2B8()
{

  if (v0)
  {

    v1 = sub_1AAF8F954();
    v3 = v2;
    v4 = sub_1AADCD848;
  }

  else
  {
    v1 = sub_1AAF8F954();
    v3 = v5;
    v4 = sub_1AADCB43C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1AADCB43C()
{
  v1 = *(v0 + 16);

  [v1 bounds];
  [v1 setNeedsDisplayInRect_];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AADCB4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1AAF8F974();
  v5[5] = sub_1AAF8F964();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_1AADCB574;

  return MEMORY[0x1EEE6DA60](250000000);
}

uint64_t sub_1AADCB574()
{

  if (v0)
  {

    v1 = sub_1AAF8F954();
    v3 = v2;
    v4 = sub_1AADCD854;
  }

  else
  {
    v1 = sub_1AAF8F954();
    v3 = v5;
    v4 = sub_1AADCB6F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1AADCB6F8()
{
  v1 = *(v0 + 24);

  sub_1AAD87E88();
  [v1 bounds];
  [v1 setNeedsDisplayInRect_];
  v2 = *(v0 + 8);

  return v2();
}

int64_t sub_1AADCB784(void *a1)
{
  v3 = sub_1AAF8D204();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  [a1 drawableSize];
  v12 = v11;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [a1 drawableSize];
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = [v10 texture2DDescriptorWithPixelFormat:81 width:v12 height:v13 mipmapped:0];
  [v10 setUsage_];
  [v10 setStorageMode_];
  v14 = [a1 device];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 newTextureWithDescriptor_];
  if (!v16)
  {
LABEL_18:
    swift_unknownObjectRelease();
LABEL_19:
    if (qword_1ED9B59F0 == -1)
    {
LABEL_20:
      v27 = qword_1ED9C36C8;
      sub_1AAF8FD04();
      sub_1AAD0D328(0, &qword_1ED9AEE70, &qword_1ED9AEE60);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AAF92AB0;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1AAD6E644();
      *(v28 + 32) = 0xD00000000000002DLL;
      *(v28 + 40) = 0x80000001AAFCE320;
      sub_1AAF8D7B4();

      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v15 newCommandQueue];
  if (!v18)
  {
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [v18 commandBuffer];
  if (!v20)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v21 = v20;
  v22 = *(v1 + OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator_snapshotRenderingEvent);
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v23 = *(v1 + OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator_snapshotRenderingValue);
  v24 = __CFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    swift_once();
    v31 = qword_1ED9C36C8;
    sub_1AAF8FD04();
    sub_1AAD0D328(0, &qword_1ED9AEE70, &qword_1ED9AEE60);
    v32 = swift_allocObject();
    *(v32 + 16) = v21[171];
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD000000000000029, 0x80000001AAFCE350);
    v53 = v5;
    sub_1AAD45E1C(0, &qword_1EB424158);
    sub_1AAF90284();
    v33 = v52;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1AAD6E644();
    *(v32 + 32) = v33;
    sub_1AAF8D7B4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v50 = v20;
  v51 = v22;
  v48 = OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator_snapshotRenderingValue;
  *(v1 + OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator_snapshotRenderingValue) = v25;
  v26 = *(v1 + OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator__realityRenderer);
  swift_unknownObjectRetain();
  v49 = v26;
  swift_unknownObjectRetain();
  sub_1AAF8D1F4();
  sub_1AAF8D224();
  v46 = v19;
  sub_1AADCC8B4(0, &unk_1EB424AF0, 255, MEMORY[0x1E697A400], MEMORY[0x1E69E6F90]);
  sub_1AAF8D294();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AAF92AB0;
  v45 = v1;
  v30 = v51;
  sub_1AAF8D284();
  v47 = v29;
  sub_1AAF8D264();
  (*(v7 + 8))(v9, v6);
  swift_unknownObjectRelease();

  v34 = v50;
  [v50 encodeWaitForEvent:v30 value:*(v45 + v48)];
  [v34 commit];
  [v34 waitUntilCompleted];
  result = [v17 width];
  if ((result - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_37;
  }

  v36 = 4 * result;
  v37 = [v17 height];
  result = v37 * v36;
  if ((v37 * v36) >> 64 != (v37 * v36) >> 63)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v38 = swift_slowAlloc();
  sub_1AADCC918([v17 width], objc_msgSend(v17, sel_height), &v52);
  [v17 getBytes:v38 bytesPerRow:v36 fromRegion:&v52 mipmapLevel:0];
  v39 = [v17 width];
  v40 = [v17 height];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v42 = sub_1AADCC92C(v38, v39, v40, v36, DeviceRGB);

  if (v42)
  {
    Image = CGBitmapContextCreateImage(v42);
  }

  else
  {
    Image = 0;
  }

  MEMORY[0x1AC59A0D0](v38, -1, -1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return Image;
}

uint64_t sub_1AADCC048(void *a1)
{
  v2 = sub_1AAF8D204();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1AAF8D214();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 currentDrawable];
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 texture];
    sub_1AAF8D1F4();
    swift_unknownObjectRelease();
    sub_1AAF8D224();
    *(swift_allocObject() + 16) = v9;
    swift_unknownObjectRetain();
    sub_1AAF8D264();
    (*(v4 + 8))(v7, v3);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    v11 = qword_1ED9C36C8;
    sub_1AAF8FD04();
    sub_1AAD0D328(0, &qword_1ED9AEE70, &qword_1ED9AEE60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AAF92AB0;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1AAD6E644();
    *(v12 + 32) = 0xD00000000000001FLL;
    *(v12 + 40) = 0x80000001AAFCE2D0;
    sub_1AAF8D7B4();
  }
}

id sub_1AADCC584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetalViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AADCC678(void *a1)
{
  swift_getKeyPath();
  sub_1AADCD1AC(&qword_1EB424118, type metadata accessor for RenderTrigger);
  sub_1AAF8D0C4();

  [a1 bounds];
  return [a1 setNeedsDisplayInRect_];
}

id sub_1AADCC740@<X0>(void *a1@<X8>)
{
  result = sub_1AADCCF2C();
  *a1 = result;
  return result;
}

uint64_t sub_1AADCC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AADCD25C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1AADCC818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AADCD25C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1AADCC87C()
{
  sub_1AADCD25C();
  sub_1AAF8E324();
  __break(1u);
}

void sub_1AADCC8B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AADCC918@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

__n128 sub_1AADCC94C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AADCC960(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AADCC9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AADCCA20()
{
  if (!qword_1EB424B10)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424B10);
    }
  }
}

uint64_t sub_1AADCCA78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AADCCAC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1AADCCB18()
{
  result = qword_1EB424B18;
  if (!qword_1EB424B18)
  {
    sub_1AADCCB98();
    sub_1AADCCC84();
    sub_1AADCCCD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424B18);
  }

  return result;
}

void sub_1AADCCB98()
{
  if (!qword_1EB424B20)
  {
    sub_1AADCD1F4(255, &qword_1EB424B28, sub_1AADCCC30, &type metadata for Chart3DImageRendererKey, MEMORY[0x1E6980750]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424B20);
    }
  }
}

unint64_t sub_1AADCCC30()
{
  result = qword_1EB424B30;
  if (!qword_1EB424B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424B30);
  }

  return result;
}

unint64_t sub_1AADCCC84()
{
  result = qword_1EB424B38;
  if (!qword_1EB424B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424B38);
  }

  return result;
}

unint64_t sub_1AADCCCD8()
{
  result = qword_1EB424B40;
  if (!qword_1EB424B40)
  {
    sub_1AADCD1F4(255, &qword_1EB424B28, sub_1AADCCC30, &type metadata for Chart3DImageRendererKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424B40);
  }

  return result;
}

id sub_1AADCCD6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator_snapshotRenderingEvent;
  *&v1[OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator_snapshotRenderingEvent] = 0;
  *&v1[OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator_snapshotRenderingValue] = 0;
  *&v1[OBJC_IVAR____TtCV6ChartsP33_AE001D9FDCD97F39A9028C7B44A0C31022MetalViewRepresentable11Coordinator__realityRenderer] = a1;
  v3 = qword_1EB422B48;

  if (v3 != -1)
  {
    swift_once();
  }

  if (qword_1EB432078)
  {
    *&v1[v2] = [*(qword_1EB432078 + 16) newEvent];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED9C36C8;
    sub_1AAF8FD04();
    sub_1AAD0D328(0, &qword_1ED9AEE70, &qword_1ED9AEE60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AAF92AB0;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1AAD6E644();
    *(v5 + 32) = 0xD000000000000030;
    *(v5 + 40) = 0x80000001AAFCE3F0;
    sub_1AAF8D7B4();
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for MetalViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1AADCCF2C()
{
  v0 = sub_1AAF8D564();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AAF8D2C4();
  swift_allocObject();
  v4 = sub_1AAF8D2B4();
  (*(v1 + 104))(v3, *MEMORY[0x1E697A500], v0);
  v5 = sub_1AAF8D254();
  sub_1AAF8D244();
  v5(v12, 0);
  swift_unknownObjectRetain();
  sub_1AAF8D234();
  v6 = sub_1AAF8D2A4();
  sub_1AAF8D274();
  sub_1AADCD1AC(&qword_1EB424B48, MEMORY[0x1E697A3F8]);
  sub_1AAF8D574();
  v6(v12, 0);
  v7 = sub_1AAF8D2A4();
  sub_1AAF8D574();
  v7(v12, 0);
  v8 = objc_allocWithZone(type metadata accessor for MetalViewRepresentable.Coordinator());
  v9 = sub_1AADCCD6C(v4);

  return v9;
}

uint64_t sub_1AADCD1AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AADCD1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AADCD25C()
{
  result = qword_1EB424B58;
  if (!qword_1EB424B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424B58);
  }

  return result;
}

int64_t sub_1AADCD2B0()
{
  sub_1AADCD1F4(0, &qword_1EB424B50, sub_1AADCD25C, &type metadata for MetalViewRepresentable, MEMORY[0x1E697CA58]);

  return sub_1AADCA350();
}

id sub_1AADCD34C(uint64_t a1)
{
  if (qword_1EB422B48 != -1)
  {
    swift_once();
  }

  if (qword_1EB432078)
  {
    v2 = *(qword_1EB432078 + 16);
    v3 = objc_allocWithZone(MEMORY[0x1E6974440]);

    v4 = [v3 initWithFrame:v2 device:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPaused_];
    [v4 setEnableSetNeedsDisplay_];
    [v4 setDelegate_];
    [v4 setFramebufferOnly_];
    [v4 setColorPixelFormat_];
    [v4 setClearColor_];
    v5 = [v4 layer];
    [v5 setOpaque_];

    return v4;
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E6974440]);

    return [v7 init];
  }
}

uint64_t sub_1AADCD4E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AADC4FC8;

  return sub_1AADCA414(a1, v4, v5, v7, v6);
}

uint64_t sub_1AADCD600(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AAD9E0C8;

  return sub_1AADCA968(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_1AADCD6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AADC4FC8;

  return sub_1AADCB4C0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1AADCD794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AADC4FC8;

  return sub_1AADCB204(a1, v4, v5, v6);
}

uint64_t sub_1AADCD858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AADCDE78();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AADCD8BC()
{
  sub_1AACBFEB0();
  sub_1AAF8E144();
  return v1;
}

uint64_t sub_1AADCD934(uint64_t *a1)
{
  v1 = a1[2];
  sub_1AACBD93C(*a1);
  sub_1AACBD93C(v1);
  sub_1AACBFEB0();
  return sub_1AAF8E154();
}

uint64_t sub_1AADCD9A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a2;
  v14[7] = a3;
  v15 = *a1;

  result = sub_1AACB4A98(v15);
  *a1 = sub_1AADCDE30;
  a1[1] = v14;
  return result;
}

uint64_t sub_1AADCDA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  sub_1AAF8EBB4();
}

uint64_t sub_1AADCDB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a2;
  v14[7] = a3;
  v15 = *(a1 + 16);

  result = sub_1AACB4A98(v15);
  *(a1 + 16) = sub_1AADCDECC;
  *(a1 + 24) = v14;
  return result;
}

void *initializeBufferWithCopyOfBuffer for ChartAxisContent(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for ChartAxisContent(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for ChartAxisContent(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_1AADCDCE8()
{
  if (!qword_1EB424BE0)
  {
    v0 = sub_1AAF8E754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424BE0);
    }
  }
}

unint64_t sub_1AADCDD38()
{
  result = qword_1EB424BE8;
  if (!qword_1EB424BE8)
  {
    sub_1AADCDCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424BE8);
  }

  return result;
}

uint64_t sub_1AADCDD90(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = *v2;
  v3(&v5, v1);
  return sub_1AAF8EF44();
}

unint64_t sub_1AADCDE78()
{
  result = qword_1EB424BF0;
  if (!qword_1EB424BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424BF0);
  }

  return result;
}

uint64_t AnyAxisContent.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = sub_1AACB2508(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(v6, a1, a2);
}

uint64_t static AnyAxisContent._makeAxisContent(_:_:)(void *a1)
{
  v1 = a1[4];
  v2 = sub_1AACBB42C(a1, a1[3]);
  return (*(v1 + 8))(v2);
}

uint64_t sub_1AADCDFE8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_1AACBB42C(a1, v1);

  return sub_1AADCDFAC(v3, v1, v2);
}

uint64_t static BuilderConditional<>._makeAxisContent(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[0] = a5;
  v24[1] = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BuilderConditional.Storage();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v24 - v20;
  (*(v22 + 16))(v24 - v20, a1, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v21, a3);
    (*(v24[0] + 8))(v12);
    return (*(v10 + 8))(v12, a3);
  }

  else
  {
    (*(v14 + 32))(v17, v21, a2);
    (*(a4 + 8))(v17);
    return (*(v14 + 8))(v17, a2);
  }
}

uint64_t AxisContent.compositingLayer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AAF8E514();
  WitnessTable = swift_getWitnessTable();
  return AxisContent.compositingLayer<A>(style:)(a1, v6, a2, WitnessTable, a3);
}

uint64_t sub_1AADCE3E4(uint64_t a1)
{
  v2 = sub_1AAF8E514();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  WitnessTable = swift_getWitnessTable();
  sub_1AACE0800(a1, v2, WitnessTable);
  sub_1AACE0800(v5, v2, WitnessTable);
  return (*(v3 + 8))(v5, v2);
}

uint64_t AxisContent.compositingLayer<A>(style:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = v5;
  v20 = a5;
  v21 = a3;
  v22 = a1;
  v23 = a2;
  v24 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = &v19 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v6, a1, v14);
  sub_1AAF8E504();
  v22 = a1;
  v23 = a2;
  v24 = a4;
  swift_getOpaqueTypeConformance2();
  return sub_1AADCE6A0(v16, v12, a1, OpaqueTypeMetadata2, v20);
}

uint64_t sub_1AADCE6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for CompositingLayerContent();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1AADCE768()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AADCE7F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1AADCE9D0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

size_t sub_1AADCECA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = (*(a5 + 8))(&v23, a1, a2, a3, a5);
  v14 = v23;
  v15 = v23[2];
  if (v15)
  {
    v20[0] = a3;
    v20[1] = a4;
    v20[2] = a5;
    v21 = a6;
    v16 = 0;
    v17 = *(type metadata accessor for CompositingLayerContent() + 52);
    while (1)
    {
      v21 = a4;
      v22 = a6;
      v18 = sub_1AACB2508(v20);
      (*(*(a4 - 8) + 16))(v18, a1 + v17, a4);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AADB811C(v14);
        v14 = result;
      }

      if (v16 >= v14[2])
      {
        break;
      }

      v19 = type metadata accessor for AxisMarksConfiguration();
      result = sub_1AADCEE44(v20, v14 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v16++ + *(v19 + 32));
      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *a7 = v14;
  }

  return result;
}

uint64_t sub_1AADCEE44(uint64_t a1, uint64_t a2)
{
  sub_1AADCEEA8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AADCEEA8()
{
  if (!qword_1ED9B3AF8)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3AF8);
    }
  }
}

uint64_t BuilderPair<>.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  (*(v14 + 16))(a7, a1);
  v15 = static AxisContent.conformanceToAxisContent.getter(a3, a5);
  v16 = type metadata accessor for BuilderPair();
  *(a7 + v16[9]) = v15;
  v17 = *(a4 - 8);
  (*(v17 + 16))(a7 + v16[10], a2, a4);
  v18 = static AxisContent.conformanceToAxisContent.getter(a4, a6);
  (*(v17 + 8))(a2, a4);
  result = (*(v14 + 8))(a1, a3);
  *(a7 + v16[11]) = v18;
  return result;
}

{
  v14 = *(a3 - 8);
  (*(v14 + 16))(a7, a1);
  v15 = static AxisMark.conformanceToAxisMark.getter(a3, a5);
  v16 = type metadata accessor for BuilderPair();
  *(a7 + v16[9]) = v15;
  v17 = *(a4 - 8);
  (*(v17 + 16))(a7 + v16[10], a2, a4);
  v18 = static AxisMark.conformanceToAxisMark.getter(a4, a6);
  (*(v17 + 8))(a2, a4);
  result = (*(v14 + 8))(a1, a3);
  *(a7 + v16[11]) = v18;
  return result;
}

{
  v14 = *(a3 - 8);
  (*(v14 + 16))(a7, a1);
  v15 = static ChartContent.conformanceToChartContent.getter(a3, a5);
  v16 = type metadata accessor for BuilderPair();
  *(a7 + v16[9]) = v15;
  v17 = *(a4 - 8);
  (*(v17 + 16))(a7 + v16[10], a2, a4);
  v18 = static ChartContent.conformanceToChartContent.getter(a4, a6);
  (*(v17 + 8))(a2, a4);
  result = (*(v14 + 8))(a1, a3);
  *(a7 + v16[11]) = v18;
  return result;
}

void static BuilderPair<>._makeAxisContent(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for BuilderPair();
  v12 = *(v11 + 8);
  sub_1AADCF1A0();
  if (v13)
  {
    v14 = sub_1AADCF1F0(v11, v12, v11 + 8 * *(v13 + 24), (v11 + 16), &qword_1ED9AE360, &qword_1ED9C32B8);
    MEMORY[0x1EEE9AC00](v14);
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v17[5] = a6;
    v17[6] = v15;
    sub_1AACBC418(a1, sub_1AADCF3DC, v17, v11, MEMORY[0x1E69E73E0], &type metadata for _AxisContentOutputs, MEMORY[0x1E69E7410], v16);
  }

  else
  {
    __break(1u);
  }
}

char *sub_1AADCF1F0(char *a1, char *a2, uint64_t a3, void **a4, void *a5, uint64_t *a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *a6;
  if (*(*a6 + 16) && (v12 = sub_1AACB89FC(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v18[0] = MEMORY[0x1E69E7CC0];
    sub_1AAF8AC14(*a4, a3, 0, 0, a1, a2, a3, a4, v18);
    sub_1AAF8AC14(a4[1], a3, 2, 0, a1, a2, a3, a4, v18);
    v14 = v18[0];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a6;
    *a6 = 0x8000000000000000;
    sub_1AADD2654(v14, a1, isUniquelyReferenced_nonNull_native);
    *a6 = v17;
    swift_endAccess();
  }

  return v14;
}

uint64_t sub_1AADCF354@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v7 += 3;
      result = sub_1AADCF428(result, v8, *(v6 + v9));
      --v5;
    }

    while (v5);
    v4 = v10;
  }

  *a3 = v4;
  return result;
}

uint64_t sub_1AADCF428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *v4 + v4[1], a2, v8);
  (*(a3 + 8))(&v13, v10);
  (*(v7 + 8))(v10, a2);
  return sub_1AADC8D10(v13);
}

id sub_1AADCF568()
{
  result = [objc_opt_self() systemFontOfSize:9.0 weight:*MEMORY[0x1E69DB968]];
  qword_1EB432090 = result;
  return result;
}

id sub_1AADCF5F4()
{
  if (qword_1EB422B90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432090;
  qword_1EB4320A8 = qword_1EB432090;

  return v1;
}

uint64_t sub_1AADCF6B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v6 = a4;
    v7 = a3;
    swift_once();
    a3 = v7;
    a4 = v6;
  }

  *a4 = *a3;
}

uint64_t sub_1AADCF710@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  *(v33 + 7) = *a1;
  *(&v33[1] + 7) = v4;
  *(&v33[2] + 7) = *(a1 + 32);
  *(v32 + 7) = *(v33 + 7);
  *(&v32[1] + 7) = v4;
  *(&v32[2] + 7) = *(&v33[2] + 7);
  v14[0] = 2;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  v25 = 770;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 1;
  v30 = 0u;
  memset(v31, 0, 26);
  v31[26] = 2;
  LOBYTE(v10) = 2;
  *(&v10 + 1) = 0;
  LOBYTE(v11[0]) = -1;
  *(v11 + 1) = v33[0];
  *(&v11[1] + 1) = v33[1];
  v11[2] = *(&v33[1] + 15);
  LOWORD(v12) = 1;
  LOBYTE(v7) = 2;
  *(&v7 + 1) = 0;
  v8[0] = -1;
  *&v8[1] = v32[0];
  *&v8[17] = v32[1];
  *&v8[32] = *(&v32[1] + 15);
  LOWORD(v9) = 0;
  *(&v9 + 1) = 0;
  *(&v12 + 1) = 0;
  v13[0] = &v10;
  v13[1] = &v7;
  sub_1AADCFD2C(v14, &v6, sub_1AADCFCD4);
  v13[2] = &v6;
  sub_1AADCF8FC(v13, a2);
  sub_1AADCFD2C(a1, v35, sub_1AAD1A7B4);
  sub_1AADCFD2C(a1, v35, sub_1AAD1A7B4);
  sub_1AADCFD94(v14);
  sub_1AADCFD94(&v6);
  v34[2] = *&v8[16];
  v34[3] = *&v8[32];
  v34[4] = v9;
  v34[0] = v7;
  v34[1] = *v8;
  sub_1AADCFDF0(v34);
  v35[2] = v11[1];
  v35[3] = v11[2];
  v35[4] = v12;
  v35[0] = v10;
  v35[1] = v11[0];
  return sub_1AADCFE44(v35);
}

uint64_t sub_1AADCF8FC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v27[0] = **a1;
  v5 = v4[4];
  v7 = v4[1];
  v6 = v4[2];
  v27[3] = v4[3];
  v27[4] = v5;
  v27[1] = v7;
  v27[2] = v6;
  memmove(__dst, v4, 0x50uLL);
  v8 = *(a1 + 8);
  v28[0] = *v8;
  v9 = v8[4];
  v11 = v8[1];
  v10 = v8[2];
  v28[3] = v8[3];
  v28[4] = v9;
  v28[1] = v11;
  v28[2] = v10;
  memmove(v24, v8, 0x50uLL);
  sub_1AADCFCD4();
  sub_1AADCFD2C(*(a1 + 16), v25, sub_1AADCFCD4);
  v12 = __dst[3];
  a2[2] = __dst[2];
  a2[3] = v12;
  v13 = __dst[1];
  *a2 = __dst[0];
  a2[1] = v13;
  v14 = v24[2];
  a2[6] = v24[1];
  a2[7] = v14;
  v15 = v24[4];
  a2[8] = v24[3];
  a2[9] = v15;
  v16 = v24[0];
  a2[4] = __dst[4];
  a2[5] = v16;
  *(a2 + 299) = *(v26 + 11);
  v17 = v26[0];
  a2[17] = v25[7];
  a2[18] = v17;
  v18 = v25[6];
  a2[15] = v25[5];
  a2[16] = v18;
  v19 = v25[4];
  a2[13] = v25[3];
  a2[14] = v19;
  v20 = v25[2];
  a2[11] = v25[1];
  a2[12] = v20;
  a2[10] = v25[0];
  sub_1AADCFE98(v27, v22);
  return sub_1AADCFEF4(v28, v22);
}

uint64_t sub_1AADCFA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  *(v25 + 7) = *a2;
  *(&v25[1] + 7) = v9;
  *(&v25[2] + 7) = *(a2 + 32);
  *(v24 + 7) = *(v25 + 7);
  *(&v24[1] + 7) = v9;
  *(&v24[2] + 7) = *(&v25[2] + 7);
  (*(v10 + 16))(v8);
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v15 = 1;
  LOBYTE(v27[0]) = 3;
  AxisValueLabel.init<A>(format:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)(v8, 2, 0, 0, 1, 0, 0, 1, v23, v13, 2, v27, 0, 1, 0, 1, a3);
  *(v20 + 1) = v25[0];
  *(&v20[1] + 1) = v25[1];
  v20[2] = *(&v25[1] + 15);
  *(v17 + 1) = v24[0];
  LOBYTE(v19) = 2;
  *(&v19 + 1) = 0;
  LOBYTE(v20[0]) = -1;
  LOWORD(v21) = 1;
  LOBYTE(v16) = 2;
  *(&v16 + 1) = 0;
  LOBYTE(v17[0]) = -1;
  *(&v17[1] + 1) = v24[1];
  v17[2] = *(&v24[1] + 15);
  LOWORD(v18) = 0;
  *(&v18 + 1) = 0;
  *(&v21 + 1) = 0;
  v22[0] = &v19;
  v22[1] = &v16;
  sub_1AADCFD2C(v23, v13, sub_1AADCFCD4);
  v22[2] = v13;
  sub_1AADCF8FC(v22, a4);
  sub_1AADCFD2C(a2, v27, sub_1AAD1A7B4);
  sub_1AADCFD2C(a2, v27, sub_1AAD1A7B4);
  sub_1AADCFD94(v23);
  sub_1AADCFD94(v13);
  v26[2] = v17[1];
  v26[3] = v17[2];
  v26[4] = v18;
  v26[0] = v16;
  v26[1] = v17[0];
  sub_1AADCFDF0(v26);
  v27[2] = v20[1];
  v27[3] = v20[2];
  v27[4] = v21;
  v27[0] = v19;
  v27[1] = v20[0];
  return sub_1AADCFE44(v27);
}

void sub_1AADCFCD4()
{
  if (!qword_1EB424BF8)
  {
    v0 = type metadata accessor for AxisValueLabel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424BF8);
    }
  }
}

uint64_t sub_1AADCFD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADCFD94(uint64_t a1)
{
  sub_1AADCFCD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AADCFF50@<D0>(char a1@<W0>, double *a2@<X8>)
{
  if ((a1 & 0xFE) != 2)
  {
    v3 = [objc_opt_self() currentDevice];
    [v3 userInterfaceIdiom];
  }

  sub_1AAF8D914();
  result = v7;
  *a2 = v5;
  *(a2 + 1) = v6;
  a2[2] = v7;
  *(a2 + 3) = v8;
  *(a2 + 4) = v9;
  return result;
}

uint64_t AxisGridLine.init(centered:stroke:snapToPixel:pixelOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *&v7[7] = *a2;
  *&v7[23] = *(a2 + 16);
  if (a5)
  {
    a4 = 0.0;
  }

  *(a6 + 17) = *v7;
  *&v7[39] = *(a2 + 32);
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = -1;
  *(a6 + 33) = *&v7[16];
  *(a6 + 48) = *&v7[31];
  *(a6 + 64) = 1;
  *(a6 + 65) = a3 & 1;
  *(a6 + 72) = a4;
  return result;
}

uint64_t static AxisGridLine._renderAxisMark(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  v18 = a1[3];
  v19 = v6;
  v7 = *a1;
  v8 = *a1;
  v17[1] = a1[1];
  v17[2] = v5;
  v14 = v5;
  v15 = v18;
  v16 = a1[4];
  v17[0] = v7;
  v9 = *a2;
  v12 = v8;
  v13 = v4;
  v11 = v9;
  sub_1AACE477C(v17, v20);
  static AxisTick._renderAxisMark(_:_:)(&v12, &v11, a3);
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[0] = v12;
  v20[1] = v13;
  return sub_1AACE1438(v20);
}

uint64_t static AxisGridLine._collectAxisMark(_:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[16];
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  v6 = *(a1 + 7);
  v7 = a1[64];
  v8 = a1[65];
  v9 = *(a1 + 9);
  v10 = *(a2 + 8);
  v11 = *(a2 + 96);
  if (*(a2 + 128) == 2)
  {
    v12 = *(a2 + 112);
    v13 = *(a2 + 120);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a2 + 104);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  sub_1AADD0294();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AAF92AB0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v11;
  *(v17 + 48) = v12;
  *(v17 + 56) = v13;
  *(v17 + 64) = v14;
  *(v17 + 65) = v19;
  *(v17 + 72) = v4;
  *(v17 + 80) = v5;
  *(v17 + 104) = v21;
  *(v17 + 88) = v20;
  *(v17 + 120) = v6;
  *(v17 + 128) = v7;
  *(v17 + 129) = v8;
  *(v17 + 136) = v9;
  *(v17 + 144) = v15;
  *(v17 + 152) = v16;
  *(v17 + 296) = 0;
  *a3 = v17;
}

void sub_1AADD0294()
{
  if (!qword_1ED9AD718)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD718);
    }
  }
}

uint64_t sub_1AADD0300()
{
  if (*(v0 + 80))
  {
    return *(v0 + 56);
  }

  else
  {
    return 0;
  }
}

double sub_1AADD0318@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = -256;
  return result;
}

uint64_t AnyAxisMark.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = sub_1AACB2508(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(v6, a1, a2);
}

uint64_t static AnyAxisMark._layoutAxisMark(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = a1[3];
  v3 = a1[4];
  v5 = sub_1AACBB42C(a1, v4);
  v7 = v2;
  return (*(v3 + 8))(v5, &v7, v4, v3);
}

uint64_t static AnyAxisMark._renderAxisMark(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1AACBB42C(a1, v3);
  v7 = v2;
  return (*(v4 + 16))(v5, &v7, v3, v4);
}

uint64_t static AnyAxisMark._collectAxisMark(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1AACBB42C(a1, v3);
  return (*(v4 + 24))(v5, a2, v3, v4);
}

uint64_t sub_1AADD0540(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1AACBB42C(a1, v3);

  return sub_1AACCA740(v5, v2, v3, v4);
}

uint64_t sub_1AADD0590(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1AACBB42C(a1, v3);

  return sub_1AACE4738(v5, v2, v3, v4);
}

uint64_t sub_1AADD05E8(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1AACBB42C(a1, v3);

  return sub_1AADD050C(v5, a2, v3, v4);
}

uint64_t static Optional<A>._collectAxisMark(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1AAF8FE74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(v11 + 8))(v13, v10);
    if (qword_1ED9AE218 != -1)
    {
      swift_once();
    }

    *a5 = qword_1ED9C32B0;
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    (*(a4 + 24))(v18, a2, a3, a4);
    return (*(v14 + 8))(v18, a3);
  }
}

uint64_t static BuilderEmpty._collectAxisMark(_:_:)@<X0>(void *a1@<X8>)
{
  if (qword_1ED9AE218 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED9C32B0;
}

uint64_t sub_1AADD0914@<X0>(void *a1@<X8>)
{
  if (qword_1ED9AE218 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED9C32B0;
}

uint64_t static BuilderConditional<>._layoutAxisMark(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BuilderConditional.Storage();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  v22 = *a2;
  (*(v23 + 16))(&v37 - v20, a1, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v21, a4);
    v24 = *(v22 + 16);
    v25 = *(v24 + 16);
    v26 = *(v25 + 32);

    v27 = sub_1AACD5520(0, v26);
    v28 = *(v25 + 32);
    *(v25 + 32) = v27;
    v29 = *(v24 + 24);
    *(v24 + 24) = v27;
    v40 = v22;
    (*(v38 + 8))(v12, &v40, a4);
    *(v24 + 24) = v29;
    *(v25 + 32) = v28;

    return (*(v10 + 8))(v12, a4);
  }

  else
  {
    (*(v14 + 32))(v17, v21, a3);
    v31 = *(v22 + 16);
    v32 = *(v31 + 16);
    v33 = *(v32 + 32);

    v34 = sub_1AACD5520(1, v33);
    v35 = *(v32 + 32);
    *(v32 + 32) = v34;
    v36 = *(v31 + 24);
    *(v31 + 24) = v34;
    v40 = v22;
    (*(v39 + 8))(v17, &v40, a3);
    *(v31 + 24) = v36;
    *(v32 + 32) = v35;

    return (*(v14 + 8))(v17, a3);
  }
}

uint64_t static BuilderConditional<>._renderAxisMark(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v39 = a5;
  v40 = a7;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BuilderConditional.Storage();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = *a2;
  (*(v24 + 16))(&v38 - v21, a1, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v22, a4);
    v25 = *(v23 + 16);
    v26 = *(v25 + 16);
    v27 = *(v26 + 32);

    v28 = sub_1AACD5520(0, v27);
    v29 = *(v26 + 32);
    *(v26 + 32) = v28;
    v30 = *(v25 + 24);
    *(v25 + 24) = v28;
    v41 = v23;
    (*(v38 + 16))(v13, &v41, a4);
    *(v25 + 24) = v30;
    *(v26 + 32) = v29;

    return (*(v11 + 8))(v13, a4);
  }

  else
  {
    (*(v15 + 32))(v18, v22, a3);
    v32 = *(v23 + 16);
    v33 = *(v32 + 16);
    v34 = *(v33 + 32);

    v35 = sub_1AACD5520(1, v34);
    v36 = *(v33 + 32);
    *(v33 + 32) = v35;
    v37 = *(v32 + 24);
    *(v32 + 24) = v35;
    v41 = v23;
    (*(v39 + 16))(v18, &v41, a3);
    *(v32 + 24) = v37;
    *(v33 + 32) = v36;

    return (*(v15 + 8))(v18, a3);
  }
}

uint64_t static BuilderConditional<>._collectAxisMark(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a6;
  v33 = a5;
  v34 = a7;
  v31 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BuilderConditional.Storage();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  sub_1AADD144C(a2, &v36);
  (*(v18 + 16))(v20, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v31;
    (*(v31 + 32))(v12, v20, a4);
    v22 = v37;
    sub_1AACE4490(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AAF92AB0;
    *(inited + 32) = 0;
    *(inited + 72) = 0;
    v35 = v22;

    sub_1AADC85B8(inited);
    v24 = v35;

    v37 = v24;
    (*(v32 + 24))(v12, &v36, a4);
    (*(v21 + 8))(v12, a4);
  }

  else
  {
    v25 = v30;
    (*(v30 + 32))(v16, v20, a3);
    v26 = v37;
    sub_1AACE4490(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1AAF92AB0;
    *(v27 + 32) = 1;
    *(v27 + 72) = 0;
    v35 = v26;

    sub_1AADC85B8(v27);
    v28 = v35;

    v37 = v28;
    (*(v33 + 24))(v16, &v36, a3);
    (*(v25 + 8))(v16, a3);
  }

  return sub_1AADD1484(&v36);
}

uint64_t sub_1AADD13D4()
{

  sub_1AACE0E94((v0 + 9));

  sub_1AACCA714(v0[18], v0[19], v0[20]);

  return swift_deallocClassInstance();
}

__n128 sub_1AADD14F0(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1AADD1524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1AADD156C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADD166C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1AADD16B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADD1750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_1AADD17A0(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
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

uint64_t sub_1AADD1804(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_1AADD1858(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 265))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 264);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADD1894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 249) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 265) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 265) = 0;
    }

    if (a2)
    {
      *(result + 264) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AADD18FC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 256) = 0;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 264) = a2;
  return result;
}

unint64_t sub_1AADD1950(uint64_t a1)
{
  result = sub_1AADD1978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AADD1978()
{
  result = qword_1EB424C00;
  if (!qword_1EB424C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C00);
  }

  return result;
}

uint64_t sub_1AADD19CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  sub_1AAF90024();
  v14[0] = a3;
  swift_beginAccess();
  v6 = *(v3 + 16);
  if (*(v6 + 16) && (v7 = sub_1AACCAE28(v14), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    swift_endAccess();
    sub_1AAF90704();
    sub_1AAF8F6C4();
    MEMORY[0x1AC5992F0](a3);
    v10 = sub_1AAF906E4();
    v9 = sub_1AACCB060(v10);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_1AACCB154(v9, v14, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v13;
  }

  swift_endAccess();
  sub_1AACCAFF0(v14);
  return v9;
}

__n128 sub_1AADD1B14(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1AADD1B38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1AADD1B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AADD1BF0(uint64_t a1)
{
  result = sub_1AADD1C18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AADD1C18()
{
  result = qword_1EB424C08;
  if (!qword_1EB424C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C08);
  }

  return result;
}

uint64_t static BuilderTuple<each A>._collectAxisMark(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = TupleTypeMetadata;
  v51 = a3 - 1;
  if (a3 == 1)
  {
    v12 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v15 = 0;
      v16 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_9;
      }

      v15 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != a3)
      {
LABEL_9:
        v21 = a3 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = TupleTypeMetadata;
  }

  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADD144C(a2, &v57);
  v56 = MEMORY[0x1E69E7CC0];
  v29 = v58;
  v30 = *(v26 + 16);
  v53 = v28;
  v30(v28, v10, v12);
  if (a3)
  {
    v44 = v26;
    v50 = a3;
    v46 = a6;

    v31 = swift_beginAccess();
    v32 = 0;
    v48 = a5 & 0xFFFFFFFFFFFFFFFELL;
    v49 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v45 = v12;
    v33 = (v12 + 32);
    v47 = xmmword_1AAF92AB0;
    v52 = v29;
    while (1)
    {
      v54 = &v43;
      v34 = *(v49 + 8 * v32);
      v35 = *(v48 + 8 * v32);
      v36 = *(v34 - 8);
      v37.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
      v39 = &v43 - v38;
      v40 = v50 == 1 ? 0 : *v33;
      (*(v36 + 16))(v39, &v53[v40], v34, v37);
      sub_1AACE44E0(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v47;
      *(inited + 32) = v32;
      *(inited + 72) = 0;
      v55[0] = v52;

      sub_1AADC85B8(inited);
      v58 = v55[0];

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      (*(v35 + 24))(v55, v39, &v57, v34, v35);
      sub_1AADC8D3C(v55[0]);
      v31 = (*(v36 + 8))(v39, v34);
      if (v51 == v32)
      {

        v12 = v45;
        a6 = v46;
        v26 = v44;
        goto LABEL_21;
      }

      v33 += 4;
      ++v32;
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    *a6 = v56;
    (*(v26 + 8))(v53, v12);
    return sub_1AADD1484(&v57);
  }

  return result;
}