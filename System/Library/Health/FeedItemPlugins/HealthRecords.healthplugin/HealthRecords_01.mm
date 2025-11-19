uint64_t sub_29D4AD5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v4 = MEMORY[0x29EDB8AB0];
  sub_29D4B2EB0(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v33 - v8;
  sub_29D4B2EB0(0, &qword_2A1A165E8, sub_29D4B3D94, v4);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v33 - v13;
  sub_29D4B3DC8(0);
  v39 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3E78();
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 0xBuLL)
  {
    v40 = MEMORY[0x29EDCA190];
    sub_29D4B3AC0(0);
    sub_29D5B3A2C();
    sub_29D4B3AF4();
    sub_29D5B39EC();
    (*(v7 + 8))(v9, v6);
    sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8);
    v31 = v39;
    v30 = sub_29D5B3B1C();
    (*(v16 + 8))(v18, v31);
  }

  else
  {
    v40 = a1;
    v34 = v20;
    v35 = v21;
    sub_29D4B3D94(0);

    v24 = sub_29D5B3A2C();
    MEMORY[0x2A1C7C4A8](v24);
    v25 = v38;
    v27 = v36;
    v26 = v37;
    *(&v33 - 4) = v38;
    *(&v33 - 3) = v27;
    *(&v33 - 2) = v26;
    sub_29D4B3AC0(0);
    sub_29D5B3A0C();
    (*(v12 + 8))(v14, v11);
    *(swift_allocObject() + 16) = v25;
    sub_29D4B3A8C(0);
    sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C);
    v28 = v39;
    sub_29D5B3B8C();

    (*(v16 + 8))(v18, v28);
    sub_29D4B2F14(&qword_2A1A16CC8, sub_29D4B3E78);
    v29 = v34;
    v30 = sub_29D5B3B1C();
    (*(v35 + 8))(v23, v29);
  }

  return v30;
}

double sub_29D4ADB0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v109 = a3;
  v100 = a1;
  v99 = sub_29D5B148C();
  v95 = *(v99 - 8);
  MEMORY[0x2A1C7C4A8](v99);
  v94 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29D5B371C();
  v97 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v110 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B134C();
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v112 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v103 = &v92 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v111 = &v92 - v15;
  v16 = sub_29D5B1AAC();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B1D6C();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a2;
  v24 = *(a2 + 16);
  v101 = a4;
  if (v24)
  {
    v25 = MEMORY[0x29EDCA190];
  }

  else
  {
    (*(v21 + 104))(v23, *MEMORY[0x29EDC4068], v20);
    (*(v17 + 104))(v19, *MEMORY[0x29EDC3F10], v16);
    v26 = sub_29D5B143C();
    v27 = sub_29D5B26EC();
    v108 = v28;

    (*(v17 + 8))(v19, v16);
    (*(v21 + 8))(v23, v20);
    v29 = sub_29D514C4C(0, 1, 1, MEMORY[0x29EDCA190]);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    v32 = v29;
    if (v31 >= v30 >> 1)
    {
      v32 = sub_29D514C4C((v30 > 1), v31 + 1, 1, v29);
    }

    *(v32 + 2) = v31 + 1;
    v33 = &v32[16 * v31];
    v25 = v32;
    v34 = v108;
    *(v33 + 4) = v27;
    *(v33 + 5) = v34;
    v24 = 0;
  }

  if (*(v100 + 16))
  {
    v35 = v109;
  }

  else
  {
    v36 = v24;
    (*(v21 + 104))(v23, *MEMORY[0x29EDC4068], v20);
    (*(v17 + 104))(v19, *MEMORY[0x29EDC3F10], v16);
    v37 = sub_29D5B143C();
    v38 = sub_29D5B26DC();
    v108 = v39;

    (*(v17 + 8))(v19, v16);
    (*(v21 + 8))(v23, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_29D514C4C(0, *(v25 + 2) + 1, 1, v25);
    }

    v41 = *(v25 + 2);
    v40 = *(v25 + 3);
    v35 = v109;
    if (v41 >= v40 >> 1)
    {
      v91 = sub_29D514C4C((v40 > 1), v41 + 1, 1, v25);
      v24 = v36;
      v25 = v91;
    }

    else
    {
      v24 = v36;
    }

    *(v25 + 2) = v41 + 1;
    v42 = &v25[16 * v41];
    v43 = v108;
    *(v42 + 4) = v38;
    *(v42 + 5) = v43;
  }

  v93 = v25;
  if (v24 && (v44 = sub_29D5B143C(), v45 = sub_29D5B10DC(), v46 = sub_29D5B10CC(), v45, v44, (v46 & 1) == 0))
  {
    v75 = v35[2];
    if (v75)
    {
      v109 = *(v113 + 16);
      v102 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v76 = v35 + v102;
      v77 = *(v113 + 72);
      v107 = (v113 + 8);
      v108 = (v113 + 56);
      v106 = (v113 + 48);
      v35 = MEMORY[0x29EDCA190];
      v113 += 16;
      v105 = (v113 + 16);
      v104 = xmmword_29D5B62A0;
      v78 = v114;
      v79 = v110;
      do
      {
        v80 = v111;
        v81 = v109;
        (v109)(v111, v76, v78);
        v81(v79, v80, v78);
        sub_29D4B4B08(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = v104;
        *(inited + 32) = sub_29D5B15DC();
        v83 = inited + 32;
        *(inited + 40) = v84;
        v85 = sub_29D5B130C();
        sub_29D4F1774(inited);
        v78 = v114;
        swift_setDeallocating();
        sub_29D4B4B58(v83);
        v85(v117, 0);
        (*v108)(v79, 0, 1, v78);
        (*v107)(v80, v78);
        if ((*v106)(v79, 1, v78) == 1)
        {
          sub_29D4B4540(v79, sub_29D4B4AD4);
        }

        else
        {
          v86 = *v105;
          v87 = v103;
          (*v105)(v103, v79, v78);
          v86(v112, v87, v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_29D515230(0, v35[2] + 1, 1, v35);
          }

          v89 = v35[2];
          v88 = v35[3];
          if (v89 >= v88 >> 1)
          {
            v35 = sub_29D515230(v88 > 1, v89 + 1, 1, v35);
          }

          v35[2] = v89 + 1;
          v90 = v35 + v102 + v89 * v77;
          v78 = v114;
          v86(v90, v112, v114);
        }

        v76 += v77;
        --v75;
      }

      while (v75);
    }

    else
    {
      v35 = MEMORY[0x29EDCA190];
    }
  }

  else
  {
  }

  v116 = v35;

  sub_29D54F7D0(v47);

  sub_29D54F7D0(v48);
  v49 = v116;
  v50 = v96;
  sub_29D5B36AC();
  v51 = v95;
  v52 = v94;
  v53 = v99;
  (*(v95 + 16))(v94, v101, v99);

  v54 = sub_29D5B370C();
  v55 = sub_29D5B426C();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v51;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v115 = v58;
    *v57 = 136446722;
    v117[0] = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v59 = sub_29D5B3E7C();
    v61 = sub_29D501890(v59, v60, &v115);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2082;
    v62 = sub_29D5B143C();
    v63 = sub_29D5B10AC();

    v117[0] = v63;
    sub_29D4B2EB0(0, &qword_2A1A16328, sub_29D4B4BAC, MEMORY[0x29EDC9C68]);
    sub_29D5B4CAC();
    v64 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v65 = sub_29D5B3E7C();
    v67 = v66;
    (*(v56 + 8))(v52, v99);
    v68 = sub_29D501890(v65, v67, &v115);

    *(v57 + 14) = v68;
    *(v57 + 22) = 2082;
    v117[0] = v49;
    sub_29D4B3AC0(0);

    sub_29D5B4CAC();
    v69 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v70 = sub_29D5B3E7C();
    v72 = sub_29D501890(v70, v71, &v115);

    *(v57 + 24) = v72;
    _os_log_impl(&dword_29D48C000, v54, v55, "[%{public}s]: for profile: %{public}s, generated new feed items: %{public}s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v58, -1, -1);
    MEMORY[0x29ED5FB80](v57, -1, -1);
  }

  else
  {

    (*(v51 + 8))(v52, v53);
  }

  (*(v97 + 8))(v50, v98);
  sub_29D4B4B08(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v73 = swift_allocObject();
  *&result = 2;
  *(v73 + 16) = xmmword_29D5B5E20;
  *(v73 + 32) = v49;
  *(v73 + 40) = 0;
  *(v73 + 48) = 0;
  *(v73 + 56) = 0;
  *(v73 + 64) = 0;
  *(v73 + 72) = v93;
  *(v73 + 80) = 0;
  *(v73 + 88) = 0;
  *(v73 + 96) = 0;
  *(v73 + 104) = 32;
  return result;
}

uint64_t sub_29D4AE7A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC();
  v5 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3C64(0, &qword_2A17A3D48, MEMORY[0x29EDB8B18]);
  v8 = v7;
  v39 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v34 - v9;
  v37 = sub_29D5B371C();
  v11 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_29D5B36AC();
  v15 = v14;
  v16 = sub_29D5B370C();
  v17 = sub_29D5B427C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136446466;
    v41 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v21 = sub_29D5B3E7C();
    v36 = a2;
    v23 = sub_29D501890(v21, v22, &v42);
    v35 = v5;
    v24 = v23;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v41 = v14;
    v25 = v14;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v42);

    *(v19 + 14) = v29;
    a2 = v36;
    _os_log_impl(&dword_29D48C000, v16, v17, "[%{public}s] Unable to compute desired feed item difference based on sharable model change for commit: %{public}s", v19, 0x16u);
    v5 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v20, -1, -1);
    v30 = v19;
    v8 = v34;
    MEMORY[0x29ED5FB80](v30, -1, -1);
  }

  (*(v11 + 8))(v13, v37);
  v41 = MEMORY[0x29EDCA190];
  sub_29D4B4B08(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v31 = v38;
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v40 + 8))(v31, v5);
  sub_29D4B4A90(&qword_2A17A3D50, &qword_2A17A3D48, MEMORY[0x29EDB8B18]);
  v32 = sub_29D5B3B1C();
  result = (*(v39 + 8))(v10, v8);
  *a2 = v32;
  return result;
}

uint64_t sub_29D4AEC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v131 = a2;
  v128 = a4;
  v126 = sub_29D5B148C();
  v132 = *(v126 - 8);
  MEMORY[0x2A1C7C4A8](v126);
  v7 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_29D5B371C();
  v122 = *(v123 - 8);
  MEMORY[0x2A1C7C4A8](v123);
  v124 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_29D5B134C();
  v135 = *(v133 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v133);
  v119 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v120 = &v118 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v118 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v127 = &v118 - v19;
  v144 = sub_29D5B0E6C();
  v136 = *(v144 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v144);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = &v118 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23);
  v129 = &v118 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v137 = &v118 - v29;
  MEMORY[0x2A1C7C4A8](v28);
  v134 = &v118 - v30;
  sub_29D4B4CA8(0);
  v32 = MEMORY[0x2A1C7C4A8](v31 - 8);
  v140 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v35 = &v118 - v34;
  v36 = type metadata accessor for SharedConceptFeedItemData(0);
  v37 = *(v36 - 8);
  v146 = v36;
  v147 = v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v143 = (&v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v139 = &v118 - v41;
  result = MEMORY[0x2A1C7C4A8](v40);
  v148 = a3;
  v149 = (&v118 - v43);
  v44 = *a1;
  v150 = *(*a1 + 16);
  v121 = v7;
  v125 = v18;
  v130 = v11;
  v142 = v25;
  if (v150)
  {
    v45 = 0;
    v141 = MEMORY[0x29EDCA190];
    v145 = v22;
    while (1)
    {
      if (v45 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      v46 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v47 = *(v147 + 9);
      v48 = v149;
      sub_29D4B4CDC(v44 + v46 + v47 * v45, v149, type metadata accessor for SharedConceptFeedItemData);
      sub_29D4B4CDC(v48 + *(v146 + 13), v35, sub_29D4B4CA8);
      v49 = sub_29D5B175C();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v35, 1, v49) == 1)
      {
        sub_29D4B4540(v35, sub_29D4B4CA8);
      }

      else
      {
        v51 = v35;
        v52 = v44;
        v53 = v140;
        sub_29D5B174C();
        (*(v50 + 56))(v53, 0, 1, v49);
        v54 = sub_29D5B173C();
        v55 = v53;
        v44 = v52;
        v35 = v51;
        sub_29D4B4540(v55, sub_29D4B4CA8);
        (*(v50 + 8))(v51, v49);
        if (v54)
        {
          sub_29D4B45A0(v149, v139);
          v56 = v141;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v151 = v56;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29D4C6BC0(0, *(v56 + 16) + 1, 1);
            v56 = v151;
          }

          v59 = *(v56 + 16);
          v58 = *(v56 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_29D4C6BC0(v58 > 1, v59 + 1, 1);
            v56 = v151;
          }

          *(v56 + 16) = v59 + 1;
          v141 = v56;
          result = sub_29D4B45A0(v139, v56 + v46 + v59 * v47);
          goto LABEL_5;
        }
      }

      result = sub_29D4B4540(v149, type metadata accessor for SharedConceptFeedItemData);
LABEL_5:
      a3 = v148;
      ++v45;
      v22 = v145;
      if (v150 == v45)
      {
        goto LABEL_15;
      }
    }
  }

  v141 = MEMORY[0x29EDCA190];
LABEL_15:
  if (!*(v141 + 16))
  {

LABEL_32:
    *v128 = MEMORY[0x29EDCA190];
    return result;
  }

  v60 = v137;
  sub_29D5B0D9C();
  v61 = v136;
  v62 = v129;
  v63 = v144;
  (*(v136 + 16))(v129, v60, v144);
  v64 = v150;
  if (v150)
  {
    v65 = v143;
    v66 = v144;
    v146 = v143 + *(v146 + 11);
    v67 = v44 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v147 = *(v147 + 9);
    v149 = (v61 + 8);
    v68 = (v61 + 32);
    do
    {
      v150 = v64;
      sub_29D4B4CDC(v67, v65, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B0E1C();
      v69 = sub_29D5B0DFC();
      sub_29D4B4540(v65, type metadata accessor for SharedConceptFeedItemData);
      v70 = *v149;
      if (v69)
      {
        v71 = v62;
      }

      else
      {
        v71 = v22;
      }

      if (v69)
      {
        v72 = v22;
      }

      else
      {
        v72 = v62;
      }

      v70(v71, v66);
      v73 = *v68;
      v74 = v142;
      (*v68)(v142, v72, v66);
      v73(v62, v74, v66);
      v65 = v143;
      v67 += v147;
      v64 = v150 - 1;
    }

    while (v150 != 1);
    v63 = v144;
    a3 = v148;
    v75 = v149;
    v61 = v136;
  }

  else
  {
    v75 = (v61 + 8);
    v70 = *(v61 + 8);
  }

  v70(v137, v63);
  v76 = v134;
  (*(v61 + 32))(v134, v62, v63);
  v77 = v130;
  v78 = v138;
  sub_29D4AFB2C(v141, v76, v131, a3, v130);
  v79 = v133;
  v80 = v135;
  v81 = v132;
  v138 = v78;
  if (v78)
  {
    v70(v76, v63);
  }

  v149 = v75;
  v150 = v70;

  if ((*(v80 + 48))(v77, 1, v79) == 1)
  {
    sub_29D4B4540(v77, sub_29D4B4AD4);
    result = (v150)(v76, v63);
    goto LABEL_32;
  }

  v82 = (v80 + 32);
  v83 = v127;
  v84 = v77;
  v85 = *(v80 + 32);
  v85(v127, v84, v79);
  v86 = v124;
  sub_29D5B36AC();
  v87 = v121;
  (*(v81 + 16))(v121, v148, v126);
  v88 = *(v80 + 16);
  v88(v125, v83, v79);
  v89 = v86;
  v90 = sub_29D5B370C();
  LODWORD(v148) = sub_29D5B426C();
  if (os_log_type_enabled(v90, v148))
  {
    v91 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v152 = v145;
    *v91 = 136446722;
    v151 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v92 = sub_29D5B3E7C();
    v143 = v90;
    v94 = sub_29D501890(v92, v93, &v152);
    v147 = v85;
    v95 = v94;

    *(v91 + 4) = v95;
    *(v91 + 12) = 2082;
    v96 = sub_29D5B143C();
    v97 = sub_29D5B10AC();

    v151 = v97;
    sub_29D4B2EB0(0, &qword_2A1A16328, sub_29D4B4BAC, MEMORY[0x29EDC9C68]);
    sub_29D5B4CAC();
    v98 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v99 = sub_29D5B3E7C();
    v101 = v100;
    (*(v81 + 8))(v87, v126);
    v102 = sub_29D501890(v99, v101, &v152);

    *(v91 + 14) = v102;
    *(v91 + 22) = 2082;
    v103 = v120;
    v146 = v82;
    v104 = v125;
    v88(v120, v125, v79);
    v88(v119, v103, v79);
    sub_29D5B4CAC();
    v105 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v106 = sub_29D5B3E7C();
    v108 = v107;
    v109 = v135;
    v110 = *(v135 + 8);
    v110(v103, v79);
    v110(v104, v79);
    v111 = sub_29D501890(v106, v108, &v152);
    v85 = v147;

    *(v91 + 24) = v111;
    v112 = v143;
    _os_log_impl(&dword_29D48C000, v143, v148, "[%{public}s]: for profile: %{public}s, generated combo feed item: %{public}s", v91, 0x20u);
    v113 = v145;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v113, -1, -1);
    MEMORY[0x29ED5FB80](v91, -1, -1);

    (*(v122 + 8))(v124, v123);
  }

  else
  {

    v115 = v135;
    (*(v135 + 8))(v125, v79);
    (*(v81 + 8))(v87, v126);
    (*(v122 + 8))(v89, v123);
    v109 = v115;
  }

  v114 = v150;
  sub_29D4B2EB0(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  v116 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_29D5B62A0;
  v85((v117 + v116), v127, v79);
  result = (v114)(v134, v144);
  *v128 = v117;
  return result;
}

void sub_29D4AFB2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a4;
  v113 = a2;
  v108 = a3;
  v103 = a5;
  v88 = sub_29D5B12DC();
  v87 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v86 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2EB0(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v94 = &v80 - v8;
  v111 = sub_29D5B0E6C();
  v117 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111);
  v93 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v92 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B170C();
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v100 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29D5B104C();
  v89 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v90 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B134C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v110 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B1AAC();
  v106 = *(v18 - 8);
  v107 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v105 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SharedConceptFeedItemData(0);
  v120 = *(v20 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v118 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v80 - v23;
  v25 = sub_29D5B1D6C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v104 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v80 - v29;
  v115 = type metadata accessor for SharedConceptComboFeedItemData(0);
  v31 = MEMORY[0x2A1C7C4A8](v115);
  v109 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x29ED5F4B0](v31);
  v33 = a1;
  v34 = *(a1 + 16);
  if (!v34)
  {
    (*(v16 + 56))(v103, 1, 1, v15);
LABEL_17:
    objc_autoreleasePoolPop(v114);
    return;
  }

  v83 = v16;
  v84 = v15;
  v35 = *MEMORY[0x29EDC4068];
  v98 = v26;
  v36 = *(v26 + 104);
  LODWORD(v97) = v35;
  v99 = v25;
  v96 = v26 + 104;
  v95 = v36;
  v36(v30);
  v37 = &v24[*(v20 + 28)];
  v38 = v33 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
  v120 = *(v120 + 72);
  v39 = MEMORY[0x29EDCA190];
  v81 = v38;
  v82 = v34;
  v119 = v30;
  do
  {
    sub_29D4B4CDC(v38, v24, type metadata accessor for SharedConceptFeedItemData);
    v41 = *v37;
    v40 = *(v37 + 1);

    sub_29D4B4540(v24, type metadata accessor for SharedConceptFeedItemData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_29D514C4C(0, *(v39 + 2) + 1, 1, v39);
    }

    v43 = *(v39 + 2);
    v42 = *(v39 + 3);
    if (v43 >= v42 >> 1)
    {
      v39 = sub_29D514C4C((v42 > 1), v43 + 1, 1, v39);
    }

    *(v39 + 2) = v43 + 1;
    v44 = &v39[16 * v43];
    *(v44 + 4) = v41;
    *(v44 + 5) = v40;
    v45 = v119;
    v38 += v120;
    --v34;
  }

  while (v34);
  v46 = v115;
  v47 = *(v117 + 16);
  v48 = v109;
  v49 = (v109 + *(v115 + 24));
  v117 += 16;
  v85 = v47;
  v47(v49, v113, v111);
  v50 = v98;
  v51 = v99;
  (*(v98 + 32))(v48, v45, v99);
  *(v48 + *(v46 + 20)) = v39;
  v52 = v104;
  v95(v104, v97, v51);
  v54 = v105;
  v53 = v106;
  v55 = v107;
  (*(v106 + 104))(v105, *MEMORY[0x29EDC3F10], v107);
  v56 = sub_29D5B143C();
  v97 = sub_29D5B26EC();
  v119 = v57;

  (*(v53 + 8))(v54, v55);
  (*(v50 + 8))(v52, v51);
  sub_29D4B2F14(&qword_2A17A3D78, type metadata accessor for SharedConceptComboFeedItemData);
  v58 = v116;
  sub_29D5B0BEC();
  if (v58)
  {
    sub_29D4B4540(v48, type metadata accessor for SharedConceptComboFeedItemData);

    objc_autoreleasePoolPop(v114);
    return;
  }

  v116 = 0;
  type metadata accessor for SharedConceptComboTileViewController();
  (*(v89 + 104))(v90, *MEMORY[0x29EDC36E0], v91);
  sub_29D5B143C();
  sub_29D5B110C();
  v85(v93, v113, v111);
  sub_29D5B0C6C();
  v59 = v100;
  sub_29D5B16EC();
  v60 = v101;
  v61 = v94;
  v62 = v59;
  v63 = v102;
  (*(v101 + 16))(v94, v62, v102);
  (*(v60 + 56))(v61, 0, 1, v63);
  sub_29D5B12BC();
  v64 = [objc_opt_self() categoryWithID_];
  if (v64)
  {
    v65 = v64;
    sub_29D5B111C();

    sub_29D5B123C();
    v121 = MEMORY[0x29EDCA190];
    v66 = v82;
    sub_29D4C6C10(0, v82, 0);
    v67 = v121;
    v68 = v87;
    v119 = (v87 + 32);
    v69 = v88;
    v70 = v86;
    v71 = v81;
    do
    {
      v72 = v118;
      sub_29D4B4CDC(v71, v118, type metadata accessor for SharedConceptFeedItemData);

      sub_29D5B12CC();
      sub_29D4B4540(v72, type metadata accessor for SharedConceptFeedItemData);
      v121 = v67;
      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_29D4C6C10(v73 > 1, v74 + 1, 1);
        v67 = v121;
      }

      *(v67 + 16) = v74 + 1;
      (*(v68 + 32))(v67 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v74, v70, v69);
      v71 += v120;
      --v66;
    }

    while (v66);
    sub_29D5960BC(v67);

    v75 = v110;
    sub_29D5B12FC();
    (*(v101 + 8))(v100, v102);
    sub_29D4B4540(v109, type metadata accessor for SharedConceptComboFeedItemData);
    v76 = v83;
    v77 = v103;
    v78 = v75;
    v79 = v84;
    (*(v83 + 32))(v103, v78, v84);
    (*(v76 + 56))(v77, 0, 1, v79);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_29D4B0784@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B2EB0(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - v6;
  sub_29D4B3DC8(0);
  v9 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29D5B371C();
  v12 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v5;
    v20 = v19;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v20 = 136446466;
    v41 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v21 = sub_29D5B3E7C();
    v37 = a2;
    v23 = sub_29D501890(v21, v22, &v42);
    v36 = v9;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v41 = v15;
    v25 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v42);

    *(v20 + 14) = v29;
    a2 = v37;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to generate combo tile: %{public}s", v20, 0x16u);
    v9 = v36;
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v20;
    v5 = v35;
    MEMORY[0x29ED5FB80](v31, -1, -1);
  }

  (*(v12 + 8))(v14, v38);
  v41 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v39 + 8))(v7, v5);
  sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8);
  v32 = sub_29D5B3B1C();
  result = (*(v40 + 8))(v11, v9);
  *a2 = v32;
  return result;
}

id sub_29D4B0C08@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v171 = a4;
  v166 = a3;
  v173 = a1;
  v141 = a5;
  sub_29D4B4C4C(0);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v134 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v138 = &v131 - v9;
  v151 = sub_29D5B33EC();
  v136 = *(v151 - 8);
  MEMORY[0x2A1C7C4A8](v151);
  v135 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2EB0(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v150 = &v131 - v12;
  v13 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v149 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_29D5B170C();
  v155 = *(v156 - 8);
  MEMORY[0x2A1C7C4A8](v156);
  v154 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B0E6C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v148 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v153 = &v131 - v20;
  v147 = sub_29D5B104C();
  v145 = *(v147 - 8);
  MEMORY[0x2A1C7C4A8](v147);
  v146 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_29D5B134C();
  v139 = *(v140 - 8);
  MEMORY[0x2A1C7C4A8](v140);
  v152 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_29D5B1AAC();
  v164 = *(v165 - 1);
  MEMORY[0x2A1C7C4A8](v165);
  v163 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_29D5B1D6C();
  v24 = *(v162 - 8);
  MEMORY[0x2A1C7C4A8](v162);
  v160 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B44A0();
  v27 = v26;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v133 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v131 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v131 - v33;
  sub_29D4B4CDC(a2, &v131 - v33, sub_29D4B44A0);
  v35 = *(v27 + 48);
  v36 = *(v27 + 64);
  v172 = v17;
  v37 = *(v17 + 16);
  v37(v32, v34, v16);
  v38 = &v32[*(v27 + 48)];
  v159 = v35;
  v37(v38, &v34[v35], v16);
  v132 = v27;
  v39 = *(v27 + 64);
  v168 = v32;
  v158 = v36;
  v170 = v16;
  v144 = v37;
  v143 = v17 + 16;
  v40 = (v37)(&v32[v39], &v34[v36], v16);
  v157 = MEMORY[0x29ED5F4B0](v40);
  v41 = *v173;
  v169 = *(v173 + 1);
  v42 = v160;
  v43 = v162;
  (*(v24 + 104))(v160, *MEMORY[0x29EDC4068], v162);
  v44 = v164;
  v45 = v163;
  v46 = v165;
  (*(v164 + 104))(v163, *MEMORY[0x29EDC3F10], v165);
  v47 = sub_29D5B143C();
  v137 = v41;
  v142 = sub_29D5B26FC();
  v161 = v48;

  (*(v44 + 8))(v45, v46);
  (*(v24 + 8))(v42, v43);
  v49 = type metadata accessor for SharedConceptFeedItemData(0);
  sub_29D4B2F14(&qword_2A17A3D68, type metadata accessor for SharedConceptFeedItemData);
  v50 = v167;
  sub_29D5B0BEC();
  if (v50)
  {

    objc_autoreleasePoolPop(v157);
    sub_29D4B4540(v168, sub_29D4B44A0);
    v51 = *(v172 + 8);
    v52 = v170;
    v51(&v34[v158], v170);
    v51(&v34[v159], v52);
    return (v51)(v34, v52);
  }

  v166 = 0;
  v167 = v34;
  type metadata accessor for SharedConceptTileViewController();
  (*(v145 + 104))(v146, *MEMORY[0x29EDC36E0], v147);
  sub_29D5B143C();
  v54 = v152;
  sub_29D5B110C();
  v55 = v49;
  v56 = v173;
  v57 = v153;
  sub_29D5B0E1C();
  v144(v148, v57, v170);
  sub_29D5B0C6C();
  v58 = v154;
  sub_29D5B16EC();
  v59 = v155;
  v60 = v150;
  v61 = v58;
  v62 = v156;
  (*(v155 + 16))(v150, v61, v156);
  (*(v59 + 56))(v60, 0, 1, v62);
  sub_29D5B12BC();

  sub_29D5B124C();
  sub_29D4B4B08(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v171 = xmmword_29D5B62A0;
  *(inited + 16) = xmmword_29D5B62A0;
  *(inited + 32) = sub_29D5B162C();
  *(inited + 40) = v64;
  v65 = sub_29D5B130C();
  sub_29D4F1774(inited);
  swift_setDeallocating();
  sub_29D4B4B58(inited + 32);
  v65(v175, 0);
  result = [objc_opt_self() categoryWithID_];
  if (result)
  {
    v66 = result;
    sub_29D5B111C();

    sub_29D5B123C();
    sub_29D4B2EB0(0, &qword_2A17A3D70, MEMORY[0x29EDC3828], MEMORY[0x29EDC9E90]);
    v67 = sub_29D5B12DC();
    v68 = *(v67 - 8);
    v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = v171;

    sub_29D5B12CC();
    sub_29D5960BC(v70);
    swift_setDeallocating();
    (*(v68 + 8))(v70 + v69, v67);
    swift_deallocClassInstance();
    sub_29D5B12FC();
    v71 = v172;
    v72 = v138;
    if (*(v56 + *(v55 + 40)))
    {
      v73 = *MEMORY[0x29EDC2B98];
      v74 = sub_29D5B34AC();
      v75 = v135;
      (*(*(v74 - 8) + 104))(v135, v73, v74);
      v76 = v136;
      v77 = v151;
      (*(v136 + 104))(v75, *MEMORY[0x29EDC2AD8], v151);
      v78 = sub_29D5B33DC();
      v80 = v79;
      (*(v76 + 8))(v75, v77);
      v81 = sub_29D5B130C();
      sub_29D59AD10(&v174, v78, v80);

      v81(v175, 0);
      (*(v155 + 8))(v154, v156);
      v82 = *(v71 + 8);
      v83 = v170;
      v82(v153, v170);
      v84 = v141;
      v85 = v140;
      v86 = v139;
      v87 = v54;
      v88 = v167;
LABEL_15:
      v107 = v158;
      goto LABEL_16;
    }

    sub_29D5B0E1C();
    v89 = *(v71 + 56);
    v83 = v170;
    v89(v72, 0, 1, v170);
    v90 = v133;
    sub_29D4B4CDC(v168, v133, sub_29D4B44A0);
    v91 = v132;
    v173 = *(v132 + 48);
    v92 = *(v132 + 64);
    v93 = v72;
    v94 = v134;
    v165 = *(v172 + 32);
    v164 = v172 + 32;
    (v165)(v134, v90, v83);
    v169 = v89;
    v89(v94, 0, 1, v83);
    v95 = sub_29D58C560(v72, v94);
    sub_29D4B4540(v94, sub_29D4B4C4C);
    sub_29D4B4540(v93, sub_29D4B4C4C);
    v96 = *(v172 + 8);
    v172 += 8;
    *&v171 = v172 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v96(v90 + v92, v83);
    v97 = v173 + v90;
    v173 = v96;
    v96(v97, v83);
    if (v95)
    {
      v98 = *MEMORY[0x29EDC2B90];
      v99 = sub_29D5B34AC();
      v100 = v135;
      (*(*(v99 - 8) + 104))(v135, v98, v99);
      v101 = v136;
      v102 = v151;
      (*(v136 + 104))(v100, *MEMORY[0x29EDC2AD8], v151);
      v103 = sub_29D5B33DC();
      v105 = v104;
      (*(v101 + 8))(v100, v102);
      v87 = v152;
      v106 = sub_29D5B130C();
      sub_29D59AD10(&v174, v103, v105);

      v106(v175, 0);
      (*(v155 + 8))(v154, v156);
      v82 = v173;
      v173(v153, v83);
      v84 = v141;
      v85 = v140;
      v86 = v139;
      v88 = v167;
      v107 = v158;
LABEL_16:
      (*(v86 + 32))(v84, v87, v85);
      objc_autoreleasePoolPop(v157);
      sub_29D4B4540(v168, sub_29D4B44A0);
      v82(&v88[v107], v83);
      v82(&v88[v159], v83);
      v82(v88, v83);
      return (*(v86 + 56))(v84, 0, 1, v85);
    }

    sub_29D5B0E1C();
    v108 = v169;
    v169(v93, 0, 1, v83);
    sub_29D4B4CDC(v168, v90, sub_29D4B44A0);
    v109 = *(v91 + 64);
    (v165)(v94, v90 + *(v91 + 48), v83);
    v108(v94, 0, 1, v83);
    LOBYTE(v108) = sub_29D58C560(v93, v94);
    sub_29D4B4540(v94, sub_29D4B4C4C);
    sub_29D4B4540(v93, sub_29D4B4C4C);
    v110 = v173;
    v173(v90 + v109, v83);
    v110(v90, v83);
    v111 = v151;
    if (v108)
    {
      v112 = *MEMORY[0x29EDC2BA0];
      v113 = sub_29D5B34AC();
      v114 = v135;
      (*(*(v113 - 8) + 104))(v135, v112, v113);
      v115 = v136;
      (*(v136 + 104))(v114, *MEMORY[0x29EDC2AD8], v111);
      v116 = sub_29D5B33DC();
      v118 = v117;
      (*(v115 + 8))(v114, v111);
      v87 = v152;
      v119 = sub_29D5B130C();
      sub_29D59AD10(&v174, v116, v118);

      v119(v175, 0);
      (*(v155 + 8))(v154, v156);
      v82 = v173;
      v173(v153, v83);
    }

    else
    {
      sub_29D5B0E1C();
      v120 = v169;
      v169(v93, 0, 1, v83);
      sub_29D4B4CDC(v168, v90, sub_29D4B44A0);
      v121 = *(v91 + 48);
      (v165)(v94, v90 + *(v91 + 64), v83);
      v120(v94, 0, 1, v83);
      LOBYTE(v120) = sub_29D58C560(v93, v94);
      sub_29D4B4540(v94, sub_29D4B4C4C);
      sub_29D4B4540(v93, sub_29D4B4C4C);
      v82 = v173;
      v173(v90 + v121, v83);
      v82(v90, v83);
      if ((v120 & 1) == 0)
      {
        (*(v155 + 8))(v154, v156);
        v82(v153, v83);
        v84 = v141;
        v85 = v140;
        v86 = v139;
        v87 = v152;
        goto LABEL_14;
      }

      v122 = *MEMORY[0x29EDC2B88];
      v123 = sub_29D5B34AC();
      v124 = v135;
      (*(*(v123 - 8) + 104))(v135, v122, v123);
      v125 = v136;
      v126 = v151;
      (*(v136 + 104))(v124, *MEMORY[0x29EDC2AD8], v151);
      v127 = sub_29D5B33DC();
      v129 = v128;
      (*(v125 + 8))(v124, v126);
      v87 = v152;
      v130 = sub_29D5B130C();
      sub_29D59AD10(&v174, v127, v129);

      v130(v175, 0);
      (*(v155 + 8))(v154, v156);
      v82(v153, v83);
    }

    v84 = v141;
    v85 = v140;
    v86 = v139;
LABEL_14:
    v88 = v167;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4B2244@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B4BF8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_29D5B36AC();
  v14 = v13;
  v15 = sub_29D5B370C();
  v16 = sub_29D5B427C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v6;
    v20 = v19;
    v40 = v19;
    *v18 = 136446466;
    v39 = sub_29D4B34E8(0);
    sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
    v21 = sub_29D5B3E7C();
    v35 = v9;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v39 = v13;
    v25 = v13;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v40);

    *(v18 + 14) = v29;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Unable to generate sharing snippets: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v30 = v20;
    v6 = v36;
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v18;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v10 + 8))(v12, v35);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D4B3AC0(0);
  sub_29D4B3AF4();
  sub_29D5B3A3C();
  sub_29D4B2F14(&qword_2A17A3D60, sub_29D4B4BF8);
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v32;
  return result;
}

uint64_t sub_29D4B2600()
{

  v1 = OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4B4540(v0 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D4B2710()
{
  result = sub_29D5B13EC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D4B2808@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4B2884(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t *sub_29D4B2930(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v30 = *v4;
  v29 = sub_29D5B13CC();
  v27 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D5B13EC();
  v10 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_29D4B4CDC(a1, v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v26 = a2;
  *(v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_changes) = a2;
  *(v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_primaryHealthStore) = a3;

  v25 = a3;
  v23 = sub_29D5B143C();
  sub_29D4B2EB0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v13 = sub_29D5B104C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D5B5E20;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x29EDC3730], v13);
  v19(v18 + v15, *MEMORY[0x29EDC36E0], v13);
  (*(v27 + 104))(v9, *MEMORY[0x29EDC38A8], v29);
  sub_29D5B13DC();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC13HealthRecords30SharedConceptFeedItemGenerator_domain, v12, v28);
  v20 = v24;
  v21 = sub_29D4A98FC(v24, v26, v25);
  sub_29D4B4540(v20, type metadata accessor for HealthRecordsGeneratorContext);
  v4[2] = v21;
  return v4;
}

void sub_29D4B2CA4()
{
  if (!qword_2A1A16AB8)
  {
    sub_29D4B2D8C();
    sub_29D4B2E18();
    sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C);
    sub_29D4B2F14(&qword_2A1A167A0, sub_29D4B2E18);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16AB8);
    }
  }
}

void sub_29D4B2D8C()
{
  if (!qword_2A1A16778)
  {
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16778);
    }
  }
}

void sub_29D4B2E18()
{
  if (!qword_2A1A16798)
  {
    sub_29D4B2EB0(255, &qword_2A1A16460, MEMORY[0x29EDC3948], MEMORY[0x29EDC9A40]);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16798);
    }
  }
}

void sub_29D4B2EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4B2F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4B2F5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4A9FE4(a1, v2 + v6, v9, v10, v11, a2);
}

void sub_29D4B302C()
{
  if (!qword_2A1A16898)
  {
    sub_29D4B2D8C();
    sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B393C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16898);
    }
  }
}

uint64_t sub_29D4B30C8()
{
  sub_29D4B37EC();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B1AAC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x29EDC3F10], v5);
  sub_29D5B140C();
  sub_29D5B176C();
  sub_29D48F668(v16);
  (*(v6 + 8))(v8, v5);
  v9 = MEMORY[0x29EDC3A38];
  sub_29D4B4B08(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  v11 = v17[0];
  v12 = v17[1];
  *(v10 + 16) = xmmword_29D5B62A0;
  *(v10 + 32) = v11;
  *(v10 + 48) = v12;
  *(v10 + 64) = v18;
  v15[1] = v10;
  sub_29D4B3868(v17, v16);
  sub_29D4B4B08(0, &qword_2A1A196E0, v9, MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4B2F14(&qword_2A1A165D8, sub_29D4B37EC);
  v13 = sub_29D5B3B1C();
  sub_29D4B38C4(v17);
  (*(v2 + 8))(v4, v1);
  return v13;
}

uint64_t sub_29D4B33D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_29D5B168C();
  v6 = sub_29D4B3554(v4, v5, v3);
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  return result;
}

unint64_t sub_29D4B343C()
{
  result = qword_2A17A3E80;
  if (!qword_2A17A3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3E80);
  }

  return result;
}

uint64_t sub_29D4B3490(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_29D5B4C7C() & 1;
  }
}

uint64_t sub_29D4B3508(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D4B3554(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1AAC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B1D6C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_29D5166E4(a1, a2);
  if (!v14)
  {
    return 0;
  }

  v17 = v14;
  v21[0] = a3;
  v21[1] = sub_29D514404(v14, v15, v16);
  sub_29D4B37AC(v17);
  (*(v11 + 104))(v13, *MEMORY[0x29EDC4068], v10);
  (*(v7 + 104))(v9, *MEMORY[0x29EDC3F10], v6);
  v18 = sub_29D5B143C();
  v19 = sub_29D5B26FC();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return v19;
}

uint64_t sub_29D4B37AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_29D4B37EC()
{
  if (!qword_2A1A165D0)
  {
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v0 = sub_29D5B3A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A165D0);
    }
  }
}

void sub_29D4B3918()
{
  if (!qword_2A1A16C10)
  {
    sub_29D4B39E8();
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4B2F14(&qword_2A1A17210, sub_29D4B39E8);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C10);
    }
  }
}

void sub_29D4B39E8()
{
  if (!qword_2A1A17208)
  {
    sub_29D4B3A8C(255);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C);
    v0 = sub_29D5B37AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17208);
    }
  }
}

unint64_t sub_29D4B3AF4()
{
  result = qword_2A1A1A410;
  if (!qword_2A1A1A410)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1A410);
  }

  return result;
}

void sub_29D4B3B58()
{
  if (!qword_2A1A16DA0)
  {
    sub_29D4B3918();
    v0 = MEMORY[0x29EDB89F8];
    sub_29D4B3C64(255, &qword_2A1A16788, MEMORY[0x29EDB89F8]);
    sub_29D4B2F14(&qword_2A1A16C18, sub_29D4B3918);
    sub_29D4B4A90(&qword_2A1A16790, &qword_2A1A16788, v0);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16DA0);
    }
  }
}

void sub_29D4B3C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D4B4B08(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4B3D00()
{
  if (!qword_2A1A17080)
  {
    sub_29D4B3B58();
    sub_29D4B2F14(&qword_2A1A16DA8, sub_29D4B3B58);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17080);
    }
  }
}

void sub_29D4B3DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4B3E78()
{
  if (!qword_2A1A16CC0)
  {
    sub_29D4B3DC8(255);
    sub_29D4B3A8C(255);
    sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16CC0);
    }
  }
}

void sub_29D4B3F64()
{
  if (!qword_2A1A16F40)
  {
    sub_29D4B4040(255);
    sub_29D4B2EB0(255, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
    sub_29D4B2F14(&qword_2A1A16840, sub_29D4B4040);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16F40);
    }
  }
}

void sub_29D4B4074()
{
  if (!qword_2A1A16A18)
  {
    sub_29D4B415C();
    sub_29D4B3F64();
    sub_29D4B2F14(&qword_2A1A16F38, sub_29D4B415C);
    sub_29D4B2F14(&qword_2A1A16F48, sub_29D4B3F64);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A18);
    }
  }
}

void sub_29D4B415C()
{
  if (!qword_2A1A16F30)
  {
    sub_29D4B4208(255);
    sub_29D4B4270();
    sub_29D4B2F14(&qword_2A1A16820, sub_29D4B4208);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16F30);
    }
  }
}

void sub_29D4B4270()
{
  if (!qword_2A1A19158)
  {
    sub_29D4B2EB0(255, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A19158);
    }
  }
}

void sub_29D4B4308()
{
  if (!qword_2A1A16C30)
  {
    sub_29D4B4074();
    sub_29D4B3AC0(255);
    sub_29D4B2F14(&qword_2A1A16A20, sub_29D4B4074);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C30);
    }
  }
}

void sub_29D4B43B4()
{
  if (!qword_2A1A16DC0)
  {
    sub_29D4B4308();
    sub_29D4B3A8C(255);
    sub_29D4B2F14(&qword_2A1A16C38, sub_29D4B4308);
    sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16DC0);
    }
  }
}

void sub_29D4B44A0()
{
  if (!qword_2A1A193E0)
  {
    sub_29D5B0E6C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A193E0);
    }
  }
}

uint64_t sub_29D4B4540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4B45A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4B46B4(uint64_t a1)
{
  sub_29D4B4B08(0, &qword_2A17A3D38, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4B473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D52E048(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_29D4B47F8(uint64_t a1, int a2)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_29D52E988(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D4B48B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  sub_29D4B4270();
  result = v6(a1, *(a1 + *(v7 + 48)));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_29D4B491C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *a1;
  v6 = *(v2 + 32);
  v8[1] = *(v2 + 16);
  v8[2] = v6;
  result = sub_29D548320(sub_29D4B4C2C, v8, v5);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

double sub_29D4B497C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_29D5B148C() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_29D4ADB0C(a1, a2, a3, v8);
}

uint64_t sub_29D4B4A3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t sub_29D4B4A90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D4B3C64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4B4B08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D4B4BAC()
{
  result = qword_2A1A16330;
  if (!qword_2A1A16330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16330);
  }

  return result;
}

uint64_t sub_29D4B4CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_29D4B4D5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener;
  v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = objc_allocWithZone(sub_29D5B247C());
    v4 = sub_29D5B246C();
    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_29D490A5C(v6);
  }

  sub_29D490A6C(v3);
  return v4;
}

void *sub_29D4B4DF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener;
  v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = objc_allocWithZone(sub_29D5B19DC());
    v4 = sub_29D5B19CC();
    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_29D490A5C(v6);
  }

  sub_29D490A6C(v3);
  return v4;
}

void *sub_29D4B4E90()
{
  v1 = v0;
  sub_29D4B73D4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B743C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher;
  v13 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher);
  v14 = v13;
  if (v13 == 1)
  {
    v14 = sub_29D4B4D5C();
    if (v14)
    {
      sub_29D5B245C();

      sub_29D4B6F38(&qword_2A1A19728, sub_29D4B73D4);
      sub_29D5B3B7C();
      (*(v4 + 8))(v6, v3);
      sub_29D4B6F38(&qword_2A1A197C8, sub_29D4B743C);
      v14 = sub_29D5B3B1C();
      (*(v9 + 8))(v11, v8);
    }

    v15 = *(v1 + v12);
    *(v1 + v12) = v14;

    sub_29D4B73B4(v15);
  }

  sub_29D4B73C4(v13);
  return v14;
}

void *sub_29D4B50FC()
{
  v1 = v0;
  sub_29D4B7310(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7378(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher;
  v13 = *(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher);
  v14 = v13;
  if (v13 == 1)
  {
    v14 = sub_29D4B4DF8();
    if (v14)
    {
      sub_29D5B19BC();

      sub_29D4B6F38(&qword_2A1A19738, sub_29D4B7310);
      sub_29D5B3B7C();
      (*(v4 + 8))(v6, v3);
      sub_29D4B6F38(&qword_2A1A197D8, sub_29D4B7378);
      v14 = sub_29D5B3B1C();
      (*(v9 + 8))(v11, v8);
    }

    v15 = *(v1 + v12);
    *(v1 + v12) = v14;

    sub_29D4B73B4(v15);
  }

  sub_29D4B73C4(v13);
  return v14;
}

void *sub_29D4B5368(uint64_t a1)
{
  v2 = v1;
  v105 = *v2;
  sub_29D4B6CEC(0);
  v109 = *(v4 - 8);
  v110 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v108 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  v97 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v98 = v7;
  v116 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v92 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_29D5B43DC();
  v91 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6DB8();
  v90 = v11;
  v88 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v87 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6E4C();
  v96 = v13;
  v95 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v94 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6F80();
  v103 = v15;
  v101 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v99 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B702C();
  v104 = v17;
  v102 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v100 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B371C();
  v106 = *(v19 - 8);
  v107 = v19;
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v84 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v85 = &v84 - v22;
  sub_29D4B7118();
  v24 = *(v23 - 1);
  v114 = v23;
  v115 = v24;
  MEMORY[0x2A1C7C4A8](v23);
  v113 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_29D5B13CC();
  v26 = *(v112 - 1);
  MEMORY[0x2A1C7C4A8](v112);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_29D5B13EC();
  v29 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher) = 1;
  *(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_observerToken) = 0;
  v117 = a1;
  sub_29D499E5C(a1, v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context);
  sub_29D5B143C();
  sub_29D4B6D54(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v32 = sub_29D5B104C();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v86 = xmmword_29D5B62A0;
  *(v35 + 16) = xmmword_29D5B62A0;
  (*(v33 + 104))(v35 + v34, *MEMORY[0x29EDC36E8], v32);
  (*(v26 + 104))(v28, *MEMORY[0x29EDC3898], v112);
  sub_29D5B13DC();
  v36 = v31;
  v37 = v2;
  (*(v29 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_domain, v36, v111);
  v38 = v117;
  sub_29D499B38();
  v39 = v113;
  sub_29D5B3A3C();
  sub_29D4B6F38(&qword_2A1A19768, sub_29D4B7118);
  v40 = v114;
  v41 = sub_29D5B3B1C();
  (v115[1])(v39, v40);
  v2[2] = v41;
  sub_29D5B141C();
  if ((sub_29D5B17EC() & 1) == 0)
  {
    v48 = v116;
    v49 = sub_29D4B4E90();
    if (v49)
    {
      v50 = v49;
      v51 = sub_29D4B50FC();
      if (v51)
      {
        v52 = v51;
        v112 = MEMORY[0x29EDC9E90];
        sub_29D4B6D54(0, &qword_2A1A195C8, sub_29D499998, MEMORY[0x29EDC9E90]);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_29D5B5E20;
        *(v53 + 32) = v50;
        *(v53 + 40) = v52;
        v114 = v52;

        v54 = sub_29D5B146C();
        v115 = v37;
        v55 = v54;
        v113 = v54;
        v118 = v53;
        sub_29D499998();
        sub_29D4B7180(0);
        sub_29D4B6F38(&qword_2A1A19778, sub_29D499998);
        sub_29D4B6F38(&qword_2A1A196B8, sub_29D4B7180);
        v56 = v87;
        sub_29D5B394C();
        v57 = v89;
        sub_29D5B43CC();
        v118 = v55;
        v58 = sub_29D5B43BC();
        v59 = v92;
        (*(*(v58 - 8) + 56))(v92, 1, 1, v58);
        sub_29D4999F8();
        sub_29D4B6F38(&qword_2A1A19788, sub_29D4B6DB8);
        sub_29D4B6F38(&qword_2A1A19620, sub_29D4999F8);
        v60 = v94;
        v61 = v90;
        sub_29D5B3C2C();
        sub_29D4B71B4(v59, sub_29D4B6D20);
        (*(v91 + 8))(v57, v93);
        (*(v88 + 8))(v56, v61);
        v62 = v117;
        v63 = v48;
        sub_29D499E5C(v117, v48);
        v64 = (*(v97 + 80) + 16) & ~*(v97 + 80);
        v65 = (v98 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
        v66 = swift_allocObject();
        sub_29D499F90(v48, v66 + v64);
        *(v66 + v65) = v105;
        sub_29D4B6F38(&qword_2A1A16920, sub_29D4B6E4C);
        v67 = v99;
        v68 = v96;
        sub_29D5B3B7C();

        (*(v95 + 8))(v60, v68);
        sub_29D4B6D54(0, &qword_2A1A195D8, sub_29D499B38, v112);
        v69 = swift_allocObject();
        *(v69 + 16) = v86;
        sub_29D499E5C(v62, v63);
        v70 = type metadata accessor for ClinicalSharingGenerator();
        swift_allocObject();
        v71 = sub_29D53B4C4(v63);
        *(v69 + 56) = v70;
        *(v69 + 64) = sub_29D4B6F38(qword_2A1A187E8, type metadata accessor for ClinicalSharingGenerator);
        *(v69 + 32) = v71;
        sub_29D4B6F38(&qword_2A1A16E20, sub_29D4B6F80);
        v72 = v100;
        v73 = v103;
        sub_29D5B3C0C();

        (*(v101 + 8))(v67, v73);
        sub_29D4B6F38(&qword_2A1A17108, sub_29D4B702C);
        v74 = v104;
        v75 = sub_29D5B3B1C();
        (*(v102 + 8))(v72, v74);
        v115[2] = v75;

        v76 = sub_29D4B6750();

        v37 = v115;
        sub_29D4B71B4(v62, type metadata accessor for HealthRecordsGeneratorContext);
        *(v37 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_observerToken) = v76;
        goto LABEL_6;
      }

      v77 = v84;
      sub_29D5B36CC();
      v78 = sub_29D5B370C();
      v81 = sub_29D5B429C();
      if (os_log_type_enabled(v78, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_29D48C000, v78, v81, "healthRecordsSupportedPublisher was nil", v82, 2u);
        MEMORY[0x29ED5FB80](v82, -1, -1);
      }
    }

    else
    {
      v77 = v85;
      sub_29D5B36CC();
      v78 = sub_29D5B370C();
      v79 = sub_29D5B429C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_29D48C000, v78, v79, "accountStateChangePublisher was nil", v80, 2u);
        MEMORY[0x29ED5FB80](v80, -1, -1);
      }
    }

    sub_29D4B71B4(v38, type metadata accessor for HealthRecordsGeneratorContext);
    (*(v106 + 8))(v77, v107);
    return v37;
  }

  v42 = v116;
  sub_29D499E5C(v38, v116);
  v43 = type metadata accessor for ClinicalSharingGenerator();
  swift_allocObject();
  v44 = sub_29D53B4C4(v42);
  v119 = v43;
  v120 = sub_29D4B6F38(qword_2A1A187E8, type metadata accessor for ClinicalSharingGenerator);
  v118 = v44;
  v45 = v108;
  sub_29D5B3A2C();
  sub_29D4B6F38(&qword_2A1A165F8, sub_29D4B6CEC);
  v46 = v110;
  v47 = sub_29D5B3B1C();
  sub_29D4B71B4(v38, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v109 + 8))(v45, v46);
  v2[2] = v47;
LABEL_6:

  return v37;
}

uint64_t sub_29D4B6464@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v13 = sub_29D5B370C();
  v14 = sub_29D5B426C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = a2;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D5B3E7C();
    v20 = sub_29D501890(v18, v19, &v32);
    v30 = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v33 = type metadata accessor for ClinicalSharingGenerator();
    sub_29D4B72C0();
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v32);
    a1 = v21;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s]: Emitting %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v17, -1, -1);
    v26 = v16;
    a3 = v31;
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D499E5C(a1, v8);
  v27 = type metadata accessor for ClinicalSharingGenerator();
  swift_allocObject();
  v28 = sub_29D53B4C4(v8);
  a3[3] = v27;
  result = sub_29D4B6F38(qword_2A1A187E8, type metadata accessor for ClinicalSharingGenerator);
  a3[4] = result;
  *a3 = v28;
  return result;
}

uint64_t sub_29D4B6750()
{
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D4B4D5C();
  if (v5)
  {
    v6 = v5;
    [*(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext() + 20)) addAccountStateChangeListener_];
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    sub_29D5B1EEC();
    swift_allocObject();
    return sub_29D5B1ECC();
  }

  else
  {
    sub_29D5B36CC();
    v10 = sub_29D5B370C();
    v11 = sub_29D5B429C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_29D48C000, v10, v11, "accountStateChangeListener was nil", v12, 2u);
      MEMORY[0x29ED5FB80](v12, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

uint64_t sub_29D4B6940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext() + 20)) removeAccountStateChangeListener_];
  }

  return result;
}

uint64_t sub_29D4B69CC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_domain;
  v3 = sub_29D5B13EC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_29D4B71B4(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D490A5C(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangeListener));
  sub_29D490A5C(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedListener));
  sub_29D4B73B4(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___accountStateChangePublisher));
  sub_29D4B73B4(*(v1 + OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline____lazy_storage___healthRecordsSupportedPublisher));

  return v1;
}

uint64_t sub_29D4B6AD0()
{
  sub_29D4B69CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingGeneratorPipeline()
{
  result = qword_2A1A17C28;
  if (!qword_2A1A17C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4B6B7C()
{
  result = sub_29D5B13EC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D4B6C70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords32ClinicalSharingGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4B6D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4B6DB8()
{
  if (!qword_2A1A19780)
  {
    sub_29D499998();
    sub_29D4B6F38(&qword_2A1A19778, sub_29D499998);
    v0 = sub_29D5B393C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19780);
    }
  }
}

void sub_29D4B6E4C()
{
  if (!qword_2A1A16918)
  {
    sub_29D4B6DB8();
    sub_29D4999F8();
    sub_29D4B6F38(&qword_2A1A19788, sub_29D4B6DB8);
    sub_29D4B6F38(&qword_2A1A19620, sub_29D4999F8);
    v0 = sub_29D5B390C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16918);
    }
  }
}

uint64_t sub_29D4B6F38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D4B6F80()
{
  if (!qword_2A1A16E18)
  {
    sub_29D4B6E4C();
    sub_29D499B38();
    sub_29D4B6F38(&qword_2A1A16920, sub_29D4B6E4C);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E18);
    }
  }
}

void sub_29D4B702C()
{
  if (!qword_2A1A17100)
  {
    sub_29D499C88();
    sub_29D4B6F80();
    sub_29D4B6F38(&qword_2A1A197A8, sub_29D499C88);
    sub_29D4B6F38(&qword_2A1A16E20, sub_29D4B6F80);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17100);
    }
  }
}

void sub_29D4B7118()
{
  if (!qword_2A1A19760)
  {
    sub_29D499B38();
    v0 = sub_29D5B3A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19760);
    }
  }
}

uint64_t sub_29D4B71B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4B7214@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4B6464(v1 + v4, v5, a1);
}

unint64_t sub_29D4B72C0()
{
  result = qword_2A1A18708[0];
  if (!qword_2A1A18708[0])
  {
    type metadata accessor for ClinicalSharingGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A18708);
  }

  return result;
}

uint64_t sub_29D4B73B4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_29D4B73C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_29D4B7478(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4B6F38(a4, a5);
    v8 = sub_29D5B384C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D4B7518(char a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewRecordsLabFeedItemViewController();
  v12.receiver = v1;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1 & 1);
  sub_29D5B36CC();
  v8 = sub_29D5B370C();
  v9 = sub_29D5B429C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29D48C000, v8, v9, "New Lab Records tile did appear", v10, 2u);
    MEMORY[0x29ED5FB80](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_29D5B1E5C();
  v11 = sub_29D5B1E4C();
  sub_29D5B1E2C();
}

void sub_29D4B76A8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D4B7518(a3);
}

uint64_t sub_29D4B76FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_2A17A3D80;
  swift_beginAccess();
  sub_29D4B9790(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4B9414(&v9);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_29D4B77E4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v26 = sub_29D5B200C();
  v3 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B9488(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for NewLabsFeedItemData(0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B9488(0, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v25 - v14;
  sub_29D4B96B0(a1, &v25 - v14, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  v16 = 0;
  v17 = 0;
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    sub_29D4B94E4(v15, v12);
    v16 = *v12;
    v17 = *(v12 + *(v9 + 24));

    sub_29D4B9548(v12, type metadata accessor for NewLabsFeedItemData);
  }

  v18 = v28;
  sub_29D4A16E8(v16, v17);

  v19 = sub_29D5B0EFC();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v3 + 8))(v5, v26);
  sub_29D4B95EC(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v20 = sub_29D5B3E1C();

  [v27 setTitle_];

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = (v18 + qword_2A17A3C38);
  v23 = *(v18 + qword_2A17A3C38);
  *v22 = sub_29D4B94DC;
  v22[1] = v21;

  sub_29D490438(v23);
}

uint64_t sub_29D4B7BE0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_29D5B1E5C();
    v2 = sub_29D5B1E4C();
    sub_29D5B1E2C();

    memset(v3, 0, sizeof(v3));
    sub_29D4B875C(v3);

    return sub_29D4B9548(v3, sub_29D4A63E4);
  }

  return result;
}

uint64_t sub_29D4B7C90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewLabsFeedItemData(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B9488(0, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v25 - v8;
  sub_29D4B9488(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v25 - v11;
  v13 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4B96B0(v1 + v13, v9, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_29D4B95EC(v9, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
    v14 = sub_29D5B0E6C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  else
  {
    sub_29D4B9648(v9, v6, type metadata accessor for NewLabsFeedItemData);
    sub_29D4B95EC(v9, &qword_2A17A3DA0, type metadata accessor for NewLabsFeedItemData);
    sub_29D4B96B0(&v6[*(v3 + 20)], v12, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    sub_29D4B9548(v6, type metadata accessor for NewLabsFeedItemData);
    v15 = sub_29D5B0E6C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v12, 1, v15) != 1)
    {
      sub_29D4B971C();
      v22 = *(v21 + 48);
      (*(v16 + 32))(a1, v12, v15);
      v23 = *MEMORY[0x29EDC2188];
      v24 = sub_29D5B2E8C();
      (*(*(v24 - 8) + 104))(a1 + v22, v23, v24);
      v17 = MEMORY[0x29EDC2190];
      goto LABEL_5;
    }
  }

  v17 = MEMORY[0x29EDC2198];
LABEL_5:
  v18 = *v17;
  v19 = sub_29D5B2E9C();
  return (*(*(v19 - 8) + 104))(a1, v18, v19);
}

void sub_29D4B8090()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v25 - v5;
  v7 = sub_29D5B2C2C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D4B9790(v1 + v11, v29, &qword_2A1A19460, &qword_2A1A19470);
  v12 = v30;
  if (v30)
  {
    v13 = sub_29D499EC0(v29, v30);
    v14 = *(v12 - 8);
    MEMORY[0x2A1C7C4A8](v13);
    v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    sub_29D5B315C();
    (*(v14 + 8))(v16, v12);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v29);
      sub_29D5B36DC();
      v17 = sub_29D5B370C();
      v18 = sub_29D5B429C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_29D48C000, v17, v18, "User dismissed NewLabRecords tile", v19, 2u);
        MEMORY[0x29ED5FB80](v19, -1, -1);
      }

      (*(v27 + 8))(v6, v28);
      v29[0] = v1;
      type metadata accessor for NewRecordsLabFeedItemViewController();
      sub_29D4B95A8(&qword_2A17A3DA8);
      sub_29D5B212C();
      sub_29D5B1E5C();
      v20 = sub_29D5B1E4C();
      sub_29D5B1E2C();
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      sub_29D48F668(v29);
      v21 = v26;
      sub_29D5B36DC();
      v22 = sub_29D5B370C();
      v23 = sub_29D5B427C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_29D48C000, v22, v23, "didTapDismis invoked for tile without a dismiss button!", v24, 2u);
        MEMORY[0x29ED5FB80](v24, -1, -1);
      }

      (*(v27 + 8))(v21, v28);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D4B8514()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v0 + v5, v15, &qword_2A1A19460, &qword_2A1A19470);
  v7 = v16;
  if (v16)
  {
    v8 = sub_29D499EC0(v15, v16);
    v9 = *(v7 - 8);
    MEMORY[0x2A1C7C4A8](v8);
    v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v11);
    sub_29D5B315C();
    (*(v9 + 8))(v11, v7);
    v12 = (*(v2 + 88))(v4, v1);
    v13 = *MEMORY[0x29EDC1D20];
    if (v12 != *MEMORY[0x29EDC1D20])
    {
      (*(v2 + 8))(v4, v1);
    }

    sub_29D48F668(v15);
    return v12 == v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4B875C(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_29D5B371C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B1BCC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v9 = sub_29D5B1C8C();
  v10 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v2 + v10, v36, &qword_2A1A19460, &qword_2A1A19470);
  v12 = v37;
  if (v37)
  {
    v13 = sub_29D499EC0(v36, v37);
    v14 = *(v12 - 8);
    MEMORY[0x2A1C7C4A8](v13);
    v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = sub_29D5B314C();
    (*(v14 + 8))(v16, v12);
    v18 = sub_29D5B1C9C();

    sub_29D48F668(v36);
    sub_29D4B76FC(v36);
    sub_29D499EC0(v36, v37);
    v19 = *MEMORY[0x29EDC4068];
    v20 = sub_29D5B1D6C();
    (*(*(v20 - 8) + 104))(v8, v19, v20);
    (*(v6 + 104))(v8, *MEMORY[0x29EDC3F80], v5);
    v21 = sub_29D5B252C();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      sub_29D48F668(v36);
      sub_29D4B9648(v35, v36, sub_29D4A63E4);
      v22 = v37;
      if (v37)
      {
        v23 = sub_29D499EC0(v36, v37);
        v24 = *(v22 - 8);
        MEMORY[0x2A1C7C4A8](v23);
        v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v26);
        v27 = sub_29D5B4C6C();
        (*(v24 + 8))(v26, v22);
        sub_29D48F668(v36);
      }

      else
      {
        v27 = 0;
      }

      [v2 showViewController:v21 sender:{v27, v32, v33}];

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_29D48F668(v36);
      v28 = v34;
      sub_29D5B36DC();
      v29 = sub_29D5B370C();
      v30 = sub_29D5B427C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_29D48C000, v29, v30, "Error tapping on NewLabRecords feed item, can't load labs view controller", v31, 2u);
        MEMORY[0x29ED5FB80](v31, -1, -1);
      }

      return (*(v32 + 8))(v28, v33);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D4B8C94(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    v6 = &a1[qword_2A17A3D80];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    v7 = qword_2A17ABED8;
    v8 = *MEMORY[0x29EDC1E68];
    v9 = sub_29D5B2CAC();
    (*(*(v9 - 8) + 104))(&a1[v7], v8, v9);
    a1[qword_2A17ABEE0] = 1;
    v10 = a4;
    v11 = sub_29D5B3E1C();
  }

  else
  {
    v12 = &a1[qword_2A17A3D80];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 4) = 0;
    v13 = qword_2A17ABED8;
    v14 = *MEMORY[0x29EDC1E68];
    v15 = sub_29D5B2CAC();
    (*(*(v15 - 8) + 104))(&a1[v13], v14, v15);
    a1[qword_2A17ABEE0] = 1;
    v16 = a4;
    v11 = 0;
  }

  v19.receiver = a1;
  v19.super_class = type metadata accessor for NewRecordsLabFeedItemViewController();
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, v11, a4);

  return v17;
}

id sub_29D4B8E30(_BYTE *a1, uint64_t a2, void *a3)
{
  v5 = &a1[qword_2A17A3D80];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = qword_2A17ABED8;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  a1[qword_2A17ABEE0] = 1;
  v12.receiver = a1;
  v12.super_class = type metadata accessor for NewRecordsLabFeedItemViewController();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v9);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_29D4B8F24()
{
  sub_29D4B9414(v0 + qword_2A17A3D80);
  v1 = qword_2A17ABED8;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D4B8F9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsLabFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4B8FD4(uint64_t a1)
{
  sub_29D4B9414(a1 + qword_2A17A3D80);
  v2 = qword_2A17ABED8;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for NewRecordsLabFeedItemViewController()
{
  result = qword_2A17A3D88;
  if (!qword_2A17A3D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4B909C()
{
  result = sub_29D5B2CAC();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D4B9150@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABED8;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4B91F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC41B8];
  v3 = sub_29D5B23CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D4B9268()
{
  v1 = *v0;
  v2 = *((*MEMORY[0x29EDCA1E8] & **v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v1 + v2, v11, &qword_2A1A19460, &qword_2A1A19470);
  v4 = v12;
  if (v12)
  {
    v5 = sub_29D499EC0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_29D5B314C();
    (*(v6 + 8))(v8, v4);
    sub_29D48F668(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4B9414(uint64_t a1)
{
  sub_29D4A02A4(0, &unk_2A17A4DB0, &unk_2A17A4570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D4B9488(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4B94E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewLabsFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4B9548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4B95A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewRecordsLabFeedItemViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4B95EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D4B9488(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4B9648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4B96B0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D4B9488(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29D4B971C()
{
  if (!qword_2A17A3DB0)
  {
    sub_29D5B0E6C();
    sub_29D5B2E8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3DB0);
    }
  }
}

uint64_t sub_29D4B9790(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_29D4A02A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D4B9800(uint64_t a1, uint64_t a2)
{
  sub_29D4A02A4(0, &unk_2A17A4DB0, &unk_2A17A4570);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_29D4B987C(uint64_t a1)
{
  v120 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v4 = *(v3 - 8);
  v126 = v3 - 8;
  v118 = v4;
  v116 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v114 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v110 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_29D5B43DC();
  v111 = *(v113 - 8);
  MEMORY[0x2A1C7C4A8](v113);
  v108 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB684();
  v115 = v9;
  v117 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v109 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB930();
  v121 = v11;
  v123 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v112 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB9DC();
  v122 = v13;
  v124 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v119 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6DB8();
  v106 = v15;
  v107 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v105 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4BB770();
  v129 = v17;
  v125 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v128 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_29D5B446C();
  v131 = *(v99 - 8);
  MEMORY[0x2A1C7C4A8](v99);
  v97 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0();
  v100 = v20;
  v101 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v98 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B73D4(0);
  v93 = v22;
  v102 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v91 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B743C(0);
  v94 = v24;
  v96 = *(v24 - 1);
  MEMORY[0x2A1C7C4A8](v24);
  v92 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29D5B13CC();
  v26 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_29D5B13EC();
  v29 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_observerToken) = 0;
  sub_29D5B140C();
  sub_29D499EC0(v132, v132[3]);
  sub_29D5B136C();
  sub_29D5B28DC();
  swift_allocObject();
  v130 = sub_29D5B28AC();
  sub_29D48F668(v132);
  v103 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context);
  sub_29D5B143C();
  v127 = MEMORY[0x29EDC9E90];
  sub_29D4BBB78(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v32 = sub_29D5B104C();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v104 = xmmword_29D5B62A0;
  *(v35 + 16) = xmmword_29D5B62A0;
  (*(v33 + 104))(v35 + v34, *MEMORY[0x29EDC3758], v32);
  (*(v26 + 104))(v28, *MEMORY[0x29EDC3898], v90);
  sub_29D5B13DC();
  v36 = v1;
  (*(v29 + 32))(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_domain, v31, v89);
  v37 = objc_allocWithZone(sub_29D5B247C());
  v38 = sub_29D5B246C();
  *(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStateChangeListener) = v38;
  v39 = v38;
  v40 = v91;
  sub_29D5B245C();

  sub_29D4BB8E8(&qword_2A1A19728, sub_29D4B73D4);
  v41 = v92;
  v42 = v93;
  sub_29D5B3B7C();
  (*(v102 + 8))(v40, v42);
  v102 = MEMORY[0x29EDB8908];
  sub_29D4BB8E8(&qword_2A1A197C8, sub_29D4B743C);
  v43 = v94;
  v44 = sub_29D5B3B1C();
  (*(v96 + 8))(v41, v43);
  *(v36 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStateChangePublisher) = v44;
  v45 = objc_opt_self();
  v46 = [v45 defaultCenter];
  v47 = sub_29D5B443C();
  v48 = v97;
  sub_29D5B447C();

  v96 = sub_29D4BB8E8(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);

  v49 = v98;
  v50 = v99;
  sub_29D5B3B7C();

  v51 = v131[1];
  ++v131;
  v94 = v51;
  v51(v48, v50);
  sub_29D4BB8E8(&qword_2A1A197B8, sub_29D499DC0);
  v52 = v100;
  v53 = sub_29D5B3B1C();
  v54 = *(v101 + 8);
  v54(v49, v52);
  *(v36 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStatusSummaryTileDidDismissPublisher) = v53;
  v55 = [v45 defaultCenter];
  v56 = sub_29D5B444C();
  sub_29D5B447C();

  sub_29D5B3B7C();

  v94(v48, v50);
  v57 = sub_29D5B3B1C();
  v54(v49, v52);
  *(v36 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStatusSummaryTileShouldResetPublisher) = v57;
  sub_29D4BBB78(0, &qword_2A1A195C8, sub_29D499998, v127);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_29D5B6320;
  v59 = *(v36 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStateChangePublisher);
  v60 = *(v36 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_accountStatusSummaryTileDidDismissPublisher);
  v95 = v36;
  *(v58 + 32) = v59;
  *(v58 + 40) = v60;
  *(v58 + 48) = v57;
  v132[0] = v58;
  sub_29D499998();
  sub_29D4B7180(0);
  sub_29D4BB8E8(&qword_2A1A19778, sub_29D499998);
  sub_29D4BB8E8(&qword_2A1A196B8, sub_29D4B7180);

  v61 = v105;
  sub_29D5B394C();
  sub_29D4BB8E8(&qword_2A1A19788, sub_29D4B6DB8);
  v62 = v106;
  sub_29D5B3C0C();
  (*(v107 + 8))(v61, v62);
  v63 = v103;
  v64 = sub_29D5B146C();
  v131 = v64;
  v65 = v108;
  sub_29D5B43CC();
  v132[0] = v64;
  v66 = sub_29D5B43BC();
  v67 = v110;
  (*(*(v66 - 8) + 56))(v110, 1, 1, v66);
  sub_29D4999F8();
  sub_29D4BB8E8(&qword_2A1A197E8, sub_29D4BB770);
  sub_29D4BB8E8(&qword_2A1A19620, sub_29D4999F8);
  v68 = v109;
  sub_29D5B3C2C();
  sub_29D4BBCDC(v67, sub_29D4B6D20);
  (*(v111 + 8))(v65, v113);
  v69 = v114;
  sub_29D499E5C(v63, v114);
  v70 = (*(v118 + 80) + 16) & ~*(v118 + 80);
  v71 = (v116 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v72 + v70;
  v74 = v69;
  sub_29D499F90(v69, v73);
  v75 = v130;
  *(v72 + v71) = v130;
  *(v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8)) = v120;
  sub_29D499B38();
  sub_29D4BB8E8(&qword_2A1A16940, sub_29D4BB684);

  v76 = v112;
  v77 = v115;
  sub_29D5B3B7C();

  (*(v117 + 8))(v68, v77);
  sub_29D4BBB78(0, &qword_2A1A195D8, sub_29D499B38, v127);
  v78 = swift_allocObject();
  *(v78 + 16) = v104;
  sub_29D499E5C(v63, v74);
  v79 = type metadata accessor for AccountStatusSummaryTileGenerator();
  swift_allocObject();

  v80 = sub_29D4CEF98(v74, v75);

  *(v78 + 56) = v79;
  *(v78 + 64) = sub_29D4BB8E8(qword_2A1A17AB0, type metadata accessor for AccountStatusSummaryTileGenerator);
  *(v78 + 32) = v80;
  sub_29D4BB8E8(&qword_2A1A16E40, sub_29D4BB930);
  v81 = v119;
  v82 = v121;
  sub_29D5B3C0C();

  (*(v123 + 8))(v76, v82);
  sub_29D4BB8E8(&qword_2A1A170F8, sub_29D4BB9DC);
  v83 = v122;
  v84 = sub_29D5B3B1C();
  (*(v124 + 8))(v81, v83);
  v85 = v95;
  v95[2] = v84;
  [*(v85 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context + *(v126 + 28)) addAccountStateChangeListener_];
  swift_allocObject();
  swift_weakInit();
  sub_29D5B1EEC();
  swift_allocObject();

  v86 = sub_29D5B1ECC();

  sub_29D4BBCDC(v63, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v125 + 8))(v128, v129);

  *(v85 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_observerToken) = v86;

  return v85;
}

unint64_t sub_29D4BAC68(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_29D4BBD84();
    v2 = sub_29D5B4AAC();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_29D4BBDE0(*(v1 + 48) + 40 * v15, v28);
    sub_29D4A7420(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_29D4BBDE0(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_29D4BBCDC(v25, sub_29D4BBE3C);

      goto LABEL_22;
    }

    sub_29D4A7420(v26 + 8, v24);
    sub_29D4BBCDC(v25, sub_29D4BBE3C);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_29D57A290(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_29D4BAF44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D5B0C8C();
  if (result)
  {
    v3 = sub_29D4BAC68(result);

    if (v3)
    {
      sub_29D5B289C();
    }
  }

  *a1 = 1;
  return result;
}

uint64_t sub_29D4BAFCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = a4;
    v37 = v19;
    v20 = v19;
    *v18 = 136446466;
    v38 = a3;
    swift_getMetatypeMetadata();
    v21 = sub_29D5B3E7C();
    v23 = sub_29D501890(v21, v22, &v37);
    v35 = a2;
    v24 = a1;
    v25 = v23;

    *(v18 + 4) = v25;
    *(v18 + 12) = 2082;
    v38 = type metadata accessor for AccountStatusSummaryTileGenerator();
    sub_29D4BBD3C();
    v26 = sub_29D5B3E7C();
    v28 = sub_29D501890(v26, v27, &v37);
    a1 = v24;
    a2 = v35;

    *(v18 + 14) = v28;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v29 = v20;
    a4 = v36;
    MEMORY[0x29ED5FB80](v29, -1, -1);
    MEMORY[0x29ED5FB80](v18, -1, -1);

    (*(v12 + 8))(v14, v34);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  sub_29D499E5C(a1, v10);
  v30 = type metadata accessor for AccountStatusSummaryTileGenerator();
  swift_allocObject();

  v31 = sub_29D4CEF98(v10, a2);

  a4[3] = v30;
  result = sub_29D4BB8E8(qword_2A1A17AB0, type metadata accessor for AccountStatusSummaryTileGenerator);
  a4[4] = result;
  *a4 = v31;
  return result;
}

uint64_t sub_29D4BB2D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext() + 20)) removeAccountStateChangeListener_];
  }

  return result;
}

uint64_t sub_29D4BB360()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_domain;
  v3 = sub_29D5B13EC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_29D4BBCDC(v1 + OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return v1;
}

uint64_t sub_29D4BB464()
{
  sub_29D4BB360();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountStatusSummaryTileGeneratorPipeline()
{
  result = qword_2A1A17728;
  if (!qword_2A1A17728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4BB510()
{
  result = sub_29D5B13EC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_29D4BB608@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords41AccountStatusSummaryTileGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4BB684()
{
  if (!qword_2A1A16938)
  {
    sub_29D4BB770();
    sub_29D4999F8();
    sub_29D4BB8E8(&qword_2A1A197E8, sub_29D4BB770);
    sub_29D4BB8E8(&qword_2A1A19620, sub_29D4999F8);
    v0 = sub_29D5B390C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16938);
    }
  }
}

void sub_29D4BB770()
{
  if (!qword_2A1A197E0)
  {
    sub_29D4BB85C(255);
    sub_29D4B6DB8();
    sub_29D4BB8E8(&qword_2A1A19798, sub_29D4BB85C);
    sub_29D4BB8E8(&qword_2A1A19788, sub_29D4B6DB8);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A197E0);
    }
  }
}

void sub_29D4BB898()
{
  if (!qword_2A1A19680)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19680);
    }
  }
}

uint64_t sub_29D4BB8E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D4BB930()
{
  if (!qword_2A1A16E38)
  {
    sub_29D4BB684();
    sub_29D499B38();
    sub_29D4BB8E8(&qword_2A1A16940, sub_29D4BB684);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E38);
    }
  }
}

void sub_29D4BB9DC()
{
  if (!qword_2A1A170F0)
  {
    sub_29D499C88();
    sub_29D4BB930();
    sub_29D4BB8E8(&qword_2A1A197A8, sub_29D499C88);
    sub_29D4BB8E8(&qword_2A1A16E40, sub_29D4BB930);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A170F0);
    }
  }
}

void sub_29D4BBAC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4BB8E8(a4, a5);
    v8 = sub_29D5B392C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D4BBB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4BBC1C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4BAFCC(v1 + v4, v6, v7, a1);
}

uint64_t sub_29D4BBCDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D4BBD3C()
{
  result = qword_2A1A179E8[0];
  if (!qword_2A1A179E8[0])
  {
    type metadata accessor for AccountStatusSummaryTileGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A179E8);
  }

  return result;
}

void sub_29D4BBD84()
{
  if (!qword_2A17A3DB8)
  {
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3DB8);
    }
  }
}

void sub_29D4BBE3C()
{
  if (!qword_2A17A3DC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3DC0);
    }
  }
}

uint64_t sub_29D4BBEA4(uint64_t a1)
{
  v2 = v1;
  v35 = *v2;
  v4 = sub_29D5B371C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B148C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HealthRecordsGeneratorContext();
  v12 = v11 - 8;
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v34 - v16;
  v18 = *(v8 + 16);
  v18(v10, a1, v7);
  v18(v17, v10, v7);
  sub_29D5B140C();
  sub_29D499EC0(v39, v39[3]);
  v19 = sub_29D5B136C();
  v20 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  (*(v8 + 8))(v10, v7);
  sub_29D48F668(v39);
  *&v17[*(v12 + 28)] = v20;
  v21 = sub_29D5B143C();
  v22 = sub_29D5B10DC();
  LOBYTE(v7) = sub_29D5B10CC();

  if (v7)
  {
    sub_29D5B36EC();
    v23 = sub_29D5B370C();
    v24 = sub_29D5B429C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v39[0] = v35;
      swift_getMetatypeMetadata();
      v27 = sub_29D5B3E7C();
      v29 = sub_29D501890(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29D48C000, v23, v24, "[%s]: Returning CHI sharable model pipeline for primary profile", v25, 0xCu);
      sub_29D48F668(v26);
      MEMORY[0x29ED5FB80](v26, -1, -1);
      MEMORY[0x29ED5FB80](v25, -1, -1);
    }

    (*(v36 + 8))(v6, v37);
    sub_29D4BC2C0();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_29D5B62A0;
    sub_29D499E5C(v17, v15);
    v31 = type metadata accessor for ConceptSharableModelPipeline();
    swift_allocObject();
    v32 = sub_29D55DD78(v15);
    *(v30 + 56) = v31;
    *(v30 + 64) = sub_29D4BC37C();
    *(v30 + 32) = v32;
  }

  else
  {
    v30 = MEMORY[0x29EDCA190];
  }

  sub_29D49A104(v17);
  return v30;
}

void sub_29D4BC2C0()
{
  if (!qword_2A1A161F0)
  {
    sub_29D4BC318();
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A161F0);
    }
  }
}

unint64_t sub_29D4BC318()
{
  result = qword_2A1A17368;
  if (!qword_2A1A17368)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A17368);
  }

  return result;
}

unint64_t sub_29D4BC37C()
{
  result = qword_2A1A180D8[0];
  if (!qword_2A1A180D8[0])
  {
    type metadata accessor for ConceptSharableModelPipeline();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A180D8);
  }

  return result;
}

uint64_t sub_29D4BC3D4(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_29D5B134C();
  v6 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x29EDCA190];
  if (v9)
  {
    v21 = MEMORY[0x29EDCA190];
    sub_29D4C6C60(0, v9, 0);
    v10 = v21;
    v11 = *(sub_29D5B25DC() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v11 + 72);
    while (1)
    {
      v18(v12, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29D4C6C60(v13 > 1, v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
      v12 += v16[0];
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

void sub_29D4BC5DC()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  v2 = [v0 isAppleInternalInstall];

  if (v2)
  {
    sub_29D48F51C(0, &qword_2A1A16348);
    v3 = sub_29D5B42AC();
    v4 = sub_29D5B3E1C();
    v5 = [v3 integerForKey_];

    if (v5)
    {
      if (__OFSUB__(0, v5))
      {
        __break(1u);
LABEL_9:
        __break(1u);
        return;
      }
    }
  }

  sub_29D5B0DBC();
}

void *sub_29D4BC710(uint64_t a1)
{
  v2 = v1;
  v24 = *v1;
  v22 = sub_29D5B13CC();
  v4 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D5B13EC();
  v7 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HealthRecordsGeneratorContext;
  sub_29D4C1D88(a1, v1 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v20 = sub_29D5B143C();
  sub_29D4C23AC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC3790], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v22);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_domain, v9, v21);
  sub_29D5B140C();
  v14 = v26;
  v15 = v27;
  sub_29D499EC0(v25, v26);
  v16 = sub_29D4C9C80(v14, v15);
  type metadata accessor for AddAccountDataProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_29D48F668(v25);
  *(v2 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_dataProvider) = v17;

  v18 = sub_29D4BCA88(a1, v17);

  sub_29D4C1DF0(a1, v23);
  v2[2] = v18;
  return v2;
}

uint64_t sub_29D4BCA88(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v99 = sub_29D5B148C();
  v98 = *(v99 - 8);
  MEMORY[0x2A1C7C4A8](v99);
  v96 = v3;
  v97 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1268();
  v102 = v4;
  v101 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v100 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C13BC();
  v105 = v6;
  v104 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v103 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1468();
  v108 = v8;
  v107 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1554();
  v114 = v10;
  v111 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v109 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1624();
  v115 = v12;
  v112 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v110 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C1710();
  v116 = *(v14 - 8);
  v117 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v113 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29D5B23CC();
  v118 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v89 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C17A4();
  v94 = v17;
  v93 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v92 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B0EDC();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B1AAC();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B140C();
  (*(v24 + 104))(v26, *MEMORY[0x29EDC3EF8], v23);
  v120 = a1;
  v27 = sub_29D5B143C();
  v28 = sub_29D5B10AC();
  v29 = sub_29D5B1A8C();
  v31 = v30;
  if (v28)
  {
    v123 = 0x656C69666F72505BLL;
    v124 = 0xE90000000000003ALL;
    v119 = v29;
    v28 = v28;
    v32 = [v28 identifier];
    sub_29D5B0EBC();

    v33 = sub_29D5B0E8C();
    v34 = v20;
    v35 = v33;
    v36 = v19;
    v37 = v23;
    v38 = v27;
    v40 = v39;
    (*(v34 + 8))(v22, v36);
    MEMORY[0x29ED5E510](v35, v40);
    v27 = v38;
    v23 = v37;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v29 = v119;
    v41 = v123;
    v42 = v124;
  }

  else
  {
    v42 = 0x800000029D5BBCB0;
    v41 = 0xD000000000000013;
  }

  v123 = v41;
  v124 = v42;
  MEMORY[0x29ED5E510](v29, v31);

  v43 = v123;
  v44 = v124;
  (*(v24 + 8))(v26, v23);
  type metadata accessor for FeedItemContextChangeGenerator();
  v45 = swift_allocObject();
  v90 = v45;
  sub_29D497868(&v125, v45 + 16);
  *(v45 + 56) = v43;
  *(v45 + 64) = v44;
  sub_29D5B140C();
  sub_29D499EC0(&v125, v126);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v119 = sub_29D5B269C();
  sub_29D48F668(&v125);
  v46 = *MEMORY[0x29EDC41B0];
  v47 = v118;
  v86 = *(v118 + 104);
  v48 = v89;
  v49 = v91;
  v86(v89, v46, v91);
  v50 = sub_29D5B268C();
  v88 = v50;
  v85 = *(v47 + 8);
  v85(v48, v49);
  *&v125 = v50;
  *(swift_allocObject() + 16) = v121;
  sub_29D4C188C(0);
  v84 = v51;
  sub_29D4C1354();
  v82 = v52;
  v87 = MEMORY[0x29EDB8A00];
  v83 = sub_29D4C2410(&qword_2A1A16880, sub_29D4C188C);
  v81 = sub_29D4C2410(&qword_2A1A16870, sub_29D4C1354);
  v53 = v92;
  sub_29D5B3B8C();

  v88 = MEMORY[0x29EDB8928];
  sub_29D4C2410(&qword_2A1A16DF8, sub_29D4C17A4);
  v54 = v94;
  v118 = sub_29D5B3B1C();
  v80 = *(v93 + 8);
  v80(v53, v54);
  v86(v48, *MEMORY[0x29EDC41D8], v49);
  v55 = sub_29D5B268C();
  v85(v48, v49);
  *&v125 = v55;
  *(swift_allocObject() + 16) = v121;
  sub_29D5B3B8C();

  v56 = sub_29D5B3B1C();
  v80(v53, v54);
  *&v125 = sub_29D5B44CC();
  v122 = v56;
  v123 = v118;
  v93 = v56;
  sub_29D499998();
  sub_29D4C2410(&qword_2A1A19778, sub_29D499998);

  v57 = v100;
  sub_29D5B37BC();
  v58 = v98;
  v59 = v97;
  v60 = v99;
  (*(v98 + 16))(v97, v120, v99);
  v61 = (*(v58 + 80) + 24) & ~*(v58 + 80);
  v62 = (v96 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v121;
  *(v63 + 16) = v121;
  (*(v58 + 32))(v63 + v61, v59, v60);
  *(v63 + v62) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_29D4C1908;
  *(v65 + 24) = v63;
  sub_29D4B3AC0(0);
  sub_29D4C2410(&qword_2A1A17200, sub_29D4C1268);
  v66 = v103;
  v67 = v102;
  sub_29D5B3BCC();

  (*(v101 + 8))(v57, v67);
  *(swift_allocObject() + 16) = v64;
  sub_29D4B3A8C(0);
  sub_29D4C2410(&qword_2A1A16C08, sub_29D4C13BC);
  sub_29D4C2410(&qword_2A1A167C0, sub_29D4B3A8C);
  v68 = v106;
  v69 = v105;
  sub_29D5B3B8C();

  (*(v104 + 8))(v66, v69);
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D4C2410(&qword_2A1A16D98, sub_29D4C1468);

  v70 = v109;
  v71 = v108;
  sub_29D5B3BCC();

  (*(v107 + 8))(v68, v71);
  *(swift_allocObject() + 16) = v121;
  sub_29D4B2D8C();
  sub_29D4C2410(&qword_2A1A16BC8, sub_29D4C1554);
  sub_29D4C2410(&qword_2A1A16780, sub_29D4B2D8C);
  v72 = v110;
  v73 = v114;
  sub_29D5B3B8C();

  (*(v111 + 8))(v70, v73);
  *&v125 = MEMORY[0x29EDCA190];
  sub_29D4C2410(&qword_2A1A16D08, sub_29D4C1624);
  v74 = v113;
  v75 = v115;
  sub_29D5B3B4C();
  (*(v112 + 8))(v72, v75);
  sub_29D4C2410(&qword_2A1A17068, sub_29D4C1710);
  v76 = v117;
  v77 = sub_29D5B3B1C();

  (*(v116 + 8))(v74, v76);
  return v77;
}

uint64_t sub_29D4BDB30@<X0>(const char *a1@<X2>, uint64_t *a2@<X8>)
{
  v31 = a1;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C2378(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B371C();
  v33 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();
  v14 = sub_29D5B370C();
  v32 = sub_29D5B427C();
  if (os_log_type_enabled(v14, v32))
  {
    v15 = swift_slowAlloc();
    v28 = v15;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v15 = 136446210;
    v34 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v16 = sub_29D5B3E7C();
    v18 = sub_29D501890(v16, v17, &v35);
    v29 = v11;
    v19 = v10;
    v20 = v8;
    v21 = a2;
    v22 = v18;

    v23 = v28;
    *(v28 + 1) = v22;
    a2 = v21;
    v8 = v20;
    v10 = v19;
    _os_log_impl(&dword_29D48C000, v14, v32, v31, v23, 0xCu);
    v24 = v30;
    sub_29D48F668(v30);
    MEMORY[0x29ED5FB80](v24, -1, -1);
    MEMORY[0x29ED5FB80](v23, -1, -1);

    (*(v33 + 8))(v13, v29);
  }

  else
  {

    (*(v33 + 8))(v13, v11);
  }

  sub_29D5B0DAC();
  v25 = sub_29D5B0E6C();
  (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
  sub_29D5B3A2C();
  sub_29D4C2410(&qword_2A17A3DD8, sub_29D4C2378);
  v26 = sub_29D5B3B1C();
  result = (*(v8 + 8))(v10, v7);
  *a2 = v26;
  return result;
}

uint64_t sub_29D4BDEE8(int a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v57 = a1;
  sub_29D4B4C4C(0);
  v52 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v45[-v15];
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v45[-v17];
  v19 = sub_29D5B371C();
  v53 = *(v19 - 8);
  v54 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v45[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D5B36CC();
  v55 = a2;
  sub_29D4C1D88(a2, v18, sub_29D4B4C4C);
  sub_29D4C1D88(a3, v16, sub_29D4B4C4C);
  v22 = sub_29D5B370C();
  v23 = sub_29D5B429C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v51 = v6;
    v25 = v24;
    v48 = swift_slowAlloc();
    v59 = v48;
    *v25 = 136446978;
    v58 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v26 = sub_29D5B3E7C();
    v50 = a5;
    v28 = sub_29D501890(v26, v27, &v59);
    v49 = a3;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    if (v57)
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v57)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = sub_29D501890(v30, v31, &v59);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2082;
    sub_29D4C1D88(v18, v13, sub_29D4B4C4C);
    v47 = v22;
    v33 = sub_29D5B3E7C();
    v46 = v23;
    v35 = v34;
    sub_29D4C1DF0(v18, sub_29D4B4C4C);
    v36 = v33;
    a3 = v49;
    v37 = sub_29D501890(v36, v35, &v59);

    *(v25 + 24) = v37;
    *(v25 + 32) = 2082;
    sub_29D4C1D88(v16, v13, sub_29D4B4C4C);
    v38 = sub_29D5B3E7C();
    v40 = v39;
    a5 = v50;
    sub_29D4C1DF0(v16, sub_29D4B4C4C);
    v41 = sub_29D501890(v38, v40, &v59);

    *(v25 + 34) = v41;
    v42 = v47;
    _os_log_impl(&dword_29D48C000, v47, v46, "[%{public}s] (Health records onboarding tile state) Onboardable: %{public}s, General tile dismissal date: %{public}s, Labs tile dismissal date: %{public}s", v25, 0x2Au);
    v43 = v48;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v43, -1, -1);
    MEMORY[0x29ED5FB80](v25, -1, -1);
  }

  else
  {

    sub_29D4C1DF0(v16, sub_29D4B4C4C);
    sub_29D4C1DF0(v18, sub_29D4B4C4C);
  }

  (*(v53 + 8))(v21, v54);
  return sub_29D4BE338(v57 & 1, v55, a3, a5);
}

uint64_t sub_29D4BE338(char a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v9 = sub_29D5B0E6C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D5B0E5C();
  v13 = sub_29D4BEDEC(a2, a3, v12);
  v14 = (*(v10 + 8))(v12, v9);
  MEMORY[0x2A1C7C4A8](v14);
  v17[-2] = a4;
  v15 = sub_29D4BC3D4(sub_29D4C1E50, &v17[-4], v13);

  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_29D4BE4B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4C23AC(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - v6;
  sub_29D4B3DC8(0);
  v9 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29D5B371C();
  v12 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v5;
    v20 = v19;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v20 = 136446466;
    v41 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v21 = sub_29D5B3E7C();
    v37 = a2;
    v23 = sub_29D501890(v21, v22, &v42);
    v36 = v9;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v41 = v15;
    v25 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v42);

    *(v20 + 14) = v29;
    a2 = v37;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to make feed items for commit: %{public}s", v20, 0x16u);
    v9 = v36;
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v20;
    v5 = v35;
    MEMORY[0x29ED5FB80](v31, -1, -1);
  }

  (*(v12 + 8))(v14, v38);
  v41 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v39 + 8))(v7, v5);
  sub_29D4C2410(&qword_2A1A161C0, sub_29D4B3DC8);
  v32 = sub_29D5B3B1C();
  result = (*(v40 + 8))(v11, v9);
  *a2 = v32;
  return result;
}

uint64_t sub_29D4BE938@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_29D499EC0((a1 + 16), *(a1 + 40));
  sub_29D499EC0((a1 + 16), *(a1 + 40));
  v3 = sub_29D5B13BC();
  sub_29D5B13AC();

  v4 = sub_29D5B404C();

  if (!v7)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_29D4BEA18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_29D5B36AC();
  v14 = v13;
  v15 = sub_29D5B370C();
  v16 = sub_29D5B427C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v6;
    v20 = v19;
    v40 = v19;
    *v18 = 136446466;
    v39 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v21 = sub_29D5B3E7C();
    v35 = v9;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v39 = v13;
    v25 = v13;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v40);

    *(v18 + 14) = v29;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v30 = v20;
    v6 = v36;
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v18;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v10 + 8))(v12, v35);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v39 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4C2410(&qword_2A1A165D8, sub_29D4B37EC);
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v32;
  return result;
}

size_t sub_29D4BEDEC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v80 = a2;
  v82[1] = *MEMORY[0x29EDCA608];
  v78 = sub_29D5B25DC();
  v6 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v74 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B371C();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v75 = &v63 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v63 - v17;
  v19 = sub_29D5B0E6C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v69 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v25 = &v63 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v63 - v26;
  v76 = a1;
  sub_29D4C1D88(a1, v18, sub_29D4B4C4C);
  v28 = *(v20 + 48);
  v77 = v20 + 48;
  v79 = v28;
  if (v28(v18, 1, v19) == 1)
  {
    sub_29D4C1DF0(v18, sub_29D4B4C4C);
  }

  else
  {
    (*(v20 + 32))(v27, v18, v19);
    sub_29D5B0DAC();
    v29 = sub_29D5B0E3C();
    v70 = v14;
    v30 = v10;
    v31 = v6;
    v32 = *(v20 + 8);
    v32(v25, v19);
    v32(v27, v19);
    v6 = v31;
    v10 = v30;
    v14 = v70;
    if (v29)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  v33 = v75;
  sub_29D4C1D88(v80, v75, sub_29D4B4C4C);
  if (v79(v33, 1, v19) != 1)
  {
    v34 = v69;
    (*(v20 + 32))(v69, v33, v19);
    sub_29D5B0DAC();
    v35 = sub_29D5B0E3C();
    v36 = *(v20 + 8);
    v36(v25, v19);
    v36(v34, v19);
    if ((v35 & 1) == 0)
    {
      goto LABEL_8;
    }

    return MEMORY[0x29EDCA190];
  }

  sub_29D4C1DF0(v33, sub_29D4B4C4C);
LABEL_8:
  v77 = v4;
  sub_29D4C23AC(0, &qword_2A1A161E0, MEMORY[0x29EDC4210], MEMORY[0x29EDC9E90]);
  v38 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v75 = *(v6 + 72);
  v39 = swift_allocObject();
  v40 = v19;
  v41 = v39;
  *(v39 + 16) = xmmword_29D5B62A0;
  v42 = v76;
  v67 = v40;
  v43 = v79;
  *(v39 + v38) = (v79)(v76, 1) != 1;
  v44 = *MEMORY[0x29EDC4208];
  v68 = *(v6 + 104);
  v69 = v38;
  v68(&v41[v38], v44, v78);
  sub_29D5B36CC();
  sub_29D4C1D88(v42, v14, sub_29D4B4C4C);
  v45 = sub_29D5B370C();
  v46 = sub_29D5B429C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v66 = v6;
    v70 = v14;
    v48 = v47;
    v65 = swift_slowAlloc();
    v82[0] = v65;
    *v48 = 136446466;
    v81 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v49 = sub_29D5B3E7C();
    v51 = sub_29D501890(v49, v50, v82);
    v64 = v10;
    v52 = v51;

    *(v48 + 4) = v52;
    *(v48 + 12) = 2082;
    v53 = v70;
    v54 = v43(v70, 1, v67);
    if (v54 == 1)
    {
      v55 = 0x65736C6166;
    }

    else
    {
      v55 = 1702195828;
    }

    if (v54 == 1)
    {
      v56 = 0xE500000000000000;
    }

    else
    {
      v56 = 0xE400000000000000;
    }

    sub_29D4C1DF0(v53, sub_29D4B4C4C);
    v57 = sub_29D501890(v55, v56, v82);

    *(v48 + 14) = v57;
    _os_log_impl(&dword_29D48C000, v45, v46, "[%{public}s] Generating general CHR onboarding tile, hidden in Summary: %{public}s", v48, 0x16u);
    v58 = v65;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v58, -1, -1);
    v6 = v66;
    MEMORY[0x29ED5FB80](v48, -1, -1);

    (*(v71 + 8))(v64, v72);
  }

  else
  {

    (*(v71 + 8))(v10, v72);
    sub_29D4C1DF0(v14, sub_29D4B4C4C);
  }

  v59 = sub_29D4C0638(v76, v80);
  v60 = v74;
  *v74 = v59 & 1;
  v61 = v78;
  v68(v60, *MEMORY[0x29EDC4200], v78);
  v37 = sub_29D515264(1uLL, 2, 1, v41);
  *(v37 + 16) = 2;
  (*(v6 + 32))(&v69[v75 + v37], v60, v61);
  return v37;
}

id sub_29D4BF604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v75 = a4;
  v65 = sub_29D5B163C();
  v63 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_29D5B16CC();
  v62 = *(v64 - 8);
  MEMORY[0x2A1C7C4A8](v64);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B2A7C();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v82 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B2ACC();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v89 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B25DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v73 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v59 - v16;
  sub_29D4C23AC(0, &qword_2A1A17330, MEMORY[0x29EDC4210], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v20 = &v59 - v19;
  v86 = sub_29D5B221C();
  v78 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v13 + 16);
  v23(v20, a1, v12);
  (*(v13 + 56))(v20, 0, 1, v12);
  v85 = v22;
  sub_29D5B21FC();
  v71 = v13 + 16;
  v70 = v23;
  v23(v17, a1, v12);
  v24 = *(v13 + 88);
  v77 = v12;
  v69 = v13 + 88;
  v68 = v24;
  v25 = v24(v17, v12);
  v67 = *MEMORY[0x29EDC4208];
  v74 = v13;
  v72 = a2;
  if (v25 == v67)
  {
    v26 = sub_29D5B143C();
    v32 = sub_29D5B10AC();

    v27 = sub_29D5B278C();
LABEL_6:
    v81 = v27;
    v84 = v28;

    goto LABEL_8;
  }

  v29 = v25;
  v30 = *MEMORY[0x29EDC4200];
  v31 = sub_29D5B143C();
  v32 = sub_29D5B10AC();

  if (v29 == v30)
  {
    v27 = sub_29D5B279C();
    goto LABEL_6;
  }

  v81 = sub_29D5B278C();
  v84 = v33;

  (*(v13 + 8))(v17, v77);
LABEL_8:
  sub_29D5B25AC();
  sub_29D5B257C();
  sub_29D5B256C();
  sub_29D5B25CC();
  v66 = a1;
  sub_29D5B258C();

  v34 = v89;
  sub_29D5B2ABC();
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4C2410(&unk_2A1A17338, MEMORY[0x29EDC4180]);
  v36 = v85;
  v35 = v86;
  v37 = v83;
  v38 = sub_29D5B0BEC();
  if (v37)
  {

    (*(v79 + 8))(v34, v80);
    result = (*(v78 + 8))(v36, v35);
    *v76 = v37;
    return result;
  }

  v82 = v38;
  v83 = v39;

  v41 = sub_29D5B143C();
  v42 = v66;
  sub_29D5B25BC();
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D5B485C())
    {
      sub_29D4C2000(MEMORY[0x29EDCA190]);
    }
  }

  type metadata accessor for AddAccountFeedItemViewController();
  sub_29D4C2410(&qword_2A1A17C60, type metadata accessor for AddAccountFeedItemViewController);
  v43 = v83;
  v44 = v82;
  sub_29D5B117C();

  sub_29D4A96D0(v44, v43);

  v45 = v73;
  v46 = v77;
  v70(v73, v42, v77);
  v47 = v68(v45, v46);
  if (v47 == v67)
  {
    (*(v74 + 96))(v45, v46);
    v48 = [objc_opt_self() allTypes];
    sub_29D48F51C(0, &qword_2A1A16358);
    v49 = sub_29D5B402C();

    v50 = sub_29D596258(v49);

    sub_29D4C0134(v50);

LABEL_16:
    sub_29D5B128C();
    sub_29D5B122C();
LABEL_18:
    (*(v63 + 104))(v61, *MEMORY[0x29EDC3910], v65);
    v53 = v60;
    sub_29D5B16DC();
    v54 = v64;
    sub_29D5B11FC();
    (*(v62 + 8))(v53, v54);
    sub_29D5B257C();
    sub_29D5B124C();
    sub_29D5B256C();
    sub_29D5B12AC();
    v55 = sub_29D5B151C();
    v57 = v56;
    v58 = sub_29D5B130C();
    sub_29D59AD10(&v88, v55, v57);

    v58(v87, 0);
    (*(v79 + 8))(v89, v80);
    return (*(v78 + 8))(v85, v86);
  }

  v51 = v74;
  if (v47 != *MEMORY[0x29EDC4200])
  {
    sub_29D5B128C();
    (*(v51 + 8))(v45, v46);
    goto LABEL_18;
  }

  (*(v74 + 96))(v45, v46);
  sub_29D4C1E70(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B6350;
  result = [objc_allocWithZone(MEMORY[0x29EDBAA88]) initWithIdentifier_];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D50BDA8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_29D4C0134(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29D5B485C())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D4C22E4();
  v3 = sub_29D5B490C();
LABEL_6:
  if (sub_29D48F51C(0, &qword_2A1A16370) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      sub_29D5B481C();
      sub_29D48F51C(0, &qword_2A1A16358);
      sub_29D4A6A1C(&qword_2A1A16350, &qword_2A1A16358);
      sub_29D5B41DC();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_29D5B488C())
        {
LABEL_55:
          sub_29D4B30C0();

          return;
        }

        sub_29D48F51C(0, &qword_2A1A16358);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_29D4C1EC0(v35);
    }
  }

  if (v2)
  {

    sub_29D5B481C();
    sub_29D48F51C(0, &qword_2A1A16358);
    sub_29D4A6A1C(&qword_2A1A16350, &qword_2A1A16358);
    sub_29D5B41DC();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_29D5B488C())
    {
      goto LABEL_55;
    }

    sub_29D48F51C(0, &qword_2A1A16358);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_29D5B464C();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_29D4C0638(uint64_t a1, _BYTE *a2)
{
  v93 = a2;
  v3 = sub_29D5B371C();
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v92 = &v85[-v8];
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v94 = &v85[-v10];
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v89 = &v85[-v12];
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v85[-v13];
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v85[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_29D5B0E6C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v91 = &v85[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v85[-v22];
  sub_29D4C1D88(a1, v17, sub_29D4B4C4C);
  v24 = *(v19 + 48);
  if (v24(v17, 1, v18) == 1)
  {
    sub_29D4C1DF0(v17, sub_29D4B4C4C);
    sub_29D5B36CC();
    v25 = sub_29D5B370C();
    v26 = sub_29D5B429C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v99 = v28;
      *v27 = 136446210;
      v98 = sub_29D4C1C34(0);
      sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
      v29 = sub_29D5B3E7C();
      v31 = sub_29D501890(v29, v30, &v99);
      v32 = v96;
      v33 = v31;

      *(v27 + 4) = v33;
      _os_log_impl(&dword_29D48C000, v25, v26, "[%{public}s] General CHR Onboarding tile has not been dismissed", v27, 0xCu);
      sub_29D48F668(v28);
      MEMORY[0x29ED5FB80](v28, -1, -1);
      MEMORY[0x29ED5FB80](v27, -1, -1);

      (*(v32 + 8))(v6, v97);
    }

    else
    {

      (*(v96 + 8))(v6, v97);
    }

    return 1;
  }

  v95 = v19;
  v34 = *(v19 + 32);
  v90 = v18;
  v34(v23, v17, v18);
  v88 = v23;
  v35 = sub_29D4E48C0(v23);
  v37 = v36;
  sub_29D5B36CC();

  v38 = sub_29D5B370C();
  v39 = sub_29D5B429C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v99 = v87;
    *v40 = 136446466;
    v98 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v41 = sub_29D5B3E7C();
    v43 = sub_29D501890(v41, v42, &v99);
    v86 = v39;
    v44 = v43;

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = sub_29D501890(v35, v37, &v99);

    *(v40 + 14) = v45;
    v46 = v96;
    _os_log_impl(&dword_29D48C000, v38, v86, "[%{public}s] %{public}s elapsed since general tile dismissal", v40, 0x16u);
    v47 = v87;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v47, -1, -1);
    MEMORY[0x29ED5FB80](v40, -1, -1);

    v48 = v46;
  }

  else
  {

    v48 = v96;
  }

  v49 = *(v48 + 8);
  v49(v14, v97);
  v50 = v94;
  v51 = v90;
  if (v24(v93, 1, v90) != 1)
  {
    v66 = v92;
    sub_29D5B36CC();
    v67 = sub_29D5B370C();
    v68 = sub_29D5B429C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v99 = v70;
      *v69 = 136446210;
      v98 = sub_29D4C1C34(0);
      sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
      v71 = sub_29D5B3E7C();
      v73 = sub_29D501890(v71, v72, &v99);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_29D48C000, v67, v68, "[%{public}s] Labs CHR Onboarding tile has been dismissed", v69, 0xCu);
      sub_29D48F668(v70);
      MEMORY[0x29ED5FB80](v70, -1, -1);
      MEMORY[0x29ED5FB80](v69, -1, -1);
    }

    v49(v66, v97);
    (*(v95 + 8))(v88, v51);
    return 1;
  }

  v52 = v91;
  sub_29D4BC5DC();
  sub_29D4C2410(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
  v53 = v88;
  v54 = sub_29D5B3DCC();
  v55 = *(v95 + 8);
  v95 += 8;
  v55(v52, v51);
  if (v54)
  {
    sub_29D5B36CC();
    v56 = sub_29D5B370C();
    v57 = sub_29D5B429C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v99 = v59;
      *v58 = 136446210;
      v98 = sub_29D4C1C34(0);
      sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
      v60 = sub_29D5B3E7C();
      v62 = v50;
      v63 = sub_29D501890(v60, v61, &v99);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_29D48C000, v56, v57, "[%{public}s] Not enough time elapsed to show Labs CHR Onboarding tile in Summary", v58, 0xCu);
      sub_29D48F668(v59);
      MEMORY[0x29ED5FB80](v59, -1, -1);
      MEMORY[0x29ED5FB80](v58, -1, -1);

      v49(v62, v97);
      v64 = v53;
      v65 = v90;
    }

    else
    {

      v49(v50, v97);
      v64 = v53;
      v65 = v51;
    }

    v55(v64, v65);
    return 1;
  }

  v74 = v89;
  sub_29D5B36CC();
  v75 = sub_29D5B370C();
  v76 = sub_29D5B429C();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v99 = v78;
    *v77 = 136446210;
    v98 = sub_29D4C1C34(0);
    sub_29D4C1C54(0, &qword_2A1A18CA0, sub_29D4C1C34);
    v79 = sub_29D5B3E7C();
    v81 = sub_29D501890(v79, v80, &v99);

    *(v77 + 4) = v81;
    _os_log_impl(&dword_29D48C000, v75, v76, "[%{public}s] Generating Labs CHR Onboarding tile in Summary", v77, 0xCu);
    sub_29D48F668(v78);
    MEMORY[0x29ED5FB80](v78, -1, -1);
    MEMORY[0x29ED5FB80](v77, -1, -1);

    v49(v74, v97);
    v82 = v53;
    v83 = v90;
  }

  else
  {

    v49(v74, v97);
    v82 = v53;
    v83 = v51;
  }

  v55(v82, v83);
  return 0;
}

uint64_t sub_29D4C10C0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4C1DF0(v0 + OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddAccountGenerator()
{
  result = qword_2A1A19F80;
  if (!qword_2A1A19F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4C11EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19AddAccountGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4C1268()
{
  if (!qword_2A1A171F8)
  {
    sub_29D499998();
    sub_29D4C1354();
    sub_29D4C2410(&qword_2A1A19778, sub_29D499998);
    sub_29D4C2410(&qword_2A1A16870, sub_29D4C1354);
    v0 = sub_29D5B37AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A171F8);
    }
  }
}

void sub_29D4C1354()
{
  if (!qword_2A1A16868)
  {
    sub_29D4B4C4C(255);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16868);
    }
  }
}

void sub_29D4C13BC()
{
  if (!qword_2A1A16C00)
  {
    sub_29D4C1268();
    sub_29D4B3AC0(255);
    sub_29D4C2410(&qword_2A1A17200, sub_29D4C1268);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C00);
    }
  }
}

void sub_29D4C1468()
{
  if (!qword_2A1A16D90)
  {
    sub_29D4C13BC();
    sub_29D4B3A8C(255);
    sub_29D4C2410(&qword_2A1A16C08, sub_29D4C13BC);
    sub_29D4C2410(&qword_2A1A167C0, sub_29D4B3A8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16D90);
    }
  }
}

void sub_29D4C1554()
{
  if (!qword_2A1A16BC0)
  {
    sub_29D4C1468();
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4C2410(&qword_2A1A16D98, sub_29D4C1468);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16BC0);
    }
  }
}

void sub_29D4C1624()
{
  if (!qword_2A1A16D00)
  {
    sub_29D4C1554();
    sub_29D4B2D8C();
    sub_29D4C2410(&qword_2A1A16BC8, sub_29D4C1554);
    sub_29D4C2410(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16D00);
    }
  }
}

void sub_29D4C1710()
{
  if (!qword_2A1A17060)
  {
    sub_29D4C1624();
    sub_29D4C2410(&qword_2A1A16D08, sub_29D4C1624);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17060);
    }
  }
}

void sub_29D4C17A4()
{
  if (!qword_2A1A16DF0)
  {
    sub_29D4C188C(255);
    sub_29D4C1354();
    sub_29D4C2410(&qword_2A1A16880, sub_29D4C188C);
    sub_29D4C2410(&qword_2A1A16870, sub_29D4C1354);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16DF0);
    }
  }
}

uint64_t sub_29D4C1908(int a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(sub_29D5B148C() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  return sub_29D4BDEE8(a1, a2, a3, *(v3 + 16), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D4C19BC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *a1;
  sub_29D4C1D1C();
  result = v6(v7, &a1[*(v8 + 48)], &a1[*(v8 + 64)]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29D4C1A58(unint64_t a1, unint64_t a2)
{
  sub_29D48F51C(0, &qword_2A1A16370);
  if (a2 >> 62)
  {
    v4 = sub_29D5B4A6C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29D5B494C();
    v6 = 0xD000000000000046;
    v5 = 0x800000029D5BC740;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29D5B494C();
  v5 = 0x800000029D5BC6F0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED5E510](v6, v5);
  v8 = sub_29D5B4DFC();
  MEMORY[0x29ED5E510](v8);

  MEMORY[0x29ED5E510](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29D5B4DFC();
  MEMORY[0x29ED5E510](v9);

  result = sub_29D5B4A3C();
  __break(1u);
  return result;
}

uint64_t sub_29D4C1C54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D4C1CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4C1D1C()
{
  if (!qword_2A1A163A8)
  {
    sub_29D4B4C4C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A163A8);
    }
  }
}

uint64_t sub_29D4C1D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4C1DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D4C1E70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D4C1EC0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29D5B464C();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_29D48F51C(0, &qword_2A1A16370);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_29D5B465C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_29D4C2000(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D5B485C())
    {
LABEL_3:
      sub_29D4C22E4();
      v3 = sub_29D5B490C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D5B485C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_29D4C1A58(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29D5B464C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29D48F51C(0, &qword_2A1A16370);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29D5B465C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_29D5B464C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29D48F51C(0, &qword_2A1A16370);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29D5B465C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_29D4C22E4()
{
  if (!qword_2A1A16258)
  {
    sub_29D48F51C(255, &qword_2A1A16370);
    sub_29D4A6A1C(&unk_2A1A16360, &qword_2A1A16370);
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16258);
    }
  }
}

void sub_29D4C23AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4C2410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4C2458(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_29D5B480C();
    v5 = v4;
    v6 = sub_29D5B489C();
    v8 = v7;
    v9 = MEMORY[0x29ED5EE00](v3, v5, v6, v7);
    sub_29D4C902C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_29D4C902C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_29D5B47DC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_29D4C7CA0(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_29D4C902C(v3, v5, v2 != 0);
  return v12;
}

id sub_29D4C2574()
{
  v1 = OBJC_IVAR____TtC13HealthRecords30HealthRecordsPluginAppDelegate____lazy_storage___notificationCenterDelegate;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords30HealthRecordsPluginAppDelegate____lazy_storage___notificationCenterDelegate))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords30HealthRecordsPluginAppDelegate____lazy_storage___notificationCenterDelegate);
  }

  else
  {
    v3 = v0;
    sub_29D5B1CBC();
    v4 = sub_29D5B1C8C();
    v5 = sub_29D5B1C4C();

    v6 = [v5 healthStore];
    v7 = objc_allocWithZone(sub_29D5B202C());
    v8 = sub_29D5B201C();
    *(v3 + v1) = v8;
    v2 = v8;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_29D4C2630(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v9 = sub_29D5B0EDC();
  v81 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B200C();
  v80 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v66 - v16;
  v18 = sub_29D5B2F1C();
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return (a3)(0, 0);
  }

  v74 = a5;
  v76 = v20;
  v77 = v19;
  v78 = a4;
  v79 = a3;
  v23 = sub_29D5B0EFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v70 = v23;
  v69 = v25;
  v68 = v24 + 56;
  (v25)(v17, 1, 1);
  sub_29D5B1FFC();
  v66 = sub_29D5B2A0C();
  v26 = v81;
  v27 = *(v80 + 8);
  v72 = v12;
  v67 = v27;
  v27(v14, v12);
  sub_29D4C909C(v17, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  sub_29D5B0ECC();
  sub_29D5B0E8C();
  v28 = *(v26 + 8);
  v75 = v11;
  v80 = v9;
  v81 = v26 + 8;
  v73 = v28;
  v28();
  v71 = v22;
  sub_29D5B2F0C();
  sub_29D5B324C();
  v66 = sub_29D5B2C3C();
  v30 = v29;
  v31 = sub_29D5B401C();
  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    v33 = sub_29D5B3E5C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v69(v17, 1, 1, v70);
  sub_29D5B1FFC();
  v37 = sub_29D5B2A0C();
  v39 = v38;
  v67(v14, v72);
  sub_29D4C909C(v17, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v40 = type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem();
  v84 = v40;
  v85 = sub_29D4C8844(&qword_2A17A3F70, 255, type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem);
  v41 = sub_29D4A0410(v83);
  *v41 = v66;
  v41[1] = v30;
  v41[2] = v33;
  v41[3] = v35;
  v41[4] = v37;
  v41[5] = v39;
  v41[6] = 0;
  v41[7] = 0;
  *(v41 + 64) = 1;
  sub_29D5B0ECC();
  v42 = v74;
  *(v41 + *(v40 + 40)) = v74;
  v43 = v42;
  v44 = v71;
  v45 = sub_29D5B2EFC();
  v47 = v46;
  v48 = *v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v47 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_29D515298(0, v48[2] + 1, 1, v48);
    *v47 = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    *v47 = sub_29D515298((v50 > 1), v51 + 1, 1, v48);
  }

  v52 = v84;
  v53 = v85;
  v54 = sub_29D4C9A30(v83, v84);
  MEMORY[0x2A1C7C4A8](v54);
  v56 = &v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  sub_29D4C7EC4(v51, v56, v47, v52, v53);
  sub_29D48F668(v83);
  v45(v82, 0);
  sub_29D4C9038(0, &qword_2A17A3F78, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v58 = v76;
  v59 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_29D5B62A0;
  v61 = v77;
  (*(v58 + 16))(v60 + v59, v44, v77);
  v83[0] = 0x3C53447961727241;
  v83[1] = 0xE800000000000000;
  v62 = v75;
  sub_29D5B0ECC();
  v63 = sub_29D5B0E8C();
  v65 = v64;
  (v73)(v62, v80);
  MEMORY[0x29ED5E510](v63, v65);

  MEMORY[0x29ED5E510](62, 0xE100000000000000);
  sub_29D5B2CEC();
  swift_allocObject();
  sub_29D5B2CDC();
  v79();

  return (*(v58 + 8))(v44, v61);
}

uint64_t sub_29D4C2E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_29D4C2EB8(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29D5B371C();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B3CCC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;

  v15 = v13;
  sub_29D4C888C(a1, sub_29D4C99D0, v14);

  sub_29D5B3CBC();
  sub_29D5B3CDC();
  v16 = *(v6 + 8);
  v16(v9, v5);
  LOBYTE(a1) = sub_29D5B448C();
  v16(v11, v5);
  if (a1)
  {
    sub_29D5B36CC();
    v17 = sub_29D5B370C();
    v18 = sub_29D5B427C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      v30 = ObjectType;
      swift_getMetatypeMetadata();
      v21 = sub_29D5B3E7C();
      v23 = sub_29D501890(v21, v22, &v31);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29D48C000, v17, v18, "%s timed out waiting for healthd to return whether CHR section should be shown", v19, 0xCu);
      sub_29D48F668(v20);
      MEMORY[0x29ED5FB80](v20, -1, -1);
      MEMORY[0x29ED5FB80](v19, -1, -1);
    }

    else
    {
    }

    (*(v28 + 8))(v4, v29);

    return 0;
  }

  else
  {

    swift_beginAccess();
    v24 = *(v12 + 16);
    swift_unknownObjectRetain();
  }

  return v24;
}

uint64_t sub_29D4C3248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_29D5B449C();
}

uint64_t sub_29D4C32BC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_29D4C3300()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_29D4C333C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_29D4C3394()
{
  v0 = sub_29D5B0E8C();
  MEMORY[0x29ED5E510](v0);

  return 0xD000000000000014;
}

uint64_t sub_29D4C33F8(uint64_t a1)
{
  v2 = sub_29D4C8844(&unk_2A17A3FB0, 255, type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem);

  return MEMORY[0x2A1C60910](a1, v2);
}

id sub_29D4C3478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthRecordsPluginAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29D4C34AC(uint64_t a1)
{
  if (a1 == 3)
  {
    return sub_29D4C2574();
  }

  else
  {
    return 0;
  }
}

void sub_29D4C34DC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D4C7F5C(a1, a3);
  v5 = sub_29D5B2FBC();
  sub_29D574C28(a1, v5, a3);
}

void sub_29D4C3550(void *a1, uint64_t a2, void *a3)
{
  sub_29D4C86FC(a1, a3);
  v5 = sub_29D5B2FBC();
  sub_29D4A6A6C(a1, v5, a3);
}

uint64_t sub_29D4C35C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  swift_getObjectType();
  v18 = sub_29D5B104C();
  v3 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C8844(&qword_2A17A3E78, v6, type metadata accessor for HealthRecordsPluginAppDelegate);
  v7 = sub_29D5B32DC();
  v9 = v8;
  sub_29D5B32FC();
  v10 = [a1 uniqueIdentifier];
  v11 = sub_29D5B3E5C();
  v13 = v12;

  sub_29D4C8C00(v11, v13, v7, v9, 0, 0);

  if (sub_29D5B182C())
  {
    sub_29D5B355C();
  }

  v14 = sub_29D5B18BC();
  sub_29D4C2458(v14);

  sub_29D5B188C();
  (*(v3 + 104))(v5, *MEMORY[0x29EDC36E0], v18);
  v15 = v19;
  sub_29D5B334C();
  v16 = sub_29D5B335C();
  return (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
}

uint64_t sub_29D4C3840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_29D5B371C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v39 - v7;
  v9 = sub_29D5B104C();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B200C();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_29D5B353C();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 16);
  v45 = a1;
  v21(v20, a1, v17);
  if ((*(v18 + 88))(v20, v17) == *MEMORY[0x29EDC2E28])
  {
    (*(v18 + 8))(v20, v17);
    v22 = [objc_opt_self() categoryWithID_];
    if (v22)
    {
      v47 = v22;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass_];
      sub_29D5B352C();
      if (!v24)
      {
        v34 = sub_29D5B0EFC();
        (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
        sub_29D5B1FFC();
        sub_29D5B2A0C();
        (*(v39 + 8))(v13, v40);
        sub_29D4C909C(v16, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
      }

      sub_29D4C9038(0, &qword_2A17A3E88, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
      v35 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_29D5B62A0;
      v21((v36 + v35), v45, v17);
      (*(v43 + 104))(v42, *MEMORY[0x29EDC36E0], v44);
      v37 = v48;
      sub_29D5B334C();
      v38 = sub_29D5B335C();
      return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    }

    else
    {
      sub_29D5B36CC();
      v30 = sub_29D5B370C();
      v31 = sub_29D5B427C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_29D48C000, v30, v31, "failed to create lab results category when generating data type item", v32, 2u);
        MEMORY[0x29ED5FB80](v32, -1, -1);
      }

      v46[1](v8, v47);
      v33 = sub_29D5B335C();
      return (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
    }
  }

  else
  {
    sub_29D5B36CC();
    v25 = sub_29D5B370C();
    v26 = sub_29D5B427C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_29D48C000, v25, v26, "auth identifier is not of health records concept type", v27, 2u);
      MEMORY[0x29ED5FB80](v27, -1, -1);
    }

    v46[1](v6, v47);
    v28 = sub_29D5B335C();
    (*(*(v28 - 8) + 56))(v48, 1, 1, v28);
    return (*(v18 + 8))(v20, v17);
  }
}

void sub_29D4C3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();

  v13 = sub_29D5B370C();
  v14 = sub_29D5B429C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = v9;
    v18 = v17;
    v35 = v17;
    aBlock = a1;
    *v16 = 136315138;
    v37 = a2;

    sub_29D5B4CAC();
    v32 = a3;
    v19 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v35);
    a3 = v32;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_29D48C000, v13, v14, "Starting attachment search for query string: %s", v16, 0xCu);
    sub_29D48F668(v18);
    MEMORY[0x29ED5FB80](v18, -1, -1);
    v23 = v16;
    v5 = v33;
    MEMORY[0x29ED5FB80](v23, -1, -1);

    (*(v10 + 8))(v12, v31);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v24 = [objc_allocWithZone(MEMORY[0x29EDC3E00]) init];
  v25 = sub_29D5B3E1C();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v27 = v34;
  v26[4] = a3;
  v26[5] = v27;
  v26[6] = v5;
  v40 = sub_29D4C94D8;
  v41 = v26;
  aBlock = MEMORY[0x29EDCA5F8];
  v37 = 1107296256;
  v38 = sub_29D4C5348;
  v39 = &unk_2A2428188;
  v28 = _Block_copy(&aBlock);

  v29 = v5;

  [v24 fetchSpotlightSearchResultsForQueryString:v25 completion:v28];
  _Block_release(v28);
}

uint64_t sub_29D4C42C4(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(void *, id), uint64_t a6)
{
  v64[1] = a6;
  v65 = a5;
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B0EDC();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v70 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  if (a1)
  {

    v75[0] = sub_29D4C76D4(v16);
    sub_29D4C5670(v75);
    v17 = v75[0];
    v75[0] = MEMORY[0x29EDCA190];
    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      goto LABEL_40;
    }

    for (i = *(v17 + 16); i; i = sub_29D5B485C())
    {
      v19 = 0;
      v68 = v17 + 32;
      v69 = v17 & 0xC000000000000001;
      v66 = i;
      v67 = v17;
      while (1)
      {
        if (v69)
        {
          v20 = MEMORY[0x29ED5EF30](v19, v17);
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_39;
          }

          v20 = *(v68 + 8 * v19);
        }

        v21 = v20;
        v22 = __OFADD__(v19, 1);
        v23 = v19 + 1;
        if (v22)
        {
          break;
        }

        v73 = v23;
        v24 = [v20 previewStringMatchRanges];
        sub_29D48F51C(0, &qword_2A17A3EA0);
        v25 = sub_29D5B402C();

        if (v25 >> 62)
        {
          v26 = sub_29D5B485C();
          v72 = v21;
          if (v26)
          {
LABEL_12:
            v27 = 0;
            v74 = v25 & 0xC000000000000001;
            v28 = v25 & 0xFFFFFFFFFFFFFF8;
            v29 = MEMORY[0x29EDCA190];
            a2 = v25;
            v17 = v26;
            while (1)
            {
              if (v74)
              {
                v30 = MEMORY[0x29ED5EF30](v27, v25);
              }

              else
              {
                if (v27 >= *(v28 + 16))
                {
                  goto LABEL_37;
                }

                v30 = *(v25 + 8 * v27 + 32);
              }

              v31 = v30;
              v32 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              v33 = [v30 rangeValue];
              v35 = v34;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v29 = sub_29D5152B4(0, *(v29 + 2) + 1, 1, v29);
              }

              v37 = *(v29 + 2);
              v36 = *(v29 + 3);
              if (v37 >= v36 >> 1)
              {
                v29 = sub_29D5152B4((v36 > 1), v37 + 1, 1, v29);
              }

              *(v29 + 2) = v37 + 1;
              v38 = &v29[16 * v37];
              *(v38 + 4) = v33;
              *(v38 + 5) = v35;
              ++v27;
              v39 = v32 == v17;
              v25 = a2;
              if (v39)
              {
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
            break;
          }
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v72 = v21;
          if (v26)
          {
            goto LABEL_12;
          }
        }

LABEL_27:

        v40 = v72;
        v41 = [v72 title];
        sub_29D5B3E5C();

        v42 = [v40 previewString];
        if (v42)
        {
          v43 = v42;
          sub_29D5B3E5C();
        }

        v44 = [v40 medicalRecord];
        v45 = [v40 attachmentUUID];
        sub_29D5B0EBC();

        sub_29D5B1CBC();
        v46 = sub_29D5B1C8C();
        sub_29D5B1C4C();

        sub_29D5B210C();
        swift_allocObject();
        sub_29D5B20FC();

        MEMORY[0x29ED5E5E0]();
        if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        v17 = v67;
        v19 = v73;
        a2 = v71;
        if (v73 == v66)
        {
          v62 = v75[0];
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

    v62 = MEMORY[0x29EDCA190];
LABEL_42:

    v63 = sub_29D4C4B5C(v62);

    v65(v63, a2);
  }

  else
  {
    sub_29D5B36CC();

    v47 = a2;
    v48 = sub_29D5B370C();
    v49 = sub_29D5B429C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76 = v51;
      *v50 = 136315394;
      v75[0] = a3;
      v75[1] = a4;

      sub_29D5B4CAC();
      v52 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v53 = sub_29D5B3E7C();
      v55 = sub_29D501890(v53, v54, &v76);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      v75[0] = v71;
      v56 = v71;
      sub_29D4C94F0();
      v57 = sub_29D5B3E7C();
      v59 = sub_29D501890(v57, v58, &v76);

      *(v50 + 14) = v59;
      _os_log_impl(&dword_29D48C000, v48, v49, "No search results returned for “%s” from the spotlight indexer, error: %s", v50, 0x16u);
      swift_arrayDestroy();
      v60 = v51;
      a2 = v71;
      MEMORY[0x29ED5FB80](v60, -1, -1);
      MEMORY[0x29ED5FB80](v50, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    return (v65)(MEMORY[0x29EDCA190], a2);
  }
}

uint64_t sub_29D4C49B4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 medicalRecord];
  v5 = [v4 sortDate];

  v6 = [v3 medicalRecord];
  v7 = [v6 sortDate];

  sub_29D48F51C(0, &qword_2A17A3ED0);
  if (sub_29D5B465C())
  {
    v8 = [v2 title];
    v9 = sub_29D5B3E5C();
    v11 = v10;

    v12 = [v3 title];
    v13 = sub_29D5B3E5C();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_29D5B4C7C();
    }
  }

  else
  {
    v17 = [v7 compare_];

    v16 = v17 == -1;
  }

  return v16 & 1;
}

void *sub_29D4C4B5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29D5B485C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x29EDCA190];
  result = sub_29D4C6CB0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x29ED5EF30](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_29D4C6CB0((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_29D5B210C();
        v15 = sub_29D4C8844(&qword_2A17A3EA8, 255, MEMORY[0x29EDC4168]);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_29D497868(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_29D4C6CB0((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_29D5B210C();
        v15 = sub_29D4C8844(&qword_2A17A3EA8, 255, MEMORY[0x29EDC4168]);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_29D497868(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C4D84(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptCodedValue(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x29EDCA190];
  if (v6)
  {
    v17 = MEMORY[0x29EDCA190];
    sub_29D4C6D64(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_29D4C9684(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_29D4C6D64((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_29D4C8844(&qword_2A17A3EE8, 255, type metadata accessor for SharedConceptCodedValue);
      v12 = sub_29D4A0410(&v14);
      sub_29D4C9684(v5, v12);
      *(v7 + 16) = v11 + 1;
      sub_29D497868(&v14, v7 + 40 * v11 + 32);
      sub_29D4C96E8(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_29D4C4FD0(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), void (*a4)(void *, unint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x29EDCA190];
  if (v4)
  {
    v28 = MEMORY[0x29EDCA190];
    a2(0, v4, 0);
    v5 = v28;
    v9 = (a1 + 32);
    do
    {
      v10 = v9[2];
      v11 = v9[4];
      v25 = v9[3];
      v26 = v11;
      v27 = *(v9 + 10);
      v12 = v9[1];
      v22 = *v9;
      v23 = v12;
      v24 = v10;
      sub_29D4B4604(&v22, v21);
      v28 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        a2(v13 > 1, v14 + 1, 1);
        v5 = v28;
      }

      v21[3] = &type metadata for SharedConceptFormattedRecord;
      v21[4] = a3();
      v15 = swift_allocObject();
      v21[0] = v15;
      v16 = v25;
      v17 = v26;
      *(v15 + 48) = v24;
      *(v15 + 64) = v16;
      *(v15 + 80) = v17;
      *(v15 + 96) = v27;
      v18 = v23;
      *(v15 + 16) = v22;
      *(v15 + 32) = v18;
      *(v5 + 16) = v14 + 1;
      a4(v21, v5 + 40 * v14 + 32);
      v9 = (v9 + 88);
      --v4;
    }

    while (v4);
  }

  return v5;
}

char *sub_29D4C514C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29D5B485C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x29EDCA190];
  result = sub_29D4C6E80(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x29ED5EF30](i, a1);
        sub_29D48F51C(0, &unk_2A17A3F00);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_29D4C6E80((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_29D4C97AC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_29D48F51C(0, &unk_2A17A3F00);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_29D4C6E80((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_29D4C97AC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C5348(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29D48F51C(0, &qword_2A17A3E90);
    v4 = sub_29D5B402C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29D4C53EC()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDB9C70];
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_29D5B0EFC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_29D5B1FCC();
  v9 = sub_29D5B2A0C();
  (*(v1 + 8))(v3, v0);
  sub_29D4C909C(v7, &qword_2A1A19588, v4);
  return v9;
}

uint64_t sub_29D4C55D8()
{
  sub_29D5B20EC();
  sub_29D4C8844(&qword_2A1A17348, 255, MEMORY[0x29EDC4158]);
  return sub_29D5B431C();
}

uint64_t sub_29D4C5670(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29D4C7C8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_29D4C56EC(v6);
  return sub_29D5B499C();
}

void sub_29D4C56EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_29D5B4C3C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29D48F51C(0, &qword_2A17A3E90);
        v6 = sub_29D5B409C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_29D4C5A9C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_29D4C5800(0, v2, 1, a1);
  }
}

void sub_29D4C5800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    v8 = &off_29F351000;
    v36 = *a4;
    sub_29D48F51C(0, &qword_2A17A3ED0);
LABEL_6:
    v32 = v6;
    v33 = v4;
    v9 = *(v5 + 8 * v4);
    v31 = v7;
    while (1)
    {
      v10 = *v6;
      v11 = v9;
      v12 = v10;
      v13 = [v11 v8[357]];
      v14 = [v13 sortDate];

      v15 = [v12 v8[357]];
      v16 = v14;
      v17 = [v15 sortDate];

      if (sub_29D5B465C())
      {
        v34 = v16;
        v35 = v11;
        v18 = [v11 title];
        v19 = sub_29D5B3E5C();
        v21 = v20;

        v22 = [v12 title];
        v23 = sub_29D5B3E5C();
        v25 = v24;

        if (v19 == v23 && v21 == v25)
        {

          v5 = v36;
          v8 = &off_29F351000;
LABEL_5:
          v4 = v33 + 1;
          v6 = v32 + 8;
          v7 = v31 - 1;
          if (v33 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v26 = sub_29D5B4C7C();

        v5 = v36;
        v8 = &off_29F351000;
        if ((v26 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v27 = [v17 compare_];

        v5 = v36;
        if (v27 != -1)
        {
          goto LABEL_5;
        }
      }

      if (!v5)
      {
        break;
      }

      v28 = *v6;
      v9 = *(v6 + 8);
      *v6 = v9;
      *(v6 + 8) = v28;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_29D4C5A9C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x29EDCA190];
    while (1)
    {
      v11 = v9;
      v9 = (v9 + 1);
      v133 = v8;
      if (v9 < v8)
      {
        v12 = *v6;
        v13 = *(*v6 + 8 * v9);
        v139 = *(*v6 + 8 * v11);
        v14 = v139;
        v140 = v13;
        v15 = v13;
        v16 = v14;
        v17 = v5;
        v137 = sub_29D4C49B4(&v140, &v139);
        if (v5)
        {

          return;
        }

        v9 = (v11 + 2);
        if (v11 + 2 < v133)
        {
          v131 = (v11 + 2);
          v123 = v10;
          v121 = v11;
          v18 = (v12 + 8 * v11 + 16);
          v19 = v133;
          do
          {
            v21 = *(v18 - 1);
            v22 = *v18;
            v23 = v21;
            v24 = [v22 medicalRecord];
            v25 = [v24 sortDate];

            v26 = [v23 medicalRecord];
            v27 = [v26 sortDate];

            sub_29D48F51C(0, &qword_2A17A3ED0);
            if (sub_29D5B465C())
            {
              v28 = [v22 title];
              v29 = sub_29D5B3E5C();
              v31 = v30;

              v135 = v23;
              v32 = [v23 title];
              v33 = sub_29D5B3E5C();
              v35 = v34;

              if (v29 == v33 && v31 == v35)
              {
                v36 = 0;
              }

              else
              {
                v36 = sub_29D5B4C7C();
              }

              v19 = v133;

              if ((v137 ^ v36))
              {
LABEL_16:
                v10 = v123;
                v5 = v17;
                v6 = a3;
                v7 = a1;
                v9 = v131;
                goto LABEL_18;
              }
            }

            else
            {
              v20 = [v27 compare_];

              if (((v137 ^ (v20 != -1)) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            ++v18;
            v131 = (v131 + 1);
          }

          while (v19 != v131);
          v9 = v19;
          v10 = v123;
          v5 = v17;
          v6 = a3;
          v7 = a1;
LABEL_18:
          v11 = v121;
        }

        if (v137)
        {
          if (v9 < v11)
          {
            goto LABEL_135;
          }

          if (v11 < v9)
          {
            v37 = 8 * v9 - 8;
            v38 = 8 * v11;
            v39 = v9;
            v40 = v11;
            do
            {
              v39 = (v39 - 1);
              if (v40 != v39)
              {
                v41 = *v6;
                if (!*v6)
                {
                  goto LABEL_139;
                }

                v42 = *(v41 + v38);
                *(v41 + v38) = *(v41 + v37);
                *(v41 + v37) = v42;
              }

              ++v40;
              v37 -= 8;
              v38 += 8;
            }

            while (v40 < v39);
          }
        }
      }

      v43 = v6[1];
      if (v9 >= v43)
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v9, v11))
      {
        goto LABEL_132;
      }

      if (v9 - v11 >= a4)
      {
        goto LABEL_51;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_133;
      }

      if (v11 + a4 >= v43)
      {
        v44 = v6[1];
      }

      else
      {
        v44 = (v11 + a4);
      }

      if (v44 < v11)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v9 == v44)
      {
        goto LABEL_51;
      }

      v124 = v10;
      v125 = v5;
      v45 = *v6;
      sub_29D48F51C(0, &qword_2A17A3ED0);
      v46 = v45 + 8 * v9 - 8;
      v122 = v11;
      v47 = v11 - v9;
      v128 = v44;
      v138 = v45;
LABEL_39:
      v130 = v46;
      v132 = v9;
      v48 = *(v45 + 8 * v9);
      v129 = v47;
      v49 = v47;
      v50 = v46;
      while (1)
      {
        v51 = *v50;
        v52 = v48;
        v53 = v51;
        v54 = [v52 medicalRecord];
        v55 = [v54 sortDate];

        v56 = [v53 medicalRecord];
        v57 = [v56 sortDate];

        if (sub_29D5B465C())
        {
          break;
        }

        v67 = [v57 compare_];

        v45 = v138;
        if (v67 != -1)
        {
          goto LABEL_38;
        }

LABEL_46:
        if (!v45)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v68 = *v50;
        v48 = *(v50 + 8);
        *v50 = v48;
        *(v50 + 8) = v68;
        v50 -= 8;
        if (__CFADD__(v49++, 1))
        {
          goto LABEL_38;
        }
      }

      v134 = v52;
      v58 = [v52 title];
      v59 = sub_29D5B3E5C();
      v61 = v60;

      v136 = v53;
      v62 = [v53 title];
      v63 = sub_29D5B3E5C();
      v65 = v64;

      if (v59 != v63 || v61 != v65)
      {
        break;
      }

      v45 = v138;
LABEL_38:
      v9 = (v132 + 1);
      v46 = v130 + 8;
      v47 = v129 - 1;
      if ((v132 + 1) != v128)
      {
        goto LABEL_39;
      }

      v9 = v128;
      v10 = v124;
      v5 = v125;
      v6 = a3;
      v11 = v122;
      v7 = a1;
LABEL_51:
      if (v9 < v11)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_29D514BF8(0, *(v10 + 2) + 1, 1, v10);
      }

      v71 = *(v10 + 2);
      v70 = *(v10 + 3);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v10 = sub_29D514BF8((v70 > 1), v71 + 1, 1, v10);
      }

      *(v10 + 2) = v72;
      v73 = &v10[16 * v71];
      *(v73 + 4) = v11;
      *(v73 + 5) = v9;
      v74 = *v7;
      if (!v74)
      {
        goto LABEL_141;
      }

      if (v71)
      {
        while (2)
        {
          v11 = v72 - 1;
          if (v72 >= 4)
          {
            v79 = &v10[16 * v72 + 32];
            v80 = *(v79 - 64);
            v81 = *(v79 - 56);
            v85 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            if (v85)
            {
              goto LABEL_118;
            }

            v84 = *(v79 - 48);
            v83 = *(v79 - 40);
            v85 = __OFSUB__(v83, v84);
            v77 = v83 - v84;
            v78 = v85;
            if (v85)
            {
              goto LABEL_119;
            }

            v86 = &v10[16 * v72];
            v88 = *v86;
            v87 = *(v86 + 1);
            v85 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v85)
            {
              goto LABEL_121;
            }

            v85 = __OFADD__(v77, v89);
            v90 = v77 + v89;
            if (v85)
            {
              goto LABEL_124;
            }

            if (v90 >= v82)
            {
              v108 = &v10[16 * v11 + 32];
              v110 = *v108;
              v109 = *(v108 + 1);
              v85 = __OFSUB__(v109, v110);
              v111 = v109 - v110;
              if (v85)
              {
                goto LABEL_128;
              }

              if (v77 < v111)
              {
                v11 = v72 - 2;
              }
            }

            else
            {
LABEL_71:
              if (v78)
              {
                goto LABEL_120;
              }

              v91 = &v10[16 * v72];
              v93 = *v91;
              v92 = *(v91 + 1);
              v94 = __OFSUB__(v92, v93);
              v95 = v92 - v93;
              v96 = v94;
              if (v94)
              {
                goto LABEL_123;
              }

              v97 = &v10[16 * v11 + 32];
              v99 = *v97;
              v98 = *(v97 + 1);
              v85 = __OFSUB__(v98, v99);
              v100 = v98 - v99;
              if (v85)
              {
                goto LABEL_126;
              }

              if (__OFADD__(v95, v100))
              {
                goto LABEL_127;
              }

              if (v95 + v100 < v77)
              {
                goto LABEL_85;
              }

              if (v77 < v100)
              {
                v11 = v72 - 2;
              }
            }
          }

          else
          {
            if (v72 == 3)
            {
              v75 = *(v10 + 4);
              v76 = *(v10 + 5);
              v85 = __OFSUB__(v76, v75);
              v77 = v76 - v75;
              v78 = v85;
              goto LABEL_71;
            }

            v101 = &v10[16 * v72];
            v103 = *v101;
            v102 = *(v101 + 1);
            v85 = __OFSUB__(v102, v103);
            v95 = v102 - v103;
            v96 = v85;
LABEL_85:
            if (v96)
            {
              goto LABEL_122;
            }

            v104 = &v10[16 * v11];
            v106 = *(v104 + 4);
            v105 = *(v104 + 5);
            v85 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v85)
            {
              goto LABEL_125;
            }

            if (v107 < v95)
            {
              break;
            }
          }

          v112 = v11 - 1;
          if (v11 - 1 >= v72)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          if (!*v6)
          {
            goto LABEL_138;
          }

          v113 = *&v10[16 * v112 + 32];
          v114 = *&v10[16 * v11 + 40];
          sub_29D4C641C((*v6 + 8 * v113), (*v6 + 8 * *&v10[16 * v11 + 32]), (*v6 + 8 * v114), v74);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v114 < v113)
          {
            goto LABEL_116;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_29D4C6A64(v10);
          }

          if (v112 >= *(v10 + 2))
          {
            goto LABEL_117;
          }

          v115 = &v10[16 * v112];
          *(v115 + 4) = v113;
          *(v115 + 5) = v114;
          v141 = v10;
          sub_29D4C69D8(v11);
          v10 = v141;
          v72 = *(v141 + 16);
          if (v72 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v8 = v6[1];
      v7 = a1;
      if (v9 >= v8)
      {
        goto LABEL_103;
      }
    }

    v66 = sub_29D5B4C7C();

    v45 = v138;
    if ((v66 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  v10 = MEMORY[0x29EDCA190];
LABEL_103:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_142;
  }

  v11 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_136:
    v11 = sub_29D4C6A64(v11);
  }

  v141 = v11;
  v116 = *(v11 + 16);
  if (v116 < 2)
  {
LABEL_113:

    return;
  }

  while (*v6)
  {
    v117 = *(v11 + 16 * v116);
    v118 = *(v11 + 16 * (v116 - 1) + 40);
    sub_29D4C641C((*v6 + 8 * v117), (*v6 + 8 * *(v11 + 16 * (v116 - 1) + 32)), (*v6 + 8 * v118), v9);
    if (v5)
    {
      goto LABEL_113;
    }

    if (v118 < v117)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_29D4C6A64(v11);
    }

    if (v116 - 2 >= *(v11 + 16))
    {
      goto LABEL_130;
    }

    v119 = (v11 + 16 * v116);
    *v119 = v117;
    v119[1] = v118;
    v141 = v11;
    sub_29D4C69D8(v116 - 1);
    v11 = v141;
    v116 = *(v141 + 16);
    if (v116 <= 1)
    {
      goto LABEL_113;
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_29D4C641C(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v66 = &v4[v12];
    if (v10 >= 8)
    {
      v34 = __src;
      if (v6 > __src)
      {
        v58 = v4;
LABEL_32:
        v35 = v6 - 1;
        v36 = v5 - 1;
        v37 = v66;
        v60 = v6;
        v56 = v6 - 1;
        do
        {
          v63 = v37 - 1;
          v65 = v36;
          v38 = *v35;
          v39 = *(v37 - 1);
          v40 = v38;
          v41 = [v39 medicalRecord];
          v42 = [v41 sortDate];

          v43 = [v40 medicalRecord];
          v44 = [v43 sortDate];

          sub_29D48F51C(0, &qword_2A17A3ED0);
          if (sub_29D5B465C())
          {
            v45 = [v39 title];
            v46 = sub_29D5B3E5C();
            v48 = v47;

            v49 = [v40 title];
            v50 = sub_29D5B3E5C();
            v52 = v51;

            if (v46 == v50 && v48 == v52)
            {

              v4 = v58;
              v6 = v60;
              v34 = __src;
            }

            else
            {
              v54 = sub_29D5B4C7C();

              v4 = v58;
              v6 = v60;
              v34 = __src;
              if (v54)
              {
LABEL_43:
                v5 = v65;
                if (v65 + 1 != v6)
                {
                  *v65 = *v56;
                }

                if (v66 <= v4 || (v6 = v56, v56 <= v34))
                {
                  v6 = v56;
                  goto LABEL_50;
                }

                goto LABEL_32;
              }
            }
          }

          else
          {
            v53 = [v44 compare_];

            if (v53 == -1)
            {
              goto LABEL_43;
            }
          }

          v37 = v63;
          if (v65 + 1 != v66)
          {
            *v65 = *v63;
          }

          v36 = v65 - 1;
          v66 = v63;
          v35 = v56;
        }

        while (v63 > v4);
        v66 = v63;
      }
    }
  }

  else
  {
    v13 = __src;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v66 = &v4[v9];
    if (v7 >= 8 && v6 < v5)
    {
      v64 = v5;
      do
      {
        v14 = *v4;
        v15 = *v6;
        v16 = v14;
        v17 = [v15 medicalRecord];
        v18 = [v17 sortDate];

        v19 = [v16 medicalRecord];
        v20 = [v19 sortDate];

        sub_29D48F51C(0, &qword_2A17A3ED0);
        if (sub_29D5B465C())
        {
          v59 = v6;
          v61 = v13;
          v57 = v4;
          v21 = [v15 title];
          v22 = sub_29D5B3E5C();
          v24 = v23;

          v25 = [v16 title];
          v26 = sub_29D5B3E5C();
          v28 = v27;

          if (v22 == v26 && v24 == v28)
          {

            v4 = v57;
            v6 = v59;
            v13 = v61;
LABEL_17:
            v30 = v4;
            v31 = v13 == v4++;
            v32 = v64;
            if (v31)
            {
              goto LABEL_19;
            }

LABEL_18:
            *v13 = *v30;
            goto LABEL_19;
          }

          v33 = sub_29D5B4C7C();

          v4 = v57;
          v6 = v59;
          v13 = v61;
          if ((v33 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v29 = [v20 compare_];

          if (v29 != -1)
          {
            goto LABEL_17;
          }
        }

        v30 = v6;
        v31 = v13 == v6++;
        v32 = v64;
        if (!v31)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v13;
      }

      while (v4 < v66 && v6 < v32);
    }

    v6 = v13;
  }

LABEL_50:
  if (v6 != v4 || v6 >= (v4 + ((v66 - v4 + (v66 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v66 - v4));
  }

  return 1;
}

uint64_t sub_29D4C69D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29D4C6A64(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_29D4C6A78(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D4C9038(0, &qword_2A17A3ED8, sub_29D4C962C, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29D4C6BA0(char *a1, int64_t a2, char a3)
{
  result = sub_29D4C6EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29D4C6BC0(size_t a1, int64_t a2, char a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &unk_2A17A3F60, type metadata accessor for SharedConceptFeedItemData, type metadata accessor for SharedConceptFeedItemData);
  *v3 = result;
  return result;
}

size_t sub_29D4C6C10(size_t a1, int64_t a2, char a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A17A3D70, MEMORY[0x29EDC3828], MEMORY[0x29EDC3828]);
  *v3 = result;
  return result;
}

size_t sub_29D4C6C60(size_t a1, int64_t a2, char a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC3840]);
  *v3 = result;
  return result;
}

void *sub_29D4C6CB0(void *a1, int64_t a2, char a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9558, &qword_2A17A3EB8);
  *v3 = result;
  return result;
}

void *sub_29D4C6CF4(void *a1, int64_t a2, char a3)
{
  result = sub_29D4C7014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29D4C6D14(size_t a1, int64_t a2, char a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A17A3F58, type metadata accessor for RecordKindFeedItemData, type metadata accessor for RecordKindFeedItemData);
  *v3 = result;
  return result;
}

void *sub_29D4C6D64(void *a1, int64_t a2, char a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9744, &qword_2A17A3EF8);
  *v3 = result;
  return result;
}

void *sub_29D4C6DA8(void *a1, int64_t a2, char a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9934, &unk_2A17A3F48);
  *v3 = result;
  return result;
}

void *sub_29D4C6DEC(void *a1, int64_t a2, char a3)
{
  result = sub_29D4C7160(a1, a2, a3, *v3, sub_29D4C9878, &qword_2A17A3F30);
  *v3 = result;
  return result;
}

size_t sub_29D4C6E30(size_t a1, int64_t a2, char a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FB8]);
  *v3 = result;
  return result;
}

char *sub_29D4C6E80(char *a1, int64_t a2, char a3)
{
  result = sub_29D4C72AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29D4C6EA0(size_t a1, int64_t a2, char a3)
{
  result = sub_29D4C73D8(a1, a2, a3, *v3, &qword_2A17A3F18, type metadata accessor for LabNameWithDate, type metadata accessor for LabNameWithDate);
  *v3 = result;
  return result;
}

char *sub_29D4C6EF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D48E500(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29D4C7014(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D4C9038(0, &qword_2A1A195C0, sub_29D4C999C, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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
    sub_29D4C999C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D4C7160(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D4A02FC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_29D4C72AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D48E500(0, &qword_2A17A4EC0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

size_t sub_29D4C73D8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D4C9038(0, a5, a6, MEMORY[0x29EDC9E90]);
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

uint64_t (*sub_29D4C75CC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED5EF30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D4C9C70;
  }

  __break(1u);
  return result;
}

void (*sub_29D4C764C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED5EF30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D4C76CC;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C76D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_29D5B485C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x29EDCA190];
  }

  v4 = v3;
  v5 = sub_29D5173F0(v3, 0);
  sub_29D4C7918(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D4C7768(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D5B485C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D5B485C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D4C9A80();
          sub_29D4C8844(&unk_2A17A3F90, 255, sub_29D4C9A80);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D4C75CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D48F51C(0, &qword_2A17A3F80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C7918(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D5B485C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D5B485C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D4C95C4();
          sub_29D4C8844(&qword_2A17A3EC8, 255, sub_29D4C95C4);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D4C75CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D48F51C(0, &qword_2A17A3E90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4C7AC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D5B485C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D5B485C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D4C97BC();
          sub_29D4C8844(&qword_2A17A3F10, 255, sub_29D4C97BC);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D4C75CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D48F51C(0, &qword_2A1A16320);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D4C7CA0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x29ED5EE50](a1, a2, v7);
      sub_29D48F51C(0, &qword_2A1A16370);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_29D48F51C(0, &qword_2A1A16370);
    if (sub_29D5B483C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_29D5B484C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_29D5B464C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_29D5B465C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_29D4C7EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D4A0410(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D497868(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29D4C7F5C(uint64_t a1, void *a2)
{
  v3 = sub_29D5B198C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - v8;
  sub_29D5B18FC();
  swift_allocObject();
  sub_29D5B18EC();
  sub_29D5B18DC();
  (*(v4 + 16))(v7, v9, v3);
  v10 = (*(v4 + 88))(v7, v3);
  if (v10 == *MEMORY[0x29EDC3E50])
  {
    goto LABEL_2;
  }

  if (v10 == *MEMORY[0x29EDC3E30])
  {
    (*(v4 + 96))(v7, v3);
    v11 = sub_29D5B0EDC();
    (*(*(v11 - 8) + 8))(v7, v11);
    goto LABEL_5;
  }

  if (v10 == *MEMORY[0x29EDC3E38])
  {
LABEL_2:
    (*(v4 + 8))(v7, v3);
LABEL_5:
    sub_29D499EC0(a2, a2[3]);
    sub_29D5B2D8C();

    return (*(v4 + 8))(v9, v3);
  }

  if (v10 == *MEMORY[0x29EDC3E60])
  {
    (*(v4 + 8))(v9, v3);

    (*(v4 + 96))(v7, v3);
    sub_29D4C8544();

LABEL_10:
    v13 = sub_29D5B0EDC();
    return (*(*(v13 - 8) + 8))(v7, v13);
  }

  if (v10 == *MEMORY[0x29EDC3E68] || v10 == *MEMORY[0x29EDC3E40] || v10 == *MEMORY[0x29EDC3E78])
  {
    v14 = *(v4 + 8);
    v14(v9, v3);

    return (v14)(v7, v3);
  }

  if (v10 == *MEMORY[0x29EDC3E70])
  {
    (*(v4 + 8))(v9, v3);

    (*(v4 + 96))(v7, v3);

    sub_29D4C8690();
    v16 = *(v15 + 48);
    v17 = sub_29D5B0EDC();
    return (*(*(v17 - 8) + 8))(v7 + v16, v17);
  }

  if (v10 == *MEMORY[0x29EDC3E58])
  {
    (*(v4 + 8))(v9, v3);

    (*(v4 + 96))(v7, v3);

    sub_29D4C85DC();
    return sub_29D4C909C(v7 + *(v18 + 48), &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  if (v10 == *MEMORY[0x29EDC3E88])
  {
    (*(v4 + 8))(v9, v3);

    (*(v4 + 96))(v7, v3);
    goto LABEL_10;
  }

  if (v10 == *MEMORY[0x29EDC3E80] || v10 == *MEMORY[0x29EDC3E90])
  {
    (*(v4 + 8))(v9, v3);

    (*(v4 + 96))(v7, v3);
    v13 = sub_29D5B0D5C();
    return (*(*(v13 - 8) + 8))(v7, v13);
  }

  if (v10 == *MEMORY[0x29EDC3E48])
  {
    (*(v4 + 8))(v9, v3);
  }

  v19 = *MEMORY[0x29EDC3E98];
  v20 = v10;
  sub_29D499EC0(a2, a2[3]);
  sub_29D5B2D8C();

  v14 = *(v4 + 8);
  result = (v14)(v9, v3);
  if (v20 != v19)
  {
    return (v14)(v7, v3);
  }

  return result;
}