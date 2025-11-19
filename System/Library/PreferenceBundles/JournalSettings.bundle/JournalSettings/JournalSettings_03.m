void *sub_4A898(void *a1, uint64_t a2)
{
  v146 = a2;
  v3 = sub_8FE10();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v133 = &v124[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_8F350();
  v5 = *(v147 - 8);
  __chkstk_darwin(v147);
  v140 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_3A90(&qword_C5800);
  v7 = __chkstk_darwin(v145);
  v142 = &v124[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v124[-v9];
  v11 = sub_3A90(&qword_C57E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v124[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v144 = &v124[-v16];
  v17 = __chkstk_darwin(v15);
  v138 = &v124[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v124[-v20];
  v22 = __chkstk_darwin(v19);
  v132 = &v124[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v124[-v25];
  v27 = __chkstk_darwin(v24);
  v139 = &v124[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v124[-v30];
  __chkstk_darwin(v29);
  v33 = &v124[-v32];
  v149 = &_swiftEmptySetSingleton;
  sub_8F520();
  v34 = swift_dynamicCastClass();
  v136 = v14;
  if (!v34)
  {
LABEL_15:
    sub_8F4B0();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      return v149;
    }

    v49 = v48;
    v141 = a1;
    v50 = [v49 entry];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 id];

      if (v52)
      {
        v53 = v138;
        sub_8F330();

        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v138;
      }

      v55 = v5[7];
      v55(v53, v54, 1, v147);
      sub_4EA70(v53, v21);
    }

    else
    {
      v55 = v5[7];
      v55(v21, 1, 1, v147);
    }

    v86 = [*(v146 + 32) id];
    v139 = v49;
    if (v86)
    {
      v87 = v144;
      v88 = v86;
      sub_8F330();

      v89 = 0;
    }

    else
    {
      v89 = 1;
      v87 = v144;
    }

    v90 = v147;
    v55(v87, v89, 1, v147);
    v91 = *(v145 + 48);
    v92 = v21;
    v93 = v21;
    v94 = v142;
    sub_17DF4(v92, v142, &qword_C57E0);
    sub_17DF4(v87, &v94[v91], &qword_C57E0);
    v95 = v5[6];
    if (v95(v94, 1, v90) == 1)
    {
      sub_8EF0(v87, &qword_C57E0);
      sub_8EF0(v93, &qword_C57E0);
      if (v95(&v94[v91], 1, v147) == 1)
      {
        sub_8EF0(v94, &qword_C57E0);
        goto LABEL_39;
      }
    }

    else
    {
      v143 = v93;
      v96 = v136;
      sub_17DF4(v94, v136, &qword_C57E0);
      if (v95(&v94[v91], 1, v147) != 1)
      {
        v97 = v140;
        v98 = v147;
        (v5[4])(v140, &v94[v91], v147);
        sub_4EA28(&qword_C5808, &type metadata accessor for UUID);
        v99 = sub_904D0();
        v100 = v5[1];
        v100(v97, v98);
        sub_8EF0(v144, &qword_C57E0);
        sub_8EF0(v143, &qword_C57E0);
        v100(v96, v98);
        sub_8EF0(v94, &qword_C57E0);
        if (v99)
        {
LABEL_39:
          v101 = [v139 assetType];
          if (v101)
          {
            v102 = v101;
            v103 = sub_90590();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          v107 = v134;
          v106 = v135;
          v108 = v133;
          (*(v134 + 104))(v133, enum case for AssetType.reflection(_:), v135);
          v109 = sub_8FE00();
          v111 = v110;
          (*(v107 + 8))(v108, v106);
          if (v105)
          {
            if (v103 == v109 && v105 == v111)
            {

LABEL_48:
              v113 = 4;
LABEL_50:
              sub_6B7EC(&v148, v113);
              goto LABEL_51;
            }

            v112 = sub_910F0();

            if (v112)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v113 = 1;
          goto LABEL_50;
        }

LABEL_51:

        return v149;
      }

      sub_8EF0(v144, &qword_C57E0);
      sub_8EF0(v143, &qword_C57E0);
      (v5[1])(v96, v147);
    }

    sub_8EF0(v94, &qword_C5800);
    goto LABEL_51;
  }

  v35 = v34;
  v130 = v26;
  v131 = a1;
  v137 = a1;
  v36 = [v35 id];
  if (v36)
  {
    v37 = v36;
    sub_8F330();

    v38 = v5[7];
    v38(v33, 0, 1, v147);
  }

  else
  {
    v38 = v5[7];
    v38(v33, 1, 1, v147);
  }

  v39 = [*(v146 + 32) id];
  v143 = v21;
  if (v39)
  {
    v40 = v39;
    sub_8F330();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v147;
  v129 = (v5 + 7);
  v38(v31, v41, 1, v147);
  v43 = v5;
  v44 = *(v145 + 48);
  sub_17DF4(v33, v10, &qword_C57E0);
  sub_17DF4(v31, &v10[v44], &qword_C57E0);
  v141 = v43;
  v45 = v42;
  v46 = v43[6];
  if (v46(v10, 1, v45) != 1)
  {
    v47 = v139;
    sub_17DF4(v10, v139, &qword_C57E0);
    if (v46(&v10[v44], 1, v147) != 1)
    {
      v126 = v46;
      v127 = v38;
      v56 = v141;
      v57 = *(v141 + 4);
      v128 = v35;
      v58 = v140;
      v59 = v147;
      v57(v140, &v10[v44], v147);
      sub_4EA28(&qword_C5808, &type metadata accessor for UUID);
      v60 = v47;
      v125 = sub_904D0();
      v61 = v56[1];
      v62 = v58;
      v35 = v128;
      v61(v62, v59);
      sub_8EF0(v31, &qword_C57E0);
      sub_8EF0(v33, &qword_C57E0);
      v61(v60, v59);
      sub_8EF0(v10, &qword_C57E0);
      if (v125)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_8EF0(v31, &qword_C57E0);
    sub_8EF0(v33, &qword_C57E0);
    (*(v141 + 1))(v47, v147);
LABEL_13:
    sub_8EF0(v10, &qword_C5800);
LABEL_14:

    v5 = v141;
    v21 = v143;
    a1 = v131;
    goto LABEL_15;
  }

  sub_8EF0(v31, &qword_C57E0);
  sub_8EF0(v33, &qword_C57E0);
  if (v46(&v10[v44], 1, v147) != 1)
  {
    goto LABEL_13;
  }

  v126 = v46;
  v127 = v38;
  sub_8EF0(v10, &qword_C57E0);
LABEL_21:
  sub_4B7C8(v35);

  v64 = sub_4CB90(v63, &_swiftEmptySetSingleton);
  sub_4CC6C(v35);

  v149 = sub_4CB90(v65, v64);
  if (qword_C39A8 != -1)
  {
    swift_once();
  }

  v66 = sub_900D0();
  sub_7FF0(v66, qword_C6788);
  v67 = v137;

  v68 = sub_900B0();
  v69 = sub_90A60();

  if (os_log_type_enabled(v68, v69))
  {
    LODWORD(v146) = v69;
    v70 = swift_slowAlloc();
    v128 = v35;
    v71 = v70;
    v145 = swift_slowAlloc();
    v148 = v145;
    *v71 = 136315650;
    sub_4E96C();
    v72 = sub_90900();
    v74 = v73;

    v75 = sub_76D20(v72, v74, &v148);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    v76 = sub_90900();
    v78 = v77;

    v79 = sub_76D20(v76, v78, &v148);

    *(v71 + 14) = v79;
    *(v71 + 22) = 2080;
    v80 = [v128 id];
    v81 = v67;
    if (v80)
    {
      v82 = v132;
      v83 = v80;
      sub_8F330();

      v84 = 0;
      v85 = v141;
    }

    else
    {
      v84 = 1;
      v85 = v141;
      v82 = v132;
    }

    v115 = v147;
    v127(v82, v84, 1, v147);
    v116 = v130;
    sub_4EA70(v82, v130);
    if (v126(v116, 1, v115))
    {
      sub_8EF0(v116, &qword_C57E0);
      v117 = 0xE300000000000000;
      v118 = 7104878;
    }

    else
    {
      v119 = v140;
      v120 = v147;
      v85[2](v140, v116, v147);
      sub_8EF0(v116, &qword_C57E0);
      v121 = sub_8F300();
      v117 = v122;
      (v85[1])(v119, v120);
      v118 = v121;
    }

    v123 = sub_76D20(v118, v117, &v148);

    *(v71 + 24) = v123;
    _os_log_impl(&dword_0, v68, v146, "Tracked %s CoreData changes and %s inspected changes to entry with ID %s", v71, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v149;
}

void sub_4B7C8(void *a1)
{
  v2 = sub_3A90(&qword_C67D8);
  __chkstk_darwin(v2 - 8);
  v168 = &v146 - v3;
  v4 = sub_3A90(&qword_C67C8);
  __chkstk_darwin(v4 - 8);
  v172 = &v146 - v5;
  v6 = sub_3A90(&qword_C4808);
  __chkstk_darwin(v6 - 8);
  v171 = &v146 - v7;
  v170 = sub_8F2F0();
  v177 = *(v170 - 8);
  v8 = __chkstk_darwin(v170);
  v167 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v146 - v10;
  v12 = sub_8F4D0();
  v176 = *(v12 - 8);
  __chkstk_darwin(v12);
  v178 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_8F350();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v173 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A90(&qword_C5800);
  __chkstk_darwin(v17);
  v19 = &v146 - v18;
  v20 = sub_3A90(&qword_C57E0);
  v21 = __chkstk_darwin(v20 - 8);
  v166 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v165 = &v146 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v146 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v146 - v29;
  __chkstk_darwin(v28);
  v32 = &v146 - v31;
  v179 = a1;
  v33 = [a1 id];
  if (v33)
  {
    v34 = v33;
    sub_8F330();

    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 0;
  }

  else
  {
    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 1;
  }

  v180 = v35;
  v35(v36, v37, 1, v14);
  v175 = *(v181 + 32);
  v38 = [v175 id];
  v182 = v14;
  v169 = v11;
  if (v38)
  {
    v39 = v38;
    sub_8F330();

    v14 = v182;
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v164 = v15 + 56;
  v180(v30, v40, 1, v14);
  v41 = *(v17 + 48);
  sub_17DF4(v32, v19, &qword_C57E0);
  v42 = v182;
  sub_17DF4(v30, &v19[v41], &qword_C57E0);
  v43 = *(v15 + 48);
  if (v43(v19, 1, v42) != 1)
  {
    sub_17DF4(v19, v27, &qword_C57E0);
    if (v43(&v19[v41], 1, v42) != 1)
    {
      v174 = v43;
      v161 = v15 + 48;
      v45 = &v19[v41];
      v46 = v173;
      (*(v15 + 32))(v173, v45, v42);
      sub_4EA28(&qword_C5808, &type metadata accessor for UUID);
      LODWORD(v163) = sub_904D0();
      v162 = v12;
      v47 = *(v15 + 8);
      v47(v46, v42);
      sub_8EF0(v30, &qword_C57E0);
      sub_8EF0(v32, &qword_C57E0);
      v47(v27, v42);
      v12 = v162;
      v44 = v179;
      sub_8EF0(v19, &qword_C57E0);
      if ((v163 & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    sub_8EF0(v30, &qword_C57E0);
    sub_8EF0(v32, &qword_C57E0);
    (*(v15 + 8))(v27, v42);
LABEL_12:
    sub_8EF0(v19, &qword_C5800);
    return;
  }

  v174 = v43;
  sub_8EF0(v30, &qword_C57E0);
  sub_8EF0(v32, &qword_C57E0);
  if (v174(&v19[v41], 1, v182) != 1)
  {
    goto LABEL_12;
  }

  v161 = v15 + 48;
  sub_8EF0(v19, &qword_C57E0);
  v44 = v179;
LABEL_15:
  v48 = [v44 changedValuesForCurrentEvent];
  v49 = sub_90450();

  sub_48428(v49);
  v51 = v50;
  v149 = 0;

  v52 = sub_4F080(v51);

  v54 = 0;
  v55 = v52 + 56;
  v56 = 1 << *(v52 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v52 + 56);
  v185 = &_swiftEmptySetSingleton;
  v59 = (v56 + 63) >> 6;
  v163 = (v176 + 13);
  v160 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_prompts;
  ++v176;
  v151 = (v15 + 16);
  v159 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_dateSource;
  v150 = (v15 + 8);
  v156 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_date;
  v158 = v184;
  v155 = v177 + 4;
  v60 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v157 = (v177 + 7);
  v154 = (v177 + 6);
  v177 += 5;
  *&v53 = 136315138;
  v152 = v53;
  while (v58)
  {
LABEL_23:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = *(*(v52 + 48) + (v62 | (v54 << 6)));
    if (v63 > 6)
    {
      if (v63 > 9)
      {
        if ((v63 - 11) >= 2)
        {
          v66 = v178;
          (*v163)(v178, v60, v12);
          v67 = sub_8F4C0();
          (*v176)(v66, v12);
          if (v67)
          {
            v68 = v179;
            v69 = [v179 mergeableAttributes];
            if (v69)
            {
              v70 = v69;
              v71 = v168;
              sub_8FD80();

              v72 = sub_8FA20();
              (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
              sub_8EF0(v71, &qword_C67D8);
              v73 = sub_4D650(v68);
              if (v73)
              {
                v185 = sub_4CB90(v73, v185);
              }
            }

            else
            {
              v153 = v60;
              v127 = sub_8FA20();
              v128 = v168;
              (*(*(v127 - 8) + 56))(v168, 1, 1, v127);
              sub_8EF0(v128, &qword_C67D8);
              if (qword_C39A8 != -1)
              {
                swift_once();
              }

              v129 = sub_900D0();
              sub_7FF0(v129, qword_C6788);
              v130 = v179;
              v131 = sub_900B0();
              v132 = sub_90A70();

              if (os_log_type_enabled(v131, v132))
              {
                v133 = swift_slowAlloc();
                v147 = swift_slowAlloc();
                aBlock[0] = v147;
                *v133 = v152;
                v134 = [v130 id];
                LODWORD(v162) = v132;
                v148 = v133;
                if (v134)
                {
                  v135 = v166;
                  v136 = v134;
                  sub_8F330();

                  v137 = 0;
                }

                else
                {
                  v137 = 1;
                  v135 = v166;
                }

                v138 = v182;
                v180(v135, v137, 1, v182);
                v139 = v165;
                sub_4EA70(v135, v165);
                if (v174(v139, 1, v138))
                {
                  sub_8EF0(v139, &qword_C57E0);
                  v140 = 0xE700000000000000;
                  v141 = 0x6E776F6E6B6E55;
                }

                else
                {
                  v142 = v173;
                  (*v151)(v173, v139, v138);
                  sub_8EF0(v139, &qword_C57E0);
                  v146 = sub_8F300();
                  v140 = v143;
                  (*v150)(v142, v138);
                  v141 = v146;
                }

                v144 = sub_76D20(v141, v140, aBlock);

                v145 = v148;
                *(v148 + 1) = v144;
                _os_log_impl(&dword_0, v131, v162, "mergeableAttributes changed to nil value for entry %s. This implies an incorrect assignment rather than a merge operation somewhere.", v145, 0xCu);
                sub_7FA4(v147);
              }

LABEL_56:
              v60 = v153;
            }
          }
        }
      }

      else if (v63 == 7)
      {
        v94 = [v175 dateSource];
        if (v94)
        {
          v162 = v12;
          v95 = v52;
          v96 = v60;
          v97 = v94;
          sub_90590();

          v60 = v96;
          v52 = v95;
          v12 = v162;
        }

        v115 = v172;
        sub_8F600();
        v116 = v181;
        v117 = v159;
        swift_beginAccess();
        sub_4EAE0(v115, v116 + v117);
        swift_endAccess();
        sub_6B7EC(aBlock, 3);
      }

      else
      {
        if (v63 != 8)
        {
          v153 = v60;
          v98 = [v175 prompt];
          v99 = v12;
          if (v98)
          {
            v100 = v98;
            v101 = sub_8F030();
            v103 = v102;

            v104 = sub_8F000();
            sub_17DA0(v101, v103);
          }

          else
          {
            v104 = 0;
          }

          v118 = v181;
          v119 = *(v181 + v160);
          *(v181 + v160) = v104;
          v120 = v104;

          v121 = *(v118 + 24);
          v122 = swift_allocObject();
          swift_weakInit();
          v184[2] = sub_4F12C;
          v184[3] = v122;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v184[0] = sub_7E2E8;
          v184[1] = &unk_B50D8;
          v123 = _Block_copy(aBlock);

          [v121 performBlock:v123];
          _Block_release(v123);

          sub_6B7EC(aBlock, 6);
          v12 = v99;
          goto LABEL_56;
        }

        sub_6B7EC(aBlock, 7);
      }
    }

    else if (v63 > 2)
    {
      if ((v63 - 5) >= 2)
      {
        if (v63 == 3)
        {
          v74 = v178;
          (*v163)(v178, v60, v12);
          v75 = sub_8F4C0();
          (*v176)(v74, v12);
          if ((v75 & 1) == 0)
          {
            v76 = [v179 title];
            if (v76)
            {
              v77 = v76;
              v78 = sub_8F030();
              v79 = v60;
              v81 = v80;

              v82 = sub_8F000();
              v83 = v81;
              v60 = v79;
              sub_17DA0(v78, v83);
            }

            else
            {
              v82 = 0;
            }

            sub_670D0(v82);

            sub_6B7EC(aBlock, 2);
          }
        }

        else
        {
          v162 = v12;
          v105 = [v175 entryDate];
          if (v105)
          {
            v106 = v167;
            v107 = v105;
            sub_8F2B0();

            v153 = v60;
            v108 = *v155;
            v109 = v171;
            v110 = v106;
            v111 = v170;
            (*v155)(v171, v110, v170);
            (*v157)(v109, 0, 1, v111);
            v112 = v169;
            v113 = v109;
            v114 = v111;
            v108(v169, v113, v111);
            v60 = v153;
          }

          else
          {
            v124 = v171;
            v114 = v170;
            (*v157)(v171, 1, 1, v170);
            v112 = v169;
            sub_8F2E0();
            if ((*v154)(v124, 1, v114) != 1)
            {
              sub_8EF0(v171, &qword_C4808);
            }
          }

          v125 = v181;
          v126 = v156;
          swift_beginAccess();
          (*v177)(v125 + v126, v112, v114);
          swift_endAccess();
          sub_6B7EC(aBlock, 3);
          v12 = v162;
        }
      }

      else
      {
        sub_6B7EC(aBlock, 8);
      }
    }

    else if (v63)
    {
      if (v63 == 1)
      {
        v64 = v178;
        (*v163)(v178, v60, v12);
        v65 = sub_8F4C0();
        (*v176)(v64, v12);
        if ((v65 & 1) == 0)
        {
          sub_6B7EC(aBlock, 1);
        }
      }
    }

    else
    {
      v84 = v178;
      (*v163)(v178, v60, v12);
      v85 = sub_8F4C0();
      (*v176)(v84, v12);
      if ((v85 & 1) == 0)
      {
        v86 = [v179 text];
        if (v86)
        {
          v87 = v86;
          v88 = sub_8F030();
          v89 = v60;
          v91 = v90;

          v92 = sub_8F000();
          v93 = v91;
          v60 = v89;
          sub_17DA0(v88, v93);
        }

        else
        {
          v92 = 0;
        }

        sub_67868(v92);

        sub_6B7EC(aBlock, 0);
      }
    }
  }

  while (1)
  {
    v61 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v61 >= v59)
    {

      return;
    }

    v58 = *(v55 + 8 * v61);
    ++v54;
    if (v58)
    {
      v54 = v61;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_4CB90(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_6B7EC(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_4CC6C(void *a1)
{
  v3 = sub_8F4D0();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v75 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C67C8);
  __chkstk_darwin(v5 - 8);
  v68 = &v67 - v6;
  v74 = sub_8F2F0();
  v72 = *(v74 - 8);
  v7 = __chkstk_darwin(v74);
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v67 - v10;
  __chkstk_darwin(v9);
  v73 = &v67 - v11;
  v12 = sub_8F350();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v71 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C5800);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = sub_3A90(&qword_C57E0);
  v19 = __chkstk_darwin(v18 - 8);
  v80 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v67 - v22;
  __chkstk_darwin(v21);
  v25 = &v67 - v24;
  v78 = a1;
  v26 = [a1 id];
  if (v26)
  {
    v27 = v26;
    sub_8F330();

    v28 = *(v13 + 56);
    v28(v25, 0, 1, v12);
  }

  else
  {
    v28 = *(v13 + 56);
    v28(v25, 1, 1, v12);
  }

  v67 = *(v1 + 32);
  v29 = [v67 id];
  v79 = v1;
  if (v29)
  {
    v30 = v29;
    sub_8F330();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v28(v23, v31, 1, v12);
  v32 = *(v15 + 48);
  sub_17DF4(v25, v17, &qword_C57E0);
  sub_17DF4(v23, &v17[v32], &qword_C57E0);
  v33 = *(v13 + 48);
  if (v33(v17, 1, v12) == 1)
  {
    sub_8EF0(v23, &qword_C57E0);
    sub_8EF0(v25, &qword_C57E0);
    if (v33(&v17[v32], 1, v12) == 1)
    {
      sub_8EF0(v17, &qword_C57E0);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v34 = v80;
  sub_17DF4(v17, v80, &qword_C57E0);
  if (v33(&v17[v32], 1, v12) == 1)
  {
    sub_8EF0(v23, &qword_C57E0);
    sub_8EF0(v25, &qword_C57E0);
    (*(v13 + 8))(v34, v12);
LABEL_12:
    sub_8EF0(v17, &qword_C5800);
    return &_swiftEmptySetSingleton;
  }

  v36 = v71;
  (*(v13 + 32))(v71, &v17[v32], v12);
  sub_4EA28(&qword_C5808, &type metadata accessor for UUID);
  v37 = v34;
  v38 = sub_904D0();
  v39 = *(v13 + 8);
  v39(v36, v12);
  sub_8EF0(v23, &qword_C57E0);
  sub_8EF0(v25, &qword_C57E0);
  v39(v37, v12);
  sub_8EF0(v17, &qword_C57E0);
  if ((v38 & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

LABEL_15:
  v83 = &_swiftEmptySetSingleton;
  v40 = v78;
  if (([v78 isRemovedFromCloud] & 1) != 0 || objc_msgSend(v40, "isFullyRemoved"))
  {
    sub_6B7EC(v82, 9);
  }

  v41 = [v40 entryDate];
  v42 = v79;
  v44 = v73;
  v43 = v74;
  v45 = v72;
  if (v41)
  {
    v46 = v69;
    v47 = v41;
    sub_8F2B0();

    (*(v45 + 32))(v44, v46, v43);
    v48 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_date;
    swift_beginAccess();
    v49 = v70;
    (*(v45 + 16))(v70, v42 + v48, v43);
    sub_4EA28(&qword_C67D0, &type metadata accessor for Date);
    LOBYTE(v47) = sub_904D0();
    v50 = *(v45 + 8);
    v50(v49, v43);
    if ((v47 & 1) == 0)
    {
      swift_beginAccess();
      (*(v45 + 24))(v42 + v48, v44, v43);
      swift_endAccess();
      v51 = [v67 dateSource];
      if (v51)
      {
        v52 = v51;
        sub_90590();
      }

      v53 = v68;
      sub_8F600();
      v54 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_dateSource;
      swift_beginAccess();
      sub_4EAE0(v53, v42 + v54);
      swift_endAccess();
      sub_6B7EC(v81, 3);
    }

    v50(v44, v43);
  }

  v55 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_bookmarked;
  v56 = *(v42 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_bookmarked);
  if (v56 != [v40 flagged])
  {
    v57 = [v40 flagged];
    v58 = *(v42 + v55);
    *(v42 + v55) = v57;
    sub_67F50(v58);
    sub_6B7EC(v81, 7);
  }

  v60 = v75;
  v59 = v76;
  v61 = v77;
  (*(v76 + 104))(v75, enum case for JournalFeatureFlags.enhancedSync(_:), v77);
  v62 = sub_8F4C0();
  (*(v59 + 8))(v60, v61);
  if ((v62 & 1) == 0)
  {
    v63 = sub_4DBDC();
    v64 = sub_4DFD8(v63);

    if (v64)
    {
      sub_6B7EC(v81, 0);
    }
  }

  v65 = sub_4D650(v40);
  v35 = v83;
  if (v65)
  {
    return sub_4CB90(v65, v83);
  }

  return v35;
}

id sub_4D650(void *a1)
{
  v2 = v1;
  v4 = sub_8FD70();
  v44 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v39 - v7;
  v8 = sub_3A90(&qword_C67D8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = sub_8FA20();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v41 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v39 - v22;
  __chkstk_darwin(v21);
  v25 = &v39 - v24;
  result = [a1 mergeableAttributes];
  if (result)
  {
    v27 = result;
    v39 = v4;
    sub_8FD80();

    v28 = v2;
    v29 = *(v15 + 32);
    v29(v25, v23, v14);
    v30 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v45 = v28;
    sub_17DF4(v28 + v30, v13, &qword_C67D8);
    v40 = *(v15 + 48);
    if (v40(v13, 1, v14) == 1)
    {
      sub_8EF0(v13, &qword_C67D8);
    }

    else
    {
      v29(v20, v13, v14);
      sub_4EA28(&qword_C67E8, &type metadata accessor for MergeableEntryAttributes);
      v31 = sub_90390();
      v32 = *(v15 + 8);
      v32(v20, v14);
      if ((v31 & 1) == 0)
      {
        v32(v25, v14);
        return 0;
      }
    }

    v47 = &_swiftEmptySetSingleton;
    v33 = v45;
    if (sub_658F0(v25))
    {
      sub_6B7EC(&v46, 11);
    }

    if (sub_65920(v25))
    {
      sub_6B7EC(&v46, 12);
    }

    sub_17DF4(v33 + v30, v11, &qword_C67D8);
    if (v40(v11, 1, v14))
    {
      sub_8EF0(v11, &qword_C67D8);
    }

    else
    {
      v34 = v41;
      (*(v15 + 16))(v41, v11, v14);
      sub_8EF0(v11, &qword_C67D8);
      v35 = v42;
      sub_8F9A0();
      (*(v15 + 8))(v34, v14);
      v36 = v43;
      sub_8F9A0();
      sub_4EA28(&qword_C67E0, &type metadata accessor for MergeableEntryAssetsPlacement);
      v37 = v39;
      LOBYTE(v34) = sub_90390();
      v38 = *(v44 + 8);
      v38(v36, v37);
      v38(v35, v37);
      if (v34)
      {
        sub_6B7EC(&v46, 1);
      }
    }

    sub_65C94(v25);
    (*(v15 + 8))(v25, v14);
    return v47;
  }

  return result;
}

id sub_4DBDC()
{
  v1 = v0;
  v2 = sub_3A90(&qword_C67F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-1] - v4;
  v6 = sub_3A90(&qword_C6808);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-1] - v7;
  v9 = sub_8F4D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
  v13 = sub_8F4C0();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_8F510();
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_8EF0(v8, &qword_C6808);
      return 0;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_8EF0(v8, &qword_C6808);
      v20 = [objc_allocWithZone(UITraitCollection) init];
      v21 = type metadata accessor for CustomAttributeProviderConcrete();
      v22 = sub_4EA28(&qword_C5490, type metadata accessor for CustomAttributeProviderConcrete);
      v27[3] = v21;
      v27[4] = v22;
      v23 = sub_4F01C(v27);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      sub_900C0();
      *v23 = v24;
      sub_4EA28(&qword_C6800, &type metadata accessor for MergeableTextAttributeScope);
      v25 = sub_90350();

      (*(v3 + 8))(v5, v2);
      sub_7FA4(v27);
      return v25;
    }
  }

  else
  {
    result = [v1 text];
    if (result)
    {
      v15 = result;
      v16 = sub_8F030();
      v18 = v17;

      v19 = sub_8F000();
      sub_17DA0(v16, v18);
      return v19;
    }
  }

  return result;
}

uint64_t sub_4DFD8(void *a1)
{
  v3 = [objc_allocWithZone(UITraitCollection) init];
  type metadata accessor for CustomAttributeProviderConcrete();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_900C0();
  v5 = sub_4EB50(v3, v4, v1);

  v6 = &stru_BB000;
  v7 = &stru_BB000;
  v8 = &stru_BB000;
  v9 = &stru_BB000;
  v10 = &unk_98000;
  if (!v5)
  {
    if (!a1)
    {
      v40 = 0;
      return v40 & 1;
    }

    v23 = 0;
    goto LABEL_10;
  }

  v11 = v5;
  v12 = [v11 string];
  if (!v12)
  {
    sub_90590();
    v12 = sub_90550();
  }

  v13 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v12];

  v14 = [objc_opt_self() labelColor];
  v15 = [objc_opt_self() systemFontOfSize:0.0];
  result = [v11 length];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = result;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = 0;
  v18[5] = 0;
  v18[6] = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_4F394;
  *(v19 + 24) = v18;
  v45 = sub_4F390;
  v46 = v19;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_487C4;
  v44 = &unk_B5088;
  v20 = _Block_copy(&v41);
  v21 = v15;
  v22 = v14;
  v23 = v13;

  [v11 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v20}];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!a1)
  {

    goto LABEL_18;
  }

  v10 = &unk_98000;
  v9 = &stru_BB000;
  v8 = &stru_BB000;
  v7 = &stru_BB000;
  v6 = &stru_BB000;
LABEL_10:
  v25 = a1;
  v26 = [v25 v6[105].type];
  if (!v26)
  {
    sub_90590();
    v26 = sub_90550();
  }

  v27 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v26];

  v28 = [objc_opt_self() v7[74].offs];
  v29 = [objc_opt_self() v8[106].offs];
  result = [v25 v9[106].name];
  if (result < 0)
  {
    goto LABEL_23;
  }

  v30 = result;
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = 0;
  v31[5] = 0;
  v31[6] = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_4EF68;
  *(v32 + 24) = v31;
  v45 = sub_4EF7C;
  v46 = v32;
  v41 = _NSConcreteStackBlock;
  v42 = v10[225];
  v43 = sub_487C4;
  v44 = &unk_B5010;
  v33 = _Block_copy(&v41);
  v34 = v29;
  v35 = v28;
  v36 = v27;

  [v25 enumerateAttributesInRange:0 options:v30 usingBlock:{0, v33}];

  _Block_release(v33);
  v37 = swift_isEscapingClosureAtFileLocation();

  if ((v37 & 1) == 0)
  {
    if (v23)
    {
      sub_2561C(0, &qword_C67F0);
      v38 = v23;
      v39 = sub_90CB0();

      v40 = v39 ^ 1;
      return v40 & 1;
    }

LABEL_18:
    v40 = 1;
    return v40 & 1;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_4E570(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x64724F7465737361;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7461447972746E65;
      break;
    case 5:
      result = 0x6449656C646E7562;
      break;
    case 6:
      result = 0x6144656C646E7562;
      break;
    case 7:
      result = 0x72756F5365746164;
      break;
    case 8:
      result = 0x64656767616C66;
      break;
    case 9:
      result = 0x74706D6F7270;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_4E71C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_4E570(*a1);
  v5 = v4;
  if (v3 == sub_4E570(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_910F0();
  }

  return v8 & 1;
}

Swift::Int sub_4E7A4()
{
  v1 = *v0;
  sub_91180();
  sub_4E570(v1);
  sub_90630();

  return sub_911D0();
}

uint64_t sub_4E808()
{
  sub_4E570(*v0);
  sub_90630();
}

Swift::Int sub_4E85C()
{
  v1 = *v0;
  sub_91180();
  sub_4E570(v1);
  sub_90630();

  return sub_911D0();
}

uint64_t sub_4E8BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4F188(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_4E8EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_4E570(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_4E96C()
{
  result = qword_C67A0;
  if (!qword_C67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C67A0);
  }

  return result;
}

unint64_t sub_4E9C0()
{
  result = qword_C67B8;
  if (!qword_C67B8)
  {
    sub_2561C(255, &qword_C67B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C67B8);
  }

  return result;
}

uint64_t sub_4EA28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4EA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C57E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4EAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C67C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_4EB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_8FA20();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3A90(&qword_C67D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_3A90(&qword_C67F8);
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = sub_8F4D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for CustomAttributeProviderConcrete();
  v27[4] = sub_4EA28(&qword_C5490, type metadata accessor for CustomAttributeProviderConcrete);
  v27[0] = a2;
  (*(v15 + 104))(v17, enum case for JournalFeatureFlags.enhancedSync(_:), v14);

  LOBYTE(a2) = sub_8F4C0();
  (*(v15 + 8))(v17, v14);
  if (a2)
  {
    v18 = OBJC_IVAR____TtC15JournalSettings14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_17DF4(a3 + v18, v10, &qword_C67D8);
    v19 = v26;
    if ((*(v26 + 48))(v10, 1, v5))
    {
      sub_8EF0(v10, &qword_C67D8);
      v20 = 0;
    }

    else
    {
      (*(v19 + 16))(v7, v10, v5);
      sub_8EF0(v10, &qword_C67D8);
      sub_8F9C0();
      (*(v19 + 8))(v7, v5);
      sub_4EA28(&qword_C6800, &type metadata accessor for MergeableTextAttributeScope);
      v20 = sub_90350();
      (*(v24 + 8))(v13, v11);
    }
  }

  else
  {
    v20 = *(a3 + OBJC_IVAR____TtC15JournalSettings14EntryViewModel_attributedText);
    v21 = v20;
  }

  sub_7FA4(v27);
  return v20;
}

uint64_t sub_4EFA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4EFBC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t *sub_4F01C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_4F080(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_4F134();
  result = sub_90910();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_6B8E4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_4F0F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_4F134()
{
  result = qword_C6810;
  if (!qword_C6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6810);
  }

  return result;
}

uint64_t sub_4F188(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B3368;
  v6._object = a2;
  v4 = sub_90FF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_4F1D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntryViewModel.EntryProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntryViewModel.EntryProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_4F334()
{
  result = qword_C6818;
  if (!qword_C6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6818);
  }

  return result;
}

id sub_4F3B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflectionAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReflectionAsset()
{
  result = qword_C6848;
  if (!qword_C6848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_4F4C0()
{
  v1 = v0;
  v2 = sub_8F390();
  __chkstk_darwin(v2 - 8);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4808);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_8FFF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A90(&qword_C4AA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_8F980();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11F14(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_8EF0(v15, &qword_C4AA8);
    return 0;
  }

  v49 = v8;
  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_8F970();
  if (v21 >> 60 == 15 || (v22 = v20, v23 = v21, v24 = sub_8F000(), sub_41B24(v22, v23), !v24))
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  v25 = [v24 string];

  v48 = sub_90590();
  v27 = v26;

  sub_8FF70();
  v28 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v30 = [v28 initWithContentType:isa];

  (*(v10 + 8))(v12, v9);
  v31 = v30;
  sub_5729C(v48, v27, 0, 0);

  v32 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v32)
  {
    v33 = [v32 entry];
    v34 = v49;
    if (v33)
    {
      v35 = v33;
      sub_8F500();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v36 = 1;
    v34 = v49;
  }

  v38 = sub_8F2F0();
  (*(*(v38 - 8) + 56))(v34, v36, 1, v38);
  sub_904E0();
  sub_8F380();
  v39 = sub_905C0();
  v41 = v40;
  sub_3A90(&qword_C4840);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_98740;
  v43 = sub_577BC(v39, v41, v34);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_90730().super.isa;

  [v31 setAlternateNames:v46];

  sub_8EF0(v34, &qword_C4808);
  (*(v17 + 8))(v19, v16);
  return v31;
}

uint64_t sub_4FAD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_8F980();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_4FB18(double *a1)
{
  v166 = a1;
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_90540();
  __chkstk_darwin(v3 - 8);
  v139 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_3A90(&qword_C6910);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v127 - v5;
  v133 = sub_3A90(&qword_C6918);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v127 - v6;
  v136 = sub_3A90(&qword_C6920);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v127 - v7;
  v129 = sub_8FFF0();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8F2F0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v142 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v127 - v14;
  v16 = __chkstk_darwin(v13);
  v141 = &v127 - v17;
  __chkstk_darwin(v16);
  v19 = &v127 - v18;
  v165 = sub_8F810();
  v20 = *(v165 - 8);
  __chkstk_darwin(v165);
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3A90(&qword_C4808);
  v24 = __chkstk_darwin(v23 - 8);
  v147 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v127 - v27;
  v29 = __chkstk_darwin(v26);
  v146 = &v127 - v30;
  v31 = __chkstk_darwin(v29);
  v161 = &v127 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v127 - v34;
  __chkstk_darwin(v33);
  v36 = *(v10 + 56);
  v149 = &v127 - v37;
  v36();
  v150 = v35;
  v167 = v9;
  v151 = v36;
  v152 = v10 + 56;
  (v36)(v35, 1, 1, v9);
  v38 = *(v166 + 2);
  if (v38)
  {
    v145 = v15;
    v39 = *(v20 + 16);
    v40 = v20 + 16;
    v41 = v166 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v156 = (v10 + 32);
    v157 = v39;
    v143 = (v10 + 8);
    v42 = _swiftEmptyArrayStorage;
    v43 = *(v40 + 56);
    v159 = v28;
    v160 = v40;
    v154 = (v40 - 8);
    v155 = v43;
    v44 = &unk_99710;
    v153 = _swiftEmptyArrayStorage;
    v45 = v19;
    v144 = v19;
    v158 = v22;
    v164 = (v10 + 48);
    v39(v22, v41, v165);
    while (1)
    {
      v46 = sub_8F800();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_174F0(0, *(v42 + 2) + 1, 1, v42);
        }

        v51 = *(v42 + 2);
        v50 = *(v42 + 3);
        if (v51 >= v50 >> 1)
        {
          v42 = sub_174F0((v50 > 1), v51 + 1, 1, v42);
        }

        *(v42 + 2) = v51 + 1;
        v52 = &v42[2 * v51];
        *(v52 + 4) = v48;
        *(v52 + 5) = v49;
      }

      v53 = sub_8F780();
      v166 = v42;
      if (v54 >> 60 != 15)
      {
        v55 = v53;
        v56 = v54;
        sub_37300();
        v57 = sub_90CA0();
        sub_41B24(v55, v56);
        if (v57)
        {
          v58 = [v57 _addressFormattedAsSinglelineAddress];
          if (v58 || (v58 = [v57 name]) != 0)
          {
            v59 = v58;
            v148 = sub_90590();
            v61 = v60;
          }

          else
          {
            v98 = sub_8F800();
            if (!v99)
            {

              goto LABEL_22;
            }

            v61 = v99;
            v148 = v98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_174F0(0, *(v153 + 2) + 1, 1, v153);
          }

          v63 = *(v153 + 2);
          v62 = *(v153 + 3);
          if (v63 >= v62 >> 1)
          {
            v153 = sub_174F0((v62 > 1), v63 + 1, 1, v153);
          }

          v64 = v153;
          *(v153 + 2) = v63 + 1;
          v65 = &v64[2 * v63];
          *(v65 + 4) = v148;
          *(v65 + 5) = v61;
        }
      }

LABEL_22:
      v66 = v161;
      sub_8F7A0();
      v67 = *v164;
      v68 = (*v164)(v66, 1, v167);
      v162 = v41;
      v163 = v38;
      if (v68 == 1)
      {
        sub_8EF0(v66, &qword_C4808);
LABEL_26:
        v42 = v166;
        v76 = v159;
        goto LABEL_31;
      }

      v69 = v66;
      v70 = *v156;
      v71 = v44;
      v72 = v167;
      (*v156)(v45, v69, v167);
      v73 = v149;
      v74 = v146;
      sub_17DF4(v149, v146, &qword_C4808);
      if (v67(v74, 1, v72) == 1)
      {
        sub_8EF0(v73, &qword_C4808);
        sub_8EF0(v74, &qword_C4808);
        v75 = v167;
        v70(v73, v45, v167);
        (v151)(v73, 0, 1, v75);
        v22 = v158;
        v44 = v71;
        v41 = v162;
        v38 = v163;
        goto LABEL_26;
      }

      v77 = v141;
      v78 = v74;
      v79 = v167;
      v70(v141, v78, v167);
      v80 = sub_8F290();
      v81 = *v143;
      (*v143)(v77, v79);
      if (v80)
      {
        v82 = v149;
        sub_8EF0(v149, &qword_C4808);
        v83 = v167;
        v70(v82, v45, v167);
        (v151)(v82, 0, 1, v83);
        v44 = &unk_99710;
        v42 = v166;
        v22 = v158;
        v76 = v159;
      }

      else
      {
        v81(v45, v167);
        v42 = v166;
        v22 = v158;
        v76 = v159;
        v44 = &unk_99710;
      }

      v41 = v162;
      v38 = v163;
LABEL_31:
      sub_8F790();
      if (v67(v76, 1, v167) == 1)
      {
        (*v154)(v22, v165);
        sub_8EF0(v76, &qword_C4808);
      }

      else
      {
        v84 = v76;
        v85 = *v156;
        v86 = v145;
        v87 = v167;
        (*v156)(v145, v84, v167);
        v88 = v150;
        v89 = v44;
        v90 = v147;
        sub_17DF4(v150, v147, &qword_C4808);
        if (v67(v90, 1, v87) == 1)
        {
          v91 = v158;
          (*v154)(v158, v165);
          sub_8EF0(v88, &qword_C4808);
          sub_8EF0(v90, &qword_C4808);
          v85(v88, v86, v87);
          (v151)(v88, 0, 1, v87);
          v45 = v144;
          v42 = v166;
          v41 = v162;
          v38 = v163;
          v22 = v91;
          v44 = v89;
        }

        else
        {
          v92 = v142;
          v85(v142, v90, v87);
          v93 = sub_8F280();
          v94 = *v143;
          (*v143)(v92, v87);
          v22 = v158;
          (*v154)(v158, v165);
          if (v93)
          {
            v95 = v150;
            sub_8EF0(v150, &qword_C4808);
            v96 = v167;
            v85(v95, v86, v167);
            v97 = v96;
            v44 = &unk_99710;
            (v151)(v95, 0, 1, v97);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
          }

          else
          {
            v94(v86, v167);
            v45 = v144;
            v42 = v166;
            v41 = v162;
            v38 = v163;
            v44 = &unk_99710;
          }
        }
      }

      v41 += v155;
      if (!--v38)
      {
        goto LABEL_41;
      }

      v157(v22, v41, v165);
    }
  }

  v42 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
LABEL_41:
  v100 = v127;
  sub_8FF20();
  v101 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v167 = [v101 initWithContentType:isa];

  (*(v128 + 8))(v100, v129);
  v168 = v42;
  v103 = v132;
  v104 = v130;
  v105 = v133;
  (*(v132 + 104))(v130, enum case for ListFormatStyle.ListType.and<A, B>(_:), v133);
  v106 = v137;
  v107 = v135;
  v108 = v138;
  (*(v137 + 104))(v135, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v138);
  sub_3A90(&qword_C4830);
  sub_236E0(&qword_C6928, &qword_C4830);
  v109 = v131;
  sub_8ECB0();
  (*(v106 + 8))(v107, v108);
  (*(v103 + 8))(v104, v105);
  sub_236E0(&qword_C6930, &qword_C6920);
  v110 = v136;
  sub_906D0();
  (*(v134 + 8))(v109, v110);

  v111 = v169;
  v112 = v170;
  v168 = v153;
  sub_236E0(&qword_C4838, &qword_C4830);
  v113 = sub_90480();
  v115 = v114;

  v116 = v167;
  sub_5729C(v111, v112, v113, v115);

  sub_904E0();
  sub_8F380();
  v117 = sub_905C0();
  v119 = v118;
  sub_3A90(&qword_C4840);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_98740;
  v121 = v149;
  v122 = sub_577BC(v117, v119, v149);
  v124 = v123;

  *(v120 + 32) = v122;
  *(v120 + 40) = v124;
  v125 = sub_90730().super.isa;

  [v116 setAlternateNames:v125];

  sub_8EF0(v150, &qword_C4808);
  sub_8EF0(v121, &qword_C4808);
  return v116;
}

uint64_t sub_50C08(uint64_t a1)
{
  v3 = sub_8FA70();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3A90(&qword_C4AD0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  sub_17DF4(a1, v32, &qword_C5418);
  v11 = v33;
  if (v33)
  {
    v12 = sub_FCAC(v32, v33);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_910D0();
    (*(v13 + 8))(v15, v11);
    sub_7FA4(v32);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for MultiPinMapAsset();
  v31.receiver = v1;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, "isEqual:", v16);
  swift_unknownObjectRelease();
  if (!v18)
  {
    goto LABEL_17;
  }

  sub_17DF4(a1, v32, &qword_C5418);
  if (!v33)
  {
    sub_8EF0(v32, &qword_C5418);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = 0;
    return v23 & 1;
  }

  v19 = v29;
  v20 = v30;
  if (!*&v1[OBJC_IVAR____TtC15JournalSettings16MultiPinMapAsset_metadata])
  {
LABEL_10:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  sub_162D8(v10);

  if ((*(v19 + 48))(v10, 1, v3))
  {
    sub_8EF0(v10, &qword_C4AD0);
    goto LABEL_10;
  }

  v25 = v28;
  (*(v19 + 16))(v28, v10, v3);
  sub_8EF0(v10, &qword_C4AD0);
  v21 = sub_8FA30();
  (*(v19 + 8))(v25, v3);
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*&v20[OBJC_IVAR____TtC15JournalSettings16MultiPinMapAsset_metadata])
  {

    sub_162D8(v8);

    if ((*(v19 + 48))(v8, 1, v3))
    {
      sub_8EF0(v8, &qword_C4AD0);
    }

    else
    {
      v26 = v28;
      (*(v19 + 16))(v28, v8, v3);
      sub_8EF0(v8, &qword_C4AD0);
      v22 = sub_8FA30();
      (*(v19 + 8))(v26, v3);
      if (v22)
      {
        goto LABEL_15;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_15:
  v23 = sub_510B4(v21, v22);

  return v23 & 1;
}

uint64_t sub_510B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_8F810();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_51EF8(&qword_C6940, &type metadata accessor for VisitAssetMetadata);
    v21 = sub_904D0();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_51350()
{
  v1 = v0;
  v2 = sub_3A90(&qword_C4AD0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  if (*(v0 + OBJC_IVAR____TtC15JournalSettings16MultiPinMapAsset_metadata))
  {

    sub_162D8(v5);

    v6 = sub_8FA70();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v3 = sub_8EF0(v5, &qword_C4AD0);
    }

    else
    {
      v7 = sub_8FA50();
      v3 = sub_8EF0(v5, &qword_C4AD0);
      if (v7 != 2 && (v7 & 1) != 0)
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_context);
  if (v8)
  {
    __chkstk_darwin(v3);
    *&v12[-16] = v1;
    v10 = v9;
    sub_3A90(&qword_C6938);
    sub_90BE0();

    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

char *sub_51520(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = sub_3A90(&qword_C4AD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - v14;
  v16 = objc_allocWithZone(type metadata accessor for MultiPinMapThumbnailCacheOperation());
  sub_113D4(v15);
  sub_51E6C(v15, v16 + qword_D0488);
  v17 = v6;

  return sub_5C308(v17, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_5162C(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v7 = sub_3A90(&qword_C4AD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_8F350();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3 + OBJC_IVAR____TtC15JournalSettings5Asset_id, v10);
  v30 = [a3 userInterfaceStyle];
  if (*(v3 + OBJC_IVAR____TtC15JournalSettings16MultiPinMapAsset_metadata))
  {

    sub_162D8(v9);

    v14 = sub_8FA70();
    v15 = 1;
    if ((*(*(v14 - 8) + 48))(v9, 1, v14))
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_8FA60();
      v15 = v17;
    }

    sub_8EF0(v9, &qword_C4AD0);
  }

  else
  {
    v16 = 0;
    v15 = 1;
  }

  v33 = 0x2D626D756874;
  v34 = 0xE600000000000000;
  sub_51EF8(&qword_C4E78, &type metadata accessor for UUID);
  v35._countAndFlagsBits = sub_910B0();
  sub_90640(v35);

  v36._countAndFlagsBits = 45;
  v36._object = 0xE100000000000000;
  sub_90640(v36);
  v32._countAndFlagsBits = a1;
  v37._countAndFlagsBits = sub_910B0();
  sub_90640(v37);

  v38._countAndFlagsBits = 45;
  v38._object = 0xE100000000000000;
  sub_90640(v38);
  v18 = 0x656772614C78;
  v19 = 0xE500000000000000;
  v20 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v20 = 0x657263536C6C7566;
    v19 = 0xEA00000000006E65;
  }

  v21 = 0xE600000000000000;
  v22 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v22 = 0x61546D756964656DLL;
    v21 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v20 = v22;
    v19 = v21;
  }

  v23 = 0xEA00000000006564;
  v24 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v24 = 0x656772616CLL;
    v23 = 0xE500000000000000;
  }

  if (a2)
  {
    v25 = 0xE600000000000000;
  }

  else
  {
    v18 = 0x6154656772614C78;
    v25 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v23 = v25;
  }

  else
  {
    v18 = v24;
  }

  if (a2 <= 3u)
  {
    v26._countAndFlagsBits = v18;
  }

  else
  {
    v26._countAndFlagsBits = v20;
  }

  if (a2 <= 3u)
  {
    v27 = v23;
  }

  else
  {
    v27 = v19;
  }

  v26._object = v27;
  sub_90640(v26);

  if ((v15 & 1) == 0)
  {
    v32._countAndFlagsBits = 45;
    v32._object = 0xE100000000000000;
    v31 = v16;
    v39._countAndFlagsBits = sub_910B0();
    sub_90640(v39);

    sub_90640(v32);
  }

  v32._countAndFlagsBits = 45;
  v32._object = 0xE100000000000000;
  v31 = v30;
  v40._countAndFlagsBits = sub_910B0();
  sub_90640(v40);

  sub_90640(v32);

  v28 = v33;
  (*(v11 + 8))(v13, v10);
  return v28;
}

id sub_51ACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPinMapAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiPinMapAsset()
{
  result = qword_C68C0;
  if (!qword_C68C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_51BD4()
{
  v1 = sub_3A90(&qword_C4AD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_8FA70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC15JournalSettings16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  sub_162D8(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_8EF0(v3, &qword_C4AD0);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = sub_8FA30();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_4FB18(v8);

    return v9;
  }

  return 0;
}

uint64_t sub_51E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C4AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_51F54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_8F090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_8F390();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_8F410();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_8F450();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_8EF40();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_8F2F0();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_52180(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_8F090();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_8F390();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_8F410();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_8F450();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_8EF40();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_8F2F0();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t _s23YearAdaptiveFormatStyleVMa()
{
  result = qword_C69A0;
  if (!qword_C69A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_523F0()
{
  result = sub_8F090();
  if (v1 <= 0x3F)
  {
    result = sub_8F390();
    if (v2 <= 0x3F)
    {
      result = sub_8F410();
      if (v3 <= 0x3F)
      {
        result = sub_8F450();
        if (v4 <= 0x3F)
        {
          result = sub_8EF40();
          if (v5 <= 0x3F)
          {
            result = sub_8F2F0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_524D4(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_8F110();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_8F160();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_8F190();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8EF40();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v80 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8F450();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v77 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_8F410();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v74 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_8F390();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C6A08);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_3A90(&qword_C6A10);
  __chkstk_darwin(v18 - 8);
  v67 = &v55 - v19;
  v20 = sub_8F1C0();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v55 - v25;
  v27 = __chkstk_darwin(v24);
  v55 = &v55 - v28;
  __chkstk_darwin(v27);
  v71 = &v55 - v29;
  v30 = sub_8F400();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s23YearAdaptiveFormatStyleVMa();
  v35 = v34[6];
  (*(v31 + 104))(v33, enum case for Calendar.Component.year(_:), v30);
  v36 = sub_8F3E0();
  (*(v31 + 8))(v33, v30);
  if (v36)
  {
    v37 = sub_8F0B0();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_8F090();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v17, v2, v38);
    (*(v39 + 56))(v17, 0, 1, v38);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    sub_8F0D0();
    v40 = v56;
    sub_8F180();
    sub_8F1B0();
    (*(v57 + 8))(v40, v58);
    v42 = v72;
    v41 = v73;
    v43 = *(v72 + 8);
    v43(v23, v73);
    v44 = v59;
    sub_8F150();
    v45 = v55;
    sub_8F0F0();
    (*(v60 + 8))(v44, v61);
    v43(v26, v41);
    v46 = v62;
    sub_8F100();
    v47 = v71;
    sub_8F0C0();
    (*(v63 + 8))(v46, v64);
    v43(v45, v41);
    v48 = v42;
  }

  else
  {
    v49 = v67;
    sub_8F0A0();
    v50 = sub_8F0B0();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = sub_8F090();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v17, v2, v51);
    (*(v52 + 56))(v17, 0, 1, v51);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    v47 = v71;
    sub_8F0D0();
    v48 = v72;
    v41 = v73;
  }

  v53 = sub_8F1A0();
  (*(v48 + 8))(v47, v41);
  return v53;
}

uint64_t sub_52F08()
{
  v1 = *v0;
  v2 = 0x6C797453656D6974;
  v3 = 0x656E6F5A656D6974;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x636E657265666572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_52FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_549E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_53004(uint64_t a1)
{
  v2 = sub_54710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_53040(uint64_t a1)
{
  v2 = sub_54710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5307C(void *a1)
{
  v3 = sub_3A90(&qword_C6A58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_FCAC(a1, a1[3]);
  sub_54710();
  sub_91210();
  v8[15] = 0;
  sub_8F090();
  sub_547C0(&qword_C6A60, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_91090();
  if (!v1)
  {
    _s23YearAdaptiveFormatStyleVMa();
    v8[14] = 1;
    sub_8F390();
    sub_547C0(&qword_C6A68, &type metadata accessor for Locale);
    sub_91090();
    v8[13] = 2;
    sub_8F410();
    sub_547C0(&qword_C6A70, &type metadata accessor for Calendar);
    sub_91090();
    v8[12] = 3;
    sub_8F450();
    sub_547C0(&qword_C6A78, &type metadata accessor for TimeZone);
    sub_91090();
    v8[11] = 4;
    sub_8EF40();
    sub_547C0(&qword_C6A80, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_91090();
    v8[10] = 5;
    sub_8F2F0();
    sub_547C0(&qword_C6A88, &type metadata accessor for Date);
    sub_91090();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_53450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_8F2F0();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_8EF40();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_8F450();
  v59 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_8F410();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_8F390();
  v63 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_8F090();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_3A90(&qword_C6A18);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v38 - v14;
  v16 = _s23YearAdaptiveFormatStyleVMa();
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v17[7];
  sub_8F360();
  v60 = v17[8];
  sub_8F3B0();
  v58 = v17[9];
  sub_8F420();
  v49 = v17[10];
  sub_8EF30();
  v50 = v17[11];
  sub_8F2C0();
  v20 = a1[3];
  v52 = a1;
  sub_FCAC(a1, v20);
  sub_54710();
  v46 = v15;
  v21 = v48;
  sub_91200();
  if (v21)
  {
    v22 = v57;
    v23 = v55;
    v26 = v51;
    v27 = v49;
    sub_7FA4(v52);
    v29 = v53;
    v28 = v54;
    (*(v63 + 8))(&v19[v62], v26);
    (*(v61 + 8))(&v19[v60], v64);
    (*(v59 + 8))(&v19[v58], v29);
    (*(v28 + 8))(&v19[v27], v23);
    return (*(v56 + 8))(&v19[v50], v22);
  }

  else
  {
    v70 = 0;
    sub_547C0(&qword_C6A28, &type metadata accessor for Date.FormatStyle.TimeStyle);
    sub_91040();
    v24 = v57;
    v25 = v55;
    v31 = *(v44 + 32);
    v48 = v11;
    v31(v19, v13, v11);
    v69 = 1;
    sub_547C0(&qword_C6A30, &type metadata accessor for Locale);
    v32 = v10;
    v33 = v51;
    sub_91040();
    v34 = v49;
    (*(v63 + 40))(&v19[v62], v32, v33);
    v68 = 2;
    sub_547C0(&qword_C6A38, &type metadata accessor for Calendar);
    v35 = v64;
    sub_91040();
    v36 = v54;
    (*(v61 + 40))(&v19[v60], v43, v35);
    v67 = 3;
    sub_547C0(&qword_C6A40, &type metadata accessor for TimeZone);
    v37 = v53;
    sub_91040();
    (*(v59 + 40))(&v19[v58], v42, v37);
    v66 = 4;
    sub_547C0(&qword_C6A48, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_91040();
    (*(v36 + 40))(&v19[v34], v41, v25);
    v65 = 5;
    sub_547C0(&qword_C6A50, &type metadata accessor for Date);
    sub_91040();
    (*(v45 + 8))(v46, v47);
    (*(v56 + 40))(&v19[v50], v40, v24);
    sub_546AC(v19, v39);
    sub_7FA4(v52);
    return sub_54764(v19);
  }
}

uint64_t sub_53DCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_524D4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_53DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_546AC(v3, a3);
  v7 = *(a2 + 20);
  v8 = sub_8F390();
  v9 = *(*(v8 - 8) + 24);

  return v9(a3 + v7, a1, v8);
}

Swift::Int sub_53EAC()
{
  sub_91180();
  sub_8F090();
  sub_547C0(&qword_C6A90, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_90470();
  sub_8F390();
  sub_547C0(&qword_C6A98, &type metadata accessor for Locale);
  sub_90470();
  sub_8F410();
  sub_547C0(&qword_C6AA0, &type metadata accessor for Calendar);
  sub_90470();
  sub_8F450();
  sub_547C0(&qword_C6AA8, &type metadata accessor for TimeZone);
  sub_90470();
  sub_8EF40();
  sub_547C0(&qword_C6AB0, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_90470();
  sub_8F2F0();
  sub_547C0(&qword_C6AB8, &type metadata accessor for Date);
  sub_90470();
  return sub_911D0();
}

uint64_t sub_540FC()
{
  sub_8F090();
  sub_547C0(&qword_C6A90, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_90470();
  sub_8F390();
  sub_547C0(&qword_C6A98, &type metadata accessor for Locale);
  sub_90470();
  sub_8F410();
  sub_547C0(&qword_C6AA0, &type metadata accessor for Calendar);
  sub_90470();
  sub_8F450();
  sub_547C0(&qword_C6AA8, &type metadata accessor for TimeZone);
  sub_90470();
  sub_8EF40();
  sub_547C0(&qword_C6AB0, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_90470();
  sub_8F2F0();
  sub_547C0(&qword_C6AB8, &type metadata accessor for Date);
  return sub_90470();
}

Swift::Int sub_5433C()
{
  sub_91180();
  sub_8F090();
  sub_547C0(&qword_C6A90, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_90470();
  sub_8F390();
  sub_547C0(&qword_C6A98, &type metadata accessor for Locale);
  sub_90470();
  sub_8F410();
  sub_547C0(&qword_C6AA0, &type metadata accessor for Calendar);
  sub_90470();
  sub_8F450();
  sub_547C0(&qword_C6AA8, &type metadata accessor for TimeZone);
  sub_90470();
  sub_8EF40();
  sub_547C0(&qword_C6AB0, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_90470();
  sub_8F2F0();
  sub_547C0(&qword_C6AB8, &type metadata accessor for Date);
  sub_90470();
  return sub_911D0();
}

uint64_t sub_546AC(uint64_t a1, uint64_t a2)
{
  v4 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_54710()
{
  result = qword_C6A20;
  if (!qword_C6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A20);
  }

  return result;
}

uint64_t sub_54764(uint64_t a1)
{
  v2 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_547C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_54808(uint64_t a1, uint64_t a2)
{
  if ((sub_8F070() & 1) == 0)
  {
    return 0;
  }

  v4 = _s23YearAdaptiveFormatStyleVMa();
  if ((sub_8F370() & 1) == 0 || (sub_8F3C0() & 1) == 0 || (sub_8F430() & 1) == 0 || (sub_8EF20() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 36);

  return static Date.== infix(_:_:)(a1 + v5, a2 + v5);
}

unint64_t sub_548DC()
{
  result = qword_C6AC0;
  if (!qword_C6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6AC0);
  }

  return result;
}

unint64_t sub_54934()
{
  result = qword_C6AC8;
  if (!qword_C6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6AC8);
  }

  return result;
}

unint64_t sub_5498C()
{
  result = qword_C6AD0;
  if (!qword_C6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6AD0);
  }

  return result;
}

uint64_t sub_549E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C797453656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_910F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_910F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_910F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (sub_910F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000000950E0 == a2 || (sub_910F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_910F0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

size_t sub_54BF0(size_t a1, uint64_t a2, char a3)
{
  v6 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8F410();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_8F2F0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  if ((a3 & 1) == 0 && (*(a1 + 16) < 2uLL || *(a2 + 16) < 2uLL))
  {
    return 0;
  }

  v45 = a1;

  sub_55A00(v18);

  sub_55C24(&v45);

  v19 = *(v45 + 16);
  if (!v19)
  {

    return 0;
  }

  v41 = v13;
  v42 = v17;
  v21 = v13 + 16;
  v20 = *(v13 + 16);
  v22 = v45 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v20(v42, v22, v12);
  v23 = v22 + *(v21 + 56) * (v19 - 1);
  v24 = v44;
  v20(v44, v23, v12);
  v25 = v42;

  sub_8F3F0();
  LOBYTE(v22) = sub_8F3D0();
  (*(v43 + 8))(v11, v9);
  if (v22)
  {
    sub_8F080();
    sub_8EF10();
    sub_8F360();
    sub_8F3B0();
    sub_8F420();
    sub_8F2C0();
    sub_55CCC();
    sub_8F2D0();
    sub_54764(v8);
    v26 = *(v41 + 8);
    v26(v24, v12);
    v26(v25, v12);
    return v45;
  }

  else
  {
    v43 = v12;
    if (qword_C39E8 != -1)
    {
      swift_once();
    }

    v40 = qword_D0500;
    sub_3A90(&qword_C5008);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_98750;
    sub_8F080();
    sub_8EF10();
    sub_8F360();
    sub_8F3B0();
    sub_8F420();
    sub_8F2C0();
    sub_55CCC();
    v29 = v42;
    sub_8F2D0();
    sub_54764(v8);
    v30 = v45;
    v31 = v46;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_2106C();
    *(v28 + 64) = v32;
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    sub_8F080();
    sub_8EF10();
    sub_8F360();
    sub_8F3B0();
    sub_8F420();
    sub_8F2C0();
    v33 = v44;
    sub_8F2D0();
    sub_54764(v8);
    v34 = v45;
    v35 = v46;
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    v36 = sub_90560();

    v37 = *(v41 + 8);
    v38 = v33;
    v39 = v43;
    v37(v38, v43);
    v37(v29, v39);
    return v36;
  }
}

char *sub_55160(char *result, int64_t a2, char a3, char *a4)
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
    sub_3A90(&qword_C4B28);
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
    v10 = &_swiftEmptyArrayStorage;
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

double *sub_5528C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C4B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_553C8(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_3A90(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = (v11 + 4);
  v15 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

double *sub_554C4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C4840);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_55620(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
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

  sub_3A90(a5);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_557FC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&qword_C6AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_558F0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3A90(&unk_C8860);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_55A00(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_17764(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = sub_8F2F0();
  if (v8 < v2)
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

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_55B2C(uint64_t result)
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

  result = sub_17C8C(result, v10, 1, v3);
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

Swift::Int sub_55C24(size_t *a1)
{
  v2 = *(sub_8F2F0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_57250(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_55D24(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_55CCC()
{
  result = qword_C6AD8;
  if (!qword_C6AD8)
  {
    _s23YearAdaptiveFormatStyleVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6AD8);
  }

  return result;
}

Swift::Int sub_55D24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_910A0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_8F2F0();
        v6 = sub_90780();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_8F2F0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_560D4(v8, v9, a1, v4);
      v6[2] = 0.0;
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
    return sub_55E50(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_55E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_8F2F0();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_8F290();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_560D4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_8F2F0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  result = __chkstk_darwin(v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_570F0(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_56AC0(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_570F0(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[2 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_57064(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_8F290();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_8F290() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_17660(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_17660((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[2 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[2 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[2 * v56 + 4];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[2 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[2 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[2 * a4 + 4];
        v5 = *&v21[2 * v56 + 5];
        sub_56AC0(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[2 * v56 + 4], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_570F0(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[2 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_57064(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[2 * v5 + 4];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[2 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[2 * v56 + 4];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_8F290();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_56AC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_8F2F0();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_8F290();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_8F290();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
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

LABEL_59:
  sub_5711C(&v60, &v59, &v58, &type metadata accessor for Date);
  return 1;
}

uint64_t sub_57064(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_570F0(v3);
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

uint64_t sub_5711C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_5729C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = HIBYTE(a2) & 0xF;
  v10 = HIBYTE(a4) & 0xF;
  if (a2)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    v12 = a1;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v13 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  v12 = a3;
  if (v13)
  {
LABEL_9:
    sub_5750C(10, v12);
    v14 = sub_90550();
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  [v4 setDisplayName:v14];

  if (a4)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15 = v10;
    }

    if (v15)
    {
      goto LABEL_19;
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v16 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = v9;
  }

  if (v16)
  {
LABEL_19:
    v17 = sub_90550();
  }

  else
  {
LABEL_20:
    v17 = 0;
  }

  v18 = v17;
  [v4 setContentDescription:?];
}

id sub_573DC()
{
  v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v1 setAlignment:{objc_msgSend(v0, "alignment")}];
  [v0 firstLineHeadIndent];
  [v1 setFirstLineHeadIndent:?];
  [v0 headIndent];
  [v1 setHeadIndent:?];
  [v1 setBaseWritingDirection:{objc_msgSend(v0, "baseWritingDirection")}];
  isa = [v0 textLists];
  if (!isa)
  {
    sub_58338();
    sub_90740();
    isa = sub_90730().super.isa;
  }

  [v1 setTextLists:isa];

  return v1;
}

uint64_t sub_5750C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = v5;

  sub_3A90(&qword_C6B10);
  sub_39C40();
  sub_236E0(&qword_C6B18, &qword_C6B10);
  sub_90D60();

  swift_beginAccess();
  if (*(v5 + 32))
  {
  }

  else
  {
    sub_906C0();
    a2 = sub_90610();
  }

  return a2;
}

uint64_t sub_5771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    if (v17 >= a9)
    {
      result = swift_beginAccess();
      *(a10 + 16) = a5;
      *(a10 + 24) = a6;
      *(a10 + 32) = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t sub_577BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v4 = sub_8F110();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8F160();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8F190();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_8F130();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_8EF40();
  __chkstk_darwin(v12 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_8F450();
  __chkstk_darwin(v14 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_8F410();
  __chkstk_darwin(v16 - 8);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_8F390();
  __chkstk_darwin(v18 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3A90(&qword_C6A08);
  __chkstk_darwin(v20 - 8);
  v69 = &v67 - v21;
  v22 = sub_3A90(&qword_C6A10);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - v23;
  v25 = sub_8F1C0();
  v67 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v68 = &v67 - v30;
  v31 = __chkstk_darwin(v29);
  v70 = &v67 - v32;
  v33 = __chkstk_darwin(v31);
  v72 = &v67 - v34;
  __chkstk_darwin(v33);
  v73 = &v67 - v35;
  v36 = sub_3A90(&qword_C4808);
  __chkstk_darwin(v36 - 8);
  v38 = &v67 - v37;
  v39 = sub_8F2F0();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v91 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;

  v43 = sub_174F0(0, 1, 1, _swiftEmptyArrayStorage);
  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_174F0((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[2 * v45];
  v47 = v90;
  *(v46 + 4) = v89;
  *(v46 + 5) = v42;
  sub_5817C(v47, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_581EC(v38);
  }

  else
  {
    v48 = *(v40 + 32);
    v90 = v39;
    v48(v91, v38, v39);
    v49 = sub_8F0B0();
    (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
    v50 = sub_8F090();
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    sub_8F360();
    sub_8F3B0();
    sub_8F420();
    sub_8EF30();
    sub_8F0D0();
    v51 = v77;
    sub_8F120();
    v52 = v68;
    sub_8F0E0();
    (*(v78 + 8))(v51, v79);
    v53 = *(v67 + 8);
    v53(v28, v25);
    v54 = v80;
    sub_8F170();
    v55 = v70;
    sub_8F1B0();
    (*(v81 + 8))(v54, v82);
    v53(v52, v25);
    v56 = v83;
    sub_8F140();
    v57 = v72;
    sub_8F0F0();
    (*(v84 + 8))(v56, v85);
    v53(v55, v25);
    v58 = v86;
    sub_8F100();
    v59 = v73;
    sub_8F0C0();
    (*(v87 + 8))(v58, v88);
    v53(v57, v25);
    sub_58254();
    sub_8F2D0();
    v53(v59, v25);
    v60 = v92;
    v61 = v93;
    v63 = *(v43 + 2);
    v62 = *(v43 + 3);
    if (v63 >= v62 >> 1)
    {
      v43 = sub_174F0((v62 > 1), v63 + 1, 1, v43);
    }

    (*(v40 + 8))(v91, v90);
    *(v43 + 2) = v63 + 1;
    v64 = &v43[2 * v63];
    *(v64 + 4) = v60;
    *(v64 + 5) = v61;
  }

  v92 = v43;
  sub_3A90(&qword_C4830);
  sub_236E0(&qword_C4838, &qword_C4830);
  v65 = sub_90480();

  return v65;
}

uint64_t sub_5817C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C4808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_581EC(uint64_t a1)
{
  v2 = sub_3A90(&qword_C4808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_58254()
{
  result = qword_C6B08;
  if (!qword_C6B08)
  {
    sub_8F1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B08);
  }

  return result;
}

uint64_t sub_582CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_58338()
{
  result = qword_C5560;
  if (!qword_C5560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C5560);
  }

  return result;
}

char *sub_583CC()
{
  ObjectType = swift_getObjectType();
  v2 = qword_C6B20;
  sub_3A90(&qword_C6C38);
  sub_5853C();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "init");
  [*&v3[qword_C6B20] setCountLimit:500];
  return v3;
}

uint64_t sub_584A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_90D80();

  swift_unknownObjectRelease();
  return sub_7FA4(&v7);
}

unint64_t sub_5853C()
{
  result = qword_C6C40;
  if (!qword_C6C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C6C40);
  }

  return result;
}

uint64_t sub_585C0()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C6C50);
  v1 = sub_7FF0(v0, qword_C6C50);
  if (qword_C3A90 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0780);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_586DC(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_58720()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption1;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = sub_79528(UIFontWeightBold);
  qword_D04D8 = v3;
}

void sub_587A8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000952E0;
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_8EE70(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_D04E0 = v2;
  *algn_D04E8 = v4;
}

void sub_5884C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000952A0;
  v6._countAndFlagsBits = 0xD000000000000038;
  v6._object = 0x8000000000095240;
  v8._object = 0x8000000000095280;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000010;
  v2 = sub_8EE70(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_D04F0 = v2;
  *algn_D04F8 = v4;
}

void sub_58918()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000000095210;
  v8._countAndFlagsBits = 0x25209480E2204025;
  v6._object = 0x80000000000951F0;
  v6._countAndFlagsBits = 0x1000000000000011;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xA900000000000040;
  v2 = sub_8EE70(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_D0500 = v2;
  *algn_D0508 = v4;
}

void sub_589DC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000000095340;
  v6._object = 0x8000000000095320;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_8EE70(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_D0510 = v2;
  *algn_D0518 = v4;
}

void sub_58A94()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000000000953A0;
  v6._countAndFlagsBits = 0x7373412065766F4DLL;
  v6._object = 0xEA00000000007465;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_8EE70(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_D0520 = v2;
  *algn_D0528 = v4;
}

void sub_58B48()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000000095380;
  v6._countAndFlagsBits = 0x676E69707954;
  v6._object = 0xE600000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_8EE70(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_D0530 = v2;
  *algn_D0538 = v4;
}

void sub_58BF4()
{
  v0 = sub_90550();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_D0540 = v1;
}

uint64_t sub_58D7C()
{
  sub_3A90(&qword_C70C0);
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(sub_3A90(&qword_C70C8)) init];
  sub_3A90(&qword_C70D0);
  result = swift_allocObject();
  v0[3] = result;
  v0[4] = 0xD000000000000011;
  v0[5] = 0x8000000000095440;
  qword_D0548 = v0;
  return result;
}

uint64_t sub_58E2C()
{
  v0 = sub_90AF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90AE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_902A0();
  __chkstk_darwin(v5 - 8);
  sub_C8F4();
  sub_90290();
  sub_90AD0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_90B30();
  qword_D0550 = result;
  return result;
}

uint64_t sub_58FDC()
{

  return v0;
}

uint64_t sub_5900C()
{
  sub_58FDC();

  return swift_deallocClassInstance();
}

uint64_t sub_59058@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_8F930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_237EC(v2, v10, type metadata accessor for AssetAttachment.AssetType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_598EC(v10, type metadata accessor for AssetAttachment.AssetType);
      v19 = 1;
      goto LABEL_9;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {

    v10 += *(sub_3A90(&qword_C5158) + 48);
  }

  sub_59F0C(v10, v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  sub_237EC(v16, v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_598EC(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v18 = sub_8EFE0();
    (*(*(v18 - 8) + 32))(a1, v14, v18);
  }

  else
  {
    sub_8F920();
    sub_8F900();

    (*(v5 + 8))(v7, v4);
    sub_598EC(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  }

  v19 = 0;
LABEL_9:
  v20 = sub_8EFE0();
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_593AC()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C70D8);
  v1 = sub_7FF0(v0, qword_C70D8);
  if (qword_C3A78 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0738);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_59474()
{
  sub_598EC(v0 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);

  return swift_deallocClassInstance();
}

uint64_t sub_59528()
{
  result = type metadata accessor for AssetAttachment.AssetType(319);
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

void sub_595F0()
{
  sub_59710(319, &qword_C7230, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (v0 <= 0x3F)
  {
    sub_59710(319, &qword_C7238, sub_5975C);
    if (v1 <= 0x3F)
    {
      sub_597A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_596D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_59710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_5975C()
{
  result = qword_C7240;
  if (!qword_C7240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C7240);
  }

  return result;
}

void sub_597A8()
{
  if (!qword_C7248)
  {
    sub_3D20(&qword_C4828);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_C7248);
    }
  }
}

uint64_t sub_59880()
{
  result = sub_8EFE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_598EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_5994C(void *a1)
{
  v2 = sub_3A90(&qword_C57E0);
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v5 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 filePath];
  if (v8)
  {
    v9 = v8;
    v43 = sub_90590();
    v44 = v10;
    v11 = [a1 index];
    v12 = [a1 name];
    if (v12)
    {
      v13 = v12;
      v14 = sub_90590();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v26 = [objc_allocWithZone(NSString) initWithString:v9];

    v27 = [v26 lastPathComponent];
    if (!v27)
    {
      sub_90590();
      v27 = sub_90550();
    }

    v42 = v11;
    v28 = [objc_allocWithZone(NSString) initWithString:v27];

    v29 = [v28 stringByDeletingPathExtension];
    v30 = sub_90590();
    v32 = v31;

    if (v16)
    {
      if (v14 == 0x6567616D69 && v16 == 0xE500000000000000 || (sub_910F0() & 1) != 0 || v14 == 0x6F65646976 && v16 == 0xE500000000000000 || (sub_910F0() & 1) != 0)
      {

        *v7 = v43;
LABEL_17:
        v33 = v7;
LABEL_20:
        v33[1] = v44;
        type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for AssetAttachment(0);
        v34 = swift_allocObject();
        *(v34 + 16) = v42;
        sub_59F0C(v7, v34 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        result = v34;
        v36 = (v34 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_fileNameID);
        *v36 = v30;
        v36[1] = v32;
        return result;
      }

      if (v14 == 0x6F69647561 && v16 == 0xE500000000000000)
      {

LABEL_34:
        *v7 = v43;
        goto LABEL_17;
      }

      v41 = sub_910F0();

      if (v41)
      {

        goto LABEL_34;
      }
    }

    else
    {
    }

    v33 = (v7 + *(sub_3A90(&qword_C5158) + 48));
    *v7 = v14;
    v7[1] = v16;
    *v33 = v43;
    goto LABEL_20;
  }

  if (qword_C3A20 != -1)
  {
    swift_once();
  }

  v17 = sub_900D0();
  sub_7FF0(v17, qword_C70D8);
  v18 = a1;
  v19 = sub_900B0();
  v20 = sub_90A70();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v23 = [v18 id];
    if (v23)
    {
      v24 = v23;
      sub_8F330();

      v25 = sub_8F350();
      (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    }

    else
    {
      v37 = sub_8F350();
      (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
    }

    v38 = sub_905E0();
    v40 = sub_76D20(v38, v39, &v45);

    *(v21 + 4) = v40;
    _os_log_impl(&dword_0, v19, v20, "JournalEntryAssetFileAttachmentMO is missing filePath. ID: %s", v21, 0xCu);
    sub_7FA4(v22);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_59F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_59FC4()
{
  v1 = *(v0 + qword_C7320);
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_5C1A4((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  return v5;
}

uint64_t sub_5A0E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_90550();
  [v2 willChangeValueForKey:v4];

  v5 = *&v2[qword_C7320];
  type metadata accessor for OperationBase.Locked();
  sub_3D20(&unk_C8830);
  sub_911F0();
  swift_getFunctionTypeMetadata1();
  sub_907D0();
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_5C150(v5 + v6, &v16);
  os_unfair_lock_unlock((v5 + v7));
  v8 = v16;
  v9 = sub_90550();
  [v2 didChangeValueForKey:v9];

  if (!sub_907B0())
  {
  }

  v10 = 0;
  for (i = v8 + 40; ; i += 16)
  {
    v12 = sub_90790();
    result = sub_90760();
    if (!v12)
    {
      break;
    }

    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_8;
    }

    v15 = *(i - 8);

    v15(a1);

    ++v10;
    if (v14 == sub_907B0())
    {
    }
  }

  result = sub_90EB0();
  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_5A330(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B3878;
  v6._object = a2;
  v4 = sub_90FF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5A37C(char a1)
{
  if (!a1)
  {
    return 0x7964616572;
  }

  if (a1 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

uint64_t sub_5A3D4()
{
  swift_getWitnessTable();

  return sub_91100();
}

uint64_t sub_5A448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_5A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_5A524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_5A594@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5A330(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5A5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5A37C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5A5F0()
{
  sub_3D20(&unk_C8830);
  sub_911F0();
  swift_getFunctionTypeMetadata1();
  sub_90410();
  return 0;
}

Swift::Int sub_5A670()
{
  sub_91180();
  sub_91190(0);
  return sub_911D0();
}

Swift::Int sub_5A6DC()
{
  sub_91180();
  sub_91190(0);
  return sub_911D0();
}

uint64_t sub_5A71C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = swift_isaMask & *v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_907F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_5A7E4, v4, v6);
}

uint64_t sub_5A7E4()
{
  (*(*(*(v0[3] + 80) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

Swift::Int sub_5A890()
{
  v0 = sub_23CF8(&off_B38E0);
  sub_5BE44(&unk_B3900);
  return v0;
}

Swift::Int sub_5A8E4()
{
  v0 = sub_23CF8(&off_B3910);
  sub_5BE44(&unk_B3930);
  return v0;
}

Class sub_5A938(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4.super.isa = sub_908E0().super.isa;

  return v4.super.isa;
}

Swift::Int sub_5A9A0()
{
  v0 = sub_23CF8(&off_B3940);
  sub_5BE44(&unk_B3960);
  return v0;
}

uint64_t sub_5A9DC(void *a1)
{
  v1 = a1;
  v2 = sub_5AA4C();

  return v2 & 1;
}

uint64_t sub_5AA14(void *a1)
{
  v1 = a1;
  v2 = sub_5AA4C();

  return v2 & 1;
}

uint64_t sub_5AA4C()
{
  sub_59FC4();
  type metadata accessor for OperationBase.State();
  swift_getWitnessTable();
  return sub_91100() & 1;
}

uint64_t sub_5AAFC(void *a1)
{
  v1 = a1;
  v2 = sub_5AB30();

  return v2 & 1;
}

uint64_t sub_5AB30()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for OperationBase();
  v1 = objc_msgSendSuper2(&v3, "isReady");
  if (v1)
  {
    sub_59FC4();
    type metadata accessor for OperationBase.State();
    swift_getWitnessTable();
    LOBYTE(v1) = sub_91100();
  }

  return v1 & 1;
}

void sub_5ABF4()
{
  v1 = *(&stru_20.filesize + (swift_isaMask & *v0));
  sub_3D20(&unk_C8830);
  v2 = sub_911F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-v4];
  v6 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  if ([v0 isCancelled])
  {
    sub_90810();
    sub_5C0C8();
    v9 = swift_allocError();
    sub_90420();
    *v5 = v9;
    swift_storeEnumTagMultiPayload();
    sub_5A0E4(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = sub_90880();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v0;
    v12 = v0;
    v13 = sub_8968C(0, 0, v8, &unk_9B080, v11);
    v14 = sub_90550();
    [v12 willChangeValueForKey:v14];

    v15 = *(v12 + qword_C7320);
    __chkstk_darwin(v16);
    *&v20[-16] = v1;
    *&v20[-8] = v13;
    type metadata accessor for OperationBase.Locked();
    v17 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
    v18 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v18));
    sub_5C074(v15 + v17);
    os_unfair_lock_unlock((v15 + v18));
    v19 = sub_90550();
    [v12 didChangeValueForKey:v19];
  }
}

uint64_t sub_5AF5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *(&stru_20.filesize + (swift_isaMask & *a4));
  v4[3] = v5;
  sub_3D20(&unk_C8830);
  v6 = sub_911F0();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v7 = sub_90D10();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_5B118, 0, 0);
}

uint64_t sub_5B118()
{
  sub_908A0();
  v4 = (*&stru_68.sectname[swift_isaMask & **(v0 + 16)] + **&stru_68.sectname[swift_isaMask & **(v0 + 16)]);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_5B314;
  v2 = *(v0 + 72);

  return v4(v2, 0, 0);
}

uint64_t sub_5B314()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_5B640;
  }

  else
  {
    v2 = sub_5B428;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5B428()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    type metadata accessor for OperationBase.Failure();
    swift_getWitnessTable();
    v4 = swift_allocError();
    swift_willThrow();
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    *v5 = v4;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_5A0E4(v5);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = v0[11];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    (*(v2 + 32))(v8, v1, v3);
    (*(v2 + 16))(v9, v8, v3);
    swift_storeEnumTagMultiPayload();
    sub_5A0E4(v9);
    (*(v10 + 8))(v9, v11);
    (*(v2 + 8))(v8, v3);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_5B640()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v1 = v0[13];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_5A0E4(v1);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_5B71C(void *a1)
{
  v1 = a1;
  sub_5ABF4();
}

uint64_t sub_5B768()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  objc_msgSendSuper2(&v6, "cancel");
  v1 = *&v0[qword_C7320];
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_5BF38((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  if (v5)
  {
    sub_90890();
  }

  return result;
}

uint64_t sub_5B8D8()
{

  swift_getAtKeyPath();

  return v1;
}

void sub_5B94C(void *a1)
{
  v1 = a1;
  sub_5B768();
}

uint64_t sub_5B994()
{

  swift_getAtKeyPath();

  return v1;
}

id sub_5BA08(void *a1)
{
  v1 = a1;
  sub_5BA70();

  v2 = sub_90550();

  return v2;
}

uint64_t sub_5BA70()
{
  v0 = sub_59FC4();
  if (!v0)
  {
    return 0x7964616572;
  }

  if (v0 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

void sub_5BAE0()
{
  sub_3D20(&unk_C8830);
  sub_911F0();
  swift_getFunctionTypeMetadata1();
  sub_907D0();
  sub_907C0(0);
}

id sub_5BB68()
{
  v1 = qword_C7320;
  v7 = sub_5A5F0();
  v8 = v2;
  v9 = v3;
  type metadata accessor for OperationBase.Locked();
  v4 = sub_5BDC8();

  *&v0[v1] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_5BC54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5BCD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_5BD14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5BD28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_5BD70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5BDC8()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_90F00();
  return sub_90EF0();
}

uint64_t sub_5BE98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

uint64_t sub_5BF38@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_5BF80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5BFC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_3BC8;

  return sub_5AF5C(a1, v4, v5, v6);
}

uint64_t sub_5C074(uint64_t a1)
{
  v3 = *(v1 + 24);
  *a1 = 1;

  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_5C0C8()
{
  result = qword_C7428[0];
  if (!qword_C7428[0])
  {
    sub_90810();
    result = swift_getWitnessTable();
    atomic_store(result, qword_C7428);
  }

  return result;
}

void sub_5C150(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = 2;
  *a2 = *(a1 + 8);

  sub_5BAE0();
}

uint64_t sub_5C1A4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_5C1F0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_5C240(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

char *sub_5C308(NSObject *a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v47 = a5;
  LODWORD(v46) = a4;
  v45 = a3;
  v44 = a2;
  v12 = sub_90050();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_900D0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v50 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v43[-v19];
  v21 = OBJC_IVAR____TtC15JournalSettings5Asset_type;
  v22 = qword_D0568;
  v23 = sub_8FE10();
  (*(*(v23 - 8) + 16))(&v8[v22], a1 + v21, v23);
  *&v8[qword_D0570] = *(a1 + OBJC_IVAR____TtC15JournalSettings5Asset_attachments);
  *&v8[qword_D0578] = *(a1 + OBJC_IVAR____TtC15JournalSettings5Asset_sourceAttachments);
  v24 = *(&a1->isa + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);

  if (v24)
  {
    v25 = [v24 objectID];
  }

  else
  {
    v25 = 0;
  }

  *&v8[qword_D0580] = v25;
  v26 = *(&a1->isa + OBJC_IVAR____TtC15JournalSettings5Asset_context);
  *&v8[qword_D0588] = v26;
  v8[qword_D0590] = v44;
  v27 = &v8[qword_D0598];
  *v27 = v45;
  v27[8] = v46 & 1;
  v28 = &v8[qword_C7530];
  v29 = v47;
  *v28 = v47;
  v28[1] = a6;
  *&v8[qword_D05A0] = a7;
  v52 = 0;
  v53 = 0xE000000000000000;
  v30 = v26;

  v46 = a7;
  sub_90EA0(26);

  v52 = 0xD000000000000018;
  v53 = 0x80000000000956E0;
  v54._countAndFlagsBits = v29;
  v54._object = a6;
  sub_90640(v54);

  sub_900C0();
  v31 = qword_C7538;
  (*(v16 + 32))(&v8[qword_C7538], v20, v15);
  v32 = *(v16 + 16);
  v32(v20, &v8[v31], v15);
  sub_90030();
  (*(v48 + 32))(&v8[qword_C7540], v14, v49);
  v33 = type metadata accessor for ThumbnailCacheOperation();
  v51.receiver = v8;
  v51.super_class = v33;
  v34 = [&v51 init];
  v35 = v50;
  v32(v50, &v34[qword_C7538], v15);
  v36 = v34;
  v37 = sub_900B0();
  v38 = sub_90A60();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "Initialized", v39, 2u);

    v40 = v46;
    v41 = a1;
    a1 = v36;
  }

  else
  {
    v40 = v36;
    v41 = v37;
    v37 = v46;
  }

  (*(v16 + 8))(v35, v15);
  return v36;
}

uint64_t sub_5C7C4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v5 = sub_90060();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_90BF0();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_8FE10();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_90020();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_907F0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[25] = v9;
  v3[26] = v11;

  return _swift_task_switch(sub_5C9F0, v9, v11);
}

uint64_t sub_5C9F0()
{
  v0[27] = qword_C7540;
  sub_90010();
  v1 = sub_90040();
  v2 = sub_90B70();
  if (sub_90CF0())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_90000();
    _os_signpost_emit_with_name_impl(&dword_0, v1, v2, v4, "Image attachment loading", "", v3, 2u);
  }

  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[21];

  (*(v8 + 16))(v5, v6, v7);
  sub_90090();
  swift_allocObject();
  v0[28] = sub_90080();
  v9 = *(v8 + 8);
  v0[29] = v9;
  v0[30] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  if (qword_C3A10 != -1)
  {
    swift_once();
  }

  v10 = v0[10];
  v0[31] = qword_D0548;
  v11 = (v10 + qword_C7530);
  v12 = *v11;
  v0[32] = *v11;
  v13 = v11[1];
  v0[33] = v13;
  v14 = sub_60354(v12, v13);
  if (v14 && (v15 = v14, v16 = [v14 imageByPreparingForDisplay], v15, v16))
  {
    v17 = sub_900B0();
    v18 = sub_90A80();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Cache hit.", v19, 2u);
    }

    v20 = v0[10];

    sub_5E820(v20, "Image attachment loading", 24, 2);

    v21 = v0[1];

    return v21(v16);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_5CD54;
    v24 = v0[8];

    return sub_5EAC8(v24);
  }
}

uint64_t sub_5CD54(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_5CE7C, v4, v3);
}

uint64_t sub_5CE7C()
{
  v1 = v0[35];
  if (v1)
  {
    v2 = v0[10];
    sub_5975C();
    v3 = sub_42278(v1);
    if (sub_60EC8(*(v2 + qword_D0590)))
    {
      sub_5E3A0(v3, v0[32], v0[33]);
    }

    v4 = sub_900B0();
    v5 = sub_90A80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Image file attachment found.", v6, 2u);
    }

    v7 = v0[10];

    sub_5E820(v7, "Image attachment loading", 24, 2);
    goto LABEL_34;
  }

  (*(v0[18] + 104))(v0[19], enum case for AssetType.photo(_:), v0[17]);
  sub_60BAC(&qword_C76A8, &type metadata accessor for AssetType);
  sub_906E0();
  sub_906E0();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v9 + 8))(v0[19], v0[17]);
  }

  else
  {
    v11 = sub_910F0();
    (*(v9 + 8))(v8, v10);

    if ((v11 & 1) == 0)
    {
      v26 = v0[10];
      v27 = sub_900B0();
      v28 = sub_90A70();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[10];
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        v32 = *&v30[qword_D0570];
        if (v32 >> 62)
        {
          v49 = v31;
          v33 = sub_90FA0();
          v31 = v49;
        }

        else
        {
          v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
        }

        v34 = v0[10];
        *(v31 + 4) = v33;
        v35 = v31;

        _os_log_impl(&dword_0, v27, v28, "did not find image file attachment, attachments.count=%ld", v35, 0xCu);
      }

      else
      {
      }

      v25 = v0[10];
LABEL_33:
      sub_5E820(v25, "Image attachment loading", 24, 2);
      v3 = 0;
LABEL_34:

      v48 = v0[1];

      return v48(v3);
    }
  }

  v0[36] = qword_C7538;
  v12 = sub_900B0();
  v13 = sub_90A80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Will try to get image from Core Data (legacy support)", v14, 2u);
  }

  v15 = v0[10];

  v16 = *(v15 + qword_D0588);
  v0[37] = v16;
  if (!v16)
  {
    v21 = sub_900B0();
    v22 = sub_90A70();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "context is nil", v23, 2u);
    }

    v24 = v0[10];

    v25 = v24;
    goto LABEL_33;
  }

  v17 = *(v0[10] + qword_D0580);
  v0[38] = v17;
  if (!v17)
  {
    v36 = v16;
    v37 = sub_900B0();
    v38 = sub_90A70();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "assetID is nil", v39, 2u);
    }

    v40 = v0[10];

    v25 = v40;
    goto LABEL_33;
  }

  v18 = v16;
  v19 = v17;
  if ([v18 concurrencyType] == &dword_0 + 1)
  {
    v20 = v18;
  }

  else
  {
    v20 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v20 setParentContext:v18];
  }

  v0[39] = v20;
  v41 = v0[10];
  (*(v0[15] + 104))(v0[16], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[14]);
  v42 = swift_allocObject();
  v0[40] = v42;
  v42[2] = v20;
  v42[3] = v19;
  v42[4] = v41;
  v43 = v19;
  v20;
  v44 = v41;
  v45 = swift_task_alloc();
  v0[41] = v45;
  v46 = sub_3A90(&qword_C64E0);
  *v45 = v0;
  v45[1] = sub_5D594;
  v47 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v47, sub_6069C, v42, v46);
}

uint64_t sub_5D594()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[39];
    (*(v2[15] + 8))(v2[16], v2[14]);

    v5 = v2[25];
    v6 = v2[26];

    return _swift_task_switch(sub_5D6E8, v5, v6);
  }
}

uint64_t sub_5D6E8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    v7 = objc_allocWithZone(UIImage);
    sub_44FF8(v2, v1);
    isa = sub_8F020().super.isa;
    v9 = [v7 initWithData:isa];

    sub_41B24(v2, v1);
    if (v9)
    {
      v10 = *(v0 + 80);
      sub_5975C();
      v11 = sub_42278(v9);
      if (sub_60EC8(*(v10 + qword_D0590)))
      {
        sub_5E3A0(v11, *(v0 + 256), *(v0 + 264));
      }

      v12 = sub_90040();
      sub_90070();
      v13 = sub_90B60();
      if (sub_90CF0())
      {
        v39 = v13;
        v14 = *(v0 + 96);
        v15 = *(v0 + 104);
        v16 = *(v0 + 88);

        sub_900A0();

        if ((*(v14 + 88))(v15, v16) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v17 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
          v17 = "";
        }

        v25 = *(v0 + 312);
        v37 = *(v0 + 296);
        v38 = *(v0 + 304);
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = sub_90000();
        _os_signpost_emit_with_name_impl(&dword_0, v12, v39, v27, "Image attachment loading", v17, v26, 2u);

        sub_41B24(v2, v1);
        v12 = v37;
        v9 = v38;
      }

      else
      {
        v23 = *(v0 + 312);
        v24 = *(v0 + 296);

        sub_41B24(v2, v1);
      }

      v28 = *(v0 + 80);
      (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
      sub_5E820(v28, "Image attachment loading", 24, 2);
      goto LABEL_28;
    }

    sub_44FF8(v2, v1);
    v18 = sub_900B0();
    v19 = sub_90A70();
    if (!os_log_type_enabled(v18, v19))
    {
      sub_41B24(v2, v1);
LABEL_26:
      v33 = *(v0 + 304);
      v34 = *(v0 + 296);
      v35 = *(v0 + 80);

      sub_41B24(v2, v1);
      v6 = v35;
      goto LABEL_27;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v21 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_25;
      }

      v30 = *(v2 + 16);
      v29 = *(v2 + 24);
      v31 = __OFSUB__(v29, v30);
      v22 = v29 - v30;
      if (!v31)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v1);
LABEL_25:
      *(result + 4) = v22;
      v32 = result;
      sub_41B24(v2, v1);
      _os_log_impl(&dword_0, v18, v19, "can't create image from data (size: %{bytes}ld)", v32, 0xCu);

      goto LABEL_26;
    }

    LODWORD(v22) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_25;
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 296);
  v5 = *(v0 + 80);

  v6 = v5;
LABEL_27:
  sub_5E820(v6, "Image attachment loading", 24, 2);
  v11 = 0;
LABEL_28:

  v36 = *(v0 + 8);

  return v36(v11);
}

uint64_t sub_5DB64(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v8 = (*(&stru_B8.reloff + (swift_isaMask & *v2)) + **(&stru_B8.reloff + (swift_isaMask & *v2)));
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_5DCA4;

  return v8(a1, a2);
}

uint64_t sub_5DCA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 184) = a1;

  if (v3)
  {
    swift_getObjectType();
    v4 = sub_907F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v2 + 192) = v4;
  *(v2 + 200) = v6;

  return _swift_task_switch(sub_5DDF4, v4, v6);
}

uint64_t sub_5DDF4()
{
  v11 = v0;
  sub_908A0();
  v1 = *(v0[21] + qword_C7320);
  v2 = swift_task_alloc();
  *v2 = sub_5975C();
  KeyPath = swift_getKeyPath();

  v4 = swift_task_alloc();
  *(v4 + 16) = sub_5C19C;
  *(v4 + 24) = KeyPath;

  os_unfair_lock_lock((v1 + 40));
  sub_60CAC((v1 + 16), v10);
  os_unfair_lock_unlock((v1 + 40));

  LOBYTE(KeyPath) = v10[0];

  v5 = v0[23];
  if ((KeyPath & 1) != 0 || !v5)
  {
    v7 = v0[1];
    v8 = v0[23];

    return v7(v8);
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_5E068;
    v6 = swift_continuation_init();
    v0[17] = sub_3A90(&qword_C61B8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_42734;
    v0[13] = &unk_B57C8;
    v0[14] = v6;
    [v5 prepareForDisplayWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_5E068()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_5E170, v2, v1);
}

uint64_t sub_5E170()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 184);
  if (v1)
  {

    v2 = v1;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_5E1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_5E290;

  return sub_5DB64(a2, a3);
}

uint64_t sub_5E290(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_5E3A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_90230();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_902A0();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C3A18 != -1)
  {
    swift_once();
  }

  v18[1] = qword_D0550;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_6073C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7E2E8;
  aBlock[3] = &unk_B57A0;
  v15 = _Block_copy(aBlock);

  v16 = a1;

  sub_90250();
  v20 = _swiftEmptyArrayStorage;
  sub_60BAC(&qword_C57E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_3A90(&qword_C57F0);
  sub_3223C();
  sub_90DD0();
  sub_90B20();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

uint64_t sub_5E6C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v8 = a2;
    sub_60924(v8, a3, a4);
  }

  return result;
}

uint64_t sub_5E754@<X0>(_BYTE *a1@<X8>)
{
  sub_3D20(&unk_C8830);
  sub_911F0();
  swift_getFunctionTypeMetadata1();
  sub_907D0();
  swift_getWitnessTable();
  result = sub_90960();
  *a1 = result & 1;
  return result;
}

uint64_t sub_5E820(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_90060();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_90020();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_90040();
  sub_90070();
  v20 = sub_90B60();
  result = sub_90CF0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_900A0();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_90000();
      _os_signpost_emit_with_name_impl(&dword_0, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_5EAC8(uint64_t a1)
{
  v2[10] = v1;
  v4 = sub_90150();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_90120();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_3A90(&qword_C5150);
  v2[18] = swift_task_alloc();
  v6 = sub_8FFF0();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_8F930();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_3A90(&qword_C4C60);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v8 = sub_8EFE0();
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for AssetAttachment.AssetType(0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_907F0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v2[39] = v9;
  v2[40] = v11;

  return _swift_task_switch(sub_5EE58, v9, v11);
}

uint64_t sub_5EE58()
{
  v1 = v0[10];
  v2 = *(v1 + qword_D0570);
  if (v2 >> 62)
  {
LABEL_53:
    v3 = sub_90FA0();
    v1 = v0[10];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_43:

    v46 = v0[1];

    return v46(0);
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_43;
  }

LABEL_3:
  v4 = 0;
  v5 = (v1 + qword_D0598);
  v6 = v0[32];
  v7 = v2 & 0xC000000000000001;
  v76 = v2 & 0xFFFFFFFFFFFFFF8;
  v70 = (v6 + 56);
  v8 = v0[20];
  v68 = v2;
  v69 = (v6 + 32);
  v71 = (v6 + 48);
  v72 = v2 & 0xC000000000000001;
  v66 = (v8 + 48);
  v67 = v3;
  v63 = (v8 + 32);
  v62 = (v8 + 8);
  v64 = (v0[24] + 8);
  v65 = (v6 + 8);
  v73 = v5;
  while (1)
  {
    if (v7)
    {
      v11 = sub_90EC0();
    }

    else
    {
      if (v4 >= *(v76 + 16))
      {
        goto LABEL_52;
      }

      v11 = *(v2 + 8 * v4 + 32);
    }

    v0[41] = v11;
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v78 = *v5;
    v79 = *(v5 + 8);
    v77 = OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType;
    sub_237EC(v11 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v0[38], type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_23728(v0[38], v14);
      if (v79)
      {
        goto LABEL_41;
      }

      v19 = *(v11 + 16);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v9 = v0[38];

      v10 = v9;
LABEL_5:
      sub_23728(v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v15 = v0[37];

    sub_237EC(v11 + v77, v15, type metadata accessor for AssetAttachment.AssetType);
    v16 = swift_getEnumCaseMultiPayload();
    v17 = v0[37];
    if (v16 <= 1)
    {
      if (v16)
      {
        sub_23728(v17, type metadata accessor for AssetAttachment.AssetType);
        v29 = 1;
        goto LABEL_28;
      }
    }

    else if ((v16 - 2) >= 2)
    {
      v18 = v0[37];

      v17 = v18 + *(sub_3A90(&qword_C5158) + 48);
    }

    v20 = v0[27];
    v21 = v0[28];
    sub_23788(v17, v21);
    sub_237EC(v21, v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v0[30];
      v23 = v0[31];
      v24 = v0[27];
      sub_23728(v0[28], type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*v69)(v22, v24, v23);
    }

    else
    {
      v25 = v0[28];
      v26 = v0[25];
      v27 = v0[23];
      sub_8F920();
      v3 = v67;
      sub_8F900();

      v28 = v27;
      v2 = v68;
      (*v64)(v26, v28);
      sub_23728(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v29 = 0;
    v7 = v72;
    v5 = v73;
LABEL_28:
    v75 = v0[38];
    v30 = v0[30];
    v31 = v0[31];
    (*v70)(v30, v29, 1, v31);
    v74 = *(sub_3A90(&qword_C5158) + 48);
    if ((*v71)(v30, 1, v31) == 1)
    {
      v32 = v0[30];

      sub_8EF0(v32, &qword_C4C60);
LABEL_38:
      v10 = v75 + v74;
      goto LABEL_5;
    }

    v34 = v0[18];
    v33 = v0[19];
    (*v69)(v0[35], v0[30], v0[31]);
    sub_8EF70();
    sub_8FF60();
    sub_8FF30();
    v35 = (*v66)(v34, 1, v33);
    v36 = v0[35];
    v37 = v0[31];
    if (v35 == 1)
    {
      v38 = v0[18];

      (*v65)(v36, v37);
      sub_8EF0(v38, &qword_C5150);
LABEL_37:
      v3 = v67;
      v2 = v68;
      v7 = v72;
      v5 = v73;
      goto LABEL_38;
    }

    v40 = v0[21];
    v39 = v0[22];
    v41 = v0[19];
    (*v63)(v39, v0[18], v41);
    sub_8FF90();
    v61 = sub_8FFD0();
    v42 = *v62;
    (*v62)(v40, v41);
    v42(v39, v41);
    (*v65)(v36, v37);
    if ((v61 & 1) == 0)
    {

      goto LABEL_37;
    }

    v2 = v68;
    v7 = v72;
    v5 = v73;
    if (v79)
    {
      break;
    }

    v19 = *(v11 + 16);
    sub_23728(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v3 = v67;
LABEL_21:
    if (v19 == v78)
    {
      goto LABEL_41;
    }

LABEL_6:
    ++v4;
    if (v12 == v3)
    {
      goto LABEL_43;
    }
  }

  sub_23728(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_41:
  v43 = v0[31];
  v44 = v0[29];
  sub_59058(v44);
  if ((*v71)(v44, 1, v43) == 1)
  {
    v45 = v0[29];

    sub_8EF0(v45, &qword_C4C60);
    goto LABEL_43;
  }

  v48 = v0[10];
  (*v69)(v0[34], v0[29], v0[31]);
  sub_90110();
  sub_90100();
  if (sub_616D8(*(v48 + qword_D0590)))
  {
    v49 = v0[10];
    sub_3F1E8();
    sub_900F0();
    v50 = *(v49 + qword_D05A0);
    [v50 displayScale];
    v52 = v51;
    v53 = sub_900E0();
    *v54 = v52 * *v54;
    v53(v0 + 2, 0);
    [v50 displayScale];
    v56 = v55;
    v57 = sub_900E0();
    *(v58 + 8) = v56 * *(v58 + 8);
    v57(v0 + 6, 0);
  }

  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_90130();
  v59 = swift_task_alloc();
  v0[42] = v59;
  *v59 = v0;
  v59[1] = sub_5F7E0;
  v60 = v0[34];

  return UIImageReader.image(contentsOf:)(v60);
}

uint64_t sub_5F7E0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 344) = a1;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);

  return _swift_task_switch(sub_5F908, v4, v3);
}

uint64_t sub_5F908()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[32];
  if (v0[43])
  {
    v3 = v0[34];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v3, v1);
    v36 = v0[43];
  }

  else
  {
    (*(v2 + 16))(v0[33], v0[34], v0[31]);
    v10 = sub_900B0();
    v33 = sub_90A70();
    v11 = os_log_type_enabled(v10, v33);
    v12 = v0[33];
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[32];
    v16 = v0[17];
    v17 = v0[15];
    v18 = v0[12];
    v35 = v0[13];
    v37 = v0[14];
    v34 = v0[11];
    if (v11)
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v19 = 136315138;
      sub_60BAC(&qword_C76B0, &type metadata accessor for URL);
      v20 = sub_910B0();
      v21 = v14;
      v31 = v14;
      v32 = v16;
      v22 = v20;
      v24 = v23;
      v25 = *(v15 + 8);
      v25(v12, v21);
      v26 = sub_76D20(v22, v24, &v38);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_0, v10, v33, "getImageStoredInFile can't create image from %s", v19, 0xCu);
      sub_7FA4(v30);

      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v32, v37);
      v25(v13, v31);
    }

    else
    {

      v27 = *(v15 + 8);
      v27(v12, v14);
      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v16, v37);
      v27(v13, v14);
    }

    v36 = 0;
  }

  v28 = v0[1];

  return v28(v36);
}

void sub_5FCE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  sub_8F4B0();
  if (!swift_dynamicCastClass())
  {

    v14 = sub_900B0();
    v15 = sub_90A70();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Failed to retrieve assetMO based on NSManagedObjectID", v16, 2u);
    }

    goto LABEL_11;
  }

  v5 = sub_65288(0);
  if (!v5 || (v6 = v5, v7 = [v5 data], v6, !v7))
  {
    v11 = sub_900B0();
    v12 = sub_90A80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "data attachment [0] is nil", v13, 2u);
    }

LABEL_11:
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_12;
  }

  v8 = sub_8F030();
  v10 = v9;

LABEL_12:
  *a3 = v8;
  a3[1] = v10;
}

uint64_t sub_5FEE0()
{

  v1 = qword_D0568;
  v2 = sub_8FE10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_C7538;
  v4 = sub_900D0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_C7540;
  v6 = sub_90050();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id sub_6002C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailCacheOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_60064(uint64_t a1)
{

  v2 = qword_D0568;
  v3 = sub_8FE10();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = qword_C7538;
  v5 = sub_900D0();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = qword_C7540;
  v7 = sub_90050();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t type metadata accessor for ThumbnailCacheOperation()
{
  result = qword_C7570;
  if (!qword_C7570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_60200()
{
  result = sub_8FE10();
  if (v1 <= 0x3F)
  {
    result = sub_900D0();
    if (v2 <= 0x3F)
    {
      result = sub_90050();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

id sub_60354(uint64_t a1, uint64_t a2)
{
  v4 = sub_8EF60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8EFE0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  if (qword_C3A50 != -1)
  {
    swift_once();
  }

  v15 = sub_8F930();
  sub_7FF0(v15, qword_D06E8);
  sub_8F910();
  v24[0] = a1;
  v24[1] = a2;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_39C40();
  sub_8EFD0();
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = [objc_opt_self() defaultManager];
  sub_8EFB0();
  v18 = sub_90550();

  v19 = [v17 fileExistsAtPath:v18];

  v20 = 0;
  if (v19)
  {
    sub_8EF50();
    v21 = objc_allocWithZone(UIImage);
    v22 = sub_90550();

    v20 = [v21 initWithContentsOfFile:v22];
  }

  v16(v14, v8);
  return v20;
}

uint64_t sub_60654()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_606BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_606F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_60748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_60924(UIImage *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_8EF60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8EFE0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (qword_C3A50 != -1)
  {
    swift_once();
  }

  v16 = sub_8F930();
  sub_7FF0(v16, qword_D06E8);
  sub_8F910();
  v26 = a2;
  v27 = a3;
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_39C40();
  sub_8EFD0();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = UIImageHEICRepresentation(v25);
  if (v18)
  {
    v19 = v18;
    v20 = sub_8F030();
    v22 = v21;

    sub_60760();
    sub_17DA0(v20, v22);
  }

  return (v17)(v15, v9);
}

uint64_t sub_60BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_60BF4()
{
  sub_3D20(&unk_C8830);
  sub_911F0();
  swift_getFunctionTypeMetadata1();
  sub_907D0();

  return swift_getWitnessTable();
}

uint64_t sub_60CAC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetSizeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetSizeType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_60E64()
{
  result = qword_C76B8;
  if (!qword_C76B8)
  {
    sub_3D20(&qword_C76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C76B8);
  }

  return result;
}

uint64_t sub_60ECC(unsigned __int8 a1)
{
  if (a1 > 6u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_910F0();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_60FFC(unsigned __int8 a1)
{
  if (a1 <= 3u && a1 > 1u && a1 != 2)
  {
    v4 = 1;
    goto LABEL_22;
  }

  v2 = sub_910F0();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v4 = 1;
      goto LABEL_22;
    }

    v3 = sub_910F0();

    if ((v3 & 1) == 0)
    {
      if (a1 == 1)
      {
        v4 = 1;
        goto LABEL_22;
      }

      v5 = sub_910F0();

      if ((v5 & 1) == 0)
      {
        if (a1 > 6u)
        {
          v4 = 1;
        }

        else
        {
          v6 = sub_910F0();

          if (v6)
          {
            goto LABEL_17;
          }

          if (a1)
          {
            v4 = sub_910F0();
          }

          else
          {
            v4 = 1;
          }
        }

LABEL_22:

        return v4 & 1;
      }
    }
  }

LABEL_17:
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_61504@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6168C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_61534(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = *v1;
  v4 = 0x6154656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (v3 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v3 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (v3 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x656772614C78;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_61638()
{
  result = qword_C76C8;
  if (!qword_C76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C76C8);
  }

  return result;
}

uint64_t sub_6168C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B3970;
  v6._object = a2;
  v4 = sub_90FF0(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

void *sub_616DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  v2 = v1;
  return v1;
}

uint64_t sub_6170C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_context);
  if (v2)
  {
    __chkstk_darwin(a1);
    v4 = v3;
    sub_3A90(&qword_C6938);
    sub_90BE0();

    LOBYTE(v2) = v6;
  }

  return v2 & 1;
}

uint64_t sub_61814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = sub_3A90(&qword_C57E0);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_8F350();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8ED30();
  if (!v23)
  {
    sub_8EF0(aBlock, &qword_C5418);
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_8EF0(v10, &qword_C57E0);
  }

  v15 = swift_dynamicCast();
  (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_8EF0(v10, &qword_C57E0);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (sub_8F320())
  {
    v16 = *&v4[OBJC_IVAR____TtC15JournalSettings5Asset_context];
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      v24 = a3;
      v25 = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_7E2E8;
      v23 = a4;
      v18 = _Block_copy(aBlock);
      v19 = v16;
      v20 = v7;

      [v19 performBlock:v18];
      _Block_release(v18);
    }
  }

  return (*(v12 + 8))(v14, v11);
}

char *sub_61AF8(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for ThumbnailCacheOperation());

  return sub_5C308(v6, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_61B8C(uint64_t a1, unsigned __int8 a2)
{
  sub_8F350();
  sub_65724(&qword_C4E78, &type metadata accessor for UUID);
  v14._countAndFlagsBits = sub_910B0();
  sub_90640(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_90640(v15);
  v16._countAndFlagsBits = sub_910B0();
  sub_90640(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_90640(v17);
  if (a2 > 3u)
  {
    v9 = 0xE500000000000000;
    v10 = 0x6C6C616D73;
    if (a2 != 6)
    {
      v10 = 0x657263536C6C7566;
      v9 = 0xEA00000000006E65;
    }

    v11 = 0xE600000000000000;
    v12 = 0x6D756964656DLL;
    if (a2 != 4)
    {
      v12 = 0x61546D756964656DLL;
      v11 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 5u)
    {
      v7._countAndFlagsBits = v12;
    }

    else
    {
      v7._countAndFlagsBits = v10;
    }

    if (a2 <= 5u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x656772614C78;
    v4 = 0xEA00000000006564;
    v5 = 0x69576D756964656DLL;
    if (a2 != 2)
    {
      v5 = 0x656772616CLL;
      v4 = 0xE500000000000000;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v3 = 0x6154656772614C78;
      v6 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 1u)
    {
      v7._countAndFlagsBits = v3;
    }

    else
    {
      v7._countAndFlagsBits = v5;
    }

    if (a2 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  v7._object = v8;
  sub_90640(v7);

  return 0x2D626D756874;
}

uint64_t sub_61DAC(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v47 = a6;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_90230();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_902A0();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_8F350();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3 & 1;
  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v20 = (*&stru_2E8.segname[swift_isaMask & *v7])(v19, a1, a5);
  v22 = v21;
  v44 = (*&stru_2E8.segname[(swift_isaMask & *v7) - 8])(a1, a2, v18, v20, v21, a5);
  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v43 = sub_442E0(v23, v24);
  }

  else
  {
    v43 = 0;
  }

  v25 = (v7 + OBJC_IVAR____TtC15JournalSettings5Asset_thumbnailCacheKey);
  *v25 = v20;
  v25[1] = v22;

  v42 = *(v7 + OBJC_IVAR____TtC15JournalSettings5Asset_attachmentIdsMissingFile);
  v26 = *(v7 + OBJC_IVAR____TtC15JournalSettings5Asset_attachments);
  if (v26 >> 62)
  {
    v41 = sub_90FA0();
  }

  else
  {
    v41 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  v28 = v45;
  v27 = v46;
  (*(v45 + 16))(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + OBJC_IVAR____TtC15JournalSettings5Asset_id, v46);
  v29 = (*(v28 + 80) + 72) & ~*(v28 + 80);
  v30 = v29 + v16;
  v31 = swift_allocObject();
  *(v31 + 2) = v20;
  *(v31 + 3) = v22;
  v32 = v49;
  *(v31 + 4) = v47;
  *(v31 + 5) = v32;
  v33 = v44;
  v34 = v56;
  *(v31 + 6) = v44;
  *(v31 + 7) = v34;
  *(v31 + 8) = v41;
  (*(v28 + 32))(&v31[v29], v17, v27);
  v31[v30] = v43;
  *&v31[(v30 & 0xFFFFFFFFFFFFFFF8) + 8] = v42;
  *&v31[((v30 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  aBlock[4] = sub_65540;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7E2E8;
  aBlock[3] = &unk_B5908;
  v35 = _Block_copy(aBlock);

  v36 = v33;
  v56;
  v37 = v50;
  sub_90250();
  v57 = _swiftEmptyArrayStorage;
  sub_65724(&qword_C57E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_3A90(&qword_C57F0);
  sub_3223C();
  v38 = v52;
  v39 = v55;
  sub_90DD0();
  sub_90B20();
  _Block_release(v35);

  (*(v54 + 8))(v38, v39);
  (*(v51 + 8))(v37, v53);
}

void sub_62340()
{
  v1 = v0;
  v2 = sub_8F350();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v70 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v70 - v11;
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v87 = sub_8F930();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_8EFE0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _swiftEmptyArrayStorage;
  v92 = &_swiftEmptySetSingleton;
  v93 = _swiftEmptyArrayStorage;
  v22 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (!v22)
  {
    goto LABEL_35;
  }

  v84 = v18;
  v85 = v20;
  v83 = v14;
  v23 = v22;
  v24 = [v23 fileAttachments];
  if (!v24 || (v25 = v24, v79 = v12, v80 = v9, v94 = 0, v26 = sub_8F4F0(), sub_65724(&qword_C7778, &type metadata accessor for JournalEntryAssetFileAttachmentMO), v88 = v26, sub_908F0(), v25, (v27 = v94) == 0))
  {

    v21 = _swiftEmptyArrayStorage;
LABEL_35:
    *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_attachmentIdsMissingFile) = v92;

    *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_attachments) = v21;

    (*(&stru_298.flags + (swift_isaMask & *v1)))(v56);
    ObjectType = swift_getObjectType();
    v58 = swift_conformsToProtocol2();
    if (v58)
    {
      v59 = v58;
      v60 = v1;
      sub_44C68(ObjectType, v59);
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      return;
    }

    v61 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v61)
    {
      v62 = v1;
      v63 = [v61 contentType];
      if (v63)
      {
        v64 = v63;
        v65 = sub_90590();
        v67 = v66;

        v68 = v67;
        v63 = v65;
LABEL_43:
        *(v1 + OBJC_IVAR____TtC15JournalSettings9LinkAsset_contentType) = sub_332E4(v63, v68);

        return;
      }
    }

    else
    {
      v69 = v1;
      v63 = 0;
    }

    v68 = 0xE000000000000000;
    goto LABEL_43;
  }

  v76 = v6;
  v77 = v2;
  v82 = v23;
  if ((v94 & 0xC000000000000001) != 0)
  {
    sub_90E00();
    sub_90920();
    v27 = v94;
    v28 = v95;
    v29 = v96;
    v30 = v97;
    v31 = v98;
  }

  else
  {
    v30 = 0;
    v32 = -1 << *(v94 + 32);
    v28 = v94 + 56;
    v29 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v94 + 56);
  }

  v81 = v29;
  v35 = (v29 + 64) >> 6;
  ++v89;
  v75 = (v3 + 32);
  v74 = (v3 + 16);
  v73 = (v3 + 8);
  v78 = (v17 + 8);
  v21 = _swiftEmptyArrayStorage;
  while (v27 < 0)
  {
    v39 = sub_90E20();
    if (!v39 || (v90 = v39, swift_dynamicCast(), (v38 = v91) == 0))
    {
LABEL_34:
      sub_39CF0();

      goto LABEL_35;
    }

LABEL_21:
    v40 = [v38 filePath];
    if (v40)
    {

      v41 = v38;
      if (sub_5994C(v41))
      {

        sub_90720();
        if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v93 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_90770();
        }

        sub_907A0();

        v21 = v93;
      }

      v42 = [v41 filePath];
      if (v42)
      {
        v72 = v41;
        v43 = v42;
        v71 = sub_90590();

        v44 = v86;
        sub_8F920();
        sub_8F900();

        (*v89)(v44, v87);
        v71 = [objc_opt_self() defaultManager];
        sub_8EFB0();
        v45 = sub_90550();

        v46 = v71;
        LOBYTE(v44) = [v71 fileExistsAtPath:v45];

        if (v44)
        {
          (*v78)(v85, v84);
        }

        else
        {
          v47 = v72;
          v48 = [v72 id];
          if (v48)
          {
            v49 = v79;
            v50 = v48;
            sub_8F330();

            v51 = v83;
            v52 = v49;
            v53 = v77;
            (*v75)(v83, v52, v77);
            v54 = v76;
            (*v74)(v76, v51, v53);
            sub_6B50C(v80, v54);

            v55 = *v73;
            (*v73)(v80, v53);
            v55(v83, v53);
            (*v78)(v85, v84);
          }

          else
          {
            (*v78)(v85, v84);
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v36 = v30;
  v37 = v31;
  if (v31)
  {
LABEL_17:
    v31 = (v37 - 1) & v37;
    v38 = *(*(v27 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v38)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      goto LABEL_34;
    }

    v37 = *(v28 + 8 * v30);
    ++v36;
    if (v37)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}