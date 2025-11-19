uint64_t sub_100001B78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a1;
  v3 = sub_100005740(&qword_1000A5478, &qword_10008AA10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v160 = &v135 - v5;
  v6 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v157 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v158 = &v135 - v10;
  v11 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v170 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v150 = &v135 - v15;
  v16 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v164 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v140 = &v135 - v20;
  v21 = sub_100005740(&qword_1000A5498, &qword_10008AA30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v162 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v161 = &v135 - v26;
  v27 = __chkstk_darwin(v25);
  v159 = &v135 - v28;
  v29 = __chkstk_darwin(v27);
  v154 = &v135 - v30;
  v31 = __chkstk_darwin(v29);
  v145 = &v135 - v32;
  v33 = __chkstk_darwin(v31);
  v139 = &v135 - v34;
  __chkstk_darwin(v33);
  v36 = &v135 - v35;
  v37 = sub_100005740(&qword_1000A54A0, &qword_10008AA38);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v156 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v146 = &v135 - v42;
  v43 = __chkstk_darwin(v41);
  v141 = &v135 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v135 - v46;
  __chkstk_darwin(v45);
  v49 = &v135 - v48;
  v50 = sub_1000848B8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v52(a2, 1, 1, v50);
  v53 = _s8ActivityVMa();
  v54 = v53[5];
  v55 = sub_100084B38();
  v142 = *(v55 - 8);
  v56 = *(v142 + 56);
  v144 = v54;
  v143 = v55;
  v165 = v56;
  v166 = v142 + 56;
  (v56)(a2 + v54, 1, 1);
  v57 = v53[6];
  v58 = sub_100084C88();
  v147 = *(v58 - 8);
  v59 = *(v147 + 56);
  v149 = v57;
  v168 = v147 + 56;
  v169 = v58;
  v167 = v59;
  (v59)(a2 + v57, 1, 1);
  v171 = v53;
  v60 = v53[7];
  v61 = sub_100084C18();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v163 = a2;
  v155 = v60;
  v153 = v61;
  v152 = v63;
  v151 = v62 + 56;
  (v63)(a2 + v60, 1, 1);
  sub_1000057D4();
  sub_100085468();
  sub_100085458();
  v175 = v49;
  sub_100005888(v49, v47, &qword_1000A54A0, &qword_10008AA38);
  v64 = sub_100084C78();
  v65 = *(v64 - 8);
  v173 = *(v65 + 48);
  v174 = v65 + 48;
  if (v173(v47, 1, v64) == 1)
  {
    v137 = v51;
    sub_1000058F0(v47, &qword_1000A54A0, &qword_10008AA38);
    v136 = v52;
    v52(v164, 1, 1, v50);
    v138 = v36;
    v66 = v139;
    sub_100005888(v36, v139, &qword_1000A5498, &qword_10008AA30);
    v67 = sub_100084BB8();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v66, 1, v67) == 1)
    {
      sub_1000058F0(v66, &qword_1000A5498, &qword_10008AA30);
      v69 = 1;
      v70 = v175;
      v71 = v150;
      v72 = v145;
      v73 = v140;
    }

    else
    {
      v73 = v140;
      sub_100084B98();
      (*(v68 + 8))(v66, v67);
      v69 = 0;
      v70 = v175;
      v71 = v150;
      v72 = v145;
    }

    v76 = v141;
    v136(v73, v69, 1, v50);
    v77 = v164;
    v78 = (*(v137 + 48))(v164, 1, v50);
    v36 = v138;
    if (v78 != 1)
    {
      sub_1000058F0(v77, &qword_1000A5490, &qword_10008CD80);
    }
  }

  else
  {
    v74 = v164;
    sub_100084C58();
    (*(v65 + 8))(v47, v64);
    v52(v74, 0, 1, v50);
    v75 = v140;
    (*(v51 + 32))(v140, v74, v50);
    v52(v75, 0, 1, v50);
    v70 = v175;
    v71 = v150;
    v72 = v145;
    v73 = v75;
    v76 = v141;
  }

  v79 = v73;
  v80 = v163;
  sub_100005820(v79, v163, &qword_1000A5490, &qword_10008CD80);
  sub_100005888(v70, v76, &qword_1000A54A0, &qword_10008AA38);
  v81 = v173(v76, 1, v64);
  v82 = v157;
  v83 = v170;
  v84 = v143;
  v148 = v65;
  if (v81 == 1)
  {
    v85 = v64;
    sub_1000058F0(v76, &qword_1000A54A0, &qword_10008AA38);
    v165(v83, 1, 1, v84);
    sub_100005888(v36, v72, &qword_1000A5498, &qword_10008AA30);
    v86 = sub_100084BB8();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v72, 1, v86) == 1)
    {
      sub_1000058F0(v72, &qword_1000A5498, &qword_10008AA30);
      v88 = 1;
    }

    else
    {
      sub_100084B78();
      (*(v87 + 8))(v72, v86);
      v88 = 0;
    }

    v90 = v154;
    v165(v71, v88, 1, v84);
    v91 = v170;
    v92 = (*(v142 + 48))(v170, 1, v84);
    v64 = v85;
    v65 = v148;
    if (v92 != 1)
    {
      sub_1000058F0(v91, &qword_1000A5488, &unk_10008AA20);
    }
  }

  else
  {
    sub_100084C38();
    (*(v65 + 8))(v76, v64);
    v89 = v165;
    v165(v83, 0, 1, v84);
    (*(v142 + 32))(v71, v83, v84);
    v89(v71, 0, 1, v84);
    v90 = v154;
  }

  sub_100005820(v71, v80 + v144, &qword_1000A5488, &unk_10008AA20);
  v93 = v146;
  sub_100005888(v175, v146, &qword_1000A54A0, &qword_10008AA38);
  v94 = v173(v93, 1, v64);
  v95 = v162;
  if (v94 == 1)
  {
    v96 = v64;
    sub_1000058F0(v93, &qword_1000A54A0, &qword_10008AA38);
    v167(v82, 1, 1, v169);
    sub_100005888(v36, v90, &qword_1000A5498, &qword_10008AA30);
    v97 = sub_100084BB8();
    v98 = *(v97 - 8);
    if ((*(v98 + 48))(v90, 1, v97) == 1)
    {
      sub_1000058F0(v90, &qword_1000A5498, &qword_10008AA30);
      v99 = 1;
      v100 = v158;
    }

    else
    {
      v100 = v158;
      sub_100084B68();
      (*(v98 + 8))(v90, v97);
      v99 = 0;
    }

    v103 = v169;
    v167(v100, v99, 1, v169);
    v104 = (*(v147 + 48))(v82, 1, v103);
    v64 = v96;
    v65 = v148;
    if (v104 != 1)
    {
      sub_1000058F0(v82, &qword_1000A5480, &qword_10008AA18);
    }
  }

  else
  {
    sub_100084C28();
    (*(v65 + 8))(v93, v64);
    v101 = v169;
    v102 = v167;
    v167(v82, 0, 1, v169);
    v100 = v158;
    (*(v147 + 32))(v158, v82, v101);
    v102(v100, 0, 1, v101);
  }

  sub_100005820(v100, v80 + v149, &qword_1000A5480, &qword_10008AA18);
  v105 = v156;
  sub_100005888(v175, v156, &qword_1000A54A0, &qword_10008AA38);
  if (v173(v105, 1, v64) == 1)
  {
    sub_1000058F0(v105, &qword_1000A54A0, &qword_10008AA38);
    v106 = 1;
    v107 = v160;
  }

  else
  {
    v107 = v160;
    sub_100084C48();
    (*(v65 + 8))(v105, v64);
    v106 = 0;
  }

  v108 = v36;
  v152(v107, v106, 1, v153);
  sub_100005820(v107, v80 + v155, &qword_1000A5478, &qword_10008AA10);
  v109 = v159;
  sub_100005888(v36, v159, &qword_1000A5498, &qword_10008AA30);
  v110 = sub_100084BB8();
  v111 = *(v110 - 8);
  v112 = *(v111 + 48);
  if (v112(v109, 1, v110) == 1)
  {
    sub_1000058F0(v109, &qword_1000A5498, &qword_10008AA30);
    v113 = 0;
    v114 = 0;
  }

  else
  {
    v113 = sub_100084B88();
    v114 = v115;
    (*(v111 + 8))(v109, v110);
  }

  v116 = v171;
  v117 = (v80 + v171[8]);
  *v117 = v113;
  v117[1] = v114;
  v118 = v161;
  sub_100005888(v108, v161, &qword_1000A5498, &qword_10008AA30);
  v119 = v112(v118, 1, v110);
  if (v119 == 1)
  {
    sub_1000058F0(v118, &qword_1000A5498, &qword_10008AA30);
    v120 = 0;
  }

  else
  {
    v121 = v118;
    v120 = sub_100084B48();
    v122 = v121;
    v116 = v171;
    (*(v111 + 8))(v122, v110);
  }

  v123 = v80 + v116[9];
  *v123 = v120;
  *(v123 + 8) = v119 == 1;
  sub_100005888(v108, v95, &qword_1000A5498, &qword_10008AA30);
  if (v112(v95, 1, v110) == 1)
  {
    sub_1000058F0(v95, &qword_1000A5498, &qword_10008AA30);
    v124 = 0;
    v125 = 0;
  }

  else
  {
    v124 = sub_100084B58();
    v125 = v126;
    (*(v111 + 8))(v95, v110);
  }

  v127 = (v80 + v116[10]);
  *v127 = v124;
  v127[1] = v125;
  v128 = v172;
  v129 = [v172 data];
  v130 = sub_100084808();
  v132 = v131;

  sub_1000058F0(v108, &qword_1000A5498, &qword_10008AA30);
  result = sub_1000058F0(v175, &qword_1000A54A0, &qword_10008AA38);
  v134 = (v80 + v116[11]);
  *v134 = v130;
  v134[1] = v132;
  return result;
}

uint64_t sub_100002CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v75 = a2;
  v3 = sub_100005740(&qword_1000A5478, &qword_10008AA10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v66 = &v58 - v5;
  v6 = sub_100084C18();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  v8 = __chkstk_darwin(v6);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v58 - v10;
  v11 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v70 = &v58 - v13;
  v14 = sub_100084C88();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  v16 = __chkstk_darwin(v14);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &v58 - v18;
  v19 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v58 - v21;
  v23 = sub_100084B38();
  v74 = *(v23 - 8);
  v24 = *(v74 + 64);
  v25 = __chkstk_darwin(v23);
  v64 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v73 = &v58 - v27;
  v28 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v58 - v30;
  v32 = sub_1000848B8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v63 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v58 - v37;
  sub_100005888(v2, v31, &qword_1000A5490, &qword_10008CD80);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    v39 = &qword_1000A5490;
    v40 = &qword_10008CD80;
    v41 = v31;
  }

  else
  {
    (*(v33 + 32))(v38, v31, v32);
    v42 = _s8ActivityVMa();
    sub_100005888(v2 + v42[5], v22, &qword_1000A5488, &unk_10008AA20);
    v43 = v74;
    if ((*(v74 + 48))(v22, 1, v23) == 1)
    {
      (*(v33 + 8))(v38, v32);
      v39 = &qword_1000A5488;
      v40 = &unk_10008AA20;
      v41 = v22;
    }

    else
    {
      v59 = v38;
      v44 = v73;
      (*(v43 + 32))(v73, v22, v23);
      v45 = v70;
      sub_100005888(v2 + v42[6], v70, &qword_1000A5480, &qword_10008AA18);
      v47 = v71;
      v46 = v72;
      if ((*(v71 + 48))(v45, 1, v72) == 1)
      {
        (*(v43 + 8))(v44, v23);
        (*(v33 + 8))(v59, v32);
        v39 = &qword_1000A5480;
        v40 = &qword_10008AA18;
        v41 = v45;
      }

      else
      {
        v58 = v23;
        v48 = v69;
        (*(v47 + 32))(v69, v45, v46);
        v49 = v66;
        sub_100005888(v2 + v42[7], v66, &qword_1000A5478, &qword_10008AA10);
        v51 = v67;
        v50 = v68;
        if ((*(v67 + 48))(v49, 1, v68) != 1)
        {
          (*(v51 + 32))(v65, v49, v50);
          v56 = *(v62 + 8);
          sub_100084838();
          (*(v43 + 16))(v64, v73, v58);
          (*(v47 + 16))(v60, v48, v46);
          v57 = v65;
          (*(v51 + 16))(v61, v65, v50);
          v53 = v75;
          sub_100084C68();
          (*(v51 + 8))(v57, v50);
          (*(v47 + 8))(v69, v72);
          (*(v43 + 8))(v73, v58);
          (*(v33 + 8))(v59, v32);
          v52 = 0;
          goto LABEL_10;
        }

        (*(v47 + 8))(v48, v46);
        (*(v43 + 8))(v73, v58);
        (*(v33 + 8))(v59, v32);
        v39 = &qword_1000A5478;
        v40 = &qword_10008AA10;
        v41 = v49;
      }
    }
  }

  sub_1000058F0(v41, v39, v40);
  v52 = 1;
  v53 = v75;
LABEL_10:
  v54 = sub_100084C78();
  return (*(*(v54 - 8) + 56))(v53, v52, 1, v54);
}

uint64_t sub_1000034D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a1;
  v69 = a2;
  v4 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v54 - v6;
  v7 = sub_100084C88();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  v9 = __chkstk_darwin(v7);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v54 - v11;
  v12 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v54 - v14;
  v16 = sub_100084B38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v61 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v68 = &v54 - v21;
  v22 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v54 - v24;
  v26 = sub_1000848B8();
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v60 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v54 - v30;
  v32 = v3;
  v33 = v3;
  v35 = v34;
  sub_100005888(v33, v25, &qword_1000A5490, &qword_10008CD80);
  if ((*(v35 + 48))(v25, 1, v26) == 1)
  {
    sub_1000058F0(v25, &qword_1000A5490, &qword_10008CD80);
LABEL_12:
    v51 = 1;
    goto LABEL_13;
  }

  (*(v35 + 32))(v31, v25, v26);
  v36 = _s8ActivityVMa();
  sub_100005888(v32 + v36[5], v15, &qword_1000A5488, &unk_10008AA20);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    (*(v35 + 8))(v31, v26);
    sub_1000058F0(v15, &qword_1000A5488, &unk_10008AA20);
    goto LABEL_12;
  }

  v59 = v31;
  v37 = v68;
  (*(v17 + 32))(v68, v15, v16);
  v38 = v65;
  sub_100005888(v32 + v36[6], v65, &qword_1000A5480, &qword_10008AA18);
  v40 = v66;
  v39 = v67;
  if ((*(v66 + 48))(v38, 1, v67) == 1)
  {
    (*(v17 + 8))(v37, v16);
    (*(v35 + 8))(v59, v26);
    sub_1000058F0(v38, &qword_1000A5480, &qword_10008AA18);
    goto LABEL_12;
  }

  v41 = v16;
  v42 = v64;
  (*(v40 + 32))(v64, v38, v39);
  v43 = v32 + v36[9];
  if (*(v43 + 8) == 1 || (v44 = (v32 + v36[8]), (v45 = v44[1]) == 0) || (v46 = (v32 + v36[10]), !v46[1]))
  {
    (*(v40 + 8))(v42, v39);
    (*(v17 + 8))(v68, v41);
    (*(v35 + 8))(v59, v26);
    goto LABEL_12;
  }

  v65 = *v43;
  v58 = *v44;
  v47 = *v46;
  v56 = v45;
  v57 = v47;
  v48 = *(v63 + 8);

  sub_100084838();
  v49 = *(v17 + 16);
  v55 = v41;
  v49(v61, v68, v41);
  v50 = v67;
  (*(v40 + 16))(v62, v42, v67);
  sub_100084BA8();
  (*(v40 + 8))(v42, v50);
  (*(v17 + 8))(v68, v55);
  (*(v35 + 8))(v59, v26);
  v51 = 0;
LABEL_13:
  v52 = sub_100084BB8();
  return (*(*(v52 - 8) + 56))(v69, v51, 1, v52);
}

Swift::Int sub_100003BC8()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085A18(v1);
  return sub_100085A38();
}

Swift::Int sub_100003C3C()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085A18(v1);
  return sub_100085A38();
}

uint64_t sub_100003C80()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x6B6361626C6C6166;
  v4 = 0x6B6361626C6C6166;
  if (v1 != 6)
  {
    v3 = 0x6B6361626C6C6166;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7069636974726170;
  if (v1 != 2)
  {
    v5 = 0x7974697669746361;
  }

  if (*v0)
  {
    v2 = 0x7463656A626FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100003D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000543C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100003DD4(uint64_t a1)
{
  v2 = sub_1000062B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003E10(uint64_t a1)
{
  v2 = sub_1000062B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003E4C(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A5628, &qword_10008AE48);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_1000062B0();
  sub_100085A78();
  LOBYTE(v27) = 0;
  sub_1000848B8();
  sub_100006104(&qword_1000A5630, &type metadata accessor for Date);
  sub_100085888();
  if (!v2)
  {
    v11 = _s8ActivityVMa();
    v12 = v11[5];
    LOBYTE(v27) = 1;
    sub_100084B38();
    sub_100006104(&qword_1000A5638, &type metadata accessor for ActivityEventObject);
    sub_100085888();
    v13 = v11[6];
    LOBYTE(v27) = 2;
    sub_100084C88();
    sub_100006104(&qword_1000A5640, &type metadata accessor for ActivityEventParticipant);
    sub_100085888();
    v14 = v11[7];
    LOBYTE(v27) = 3;
    sub_100084C18();
    sub_100006104(&qword_1000A5648, &type metadata accessor for PersistedActivityEvent.Activities);
    sub_100085888();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v27) = 4;
    sub_100085848();
    v18 = v3 + v11[9];
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 8);
    v27 = v19;
    LOBYTE(v28) = v18;
    v29 = 5;
    type metadata accessor for NotesVersion(0);
    sub_100006104(&qword_1000A5650, type metadata accessor for NotesVersion);
    sub_100085888();
    v20 = (v3 + v11[10]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v27) = 6;
    sub_100085848();
    v23 = (v3 + v11[11]);
    v24 = v23[1];
    v27 = *v23;
    v28 = v24;
    v29 = 7;
    sub_100006464(v27, v24);
    sub_1000064B8();
    sub_1000858D8();
    sub_10000650C(v27, v28);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100004274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = (*(*(sub_100005740(&qword_1000A5478, &qword_10008AA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v54 = &v53 - v4;
  v5 = (*(*(sub_100005740(&qword_1000A5480, &qword_10008AA18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v56 = &v53 - v6;
  v7 = (*(*(sub_100005740(&qword_1000A5488, &unk_10008AA20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v55 = &v53 - v8;
  v9 = (*(*(sub_100005740(&qword_1000A5490, &qword_10008CD80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v57 = &v53 - v10;
  v60 = sub_100005740(&qword_1000A55E8, &qword_10008AE40);
  v58 = *(v60 - 8);
  v11 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = _s8ActivityVMa();
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin();
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000848B8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = v14[5];
  v20 = sub_100084B38();
  v21 = *(*(v20 - 8) + 56);
  v64 = v19;
  v21(&v17[v19], 1, 1, v20);
  v22 = v14[6];
  v23 = sub_100084C88();
  v24 = *(*(v23 - 8) + 56);
  v63 = v22;
  v24(&v17[v22], 1, 1, v23);
  v25 = v14[7];
  v26 = sub_100084C18();
  v27 = *(*(v26 - 8) + 56);
  v62 = v25;
  v66 = v17;
  v27(&v17[v25], 1, 1, v26);
  v28 = a1[3];
  v29 = a1[4];
  v65 = a1;
  sub_10000626C(a1, v28);
  sub_1000062B0();
  v59 = v13;
  v30 = v61;
  sub_100085A68();
  if (v30)
  {
    v34 = v64;
    v35 = v62;
    v36 = v63;
    sub_100006304(v65);
    v37 = v66;
    sub_1000058F0(v66, &qword_1000A5490, &qword_10008CD80);
    sub_1000058F0(v37 + v34, &qword_1000A5488, &unk_10008AA20);
    sub_1000058F0(v37 + v36, &qword_1000A5480, &qword_10008AA18);
    sub_1000058F0(v37 + v35, &qword_1000A5478, &qword_10008AA10);
  }

  else
  {
    v32 = v55;
    v31 = v56;
    v61 = v14;
    LOBYTE(v67) = 0;
    sub_100006104(&qword_1000A55F8, &type metadata accessor for Date);
    v33 = v57;
    sub_1000857D8();
    sub_100005820(v33, v66, &qword_1000A5490, &qword_10008CD80);
    LOBYTE(v67) = 1;
    sub_100006104(&qword_1000A5600, &type metadata accessor for ActivityEventObject);
    v38 = v32;
    sub_1000857D8();
    v39 = v66;
    sub_100005820(v38, &v66[v64], &qword_1000A5488, &unk_10008AA20);
    LOBYTE(v67) = 2;
    sub_100006104(&qword_1000A5608, &type metadata accessor for ActivityEventParticipant);
    sub_1000857D8();
    sub_100005820(v31, v39 + v63, &qword_1000A5480, &qword_10008AA18);
    LOBYTE(v67) = 3;
    sub_100006104(&qword_1000A5610, &type metadata accessor for PersistedActivityEvent.Activities);
    v40 = v54;
    sub_1000857D8();
    sub_100005820(v40, v39 + v62, &qword_1000A5478, &qword_10008AA10);
    LOBYTE(v67) = 4;
    v41 = sub_100085798();
    v42 = v61;
    v43 = (v39 + v61[8]);
    *v43 = v41;
    v43[1] = v44;
    type metadata accessor for NotesVersion(0);
    v68 = 5;
    sub_100006104(&qword_1000A5618, type metadata accessor for NotesVersion);
    sub_1000857D8();
    v45 = v39 + v42[9];
    v46 = BYTE8(v67);
    *v45 = v67;
    *(v45 + 8) = v46;
    LOBYTE(v67) = 6;
    v47 = sub_100085798();
    v48 = (v39 + v42[10]);
    *v48 = v47;
    v48[1] = v49;
    v68 = 7;
    sub_100006350();
    v50 = v59;
    sub_100085828();
    (*(v58 + 8))(v50, v60);
    v51 = v66;
    *&v66[v42[11]] = v67;
    sub_1000063A4(v51, v53);
    sub_100006304(v65);
    return sub_100006408(v51);
  }
}

double variable initialization expression of ICArchiveImporter.didReceiveMemoryWarningObserver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of ICArchiveExporterConfiguration.creator@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A5428 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&xmmword_1000B17B0 + 1);
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_1000B17A8;
  *(a1 + 40) = v1;
}

uint64_t variable initialization expression of ICArchiveCreator.softwareIdentifier()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_100085098();

  return v2;
}

uint64_t variable initialization expression of ICArchiveCreator.softwareVersionName()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_100085008();

  if (!*(v2 + 16) || (v3 = sub_100039138(0xD00000000000001ALL, 0x8000000100086640), (v4 & 1) == 0))
  {

    return 0;
  }

  sub_1000056E4(*(v2 + 56) + 32 * v3, v7);

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

CFStringRef variable initialization expression of ICArchiveCreator.softwareVersion()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_100085008();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v4 = sub_100085098();
  if (!*(v2 + 16))
  {

    goto LABEL_10;
  }

  v6 = sub_100039138(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_1000056E4(*(v2 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004F80()
{
  v1 = *v0;
  sub_100085098();
  v2 = sub_100085178();

  return v2;
}

uint64_t sub_100004FBC()
{
  v1 = *v0;
  sub_100085098();
  sub_100085118();
}

Swift::Int sub_100005010()
{
  v1 = *v0;
  sub_100085098();
  sub_100085A08();
  sub_100085118();
  v2 = sub_100085A38();

  return v2;
}

uint64_t sub_100005084(uint64_t a1, id *a2)
{
  result = sub_100085078();
  *a2 = 0;
  return result;
}

uint64_t sub_1000050FC(uint64_t a1, id *a2)
{
  v3 = sub_100085088();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000517C@<X0>(void *a1@<X8>)
{
  sub_100085098();
  v2 = sub_100085068();

  *a1 = v2;
  return result;
}

uint64_t sub_1000051C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100085098();
  v6 = v5;
  if (v4 == sub_100085098() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100085948();
  }

  return v9 & 1;
}

uint64_t sub_100005250@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100085098();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000527C(uint64_t a1)
{
  v2 = sub_100006104(&qword_1000A5670, type metadata accessor for URLResourceKey);
  v3 = sub_100006104(&qword_1000A5678, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100085068();

  *a2 = v5;
  return result;
}

uint64_t sub_100005380(uint64_t a1)
{
  v2 = sub_100006104(&qword_1000A5660, type metadata accessor for Key);
  v3 = sub_100006104(&qword_1000A5668, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000543C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000065707954 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100086660 == a2 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xED0000656C746954 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000056E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005740(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _s8ActivityVMa()
{
  result = qword_1000A5508;
  if (!qword_1000A5508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000057D4()
{
  result = qword_1000A54A8;
  if (!qword_1000A54A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A54A8);
  }

  return result;
}

uint64_t sub_100005820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005740(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005888(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005740(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000058F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005740(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005964(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100005740(&qword_1000A5478, &qword_10008AA10);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100005B54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100005740(&qword_1000A5488, &unk_10008AA20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100005740(&qword_1000A5480, &qword_10008AA18);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_100005740(&qword_1000A5478, &qword_10008AA10);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100005D20()
{
  sub_100005EC8(319, &qword_1000A5518, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_100005EC8(319, &qword_1000A5520, &type metadata accessor for ActivityEventObject);
    if (v1 <= 0x3F)
    {
      sub_100005EC8(319, &qword_1000A5528, &type metadata accessor for ActivityEventParticipant);
      if (v2 <= 0x3F)
      {
        sub_100005EC8(319, &qword_1000A5530, &type metadata accessor for PersistedActivityEvent.Activities);
        if (v3 <= 0x3F)
        {
          sub_100006768(319, &qword_1000A5538, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100005EC8(319, &unk_1000A5540, type metadata accessor for NotesVersion);
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

void sub_100005EC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000854E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 _s16AttributedStringV14AttributeRangeVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100005FCC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005FD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005FF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100006104(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10000626C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000062B0()
{
  result = qword_1000A55F0;
  if (!qword_1000A55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A55F0);
  }

  return result;
}

uint64_t sub_100006304(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100006350()
{
  result = qword_1000A5620;
  if (!qword_1000A5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5620);
  }

  return result;
}

uint64_t sub_1000063A4(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006408(uint64_t a1)
{
  v2 = _s8ActivityVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000064B8()
{
  result = qword_1000A5658;
  if (!qword_1000A5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5658);
  }

  return result;
}

uint64_t sub_10000650C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t _s8ActivityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8ActivityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s16AttributedStringV14AttributeRangeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16AttributedStringV14AttributeRangeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100006768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1000067BC()
{
  result = qword_1000A5690;
  if (!qword_1000A5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5690);
  }

  return result;
}

unint64_t sub_100006814()
{
  result = qword_1000A5698;
  if (!qword_1000A5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5698);
  }

  return result;
}

unint64_t sub_10000686C()
{
  result = qword_1000A56A0;
  if (!qword_1000A56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56A0);
  }

  return result;
}

id sub_100006914(uint64_t a1, uint64_t a2, char *a3)
{
  result = [v3 managedObjectContext];
  if (result)
  {
    v8 = result;
    v9 = *a3;
    if ((*a3 & 1) == 0 || (sub_100008250(0, &qword_1000A56D8, ICAccount_ptr), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v11 = sub_100085068(), v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v11 context:v8], v11, !v12))
    {
      v12 = sub_100007594(a1, a2, v9 & 1);
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100006A28()
{
  v1 = objc_opt_self();
  v2 = [v0 defaultFolder];
  v3 = [v1 newEmptyNoteInFolder:v2];

  return v3;
}

__objc2_class_ro *sub_100006AB8(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v3;
  result = [v5 managedObjectContext];
  if (result)
  {
    v10 = result;
    v11 = *a3;
    v12 = &ICArchiveNotesPreviewer;
    v13 = [v5 canAddSubfolder];
    if (v11)
    {
      if (v13)
      {
        if ([v5 canAddSubfolder])
        {
          sub_100008250(0, &qword_1000A56D0, ICFolder_ptr);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = sub_100085068();
          v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v10];

          if (v12)
          {
            if (sub_1000854C8())
            {
              goto LABEL_28;
            }

            v16 = [v5 objectID];
            v17 = *(a3 + 2);
            if (v17)
            {
              v18 = [v17 objectID];
              v19 = v18;
              if (v16)
              {
                if (v18)
                {
                  sub_100008250(0, &qword_1000A56C8, NSManagedObjectID_ptr);
                  v20 = sub_1000854C8();

                  if (v20)
                  {
                    goto LABEL_28;
                  }

LABEL_26:
                  if ([(__objc2_class_ro *)v12 isMovable])
                  {
                    [(__objc2_class_ro *)v12 unmarkForDeletion];
                    [(__objc2_class_ro *)v12 setParent:v5];
                    goto LABEL_29;
                  }

LABEL_28:
                  [(__objc2_class_ro *)v12 unmarkForDeletion];
                  goto LABEL_29;
                }
              }

              else
              {
                v16 = v18;
                if (!v18)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (!v16)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }

          v26 = objc_opt_self();
          v27 = sub_100085068();
          v12 = [v26 newFolderWithIdentifier:v27 parentFolder:v5];

LABEL_21:
          v28 = sub_100085068();
          [(__objc2_class_ro *)v12 updateChangeCountWithReason:v28];

          return v12;
        }

        v21 = v5;
LABEL_18:
        v25 = v21;

        return v25;
      }

      sub_1000081FC();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
    }

    else
    {
      if (v13)
      {
        v21 = [objc_opt_self() newFolderInParentFolder:v5];
        goto LABEL_18;
      }

      v23 = [v5 account];
      v24 = sub_100007594(a1, a2, 0);
      if (!v4)
      {
        v12 = v24;

        goto LABEL_21;
      }

      v10 = v23;
    }

LABEL_29:

    return v12;
  }

  __break(1u);
  return result;
}

id sub_100006DF8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  result = [v4 managedObjectContext];
  if (result)
  {
    v9 = result;
    v10 = *a3;
    v11 = [v4 canMoveAddOrDeleteContents];
    if (v10)
    {
      if (v11)
      {
        sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v13 = sub_100085068();
        v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v9];

        if (v10)
        {
          v14 = [v4 objectID];
          v15 = *(a3 + 2);
          if (v15)
          {
            v16 = [v15 objectID];
            v17 = v16;
            if (v14)
            {
              if (v16)
              {
                sub_100008250(0, &qword_1000A56C8, NSManagedObjectID_ptr);
                v18 = sub_1000854C8();

                if (v18)
                {
                  goto LABEL_22;
                }

LABEL_19:
                if ([v10 isMovable])
                {
                  [v10 unmarkForDeletion];
                  [v10 setFolder:v4];
                  goto LABEL_21;
                }

LABEL_22:
                [v10 unmarkForDeletion];

                return v10;
              }
            }

            else
            {
              v14 = v16;
              if (!v16)
              {
                goto LABEL_22;
              }
            }
          }

          else if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        v22 = objc_opt_self();
        v23 = sub_100085068();
        v10 = [v22 newEmptyNoteWithIdentifier:v23 folder:v4];

LABEL_21:
        v24 = sub_100085068();
        [v10 updateChangeCountWithReason:v24];

        return v10;
      }

      sub_1000081FC();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }

    else
    {
      if (v11)
      {
        v10 = [objc_opt_self() newEmptyNoteInFolder:v4];
        goto LABEL_21;
      }

      v20 = [v4 account];
      v21 = [v20 defaultFolder];

      v10 = sub_100006DF8(a1, a2, a3);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000710C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [v3 account];
  v8 = sub_100007440(a1, a2, *a3 & 1);

  return v8;
}

uint64_t sub_1000071C0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 account];
  if (v8)
  {
    v9 = v8;
    a2 = sub_100007440(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1000081FC();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_1000072C8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 note];
  if (v8 && (v9 = v8, v10 = [v8 account], v9, v10))
  {
    a2 = sub_100007440(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1000081FC();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_1000073B0()
{
  sub_1000081FC();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

uint64_t sub_100007440(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100085068();
  v6 = [objc_opt_self() hashtagWithDisplayText:v5 account:v3 createIfNecessary:1];

  if (v6)
  {
    if (a3)
    {
      v7 = sub_100085068();
      [v6 setDisplayText:v7];

      [v6 unmarkForDeletion];
      v8 = sub_100085068();
      [v6 updateChangeCountWithReason:v8];
    }

    return v6;
  }

  else
  {
    result = sub_100085708();
    __break(1u);
  }

  return result;
}

id sub_100007594(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  result = [v3 managedObjectContext];
  if (result)
  {
    v7 = result;
    if (a3)
    {
      sub_100008250(0, &qword_1000A56D0, ICFolder_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = sub_100085068();
      v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v9 context:v7];

      if (v10)
      {
        if ([v10 isMovable])
        {
          [v10 setParent:0];
        }

        else
        {
          [v10 unmarkForDeletion];
        }

        goto LABEL_9;
      }

      v11 = objc_opt_self();
      v12 = sub_100085068();
      v10 = [v11 newFolderWithIdentifier:v12 account:v4];
    }

    else
    {
      v10 = [objc_opt_self() newFolderInAccount:v4];
    }

    v13 = sub_100085068();
    [v10 updateChangeCountWithReason:v13];

    v7 = v13;
LABEL_9:

    return v10;
  }

  __break(1u);
  return result;
}

id sub_10000774C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v12 = result;
    if (a3)
    {
      sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = sub_100085068();
      v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v12];

      if (!v15)
      {
        v20 = objc_opt_self();
        v21 = sub_100085068();
        v22 = [v20 newAttachmentWithIdentifier:v21 note:v4];

        return v22;
      }

      v16 = v15;
      [v16 setNote:v4];
      [v16 setParentAttachment:0];

      [v16 unmarkForDeletion];
      v17 = sub_100085068();
      [v16 updateChangeCountWithReason:v17];
    }

    else
    {
      v18 = objc_opt_self();
      sub_100084908();
      sub_1000848D8();
      (*(v7 + 8))(v10, v6);
      v19 = sub_100085068();

      v16 = [v18 newAttachmentWithIdentifier:v19 note:v3];
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000079EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v12 = result;
    if (a3)
    {
      sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = sub_100085068();
      v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v12];

      if (v15)
      {
        v16 = v15;
        [v16 setNote:v4];
        [v16 setParentAttachment:0];

        [v16 unmarkForDeletion];
        v17 = sub_100085068();
        [v16 updateChangeCountWithReason:v17];

        return v16;
      }

      v18 = sub_100085068();
      v19 = [v4 addInlineAttachmentWithIdentifier:v18];
    }

    else
    {
      sub_100084908();
      sub_1000848D8();
      (*(v7 + 8))(v10, v6);
      v18 = sub_100085068();

      v19 = [v4 addInlineAttachmentWithIdentifier:v18];
    }

    v20 = v19;

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100007C64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = result;
  if (a3)
  {
    sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_100085068();
    v16 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v12];

    if (v16)
    {
      v17 = v16;
      [v17 setNote:v13];
      [v17 setParentAttachment:v4];

      [v17 unmarkForDeletion];
    }

    else
    {
      v20 = objc_opt_self();
      v21 = sub_100085068();
      v17 = [v20 newAttachmentWithIdentifier:v21 note:v13];

      [v17 setParentAttachment:v4];
    }
  }

  else
  {
    v18 = objc_opt_self();
    sub_100084908();
    sub_1000848D8();
    (*(v7 + 8))(v10, v6);
    v19 = sub_100085068();

    v17 = [v18 newAttachmentWithIdentifier:v19 note:v13];

    [v17 setParentAttachment:v4];
  }

  v22 = sub_100085068();
  [v17 updateChangeCountWithReason:v22];

  return v17;
}

id sub_100007F58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = result;
  if (a3)
  {
    sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_100085068();
    v16 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v12];

    if (v16)
    {
      v17 = v16;
      [v17 setNote:v13];
      [v17 setParentAttachment:v4];

      [v17 unmarkForDeletion];
    }

    else
    {
      v19 = sub_100085068();
      v17 = [v3 addInlineAttachmentWithIdentifier:v19];
    }
  }

  else
  {
    sub_100084908();
    sub_1000848D8();
    (*(v7 + 8))(v10, v6);
    v18 = sub_100085068();

    v17 = [v3 addInlineAttachmentWithIdentifier:v18];
  }

  v20 = sub_100085068();
  [v17 updateChangeCountWithReason:v20];

  return v17;
}

unint64_t sub_1000081FC()
{
  result = qword_1000A56B8;
  if (!qword_1000A56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56B8);
  }

  return result;
}

uint64_t sub_100008250(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000082C8@<X0>(uint64_t isEscapingClosureAtFileLocation@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = &_swiftEmptyArrayStorage;
  v8[1] = &_swiftEmptyArrayStorage;
  v9 = v8 + v5[8];
  sub_100084D48();
  v10 = (v8 + v5[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v8 + v5[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = v8 + v5[11];
  *v12 = 0;
  v12[8] = 1;
  v13 = v8 + v5[12];
  *v13 = 0;
  v13[8] = 1;
  v14 = [isEscapingClosureAtFileLocation managedObjectContext];
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = isEscapingClosureAtFileLocation;
  *(v16 + 24) = v8;
  v17 = swift_allocObject();
  v18 = sub_100008AD0;
  *(v17 + 16) = sub_100008AD0;
  *(v17 + 24) = v16;
  aBlock[4] = sub_100009024;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000699A4;
  aBlock[3] = &unk_10009EAA8;
  v19 = _Block_copy(aBlock);
  v20 = isEscapingClosureAtFileLocation;

  [v15 performBlockAndWait:v19];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:

    v18 = 0;
  }

  sub_10000908C(v8, a2, type metadata accessor for NoteMetadata);
  return sub_10000852C(v18);
}

uint64_t sub_10000852C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000853C(void *a1, uint64_t *a2)
{
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100085098();
    v21 = v20;

    v22 = (a2 + *(type metadata accessor for NoteMetadata(0) + 28));
    v23 = v22[1];
    *v22 = v19;
    v22[1] = v21;
  }

  v24 = [a1 title];
  if (v24)
  {
    v25 = v24;
    v26 = sub_100085098();
    v28 = v27;

    v29 = (a2 + *(type metadata accessor for NoteMetadata(0) + 32));
    v30 = v29[1];
    *v29 = v26;
    v29[1] = v28;
  }

  v31 = [a1 creationDate];
  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = v31;
  sub_100084888();

  (*(v5 + 32))(v16, v14, v4);
  sub_100084878();
  v34 = floor(v33 * 1000.0);
  result = (*(v5 + 8))(v16, v4);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = a2 + *(type metadata accessor for NoteMetadata(0) + 36);
  *v36 = v34;
  v36[8] = 0;
LABEL_10:
  v37 = [a1 modificationDate];
  if (v37)
  {
    v38 = v52;
    v39 = v37;
    sub_100084888();

    (*(v5 + 32))(v11, v38, v4);
    sub_100084878();
    v41 = floor(v40 * 1000.0);
    result = (*(v5 + 8))(v11, v4);
    if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v41 > -9.22337204e18)
      {
        if (v41 < 9.22337204e18)
        {
          v42 = a2 + *(type metadata accessor for NoteMetadata(0) + 40);
          *v42 = v41;
          v42[8] = 0;
          goto LABEL_15;
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_15:
  v43 = swift_allocObject();
  *(v43 + 16) = &_swiftEmptyArrayStorage;
  v44 = v43 + 16;
  v57 = sub_100009044;
  v58 = v43;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_100008D1C;
  v56 = &unk_10009EAF8;
  v45 = _Block_copy(&aBlock);

  [a1 enumerateInlineAttachmentsInOrderUsingBlock:v45];
  _Block_release(v45);
  swift_beginAccess();
  v46 = *v44;
  if (*(*v44 + 16))
  {
    v47 = *a2;
    *a2 = v46;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = &_swiftEmptyArrayStorage;
  v49 = (v48 + 16);
  v57 = sub_100009084;
  v58 = v48;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_100008D1C;
  v56 = &unk_10009EB48;
  v50 = _Block_copy(&aBlock);

  [a1 enumerateAttachmentsInOrderUsingBlock:v50];
  _Block_release(v50);
  swift_beginAccess();
  v51 = a2[1];
  a2[1] = *v49;
}

uint64_t sub_100008A98()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100008AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100084568();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isHashtagAttachment];
  if (result)
  {
    v13 = [a1 displayText];
    if (!v13)
    {
      sub_100085098();
      v13 = sub_100085068();
    }

    v14 = [objc_opt_self() ic_hashtagCharacterString];
    sub_100085098();

    sub_100084538();

    isa = sub_100084558().super.isa;
    (*(v8 + 8))(v11, v7);
    v16 = [v13 ic_stringByTrimmingLeadingCharactersInSet:isa];

    v17 = sub_100085098();
    v19 = v18;

    swift_beginAccess();
    v20 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_10000EAF0(0, *(v20 + 2) + 1, 1, v20);
      *(a5 + 16) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_10000EAF0((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = v17;
    *(v24 + 5) = v19;
    *(a5 + 16) = v20;
    return swift_endAccess();
  }

  return result;
}

void sub_100008D1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100008DA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100005740(&qword_1000A56E0, &unk_10008B050);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AudioAttachmentMetadata(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  sub_10000C304(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000058F0(v10, &qword_1000A56E0, &unk_10008B050);
  }

  sub_10000908C(v10, v18, type metadata accessor for AudioAttachmentMetadata);
  sub_1000090F4(v18, v16);
  swift_beginAccess();
  v20 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_10000EBFC(0, v20[2] + 1, 1, v20);
    *(a5 + 16) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_10000EBFC(v22 > 1, v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  sub_10000908C(v16, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, type metadata accessor for AudioAttachmentMetadata);
  *(a5 + 16) = v20;
  swift_endAccess();
  return sub_10000997C(v18);
}

uint64_t sub_10000902C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000904C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000908C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000090F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100009158(void *a1, void *a2, void *a3)
{
  v49 = a3;
  v5 = type metadata accessor for AudioAttachmentMetadata(0);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5 - 8);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000848B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NoteMetadata(0);
  v13 = v12[8];
  v54 = a1;
  v14 = (a1 + v13);
  v15 = v14[1];
  v53 = v15 != 0;
  if (v15)
  {
    v16 = *v14;

    v17 = sub_100085068();

    [a2 setTitle:v17];
  }

  v18 = (v54 + v12[9]);
  if ((v18[1] & 1) == 0)
  {
    v19 = *v18 / 1000.0;
    sub_100084868();
    isa = sub_100084848().super.isa;
    (*(v8 + 8))(v11, v7);
    [a2 setCreationDate:isa];

    v53 = 1;
  }

  v21 = (v54 + v12[10]);
  if ((v21[1] & 1) == 0)
  {
    v22 = *v21 / 1000.0;
    sub_100084868();
    v23 = sub_100084848().super.isa;
    (*(v8 + 8))(v11, v7);
    [a2 setModificationDate:v23];

    v53 = 1;
  }

  v24 = [a2 account];
  v57 = a2;
  v52 = v6;
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    v27 = *(*v54 + 16);
    if (!v27)
    {
      goto LABEL_19;
    }

    v28 = objc_opt_self();
    v29 = 0;
    v55 = -v27;
    v56 = v28;
    v30 = v26 + 40;
    v48 = v26 + 40;
    while (1)
    {
      v31 = (v30 + 16 * v29++);
      while (1)
      {
        if ((v29 - 1) >= *(v26 + 16))
        {
          __break(1u);
        }

        v33 = *(v31 - 1);
        v32 = *v31;

        v34 = v25;
        v35 = sub_100085068();

        v36 = [v56 hashtagWithDisplayText:v35 account:v34 createIfNecessary:1];

        if (!v36)
        {
          goto LABEL_11;
        }

        if ([a2 convertTextInNoteBodyToHashtag:v36])
        {
          break;
        }

        v37 = [a2 addHashtagToNoteBodyIfMissing:v36];

        if (v37)
        {

          goto LABEL_18;
        }

LABEL_11:
        ++v29;
        v31 += 2;
        if (v55 + v29 == 1)
        {
          goto LABEL_19;
        }
      }

LABEL_18:
      v53 = 1;
      v30 = v48;
      if (!(v55 + v29))
      {
LABEL_19:

        break;
      }
    }
  }

  v38 = v54[1];
  v39 = *(v38 + 16);
  v40 = v51;
  if (v39)
  {
    v41 = *(v50 + 80);
    v42 = v38 + ((v41 + 32) & ~v41);
    v43 = *(v50 + 72);
    do
    {
      sub_1000090F4(v42, v40);
      v44 = swift_allocObject();
      sub_10000908C(v40, v44 + ((v41 + 16) & ~v41), type metadata accessor for AudioAttachmentMetadata);
      aBlock[4] = sub_100009B04;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008D1C;
      aBlock[3] = &unk_10009EB98;
      v45 = _Block_copy(aBlock);

      [v57 enumerateAttachmentsInOrderUsingBlock:v45];
      _Block_release(v45);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  if (v53)
  {
    [v57 save];
    aBlock[0] = 0;
    if ([v49 save:aBlock])
    {
      v46 = aBlock[0];
    }

    else
    {
      v47 = aBlock[0];
      sub_100084688();

      swift_willThrow();
    }
  }
}

void sub_1000096F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = [a1 fileURL];
  if (v14)
  {
    v15 = v14;
    sub_100084768();

    v16 = sub_1000847C8();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  }

  else
  {
    v16 = sub_1000847C8();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  sub_100009B9C(v11, v13);
  sub_1000847C8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {
    sub_1000058F0(v13, &qword_1000A56E8, &qword_10008D350);
    return;
  }

  v18 = sub_1000846E8();
  v20 = v19;
  (*(v17 + 8))(v13, v16);
  v21 = (a5 + *(type metadata accessor for AudioAttachmentMetadata(0) + 24));
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  if (v18 == v22 && v20 == v23)
  {
    v26 = v21[1];

    goto LABEL_16;
  }

  v25 = sub_100085948();

  if (v25)
  {
LABEL_16:
    sub_10000C7D0(a1);
  }
}

uint64_t sub_10000997C(uint64_t a1)
{
  v2 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000099D8()
{
  v1 = (type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100084D58();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = *(v0 + v3 + v1[8] + 8);

  v8 = *(v0 + v3 + v1[9] + 8);

  v9 = *(v0 + v3 + v1[10] + 8);

  v10 = *(v0 + v3 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100009B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_1000096F0(a1, a2, a3, a4, v10);
}

uint64_t sub_100009B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009C28()
{
  v0 = sub_100084EC8();
  sub_10000B64C(v0, qword_1000B1750);
  sub_10000B614(v0, qword_1000B1750);
  sub_100005740(&qword_1000A5738, &qword_10008B340);
  v1 = (sub_100005740(&qword_1000A5740, &qword_10008B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008B060;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_100084EA8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "creation_date_millis_since_epoch";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "last_modified_date_millis_since_epoch";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "tags";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "audio_attachments_meta";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  return sub_100084EB8();
}

uint64_t sub_100009F0C()
{
  result = sub_100084DA8();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        v3 = v0;
        switch(result)
        {
          case 4:
            v7 = *(type metadata accessor for NoteMetadata(0) + 40);
LABEL_18:
            v0 = v3;
            sub_100084DC8();
            break;
          case 5:
            sub_100084DD8();
            break;
          case 6:
            type metadata accessor for AudioAttachmentMetadata(0);
            sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata);
            sub_100084DF8();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v5 = v0;
            v6 = *(type metadata accessor for NoteMetadata(0) + 28);
            break;
          case 2:
            v5 = v0;
            v8 = *(type metadata accessor for NoteMetadata(0) + 32);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for NoteMetadata(0) + 36);
            goto LABEL_18;
          default:
            goto LABEL_5;
        }

        v0 = v5;
        sub_100084DE8();
      }

LABEL_5:
      result = sub_100084DA8();
    }
  }

  return result;
}

uint64_t sub_10000A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000ACA4(v3, a1, a2, a3, type metadata accessor for NoteMetadata);
  if (!v4)
  {
    sub_10000AD28(v3, a1, a2, a3, type metadata accessor for NoteMetadata);
    sub_10000A254(v3);
    sub_10000A2CC(v3);
    if (*(*v3 + 16))
    {
      sub_100084E78();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for AudioAttachmentMetadata(0);
      sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata);
      sub_100084E98();
    }

    v9 = v3 + *(type metadata accessor for NoteMetadata(0) + 24);
    return sub_100084D38();
  }

  return result;
}

uint64_t sub_10000A254(uint64_t a1)
{
  result = type metadata accessor for NoteMetadata(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_100084E68();
  }

  return result;
}

uint64_t sub_10000A2CC(uint64_t a1)
{
  result = type metadata accessor for NoteMetadata(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_100084E68();
  }

  return result;
}

uint64_t sub_10000A344@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[6];
  result = sub_100084D48();
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  v10[8] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t sub_10000A3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_100084D58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000A44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_100084D58();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_10000A4C0(uint64_t a1, uint64_t a2))()
{
  result = ICArchivePreviewer.Errors.rawValue.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_10000A518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B3C4(&qword_1000A5730, type metadata accessor for NoteMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000A5BC(uint64_t a1)
{
  v2 = sub_10000B3C4(&qword_1000A5718, type metadata accessor for NoteMetadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10000A62C()
{
  sub_10000B3C4(&qword_1000A5718, type metadata accessor for NoteMetadata);

  return sub_100084E48();
}

uint64_t sub_10000A6B0()
{
  v0 = sub_100084EC8();
  sub_10000B64C(v0, qword_1000B1768);
  sub_10000B614(v0, qword_1000B1768);
  sub_100005740(&qword_1000A5738, &qword_10008B340);
  v1 = (sub_100005740(&qword_1000A5740, &qword_10008B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008B060;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_100084EA8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "audio_file_name";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "audio_name";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "transcript_file_name";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "summary_file_name";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_call_recording";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  return sub_100084EB8();
}

uint64_t sub_10000A97C()
{
  while (1)
  {
    result = sub_100084DA8();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for AudioAttachmentMetadata(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for AudioAttachmentMetadata(0) + 36);
LABEL_3:
          v0 = 0;
          sub_100084DE8();
          break;
        case 6:
          v5 = *(type metadata accessor for AudioAttachmentMetadata(0) + 40);
          sub_100084DB8();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for AudioAttachmentMetadata(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for AudioAttachmentMetadata(0) + 24);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for AudioAttachmentMetadata(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_10000AAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000ABB4(v3);
  if (!v4)
  {
    sub_10000AC2C(v3);
    sub_10000ACA4(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata);
    sub_10000AD28(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata);
    sub_10000ADAC(v3);
    sub_10000AE24(v3);
    return sub_100084D38();
  }

  return result;
}

uint64_t sub_10000ABB4(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000AC2C(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000ADAC(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_100084E88();
  }

  return result;
}

uint64_t sub_10000AE24(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return sub_100084E58();
  }

  return result;
}

uint64_t sub_10000AEA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100084D48();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v11) = 2;
  return result;
}

uint64_t sub_10000AF20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084D58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000AF88(uint64_t a1)
{
  v3 = sub_100084D58();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_10000B040(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B3C4(&qword_1000A5750, type metadata accessor for AudioAttachmentMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10000B0E0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100084EC8();
  v6 = sub_10000B614(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_10000B17C(uint64_t a1)
{
  v2 = sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10000B1E8()
{
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

uint64_t sub_10000B240()
{
  sub_10000B3C4(&qword_1000A56F8, type metadata accessor for AudioAttachmentMetadata);

  return sub_100084E48();
}

Swift::Int sub_10000B2BC()
{
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

uint64_t sub_10000B3C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000B504(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B614(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000B64C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000B6B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_100085948() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10000B740(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for AudioAttachmentMetadata(0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000090F4(v13, v10);
        sub_1000090F4(v14, v7);
        v16 = sub_10000B8B4(v10, v7);
        sub_10000997C(v7);
        sub_10000997C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10000B8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_100085948();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_100085948();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_100085948();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_100085948();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_100085948();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 != 2)
  {
    if (v46 != 2 && ((v45 ^ v46) & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v46 != 2)
  {
    return 0;
  }

LABEL_50:
  sub_100084D58();
  sub_10000B3C4(&qword_1000A5748, &type metadata accessor for UnknownStorage);
  return sub_100085058() & 1;
}

uint64_t sub_10000BB24(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_100085948();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_100085948();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v4;
  if (sub_10000B6B0(*a1, *a2) & 1) != 0 && (sub_10000B740(a1[1], a2[1]))
  {
    v32 = v31[6];
    sub_100084D58();
    sub_10000B3C4(&qword_1000A5748, &type metadata accessor for UnknownStorage);
    return sub_100085058() & 1;
  }

  return 0;
}

uint64_t sub_10000BD0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100084D58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10000BDCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100084D58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000BE70()
{
  sub_10000C2A0(319, &qword_1000A57C0, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10000BFA8();
    if (v1 <= 0x3F)
    {
      sub_100084D58();
      if (v2 <= 0x3F)
      {
        sub_10000C2A0(319, &qword_1000A5538, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10000C2A0(319, &unk_1000A57D0, &type metadata for Int64, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000BFA8()
{
  if (!qword_1000A57C8)
  {
    type metadata accessor for AudioAttachmentMetadata(255);
    v0 = sub_100085278();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A57C8);
    }
  }
}

uint64_t sub_10000C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084D58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000C0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100084D58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10000C1B0()
{
  sub_100084D58();
  if (v0 <= 0x3F)
  {
    sub_10000C2A0(319, &qword_1000A5538, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000C2A0(319, &unk_1000A5880, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000C2A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_10000C304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v63 = *(v4 - 1);
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084D48();
  v8 = &v7[v4[5]];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v7[v4[6]];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v7[v4[7]];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v7[v4[8]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v60 = v11;
  v12 = &v7[v4[9]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v59 = v12;
  v13 = v4[10];
  v7[v13] = 2;
  v14 = [a1 attachmentModel];
  objc_opt_self();
  v62 = v14;
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    sub_10000997C(v7);
    v24 = 1;
    v25 = v63;
    return (*(v25 + 56))(a2, v24, 1, v4);
  }

  v16 = v15;
  v57 = a2;
  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100085098();
    v56 = v4;
    v20 = v13;
    v21 = v16;
    v23 = v22;

    v61 = v19;
    *v8 = v19;
    v8[1] = v23;
    v58 = v23;
    v16 = v21;
    v13 = v20;
    v4 = v56;
  }

  else
  {
    v61 = 0;
    v58 = 0;
  }

  v26 = [a1 title];
  if (v26)
  {
    v27 = v26;
    v28 = v4;
    v29 = v13;
    v30 = a1;
    v31 = sub_100085098();
    v33 = v32;

    *v10 = v31;
    v10[1] = v33;
    a1 = v30;
    v13 = v29;
    v4 = v28;
  }

  v34 = sub_100067784();
  if (v35)
  {
    *v9 = v34;
    v9[1] = v35;
  }

  result = [v16 audioDocument];
  v37 = v58;
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v38 = result;
  v39 = [result isCallRecording];

  v7[v13] = v39;
  result = [v16 audioDocument];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v40 = result;
  v41 = [result transcriptAsPlainText];

  sub_100085098();
  v42 = sub_100085128();

  if (v42 >= 1)
  {
    v43 = v61;
    if (!v37)
    {
      v43 = 0;
    }

    v44 = 0xE000000000000000;
    v66[0] = 0x7263736E6172745FLL;
    v66[1] = 0xEF7478742E747069;
    if (v37)
    {
      v44 = v37;
    }

    v64 = v43;
    v65 = v44;

    v64 = sub_100085198();
    v65 = v45;
    sub_100085148();
    v46 = v65;
    v47 = v60;
    *v60 = v64;
    v47[1] = v46;
  }

  result = [v16 audioDocument];
  if (result)
  {
    v48 = result;
    v49 = [result recordingSummaryAsPlainText];

    sub_100085098();
    v50 = sub_100085128();

    if (v50 < 1)
    {
    }

    else
    {
      v51 = v61;
      if (!v37)
      {
        v51 = 0;
      }

      v52 = 0xE000000000000000;
      strcpy(v66, "_summary.txt");
      BYTE5(v66[1]) = 0;
      HIWORD(v66[1]) = -5120;
      if (v37)
      {
        v52 = v37;
      }

      v64 = v51;
      v65 = v52;

      v64 = sub_100085198();
      v65 = v53;
      sub_100085148();

      v54 = v65;
      v55 = v59;
      *v59 = v64;
      v55[1] = v54;
    }

    v25 = v63;
    a2 = v57;
    sub_10000CA78(v7, v57);
    v24 = 0;
    return (*(v25 + 56))(a2, v24, 1, v4);
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_10000C7D0(void *a1)
{
  v3 = type metadata accessor for AudioAttachmentMetadata(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 attachmentModel];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7 && (v8 = v7, (v9 = [a1 managedObjectContext]) != 0))
  {
    v10 = v9;
    sub_1000090F4(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    sub_10000CA78(v6, v13 + v11);
    *(v13 + v12) = a1;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10000CD34;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100009024;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000699A4;
    aBlock[3] = &unk_10009EC10;
    v15 = _Block_copy(aBlock);
    v16 = a1;
    v17 = v20;

    [v10 performBlockAndWait:v15];

    _Block_release(v15);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }
  }

  else
  {
    v18 = v20;
  }
}

uint64_t sub_10000CA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000CADC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for AudioAttachmentMetadata(0);
  v7 = (a1 + *(v6 + 28));
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];

    v10 = sub_100085068();

    [a2 setTitle:v10];
  }

  v11 = *(a1 + *(v6 + 40));
  if (v11 != 2)
  {
    v12 = [a3 audioDocument];
    if (v12)
    {
      v13 = v12;
      [v12 setIsCallRecording:v11 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10000CBE4()
{
  v1 = (type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_100084D58();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7] + 8);

  v9 = *(v6 + v1[8] + 8);

  v10 = *(v6 + v1[9] + 8);

  v11 = *(v6 + v1[10] + 8);

  v12 = *(v6 + v1[11] + 8);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

void sub_10000CD34()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10000CADC(v0 + v2, v4, v5);
}

uint64_t sub_10000CDDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CDF4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A58C8);
  sub_10000B614(v0, qword_1000A58C8);
  return sub_100084F98();
}

uint64_t ICArchiveNotesPreviewer.init(forArchiveAt:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_100005740(&qword_1000A58E0, &unk_10008B3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v77 = &v68 - v4;
  v89 = type metadata accessor for ICArchiveNotesPreviewer.Note();
  v76 = *(v89 - 8);
  v5 = *(v76 + 64);
  v6 = __chkstk_darwin(v89);
  v93 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v68 - v8;
  v9 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v68 - v15;
  __chkstk_darwin(v14);
  v18 = &v68 - v17;
  v19 = sub_1000847C8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v23, a1, v19);
  type metadata accessor for ICArchivePreviewer();
  swift_allocObject();
  v24 = v87;
  v25 = ICArchivePreviewer.init(forArchiveAt:)(v23);
  if (v24)
  {
    v26 = v24;
    (*(v20 + 8))(a1, v19);
    swift_deallocPartialClassInstance();
    return v26;
  }

  v70 = a1;
  v87 = v18;
  v69 = v16;
  v73 = 0;
  v85 = v13;
  v71 = v20;
  v72 = v19;
  v27 = v75;
  *&v75[OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer] = v25;
  v28 = v25;
  swift_beginAccess();
  v29 = *(v28 + 24);
  v30 = *(v29 + 16);
  v31 = v27;
  if (v30)
  {
    v32 = sub_10000F810(*(v29 + 16), 0);
    v33 = v90;
    v34 = sub_100010D44(v92, &v32[(*(v90 + 80) + 32) & ~*(v90 + 80)], v30, v29);
    v86 = v92[2];
    v83 = v92[4];
    v84 = v92[3];
    swift_bridgeObjectRetain_n();
    sub_100010FF4();
    if (v34 != v30)
    {
      __break(1u);
      goto LABEL_26;
    }

    v36 = v72;
    v37 = v71;
  }

  else
  {

    v32 = &_swiftEmptyArrayStorage;
    v36 = v72;
    v37 = v71;
    v33 = v90;
  }

  v92[0] = v32;
  v38 = v73;
  sub_10000F918(v92);
  v35 = &v94;
  v73 = v38;
  if (!v38)
  {

    v39 = v92[0][2];
    v40 = v69;
    if (v39)
    {
      v42 = *(v33 + 16);
      v41 = v33 + 16;
      v84 = v42;
      v43 = (*(v41 + 64) + 32) & ~*(v41 + 64);
      v68 = v92[0];
      v44 = v92[0] + v43;
      v45 = *(v41 + 56);
      v82 = (v41 + 72);
      v83 = v45;
      v90 = v41;
      v81 = (v41 - 8);
      v80 = (v76 + 56);
      v79 = (v76 + 48);
      v86 = &_swiftEmptyArrayStorage;
      v78 = enum case for ICObjectReferences.note<A>(_:);
      v46 = v77;
      v47 = v87;
      do
      {
        v48 = v84;
        v84(v47, v44, v9);
        v48(v40, v47, v9);
        v49 = v40;
        v50 = v85;
        v48(v85, v49, v9);
        v51 = (*v82)(v50, v9);
        v52 = *v81;
        if (v51 == v78)
        {
          v52(v50, v9);
          sub_100084A78();
          v53 = sub_100084AE8();
          v55 = v54;
          v52(v49, v9);
          v52(v47, v9);
          v56 = v89;
          v57 = (v93 + *(v89 + 20));
          *v57 = v53;
          v57[1] = v55;
          v46 = v77;
          sub_100011790(v93, v77, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v58 = 0;
        }

        else
        {
          v52(v49, v9);
          v52(v47, v9);
          v52(v50, v9);
          v58 = 1;
          v56 = v89;
        }

        v40 = v49;
        (*v80)(v46, v58, 1, v56);
        if ((*v79)(v46, 1, v56) == 1)
        {
          sub_1000058F0(v46, &qword_1000A58E0, &unk_10008B3B0);
        }

        else
        {
          sub_100011790(v46, v88, type metadata accessor for ICArchiveNotesPreviewer.Note);
          v59 = v86;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_10000F3E0(0, v59[2] + 1, 1, v59, &qword_1000A5A90, &qword_10008B5B0, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v61 = v59[2];
          v60 = v59[3];
          if (v61 >= v60 >> 1)
          {
            v59 = sub_10000F3E0(v60 > 1, v61 + 1, 1, v59, &qword_1000A5A90, &qword_10008B5B0, type metadata accessor for ICArchiveNotesPreviewer.Note);
          }

          v59[2] = v61 + 1;
          v62 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v86 = v59;
          sub_100011790(v88, v59 + v62 + *(v76 + 72) * v61, type metadata accessor for ICArchiveNotesPreviewer.Note);
        }

        v47 = v87;
        v44 = v83 + v44;
        --v39;
      }

      while (v39);

      v63 = v70;
      v31 = v75;
      v64 = ObjectType;
      v36 = v72;
      v37 = v71;
      v65 = v86;
    }

    else
    {

      v65 = &_swiftEmptyArrayStorage;
      v63 = v70;
      v64 = ObjectType;
    }

    *&v31[OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_notes] = v65;
    v91.receiver = v31;
    v91.super_class = v64;
    v26 = objc_msgSendSuper2(&v91, "init", v68);
    (*(v37 + 8))(v63, v36);
    return v26;
  }

LABEL_26:
  v67 = *(v35 - 32);

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ICArchiveNotesPreviewer.Note()
{
  result = qword_1000A5988;
  if (!qword_1000A5988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*ICArchiveNotesPreviewer.startPreviewing(_:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3))(uint64_t, uint64_t)
{
  v7 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15[-v10];
  v12 = *(v3 + OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer);
  sub_10000D9E0(a1, &v15[-v10]);

  v13 = sub_10003DB88(v11, v12, a2, a3);

  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_10000D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A5A88, &unk_10008D110);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19[-v7];
  v9 = *(v2 + OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v10 = *(v9 + 24);
  v20 = a1;

  sub_10000E648(sub_100011804, v10, v8);

  v11 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v8, v11);
  }

  sub_1000058F0(v8, &qword_1000A5A88, &unk_10008D110);
  if (qword_1000A53D8 != -1)
  {
    swift_once();
  }

  v13 = sub_100084FB8();
  sub_10000B614(v13, qword_1000A58C8);
  v14 = sub_100084FA8();
  v15 = sub_100085388();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Object to be previewed does not exist", v16, 2u);
  }

  sub_1000081FC();
  swift_allocError();
  *v17 = 4;
  return swift_willThrow();
}

void sub_10000DC58(void *a1, char a2, void (*a3)(void *, void))
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v7[3] = sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
    v7[0] = a1;
    v6 = a1;
    a1 = sub_10000DD60(v7, &qword_1000A56C0, ICNote_ptr, &qword_1000A5A68, &qword_10008B588);
    sub_100006304(v7);
  }

  a3(a1, a2 & 1);
  sub_1000117F8(a1, a2 & 1);
}

uint64_t sub_10000DD60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_100085A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000056E4(a1, v19);
  v15 = sub_100008250(0, a2, a3);
  if (swift_dynamicCast())
  {
    return v18[0];
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_100085638(20);

  strcpy(v18, "Cannot cast ");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  sub_1000056E4(a1, v19);
  sub_100085A48();
  v20._countAndFlagsBits = sub_100085908();
  sub_100085158(v20);

  v17 = *(v11 + 8);
  v17(v14, v10);
  v21._countAndFlagsBits = 544432416;
  v21._object = 0xE400000000000000;
  sub_100085158(v21);
  v19[3] = sub_100005740(a4, a5);
  v19[0] = v15;
  sub_100085A48();
  v22._countAndFlagsBits = sub_100085908();
  sub_100085158(v22);

  v17(v14, v10);
  result = sub_100085708();
  __break(1u);
  return result;
}

uint64_t sub_10000DFBC(uint64_t a1)
{
  v2 = sub_100085A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000056E4(a1, v11);
  v7 = sub_100005740(&qword_1000A5A40, &qword_10008B560);
  if (swift_dynamicCast())
  {
    return v10[0];
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_100085638(20);

  strcpy(v10, "Cannot cast ");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  sub_1000056E4(a1, v11);
  sub_100085A48();
  v12._countAndFlagsBits = sub_100085908();
  sub_100085158(v12);

  v9 = *(v3 + 8);
  v9(v6, v2);
  v13._countAndFlagsBits = 544432416;
  v13._object = 0xE400000000000000;
  sub_100085158(v13);
  v11[3] = sub_100005740(&qword_1000A5A48, &qword_10008B568);
  v11[0] = v7;
  sub_100085A48();
  v14._countAndFlagsBits = sub_100085908();
  sub_100085158(v14);

  v9(v6, v2);
  result = sub_100085708();
  __break(1u);
  return result;
}

uint64_t ICArchiveNotesPreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v3 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = *(v1 + OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer);
  sub_10000D9E0(a1, &v10[-v6]);
  ICArchivePreviewer.stopPreviewing(_:)(v7);
  return (*(v4 + 8))(v7, v3);
}

id ICArchiveNotesPreviewer.state(of:)(uint64_t a1)
{
  v3 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC26NotesAppMigrationExtension23ICArchiveNotesPreviewer_archivePreviewer);
  swift_beginAccess();
  v9 = *(v8 + 24);

  sub_10000D9E0(a1, v7);
  if (*(v9 + 16) && (v10 = sub_100039054(v7), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 24 * v10;
    v13 = *(v12 + 16);
    v14 = *v12;
    sub_1000112CC(*v12, *(v12 + 8), *(v12 + 16));
    (*(v4 + 8))(v7, v3);

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        return v14;
      }

      else
      {
        return 0;
      }
    }

    else if (v13)
    {
      v17[3] = sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      v17[0] = v14;
      v16 = sub_10000DD60(v17, &qword_1000A56C0, ICNote_ptr, &qword_1000A5A68, &qword_10008B588);
      sub_100006304(v17);
      return v16;
    }

    else
    {

      return v14;
    }
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return 0;
  }
}

uint64_t sub_10000E548()
{
  v0 = sub_1000847C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  sub_100084A78();
  v5 = sub_100084758();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_10000E648@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v6 = *(*(v39 - 8) + 64);
  v7 = __chkstk_darwin(v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v32 = &v29 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

id ICArchiveImporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICArchiveNotesPreviewer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ICArchiveNotesPreviewer.Note.title.getter()
{
  v1 = (v0 + *(type metadata accessor for ICArchiveNotesPreviewer.Note() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

Swift::Int ICArchiveNotesPreviewer.Note.hashValue.getter()
{
  sub_100085A08();
  _s26NotesAppMigrationExtension09ICArchiveA9PreviewerC4NoteV4hash4intoys6HasherVz_tF_0();
  return sub_100085A38();
}

Swift::Int sub_10000EAB4()
{
  sub_100085A08();
  _s26NotesAppMigrationExtension09ICArchiveA9PreviewerC4NoteV4hash4intoys6HasherVz_tF_0();
  return sub_100085A38();
}

char *sub_10000EAF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A59D8, &qword_10008CCA0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10000EC24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A5A58, &qword_10008B578);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10000ED4C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005740(&qword_1000A5A70, &qword_10008B590);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100005740(&qword_1000A5A78, &qword_10008B598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000EEA8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005740(&qword_1000A59C0, &unk_10008B4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000F038(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
  v16 = *(sub_100005740(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100005740(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10000F270(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005740(&qword_1000A5A30, &unk_10008B550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A5A38, &unk_10008D320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000F3E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
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

void *sub_10000F5BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005740(&qword_1000A59F8, &qword_10008B518);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A5A00, &qword_10008B520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000F6F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A5A08, &qword_10008B528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000F810(uint64_t a1, uint64_t a2)
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

  sub_100005740(&qword_1000A5A60, &qword_10008B580);
  v4 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10000F918(void **a1)
{
  v2 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10004E8FC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10000F9CC(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10000F9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000858F8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
        v6 = sub_100085248();
        v6[2] = v5;
      }

      v7 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000FDAC(v8, v9, a1, v4);
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
    return sub_10000FB10(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000FB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = &v31 - v13;
  result = __chkstk_darwin(v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      sub_100011824();
      v26 = sub_100085048();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000FDAC(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v126 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v134 = &v119 - v15;
  v16 = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  result = __chkstk_darwin(v16);
  v140 = &v119 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = &_swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_10004E488(a4);
    }

    v142 = result;
    v114 = *(result + 16);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *(result + 16 * v114);
        v116 = result;
        v117 = *(result + 16 * (v114 - 1) + 40);
        sub_1000107A8(*a3 + v10[9] * v115, *a3 + v10[9] * *(result + 16 * (v114 - 1) + 32), *a3 + v10[9] * v117, v5);
        if (v6)
        {
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_10004E488(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_10004E3FC(a4);
        result = v142;
        v114 = *(v142 + 16);
        if (v114 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v137 = (v10 + 1);
  v138 = v10 + 2;
  v136 = (v10 + 4);
  v22 = &_swiftEmptyArrayStorage;
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v23 = v21;
    v127 = v22;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v132 = v20;
      v24 = v9;
      v25 = *a3;
      v26 = v10;
      v27 = v10[9];
      v5 = v25 + v27 * (v21 + 1);
      v128 = v25;
      v28 = v26[2];
      v28(v140, v5, v24);
      v29 = v25 + v27 * v23;
      v30 = v26;
      v123 = v23;
      v31 = v139;
      v131 = v28;
      v28(v139, v29, v24);
      v32 = sub_100011824();
      v33 = v140;
      v130 = v32;
      LODWORD(v133) = sub_100085048();
      v34 = v30[1];
      v34(v31, v24);
      v129 = v34;
      result = (v34)(v33, v24);
      v35 = v123 + 2;
      v135 = v27;
      v36 = v128 + v27 * (v123 + 2);
      while (1)
      {
        v37 = v132;
        if (v132 == v35)
        {
          break;
        }

        v39 = v140;
        v38 = v141;
        v40 = v131;
        (v131)(v140, v36, v141);
        v41 = v6;
        v42 = v139;
        v40(v139, v5, v38);
        v43 = sub_100085048() & 1;
        v44 = v42;
        v6 = v41;
        v45 = v129;
        v129(v44, v38);
        result = v45(v39, v38);
        ++v35;
        v36 += v135;
        v5 += v135;
        if ((v133 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v23 = v123;
      a3 = v124;
      v10 = v120;
      v22 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v37 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v37)
        {
          v46 = v135 * (v37 - 1);
          v5 = v37 * v135;
          v132 = v37;
          v47 = v37;
          v48 = v123;
          v49 = v123 * v135;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!v51)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, v51 + v49, v141, v22);
              if (v49 < v46 || v51 + v49 >= v51 + v5)
              {
                v50 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v141;
                if (v49 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(v51 + v46, v126, v50);
              a3 = v124;
              v22 = v127;
            }

            ++v48;
            v46 -= v135;
            v5 -= v135;
            v49 += v135;
          }

          while (v48 < v47);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v23 = v123;
          v37 = v132;
        }
      }
    }

    v52 = a3[1];
    if (v37 < v52)
    {
      if (__OFSUB__(v37, v23))
      {
        goto LABEL_124;
      }

      if (v37 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v37 != v5)
        {
          break;
        }
      }
    }

    v5 = v37;
    if (v37 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v127;
    }

    else
    {
      result = sub_10000EC24(0, *(v127 + 2) + 1, 1, v127);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_10000EC24((v53 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v54)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_1000107A8(*a3 + v10[9] * v95, *a3 + v10[9] * *&v22[16 * v5 + 32], *a3 + v10[9] * v96, v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10004E488(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v142 = v94;
        result = sub_10004E3FC(v5);
        v22 = v142;
        v54 = *(v142 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v20)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v98 = *a3;
  v99 = v10[9];
  v135 = v10[2];
  v100 = v98 + v99 * (v37 - 1);
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = v101 - v37;
  v133 = v98;
  v125 = v99;
  a4 = v98 + v37 * v99;
  v128 = v5;
LABEL_85:
  v131 = v100;
  v132 = v37;
  v129 = a4;
  v130 = v103;
  v104 = v100;
  while (1)
  {
    v105 = v140;
    v106 = v135;
    (v135)(v140, a4, v9, v22);
    v107 = v139;
    v106(v139, v104, v141);
    sub_100011824();
    v108 = sub_100085048();
    v109 = *v137;
    v110 = v107;
    v9 = v141;
    (*v137)(v110, v141);
    result = v109(v105, v9);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v37 = v132 + 1;
      v100 = &v131[v125];
      v103 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v23 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v111 = *v136;
    v112 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v9);
    v104 += v102;
    a4 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000107A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v57);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v54 = &v45 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v56 = a3;
  v17 = (a2 - a1) / v15;
  v60 = a1;
  v59 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v19;
      v32 = v56;
      v47 = a1;
      v48 = a4;
      v51 = v30;
      do
      {
        v45 = v29;
        v33 = a2 + v30;
        v34 = v29;
        v52 = a2;
        v53 = a2 + v30;
        while (1)
        {
          if (a2 <= a1)
          {
            v60 = a2;
            v29 = v45;
            goto LABEL_59;
          }

          v36 = v32;
          v46 = v34;
          v56 = v32 + v30;
          v37 = v31 + v30;
          v38 = *v50;
          v39 = v54;
          v40 = v31 + v30;
          v41 = v31;
          v42 = v57;
          (*v50)(v54, v40, v57);
          v43 = v55;
          (v38)(v55, v33, v42);
          sub_100011824();
          LOBYTE(v38) = sub_100085048();
          v44 = *v49;
          (*v49)(v43, v42);
          v44(v39, v42);
          if (v38)
          {
            break;
          }

          v34 = v37;
          v32 = v56;
          if (v36 < v41 || v56 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v53;
            a1 = v47;
          }

          else
          {
            v33 = v53;
            a1 = v47;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v35 = v37 > v48;
          v30 = v51;
          a2 = v52;
          if (!v35)
          {
            v29 = v34;
            goto LABEL_58;
          }
        }

        v32 = v56;
        if (v36 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v47;
          v31 = v41;
        }

        else
        {
          a2 = v53;
          a1 = v47;
          v31 = v41;
          if (v36 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v46;
        v30 = v51;
      }

      while (v31 > v48);
    }

LABEL_58:
    v60 = a2;
LABEL_59:
    v58 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v18;
    v58 = a4 + v18;
    if (v18 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v15;
      v50 = (v8 + 8);
      do
      {
        v21 = v54;
        v22 = v57;
        v23 = v51;
        v51(v54, a2, v57);
        v24 = v55;
        v23(v55, a4, v22);
        sub_100011824();
        v25 = sub_100085048();
        v26 = *v50;
        (*v50)(v24, v22);
        v26(v21, v22);
        if (v25)
        {
          v27 = v49;
          if (a1 < a2 || a1 >= v49 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

  sub_10004E49C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_100010D44(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100010FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s3TagVMa();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v32 = &v29 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_10001172C(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33);
      v25 = v24;
      v26 = v32;
      sub_100011790(v25, v32, _s3TagVMa);
      sub_100011790(v26, a2, _s3TagVMa);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s26NotesAppMigrationExtension09ICArchiveA9PreviewerC4NoteV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_100084758())
  {
    v4 = *(type metadata accessor for ICArchiveNotesPreviewer.Note() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_100085948() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

id sub_1000112CC(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      return swift_errorRetain();
    case 1:

      return result;
    case 0:
      v4 = result;
  }

  return result;
}

unint64_t sub_100011344()
{
  result = qword_1000A5900;
  if (!qword_1000A5900)
  {
    type metadata accessor for ICArchiveNotesPreviewer.Note();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5900);
  }

  return result;
}

uint64_t sub_1000113D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000114B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000847C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100011570()
{
  sub_1000847C8();
  if (v0 <= 0x3F)
  {
    sub_1000115F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000115F4()
{
  if (!qword_1000A5538)
  {
    v0 = sub_1000854E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5538);
    }
  }
}

uint64_t sub_100011644(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100011660(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100011674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000116BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100011700(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10001172C(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000117F8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_100011824()
{
  result = qword_1000A5A98;
  if (!qword_1000A5A98)
  {
    sub_100011888(&qword_1000A58E8, &qword_10008B8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A98);
  }

  return result;
}

uint64_t sub_100011888(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000118D0()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A5AA0);
  sub_10000B614(v0, qword_1000A5AA0);
  return sub_100084F98();
}

uint64_t sub_10001191C()
{
  v0 = sub_100084FB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084F28();
  sub_10000B64C(v5, qword_1000A5AB8);
  sub_10000B614(v5, qword_1000A5AB8);
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000B614(v0, qword_1000A5AA0);
  (*(v1 + 16))(v4, v6, v0);
  return sub_100084F08();
}

uint64_t ICArchiveExporter.fileManager.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return swift_unknownObjectRetain();
}

uint64_t static ICArchiveExporterConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A5428 != -1)
  {
    swift_once();
  }

  v2 = static ICArchiveCreator.default;
  v4 = qword_1000B17A0;
  v3 = unk_1000B17A8;
  v5 = xmmword_1000B17B0;

  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v5;
  *(a1 + 56) = IsAlexandriaDemoModeEnabled;
  *(a1 + 57) = v7;
  *(a1 + 58) = result;
  *(a1 + 59) = 0;
  return result;
}

uint64_t ICArchiveExporter.__allocating_init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_10001BD64(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t ICArchiveExporter.init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10001BD64(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100011C60()
{
  v1 = (v0 + 16);
  v2 = *v0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v11 = sub_10001C418;
  v12 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072320;
  ObjectType = &unk_10009EEE0;
  v6 = _Block_copy(aBlock);

  v7 = [v3 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  ObjectType = swift_getObjectType();
  aBlock[0] = v7;
  swift_beginAccess();
  sub_100005820(aBlock, v1, &qword_1000A5AD0, &unk_10008B5E0);
  return swift_endAccess();
}

void *ICArchiveExporter.deinit()
{
  sub_100011E78();
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  sub_10001BDD4(v0[4], v0[5]);
  v6 = v0[11];
  swift_unknownObjectRelease();
  sub_1000058F0((v0 + 16), &qword_1000A5AD0, &unk_10008B5E0);
  return v0;
}

void sub_100011E78()
{
  swift_beginAccess();
  sub_100005888(v0 + 128, v6, &qword_1000A5AD0, &unk_10008B5E0);
  v1 = [objc_opt_self() defaultCenter];
  sub_100005888(v6, &v4, &qword_1000A5AD0, &unk_10008B5E0);
  if (v5)
  {
    sub_10001C864(&v4, v2);
    sub_10000626C(v2, v3);
    [v1 removeObserver:sub_100085928()];
    swift_unknownObjectRelease();
    sub_100006304(v2);
  }

  sub_1000058F0(v6, &qword_1000A5AD0, &unk_10008B5E0);
}

uint64_t ICArchiveExporter.__deallocating_deinit()
{
  ICArchiveExporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchiveExporter.createArchive(for:at:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1000847C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ICArchiveExporter.createArchive(for:progress:)(a1, a3, v12);
  if (!v4)
  {
    v14 = *(v5 + 88);
    v15 = *(v5 + 96);
    swift_getObjectType();
    sub_1000849B8();
    sub_100084A18();
    ICArchiveExporter.removeArchive(at:)(v12);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t ICArchiveExporter.createArchive(for:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v4 = v3;
  v23 = a3;
  v6 = *v3;
  v7 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_1000847C8();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v31 = 0;
  v16 = v3[2];
  v26 = v13;
  v27 = v4;
  v17 = v25;
  v28 = a1;
  v29 = v24;
  v30 = &v31;
  v18 = *(v6 + 80);
  v19 = *(v6 + 88);
  sub_100084A58();
  if (v17)
  {
    goto LABEL_4;
  }

  v20 = v23;
  sub_100005888(v13, v10, &qword_1000A56E8, &qword_10008D350);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result != 1)
  {
    (*(v15 + 32))(v20, v10, v14);
LABEL_4:
    sub_10001265C(v11, &v31, v4);
  }

  __break(1u);
  return result;
}

uint64_t ICArchiveExporter.removeArchive(at:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v12 = sub_100084FB8();
  sub_10000B614(v12, qword_1000A5AA0);
  v13 = v6[2];
  v32 = a1;
  v13(v11, a1, v5);
  v14 = sub_100084FA8();
  v15 = sub_100085368();
  v16 = os_log_type_enabled(v14, v15);
  v33 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v2;
    v34 = v29;
    *v17 = 136315138;
    sub_10001C274(&qword_1000A5AD8, &type metadata accessor for URL);
    v18 = sub_100085908();
    v19 = v3;
    v21 = v20;
    v22 = v6[1];
    v22(v11, v5);
    v23 = sub_100038A4C(v18, v21, &v34);
    v3 = v19;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing archive… {url: %s}", v17, 0xCu);
    sub_100006304(v29);
  }

  else
  {

    v22 = v6[1];
    v22(v11, v5);
  }

  v24 = *(v3 + 88);
  v25 = *(v3 + 96);
  swift_getObjectType();
  v26 = v31;
  sub_100084748();
  sub_1000849B8();
  return (v22)(v26, v5);
}

void sub_10001265C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = a3;
  v50 = a2;
  v3 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v47 = &v47 - v16;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v19 = swift_projectBox();
  swift_beginAccess();
  v20 = v10;
  sub_100005888(v19, v8, &qword_1000A56E8, &qword_10008D350);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_1000058F0(v8, &qword_1000A56E8, &qword_10008D350);
  }

  else
  {
    (*(v10 + 32))(v18, v8, v9);
    if ((*v50 & 1) == 0)
    {
      ICArchiveExporter.removeArchive(at:)(v18);
      v34 = v47;
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v35 = sub_100084FB8();
      sub_10000B614(v35, qword_1000A5AA0);
      (*(v10 + 16))(v34, v18, v9);
      v36 = sub_100084FA8();
      v37 = sub_100085368();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v51 = v39;
        *v38 = 136315138;
        sub_10001C274(&qword_1000A5AD8, &type metadata accessor for URL);
        v40 = sub_100085908();
        v41 = v20;
        v43 = v42;
        v44 = *(v41 + 8);
        v44(v34, v9);
        v45 = sub_100038A4C(v40, v43, &v51);

        *(v38 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to create archive — removing temporary files {url: %s}", v38, 0xCu);
        sub_100006304(v39);

        v44(v18, v9);
      }

      else
      {

        v46 = *(v10 + 8);
        v46(v34, v9);
        v46(v18, v9);
      }

      return;
    }

    (*(v10 + 8))(v18, v9);
  }

  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v22 = sub_100084FB8();
  sub_10000B614(v22, qword_1000A5AA0);

  v23 = sub_100084FA8();
  v24 = sub_100085368();
  if (!os_log_type_enabled(v23, v24))
  {

    goto LABEL_11;
  }

  v50 = v10;
  v25 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v52 = v48;
  *v25 = 136315138;
  swift_beginAccess();
  v26 = v19;
  v27 = v49;
  sub_100005888(v26, v49, &qword_1000A56E8, &qword_10008D350);
  v28 = v21(v27, 1, v9);

  if (v28 != 1)
  {
    v29 = v50;
    (*(v50 + 32))(v14, v27, v9);
    sub_10001C274(&qword_1000A5AD8, &type metadata accessor for URL);
    v30 = sub_100085908();
    v32 = v31;
    (*(v29 + 8))(v14, v9);
    v33 = sub_100038A4C(v30, v32, &v52);

    *(v25 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Created archive {url: %s}", v25, 0xCu);
    sub_100006304(v48);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_100012CAC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v87 = a1;
  v81 = a4;
  v7 = *a2;
  v79 = a5;
  v80 = v7;
  v8 = sub_100084F28();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 8);
  __chkstk_darwin(v8);
  v82 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084EF8();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v71 - v16;
  v18 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v71 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v71 - v27;
  __chkstk_darwin(v26);
  v30 = v71 - v29;
  v31 = v88;
  result = sub_100013548(a3, v71 - v29);
  if (!v31)
  {
    v73 = v22;
    v74 = v25;
    v72 = v15;
    v88 = 0;
    v75 = v17;
    v76 = a3;
    v33 = sub_1000847C8();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v30, 0, 1, v33);
    v35 = v87;
    sub_100005820(v30, v87, &qword_1000A56E8, &qword_10008D350);
    v36 = a2[11];
    v37 = a2[12];
    sub_100005888(v35, v28, &qword_1000A56E8, &qword_10008D350);
    v77 = *(v34 + 48);
    v78 = v34 + 48;
    result = v77(v28, 1, v33);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v38 = v88;
      sub_1000849C8();
      v88 = v38;
      if (v38)
      {
        return (*(v34 + 8))(v28, v33);
      }

      v39 = *(v34 + 8);
      v71[1] = v34 + 8;
      v39(v28, v33);
      if (qword_1000A53E8 != -1)
      {
        swift_once();
      }

      v71[0] = a2;
      v40 = v84;
      v41 = sub_10000B614(v84, qword_1000A5AB8);
      v42 = v82;
      v43 = v83;
      (*(v83 + 2))(v82, v41, v40);
      v44 = v74;
      sub_100005888(v87, v74, &qword_1000A56E8, &qword_10008D350);
      result = v77(v44, 1, v33);
      if (result != 1)
      {
        sub_1000846F8(v45);
        sub_100084F18();
        v46 = v75;
        sub_100084ED8();
        (*(v43 + 1))(v42, v40);
        v83 = v39;
        v39(v44, v33);
        v47 = sub_100084F18();
        v48 = sub_100085408();
        if (sub_1000854D8())
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = sub_100084EE8();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v48, v50, "Create Archive", "", v49, 2u);
        }

        v84 = v33;

        (*(v85 + 16))(v72, v46, v86);
        v51 = sub_100084F68();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v54 = sub_100084F58();
        v89 = 0;
        v90 = v76;
        __chkstk_darwin(v54);
        v55 = *(v80 + 88);
        v71[-2] = *(v80 + 80);
        v71[-1] = v55;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_100084B28();
        sub_100085278();
        swift_getWitnessTable();
        v56 = v88;
        sub_1000851B8();
        v57 = v91;
        if (qword_1000A53E0 != -1)
        {
          swift_once();
        }

        v58 = sub_100084FB8();
        sub_10000B614(v58, qword_1000A5AA0);
        v59 = sub_100084FA8();
        v60 = sub_100085368();
        v61 = os_log_type_enabled(v59, v60);
        v62 = v81;
        v63 = v87;
        if (v61)
        {
          v64 = swift_slowAlloc();
          *v64 = 134217984;
          *(v64 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v59, v60, "Exporting notes… {noteCount: %ld}", v64, 0xCu);
        }

        [v62 setTotalUnitCount:v57];
        v65 = v63;
        v66 = v73;
        sub_100005888(v65, v73, &qword_1000A56E8, &qword_10008D350);
        result = v77(v66, 1, v84);
        v67 = v86;
        if (result != 1)
        {
          sub_100013BE0(v66, v76, v62);
          v68 = (v85 + 8);
          v69 = v79;
          v70 = v75;
          if (v56)
          {
            v83(v66, v84);
            sub_100015CA0(v54, "Create Archive");

            return (*v68)(v70, v67);
          }

          else
          {
            v83(v66, v84);
            sub_100085348();
            *v69 = 1;
            sub_100015CA0(v54, "Create Archive");

            return (*v68)(v70, v67);
          }
        }

LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100013548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v53 = *v2;
  v54 = a1;
  v4 = sub_100084918();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000847C8();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - v14;
  v16 = __chkstk_darwin(v13);
  v50 = &v47 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v47 - v22;
  __chkstk_darwin(v21);
  v49 = &v47 - v24;
  v25 = *(v2 + 24);
  v26 = v2[12];
  v27 = v2[11];
  swift_getObjectType();
  if (v25 == 1)
  {
    result = sub_1000849F8();
    if (!v3)
    {
      v48 = 0;
      sub_100084718();
      v29 = *(v55 + 8);
      v30 = v20;
      v31 = v56;
      v29(v30, v56);
      sub_100084908();
      sub_1000848D8();
      (*(v51 + 8))(v7, v52);
      v32 = v49;
      sub_100084718();

      v29(v23, v31);
      sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
      v34 = *(v53 + 80);
      v33 = *(v53 + 88);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v54);
      v35 = sub_100085068();

      v36 = [v35 ic_sanitizedFilenameString];

      sub_100085098();
      sub_100084718();

      return (v29)(v32, v31);
    }
  }

  else
  {
    result = sub_1000849F8();
    if (!v3)
    {
      v48 = 0;
      sub_100084718();
      v37 = v56;
      v38 = *(v55 + 8);
      v38(v12, v56);
      sub_100084908();
      sub_1000848D8();
      (*(v51 + 8))(v7, v52);
      v39 = v50;
      sub_100084718();

      v38(v15, v37);
      sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
      v41 = *(v53 + 80);
      v40 = *(v53 + 88);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v54);
      v42 = sub_100085068();
      v43 = [v42 ic_sanitizedFilenameString];

      v44 = sub_100085098();
      v46 = v45;

      v57 = v44;
      v58 = v46;
      v60._countAndFlagsBits = 46;
      v60._object = 0xE100000000000000;
      sub_100085158(v60);
      v61._countAndFlagsBits = 0x6372617365746F6ELL;
      v61._object = 0xEC00000065766968;
      sub_100085158(v61);

      sub_100084718();

      return (v38)(v39, v37);
    }
  }

  return result;
}

uint64_t sub_100013B28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  result = sub_100084A98();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t sub_100013BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ICArchiveModel();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  if (v5[13])
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_53;
  }

  v100 = a1;
  v101 = a3;
  v98 = v17;
  v95 = v14;
  v99 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v11;
  v97 = v10;
  *(v5 + 104) = 1;
  *&v108 = a2;
  v19 = v5[2];
  v104 = v4;
  v21 = *(v9 + 80);
  v20 = *(v9 + 88);
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v22[4] = v19;
  v23 = swift_unknownObjectRetain();
  v102 = a2;
  ObjectType = &v87;
  __chkstk_darwin(v23);
  v113 = v5;
  *(&v87 - 4) = v21;
  *(&v87 - 3) = v20;
  *(&v87 - 2) = sub_10001C380;
  *(&v87 - 1) = v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  v24 = sub_100085278();
  v25 = sub_100005740(&qword_1000A5AD0, &unk_10008B5E0);
  v26 = sub_100005740(&qword_1000A5B98, &unk_10008B760);
  WitnessTable = swift_getWitnessTable();
  v28 = v104;
  v29 = sub_100014904(sub_10001C1B0, (&v87 - 6), v24, v25, v26, WitnessTable, &protocol self-conformance witness table for Error, &v105);
  if (v28)
  {

    v31 = v113;
    goto LABEL_56;
  }

  v88 = 0;
  v90 = v26;
  v91 = v19;
  v92 = v20;
  v93 = v21;
  v94 = v24;
  v104 = v29;

  v32 = *(v104 + 16);
  ObjectType = v25;
  v89 = WitnessTable;
  if (v32)
  {
    v33 = v104 + 32;
    v34 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100005888(v33, &v111, &qword_1000A5AD0, &unk_10008B5E0);
      v108 = v111;
      v109 = v112;
      if (*(&v112 + 1))
      {
        sub_100005740(&qword_1000A59C8, &qword_10008B770);
        if (swift_dynamicCast())
        {
          if (*(&v106 + 1))
          {
            sub_10001C024(&v105, &v108);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_10000EEA8(0, v34[2] + 1, 1, v34);
            }

            v36 = v34[2];
            v35 = v34[3];
            if (v36 >= v35 >> 1)
            {
              v34 = sub_10000EEA8((v35 > 1), v36 + 1, 1, v34);
            }

            v34[2] = v36 + 1;
            sub_10001C024(&v108, &v34[5 * v36 + 4]);
            goto LABEL_8;
          }
        }

        else
        {
          v107 = 0;
          v105 = 0u;
          v106 = 0u;
        }
      }

      else
      {
        sub_1000058F0(&v108, &qword_1000A5AD0, &unk_10008B5E0);
        v105 = 0u;
        v106 = 0u;
        v107 = 0;
      }

      sub_1000058F0(&v105, &qword_1000A5BA8, &qword_10008F750);
LABEL_8:
      v33 += 32;
      if (!--v32)
      {

        goto LABEL_20;
      }
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_20:
  *&v105 = _swiftEmptyArrayStorage;
  v37 = v34[2];
  v38 = v94;
  if (v37)
  {
    v39 = (v34 + 4);
    do
    {
      sub_10001C118(v39, &v108);
      v40 = *(&v109 + 1);
      v41 = v110;
      sub_10000626C(&v108, *(&v109 + 1));
      v42 = (*(v41 + 24))(v40, v41);
      sub_100006304(&v108);
      sub_100039460(v42);
      v39 += 40;
      --v37;
    }

    while (v37);
  }

  v104 = v105;
  v44 = v102;
  *&v108 = v102;
  __chkstk_darwin(v43);
  v45 = v93;
  v46 = v92;
  *(&v87 - 2) = v93;
  *(&v87 - 1) = v46;

  swift_getWitnessTable();
  v47 = v88;
  *&v108 = sub_100085668();
  v48 = swift_allocObject();
  v48[2] = v45;
  v48[3] = v46;
  v48[4] = v91;
  v49 = swift_unknownObjectRetain();
  __chkstk_darwin(v49);
  *(&v87 - 4) = v45;
  *(&v87 - 3) = v46;
  *(&v87 - 2) = sub_10001C8D8;
  *(&v87 - 1) = v48;
  ObjectType = sub_100014904(sub_10001C8A8, (&v87 - 6), v38, ObjectType, v90, v89, &protocol self-conformance witness table for Error, &v105);
  if (v47)
  {

    v31 = v113;
    goto LABEL_56;
  }

  v93 = 0;

  v50 = ObjectType[2];
  if (!v50)
  {

    v52 = _swiftEmptyArrayStorage;
    v55 = v44;
    v56 = _swiftEmptyArrayStorage[2];
    if (v56)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v51 = (ObjectType + 4);
  v52 = _swiftEmptyArrayStorage;
  do
  {
    sub_100005888(v51, &v111, &qword_1000A5AD0, &unk_10008B5E0);
    v108 = v111;
    v109 = v112;
    if (!*(&v112 + 1))
    {
      sub_1000058F0(&v108, &qword_1000A5AD0, &unk_10008B5E0);
      v105 = 0u;
      v106 = 0u;
      v107 = 0;
LABEL_28:
      sub_1000058F0(&v105, &qword_1000A5BA8, &qword_10008F750);
      goto LABEL_29;
    }

    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      goto LABEL_28;
    }

    if (!*(&v106 + 1))
    {
      goto LABEL_28;
    }

    sub_10001C024(&v105, &v108);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_10000EEA8(0, v52[2] + 1, 1, v52);
    }

    v54 = v52[2];
    v53 = v52[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_10000EEA8((v53 > 1), v54 + 1, 1, v52);
    }

    v52[2] = v54 + 1;
    sub_10001C024(&v108, &v52[5 * v54 + 4]);
LABEL_29:
    v51 += 32;
    --v50;
  }

  while (v50);

  v55 = v102;
  v56 = v52[2];
  if (!v56)
  {
LABEL_46:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

LABEL_40:
  *&v105 = _swiftEmptyArrayStorage;
  sub_10003BCC0(0, v56, 0);
  v57 = v105;
  v58 = (v52 + 4);
  do
  {
    sub_10001C118(v58, &v108);
    v59 = *(&v109 + 1);
    v60 = v110;
    sub_10000626C(&v108, *(&v109 + 1));
    v61 = (*(v60 + 8))(v59, v60);
    v63 = v62;
    sub_100006304(&v108);
    *&v105 = v57;
    v65 = v57[2];
    v64 = v57[3];
    if (v65 >= v64 >> 1)
    {
      sub_10003BCC0((v64 > 1), v65 + 1, 1);
      v57 = v105;
    }

    v57[2] = v65 + 1;
    v66 = &v57[2 * v65];
    *(v66 + 4) = v61;
    *(v66 + 5) = v63;
    v58 += 40;
    --v56;
  }

  while (v56);

  v55 = v102;
LABEL_47:
  v31 = v113;
  v68 = v100;
  v67 = v101;
  v69 = v104;
  if (v113[3])
  {

    goto LABEL_49;
  }

  v71 = v113[5];
  v72 = v113[6];
  v73 = v113[7];
  v74 = v113[8];
  v75 = v113[9];
  ObjectType = v113[4];
  sub_10001C220(ObjectType, v71);
  v92 = sub_100079D24(v69);

  if (!v57[2])
  {

    v57 = 0;
  }

  v76 = v98;
  v77 = v98[6];
  v10 = v99;
  sub_1000848A8();
  v78 = sub_1000848B8();
  (*(*(v78 - 8) + 56))(v10 + v77, 0, 1, v78);
  *v10 = 0;
  *(v10 + 8) = 1;
  v79 = (v10 + v76[7]);
  *v79 = ObjectType;
  v79[1] = v71;
  v79[2] = v72;
  v79[3] = v73;
  v79[4] = v74;
  v79[5] = v75;
  *(v10 + v76[8]) = v92;
  *(v10 + v76[9]) = v57;
  if (qword_1000A53F0 != -1)
  {
    goto LABEL_58;
  }

LABEL_53:
  sub_10001C274(&qword_1000A5BC8, type metadata accessor for ICArchiveModel);
  v80 = v93;
  v81 = sub_100084508();
  v31 = v113;
  v68 = v100;
  v67 = v101;
  if (v80)
  {
    result = sub_10001C2BC(v10, type metadata accessor for ICArchiveModel);
  }

  else
  {
    v83 = v81;
    v84 = v82;
    v85 = v113[11];
    v104 = v113[12];
    ObjectType = swift_getObjectType();
    v86 = v95;
    sub_100084718();
    sub_1000849A8();
    v93 = 0;
    sub_10000650C(v83, v84);
    (*(v96 + 8))(v86, v97);
    v70 = sub_10001C2BC(v99, type metadata accessor for ICArchiveModel);
    v55 = v102;
LABEL_49:
    *&v108 = v55;
    __chkstk_darwin(v70);
    *(&v87 - 4) = v31;
    *(&v87 - 3) = v68;
    *(&v87 - 2) = v67;
    swift_getWitnessTable();
    result = sub_1000851C8();
  }

LABEL_56:
  *(v31 + 104) = 0;
  return result;
}

uint64_t sub_100014904(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_1000852E8();
  if (!v26)
  {
    return sub_100085238();
  }

  v48 = v26;
  v52 = sub_1000856D8();
  v39 = sub_1000856E8();
  sub_100085698(v48);
  result = sub_1000852D8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_100085318();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1000856C8();
      result = sub_1000852F8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100014D24()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = sub_100084AD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  sub_100084B28();
  sub_100084AB8();
  (*(v1 + 104))(v5, enum case for ICObjectReferences.Types.folder<A>(_:), v0);
  v8 = sub_100084AC8();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_100014EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v50 = a1;
  v4 = *(*v3 + 88);
  v5 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_100084B28();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v7);
  v42 = &v42 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v42 - v13;
  v15 = sub_100084EF8();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  if (qword_1000A53E8 != -1)
  {
    swift_once();
  }

  v22 = sub_100084F28();
  sub_10000B614(v22, qword_1000A5AB8);
  v49 = v7;
  sub_100084A78();
  swift_getAssociatedConformanceWitness();
  sub_100085908();
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_100085068();

  sub_100084F18();
  sub_100084ED8();
  v23 = sub_100084F18();
  v24 = sub_100085408();
  if (sub_1000854D8())
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v26, "Export Object", "", v25, 2u);
  }

  v28 = v47;
  v27 = v48;
  (*(v47 + 16))(v19, v21, v48);
  v29 = sub_100084F68();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_100084F58();
  v34 = v42;
  v33 = v43;
  v36 = v49;
  v35 = v50;
  (*(v43 + 16))(v42, v50, v49);
  v37 = (*(v33 + 88))(v34, v36);
  if (v37 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v33 + 8))(v34, v36);
    v38 = objc_autoreleasePoolPush();
    v39 = "Account to be exported does not exist anymore — skipping";
    v40 = sub_100015F30;
LABEL_13:
    sub_100016418(v44, v35, v45, v46, &v51, v40, v39);
    objc_autoreleasePoolPop(v38);
    sub_100015CA0(v32, "Export Object");

    return (*(v28 + 8))(v21, v27);
  }

  if (v37 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v33 + 8))(v34, v49);
    v38 = objc_autoreleasePoolPush();
    v39 = "Folder to be exported does not exist anymore — skipping";
    v40 = sub_1000166C8;
    goto LABEL_13;
  }

  if (v37 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v33 + 8))(v34, v49);
    v38 = objc_autoreleasePoolPush();
    v39 = "Note to be exported does not exist anymore — skipping";
    v40 = sub_100016BAC;
    goto LABEL_13;
  }

  if (v37 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v33 + 8))(v34, v49);
    v38 = objc_autoreleasePoolPush();
    v39 = "Object to be exported does not exist anymore — skipping";
    v40 = sub_1000178C8;
    goto LABEL_13;
  }

  result = sub_100085938();
  __break(1u);
  return result;
}

uint64_t sub_1000154B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a3;
  v71 = a6;
  v10 = sub_1000847C8();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v77 = &v70 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v70 - v20;
  __chkstk_darwin(v19);
  v24 = &v70 - v23;
  v84 = a5;
  v85 = a1;
  v78 = a4;
  v86 = a2;
  if (a5)
  {
    v72 = v22;
    v25 = sub_100085068();
    v26 = [v25 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v27 = sub_100085068();
    v28 = [v27 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084738();

    v29 = v72;
    v30 = *(v72 + 8);
    v30(v21, v10);
    v31 = *(v83 + 88);
    v32 = *(v83 + 96);
    swift_getObjectType();
    v82 = v31;
    v83 = v32;
    v33 = v87;
    sub_1000849C8();
    v34 = v33;
    if (!v33)
    {
      return (*(v29 + 32))(v71, v24, v10);
    }

    v30(v24, v10);
  }

  else
  {
    v81 = v10;
    v29 = v22;
    v35 = sub_100085068();
    v36 = [v35 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v37 = *(v83 + 88);
    v38 = *(v83 + 96);
    swift_getObjectType();
    v82 = v37;
    v83 = v38;
    v39 = v87;
    sub_1000849C8();
    v34 = v39;
    if (!v39)
    {
      return (*(v29 + 32))(v71, v18, v81);
    }

    v30 = *(v29 + 8);
    v10 = v81;
    v30(v18, v81);
  }

  v93 = v34;
  swift_errorRetain();
  v40 = sub_100005740(&qword_1000A5B98, &unk_10008B760);
  v79 = sub_100008250(0, &qword_1000A5BA0, NSError_ptr);
  v80 = v40;
  if (!swift_dynamicCast())
  {
  }

  v41 = v92;
  if ([v92 code] != 516)
  {
  }

  v87 = 0;
  v70 = v21;
  v81 = v10;

  v75 = v41;
  v76 = ICAttachmentNameMaxLength;
  v72 = v29;
  v74 = v29 + 8;
  for (i = 2; ; ++i)
  {
    v89 = i;
    v90 = 32;
    v91 = 0xE100000000000000;
    v94._countAndFlagsBits = sub_100085908();
    sub_100085158(v94);

    v43 = v90;
    v44 = v91;
    v45 = sub_100085068();
    v46 = [v45 ic_sanitizedFilenameString];

    v47 = sub_100085098();
    v49 = v48;

    v50 = sub_100085128();
    v52 = __OFSUB__(v76, v50);
    result = v76 - v50;
    if (v52)
    {
      break;
    }

    sub_100079EB8(result, v47, v49, v51);

    v54 = sub_1000850F8();
    v56 = v55;

    if (v84)
    {
      v90 = v54;
      v91 = v56;

      v95._countAndFlagsBits = v43;
      v95._object = v44;
      sub_100085158(v95);

      v57 = v70;
      sub_100084718();

      v58 = sub_100085068();
      v59 = [v58 ic_sanitizedFilenameString];

      sub_100085098();
      v60 = v77;
      sub_100084738();

      v61 = v81;
      v30(v57, v81);
      swift_getObjectType();
      v62 = v87;
      sub_1000849C8();
      v63 = v62;
      if (!v62)
      {

        (*(v72 + 32))(v71, v60, v61);
      }

      v30(v60, v61);
    }

    else
    {
      v90 = v54;
      v91 = v56;

      v96._countAndFlagsBits = v43;
      v96._object = v44;
      sub_100085158(v96);

      v64 = v73;
      sub_100084718();

      swift_getObjectType();
      v65 = v87;
      sub_1000849C8();
      v63 = v65;
      if (!v65)
      {
        v69 = v81;

        (*(v72 + 32))(v71, v64, v69);
      }

      v30(v64, v81);
    }

    v66 = v75;
    v90 = v63;
    swift_errorRetain();
    if (!swift_dynamicCast() || (v67 = v89, v68 = [v89 code], v67, v68 != 516))
    {
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v87 = 0;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100015CA0(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_100084F38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084EF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A53E8 != -1)
  {
    swift_once();
  }

  v12 = sub_100084F28();
  sub_10000B614(v12, qword_1000A5AB8);
  v13 = sub_100084F18();
  sub_100084F48();
  v14 = sub_1000853F8();
  if (sub_1000854D8())
  {

    sub_100084F78();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_100015F30(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v55 = a2;
  v56 = a3;
  v9 = *v6;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  sub_100085348();
  if (!v5)
  {
    v49 = v15;
    v50 = a4;
    v53 = 0;
    v54 = v17;
    v51 = v11;
    v52 = v10;
    v18 = a1[3];
    v19 = a1[4];
    sub_10000626C(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = a1;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v24 = [objc_opt_self() mainBundle];
      v25 = sub_100085068();
      v26 = [v24 localizedStringForKey:v25 value:0 table:0];

      v27 = sub_100085098();
      v23 = v28;

      v20 = v27;
    }

    v29 = v6;
    if (*(v6 + 24))
    {
      v30 = 0;
    }

    else
    {
      v30 = 0x746E756F636361;
    }

    if (*(v6 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    v32 = v53;
    v33 = v54;
    sub_1000154B4(v20, v23, v56, v30, v31, v54);
    if (v32)
    {
    }

    else
    {
      v34 = v9;

      if (*(v6 + 25) == 1)
      {
        v36 = v50;
        v37 = v55;
      }

      else
      {
        v41 = v6[11];
        v56 = v29[12];
        v42 = v49;
        sub_100084718();
        v43 = v22[3];
        v44 = v22[4];
        sub_10000626C(v22, v43);
        v45 = *(v29 + 5);
        v57[0] = *(v29 + 3);
        v57[1] = v45;
        v58[0] = *(v29 + 7);
        *(v58 + 13) = *(v29 + 69);
        v46 = (*(v44 + 96))(v57, v43, v44);
        v48 = v47;
        swift_getObjectType();
        sub_1000849A8();
        v36 = v50;
        v34 = v9;
        v37 = v55;
        (*(v51 + 8))(v42, v52);
        v35 = sub_10000650C(v46, v48);
        v33 = v54;
      }

      v59 = v37;
      __chkstk_darwin(v35);
      *(&v49 - 4) = v29;
      *(&v49 - 3) = v33;
      *(&v49 - 2) = v36;
      v40 = v34 + 80;
      v39 = *(v34 + 80);
      v38 = *(v40 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      sub_100085278();
      swift_getWitnessTable();
      sub_1000851C8();
      (*(v51 + 8))(v33, v52);
    }
  }
}

void sub_100016418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t), const char *a7)
{
  v26 = a5;
  v12 = a1[2];
  v13 = *(*a1 + 80);
  v14 = *(*a1 + 88);
  sub_100084A68();
  if (v7)
  {
    *v26 = v7;
    return;
  }

  if (v21)
  {
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    if (swift_dynamicCast())
    {
      if (*(&v23 + 1))
      {
        sub_10001C024(&v22, v25);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_100084B28();
        v15 = sub_100084AF8();
        a6(v25, v15, a3, a4);
        sub_100006304(v25);

        return;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }
  }

  else
  {
    sub_1000058F0(v20, &qword_1000A5AD0, &unk_10008B5E0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  sub_1000058F0(&v22, &qword_1000A5BA8, &qword_10008F750);
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v16 = sub_100084FB8();
  sub_10000B614(v16, qword_1000A5AA0);
  v17 = sub_100084FA8();
  v18 = sub_100085388();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, a7, v19, 2u);
  }
}

void sub_1000166C8(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v55 = a2;
  v56 = a3;
  v9 = *v6;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  sub_100085348();
  if (!v5)
  {
    v49 = v15;
    v50 = a4;
    v53 = 0;
    v54 = v17;
    v51 = v11;
    v52 = v10;
    v18 = a1[3];
    v19 = a1[4];
    sub_10000626C(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = a1;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v24 = [objc_opt_self() mainBundle];
      v25 = sub_100085068();
      v26 = [v24 localizedStringForKey:v25 value:0 table:0];

      v27 = sub_100085098();
      v23 = v28;

      v20 = v27;
    }

    v29 = v6;
    if (*(v6 + 24))
    {
      v30 = 0;
    }

    else
    {
      v30 = 0x7265646C6F66;
    }

    if (*(v6 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0xE600000000000000;
    }

    v32 = v53;
    v33 = v54;
    sub_1000154B4(v20, v23, v56, v30, v31, v54);
    if (v32)
    {
    }

    else
    {
      v34 = v9;

      if (*(v6 + 25) == 1)
      {
        v36 = v50;
        v37 = v55;
      }

      else
      {
        v41 = v6[11];
        v56 = v29[12];
        v42 = v49;
        sub_100084718();
        v43 = v22[3];
        v44 = v22[4];
        sub_10000626C(v22, v43);
        v45 = *(v29 + 5);
        v57[0] = *(v29 + 3);
        v57[1] = v45;
        v58[0] = *(v29 + 7);
        *(v58 + 13) = *(v29 + 69);
        v46 = (*(v44 + 96))(v57, v43, v44);
        v48 = v47;
        swift_getObjectType();
        sub_1000849A8();
        v36 = v50;
        v34 = v9;
        v37 = v55;
        (*(v51 + 8))(v42, v52);
        v35 = sub_10000650C(v46, v48);
        v33 = v54;
      }

      v59 = v37;
      __chkstk_darwin(v35);
      *(&v49 - 4) = v29;
      *(&v49 - 3) = v33;
      *(&v49 - 2) = v36;
      v40 = v34 + 80;
      v39 = *(v34 + 80);
      v38 = *(v40 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      sub_100085278();
      swift_getWitnessTable();
      sub_1000851C8();
      (*(v51 + 8))(v33, v52);
    }
  }
}

void sub_100016BAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v129 = a3;
  v130 = a2;
  isa = *v5;
  v132 = a1;
  v128 = type metadata accessor for NoteMetadata(0);
  v7 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v9 = &v117[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000847C8();
  v133 = *(v10 - 8);
  v11 = *(v133 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v117[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v117[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v117[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v117[-v22];
  __chkstk_darwin(v21);
  v25 = &v117[-v24];
  v26 = v134;
  sub_100085348();
  if (!v26)
  {
    v121 = v23;
    v123 = v20;
    v119 = v14;
    v120 = v9;
    v126 = a4;
    v125 = v25;
    v134 = 0;
    v127 = v5;
    v28 = *(v5 + 25);
    v29 = isa;
    v30 = v132;
    v31 = v17;
    if (v28 != 1 || (sub_10001C118(v132, v135), sub_100005740(&qword_1000A59C8, &qword_10008B770), sub_100008250(0, &qword_1000A56C0, ICNote_ptr), v27 = swift_dynamicCast(), (v27 & 1) == 0) || (v32 = v138, v33 = [v138 isPasswordProtectedAndLocked], v32, (v33 & 1) == 0))
    {
      v34 = v30;
      v122 = v31;
      v124 = v10;
      v135[0] = v130;
      __chkstk_darwin(v27);
      v35 = *(v29 + 10);
      v36 = *(v29 + 11);
      *&v117[-16] = v35;
      *&v117[-8] = v36;
      KeyPath = swift_getKeyPath();
      v38 = __chkstk_darwin(KeyPath);
      v39 = &v117[-48];
      *&v117[-32] = v35;
      *&v117[-24] = v36;
      *&v117[-16] = v38;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      v40 = sub_100085278();
      WitnessTable = swift_getWitnessTable();
      v42 = v134;
      v44 = sub_100014904(sub_10001C0CC, &v117[-48], v40, &type metadata for Int, &type metadata for Never, WitnessTable, &protocol witness table for Never, v43);
      v134 = v42;

      v46 = v44;
      v47 = *(v44 + 16);
      if (v47)
      {
        v48 = 0;
        v49 = (v44 + 32);
        v50 = v127;
        while (1)
        {
          v51 = *v49++;
          v52 = __OFADD__(v48, v51);
          v48 = (v48 + v51);
          if (v52)
          {
            break;
          }

          if (!--v47)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v48 = 0;
      v50 = v127;
LABEL_11:

      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v53 = 1702129518;
      isa = sub_100085338(v48 + 1, 1).super.isa;
      v118 = v28;
      if (v28 == 1)
      {
        if (v50[24] == 1)
        {
          v54 = v34[3];
          v55 = v34[4];
          sub_10000626C(v34, v54);
          v56 = (*(v55 + 8))(v54, v55);
          v57 = v121;
          v58 = v134;
          sub_1000154B4(v56, v59, v129, 0, 0xE000000000000000, v121);
          v134 = v58;
          if (v58)
          {

LABEL_27:

            return;
          }

          v123 = v40;
          v77 = v34;

          v79 = v57;
          v74 = v125;
          (*(v133 + 32))(v125, v79, v124);
          v67 = 0xE400000000000000;
          goto LABEL_30;
        }

        v67 = 0xE400000000000000;
        v65 = 1702129518;
        v73 = v133;
        v78 = v134;
        v74 = v125;
        v75 = v129;
        v76 = v123;
        goto LABEL_26;
      }

      v60 = v34[3];
      v61 = v34[4];
      sub_10000626C(v34, v60);
      (*(v61 + 16))(v60, v61);
      if (v62)
      {
        v63 = sub_100085068();

        v64 = [v63 ic_sanitizedFilenameString];

        v65 = sub_100085098();
        v67 = v66;

        v68 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v68 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v68)
        {
          goto LABEL_22;
        }
      }

      v69 = [objc_opt_self() mainBundle];
      v70 = sub_100085068();
      v71 = [v69 localizedStringForKey:v70 value:0 table:0];

      v65 = sub_100085098();
      v67 = v72;

LABEL_22:
      v73 = v133;
      v74 = v125;
      v75 = v129;
      v76 = v123;
      if (v50[24])
      {
        v123 = v40;
        v77 = v34;
        (*(v133 + 16))(v125, v129, v124);
        v53 = v65;
LABEL_30:
        v135[0] = v53;
        v135[1] = v67;
        v139._countAndFlagsBits = 6581550;
        v139._object = 0xE300000000000000;
        sub_100085158(v139);
        goto LABEL_31;
      }

      v78 = v134;
LABEL_26:
      sub_1000154B4(v65, v67, v75, 1702129518, 0xE400000000000000, v76);
      v134 = v78;
      if (v78)
      {
        goto LABEL_27;
      }

      v123 = v40;
      v77 = v34;
      (*(v73 + 32))(v74, v76, v124);

LABEL_31:
      v80 = v122;
      sub_100084718();

      v81 = v127;
      v82 = *(v127 + 88);
      v132 = *(v127 + 96);
      v83 = v74;
      v84 = v77;
      v85 = v77[3];
      v86 = v77[4];
      sub_10000626C(v77, v85);
      v87 = *(v81 + 40);
      v136[0] = *(v81 + 24);
      v136[1] = v87;
      v137[0] = *(v81 + 56);
      *(v137 + 13) = *(v81 + 69);
      v88 = v134;
      v89 = (*(v86 + 96))(v136, v85, v86);
      if (v88)
      {
        v91 = *(v133 + 8);
        v92 = v124;
        v91(v80, v124);

        v91(v83, v92);
        return;
      }

      v93 = v89;
      v94 = v90;
      v95 = v84;
      ObjectType = swift_getObjectType();
      sub_1000849A8();
      v134 = 0;
      v28 = v82;
      sub_10000650C(v93, v94);
      v97 = v133;
      if (v118 != 1)
      {
        v102 = v126;
        v48 = isa;
        goto LABEL_43;
      }

      v129 = ObjectType;
      sub_10001C118(v95, v135);
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
      v98 = swift_dynamicCast();
      v48 = isa;
      if ((v98 & 1) == 0)
      {
LABEL_42:
        v102 = v126;
LABEL_43:
        v107 = [(objc_class *)v48 completedUnitCount];
        v108 = v48;
        v109 = v130;
        if (!__OFADD__(v107, 1))
        {
          v110 = [(objc_class *)v108 setCompletedUnitCount:v107 + 1];
          v135[0] = v109;
          __chkstk_darwin(v110);
          v111 = v125;
          *&v117[-32] = v127;
          *&v117[-24] = v111;
          *&v117[-16] = v108;
          swift_getWitnessTable();
          v112 = v134;
          sub_1000851C8();
          v134 = v112;
          if (v112)
          {
            v113 = *(v97 + 8);
            v114 = v124;
            v113(v122, v124);

            v113(v111, v114);
          }

          else
          {
            sub_10001A820([v102 completedUnitCount]);

            v115 = *(v97 + 8);
            v116 = v124;
            v115(v122, v124);
            v115(v111, v116);
          }

          return;
        }

LABEL_49:
        __break(1u);
        return;
      }

      v50 = v138;
      v34 = v120;
      sub_1000082C8(v50, v120);
      sub_10001C274(&qword_1000A5718, type metadata accessor for NoteMetadata);
      v99 = v134;
      v46 = sub_100084E28();
      v39 = v99;
      if (v99)
      {

        sub_10001C2BC(v34, type metadata accessor for NoteMetadata);
        v100 = *(v133 + 8);
        v101 = v124;
        v100(v122, v124);
        v100(v125, v101);
        return;
      }

LABEL_39:
      v103 = v46;
      v104 = v45;
      v134 = v28;
      sub_100084718();
      sub_1000849A8();
      v134 = v39;
      if (v39)
      {
        sub_10000650C(v103, v104);

        v105 = *(v133 + 8);
        v106 = v124;
        v105(v119, v124);
        sub_10001C2BC(v34, type metadata accessor for NoteMetadata);
        v105(v122, v106);
        v105(v125, v106);
        return;
      }

      sub_10000650C(v103, v104);

      v97 = v133;
      (*(v133 + 8))(v119, v124);
      sub_10001C2BC(v34, type metadata accessor for NoteMetadata);
      goto LABEL_42;
    }
  }
}