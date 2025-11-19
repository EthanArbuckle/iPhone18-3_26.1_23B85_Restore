uint64_t sub_1821701E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v142 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  v45 = *a2;
  v6 = *(a2 + 16);
  v93 = *(a2 + 24);
  v7 = *(a2 + 40);
  v91 = *(a2 + 32);
  v92 = *(a2 + 48);
  v76 = *(a2 + 72);
  v77 = *(a2 + 56);
  v87 = *(a2 + 88);
  v74 = *(a2 + 112);
  v81 = *(a2 + 96);
  v86 = *(a2 + 128);
  v75 = *(a2 + 136);
  v85 = *(a2 + 138);
  *&v89[4] = *(a2 + 144);
  v89[0] = *(a2 + 160);
  v8 = *(a2 + 168);
  HIDWORD(v79) = *(a2 + 176);
  v83 = *(a2 + 177);
  v84 = *(a2 + 152);
  v82 = *(a2 + 185);
  v72 = *(a2 + 193);
  v73 = *(a2 + 140);
  LOBYTE(v79) = *(a2 + 194);
  v80 = *(a2 + 200);
  v78 = *(a2 + 208);
  v9 = *(a2 + 216);
  v10 = *(a2 + 224);
  swift_beginAccess();
  v11 = *(v2 + 40);
  if (!*(v11 + 16) || (v12 = sub_18224EEF0(a1), (v13 & 1) == 0))
  {
    v20 = 0;
    v18 = v45;
    v19 = *&v89[4];
    v21 = v91;
    goto LABEL_38;
  }

  v71 = v7;
  v68 = v6;
  v14 = *(*(v11 + 56) + 8 * v12);
  v15 = v3[8];
  if ((v15 & 0x10) == 0)
  {
    v3[8] = v15 | 0x10;
  }

  v70 = v8;
  v7 = &v104;
  v16 = *(*v3 + 1224);
  v43 = v14;

  v16(a1);
  if (v10)
  {
    v18 = v45;
    v6 = v68;
    v19 = *&v89[4];
    goto LABEL_30;
  }

  v18 = v45;
  v6 = v68;
  v19 = *&v89[4];
  while (1)
  {
    v22 = v5;
    v23 = v6;
    v6 = v70;
    v24 = v19;
    v5 = HIDWORD(v79);
    v25 = v79;
    v21 = v80;
    v26 = v78;
    if (v9)
    {
      v27 = *(v9 + 24);
      v17 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v17)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v28 = 1;
      if (v17)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    if (v28 < 1)
    {
      break;
    }

    v48 = v18;
    v61 = v22;
    v62 = v23;
    v63 = v93;
    v49 = v87;
    v50 = v91;
    v51 = v71;
    v52 = v92;
    v53 = v86;
    v54 = v75;
    v55 = v85;
    v64 = v77;
    v65 = v76;
    v56 = v84;
    v57 = v83;
    v66 = v81;
    v67 = v74;
    v58 = v82;
    v59 = v24;
    v96 = v73 & 1;
    v95 = v89[0] & 1;
    v94 = v72 & 1;
    v60 = v80;
    if (v9 && (v104 = v9, *(v9 + 24)))
    {

      v18 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1820E5FD0();
        v18 = v104;
      }

      v29 = v18[4];
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_45;
      }

      v44 = v79;
      v31 = v3;
      LOBYTE(v3) = v78;
      v32 = v18[v29 + 5];
      v33 = v18[3];
      if (v30 >= v18[2])
      {
        v30 = 0;
      }

      v18[4] = v30;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_47;
      }

      v18[3] = v33 - 1;
      LOBYTE(v139) = 1;
      v103[0] = 1;
      v102[0] = 1;
      swift_beginAccess();
      v34 = v139;
      v46 = *(v32 + 16);
      v47 = *(v32 + 24);
      v69 = *(v32 + 32);
      v93 = *(v32 + 40);
      v91 = *(v32 + 48);
      v71 = *(v32 + 56);
      v92 = *(v32 + 64);
      v76 = *(v32 + 88);
      v77 = *(v32 + 72);
      v87 = *(v32 + 104);
      v74 = *(v32 + 128);
      v81 = *(v32 + 112);
      v86 = *(v32 + 144);
      v75 = *(v32 + 152);
      v85 = *(v32 + 154);
      *&v89[4] = *(v32 + 160);
      v84 = *(v32 + 168);
      v70 = *(v32 + 184);
      v83 = *(v32 + 193);
      v82 = *(v32 + 201);
      v80 = *(v32 + 216);
      v78 = *(v32 + 224);
      LOBYTE(v79) = *(v32 + 210);
      HIDWORD(v79) = *(v32 + 192);
      v89[0] = *(v32 + 176);
      v73 = *(v32 + 156);
      v72 = *(v32 + 209);
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0;
      *(v32 + 40) = 6;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 2;
      *(v32 + 72) = 0u;
      *(v32 + 88) = 0u;
      *(v32 + 104) = 0;
      *(v32 + 112) = 0u;
      *(v32 + 128) = 0u;
      *(v32 + 144) = 0;
      *(v32 + 152) = 2;
      *(v32 + 156) = v34;
      *(v32 + 160) = 0;
      *(v32 + 168) = 0;
      *(v32 + 176) = 1;
      *(v32 + 192) = 0;
      *(v32 + 200) = 0;
      *(v32 + 184) = 0;
      *(v32 + 208) = 0;
      *(v32 + 209) = 1;
      *(v32 + 210) = 0;
      *(v32 + 216) = 0;
      *(v32 + 224) = -1;

      v21 = 0;
      v9 = v18;
      v18 = v46;
      v26 = v3;
      v3 = v31;
      v25 = v44;
    }

    else
    {
      v21 = 1;
      LOBYTE(v104) = 1;
      LOBYTE(v139) = 1;
      v103[0] = 1;

      v9 = 0;
      v18 = 0;
      v47 = 0;
      v69 = 0;
      v70 = 0;
      *&v89[8] = 0;
      v91 = 0;
      v71 = 0;
      v87 = 0;
      v86 = 0;
      v85 = 0;
      v83 = 0;
      v84 = 0;
      v79 = 0;
      v80 = 0;
      v82 = 0;
      *v89 = v139;
      v72 = 1;
      v73 = v104;
      v81 = 0u;
      v78 = -1;
      v74 = 0u;
      v92 = 2;
      v76 = 0u;
      v77 = 0u;
      v93 = 6;
      v75 = 2;
    }

    if (v6 && *(v6 + 24) < 0)
    {
      goto LABEL_46;
    }

    v104 = v48;
    v105 = v61;
    v106 = v62;
    v107 = v63;
    *v108 = v139;
    *&v108[3] = *(&v139 + 3);
    v109 = v50;
    v110 = v51;
    v111 = v52;
    *v112 = *v103;
    *&v112[3] = *&v103[3];
    v113 = v64;
    v114 = v65;
    v115 = v49;
    *v116 = *v102;
    *&v116[3] = *&v102[3];
    v117 = v66;
    v118 = v67;
    v119 = v53;
    v120 = v54;
    v121 = v55;
    v122 = v96;
    v123 = v100;
    v124 = v101;
    v125 = v59;
    v126 = v56;
    v127 = v95;
    *&v128[3] = *&v99[3];
    *v128 = *v99;
    v129 = v6;
    v130 = v5 & 1;
    v131 = v57;
    v132 = v58;
    v133 = v94;
    v134 = v25 & 1;
    v136 = v98;
    v135 = v97;
    v137 = v60;
    v138 = v26;
    (*(*v3 + 1200))(&v104);
    v5 = v47;
    v6 = v69;
    v19 = *&v89[4];
    if (v21)
    {
      goto LABEL_30;
    }
  }

  v5 = v22;
  v19 = v24;
  v6 = v23;
LABEL_30:
  (*(*v3 + 1232))(a1);
  v35 = v3[8];
  if ((v35 & 0x10) != 0)
  {
    v3[8] = v35 & 0xFFEF;
  }

  if ((*(v43 + 56) & 0x100) != 0)
  {
    *(v43 + 56) &= ~0x100u;
    v36 = *(v43 + 64);
    v37 = *(v43 + 72);
    v38 = *(v43 + 80);
    v104 = v36;
    v105 = v37;
    LOBYTE(v106) = v38;
    if (*(v43 + 104) == 6 && *(v43 + 88) == 0)
    {
      *(v43 + 88) = v43;
      *(v43 + 96) = &off_1EEFC4E60;
      *(v43 + 104) = 3;
      v42 = v36;
      v88 = v37;
      v90 = v38;

      sub_181F68EA8(v42, v88, v90);
      sub_181F68E5C(0, 0, 6u);
    }

    else
    {
      sub_181F68EA8(v36, v37, v38);
    }

    v39 = *(v43 + 96);
    v40 = *(v43 + 104);
    v139 = *(v43 + 88);
    v140 = v39;
    v141 = v40;
    sub_181F68EA8(v139, v39, v40);
    InputHandlerLinkage.invokeOutputAvailable(_:)(&v139);
    sub_181F68E5C(v139, v140, v141);
    sub_181F68E5C(v104, v105, v106);
  }

  sub_182170B00();

  v20 = 1;
  v21 = v91;
  v7 = v71;
LABEL_38:

  LOBYTE(v3) = v92;
  if (v92 != 2 || v7 | v21)
  {
LABEL_48:
    sub_181F68EF4(v18, v5, v6, v93);

    sub_181F68F3C(v21, v7, v3);
    __break(1u);
  }

  if (!(v89[0] & 1 | (v19 == 0)))
  {
    MEMORY[0x1865DF520](v19, -1, -1);
  }

  sub_181F68EF4(v18, v5, v6, v93);

  return v20;
}

uint64_t sub_182170B00()
{
  v31 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * v8)));
    swift_beginAccess();
    if ((*(v9 + 248) & 1) == 0)
    {
      swift_beginAccess();
      v10 = *(v9 + 200);
      v11 = *(v9 + 232);
      v26[12] = *(v9 + 216);
      v26[13] = v11;
      v27 = *(v9 + 248);
      v12 = *(v9 + 136);
      v13 = *(v9 + 168);
      v26[8] = *(v9 + 152);
      v26[9] = v13;
      v26[10] = *(v9 + 184);
      v26[11] = v10;
      v14 = *(v9 + 72);
      v15 = *(v9 + 104);
      v26[4] = *(v9 + 88);
      v26[5] = v15;
      v26[6] = *(v9 + 120);
      v26[7] = v12;
      v16 = *(v9 + 40);
      v26[0] = *(v9 + 24);
      v26[1] = v16;
      v26[2] = *(v9 + 56);
      v26[3] = v14;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      *(v9 + 48) = 6;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 72) = 2;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0;
      *(v9 + 120) = 0u;
      *(v9 + 136) = 0u;
      *(v9 + 152) = 0;
      *(v9 + 160) = 2;
      *(v9 + 164) = 1;
      *(v9 + 168) = 0;
      *(v9 + 176) = 0;
      *(v9 + 184) = 1;
      *(v9 + 192) = 0;
      *(v9 + 200) = 0;
      *(v9 + 216) = 0;
      *(v9 + 208) = 0;
      *(v9 + 217) = 1;
      *(v9 + 224) = 0;
      *(v9 + 232) = -1;
      *(v9 + 240) = 0;
      *(v9 + 248) = 1;

      swift_endAccess();
      v17 = *(v9 + 288);
      v18 = *(v9 + 296);
      v28 = *(v9 + 280);
      v29 = v17;
      v30 = v18;
      v20 = *(v9 + 312);
      v21 = *(v9 + 320);
      v23 = *(v9 + 304);
      v19 = v23;
      v24 = v20;
      v25 = v21;
      sub_181F68EA8(v28, v17, v18);
      sub_181F68EA8(v19, v20, v21);
      OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(&v23, v26);

      sub_181F68E5C(v23, v24, v25);
      sub_181F68E5C(v28, v29, v30);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    if (v7 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }
}

uint64_t sub_182170D94(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  swift_beginAccess();
  v10 = *(v4 + 48);
  if (!*(v10 + 16) || (v11 = sub_18224F070(v8, v9), (v12 & 1) == 0))
  {
    memset(&v77[24], 0, 17);
    *&v77[8] = 0u;
    v78 = 0u;
    v79 = 0u;
    *&v80 = 0;
    DWORD2(v80) = 2;
    BYTE12(v80) = 1;
    v81 = 0uLL;
    LOBYTE(v82) = 1;
    *(&v82 + 1) = 0;
    v83 = 0uLL;
    LOWORD(v84) = 256;
    BYTE2(v84) = 0;
    *(&v84 + 1) = 0;
    LOBYTE(v85) = -1;
    *&v75 = 0;
    v74 = 0uLL;
    BYTE8(v75) = 6;
    v76 = 0uLL;
    v77[0] = 2;
    v69 = v82;
    v70 = 0u;
    v71 = v84;
    LOBYTE(v72) = -1;
    v65 = 0u;
    v66 = 0u;
    v67 = v80;
    v68 = 0u;
    v61 = 0uLL;
    v62 = *v77;
    v63 = *&v77[16];
    v64 = *&v77[32];
    v59 = 0u;
    v60 = v75;
    *&v77[24] = Frame.bufferLength.getter();
    a3(&v74);
    a4 = *(&v74 + 1);
    v20 = v74;
    v13 = v75;
    LOBYTE(a2) = BYTE8(v75);
    v16 = *(&v76 + 1);
    v15 = v76;
    LOBYTE(v17) = v77[0];
    if (v77[0] == 2 && v76 == 0)
    {
      if ((v82 & 1) != 0 || !v81)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_42:
    sub_181F68EF4(v20, a4, v13, a2);

    v22 = sub_181F68F3C(v15, v16, v17);
    __break(1u);
LABEL_43:
    sub_181F68EF4(v22, v23, v24, v25);

    sub_181F68F3C(v20, a4, v13);
    __break(1u);
LABEL_44:
    sub_181F68EF4(v20, a4, v13, a2);

    sub_181F68F3C(v15, v16, v17);
    __break(1u);
LABEL_45:
    sub_181F68EF4(v20, a4, v13, a2);

    result = sub_181F68F3C(v15, v16, v17);
    __break(1u);
    return result;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  v14 = *(v13 + 16);
  if ((v14 & 2) == 0)
  {
    v35 = a3;
    v15 = *(v13 + 288);
    v16 = *(v13 + 296);
    *&v44 = *(v13 + 280);
    *(&v44 + 1) = v15;
    LOBYTE(v45) = v16;
    v18 = *(v13 + 312);
    v19 = *(v13 + 320);
    v36 = *(v13 + 304);
    LOBYTE(v17) = v36;
    v37 = v18;
    LOBYTE(v38) = v19;

    sub_181F68EA8(v44, v15, v16);
    sub_181F68EA8(v36, v18, v19);
    OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(&v36, a2, a2, 1uLL, &v59);
    sub_181F68E5C(v36, v37, v38);
    sub_181F68E5C(v44, *(&v44 + 1), v45);
    v84 = v71;
    v85 = v72;
    v86 = v73;
    v80 = v67;
    v81 = v68;
    v82 = v69;
    v83 = v70;
    *&v77[16] = v63;
    *&v77[32] = v64;
    v78 = v65;
    v79 = v66;
    v74 = v59;
    v75 = v60;
    v76 = v61;
    *v77 = v62;
    if (sub_181F3D1E4(&v74) == 1)
    {
LABEL_21:

      return 0;
    }

    v20 = *(&v85 + 1);
    v56 = v84;
    v57 = v85;
    v58 = v86;
    v52 = v80;
    v53 = v81;
    v54 = v82;
    v55 = v83;
    v48 = *&v77[16];
    v49 = *&v77[32];
    v50 = v78;
    v51 = v79;
    v44 = v74;
    v45 = v75;
    v46 = v76;
    v47 = *v77;
    if (v86)
    {

      v23 = *(&v44 + 1);
      v22 = v44;
      v24 = v45;
      v25 = BYTE8(v45);
      a4 = *(&v46 + 1);
      v20 = v46;
      v13 = v47;
      if (v47 == 2 && v46 == 0)
      {
        if ((v82 & 1) == 0)
        {
          if (v81)
          {
            v26 = v44;
            v27 = v45;
            v28 = BYTE8(v45);
            MEMORY[0x1865DF520](v81, -1, -1);
            v23 = *(&v26 + 1);
            v22 = v26;
            v24 = v27;
            v25 = v28;
          }
        }

        sub_181F68EF4(v22, v23, v24, v25);
        goto LABEL_21;
      }

      goto LABEL_43;
    }

    if (*(&v85 + 1))
    {
      v29 = *(*(&v85 + 1) + 24);
    }

    else
    {
      v29 = 0;
    }

    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      __break(1u);
    }

    else if (v31 == 1)
    {
      FrameArray.popFirst()(&v36);
      v35(&v36);

      v20 = v36;
      a4 = v37;
      v13 = v38;
      LOBYTE(a2) = v39;
      v16 = *(&v40 + 1);
      v15 = v40;
      LOBYTE(v17) = v41;
      if (v41 != 2 || v40 != 0)
      {
        goto LABEL_44;
      }

      if ((v43 & 1) == 0 && v42)
      {
        MEMORY[0x1865DF520](v42, -1, -1);
      }

      sub_181F68EF4(v20, a4, v13, a2);

      a4 = *(&v44 + 1);
      v20 = v44;
      v13 = v45;
      LOBYTE(a2) = BYTE8(v45);
      v16 = *(&v46 + 1);
      v15 = v46;
      v17 = v47;
      v32 = v53;
      v33 = v54;

      if (v17 != 2 || __PAIR128__(v16, v15) != 0)
      {
        goto LABEL_45;
      }

      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
LABEL_11:
        sub_181F68EF4(v20, a4, v13, a2);

        return 1;
      }

LABEL_10:
      MEMORY[0x1865DF520]();
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_42;
  }

  result = 0;
  if ((~v14 & 5) != 0)
  {
    *(v13 + 16) = v14 | 5;
  }

  return result;
}

uint64_t sub_1821712EC@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  result = sub_182170D94(&v8, a2, a3, a4);
  *a5 = (result & 1) == 0;
  return result;
}

void sub_182171338(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v6;
  v54 = *(a1 + 192);
  v55 = *(a1 + 208);
  v7 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v7;
  v8 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v8;
  v9 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v9;
  v10 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v10;
  v11 = *(a1 + 16);
  v42 = *a1;
  v43 = v11;
  v12 = *a2;
  v13 = *(a2 + 8);
  swift_beginAccess();
  v14 = *(v3 + 48);
  if (*(v14 + 16) && (v15 = sub_18224F070(v12, v13), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_beginAccess();

    FrameArray.add(frame:)(&v42);
    swift_endAccess();
    if ((*(v4 + 16) & 0x10) == 0 && (a3 & 1) != 0 && (*(v17 + 248) & 1) == 0)
    {
      swift_beginAccess();
      v18 = *(v17 + 216);
      v35[11] = *(v17 + 200);
      v35[12] = v18;
      v35[13] = *(v17 + 232);
      v36 = *(v17 + 248);
      v19 = *(v17 + 152);
      v35[7] = *(v17 + 136);
      v35[8] = v19;
      v20 = *(v17 + 184);
      v35[9] = *(v17 + 168);
      v35[10] = v20;
      v21 = *(v17 + 72);
      v22 = *(v17 + 104);
      v35[4] = *(v17 + 88);
      v35[5] = v22;
      v35[6] = *(v17 + 120);
      v23 = *(v17 + 40);
      v35[0] = *(v17 + 24);
      v35[1] = v23;
      v35[2] = *(v17 + 56);
      v35[3] = v21;
      FrameArray.init()(v40);
      *(v17 + 200) = v40[11];
      *(v17 + 216) = v40[12];
      *(v17 + 232) = v40[13];
      *(v17 + 248) = v41;
      *(v17 + 136) = v40[7];
      *(v17 + 152) = v40[8];
      *(v17 + 168) = v40[9];
      *(v17 + 184) = v40[10];
      *(v17 + 72) = v40[3];
      *(v17 + 88) = v40[4];
      *(v17 + 104) = v40[5];
      *(v17 + 120) = v40[6];
      *(v17 + 24) = v40[0];
      *(v17 + 40) = v40[1];
      *(v17 + 56) = v40[2];
      swift_endAccess();
      v24 = *(v17 + 288);
      v25 = *(v17 + 296);
      v37 = *(v17 + 280);
      v38 = v24;
      v39 = v25;
      v26 = *(v17 + 312);
      v27 = *(v17 + 320);
      v32 = *(v17 + 304);
      v33 = v26;
      v34 = v27;
      sub_181F68EA8(v37, v24, v25);
      sub_181F68EA8(v32, v26, v27);
      OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(&v32, v35);

      sub_181F68E5C(v32, v33, v34);
      sub_181F68E5C(v37, v38, v39);
      return;
    }
  }

  else
  {
    Frame.finalize(success:)(0);
    v29 = *(&v42 + 1);
    v28 = v42;
    v30 = v43;
    v31 = BYTE8(v43);
    if (v45 != 2 || v44 != 0)
    {
      sub_181F68EF4(v42, *(&v42 + 1), v43, BYTE8(v43));

      sub_181F68F3C(v44, *(&v44 + 1), v45);
      __break(1u);
      return;
    }

    if ((v52 & 1) == 0 && v51)
    {
      MEMORY[0x1865DF520](v51, -1, -1);
      v29 = *(&v42 + 1);
      v28 = v42;
      v30 = v43;
      v31 = BYTE8(v43);
    }

    sub_181F68EF4(v28, v29, v30, v31);
  }
}

uint64_t sub_182171650(uint64_t result)
{
  if ((v1[8] & 0x80) != 0)
  {
    v2 = *result;
    v3 = *(result + 8);
    v5 = *result;
    v6 = v3;
    sub_18216BBA0(&v5);
    v4 = v1[8];
    if ((v4 & 0x80) == 0)
    {
      v1[8] = v4 | 0x80;
    }

    v5 = v2;
    v6 = v3;
    return (*(*v1 + 1208))(&v5);
  }

  return result;
}

void sub_1821716E4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v9 = *(a1 + 176);
  v57 = *(a1 + 160);
  v58 = v9;
  v59 = *(a1 + 192);
  v60 = *(a1 + 208);
  v10 = *(a1 + 112);
  v53 = *(a1 + 96);
  v54 = v10;
  v11 = *(a1 + 144);
  v55 = *(a1 + 128);
  v56 = v11;
  v12 = *(a1 + 48);
  v49 = *(a1 + 32);
  v50 = v12;
  v13 = *(a1 + 80);
  v51 = *(a1 + 64);
  v52 = v13;
  v14 = *(a1 + 16);
  v47 = *a1;
  v48 = v14;
  swift_beginAccess();
  v15 = *(v4 + 40);
  if (!*(v15 + 16) || (v16 = sub_18224EEF0(a2), (v17 & 1) == 0))
  {
    Frame.finalize(success:)(0);
    v32 = *(&v47 + 1);
    v31 = v47;
    v33 = v48;
    v34 = BYTE8(v48);
    if (v50 != 2 || v49 != 0)
    {
      sub_181F68EF4(v47, *(&v47 + 1), v48, BYTE8(v48));

      sub_181F68F3C(v49, *(&v49 + 1), v50);
      __break(1u);
      return;
    }

    if ((v57 & 1) == 0 && v56)
    {
      MEMORY[0x1865DF520](v56, -1, -1);
      v32 = *(&v47 + 1);
      v31 = v47;
      v33 = v48;
      v34 = BYTE8(v48);
    }

    sub_181F68EF4(v31, v32, v33, v34);
    goto LABEL_25;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  if (a3)
  {
    LOBYTE(v58) = 1;
  }

  if (a4)
  {
    BYTE2(v59) = 1;
  }

  swift_beginAccess();

  FrameArray.add(frame:)(&v47);
  swift_endAccess();
  v19 = *(v18 + 56);
  if ((v19 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  if ((*(v5 + 16) & 0x80) != 0)
  {
    if ((a4 & 1) != 0 && (v19 & 0x40) == 0)
    {
      *(v18 + 56) = v19 | 0x40;
    }

    goto LABEL_25;
  }

  v20 = *(v18 + 64);
  v21 = *(v18 + 72);
  v22 = *(v18 + 80);
  v44 = v20;
  v45 = v21;
  v46 = v22;
  if (*(v18 + 104) == 6 && *(v18 + 88) == 0)
  {
    *(v18 + 88) = v18;
    *(v18 + 96) = &off_1EEFC4E60;
    *(v18 + 104) = 3;
    v35 = v20;
    v36 = v21;
    v37 = v22;

    sub_181F68EA8(v35, v36, v37);
    sub_181F68E5C(0, 0, 6u);
  }

  else
  {
    sub_181F68EA8(v20, v21, v22);
  }

  v23 = *(v18 + 96);
  v24 = *(v18 + 104);
  v41 = *(v18 + 88);
  v42 = v23;
  v43 = v24;
  sub_181F68EA8(v41, v23, v24);
  InputHandlerLinkage.invokeInputAvailable(_:)(&v41);
  sub_181F68E5C(v41, v42, v43);
  sub_181F68E5C(v44, v45, v46);
  if ((a4 & 1) == 0)
  {
LABEL_25:

    return;
  }

  v25 = *(v18 + 56);
  if ((v25 & 0x40) != 0)
  {
    *(v18 + 56) = v25 & 0xFFBF;
  }

  v26 = *(v18 + 64);
  v27 = *(v18 + 72);
  v28 = *(v18 + 80);
  v44 = v26;
  v45 = v27;
  v46 = v28;
  if (*(v18 + 104) == 6 && *(v18 + 88) == 0)
  {
    *(v18 + 88) = v18;
    *(v18 + 96) = &off_1EEFC4E60;
    *(v18 + 104) = 3;
    v38 = v26;
    v39 = v27;
    v40 = v28;

    sub_181F68EA8(v38, v39, v40);
    sub_181F68E5C(0, 0, 6u);
  }

  else
  {
    sub_181F68EA8(v26, v27, v28);
  }

  v29 = *(v18 + 96);
  v30 = *(v18 + 104);
  v41 = *(v18 + 88);
  v42 = v29;
  v43 = v30;
  sub_181F68EA8(v41, v29, v30);
  sub_181F71CEC(&v41);

  sub_181F68E5C(v41, v42, v43);
  sub_181F68E5C(v44, v45, v46);
}

uint64_t sub_182171A2C(uint64_t result)
{
  *(v1 + 138) = 1;
  v2 = *(v1 + 96);
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_181B7D048;
    v6[3] = &block_descriptor_28;
    v5 = _Block_copy(v6);

    swift_retain_n();

    nw_context_reset_timer_block(v4, v1, v3, v5);

    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_182171B2C()
{
  *(v0 + 138) = 0;
  v1 = *(v0 + 96);
  if (v1)
  {
    nw_context_reset_timer_block(*(v1 + 16), v0, -1, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DefaultManyToManyProtocol.MultiplexedFlowIdentifier.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1865DB070](1);
  }

  return MEMORY[0x1865DB070](a2);
}

uint64_t DefaultManyToManyProtocol.MultiplexedFlowIdentifier.hashValue.getter(uint64_t a1)
{
  sub_182AD44E8();
  if (a1)
  {
    MEMORY[0x1865DB070](1);
  }

  MEMORY[0x1865DB070](a1);
  return sub_182AD4558();
}

uint64_t sub_182171BE0()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    MEMORY[0x1865DB070](1);
  }

  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_182171C38()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x1865DB070](1);
  }

  return MEMORY[0x1865DB070](v1);
}

uint64_t sub_182171C74()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    MEMORY[0x1865DB070](1);
  }

  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_182171CC8()
{
  if (*v0)
  {
    return sub_182AD2F38();
  }

  else
  {
    return 0x776F6C46206C6C41;
  }
}

BOOL sub_182171D08(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      return *a1 == v2;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_182171D38(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = sub_181F74A48(*a1, *(a1 + 8), *(a1 + 16), *(v4 + 64), *(v4 + 72), *(v4 + 80));
  if ((result & 1) == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843348);

    v10 = sub_182AD2678();
    v11 = sub_182AD38C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_181C64FFC(a2, a3, &v14);
      _os_log_impl(&dword_181A37000, v10, v11, "Received '%s' from incorrect input linkage", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    *a4 = 0;
    v15 = 0;
    sub_181FEADD0();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_182171ED4()
{
  v1 = v0;
  v2 = v0 + 120;
  swift_beginAccess();
  Frame.finalize(success:)(0);
  v3 = *(v0 + 336);
  if (v3)
  {
    v4 = v3[4];
    if (v3[2] >= v3[3] + v4)
    {
      v5 = v3[3] + v4;
    }

    else
    {
      v5 = v3[2];
    }

    *&v29 = *(v1 + 336);
    *(&v29 + 1) = v4;
    *&v30 = v5;
    v6 = swift_retain_n();
    while (1)
    {
      if (v4 == v5)
      {
        if ((sub_181AC81FC(v6) & 1) == 0)
        {

          break;
        }

        v4 = *(&v29 + 1);
        v5 = v30;
      }

      *(&v29 + 1) = v4 + 1;
      swift_beginAccess();

      Frame.finalize(success:)(0);
      swift_endAccess();

      ++v4;
    }
  }

  FrameArray.init()(&v29);

  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  v11 = *(v1 + 152);
  v12 = *(v1 + 160);
  if (*(v1 + 168) != 2 || v12 | v11)
  {
    v26 = *(v1 + 120);
    v27 = *(v1 + 128);
    v28 = *(v1 + 168);
    sub_181F68EF4(v26, v27, v9, v10);

    sub_181F68F3C(v11, v12, v28);
    __break(1u);
LABEL_25:
    sub_181F68EF4(v2, v7, v8, v9);

    result = sub_181F68F3C(v10, v11, v12);
    __break(1u);
    return result;
  }

  if ((*(v1 + 280) & 1) == 0)
  {
    v13 = *(v1 + 264);
    if (v13)
    {
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  sub_181F68EF4(v7, v8, v9, v10);

  v14 = v40;
  v15 = v42;
  *(v2 + 192) = v41;
  *(v2 + 208) = v15;
  v16 = v36;
  v17 = v38;
  v18 = v39;
  *(v2 + 128) = v37;
  *(v2 + 144) = v17;
  *(v2 + 224) = v43;
  *(v2 + 160) = v18;
  *(v2 + 176) = v14;
  v19 = v34;
  *(v2 + 64) = v33;
  *(v2 + 80) = v19;
  *(v2 + 96) = v35;
  *(v2 + 112) = v16;
  v20 = v30;
  *v2 = v29;
  *(v2 + 16) = v20;
  v21 = v32;
  *(v2 + 32) = v31;
  *(v2 + 48) = v21;
  swift_endAccess();
  swift_unknownObjectRelease();

  sub_181F68E5C(*(v1 + 64), *(v1 + 72), *(v1 + 80));
  sub_181F68E5C(*(v1 + 88), *(v1 + 96), *(v1 + 104));
  v2 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);
  LOBYTE(v9) = *(v1 + 144);
  v10 = *(v1 + 152);
  v11 = *(v1 + 160);
  LODWORD(v12) = *(v1 + 168);
  v22 = *(v1 + 264);
  v23 = *(v1 + 280);

  if (v12 != 2 || v11 | v10)
  {
    goto LABEL_25;
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    MEMORY[0x1865DF520](v22, -1, -1);
  }

  sub_181F68EF4(v2, v7, v8, v9);

  return swift_deallocClassInstance();
}

uint64_t sub_1821721D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (*(v3 + 80) != 6 || *(v3 + 64) != 0)
  {
    __dst[0] = *a1;
    __dst[1] = v5;
    LOBYTE(__dst[2]) = v7;
    sub_182171D38(__dst, 0xD000000000000013, 0x8000000182BDF5D0, __src);
    goto LABEL_7;
  }

  *(v3 + 64) = v6;
  *(v3 + 72) = v5;
  *(v3 + 80) = v7;
  sub_181F68EA8(v6, v5, v7);
  sub_181F68E5C(0, 0, 6u);
  if (v7 <= 3)
  {
    v5 = v6;
LABEL_6:
    *(v3 + 112) = v5;
    goto LABEL_7;
  }

  if (v7 == 4)
  {
    goto LABEL_6;
  }

  v5 = v6;
  if (v7 == 5)
  {
    goto LABEL_6;
  }

  *(v3 + 112) = 0;
LABEL_7:
  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  __dst[0] = *(v3 + 64);
  __dst[1] = v8;
  LOBYTE(__dst[2]) = v9;
  sub_181F68EA8(__dst[0], v8, v9);
  InputHandlerLinkage.invokeGetParameters()(__src);
  sub_181F68E5C(__dst[0], __dst[1], __dst[2]);
  memcpy(__dst, __src, 0x188uLL);
  if (sub_182064A58(__dst) == 1)
  {
    goto LABEL_27;
  }

  v10 = *(v3 + 48);
  if (!*(v10 + 96))
  {
    *(v10 + 96) = __dst[35];
  }

  v11 = sub_182AD30F8();

  if (!v11)
  {
    v34[0] = *(v3 + 48);
    v34[1] = 0x60000001EEFC49F0uLL;

    v12 = sub_181F6433C(v34);
    v14 = v13;

    if (v12)
    {
      v15 = *(v3 + 48);
      ObjectType = swift_getObjectType();
      v17 = *(v14 + 144);

      v18 = v17(ObjectType, v14);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      *(v15 + 72) = v20;

      v21 = *(v3 + 48);
      v22 = *(v14 + 168);

      v23 = v22(ObjectType, v14);
      v25 = v24;
      swift_unknownObjectRelease();
      if (v25)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0;
      }

      v27 = 0xE000000000000000;
      if (v25)
      {
        v27 = v25;
      }

      *(v21 + 80) = v26;
      *(v21 + 88) = v27;
    }
  }

  sub_182174B58(__src);
  v28 = *(v3 + 56);
  if ((__dst[15] & 0x200) != 0)
  {
    if (v28)
    {
      goto LABEL_27;
    }

    v29 = v28 | 1;
  }

  else
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    v29 = v28 & 0xFFFE;
  }

  *(v3 + 56) = v29;
LABEL_27:
  v30 = *(v3 + 48);
  if ((v30[136] & 1) == 0)
  {
    v31 = *(v3 + 56) & 1;
    v30[136] = 1;
    v30[137] = v31;
    v32 = *(*v30 + 944);

    v32(v31);
  }

  *a2 = v3;
  *(a2 + 8) = &off_1EEFC4E60;
  *(a2 + 16) = 3;
}

uint64_t sub_1821724FC(__int128 *a1, char a2)
{
  v4 = *(a1 + 16);
  v14 = *a1;
  v15 = v4;
  sub_182171D38(&v14, 0xD00000000000001ELL, 0x8000000182BD7710, &v13);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v7 = *(v2 + 80);
  *(v2 + 80) = 6;
  sub_181F68E5C(v5, v6, v7);
  v8 = *(v2 + 88);
  v9 = *(v2 + 96);
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  v10 = *(v2 + 104);
  *(v2 + 104) = 6;
  sub_181F68E5C(v8, v9, v10);
  v11 = *(v2 + 112);

  sub_182169E64(v11, a2 & 1);

  return 1;
}

uint64_t sub_1821725C4(__int128 *a1)
{
  v2 = *(a1 + 16);
  v46 = *a1;
  v47 = v2;
  sub_182171D38(&v46, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v43);
  v4 = *(v1 + 56);
  if ((v4 & 4) == 0)
  {
    v4 |= 4u;
    *(v1 + 56) = v4;
  }

  v5 = *(v1 + 48);
  if ((*(v5 + 16) & 0x100) != 0)
  {
    if ((v4 & 8) != 0)
    {
      if ((v4 & 0x30) == 0x10)
      {
        v4 |= 0x20u;
        *(v1 + 56) = v4;
      }
    }

    else
    {
      *(v1 + 56) = v4 | 8;
      v21 = *(v1 + 112);
      v22 = *(*v5 + 880);

      v22(v21, v4 & 1);

      v4 = *(v1 + 56);
    }

    if ((v4 & 0x20) != 0)
    {
      *(v1 + 56) = v4 & 0xFFDF;
      v29 = *(v1 + 64);
      v30 = *(v1 + 72);
      v31 = *(v1 + 80);
      *&v46 = v29;
      *(&v46 + 1) = v30;
      v47 = v31;
      if (*(v1 + 104) == 6 && *(v1 + 88) == 0)
      {
        *(v1 + 88) = v1;
        *(v1 + 96) = &off_1EEFC4E60;
        *(v1 + 104) = 3;
        v34 = v29;
        v35 = v30;
        v36 = v31;

        sub_181F68EA8(v34, v35, v36);
        sub_181F68E5C(0, 0, 6u);
      }

      else
      {
        sub_181F68EA8(v29, v30, v31);
      }

      v32 = *(v1 + 96);
      v33 = *(v1 + 104);
      v43 = *(v1 + 88);
      v44 = v32;
      v45 = v33;
      sub_181F68EA8(v43, v32, v33);
      InputHandlerLinkage.invokeConnected(_:)(&v43);
      sub_181F68E5C(v43, v44, v45);
      sub_181F68E5C(v46, *(&v46 + 1), v47);
    }
  }

  else
  {
    v37 = v1;
    swift_beginAccess();
    v6 = *(v5 + 48);
    v7 = *(v6 + 64);
    v38 = v6 + 64;
    v39 = v6;
    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v7;
    v11 = (v8 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v13 = v12;
LABEL_14:
        v14 = *(*(v39 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v10)))));
        v16 = *(v14 + 288);
        v10 &= v10 - 1;
        v17 = *(v14 + 296);
        v43 = *(v14 + 280);
        v15 = v43;
        v44 = v16;
        v45 = v17;
        v19 = *(v14 + 312);
        v20 = *(v14 + 320);
        v40 = *(v14 + 304);
        v18 = v40;
        v41 = v19;
        v42 = v20;

        sub_181F68EA8(v15, v16, v17);
        sub_181F68EA8(v18, v19, v20);
        OutputHandlerLinkage.invokeConnect(_:)(&v40);
        sub_181F68E5C(v40, v41, v42);
        sub_181F68E5C(v43, v44, v45);

        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
LABEL_10:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v38 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_14;
      }
    }

    v23 = *(v37 + 56);
    if ((v23 & 0x20) != 0)
    {
      *(v37 + 56) = v23 & 0xFFDF;
      v24 = *(v37 + 64);
      v25 = *(v37 + 72);
      v26 = *(v37 + 80);
      v43 = v24;
      v44 = v25;
      v45 = v26;
      if (*(v37 + 104) == 6 && *(v37 + 88) == 0)
      {
        *(v37 + 88) = v37;
        *(v37 + 96) = &off_1EEFC4E60;
        *(v37 + 104) = 3;
        sub_181F68EA8(v24, v25, v26);

        sub_181F68E5C(0, 0, 6u);
      }

      else
      {
        sub_181F68EA8(v24, v25, v26);
      }

      v27 = *(v37 + 96);
      v28 = *(v37 + 104);
      v40 = *(v37 + 88);
      v41 = v27;
      v42 = v28;
      sub_181F68EA8(v40, v27, v28);
      InputHandlerLinkage.invokeConnected(_:)(&v40);
      sub_181F68E5C(v40, v41, v42);
      sub_181F68E5C(v43, v44, v45);
    }
  }

  return 1;
}

void sub_1821729B0(__int128 *a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v15 = *a1;
  v16 = v3;
  sub_182171D38(&v15, 0x656E6E6F63736964, 0xEE00293A5F287463, &v12);
  v4 = *(v1 + 48);
  v5 = *(v2 + 112);
  *&v15 = 0;
  BYTE8(v15) = 1;
  LOBYTE(v12) = 2;
  v6 = *(*v4 + 1000);

  LOBYTE(v5) = v6(v5, &v15, &v12);

  if (v5)
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 72);
    v9 = *(v2 + 80);
    *&v15 = v7;
    *(&v15 + 1) = v8;
    v16 = v9;
    if (*(v2 + 104) == 6 && *(v2 + 88) == 0)
    {
      *(v2 + 88) = v2;
      *(v2 + 96) = &off_1EEFC4E60;
      *(v2 + 104) = 3;
      sub_181F68EA8(v7, v8, v9);

      sub_181F68E5C(0, 0, 6u);
    }

    else
    {
      sub_181F68EA8(v7, v8, v9);
    }

    v10 = *(v2 + 96);
    v11 = *(v2 + 104);
    v12 = *(v2 + 88);
    v13 = v10;
    v14 = v11;
    sub_181F68EA8(v12, v10, v11);
    InputHandlerLinkage.invokeDisconnected(_:)(&v12);
    sub_181F68E5C(v12, v13, v14);
    sub_181F68E5C(v15, *(&v15 + 1), v16);
  }
}

uint64_t sub_182172B3C(__int128 *a1)
{
  v2 = *(a1 + 16);
  v8 = *a1;
  v9 = v2;
  sub_182171D38(&v8, 0x3A5F287465736572, 0xE900000000000029, &v7);
  v3 = *(v1 + 48);
  v4 = *(v1 + 112);
  v5 = *(*v3 + 968);

  LOBYTE(v4) = v5(v4);

  return v4 & 1;
}

uint64_t sub_182172C00(__int128 *a1)
{
  v2 = *(a1 + 16);
  v8 = *a1;
  v9 = v2;
  sub_182171D38(&v8, 0xD000000000000012, 0x8000000182BD5AE0, &v7);
  v3 = *(v1 + 48);
  v4 = *(v1 + 112);
  *&v8 = 0;
  BYTE8(v8) = 1;
  v7 = 1;
  v5 = *(*v3 + 1000);

  v5(v4, &v8, &v7);
}

uint64_t sub_182172CD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 16);
  v17 = *a1;
  v18 = v10;
  sub_182171D38(&v17, 0xD00000000000003ELL, 0x8000000182BD5950, &v16);
  v11 = *(v5 + 48);
  v12 = *(v5 + 112);
  v13 = *(v11 + 16);
  if ((v13 & 0x20) != 0)
  {
    *(v11 + 16) = v13 & 0xFFDF;

    sub_182174BE4(v14);
    v13 = *(v11 + 16);
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v13 & 0x40) == 0)
  {
LABEL_5:
    *(v11 + 16) = v13 | 0x40;
  }

LABEL_6:
  sub_18216AEE0(v12, a2, a3, a4, a5);
}

uint64_t sub_182172E58@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 16);
  v14 = *a1;
  v15 = v10;
  sub_182171D38(&v14, 0xD00000000000003FLL, 0x8000000182BD59B0, &v13);
  v11 = *(v5 + 112);

  sub_18216F64C(v11, a2, a3, a4, a5);
}

uint64_t sub_182172FA0(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v4;
  v5 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v5;
  v6 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v6;
  v7 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v7;
  v8 = *(a2 + 160);
  *v22 = *(a2 + 161);
  *&v22[3] = *(a2 + 164);
  v9 = *(a2 + 168);
  v10 = *(a2 + 192);
  v24 = *(a2 + 176);
  v25 = v10;
  v11 = *(a2 + 208);
  v12 = *(a2 + 216);
  v13 = *(a2 + 144);
  v14 = *(a2 + 224);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v21 = v8;
  v23 = v9;
  v26 = v11;
  v27 = v12;
  v28 = v14;
  v18 = *a1;
  v19 = v3;
  sub_182171D38(&v18, 0xD00000000000001FLL, 0x8000000182BD9EE0, &v17);
  v15 = *(v2 + 112);

  LOBYTE(v15) = sub_1821701E0(v15, v20);

  return v15 & 1;
}

uint64_t sub_18217313C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v13 = *a1;
  v14 = v6;
  sub_182171D38(&v13, 0x646174654D746567, 0xEF293A5F28617461, &v12);
  v7 = *(v3 + 48);
  v8 = *(v3 + 112);
  v9 = *(*v7 + 1248);

  v10 = v9(v8, a2, a3);

  return v10;
}

void sub_182173220(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 4);
  if ((*(v1 + 56) & 0x200) == 0)
  {
    *(v1 + 56) |= 0x200u;
  }

  if ((v3 & 1) == 0)
  {
    v4 = *a1;
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v7 = *(v2 + 80);
    v23 = v5;
    v24 = v6;
    v25 = v7;
    if (*(v2 + 104) == 6 && *(v2 + 88) == 0)
    {
      *(v2 + 88) = v2;
      *(v2 + 96) = &off_1EEFC4E60;
      *(v2 + 104) = 3;
      sub_181F68EA8(v5, v6, v7);

      sub_181F68E5C(0, 0, 6u);
    }

    else
    {
      sub_181F68EA8(v5, v6, v7);
    }

    v8 = *(v2 + 96);
    v9 = *(v2 + 104);
    v20 = *(v2 + 88);
    v21 = v8;
    v22 = v9;
    v18 = v4;
    v19 = 0;
    sub_181F68EA8(v20, v8, v9);
    InputHandlerLinkage.invokeError(_:error:)(&v20, &v18);
    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v23, v24, v25);
  }

  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v23 = v10;
  v24 = v11;
  v25 = v12;
  if (*(v2 + 104) == 6 && *(v2 + 88) == 0)
  {
    *(v2 + 88) = v2;
    *(v2 + 96) = &off_1EEFC4E60;
    *(v2 + 104) = 3;
    v15 = v10;
    v16 = v11;
    v17 = v12;

    sub_181F68EA8(v15, v16, v17);
    sub_181F68E5C(0, 0, 6u);
  }

  else
  {
    sub_181F68EA8(v10, v11, v12);
  }

  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v20 = *(v2 + 88);
  v21 = v13;
  v22 = v14;
  sub_181F68EA8(v20, v13, v14);
  InputHandlerLinkage.invokeDisconnected(_:)(&v20);
  sub_181F68E5C(v20, v21, v22);
  sub_181F68E5C(v23, v24, v25);
}

uint64_t DefaultManyToManyProtocol.MultiplexingPathIdentifier.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x1865DB070](0);
  }

  v2 = *v0;
  MEMORY[0x1865DB070](1);
  return MEMORY[0x1865DB0B0](v2);
}

uint64_t DefaultManyToManyProtocol.MultiplexingPathIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_182AD44E8();
  if (v2 == 1)
  {
    MEMORY[0x1865DB070](0);
  }

  else
  {
    MEMORY[0x1865DB070](1);
    MEMORY[0x1865DB0B0](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_1821734A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_182AD44E8();
  if (v2 == 1)
  {
    MEMORY[0x1865DB070](0);
  }

  else
  {
    MEMORY[0x1865DB070](1);
    MEMORY[0x1865DB0B0](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_182173518()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x1865DB070](0);
  }

  v2 = *v0;
  MEMORY[0x1865DB070](1);
  return MEMORY[0x1865DB0B0](v2);
}

uint64_t sub_182173568()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_182AD44E8();
  if (v2 == 1)
  {
    MEMORY[0x1865DB070](0);
  }

  else
  {
    MEMORY[0x1865DB070](1);
    MEMORY[0x1865DB0B0](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_1821735D4()
{
  if (*(v0 + 8))
  {
    return 1701736270;
  }

  sub_181F7D8D8();
  return sub_182AD3A88();
}

BOOL sub_182173630(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t DefaultManyToManyProtocol.MultiplexingPathEvent.description.getter()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x73696C6261747365;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1821736DC()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x73696C6261747365;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_18217374C(char *a1)
{
  v2 = *a1;
  *(v1 + 17) = *a1;
  v4 = *(v1 + 256);
  v3 = *(v1 + 264);
  v5 = *(v1 + 272);
  v10 = v3;
  v11 = v5;
  v9 = v2;
  if (*(v4 + 64) == 1)
  {
    if (v5)
    {
      v6 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(v4 + 56) == v3;
LABEL_7:
  v7 = *(*v4 + 1016);

  v7(&v10, &v9, v6);
}

uint64_t sub_182173824(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = sub_181F74A48(*a1, *(a1 + 8), *(a1 + 16), *(v4 + 280), *(v4 + 288), *(v4 + 296));
  if ((result & 1) == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843348);

    v10 = sub_182AD2678();
    v11 = sub_182AD38C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_181C64FFC(a2, a3, &v14);
      _os_log_impl(&dword_181A37000, v10, v11, "Received '%s' from incorrect output linkage", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    *a4 = 1;
    v15 = 1;
    sub_181FEADD0();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1821739C0(uint64_t *a1)
{
  if (*(v1 + 320) != 6)
  {
    return 0;
  }

  if (*(v1 + 304) != 0)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  *(v1 + 304) = v1;
  *(v1 + 312) = &off_1EEFC4E00;
  *(v1 + 320) = 3;

  sub_181F68E5C(0, 0, 6u);
  v14 = v3;
  v15 = v4;
  v5 = *(v1 + 312);
  v6 = *(v1 + 320);
  v11 = *(v1 + 304);
  v12 = v5;
  v13 = v6;
  sub_181F68EA8(v11, v5, v6);
  sub_181F70FF8(&v11, &v16);
  sub_181F68E5C(v11, v12, v13);
  v7 = v17;
  if (v17 == 255)
  {
    return 0;
  }

  v8 = *(v1 + 280);
  v9 = *(v1 + 288);
  *(v1 + 280) = v16;
  v10 = *(v1 + 296);
  *(v1 + 296) = v7;
  sub_181F68E5C(v8, v9, v10);
  return 1;
}

id sub_182173AA0@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 320) == 6 && *(v2 + 304) == 0)
  {
    v3 = *result;
    v4 = *(result + 1);
    v5 = *(result + 16);
    *(v2 + 304) = v2;
    *(v2 + 312) = &off_1EEFC4E00;
    *(v2 + 320) = 3;

    sub_181F68E5C(0, 0, 6u);
    v7 = *(v2 + 280);
    v8 = *(v2 + 288);
    *(v2 + 280) = v3;
    *(v2 + 288) = v4;
    v9 = *(v2 + 296);
    *(v2 + 296) = v5;
    sub_181F68EA8(v3, v4, v5);
    sub_181F68E5C(v7, v8, v9);
    v10 = *(v2 + 304);
    v11 = *(v2 + 312);
    *a2 = v10;
    *(a2 + 8) = v11;
    v12 = *(v2 + 320);
    *(a2 + 16) = v12;
    return sub_181F68EA8(v10, v11, v12);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  return result;
}

uint64_t sub_182173B78(uint64_t a1)
{
  *(v1 + 16) = 256;
  FrameArray.init()(v1 + 24);
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 6;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 320) = 6;
  *(v1 + 256) = a1;
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  *(v1 + 264) = __buf;
  *(v1 + 272) = 0;
  return v1;
}

uint64_t sub_182173BE8()
{
  v1 = v0;
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v27 = *(v0 + 280);
  v28 = v2;
  v29 = v3;
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v24 = *(v0 + 304);
  v25 = v4;
  v26 = v5;
  sub_181F68EA8(v27, v2, v3);
  sub_181F68EA8(v24, v4, v5);
  v6 = OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(&v24, 1);
  sub_181F68E5C(v24, v25, v26);
  sub_181F68E5C(v27, v28, v29);
  if ((v6 & 1) == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843348);

    v8 = sub_182AD2678();
    v9 = sub_182AD38B8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      v12 = *(v1 + 256);
      v13 = *(v12 + 80);
      v14 = *(v12 + 88);

      v15 = sub_181C64FFC(v13, v14, &v27);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_181A37000, v8, v9, "%s Failed to remove output linkage", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1865DF520](v11, -1, -1);
      MEMORY[0x1865DF520](v10, -1, -1);
    }
  }

  v16 = *(v1 + 304);
  v17 = *(v1 + 312);
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  v18 = *(v1 + 320);
  *(v1 + 320) = 6;
  sub_181F68E5C(v16, v17, v18);
  v19 = *(v1 + 280);
  v20 = *(v1 + 288);
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  v21 = *(v1 + 296);
  *(v1 + 296) = 6;
  sub_181F68E5C(v19, v20, v21);
  LOBYTE(v27) = 0;
  sub_18217374C(&v27);
  v22 = *(v1 + 272);
  v27 = *(v1 + 264);
  LOBYTE(v28) = v22;

  sub_182169F20(&v27);
}

void sub_182173E28()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    swift_beginAccess();
    if ((*(v0 + 248) & 1) == 0)
    {
      *(v0 + 16) = v1 & 0xFE;
      swift_beginAccess();
      v2 = *(v0 + 216);
      v23[11] = *(v0 + 200);
      v23[12] = v2;
      v23[13] = *(v0 + 232);
      v24 = *(v0 + 248);
      v3 = *(v0 + 152);
      v23[7] = *(v0 + 136);
      v23[8] = v3;
      v4 = *(v0 + 184);
      v23[9] = *(v0 + 168);
      v23[10] = v4;
      v5 = *(v0 + 72);
      v6 = *(v0 + 104);
      v23[4] = *(v0 + 88);
      v23[5] = v6;
      v23[6] = *(v0 + 120);
      v7 = *(v0 + 40);
      v23[0] = *(v0 + 24);
      v23[1] = v7;
      v23[2] = *(v0 + 56);
      v23[3] = v5;
      FrameArray.init()(v28);
      v8 = v28[10];
      *(v0 + 200) = v28[11];
      v9 = v28[13];
      *(v0 + 216) = v28[12];
      *(v0 + 232) = v9;
      v10 = v28[6];
      *(v0 + 136) = v28[7];
      v11 = v28[9];
      *(v0 + 152) = v28[8];
      *(v0 + 168) = v11;
      *(v0 + 184) = v8;
      v12 = v28[2];
      *(v0 + 72) = v28[3];
      v13 = v28[5];
      *(v0 + 88) = v28[4];
      *(v0 + 104) = v13;
      *(v0 + 120) = v10;
      v14 = v28[1];
      *(v0 + 24) = v28[0];
      *(v0 + 40) = v14;
      *(v0 + 248) = v29;
      *(v0 + 56) = v12;
      swift_endAccess();
      v15 = *(v0 + 288);
      v16 = *(v0 + 296);
      v25 = *(v0 + 280);
      v26 = v15;
      v27 = v16;
      v17 = *(v0 + 304);
      v18 = *(v0 + 312);
      v19 = *(v0 + 320);
      v20 = v17;
      v21 = v18;
      v22 = v19;
      sub_181F68EA8(v25, v15, v16);
      sub_181F68EA8(v17, v18, v19);
      OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(&v20, v23);
      sub_181F68E5C(v20, v21, v22);
      sub_181F68E5C(v25, v26, v27);
    }
  }
}

uint64_t sub_182173FC0(__int128 *a1)
{
  v2 = *(a1 + 16);
  v8 = *a1;
  v9 = v2;
  sub_182173824(&v8, 0xD000000000000011, 0x8000000182BD5B40, &v7);
  v3 = *(v1 + 256);
  v4 = *(v1 + 272);
  *&v8 = *(v1 + 264);
  BYTE8(v8) = v4;
  v7 = 0;
  v5 = *(*v3 + 1000);

  v5(0, &v8, &v7);
}

uint64_t sub_182174094(__int128 *a1)
{
  v2 = *(a1 + 16);
  v8 = *a1;
  v9 = v2;
  sub_182173824(&v8, 0x657463656E6E6F63, 0xED0000293A5F2864, &v7);
  v3 = *(v1 + 256);
  v4 = *(v1 + 272);
  *&v8 = *(v1 + 264);
  BYTE8(v8) = v4;
  v5 = *(*v3 + 952);

  v5(&v8);
}

uint64_t sub_182174158(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182173824(&v6, 0xD000000000000010, 0x8000000182BD5870, &v5);
  v3 = *(v1 + 272);
  *&v6 = *(v1 + 264);
  BYTE8(v6) = v3;

  sub_18216A7C8(&v6);
}

void sub_1821741EC(void *a1@<X8>)
{
  swift_beginAccess();

  sub_182084A1C(v2);
  v4 = v3;

  if (v4)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = *(v4 + 80);
    sub_181F68EA8(v5, v6, v7);

    InputHandlerLinkage.invokeGetParameters()(a1);
    sub_181F68E5C(v5, v6, v7);
  }

  else
  {
    sub_181F74038(v8);
    memcpy(a1, v8, 0x188uLL);
  }
}

uint64_t sub_1821742C8(uint64_t (*a1)(uint64_t))
{
  swift_beginAccess();

  sub_182084A1C(v2);
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  v7 = *(v4 + 80);
  sub_181F68EA8(v5, v6, v7);

  v9 = a1(v8);
  sub_181F68E5C(v5, v6, v7);
  return v9;
}

void sub_182174398(void *a1@<X8>)
{
  swift_beginAccess();

  sub_182084A1C(v2);
  v4 = v3;

  if (v4)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = *(v4 + 80);
    sub_181F68EA8(v5, v6, v7);

    InputHandlerLinkage.invokeGetPath()(a1);
    sub_181F68E5C(v5, v6, v7);
  }

  else
  {
    sub_181F74108(__src);
    memcpy(a1, __src, 0x17AuLL);
  }
}

uint64_t sub_182174474()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 168);
  v9 = *(v0 + 184);

  if (v7 != 2 || v6 | v5)
  {
    sub_181F68EF4(v1, v2, v3, v4);

    result = sub_181F68F3C(v5, v6, v7);
    __break(1u);
  }

  else
  {
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    sub_181F68EF4(v1, v2, v3, v4);

    sub_181F68E5C(*(v0 + 280), *(v0 + 288), *(v0 + 296));
    sub_181F68E5C(*(v0 + 304), *(v0 + 312), *(v0 + 320));
    return v0;
  }

  return result;
}

uint64_t sub_182174580()
{
  sub_182174474();

  return swift_deallocClassInstance();
}

uint64_t sub_1821745B4()
{

  sub_18216EC24(v0);
}

double DefaultManyToManyProtocol.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0x8000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 138) = 0;
  return result;
}

uint64_t sub_18217471C(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (*a3)
  {
    if (*a3 == 1)
    {
      v4 = *(*v3 + 992);
    }

    else
    {
      v4 = *(*v3 + 976);
    }

    return v4();
  }

  else
  {
    v5 = *(a2 + 8);
    v7 = *a2;
    v8 = v5;
    return (*(*v3 + 984))(&v7) & 1;
  }
}

uint64_t DefaultManyToManyProtocol.FrameRequestResult.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_1821748A0(__int128 *a1)
{
  v7 = a1[10];
  v6 = a1[9];
  v4 = a1[2];
  v5 = a1[3];
  v2 = *a1;
  v3 = a1[1];
  Frame.finalize(success:)(0);
  if (v5 == 2 && v4 == 0)
  {
    if ((v7 & 1) == 0 && v6)
    {
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    sub_181F68EF4(v2, *(&v2 + 1), v3, BYTE8(v3));
  }

  else
  {
    sub_181F68EF4(v2, *(&v2 + 1), v3, BYTE8(v3));

    result = sub_181F68F3C(v4, *(&v4 + 1), v5);
    __break(1u);
  }

  return result;
}

uint64_t DefaultManyToManyProtocol.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  sub_181F74148(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_182174A68(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  *(v2 + 56) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 6;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 6;
  FrameArray.init()(v2 + 120);
  *(v2 + 48) = a1;
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  v9 = *(v2 + 80);
  *(v2 + 80) = v6;

  sub_181F68EA8(v4, v5, v6);
  sub_181F68E5C(v7, v8, v9);
  v10 = v4;
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v10 = v5;
    }

    else
    {
      v11 = 0;
      v10 = v4;
      if (v6 != 5)
      {
        goto LABEL_3;
      }
    }
  }

  sub_181F68E5C(v4, v5, v6);
  v11 = v10;
LABEL_3:
  *(v2 + 112) = v11;
  return v2;
}

uint64_t sub_182174B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_182174BE4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 48);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_18216EC24(v10);
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_182174CFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v4 + 56) + ((v10 << 9) | (8 * v12)));
    v14 = *(v13 + 56);
    if ((v14 & 0x14) == 4)
    {
      *(v13 + 56) = v14 | 0x10;
      v15 = *(v13 + 64);
      v16 = *(v13 + 72);
      v17 = *(v13 + 80);
      v23 = v15;
      v24 = v16;
      v25 = v17;
      if (*(v13 + 104) == 6 && *(v13 + 88) == 0)
      {
        *(v13 + 88) = v13;
        *(v13 + 96) = &off_1EEFC4E60;
        *(v13 + 104) = 3;
        swift_retain_n();
        sub_181F68EA8(v15, v16, v17);
        sub_181F68E5C(0, 0, 6u);
      }

      else
      {

        sub_181F68EA8(v15, v16, v17);
      }

      v18 = *(v13 + 96);
      v19 = *(v13 + 104);
      v20 = *(v13 + 88);
      v21 = v18;
      v22 = v19;
      sub_181F68EA8(v20, v18, v19);
      InputHandlerLinkage.invokeConnected(_:)(&v20);
      sub_181F68E5C(v20, v21, v22);
      sub_181F68E5C(v23, v24, v25);
      (*(*a2 + 1232))(*(v13 + 112));
      sub_182170B00();
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_182174F20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        sub_18205ED80(v12, a2);
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18217503C()
{
  if (v0[138] == 1)
  {
    return (*(*v0 + 1240))();
  }

  return result;
}

unint64_t sub_18217507C()
{
  result = qword_1EA83AC70;
  if (!qword_1EA83AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC70);
  }

  return result;
}

unint64_t sub_1821750D4()
{
  result = qword_1EA83AC78;
  if (!qword_1EA83AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC78);
  }

  return result;
}

unint64_t sub_18217512C()
{
  result = qword_1EA83AC80;
  if (!qword_1EA83AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC80);
  }

  return result;
}

unint64_t sub_182175184()
{
  result = qword_1EA83AC88;
  if (!qword_1EA83AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC88);
  }

  return result;
}

unint64_t sub_1821751DC()
{
  result = qword_1EA83AC90;
  if (!qword_1EA83AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC90);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DefaultManyToManyProtocol.MultiplexedFlowIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *result = a2 - 1;
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

  *(result + 8) = v3;
  return result;
}

void *sub_1821759E8(void *result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 0;
  }

  *result = v2;
  return result;
}

unint64_t sub_182175A8C()
{
  result = qword_1EA83AC98;
  if (!qword_1EA83AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC98);
  }

  return result;
}

unint64_t sub_182175AE4()
{
  result = qword_1EA83ACA0;
  if (!qword_1EA83ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACA0);
  }

  return result;
}

unint64_t sub_182175B3C()
{
  result = qword_1EA83ACA8;
  if (!qword_1EA83ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACA8);
  }

  return result;
}

unint64_t sub_182175B94()
{
  result = qword_1EA83ACB0;
  if (!qword_1EA83ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACB0);
  }

  return result;
}

unint64_t sub_182175BEC()
{
  result = qword_1EA83ACB8;
  if (!qword_1EA83ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACB8);
  }

  return result;
}

unint64_t sub_182175C44()
{
  result = qword_1EA83ACC0;
  if (!qword_1EA83ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACC0);
  }

  return result;
}

unint64_t sub_182175C9C()
{
  result = qword_1EA83ACC8;
  if (!qword_1EA83ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACC8);
  }

  return result;
}

unint64_t sub_182175CF4()
{
  result = qword_1EA83ACD0;
  if (!qword_1EA83ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACD0);
  }

  return result;
}

unint64_t sub_182175D4C()
{
  result = qword_1EA83ACD8;
  if (!qword_1EA83ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACD8);
  }

  return result;
}

unint64_t sub_182175DA4()
{
  result = qword_1EA83ACE0;
  if (!qword_1EA83ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACE0);
  }

  return result;
}

unint64_t sub_182175DFC()
{
  result = qword_1EA83ACE8;
  if (!qword_1EA83ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACE8);
  }

  return result;
}

unint64_t sub_182175E54()
{
  result = qword_1EA83ACF0;
  if (!qword_1EA83ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACF0);
  }

  return result;
}

uint64_t ECNState.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t ECN.ectDisabled.setter(uint64_t result)
{
  v2 = *(v1 + 8);
  if (result)
  {
    if ((*(v1 + 8) & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((*(v1 + 8) & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xF7;
  }

  *(v1 + 8) = v3;
  return result;
}

_BYTE *(*ECN.ectDisabled.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 9) = v2;
  *(a1 + 8) = (v2 & 8) != 0;
  return sub_18217600C;
}

_BYTE *sub_18217600C(_BYTE *result)
{
  v1 = result[9];
  if (result[8])
  {
    if ((result[9] & 8) == 0)
    {
      v2 = v1 | 8;
LABEL_7:
      *(*result + 8) = v2;
    }
  }

  else if ((result[9] & 8) != 0)
  {
    v2 = v1 & 0xF7;
    goto LABEL_7;
  }

  return result;
}

void ECN.init(echoEnabled:markingEnabled:l4sEnabled:)(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a1 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v6 = 0;
      if (a3)
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (a2)
  {
LABEL_6:
    v6 = 1;
    if (a3)
    {
      v7 = 7;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_13;
  }

  v6 = 0;
  if (a3)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

LABEL_13:
  sub_182AD3BA8();

  v25 = 0xD000000000000011;
  v26 = 0x8000000182BDF620;
  if (a1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1865D9CA0](v8, v9);

  MEMORY[0x1865D9CA0](0x6E696B72616D202CLL, 0xEB00000000203A67);
  if (v6)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v6)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1865D9CA0](v10, v11);

  MEMORY[0x1865D9CA0](0x293128544345202CLL, 0xEA0000000000203ALL);
  if ((v7 & 4) != 0)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if ((v7 & 4) != 0)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1865D9CA0](v12, v13);

  v15 = v25;
  v14 = v26;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v16 = sub_182AD2698();
  __swift_project_value_buffer(v16, qword_1EA843418);

  v17 = sub_182AD2678();
  v18 = sub_182AD3898();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315650;
    v21 = sub_182AD3BF8();
    v23 = sub_181C64FFC(v21, v22, &v25);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v25);
    *(v19 + 22) = 2080;
    v24 = sub_181C64FFC(v15, v14, &v25);

    *(v19 + 24) = v24;
    _os_log_impl(&dword_181A37000, v17, v18, "%s %s %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v20, -1, -1);
    MEMORY[0x1865DF520](v19, -1, -1);
  }

  else
  {
  }

  *a4 = MEMORY[0x1E69E7CC0];
  *(a4 + 8) = v7;
}

Swift::Void __swiftcall ECN.reset()()
{
  v1 = *v0;
  if (v1 >> 62)
  {
    v2 = sub_182AD3EB8();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      swift_beginAccess();
      v4[2] = 0;
      swift_beginAccess();
      v4[3] = 0;
      v4[4] = 0;
      v4[5] = 0;
      swift_beginAccess();
      v4[6] = 0;
      v4[7] = 0;
      v4[8] = 0;
      swift_beginAccess();
      v4[9] = 0;
      --v2;
    }

    while (v2);
  }
}

uint64_t ECNPath.ectDisabled.setter(uint64_t result)
{
  v2 = *(v1 + 32);
  if (result)
  {
    if ((*(v1 + 32) & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((*(v1 + 32) & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xF7;
  }

  *(v1 + 32) = v3;
  return result;
}

_BYTE *(*ECNPath.ectDisabled.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 9) = v2;
  *(a1 + 8) = (v2 & 8) != 0;
  return sub_182176524;
}

_BYTE *sub_182176524(_BYTE *result)
{
  v1 = result[9];
  if (result[8])
  {
    if ((result[9] & 8) == 0)
    {
      v2 = v1 | 8;
LABEL_7:
      *(*result + 32) = v2;
    }
  }

  else if ((result[9] & 8) != 0)
  {
    v2 = v1 & 0xF7;
    goto LABEL_7;
  }

  return result;
}

double ECNPath.ecnCounters(ecn:packetNumberSpace:)()
{
  type metadata accessor for ECNCounters();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

void ECNPath.reset(ecn:)(unint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  *(v1 + 8) = (*(v1 + 32) & 2) != 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  if (v3 >> 62)
  {
    v4 = sub_182AD3EB8();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = (v3 + 32);
  do
  {
    v6 = *v5++;
    swift_beginAccess();
    v6[2] = 0;
    swift_beginAccess();
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
    swift_beginAccess();
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
    swift_beginAccess();
    v6[9] = 0;
    --v4;
  }

  while (v4);
LABEL_6:
  v7 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7[2] = 0;
    swift_beginAccess();
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
    swift_beginAccess();
    v7[6] = 0;
    v7[7] = 0;
    v7[8] = 0;
    swift_beginAccess();
    v7[9] = 0;
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BDF640);
  sub_182AD3E18();
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v8 = sub_182AD2698();
  __swift_project_value_buffer(v8, qword_1EA843418);

  v9 = sub_182AD2678();
  v10 = sub_182AD3898();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315650;
    v13 = sub_182AD3BF8();
    v15 = sub_181C64FFC(v13, v14, v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v17);
    *(v11 + 22) = 2080;
    v16 = sub_181C64FFC(0, 0xE000000000000000, v17);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v12, -1, -1);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  else
  {
  }
}

void sub_1821768F8(char *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDF760);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
    sub_182AD3E18();
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843418);

    v5 = sub_182AD2678();
    v6 = sub_182AD38A8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v7 = 136315650;
      v9 = sub_182AD3BF8();
      v11 = sub_181C64FFC(v9, v10, v13);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v13);
      *(v7 + 22) = 2080;
      v12 = sub_181C64FFC(0, 0xE000000000000000, v13);

      *(v7 + 24) = v12;
      _os_log_impl(&dword_181A37000, v5, v6, "%s %s %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v8, -1, -1);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    else
    {
    }
  }

  *(v2 + 8) = v3;
}

Swift::Void __swiftcall ECNPath.validationPacketLost()()
{
  v3 = *(v0 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v0 + 24) = v5;
  if ((*(v0 + 32) & 4) != 0)
  {
    v6 = 10;
  }

  else
  {
    v6 = 3;
  }

  v7 = *(v0 + 8);
  if (v7 == 3)
  {
    if (v5 < v6)
    {
      return;
    }

LABEL_12:
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDF680);
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDF6B0);
    v2 = 0;
    v1 = 0xE000000000000000;
    if (qword_1EA837248 == -1)
    {
LABEL_13:
      v10 = sub_182AD2698();
      __swift_project_value_buffer(v10, qword_1EA843418);

      v11 = sub_182AD2678();
      v12 = sub_182AD3898();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19[0] = v14;
        *v13 = 136315650;
        v15 = sub_182AD3BF8();
        v17 = sub_181C64FFC(v15, v16, v19);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v19);
        *(v13 + 22) = 2080;
        v18 = sub_181C64FFC(v2, v1, v19);

        *(v13 + 24) = v18;
        _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v14, -1, -1);
        MEMORY[0x1865DF520](v13, -1, -1);
      }

      else
      {
      }

      LOBYTE(v19[0]) = 6;
      sub_1821768F8(v19);
      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  if (v7 == 1 && v5 >= v6)
  {
    goto LABEL_12;
  }
}

void ECNPath.processIPCodepoint(ecn:stats:packetNumberSpace:flag:)(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  if (*(v4 + 32))
  {
    if (*a4 > 1u)
    {
      if (*a4 != 2)
      {
        v14 = *a2;
        v15 = *(*a2 + 16);
        if (v15)
        {
          v16 = sub_181A41ED0(75);
          if (v17)
          {
            v15 = *(*(v14 + 56) + 8 * v16);
          }

          else
          {
            v15 = 0;
          }
        }

        v23 = v15 + 1;
        if (!__OFADD__(v15, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *a2;
          sub_182258BF8(v23, 0x4Bu, isUniquelyReferenced_nonNull_native);
          *a2 = v26;
          return;
        }

        goto LABEL_27;
      }

      v10 = *a2;
      v11 = *(*a2 + 16);
      if (v11)
      {
        v12 = sub_181A41ED0(74);
        if (v13)
        {
          v11 = *(*(v10 + 56) + 8 * v12);
        }

        else
        {
          v11 = 0;
        }
      }

      v22 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v25 = *a2;
        v20 = v22;
        v21 = 74;
        goto LABEL_21;
      }
    }

    else
    {
      if (!*a4)
      {
        return;
      }

      v6 = *a2;
      v7 = *(*a2 + 16);
      if (v7)
      {
        v8 = sub_181A41ED0(73);
        if (v9)
        {
          v7 = *(*(v6 + 56) + 8 * v8);
        }

        else
        {
          v7 = 0;
        }
      }

      v18 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v25 = *a2;
        v20 = v18;
        v21 = 73;
LABEL_21:
        sub_182258BF8(v20, v21, v19);
        *a2 = v25;
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }
}

unint64_t sub_182177120()
{
  result = qword_1EA83ACF8;
  if (!qword_1EA83ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ACF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ECNState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_182177214(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_18217725C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821772AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_182177308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_18217742C()
{
  result = qword_1EA83AD00;
  if (!qword_1EA83AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD00);
  }

  return result;
}

unint64_t sub_182177484()
{
  result = qword_1EA83AD08;
  if (!qword_1EA83AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD08);
  }

  return result;
}

unint64_t sub_1821774DC()
{
  result = qword_1EA83AD10;
  if (!qword_1EA83AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD10);
  }

  return result;
}

unint64_t sub_182177534()
{
  result = qword_1EA83AD18;
  if (!qword_1EA83AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD18);
  }

  return result;
}

uint64_t sub_182177588()
{
  if (qword_1EA837020 != -1)
  {
    result = swift_once();
  }

  if (is_mul_ok(qword_1EA843200, 0x3CuLL))
  {
    qword_1EA843398 = 60 * qword_1EA843200;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1821775FC(unint64_t a1)
{
  result = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v17 = result;
    swift_once();
    result = v17;
  }

  v4 = qword_1EA8387E8;
  if (is_mul_ok(result, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v18 = result;
  swift_once();
  result = v18;
LABEL_5:
  v5 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = result;
  swift_once();
  result = v19;
LABEL_7:
  if (!qword_1EA8431F0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v6 = v1[12];
  v7 = result * v4 / v5 / qword_1EA8431F0;
  if (v6)
  {
    v8 = v1[13];
  }

  else
  {
    v6 = v7 + a1;
    if (__CFADD__(v7, a1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v8 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v1[12] = v6;
    v1[13] = 0;
  }

  v9 = v1[9];
  v10 = __CFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_37;
  }

  v1[13] = v11;
  v12 = v7 - v6;
  if (v7 <= v6)
  {
    return sub_182012C00() & 1;
  }

  if (v12 <= a1)
  {
LABEL_20:
    result = sub_182015A90(v1[13]);
    v13 = v1[13];
    v1[11] = v13;
    v14 = v1[10];
    if (v14[2] >= 3uLL)
    {
      if (v13 <= v14[4])
      {
        v13 = v14[4];
      }

      if (v13 <= v14[5])
      {
        v13 = v14[5];
      }

      v15 = v14[6];
      if (v13 > v15)
      {
        v15 = v13;
      }

      v1[11] = v15;
      v16 = v7 + a1;
      if (!__CFADD__(v7, a1))
      {
        if (v16 <= 1)
        {
          v16 = 1;
        }

        v1[12] = v16;
        v1[13] = 0;
        return sub_182012C00() & 1;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = sub_182015A90(0);
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (v12 > 2 * a1)
    {
      sub_182015A90(0);
    }

    goto LABEL_20;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_182177834(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || !*(v3 + 72))
  {
    return;
  }

  v6 = *(a1 + 16);
  if ((sub_1821775FC(v6) & 1) == 0)
  {
    *(v3 + 72) = 0;
    return;
  }

  v7 = a1;
  v8 = *(a1 + 64);
  if (v8 == -1 || (v9 = *(v7 + 8), v10 = v9 - v8, v9 < v8))
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843418);
    oslog = sub_182AD2678();
    v12 = sub_182AD38C8();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v58[0] = v14;
      *v13 = 136315650;
      v15 = sub_182AD3BF8();
      v17 = sub_181C64FFC(v15, v16, v58);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v58);
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_181C64FFC(0xD00000000000001ALL, 0x8000000182BDF7B0, v58);
      _os_log_impl(&dword_181A37000, oslog, v12, "%s %s %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v14, -1, -1);
      MEMORY[0x1865DF520](v13, -1, -1);
    }

    else
    {
    }

    return;
  }

  v18 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v51 = v18;
    swift_once();
    v18 = v51;
  }

  v21 = qword_1EA8387E8;
  if (is_mul_ok(v18, qword_1EA8387E8))
  {
    v22 = a2;
    if (qword_1EA837038 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  osloga = v18;
  swift_once();
  v18 = osloga;
  v22 = a2;
LABEL_19:
  v23 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  v53 = v23;
  oslogb = v18;
  swift_once();
  v23 = v53;
  v18 = oslogb;
  v22 = a2;
LABEL_21:
  if (!qword_1EA8431F0)
  {
    __break(1u);
LABEL_89:
    v52 = v19;
    oslogc = v20;
    swift_once();
    v20 = oslogc;
    v19 = v52;
    v22 = a2;
LABEL_34:
    v28 = qword_1EA843398;
    v29 = qword_1EA843398;
    v30 = *v3;
    v31 = *(v3 + 48);
    if (*v3 < v31 && (*(v3 + 152) > 0 || v29 * 0.75 > v10))
    {
      v48 = 10 * v22;
      if ((v22 * 10) >> 64 != (10 * v22) >> 63)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      if ((v48 & 0x8000000000000000) != 0)
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v49 = fmin(ceil((v29 + v29) / v8), 16.0);
      if (v48 >= *(v3 + 72))
      {
        v48 = *(v3 + 72);
      }

      v50 = 1.0 / v49 * v48;
      if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_113;
      }

      if (v50 <= -1.0)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      if (v50 >= 1.84467441e19)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v34 = __CFADD__(v30, v50);
      v39 = v30 + v50;
      if (v34)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      *v3 = v39;
      if (v19)
      {
        *(v3 + 128) = 0;
      }

      goto LABEL_71;
    }

    if (!v19)
    {
      if (v30 < v31)
      {
        v31 = *v3;
      }

      *(v3 + 48) = v31;
      v32 = *(v3 + 144);
      if (*(v3 + 152) >= 1 && !v32)
      {
        *(v3 + 144) = v20;
        v32 = v20;
      }

      v33 = *(v3 + 136);
      v34 = v32 >= v33;
      v35 = v32 - v33;
      if (!v34)
      {
        goto LABEL_107;
      }

      if (!is_mul_ok(v35, 9uLL))
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v34 = __CFADD__(v20, 9 * v35);
      v36 = v20 + 9 * v35;
      if (v34)
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      *(v3 + 128) = v36;
      if (!v35)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v34 = __CFADD__(v36, 2 * v6);
        v37 = v36 + 2 * v6;
        if (v34)
        {
LABEL_118:
          __break(1u);
          return;
        }

        *(v3 + 128) = v37;
      }

      *(v3 + 136) = 0;
      *(v3 + 144) = 0;
    }

    if (v10 >= v28)
    {
      v40 = v10 / v29 + -1.0;
      v41 = *(v3 + 72);
      if (v30 < v41)
      {
        v41 = v30;
      }

      if (v40 > 0.5)
      {
        v40 = 0.5;
      }

      v42 = v40 * v41;
      if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v42 > -1.0)
        {
          if (v42 < 1.84467441e19)
          {
            v34 = v30 >= v42;
            v39 = v30 - v42;
            if (v34)
            {
              *v3 = v39;
              if (v39 < v31)
              {
                v31 = v39;
              }

              *(v3 + 48) = v31;
LABEL_70:
              if (v22 + 0x4000000000000000 < 0)
              {
                __break(1u);
                goto LABEL_91;
              }

LABEL_71:
              if ((v22 & 0x8000000000000000) == 0)
              {
                v22 *= 2;
                if (v39 >= v22)
                {
LABEL_73:
                  v43 = *(v3 + 112);
                  v58[6] = *(v3 + 96);
                  v58[7] = v43;
                  v44 = *(v3 + 144);
                  v58[8] = *(v3 + 128);
                  v58[9] = v44;
                  v45 = *(v3 + 48);
                  v58[2] = *(v3 + 32);
                  v58[3] = v45;
                  v46 = *(v3 + 80);
                  v58[4] = *(v3 + 64);
                  v58[5] = v46;
                  v47 = *(v3 + 16);
                  v58[0] = *v3;
                  v58[1] = v47;
                  sub_182016600();
                  return;
                }

LABEL_92:
                *v3 = v22;
                if (v22 <= v31)
                {
                  v22 = v31;
                }

                *(v3 + 48) = v22;
                goto LABEL_73;
              }

LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          goto LABEL_102;
        }

        goto LABEL_100;
      }

      goto LABEL_98;
    }

    v38 = 1.0 / fmin(ceil((v29 + v29) / v8), 16.0) * *(v3 + 72) * v22 / v30;
    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v38 > -1.0)
      {
        if (v38 < 1.84467441e19)
        {
          v34 = __CFADD__(v30, v38);
          v39 = v30 + v38;
          if (!v34)
          {
            *v3 = v39;
            goto LABEL_70;
          }

          goto LABEL_103;
        }

        goto LABEL_101;
      }

      goto LABEL_99;
    }

LABEL_97:
    __break(1u);
LABEL_98:
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
    goto LABEL_104;
  }

  v20 = v18 * v21 / v23 / qword_1EA8431F0;
  v19 = *(v3 + 128);
  if (v19 - 1 >= v20)
  {
LABEL_33:
    if (qword_1EA8371F8 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_89;
  }

  if (!*(v3 + 136))
  {
    *(v3 + 136) = v20;
    v24 = *(v3 + 152);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    *(v3 + 152) = v26;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  if (__CFADD__(v19, 2 * v6))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v20 >= v19 + 2 * v6)
  {
    goto LABEL_33;
  }

  if (v22 + 0x4000000000000000 < 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v27 = 2 * v22;
  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v27 < *v3)
  {
    *(v3 + 48) = *v3;
    *v3 = v27;
  }
}

void sub_182177F1C(uint64_t a1)
{
  v2 = v1;
  v4 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v18 = v4;
    swift_once();
    v4 = v18;
  }

  v6 = qword_1EA8387E8;
  if (is_mul_ok(v4, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = v4;
  swift_once();
  v4 = v19;
LABEL_5:
  v7 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v20 = v4;
  swift_once();
  v4 = v20;
LABEL_7:
  if (!qword_1EA8431F0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v2 + 64) = v4 * v6 / v7 / qword_1EA8431F0;
  *(v2 + 120) = *v2;
  v8 = *(v2 + 144);
  v27 = *(v2 + 128);
  v28 = v8;
  v9 = *(v2 + 48);
  v21[2] = *(v2 + 32);
  v22 = v9;
  v10 = *(v2 + 16);
  v21[0] = *v2;
  v21[1] = v10;
  v11 = *(v2 + 112);
  v25 = *(v2 + 96);
  v26 = v11;
  v12 = *(v2 + 80);
  v23 = *(v2 + 64);
  v24 = v12;
  if (sub_182012C00())
  {
    v13 = *&v21[0];
  }

  else
  {
    v13 = *(&v24 + 1);
    v5 = *(&v21[0] + 1);
    if (*(&v21[0] + 1) > *(&v24 + 1))
    {
      v13 = *(&v21[0] + 1);
    }
  }

  v14 = vcvtd_n_f64_u64(v13, 1uLL);
  if (v14 == INFINITY)
  {
    goto LABEL_24;
  }

  if (v14 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14 >= 1.84467441e19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  *v2 = v14;
  v5 = 0x4000000000000000;
  if (a1 + 0x4000000000000000 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = 2 * a1;
  if (2 * a1 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 > v15)
  {
LABEL_29:
    *v2 = v5;
    v15 = v5;
  }

  v16 = v22;
  *(v2 + 48) = v15;
  *(v2 + 56) = v16;
  v17 = sub_182AD3428();
  v17[2] = 3;
  v17[5] = 0;
  v17[6] = 0;
  v17[4] = 0;
  sub_182178190(v21);
  *(v2 + 112) = 0;
  *(v2 + 80) = v17;
  *(v2 + 88) = 0;
  sub_182016600();
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1821781EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182178234(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_1821782FC(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB60);
  if (swift_dynamicCast())
  {
    sub_181F3CF20(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v9 + 32))(v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    if (!v3)
    {
      return v10;
    }
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_182178494(v12);
    return sub_182AD1C68();
  }

  return result;
}

uint64_t sub_182178494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1821784FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (sub_182AD31F8())
  {
    v13 = sub_182179FAC(1);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    a3 = MEMORY[0x1865D9BC0](v13, v15, v17, v19);
    a4 = v20;
  }

  v21 = swift_slowAlloc();
  bzero(v21, 0x3F1uLL);
  v22 = sub_182AD3048();
  v34 = a1;
  v23 = sub_182AD3048();
  v24 = sub_182AD3048();
  v25 = DNSServiceConstructFullName(v21, (v22 + 32), (v23 + 32), (v24 + 32));

  if (v25)
  {

    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1ED411BA0);
    v27 = sub_182AD2678();
    v28 = sub_182AD38B8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = v25;
      _os_log_impl(&dword_181A37000, v27, v28, "Failed to construct bonjour endpoint %d", v29, 8u);
      MEMORY[0x1865DF520](v29, -1, -1);
    }

    result = 0;
  }

  else
  {
    v31 = sub_182AD3158();
    v33 = v32;
    MEMORY[0x1865DF520](v21, -1, -1);
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = 0;
    result[4] = v34;
    result[5] = a2;
    result[6] = a3;
    result[7] = a4;
    result[8] = a5;
    result[9] = a6;
    result[10] = v31;
    result[11] = v33;
  }

  *a7 = result;
  return result;
}

uint64_t BonjourEndpoint1.composite.getter()
{
  v1 = *(*v0 + 80);

  return v1;
}

uint64_t BonjourEndpoint1.domain.getter()
{
  v1 = *(*v0 + 64);

  return v1;
}

uint64_t BonjourEndpoint1.name.getter()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t BonjourEndpoint1.type.getter()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t BonjourEndpoint1.common.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_18217887C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v6[3];
    v12[1] = v6[2];
    v12[2] = v7;
    v8 = v6[5];
    v12[3] = v6[4];
    v12[4] = v8;
    v12[0] = v6[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v9 = swift_allocObject();
    memmove((v9 + 16), v6 + 1, 0x50uLL);
    sub_1820F5388(v12, &v11);

    *a2 = v9;
    v6 = v9;
  }

  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
}

uint64_t BonjourEndpoint1.common.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = v5[3];
    v11[1] = v5[2];
    v11[2] = v6;
    v7 = v5[5];
    v11[3] = v5[4];
    v11[4] = v7;
    v11[0] = v5[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v8 = swift_allocObject();
    memmove((v8 + 16), v5 + 1, 0x50uLL);
    sub_1820F5388(v11, &v10);

    *v1 = v8;
    v5 = v8;
  }

  *(v5 + 2) = v2;
  *(v5 + 3) = v3;
}

void (*BonjourEndpoint1.common.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 176) = v1;
  v5 = *(*v1 + 24);
  *(v4 + 160) = *(*v1 + 16);
  *(v4 + 168) = v5;

  return sub_182178AB4;
}

void sub_182178AB4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  v4 = *(*a1 + 168);
  v5 = *(*a1 + 176);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[22];
      *v2 = v7[1];
      v9 = v7[5];
      v11 = v7[2];
      v10 = v7[3];
      *(v2 + 3) = v7[4];
      *(v2 + 4) = v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
      type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
      v12 = swift_allocObject();
      memmove((v12 + 16), v7 + 1, 0x50uLL);
      sub_1820F5388(v2, (v2 + 10));

      *v8 = v12;
      v7 = v12;
    }

    *(v7 + 2) = v3;
    *(v7 + 3) = v4;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    if ((v13 & 1) == 0)
    {
      v15 = v2[22];
      *v2 = v14[1];
      v16 = v14[5];
      v18 = v14[2];
      v17 = v14[3];
      *(v2 + 3) = v14[4];
      *(v2 + 4) = v16;
      *(v2 + 1) = v18;
      *(v2 + 2) = v17;
      type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
      v19 = swift_allocObject();
      memmove((v19 + 16), v14 + 1, 0x50uLL);
      sub_1820F5388(v2, (v2 + 10));

      *v15 = v19;
      v14 = v19;
    }

    *(v14 + 2) = v3;
    *(v14 + 3) = v4;
  }

  free(v2);
}

uint64_t sub_182178C2C()
{
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFB250[v2]);
    MEMORY[0x1865DB070](qword_182AFB278[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
  sub_182AD30E8();
  sub_182AD30E8();

  return sub_182AD30E8();
}

uint64_t sub_182178D70()
{
  sub_182AD44E8();
  sub_182178C2C();
  return sub_182AD4558();
}

uint64_t sub_182178DD0()
{
  sub_182AD44E8();
  sub_182178C2C();
  return sub_182AD4558();
}

uint64_t sub_182178E2C()
{
  sub_182AD44E8();
  sub_182178C2C();
  return sub_182AD4558();
}

uint64_t sub_182178ED4()
{
  sub_182AD44E8();
  sub_182178C2C();
  return sub_182AD4558();
}

uint64_t sub_182178F3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = 0;
  v44 = 0xE000000000000000;
  v41 = 0;
  v42 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v38 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  sub_181FAEEC4(a1, &v28);
  v4 = v28;
  if (v28 == 1)
  {
    goto LABEL_22;
  }

  v5 = *(&v28 + 1);
  v6 = *a1;
  v7 = *a1 + 32;
  v8 = v7 + *(*a1 + 16);
  *&v28 = v7;
  *(&v28 + 1) = v8;
  v29 = 0uLL;
  LOBYTE(v30) = 1;

  sub_1820D562C(&v43, v27);
  sub_1820D562C(&v41, v36);
  sub_1820D562C(&v39, v35);
  Deserializer.uint32(_:)(&v38, v34);
  result = Deserializer.buffer(_:length:)(v38, v33);
  v11 = *(&v29 + 1);
  v10 = v29;
  if (v30 != 1)
  {
    goto LABEL_11;
  }

  if (*(&v29 + 1))
  {

LABEL_21:
    sub_182179F68(v4);
LABEL_22:

    *a2 = 0;
    return result;
  }

  if (v28)
  {
    v12 = *(&v28 + 1) - v28;
  }

  else
  {
    v12 = 0;
  }

  v11 = v12 - v29;
  if (__OFSUB__(v12, v29))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v11 < 0)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (v11)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:
  v14 = *(v6 + 16);
  if (v14 < v29)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v6;
  if (v29)
  {
LABEL_26:
    sub_1822D0918(v6, v7, v10, (2 * v14) | 1);
    v15 = v26;
  }

  *a1 = v15;

  if (v13 && v11)
  {
    goto LABEL_21;
  }

  v17 = v43;
  v16 = v44;
  v19 = v41;
  v18 = v42;
  v21 = v39;
  v20 = v40;

  sub_1821784FC(v17, v16, v19, v18, v21, v20, &v28);
  v22 = v28;
  if (!v28)
  {
    goto LABEL_21;
  }

  *a2 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = v22[3];
    v29 = v22[2];
    v30 = v23;
    v24 = v22[5];
    v31 = v22[4];
    v32 = v24;
    v28 = v22[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v25 = swift_allocObject();
    memmove((v25 + 16), v22 + 1, 0x50uLL);
    sub_1820F5388(&v28, v27);

    *a2 = v25;
    v22 = v25;
  }

  *(v22 + 2) = v4;
  *(v22 + 3) = v5;
}

uint64_t sub_182179218(uint64_t a1, void *a2)
{
  v2 = a2[5];
  v14[0] = a2[4];
  v14[1] = v2;
  v15 = 12;
  v3 = a2[7];
  v12[0] = a2[6];
  v12[1] = v3;
  v13 = 12;
  v4 = a2[9];
  v10[0] = a2[8];
  v10[1] = v4;
  v11 = 12;
  sub_181F80BF8(v14, &v7);
  sub_181F80BF8(v12, &v8);
  sub_181F80BF8(v10, &v9);
  v6 = MEMORY[0x1E69E7CC0];

  sub_1822A69B4(&v6);
  sub_1822A69B4(&v6);
  sub_1822A69B4(&v6);
  swift_arrayDestroy();
  sub_181F80C54(v10);
  sub_181F80C54(v12);
  sub_181F80C54(v14);
  return v6;
}

uint64_t static BonjourEndpoint1.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v5[0] = *a2;
  v5[1] = v2;
  v4 = 0;
  return sub_18217935C(v5, &v4) & 1;
}

uint64_t sub_18217935C(void *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *(*v2 + 24);
  v11[2] = v6;
  v11[3] = v7;
  v8 = v3[3];
  v11[0] = v3[2];
  v11[1] = v8;
  v10 = v4;

  LOBYTE(v6) = sub_181B0AD48(v11, &v10);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (*(v5 + 80) == v3[10] && *(v5 + 88) == v3[11])
  {
    return 1;
  }

  return sub_182AD4268();
}

Swift::String __swiftcall BonjourEndpoint1.descriptionInternal(redacted:)(Swift::Bool redacted)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
    v10 = *(v3 + 80);
    v9 = *(v3 + 88);
    if (redacted)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = v10;
    v20 = v9;

    MEMORY[0x1865D9CA0](v8, v7);
    goto LABEL_6;
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);

  MEMORY[0x1865D9CA0](v5, v6);

  v8 = 64;
  v7 = 0xE100000000000000;
  v10 = *(v3 + 80);
  v9 = *(v3 + 88);
  if (!redacted)
  {
    goto LABEL_5;
  }

LABEL_3:

  v11 = swift_slowAlloc();
  v12 = sub_182AD3048();
  __nwlog_create_hash_from_private_string((v12 + 32), v11);

  v13 = sub_182AD3158();
  v15 = v14;
  MEMORY[0x1865DF520](v11, -1, -1);

  v19 = 0x2372756F6A6E6F42;
  v20 = 0xE800000000000000;
  MEMORY[0x1865D9CA0](v13, v15);

  MEMORY[0x1865D9CA0](v8, v7);

LABEL_6:

  v16 = v19;
  v17 = v20;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t BonjourEndpoint1.hash(into:)()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFB250[v2]);
    MEMORY[0x1865DB070](qword_182AFB278[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
}

uint64_t BonjourEndpoint1.hashValue.getter()
{
  sub_182AD44E8();
  BonjourEndpoint1.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_18217975C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_18217979C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = v5[3];
    v11[1] = v5[2];
    v11[2] = v6;
    v7 = v5[5];
    v11[3] = v5[4];
    v11[4] = v7;
    v11[0] = v5[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v8 = swift_allocObject();
    memmove((v8 + 16), v5 + 1, 0x50uLL);
    sub_1820F5388(v11, &v10);

    *v1 = v8;
    v5 = v8;
  }

  *(v5 + 2) = v2;
  *(v5 + 3) = v3;
}

void (*sub_182179854(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = BonjourEndpoint1.common.modify(v2);
  return sub_182088F74;
}

uint64_t sub_1821798FC()
{
  sub_182AD44E8();
  BonjourEndpoint1.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_18217994C()
{
  sub_182AD44E8();
  BonjourEndpoint1.hash(into:)();
  return sub_182AD4558();
}

unint64_t sub_182179994(uint64_t a1)
{
  result = sub_1821799BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821799BC()
{
  result = qword_1EA83AD28;
  if (!qword_1EA83AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD28);
  }

  return result;
}

unint64_t sub_182179A10(uint64_t a1)
{
  result = sub_182179A38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_182179A38()
{
  result = qword_1EA83AD30;
  if (!qword_1EA83AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD30);
  }

  return result;
}

unint64_t sub_182179A90()
{
  result = qword_1EA83AD38;
  if (!qword_1EA83AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD38);
  }

  return result;
}

uint64_t sub_182179AE4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v5[0] = *a2;
  v5[1] = v2;
  v4 = 0;
  return sub_18217935C(v5, &v4) & 1;
}

uint64_t sub_182179B3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_182179B84(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_182179BEC()
{
  result = qword_1EA83AD40;
  if (!qword_1EA83AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD40);
  }

  return result;
}

unint64_t sub_182179C44()
{
  result = qword_1EA83AD48;
  if (!qword_1EA83AD48)
  {
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD48);
  }

  return result;
}

uint64_t sub_182179C9C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[7];
  v22 = a1[6];
  v23 = a1[5];
  v17 = a1[9];
  v18 = a1[8];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v20 = a2[6];
  v21 = v7;
  v19 = a2[7];
  v15 = a2[9];
  v16 = a2[8];
  v25[0] = v3;
  v25[1] = v2;
  v24[0] = v9;
  v24[1] = v8;

  LOBYTE(v2) = _s7Network14EndpointCommonV2eeoiySbAC_ACtFZ_0(v25, v24);

  if ((v2 & 1) == 0 || (v5 != v11 || v4 != v10) && (sub_182AD4268() & 1) == 0 || (v6 != v13 || v23 != v12) && (sub_182AD4268() & 1) == 0 || (v22 != v20 || v21 != v19) && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_182AD4268();
}

uint64_t sub_182179E48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v26 = a1[3];
  v27 = v3;
  v4 = a1[4];
  v28 = a1[5];
  v5 = a1[2];
  v25[0] = a1[1];
  v25[1] = v5;
  v22 = v26;
  v23 = v4;
  v24 = a1[5];
  v20 = v25[0];
  v21 = v2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[5];
  v9 = a2[3];
  v30 = a2[4];
  v31 = v8;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[1];
  v29[0] = v6;
  v29[1] = v10;
  v29[2] = v9;
  v17 = v11;
  v18 = v30;
  v19 = a2[5];
  v15 = v12;
  v16 = v7;
  sub_1820F5388(v25, v33);
  sub_1820F5388(v29, v33);
  v13 = sub_182179C9C(&v20, &v15);
  v32[2] = v17;
  v32[3] = v18;
  v32[4] = v19;
  v32[0] = v15;
  v32[1] = v16;
  sub_182179F38(v32);
  v33[2] = v22;
  v33[3] = v23;
  v33[4] = v24;
  v33[0] = v20;
  v33[1] = v21;
  sub_182179F38(v33);
  return v13 & 1;
}

uint64_t sub_182179F68(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_182179FAC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_182AD30F8();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_182AD3128();

  return sub_182AD3258();
}

uint64_t sub_18217A078()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 42) == 1)
  {
    v5 = *(v0 + 32);
    if (*(v0 + 16) == 254 && (*(v0 + 16) & 0xC000) == 0x8000 || (!v1 ? (v6 = HIDWORD(v1) == 0) : (v6 = 0), v6 ? (v7 = v2 == 0x100000000000000) : (v7 = 0), v7 || *(v0 + 16) == 255 && (*(v0 + 16) & 0xFF00) == 0x200))
    {
      v3 = 1;
    }

    else
    {
      v11[0] = *(v0 + 16);
      v11[1] = v2;
      v11[2] = v5;
      if (qword_1EA8370A0 != -1)
      {
        swift_once();
      }

      v12 = xmmword_1EA839410;
      v13 = off_1EA839420;
      v9 = xmmword_1EA839410;
      v10 = off_1EA839420;
      sub_181FADA00(&v12, &v14);
      v3 = _s7Network11IPv6AddressV2eeoiySbAC_ACtFZ_0(v11, &v9);
      v14 = v9;
      v15 = v10;
      sub_18217B684(&v14);
    }
  }

  else if (*(v0 + 42))
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
    if (*(v0 + 16))
    {
      v4 = *(v0 + 16) == 65193;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && (v1 & 0xFFFFFF) != 0xE0)
    {
      LODWORD(v14) = *(v0 + 16);
      *(&v14 + 1) = v2;
      if (qword_1EA836AF8 != -1)
      {
        swift_once();
      }

      LODWORD(v12) = dword_1EA836B00;
      *(&v12 + 1) = qword_1EA836B08;

      v3 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v14, &v12);
    }
  }

  return v3 & 1;
}

uint64_t sub_18217A25C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, _BYTE *a3@<X4>, uint64_t a4@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = sub_1820F3A10(a1, a2, 10);

    if ((v11 & 0x10000) != 0)
    {
      goto LABEL_63;
    }

LABEL_67:
    memset(v54, 0, sizeof(v54));
    v55 = 0;
    memset(v56, 0, 28);
    v47 = 0;
    v25 = sub_182AD3048();
    is_ip_address = nw_string_is_ip_address((v25 + 32), v56, 0x1CuLL);

    if (is_ip_address)
    {

      v27 = *(v56 + 2);
      if (BYTE1(v56[0]) != 30)
      {
        if (BYTE1(v56[0]) != 2)
        {
          goto LABEL_64;
        }

        *a3 = 32;
        v28 = (v27 >> 16);
        goto LABEL_77;
      }

      v37 = *(&v56[4] + 2);
      v38 = *(&v56[2] + 2);
      v32 = *(v56 + 2) >> 48;
      *a3 = 0x80;
      *(&v40 + 1) = v37;
      *&v40 = v38;
      v39 = v40 >> 48;
      LOBYTE(v48) = 1;
      v41 = HIDWORD(v39);
      v42 = v11;
      if (v39 == 4294901760)
      {
        v43 = 0;
      }

      else
      {
        v41 = v32;
        v43 = v39;
      }

      if (v39 == 4294901760)
      {
        v44 = 0;
      }

      else
      {
        v42 = 0;
        v44 = v11;
      }

      v45 = v39 != 4294901760;
      v46 = v32 == 0;
      if (v32)
      {
        v33 = v39;
      }

      else
      {
        v32 = v41;
        v33 = v43;
      }

      if (v46)
      {
        v34 = v42;
      }

      else
      {
        v34 = 0;
      }

      if (v46)
      {
        LOWORD(v11) = v44;
      }

      v36 = !v46 || v45;
      goto LABEL_96;
    }

    v29 = sub_182AD3048();

    v30 = nw_utilities_cidr_string_to_subnet_and_mask((v29 + 32), v56, v54, &v47);

    if (!v30)
    {
      goto LABEL_64;
    }

    if ((v47 & 0x8000000000000000) == 0)
    {
      if (v47 <= 0xFF)
      {
        *a3 = v47;
        if (BYTE1(v56[0]) != 30)
        {
          if (BYTE1(v56[0]) != 2)
          {
            goto LABEL_64;
          }

          v28 = (*(v56 + 2) >> 16);
LABEL_77:
          v48 = 0uLL;
          v49 = v28;
          v50 = 0;
          v51 = v11;
          v52 = 0;
          v53 = 0;
          result = sub_181AD2448(0);
          v31 = v48;
          v32 = v49;
          v33 = v50;
          v34 = v51;
          LOWORD(v11) = v52;
          v35 = 1;
          v36 = v53;
LABEL_97:
          LOBYTE(v48) = v35;
          *a4 = v31;
          *(a4 + 16) = v32;
          *(a4 + 24) = v33;
          *(a4 + 32) = v34;
          *(a4 + 40) = v11;
          *(a4 + 42) = v36;
          *(a4 + 44) = 0;
          *(a4 + 52) = v35;
          goto LABEL_98;
        }

        v34 = 0;
        v32 = *(v56 + 2) >> 48;
        v33 = *(&v56[2] + 2) >> 48;
        v36 = 1;
        LOBYTE(v48) = 1;
        if (!v32 && v33 == 4294901760)
        {
          v36 = 0;
          v32 = HIDWORD(v33);
          v34 = v11;
          v33 = 0;
          LOWORD(v11) = 0;
        }

LABEL_96:
        v35 = v48;
        v31 = 0uLL;
        goto LABEL_97;
      }

LABEL_108:
      __break(1u);
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v48 = a1;
    *(&v48 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          LOWORD(v11) = 0;
          v18 = &v48 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              break;
            }

            v11 = (10 * v11) + v19;
            if ((v11 & 0x10000) != 0)
            {
              break;
            }

            ++v18;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (a1 != 45)
    {
      if (v5)
      {
        LOWORD(v11) = 0;
        v21 = &v48;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) + v22;
          if ((v11 & 0x10000) != 0)
          {
            break;
          }

          ++v21;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LOWORD(v11) = 0;
        v14 = &v48 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) - v15;
          if ((v11 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_104;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v9 = sub_182AD3CF8();
  }

  v10 = *v9;
  if (v10 == 43)
  {
    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOWORD(v11) = 0;
        if (v9)
        {
          v16 = v9 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v11 = (10 * v11) + v17;
            if ((v11 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++v16;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_105;
  }

  if (v10 == 45)
  {
    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOWORD(v11) = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v11 = (10 * v11) - v13;
            if ((v11 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v6)
  {
    LOWORD(v11) = 0;
    if (v9)
    {
      while (1)
      {
        v20 = *v9 - 48;
        if (v20 > 9)
        {
          goto LABEL_61;
        }

        if (((10 * v11) & 0xF0000) != 0)
        {
          goto LABEL_61;
        }

        v11 = (10 * v11) + v20;
        if ((v11 & 0x10000) != 0)
        {
          goto LABEL_61;
        }

        ++v9;
        if (!--v6)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  LOWORD(v11) = 0;
  LOBYTE(v5) = 1;
LABEL_62:
  LOBYTE(v56[0]) = v5;
  v23 = v5;

  if ((v23 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_63:

LABEL_64:
  *a4 = 1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
LABEL_98:
  *(a4 + 56) = 0;
  return result;
}

double AddressEndpoint.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 44) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 42) = 4;
  return result;
}

double sub_18217A818@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0;
  v20 = 0u;
  v18 = 128;
  if (getpeername(a1, &v19, &v18))
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1ED411BA0);
    v5 = sub_182AD2678();
    v6 = sub_182AD38B8();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_16;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "getpeername failed";
    v9 = v6;
    v10 = v5;
    v11 = v7;
    v12 = 2;
LABEL_15:
    _os_log_impl(&dword_181A37000, v10, v9, v8, v11, v12);
    MEMORY[0x1865DF520](v7, -1, -1);
LABEL_16:

    goto LABEL_17;
  }

  if ((v18 & 0x80000000) != 0 || v18 < v19.sa_len)
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1ED411BA0);
    v5 = sub_182AD2678();
    v16 = sub_182AD38B8();
    if (!os_log_type_enabled(v5, v16))
    {
      goto LABEL_16;
    }

    v7 = swift_slowAlloc();
    *v7 = 67109376;
    swift_beginAccess();
    *(v7 + 4) = v18;
    *(v7 + 8) = 256;
    swift_beginAccess();
    *(v7 + 10) = v19.sa_len;
    v8 = "getsockname provided invalid length: len: %d, ss.ss_len: %hhu";
    v9 = v16;
    v10 = v5;
    v11 = v7;
    v12 = 11;
    goto LABEL_15;
  }

  v37[4] = v23;
  v37[5] = v24;
  v37[6] = v25;
  v37[7] = v26;
  v37[0] = v19;
  v37[1] = v20;
  v37[2] = v21;
  v37[3] = v22;
  sub_181AD2530(v37, &v27);
  if (v27 == 1)
  {
LABEL_17:
    *a2 = 1;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    return result;
  }

  v13 = v31;
  if (v31 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v35;
    v2 = v34;
  }

  *a2 = v27;
  *(a2 + 8) = v28;
  result = *&v29;
  *(a2 + 24) = v29;
  *(a2 + 40) = v30;
  *(a2 + 42) = v13;
  *(a2 + 43) = v32;
  *(a2 + 47) = v33;
  *(a2 + 48) = v2;
  *(a2 + 52) = v14;
  *(a2 + 56) = *(v36 + 3);
  *(a2 + 53) = v36[0];
  return result;
}

double sub_18217AB24@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v24[12] = 0;
  v24[20] = 1;
  *&v24[24] = 0;
  v22 = 0uLL;
  if (sub_182AD30F8() < 105)
  {
    *&v23 = a1;
    *(&v23 + 1) = a2;
    *v24 = 0;
    *&v24[8] = 0;
    v24[10] = 2;
    sub_181AD2448(0);
    v12 = v22;
    v13 = v23;
    v18[0] = v22;
    v18[1] = v23;
    v19[0] = *v24;
    v14 = *v24;
    *(v19 + 12) = *&v24[12];
    v15 = *&v24[12];
    *a3 = v22;
    *(a3 + 16) = v13;
    *(a3 + 32) = v14;
    *(a3 + 44) = v15;
    *(v21 + 12) = v15;
    v20[1] = v13;
    v21[0] = v14;
    v20[0] = v12;
    sub_181D6B080(v18, &v17);
    sub_181AA57B4(v20);
  }

  else
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1ED411BA0);

    v7 = sub_182AD2678();
    v8 = sub_182AD38C8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v20[0] = v10;
      *v9 = 136315138;
      v11 = sub_181C64FFC(a1, a2, v20);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_181A37000, v7, v8, "Path %s is too large for a unix domain address", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    *a3 = 1;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
  }

  return result;
}

uint64_t AddressEndpoint.common.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AddressEndpoint.common.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AddressEndpoint.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  v6 = *(v1 + 42);
  *(a1 + 26) = v6;
  return sub_181B9979C(v2, v3, v4, v5, v6);
}

__n128 AddressEndpoint.type.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  v4 = a1[1].n128_u8[10];
  sub_181AD1DE4(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 42));
  result = v6;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 42) = v4;
  return result;
}

void sub_18217AEE4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = 1;
  sub_181FAEEC4(a1, v10);
  if (v10[0] == 1)
  {
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
  }

  else
  {
    v9 = *v10;
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1ED411BA0);
    v4 = sub_182AD2678();
    v5 = sub_182AD38C8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10[0] = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_181C64FFC(0xD000000000000015, 0x8000000182BDF830, v10);
      *(v6 + 12) = 2048;
      *(v6 + 14) = 358;
      _os_log_impl(&dword_181A37000, v4, v5, "%s:%ld - function not implemented", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1865DF520](v7, -1, -1);
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    v8 = v11;
    *a2 = v9;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    *(a2 + 42) = 4;
    *(a2 + 44) = 0;
    *(a2 + 52) = v8;
  }

  *(a2 + 56) = 0;
}

void sub_18217B0E0(uint64_t a1@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(v1 + 42) != 2)
  {
    goto LABEL_7;
  }

  memset(v16 + 2, 0, 104);
  BYTE1(v16[0]) = 1;
  if (sub_182AD30F8() < 1)
  {
    LOBYTE(v4) = 3;
    goto LABEL_9;
  }

  v3 = sub_182AD30F8();
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (v4 <= 0xFF)
  {
LABEL_9:
    LOBYTE(v16[0]) = v4;
    v14 = sub_182AD30F8();
    v15 = sub_182AD3048();
    memcpy(v16 + 2, (v15 + 32), v14);

    v7 = 0;
    v8 = v16[0];
    v9 = v16[1];
    v10 = v16[2];
    v11 = v16[3];
    v12 = v16[4];
    v13 = v16[5];
    v5 = *&v16[6];
    v6 = WORD4(v16[6]);
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
LABEL_10:
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  *(a1 + 106) = v7;
}

uint64_t AddressEndpoint.hashValue.getter()
{
  sub_182AD44E8();
  AddressEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_18217B294@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_18217B2D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_18217B330()
{
  sub_182AD44E8();
  AddressEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_18217B374()
{
  sub_182AD44E8();
  AddressEndpoint.hash(into:)();
  return sub_182AD4558();
}

unint64_t sub_18217B3F0(uint64_t a1)
{
  result = sub_18217B418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18217B418()
{
  result = qword_1EA83AD50;
  if (!qword_1EA83AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD50);
  }

  return result;
}

unint64_t sub_18217B46C(uint64_t a1)
{
  result = sub_18217B494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18217B494()
{
  result = qword_1EA83AD58;
  if (!qword_1EA83AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD58);
  }

  return result;
}

unint64_t sub_18217B4EC()
{
  result = qword_1EA83AD60;
  if (!qword_1EA83AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD60);
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18217B55C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18217B5C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 27))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 26);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18217B608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 26) = -a2;
    }
  }

  return result;
}

uint64_t sub_18217B654(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
    *(result + 24) = 0;
  }

  *(result + 26) = a2;
  return result;
}

unint64_t Endpoint.loggingDescription.getter()
{
  sensitive_redacted = nw_context_get_sensitive_redacted(*(v0 + OBJC_IVAR____TtC7Network8Endpoint_context));
  if ((*(v0 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 0x80) != 0 || (sensitive_redacted & 1) == 0)
  {

    return Endpoint.description.getter();
  }

  else
  {

    return sub_181B52D70();
  }
}

uint64_t sub_18217B76C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  if (v6)
  {
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v10 = *(v6 + 48);
    v9 = *(v6 + 56);
    v11 = *(v6 + 64);

    if (v11 != 1)
    {
      v17 = v8;
      v14 = a2;
      v15 = 0;
      goto LABEL_12;
    }

    if (v7)
    {
      v12 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v12 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (!(v12 | a1))
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  v7 = 0;
  if (a1)
  {
LABEL_10:
    v17 = v8;
    v14 = a2;
    v15 = 1;
LABEL_12:
    type metadata accessor for EndpointCommon.EndpointCommonBacking();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v14;
    *(v13 + 32) = v17;
    *(v13 + 40) = v7;
    *(v13 + 48) = v10;
    *(v13 + 56) = v9;
    *(v13 + 64) = v15;

    goto LABEL_13;
  }

LABEL_7:

  v13 = 0;
LABEL_13:

  *v2 = v5;
  v2[1] = v13;
  return result;
}

uint64_t sub_18217B888(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  v21 = v6;
  if (!v5)
  {
    v7 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v10 = *(v5 + 48);
  v9 = *(v5 + 56);
  v11 = *(v5 + 64);

  if (v11 != 1)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (!v8)
  {
    v6 = v21;
    v8 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 | a1)
  {
LABEL_9:
    v13 = 1;
LABEL_11:
    type metadata accessor for EndpointCommon.EndpointCommonBacking();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = v10;
    *(v14 + 56) = v9;
    *(v14 + 64) = v13;
    v6 = v21;

    goto LABEL_14;
  }

  v6 = v21;
LABEL_13:

  v14 = 0;
LABEL_14:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = v16[3];
    v23[1] = v16[2];
    v23[2] = v17;
    v18 = v16[5];
    v23[3] = v16[4];
    v23[4] = v18;
    v23[0] = v16[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v19 = swift_allocObject();
    memmove((v19 + 16), v16 + 1, 0x50uLL);
    sub_1820F5388(v23, v22);

    *v2 = v19;
    v16 = v19;
  }

  *(v16 + 2) = v6;
  *(v16 + 3) = v14;
}

uint64_t sub_18217BA20(uint64_t a1, unint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  if (v5)
  {
    v7 = *(v5 + 48);
    v8 = *(v5 + 56);
    v9 = *(v5 + 64);
    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    sub_181E6550C(v10);
    if (v9 != 1)
    {
      v14 = 0;
LABEL_14:
      type metadata accessor for EndpointCommon.EndpointCommonBacking();
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v11;
      *(v13 + 32) = a1;
      *(v13 + 40) = a2;
      *(v13 + 48) = v7;
      *(v13 + 56) = v8;
      *(v13 + 64) = v14;

      goto LABEL_15;
    }

    if (!a2)
    {
      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_8:
    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v12 | v10))
    {
      goto LABEL_11;
    }

LABEL_13:
    v14 = 1;
    goto LABEL_14;
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_8;
  }

LABEL_11:

  v13 = 0;
LABEL_15:

  *v2 = v6;
  v2[1] = v13;
  return result;
}

uint64_t sub_18217BB2C(uint64_t a1, unint64_t a2)
{
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (!v5)
  {
    if (!a2)
    {
LABEL_11:

      v13 = 0;
      goto LABEL_15;
    }

    v8 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  sub_181E6550C(v10);
  if (v9 == 1)
  {
    if (!a2)
    {
      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_8:
    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v12 | v10))
    {
      goto LABEL_11;
    }

LABEL_13:
    v14 = 1;
    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  type metadata accessor for EndpointCommon.EndpointCommonBacking();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = v7;
  *(v13 + 56) = v8;
  *(v13 + 64) = v14;

LABEL_15:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = v16[3];
    v22[1] = v16[2];
    v22[2] = v17;
    v18 = v16[5];
    v22[3] = v16[4];
    v22[4] = v18;
    v22[0] = v16[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v19 = swift_allocObject();
    memmove((v19 + 16), v16 + 1, 0x50uLL);
    sub_1820F5388(v22, &v21);

    *v2 = v19;
    v16 = v19;
  }

  *(v16 + 2) = v6;
  *(v16 + 3) = v13;
}

uint64_t sub_18217BCB0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (!v7)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_7:
    type metadata accessor for EndpointCommon.EndpointCommonBacking();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;
    *(v14 + 48) = a1;
    *(v14 + 56) = a2;
    *(v14 + 64) = a3 & 1;

    goto LABEL_10;
  }

  v10 = v7[4];
  v9 = v7[5];
  v12 = v7[2];
  v11 = v7[3];

  sub_181E6550C(v12);
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v9)
  {
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v13 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 | v12)
  {
    goto LABEL_7;
  }

LABEL_9:

  v14 = 0;
LABEL_10:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = v16[3];
    v22[1] = v16[2];
    v22[2] = v17;
    v18 = v16[5];
    v22[3] = v16[4];
    v22[4] = v18;
    v22[0] = v16[1];
    type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
    v19 = swift_allocObject();
    memmove((v19 + 16), v16 + 1, 0x50uLL);
    sub_1820F5388(v22, &v21);

    *v3 = v19;
    v16 = v19;
  }

  *(v16 + 2) = v8;
  *(v16 + 3) = v14;
}

id Endpoint.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  return Endpoint.init(_:)(a1);
}

{
  v3 = objc_allocWithZone(v1);
  return Endpoint.init(_:)(a1);
}

uint64_t sub_18217BF34()
{
  v1 = v0;
  v2 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v40 = sub_18217D718(v8, v1);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v9, v7, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = *v7;
      if (EnumCaseMultiPayload == 1)
      {
        v12 = *(*v7 + 24);
        *v41 = *(*v7 + 16);
        *&v41[8] = v12;

        v13 = sub_181FAF3A0();

        *v41 = v13;
        v15 = sub_182182A94(v14, v11);
      }

      else
      {
        v29 = *(*v7 + 24);
        *v41 = *(*v7 + 16);
        *&v41[8] = v29;

        v30 = sub_181FAF3A0();

        *v41 = v30;
        v15 = sub_182179218(v31, v11);
      }

      sub_1820D46D8(v15);
      sub_1820D46D8(*v41);
    }

    else
    {
      v18 = *(v7 + 1);
      v19 = *(v7 + 2);
      v20 = *(v7 + 3);
      v21 = *(v7 + 4);
      v22 = v7[42];
      v23 = *(v7 + 20);
      *v41 = *v7;
      *&v41[8] = v18;

      v24 = sub_181FAF3A0();

      sub_1820D46D8(v24);

      sub_181AD1DE4(v19, v20, v21, v23, v22);
    }

    return v40;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v25 = *(v7 + 1);
    *v41 = *v7;
    *&v41[16] = v25;
    *&v41[30] = *(v7 + 30);
    v42 = *v7;
    v39 = *v41;
    sub_18217E784(&v42, v38);
    v26 = sub_181FAF3A0();

    *&v39 = v26;
    v28 = sub_18217F498(v27, v41);
    sub_1820D46D8(v28);
    sub_1820D46D8(v39);
    sub_18217E7E0(v41);
    return v40;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_181AA91BC(v7, v4, type metadata accessor for URLEndpoint);
    v32 = v4[1];
    *v41 = *v4;
    *&v41[8] = v32;

    v33 = sub_181FAF3A0();

    *v41 = v33;
    v35 = sub_18218444C(v34, v4);
    sub_1820D46D8(v35);
    sub_1820D46D8(*v41);
    sub_181A5513C(v4, type metadata accessor for URLEndpoint);
    return v40;
  }

  v16 = *(v7 + 3);
  *v41 = *v7;
  v37 = *(v7 + 8);
  *&v41[8] = v37;
  *&v41[24] = v16;
  v17 = sub_18217E92C();
  if (v17)
  {
    sub_1820D46D8(v17);

    return v40;
  }

  return 0;
}

void sub_18217C31C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 0x10)
  {
    v4 = 0;
    v5 = (a1 + 40);
    v6 = v2 + 1;
    while (--v6)
    {
      v7 = *(v5 - 1);
      v9 = *v5 >> 62;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = v7 + 16;
          v10 = *(v7 + 16);
          v11 = *(v12 + 8);
          v8 = __OFSUB__(v11, v10);
          v7 = v11 - v10;
          if (v8)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else if (v9)
      {
        v8 = __OFSUB__(HIDWORD(v7), v7);
        LODWORD(v7) = HIDWORD(v7) - v7;
        if (v8)
        {
          goto LABEL_26;
        }

        v7 = v7;
      }

      else
      {
        v7 = BYTE6(*v5);
      }

      v5 += 2;
      v8 = __OFADD__(v4, v7);
      v4 += v7;
      if (v8)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }
    }

    if (v4 >= 5001)
    {

      v3 = "Accumulated key-size too large";
      goto LABEL_18;
    }

    *(v1 + OBJC_IVAR____TtC7Network8Endpoint__publicKeys) = a1;
  }

  else
  {

    v3 = "Adding key would exceed maximum count";
LABEL_18:

    nw_endpoint_fault(v3);
  }
}

Network::DNSFailureReason_optional __swiftcall DNSFailureReason.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_18217C43C()
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_18217C4B0()
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

id EndpointParent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EndpointParent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndpointParent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EndpointParent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndpointParent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Endpoint.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  return sub_181ACC828(v1 + v3, a1, type metadata accessor for Endpoint.EndpointType);
}

uint64_t Endpoint.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181B74E48(a1, v1 + v3);
  return swift_endAccess();
}

void sub_18217C6D0()
{
  sub_181A5513C(v0 + OBJC_IVAR____TtC7Network8Endpoint_type, type metadata accessor for Endpoint.EndpointType);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = *(v0 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint);
  *(v0 + OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint) = 0;
  v1 = v5;
  v2 = v5;
  if (v5)
  {
    while (1)
    {
      v6 = v2;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v3 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
      v4 = v3;

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v6;
  }

LABEL_6:
}

id Endpoint.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Network8Endpoint_addressStorage];
  if (v2)
  {
    MEMORY[0x1865DF520](v2, -1, -1);
  }

  v3 = *&v0[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage];
  if (v3)
  {
    MEMORY[0x1865DF520](v3, -1, -1);
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id Endpoint.__allocating_init(address:port:interface:)(unsigned int *a1, unsigned __int16 a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *a3;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v9 = 0uLL;
  v10 = v4;
  v11 = v5;
  v12 = a2;
  v13 = 0;
  v14 = 0;
  sub_181AD2448(v6);
  v7 = objc_allocWithZone(v3);
  return Endpoint.init(_:)(&v9);
}

id Endpoint.__allocating_init(address:port:interface:)(unint64_t *a1, unsigned __int16 a2, void *a3)
{
  v4 = a2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a3;
  v30 = 1;
  if (!v5 && v6 == -65536)
  {
    v9 = 0;
    v5 = HIDWORD(v6);
    v10 = a2;
    v6 = v7;
    v4 = 0;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = 1;
  v10 = v7;
  if (v7)
  {
LABEL_6:
    v11 = *(v7 + 16);

    sub_181E378A4(v11, &v21, v19);

    type metadata accessor for Interface.BackingClass();
    v8 = swift_allocObject();
    v12 = v20[0];
    v8[9] = v19[8];
    v8[10] = v12;
    *(v8 + 170) = *(v20 + 10);
    v13 = v19[5];
    v8[5] = v19[4];
    v8[6] = v13;
    v14 = v19[7];
    v8[7] = v19[6];
    v8[8] = v14;
    v15 = v19[1];
    v8[1] = v19[0];
    v8[2] = v15;
    v16 = v19[3];
    v8[3] = v19[2];
    v8[4] = v16;
  }

LABEL_7:
  v21 = v8;
  v22 = v5;
  v23 = v6;
  v24 = v10;
  v25 = v4;
  v26 = v9;
  v27 = 0;
  v28 = v30;
  v29 = 0;
  v17 = objc_allocWithZone(v3);
  return Endpoint.init(_:)(&v21);
}

char *Endpoint.__allocating_init(hostname:port:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v6[2] = a1;
  v6[3] = a2;
  v7 = a3;
  v8 = 0;
  v4 = objc_allocWithZone(v3);
  return Endpoint.init(_:)(v6);
}

id Endpoint.init(_:)(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v15 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = &v1[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v6 = 0;
  v6[2] = 1;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v7 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v1[v7] = v8;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_associations] = v9;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_edges] = v9;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v10 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  *&v1[v10] = sub_181A552E8(v9);
  v11 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v9;
  v1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  v13 = &v1[OBJC_IVAR____TtC7Network8Endpoint_type];
  *v13 = v15;
  *(v13 + 2) = v4;
  *(v13 + 3) = v5;
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id Endpoint.__allocating_init(urlString:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for URLEndpoint();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_182183834(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_181F49A88(v7, &unk_1EA83A470);
    return 0;
  }

  else
  {
    sub_181AA91BC(v7, v14, type metadata accessor for URLEndpoint);
    sub_181ACC828(v14, v11, type metadata accessor for URLEndpoint);
    v16 = objc_allocWithZone(v2);
    v17 = Endpoint.init(_:)(v11);
    sub_181A5513C(v14, type metadata accessor for URLEndpoint);
    return v17;
  }
}

char *sub_18217CE9C(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for URLEndpoint();
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v9 = 0;
  v9[2] = 1;
  v55 = OBJC_IVAR____TtC7Network8Endpoint_cnames;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  v56 = OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v10 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v57 = v10;
  *&v1[v10] = v11;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  v47 = OBJC_IVAR____TtC7Network8Endpoint_associations;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_associations] = v12;
  v50 = OBJC_IVAR____TtC7Network8Endpoint_context;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  v48 = OBJC_IVAR____TtC7Network8Endpoint_echConfig;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  v52 = OBJC_IVAR____TtC7Network8Endpoint_edges;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_edges] = v12;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  v49 = OBJC_IVAR____TtC7Network8Endpoint_registrar;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  v53 = OBJC_IVAR____TtC7Network8Endpoint_signature;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v13 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  v14 = sub_181A552E8(v12);
  v54 = v13;
  *&v1[v13] = v14;
  v15 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v16 = swift_allocObject();
  v51 = v15;
  *&v1[v15] = v16;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v12;
  v1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  *(v16 + 16) = 0;
  v75 = 0;
  v74 = 0;
  v17 = *a1;
  v18 = *a1 + 32;
  v19 = v18 + *(*a1 + 16);
  *v60 = v18;
  *&v60[8] = v19;
  *&v61 = 0;
  *&v60[16] = 0;
  BYTE8(v61) = 1;
  Deserializer.uint32(_:)(&v75, &v64);
  result = Deserializer.uint8(_:)(&v74, v73);
  v21 = *&v60[16];
  if (BYTE8(v61) == 1)
  {
    if (v61)
    {
LABEL_3:

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_deallocPartialClassInstance();
      return 0;
    }

    if (*v60)
    {
      v22 = *&v60[8] - *v60;
    }

    else
    {
      v22 = 0;
    }

    v23 = __OFSUB__(v22, *&v60[16]);
    v24 = v22 - *&v60[16];
    if (v23)
    {
      __break(1u);
    }

    else if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    return result;
  }

LABEL_10:
  v25 = *(v17 + 16);
  if (v25 < *&v60[16])
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((*&v60[16] & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!*&v60[16])
  {

    goto LABEL_14;
  }

LABEL_42:
  sub_1822D0918(v17, v18, v21, (2 * v25) | 1);
LABEL_14:
  *a1 = v26;

  v27 = sub_181FB0160(v75);
  if (v27 <= 2)
  {
    v28 = ObjectType;
    if (!v27)
    {
      goto LABEL_3;
    }

    if (v27 == 1)
    {
      sub_18217AEE4(a1, v60);
      v64 = *&v60[8];
      v65 = v61;
      v66 = v62;
      v67 = v63;
      if (*v60 == 1)
      {
        goto LABEL_3;
      }

      v29 = &v1[OBJC_IVAR____TtC7Network8Endpoint_type];
      *v29 = *v60;
      v30 = v65;
      *(v29 + 8) = v64;
      *(v29 + 24) = v30;
      *(v29 + 40) = v66;
      *(v29 + 14) = v67;
      type metadata accessor for Endpoint.EndpointType(0);
      swift_storeEnumTagMultiPayload();
      v59.receiver = v2;
      v59.super_class = v28;
      result = objc_msgSendSuper2(&v59, sel_init);
    }

    else
    {
      sub_18217F04C(a1, v60);
      v35 = v61;
      if (!v61)
      {
        goto LABEL_3;
      }

      v36 = WORD6(v61);
      v37 = DWORD2(v61);
      v38 = *&v60[16];
      v39 = &v1[OBJC_IVAR____TtC7Network8Endpoint_type];
      *v39 = *v60;
      *(v39 + 2) = v38;
      *(v39 + 3) = v35;
      *(v39 + 8) = v37;
      *(v39 + 18) = v36;
      type metadata accessor for Endpoint.EndpointType(0);
      swift_storeEnumTagMultiPayload();
      v70.receiver = v2;
      v70.super_class = v28;
      result = objc_msgSendSuper2(&v70, sel_init);
    }

    goto LABEL_33;
  }

  if (v27 > 4)
  {
    v31 = ObjectType;
    if (v27 == 5)
    {
      sub_18217E83C(a1, v60);
      v32 = v61;
      if (!v61)
      {
        goto LABEL_3;
      }

      v33 = *&v60[16];
      v34 = &v1[OBJC_IVAR____TtC7Network8Endpoint_type];
      *v34 = *v60;
      *(v34 + 2) = v33;
      *(v34 + 3) = v32;
      type metadata accessor for Endpoint.EndpointType(0);
      swift_storeEnumTagMultiPayload();
      v71.receiver = v2;
      v71.super_class = v31;
      result = objc_msgSendSuper2(&v71, sel_init);
    }

    else
    {
      sub_1821802C0(a1, v60);
      if (!*v60)
      {
        goto LABEL_3;
      }

      *&v1[OBJC_IVAR____TtC7Network8Endpoint_type] = *v60;
      type metadata accessor for Endpoint.EndpointType(0);
      swift_storeEnumTagMultiPayload();
      v68.receiver = v1;
      v68.super_class = v31;
      result = objc_msgSendSuper2(&v68, sel_init);
    }

    goto LABEL_33;
  }

  if (v27 == 3)
  {
    sub_182178F3C(a1, v60);
    if (!*v60)
    {
      goto LABEL_3;
    }

    *&v1[OBJC_IVAR____TtC7Network8Endpoint_type] = *v60;
    type metadata accessor for Endpoint.EndpointType(0);
    swift_storeEnumTagMultiPayload();
    v69.receiver = v1;
    v69.super_class = ObjectType;
    result = objc_msgSendSuper2(&v69, sel_init);
LABEL_33:
    v40 = OBJC_IVAR____TtC7Network8Endpoint_flags;
    v41 = *&result[OBJC_IVAR____TtC7Network8Endpoint_flags];
    if (v74)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  sub_182183B4C(a1, v6);
  if ((*(v46 + 48))(v6, 1, v7) == 1)
  {
    sub_181F49A88(v6, &unk_1EA83A470);
    goto LABEL_3;
  }

  v43 = v45;
  sub_181AA91BC(v6, v45, type metadata accessor for URLEndpoint);
  sub_181ACC828(v43, &v1[OBJC_IVAR____TtC7Network8Endpoint_type], type metadata accessor for URLEndpoint);
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v72.receiver = v1;
  v72.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v72, sel_init);
  sub_181A5513C(v43, type metadata accessor for URLEndpoint);
  result = v44;
  v40 = OBJC_IVAR____TtC7Network8Endpoint_flags;
  v41 = *&v44[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (v74)
  {
LABEL_34:
    if ((v41 & 2) == 0)
    {
      v42 = v41 | 2;
LABEL_39:
      *&result[v40] = v42;
      return result;
    }

    return result;
  }

LABEL_37:
  if ((v41 & 2) != 0)
  {
    v42 = v41 & 0xFFFD;
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_18217D718(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(a2 + v9, v8, type metadata accessor for Endpoint.EndpointType);
  sub_181AA91BC(v8, v5, type metadata accessor for Endpoint.EndpointType);
  v10 = dword_182AFB9AC[swift_getEnumCaseMultiPayload()];
  sub_181A5513C(v5, type metadata accessor for Endpoint.EndpointType);
  v16[0] = v10;
  v17 = 3;
  v15[0] = (*(a2 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 2) != 0;
  v15[40] = 0;
  sub_181F80BF8(v16, &v13);
  sub_181F80BF8(v15, &v14);
  v12[0] = MEMORY[0x1E69E7CC0];
  sub_1822A69B4(v12);
  sub_1822A69B4(v12);
  swift_arrayDestroy();
  sub_181F80C54(v15);
  sub_181F80C54(v16);
  return v12[0];
}

void *Endpoint.copy()@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  result = sub_181B440D4();
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t Endpoint.encode(to:)(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4618();
  v2 = sub_181D616F0(v1);
  NSDictionaryFromXPCDictionary = NWUtilsCreateNSDictionaryFromXPCDictionary(v2);
  if (NSDictionaryFromXPCDictionary)
  {
    v4 = NSDictionaryFromXPCDictionary;
    sub_182AD2E58();
  }

  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839518);
  v6 = sub_182AD39A8();

  v14[0] = 0;
  v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:v14];
  swift_unknownObjectRelease();
  v8 = v14[0];
  if (v7)
  {
    v9 = sub_182AD2158();
    v11 = v10;

    v14[0] = v9;
    v14[1] = v11;
    __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    sub_181C675F8();
    sub_182AD42C8();
    swift_unknownObjectRelease();
    sub_181C1F2E4(v9, v11);
  }

  else
  {
    v12 = v8;
    sub_182AD1F08();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

id Endpoint.init(from:)(void *a1)
{
  v2 = v1;
  v68[5] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = &v1[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v10 = 0;
  v10[2] = 1;
  v56 = OBJC_IVAR____TtC7Network8Endpoint_cnames;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  v57 = OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v11 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v58 = v11;
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v47 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  v48 = OBJC_IVAR____TtC7Network8Endpoint_associations;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_associations] = v13;
  v51 = OBJC_IVAR____TtC7Network8Endpoint_context;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  v49 = OBJC_IVAR____TtC7Network8Endpoint_echConfig;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  v53 = OBJC_IVAR____TtC7Network8Endpoint_edges;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_edges] = v13;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  v50 = OBJC_IVAR____TtC7Network8Endpoint_registrar;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  v54 = OBJC_IVAR____TtC7Network8Endpoint_signature;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v14 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  v15 = sub_181A552E8(v13);
  v55 = v14;
  *&v1[v14] = v15;
  v16 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v17 = swift_allocObject();
  v52 = v16;
  *&v1[v16] = v17;
  v46 = OBJC_IVAR____TtC7Network8Endpoint__publicKeys;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v13;
  *(v17 + 16) = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = v59;
  sub_182AD45C8();
  if (v19)
  {
    goto LABEL_4;
  }

  v45 = v9;
  v59 = v6;
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  sub_181C67934();
  sub_182AD4298();
  v21 = v65[0];
  v22 = objc_opt_self();
  v23 = sub_182AD2138();
  *&v65[0] = 0;
  v24 = [v22 propertyListWithData:v23 options:0 format:0 error:v65];

  v25 = *&v65[0];
  if (!v24)
  {
    v27 = v25;
    sub_182AD1F08();

    swift_willThrow();
    sub_181C1F2E4(v21, *(&v21 + 1));
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v68);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v60);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return v2;
  }

  v44 = v21;
  sub_182AD3AA8();
  swift_unknownObjectRelease();
  sub_181C65504(v67, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AD70);
  if (swift_dynamicCast())
  {
    v26 = sub_182AD2E48();
  }

  else
  {
    v26 = 0;
  }

  XPCDictionaryFromNSDictionary = NWUtilsCreateXPCDictionaryFromNSDictionary(v26);

  if (!XPCDictionaryFromNSDictionary)
  {
    sub_1820CD11C();
    swift_allocError();
    *v38 = 22;
    swift_willThrow();
    sub_181C1F2E4(v44, *(&v21 + 1));
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v67);
    goto LABEL_3;
  }

  v29 = sub_181D698EC(XPCDictionaryFromNSDictionary);
  if (!v29)
  {
    sub_1820CD11C();
    swift_allocError();
    *v39 = 22;
    swift_willThrow();
    sub_181C1F2E4(v44, *(&v21 + 1));
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v58 = *(&v21 + 1);
  v30 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v31 = v29;
  swift_beginAccess();
  v57 = v31;
  v32 = &v31[v30];
  v33 = v45;
  sub_181ACC828(v32, v45, type metadata accessor for Endpoint.EndpointType);
  sub_181AA91BC(v33, v2 + OBJC_IVAR____TtC7Network8Endpoint_type, type metadata accessor for Endpoint.EndpointType);
  v62.receiver = v2;
  v62.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v62, sel_init);
  v34 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  v35 = v2 + v34;
  v36 = v59;
  sub_181ACC828(v35, v59, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {
    v37 = v2;
    __swift_destroy_boxed_opaque_existential_1(v67);
    sub_181C1F2E4(v44, v58);

    swift_unknownObjectRelease();
    sub_181A5513C(v36, type metadata accessor for Endpoint.EndpointType);
  }

  else
  {
    v40 = v36[1];
    v65[0] = *v36;
    v65[1] = v40;
    v42 = *v36;
    v41 = v36[1];
    v66[0] = v36[2];
    *(v66 + 12) = *(v36 + 44);
    v63[0] = v42;
    v63[1] = v41;
    v64[0] = v36[2];
    *(v64 + 12) = *(v36 + 44);
    v43 = v2;
    sub_181AA5564(v63);
    sub_181C1F2E4(v44, v58);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v67);
    sub_181AA57B4(v65);
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v2;
}

id sub_18217E3A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = Endpoint.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18217E420()
{
  result = qword_1EA83AD80;
  if (!qword_1EA83AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD80);
  }

  return result;
}

unint64_t sub_18217E474(uint64_t a1)
{
  result = sub_18217E49C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18217E49C()
{
  result = qword_1EA83AD88;
  if (!qword_1EA83AD88)
  {
    type metadata accessor for Endpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD88);
  }

  return result;
}

uint64_t dispatch thunk of Endpoint.__allocating_init(_:)()
{
  return (*(v0 + 240))();
}

{
  return (*(v0 + 248))();
}

{
  return (*(v0 + 256))();
}

{
  return (*(v0 + 264))();
}

{
  return (*(v0 + 272))();
}

{
  return (*(v0 + 280))();
}

unint64_t sub_18217E5D4()
{
  result = qword_1EA83AD98;
  if (!qword_1EA83AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AD98);
  }

  return result;
}

unint64_t sub_18217E62C()
{
  result = qword_1EA83ADA0;
  if (!qword_1EA83ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADA0);
  }

  return result;
}

unint64_t sub_18217E684()
{
  result = qword_1EA83ADA8;
  if (!qword_1EA83ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADA8);
  }

  return result;
}

unint64_t sub_18217E6DC()
{
  result = qword_1EA83ADB0;
  if (!qword_1EA83ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADB0);
  }

  return result;
}

unint64_t sub_18217E730()
{
  result = qword_1EA836E18;
  if (!qword_1EA836E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E18);
  }

  return result;
}

void sub_18217E83C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_181FAEEC4(a1, &v12);
  v4 = v12;
  if (v12 == 1)
  {
    goto LABEL_5;
  }

  v5 = v13;
  v12 = 0;
  v13 = 0xE000000000000000;
  v6 = *a1 + 32;
  v7 = *(*a1 + 16);

  sub_1820E3330(v6, v6 + v7, a1, &v12, &v10);

  if (v11 == 1 && v10)
  {

LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v8 = v12;
  v9 = v13;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
}

uint64_t sub_18217E92C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = sub_181FAF3A0();

  v10 = v3;
  v8[0] = v2;
  v8[1] = v1;
  v9 = 12;
  sub_181F80BF8(v8, v7);
  v6 = MEMORY[0x1E69E7CC0];
  sub_181F80BF8(v7, v5);

  sub_181F80C54(v7);
  sub_1822A69B4(&v6);
  sub_181F80C54(v5);
  sub_181F80C54(v8);
  sub_1820D46D8(v6);
  return v10;
}

uint64_t SRVEndpoint.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBAD8[v2]);
    MEMORY[0x1865DB070](qword_182AFBB00[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t SRVEndpoint.common.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SRVEndpoint.common.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t SRVEndpoint.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBAD8[v2]);
    MEMORY[0x1865DB070](qword_182AFBB00[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  return sub_182AD30E8();
}

uint64_t sub_18217EC90()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBAD8[v2]);
    MEMORY[0x1865DB070](qword_182AFBB00[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t _s7Network11SRVEndpointV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v12[2] = *a1;
  v12[3] = v2;
  v12[0] = v5;
  v12[1] = v6;
  v11 = 0;

  v9 = sub_181B0AD48(v12, &v11);

  result = 0;
  if (v9)
  {
    if (v3 == v7 && v4 == v8)
    {
      return 1;
    }

    else
    {

      return sub_182AD4268();
    }
  }

  return result;
}

unint64_t sub_18217EE80(uint64_t a1)
{
  result = sub_18217EEA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18217EEA8()
{
  result = qword_1EA83ADB8;
  if (!qword_1EA83ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADB8);
  }

  return result;
}

unint64_t sub_18217EEFC(uint64_t a1)
{
  result = sub_18217EF24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18217EF24()
{
  result = qword_1EA83ADC0;
  if (!qword_1EA83ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADC0);
  }

  return result;
}

unint64_t sub_18217EF7C()
{
  result = qword_1EA83ADC8;
  if (!qword_1EA83ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADC8);
  }

  return result;
}

uint64_t HostEndpoint.init(name:port:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 34) = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

Swift::Bool __swiftcall HostEndpoint.matchesHostname(_:_:)(Swift::String a1, Swift::UInt16 a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (v6 == countAndFlagsBits && v7 == object)
  {
    return v8 == a2;
  }

  v10 = sub_182AD4268();
  result = 0;
  if (v10)
  {
    return v8 == a2;
  }

  return result;
}

void *sub_18217F04C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = 0;
  v34 = 0xE000000000000000;
  v32 = 0;
  v31 = 0;
  sub_181FAEEC4(a1, &v26);
  v4 = v26;
  if (v26 == 1)
  {
    goto LABEL_19;
  }

  v5 = v27;
  v6 = *a1;
  v7 = *a1 + 32;
  v8 = v7 + *(*a1 + 16);
  v26 = v7;
  v27 = v8;
  v28 = 0;
  v29 = 0;
  v30 = 1;

  sub_1820D562C(&v33, v25);
  Deserializer.uint16(_:)(&v24, &v32 + 2);
  Deserializer.uint16(_:)(&v23, &v32);
  result = Deserializer.uint16(_:)(&v22, &v31);
  v10 = v28;
  if (v30 != 1)
  {
LABEL_10:
    v14 = *(v6 + 16);
    if (v14 < v28)
    {
      __break(1u);
    }

    else if ((v28 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      if (!v28)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    sub_1822D0918(v6, v7, v10, (2 * v14) | 1);
    v15 = v21;

LABEL_13:
    *a1 = v15;

    v16 = v33;
    v17 = v34;
    v18 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v18 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v18 && HIWORD(v32))
    {
      v19 = v31;
      v20 = HIWORD(v32) | (v32 << 16);
      *a2 = v4;
      *(a2 + 8) = v5;
      *(a2 + 16) = v16;
      *(a2 + 24) = v17;
      *(a2 + 36) = v19;
      *(a2 + 32) = v20;
      return result;
    }

    goto LABEL_18;
  }

  if (!v29)
  {
    if (v26)
    {
      v11 = v27 - v26;
    }

    else
    {
      v11 = 0;
    }

    v12 = __OFSUB__(v11, v28);
    v13 = v11 - v28;
    if (v12)
    {
      __break(1u);
    }

    else if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    return result;
  }

LABEL_18:
  sub_182179F68(v4);
LABEL_19:

  *(a2 + 30) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

BOOL sub_18217F21C(uint64_t a1, int *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v16[2] = *v2;
  v16[3] = v9;
  v16[0] = v4;
  v16[1] = v3;
  v15 = v8;

  v13 = sub_181B0AD48(v16, &v15);

  return v13 && (v10 == v5 && v11 == v6 || (sub_182AD4268() & 1) != 0) && v12 == v7;
}

uint64_t HostEndpoint.description.getter()
{
  v5 = *(v0 + 16);

  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v1 = sub_182AD41B8();
  v3 = v2;

  MEMORY[0x1865D9CA0](v1, v3);

  return v5;
}

uint64_t HostEndpoint.common.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t HostEndpoint.common.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t HostEndpoint.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_18217F498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v15[0] = *(a2 + 16);
  v15[1] = v2;
  v16 = 12;
  v13[0] = *(a2 + 32);
  v14 = 1;
  v11[0] = *(a2 + 34);
  v12 = 1;
  v9[0] = *(a2 + 36);
  v10 = 1;
  sub_181F80BF8(v15, &v5);
  sub_181F80BF8(v13, &v6);
  sub_181F80BF8(v11, &v7);
  sub_181F80BF8(v9, &v8);
  v4 = MEMORY[0x1E69E7CC0];

  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  swift_arrayDestroy();
  sub_181F80C54(v9);
  sub_181F80C54(v11);
  sub_181F80C54(v13);
  sub_181F80C54(v15);
  return v4;
}

BOOL static HostEndpoint.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 8);
  v5 = *(a1 + 18);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 8);
  v9 = *(a2 + 18);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v12 = *a2;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v11 = 0;
  return sub_18217F21C(&v12, &v11);
}

uint64_t HostEndpoint.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBC40[v2]);
    MEMORY[0x1865DB070](qword_182AFBC68[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
  return sub_182AD4528();
}

uint64_t sub_18217F718()
{
  v5 = *(v0 + 16);

  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v1 = sub_182AD41B8();
  v3 = v2;

  MEMORY[0x1865D9CA0](v1, v3);

  return v5;
}

uint64_t sub_18217F7CC()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AFBC40[v2]);
    MEMORY[0x1865DB070](qword_182AFBC68[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  sub_182AD30E8();
  sub_182AD4528();
  return sub_182AD4558();
}

unint64_t sub_18217F8C8(uint64_t a1)
{
  result = sub_18217F8F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18217F8F0()
{
  result = qword_1EA83ADD0;
  if (!qword_1EA83ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADD0);
  }

  return result;
}

unint64_t sub_18217F944(uint64_t a1)
{
  result = sub_18217F96C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18217F96C()
{
  result = qword_1EA83ADD8;
  if (!qword_1EA83ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADD8);
  }

  return result;
}

unint64_t sub_18217F9C4()
{
  result = qword_1EA83ADE0;
  if (!qword_1EA83ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ADE0);
  }

  return result;
}

BOOL sub_18217FA18(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 8);
  v5 = *(a1 + 18);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 8);
  v9 = *(a2 + 18);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v12 = *a2;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v11 = 0;
  return sub_18217F21C(&v12, &v11);
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18217FAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t sub_18217FAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ApplicationServiceEndpoint1.alias.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *v2 = v10;
    v6 = v10;
  }

  v6[17] = a1;
  v6[18] = a2;
}

uint64_t ApplicationServiceEndpoint1.advertisedRoute.setter(char *a1)
{
  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    v5 = *(v4 + 112);
    v10[5] = *(v4 + 96);
    v10[6] = v5;
    v10[7] = *(v4 + 128);
    v11 = *(v4 + 144);
    v6 = *(v4 + 48);
    v10[1] = *(v4 + 32);
    v10[2] = v6;
    v7 = *(v4 + 80);
    v10[3] = *(v4 + 64);
    v10[4] = v7;
    v10[0] = *(v4 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v4 + 16), 0x88uLL);
    sub_181E63A90(v10, v9);

    *v1 = v8;
    v4 = v8;
  }

  *(v4 + 132) = v2;
  return result;
}

uint64_t ApplicationServiceEndpoint1.alias.getter()
{
  v1 = *(*v0 + 136);

  return v1;
}

uint64_t ApplicationServiceEndpoint1.applicationService.getter()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t ApplicationServiceEndpoint1.applicationService.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *v2 = v10;
    v6 = v10;
  }

  v6[6] = a1;
  v6[7] = a2;
}

uint64_t ApplicationServiceEndpoint1.contactID.getter()
{
  v1 = *(*v0 + 112);

  return v1;
}

uint64_t ApplicationServiceEndpoint1.contactID.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v6 + 7);
    v13[5] = *(v6 + 6);
    v13[6] = v7;
    v13[7] = *(v6 + 8);
    v14 = v6[18];
    v8 = *(v6 + 3);
    v13[1] = *(v6 + 2);
    v13[2] = v8;
    v9 = *(v6 + 5);
    v13[3] = *(v6 + 4);
    v13[4] = v9;
    v13[0] = *(v6 + 1);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v10 = swift_allocObject();
    memmove((v10 + 16), v6 + 2, 0x88uLL);
    sub_181E63A90(v13, v12);

    *v2 = v10;
    v6 = v10;
  }

  v6[14] = a1;
  v6[15] = a2;
}

uint64_t ApplicationServiceEndpoint1.deviceColor.setter(int a1)
{
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    v5 = *(v4 + 112);
    v10[5] = *(v4 + 96);
    v10[6] = v5;
    v10[7] = *(v4 + 128);
    v11 = *(v4 + 144);
    v6 = *(v4 + 48);
    v10[1] = *(v4 + 32);
    v10[2] = v6;
    v7 = *(v4 + 80);
    v10[3] = *(v4 + 64);
    v10[4] = v7;
    v10[0] = *(v4 + 16);
    type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v4 + 16), 0x88uLL);
    sub_181E63A90(v10, v9);

    *v1 = v8;
    v4 = v8;
  }

  *(v4 + 128) = a1;
  return result;
}