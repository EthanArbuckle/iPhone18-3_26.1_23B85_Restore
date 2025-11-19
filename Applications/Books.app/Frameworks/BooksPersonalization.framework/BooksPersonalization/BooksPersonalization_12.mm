uint64_t sub_C375C(unsigned __int8 *a1, uint64_t a2, int a3, void (*a4)(uint64_t), uint64_t a5)
{
  v85 = a5;
  v86 = a4;
  v84 = a3;
  v83 = type metadata accessor for ScoredCollectionRecommendation();
  v8 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for CollectionRecommendation(0);
  v10 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v87 = &v79 - v14;
  v15 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  __chkstk_darwin(v15);
  v79 = &v79 - v17;
  v93 = *a1;
  v18 = *(v5 + 104);
  v19 = *(v5 + 128);
  v90 = *(v5 + 120);
  v91 = v19;
  v20 = *(v5 + 136);
  v21 = *(v18 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = a2 + 56;
    v92 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v22 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v25 = v18 + 32 + 136 * v22;
      v95 = *v25;
      v26 = *(v25 + 16);
      v27 = *(v25 + 32);
      v28 = *(v25 + 64);
      v98 = *(v25 + 48);
      v99 = v28;
      v96 = v26;
      v97 = v27;
      v29 = *(v25 + 80);
      v30 = *(v25 + 96);
      v31 = *(v25 + 112);
      v103 = *(v25 + 128);
      v101 = v30;
      v102 = v31;
      v100 = v29;
      ++v22;
      v5 = BYTE8(v95);
      if (*(a2 + 16))
      {
        v32 = v95;
        v33 = *(a2 + 40);
        v34 = sub_1B57E4();
        v35 = -1 << *(a2 + 32);
        v36 = v34 & ~v35;
        if ((*(v23 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          while (*(*(a2 + 48) + 8 * v36) != v32)
          {
            v36 = (v36 + 1) & v37;
            if (((*(v23 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_18;
        }
      }

LABEL_13:
      if (v93)
      {
        if (v93 != 1)
        {
          sub_429F8(&v95, v94);
LABEL_22:
          v5 = v92;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_37574(0, *(v5 + 16) + 1, 1);
            v5 = v104;
          }

          v41 = *(v5 + 16);
          v40 = *(v5 + 24);
          v42 = (v41 + 1);
          if (v41 >= v40 >> 1)
          {
            v92 = (v41 + 1);
            sub_37574((v40 > 1), v41 + 1, 1);
            v42 = v92;
            v5 = v104;
          }

          *(v5 + 16) = v42;
          v92 = v5;
          v43 = v5 + 136 * v41;
          *(v43 + 32) = v95;
          v44 = v96;
          v45 = v97;
          v46 = v99;
          *(v43 + 80) = v98;
          *(v43 + 96) = v46;
          *(v43 + 48) = v44;
          *(v43 + 64) = v45;
          v47 = v100;
          v48 = v101;
          v49 = v102;
          *(v43 + 160) = v103;
          *(v43 + 128) = v48;
          *(v43 + 144) = v49;
          *(v43 + 112) = v47;
          goto LABEL_18;
        }

        if (v5)
        {
LABEL_21:
          sub_429F8(&v95, v94);

          goto LABEL_22;
        }

        v38 = sub_1B5604();
        sub_429F8(&v95, v94);

        if (v38)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if ((v5 & 1) == 0)
        {
          goto LABEL_21;
        }

        v24 = sub_1B5604();
        sub_429F8(&v95, v94);

        if (v24)
        {
          goto LABEL_22;
        }
      }

      sub_5C740(&v95);
LABEL_18:
      if (v22 == v21)
      {
        goto LABEL_28;
      }
    }
  }

  v92 = _swiftEmptyArrayStorage;
LABEL_28:
  v5 = sub_43174(v91, v92);
  if ((v52 & 1) == 0)
  {
    goto LABEL_29;
  }

  v22 = v52;
  a2 = v51;
  v18 = v50;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    swift_unknownObjectRelease();
    v55 = _swiftEmptyArrayStorage;
  }

  v56 = v55[2];

  if (__OFSUB__(v22 >> 1, a2))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v56 != (v22 >> 1) - a2)
  {
LABEL_52:
    swift_unknownObjectRelease();
    v52 = v22;
    v51 = a2;
    v50 = v18;
LABEL_29:
    sub_5136C(v5, v50, v51, v52);
    v54 = v53;
    goto LABEL_43;
  }

  v54 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v54)
  {
    v54 = _swiftEmptyArrayStorage;
LABEL_43:
    swift_unknownObjectRelease();
    v57 = v54[2];
    if (!v57)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v57 = v54[2];
  if (!v57)
  {
LABEL_44:

    v58 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

LABEL_36:
  v104 = _swiftEmptyArrayStorage;
  sub_375F8(0, v57, 0);
  v58 = v104;
  v59 = v57 - 1;
  for (i = 4; ; i += 17)
  {
    v61 = *&v54[i];
    v62 = *&v54[i + 2];
    v63 = *&v54[i + 6];
    v97 = *&v54[i + 4];
    v98 = v63;
    v95 = v61;
    v96 = v62;
    sub_42BA4(&v95, v94);
    v104 = v58;
    v65 = v58[2];
    v64 = v58[3];
    if (v65 >= v64 >> 1)
    {
      sub_375F8((v64 > 1), v65 + 1, 1);
      v58 = v104;
    }

    v58[2] = v65 + 1;
    v66 = &v58[8 * v65];
    v67 = v95;
    v68 = v96;
    v69 = v98;
    v66[4] = v97;
    v66[5] = v69;
    v66[2] = v67;
    v66[3] = v68;
    if (!v59)
    {
      break;
    }

    --v59;
  }

LABEL_45:
  if (v58[2] < v90)
  {
  }

  *&v95 = v58;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
  v71 = v87;
  sub_1B43C4();
  v72 = v88;
  v73 = v89;
  if ((*(v88 + 48))(v71, 1, v89) == 1)
  {
    return sub_42F48(v71, &qword_2296F0, &unk_1C3A10);
  }

  v74 = v79;
  (*(v72 + 32))(v79, v71, v73);
  v75 = v81;
  (*(v72 + 16))(v81, v74, v73);
  swift_storeEnumTagMultiPayload();
  v76 = sub_1AB914(v20);
  v77 = v82;
  sub_CB8C0(v75, v82, type metadata accessor for CollectionRecommendation);
  v78 = v83;
  *(v77 + *(v83 + 20)) = v93;
  *(v77 + *(v78 + 24)) = v84 & 1;
  *(v77 + *(v78 + 28)) = v76;
  v86(v77);
  sub_25FBC(v77, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v75, type metadata accessor for CollectionRecommendation);
  return (*(v72 + 8))(v74, v73);
}

uint64_t sub_C3F48(unsigned __int8 *a1, void *a2, int a3, void (*a4)(uint64_t), uint64_t a5)
{
  v94 = a5;
  v95 = a4;
  v93 = a3;
  v92 = type metadata accessor for ScoredCollectionRecommendation();
  v9 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v91 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CollectionRecommendation(0);
  v11 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v90 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v96 = &v88 - v15;
  v16 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v97 = *(v16 - 8);
  v98 = v16;
  v17 = *(v97 + 64);
  __chkstk_darwin(v16);
  v88 = &v88 - v18;
  v102 = *a1;
  v19 = v5[13];
  v20 = v5[16];
  v99 = v5[15];
  v100 = v20;
  v21 = *(v5 + 17);
  v22 = *(v19 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v5[7];
    v25 = v19 + 32;
    v103 = v24;
    v104 = a2;
    v26 = a2 + 7;
    v101 = _swiftEmptyArrayStorage;
    v27 = 136;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v23 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          v28 = v25 + 136 * v23;
          v106 = *v28;
          v29 = *(v28 + 16);
          v30 = *(v28 + 32);
          v31 = *(v28 + 64);
          v109 = *(v28 + 48);
          v110 = v31;
          v107 = v29;
          v108 = v30;
          v32 = *(v28 + 80);
          v33 = *(v28 + 96);
          v34 = *(v28 + 112);
          v114 = *(v28 + 128);
          v112 = v33;
          v113 = v34;
          v111 = v32;
          ++v23;
          v6 = v31;
          sub_429F8(&v106, v105);
          if ((sub_C4788(v6, v24) & 1) == 0)
          {
            break;
          }

          sub_5C740(&v106);
          if (v23 == v22)
          {
            goto LABEL_28;
          }
        }

        v35 = v25;
        v36 = BYTE8(v106);
        if (v104[2])
        {
          v6 = v106;
          v37 = v19;
          v38 = v22;
          v39 = v104;
          v40 = v104[5];
          v41 = sub_1B57E4();
          v42 = *(v39 + 32);
          v22 = v38;
          v19 = v37;
          v27 = 136;
          v43 = -1 << v42;
          v44 = v41 & ~(-1 << v42);
          if ((*(v26 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            while (*(v104[6] + 8 * v44) != v6)
            {
              v44 = (v44 + 1) & v45;
              if (((*(v26 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_18;
          }
        }

LABEL_11:
        if (v102)
        {
          break;
        }

        if ((v36 & 1) == 0)
        {
LABEL_20:

          goto LABEL_21;
        }

        v6 = sub_1B5604();

        if ((v6 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        v46 = v101;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v46;
        v115 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_37574(0, v46[2] + 1, 1);
          v48 = v115;
        }

        v25 = v35;
        v6 = v48[2];
        v49 = v48[3];
        v50 = (v6 + 1);
        if (v6 >= v49 >> 1)
        {
          v101 = (v6 + 1);
          sub_37574((v49 > 1), v6 + 1, 1);
          v50 = v101;
          v25 = v35;
          v48 = v115;
        }

        v48[2] = v50;
        v101 = v48;
        v51 = &v48[17 * v6];
        *(v51 + 2) = v106;
        v52 = v107;
        v53 = v108;
        v54 = v110;
        *(v51 + 5) = v109;
        *(v51 + 6) = v54;
        *(v51 + 3) = v52;
        *(v51 + 4) = v53;
        v55 = v111;
        v56 = v112;
        v57 = v113;
        *(v51 + 160) = v114;
        *(v51 + 8) = v56;
        *(v51 + 9) = v57;
        *(v51 + 7) = v55;
        v24 = v103;
        if (v23 == v22)
        {
          goto LABEL_28;
        }
      }

      if (v102 != 1)
      {
        goto LABEL_21;
      }

      if (v36)
      {
        goto LABEL_20;
      }

      v6 = sub_1B5604();

      if (v6)
      {
        goto LABEL_21;
      }

LABEL_18:
      sub_5C740(&v106);
      v25 = v35;
      v24 = v103;
      if (v23 == v22)
      {
        goto LABEL_28;
      }
    }
  }

  v101 = _swiftEmptyArrayStorage;
LABEL_28:
  v25 = sub_43174(v100, v101);
  if ((v60 & 1) == 0)
  {
    goto LABEL_29;
  }

  v6 = v60;
  v24 = v59;
  v27 = v58;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = _swiftEmptyArrayStorage;
  }

  v64 = v63[2];

  if (__OFSUB__(v6 >> 1, v24))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v64 != (v6 >> 1) - v24)
  {
LABEL_52:
    swift_unknownObjectRelease();
    v60 = v6;
    v59 = v24;
    v58 = v27;
LABEL_29:
    sub_5136C(v25, v58, v59, v60);
    v62 = v61;
    goto LABEL_43;
  }

  v62 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v62)
  {
    v62 = _swiftEmptyArrayStorage;
LABEL_43:
    swift_unknownObjectRelease();
    v65 = v62[2];
    if (!v65)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v65 = v62[2];
  if (!v65)
  {
LABEL_44:

    v66 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

LABEL_36:
  v115 = _swiftEmptyArrayStorage;
  sub_375F8(0, v65, 0);
  v66 = v115;
  v67 = v65 - 1;
  for (i = 4; ; i += 17)
  {
    v69 = *&v62[i];
    v70 = *&v62[i + 2];
    v71 = *&v62[i + 6];
    v108 = *&v62[i + 4];
    v109 = v71;
    v106 = v69;
    v107 = v70;
    sub_42BA4(&v106, v105);
    v115 = v66;
    v73 = v66[2];
    v72 = v66[3];
    if (v73 >= v72 >> 1)
    {
      sub_375F8((v72 > 1), v73 + 1, 1);
      v66 = v115;
    }

    v66[2] = v73 + 1;
    v74 = &v66[8 * v73];
    v75 = v106;
    v76 = v107;
    v77 = v109;
    v74[4] = v108;
    v74[5] = v77;
    v74[2] = v75;
    v74[3] = v76;
    if (!v67)
    {
      break;
    }

    --v67;
  }

LABEL_45:
  if (v66[2] < v99)
  {
  }

  *&v106 = v66;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
  v79 = v96;
  sub_1B43C4();
  v81 = v97;
  v80 = v98;
  if ((*(v97 + 48))(v79, 1, v98) == 1)
  {
    return sub_42F48(v79, &qword_2296F0, &unk_1C3A10);
  }

  v82 = v88;
  (*(v81 + 32))(v88, v79, v80);
  v83 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
  v84 = v90;
  (*(v81 + 16))(v90, v82, v80);
  *(v84 + v83) = 2;
  swift_storeEnumTagMultiPayload();
  v85 = sub_1AB914(v21);
  v86 = v91;
  sub_CB8C0(v84, v91, type metadata accessor for CollectionRecommendation);
  v87 = v92;
  *(v86 + *(v92 + 20)) = v102;
  *(v86 + *(v87 + 24)) = v93 & 1;
  *(v86 + *(v87 + 28)) = v85;
  v95(v86);
  sub_25FBC(v86, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v84, type metadata accessor for CollectionRecommendation);
  return (*(v81 + 8))(v82, v80);
}

uint64_t sub_C4788(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      result = sub_1B57E4();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + 8 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_C48DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  memcpy(__dst, a2, 0x231uLL);
  v8 = *(a3 + 96);
  if (*(v8 + 16) && (v5 = __dst, v9 = sub_3ABBC(__dst), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    v12 = sub_2B0C(&qword_228F40, &unk_1BB360);
    v13 = *(v12 + 48);
    v14 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v14 - 8) + 16))(a4, a1, v14);
    memcpy((a4 + v13), __dst, 0x231uLL);
    *(a4 + *(v12 + 64)) = v11;
  }

  else
  {
    v15 = *(sub_2B0C(&qword_228F40, &unk_1BB360) + 48);
    v16 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v16 - 8) + 16))(a4, a1, v16);
    memcpy((a4 + v15), v5, 0x231uLL);
    *(a4 + *(sub_2B0C(&qword_228F40, &unk_1BB360) + 64)) = _swiftEmptySetSingleton;
  }

  type metadata accessor for CollectionRecommendation(0);
  swift_storeEnumTagMultiPayload();
  return sub_4299C(__dst, &v18);
}

uint64_t sub_C4AF4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1B5084(29);
  v9._countAndFlagsBits = 123;
  v9._object = 0xE100000000000000;
  sub_1B48D4(v9);
  CollectionRecommendation.collectionRecommendationType.getter(&v6);
  v10._countAndFlagsBits = CollectionRecommendationType.rawValue.getter();
  sub_1B48D4(v10);

  v11._countAndFlagsBits = 0x7954616964656D20;
  v11._object = 0xEB000000003D6570;
  sub_1B48D4(v11);
  v1 = type metadata accessor for ScoredCollectionRecommendation();
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      v2 = 0xE90000000000006BLL;
      v3._countAndFlagsBits = 0x6F6F626F69647561;
    }

    else
    {
      v2 = 0xE500000000000000;
      v3._countAndFlagsBits = 0x646578696DLL;
    }
  }

  else
  {
    v2 = 0xE500000000000000;
    v3._countAndFlagsBits = 0x6B6F6F6265;
  }

  v3._object = v2;
  sub_1B48D4(v3);

  v12._countAndFlagsBits = 0x3D65726F637320;
  v12._object = 0xE700000000000000;
  sub_1B48D4(v12);
  v4 = *(v0 + *(v1 + 28));
  sub_1B4C94();
  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_1B48D4(v13);
  v14._countAndFlagsBits = CollectionRecommendation.clusteringDebugDescription.getter();
  sub_1B48D4(v14);

  v15._countAndFlagsBits = 125;
  v15._object = 0xE100000000000000;
  sub_1B48D4(v15);
  return v7;
}

uint64_t CollectionRecommendation.clusteringDebugDescription.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_CB8C0(v0, v4, type metadata accessor for CollectionRecommendation);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v5 = v4[3];
    v41[2] = v4[2];
    v41[3] = v5;
    v6 = v4[5];
    v41[4] = v4[4];
    v42 = v6;
    v7 = v4[1];
    v41[0] = *v4;
    v41[1] = v7;
    v39 = 0x3D736569726573;
    v40 = 0xE700000000000000;
    v43 = *&v41[0];
    v44._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v44);

    v45._countAndFlagsBits = 58;
    v45._object = 0xE100000000000000;
    sub_1B48D4(v45);
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BCA80;
    v9 = *(&v42 + 1);
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = v9;
    sub_C6088(v41);
    v46._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v46);

    v11 = v39;
    v10 = v40;
LABEL_21:
    *&v41[0] = 123;
    *(&v41[0] + 1) = 0xE100000000000000;
    CollectionRecommendation.collectionRecommendationType.getter(&v39);
    v54._countAndFlagsBits = CollectionRecommendationType.rawValue.getter();
    sub_1B48D4(v54);

    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    sub_1B48D4(v55);
    v56._countAndFlagsBits = v11;
    v56._object = v10;
    sub_1B48D4(v56);

    v57._countAndFlagsBits = 125;
    v57._object = 0xE100000000000000;
    sub_1B48D4(v57);
    return *&v41[0];
  }

  sub_25FBC(v4, type metadata accessor for CollectionRecommendation);
  v37[1] = v0;
  v12 = CollectionRecommendation.books.getter();
  v13 = v12;
  v14 = *(v12 + 2);
  if (v14 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = *(v12 + 2);
  }

  if (!v14)
  {

    v17 = _swiftEmptyArrayStorage;
LABEL_14:
    *&v41[0] = v17;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
    v30 = sub_1B4764();
    v32 = v31;

    *&v41[0] = 0x28736B6F6F62;
    *(&v41[0] + 1) = 0xE600000000000000;
    v33 = *(CollectionRecommendation.books.getter() + 2);

    v39 = v33;
    v51._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v51);

    v52._countAndFlagsBits = 15657;
    v52._object = 0xE200000000000000;
    sub_1B48D4(v52);
    v53._countAndFlagsBits = v30;
    v53._object = v32;
    sub_1B48D4(v53);

    v34 = *(CollectionRecommendation.books.getter() + 2);

    if (v34 <= 3)
    {
      v35._countAndFlagsBits = 0;
    }

    else
    {
      v35._countAndFlagsBits = 10911970;
    }

    if (v34 <= 3)
    {
      v36 = 0xE000000000000000;
    }

    else
    {
      v36 = 0xA300000000000000;
    }

    v35._object = v36;
    sub_1B48D4(v35);

    v10 = *(&v41[0] + 1);
    v11 = *&v41[0];
    goto LABEL_21;
  }

  v39 = _swiftEmptyArrayStorage;
  result = sub_3747C(0, v15, 0);
  v17 = v39;
  v37[0] = v13;
  v18 = v13 + 3;
  v38 = xmmword_1BCA80;
  while (v15)
  {
    v19 = *(v18 - 2);
    v20 = *(v18 - 8);
    v21 = *v18;
    v22 = *(v18 + 2);
    v23 = *(v18 + 4);
    v24 = *(v18 + 5);
    v25 = *(v18 + 8);
    *&v41[0] = 0;
    *(&v41[0] + 1) = 0xE000000000000000;
    v43 = v19;
    sub_43688(v21, v25);

    v47._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v47);

    v48._countAndFlagsBits = 58;
    v48._object = 0xE100000000000000;
    sub_1B48D4(v48);
    LOBYTE(v43) = v20;
    sub_1B51F4();
    v49._countAndFlagsBits = 58;
    v49._object = 0xE100000000000000;
    sub_1B48D4(v49);
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v26 = swift_allocObject();
    *(v26 + 16) = v38;
    *(v26 + 56) = &type metadata for Double;
    *(v26 + 64) = &protocol witness table for Double;
    *(v26 + 32) = v24;
    v50._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v50);

    sub_43CE0(v21, v25);

    v27 = v41[0];
    v39 = v17;
    v29 = v17[2];
    v28 = v17[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_3747C((v28 > 1), v29 + 1, 1);
      v17 = v39;
    }

    v17[2] = v29 + 1;
    *&v17[2 * v29 + 4] = v27;
    v18 += 4;
    if (!--v15)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_C5268()
{
  v1 = *(v0 + 8);
  sub_2B0C(&qword_22B458, &qword_1C39C8);
  result = sub_1B5294();
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 64);
  v32 = v1 + 64;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v35 = result + 64;
  v36 = v1;
  v33 = v9;
  v34 = result;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v36 + 48) + v13);
      v15 = *(*(v36 + 56) + 8 * v13);
      v16 = *(v15 + 16);
      if (v16)
      {
        v37 = *(*(v36 + 48) + v13);
        v38 = v10 | (v4 << 6);
        v39 = v8;

        sub_3747C(0, v16, 0);
        v17 = _swiftEmptyArrayStorage;
        v18 = 32;
        do
        {
          v40 = *(v15 + v18);
          v19 = sub_1B5594();
          v41 = v17;
          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v31 = v19;
            v24 = v20;
            sub_3747C((v21 > 1), v22 + 1, 1);
            v20 = v24;
            v19 = v31;
            v17 = v41;
          }

          v17[2] = v22 + 1;
          v23 = &v17[2 * v22];
          v23[4] = v19;
          v23[5] = v20;
          v18 += 568;
          --v16;
        }

        while (v16);

        v9 = v33;
        v3 = v34;
        v13 = v38;
        v8 = v39;
        v14 = v37;
      }

      else
      {
        v17 = _swiftEmptyArrayStorage;
      }

      *(v35 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + v13) = v14;
      *(v3[7] + 8 * v13) = v17;
      v25 = v3[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v3[2] = v27;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        sub_2B0C(&qword_228590, &qword_1B6590);
        sub_42EA0();
        v28 = sub_1B46B4();
        v30 = v29;

        v42._countAndFlagsBits = v28;
        v42._object = v30;
        sub_1B48D4(v42);

        return 0;
      }

      v12 = *(v32 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_C551C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_130C10(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t sub_C554C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + 8 * v12);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    v16 = sub_3A6F0(v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = sub_9024(*(*(a2 + 56) + 8 * v16), v14);

    if ((v18 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_C5694()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
LABEL_42:
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  sub_B9588(1uLL, v1 - 1);
  sub_49760(*(*v0 + 16) - 1, &v82);
  result = sub_CB990(v82);
  v64 = v0;
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4 >= 3)
  {
    v5 = 2;
    v6 = 1;
    while (1)
    {
      v80 = v6;
      v81 = v3;
      if (v5 < (v4 - 1))
      {
        if (v5 >= v4)
        {
          goto LABEL_32;
        }

        v7 = &v3[7 * v5 + 4];
        if (!*v7)
        {
          goto LABEL_40;
        }

        if ((v5 | 1) >= v4)
        {
          goto LABEL_33;
        }

        v8 = &v3[7 * (v5 | 1) + 4];
        v9 = *v8;
        if (!*v8)
        {
          goto LABEL_41;
        }

        v10 = *(v7 + 16);
        v72 = *(v7 + 24);
        v75 = *(v7 + 32);
        v78 = *(v7 + 40);
        v11 = *(v7 + 48);
        v13 = *(v8 + 32);
        v12 = *(v8 + 40);
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        v16 = *(v7 + 8);
        v17 = *(v8 + 8);
        v18 = *(v8 + 48);
        sub_CBA28(*v7);
        sub_CBA28(v9);

        if (v17 < v16)
        {
          v5 |= 1uLL;
        }

        v6 = v80;
        v3 = v81;
        v4 = v81[2];
      }

      if (v6 >= v4)
      {
        break;
      }

      v19 = &v3[7 * v6 + 4];
      if (!*v19)
      {
        goto LABEL_38;
      }

      if (v5 >= v4)
      {
        goto LABEL_30;
      }

      v79 = v5;
      v68 = 7 * v5;
      v69 = 7 * v6;
      v20 = &v3[7 * v5 + 4];
      v21 = *v20;
      if (!*v20)
      {
        goto LABEL_39;
      }

      v22 = *(v19 + 16);
      v70 = *(v19 + 24);
      v73 = *(v19 + 32);
      v76 = *(v19 + 40);
      v23 = *(v19 + 48);
      v25 = *(v20 + 32);
      v24 = *(v20 + 40);
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      v28 = *(v19 + 8);
      v29 = *(v20 + 8);
      v30 = *(v20 + 48);
      sub_CBA28(*v19);
      sub_CBA28(v21);

      v3 = v81;
      v31 = v79;
      if (v29 >= v28)
      {
        return result;
      }

      if (v80 != v79)
      {
        v32 = v81[2];
        if (v80 >= v32)
        {
          goto LABEL_34;
        }

        if (v79 >= v32)
        {
          goto LABEL_35;
        }

        v33 = *v19;
        v34 = *(v19 + 8);
        v35 = *(v19 + 16);
        v36 = *(v19 + 24);
        v37 = *(v19 + 32);
        v38 = *(v19 + 40);
        v39 = *(v19 + 48);
        v41 = *v20;
        v40 = *(v20 + 8);
        v42 = *(v20 + 16);
        v43 = *(v20 + 24);
        v44 = *(v20 + 32);
        v45 = *(v20 + 40);
        v46 = *(v20 + 48);
        v71 = v34;
        v74 = v33;
        v66 = v36;
        v67 = v35;
        v65 = v37;
        v77 = v39;
        sub_CBA28(v33);
        sub_CBA28(v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_56ACC(v81);
        }

        v3 = v81;
        if (v80 >= v81[2])
        {
          goto LABEL_36;
        }

        v47 = v81 + 4;
        v48 = &v81[v69 + 4];
        v49 = *v48;
        v50 = v48[1];
        v51 = v48[2];
        v52 = v48[3];
        v53 = v48[4];
        v54 = v48[5];
        *v48 = v41;
        v48[1] = v40;
        v48[2] = v42;
        v48[3] = v43;
        v48[4] = v44;
        v48[5] = v45;
        v55 = *(v48 + 48);
        *(v48 + 48) = v46;
        sub_CB990(v49);
        v31 = v79;
        if (v79 >= v81[2])
        {
          goto LABEL_37;
        }

        v56 = &v47[v68];
        v57 = v47[v68];
        v58 = v47[v68 + 1];
        v59 = v47[v68 + 2];
        v60 = v47[v68 + 3];
        v61 = v47[v68 + 4];
        v62 = v47[v68 + 5];
        *v56 = v74;
        v56[1] = v71;
        v56[2] = v67;
        v56[3] = v66;
        v56[4] = v65;
        v56[5] = v38;
        v63 = LOBYTE(v47[v68 + 6]);
        *(v56 + 48) = v77;
        result = sub_CB990(v57);
        *v64 = v81;
      }

      if ((v31 + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v6 = v31;
      v4 = v3[2];
      v5 = 2 * v31;
      if (v4 <= 2 * v31)
      {
        return result;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_C5ADC()
{
  v1 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v62 = *(v1 - 8);
  v2 = *(v62 + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v58 = &v53 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = __chkstk_darwin(v7);
  v64 = &v53 - v11;
  v12 = __chkstk_darwin(v10);
  v55 = &v53 - v13;
  v14 = __chkstk_darwin(v12);
  v59 = &v53 - v15;
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  v18 = *(*v0 + 16);
  if (v18 == 1)
  {
LABEL_40:
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  sub_B972C(1uLL, v18 - 1);
  sub_49804(*(*v0 + 16) - 1, v17);
  result = sub_42F48(v17, &qword_229408, &unk_1BCC10);
  v54 = v0;
  v20 = *v0;
  v21 = *(*v0 + 16);
  if (v21 >= 3)
  {
    v22 = 2;
    v23 = 1;
    v56 = v9;
    while (1)
    {
      if (v22 < (v21 - 1))
      {
        if (v22 >= v21)
        {
          goto LABEL_31;
        }

        v63 = v23;
        v24 = v20 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
        v25 = *(v62 + 72);
        v26 = v59;
        sub_43050(&v24[v25 * v22], v59, &qword_229408, &unk_1BCC10);
        v27 = type metadata accessor for ScoredCollectionRecommendation();
        v28 = *(*(v27 - 8) + 48);
        if (v28(v26, 1, v27) == 1)
        {
          goto LABEL_38;
        }

        if ((v22 | 1) >= v21)
        {
          goto LABEL_32;
        }

        v29 = &v24[v25 * (v22 | 1)];
        v30 = v55;
        sub_43050(v29, v55, &qword_229408, &unk_1BCC10);
        if (v28(v30, 1, v27) == 1)
        {
          goto LABEL_39;
        }

        v31 = *(v27 + 28);
        v32 = v59;
        v33 = *(v59 + v31);
        v34 = *(v30 + v31);
        sub_25FBC(v30, type metadata accessor for ScoredCollectionRecommendation);
        sub_25FBC(v32, type metadata accessor for ScoredCollectionRecommendation);
        if (v34 < v33)
        {
          v22 |= 1uLL;
        }

        v21 = v20[2];
        v23 = v63;
      }

      if (v23 >= v21)
      {
        break;
      }

      v35 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v63 = v20;
      v60 = v35;
      v36 = v20 + v35;
      v37 = *(v62 + 72);
      v38 = v23;
      v61 = v37 * v23;
      v39 = v20 + v35 + v37 * v23;
      v40 = v64;
      sub_43050(v39, v64, &qword_229408, &unk_1BCC10);
      v41 = type metadata accessor for ScoredCollectionRecommendation();
      v42 = *(*(v41 - 8) + 48);
      if (v42(v40, 1, v41) == 1)
      {
        goto LABEL_36;
      }

      if (v22 >= v21)
      {
        goto LABEL_29;
      }

      v43 = v37 * v22;
      v44 = &v36[v37 * v22];
      v45 = v56;
      sub_43050(v44, v56, &qword_229408, &unk_1BCC10);
      if (v42(v45, 1, v41) == 1)
      {
        goto LABEL_37;
      }

      v46 = *(v41 + 28);
      v47 = v64;
      v48 = *(v64 + v46);
      v49 = *(v45 + v46);
      sub_25FBC(v45, type metadata accessor for ScoredCollectionRecommendation);
      result = sub_25FBC(v47, type metadata accessor for ScoredCollectionRecommendation);
      v20 = v63;
      if (v49 >= v48)
      {
        return result;
      }

      if (v38 != v22)
      {
        v50 = v63[2];
        if (v38 >= v50)
        {
          goto LABEL_33;
        }

        v51 = v61;
        sub_43050(&v36[v61], v58, &qword_229408, &unk_1BCC10);
        if (v22 >= v50)
        {
          goto LABEL_34;
        }

        sub_43050(&v36[v43], v57, &qword_229408, &unk_1BCC10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_56AE0(v20);
        }

        v52 = v20 + v60;
        sub_CBCD4(v57, v20 + v60 + v51);
        if (v22 >= v20[2])
        {
          goto LABEL_35;
        }

        result = sub_CBCD4(v58, &v52[v43]);
        *v54 = v20;
      }

      if ((v22 + 0x4000000000000000) < 0)
      {
        goto LABEL_30;
      }

      v23 = v22;
      v21 = v20[2];
      v22 *= 2;
      if (v21 <= v22)
      {
        return result;
      }
    }

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
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_C60DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v101 = *v100;
    if (!*v100)
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

    v92 = v8 + 2;
    v93 = v8[2];
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[2 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_C66B8((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7);
      v11 = 40 * v9;
      v12 = (*a3 + 40 * v9);
      v15 = *v12;
      v14 = v12 + 5;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14;
        v18 = v14[5];
        v14 += 5;
        ++v16;
        if (v10 < v13 == v18 >= v17)
        {
          v7 = v16 - 1;
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
        v19 = 40 * v7 - 40;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v11);
            v23 = *(v30 + v11 + 16);
            v24 = (v30 + v19);
            v25 = *(v22 + 3);
            v26 = *(v22 + 32);
            v27 = *v22;
            v28 = *(v24 + 4);
            v29 = v24[1];
            *v22 = *v24;
            v22[1] = v29;
            *(v22 + 4) = v28;
            *v24 = v27;
            *(v24 + 16) = v23;
            *(v24 + 3) = v25;
            *(v24 + 32) = v26;
          }

          ++v21;
          v19 -= 40;
          v11 += 40;
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

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_32F04((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
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

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_C66B8((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > v8[2])
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = v35 + 40;
    v37 = *(v35 + 40);
    if (v37 >= *v35)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 48);
    v39 = *(v35 + 56);
    v40 = *(v35 + 64);
    result = *(v35 + 72);
    v41 = *(v35 + 16);
    *v36 = *v35;
    *(v35 + 56) = v41;
    v42 = *(v35 + 32);
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v39;
    *(v35 + 24) = v40;
    *(v35 + 32) = result;
    v35 -= 40;
    *(v36 + 32) = v42;
    if (__CFADD__(v34++, 1))
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

uint64_t sub_C66B8(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

void *sub_C68E4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_C6BC8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_C6974(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_179B18(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_C6A04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_C6BC8(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_C68E4(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_C6BC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v40 = 0;
LABEL_24:
    while (v26)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_31:
      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + 8 * v32);
      v34 = *(a4 + 40);
      result = sub_1B57E4();
      v35 = -1 << *(a4 + 32);
      v36 = result & ~v35;
      if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(a4 + 48) + 8 * v36) != v33)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v39 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_41;
        }

        ++v40;
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
LABEL_38:

        return sub_3D71C(v39, a2, v40, a3);
      }

      v31 = *(a3 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v40 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v6 << 6)));
      v16 = *(a3 + 40);
      result = sub_1B57E4();
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 8 * v18) == v15)
        {
LABEL_18:
          v39[v19] |= v20;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_42;
          }

          ++v40;
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 8 * v18) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
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
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_C6EA8(uint64_t a1, unint64_t a2)
{
  v34 = type metadata accessor for ScoredCollectionRecommendation();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9 == a2)
  {
    v11 = 0;
LABEL_3:
    v12 = v10[3];
    if (v12 < 2)
    {
      return v10;
    }

    v13 = v12 >> 1;
    v14 = __OFSUB__(v13, v11);
    v15 = v13 - v11;
    if (!v14)
    {
      v10[2] = v15;
      return v10;
    }
  }

  else
  {
    v11 = 0;
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = _swiftEmptyArrayStorage + v16;
    v37 = *(v4 + 80);
    v38 = v16;
    v39 = a1 + v16;
    v18 = _swiftEmptyArrayStorage;
    v35 = v9;
    v36 = v4;
    while (a2 < v9)
    {
      v19 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_36;
      }

      v20 = *(v4 + 72);
      result = sub_CB8C0(v39 + v20 * a2, v8, type metadata accessor for ScoredCollectionRecommendation);
      if (v11)
      {
        v10 = v18;
        v14 = __OFSUB__(v11--, 1);
        if (v14)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v21 = v18[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v22 = v8;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        sub_2B0C(&qword_2293F8, &unk_1C3A50);
        v25 = v38;
        v10 = swift_allocObject();
        result = j__malloc_size(v10);
        if (!v20)
        {
          goto LABEL_38;
        }

        v26 = result - v25;
        if (result - v25 == 0x8000000000000000 && v20 == -1)
        {
          goto LABEL_39;
        }

        v28 = v26 / v20;
        v10[2] = v24;
        v10[3] = 2 * (v26 / v20);
        v29 = v10 + v25;
        v30 = v18[3] >> 1;
        v31 = v30 * v20;
        if (v18[2])
        {
          if (v10 < v18 || v29 >= v18 + v38 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v17 = &v29[v31];
        v33 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        v8 = v22;
        v9 = v35;
        v4 = v36;
        v14 = __OFSUB__(v33, 1);
        v11 = v33 - 1;
        if (v14)
        {
LABEL_34:
          __break(1u);
          break;
        }
      }

      result = sub_CBA88(v8, v17, type metadata accessor for ScoredCollectionRecommendation);
      v17 += v20;
      ++a2;
      v18 = v10;
      if (v19 == v9)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_C7158(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2 == a2)
  {
    v4 = 0;
LABEL_25:
    v23 = v3[3];
    if (v23 < 2)
    {
      return v3;
    }

    v24 = v23 >> 1;
    v12 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (!v12)
    {
      v3[2] = v25;
      return v3;
    }
  }

  else
  {
    v5 = a2;
    v4 = 0;
    v6 = (result + 56 * a2 + 80);
    v7 = &_swiftEmptyArrayStorage[4];
    v26 = *(result + 16);
    while (v5 < v2)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

      result = *(v6 - 6);
      v28 = *(v6 - 40);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v27 = *v6;
      v29 = result;
      if (v4)
      {

        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v13 = v3[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_32;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_2B0C(&qword_229410, &qword_1BC4B0);
        v16 = swift_allocObject();
        v17 = (j__malloc_size(v16) - 32) / 56;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v3[3] >> 1;
        v20 = 7 * v19;
        v21 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        v7 = &v16[7 * v19 + 4];
        if (v3[2])
        {
          if (v16 != v3 || v18 >= &v3[v20 + 4])
          {
            memmove(v18, v3 + 4, v20 * 8);
          }

          v3[2] = 0;
        }

        else
        {
        }

        v3 = v16;
        v2 = v26;
        v12 = __OFSUB__(v21, 1);
        v4 = v21 - 1;
        if (v12)
        {
          goto LABEL_31;
        }
      }

      *v7 = v29;
      *(v7 + 1) = v28;
      v7[3] = v9;
      v7[4] = v10;
      v7[5] = v11;
      *(v7 + 48) = v27;
      v7 += 7;
      ++v5;
      v6 += 56;
      if (v8 == v2)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_C73B4(uint64_t a1, uint64_t a2)
{
  CollectionRecommendation.collectionRecommendationType.getter(&v19);
  CollectionRecommendation.collectionRecommendationType.getter(&v18);
  v4 = CollectionRecommendationType.rawValue.getter();
  v6 = v5;
  if (v4 == CollectionRecommendationType.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_1B5604();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = type metadata accessor for ScoredCollectionRecommendation();
  v10 = *(v9 + 20);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (!v11)
  {
    v14 = 0xE500000000000000;
    v13 = 0x6B6F6F6265;
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v11 != 1)
  {
    v14 = 0xE500000000000000;
    v13 = 0x646578696DLL;
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v12 == 1)
    {
      v15 = 0xE90000000000006BLL;
      if (v13 != 0x6F6F626F69647561)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v13 != 0x646578696DLL)
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    if (v14 == v15)
    {

      return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
    }

    goto LABEL_19;
  }

  v13 = 0x6F6F626F69647561;
  v14 = 0xE90000000000006BLL;
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_14:
  v15 = 0xE500000000000000;
  if (v13 == 0x6B6F6F6265)
  {
    goto LABEL_17;
  }

LABEL_19:
  v16 = sub_1B5604();

  if (v16)
  {
    return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
  }

  return 0;
}

uint64_t sub_C75A0(uint64_t result, char **a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 568)
    {
      memcpy(__dst, i, 0x231uLL);
      memcpy(__src, i, 0x231uLL);
      sub_4299C(__dst, v8);
      sub_BFFCC(__src, a2, a3);
      if (v3)
      {
        break;
      }

      memcpy(v8, __src, 0x231uLL);
      result = sub_2601C(v8);
      if (!--v4)
      {
        return result;
      }
    }

    memcpy(v8, __src, 0x231uLL);
    return sub_2601C(v8);
  }

  return result;
}

uint64_t sub_C766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v107 = a3;
  v122 = type metadata accessor for CollectionRecommendation(0);
  v5 = *(*(v122 - 8) + 64);
  v6 = __chkstk_darwin(v122);
  v115 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v114 = &v107 - v9;
  __chkstk_darwin(v8);
  v113 = &v107 - v10;
  v112 = type metadata accessor for ScoredCollectionRecommendation();
  v11 = *(v112 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v112);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = _swiftEmptySetSingleton;
  v15 = sub_130CFC(_swiftEmptyArrayStorage);
  v111 = *(a1 + 16);
  if (!v111)
  {

    v103 = 0;
    v102 = 0;
    v104 = _swiftEmptySetSingleton;
    v19 = _swiftEmptySetSingleton;
    v18 = _swiftEmptySetSingleton;
LABEL_68:
    sub_41C08(v103);
    result = sub_41C08(v102);
    v106 = v107;
    *v107 = a2;
    v106[1] = v18;
    v106[2] = v104;
    v106[3] = v19;
    v106[4] = v15;
    return result;
  }

  v16 = 0;
  v119 = 0;
  v17 = 0;
  v110 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = _swiftEmptySetSingleton;
  v117 = xmmword_1BCA80;
  v19 = _swiftEmptySetSingleton;
  v120 = v14;
  v108 = v11;
  v109 = a1;
  while (v17 < *(a1 + 16))
  {
    v121 = v16;
    v20 = *(v11 + 72);
    v118 = v17;
    sub_CB8C0(v110 + v20 * v17, v14, type metadata accessor for ScoredCollectionRecommendation);
    v21 = CollectionRecommendation.booksIDs.getter();
    v22 = v21[2];
    v123 = v15;
    if (v22)
    {
      v23 = 0;
      v116 = v21;
      v24 = v21 + 4;
      v25 = a2 + 56;
      do
      {
        while (1)
        {
          v26 = v24[v23++];
          v27 = *(a2 + 40);
          v28 = sub_1B57E4();
          v29 = -1 << *(a2 + 32);
          v30 = v28 & ~v29;
          if ((*(v25 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
          {
            break;
          }

LABEL_11:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v124[0] = a2;
          sub_115EFC(v26, v30, isUniquelyReferenced_nonNull_native);
          a2 = v124[0];
          if (v23 == v22)
          {
            goto LABEL_13;
          }

          v25 = v124[0] + 56;
        }

        v31 = ~v29;
        while (*(*(a2 + 48) + 8 * v30) != v26)
        {
          v30 = (v30 + 1) & v31;
          if (((*(v25 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      while (v23 != v22);
LABEL_13:

      v15 = v123;
      v14 = v120;
    }

    else
    {
    }

    v33 = v113;
    sub_CB8C0(v14, v113, type metadata accessor for CollectionRecommendation);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v34 = *(v33 + *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48));
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v35 = swift_allocObject();
      *(v35 + 1) = v117;
      v35[4] = v34;
      v36 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v36 - 8) + 8))(v33, v36);
      v37 = v35[2];
      if (!v37)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_25FBC(v33, type metadata accessor for CollectionRecommendation);
      v35 = _swiftEmptyArrayStorage;
      v37 = _swiftEmptyArrayStorage[2];
      if (!v37)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    v38 = 0;
    v116 = v35;
    v39 = v35 + 4;
    v40 = (v18 + 7);
    do
    {
      while (1)
      {
        v41 = v39[v38++];
        v42 = v18[5];
        v43 = sub_1B57E4();
        v44 = -1 << *(v18 + 32);
        v45 = v43 & ~v44;
        if ((*(v40 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
        {
          break;
        }

LABEL_23:
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v18;
        sub_115EFC(v41, v45, v47);
        v18 = v124[0];
        if (v38 == v37)
        {
          goto LABEL_25;
        }

        v40 = v124[0] + 56;
      }

      v46 = ~v44;
      while (*(v18[6] + 8 * v45) != v41)
      {
        v45 = (v45 + 1) & v46;
        if (((*(v40 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    while (v38 != v37);
LABEL_25:

    v15 = v123;
    v14 = v120;
LABEL_28:
    v48 = v114;
    sub_CB8C0(v14, v114, type metadata accessor for CollectionRecommendation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v50 = v115;
    if (EnumCaseMultiPayload == 2)
    {
      v51 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v124, (v48 + *(v51 + 48)), 0x231uLL);
      v52 = *(v48 + *(v51 + 64));

      sub_2B0C(&qword_229218, &unk_1C0210);
      v53 = swift_allocObject();
      *(v53 + 1) = v117;
      memcpy(v53 + 4, v124, 0x231uLL);
      v54 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v54 - 8) + 8))(v48, v54);
    }

    else
    {
      sub_25FBC(v48, type metadata accessor for CollectionRecommendation);
      v53 = _swiftEmptyArrayStorage;
    }

    sub_5E05C(v53);

    sub_CB8C0(v14, v50, type metadata accessor for CollectionRecommendation);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v55 = *(v50 + *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48));
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v56 = swift_allocObject();
      *(v56 + 1) = v117;
      v56[4] = v55;
      v57 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v57 - 8) + 8))(v50, v57);
      v58 = v56[2];
      if (!v58)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_25FBC(v50, type metadata accessor for CollectionRecommendation);
      v56 = _swiftEmptyArrayStorage;
      v58 = _swiftEmptyArrayStorage[2];
      if (!v58)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    v59 = 0;
    v116 = v56;
    v60 = v56 + 4;
    v61 = (v19 + 7);
    do
    {
      while (1)
      {
        v62 = v60[v59++];
        v63 = v19[5];
        v64 = sub_1B57E4();
        v65 = -1 << *(v19 + 32);
        v66 = v64 & ~v65;
        if ((*(v61 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
        {
          break;
        }

LABEL_39:
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v19;
        sub_115EFC(v62, v66, v68);
        v19 = v124[0];
        if (v59 == v58)
        {
          goto LABEL_41;
        }

        v61 = v124[0] + 56;
      }

      v67 = ~v65;
      while (*(v19[6] + 8 * v66) != v62)
      {
        v66 = (v66 + 1) & v67;
        if (((*(v61 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    while (v59 != v58);
LABEL_41:

    v15 = v123;
    v14 = v120;
LABEL_44:
    CollectionRecommendation.collectionRecommendationType.getter(v124);
    sub_41C08(v121);
    v69 = v124[0];
    LODWORD(v121) = v14[*(v112 + 20)];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v15;
    v72 = sub_3AA80(v69);
    v73 = v15[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_70;
    }

    v76 = v71;
    if (v15[3] >= v75)
    {
      if (v70)
      {
        if (v71)
        {
          goto LABEL_53;
        }
      }

      else
      {
        sub_186D60();
        v15 = v124[0];
        if (v76)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_180C74(v75, v70);
      v15 = v124[0];
      v77 = sub_3AA80(v69);
      if ((v76 & 1) != (v78 & 1))
      {
        goto LABEL_76;
      }

      v72 = v77;
      if (v76)
      {
        goto LABEL_53;
      }
    }

    v79 = sub_130C10(_swiftEmptyArrayStorage);
    v15[(v72 >> 6) + 8] |= 1 << v72;
    *(v15[6] + v72) = v69;
    *(v15[7] + 8 * v72) = v79;
    v80 = v15[2];
    v81 = __OFADD__(v80, 1);
    v82 = v80 + 1;
    if (v81)
    {
      goto LABEL_73;
    }

    v15[2] = v82;
LABEL_53:
    v123 = v15;
    v83 = v15[7];
    sub_41C08(v119);
    v84 = *(v83 + 8 * v72);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = *(v83 + 8 * v72);
    v86 = v124[0];
    *(v83 + 8 * v72) = 0x8000000000000000;
    v88 = sub_3AF28(v121);
    v89 = *(v86 + 16);
    v90 = (v87 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      goto LABEL_71;
    }

    v92 = v87;
    if (*(v86 + 24) >= v91)
    {
      if ((v85 & 1) == 0)
      {
        sub_186C14();
        v86 = v124[0];
      }
    }

    else
    {
      sub_1809A4(v91, v85);
      v86 = v124[0];
      v93 = sub_3AF28(v121);
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_75;
      }

      v88 = v93;
    }

    a1 = v109;
    v95 = *(v83 + 8 * v72);
    *(v83 + 8 * v72) = v86;

    v96 = *(v83 + 8 * v72);
    v15 = v123;
    v14 = v120;
    if ((v92 & 1) == 0)
    {
      v96[(v88 >> 6) + 8] |= 1 << v88;
      *(v96[6] + v88) = v121;
      *(v96[7] + 8 * v88) = 0;
      v97 = v96[2];
      v81 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (v81)
      {
        goto LABEL_74;
      }

      v96[2] = v98;
    }

    v99 = v96[7];
    v100 = *(v99 + 8 * v88);
    v81 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v81)
    {
      goto LABEL_72;
    }

    v17 = v118 + 1;
    *(v99 + 8 * v88) = v101;
    sub_25FBC(v14, type metadata accessor for ScoredCollectionRecommendation);
    v119 = sub_CC290;
    v16 = sub_C551C;
    v11 = v108;
    if (v17 == v111)
    {

      v102 = sub_CC290;
      v103 = sub_C551C;
      v104 = v125;
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_70:
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
  sub_1B5784();
  __break(1u);
LABEL_76:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_C8158(unsigned __int8 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a6;
  v85 = a5;
  v82 = a3;
  v80 = type metadata accessor for ScoredCollectionRecommendation();
  v10 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v83 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CollectionRecommendation(0);
  v12 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v86 = &v78 - v16;
  v17 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v87 = *(v17 - 8);
  v88 = v17;
  v18 = *(v87 + 64);
  __chkstk_darwin(v17);
  v79 = &v78 - v19;
  v92 = *a1;
  v20 = *(a4 + 104);
  v21 = *(a4 + 128);
  v89 = *(a4 + 120);
  v90 = v21;
  v22 = *(a4 + 136);
  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = a2 + 56;
    v91 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v24 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v26 = v20 + 32 + 136 * v24;
      v94 = *v26;
      v27 = *(v26 + 16);
      v28 = *(v26 + 32);
      v29 = *(v26 + 64);
      v97 = *(v26 + 48);
      v98 = v29;
      v95 = v27;
      v96 = v28;
      v30 = *(v26 + 80);
      v31 = *(v26 + 96);
      v32 = *(v26 + 112);
      v102 = *(v26 + 128);
      v100 = v31;
      v101 = v32;
      v99 = v30;
      ++v24;
      a4 = BYTE8(v94);
      if (*(a2 + 16))
      {
        v6 = v94;
        v33 = *(a2 + 40);
        v34 = sub_1B57E4();
        v35 = -1 << *(a2 + 32);
        v36 = v34 & ~v35;
        if ((*(v25 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          while (*(*(a2 + 48) + 8 * v36) != v6)
          {
            v36 = (v36 + 1) & v37;
            if (((*(v25 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          goto LABEL_4;
        }
      }

LABEL_11:
      if (v92)
      {
        if (v92 != 1)
        {
          sub_429F8(&v94, v93);
LABEL_21:
          a4 = v91;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = a4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_37574(0, *(a4 + 16) + 1, 1);
            a4 = v103;
          }

          v6 = *(a4 + 16);
          v39 = *(a4 + 24);
          v40 = (v6 + 1);
          if (v6 >= v39 >> 1)
          {
            v91 = (v6 + 1);
            sub_37574((v39 > 1), v6 + 1, 1);
            v40 = v91;
            a4 = v103;
          }

          *(a4 + 16) = v40;
          v91 = a4;
          v41 = a4 + 136 * v6;
          *(v41 + 32) = v94;
          v42 = v95;
          v43 = v96;
          v44 = v98;
          *(v41 + 80) = v97;
          *(v41 + 96) = v44;
          *(v41 + 48) = v42;
          *(v41 + 64) = v43;
          v45 = v99;
          v46 = v100;
          v47 = v101;
          *(v41 + 160) = v102;
          *(v41 + 128) = v46;
          *(v41 + 144) = v47;
          *(v41 + 112) = v45;
          goto LABEL_4;
        }

        if (a4)
        {
          goto LABEL_20;
        }

        v6 = sub_1B5604();
        sub_429F8(&v94, v93);

        if (v6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((a4 & 1) == 0)
        {
LABEL_20:
          sub_429F8(&v94, v93);

          goto LABEL_21;
        }

        v6 = sub_1B5604();
        sub_429F8(&v94, v93);

        if (v6)
        {
          goto LABEL_21;
        }
      }

      sub_5C740(&v94);
LABEL_4:
      if (v24 == v23)
      {
        goto LABEL_27;
      }
    }
  }

  v91 = _swiftEmptyArrayStorage;
LABEL_27:
  a4 = sub_43174(v90, v91);
  if ((v50 & 1) == 0)
  {
    goto LABEL_28;
  }

  v6 = v50;
  v20 = v49;
  v23 = v48;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    swift_unknownObjectRelease();
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = v53[2];

  if (__OFSUB__(v6 >> 1, v20))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v54 != (v6 >> 1) - v20)
  {
LABEL_50:
    swift_unknownObjectRelease();
    v50 = v6;
    v49 = v20;
    v48 = v23;
LABEL_28:
    sub_5136C(a4, v48, v49, v50);
    v52 = v51;
    goto LABEL_35;
  }

  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
    v52 = _swiftEmptyArrayStorage;
  }

LABEL_35:
  swift_unknownObjectRelease();
  v55 = v52[2];
  if (v55)
  {
    v103 = _swiftEmptyArrayStorage;
    sub_375F8(0, v55, 0);
    v56 = v103;
    v57 = v55 - 1;
    for (i = 4; ; i += 17)
    {
      v59 = *&v52[i];
      v60 = *&v52[i + 2];
      v61 = *&v52[i + 6];
      v96 = *&v52[i + 4];
      v97 = v61;
      v94 = v59;
      v95 = v60;
      sub_42BA4(&v94, v93);
      v103 = v56;
      v63 = v56[2];
      v62 = v56[3];
      if (v63 >= v62 >> 1)
      {
        sub_375F8((v62 > 1), v63 + 1, 1);
        v56 = v103;
      }

      v56[2] = v63 + 1;
      v64 = &v56[8 * v63];
      v65 = v94;
      v66 = v95;
      v67 = v97;
      v64[4] = v96;
      v64[5] = v67;
      v64[2] = v65;
      v64[3] = v66;
      if (!v57)
      {
        break;
      }

      --v57;
    }
  }

  else
  {

    v56 = _swiftEmptyArrayStorage;
  }

  if (v56[2] < v89)
  {
  }

  *&v94 = v56;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
  v69 = v86;
  sub_1B43C4();
  v70 = v87;
  v71 = v88;
  if ((*(v87 + 48))(v69, 1, v88) == 1)
  {
    return sub_42F48(v69, &qword_2296F0, &unk_1C3A10);
  }

  v72 = v79;
  (*(v70 + 32))(v79, v69, v71);
  v73 = v81;
  (*(v70 + 16))(v81, v72, v71);
  swift_storeEnumTagMultiPayload();
  v74 = sub_1AB914(v22);
  v75 = v83;
  sub_CB8C0(v73, v83, type metadata accessor for CollectionRecommendation);
  v76 = v80;
  *(v75 + *(v80 + 20)) = v92;
  *(v75 + *(v76 + 24)) = v82 & 1;
  *(v75 + *(v76 + 28)) = v74;
  v77 = *(v84 + 208);
  swift_beginAccess();
  sub_BE058(v75, v77);
  swift_endAccess();
  sub_25FBC(v75, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v73, type metadata accessor for CollectionRecommendation);
  return (*(v70 + 8))(v72, v71);
}

uint64_t sub_C8964(unsigned __int8 *a1, void *a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v95 = a6;
  v96 = a5;
  v93 = a3;
  v91 = type metadata accessor for ScoredCollectionRecommendation();
  v10 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v94 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CollectionRecommendation(0);
  v12 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v92 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v97 = &v89 - v16;
  v17 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v98 = *(v17 - 8);
  v99 = v17;
  v18 = *(v98 + 64);
  __chkstk_darwin(v17);
  v90 = &v89 - v19;
  v103 = *a1;
  v20 = a4[13];
  v21 = a4[16];
  v100 = a4[15];
  v101 = v21;
  v22 = *(a4 + 17);
  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = a4[7];
    v26 = v20 + 32;
    v104 = v25;
    v105 = a2;
    v27 = (a2 + 7);
    v102 = _swiftEmptyArrayStorage;
    while (1)
    {
      while (1)
      {
        if (v24 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v28 = v26 + 136 * v24;
        v107 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 64);
        v110 = *(v28 + 48);
        v111 = v31;
        v108 = v29;
        v109 = v30;
        v32 = *(v28 + 80);
        v33 = *(v28 + 96);
        v34 = *(v28 + 112);
        v115 = *(v28 + 128);
        v113 = v33;
        v114 = v34;
        v112 = v32;
        ++v24;
        v6 = v31;
        sub_429F8(&v107, v106);
        if ((sub_C4788(v6, v25) & 1) == 0)
        {
          break;
        }

        sub_5C740(&v107);
LABEL_4:
        if (v24 == v23)
        {
          goto LABEL_27;
        }
      }

      v35 = v26;
      v36 = BYTE8(v107);
      if (v105[2])
      {
        v6 = v107;
        v37 = v20;
        v38 = v23;
        v39 = v105;
        v40 = v105[5];
        v41 = sub_1B57E4();
        v42 = *(v39 + 32);
        v23 = v38;
        v20 = v37;
        v43 = -1 << v42;
        v44 = v41 & ~(-1 << v42);
        if ((*(v27 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
        {
          v45 = ~v43;
          while (*(v105[6] + 8 * v44) != v6)
          {
            v44 = (v44 + 1) & v45;
            if (((*(v27 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

LABEL_18:
          sub_5C740(&v107);
          v26 = v35;
          v25 = v104;
          goto LABEL_4;
        }
      }

LABEL_12:
      if (v103)
      {
        if (v103 != 1)
        {
          goto LABEL_20;
        }

        if (v36)
        {
          goto LABEL_19;
        }
      }

      else if ((v36 & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      v6 = sub_1B5604();

      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_20:
      v46 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v46;
      v116 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_37574(0, v46[2] + 1, 1);
        v48 = v116;
      }

      v26 = v35;
      v6 = v48[2];
      v49 = v48[3];
      v50 = (v6 + 1);
      if (v6 >= v49 >> 1)
      {
        v102 = (v6 + 1);
        sub_37574((v49 > 1), v6 + 1, 1);
        v50 = v102;
        v26 = v35;
        v48 = v116;
      }

      v48[2] = v50;
      v102 = v48;
      v51 = &v48[17 * v6];
      *(v51 + 2) = v107;
      v52 = v108;
      v53 = v109;
      v54 = v111;
      *(v51 + 5) = v110;
      *(v51 + 6) = v54;
      *(v51 + 3) = v52;
      *(v51 + 4) = v53;
      v55 = v112;
      v56 = v113;
      v57 = v114;
      *(v51 + 160) = v115;
      *(v51 + 8) = v56;
      *(v51 + 9) = v57;
      *(v51 + 7) = v55;
      v25 = v104;
      if (v24 == v23)
      {
        goto LABEL_27;
      }
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_27:
  v26 = sub_43174(v101, v102);
  if ((v60 & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = v60;
  v6 = v59;
  v20 = v58;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = _swiftEmptyArrayStorage;
  }

  v64 = v63[2];

  if (__OFSUB__(v27 >> 1, v6))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v64 != (v27 >> 1) - v6)
  {
LABEL_50:
    swift_unknownObjectRelease();
    v60 = v27;
    v59 = v6;
    v58 = v20;
LABEL_28:
    sub_5136C(v26, v58, v59, v60);
    v62 = v61;
    goto LABEL_35;
  }

  v62 = swift_dynamicCastClass();
  if (!v62)
  {
    swift_unknownObjectRelease();
    v62 = _swiftEmptyArrayStorage;
  }

LABEL_35:
  swift_unknownObjectRelease();
  v65 = v62[2];
  if (v65)
  {
    v116 = _swiftEmptyArrayStorage;
    sub_375F8(0, v65, 0);
    v66 = v116;
    v67 = v65 - 1;
    for (i = 4; ; i += 17)
    {
      v69 = *&v62[i];
      v70 = *&v62[i + 2];
      v71 = *&v62[i + 6];
      v109 = *&v62[i + 4];
      v110 = v71;
      v107 = v69;
      v108 = v70;
      sub_42BA4(&v107, v106);
      v116 = v66;
      v73 = v66[2];
      v72 = v66[3];
      if (v73 >= v72 >> 1)
      {
        sub_375F8((v72 > 1), v73 + 1, 1);
        v66 = v116;
      }

      v66[2] = v73 + 1;
      v74 = &v66[8 * v73];
      v75 = v107;
      v76 = v108;
      v77 = v110;
      v74[4] = v109;
      v74[5] = v77;
      v74[2] = v75;
      v74[3] = v76;
      if (!v67)
      {
        break;
      }

      --v67;
    }
  }

  else
  {

    v66 = _swiftEmptyArrayStorage;
  }

  if (v66[2] < v100)
  {
  }

  *&v107 = v66;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580);
  v79 = v97;
  sub_1B43C4();
  v81 = v98;
  v80 = v99;
  if ((*(v98 + 48))(v79, 1, v99) == 1)
  {
    return sub_42F48(v79, &qword_2296F0, &unk_1C3A10);
  }

  v82 = v90;
  (*(v81 + 32))(v90, v79, v80);
  v83 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
  v84 = v92;
  (*(v81 + 16))(v92, v82, v80);
  *(v84 + v83) = 2;
  swift_storeEnumTagMultiPayload();
  v85 = sub_1AB914(v22);
  v86 = v94;
  sub_CB8C0(v84, v94, type metadata accessor for CollectionRecommendation);
  v87 = v91;
  *(v86 + *(v91 + 20)) = v103;
  *(v86 + *(v87 + 24)) = v93 & 1;
  *(v86 + *(v87 + 28)) = v85;
  v88 = *(v95 + 208);
  swift_beginAccess();
  sub_BE058(v86, v88);
  swift_endAccess();
  sub_25FBC(v86, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v84, type metadata accessor for CollectionRecommendation);
  return (*(v81 + 8))(v82, v80);
}

uint64_t sub_C91B4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, char *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v354 = a7;
  v355 = a8;
  LODWORD(v379) = a5;
  v381 = a4;
  v382 = a2;
  v361 = a3;
  v24 = type metadata accessor for CollectionRecommendation(0);
  v348 = *(v24 - 8);
  v25 = *(v348 + 64);
  __chkstk_darwin(v24 - 8);
  v349 = &v347 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ScoredCollectionRecommendation();
  v366 = *(v27 - 8);
  v28 = *(v366 + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v375 = &v347 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v364 = &v347 - v31;
  v32 = *a1;
  v352 = a1[1];
  v353 = v32;
  v33 = a1[2];
  v383 = a1[3];
  v34 = a1[5];
  v360 = a1[4];
  v362 = v34;
  v363 = v33;
  v35 = a1[6];
  swift_getKeyPath();
  v450[0] = a6;

  sub_191A64(v450);

  v368 = 0;
  v36 = a12;

  v37 = v450[0];
  v370 = sub_13096C(_swiftEmptyArrayStorage);
  v374 = sub_13096C(_swiftEmptyArrayStorage);
  v357 = v35;

  v350 = a12;

  v358 = a14;

  *&v359 = a15;

  v356 = a16;

  v351 = a17;

  *(&v359 + 1) = a18;

  v38 = v383;

  v389 = sub_130A80(_swiftEmptyArrayStorage);
  v39 = sub_130AA4(_swiftEmptyArrayStorage);
  v40 = *(v37 + 16);
  v377 = v37;
  v365 = v40;
  if (!v40)
  {

    v369 = 0.0;
    v373 = 0;
    goto LABEL_128;
  }

  v369 = 0.0;
  v41 = 0;
  v367 = v37 + 32;
  v43 = v381;
  v42 = v382;
  v44 = v381 + 56;
  *&v386 = v381 + 56;
  v376 = v38 + 56;
  v372 = v382 + 56;
  v373 = 0;
LABEL_5:
  if (v41 >= *(v37 + 16))
  {
    goto LABEL_296;
  }

  v380 = v39;
  v45 = v367 + 136 * v41;
  v451 = *v45;
  v46 = *(v45 + 16);
  v47 = *(v45 + 32);
  v48 = *(v45 + 48);
  v455 = *(v45 + 64);
  v454 = v48;
  v453 = v47;
  v452 = v46;
  v49 = *(v45 + 80);
  v50 = *(v45 + 96);
  v51 = *(v45 + 112);
  v459 = *(v45 + 128);
  v458 = v51;
  v457 = v50;
  v456 = v49;
  v371 = (v41 + 1);
  v52 = *(&v455 + 1) + 56;
  v53 = 1 << *(*(&v455 + 1) + 32);
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 & *(*(&v455 + 1) + 56);
  v56 = (v53 + 63) >> 6;
  v385 = *(&v455 + 1);

  v37 = 0;
LABEL_10:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (v55)
          {
            goto LABEL_15;
          }

          do
          {
            v57 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_169;
            }

            if (v57 >= v56)
            {
              v103 = v455;
              sub_429F8(&v451, &v400);

              v104 = v103 + 56;
              v105 = 1 << *(v103 + 32);
              if (v105 < 64)
              {
                v106 = ~(-1 << v105);
              }

              else
              {
                v106 = -1;
              }

              v107 = v106 & *(v103 + 56);
              v108 = (v105 + 63) >> 6;
              v384 = v103;

              v109 = v107;
              v36 = 0;
              v110 = v372;
LABEL_52:
              while (v109)
              {
                v111 = v109;
LABEL_58:
                v109 = (v111 - 1) & v111;
                if (*(v42 + 16))
                {
                  v37 = *(*(v384 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v111)))));
                  v113 = *(v42 + 40);
                  v385 = (v111 - 1) & v111;
                  v114 = sub_1B57E4();
                  v109 = v385;
                  v115 = -1 << *(v42 + 32);
                  v116 = v114 & ~v115;
                  if ((*(v110 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116))
                  {
                    v117 = ~v115;
                    while (*(*(v42 + 48) + 8 * v116) != v37)
                    {
                      v116 = (v116 + 1) & v117;
                      if (((*(v110 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
                      {
                        goto LABEL_52;
                      }
                    }

                    sub_41C08(v373);
                    v42 = v374;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&v400 = v42;
                    v120 = sub_43124(v37);
                    v121 = *(v42 + 16);
                    v122 = (v119 & 1) == 0;
                    v123 = v121 + v122;
                    if (__OFADD__(v121, v122))
                    {
                      goto LABEL_298;
                    }

                    v124 = v119;
                    if (*(v42 + 24) >= v123)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_1856BC();
                      }
                    }

                    else
                    {
                      sub_17DB60(v123, isUniquelyReferenced_nonNull_native);
                      v125 = sub_43124(v37);
                      if ((v124 & 1) != (v126 & 1))
                      {
                        goto LABEL_307;
                      }

                      v120 = v125;
                    }

                    v44 = v386;
                    v127 = v400;
                    if ((v124 & 1) == 0)
                    {
                      sub_15C8E0(v120, v37, _swiftEmptyArrayStorage, v400);
                    }

                    v374 = v127;
                    v128 = v127[7];
                    v129 = *(v128 + 8 * v120);
                    v130 = swift_isUniquelyReferenced_nonNull_native();
                    *(v128 + 8 * v120) = v129;
                    if ((v130 & 1) == 0)
                    {
                      v129 = sub_33358(0, *(v129 + 2) + 1, 1, v129);
                      *(v128 + 8 * v120) = v129;
                    }

                    v132 = *(v129 + 2);
                    v131 = *(v129 + 3);
                    if (v132 >= v131 >> 1)
                    {
                      v129 = sub_33358((v131 > 1), v132 + 1, 1, v129);
                      *(v128 + 8 * v120) = v129;
                    }

                    v110 = v372;
                    *(v129 + 2) = v132 + 1;
                    v133 = &v129[136 * v132];
                    *(v133 + 2) = v451;
                    v134 = v452;
                    v135 = v453;
                    v136 = v455;
                    *(v133 + 5) = v454;
                    *(v133 + 6) = v136;
                    *(v133 + 3) = v134;
                    *(v133 + 4) = v135;
                    v137 = v456;
                    v138 = v457;
                    v139 = v458;
                    v133[160] = v459;
                    *(v133 + 8) = v138;
                    *(v133 + 9) = v139;
                    *(v133 + 7) = v137;
                    sub_429F8(&v451, &v400);
                    v373 = sub_CC28C;
                    v42 = v382;
                    v38 = v383;
                    v43 = v381;
                    v109 = v385;
                  }
                }
              }

              while (1)
              {
                v112 = v36 + 1;
                if (__OFADD__(v36, 1))
                {
                  goto LABEL_170;
                }

                if (v112 >= v108)
                {
                  break;
                }

                v111 = *(v104 + 8 * v112);
                ++v36;
                if (v111)
                {
                  v36 = v112;
                  goto LABEL_58;
                }
              }

              v140 = v454;
              if (v454)
              {
                v141 = 1 << *(v454 + 32);
                if (v141 < 64)
                {
                  v142 = ~(-1 << v141);
                }

                else
                {
                  v142 = -1;
                }

                v143 = v142 & *(v454 + 64);
                v37 = (v141 + 63) >> 6;
                swift_bridgeObjectRetain_n();
                v144 = v140 + 64;
                v38 = 0;
                v145 = _swiftEmptyArrayStorage;
                v39 = v380;
                v384 = v140;
                v385 = v140 + 64;
                while (v143)
                {
LABEL_88:
                  v36 = *(*(v140 + 56) + ((v38 << 9) | (8 * __clz(__rbit64(v143)))));
                  v42 = *(v36 + 16);
                  v147 = *(v145 + 2);
                  v148 = v147 + v42;
                  if (__OFADD__(v147, v42))
                  {
                    goto LABEL_291;
                  }

                  v149 = swift_isUniquelyReferenced_nonNull_native();
                  if (!v149 || v148 > *(v145 + 3) >> 1)
                  {
                    if (v147 <= v148)
                    {
                      v150 = v147 + v42;
                    }

                    else
                    {
                      v150 = v147;
                    }

                    v145 = sub_33128(v149, v150, 1, v145);
                  }

                  v44 = v386;
                  v140 = v384;
                  v143 &= v143 - 1;
                  if (*(v36 + 16))
                  {
                    if ((*(v145 + 3) >> 1) - *(v145 + 2) < v42)
                    {
                      goto LABEL_295;
                    }

                    swift_arrayInitWithCopy();

                    v144 = v385;
                    if (v42)
                    {
                      v151 = *(v145 + 2);
                      v86 = __OFADD__(v151, v42);
                      v152 = v151 + v42;
                      if (v86)
                      {
                        goto LABEL_297;
                      }

                      *(v145 + 2) = v152;
                    }
                  }

                  else
                  {

                    v144 = v385;
                    if (v42)
                    {
                      goto LABEL_292;
                    }
                  }
                }

                while (1)
                {
                  v146 = v38 + 1;
                  if (__OFADD__(v38, 1))
                  {
                    goto LABEL_172;
                  }

                  if (v146 >= v37)
                  {
                    break;
                  }

                  v143 = *(v144 + 8 * v146);
                  ++v38;
                  if (v143)
                  {
                    v38 = v146;
                    goto LABEL_88;
                  }
                }

                *&v400 = v145;
                sub_2B0C(&qword_22AA48, &qword_1CD280);
                sub_42094(&qword_22B470, &qword_22AA48, &qword_1CD280);
                v153 = v368;
                v154 = sub_1B4984();

                sub_429F8(&v451, &v400);
                sub_C75A0(v154, &v389, &v451);
                v368 = v153;
                sub_5C740(&v451);
                sub_5C740(&v451);

                v155 = 1 << *(v140 + 32);
                if (v155 < 64)
                {
                  v156 = ~(-1 << v155);
                }

                else
                {
                  v156 = -1;
                }

                v36 = v156 & *(v140 + 64);
                v378 = (v155 + 63) >> 6;

                v157 = 0;
LABEL_105:
                v42 = v382;
                v38 = v383;
                v43 = v381;
                if (v36)
                {
                  goto LABEL_110;
                }

                while (1)
                {
                  v158 = v157 + 1;
                  if (__OFADD__(v157, 1))
                  {
                    goto LABEL_173;
                  }

                  if (v158 >= v378)
                  {
                    break;
                  }

                  v36 = *(v385 + 8 * v158);
                  ++v157;
                  if (v36)
                  {
                    v157 = v158;
LABEL_110:
                    v159 = __clz(__rbit64(v36)) | (v157 << 6);
                    v160 = *(*(v140 + 48) + v159);
                    v38 = *(*(*(v140 + 56) + 8 * v159) + 16);

                    v380 = v161;
                    if (!v38)
                    {
LABEL_104:
                      v36 &= v36 - 1;

                      v44 = v386;
                      v140 = v384;
                      goto LABEL_105;
                    }

                    v162 = (v161 + 32);
                    while (2)
                    {
                      memcpy(v450, v162, 0x231uLL);
                      sub_4299C(v450, &v400);
                      sub_4299C(v450, &v400);
                      v164 = v39;
                      v165 = swift_isUniquelyReferenced_nonNull_native();
                      *&v400 = v164;
                      v167 = sub_3ABBC(v450);
                      v168 = v164[2];
                      v169 = (v166 & 1) == 0;
                      v170 = v168 + v169;
                      if (__OFADD__(v168, v169))
                      {
                        __break(1u);
LABEL_169:
                        __break(1u);
LABEL_170:
                        __break(1u);
LABEL_171:
                        __break(1u);
LABEL_172:
                        __break(1u);
LABEL_173:
                        __break(1u);
LABEL_174:
                        if (*(v36 + 16))
                        {
                          v206 = sub_3AA80(11);
                          if ((v214 & 1) == 0)
                          {
                            v211 = 0;
                            *&v212 = 0.0;
                            v213 = 0.0;
                            goto LABEL_178;
                          }

LABEL_167:
                          v210 = *(v363 + 56) + 24 * v206;
                          v211 = *v210;
                          v212 = *(v210 + 8);
                          v213 = *(v210 + 16);

                          goto LABEL_178;
                        }

                        goto LABEL_177;
                      }

                      v171 = v166;
                      if (v164[3] >= v170)
                      {
                        if (v165)
                        {
                          v39 = v400;
                          if ((v166 & 1) == 0)
                          {
                            goto LABEL_121;
                          }
                        }

                        else
                        {
                          sub_186ED0();
                          v39 = v400;
                          if ((v171 & 1) == 0)
                          {
                            goto LABEL_121;
                          }
                        }
                      }

                      else
                      {
                        sub_1810E8(v170, v165);
                        v172 = sub_3ABBC(v450);
                        if ((v171 & 1) != (v173 & 1))
                        {
                          sub_1B5784();
                          __break(1u);
                          goto LABEL_307;
                        }

                        v167 = v172;
                        v39 = v400;
                        if ((v171 & 1) == 0)
                        {
LABEL_121:
                          v39[(v167 >> 6) + 8] |= 1 << v167;
                          memcpy((v39[6] + 568 * v167), v450, 0x231uLL);
                          *(v39[7] + 8 * v167) = _swiftEmptySetSingleton;
                          v174 = v39[2];
                          v86 = __OFADD__(v174, 1);
                          v175 = v174 + 1;
                          if (v86)
                          {
                            goto LABEL_171;
                          }

                          v39[2] = v175;
                          goto LABEL_113;
                        }
                      }

                      sub_2601C(v450);
LABEL_113:
                      v163 = v39[7] + 8 * v167;
                      sub_1122C4(&v400, v160);
                      sub_2601C(v450);
                      v162 += 568;
                      if (!--v38)
                      {
                        goto LABEL_104;
                      }

                      continue;
                    }
                  }
                }
              }

              else
              {
                sub_5C740(&v451);
                v39 = v380;
              }

              v41 = v371;
              v37 = v377;
              if (v371 != v365)
              {
                goto LABEL_5;
              }

LABEL_128:
              v37 = v370;
              v380 = v39;
              if (v360 < 1)
              {

                v180 = 0;
              }

              else
              {
                v176 = *(v356 + 16);
                v177 = (v356 + 32);
                v385 = 0x80000000001D4780;
                *&v386 = 0x80000000001D47A0;
                v384 = 0x80000000001D4760;

                while (2)
                {
                  v179 = v176-- != 0;
                  v180 = v179;
                  if (v179)
                  {
                    switch(*v177)
                    {
                      case 2:

                        v180 = 1;
                        break;
                      default:
                        v178 = sub_1B5604();

                        ++v177;
                        if ((v178 & 1) == 0)
                        {
                          continue;
                        }

                        break;
                    }
                  }

                  break;
                }
              }

              v182 = v362;
              v181 = v363;
              v183 = v383;
              v184 = v357;
              v185 = v380;
              if (!*(v363 + 16))
              {
                goto LABEL_159;
              }

              sub_3AA80(2);
              if (v186)
              {

                goto LABEL_144;
              }

              if (*(v181 + 16))
              {
                sub_3AA80(5);
                v188 = v187;

                if ((v188 & 1) == 0 && ((v180 ^ 1) & 1) == 0)
                {
LABEL_144:
                  v189 = 1 << *(v37 + 32);
                  v190 = -1;
                  if (v189 < 64)
                  {
                    v190 = ~(-1 << v189);
                  }

                  v191 = v190 & *(v37 + 64);
                  v38 = (v189 + 63) >> 6;

                  v192 = 0;
                  v42 = v37;
LABEL_147:
                  if (v191)
                  {
                    goto LABEL_153;
                  }

                  v183 = v383;
                  while (1)
                  {
                    v193 = v192 + 1;
                    if (__OFADD__(v192, 1))
                    {
                      goto LABEL_293;
                    }

                    if (v193 >= v38)
                    {
                      break;
                    }

                    v191 = *(v37 + 64 + 8 * v193);
                    ++v192;
                    if (v191)
                    {
                      v192 = v193;
LABEL_153:
                      v194 = __clz(__rbit64(v191));
                      v191 &= v191 - 1;
                      v195 = (v192 << 9) | (8 * v194);
                      v196 = *(*(v37 + 48) + v195);
                      v197 = *(*(v37 + 56) + v195);

                      v199 = sub_C01C8(v198);

                      if (v199)
                      {
                        v200 = sub_43124(v196);
                        if (v201)
                        {
                          v202 = v200;
                          v203 = v370;
                          v204 = swift_isUniquelyReferenced_nonNull_native();
                          *&v400 = v203;
                          if (!v204)
                          {
                            sub_1856BC();
                            v203 = v400;
                          }

                          v205 = *(*(v203 + 56) + 8 * v202);

                          sub_535B8(v202, v203);
                          v370 = v203;
                          v42 = v203;
                        }
                      }

                      goto LABEL_147;
                    }
                  }

                  v182 = v362;
                  v184 = v357;
                  v185 = v380;
LABEL_161:
                  sub_41C08(*&v369);
                  sub_41C08(v373);
                  *&v400 = v353;
                  *(&v400 + 1) = v352;
                  *&v401 = v363;
                  *(&v401 + 1) = v183;
                  *&v402 = v360;
                  *(&v402 + 1) = v182;
                  *&v403 = v184;
                  v378 = a19;
                  *(&v403 + 1) = v382;
                  v38 = v361;
                  *&v404 = v361;
                  *(&v404 + 1) = v42;
                  *&v405 = v374;
                  *(&v405 + 1) = v389;
                  *&v406 = v185;
                  *(&v406 + 1) = v377;
                  *&v407 = a11;
                  *(&v407 + 1) = v354;
                  *&v408 = v355;
                  *(&v408 + 1) = a9;
                  *&v409 = a10;
                  *(&v409 + 1) = v350;
                  *&v410 = a13;
                  *(&v410 + 1) = v358;
                  *&v411 = v359;
                  *(&v411 + 1) = v356;
                  *&v412 = v351;
                  *(&v412 + 1) = *(&v359 + 1);
                  v413 = a19;
                  v388 = &off_213220;
                  if (*(v363 + 16))
                  {
                    v36 = v363;
                    v206 = sub_3AA80(0);
                    if (v207)
                    {
                      goto LABEL_167;
                    }

                    if (*(v36 + 16))
                    {
                      v206 = sub_3AA80(10);
                      if (v208)
                      {
                        goto LABEL_167;
                      }

                      if (*(v36 + 16))
                      {
                        v206 = sub_3AA80(9);
                        if ((v209 & 1) == 0)
                        {
                          goto LABEL_174;
                        }

                        goto LABEL_167;
                      }
                    }
                  }

LABEL_177:
                  v211 = 0;
                  *&v212 = 0.0;
                  v213 = 0.0;
LABEL_178:
                  v439 = v410;
                  v440 = v411;
                  v441 = v412;
                  v435 = v406;
                  v436 = v407;
                  v437 = v408;
                  v438 = v409;
                  v431 = v402;
                  v432 = v403;
                  v433 = v404;
                  v434 = v405;
                  v429 = v400;
                  v430 = v401;
                  v425 = v410;
                  v426 = v411;
                  v427 = v412;
                  v421 = v406;
                  v422 = v407;
                  v423 = v408;
                  v424 = v409;
                  v417 = v402;
                  v418 = v403;
                  v419 = v404;
                  v420 = v405;
                  v442 = v413;
                  v443 = v211;
                  v362 = v212;
                  v444 = *&v212;
                  v445 = v213;
                  v428 = v413;
                  v415 = v400;
                  v416 = v401;
                  v215 = sub_B9AD0();
                  v216 = sub_B9E78(&v443, v215);
                  v218 = v217;

                  v387 = v218;
                  v219 = *(v38 + 32);
                  v220 = v219 & 0x3F;
                  v42 = ((1 << v219) + 63) >> 6;
                  v37 = 8 * v42;

                  v369 = v213;
                  v363 = v211;
                  v371 = v216;
                  v367 = v218;
                  if (v220 <= 0xD)
                  {

                    goto LABEL_180;
                  }

                  goto LABEL_302;
                }
              }

              else
              {
LABEL_159:

                if (v180)
                {
                  goto LABEL_144;
                }
              }

              v42 = v37;
              goto LABEL_161;
            }

            v55 = *(v52 + 8 * v57);
            ++v37;
          }

          while (!v55);
          v37 = v57;
LABEL_15:
          v58 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          v36 = *(*(v385 + 48) + ((v37 << 9) | (8 * v58)));
          v59 = *(v43 + 16);
          if ((v379 & 1) == 0)
          {
            if (v59)
            {
              v70 = *(v43 + 40);
              v71 = sub_1B57E4();
              v72 = -1 << *(v43 + 32);
              v73 = v71 & ~v72;
              if ((*(v44 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
              {
                v74 = ~v72;
                while (*(*(v43 + 48) + 8 * v73) != v36)
                {
                  v73 = (v73 + 1) & v74;
                  if (((*(v44 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
                  {
                    goto LABEL_10;
                  }
                }

                goto LABEL_21;
              }
            }

            continue;
          }

          break;
        }

        if (v59)
        {
          v60 = *(v43 + 40);
          v61 = sub_1B57E4();
          v62 = -1 << *(v43 + 32);
          v63 = v61 & ~v62;
          if ((*(v44 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
          {
            v64 = ~v62;
            while (*(*(v43 + 48) + 8 * v63) != v36)
            {
              v63 = (v63 + 1) & v64;
              if (((*(v44 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            continue;
          }
        }

        break;
      }

LABEL_21:
      if (*(v38 + 16))
      {
        v65 = *(v38 + 40);
        v66 = sub_1B57E4();
        v67 = -1 << *(v38 + 32);
        v68 = v66 & ~v67;
        if ((*(v376 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (*(*(v38 + 48) + 8 * v68) != v36)
          {
            v68 = (v68 + 1) & v69;
            if (((*(v376 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          break;
        }

        continue;
      }

      break;
    }

    sub_429F8(&v451, &v400);
    sub_41C08(*&v369);
    v42 = v370;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v400 = v42;
    v77 = sub_43124(v36);
    v78 = *(v42 + 16);
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_299;
    }

    v81 = v76;
    if (*(v42 + 24) >= v80)
    {
      if ((v75 & 1) == 0)
      {
        v42 = &v400;
        v38 = v77;
        sub_1856BC();
        v77 = v38;
      }
    }

    else
    {
      sub_17DB60(v80, v75);
      v42 = v400;
      v82 = sub_43124(v36);
      if ((v81 & 1) != (v83 & 1))
      {
LABEL_307:
        sub_1B5784();
        __break(1u);
LABEL_308:
        sub_1B5234();
        __break(1u);

        __break(1u);
        JUMPOUT(0xCB808);
      }

      v77 = v82;
    }

    v44 = v386;
    v84 = v400;
    if (v81)
    {
LABEL_42:
      v370 = v84;
      v88 = v84[7];
      v89 = *(v88 + 8 * v77);
      v90 = v77;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *(v88 + 8 * v90) = v89;
      if (v91)
      {
        v92 = v90;
      }

      else
      {
        v102 = sub_33358(0, *(v89 + 2) + 1, 1, v89);
        v92 = v90;
        v89 = v102;
        *(v88 + 8 * v90) = v102;
      }

      v94 = *(v89 + 2);
      v93 = *(v89 + 3);
      v36 = v94 + 1;
      if (v94 >= v93 >> 1)
      {
        v384 = v92;
        v89 = sub_33358((v93 > 1), v94 + 1, 1, v89);
        *(v88 + 8 * v384) = v89;
      }

      *(v89 + 2) = v36;
      v95 = &v89[136 * v94];
      *(v95 + 2) = v451;
      v96 = v452;
      v97 = v453;
      v98 = v455;
      *(v95 + 5) = v454;
      *(v95 + 6) = v98;
      *(v95 + 3) = v96;
      *(v95 + 4) = v97;
      v99 = v456;
      v100 = v457;
      v101 = v458;
      v95[160] = v459;
      *(v95 + 8) = v100;
      *(v95 + 9) = v101;
      *(v95 + 7) = v99;
      v369 = COERCE_DOUBLE(sub_CC28C);
      v42 = v382;
      v38 = v383;
      v43 = v381;
      continue;
    }

    break;
  }

  *(v400 + 8 * (v77 >> 6) + 64) |= 1 << v77;
  *(v84[6] + 8 * v77) = v36;
  *(v84[7] + 8 * v77) = _swiftEmptyArrayStorage;
  v85 = v84[2];
  v86 = __OFADD__(v85, 1);
  v87 = v85 + 1;
  if (!v86)
  {
    v84[2] = v87;
    goto LABEL_42;
  }

  while (1)
  {
    __break(1u);
LABEL_302:

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }

LABEL_180:
    __chkstk_darwin(v221);
    bzero(&v347 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0), v37);
    v222 = 0;
    v223 = 0;
    v224 = 1 << *(v38 + 32);
    v225 = -1;
    if (v224 < 64)
    {
      v225 = ~(-1 << v224);
    }

    v226 = v225 & *(v38 + 56);
    while (v226)
    {
      v227 = __clz(__rbit64(v226));
      v226 &= v226 - 1;
      v228 = v227 | (v223 << 6);
LABEL_190:
      if (*(*(v38 + 48) + 40 * v228 + 16) == 1)
      {
        *(&v347 + ((v228 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v228;
        v86 = __OFADD__(v222++, 1);
        if (v86)
        {
          __break(1u);
LABEL_194:
          v42 = sub_3D908((&v347 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0)), v42, v222, v38);
          goto LABEL_195;
        }
      }
    }

    v229 = v223;
    while (1)
    {
      v223 = v229 + 1;
      if (__OFADD__(v229, 1))
      {
        break;
      }

      if (v223 >= ((v224 + 63) >> 6))
      {
        goto LABEL_194;
      }

      v230 = *(v38 + 56 + 8 * v223);
      ++v229;
      if (v230)
      {
        v226 = (v230 - 1) & v230;
        v228 = __clz(__rbit64(v230)) | (v223 << 6);
        goto LABEL_190;
      }
    }

    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
  }

  v345 = swift_slowAlloc();
  v346 = v368;
  v42 = sub_C6974(v345, v42, v38, sub_BA884);
  v368 = v346;

LABEL_195:
  *&v429 = _swiftEmptyArrayStorage;
  v231 = v42 + 56;
  v232 = 1 << *(v42 + 32);
  v233 = -1;
  if (v232 < 64)
  {
    v233 = ~(-1 << v232);
  }

  v234 = v233 & *(v42 + 56);
  v235 = (v232 + 63) >> 6;

  v236 = 0;
  v386 = xmmword_1BCA80;
  v385 = v42;
  while (v234)
  {
LABEL_204:
    v238 = *(v42 + 48) + 40 * (__clz(__rbit64(v234)) | (v236 << 6));
    v38 = *(v238 + 8);
    v239 = *(v238 + 24);
    v37 = *(v238 + 32);
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v240 = swift_allocObject();
    *(v240 + 16) = v386;
    *(v240 + 32) = v38;
    v241 = _swiftEmptyArrayStorage;
    if ((v37 & 1) == 0)
    {
      v241 = swift_allocObject();
      *(v241 + 1) = v386;
      v241[4] = v239;
    }

    v234 &= v234 - 1;
    *&v415 = v240;
    sub_5F33C(v241);
    sub_5F33C(v415);
    v42 = v385;
  }

  while (1)
  {
    v237 = v236 + 1;
    if (__OFADD__(v236, 1))
    {
      goto LABEL_286;
    }

    if (v237 >= v235)
    {
      break;
    }

    v234 = *(v231 + 8 * v237);
    ++v236;
    if (v234)
    {
      v236 = v237;
      goto LABEL_204;
    }
  }

  v42 = v429;
  v37 = sub_40854(v429);

  v242 = _swiftEmptyArrayStorage;
  v443 = _swiftEmptyArrayStorage;
  v243 = v377;
  v244 = *(v377 + 16);
  v374 = v37;
  if (v244)
  {
    v38 = 0;
    v245 = v377 + 32;
    v246 = v37 + 56;
    v247 = v37;
    *&v386 = v377 + 32;
    do
    {
      while (1)
      {
        if (v38 >= *(v243 + 16))
        {
          goto LABEL_294;
        }

        v248 = (v245 + 136 * v38);
        v429 = *v248;
        v249 = v248[1];
        v250 = v248[2];
        v251 = v248[3];
        v433 = v248[4];
        v432 = v251;
        v431 = v250;
        v430 = v249;
        v252 = v248[5];
        v253 = v248[6];
        v254 = v248[7];
        LOBYTE(v437) = *(v248 + 128);
        v436 = v254;
        v435 = v253;
        v434 = v252;
        ++v38;
        v255 = v254;
        if (v254 != 2)
        {
          break;
        }

LABEL_209:
        if (v38 == v244)
        {
          goto LABEL_231;
        }
      }

      v256 = v435;
      if (v247[2])
      {
        v37 = *(&v435 + 1);
        v42 = *(&v436 + 1);
        v257 = v437;
        v258 = v247[5];
        v259 = sub_1B57E4();
        v247 = v374;
        v260 = -1 << *(v374 + 32);
        v261 = v259 & ~v260;
        if ((*(v246 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261))
        {
          v262 = ~v260;
          while (*(v374[6] + 8 * v261) != v37)
          {
            v261 = (v261 + 1) & v262;
            if (((*(v246 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261) & 1) == 0)
            {
              goto LABEL_217;
            }
          }

          goto LABEL_226;
        }

LABEL_217:
        if ((v257 & 1) == 0)
        {
          v263 = v374[5];
          v264 = sub_1B57E4();
          v247 = v374;
          v265 = -1 << *(v374 + 32);
          v266 = v264 & ~v265;
          if ((*(v246 + ((v266 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v266))
          {
            v267 = ~v265;
            v245 = v386;
            while (*(v374[6] + 8 * v266) != v42)
            {
              v266 = (v266 + 1) & v267;
              if (((*(v246 + ((v266 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v266) & 1) == 0)
              {
                goto LABEL_224;
              }
            }

            goto LABEL_226;
          }
        }

        v245 = v386;
      }

LABEL_224:
      if (v256 == 1)
      {
        v243 = v377;
        goto LABEL_209;
      }

      v243 = v377;
      if ((v255 & 1) == 0)
      {
        goto LABEL_209;
      }

LABEL_226:
      sub_429F8(&v429, &v415);
      v268 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v242;
      if ((v268 & 1) == 0)
      {
        v42 = &v443;
        sub_37574(0, v242[2] + 1, 1);
        v242 = v443;
      }

      v247 = v374;
      v270 = v242[2];
      v269 = v242[3];
      v37 = v270 + 1;
      if (v270 >= v269 >> 1)
      {
        v42 = &v443;
        sub_37574((v269 > 1), v270 + 1, 1);
        v247 = v374;
        v242 = v443;
      }

      v242[2] = v37;
      v271 = &v242[17 * v270];
      *(v271 + 2) = v429;
      v272 = v430;
      v273 = v431;
      v274 = v433;
      *(v271 + 5) = v432;
      *(v271 + 6) = v274;
      *(v271 + 3) = v272;
      *(v271 + 4) = v273;
      v275 = v434;
      v276 = v435;
      v277 = v436;
      *(v271 + 160) = v437;
      *(v271 + 8) = v276;
      *(v271 + 9) = v277;
      *(v271 + 7) = v275;
      v243 = v377;
      v245 = v386;
    }

    while (v38 != v244);
  }

LABEL_231:
  v37 = v242[2];
  if (v37)
  {
    v278 = v242 + 4;
    v279 = v371;
    do
    {
      v280 = *v278;
      v278 += 17;
      sub_111CE0(&v429, v280);
      --v37;
    }

    while (v37);
  }

  else
  {
    v279 = v371;
  }

  if (qword_2282C8 != -1)
  {
    swift_once();
  }

  v281 = sub_1B4644();
  v282 = sub_50E58(v281, qword_22B440);

  v365 = v282;
  v283 = sub_1B4624();
  v284 = sub_1B4DB4();

  if (os_log_type_enabled(v283, v284))
  {
    v37 = swift_slowAlloc();
    v285 = swift_slowAlloc();
    *&v429 = v285;
    *v37 = 136315138;
    v286 = sub_BA88C(v279);
    v288 = sub_60FF4(v286, v287, &v429);

    *(v37 + 4) = v288;
    _os_log_impl(&dword_0, v283, v284, "highScoringItemRecommendations=%s", v37, 0xCu);
    sub_2BF8(v285);
  }

  v289 = v378;
  v415 = v279;
  *&v416 = a10;
  *(&v416 + 1) = v358;
  v417 = v359;
  LOBYTE(v418) = 0;

  sub_BAAD4(&v415);
  v42 = &off_213278;
  v38 = v388;
  v370 = (&stru_20 + 48);
LABEL_241:
  v290 = swift_allocObject();
  v373 = v290;
  *(v290 + 2) = &off_213278;
  v291 = v290 + 16;
  v292 = sub_BB45C(v38);
  *&v386 = *(v292 + 16);
  v372 = v38;
  if (v293 != v386)
  {
    v294 = v293;
    v384 = v292;
    v385 = v292 + 32;
    v38 = v293;
    v376 = v293;
    while (1)
    {
      if ((v294 & 0x8000000000000000) != 0)
      {
        goto LABEL_287;
      }

      if (v38 >= *(v292 + 16))
      {
        goto LABEL_288;
      }

      v295 = v385 + 56 * v38;
      v42 = *v295;
      v296 = *(v295 + 8);
      a10 = *(v295 + 16);
      v37 = *(v295 + 24);
      v297 = *(v295 + 32);
      v298 = *(v295 + 40);
      v299 = *(v295 + 48);
      if (v299)
      {
        break;
      }

      v439 = v410;
      v440 = v411;
      v441 = v412;
      v442 = v413;
      v435 = v406;
      v436 = v407;
      v437 = v408;
      v438 = v409;
      v431 = v402;
      v432 = v403;
      v433 = v404;
      v434 = v405;
      v429 = v400;
      v430 = v401;
      v302 = v297;

      v303 = sub_BB5BC(v42);
      v304 = *(v303 + 16);
      if (v304)
      {
        v382 = v37;
        v383 = v42;
        v443 = v42;
        v444 = v296;
        v445 = a10;
        v446 = v37;
        v380 = v298;
        v381 = v302;
        v447 = v302;
        v448 = v298;
        v449 = v299;
        v305 = *(v366 + 80);
        v379 = v303;
        v306 = v303 + ((v305 + 32) & ~v305);
        v307 = *(v366 + 72);
        v308 = v364;
        v37 = v378;
        do
        {
          sub_CB8C0(v306, v308, type metadata accessor for ScoredCollectionRecommendation);
          sub_BE2D8(v308, v390);
          sub_25FBC(v308, type metadata accessor for ScoredCollectionRecommendation);
          swift_beginAccess();
          v42 = v291;
          sub_BDF88(v390, v37);
          swift_endAccess();
          sub_CB928(v390);
          v306 += v307;
          --v304;
        }

        while (v304);

        v289 = v37;
        v292 = v384;
        v294 = v376;
        goto LABEL_246;
      }

      v398[0] = v42;
      *&v398[1] = v296;
      *&v398[2] = a10;
      v398[3] = v37;
      v398[4] = v302;
      v398[5] = v298;
      v399 = 1;
      sub_CB9F0(v398, &v429);

      swift_beginAccess();
      v289 = v378;
      v42 = v291;
      sub_BDF88(v398, v378);
      swift_endAccess();
      sub_CB928(v398);
      v294 = v376;
LABEL_245:
      v292 = v384;
LABEL_246:
      if (++v38 == v386)
      {

        v38 = v372;
        goto LABEL_263;
      }
    }

    v391 = *v295;
    v392 = v296;
    v393 = a10;
    v394 = v37;
    v395 = v297;
    v396 = v298;
    v397 = v299;

    sub_CB9F0(&v391, &v429);

    swift_beginAccess();
    v300 = *v291;
    v301 = *(*v291 + 16);
    if (v301 > v289)
    {
      if (!v301)
      {
        goto LABEL_300;
      }

      if (v301 == 1)
      {
        goto LABEL_308;
      }

      if (!*(v300 + 88))
      {
        __break(1u);
      }

      if (*(v300 + 96) >= v392)
      {
        goto LABEL_257;
      }

      sub_C5694();
    }

    v42 = v291;
    sub_BAAD4(&v391);
LABEL_257:
    swift_endAccess();
    sub_CB928(&v391);
    goto LABEL_245;
  }

LABEL_263:
  sub_2B0C(&qword_22B460, &qword_1C39F8);
  v42 = swift_allocObject();
  v309 = v373;
  *(v42 + 16) = sub_CB958;
  *(v42 + 24) = v309;
  swift_beginAccess();
  v310 = *(v309 + 2);

  v312 = sub_BB45C(v311);
  v314 = v313;

  sub_2B0C(&qword_22B468, &unk_1C3A00);
  v37 = swift_allocObject();
  *(v37 + 16) = v312;
  *(v37 + 24) = v314;
  v315 = *(v312 + 16);
  v316 = &v370[7 * v314];
  while (v315 != v314)
  {
    if (v314 >= v315)
    {
      goto LABEL_289;
    }

    if (__OFADD__(v314, 1))
    {
      goto LABEL_290;
    }

    v317 = *(v316 + v312);
    *(v37 + 24) = ++v314;
    v316 += 7;
    if ((v317 & 1) == 0)
    {
      v318 = v373;

      swift_setDeallocating();
      swift_deallocClassInstance();

      swift_setDeallocating();
      swift_deallocClassInstance();

      v38 = *(v318 + 2);

      v388 = v38;
      v42 = &off_213278;
      goto LABEL_241;
    }
  }

  sub_CB928(&v415);

  swift_setDeallocating();
  swift_deallocClassInstance();

  swift_setDeallocating();
  swift_deallocClassInstance();

  v319 = sub_BB45C(v38);
  v321 = sub_C7158(v319, v320);

  sub_BEF94(v321, &v429);

  v322 = v429;
  if (v429)
  {

    sub_CB990(v323);
  }

  else
  {
    v322 = _swiftEmptyArrayStorage;
  }

  v324 = v349;
  v325 = v369;
  v326 = v322[2];

  v327 = v371[2];

  if (v326 == v327)
  {

    v439 = v410;
    v440 = v411;
    v441 = v412;
    v442 = v413;
    v435 = v406;
    v436 = v407;
    v437 = v408;
    v438 = v409;
    v431 = v402;
    v432 = v403;
    v433 = v404;
    v434 = v405;
    v429 = v400;
    v430 = v401;
    v414[0] = v363;
    v414[1] = v362;
    *&v414[2] = v325;
    v322 = sub_B9E78(v414, v377);
  }

  v434 = v405;
  v433 = v404;
  v432 = v403;
  v431 = v402;
  v438 = v409;
  v437 = v408;
  v436 = v407;
  v435 = v406;
  v442 = v413;
  v441 = v412;
  v440 = v411;
  v439 = v410;
  v430 = v401;
  v429 = v400;
  v328 = v322[2];
  if (v328)
  {
    v414[0] = _swiftEmptyArrayStorage;
    sub_375B4(0, v328, 0);
    v329 = v414[0];
    v330 = v322 + ((*(v366 + 80) + 32) & ~*(v366 + 80));
    v331 = *(v366 + 72);
    v332 = v348;
    do
    {
      v333 = v375;
      sub_CB8C0(v330, v375, type metadata accessor for ScoredCollectionRecommendation);
      sub_CBA88(v333, v324, type metadata accessor for CollectionRecommendation);
      v414[0] = v329;
      v335 = v329[2];
      v334 = v329[3];
      if (v335 >= v334 >> 1)
      {
        sub_375B4(v334 > 1, v335 + 1, 1);
        v332 = v348;
        v329 = v414[0];
      }

      v329[2] = v335 + 1;
      sub_CBA88(v324, v329 + ((*(v332 + 80) + 32) & ~*(v332 + 80)) + *(v332 + 72) * v335, type metadata accessor for CollectionRecommendation);
      v330 += v331;
      --v328;
    }

    while (v328);
  }

  else
  {

    v329 = _swiftEmptyArrayStorage;
  }

  v336 = sub_BF160(v329);

  sub_CB960(&v400);

  v337 = sub_1B4624();
  v338 = sub_1B4DB4();

  if (os_log_type_enabled(v337, v338))
  {
    v339 = swift_slowAlloc();
    v340 = swift_slowAlloc();
    *&v429 = v340;
    *v339 = 136315138;
    v341 = sub_1AB48C(v336);
    v343 = sub_60FF4(v341, v342, &v429);

    *(v339 + 4) = v343;
    _os_log_impl(&dword_0, v337, v338, "collectionRecommendations=%s", v339, 0xCu);
    sub_2BF8(v340);
  }

  return v336;
}

uint64_t type metadata accessor for ScoredCollectionRecommendation()
{
  result = qword_22B500;
  if (!qword_22B500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CB888()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CB8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CB990(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_CBA28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_CBA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_CBAF0()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  v9 = v0[13];

  v10 = v0[14];

  v11 = v0[15];

  v12 = v0[16];

  v13 = v0[22];

  v14 = v0[24];

  v15 = v0[25];

  v16 = v0[26];

  v17 = v0[27];

  v18 = v0[28];

  return _swift_deallocObject(v0, 240, 7);
}

uint64_t sub_CBBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229408, &unk_1BCC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CBC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229408, &unk_1BCC10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_CBCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229408, &unk_1BCC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_CBD44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    sub_43CE0(a3, a4);
  }

  return result;
}

__n128 sub_CBDCC(uint64_t a1, uint64_t a2)
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

uint64_t sub_CBE10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_CBE58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_CBEDC(uint64_t a1, uint64_t a2)
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

uint64_t sub_CBEF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_CBF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_CBFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CollectionRecommendation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_CC094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CollectionRecommendation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_CC14C()
{
  result = type metadata accessor for CollectionRecommendation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_CC1D8()
{
  result = qword_22B540;
  if (!qword_22B540)
  {
    type metadata accessor for ScoredCollectionRecommendation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B540);
  }

  return result;
}

unint64_t sub_CC234()
{
  result = qword_22B548;
  if (!qword_22B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B548);
  }

  return result;
}

uint64_t sub_CC298(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B5154();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_3DBA4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_CC598(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_350C0(*(a1 + 16), 0);
  v4 = sub_3EB38(&v6, v3 + 4, v2, a1);
  sub_5EEEC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_CC628(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_1B40C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  sub_43050(v1, &v13 - v10, &qword_229528, &qword_1BC5A0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v13, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return result;
}

uint64_t BookHistoryServiceType.fetchBookHistory(for:limit:configuration:)(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5)
{
  memcpy(v5 + 2, __src, 0x460uLL);
  v5[142] = 0;
  v10 = *(a5 + 8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v5[143] = v12;
  *v12 = v5;
  v12[1] = sub_CC964;

  return (v14)(v5 + 142, a1, a2, v5 + 2, a4, a5);
}

uint64_t sub_CC964(uint64_t a1)
{
  v4 = *(*v2 + 1144);
  v5 = *v2;
  *(v5 + 1152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_CCAA0, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

Swift::Int sub_CCAB8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56AF4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
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
      sub_2B0C(&qword_22BB38, &qword_1C59F8);
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_DF484(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_CCC14(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B08(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_DF38C(v5);
  *a1 = v2;
  return result;
}

uint64_t Dictionary<>.mostRecentBookHistories(limit:scorerConfig:)(int64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, 0x16BuLL);
  if (*(a3 + 16) <= a1)
  {

    return a3;
  }

  sub_71C74(__dst, v15);
  v5 = sub_E0C5C(a3, __dst);
  sub_71DC0(__dst);
  v15[0] = v5;

  sub_CCAB8(v15);

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v15[0];
    if (*(v15[0] + 2) >= a1)
    {
      v7 = _swiftEmptyArrayStorage;
      if (a1)
      {
        v15[0] = _swiftEmptyArrayStorage;
        v8 = (v6 + 32);
        sub_3741C(0, a1, 0);
        v7 = v15[0];
        v9 = *(v15[0] + 2);
        do
        {
          v11 = *v8;
          v8 += 2;
          v10 = v11;
          v15[0] = v7;
          v12 = *(v7 + 3);
          if (v9 >= v12 >> 1)
          {
            sub_3741C((v12 > 1), v9 + 1, 1);
            v7 = v15[0];
          }

          *(v7 + 2) = v9 + 1;
          *&v7[8 * v9++ + 32] = v10;
          --a1;
        }

        while (a1);
      }

      v13 = sub_40854(v7);

      a3 = sub_E1080(a3, v13);

      swift_bridgeObjectRelease_n();
      return a3;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t BookHistory.CollectionAddition.debugDescription.getter()
{
  v1 = *v0;
  if (v0[4])
  {
    v2 = v0[1];
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BCA80;
    *(v3 + 56) = &type metadata for Double;
    *(v3 + 64) = &protocol witness table for Double;
    *(v3 + 32) = v1;
    v7._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v7);

    v8._countAndFlagsBits = 0x20646E6120;
    v8._object = 0xE500000000000000;
    sub_1B48D4(v8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BCA80;
    *(v4 + 56) = &type metadata for Double;
    *(v4 + 64) = &protocol witness table for Double;
    *(v4 + 32) = v2;
    v9._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v9);

    return 538996329;
  }

  else
  {
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v1;
    return sub_1B47F4();
  }
}

uint64_t sub_CCFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5373646E6F636573 && a2 == 0xEC00000065636E69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_CD070(uint64_t a1)
{
  v2 = sub_E132C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD0AC(uint64_t a1)
{
  v2 = sub_E132C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CD0E8()
{
  if (*v0)
  {
    result = 1868983913;
  }

  else
  {
    result = 0x6C61767265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_CD11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000)
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

uint64_t sub_CD1F8(uint64_t a1)
{
  v2 = sub_E1284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD234(uint64_t a1)
{
  v2 = sub_E1284();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CD270()
{
  if (*v0)
  {
    return 0x6E496465646461;
  }

  else
  {
    return 0x74416465646461;
  }
}

uint64_t sub_CD2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74416465646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E496465646461 && a2 == 0xE700000000000000)
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

uint64_t sub_CD380(uint64_t a1)
{
  v2 = sub_E1230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD3BC(uint64_t a1)
{
  v2 = sub_E1230();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.CollectionAddition.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22B550, &qword_1C3CB0);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v30 = &v26 - v5;
  v6 = sub_2B0C(&qword_22B558, &qword_1C3CB8);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v34 = sub_2B0C(&qword_22B560, &qword_1C3CC0);
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v34);
  v13 = &v26 - v12;
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v26 = v1[3];
  v27 = v16;
  v17 = *(v1 + 32);
  v18 = a1[4];
  sub_2698(a1, a1[3]);
  sub_E1230();
  sub_1B5884();
  if (v17)
  {
    LOBYTE(v36) = 1;
    sub_E1284();
    v19 = v30;
    v20 = v34;
    sub_1B5454();
    v36 = v14;
    v37 = v15;
    v35 = 0;
    sub_2B0C(&qword_22B578, &qword_1C3CC8);
    sub_E1380(&qword_22B580);
    v22 = v32;
    v21 = v33;
    sub_1B5544();
    if (!v21)
    {
      v36 = v27;
      v37 = v26;
      v35 = 1;
      sub_E12D8();
      sub_1B5544();
    }

    (*(v31 + 8))(v19, v22);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_E132C();
    v24 = v34;
    sub_1B5454();
    v25 = v29;
    sub_1B5514();
    (*(v28 + 8))(v9, v25);
    return (*(v10 + 8))(v13, v24);
  }
}

void BookHistory.CollectionAddition.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *v0;
    v5 = *(v0 + 8);
    sub_1B5804(1uLL);
    if (v1 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v1;
    }

    sub_1B5834(*&v6);
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v5;
    }

    sub_1B5834(*&v7);
    sub_1B5804(v3);
    sub_1B5804(v2);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = *&v1;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5834(v8);
  }
}

Swift::Int BookHistory.CollectionAddition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1B57F4();
  if (v5)
  {
    sub_1B5804(1uLL);
    if (v1 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v1;
    }

    sub_1B5834(*&v6);
    if (v2 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v2;
    }

    sub_1B5834(*&v7);
    sub_1B5804(v4);
    sub_1B5804(v3);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = *&v1;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5834(v8);
  }

  return sub_1B5844();
}

uint64_t BookHistory.CollectionAddition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = sub_2B0C(&qword_22B598, &qword_1C3CD0);
  v40 = *(v38 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v38);
  v5 = &v36[-v4];
  v6 = sub_2B0C(&qword_22B5A0, &qword_1C3CD8);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v36[-v8];
  v10 = sub_2B0C(&qword_22B5A8, &unk_1C3CE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v36[-v13];
  v16 = a1[3];
  v15 = a1[4];
  v43 = a1;
  sub_2698(a1, v16);
  sub_E1230();
  v17 = v42;
  sub_1B5864();
  if (!v17)
  {
    v18 = v41;
    v42 = v11;
    v19 = sub_1B5444();
    v20 = (2 * *(v19 + 16)) | 1;
    v48 = v19;
    v49 = v19 + 32;
    v50 = 0;
    v51 = v20;
    v21 = sub_A1170();
    if (v21 == 2 || v50 != v51 >> 1)
    {
      v25 = sub_1B5114();
      swift_allocError();
      v27 = v26;
      v28 = *(sub_2B0C(&qword_22ADB8, &qword_1C2520) + 48);
      *v27 = &type metadata for BookHistory.CollectionAddition;
      sub_1B5314();
      sub_1B50E4();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
      (*(v42 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v21;
      if (v21)
      {
        LOBYTE(v46) = 1;
        sub_E1284();
        v22 = v5;
        sub_1B5304();
        v23 = v42;
        sub_2B0C(&qword_22B578, &qword_1C3CC8);
        LOBYTE(v45) = 0;
        sub_E1380(&qword_22B5B0);
        v24 = v38;
        sub_1B5404();
        v31 = v46;
        v32 = v14;
        v33 = v47;
        v44 = 1;
        sub_E13EC();
        sub_1B5404();
        (*(v40 + 8))(v22, v24);
        (*(v23 + 8))(v32, v10);
        swift_unknownObjectRelease();
        v34 = v45;
        v18 = v41;
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_E132C();
        sub_1B5304();
        v30 = v42;
        sub_1B53D4();
        v31 = v35;
        (*(v39 + 8))(v9, v6);
        (*(v30 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = 0uLL;
      }

      *v18 = v31;
      *(v18 + 8) = v33;
      *(v18 + 16) = v34;
      *(v18 + 32) = v37 & 1;
    }
  }

  return sub_2BF8(v43);
}

Swift::Int sub_CDF54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1B57F4();
  if (v5)
  {
    sub_1B5804(1uLL);
    sub_E0444(v1, v2);
    sub_1B5804(v4);
    sub_1B5804(v3);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = *&v1;
    }

    else
    {
      v6 = 0;
    }

    sub_1B5834(v6);
  }

  return sub_1B5844();
}

uint64_t sub_CE034(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_2B0C(&qword_22BAC0, &qword_1C5998);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_2B0C(&qword_22BAC8, &qword_1C59A0);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_2B0C(&qword_22BAD0, &qword_1C59A8);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_2B0C(&qword_22BAD8, &qword_1C59B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_2698(a1, a1[3]);
  sub_E3D40();
  sub_1B5884();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_E3DE8();
      sub_1B5454();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_E3D94();
      v21 = v27;
      sub_1B5454();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_E3E3C();
    sub_1B5454();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_CE3B4(uint64_t a1)
{
  v2 = sub_E3DE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE3F0(uint64_t a1)
{
  v2 = sub_E3DE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE42C()
{
  v1 = 0x6974616D6F747561;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C6C61756E616DLL;
  }
}

uint64_t sub_CE494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E3E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CE4BC(uint64_t a1)
{
  v2 = sub_E3D40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE4F8(uint64_t a1)
{
  v2 = sub_E3D40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE534(uint64_t a1)
{
  v2 = sub_E3E3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE570(uint64_t a1)
{
  v2 = sub_E3E3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE5AC(uint64_t a1)
{
  v2 = sub_E3D94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE5E8(uint64_t a1)
{
  v2 = sub_E3D94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E3FB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_CE670()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0x73696E616863656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_CE6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73696E616863656DLL && a2 == 0xE90000000000006DLL;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7380 == a2)
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

uint64_t sub_CE7A0(uint64_t a1)
{
  v2 = sub_E1440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE7DC(uint64_t a1)
{
  v2 = sub_E1440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.MarkedFinishedInfo.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22B5C0, &qword_1C3CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v13 = *(v1 + 24);
  v14 = v10;
  v18 = v1[40];
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_E1440();
  sub_1B5884();
  LOBYTE(v15) = v9;
  v19 = 0;
  sub_E1494();
  sub_1B5544();
  if (!v2)
  {
    v16 = v13;
    v15 = v14;
    v17 = v18;
    v19 = 1;
    sub_E14E8();
    sub_1B5544();
  }

  return (*(v5 + 8))(v8, v4);
}

void BookHistory.MarkedFinishedInfo.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  v3 = *(v0 + 4);
  v5 = v0[40];
  sub_1B5804(*v0);
  if (v5)
  {
    sub_1B5804(1uLL);
    if (v1 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v1;
    }

    sub_1B5834(*&v6);
    if (v2 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v2;
    }

    sub_1B5834(*&v7);
    sub_1B5804(v4);
    sub_1B5804(v3);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = *&v1;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5834(v8);
  }
}

Swift::Int BookHistory.MarkedFinishedInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = v0[40];
  sub_1B57F4();
  sub_1B5804(v1);
  if (v6)
  {
    sub_1B5804(1uLL);
    if (v2 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v2;
    }

    sub_1B5834(*&v7);
    if (v3 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v3;
    }

    sub_1B5834(*&v8);
    sub_1B5804(v5);
    sub_1B5804(v4);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = *&v2;
    }

    else
    {
      v9 = 0;
    }

    sub_1B5834(v9);
  }

  return sub_1B5844();
}

uint64_t BookHistory.MarkedFinishedInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22B5E0, &qword_1C3CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_E1440();
  sub_1B5864();
  if (!v2)
  {
    v18 = 0;
    sub_E153C();
    sub_1B5404();
    v11 = v16[0];
    v18 = 1;
    sub_E1590();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    v13 = v16[0];
    v14 = v16[1];
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 24) = v14;
    *(a2 + 40) = v12;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_CED64()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = v0[40];
  sub_1B57F4();
  sub_1B5804(v1);
  if (v6)
  {
    sub_1B5804(1uLL);
    sub_E0444(v2, v3);
    sub_1B5804(v5);
    sub_1B5804(v4);
  }

  else
  {
    sub_1B5804(0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = *&v2;
    }

    else
    {
      v7 = 0;
    }

    sub_1B5834(v7);
  }

  return sub_1B5844();
}

unint64_t sub_CEE5C(char a1)
{
  result = 0x6E49776569766572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 11;
      goto LABEL_16;
    case 3:
      return result;
    case 4:
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000002BLL;
      break;
    case 10:
    case 13:
      v3 = 9;
LABEL_16:
      result = v3 | 0xD000000000000014;
      break;
    case 11:
    case 17:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000022;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_CF0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E4520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CF0F0(uint64_t a1)
{
  v2 = sub_E15E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF12C(uint64_t a1)
{
  v2 = sub_E15E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF168(uint64_t a1)
{
  v2 = sub_E168C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF1A4(uint64_t a1)
{
  v2 = sub_E168C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF1E0(uint64_t a1)
{
  v2 = sub_E1638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF21C(uint64_t a1)
{
  v2 = sub_E1638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF258(uint64_t a1)
{
  v2 = sub_E16E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF294(uint64_t a1)
{
  v2 = sub_E16E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF2D0(uint64_t a1)
{
  v2 = sub_E1B78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF30C(uint64_t a1)
{
  v2 = sub_E1B78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF348(uint64_t a1)
{
  v2 = sub_E1BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF384(uint64_t a1)
{
  v2 = sub_E1BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF3C0(uint64_t a1)
{
  v2 = sub_E1AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF3FC(uint64_t a1)
{
  v2 = sub_E1AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF438(uint64_t a1)
{
  v2 = sub_E1B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF474(uint64_t a1)
{
  v2 = sub_E1B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF4B0(uint64_t a1)
{
  v2 = sub_E1884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF4EC(uint64_t a1)
{
  v2 = sub_E1884();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF528(uint64_t a1)
{
  v2 = sub_E19D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF564(uint64_t a1)
{
  v2 = sub_E19D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF5A0(uint64_t a1)
{
  v2 = sub_E18D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF5DC(uint64_t a1)
{
  v2 = sub_E18D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF618(uint64_t a1)
{
  v2 = sub_E1734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF654(uint64_t a1)
{
  v2 = sub_E1734();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF690(uint64_t a1)
{
  v2 = sub_E1980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF6CC(uint64_t a1)
{
  v2 = sub_E1980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF708(uint64_t a1)
{
  v2 = sub_E1A28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF744(uint64_t a1)
{
  v2 = sub_E1A28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF780(uint64_t a1)
{
  v2 = sub_E1A7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF7BC(uint64_t a1)
{
  v2 = sub_E1A7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF7F8(uint64_t a1)
{
  v2 = sub_E1788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF834(uint64_t a1)
{
  v2 = sub_E1788();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF870(uint64_t a1)
{
  v2 = sub_E192C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF8AC(uint64_t a1)
{
  v2 = sub_E192C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF8E8(uint64_t a1)
{
  v2 = sub_E1830();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF924(uint64_t a1)
{
  v2 = sub_E1830();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF960(uint64_t a1)
{
  v2 = sub_E17DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF99C(uint64_t a1)
{
  v2 = sub_E17DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookHistory.Feature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_22B5F8, &qword_1C3D00);
  v127 = *(v4 - 8);
  v128 = v4;
  v5 = *(v127 + 64);
  __chkstk_darwin(v4);
  v126 = &v77 - v6;
  v7 = sub_2B0C(&qword_22B600, &qword_1C3D08);
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = *(v124 + 64);
  __chkstk_darwin(v7);
  v123 = &v77 - v9;
  v10 = sub_2B0C(&qword_22B608, &qword_1C3D10);
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = *(v121 + 64);
  __chkstk_darwin(v10);
  v120 = &v77 - v12;
  v13 = sub_2B0C(&qword_22B610, &qword_1C3D18);
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = *(v118 + 64);
  __chkstk_darwin(v13);
  v117 = &v77 - v15;
  v16 = sub_2B0C(&qword_22B618, &qword_1C3D20);
  v115 = *(v16 - 8);
  v116 = v16;
  v17 = *(v115 + 64);
  __chkstk_darwin(v16);
  v114 = &v77 - v18;
  v19 = sub_2B0C(&qword_22B620, &qword_1C3D28);
  v112 = *(v19 - 8);
  v113 = v19;
  v20 = *(v112 + 64);
  __chkstk_darwin(v19);
  v111 = &v77 - v21;
  v110 = sub_2B0C(&qword_22B628, &qword_1C3D30);
  v109 = *(v110 - 8);
  v22 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v77 - v23;
  v107 = sub_2B0C(&qword_22B630, &qword_1C3D38);
  v106 = *(v107 - 8);
  v24 = *(v106 + 64);
  __chkstk_darwin(v107);
  v105 = &v77 - v25;
  v104 = sub_2B0C(&qword_22B638, &qword_1C3D40);
  v103 = *(v104 - 8);
  v26 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = &v77 - v27;
  v101 = sub_2B0C(&qword_22B640, &qword_1C3D48);
  v100 = *(v101 - 8);
  v28 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v77 - v29;
  v98 = sub_2B0C(&qword_22B648, &qword_1C3D50);
  v97 = *(v98 - 8);
  v30 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v77 - v31;
  v95 = sub_2B0C(&qword_22B650, &qword_1C3D58);
  v94 = *(v95 - 8);
  v32 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v77 - v33;
  v92 = sub_2B0C(&qword_22B658, &qword_1C3D60);
  v91 = *(v92 - 8);
  v34 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v77 - v35;
  v89 = sub_2B0C(&qword_22B660, &qword_1C3D68);
  v88 = *(v89 - 8);
  v36 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = &v77 - v37;
  v86 = sub_2B0C(&qword_22B668, &qword_1C3D70);
  v85 = *(v86 - 8);
  v38 = *(v85 + 64);
  __chkstk_darwin(v86);
  v84 = &v77 - v39;
  v83 = sub_2B0C(&qword_22B670, &qword_1C3D78);
  v82 = *(v83 - 8);
  v40 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = &v77 - v41;
  v80 = sub_2B0C(&qword_22B678, &qword_1C3D80);
  v79 = *(v80 - 8);
  v42 = *(v79 + 64);
  __chkstk_darwin(v80);
  v44 = &v77 - v43;
  v45 = sub_2B0C(&qword_22B680, &qword_1C3D88);
  v78 = *(v45 - 8);
  v46 = *(v78 + 64);
  __chkstk_darwin(v45);
  v48 = &v77 - v47;
  v130 = sub_2B0C(&qword_22B688, &qword_1C3D90);
  v49 = *(v130 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v130);
  v52 = &v77 - v51;
  v53 = *v2;
  v54 = a1[4];
  sub_2698(a1, a1[3]);
  sub_E15E4();
  v129 = v52;
  sub_1B5884();
  v55 = (v49 + 8);
  switch(v53)
  {
    case 1:
      v132 = 1;
      sub_E1B78();
      v70 = v129;
      v71 = v130;
      sub_1B5454();
      (*(v79 + 8))(v44, v80);
      return (*v55)(v70, v71);
    case 2:
      v132 = 2;
      sub_E1B24();
      v67 = v81;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v82 + 8);
      v63 = v67;
      v64 = &v115;
      goto LABEL_21;
    case 3:
      v132 = 3;
      sub_E1AD0();
      v68 = v84;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v85 + 8);
      v63 = v68;
      v64 = &v118;
      goto LABEL_21;
    case 4:
      v132 = 4;
      sub_E1A7C();
      v65 = v87;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v88 + 8);
      v63 = v65;
      v64 = &v121;
      goto LABEL_21;
    case 5:
      v132 = 5;
      sub_E1A28();
      v73 = v90;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v91 + 8);
      v63 = v73;
      v64 = &v124;
      goto LABEL_21;
    case 6:
      v132 = 6;
      sub_E19D4();
      v74 = v93;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v94 + 8);
      v63 = v74;
      v64 = &v127;
      goto LABEL_21;
    case 7:
      v132 = 7;
      sub_E1980();
      v69 = v96;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v97 + 8);
      v63 = v69;
      v64 = &v130;
      goto LABEL_21;
    case 8:
      v132 = 8;
      sub_E192C();
      v76 = v99;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v100 + 8);
      v63 = v76;
      v64 = &v131;
      goto LABEL_21;
    case 9:
      v132 = 9;
      sub_E18D8();
      v66 = v102;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v103 + 8);
      v63 = v66;
      v64 = &v133;
      goto LABEL_21;
    case 10:
      v132 = 10;
      sub_E1884();
      v75 = v105;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v106 + 8);
      v63 = v75;
      v64 = &v134;
      goto LABEL_21;
    case 11:
      v132 = 11;
      sub_E1830();
      v61 = v108;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v62 = *(v109 + 8);
      v63 = v61;
      v64 = &v135;
LABEL_21:
      v62(v63, *(v64 - 32));
      return (*v55)(v57, v56);
    case 12:
      v132 = 12;
      sub_E17DC();
      v58 = v111;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v60 = v112;
      v59 = v113;
      goto LABEL_17;
    case 13:
      v132 = 13;
      sub_E1788();
      v58 = v114;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v60 = v115;
      v59 = v116;
      goto LABEL_17;
    case 14:
      v132 = 14;
      sub_E1734();
      v58 = v117;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v60 = v118;
      v59 = v119;
      goto LABEL_17;
    case 15:
      v132 = 15;
      sub_E16E0();
      v58 = v120;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v60 = v121;
      v59 = v122;
      goto LABEL_17;
    case 16:
      v132 = 16;
      sub_E168C();
      v58 = v123;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v60 = v124;
      v59 = v125;
      goto LABEL_17;
    case 17:
      v132 = 17;
      sub_E1638();
      v58 = v126;
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      v60 = v127;
      v59 = v128;
LABEL_17:
      (*(v60 + 8))(v58, v59);
      break;
    default:
      v132 = 0;
      sub_E1BCC();
      v57 = v129;
      v56 = v130;
      sub_1B5454();
      (*(v78 + 8))(v48, v45);
      break;
  }

  return (*v55)(v57, v56);
}

uint64_t BookHistory.Feature.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v156 = a2;
  v155 = sub_2B0C(&qword_22B728, &qword_1C3D98);
  v138 = *(v155 - 8);
  v3 = *(v138 + 64);
  __chkstk_darwin(v155);
  v151 = v101 - v4;
  v137 = sub_2B0C(&qword_22B730, &qword_1C3DA0);
  v136 = *(v137 - 8);
  v5 = *(v136 + 64);
  __chkstk_darwin(v137);
  v150 = v101 - v6;
  v135 = sub_2B0C(&qword_22B738, &qword_1C3DA8);
  v134 = *(v135 - 8);
  v7 = *(v134 + 64);
  __chkstk_darwin(v135);
  v149 = v101 - v8;
  v133 = sub_2B0C(&qword_22B740, &qword_1C3DB0);
  v132 = *(v133 - 8);
  v9 = *(v132 + 64);
  __chkstk_darwin(v133);
  v148 = v101 - v10;
  v131 = sub_2B0C(&qword_22B748, &qword_1C3DB8);
  v130 = *(v131 - 8);
  v11 = *(v130 + 64);
  __chkstk_darwin(v131);
  v147 = v101 - v12;
  v129 = sub_2B0C(&qword_22B750, &qword_1C3DC0);
  v128 = *(v129 - 8);
  v13 = *(v128 + 64);
  __chkstk_darwin(v129);
  v146 = v101 - v14;
  v127 = sub_2B0C(&qword_22B758, &qword_1C3DC8);
  v126 = *(v127 - 8);
  v15 = *(v126 + 64);
  __chkstk_darwin(v127);
  v145 = v101 - v16;
  v125 = sub_2B0C(&qword_22B760, &qword_1C3DD0);
  v124 = *(v125 - 8);
  v17 = *(v124 + 64);
  __chkstk_darwin(v125);
  v144 = v101 - v18;
  v123 = sub_2B0C(&qword_22B768, &qword_1C3DD8);
  v122 = *(v123 - 8);
  v19 = *(v122 + 64);
  __chkstk_darwin(v123);
  v143 = v101 - v20;
  v121 = sub_2B0C(&qword_22B770, &qword_1C3DE0);
  v120 = *(v121 - 8);
  v21 = *(v120 + 64);
  __chkstk_darwin(v121);
  v142 = v101 - v22;
  v119 = sub_2B0C(&qword_22B778, &qword_1C3DE8);
  v118 = *(v119 - 8);
  v23 = *(v118 + 64);
  __chkstk_darwin(v119);
  v139 = v101 - v24;
  v116 = sub_2B0C(&qword_22B780, &qword_1C3DF0);
  v117 = *(v116 - 8);
  v25 = *(v117 + 64);
  __chkstk_darwin(v116);
  v154 = v101 - v26;
  v115 = sub_2B0C(&qword_22B788, &qword_1C3DF8);
  v114 = *(v115 - 8);
  v27 = *(v114 + 64);
  __chkstk_darwin(v115);
  v153 = v101 - v28;
  v113 = sub_2B0C(&qword_22B790, &qword_1C3E00);
  v112 = *(v113 - 8);
  v29 = *(v112 + 64);
  __chkstk_darwin(v113);
  v141 = v101 - v30;
  v111 = sub_2B0C(&qword_22B798, &qword_1C3E08);
  v110 = *(v111 - 8);
  v31 = *(v110 + 64);
  __chkstk_darwin(v111);
  v140 = v101 - v32;
  v109 = sub_2B0C(&qword_22B7A0, &qword_1C3E10);
  v108 = *(v109 - 8);
  v33 = *(v108 + 64);
  __chkstk_darwin(v109);
  v152 = v101 - v34;
  v107 = sub_2B0C(&qword_22B7A8, &qword_1C3E18);
  v106 = *(v107 - 8);
  v35 = *(v106 + 64);
  __chkstk_darwin(v107);
  v37 = v101 - v36;
  v38 = sub_2B0C(&qword_22B7B0, &qword_1C3E20);
  v105 = *(v38 - 8);
  v39 = *(v105 + 64);
  __chkstk_darwin(v38);
  v41 = v101 - v40;
  v42 = sub_2B0C(&qword_22B7B8, &qword_1C3E28);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = v101 - v45;
  v47 = a1[3];
  v48 = a1[4];
  v158 = a1;
  sub_2698(a1, v47);
  sub_E15E4();
  v49 = v157;
  sub_1B5864();
  if (v49)
  {
LABEL_8:
    v68 = v158;
    return sub_2BF8(v68);
  }

  v102 = v41;
  v101[1] = v38;
  v103 = v37;
  v50 = v152;
  v51 = v153;
  v52 = v154;
  v104 = 0;
  v54 = v155;
  v53 = v156;
  v157 = v43;
  v55 = sub_1B5444();
  v56 = (2 * *(v55 + 16)) | 1;
  v159[0] = v55;
  v159[1] = v55 + 32;
  v160 = 0;
  v161 = v56;
  v57 = sub_9CA80();
  if (v160 != v161 >> 1)
  {
LABEL_6:
    v64 = sub_1B5114();
    swift_allocError();
    v66 = v65;
    v67 = *(sub_2B0C(&qword_22ADB8, &qword_1C2520) + 48);
    *v66 = &type metadata for BookHistory.Feature;
    sub_1B5314();
    sub_1B50E4();
    (*(*(v64 - 8) + 104))(v66, enum case for DecodingError.typeMismatch(_:), v64);
    swift_willThrow();
LABEL_7:
    (*(v157 + 8))(v46, v42);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v58 = v57;
  switch(v57)
  {
    case 0:
      v164 = 0;
      sub_E1BCC();
      v59 = v102;
      v60 = v104;
      sub_1B5304();
      if (v60)
      {
        goto LABEL_7;
      }

      v61 = *(v105 + 8);
      v62 = v59;
      v63 = &v133;
      goto LABEL_44;
    case 1:
      v164 = 1;
      sub_E1B78();
      v89 = v103;
      v90 = v104;
      sub_1B5304();
      if (v90)
      {
        goto LABEL_7;
      }

      v61 = *(v106 + 8);
      v62 = v89;
      v63 = &v139;
      goto LABEL_44;
    case 2:
      v164 = 2;
      sub_E1B24();
      v82 = v104;
      sub_1B5304();
      if (v82)
      {
        goto LABEL_7;
      }

      v61 = *(v108 + 8);
      v62 = v50;
      v63 = &v141;
      goto LABEL_44;
    case 3:
      v164 = 3;
      sub_E1AD0();
      v85 = v140;
      v86 = v104;
      sub_1B5304();
      if (v86)
      {
        goto LABEL_7;
      }

      v61 = *(v110 + 8);
      v62 = v85;
      v63 = &v143;
      goto LABEL_44;
    case 4:
      v164 = 4;
      sub_E1A7C();
      v76 = v141;
      v77 = v104;
      sub_1B5304();
      if (v77)
      {
        goto LABEL_7;
      }

      v61 = *(v112 + 8);
      v62 = v76;
      v63 = &v145;
      goto LABEL_44;
    case 5:
      v164 = 5;
      sub_E1A28();
      v93 = v104;
      sub_1B5304();
      if (v93)
      {
        goto LABEL_7;
      }

      v61 = *(v114 + 8);
      v62 = v51;
      v63 = &v147;
      goto LABEL_44;
    case 6:
      v164 = 6;
      sub_E19D4();
      v96 = v104;
      sub_1B5304();
      if (v96)
      {
        goto LABEL_7;
      }

      v61 = *(v117 + 8);
      v62 = v52;
      v63 = &v148;
      goto LABEL_44;
    case 7:
      v164 = 7;
      sub_E1980();
      v87 = v139;
      v88 = v104;
      sub_1B5304();
      if (v88)
      {
        goto LABEL_7;
      }

      v61 = *(v118 + 8);
      v62 = v87;
      v63 = &v151;
      goto LABEL_44;
    case 8:
      v164 = 8;
      sub_E192C();
      v99 = v142;
      v100 = v104;
      sub_1B5304();
      if (v100)
      {
        goto LABEL_7;
      }

      v61 = *(v120 + 8);
      v62 = v99;
      v63 = &v153;
      goto LABEL_44;
    case 9:
      v164 = 9;
      sub_E18D8();
      v80 = v143;
      v81 = v104;
      sub_1B5304();
      if (v81)
      {
        goto LABEL_7;
      }

      v61 = *(v122 + 8);
      v62 = v80;
      v63 = &v155;
      goto LABEL_44;
    case 10:
      v164 = 10;
      sub_E1884();
      v97 = v144;
      v98 = v104;
      sub_1B5304();
      if (v98)
      {
        goto LABEL_7;
      }

      v61 = *(v124 + 8);
      v62 = v97;
      v63 = &v157;
      goto LABEL_44;
    case 11:
      v164 = 11;
      sub_E1830();
      v74 = v145;
      v75 = v104;
      sub_1B5304();
      if (v75)
      {
        goto LABEL_7;
      }

      v61 = *(v126 + 8);
      v62 = v74;
      v63 = v159;
      goto LABEL_44;
    case 12:
      v164 = 12;
      sub_E17DC();
      v78 = v146;
      v79 = v104;
      sub_1B5304();
      if (v79)
      {
        goto LABEL_7;
      }

      v61 = *(v128 + 8);
      v62 = v78;
      v63 = &v160;
      goto LABEL_44;
    case 13:
      v164 = 13;
      sub_E1788();
      v94 = v147;
      v95 = v104;
      sub_1B5304();
      if (v95)
      {
        goto LABEL_7;
      }

      v61 = *(v130 + 8);
      v62 = v94;
      v63 = &v162;
      goto LABEL_44;
    case 14:
      v164 = 14;
      sub_E1734();
      v72 = v148;
      v73 = v104;
      sub_1B5304();
      if (v73)
      {
        goto LABEL_7;
      }

      v61 = *(v132 + 8);
      v62 = v72;
      v63 = &v163;
      goto LABEL_44;
    case 15:
      v164 = 15;
      sub_E16E0();
      v83 = v149;
      v84 = v104;
      sub_1B5304();
      if (v84)
      {
        goto LABEL_7;
      }

      v61 = *(v134 + 8);
      v62 = v83;
      v63 = &v165;
      goto LABEL_44;
    case 16:
      v164 = 16;
      sub_E168C();
      v70 = v150;
      v71 = v104;
      sub_1B5304();
      if (v71)
      {
        goto LABEL_7;
      }

      v61 = *(v136 + 8);
      v62 = v70;
      v63 = &v166;
LABEL_44:
      v61(v62, *(v63 - 32));
      break;
    case 17:
      v164 = 17;
      sub_E1638();
      v91 = v151;
      v92 = v104;
      sub_1B5304();
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v91, v54);
      break;
    default:
      goto LABEL_6;
  }

  (*(v157 + 8))(v46, v42);
  swift_unknownObjectRelease();
  v68 = v158;
  *v53 = v58;
  return sub_2BF8(v68);
}

__n128 BookHistory.markedFinishedInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 BookHistory.reviewInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 88);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t BookHistory.secondsSinceMoreLikeThis.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t BookHistory.secondsSinceLessLikeThis.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t CollectionRecommendationRequest.overrideBookCandidateLimit.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t CollectionRecommendationRequest.overrideBookCandidateLimitPerSeedBook.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t BookHistory.secondsSincePurchased.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t BookHistory.secondsSinceFirstDownloadedViaFamilySharing.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

__n128 BookHistory.addedToWantToRead.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  result = *(v1 + 208);
  v4 = *(v1 + 224);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t BookHistory.secondsSinceRemovedFromWantToRead.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

__n128 BookHistory.sampled.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  result = *(v1 + 264);
  v4 = *(v1 + 280);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t BookHistory.secondsSinceProductPageViewed.getter()
{
  result = *(v0 + 304);
  v2 = *(v0 + 312);
  return result;
}

uint64_t BookHistory.secondsSinceFirstRecommended.getter()
{
  result = *(v0 + 320);
  v2 = *(v0 + 328);
  return result;
}

uint64_t BookHistory.daysRecommendedCount.getter()
{
  result = *(v0 + 336);
  v2 = *(v0 + 344);
  return result;
}

uint64_t BookHistory.consecutiveDaysNotRecommendedCount.getter()
{
  result = *(v0 + 352);
  v2 = *(v0 + 360);
  return result;
}

uint64_t BookHistory.daysRecommendationPassedOverCount.getter()
{
  result = *(v0 + 368);
  v2 = *(v0 + 376);
  return result;
}

uint64_t BookHistory.init(storeID:readFractionHighWaterMark:sampleReadFractionHighWaterMark:markedFinishedInfo:reviewInfo:secondsSinceMoreLikeThis:secondsSinceLessLikeThis:secondsSinceExplicitDecline:secondsSinceLastRead:secondsSincePurchased:secondsSinceFirstDownloadedViaFamilySharing:addedToWantToRead:secondsSinceRemovedFromWantToRead:sampled:secondsSinceProductPageViewed:secondsSinceFirstRecommended:daysRecommendedCount:consecutiveDaysNotRecommendedCount:daysRecommendationPassedOverCount:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, double a8@<X7>, uint64_t a9@<X8>, char a10, double a11, char a12, double a13, char a14, double a15, char a16, double a17, char a18, double a19, char a20, __int128 *a21, double a22, char a23, __int128 *a24, double a25, char a26, double a27, char a28, double a29, char a30, double a31, char a32, double a33, char a34)
{
  v34 = a8;
  v36 = *a6;
  v37 = *(a6 + 1);
  v38 = *(a6 + 3);
  v39 = *(a6 + 40);
  v40 = *a7;
  v41 = *a21;
  v42 = a21[1];
  v43 = *(a21 + 32);
  v44 = *a24;
  v45 = a24[1];
  v46 = *(a24 + 32);
  if ((a3 & 1) == 0)
  {
    v47 = 0;
    if (a2 < 0.0 || a2 > 1.0)
    {
      v34 = a2;
      goto LABEL_54;
    }
  }

  if ((a5 & 1) == 0)
  {
    v47 = 1;
    if (a4 < 0.0 || a4 > 1.0)
    {
      v34 = a4;
      goto LABEL_54;
    }
  }

  if (v39 != 255 && *&v37 < 0.0)
  {
    v34 = *(a6 + 1);
    v47 = 2;
LABEL_54:
    sub_E1C20();
    swift_allocError();
    *v49 = a1;
    *(v49 + 8) = v34;
    *(v49 + 16) = v47;
    return swift_willThrow();
  }

  v51 = *(a7 + 16);
  if ((a10 & 1) == 0 && a8 < 0.0)
  {
    v47 = 4;
    goto LABEL_54;
  }

  if ((a12 & 1) == 0 && a11 < 0.0)
  {
    v47 = 5;
    v34 = a11;
    goto LABEL_54;
  }

  if ((a14 & 1) == 0 && a13 < 0.0)
  {
    v47 = 6;
    v34 = a13;
    goto LABEL_54;
  }

  if ((a16 & 1) == 0 && a15 < 0.0)
  {
    v47 = 7;
    v34 = a15;
    goto LABEL_54;
  }

  if ((a18 & 1) == 0 && a17 < 0.0)
  {
    v47 = 8;
    v34 = a17;
    goto LABEL_54;
  }

  if ((a20 & 1) == 0 && a19 < 0.0)
  {
    v47 = 9;
    v34 = a19;
    goto LABEL_54;
  }

  if (v43 != 255 && *&v41 < 0.0)
  {
    v34 = *a21;
    v47 = 10;
    goto LABEL_54;
  }

  if ((a23 & 1) == 0 && a22 < 0.0)
  {
    v47 = 11;
    v34 = a22;
    goto LABEL_54;
  }

  if (v46 != 255 && *&v44 < 0.0)
  {
    v34 = *a24;
    v47 = 12;
    goto LABEL_54;
  }

  result = *&a25;
  if ((a26 & 1) == 0 && a25 < 0.0)
  {
    v47 = 13;
    v34 = a25;
    goto LABEL_54;
  }

  if ((a28 & 1) == 0 && a27 < 0.0)
  {
    v47 = 13;
    v34 = a27;
    goto LABEL_54;
  }

  if ((a30 & 1) == 0 && (*&a29 & 0x8000000000000000) != 0)
  {
    v47 = 15;
    v34 = a29;
    goto LABEL_54;
  }

  if ((a32 & 1) == 0 && (*&a31 & 0x8000000000000000) != 0)
  {
    v47 = 16;
    v34 = a31;
    goto LABEL_54;
  }

  if ((a34 & 1) == 0 && (*&a33 & 0x8000000000000000) != 0)
  {
    v47 = 17;
    v34 = a33;
    goto LABEL_54;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = v36;
  *(a9 + 80) = v39;
  *(a9 + 104) = v51;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10 & 1;
  *(a9 + 128) = a11;
  *(a9 + 136) = a12 & 1;
  *(a9 + 144) = a13;
  *(a9 + 152) = a14 & 1;
  *(a9 + 160) = a15;
  *(a9 + 168) = a16 & 1;
  *(a9 + 176) = a17;
  *(a9 + 184) = a18 & 1;
  *(a9 + 192) = a19;
  *(a9 + 200) = a20 & 1;
  *(a9 + 240) = v43;
  *(a9 + 248) = a22;
  *(a9 + 256) = a23 & 1;
  *(a9 + 296) = v46;
  *(a9 + 304) = a25;
  *(a9 + 312) = a26 & 1;
  *(a9 + 320) = a27;
  *(a9 + 328) = a28 & 1;
  *(a9 + 336) = a29;
  *(a9 + 344) = a30 & 1;
  *(a9 + 352) = a31;
  *(a9 + 360) = a32 & 1;
  *(a9 + 368) = a33;
  *(a9 + 376) = a34 & 1;
  *(a9 + 48) = v37;
  *(a9 + 64) = v38;
  *(a9 + 88) = v40;
  *(a9 + 208) = v41;
  *(a9 + 224) = v42;
  v50 = (a9 + 264);
  *v50 = v44;
  v50[1] = v45;
  return result;
}

unint64_t BookHistory.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v36 = v0[5];
  v37 = *(v0 + 4);
  v38 = *(v0 + 3);
  v7 = v0[11];
  v6 = v0[12];
  v43 = *(v0 + 80);
  v44 = *(v0 + 104);
  v8 = v0[14];
  v9 = v0[16];
  v45 = *(v0 + 120);
  v46 = *(v0 + 136);
  v10 = v0[18];
  v11 = v0[22];
  v47 = *(v0 + 152);
  v48 = *(v0 + 184);
  v39 = *(v0 + 14);
  v40 = *(v0 + 13);
  v49 = *(v0 + 200);
  v50 = *(v0 + 240);
  v29 = v0[24];
  v30 = v0[31];
  v41 = *(v0 + 35);
  v42 = *(v0 + 33);
  v12 = *(v0 + 296);
  v51 = *(v0 + 256);
  v52 = *(v0 + 312);
  v31 = v0[38];
  v32 = v0[40];
  v53 = *(v0 + 328);
  v54 = *(v0 + 344);
  v33 = v0[42];
  v34 = v0[44];
  v35 = v0[46];
  v55 = *(v0 + 360);
  v56 = *(v0 + 376);
  sub_1B5084(22);

  v57._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v57);

  if ((v3 & 1) == 0)
  {
    sub_1B5084(29);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BCA80;
    *(v13 + 56) = &type metadata for Double;
    *(v13 + 64) = &protocol witness table for Double;
    *(v13 + 32) = v2;
    v58._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v58);

    v59._countAndFlagsBits = 0xD00000000000001BLL;
    v59._object = 0x80000000001D72D0;
    sub_1B48D4(v59);
  }

  if ((v5 & 1) == 0)
  {
    sub_1B5084(35);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BCA80;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = v4;
    v60._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v60);

    v61._countAndFlagsBits = 0xD000000000000021;
    v61._object = 0x80000000001D72A0;
    sub_1B48D4(v61);
  }

  if (v43 != 255)
  {
    v62._countAndFlagsBits = 0xD000000000000010;
    v62._object = 0x80000000001D7260;
    sub_1B48D4(v62);
    if (v36)
    {
      if (v36 == 1)
      {
        v15._countAndFlagsBits = 0x6974616D6F747561;
        v15._object = 0xED0000796C6C6163;
      }

      else
      {
        v15._countAndFlagsBits = 0x6E776F6E6B6E75;
        v15._object = 0xE700000000000000;
      }
    }

    else
    {
      v15._countAndFlagsBits = 0x796C6C61756E616DLL;
      v15._object = 0xE800000000000000;
    }

    sub_1B48D4(v15);
    sub_1B5084(31);

    v63._countAndFlagsBits = BookHistory.CollectionAddition.debugDescription.getter();
    sub_1B48D4(v63);

    v64._countAndFlagsBits = 0xD00000000000001DLL;
    v64._object = 0x80000000001D7280;
    sub_1B48D4(v64);
  }

  if (v44)
  {
    if (v45)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1B5084(17);
    v77._countAndFlagsBits = 0x4977656976657220;
    v77._object = 0xEC0000003D6F666ELL;
    sub_1B48D4(v77);
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BCA80;
    *(v21 + 56) = &type metadata for Double;
    *(v21 + 64) = &protocol witness table for Double;
    *(v21 + 32) = v7;
    v78._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v78);

    v79._countAndFlagsBits = 44;
    v79._object = 0xE100000000000000;
    sub_1B48D4(v79);
    sub_1B4C94();
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    sub_1B48D4(v80);

    if (v45)
    {
LABEL_14:
      if (v46)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  sub_1B5084(28);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BCA80;
  *(v22 + 56) = &type metadata for Double;
  *(v22 + 64) = &protocol witness table for Double;
  *(v22 + 32) = v8;
  v81._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v81);

  v82._countAndFlagsBits = 0xD00000000000001ALL;
  v82._object = 0x80000000001D7240;
  sub_1B48D4(v82);

  if (v46)
  {
LABEL_15:
    if (v47)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  sub_1B5084(28);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BCA80;
  *(v23 + 56) = &type metadata for Double;
  *(v23 + 64) = &protocol witness table for Double;
  *(v23 + 32) = v9;
  v83._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v83);

  v84._countAndFlagsBits = 0xD00000000000001ALL;
  v84._object = 0x80000000001D7220;
  sub_1B48D4(v84);

  if (v47)
  {
LABEL_16:
    if (v48)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  sub_1B5084(31);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BCA80;
  *(v24 + 56) = &type metadata for Double;
  *(v24 + 64) = &protocol witness table for Double;
  *(v24 + 32) = v10;
  v85._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v85);

  v86._countAndFlagsBits = 0xD00000000000001DLL;
  v86._object = 0x80000000001D7200;
  sub_1B48D4(v86);

  if (v48)
  {
LABEL_17:
    if (v49)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_1B5084(25);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BCA80;
  *(v25 + 56) = &type metadata for Double;
  *(v25 + 64) = &protocol witness table for Double;
  *(v25 + 32) = v11;
  v87._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v87);

  v88._countAndFlagsBits = 0xD000000000000017;
  v88._object = 0x80000000001D71E0;
  sub_1B48D4(v88);

  if (v49)
  {
LABEL_18:
    if (v50 == 255)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_38:
  sub_1B5084(47);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BCA80;
  *(v26 + 56) = &type metadata for Double;
  *(v26 + 64) = &protocol witness table for Double;
  *(v26 + 32) = v29;
  v89._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v89);

  v90._countAndFlagsBits = 0xD00000000000002DLL;
  v90._object = 0x80000000001D71B0;
  sub_1B48D4(v90);

  if (v50 != 255)
  {
LABEL_19:
    sub_1B5084(33);

    v65._countAndFlagsBits = BookHistory.CollectionAddition.debugDescription.getter();
    sub_1B48D4(v65);

    v66._countAndFlagsBits = 0xD00000000000001FLL;
    v66._object = 0x80000000001D7080;
    sub_1B48D4(v66);
  }

LABEL_20:
  if ((v51 & 1) == 0)
  {
    sub_1B5084(37);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BCA80;
    *(v16 + 56) = &type metadata for Double;
    *(v16 + 64) = &protocol witness table for Double;
    *(v16 + 32) = v30;
    v67._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v67);

    v68._countAndFlagsBits = 0xD000000000000023;
    v68._object = 0x80000000001D7180;
    sub_1B48D4(v68);
  }

  if (v12 != 255)
  {
    sub_1B5084(23);

    v69._countAndFlagsBits = BookHistory.CollectionAddition.debugDescription.getter();
    sub_1B48D4(v69);

    v70._countAndFlagsBits = 0xD000000000000015;
    v70._object = 0x80000000001D70A0;
    sub_1B48D4(v70);
  }

  if ((v52 & 1) == 0)
  {
    sub_1B5084(33);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BCA80;
    *(v17 + 56) = &type metadata for Double;
    *(v17 + 64) = &protocol witness table for Double;
    *(v17 + 32) = v31;
    v71._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v71);

    v72._countAndFlagsBits = 0xD00000000000001FLL;
    v72._object = 0x80000000001D7160;
    sub_1B48D4(v72);
  }

  if ((v53 & 1) == 0)
  {
    sub_1B5084(32);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BCA80;
    *(v18 + 56) = &type metadata for Double;
    *(v18 + 64) = &protocol witness table for Double;
    *(v18 + 32) = v32;
    v73._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v73);

    v74._countAndFlagsBits = 0xD00000000000001ELL;
    v74._object = 0x80000000001D7140;
    sub_1B48D4(v74);
  }

  if (v54)
  {
    if (v55)
    {
      goto LABEL_30;
    }

LABEL_41:
    sub_1B5084(38);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BCA80;
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 32) = v34;
    v93._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v93);

    v94._countAndFlagsBits = 0xD000000000000024;
    v94._object = 0x80000000001D70F0;
    sub_1B48D4(v94);

    if (v56)
    {
      return 0xD000000000000014;
    }

    goto LABEL_31;
  }

  sub_1B5084(24);

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BCA80;
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v33;
  v91._countAndFlagsBits = sub_1B47F4();
  sub_1B48D4(v91);

  v92._countAndFlagsBits = 0xD000000000000016;
  v92._object = 0x80000000001D7120;
  sub_1B48D4(v92);

  if ((v55 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  if ((v56 & 1) == 0)
  {
LABEL_31:
    sub_1B5084(37);

    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BCA80;
    *(v19 + 56) = &type metadata for Int;
    *(v19 + 64) = &protocol witness table for Int;
    *(v19 + 32) = v35;
    v75._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v75);

    v76._countAndFlagsBits = 0xD000000000000023;
    v76._object = 0x80000000001D70C0;
    sub_1B48D4(v76);
  }

  return 0xD000000000000014;
}