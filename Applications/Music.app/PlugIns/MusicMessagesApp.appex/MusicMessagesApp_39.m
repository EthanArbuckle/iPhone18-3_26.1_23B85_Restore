uint64_t _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &unk_100644F40);
  if ((sub_1004DE5FC() & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 32) == *(a2 + 32);
    if (v5 && *(a1 + 40) == *(a2 + 40))
    {
      v6 = *(a1 + 48);
      v7 = *(a2 + 48);
      if (v6)
      {
        if (v7)
        {
          sub_100006F10(0, &qword_100641C80);
          v8 = v7;
          v9 = v6;
          v10 = sub_1004DE5FC();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(int a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6, void *a7, char a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      goto LABEL_17;
    }

    v10 = a3;
    v11 = a7;
    v12 = a4;
    v13 = a8;
    v14 = sub_1004DD43C();
    v16 = v15;
    if (v14 == sub_1004DD43C() && v16 == v17)
    {

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
    }

    else
    {
      v18 = sub_1004DF08C();

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    if (a7)
    {
      v19 = a4;
      v20 = a8;
      v21 = a7;
      v22 = sub_1004DD43C();
      v24 = v23;
      if (v22 == sub_1004DD43C() && v24 == v25)
      {

        a8 = v20;
        a4 = v19;
LABEL_20:
        v26 = a4 ^ a8 ^ 1;
        return v26 & 1;
      }

      v27 = sub_1004DF08C();

      a8 = v20;
      a4 = v19;
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a7)
  {
    goto LABEL_20;
  }

LABEL_17:
  v26 = 0;
  return v26 & 1;
}

BOOL _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = sub_1004DD43C();
  v9 = v8;
  if (v7 == sub_1004DD43C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1004DF08C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  if (v13)
  {
    if (!v14 || (*(a1 + 32) != *(a2 + 32) || v13 != v14) && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  sub_100006F10(0, &qword_100641C80);
  v17 = v16;
  v18 = v15;
  v19 = sub_1004DE5FC();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  return *(a1 + 72) == *(a2 + 72);
}

BOOL _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644F98);
    v6 = v5;
    v7 = v4;
    v8 = sub_1004DE5FC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644F98);
    v11 = v10;
    v12 = v9;
    v13 = sub_1004DE5FC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644F98);
    v16 = v15;
    v17 = v14;
    v18 = sub_1004DE5FC();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_21:
    v22 = *(a1 + 40);
    v23 = *(a2 + 40);
    if (v22)
    {
      return v23 && (*(a1 + 32) == *(a2 + 32) && v22 == v23 || (sub_1004DF08C() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL _s11MusicCoreUI12SymbolButtonC5BadgeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a3 != a5 || a4 != a6)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      sub_100006F10(0, &qword_100641C80);
      v10 = a2;
      v11 = a1;
      v12 = sub_1004DE5FC();

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_1003DAA08(void **a1, void **a2)
{
  v4 = sub_1004DE53C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_100004CB8(&qword_10063E4C8);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v48 = a1;
  v14 = *a1;
  v15 = a2;
  v16 = *a2;
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_24;
    }

    sub_100006F10(0, &unk_100644E00);
    v17 = v16;
    v18 = v14;
    v19 = sub_1004DE5FC();

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v16)
  {
    goto LABEL_24;
  }

  v47 = type metadata accessor for SymbolButton.Metrics(0);
  v20 = *(v47 + 20);
  v21 = *(v11 + 48);
  sub_1000108DC(v48 + v20, v13, &qword_100644A50);
  v22 = v15 + v20;
  v23 = v15;
  sub_1000108DC(v22, &v13[v21], &qword_100644A50);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v21], 1, v4) == 1)
    {
      sub_10001074C(v13, &qword_100644A50);
      goto LABEL_13;
    }

LABEL_11:
    sub_10001074C(v13, &qword_10063E4C8);
    goto LABEL_24;
  }

  sub_1000108DC(v13, v10, &qword_100644A50);
  if (v24(&v13[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v13[v21], v4);
  sub_1003DF6DC(&qword_10063E4D0, &type metadata accessor for UIView.Corner);
  v25 = sub_1004DD35C();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  v23 = v15;
  sub_10001074C(v13, &qword_100644A50);
  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  sub_100006F10(0, &unk_100644F40);
  v28 = v47;
  v27 = v48;
  if ((sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v29 = v28[8];
  v30 = *(v27 + v29);
  v31 = *(v23 + v29);
  v32 = 0;
  if (v30 == v31)
  {
    v33 = v28[9];
    v34 = v27 + v33;
    v35 = *(v27 + v33);
    v36 = (v23 + v33);
    if (v35 == *v36 && *(v34 + 8) == v36[1])
    {
      v32 = 0;
      v37 = v28[10];
      v38 = v27 + v37;
      v39 = *(v27 + v37);
      v40 = (v23 + v37);
      if (v39 == *v40 && *(v38 + 8) == v40[1])
      {
        v41 = v28[11];
        v42 = (v27 + v41);
        v43 = *(v27 + v41 + 16);
        v44 = (v23 + v41);
        v45 = *(v23 + v41 + 16);
        if (v43)
        {
          if ((v45 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_28:
          v32 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v27 + v28[12]), *(v23 + v28[12])), vceqq_f64(*(v27 + v28[12] + 16), *(v23 + v28[12] + 16)))));
          return v32 & 1;
        }

        if (v45)
        {
LABEL_24:
          v32 = 0;
          return v32 & 1;
        }

        v32 = 0;
        if (*v42 == *v44 && v42[1] == v44[1])
        {
          goto LABEL_28;
        }
      }
    }
  }

  return v32 & 1;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = sub_1004DE53C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v8 - 8);
  v10 = &v139 - v9;
  v11 = sub_100004CB8(&qword_10063E4C8);
  __chkstk_darwin(v11);
  v13 = (&v139 - v12);
  v14 = *(a1 + 80);
  v163[4] = *(a1 + 64);
  v163[5] = v14;
  v163[6] = *(a1 + 96);
  v164 = *(a1 + 112);
  v15 = *(a1 + 16);
  v163[0] = *a1;
  v163[1] = v15;
  v16 = *(a1 + 48);
  v163[2] = *(a1 + 32);
  v163[3] = v16;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[3];
  v165[2] = a2[2];
  v165[3] = v19;
  v165[0] = v17;
  v165[1] = v18;
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v166 = *(a2 + 14);
  v165[5] = v21;
  v165[6] = v22;
  v165[4] = v20;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v163, v165))
  {
    return 0;
  }

  v23 = *(a1 + 136);
  v24 = *(a1 + 168);
  v161[2] = *(a1 + 152);
  v161[3] = v24;
  v25 = *(a1 + 184);
  v161[0] = *(a1 + 120);
  v161[1] = v23;
  v26 = *(a2 + 136);
  v27 = *(a2 + 168);
  v162[2] = *(a2 + 152);
  v162[3] = v27;
  v162[4] = *(a2 + 184);
  v28 = *(a2 + 120);
  v162[1] = v26;
  v161[4] = v25;
  v162[0] = v28;
  if (!_s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v161, v162))
  {
    return 0;
  }

  v146 = v10;
  v147 = v11;
  v149 = v5;
  v150 = v13;
  v145 = v7;
  v148 = v4;
  v29 = *(a1 + 200);
  v30 = *(a1 + 208);
  v31 = *(a1 + 224);
  v32 = *(a2 + 25);
  v33 = *(a2 + 26);
  v35 = *(a2 + 27);
  v34 = *(a2 + 28);
  if (v30 == 1)
  {
    if (v33 == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_1003DD3C0(*(a2 + 25), *(a2 + 26));
    sub_1003DD3C0(v29, v30);
    sub_1002E009C(v29, v30);
    sub_1002E009C(v32, v33);
    return 0;
  }

  if (v33 == 1)
  {
    goto LABEL_7;
  }

  v36 = *(a2 + 25);
  v37 = *(a1 + 216);
  sub_1003DD3C0(v36, *(a2 + 26));
  sub_1003DD3C0(v29, v30);
  v38 = _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(v30, v37, v31, v33, v35, v34, *&v29, *&v36);

  sub_1002E009C(v29, v30);
  if (!v38)
  {
    return 0;
  }

LABEL_9:
  v40 = *(a1 + 232);
  v39 = *(a1 + 240);
  v41 = *(a1 + 248);
  v42 = *(a1 + 256);
  v44 = *(a1 + 264);
  v43 = *(a1 + 272);
  v46 = *(a2 + 29);
  v45 = *(a2 + 30);
  v48 = *(a2 + 31);
  v47 = *(a2 + 32);
  v49 = *(a2 + 33);
  v50 = *(a2 + 34);
  if (v40 == 1)
  {
    if (v46 == 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v51 = *(a2 + 29);
    v52 = *(a1 + 240);
    v53 = *(a2 + 30);
    v143 = *(a2 + 32);
    v144 = v45;
    v54 = v41;
    v55 = v48;
    v142 = v49;
    sub_1003DFC6C(v51, v53, v48);
    sub_1003DFC6C(v40, v52, v54);
    sub_1003B28AC(v40, v52, v54);
    sub_1003B28AC(v46, v144, v55);
    return 0;
  }

  if (v46 == 1)
  {
    goto LABEL_13;
  }

  v157[0] = *(a2 + 29);
  v157[1] = v45;
  v157[2] = v48;
  v158 = v47;
  v159 = v49;
  v160 = v50;
  v153[0] = v40;
  v153[1] = v39;
  v153[2] = v41;
  v154 = v42;
  v155 = v44;
  v156 = v43;
  v140 = v48;
  v141 = v39;
  v144 = v45;
  v57 = v41;
  sub_1003DFC6C(v46, v45, v48);
  sub_1003DFC6C(v40, v141, v57);
  LODWORD(v143) = _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v153, v157);

  sub_1003B28AC(v40, v141, v57);
  if ((v143 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v58 = *(a1 + 296);
  v59 = *(a2 + 37);
  if (v58)
  {
    v60 = v150;
    if (!v59)
    {
      return 0;
    }

    v61 = *(a1 + 280);
    v62 = *(a1 + 288);
    v63 = *(a2 + 35);
    v64 = *(a2 + 36);
    v65 = v59;
    LOBYTE(v152[0]) = v64 & 1;
    v66 = static UIView.Border.__derived_struct_equals(_:_:)(v61, v62 & 1, v58, v63, v64 & 1);

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = v150;
    if (v59)
    {
      return 0;
    }
  }

  v67 = type metadata accessor for SymbolButton.Configuration(0);
  v68 = *(v67 + 36);
  v69 = *(v147 + 48);
  sub_1000108DC(a1 + v68, v60, &qword_100644A50);
  sub_1000108DC(a2 + v68, v60 + v69, &qword_100644A50);
  v70 = v148;
  v71 = *(v149 + 48);
  if (v71(v60, 1, v148) == 1)
  {
    if (v71(v60 + v69, 1, v70) == 1)
    {
      sub_10001074C(v60, &qword_100644A50);
      goto LABEL_29;
    }

LABEL_27:
    sub_10001074C(v60, &qword_10063E4C8);
    return 0;
  }

  v72 = v146;
  sub_1000108DC(v60, v146, &qword_100644A50);
  if (v71(v60 + v69, 1, v70) == 1)
  {
    (*(v149 + 8))(v72, v70);
    goto LABEL_27;
  }

  v150 = v67;
  v73 = v149;
  v74 = v60 + v69;
  v75 = v145;
  (*(v149 + 32))(v145, v74, v70);
  sub_1003DF6DC(&qword_10063E4D0, &type metadata accessor for UIView.Corner);
  v76 = sub_1004DD35C();
  v77 = *(v73 + 8);
  v77(v75, v70);
  v77(v72, v70);
  v67 = v150;
  sub_10001074C(v60, &qword_100644A50);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v150 = v67;
  v78 = *(v67 + 40);
  v80 = *(a1 + v78);
  v79 = *(a1 + v78 + 8);
  v82 = *(a1 + v78 + 16);
  v81 = *(a1 + v78 + 24);
  v84 = *(a1 + v78 + 32);
  v83 = *(a1 + v78 + 40);
  v85 = *(a1 + v78 + 48);
  v86 = a2 + v78;
  v88 = *v86;
  v87 = *(v86 + 8);
  v90 = *(v86 + 16);
  v89 = *(v86 + 24);
  v92 = *(v86 + 32);
  v91 = *(v86 + 40);
  v93 = *(v86 + 48);
  if (!v80)
  {
    if (!v88)
    {
      v142 = *(v86 + 16);
      v143 = v87;
      v144 = v89;
      v139 = v92;
      v140 = v91;
      v108 = v83;
      v109 = v85;
      sub_1002EA664(0, v79, v82, v81, v84, v83, v85);
      sub_1002EA664(0, v143, v142, v144, v139, v140, v93);
      sub_1002E005C(0, v79, v82, v81, v84, v108, v109);
      goto LABEL_36;
    }

LABEL_34:
    v100 = v79;
    v146 = v79;
    v147 = v82;
    v101 = v87;
    v102 = v82;
    v103 = v90;
    v104 = v89;
    v148 = v84;
    v149 = v83;
    v105 = v92;
    v106 = v84;
    v107 = v91;
    v145 = v85;
    sub_1002EA664(v80, v100, v102, v81, v106, v83, v85);
    sub_1002EA664(v88, v101, v103, v104, v105, v107, v93);
    sub_1002E005C(v80, v146, v147, v81, v148, v149, v145);
    sub_1002E005C(v88, v101, v103, v104, v105, v107, v93);
    return 0;
  }

  if (!v88)
  {
    goto LABEL_34;
  }

  v152[0] = *v86;
  v152[1] = v87;
  v152[2] = v90;
  v152[3] = v89;
  v152[4] = v92;
  v152[5] = v91;
  v152[6] = v93;
  v151[0] = v80;
  v151[1] = v79;
  v151[2] = v82;
  v151[3] = v81;
  v151[4] = v84;
  v151[5] = v83;
  v151[6] = v85;
  v146 = v79;
  v147 = v82;
  v142 = v90;
  v143 = v87;
  v94 = v79;
  v95 = v82;
  v141 = v81;
  v144 = v89;
  v145 = v85;
  v148 = v84;
  v149 = v83;
  v96 = v92;
  v97 = v91;
  sub_1002EA664(v80, v94, v95, v81, v84, v83, v85);
  v99 = v142;
  v98 = v143;
  sub_1002EA664(v88, v143, v142, v144, v96, v97, v93);
  LODWORD(v140) = _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v151, v152);
  sub_1002E005C(v88, v98, v99, v144, v96, v97, v93);
  sub_1002E005C(v80, v146, v147, v141, v148, v149, v145);
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v110 = v150;
  v111 = v150[11];
  v112 = (a1 + v111);
  v113 = *(a1 + v111 + 16);
  v114 = (a2 + v111);
  v115 = v114[2];
  if (v113 == 1)
  {
    if (v115 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v115 == 1)
    {
      return 0;
    }

    result = 0;
    v124 = *v112;
    v125 = *v114;
    if (*v112 != *v114)
    {
      return result;
    }

    v126 = v112[1];
    v127 = v114[1];
    if (*&v126 != *&v127)
    {
      return result;
    }

    if (v113)
    {
      if (!v115)
      {
        return 0;
      }

      sub_100006F10(0, &qword_100641C80);
      sub_1003DD408(v125, v127, v115);
      sub_1003DD408(v124, v126, v113);
      v128 = sub_1004DE5FC();
      sub_1002EA654(v124, v126, v113);
      sub_1002EA654(v125, v127, v115);
      v110 = v150;
      if ((v128 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v110 = v150;
      if (v115)
      {
        return 0;
      }
    }
  }

  if (*(a1 + v110[12]) != *(a2 + v110[12]))
  {
    return 0;
  }

  result = 0;
  v116 = v110[13];
  v117 = a1 + v116;
  v118 = *(a1 + v116);
  v119 = (a2 + v116);
  if (v118 == *v119 && *(v117 + 8) == v119[1])
  {
    v120 = v150[14];
    v121 = (a1 + v120);
    v122 = *(a1 + v120 + 16);
    v123 = a2 + v120;
    if (v122)
    {
      if ((*(v123 + 16) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_56;
    }

    if (*(v123 + 16))
    {
      return 0;
    }

    result = 0;
    if (*v121 == *v123 && v121[1] == *(v123 + 8))
    {
LABEL_56:
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v150[15]), *(a2 + v150[15])), vceqq_f64(*(a1 + v150[15] + 16), *(a2 + v150[15] + 16))))))
      {
        v129 = v150[16];
        if ((_s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v129), *(a1 + v129 + 8), *(a1 + v129 + 16), *(a1 + v129 + 24), *(a2 + v129), *(a2 + v129 + 8), *(a2 + v129 + 16), *(a2 + v129 + 24)) & 1) != 0 && *(a1 + v150[17]) == *(a2 + v150[17]))
        {
          v130 = v150[18];
          v131 = *(a1 + v130);
          v132 = *(a2 + v130);
          if (v131)
          {
            if (v132)
            {
              sub_100006F10(0, &qword_100641C80);
              v133 = v132;
              v134 = v131;
              v135 = sub_1004DE5FC();

              if (v135)
              {
LABEL_64:
                v136 = v150[19];
                v137 = *(a1 + v136);
                v138 = *(a2 + v136);
                if (v137 == 2)
                {
                  if (v138 == 2)
                  {
                    return 1;
                  }
                }

                else if (v138 != 2 && ((v138 ^ v137) & 1) == 0)
                {
                  return 1;
                }
              }
            }
          }

          else if (!v132)
          {
            goto LABEL_64;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

UIFontTextStyle sub_1003DBA90@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_1005272E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  return UIFontTextStyleSubheadline;
}

char *sub_1003DBAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v5 - 8);
  v58 = &v57 - v6;
  v59 = type metadata accessor for SymbolButton.Metrics(0);
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
  *v11 = 0;
  v11[1] = 0;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize] = vdupq_n_s64(0x4040000000000000uLL);
  v12 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v68 = 1;
  v15 = type metadata accessor for SymbolButton.MaterialView();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v67.receiver = objc_allocWithZone(v15);
  v67.super_class = v15;
  v16 = objc_msgSendSuper2(&v67, "initWithEffect:", 0);
  sub_1003D691C(&v68);

  *&v4[v14] = v16;
  v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = *&static SymbolButton.Background.clear;
  v20 = qword_100673C58;
  v19 = qword_100673C60;
  v21 = qword_100673C68;
  v22 = type metadata accessor for SymbolButton.BackgroundView();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v24 = 0;
  *(v24 + 1) = 0x3FF0000000000000;
  v66.receiver = v23;
  v66.super_class = v22;
  v25 = v20;

  v26 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003D6D98(v20, v18, v19, v21);
  sub_1003D6F58();

  *&v4[v17] = v26;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
  (*(v7 + 56))(&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics], 1, 1, v59);
  v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] = 1;
  v27 = v62;
  sub_1003DF60C(v62, &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration], type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v28 = *v11;
  v29 = v60;
  v30 = v61;
  *v11 = v60;
  v11[1] = v30;
  sub_10000DE64(v29);
  sub_10000DE74(v28);
  v31 = type metadata accessor for SymbolButton(0);
  v65.receiver = v4;
  v65.super_class = v31;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  v34 = *&v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v35 = v32;
  [v34 setAutoresizingMask:18];
  v36 = *&v32[v33];
  [v35 bounds];
  [v36 setFrame:?];

  [v35 addSubview:*&v32[v33]];
  v37 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  [*&v32[v33] addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView]];
  v38 = [*&v35[v37] contentView];
  v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  [v38 addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView]];

  v40 = *&v35[v39];
  type metadata accessor for SymbolButton.Label();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  if (([v42 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
  {
    v43 = &v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    v44 = type metadata accessor for SymbolButton.Configuration(0);
    v45 = v43[*(v44 + 76)];
    if (v45 == 2)
    {
      v46 = &v43[*(v44 + 36)];
      v47 = v58;
      sub_1000108DC(v46, v58, &qword_100644A50);
      v48 = sub_1004DE53C();
      LOBYTE(v45) = (*(*(v48 - 8) + 48))(v47, 1, v48) != 1;
      sub_10001074C(v47, &qword_100644A50);
    }

    [v42 setClipsToBounds:v45 & 1];
  }

  sub_1003D4C48(v27);
  v49 = v63;
  sub_1003D4740(v63);
  sub_1003D5A50();
  sub_1003DD438(v49, type metadata accessor for SymbolButton.Metrics);
  sub_100006F10(0, &qword_10063E980);
  *(swift_allocObject() + 16) = ObjectType;
  v50 = sub_1004DE62C();
  [v35 addAction:v50 forControlEvents:64];

  v51 = UIAccessibilityTraitButton;
  v52 = v35;
  v53 = [v52 accessibilityTraits];
  if ((v51 & ~v53) != 0)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  [v52 setAccessibilityTraits:v54 | v53];

  v55 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v52];
  [v52 addInteraction:v55];

  sub_1003DD438(v27, type metadata accessor for SymbolButton.Configuration);
  return v52;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    v9 = a2[3];
LABEL_9:
    v10 = v9 == 0;
    return !v10;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a2[3];

  if (!v7)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = a2[1];
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v12 = sub_1004DF08C();

        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    return 1;
  }

  if (v8)
  {
    return 1;
  }

LABEL_18:
  v13 = v3;
  v14 = v7;
  v15 = sub_1004DD43C();
  v17 = v16;
  if (v15 == sub_1004DD43C() && v17 == v18)
  {

    goto LABEL_22;
  }

  v19 = sub_1004DF08C();

  if ((v19 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v9 = a1[3];
  if (!a2[3])
  {
    goto LABEL_9;
  }

  if (!v9 || a1[6] != a2[6])
  {
    return 1;
  }

  v10 = a1[7] == a2[7];
  return !v10;
}

uint64_t sub_1003DC41C(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    if (*(a2 + 16))
    {
      goto LABEL_29;
    }

    v10 = 0;
LABEL_25:
    v19 = v10 != 0;
    return v19 & 1;
  }

  v5 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a2 + 16);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v9 = *(a2 + 8);
  if (v6)
  {
    if (v9)
    {
      if (*&v7 == *a2 && v6 == v9)
      {
      }

      else
      {
        v11 = sub_1004DF08C();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_15:
  v12 = v3;
  v13 = v8;
  v14 = sub_1004DD43C();
  v16 = v15;
  if (v14 == sub_1004DD43C() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1004DF08C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  v19 = 1;
  if (v10 && a1[3] == *(a2 + 24))
  {
    v20 = *(a2 + 56);
    v21 = v5;
    v22 = v20;
    v23 = v22;
    if (v5)
    {
      if (v20)
      {
        sub_100006F10(0, &qword_100641C80);
        v24 = sub_1004DE5FC();

        v19 = v24 ^ 1;
        return v19 & 1;
      }
    }

    else
    {
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

LABEL_29:
    v19 = 1;
  }

  return v19 & 1;
}

void _s11MusicCoreUI12SymbolButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize) = vdupq_n_s64(0x4040000000000000uLL);
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v24 = 1;
  v8 = type metadata accessor for SymbolButton.MaterialView();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v23.receiver = objc_allocWithZone(v8);
  v23.super_class = v8;
  v9 = objc_msgSendSuper2(&v23, "initWithEffect:", 0);
  sub_1003D691C(&v24);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *&static SymbolButton.Background.clear;
  v13 = qword_100673C58;
  v12 = qword_100673C60;
  v14 = qword_100673C68;
  v15 = type metadata accessor for SymbolButton.BackgroundView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v17 = 0;
  *(v17 + 1) = 0x3FF0000000000000;
  v22.receiver = v16;
  v22.super_class = v15;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003D6D98(v13, v11, v12, v14);
  sub_1003D6F58();

  *(v1 + v10) = v19;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView) = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  v21 = type metadata accessor for SymbolButton.Metrics(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_1003DC954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DC9B8()
{

  return swift_deallocObject();
}

uint64_t sub_1003DC9F0()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v27 = v0;
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v26 = v4;
  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_1004DE53C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v27 + v15;

  v19 = *(v27 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

void sub_1003DCD70()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1003CD428(v0 + v4, (v0 + v5), v7, v8);
}

uint64_t sub_1003DCE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003DCE40()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v25 = *(*(v1 - 1) + 80);
  v2 = (v25 + 24) & ~v25;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = *(v0 + v2 + 208);
  if (v5 != 1)
  {
  }

  v6 = *(v4 + 232);
  if (v6 != 1)
  {
  }

  v7 = v3 + v25;

  v8 = v1[9];
  v9 = sub_1004DE53C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v7 + v2;
  v13 = (v4 + v1[10]);
  if (*v13)
  {
  }

  v14 = v12 & ~v25;
  v15 = *(v4 + v1[11] + 16);
  if (v15 != 1)
  {
  }

  v16 = v4 + v1[16];

  v17 = v0 + v14;

  v18 = *(v0 + v14 + 208);
  if (v18 != 1)
  {
  }

  v19 = *(v17 + 232);
  if (v19 != 1)
  {
  }

  v20 = v1[9];
  if (!v11(v17 + v20, 1, v9))
  {
    (*(v10 + 8))(v17 + v20, v9);
  }

  v21 = (v17 + v1[10]);
  if (*v21)
  {
  }

  v22 = *(v17 + v1[11] + 16);
  if (v22 != 1)
  {
  }

  v23 = v17 + v1[16];

  return swift_deallocObject();
}

uint64_t sub_1003DD1D4()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  return sub_1003CE180(v9, v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_1003DD280()
{

  return swift_deallocObject();
}

void sub_1003DD3C0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {

    v3 = a2;
  }
}

id sub_1003DD408(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_1003DD438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DD498()
{

  return swift_deallocObject();
}

uint64_t sub_1003DD4E4(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return !*(a2 + 16);
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a2 + 16);

  if (!v7)
  {
    if (!v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a2 + 8);
  if (v5)
  {
    if (v8)
    {
      if (*&v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v9 = sub_1004DF08C();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:
  v10 = v3;
  v11 = v7;
  v12 = sub_1004DD43C();
  v14 = v13;
  if (v12 == sub_1004DD43C() && v14 == v15)
  {

    goto LABEL_19;
  }

  v16 = sub_1004DF08C();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v17 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    return !v17;
  }

  result = 0;
  if (v17 && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  return result;
}

id _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0()
{
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  swift_beginAccess();
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = objc_opt_self();
  aBlock[4] = sub_1003DF554;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D9EC4;
  aBlock[3] = &unk_1005F37F0;
  v6 = _Block_copy(aBlock);
  sub_10000DE64(v2);
  sub_10000DE64(v2);
  v7 = v0;

  v8 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  [v8 setPreferredMenuElementOrder:2];
  sub_10000DE74(v2);
  return v8;
}

id _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(void *a1)
{
  v3 = sub_100004CB8(&unk_100644F60);
  __chkstk_darwin(v3 - 8);
  v5 = &v93[-v4];
  v6 = sub_1004DE4EC();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1004DE53C();
  v9 = *(v8 - 8);
  v108 = v8;
  v109 = v9;
  __chkstk_darwin(v8);
  v99 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100004CB8(&qword_10063E4C8);
  __chkstk_darwin(v11);
  v13 = &v93[-v12];
  v14 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v14 - 8);
  v16 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v93[-v18];
  __chkstk_darwin(v20);
  v22 = &v93[-v21];
  v110 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v110);
  v103 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v93[-v25];
  __chkstk_darwin(v27);
  v29 = &v93[-v28];
  v30 = sub_1004D978C();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v104 = &v93[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v105 = &v93[-v34];
  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v36 = result;
  if (![v1 isUserInteractionEnabled])
  {

    return 0;
  }

  v98 = v36;
  v96 = v5;
  v97 = v1;
  v37 = v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v37, v29, type metadata accessor for SymbolButton.Configuration);
  v38 = *(v29 + 29);
  if (v38 == 1)
  {
    sub_1003DD438(v29, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    v39 = v38;
    sub_1003DD438(v29, type metadata accessor for SymbolButton.Configuration);
    if (v38)
    {

      goto LABEL_10;
    }
  }

  if (*(v37 + 208) == 1 && !*(v37 + *(v110 + 40)))
  {
    goto LABEL_17;
  }

LABEL_10:
  v40 = [v97 traitCollection];
  v41 = [v40 userInterfaceIdiom];

  v95 = v37;
  if (v41 != 6)
  {
LABEL_19:
    v59 = objc_allocWithZone(UITargetedPreview);
    v60 = [v59 initWithView:v98];
    v61 = [v60 parameters];
    v54 = &selRef_setShadowPathIsBounds_;
    v51 = v97;
    [v97 bounds];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    sub_1003DF60C(v37, v26, type metadata accessor for SymbolButton.Configuration);
    if ((*(v109 + 48))(&v26[*(v110 + 36)], 1, v108))
    {
      sub_1003DD438(v26, type metadata accessor for SymbolButton.Configuration);
      sub_1004D974C();
      v71 = v70;
    }

    else
    {
      v72 = v100;
      sub_1004DE50C();
      sub_1003DD438(v26, type metadata accessor for SymbolButton.Configuration);
      [v51 bounds];
      sub_1004DE4DC();
      v71 = v73;
      (*(v101 + 8))(v72, v102);
    }

    v49 = v105;
    v48 = v106;
    v53 = v104;
    v74 = [objc_opt_self() bezierPathWithRoundedRect:v63 cornerRadius:{v65, v67, v69, v71}];
    [v61 setShadowPath:v74];

    *v49 = v60;
    v50 = &enum case for UIPointerEffect.lift(_:);
    v52 = v103;
    v37 = v95;
    goto LABEL_23;
  }

  sub_1000108DC(v37 + *(v110 + 36), v22, &qword_100644A50);
  sub_1004DE52C();
  v42 = v108;
  v43 = v109;
  (*(v109 + 56))(v19, 0, 1, v108);
  v44 = *(v11 + 48);
  sub_1000108DC(v22, v13, &qword_100644A50);
  sub_1000108DC(v19, &v13[v44], &qword_100644A50);
  v45 = *(v43 + 48);
  if (v45(v13, 1, v42) == 1)
  {
    sub_10001074C(v19, &qword_100644A50);
    sub_10001074C(v22, &qword_100644A50);
    if (v45(&v13[v44], 1, v42) == 1)
    {
      sub_10001074C(v13, &qword_100644A50);
      v37 = v95;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_1000108DC(v13, v16, &qword_100644A50);
  if (v45(&v13[v44], 1, v42) == 1)
  {
    sub_10001074C(v19, &qword_100644A50);
    sub_10001074C(v22, &qword_100644A50);
    (*(v109 + 8))(v16, v42);
LABEL_16:
    sub_10001074C(v13, &qword_10063E4C8);
    v37 = v95;
    goto LABEL_17;
  }

  v55 = v109;
  v56 = &v13[v44];
  v57 = v99;
  (*(v109 + 32))(v99, v56, v42);
  sub_1003DF6DC(&qword_10063E4D0, &type metadata accessor for UIView.Corner);
  v94 = sub_1004DD35C();
  v58 = *(v55 + 8);
  v58(v57, v42);
  sub_10001074C(v19, &qword_100644A50);
  sub_10001074C(v22, &qword_100644A50);
  v58(v16, v42);
  sub_10001074C(v13, &qword_100644A50);
  v37 = v95;
  if (v94)
  {
    goto LABEL_19;
  }

LABEL_17:
  v46 = objc_allocWithZone(UITargetedPreview);
  v47 = [v46 initWithView:v98];
  v49 = v105;
  v48 = v106;
  *v105 = v47;
  v50 = &enum case for UIPointerEffect.highlight(_:);
  v51 = v97;
  v52 = v103;
  v53 = v104;
  v54 = &selRef_setShadowPathIsBounds_;
LABEL_23:
  v75 = v107;
  (*(v48 + 104))(v49, *v50, v107);
  (*(v48 + 16))(v53, v49, v75);
  [v51 v54[150]];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_1003DF60C(v37, v52, type metadata accessor for SymbolButton.Configuration);
  if ((*(v109 + 48))(v52 + *(v110 + 36), 1, v108))
  {
    sub_1003DD438(v52, type metadata accessor for SymbolButton.Configuration);
    sub_1004D974C();
    v85 = v84;
  }

  else
  {
    v86 = v100;
    sub_1004DE50C();
    sub_1003DD438(v52, type metadata accessor for SymbolButton.Configuration);
    [v51 v54[150]];
    sub_1004DE4DC();
    v85 = v87;
    (*(v101 + 8))(v86, v102);
  }

  sub_100006F10(0, &qword_10063E968);
  v88 = v96;
  *v96 = v77;
  v88[1] = v79;
  v88[2] = v81;
  v88[3] = v83;
  v88[4] = v85;
  v89 = enum case for UIPointerShape.roundedRect(_:);
  v90 = sub_1004D975C();
  v91 = *(v90 - 8);
  (*(v91 + 104))(v88, v89, v90);
  (*(v91 + 56))(v88, 0, 1, v90);
  v92 = sub_1004DDFCC();

  (*(v48 + 8))(v49, v75);
  return v92;
}

unint64_t sub_1003DE3DC(uint64_t a1)
{
  result = sub_1003DE404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE404()
{
  result = qword_100644AB8;
  if (!qword_100644AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AB8);
  }

  return result;
}

unint64_t sub_1003DE458(uint64_t a1)
{
  result = sub_1003DE480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE480()
{
  result = qword_100644AC0;
  if (!qword_100644AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AC0);
  }

  return result;
}

unint64_t sub_1003DE4D4(uint64_t a1)
{
  result = sub_1003DE4FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE4FC()
{
  result = qword_100644AC8;
  if (!qword_100644AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AC8);
  }

  return result;
}

unint64_t sub_1003DE554()
{
  result = qword_100644AD0;
  if (!qword_100644AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AD0);
  }

  return result;
}

unint64_t sub_1003DE5A8(uint64_t a1)
{
  result = sub_1003DE5D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE5D0()
{
  result = qword_100644AD8;
  if (!qword_100644AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AD8);
  }

  return result;
}

unint64_t sub_1003DE624(uint64_t a1)
{
  result = sub_1003DE64C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE64C()
{
  result = qword_100644AE0;
  if (!qword_100644AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AE0);
  }

  return result;
}

void sub_1003DE6A8()
{
  type metadata accessor for SymbolButton.Configuration(319);
  if (v0 <= 0x3F)
  {
    sub_1003DEC44(319, &qword_100644B30, type metadata accessor for SymbolButton.Metrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for SymbolButton.Animation(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SymbolButton.Animation(uint64_t result, int a2, int a3)
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

uint64_t sub_1003DE888(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100644A50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003DE958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100644A50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003DEA08()
{
  sub_10004BEAC(319, &qword_100644BA0);
  if (v0 <= 0x3F)
  {
    sub_10004BEAC(319, &qword_100644BA8);
    if (v1 <= 0x3F)
    {
      sub_10004BEAC(319, &unk_100644BB0);
      if (v2 <= 0x3F)
      {
        sub_1003DEC44(319, &qword_10063E448, &type metadata accessor for UIView.Corner);
        if (v3 <= 0x3F)
        {
          sub_10004BEAC(319, &qword_100644BC0);
          if (v4 <= 0x3F)
          {
            sub_10004BEAC(319, &qword_100644BC8);
            if (v5 <= 0x3F)
            {
              _s3__C6CGSizeVMa_1(319);
              if (v6 <= 0x3F)
              {
                sub_1003DEC44(319, &qword_100644BD0, _s3__C6CGSizeVMa_1);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for NSDirectionalEdgeInsets(319);
                  if (v8 <= 0x3F)
                  {
                    sub_1001DFFB0(319, &unk_100644BD8, &qword_100641C80);
                    if (v9 <= 0x3F)
                    {
                      sub_10004BEAC(319, &unk_100644BE8);
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

void sub_1003DEC44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003DEC98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1003DECF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1003DED5C(uint64_t a1, __int128 *a2)
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

uint64_t sub_1003DED88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003DEDD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003DEE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1003DEE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003DEEF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003DEF54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003DF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100644A50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1003DF19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&qword_100644A50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1003DF264()
{
  sub_1001DFFB0(319, &qword_100644DF8, &unk_100644E00);
  if (v0 <= 0x3F)
  {
    sub_1003DEC44(319, &qword_10063E448, &type metadata accessor for UIView.Corner);
    if (v1 <= 0x3F)
    {
      sub_100006F10(319, &qword_100643860);
      if (v2 <= 0x3F)
      {
        sub_100006F10(319, &unk_100644E10);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIOffset(319);
          if (v4 <= 0x3F)
          {
            _s3__C6CGSizeVMa_1(319);
            if (v5 <= 0x3F)
            {
              sub_1003DEC44(319, &qword_100644BD0, _s3__C6CGSizeVMa_1);
              if (v6 <= 0x3F)
              {
                type metadata accessor for NSDirectionalEdgeInsets(319);
                if (v7 <= 0x3F)
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

unint64_t sub_1003DF3F4()
{
  result = qword_100644E60;
  if (!qword_100644E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644E60);
  }

  return result;
}

unint64_t sub_1003DF44C()
{
  result = qword_100644E98;
  if (!qword_100644E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644E98);
  }

  return result;
}

unint64_t sub_1003DF4A4()
{
  result = qword_100644ED0;
  if (!qword_100644ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644ED0);
  }

  return result;
}

unint64_t sub_1003DF4FC()
{
  result = qword_100644F08;
  if (!qword_100644F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644F08);
  }

  return result;
}

uint64_t sub_1003DF584()
{

  return swift_deallocObject();
}

uint64_t sub_1003DF60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DF674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DF6DC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1003DF724(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;

    return sub_10000DE64(a4);
  }

  return result;
}

void *sub_1003DF76C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_10000DE74(a4);
  }

  return result;
}

uint64_t sub_1003DF7B4()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v26 = v0;
  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_1004DE53C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v26 + v15;

  v19 = *(v26 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

uint64_t sub_1003DFB30()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003CE980(v6, v0 + v4, (v0 + v5), v7);
}

uint64_t sub_1003DFBF4()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_1003DFC48()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_1003DFC6C(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v5 = result;

    v6 = v5;
    v7 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_1003DFCCC()
{

  return swift_deallocObject();
}

__n128 sub_1003DFD38(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003DFD5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003DFDB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003DFE48()
{
  result = qword_100644FB8;
  if (!qword_100644FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644FB8);
  }

  return result;
}

uint64_t TextArray.Element.init(text:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t TextArray.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_1003E1190(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v52 = v5;
    v54 = v6;
    v8 = (v5 + 56);
    v9 = v6;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 8);
      v13 = *v8;
      sub_100051E00(v10, v11, v12);
      v64 = v7;
      v14 = v7[2];
      v15 = v7[3];

      if (v14 >= v15 >> 1)
      {
        sub_1003E1190((v15 > 1), v14 + 1, 1);
        v7 = v64;
      }

      v7[2] = v14 + 1;
      v16 = &v7[4 * v14];
      v16[4] = v10;
      v16[5] = v11;
      *(v16 + 48) = v12;
      v16[7] = v13;
      v8 += 6;
      --v9;
    }

    while (v9);
    v6 = v54;
    v4 = a3;
    v5 = v52;
  }

  v64 = a2;
  v65 = v4;
  sub_1002E6780();

  v17 = sub_1004DB34C();
  v19 = v18;
  v61[0] = v17;
  v61[1] = v18;
  v21 = v20 & 1;
  v62 = v20 & 1;
  v63 = v22;
  Array<A>.joined(separator:)(v61, v7, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, &v64);

  sub_100051E10(v17, v19, v21);

  v24 = 0;
  v25 = v64;
  v55 = v65;
  v53 = v66;
  v26 = v67;
  v27 = v5 + 72;
  v28 = _swiftEmptyArrayStorage;
LABEL_8:
  v29 = (v27 + 48 * v24);
  while (1)
  {
    if (v6 == v24)
    {
      v64 = v28;
      sub_100004CB8(&qword_10063EA98);
      sub_1002FEB24();
      v38 = sub_1004DD30C();
      v40 = v39;

      v64 = v38;
      v65 = v40;
      v41 = sub_1004DB34C();
      v43 = v42;
      v45 = v44;
      v46 = sub_1004DB25C();
      v48 = v47;
      v57 = v49;
      v60 = v50;
      sub_100051E10(v25, v55, v53);

      sub_100051E10(v41, v43, v45 & 1);

      *a4 = v46;
      *(a4 + 8) = v48;
      *(a4 + 16) = v57 & 1;
      *(a4 + 24) = v60;
      return result;
    }

    if (v24 >= v6)
    {
      break;
    }

    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_20;
    }

    v32 = *v29;
    v29 += 6;
    v31 = v32;
    ++v24;
    if (v32)
    {
      v51 = v26;
      v33 = *(v29 - 7);

      result = swift_isUniquelyReferenced_nonNull_native();
      v34 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1003E05CC(0, v28[2] + 1, 1, v28);
        v28 = result;
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        result = sub_1003E05CC((v35 > 1), v36 + 1, 1, v28);
        v28 = result;
      }

      v28[2] = v36 + 1;
      v37 = &v28[2 * v36];
      v37[4] = v33;
      v37[5] = v31;
      v24 = v30;
      v6 = v34;
      v26 = v51;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t TextArray.Element.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1002E6780();

  result = sub_1004DB34C();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_1003E0360@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004DB27C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1003E03BC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100527310;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

size_t sub_1003E03DC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_10063DF68);
  v10 = *(sub_100004CB8(&qword_10063DF60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_10063DF60) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1003E05CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006432D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0700(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1003E082C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1003E0A08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100644FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100644FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100644FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003E0D58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100644FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100643390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003E0E8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100644FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100644FD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0FC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F4F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1003E10D0(size_t a1, int64_t a2, char a3)
{
  result = sub_10038E87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E10F0(char *a1, int64_t a2, char a3)
{
  result = sub_10038EA6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1110(char *a1, int64_t a2, char a3)
{
  result = sub_10038EB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1130(char *a1, int64_t a2, char a3)
{
  result = sub_10038EC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1150(char *a1, int64_t a2, char a3)
{
  result = sub_10038ED84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1003E1170(size_t a1, int64_t a2, char a3)
{
  result = sub_10038EE90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1190(char *a1, int64_t a2, char a3)
{
  result = sub_10038F15C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1003E1204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DAACC();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t sub_1003E12FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004DAACC();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t Text.with<A>(style:configurator:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v20 = a2;
  v21 = a4;
  v6 = a1;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1003E3BE8(v11, v12, v10 & 1, v13, v6);
  v16 = v15;
  v18 = v17;
  v20(v14);
  sub_1003E23F4(v9, v6, a3, a5, v21);
  sub_100051E10(v14, v16, v18 & 1);

  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_1003E153C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *(&v83 + 1) = a2;
  v84 = a4;
  v79 = a3;
  *&v83 = a1;
  v80 = a6;
  v82 = sub_100004CB8(&qword_100645088);
  __chkstk_darwin(v82);
  v8 = &v70[-v7];
  v77 = sub_100004CB8(&qword_100645090);
  __chkstk_darwin(v77);
  v75 = &v70[-v9];
  v10 = sub_100004CB8(&qword_100645098);
  __chkstk_darwin(v10);
  v12 = &v70[-v11];
  v76 = sub_100004CB8(&qword_100645060);
  __chkstk_darwin(v76);
  v73 = &v70[-v13];
  v81 = sub_100004CB8(&qword_100645020);
  __chkstk_darwin(v81);
  v78 = &v70[-v14];
  v15 = sub_100004CB8(&qword_100645070);
  __chkstk_darwin(v15);
  v17 = &v70[-v16];
  if (a5 > 5u)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        v74 = v8;
        if (a5 == 8)
        {
          v18 = sub_1004DB87C();
          KeyPath = swift_getKeyPath();
          v20 = swift_getKeyPath();
          LOBYTE(v110) = v79 & 1;
          LOBYTE(v104) = 0;
          v118 = v83;
          LOBYTE(v119) = v79 & 1;
          *(&v119 + 1) = v84;
          *&v120 = KeyPath;
          *(&v120 + 1) = v18;
          *&v121 = v20;
          *(&v121 + 1) = 1;
          LOBYTE(v122) = 0;
          v124 = v83;
          LOBYTE(v125) = v79 & 1;
          *(&v125 + 1) = v84;
          *&v126 = KeyPath;
          *(&v126 + 1) = v18;
          *&v127 = v20;
          *(&v127 + 1) = 1;
          LOBYTE(v128) = 0;
          sub_100051E00(v83, *(&v83 + 1), v79 & 1);

          sub_1000108DC(&v118, &v85, &qword_100645040);
          sub_10001074C(&v124, &qword_100645040);
          v21 = v121;
          v22 = v74;
          *(v74 + 2) = v120;
          *(v22 + 48) = v21;
          *(v22 + 64) = v122;
          v23 = v119;
          *v22 = v118;
          *(v22 + 16) = v23;
          swift_storeEnumTagMultiPayload();
          sub_100004CB8(&qword_100645040);
          sub_1003E42C8();
          sub_1003E43E0();
          return sub_1004DAADC();
        }

        goto LABEL_11;
      }

      v55 = sub_1004DB87C();
      v74 = v55;
      v56 = swift_getKeyPath();
      v57 = v83;
      *v12 = v83;
      v58 = v79 & 1;
      v12[16] = v58;
      v79 = v58;
      *(v12 + 3) = v84;
      *(v12 + 4) = v56;
      v72 = v56;
      *(v12 + 5) = v55;
      swift_storeEnumTagMultiPayload();
      sub_100051E00(v57, *(&v57 + 1), v58);

      sub_100051E00(v57, *(&v57 + 1), v58);

      sub_100004CB8(&qword_100642060);
      sub_1003E45B4();
      sub_1003709CC();
      v59 = v73;
      sub_1004DAADC();
      sub_1000108DC(v59, v75, &qword_100645060);
      swift_storeEnumTagMultiPayload();
      sub_100004CB8(&qword_100645030);
      sub_1003E4354();
      sub_1003E4528();
      v60 = v78;
      sub_1004DAADC();
      sub_10001074C(v59, &qword_100645060);
      sub_1000108DC(v60, v8, &qword_100645020);
      swift_storeEnumTagMultiPayload();
      sub_100004CB8(&qword_100645040);
      sub_1003E42C8();
      sub_1003E43E0();
      sub_1004DAADC();
      sub_100051E10(v83, *(&v83 + 1), v79);

      v36 = v60;
      v37 = &qword_100645020;
      return sub_10001074C(v36, v37);
    }

LABEL_9:
    v38 = sub_1004DB8AC();
    v74 = v8;
    v39 = v38;
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v79 & 1;
    LOBYTE(v85) = v79 & 1;
    LOBYTE(v110) = 0;
    v43 = v83;
    v91 = v83;
    LOBYTE(v92) = v79 & 1;
    v44 = v84;
    *(&v92 + 1) = v84;
    *&v93 = v40;
    *(&v93 + 1) = v39;
    *&v94 = v41;
    *(&v94 + 1) = 2;
    v95 = 0;
    v45 = swift_getKeyPath();
    v120 = v93;
    v121 = v94;
    LOBYTE(v122) = v95;
    v118 = v91;
    v119 = v92;
    v96 = v43;
    v97 = v42;
    v98 = v44;
    v99 = v40;
    v100 = v39;
    v101 = v41;
    v102 = 2;
    v103 = 0;
    sub_100051E00(v43, *(&v43 + 1), v42);

    sub_1000108DC(&v91, &v124, &qword_100645040);
    sub_10001074C(&v96, &qword_100645040);
    v106 = v120;
    v107 = v121;
    v104 = v118;
    v105 = v119;
    *&v108 = v122;
    *(&v108 + 1) = v45;
    v109 = 1;
    v112 = v120;
    v113 = v121;
    v110 = v118;
    v111 = v119;
    v114 = v122;
    v115 = v45;
    v116 = 1;
    sub_1000108DC(&v104, &v124, &qword_100645050);
    sub_10001074C(&v110, &qword_100645050);
    v126 = v106;
    v127 = v107;
    v128 = v108;
    LOBYTE(v129) = v109;
    v124 = v104;
    v125 = v105;
    v117 = 1;
    HIBYTE(v129) = 1;
    sub_1000108DC(&v104, &v118, &qword_100645050);
    sub_1000108DC(&v104, &v118, &qword_100645050);
    sub_100004CB8(&qword_100645040);
    sub_100004CB8(&qword_100645050);
    sub_1003E43E0();
    sub_1003E4484();
    sub_1004DAADC();
    v46 = v88;
    v120 = v87;
    v121 = v88;
    v47 = v89;
    v122 = v89;
    v48 = v90;
    v123 = v90;
    v49 = v85;
    v50 = v86;
    v118 = v85;
    v119 = v86;
    v51 = v75;
    *(v75 + 2) = v87;
    *(v51 + 3) = v46;
    *(v51 + 4) = v47;
    *(v51 + 40) = v48;
    *v51 = v49;
    *(v51 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    sub_1000108DC(&v118, &v124, &qword_100645030);
    sub_100004CB8(&qword_100645030);
    sub_1003E4354();
    sub_1003E4528();
    v52 = v78;
    sub_1004DAADC();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    sub_10001074C(&v124, &qword_100645030);
    sub_1000108DC(v52, v74, &qword_100645020);
    swift_storeEnumTagMultiPayload();
    sub_1003E42C8();
    sub_1004DAADC();
    v53 = &qword_100645050;
    v54 = &qword_100645050;
LABEL_12:
    sub_10001074C(&v104, v54);
    sub_10001074C(&v104, v53);
    v36 = v52;
    v37 = &qword_100645020;
    return sub_10001074C(v36, v37);
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

  v74 = v8;
  if (a5 != 5)
  {
LABEL_11:
    v61 = sub_1004DB89C();
    v62 = swift_getKeyPath();
    v63 = swift_getKeyPath();
    LOBYTE(v118) = v79 & 1;
    LOBYTE(v85) = 0;
    v104 = v83;
    LOBYTE(v105) = v79 & 1;
    *(&v105 + 1) = v84;
    *&v106 = v62;
    *(&v106 + 1) = v61;
    *&v107 = v63;
    *(&v107 + 1) = 1;
    LOBYTE(v108) = 0;
    v110 = v83;
    LOBYTE(v111) = v79 & 1;
    *(&v111 + 1) = v84;
    *&v112 = v62;
    *(&v112 + 1) = v61;
    *&v113 = v63;
    *(&v113 + 1) = 1;
    LOBYTE(v114) = 0;
    sub_100051E00(v83, *(&v83 + 1), v79 & 1);

    sub_1000108DC(&v104, &v124, &qword_100645040);
    sub_10001074C(&v110, &qword_100645040);
    v126 = v106;
    v127 = v107;
    LOBYTE(v128) = v108;
    v124 = v104;
    v125 = v105;
    LOBYTE(v96) = 0;
    HIBYTE(v129) = 0;
    sub_1000108DC(&v104, &v118, &qword_100645040);
    sub_1000108DC(&v104, &v118, &qword_100645040);
    sub_100004CB8(&qword_100645040);
    sub_100004CB8(&qword_100645050);
    sub_1003E43E0();
    sub_1003E4484();
    sub_1004DAADC();
    v64 = v88;
    v120 = v87;
    v121 = v88;
    v65 = v89;
    v122 = v89;
    v66 = v90;
    v123 = v90;
    v67 = v85;
    v68 = v86;
    v118 = v85;
    v119 = v86;
    v69 = v75;
    *(v75 + 2) = v87;
    *(v69 + 3) = v64;
    *(v69 + 4) = v65;
    *(v69 + 40) = v66;
    *v69 = v67;
    *(v69 + 1) = v68;
    swift_storeEnumTagMultiPayload();
    sub_1000108DC(&v118, &v124, &qword_100645030);
    sub_100004CB8(&qword_100645030);
    sub_1003E4354();
    sub_1003E4528();
    v52 = v78;
    sub_1004DAADC();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    sub_10001074C(&v124, &qword_100645030);
    sub_1000108DC(v52, v74, &qword_100645020);
    swift_storeEnumTagMultiPayload();
    sub_1003E42C8();
    sub_1004DAADC();
    v53 = &qword_100645040;
    v54 = &qword_100645040;
    goto LABEL_12;
  }

  v25 = sub_1004DB8AC();
  v72 = swift_getKeyPath();
  v26 = &v17[*(sub_100004CB8(&qword_100645080) + 36)];
  v27 = *(sub_100004CB8(&qword_100642760) + 28);
  v71 = enum case for Text.Case.uppercase(_:);
  v28 = sub_1004DB28C();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26 + v27, v71, v28);
  (*(v29 + 56))(v26 + v27, 0, 1, v28);
  *v26 = swift_getKeyPath();
  v30 = v83;
  *v17 = v83;
  LOBYTE(v28) = v79 & 1;
  v17[16] = v79 & 1;
  v31 = v72;
  *(v17 + 3) = v84;
  *(v17 + 4) = v31;
  *(v17 + 5) = v25;
  v32 = swift_getKeyPath();
  v33 = &v17[*(v15 + 36)];
  *v33 = v32;
  *(v33 + 1) = 1;
  v33[16] = 0;
  sub_1000108DC(v17, v12, &qword_100645070);
  swift_storeEnumTagMultiPayload();
  sub_100051E00(v30, *(&v30 + 1), v28);

  sub_100004CB8(&qword_100642060);
  sub_1003E45B4();
  sub_1003709CC();
  v34 = v73;
  sub_1004DAADC();
  sub_1000108DC(v34, v75, &qword_100645060);
  swift_storeEnumTagMultiPayload();
  sub_100004CB8(&qword_100645030);
  sub_1003E4354();
  sub_1003E4528();
  v35 = v78;
  sub_1004DAADC();
  sub_10001074C(v34, &qword_100645060);
  sub_1000108DC(v35, v74, &qword_100645020);
  swift_storeEnumTagMultiPayload();
  sub_100004CB8(&qword_100645040);
  sub_1003E42C8();
  sub_1003E43E0();
  sub_1004DAADC();
  sub_10001074C(v35, &qword_100645020);
  v36 = v17;
  v37 = &qword_100645070;
  return sub_10001074C(v36, v37);
}

uint64_t sub_1003E23F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v207 = a4;
  LODWORD(v197) = a2;
  v193 = a1;
  v200 = a5;
  sub_100008DE4(&unk_100641A20);
  v192 = a3;
  v6 = sub_1004DA32C();
  sub_100008DE4(&qword_100642760);
  v7 = sub_1004DA32C();
  sub_100008DE4(&qword_100642D40);
  v8 = sub_1004DA32C();
  v9 = sub_1004DAAEC();
  v182 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v178 - v10;
  v11 = sub_100004CB8(&qword_100642EF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v178 - v12;
  v206 = v7;
  v180 = *(v7 - 8);
  __chkstk_darwin(v14);
  v16 = &v178 - v15;
  v205 = v8;
  v184 = *(v8 - 8);
  __chkstk_darwin(v17);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v178 - v21;
  v23 = sub_1004DA32C();
  sub_100008DE4(&qword_100643CC8);
  v24 = sub_1004DA32C();
  v183 = *(v24 - 8);
  __chkstk_darwin(v24);
  v188 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v187 = &v178 - v27;
  v202 = v28;
  v29 = sub_1004DAAEC();
  v186 = *(v29 - 8);
  __chkstk_darwin(v29);
  v185 = &v178 - v30;
  v204 = v31;
  v201 = v9;
  v32 = sub_1004DAAEC();
  v190 = *(v32 - 8);
  __chkstk_darwin(v32);
  v189 = &v178 - v33;
  v208 = v6;
  v34 = *(v6 - 8);
  __chkstk_darwin(v35);
  v37 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v178 - v39;
  v191 = *(v23 - 8);
  __chkstk_darwin(v41);
  v43 = &v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v194 = &v178 - v45;
  v196 = v46;
  v203 = v23;
  v47 = sub_1004DAAEC();
  __chkstk_darwin(v47);
  v195 = &v178 - v48;
  v198 = v50;
  v199 = v49;
  if (v197 > 5u)
  {
    if (v197 != 6)
    {
      v51 = v34;
      if (v197 == 7)
      {
        sub_1004DB87C();
        v119 = v207;
        sub_1004DB4BC();

        v120 = sub_1003E41E4(&unk_100642D10, &unk_100641A20);
        v271 = v119;
        v272 = v120;
        v121 = v208;
        WitnessTable = swift_getWitnessTable();
        sub_100339DC8(v37, v121, WitnessTable);
        v123 = v205;
        v124 = *(v51 + 8);
        v194 = (v51 + 8);
        v197 = v124;
        v124(v37, v121);
        sub_100339DC8(v40, v121, WitnessTable);
        v125 = sub_1003E41E4(&qword_100642DF0, &qword_100642760);
        v269 = WitnessTable;
        v270 = v125;
        v126 = swift_getWitnessTable();
        v127 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
        v267 = v126;
        v268 = v127;
        v128 = swift_getWitnessTable();
        v129 = v181;
        sub_1003E12FC(v37, v123, v121);
        v265 = WitnessTable;
        v266 = v127;
        v130 = swift_getWitnessTable();
        v193 = v130;
        v131 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
        v263 = v130;
        v264 = v131;
        v132 = swift_getWitnessTable();
        v261 = v130;
        v262 = v132;
        v133 = v204;
        v134 = swift_getWitnessTable();
        v259 = v128;
        v260 = WitnessTable;
        v135 = v201;
        v136 = swift_getWitnessTable();
        v137 = v189;
        sub_1003E12FC(v129, v133, v135);
        (*(v182 + 8))(v129, v135);
        v257 = v134;
        v258 = v136;
        v138 = v196;
        swift_getWitnessTable();
        v69 = v195;
        sub_1003E1204(v137, v138);
        v139 = v137;
        v96 = v207;
        (*(v190 + 8))(v139, v138);
        v140 = v40;
        v141 = v208;
        v142 = v197;
        v197(v37, v208);
        v142(v140, v141);
        goto LABEL_14;
      }

      v52 = v207;
      if (v197 == 8)
      {
        sub_1004DB87C();
        sub_1004DB4BC();

        v53 = sub_1003E41E4(&unk_100642D10, &unk_100641A20);
        v305 = v52;
        v306 = v53;
        v54 = v208;
        v55 = swift_getWitnessTable();
        v56 = v43;
        sub_1004DB75C();
        (*(v51 + 8))(v40, v54);
        v193 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
        v303 = v55;
        v304 = v193;
        v57 = v191;
        v58 = v203;
        v59 = swift_getWitnessTable();
        v60 = v194;
        sub_100339DC8(v56, v58, v59);
        v197 = *(v57 + 8);
        v197(v56, v58);
        sub_100339DC8(v60, v58, v59);
        v61 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
        v301 = v59;
        v302 = v61;
        v62 = swift_getWitnessTable();
        v299 = v59;
        v300 = v62;
        v63 = swift_getWitnessTable();
        v64 = sub_1003E41E4(&qword_100642DF0, &qword_100642760);
        v297 = v55;
        v298 = v64;
        v295 = swift_getWitnessTable();
        v296 = v193;
        v293 = swift_getWitnessTable();
        v294 = v55;
        v65 = swift_getWitnessTable();
        v291 = v63;
        v292 = v65;
        v66 = v196;
        swift_getWitnessTable();
        v67 = v195;
        sub_1003E12FC(v56, v66, v58);
        v68 = v56;
        v69 = v67;
        v70 = v197;
        v197(v68, v58);
        v70(v194, v58);
LABEL_9:
        v96 = v207;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    sub_1004DB8AC();
    v97 = v207;
    sub_1004DB4BC();

    v98 = sub_1003E41E4(&unk_100642D10, &unk_100641A20);
    v239 = v97;
    v240 = v98;
    v99 = v208;
    v100 = swift_getWitnessTable();
    v101 = v194;
    v102 = v100;
    v192 = v100;
    sub_1004DB75C();
    (*(v34 + 8))(v40, v99);
    v193 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
    v237 = v102;
    v238 = v193;
    v103 = v203;
    v104 = swift_getWitnessTable();
    v105 = v188;
    sub_1004DB5EC();
    (*(v191 + 8))(v101, v103);
    v106 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
    v235 = v104;
    v236 = v106;
    v107 = v202;
    v108 = swift_getWitnessTable();
    v109 = v187;
    sub_100339DC8(v105, v107, v108);
    v197 = *(v183 + 8);
    v197(v105, v107);
    sub_100339DC8(v109, v107, v108);
    v110 = v185;
    v184 = v104;
    sub_1003E12FC(v105, v103, v107);
    v233 = v104;
    v234 = v108;
    v111 = v204;
    v112 = swift_getWitnessTable();
    v113 = sub_1003E41E4(&qword_100642DF0, &qword_100642760);
    v114 = v192;
    v231 = v192;
    v232 = v113;
    v229 = swift_getWitnessTable();
    v230 = v193;
    v227 = swift_getWitnessTable();
    v228 = v114;
    v115 = swift_getWitnessTable();
    v116 = v189;
    sub_1003E1204(v110, v111);
    (*(v186 + 8))(v110, v111);
    v225 = v112;
    v226 = v115;
    v117 = v196;
    swift_getWitnessTable();
    v69 = v195;
    sub_1003E1204(v116, v117);
    (*(v190 + 8))(v116, v117);
    v96 = v207;
    v118 = v197;
    v197(v188, v107);
    v118(v187, v107);
    goto LABEL_14;
  }

  v179 = v22;
  if (v197 == 4)
  {
    goto LABEL_10;
  }

  v51 = v34;
  v52 = v207;
  if (v197 == 5)
  {
    sub_1004DB8AC();
    sub_1004DB4BC();

    v71 = enum case for Text.Case.uppercase(_:);
    v72 = sub_1004DB28C();
    v73 = *(v72 - 8);
    (*(v73 + 104))(v13, v71, v72);
    (*(v73 + 56))(v13, 0, 1, v72);
    v74 = sub_1003E41E4(&unk_100642D10, &unk_100641A20);
    v255 = v52;
    v256 = v74;
    v75 = v208;
    v76 = swift_getWitnessTable();
    v77 = v16;
    sub_1004DB71C();
    sub_10001074C(v13, &qword_100642EF8);
    (*(v51 + 8))(v40, v75);
    v78 = sub_1003E41E4(&qword_100642DF0, &qword_100642760);
    v253 = v76;
    v254 = v78;
    v79 = v206;
    v80 = swift_getWitnessTable();
    sub_1004DB75C();
    (*(v180 + 8))(v77, v79);
    v81 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
    v251 = v80;
    v252 = v81;
    v82 = v205;
    v83 = swift_getWitnessTable();
    v84 = v179;
    v178 = v19;
    sub_100339DC8(v19, v82, v83);
    v197 = *(v184 + 8);
    v184 += 8;
    v197(v19, v82);
    sub_100339DC8(v84, v82, v83);
    v85 = v181;
    sub_1003E1204(v19, v82);
    v249 = v76;
    v250 = v81;
    v86 = swift_getWitnessTable();
    v87 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
    v247 = v86;
    v194 = v86;
    v248 = v87;
    v88 = swift_getWitnessTable();
    v245 = v86;
    v246 = v88;
    v89 = v204;
    v90 = swift_getWitnessTable();
    v243 = v83;
    v244 = v76;
    v91 = v201;
    v92 = swift_getWitnessTable();
    v93 = v189;
    sub_1003E12FC(v85, v89, v91);
    (*(v182 + 8))(v85, v91);
    v241 = v90;
    v242 = v92;
    v94 = v196;
    swift_getWitnessTable();
    v69 = v195;
    sub_1003E1204(v93, v94);
    (*(v190 + 8))(v93, v94);
    v95 = v197;
    v197(v178, v82);
    v95(v179, v82);
    goto LABEL_9;
  }

LABEL_12:
  sub_1004DB89C();
  sub_1004DB4BC();

  v143 = sub_1003E41E4(&unk_100642D10, &unk_100641A20);
  v223 = v52;
  v224 = v143;
  v144 = v208;
  v145 = swift_getWitnessTable();
  v146 = v191;
  v147 = v145;
  v148 = v43;
  sub_1004DB75C();
  (*(v51 + 8))(v40, v144);
  v149 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
  v221 = v147;
  v222 = v149;
  v150 = v203;
  v151 = swift_getWitnessTable();
  v152 = v194;
  sub_100339DC8(v43, v150, v151);
  v197 = *(v146 + 8);
  v191 = v146 + 8;
  v197(v43, v150);
  sub_100339DC8(v152, v150, v151);
  v153 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
  v219 = v151;
  v220 = v153;
  v193 = v151;
  v154 = swift_getWitnessTable();
  v155 = v185;
  sub_1003E1204(v148, v150);
  v217 = v151;
  v218 = v154;
  v156 = v204;
  v192 = swift_getWitnessTable();
  v157 = sub_1003E41E4(&qword_100642DF0, &qword_100642760);
  v215 = v147;
  v216 = v157;
  v213 = swift_getWitnessTable();
  v214 = v149;
  v211 = swift_getWitnessTable();
  v212 = v147;
  v158 = swift_getWitnessTable();
  v159 = v189;
  v160 = v192;
  sub_1003E1204(v155, v156);
  (*(v186 + 8))(v155, v156);
  v209 = v160;
  v210 = v158;
  v161 = v207;
  v162 = v196;
  swift_getWitnessTable();
  v163 = v195;
  sub_1003E1204(v159, v162);
  (*(v190 + 8))(v159, v162);
  v164 = v148;
  v96 = v161;
  v69 = v163;
  v165 = v197;
  v197(v164, v150);
  v165(v194, v150);
LABEL_14:
  v166 = sub_1003E41E4(&unk_100642D10, &unk_100641A20);
  v289 = v96;
  v290 = v166;
  v167 = swift_getWitnessTable();
  v168 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
  v287 = v167;
  v288 = v168;
  v169 = swift_getWitnessTable();
  v170 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
  v285 = v169;
  v286 = v170;
  v171 = swift_getWitnessTable();
  v283 = v169;
  v284 = v171;
  v172 = swift_getWitnessTable();
  v173 = sub_1003E41E4(&qword_100642DF0, &qword_100642760);
  v281 = v167;
  v282 = v173;
  v279 = swift_getWitnessTable();
  v280 = v168;
  v277 = swift_getWitnessTable();
  v278 = v167;
  v174 = swift_getWitnessTable();
  v275 = v172;
  v276 = v174;
  v273 = swift_getWitnessTable();
  v274 = v169;
  v175 = v199;
  v176 = swift_getWitnessTable();
  sub_100339DC8(v69, v175, v176);
  return (*(v198 + 8))(v69, v175);
}

uint64_t Text.with(style:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = sub_1003E3BE8(a2, a3, a4 & 1, a5, a1);
  v10 = v9;
  v12 = v11;
  sub_1003E153C(v8, v9, v11 & 1, v13, a1, a6);
  sub_100051E10(v8, v10, v12 & 1);
}

uint64_t sub_1003E3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      sub_1004DB09C();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      sub_1004DB06C();
      v7 = sub_1004DB23C();
      v9 = v8;
      v11 = v10;
      sub_1004DB0EC();
      v5 = sub_1004DB2AC();

      sub_100051E10(v7, v9, v11 & 1);

      return v5;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    sub_1004DB00C();
    goto LABEL_9;
  }

  sub_1004DB0AC();
LABEL_9:
  v5 = sub_1004DB2AC();

  return v5;
}

unint64_t sub_1003E3D48()
{
  result = qword_100645000;
  if (!qword_100645000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645000);
  }

  return result;
}

uint64_t _s5StyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1003E3EF4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1003E3F08(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1003E3F38()
{
  sub_100008DE4(&unk_100641A20);
  sub_1004DA32C();
  sub_100008DE4(&qword_100642D40);
  sub_1004DA32C();
  sub_100008DE4(&qword_100643CC8);
  sub_1004DA32C();
  sub_1004DAAEC();
  sub_100008DE4(&qword_100642760);
  sub_1004DA32C();
  sub_1004DA32C();
  sub_1004DAAEC();
  sub_1004DAAEC();
  sub_1004DAAEC();
  sub_1003E41E4(&unk_100642D10, &unk_100641A20);
  swift_getWitnessTable();
  sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
  swift_getWitnessTable();
  sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1003E41E4(&qword_100642DF0, &qword_100642760);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1003E41E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003E423C()
{
  result = qword_100645008;
  if (!qword_100645008)
  {
    sub_100008DE4(&qword_100645010);
    sub_1003E42C8();
    sub_1003E43E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645008);
  }

  return result;
}

unint64_t sub_1003E42C8()
{
  result = qword_100645018;
  if (!qword_100645018)
  {
    sub_100008DE4(&qword_100645020);
    sub_1003E4354();
    sub_1003E4528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645018);
  }

  return result;
}

unint64_t sub_1003E4354()
{
  result = qword_100645028;
  if (!qword_100645028)
  {
    sub_100008DE4(&qword_100645030);
    sub_1003E43E0();
    sub_1003E4484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645028);
  }

  return result;
}

unint64_t sub_1003E43E0()
{
  result = qword_100645038;
  if (!qword_100645038)
  {
    sub_100008DE4(&qword_100645040);
    sub_1003709CC();
    sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645038);
  }

  return result;
}

unint64_t sub_1003E4484()
{
  result = qword_100645048;
  if (!qword_100645048)
  {
    sub_100008DE4(&qword_100645050);
    sub_1003E43E0();
    sub_1003E41E4(&qword_100643CC0, &qword_100643CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645048);
  }

  return result;
}

unint64_t sub_1003E4528()
{
  result = qword_100645058;
  if (!qword_100645058)
  {
    sub_100008DE4(&qword_100645060);
    sub_1003E45B4();
    sub_1003709CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645058);
  }

  return result;
}

unint64_t sub_1003E45B4()
{
  result = qword_100645068;
  if (!qword_100645068)
  {
    sub_100008DE4(&qword_100645070);
    sub_1003E4658();
    sub_1003E41E4(&qword_100642DD8, &qword_100642D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645068);
  }

  return result;
}

unint64_t sub_1003E4658()
{
  result = qword_100645078;
  if (!qword_100645078)
  {
    sub_100008DE4(&qword_100645080);
    sub_1003709CC();
    sub_1003E41E4(&qword_100642DF0, &qword_100642760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645078);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_10030E2D4(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_10030E2D4(v12, v11);
  sub_10030E2D4(a1, v11);
  sub_10001074C(v18, &qword_10063F148);
  sub_1003E80D8(v12);
  sub_10001074C(v12, &qword_10063F148);
  return sub_10001074C(a1, &qword_10063F148);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_10030E2D4(v4, v4 + 416);
  return sub_1003E49AC;
}

void sub_1003E49AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_10030E2D4(v2 + 624, v2 + 728);
    sub_10030E2D4(v2 + 624, v2 + 728);
    sub_10030E2D4(v2 + 104, v2 + 728);
    sub_10001074C(v4, &qword_10063F148);
    sub_1003E80D8(v2 + 104);
    sub_10001074C(v2 + 104, &qword_10063F148);
    sub_10001074C(v2 + 624, &qword_10063F148);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_10030E2D4(v2 + 208, v2 + 624);
    sub_10030E2D4(v4, v2 + 624);
    sub_10001074C(v2 + 416, &qword_10063F148);
    sub_1003E80D8(v2 + 208);
    sub_10001074C(v2 + 208, &qword_10063F148);
    v28 = v4;
  }

  sub_10001074C(v28, &qword_10063F148);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  sub_1003E91E4(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_1003E4C9C;
}

void sub_1003E4C9C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_1003E91E4(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_1003E65E0(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

void (*VerticalToggleSlider.value.modify(void (**a1)(float **a1, char a2)))(float **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return sub_1003E4E14;
  }

  return result;
}

void sub_1003E4E14(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  sub_1003E65E0(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1004DEAAC(145);
    v9._object = 0x80000001004F87F0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_1004DD5FC(v9);
    sub_1004DDC0C();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_1004DD5FC(v10);
    sub_1004DDC0C();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x80000001004F8840;
    sub_1004DD5FC(v11);
    if (qword_10063D800 != -1)
    {
      swift_once();
    }

    v2 = sub_1004D966C();
    sub_100035430(v2, qword_1006736C0);

    v3 = sub_1004D964C();
    v4 = sub_1004DDF8C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_1002E5CC4(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100008D24(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return sub_1003E511C;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1004DEAAC(145);
    v9._object = 0x80000001004F87F0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_1004DD5FC(v9);
    sub_1004DDC0C();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_1004DD5FC(v10);
    sub_1004DDC0C();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x80000001004F8840;
    sub_1004DD5FC(v11);
    if (qword_10063D800 != -1)
    {
      swift_once();
    }

    v2 = sub_1004D966C();
    sub_100035430(v2, qword_1006736C0);

    v3 = sub_1004D964C();
    v4 = sub_1004DDF8C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_1002E5CC4(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100008D24(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return sub_1003E53B4;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_1004DEAAC(164);
    v10._object = 0x80000001004F87F0;
    v10._countAndFlagsBits = 0xD000000000000042;
    sub_1004DD5FC(v10);
    sub_1004DDC0C();
    v11._countAndFlagsBits = 3026478;
    v11._object = 0xE300000000000000;
    sub_1004DD5FC(v11);
    sub_1004DDC0C();
    v12._countAndFlagsBits = 0xD00000000000005BLL;
    v12._object = 0x80000001004F8890;
    sub_1004DD5FC(v12);
    if (qword_10063D800 != -1)
    {
      swift_once();
    }

    v3 = sub_1004D966C();
    sub_100035430(v3, qword_1006736C0);

    v4 = sub_1004D964C();
    v5 = sub_1004DDF8C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136446210;
      v8 = sub_1002E5CC4(0, 0xE000000000000000, v9);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100008D24(v7);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

void (*VerticalToggleSlider.valueRange.modify(void (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return sub_1003E5690;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    sub_1003E6FF4(0x100000000);
    v5 = sub_1003E6BDC();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_1003E58A0;
}

void sub_1003E58A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      sub_1003E6FF4(0x100000000);
      v8 = sub_1003E6BDC();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

uint64_t VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_1003E6B58();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1003E5D60;
}

void sub_1003E5D60(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  if ((a2 & 1) == 0)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = [v2[3] isEnabled] ^ 1;
LABEL_8:
  v8 = *(v2[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v8)
  {
    v9 = 0.4;
    if (!v7)
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = sub_1003E6B58();
  v11 = v10;
  v12 = 1.0;
  if (v7)
  {
    v12 = 0.5;
  }

  [v10 setAlpha:v12];

LABEL_15:

  free(v2);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_1003E79CC();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1003E6160;
}

void sub_1003E6160(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_1003E79CC();
  }

  free(v1);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_1003E6524();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = sub_1003E83A4(v6, v5).n128_u64[0];
  v9 = v8;

  [v4 setAnchorPoint:{v7, v9}];
  v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v10 setFrame:?];
}

void (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1003E6380;
}

void sub_1003E6380(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1003E6524();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = sub_1003E83A4(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id sub_1003E6470()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1003E6524()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_1003E6470();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_1003E65E0(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_1003E6FF4(0x100000000);
      v10 = sub_1003E6BDC();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id sub_1003E66EC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1003E6764()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_1003E6B58();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = sub_1003E6BDC();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_1003E7754();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_1003E9134;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_1003BB590;
    v20[3] = &unk_1005F4210;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = sub_1003E6BDC();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1003E6A98()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_1003E6B58();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_1003E6B58()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003E6BDC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_1003E6B58();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_1003E6C98()
{
  v1 = sub_1003E6524();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = sub_1003E83A4(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = sub_1003E6470();
  [v12 setClipsToBounds:1];

  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v13] setAutoresizingMask:18];
  v14 = *&v0[v2];
  v15 = *&v0[v13];
  [v14 bounds];
  [v15 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v13]];
}

void sub_1003E6E58()
{
  v1 = sub_1003E6BDC();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = sub_1004DD3FC();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_1003E6B58();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_1003E6FF4(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void sub_1003E6FF4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_1003E6BDC();
    v2 = sub_1003E6B58();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_1003E6B58();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = sub_1003E6BDC();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void sub_1003E71D0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      sub_10030E2D4(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      sub_1002DBB8C(v48, v47);
      sub_1002DBB8C(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = sub_1004DE5FC();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = sub_1003E6B58();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      sub_100004CB8(&qword_100642970);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100512860;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_100527330;
      sub_1002DDE4C(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_100527320;
      v43 = v11;
      sub_1002DDE4C(v41, v42);

      sub_100006F10(0, &qword_100642240);
      v44 = sub_1004DE14C();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_1003ED19C, v45);
    }

    sub_1003E7754();
    sub_10001074C(&v52, &qword_10063F148);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void sub_1003E7754()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          sub_1002DEE7C();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          sub_1002DEE7C();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void sub_1003E79CC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void sub_1003E7AAC(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == 2)
      {
        v7 = sub_1003E6524();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_1003E7E4C(v9, v11);
      }

      else if (v5 == 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_1003E91E4(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_1003E7D48();
    }
  }
}

void sub_1003E7BE8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        v12 = sub_1003E6524();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_1003E7E4C(v14, v16);
      }

      else if (v4 == 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_1003E91E4(v5);
        v6 = sub_1003E6524();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      sub_1003E7D48();
    }
  }
}

id sub_1003E7D48()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    sub_1003E91E4(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_1003E7E4C(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = sub_1003E6524();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  sub_1003E65E0(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_100527340, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_1006450A0;
      v29 = *&qword_1006450B0;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_1003EBD0C(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_1003E6FF4(0x100000000);
    v31 = sub_1003E6BDC();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void sub_1003E80D8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = *(a1 + 8);
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 64);
      v29 = *(a1 + 48);
      v30 = v12;
      v31 = *(a1 + 80);
      v32 = *(a1 + 96);
      v13 = *(a1 + 32);
      v27 = *(a1 + 16);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      sub_10030E2D4(v58, v33);
      sub_10030E2D4(v58, v33);
      sub_10030E2D4(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_10001074C(v58, &qword_10063F148);
      sub_10001074C(&v26, &qword_10063F148);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_10001074C(v33, &qword_10063F148);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    sub_10030E2D4(v58, v56);
    sub_10030E2D4(a1, v56);
    sub_10001074C(&v35, &qword_10063F148);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = v19;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  sub_10030E2D4(v58, v56);
  sub_10030E2D4(a1, v56);
  sub_10001074C(&v35, &qword_100645228);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_1003E71D0();
}

__n128 sub_1003E83A4(id a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v3 && a1 + 1 >= 2)
        {
          if (a1 != 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v4 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v4 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v3 || a1 + 1 < 2)
      {
LABEL_17:
        v4 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v4 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v3 && a1 + 1 >= 2)
      {
        if (a1 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v4 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_34;
    }

    if (a1 != 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v4 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v5 = v4;
      swift_beginAccess();
      return *v5;
    }

    if (!v3 || a1 + 1 < 2)
    {
LABEL_31:
      v4 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == 1)
    {
LABEL_38:
      v4 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  sub_1003E83A4(0, a2);
  result.n128_u64[1] = v7;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 5) = 0u;
  v12[96] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio] = 1040402485;
  v13 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
  *v13 = 0;
  v13[8] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint] = 8;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange] = 0x3F80000000000000;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2;
  v14 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *&v4[v14] = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v16 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v17 = *&qword_1006450B0;
  *v16 = xmmword_1006450A0;
  v16[1] = v17;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v18[4] = 0;
  v18[5] = 0;
  v19 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = 0x3FF0000000000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0x3FF0000000000000;
  v20 = type metadata accessor for VerticalToggleSlider();
  v19[4] = 0;
  v19[5] = 0;
  v44.receiver = v4;
  v44.super_class = v20;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  [v21 setDeliversTouchesForGesturesToSuperview:0];
  sub_100006F10(0, &qword_10063E980);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_1004DE62C();
  [v21 addAction:v22 forControlEvents:64];

  v23 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v21 action:"dragged:"];
  [v21 addGestureRecognizer:v23];

  sub_1003E79CC();
  [v21 setClipsToBounds:0];
  sub_1003E6C98();
  v24 = sub_1003E6B58();
  [v24 setUserInteractionEnabled:0];

  v25 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v21[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v21[v25] setAutoresizingMask:18];
  v26 = *&v21[v25];
  v27 = sub_1003E6470();
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v26 setFrame:{v29, v31, v33, v35}];
  v36 = [*&v21[v25] contentView];
  v37 = [v36 layer];

  [v37 setCompositingFilter:kCAFilterPlusL];
  [*&v21[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v21[v25]];
  sub_1003E6E58();
  sub_1003E6764();
  sub_1003E71D0();
  v38 = sub_1003E6470();
  sub_1004DE52C();
  v39 = sub_1004DE53C();
  (*(*(v39 - 8) + 56))(v11, 0, 1, v39);
  sub_1004DE54C();

  sub_100004CB8(qword_100640A00);
  v40 = swift_allocObject();
  v43 = xmmword_100511DA0;
  *(v40 + 16) = xmmword_100511DA0;
  *(v40 + 32) = sub_1004D998C();
  *(v40 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004DE57C();
  swift_unknownObjectRelease();

  v41 = swift_allocObject();
  *(v41 + 16) = v43;
  *(v41 + 32) = sub_1004D980C();
  *(v41 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_1004DE57C();

  swift_unknownObjectRelease();

  return v21;
}

void VerticalToggleSlider.isEnabled.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v13.receiver = v1;
  v13.super_class = v3;
  v4 = objc_msgSendSuper2(&v13, "isEnabled");
  v12.receiver = v1;
  v12.super_class = v3;
  objc_msgSendSuper2(&v12, "setEnabled:", a1 & 1);
  if (v4 != [v1 isEnabled])
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
    swift_beginAccess();
    if (v1[v5])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_1003E6B58();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

Swift::Void __swiftcall VerticalToggleSlider.layoutSubviews()()
{
  v1 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for VerticalToggleSlider();
  v7.receiver = v0;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v5 = sub_1003E6470();
  sub_1004DE52C();
  v6 = sub_1004DE53C();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_1004DE54C();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_1003E6764();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id sub_1003E9134(void *a1)
{
  v2 = [a1 userInterfaceStyle] == 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_100527350[v2]];
  return v5;
}

void sub_1003E91E4(int a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v4 - 8);
  v6 = &v159[-v5];
  v7 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v8 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  if (v8 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2)
  {
    if (v8)
    {
      sub_1003E65E0(1.0);
    }
  }

  else if (((v8 ^ a1) & 1) == 0)
  {
    return;
  }

  v9 = sub_1003E66EC();
  [v9 userInteractionStarted];

  v10 = objc_opt_self();
  if ([v10 areAnimationsEnabled])
  {
    v11 = v1[v7];
    if (a1 == 2)
    {
      if (v11 == 2)
      {
        return;
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v11 & 1;
      if (v11)
      {
        v13 = qword_10063DB80;
        v14 = v1;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = qword_1006450F0;
        [qword_1006450F0 settlingDuration];
        v17 = v16;
        [v15 mass];
        v19 = v18;
        [v15 stiffness];
        v21 = v20;
        [v15 damping];
        v23 = v22;
        *&aBlock.tx = sub_1003ED2A8;
        *&aBlock.ty = v12;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F45A8;
        v24 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v24 options:0 mass:v17 stiffness:0.0 damping:v19 initialVelocity:v21 animations:v23 completion:0.0];
        _Block_release(v24);
        if (qword_10063DB88 != -1)
        {
          swift_once();
        }

        v25 = qword_1006450F8;
        v26 = swift_allocObject();
        *(v26 + 16) = v14;
        v27 = v14;
        [v25 settlingDuration];
        v29 = v28;
        [v25 mass];
        v31 = v30;
        [v25 stiffness];
        v33 = v32;
        [v25 damping];
        v35 = v34;
        *&aBlock.tx = sub_1003ED2C4;
        *&aBlock.ty = v26;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F45F8;
        v36 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v36 options:0 mass:v29 stiffness:0.0 damping:v31 initialVelocity:v33 animations:v35 completion:0.0];
        _Block_release(v36);
      }

      else
      {
        v97 = qword_10063DB60;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_1006450D0;
        [qword_1006450D0 settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = sub_1003ED2A8;
        *&aBlock.ty = v12;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F4508;
        v108 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (qword_10063DB58 != -1)
        {
          swift_once();
        }

        v109 = qword_1006450C8;
        v110 = swift_allocObject();
        *(v110 + 16) = v98;
        v111 = v98;
        [v109 settlingDuration];
        v113 = v112;
        [v109 mass];
        v115 = v114;
        [v109 stiffness];
        v117 = v116;
        [v109 damping];
        v119 = v118;
        *&aBlock.tx = sub_1003ED2B4;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F4558;
        v120 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        sub_100006F10(0, &qword_100642240);
        v121 = sub_1004DE14C();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(sub_1003ED2BC, v122);
      }

LABEL_62:

      return;
    }

    if (v11 != 2)
    {
      if (((a1 ^ v11) & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v2;
      *(v73 + 24) = v11 & 1;
      v74 = swift_allocObject();
      *(v74 + 16) = v2;
      *(v74 + 24) = v11 & 1;
      if (v11)
      {
        v75 = qword_10063DB80;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = qword_1006450F0;
        [qword_1006450F0 settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = sub_1003ED1DC;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F4328;
        v86 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (qword_10063DB88 != -1)
        {
          swift_once();
        }

        v87 = qword_1006450F8;
        [qword_1006450F8 settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = sub_1003ED1E8;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1005F4350;
      }

      else
      {
        v138 = qword_10063DB90;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = qword_100645100;
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        v142 = v139;
        [v140 settlingDuration];
        v144 = v143;
        [v140 mass];
        v146 = v145;
        [v140 stiffness];
        v148 = v147;
        [v140 damping];
        v150 = v149;
        *&aBlock.tx = sub_1003ED1DC;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F42B0;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = CFRange.init(_:);
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100016298;
        *&aBlock.d = &unk_1005F42D8;
        v152 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (qword_10063DB98 != -1)
        {
          swift_once();
        }

        v153 = qword_100645108;
        [qword_100645108 settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = sub_1003ED1E8;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1005F4300;
      }

      *&aBlock.c = sub_100012680;
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v10 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_62;
    }

    if ((a1 & 1) == 0)
    {
      if (qword_10063DB70 != -1)
      {
        swift_once();
      }

      v45 = qword_1006450E0;
      v46 = swift_allocObject();
      *(v46 + 16) = v2;
      v47 = v2;
      [v45 settlingDuration];
      v49 = v48;
      [v45 mass];
      v51 = v50;
      [v45 stiffness];
      v53 = v52;
      [v45 damping];
      v55 = v54;
      *&aBlock.tx = sub_1003ED22C;
      *&aBlock.ty = v46;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100012680;
      *&aBlock.d = &unk_1005F43A0;
      v56 = _Block_copy(&aBlock);

      [v10 _animateUsingSpringWithDuration:6 delay:v56 options:0 mass:v49 stiffness:0.0 damping:v51 initialVelocity:v53 animations:v55 completion:0.0];
      _Block_release(v56);
    }

    if (qword_10063DB78 != -1)
    {
      swift_once();
    }

    v57 = qword_1006450E8;
    *&v58 = COERCE_DOUBLE(swift_allocObject());
    v59 = *&v58;
    v60 = a1 & 1;
    if (a1)
    {
      v61 = 0.0;
    }

    else
    {
      v61 = 0.1;
    }

    *(v58 + 16) = v60;
    *(v58 + 24) = v2;
    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    v63 = objc_opt_self();
    v64 = v2;
    [v63 begin];
    [v63 setAnimationTimingFunction:v57];
    *&aBlock.tx = sub_1003ED26C;
    aBlock.ty = v59;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100012680;
    *&aBlock.d = &unk_1005F4418;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = CFRange.init(_:);
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100016298;
    *&aBlock.d = &unk_1005F4440;
    v66 = _Block_copy(&aBlock);

    [v10 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v61];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    sub_100006F10(0, &qword_100642240);
    v67 = sub_1004DE14C();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_1003ED278, v68);

    if (!v60)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = sub_1003ED2A0;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100012680;
      *&aBlock.d = &unk_1005F44B8;
      v71 = _Block_copy(&aBlock);
      v72 = v69;

      [v10 animateWithDuration:0 delay:v71 options:0 animations:0.25 completion:0.7];
      _Block_release(v71);
    }
  }

  else
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    v37 = [v1 superview];
    [v37 setNeedsLayout];

    v38 = [v1 superview];
    [v38 layoutIfNeeded];

    [v1 updateConstraintsIfNeeded];
    v39 = v1[v7];
    v40 = 1.0;
    v41 = 1.0;
    if (v39 != 2 && (v39 & 1) != 0)
    {
      v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      v43 = 2.0;
      if ((v42[1] & 1) == 0)
      {
        v43 = *v42;
      }

      v44 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      if (v44[1])
      {
        v40 = 2.0;
      }

      else
      {
        v40 = *v44;
      }

      v41 = v43;
    }

    CGAffineTransformMakeScale(&aBlock, v41, v40);
    v124 = *&aBlock.c;
    v125 = *&aBlock.tx;
    v126 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
    *v126 = *&aBlock.a;
    *(v126 + 1) = v124;
    *(v126 + 2) = v125;
    v127 = sub_1003E6524();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    sub_1003E71D0();
    LOBYTE(aBlock.a) = 1;
    sub_1003E6FF4(0x100000000);
    v129 = sub_1003E6BDC();
    v130 = v1[v7];
    v131 = [v2 traitCollection];
    if (v130 == 2)
    {

      v132 = 0.0;
    }

    else if (v130)
    {

      v132 = 1.0;
    }

    else
    {
      v133 = v131;
      v134 = [v131 accessibilityContrast];

      v132 = 0.5;
      if (v134 == 1)
      {
        v132 = 1.0;
      }
    }

    [v129 setAlpha:v132];

    v135 = sub_1003E6470();
    sub_1004DE52C();
    v136 = sub_1004DE53C();
    (*(*(v136 - 8) + 56))(v6, 0, 1, v136);
    sub_1004DE54C();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void sub_1003EA5B4(unsigned __int8 *a1, char a2)
{
  v4 = sub_100004CB8(&qword_100644A50);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v30[-v6];
  [a1 invalidateIntrinsicContentSize];
  [a1 setNeedsUpdateConstraints];
  v8 = [a1 superview];
  [v8 setNeedsLayout];

  v9 = [a1 superview];
  [v9 layoutIfNeeded];

  [a1 updateConstraintsIfNeeded];
  v10 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v11 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = 1.0;
  v13 = 1.0;
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v14 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    v15 = 2.0;
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
    }

    v16 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    if (v16[1])
    {
      v12 = 2.0;
    }

    else
    {
      v12 = *v16;
    }

    v13 = v15;
  }

  CGAffineTransformMakeScale(&v31, v13, v12);
  v17 = *&v31.c;
  v18 = *&v31.tx;
  v19 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = *&v31.a;
  *(v19 + 1) = v17;
  *(v19 + 2) = v18;
  v20 = sub_1003E6524();
  v21 = *(v19 + 1);
  *&v31.a = *v19;
  *&v31.c = v21;
  *&v31.tx = *(v19 + 2);
  [v20 setTransform:&v31];

  v22 = sub_1003E6470();
  sub_1004DE52C();
  v23 = sub_1004DE53C();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  sub_1004DE54C();

  if (a2)
  {
    LOBYTE(v31.a) = 1;
    sub_1003E6FF4(0x100000000);
    v24 = sub_1003E6BDC();
    v25 = a1[v10];
    v26 = [a1 traitCollection];
    if (v25 == 2)
    {

      v27 = 0.0;
    }

    else if (v25)
    {

      v27 = 1.0;
    }

    else
    {
      v28 = v26;
      v29 = [v26 accessibilityContrast];

      v27 = 0.5;
      if (v29 == 1)
      {
        v27 = 1.0;
      }
    }

    [v24 setAlpha:v27];

    sub_1003E71D0();
  }

  else
  {
    LOBYTE(v31.a) = 0;
    sub_1003E6FF4(1065353216);
  }

  sub_1003E6764();
}

uint64_t sub_1003EA8CC()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v2);
}

uint64_t sub_1003EA93C(unsigned __int8 *a1)
{
  v2 = sub_1003E6BDC();
  v3 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v4 = [a1 traitCollection];
  if (v3 == 2)
  {

    v5 = 0.0;
  }

  else if (v3)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v4;
    v7 = [v4 accessibilityContrast];

    v5 = 0.5;
    if (v7 == 1)
    {
      v5 = 1.0;
    }
  }

  [v2 setAlpha:v5];

  sub_1003E71D0();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

uint64_t sub_1003EAA3C(void *a1)
{
  if (qword_10063DB68 != -1)
  {
    swift_once();
  }

  v2 = qword_1006450D8;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = sub_1003ED2CC;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100012680;
  v9[3] = &unk_1005F4648;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];
}

void sub_1003EABD4(uint64_t a1)
{
  v2 = sub_1003E6BDC();
  v3 = sub_1003E6B58();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v13.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v14.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
  v15.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
  v16.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
  v17 = *&qword_1006450B0;
  *v12 = xmmword_1006450A0;
  v12[1] = v17;
  sub_1003EBD0C(v13, v14, v15, v16);
}

uint64_t sub_1003EAC88(char a1, char *a2)
{
  v4 = sub_100004CB8(&qword_100644A50);
  v5 = __chkstk_darwin(v4 - 8);
  v10 = v28 - v9;
  if (a1)
  {
    v11 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v8.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v12 = *&qword_1006450B0;
    *v11 = xmmword_1006450A0;
    *(v11 + 1) = v12;
    sub_1003EBD0C(v5, v6, v7, v8);
    LOBYTE(v28[0]) = 1;
    sub_1003E6FF4(0x100000000);
    v13 = sub_1003E6BDC();
    v14 = a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v15 = [a2 traitCollection];
    if (v14 == 2)
    {

      v16 = 0.0;
    }

    else if (v14)
    {

      v16 = 1.0;
    }

    else
    {
      v17 = v15;
      v18 = [v15 accessibilityContrast];

      v16 = 0.5;
      if (v18 == 1)
      {
        v16 = 1.0;
      }
    }

    [v13 setAlpha:v16];
  }

  v19 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = 0x3FF0000000000000;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0x3FF0000000000000;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  v20 = sub_1003E6524();
  v21 = *(v19 + 1);
  v28[0] = *v19;
  v28[1] = v21;
  v28[2] = *(v19 + 2);
  [v20 setTransform:v28];

  [a2 invalidateIntrinsicContentSize];
  [a2 setNeedsUpdateConstraints];
  v22 = [a2 superview];
  [v22 setNeedsLayout];

  v23 = [a2 superview];
  [v23 layoutIfNeeded];

  [a2 updateConstraintsIfNeeded];
  v24 = sub_1003E6470();
  sub_1004DE52C();
  v25 = sub_1004DE53C();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  sub_1004DE54C();

  v26 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v26, v28, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v28);
}

void sub_1003EAF54(unsigned __int8 *a1)
{
  v7 = sub_1003E6BDC();
  v2 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v3 = [a1 traitCollection];
  if (v2 == 2)
  {

    v4 = 0.0;
  }

  else if (v2)
  {

    v4 = 1.0;
  }

  else
  {
    v5 = v3;
    v6 = [v3 accessibilityContrast];

    v4 = 0.5;
    if (v6 == 1)
    {
      v4 = 1.0;
    }
  }

  [v7 setAlpha:v4];
}

void sub_1003EB018(uint64_t a1, char a2)
{
  v4 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-v5];
  v7 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  v8 = 1.0;
  v9 = 1.0;
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v10 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    v11 = 2.0;
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
    }

    v12 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    if (*(v12 + 8))
    {
      v8 = 2.0;
    }

    else
    {
      v8 = *v12;
    }

    v9 = v11;
  }

  CGAffineTransformMakeScale(&v27, v9, v8);
  v13 = *&v27.c;
  v14 = *&v27.tx;
  v15 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v15 = *&v27.a;
  v15[1] = v13;
  v15[2] = v14;
  v16 = sub_1003E6524();
  v17 = v15[1];
  *&v27.a = *v15;
  *&v27.c = v17;
  *&v27.tx = v15[2];
  [v16 setTransform:&v27];

  v18 = sub_1003E6470();
  sub_1004DE52C();
  v19 = sub_1004DE53C();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  sub_1004DE54C();

  if ((a2 & 1) == 0)
  {
    v24 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v23.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v25 = *&qword_1006450B0;
    *v24 = xmmword_1006450A0;
    v24[1] = v25;
    sub_1003EBD0C(v20, v21, v22, v23);
  }
}

uint64_t sub_1003EB210(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  sub_1003E6FF4(0x100000000);
  v4 = sub_1003E6BDC();
  v5 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v6 = [a1 traitCollection];
  if (v5 == 2)
  {

    v7 = 0.0;
  }

  else if (v5)
  {

    v7 = 1.0;
  }

  else
  {
    v8 = v6;
    v9 = [v6 accessibilityContrast];

    v7 = 0.5;
    if (v9 == 1)
    {
      v7 = 1.0;
    }
  }

  [v4 setAlpha:v7];

  v10 = objc_opt_self();
  if (a2)
  {
    v11 = [v10 blackColor];
    v12 = 0.3;
    v13 = 9.0;
    v14 = 5.0;
  }

  else
  {
    v11 = [v10 clearColor];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  UIView.Shadow.init(color:opacity:radius:offset:)(v11, &v16, v12, v13, 0.0, v14);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  return UIView.shadow.setter(&v19);
}

uint64_t sub_1003EB380(uint64_t result, uint64_t a2)
{
  if (*(result + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_100527360;
    sub_1002DDE4C(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 windowScene];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v4, 1, 1, sub_1003ECE90, v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v2;
}

void sub_1003EB534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003E71D0();
  }
}

id sub_1003EB5DC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1003EB628(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v4, *a1);
}

id VerticalToggleSlider.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_1003EB758(v4);
}

id sub_1003EB758(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = objc_opt_self();
    v7 = v2;
    if ([v6 areAnimationsEnabled])
    {
      if (qword_10063DB50 != -1)
      {
        swift_once();
      }

      v8 = qword_1006450C0;
      [qword_1006450C0 settlingDuration];
      v10 = v9;
      [v8 mass];
      v12 = v11;
      [v8 stiffness];
      v14 = v13;
      [v8 damping];
      v16 = v15;
      *&v26.tx = sub_1003ED154;
      *&v26.ty = v5;
      *&v26.a = _NSConcreteStackBlock;
      *&v26.b = 1107296256;
      *&v26.c = sub_100012680;
      *&v26.d = &unk_1005F41C0;
      v17 = _Block_copy(&v26);

      [v6 _animateUsingSpringWithDuration:6 delay:v17 options:0 mass:v10 stiffness:0.0 damping:v12 initialVelocity:v14 animations:v16 completion:0.0];
      _Block_release(v17);
    }

    else
    {
      if ([v7 isHighlighted])
      {
        CGAffineTransformMakeScale(&v26, 0.95, 0.95);
        v19 = *&v26.a;
        v18 = *&v26.c;
        v20 = *&v26.tx;
      }

      else
      {
        v18 = xmmword_100527370;
        v19 = xmmword_1005271C0;
        v20 = 0uLL;
      }

      *&v26.a = v19;
      *&v26.c = v18;
      *&v26.tx = v20;
      [v7 setTransform:&v26];
      v21 = *&v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v21)
      {
        v22 = v21;
        if ([v7 isHighlighted])
        {
          CGAffineTransformMakeScale(&v26, 0.9, 0.9);
          v24 = *&v26.a;
          v23 = *&v26.c;
          v25 = *&v26.tx;
        }

        else
        {
          v23 = xmmword_100527370;
          v24 = xmmword_1005271C0;
          v25 = 0uLL;
        }

        *&v26.a = v24;
        *&v26.c = v23;
        *&v26.tx = v25;
        [v22 setTransform:&v26];
      }
    }
  }

  return result;
}

void sub_1003EBA28(char *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v10, 0.95, 0.95);
    v3 = *&v10.a;
    v2 = *&v10.c;
    v4 = *&v10.tx;
  }

  else
  {
    v2 = xmmword_100527370;
    v3 = xmmword_1005271C0;
    v4 = 0uLL;
  }

  *&v10.a = v3;
  *&v10.c = v2;
  *&v10.tx = v4;
  [a1 setTransform:&v10];
  v5 = *&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v5)
  {
    v6 = v5;
    if ([a1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v10, 0.9, 0.9);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    else
    {
      v7 = xmmword_100527370;
      v8 = xmmword_1005271C0;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}

void sub_1003EBB34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    if (v1[v2] == 1)
    {
      [v1 sendActionsForControlEvents:0x10000];
      v3 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2 * (v3 != 2);
      sub_1003E91E4(v3);
      [v1 sendActionsForControlEvents:4096];
      [v1 sendActionsForControlEvents:0x40000];
    }
  }
}

void sub_1003EBD0C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v56 = a1;
  v6 = sub_100004CB8(&qword_100644A50);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v10.f64[0] = v56.n128_u64[0];
  *&v10.f64[1] = v57.n128_u64[0];
  *&v11.f64[0] = v58.n128_u64[0];
  *&v11.f64[1] = v59.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v10), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v11)))) & 1) == 0)
  {
    v12 = sub_1003E6470();
    sub_1004DE52C();
    v13 = sub_1004DE53C();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    sub_1004DE54C();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v9, xmmword_1006450A0), vceqq_f64(v9[1], *&qword_1006450B0)))))
    {
      v43 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
      [*&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] anchorPoint];
      v45 = v44;
      v47 = v46;
      v48 = CGPoint.center.unsafeMutableAddressor();
      swift_beginAccess();
      if (v45 != *v48 || v47 != v48[1])
      {
        [*&v5[v43] setAnchorPoint:?];
        v50 = *&v5[v43];
        [v5 bounds];
        [v50 setFrame:?];
      }

      v51 = &v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
      *v51 = 0x3FF0000000000000;
      *(v51 + 1) = 0;
      *(v51 + 2) = 0;
      *(v51 + 3) = 0x3FF0000000000000;
      *(v51 + 4) = 0;
      *(v51 + 5) = 0;
      v52 = *&v5[v43];
      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v52 setTransform:{&aBlock, *&v56}];
      v53 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v53)
      {
        v54 = *(v51 + 1);
        *&aBlock.a = *v51;
        *&aBlock.c = v54;
        *&aBlock.tx = *(v51 + 2);
        CGAffineTransformInvert(&v65, &aBlock);
        aBlock = v65;
        [v53 setTransform:&aBlock];
      }

      v55 = *&v5[v43];
      [v5 bounds];
      [v55 setFrame:?];
    }

    else
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v5;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1003ED124;
      *(v16 + 24) = v15;
      *&aBlock.tx = sub_100107FC0;
      *&aBlock.ty = v16;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1000121E8;
      *&aBlock.d = &unk_1005F4170;
      v17 = _Block_copy(&aBlock);
      v18 = v5;

      [v14 performWithoutAnimation:v17];
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v20 = sub_1003E6524();
        [v20 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v67.origin.x = v22;
        v67.origin.y = v24;
        v67.size.width = v26;
        v67.size.height = v28;
        v29 = CGRectGetWidth(v67) + v9->f64[1];
        v30 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
        [*&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] frame];
        v31 = v29 / CGRectGetWidth(v68);
        [*&v18[v30] frame];
        v32 = CGRectGetHeight(v69) + v9->f64[0];
        [*&v18[v30] frame];
        Height = CGRectGetHeight(v70);
        CGAffineTransformMakeScale(&aBlock, v31, v32 / Height);
        v59 = *&aBlock.c;
        v58 = *&aBlock.a;
        v65 = aBlock;
        v34 = *&aBlock.tx;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -v9[1].f64[1]);
        static CGAffineTransform.+ infix(_:_:)(&v65, &aBlock, &v62);
        v35 = &v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
        v36 = v63;
        v37 = v64;
        v38 = v62;
        *v35 = v62;
        *(v35 + 1) = v63;
        *(v35 + 2) = v64;
        v39 = *&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
        *&v61.a = v38;
        *&v61.c = v36;
        *&v61.tx = v37;
        [v39 setTransform:&v61];
        v40 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
        v41 = *&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
        if (v41)
        {
          v61 = *v35;
          CGAffineTransformInvert(&v60, &v61);
          v61 = v60;
          [v41 setTransform:&v61];
          v42 = *&v18[v40];
          if (v42)
          {
            *&v61.a = v58;
            *&v61.c = v59;
            *&v61.tx = v34;
            CGAffineTransformInvert(&v60, &v61);
            v61 = v60;
            [v42 setTransform:&v61];
          }
        }
      }
    }
  }
}

void sub_1003EC364(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24] <= 0.0)
  {
    v2 = CGPoint.topCenter.unsafeMutableAddressor();
  }

  else
  {
    v2 = CGPoint.bottomCenter.unsafeMutableAddressor();
  }

  v3 = v2;
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = sub_1003E6470();
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;

  if (v8 != v5 || v10 != v4)
  {
    v12 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
    [*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setAnchorPoint:{v5, v4}];
    v13 = *&a1[v12];
    [a1 bounds];
    [v13 setFrame:?];
  }
}

id sub_1003EC48C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  qword_1006450C0 = result;
  return result;
}

id sub_1003EC4DC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006450C8 = result;
  return result;
}

id sub_1003EC530()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  qword_1006450D0 = result;
  return result;
}

id sub_1003EC580()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1006450D8 = result;
  return result;
}

id sub_1003EC5CC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_1006450E0 = result;
  return result;
}

id sub_1003EC61C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  qword_1006450E8 = result;
  return result;
}

id sub_1003EC668()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  qword_1006450F0 = result;
  return result;
}

id sub_1003EC6BC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006450F8 = result;
  return result;
}

id sub_1003EC710()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_100645100 = result;
  return result;
}

id sub_1003EC764()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_100645108 = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003EC9C8()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

id VerticalToggleSlider.accessibilitySetSliderValue(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    if (v2 > v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_1003E65E0(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return sub_1003E7D48();
  }

  return result;
}

uint64_t sub_1003ECB38()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1003ECB9C(unsigned __int8 *a1)
{
  v2 = sub_1003E6524();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v6 = sub_1003E83A4(v5, v4).n128_u64[0];
  v8 = v7;

  [v2 setAnchorPoint:{v6, v8}];
}

void _s11MusicCoreUI20VerticalToggleSliderC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v0 + v3) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v6 = *&qword_1006450B0;
  *v5 = xmmword_1006450A0;
  v5[1] = v6;
  v7 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  sub_1004DECCC();
  __break(1u);
}

unint64_t sub_1003ECE9C()
{
  result = qword_1006451F0;
  if (!qword_1006451F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006451F0);
  }

  return result;
}

unint64_t sub_1003ECEF4()
{
  result = qword_1006451F8;
  if (!qword_1006451F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006451F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1003ED0D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003ED13C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003ED15C()
{

  return swift_deallocObject();
}

uint64_t sub_1003ED1A4()
{

  return swift_deallocObject();
}

uint64_t sub_1003ED1F4()
{

  return swift_deallocObject();
}

uint64_t sub_1003ED234()
{

  return swift_deallocObject();
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v31 = sub_100004CB8(&qword_100641040);
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - v4;
  v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode] = 0;
  v6 = &v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  v7 = objc_opt_self();
  v30 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v30;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v35 = 0;
  sub_1004D9B2C();
  (*(v3 + 32))(v2 + v15, v5, v31);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v2 + v16) = sub_1003F2CC4();
  v17 = v32;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v32;
  v18 = v17;
  v19 = [v18 stops];
  sub_100006F10(0, &qword_100640D40);
  v20 = sub_1004DD87C();

  if (v20 >> 62)
  {
    v21 = sub_1004DED5C();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = ObjectType;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v21 - 1;
    v34.receiver = v2;
    v34.super_class = v22;
    v21 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = sub_1003ED8B0();
    v2 = result;
    if (!(result >> 62))
    {
      v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_15:

      sub_100004CB8(qword_100640A00);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100511DA0;
      *(v28 + 32) = sub_1004D981C();
      *(v28 + 40) = &protocol witness table for UITraitActiveAppearance;
      sub_1004DE57C();

      swift_unknownObjectRelease();

      return v21;
    }
  }

  result = sub_1004DED5C();
  v24 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = sub_1004DEB2C();
      }

      else
      {
        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v21 addSubview:v26];
      [v27 setAlpha:0.0];
    }

    while (v24 != v25);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}