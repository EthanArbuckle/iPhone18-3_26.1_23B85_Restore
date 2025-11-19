uint64_t sub_10BFAC()
{
  v1 = v0[1180];
  v2 = v0[1178];
  v3 = v0[1175];
  v4 = v0[1172];
  v5 = v0[1171];
  v6 = v0[1170];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10C050()
{
  sub_2B54((v0 + 432));
  v1 = v0[1184];
  v2 = v0[1178];
  v3 = v0[1175];
  v4 = v0[1172];
  v5 = v0[1171];
  v6 = v0[1170];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10C0FC()
{
  sub_2B54((v0 + 432));
  v1 = v0[1189];
  v2 = v0[1178];
  v3 = v0[1175];
  v4 = v0[1172];
  v5 = v0[1171];
  v6 = v0[1170];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10C1A8()
{
  v100 = v0;
  v1 = (v0 + 432);
  v2 = v0[1191];
  v3 = v0[1185];
  v4 = v0[1167];
  sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
  sub_11FCC0(v0 + 1153);
  swift_errorRetain();
  v5 = sub_1B4624();
  v6 = sub_1B4D94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[1191];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v99 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[1158];
    v11 = v0[1159];
    v12 = v0[1160];
    v13 = sub_1B5794();
    v15 = v14;

    v16 = sub_60FF4(v13, v15, &v99);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "Error deriving recommendations %s", v8, 0xCu);
    sub_2BF8(v9);

    v1 = (v0 + 432);
  }

  else
  {
    v17 = v0[1191];
  }

  sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
  v0[1192] = v2;
  v18 = v0[1181];
  if (v18)
  {
    if (*(v18 + 16))
    {
      v97 = v0[1188];
      v19 = v0[1185];
      v20 = v0[1175];
      v21 = v0[1174];
      v95 = v1;
      v22 = v0[1173];
      v23 = v0[1167];
      v24 = v0[1161];
      sub_2B0C(&qword_22CD50, &unk_1C9178);
      v25 = swift_allocObject();
      v0[1193] = v25;
      *(v25 + 16) = xmmword_1C00D0;
      *(v25 + 32) = 1;
      *(v25 + 40) = sub_A0D1C(&off_2134A8);
      *(v25 + 48) = 2;
      *(v25 + 56) = sub_A0D1C(&off_2134D0);
      *(v25 + 64) = 4;
      *(v25 + 72) = sub_A0D1C(&off_2134F8);
      *(v25 + 80) = 5;
      *(v25 + 88) = sub_A0D1C(&off_213520);
      sub_404C4(v23 + 264, (v0 + 1148));
      (*(v21 + 16))(v20, v23 + v19, v22);
      v26 = sub_2B0C(&qword_22B498, &qword_1C3A60);
      v27 = sub_2B0C(&qword_22C810, &qword_1C7038);
      v28 = swift_task_alloc();
      v0[1194] = v28;
      v28[2] = v25;
      v28[3] = v18;
      v28[4] = v97;
      v28[5] = v24;
      v28[6] = v0 + 1148;
      v28[7] = v95;
      v28[8] = v20;
      v29 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
      v30 = swift_task_alloc();
      v0[1195] = v30;
      *v30 = v0;
      v30[1] = sub_10B64C;
      v102 = v27;

      return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1164, v26, v27, 0, 0, &unk_1C9190, v28, v26);
    }

    v32 = v0[1188];

    sub_2B54(v1);
    sub_5F428(_swiftEmptyArrayStorage);
  }

  else
  {
    v31 = v0[1188];

    sub_2B54(v1);
  }

  v33 = v0[1163];
  v34 = *(v33 + 16);
  if (!v0[1192])
  {
    if (v34)
    {
      goto LABEL_15;
    }

    v43 = _swiftEmptyArrayStorage;
LABEL_27:
    v61 = v0[1161];

    v62 = v0[1146];
    if (v62)
    {
      v63 = v0[1147];
      v64 = sub_2698(v0 + 1143, v0[1146]);
      v65 = *(v62 - 8);
      v66 = *(v65 + 64) + 15;
      v67 = swift_task_alloc();
      (*(v65 + 16))(v67, v64, v62);
      v98 = (*(v63 + 32))(v62, v63);
      (*(v65 + 8))(v67, v62);

      v68 = v0[1146];
      if (v68)
      {
        v69 = v0[1147];
        v70 = sub_2698(v0 + 1143, v0[1146]);
        v71 = *(v68 - 8);
        v72 = *(v71 + 64) + 15;
        v73 = swift_task_alloc();
        (*(v71 + 16))(v73, v70, v68);
        v62 = (*(v69 + 40))(v68, v69);
        (*(v71 + 8))(v73, v68);

        v74 = v0[1146];
        if (v74)
        {
          v75 = v0[1147];
          v76 = sub_2698(v0 + 1143, v0[1146]);
          v77 = *(v74 - 8);
          v78 = *(v77 + 64) + 15;
          v79 = swift_task_alloc();
          (*(v77 + 16))(v79, v76, v74);
          (*(v75 + 16))(v74, v75);
          (*(v77 + 8))(v79, v74);

LABEL_34:
          v80 = v0[1146];
          v81 = v0[1192];
          if (v80)
          {
            v82 = v0[1147];
            v83 = sub_2698(v0 + 1143, v0[1146]);
            v84 = *(v80 - 8);
            v85 = *(v84 + 64) + 15;
            v86 = swift_task_alloc();
            (*(v84 + 16))(v86, v83, v80);
            (*(v82 + 24))(&v99, v80, v82);

            (*(v84 + 8))(v86, v80);
            v96 = v99;
          }

          else
          {
            v87 = v0[1192];

            v96 = 0u;
          }

          v88 = v0[1178];
          v89 = v0[1175];
          v90 = v0[1172];
          v91 = v0[1171];
          v92 = v0[1170];
          v93 = v0[1166];
          *v93 = v43;
          *(v93 + 8) = v98;
          *(v93 + 16) = v62;
          memcpy((v93 + 24), v0 + 2, 0x4B0uLL);
          *(v93 + 1224) = v96;
          sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

          v41 = v0[1];
          goto LABEL_38;
        }
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v98 = 0;
    }

    sub_11C530(v0 + 2);
    goto LABEL_34;
  }

  if (v34)
  {
LABEL_15:
    v42 = v0[1169];
    *&v99 = _swiftEmptyArrayStorage;
    sub_375B4(0, v34, 0);
    v43 = v99;
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = v33 + v44;
    v46 = *(v42 + 72);
    while (2)
    {
      v47 = v0[1171];
      v48 = v0[1170];
      v49 = v0[1168];
      sub_FF9B8(v45, v47);
      sub_FF9B8(v47, v48);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v50 = v0[1170];
          v59 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v0 + 852, (v50 + *(v59 + 48)), 0x231uLL);
          sub_2601C((v0 + 852));
          v60 = *(v50 + *(v59 + 64));

          goto LABEL_19;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v50 = v0[1170];
LABEL_19:
          v51 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v51 - 8) + 8))(v50, v51);
          goto LABEL_20;
        case 8u:
          v55 = v0[1172];
          v56 = v0[1171];
          v57 = v0[1170];
          v58 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v58 - 8) + 8))(v57, v58);
          sub_10E834(v55);
          sub_5DC0C(v56);
          goto LABEL_21;
        default:
          sub_5DC0C(v0[1170]);
LABEL_20:
          sub_11FE3C(v0[1171], v0[1172], type metadata accessor for CollectionRecommendation);
LABEL_21:
          *&v99 = v43;
          v53 = v43[2];
          v52 = v43[3];
          if (v53 >= v52 >> 1)
          {
            sub_375B4(v52 > 1, v53 + 1, 1);
            v43 = v99;
          }

          v54 = v0[1172];
          v43[2] = v53 + 1;
          sub_11FE3C(v54, v43 + v44 + v53 * v46, type metadata accessor for CollectionRecommendation);
          v45 += v46;
          if (!--v34)
          {
            goto LABEL_27;
          }

          continue;
      }
    }
  }

  v35 = v0[1161];

  swift_willThrow();
  sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);
  v36 = v0[1178];
  v37 = v0[1175];
  v38 = v0[1172];
  v39 = v0[1171];
  v40 = v0[1170];

  v41 = v0[1];
LABEL_38:

  return v41();
}

void sub_10CD10(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = sub_1B48C4();
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2;
  }

  v8 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v9 = v8 | (v7 << 16);
  v10 = sub_1B48B4();
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1B4964();
    v13 = sub_1B4864();
    v15 = v14;

    v16 = sub_1B4624();
    v17 = sub_1B4DB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      v20 = sub_60FF4(v13, v15, &v21);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_0, v16, v17, "CollectionRecommendationRequest=%s", v18, 0xCu);
      sub_2BF8(v19);
    }

    else
    {
    }
  }
}

uint64_t sub_10CEDC(_OWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v90 = *(a2 + 32);
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[6];
  v123 = v2[7];
  *v124 = v5;
  *&v124[16] = v6;
  *&v124[27] = *(v2 + 155);
  v8 = v2[5];
  v120 = v2[4];
  v121 = v8;
  v122 = v7;
  v9 = v2[1];
  v116 = *v2;
  v117 = v9;
  v10 = v2[3];
  v118 = v2[2];
  v119 = v10;
  v115 = _swiftEmptySetSingleton;
  v11 = *v124;
  v12 = *v124 + 64;
  v13 = 1 << *(*v124 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(*v124 + 64);
  v16 = (v13 + 63) >> 6;
  v91 = v4;
  v97 = v4 + 32;
  v89 = v3;
  v94 = v3 + 32;

  v17 = 0;
  v18 = _swiftEmptyDictionarySingleton;
  while (2)
  {
    v93 = v18;
    if (v15)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_6:
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v19 >= v16)
      {

        v68 = v115;
        v103 = v118;
        v104 = v119;
        v98 = *(&v120 + 1);
        v105 = v120;
        v101 = v116;
        v102 = v117;
        v69 = v123;
        *&v100[15] = *&v124[39];
        v99 = *&v124[8];
        *v100 = *&v124[24];
        v70 = v11;
        v71 = *(&v121 + 1);
        v72 = v121;
        v73 = v122;

        sub_101924(&v116, &v106);

        v74 = sub_11F82C(v71, v68);

        swift_bridgeObjectRelease_n();

        v75 = sub_11F82C(v70, v68);

        swift_bridgeObjectRelease_n();
        v108 = v103;
        v109 = v104;
        v106 = v101;
        v107 = v102;
        *(&v114[2] + 7) = *&v100[15];
        *(&v114[1] + 8) = *v100;
        *&v110 = v105;
        *(&v110 + 1) = v98;
        *&v111 = v72;
        *(&v111 + 1) = v74;
        v112 = v73;
        v113 = v69;
        *&v114[0] = v75;
        *(v114 + 8) = v99;
        AuthorRecommendationSource.id.getter(&v106);
        v76 = v114[1];
        a1[8] = v114[0];
        a1[9] = v76;
        *(a1 + 155) = *(&v114[1] + 11);
        v77 = v111;
        a1[4] = v110;
        a1[5] = v77;
        v78 = v113;
        a1[6] = v112;
        a1[7] = v78;
        v79 = v107;
        *a1 = v106;
        a1[1] = v79;
        v80 = v109;
        a1[2] = v108;
        a1[3] = v80;
        return v93;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
    }

    while (!v15);
    v17 = v19;
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = *(*(v11 + 48) + v21);
      v23 = *(v11 + 56) + 24 * v21;
      v24 = v124[42];
      if (v124[42] != 7)
      {
        v25 = *(v23 + 8);
        if (v124[42] != 8)
        {
          v85 = *v23;
          v86 = *(v23 + 8);
          goto LABEL_51;
        }

        if (v22 <= 6)
        {
          if (v22 > 3 && v22 != 5)
          {
            v85 = *v23;
            v86 = *(v23 + 8);
            if (v22 == 4)
            {
              v24 = 1;
            }

            else
            {
              v24 = 2;
            }

            goto LABEL_51;
          }

          goto LABEL_29;
        }

        if ((v22 - 9) >= 4)
        {
          break;
        }
      }

LABEL_29:

LABEL_30:
      sub_112BEC(&v106, v22);

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    if (v22 != 7)
    {
      if ((v90 & 1) == 0)
      {
        v85 = *v23;
        v86 = *(v23 + 8);
        v24 = 5;
LABEL_51:

        goto LABEL_52;
      }

      goto LABEL_29;
    }

    v85 = *v23;
    v86 = *(v23 + 8);
    v26 = *(v91 + 16);
    v87 = *(v23 + 16);

    v27 = sub_1B4CC4();
    v28 = v27;
    v95 = *(v91 + 16);
    if (v95)
    {
      v83 = v11;
      v29 = 0;
      v30 = v27 + 56;
      do
      {
        while (1)
        {
          v31 = *(v97 + 8 * v29++);
          v32 = *(v28 + 40);
          v33 = sub_1B57E4();
          v34 = -1 << *(v28 + 32);
          v35 = v33 & ~v34;
          if ((*(v30 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            break;
          }

LABEL_22:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = v28;
          sub_115EFC(v31, v35, isUniquelyReferenced_nonNull_native);
          v28 = v106;
          if (v29 == v95)
          {
            goto LABEL_34;
          }

          v30 = v106 + 56;
        }

        v36 = ~v34;
        while (*(*(v28 + 48) + 8 * v35) != v31)
        {
          v35 = (v35 + 1) & v36;
          if (((*(v30 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      while (v29 != v95);
LABEL_34:

      v18 = v93;
      v11 = v83;
      v39 = *(v28 + 16);
      if (!v39)
      {
LABEL_37:

        v40 = *(v89 + 16);

        v41 = sub_1B4CC4();
        v28 = v41;
        v96 = *(v89 + 16);
        if (v96)
        {
          v82 = v39;
          v84 = v11;
          v42 = 0;
          v43 = v41 + 56;
          do
          {
            while (1)
            {
              v44 = *(v94 + 8 * v42++);
              v45 = *(v28 + 40);
              v46 = sub_1B57E4();
              v47 = -1 << *(v28 + 32);
              v48 = v46 & ~v47;
              if ((*(v43 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
              {
                break;
              }

LABEL_44:
              v50 = swift_isUniquelyReferenced_nonNull_native();
              *&v106 = v28;
              sub_115EFC(v44, v48, v50);
              v28 = v106;
              if (v42 == v96)
              {
                goto LABEL_46;
              }

              v43 = v106 + 56;
            }

            v49 = ~v47;
            while (*(*(v28 + 48) + 8 * v48) != v44)
            {
              v48 = (v48 + 1) & v49;
              if (((*(v43 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
              {
                goto LABEL_44;
              }
            }
          }

          while (v42 != v96);
LABEL_46:

          v18 = v93;
          v39 = v82;
          v11 = v84;
        }

        else
        {
        }
      }
    }

    else
    {

      v39 = *(v28 + 16);
      if (!v39)
      {
        goto LABEL_37;
      }
    }

    v51 = sub_FFA1C(10016, v28, v39 != 0);

    if (v51)
    {
      goto LABEL_30;
    }

    v24 = 4;
    v52 = v87;
LABEL_52:
    v88 = v52;

    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v106 = v18;
    v54 = sub_3B1C8(v24);
    v56 = v18[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      goto LABEL_68;
    }

    v60 = v55;
    if (v18[3] >= v59)
    {
      if ((v53 & 1) == 0)
      {
        v67 = v54;
        sub_187944();
        v54 = v67;
      }

LABEL_58:
      v18 = v106;
      if (v60)
      {
        v62 = *(v106 + 56) + 24 * v54;
        v63 = *(v62 + 16);
        *v62 = v85;
        *(v62 + 8) = v86;
        *(v62 + 16) = v88;
      }

      else
      {
        *(v106 + 8 * (v54 >> 6) + 64) |= 1 << v54;
        *(v18[6] + v54) = v24;
        v64 = v18[7] + 24 * v54;
        *v64 = v85;
        *(v64 + 8) = v86;
        *(v64 + 16) = v88;
        v65 = v18[2];
        v58 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v58)
        {
          goto LABEL_69;
        }

        v18[2] = v66;
      }

      continue;
    }

    break;
  }

  sub_1825FC(v59, v53);
  v54 = sub_3B1C8(v24);
  if ((v60 & 1) == (v61 & 1))
  {
    goto LABEL_58;
  }

LABEL_70:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_10D63C(uint64_t a1)
{
  v24 = 0x202020200A5BLL;
  v25 = 0xE600000000000000;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_3503C(*(a1 + 16), 0);
    v4 = sub_43128(v22, v3 + 32, v2, a1);

    sub_417B8();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v22[0] = v3;
  sub_A2B24(v22);
  v5 = v22[0];
  v6 = *(v22[0] + 2);
  if (v6)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_3747C(0, v6, 0);
    if (*(a1 + 16))
    {
      v7 = v23;
      v8 = 32;
      while (1)
      {
        v9 = sub_43124(*&v5[v8]);
        if ((v10 & 1) == 0)
        {
          break;
        }

        memcpy(v22, (*(a1 + 56) + 568 * v9), 0x231uLL);
        v11 = sub_14B190();
        v23 = v7;
        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          v16 = v11;
          v17 = v12;
          sub_3747C((v13 > 1), v14 + 1, 1);
          v12 = v17;
          v11 = v16;
          v7 = v23;
        }

        v7[2] = v14 + 1;
        v15 = &v7[2 * v14];
        v15[4] = v11;
        v15[5] = v12;
        if (!--v6)
        {

          goto LABEL_16;
        }

        v8 += 8;
        if (!*(a1 + 16))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
LABEL_16:
    v22[0] = v7;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
    v18 = sub_1B4764();
    v20 = v19;

    v26._countAndFlagsBits = v18;
    v26._object = v20;
    sub_1B48D4(v26);

    v27._countAndFlagsBits = 93;
    v27._object = 0xE100000000000000;
    sub_1B48D4(v27);
    return v24;
  }

  return result;
}

uint64_t sub_10D8D0(uint64_t a1, _OWORD *a2, void *__src, uint64_t a4)
{
  v6 = a2[6];
  *(v5 + 9616) = a2[7];
  v7 = a2[9];
  *(v5 + 9632) = a2[8];
  *(v5 + 9648) = v7;
  v8 = a2[2];
  *(v5 + 9552) = a2[3];
  v9 = a2[5];
  *(v5 + 9568) = a2[4];
  *(v5 + 9584) = v9;
  *(v5 + 9600) = v6;
  v10 = a2[1];
  *(v5 + 9504) = *a2;
  *(v5 + 9520) = v10;
  *(v5 + 9920) = v4;
  *(v5 + 9912) = a4;
  *(v5 + 9904) = __src;
  *(v5 + 9896) = a1;
  *(v5 + 9536) = v8;
  *(v5 + 9659) = *(a2 + 155);
  memcpy((v5 + 2416), __src, 0x460uLL);

  return _swift_task_switch(sub_10D99C, 0, 0);
}

uint64_t sub_10D99C()
{
  v18 = v0;
  memcpy((v0 + 9136), (*(v0 + 9904) + 88), 0x16BuLL);
  if (*(v0 + 9672))
  {
    if (*(*(v0 + 9632) + 16) && (sub_3AA80(2), (v1 & 1) != 0))
    {
      if (*(v0 + 2792) <= *(v0 + 9576))
      {
        v2 = *(v0 + 9576);
      }

      else
      {
        v2 = *(v0 + 2792);
      }
    }

    else
    {
      v2 = *(v0 + 2792);
    }
  }

  else
  {
    v2 = *(v0 + 9664);
  }

  v3 = *(v0 + 9920);
  v4 = *(v0 + 9912);
  v5 = swift_task_alloc();
  v5[2] = v0 + 9504;
  v5[3] = v2;
  v5[4] = v0 + 9136;
  v6 = sub_11AAD0(v4, sub_11FD80, v5);
  *(v0 + 9928) = v6;

  if (*(v0 + 9673) == 2)
  {
    v7 = *(v0 + 2441);
  }

  else
  {
    v7 = *(v0 + 9673);
  }

  v8 = sub_2698((v3 + 184), *(v3 + 208));
  v17[0] = v7 & 1;
  v9 = *v8;
  sub_16C6D8(v17, v0 + 9848);
  v10 = *(v0 + 9872);
  v11 = *(v0 + 9880);
  sub_2698((v0 + 9848), v10);
  memcpy((v0 + 3536), (v0 + 2416), 0x460uLL);
  v12 = *(v11 + 8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 9936) = v14;
  *v14 = v0;
  v14[1] = sub_10DC38;

  return v16(v6, v0 + 3536, v10, v11);
}

uint64_t sub_10DC38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 9936);
  v8 = *v2;
  v3[1243] = a1;
  v3[1244] = v1;

  if (v1)
  {
    v5 = v3[1241];

    v6 = sub_10E740;
  }

  else
  {
    v6 = sub_10DD58;
  }

  return _swift_task_switch(v6, 0, 0);
}

char *sub_10DD58()
{
  v1 = v0[1239];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * v9)));

      result = sub_5EF0C(v11);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v12 = v0[1239];

  v0[1245] = _swiftEmptyArrayStorage;
  v13 = v0[1204];
  v0[1236] = v13;
  v14 = *(v13 + 16);

  v53 = v1 + 64;
  v54 = v1;
  if (!v14)
  {
    goto LABEL_16;
  }

  sub_3AA80(10);
  if (v15)
  {
    v52 = 1;
    goto LABEL_17;
  }

  if (*(v13 + 16))
  {
    sub_3AA80(11);
    v52 = v16;
  }

  else
  {
LABEL_16:
    v52 = 0;
  }

LABEL_17:
  v17 = v0[1243];
  v18 = v0[1240];
  sub_404C4(v18 + 104, (v0 + 2));
  sub_404C4(v18 + 304, (v0 + 7));
  memcpy(v0 + 12, v0 + 302, 0x460uLL);
  v19 = v17 + 64;
  v20 = -1 << *(v17 + 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v17 + 64);
  v55 = v17;
  swift_bridgeObjectRetain_n();
  result = sub_84BC0((v0 + 302), (v0 + 582));
  v23 = 0;
  v24 = (63 - v20) >> 6;
  v25 = _swiftEmptyArrayStorage;
  while (1)
  {
    v0[1246] = v25;
    if (!v22)
    {
      break;
    }

LABEL_27:
    v27 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
    v28 = *(*(v55 + 56) + v27);
    v29 = *(v28 + 16);
    v30 = *(v25 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_55;
    }

    v32 = *(*(v55 + 56) + v27);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v31 > *(v25 + 3) >> 1)
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      result = sub_33358(result, v33, 1, v25);
      v25 = result;
    }

    v22 &= v22 - 1;
    if (*(v28 + 16))
    {
      if ((*(v25 + 3) >> 1) - *(v25 + 2) < v29)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = *(v25 + 2);
        v35 = __OFADD__(v34, v29);
        v36 = v34 + v29;
        if (v35)
        {
          goto LABEL_58;
        }

        *(v25 + 2) = v36;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_56;
      }
    }
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v37 = v25;
      v38 = v0[1243];
      v39 = v0[1239];

      v40 = -1;
      v41 = -1 << *(v54 + 32);
      if (-v41 < 64)
      {
        v40 = ~(-1 << -v41);
      }

      v42 = v40 & *(v54 + 64);
      v43 = (63 - v41) >> 6;

      for (i = 0; v42; result = sub_5EF0C(v48))
      {
        v45 = i;
LABEL_47:
        v46 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v47 = *(*(v54 + 56) + ((v45 << 9) | (8 * v46)));
      }

      while (1)
      {
        v45 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_54;
        }

        if (v45 >= v43)
        {
          v49 = v0[1239];

          v0[1247] = _swiftEmptyArrayStorage;
          v50 = v0[1196];
          v51 = swift_task_alloc();
          v0[1248] = v51;
          *v51 = v0;
          v51[1] = sub_10E1B8;

          return sub_18A3F0(v37, _swiftEmptyArrayStorage, v52 & 1, v50);
        }

        v42 = *(v53 + 8 * v45);
        ++i;
        if (v42)
        {
          i = v45;
          goto LABEL_47;
        }
      }
    }

    v22 = *(v19 + 8 * v26);
    ++v23;
    if (v22)
    {
      v23 = v26;
      goto LABEL_27;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10E1B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 9984);
  v14 = *v2;
  *(*v2 + 9992) = v1;

  v6 = v4[1247];
  if (v1)
  {
    v7 = v4[1246];
    v8 = v4[1245];
    v9 = v4[1243];
    v10 = v4[1241];

    v11 = sub_10E7A8;
  }

  else
  {
    v12 = v4[1246];
    v4[1250] = a1;

    v11 = sub_10E328;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10E328()
{
  v1 = sub_2698((v0[1240] + 144), *(v0[1240] + 168));
  memcpy(v0 + 862, v0 + 302, 0x460uLL);
  v2 = *v1;
  v3 = swift_task_alloc();
  v0[1251] = v3;
  *v3 = v0;
  v3[1] = sub_10E3EC;

  return GenreMetadataServiceDepthMapGenerator.generateGenreDepthMap(configuration:)((v0 + 862));
}

uint64_t sub_10E3EC(uint64_t a1)
{
  v2 = *(*v1 + 10008);
  v4 = *v1;
  *(*v1 + 10016) = a1;

  return _swift_task_switch(sub_10E4EC, 0, 0);
}

uint64_t sub_10E4EC()
{
  v28 = v0;
  v1 = *(v0 + 1199);
  *(v0 + 605) = *(v0 + 1197);
  v2 = v0[1252];
  v3 = v0[1250];
  v4 = v0[1245];
  v18 = v0[1243];
  v16 = v3;
  v17 = v0[1241];
  v5 = v0[1240];
  v6 = v0[1237];
  v0[1216] = v0[1203];
  *(v0 + 606) = v1;
  *(v0 + 607) = *(v0 + 1201);
  memcpy(v0 + 722, v0 + 302, 0x460uLL);
  v7 = *(v0 + 1199);
  *(v0 + 1217) = *(v0 + 1197);
  *(v0 + 1219) = v7;
  *(v0 + 1221) = *(v0 + 1201);
  v0[1223] = v0[1203];
  v8 = v5[10];
  v9 = v5[11];
  sub_2698(v5 + 7, v8);
  v21[0] = v3;
  v21[1] = v4;
  memcpy(v22, v0 + 722, sizeof(v22));
  v10 = *(v0 + 1219);
  v23 = *(v0 + 1217);
  v24 = v10;
  v25 = *(v0 + 1221);
  v26 = v0[1223];
  v27 = v2;
  v11 = v2;
  v12 = *(v9 + 8);
  sub_84BC0((v0 + 302), (v0 + 1002));
  sub_11FDE0((v0 + 1210), (v0 + 1224));
  v12(&v20, v21, v8, v9);
  sub_42F48((v0 + 1236), &qword_22C580, &qword_1C6F00);
  sub_11FD8C((v0 + 2));
  v19 = v20;
  v0[152] = v16;
  v0[153] = v4;
  memcpy(v0 + 154, v0 + 722, 0x460uLL);
  v13 = *(v0 + 1219);
  *(v0 + 147) = *(v0 + 1217);
  *(v0 + 148) = v13;
  *(v0 + 149) = *(v0 + 1221);
  v0[300] = v0[1223];
  v0[301] = v11;
  AuthorRecommendationSource.id.getter(v0 + 152);
  *v6 = v19;
  *(v6 + 8) = v17;
  *(v6 + 16) = v18;
  memcpy((v6 + 24), v0 + 152, 0x4B0uLL);
  *(v6 + 1224) = v19;

  sub_2BF8(v0 + 1231);
  v14 = v0[1];

  return v14();
}

uint64_t sub_10E740()
{
  sub_2BF8(v0 + 1231);
  v1 = v0[1244];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10E7A8()
{
  sub_42F48((v0 + 1236), &qword_22C580, &qword_1C6F00);
  sub_11FD8C((v0 + 2));
  sub_2BF8(v0 + 1231);
  v1 = v0[1249];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10E834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = type metadata accessor for CollectionRecommendation(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_FF9B8(v2, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xCu:
      (*(v5 + 32))(v8, v12, v4);
      sub_1B4364();
      (*(v5 + 8))(v8, v4);
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v22 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v35, v12 + *(v22 + 48), 0x231uLL);
      v23 = *(v12 + *(v22 + 64));
      (*(v5 + 32))(v8, v12, v4);
      v24 = *(v22 + 48);
      v25 = *(v22 + 64);
      sub_1B4364();
      (*(v5 + 8))(v8, v4);
      memcpy((a1 + v24), v35, 0x231uLL);
      *(a1 + v25) = v23;
      return swift_storeEnumTagMultiPayload();
    case 3u:
    case 5u:
      v26 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v34 = *(v12 + *(v26 + 48));
      v27 = *(v12 + *(v26 + 64));
      (*(v5 + 32))(v8, v12, v4);
      v28 = *(v26 + 48);
      v29 = *(v26 + 64);
      sub_1B4364();
      (*(v5 + 8))(v8, v4);
      *(a1 + v28) = v34;
      *(a1 + v29) = v27;
      return swift_storeEnumTagMultiPayload();
    case 4u:
    case 6u:
    case 7u:
    case 8u:
      v30 = sub_2B0C(&qword_229770, &qword_1C6F30);
      v31 = *(v12 + *(v30 + 48));
      (*(v5 + 32))(v8, v12, v4);
      v32 = *(v30 + 48);
      sub_1B4364();
      (*(v5 + 8))(v8, v4);
      *(a1 + v32) = v31;
      return swift_storeEnumTagMultiPayload();
    case 9u:
      sub_5DC0C(v12);
      return sub_FF9B8(v2, a1);
    default:
      v13 = v12[1];
      v35[0] = *v12;
      v35[1] = v13;
      v14 = v12[3];
      v35[2] = v12[2];
      v35[3] = v14;
      v15 = *&v35[0];
      v16 = BYTE8(v35[0]);
      v17 = *&v35[1];
      v18 = *&v35[2];
      v19 = BYTE8(v35[1]);
      sub_43688(*&v35[1], SBYTE8(v35[1]));

      sub_43FF4(v35);
      v20 = *(&v35[3] + 1);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      *(a1 + 24) = v19;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = v18;
      *(a1 + 56) = v20;
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_10EFF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v11 = sub_1B40F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1B40E4();
  v17 = (a3 + 9);
  if (*(a3 + 152))
  {
    v17 = (a5 + 296);
  }

  v18 = *v17;
  v19 = *a3;
  v29 = a3[1];
  v30 = v19;
  v20 = *(a3 + 32);
  v21 = *(a3 + 5);
  v22 = *(a3 + 48);
  (*(v12 + 32))(a6, v15, v11);
  v23 = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(a6 + v23[5]) = a2;
  v24 = v29;
  *(a6 + v23[6]) = v30;
  *(a6 + v23[7]) = v24;
  *(a6 + v23[8]) = v16;
  *(a6 + v23[9]) = v20;
  *(a6 + v23[10]) = v21;
  *(a6 + v23[11]) = v22;
  *(a6 + v23[12]) = _swiftEmptySetSingleton;
  *(a6 + v23[13]) = v27;
  *(a6 + v23[14]) = v18;
  sub_11FEA4(&v30, v28);
  sub_11FF00(&v29, v28);
}

unint64_t sub_10F1A0(char *a1, uint64_t a2)
{
  v3 = sub_9EABC(off_21D728[*a1]);
  v4 = v3;
  v5 = v3 + 56;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v8)
  {
    v13 = v8;
LABEL_10:
    v8 = (v13 - 1) & v13;
    if (*(a2 + 16))
    {
      result = sub_3A9D8(*(*(v4 + 48) + (__clz(__rbit64(v13)) | (v11 << 6))));
      if (v15)
      {
        v16 = *(*(a2 + 56) + 8 * result);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_34958(0, v12[2] + 1, 1, v12);
          v12 = result;
        }

        v17 = v12[2];
        v18 = v12[3];
        v19 = v17 + 1;
        if (v17 >= v18 >> 1)
        {
          v27 = v17 + 1;
          v20 = v12;
          v21 = v12[2];
          result = sub_34958((v18 > 1), v17 + 1, 1, v20);
          v17 = v21;
          v19 = v27;
          v12 = result;
        }

        v12[2] = v19;
        v12[v17 + 4] = v16;
      }
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v9)
    {
      break;
    }

    v13 = *(v5 + 8 * v14);
    ++v11;
    if (v13)
    {
      v11 = v14;
      goto LABEL_10;
    }
  }

  v22 = v12[2];
  if (!v22)
  {
LABEL_21:

    return _swiftEmptySetSingleton;
  }

  v23 = 0;
  while (v23 < v12[2])
  {
    v24 = v23 + 1;
    v25 = v12[v23 + 4];

    result = sub_494D8(v26);
    v23 = v24;
    if (v22 == v24)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10F38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[155] = v24;
  v8[154] = a8;
  v8[153] = a7;
  v8[152] = a6;
  v8[151] = a5;
  v8[150] = a4;
  v8[149] = a3;
  v8[148] = a2;
  v8[147] = a1;
  v9 = sub_2B0C(&qword_22B498, &qword_1C3A60);
  v8[156] = v9;
  v10 = *(v9 - 8);
  v8[157] = v10;
  v11 = *(v10 + 64) + 15;
  v8[158] = swift_task_alloc();
  v12 = type metadata accessor for CollectionRecommendation(0);
  v8[159] = v12;
  v13 = *(v12 - 8);
  v8[160] = v13;
  v14 = *(v13 + 64) + 15;
  v8[161] = swift_task_alloc();
  v8[162] = swift_task_alloc();
  v15 = sub_1B4644();
  v8[163] = v15;
  v16 = *(v15 - 8);
  v8[164] = v16;
  v8[165] = *(v16 + 64);
  v8[166] = swift_task_alloc();
  v17 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  v8[167] = swift_task_alloc();
  v18 = *(*(sub_2B0C(&qword_22CD70, &qword_1C91B8) - 8) + 64) + 15;
  v8[168] = swift_task_alloc();
  v19 = sub_2B0C(&qword_22CD78, &qword_1C91C0);
  v8[169] = v19;
  v20 = *(v19 - 8);
  v8[170] = v20;
  v21 = *(v20 + 64) + 15;
  v8[171] = swift_task_alloc();

  return _swift_task_switch(sub_10F624, 0, 0);
}

uint64_t sub_10F624()
{
  v88 = v0;
  v1 = *(v0 + 1192);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_59:
    v49 = *(v83 + 1368);
    v50 = *(v83 + 1248);
    v51 = **(v83 + 1184);
    sub_1B4C04();
    *(v83 + 1376) = _swiftEmptyArrayStorage;
    v52 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v53 = swift_task_alloc();
    *(v83 + 1384) = v53;
    *v53 = v83;
    v53[1] = sub_10FD88;
    v54 = *(v83 + 1368);
    v21 = *(v83 + 1352);
    v18 = *(v83 + 1344);
    v19 = 0;
    v20 = 0;

    return TaskGroup.Iterator.next(isolation:)(v18, v19, v20, v21);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = *(v83 + 1200);
  v75 = *(v83 + 1312);
  v74 = *(v83 + 1216);
  v77 = v1 + 32;
  v78 = *(v1 + 16);
  v76 = v5;
  while (1)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_4;
    }

    v6 = (v4 + 16 * v3);
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v83 + 1200);

    v10 = sub_3B1C8(v7);
    if (v11)
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v3 == v2)
    {
      goto LABEL_59;
    }
  }

  v79 = v7;
  v80 = v3;
  v12 = *(*(v5 + 56) + 24 * v10 + 16);
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (63 - v14) >> 6;
  v86 = v12 + 56;

  v22 = 0;
  v85 = v8;
LABEL_11:
  if (v16)
  {
    v23 = v16;
    goto LABEL_17;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v17)
    {

      v4 = v77;
      v2 = v78;
      v3 = v80;
      v5 = v76;
      goto LABEL_3;
    }

    v23 = *(v13 + 8 * v24);
    ++v22;
    if (v23)
    {
      v22 = v24;
LABEL_17:
      v16 = (v23 - 1) & v23;
      if (!*(v12 + 16))
      {
        goto LABEL_11;
      }

      v25 = *(*(v8 + 48) + (__clz(__rbit64(v23)) | (v22 << 6)));
      v26 = v25;
      v27 = *(v12 + 40);
      sub_1B57F4();

      sub_1B4884();

      v28 = sub_1B5844();
      v29 = -1 << *(v12 + 32);
      v30 = v28 & ~v29;
      if (((*(v86 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {

        v8 = v85;
        goto LABEL_11;
      }

      v81 = v25;
      v84 = v16;
      v31 = ~v29;
      while (2)
      {
        if (*(*(v12 + 48) + v30))
        {
          if (*(*(v12 + 48) + v30) == 1)
          {
            v32 = 0x6F6F626F69647561;
            v33 = 0xE90000000000006BLL;
            if (!v26)
            {
LABEL_34:
              v35 = 0xE500000000000000;
              if (v32 == 0x6B6F6F6265)
              {
LABEL_35:
                if (v33 == v35)
                {

LABEL_42:

                  v16 = v84;
                  v8 = v85;
                  v37 = v81;
                  if (v26)
                  {
                    if (v26 == 1)
                    {
                      v37 = 1;
                      goto LABEL_45;
                    }

                    goto LABEL_11;
                  }

LABEL_45:
                  v38 = *(v83 + 1208);
                  v87[0] = v26;
                  v39 = sub_10F1A0(v87, v38);
                  if (v79 <= 2)
                  {
                    if (v79)
                    {
                      v82 = v37;

                      if (v79 == 1)
                      {
                        v40 = v62 & 0x101;
                        v60 = v60 & 1 | 0x2000000000000000;
                        v72 = v60;
                        v73 = v74;
                        v66 = 5;
                        v62 &= 0x101u;
                      }

                      else
                      {
                        v40 = v65 & 0x101;
                        v63 = v63 & 1 | 0x4000000000000000;
                        v72 = v63;
                        v73 = v74;
                        v65 &= 0x101u;
                        v66 = 5;
                      }

                      goto LABEL_57;
                    }
                  }

                  else if (v79 <= 5)
                  {
                    if (v79 == 3)
                    {
                      v82 = v37;

                      v40 = v59 & 0x101;
                      v56 = v56 & 1 | 0x6000000000000000;
                      v72 = v56;
                      v73 = v74;
                      v66 = 5;
                      v59 &= 0x101u;
                    }

                    else if (v79 == 4)
                    {

                      v40 = v64 & 0x101;
                      v72 = v58 & 1 | 0x8000000000000000;
                      v58 &= 1u;
                      v82 = v74;
                      v73 = 5;
                      v64 &= 0x101u;
                    }

                    else
                    {
                      v82 = v37;
                      v40 = v61 & 0x101;
                      v72 = v57 & 1 | 0xA000000000000000;
                      v73 = v39;
                      v57 &= 1u;
                      v66 = v74;
                      v61 &= 0x101u;
                    }

LABEL_57:
                    v71 = v40;
                    v41 = *(v83 + 1336);
                    v42 = *(v83 + 1328);
                    v67 = *(v83 + 1320);
                    v43 = *(v83 + 1304);
                    v44 = *(v83 + 1240);
                    __src = *(v83 + 1232);
                    v45 = *(v83 + 1224);
                    v69 = *(v83 + 1216);
                    v70 = *(v83 + 1184);
                    v46 = sub_1B4C54();
                    (*(*(v46 - 8) + 56))(v41, 1, 1, v46);
                    sub_404C4(v45, v83 + 1136);
                    (*(v75 + 16))(v42, v44, v43);
                    v47 = (*(v75 + 80) + 1273) & ~*(v75 + 80);
                    v48 = swift_allocObject();
                    *(v48 + 16) = 0;
                    *(v48 + 24) = 0;
                    sub_264B8((v83 + 1136), v48 + 32);
                    *(v48 + 72) = v82;
                    *(v48 + 80) = v73;
                    *(v48 + 88) = v66;
                    *(v48 + 96) = 5;
                    *(v48 + 104) = v71;
                    *(v48 + 120) = v72;
                    memcpy((v48 + 144), __src, 0x460uLL);
                    *(v48 + 1264) = v69;
                    *(v48 + 1272) = v79;
                    (*(v75 + 32))(v48 + v47, v42, v43);
                    swift_bridgeObjectRetain_n();
                    sub_84BC0(__src, v83 + 16);
                    sub_FF550(v41, &unk_1C91D0, v48);
                    v18 = sub_42F48(v41, &qword_2296C0, &qword_1C3800);
                    goto LABEL_39;
                  }

                  goto LABEL_11;
                }
              }

LABEL_36:
              v36 = sub_1B5604();

              if (v36)
              {
                goto LABEL_42;
              }

              v30 = (v30 + 1) & v31;
              if (((*(v86 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
              {

LABEL_39:
                v16 = v84;
                v8 = v85;
                goto LABEL_11;
              }

              continue;
            }
          }

          else
          {
            v33 = 0xE500000000000000;
            v32 = 0x646578696DLL;
            if (!v26)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
          v33 = 0xE500000000000000;
          v32 = 0x6B6F6F6265;
          if (!v26)
          {
            goto LABEL_34;
          }
        }

        break;
      }

      if (v26 == 1)
      {
        v34 = 0x6F6F626F69647561;
      }

      else
      {
        v34 = 0x646578696DLL;
      }

      if (v26 == 1)
      {
        v35 = 0xE90000000000006BLL;
      }

      else
      {
        v35 = 0xE500000000000000;
      }

      if (v32 == v34)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v18, v19, v20, v21);
}

uint64_t sub_10FD88()
{
  v1 = *(*v0 + 1384);
  v3 = *v0;

  return _swift_task_switch(sub_10FE84, 0, 0);
}

uint64_t sub_10FE84()
{
  v1 = v0[168];
  if ((*(v0[157] + 48))(v1, 1, v0[156]) == 1)
  {
    v2 = v0[172];
    v3 = v0[167];
    v4 = v0[166];
    v5 = v0[162];
    v6 = v0[161];
    v7 = v0[158];
    v8 = v0[147];
    (*(v0[170] + 8))(v0[171], v0[169]);
    *v8 = v2;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[160];
    v12 = v0[159];
    v13 = v0[158];
    sub_11FF5C(v1, v13);
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      sub_42F48(v0[158], &qword_22B498, &qword_1C3A60);
    }

    else
    {
      v14 = v0[172];
      v15 = v0[162];
      v16 = v0[161];
      sub_11FE3C(v0[158], v15, type metadata accessor for CollectionRecommendation);
      sub_FF9B8(v15, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v0[172];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_33474(0, v18[2] + 1, 1, v0[172]);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_33474(v19 > 1, v20 + 1, 1, v18);
      }

      v21 = v0[161];
      v22 = v0[160];
      sub_5DC0C(v0[162]);
      v18[2] = v20 + 1;
      sub_11FE3C(v21, v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20, type metadata accessor for CollectionRecommendation);
      v0[172] = v18;
    }

    v23 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v24 = swift_task_alloc();
    v0[173] = v24;
    *v24 = v0;
    v24[1] = sub_10FD88;
    v25 = v0[171];
    v26 = v0[169];
    v27 = v0[168];

    return TaskGroup.Iterator.next(isolation:)(v27, 0, 0, v26);
  }
}

uint64_t sub_11016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 1416) = v16;
  *(v8 + 1522) = a8;
  *(v8 + 1408) = a7;
  *(v8 + 1400) = a6;
  *(v8 + 1392) = a5;
  *(v8 + 1384) = a4;
  *(v8 + 1376) = a1;
  v9 = *(*(sub_2B0C(&qword_22B498, &qword_1C3A60) - 8) + 64) + 15;
  *(v8 + 1424) = swift_task_alloc();
  v10 = *(*(sub_2B0C(&qword_2296F0, &unk_1C3A10) - 8) + 64) + 15;
  *(v8 + 1432) = swift_task_alloc();
  v11 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  *(v8 + 1440) = v11;
  v12 = *(v11 - 8);
  *(v8 + 1448) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 1456) = swift_task_alloc();

  return _swift_task_switch(sub_1102C8, 0, 0);
}

uint64_t sub_1102C8()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = type metadata accessor for CollectionRecommendation(0);
  *(v0 + 1464) = v5;
  v6 = *(v5 - 8);
  *(v0 + 1472) = v6;
  v7 = *(v6 + 56);
  *(v0 + 1480) = v7;
  *(v0 + 1488) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v4, 1, 1, v5);
  v8 = sub_2698(v3, v3[3]);
  *(v0 + 1136) = *v2;
  v10 = *(v2 + 32);
  v9 = *(v2 + 48);
  v11 = *(v2 + 64);
  *(v0 + 1152) = *(v2 + 16);
  *(v0 + 1200) = v11;
  *(v0 + 1184) = v9;
  *(v0 + 1168) = v10;
  memcpy((v0 + 16), v1, 0x460uLL);
  *(v0 + 1521) = 5;
  v12 = *v8;
  v13 = swift_task_alloc();
  *(v0 + 1496) = v13;
  *v13 = v0;
  v13[1] = sub_110438;

  return sub_15F0F0(v0 + 1520, (v0 + 1136), v0 + 16, (v0 + 1521));
}

uint64_t sub_110438(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1496);
  v7 = *v2;
  *(v3 + 1504) = a1;
  *(v3 + 1512) = v1;

  if (v1)
  {
    v5 = sub_110938;
  }

  else
  {
    v5 = sub_110550;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_110550()
{
  v46 = v0;
  v1 = *(v0 + 1504);
  v43 = *(v0 + 1520);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 1208);
    v5 = *(v0 + 1408);
    v6 = v5 + 56;
    while (v3 < *(v1 + 16))
    {
      v7 = (v1 + 32 + (v3 << 6));
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v4[2] = v7[2];
      v4[3] = v10;
      *v4 = v8;
      v4[1] = v9;
      ++v3;
      if (*(v5 + 16) && (v11 = *v4, v12 = *(v5 + 40), v13 = sub_1B57E4(), v14 = -1 << *(v5 + 32), v15 = v13 & ~v14, ((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
      {
        v16 = ~v14;
        while (*(*(v5 + 48) + 8 * v15) != v11)
        {
          v15 = (v15 + 1) & v16;
          if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        if (v3 == v2)
        {
          goto LABEL_15;
        }
      }

      else
      {
LABEL_10:
        sub_42BA4(v4, v0 + 1272);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_375F8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_375F8((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[8 * v18];
        v20 = *v4;
        v21 = v4[1];
        v22 = v4[3];
        v19[4] = v4[2];
        v19[5] = v22;
        v19[2] = v20;
        v19[3] = v21;
        v0 = v44;
        if (v3 == v2)
        {
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v23 = *(v0 + 1504);

    if (_swiftEmptyArrayStorage[2])
    {
      v24 = *(v0 + 1448);
      v25 = *(v0 + 1440);
      v26 = *(v0 + 1432);
      *(v0 + 1368) = _swiftEmptyArrayStorage;
      sub_2B0C(&qword_229500, &unk_1BC580);
      sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
      sub_1B43C4();
      if ((*(v24 + 48))(v26, 1, v25) == 1)
      {
        sub_42F48(*(v0 + 1432), &qword_2296F0, &unk_1C3A10);
      }

      else
      {
        v27 = *(v0 + 1472);
        v28 = *(v0 + 1464);
        v29 = *(v0 + 1456);
        v30 = *(v0 + 1448);
        v31 = *(v0 + 1440);
        v32 = *(v0 + 1424);
        v33 = *(v0 + 1522);
        (*(v30 + 32))(v29, *(v0 + 1432), v31);
        v45 = v43;
        sub_10232C(v29, &v45, v32);
        (*(v30 + 8))(v29, v31);
        if ((*(v27 + 48))(v32, 1, v28) == 1)
        {
          sub_42F48(*(v0 + 1424), &qword_22B498, &qword_1C3A60);
        }

        else
        {
          v34 = *(v0 + 1488);
          v35 = *(v0 + 1480);
          v36 = *(v0 + 1464);
          v37 = *(v0 + 1424);
          v38 = *(v0 + 1376);
          sub_42F48(v38, &qword_22B498, &qword_1C3A60);
          sub_11FE3C(v37, v38, type metadata accessor for CollectionRecommendation);
          v35(v38, 0, 1, v36);
        }
      }
    }

    else
    {
    }

    v39 = *(v0 + 1456);
    v40 = *(v0 + 1432);
    v41 = *(v0 + 1424);

    v42 = *(v0 + 8);

    v42();
  }
}

uint64_t sub_110938()
{
  v21 = v0;
  v1 = v0[189];
  v2 = v0[177];
  swift_errorRetain();
  v3 = sub_1B4624();
  v4 = sub_1B4D94();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[189];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = v0[167];
    v9 = v0[168];
    v10 = v0[169];
    v11 = sub_1B5794();
    v13 = sub_60FF4(v11, v12, &v20);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Error fetching legacy MAPI collection: %s", v6, 0xCu);
    sub_2BF8(v7);
  }

  else
  {
    v14 = v0[189];
  }

  v15 = v0[182];
  v16 = v0[179];
  v17 = v0[178];

  v18 = v0[1];

  return v18();
}

uint64_t *sub_110ADC()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  v1 = v0[12];

  sub_2BF8(v0 + 13);
  sub_2BF8(v0 + 18);
  sub_2BF8(v0 + 23);
  sub_2BF8(v0 + 28);
  sub_2BF8(v0 + 33);
  sub_2BF8(v0 + 38);
  v2 = OBJC_IVAR____TtC20BooksPersonalization39InternalCollectionRecommendationService_logger;
  v3 = sub_1B4644();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_110B84()
{
  sub_110ADC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_110BDC(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226C;

  return sub_108DD4(a1, a2);
}

uint64_t sub_110C88(uint64_t a1, _OWORD *a2)
{
  *(v3 + 1432) = a1;
  v4 = *v2;
  v5 = a2[9];
  *(v3 + 1384) = a2[8];
  *(v3 + 1400) = v5;
  *(v3 + 1411) = *(a2 + 155);
  v6 = a2[5];
  *(v3 + 1320) = a2[4];
  *(v3 + 1336) = v6;
  v7 = a2[7];
  *(v3 + 1352) = a2[6];
  *(v3 + 1368) = v7;
  v8 = a2[1];
  *(v3 + 1256) = *a2;
  *(v3 + 1272) = v8;
  v9 = a2[3];
  *(v3 + 1288) = a2[2];
  *(v3 + 1304) = v9;
  v10 = swift_task_alloc();
  *(v3 + 1440) = v10;
  *v10 = v3;
  v10[1] = sub_110D5C;

  return sub_108DD4(v3 + 16, (v3 + 1256));
}

uint64_t sub_110D5C()
{
  v2 = *(*v1 + 1440);
  v5 = *v1;
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v3 = sub_110F0C;
  }

  else
  {
    v3 = sub_110E70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_110E70()
{
  v1 = v0[179];
  v1[3] = &type metadata for InternalCollectionRecommendationResponse;
  v1[4] = sub_11CAD4();
  v2 = swift_allocObject();
  *v1 = v2;
  memcpy((v2 + 16), v0 + 2, 0x4D8uLL);
  v3 = v0[1];

  return v3();
}

uint64_t sub_110F24()
{
  if (*v0)
  {
    result = 0x6F6C61646E617473;
  }

  else
  {
    result = 0x64657669726564;
  }

  *v0;
  return result;
}

uint64_t sub_110F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657669726564 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6C61646E617473 && a2 == 0xEA0000000000656ELL)
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

uint64_t sub_111048(uint64_t a1)
{
  v2 = sub_11C7DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_111084(uint64_t a1)
{
  v2 = sub_11C7DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1110C0(uint64_t a1)
{
  v2 = sub_11C8D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1110FC(uint64_t a1)
{
  v2 = sub_11C8D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_111138(uint64_t a1)
{
  v2 = sub_11C830();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_111174(uint64_t a1)
{
  v2 = sub_11C830();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationSource.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C8E8, &qword_1C7068);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v22 = &v20 - v5;
  v6 = sub_2B0C(&qword_22C8F0, &qword_1C7070);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_2B0C(&qword_22C8F8, &qword_1C7078);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  sub_2698(a1, a1[3]);
  sub_11C7DC();
  sub_1B5884();
  if (v15 == 7)
  {
    v25 = 0;
    sub_11C8D8();
    sub_1B5454();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v27 = 1;
    sub_11C830();
    v18 = v22;
    sub_1B5454();
    v26 = v15;
    sub_11C884();
    v19 = v24;
    sub_1B5544();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t CollectionRecommendationSource.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_2B0C(&qword_22C920, &qword_1C7080);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_2B0C(&qword_22C928, &qword_1C7088);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_2B0C(&qword_22C930, &qword_1C7090);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v42 = a1;
  sub_2698(a1, v17);
  sub_11C7DC();
  v19 = v41;
  sub_1B5864();
  if (!v19)
  {
    v41 = v13;
    v21 = v39;
    v20 = v40;
    v22 = sub_1B5444();
    v23 = (2 * *(v22 + 16)) | 1;
    v43 = v22;
    v44 = v22 + 32;
    v45 = 0;
    v46 = v23;
    v24 = sub_A1170();
    if (v24 == 2 || v45 != v46 >> 1)
    {
      v28 = sub_1B5114();
      swift_allocError();
      v30 = v29;
      v31 = *(sub_2B0C(&qword_22ADB8, &qword_1C2520) + 48);
      *v30 = &type metadata for CollectionRecommendationSource;
      sub_1B5314();
      sub_1B50E4();
      (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
      swift_willThrow();
      (*(v41 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        v47 = 1;
        sub_11C830();
        v25 = v16;
        v26 = v7;
        sub_1B5304();
        v27 = v41;
        sub_11C92C();
        v34 = v26;
        v35 = v37;
        sub_1B5404();
        (*(v38 + 8))(v34, v35);
        (*(v27 + 8))(v25, v12);
        swift_unknownObjectRelease();
        v36 = v47;
      }

      else
      {
        v47 = 0;
        sub_11C8D8();
        sub_1B5304();
        v33 = v41;
        (*(v21 + 8))(v11, v8);
        (*(v33 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v36 = 7;
      }

      *v20 = v36;
    }
  }

  return sub_2BF8(v42);
}

uint64_t sub_1119D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v6 = *(a1 + 24);
  *(a2 + 24) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = v4;
  *(a2 + 56) = v5;
  sub_43688(v3, v6);
}

uint64_t sub_111A38(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B57F4();
  sub_1B4884();
  v9 = sub_1B5844();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B5604() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_115C0C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_111BC0(_BYTE *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_1B57F4();
  sub_1B5804(a2);
  v11 = sub_1B5844();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_115D8C(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_111CE0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1B57E4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_115EFC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_111DC0(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, 0x231uLL);
  v6 = *v3;
  v7 = *(*v3 + 40);
  memcpy(v23, a2, 0x231uLL);
  sub_1B57F4();
  SeedBook.hash(into:)(v21);
  v8 = sub_1B5844();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      v13 = 568 * v10;
      memcpy(v21, (v12 + 568 * v10), 0x231uLL);
      memcpy(__src, (v12 + 568 * v10), 0x231uLL);
      sub_4299C(v21, v19);
      LOBYTE(v12) = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(__src, __dst);
      memcpy(v23, __src, 0x231uLL);
      sub_2601C(v23);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    memcpy(v19, __dst, 0x231uLL);
    sub_2601C(v19);
    v17 = *(v6 + 48);
    memcpy(__src, (v17 + v13), 0x231uLL);
    memcpy(a1, (v17 + v13), 0x231uLL);
    sub_4299C(__src, &v18);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    memcpy(v23, __dst, 0x231uLL);
    __src[0] = *v3;
    sub_4299C(v23, v21);
    sub_11601C(v23, v10, isUniquelyReferenced_nonNull_native);
    *v3 = __src[0];
    memcpy(a1, __dst, 0x231uLL);
    return 1;
  }
}

uint64_t sub_111FB0(_BYTE *a1, char a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B57F4();
  v20 = a2;
  if (a2)
  {
    v6 = 0x6F6F626F69647561;
  }

  else
  {
    v6 = 0x6B6F6F6265;
  }

  if (a2)
  {
    v7 = 0xE90000000000006BLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  sub_1B4884();

  v8 = sub_1B5844();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v4 + 48) + v10) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v13 = *(*(v4 + 48) + v10) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v12 == v6 && v13 == v7)
      {
        break;
      }

      v15 = sub_1B5604();

      if (v15)
      {
        goto LABEL_23;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v18 = *(*(v4 + 48) + v10);
  }

  else
  {
LABEL_21:
    v16 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v18 = v20 & 1;
    sub_116200(v20 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_112174(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B57F4();
  sub_1B4884();
  v9 = sub_1B5844();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B5604() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_116424(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1122FC(_BYTE *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *(*v4 + 40);
  sub_1B57F4();
  v22 = a2;
  if (a2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x6168637275706F63;
  }

  if (a2)
  {
    v9 = 0x80000000001D49B0;
  }

  else
  {
    v9 = 0xEA00000000006573;
  }

  sub_1B4884();

  v10 = sub_1B5844();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v6 + 48) + v12) ? 0xD000000000000011 : 0x6168637275706F63;
      v15 = *(*(v6 + 48) + v12) ? 0x80000000001D49B0 : 0xEA00000000006573;
      if (v14 == v8 && v15 == v9)
      {
        break;
      }

      v17 = sub_1B5604();

      if (v17)
      {
        goto LABEL_23;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v20 = *(*(v6 + 48) + v12);
  }

  else
  {
LABEL_21:
    v18 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;
    v20 = v22 & 1;
    sub_1165A4(v22 & 1, v12, isUniquelyReferenced_nonNull_native, a3, a4);
    *v25 = v27;
    result = 1;
  }

  *a1 = v20;
  return result;
}

uint64_t sub_1124D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4414();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey);
  v36 = a2;
  v13 = sub_1B4744();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_11C13C(&qword_22CD90, &type metadata accessor for FeatureKey);
      v23 = sub_1B4784();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1167D8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1127B0(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, sizeof(__dst));
  v6 = *v3;
  v7 = *(*v3 + 40);
  memcpy(v23, a2, 0x231uLL);
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v21);
  v8 = sub_1B5844();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      v13 = 568 * v10;
      memcpy(v21, (v12 + 568 * v10), 0x231uLL);
      memcpy(__src, (v12 + 568 * v10), 0x231uLL);
      sub_5EE34(v21, v19);
      LOBYTE(v12) = _s20BooksPersonalization17ScorableAttributeO2eeoiySbAC_ACtFZ_0(__src);
      memcpy(v23, __src, 0x231uLL);
      sub_5EE90(v23);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    memcpy(v19, __dst, 0x231uLL);
    sub_5EE90(v19);
    v17 = *(v6 + 48);
    memcpy(__src, (v17 + v13), 0x231uLL);
    memcpy(a1, (v17 + v13), 0x231uLL);
    sub_5EE34(__src, &v18);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    memcpy(v23, __dst, 0x231uLL);
    __src[0] = *v3;
    sub_5EE34(v23, v21);
    sub_116C50(v23, v10, isUniquelyReferenced_nonNull_native);
    *v3 = __src[0];
    memcpy(a1, __dst, 0x231uLL);
    return 1;
  }
}

uint64_t sub_1129A0(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B57F4();
  v20 = v2;
  v21 = a1;
  sub_1B4884();

  v7 = sub_1B5844();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_21:
    v17 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_116E34(a2, v9, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
    goto LABEL_24;
  }

  v10 = ~v8;
  while (!*(*(v5 + 48) + v9))
  {
    v12 = 0xE500000000000000;
    v11 = 0x6B6F6F6265;
    v13 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v13 == 1)
    {
      v14 = 0x6F6F626F69647561;
    }

    else
    {
      v14 = 0x646578696DLL;
    }

    if (v13 == 1)
    {
      v15 = 0xE90000000000006BLL;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    if (v11 == v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = sub_1B5604();

    if (v16)
    {
      goto LABEL_23;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v9) == 1)
  {
    v11 = 0x6F6F626F69647561;
    v12 = 0xE90000000000006BLL;
    v13 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v12 = 0xE500000000000000;
  v11 = 0x646578696DLL;
  v13 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v15 = 0xE500000000000000;
  if (v11 != 0x6B6F6F6265)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v12 != v15)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_24:
  *v21 = a2;
  return result;
}

uint64_t sub_112BEC(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B57F4();
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();

  v7 = sub_1B5844();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_46:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_1170D0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    result = 1;
    goto LABEL_49;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE400000000000000;
    v12 = 1802465122;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v11 = 0xE500000000000000;
        v12 = 0x736B6F6F62;
        break;
      case 2:
        v12 = 0xD000000000000010;
        v11 = 0x80000000001D4FE0;
        break;
      case 3:
        v12 = 0x417942736B6F6F62;
        v11 = 0xED0000726F687475;
        break;
      case 4:
        v12 = 0xD000000000000017;
        v11 = 0x80000000001D4740;
        break;
      case 5:
        v12 = 0x476E49736B6F6F62;
        v11 = 0xEC00000065726E65;
        break;
      case 6:
        v12 = 0xD000000000000011;
        v11 = 0x80000000001D4760;
        break;
      case 7:
        v12 = 0xD000000000000011;
        v11 = 0x80000000001D4780;
        break;
      case 8:
        v12 = 0xD000000000000013;
        v11 = 0x80000000001D47A0;
        break;
      case 9:
        v11 = 0xE600000000000000;
        v12 = 0x736569726573;
        break;
      case 0xA:
        v13 = 1954047342;
        goto LABEL_15;
      case 0xB:
        v13 = 1701998445;
LABEL_15:
        v12 = v13 | 0x65536E4900000000;
        v11 = 0xEC00000073656972;
        break;
      case 0xC:
        v12 = 0x6867696C68676968;
        v11 = 0xEA00000000007374;
        break;
      default:
        break;
    }

    v14 = 0xE400000000000000;
    v15 = 1802465122;
    switch(a2)
    {
      case 1:
        v14 = 0xE500000000000000;
        if (v12 == 0x736B6F6F62)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      case 2:
        v14 = 0x80000000001D4FE0;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 3:
        v14 = 0xED0000726F687475;
        if (v12 != 0x417942736B6F6F62)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 4:
        v14 = 0x80000000001D4740;
        if (v12 != 0xD000000000000017)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 5:
        v16 = 0x476E49736B6F6F62;
        v17 = 1701998181;
        goto LABEL_34;
      case 6:
        v14 = 0x80000000001D4760;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 7:
        v14 = 0x80000000001D4780;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 8:
        v14 = 0x80000000001D47A0;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 9:
        v14 = 0xE600000000000000;
        if (v12 != 0x736569726573)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 10:
        v15 = 0x65536E497478656ELL;
        v14 = 0xEC00000073656972;
        goto LABEL_39;
      case 11:
        v16 = 0x65536E4965726F6DLL;
        v17 = 1936025970;
LABEL_34:
        v14 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v12 != v16)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      case 12:
        v14 = 0xEA00000000007374;
        if (v12 != 0x6867696C68676968)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      default:
LABEL_39:
        if (v12 != v15)
        {
          goto LABEL_41;
        }

LABEL_40:
        if (v11 != v14)
        {
LABEL_41:
          v18 = sub_1B5604();

          if (v18)
          {
            goto LABEL_48;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_46;
          }

          continue;
        }

LABEL_48:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_49:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1130F8(uint64_t a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  sub_1B57F4();
  sub_1B5804(v7);
  sub_1B5834(v8);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  sub_1B5814(v9 & 1);
  v26 = a1;
  if (v11 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v10);
  }

  v12 = sub_1B5844();
  v13 = -1 << *(v5 + 32);
  v14 = v12 & ~v13;
  if (((*(v5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_21:
    v23 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    sub_117614(a2, v14, isUniquelyReferenced_nonNull_native);
    *v2 = v27;
    v25 = *(a2 + 16);
    *v26 = *a2;
    *(v26 + 16) = v25;
    *(v26 + 32) = *(a2 + 32);
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v17 = *(v5 + 48) + 40 * v14;
    if (*v17 != v7 || *(v17 + 8) != v8)
    {
      goto LABEL_10;
    }

    v19 = *(v17 + 16);
    if ((v19 ^ v9))
    {
      goto LABEL_10;
    }

    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    if (v21)
    {
      break;
    }

    if (v20 == v10)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_10:
    v14 = (v14 + 1) & v15;
    if (((*(v5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = v20;
LABEL_20:
  result = 0;
  *v26 = v7;
  *(v26 + 8) = v8;
  *(v26 + 16) = v19;
  *(v26 + 24) = v10;
  *(v26 + 32) = v21;
  return result;
}

uint64_t sub_1132B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_229260, &qword_1BC340);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_113514(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_2B0C(a2, a3);
  result = sub_1B5044();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1B57F4();
      sub_1B5804(v20);
      result = sub_1B5844();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_11375C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_2292D0, &qword_1BC390);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1B57E4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_113980(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  sub_2B0C(&qword_2293D0, &qword_1BC470);
  v4 = sub_1B5044();
  v5 = v4;
  if (*(v2 + 16))
  {
    v6 = 0;
    v62 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v65 = v2;
    v66 = v4 + 56;
    v64 = v10;
    v67 = v4;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v70 = (v9 - 1) & v9;
LABEL_17:
      v71 = v6;
      v20 = *(v2 + 48) + 568 * (v16 | (v6 << 6));
      v21 = *v20;
      v22 = *(v20 + 56);
      v93 = *(v20 + 40);
      v94 = v22;
      v95 = *(v20 + 72);
      v96 = *(v20 + 88);
      v23 = *(v20 + 24);
      v91 = *(v20 + 8);
      v92 = v23;
      v24 = *(v20 + 96);
      v25 = *(v20 + 112);
      v90 = *(v20 + 128);
      v89 = v25;
      v88 = v24;
      v26 = *(v20 + 144);
      v87 = *(v20 + 152);
      memcpy(__src, (v20 + 168), sizeof(__src));
      v85[0] = *(v20 + 545);
      *(v85 + 3) = *(v20 + 548);
      v27 = *(v20 + 552);
      v28 = *(v20 + 560);
      v29 = *(v5 + 40);
      sub_1B57F4();
      v68 = v21;
      sub_1B5834(v21);
      __dst[2] = v93;
      __dst[3] = v94;
      __dst[4] = v95;
      *&__dst[5] = v96;
      __dst[0] = v91;
      __dst[1] = v92;
      Book.Metadata.hash(into:)(v83);
      if (v26 >> 1 == 0xFFFFFFFF)
      {
        sub_1B5814(0);
      }

      else
      {
        v79 = v88;
        v80 = v89;
        v81 = v90;
        *&v82[8] = v87;
        *v82 = v26;
        sub_1B5814(1u);
        v77[0] = v88;
        v77[1] = v89;
        v77[2] = v90;
        *&v77[3] = v26;
        *(&v77[3] + 8) = v87;
        sub_42CD4(v77, __dst);
        InternalAffinitySource.hash(into:)(v83);
        __dst[2] = v81;
        __dst[3] = *v82;
        *&__dst[4] = *&v82[16];
        __dst[0] = v79;
        __dst[1] = v80;
        sub_42D30(__dst);
      }

      memcpy(__dst, __src, 0x179uLL);
      v69 = v26;
      v72 = v28;
      if (sub_42D84(__dst) == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        memcpy(v77, __src, 0x179uLL);
        sub_1B5814(1u);
        BookHistory.hash(into:)();
      }

      v30 = v27 + 64;
      v31 = 1 << *(v27 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v27 + 64);
      v34 = (v31 + 63) >> 6;

      v35 = 0;
      v36 = 0;
      v74 = v27 + 64;
      v75 = v27;
      v73 = v34;
      while (1)
      {
        if (!v33)
        {
          while (1)
          {
            v37 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v37 >= v34)
            {
              goto LABEL_52;
            }

            v33 = *(v30 + 8 * v37);
            ++v36;
            if (v33)
            {
              v36 = v37;
              goto LABEL_33;
            }
          }

          __break(1u);
          goto LABEL_70;
        }

LABEL_33:
        v38 = __clz(__rbit64(v33)) | (v36 << 6);
        v39 = *(*(v27 + 48) + v38);
        v40 = *(*(v27 + 56) + 8 * v38);

        if (!v40)
        {
          break;
        }

        v76 = v35;
        v33 &= v33 - 1;
        v77[2] = v83[2];
        v77[3] = v83[3];
        *&v77[4] = v84;
        v77[0] = v83[0];
        v77[1] = v83[1];
        sub_1B4884();

        sub_1B5804(*(v40 + 16));
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = (v40 + 80);
          do
          {
            v45 = *(v42 - 6);
            v46 = *(v42 - 5);
            v47 = *(v42 - 4);
            v48 = *(v42 - 3);
            v50 = *(v42 - 2);
            v49 = *(v42 - 1);
            v51 = *v42;

            sub_1B4884();
            if (v47 == 0.0)
            {
              v52 = 0.0;
            }

            else
            {
              v52 = v47;
            }

            sub_1B5834(*&v52);
            if (v48 == 0.0)
            {
              v53 = 0.0;
            }

            else
            {
              v53 = v48;
            }

            sub_1B5834(*&v53);
            if (v51 == 1)
            {
              sub_1B5814(0);
            }

            else
            {
              sub_1B5814(1u);
              if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v43 = v50;
              }

              else
              {
                v43 = 0;
              }

              sub_1B5834(v43);
              if ((v49 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v44 = v49;
              }

              else
              {
                v44 = 0;
              }

              sub_1B5834(v44);
            }

            v42 += 56;
            --v41;
          }

          while (v41);
        }

        result = sub_1B5844();
        v27 = v75;
        v35 = result ^ v76;
        v34 = v73;
        v30 = v74;
      }

LABEL_52:

      sub_1B5804(v35);
      if (v72 == 12)
      {
        sub_1B5814(0);
      }

      else
      {
        LOBYTE(v77[0]) = v72;
        sub_1B5814(1u);
        PositiveAffinitySource.hash(into:)();
      }

      result = sub_1B5844();
      v5 = v67;
      v54 = -1 << *(v67 + 32);
      v55 = result & ~v54;
      v56 = v55 >> 6;
      if (((-1 << v55) & ~*(v66 + 8 * (v55 >> 6))) == 0)
      {
        v57 = 0;
        v58 = (63 - v54) >> 6;
        while (++v56 != v58 || (v57 & 1) == 0)
        {
          v59 = v56 == v58;
          if (v56 == v58)
          {
            v56 = 0;
          }

          v57 |= v59;
          v60 = *(v66 + 8 * v56);
          if (v60 != -1)
          {
            v11 = __clz(__rbit64(~v60)) + (v56 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_71;
      }

      v11 = __clz(__rbit64((-1 << v55) & ~*(v66 + 8 * (v55 >> 6)))) | v55 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v66 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v67 + 48) + 568 * v11;
      *v12 = v68;
      v13 = v94;
      *(v12 + 40) = v93;
      *(v12 + 56) = v13;
      *(v12 + 72) = v95;
      *(v12 + 88) = v96;
      v14 = v92;
      *(v12 + 8) = v91;
      *(v12 + 24) = v14;
      v15 = v89;
      *(v12 + 96) = v88;
      *(v12 + 112) = v15;
      *(v12 + 128) = v90;
      *(v12 + 144) = v69;
      *(v12 + 152) = v87;
      memcpy((v12 + 168), __src, 0x179uLL);
      *(v12 + 545) = v85[0];
      *(v12 + 548) = *(v85 + 3);
      *(v12 + 552) = v27;
      *(v12 + 560) = v72;
      ++*(v67 + 16);
      v10 = v64;
      v2 = v65;
      v9 = v70;
      v6 = v71;
    }

    v17 = v6;
    result = v62;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        v61 = 1 << *(v2 + 32);
        if (v61 >= 64)
        {
          bzero(v62, ((v61 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v62 = -1 << v61;
        }

        *(v2 + 16) = 0;
        goto LABEL_68;
      }

      v19 = v62[v6];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v70 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
LABEL_68:

    *v63 = v5;
  }

  return result;
}

uint64_t sub_11416C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22AE98, &qword_1C30C8);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1143F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_229550, &unk_1BC5C0);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_114658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_2B0C(a2, a3);
  result = sub_1B5044();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1148EC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1B4414();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22CD98, &unk_1C9200);
  result = sub_1B5044();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey);
      result = sub_1B4744();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_114C48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22CD30, &unk_1C9138);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_114EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v7 >= v12)
          {
            break;
          }

          v17 = v8[v7];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v11 = (v17 - 1) & v17;
            goto LABEL_17;
          }
        }

        v36 = 1 << *(v3 + 32);
        if (v36 >= 64)
        {
          bzero((v3 + 56), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v36;
        }

        v2 = v37;
        *(v3 + 16) = 0;
        goto LABEL_44;
      }

      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      memcpy(__src, (*(v3 + 48) + 568 * (v15 | (v7 << 6))), sizeof(__src));
      v18 = *(v6 + 40);
      sub_1B57F4();
      memcpy(__dst, __src, 0x231uLL);
      v19 = sub_9E6E0(__dst);
      v20 = sub_9E6EC(__dst);
      if (v19 > 2)
      {
        break;
      }

      if (v19)
      {
        v21 = *v20;
        if (v19 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        sub_1B5804(v22);
        sub_1B5834(v21);
      }

      else
      {
        v26 = v20;
        sub_1B5804(0);
        memcpy(v38, v26, sizeof(v38));
        SeedBook.hash(into:)(v39);
      }

LABEL_31:
      result = sub_1B5844();
      v29 = -1 << *(v6 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = memcpy((*(v6 + 48) + 568 * v14), __src, 0x231uLL);
      ++*(v6 + 16);
    }

    if (v19 == 3)
    {
      v23 = *v20;
      v27 = v20[8];
      v25 = 3;
    }

    else
    {
      if (v19 != 4)
      {
        v28 = *v20;
        sub_1B5804(5uLL);
        goto LABEL_30;
      }

      v23 = *v20;
      v24 = v20[8];
      v25 = 4;
    }

    sub_1B5804(v25);
    sub_1B5834(v23);
LABEL_30:
    sub_1B4884();

    goto LABEL_31;
  }

LABEL_44:

  *v2 = v6;
  return result;
}

uint64_t sub_115264(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22AE88, &qword_1C9130);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_115508(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22CD80, &unk_1C91F0);
  v5 = sub_1B5044();
  v6 = v5;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 56;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v22 = *(*(v3 + 48) + (v19 | (v7 << 6)));
      v23 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      v14 = sub_1B5844();
      v15 = -1 << *(v6 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = 0;
        v25 = (63 - v15) >> 6;
        do
        {
          if (++v17 == v25 && (v24 & 1) != 0)
          {
            goto LABEL_33;
          }

          v26 = v17 == v25;
          if (v17 == v25)
          {
            v17 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v17);
        }

        while (v27 == -1);
        v18 = __clz(__rbit64(~v27)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v6 + 48) + v18) = v22;
      ++*(v6 + 16);
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        JUMPOUT(0x1158F4);
      }

      if (v7 >= v12)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v11 = (v21 - 1) & v21;
        goto LABEL_18;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_115928(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_229418, &qword_1BC4B8);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v36 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_1B57F4();
      sub_1B5804(v21);
      sub_1B5834(v20);
      sub_1B5814(v22);
      if (v24 == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5834(v23);
      }

      result = sub_1B5844();
      v6 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v36 + 48) + 40 * v14;
      v11 = v37;
      *v15 = v21;
      *(v15 + 8) = v20;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v36 + 16);
      v3 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_115C0C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1132B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_117818();
      goto LABEL_16;
    }

    sub_1183F0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B57F4();
  sub_1B4884();
  result = sub_1B5844();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B5604();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B5774();
  __break(1u);
  return result;
}

Swift::Int sub_115D8C(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_113514(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_117FD0(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_118628(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1B57F4();
  sub_1B5804(v6);
  result = sub_1B5844();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_115EFC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_11375C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_117974();
      a2 = v7;
      goto LABEL_12;
    }

    sub_118840(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1B57E4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_11601C(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, 0x231uLL);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_113980(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_117AB4();
      goto LABEL_12;
    }

    sub_118A30(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  memcpy(v23, __src, 0x231uLL);
  sub_1B57F4();
  SeedBook.hash(into:)(v22);
  v12 = sub_1B5844();
  v13 = -1 << *(v10 + 32);
  a2 = v12 & ~v13;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v10 + 48) + 568 * a2;
      memcpy(v22, v15, 0x231uLL);
      memcpy(v21, v15, 0x231uLL);
      sub_4299C(v22, v23);
      LOBYTE(v15) = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v21, __dst);
      memcpy(v23, v21, 0x231uLL);
      sub_2601C(v23);
      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v16 + 48) + 568 * a2), __dst, 0x231uLL);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

Swift::Int sub_116200(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_11416C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_117FD0(&qword_22AE98, &qword_1C30C8);
      goto LABEL_25;
    }

    sub_119104(v6 + 1);
  }

  v8 = 0x6B6F6F6265;
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1B57F4();
  if (v5)
  {
    v8 = 0x6F6F626F69647561;
    v11 = 0xE90000000000006BLL;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  sub_1B4884();

  result = sub_1B5844();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v15 = *(*(v9 + 48) + a2) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v14 == v8 && v15 == v11)
      {
        goto LABEL_28;
      }

      v17 = sub_1B5604();

      if (v17)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = sub_1B5774();
  __break(1u);
  return result;
}

Swift::Int sub_116424(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1143F8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_117C3C();
      goto LABEL_16;
    }

    sub_119360(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B57F4();
  sub_1B4884();
  result = sub_1B5844();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B5604();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B5774();
  __break(1u);
  return result;
}

Swift::Int sub_1165A4(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  v25 = result;
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_114658(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_117FD0(a4, a5);
      goto LABEL_25;
    }

    sub_119598(v8 + 1, a4, a5);
  }

  v10 = 0x6168637275706F63;
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_1B57F4();
  if (v7)
  {
    v10 = 0xD000000000000011;
    v13 = 0x80000000001D49B0;
  }

  else
  {
    v13 = 0xEA00000000006573;
  }

  sub_1B4884();

  result = sub_1B5844();
  v14 = -1 << *(v11 + 32);
  a2 = result & ~v14;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = *(*(v11 + 48) + a2) ? 0xD000000000000011 : 0x6168637275706F63;
      v17 = *(*(v11 + 48) + a2) ? 0x80000000001D49B0 : 0xEA00000000006573;
      if (v16 == v10 && v17 == v13)
      {
        goto LABEL_28;
      }

      v19 = sub_1B5604();

      if (v19)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v25 & 1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_1167D8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4414();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1148EC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_117D98();
      goto LABEL_12;
    }

    sub_1197FC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey);
  v15 = sub_1B4744();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_11C13C(&qword_22CD90, &type metadata accessor for FeatureKey);
      v23 = sub_1B4784();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

Swift::Int sub_116A7C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_114C48(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_117FD0(&qword_22CD30, &unk_1C9138);
      goto LABEL_19;
    }

    sub_119B18(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1B57F4();
  if (v6)
  {
    v11 = 1684627824;
  }

  else
  {
    v11 = 1701147238;
  }

  sub_1B4884();

  result = sub_1B5844();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 1684627824 : 1701147238;
      if (v14 == v11)
      {
        goto LABEL_22;
      }

      v15 = sub_1B5604();
      result = swift_bridgeObjectRelease_n();
      if (v15)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v6 & 1;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_22:
  swift_bridgeObjectRelease_n();
LABEL_23:
  result = sub_1B5774();
  __break(1u);
  return result;
}

uint64_t sub_116C50(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_114EB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_118100();
      goto LABEL_12;
    }

    sub_119D58(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  memcpy(v23, __src, 0x231uLL);
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v22);
  v12 = sub_1B5844();
  v13 = -1 << *(v10 + 32);
  a2 = v12 & ~v13;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v10 + 48) + 568 * a2;
      memcpy(v22, v15, 0x231uLL);
      memcpy(v21, v15, 0x231uLL);
      sub_5EE34(v22, v23);
      LOBYTE(v15) = _s20BooksPersonalization17ScorableAttributeO2eeoiySbAC_ACtFZ_0(v21);
      memcpy(v23, v21, 0x231uLL);
      sub_5EE90(v23);
      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v16 + 48) + 568 * a2), __dst, 0x231uLL);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B5774();
  __break(1u);
  return result;
}

Swift::Int sub_116E34(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_115264(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_117FD0(&qword_22AE88, &qword_1C9130);
        goto LABEL_28;
      }

      sub_11A11C(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1B57F4();
    sub_1B4884();

    result = sub_1B5844();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0x6F6F626F69647561;
            v13 = 0xE90000000000006BLL;
            v14 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v13 = 0xE500000000000000;
            v12 = 0x646578696DLL;
            v14 = v5;
            if (!v5)
            {
LABEL_24:
              v16 = 0xE500000000000000;
              if (v12 == 0x6B6F6F6265)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v13 = 0xE500000000000000;
          v12 = 0x6B6F6F6265;
          v14 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 0x6F6F626F69647561;
        }

        else
        {
          v15 = 0x646578696DLL;
        }

        if (v14 == 1)
        {
          v16 = 0xE90000000000006BLL;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v12 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_1B5604();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_1B5774();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

Swift::Int sub_1170D0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_115508(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_117FD0(&qword_22CD80, &unk_1C91F0);
        goto LABEL_53;
      }

      sub_11A390(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_1B57F4();
    CollectionRecommendationType.rawValue.getter();
    sub_1B4884();

    result = sub_1B5844();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE400000000000000;
        v14 = 1802465122;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xE500000000000000;
            v14 = 0x736B6F6F62;
            break;
          case 2:
            v14 = 0xD000000000000010;
            v13 = 0x80000000001D4FE0;
            break;
          case 3:
            v14 = 0x417942736B6F6F62;
            v13 = 0xED0000726F687475;
            break;
          case 4:
            v14 = 0xD000000000000017;
            v13 = 0x80000000001D4740;
            break;
          case 5:
            v14 = 0x476E49736B6F6F62;
            v13 = 0xEC00000065726E65;
            break;
          case 6:
            v14 = 0xD000000000000011;
            v13 = 0x80000000001D4760;
            break;
          case 7:
            v14 = 0xD000000000000011;
            v13 = 0x80000000001D4780;
            break;
          case 8:
            v14 = 0xD000000000000013;
            v13 = 0x80000000001D47A0;
            break;
          case 9:
            v13 = 0xE600000000000000;
            v14 = 0x736569726573;
            break;
          case 0xA:
            v15 = 1954047342;
            goto LABEL_22;
          case 0xB:
            v15 = 1701998445;
LABEL_22:
            v14 = v15 | 0x65536E4900000000;
            v13 = 0xEC00000073656972;
            break;
          case 0xC:
            v14 = 0x6867696C68676968;
            v13 = 0xEA00000000007374;
            break;
          default:
            break;
        }

        v16 = 0xE400000000000000;
        v17 = 1802465122;
        switch(v6)
        {
          case 1:
            v16 = 0xE500000000000000;
            if (v14 != 0x736B6F6F62)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 2:
            v16 = 0x80000000001D4FE0;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 3:
            v16 = 0xED0000726F687475;
            if (v14 != 0x417942736B6F6F62)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 4:
            v16 = 0x80000000001D4740;
            if (v14 != 0xD000000000000017)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 5:
            v18 = 0x476E49736B6F6F62;
            v19 = 1701998181;
            goto LABEL_41;
          case 6:
            v16 = 0x80000000001D4760;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 7:
            v16 = 0x80000000001D4780;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 8:
            v16 = 0x80000000001D47A0;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 9:
            v16 = 0xE600000000000000;
            if (v14 != 0x736569726573)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 10:
            v17 = 0x65536E497478656ELL;
            v16 = 0xEC00000073656972;
            goto LABEL_46;
          case 11:
            v18 = 0x65536E4965726F6DLL;
            v19 = 1936025970;
LABEL_41:
            v16 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v18)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          case 12:
            v16 = 0xEA00000000007374;
            if (v14 != 0x6867696C68676968)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          default:
LABEL_46:
            if (v14 != v17)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (v13 == v16)
            {
              goto LABEL_56;
            }

LABEL_48:
            v20 = sub_1B5604();

            if (v20)
            {
              goto LABEL_57;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_53:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_56:

LABEL_57:
    sub_1B5774();
    __break(1u);
    JUMPOUT(0x1175ACLL);
  }

  *(v21 + 16) = v24;
  return result;
}

Swift::Int sub_117614(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_115928(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_118288();
      a2 = v7;
      goto LABEL_27;
    }

    sub_11A780(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(v4 + 16);
  sub_1B57F4();
  sub_1B5804(v10);
  sub_1B5834(v11);
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  sub_1B5814(v12 & 1);
  if (v14 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v13);
  }

  result = sub_1B5844();
  v15 = -1 << *(v8 + 32);
  a2 = result & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    do
    {
      v17 = *(v8 + 48) + 40 * a2;
      v18 = *v17 == v10 && *(v17 + 8) == v11;
      if (v18 && ((*(v17 + 16) ^ v12) & 1) == 0)
      {
        if (*(v17 + 32))
        {
          if (v14)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (*(v17 + 24) == v13)
          {
            v19 = v14;
          }

          else
          {
            v19 = 1;
          }

          if ((v19 & 1) == 0)
          {
LABEL_26:
            result = sub_1B5774();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v21 = *(v20 + 48) + 40 * a2;
  v22 = *(v4 + 16);
  *v21 = *v4;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(v4 + 32);
  v23 = *(v20 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v25;
  }

  return result;
}

void *sub_117818()
{
  v1 = v0;
  sub_2B0C(&qword_229260, &qword_1BC340);
  v2 = *v0;
  v3 = sub_1B5034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_117974()
{
  v1 = v0;
  sub_2B0C(&qword_2292D0, &qword_1BC390);
  v2 = *v0;
  v3 = sub_1B5034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_117AB4()
{
  v1 = v0;
  sub_2B0C(&qword_2293D0, &qword_1BC470);
  v2 = *v0;
  v3 = sub_1B5034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_4299C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 568 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x231uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x231uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_117C3C()
{
  v1 = v0;
  sub_2B0C(&qword_229550, &unk_1BC5C0);
  v2 = *v0;
  v3 = sub_1B5034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_117D98()
{
  v1 = v0;
  v2 = sub_1B4414();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22CD98, &unk_1C9200);
  v7 = *v0;
  v8 = sub_1B5034();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_117FD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5034();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_118100()
{
  v1 = v0;
  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  v2 = *v0;
  v3 = sub_1B5034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_5EE34(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 568 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x231uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x231uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_118288()
{
  v1 = v0;
  sub_2B0C(&qword_229418, &qword_1BC4B8);
  v2 = *v0;
  v3 = sub_1B5034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 32) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 40 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *(v4 + 48) + v17;
      *v22 = *v18;
      *(v22 + 16) = v19;
      *(v22 + 24) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1183F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_229260, &qword_1BC340);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B57F4();

      sub_1B4884();
      result = sub_1B5844();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_118628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_2B0C(a2, a3);
  result = sub_1B5044();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1B57F4();
      sub_1B5804(v19);
      result = sub_1B5844();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_118840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_2292D0, &qword_1BC390);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1B57E4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_118A30(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  sub_2B0C(&qword_2293D0, &qword_1BC470);
  result = sub_1B5044();
  v5 = result;
  if (*(v2 + 16))
  {
    v6 = 0;
    v48 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v50 = v10;
    v51 = result + 56;
    v52 = result;
    v53 = v2;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v54 = (v9 - 1) & v9;
LABEL_17:
      v55 = v6;
      memcpy(__src, (*(v2 + 48) + 568 * (v12 | (v6 << 6))), 0x231uLL);
      v15 = *(v5 + 40);
      sub_1B57F4();
      sub_1B5834(*&__src[0]);
      v60[2] = *(&__src[2] + 8);
      v60[3] = *(&__src[3] + 8);
      v60[4] = *(&__src[4] + 8);
      *&v60[5] = *(&__src[5] + 1);
      v60[0] = *(__src + 8);
      v60[1] = *(&__src[1] + 8);
      sub_4299C(__src, __dst);
      Book.Metadata.hash(into:)(v67);
      if (*&__src[9] >> 1 == 0xFFFFFFFFLL)
      {
        sub_1B5814(0);
      }

      else
      {
        v63 = __src[8];
        v64 = __src[9];
        v65 = *&__src[10];
        v61 = __src[6];
        v62 = __src[7];
        sub_1B5814(1u);
        v60[2] = __src[8];
        v60[3] = __src[9];
        *&v60[4] = *&__src[10];
        v60[0] = __src[6];
        v60[1] = __src[7];
        sub_42CD4(v60, __dst);
        InternalAffinitySource.hash(into:)(v67);
        __dst[2] = v63;
        __dst[3] = v64;
        *&__dst[4] = v65;
        __dst[0] = v61;
        __dst[1] = v62;
        sub_42D30(__dst);
      }

      memcpy(__dst, &__src[10] + 8, 0x179uLL);
      if (sub_42D84(__dst) == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        memcpy(v60, &__src[10] + 8, 0x179uLL);
        sub_1B5814(1u);
        BookHistory.hash(into:)();
      }

      v16 = *(&__src[34] + 1) + 64;
      v17 = 1 << *(*(&__src[34] + 1) + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(*(&__src[34] + 1) + 64);
      v20 = (v17 + 63) >> 6;
      v58 = *(&__src[34] + 1);

      v21 = 0;
      v22 = 0;
      v56 = v20;
      for (i = v16; ; v16 = i)
      {
        if (!v19)
        {
          while (1)
          {
            v23 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v23 >= v20)
            {
              goto LABEL_52;
            }

            v19 = *(v16 + 8 * v23);
            ++v22;
            if (v19)
            {
              v22 = v23;
              goto LABEL_33;
            }
          }

          __break(1u);
          goto LABEL_66;
        }

LABEL_33:
        v24 = __clz(__rbit64(v19)) | (v22 << 6);
        v25 = *(*(v58 + 48) + v24);
        v26 = *(*(v58 + 56) + 8 * v24);

        if (!v26)
        {
          break;
        }

        v59 = v21;
        v19 &= v19 - 1;
        v60[2] = v67[2];
        v60[3] = v67[3];
        *&v60[4] = v68;
        v60[0] = v67[0];
        v60[1] = v67[1];
        sub_1B4884();

        sub_1B5804(*(v26 + 16));
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = (v26 + 80);
          do
          {
            v29 = *(v28 - 6);
            v30 = *(v28 - 5);
            v31 = *(v28 - 4);
            v32 = *(v28 - 3);
            v34 = *(v28 - 2);
            v33 = *(v28 - 1);
            v35 = *v28;

            sub_1B4884();
            if (v31 == 0.0)
            {
              v36 = 0.0;
            }

            else
            {
              v36 = v31;
            }

            sub_1B5834(*&v36);
            if (v32 == 0.0)
            {
              v37 = 0.0;
            }

            else
            {
              v37 = v32;
            }

            sub_1B5834(*&v37);
            if (v35 == 1)
            {
              sub_1B5814(0);
            }

            else
            {
              sub_1B5814(1u);
              if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v38 = v34;
              }

              else
              {
                v38 = 0;
              }

              sub_1B5834(v38);
              if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v39 = v33;
              }

              else
              {
                v39 = 0;
              }

              sub_1B5834(v39);
            }

            v28 += 56;
            --v27;
          }

          while (v27);
        }

        result = sub_1B5844();
        v21 = result ^ v59;
        v20 = v56;
      }

LABEL_52:

      v40 = LOBYTE(__src[35]);
      sub_1B5804(v21);
      if (v40 == 12)
      {
        sub_1B5814(0);
      }

      else
      {
        LOBYTE(v60[0]) = v40;
        sub_1B5814(1u);
        PositiveAffinitySource.hash(into:)();
      }

      v2 = v53;
      result = sub_1B5844();
      v5 = v52;
      v41 = -1 << *(v52 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v51 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v51 + 8 * v43);
          if (v47 != -1)
          {
            v11 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_67;
      }

      v11 = __clz(__rbit64((-1 << v42) & ~*(v51 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v51 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      result = memcpy((*(v52 + 48) + 568 * v11), __src, 0x231uLL);
      ++*(v52 + 16);
      v9 = v54;
      v6 = v55;
      v10 = v50;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_64;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v54 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  else
  {
LABEL_64:

    *v49 = v5;
  }

  return result;
}

uint64_t sub_119104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22AE98, &qword_1C30C8);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_119360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_229550, &unk_1BC5C0);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B57F4();

      sub_1B4884();
      result = sub_1B5844();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_119598(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_2B0C(a2, a3);
  result = sub_1B5044();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1197FC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4414();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22CD98, &unk_1C9200);
  v10 = sub_1B5044();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_11C13C(&qword_229448, &type metadata accessor for FeatureKey);
      result = sub_1B4744();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_119B18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22CD30, &unk_1C9138);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_119D58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  result = sub_1B5044();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_42:
    *v2 = v6;
    return result;
  }

  v37 = v2;
  v7 = 0;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    memcpy(__src, (*(v3 + 48) + 568 * (v14 | (v7 << 6))), sizeof(__src));
    v17 = *(v6 + 40);
    sub_1B57F4();
    memcpy(__dst, __src, 0x231uLL);
    v18 = sub_9E6E0(__dst);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v27 = sub_9E6EC(__dst);
        v22 = *v27;
        v28 = *(v27 + 8);
        v24 = 3;
LABEL_26:
        sub_1B5804(v24);
        sub_1B5834(v22);
      }

      else
      {
        if (v18 == 4)
        {
          v21 = sub_9E6EC(__dst);
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = 4;
          goto LABEL_26;
        }

        v29 = *sub_9E6EC(__dst);
        sub_1B5804(5uLL);
      }

      sub_1B4884();

      goto LABEL_31;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        v19 = *sub_9E6EC(__dst);
        v20 = 1;
      }

      else
      {
        v19 = *sub_9E6EC(__dst);
        v20 = 2;
      }

      sub_1B5804(v20);
      sub_1B5834(v19);
    }

    else
    {
      v25 = sub_9E6EC(__dst);
      sub_1B5804(0);
      memcpy(v39, v25, sizeof(v39));
      memcpy(v40, __src, 0x231uLL);
      v26 = sub_9E6EC(v40);
      sub_4299C(v26, v38);
      SeedBook.hash(into:)(v41);
    }

LABEL_31:
    result = sub_1B5844();
    v30 = -1 << *(v6 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = *(v12 + 8 * v32);
        if (v36 != -1)
        {
          v13 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_44;
    }

    v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    result = memcpy((*(v6 + 48) + 568 * v13), __src, 0x231uLL);
    ++*(v6 + 16);
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v37;
      goto LABEL_42;
    }

    v16 = *(v3 + 56 + 8 * v7);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_11A11C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22AE88, &qword_1C9130);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_11A390(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_22CD80, &unk_1C91F0);
  v5 = sub_1B5044();
  v6 = v5;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v22 = *(*(v3 + 48) + (v19 | (v7 << 6)));
      v23 = *(v6 + 40);
      sub_1B57F4();
      sub_1B4884();

      v14 = sub_1B5844();
      v15 = -1 << *(v6 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = 0;
        v25 = (63 - v15) >> 6;
        do
        {
          if (++v17 == v25 && (v24 & 1) != 0)
          {
            goto LABEL_31;
          }

          v26 = v17 == v25;
          if (v17 == v25)
          {
            v17 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v17);
        }

        while (v27 == -1);
        v18 = __clz(__rbit64(~v27)) + (v17 << 6);
      }

      *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v6 + 48) + v18) = v22;
      ++*(v6 + 16);
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x11A74CLL);
      }

      if (v7 >= v11)
      {
        break;
      }

      v21 = *(v3 + 56 + 8 * v7);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_19;
      }
    }

    v2 = v28;
  }

  else
  {
  }

  *v2 = v6;
  return result;
}

uint64_t sub_11A780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2B0C(&qword_229418, &qword_1BC4B8);
  result = sub_1B5044();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v35 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_1B57F4();
      sub_1B5804(v20);
      sub_1B5834(v21);
      sub_1B5814(v22);
      if (v24 == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5834(v23);
      }

      result = sub_1B5844();
      v6 = v35;
      v26 = -1 << *(v35 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v35 + 48) + 40 * v14;
      v11 = v36;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v35 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

unint64_t *sub_11AA34(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_11F6D0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_11AAD0(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v5 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v29[1] = v3;
  v40 = _swiftEmptyArrayStorage;
  sub_37768(0, v9, 0);
  v10 = v40;
  v11 = a1 + 64;
  v12 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v14 = result;
  v15 = 0;
  v37 = *(a1 + 36);
  v30 = a1 + 72;
  v31 = v9;
  v32 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v36 = v15;
    v18 = *(*(a1 + 48) + v14);
    v19 = *(*(a1 + 56) + 8 * v14);

    v38[0] = v18;
    v39 = v19;
    v34(v38, v19);

    v40 = v10;
    v21 = v10[2];
    v20 = v10[3];
    if (v21 >= v20 >> 1)
    {
      sub_37768(v20 > 1, v21 + 1, 1);
      v10 = v40;
    }

    v10[2] = v21 + 1;
    result = sub_11FE3C(v8, v10 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, type metadata accessor for SeedBasedRecommendationRequest);
    v16 = 1 << *(a1 + 32);
    if (v14 >= v16)
    {
      goto LABEL_24;
    }

    v11 = v32;
    v22 = *(v32 + 8 * v17);
    if ((v22 & (1 << v14)) == 0)
    {
      goto LABEL_25;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v14 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v17 << 6;
      v25 = v17 + 1;
      v26 = (v30 + 8 * v17);
      while (v25 < (v16 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_42FF0(v14, v37, 0);
          v16 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v14, v37, 0);
    }

LABEL_4:
    v15 = v36 + 1;
    v14 = v16;
    if (v36 + 1 == v31)
    {
      return v10;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_11ADE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E4965726F7473 && a2 == 0xE90000000000006FLL || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7AF0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536465776F6C6C61 && a2 == 0xEC00000073656C61 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF6465776F6C6C41 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D7B10 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x80000000001D7B30 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D7B60 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7B80 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000000001D7BB0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7BD0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7BF0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7C20 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xEE00656372756F53)
  {

    return 13;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_11B25C()
{
  sub_1B4844();
  sub_402F4();
  v0 = sub_1B4EF4();

  v1 = v0[2];
  if (!v1)
  {
    v3 = 0;
    v2 = 0xE000000000000000;
    goto LABEL_9;
  }

  v3 = v0[4];
  v2 = v0[5];

  v4 = v1 - 1;
  if (v1 == 1)
  {
LABEL_9:

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  sub_3747C(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = v0 + 7;
  do
  {
    v18 = *(v6 - 1);
    v19 = *v6;
    v7 = sub_1B4F04();
    v17 = v5;
    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      v16 = v7;
      v12 = v8;
      sub_3747C((v9 > 1), v10 + 1, 1);
      v8 = v12;
      v7 = v16;
      v5 = v17;
    }

    v5[2] = v10 + 1;
    v11 = &v5[2 * v10];
    v11[4] = v7;
    v11[5] = v8;
    v6 += 2;
    --v4;
  }

  while (v4);

LABEL_10:
  sub_2B0C(&qword_229258, &unk_1BCC20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BCA80;
  *(v13 + 32) = v3;
  *(v13 + 40) = v2;
  sub_5FC38(v5);
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
  v14 = sub_1B4764();

  return v14;
}